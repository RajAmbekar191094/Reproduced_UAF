; ModuleID = 'pping_kern.c'
source_filename = "pping_kern.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "bpf"

%struct.anon.3 = type { ptr, ptr, ptr, ptr }
%struct.anon.5 = type { ptr, ptr, ptr, ptr }
%struct.anon.6 = type { ptr, ptr, ptr }
%struct.bpf_config = type { i64, i64, i8, i8, i8, i8, i32 }
%struct.parsing_context = type { ptr, ptr, %struct.hdr_cursor, i32, i32, i8 }
%struct.hdr_cursor = type { ptr }
%struct.__sk_buff = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32], [4 x i32], i32, i32, i32, %union.anon, i64, i32, i32, %union.anon.2, i32 }
%union.anon = type { ptr }
%union.anon.2 = type { ptr }
%struct.flow_event = type { i64, i64, %struct.network_tuple, i8, i8, i8, i8 }
%struct.network_tuple = type { %struct.flow_address, %struct.flow_address, i16, i8, i8 }
%struct.flow_address = type { %struct.in6_addr, i16, i16 }
%struct.in6_addr = type { %union.anon.4 }
%union.anon.4 = type { [4 x i32] }
%struct.rtt_event = type { i64, i64, %struct.network_tuple, i32, i64, i64, i64, i64, i64, i64, i8, [7 x i8] }
%struct.map_full_event = type { i64, i64, %struct.network_tuple, i8, [3 x i8] }
%struct.bpf_fib_lookup = type { i8, i8, i16, i16, i16, i32, %union.anon.19, %union.anon.20, %union.anon.21, i16, i16, [6 x i8], [6 x i8] }
%union.anon.19 = type { i32 }
%union.anon.20 = type { [4 x i32] }
%union.anon.21 = type { [4 x i32] }
%struct.flow_state = type { i64, i64, i64, i64, i64, i64, i64, i32, i8, i8, i16 }
%struct.packet_info = type { %union.anon.7, %union.anon.14, i64, i32, %struct.packet_id, %struct.packet_id, i8, i8, i8, i8 }
%union.anon.7 = type { ptr }
%union.anon.14 = type { ptr }
%struct.packet_id = type { %struct.network_tuple, i32 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, %union.anon.8 }
%union.anon.8 = type { %struct.anon.9 }
%struct.anon.9 = type { i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %union.anon.11 }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.in6_addr, %struct.in6_addr }
%struct.ipv6_opt_hdr = type { i8, i8 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.icmp6hdr = type { i8, i8, i16, %union.anon.18 }
%union.anon.18 = type { [1 x i32] }
%struct.icmphdr = type { i8, i8, i16, %union.anon.15 }
%union.anon.15 = type { i32 }
%struct.xdp_md = type { i32, i32, i32, i32, i32, i32 }

@_license = dso_local global [4 x i8] c"GPL\00", section "license", align 1, !dbg !0
@packet_ts = dso_local global %struct.anon.3 zeroinitializer, section ".maps", align 8, !dbg !129
@flow_state = dso_local global %struct.anon.5 zeroinitializer, section ".maps", align 8, !dbg !166
@events = dso_local global %struct.anon.6 zeroinitializer, section ".maps", align 8, !dbg !190
@config = internal constant %struct.bpf_config zeroinitializer, align 8, !dbg !205
@last_warn_time = internal global [2 x i64] zeroinitializer, align 8, !dbg !231
@llvm.compiler.used = appending global [7 x ptr] [ptr @_license, ptr @events, ptr @flow_state, ptr @packet_ts, ptr @pping_tc_egress, ptr @pping_tc_ingress, ptr @pping_xdp_ingress], section "llvm.metadata"

; Function Attrs: nounwind
define dso_local i32 @pping_tc_egress(ptr noundef %0) #0 section "tc" !dbg !291 {
  %2 = alloca %struct.parsing_context, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !385, metadata !DIExpression()), !dbg !399
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #7, !dbg !400
  call void @llvm.dbg.declare(metadata ptr %2, metadata !386, metadata !DIExpression()), !dbg !401
  %3 = getelementptr inbounds %struct.__sk_buff, ptr %0, i64 0, i32 15, !dbg !402
  %4 = load i32, ptr %3, align 4, !dbg !402, !tbaa !403
  %5 = zext i32 %4 to i64, !dbg !409
  %6 = inttoptr i64 %5 to ptr, !dbg !410
  store ptr %6, ptr %2, align 8, !dbg !411, !tbaa !412
  %7 = getelementptr inbounds %struct.parsing_context, ptr %2, i64 0, i32 1, !dbg !411
  %8 = getelementptr inbounds %struct.__sk_buff, ptr %0, i64 0, i32 16, !dbg !417
  %9 = load i32, ptr %8, align 8, !dbg !417, !tbaa !418
  %10 = zext i32 %9 to i64, !dbg !419
  %11 = inttoptr i64 %10 to ptr, !dbg !420
  store ptr %11, ptr %7, align 8, !dbg !411, !tbaa !421
  %12 = getelementptr inbounds %struct.parsing_context, ptr %2, i64 0, i32 2, !dbg !411
  store ptr %6, ptr %12, align 8, !dbg !422, !tbaa !423
  %13 = getelementptr inbounds %struct.parsing_context, ptr %2, i64 0, i32 3, !dbg !411
  %14 = load i32, ptr %0, align 8, !dbg !424, !tbaa !425
  store i32 %14, ptr %13, align 8, !dbg !411, !tbaa !426
  %15 = getelementptr inbounds %struct.parsing_context, ptr %2, i64 0, i32 4, !dbg !411
  store i32 0, ptr %15, align 4, !dbg !411, !tbaa !427
  %16 = getelementptr inbounds %struct.parsing_context, ptr %2, i64 0, i32 5, !dbg !411
  store i8 1, ptr %16, align 8, !dbg !411, !tbaa !428
  call fastcc void @pping(ptr noundef nonnull %0, ptr noundef nonnull %2), !dbg !429
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #7, !dbg !430
  ret i32 -1, !dbg !431
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind
define internal fastcc void @pping(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !dbg !432 {
  %3 = alloca %struct.flow_event, align 8
  %4 = alloca %struct.flow_event, align 8
  %5 = alloca %struct.rtt_event, align 8
  %6 = alloca %struct.flow_event, align 8
  %7 = alloca %struct.map_full_event, align 8
  %8 = alloca %struct.bpf_fib_lookup, align 4
  %9 = alloca %struct.map_full_event, align 8
  %10 = alloca %struct.flow_state, align 8
  %11 = alloca i8, align 1
  %12 = alloca %struct.packet_info, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !437, metadata !DIExpression()), !dbg !599
  call void @llvm.dbg.value(metadata ptr %1, metadata !438, metadata !DIExpression()), !dbg !599
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %12) #7, !dbg !600
  call void @llvm.dbg.declare(metadata ptr %12, metadata !439, metadata !DIExpression()), !dbg !601
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %12, i8 0, i64 128, i1 false), !dbg !601
  call void @llvm.dbg.value(metadata ptr %1, metadata !602, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata ptr %12, metadata !608, metadata !DIExpression()), !dbg !620
  %13 = tail call i64 inttoptr (i64 5 to ptr)() #7, !dbg !623
  %14 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 2, !dbg !624
  store i64 %13, ptr %14, align 8, !dbg !625, !tbaa !626
  %15 = getelementptr inbounds %struct.parsing_context, ptr %1, i64 0, i32 2, !dbg !633
  %16 = getelementptr inbounds %struct.parsing_context, ptr %1, i64 0, i32 1, !dbg !634
  %17 = load ptr, ptr %16, align 8, !dbg !634, !tbaa !421
  call void @llvm.dbg.value(metadata ptr %15, metadata !635, metadata !DIExpression()), !dbg !644
  call void @llvm.dbg.value(metadata ptr %17, metadata !642, metadata !DIExpression()), !dbg !644
  call void @llvm.dbg.value(metadata ptr undef, metadata !643, metadata !DIExpression()), !dbg !644
  call void @llvm.dbg.value(metadata ptr %15, metadata !646, metadata !DIExpression()), !dbg !669
  call void @llvm.dbg.value(metadata ptr %17, metadata !656, metadata !DIExpression()), !dbg !669
  call void @llvm.dbg.value(metadata ptr undef, metadata !657, metadata !DIExpression()), !dbg !669
  call void @llvm.dbg.value(metadata ptr null, metadata !658, metadata !DIExpression()), !dbg !669
  %18 = load ptr, ptr %15, align 8, !dbg !671, !tbaa !423
  call void @llvm.dbg.value(metadata ptr %18, metadata !659, metadata !DIExpression()), !dbg !669
  call void @llvm.dbg.value(metadata i32 14, metadata !660, metadata !DIExpression()), !dbg !669
  %19 = getelementptr i8, ptr %18, i64 14, !dbg !672
  %20 = icmp ugt ptr %19, %17, !dbg !674
  br i1 %20, label %886, label %21, !dbg !675

21:                                               ; preds = %2
  call void @llvm.dbg.value(metadata ptr %19, metadata !661, metadata !DIExpression()), !dbg !669
  %22 = getelementptr inbounds %struct.ethhdr, ptr %18, i64 0, i32 2, !dbg !676
  call void @llvm.dbg.value(metadata i16 poison, metadata !667, metadata !DIExpression()), !dbg !669
  call void @llvm.dbg.value(metadata i32 0, metadata !668, metadata !DIExpression()), !dbg !669
  %23 = load i16, ptr %22, align 1, !dbg !669, !tbaa !677
  call void @llvm.dbg.value(metadata i16 %23, metadata !667, metadata !DIExpression()), !dbg !669
  call void @llvm.dbg.value(metadata i16 %23, metadata !678, metadata !DIExpression()), !dbg !683
  %24 = icmp eq i16 %23, 129, !dbg !689
  %25 = icmp eq i16 %23, -22392, !dbg !690
  %26 = tail call i1 @llvm.bpf.passthrough.i1.i1(i32 0, i1 %24)
  %27 = or i1 %25, %26, !dbg !690
  %28 = getelementptr i8, ptr %18, i64 18
  %29 = icmp ule ptr %28, %17
  %30 = select i1 %27, i1 %29, i1 false, !dbg !691
  br i1 %30, label %31, label %44, !dbg !691

31:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i16 poison, metadata !667, metadata !DIExpression()), !dbg !669
  %32 = getelementptr i8, ptr %18, i64 16, !dbg !692
  call void @llvm.dbg.value(metadata ptr %28, metadata !661, metadata !DIExpression()), !dbg !669
  call void @llvm.dbg.value(metadata i32 1, metadata !668, metadata !DIExpression()), !dbg !669
  %33 = load i16, ptr %32, align 1, !dbg !669, !tbaa !677
  call void @llvm.dbg.value(metadata i16 %33, metadata !667, metadata !DIExpression()), !dbg !669
  call void @llvm.dbg.value(metadata i16 %33, metadata !678, metadata !DIExpression()), !dbg !683
  %34 = icmp eq i16 %33, 129, !dbg !689
  %35 = icmp eq i16 %33, -22392, !dbg !690
  %36 = tail call i1 @llvm.bpf.passthrough.i1.i1(i32 0, i1 %34)
  %37 = or i1 %35, %36, !dbg !690
  %38 = getelementptr i8, ptr %18, i64 22
  %39 = icmp ule ptr %38, %17
  %40 = select i1 %37, i1 %39, i1 false, !dbg !691
  br i1 %40, label %41, label %44, !dbg !691

41:                                               ; preds = %31
  call void @llvm.dbg.value(metadata i16 poison, metadata !667, metadata !DIExpression()), !dbg !669
  %42 = getelementptr i8, ptr %18, i64 20, !dbg !692
  call void @llvm.dbg.value(metadata ptr %38, metadata !661, metadata !DIExpression()), !dbg !669
  call void @llvm.dbg.value(metadata i32 2, metadata !668, metadata !DIExpression()), !dbg !669
  %43 = load i16, ptr %42, align 1, !dbg !669, !tbaa !677
  call void @llvm.dbg.value(metadata i16 %43, metadata !667, metadata !DIExpression()), !dbg !669
  br label %44

44:                                               ; preds = %41, %31, %21
  %45 = phi ptr [ %19, %21 ], [ %28, %31 ], [ %38, %41 ], !dbg !669
  %46 = phi i16 [ %23, %21 ], [ %33, %31 ], [ %43, %41 ], !dbg !669
  store ptr %45, ptr %15, align 8, !dbg !693, !tbaa !423
  call void @llvm.dbg.value(metadata i16 %46, metadata !609, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !620
  switch i16 %46, label %886 [
    i16 8, label %47
    i16 -8826, label %66
  ], !dbg !694

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 4, i32 0, i32 3, !dbg !695
  store i8 2, ptr %48, align 2, !dbg !698, !tbaa !699
  call void @llvm.dbg.value(metadata ptr %15, metadata !700, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata ptr %17, metadata !706, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata ptr %12, metadata !707, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata ptr %45, metadata !708, metadata !DIExpression()), !dbg !710
  %49 = getelementptr inbounds %struct.iphdr, ptr %45, i64 1, !dbg !712
  %50 = icmp ugt ptr %49, %17, !dbg !714
  br i1 %50, label %121, label %51, !dbg !715

51:                                               ; preds = %47
  %52 = load i8, ptr %45, align 4, !dbg !716
  %53 = and i8 %52, -16, !dbg !718
  %54 = icmp eq i8 %53, 64, !dbg !718
  br i1 %54, label %55, label %121, !dbg !719

55:                                               ; preds = %51
  %56 = shl i8 %52, 2, !dbg !720
  %57 = and i8 %56, 60, !dbg !720
  call void @llvm.dbg.value(metadata i8 %57, metadata !709, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !710
  %58 = icmp ult i8 %57, 20, !dbg !721
  br i1 %58, label %121, label %59, !dbg !723

59:                                               ; preds = %55
  %60 = zext i8 %57 to i64
  call void @llvm.dbg.value(metadata i64 %60, metadata !709, metadata !DIExpression()), !dbg !710
  %61 = getelementptr i8, ptr %45, i64 %60, !dbg !724
  %62 = icmp ugt ptr %61, %17, !dbg !726
  br i1 %62, label %121, label %63, !dbg !727

63:                                               ; preds = %59
  store ptr %61, ptr %15, align 8, !dbg !728, !tbaa !423
  store ptr %45, ptr %12, align 8, !dbg !729, !tbaa !730
  %64 = getelementptr inbounds %struct.iphdr, ptr %45, i64 0, i32 6, !dbg !731
  %65 = load i8, ptr %64, align 1, !dbg !731, !tbaa !732
  br label %125, !dbg !734

66:                                               ; preds = %44
  %67 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 4, i32 0, i32 3, !dbg !735
  store i8 10, ptr %67, align 2, !dbg !738, !tbaa !699
  call void @llvm.dbg.value(metadata ptr %15, metadata !739, metadata !DIExpression()), !dbg !748
  call void @llvm.dbg.value(metadata ptr %17, metadata !745, metadata !DIExpression()), !dbg !748
  call void @llvm.dbg.value(metadata ptr %12, metadata !746, metadata !DIExpression()), !dbg !748
  call void @llvm.dbg.value(metadata ptr %45, metadata !747, metadata !DIExpression()), !dbg !748
  %68 = getelementptr inbounds %struct.ipv6hdr, ptr %45, i64 1, !dbg !750
  %69 = icmp ugt ptr %68, %17, !dbg !752
  br i1 %69, label %121, label %70, !dbg !753

70:                                               ; preds = %66
  %71 = load i8, ptr %45, align 4, !dbg !754
  %72 = and i8 %71, -16, !dbg !756
  %73 = icmp eq i8 %72, 96, !dbg !756
  br i1 %73, label %74, label %121, !dbg !757

74:                                               ; preds = %70
  store ptr %68, ptr %15, align 8, !dbg !758, !tbaa !423
  store ptr %45, ptr %12, align 8, !dbg !759, !tbaa !730
  call void @llvm.dbg.value(metadata ptr %15, metadata !760, metadata !DIExpression()), !dbg !777
  call void @llvm.dbg.value(metadata ptr %17, metadata !765, metadata !DIExpression()), !dbg !777
  call void @llvm.dbg.value(metadata i8 poison, metadata !766, metadata !DIExpression()), !dbg !777
  call void @llvm.dbg.value(metadata i32 0, metadata !767, metadata !DIExpression()), !dbg !779
  call void @llvm.dbg.value(metadata ptr %68, metadata !769, metadata !DIExpression()), !dbg !780
  %75 = getelementptr inbounds %struct.ipv6hdr, ptr %45, i64 1, i32 1, i64 1, !dbg !781
  %76 = icmp ugt ptr %75, %17, !dbg !783
  br i1 %76, label %121, label %77, !dbg !784

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.ipv6hdr, ptr %45, i64 0, i32 3, !dbg !785
  %79 = load i8, ptr %78, align 2, !dbg !785, !tbaa !786
  call void @llvm.dbg.value(metadata i8 %79, metadata !766, metadata !DIExpression()), !dbg !777
  switch i8 %79, label %125 [
    i8 0, label %81
    i8 60, label %81
    i8 43, label %81
    i8 -121, label %81
    i8 51, label %80
    i8 44, label %88
  ], !dbg !788

80:                                               ; preds = %77
  call void @llvm.dbg.value(metadata i8 poison, metadata !766, metadata !DIExpression()), !dbg !777
  br label %81, !dbg !789

81:                                               ; preds = %80, %77, %77, %77, %77
  %82 = phi i64 [ 2, %80 ], [ 3, %77 ], [ 3, %77 ], [ 3, %77 ], [ 3, %77 ]
  %83 = getelementptr inbounds %struct.ipv6hdr, ptr %45, i64 1, i32 1, !dbg !791
  %84 = load i8, ptr %83, align 1, !dbg !791, !tbaa !792
  %85 = zext i8 %84 to i64, !dbg !791
  %86 = shl nuw nsw i64 %85, %82, !dbg !791
  %87 = add nuw nsw i64 %86, 8, !dbg !791
  br label %88, !dbg !791

88:                                               ; preds = %81, %77
  %89 = phi i64 [ 8, %77 ], [ %87, %81 ]
  %90 = getelementptr inbounds i8, ptr %68, i64 %89, !dbg !791
  store ptr %90, ptr %15, align 8, !dbg !791, !tbaa !423
  call void @llvm.dbg.value(metadata i32 1, metadata !767, metadata !DIExpression()), !dbg !779
  call void @llvm.dbg.value(metadata i8 poison, metadata !766, metadata !DIExpression()), !dbg !777
  call void @llvm.dbg.value(metadata ptr %90, metadata !769, metadata !DIExpression()), !dbg !780
  %91 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %90, i64 1, !dbg !781
  %92 = icmp ugt ptr %91, %17, !dbg !783
  br i1 %92, label %121, label %93, !dbg !784

93:                                               ; preds = %88
  %94 = load i8, ptr %68, align 1, !dbg !791, !tbaa !794
  call void @llvm.dbg.value(metadata i8 %94, metadata !766, metadata !DIExpression()), !dbg !777
  switch i8 %94, label %125 [
    i8 0, label %95
    i8 60, label %95
    i8 43, label %95
    i8 -121, label %95
    i8 51, label %96
    i8 44, label %103
  ], !dbg !788

95:                                               ; preds = %93, %93, %93, %93
  call void @llvm.dbg.value(metadata i8 poison, metadata !766, metadata !DIExpression()), !dbg !777
  br label %96, !dbg !795

96:                                               ; preds = %95, %93
  %97 = phi i64 [ 3, %95 ], [ 2, %93 ]
  %98 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %90, i64 0, i32 1, !dbg !791
  %99 = load i8, ptr %98, align 1, !dbg !791, !tbaa !792
  %100 = zext i8 %99 to i64, !dbg !791
  %101 = shl nuw nsw i64 %100, %97, !dbg !791
  %102 = add nuw nsw i64 %101, 8, !dbg !791
  br label %103, !dbg !791

103:                                              ; preds = %96, %93
  %104 = phi i64 [ 8, %93 ], [ %102, %96 ]
  %105 = getelementptr inbounds i8, ptr %90, i64 %104, !dbg !791
  store ptr %105, ptr %15, align 8, !dbg !791, !tbaa !423
  call void @llvm.dbg.value(metadata i32 2, metadata !767, metadata !DIExpression()), !dbg !779
  call void @llvm.dbg.value(metadata i8 poison, metadata !766, metadata !DIExpression()), !dbg !777
  call void @llvm.dbg.value(metadata ptr %105, metadata !769, metadata !DIExpression()), !dbg !780
  %106 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %105, i64 1, !dbg !781
  %107 = icmp ugt ptr %106, %17, !dbg !783
  br i1 %107, label %121, label %108, !dbg !784

108:                                              ; preds = %103
  %109 = load i8, ptr %90, align 1, !dbg !791, !tbaa !794
  call void @llvm.dbg.value(metadata i8 %109, metadata !766, metadata !DIExpression()), !dbg !777
  switch i8 %109, label %125 [
    i8 0, label %110
    i8 60, label %110
    i8 43, label %110
    i8 -121, label %110
    i8 51, label %111
    i8 44, label %118
  ], !dbg !788

110:                                              ; preds = %108, %108, %108, %108
  call void @llvm.dbg.value(metadata i8 poison, metadata !766, metadata !DIExpression()), !dbg !777
  br label %111, !dbg !795

111:                                              ; preds = %108, %110
  %112 = phi i64 [ 3, %110 ], [ 2, %108 ]
  %113 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %105, i64 0, i32 1, !dbg !791
  %114 = load i8, ptr %113, align 1, !dbg !791, !tbaa !792
  %115 = zext i8 %114 to i64, !dbg !791
  %116 = shl nuw nsw i64 %115, %112, !dbg !791
  %117 = add nuw nsw i64 %116, 8, !dbg !791
  br label %118, !dbg !791

118:                                              ; preds = %111, %108
  %119 = phi i64 [ 8, %108 ], [ %117, %111 ]
  %120 = getelementptr inbounds i8, ptr %105, i64 %119, !dbg !791
  store ptr %120, ptr %15, align 8, !dbg !791, !tbaa !423
  br label %121, !dbg !796

121:                                              ; preds = %118, %47, %51, %55, %59, %66, %70, %103, %88, %74
  %122 = load volatile i8, ptr getelementptr inbounds (%struct.bpf_config, ptr @config, i64 0, i32 3), align 1, !dbg !796, !tbaa !798, !range !800, !noundef !801
  %123 = load volatile i8, ptr getelementptr inbounds (%struct.bpf_config, ptr @config, i64 0, i32 4), align 2, !dbg !802, !tbaa !804, !range !800, !noundef !801
  %124 = load volatile i8, ptr getelementptr inbounds (%struct.bpf_config, ptr @config, i64 0, i32 4), align 2, !dbg !805, !tbaa !804, !range !800, !noundef !801
  br label %886, !dbg !807

125:                                              ; preds = %77, %93, %108, %63
  %126 = phi ptr [ %61, %63 ], [ %68, %77 ], [ %90, %93 ], [ %105, %108 ]
  %127 = phi i8 [ %65, %63 ], [ %79, %77 ], [ %94, %93 ], [ %109, %108 ]
  %128 = phi i1 [ true, %63 ], [ false, %77 ], [ false, %93 ], [ false, %108 ]
  %129 = phi i8 [ 2, %63 ], [ 10, %77 ], [ 10, %93 ], [ 10, %108 ]
  %130 = zext i8 %127 to i16, !dbg !808
  %131 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 4, i32 0, i32 2, !dbg !808
  store i16 %130, ptr %131, align 4, !dbg !808, !tbaa !809
  %132 = load volatile i8, ptr getelementptr inbounds (%struct.bpf_config, ptr @config, i64 0, i32 3), align 1, !dbg !796, !tbaa !798, !range !800, !noundef !801
  %133 = icmp ne i8 %132, 0, !dbg !796
  %134 = icmp eq i8 %127, 6
  %135 = select i1 %133, i1 %134, i1 false, !dbg !810
  br i1 %135, label %136, label %478, !dbg !810

136:                                              ; preds = %125
  call void @llvm.dbg.value(metadata ptr %1, metadata !811, metadata !DIExpression()), !dbg !815
  call void @llvm.dbg.value(metadata ptr %12, metadata !814, metadata !DIExpression()), !dbg !815
  %137 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 1, !dbg !817
  call void @llvm.dbg.value(metadata ptr %15, metadata !819, metadata !DIExpression()), !dbg !829
  call void @llvm.dbg.value(metadata ptr %17, metadata !825, metadata !DIExpression()), !dbg !829
  call void @llvm.dbg.value(metadata ptr %137, metadata !826, metadata !DIExpression()), !dbg !829
  call void @llvm.dbg.value(metadata ptr %126, metadata !828, metadata !DIExpression()), !dbg !829
  %138 = getelementptr inbounds %struct.tcphdr, ptr %126, i64 1, !dbg !831
  %139 = icmp ugt ptr %138, %17, !dbg !833
  br i1 %139, label %886, label %140, !dbg !834

140:                                              ; preds = %136
  %141 = getelementptr inbounds %struct.tcphdr, ptr %126, i64 0, i32 4, !dbg !835
  %142 = load i16, ptr %141, align 4, !dbg !835
  %143 = lshr i16 %142, 2, !dbg !836
  %144 = and i16 %143, 60, !dbg !836
  call void @llvm.dbg.value(metadata i16 %144, metadata !827, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !829
  %145 = icmp ult i16 %144, 20, !dbg !837
  br i1 %145, label %886, label %146, !dbg !839

146:                                              ; preds = %140
  %147 = zext i16 %144 to i64
  %148 = getelementptr i8, ptr %126, i64 %147, !dbg !840
  %149 = icmp ugt ptr %148, %17, !dbg !842
  br i1 %149, label %886, label %150, !dbg !843

150:                                              ; preds = %146
  store ptr %148, ptr %15, align 8, !dbg !844, !tbaa !423
  store ptr %126, ptr %137, align 8, !dbg !845, !tbaa !730
  %151 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 4, i32 1, !dbg !846
  %152 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 5, i32 1, !dbg !848
  call void @llvm.dbg.value(metadata ptr %126, metadata !849, metadata !DIExpression()), !dbg !864
  call void @llvm.dbg.value(metadata ptr %17, metadata !854, metadata !DIExpression()), !dbg !864
  call void @llvm.dbg.value(metadata ptr %151, metadata !855, metadata !DIExpression()), !dbg !864
  call void @llvm.dbg.value(metadata ptr %152, metadata !856, metadata !DIExpression()), !dbg !864
  %153 = load i16, ptr %141, align 4, !dbg !866
  %154 = lshr i16 %153, 2, !dbg !867
  %155 = and i16 %154, 60, !dbg !867
  %156 = zext i16 %155 to i64
  call void @llvm.dbg.value(metadata i64 %156, metadata !857, metadata !DIExpression()), !dbg !864
  %157 = getelementptr i8, ptr %126, i64 %156, !dbg !868
  call void @llvm.dbg.value(metadata ptr %157, metadata !858, metadata !DIExpression()), !dbg !864
  call void @llvm.dbg.value(metadata ptr %138, metadata !859, metadata !DIExpression()), !dbg !864
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11), !dbg !869
  call void @llvm.dbg.declare(metadata ptr %11, metadata !862, metadata !DIExpression()), !dbg !870
  %158 = icmp ult i16 %155, 21
  br i1 %158, label %424, label %159, !dbg !871

159:                                              ; preds = %150
  call void @llvm.dbg.value(metadata i8 0, metadata !860, metadata !DIExpression()), !dbg !864
  call void @llvm.dbg.value(metadata ptr %138, metadata !859, metadata !DIExpression()), !dbg !864
  %160 = getelementptr inbounds i8, ptr %126, i64 21, !dbg !873
  %161 = icmp ugt ptr %160, %157, !dbg !878
  %162 = icmp ugt ptr %160, %17
  %163 = or i1 %162, %161, !dbg !879
  br i1 %163, label %424, label %164, !dbg !879

164:                                              ; preds = %159
  %165 = load i8, ptr %138, align 1, !dbg !880, !tbaa !881
  call void @llvm.dbg.value(metadata i8 %165, metadata !861, metadata !DIExpression()), !dbg !864
  switch i8 %165, label %166 [
    i8 0, label %424
    i8 1, label %191
  ], !dbg !882

166:                                              ; preds = %164
  %167 = getelementptr inbounds %struct.tcphdr, ptr %126, i64 1, i32 1, !dbg !883
  %168 = icmp ugt ptr %167, %157, !dbg !885
  %169 = icmp ugt ptr %167, %17
  %170 = or i1 %169, %168, !dbg !886
  br i1 %170, label %424, label %171, !dbg !886

171:                                              ; preds = %166
  %172 = load i8, ptr %160, align 1, !dbg !887, !tbaa !881
  store volatile i8 %172, ptr %11, align 1, !dbg !888, !tbaa !881
  %173 = load volatile i8, ptr %11, align 1, !dbg !889, !tbaa !881
  %174 = icmp ult i8 %173, 2, !dbg !891
  br i1 %174, label %424, label %175, !dbg !892

175:                                              ; preds = %171
  %176 = icmp eq i8 %165, 8, !dbg !893
  br i1 %176, label %177, label %187, !dbg !895

177:                                              ; preds = %175
  %178 = load volatile i8, ptr %11, align 1, !dbg !896, !tbaa !881
  %179 = icmp eq i8 %178, 10, !dbg !897
  br i1 %179, label %180, label %187, !dbg !898

180:                                              ; preds = %419, %392, %366, %340, %314, %288, %262, %236, %210, %177
  %181 = phi ptr [ %138, %177 ], [ %192, %210 ], [ %218, %236 ], [ %244, %262 ], [ %270, %288 ], [ %296, %314 ], [ %322, %340 ], [ %348, %366 ], [ %374, %392 ], [ %400, %419 ]
  %182 = phi ptr [ %167, %177 ], [ %200, %210 ], [ %226, %236 ], [ %252, %262 ], [ %278, %288 ], [ %304, %314 ], [ %330, %340 ], [ %356, %366 ], [ %382, %392 ], [ %409, %419 ], !dbg !883
  %183 = getelementptr inbounds i8, ptr %181, i64 10, !dbg !899
  %184 = icmp ugt ptr %183, %157, !dbg !902
  %185 = icmp ugt ptr %183, %17
  %186 = or i1 %184, %185, !dbg !903
  br i1 %186, label %424, label %425, !dbg !903

187:                                              ; preds = %177, %175
  %188 = load volatile i8, ptr %11, align 1, !dbg !904, !tbaa !881
  %189 = zext i8 %188 to i64
  %190 = getelementptr inbounds i8, ptr %138, i64 %189, !dbg !905
  call void @llvm.dbg.value(metadata ptr %190, metadata !859, metadata !DIExpression()), !dbg !864
  br label %191, !dbg !906

191:                                              ; preds = %187, %164
  %192 = phi ptr [ %190, %187 ], [ %160, %164 ], !dbg !907
  call void @llvm.dbg.value(metadata i8 1, metadata !860, metadata !DIExpression()), !dbg !864
  call void @llvm.dbg.value(metadata ptr %192, metadata !859, metadata !DIExpression()), !dbg !864
  %193 = getelementptr inbounds i8, ptr %192, i64 1, !dbg !873
  %194 = icmp ugt ptr %193, %157, !dbg !878
  %195 = icmp ugt ptr %193, %17
  %196 = or i1 %194, %195, !dbg !879
  br i1 %196, label %424, label %197, !dbg !879

197:                                              ; preds = %191
  %198 = load i8, ptr %192, align 1, !dbg !880, !tbaa !881
  call void @llvm.dbg.value(metadata i8 %198, metadata !861, metadata !DIExpression()), !dbg !864
  switch i8 %198, label %199 [
    i8 0, label %424
    i8 1, label %217
  ], !dbg !882

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, ptr %192, i64 2, !dbg !883
  %201 = icmp ugt ptr %200, %157, !dbg !885
  %202 = icmp ugt ptr %200, %17
  %203 = or i1 %201, %202, !dbg !886
  br i1 %203, label %424, label %204, !dbg !886

204:                                              ; preds = %199
  %205 = load i8, ptr %193, align 1, !dbg !887, !tbaa !881
  store volatile i8 %205, ptr %11, align 1, !dbg !888, !tbaa !881
  %206 = load volatile i8, ptr %11, align 1, !dbg !889, !tbaa !881
  %207 = icmp ult i8 %206, 2, !dbg !891
  br i1 %207, label %424, label %208, !dbg !892

208:                                              ; preds = %204
  %209 = icmp eq i8 %198, 8, !dbg !893
  br i1 %209, label %210, label %213, !dbg !895

210:                                              ; preds = %208
  %211 = load volatile i8, ptr %11, align 1, !dbg !896, !tbaa !881
  %212 = icmp eq i8 %211, 10, !dbg !897
  br i1 %212, label %180, label %213, !dbg !898

213:                                              ; preds = %210, %208
  %214 = load volatile i8, ptr %11, align 1, !dbg !904, !tbaa !881
  %215 = zext i8 %214 to i64
  %216 = getelementptr inbounds i8, ptr %192, i64 %215, !dbg !905
  call void @llvm.dbg.value(metadata ptr %216, metadata !859, metadata !DIExpression()), !dbg !864
  br label %217, !dbg !906

217:                                              ; preds = %213, %197
  %218 = phi ptr [ %216, %213 ], [ %193, %197 ], !dbg !907
  call void @llvm.dbg.value(metadata i8 2, metadata !860, metadata !DIExpression()), !dbg !864
  call void @llvm.dbg.value(metadata ptr %218, metadata !859, metadata !DIExpression()), !dbg !864
  %219 = getelementptr inbounds i8, ptr %218, i64 1, !dbg !873
  %220 = icmp ugt ptr %219, %157, !dbg !878
  %221 = icmp ugt ptr %219, %17
  %222 = or i1 %220, %221, !dbg !879
  br i1 %222, label %424, label %223, !dbg !879

223:                                              ; preds = %217
  %224 = load i8, ptr %218, align 1, !dbg !880, !tbaa !881
  call void @llvm.dbg.value(metadata i8 %224, metadata !861, metadata !DIExpression()), !dbg !864
  switch i8 %224, label %225 [
    i8 0, label %424
    i8 1, label %243
  ], !dbg !882

225:                                              ; preds = %223
  %226 = getelementptr inbounds i8, ptr %218, i64 2, !dbg !883
  %227 = icmp ugt ptr %226, %157, !dbg !885
  %228 = icmp ugt ptr %226, %17
  %229 = or i1 %227, %228, !dbg !886
  br i1 %229, label %424, label %230, !dbg !886

230:                                              ; preds = %225
  %231 = load i8, ptr %219, align 1, !dbg !887, !tbaa !881
  store volatile i8 %231, ptr %11, align 1, !dbg !888, !tbaa !881
  %232 = load volatile i8, ptr %11, align 1, !dbg !889, !tbaa !881
  %233 = icmp ult i8 %232, 2, !dbg !891
  br i1 %233, label %424, label %234, !dbg !892

234:                                              ; preds = %230
  %235 = icmp eq i8 %224, 8, !dbg !893
  br i1 %235, label %236, label %239, !dbg !895

236:                                              ; preds = %234
  %237 = load volatile i8, ptr %11, align 1, !dbg !896, !tbaa !881
  %238 = icmp eq i8 %237, 10, !dbg !897
  br i1 %238, label %180, label %239, !dbg !898

239:                                              ; preds = %236, %234
  %240 = load volatile i8, ptr %11, align 1, !dbg !904, !tbaa !881
  %241 = zext i8 %240 to i64
  %242 = getelementptr inbounds i8, ptr %218, i64 %241, !dbg !905
  call void @llvm.dbg.value(metadata ptr %242, metadata !859, metadata !DIExpression()), !dbg !864
  br label %243, !dbg !906

243:                                              ; preds = %239, %223
  %244 = phi ptr [ %242, %239 ], [ %219, %223 ], !dbg !907
  call void @llvm.dbg.value(metadata i8 3, metadata !860, metadata !DIExpression()), !dbg !864
  call void @llvm.dbg.value(metadata ptr %244, metadata !859, metadata !DIExpression()), !dbg !864
  %245 = getelementptr inbounds i8, ptr %244, i64 1, !dbg !873
  %246 = icmp ugt ptr %245, %157, !dbg !878
  %247 = icmp ugt ptr %245, %17
  %248 = or i1 %246, %247, !dbg !879
  br i1 %248, label %424, label %249, !dbg !879

249:                                              ; preds = %243
  %250 = load i8, ptr %244, align 1, !dbg !880, !tbaa !881
  call void @llvm.dbg.value(metadata i8 %250, metadata !861, metadata !DIExpression()), !dbg !864
  switch i8 %250, label %251 [
    i8 0, label %424
    i8 1, label %269
  ], !dbg !882

251:                                              ; preds = %249
  %252 = getelementptr inbounds i8, ptr %244, i64 2, !dbg !883
  %253 = icmp ugt ptr %252, %157, !dbg !885
  %254 = icmp ugt ptr %252, %17
  %255 = or i1 %253, %254, !dbg !886
  br i1 %255, label %424, label %256, !dbg !886

256:                                              ; preds = %251
  %257 = load i8, ptr %245, align 1, !dbg !887, !tbaa !881
  store volatile i8 %257, ptr %11, align 1, !dbg !888, !tbaa !881
  %258 = load volatile i8, ptr %11, align 1, !dbg !889, !tbaa !881
  %259 = icmp ult i8 %258, 2, !dbg !891
  br i1 %259, label %424, label %260, !dbg !892

260:                                              ; preds = %256
  %261 = icmp eq i8 %250, 8, !dbg !893
  br i1 %261, label %262, label %265, !dbg !895

262:                                              ; preds = %260
  %263 = load volatile i8, ptr %11, align 1, !dbg !896, !tbaa !881
  %264 = icmp eq i8 %263, 10, !dbg !897
  br i1 %264, label %180, label %265, !dbg !898

265:                                              ; preds = %262, %260
  %266 = load volatile i8, ptr %11, align 1, !dbg !904, !tbaa !881
  %267 = zext i8 %266 to i64
  %268 = getelementptr inbounds i8, ptr %244, i64 %267, !dbg !905
  call void @llvm.dbg.value(metadata ptr %268, metadata !859, metadata !DIExpression()), !dbg !864
  br label %269, !dbg !906

269:                                              ; preds = %265, %249
  %270 = phi ptr [ %268, %265 ], [ %245, %249 ], !dbg !907
  call void @llvm.dbg.value(metadata i8 4, metadata !860, metadata !DIExpression()), !dbg !864
  call void @llvm.dbg.value(metadata ptr %270, metadata !859, metadata !DIExpression()), !dbg !864
  %271 = getelementptr inbounds i8, ptr %270, i64 1, !dbg !873
  %272 = icmp ugt ptr %271, %157, !dbg !878
  %273 = icmp ugt ptr %271, %17
  %274 = or i1 %272, %273, !dbg !879
  br i1 %274, label %424, label %275, !dbg !879

275:                                              ; preds = %269
  %276 = load i8, ptr %270, align 1, !dbg !880, !tbaa !881
  call void @llvm.dbg.value(metadata i8 %276, metadata !861, metadata !DIExpression()), !dbg !864
  switch i8 %276, label %277 [
    i8 0, label %424
    i8 1, label %295
  ], !dbg !882

277:                                              ; preds = %275
  %278 = getelementptr inbounds i8, ptr %270, i64 2, !dbg !883
  %279 = icmp ugt ptr %278, %157, !dbg !885
  %280 = icmp ugt ptr %278, %17
  %281 = or i1 %279, %280, !dbg !886
  br i1 %281, label %424, label %282, !dbg !886

282:                                              ; preds = %277
  %283 = load i8, ptr %271, align 1, !dbg !887, !tbaa !881
  store volatile i8 %283, ptr %11, align 1, !dbg !888, !tbaa !881
  %284 = load volatile i8, ptr %11, align 1, !dbg !889, !tbaa !881
  %285 = icmp ult i8 %284, 2, !dbg !891
  br i1 %285, label %424, label %286, !dbg !892

286:                                              ; preds = %282
  %287 = icmp eq i8 %276, 8, !dbg !893
  br i1 %287, label %288, label %291, !dbg !895

288:                                              ; preds = %286
  %289 = load volatile i8, ptr %11, align 1, !dbg !896, !tbaa !881
  %290 = icmp eq i8 %289, 10, !dbg !897
  br i1 %290, label %180, label %291, !dbg !898

291:                                              ; preds = %288, %286
  %292 = load volatile i8, ptr %11, align 1, !dbg !904, !tbaa !881
  %293 = zext i8 %292 to i64
  %294 = getelementptr inbounds i8, ptr %270, i64 %293, !dbg !905
  call void @llvm.dbg.value(metadata ptr %294, metadata !859, metadata !DIExpression()), !dbg !864
  br label %295, !dbg !906

295:                                              ; preds = %291, %275
  %296 = phi ptr [ %294, %291 ], [ %271, %275 ], !dbg !907
  call void @llvm.dbg.value(metadata i8 5, metadata !860, metadata !DIExpression()), !dbg !864
  call void @llvm.dbg.value(metadata ptr %296, metadata !859, metadata !DIExpression()), !dbg !864
  %297 = getelementptr inbounds i8, ptr %296, i64 1, !dbg !873
  %298 = icmp ugt ptr %297, %157, !dbg !878
  %299 = icmp ugt ptr %297, %17
  %300 = or i1 %298, %299, !dbg !879
  br i1 %300, label %424, label %301, !dbg !879

301:                                              ; preds = %295
  %302 = load i8, ptr %296, align 1, !dbg !880, !tbaa !881
  call void @llvm.dbg.value(metadata i8 %302, metadata !861, metadata !DIExpression()), !dbg !864
  switch i8 %302, label %303 [
    i8 0, label %424
    i8 1, label %321
  ], !dbg !882

303:                                              ; preds = %301
  %304 = getelementptr inbounds i8, ptr %296, i64 2, !dbg !883
  %305 = icmp ugt ptr %304, %157, !dbg !885
  %306 = icmp ugt ptr %304, %17
  %307 = or i1 %305, %306, !dbg !886
  br i1 %307, label %424, label %308, !dbg !886

308:                                              ; preds = %303
  %309 = load i8, ptr %297, align 1, !dbg !887, !tbaa !881
  store volatile i8 %309, ptr %11, align 1, !dbg !888, !tbaa !881
  %310 = load volatile i8, ptr %11, align 1, !dbg !889, !tbaa !881
  %311 = icmp ult i8 %310, 2, !dbg !891
  br i1 %311, label %424, label %312, !dbg !892

312:                                              ; preds = %308
  %313 = icmp eq i8 %302, 8, !dbg !893
  br i1 %313, label %314, label %317, !dbg !895

314:                                              ; preds = %312
  %315 = load volatile i8, ptr %11, align 1, !dbg !896, !tbaa !881
  %316 = icmp eq i8 %315, 10, !dbg !897
  br i1 %316, label %180, label %317, !dbg !898

317:                                              ; preds = %314, %312
  %318 = load volatile i8, ptr %11, align 1, !dbg !904, !tbaa !881
  %319 = zext i8 %318 to i64
  %320 = getelementptr inbounds i8, ptr %296, i64 %319, !dbg !905
  call void @llvm.dbg.value(metadata ptr %320, metadata !859, metadata !DIExpression()), !dbg !864
  br label %321, !dbg !906

321:                                              ; preds = %317, %301
  %322 = phi ptr [ %320, %317 ], [ %297, %301 ], !dbg !907
  call void @llvm.dbg.value(metadata i8 6, metadata !860, metadata !DIExpression()), !dbg !864
  call void @llvm.dbg.value(metadata ptr %322, metadata !859, metadata !DIExpression()), !dbg !864
  %323 = getelementptr inbounds i8, ptr %322, i64 1, !dbg !873
  %324 = icmp ugt ptr %323, %157, !dbg !878
  %325 = icmp ugt ptr %323, %17
  %326 = or i1 %324, %325, !dbg !879
  br i1 %326, label %424, label %327, !dbg !879

327:                                              ; preds = %321
  %328 = load i8, ptr %322, align 1, !dbg !880, !tbaa !881
  call void @llvm.dbg.value(metadata i8 %328, metadata !861, metadata !DIExpression()), !dbg !864
  switch i8 %328, label %329 [
    i8 0, label %424
    i8 1, label %347
  ], !dbg !882

329:                                              ; preds = %327
  %330 = getelementptr inbounds i8, ptr %322, i64 2, !dbg !883
  %331 = icmp ugt ptr %330, %157, !dbg !885
  %332 = icmp ugt ptr %330, %17
  %333 = or i1 %331, %332, !dbg !886
  br i1 %333, label %424, label %334, !dbg !886

334:                                              ; preds = %329
  %335 = load i8, ptr %323, align 1, !dbg !887, !tbaa !881
  store volatile i8 %335, ptr %11, align 1, !dbg !888, !tbaa !881
  %336 = load volatile i8, ptr %11, align 1, !dbg !889, !tbaa !881
  %337 = icmp ult i8 %336, 2, !dbg !891
  br i1 %337, label %424, label %338, !dbg !892

338:                                              ; preds = %334
  %339 = icmp eq i8 %328, 8, !dbg !893
  br i1 %339, label %340, label %343, !dbg !895

340:                                              ; preds = %338
  %341 = load volatile i8, ptr %11, align 1, !dbg !896, !tbaa !881
  %342 = icmp eq i8 %341, 10, !dbg !897
  br i1 %342, label %180, label %343, !dbg !898

343:                                              ; preds = %340, %338
  %344 = load volatile i8, ptr %11, align 1, !dbg !904, !tbaa !881
  %345 = zext i8 %344 to i64
  %346 = getelementptr inbounds i8, ptr %322, i64 %345, !dbg !905
  call void @llvm.dbg.value(metadata ptr %346, metadata !859, metadata !DIExpression()), !dbg !864
  br label %347, !dbg !906

347:                                              ; preds = %343, %327
  %348 = phi ptr [ %346, %343 ], [ %323, %327 ], !dbg !907
  call void @llvm.dbg.value(metadata i8 7, metadata !860, metadata !DIExpression()), !dbg !864
  call void @llvm.dbg.value(metadata ptr %348, metadata !859, metadata !DIExpression()), !dbg !864
  %349 = getelementptr inbounds i8, ptr %348, i64 1, !dbg !873
  %350 = icmp ugt ptr %349, %157, !dbg !878
  %351 = icmp ugt ptr %349, %17
  %352 = or i1 %350, %351, !dbg !879
  br i1 %352, label %424, label %353, !dbg !879

353:                                              ; preds = %347
  %354 = load i8, ptr %348, align 1, !dbg !880, !tbaa !881
  call void @llvm.dbg.value(metadata i8 %354, metadata !861, metadata !DIExpression()), !dbg !864
  switch i8 %354, label %355 [
    i8 0, label %424
    i8 1, label %373
  ], !dbg !882

355:                                              ; preds = %353
  %356 = getelementptr inbounds i8, ptr %348, i64 2, !dbg !883
  %357 = icmp ugt ptr %356, %157, !dbg !885
  %358 = icmp ugt ptr %356, %17
  %359 = or i1 %357, %358, !dbg !886
  br i1 %359, label %424, label %360, !dbg !886

360:                                              ; preds = %355
  %361 = load i8, ptr %349, align 1, !dbg !887, !tbaa !881
  store volatile i8 %361, ptr %11, align 1, !dbg !888, !tbaa !881
  %362 = load volatile i8, ptr %11, align 1, !dbg !889, !tbaa !881
  %363 = icmp ult i8 %362, 2, !dbg !891
  br i1 %363, label %424, label %364, !dbg !892

364:                                              ; preds = %360
  %365 = icmp eq i8 %354, 8, !dbg !893
  br i1 %365, label %366, label %369, !dbg !895

366:                                              ; preds = %364
  %367 = load volatile i8, ptr %11, align 1, !dbg !896, !tbaa !881
  %368 = icmp eq i8 %367, 10, !dbg !897
  br i1 %368, label %180, label %369, !dbg !898

369:                                              ; preds = %366, %364
  %370 = load volatile i8, ptr %11, align 1, !dbg !904, !tbaa !881
  %371 = zext i8 %370 to i64
  %372 = getelementptr inbounds i8, ptr %348, i64 %371, !dbg !905
  call void @llvm.dbg.value(metadata ptr %372, metadata !859, metadata !DIExpression()), !dbg !864
  br label %373, !dbg !906

373:                                              ; preds = %369, %353
  %374 = phi ptr [ %372, %369 ], [ %349, %353 ], !dbg !907
  call void @llvm.dbg.value(metadata i8 8, metadata !860, metadata !DIExpression()), !dbg !864
  call void @llvm.dbg.value(metadata ptr %374, metadata !859, metadata !DIExpression()), !dbg !864
  %375 = getelementptr inbounds i8, ptr %374, i64 1, !dbg !873
  %376 = icmp ugt ptr %375, %157, !dbg !878
  %377 = icmp ugt ptr %375, %17
  %378 = or i1 %376, %377, !dbg !879
  br i1 %378, label %424, label %379, !dbg !879

379:                                              ; preds = %373
  %380 = load i8, ptr %374, align 1, !dbg !880, !tbaa !881
  call void @llvm.dbg.value(metadata i8 %380, metadata !861, metadata !DIExpression()), !dbg !864
  switch i8 %380, label %381 [
    i8 0, label %424
    i8 1, label %399
  ], !dbg !882

381:                                              ; preds = %379
  %382 = getelementptr inbounds i8, ptr %374, i64 2, !dbg !883
  %383 = icmp ugt ptr %382, %157, !dbg !885
  %384 = icmp ugt ptr %382, %17
  %385 = or i1 %383, %384, !dbg !886
  br i1 %385, label %424, label %386, !dbg !886

386:                                              ; preds = %381
  %387 = load i8, ptr %375, align 1, !dbg !887, !tbaa !881
  store volatile i8 %387, ptr %11, align 1, !dbg !888, !tbaa !881
  %388 = load volatile i8, ptr %11, align 1, !dbg !889, !tbaa !881
  %389 = icmp ult i8 %388, 2, !dbg !891
  br i1 %389, label %424, label %390, !dbg !892

390:                                              ; preds = %386
  %391 = icmp eq i8 %380, 8, !dbg !893
  br i1 %391, label %392, label %395, !dbg !895

392:                                              ; preds = %390
  %393 = load volatile i8, ptr %11, align 1, !dbg !896, !tbaa !881
  %394 = icmp eq i8 %393, 10, !dbg !897
  br i1 %394, label %180, label %395, !dbg !898

395:                                              ; preds = %392, %390
  %396 = load volatile i8, ptr %11, align 1, !dbg !904, !tbaa !881
  %397 = zext i8 %396 to i64
  %398 = getelementptr inbounds i8, ptr %374, i64 %397, !dbg !905
  call void @llvm.dbg.value(metadata ptr %398, metadata !859, metadata !DIExpression()), !dbg !864
  br label %399, !dbg !906

399:                                              ; preds = %395, %379
  %400 = phi ptr [ %398, %395 ], [ %375, %379 ], !dbg !907
  call void @llvm.dbg.value(metadata i8 9, metadata !860, metadata !DIExpression()), !dbg !864
  call void @llvm.dbg.value(metadata ptr %400, metadata !859, metadata !DIExpression()), !dbg !864
  %401 = getelementptr inbounds i8, ptr %400, i64 1, !dbg !873
  %402 = icmp ugt ptr %401, %157, !dbg !878
  %403 = icmp ugt ptr %401, %17
  %404 = or i1 %402, %403, !dbg !879
  br i1 %404, label %424, label %405, !dbg !879

405:                                              ; preds = %399
  %406 = load i8, ptr %400, align 1, !dbg !880, !tbaa !881
  call void @llvm.dbg.value(metadata i8 %406, metadata !861, metadata !DIExpression()), !dbg !864
  %407 = icmp ult i8 %406, 2, !dbg !882
  br i1 %407, label %424, label %408, !dbg !882

408:                                              ; preds = %405
  %409 = getelementptr inbounds i8, ptr %400, i64 2, !dbg !883
  %410 = icmp ugt ptr %409, %157, !dbg !885
  %411 = icmp ugt ptr %409, %17
  %412 = or i1 %410, %411, !dbg !886
  br i1 %412, label %424, label %413, !dbg !886

413:                                              ; preds = %408
  %414 = load i8, ptr %401, align 1, !dbg !887, !tbaa !881
  store volatile i8 %414, ptr %11, align 1, !dbg !888, !tbaa !881
  %415 = load volatile i8, ptr %11, align 1, !dbg !889, !tbaa !881
  %416 = icmp ult i8 %415, 2, !dbg !891
  br i1 %416, label %424, label %417, !dbg !892

417:                                              ; preds = %413
  %418 = icmp eq i8 %406, 8, !dbg !893
  br i1 %418, label %419, label %422, !dbg !895

419:                                              ; preds = %417
  %420 = load volatile i8, ptr %11, align 1, !dbg !896, !tbaa !881
  %421 = icmp eq i8 %420, 10, !dbg !897
  br i1 %421, label %180, label %422, !dbg !898

422:                                              ; preds = %419, %417
  %423 = load volatile i8, ptr %11, align 1, !dbg !904, !tbaa !881
  call void @llvm.dbg.value(metadata !DIArgList(ptr %400, i8 %423), metadata !859, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !864
  br label %424, !dbg !906

424:                                              ; preds = %422, %413, %408, %405, %399, %386, %381, %379, %373, %360, %355, %353, %347, %334, %329, %327, %321, %308, %303, %301, %295, %282, %277, %275, %269, %256, %251, %249, %243, %230, %225, %223, %217, %204, %199, %197, %191, %180, %171, %166, %164, %159, %150
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11), !dbg !908
  br label %886, !dbg !909

425:                                              ; preds = %180
  %426 = load i32, ptr %182, align 4, !dbg !910, !tbaa !911
  store i32 %426, ptr %151, align 8, !dbg !912, !tbaa !911
  %427 = getelementptr inbounds i8, ptr %181, i64 6, !dbg !913
  %428 = load i32, ptr %427, align 4, !dbg !914, !tbaa !911
  store i32 %428, ptr %152, align 8, !dbg !915, !tbaa !911
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11), !dbg !908
  %429 = load i16, ptr %126, align 4, !dbg !916, !tbaa !917
  %430 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 4, i32 0, i32 0, i32 1, !dbg !919
  store i16 %429, ptr %430, align 4, !dbg !920, !tbaa !921
  %431 = getelementptr inbounds %struct.tcphdr, ptr %126, i64 0, i32 1, !dbg !922
  %432 = load i16, ptr %431, align 2, !dbg !922, !tbaa !923
  %433 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 4, i32 0, i32 1, i32 1, !dbg !924
  store i16 %432, ptr %433, align 8, !dbg !925, !tbaa !926
  %434 = load ptr, ptr %1, align 8, !dbg !927, !tbaa !412
  %435 = ptrtoint ptr %148 to i64, !dbg !928
  %436 = ptrtoint ptr %434 to i64, !dbg !928
  %437 = sub i64 %435, %436, !dbg !928
  %438 = getelementptr inbounds %struct.parsing_context, ptr %1, i64 0, i32 3, !dbg !929
  %439 = load i32, ptr %438, align 8, !dbg !929, !tbaa !426
  %440 = zext i32 %439 to i64, !dbg !930
  %441 = icmp slt i64 %437, %440, !dbg !931
  br i1 %441, label %446, label %442, !dbg !932

442:                                              ; preds = %425
  %443 = load i16, ptr %141, align 4, !dbg !933
  %444 = and i16 %443, 512, !dbg !932
  %445 = icmp ne i16 %444, 0, !dbg !932
  br label %446, !dbg !932

446:                                              ; preds = %442, %425
  %447 = phi i1 [ true, %425 ], [ %445, %442 ]
  %448 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 6, !dbg !934
  %449 = zext i1 %447 to i8, !dbg !935
  store i8 %449, ptr %448, align 4, !dbg !935, !tbaa !936
  %450 = load i16, ptr %141, align 4, !dbg !937
  %451 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 7, !dbg !938
  %452 = lshr i16 %450, 12, !dbg !939
  %453 = trunc i16 %452 to i8, !dbg !939
  %454 = and i8 %453, 1, !dbg !939
  store i8 %454, ptr %451, align 1, !dbg !939, !tbaa !940
  %455 = load i16, ptr %141, align 4, !dbg !941
  %456 = and i16 %455, 1024, !dbg !943
  %457 = icmp eq i16 %456, 0, !dbg !943
  br i1 %457, label %458, label %553, !dbg !944

458:                                              ; preds = %446
  %459 = and i16 %455, 256, !dbg !945
  %460 = icmp eq i16 %459, 0, !dbg !945
  br i1 %460, label %465, label %461, !dbg !947

461:                                              ; preds = %458
  %462 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 8, !dbg !948
  store i8 2, ptr %462, align 2, !dbg !950, !tbaa !951
  %463 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 9, !dbg !952
  store i8 3, ptr %463, align 1, !dbg !953, !tbaa !954
  call void @llvm.dbg.value(metadata i32 0, metadata !610, metadata !DIExpression()), !dbg !620
  %464 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 4, !dbg !955
  br i1 %128, label %557, label %570, !dbg !957

465:                                              ; preds = %458
  %466 = and i16 %455, 512, !dbg !958
  %467 = icmp eq i16 %466, 0, !dbg !958
  %468 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 8, !dbg !960
  br i1 %467, label %476, label %469, !dbg !961

469:                                              ; preds = %465
  store i8 1, ptr %468, align 2, !dbg !962, !tbaa !951
  %470 = load i16, ptr %141, align 4, !dbg !964
  %471 = lshr i16 %470, 12, !dbg !965
  %472 = trunc i16 %471 to i8, !dbg !965
  %473 = and i8 %472, 1, !dbg !965
  %474 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 9, !dbg !966
  store i8 %473, ptr %474, align 1, !dbg !967, !tbaa !954
  call void @llvm.dbg.value(metadata i32 0, metadata !610, metadata !DIExpression()), !dbg !620
  %475 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 4, !dbg !955
  br i1 %128, label %557, label %570, !dbg !957

476:                                              ; preds = %465
  store i8 0, ptr %468, align 2, !dbg !968, !tbaa !951
  call void @llvm.dbg.value(metadata i32 0, metadata !610, metadata !DIExpression()), !dbg !620
  %477 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 4, !dbg !955
  br i1 %128, label %557, label %570, !dbg !957

478:                                              ; preds = %125
  %479 = load volatile i8, ptr getelementptr inbounds (%struct.bpf_config, ptr @config, i64 0, i32 4), align 2, !dbg !802, !tbaa !804, !range !800, !noundef !801
  %480 = icmp eq i8 %479, 0, !dbg !802
  %481 = icmp ne i8 %127, 58
  %482 = select i1 %480, i1 true, i1 %481, !dbg !970
  %483 = or i1 %128, %482, !dbg !970
  br i1 %483, label %515, label %484, !dbg !970

484:                                              ; preds = %478
  call void @llvm.dbg.value(metadata ptr %1, metadata !971, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata ptr %12, metadata !974, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata ptr %15, metadata !977, metadata !DIExpression()), !dbg !986
  call void @llvm.dbg.value(metadata ptr %17, metadata !983, metadata !DIExpression()), !dbg !986
  call void @llvm.dbg.value(metadata ptr %12, metadata !984, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !986
  call void @llvm.dbg.value(metadata ptr %126, metadata !985, metadata !DIExpression()), !dbg !986
  %485 = getelementptr inbounds %struct.icmp6hdr, ptr %126, i64 1, !dbg !989
  %486 = icmp ugt ptr %485, %17, !dbg !991
  br i1 %486, label %886, label %487, !dbg !992

487:                                              ; preds = %484
  %488 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 1, !dbg !993
  call void @llvm.dbg.value(metadata ptr %488, metadata !984, metadata !DIExpression()), !dbg !986
  store ptr %485, ptr %15, align 8, !dbg !994, !tbaa !423
  store ptr %126, ptr %488, align 8, !dbg !995, !tbaa !730
  %489 = getelementptr inbounds %struct.icmp6hdr, ptr %126, i64 0, i32 1, !dbg !996
  %490 = load i8, ptr %489, align 1, !dbg !996, !tbaa !998
  %491 = icmp eq i8 %490, 0, !dbg !1000
  br i1 %491, label %492, label %886, !dbg !1001

492:                                              ; preds = %487
  %493 = load i8, ptr %126, align 4, !dbg !1002, !tbaa !1004
  switch i8 %493, label %886 [
    i8 -128, label %494
    i8 -127, label %501
  ], !dbg !1005

494:                                              ; preds = %492
  %495 = getelementptr inbounds i8, ptr %126, i64 6, !dbg !1006
  %496 = load i16, ptr %495, align 2, !dbg !1006, !tbaa !881
  %497 = zext i16 %496 to i32, !dbg !1008
  %498 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 4, i32 1, !dbg !1009
  store i32 %497, ptr %498, align 8, !dbg !1010, !tbaa !1011
  %499 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 6, !dbg !1012
  store i8 1, ptr %499, align 4, !dbg !1013, !tbaa !936
  %500 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 7, !dbg !1014
  store i8 0, ptr %500, align 1, !dbg !1015, !tbaa !940
  br label %508, !dbg !1016

501:                                              ; preds = %492
  %502 = getelementptr inbounds i8, ptr %126, i64 6, !dbg !1017
  %503 = load i16, ptr %502, align 2, !dbg !1017, !tbaa !881
  %504 = zext i16 %503 to i32, !dbg !1020
  %505 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 5, i32 1, !dbg !1021
  store i32 %504, ptr %505, align 8, !dbg !1022, !tbaa !1023
  %506 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 7, !dbg !1024
  store i8 1, ptr %506, align 1, !dbg !1025, !tbaa !940
  %507 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 6, !dbg !1026
  store i8 0, ptr %507, align 4, !dbg !1027, !tbaa !936
  br label %508

508:                                              ; preds = %501, %494
  %509 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 8, !dbg !1028
  store i8 0, ptr %509, align 2, !dbg !1029, !tbaa !951
  %510 = getelementptr inbounds %struct.icmp6hdr, ptr %126, i64 0, i32 3, !dbg !1030
  %511 = load i16, ptr %510, align 4, !dbg !1030, !tbaa !881
  %512 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 4, i32 0, i32 0, i32 1, !dbg !1031
  store i16 %511, ptr %512, align 4, !dbg !1032, !tbaa !921
  %513 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 4, i32 0, i32 1, i32 1, !dbg !1033
  store i16 %511, ptr %513, align 8, !dbg !1034, !tbaa !926
  call void @llvm.dbg.value(metadata i32 0, metadata !610, metadata !DIExpression()), !dbg !620
  %514 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 4, !dbg !955
  br label %570

515:                                              ; preds = %478
  %516 = load volatile i8, ptr getelementptr inbounds (%struct.bpf_config, ptr @config, i64 0, i32 4), align 2, !dbg !805, !tbaa !804, !range !800, !noundef !801
  %517 = icmp eq i8 %516, 0, !dbg !805
  %518 = icmp ne i8 %127, 1
  %519 = select i1 %517, i1 true, i1 %518, !dbg !807
  %520 = xor i1 %128, true, !dbg !807
  %521 = or i1 %519, %520, !dbg !807
  br i1 %521, label %886, label %522, !dbg !807

522:                                              ; preds = %515
  call void @llvm.dbg.value(metadata ptr %1, metadata !1035, metadata !DIExpression()), !dbg !1039
  call void @llvm.dbg.value(metadata ptr %12, metadata !1038, metadata !DIExpression()), !dbg !1039
  call void @llvm.dbg.value(metadata ptr %15, metadata !1041, metadata !DIExpression()), !dbg !1050
  call void @llvm.dbg.value(metadata ptr %17, metadata !1047, metadata !DIExpression()), !dbg !1050
  call void @llvm.dbg.value(metadata ptr %12, metadata !1048, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !1050
  call void @llvm.dbg.value(metadata ptr %126, metadata !1049, metadata !DIExpression()), !dbg !1050
  %523 = getelementptr inbounds %struct.icmphdr, ptr %126, i64 1, !dbg !1053
  %524 = icmp ugt ptr %523, %17, !dbg !1055
  br i1 %524, label %886, label %525, !dbg !1056

525:                                              ; preds = %522
  %526 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 1, !dbg !1057
  call void @llvm.dbg.value(metadata ptr %526, metadata !1048, metadata !DIExpression()), !dbg !1050
  store ptr %523, ptr %15, align 8, !dbg !1058, !tbaa !423
  store ptr %126, ptr %526, align 8, !dbg !1059, !tbaa !730
  %527 = getelementptr inbounds %struct.icmphdr, ptr %126, i64 0, i32 1, !dbg !1060
  %528 = load i8, ptr %527, align 1, !dbg !1060, !tbaa !1062
  %529 = icmp eq i8 %528, 0, !dbg !1064
  br i1 %529, label %530, label %886, !dbg !1065

530:                                              ; preds = %525
  %531 = load i8, ptr %126, align 4, !dbg !1066, !tbaa !1068
  switch i8 %531, label %886 [
    i8 8, label %532
    i8 0, label %539
  ], !dbg !1069

532:                                              ; preds = %530
  %533 = getelementptr inbounds i8, ptr %126, i64 6, !dbg !1070
  %534 = load i16, ptr %533, align 2, !dbg !1070, !tbaa !881
  %535 = zext i16 %534 to i32, !dbg !1072
  %536 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 4, i32 1, !dbg !1073
  store i32 %535, ptr %536, align 8, !dbg !1074, !tbaa !1011
  %537 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 6, !dbg !1075
  store i8 1, ptr %537, align 4, !dbg !1076, !tbaa !936
  %538 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 7, !dbg !1077
  store i8 0, ptr %538, align 1, !dbg !1078, !tbaa !940
  br label %546, !dbg !1079

539:                                              ; preds = %530
  %540 = getelementptr inbounds i8, ptr %126, i64 6, !dbg !1080
  %541 = load i16, ptr %540, align 2, !dbg !1080, !tbaa !881
  %542 = zext i16 %541 to i32, !dbg !1083
  %543 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 5, i32 1, !dbg !1084
  store i32 %542, ptr %543, align 8, !dbg !1085, !tbaa !1023
  %544 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 7, !dbg !1086
  store i8 1, ptr %544, align 1, !dbg !1087, !tbaa !940
  %545 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 6, !dbg !1088
  store i8 0, ptr %545, align 4, !dbg !1089, !tbaa !936
  br label %546

546:                                              ; preds = %539, %532
  %547 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 8, !dbg !1090
  store i8 0, ptr %547, align 2, !dbg !1091, !tbaa !951
  %548 = getelementptr inbounds %struct.icmphdr, ptr %126, i64 0, i32 3, !dbg !1092
  %549 = load i16, ptr %548, align 4, !dbg !1093, !tbaa !881
  %550 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 4, i32 0, i32 0, i32 1, !dbg !1094
  store i16 %549, ptr %550, align 4, !dbg !1095, !tbaa !921
  %551 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 4, i32 0, i32 1, i32 1, !dbg !1096
  store i16 %549, ptr %551, align 8, !dbg !1097, !tbaa !926
  call void @llvm.dbg.value(metadata i32 0, metadata !610, metadata !DIExpression()), !dbg !620
  %552 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 4, !dbg !955
  br i1 %128, label %557, label %570, !dbg !957

553:                                              ; preds = %446
  %554 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 8, !dbg !1098
  store i8 3, ptr %554, align 2, !dbg !1100, !tbaa !951
  %555 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 9, !dbg !1101
  store i8 4, ptr %555, align 1, !dbg !1102, !tbaa !954
  call void @llvm.dbg.value(metadata i32 0, metadata !610, metadata !DIExpression()), !dbg !620
  %556 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 4, !dbg !955
  br i1 %128, label %557, label %570, !dbg !957

557:                                              ; preds = %461, %469, %476, %546, %553
  %558 = phi ptr [ %523, %546 ], [ %148, %553 ], [ %148, %476 ], [ %148, %469 ], [ %148, %461 ]
  %559 = phi ptr [ %552, %546 ], [ %556, %553 ], [ %477, %476 ], [ %475, %469 ], [ %464, %461 ]
  %560 = phi i16 [ 1, %546 ], [ 6, %553 ], [ 6, %476 ], [ 6, %469 ], [ 6, %461 ]
  %561 = getelementptr inbounds %struct.iphdr, ptr %45, i64 0, i32 8, !dbg !1103
  %562 = load i32, ptr %561, align 4, !dbg !1103, !tbaa !881
  call void @llvm.dbg.value(metadata ptr %556, metadata !1105, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i32 %562, metadata !1110, metadata !DIExpression()), !dbg !1111
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %559, i8 0, i64 10, i1 false), !dbg !1113
  %563 = getelementptr inbounds i8, ptr %12, i64 38, !dbg !1114
  store i16 -1, ptr %563, align 2, !dbg !1115
  %564 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !1116
  store i32 %562, ptr %564, align 8, !dbg !1117, !tbaa !881
  %565 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 4, i32 0, i32 1, !dbg !1118
  %566 = getelementptr inbounds %struct.iphdr, ptr %45, i64 0, i32 8, i32 0, i32 1, !dbg !1119
  %567 = load i32, ptr %566, align 4, !dbg !1119, !tbaa !881
  call void @llvm.dbg.value(metadata ptr %565, metadata !1105, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata i32 %567, metadata !1110, metadata !DIExpression()), !dbg !1120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %565, i8 0, i64 10, i1 false), !dbg !1122
  %568 = getelementptr inbounds i8, ptr %12, i64 58, !dbg !1123
  store i16 -1, ptr %568, align 2, !dbg !1124
  %569 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 4, i32 0, i32 1, i32 0, i32 0, i32 0, i64 3, !dbg !1125
  store i32 %567, ptr %569, align 4, !dbg !1126, !tbaa !881
  br label %577, !dbg !1127

570:                                              ; preds = %508, %461, %469, %476, %546, %553
  %571 = phi ptr [ %523, %546 ], [ %148, %553 ], [ %485, %508 ], [ %148, %476 ], [ %148, %469 ], [ %148, %461 ]
  %572 = phi ptr [ %552, %546 ], [ %556, %553 ], [ %514, %508 ], [ %477, %476 ], [ %475, %469 ], [ %464, %461 ]
  %573 = phi i16 [ 1, %546 ], [ 6, %553 ], [ 58, %508 ], [ 6, %476 ], [ 6, %469 ], [ 6, %461 ]
  %574 = getelementptr inbounds %struct.ipv6hdr, ptr %45, i64 0, i32 5, !dbg !1128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %572, ptr noundef nonnull align 4 dereferenceable(16) %574, i64 16, i1 false), !dbg !1128, !tbaa.struct !1130
  %575 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 4, i32 0, i32 1, !dbg !1131
  %576 = getelementptr inbounds %struct.ipv6hdr, ptr %45, i64 0, i32 5, i32 0, i32 1, !dbg !1132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %575, ptr noundef nonnull align 4 dereferenceable(16) %576, i64 16, i1 false), !dbg !1132, !tbaa.struct !1130
  br label %577

577:                                              ; preds = %570, %557
  %578 = phi ptr [ %571, %570 ], [ %558, %557 ], !dbg !1133
  %579 = phi ptr [ %572, %570 ], [ %559, %557 ]
  %580 = phi i16 [ %573, %570 ], [ %560, %557 ]
  %581 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 5, !dbg !1141
  call void @llvm.dbg.value(metadata ptr %581, metadata !1142, metadata !DIExpression()), !dbg !1148
  call void @llvm.dbg.value(metadata ptr %556, metadata !1147, metadata !DIExpression()), !dbg !1148
  %582 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 5, i32 0, i32 3, !dbg !1150
  store i8 %129, ptr %582, align 2, !dbg !1151, !tbaa !1152
  %583 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 5, i32 0, i32 2, !dbg !1153
  store i16 %580, ptr %583, align 4, !dbg !1154, !tbaa !1155
  %584 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 4, i32 0, i32 1, !dbg !1156
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %581, ptr noundef nonnull align 8 dereferenceable(20) %584, i64 20, i1 false), !dbg !1156, !tbaa.struct !1157
  %585 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 5, i32 0, i32 1, !dbg !1158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %585, ptr noundef nonnull align 4 dereferenceable(20) %579, i64 20, i1 false), !dbg !1159, !tbaa.struct !1157
  %586 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 5, i32 0, i32 4, !dbg !1160
  store i8 0, ptr %586, align 1, !dbg !1161, !tbaa !1162
  call void @llvm.dbg.value(metadata ptr %1, metadata !1138, metadata !DIExpression()), !dbg !1163
  %587 = load ptr, ptr %1, align 8, !dbg !1164, !tbaa !412
  %588 = ptrtoint ptr %578 to i64, !dbg !1165
  %589 = ptrtoint ptr %587 to i64, !dbg !1165
  %590 = sub i64 %588, %589, !dbg !1165
  %591 = trunc i64 %590 to i32, !dbg !1166
  call void @llvm.dbg.value(metadata i32 %591, metadata !1139, metadata !DIExpression()), !dbg !1163
  %592 = getelementptr inbounds %struct.parsing_context, ptr %1, i64 0, i32 3, !dbg !1167
  %593 = load i32, ptr %592, align 8, !dbg !1167, !tbaa !426
  %594 = tail call i32 @llvm.usub.sat.i32(i32 %593, i32 %591), !dbg !1168
  %595 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 3, !dbg !1169
  store i32 %594, ptr %595, align 8, !dbg !1170, !tbaa !1171
  call void @llvm.dbg.value(metadata ptr %0, metadata !1172, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata ptr %12, metadata !1178, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata ptr undef, metadata !1179, metadata !DIExpression()), !dbg !1181
  %596 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 4, !dbg !1183
  %597 = call ptr inttoptr (i64 1 to ptr)(ptr noundef nonnull @flow_state, ptr noundef nonnull %596) #7, !dbg !1184
  call void @llvm.dbg.value(metadata ptr %597, metadata !1180, metadata !DIExpression()), !dbg !1181
  %598 = icmp eq ptr %597, null, !dbg !1185
  br i1 %598, label %599, label %635, !dbg !1187

599:                                              ; preds = %577
  %600 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 6, !dbg !1188
  %601 = load i8, ptr %600, align 4, !dbg !1188, !tbaa !936, !range !800, !noundef !801
  %602 = icmp eq i8 %601, 0, !dbg !1188
  br i1 %602, label %754, label %603, !dbg !1189

603:                                              ; preds = %599
  %604 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 8, !dbg !1190
  %605 = load i8, ptr %604, align 2, !dbg !1190, !tbaa !951
  %606 = and i8 %605, -2, !dbg !1191
  %607 = icmp eq i8 %606, 2, !dbg !1191
  br i1 %607, label %754, label %608, !dbg !1191

608:                                              ; preds = %603
  call void @llvm.dbg.value(metadata ptr %0, metadata !1192, metadata !DIExpression()), !dbg !1199
  call void @llvm.dbg.value(metadata ptr %12, metadata !1197, metadata !DIExpression()), !dbg !1199
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #7, !dbg !1202
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1198, metadata !DIExpression()), !dbg !1203
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %10, i8 0, i64 64, i1 false), !dbg !1203
  %609 = load i64, ptr %14, align 8, !dbg !1204, !tbaa !626
  %610 = getelementptr inbounds %struct.flow_state, ptr %10, i64 0, i32 2, !dbg !1205
  store i64 %609, ptr %610, align 8, !dbg !1206, !tbaa !1207
  %611 = icmp eq i8 %605, 1, !dbg !1209
  %612 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 9, !dbg !1210
  %613 = load i8, ptr %612, align 1, !dbg !1210
  %614 = select i1 %611, i8 %613, i8 2, !dbg !1210
  %615 = getelementptr inbounds %struct.flow_state, ptr %10, i64 0, i32 9, !dbg !1211
  store i8 %614, ptr %615, align 1, !dbg !1212, !tbaa !1213
  %616 = call i64 inttoptr (i64 2 to ptr)(ptr noundef nonnull @flow_state, ptr noundef nonnull %596, ptr noundef nonnull %10, i64 noundef 1) #7, !dbg !1214
  %617 = icmp eq i64 %616, 0, !dbg !1216
  br i1 %617, label %632, label %618, !dbg !1217

618:                                              ; preds = %608
  call void @llvm.dbg.value(metadata ptr %0, metadata !1218, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata ptr %12, metadata !1223, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8 0, metadata !1224, metadata !DIExpression()), !dbg !1233
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #7, !dbg !1236
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1225, metadata !DIExpression()), !dbg !1237
  %619 = load i64, ptr %14, align 8, !dbg !1238, !tbaa !626
  %620 = load volatile i64, ptr @last_warn_time, align 8, !dbg !1240, !tbaa !1241
  %621 = icmp ult i64 %619, %620, !dbg !1242
  br i1 %621, label %631, label %622, !dbg !1243

622:                                              ; preds = %618
  %623 = load volatile i64, ptr @last_warn_time, align 8, !dbg !1244, !tbaa !1241
  %624 = sub i64 %619, %623, !dbg !1245
  %625 = icmp ult i64 %624, 1000000000, !dbg !1246
  br i1 %625, label %631, label %626, !dbg !1247

626:                                              ; preds = %622
  store volatile i64 %619, ptr @last_warn_time, align 8, !dbg !1248, !tbaa !1241
  %627 = getelementptr inbounds i8, ptr %9, i64 56, !dbg !1249
  store i64 0, ptr %627, align 8, !dbg !1249
  store i64 3, ptr %9, align 8, !dbg !1250, !tbaa !1251
  %628 = getelementptr inbounds %struct.map_full_event, ptr %9, i64 0, i32 1, !dbg !1253
  store i64 %619, ptr %628, align 8, !dbg !1254, !tbaa !1255
  %629 = getelementptr inbounds %struct.map_full_event, ptr %9, i64 0, i32 2, !dbg !1256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %629, ptr noundef nonnull align 4 dereferenceable(44) %596, i64 44, i1 false), !dbg !1257, !tbaa.struct !1258
  %630 = call i64 inttoptr (i64 25 to ptr)(ptr noundef %0, ptr noundef nonnull @events, i64 noundef 4294967295, ptr noundef nonnull %9, i64 noundef 64) #7, !dbg !1259
  br label %631, !dbg !1260

631:                                              ; preds = %626, %622, %618
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #7, !dbg !1260
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #7, !dbg !1261
  call void @llvm.dbg.value(metadata ptr null, metadata !1180, metadata !DIExpression()), !dbg !1181
  br label %754, !dbg !1262

632:                                              ; preds = %608
  %633 = call ptr inttoptr (i64 1 to ptr)(ptr noundef nonnull @flow_state, ptr noundef nonnull %596) #7, !dbg !1263
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #7, !dbg !1261
  call void @llvm.dbg.value(metadata ptr %633, metadata !1180, metadata !DIExpression()), !dbg !1181
  %634 = icmp eq ptr %633, null, !dbg !1264
  br i1 %634, label %754, label %635, !dbg !1262

635:                                              ; preds = %632, %577
  %636 = phi ptr [ %633, %632 ], [ %597, %577 ]
  %637 = getelementptr inbounds %struct.flow_state, ptr %636, i64 0, i32 3, !dbg !1266
  %638 = load i64, ptr %637, align 8, !dbg !1267, !tbaa !1268
  %639 = add i64 %638, 1, !dbg !1267
  store i64 %639, ptr %637, align 8, !dbg !1267, !tbaa !1268
  %640 = load i32, ptr %595, align 8, !dbg !1269, !tbaa !1171
  %641 = zext i32 %640 to i64, !dbg !1270
  %642 = getelementptr inbounds %struct.flow_state, ptr %636, i64 0, i32 4, !dbg !1271
  %643 = load i64, ptr %642, align 8, !dbg !1272, !tbaa !1273
  %644 = add i64 %643, %641, !dbg !1272
  store i64 %644, ptr %642, align 8, !dbg !1272, !tbaa !1273
  call void @llvm.dbg.value(metadata ptr %636, metadata !596, metadata !DIExpression()), !dbg !599
  call void @llvm.dbg.value(metadata i8 poison, metadata !598, metadata !DIExpression()), !dbg !599
  call void @llvm.dbg.value(metadata ptr %636, metadata !1274, metadata !DIExpression()), !dbg !1283
  call void @llvm.dbg.value(metadata ptr %0, metadata !1279, metadata !DIExpression()), !dbg !1283
  call void @llvm.dbg.value(metadata ptr %1, metadata !1280, metadata !DIExpression()), !dbg !1283
  call void @llvm.dbg.value(metadata ptr %12, metadata !1281, metadata !DIExpression()), !dbg !1283
  call void @llvm.dbg.value(metadata i1 %598, metadata !1282, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1283
  %645 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 6, !dbg !1285
  %646 = load i8, ptr %645, align 4, !dbg !1285, !tbaa !936, !range !800, !noundef !801
  %647 = icmp eq i8 %646, 0, !dbg !1285
  br i1 %647, label %754, label %648, !dbg !1287

648:                                              ; preds = %635
  %649 = load volatile i8, ptr getelementptr inbounds (%struct.bpf_config, ptr @config, i64 0, i32 5), align 1, !dbg !1288, !tbaa !1290, !range !800, !noundef !801
  %650 = icmp eq i8 %649, 0, !dbg !1288
  br i1 %650, label %699, label %651, !dbg !1291

651:                                              ; preds = %648
  %652 = getelementptr inbounds %struct.parsing_context, ptr %1, i64 0, i32 5, !dbg !1292
  %653 = load i8, ptr %652, align 8, !dbg !1292, !tbaa !428, !range !800, !noundef !801
  %654 = icmp eq i8 %653, 0, !dbg !1292
  br i1 %654, label %655, label %699, !dbg !1293

655:                                              ; preds = %651
  call void @llvm.dbg.value(metadata ptr %12, metadata !1294, metadata !DIExpression()), !dbg !1308
  call void @llvm.dbg.value(metadata ptr %0, metadata !1299, metadata !DIExpression()), !dbg !1308
  call void @llvm.dbg.value(metadata ptr %1, metadata !1300, metadata !DIExpression()), !dbg !1308
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #7, !dbg !1310
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1302, metadata !DIExpression()), !dbg !1311
  %656 = getelementptr inbounds i8, ptr %8, i64 4, !dbg !1312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %656, i8 0, i64 60, i1 false), !dbg !1312
  %657 = getelementptr inbounds %struct.parsing_context, ptr %1, i64 0, i32 4, !dbg !1313
  %658 = load i32, ptr %657, align 4, !dbg !1313, !tbaa !427
  %659 = getelementptr inbounds %struct.bpf_fib_lookup, ptr %8, i64 0, i32 5, !dbg !1314
  store i32 %658, ptr %659, align 4, !dbg !1315, !tbaa !1316
  %660 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 4, i32 0, i32 3, !dbg !1318
  %661 = load i8, ptr %660, align 2, !dbg !1318, !tbaa !699
  store i8 %661, ptr %8, align 4, !dbg !1319, !tbaa !1320
  switch i8 %661, label %688 [
    i8 2, label %662
    i8 10, label %677
  ], !dbg !1321

662:                                              ; preds = %655
  %663 = load ptr, ptr %12, align 8, !dbg !1322, !tbaa !881
  %664 = getelementptr inbounds %struct.iphdr, ptr %663, i64 0, i32 1, !dbg !1324
  %665 = load i8, ptr %664, align 1, !dbg !1324, !tbaa !1325
  %666 = getelementptr inbounds %struct.bpf_fib_lookup, ptr %8, i64 0, i32 6, !dbg !1326
  store i8 %665, ptr %666, align 4, !dbg !1327, !tbaa !881
  %667 = getelementptr inbounds %struct.iphdr, ptr %663, i64 0, i32 2, !dbg !1328
  %668 = load i16, ptr %667, align 2, !dbg !1328, !tbaa !1329
  %669 = call i16 @llvm.bswap.i16(i16 %668), !dbg !1328
  %670 = getelementptr inbounds %struct.bpf_fib_lookup, ptr %8, i64 0, i32 4, !dbg !1330
  store i16 %669, ptr %670, align 2, !dbg !1331, !tbaa !1332
  %671 = getelementptr inbounds %struct.iphdr, ptr %663, i64 0, i32 8, !dbg !1333
  %672 = load i32, ptr %671, align 4, !dbg !1333, !tbaa !881
  %673 = getelementptr inbounds %struct.bpf_fib_lookup, ptr %8, i64 0, i32 7, !dbg !1334
  store i32 %672, ptr %673, align 4, !dbg !1335, !tbaa !881
  %674 = getelementptr inbounds %struct.iphdr, ptr %663, i64 0, i32 8, i32 0, i32 1, !dbg !1336
  %675 = load i32, ptr %674, align 4, !dbg !1336, !tbaa !881
  %676 = getelementptr inbounds %struct.bpf_fib_lookup, ptr %8, i64 0, i32 8, !dbg !1337
  store i32 %675, ptr %676, align 4, !dbg !1338, !tbaa !881
  br label %688, !dbg !1339

677:                                              ; preds = %655
  %678 = getelementptr inbounds %struct.bpf_fib_lookup, ptr %8, i64 0, i32 7, !dbg !1340
  call void @llvm.dbg.value(metadata ptr %678, metadata !1303, metadata !DIExpression()), !dbg !1341
  %679 = getelementptr inbounds %struct.bpf_fib_lookup, ptr %8, i64 0, i32 8, !dbg !1342
  call void @llvm.dbg.value(metadata ptr %679, metadata !1307, metadata !DIExpression()), !dbg !1341
  %680 = load ptr, ptr %12, align 8, !dbg !1343, !tbaa !881
  %681 = load i32, ptr %680, align 4, !dbg !1344, !tbaa !911
  %682 = and i32 %681, -241, !dbg !1345
  %683 = getelementptr inbounds %struct.bpf_fib_lookup, ptr %8, i64 0, i32 6, !dbg !1346
  store i32 %682, ptr %683, align 4, !dbg !1347, !tbaa !881
  %684 = getelementptr inbounds %struct.ipv6hdr, ptr %680, i64 0, i32 2, !dbg !1348
  %685 = load i16, ptr %684, align 4, !dbg !1348, !tbaa !1349
  %686 = call i16 @llvm.bswap.i16(i16 %685), !dbg !1348
  %687 = getelementptr inbounds %struct.bpf_fib_lookup, ptr %8, i64 0, i32 4, !dbg !1350
  store i16 %686, ptr %687, align 2, !dbg !1351, !tbaa !1332
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %678, ptr noundef nonnull align 4 dereferenceable(16) %596, i64 16, i1 false), !dbg !1352, !tbaa.struct !1130
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %679, ptr noundef nonnull align 8 dereferenceable(16) %584, i64 16, i1 false), !dbg !1353, !tbaa.struct !1130
  br label %688, !dbg !1354

688:                                              ; preds = %677, %662, %655
  %689 = load i16, ptr %131, align 4, !dbg !1355, !tbaa !809
  %690 = trunc i16 %689 to i8, !dbg !1356
  %691 = getelementptr inbounds %struct.bpf_fib_lookup, ptr %8, i64 0, i32 1, !dbg !1357
  store i8 %690, ptr %691, align 1, !dbg !1358, !tbaa !1359
  %692 = getelementptr inbounds %struct.bpf_fib_lookup, ptr %8, i64 0, i32 2, !dbg !1360
  store i16 0, ptr %692, align 2, !dbg !1361, !tbaa !1362
  store i16 0, ptr %656, align 4, !dbg !1363, !tbaa !1364
  %693 = call i64 inttoptr (i64 69 to ptr)(ptr noundef %0, ptr noundef nonnull %8, i32 noundef 64, i32 noundef 0) #7, !dbg !1365
  %694 = trunc i64 %693 to i32, !dbg !1365
  call void @llvm.dbg.value(metadata i32 %694, metadata !1301, metadata !DIExpression()), !dbg !1308
  %695 = icmp eq i32 %694, 4, !dbg !1366
  %696 = icmp eq i32 %694, 5, !dbg !1367
  %697 = call i1 @llvm.bpf.passthrough.i1.i1(i32 1, i1 %695)
  %698 = select i1 %697, i1 true, i1 %696, !dbg !1367
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #7, !dbg !1368
  br i1 %698, label %754, label %699, !dbg !1369

699:                                              ; preds = %688, %651, %648
  br i1 %598, label %700, label %705, !dbg !1370

700:                                              ; preds = %699
  %701 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 4, i32 1, !dbg !1372
  %702 = load i32, ptr %701, align 8, !dbg !1372, !tbaa !1011
  %703 = getelementptr inbounds %struct.flow_state, ptr %636, i64 0, i32 7, !dbg !1373
  store i32 %702, ptr %703, align 8, !dbg !1374, !tbaa !1375
  %704 = load i64, ptr %14, align 8, !dbg !1376, !tbaa !626
  br label %735, !dbg !1377

705:                                              ; preds = %699
  %706 = getelementptr inbounds %struct.flow_state, ptr %636, i64 0, i32 7, !dbg !1379
  %707 = load i32, ptr %706, align 8, !dbg !1379, !tbaa !1375
  %708 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 4, i32 1, !dbg !1380
  %709 = load i32, ptr %708, align 8, !dbg !1380, !tbaa !1011
  %710 = icmp eq i32 %707, %709, !dbg !1381
  br i1 %710, label %754, label %711, !dbg !1382

711:                                              ; preds = %705
  store i32 %709, ptr %706, align 8, !dbg !1374, !tbaa !1375
  %712 = load i64, ptr %14, align 8, !dbg !1383, !tbaa !626
  %713 = getelementptr inbounds %struct.flow_state, ptr %636, i64 0, i32 2, !dbg !1384
  %714 = load i64, ptr %713, align 8, !dbg !1384, !tbaa !1207
  %715 = load volatile i8, ptr getelementptr inbounds (%struct.bpf_config, ptr @config, i64 0, i32 2), align 8, !dbg !1385, !tbaa !1386, !range !800, !noundef !801
  %716 = icmp eq i8 %715, 0, !dbg !1385
  %717 = getelementptr inbounds %struct.flow_state, ptr %636, i64 0, i32 1, !dbg !1387
  %718 = select i1 %716, ptr %636, ptr %717, !dbg !1387
  %719 = load i64, ptr %718, align 8, !dbg !1387, !tbaa !1241
  call void @llvm.dbg.value(metadata i64 %712, metadata !1388, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata i64 %714, metadata !1393, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata i64 %719, metadata !1394, metadata !DIExpression()), !dbg !1395
  %720 = icmp ult i64 %712, %714, !dbg !1397
  br i1 %720, label %754, label %721, !dbg !1399

721:                                              ; preds = %711
  %722 = load volatile i64, ptr getelementptr inbounds (%struct.bpf_config, ptr @config, i64 0, i32 1), align 8, !dbg !1400, !tbaa !1402
  %723 = icmp ne i64 %722, 0, !dbg !1403
  %724 = icmp ne i64 %719, 0
  %725 = and i1 %724, %723, !dbg !1404
  %726 = sub i64 %712, %714, !dbg !1395
  br i1 %725, label %727, label %732, !dbg !1404

727:                                              ; preds = %721
  %728 = load volatile i64, ptr getelementptr inbounds (%struct.bpf_config, ptr @config, i64 0, i32 1), align 8, !dbg !1405, !tbaa !1402
  %729 = mul i64 %728, %719, !dbg !1405
  %730 = lshr i64 %729, 16, !dbg !1405
  %731 = icmp ult i64 %726, %730, !dbg !1406
  br i1 %731, label %754, label %735, !dbg !1407

732:                                              ; preds = %721
  %733 = load volatile i64, ptr @config, align 8, !dbg !1408, !tbaa !1409
  %734 = icmp ult i64 %726, %733, !dbg !1410
  br i1 %734, label %754, label %735, !dbg !1407

735:                                              ; preds = %732, %727, %700
  %736 = phi i64 [ %712, %727 ], [ %704, %700 ], [ %712, %732 ], !dbg !1376
  %737 = getelementptr inbounds %struct.flow_state, ptr %636, i64 0, i32 2, !dbg !1411
  store i64 %736, ptr %737, align 8, !dbg !1412, !tbaa !1207
  %738 = call i64 inttoptr (i64 2 to ptr)(ptr noundef nonnull @packet_ts, ptr noundef nonnull %596, ptr noundef nonnull %14, i64 noundef 1) #7, !dbg !1413
  %739 = icmp eq i64 %738, 0, !dbg !1415
  br i1 %739, label %754, label %740, !dbg !1416

740:                                              ; preds = %735
  call void @llvm.dbg.value(metadata ptr %0, metadata !1218, metadata !DIExpression()), !dbg !1417
  call void @llvm.dbg.value(metadata ptr %12, metadata !1223, metadata !DIExpression()), !dbg !1417
  call void @llvm.dbg.value(metadata i8 1, metadata !1224, metadata !DIExpression()), !dbg !1417
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #7, !dbg !1419
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1225, metadata !DIExpression()), !dbg !1420
  %741 = load i64, ptr %14, align 8, !dbg !1421, !tbaa !626
  %742 = load volatile i64, ptr getelementptr inbounds ([2 x i64], ptr @last_warn_time, i64 0, i64 1), align 8, !dbg !1422, !tbaa !1241
  %743 = icmp ult i64 %741, %742, !dbg !1423
  br i1 %743, label %753, label %744, !dbg !1424

744:                                              ; preds = %740
  %745 = load volatile i64, ptr getelementptr inbounds ([2 x i64], ptr @last_warn_time, i64 0, i64 1), align 8, !dbg !1425, !tbaa !1241
  %746 = sub i64 %741, %745, !dbg !1426
  %747 = icmp ult i64 %746, 1000000000, !dbg !1427
  br i1 %747, label %753, label %748, !dbg !1428

748:                                              ; preds = %744
  store volatile i64 %741, ptr getelementptr inbounds ([2 x i64], ptr @last_warn_time, i64 0, i64 1), align 8, !dbg !1429, !tbaa !1241
  %749 = getelementptr inbounds i8, ptr %7, i64 56, !dbg !1430
  store i64 4294967296, ptr %749, align 8, !dbg !1430
  store i64 3, ptr %7, align 8, !dbg !1431, !tbaa !1251
  %750 = getelementptr inbounds %struct.map_full_event, ptr %7, i64 0, i32 1, !dbg !1432
  store i64 %741, ptr %750, align 8, !dbg !1433, !tbaa !1255
  %751 = getelementptr inbounds %struct.map_full_event, ptr %7, i64 0, i32 2, !dbg !1434
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %751, ptr noundef nonnull align 4 dereferenceable(44) %596, i64 44, i1 false), !dbg !1435, !tbaa.struct !1258
  %752 = call i64 inttoptr (i64 25 to ptr)(ptr noundef %0, ptr noundef nonnull @events, i64 noundef 4294967295, ptr noundef nonnull %7, i64 noundef 64) #7, !dbg !1436
  br label %753, !dbg !1437

753:                                              ; preds = %748, %744, %740
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #7, !dbg !1437
  br label %754, !dbg !1438

754:                                              ; preds = %603, %599, %631, %632, %635, %688, %705, %711, %727, %732, %735, %753
  %755 = phi i1 [ false, %635 ], [ false, %688 ], [ false, %705 ], [ false, %711 ], [ false, %727 ], [ false, %732 ], [ false, %735 ], [ false, %753 ], [ true, %632 ], [ true, %631 ], [ true, %599 ], [ true, %603 ]
  %756 = phi ptr [ %636, %635 ], [ %636, %688 ], [ %636, %705 ], [ %636, %711 ], [ %636, %727 ], [ %636, %732 ], [ %636, %735 ], [ %636, %753 ], [ null, %632 ], [ null, %631 ], [ null, %599 ], [ null, %603 ]
  call void @llvm.dbg.value(metadata ptr %0, metadata !1439, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata ptr %12, metadata !1442, metadata !DIExpression()), !dbg !1444
  %757 = call ptr inttoptr (i64 1 to ptr)(ptr noundef nonnull @flow_state, ptr noundef nonnull %581) #7, !dbg !1446
  call void @llvm.dbg.value(metadata ptr %757, metadata !1443, metadata !DIExpression()), !dbg !1444
  %758 = icmp eq ptr %757, null, !dbg !1447
  br i1 %758, label %759, label %760, !dbg !1449

759:                                              ; preds = %754
  call void @llvm.dbg.value(metadata ptr %757, metadata !597, metadata !DIExpression()), !dbg !599
  call void @llvm.dbg.value(metadata ptr %757, metadata !1450, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata ptr %0, metadata !1455, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata ptr %1, metadata !1456, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata ptr %12, metadata !1457, metadata !DIExpression()), !dbg !1477
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %5) #7, !dbg !1479
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1458, metadata !DIExpression()), !dbg !1480
  br label %837, !dbg !1481

760:                                              ; preds = %754
  %761 = getelementptr inbounds %struct.flow_state, ptr %757, i64 0, i32 8, !dbg !1483
  %762 = load i8, ptr %761, align 4, !dbg !1483, !tbaa !1485, !range !800, !noundef !801
  %763 = icmp ne i8 %762, 0, !dbg !1483
  %764 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 8
  %765 = load i8, ptr %764, align 2
  %766 = icmp eq i8 %765, 3
  %767 = select i1 %763, i1 true, i1 %766, !dbg !1486
  br i1 %767, label %780, label %768, !dbg !1486

768:                                              ; preds = %760
  store i8 1, ptr %761, align 4, !dbg !1487, !tbaa !1485
  call void @llvm.dbg.value(metadata ptr %0, metadata !1489, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata ptr %12, metadata !1494, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata ptr %757, metadata !1495, metadata !DIExpression()), !dbg !1506
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #7, !dbg !1508
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1496, metadata !DIExpression()), !dbg !1509
  store i64 1, ptr %6, align 8, !dbg !1510, !tbaa !1511
  %769 = getelementptr inbounds %struct.flow_event, ptr %6, i64 0, i32 1, !dbg !1510
  %770 = getelementptr inbounds %struct.flow_state, ptr %757, i64 0, i32 2, !dbg !1513
  %771 = load i64, ptr %770, align 8, !dbg !1513, !tbaa !1207
  store i64 %771, ptr %769, align 8, !dbg !1510, !tbaa !1514
  %772 = getelementptr inbounds %struct.flow_event, ptr %6, i64 0, i32 2, !dbg !1510
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %772, ptr noundef nonnull align 4 dereferenceable(44) %596, i64 44, i1 false), !dbg !1515, !tbaa.struct !1258
  %773 = getelementptr inbounds %struct.flow_event, ptr %6, i64 0, i32 3, !dbg !1510
  store i8 1, ptr %773, align 4, !dbg !1510, !tbaa !1516
  %774 = getelementptr inbounds %struct.flow_event, ptr %6, i64 0, i32 4, !dbg !1510
  %775 = getelementptr inbounds %struct.flow_state, ptr %757, i64 0, i32 9, !dbg !1517
  %776 = load i8, ptr %775, align 1, !dbg !1517, !tbaa !1213
  store i8 %776, ptr %774, align 1, !dbg !1510, !tbaa !1518
  %777 = getelementptr inbounds %struct.flow_event, ptr %6, i64 0, i32 5, !dbg !1510
  store i8 1, ptr %777, align 2, !dbg !1510, !tbaa !1519
  %778 = getelementptr inbounds %struct.flow_event, ptr %6, i64 0, i32 6, !dbg !1510
  store i8 0, ptr %778, align 1, !dbg !1510, !tbaa !1520
  %779 = call i64 inttoptr (i64 25 to ptr)(ptr noundef %0, ptr noundef nonnull @events, i64 noundef 4294967295, ptr noundef nonnull %6, i64 noundef 64) #7, !dbg !1521
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #7, !dbg !1522
  br label %780, !dbg !1523

780:                                              ; preds = %768, %760
  %781 = getelementptr inbounds %struct.flow_state, ptr %757, i64 0, i32 5, !dbg !1524
  %782 = load i64, ptr %781, align 8, !dbg !1525, !tbaa !1526
  %783 = add i64 %782, 1, !dbg !1525
  store i64 %783, ptr %781, align 8, !dbg !1525, !tbaa !1526
  %784 = load i32, ptr %595, align 8, !dbg !1527, !tbaa !1171
  %785 = zext i32 %784 to i64, !dbg !1528
  %786 = getelementptr inbounds %struct.flow_state, ptr %757, i64 0, i32 6, !dbg !1529
  %787 = load i64, ptr %786, align 8, !dbg !1530, !tbaa !1531
  %788 = add i64 %787, %785, !dbg !1530
  store i64 %788, ptr %786, align 8, !dbg !1530, !tbaa !1531
  call void @llvm.dbg.value(metadata ptr %757, metadata !597, metadata !DIExpression()), !dbg !599
  call void @llvm.dbg.value(metadata ptr %757, metadata !1450, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata ptr %0, metadata !1455, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata ptr %1, metadata !1456, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata ptr %12, metadata !1457, metadata !DIExpression()), !dbg !1477
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %5) #7, !dbg !1479
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1458, metadata !DIExpression()), !dbg !1480
  %789 = getelementptr inbounds i8, ptr %5, i64 56, !dbg !1480
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %789, i8 0, i64 64, i1 false), !dbg !1480
  %790 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 7, !dbg !1532
  %791 = load i8, ptr %790, align 1, !dbg !1532, !tbaa !940, !range !800, !noundef !801
  %792 = icmp eq i8 %791, 0, !dbg !1532
  br i1 %792, label %837, label %793, !dbg !1533

793:                                              ; preds = %780
  %794 = call ptr inttoptr (i64 1 to ptr)(ptr noundef nonnull @packet_ts, ptr noundef nonnull %581) #7, !dbg !1534
  call void @llvm.dbg.value(metadata ptr %794, metadata !1476, metadata !DIExpression()), !dbg !1477
  %795 = icmp eq ptr %794, null, !dbg !1535
  br i1 %795, label %837, label %796, !dbg !1537

796:                                              ; preds = %793
  %797 = load i64, ptr %14, align 8, !dbg !1538, !tbaa !626
  %798 = load i64, ptr %794, align 8, !dbg !1539, !tbaa !1241
  %799 = icmp ult i64 %797, %798, !dbg !1540
  br i1 %799, label %837, label %800, !dbg !1541

800:                                              ; preds = %796
  %801 = sub i64 %797, %798, !dbg !1542
  %802 = freeze i64 %801, !dbg !1543
  %803 = getelementptr inbounds %struct.rtt_event, ptr %5, i64 0, i32 4, !dbg !1545
  store i64 %802, ptr %803, align 8, !dbg !1546, !tbaa !1547
  %804 = call i64 inttoptr (i64 3 to ptr)(ptr noundef nonnull @packet_ts, ptr noundef nonnull %581) #7, !dbg !1549
  %805 = load i64, ptr %757, align 8, !dbg !1550, !tbaa !1551
  %806 = add i64 %805, -1, !dbg !1543
  %807 = icmp ult i64 %806, %802, !dbg !1543
  br i1 %807, label %809, label %808, !dbg !1543

808:                                              ; preds = %800
  store i64 %802, ptr %757, align 8, !dbg !1552, !tbaa !1551
  br label %809, !dbg !1553

809:                                              ; preds = %808, %800
  %810 = phi i64 [ %805, %800 ], [ %802, %808 ], !dbg !1554
  %811 = getelementptr inbounds %struct.flow_state, ptr %757, i64 0, i32 1, !dbg !1555
  %812 = load i64, ptr %811, align 8, !dbg !1555, !tbaa !1556
  call void @llvm.dbg.value(metadata i64 %812, metadata !1557, metadata !DIExpression()), !dbg !1563
  call void @llvm.dbg.value(metadata i64 %801, metadata !1562, metadata !DIExpression()), !dbg !1563
  %813 = icmp eq i64 %812, 0, !dbg !1565
  %814 = lshr i64 %812, 3, !dbg !1567
  %815 = lshr i64 %802, 3, !dbg !1567
  %816 = add i64 %812, %815, !dbg !1567
  %817 = sub i64 %816, %814, !dbg !1567
  %818 = select i1 %813, i64 %802, i64 %817, !dbg !1567
  store i64 %818, ptr %811, align 8, !dbg !1568, !tbaa !1556
  store i64 2, ptr %5, align 8, !dbg !1569, !tbaa !1570
  %819 = load i64, ptr %14, align 8, !dbg !1571, !tbaa !626
  %820 = getelementptr inbounds %struct.rtt_event, ptr %5, i64 0, i32 1, !dbg !1572
  store i64 %819, ptr %820, align 8, !dbg !1573, !tbaa !1574
  %821 = getelementptr inbounds %struct.rtt_event, ptr %5, i64 0, i32 5, !dbg !1575
  store i64 %810, ptr %821, align 8, !dbg !1576, !tbaa !1577
  %822 = getelementptr inbounds %struct.flow_state, ptr %757, i64 0, i32 3, !dbg !1578
  %823 = load i64, ptr %822, align 8, !dbg !1578, !tbaa !1268
  %824 = getelementptr inbounds %struct.rtt_event, ptr %5, i64 0, i32 6, !dbg !1579
  store i64 %823, ptr %824, align 8, !dbg !1580, !tbaa !1581
  %825 = getelementptr inbounds %struct.flow_state, ptr %757, i64 0, i32 4, !dbg !1582
  %826 = load i64, ptr %825, align 8, !dbg !1582, !tbaa !1273
  %827 = getelementptr inbounds %struct.rtt_event, ptr %5, i64 0, i32 7, !dbg !1583
  store i64 %826, ptr %827, align 8, !dbg !1584, !tbaa !1585
  %828 = load i64, ptr %781, align 8, !dbg !1586, !tbaa !1526
  %829 = getelementptr inbounds %struct.rtt_event, ptr %5, i64 0, i32 8, !dbg !1587
  store i64 %828, ptr %829, align 8, !dbg !1588, !tbaa !1589
  %830 = load i64, ptr %786, align 8, !dbg !1590, !tbaa !1531
  %831 = getelementptr inbounds %struct.rtt_event, ptr %5, i64 0, i32 9, !dbg !1591
  store i64 %830, ptr %831, align 8, !dbg !1592, !tbaa !1593
  %832 = getelementptr inbounds %struct.rtt_event, ptr %5, i64 0, i32 2, !dbg !1594
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %832, ptr noundef nonnull align 4 dereferenceable(44) %596, i64 44, i1 false), !dbg !1595, !tbaa.struct !1258
  %833 = getelementptr inbounds %struct.parsing_context, ptr %1, i64 0, i32 5, !dbg !1596
  %834 = load i8, ptr %833, align 8, !dbg !1596, !tbaa !428, !range !800, !noundef !801
  %835 = getelementptr inbounds %struct.rtt_event, ptr %5, i64 0, i32 10, !dbg !1597
  store i8 %834, ptr %835, align 8, !dbg !1598, !tbaa !1599
  %836 = call i64 inttoptr (i64 25 to ptr)(ptr noundef %0, ptr noundef nonnull @events, i64 noundef 4294967295, ptr noundef nonnull %5, i64 noundef 120) #7, !dbg !1600
  br label %837, !dbg !1601

837:                                              ; preds = %759, %780, %793, %796, %809
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %5) #7, !dbg !1601
  call void @llvm.dbg.value(metadata ptr %0, metadata !1602, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata ptr %12, metadata !1607, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata ptr %636, metadata !1608, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata ptr %757, metadata !1609, metadata !DIExpression()), !dbg !1611
  br i1 %755, label %862, label %838, !dbg !1613

838:                                              ; preds = %837
  %839 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 8, !dbg !1615
  %840 = load i8, ptr %839, align 2, !dbg !1615, !tbaa !951
  %841 = and i8 %840, -2, !dbg !1616
  %842 = icmp eq i8 %841, 2, !dbg !1616
  br i1 %842, label %843, label %862, !dbg !1616

843:                                              ; preds = %838
  %844 = getelementptr inbounds %struct.flow_state, ptr %756, i64 0, i32 8, !dbg !1617
  %845 = load i8, ptr %844, align 4, !dbg !1617, !tbaa !1485, !range !800, !noundef !801
  call void @llvm.dbg.value(metadata i8 %845, metadata !1610, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1611
  %846 = call i64 inttoptr (i64 3 to ptr)(ptr noundef nonnull @flow_state, ptr noundef nonnull %596) #7, !dbg !1619
  %847 = icmp ne i64 %846, 0, !dbg !1619
  %848 = icmp eq i8 %845, 0
  %849 = or i1 %848, %847, !dbg !1621
  call void @llvm.dbg.value(metadata i1 %848, metadata !1610, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1611
  br i1 %849, label %862, label %850, !dbg !1621

850:                                              ; preds = %843
  call void @llvm.dbg.value(metadata ptr %0, metadata !1622, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata ptr %12, metadata !1627, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i1 false, metadata !1628, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1630
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #7, !dbg !1632
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1629, metadata !DIExpression()), !dbg !1633
  store i64 1, ptr %4, align 8, !dbg !1634, !tbaa !1511
  %851 = getelementptr inbounds %struct.flow_event, ptr %4, i64 0, i32 1, !dbg !1634
  %852 = load i64, ptr %14, align 8, !dbg !1635, !tbaa !626
  store i64 %852, ptr %851, align 8, !dbg !1634, !tbaa !1514
  %853 = getelementptr inbounds %struct.flow_event, ptr %4, i64 0, i32 2, !dbg !1634
  %854 = getelementptr inbounds %struct.flow_event, ptr %4, i64 0, i32 3, !dbg !1634
  %855 = load i8, ptr %839, align 2, !dbg !1636, !tbaa !951
  store i8 %855, ptr %854, align 4, !dbg !1634, !tbaa !1516
  %856 = getelementptr inbounds %struct.flow_event, ptr %4, i64 0, i32 4, !dbg !1634
  %857 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 9, !dbg !1637
  %858 = load i8, ptr %857, align 1, !dbg !1637, !tbaa !954
  store i8 %858, ptr %856, align 1, !dbg !1634, !tbaa !1518
  %859 = getelementptr inbounds %struct.flow_event, ptr %4, i64 0, i32 5, !dbg !1634
  %860 = getelementptr inbounds %struct.flow_event, ptr %4, i64 0, i32 6, !dbg !1634
  store i8 0, ptr %860, align 1, !dbg !1634, !tbaa !1520
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %853, ptr noundef nonnull align 4 dereferenceable(44) %581, i64 44, i1 false), !dbg !1638
  store i8 1, ptr %859, align 2, !dbg !1638, !tbaa !1519
  %861 = call i64 inttoptr (i64 25 to ptr)(ptr noundef %0, ptr noundef nonnull @events, i64 noundef 4294967295, ptr noundef nonnull %4, i64 noundef 64) #7, !dbg !1640
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #7, !dbg !1641
  br label %862, !dbg !1642

862:                                              ; preds = %850, %843, %838, %837
  br i1 %758, label %886, label %863, !dbg !1643

863:                                              ; preds = %862
  %864 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 8, !dbg !1645
  %865 = load i8, ptr %864, align 2, !dbg !1645, !tbaa !951
  %866 = icmp eq i8 %865, 3, !dbg !1646
  br i1 %866, label %867, label %886, !dbg !1647

867:                                              ; preds = %863
  %868 = getelementptr inbounds %struct.flow_state, ptr %757, i64 0, i32 8, !dbg !1648
  %869 = load i8, ptr %868, align 4, !dbg !1648, !tbaa !1485, !range !800, !noundef !801
  call void @llvm.dbg.value(metadata i8 %869, metadata !1610, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1611
  %870 = call i64 inttoptr (i64 3 to ptr)(ptr noundef nonnull @flow_state, ptr noundef nonnull %581) #7, !dbg !1650
  %871 = icmp ne i64 %870, 0, !dbg !1650
  %872 = icmp eq i8 %869, 0
  %873 = or i1 %872, %871, !dbg !1652
  call void @llvm.dbg.value(metadata i1 %872, metadata !1610, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1611
  br i1 %873, label %886, label %874, !dbg !1652

874:                                              ; preds = %867
  call void @llvm.dbg.value(metadata ptr %0, metadata !1622, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata ptr %12, metadata !1627, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i1 true, metadata !1628, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1653
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #7, !dbg !1655
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1629, metadata !DIExpression()), !dbg !1656
  store i64 1, ptr %3, align 8, !dbg !1657, !tbaa !1511
  %875 = getelementptr inbounds %struct.flow_event, ptr %3, i64 0, i32 1, !dbg !1657
  %876 = load i64, ptr %14, align 8, !dbg !1658, !tbaa !626
  store i64 %876, ptr %875, align 8, !dbg !1657, !tbaa !1514
  %877 = getelementptr inbounds %struct.flow_event, ptr %3, i64 0, i32 2, !dbg !1657
  %878 = getelementptr inbounds %struct.flow_event, ptr %3, i64 0, i32 3, !dbg !1657
  %879 = load i8, ptr %864, align 2, !dbg !1659, !tbaa !951
  store i8 %879, ptr %878, align 4, !dbg !1657, !tbaa !1516
  %880 = getelementptr inbounds %struct.flow_event, ptr %3, i64 0, i32 4, !dbg !1657
  %881 = getelementptr inbounds %struct.packet_info, ptr %12, i64 0, i32 9, !dbg !1660
  %882 = load i8, ptr %881, align 1, !dbg !1660, !tbaa !954
  store i8 %882, ptr %880, align 1, !dbg !1657, !tbaa !1518
  %883 = getelementptr inbounds %struct.flow_event, ptr %3, i64 0, i32 5, !dbg !1657
  %884 = getelementptr inbounds %struct.flow_event, ptr %3, i64 0, i32 6, !dbg !1657
  store i8 0, ptr %884, align 1, !dbg !1657, !tbaa !1520
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %877, ptr noundef nonnull align 4 dereferenceable(44) %596, i64 44, i1 false), !dbg !1661
  store i8 0, ptr %883, align 2, !dbg !1661, !tbaa !1519
  %885 = call i64 inttoptr (i64 25 to ptr)(ptr noundef %0, ptr noundef nonnull @events, i64 noundef 4294967295, ptr noundef nonnull %3, i64 noundef 64) #7, !dbg !1662
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #7, !dbg !1663
  br label %886, !dbg !1664

886:                                              ; preds = %121, %522, %530, %525, %484, %492, %487, %146, %140, %136, %424, %2, %515, %44, %874, %867, %863, %862
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %12) #7, !dbg !1665
  ret void, !dbg !1665
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind
define dso_local i32 @pping_tc_ingress(ptr noundef %0) #0 section "tc" !dbg !1666 {
  %2 = alloca %struct.parsing_context, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !1668, metadata !DIExpression()), !dbg !1670
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #7, !dbg !1671
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1669, metadata !DIExpression()), !dbg !1672
  %3 = getelementptr inbounds %struct.__sk_buff, ptr %0, i64 0, i32 15, !dbg !1673
  %4 = load i32, ptr %3, align 4, !dbg !1673, !tbaa !403
  %5 = zext i32 %4 to i64, !dbg !1674
  %6 = inttoptr i64 %5 to ptr, !dbg !1675
  store ptr %6, ptr %2, align 8, !dbg !1676, !tbaa !412
  %7 = getelementptr inbounds %struct.parsing_context, ptr %2, i64 0, i32 1, !dbg !1676
  %8 = getelementptr inbounds %struct.__sk_buff, ptr %0, i64 0, i32 16, !dbg !1677
  %9 = load i32, ptr %8, align 8, !dbg !1677, !tbaa !418
  %10 = zext i32 %9 to i64, !dbg !1678
  %11 = inttoptr i64 %10 to ptr, !dbg !1679
  store ptr %11, ptr %7, align 8, !dbg !1676, !tbaa !421
  %12 = getelementptr inbounds %struct.parsing_context, ptr %2, i64 0, i32 2, !dbg !1676
  store ptr %6, ptr %12, align 8, !dbg !1680, !tbaa !423
  %13 = getelementptr inbounds %struct.parsing_context, ptr %2, i64 0, i32 3, !dbg !1676
  %14 = load i32, ptr %0, align 8, !dbg !1681, !tbaa !425
  store i32 %14, ptr %13, align 8, !dbg !1676, !tbaa !426
  %15 = getelementptr inbounds %struct.parsing_context, ptr %2, i64 0, i32 4, !dbg !1676
  %16 = getelementptr inbounds %struct.__sk_buff, ptr %0, i64 0, i32 9, !dbg !1682
  %17 = load i32, ptr %16, align 4, !dbg !1682, !tbaa !1683
  store i32 %17, ptr %15, align 4, !dbg !1676, !tbaa !427
  %18 = getelementptr inbounds %struct.parsing_context, ptr %2, i64 0, i32 5, !dbg !1676
  store i8 0, ptr %18, align 8, !dbg !1676, !tbaa !428
  call fastcc void @pping(ptr noundef nonnull %0, ptr noundef nonnull %2), !dbg !1684
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #7, !dbg !1685
  ret i32 -1, !dbg !1686
}

; Function Attrs: nounwind
define dso_local i32 @pping_xdp_ingress(ptr noundef %0) #0 section "xdp" !dbg !1687 {
  %2 = alloca %struct.parsing_context, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !1700, metadata !DIExpression()), !dbg !1702
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #7, !dbg !1703
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1701, metadata !DIExpression()), !dbg !1704
  %3 = load i32, ptr %0, align 4, !dbg !1705, !tbaa !1706
  %4 = zext i32 %3 to i64, !dbg !1708
  %5 = inttoptr i64 %4 to ptr, !dbg !1709
  store ptr %5, ptr %2, align 8, !dbg !1710, !tbaa !412
  %6 = getelementptr inbounds %struct.parsing_context, ptr %2, i64 0, i32 1, !dbg !1710
  %7 = getelementptr inbounds %struct.xdp_md, ptr %0, i64 0, i32 1, !dbg !1711
  %8 = load i32, ptr %7, align 4, !dbg !1711, !tbaa !1712
  %9 = zext i32 %8 to i64, !dbg !1713
  %10 = inttoptr i64 %9 to ptr, !dbg !1714
  store ptr %10, ptr %6, align 8, !dbg !1710, !tbaa !421
  %11 = getelementptr inbounds %struct.parsing_context, ptr %2, i64 0, i32 2, !dbg !1710
  store ptr %5, ptr %11, align 8, !dbg !1715, !tbaa !423
  %12 = getelementptr inbounds %struct.parsing_context, ptr %2, i64 0, i32 3, !dbg !1710
  %13 = sub i32 %8, %3, !dbg !1716
  store i32 %13, ptr %12, align 8, !dbg !1710, !tbaa !426
  %14 = getelementptr inbounds %struct.parsing_context, ptr %2, i64 0, i32 4, !dbg !1710
  %15 = getelementptr inbounds %struct.xdp_md, ptr %0, i64 0, i32 3, !dbg !1717
  %16 = load i32, ptr %15, align 4, !dbg !1717, !tbaa !1718
  store i32 %16, ptr %14, align 4, !dbg !1710, !tbaa !427
  %17 = getelementptr inbounds %struct.parsing_context, ptr %2, i64 0, i32 5, !dbg !1710
  store i8 0, ptr %17, align 8, !dbg !1710, !tbaa !428
  call fastcc void @pping(ptr noundef nonnull %0, ptr noundef nonnull %2), !dbg !1719
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #7, !dbg !1720
  ret i32 2, !dbg !1721
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

; Function Attrs: nounwind memory(none)
declare i1 @llvm.bpf.passthrough.i1.i1(i32, i1) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #5

attributes #0 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind memory(none) }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!286, !287, !288, !289}
!llvm.ident = !{!290}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_license", scope: !2, file: !3, line: 81, type: !285, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 16.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !93, globals: !128, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "pping_kern.c", directory: "/home/raj/bpf-examples/pping", checksumkind: CSK_MD5, checksum: "3274b677c241d4ed592dbba8d60e88e2")
!4 = !{!5, !14, !24, !30, !61, !67, !71, !77, !88}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "xdp_action", file: !6, line: 4363, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "../lib/../headers/linux/bpf.h", directory: "/home/raj/bpf-examples/pping", checksumkind: CSK_MD5, checksum: "686704d11802f5f210143bc29244c61a")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13}
!9 = !DIEnumerator(name: "XDP_ABORTED", value: 0)
!10 = !DIEnumerator(name: "XDP_DROP", value: 1)
!11 = !DIEnumerator(name: "XDP_PASS", value: 2)
!12 = !DIEnumerator(name: "XDP_TX", value: 3)
!13 = !DIEnumerator(name: "XDP_REDIRECT", value: 4)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "flow_event_reason", file: !15, line: 26, baseType: !16, size: 8, elements: !17)
!15 = !DIFile(filename: "./pping.h", directory: "/home/raj/bpf-examples/pping", checksumkind: CSK_MD5, checksum: "6a861e6a346893fa17ab178d912b413e")
!16 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!17 = !{!18, !19, !20, !21, !22, !23}
!18 = !DIEnumerator(name: "EVENT_REASON_SYN", value: 0)
!19 = !DIEnumerator(name: "EVENT_REASON_SYN_ACK", value: 1)
!20 = !DIEnumerator(name: "EVENT_REASON_FIRST_OBS_PCKT", value: 2)
!21 = !DIEnumerator(name: "EVENT_REASON_FIN", value: 3)
!22 = !DIEnumerator(name: "EVENT_REASON_RST", value: 4)
!23 = !DIEnumerator(name: "EVENT_REASON_FLOW_TIMEOUT", value: 5)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "flow_event_type", file: !15, line: 19, baseType: !16, size: 8, elements: !25)
!25 = !{!26, !27, !28, !29}
!26 = !DIEnumerator(name: "FLOW_EVENT_NONE", value: 0)
!27 = !DIEnumerator(name: "FLOW_EVENT_OPENING", value: 1)
!28 = !DIEnumerator(name: "FLOW_EVENT_CLOSING", value: 2)
!29 = !DIEnumerator(name: "FLOW_EVENT_CLOSING_BOTH", value: 3)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !31, line: 28, baseType: !7, size: 32, elements: !32)
!31 = !DIFile(filename: "/usr/include/linux/in.h", directory: "", checksumkind: CSK_MD5, checksum: "078a32220dc819f6a7e2ea3cecc4e133")
!32 = !{!33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60}
!33 = !DIEnumerator(name: "IPPROTO_IP", value: 0)
!34 = !DIEnumerator(name: "IPPROTO_ICMP", value: 1)
!35 = !DIEnumerator(name: "IPPROTO_IGMP", value: 2)
!36 = !DIEnumerator(name: "IPPROTO_IPIP", value: 4)
!37 = !DIEnumerator(name: "IPPROTO_TCP", value: 6)
!38 = !DIEnumerator(name: "IPPROTO_EGP", value: 8)
!39 = !DIEnumerator(name: "IPPROTO_PUP", value: 12)
!40 = !DIEnumerator(name: "IPPROTO_UDP", value: 17)
!41 = !DIEnumerator(name: "IPPROTO_IDP", value: 22)
!42 = !DIEnumerator(name: "IPPROTO_TP", value: 29)
!43 = !DIEnumerator(name: "IPPROTO_DCCP", value: 33)
!44 = !DIEnumerator(name: "IPPROTO_IPV6", value: 41)
!45 = !DIEnumerator(name: "IPPROTO_RSVP", value: 46)
!46 = !DIEnumerator(name: "IPPROTO_GRE", value: 47)
!47 = !DIEnumerator(name: "IPPROTO_ESP", value: 50)
!48 = !DIEnumerator(name: "IPPROTO_AH", value: 51)
!49 = !DIEnumerator(name: "IPPROTO_MTP", value: 92)
!50 = !DIEnumerator(name: "IPPROTO_BEETPH", value: 94)
!51 = !DIEnumerator(name: "IPPROTO_ENCAP", value: 98)
!52 = !DIEnumerator(name: "IPPROTO_PIM", value: 103)
!53 = !DIEnumerator(name: "IPPROTO_COMP", value: 108)
!54 = !DIEnumerator(name: "IPPROTO_SCTP", value: 132)
!55 = !DIEnumerator(name: "IPPROTO_UDPLITE", value: 136)
!56 = !DIEnumerator(name: "IPPROTO_MPLS", value: 137)
!57 = !DIEnumerator(name: "IPPROTO_ETHERNET", value: 143)
!58 = !DIEnumerator(name: "IPPROTO_RAW", value: 255)
!59 = !DIEnumerator(name: "IPPROTO_MPTCP", value: 262)
!60 = !DIEnumerator(name: "IPPROTO_MAX", value: 263)
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 397, baseType: !7, size: 32, elements: !62)
!62 = !{!63, !64, !65, !66}
!63 = !DIEnumerator(name: "BPF_ANY", value: 0)
!64 = !DIEnumerator(name: "BPF_NOEXIST", value: 1)
!65 = !DIEnumerator(name: "BPF_EXIST", value: 2)
!66 = !DIEnumerator(name: "BPF_F_LOCK", value: 4)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pping_map", file: !15, line: 41, baseType: !16, size: 8, elements: !68)
!68 = !{!69, !70}
!69 = !DIEnumerator(name: "PPING_MAP_FLOWSTATE", value: 0)
!70 = !DIEnumerator(name: "PPING_MAP_PACKETTS", value: 1)
!71 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 4063, baseType: !72, size: 64, elements: !73)
!72 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!73 = !{!74, !75, !76}
!74 = !DIEnumerator(name: "BPF_F_INDEX_MASK", value: 4294967295, isUnsigned: true)
!75 = !DIEnumerator(name: "BPF_F_CURRENT_CPU", value: 4294967295, isUnsigned: true)
!76 = !DIEnumerator(name: "BPF_F_CTXLEN_MASK", value: 4503595332403200, isUnsigned: true)
!77 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 4955, baseType: !7, size: 32, elements: !78)
!78 = !{!79, !80, !81, !82, !83, !84, !85, !86, !87}
!79 = !DIEnumerator(name: "BPF_FIB_LKUP_RET_SUCCESS", value: 0)
!80 = !DIEnumerator(name: "BPF_FIB_LKUP_RET_BLACKHOLE", value: 1)
!81 = !DIEnumerator(name: "BPF_FIB_LKUP_RET_UNREACHABLE", value: 2)
!82 = !DIEnumerator(name: "BPF_FIB_LKUP_RET_PROHIBIT", value: 3)
!83 = !DIEnumerator(name: "BPF_FIB_LKUP_RET_NOT_FWDED", value: 4)
!84 = !DIEnumerator(name: "BPF_FIB_LKUP_RET_FWD_DISABLED", value: 5)
!85 = !DIEnumerator(name: "BPF_FIB_LKUP_RET_UNSUPP_LWT", value: 6)
!86 = !DIEnumerator(name: "BPF_FIB_LKUP_RET_NO_NEIGH", value: 7)
!87 = !DIEnumerator(name: "BPF_FIB_LKUP_RET_FRAG_NEEDED", value: 8)
!88 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "flow_event_source", file: !15, line: 35, baseType: !16, size: 8, elements: !89)
!89 = !{!90, !91, !92}
!90 = !DIEnumerator(name: "EVENT_SOURCE_PKT_SRC", value: 0)
!91 = !DIEnumerator(name: "EVENT_SOURCE_PKT_DEST", value: 1)
!92 = !DIEnumerator(name: "EVENT_SOURCE_USERSPACE", value: 2)
!93 = !{!94, !95, !96, !99, !101, !103, !105, !127, !124, !104}
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!95 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !97, line: 24, baseType: !98)
!97 = !DIFile(filename: "/usr/include/asm-generic/int-ll64.h", directory: "", checksumkind: CSK_MD5, checksum: "b810f270733e106319b67ef512c6246e")
!98 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !97, line: 21, baseType: !16)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !97, line: 27, baseType: !7)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !107, line: 33, size: 128, elements: !108)
!107 = !DIFile(filename: "/usr/include/linux/in6.h", directory: "", checksumkind: CSK_MD5, checksum: "fca1889f0274df066e49cf4d8db8011e")
!108 = !{!109}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "in6_u", scope: !106, file: !107, line: 40, baseType: !110, size: 128)
!110 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !106, file: !107, line: 34, size: 128, elements: !111)
!111 = !{!112, !116, !122}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "u6_addr8", scope: !110, file: !107, line: 35, baseType: !113, size: 128)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 128, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 16)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "u6_addr16", scope: !110, file: !107, line: 37, baseType: !117, size: 128)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 128, elements: !120)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be16", file: !119, line: 25, baseType: !96)
!119 = !DIFile(filename: "/usr/include/linux/types.h", directory: "", checksumkind: CSK_MD5, checksum: "52ec79a38e49ac7d1dc9e146ba88a7b1")
!120 = !{!121}
!121 = !DISubrange(count: 8)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "u6_addr32", scope: !110, file: !107, line: 38, baseType: !123, size: 128)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 128, elements: !125)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be32", file: !119, line: 27, baseType: !104)
!125 = !{!126}
!126 = !DISubrange(count: 4)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!128 = !{!0, !129, !166, !190, !199, !205, !219, !226, !231, !237, !242, !280}
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(name: "packet_ts", scope: !2, file: !3, line: 93, type: !131, isLocal: false, isDefinition: true)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 88, size: 256, elements: !132)
!132 = !{!133, !139, !157, !161}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !131, file: !3, line: 89, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 32, elements: !137)
!136 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!137 = !{!138}
!138 = !DISubrange(count: 1)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !131, file: !3, line: 90, baseType: !140, size: 64, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "packet_id", file: !15, line: 96, size: 384, elements: !142)
!142 = !{!143, !156}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "flow", scope: !141, file: !15, line: 97, baseType: !144, size: 352)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "network_tuple", file: !15, line: 74, size: 352, elements: !145)
!145 = !{!146, !152, !153, !154, !155}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "saddr", scope: !144, file: !15, line: 75, baseType: !147, size: 160)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "flow_address", file: !15, line: 61, size: 160, elements: !148)
!148 = !{!149, !150, !151}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !147, file: !15, line: 62, baseType: !106, size: 128)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !147, file: !15, line: 63, baseType: !96, size: 16, offset: 128)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !147, file: !15, line: 64, baseType: !96, size: 16, offset: 144)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "daddr", scope: !144, file: !15, line: 76, baseType: !147, size: 160, offset: 160)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "proto", scope: !144, file: !15, line: 77, baseType: !96, size: 16, offset: 320)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "ipv", scope: !144, file: !15, line: 78, baseType: !102, size: 8, offset: 336)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !144, file: !15, line: 79, baseType: !102, size: 8, offset: 344)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !141, file: !15, line: 98, baseType: !104, size: 32, offset: 352)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !131, file: !3, line: 91, baseType: !158, size: 64, offset: 128)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !97, line: 31, baseType: !160)
!160 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "max_entries", scope: !131, file: !3, line: 92, baseType: !162, size: 64, offset: 192)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 524288, elements: !164)
!164 = !{!165}
!165 = !DISubrange(count: 16384)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(name: "flow_state", scope: !2, file: !3, line: 100, type: !168, isLocal: false, isDefinition: true)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 95, size: 256, elements: !169)
!169 = !{!170, !171, !173, !189}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !168, file: !3, line: 96, baseType: !134, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !168, file: !3, line: 97, baseType: !172, size: 64, offset: 64)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !168, file: !3, line: 98, baseType: !174, size: 64, offset: 128)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "flow_state", file: !15, line: 82, size: 512, elements: !176)
!176 = !{!177, !178, !179, !180, !181, !182, !183, !184, !185, !187, !188}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "min_rtt", scope: !175, file: !15, line: 83, baseType: !159, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "srtt", scope: !175, file: !15, line: 84, baseType: !159, size: 64, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "last_timestamp", scope: !175, file: !15, line: 85, baseType: !159, size: 64, offset: 128)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "sent_pkts", scope: !175, file: !15, line: 86, baseType: !159, size: 64, offset: 192)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "sent_bytes", scope: !175, file: !15, line: 87, baseType: !159, size: 64, offset: 256)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "rec_pkts", scope: !175, file: !15, line: 88, baseType: !159, size: 64, offset: 320)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "rec_bytes", scope: !175, file: !15, line: 89, baseType: !159, size: 64, offset: 384)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "last_id", scope: !175, file: !15, line: 90, baseType: !104, size: 32, offset: 448)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "has_opened", scope: !175, file: !15, line: 91, baseType: !186, size: 8, offset: 480)
!186 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "opening_reason", scope: !175, file: !15, line: 92, baseType: !14, size: 8, offset: 488)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !175, file: !15, line: 93, baseType: !96, size: 16, offset: 496)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "max_entries", scope: !168, file: !3, line: 99, baseType: !162, size: 64, offset: 192)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(name: "events", scope: !2, file: !3, line: 106, type: !192, isLocal: false, isDefinition: true)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 102, size: 192, elements: !193)
!193 = !{!194, !197, !198}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !192, file: !3, line: 103, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 128, elements: !125)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "key_size", scope: !192, file: !3, line: 104, baseType: !195, size: 64, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "value_size", scope: !192, file: !3, line: 105, baseType: !195, size: 64, offset: 128)
!199 = !DIGlobalVariableExpression(var: !200, expr: !DIExpression())
!200 = distinct !DIGlobalVariable(name: "bpf_ktime_get_ns", scope: !2, file: !201, line: 109, type: !202, isLocal: true, isDefinition: true)
!201 = !DIFile(filename: "../lib/libbpf-install/usr/include/bpf/bpf_helper_defs.h", directory: "/home/raj/bpf-examples/pping", checksumkind: CSK_MD5, checksum: "52f02fca464a4053efa2721be82f1a3e")
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DISubroutineType(types: !204)
!204 = !{!159}
!205 = !DIGlobalVariableExpression(var: !206, expr: !DIExpression())
!206 = distinct !DIGlobalVariable(name: "config", scope: !2, file: !3, line: 83, type: !207, isLocal: true, isDefinition: true)
!207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !208)
!208 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !209)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_config", file: !15, line: 46, size: 192, elements: !210)
!210 = !{!211, !212, !214, !215, !216, !217, !218}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "rate_limit", scope: !209, file: !15, line: 47, baseType: !159, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "rtt_rate", scope: !209, file: !15, line: 48, baseType: !213, size: 64, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "fixpoint64", file: !15, line: 9, baseType: !159)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "use_srtt", scope: !209, file: !15, line: 49, baseType: !186, size: 8, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "track_tcp", scope: !209, file: !15, line: 50, baseType: !186, size: 8, offset: 136)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "track_icmp", scope: !209, file: !15, line: 51, baseType: !186, size: 8, offset: 144)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "localfilt", scope: !209, file: !15, line: 52, baseType: !186, size: 8, offset: 152)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !209, file: !15, line: 53, baseType: !104, size: 32, offset: 160)
!219 = !DIGlobalVariableExpression(var: !220, expr: !DIExpression())
!220 = distinct !DIGlobalVariable(name: "bpf_map_lookup_elem", scope: !2, file: !201, line: 51, type: !221, isLocal: true, isDefinition: true)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{!94, !94, !224}
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!226 = !DIGlobalVariableExpression(var: !227, expr: !DIExpression())
!227 = distinct !DIGlobalVariable(name: "bpf_map_update_elem", scope: !2, file: !201, line: 73, type: !228, isLocal: true, isDefinition: true)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DISubroutineType(types: !230)
!230 = !{!95, !94, !224, !224, !159}
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(name: "last_warn_time", scope: !2, file: !3, line: 84, type: !233, isLocal: true, isDefinition: true)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !234, size: 128, elements: !235)
!234 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !159)
!235 = !{!236}
!236 = !DISubrange(count: 2)
!237 = !DIGlobalVariableExpression(var: !238, expr: !DIExpression())
!238 = distinct !DIGlobalVariable(name: "bpf_perf_event_output", scope: !2, file: !201, line: 686, type: !239, isLocal: true, isDefinition: true)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DISubroutineType(types: !241)
!241 = !{!95, !94, !94, !159, !94, !159}
!242 = !DIGlobalVariableExpression(var: !243, expr: !DIExpression())
!243 = distinct !DIGlobalVariable(name: "bpf_fib_lookup", scope: !2, file: !201, line: 1816, type: !244, isLocal: true, isDefinition: true)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{!95, !94, !247, !136, !104}
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_fib_lookup", file: !6, line: 4967, size: 512, elements: !249)
!249 = !{!250, !251, !252, !253, !254, !255, !256, !262, !268, !273, !274, !275, !279}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !248, file: !6, line: 4971, baseType: !102, size: 8)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "l4_protocol", scope: !248, file: !6, line: 4974, baseType: !102, size: 8, offset: 8)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "sport", scope: !248, file: !6, line: 4975, baseType: !118, size: 16, offset: 16)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "dport", scope: !248, file: !6, line: 4976, baseType: !118, size: 16, offset: 32)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "tot_len", scope: !248, file: !6, line: 4979, baseType: !96, size: 16, offset: 48)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "ifindex", scope: !248, file: !6, line: 4984, baseType: !104, size: 32, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, scope: !248, file: !6, line: 4986, baseType: !257, size: 32, offset: 96)
!257 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !248, file: !6, line: 4986, size: 32, elements: !258)
!258 = !{!259, !260, !261}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "tos", scope: !257, file: !6, line: 4988, baseType: !102, size: 8)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "flowinfo", scope: !257, file: !6, line: 4989, baseType: !124, size: 32)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "rt_metric", scope: !257, file: !6, line: 4992, baseType: !104, size: 32)
!262 = !DIDerivedType(tag: DW_TAG_member, scope: !248, file: !6, line: 4995, baseType: !263, size: 128, offset: 128)
!263 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !248, file: !6, line: 4995, size: 128, elements: !264)
!264 = !{!265, !266}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "ipv4_src", scope: !263, file: !6, line: 4996, baseType: !124, size: 32)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "ipv6_src", scope: !263, file: !6, line: 4997, baseType: !267, size: 128)
!267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 128, elements: !125)
!268 = !DIDerivedType(tag: DW_TAG_member, scope: !248, file: !6, line: 5004, baseType: !269, size: 128, offset: 256)
!269 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !248, file: !6, line: 5004, size: 128, elements: !270)
!270 = !{!271, !272}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "ipv4_dst", scope: !269, file: !6, line: 5005, baseType: !124, size: 32)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "ipv6_dst", scope: !269, file: !6, line: 5006, baseType: !267, size: 128)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "h_vlan_proto", scope: !248, file: !6, line: 5010, baseType: !118, size: 16, offset: 384)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "h_vlan_TCI", scope: !248, file: !6, line: 5011, baseType: !118, size: 16, offset: 400)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "smac", scope: !248, file: !6, line: 5012, baseType: !276, size: 48, offset: 416)
!276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 48, elements: !277)
!277 = !{!278}
!278 = !DISubrange(count: 6)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "dmac", scope: !248, file: !6, line: 5013, baseType: !276, size: 48, offset: 464)
!280 = !DIGlobalVariableExpression(var: !281, expr: !DIExpression())
!281 = distinct !DIGlobalVariable(name: "bpf_map_delete_elem", scope: !2, file: !201, line: 83, type: !282, isLocal: true, isDefinition: true)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DISubroutineType(types: !284)
!284 = !{!95, !94, !224}
!285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 32, elements: !125)
!286 = !{i32 7, !"Dwarf Version", i32 5}
!287 = !{i32 2, !"Debug Info Version", i32 3}
!288 = !{i32 1, !"wchar_size", i32 4}
!289 = !{i32 7, !"frame-pointer", i32 2}
!290 = !{!"clang version 16.0.0"}
!291 = distinct !DISubprogram(name: "pping_tc_egress", scope: !3, file: !3, line: 714, type: !292, scopeLine: 715, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !384)
!292 = !DISubroutineType(types: !293)
!293 = !{!136, !294}
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sk_buff", file: !6, line: 4183, size: 1472, elements: !296)
!296 = !{!297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !358, !359, !360, !361, !383}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !295, file: !6, line: 4184, baseType: !104, size: 32)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "pkt_type", scope: !295, file: !6, line: 4185, baseType: !104, size: 32, offset: 32)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "mark", scope: !295, file: !6, line: 4186, baseType: !104, size: 32, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "queue_mapping", scope: !295, file: !6, line: 4187, baseType: !104, size: 32, offset: 96)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !295, file: !6, line: 4188, baseType: !104, size: 32, offset: 128)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_present", scope: !295, file: !6, line: 4189, baseType: !104, size: 32, offset: 160)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_tci", scope: !295, file: !6, line: 4190, baseType: !104, size: 32, offset: 192)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_proto", scope: !295, file: !6, line: 4191, baseType: !104, size: 32, offset: 224)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !295, file: !6, line: 4192, baseType: !104, size: 32, offset: 256)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "ingress_ifindex", scope: !295, file: !6, line: 4193, baseType: !104, size: 32, offset: 288)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "ifindex", scope: !295, file: !6, line: 4194, baseType: !104, size: 32, offset: 320)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "tc_index", scope: !295, file: !6, line: 4195, baseType: !104, size: 32, offset: 352)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !295, file: !6, line: 4196, baseType: !310, size: 160, offset: 384)
!310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 160, elements: !311)
!311 = !{!312}
!312 = !DISubrange(count: 5)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !295, file: !6, line: 4197, baseType: !104, size: 32, offset: 544)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "tc_classid", scope: !295, file: !6, line: 4198, baseType: !104, size: 32, offset: 576)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !295, file: !6, line: 4199, baseType: !104, size: 32, offset: 608)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "data_end", scope: !295, file: !6, line: 4200, baseType: !104, size: 32, offset: 640)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "napi_id", scope: !295, file: !6, line: 4201, baseType: !104, size: 32, offset: 672)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !295, file: !6, line: 4204, baseType: !104, size: 32, offset: 704)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "remote_ip4", scope: !295, file: !6, line: 4205, baseType: !104, size: 32, offset: 736)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "local_ip4", scope: !295, file: !6, line: 4206, baseType: !104, size: 32, offset: 768)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "remote_ip6", scope: !295, file: !6, line: 4207, baseType: !267, size: 128, offset: 800)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "local_ip6", scope: !295, file: !6, line: 4208, baseType: !267, size: 128, offset: 928)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "remote_port", scope: !295, file: !6, line: 4209, baseType: !104, size: 32, offset: 1056)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "local_port", scope: !295, file: !6, line: 4210, baseType: !104, size: 32, offset: 1088)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "data_meta", scope: !295, file: !6, line: 4213, baseType: !104, size: 32, offset: 1120)
!326 = !DIDerivedType(tag: DW_TAG_member, scope: !295, file: !6, line: 4214, baseType: !327, size: 64, align: 64, offset: 1152)
!327 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !295, file: !6, line: 4214, size: 64, align: 64, elements: !328)
!328 = !{!329}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "flow_keys", scope: !327, file: !6, line: 4214, baseType: !330, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_flow_keys", file: !6, line: 5041, size: 448, elements: !332)
!332 = !{!333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !356, !357}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "nhoff", scope: !331, file: !6, line: 5042, baseType: !96, size: 16)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "thoff", scope: !331, file: !6, line: 5043, baseType: !96, size: 16, offset: 16)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "addr_proto", scope: !331, file: !6, line: 5044, baseType: !96, size: 16, offset: 32)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "is_frag", scope: !331, file: !6, line: 5045, baseType: !102, size: 8, offset: 48)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "is_first_frag", scope: !331, file: !6, line: 5046, baseType: !102, size: 8, offset: 56)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "is_encap", scope: !331, file: !6, line: 5047, baseType: !102, size: 8, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "ip_proto", scope: !331, file: !6, line: 5048, baseType: !102, size: 8, offset: 72)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "n_proto", scope: !331, file: !6, line: 5049, baseType: !118, size: 16, offset: 80)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "sport", scope: !331, file: !6, line: 5050, baseType: !118, size: 16, offset: 96)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "dport", scope: !331, file: !6, line: 5051, baseType: !118, size: 16, offset: 112)
!343 = !DIDerivedType(tag: DW_TAG_member, scope: !331, file: !6, line: 5052, baseType: !344, size: 256, offset: 128)
!344 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !331, file: !6, line: 5052, size: 256, elements: !345)
!345 = !{!346, !351}
!346 = !DIDerivedType(tag: DW_TAG_member, scope: !344, file: !6, line: 5053, baseType: !347, size: 64)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !344, file: !6, line: 5053, size: 64, elements: !348)
!348 = !{!349, !350}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "ipv4_src", scope: !347, file: !6, line: 5054, baseType: !124, size: 32)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "ipv4_dst", scope: !347, file: !6, line: 5055, baseType: !124, size: 32, offset: 32)
!351 = !DIDerivedType(tag: DW_TAG_member, scope: !344, file: !6, line: 5057, baseType: !352, size: 256)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !344, file: !6, line: 5057, size: 256, elements: !353)
!353 = !{!354, !355}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "ipv6_src", scope: !352, file: !6, line: 5058, baseType: !267, size: 128)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "ipv6_dst", scope: !352, file: !6, line: 5059, baseType: !267, size: 128, offset: 128)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !331, file: !6, line: 5062, baseType: !104, size: 32, offset: 384)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "flow_label", scope: !331, file: !6, line: 5063, baseType: !124, size: 32, offset: 416)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "tstamp", scope: !295, file: !6, line: 4215, baseType: !159, size: 64, offset: 1216)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "wire_len", scope: !295, file: !6, line: 4216, baseType: !104, size: 32, offset: 1280)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "gso_segs", scope: !295, file: !6, line: 4217, baseType: !104, size: 32, offset: 1312)
!361 = !DIDerivedType(tag: DW_TAG_member, scope: !295, file: !6, line: 4218, baseType: !362, size: 64, align: 64, offset: 1344)
!362 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !295, file: !6, line: 4218, size: 64, align: 64, elements: !363)
!363 = !{!364}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "sk", scope: !362, file: !6, line: 4218, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_sock", file: !6, line: 4272, size: 640, elements: !367)
!367 = !{!368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "bound_dev_if", scope: !366, file: !6, line: 4273, baseType: !104, size: 32)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !366, file: !6, line: 4274, baseType: !104, size: 32, offset: 32)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !366, file: !6, line: 4275, baseType: !104, size: 32, offset: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !366, file: !6, line: 4276, baseType: !104, size: 32, offset: 96)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "mark", scope: !366, file: !6, line: 4277, baseType: !104, size: 32, offset: 128)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !366, file: !6, line: 4278, baseType: !104, size: 32, offset: 160)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "src_ip4", scope: !366, file: !6, line: 4280, baseType: !104, size: 32, offset: 192)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "src_ip6", scope: !366, file: !6, line: 4281, baseType: !267, size: 128, offset: 224)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "src_port", scope: !366, file: !6, line: 4282, baseType: !104, size: 32, offset: 352)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "dst_port", scope: !366, file: !6, line: 4283, baseType: !104, size: 32, offset: 384)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "dst_ip4", scope: !366, file: !6, line: 4284, baseType: !104, size: 32, offset: 416)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "dst_ip6", scope: !366, file: !6, line: 4285, baseType: !267, size: 128, offset: 448)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !366, file: !6, line: 4286, baseType: !104, size: 32, offset: 576)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "rx_queue_mapping", scope: !366, file: !6, line: 4287, baseType: !382, size: 32, offset: 608)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !97, line: 26, baseType: !136)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "gso_size", scope: !295, file: !6, line: 4219, baseType: !104, size: 32, offset: 1408)
!384 = !{!385, !386}
!385 = !DILocalVariable(name: "skb", arg: 1, scope: !291, file: !3, line: 714, type: !294)
!386 = !DILocalVariable(name: "pctx", scope: !291, file: !3, line: 716, type: !387)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "parsing_context", file: !3, line: 41, size: 320, elements: !388)
!388 = !{!389, !390, !391, !396, !397, !398}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !387, file: !3, line: 42, baseType: !94, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "data_end", scope: !387, file: !3, line: 43, baseType: !94, size: 64, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "nh", scope: !387, file: !3, line: 44, baseType: !392, size: 64, offset: 128)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdr_cursor", file: !393, line: 35, size: 64, elements: !394)
!393 = !DIFile(filename: "../lib/../include/xdp/parsing_helpers.h", directory: "/home/raj/bpf-examples/pping", checksumkind: CSK_MD5, checksum: "e41ee3c44bb7300a1b081f0ef073eeff")
!394 = !{!395}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !392, file: !393, line: 36, baseType: !94, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "pkt_len", scope: !387, file: !3, line: 45, baseType: !104, size: 32, offset: 192)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "ingress_ifindex", scope: !387, file: !3, line: 46, baseType: !104, size: 32, offset: 224)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "is_egress", scope: !387, file: !3, line: 47, baseType: !186, size: 8, offset: 256)
!399 = !DILocation(line: 0, scope: !291)
!400 = !DILocation(line: 716, column: 2, scope: !291)
!401 = !DILocation(line: 716, column: 25, scope: !291)
!402 = !DILocation(line: 717, column: 30, scope: !291)
!403 = !{!404, !405, i64 76}
!404 = !{!"__sk_buff", !405, i64 0, !405, i64 4, !405, i64 8, !405, i64 12, !405, i64 16, !405, i64 20, !405, i64 24, !405, i64 28, !405, i64 32, !405, i64 36, !405, i64 40, !405, i64 44, !406, i64 48, !405, i64 68, !405, i64 72, !405, i64 76, !405, i64 80, !405, i64 84, !405, i64 88, !405, i64 92, !405, i64 96, !406, i64 100, !406, i64 116, !405, i64 132, !405, i64 136, !405, i64 140, !406, i64 144, !408, i64 152, !405, i64 160, !405, i64 164, !406, i64 168, !405, i64 176}
!405 = !{!"int", !406, i64 0}
!406 = !{!"omnipotent char", !407, i64 0}
!407 = !{!"Simple C/C++ TBAA"}
!408 = !{!"long long", !406, i64 0}
!409 = !DILocation(line: 717, column: 19, scope: !291)
!410 = !DILocation(line: 717, column: 11, scope: !291)
!411 = !DILocation(line: 716, column: 32, scope: !291)
!412 = !{!413, !414, i64 0}
!413 = !{!"parsing_context", !414, i64 0, !414, i64 8, !415, i64 16, !405, i64 24, !405, i64 28, !416, i64 32}
!414 = !{!"any pointer", !406, i64 0}
!415 = !{!"hdr_cursor", !414, i64 0}
!416 = !{!"_Bool", !406, i64 0}
!417 = !DILocation(line: 718, column: 34, scope: !291)
!418 = !{!404, !405, i64 80}
!419 = !DILocation(line: 718, column: 23, scope: !291)
!420 = !DILocation(line: 718, column: 15, scope: !291)
!421 = !{!413, !414, i64 8}
!422 = !DILocation(line: 720, column: 9, scope: !291)
!423 = !{!415, !414, i64 0}
!424 = !DILocation(line: 719, column: 19, scope: !291)
!425 = !{!404, !405, i64 0}
!426 = !{!413, !405, i64 24}
!427 = !{!413, !405, i64 28}
!428 = !{!413, !416, i64 32}
!429 = !DILocation(line: 724, column: 2, scope: !291)
!430 = !DILocation(line: 727, column: 1, scope: !291)
!431 = !DILocation(line: 726, column: 2, scope: !291)
!432 = distinct !DISubprogram(name: "pping", scope: !3, file: !3, line: 691, type: !433, scopeLine: 692, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !436)
!433 = !DISubroutineType(types: !434)
!434 = !{null, !94, !435}
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!436 = !{!437, !438, !439, !596, !597, !598}
!437 = !DILocalVariable(name: "ctx", arg: 1, scope: !432, file: !3, line: 691, type: !94)
!438 = !DILocalVariable(name: "pctx", arg: 2, scope: !432, file: !3, line: 691, type: !435)
!439 = !DILocalVariable(name: "p_info", scope: !432, file: !3, line: 693, type: !440)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "packet_info", file: !3, line: 61, size: 1024, elements: !441)
!441 = !{!442, !500, !588, !589, !590, !591, !592, !593, !594, !595}
!442 = !DIDerivedType(tag: DW_TAG_member, scope: !440, file: !3, line: 62, baseType: !443, size: 64)
!443 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !440, file: !3, line: 62, size: 64, elements: !444)
!444 = !{!445, !473}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "iph", scope: !443, file: !3, line: 63, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iphdr", file: !448, line: 87, size: 160, elements: !449)
!448 = !DIFile(filename: "/usr/include/linux/ip.h", directory: "", checksumkind: CSK_MD5, checksum: "042b09a58768855e3578a0a8eba49be7")
!449 = !{!450, !451, !452, !453, !454, !455, !456, !457, !458, !460}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "ihl", scope: !447, file: !448, line: 89, baseType: !102, size: 4, flags: DIFlagBitField, extraData: i64 0)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !447, file: !448, line: 90, baseType: !102, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "tos", scope: !447, file: !448, line: 97, baseType: !102, size: 8, offset: 8)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "tot_len", scope: !447, file: !448, line: 98, baseType: !118, size: 16, offset: 16)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !447, file: !448, line: 99, baseType: !118, size: 16, offset: 32)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "frag_off", scope: !447, file: !448, line: 100, baseType: !118, size: 16, offset: 48)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "ttl", scope: !447, file: !448, line: 101, baseType: !102, size: 8, offset: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !447, file: !448, line: 102, baseType: !102, size: 8, offset: 72)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !447, file: !448, line: 103, baseType: !459, size: 16, offset: 80)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sum16", file: !119, line: 31, baseType: !96)
!460 = !DIDerivedType(tag: DW_TAG_member, scope: !447, file: !448, line: 104, baseType: !461, size: 64, offset: 96)
!461 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !447, file: !448, line: 104, size: 64, elements: !462)
!462 = !{!463, !468}
!463 = !DIDerivedType(tag: DW_TAG_member, scope: !461, file: !448, line: 104, baseType: !464, size: 64)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !461, file: !448, line: 104, size: 64, elements: !465)
!465 = !{!466, !467}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "saddr", scope: !464, file: !448, line: 104, baseType: !124, size: 32)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "daddr", scope: !464, file: !448, line: 104, baseType: !124, size: 32, offset: 32)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !461, file: !448, line: 104, baseType: !469, size: 64)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !461, file: !448, line: 104, size: 64, elements: !470)
!470 = !{!471, !472}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "saddr", scope: !469, file: !448, line: 104, baseType: !124, size: 32)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "daddr", scope: !469, file: !448, line: 104, baseType: !124, size: 32, offset: 32)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "ip6h", scope: !443, file: !3, line: 64, baseType: !474, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipv6hdr", file: !476, line: 118, size: 320, elements: !477)
!476 = !DIFile(filename: "/usr/include/linux/ipv6.h", directory: "", checksumkind: CSK_MD5, checksum: "9926d49458ea1e0cc4651362e733e03e")
!477 = !{!478, !479, !480, !484, !485, !486, !487}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !475, file: !476, line: 120, baseType: !102, size: 4, flags: DIFlagBitField, extraData: i64 0)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !475, file: !476, line: 121, baseType: !102, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "flow_lbl", scope: !475, file: !476, line: 128, baseType: !481, size: 24, offset: 8)
!481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 24, elements: !482)
!482 = !{!483}
!483 = !DISubrange(count: 3)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "payload_len", scope: !475, file: !476, line: 130, baseType: !118, size: 16, offset: 32)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "nexthdr", scope: !475, file: !476, line: 131, baseType: !102, size: 8, offset: 48)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "hop_limit", scope: !475, file: !476, line: 132, baseType: !102, size: 8, offset: 56)
!487 = !DIDerivedType(tag: DW_TAG_member, scope: !475, file: !476, line: 134, baseType: !488, size: 256, offset: 64)
!488 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !475, file: !476, line: 134, size: 256, elements: !489)
!489 = !{!490, !495}
!490 = !DIDerivedType(tag: DW_TAG_member, scope: !488, file: !476, line: 134, baseType: !491, size: 256)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !488, file: !476, line: 134, size: 256, elements: !492)
!492 = !{!493, !494}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "saddr", scope: !491, file: !476, line: 134, baseType: !106, size: 128)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "daddr", scope: !491, file: !476, line: 134, baseType: !106, size: 128, offset: 128)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !488, file: !476, line: 134, baseType: !496, size: 256)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !488, file: !476, line: 134, size: 256, elements: !497)
!497 = !{!498, !499}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "saddr", scope: !496, file: !476, line: 134, baseType: !106, size: 128)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "daddr", scope: !496, file: !476, line: 134, baseType: !106, size: 128, offset: 128)
!500 = !DIDerivedType(tag: DW_TAG_member, scope: !440, file: !3, line: 66, baseType: !501, size: 64, offset: 64)
!501 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !440, file: !3, line: 66, size: 64, elements: !502)
!502 = !{!503, !527, !566}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "icmph", scope: !501, file: !3, line: 67, baseType: !504, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "icmphdr", file: !506, line: 89, size: 64, elements: !507)
!506 = !DIFile(filename: "/usr/include/linux/icmp.h", directory: "", checksumkind: CSK_MD5, checksum: "a505632898dce546638b3344627d334b")
!507 = !{!508, !509, !510, !511}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !505, file: !506, line: 90, baseType: !102, size: 8)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !505, file: !506, line: 91, baseType: !102, size: 8, offset: 8)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !505, file: !506, line: 92, baseType: !459, size: 16, offset: 16)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "un", scope: !505, file: !506, line: 104, baseType: !512, size: 32, offset: 32)
!512 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !505, file: !506, line: 93, size: 32, elements: !513)
!513 = !{!514, !519, !520, !525}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "echo", scope: !512, file: !506, line: 97, baseType: !515, size: 32)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !512, file: !506, line: 94, size: 32, elements: !516)
!516 = !{!517, !518}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !515, file: !506, line: 95, baseType: !118, size: 16)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !515, file: !506, line: 96, baseType: !118, size: 16, offset: 16)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "gateway", scope: !512, file: !506, line: 98, baseType: !124, size: 32)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "frag", scope: !512, file: !506, line: 102, baseType: !521, size: 32)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !512, file: !506, line: 99, size: 32, elements: !522)
!522 = !{!523, !524}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "__unused", scope: !521, file: !506, line: 100, baseType: !118, size: 16)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !521, file: !506, line: 101, baseType: !118, size: 16, offset: 16)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !512, file: !506, line: 103, baseType: !526, size: 32)
!526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 32, elements: !125)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "icmp6h", scope: !501, file: !3, line: 68, baseType: !528, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "icmp6hdr", file: !530, line: 8, size: 64, elements: !531)
!530 = !DIFile(filename: "/usr/include/linux/icmpv6.h", directory: "", checksumkind: CSK_MD5, checksum: "0310ca5584e6f44f6eea6cf040ee84b9")
!531 = !{!532, !533, !534, !535}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "icmp6_type", scope: !529, file: !530, line: 10, baseType: !102, size: 8)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "icmp6_code", scope: !529, file: !530, line: 11, baseType: !102, size: 8, offset: 8)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "icmp6_cksum", scope: !529, file: !530, line: 12, baseType: !459, size: 16, offset: 16)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "icmp6_dataun", scope: !529, file: !530, line: 63, baseType: !536, size: 32, offset: 32)
!536 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !529, file: !530, line: 15, size: 32, elements: !537)
!537 = !{!538, !540, !542, !543, !548, !556}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "un_data32", scope: !536, file: !530, line: 16, baseType: !539, size: 32)
!539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 32, elements: !137)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "un_data16", scope: !536, file: !530, line: 17, baseType: !541, size: 32)
!541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 32, elements: !235)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "un_data8", scope: !536, file: !530, line: 18, baseType: !526, size: 32)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "u_echo", scope: !536, file: !530, line: 23, baseType: !544, size: 32)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "icmpv6_echo", file: !530, line: 20, size: 32, elements: !545)
!545 = !{!546, !547}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !544, file: !530, line: 21, baseType: !118, size: 16)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !544, file: !530, line: 22, baseType: !118, size: 16, offset: 16)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "u_nd_advt", scope: !536, file: !530, line: 40, baseType: !549, size: 32)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "icmpv6_nd_advt", file: !530, line: 25, size: 32, elements: !550)
!550 = !{!551, !552, !553, !554, !555}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !549, file: !530, line: 27, baseType: !104, size: 5, flags: DIFlagBitField, extraData: i64 0)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "override", scope: !549, file: !530, line: 28, baseType: !104, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "solicited", scope: !549, file: !530, line: 29, baseType: !104, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "router", scope: !549, file: !530, line: 30, baseType: !104, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !549, file: !530, line: 31, baseType: !104, size: 24, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "u_nd_ra", scope: !536, file: !530, line: 61, baseType: !557, size: 32)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "icmpv6_nd_ra", file: !530, line: 42, size: 32, elements: !558)
!558 = !{!559, !560, !561, !562, !563, !564, !565}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "hop_limit", scope: !557, file: !530, line: 43, baseType: !102, size: 8)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !557, file: !530, line: 45, baseType: !102, size: 3, offset: 8, flags: DIFlagBitField, extraData: i64 8)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "router_pref", scope: !557, file: !530, line: 46, baseType: !102, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 8)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "home_agent", scope: !557, file: !530, line: 47, baseType: !102, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 8)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !557, file: !530, line: 48, baseType: !102, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 8)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "managed", scope: !557, file: !530, line: 49, baseType: !102, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 8)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "rt_lifetime", scope: !557, file: !530, line: 60, baseType: !118, size: 16, offset: 16)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "tcph", scope: !501, file: !3, line: 69, baseType: !567, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcphdr", file: !569, line: 25, size: 160, elements: !570)
!569 = !DIFile(filename: "/usr/include/linux/tcp.h", directory: "", checksumkind: CSK_MD5, checksum: "8d74bf2133e7b3dab885994b9916aa13")
!570 = !{!571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !568, file: !569, line: 26, baseType: !118, size: 16)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !568, file: !569, line: 27, baseType: !118, size: 16, offset: 16)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !568, file: !569, line: 28, baseType: !124, size: 32, offset: 32)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "ack_seq", scope: !568, file: !569, line: 29, baseType: !124, size: 32, offset: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "res1", scope: !568, file: !569, line: 31, baseType: !96, size: 4, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "doff", scope: !568, file: !569, line: 32, baseType: !96, size: 4, offset: 100, flags: DIFlagBitField, extraData: i64 96)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "fin", scope: !568, file: !569, line: 33, baseType: !96, size: 1, offset: 104, flags: DIFlagBitField, extraData: i64 96)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "syn", scope: !568, file: !569, line: 34, baseType: !96, size: 1, offset: 105, flags: DIFlagBitField, extraData: i64 96)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "rst", scope: !568, file: !569, line: 35, baseType: !96, size: 1, offset: 106, flags: DIFlagBitField, extraData: i64 96)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "psh", scope: !568, file: !569, line: 36, baseType: !96, size: 1, offset: 107, flags: DIFlagBitField, extraData: i64 96)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "ack", scope: !568, file: !569, line: 37, baseType: !96, size: 1, offset: 108, flags: DIFlagBitField, extraData: i64 96)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "urg", scope: !568, file: !569, line: 38, baseType: !96, size: 1, offset: 109, flags: DIFlagBitField, extraData: i64 96)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "ece", scope: !568, file: !569, line: 39, baseType: !96, size: 1, offset: 110, flags: DIFlagBitField, extraData: i64 96)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "cwr", scope: !568, file: !569, line: 40, baseType: !96, size: 1, offset: 111, flags: DIFlagBitField, extraData: i64 96)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !568, file: !569, line: 55, baseType: !118, size: 16, offset: 112)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !568, file: !569, line: 56, baseType: !459, size: 16, offset: 128)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "urg_ptr", scope: !568, file: !569, line: 57, baseType: !118, size: 16, offset: 144)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !440, file: !3, line: 71, baseType: !159, size: 64, offset: 128)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !440, file: !3, line: 72, baseType: !104, size: 32, offset: 192)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !440, file: !3, line: 73, baseType: !141, size: 384, offset: 224)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "reply_pid", scope: !440, file: !3, line: 74, baseType: !141, size: 384, offset: 608)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "pid_valid", scope: !440, file: !3, line: 75, baseType: !186, size: 8, offset: 992)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "reply_pid_valid", scope: !440, file: !3, line: 76, baseType: !186, size: 8, offset: 1000)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "event_type", scope: !440, file: !3, line: 77, baseType: !24, size: 8, offset: 1008)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "event_reason", scope: !440, file: !3, line: 78, baseType: !14, size: 8, offset: 1016)
!596 = !DILocalVariable(name: "flow", scope: !432, file: !3, line: 694, type: !174)
!597 = !DILocalVariable(name: "rev_flow", scope: !432, file: !3, line: 694, type: !174)
!598 = !DILocalVariable(name: "new_flow", scope: !432, file: !3, line: 695, type: !186)
!599 = !DILocation(line: 0, scope: !432)
!600 = !DILocation(line: 693, column: 2, scope: !432)
!601 = !DILocation(line: 693, column: 21, scope: !432)
!602 = !DILocalVariable(name: "pctx", arg: 1, scope: !603, file: !3, line: 317, type: !435)
!603 = distinct !DISubprogram(name: "parse_packet_identifier", scope: !3, file: !3, line: 317, type: !604, scopeLine: 319, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !607)
!604 = !DISubroutineType(types: !605)
!605 = !{!136, !435, !606}
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!607 = !{!602, !608, !609, !610, !611}
!608 = !DILocalVariable(name: "p_info", arg: 2, scope: !603, file: !3, line: 318, type: !606)
!609 = !DILocalVariable(name: "proto", scope: !603, file: !3, line: 320, type: !136)
!610 = !DILocalVariable(name: "err", scope: !603, file: !3, line: 320, type: !136)
!611 = !DILocalVariable(name: "eth", scope: !603, file: !3, line: 321, type: !612)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ethhdr", file: !614, line: 168, size: 112, elements: !615)
!614 = !DIFile(filename: "/usr/include/linux/if_ether.h", directory: "", checksumkind: CSK_MD5, checksum: "ab0320da726e75d904811ce344979934")
!615 = !{!616, !618, !619}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "h_dest", scope: !613, file: !614, line: 169, baseType: !617, size: 48)
!617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 48, elements: !277)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "h_source", scope: !613, file: !614, line: 170, baseType: !617, size: 48, offset: 48)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "h_proto", scope: !613, file: !614, line: 171, baseType: !118, size: 16, offset: 96)
!620 = !DILocation(line: 0, scope: !603, inlinedAt: !621)
!621 = distinct !DILocation(line: 697, column: 7, scope: !622)
!622 = distinct !DILexicalBlock(scope: !432, file: !3, line: 697, column: 7)
!623 = !DILocation(line: 323, column: 17, scope: !603, inlinedAt: !621)
!624 = !DILocation(line: 323, column: 10, scope: !603, inlinedAt: !621)
!625 = !DILocation(line: 323, column: 15, scope: !603, inlinedAt: !621)
!626 = !{!627, !408, i64 16}
!627 = !{!"packet_info", !406, i64 0, !406, i64 8, !408, i64 16, !405, i64 24, !628, i64 28, !628, i64 76, !416, i64 124, !416, i64 125, !406, i64 126, !406, i64 127}
!628 = !{!"packet_id", !629, i64 0, !405, i64 44}
!629 = !{!"network_tuple", !630, i64 0, !630, i64 20, !632, i64 40, !406, i64 42, !406, i64 43}
!630 = !{!"flow_address", !631, i64 0, !632, i64 16, !632, i64 18}
!631 = !{!"in6_addr", !406, i64 0}
!632 = !{!"short", !406, i64 0}
!633 = !DILocation(line: 324, column: 30, scope: !603, inlinedAt: !621)
!634 = !DILocation(line: 324, column: 40, scope: !603, inlinedAt: !621)
!635 = !DILocalVariable(name: "nh", arg: 1, scope: !636, file: !393, line: 131, type: !639)
!636 = distinct !DISubprogram(name: "parse_ethhdr", scope: !393, file: !393, line: 131, type: !637, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !641)
!637 = !DISubroutineType(types: !638)
!638 = !{!136, !639, !94, !640}
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!641 = !{!635, !642, !643}
!642 = !DILocalVariable(name: "data_end", arg: 2, scope: !636, file: !393, line: 132, type: !94)
!643 = !DILocalVariable(name: "ethhdr", arg: 3, scope: !636, file: !393, line: 133, type: !640)
!644 = !DILocation(line: 0, scope: !636, inlinedAt: !645)
!645 = distinct !DILocation(line: 324, column: 10, scope: !603, inlinedAt: !621)
!646 = !DILocalVariable(name: "nh", arg: 1, scope: !647, file: !393, line: 86, type: !639)
!647 = distinct !DISubprogram(name: "parse_ethhdr_vlan", scope: !393, file: !393, line: 86, type: !648, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !655)
!648 = !DISubroutineType(types: !649)
!649 = !{!136, !639, !94, !640, !650}
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "collect_vlans", file: !393, line: 71, size: 32, elements: !652)
!652 = !{!653}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !651, file: !393, line: 72, baseType: !654, size: 32)
!654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 32, elements: !235)
!655 = !{!646, !656, !657, !658, !659, !660, !661, !667, !668}
!656 = !DILocalVariable(name: "data_end", arg: 2, scope: !647, file: !393, line: 87, type: !94)
!657 = !DILocalVariable(name: "ethhdr", arg: 3, scope: !647, file: !393, line: 88, type: !640)
!658 = !DILocalVariable(name: "vlans", arg: 4, scope: !647, file: !393, line: 89, type: !650)
!659 = !DILocalVariable(name: "eth", scope: !647, file: !393, line: 91, type: !612)
!660 = !DILocalVariable(name: "hdrsize", scope: !647, file: !393, line: 92, type: !136)
!661 = !DILocalVariable(name: "vlh", scope: !647, file: !393, line: 93, type: !662)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vlan_hdr", file: !393, line: 44, size: 32, elements: !664)
!664 = !{!665, !666}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "h_vlan_TCI", scope: !663, file: !393, line: 45, baseType: !118, size: 16)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "h_vlan_encapsulated_proto", scope: !663, file: !393, line: 46, baseType: !118, size: 16, offset: 16)
!667 = !DILocalVariable(name: "h_proto", scope: !647, file: !393, line: 94, type: !96)
!668 = !DILocalVariable(name: "i", scope: !647, file: !393, line: 95, type: !136)
!669 = !DILocation(line: 0, scope: !647, inlinedAt: !670)
!670 = distinct !DILocation(line: 136, column: 9, scope: !636, inlinedAt: !645)
!671 = !DILocation(line: 91, column: 27, scope: !647, inlinedAt: !670)
!672 = !DILocation(line: 100, column: 14, scope: !673, inlinedAt: !670)
!673 = distinct !DILexicalBlock(scope: !647, file: !393, line: 100, column: 6)
!674 = !DILocation(line: 100, column: 24, scope: !673, inlinedAt: !670)
!675 = !DILocation(line: 100, column: 6, scope: !647, inlinedAt: !670)
!676 = !DILocation(line: 106, column: 17, scope: !647, inlinedAt: !670)
!677 = !{!632, !632, i64 0}
!678 = !DILocalVariable(name: "h_proto", arg: 1, scope: !679, file: !393, line: 75, type: !96)
!679 = distinct !DISubprogram(name: "proto_is_vlan", scope: !393, file: !393, line: 75, type: !680, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !682)
!680 = !DISubroutineType(types: !681)
!681 = !{!136, !96}
!682 = !{!678}
!683 = !DILocation(line: 0, scope: !679, inlinedAt: !684)
!684 = distinct !DILocation(line: 113, column: 8, scope: !685, inlinedAt: !670)
!685 = distinct !DILexicalBlock(scope: !686, file: !393, line: 113, column: 7)
!686 = distinct !DILexicalBlock(scope: !687, file: !393, line: 112, column: 39)
!687 = distinct !DILexicalBlock(scope: !688, file: !393, line: 112, column: 2)
!688 = distinct !DILexicalBlock(scope: !647, file: !393, line: 112, column: 2)
!689 = !DILocation(line: 77, column: 20, scope: !679, inlinedAt: !684)
!690 = !DILocation(line: 77, column: 46, scope: !679, inlinedAt: !684)
!691 = !DILocation(line: 113, column: 7, scope: !686, inlinedAt: !670)
!692 = !DILocation(line: 119, column: 18, scope: !686, inlinedAt: !670)
!693 = !DILocation(line: 127, column: 10, scope: !647, inlinedAt: !670)
!694 = !DILocation(line: 327, column: 6, scope: !603, inlinedAt: !621)
!695 = !DILocation(line: 328, column: 20, scope: !696, inlinedAt: !621)
!696 = distinct !DILexicalBlock(scope: !697, file: !3, line: 327, column: 36)
!697 = distinct !DILexicalBlock(scope: !603, file: !3, line: 327, column: 6)
!698 = !DILocation(line: 328, column: 24, scope: !696, inlinedAt: !621)
!699 = !{!627, !406, i64 70}
!700 = !DILocalVariable(name: "nh", arg: 1, scope: !701, file: !393, line: 196, type: !639)
!701 = distinct !DISubprogram(name: "parse_iphdr", scope: !393, file: !393, line: 196, type: !702, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !705)
!702 = !DISubroutineType(types: !703)
!703 = !{!136, !639, !94, !704}
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!705 = !{!700, !706, !707, !708, !709}
!706 = !DILocalVariable(name: "data_end", arg: 2, scope: !701, file: !393, line: 197, type: !94)
!707 = !DILocalVariable(name: "iphdr", arg: 3, scope: !701, file: !393, line: 198, type: !704)
!708 = !DILocalVariable(name: "iph", scope: !701, file: !393, line: 200, type: !446)
!709 = !DILocalVariable(name: "hdrsize", scope: !701, file: !393, line: 201, type: !136)
!710 = !DILocation(line: 0, scope: !701, inlinedAt: !711)
!711 = distinct !DILocation(line: 330, column: 4, scope: !696, inlinedAt: !621)
!712 = !DILocation(line: 203, column: 10, scope: !713, inlinedAt: !711)
!713 = distinct !DILexicalBlock(scope: !701, file: !393, line: 203, column: 6)
!714 = !DILocation(line: 203, column: 14, scope: !713, inlinedAt: !711)
!715 = !DILocation(line: 203, column: 6, scope: !701, inlinedAt: !711)
!716 = !DILocation(line: 206, column: 11, scope: !717, inlinedAt: !711)
!717 = distinct !DILexicalBlock(scope: !701, file: !393, line: 206, column: 6)
!718 = !DILocation(line: 206, column: 19, scope: !717, inlinedAt: !711)
!719 = !DILocation(line: 206, column: 6, scope: !701, inlinedAt: !711)
!720 = !DILocation(line: 209, column: 21, scope: !701, inlinedAt: !711)
!721 = !DILocation(line: 211, column: 13, scope: !722, inlinedAt: !711)
!722 = distinct !DILexicalBlock(scope: !701, file: !393, line: 211, column: 5)
!723 = !DILocation(line: 211, column: 5, scope: !701, inlinedAt: !711)
!724 = !DILocation(line: 215, column: 14, scope: !725, inlinedAt: !711)
!725 = distinct !DILexicalBlock(scope: !701, file: !393, line: 215, column: 6)
!726 = !DILocation(line: 215, column: 24, scope: !725, inlinedAt: !711)
!727 = !DILocation(line: 215, column: 6, scope: !701, inlinedAt: !711)
!728 = !DILocation(line: 218, column: 10, scope: !701, inlinedAt: !711)
!729 = !DILocation(line: 219, column: 9, scope: !701, inlinedAt: !711)
!730 = !{!414, !414, i64 0}
!731 = !DILocation(line: 221, column: 14, scope: !701, inlinedAt: !711)
!732 = !{!733, !406, i64 9}
!733 = !{!"iphdr", !406, i64 0, !406, i64 0, !406, i64 1, !632, i64 2, !632, i64 4, !632, i64 6, !406, i64 8, !406, i64 9, !632, i64 10, !406, i64 12}
!734 = !DILocation(line: 221, column: 2, scope: !701, inlinedAt: !711)
!735 = !DILocation(line: 332, column: 20, scope: !736, inlinedAt: !621)
!736 = distinct !DILexicalBlock(scope: !737, file: !3, line: 331, column: 45)
!737 = distinct !DILexicalBlock(scope: !697, file: !3, line: 331, column: 13)
!738 = !DILocation(line: 332, column: 24, scope: !736, inlinedAt: !621)
!739 = !DILocalVariable(name: "nh", arg: 1, scope: !740, file: !393, line: 174, type: !639)
!740 = distinct !DISubprogram(name: "parse_ip6hdr", scope: !393, file: !393, line: 174, type: !741, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !744)
!741 = !DISubroutineType(types: !742)
!742 = !{!136, !639, !94, !743}
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!744 = !{!739, !745, !746, !747}
!745 = !DILocalVariable(name: "data_end", arg: 2, scope: !740, file: !393, line: 175, type: !94)
!746 = !DILocalVariable(name: "ip6hdr", arg: 3, scope: !740, file: !393, line: 176, type: !743)
!747 = !DILocalVariable(name: "ip6h", scope: !740, file: !393, line: 178, type: !474)
!748 = !DILocation(line: 0, scope: !740, inlinedAt: !749)
!749 = distinct !DILocation(line: 334, column: 4, scope: !736, inlinedAt: !621)
!750 = !DILocation(line: 184, column: 11, scope: !751, inlinedAt: !749)
!751 = distinct !DILexicalBlock(scope: !740, file: !393, line: 184, column: 6)
!752 = !DILocation(line: 184, column: 15, scope: !751, inlinedAt: !749)
!753 = !DILocation(line: 184, column: 6, scope: !740, inlinedAt: !749)
!754 = !DILocation(line: 187, column: 12, scope: !755, inlinedAt: !749)
!755 = distinct !DILexicalBlock(scope: !740, file: !393, line: 187, column: 6)
!756 = !DILocation(line: 187, column: 20, scope: !755, inlinedAt: !749)
!757 = !DILocation(line: 187, column: 6, scope: !740, inlinedAt: !749)
!758 = !DILocation(line: 190, column: 10, scope: !740, inlinedAt: !749)
!759 = !DILocation(line: 191, column: 10, scope: !740, inlinedAt: !749)
!760 = !DILocalVariable(name: "nh", arg: 1, scope: !761, file: !393, line: 139, type: !639)
!761 = distinct !DISubprogram(name: "skip_ip6hdrext", scope: !393, file: !393, line: 139, type: !762, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !764)
!762 = !DISubroutineType(types: !763)
!763 = !{!136, !639, !94, !102}
!764 = !{!760, !765, !766, !767, !769}
!765 = !DILocalVariable(name: "data_end", arg: 2, scope: !761, file: !393, line: 140, type: !94)
!766 = !DILocalVariable(name: "next_hdr_type", arg: 3, scope: !761, file: !393, line: 141, type: !102)
!767 = !DILocalVariable(name: "i", scope: !768, file: !393, line: 143, type: !136)
!768 = distinct !DILexicalBlock(scope: !761, file: !393, line: 143, column: 2)
!769 = !DILocalVariable(name: "hdr", scope: !770, file: !393, line: 144, type: !772)
!770 = distinct !DILexicalBlock(scope: !771, file: !393, line: 143, column: 47)
!771 = distinct !DILexicalBlock(scope: !768, file: !393, line: 143, column: 2)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipv6_opt_hdr", file: !476, line: 63, size: 16, elements: !774)
!774 = !{!775, !776}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "nexthdr", scope: !773, file: !476, line: 64, baseType: !102, size: 8)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "hdrlen", scope: !773, file: !476, line: 65, baseType: !102, size: 8, offset: 8)
!777 = !DILocation(line: 0, scope: !761, inlinedAt: !778)
!778 = distinct !DILocation(line: 193, column: 9, scope: !740, inlinedAt: !749)
!779 = !DILocation(line: 0, scope: !768, inlinedAt: !778)
!780 = !DILocation(line: 0, scope: !770, inlinedAt: !778)
!781 = !DILocation(line: 146, column: 11, scope: !782, inlinedAt: !778)
!782 = distinct !DILexicalBlock(scope: !770, file: !393, line: 146, column: 7)
!783 = !DILocation(line: 146, column: 15, scope: !782, inlinedAt: !778)
!784 = !DILocation(line: 146, column: 7, scope: !770, inlinedAt: !778)
!785 = !DILocation(line: 193, column: 44, scope: !740, inlinedAt: !749)
!786 = !{!787, !406, i64 6}
!787 = !{!"ipv6hdr", !406, i64 0, !406, i64 0, !406, i64 1, !632, i64 4, !406, i64 6, !406, i64 7, !406, i64 8}
!788 = !DILocation(line: 149, column: 3, scope: !770, inlinedAt: !778)
!789 = !DILocation(line: 160, column: 4, scope: !790, inlinedAt: !778)
!790 = distinct !DILexicalBlock(scope: !770, file: !393, line: 149, column: 26)
!791 = !DILocation(line: 0, scope: !790, inlinedAt: !778)
!792 = !{!793, !406, i64 1}
!793 = !{!"ipv6_opt_hdr", !406, i64 0, !406, i64 1}
!794 = !{!793, !406, i64 0}
!795 = !DILocation(line: 156, column: 4, scope: !790, inlinedAt: !778)
!796 = !DILocation(line: 340, column: 13, scope: !797, inlinedAt: !621)
!797 = distinct !DILexicalBlock(scope: !603, file: !3, line: 340, column: 6)
!798 = !{!799, !416, i64 17}
!799 = !{!"bpf_config", !408, i64 0, !408, i64 8, !416, i64 16, !416, i64 17, !416, i64 18, !416, i64 19, !405, i64 20}
!800 = !{i8 0, i8 2}
!801 = !{}
!802 = !DILocation(line: 342, column: 18, scope: !803, inlinedAt: !621)
!803 = distinct !DILexicalBlock(scope: !797, file: !3, line: 342, column: 11)
!804 = !{!799, !416, i64 18}
!805 = !DILocation(line: 346, column: 18, scope: !806, inlinedAt: !621)
!806 = distinct !DILexicalBlock(scope: !803, file: !3, line: 346, column: 11)
!807 = !DILocation(line: 346, column: 29, scope: !806, inlinedAt: !621)
!808 = !DILocation(line: 0, scope: !697, inlinedAt: !621)
!809 = !{!627, !632, i64 68}
!810 = !DILocation(line: 340, column: 23, scope: !797, inlinedAt: !621)
!811 = !DILocalVariable(name: "pctx", arg: 1, scope: !812, file: !3, line: 197, type: !435)
!812 = distinct !DISubprogram(name: "parse_tcp_identifier", scope: !3, file: !3, line: 197, type: !604, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !813)
!813 = !{!811, !814}
!814 = !DILocalVariable(name: "p_info", arg: 2, scope: !812, file: !3, line: 198, type: !606)
!815 = !DILocation(line: 0, scope: !812, inlinedAt: !816)
!816 = distinct !DILocation(line: 341, column: 9, scope: !797, inlinedAt: !621)
!817 = !DILocation(line: 200, column: 55, scope: !818, inlinedAt: !816)
!818 = distinct !DILexicalBlock(scope: !812, file: !3, line: 200, column: 6)
!819 = !DILocalVariable(name: "nh", arg: 1, scope: !820, file: !393, line: 295, type: !639)
!820 = distinct !DISubprogram(name: "parse_tcphdr", scope: !393, file: !393, line: 295, type: !821, scopeLine: 298, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !824)
!821 = !DISubroutineType(types: !822)
!822 = !{!136, !639, !94, !823}
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!824 = !{!819, !825, !826, !827, !828}
!825 = !DILocalVariable(name: "data_end", arg: 2, scope: !820, file: !393, line: 296, type: !94)
!826 = !DILocalVariable(name: "tcphdr", arg: 3, scope: !820, file: !393, line: 297, type: !823)
!827 = !DILocalVariable(name: "len", scope: !820, file: !393, line: 299, type: !136)
!828 = !DILocalVariable(name: "h", scope: !820, file: !393, line: 300, type: !567)
!829 = !DILocation(line: 0, scope: !820, inlinedAt: !830)
!830 = distinct !DILocation(line: 200, column: 6, scope: !818, inlinedAt: !816)
!831 = !DILocation(line: 302, column: 8, scope: !832, inlinedAt: !830)
!832 = distinct !DILexicalBlock(scope: !820, file: !393, line: 302, column: 6)
!833 = !DILocation(line: 302, column: 12, scope: !832, inlinedAt: !830)
!834 = !DILocation(line: 302, column: 6, scope: !820, inlinedAt: !830)
!835 = !DILocation(line: 305, column: 11, scope: !820, inlinedAt: !830)
!836 = !DILocation(line: 305, column: 16, scope: !820, inlinedAt: !830)
!837 = !DILocation(line: 307, column: 9, scope: !838, inlinedAt: !830)
!838 = distinct !DILexicalBlock(scope: !820, file: !393, line: 307, column: 5)
!839 = !DILocation(line: 307, column: 5, scope: !820, inlinedAt: !830)
!840 = !DILocation(line: 311, column: 14, scope: !841, inlinedAt: !830)
!841 = distinct !DILexicalBlock(scope: !820, file: !393, line: 311, column: 6)
!842 = !DILocation(line: 311, column: 20, scope: !841, inlinedAt: !830)
!843 = !DILocation(line: 311, column: 6, scope: !820, inlinedAt: !830)
!844 = !DILocation(line: 314, column: 10, scope: !820, inlinedAt: !830)
!845 = !DILocation(line: 315, column: 10, scope: !820, inlinedAt: !830)
!846 = !DILocation(line: 203, column: 62, scope: !847, inlinedAt: !816)
!847 = distinct !DILexicalBlock(scope: !812, file: !3, line: 203, column: 6)
!848 = !DILocation(line: 204, column: 24, scope: !847, inlinedAt: !816)
!849 = !DILocalVariable(name: "tcph", arg: 1, scope: !850, file: !3, line: 137, type: !567)
!850 = distinct !DISubprogram(name: "parse_tcp_ts", scope: !3, file: !3, line: 137, type: !851, scopeLine: 139, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !853)
!851 = !DISubroutineType(types: !852)
!852 = !{!136, !567, !94, !103, !103}
!853 = !{!849, !854, !855, !856, !857, !858, !859, !860, !861, !862}
!854 = !DILocalVariable(name: "data_end", arg: 2, scope: !850, file: !3, line: 137, type: !94)
!855 = !DILocalVariable(name: "tsval", arg: 3, scope: !850, file: !3, line: 137, type: !103)
!856 = !DILocalVariable(name: "tsecr", arg: 4, scope: !850, file: !3, line: 138, type: !103)
!857 = !DILocalVariable(name: "len", scope: !850, file: !3, line: 140, type: !136)
!858 = !DILocalVariable(name: "opt_end", scope: !850, file: !3, line: 141, type: !94)
!859 = !DILocalVariable(name: "pos", scope: !850, file: !3, line: 142, type: !101)
!860 = !DILocalVariable(name: "i", scope: !850, file: !3, line: 143, type: !102)
!861 = !DILocalVariable(name: "opt", scope: !850, file: !3, line: 143, type: !102)
!862 = !DILocalVariable(name: "opt_size", scope: !850, file: !3, line: 145, type: !863)
!863 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !102)
!864 = !DILocation(line: 0, scope: !850, inlinedAt: !865)
!865 = distinct !DILocation(line: 203, column: 6, scope: !847, inlinedAt: !816)
!866 = !DILocation(line: 140, column: 18, scope: !850, inlinedAt: !865)
!867 = !DILocation(line: 140, column: 23, scope: !850, inlinedAt: !865)
!868 = !DILocation(line: 141, column: 31, scope: !850, inlinedAt: !865)
!869 = !DILocation(line: 144, column: 2, scope: !850, inlinedAt: !865)
!870 = !DILocation(line: 145, column: 3, scope: !850, inlinedAt: !865)
!871 = !DILocation(line: 147, column: 26, scope: !872, inlinedAt: !865)
!872 = distinct !DILexicalBlock(scope: !850, file: !3, line: 147, column: 6)
!873 = !DILocation(line: 151, column: 11, scope: !874, inlinedAt: !865)
!874 = distinct !DILexicalBlock(scope: !875, file: !3, line: 151, column: 7)
!875 = distinct !DILexicalBlock(scope: !876, file: !3, line: 150, column: 40)
!876 = distinct !DILexicalBlock(scope: !877, file: !3, line: 150, column: 2)
!877 = distinct !DILexicalBlock(scope: !850, file: !3, line: 150, column: 2)
!878 = !DILocation(line: 151, column: 15, scope: !874, inlinedAt: !865)
!879 = !DILocation(line: 151, column: 25, scope: !874, inlinedAt: !865)
!880 = !DILocation(line: 154, column: 9, scope: !875, inlinedAt: !865)
!881 = !{!406, !406, i64 0}
!882 = !DILocation(line: 155, column: 7, scope: !875, inlinedAt: !865)
!883 = !DILocation(line: 164, column: 11, scope: !884, inlinedAt: !865)
!884 = distinct !DILexicalBlock(scope: !875, file: !3, line: 164, column: 7)
!885 = !DILocation(line: 164, column: 15, scope: !884, inlinedAt: !865)
!886 = !DILocation(line: 164, column: 25, scope: !884, inlinedAt: !865)
!887 = !DILocation(line: 166, column: 14, scope: !875, inlinedAt: !865)
!888 = !DILocation(line: 166, column: 12, scope: !875, inlinedAt: !865)
!889 = !DILocation(line: 167, column: 7, scope: !890, inlinedAt: !865)
!890 = distinct !DILexicalBlock(scope: !875, file: !3, line: 167, column: 7)
!891 = !DILocation(line: 167, column: 16, scope: !890, inlinedAt: !865)
!892 = !DILocation(line: 167, column: 7, scope: !875, inlinedAt: !865)
!893 = !DILocation(line: 171, column: 11, scope: !894, inlinedAt: !865)
!894 = distinct !DILexicalBlock(scope: !875, file: !3, line: 171, column: 7)
!895 = !DILocation(line: 171, column: 16, scope: !894, inlinedAt: !865)
!896 = !DILocation(line: 171, column: 19, scope: !894, inlinedAt: !865)
!897 = !DILocation(line: 171, column: 28, scope: !894, inlinedAt: !865)
!898 = !DILocation(line: 171, column: 7, scope: !875, inlinedAt: !865)
!899 = !DILocation(line: 172, column: 12, scope: !900, inlinedAt: !865)
!900 = distinct !DILexicalBlock(scope: !901, file: !3, line: 172, column: 8)
!901 = distinct !DILexicalBlock(scope: !894, file: !3, line: 171, column: 35)
!902 = !DILocation(line: 172, column: 17, scope: !900, inlinedAt: !865)
!903 = !DILocation(line: 172, column: 27, scope: !900, inlinedAt: !865)
!904 = !DILocation(line: 180, column: 10, scope: !875, inlinedAt: !865)
!905 = !DILocation(line: 180, column: 7, scope: !875, inlinedAt: !865)
!906 = !DILocation(line: 181, column: 2, scope: !875, inlinedAt: !865)
!907 = !DILocation(line: 0, scope: !875, inlinedAt: !865)
!908 = !DILocation(line: 183, column: 1, scope: !850, inlinedAt: !865)
!909 = !DILocation(line: 203, column: 6, scope: !812, inlinedAt: !816)
!910 = !DILocation(line: 174, column: 13, scope: !901, inlinedAt: !865)
!911 = !{!405, !405, i64 0}
!912 = !DILocation(line: 174, column: 11, scope: !901, inlinedAt: !865)
!913 = !DILocation(line: 175, column: 28, scope: !901, inlinedAt: !865)
!914 = !DILocation(line: 175, column: 13, scope: !901, inlinedAt: !865)
!915 = !DILocation(line: 175, column: 11, scope: !901, inlinedAt: !865)
!916 = !DILocation(line: 207, column: 46, scope: !812, inlinedAt: !816)
!917 = !{!918, !632, i64 0}
!918 = !{!"tcphdr", !632, i64 0, !632, i64 2, !405, i64 4, !405, i64 8, !632, i64 12, !632, i64 12, !632, i64 13, !632, i64 13, !632, i64 13, !632, i64 13, !632, i64 13, !632, i64 13, !632, i64 13, !632, i64 13, !632, i64 14, !632, i64 16, !632, i64 18}
!919 = !DILocation(line: 207, column: 25, scope: !812, inlinedAt: !816)
!920 = !DILocation(line: 207, column: 30, scope: !812, inlinedAt: !816)
!921 = !{!627, !632, i64 44}
!922 = !DILocation(line: 208, column: 46, scope: !812, inlinedAt: !816)
!923 = !{!918, !632, i64 2}
!924 = !DILocation(line: 208, column: 25, scope: !812, inlinedAt: !816)
!925 = !DILocation(line: 208, column: 30, scope: !812, inlinedAt: !816)
!926 = !{!627, !632, i64 64}
!927 = !DILocation(line: 212, column: 24, scope: !812, inlinedAt: !816)
!928 = !DILocation(line: 212, column: 16, scope: !812, inlinedAt: !816)
!929 = !DILocation(line: 212, column: 37, scope: !812, inlinedAt: !816)
!930 = !DILocation(line: 212, column: 31, scope: !812, inlinedAt: !816)
!931 = !DILocation(line: 212, column: 29, scope: !812, inlinedAt: !816)
!932 = !DILocation(line: 212, column: 45, scope: !812, inlinedAt: !816)
!933 = !DILocation(line: 212, column: 62, scope: !812, inlinedAt: !816)
!934 = !DILocation(line: 211, column: 10, scope: !812, inlinedAt: !816)
!935 = !DILocation(line: 211, column: 20, scope: !812, inlinedAt: !816)
!936 = !{!627, !416, i64 124}
!937 = !DILocation(line: 215, column: 42, scope: !812, inlinedAt: !816)
!938 = !DILocation(line: 215, column: 10, scope: !812, inlinedAt: !816)
!939 = !DILocation(line: 215, column: 26, scope: !812, inlinedAt: !816)
!940 = !{!627, !416, i64 125}
!941 = !DILocation(line: 218, column: 20, scope: !942, inlinedAt: !816)
!942 = distinct !DILexicalBlock(scope: !812, file: !3, line: 218, column: 6)
!943 = !DILocation(line: 218, column: 6, scope: !942, inlinedAt: !816)
!944 = !DILocation(line: 218, column: 6, scope: !812, inlinedAt: !816)
!945 = !DILocation(line: 221, column: 13, scope: !946, inlinedAt: !816)
!946 = distinct !DILexicalBlock(scope: !942, file: !3, line: 221, column: 13)
!947 = !DILocation(line: 221, column: 13, scope: !942, inlinedAt: !816)
!948 = !DILocation(line: 222, column: 11, scope: !949, inlinedAt: !816)
!949 = distinct !DILexicalBlock(scope: !946, file: !3, line: 221, column: 32)
!950 = !DILocation(line: 222, column: 22, scope: !949, inlinedAt: !816)
!951 = !{!627, !406, i64 126}
!952 = !DILocation(line: 223, column: 11, scope: !949, inlinedAt: !816)
!953 = !DILocation(line: 223, column: 24, scope: !949, inlinedAt: !816)
!954 = !{!627, !406, i64 127}
!955 = !DILocation(line: 355, column: 14, scope: !956, inlinedAt: !621)
!956 = distinct !DILexicalBlock(scope: !603, file: !3, line: 355, column: 6)
!957 = !DILocation(line: 355, column: 6, scope: !603, inlinedAt: !621)
!958 = !DILocation(line: 224, column: 13, scope: !959, inlinedAt: !816)
!959 = distinct !DILexicalBlock(scope: !946, file: !3, line: 224, column: 13)
!960 = !DILocation(line: 0, scope: !959, inlinedAt: !816)
!961 = !DILocation(line: 224, column: 13, scope: !946, inlinedAt: !816)
!962 = !DILocation(line: 225, column: 22, scope: !963, inlinedAt: !816)
!963 = distinct !DILexicalBlock(scope: !959, file: !3, line: 224, column: 32)
!964 = !DILocation(line: 226, column: 40, scope: !963, inlinedAt: !816)
!965 = !DILocation(line: 226, column: 26, scope: !963, inlinedAt: !816)
!966 = !DILocation(line: 226, column: 11, scope: !963, inlinedAt: !816)
!967 = !DILocation(line: 226, column: 24, scope: !963, inlinedAt: !816)
!968 = !DILocation(line: 230, column: 22, scope: !969, inlinedAt: !816)
!969 = distinct !DILexicalBlock(scope: !959, file: !3, line: 229, column: 9)
!970 = !DILocation(line: 342, column: 29, scope: !803, inlinedAt: !621)
!971 = !DILocalVariable(name: "pctx", arg: 1, scope: !972, file: !3, line: 252, type: !435)
!972 = distinct !DISubprogram(name: "parse_icmp6_identifier", scope: !3, file: !3, line: 252, type: !604, scopeLine: 254, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !973)
!973 = !{!971, !974}
!974 = !DILocalVariable(name: "p_info", arg: 2, scope: !972, file: !3, line: 253, type: !606)
!975 = !DILocation(line: 0, scope: !972, inlinedAt: !976)
!976 = distinct !DILocation(line: 345, column: 9, scope: !803, inlinedAt: !621)
!977 = !DILocalVariable(name: "nh", arg: 1, scope: !978, file: !393, line: 224, type: !639)
!978 = distinct !DISubprogram(name: "parse_icmp6hdr", scope: !393, file: !393, line: 224, type: !979, scopeLine: 227, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !982)
!979 = !DISubroutineType(types: !980)
!980 = !{!136, !639, !94, !981}
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!982 = !{!977, !983, !984, !985}
!983 = !DILocalVariable(name: "data_end", arg: 2, scope: !978, file: !393, line: 225, type: !94)
!984 = !DILocalVariable(name: "icmp6hdr", arg: 3, scope: !978, file: !393, line: 226, type: !981)
!985 = !DILocalVariable(name: "icmp6h", scope: !978, file: !393, line: 228, type: !528)
!986 = !DILocation(line: 0, scope: !978, inlinedAt: !987)
!987 = distinct !DILocation(line: 255, column: 6, scope: !988, inlinedAt: !976)
!988 = distinct !DILexicalBlock(scope: !972, file: !3, line: 255, column: 6)
!989 = !DILocation(line: 230, column: 13, scope: !990, inlinedAt: !987)
!990 = distinct !DILexicalBlock(scope: !978, file: !393, line: 230, column: 6)
!991 = !DILocation(line: 230, column: 17, scope: !990, inlinedAt: !987)
!992 = !DILocation(line: 230, column: 6, scope: !978, inlinedAt: !987)
!993 = !DILocation(line: 255, column: 57, scope: !988, inlinedAt: !976)
!994 = !DILocation(line: 233, column: 12, scope: !978, inlinedAt: !987)
!995 = !DILocation(line: 234, column: 12, scope: !978, inlinedAt: !987)
!996 = !DILocation(line: 258, column: 22, scope: !997, inlinedAt: !976)
!997 = distinct !DILexicalBlock(scope: !972, file: !3, line: 258, column: 6)
!998 = !{!999, !406, i64 1}
!999 = !{!"icmp6hdr", !406, i64 0, !406, i64 1, !632, i64 2, !406, i64 4}
!1000 = !DILocation(line: 258, column: 33, scope: !997, inlinedAt: !976)
!1001 = !DILocation(line: 258, column: 6, scope: !972, inlinedAt: !976)
!1002 = !DILocation(line: 261, column: 22, scope: !1003, inlinedAt: !976)
!1003 = distinct !DILexicalBlock(scope: !972, file: !3, line: 261, column: 6)
!1004 = !{!999, !406, i64 0}
!1005 = !DILocation(line: 261, column: 6, scope: !972, inlinedAt: !976)
!1006 = !DILocation(line: 262, column: 44, scope: !1007, inlinedAt: !976)
!1007 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 261, column: 57)
!1008 = !DILocation(line: 262, column: 28, scope: !1007, inlinedAt: !976)
!1009 = !DILocation(line: 262, column: 15, scope: !1007, inlinedAt: !976)
!1010 = !DILocation(line: 262, column: 26, scope: !1007, inlinedAt: !976)
!1011 = !{!627, !405, i64 72}
!1012 = !DILocation(line: 263, column: 11, scope: !1007, inlinedAt: !976)
!1013 = !DILocation(line: 263, column: 21, scope: !1007, inlinedAt: !976)
!1014 = !DILocation(line: 264, column: 11, scope: !1007, inlinedAt: !976)
!1015 = !DILocation(line: 264, column: 27, scope: !1007, inlinedAt: !976)
!1016 = !DILocation(line: 265, column: 2, scope: !1007, inlinedAt: !976)
!1017 = !DILocation(line: 266, column: 50, scope: !1018, inlinedAt: !976)
!1018 = distinct !DILexicalBlock(scope: !1019, file: !3, line: 265, column: 62)
!1019 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 265, column: 13)
!1020 = !DILocation(line: 266, column: 34, scope: !1018, inlinedAt: !976)
!1021 = !DILocation(line: 266, column: 21, scope: !1018, inlinedAt: !976)
!1022 = !DILocation(line: 266, column: 32, scope: !1018, inlinedAt: !976)
!1023 = !{!627, !405, i64 120}
!1024 = !DILocation(line: 267, column: 11, scope: !1018, inlinedAt: !976)
!1025 = !DILocation(line: 267, column: 27, scope: !1018, inlinedAt: !976)
!1026 = !DILocation(line: 268, column: 11, scope: !1018, inlinedAt: !976)
!1027 = !DILocation(line: 268, column: 21, scope: !1018, inlinedAt: !976)
!1028 = !DILocation(line: 273, column: 10, scope: !972, inlinedAt: !976)
!1029 = !DILocation(line: 273, column: 21, scope: !972, inlinedAt: !976)
!1030 = !DILocation(line: 274, column: 48, scope: !972, inlinedAt: !976)
!1031 = !DILocation(line: 274, column: 25, scope: !972, inlinedAt: !976)
!1032 = !DILocation(line: 274, column: 30, scope: !972, inlinedAt: !976)
!1033 = !DILocation(line: 275, column: 25, scope: !972, inlinedAt: !976)
!1034 = !DILocation(line: 275, column: 30, scope: !972, inlinedAt: !976)
!1035 = !DILocalVariable(name: "pctx", arg: 1, scope: !1036, file: !3, line: 282, type: !435)
!1036 = distinct !DISubprogram(name: "parse_icmp_identifier", scope: !3, file: !3, line: 282, type: !604, scopeLine: 284, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1037)
!1037 = !{!1035, !1038}
!1038 = !DILocalVariable(name: "p_info", arg: 2, scope: !1036, file: !3, line: 283, type: !606)
!1039 = !DILocation(line: 0, scope: !1036, inlinedAt: !1040)
!1040 = distinct !DILocation(line: 348, column: 9, scope: !806, inlinedAt: !621)
!1041 = !DILocalVariable(name: "nh", arg: 1, scope: !1042, file: !393, line: 239, type: !639)
!1042 = distinct !DISubprogram(name: "parse_icmphdr", scope: !393, file: !393, line: 239, type: !1043, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1046)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!136, !639, !94, !1045}
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!1046 = !{!1041, !1047, !1048, !1049}
!1047 = !DILocalVariable(name: "data_end", arg: 2, scope: !1042, file: !393, line: 240, type: !94)
!1048 = !DILocalVariable(name: "icmphdr", arg: 3, scope: !1042, file: !393, line: 241, type: !1045)
!1049 = !DILocalVariable(name: "icmph", scope: !1042, file: !393, line: 243, type: !504)
!1050 = !DILocation(line: 0, scope: !1042, inlinedAt: !1051)
!1051 = distinct !DILocation(line: 285, column: 6, scope: !1052, inlinedAt: !1040)
!1052 = distinct !DILexicalBlock(scope: !1036, file: !3, line: 285, column: 6)
!1053 = !DILocation(line: 245, column: 12, scope: !1054, inlinedAt: !1051)
!1054 = distinct !DILexicalBlock(scope: !1042, file: !393, line: 245, column: 6)
!1055 = !DILocation(line: 245, column: 16, scope: !1054, inlinedAt: !1051)
!1056 = !DILocation(line: 245, column: 6, scope: !1042, inlinedAt: !1051)
!1057 = !DILocation(line: 285, column: 56, scope: !1052, inlinedAt: !1040)
!1058 = !DILocation(line: 248, column: 11, scope: !1042, inlinedAt: !1051)
!1059 = !DILocation(line: 249, column: 11, scope: !1042, inlinedAt: !1051)
!1060 = !DILocation(line: 288, column: 21, scope: !1061, inlinedAt: !1040)
!1061 = distinct !DILexicalBlock(scope: !1036, file: !3, line: 288, column: 6)
!1062 = !{!1063, !406, i64 1}
!1063 = !{!"icmphdr", !406, i64 0, !406, i64 1, !632, i64 2, !406, i64 4}
!1064 = !DILocation(line: 288, column: 26, scope: !1061, inlinedAt: !1040)
!1065 = !DILocation(line: 288, column: 6, scope: !1036, inlinedAt: !1040)
!1066 = !DILocation(line: 291, column: 21, scope: !1067, inlinedAt: !1040)
!1067 = distinct !DILexicalBlock(scope: !1036, file: !3, line: 291, column: 6)
!1068 = !{!1063, !406, i64 0}
!1069 = !DILocation(line: 291, column: 6, scope: !1036, inlinedAt: !1040)
!1070 = !DILocation(line: 292, column: 51, scope: !1071, inlinedAt: !1040)
!1071 = distinct !DILexicalBlock(scope: !1067, file: !3, line: 291, column: 40)
!1072 = !DILocation(line: 292, column: 28, scope: !1071, inlinedAt: !1040)
!1073 = !DILocation(line: 292, column: 15, scope: !1071, inlinedAt: !1040)
!1074 = !DILocation(line: 292, column: 26, scope: !1071, inlinedAt: !1040)
!1075 = !DILocation(line: 293, column: 11, scope: !1071, inlinedAt: !1040)
!1076 = !DILocation(line: 293, column: 21, scope: !1071, inlinedAt: !1040)
!1077 = !DILocation(line: 294, column: 11, scope: !1071, inlinedAt: !1040)
!1078 = !DILocation(line: 294, column: 27, scope: !1071, inlinedAt: !1040)
!1079 = !DILocation(line: 295, column: 2, scope: !1071, inlinedAt: !1040)
!1080 = !DILocation(line: 296, column: 57, scope: !1081, inlinedAt: !1040)
!1081 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 295, column: 52)
!1082 = distinct !DILexicalBlock(scope: !1067, file: !3, line: 295, column: 13)
!1083 = !DILocation(line: 296, column: 34, scope: !1081, inlinedAt: !1040)
!1084 = !DILocation(line: 296, column: 21, scope: !1081, inlinedAt: !1040)
!1085 = !DILocation(line: 296, column: 32, scope: !1081, inlinedAt: !1040)
!1086 = !DILocation(line: 297, column: 11, scope: !1081, inlinedAt: !1040)
!1087 = !DILocation(line: 297, column: 27, scope: !1081, inlinedAt: !1040)
!1088 = !DILocation(line: 298, column: 11, scope: !1081, inlinedAt: !1040)
!1089 = !DILocation(line: 298, column: 21, scope: !1081, inlinedAt: !1040)
!1090 = !DILocation(line: 303, column: 10, scope: !1036, inlinedAt: !1040)
!1091 = !DILocation(line: 303, column: 21, scope: !1036, inlinedAt: !1040)
!1092 = !DILocation(line: 304, column: 47, scope: !1036, inlinedAt: !1040)
!1093 = !DILocation(line: 304, column: 55, scope: !1036, inlinedAt: !1040)
!1094 = !DILocation(line: 304, column: 25, scope: !1036, inlinedAt: !1040)
!1095 = !DILocation(line: 304, column: 30, scope: !1036, inlinedAt: !1040)
!1096 = !DILocation(line: 305, column: 25, scope: !1036, inlinedAt: !1040)
!1097 = !DILocation(line: 305, column: 30, scope: !1036, inlinedAt: !1040)
!1098 = !DILocation(line: 219, column: 11, scope: !1099, inlinedAt: !816)
!1099 = distinct !DILexicalBlock(scope: !942, file: !3, line: 218, column: 25)
!1100 = !DILocation(line: 219, column: 22, scope: !1099, inlinedAt: !816)
!1101 = !DILocation(line: 220, column: 11, scope: !1099, inlinedAt: !816)
!1102 = !DILocation(line: 220, column: 24, scope: !1099, inlinedAt: !816)
!1103 = !DILocation(line: 357, column: 19, scope: !1104, inlinedAt: !621)
!1104 = distinct !DILexicalBlock(scope: !956, file: !3, line: 355, column: 39)
!1105 = !DILocalVariable(name: "ipv6", arg: 1, scope: !1106, file: !3, line: 113, type: !105)
!1106 = distinct !DISubprogram(name: "map_ipv4_to_ipv6", scope: !3, file: !3, line: 113, type: !1107, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1109)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{null, !105, !124}
!1109 = !{!1105, !1110}
!1110 = !DILocalVariable(name: "ipv4", arg: 2, scope: !1106, file: !3, line: 113, type: !124)
!1111 = !DILocation(line: 0, scope: !1106, inlinedAt: !1112)
!1112 = distinct !DILocation(line: 356, column: 3, scope: !1104, inlinedAt: !621)
!1113 = !DILocation(line: 115, column: 2, scope: !1106, inlinedAt: !1112)
!1114 = !DILocation(line: 116, column: 20, scope: !1106, inlinedAt: !1112)
!1115 = !DILocation(line: 116, column: 2, scope: !1106, inlinedAt: !1112)
!1116 = !DILocation(line: 117, column: 2, scope: !1106, inlinedAt: !1112)
!1117 = !DILocation(line: 117, column: 27, scope: !1106, inlinedAt: !1112)
!1118 = !DILocation(line: 358, column: 38, scope: !1104, inlinedAt: !621)
!1119 = !DILocation(line: 359, column: 19, scope: !1104, inlinedAt: !621)
!1120 = !DILocation(line: 0, scope: !1106, inlinedAt: !1121)
!1121 = distinct !DILocation(line: 358, column: 3, scope: !1104, inlinedAt: !621)
!1122 = !DILocation(line: 115, column: 2, scope: !1106, inlinedAt: !1121)
!1123 = !DILocation(line: 116, column: 20, scope: !1106, inlinedAt: !1121)
!1124 = !DILocation(line: 116, column: 2, scope: !1106, inlinedAt: !1121)
!1125 = !DILocation(line: 117, column: 2, scope: !1106, inlinedAt: !1121)
!1126 = !DILocation(line: 117, column: 27, scope: !1106, inlinedAt: !1121)
!1127 = !DILocation(line: 360, column: 2, scope: !1104, inlinedAt: !621)
!1128 = !DILocation(line: 361, column: 45, scope: !1129, inlinedAt: !621)
!1129 = distinct !DILexicalBlock(scope: !956, file: !3, line: 360, column: 9)
!1130 = !{i64 0, i64 16, !881, i64 0, i64 16, !881, i64 0, i64 16, !881}
!1131 = !DILocation(line: 362, column: 20, scope: !1129, inlinedAt: !621)
!1132 = !DILocation(line: 362, column: 45, scope: !1129, inlinedAt: !621)
!1133 = !DILocation(line: 127, column: 31, scope: !1134, inlinedAt: !1140)
!1134 = distinct !DISubprogram(name: "remaining_pkt_payload", scope: !3, file: !3, line: 123, type: !1135, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1137)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!104, !435}
!1137 = !{!1138, !1139}
!1138 = !DILocalVariable(name: "ctx", arg: 1, scope: !1134, file: !3, line: 123, type: !435)
!1139 = !DILocalVariable(name: "parsed_bytes", scope: !1134, file: !3, line: 127, type: !104)
!1140 = distinct !DILocation(line: 366, column: 20, scope: !603, inlinedAt: !621)
!1141 = !DILocation(line: 365, column: 24, scope: !603, inlinedAt: !621)
!1142 = !DILocalVariable(name: "dest", arg: 1, scope: !1143, file: !15, line: 167, type: !172)
!1143 = distinct !DISubprogram(name: "reverse_flow", scope: !15, file: !15, line: 167, type: !1144, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1146)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{null, !172, !172}
!1146 = !{!1142, !1147}
!1147 = !DILocalVariable(name: "src", arg: 2, scope: !1143, file: !15, line: 167, type: !172)
!1148 = !DILocation(line: 0, scope: !1143, inlinedAt: !1149)
!1149 = distinct !DILocation(line: 365, column: 2, scope: !603, inlinedAt: !621)
!1150 = !DILocation(line: 169, column: 8, scope: !1143, inlinedAt: !1149)
!1151 = !DILocation(line: 169, column: 12, scope: !1143, inlinedAt: !1149)
!1152 = !{!629, !406, i64 42}
!1153 = !DILocation(line: 170, column: 8, scope: !1143, inlinedAt: !1149)
!1154 = !DILocation(line: 170, column: 14, scope: !1143, inlinedAt: !1149)
!1155 = !{!629, !632, i64 40}
!1156 = !DILocation(line: 171, column: 21, scope: !1143, inlinedAt: !1149)
!1157 = !{i64 0, i64 16, !881, i64 0, i64 16, !881, i64 0, i64 16, !881, i64 16, i64 2, !677, i64 18, i64 2, !677}
!1158 = !DILocation(line: 172, column: 8, scope: !1143, inlinedAt: !1149)
!1159 = !DILocation(line: 172, column: 21, scope: !1143, inlinedAt: !1149)
!1160 = !DILocation(line: 173, column: 8, scope: !1143, inlinedAt: !1149)
!1161 = !DILocation(line: 173, column: 17, scope: !1143, inlinedAt: !1149)
!1162 = !{!629, !406, i64 43}
!1163 = !DILocation(line: 0, scope: !1134, inlinedAt: !1140)
!1164 = !DILocation(line: 127, column: 42, scope: !1134, inlinedAt: !1140)
!1165 = !DILocation(line: 127, column: 35, scope: !1134, inlinedAt: !1140)
!1166 = !DILocation(line: 127, column: 23, scope: !1134, inlinedAt: !1140)
!1167 = !DILocation(line: 128, column: 29, scope: !1134, inlinedAt: !1140)
!1168 = !DILocation(line: 128, column: 9, scope: !1134, inlinedAt: !1140)
!1169 = !DILocation(line: 366, column: 10, scope: !603, inlinedAt: !621)
!1170 = !DILocation(line: 366, column: 18, scope: !603, inlinedAt: !621)
!1171 = !{!627, !405, i64 24}
!1172 = !DILocalVariable(name: "ctx", arg: 1, scope: !1173, file: !3, line: 495, type: !94)
!1173 = distinct !DISubprogram(name: "update_flow", scope: !3, file: !3, line: 495, type: !1174, scopeLine: 497, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1177)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{!174, !94, !606, !1176}
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!1177 = !{!1172, !1178, !1179, !1180}
!1178 = !DILocalVariable(name: "p_info", arg: 2, scope: !1173, file: !3, line: 495, type: !606)
!1179 = !DILocalVariable(name: "new_flow", arg: 3, scope: !1173, file: !3, line: 496, type: !1176)
!1180 = !DILocalVariable(name: "f_state", scope: !1173, file: !3, line: 498, type: !174)
!1181 = !DILocation(line: 0, scope: !1173, inlinedAt: !1182)
!1182 = distinct !DILocation(line: 700, column: 9, scope: !432)
!1183 = !DILocation(line: 501, column: 54, scope: !1173, inlinedAt: !1182)
!1184 = !DILocation(line: 501, column: 12, scope: !1173, inlinedAt: !1182)
!1185 = !DILocation(line: 504, column: 7, scope: !1186, inlinedAt: !1182)
!1186 = distinct !DILexicalBlock(scope: !1173, file: !3, line: 504, column: 6)
!1187 = !DILocation(line: 504, column: 15, scope: !1186, inlinedAt: !1182)
!1188 = !DILocation(line: 504, column: 26, scope: !1186, inlinedAt: !1182)
!1189 = !DILocation(line: 504, column: 36, scope: !1186, inlinedAt: !1182)
!1190 = !DILocation(line: 505, column: 16, scope: !1186, inlinedAt: !1182)
!1191 = !DILocation(line: 505, column: 49, scope: !1186, inlinedAt: !1182)
!1192 = !DILocalVariable(name: "ctx", arg: 1, scope: !1193, file: !3, line: 477, type: !94)
!1193 = distinct !DISubprogram(name: "create_flow", scope: !3, file: !3, line: 477, type: !1194, scopeLine: 478, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1196)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{!174, !94, !606}
!1196 = !{!1192, !1197, !1198}
!1197 = !DILocalVariable(name: "p_info", arg: 2, scope: !1193, file: !3, line: 477, type: !606)
!1198 = !DILocalVariable(name: "new_state", scope: !1193, file: !3, line: 479, type: !175)
!1199 = !DILocation(line: 0, scope: !1193, inlinedAt: !1200)
!1200 = distinct !DILocation(line: 508, column: 13, scope: !1201, inlinedAt: !1182)
!1201 = distinct !DILexicalBlock(scope: !1186, file: !3, line: 506, column: 56)
!1202 = !DILocation(line: 479, column: 2, scope: !1193, inlinedAt: !1200)
!1203 = !DILocation(line: 479, column: 20, scope: !1193, inlinedAt: !1200)
!1204 = !DILocation(line: 481, column: 37, scope: !1193, inlinedAt: !1200)
!1205 = !DILocation(line: 481, column: 12, scope: !1193, inlinedAt: !1200)
!1206 = !DILocation(line: 481, column: 27, scope: !1193, inlinedAt: !1200)
!1207 = !{!1208, !408, i64 16}
!1208 = !{!"flow_state", !408, i64 0, !408, i64 8, !408, i64 16, !408, i64 24, !408, i64 32, !408, i64 40, !408, i64 48, !405, i64 56, !416, i64 60, !406, i64 61, !632, i64 62}
!1209 = !DILocation(line: 482, column: 48, scope: !1193, inlinedAt: !1200)
!1210 = !DILocation(line: 482, column: 29, scope: !1193, inlinedAt: !1200)
!1211 = !DILocation(line: 482, column: 12, scope: !1193, inlinedAt: !1200)
!1212 = !DILocation(line: 482, column: 27, scope: !1193, inlinedAt: !1200)
!1213 = !{!1208, !406, i64 61}
!1214 = !DILocation(line: 486, column: 6, scope: !1215, inlinedAt: !1200)
!1215 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 486, column: 6)
!1216 = !DILocation(line: 487, column: 18, scope: !1215, inlinedAt: !1200)
!1217 = !DILocation(line: 486, column: 6, scope: !1193, inlinedAt: !1200)
!1218 = !DILocalVariable(name: "ctx", arg: 1, scope: !1219, file: !3, line: 453, type: !94)
!1219 = distinct !DISubprogram(name: "send_map_full_event", scope: !3, file: !3, line: 453, type: !1220, scopeLine: 455, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1222)
!1220 = !DISubroutineType(types: !1221)
!1221 = !{null, !94, !606, !67}
!1222 = !{!1218, !1223, !1224, !1225}
!1223 = !DILocalVariable(name: "p_info", arg: 2, scope: !1219, file: !3, line: 453, type: !606)
!1224 = !DILocalVariable(name: "map", arg: 3, scope: !1219, file: !3, line: 454, type: !67)
!1225 = !DILocalVariable(name: "me", scope: !1219, file: !3, line: 456, type: !1226)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "map_full_event", file: !15, line: 146, size: 512, elements: !1227)
!1227 = !{!1228, !1229, !1230, !1231, !1232}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "event_type", scope: !1226, file: !15, line: 147, baseType: !159, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !1226, file: !15, line: 148, baseType: !159, size: 64, offset: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "flow", scope: !1226, file: !15, line: 149, baseType: !144, size: 352, offset: 128)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !1226, file: !15, line: 150, baseType: !67, size: 8, offset: 480)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1226, file: !15, line: 151, baseType: !481, size: 24, offset: 488)
!1233 = !DILocation(line: 0, scope: !1219, inlinedAt: !1234)
!1234 = distinct !DILocation(line: 488, column: 3, scope: !1235, inlinedAt: !1200)
!1235 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 487, column: 24)
!1236 = !DILocation(line: 456, column: 2, scope: !1219, inlinedAt: !1234)
!1237 = !DILocation(line: 456, column: 24, scope: !1219, inlinedAt: !1234)
!1238 = !DILocation(line: 458, column: 14, scope: !1239, inlinedAt: !1234)
!1239 = distinct !DILexicalBlock(scope: !1219, file: !3, line: 458, column: 6)
!1240 = !DILocation(line: 458, column: 21, scope: !1239, inlinedAt: !1234)
!1241 = !{!408, !408, i64 0}
!1242 = !DILocation(line: 458, column: 19, scope: !1239, inlinedAt: !1234)
!1243 = !DILocation(line: 458, column: 41, scope: !1239, inlinedAt: !1234)
!1244 = !DILocation(line: 459, column: 21, scope: !1239, inlinedAt: !1234)
!1245 = !DILocation(line: 459, column: 19, scope: !1239, inlinedAt: !1234)
!1246 = !DILocation(line: 459, column: 41, scope: !1239, inlinedAt: !1234)
!1247 = !DILocation(line: 458, column: 6, scope: !1219, inlinedAt: !1234)
!1248 = !DILocation(line: 462, column: 22, scope: !1219, inlinedAt: !1234)
!1249 = !DILocation(line: 464, column: 2, scope: !1219, inlinedAt: !1234)
!1250 = !DILocation(line: 465, column: 16, scope: !1219, inlinedAt: !1234)
!1251 = !{!1252, !408, i64 0}
!1252 = !{!"map_full_event", !408, i64 0, !408, i64 8, !629, i64 16, !406, i64 60, !406, i64 61}
!1253 = !DILocation(line: 466, column: 5, scope: !1219, inlinedAt: !1234)
!1254 = !DILocation(line: 466, column: 15, scope: !1219, inlinedAt: !1234)
!1255 = !{!1252, !408, i64 8}
!1256 = !DILocation(line: 467, column: 5, scope: !1219, inlinedAt: !1234)
!1257 = !DILocation(line: 467, column: 24, scope: !1219, inlinedAt: !1234)
!1258 = !{i64 0, i64 16, !881, i64 0, i64 16, !881, i64 0, i64 16, !881, i64 16, i64 2, !677, i64 18, i64 2, !677, i64 20, i64 16, !881, i64 20, i64 16, !881, i64 20, i64 16, !881, i64 36, i64 2, !677, i64 38, i64 2, !677, i64 40, i64 2, !677, i64 42, i64 1, !881, i64 43, i64 1, !881}
!1259 = !DILocation(line: 470, column: 2, scope: !1219, inlinedAt: !1234)
!1260 = !DILocation(line: 471, column: 1, scope: !1219, inlinedAt: !1234)
!1261 = !DILocation(line: 493, column: 1, scope: !1193, inlinedAt: !1200)
!1262 = !DILocation(line: 511, column: 6, scope: !1173, inlinedAt: !1182)
!1263 = !DILocation(line: 492, column: 9, scope: !1193, inlinedAt: !1200)
!1264 = !DILocation(line: 511, column: 7, scope: !1265, inlinedAt: !1182)
!1265 = distinct !DILexicalBlock(scope: !1173, file: !3, line: 511, column: 6)
!1266 = !DILocation(line: 515, column: 11, scope: !1173, inlinedAt: !1182)
!1267 = !DILocation(line: 515, column: 20, scope: !1173, inlinedAt: !1182)
!1268 = !{!1208, !408, i64 24}
!1269 = !DILocation(line: 516, column: 33, scope: !1173, inlinedAt: !1182)
!1270 = !DILocation(line: 516, column: 25, scope: !1173, inlinedAt: !1182)
!1271 = !DILocation(line: 516, column: 11, scope: !1173, inlinedAt: !1182)
!1272 = !DILocation(line: 516, column: 22, scope: !1173, inlinedAt: !1182)
!1273 = !{!1208, !408, i64 32}
!1274 = !DILocalVariable(name: "f_state", arg: 1, scope: !1275, file: !3, line: 614, type: !174)
!1275 = distinct !DISubprogram(name: "pping_timestamp_packet", scope: !3, file: !3, line: 614, type: !1276, scopeLine: 617, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1278)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{null, !174, !94, !435, !606, !186}
!1278 = !{!1274, !1279, !1280, !1281, !1282}
!1279 = !DILocalVariable(name: "ctx", arg: 2, scope: !1275, file: !3, line: 614, type: !94)
!1280 = !DILocalVariable(name: "pctx", arg: 3, scope: !1275, file: !3, line: 615, type: !435)
!1281 = !DILocalVariable(name: "p_info", arg: 4, scope: !1275, file: !3, line: 616, type: !606)
!1282 = !DILocalVariable(name: "new_flow", arg: 5, scope: !1275, file: !3, line: 616, type: !186)
!1283 = !DILocation(line: 0, scope: !1275, inlinedAt: !1284)
!1284 = distinct !DILocation(line: 701, column: 2, scope: !432)
!1285 = !DILocation(line: 618, column: 27, scope: !1286, inlinedAt: !1284)
!1286 = distinct !DILexicalBlock(scope: !1275, file: !3, line: 618, column: 6)
!1287 = !DILocation(line: 618, column: 6, scope: !1275, inlinedAt: !1284)
!1288 = !DILocation(line: 621, column: 13, scope: !1289, inlinedAt: !1284)
!1289 = distinct !DILexicalBlock(scope: !1275, file: !3, line: 621, column: 6)
!1290 = !{!799, !416, i64 19}
!1291 = !DILocation(line: 621, column: 23, scope: !1289, inlinedAt: !1284)
!1292 = !DILocation(line: 621, column: 33, scope: !1289, inlinedAt: !1284)
!1293 = !DILocation(line: 621, column: 43, scope: !1289, inlinedAt: !1284)
!1294 = !DILocalVariable(name: "p_info", arg: 1, scope: !1295, file: !3, line: 576, type: !606)
!1295 = distinct !DISubprogram(name: "is_local_address", scope: !3, file: !3, line: 576, type: !1296, scopeLine: 578, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1298)
!1296 = !DISubroutineType(types: !1297)
!1297 = !{!186, !606, !94, !435}
!1298 = !{!1294, !1299, !1300, !1301, !1302, !1303, !1307}
!1299 = !DILocalVariable(name: "ctx", arg: 2, scope: !1295, file: !3, line: 576, type: !94)
!1300 = !DILocalVariable(name: "pctx", arg: 3, scope: !1295, file: !3, line: 577, type: !435)
!1301 = !DILocalVariable(name: "ret", scope: !1295, file: !3, line: 579, type: !136)
!1302 = !DILocalVariable(name: "lookup", scope: !1295, file: !3, line: 580, type: !248)
!1303 = !DILocalVariable(name: "src", scope: !1304, file: !3, line: 592, type: !105)
!1304 = distinct !DILexicalBlock(scope: !1305, file: !3, line: 591, column: 40)
!1305 = distinct !DILexicalBlock(scope: !1306, file: !3, line: 591, column: 13)
!1306 = distinct !DILexicalBlock(scope: !1295, file: !3, line: 586, column: 6)
!1307 = !DILocalVariable(name: "dst", scope: !1304, file: !3, line: 593, type: !105)
!1308 = !DILocation(line: 0, scope: !1295, inlinedAt: !1309)
!1309 = distinct !DILocation(line: 622, column: 6, scope: !1289, inlinedAt: !1284)
!1310 = !DILocation(line: 580, column: 2, scope: !1295, inlinedAt: !1309)
!1311 = !DILocation(line: 580, column: 24, scope: !1295, inlinedAt: !1309)
!1312 = !DILocation(line: 581, column: 2, scope: !1295, inlinedAt: !1309)
!1313 = !DILocation(line: 583, column: 25, scope: !1295, inlinedAt: !1309)
!1314 = !DILocation(line: 583, column: 9, scope: !1295, inlinedAt: !1309)
!1315 = !DILocation(line: 583, column: 17, scope: !1295, inlinedAt: !1309)
!1316 = !{!1317, !405, i64 8}
!1317 = !{!"bpf_fib_lookup", !406, i64 0, !406, i64 1, !632, i64 2, !632, i64 4, !632, i64 6, !405, i64 8, !406, i64 12, !406, i64 16, !406, i64 32, !632, i64 48, !632, i64 50, !406, i64 52, !406, i64 58}
!1318 = !DILocation(line: 584, column: 35, scope: !1295, inlinedAt: !1309)
!1319 = !DILocation(line: 584, column: 16, scope: !1295, inlinedAt: !1309)
!1320 = !{!1317, !406, i64 0}
!1321 = !DILocation(line: 586, column: 6, scope: !1295, inlinedAt: !1309)
!1322 = !DILocation(line: 587, column: 24, scope: !1323, inlinedAt: !1309)
!1323 = distinct !DILexicalBlock(scope: !1306, file: !3, line: 586, column: 32)
!1324 = !DILocation(line: 587, column: 29, scope: !1323, inlinedAt: !1309)
!1325 = !{!733, !406, i64 1}
!1326 = !DILocation(line: 587, column: 10, scope: !1323, inlinedAt: !1309)
!1327 = !DILocation(line: 587, column: 14, scope: !1323, inlinedAt: !1309)
!1328 = !DILocation(line: 588, column: 20, scope: !1323, inlinedAt: !1309)
!1329 = !{!733, !632, i64 2}
!1330 = !DILocation(line: 588, column: 10, scope: !1323, inlinedAt: !1309)
!1331 = !DILocation(line: 588, column: 18, scope: !1323, inlinedAt: !1309)
!1332 = !{!1317, !632, i64 6}
!1333 = !DILocation(line: 589, column: 34, scope: !1323, inlinedAt: !1309)
!1334 = !DILocation(line: 589, column: 10, scope: !1323, inlinedAt: !1309)
!1335 = !DILocation(line: 589, column: 19, scope: !1323, inlinedAt: !1309)
!1336 = !DILocation(line: 590, column: 34, scope: !1323, inlinedAt: !1309)
!1337 = !DILocation(line: 590, column: 10, scope: !1323, inlinedAt: !1309)
!1338 = !DILocation(line: 590, column: 19, scope: !1323, inlinedAt: !1309)
!1339 = !DILocation(line: 591, column: 2, scope: !1323, inlinedAt: !1309)
!1340 = !DILocation(line: 592, column: 52, scope: !1304, inlinedAt: !1309)
!1341 = !DILocation(line: 0, scope: !1304, inlinedAt: !1309)
!1342 = !DILocation(line: 593, column: 52, scope: !1304, inlinedAt: !1309)
!1343 = !DILocation(line: 595, column: 40, scope: !1304, inlinedAt: !1309)
!1344 = !DILocation(line: 595, column: 21, scope: !1304, inlinedAt: !1309)
!1345 = !DILocation(line: 595, column: 45, scope: !1304, inlinedAt: !1309)
!1346 = !DILocation(line: 595, column: 10, scope: !1304, inlinedAt: !1309)
!1347 = !DILocation(line: 595, column: 19, scope: !1304, inlinedAt: !1309)
!1348 = !DILocation(line: 596, column: 20, scope: !1304, inlinedAt: !1309)
!1349 = !{!787, !632, i64 4}
!1350 = !DILocation(line: 596, column: 10, scope: !1304, inlinedAt: !1309)
!1351 = !DILocation(line: 596, column: 18, scope: !1304, inlinedAt: !1309)
!1352 = !DILocation(line: 597, column: 33, scope: !1304, inlinedAt: !1309)
!1353 = !DILocation(line: 598, column: 33, scope: !1304, inlinedAt: !1309)
!1354 = !DILocation(line: 599, column: 2, scope: !1304, inlinedAt: !1309)
!1355 = !DILocation(line: 601, column: 40, scope: !1295, inlinedAt: !1309)
!1356 = !DILocation(line: 601, column: 23, scope: !1295, inlinedAt: !1309)
!1357 = !DILocation(line: 601, column: 9, scope: !1295, inlinedAt: !1309)
!1358 = !DILocation(line: 601, column: 21, scope: !1295, inlinedAt: !1309)
!1359 = !{!1317, !406, i64 1}
!1360 = !DILocation(line: 602, column: 9, scope: !1295, inlinedAt: !1309)
!1361 = !DILocation(line: 602, column: 15, scope: !1295, inlinedAt: !1309)
!1362 = !{!1317, !632, i64 2}
!1363 = !DILocation(line: 603, column: 15, scope: !1295, inlinedAt: !1309)
!1364 = !{!1317, !632, i64 4}
!1365 = !DILocation(line: 605, column: 8, scope: !1295, inlinedAt: !1309)
!1366 = !DILocation(line: 607, column: 13, scope: !1295, inlinedAt: !1309)
!1367 = !DILocation(line: 607, column: 43, scope: !1295, inlinedAt: !1309)
!1368 = !DILocation(line: 609, column: 1, scope: !1295, inlinedAt: !1309)
!1369 = !DILocation(line: 621, column: 6, scope: !1275, inlinedAt: !1284)
!1370 = !DILocation(line: 626, column: 16, scope: !1371, inlinedAt: !1284)
!1371 = distinct !DILexicalBlock(scope: !1275, file: !3, line: 626, column: 6)
!1372 = !DILocation(line: 628, column: 33, scope: !1275, inlinedAt: !1284)
!1373 = !DILocation(line: 628, column: 11, scope: !1275, inlinedAt: !1284)
!1374 = !DILocation(line: 628, column: 19, scope: !1275, inlinedAt: !1284)
!1375 = !{!1208, !405, i64 56}
!1376 = !DILocation(line: 642, column: 36, scope: !1275, inlinedAt: !1284)
!1377 = !DILocation(line: 631, column: 16, scope: !1378, inlinedAt: !1284)
!1378 = distinct !DILexicalBlock(scope: !1275, file: !3, line: 631, column: 6)
!1379 = !DILocation(line: 626, column: 28, scope: !1371, inlinedAt: !1284)
!1380 = !DILocation(line: 626, column: 51, scope: !1371, inlinedAt: !1284)
!1381 = !DILocation(line: 626, column: 36, scope: !1371, inlinedAt: !1284)
!1382 = !DILocation(line: 626, column: 6, scope: !1275, inlinedAt: !1284)
!1383 = !DILocation(line: 632, column: 30, scope: !1378, inlinedAt: !1284)
!1384 = !DILocation(line: 632, column: 45, scope: !1378, inlinedAt: !1284)
!1385 = !DILocation(line: 633, column: 15, scope: !1378, inlinedAt: !1284)
!1386 = !{!799, !416, i64 16}
!1387 = !DILocation(line: 633, column: 8, scope: !1378, inlinedAt: !1284)
!1388 = !DILocalVariable(name: "now", arg: 1, scope: !1389, file: !3, line: 385, type: !159)
!1389 = distinct !DISubprogram(name: "is_rate_limited", scope: !3, file: !3, line: 385, type: !1390, scopeLine: 386, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1392)
!1390 = !DISubroutineType(types: !1391)
!1391 = !{!186, !159, !159, !159}
!1392 = !{!1388, !1393, !1394}
!1393 = !DILocalVariable(name: "last_ts", arg: 2, scope: !1389, file: !3, line: 385, type: !159)
!1394 = !DILocalVariable(name: "rtt", arg: 3, scope: !1389, file: !3, line: 385, type: !159)
!1395 = !DILocation(line: 0, scope: !1389, inlinedAt: !1396)
!1396 = distinct !DILocation(line: 632, column: 6, scope: !1378, inlinedAt: !1284)
!1397 = !DILocation(line: 387, column: 10, scope: !1398, inlinedAt: !1396)
!1398 = distinct !DILexicalBlock(scope: !1389, file: !3, line: 387, column: 6)
!1399 = !DILocation(line: 387, column: 6, scope: !1389, inlinedAt: !1396)
!1400 = !DILocation(line: 391, column: 13, scope: !1401, inlinedAt: !1396)
!1401 = distinct !DILexicalBlock(scope: !1389, file: !3, line: 391, column: 6)
!1402 = !{!799, !408, i64 8}
!1403 = !DILocation(line: 391, column: 6, scope: !1401, inlinedAt: !1396)
!1404 = !DILocation(line: 391, column: 22, scope: !1401, inlinedAt: !1396)
!1405 = !DILocation(line: 392, column: 26, scope: !1401, inlinedAt: !1396)
!1406 = !DILocation(line: 392, column: 24, scope: !1401, inlinedAt: !1396)
!1407 = !DILocation(line: 631, column: 6, scope: !1275, inlinedAt: !1284)
!1408 = !DILocation(line: 395, column: 32, scope: !1389, inlinedAt: !1396)
!1409 = !{!799, !408, i64 0}
!1410 = !DILocation(line: 395, column: 23, scope: !1389, inlinedAt: !1396)
!1411 = !DILocation(line: 642, column: 11, scope: !1275, inlinedAt: !1284)
!1412 = !DILocation(line: 642, column: 26, scope: !1275, inlinedAt: !1284)
!1413 = !DILocation(line: 644, column: 6, scope: !1414, inlinedAt: !1284)
!1414 = distinct !DILexicalBlock(scope: !1275, file: !3, line: 644, column: 6)
!1415 = !DILocation(line: 645, column: 18, scope: !1414, inlinedAt: !1284)
!1416 = !DILocation(line: 644, column: 6, scope: !1275, inlinedAt: !1284)
!1417 = !DILocation(line: 0, scope: !1219, inlinedAt: !1418)
!1418 = distinct !DILocation(line: 646, column: 3, scope: !1414, inlinedAt: !1284)
!1419 = !DILocation(line: 456, column: 2, scope: !1219, inlinedAt: !1418)
!1420 = !DILocation(line: 456, column: 24, scope: !1219, inlinedAt: !1418)
!1421 = !DILocation(line: 458, column: 14, scope: !1239, inlinedAt: !1418)
!1422 = !DILocation(line: 458, column: 21, scope: !1239, inlinedAt: !1418)
!1423 = !DILocation(line: 458, column: 19, scope: !1239, inlinedAt: !1418)
!1424 = !DILocation(line: 458, column: 41, scope: !1239, inlinedAt: !1418)
!1425 = !DILocation(line: 459, column: 21, scope: !1239, inlinedAt: !1418)
!1426 = !DILocation(line: 459, column: 19, scope: !1239, inlinedAt: !1418)
!1427 = !DILocation(line: 459, column: 41, scope: !1239, inlinedAt: !1418)
!1428 = !DILocation(line: 458, column: 6, scope: !1219, inlinedAt: !1418)
!1429 = !DILocation(line: 462, column: 22, scope: !1219, inlinedAt: !1418)
!1430 = !DILocation(line: 464, column: 2, scope: !1219, inlinedAt: !1418)
!1431 = !DILocation(line: 465, column: 16, scope: !1219, inlinedAt: !1418)
!1432 = !DILocation(line: 466, column: 5, scope: !1219, inlinedAt: !1418)
!1433 = !DILocation(line: 466, column: 15, scope: !1219, inlinedAt: !1418)
!1434 = !DILocation(line: 467, column: 5, scope: !1219, inlinedAt: !1418)
!1435 = !DILocation(line: 467, column: 24, scope: !1219, inlinedAt: !1418)
!1436 = !DILocation(line: 470, column: 2, scope: !1219, inlinedAt: !1418)
!1437 = !DILocation(line: 471, column: 1, scope: !1219, inlinedAt: !1418)
!1438 = !DILocation(line: 646, column: 3, scope: !1414, inlinedAt: !1284)
!1439 = !DILocalVariable(name: "ctx", arg: 1, scope: !1440, file: !3, line: 521, type: !94)
!1440 = distinct !DISubprogram(name: "update_rev_flow", scope: !3, file: !3, line: 521, type: !1194, scopeLine: 522, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1441)
!1441 = !{!1439, !1442, !1443}
!1442 = !DILocalVariable(name: "p_info", arg: 2, scope: !1440, file: !3, line: 521, type: !606)
!1443 = !DILocalVariable(name: "f_state", scope: !1440, file: !3, line: 523, type: !174)
!1444 = !DILocation(line: 0, scope: !1440, inlinedAt: !1445)
!1445 = distinct !DILocation(line: 703, column: 13, scope: !432)
!1446 = !DILocation(line: 525, column: 12, scope: !1440, inlinedAt: !1445)
!1447 = !DILocation(line: 526, column: 7, scope: !1448, inlinedAt: !1445)
!1448 = distinct !DILexicalBlock(scope: !1440, file: !3, line: 526, column: 6)
!1449 = !DILocation(line: 526, column: 6, scope: !1440, inlinedAt: !1445)
!1450 = !DILocalVariable(name: "f_state", arg: 1, scope: !1451, file: !3, line: 652, type: !174)
!1451 = distinct !DISubprogram(name: "pping_match_packet", scope: !3, file: !3, line: 652, type: !1452, scopeLine: 655, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1454)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{null, !174, !94, !435, !606}
!1454 = !{!1450, !1455, !1456, !1457, !1458, !1476}
!1455 = !DILocalVariable(name: "ctx", arg: 2, scope: !1451, file: !3, line: 652, type: !94)
!1456 = !DILocalVariable(name: "pctx", arg: 3, scope: !1451, file: !3, line: 653, type: !435)
!1457 = !DILocalVariable(name: "p_info", arg: 4, scope: !1451, file: !3, line: 654, type: !606)
!1458 = !DILocalVariable(name: "re", scope: !1451, file: !3, line: 656, type: !1459)
!1459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtt_event", file: !15, line: 114, size: 960, elements: !1460)
!1460 = !{!1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "event_type", scope: !1459, file: !15, line: 115, baseType: !159, size: 64)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !1459, file: !15, line: 116, baseType: !159, size: 64, offset: 64)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "flow", scope: !1459, file: !15, line: 117, baseType: !144, size: 352, offset: 128)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1459, file: !15, line: 118, baseType: !104, size: 32, offset: 480)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "rtt", scope: !1459, file: !15, line: 119, baseType: !159, size: 64, offset: 512)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "min_rtt", scope: !1459, file: !15, line: 120, baseType: !159, size: 64, offset: 576)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "sent_pkts", scope: !1459, file: !15, line: 121, baseType: !159, size: 64, offset: 640)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "sent_bytes", scope: !1459, file: !15, line: 122, baseType: !159, size: 64, offset: 704)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "rec_pkts", scope: !1459, file: !15, line: 123, baseType: !159, size: 64, offset: 768)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "rec_bytes", scope: !1459, file: !15, line: 124, baseType: !159, size: 64, offset: 832)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "match_on_egress", scope: !1459, file: !15, line: 125, baseType: !186, size: 8, offset: 896)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1459, file: !15, line: 126, baseType: !1473, size: 56, offset: 904)
!1473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 56, elements: !1474)
!1474 = !{!1475}
!1475 = !DISubrange(count: 7)
!1476 = !DILocalVariable(name: "p_ts", scope: !1451, file: !3, line: 657, type: !158)
!1477 = !DILocation(line: 0, scope: !1451, inlinedAt: !1478)
!1478 = distinct !DILocation(line: 704, column: 2, scope: !432)
!1479 = !DILocation(line: 656, column: 2, scope: !1451, inlinedAt: !1478)
!1480 = !DILocation(line: 656, column: 19, scope: !1451, inlinedAt: !1478)
!1481 = !DILocation(line: 659, column: 15, scope: !1482, inlinedAt: !1478)
!1482 = distinct !DILexicalBlock(scope: !1451, file: !3, line: 659, column: 6)
!1483 = !DILocation(line: 530, column: 16, scope: !1484, inlinedAt: !1445)
!1484 = distinct !DILexicalBlock(scope: !1440, file: !3, line: 530, column: 6)
!1485 = !{!1208, !416, i64 60}
!1486 = !DILocation(line: 530, column: 27, scope: !1484, inlinedAt: !1445)
!1487 = !DILocation(line: 532, column: 23, scope: !1488, inlinedAt: !1445)
!1488 = distinct !DILexicalBlock(scope: !1484, file: !3, line: 531, column: 53)
!1489 = !DILocalVariable(name: "ctx", arg: 1, scope: !1490, file: !3, line: 404, type: !94)
!1490 = distinct !DISubprogram(name: "send_flow_open_event", scope: !3, file: !3, line: 404, type: !1491, scopeLine: 406, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1493)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{null, !94, !606, !174}
!1493 = !{!1489, !1494, !1495, !1496}
!1494 = !DILocalVariable(name: "p_info", arg: 2, scope: !1490, file: !3, line: 404, type: !606)
!1495 = !DILocalVariable(name: "rev_flow", arg: 3, scope: !1490, file: !3, line: 405, type: !174)
!1496 = !DILocalVariable(name: "fe", scope: !1490, file: !3, line: 407, type: !1497)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "flow_event", file: !15, line: 132, size: 512, elements: !1498)
!1498 = !{!1499, !1500, !1501, !1502, !1503, !1504, !1505}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "event_type", scope: !1497, file: !15, line: 133, baseType: !159, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !1497, file: !15, line: 134, baseType: !159, size: 64, offset: 64)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "flow", scope: !1497, file: !15, line: 135, baseType: !144, size: 352, offset: 128)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "flow_event_type", scope: !1497, file: !15, line: 136, baseType: !24, size: 8, offset: 480)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !1497, file: !15, line: 137, baseType: !14, size: 8, offset: 488)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !1497, file: !15, line: 138, baseType: !88, size: 8, offset: 496)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1497, file: !15, line: 139, baseType: !102, size: 8, offset: 504)
!1506 = !DILocation(line: 0, scope: !1490, inlinedAt: !1507)
!1507 = distinct !DILocation(line: 533, column: 3, scope: !1488, inlinedAt: !1445)
!1508 = !DILocation(line: 407, column: 2, scope: !1490, inlinedAt: !1507)
!1509 = !DILocation(line: 407, column: 20, scope: !1490, inlinedAt: !1507)
!1510 = !DILocation(line: 407, column: 25, scope: !1490, inlinedAt: !1507)
!1511 = !{!1512, !408, i64 0}
!1512 = !{!"flow_event", !408, i64 0, !408, i64 8, !629, i64 16, !406, i64 60, !406, i64 61, !406, i64 62, !406, i64 63}
!1513 = !DILocation(line: 413, column: 26, scope: !1490, inlinedAt: !1507)
!1514 = !{!1512, !408, i64 8}
!1515 = !DILocation(line: 411, column: 23, scope: !1490, inlinedAt: !1507)
!1516 = !{!1512, !406, i64 60}
!1517 = !DILocation(line: 412, column: 23, scope: !1490, inlinedAt: !1507)
!1518 = !{!1512, !406, i64 61}
!1519 = !{!1512, !406, i64 62}
!1520 = !{!1512, !406, i64 63}
!1521 = !DILocation(line: 417, column: 2, scope: !1490, inlinedAt: !1507)
!1522 = !DILocation(line: 418, column: 1, scope: !1490, inlinedAt: !1507)
!1523 = !DILocation(line: 534, column: 2, scope: !1488, inlinedAt: !1445)
!1524 = !DILocation(line: 537, column: 11, scope: !1440, inlinedAt: !1445)
!1525 = !DILocation(line: 537, column: 19, scope: !1440, inlinedAt: !1445)
!1526 = !{!1208, !408, i64 40}
!1527 = !DILocation(line: 538, column: 32, scope: !1440, inlinedAt: !1445)
!1528 = !DILocation(line: 538, column: 24, scope: !1440, inlinedAt: !1445)
!1529 = !DILocation(line: 538, column: 11, scope: !1440, inlinedAt: !1445)
!1530 = !DILocation(line: 538, column: 21, scope: !1440, inlinedAt: !1445)
!1531 = !{!1208, !408, i64 48}
!1532 = !DILocation(line: 659, column: 27, scope: !1482, inlinedAt: !1478)
!1533 = !DILocation(line: 659, column: 6, scope: !1451, inlinedAt: !1478)
!1534 = !DILocation(line: 662, column: 9, scope: !1451, inlinedAt: !1478)
!1535 = !DILocation(line: 663, column: 7, scope: !1536, inlinedAt: !1478)
!1536 = distinct !DILexicalBlock(scope: !1451, file: !3, line: 663, column: 6)
!1537 = !DILocation(line: 663, column: 12, scope: !1536, inlinedAt: !1478)
!1538 = !DILocation(line: 663, column: 23, scope: !1536, inlinedAt: !1478)
!1539 = !DILocation(line: 663, column: 30, scope: !1536, inlinedAt: !1478)
!1540 = !DILocation(line: 663, column: 28, scope: !1536, inlinedAt: !1478)
!1541 = !DILocation(line: 663, column: 6, scope: !1451, inlinedAt: !1478)
!1542 = !DILocation(line: 666, column: 24, scope: !1451, inlinedAt: !1478)
!1543 = !DILocation(line: 670, column: 28, scope: !1544, inlinedAt: !1478)
!1544 = distinct !DILexicalBlock(scope: !1451, file: !3, line: 670, column: 6)
!1545 = !DILocation(line: 666, column: 5, scope: !1451, inlinedAt: !1478)
!1546 = !DILocation(line: 666, column: 9, scope: !1451, inlinedAt: !1478)
!1547 = !{!1548, !408, i64 64}
!1548 = !{!"rtt_event", !408, i64 0, !408, i64 8, !629, i64 16, !405, i64 60, !408, i64 64, !408, i64 72, !408, i64 80, !408, i64 88, !408, i64 96, !408, i64 104, !416, i64 112, !406, i64 113}
!1549 = !DILocation(line: 668, column: 2, scope: !1451, inlinedAt: !1478)
!1550 = !DILocation(line: 670, column: 15, scope: !1544, inlinedAt: !1478)
!1551 = !{!1208, !408, i64 0}
!1552 = !DILocation(line: 671, column: 20, scope: !1544, inlinedAt: !1478)
!1553 = !DILocation(line: 671, column: 3, scope: !1544, inlinedAt: !1478)
!1554 = !DILocation(line: 677, column: 24, scope: !1451, inlinedAt: !1478)
!1555 = !DILocation(line: 672, column: 42, scope: !1451, inlinedAt: !1478)
!1556 = !{!1208, !408, i64 8}
!1557 = !DILocalVariable(name: "prev_srtt", arg: 1, scope: !1558, file: !3, line: 377, type: !159)
!1558 = distinct !DISubprogram(name: "calculate_srtt", scope: !3, file: !3, line: 377, type: !1559, scopeLine: 378, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1561)
!1559 = !DISubroutineType(types: !1560)
!1560 = !{!159, !159, !159}
!1561 = !{!1557, !1562}
!1562 = !DILocalVariable(name: "rtt", arg: 2, scope: !1558, file: !3, line: 377, type: !159)
!1563 = !DILocation(line: 0, scope: !1558, inlinedAt: !1564)
!1564 = distinct !DILocation(line: 672, column: 18, scope: !1451, inlinedAt: !1478)
!1565 = !DILocation(line: 379, column: 7, scope: !1566, inlinedAt: !1564)
!1566 = distinct !DILexicalBlock(scope: !1558, file: !3, line: 379, column: 6)
!1567 = !DILocation(line: 379, column: 6, scope: !1558, inlinedAt: !1564)
!1568 = !DILocation(line: 672, column: 16, scope: !1451, inlinedAt: !1478)
!1569 = !DILocation(line: 675, column: 16, scope: !1451, inlinedAt: !1478)
!1570 = !{!1548, !408, i64 0}
!1571 = !DILocation(line: 676, column: 25, scope: !1451, inlinedAt: !1478)
!1572 = !DILocation(line: 676, column: 5, scope: !1451, inlinedAt: !1478)
!1573 = !DILocation(line: 676, column: 15, scope: !1451, inlinedAt: !1478)
!1574 = !{!1548, !408, i64 8}
!1575 = !DILocation(line: 677, column: 5, scope: !1451, inlinedAt: !1478)
!1576 = !DILocation(line: 677, column: 13, scope: !1451, inlinedAt: !1478)
!1577 = !{!1548, !408, i64 72}
!1578 = !DILocation(line: 678, column: 26, scope: !1451, inlinedAt: !1478)
!1579 = !DILocation(line: 678, column: 5, scope: !1451, inlinedAt: !1478)
!1580 = !DILocation(line: 678, column: 15, scope: !1451, inlinedAt: !1478)
!1581 = !{!1548, !408, i64 80}
!1582 = !DILocation(line: 679, column: 27, scope: !1451, inlinedAt: !1478)
!1583 = !DILocation(line: 679, column: 5, scope: !1451, inlinedAt: !1478)
!1584 = !DILocation(line: 679, column: 16, scope: !1451, inlinedAt: !1478)
!1585 = !{!1548, !408, i64 88}
!1586 = !DILocation(line: 680, column: 25, scope: !1451, inlinedAt: !1478)
!1587 = !DILocation(line: 680, column: 5, scope: !1451, inlinedAt: !1478)
!1588 = !DILocation(line: 680, column: 14, scope: !1451, inlinedAt: !1478)
!1589 = !{!1548, !408, i64 96}
!1590 = !DILocation(line: 681, column: 26, scope: !1451, inlinedAt: !1478)
!1591 = !DILocation(line: 681, column: 5, scope: !1451, inlinedAt: !1478)
!1592 = !DILocation(line: 681, column: 15, scope: !1451, inlinedAt: !1478)
!1593 = !{!1548, !408, i64 104}
!1594 = !DILocation(line: 682, column: 5, scope: !1451, inlinedAt: !1478)
!1595 = !DILocation(line: 682, column: 24, scope: !1451, inlinedAt: !1478)
!1596 = !DILocation(line: 683, column: 29, scope: !1451, inlinedAt: !1478)
!1597 = !DILocation(line: 683, column: 5, scope: !1451, inlinedAt: !1478)
!1598 = !DILocation(line: 683, column: 21, scope: !1451, inlinedAt: !1478)
!1599 = !{!1548, !416, i64 112}
!1600 = !DILocation(line: 684, column: 2, scope: !1451, inlinedAt: !1478)
!1601 = !DILocation(line: 685, column: 1, scope: !1451, inlinedAt: !1478)
!1602 = !DILocalVariable(name: "ctx", arg: 1, scope: !1603, file: !3, line: 543, type: !94)
!1603 = distinct !DISubprogram(name: "delete_closed_flows", scope: !3, file: !3, line: 543, type: !1604, scopeLine: 546, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1606)
!1604 = !DISubroutineType(types: !1605)
!1605 = !{null, !94, !606, !174, !174}
!1606 = !{!1602, !1607, !1608, !1609, !1610}
!1607 = !DILocalVariable(name: "p_info", arg: 2, scope: !1603, file: !3, line: 543, type: !606)
!1608 = !DILocalVariable(name: "flow", arg: 3, scope: !1603, file: !3, line: 544, type: !174)
!1609 = !DILocalVariable(name: "rev_flow", arg: 4, scope: !1603, file: !3, line: 545, type: !174)
!1610 = !DILocalVariable(name: "has_opened", scope: !1603, file: !3, line: 547, type: !186)
!1611 = !DILocation(line: 0, scope: !1603, inlinedAt: !1612)
!1612 = distinct !DILocation(line: 706, column: 2, scope: !432)
!1613 = !DILocation(line: 550, column: 11, scope: !1614, inlinedAt: !1612)
!1614 = distinct !DILexicalBlock(scope: !1603, file: !3, line: 550, column: 6)
!1615 = !DILocation(line: 550, column: 23, scope: !1614, inlinedAt: !1612)
!1616 = !DILocation(line: 550, column: 56, scope: !1614, inlinedAt: !1612)
!1617 = !DILocation(line: 552, column: 22, scope: !1618, inlinedAt: !1612)
!1618 = distinct !DILexicalBlock(scope: !1614, file: !3, line: 551, column: 56)
!1619 = !DILocation(line: 553, column: 8, scope: !1620, inlinedAt: !1612)
!1620 = distinct !DILexicalBlock(scope: !1618, file: !3, line: 553, column: 7)
!1621 = !DILocation(line: 553, column: 60, scope: !1620, inlinedAt: !1612)
!1622 = !DILocalVariable(name: "ctx", arg: 1, scope: !1623, file: !3, line: 427, type: !94)
!1623 = distinct !DISubprogram(name: "send_flow_event", scope: !3, file: !3, line: 427, type: !1624, scopeLine: 429, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1626)
!1624 = !DISubroutineType(types: !1625)
!1625 = !{null, !94, !606, !186}
!1626 = !{!1622, !1627, !1628, !1629}
!1627 = !DILocalVariable(name: "p_info", arg: 2, scope: !1623, file: !3, line: 427, type: !606)
!1628 = !DILocalVariable(name: "rev_flow", arg: 3, scope: !1623, file: !3, line: 428, type: !186)
!1629 = !DILocalVariable(name: "fe", scope: !1623, file: !3, line: 430, type: !1497)
!1630 = !DILocation(line: 0, scope: !1623, inlinedAt: !1631)
!1631 = distinct !DILocation(line: 555, column: 4, scope: !1620, inlinedAt: !1612)
!1632 = !DILocation(line: 430, column: 2, scope: !1623, inlinedAt: !1631)
!1633 = !DILocation(line: 430, column: 20, scope: !1623, inlinedAt: !1631)
!1634 = !DILocation(line: 430, column: 25, scope: !1623, inlinedAt: !1631)
!1635 = !DILocation(line: 434, column: 24, scope: !1623, inlinedAt: !1631)
!1636 = !DILocation(line: 432, column: 30, scope: !1623, inlinedAt: !1631)
!1637 = !DILocation(line: 433, column: 21, scope: !1623, inlinedAt: !1631)
!1638 = !DILocation(line: 0, scope: !1639, inlinedAt: !1631)
!1639 = distinct !DILexicalBlock(scope: !1623, file: !3, line: 438, column: 6)
!1640 = !DILocation(line: 446, column: 2, scope: !1623, inlinedAt: !1631)
!1641 = !DILocation(line: 447, column: 1, scope: !1623, inlinedAt: !1631)
!1642 = !DILocation(line: 555, column: 4, scope: !1620, inlinedAt: !1612)
!1643 = !DILocation(line: 559, column: 15, scope: !1644, inlinedAt: !1612)
!1644 = distinct !DILexicalBlock(scope: !1603, file: !3, line: 559, column: 6)
!1645 = !DILocation(line: 559, column: 26, scope: !1644, inlinedAt: !1612)
!1646 = !DILocation(line: 559, column: 37, scope: !1644, inlinedAt: !1612)
!1647 = !DILocation(line: 559, column: 6, scope: !1603, inlinedAt: !1612)
!1648 = !DILocation(line: 560, column: 26, scope: !1649, inlinedAt: !1612)
!1649 = distinct !DILexicalBlock(scope: !1644, file: !3, line: 559, column: 65)
!1650 = !DILocation(line: 561, column: 8, scope: !1651, inlinedAt: !1612)
!1651 = distinct !DILexicalBlock(scope: !1649, file: !3, line: 561, column: 7)
!1652 = !DILocation(line: 562, column: 32, scope: !1651, inlinedAt: !1612)
!1653 = !DILocation(line: 0, scope: !1623, inlinedAt: !1654)
!1654 = distinct !DILocation(line: 564, column: 4, scope: !1651, inlinedAt: !1612)
!1655 = !DILocation(line: 430, column: 2, scope: !1623, inlinedAt: !1654)
!1656 = !DILocation(line: 430, column: 20, scope: !1623, inlinedAt: !1654)
!1657 = !DILocation(line: 430, column: 25, scope: !1623, inlinedAt: !1654)
!1658 = !DILocation(line: 434, column: 24, scope: !1623, inlinedAt: !1654)
!1659 = !DILocation(line: 432, column: 30, scope: !1623, inlinedAt: !1654)
!1660 = !DILocation(line: 433, column: 21, scope: !1623, inlinedAt: !1654)
!1661 = !DILocation(line: 0, scope: !1639, inlinedAt: !1654)
!1662 = !DILocation(line: 446, column: 2, scope: !1623, inlinedAt: !1654)
!1663 = !DILocation(line: 447, column: 1, scope: !1623, inlinedAt: !1654)
!1664 = !DILocation(line: 564, column: 4, scope: !1651, inlinedAt: !1612)
!1665 = !DILocation(line: 708, column: 1, scope: !432)
!1666 = distinct !DISubprogram(name: "pping_tc_ingress", scope: !3, file: !3, line: 731, type: !292, scopeLine: 732, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1667)
!1667 = !{!1668, !1669}
!1668 = !DILocalVariable(name: "skb", arg: 1, scope: !1666, file: !3, line: 731, type: !294)
!1669 = !DILocalVariable(name: "pctx", scope: !1666, file: !3, line: 733, type: !387)
!1670 = !DILocation(line: 0, scope: !1666)
!1671 = !DILocation(line: 733, column: 2, scope: !1666)
!1672 = !DILocation(line: 733, column: 25, scope: !1666)
!1673 = !DILocation(line: 734, column: 30, scope: !1666)
!1674 = !DILocation(line: 734, column: 19, scope: !1666)
!1675 = !DILocation(line: 734, column: 11, scope: !1666)
!1676 = !DILocation(line: 733, column: 32, scope: !1666)
!1677 = !DILocation(line: 735, column: 34, scope: !1666)
!1678 = !DILocation(line: 735, column: 23, scope: !1666)
!1679 = !DILocation(line: 735, column: 15, scope: !1666)
!1680 = !DILocation(line: 737, column: 9, scope: !1666)
!1681 = !DILocation(line: 736, column: 19, scope: !1666)
!1682 = !DILocation(line: 738, column: 27, scope: !1666)
!1683 = !{!404, !405, i64 36}
!1684 = !DILocation(line: 742, column: 2, scope: !1666)
!1685 = !DILocation(line: 745, column: 1, scope: !1666)
!1686 = !DILocation(line: 744, column: 2, scope: !1666)
!1687 = distinct !DISubprogram(name: "pping_xdp_ingress", scope: !3, file: !3, line: 749, type: !1688, scopeLine: 750, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1699)
!1688 = !DISubroutineType(types: !1689)
!1689 = !{!136, !1690}
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xdp_md", file: !6, line: 4374, size: 192, elements: !1692)
!1692 = !{!1693, !1694, !1695, !1696, !1697, !1698}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1691, file: !6, line: 4375, baseType: !104, size: 32)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "data_end", scope: !1691, file: !6, line: 4376, baseType: !104, size: 32, offset: 32)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "data_meta", scope: !1691, file: !6, line: 4377, baseType: !104, size: 32, offset: 64)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "ingress_ifindex", scope: !1691, file: !6, line: 4379, baseType: !104, size: 32, offset: 96)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "rx_queue_index", scope: !1691, file: !6, line: 4380, baseType: !104, size: 32, offset: 128)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "egress_ifindex", scope: !1691, file: !6, line: 4382, baseType: !104, size: 32, offset: 160)
!1699 = !{!1700, !1701}
!1700 = !DILocalVariable(name: "ctx", arg: 1, scope: !1687, file: !3, line: 749, type: !1690)
!1701 = !DILocalVariable(name: "pctx", scope: !1687, file: !3, line: 751, type: !387)
!1702 = !DILocation(line: 0, scope: !1687)
!1703 = !DILocation(line: 751, column: 2, scope: !1687)
!1704 = !DILocation(line: 751, column: 25, scope: !1687)
!1705 = !DILocation(line: 752, column: 30, scope: !1687)
!1706 = !{!1707, !405, i64 0}
!1707 = !{!"xdp_md", !405, i64 0, !405, i64 4, !405, i64 8, !405, i64 12, !405, i64 16, !405, i64 20}
!1708 = !DILocation(line: 752, column: 19, scope: !1687)
!1709 = !DILocation(line: 752, column: 11, scope: !1687)
!1710 = !DILocation(line: 751, column: 32, scope: !1687)
!1711 = !DILocation(line: 753, column: 34, scope: !1687)
!1712 = !{!1707, !405, i64 4}
!1713 = !DILocation(line: 753, column: 23, scope: !1687)
!1714 = !DILocation(line: 753, column: 15, scope: !1687)
!1715 = !DILocation(line: 755, column: 9, scope: !1687)
!1716 = !DILocation(line: 754, column: 14, scope: !1687)
!1717 = !DILocation(line: 756, column: 27, scope: !1687)
!1718 = !{!1707, !405, i64 12}
!1719 = !DILocation(line: 760, column: 2, scope: !1687)
!1720 = !DILocation(line: 763, column: 1, scope: !1687)
!1721 = !DILocation(line: 762, column: 2, scope: !1687)
