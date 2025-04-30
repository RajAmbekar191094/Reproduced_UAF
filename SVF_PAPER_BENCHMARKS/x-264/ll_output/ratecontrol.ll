; ModuleID = 'encoder/ratecontrol.c'
source_filename = "encoder/ratecontrol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x264_t = type { %struct.x264_param_t, [128 x ptr], i64, i32, i32, %struct.anon.2, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1 x %struct.x264_sps_t], ptr, [1 x %struct.x264_pps_t], ptr, i32, [4 x ptr], [2 x ptr], [4 x ptr], [2 x ptr], [4 x ptr], [2 x ptr], [4 x ptr], [2 x ptr], ptr, [8 x i8], [2 x [64 x i32]], [2 x [64 x i16]], [2 x i32], %struct.x264_slice_header_t, [8 x i8], %struct.x264_cabac_t, %struct.anon.6, ptr, ptr, i32, [19 x ptr], i32, [19 x ptr], [2 x i32], %struct.anon.8, %struct.anon.9, ptr, %struct.anon.12, [7 x ptr], [7 x ptr], [12 x ptr], [12 x ptr], %struct.x264_pixel_function_t, %struct.x264_mc_functions_t, %struct.x264_dct_function_t, %struct.x264_zigzag_function_t, %struct.x264_quant_function_t, %struct.x264_deblock_function_t }
%struct.x264_param_t = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [16 x i8], [16 x i8], [16 x i8], [16 x i8], [64 x i8], [64 x i8], ptr, ptr, i32, i32, ptr, %struct.anon.0, %struct.anon.1, i32, i32, i32 }
%struct.anon = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.0 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, [2 x i32], i32, i32 }
%struct.anon.1 = type { i32, i32, i32, i32, i32, i32, float, float, i32, i32, float, float, float, i32, float, i32, ptr, i32, ptr, float, float, float, ptr, i32, ptr }
%struct.anon.2 = type { i32, [8 x %struct.x264_nal_t], i32, ptr, %struct.bs_s, i32 }
%struct.x264_nal_t = type { i32, i32, i32, ptr }
%struct.bs_s = type { ptr, ptr, ptr, i64, i32, i32 }
%struct.x264_sps_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon.3, i32, %struct.anon.4, i32 }
%struct.anon.3 = type { i32, i32, i32, i32 }
%struct.anon.4 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.x264_pps_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x ptr] }
%struct.x264_slice_header_t = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, [2 x [16 x %struct.anon.5]], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.5 = type { i32, i32 }
%struct.x264_cabac_t = type { i32, i32, i32, i32, ptr, ptr, ptr, [8 x i8], i32, [460 x i8] }
%struct.anon.6 = type { [67 x ptr], [67 x ptr], [340 x ptr], ptr, [18 x ptr], i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.8 = type { [16 x i16], [2 x [4 x i16]], [4 x [64 x i16]], [24 x [16 x i16]] }
%struct.anon.9 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [4 x i32], [16 x i32], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], [2 x ptr], [2 x ptr], [2 x [32 x ptr]], ptr, ptr, [2 x [3 x ptr]], ptr, i32, i32, [4 x i32], i32, i32, i32, i32, i32, i32, i32, %struct.anon.10, %struct.anon.11, i32, i32, i32, i32, i32, i32, i32, i32, [16 x [2 x i16]], [32 x [4 x i16]], [2 x i8], [16 x i8], [14 x i8] }
%struct.anon.10 = type { [384 x i8], [864 x i8], [256 x i8], [256 x i8], [3 x [64 x i16]], [15 x [16 x i16]], [4 x [64 x i16]], [16 x [16 x i16]], [4 x [4 x i32]], i32, [2 x [2 x i32]], i32, [3 x ptr], [3 x ptr], [3 x ptr], [2 x i32], [2 x [32 x [6 x ptr]]], [2 x [16 x ptr]], [3 x i32], [12 x i8] }
%struct.anon.11 = type { [48 x i8], [48 x i8], [2 x [48 x i8]], [2 x [48 x [2 x i16]]], [2 x [48 x [2 x i16]]], [48 x i8], [2 x [48 x [2 x i16]]], [2 x [48 x i8]], [2 x i16], i32, i32, [4 x i8] }
%struct.anon.12 = type { %struct.anon.13, [5 x i32], [5 x i64], [5 x double], [17 x i32], [5 x i64], [5 x double], [5 x double], [5 x double], [5 x double], [5 x double], [5 x [19 x i64]], [2 x [17 x i64]], [2 x i64], [2 x [2 x [32 x i64]]], [2 x i32], [2 x i32] }
%struct.anon.13 = type { i32, i32, i32, [19 x i32], i32, i32, i32, [2 x i32], [2 x [32 x i32]], [17 x i32], i32, i32, i32, [2 x i32], [3 x i64], double }
%struct.x264_pixel_function_t = type { [7 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], [4 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], [4 x ptr], [4 x ptr], ptr, ptr, [7 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], ptr, ptr, ptr, ptr, ptr, ptr }
%struct.x264_mc_functions_t = type { ptr, ptr, ptr, [10 x ptr], [7 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.x264_dct_function_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.x264_zigzag_function_t = type { ptr, ptr, ptr, ptr, ptr }
%struct.x264_quant_function_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [6 x ptr] }
%struct.x264_deblock_function_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.x264_frame_t = type { i32, i32, i32, i64, i32, i32, i32, float, float, i32, [3 x i32], [3 x i32], [3 x i32], i32, i32, i32, [3 x ptr], [4 x ptr], [4 x ptr], ptr, [4 x ptr], [4 x ptr], ptr, [2 x ptr], [2 x [17 x ptr]], [2 x [17 x ptr]], [2 x ptr], [2 x i32], [2 x [16 x i32]], [16 x i32], [18 x [18 x i32]], [18 x [18 x i32]], i32, [18 x i32], [18 x [18 x ptr]], ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, i32, %union.pthread_mutex_t, %union.pthread_cond_t }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%union.pthread_cond_t = type { %struct.__pthread_cond_s }
%struct.__pthread_cond_s = type { %union.__atomic_wide_counter, %union.__atomic_wide_counter, [2 x i32], [2 x i32], i32, i32, [2 x i32] }
%union.__atomic_wide_counter = type { i64 }
%struct.x264_ratecontrol_t = type { i32, i32, i32, i32, double, double, double, i32, [5 x i32], ptr, i32, i32, float, float, float, i32, double, double, double, double, ptr, i32, double, double, double, double, double, double, double, double, double, double, ptr, ptr, i32, ptr, double, [5 x double], i32, double, double, double, [5 x double], [5 x double], double, double, double, ptr, [5 x %struct.predictor_t], ptr, i32, i32, i32, ptr, ptr }
%struct.predictor_t = type { double, double, double }
%struct.x264_zone_t = type { i32, i32, i32, i32, float, ptr }
%struct.ratecontrol_entry_t = type { i32, i32, float, i32, i32, i32, i64, double, float, i32, i32, i32, i32, float, i8 }

@.str = private unnamed_addr constant [50 x i8] c"constant rate-factor is incompatible with 2pass.\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [48 x i8] c"VBV is incompatible with constant QP, ignored.\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [39 x i8] c"VBV maxrate unspecified, assuming CBR\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [49 x i8] c"max bitrate less than average bitrate, ignored.\0A\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [42 x i8] c"VBV buffer size too small, using %d kbit\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [40 x i8] c"VBV maxrate specified, but no bufsize.\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [40 x i8] c"bitrate tolerance too small, using .01\0A\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [23 x i8] c"failed to parse zones\0A\00", align 1, !dbg !34
@.str.8 = private unnamed_addr constant [24 x i8] c"h->param.rc.psz_stat_in\00", align 1, !dbg !39
@.str.9 = private unnamed_addr constant [22 x i8] c"encoder/ratecontrol.c\00", align 1, !dbg !44
@__PRETTY_FUNCTION__.x264_ratecontrol_new = private unnamed_addr constant [35 x i8] c"int x264_ratecontrol_new(x264_t *)\00", align 1, !dbg !49
@.str.10 = private unnamed_addr constant [41 x i8] c"ratecontrol_init: can't open stats file\0A\00", align 1, !dbg !55
@.str.11 = private unnamed_addr constant [10 x i8] c"#options:\00", align 1, !dbg !60
@.str.12 = private unnamed_addr constant [9 x i8] c"bframes=\00", align 1, !dbg !65
@.str.13 = private unnamed_addr constant [11 x i8] c"bframes=%d\00", align 1, !dbg !70
@.str.14 = private unnamed_addr constant [55 x i8] c"different number of B-frames than 1st pass (%d vs %d)\0A\00", align 1, !dbg !75
@.str.15 = private unnamed_addr constant [12 x i8] c"b_pyramid=1\00", align 1, !dbg !80
@.str.16 = private unnamed_addr constant [38 x i8] c"1st pass used B-pyramid, 2nd doesn't\0A\00", align 1, !dbg !85
@.str.17 = private unnamed_addr constant [8 x i8] c"keyint=\00", align 1, !dbg !90
@.str.18 = private unnamed_addr constant [10 x i8] c"keyint=%d\00", align 1, !dbg !95
@.str.19 = private unnamed_addr constant [43 x i8] c"different keyint than 1st pass (%d vs %d)\0A\00", align 1, !dbg !97
@.str.20 = private unnamed_addr constant [5 x i8] c"qp=0\00", align 1, !dbg !102
@.str.21 = private unnamed_addr constant [62 x i8] c"1st pass was lossless, bitrate prediction will be inaccurate\0A\00", align 1, !dbg !107
@.str.22 = private unnamed_addr constant [9 x i8] c"b_adapt=\00", align 1, !dbg !112
@.str.23 = private unnamed_addr constant [11 x i8] c"b_adapt=%d\00", align 1, !dbg !114
@.str.24 = private unnamed_addr constant [50 x i8] c"b_adapt method specified in stats file not valid\0A\00", align 1, !dbg !116
@.str.25 = private unnamed_addr constant [10 x i8] c"scenecut=\00", align 1, !dbg !118
@.str.26 = private unnamed_addr constant [12 x i8] c"scenecut=%d\00", align 1, !dbg !120
@.str.27 = private unnamed_addr constant [6 x i8] c"(pre)\00", align 1, !dbg !122
@.str.28 = private unnamed_addr constant [51 x i8] c"scenecut method specified in stats file not valid\0A\00", align 1, !dbg !127
@.str.29 = private unnamed_addr constant [18 x i8] c"empty stats file\0A\00", align 1, !dbg !132
@.str.30 = private unnamed_addr constant [52 x i8] c"2nd pass has fewer frames than 1st pass (%d vs %d)\0A\00", align 1, !dbg !137
@.str.31 = private unnamed_addr constant [51 x i8] c"2nd pass has more frames than 1st pass (%d vs %d)\0A\00", align 1, !dbg !142
@.str.32 = private unnamed_addr constant [8 x i8] c" in:%d \00", align 1, !dbg !144
@.str.33 = private unnamed_addr constant [40 x i8] c"bad frame number (%d) at stats line %d\0A\00", align 1, !dbg !146
@.str.34 = private unnamed_addr constant [76 x i8] c" in:%*d out:%*d type:%c q:%f tex:%d mv:%d misc:%d imb:%d pmb:%d smb:%d d:%c\00", align 1, !dbg !148
@.str.35 = private unnamed_addr constant [50 x i8] c"statistics are damaged at line %d, parser out=%d\0A\00", align 1, !dbg !153
@.str.36 = private unnamed_addr constant [6 x i8] c".temp\00", align 1, !dbg !155
@.str.37 = private unnamed_addr constant [3 x i8] c"wb\00", align 1, !dbg !157
@.str.38 = private unnamed_addr constant [14 x i8] c"#options: %s\0A\00", align 1, !dbg !162
@.str.39 = private unnamed_addr constant [24 x i8] c"final ratefactor: %.2f\0A\00", align 1, !dbg !167
@.str.40 = private unnamed_addr constant [31 x i8] c"failed to rename \22%s\22 to \22%s\22\0A\00", align 1, !dbg !169
@.str.41 = private unnamed_addr constant [38 x i8] c"frame >= 0 && frame < rc->num_entries\00", align 1, !dbg !174
@__PRETTY_FUNCTION__.x264_ratecontrol_start = private unnamed_addr constant [43 x i8] c"void x264_ratecontrol_start(x264_t *, int)\00", align 1, !dbg !176
@.str.42 = private unnamed_addr constant [45 x i8] c"2nd pass has more frames than 1st pass (%d)\0A\00", align 1, !dbg !179
@.str.43 = private unnamed_addr constant [38 x i8] c"continuing anyway, at constant QP=%d\0A\00", align 1, !dbg !184
@.str.44 = private unnamed_addr constant [29 x i8] c"disabling adaptive B-frames\0A\00", align 1, !dbg !186
@.str.45 = private unnamed_addr constant [77 x i8] c"in:%d out:%d type:%c q:%.2f tex:%d mv:%d misc:%d imb:%d pmb:%d smb:%d d:%c;\0A\00", align 1, !dbg !191
@.str.46 = private unnamed_addr constant [2 x i8] c"/\00", align 1, !dbg !196
@.str.47 = private unnamed_addr constant [31 x i8] c"invalid zone: start=%d end=%d\0A\00", align 1, !dbg !201
@.str.48 = private unnamed_addr constant [33 x i8] c"invalid zone: bitrate_factor=%f\0A\00", align 1, !dbg !203
@.str.49 = private unnamed_addr constant [13 x i8] c"%u,%u,q=%u%n\00", align 1, !dbg !208
@.str.50 = private unnamed_addr constant [13 x i8] c"%u,%u,b=%f%n\00", align 1, !dbg !213
@.str.51 = private unnamed_addr constant [8 x i8] c"%u,%u%n\00", align 1, !dbg !215
@.str.52 = private unnamed_addr constant [20 x i8] c"invalid zone: \22%s\22\0A\00", align 1, !dbg !217
@.str.53 = private unnamed_addr constant [2 x i8] c",\00", align 1, !dbg !222
@.str.54 = private unnamed_addr constant [29 x i8] c"invalid zone param: %s = %s\0A\00", align 1, !dbg !224
@.str.55 = private unnamed_addr constant [27 x i8] c"VBV underflow (%.0f bits)\0A\00", align 1, !dbg !226
@.str.56 = private unnamed_addr constant [33 x i8] c"slice=%c but 2pass stats say %c\0A\00", align 1, !dbg !231
@slice_type_to_char = internal unnamed_addr constant [5 x i8] c"PBISS", align 1, !dbg !233
@.str.57 = private unnamed_addr constant [60 x i8] c"requested bitrate is too low. estimated minimum is %d kbps\0A\00", align 1, !dbg !316
@.str.58 = private unnamed_addr constant [15 x i8] c"qscale[i] >= 0\00", align 1, !dbg !321
@__PRETTY_FUNCTION__.init_pass2 = private unnamed_addr constant [25 x i8] c"int init_pass2(x264_t *)\00", align 1, !dbg !326
@.str.60 = private unnamed_addr constant [21 x i8] c"rce->new_qscale >= 0\00", align 1, !dbg !336
@.str.61 = private unnamed_addr constant [39 x i8] c"Error: 2pass curve failed to converge\0A\00", align 1, !dbg !341
@.str.62 = private unnamed_addr constant [58 x i8] c"target: %.2f kbit/s, expected: %.2f kbit/s, avg QP: %.4f\0A\00", align 1, !dbg !343
@.str.63 = private unnamed_addr constant [63 x i8] c"try reducing target bitrate or reducing qp_min (currently %d)\0A\00", align 1, !dbg !348
@.str.64 = private unnamed_addr constant [29 x i8] c"try reducing target bitrate\0A\00", align 1, !dbg !353
@.str.65 = private unnamed_addr constant [67 x i8] c"try increasing target bitrate or increasing qp_max (currently %d)\0A\00", align 1, !dbg !355
@.str.66 = private unnamed_addr constant [31 x i8] c"try increasing target bitrate\0A\00", align 1, !dbg !360
@.str.67 = private unnamed_addr constant [16 x i8] c"internal error\0A\00", align 1, !dbg !362
@.str.68 = private unnamed_addr constant [49 x i8] c"vbv-maxrate issue, qpmax or vbv-maxrate too low\0A\00", align 1, !dbg !367

; Function Attrs: nounwind uwtable
define dso_local void @x264_adaptive_quant_frame(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !dbg !377 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1549, metadata !DIExpression()), !dbg !1560
  call void @llvm.dbg.value(metadata ptr %1, metadata !1550, metadata !DIExpression()), !dbg !1560
  call void @llvm.dbg.value(metadata i32 0, metadata !1552, metadata !DIExpression()), !dbg !1560
  %3 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 16
  call void @llvm.dbg.value(metadata i32 0, metadata !1552, metadata !DIExpression()), !dbg !1560
  %4 = load ptr, ptr %3, align 16, !dbg !1561, !tbaa !1562
  %5 = getelementptr inbounds %struct.x264_sps_t, ptr %4, i64 0, i32 17, !dbg !1592
  %6 = load i32, ptr %5, align 4, !dbg !1592, !tbaa !1593
  %7 = icmp sgt i32 %6, 0, !dbg !1597
  br i1 %7, label %8, label %66, !dbg !1598

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 14
  %10 = getelementptr inbounds %struct.x264_frame_t, ptr %1, i64 0, i32 38
  %11 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 1
  %12 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 36, i32 11
  %13 = getelementptr inbounds %struct.x264_frame_t, ptr %1, i64 0, i32 41
  %14 = getelementptr inbounds %struct.x264_sps_t, ptr %4, i64 0, i32 16, !dbg !1599
  %15 = load i32, ptr %14, align 4, !dbg !1599, !tbaa !1600
  %16 = icmp sgt i32 %15, 0, !dbg !1601
  br i1 %16, label %17, label %66

17:                                               ; preds = %8, %60
  %18 = phi ptr [ %61, %60 ], [ %4, %8 ]
  %19 = phi i32 [ %62, %60 ], [ 0, %8 ]
  call void @llvm.dbg.value(metadata i32 %19, metadata !1552, metadata !DIExpression()), !dbg !1560
  call void @llvm.dbg.value(metadata i32 0, metadata !1551, metadata !DIExpression()), !dbg !1560
  %20 = getelementptr inbounds %struct.x264_sps_t, ptr %18, i64 0, i32 16, !dbg !1599
  %21 = load i32, ptr %20, align 4, !dbg !1599, !tbaa !1600
  %22 = icmp sgt i32 %21, 0, !dbg !1601
  br i1 %22, label %23, label %60, !dbg !1602

23:                                               ; preds = %17, %54
  %24 = phi i32 [ %55, %54 ], [ 0, %17 ]
  call void @llvm.dbg.value(metadata i32 %24, metadata !1551, metadata !DIExpression()), !dbg !1560
  %25 = tail call fastcc i32 @ac_energy_mb(ptr noundef nonnull %0, i32 noundef %24, i32 noundef %19, ptr noundef %1), !dbg !1603
  call void @llvm.dbg.value(metadata i32 %25, metadata !1553, metadata !DIExpression()), !dbg !1604
  %26 = load float, ptr %9, align 8, !dbg !1605, !tbaa !1606
  %27 = fpext float %26 to double, !dbg !1607
  %28 = fmul fast double %27, 1.500000e+00, !dbg !1608
  %29 = sitofp i32 %25 to float, !dbg !1609
  %30 = tail call fast float @llvm.log.f32(float %29), !dbg !1610
  %31 = fpext float %30 to double, !dbg !1610
  %32 = fadd fast double %31, -1.000000e+01, !dbg !1611
  %33 = fmul fast double %28, %32, !dbg !1612
  %34 = fptrunc double %33 to float, !dbg !1607
  call void @llvm.dbg.value(metadata float %34, metadata !1559, metadata !DIExpression()), !dbg !1604
  %35 = load ptr, ptr %10, align 8, !dbg !1613, !tbaa !1614
  %36 = load i32, ptr %11, align 4, !dbg !1616, !tbaa !1617
  %37 = mul nsw i32 %36, %19, !dbg !1618
  %38 = add nsw i32 %37, %24, !dbg !1619
  %39 = sext i32 %38 to i64, !dbg !1620
  %40 = getelementptr inbounds float, ptr %35, i64 %39, !dbg !1620
  store float %34, ptr %40, align 4, !dbg !1621, !tbaa !1622
  %41 = load i32, ptr %12, align 16, !dbg !1623, !tbaa !1625
  %42 = icmp eq i32 %41, 0, !dbg !1626
  br i1 %42, label %54, label %43, !dbg !1627

43:                                               ; preds = %23
  %44 = fneg fast float %34, !dbg !1628
  %45 = fpext float %44 to double, !dbg !1628
  %46 = fmul fast double %45, 0x3FC5555555555555, !dbg !1628
  %47 = tail call fast double @llvm.exp2.f64(double %46), !dbg !1628
  %48 = fmul fast double %47, 2.560000e+02, !dbg !1628
  %49 = fadd fast double %48, 5.000000e-01, !dbg !1628
  %50 = fptosi double %49 to i32, !dbg !1628
  %51 = trunc i32 %50 to i16, !dbg !1628
  %52 = load ptr, ptr %13, align 8, !dbg !1629, !tbaa !1630
  %53 = getelementptr inbounds i16, ptr %52, i64 %39, !dbg !1631
  store i16 %51, ptr %53, align 2, !dbg !1632, !tbaa !1633
  br label %54, !dbg !1631

54:                                               ; preds = %43, %23
  %55 = add nuw nsw i32 %24, 1, !dbg !1635
  call void @llvm.dbg.value(metadata i32 %55, metadata !1551, metadata !DIExpression()), !dbg !1560
  %56 = load ptr, ptr %3, align 16, !dbg !1636, !tbaa !1562
  %57 = getelementptr inbounds %struct.x264_sps_t, ptr %56, i64 0, i32 16, !dbg !1599
  %58 = load i32, ptr %57, align 4, !dbg !1599, !tbaa !1600
  %59 = icmp slt i32 %55, %58, !dbg !1601
  br i1 %59, label %23, label %60, !dbg !1602, !llvm.loop !1637

60:                                               ; preds = %54, %17
  %61 = phi ptr [ %18, %17 ], [ %56, %54 ], !dbg !1561
  %62 = add nuw nsw i32 %19, 1, !dbg !1640
  call void @llvm.dbg.value(metadata i32 %62, metadata !1552, metadata !DIExpression()), !dbg !1560
  %63 = getelementptr inbounds %struct.x264_sps_t, ptr %61, i64 0, i32 17, !dbg !1592
  %64 = load i32, ptr %63, align 4, !dbg !1592, !tbaa !1593
  %65 = icmp slt i32 %62, %64, !dbg !1597
  br i1 %65, label %17, label %66, !dbg !1598, !llvm.loop !1641

66:                                               ; preds = %60, %8, %2
  ret void, !dbg !1644
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ac_energy_mb(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #2 !dbg !1645 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !1649, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i32 %1, metadata !1650, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i32 %2, metadata !1651, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata ptr %3, metadata !1652, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i32 0, metadata !1653, metadata !DIExpression()), !dbg !1663
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20, !dbg !1664
  call void @llvm.dbg.value(metadata i32 0, metadata !1655, metadata !DIExpression()), !dbg !1663
  %6 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 16
  call void @llvm.dbg.value(metadata i32 0, metadata !1653, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i32 0, metadata !1655, metadata !DIExpression()), !dbg !1663
  %7 = and i32 %2, -2
  %8 = and i32 %2, 1
  %9 = icmp eq i32 %8, 0
  call void @llvm.dbg.value(metadata i32 0, metadata !1653, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i64 0, metadata !1655, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i32 16, metadata !1656, metadata !DIExpression()), !dbg !1665
  %10 = getelementptr inbounds %struct.x264_frame_t, ptr %3, i64 0, i32 10, i64 0, !dbg !1666
  %11 = load i32, ptr %10, align 4, !dbg !1666, !tbaa !1667
  call void @llvm.dbg.value(metadata i32 %11, metadata !1660, metadata !DIExpression()), !dbg !1665
  %12 = load i32, ptr %6, align 16, !dbg !1668, !tbaa !1669
  %13 = icmp eq i32 %12, 0, !dbg !1670
  br i1 %13, label %20, label %14, !dbg !1670

14:                                               ; preds = %4
  %15 = mul nsw i32 %11, %7, !dbg !1671
  %16 = add nsw i32 %15, %1, !dbg !1672
  %17 = shl nsw i32 %16, 4, !dbg !1673
  %18 = select i1 %9, i32 0, i32 %11, !dbg !1674
  %19 = add nsw i32 %17, %18, !dbg !1675
  br label %24, !dbg !1670

20:                                               ; preds = %4
  %21 = mul nsw i32 %11, %2, !dbg !1676
  %22 = add nsw i32 %21, %1, !dbg !1677
  %23 = shl nsw i32 %22, 4, !dbg !1678
  br label %24, !dbg !1670

24:                                               ; preds = %20, %14
  %25 = phi i32 [ %19, %14 ], [ %23, %20 ], !dbg !1670
  call void @llvm.dbg.value(metadata i32 %25, metadata !1661, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i32 poison, metadata !1662, metadata !DIExpression()), !dbg !1665
  %26 = shl i32 %11, %12, !dbg !1679
  call void @llvm.dbg.value(metadata i32 %26, metadata !1660, metadata !DIExpression()), !dbg !1665
  %27 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 52, i32 11, i64 0, !dbg !1680
  %28 = load ptr, ptr %27, align 8, !dbg !1680, !tbaa !1681
  %29 = getelementptr inbounds %struct.x264_frame_t, ptr %3, i64 0, i32 16, i64 0, !dbg !1682
  %30 = load ptr, ptr %29, align 8, !dbg !1682, !tbaa !1681
  %31 = sext i32 %25 to i64, !dbg !1683
  %32 = getelementptr inbounds i8, ptr %30, i64 %31, !dbg !1683
  call void @llvm.dbg.value(metadata ptr %5, metadata !1654, metadata !DIExpression(DW_OP_deref)), !dbg !1663
  %33 = call i32 %28(ptr noundef %32, i32 noundef %26, ptr noundef nonnull %5) #20, !dbg !1680
  call void @llvm.dbg.value(metadata i32 %33, metadata !1653, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i64 1, metadata !1655, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i32 %33, metadata !1653, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i64 1, metadata !1655, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i32 8, metadata !1656, metadata !DIExpression()), !dbg !1665
  %34 = getelementptr inbounds %struct.x264_frame_t, ptr %3, i64 0, i32 10, i64 1, !dbg !1666
  %35 = load i32, ptr %34, align 4, !dbg !1666, !tbaa !1667
  call void @llvm.dbg.value(metadata i32 %35, metadata !1660, metadata !DIExpression()), !dbg !1665
  %36 = load i32, ptr %6, align 16, !dbg !1668, !tbaa !1669
  %37 = icmp eq i32 %36, 0, !dbg !1670
  br i1 %37, label %44, label %38, !dbg !1670

38:                                               ; preds = %24
  %39 = mul nsw i32 %35, %7, !dbg !1671
  %40 = add nsw i32 %39, %1, !dbg !1672
  %41 = shl nsw i32 %40, 3, !dbg !1673
  %42 = select i1 %9, i32 0, i32 %35, !dbg !1674
  %43 = add nsw i32 %41, %42, !dbg !1675
  br label %48, !dbg !1670

44:                                               ; preds = %24
  %45 = mul nsw i32 %35, %2, !dbg !1676
  %46 = add nsw i32 %45, %1, !dbg !1677
  %47 = shl nsw i32 %46, 3, !dbg !1678
  br label %48, !dbg !1670

48:                                               ; preds = %44, %38
  %49 = phi i32 [ %43, %38 ], [ %47, %44 ], !dbg !1670
  call void @llvm.dbg.value(metadata i32 %49, metadata !1661, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i32 poison, metadata !1662, metadata !DIExpression()), !dbg !1665
  %50 = shl i32 %35, %36, !dbg !1679
  call void @llvm.dbg.value(metadata i32 %50, metadata !1660, metadata !DIExpression()), !dbg !1665
  %51 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 52, i32 11, i64 3, !dbg !1680
  %52 = load ptr, ptr %51, align 8, !dbg !1680, !tbaa !1681
  %53 = getelementptr inbounds %struct.x264_frame_t, ptr %3, i64 0, i32 16, i64 1, !dbg !1682
  %54 = load ptr, ptr %53, align 8, !dbg !1682, !tbaa !1681
  %55 = sext i32 %49 to i64, !dbg !1683
  %56 = getelementptr inbounds i8, ptr %54, i64 %55, !dbg !1683
  call void @llvm.dbg.value(metadata ptr %5, metadata !1654, metadata !DIExpression(DW_OP_deref)), !dbg !1663
  %57 = call i32 %52(ptr noundef %56, i32 noundef %50, ptr noundef nonnull %5) #20, !dbg !1680
  call void @llvm.dbg.value(metadata !DIArgList(i32 %57, i32 %33), metadata !1653, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !1663
  call void @llvm.dbg.value(metadata i64 2, metadata !1655, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata !DIArgList(i32 %57, i32 %33), metadata !1653, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !1663
  call void @llvm.dbg.value(metadata i64 2, metadata !1655, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i32 8, metadata !1656, metadata !DIExpression()), !dbg !1665
  %58 = getelementptr inbounds %struct.x264_frame_t, ptr %3, i64 0, i32 10, i64 2, !dbg !1666
  %59 = load i32, ptr %58, align 4, !dbg !1666, !tbaa !1667
  call void @llvm.dbg.value(metadata i32 %59, metadata !1660, metadata !DIExpression()), !dbg !1665
  %60 = load i32, ptr %6, align 16, !dbg !1668, !tbaa !1669
  %61 = icmp eq i32 %60, 0, !dbg !1670
  br i1 %61, label %68, label %62, !dbg !1670

62:                                               ; preds = %48
  %63 = mul nsw i32 %59, %7, !dbg !1671
  %64 = add nsw i32 %63, %1, !dbg !1672
  %65 = shl nsw i32 %64, 3, !dbg !1673
  %66 = select i1 %9, i32 0, i32 %59, !dbg !1674
  %67 = add nsw i32 %65, %66, !dbg !1675
  br label %72, !dbg !1670

68:                                               ; preds = %48
  %69 = mul nsw i32 %59, %2, !dbg !1676
  %70 = add nsw i32 %69, %1, !dbg !1677
  %71 = shl nsw i32 %70, 3, !dbg !1678
  br label %72, !dbg !1670

72:                                               ; preds = %68, %62
  %73 = phi i32 [ %67, %62 ], [ %71, %68 ], !dbg !1670
  %74 = add i32 %57, %33, !dbg !1684
  call void @llvm.dbg.value(metadata i32 %74, metadata !1653, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i32 %73, metadata !1661, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i32 poison, metadata !1662, metadata !DIExpression()), !dbg !1665
  %75 = shl i32 %59, %60, !dbg !1679
  call void @llvm.dbg.value(metadata i32 %75, metadata !1660, metadata !DIExpression()), !dbg !1665
  %76 = load ptr, ptr %51, align 8, !dbg !1680, !tbaa !1681
  %77 = getelementptr inbounds %struct.x264_frame_t, ptr %3, i64 0, i32 16, i64 2, !dbg !1682
  %78 = load ptr, ptr %77, align 8, !dbg !1682, !tbaa !1681
  %79 = sext i32 %73 to i64, !dbg !1683
  %80 = getelementptr inbounds i8, ptr %78, i64 %79, !dbg !1683
  call void @llvm.dbg.value(metadata ptr %5, metadata !1654, metadata !DIExpression(DW_OP_deref)), !dbg !1663
  %81 = call i32 %76(ptr noundef %80, i32 noundef %75, ptr noundef nonnull %5) #20, !dbg !1680
  %82 = add i32 %81, %74, !dbg !1684
  call void @llvm.dbg.value(metadata i32 %82, metadata !1653, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i64 3, metadata !1655, metadata !DIExpression()), !dbg !1663
  %83 = call i32 @llvm.umax.i32(i32 %82, i32 1), !dbg !1685
  call void @llvm.dbg.value(metadata i32 %83, metadata !1653, metadata !DIExpression()), !dbg !1663
  call void @x264_emms() #20, !dbg !1686
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20, !dbg !1687
  ret i32 %83, !dbg !1688
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.pow.f64(double, double) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @x264_adaptive_quant(ptr nocapture noundef %0) local_unnamed_addr #0 !dbg !1689 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1693, metadata !DIExpression()), !dbg !1696
  tail call void @x264_emms() #20, !dbg !1697
  %2 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 46, !dbg !1698
  %3 = load ptr, ptr %2, align 16, !dbg !1698, !tbaa !1699
  %4 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 12, !dbg !1700
  %5 = load float, ptr %4, align 8, !dbg !1700, !tbaa !1701
  call void @llvm.dbg.value(metadata float %5, metadata !1694, metadata !DIExpression()), !dbg !1696
  %6 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 37, !dbg !1703
  %7 = load ptr, ptr %6, align 8, !dbg !1703, !tbaa !1704
  %8 = getelementptr inbounds %struct.x264_frame_t, ptr %7, i64 0, i32 38, !dbg !1705
  %9 = load ptr, ptr %8, align 8, !dbg !1705, !tbaa !1614
  %10 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 4, !dbg !1706
  %11 = load i32, ptr %10, align 16, !dbg !1706, !tbaa !1707
  %12 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 5, !dbg !1708
  %13 = load i32, ptr %12, align 4, !dbg !1708, !tbaa !1709
  %14 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 1, !dbg !1710
  %15 = load i32, ptr %14, align 4, !dbg !1710, !tbaa !1617
  %16 = mul nsw i32 %15, %13, !dbg !1711
  %17 = add nsw i32 %16, %11, !dbg !1712
  %18 = sext i32 %17 to i64, !dbg !1713
  %19 = getelementptr inbounds float, ptr %9, i64 %18, !dbg !1713
  %20 = load float, ptr %19, align 4, !dbg !1713, !tbaa !1622
  call void @llvm.dbg.value(metadata float %20, metadata !1695, metadata !DIExpression()), !dbg !1696
  %21 = fadd fast float %20, %5, !dbg !1714
  %22 = fpext float %21 to double, !dbg !1715
  %23 = fadd fast double %22, 5.000000e-01, !dbg !1716
  %24 = fptosi double %23 to i32, !dbg !1715
  %25 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 2, !dbg !1717
  %26 = load i32, ptr %25, align 8, !dbg !1717, !tbaa !1718
  %27 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 3, !dbg !1719
  %28 = load i32, ptr %27, align 4, !dbg !1719, !tbaa !1720
  call void @llvm.dbg.value(metadata i32 %24, metadata !1721, metadata !DIExpression()), !dbg !1728
  call void @llvm.dbg.value(metadata i32 %26, metadata !1726, metadata !DIExpression()), !dbg !1728
  call void @llvm.dbg.value(metadata i32 %28, metadata !1727, metadata !DIExpression()), !dbg !1728
  %29 = icmp sgt i32 %26, %24, !dbg !1730
  %30 = tail call i32 @llvm.smin.i32(i32 %24, i32 %28), !dbg !1731
  %31 = select i1 %29, i32 %26, i32 %30, !dbg !1731
  %32 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 58, !dbg !1732
  %33 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 60, !dbg !1733
  %34 = load i32, ptr %33, align 8, !dbg !1733, !tbaa !1735
  %35 = sub nsw i32 %31, %34, !dbg !1736
  %36 = tail call i32 @llvm.abs.i32(i32 %35, i1 true), !dbg !1737
  %37 = icmp eq i32 %36, 1, !dbg !1738
  %38 = select i1 %37, i32 %34, i32 %31, !dbg !1739
  store i32 %38, ptr %32, align 16, !dbg !1696
  %39 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 28, !dbg !1740
  %40 = load ptr, ptr %39, align 16, !dbg !1740, !tbaa !1741
  %41 = sext i32 %38 to i64, !dbg !1742
  %42 = getelementptr inbounds i8, ptr %40, i64 %41, !dbg !1742
  %43 = load i8, ptr %42, align 1, !dbg !1742, !tbaa !1743
  %44 = zext i8 %43 to i32, !dbg !1742
  %45 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 59, !dbg !1744
  store i32 %44, ptr %45, align 4, !dbg !1745, !tbaa !1746
  ret void, !dbg !1747
}

declare !dbg !1748 void @x264_emms() local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @x264_ratecontrol_new(ptr noundef %0) local_unnamed_addr #0 !dbg !1753 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca float, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !1757, metadata !DIExpression()), !dbg !1788
  tail call void @x264_emms() #20, !dbg !1789
  %9 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 1, !dbg !1790
  %10 = load i32, ptr %9, align 4, !dbg !1790, !tbaa !1791
  %11 = mul i32 %10, 608, !dbg !1792
  %12 = tail call ptr @x264_malloc(i32 noundef %11) #20, !dbg !1793
  %13 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 46, !dbg !1794
  store ptr %12, ptr %13, align 16, !dbg !1795, !tbaa !1699
  call void @llvm.dbg.value(metadata ptr %12, metadata !1758, metadata !DIExpression()), !dbg !1788
  %14 = load i32, ptr %9, align 4, !dbg !1796, !tbaa !1791
  %15 = sext i32 %14 to i64, !dbg !1797
  %16 = mul nsw i64 %15, 608, !dbg !1798
  tail call void @llvm.memset.p0.i64(ptr align 8 %12, i8 0, i64 %16, i1 false), !dbg !1799
  %17 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, !dbg !1800
  %18 = load i32, ptr %17, align 8, !dbg !1801, !tbaa !1802
  %19 = icmp eq i32 %18, 0, !dbg !1803
  br i1 %19, label %20, label %21, !dbg !1804

20:                                               ; preds = %1
  store i32 0, ptr %12, align 8, !dbg !1805, !tbaa !1806
  br label %29, !dbg !1807

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 17, !dbg !1808
  %23 = load i32, ptr %22, align 8, !dbg !1808, !tbaa !1809
  %24 = icmp eq i32 %23, 0, !dbg !1810
  %25 = zext i1 %24 to i32, !dbg !1804
  store i32 %25, ptr %12, align 8, !dbg !1805, !tbaa !1806
  %26 = icmp eq i32 %18, 2, !dbg !1811
  %27 = icmp ne i32 %23, 0
  %28 = select i1 %26, i1 %27, i1 false, !dbg !1807
  br label %29, !dbg !1807

29:                                               ; preds = %21, %20
  %30 = phi i1 [ false, %20 ], [ %28, %21 ], !dbg !1788
  %31 = zext i1 %30 to i32, !dbg !1807
  %32 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %12, i64 0, i32 1, !dbg !1812
  store i32 %31, ptr %32, align 4, !dbg !1813, !tbaa !1814
  %33 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 9, !dbg !1815
  %34 = load i32, ptr %33, align 4, !dbg !1815, !tbaa !1817
  %35 = icmp sgt i32 %34, 0, !dbg !1818
  br i1 %35, label %36, label %45, !dbg !1819

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 10, !dbg !1820
  %38 = load i32, ptr %37, align 8, !dbg !1820, !tbaa !1821
  %39 = icmp sgt i32 %38, 0, !dbg !1822
  br i1 %39, label %40, label %45, !dbg !1823

40:                                               ; preds = %36
  %41 = sitofp i32 %34 to float, !dbg !1824
  %42 = sitofp i32 %38 to float, !dbg !1825
  %43 = fdiv fast float %41, %42, !dbg !1826
  %44 = fpext float %43 to double, !dbg !1824
  br label %45, !dbg !1827

45:                                               ; preds = %29, %36, %40
  %46 = phi double [ %44, %40 ], [ 2.500000e+01, %36 ], [ 2.500000e+01, %29 ]
  %47 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %12, i64 0, i32 4, !dbg !1828
  store double %46, ptr %47, align 8, !dbg !1828, !tbaa !1829
  %48 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 5, !dbg !1830
  %49 = load i32, ptr %48, align 4, !dbg !1830, !tbaa !1831
  %50 = sitofp i32 %49 to double, !dbg !1832
  %51 = fmul fast double %50, 1.000000e+03, !dbg !1833
  %52 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %12, i64 0, i32 5, !dbg !1834
  store double %51, ptr %52, align 8, !dbg !1835, !tbaa !1836
  %53 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 7, !dbg !1837
  %54 = load float, ptr %53, align 4, !dbg !1837, !tbaa !1838
  %55 = fpext float %54 to double, !dbg !1839
  %56 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %12, i64 0, i32 6, !dbg !1840
  store double %55, ptr %56, align 8, !dbg !1841, !tbaa !1842
  %57 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, !dbg !1843
  %58 = load i32, ptr %57, align 16, !dbg !1844, !tbaa !1845
  %59 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %12, i64 0, i32 7, !dbg !1846
  store i32 %58, ptr %59, align 8, !dbg !1847, !tbaa !1848
  %60 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %12, i64 0, i32 38, !dbg !1849
  store i32 -1, ptr %60, align 8, !dbg !1850, !tbaa !1851
  %61 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %12, i64 0, i32 26, !dbg !1852
  store double 1.000000e+00, ptr %61, align 8, !dbg !1853, !tbaa !1854
  %62 = icmp eq i32 %18, 1, !dbg !1855
  br i1 %62, label %63, label %68, !dbg !1857

63:                                               ; preds = %45
  %64 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 17, !dbg !1858
  %65 = load i32, ptr %64, align 8, !dbg !1858, !tbaa !1809
  %66 = icmp eq i32 %65, 0, !dbg !1859
  br i1 %66, label %68, label %67, !dbg !1860

67:                                               ; preds = %63
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str) #20, !dbg !1861
  br label %819, !dbg !1863

68:                                               ; preds = %63, %45
  %69 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 9, !dbg !1864
  %70 = load i32, ptr %69, align 4, !dbg !1864, !tbaa !1866
  %71 = icmp eq i32 %70, 0, !dbg !1867
  br i1 %71, label %72, label %75, !dbg !1868

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 8
  %74 = load i32, ptr %73, align 8, !dbg !1869, !tbaa !1871
  br label %86, !dbg !1868

75:                                               ; preds = %68
  br i1 %19, label %76, label %78, !dbg !1872

76:                                               ; preds = %75
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.1) #20, !dbg !1874
  %77 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 8, !dbg !1877
  store i32 0, ptr %77, align 8, !dbg !1878, !tbaa !1871
  store i32 0, ptr %69, align 4, !dbg !1879, !tbaa !1866
  br label %165, !dbg !1880

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 8, !dbg !1882
  %80 = load i32, ptr %79, align 8, !dbg !1882, !tbaa !1871
  %81 = icmp eq i32 %80, 0, !dbg !1884
  br i1 %81, label %82, label %86, !dbg !1885

82:                                               ; preds = %78
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.2) #20, !dbg !1886
  %83 = load i32, ptr %48, align 4, !dbg !1888, !tbaa !1831
  store i32 %83, ptr %79, align 8, !dbg !1889, !tbaa !1871
  %84 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 8, !dbg !1869
  %85 = icmp sgt i32 %83, 0
  br i1 %85, label %94, label %159, !dbg !1890

86:                                               ; preds = %72, %78
  %87 = phi i32 [ %74, %72 ], [ %80, %78 ], !dbg !1869
  %88 = icmp slt i32 %87, %49, !dbg !1891
  %89 = icmp sgt i32 %87, 0
  %90 = and i1 %89, %88, !dbg !1892
  br i1 %90, label %91, label %92, !dbg !1892

91:                                               ; preds = %86
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.3) #20, !dbg !1893
  br label %165, !dbg !1893

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 8, !dbg !1869
  br i1 %89, label %94, label %159, !dbg !1890

94:                                               ; preds = %82, %92
  %95 = phi i32 [ %83, %82 ], [ %87, %92 ]
  %96 = phi ptr [ %84, %82 ], [ %93, %92 ]
  %97 = load i32, ptr %69, align 4, !dbg !1894, !tbaa !1866
  %98 = icmp sgt i32 %97, 0, !dbg !1895
  br i1 %98, label %99, label %163, !dbg !1896

99:                                               ; preds = %94
  %100 = sitofp i32 %97 to double, !dbg !1897
  %101 = mul nsw i32 %95, 3, !dbg !1900
  %102 = sitofp i32 %101 to double, !dbg !1901
  %103 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %12, i64 0, i32 4, !dbg !1902
  %104 = load double, ptr %103, align 8, !dbg !1902, !tbaa !1829
  %105 = fdiv fast double %102, %104, !dbg !1903
  %106 = fcmp fast ogt double %105, %100, !dbg !1904
  br i1 %106, label %107, label %109, !dbg !1905

107:                                              ; preds = %99
  %108 = fptosi double %105 to i32, !dbg !1906
  store i32 %108, ptr %69, align 4, !dbg !1908, !tbaa !1866
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef %108) #20, !dbg !1909
  br label %109, !dbg !1910

109:                                              ; preds = %107, %99
  %110 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 10, !dbg !1911
  %111 = load float, ptr %110, align 8, !dbg !1911, !tbaa !1913
  %112 = fcmp fast ogt float %111, 1.000000e+00, !dbg !1914
  %113 = load i32, ptr %69, align 4, !dbg !1915, !tbaa !1866
  br i1 %112, label %114, label %122, !dbg !1916

114:                                              ; preds = %109
  %115 = sitofp i32 %113 to float, !dbg !1917
  %116 = fdiv fast float %111, %115, !dbg !1918
  %117 = fpext float %116 to double, !dbg !1919
  call void @llvm.dbg.value(metadata double %117, metadata !1920, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1925, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1926, metadata !DIExpression()), !dbg !1927
  %118 = fcmp fast ogt double %117, 1.000000e+00, !dbg !1929
  %119 = select fast i1 %118, double 1.000000e+00, double %117, !dbg !1929
  %120 = tail call fast double @llvm.maxnum.f64(double %119, double 0.000000e+00), !dbg !1929
  %121 = fptrunc double %120 to float, !dbg !1930
  store float %121, ptr %110, align 8, !dbg !1931, !tbaa !1913
  br label %122, !dbg !1932

122:                                              ; preds = %109, %114
  %123 = phi float [ %121, %114 ], [ %111, %109 ], !dbg !1933
  %124 = load i32, ptr %96, align 8, !dbg !1934, !tbaa !1871
  %125 = sitofp i32 %124 to double, !dbg !1935
  %126 = fmul fast double %125, 1.000000e+03, !dbg !1936
  %127 = load double, ptr %103, align 8, !dbg !1937, !tbaa !1829
  %128 = fdiv fast double %126, %127, !dbg !1938
  %129 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %12, i64 0, i32 19, !dbg !1939
  store double %128, ptr %129, align 8, !dbg !1940, !tbaa !1941
  %130 = sitofp i32 %113 to double, !dbg !1942
  %131 = fmul fast double %130, 1.000000e+03, !dbg !1943
  %132 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %12, i64 0, i32 16, !dbg !1944
  store double %131, ptr %132, align 8, !dbg !1945, !tbaa !1946
  %133 = fpext float %123 to double, !dbg !1947
  %134 = fmul fast double %131, %133, !dbg !1948
  %135 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %12, i64 0, i32 17, !dbg !1949
  store double %134, ptr %135, align 8, !dbg !1950, !tbaa !1951
  %136 = fmul fast double %128, 5.000000e-01, !dbg !1952
  %137 = fmul fast double %128, %127, !dbg !1953
  %138 = load double, ptr %52, align 8, !dbg !1953, !tbaa !1836
  %139 = fdiv fast double %137, %138, !dbg !1953
  %140 = fsub fast double 1.500000e+00, %139, !dbg !1953
  %141 = fcmp fast olt double %140, 0.000000e+00, !dbg !1953
  %142 = select fast i1 %141, double 0.000000e+00, double %140, !dbg !1953
  %143 = fmul fast double %136, %142, !dbg !1954
  %144 = fdiv fast double %143, %131, !dbg !1954
  %145 = fsub fast double 1.000000e+00, %144, !dbg !1955
  store double %145, ptr %61, align 8, !dbg !1956, !tbaa !1854
  %146 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %12, i64 0, i32 2, !dbg !1957
  store i32 1, ptr %146, align 8, !dbg !1958, !tbaa !1959
  %147 = load i32, ptr %32, align 4, !dbg !1960, !tbaa !1814
  %148 = icmp eq i32 %147, 0, !dbg !1961
  br i1 %148, label %149, label %155, !dbg !1962

149:                                              ; preds = %122
  %150 = load i32, ptr %17, align 8, !dbg !1963, !tbaa !1802
  %151 = icmp eq i32 %150, 2, !dbg !1964
  br i1 %151, label %152, label %155, !dbg !1965

152:                                              ; preds = %149
  %153 = load i32, ptr %48, align 4, !dbg !1966, !tbaa !1831
  %154 = icmp sle i32 %124, %153, !dbg !1967
  br label %155

155:                                              ; preds = %152, %149, %122
  %156 = phi i1 [ false, %149 ], [ false, %122 ], [ %154, %152 ], !dbg !1915
  %157 = zext i1 %156 to i32, !dbg !1965
  %158 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %12, i64 0, i32 3, !dbg !1968
  store i32 %157, ptr %158, align 4, !dbg !1969, !tbaa !1970
  br label %165, !dbg !1971

159:                                              ; preds = %82, %92
  %160 = phi i32 [ %83, %82 ], [ %87, %92 ]
  %161 = phi ptr [ %84, %82 ], [ %93, %92 ]
  %162 = icmp eq i32 %160, 0, !dbg !1972
  br i1 %162, label %165, label %163, !dbg !1880

163:                                              ; preds = %94, %159
  %164 = phi ptr [ %96, %94 ], [ %161, %159 ]
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.5) #20, !dbg !1974
  store i32 0, ptr %164, align 8, !dbg !1976, !tbaa !1871
  br label %165, !dbg !1977

165:                                              ; preds = %76, %155, %163, %159, %91
  %166 = load double, ptr %56, align 8, !dbg !1978, !tbaa !1842
  %167 = fcmp fast olt double %166, 1.000000e-02, !dbg !1980
  br i1 %167, label %168, label %169, !dbg !1981

168:                                              ; preds = %165
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.6) #20, !dbg !1982
  store double 1.000000e-02, ptr %56, align 8, !dbg !1984, !tbaa !1842
  br label %169, !dbg !1985

169:                                              ; preds = %168, %165
  %170 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %12, i64 0, i32 2, !dbg !1986
  %171 = load i32, ptr %170, align 8, !dbg !1986, !tbaa !1959
  %172 = icmp eq i32 %171, 0, !dbg !1987
  br i1 %172, label %173, label %177, !dbg !1988

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 13, !dbg !1989
  %175 = load i32, ptr %174, align 4, !dbg !1989, !tbaa !1990
  %176 = icmp ne i32 %175, 0, !dbg !1988
  br label %177, !dbg !1988

177:                                              ; preds = %173, %169
  %178 = phi i1 [ true, %169 ], [ %176, %173 ]
  %179 = zext i1 %178 to i32, !dbg !1988
  %180 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 62, !dbg !1991
  store i32 %179, ptr %180, align 16, !dbg !1992, !tbaa !1993
  %181 = load i32, ptr %12, align 8, !dbg !1994, !tbaa !1806
  %182 = icmp eq i32 %181, 0, !dbg !1996
  br i1 %182, label %183, label %185, !dbg !1997

183:                                              ; preds = %177
  %184 = load i32, ptr %17, align 8, !dbg !1998, !tbaa !1802
  br label %213, !dbg !1997

185:                                              ; preds = %177
  %186 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %12, i64 0, i32 40, !dbg !1999
  store double 1.000000e-02, ptr %186, align 8, !dbg !2001, !tbaa !2002
  %187 = load i32, ptr %17, align 8, !dbg !2003, !tbaa !1802
  %188 = icmp eq i32 %187, 1, !dbg !2003
  br i1 %188, label %189, label %192, !dbg !2003

189:                                              ; preds = %185
  %190 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 6, !dbg !2003
  %191 = load float, ptr %190, align 8, !dbg !2003, !tbaa !2004
  br label %192, !dbg !2003

192:                                              ; preds = %185, %189
  %193 = phi fast float [ %191, %189 ], [ 2.400000e+01, %185 ], !dbg !2003
  %194 = fpext float %193 to double, !dbg !2003
  %195 = fmul fast double %194, 1.000000e-02, !dbg !2005
  %196 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %12, i64 0, i32 39, !dbg !2006
  store double %195, ptr %196, align 8, !dbg !2007, !tbaa !2008
  %197 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 19, !dbg !2009
  %198 = load float, ptr %197, align 8, !dbg !2009, !tbaa !2010
  %199 = fpext float %198 to double, !dbg !2011
  %200 = fmul fast double %199, 0x40336AC035D686AC, !dbg !2012
  %201 = tail call fast double @llvm.exp2.f64(double %200), !dbg !2012
  %202 = fmul fast double %201, 1.000000e-02, !dbg !2013
  %203 = load i32, ptr %57, align 16, !dbg !2014, !tbaa !1845
  %204 = sitofp i32 %203 to double, !dbg !2015
  %205 = tail call fast double @llvm.sqrt.f64(double %204), !dbg !2016
  %206 = fmul fast double %202, %205, !dbg !2017
  %207 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %12, i64 0, i32 23, !dbg !2018
  store double %206, ptr %207, align 8, !dbg !2019, !tbaa !2020
  %208 = load double, ptr %52, align 8, !dbg !2021, !tbaa !1836
  %209 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %12, i64 0, i32 4, !dbg !2022
  %210 = load double, ptr %209, align 8, !dbg !2022, !tbaa !1829
  %211 = fdiv fast double %208, %210, !dbg !2023
  %212 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %12, i64 0, i32 25, !dbg !2024
  store double %211, ptr %212, align 8, !dbg !2025, !tbaa !2026
  store i32 2, ptr %60, align 8, !dbg !2027, !tbaa !1851
  br label %213, !dbg !2028

213:                                              ; preds = %183, %192
  %214 = phi i32 [ %184, %183 ], [ %187, %192 ], !dbg !1998
  %215 = icmp eq i32 %214, 1, !dbg !2029
  br i1 %215, label %216, label %238, !dbg !2030

216:                                              ; preds = %213
  %217 = load i32, ptr %57, align 16, !dbg !2031, !tbaa !1845
  %218 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 16, !dbg !2032
  %219 = load i32, ptr %218, align 16, !dbg !2032, !tbaa !2033
  %220 = icmp eq i32 %219, 0, !dbg !2034
  %221 = select i1 %220, i32 80, i32 120, !dbg !2034
  %222 = mul nsw i32 %221, %217, !dbg !2035
  %223 = sitofp i32 %222 to double, !dbg !2036
  call void @llvm.dbg.value(metadata double %223, metadata !1760, metadata !DIExpression()), !dbg !2037
  %224 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 19, !dbg !2038
  %225 = load float, ptr %224, align 8, !dbg !2038, !tbaa !2010
  %226 = fsub fast float 1.000000e+00, %225, !dbg !2039
  %227 = fpext float %226 to double, !dbg !2040
  %228 = tail call fast double @llvm.pow.f64(double %223, double %227), !dbg !2041
  %229 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 6, !dbg !2042
  %230 = load float, ptr %229, align 8, !dbg !2042, !tbaa !2004
  %231 = fpext float %230 to double, !dbg !2043
  call void @llvm.dbg.value(metadata double %231, metadata !2044, metadata !DIExpression()), !dbg !2049
  %232 = fmul fast double %231, 0x3FC5555555555555, !dbg !2051
  %233 = fadd fast double %232, -2.000000e+00, !dbg !2051
  %234 = tail call fast double @llvm.exp2.f64(double %233), !dbg !2052
  %235 = fmul fast double %234, 8.500000e-01, !dbg !2053
  %236 = fdiv fast double %228, %235, !dbg !2054
  %237 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %12, i64 0, i32 29, !dbg !2055
  store double %236, ptr %237, align 8, !dbg !2056, !tbaa !2057
  br label %238, !dbg !2058

238:                                              ; preds = %216, %213
  %239 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 11, !dbg !2059
  %240 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %12, i64 0, i32 30, !dbg !2060
  %241 = load <2 x float>, ptr %239, align 4, !dbg !2059, !tbaa !1622
  %242 = fpext <2 x float> %241 to <2 x double>, !dbg !2061
  %243 = tail call fast <2 x double> @llvm.log.v2f64(<2 x double> %242), !dbg !2062
  %244 = fmul fast <2 x double> %243, <double 0x40214FF58BE0A23E, double 0x40214FF58BE0A23E>, !dbg !2063
  store <2 x double> %244, ptr %240, align 8, !dbg !2064, !tbaa !2065
  %245 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 1, !dbg !2066
  %246 = load i32, ptr %245, align 4, !dbg !2066, !tbaa !2067
  %247 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %12, i64 0, i32 8, !dbg !2068
  store i32 %246, ptr %247, align 4, !dbg !2069, !tbaa !1667
  %248 = load i32, ptr %245, align 4, !dbg !2070, !tbaa !2067
  %249 = sitofp i32 %248 to double, !dbg !2071
  %250 = extractelement <2 x double> %244, i64 0, !dbg !2072
  %251 = fsub fast double 5.000000e-01, %250, !dbg !2072
  %252 = fadd fast double %251, %249, !dbg !2073
  %253 = fptosi double %252 to i32, !dbg !2071
  call void @llvm.dbg.value(metadata i32 %253, metadata !1721, metadata !DIExpression()), !dbg !2074
  call void @llvm.dbg.value(metadata i32 0, metadata !1726, metadata !DIExpression()), !dbg !2074
  call void @llvm.dbg.value(metadata i32 51, metadata !1727, metadata !DIExpression()), !dbg !2074
  %254 = tail call i32 @llvm.smin.i32(i32 %253, i32 51), !dbg !2076
  %255 = tail call i32 @llvm.smax.i32(i32 %254, i32 0), !dbg !2076
  %256 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %12, i64 0, i32 8, i64 2, !dbg !2077
  store i32 %255, ptr %256, align 4, !dbg !2078, !tbaa !1667
  %257 = load i32, ptr %245, align 4, !dbg !2079, !tbaa !2067
  %258 = sitofp i32 %257 to double, !dbg !2080
  %259 = extractelement <2 x double> %244, i64 1, !dbg !2081
  %260 = fadd fast double %259, 5.000000e-01, !dbg !2081
  %261 = fadd fast double %260, %258, !dbg !2082
  %262 = fptosi double %261 to i32, !dbg !2080
  call void @llvm.dbg.value(metadata i32 %262, metadata !1721, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata i32 0, metadata !1726, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata i32 51, metadata !1727, metadata !DIExpression()), !dbg !2083
  %263 = tail call i32 @llvm.smin.i32(i32 %262, i32 51), !dbg !2085
  %264 = tail call i32 @llvm.smax.i32(i32 %263, i32 0), !dbg !2085
  %265 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %12, i64 0, i32 8, i64 1, !dbg !2086
  store i32 %264, ptr %265, align 4, !dbg !2087, !tbaa !1667
  %266 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 4, !dbg !2088
  %267 = load i32, ptr %266, align 8, !dbg !2088, !tbaa !2089
  %268 = sitofp i32 %267 to double, !dbg !2090
  %269 = fmul fast double %268, 0x3FC5555555555555, !dbg !2091
  %270 = tail call fast double @llvm.exp2.f64(double %269), !dbg !2092
  %271 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %12, i64 0, i32 44, !dbg !2093
  store double %270, ptr %271, align 8, !dbg !2094, !tbaa !2095
  call void @llvm.dbg.value(metadata double 2.600000e+01, metadata !2044, metadata !DIExpression()), !dbg !2096
  %272 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %12, i64 0, i32 36, !dbg !2098
  store double 0x4011228A8751D48F, ptr %272, align 8, !dbg !2099, !tbaa !2100
  %273 = tail call ptr @x264_malloc(i32 noundef 120) #20, !dbg !2101
  %274 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %12, i64 0, i32 20, !dbg !2102
  store ptr %273, ptr %274, align 8, !dbg !2103, !tbaa !2104
  %275 = tail call ptr @x264_malloc(i32 noundef 24) #20, !dbg !2105
  %276 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %12, i64 0, i32 49, !dbg !2106
  store ptr %275, ptr %276, align 8, !dbg !2107, !tbaa !2108
  call void @llvm.dbg.value(metadata i32 0, metadata !1759, metadata !DIExpression()), !dbg !1788
  %277 = load i32, ptr %17, align 8, !tbaa !1802
  %278 = icmp eq i32 %277, 1
  %279 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 2
  %280 = load i32, ptr %279, align 8, !tbaa !1718
  %281 = sitofp i32 %280 to double
  %282 = fmul fast double %281, 0x3FC5555555555555
  %283 = fadd fast double %282, -2.000000e+00
  %284 = tail call fast double @llvm.exp2.f64(double %283)
  %285 = fmul fast double %284, 8.500000e-01
  %286 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 3
  %287 = load i32, ptr %286, align 4, !tbaa !1720
  %288 = sitofp i32 %287 to double
  %289 = fmul fast double %288, 0x3FC5555555555555
  %290 = fadd fast double %289, -2.000000e+00
  %291 = tail call fast double @llvm.exp2.f64(double %290)
  %292 = fmul fast double %291, 8.500000e-01
  %293 = load ptr, ptr %274, align 8, !tbaa !2104
  %294 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 6
  call void @llvm.dbg.value(metadata i64 0, metadata !1759, metadata !DIExpression()), !dbg !1788
  br i1 %278, label %295, label %297, !dbg !2109

295:                                              ; preds = %238
  %296 = load float, ptr %294, align 8, !dbg !2109, !tbaa !2004
  br label %297, !dbg !2109

297:                                              ; preds = %238, %295
  %298 = phi fast float [ %296, %295 ], [ 2.400000e+01, %238 ], !dbg !2109
  %299 = fpext float %298 to double, !dbg !2109
  call void @llvm.dbg.value(metadata double %299, metadata !2044, metadata !DIExpression()), !dbg !2113
  %300 = fmul fast double %299, 0x3FC5555555555555, !dbg !2115
  %301 = fadd fast double %300, -2.000000e+00, !dbg !2115
  %302 = tail call fast double @llvm.exp2.f64(double %301), !dbg !2116
  %303 = fmul fast double %302, 8.500000e-01, !dbg !2117
  %304 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %12, i64 0, i32 37, i64 0, !dbg !2118
  store double %303, ptr %304, align 8, !dbg !2119, !tbaa !2065
  call void @llvm.dbg.value(metadata double %281, metadata !2044, metadata !DIExpression()), !dbg !2120
  %305 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %12, i64 0, i32 42, i64 0, !dbg !2122
  store double %285, ptr %305, align 8, !dbg !2123, !tbaa !2065
  call void @llvm.dbg.value(metadata double %288, metadata !2044, metadata !DIExpression()), !dbg !2124
  %306 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %12, i64 0, i32 43, i64 0, !dbg !2126
  store double %292, ptr %306, align 8, !dbg !2127, !tbaa !2065
  store <2 x double> <double 2.000000e+00, double 1.000000e+00>, ptr %293, align 8, !dbg !2128, !tbaa !2065
  %307 = getelementptr inbounds %struct.predictor_t, ptr %293, i64 0, i32 2, !dbg !2129
  store double 5.000000e-01, ptr %307, align 8, !dbg !2130, !tbaa !2131
  %308 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %12, i64 0, i32 48, i64 0, !dbg !2133
  store <2 x double> <double 2.500000e-01, double 1.000000e+00>, ptr %308, align 8, !dbg !2134, !tbaa !2065
  %309 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %12, i64 0, i32 48, i64 0, i32 2, !dbg !2135
  store double 5.000000e-01, ptr %309, align 8, !dbg !2136, !tbaa !2131
  call void @llvm.dbg.value(metadata i64 1, metadata !1759, metadata !DIExpression()), !dbg !1788
  br i1 %278, label %310, label %312, !dbg !2109

310:                                              ; preds = %297
  %311 = load float, ptr %294, align 8, !dbg !2109, !tbaa !2004
  br label %312, !dbg !2109

312:                                              ; preds = %310, %297
  %313 = phi fast float [ %311, %310 ], [ 2.400000e+01, %297 ], !dbg !2109
  %314 = fpext float %313 to double, !dbg !2109
  call void @llvm.dbg.value(metadata double %314, metadata !2044, metadata !DIExpression()), !dbg !2113
  %315 = fmul fast double %314, 0x3FC5555555555555, !dbg !2115
  %316 = fadd fast double %315, -2.000000e+00, !dbg !2115
  %317 = tail call fast double @llvm.exp2.f64(double %316), !dbg !2116
  %318 = fmul fast double %317, 8.500000e-01, !dbg !2117
  %319 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %12, i64 0, i32 37, i64 1, !dbg !2118
  store double %318, ptr %319, align 8, !dbg !2119, !tbaa !2065
  call void @llvm.dbg.value(metadata double %281, metadata !2044, metadata !DIExpression()), !dbg !2120
  %320 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %12, i64 0, i32 42, i64 1, !dbg !2122
  store double %285, ptr %320, align 8, !dbg !2123, !tbaa !2065
  call void @llvm.dbg.value(metadata double %288, metadata !2044, metadata !DIExpression()), !dbg !2124
  %321 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %12, i64 0, i32 43, i64 1, !dbg !2126
  store double %292, ptr %321, align 8, !dbg !2127, !tbaa !2065
  %322 = getelementptr inbounds %struct.predictor_t, ptr %293, i64 1, !dbg !2137
  store <2 x double> <double 2.000000e+00, double 1.000000e+00>, ptr %322, align 8, !dbg !2128, !tbaa !2065
  %323 = getelementptr inbounds %struct.predictor_t, ptr %293, i64 1, i32 2, !dbg !2129
  store double 5.000000e-01, ptr %323, align 8, !dbg !2130, !tbaa !2131
  %324 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %12, i64 0, i32 48, i64 1, !dbg !2133
  store <2 x double> <double 2.500000e-01, double 1.000000e+00>, ptr %324, align 8, !dbg !2134, !tbaa !2065
  %325 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %12, i64 0, i32 48, i64 1, i32 2, !dbg !2135
  store double 5.000000e-01, ptr %325, align 8, !dbg !2136, !tbaa !2131
  call void @llvm.dbg.value(metadata i64 2, metadata !1759, metadata !DIExpression()), !dbg !1788
  br i1 %278, label %326, label %328, !dbg !2109

326:                                              ; preds = %312
  %327 = load float, ptr %294, align 8, !dbg !2109, !tbaa !2004
  br label %328, !dbg !2109

328:                                              ; preds = %326, %312
  %329 = phi fast float [ %327, %326 ], [ 2.400000e+01, %312 ], !dbg !2109
  %330 = fpext float %329 to double, !dbg !2109
  call void @llvm.dbg.value(metadata double %330, metadata !2044, metadata !DIExpression()), !dbg !2113
  %331 = fmul fast double %330, 0x3FC5555555555555, !dbg !2115
  %332 = fadd fast double %331, -2.000000e+00, !dbg !2115
  %333 = tail call fast double @llvm.exp2.f64(double %332), !dbg !2116
  %334 = fmul fast double %333, 8.500000e-01, !dbg !2117
  %335 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %12, i64 0, i32 37, i64 2, !dbg !2118
  store double %334, ptr %335, align 8, !dbg !2119, !tbaa !2065
  call void @llvm.dbg.value(metadata double %281, metadata !2044, metadata !DIExpression()), !dbg !2120
  %336 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %12, i64 0, i32 42, i64 2, !dbg !2122
  store double %285, ptr %336, align 8, !dbg !2123, !tbaa !2065
  call void @llvm.dbg.value(metadata double %288, metadata !2044, metadata !DIExpression()), !dbg !2124
  %337 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %12, i64 0, i32 43, i64 2, !dbg !2126
  store double %292, ptr %337, align 8, !dbg !2127, !tbaa !2065
  %338 = getelementptr inbounds %struct.predictor_t, ptr %293, i64 2, !dbg !2137
  store <2 x double> <double 2.000000e+00, double 1.000000e+00>, ptr %338, align 8, !dbg !2128, !tbaa !2065
  %339 = getelementptr inbounds %struct.predictor_t, ptr %293, i64 2, i32 2, !dbg !2129
  store double 5.000000e-01, ptr %339, align 8, !dbg !2130, !tbaa !2131
  %340 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %12, i64 0, i32 48, i64 2, !dbg !2133
  store <2 x double> <double 2.500000e-01, double 1.000000e+00>, ptr %340, align 8, !dbg !2134, !tbaa !2065
  %341 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %12, i64 0, i32 48, i64 2, i32 2, !dbg !2135
  store double 5.000000e-01, ptr %341, align 8, !dbg !2136, !tbaa !2131
  call void @llvm.dbg.value(metadata i64 3, metadata !1759, metadata !DIExpression()), !dbg !1788
  br i1 %278, label %342, label %344, !dbg !2109

342:                                              ; preds = %328
  %343 = load float, ptr %294, align 8, !dbg !2109, !tbaa !2004
  br label %344, !dbg !2109

344:                                              ; preds = %342, %328
  %345 = phi fast float [ %343, %342 ], [ 2.400000e+01, %328 ], !dbg !2109
  %346 = fpext float %345 to double, !dbg !2109
  call void @llvm.dbg.value(metadata double %346, metadata !2044, metadata !DIExpression()), !dbg !2113
  %347 = fmul fast double %346, 0x3FC5555555555555, !dbg !2115
  %348 = fadd fast double %347, -2.000000e+00, !dbg !2115
  %349 = tail call fast double @llvm.exp2.f64(double %348), !dbg !2116
  %350 = fmul fast double %349, 8.500000e-01, !dbg !2117
  %351 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %12, i64 0, i32 37, i64 3, !dbg !2118
  store double %350, ptr %351, align 8, !dbg !2119, !tbaa !2065
  call void @llvm.dbg.value(metadata double %281, metadata !2044, metadata !DIExpression()), !dbg !2120
  %352 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %12, i64 0, i32 42, i64 3, !dbg !2122
  store double %285, ptr %352, align 8, !dbg !2123, !tbaa !2065
  call void @llvm.dbg.value(metadata double %288, metadata !2044, metadata !DIExpression()), !dbg !2124
  %353 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %12, i64 0, i32 43, i64 3, !dbg !2126
  store double %292, ptr %353, align 8, !dbg !2127, !tbaa !2065
  %354 = getelementptr inbounds %struct.predictor_t, ptr %293, i64 3, !dbg !2137
  store <2 x double> <double 2.000000e+00, double 1.000000e+00>, ptr %354, align 8, !dbg !2128, !tbaa !2065
  %355 = getelementptr inbounds %struct.predictor_t, ptr %293, i64 3, i32 2, !dbg !2129
  store double 5.000000e-01, ptr %355, align 8, !dbg !2130, !tbaa !2131
  %356 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %12, i64 0, i32 48, i64 3, !dbg !2133
  store <2 x double> <double 2.500000e-01, double 1.000000e+00>, ptr %356, align 8, !dbg !2134, !tbaa !2065
  %357 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %12, i64 0, i32 48, i64 3, i32 2, !dbg !2135
  store double 5.000000e-01, ptr %357, align 8, !dbg !2136, !tbaa !2131
  call void @llvm.dbg.value(metadata i64 4, metadata !1759, metadata !DIExpression()), !dbg !1788
  br i1 %278, label %358, label %360, !dbg !2109

358:                                              ; preds = %344
  %359 = load float, ptr %294, align 8, !dbg !2109, !tbaa !2004
  br label %360, !dbg !2109

360:                                              ; preds = %358, %344
  %361 = phi fast float [ %359, %358 ], [ 2.400000e+01, %344 ], !dbg !2109
  %362 = fpext float %361 to double, !dbg !2109
  call void @llvm.dbg.value(metadata double %362, metadata !2044, metadata !DIExpression()), !dbg !2113
  %363 = fmul fast double %362, 0x3FC5555555555555, !dbg !2115
  %364 = fadd fast double %363, -2.000000e+00, !dbg !2115
  %365 = tail call fast double @llvm.exp2.f64(double %364), !dbg !2116
  %366 = fmul fast double %365, 8.500000e-01, !dbg !2117
  %367 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %12, i64 0, i32 37, i64 4, !dbg !2118
  store double %366, ptr %367, align 8, !dbg !2119, !tbaa !2065
  call void @llvm.dbg.value(metadata double %281, metadata !2044, metadata !DIExpression()), !dbg !2120
  %368 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %12, i64 0, i32 42, i64 4, !dbg !2122
  store double %285, ptr %368, align 8, !dbg !2123, !tbaa !2065
  call void @llvm.dbg.value(metadata double %288, metadata !2044, metadata !DIExpression()), !dbg !2124
  %369 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %12, i64 0, i32 43, i64 4, !dbg !2126
  store double %292, ptr %369, align 8, !dbg !2127, !tbaa !2065
  %370 = getelementptr inbounds %struct.predictor_t, ptr %293, i64 4, !dbg !2137
  store <2 x double> <double 2.000000e+00, double 1.000000e+00>, ptr %370, align 8, !dbg !2128, !tbaa !2065
  %371 = getelementptr inbounds %struct.predictor_t, ptr %293, i64 4, i32 2, !dbg !2129
  store double 5.000000e-01, ptr %371, align 8, !dbg !2130, !tbaa !2131
  %372 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %12, i64 0, i32 48, i64 4, !dbg !2133
  store <2 x double> <double 2.500000e-01, double 1.000000e+00>, ptr %372, align 8, !dbg !2134, !tbaa !2065
  %373 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %12, i64 0, i32 48, i64 4, i32 2, !dbg !2135
  store double 5.000000e-01, ptr %373, align 8, !dbg !2136, !tbaa !2131
  call void @llvm.dbg.value(metadata i64 5, metadata !1759, metadata !DIExpression()), !dbg !1788
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %275, ptr noundef nonnull align 8 dereferenceable(24) %293, i64 24, i1 false), !dbg !2138, !tbaa.struct !2139
  call void @llvm.dbg.value(metadata ptr %0, metadata !2140, metadata !DIExpression()), !dbg !2157
  %374 = load ptr, ptr %13, align 16, !dbg !2160, !tbaa !1699
  call void @llvm.dbg.value(metadata ptr %374, metadata !2143, metadata !DIExpression()), !dbg !2157
  %375 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 24, !dbg !2161
  %376 = load ptr, ptr %375, align 8, !dbg !2161, !tbaa !2162
  %377 = icmp eq ptr %376, null, !dbg !2163
  br i1 %377, label %473, label %378, !dbg !2164

378:                                              ; preds = %360
  %379 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 23, !dbg !2165
  %380 = load i32, ptr %379, align 8, !dbg !2165, !tbaa !2166
  %381 = icmp eq i32 %380, 0, !dbg !2167
  br i1 %381, label %382, label %473, !dbg !2168

382:                                              ; preds = %378
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20, !dbg !2169
  %383 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %376) #21, !dbg !2170
  %384 = trunc i64 %383 to i32, !dbg !2170
  %385 = add i32 %384, 1, !dbg !2170
  %386 = tail call ptr @x264_malloc(i32 noundef %385) #20, !dbg !2171
  call void @llvm.dbg.value(metadata ptr %386, metadata !2150, metadata !DIExpression()), !dbg !2172
  %387 = load ptr, ptr %375, align 8, !dbg !2173, !tbaa !2162
  %388 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %386, ptr noundef nonnull dereferenceable(1) %387) #20, !dbg !2174
  store i32 1, ptr %379, align 8, !dbg !2175, !tbaa !2166
  call void @llvm.dbg.value(metadata ptr %386, metadata !2145, metadata !DIExpression()), !dbg !2172
  %389 = load i8, ptr %386, align 1, !dbg !2176, !tbaa !1743
  %390 = icmp eq i8 %389, 0, !dbg !2179
  br i1 %390, label %401, label %391, !dbg !2179

391:                                              ; preds = %382, %391
  %392 = phi i32 [ %397, %391 ], [ 1, %382 ], !dbg !2172
  %393 = phi i8 [ %399, %391 ], [ %389, %382 ]
  %394 = phi ptr [ %398, %391 ], [ %386, %382 ]
  call void @llvm.dbg.value(metadata ptr %394, metadata !2145, metadata !DIExpression()), !dbg !2172
  %395 = icmp eq i8 %393, 47, !dbg !2180
  %396 = zext i1 %395 to i32, !dbg !2180
  %397 = add nuw nsw i32 %392, %396, !dbg !2181
  store i32 %397, ptr %379, align 8, !dbg !2181, !tbaa !2166
  %398 = getelementptr inbounds i8, ptr %394, i64 1, !dbg !2182
  call void @llvm.dbg.value(metadata ptr %398, metadata !2145, metadata !DIExpression()), !dbg !2172
  %399 = load i8, ptr %398, align 1, !dbg !2176, !tbaa !1743
  %400 = icmp eq i8 %399, 0, !dbg !2179
  br i1 %400, label %401, label %391, !dbg !2179, !llvm.loop !2183

401:                                              ; preds = %391, %382
  %402 = phi i32 [ 1, %382 ], [ %397, %391 ], !dbg !2185
  %403 = shl i32 %402, 5, !dbg !2186
  %404 = tail call ptr @x264_malloc(i32 noundef %403) #20, !dbg !2187
  %405 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 22, !dbg !2188
  store ptr %404, ptr %405, align 8, !dbg !2189, !tbaa !2190
  call void @llvm.dbg.value(metadata ptr %386, metadata !2145, metadata !DIExpression()), !dbg !2172
  call void @llvm.dbg.value(metadata i32 0, metadata !2144, metadata !DIExpression()), !dbg !2157
  %406 = load i32, ptr %379, align 8, !dbg !2191, !tbaa !2166
  %407 = icmp sgt i32 %406, 0, !dbg !2194
  br i1 %407, label %408, label %471, !dbg !2195

408:                                              ; preds = %401, %466
  %409 = phi i64 [ %467, %466 ], [ 0, %401 ]
  %410 = phi ptr [ null, %466 ], [ %386, %401 ]
  call void @llvm.dbg.value(metadata i64 %409, metadata !2144, metadata !DIExpression()), !dbg !2157
  call void @llvm.dbg.value(metadata ptr %410, metadata !2145, metadata !DIExpression()), !dbg !2172
  call void @llvm.dbg.value(metadata ptr %4, metadata !2149, metadata !DIExpression(DW_OP_deref)), !dbg !2172
  %411 = call ptr @strtok_r(ptr noundef %410, ptr noundef nonnull @.str.46, ptr noundef nonnull %4) #20, !dbg !2196
  call void @llvm.dbg.value(metadata ptr %411, metadata !2148, metadata !DIExpression()), !dbg !2172
  %412 = icmp eq ptr %411, null, !dbg !2198
  br i1 %412, label %413, label %414, !dbg !2200

413:                                              ; preds = %408
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20, !dbg !2201
  br label %553

414:                                              ; preds = %408
  %415 = load ptr, ptr %405, align 8, !dbg !2202, !tbaa !2190
  %416 = getelementptr inbounds %struct.x264_zone_t, ptr %415, i64 %409, !dbg !2203
  call void @llvm.dbg.value(metadata ptr %0, metadata !2204, metadata !DIExpression()), !dbg !2216
  call void @llvm.dbg.value(metadata ptr %416, metadata !2209, metadata !DIExpression()), !dbg !2216
  call void @llvm.dbg.value(metadata ptr %411, metadata !2210, metadata !DIExpression()), !dbg !2216
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #20, !dbg !2218
  call void @llvm.dbg.value(metadata i32 0, metadata !2211, metadata !DIExpression()), !dbg !2216
  store i32 0, ptr %2, align 4, !dbg !2219, !tbaa !1667
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20, !dbg !2220
  %417 = getelementptr inbounds %struct.x264_zone_t, ptr %415, i64 %409, i32 5, !dbg !2221
  store ptr null, ptr %417, align 8, !dbg !2222, !tbaa !2223
  %418 = getelementptr inbounds %struct.x264_zone_t, ptr %415, i64 %409, i32 4, !dbg !2225
  store float 1.000000e+00, ptr %418, align 8, !dbg !2226, !tbaa !2227
  %419 = getelementptr inbounds %struct.x264_zone_t, ptr %415, i64 %409, i32 1, !dbg !2228
  %420 = getelementptr inbounds %struct.x264_zone_t, ptr %415, i64 %409, i32 3, !dbg !2230
  call void @llvm.dbg.value(metadata ptr %2, metadata !2211, metadata !DIExpression(DW_OP_deref)), !dbg !2216
  %421 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %411, ptr noundef nonnull @.str.49, ptr noundef %416, ptr noundef nonnull %419, ptr noundef nonnull %420, ptr noundef nonnull %2) #20, !dbg !2231
  %422 = icmp sgt i32 %421, 2, !dbg !2232
  br i1 %422, label %430, label %423, !dbg !2233

423:                                              ; preds = %414
  call void @llvm.dbg.value(metadata ptr %2, metadata !2211, metadata !DIExpression(DW_OP_deref)), !dbg !2216
  %424 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %411, ptr noundef nonnull @.str.50, ptr noundef nonnull %416, ptr noundef nonnull %419, ptr noundef nonnull %418, ptr noundef nonnull %2) #20, !dbg !2234
  %425 = icmp sgt i32 %424, 2, !dbg !2236
  br i1 %425, label %430, label %426, !dbg !2237

426:                                              ; preds = %423
  call void @llvm.dbg.value(metadata ptr %2, metadata !2211, metadata !DIExpression(DW_OP_deref)), !dbg !2216
  %427 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %411, ptr noundef nonnull @.str.51, ptr noundef nonnull %416, ptr noundef nonnull %419, ptr noundef nonnull %2) #20, !dbg !2238
  %428 = icmp sgt i32 %427, 1, !dbg !2240
  br i1 %428, label %430, label %429, !dbg !2241

429:                                              ; preds = %426
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.52, ptr noundef nonnull %411) #20, !dbg !2242
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20, !dbg !2244
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #20, !dbg !2244
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20, !dbg !2201
  br label %553

430:                                              ; preds = %426, %423, %414
  %431 = phi i32 [ 1, %414 ], [ 0, %423 ], [ 0, %426 ]
  %432 = getelementptr inbounds %struct.x264_zone_t, ptr %415, i64 %409, i32 2, !dbg !2245
  store i32 %431, ptr %432, align 8, !dbg !2245, !tbaa !2246
  %433 = load i32, ptr %2, align 4, !dbg !2247, !tbaa !1667
  call void @llvm.dbg.value(metadata i32 %433, metadata !2211, metadata !DIExpression()), !dbg !2216
  %434 = sext i32 %433 to i64, !dbg !2248
  %435 = getelementptr inbounds i8, ptr %411, i64 %434, !dbg !2248
  call void @llvm.dbg.value(metadata ptr %435, metadata !2210, metadata !DIExpression()), !dbg !2216
  %436 = load i8, ptr %435, align 1, !dbg !2249, !tbaa !1743
  %437 = icmp eq i8 %436, 0, !dbg !2249
  br i1 %437, label %466, label %438, !dbg !2251

438:                                              ; preds = %430
  %439 = call noalias dereferenceable_or_null(616) ptr @malloc(i64 noundef 616) #22, !dbg !2252
  store ptr %439, ptr %417, align 8, !dbg !2253, !tbaa !2223
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(616) %439, ptr noundef nonnull align 16 dereferenceable(616) %0, i64 616, i1 false), !dbg !2254
  call void @llvm.dbg.value(metadata ptr %435, metadata !2210, metadata !DIExpression()), !dbg !2216
  call void @llvm.dbg.value(metadata ptr %3, metadata !2213, metadata !DIExpression(DW_OP_deref)), !dbg !2216
  %440 = call ptr @strtok_r(ptr noundef nonnull %435, ptr noundef nonnull @.str.53, ptr noundef nonnull %3) #20, !dbg !2255
  call void @llvm.dbg.value(metadata ptr %440, metadata !2212, metadata !DIExpression()), !dbg !2216
  %441 = icmp eq ptr %440, null, !dbg !2256
  br i1 %441, label %466, label %442, !dbg !2256

442:                                              ; preds = %438
  %443 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %440, i32 noundef 61) #21, !dbg !2257
  call void @llvm.dbg.value(metadata ptr %443, metadata !2214, metadata !DIExpression()), !dbg !2258
  %444 = icmp eq ptr %443, null, !dbg !2259
  br i1 %444, label %447, label %445, !dbg !2261

445:                                              ; preds = %442
  store i8 0, ptr %443, align 1, !dbg !2262, !tbaa !1743
  %446 = getelementptr inbounds i8, ptr %443, i64 1, !dbg !2264
  call void @llvm.dbg.value(metadata ptr %446, metadata !2214, metadata !DIExpression()), !dbg !2258
  br label %447, !dbg !2265

447:                                              ; preds = %445, %442
  %448 = phi ptr [ %446, %445 ], [ null, %442 ], !dbg !2258
  call void @llvm.dbg.value(metadata ptr %448, metadata !2214, metadata !DIExpression()), !dbg !2258
  %449 = load ptr, ptr %417, align 8, !dbg !2266, !tbaa !2223
  %450 = call i32 @x264_param_parse(ptr noundef %449, ptr noundef nonnull %440, ptr noundef %448) #20, !dbg !2268
  %451 = icmp eq i32 %450, 0, !dbg !2268
  br i1 %451, label %453, label %452, !dbg !2269

452:                                              ; preds = %447
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.54, ptr noundef nonnull %440, ptr noundef %448) #20, !dbg !2270
  call void @llvm.dbg.value(metadata ptr poison, metadata !2210, metadata !DIExpression()), !dbg !2216
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20, !dbg !2244
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #20, !dbg !2244
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20, !dbg !2201
  br label %553

453:                                              ; preds = %447, %461
  call void @llvm.dbg.value(metadata ptr null, metadata !2210, metadata !DIExpression()), !dbg !2216
  call void @llvm.dbg.value(metadata ptr %3, metadata !2213, metadata !DIExpression(DW_OP_deref)), !dbg !2216
  %454 = call ptr @strtok_r(ptr noundef null, ptr noundef nonnull @.str.53, ptr noundef nonnull %3) #20, !dbg !2255
  call void @llvm.dbg.value(metadata ptr %454, metadata !2212, metadata !DIExpression()), !dbg !2216
  %455 = icmp eq ptr %454, null, !dbg !2256
  br i1 %455, label %466, label %456, !dbg !2256

456:                                              ; preds = %453
  %457 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %454, i32 noundef 61) #21, !dbg !2257
  call void @llvm.dbg.value(metadata ptr %457, metadata !2214, metadata !DIExpression()), !dbg !2258
  %458 = icmp eq ptr %457, null, !dbg !2259
  br i1 %458, label %461, label %459, !dbg !2261

459:                                              ; preds = %456
  store i8 0, ptr %457, align 1, !dbg !2262, !tbaa !1743
  %460 = getelementptr inbounds i8, ptr %457, i64 1, !dbg !2264
  call void @llvm.dbg.value(metadata ptr %460, metadata !2214, metadata !DIExpression()), !dbg !2258
  br label %461, !dbg !2265

461:                                              ; preds = %459, %456
  %462 = phi ptr [ %460, %459 ], [ null, %456 ], !dbg !2258
  call void @llvm.dbg.value(metadata ptr %462, metadata !2214, metadata !DIExpression()), !dbg !2258
  %463 = load ptr, ptr %417, align 8, !dbg !2266, !tbaa !2223
  %464 = call i32 @x264_param_parse(ptr noundef %463, ptr noundef nonnull %454, ptr noundef %462) #20, !dbg !2268
  %465 = icmp eq i32 %464, 0, !dbg !2268
  br i1 %465, label %453, label %472, !dbg !2269, !llvm.loop !2272

466:                                              ; preds = %453, %438, %430
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20, !dbg !2244
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #20, !dbg !2244
  call void @llvm.dbg.value(metadata ptr null, metadata !2145, metadata !DIExpression()), !dbg !2172
  %467 = add nuw nsw i64 %409, 1, !dbg !2275
  call void @llvm.dbg.value(metadata i64 %467, metadata !2144, metadata !DIExpression()), !dbg !2157
  %468 = load i32, ptr %379, align 8, !dbg !2191, !tbaa !2166
  %469 = sext i32 %468 to i64, !dbg !2194
  %470 = icmp slt i64 %467, %469, !dbg !2194
  br i1 %470, label %408, label %471, !dbg !2195, !llvm.loop !2276

471:                                              ; preds = %466, %401
  call void @x264_free(ptr noundef nonnull %386) #20, !dbg !2278
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20, !dbg !2201
  br label %473

472:                                              ; preds = %461
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.54, ptr noundef nonnull %454, ptr noundef %462) #20, !dbg !2270
  call void @llvm.dbg.value(metadata ptr poison, metadata !2210, metadata !DIExpression()), !dbg !2216
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20, !dbg !2244
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #20, !dbg !2244
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20, !dbg !2201
  br label %553

473:                                              ; preds = %471, %378, %360
  %474 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 23, !dbg !2279
  %475 = load i32, ptr %474, align 8, !dbg !2279, !tbaa !2166
  %476 = icmp sgt i32 %475, 0, !dbg !2280
  br i1 %476, label %477, label %563, !dbg !2281

477:                                              ; preds = %473
  call void @llvm.dbg.value(metadata i32 0, metadata !2144, metadata !DIExpression()), !dbg !2157
  %478 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 22
  %479 = load ptr, ptr %478, align 8, !tbaa !2190
  %480 = zext i32 %475 to i64, !dbg !2282
  br label %484, !dbg !2283

481:                                              ; preds = %494
  %482 = add nuw nsw i64 %485, 1, !dbg !2284
  call void @llvm.dbg.value(metadata i64 %485, metadata !2144, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2157
  %483 = icmp eq i64 %482, %480, !dbg !2282
  br i1 %483, label %504, label %484, !dbg !2283, !llvm.loop !2285

484:                                              ; preds = %481, %477
  %485 = phi i64 [ 0, %477 ], [ %482, %481 ]
  call void @llvm.dbg.value(metadata i64 %485, metadata !2144, metadata !DIExpression()), !dbg !2157
  %486 = getelementptr inbounds %struct.x264_zone_t, ptr %479, i64 %485, !dbg !2287
  %487 = load i32, ptr %486, align 8, !dbg !2287, !tbaa.struct !2288
  call void @llvm.dbg.value(metadata i32 %487, metadata !2151, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2289
  %488 = getelementptr inbounds i8, ptr %486, i64 4, !dbg !2287
  %489 = load i32, ptr %488, align 4, !dbg !2287, !tbaa.struct !2290
  call void @llvm.dbg.value(metadata i32 %489, metadata !2151, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !2289
  call void @llvm.dbg.value(metadata i32 poison, metadata !2151, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !2289
  call void @llvm.dbg.value(metadata i32 poison, metadata !2151, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !2289
  call void @llvm.dbg.value(metadata float poison, metadata !2151, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)), !dbg !2289
  %490 = icmp slt i32 %487, 0, !dbg !2291
  %491 = icmp sgt i32 %487, %489
  %492 = select i1 %490, i1 true, i1 %491, !dbg !2293
  br i1 %492, label %493, label %494, !dbg !2293

493:                                              ; preds = %484
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.47, i32 noundef %487, i32 noundef %489) #20, !dbg !2294
  br label %553, !dbg !2296

494:                                              ; preds = %484
  %495 = getelementptr inbounds i8, ptr %486, i64 16, !dbg !2287
  %496 = load float, ptr %495, align 8, !dbg !2287, !tbaa.struct !2297
  call void @llvm.dbg.value(metadata float %496, metadata !2151, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)), !dbg !2289
  %497 = getelementptr inbounds i8, ptr %486, i64 8, !dbg !2287
  %498 = load i32, ptr %497, align 8, !dbg !2287, !tbaa.struct !2298
  call void @llvm.dbg.value(metadata i32 %498, metadata !2151, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !2289
  %499 = icmp eq i32 %498, 0, !dbg !2299
  %500 = fcmp fast ole float %496, 0.000000e+00
  %501 = select i1 %499, i1 %500, i1 false, !dbg !2301
  call void @llvm.dbg.value(metadata i64 %485, metadata !2144, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2157
  br i1 %501, label %502, label %481, !dbg !2301

502:                                              ; preds = %494
  %503 = fpext float %496 to double, !dbg !2302
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.48, double noundef %503) #20, !dbg !2304
  br label %553, !dbg !2305

504:                                              ; preds = %481
  %505 = add nsw i32 %475, 1, !dbg !2306
  %506 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %374, i64 0, i32 52, !dbg !2307
  store i32 %505, ptr %506, align 8, !dbg !2308, !tbaa !2309
  %507 = shl i32 %505, 5, !dbg !2310
  %508 = call ptr @x264_malloc(i32 noundef %507) #20, !dbg !2311
  %509 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %374, i64 0, i32 53, !dbg !2312
  store ptr %508, ptr %509, align 8, !dbg !2313, !tbaa !2314
  %510 = getelementptr inbounds %struct.x264_zone_t, ptr %508, i64 1, !dbg !2315
  %511 = load ptr, ptr %478, align 8, !dbg !2316, !tbaa !2190
  %512 = load i32, ptr %506, align 8, !dbg !2317, !tbaa !2309
  %513 = add nsw i32 %512, -1, !dbg !2318
  %514 = sext i32 %513 to i64, !dbg !2319
  %515 = shl nsw i64 %514, 5, !dbg !2320
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %510, ptr align 8 %511, i64 %515, i1 false), !dbg !2321
  %516 = load ptr, ptr %509, align 8, !dbg !2322, !tbaa !2314
  store i32 0, ptr %516, align 8, !dbg !2323, !tbaa !2324
  %517 = getelementptr inbounds %struct.x264_zone_t, ptr %516, i64 0, i32 1, !dbg !2325
  store i32 2147483647, ptr %517, align 4, !dbg !2326, !tbaa !2327
  %518 = getelementptr inbounds %struct.x264_zone_t, ptr %516, i64 0, i32 2, !dbg !2328
  store i32 0, ptr %518, align 8, !dbg !2329, !tbaa !2246
  %519 = getelementptr inbounds %struct.x264_zone_t, ptr %516, i64 0, i32 4, !dbg !2330
  store float 1.000000e+00, ptr %519, align 8, !dbg !2331, !tbaa !2227
  %520 = call ptr @x264_malloc(i32 noundef 616) #20, !dbg !2332
  %521 = load ptr, ptr %509, align 8, !dbg !2333, !tbaa !2314
  %522 = getelementptr inbounds %struct.x264_zone_t, ptr %521, i64 0, i32 5, !dbg !2334
  store ptr %520, ptr %522, align 8, !dbg !2335, !tbaa !2223
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(616) %520, ptr noundef nonnull align 16 dereferenceable(616) %0, i64 616, i1 false), !dbg !2336
  call void @llvm.dbg.value(metadata i32 1, metadata !2144, metadata !DIExpression()), !dbg !2157
  %523 = load i32, ptr %506, align 8, !tbaa !2309
  %524 = icmp sgt i32 %523, 1, !dbg !2337
  br i1 %524, label %525, label %563, !dbg !2340

525:                                              ; preds = %504
  %526 = load ptr, ptr %509, align 8, !tbaa !2314
  %527 = getelementptr inbounds %struct.x264_zone_t, ptr %526, i64 0, i32 5
  %528 = zext i32 %523 to i64, !dbg !2337
  %529 = add nsw i64 %528, -1, !dbg !2340
  %530 = and i64 %529, 1, !dbg !2340
  %531 = icmp eq i32 %523, 2, !dbg !2340
  br i1 %531, label %554, label %532, !dbg !2340

532:                                              ; preds = %525
  %533 = and i64 %529, -2, !dbg !2340
  br label %534, !dbg !2340

534:                                              ; preds = %549, %532
  %535 = phi i64 [ 1, %532 ], [ %550, %549 ]
  %536 = phi i64 [ 0, %532 ], [ %551, %549 ]
  call void @llvm.dbg.value(metadata i64 %535, metadata !2144, metadata !DIExpression()), !dbg !2157
  %537 = getelementptr inbounds %struct.x264_zone_t, ptr %526, i64 %535, i32 5, !dbg !2341
  %538 = load ptr, ptr %537, align 8, !dbg !2341, !tbaa !2223
  %539 = icmp eq ptr %538, null, !dbg !2344
  br i1 %539, label %540, label %542, !dbg !2345

540:                                              ; preds = %534
  %541 = load ptr, ptr %527, align 8, !dbg !2346, !tbaa !2223
  store ptr %541, ptr %537, align 8, !dbg !2347, !tbaa !2223
  br label %542, !dbg !2348

542:                                              ; preds = %540, %534
  %543 = add nuw nsw i64 %535, 1, !dbg !2349
  call void @llvm.dbg.value(metadata i64 %543, metadata !2144, metadata !DIExpression()), !dbg !2157
  call void @llvm.dbg.value(metadata i64 %543, metadata !2144, metadata !DIExpression()), !dbg !2157
  %544 = getelementptr inbounds %struct.x264_zone_t, ptr %526, i64 %543, i32 5, !dbg !2341
  %545 = load ptr, ptr %544, align 8, !dbg !2341, !tbaa !2223
  %546 = icmp eq ptr %545, null, !dbg !2344
  br i1 %546, label %547, label %549, !dbg !2345

547:                                              ; preds = %542
  %548 = load ptr, ptr %527, align 8, !dbg !2346, !tbaa !2223
  store ptr %548, ptr %544, align 8, !dbg !2347, !tbaa !2223
  br label %549, !dbg !2348

549:                                              ; preds = %547, %542
  %550 = add nuw nsw i64 %535, 2, !dbg !2349
  call void @llvm.dbg.value(metadata i64 %550, metadata !2144, metadata !DIExpression()), !dbg !2157
  %551 = add i64 %536, 2, !dbg !2340
  %552 = icmp eq i64 %551, %533, !dbg !2340
  br i1 %552, label %554, label %534, !dbg !2340, !llvm.loop !2350

553:                                              ; preds = %472, %493, %502, %413, %429, %452
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.7) #20, !dbg !2352
  br label %819, !dbg !2354

554:                                              ; preds = %549, %525
  %555 = phi i64 [ 1, %525 ], [ %550, %549 ]
  %556 = icmp eq i64 %530, 0, !dbg !2345
  br i1 %556, label %563, label %557, !dbg !2345

557:                                              ; preds = %554
  call void @llvm.dbg.value(metadata i64 %555, metadata !2144, metadata !DIExpression()), !dbg !2157
  %558 = getelementptr inbounds %struct.x264_zone_t, ptr %526, i64 %555, i32 5, !dbg !2341
  %559 = load ptr, ptr %558, align 8, !dbg !2341, !tbaa !2223
  %560 = icmp eq ptr %559, null, !dbg !2344
  br i1 %560, label %561, label %563, !dbg !2345

561:                                              ; preds = %557
  %562 = load ptr, ptr %527, align 8, !dbg !2346, !tbaa !2223
  store ptr %562, ptr %558, align 8, !dbg !2347, !tbaa !2223
  br label %563, !dbg !2348

563:                                              ; preds = %554, %561, %557, %504, %473
  %564 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 17, !dbg !2355
  %565 = load i32, ptr %564, align 8, !dbg !2355, !tbaa !1809
  %566 = icmp eq i32 %565, 0, !dbg !2356
  br i1 %566, label %771, label %567, !dbg !2357

567:                                              ; preds = %563
  %568 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 18, !dbg !2358
  %569 = load ptr, ptr %568, align 8, !dbg !2358, !tbaa !2361
  %570 = icmp eq ptr %569, null, !dbg !2358
  br i1 %570, label %571, label %572, !dbg !2362

571:                                              ; preds = %567
  call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 367, ptr noundef nonnull @__PRETTY_FUNCTION__.x264_ratecontrol_new) #23, !dbg !2358
  unreachable, !dbg !2358

572:                                              ; preds = %567
  %573 = call ptr @x264_slurp_file(ptr noundef nonnull %569) #20, !dbg !2363
  call void @llvm.dbg.value(metadata ptr %573, metadata !1766, metadata !DIExpression()), !dbg !2364
  call void @llvm.dbg.value(metadata ptr %573, metadata !1767, metadata !DIExpression()), !dbg !2364
  %574 = icmp eq ptr %573, null, !dbg !2365
  br i1 %574, label %575, label %576, !dbg !2367

575:                                              ; preds = %572
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.10) #20, !dbg !2368
  br label %819, !dbg !2370

576:                                              ; preds = %572
  %577 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %573, ptr noundef nonnull dereferenceable(10) @.str.11, i64 noundef 9) #21, !dbg !2371
  %578 = icmp eq i32 %577, 0, !dbg !2371
  br i1 %578, label %579, label %659, !dbg !2372

579:                                              ; preds = %576
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20, !dbg !2373
  call void @llvm.dbg.value(metadata ptr %573, metadata !1771, metadata !DIExpression()), !dbg !2374
  %580 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %573, i32 noundef 10) #21, !dbg !2375
  call void @llvm.dbg.value(metadata ptr %580, metadata !1766, metadata !DIExpression()), !dbg !2364
  %581 = icmp eq ptr %580, null, !dbg !2376
  br i1 %581, label %652, label %582, !dbg !2378

582:                                              ; preds = %579
  store i8 0, ptr %580, align 1, !dbg !2379, !tbaa !1743
  %583 = getelementptr inbounds i8, ptr %580, i64 1, !dbg !2380
  call void @llvm.dbg.value(metadata ptr %583, metadata !1766, metadata !DIExpression()), !dbg !2364
  %584 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %573, ptr noundef nonnull dereferenceable(1) @.str.12) #21, !dbg !2381
  call void @llvm.dbg.value(metadata ptr %584, metadata !1763, metadata !DIExpression()), !dbg !2364
  %585 = icmp eq ptr %584, null, !dbg !2383
  br i1 %585, label %595, label %586, !dbg !2384

586:                                              ; preds = %582
  call void @llvm.dbg.value(metadata ptr %5, metadata !1768, metadata !DIExpression(DW_OP_deref)), !dbg !2374
  %587 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %584, ptr noundef nonnull @.str.13, ptr noundef nonnull %5) #20, !dbg !2385
  %588 = icmp eq i32 %587, 0, !dbg !2385
  br i1 %588, label %595, label %589, !dbg !2386

589:                                              ; preds = %586
  %590 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 16, !dbg !2387
  %591 = load i32, ptr %590, align 16, !dbg !2387, !tbaa !2033
  %592 = load i32, ptr %5, align 4, !dbg !2388, !tbaa !1667
  call void @llvm.dbg.value(metadata i32 %592, metadata !1768, metadata !DIExpression()), !dbg !2374
  %593 = icmp eq i32 %591, %592, !dbg !2389
  br i1 %593, label %595, label %594, !dbg !2390

594:                                              ; preds = %589
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.14, i32 noundef %591, i32 noundef %592) #20, !dbg !2391
  br label %652, !dbg !2393

595:                                              ; preds = %589, %586, %582
  %596 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %573, ptr noundef nonnull dereferenceable(1) @.str.15) #21, !dbg !2394
  %597 = icmp eq ptr %596, null, !dbg !2394
  br i1 %597, label %603, label %598, !dbg !2396

598:                                              ; preds = %595
  %599 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 19, !dbg !2397
  %600 = load i32, ptr %599, align 4, !dbg !2397, !tbaa !2398
  %601 = icmp eq i32 %600, 0, !dbg !2399
  br i1 %601, label %602, label %603, !dbg !2400

602:                                              ; preds = %598
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.16) #20, !dbg !2401
  br label %603, !dbg !2401

603:                                              ; preds = %602, %598, %595
  %604 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %573, ptr noundef nonnull dereferenceable(1) @.str.17) #21, !dbg !2402
  call void @llvm.dbg.value(metadata ptr %604, metadata !1763, metadata !DIExpression()), !dbg !2364
  %605 = icmp eq ptr %604, null, !dbg !2404
  br i1 %605, label %615, label %606, !dbg !2405

606:                                              ; preds = %603
  call void @llvm.dbg.value(metadata ptr %5, metadata !1768, metadata !DIExpression(DW_OP_deref)), !dbg !2374
  %607 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %604, ptr noundef nonnull @.str.18, ptr noundef nonnull %5) #20, !dbg !2406
  %608 = icmp eq i32 %607, 0, !dbg !2406
  br i1 %608, label %615, label %609, !dbg !2407

609:                                              ; preds = %606
  %610 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 12, !dbg !2408
  %611 = load i32, ptr %610, align 16, !dbg !2408, !tbaa !2409
  %612 = load i32, ptr %5, align 4, !dbg !2410, !tbaa !1667
  call void @llvm.dbg.value(metadata i32 %612, metadata !1768, metadata !DIExpression()), !dbg !2374
  %613 = icmp eq i32 %611, %612, !dbg !2411
  br i1 %613, label %615, label %614, !dbg !2412

614:                                              ; preds = %609
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.19, i32 noundef %611, i32 noundef %612) #20, !dbg !2413
  br label %615, !dbg !2413

615:                                              ; preds = %614, %609, %606, %603
  %616 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %573, ptr noundef nonnull dereferenceable(1) @.str.20) #21, !dbg !2414
  %617 = icmp eq ptr %616, null, !dbg !2414
  br i1 %617, label %622, label %618, !dbg !2416

618:                                              ; preds = %615
  %619 = load i32, ptr %17, align 8, !dbg !2417, !tbaa !1802
  %620 = icmp eq i32 %619, 2, !dbg !2418
  br i1 %620, label %621, label %622, !dbg !2419

621:                                              ; preds = %618
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.21) #20, !dbg !2420
  br label %622, !dbg !2420

622:                                              ; preds = %621, %618, %615
  %623 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %573, ptr noundef nonnull dereferenceable(1) @.str.22) #21, !dbg !2421
  call void @llvm.dbg.value(metadata ptr %623, metadata !1763, metadata !DIExpression()), !dbg !2364
  %624 = icmp eq ptr %623, null, !dbg !2423
  br i1 %624, label %635, label %625, !dbg !2424

625:                                              ; preds = %622
  call void @llvm.dbg.value(metadata ptr %5, metadata !1768, metadata !DIExpression(DW_OP_deref)), !dbg !2374
  %626 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %623, ptr noundef nonnull @.str.23, ptr noundef nonnull %5) #20, !dbg !2425
  %627 = icmp ne i32 %626, 0, !dbg !2425
  %628 = load i32, ptr %5, align 4
  call void @llvm.dbg.value(metadata i32 %628, metadata !1768, metadata !DIExpression()), !dbg !2374
  %629 = icmp sgt i32 %628, -1
  %630 = select i1 %627, i1 %629, i1 false, !dbg !2426
  %631 = icmp slt i32 %628, 3
  %632 = select i1 %630, i1 %631, i1 false, !dbg !2426
  br i1 %632, label %633, label %635, !dbg !2426

633:                                              ; preds = %625
  %634 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 17, !dbg !2427
  store i32 %628, ptr %634, align 4, !dbg !2428, !tbaa !2429
  br label %640, !dbg !2430

635:                                              ; preds = %625, %622
  %636 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 16, !dbg !2431
  %637 = load i32, ptr %636, align 16, !dbg !2431, !tbaa !2033
  %638 = icmp eq i32 %637, 0, !dbg !2433
  br i1 %638, label %640, label %639, !dbg !2434

639:                                              ; preds = %635
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.24) #20, !dbg !2435
  br label %652, !dbg !2437

640:                                              ; preds = %635, %633
  %641 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %573, ptr noundef nonnull dereferenceable(1) @.str.25) #21, !dbg !2438
  call void @llvm.dbg.value(metadata ptr %641, metadata !1763, metadata !DIExpression()), !dbg !2364
  %642 = icmp eq ptr %641, null, !dbg !2440
  br i1 %642, label %651, label %643, !dbg !2441

643:                                              ; preds = %640
  call void @llvm.dbg.value(metadata ptr %5, metadata !1768, metadata !DIExpression(DW_OP_deref)), !dbg !2374
  %644 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %641, ptr noundef nonnull @.str.26, ptr noundef nonnull %5) #20, !dbg !2442
  %645 = icmp ne i32 %644, 0, !dbg !2442
  %646 = load i32, ptr %5, align 4
  call void @llvm.dbg.value(metadata i32 %646, metadata !1768, metadata !DIExpression()), !dbg !2374
  %647 = icmp sgt i32 %646, -2
  %648 = select i1 %645, i1 %647, i1 false, !dbg !2443
  %649 = icmp slt i32 %646, 101
  %650 = select i1 %648, i1 %649, i1 false, !dbg !2443
  br i1 %650, label %653, label %651, !dbg !2443

651:                                              ; preds = %643, %640
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.28) #20, !dbg !2444
  br label %652, !dbg !2446

652:                                              ; preds = %594, %651, %639, %579
  call void @llvm.dbg.value(metadata ptr poison, metadata !1766, metadata !DIExpression()), !dbg !2364
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20, !dbg !2447
  br label %819

653:                                              ; preds = %643
  %654 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 14, !dbg !2448
  store i32 %646, ptr %654, align 8, !dbg !2450, !tbaa !2451
  %655 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %641, ptr noundef nonnull dereferenceable(1) @.str.27) #21, !dbg !2452
  %656 = icmp ne ptr %655, null, !dbg !2453
  %657 = zext i1 %656 to i32, !dbg !2454
  %658 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 15, !dbg !2455
  store i32 %657, ptr %658, align 4, !dbg !2456, !tbaa !2457
  call void @llvm.dbg.value(metadata ptr %583, metadata !1766, metadata !DIExpression()), !dbg !2364
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20, !dbg !2447
  br label %659

659:                                              ; preds = %653, %576
  %660 = phi ptr [ %573, %576 ], [ %583, %653 ], !dbg !2364
  call void @llvm.dbg.value(metadata ptr %660, metadata !1766, metadata !DIExpression()), !dbg !2364
  call void @llvm.dbg.value(metadata ptr %660, metadata !1763, metadata !DIExpression()), !dbg !2364
  call void @llvm.dbg.value(metadata i32 -1, metadata !1759, metadata !DIExpression()), !dbg !1788
  br label %661, !dbg !2458

661:                                              ; preds = %659, %661
  %662 = phi i32 [ -1, %659 ], [ %666, %661 ]
  %663 = phi ptr [ %660, %659 ], [ %665, %661 ]
  call void @llvm.dbg.value(metadata i32 %662, metadata !1759, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata ptr %663, metadata !1763, metadata !DIExpression()), !dbg !2364
  %664 = getelementptr inbounds i8, ptr %663, i64 1, !dbg !2460
  %665 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %664, i32 noundef 59) #21, !dbg !2462
  call void @llvm.dbg.value(metadata ptr %665, metadata !1763, metadata !DIExpression()), !dbg !2364
  %666 = add nsw i32 %662, 1, !dbg !2463
  call void @llvm.dbg.value(metadata i32 %666, metadata !1759, metadata !DIExpression()), !dbg !1788
  %667 = icmp eq ptr %665, null, !dbg !2458
  br i1 %667, label %668, label %661, !dbg !2458, !llvm.loop !2464

668:                                              ; preds = %661
  %669 = icmp eq i32 %666, 0, !dbg !2466
  br i1 %669, label %670, label %671, !dbg !2468

670:                                              ; preds = %668
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.29) #20, !dbg !2469
  br label %819, !dbg !2471

671:                                              ; preds = %668
  %672 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %12, i64 0, i32 34, !dbg !2472
  store i32 %666, ptr %672, align 8, !dbg !2473, !tbaa !2474
  %673 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 7, !dbg !2475
  %674 = load i32, ptr %673, align 4, !dbg !2475, !tbaa !2477
  %675 = icmp sle i32 %674, %662, !dbg !2478
  %676 = icmp sgt i32 %674, 0
  %677 = and i1 %675, %676, !dbg !2479
  br i1 %677, label %678, label %681, !dbg !2479

678:                                              ; preds = %671
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.30, i32 noundef %674, i32 noundef %666) #20, !dbg !2480
  %679 = load i32, ptr %673, align 4, !dbg !2482, !tbaa !2477
  %680 = load i32, ptr %672, align 8, !dbg !2484, !tbaa !2474
  br label %681, !dbg !2485

681:                                              ; preds = %678, %671
  %682 = phi i32 [ %680, %678 ], [ %666, %671 ], !dbg !2484
  %683 = phi i32 [ %679, %678 ], [ %674, %671 ], !dbg !2482
  %684 = icmp sgt i32 %683, %682, !dbg !2486
  br i1 %684, label %685, label %686, !dbg !2487

685:                                              ; preds = %681
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.31, i32 noundef %683, i32 noundef %682) #20, !dbg !2488
  br label %819, !dbg !2490

686:                                              ; preds = %681
  %687 = mul i32 %682, 72, !dbg !2491
  %688 = call ptr @x264_malloc(i32 noundef %687) #20, !dbg !2492
  %689 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %12, i64 0, i32 35, !dbg !2493
  store ptr %688, ptr %689, align 8, !dbg !2494, !tbaa !2495
  %690 = load i32, ptr %672, align 8, !dbg !2496, !tbaa !2474
  %691 = sext i32 %690 to i64, !dbg !2497
  %692 = mul nsw i64 %691, 72, !dbg !2498
  call void @llvm.memset.p0.i64(ptr align 8 %688, i8 0, i64 %692, i1 false), !dbg !2499
  call void @llvm.dbg.value(metadata i32 0, metadata !1759, metadata !DIExpression()), !dbg !1788
  %693 = load i32, ptr %672, align 8, !tbaa !2474
  %694 = icmp sgt i32 %693, 0, !dbg !2500
  br i1 %694, label %695, label %765, !dbg !2501

695:                                              ; preds = %686
  %696 = load ptr, ptr %689, align 8, !tbaa !2495
  %697 = load i32, ptr %59, align 8, !tbaa !1848
  %698 = add nsw i32 %697, 10
  %699 = zext i32 %693 to i64, !dbg !2500
  br label %701, !dbg !2501

700:                                              ; preds = %701
  call void @llvm.dbg.value(metadata i32 0, metadata !1759, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata ptr %660, metadata !1763, metadata !DIExpression()), !dbg !2364
  br i1 %694, label %710, label %765, !dbg !2502

701:                                              ; preds = %695, %701
  %702 = phi i64 [ 0, %695 ], [ %708, %701 ]
  call void @llvm.dbg.value(metadata i64 %702, metadata !1759, metadata !DIExpression()), !dbg !1788
  %703 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %696, i64 %702, !dbg !2503
  call void @llvm.dbg.value(metadata ptr %703, metadata !1772, metadata !DIExpression()), !dbg !2504
  store i32 0, ptr %703, align 8, !dbg !2505, !tbaa !2506
  call void @llvm.dbg.value(metadata double 2.000000e+01, metadata !2044, metadata !DIExpression()), !dbg !2508
  %704 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %696, i64 %702, i32 8, !dbg !2510
  store float 0x4001228A80000000, ptr %704, align 8, !dbg !2511, !tbaa !2512
  %705 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %696, i64 %702, i32 2, !dbg !2513
  store float 0x4001228A80000000, ptr %705, align 8, !dbg !2514, !tbaa !2515
  %706 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %696, i64 %702, i32 5, !dbg !2516
  store i32 %698, ptr %706, align 4, !dbg !2517, !tbaa !2518
  %707 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %696, i64 %702, i32 9, !dbg !2519
  store i32 0, ptr %707, align 4, !dbg !2520, !tbaa !2521
  %708 = add nuw nsw i64 %702, 1, !dbg !2522
  call void @llvm.dbg.value(metadata i64 %708, metadata !1759, metadata !DIExpression()), !dbg !1788
  %709 = icmp eq i64 %708, %699, !dbg !2500
  br i1 %709, label %700, label %701, !dbg !2501, !llvm.loop !2523

710:                                              ; preds = %700, %753
  %711 = phi i32 [ %762, %753 ], [ 0, %700 ]
  %712 = phi ptr [ %718, %753 ], [ %660, %700 ]
  call void @llvm.dbg.value(metadata i32 %711, metadata !1759, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata ptr %712, metadata !1763, metadata !DIExpression()), !dbg !2364
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #20, !dbg !2525
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #20, !dbg !2526
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #20, !dbg !2527
  %713 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %712, i32 noundef 59) #21, !dbg !2528
  call void @llvm.dbg.value(metadata ptr %713, metadata !1783, metadata !DIExpression()), !dbg !2529
  %714 = icmp eq ptr %713, null, !dbg !2530
  br i1 %714, label %717, label %715, !dbg !2532

715:                                              ; preds = %710
  store i8 0, ptr %713, align 1, !dbg !2533, !tbaa !1743
  %716 = getelementptr inbounds i8, ptr %713, i64 1, !dbg !2535
  call void @llvm.dbg.value(metadata ptr %716, metadata !1783, metadata !DIExpression()), !dbg !2529
  br label %717, !dbg !2536

717:                                              ; preds = %715, %710
  %718 = phi ptr [ %716, %715 ], [ null, %710 ], !dbg !2529
  call void @llvm.dbg.value(metadata ptr %718, metadata !1783, metadata !DIExpression()), !dbg !2529
  call void @llvm.dbg.value(metadata ptr %6, metadata !1780, metadata !DIExpression(DW_OP_deref)), !dbg !2529
  %719 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %712, ptr noundef nonnull @.str.32, ptr noundef nonnull %6) #20, !dbg !2537
  call void @llvm.dbg.value(metadata i32 %719, metadata !1782, metadata !DIExpression()), !dbg !2529
  %720 = load i32, ptr %6, align 4, !dbg !2538, !tbaa !1667
  call void @llvm.dbg.value(metadata i32 %720, metadata !1780, metadata !DIExpression()), !dbg !2529
  %721 = icmp slt i32 %720, 0, !dbg !2540
  br i1 %721, label %725, label %722, !dbg !2541

722:                                              ; preds = %717
  %723 = load i32, ptr %672, align 8, !dbg !2542, !tbaa !2474
  %724 = icmp slt i32 %720, %723, !dbg !2543
  br i1 %724, label %726, label %725, !dbg !2544

725:                                              ; preds = %722, %717
  call void @llvm.dbg.value(metadata i32 %720, metadata !1780, metadata !DIExpression()), !dbg !2529
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.33, i32 noundef %720, i32 noundef %711) #20, !dbg !2545
  br label %752, !dbg !2547

726:                                              ; preds = %722
  %727 = load ptr, ptr %689, align 8, !dbg !2548, !tbaa !2495
  %728 = zext i32 %720 to i64
  %729 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %727, i64 %728, !dbg !2549
  call void @llvm.dbg.value(metadata ptr %729, metadata !1776, metadata !DIExpression()), !dbg !2529
  %730 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %727, i64 %728, i32 14, !dbg !2550
  store i8 0, ptr %730, align 8, !dbg !2551, !tbaa !2552
  %731 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %727, i64 %728, i32 4, !dbg !2553
  %732 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %727, i64 %728, i32 3, !dbg !2554
  %733 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %727, i64 %728, i32 5, !dbg !2555
  %734 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %727, i64 %728, i32 10, !dbg !2556
  %735 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %727, i64 %728, i32 11, !dbg !2557
  %736 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %727, i64 %728, i32 12, !dbg !2558
  call void @llvm.dbg.value(metadata ptr %7, metadata !1781, metadata !DIExpression(DW_OP_deref)), !dbg !2529
  call void @llvm.dbg.value(metadata ptr %8, metadata !1784, metadata !DIExpression(DW_OP_deref)), !dbg !2529
  %737 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %712, ptr noundef nonnull @.str.34, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %731, ptr noundef nonnull %732, ptr noundef nonnull %733, ptr noundef nonnull %734, ptr noundef nonnull %735, ptr noundef nonnull %736, ptr noundef nonnull %730) #20, !dbg !2559
  %738 = add nsw i32 %737, %719, !dbg !2560
  call void @llvm.dbg.value(metadata i32 %738, metadata !1782, metadata !DIExpression()), !dbg !2529
  %739 = load i8, ptr %7, align 1, !dbg !2561, !tbaa !1743
  call void @llvm.dbg.value(metadata i8 %739, metadata !1781, metadata !DIExpression()), !dbg !2529
  %740 = sext i8 %739 to i32, !dbg !2561
  switch i32 %740, label %750 [
    i32 73, label %741
    i32 105, label %747
    i32 80, label %743
    i32 66, label %744
    i32 98, label %746
  ], !dbg !2562

741:                                              ; preds = %726
  %742 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %727, i64 %728, i32 1, !dbg !2563
  store i32 1, ptr %742, align 4, !dbg !2565, !tbaa !2566
  br label %747, !dbg !2567

743:                                              ; preds = %726
  br label %747, !dbg !2568

744:                                              ; preds = %726
  %745 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %727, i64 %728, i32 1, !dbg !2569
  store i32 1, ptr %745, align 4, !dbg !2570, !tbaa !2566
  br label %746, !dbg !2571

746:                                              ; preds = %726, %744
  br label %747, !dbg !2572

747:                                              ; preds = %741, %726, %746, %743
  %748 = phi i32 [ 1, %746 ], [ 0, %743 ], [ 2, %726 ], [ 2, %741 ]
  store i32 %748, ptr %729, align 8, !dbg !2573, !tbaa !2506
  call void @llvm.dbg.value(metadata i32 %738, metadata !1782, metadata !DIExpression()), !dbg !2529
  %749 = icmp slt i32 %738, 10, !dbg !2574
  br i1 %749, label %750, label %753, !dbg !2576

750:                                              ; preds = %726, %747
  %751 = phi i32 [ %738, %747 ], [ -1, %726 ]
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.35, i32 noundef %711, i32 noundef %751) #20, !dbg !2577
  br label %752, !dbg !2579

752:                                              ; preds = %725, %750
  call void @llvm.dbg.value(metadata ptr poison, metadata !1763, metadata !DIExpression()), !dbg !2364
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #20, !dbg !2580
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #20, !dbg !2580
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #20, !dbg !2580
  br label %819

753:                                              ; preds = %747
  %754 = load float, ptr %8, align 4, !dbg !2581, !tbaa !1622
  call void @llvm.dbg.value(metadata float %754, metadata !1784, metadata !DIExpression()), !dbg !2529
  %755 = fpext float %754 to double, !dbg !2581
  call void @llvm.dbg.value(metadata double %755, metadata !2044, metadata !DIExpression()), !dbg !2582
  %756 = fmul fast double %755, 0x3FC5555555555555, !dbg !2584
  %757 = fadd fast double %756, -2.000000e+00, !dbg !2584
  %758 = call fast double @llvm.exp2.f64(double %757), !dbg !2585
  %759 = fmul fast double %758, 8.500000e-01, !dbg !2586
  %760 = fptrunc double %759 to float, !dbg !2587
  %761 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %727, i64 %728, i32 2, !dbg !2588
  store float %760, ptr %761, align 8, !dbg !2589, !tbaa !2515
  call void @llvm.dbg.value(metadata ptr %718, metadata !1763, metadata !DIExpression()), !dbg !2364
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #20, !dbg !2580
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #20, !dbg !2580
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #20, !dbg !2580
  %762 = add nuw nsw i32 %711, 1, !dbg !2590
  call void @llvm.dbg.value(metadata i32 %762, metadata !1759, metadata !DIExpression()), !dbg !1788
  %763 = load i32, ptr %672, align 8, !dbg !2591, !tbaa !2474
  %764 = icmp slt i32 %762, %763, !dbg !2592
  br i1 %764, label %710, label %765, !dbg !2502, !llvm.loop !2593

765:                                              ; preds = %753, %686, %700
  call void @x264_free(ptr noundef nonnull %573) #20, !dbg !2595
  %766 = load i32, ptr %17, align 8, !dbg !2596, !tbaa !1802
  %767 = icmp eq i32 %766, 2, !dbg !2598
  br i1 %767, label %768, label %771, !dbg !2599

768:                                              ; preds = %765
  %769 = call fastcc i32 @init_pass2(ptr noundef nonnull %0), !dbg !2600
  %770 = icmp slt i32 %769, 0, !dbg !2603
  br i1 %770, label %819, label %771, !dbg !2604

771:                                              ; preds = %765, %768, %563
  %772 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 15, !dbg !2605
  %773 = load i32, ptr %772, align 4, !dbg !2605, !tbaa !2606
  %774 = icmp eq i32 %773, 0, !dbg !2607
  br i1 %774, label %797, label %775, !dbg !2608

775:                                              ; preds = %771
  %776 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 16, !dbg !2609
  %777 = load ptr, ptr %776, align 8, !dbg !2609, !tbaa !2610
  %778 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %777) #21, !dbg !2611
  %779 = trunc i64 %778 to i32, !dbg !2611
  %780 = add i32 %779, 6, !dbg !2611
  %781 = call ptr @x264_malloc(i32 noundef %780) #20, !dbg !2612
  %782 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %12, i64 0, i32 33, !dbg !2613
  store ptr %781, ptr %782, align 8, !dbg !2614, !tbaa !2615
  %783 = load ptr, ptr %776, align 8, !dbg !2616, !tbaa !2610
  %784 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %781, ptr noundef nonnull dereferenceable(1) %783) #20, !dbg !2617
  %785 = load ptr, ptr %782, align 8, !dbg !2618, !tbaa !2615
  %786 = call i64 @strlen(ptr nonnull dereferenceable(1) %785), !dbg !2619
  %787 = getelementptr inbounds i8, ptr %785, i64 %786, !dbg !2619
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %787, ptr noundef nonnull align 1 dereferenceable(6) @.str.36, i64 6, i1 false), !dbg !2619
  %788 = load ptr, ptr %782, align 8, !dbg !2620, !tbaa !2615
  %789 = call noalias ptr @fopen(ptr noundef %788, ptr noundef nonnull @.str.37), !dbg !2621
  %790 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %12, i64 0, i32 32, !dbg !2622
  store ptr %789, ptr %790, align 8, !dbg !2623, !tbaa !2624
  %791 = icmp eq ptr %789, null, !dbg !2625
  br i1 %791, label %792, label %793, !dbg !2627

792:                                              ; preds = %775
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.10) #20, !dbg !2628
  br label %819

793:                                              ; preds = %775
  %794 = call ptr @x264_param2string(ptr noundef nonnull %0, i32 noundef 1) #20, !dbg !2630
  call void @llvm.dbg.value(metadata ptr %794, metadata !1785, metadata !DIExpression()), !dbg !2631
  %795 = load ptr, ptr %790, align 8, !dbg !2632, !tbaa !2624
  %796 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %795, ptr noundef nonnull @.str.38, ptr noundef %794), !dbg !2633
  call void @x264_free(ptr noundef %794) #20, !dbg !2634
  br label %797

797:                                              ; preds = %793, %771
  call void @llvm.dbg.value(metadata i32 0, metadata !1759, metadata !DIExpression()), !dbg !1788
  %798 = load i32, ptr %9, align 4, !dbg !2635, !tbaa !1791
  %799 = icmp sgt i32 %798, 0, !dbg !2638
  br i1 %799, label %800, label %819, !dbg !2639

800:                                              ; preds = %797
  call void @llvm.dbg.value(metadata i64 0, metadata !1759, metadata !DIExpression()), !dbg !1788
  %801 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1, i64 0, !dbg !2640
  %802 = load ptr, ptr %801, align 8, !dbg !2640, !tbaa !1681
  %803 = getelementptr inbounds %struct.x264_t, ptr %802, i64 0, i32 46, !dbg !2642
  store ptr %12, ptr %803, align 16, !dbg !2643, !tbaa !1699
  call void @llvm.dbg.value(metadata i64 1, metadata !1759, metadata !DIExpression()), !dbg !1788
  %804 = icmp eq i32 %798, 1, !dbg !2638
  br i1 %804, label %819, label %805, !dbg !2639

805:                                              ; preds = %800, %805
  %806 = phi i64 [ %816, %805 ], [ 1, %800 ]
  call void @llvm.dbg.value(metadata i64 %806, metadata !1759, metadata !DIExpression()), !dbg !1788
  %807 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %12, i64 %806, !dbg !2644
  %808 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1, i64 %806, !dbg !2640
  %809 = load ptr, ptr %808, align 8, !dbg !2640, !tbaa !1681
  %810 = getelementptr inbounds %struct.x264_t, ptr %809, i64 0, i32 46, !dbg !2642
  store ptr %807, ptr %810, align 16, !dbg !2643, !tbaa !1699
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(608) %807, ptr noundef nonnull align 8 dereferenceable(608) %12, i64 608, i1 false), !dbg !2645, !tbaa.struct !2648
  %811 = load ptr, ptr %808, align 8, !dbg !2649, !tbaa !1681
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(616) %811, ptr noundef nonnull align 16 dereferenceable(616) %0, i64 616, i1 false), !dbg !2650
  %812 = load i32, ptr %180, align 16, !dbg !2651, !tbaa !1993
  %813 = load ptr, ptr %808, align 8, !dbg !2652, !tbaa !1681
  %814 = getelementptr inbounds %struct.x264_t, ptr %813, i64 0, i32 45, i32 62, !dbg !2653
  store i32 %812, ptr %814, align 16, !dbg !2654, !tbaa !1993
  %815 = load i32, ptr %9, align 4, !dbg !2635, !tbaa !1791
  %816 = add nuw nsw i64 %806, 1, !dbg !2655
  call void @llvm.dbg.value(metadata i64 %816, metadata !1759, metadata !DIExpression()), !dbg !1788
  %817 = sext i32 %815 to i64, !dbg !2638
  %818 = icmp slt i64 %816, %817, !dbg !2638
  br i1 %818, label %805, label %819, !dbg !2639, !llvm.loop !2656

819:                                              ; preds = %805, %800, %797, %792, %752, %652, %685, %670, %575, %768, %553, %67
  %820 = phi i32 [ -1, %67 ], [ -1, %553 ], [ -1, %768 ], [ -1, %575 ], [ -1, %670 ], [ -1, %685 ], [ -1, %652 ], [ -1, %752 ], [ -1, %792 ], [ 0, %797 ], [ 0, %800 ], [ 0, %805 ], !dbg !1788
  ret i32 %820, !dbg !2658
}

declare !dbg !2659 ptr @x264_malloc(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare !dbg !2662 void @x264_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log.f64(double) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noreturn nounwind
declare !dbg !2665 void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

declare !dbg !2669 ptr @x264_slurp_file(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2672 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2676 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2679 ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare !dbg !2682 noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

declare !dbg !2687 void @x264_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc i32 @init_pass2(ptr noundef %0) unnamed_addr #0 !dbg !2690 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2692, metadata !DIExpression()), !dbg !2754
  %2 = getelementptr %struct.x264_t, ptr %0, i64 0, i32 46, !dbg !2755
  %3 = load ptr, ptr %2, align 16, !dbg !2755, !tbaa !1699
  call void @llvm.dbg.value(metadata ptr %3, metadata !2693, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 0, metadata !2694, metadata !DIExpression()), !dbg !2754
  %4 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 5, !dbg !2756
  %5 = load i32, ptr %4, align 4, !dbg !2756, !tbaa !1831
  %6 = sitofp i32 %5 to double, !dbg !2757
  %7 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 34, !dbg !2758
  %8 = load i32, ptr %7, align 8, !dbg !2758, !tbaa !2474
  %9 = sitofp i32 %8 to double, !dbg !2759
  %10 = fmul fast double %9, 1.000000e+03, !dbg !2760
  %11 = fmul fast double %10, %6, !dbg !2761
  %12 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 4, !dbg !2762
  %13 = load double, ptr %12, align 8, !dbg !2762, !tbaa !1829
  %14 = fdiv fast double %11, %13, !dbg !2763
  %15 = fptoui double %14 to i64, !dbg !2764
  call void @llvm.dbg.value(metadata i64 %15, metadata !2695, metadata !DIExpression()), !dbg !2754
  %16 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 20, !dbg !2765
  %17 = load float, ptr %16, align 4, !dbg !2765, !tbaa !2766
  %18 = fpext float %17 to double, !dbg !2767
  call void @llvm.dbg.value(metadata double %18, metadata !2699, metadata !DIExpression()), !dbg !2754
  %19 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 21, !dbg !2768
  %20 = load float, ptr %19, align 8, !dbg !2768, !tbaa !2769
  %21 = fpext float %20 to double, !dbg !2770
  call void @llvm.dbg.value(metadata double %21, metadata !2700, metadata !DIExpression()), !dbg !2754
  %22 = fmul fast double %18, 4.000000e+00, !dbg !2771
  %23 = fptosi double %22 to i32, !dbg !2772
  %24 = or i32 %23, 1, !dbg !2773
  call void @llvm.dbg.value(metadata i32 %23, metadata !2701, metadata !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value)), !dbg !2754
  call void @llvm.dbg.value(metadata i32 0, metadata !2707, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 0, metadata !2694, metadata !DIExpression()), !dbg !2754
  %25 = icmp sgt i32 %8, 0, !dbg !2774
  br i1 %25, label %26, label %216, !dbg !2775

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 35
  %28 = load ptr, ptr %27, align 8, !tbaa !2495
  %29 = zext i32 %8 to i64, !dbg !2774
  %30 = and i64 %29, 3, !dbg !2775
  %31 = icmp ult i32 %8, 4, !dbg !2775
  br i1 %31, label %60, label %32, !dbg !2775

32:                                               ; preds = %26
  %33 = and i64 %29, 4294967292, !dbg !2775
  br label %34, !dbg !2775

34:                                               ; preds = %34, %32
  %35 = phi i64 [ 0, %32 ], [ %57, %34 ]
  %36 = phi i64 [ 0, %32 ], [ %56, %34 ]
  %37 = phi i64 [ 0, %32 ], [ %58, %34 ]
  call void @llvm.dbg.value(metadata i64 %36, metadata !2694, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %35, metadata !2707, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata !DIArgList(ptr %28, i64 %35), metadata !2708, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 72, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2776
  %38 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %28, i64 %35, i32 5, !dbg !2777
  %39 = load i32, ptr %38, align 4, !dbg !2777, !tbaa !2518
  %40 = sext i32 %39 to i64, !dbg !2778
  %41 = add i64 %36, %40, !dbg !2779
  call void @llvm.dbg.value(metadata i64 %41, metadata !2694, metadata !DIExpression()), !dbg !2754
  %42 = or i64 %35, 1, !dbg !2780
  call void @llvm.dbg.value(metadata i64 %42, metadata !2707, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %41, metadata !2694, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %42, metadata !2707, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata !DIArgList(ptr %28, i64 %42), metadata !2708, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 72, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2776
  %43 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %28, i64 %42, i32 5, !dbg !2777
  %44 = load i32, ptr %43, align 4, !dbg !2777, !tbaa !2518
  %45 = sext i32 %44 to i64, !dbg !2778
  %46 = add i64 %41, %45, !dbg !2779
  call void @llvm.dbg.value(metadata i64 %46, metadata !2694, metadata !DIExpression()), !dbg !2754
  %47 = or i64 %35, 2, !dbg !2780
  call void @llvm.dbg.value(metadata i64 %47, metadata !2707, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %46, metadata !2694, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %47, metadata !2707, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata !DIArgList(ptr %28, i64 %47), metadata !2708, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 72, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2776
  %48 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %28, i64 %47, i32 5, !dbg !2777
  %49 = load i32, ptr %48, align 4, !dbg !2777, !tbaa !2518
  %50 = sext i32 %49 to i64, !dbg !2778
  %51 = add i64 %46, %50, !dbg !2779
  call void @llvm.dbg.value(metadata i64 %51, metadata !2694, metadata !DIExpression()), !dbg !2754
  %52 = or i64 %35, 3, !dbg !2780
  call void @llvm.dbg.value(metadata i64 %52, metadata !2707, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %51, metadata !2694, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %52, metadata !2707, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata !DIArgList(ptr %28, i64 %52), metadata !2708, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 72, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2776
  %53 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %28, i64 %52, i32 5, !dbg !2777
  %54 = load i32, ptr %53, align 4, !dbg !2777, !tbaa !2518
  %55 = sext i32 %54 to i64, !dbg !2778
  %56 = add i64 %51, %55, !dbg !2779
  call void @llvm.dbg.value(metadata i64 %56, metadata !2694, metadata !DIExpression()), !dbg !2754
  %57 = add nuw nsw i64 %35, 4, !dbg !2780
  call void @llvm.dbg.value(metadata i64 %57, metadata !2707, metadata !DIExpression()), !dbg !2754
  %58 = add i64 %37, 4, !dbg !2775
  %59 = icmp eq i64 %58, %33, !dbg !2775
  br i1 %59, label %60, label %34, !dbg !2775, !llvm.loop !2781

60:                                               ; preds = %34, %26
  %61 = phi i64 [ undef, %26 ], [ %56, %34 ]
  %62 = phi i64 [ 0, %26 ], [ %57, %34 ]
  %63 = phi i64 [ 0, %26 ], [ %56, %34 ]
  %64 = icmp eq i64 %30, 0, !dbg !2775
  br i1 %64, label %76, label %65, !dbg !2775

65:                                               ; preds = %60, %65
  %66 = phi i64 [ %73, %65 ], [ %62, %60 ]
  %67 = phi i64 [ %72, %65 ], [ %63, %60 ]
  %68 = phi i64 [ %74, %65 ], [ 0, %60 ]
  call void @llvm.dbg.value(metadata i64 %67, metadata !2694, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %66, metadata !2707, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata !DIArgList(ptr %28, i64 %66), metadata !2708, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 72, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2776
  %69 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %28, i64 %66, i32 5, !dbg !2777
  %70 = load i32, ptr %69, align 4, !dbg !2777, !tbaa !2518
  %71 = sext i32 %70 to i64, !dbg !2778
  %72 = add i64 %67, %71, !dbg !2779
  call void @llvm.dbg.value(metadata i64 %72, metadata !2694, metadata !DIExpression()), !dbg !2754
  %73 = add nuw nsw i64 %66, 1, !dbg !2780
  call void @llvm.dbg.value(metadata i64 %73, metadata !2707, metadata !DIExpression()), !dbg !2754
  %74 = add i64 %68, 1, !dbg !2775
  %75 = icmp eq i64 %74, %30, !dbg !2775
  br i1 %75, label %76, label %65, !dbg !2775, !llvm.loop !2783

76:                                               ; preds = %65, %60
  %77 = phi i64 [ %61, %60 ], [ %72, %65 ], !dbg !2779
  %78 = icmp ugt i64 %77, %15, !dbg !2785
  br i1 %78, label %89, label %79, !dbg !2787

79:                                               ; preds = %76
  call void @llvm.dbg.value(metadata i32 0, metadata !2707, metadata !DIExpression()), !dbg !2754
  br i1 %25, label %80, label %216, !dbg !2788

80:                                               ; preds = %79
  %81 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 35
  %82 = load ptr, ptr %81, align 8, !tbaa !2495
  %83 = fmul fast double %21, 2.000000e+00
  %84 = fcmp fast ogt double %83, 1.000000e+00
  %85 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 7
  %86 = fcmp fast ult double %83, 0.000000e+00
  %87 = zext i32 %8 to i64, !dbg !2788
  %88 = zext i32 %8 to i64, !dbg !2789
  br label %94, !dbg !2788

89:                                               ; preds = %76
  %90 = uitofp i64 %77 to double, !dbg !2790
  %91 = fmul fast double %13, %90, !dbg !2792
  %92 = fdiv fast double %91, %10, !dbg !2793
  %93 = fptosi double %92 to i32, !dbg !2794
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.57, i32 noundef %93) #20, !dbg !2795
  br label %1254, !dbg !2796

94:                                               ; preds = %80, %207
  %95 = phi i64 [ 0, %80 ], [ %214, %207 ]
  call void @llvm.dbg.value(metadata i64 %95, metadata !2707, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata !DIArgList(ptr %82, i64 %95), metadata !2712, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 72, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2797
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2716, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2717, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2718, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata i32 1, metadata !2720, metadata !DIExpression()), !dbg !2797
  %96 = sub nsw i64 %87, %95
  %97 = icmp sgt i64 %96, 1
  %98 = select i1 %84, i1 %97, i1 false, !dbg !2798
  br i1 %98, label %99, label %152, !dbg !2798

99:                                               ; preds = %94
  %100 = load i32, ptr %85, align 8, !tbaa !1848
  %101 = sitofp i32 %100 to float
  %102 = fdiv fast float 1.000000e+00, %101
  br label %103, !dbg !2798

103:                                              ; preds = %99, %117
  %104 = phi i64 [ 1, %99 ], [ %146, %117 ]
  %105 = phi double [ 1.000000e+00, %99 ], [ %115, %117 ]
  %106 = phi <2 x double> [ zeroinitializer, %99 ], [ %145, %117 ]
  call void @llvm.dbg.value(metadata i64 %104, metadata !2720, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata double %105, metadata !2718, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata double undef, metadata !2717, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata double undef, metadata !2716, metadata !DIExpression()), !dbg !2797
  %107 = add nuw nsw i64 %104, %95, !dbg !2799
  call void @llvm.dbg.value(metadata !DIArgList(ptr %82, i64 %107), metadata !2721, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 72, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2800
  %108 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %82, i64 %107, i32 10, !dbg !2801
  %109 = load i32, ptr %108, align 8, !dbg !2801, !tbaa !2802
  %110 = sitofp i32 %109 to float, !dbg !2803
  %111 = fmul fast float %110, %102
  %112 = fpext float %111 to double, !dbg !2803
  %113 = fmul fast double %112, %112, !dbg !2804
  %114 = fsub fast double 1.000000e+00, %113, !dbg !2805
  %115 = fmul fast double %114, %105, !dbg !2806
  call void @llvm.dbg.value(metadata double %115, metadata !2718, metadata !DIExpression()), !dbg !2797
  %116 = fcmp fast olt double %115, 1.000000e-04, !dbg !2807
  br i1 %116, label %152, label %117, !dbg !2809

117:                                              ; preds = %103
  call void @llvm.dbg.value(metadata !DIArgList(ptr %82, i64 %107), metadata !2721, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 72, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2800
  %118 = trunc i64 %104 to i32, !dbg !2810
  %119 = mul i32 %118, %118, !dbg !2810
  %120 = sub i32 0, %119, !dbg !2810
  %121 = sitofp i32 %120 to double, !dbg !2811
  %122 = fmul fast double %121, 5.000000e-03, !dbg !2812
  %123 = tail call fast double @llvm.exp.f64(double %122), !dbg !2813
  call void @llvm.dbg.value(metadata double %141, metadata !2719, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata double undef, metadata !2716, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata !DIArgList(ptr %82, i64 %107), metadata !2814, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 72, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2820
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2819, metadata !DIExpression()), !dbg !2820
  %124 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %82, i64 %107, i32 2, !dbg !2822
  %125 = load float, ptr %124, align 8, !dbg !2822, !tbaa !2515
  %126 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %82, i64 %107, i32 3, !dbg !2823
  %127 = fpext float %125 to double, !dbg !2824
  %128 = fcmp fast ole float %125, 1.000000e+00, !dbg !2824
  %129 = select fast i1 %128, float 1.000000e+00, float %125, !dbg !2824
  %130 = fpext float %129 to double, !dbg !2824
  %131 = tail call fast double @llvm.pow.f64(double %127, double 1.100000e+00), !dbg !2825
  %132 = tail call fast double @llvm.sqrt.f64(double %130), !dbg !2826
  %133 = load <2 x i32>, ptr %126, align 4, !dbg !2823, !tbaa !1667
  %134 = sitofp <2 x i32> %133 to <2 x double>, !dbg !2827
  %135 = extractelement <2 x double> %134, i64 1, !dbg !2828
  %136 = fadd fast double %135, 1.000000e-01, !dbg !2828
  %137 = fmul fast double %131, %136, !dbg !2828
  %138 = extractelement <2 x double> %134, i64 0, !dbg !2829
  %139 = fmul fast double %132, %138, !dbg !2829
  %140 = fadd fast double %139, %137, !dbg !2829
  %141 = fmul fast double %115, %123, !dbg !2830
  %142 = fmul fast double %140, %141, !dbg !2831
  %143 = insertelement <2 x double> poison, double %141, i64 0, !dbg !2832
  %144 = insertelement <2 x double> %143, double %142, i64 1, !dbg !2832
  %145 = fadd fast <2 x double> %144, %106, !dbg !2833
  call void @llvm.dbg.value(metadata double undef, metadata !2717, metadata !DIExpression()), !dbg !2797
  %146 = add nuw nsw i64 %104, 1, !dbg !2834
  call void @llvm.dbg.value(metadata i64 %146, metadata !2720, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata double %115, metadata !2718, metadata !DIExpression()), !dbg !2797
  %147 = trunc i64 %146 to i32, !dbg !2835
  %148 = sitofp i32 %147 to double, !dbg !2835
  %149 = fcmp fast ogt double %83, %148, !dbg !2836
  %150 = icmp slt i64 %146, %96
  %151 = select i1 %149, i1 %150, i1 false, !dbg !2798
  br i1 %151, label %103, label %152, !dbg !2798, !llvm.loop !2837

152:                                              ; preds = %117, %103, %94
  %153 = phi <2 x double> [ zeroinitializer, %94 ], [ %106, %103 ], [ %145, %117 ], !dbg !2840
  call void @llvm.dbg.value(metadata double undef, metadata !2717, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata double undef, metadata !2716, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2718, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata i32 0, metadata !2720, metadata !DIExpression()), !dbg !2797
  br i1 %86, label %207, label %154, !dbg !2841

154:                                              ; preds = %152
  %155 = load i32, ptr %85, align 8, !tbaa !1848
  %156 = sitofp i32 %155 to float
  %157 = fdiv fast float 1.000000e+00, %156
  br label %165, !dbg !2841

158:                                              ; preds = %165
  %159 = add nuw nsw i64 %166, 1, !dbg !2842
  call void @llvm.dbg.value(metadata i32 poison, metadata !2720, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata double poison, metadata !2718, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata double poison, metadata !2717, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata double poison, metadata !2716, metadata !DIExpression()), !dbg !2797
  %160 = trunc i64 %159 to i32, !dbg !2843
  %161 = sitofp i32 %160 to double, !dbg !2843
  %162 = fcmp fast oge double %83, %161, !dbg !2844
  %163 = icmp ugt i64 %95, %166, !dbg !2845
  %164 = select i1 %162, i1 %163, i1 false, !dbg !2845
  br i1 %164, label %165, label %207, !dbg !2841, !llvm.loop !2846

165:                                              ; preds = %154, %158
  %166 = phi i64 [ 0, %154 ], [ %159, %158 ]
  %167 = phi double [ 1.000000e+00, %154 ], [ %205, %158 ]
  %168 = phi <2 x double> [ %153, %154 ], [ %197, %158 ]
  call void @llvm.dbg.value(metadata i64 %166, metadata !2720, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata double %167, metadata !2718, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata double undef, metadata !2717, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata double undef, metadata !2716, metadata !DIExpression()), !dbg !2797
  %169 = sub nsw i64 %95, %166, !dbg !2848
  call void @llvm.dbg.value(metadata !DIArgList(ptr %82, i64 %169), metadata !2725, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 72, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2849
  %170 = trunc i64 %166 to i32, !dbg !2850
  %171 = mul i32 %170, %170, !dbg !2850
  %172 = sub i32 0, %171, !dbg !2850
  %173 = sitofp i32 %172 to double, !dbg !2851
  %174 = fmul fast double %173, 5.000000e-03, !dbg !2852
  %175 = tail call fast double @llvm.exp.f64(double %174), !dbg !2853
  call void @llvm.dbg.value(metadata double %193, metadata !2719, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata double undef, metadata !2716, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata !DIArgList(ptr %82, i64 %169), metadata !2814, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 72, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2854
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2819, metadata !DIExpression()), !dbg !2854
  %176 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %82, i64 %169, i32 2, !dbg !2856
  %177 = load float, ptr %176, align 8, !dbg !2856, !tbaa !2515
  %178 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %82, i64 %169, i32 3, !dbg !2857
  %179 = fpext float %177 to double, !dbg !2858
  %180 = fcmp fast ole float %177, 1.000000e+00, !dbg !2858
  %181 = select fast i1 %180, float 1.000000e+00, float %177, !dbg !2858
  %182 = fpext float %181 to double, !dbg !2858
  %183 = tail call fast double @llvm.pow.f64(double %179, double 1.100000e+00), !dbg !2859
  %184 = tail call fast double @llvm.sqrt.f64(double %182), !dbg !2860
  %185 = load <2 x i32>, ptr %178, align 4, !dbg !2857, !tbaa !1667
  %186 = sitofp <2 x i32> %185 to <2 x double>, !dbg !2861
  %187 = extractelement <2 x double> %186, i64 1, !dbg !2862
  %188 = fadd fast double %187, 1.000000e-01, !dbg !2862
  %189 = fmul fast double %183, %188, !dbg !2862
  %190 = extractelement <2 x double> %186, i64 0, !dbg !2863
  %191 = fmul fast double %184, %190, !dbg !2863
  %192 = fadd fast double %191, %189, !dbg !2863
  %193 = fmul fast double %175, %167, !dbg !2864
  %194 = fmul fast double %192, %193, !dbg !2865
  %195 = insertelement <2 x double> poison, double %193, i64 0, !dbg !2866
  %196 = insertelement <2 x double> %195, double %194, i64 1, !dbg !2866
  %197 = fadd fast <2 x double> %196, %168, !dbg !2867
  call void @llvm.dbg.value(metadata double undef, metadata !2717, metadata !DIExpression()), !dbg !2797
  %198 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %82, i64 %169, i32 10, !dbg !2868
  %199 = load i32, ptr %198, align 8, !dbg !2868, !tbaa !2802
  %200 = sitofp i32 %199 to float, !dbg !2869
  %201 = fmul fast float %200, %157
  %202 = fpext float %201 to double, !dbg !2869
  %203 = fmul fast double %202, %202, !dbg !2870
  %204 = fsub fast double 1.000000e+00, %203, !dbg !2871
  %205 = fmul fast double %204, %167, !dbg !2872
  call void @llvm.dbg.value(metadata double %205, metadata !2718, metadata !DIExpression()), !dbg !2797
  %206 = fcmp fast olt double %205, 1.000000e-04, !dbg !2873
  call void @llvm.dbg.value(metadata i64 %166, metadata !2720, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2797
  br i1 %206, label %207, label %158

207:                                              ; preds = %158, %165, %152
  %208 = phi <2 x double> [ %153, %152 ], [ %197, %165 ], [ %197, %158 ], !dbg !2797
  call void @llvm.dbg.value(metadata double undef, metadata !2717, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata double undef, metadata !2716, metadata !DIExpression()), !dbg !2797
  %209 = extractelement <2 x double> %208, i64 0, !dbg !2875
  %210 = extractelement <2 x double> %208, i64 1, !dbg !2875
  %211 = fdiv fast double %210, %209, !dbg !2875
  %212 = fptrunc double %211 to float, !dbg !2876
  %213 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %82, i64 %95, i32 13, !dbg !2877
  store float %212, ptr %213, align 4, !dbg !2878, !tbaa !2879
  %214 = add nuw nsw i64 %95, 1, !dbg !2880
  call void @llvm.dbg.value(metadata i64 %214, metadata !2707, metadata !DIExpression()), !dbg !2754
  %215 = icmp eq i64 %214, %88, !dbg !2789
  br i1 %215, label %216, label %94, !dbg !2788, !llvm.loop !2881

216:                                              ; preds = %207, %1, %79
  %217 = shl i32 %8, 3, !dbg !2883
  %218 = tail call ptr @x264_malloc(i32 noundef %217) #20, !dbg !2884
  call void @llvm.dbg.value(metadata ptr %218, metadata !2704, metadata !DIExpression()), !dbg !2754
  %219 = icmp sgt i32 %24, 1, !dbg !2885
  br i1 %219, label %220, label %224, !dbg !2887

220:                                              ; preds = %216
  %221 = load i32, ptr %7, align 8, !dbg !2888, !tbaa !2474
  %222 = shl i32 %221, 3, !dbg !2889
  %223 = tail call ptr @x264_malloc(i32 noundef %222) #20, !dbg !2890
  call void @llvm.dbg.value(metadata ptr %223, metadata !2706, metadata !DIExpression()), !dbg !2754
  br label %224, !dbg !2891

224:                                              ; preds = %216, %220
  %225 = phi ptr [ %223, %220 ], [ %218, %216 ], !dbg !2892
  call void @llvm.dbg.value(metadata ptr %225, metadata !2706, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2703, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i32 0, metadata !2707, metadata !DIExpression()), !dbg !2754
  %226 = load i32, ptr %7, align 8, !tbaa !2474
  %227 = icmp sgt i32 %226, 0, !dbg !2893
  br i1 %227, label %228, label %327, !dbg !2896

228:                                              ; preds = %224
  %229 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 35
  %230 = load ptr, ptr %229, align 8, !tbaa !2495
  %231 = load ptr, ptr %2, align 16, !tbaa !1699
  %232 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %231, i64 0, i32 52
  %233 = load i32, ptr %232, align 8, !tbaa !2309
  %234 = icmp sgt i32 %233, 0
  %235 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %231, i64 0, i32 53
  %236 = zext i32 %233 to i64
  %237 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 19
  %238 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %231, i64 0, i32 22
  %239 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %231, i64 0, i32 36
  %240 = zext i32 %226 to i64, !dbg !2893
  br label %241, !dbg !2896

241:                                              ; preds = %228, %299
  %242 = phi i64 [ 0, %228 ], [ %325, %299 ]
  %243 = phi double [ 1.000000e+00, %228 ], [ %324, %299 ]
  call void @llvm.dbg.value(metadata double %243, metadata !2703, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %242, metadata !2707, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata ptr %0, metadata !2897, metadata !DIExpression()), !dbg !2908
  call void @llvm.dbg.value(metadata !DIArgList(ptr %230, i64 %242), metadata !2902, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 72, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2908
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2903, metadata !DIExpression()), !dbg !2908
  call void @llvm.dbg.value(metadata i64 %242, metadata !2904, metadata !DIExpression()), !dbg !2908
  call void @llvm.dbg.value(metadata ptr %231, metadata !2905, metadata !DIExpression()), !dbg !2908
  call void @llvm.dbg.value(metadata ptr undef, metadata !2910, metadata !DIExpression()), !dbg !2921
  call void @llvm.dbg.value(metadata i64 %242, metadata !2915, metadata !DIExpression()), !dbg !2921
  call void @llvm.dbg.value(metadata i32 %233, metadata !2916, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2921
  br i1 %234, label %244, label %261, !dbg !2923

244:                                              ; preds = %241
  call void @llvm.dbg.value(metadata i32 %233, metadata !2916, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2921
  %245 = load ptr, ptr %235, align 8, !tbaa !2314
  br label %246, !dbg !2923

246:                                              ; preds = %259, %244
  %247 = phi i64 [ %236, %244 ], [ %248, %259 ]
  %248 = add nsw i64 %247, -1, !dbg !2924
  %249 = and i64 %248, 4294967295
  %250 = getelementptr inbounds %struct.x264_zone_t, ptr %245, i64 %249, !dbg !2925
  call void @llvm.dbg.value(metadata ptr %250, metadata !2917, metadata !DIExpression()), !dbg !2926
  %251 = load i32, ptr %250, align 8, !dbg !2927, !tbaa !2324
  %252 = sext i32 %251 to i64, !dbg !2929
  %253 = icmp slt i64 %242, %252, !dbg !2929
  br i1 %253, label %259, label %254, !dbg !2930

254:                                              ; preds = %246
  %255 = getelementptr inbounds %struct.x264_zone_t, ptr %245, i64 %249, i32 1, !dbg !2931
  %256 = load i32, ptr %255, align 4, !dbg !2931, !tbaa !2327
  %257 = sext i32 %256 to i64, !dbg !2932
  %258 = icmp sgt i64 %242, %257, !dbg !2932
  br i1 %258, label %259, label %261, !dbg !2933

259:                                              ; preds = %254, %246
  call void @llvm.dbg.value(metadata i64 %248, metadata !2916, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2921
  %260 = icmp ugt i64 %247, 1, !dbg !2934
  br i1 %260, label %246, label %261, !dbg !2923, !llvm.loop !2935

261:                                              ; preds = %259, %254, %241
  %262 = phi ptr [ null, %241 ], [ %250, %254 ], [ null, %259 ], !dbg !2921
  call void @llvm.dbg.value(metadata ptr %262, metadata !2907, metadata !DIExpression()), !dbg !2908
  call void @llvm.dbg.value(metadata double poison, metadata !2906, metadata !DIExpression()), !dbg !2908
  %263 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %230, i64 %242, i32 4, !dbg !2937
  %264 = load i32, ptr %263, align 8, !dbg !2937, !tbaa !2939
  %265 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %230, i64 %242, i32 3, !dbg !2940
  %266 = load i32, ptr %265, align 4, !dbg !2940, !tbaa !2941
  %267 = sub i32 0, %266, !dbg !2942
  %268 = icmp eq i32 %264, %267, !dbg !2942
  br i1 %268, label %269, label %271, !dbg !2943

269:                                              ; preds = %261
  %270 = load double, ptr %239, align 8, !dbg !2944, !tbaa !2100
  call void @llvm.dbg.value(metadata double %270, metadata !2906, metadata !DIExpression()), !dbg !2908
  br label %279, !dbg !2945

271:                                              ; preds = %261
  %272 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %230, i64 %242, i32 13, !dbg !2946
  %273 = load float, ptr %272, align 4, !dbg !2946, !tbaa !2879
  %274 = fpext float %273 to double, !dbg !2947
  %275 = load float, ptr %237, align 8, !dbg !2948, !tbaa !2010
  %276 = fsub fast float 1.000000e+00, %275, !dbg !2949
  %277 = fpext float %276 to double, !dbg !2950
  %278 = tail call fast double @llvm.pow.f64(double %274, double %277), !dbg !2951
  call void @llvm.dbg.value(metadata double %278, metadata !2906, metadata !DIExpression()), !dbg !2908
  store double %278, ptr %238, align 8, !dbg !2952, !tbaa !2954
  store double %278, ptr %239, align 8, !dbg !2955, !tbaa !2100
  br label %279

279:                                              ; preds = %271, %269
  %280 = phi double [ %270, %269 ], [ %278, %271 ], !dbg !2956
  call void @llvm.dbg.value(metadata double %280, metadata !2906, metadata !DIExpression()), !dbg !2908
  %281 = icmp eq ptr %262, null, !dbg !2957
  br i1 %281, label %299, label %282, !dbg !2959

282:                                              ; preds = %279
  %283 = getelementptr inbounds %struct.x264_zone_t, ptr %262, i64 0, i32 2, !dbg !2960
  %284 = load i32, ptr %283, align 8, !dbg !2960, !tbaa !2246
  %285 = icmp eq i32 %284, 0, !dbg !2963
  br i1 %285, label %294, label %286, !dbg !2964

286:                                              ; preds = %282
  %287 = getelementptr inbounds %struct.x264_zone_t, ptr %262, i64 0, i32 3, !dbg !2965
  %288 = load i32, ptr %287, align 4, !dbg !2965, !tbaa !2966
  %289 = sitofp i32 %288 to double, !dbg !2967
  call void @llvm.dbg.value(metadata double %289, metadata !2044, metadata !DIExpression()), !dbg !2968
  %290 = fmul fast double %289, 0x3FC5555555555555, !dbg !2970
  %291 = fadd fast double %290, -2.000000e+00, !dbg !2970
  %292 = tail call fast double @llvm.exp2.f64(double %291), !dbg !2971
  %293 = fmul fast double %292, 8.500000e-01, !dbg !2972
  call void @llvm.dbg.value(metadata double %293, metadata !2906, metadata !DIExpression()), !dbg !2908
  br label %299, !dbg !2973

294:                                              ; preds = %282
  %295 = getelementptr inbounds %struct.x264_zone_t, ptr %262, i64 0, i32 4, !dbg !2974
  %296 = load float, ptr %295, align 8, !dbg !2974, !tbaa !2227
  %297 = fpext float %296 to double, !dbg !2975
  %298 = fdiv fast double %280, %297, !dbg !2976
  call void @llvm.dbg.value(metadata double %298, metadata !2906, metadata !DIExpression()), !dbg !2908
  br label %299

299:                                              ; preds = %279, %286, %294
  %300 = phi double [ %293, %286 ], [ %298, %294 ], [ %280, %279 ], !dbg !2908
  call void @llvm.dbg.value(metadata double %300, metadata !2906, metadata !DIExpression()), !dbg !2908
  call void @llvm.dbg.value(metadata !DIArgList(ptr %230, i64 %242), metadata !2814, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 72, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2977
  call void @llvm.dbg.value(metadata double %300, metadata !2819, metadata !DIExpression()), !dbg !2977
  %301 = fcmp fast olt double %300, 1.000000e-01, !dbg !2979
  %302 = select i1 %301, double 1.000000e-01, double %300, !dbg !2981
  call void @llvm.dbg.value(metadata double %302, metadata !2819, metadata !DIExpression()), !dbg !2977
  %303 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %230, i64 %242, i32 2, !dbg !2982
  %304 = load float, ptr %303, align 8, !dbg !2982, !tbaa !2515
  %305 = fpext float %304 to double, !dbg !2983
  %306 = fcmp fast ole float %304, 1.000000e+00, !dbg !2983
  %307 = select fast i1 %306, float 1.000000e+00, float %304, !dbg !2983
  %308 = fpext float %307 to double, !dbg !2983
  %309 = sitofp i32 %266 to double, !dbg !2984
  %310 = sitofp i32 %264 to double, !dbg !2985
  %311 = fadd fast double %310, 1.000000e-01, !dbg !2986
  %312 = fdiv fast double %305, %302, !dbg !2987
  %313 = tail call fast double @llvm.pow.f64(double %312, double 1.100000e+00), !dbg !2988
  %314 = fmul fast double %313, %311, !dbg !2989
  %315 = tail call fast double @llvm.maxnum.f64(double %302, double 1.000000e+00), !dbg !2990
  %316 = fdiv fast double %308, %315, !dbg !2991
  %317 = tail call fast double @llvm.sqrt.f64(double %316), !dbg !2992
  %318 = fmul fast double %317, %309, !dbg !2993
  %319 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %230, i64 %242, i32 5, !dbg !2994
  %320 = load i32, ptr %319, align 4, !dbg !2994, !tbaa !2518
  %321 = sitofp i32 %320 to double, !dbg !2995
  %322 = fadd fast double %243, %321, !dbg !2996
  %323 = fadd fast double %322, %314, !dbg !2997
  %324 = fadd fast double %323, %318, !dbg !2998
  call void @llvm.dbg.value(metadata double %324, metadata !2703, metadata !DIExpression()), !dbg !2754
  %325 = add nuw nsw i64 %242, 1, !dbg !2999
  call void @llvm.dbg.value(metadata i64 %325, metadata !2707, metadata !DIExpression()), !dbg !2754
  %326 = icmp eq i64 %325, %240, !dbg !2893
  br i1 %326, label %327, label %241, !dbg !2896, !llvm.loop !3000

327:                                              ; preds = %299, %224
  %328 = phi double [ 1.000000e+00, %224 ], [ %324, %299 ], !dbg !2754
  %329 = uitofp i64 %15 to double, !dbg !3002
  %330 = fdiv fast double %329, %328, !dbg !3003
  call void @llvm.dbg.value(metadata double %330, metadata !2698, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2696, metadata !DIExpression()), !dbg !2754
  %331 = fmul fast double %330, 1.000000e+04, !dbg !3004
  call void @llvm.dbg.value(metadata double %331, metadata !2697, metadata !DIExpression()), !dbg !2754
  %332 = fmul fast double %330, 0x3E7AD7F29ABCAF48
  %333 = fcmp fast ogt double %331, %332, !dbg !3005
  br i1 %333, label %334, label %703, !dbg !3006

334:                                              ; preds = %327
  %335 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 38
  %336 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 40
  %337 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 35
  %338 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 19
  %339 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 12
  %340 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 11
  %341 = lshr i32 %23, 1
  %342 = fcmp fast oeq float %17, 0.000000e+00
  %343 = fmul fast double %18, %18
  %344 = zext i32 %24 to i64
  %345 = zext i32 %24 to i64
  %346 = fdiv fast double 1.000000e+00, %343
  br label %347, !dbg !3006

347:                                              ; preds = %334, %697
  %348 = phi i32 [ %226, %334 ], [ %566, %697 ]
  %349 = phi double [ 0.000000e+00, %334 ], [ %700, %697 ]
  %350 = phi double [ %331, %334 ], [ %701, %697 ]
  call void @llvm.dbg.value(metadata double %349, metadata !2696, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata double %350, metadata !2697, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2703, metadata !DIExpression()), !dbg !2754
  %351 = fadd fast double %349, %350, !dbg !3007
  call void @llvm.dbg.value(metadata double %351, metadata !2696, metadata !DIExpression()), !dbg !2754
  store i32 -1, ptr %335, align 8, !dbg !3008, !tbaa !1851
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %336, align 8, !dbg !3009, !tbaa !2065
  call void @llvm.dbg.value(metadata i32 0, metadata !2707, metadata !DIExpression()), !dbg !2754
  %352 = icmp sgt i32 %348, 0, !dbg !3010
  br i1 %352, label %355, label %353, !dbg !3013

353:                                              ; preds = %347
  %354 = zext i32 %348 to i64, !dbg !3014
  br label %430, !dbg !3013

355:                                              ; preds = %347
  %356 = load ptr, ptr %337, align 8, !tbaa !2495
  %357 = load ptr, ptr %2, align 16, !tbaa !1699
  %358 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %357, i64 0, i32 52
  %359 = load i32, ptr %358, align 8, !tbaa !2309
  %360 = icmp sgt i32 %359, 0
  %361 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %357, i64 0, i32 53
  %362 = zext i32 %359 to i64
  %363 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %357, i64 0, i32 22
  %364 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %357, i64 0, i32 36
  %365 = zext i32 %348 to i64, !dbg !3010
  %366 = fdiv fast double 1.000000e+00, %351
  br label %367, !dbg !3013

367:                                              ; preds = %355, %425
  %368 = phi i64 [ 0, %355 ], [ %428, %425 ]
  call void @llvm.dbg.value(metadata i64 %368, metadata !2707, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata ptr %0, metadata !2897, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.value(metadata !DIArgList(ptr %356, i64 %368), metadata !2902, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 72, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !3016
  call void @llvm.dbg.value(metadata double %351, metadata !2903, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.value(metadata i64 %368, metadata !2904, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.value(metadata ptr %357, metadata !2905, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.value(metadata ptr undef, metadata !2910, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.value(metadata i64 %368, metadata !2915, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.value(metadata i32 %359, metadata !2916, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3019
  br i1 %360, label %369, label %386, !dbg !3021

369:                                              ; preds = %367
  call void @llvm.dbg.value(metadata i32 %359, metadata !2916, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3019
  %370 = load ptr, ptr %361, align 8, !tbaa !2314
  br label %371, !dbg !3021

371:                                              ; preds = %384, %369
  %372 = phi i64 [ %362, %369 ], [ %373, %384 ]
  %373 = add nsw i64 %372, -1, !dbg !3022
  %374 = and i64 %373, 4294967295
  %375 = getelementptr inbounds %struct.x264_zone_t, ptr %370, i64 %374, !dbg !3023
  call void @llvm.dbg.value(metadata ptr %375, metadata !2917, metadata !DIExpression()), !dbg !3024
  %376 = load i32, ptr %375, align 8, !dbg !3025, !tbaa !2324
  %377 = sext i32 %376 to i64, !dbg !3026
  %378 = icmp slt i64 %368, %377, !dbg !3026
  br i1 %378, label %384, label %379, !dbg !3027

379:                                              ; preds = %371
  %380 = getelementptr inbounds %struct.x264_zone_t, ptr %370, i64 %374, i32 1, !dbg !3028
  %381 = load i32, ptr %380, align 4, !dbg !3028, !tbaa !2327
  %382 = sext i32 %381 to i64, !dbg !3029
  %383 = icmp sgt i64 %368, %382, !dbg !3029
  br i1 %383, label %384, label %386, !dbg !3030

384:                                              ; preds = %379, %371
  call void @llvm.dbg.value(metadata i64 %373, metadata !2916, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3019
  %385 = icmp ugt i64 %372, 1, !dbg !3031
  br i1 %385, label %371, label %386, !dbg !3021, !llvm.loop !3032

386:                                              ; preds = %384, %379, %367
  %387 = phi ptr [ null, %367 ], [ %375, %379 ], [ null, %384 ], !dbg !3019
  call void @llvm.dbg.value(metadata ptr %387, metadata !2907, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.value(metadata double poison, metadata !2906, metadata !DIExpression()), !dbg !3016
  %388 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %356, i64 %368, i32 4, !dbg !3034
  %389 = load i32, ptr %388, align 8, !dbg !3034, !tbaa !2939
  %390 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %356, i64 %368, i32 3, !dbg !3035
  %391 = load i32, ptr %390, align 4, !dbg !3035, !tbaa !2941
  %392 = sub i32 0, %391, !dbg !3036
  %393 = icmp eq i32 %389, %392, !dbg !3036
  br i1 %393, label %394, label %396, !dbg !3037

394:                                              ; preds = %386
  %395 = load double, ptr %364, align 8, !dbg !3038, !tbaa !2100
  call void @llvm.dbg.value(metadata double %395, metadata !2906, metadata !DIExpression()), !dbg !3016
  br label %405, !dbg !3039

396:                                              ; preds = %386
  %397 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %356, i64 %368, i32 13, !dbg !3040
  %398 = load float, ptr %397, align 4, !dbg !3040, !tbaa !2879
  %399 = fpext float %398 to double, !dbg !3041
  %400 = load float, ptr %338, align 8, !dbg !3042, !tbaa !2010
  %401 = fsub fast float 1.000000e+00, %400, !dbg !3043
  %402 = fpext float %401 to double, !dbg !3044
  %403 = tail call fast double @llvm.pow.f64(double %399, double %402), !dbg !3045
  call void @llvm.dbg.value(metadata double %403, metadata !2906, metadata !DIExpression()), !dbg !3016
  store double %403, ptr %363, align 8, !dbg !3046, !tbaa !2954
  %404 = fmul fast double %403, %366
  call void @llvm.dbg.value(metadata double %404, metadata !2906, metadata !DIExpression()), !dbg !3016
  store double %404, ptr %364, align 8, !dbg !3047, !tbaa !2100
  br label %405

405:                                              ; preds = %396, %394
  %406 = phi double [ %395, %394 ], [ %404, %396 ], !dbg !3048
  call void @llvm.dbg.value(metadata double %406, metadata !2906, metadata !DIExpression()), !dbg !3016
  %407 = icmp eq ptr %387, null, !dbg !3049
  br i1 %407, label %425, label %408, !dbg !3050

408:                                              ; preds = %405
  %409 = getelementptr inbounds %struct.x264_zone_t, ptr %387, i64 0, i32 2, !dbg !3051
  %410 = load i32, ptr %409, align 8, !dbg !3051, !tbaa !2246
  %411 = icmp eq i32 %410, 0, !dbg !3052
  br i1 %411, label %420, label %412, !dbg !3053

412:                                              ; preds = %408
  %413 = getelementptr inbounds %struct.x264_zone_t, ptr %387, i64 0, i32 3, !dbg !3054
  %414 = load i32, ptr %413, align 4, !dbg !3054, !tbaa !2966
  %415 = sitofp i32 %414 to double, !dbg !3055
  call void @llvm.dbg.value(metadata double %415, metadata !2044, metadata !DIExpression()), !dbg !3056
  %416 = fmul fast double %415, 0x3FC5555555555555, !dbg !3058
  %417 = fadd fast double %416, -2.000000e+00, !dbg !3058
  %418 = tail call fast double @llvm.exp2.f64(double %417), !dbg !3059
  %419 = fmul fast double %418, 8.500000e-01, !dbg !3060
  call void @llvm.dbg.value(metadata double %419, metadata !2906, metadata !DIExpression()), !dbg !3016
  br label %425, !dbg !3061

420:                                              ; preds = %408
  %421 = getelementptr inbounds %struct.x264_zone_t, ptr %387, i64 0, i32 4, !dbg !3062
  %422 = load float, ptr %421, align 8, !dbg !3062, !tbaa !2227
  %423 = fpext float %422 to double, !dbg !3063
  %424 = fdiv fast double %406, %423, !dbg !3064
  call void @llvm.dbg.value(metadata double %424, metadata !2906, metadata !DIExpression()), !dbg !3016
  br label %425

425:                                              ; preds = %405, %412, %420
  %426 = phi double [ %419, %412 ], [ %424, %420 ], [ %406, %405 ], !dbg !3016
  call void @llvm.dbg.value(metadata double %426, metadata !2906, metadata !DIExpression()), !dbg !3016
  %427 = getelementptr inbounds double, ptr %218, i64 %368, !dbg !3065
  store double %426, ptr %427, align 8, !dbg !3066, !tbaa !2065
  %428 = add nuw nsw i64 %368, 1, !dbg !3067
  call void @llvm.dbg.value(metadata i64 %428, metadata !2707, metadata !DIExpression()), !dbg !2754
  %429 = icmp eq i64 %428, %365, !dbg !3010
  br i1 %429, label %430, label %367, !dbg !3013, !llvm.loop !3068

430:                                              ; preds = %425, %353
  %431 = phi i64 [ %354, %353 ], [ %365, %425 ]
  br label %432, !dbg !3014

432:                                              ; preds = %430, %561
  %433 = phi i64 [ %434, %561 ], [ %431, %430 ]
  %434 = add nsw i64 %433, -1, !dbg !3070
  call void @llvm.dbg.value(metadata i64 %434, metadata !2707, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2754
  %435 = trunc i64 %433 to i32, !dbg !3071
  %436 = icmp sgt i32 %435, 0, !dbg !3071
  br i1 %436, label %437, label %565, !dbg !3014

437:                                              ; preds = %432
  %438 = load ptr, ptr %337, align 8, !dbg !3073, !tbaa !2495
  %439 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %438, i64 %434, !dbg !3075
  %440 = getelementptr inbounds double, ptr %218, i64 %434, !dbg !3076
  %441 = load double, ptr %440, align 8, !dbg !3076, !tbaa !2065
  call void @llvm.dbg.value(metadata ptr %0, metadata !3077, metadata !DIExpression()), !dbg !3102
  call void @llvm.dbg.value(metadata ptr %439, metadata !3082, metadata !DIExpression()), !dbg !3102
  call void @llvm.dbg.value(metadata double %441, metadata !3083, metadata !DIExpression()), !dbg !3102
  %442 = load ptr, ptr %2, align 16, !dbg !3104, !tbaa !1699
  call void @llvm.dbg.value(metadata ptr %442, metadata !3084, metadata !DIExpression()), !dbg !3102
  %443 = load i32, ptr %439, align 8, !dbg !3105, !tbaa !2506
  call void @llvm.dbg.value(metadata i32 %443, metadata !3085, metadata !DIExpression()), !dbg !3102
  %444 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %442, i64 0, i32 37, !dbg !3106
  %445 = load double, ptr %444, align 8, !dbg !3107, !tbaa !2065
  call void @llvm.dbg.value(metadata double %445, metadata !3086, metadata !DIExpression()), !dbg !3102
  %446 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %442, i64 0, i32 38, !dbg !3108
  %447 = load i32, ptr %446, align 8, !dbg !3108, !tbaa !1851
  %448 = sext i32 %447 to i64, !dbg !3109
  %449 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %442, i64 0, i32 37, i64 %448, !dbg !3109
  %450 = load double, ptr %449, align 8, !dbg !3109, !tbaa !2065
  call void @llvm.dbg.value(metadata double %450, metadata !3088, metadata !DIExpression()), !dbg !3102
  %451 = icmp eq i32 %443, 2, !dbg !3110
  br i1 %451, label %452, label %480, !dbg !3111

452:                                              ; preds = %437
  call void @llvm.dbg.value(metadata double %441, metadata !3089, metadata !DIExpression()), !dbg !3112
  %453 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %442, i64 0, i32 39, !dbg !3113
  %454 = load double, ptr %453, align 8, !dbg !3113, !tbaa !2008
  %455 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %442, i64 0, i32 40, !dbg !3114
  %456 = load double, ptr %455, align 8, !dbg !3114, !tbaa !2002
  call void @llvm.dbg.value(metadata double poison, metadata !2044, metadata !DIExpression()), !dbg !3115
  %457 = fmul fast double %454, 0x3FC5555555555555, !dbg !3117
  %458 = fdiv fast double %457, %456, !dbg !3117
  %459 = fadd fast double %458, -2.000000e+00, !dbg !3117
  %460 = tail call fast double @llvm.exp2.f64(double %459), !dbg !3118
  %461 = fmul fast double %460, 8.500000e-01, !dbg !3119
  call void @llvm.dbg.value(metadata double %461, metadata !3092, metadata !DIExpression()), !dbg !3112
  %462 = load float, ptr %340, align 4, !dbg !3120, !tbaa !3121
  %463 = tail call fast float @llvm.fabs.f32(float %462), !dbg !3122
  %464 = fpext float %463 to double, !dbg !3122
  call void @llvm.dbg.value(metadata double %464, metadata !3093, metadata !DIExpression()), !dbg !3112
  %465 = fcmp fast ugt double %456, 0.000000e+00, !dbg !3123
  br i1 %465, label %466, label %499, !dbg !3125

466:                                              ; preds = %452
  %467 = fcmp fast olt float %462, 0.000000e+00, !dbg !3126
  br i1 %467, label %468, label %470, !dbg !3128

468:                                              ; preds = %466
  %469 = fdiv fast double %441, %464, !dbg !3129
  call void @llvm.dbg.value(metadata double %469, metadata !3083, metadata !DIExpression()), !dbg !3102
  br label %499, !dbg !3130

470:                                              ; preds = %466
  %471 = fcmp fast ult double %456, 1.000000e+00, !dbg !3131
  br i1 %471, label %474, label %472, !dbg !3133

472:                                              ; preds = %470
  %473 = fdiv fast double %461, %464, !dbg !3134
  call void @llvm.dbg.value(metadata double %473, metadata !3083, metadata !DIExpression()), !dbg !3102
  br label %499, !dbg !3135

474:                                              ; preds = %470
  %475 = fmul fast double %461, %456, !dbg !3136
  %476 = fdiv fast double %475, %464, !dbg !3137
  %477 = fsub fast double 1.000000e+00, %456, !dbg !3138
  %478 = fmul fast double %477, %441, !dbg !3139
  %479 = fadd fast double %476, %478, !dbg !3140
  call void @llvm.dbg.value(metadata double %479, metadata !3083, metadata !DIExpression()), !dbg !3102
  br label %499

480:                                              ; preds = %437
  switch i32 %443, label %499 [
    i32 1, label %481
    i32 0, label %492
  ], !dbg !3141

481:                                              ; preds = %480
  %482 = load float, ptr %339, align 8, !dbg !3142, !tbaa !3146
  %483 = fcmp fast ogt float %482, 0.000000e+00, !dbg !3147
  %484 = select i1 %483, double %450, double %441, !dbg !3148
  call void @llvm.dbg.value(metadata double %484, metadata !3083, metadata !DIExpression()), !dbg !3102
  %485 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %438, i64 %434, i32 1, !dbg !3149
  %486 = load i32, ptr %485, align 4, !dbg !3149, !tbaa !2566
  %487 = icmp eq i32 %486, 0, !dbg !3151
  br i1 %487, label %488, label %499, !dbg !3152

488:                                              ; preds = %481
  %489 = tail call fast float @llvm.fabs.f32(float %482), !dbg !3153
  %490 = fpext float %489 to double, !dbg !3153
  %491 = fmul fast double %484, %490, !dbg !3154
  call void @llvm.dbg.value(metadata double %491, metadata !3083, metadata !DIExpression()), !dbg !3102
  br label %499, !dbg !3155

492:                                              ; preds = %480
  %493 = icmp eq i32 %447, 0, !dbg !3156
  br i1 %493, label %494, label %499, !dbg !3158

494:                                              ; preds = %492
  %495 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %438, i64 %434, i32 4, !dbg !3159
  %496 = load i32, ptr %495, align 8, !dbg !3159, !tbaa !2939
  %497 = icmp eq i32 %496, 0, !dbg !3160
  br i1 %497, label %498, label %499, !dbg !3161

498:                                              ; preds = %494
  call void @llvm.dbg.value(metadata double %445, metadata !3083, metadata !DIExpression()), !dbg !3102
  br label %499, !dbg !3162

499:                                              ; preds = %498, %494, %492, %488, %481, %480, %474, %472, %468, %452
  %500 = phi double [ %484, %481 ], [ %491, %488 ], [ %445, %498 ], [ %441, %494 ], [ %441, %492 ], [ %469, %468 ], [ %473, %472 ], [ %479, %474 ], [ %441, %452 ], [ %441, %480 ]
  call void @llvm.dbg.value(metadata double %500, metadata !3083, metadata !DIExpression()), !dbg !3102
  %501 = icmp eq i32 %447, %443, !dbg !3164
  br i1 %501, label %504, label %502, !dbg !3165

502:                                              ; preds = %499
  %503 = sext i32 %443 to i64, !dbg !3166
  br label %523, !dbg !3165

504:                                              ; preds = %499
  br i1 %451, label %505, label %511, !dbg !3167

505:                                              ; preds = %504
  %506 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %442, i64 0, i32 41, !dbg !3168
  %507 = load double, ptr %506, align 8, !dbg !3168, !tbaa !3169
  %508 = fcmp fast olt double %507, 1.000000e+00, !dbg !3170
  br i1 %508, label %511, label %509, !dbg !3171

509:                                              ; preds = %505
  call void @llvm.dbg.value(metadata double %500, metadata !3083, metadata !DIExpression()), !dbg !3102
  %510 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %442, i64 0, i32 37, i64 2, !dbg !3166
  store double %500, ptr %510, align 8, !dbg !3172, !tbaa !2065
  store i32 2, ptr %446, align 8, !dbg !3173, !tbaa !1851
  br label %529, !dbg !3175

511:                                              ; preds = %505, %504
  %512 = sext i32 %443 to i64, !dbg !3176
  %513 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %442, i64 0, i32 37, i64 %512, !dbg !3176
  %514 = load double, ptr %513, align 8, !dbg !3176, !tbaa !2065
  call void @llvm.dbg.value(metadata double %514, metadata !3094, metadata !DIExpression()), !dbg !3177
  %515 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %442, i64 0, i32 44, !dbg !3178
  %516 = load double, ptr %515, align 8, !dbg !3178, !tbaa !2095
  %517 = fmul fast double %516, %514, !dbg !3179
  call void @llvm.dbg.value(metadata double %517, metadata !3097, metadata !DIExpression()), !dbg !3177
  %518 = fdiv fast double %514, %516, !dbg !3180
  call void @llvm.dbg.value(metadata double %518, metadata !3098, metadata !DIExpression()), !dbg !3177
  %519 = fcmp fast ogt double %500, %517, !dbg !3181
  br i1 %519, label %523, label %520, !dbg !3183

520:                                              ; preds = %511
  %521 = fcmp fast olt double %500, %518, !dbg !3184
  br i1 %521, label %522, label %523, !dbg !3186

522:                                              ; preds = %520
  call void @llvm.dbg.value(metadata double %518, metadata !3083, metadata !DIExpression()), !dbg !3102
  br label %523, !dbg !3187

523:                                              ; preds = %522, %520, %511, %502
  %524 = phi i64 [ %503, %502 ], [ %512, %522 ], [ %512, %520 ], [ %512, %511 ], !dbg !3166
  %525 = phi double [ %500, %502 ], [ %518, %522 ], [ %500, %520 ], [ %517, %511 ], !dbg !3102
  call void @llvm.dbg.value(metadata double %525, metadata !3083, metadata !DIExpression()), !dbg !3102
  %526 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %442, i64 0, i32 37, i64 %524, !dbg !3166
  store double %525, ptr %526, align 8, !dbg !3172, !tbaa !2065
  %527 = icmp eq i32 %443, 1, !dbg !3188
  br i1 %527, label %561, label %528, !dbg !3189

528:                                              ; preds = %523
  store i32 %443, ptr %446, align 8, !dbg !3173, !tbaa !1851
  br i1 %451, label %529, label %535, !dbg !3175

529:                                              ; preds = %528, %509
  %530 = phi double [ %500, %509 ], [ %525, %528 ]
  %531 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %442, i64 0, i32 40, !dbg !3190
  %532 = load double, ptr %531, align 8, !dbg !3190, !tbaa !2002
  %533 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %442, i64 0, i32 41, !dbg !3193
  store double %532, ptr %533, align 8, !dbg !3194, !tbaa !3169
  %534 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %442, i64 0, i32 39, !dbg !3195
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %534, i8 0, i64 16, i1 false), !dbg !3196
  br label %561, !dbg !3197

535:                                              ; preds = %528
  %536 = icmp eq i32 %443, 0, !dbg !3198
  br i1 %536, label %537, label %561, !dbg !3199

537:                                              ; preds = %535
  %538 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %438, i64 %434, i32 10, !dbg !3200
  %539 = load i32, ptr %538, align 8, !dbg !3200, !tbaa !2802
  %540 = sitofp i32 %539 to float, !dbg !3201
  %541 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %442, i64 0, i32 7, !dbg !3202
  %542 = load i32, ptr %541, align 8, !dbg !3202, !tbaa !1848
  %543 = sitofp i32 %542 to float, !dbg !3203
  %544 = fdiv fast float %540, %543, !dbg !3204
  %545 = fpext float %544 to double, !dbg !3201
  %546 = fmul fast double %545, %545, !dbg !3205
  %547 = fsub fast double 1.000000e+00, %546, !dbg !3206
  %548 = fptrunc double %547 to float, !dbg !3207
  call void @llvm.dbg.value(metadata float %548, metadata !3099, metadata !DIExpression()), !dbg !3208
  %549 = fpext float %548 to double, !dbg !3209
  call void @llvm.dbg.value(metadata double %525, metadata !3210, metadata !DIExpression()), !dbg !3213
  %550 = fmul fast double %525, 0x3FF2D2D2D2D2D2D3, !dbg !3215
  %551 = tail call fast double @llvm.log.f64(double %550), !dbg !3216
  %552 = fmul fast double %551, 0x40214FF58BE0A23E, !dbg !3217
  %553 = fadd fast double %552, 1.200000e+01, !dbg !3218
  %554 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %442, i64 0, i32 39, !dbg !3219
  %555 = load <2 x double>, ptr %554, align 8, !dbg !3219, !tbaa !2065
  %556 = insertelement <2 x double> <double poison, double 1.000000e+00>, double %553, i64 0, !dbg !3220
  %557 = fadd fast <2 x double> %556, %555, !dbg !3221
  %558 = insertelement <2 x double> poison, double %549, i64 0, !dbg !3222
  %559 = shufflevector <2 x double> %558, <2 x double> poison, <2 x i32> zeroinitializer, !dbg !3222
  %560 = fmul fast <2 x double> %557, %559, !dbg !3223
  store <2 x double> %560, ptr %554, align 8, !dbg !3224, !tbaa !2065
  br label %561, !dbg !3225

561:                                              ; preds = %523, %529, %535, %537
  %562 = phi double [ %525, %537 ], [ %525, %535 ], [ %530, %529 ], [ %525, %523 ]
  store double %562, ptr %440, align 8, !dbg !3226, !tbaa !2065
  %563 = fcmp fast ult double %562, 0.000000e+00, !dbg !3227
  br i1 %563, label %564, label %432, !dbg !3230, !llvm.loop !3231

564:                                              ; preds = %561
  tail call void @__assert_fail(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.9, i32 noundef 1836, ptr noundef nonnull @__PRETTY_FUNCTION__.init_pass2) #23, !dbg !3227
  unreachable, !dbg !3227

565:                                              ; preds = %432
  %566 = load i32, ptr %7, align 8, !tbaa !2474
  br i1 %219, label %567, label %649, !dbg !3233

567:                                              ; preds = %565
  call void @llvm.dbg.value(metadata i32 0, metadata !2707, metadata !DIExpression()), !dbg !2754
  %568 = icmp sgt i32 %566, 0, !dbg !3234
  br i1 %568, label %569, label %697, !dbg !3235

569:                                              ; preds = %567
  %570 = load ptr, ptr %337, align 8, !tbaa !2495
  %571 = zext i32 %566 to i64, !dbg !3234
  br i1 %342, label %572, label %607, !dbg !3236

572:                                              ; preds = %569, %602
  %573 = phi i64 [ %605, %602 ], [ 0, %569 ]
  %574 = trunc i64 %573 to i32
  call void @llvm.dbg.value(metadata i64 %573, metadata !2707, metadata !DIExpression()), !dbg !2754
  %575 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %570, i64 %573, !dbg !3237
  call void @llvm.dbg.value(metadata ptr %575, metadata !2729, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2739, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2740, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata i32 0, metadata !2738, metadata !DIExpression()), !dbg !3238
  %576 = sub nsw i32 %574, %341
  br label %577, !dbg !3239

577:                                              ; preds = %597, %572
  %578 = phi i64 [ %600, %597 ], [ 0, %572 ]
  %579 = phi double [ %599, %597 ], [ 0.000000e+00, %572 ]
  %580 = phi double [ %598, %597 ], [ 0.000000e+00, %572 ]
  call void @llvm.dbg.value(metadata double %579, metadata !2740, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata double %580, metadata !2739, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata i64 %578, metadata !2738, metadata !DIExpression()), !dbg !3238
  %581 = trunc i64 %578 to i32, !dbg !3240
  %582 = add i32 %576, %581, !dbg !3240
  call void @llvm.dbg.value(metadata i32 %582, metadata !2741, metadata !DIExpression()), !dbg !3241
  call void @llvm.dbg.value(metadata double poison, metadata !2745, metadata !DIExpression()), !dbg !3241
  call void @llvm.dbg.value(metadata double poison, metadata !2746, metadata !DIExpression()), !dbg !3241
  %583 = icmp sgt i32 %582, -1, !dbg !3242
  %584 = icmp slt i32 %582, %566
  %585 = select i1 %583, i1 %584, i1 false, !dbg !3244
  br i1 %585, label %586, label %597, !dbg !3244

586:                                              ; preds = %577
  %587 = load i32, ptr %575, align 8, !dbg !3245, !tbaa !2506
  %588 = zext i32 %582 to i64
  %589 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %570, i64 %588, !dbg !3247
  %590 = load i32, ptr %589, align 8, !dbg !3248, !tbaa !2506
  %591 = icmp eq i32 %587, %590, !dbg !3249
  br i1 %591, label %592, label %597, !dbg !3250

592:                                              ; preds = %586
  %593 = getelementptr inbounds double, ptr %218, i64 %588, !dbg !3251
  %594 = load double, ptr %593, align 8, !dbg !3251, !tbaa !2065
  %595 = fadd fast double %594, %580, !dbg !3252
  call void @llvm.dbg.value(metadata double %595, metadata !2739, metadata !DIExpression()), !dbg !3238
  %596 = fadd fast double %579, 1.000000e+00, !dbg !3253
  call void @llvm.dbg.value(metadata double %596, metadata !2740, metadata !DIExpression()), !dbg !3238
  br label %597, !dbg !3254

597:                                              ; preds = %592, %586, %577
  %598 = phi double [ %595, %592 ], [ %580, %577 ], [ %580, %586 ], !dbg !3238
  %599 = phi double [ %596, %592 ], [ %579, %577 ], [ %579, %586 ], !dbg !3238
  call void @llvm.dbg.value(metadata double %599, metadata !2740, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata double %598, metadata !2739, metadata !DIExpression()), !dbg !3238
  %600 = add nuw nsw i64 %578, 1, !dbg !3255
  call void @llvm.dbg.value(metadata i64 %600, metadata !2738, metadata !DIExpression()), !dbg !3238
  %601 = icmp eq i64 %600, %345, !dbg !3256
  br i1 %601, label %602, label %577, !dbg !3239, !llvm.loop !3257

602:                                              ; preds = %597
  %603 = fdiv fast double %598, %599, !dbg !3259
  %604 = getelementptr inbounds double, ptr %225, i64 %573, !dbg !3260
  store double %603, ptr %604, align 8, !dbg !3261, !tbaa !2065
  %605 = add nuw nsw i64 %573, 1, !dbg !3262
  call void @llvm.dbg.value(metadata i64 %605, metadata !2707, metadata !DIExpression()), !dbg !2754
  %606 = icmp eq i64 %605, %571, !dbg !3234
  br i1 %606, label %649, label %572, !dbg !3235, !llvm.loop !3263

607:                                              ; preds = %569, %644
  %608 = phi i64 [ %647, %644 ], [ 0, %569 ]
  %609 = trunc i64 %608 to i32
  call void @llvm.dbg.value(metadata i64 %608, metadata !2707, metadata !DIExpression()), !dbg !2754
  %610 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %570, i64 %608, !dbg !3237
  call void @llvm.dbg.value(metadata ptr %610, metadata !2729, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2739, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2740, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata i32 0, metadata !2738, metadata !DIExpression()), !dbg !3238
  %611 = sub nsw i32 %609, %341
  br label %612, !dbg !3239

612:                                              ; preds = %607, %639
  %613 = phi i64 [ 0, %607 ], [ %642, %639 ]
  %614 = phi double [ 0.000000e+00, %607 ], [ %641, %639 ]
  %615 = phi double [ 0.000000e+00, %607 ], [ %640, %639 ]
  call void @llvm.dbg.value(metadata double %614, metadata !2740, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata double %615, metadata !2739, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata i64 %613, metadata !2738, metadata !DIExpression()), !dbg !3238
  %616 = trunc i64 %613 to i32, !dbg !3240
  %617 = add i32 %611, %616, !dbg !3240
  call void @llvm.dbg.value(metadata i32 %617, metadata !2741, metadata !DIExpression()), !dbg !3241
  call void @llvm.dbg.value(metadata double poison, metadata !2745, metadata !DIExpression()), !dbg !3241
  %618 = sub nsw i32 %617, %609, !dbg !3265
  %619 = sitofp i32 %618 to double, !dbg !3266
  call void @llvm.dbg.value(metadata double %619, metadata !2745, metadata !DIExpression()), !dbg !3241
  %620 = fneg fast double %619, !dbg !3267
  %621 = fmul fast double %620, %619, !dbg !3268
  %622 = fmul fast double %621, %346
  %623 = tail call fast double @llvm.exp.f64(double %622), !dbg !3269
  call void @llvm.dbg.value(metadata double poison, metadata !2746, metadata !DIExpression()), !dbg !3241
  %624 = icmp sgt i32 %617, -1, !dbg !3242
  %625 = icmp slt i32 %617, %566
  %626 = select i1 %624, i1 %625, i1 false, !dbg !3244
  br i1 %626, label %627, label %639, !dbg !3244

627:                                              ; preds = %612
  %628 = load i32, ptr %610, align 8, !dbg !3245, !tbaa !2506
  %629 = zext i32 %617 to i64
  %630 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %570, i64 %629, !dbg !3247
  %631 = load i32, ptr %630, align 8, !dbg !3248, !tbaa !2506
  %632 = icmp eq i32 %628, %631, !dbg !3249
  br i1 %632, label %633, label %639, !dbg !3250

633:                                              ; preds = %627
  %634 = getelementptr inbounds double, ptr %218, i64 %629, !dbg !3251
  %635 = load double, ptr %634, align 8, !dbg !3251, !tbaa !2065
  %636 = fmul fast double %635, %623, !dbg !3270
  %637 = fadd fast double %636, %615, !dbg !3252
  call void @llvm.dbg.value(metadata double %637, metadata !2739, metadata !DIExpression()), !dbg !3238
  %638 = fadd fast double %623, %614, !dbg !3253
  call void @llvm.dbg.value(metadata double %638, metadata !2740, metadata !DIExpression()), !dbg !3238
  br label %639, !dbg !3254

639:                                              ; preds = %633, %627, %612
  %640 = phi double [ %637, %633 ], [ %615, %612 ], [ %615, %627 ], !dbg !3238
  %641 = phi double [ %638, %633 ], [ %614, %612 ], [ %614, %627 ], !dbg !3238
  call void @llvm.dbg.value(metadata double %641, metadata !2740, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata double %640, metadata !2739, metadata !DIExpression()), !dbg !3238
  %642 = add nuw nsw i64 %613, 1, !dbg !3255
  call void @llvm.dbg.value(metadata i64 %642, metadata !2738, metadata !DIExpression()), !dbg !3238
  %643 = icmp eq i64 %642, %344, !dbg !3256
  br i1 %643, label %644, label %612, !dbg !3239, !llvm.loop !3257

644:                                              ; preds = %639
  %645 = fdiv fast double %640, %641, !dbg !3259
  %646 = getelementptr inbounds double, ptr %225, i64 %608, !dbg !3260
  store double %645, ptr %646, align 8, !dbg !3261, !tbaa !2065
  %647 = add nuw nsw i64 %608, 1, !dbg !3262
  call void @llvm.dbg.value(metadata i64 %647, metadata !2707, metadata !DIExpression()), !dbg !2754
  %648 = icmp eq i64 %647, %571, !dbg !3234
  br i1 %648, label %649, label %607, !dbg !3235, !llvm.loop !3263

649:                                              ; preds = %644, %602, %565
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2703, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i32 0, metadata !2707, metadata !DIExpression()), !dbg !2754
  %650 = icmp sgt i32 %566, 0, !dbg !3271
  br i1 %650, label %651, label %697, !dbg !3272

651:                                              ; preds = %649
  %652 = load ptr, ptr %337, align 8, !tbaa !2495
  %653 = zext i32 %566 to i64, !dbg !3271
  br label %654, !dbg !3272

654:                                              ; preds = %651, %666
  %655 = phi i64 [ 0, %651 ], [ %695, %666 ]
  %656 = phi double [ 0.000000e+00, %651 ], [ %694, %666 ]
  call void @llvm.dbg.value(metadata double %656, metadata !2703, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %655, metadata !2707, metadata !DIExpression()), !dbg !2754
  %657 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %652, i64 %655, !dbg !3273
  call void @llvm.dbg.value(metadata ptr %657, metadata !2747, metadata !DIExpression()), !dbg !3274
  %658 = load i32, ptr %657, align 8, !dbg !3275, !tbaa !2506
  %659 = getelementptr inbounds double, ptr %225, i64 %655, !dbg !3276
  %660 = load double, ptr %659, align 8, !dbg !3276, !tbaa !2065
  %661 = tail call fast fastcc double @clip_qscale(ptr noundef %0, i32 noundef %658, double noundef %660), !dbg !3277
  %662 = fptrunc double %661 to float, !dbg !3277
  %663 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %652, i64 %655, i32 8, !dbg !3278
  store float %662, ptr %663, align 8, !dbg !3279, !tbaa !2512
  %664 = fcmp fast ult float %662, 0.000000e+00, !dbg !3280
  br i1 %664, label %665, label %666, !dbg !3283

665:                                              ; preds = %654
  tail call void @__assert_fail(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.9, i32 noundef 1870, ptr noundef nonnull @__PRETTY_FUNCTION__.init_pass2) #23, !dbg !3280
  unreachable, !dbg !3280

666:                                              ; preds = %654
  %667 = fpext float %662 to double, !dbg !3284
  call void @llvm.dbg.value(metadata ptr %657, metadata !2814, metadata !DIExpression()), !dbg !3285
  call void @llvm.dbg.value(metadata double %667, metadata !2819, metadata !DIExpression()), !dbg !3285
  %668 = fcmp fast olt double %667, 1.000000e-01, !dbg !3287
  %669 = select i1 %668, double 1.000000e-01, double %667, !dbg !3288
  call void @llvm.dbg.value(metadata double %669, metadata !2819, metadata !DIExpression()), !dbg !3285
  %670 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %652, i64 %655, i32 4, !dbg !3289
  %671 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %652, i64 %655, i32 2, !dbg !3290
  %672 = load float, ptr %671, align 8, !dbg !3290, !tbaa !2515
  %673 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %652, i64 %655, i32 3, !dbg !3291
  %674 = load i32, ptr %673, align 4, !dbg !3291, !tbaa !2941
  %675 = fpext float %672 to double, !dbg !3292
  %676 = fcmp fast ole float %672, 1.000000e+00, !dbg !3292
  %677 = select fast i1 %676, float 1.000000e+00, float %672, !dbg !3292
  %678 = fpext float %677 to double, !dbg !3292
  %679 = sitofp i32 %674 to double, !dbg !3293
  %680 = fdiv fast double %675, %669, !dbg !3294
  %681 = tail call fast double @llvm.pow.f64(double %680, double 1.100000e+00), !dbg !3295
  %682 = tail call fast double @llvm.maxnum.f64(double %669, double 1.000000e+00), !dbg !3296
  %683 = fdiv fast double %678, %682, !dbg !3297
  %684 = tail call fast double @llvm.sqrt.f64(double %683), !dbg !3298
  %685 = fmul fast double %684, %679, !dbg !3299
  %686 = load <2 x i32>, ptr %670, align 8, !dbg !3289, !tbaa !1667
  %687 = sitofp <2 x i32> %686 to <2 x double>, !dbg !3300
  %688 = insertelement <2 x double> <double 1.000000e-01, double poison>, double %656, i64 1, !dbg !3301
  %689 = fadd fast <2 x double> %688, %687, !dbg !3302
  %690 = extractelement <2 x double> %689, i64 0, !dbg !3303
  %691 = fmul fast double %681, %690, !dbg !3303
  %692 = extractelement <2 x double> %689, i64 1, !dbg !3304
  %693 = fadd fast double %692, %691, !dbg !3304
  %694 = fadd fast double %693, %685, !dbg !3305
  call void @llvm.dbg.value(metadata double %694, metadata !2703, metadata !DIExpression()), !dbg !2754
  %695 = add nuw nsw i64 %655, 1, !dbg !3306
  call void @llvm.dbg.value(metadata i64 %695, metadata !2707, metadata !DIExpression()), !dbg !2754
  %696 = icmp eq i64 %695, %653, !dbg !3271
  br i1 %696, label %697, label %654, !dbg !3272, !llvm.loop !3307

697:                                              ; preds = %666, %567, %649
  %698 = phi double [ 0.000000e+00, %649 ], [ 0.000000e+00, %567 ], [ %694, %666 ], !dbg !3309
  %699 = fcmp fast ogt double %698, %329, !dbg !3310
  %700 = select i1 %699, double %349, double %351, !dbg !3312
  call void @llvm.dbg.value(metadata double %700, metadata !2696, metadata !DIExpression()), !dbg !2754
  %701 = fmul fast double %350, 5.000000e-01, !dbg !3313
  call void @llvm.dbg.value(metadata double %701, metadata !2697, metadata !DIExpression()), !dbg !2754
  %702 = fcmp fast ogt double %701, %332, !dbg !3005
  br i1 %702, label %347, label %703, !dbg !3006, !llvm.loop !3314

703:                                              ; preds = %697, %327
  tail call void @x264_free(ptr noundef %218) #20, !dbg !3316
  br i1 %219, label %704, label %705, !dbg !3317

704:                                              ; preds = %703
  tail call void @x264_free(ptr noundef %225) #20, !dbg !3318
  br label %705, !dbg !3318

705:                                              ; preds = %704, %703
  %706 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 2, !dbg !3320
  %707 = load i32, ptr %706, align 8, !dbg !3320, !tbaa !1959
  %708 = icmp eq i32 %707, 0, !dbg !3322
  br i1 %708, label %1095, label %709, !dbg !3323

709:                                              ; preds = %705
  call void @llvm.dbg.value(metadata ptr %0, metadata !3324, metadata !DIExpression()), !dbg !3341
  %710 = load ptr, ptr %2, align 16, !dbg !3343, !tbaa !1699
  call void @llvm.dbg.value(metadata ptr %710, metadata !3327, metadata !DIExpression()), !dbg !3341
  %711 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %710, i64 0, i32 34, !dbg !3344
  %712 = load i32, ptr %711, align 8, !dbg !3344, !tbaa !2474
  %713 = shl i32 %712, 3, !dbg !3345
  %714 = add i32 %713, 8, !dbg !3345
  %715 = tail call ptr @x264_malloc(i32 noundef %714) #20, !dbg !3346
  call void @llvm.dbg.value(metadata ptr %715, metadata !3328, metadata !DIExpression()), !dbg !3341
  %716 = load i32, ptr %4, align 4, !dbg !3347, !tbaa !1831
  %717 = sitofp i32 %716 to double, !dbg !3348
  %718 = fmul fast double %717, 1.000000e+03, !dbg !3349
  %719 = load i32, ptr %711, align 8, !dbg !3350, !tbaa !2474
  %720 = sitofp i32 %719 to double, !dbg !3351
  %721 = fmul fast double %718, %720, !dbg !3352
  %722 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %710, i64 0, i32 4, !dbg !3353
  %723 = load double, ptr %722, align 8, !dbg !3353, !tbaa !1829
  %724 = fdiv fast double %721, %723, !dbg !3354
  call void @llvm.dbg.value(metadata double %724, metadata !3329, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !3330, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !3332, metadata !DIExpression()), !dbg !3341
  %725 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 2, !dbg !3355
  %726 = load i32, ptr %725, align 8, !dbg !3355, !tbaa !1718
  %727 = sitofp i32 %726 to double, !dbg !3356
  call void @llvm.dbg.value(metadata double %727, metadata !2044, metadata !DIExpression()), !dbg !3357
  %728 = fmul fast double %727, 0x3FC5555555555555, !dbg !3359
  %729 = fadd fast double %728, -2.000000e+00, !dbg !3359
  %730 = tail call fast double @llvm.exp2.f64(double %729), !dbg !3360
  %731 = fmul fast double %730, 8.500000e-01, !dbg !3361
  call void @llvm.dbg.value(metadata double %731, metadata !3336, metadata !DIExpression()), !dbg !3341
  %732 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 3, !dbg !3362
  %733 = load i32, ptr %732, align 4, !dbg !3362, !tbaa !1720
  %734 = sitofp i32 %733 to double, !dbg !3363
  call void @llvm.dbg.value(metadata double %734, metadata !2044, metadata !DIExpression()), !dbg !3364
  %735 = fmul fast double %734, 0x3FC5555555555555, !dbg !3366
  %736 = fadd fast double %735, -2.000000e+00, !dbg !3366
  %737 = tail call fast double @llvm.exp2.f64(double %736), !dbg !3367
  %738 = fmul fast double %737, 8.500000e-01, !dbg !3368
  call void @llvm.dbg.value(metadata double %738, metadata !3337, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.value(metadata i32 0, metadata !3338, metadata !DIExpression()), !dbg !3341
  %739 = getelementptr inbounds double, ptr %715, i64 1, !dbg !3369
  call void @llvm.dbg.value(metadata ptr %739, metadata !3328, metadata !DIExpression()), !dbg !3341
  %740 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %710, i64 0, i32 16
  %741 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 10
  %742 = load float, ptr %741, align 8, !tbaa !1913
  %743 = fpext float %742 to double
  %744 = fsub fast double 1.000000e+00, %743
  %745 = load ptr, ptr %2, align 16, !tbaa !1699
  %746 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %745, i64 0, i32 16
  %747 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %745, i64 0, i32 34
  %748 = load i32, ptr %747, align 8, !tbaa !2474
  %749 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %745, i64 0, i32 19
  %750 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %745, i64 0, i32 35
  %751 = icmp sgt i32 %748, 0
  %752 = fmul fast double %724, 0x3FEFD70A3D70A3D7
  %753 = zext i32 %748 to i64
  %754 = fdiv fast double 1.000000e+00, %724
  br label %755, !dbg !3370

755:                                              ; preds = %1033, %709
  %756 = phi double [ 0.000000e+00, %709 ], [ %1031, %1033 ], !dbg !3341
  call void @llvm.dbg.value(metadata double %756, metadata !3330, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.value(metadata i32 poison, metadata !3338, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3341
  call void @llvm.dbg.value(metadata double %756, metadata !3332, metadata !DIExpression()), !dbg !3341
  %757 = fcmp fast une double %756, 0.000000e+00, !dbg !3371
  br i1 %757, label %758, label %875, !dbg !3374

758:                                              ; preds = %755
  %759 = fmul fast double %756, %754
  %760 = tail call fast double @llvm.minnum.f64(double %759, double 0x3FEFF7CED916872B), !dbg !3375
  %761 = tail call fast double @llvm.maxnum.f64(double %760, double 9.000000e-01), !dbg !3375
  call void @llvm.dbg.value(metadata double %761, metadata !3331, metadata !DIExpression()), !dbg !3341
  %762 = load double, ptr %740, align 8, !dbg !3377, !tbaa !1946
  %763 = fmul fast double %762, %743, !dbg !3378
  store double %763, ptr %715, align 8, !dbg !3379, !tbaa !2065
  call void @llvm.dbg.value(metadata i32 0, metadata !3334, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.value(metadata i32 1, metadata !3339, metadata !DIExpression()), !dbg !3341
  br label %764, !dbg !3380

764:                                              ; preds = %874, %758
  %765 = phi i32 [ 0, %758 ], [ %840, %874 ]
  call void @llvm.dbg.value(metadata ptr undef, metadata !3381, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata ptr %739, metadata !3386, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata ptr undef, metadata !3387, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata ptr undef, metadata !3388, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata i32 1, metadata !3389, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata ptr %745, metadata !3390, metadata !DIExpression()), !dbg !3398
  %766 = load double, ptr %746, align 8, !dbg !3400, !tbaa !1946
  %767 = fmul fast double %766, 1.000000e-01, !dbg !3401
  call void @llvm.dbg.value(metadata double %767, metadata !3391, metadata !DIExpression()), !dbg !3398
  %768 = fmul fast double %766, 9.000000e-01, !dbg !3402
  call void @llvm.dbg.value(metadata double %768, metadata !3392, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata double poison, metadata !3394, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata i32 -1, metadata !3397, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata i32 -1, metadata !3396, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata i32 %765, metadata !3395, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata double poison, metadata !3393, metadata !DIExpression()), !dbg !3398
  %769 = icmp slt i32 %765, %748, !dbg !3403
  br i1 %769, label %770, label %875, !dbg !3406

770:                                              ; preds = %764
  %771 = add nsw i32 %765, -1, !dbg !3407
  %772 = sext i32 %771 to i64, !dbg !3408
  %773 = getelementptr inbounds double, ptr %739, i64 %772, !dbg !3408
  %774 = load double, ptr %773, align 8, !dbg !3408, !tbaa !2065
  call void @llvm.dbg.value(metadata double %774, metadata !3393, metadata !DIExpression()), !dbg !3398
  %775 = load ptr, ptr %750, align 8, !tbaa !2495
  %776 = sext i32 %765 to i64, !dbg !3406
  br label %777, !dbg !3406

777:                                              ; preds = %832, %770
  %778 = phi i64 [ %776, %770 ], [ %835, %832 ]
  %779 = phi i32 [ -1, %770 ], [ %834, %832 ]
  %780 = phi i32 [ -1, %770 ], [ %833, %832 ]
  %781 = phi double [ %774, %770 ], [ %818, %832 ]
  call void @llvm.dbg.value(metadata i32 %779, metadata !3397, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata i32 %780, metadata !3396, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata i64 %778, metadata !3395, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata double %781, metadata !3393, metadata !DIExpression()), !dbg !3398
  %782 = load double, ptr %749, align 8, !dbg !3409, !tbaa !1941
  %783 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %775, i64 %778, i32 8, !dbg !3411
  %784 = load float, ptr %783, align 8, !dbg !3411, !tbaa !2512
  %785 = fpext float %784 to double, !dbg !3412
  call void @llvm.dbg.value(metadata !DIArgList(ptr %775, i64 %778), metadata !2814, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 72, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !3413
  call void @llvm.dbg.value(metadata double %785, metadata !2819, metadata !DIExpression()), !dbg !3413
  %786 = fcmp fast olt double %785, 1.000000e-01, !dbg !3415
  %787 = select i1 %786, double 1.000000e-01, double %785, !dbg !3416
  call void @llvm.dbg.value(metadata double %787, metadata !2819, metadata !DIExpression()), !dbg !3413
  %788 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %775, i64 %778, i32 2, !dbg !3417
  %789 = load float, ptr %788, align 8, !dbg !3417, !tbaa !2515
  %790 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %775, i64 %778, i32 3, !dbg !3418
  %791 = fpext float %789 to double, !dbg !3419
  %792 = fcmp fast ole float %789, 1.000000e+00, !dbg !3419
  %793 = select fast i1 %792, float 1.000000e+00, float %789, !dbg !3419
  %794 = fpext float %793 to double, !dbg !3419
  %795 = fdiv fast double %791, %787, !dbg !3420
  %796 = tail call fast double @llvm.pow.f64(double %795, double 1.100000e+00), !dbg !3421
  %797 = tail call fast double @llvm.maxnum.f64(double %787, double 1.000000e+00), !dbg !3422
  %798 = fdiv fast double %794, %797, !dbg !3423
  %799 = tail call fast double @llvm.sqrt.f64(double %798), !dbg !3424
  %800 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %775, i64 %778, i32 5, !dbg !3425
  %801 = load i32, ptr %800, align 4, !dbg !3425, !tbaa !2518
  %802 = sitofp i32 %801 to double, !dbg !3426
  %803 = load <2 x i32>, ptr %790, align 4, !dbg !3418, !tbaa !1667
  %804 = sitofp <2 x i32> %803 to <2 x double>, !dbg !3427
  %805 = extractelement <2 x double> %804, i64 1
  %806 = fadd fast double %805, 1.000000e-01
  %807 = fmul fast double %796, %806
  %808 = extractelement <2 x double> %804, i64 0
  %809 = fmul fast double %799, %808
  %810 = fadd fast double %809, %807
  %811 = fadd fast double %782, %781, !dbg !3428
  %812 = fadd fast double %810, %802, !dbg !3428
  %813 = fsub fast double %811, %812, !dbg !3428
  call void @llvm.dbg.value(metadata double %813, metadata !3393, metadata !DIExpression()), !dbg !3398
  %814 = load double, ptr %746, align 8, !dbg !3429, !tbaa !1946
  call void @llvm.dbg.value(metadata double %813, metadata !1920, metadata !DIExpression()), !dbg !3430
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1925, metadata !DIExpression()), !dbg !3430
  call void @llvm.dbg.value(metadata double %814, metadata !1926, metadata !DIExpression()), !dbg !3430
  %815 = fcmp fast olt double %813, 0.000000e+00, !dbg !3432
  %816 = fcmp fast ogt double %813, %814, !dbg !3433
  %817 = select fast i1 %816, double %814, double %813, !dbg !3433
  %818 = select fast i1 %815, double 0.000000e+00, double %817, !dbg !3433
  call void @llvm.dbg.value(metadata double %818, metadata !3393, metadata !DIExpression()), !dbg !3398
  %819 = getelementptr inbounds double, ptr %739, i64 %778, !dbg !3434
  store double %818, ptr %819, align 8, !dbg !3435, !tbaa !2065
  %820 = fcmp fast ole double %818, %767, !dbg !3436
  %821 = icmp eq i64 %778, 0
  %822 = select i1 %820, i1 true, i1 %821, !dbg !3438
  br i1 %822, label %823, label %826, !dbg !3438

823:                                              ; preds = %777
  %824 = icmp sgt i32 %779, -1, !dbg !3439
  %825 = trunc i64 %778 to i32, !dbg !3442
  br i1 %824, label %838, label %832, !dbg !3442

826:                                              ; preds = %777
  %827 = fcmp fast oge double %818, %768, !dbg !3443
  %828 = icmp sgt i32 %780, -1
  %829 = select i1 %827, i1 %828, i1 false, !dbg !3445
  %830 = trunc i64 %778 to i32, !dbg !3445
  %831 = select i1 %829, i32 %830, i32 %779, !dbg !3445
  br label %832, !dbg !3445

832:                                              ; preds = %826, %823
  %833 = phi i32 [ %825, %823 ], [ %780, %826 ], !dbg !3398
  %834 = phi i32 [ %779, %823 ], [ %831, %826 ], !dbg !3398
  call void @llvm.dbg.value(metadata i32 %834, metadata !3397, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata i32 %833, metadata !3396, metadata !DIExpression()), !dbg !3398
  %835 = add nsw i64 %778, 1, !dbg !3446
  call void @llvm.dbg.value(metadata i64 %835, metadata !3395, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata double %818, metadata !3393, metadata !DIExpression()), !dbg !3398
  %836 = trunc i64 %835 to i32, !dbg !3403
  %837 = icmp eq i32 %748, %836, !dbg !3403
  br i1 %837, label %838, label %777, !dbg !3406, !llvm.loop !3447

838:                                              ; preds = %832, %823
  %839 = phi i32 [ %780, %823 ], [ %833, %832 ], !dbg !3398
  %840 = phi i32 [ %779, %823 ], [ %834, %832 ], !dbg !3449
  %841 = icmp slt i32 %839, 0, !dbg !3450
  %842 = icmp slt i32 %840, 0, !dbg !3451
  %843 = select i1 %841, i1 true, i1 %842, !dbg !3380
  br i1 %843, label %875, label %844, !dbg !3452

844:                                              ; preds = %838
  call void @llvm.dbg.value(metadata i32 %839, metadata !3334, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.value(metadata i32 %840, metadata !3335, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.value(metadata ptr undef, metadata !3453, metadata !DIExpression()), !dbg !3468
  call void @llvm.dbg.value(metadata i32 %839, metadata !3458, metadata !DIExpression()), !dbg !3468
  call void @llvm.dbg.value(metadata i32 %840, metadata !3459, metadata !DIExpression()), !dbg !3468
  call void @llvm.dbg.value(metadata double %761, metadata !3460, metadata !DIExpression()), !dbg !3468
  call void @llvm.dbg.value(metadata double %731, metadata !3461, metadata !DIExpression()), !dbg !3468
  call void @llvm.dbg.value(metadata double %738, metadata !3462, metadata !DIExpression()), !dbg !3468
  call void @llvm.dbg.value(metadata ptr %745, metadata !3463, metadata !DIExpression()), !dbg !3468
  call void @llvm.dbg.value(metadata i32 0, metadata !3467, metadata !DIExpression()), !dbg !3468
  %845 = icmp ne i32 %839, 0, !dbg !3471
  %846 = zext i1 %845 to i32, !dbg !3473
  %847 = add nuw nsw i32 %839, %846, !dbg !3473
  call void @llvm.dbg.value(metadata i32 %847, metadata !3458, metadata !DIExpression()), !dbg !3468
  call void @llvm.dbg.value(metadata i32 %847, metadata !3466, metadata !DIExpression()), !dbg !3468
  %848 = icmp ugt i32 %847, %840, !dbg !3474
  br i1 %848, label %875, label %849, !dbg !3477

849:                                              ; preds = %844
  %850 = zext i32 %839 to i64, !dbg !3477
  %851 = zext i1 %845 to i64, !dbg !3477
  %852 = add nuw nsw i64 %851, %850, !dbg !3477
  %853 = add nuw i32 %840, 1, !dbg !3477
  br label %854, !dbg !3477

854:                                              ; preds = %854, %849
  %855 = phi i64 [ %852, %849 ], [ %871, %854 ]
  %856 = phi i1 [ false, %849 ], [ %870, %854 ]
  call void @llvm.dbg.value(metadata i32 poison, metadata !3467, metadata !DIExpression()), !dbg !3468
  call void @llvm.dbg.value(metadata i64 %855, metadata !3466, metadata !DIExpression()), !dbg !3468
  %857 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %775, i64 %855, i32 8, !dbg !3478
  %858 = load float, ptr %857, align 8, !dbg !3478, !tbaa !2512
  %859 = fpext float %858 to double, !dbg !3480
  call void @llvm.dbg.value(metadata double %859, metadata !3464, metadata !DIExpression()), !dbg !3468
  call void @llvm.dbg.value(metadata double %859, metadata !1920, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata double %731, metadata !1925, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata double %738, metadata !1926, metadata !DIExpression()), !dbg !3481
  %860 = fcmp fast ogt double %731, %859, !dbg !3483
  %861 = tail call fast double @llvm.minnum.f64(double %738, double %859), !dbg !3484
  %862 = select fast i1 %860, double %731, double %861, !dbg !3484
  call void @llvm.dbg.value(metadata double %862, metadata !3464, metadata !DIExpression()), !dbg !3468
  %863 = fmul fast double %862, %761, !dbg !3485
  call void @llvm.dbg.value(metadata double %863, metadata !3465, metadata !DIExpression()), !dbg !3468
  call void @llvm.dbg.value(metadata double %863, metadata !1920, metadata !DIExpression()), !dbg !3486
  call void @llvm.dbg.value(metadata double %731, metadata !1925, metadata !DIExpression()), !dbg !3486
  call void @llvm.dbg.value(metadata double %738, metadata !1926, metadata !DIExpression()), !dbg !3486
  %864 = fcmp fast olt double %863, %731, !dbg !3488
  %865 = fcmp fast ogt double %863, %738, !dbg !3489
  %866 = select fast i1 %865, double %738, double %863, !dbg !3489
  %867 = select fast i1 %864, double %731, double %866, !dbg !3489
  call void @llvm.dbg.value(metadata double %867, metadata !3465, metadata !DIExpression()), !dbg !3468
  %868 = fptrunc double %867 to float, !dbg !3490
  store float %868, ptr %857, align 8, !dbg !3491, !tbaa !2512
  %869 = fcmp fast une double %867, %862, !dbg !3492
  %870 = select i1 %856, i1 true, i1 %869, !dbg !3492
  call void @llvm.dbg.value(metadata i1 %870, metadata !3467, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3468
  %871 = add nuw nsw i64 %855, 1, !dbg !3493
  call void @llvm.dbg.value(metadata i64 %871, metadata !3466, metadata !DIExpression()), !dbg !3468
  %872 = trunc i64 %871 to i32, !dbg !3474
  %873 = icmp eq i32 %853, %872, !dbg !3474
  br i1 %873, label %874, label %854, !dbg !3477, !llvm.loop !3494

874:                                              ; preds = %854
  call void @llvm.dbg.value(metadata i1 %870, metadata !3467, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3468
  call void @llvm.dbg.value(metadata i32 %840, metadata !3335, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.value(metadata i32 %840, metadata !3334, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.value(metadata i1 %870, metadata !3339, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3341
  br i1 %870, label %764, label %875, !dbg !3380, !llvm.loop !3496

875:                                              ; preds = %874, %844, %838, %764, %755
  %876 = load double, ptr %740, align 8, !dbg !3498, !tbaa !1946
  %877 = fmul fast double %876, %744, !dbg !3499
  store double %877, ptr %715, align 8, !dbg !3500, !tbaa !2065
  call void @llvm.dbg.value(metadata i32 0, metadata !3334, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.value(metadata i32 1, metadata !3340, metadata !DIExpression()), !dbg !3341
  br label %878, !dbg !3501

878:                                              ; preds = %988, %875
  %879 = phi i32 [ 0, %875 ], [ %953, %988 ]
  call void @llvm.dbg.value(metadata ptr undef, metadata !3381, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.value(metadata ptr %739, metadata !3386, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.value(metadata ptr undef, metadata !3387, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.value(metadata ptr undef, metadata !3388, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.value(metadata i32 0, metadata !3389, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.value(metadata ptr %745, metadata !3390, metadata !DIExpression()), !dbg !3502
  %880 = load double, ptr %746, align 8, !dbg !3504, !tbaa !1946
  %881 = fmul fast double %880, 1.000000e-01, !dbg !3505
  call void @llvm.dbg.value(metadata double %881, metadata !3391, metadata !DIExpression()), !dbg !3502
  %882 = fmul fast double %880, 9.000000e-01, !dbg !3506
  call void @llvm.dbg.value(metadata double %882, metadata !3392, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.value(metadata double poison, metadata !3393, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.value(metadata double poison, metadata !3394, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.value(metadata i32 -1, metadata !3396, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.value(metadata i32 -1, metadata !3397, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.value(metadata i32 %879, metadata !3395, metadata !DIExpression()), !dbg !3502
  %883 = icmp slt i32 %879, %748, !dbg !3507
  br i1 %883, label %884, label %989, !dbg !3508

884:                                              ; preds = %878
  %885 = add nsw i32 %879, -1, !dbg !3509
  %886 = sext i32 %885 to i64, !dbg !3510
  %887 = getelementptr inbounds double, ptr %739, i64 %886, !dbg !3510
  %888 = load double, ptr %887, align 8, !dbg !3510, !tbaa !2065
  call void @llvm.dbg.value(metadata double %888, metadata !3393, metadata !DIExpression()), !dbg !3502
  %889 = load ptr, ptr %750, align 8, !tbaa !2495
  %890 = sext i32 %879 to i64, !dbg !3508
  br label %891, !dbg !3508

891:                                              ; preds = %946, %884
  %892 = phi i64 [ %890, %884 ], [ %949, %946 ]
  %893 = phi i32 [ -1, %884 ], [ %948, %946 ]
  %894 = phi i32 [ -1, %884 ], [ %947, %946 ]
  %895 = phi double [ %888, %884 ], [ %932, %946 ]
  call void @llvm.dbg.value(metadata i32 %893, metadata !3397, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.value(metadata i32 %894, metadata !3396, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.value(metadata i64 %892, metadata !3395, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.value(metadata double %895, metadata !3393, metadata !DIExpression()), !dbg !3502
  %896 = load double, ptr %749, align 8, !dbg !3511, !tbaa !1941
  %897 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %889, i64 %892, i32 8, !dbg !3512
  %898 = load float, ptr %897, align 8, !dbg !3512, !tbaa !2512
  %899 = fpext float %898 to double, !dbg !3513
  call void @llvm.dbg.value(metadata !DIArgList(ptr %889, i64 %892), metadata !2814, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 72, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !3514
  call void @llvm.dbg.value(metadata double %899, metadata !2819, metadata !DIExpression()), !dbg !3514
  %900 = fcmp fast olt double %899, 1.000000e-01, !dbg !3516
  %901 = select i1 %900, double 1.000000e-01, double %899, !dbg !3517
  call void @llvm.dbg.value(metadata double %901, metadata !2819, metadata !DIExpression()), !dbg !3514
  %902 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %889, i64 %892, i32 4, !dbg !3518
  %903 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %889, i64 %892, i32 2, !dbg !3519
  %904 = load float, ptr %903, align 8, !dbg !3519, !tbaa !2515
  %905 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %889, i64 %892, i32 3, !dbg !3520
  %906 = load i32, ptr %905, align 4, !dbg !3520, !tbaa !2941
  %907 = fpext float %904 to double, !dbg !3521
  %908 = fcmp fast ole float %904, 1.000000e+00, !dbg !3521
  %909 = select fast i1 %908, float 1.000000e+00, float %904, !dbg !3521
  %910 = fpext float %909 to double, !dbg !3521
  %911 = sitofp i32 %906 to double, !dbg !3522
  %912 = fdiv fast double %907, %901, !dbg !3523
  %913 = tail call fast double @llvm.pow.f64(double %912, double 1.100000e+00), !dbg !3524
  %914 = tail call fast double @llvm.maxnum.f64(double %901, double 1.000000e+00), !dbg !3525
  %915 = fdiv fast double %910, %914, !dbg !3526
  %916 = tail call fast double @llvm.sqrt.f64(double %915), !dbg !3527
  %917 = fmul fast double %916, %911
  %918 = fsub fast double %895, %896
  %919 = load <2 x i32>, ptr %902, align 8, !dbg !3518, !tbaa !1667
  %920 = sitofp <2 x i32> %919 to <2 x double>, !dbg !3528
  %921 = insertelement <2 x double> <double 1.000000e-01, double poison>, double %918, i64 1, !dbg !3529
  %922 = fadd fast <2 x double> %921, %920, !dbg !3530
  %923 = extractelement <2 x double> %922, i64 0
  %924 = fmul fast double %913, %923
  %925 = extractelement <2 x double> %922, i64 1, !dbg !3531
  %926 = fadd fast double %925, %924, !dbg !3531
  %927 = fadd fast double %926, %917, !dbg !3532
  call void @llvm.dbg.value(metadata double %927, metadata !3393, metadata !DIExpression()), !dbg !3502
  %928 = load double, ptr %746, align 8, !dbg !3533, !tbaa !1946
  call void @llvm.dbg.value(metadata double %927, metadata !1920, metadata !DIExpression()), !dbg !3534
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1925, metadata !DIExpression()), !dbg !3534
  call void @llvm.dbg.value(metadata double %928, metadata !1926, metadata !DIExpression()), !dbg !3534
  %929 = fcmp fast olt double %927, 0.000000e+00, !dbg !3536
  %930 = fcmp fast ogt double %927, %928, !dbg !3537
  %931 = select fast i1 %930, double %928, double %927, !dbg !3537
  %932 = select fast i1 %929, double 0.000000e+00, double %931, !dbg !3537
  call void @llvm.dbg.value(metadata double %932, metadata !3393, metadata !DIExpression()), !dbg !3502
  %933 = getelementptr inbounds double, ptr %739, i64 %892, !dbg !3538
  store double %932, ptr %933, align 8, !dbg !3539, !tbaa !2065
  %934 = fcmp fast ole double %932, %881, !dbg !3540
  %935 = icmp eq i64 %892, 0
  %936 = select i1 %934, i1 true, i1 %935, !dbg !3541
  br i1 %936, label %937, label %940, !dbg !3541

937:                                              ; preds = %891
  %938 = icmp sgt i32 %893, -1, !dbg !3542
  %939 = trunc i64 %892 to i32, !dbg !3543
  br i1 %938, label %952, label %946, !dbg !3543

940:                                              ; preds = %891
  %941 = fcmp fast oge double %932, %882, !dbg !3544
  %942 = icmp sgt i32 %894, -1
  %943 = select i1 %941, i1 %942, i1 false, !dbg !3545
  %944 = trunc i64 %892 to i32, !dbg !3545
  %945 = select i1 %943, i32 %944, i32 %893, !dbg !3545
  br label %946, !dbg !3545

946:                                              ; preds = %940, %937
  %947 = phi i32 [ %939, %937 ], [ %894, %940 ], !dbg !3502
  %948 = phi i32 [ %893, %937 ], [ %945, %940 ], !dbg !3502
  call void @llvm.dbg.value(metadata i32 %948, metadata !3397, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.value(metadata i32 %947, metadata !3396, metadata !DIExpression()), !dbg !3502
  %949 = add nsw i64 %892, 1, !dbg !3546
  call void @llvm.dbg.value(metadata i64 %949, metadata !3395, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.value(metadata double %932, metadata !3393, metadata !DIExpression()), !dbg !3502
  %950 = trunc i64 %949 to i32, !dbg !3507
  %951 = icmp eq i32 %748, %950, !dbg !3507
  br i1 %951, label %952, label %891, !dbg !3508, !llvm.loop !3547

952:                                              ; preds = %946, %937
  %953 = phi i32 [ %894, %937 ], [ %947, %946 ], !dbg !3502
  %954 = phi i32 [ %893, %937 ], [ %948, %946 ], !dbg !3549
  %955 = icmp slt i32 %953, 0, !dbg !3550
  %956 = icmp slt i32 %954, 0, !dbg !3551
  %957 = select i1 %955, i1 true, i1 %956, !dbg !3501
  br i1 %957, label %989, label %958, !dbg !3552

958:                                              ; preds = %952
  call void @llvm.dbg.value(metadata i32 %953, metadata !3334, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.value(metadata i32 %954, metadata !3335, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.value(metadata ptr undef, metadata !3453, metadata !DIExpression()), !dbg !3553
  call void @llvm.dbg.value(metadata i32 %953, metadata !3458, metadata !DIExpression()), !dbg !3553
  call void @llvm.dbg.value(metadata i32 %954, metadata !3459, metadata !DIExpression()), !dbg !3553
  call void @llvm.dbg.value(metadata double 1.001000e+00, metadata !3460, metadata !DIExpression()), !dbg !3553
  call void @llvm.dbg.value(metadata double %731, metadata !3461, metadata !DIExpression()), !dbg !3553
  call void @llvm.dbg.value(metadata double %738, metadata !3462, metadata !DIExpression()), !dbg !3553
  call void @llvm.dbg.value(metadata ptr %745, metadata !3463, metadata !DIExpression()), !dbg !3553
  call void @llvm.dbg.value(metadata i32 0, metadata !3467, metadata !DIExpression()), !dbg !3553
  %959 = icmp ne i32 %953, 0, !dbg !3555
  %960 = zext i1 %959 to i32, !dbg !3556
  %961 = add nuw nsw i32 %953, %960, !dbg !3556
  call void @llvm.dbg.value(metadata i32 %961, metadata !3458, metadata !DIExpression()), !dbg !3553
  call void @llvm.dbg.value(metadata i32 %961, metadata !3466, metadata !DIExpression()), !dbg !3553
  %962 = icmp ugt i32 %961, %954, !dbg !3557
  br i1 %962, label %989, label %963, !dbg !3558

963:                                              ; preds = %958
  %964 = zext i32 %953 to i64, !dbg !3558
  %965 = zext i1 %959 to i64, !dbg !3558
  %966 = add nuw nsw i64 %965, %964, !dbg !3558
  %967 = add nuw i32 %954, 1, !dbg !3558
  br label %968, !dbg !3558

968:                                              ; preds = %968, %963
  %969 = phi i64 [ %966, %963 ], [ %985, %968 ]
  %970 = phi i1 [ false, %963 ], [ %984, %968 ]
  call void @llvm.dbg.value(metadata i32 poison, metadata !3467, metadata !DIExpression()), !dbg !3553
  call void @llvm.dbg.value(metadata i64 %969, metadata !3466, metadata !DIExpression()), !dbg !3553
  %971 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %889, i64 %969, i32 8, !dbg !3559
  %972 = load float, ptr %971, align 8, !dbg !3559, !tbaa !2512
  %973 = fpext float %972 to double, !dbg !3560
  call void @llvm.dbg.value(metadata double %973, metadata !3464, metadata !DIExpression()), !dbg !3553
  call void @llvm.dbg.value(metadata double %973, metadata !1920, metadata !DIExpression()), !dbg !3561
  call void @llvm.dbg.value(metadata double %731, metadata !1925, metadata !DIExpression()), !dbg !3561
  call void @llvm.dbg.value(metadata double %738, metadata !1926, metadata !DIExpression()), !dbg !3561
  %974 = fcmp fast ogt double %731, %973, !dbg !3563
  %975 = tail call fast double @llvm.minnum.f64(double %738, double %973), !dbg !3564
  %976 = select fast i1 %974, double %731, double %975, !dbg !3564
  call void @llvm.dbg.value(metadata double %976, metadata !3464, metadata !DIExpression()), !dbg !3553
  %977 = fmul fast double %976, 1.001000e+00, !dbg !3565
  call void @llvm.dbg.value(metadata double %977, metadata !3465, metadata !DIExpression()), !dbg !3553
  call void @llvm.dbg.value(metadata double %977, metadata !1920, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata double %731, metadata !1925, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata double %738, metadata !1926, metadata !DIExpression()), !dbg !3566
  %978 = fcmp fast olt double %977, %731, !dbg !3568
  %979 = fcmp fast ogt double %977, %738, !dbg !3569
  %980 = select fast i1 %979, double %738, double %977, !dbg !3569
  %981 = select fast i1 %978, double %731, double %980, !dbg !3569
  call void @llvm.dbg.value(metadata double %981, metadata !3465, metadata !DIExpression()), !dbg !3553
  %982 = fptrunc double %981 to float, !dbg !3570
  store float %982, ptr %971, align 8, !dbg !3571, !tbaa !2512
  %983 = fcmp fast une double %981, %976, !dbg !3572
  %984 = select i1 %970, i1 true, i1 %983, !dbg !3572
  call void @llvm.dbg.value(metadata i1 %984, metadata !3467, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3553
  %985 = add nuw nsw i64 %969, 1, !dbg !3573
  call void @llvm.dbg.value(metadata i64 %985, metadata !3466, metadata !DIExpression()), !dbg !3553
  %986 = trunc i64 %985 to i32, !dbg !3557
  %987 = icmp eq i32 %967, %986, !dbg !3557
  br i1 %987, label %988, label %968, !dbg !3558, !llvm.loop !3574

988:                                              ; preds = %968
  call void @llvm.dbg.value(metadata i1 %984, metadata !3467, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3553
  call void @llvm.dbg.value(metadata i1 %984, metadata !3340, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3341
  br i1 %984, label %878, label %989, !dbg !3501, !llvm.loop !3576

989:                                              ; preds = %988, %958, %952, %878
  %990 = phi i1 [ false, %878 ], [ true, %988 ], [ false, %952 ], [ true, %958 ], !dbg !3578
  call void @llvm.dbg.value(metadata ptr undef, metadata !3579, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata ptr %745, metadata !3584, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !3585, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i32 0, metadata !3586, metadata !DIExpression()), !dbg !3591
  br i1 %751, label %991, label %1030, !dbg !3593

991:                                              ; preds = %989
  %992 = load ptr, ptr %750, align 8, !tbaa !2495
  br label %993, !dbg !3593

993:                                              ; preds = %993, %991
  %994 = phi i64 [ 0, %991 ], [ %1028, %993 ]
  %995 = phi double [ 0.000000e+00, %991 ], [ %1027, %993 ]
  call void @llvm.dbg.value(metadata double %995, metadata !3585, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i64 %994, metadata !3586, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata !DIArgList(ptr %992, i64 %994), metadata !3587, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 72, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !3594
  %996 = fptoui double %995 to i64, !dbg !3595
  %997 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %992, i64 %994, i32 6, !dbg !3596
  store i64 %996, ptr %997, align 8, !dbg !3597, !tbaa !3598
  %998 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %992, i64 %994, i32 8, !dbg !3599
  %999 = load float, ptr %998, align 8, !dbg !3599, !tbaa !2512
  %1000 = fpext float %999 to double, !dbg !3600
  call void @llvm.dbg.value(metadata !DIArgList(ptr %992, i64 %994), metadata !2814, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 72, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !3601
  call void @llvm.dbg.value(metadata double %1000, metadata !2819, metadata !DIExpression()), !dbg !3601
  %1001 = fcmp fast olt double %1000, 1.000000e-01, !dbg !3603
  %1002 = select i1 %1001, double 1.000000e-01, double %1000, !dbg !3604
  call void @llvm.dbg.value(metadata double %1002, metadata !2819, metadata !DIExpression()), !dbg !3601
  %1003 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %992, i64 %994, i32 4, !dbg !3605
  %1004 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %992, i64 %994, i32 2, !dbg !3606
  %1005 = load float, ptr %1004, align 8, !dbg !3606, !tbaa !2515
  %1006 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %992, i64 %994, i32 3, !dbg !3607
  %1007 = load i32, ptr %1006, align 4, !dbg !3607, !tbaa !2941
  %1008 = fpext float %1005 to double, !dbg !3608
  %1009 = fcmp fast ole float %1005, 1.000000e+00, !dbg !3608
  %1010 = select fast i1 %1009, float 1.000000e+00, float %1005, !dbg !3608
  %1011 = fpext float %1010 to double, !dbg !3608
  %1012 = sitofp i32 %1007 to double, !dbg !3609
  %1013 = fdiv fast double %1008, %1002, !dbg !3610
  %1014 = tail call fast double @llvm.pow.f64(double %1013, double 1.100000e+00), !dbg !3611
  %1015 = tail call fast double @llvm.maxnum.f64(double %1002, double 1.000000e+00), !dbg !3612
  %1016 = fdiv fast double %1011, %1015, !dbg !3613
  %1017 = tail call fast double @llvm.sqrt.f64(double %1016), !dbg !3614
  %1018 = fmul fast double %1017, %1012, !dbg !3615
  %1019 = load <2 x i32>, ptr %1003, align 8, !dbg !3605, !tbaa !1667
  %1020 = sitofp <2 x i32> %1019 to <2 x double>, !dbg !3616
  %1021 = insertelement <2 x double> <double 1.000000e-01, double poison>, double %995, i64 1, !dbg !3617
  %1022 = fadd fast <2 x double> %1021, %1020, !dbg !3618
  %1023 = extractelement <2 x double> %1022, i64 0, !dbg !3619
  %1024 = fmul fast double %1014, %1023, !dbg !3619
  %1025 = extractelement <2 x double> %1022, i64 1, !dbg !3620
  %1026 = fadd fast double %1025, %1024, !dbg !3620
  %1027 = fadd fast double %1026, %1018, !dbg !3621
  call void @llvm.dbg.value(metadata double %1027, metadata !3585, metadata !DIExpression()), !dbg !3591
  %1028 = add nuw nsw i64 %994, 1, !dbg !3622
  call void @llvm.dbg.value(metadata i64 %1028, metadata !3586, metadata !DIExpression()), !dbg !3591
  %1029 = icmp eq i64 %1028, %753, !dbg !3623
  br i1 %1029, label %1030, label %993, !dbg !3593, !llvm.loop !3624

1030:                                             ; preds = %993, %989
  %1031 = phi double [ 0.000000e+00, %989 ], [ %1027, %993 ], !dbg !3591
  call void @llvm.dbg.value(metadata double %1031, metadata !3330, metadata !DIExpression()), !dbg !3341
  %1032 = fcmp fast olt double %1031, %752, !dbg !3626
  br i1 %1032, label %1033, label %1041, !dbg !3627

1033:                                             ; preds = %1030
  %1034 = insertelement <2 x double> poison, double %1031, i64 0, !dbg !3628
  %1035 = insertelement <2 x double> %1034, double %756, i64 1, !dbg !3628
  %1036 = fadd fast <2 x double> %1035, <double 5.000000e-01, double 5.000000e-01>, !dbg !3628
  %1037 = fptosi <2 x double> %1036 to <2 x i32>, !dbg !3629
  %1038 = shufflevector <2 x i32> %1037, <2 x i32> poison, <2 x i32> <i32 1, i32 undef>, !dbg !3630
  %1039 = icmp slt <2 x i32> %1038, %1037, !dbg !3630
  %1040 = extractelement <2 x i1> %1039, i64 0, !dbg !3630
  br i1 %1040, label %755, label %1041, !dbg !3631, !llvm.loop !3632

1041:                                             ; preds = %1033, %1030
  br i1 %990, label %1042, label %1044, !dbg !3634

1042:                                             ; preds = %1041
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.68) #20, !dbg !3635
  %1043 = load i32, ptr %711, align 8, !tbaa !2474
  br label %1044, !dbg !3635

1044:                                             ; preds = %1042, %1041
  %1045 = phi i32 [ %1043, %1042 ], [ %719, %1041 ]
  call void @llvm.dbg.value(metadata i32 0, metadata !3333, metadata !DIExpression()), !dbg !3341
  %1046 = icmp sgt i32 %1045, 0, !dbg !3637
  br i1 %1046, label %1047, label %1094, !dbg !3640

1047:                                             ; preds = %1044
  %1048 = load double, ptr %740, align 8, !tbaa !1946
  %1049 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %710, i64 0, i32 35
  %1050 = load ptr, ptr %1049, align 8, !tbaa !2495
  %1051 = zext i32 %1045 to i64, !dbg !3637
  %1052 = and i64 %1051, 3, !dbg !3640
  %1053 = icmp ult i32 %1045, 4, !dbg !3640
  br i1 %1053, label %1081, label %1054, !dbg !3640

1054:                                             ; preds = %1047
  %1055 = and i64 %1051, 4294967292, !dbg !3640
  br label %1056, !dbg !3640

1056:                                             ; preds = %1056, %1054
  %1057 = phi i64 [ 0, %1054 ], [ %1078, %1056 ]
  %1058 = phi i64 [ 0, %1054 ], [ %1079, %1056 ]
  call void @llvm.dbg.value(metadata i64 %1057, metadata !3333, metadata !DIExpression()), !dbg !3341
  %1059 = getelementptr inbounds double, ptr %739, i64 %1057, !dbg !3641
  %1060 = load double, ptr %1059, align 8, !dbg !3641, !tbaa !2065
  %1061 = fsub fast double %1048, %1060, !dbg !3642
  %1062 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %1050, i64 %1057, i32 7, !dbg !3643
  store double %1061, ptr %1062, align 8, !dbg !3644, !tbaa !3645
  %1063 = or i64 %1057, 1, !dbg !3646
  call void @llvm.dbg.value(metadata i64 %1063, metadata !3333, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.value(metadata i64 %1063, metadata !3333, metadata !DIExpression()), !dbg !3341
  %1064 = getelementptr inbounds double, ptr %739, i64 %1063, !dbg !3641
  %1065 = load double, ptr %1064, align 8, !dbg !3641, !tbaa !2065
  %1066 = fsub fast double %1048, %1065, !dbg !3642
  %1067 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %1050, i64 %1063, i32 7, !dbg !3643
  store double %1066, ptr %1067, align 8, !dbg !3644, !tbaa !3645
  %1068 = or i64 %1057, 2, !dbg !3646
  call void @llvm.dbg.value(metadata i64 %1068, metadata !3333, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.value(metadata i64 %1068, metadata !3333, metadata !DIExpression()), !dbg !3341
  %1069 = getelementptr inbounds double, ptr %739, i64 %1068, !dbg !3641
  %1070 = load double, ptr %1069, align 8, !dbg !3641, !tbaa !2065
  %1071 = fsub fast double %1048, %1070, !dbg !3642
  %1072 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %1050, i64 %1068, i32 7, !dbg !3643
  store double %1071, ptr %1072, align 8, !dbg !3644, !tbaa !3645
  %1073 = or i64 %1057, 3, !dbg !3646
  call void @llvm.dbg.value(metadata i64 %1073, metadata !3333, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.value(metadata i64 %1073, metadata !3333, metadata !DIExpression()), !dbg !3341
  %1074 = getelementptr inbounds double, ptr %739, i64 %1073, !dbg !3641
  %1075 = load double, ptr %1074, align 8, !dbg !3641, !tbaa !2065
  %1076 = fsub fast double %1048, %1075, !dbg !3642
  %1077 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %1050, i64 %1073, i32 7, !dbg !3643
  store double %1076, ptr %1077, align 8, !dbg !3644, !tbaa !3645
  %1078 = add nuw nsw i64 %1057, 4, !dbg !3646
  call void @llvm.dbg.value(metadata i64 %1078, metadata !3333, metadata !DIExpression()), !dbg !3341
  %1079 = add i64 %1058, 4, !dbg !3640
  %1080 = icmp eq i64 %1079, %1055, !dbg !3640
  br i1 %1080, label %1081, label %1056, !dbg !3640, !llvm.loop !3647

1081:                                             ; preds = %1056, %1047
  %1082 = phi i64 [ 0, %1047 ], [ %1078, %1056 ]
  %1083 = icmp eq i64 %1052, 0, !dbg !3640
  br i1 %1083, label %1094, label %1084, !dbg !3640

1084:                                             ; preds = %1081, %1084
  %1085 = phi i64 [ %1091, %1084 ], [ %1082, %1081 ]
  %1086 = phi i64 [ %1092, %1084 ], [ 0, %1081 ]
  call void @llvm.dbg.value(metadata i64 %1085, metadata !3333, metadata !DIExpression()), !dbg !3341
  %1087 = getelementptr inbounds double, ptr %739, i64 %1085, !dbg !3641
  %1088 = load double, ptr %1087, align 8, !dbg !3641, !tbaa !2065
  %1089 = fsub fast double %1048, %1088, !dbg !3642
  %1090 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %1050, i64 %1085, i32 7, !dbg !3643
  store double %1089, ptr %1090, align 8, !dbg !3644, !tbaa !3645
  %1091 = add nuw nsw i64 %1085, 1, !dbg !3646
  call void @llvm.dbg.value(metadata i64 %1091, metadata !3333, metadata !DIExpression()), !dbg !3341
  %1092 = add i64 %1086, 1, !dbg !3640
  %1093 = icmp eq i64 %1092, %1052, !dbg !3640
  br i1 %1093, label %1094, label %1084, !dbg !3640, !llvm.loop !3649

1094:                                             ; preds = %1081, %1084, %1044
  tail call void @x264_free(ptr noundef nonnull %715) #20, !dbg !3650
  br label %1095, !dbg !3651

1095:                                             ; preds = %1094, %705
  %1096 = load ptr, ptr %2, align 16, !dbg !3652, !tbaa !1699
  call void @llvm.dbg.value(metadata ptr undef, metadata !3579, metadata !DIExpression()), !dbg !3653
  call void @llvm.dbg.value(metadata ptr %1096, metadata !3584, metadata !DIExpression()), !dbg !3653
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !3585, metadata !DIExpression()), !dbg !3653
  call void @llvm.dbg.value(metadata i32 0, metadata !3586, metadata !DIExpression()), !dbg !3653
  %1097 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %1096, i64 0, i32 34
  %1098 = load i32, ptr %1097, align 8, !tbaa !2474
  %1099 = icmp sgt i32 %1098, 0, !dbg !3655
  br i1 %1099, label %1100, label %1141, !dbg !3656

1100:                                             ; preds = %1095
  %1101 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %1096, i64 0, i32 35
  %1102 = load ptr, ptr %1101, align 8, !tbaa !2495
  %1103 = zext i32 %1098 to i64, !dbg !3655
  br label %1104, !dbg !3656

1104:                                             ; preds = %1104, %1100
  %1105 = phi i64 [ 0, %1100 ], [ %1139, %1104 ]
  %1106 = phi double [ 0.000000e+00, %1100 ], [ %1138, %1104 ]
  call void @llvm.dbg.value(metadata double %1106, metadata !3585, metadata !DIExpression()), !dbg !3653
  call void @llvm.dbg.value(metadata i64 %1105, metadata !3586, metadata !DIExpression()), !dbg !3653
  call void @llvm.dbg.value(metadata !DIArgList(ptr %1102, i64 %1105), metadata !3587, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 72, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !3657
  %1107 = fptoui double %1106 to i64, !dbg !3658
  %1108 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %1102, i64 %1105, i32 6, !dbg !3659
  store i64 %1107, ptr %1108, align 8, !dbg !3660, !tbaa !3598
  %1109 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %1102, i64 %1105, i32 8, !dbg !3661
  %1110 = load float, ptr %1109, align 8, !dbg !3661, !tbaa !2512
  %1111 = fpext float %1110 to double, !dbg !3662
  call void @llvm.dbg.value(metadata !DIArgList(ptr %1102, i64 %1105), metadata !2814, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 72, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !3663
  call void @llvm.dbg.value(metadata double %1111, metadata !2819, metadata !DIExpression()), !dbg !3663
  %1112 = fcmp fast olt double %1111, 1.000000e-01, !dbg !3665
  %1113 = select i1 %1112, double 1.000000e-01, double %1111, !dbg !3666
  call void @llvm.dbg.value(metadata double %1113, metadata !2819, metadata !DIExpression()), !dbg !3663
  %1114 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %1102, i64 %1105, i32 4, !dbg !3667
  %1115 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %1102, i64 %1105, i32 2, !dbg !3668
  %1116 = load float, ptr %1115, align 8, !dbg !3668, !tbaa !2515
  %1117 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %1102, i64 %1105, i32 3, !dbg !3669
  %1118 = load i32, ptr %1117, align 4, !dbg !3669, !tbaa !2941
  %1119 = fpext float %1116 to double, !dbg !3670
  %1120 = fcmp fast ole float %1116, 1.000000e+00, !dbg !3670
  %1121 = select fast i1 %1120, float 1.000000e+00, float %1116, !dbg !3670
  %1122 = fpext float %1121 to double, !dbg !3670
  %1123 = sitofp i32 %1118 to double, !dbg !3671
  %1124 = fdiv fast double %1119, %1113, !dbg !3672
  %1125 = tail call fast double @llvm.pow.f64(double %1124, double 1.100000e+00), !dbg !3673
  %1126 = tail call fast double @llvm.maxnum.f64(double %1113, double 1.000000e+00), !dbg !3674
  %1127 = fdiv fast double %1122, %1126, !dbg !3675
  %1128 = tail call fast double @llvm.sqrt.f64(double %1127), !dbg !3676
  %1129 = fmul fast double %1128, %1123, !dbg !3677
  %1130 = load <2 x i32>, ptr %1114, align 8, !dbg !3667, !tbaa !1667
  %1131 = sitofp <2 x i32> %1130 to <2 x double>, !dbg !3678
  %1132 = insertelement <2 x double> <double 1.000000e-01, double poison>, double %1106, i64 1, !dbg !3679
  %1133 = fadd fast <2 x double> %1132, %1131, !dbg !3680
  %1134 = extractelement <2 x double> %1133, i64 0, !dbg !3681
  %1135 = fmul fast double %1125, %1134, !dbg !3681
  %1136 = extractelement <2 x double> %1133, i64 1, !dbg !3682
  %1137 = fadd fast double %1136, %1135, !dbg !3682
  %1138 = fadd fast double %1137, %1129, !dbg !3683
  call void @llvm.dbg.value(metadata double %1138, metadata !3585, metadata !DIExpression()), !dbg !3653
  %1139 = add nuw nsw i64 %1105, 1, !dbg !3684
  call void @llvm.dbg.value(metadata i64 %1139, metadata !3586, metadata !DIExpression()), !dbg !3653
  %1140 = icmp eq i64 %1139, %1103, !dbg !3655
  br i1 %1140, label %1141, label %1104, !dbg !3656, !llvm.loop !3685

1141:                                             ; preds = %1104, %1095
  %1142 = phi double [ 0.000000e+00, %1095 ], [ %1138, %1104 ], !dbg !3653
  call void @llvm.dbg.value(metadata double %1142, metadata !2703, metadata !DIExpression()), !dbg !2754
  %1143 = fdiv fast double %1142, %329, !dbg !3687
  %1144 = fadd fast double %1143, -1.000000e+00, !dbg !3688
  %1145 = tail call fast double @llvm.fabs.f64(double %1144), !dbg !3689
  %1146 = fcmp fast ogt double %1145, 1.000000e-02, !dbg !3690
  br i1 %1146, label %1147, label %1254, !dbg !3691

1147:                                             ; preds = %1141
  %1148 = load i32, ptr %7, align 8, !tbaa !2474
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2751, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata i32 0, metadata !2707, metadata !DIExpression()), !dbg !2754
  %1149 = icmp sgt i32 %1148, 0, !dbg !3693
  br i1 %1149, label %1150, label %1201, !dbg !3696

1150:                                             ; preds = %1147
  %1151 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 35
  %1152 = load ptr, ptr %1151, align 8, !tbaa !2495
  %1153 = zext i32 %1148 to i64, !dbg !3693
  %1154 = icmp ult i32 %1148, 4, !dbg !3696
  br i1 %1154, label %1186, label %1155, !dbg !3696

1155:                                             ; preds = %1150
  %1156 = and i64 %1153, 4294967292, !dbg !3696
  br label %1157, !dbg !3696

1157:                                             ; preds = %1157, %1155
  %1158 = phi i64 [ 0, %1155 ], [ %1180, %1157 ], !dbg !3697
  %1159 = phi <2 x double> [ zeroinitializer, %1155 ], [ %1178, %1157 ]
  %1160 = phi <2 x double> [ zeroinitializer, %1155 ], [ %1179, %1157 ]
  %1161 = or i64 %1158, 1, !dbg !3696
  %1162 = or i64 %1158, 2, !dbg !3696
  %1163 = or i64 %1158, 3, !dbg !3696
  %1164 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %1152, i64 %1158, i32 8, !dbg !3698
  %1165 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %1152, i64 %1161, i32 8, !dbg !3698
  %1166 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %1152, i64 %1162, i32 8, !dbg !3698
  %1167 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %1152, i64 %1163, i32 8, !dbg !3698
  %1168 = load float, ptr %1164, align 8, !dbg !3698, !tbaa !2512
  %1169 = load float, ptr %1165, align 8, !dbg !3698, !tbaa !2512
  %1170 = insertelement <2 x float> poison, float %1168, i64 0, !dbg !3698
  %1171 = insertelement <2 x float> %1170, float %1169, i64 1, !dbg !3698
  %1172 = load float, ptr %1166, align 8, !dbg !3698, !tbaa !2512
  %1173 = load float, ptr %1167, align 8, !dbg !3698, !tbaa !2512
  %1174 = insertelement <2 x float> poison, float %1172, i64 0, !dbg !3696
  %1175 = insertelement <2 x float> %1174, float %1173, i64 1, !dbg !3696
  %1176 = fpext <2 x float> %1171 to <2 x double>, !dbg !3696
  %1177 = fpext <2 x float> %1175 to <2 x double>, !dbg !3696
  %1178 = fadd fast <2 x double> %1159, %1176, !dbg !3699
  %1179 = fadd fast <2 x double> %1160, %1177, !dbg !3699
  %1180 = add nuw i64 %1158, 4, !dbg !3697
  %1181 = icmp eq i64 %1180, %1156, !dbg !3697
  br i1 %1181, label %1182, label %1157, !dbg !3697, !llvm.loop !3700

1182:                                             ; preds = %1157
  %1183 = fadd fast <2 x double> %1179, %1178, !dbg !3696
  %1184 = tail call fast double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %1183), !dbg !3696
  %1185 = icmp eq i64 %1156, %1153, !dbg !3696
  br i1 %1185, label %1198, label %1186, !dbg !3696

1186:                                             ; preds = %1150, %1182
  %1187 = phi i64 [ 0, %1150 ], [ %1156, %1182 ]
  %1188 = phi double [ 0.000000e+00, %1150 ], [ %1184, %1182 ]
  br label %1189, !dbg !3696

1189:                                             ; preds = %1186, %1189
  %1190 = phi i64 [ %1196, %1189 ], [ %1187, %1186 ]
  %1191 = phi double [ %1195, %1189 ], [ %1188, %1186 ]
  call void @llvm.dbg.value(metadata double %1191, metadata !2751, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata i64 %1190, metadata !2707, metadata !DIExpression()), !dbg !2754
  %1192 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %1152, i64 %1190, i32 8, !dbg !3698
  %1193 = load float, ptr %1192, align 8, !dbg !3698, !tbaa !2512
  %1194 = fpext float %1193 to double, !dbg !3704
  %1195 = fadd fast double %1191, %1194, !dbg !3699
  call void @llvm.dbg.value(metadata double %1195, metadata !2751, metadata !DIExpression()), !dbg !3692
  %1196 = add nuw nsw i64 %1190, 1, !dbg !3697
  call void @llvm.dbg.value(metadata i64 %1196, metadata !2707, metadata !DIExpression()), !dbg !2754
  %1197 = icmp eq i64 %1196, %1153, !dbg !3693
  br i1 %1197, label %1198, label %1189, !dbg !3696, !llvm.loop !3705

1198:                                             ; preds = %1189, %1182
  %1199 = phi double [ %1184, %1182 ], [ %1195, %1189 ], !dbg !3699
  %1200 = fmul fast double %1199, 0x3FF2D2D2D2D2D2D3, !dbg !3706
  br label %1201, !dbg !3708

1201:                                             ; preds = %1198, %1147
  %1202 = phi double [ 0.000000e+00, %1147 ], [ %1200, %1198 ]
  %1203 = sitofp i32 %1148 to double, !dbg !3708
  call void @llvm.dbg.value(metadata double poison, metadata !3210, metadata !DIExpression()), !dbg !3709
  %1204 = fdiv fast double %1202, %1203, !dbg !3706
  %1205 = tail call fast double @llvm.log.f64(double %1204), !dbg !3710
  %1206 = fmul fast double %1205, 0x40214FF58BE0A23E, !dbg !3711
  %1207 = fadd fast double %1206, 1.200000e+01, !dbg !3712
  call void @llvm.dbg.value(metadata double %1207, metadata !2751, metadata !DIExpression()), !dbg !3692
  %1208 = fcmp fast ogt double %1142, %329, !dbg !3713
  br i1 %1208, label %1212, label %1209, !dbg !3715

1209:                                             ; preds = %1201
  %1210 = load i32, ptr %706, align 8, !dbg !3716, !tbaa !1959
  %1211 = icmp eq i32 %1210, 0, !dbg !3717
  br i1 %1211, label %1212, label %1215, !dbg !3718

1212:                                             ; preds = %1209, %1201
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.61) #20, !dbg !3719
  %1213 = load i32, ptr %7, align 8, !dbg !3720, !tbaa !2474
  %1214 = sitofp i32 %1213 to double, !dbg !3721
  br label %1215, !dbg !3719

1215:                                             ; preds = %1212, %1209
  %1216 = phi double [ %1214, %1212 ], [ %1203, %1209 ], !dbg !3721
  %1217 = load i32, ptr %4, align 4, !dbg !3722, !tbaa !1831
  %1218 = sitofp i32 %1217 to float, !dbg !3723
  %1219 = fpext float %1218 to double, !dbg !3723
  %1220 = load double, ptr %12, align 8, !dbg !3724, !tbaa !1829
  %1221 = fmul fast double %1220, %1142, !dbg !3725
  %1222 = fmul fast double %1216, 1.000000e+03, !dbg !3726
  %1223 = fdiv fast double %1221, %1222, !dbg !3727
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.62, double noundef %1219, double noundef %1223, double noundef %1207) #20, !dbg !3728
  %1224 = fcmp fast olt double %1142, %329, !dbg !3729
  br i1 %1224, label %1225, label %1235, !dbg !3731

1225:                                             ; preds = %1215
  %1226 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 2, !dbg !3732
  %1227 = load i32, ptr %1226, align 8, !dbg !3732, !tbaa !1718
  %1228 = add nsw i32 %1227, 2, !dbg !3733
  %1229 = sitofp i32 %1228 to double, !dbg !3734
  %1230 = fcmp fast olt double %1207, %1229, !dbg !3735
  br i1 %1230, label %1231, label %1235, !dbg !3736

1231:                                             ; preds = %1225
  %1232 = icmp sgt i32 %1227, 0, !dbg !3737
  br i1 %1232, label %1233, label %1234, !dbg !3740

1233:                                             ; preds = %1231
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.63, i32 noundef %1227) #20, !dbg !3741
  br label %1254, !dbg !3741

1234:                                             ; preds = %1231
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.64) #20, !dbg !3742
  br label %1254

1235:                                             ; preds = %1225, %1215
  br i1 %1208, label %1236, label %1246, !dbg !3743

1236:                                             ; preds = %1235
  %1237 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 3, !dbg !3745
  %1238 = load i32, ptr %1237, align 4, !dbg !3745, !tbaa !1720
  %1239 = add nsw i32 %1238, -2, !dbg !3746
  %1240 = sitofp i32 %1239 to double, !dbg !3747
  %1241 = fcmp fast ogt double %1207, %1240, !dbg !3748
  br i1 %1241, label %1242, label %1246, !dbg !3749

1242:                                             ; preds = %1236
  %1243 = icmp slt i32 %1238, 51, !dbg !3750
  br i1 %1243, label %1244, label %1245, !dbg !3753

1244:                                             ; preds = %1242
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.65, i32 noundef %1238) #20, !dbg !3754
  br label %1254, !dbg !3754

1245:                                             ; preds = %1242
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.66) #20, !dbg !3755
  br label %1254

1246:                                             ; preds = %1236, %1235
  %1247 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 1, !dbg !3756
  %1248 = load i32, ptr %1247, align 4, !dbg !3756, !tbaa !1814
  %1249 = icmp eq i32 %1248, 0, !dbg !3758
  br i1 %1249, label %1253, label %1250, !dbg !3759

1250:                                             ; preds = %1246
  %1251 = load i32, ptr %706, align 8, !dbg !3760, !tbaa !1959
  %1252 = icmp eq i32 %1251, 0, !dbg !3761
  br i1 %1252, label %1253, label %1254, !dbg !3762

1253:                                             ; preds = %1250, %1246
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.67) #20, !dbg !3763
  br label %1254, !dbg !3763

1254:                                             ; preds = %1141, %1245, %1244, %1253, %1250, %1233, %1234, %89
  %1255 = phi i32 [ -1, %89 ], [ 0, %1234 ], [ 0, %1233 ], [ 0, %1250 ], [ 0, %1253 ], [ 0, %1244 ], [ 0, %1245 ], [ 0, %1141 ], !dbg !2754
  ret i32 %1255, !dbg !3764
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !3765 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare !dbg !3768 ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare !dbg !3772 noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #9

declare !dbg !3775 ptr @x264_param2string(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3779 noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local void @x264_ratecontrol_summary(ptr noundef %0) local_unnamed_addr #0 !dbg !3783 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3785, metadata !DIExpression()), !dbg !3790
  %2 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 46, !dbg !3791
  %3 = load ptr, ptr %2, align 16, !dbg !3791, !tbaa !1699
  call void @llvm.dbg.value(metadata ptr %3, metadata !3786, metadata !DIExpression()), !dbg !3790
  %4 = load i32, ptr %3, align 8, !dbg !3792, !tbaa !1806
  %5 = icmp eq i32 %4, 0, !dbg !3793
  br i1 %5, label %38, label %6, !dbg !3794

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, !dbg !3795
  %8 = load i32, ptr %7, align 8, !dbg !3796, !tbaa !1802
  %9 = icmp eq i32 %8, 2, !dbg !3797
  br i1 %9, label %10, label %38, !dbg !3798

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 26, !dbg !3799
  %12 = load double, ptr %11, align 8, !dbg !3799, !tbaa !1854
  %13 = fcmp fast ogt double %12, 9.999000e-01, !dbg !3800
  br i1 %13, label %14, label %38, !dbg !3801

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, !dbg !3802
  %16 = load i32, ptr %15, align 16, !dbg !3803, !tbaa !1845
  %17 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 16, !dbg !3804
  %18 = load i32, ptr %17, align 16, !dbg !3804, !tbaa !2033
  %19 = icmp eq i32 %18, 0, !dbg !3805
  %20 = select i1 %19, i32 80, i32 120, !dbg !3805
  %21 = mul nsw i32 %20, %16, !dbg !3806
  %22 = sitofp i32 %21 to double, !dbg !3807
  call void @llvm.dbg.value(metadata double %22, metadata !3787, metadata !DIExpression()), !dbg !3808
  %23 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 19, !dbg !3809
  %24 = load float, ptr %23, align 8, !dbg !3809, !tbaa !2010
  %25 = fsub fast float 1.000000e+00, %24, !dbg !3810
  %26 = fpext float %25 to double, !dbg !3811
  %27 = tail call fast double @llvm.pow.f64(double %22, double %26), !dbg !3812
  %28 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 23, !dbg !3813
  %29 = load double, ptr %28, align 8, !dbg !3813, !tbaa !2020
  %30 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 25, !dbg !3814
  %31 = load double, ptr %30, align 8, !dbg !3814, !tbaa !2026
  call void @llvm.dbg.value(metadata double poison, metadata !3210, metadata !DIExpression()), !dbg !3815
  %32 = fmul fast double %29, 0x3FF2D2D2D2D2D2D3, !dbg !3817
  %33 = fmul fast double %32, %27, !dbg !3818
  %34 = fdiv fast double %33, %31, !dbg !3818
  %35 = tail call fast double @llvm.log.f64(double %34), !dbg !3819
  %36 = fmul fast double %35, 0x40214FF58BE0A23E, !dbg !3820
  %37 = fadd fast double %36, 1.200000e+01, !dbg !3821
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.39, double noundef %37) #20, !dbg !3822
  br label %38, !dbg !3823

38:                                               ; preds = %14, %10, %6, %1
  ret void, !dbg !3824
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_ratecontrol_delete(ptr noundef %0) local_unnamed_addr #0 !dbg !3825 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3827, metadata !DIExpression()), !dbg !3830
  %2 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 46, !dbg !3831
  %3 = load ptr, ptr %2, align 16, !dbg !3831, !tbaa !1699
  call void @llvm.dbg.value(metadata ptr %3, metadata !3828, metadata !DIExpression()), !dbg !3830
  %4 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 32, !dbg !3832
  %5 = load ptr, ptr %4, align 8, !dbg !3832, !tbaa !2624
  %6 = icmp eq ptr %5, null, !dbg !3834
  br i1 %6, label %27, label %7, !dbg !3835

7:                                                ; preds = %1
  %8 = tail call i32 @fclose(ptr noundef nonnull %5), !dbg !3836
  %9 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 6, !dbg !3838
  %10 = load i32, ptr %9, align 16, !dbg !3838, !tbaa !3840
  %11 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 34, !dbg !3841
  %12 = load i32, ptr %11, align 8, !dbg !3841, !tbaa !2474
  %13 = icmp slt i32 %10, %12, !dbg !3842
  br i1 %13, label %24, label %14, !dbg !3843

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 33, !dbg !3844
  %16 = load ptr, ptr %15, align 8, !dbg !3844, !tbaa !2615
  %17 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 16, !dbg !3846
  %18 = load ptr, ptr %17, align 8, !dbg !3846, !tbaa !2610
  %19 = tail call i32 @rename(ptr noundef %16, ptr noundef %18) #20, !dbg !3847
  %20 = icmp eq i32 %19, 0, !dbg !3848
  br i1 %20, label %24, label %21, !dbg !3849

21:                                               ; preds = %14
  %22 = load ptr, ptr %15, align 8, !dbg !3850, !tbaa !2615
  %23 = load ptr, ptr %17, align 8, !dbg !3852, !tbaa !2610
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.40, ptr noundef %22, ptr noundef %23) #20, !dbg !3853
  br label %24, !dbg !3854

24:                                               ; preds = %14, %21, %7
  %25 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 33, !dbg !3855
  %26 = load ptr, ptr %25, align 8, !dbg !3855, !tbaa !2615
  tail call void @x264_free(ptr noundef %26) #20, !dbg !3856
  br label %27, !dbg !3857

27:                                               ; preds = %24, %1
  %28 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 20, !dbg !3858
  %29 = load ptr, ptr %28, align 8, !dbg !3858, !tbaa !2104
  tail call void @x264_free(ptr noundef %29) #20, !dbg !3859
  %30 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 49, !dbg !3860
  %31 = load ptr, ptr %30, align 8, !dbg !3860, !tbaa !2108
  tail call void @x264_free(ptr noundef %31) #20, !dbg !3861
  %32 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 35, !dbg !3862
  %33 = load ptr, ptr %32, align 8, !dbg !3862, !tbaa !2495
  tail call void @x264_free(ptr noundef %33) #20, !dbg !3863
  %34 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 53, !dbg !3864
  %35 = load ptr, ptr %34, align 8, !dbg !3864, !tbaa !2314
  %36 = icmp eq ptr %35, null, !dbg !3866
  br i1 %36, label %65, label %37, !dbg !3867

37:                                               ; preds = %27
  %38 = getelementptr inbounds %struct.x264_zone_t, ptr %35, i64 0, i32 5, !dbg !3868
  %39 = load ptr, ptr %38, align 8, !dbg !3868, !tbaa !2223
  tail call void @x264_free(ptr noundef %39) #20, !dbg !3870
  %40 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 24, !dbg !3871
  %41 = load ptr, ptr %40, align 8, !dbg !3871, !tbaa !2162
  %42 = icmp eq ptr %41, null, !dbg !3873
  br i1 %42, label %63, label %43, !dbg !3874

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 52
  call void @llvm.dbg.value(metadata i32 1, metadata !3829, metadata !DIExpression()), !dbg !3830
  %45 = load i32, ptr %44, align 8, !dbg !3875, !tbaa !2309
  %46 = icmp sgt i32 %45, 1, !dbg !3878
  br i1 %46, label %47, label %63, !dbg !3879

47:                                               ; preds = %43, %58
  %48 = phi i32 [ %59, %58 ], [ %45, %43 ]
  %49 = phi i64 [ %60, %58 ], [ 1, %43 ]
  call void @llvm.dbg.value(metadata i64 %49, metadata !3829, metadata !DIExpression()), !dbg !3830
  %50 = load ptr, ptr %34, align 8, !dbg !3880, !tbaa !2314
  %51 = getelementptr inbounds %struct.x264_zone_t, ptr %50, i64 %49, i32 5, !dbg !3882
  %52 = load ptr, ptr %51, align 8, !dbg !3882, !tbaa !2223
  %53 = getelementptr inbounds %struct.x264_zone_t, ptr %50, i64 0, i32 5, !dbg !3883
  %54 = load ptr, ptr %53, align 8, !dbg !3883, !tbaa !2223
  %55 = icmp eq ptr %52, %54, !dbg !3884
  br i1 %55, label %58, label %56, !dbg !3885

56:                                               ; preds = %47
  tail call void @x264_free(ptr noundef %52) #20, !dbg !3886
  %57 = load i32, ptr %44, align 8, !dbg !3875, !tbaa !2309
  br label %58, !dbg !3886

58:                                               ; preds = %47, %56
  %59 = phi i32 [ %48, %47 ], [ %57, %56 ], !dbg !3875
  %60 = add nuw nsw i64 %49, 1, !dbg !3887
  call void @llvm.dbg.value(metadata i64 %60, metadata !3829, metadata !DIExpression()), !dbg !3830
  %61 = sext i32 %59 to i64, !dbg !3878
  %62 = icmp slt i64 %60, %61, !dbg !3878
  br i1 %62, label %47, label %63, !dbg !3879, !llvm.loop !3888

63:                                               ; preds = %58, %43, %37
  %64 = load ptr, ptr %34, align 8, !dbg !3890, !tbaa !2314
  tail call void @x264_free(ptr noundef %64) #20, !dbg !3891
  br label %65, !dbg !3892

65:                                               ; preds = %63, %27
  tail call void @x264_free(ptr noundef nonnull %3) #20, !dbg !3893
  ret void, !dbg !3894
}

; Function Attrs: nofree nounwind
declare !dbg !3895 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare !dbg !3898 noundef i32 @rename(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local void @x264_ratecontrol_set_estimated_size(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 !dbg !3901 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3905, metadata !DIExpression()), !dbg !3907
  call void @llvm.dbg.value(metadata i32 %1, metadata !3906, metadata !DIExpression()), !dbg !3907
  %3 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 37, !dbg !3908
  %4 = load ptr, ptr %3, align 8, !dbg !3908, !tbaa !1704
  %5 = getelementptr inbounds %struct.x264_frame_t, ptr %4, i64 0, i32 44, !dbg !3909
  %6 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %5) #20, !dbg !3910
  %7 = sitofp i32 %1 to double, !dbg !3911
  %8 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 46, !dbg !3912
  %9 = load ptr, ptr %8, align 16, !dbg !3912, !tbaa !1699
  %10 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %9, i64 0, i32 45, !dbg !3913
  store double %7, ptr %10, align 8, !dbg !3914, !tbaa !3915
  %11 = load ptr, ptr %3, align 8, !dbg !3916, !tbaa !1704
  %12 = getelementptr inbounds %struct.x264_frame_t, ptr %11, i64 0, i32 44, !dbg !3917
  %13 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %12) #20, !dbg !3918
  ret void, !dbg !3919
}

; Function Attrs: nounwind
declare !dbg !3920 i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare !dbg !3925 i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define dso_local i32 @x264_ratecontrol_get_estimated_size(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !dbg !3926 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3932, metadata !DIExpression()), !dbg !3934
  %2 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 37, !dbg !3935
  %3 = load ptr, ptr %2, align 8, !dbg !3935, !tbaa !1704
  %4 = getelementptr inbounds %struct.x264_frame_t, ptr %3, i64 0, i32 44, !dbg !3936
  %5 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %4) #20, !dbg !3937
  %6 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 46, !dbg !3938
  %7 = load ptr, ptr %6, align 16, !dbg !3938, !tbaa !1699
  %8 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %7, i64 0, i32 45, !dbg !3939
  %9 = load double, ptr %8, align 8, !dbg !3939, !tbaa !3915
  %10 = fptosi double %9 to i32, !dbg !3940
  call void @llvm.dbg.value(metadata i32 %10, metadata !3933, metadata !DIExpression()), !dbg !3934
  %11 = load ptr, ptr %2, align 8, !dbg !3941, !tbaa !1704
  %12 = getelementptr inbounds %struct.x264_frame_t, ptr %11, i64 0, i32 44, !dbg !3942
  %13 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %12) #20, !dbg !3943
  ret i32 %10, !dbg !3944
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_ratecontrol_start(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !3945 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3947, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata i32 %1, metadata !3948, metadata !DIExpression()), !dbg !3956
  %3 = getelementptr %struct.x264_t, ptr %0, i64 0, i32 46, !dbg !3957
  %4 = load ptr, ptr %3, align 16, !dbg !3957, !tbaa !1699
  call void @llvm.dbg.value(metadata ptr %4, metadata !3949, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata ptr null, metadata !3950, metadata !DIExpression()), !dbg !3956
  %5 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 37, !dbg !3958
  %6 = load ptr, ptr %5, align 8, !dbg !3958, !tbaa !1704
  %7 = getelementptr inbounds %struct.x264_frame_t, ptr %6, i64 0, i32 4, !dbg !3959
  %8 = load i32, ptr %7, align 8, !dbg !3959, !tbaa !3960
  call void @llvm.dbg.value(metadata ptr undef, metadata !2910, metadata !DIExpression()), !dbg !3961
  call void @llvm.dbg.value(metadata i32 %8, metadata !2915, metadata !DIExpression()), !dbg !3961
  %9 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 52, !dbg !3963
  %10 = load i32, ptr %9, align 8, !dbg !3963, !tbaa !2309
  call void @llvm.dbg.value(metadata i32 %10, metadata !2916, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3961
  call void @llvm.dbg.value(metadata i32 %10, metadata !2916, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3961
  %11 = icmp sgt i32 %10, 0, !dbg !3964
  br i1 %11, label %12, label %29, !dbg !3965

12:                                               ; preds = %2
  call void @llvm.dbg.value(metadata i32 %10, metadata !2916, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3961
  %13 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 53
  %14 = load ptr, ptr %13, align 8, !tbaa !2314
  %15 = zext i32 %10 to i64, !dbg !3965
  br label %16, !dbg !3965

16:                                               ; preds = %27, %12
  %17 = phi i64 [ %15, %12 ], [ %18, %27 ]
  %18 = add nsw i64 %17, -1, !dbg !3966
  %19 = and i64 %18, 4294967295
  %20 = getelementptr inbounds %struct.x264_zone_t, ptr %14, i64 %19, !dbg !3967
  call void @llvm.dbg.value(metadata ptr %20, metadata !2917, metadata !DIExpression()), !dbg !3968
  %21 = load i32, ptr %20, align 8, !dbg !3969, !tbaa !2324
  %22 = icmp sgt i32 %21, %8, !dbg !3970
  br i1 %22, label %27, label %23, !dbg !3971

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.x264_zone_t, ptr %14, i64 %19, i32 1, !dbg !3972
  %25 = load i32, ptr %24, align 4, !dbg !3972, !tbaa !2327
  %26 = icmp slt i32 %25, %8, !dbg !3973
  br i1 %26, label %27, label %30, !dbg !3974

27:                                               ; preds = %23, %16
  call void @llvm.dbg.value(metadata i64 %18, metadata !2916, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3961
  %28 = icmp ugt i64 %17, 1, !dbg !3964
  br i1 %28, label %16, label %29, !dbg !3965, !llvm.loop !3975

29:                                               ; preds = %27, %2
  call void @llvm.dbg.value(metadata ptr null, metadata !3951, metadata !DIExpression()), !dbg !3956
  tail call void @x264_emms() #20, !dbg !3977
  br label %42, !dbg !3978

30:                                               ; preds = %23
  call void @llvm.dbg.value(metadata ptr %20, metadata !3951, metadata !DIExpression()), !dbg !3956
  tail call void @x264_emms() #20, !dbg !3977
  %31 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 54, !dbg !3980
  %32 = load ptr, ptr %31, align 8, !dbg !3980, !tbaa !3981
  %33 = icmp eq ptr %32, null, !dbg !3982
  %34 = getelementptr inbounds %struct.x264_zone_t, ptr %14, i64 %19, i32 5
  %35 = load ptr, ptr %34, align 8, !dbg !3983, !tbaa !2223
  br i1 %33, label %40, label %36, !dbg !3984

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.x264_zone_t, ptr %32, i64 0, i32 5, !dbg !3985
  %38 = load ptr, ptr %37, align 8, !dbg !3985, !tbaa !2223
  %39 = icmp eq ptr %35, %38, !dbg !3986
  br i1 %39, label %42, label %40, !dbg !3987

40:                                               ; preds = %30, %36
  %41 = tail call i32 @x264_encoder_reconfig(ptr noundef %0, ptr noundef %35) #20, !dbg !3988
  br label %42, !dbg !3988

42:                                               ; preds = %29, %40, %36
  %43 = phi i1 [ true, %29 ], [ false, %40 ], [ false, %36 ]
  %44 = phi ptr [ null, %29 ], [ %20, %40 ], [ %20, %36 ]
  %45 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 54, !dbg !3989
  store ptr %44, ptr %45, align 8, !dbg !3990, !tbaa !3981
  %46 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 15, !dbg !3991
  store i32 %1, ptr %46, align 4, !dbg !3992, !tbaa !3993
  %47 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 17, !dbg !3994
  %48 = load i32, ptr %47, align 8, !dbg !3994, !tbaa !1809
  %49 = icmp eq i32 %48, 0, !dbg !3995
  br i1 %49, label %84, label %50, !dbg !3996

50:                                               ; preds = %42
  %51 = load ptr, ptr %5, align 8, !dbg !3997, !tbaa !1704
  %52 = getelementptr inbounds %struct.x264_frame_t, ptr %51, i64 0, i32 4, !dbg !3998
  %53 = load i32, ptr %52, align 8, !dbg !3998, !tbaa !3960
  call void @llvm.dbg.value(metadata i32 %53, metadata !3953, metadata !DIExpression()), !dbg !3999
  %54 = icmp sgt i32 %53, -1, !dbg !4000
  br i1 %54, label %55, label %59, !dbg !4000

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 34, !dbg !4000
  %57 = load i32, ptr %56, align 8, !dbg !4000, !tbaa !2474
  %58 = icmp slt i32 %53, %57, !dbg !4000
  br i1 %58, label %60, label %59, !dbg !4003

59:                                               ; preds = %55, %50
  tail call void @__assert_fail(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.9, i32 noundef 764, ptr noundef nonnull @__PRETTY_FUNCTION__.x264_ratecontrol_start) #23, !dbg !4000
  unreachable, !dbg !4000

60:                                               ; preds = %55
  %61 = load ptr, ptr %3, align 16, !dbg !4004, !tbaa !1699
  %62 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %61, i64 0, i32 35, !dbg !4005
  %63 = load ptr, ptr %62, align 8, !dbg !4005, !tbaa !2495
  %64 = zext i32 %53 to i64
  %65 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %63, i64 %64, !dbg !4006
  %66 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %61, i64 0, i32 9, !dbg !4007
  store ptr %65, ptr %66, align 8, !dbg !4008, !tbaa !4009
  call void @llvm.dbg.value(metadata ptr %65, metadata !3950, metadata !DIExpression()), !dbg !3956
  %67 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 33, i32 2, !dbg !4010
  %68 = load i32, ptr %67, align 8, !dbg !4010, !tbaa !4012
  %69 = icmp eq i32 %68, 1, !dbg !4013
  br i1 %69, label %70, label %84, !dbg !4014

70:                                               ; preds = %60
  %71 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 39, i32 4, !dbg !4015
  %72 = load i32, ptr %71, align 8, !dbg !4015, !tbaa !4016
  %73 = icmp eq i32 %72, 3, !dbg !4017
  br i1 %73, label %74, label %84, !dbg !4018

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %63, i64 %64, i32 14, !dbg !4019
  %76 = load i8, ptr %75, align 8, !dbg !4019, !tbaa !2552
  %77 = icmp eq i8 %76, 115, !dbg !4021
  %78 = zext i1 %77 to i32, !dbg !4021
  %79 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 33, i32 15, !dbg !4022
  store i32 %78, ptr %79, align 8, !dbg !4023, !tbaa !4024
  %80 = add i8 %76, -115, !dbg !4025
  %81 = icmp ult i8 %80, 2, !dbg !4025
  %82 = zext i1 %81 to i32, !dbg !4025
  %83 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 64, !dbg !4026
  store i32 %82, ptr %83, align 8, !dbg !4027, !tbaa !4028
  br label %84, !dbg !4029

84:                                               ; preds = %60, %70, %74, %42
  %85 = phi ptr [ null, %42 ], [ %65, %74 ], [ %65, %70 ], [ %65, %60 ], !dbg !3956
  call void @llvm.dbg.value(metadata ptr %85, metadata !3950, metadata !DIExpression()), !dbg !3956
  %86 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 2, !dbg !4030
  %87 = load i32, ptr %86, align 8, !dbg !4030, !tbaa !1959
  %88 = icmp eq i32 %87, 0, !dbg !4032
  br i1 %88, label %183, label %89, !dbg !4033

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 38, !dbg !4034
  %91 = load ptr, ptr %90, align 16, !dbg !4034, !tbaa !4036
  %92 = getelementptr inbounds %struct.x264_frame_t, ptr %91, i64 0, i32 36, !dbg !4037
  %93 = load ptr, ptr %92, align 8, !dbg !4037, !tbaa !4038
  %94 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 16, !dbg !4039
  %95 = load ptr, ptr %94, align 16, !dbg !4039, !tbaa !1562
  %96 = getelementptr inbounds %struct.x264_sps_t, ptr %95, i64 0, i32 17, !dbg !4040
  %97 = load i32, ptr %96, align 4, !dbg !4040, !tbaa !1593
  %98 = sext i32 %97 to i64, !dbg !4041
  %99 = shl nsw i64 %98, 2, !dbg !4042
  tail call void @llvm.memset.p0.i64(ptr align 4 %93, i8 0, i64 %99, i1 false), !dbg !4043
  %100 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 33, i32 2, !dbg !4044
  %101 = load i32, ptr %100, align 8, !dbg !4044, !tbaa !4012
  %102 = sext i32 %101 to i64, !dbg !4045
  %103 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 48, i64 %102, !dbg !4045
  %104 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 47, !dbg !4046
  store ptr %103, ptr %104, align 8, !dbg !4047, !tbaa !4048
  call void @llvm.dbg.value(metadata ptr %0, metadata !4049, metadata !DIExpression()), !dbg !4062
  %105 = load ptr, ptr %3, align 16, !dbg !4064, !tbaa !1699
  call void @llvm.dbg.value(metadata ptr %105, metadata !4052, metadata !DIExpression()), !dbg !4062
  %106 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1, !dbg !4065
  %107 = load ptr, ptr %106, align 8, !dbg !4066, !tbaa !1681
  %108 = getelementptr inbounds %struct.x264_t, ptr %107, i64 0, i32 46, !dbg !4067
  %109 = load ptr, ptr %108, align 16, !dbg !4067, !tbaa !1699
  %110 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %109, i64 0, i32 17, !dbg !4068
  %111 = load double, ptr %110, align 8, !dbg !4068, !tbaa !1951
  %112 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %105, i64 0, i32 18, !dbg !4069
  store double %111, ptr %112, align 8, !dbg !4070, !tbaa !4071
  %113 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 1, !dbg !4072
  %114 = load i32, ptr %113, align 4, !dbg !4072, !tbaa !1791
  %115 = icmp sgt i32 %114, 1, !dbg !4073
  br i1 %115, label %116, label %183, !dbg !4074

116:                                              ; preds = %89
  %117 = ptrtoint ptr %105 to i64, !dbg !4075
  %118 = ptrtoint ptr %109 to i64, !dbg !4075
  %119 = sub i64 %117, %118, !dbg !4075
  %120 = sdiv exact i64 %119, 608, !dbg !4075
  %121 = trunc i64 %120 to i32, !dbg !4076
  call void @llvm.dbg.value(metadata i32 %121, metadata !4053, metadata !DIExpression()), !dbg !4077
  call void @llvm.dbg.value(metadata i32 1, metadata !4056, metadata !DIExpression()), !dbg !4077
  %122 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %105, i64 0, i32 19
  %123 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %105, i64 0, i32 16
  br label %124, !dbg !4078

124:                                              ; preds = %179, %116
  %125 = phi i32 [ %114, %116 ], [ %180, %179 ]
  %126 = phi i32 [ 1, %116 ], [ %181, %179 ]
  call void @llvm.dbg.value(metadata i32 %126, metadata !4056, metadata !DIExpression()), !dbg !4077
  %127 = add nsw i32 %126, %121, !dbg !4079
  %128 = srem i32 %127, %125, !dbg !4080
  %129 = sext i32 %128 to i64, !dbg !4081
  %130 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1, i64 %129, !dbg !4081
  %131 = load ptr, ptr %130, align 8, !dbg !4081, !tbaa !1681
  call void @llvm.dbg.value(metadata ptr %131, metadata !4057, metadata !DIExpression()), !dbg !4082
  %132 = getelementptr inbounds %struct.x264_t, ptr %131, i64 0, i32 46, !dbg !4083
  call void @llvm.dbg.value(metadata double poison, metadata !4061, metadata !DIExpression()), !dbg !4082
  %133 = getelementptr inbounds %struct.x264_t, ptr %131, i64 0, i32 3, !dbg !4084
  %134 = load i32, ptr %133, align 16, !dbg !4084, !tbaa !4086
  %135 = icmp eq i32 %134, 0, !dbg !4087
  br i1 %135, label %179, label %136, !dbg !4088

136:                                              ; preds = %124
  %137 = load ptr, ptr %132, align 16, !dbg !4083, !tbaa !1699
  %138 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %137, i64 0, i32 46, !dbg !4089
  %139 = load double, ptr %138, align 8, !dbg !4089, !tbaa !4090
  call void @llvm.dbg.value(metadata double %139, metadata !4061, metadata !DIExpression()), !dbg !4082
  call void @llvm.dbg.value(metadata ptr %131, metadata !3932, metadata !DIExpression()), !dbg !4091
  %140 = getelementptr inbounds %struct.x264_t, ptr %131, i64 0, i32 37, !dbg !4093
  %141 = load ptr, ptr %140, align 8, !dbg !4093, !tbaa !1704
  %142 = getelementptr inbounds %struct.x264_frame_t, ptr %141, i64 0, i32 44, !dbg !4094
  %143 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %142) #20, !dbg !4095
  %144 = load ptr, ptr %132, align 16, !dbg !4096, !tbaa !1699
  %145 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %144, i64 0, i32 45, !dbg !4097
  %146 = load double, ptr %145, align 8, !dbg !4097, !tbaa !3915
  %147 = fptosi double %146 to i32, !dbg !4098
  call void @llvm.dbg.value(metadata i32 %147, metadata !3933, metadata !DIExpression()), !dbg !4091
  %148 = load ptr, ptr %140, align 8, !dbg !4099, !tbaa !1704
  %149 = getelementptr inbounds %struct.x264_frame_t, ptr %148, i64 0, i32 44, !dbg !4100
  %150 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %149) #20, !dbg !4101
  %151 = sitofp i32 %147 to double, !dbg !4102
  %152 = fcmp fast ogt double %139, %151, !dbg !4102
  br i1 %152, label %165, label %153, !dbg !4102

153:                                              ; preds = %136
  call void @llvm.dbg.value(metadata ptr %131, metadata !3932, metadata !DIExpression()), !dbg !4103
  %154 = load ptr, ptr %140, align 8, !dbg !4105, !tbaa !1704
  %155 = getelementptr inbounds %struct.x264_frame_t, ptr %154, i64 0, i32 44, !dbg !4106
  %156 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %155) #20, !dbg !4107
  %157 = load ptr, ptr %132, align 16, !dbg !4108, !tbaa !1699
  %158 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %157, i64 0, i32 45, !dbg !4109
  %159 = load double, ptr %158, align 8, !dbg !4109, !tbaa !3915
  %160 = fptosi double %159 to i32, !dbg !4110
  call void @llvm.dbg.value(metadata i32 %160, metadata !3933, metadata !DIExpression()), !dbg !4103
  %161 = load ptr, ptr %140, align 8, !dbg !4111, !tbaa !1704
  %162 = getelementptr inbounds %struct.x264_frame_t, ptr %161, i64 0, i32 44, !dbg !4112
  %163 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %162) #20, !dbg !4113
  %164 = sitofp i32 %160 to double, !dbg !4102
  br label %165, !dbg !4102

165:                                              ; preds = %153, %136
  %166 = phi fast double [ %164, %153 ], [ %139, %136 ], !dbg !4102
  call void @llvm.dbg.value(metadata double %166, metadata !4061, metadata !DIExpression()), !dbg !4082
  %167 = load double, ptr %122, align 8, !dbg !4114, !tbaa !1941
  %168 = fsub fast double %167, %166, !dbg !4115
  %169 = load double, ptr %112, align 8, !dbg !4116, !tbaa !4071
  %170 = fadd fast double %168, %169, !dbg !4116
  %171 = fptosi double %170 to i32, !dbg !4117
  %172 = load double, ptr %123, align 8, !dbg !4118, !tbaa !1946
  %173 = fptosi double %172 to i32, !dbg !4119
  call void @llvm.dbg.value(metadata i32 %171, metadata !1721, metadata !DIExpression()), !dbg !4120
  call void @llvm.dbg.value(metadata i32 0, metadata !1726, metadata !DIExpression()), !dbg !4120
  call void @llvm.dbg.value(metadata i32 %173, metadata !1727, metadata !DIExpression()), !dbg !4120
  %174 = icmp slt i32 %171, 0, !dbg !4122
  %175 = tail call i32 @llvm.smin.i32(i32 %171, i32 %173), !dbg !4123
  %176 = select i1 %174, i32 0, i32 %175, !dbg !4123
  %177 = sitofp i32 %176 to double, !dbg !4124
  store double %177, ptr %112, align 8, !dbg !4125, !tbaa !4071
  %178 = load i32, ptr %113, align 4, !dbg !4126, !tbaa !1791
  br label %179, !dbg !4127

179:                                              ; preds = %165, %124
  %180 = phi i32 [ %125, %124 ], [ %178, %165 ], !dbg !4126
  %181 = add nuw nsw i32 %126, 1, !dbg !4128
  call void @llvm.dbg.value(metadata i32 %181, metadata !4056, metadata !DIExpression()), !dbg !4077
  %182 = icmp slt i32 %181, %180, !dbg !4129
  br i1 %182, label %124, label %183, !dbg !4078, !llvm.loop !4130

183:                                              ; preds = %179, %89, %84
  %184 = getelementptr %struct.x264_t, ptr %0, i64 0, i32 33, i32 2, !dbg !4132
  %185 = load i32, ptr %184, align 8, !dbg !4132, !tbaa !4012
  %186 = icmp eq i32 %185, 1, !dbg !4134
  br i1 %186, label %209, label %187, !dbg !4135

187:                                              ; preds = %183
  %188 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 50, !dbg !4136
  %189 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 36
  %190 = load ptr, ptr %189, align 8, !dbg !4138, !tbaa !1681
  %191 = icmp eq ptr %190, null, !dbg !4138
  br i1 %191, label %207, label %192, !dbg !4139

192:                                              ; preds = %187, %199
  %193 = phi i64 [ %200, %199 ], [ 0, %187 ]
  %194 = phi ptr [ %202, %199 ], [ %190, %187 ]
  %195 = getelementptr inbounds %struct.x264_frame_t, ptr %194, i64 0, i32 1, !dbg !4140
  %196 = load i32, ptr %195, align 4, !dbg !4140, !tbaa !4141
  %197 = and i32 %196, -2, !dbg !4140
  %198 = icmp eq i32 %197, 4, !dbg !4140
  br i1 %198, label %199, label %204, !dbg !4140

199:                                              ; preds = %192
  %200 = add nuw i64 %193, 1, !dbg !4142
  %201 = getelementptr inbounds [67 x ptr], ptr %189, i64 0, i64 %200, !dbg !4138
  %202 = load ptr, ptr %201, align 8, !dbg !4138, !tbaa !1681
  %203 = icmp eq ptr %202, null, !dbg !4138
  br i1 %203, label %204, label %192, !dbg !4139, !llvm.loop !4143

204:                                              ; preds = %199, %192
  %205 = phi i64 [ %193, %192 ], [ %200, %199 ]
  %206 = trunc i64 %205 to i32, !dbg !4145
  br label %207, !dbg !4145

207:                                              ; preds = %204, %187
  %208 = phi i32 [ 0, %187 ], [ %206, %204 ]
  store i32 %208, ptr %188, align 8, !dbg !4145, !tbaa !4146
  br label %209, !dbg !4147

209:                                              ; preds = %207, %183
  %210 = icmp eq i32 %1, 0, !dbg !4147
  br i1 %210, label %214, label %211, !dbg !4149

211:                                              ; preds = %209
  %212 = add nsw i32 %1, -1, !dbg !4150
  %213 = sitofp i32 %212 to float, !dbg !4152
  call void @llvm.dbg.value(metadata float %213, metadata !3952, metadata !DIExpression()), !dbg !3956
  br label %280, !dbg !4153

214:                                              ; preds = %209
  %215 = load i32, ptr %4, align 8, !dbg !4154, !tbaa !1806
  %216 = icmp eq i32 %215, 0, !dbg !4156
  br i1 %216, label %225, label %217, !dbg !4157

217:                                              ; preds = %214
  %218 = tail call fast fastcc float @rate_estimate_qscale(ptr noundef nonnull %0), !dbg !4158
  %219 = fpext float %218 to double, !dbg !4158
  call void @llvm.dbg.value(metadata double %219, metadata !3210, metadata !DIExpression()), !dbg !4160
  %220 = fmul fast double %219, 0x3FF2D2D2D2D2D2D3, !dbg !4162
  %221 = tail call fast double @llvm.log.f64(double %220), !dbg !4163
  %222 = fmul fast double %221, 0x40214FF58BE0A23E, !dbg !4164
  %223 = fadd fast double %222, 1.200000e+01, !dbg !4165
  %224 = fptrunc double %223 to float, !dbg !4166
  call void @llvm.dbg.value(metadata float %224, metadata !3952, metadata !DIExpression()), !dbg !3956
  br label %280, !dbg !4167

225:                                              ; preds = %214
  %226 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 1, !dbg !4168
  %227 = load i32, ptr %226, align 4, !dbg !4168, !tbaa !1814
  %228 = icmp eq i32 %227, 0, !dbg !4170
  br i1 %228, label %238, label %229, !dbg !4171

229:                                              ; preds = %225
  %230 = tail call fast fastcc float @rate_estimate_qscale(ptr noundef nonnull %0), !dbg !4172
  %231 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %85, i64 0, i32 8, !dbg !4174
  store float %230, ptr %231, align 8, !dbg !4175, !tbaa !2512
  %232 = fpext float %230 to double, !dbg !4176
  call void @llvm.dbg.value(metadata double %232, metadata !3210, metadata !DIExpression()), !dbg !4177
  %233 = fmul fast double %232, 0x3FF2D2D2D2D2D2D3, !dbg !4179
  %234 = tail call fast double @llvm.log.f64(double %233), !dbg !4180
  %235 = fmul fast double %234, 0x40214FF58BE0A23E, !dbg !4181
  %236 = fadd fast double %235, 1.200000e+01, !dbg !4182
  %237 = fptrunc double %236 to float, !dbg !4183
  call void @llvm.dbg.value(metadata float %237, metadata !3952, metadata !DIExpression()), !dbg !3956
  br label %280, !dbg !4184

238:                                              ; preds = %225
  br i1 %186, label %239, label %252, !dbg !4185

239:                                              ; preds = %238
  %240 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 38, !dbg !4188
  %241 = load ptr, ptr %240, align 16, !dbg !4188, !tbaa !4036
  %242 = getelementptr inbounds %struct.x264_frame_t, ptr %241, i64 0, i32 6, !dbg !4189
  %243 = load i32, ptr %242, align 8, !dbg !4189, !tbaa !4190
  %244 = icmp eq i32 %243, 0, !dbg !4191
  br i1 %244, label %252, label %245, !dbg !4192

245:                                              ; preds = %239
  %246 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 8, !dbg !4193
  %247 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 8, i64 1, !dbg !4194
  %248 = load i32, ptr %247, align 4, !dbg !4194, !tbaa !1667
  %249 = load i32, ptr %246, align 4, !dbg !4195, !tbaa !1667
  %250 = add nsw i32 %249, %248, !dbg !4196
  %251 = sdiv i32 %250, 2, !dbg !4197
  call void @llvm.dbg.value(metadata float poison, metadata !3952, metadata !DIExpression()), !dbg !3956
  br label %256, !dbg !4198

252:                                              ; preds = %239, %238
  %253 = sext i32 %185 to i64, !dbg !4199
  %254 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 8, i64 %253, !dbg !4199
  %255 = load i32, ptr %254, align 4, !dbg !4199, !tbaa !1667
  call void @llvm.dbg.value(metadata float poison, metadata !3952, metadata !DIExpression()), !dbg !3956
  br label %256

256:                                              ; preds = %252, %245
  %257 = phi i32 [ %251, %245 ], [ %255, %252 ]
  %258 = sitofp i32 %257 to float, !dbg !4200
  call void @llvm.dbg.value(metadata float %258, metadata !3952, metadata !DIExpression()), !dbg !3956
  br i1 %43, label %280, label %259, !dbg !4201

259:                                              ; preds = %256
  %260 = getelementptr inbounds %struct.x264_zone_t, ptr %44, i64 0, i32 2, !dbg !4202
  %261 = load i32, ptr %260, align 8, !dbg !4202, !tbaa !2246
  %262 = icmp eq i32 %261, 0, !dbg !4206
  br i1 %262, label %271, label %263, !dbg !4207

263:                                              ; preds = %259
  %264 = getelementptr inbounds %struct.x264_zone_t, ptr %44, i64 0, i32 3, !dbg !4208
  %265 = load i32, ptr %264, align 4, !dbg !4208, !tbaa !2966
  %266 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 8, !dbg !4209
  %267 = load i32, ptr %266, align 4, !dbg !4210, !tbaa !1667
  %268 = sub nsw i32 %265, %267, !dbg !4211
  %269 = sitofp i32 %268 to float, !dbg !4212
  %270 = fadd fast float %269, %258, !dbg !4213
  call void @llvm.dbg.value(metadata float %270, metadata !3952, metadata !DIExpression()), !dbg !3956
  br label %280, !dbg !4214

271:                                              ; preds = %259
  %272 = getelementptr inbounds %struct.x264_zone_t, ptr %44, i64 0, i32 4, !dbg !4215
  %273 = load float, ptr %272, align 8, !dbg !4215, !tbaa !2227
  %274 = fpext float %273 to double, !dbg !4216
  %275 = tail call fast double @llvm.log.f64(double %274), !dbg !4217
  %276 = fmul fast double %275, 0x40214FF58BE0A23E, !dbg !4218
  %277 = fpext float %258 to double, !dbg !4219
  %278 = fsub fast double %277, %276, !dbg !4219
  %279 = fptrunc double %278 to float, !dbg !4219
  call void @llvm.dbg.value(metadata float %279, metadata !3952, metadata !DIExpression()), !dbg !3956
  br label %280

280:                                              ; preds = %217, %256, %271, %263, %229, %211
  %281 = phi float [ %213, %211 ], [ %224, %217 ], [ %237, %229 ], [ %270, %263 ], [ %279, %271 ], [ %258, %256 ], !dbg !4220
  call void @llvm.dbg.value(metadata float %281, metadata !3952, metadata !DIExpression()), !dbg !3956
  %282 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 13, !dbg !4221
  store <2 x float> zeroinitializer, ptr %282, align 4, !dbg !4222, !tbaa !1622
  %283 = fpext float %281 to double, !dbg !4223
  %284 = fadd fast double %283, 5.000000e-01, !dbg !4224
  %285 = fptosi double %284 to i32, !dbg !4225
  call void @llvm.dbg.value(metadata i32 %285, metadata !1721, metadata !DIExpression()), !dbg !4226
  call void @llvm.dbg.value(metadata i32 0, metadata !1726, metadata !DIExpression()), !dbg !4226
  call void @llvm.dbg.value(metadata i32 51, metadata !1727, metadata !DIExpression()), !dbg !4226
  %286 = tail call i32 @llvm.smin.i32(i32 %285, i32 51), !dbg !4228
  %287 = tail call i32 @llvm.smax.i32(i32 %286, i32 0), !dbg !4228
  %288 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 10, !dbg !4229
  store i32 %287, ptr %288, align 8, !dbg !4230, !tbaa !4231
  %289 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 11, !dbg !4232
  store i32 %287, ptr %289, align 4, !dbg !4233, !tbaa !4234
  %290 = sitofp i32 %287 to float, !dbg !4235
  %291 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 38, !dbg !4236
  %292 = load ptr, ptr %291, align 16, !dbg !4236, !tbaa !4036
  %293 = getelementptr inbounds %struct.x264_frame_t, ptr %292, i64 0, i32 8, !dbg !4237
  store float %290, ptr %293, align 8, !dbg !4238, !tbaa !4239
  %294 = getelementptr inbounds %struct.x264_frame_t, ptr %292, i64 0, i32 7, !dbg !4240
  store float %290, ptr %294, align 4, !dbg !4241, !tbaa !4242
  %295 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 12, !dbg !4243
  store float %281, ptr %295, align 8, !dbg !4244, !tbaa !1701
  %296 = icmp eq ptr %85, null, !dbg !4245
  br i1 %296, label %299, label %297, !dbg !4247

297:                                              ; preds = %280
  %298 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %85, i64 0, i32 9, !dbg !4248
  store i32 %287, ptr %298, align 4, !dbg !4249, !tbaa !2521
  br label %299, !dbg !4250

299:                                              ; preds = %297, %280
  %300 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 1, !dbg !4251
  %301 = load i32, ptr %300, align 4, !dbg !4251, !tbaa !1791
  %302 = icmp sgt i32 %301, 1, !dbg !4253
  %303 = load i32, ptr %184, align 8, !dbg !3956, !tbaa !4012
  br i1 %302, label %304, label %322, !dbg !4254

304:                                              ; preds = %299
  %305 = load ptr, ptr %3, align 16, !dbg !4255, !tbaa !1699
  call void @llvm.dbg.value(metadata ptr undef, metadata !4256, metadata !DIExpression()), !dbg !4263
  call void @llvm.dbg.value(metadata float %290, metadata !4261, metadata !DIExpression()), !dbg !4263
  call void @llvm.dbg.value(metadata ptr %305, metadata !4262, metadata !DIExpression()), !dbg !4263
  %306 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %305, i64 0, i32 39, !dbg !4265
  %307 = load double, ptr %306, align 8, !dbg !4266, !tbaa !2008
  %308 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %305, i64 0, i32 40, !dbg !4267
  %309 = load double, ptr %308, align 8, !dbg !4268, !tbaa !2002
  %310 = fmul fast double %309, 0x3FEE666666666666, !dbg !4268
  %311 = fadd fast double %310, 1.000000e+00, !dbg !4269
  store double %311, ptr %308, align 8, !dbg !4269, !tbaa !2002
  %312 = icmp eq i32 %303, 2, !dbg !4270
  %313 = fpext float %290 to double, !dbg !4272
  br i1 %312, label %314, label %318, !dbg !4273

314:                                              ; preds = %304
  %315 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %305, i64 0, i32 30, !dbg !4274
  %316 = load double, ptr %315, align 8, !dbg !4274, !tbaa !4275
  %317 = fadd fast double %316, %313, !dbg !4276
  br label %318, !dbg !4277

318:                                              ; preds = %304, %314
  %319 = phi double [ %317, %314 ], [ %313, %304 ]
  %320 = fmul fast double %307, 0x3FEE666666666666, !dbg !4266
  %321 = fadd fast double %319, %320, !dbg !4272
  store double %321, ptr %306, align 8, !dbg !4272, !tbaa !2008
  br label %322, !dbg !4255

322:                                              ; preds = %299, %318
  %323 = icmp eq i32 %303, 1, !dbg !4278
  br i1 %323, label %326, label %324, !dbg !4280

324:                                              ; preds = %322
  %325 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 38, !dbg !4281
  store i32 %303, ptr %325, align 8, !dbg !4282, !tbaa !1851
  br label %326, !dbg !4283

326:                                              ; preds = %324, %322
  ret void, !dbg !4284
}

declare !dbg !4285 i32 @x264_encoder_reconfig(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc float @rate_estimate_qscale(ptr noundef %0) unnamed_addr #0 !dbg !4288 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4292, metadata !DIExpression()), !dbg !4344
  %2 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 46, !dbg !4345
  %3 = load ptr, ptr %2, align 16, !dbg !4345, !tbaa !1699
  call void @llvm.dbg.value(metadata ptr %3, metadata !4294, metadata !DIExpression()), !dbg !4344
  %4 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 33, i32 2, !dbg !4346
  %5 = load i32, ptr %4, align 8, !dbg !4346, !tbaa !4012
  call void @llvm.dbg.value(metadata i32 %5, metadata !4296, metadata !DIExpression()), !dbg !4344
  %6 = sext i32 %5 to i64, !dbg !4347
  %7 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 42, i64 %6, !dbg !4347
  %8 = load double, ptr %7, align 8, !dbg !4347, !tbaa !2065
  call void @llvm.dbg.value(metadata double %8, metadata !4297, metadata !DIExpression()), !dbg !4344
  %9 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 43, i64 %6, !dbg !4348
  %10 = load double, ptr %9, align 8, !dbg !4348, !tbaa !2065
  call void @llvm.dbg.value(metadata double %10, metadata !4298, metadata !DIExpression()), !dbg !4344
  %11 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47, i32 2, !dbg !4349
  %12 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47, i32 2, i64 2, !dbg !4350
  %13 = load i64, ptr %12, align 8, !dbg !4350, !tbaa !4351
  %14 = load i64, ptr %11, align 8, !dbg !4352, !tbaa !4351
  %15 = add nsw i64 %14, %13, !dbg !4353
  %16 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47, i32 2, i64 1, !dbg !4354
  %17 = load i64, ptr %16, align 8, !dbg !4354, !tbaa !4351
  %18 = add nsw i64 %15, %17, !dbg !4355
  %19 = shl nsw i64 %18, 3, !dbg !4356
  call void @llvm.dbg.value(metadata i64 %19, metadata !4299, metadata !DIExpression()), !dbg !4344
  %20 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 1, !dbg !4357
  %21 = load i32, ptr %20, align 4, !dbg !4357, !tbaa !1814
  %22 = icmp eq i32 %21, 0, !dbg !4359
  br i1 %22, label %50, label %23, !dbg !4360

23:                                               ; preds = %1
  %24 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 9, !dbg !4361
  %25 = load ptr, ptr %24, align 8, !dbg !4361, !tbaa !4009
  %26 = load i32, ptr %25, align 8, !dbg !4363, !tbaa.struct !4364
  call void @llvm.dbg.value(metadata i32 %26, metadata !4295, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4344
  call void @llvm.dbg.value(metadata i32 poison, metadata !4295, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !4344
  %27 = getelementptr inbounds i8, ptr %25, i64 8, !dbg !4363
  %28 = load float, ptr %27, align 8, !dbg !4363, !tbaa.struct !4365
  call void @llvm.dbg.value(metadata float %28, metadata !4295, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !4344
  %29 = getelementptr inbounds i8, ptr %25, i64 12, !dbg !4363
  %30 = load i32, ptr %29, align 4, !dbg !4363, !tbaa.struct !4366
  call void @llvm.dbg.value(metadata i32 %30, metadata !4295, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !4344
  %31 = getelementptr inbounds i8, ptr %25, i64 16, !dbg !4363
  %32 = load i32, ptr %31, align 8, !dbg !4363, !tbaa.struct !4367
  call void @llvm.dbg.value(metadata i32 %32, metadata !4295, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)), !dbg !4344
  %33 = getelementptr inbounds i8, ptr %25, i64 20, !dbg !4363
  %34 = load i32, ptr %33, align 4, !dbg !4363, !tbaa.struct !4368
  call void @llvm.dbg.value(metadata i32 %34, metadata !4295, metadata !DIExpression(DW_OP_LLVM_fragment, 160, 32)), !dbg !4344
  %35 = getelementptr inbounds i8, ptr %25, i64 24, !dbg !4363
  %36 = load i64, ptr %35, align 8, !dbg !4363, !tbaa.struct !4369
  call void @llvm.dbg.value(metadata i64 %36, metadata !4295, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !4344
  %37 = getelementptr inbounds i8, ptr %25, i64 32, !dbg !4363
  %38 = load double, ptr %37, align 8, !dbg !4363, !tbaa.struct !4370
  call void @llvm.dbg.value(metadata double %38, metadata !4295, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !4344
  %39 = getelementptr inbounds i8, ptr %25, i64 40, !dbg !4363
  %40 = load float, ptr %39, align 8, !dbg !4363, !tbaa.struct !4371
  call void @llvm.dbg.value(metadata float %40, metadata !4295, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !4344
  call void @llvm.dbg.value(metadata i32 poison, metadata !4295, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !4344
  call void @llvm.dbg.value(metadata i32 poison, metadata !4295, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !4344
  call void @llvm.dbg.value(metadata i32 poison, metadata !4295, metadata !DIExpression(DW_OP_LLVM_fragment, 416, 32)), !dbg !4344
  call void @llvm.dbg.value(metadata i32 poison, metadata !4295, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 32)), !dbg !4344
  call void @llvm.dbg.value(metadata float poison, metadata !4295, metadata !DIExpression(DW_OP_LLVM_fragment, 480, 32)), !dbg !4344
  call void @llvm.dbg.value(metadata i64 poison, metadata !4295, metadata !DIExpression(DW_OP_LLVM_fragment, 512, 64)), !dbg !4344
  %41 = icmp eq i32 %5, %26, !dbg !4372
  br i1 %41, label %50, label %42, !dbg !4374

42:                                               ; preds = %23
  %43 = getelementptr inbounds [5 x i8], ptr @slice_type_to_char, i64 0, i64 %6, !dbg !4375
  %44 = load i8, ptr %43, align 1, !dbg !4375, !tbaa !1743
  %45 = sext i8 %44 to i32, !dbg !4375
  %46 = sext i32 %26 to i64, !dbg !4377
  %47 = getelementptr inbounds [5 x i8], ptr @slice_type_to_char, i64 0, i64 %46, !dbg !4377
  %48 = load i8, ptr %47, align 1, !dbg !4377, !tbaa !1743
  %49 = sext i8 %48 to i32, !dbg !4377
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.56, i32 noundef %45, i32 noundef %49) #20, !dbg !4378
  br label %50, !dbg !4379

50:                                               ; preds = %23, %42, %1
  %51 = phi float [ undef, %1 ], [ %40, %23 ], [ %40, %42 ]
  %52 = phi double [ undef, %1 ], [ %38, %23 ], [ %38, %42 ]
  %53 = phi i64 [ undef, %1 ], [ %36, %23 ], [ %36, %42 ]
  %54 = phi i32 [ undef, %1 ], [ %34, %23 ], [ %34, %42 ]
  %55 = phi i32 [ undef, %1 ], [ %32, %23 ], [ %32, %42 ]
  %56 = phi i32 [ undef, %1 ], [ %30, %23 ], [ %30, %42 ]
  %57 = phi float [ undef, %1 ], [ %28, %23 ], [ %28, %42 ]
  call void @llvm.dbg.value(metadata float %57, metadata !4295, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !4344
  call void @llvm.dbg.value(metadata i32 %56, metadata !4295, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !4344
  call void @llvm.dbg.value(metadata i32 %55, metadata !4295, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)), !dbg !4344
  call void @llvm.dbg.value(metadata i32 %54, metadata !4295, metadata !DIExpression(DW_OP_LLVM_fragment, 160, 32)), !dbg !4344
  call void @llvm.dbg.value(metadata i64 %53, metadata !4295, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !4344
  call void @llvm.dbg.value(metadata double %52, metadata !4295, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !4344
  call void @llvm.dbg.value(metadata float %51, metadata !4295, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !4344
  %58 = icmp eq i32 %5, 1, !dbg !4380
  br i1 %58, label %59, label %173, !dbg !4381

59:                                               ; preds = %50
  %60 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 40, !dbg !4382
  %61 = load ptr, ptr %60, align 16, !dbg !4382, !tbaa !1681
  %62 = getelementptr inbounds %struct.x264_frame_t, ptr %61, i64 0, i32 1, !dbg !4382
  %63 = load i32, ptr %62, align 4, !dbg !4382, !tbaa !4141
  %64 = add i32 %63, -1, !dbg !4382
  %65 = icmp ult i32 %64, 2, !dbg !4382
  call void @llvm.dbg.value(metadata i1 %65, metadata !4300, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4383
  %66 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 42, !dbg !4384
  %67 = load ptr, ptr %66, align 16, !dbg !4384, !tbaa !1681
  %68 = getelementptr inbounds %struct.x264_frame_t, ptr %67, i64 0, i32 1, !dbg !4384
  %69 = load i32, ptr %68, align 4, !dbg !4384, !tbaa !4141
  %70 = add i32 %69, -1, !dbg !4384
  %71 = icmp ult i32 %70, 2, !dbg !4384
  call void @llvm.dbg.value(metadata i1 %71, metadata !4303, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4383
  %72 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 37, !dbg !4385
  %73 = load ptr, ptr %72, align 8, !dbg !4385, !tbaa !1704
  %74 = load i32, ptr %73, align 8, !dbg !4386, !tbaa !4387
  %75 = load i32, ptr %61, align 8, !dbg !4388, !tbaa !4387
  %76 = sub nsw i32 %74, %75, !dbg !4389
  %77 = tail call i32 @llvm.abs.i32(i32 %76, i1 true), !dbg !4390
  call void @llvm.dbg.value(metadata i32 %77, metadata !4304, metadata !DIExpression()), !dbg !4383
  %78 = load i32, ptr %67, align 8, !dbg !4391, !tbaa !4387
  %79 = sub nsw i32 %74, %78, !dbg !4392
  %80 = tail call i32 @llvm.abs.i32(i32 %79, i1 true), !dbg !4393
  call void @llvm.dbg.value(metadata i32 %80, metadata !4305, metadata !DIExpression()), !dbg !4383
  %81 = getelementptr inbounds %struct.x264_frame_t, ptr %61, i64 0, i32 7, !dbg !4394
  %82 = load float, ptr %81, align 4, !dbg !4394, !tbaa !4242
  call void @llvm.dbg.value(metadata float %82, metadata !4306, metadata !DIExpression()), !dbg !4383
  %83 = getelementptr inbounds %struct.x264_frame_t, ptr %67, i64 0, i32 7, !dbg !4395
  %84 = load float, ptr %83, align 4, !dbg !4395, !tbaa !4242
  call void @llvm.dbg.value(metadata float %84, metadata !4307, metadata !DIExpression()), !dbg !4383
  %85 = icmp eq i32 %63, 4, !dbg !4396
  br i1 %85, label %86, label %93, !dbg !4398

86:                                               ; preds = %59
  %87 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 31, !dbg !4399
  %88 = load double, ptr %87, align 8, !dbg !4399, !tbaa !4400
  %89 = fmul fast double %88, 5.000000e-01, !dbg !4401
  %90 = fpext float %82 to double, !dbg !4402
  %91 = fsub fast double %90, %89, !dbg !4402
  %92 = fptrunc double %91 to float, !dbg !4402
  call void @llvm.dbg.value(metadata float %92, metadata !4306, metadata !DIExpression()), !dbg !4383
  br label %93, !dbg !4403

93:                                               ; preds = %86, %59
  %94 = phi float [ %92, %86 ], [ %82, %59 ], !dbg !4383
  call void @llvm.dbg.value(metadata float %94, metadata !4306, metadata !DIExpression()), !dbg !4383
  %95 = icmp eq i32 %69, 4, !dbg !4404
  br i1 %95, label %96, label %103, !dbg !4406

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 31, !dbg !4407
  %98 = load double, ptr %97, align 8, !dbg !4407, !tbaa !4400
  %99 = fmul fast double %98, 5.000000e-01, !dbg !4408
  %100 = fpext float %84 to double, !dbg !4409
  %101 = fsub fast double %100, %99, !dbg !4409
  %102 = fptrunc double %101 to float, !dbg !4409
  call void @llvm.dbg.value(metadata float %102, metadata !4307, metadata !DIExpression()), !dbg !4383
  br label %113, !dbg !4410

103:                                              ; preds = %93
  call void @llvm.dbg.value(metadata float %84, metadata !4307, metadata !DIExpression()), !dbg !4383
  %104 = select i1 %65, i1 %71, i1 false, !dbg !4410
  br i1 %104, label %105, label %113, !dbg !4410

105:                                              ; preds = %103
  %106 = fadd fast float %84, %94, !dbg !4412
  %107 = fmul fast float %106, 5.000000e-01, !dbg !4413
  %108 = fpext float %107 to double, !dbg !4414
  %109 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 30, !dbg !4415
  %110 = load double, ptr %109, align 8, !dbg !4415, !tbaa !4275
  %111 = fadd fast double %110, %108, !dbg !4416
  %112 = fptrunc double %111 to float, !dbg !4414
  call void @llvm.dbg.value(metadata float %112, metadata !4293, metadata !DIExpression()), !dbg !4344
  br label %126, !dbg !4417

113:                                              ; preds = %96, %103
  %114 = phi float [ %102, %96 ], [ %84, %103 ]
  %115 = select i1 %65, i1 true, i1 %71, !dbg !4418
  %116 = select i1 %65, float %114, float %94, !dbg !4418
  br i1 %115, label %126, label %117, !dbg !4418

117:                                              ; preds = %113
  %118 = sitofp i32 %80 to float, !dbg !4419
  %119 = fmul fast float %94, %118, !dbg !4422
  %120 = sitofp i32 %77 to float, !dbg !4423
  %121 = fmul fast float %114, %120, !dbg !4424
  %122 = fadd fast float %121, %119, !dbg !4425
  %123 = add nuw nsw i32 %80, %77, !dbg !4426
  %124 = sitofp i32 %123 to float, !dbg !4427
  %125 = fdiv fast float %122, %124, !dbg !4428
  call void @llvm.dbg.value(metadata float %125, metadata !4293, metadata !DIExpression()), !dbg !4344
  br label %126

126:                                              ; preds = %113, %117, %105
  %127 = phi float [ %112, %105 ], [ %125, %117 ], [ %116, %113 ], !dbg !4429
  call void @llvm.dbg.value(metadata float %127, metadata !4293, metadata !DIExpression()), !dbg !4344
  %128 = getelementptr inbounds %struct.x264_frame_t, ptr %73, i64 0, i32 6, !dbg !4430
  %129 = load i32, ptr %128, align 8, !dbg !4430, !tbaa !4190
  %130 = icmp eq i32 %129, 0, !dbg !4432
  %131 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 31, !dbg !4433
  %132 = load double, ptr %131, align 8, !dbg !4433, !tbaa !4400
  %133 = fmul fast double %132, 5.000000e-01, !dbg !4434
  %134 = select i1 %130, double %132, double %133, !dbg !4434
  %135 = fpext float %127 to double, !dbg !4433
  %136 = fadd fast double %134, %135, !dbg !4433
  %137 = fptrunc double %136 to float, !dbg !4433
  call void @llvm.dbg.value(metadata float %137, metadata !4293, metadata !DIExpression()), !dbg !4344
  %138 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 49, !dbg !4435
  %139 = load ptr, ptr %138, align 8, !dbg !4435, !tbaa !2108
  %140 = fpext float %137 to double, !dbg !4436
  %141 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, !dbg !4437
  %142 = load i32, ptr %141, align 8, !dbg !4437, !tbaa !4438
  %143 = add nsw i32 %142, -1, !dbg !4439
  %144 = sext i32 %143 to i64, !dbg !4440
  %145 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 42, i64 %144, !dbg !4440
  %146 = load ptr, ptr %145, align 8, !dbg !4440, !tbaa !1681
  %147 = getelementptr inbounds %struct.x264_frame_t, ptr %146, i64 0, i32 32, !dbg !4441
  %148 = load i32, ptr %147, align 8, !dbg !4441, !tbaa !4442
  %149 = sitofp i32 %148 to double, !dbg !4440
  call void @llvm.dbg.value(metadata ptr undef, metadata !4443, metadata !DIExpression()), !dbg !4450
  call void @llvm.dbg.value(metadata double %140, metadata !4448, metadata !DIExpression()), !dbg !4450
  call void @llvm.dbg.value(metadata double %149, metadata !4449, metadata !DIExpression()), !dbg !4450
  %150 = load <2 x double>, ptr %139, align 8, !dbg !4452, !tbaa !2065
  %151 = insertelement <2 x double> poison, double %149, i64 0, !dbg !4453
  %152 = insertelement <2 x double> %151, double %140, i64 1, !dbg !4453
  %153 = fmul fast <2 x double> %150, %152, !dbg !4454
  %154 = extractelement <2 x double> %153, i64 0, !dbg !4455
  %155 = extractelement <2 x double> %153, i64 1, !dbg !4455
  %156 = fdiv fast double %154, %155, !dbg !4455
  %157 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 46, !dbg !4456
  store double %156, ptr %157, align 8, !dbg !4457, !tbaa !4090
  %158 = fptosi double %156 to i32, !dbg !4458
  call void @llvm.dbg.value(metadata ptr %0, metadata !3905, metadata !DIExpression()), !dbg !4459
  call void @llvm.dbg.value(metadata i32 %158, metadata !3906, metadata !DIExpression()), !dbg !4459
  %159 = getelementptr inbounds %struct.x264_frame_t, ptr %73, i64 0, i32 44, !dbg !4461
  %160 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %159) #20, !dbg !4462
  %161 = sitofp i32 %158 to double, !dbg !4463
  %162 = load ptr, ptr %2, align 16, !dbg !4464, !tbaa !1699
  %163 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %162, i64 0, i32 45, !dbg !4465
  store double %161, ptr %163, align 8, !dbg !4466, !tbaa !3915
  %164 = load ptr, ptr %72, align 8, !dbg !4467, !tbaa !1704
  %165 = getelementptr inbounds %struct.x264_frame_t, ptr %164, i64 0, i32 44, !dbg !4468
  %166 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %165) #20, !dbg !4469
  %167 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 21, !dbg !4470
  store i32 0, ptr %167, align 8, !dbg !4471, !tbaa !4472
  call void @llvm.dbg.value(metadata double %140, metadata !2044, metadata !DIExpression()), !dbg !4473
  %168 = fmul fast double %140, 0x3FC5555555555555, !dbg !4475
  %169 = fadd fast double %168, -2.000000e+00, !dbg !4475
  %170 = tail call fast double @llvm.exp2.f64(double %169), !dbg !4476
  %171 = fmul fast double %170, 8.500000e-01, !dbg !4477
  %172 = fptrunc double %171 to float, !dbg !4478
  br label %723

173:                                              ; preds = %50
  %174 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 6, !dbg !4479
  %175 = load double, ptr %174, align 8, !dbg !4479, !tbaa !1842
  %176 = fmul fast double %175, 2.000000e+00, !dbg !4480
  %177 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 5, !dbg !4481
  %178 = load double, ptr %177, align 8, !dbg !4481, !tbaa !1836
  %179 = fmul fast double %176, %178, !dbg !4482
  call void @llvm.dbg.value(metadata double %179, metadata !4308, metadata !DIExpression()), !dbg !4483
  %180 = load i32, ptr %20, align 4, !dbg !4484, !tbaa !1814
  %181 = icmp eq i32 %180, 0, !dbg !4485
  br i1 %181, label %390, label %182, !dbg !4486

182:                                              ; preds = %173
  call void @llvm.dbg.value(metadata i64 %19, metadata !4313, metadata !DIExpression()), !dbg !4487
  %183 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 2, !dbg !4488
  %184 = load i32, ptr %183, align 8, !dbg !4488, !tbaa !1959
  %185 = icmp eq i32 %184, 0, !dbg !4489
  br i1 %185, label %253, label %186, !dbg !4490

186:                                              ; preds = %182
  %187 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 1, !dbg !4491
  %188 = load i32, ptr %187, align 4, !dbg !4491, !tbaa !1791
  %189 = icmp sgt i32 %188, 1, !dbg !4492
  br i1 %189, label %190, label %271, !dbg !4493

190:                                              ; preds = %186
  %191 = load ptr, ptr %2, align 16, !dbg !4494, !tbaa !1699
  %192 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1, !dbg !4495
  %193 = load ptr, ptr %192, align 8, !dbg !4496, !tbaa !1681
  %194 = getelementptr inbounds %struct.x264_t, ptr %193, i64 0, i32 46, !dbg !4497
  %195 = load ptr, ptr %194, align 16, !dbg !4497, !tbaa !1699
  %196 = ptrtoint ptr %191 to i64, !dbg !4498
  %197 = ptrtoint ptr %195 to i64, !dbg !4498
  %198 = sub i64 %196, %197, !dbg !4498
  %199 = sdiv exact i64 %198, 608, !dbg !4498
  %200 = trunc i64 %199 to i32, !dbg !4499
  call void @llvm.dbg.value(metadata i32 %200, metadata !4314, metadata !DIExpression()), !dbg !4500
  call void @llvm.dbg.value(metadata i32 1, metadata !4319, metadata !DIExpression()), !dbg !4500
  call void @llvm.dbg.value(metadata i64 %19, metadata !4313, metadata !DIExpression()), !dbg !4487
  br label %201, !dbg !4501

201:                                              ; preds = %190, %248
  %202 = phi i32 [ %249, %248 ], [ %188, %190 ]
  %203 = phi i64 [ %250, %248 ], [ %19, %190 ]
  %204 = phi i32 [ %251, %248 ], [ 1, %190 ]
  call void @llvm.dbg.value(metadata i64 %203, metadata !4313, metadata !DIExpression()), !dbg !4487
  call void @llvm.dbg.value(metadata i32 %204, metadata !4319, metadata !DIExpression()), !dbg !4500
  %205 = add nsw i32 %204, %200, !dbg !4502
  %206 = srem i32 %205, %202, !dbg !4503
  %207 = sext i32 %206 to i64, !dbg !4504
  %208 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1, i64 %207, !dbg !4504
  %209 = load ptr, ptr %208, align 8, !dbg !4504, !tbaa !1681
  call void @llvm.dbg.value(metadata ptr %209, metadata !4320, metadata !DIExpression()), !dbg !4505
  %210 = getelementptr inbounds %struct.x264_t, ptr %209, i64 0, i32 46, !dbg !4506
  call void @llvm.dbg.value(metadata double poison, metadata !4324, metadata !DIExpression()), !dbg !4505
  %211 = getelementptr inbounds %struct.x264_t, ptr %209, i64 0, i32 3, !dbg !4507
  %212 = load i32, ptr %211, align 16, !dbg !4507, !tbaa !4086
  %213 = icmp eq i32 %212, 0, !dbg !4509
  br i1 %213, label %248, label %214, !dbg !4510

214:                                              ; preds = %201
  %215 = load ptr, ptr %210, align 16, !dbg !4506, !tbaa !1699
  %216 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %215, i64 0, i32 46, !dbg !4511
  %217 = load double, ptr %216, align 8, !dbg !4511, !tbaa !4090
  call void @llvm.dbg.value(metadata double %217, metadata !4324, metadata !DIExpression()), !dbg !4505
  call void @llvm.dbg.value(metadata ptr %209, metadata !3932, metadata !DIExpression()), !dbg !4512
  %218 = getelementptr inbounds %struct.x264_t, ptr %209, i64 0, i32 37, !dbg !4514
  %219 = load ptr, ptr %218, align 8, !dbg !4514, !tbaa !1704
  %220 = getelementptr inbounds %struct.x264_frame_t, ptr %219, i64 0, i32 44, !dbg !4515
  %221 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %220) #20, !dbg !4516
  %222 = load ptr, ptr %210, align 16, !dbg !4517, !tbaa !1699
  %223 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %222, i64 0, i32 45, !dbg !4518
  %224 = load double, ptr %223, align 8, !dbg !4518, !tbaa !3915
  %225 = fptosi double %224 to i32, !dbg !4519
  call void @llvm.dbg.value(metadata i32 %225, metadata !3933, metadata !DIExpression()), !dbg !4512
  %226 = load ptr, ptr %218, align 8, !dbg !4520, !tbaa !1704
  %227 = getelementptr inbounds %struct.x264_frame_t, ptr %226, i64 0, i32 44, !dbg !4521
  %228 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %227) #20, !dbg !4522
  %229 = sitofp i32 %225 to double, !dbg !4523
  %230 = fcmp fast ogt double %217, %229, !dbg !4523
  br i1 %230, label %243, label %231, !dbg !4523

231:                                              ; preds = %214
  call void @llvm.dbg.value(metadata ptr %209, metadata !3932, metadata !DIExpression()), !dbg !4524
  %232 = load ptr, ptr %218, align 8, !dbg !4526, !tbaa !1704
  %233 = getelementptr inbounds %struct.x264_frame_t, ptr %232, i64 0, i32 44, !dbg !4527
  %234 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %233) #20, !dbg !4528
  %235 = load ptr, ptr %210, align 16, !dbg !4529, !tbaa !1699
  %236 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %235, i64 0, i32 45, !dbg !4530
  %237 = load double, ptr %236, align 8, !dbg !4530, !tbaa !3915
  %238 = fptosi double %237 to i32, !dbg !4531
  call void @llvm.dbg.value(metadata i32 %238, metadata !3933, metadata !DIExpression()), !dbg !4524
  %239 = load ptr, ptr %218, align 8, !dbg !4532, !tbaa !1704
  %240 = getelementptr inbounds %struct.x264_frame_t, ptr %239, i64 0, i32 44, !dbg !4533
  %241 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %240) #20, !dbg !4534
  %242 = sitofp i32 %238 to double, !dbg !4523
  br label %243, !dbg !4523

243:                                              ; preds = %214, %231
  %244 = phi fast double [ %242, %231 ], [ %217, %214 ], !dbg !4523
  call void @llvm.dbg.value(metadata double %244, metadata !4324, metadata !DIExpression()), !dbg !4505
  %245 = fptosi double %244 to i64, !dbg !4535
  %246 = add nsw i64 %203, %245, !dbg !4536
  call void @llvm.dbg.value(metadata i64 %246, metadata !4313, metadata !DIExpression()), !dbg !4487
  %247 = load i32, ptr %187, align 4, !dbg !4537, !tbaa !1791
  br label %248, !dbg !4538

248:                                              ; preds = %201, %243
  %249 = phi i32 [ %247, %243 ], [ %202, %201 ], !dbg !4537
  %250 = phi i64 [ %246, %243 ], [ %203, %201 ], !dbg !4487
  call void @llvm.dbg.value(metadata i64 %250, metadata !4313, metadata !DIExpression()), !dbg !4487
  %251 = add nuw nsw i32 %204, 1, !dbg !4539
  call void @llvm.dbg.value(metadata i32 %251, metadata !4319, metadata !DIExpression()), !dbg !4500
  %252 = icmp slt i32 %251, %249, !dbg !4540
  br i1 %252, label %201, label %271, !dbg !4501, !llvm.loop !4541

253:                                              ; preds = %182
  %254 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 37, !dbg !4543
  %255 = load ptr, ptr %254, align 8, !dbg !4543, !tbaa !1704
  %256 = getelementptr inbounds %struct.x264_frame_t, ptr %255, i64 0, i32 4, !dbg !4546
  %257 = load i32, ptr %256, align 8, !dbg !4546, !tbaa !3960
  %258 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 1, !dbg !4547
  %259 = load i32, ptr %258, align 4, !dbg !4547, !tbaa !1791
  %260 = icmp slt i32 %257, %259, !dbg !4548
  %261 = add nsw i32 %259, -1, !dbg !4549
  %262 = select i1 %260, i32 %257, i32 %261, !dbg !4549
  %263 = sitofp i32 %262 to double, !dbg !4550
  %264 = fmul fast double %178, %263, !dbg !4550
  %265 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 4, !dbg !4550
  %266 = load double, ptr %265, align 8, !dbg !4550, !tbaa !1829
  %267 = fdiv fast double %264, %266, !dbg !4550
  %268 = sitofp i64 %19 to double, !dbg !4550
  %269 = fadd fast double %267, %268, !dbg !4550
  %270 = fptosi double %269 to i64, !dbg !4550
  br label %271, !dbg !4551

271:                                              ; preds = %248, %253, %186
  %272 = phi i32 [ %188, %186 ], [ %259, %253 ], [ %249, %248 ], !dbg !4552
  %273 = phi i64 [ %19, %186 ], [ %270, %253 ], [ %250, %248 ], !dbg !4487
  call void @llvm.dbg.value(metadata i64 %273, metadata !4313, metadata !DIExpression()), !dbg !4487
  %274 = sub nsw i64 %273, %53, !dbg !4551
  call void @llvm.dbg.value(metadata i64 %274, metadata !4310, metadata !DIExpression()), !dbg !4487
  call void @llvm.dbg.value(metadata float %51, metadata !4293, metadata !DIExpression()), !dbg !4344
  %275 = sitofp i64 %274 to double, !dbg !4553
  %276 = fsub fast double %179, %275, !dbg !4554
  %277 = fdiv fast double %276, %179, !dbg !4555
  call void @llvm.dbg.value(metadata double %277, metadata !1920, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata double 5.000000e-01, metadata !1925, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata double 2.000000e+00, metadata !1926, metadata !DIExpression()), !dbg !4556
  %278 = fcmp fast ogt double %277, 2.000000e+00, !dbg !4558
  %279 = select fast i1 %278, double 2.000000e+00, double %277, !dbg !4558
  %280 = tail call fast double @llvm.maxnum.f64(double %279, double 5.000000e-01), !dbg !4558
  %281 = fpext float %51 to double, !dbg !4559
  %282 = fdiv fast double %281, %280, !dbg !4559
  %283 = fptrunc double %282 to float, !dbg !4559
  call void @llvm.dbg.value(metadata float %283, metadata !4293, metadata !DIExpression()), !dbg !4344
  %284 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 37, !dbg !4560
  %285 = load ptr, ptr %284, align 8, !dbg !4560, !tbaa !1704
  %286 = getelementptr inbounds %struct.x264_frame_t, ptr %285, i64 0, i32 4, !dbg !4561
  %287 = load i32, ptr %286, align 8, !dbg !4561, !tbaa !3960
  %288 = add nsw i32 %287, 1, !dbg !4562
  %289 = sub i32 %288, %272, !dbg !4563
  %290 = sitofp i32 %289 to double, !dbg !4564
  %291 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 4, !dbg !4565
  %292 = load double, ptr %291, align 8, !dbg !4565, !tbaa !1829
  %293 = fcmp fast ugt double %292, %290, !dbg !4566
  br i1 %293, label %314, label %294, !dbg !4567

294:                                              ; preds = %271
  %295 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 24, !dbg !4568
  %296 = load double, ptr %295, align 8, !dbg !4568, !tbaa !4569
  %297 = fcmp fast ogt double %296, 0.000000e+00, !dbg !4570
  br i1 %297, label %298, label %314, !dbg !4571

298:                                              ; preds = %294
  %299 = sitofp i32 %287 to double, !dbg !4572
  %300 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 34, !dbg !4573
  %301 = load i32, ptr %300, align 8, !dbg !4573, !tbaa !2474
  %302 = sitofp i32 %301 to double, !dbg !4574
  call void @llvm.dbg.value(metadata double poison, metadata !4325, metadata !DIExpression()), !dbg !4575
  %303 = fmul fast double %299, 1.000000e+02, !dbg !4576
  %304 = fdiv fast double %303, %302, !dbg !4576
  call void @llvm.dbg.value(metadata double %304, metadata !1920, metadata !DIExpression()), !dbg !4577
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1925, metadata !DIExpression()), !dbg !4577
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1926, metadata !DIExpression()), !dbg !4577
  %305 = fcmp fast ogt double %304, 1.000000e+00, !dbg !4579
  %306 = select fast i1 %305, double 1.000000e+00, double %304, !dbg !4579
  %307 = tail call fast double @llvm.maxnum.f64(double %306, double 0.000000e+00), !dbg !4579
  call void @llvm.dbg.value(metadata double %307, metadata !4328, metadata !DIExpression()), !dbg !4575
  %308 = sitofp i64 %19 to double, !dbg !4580
  %309 = fdiv fast double %308, %296, !dbg !4581
  %310 = tail call fast double @llvm.pow.f64(double %309, double %307), !dbg !4582
  %311 = fpext float %283 to double, !dbg !4583
  %312 = fmul fast double %310, %311, !dbg !4583
  %313 = fptrunc double %312 to float, !dbg !4583
  call void @llvm.dbg.value(metadata float %313, metadata !4293, metadata !DIExpression()), !dbg !4344
  br label %314, !dbg !4584

314:                                              ; preds = %298, %294, %271
  %315 = phi float [ %313, %298 ], [ %283, %294 ], [ %283, %271 ], !dbg !4487
  call void @llvm.dbg.value(metadata float %315, metadata !4293, metadata !DIExpression()), !dbg !4344
  %316 = load i32, ptr %183, align 8, !dbg !4585, !tbaa !1959
  %317 = icmp eq i32 %316, 0, !dbg !4586
  %318 = fpext float %315 to double, !dbg !4487
  br i1 %317, label %385, label %319, !dbg !4587

319:                                              ; preds = %314
  call void @llvm.dbg.value(metadata ptr undef, metadata !2814, metadata !DIExpression()), !dbg !4588
  call void @llvm.dbg.value(metadata double %318, metadata !2819, metadata !DIExpression()), !dbg !4588
  %320 = fcmp fast olt double %318, 1.000000e-01, !dbg !4590
  %321 = select i1 %320, double 1.000000e-01, double %318, !dbg !4591
  call void @llvm.dbg.value(metadata double %321, metadata !2819, metadata !DIExpression()), !dbg !4588
  %322 = fpext float %57 to double, !dbg !4592
  %323 = fcmp fast ole float %57, 1.000000e+00, !dbg !4592
  %324 = select fast i1 %323, float 1.000000e+00, float %57, !dbg !4592
  %325 = fpext float %324 to double, !dbg !4592
  %326 = sitofp i32 %56 to double, !dbg !4593
  %327 = sitofp i32 %55 to double, !dbg !4594
  %328 = fadd fast double %327, 1.000000e-01, !dbg !4595
  %329 = fdiv fast double %322, %321, !dbg !4596
  %330 = tail call fast double @llvm.pow.f64(double %329, double 1.100000e+00), !dbg !4597
  %331 = fmul fast double %330, %328, !dbg !4598
  %332 = tail call fast double @llvm.maxnum.f64(double %321, double 1.000000e+00), !dbg !4599
  %333 = fdiv fast double %325, %332, !dbg !4600
  %334 = tail call fast double @llvm.sqrt.f64(double %333), !dbg !4601
  %335 = fmul fast double %334, %326, !dbg !4602
  %336 = sitofp i32 %54 to double, !dbg !4603
  %337 = fadd fast double %331, %336, !dbg !4604
  %338 = fadd fast double %337, %335, !dbg !4605
  call void @llvm.dbg.value(metadata double %338, metadata !4329, metadata !DIExpression()), !dbg !4606
  %339 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 18, !dbg !4607
  %340 = load double, ptr %339, align 8, !dbg !4607, !tbaa !4071
  %341 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 19, !dbg !4608
  %342 = load double, ptr %341, align 8, !dbg !4608, !tbaa !1941
  %343 = fadd fast double %342, %340, !dbg !4609
  call void @llvm.dbg.value(metadata double poison, metadata !4332, metadata !DIExpression()), !dbg !4606
  %344 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 16, !dbg !4610
  %345 = load double, ptr %344, align 8, !dbg !4610, !tbaa !1946
  %346 = fdiv fast double %52, %345, !dbg !4611
  call void @llvm.dbg.value(metadata double %346, metadata !4333, metadata !DIExpression()), !dbg !4606
  %347 = fsub fast double 2.000000e+00, %346, !dbg !4612
  %348 = fmul fast double %347, %318, !dbg !4613
  call void @llvm.dbg.value(metadata double %348, metadata !4334, metadata !DIExpression()), !dbg !4606
  %349 = fadd fast double %346, 1.000000e+00, !dbg !4614
  call void @llvm.dbg.value(metadata double %349, metadata !4335, metadata !DIExpression()), !dbg !4606
  %350 = tail call fast double @llvm.maxnum.f64(double %348, double %281), !dbg !4615
  call void @llvm.dbg.value(metadata double %350, metadata !4334, metadata !DIExpression()), !dbg !4606
  %351 = fcmp fast olt double %346, 5.000000e-02, !dbg !4616
  %352 = select i1 %351, double %10, double %350, !dbg !4618
  call void @llvm.dbg.value(metadata double %352, metadata !4334, metadata !DIExpression()), !dbg !4606
  %353 = tail call fast double @llvm.minnum.f64(double %352, double %10), !dbg !4619
  call void @llvm.dbg.value(metadata double %353, metadata !4334, metadata !DIExpression()), !dbg !4606
  %354 = fdiv fast double %52, %349
  br label %355, !dbg !4620

355:                                              ; preds = %367, %319
  %356 = phi double [ %338, %319 ], [ %381, %367 ]
  %357 = phi float [ %315, %319 ], [ %369, %367 ], !dbg !4487
  %358 = fsub fast double %343, %356, !dbg !4606
  call void @llvm.dbg.value(metadata float %357, metadata !4293, metadata !DIExpression()), !dbg !4344
  call void @llvm.dbg.value(metadata double %358, metadata !4332, metadata !DIExpression()), !dbg !4606
  %359 = fcmp fast olt double %358, %354, !dbg !4621
  %360 = fpext float %357 to double
  %361 = fcmp fast ogt double %353, %360
  %362 = select i1 %359, i1 %361, i1 false, !dbg !4622
  br i1 %362, label %367, label %363, !dbg !4622

363:                                              ; preds = %355
  %364 = fcmp fast olt double %358, 0.000000e+00, !dbg !4623
  %365 = fcmp fast ogt double %10, %360, !dbg !4624
  %366 = select i1 %364, i1 %365, i1 false, !dbg !4624
  br i1 %366, label %367, label %382, !dbg !4620

367:                                              ; preds = %355, %363
  %368 = fmul fast double %360, 1.050000e+00, !dbg !4625
  %369 = fptrunc double %368 to float, !dbg !4625
  call void @llvm.dbg.value(metadata float %369, metadata !4293, metadata !DIExpression()), !dbg !4344
  %370 = fpext float %369 to double, !dbg !4627
  call void @llvm.dbg.value(metadata ptr undef, metadata !2814, metadata !DIExpression()), !dbg !4628
  call void @llvm.dbg.value(metadata double %370, metadata !2819, metadata !DIExpression()), !dbg !4628
  %371 = fcmp fast olt double %370, 1.000000e-01, !dbg !4630
  %372 = select i1 %371, double 1.000000e-01, double %370, !dbg !4631
  call void @llvm.dbg.value(metadata double %372, metadata !2819, metadata !DIExpression()), !dbg !4628
  %373 = fdiv fast double %322, %372, !dbg !4632
  %374 = tail call fast double @llvm.pow.f64(double %373, double 1.100000e+00), !dbg !4633
  %375 = fmul fast double %374, %328, !dbg !4634
  %376 = tail call fast double @llvm.maxnum.f64(double %372, double 1.000000e+00), !dbg !4635
  %377 = fdiv fast double %325, %376, !dbg !4636
  %378 = tail call fast double @llvm.sqrt.f64(double %377), !dbg !4637
  %379 = fmul fast double %378, %326, !dbg !4638
  %380 = fadd fast double %375, %336, !dbg !4639
  %381 = fadd fast double %380, %379, !dbg !4640
  call void @llvm.dbg.value(metadata double %381, metadata !4329, metadata !DIExpression()), !dbg !4606
  call void @llvm.dbg.value(metadata double poison, metadata !4332, metadata !DIExpression()), !dbg !4606
  br label %355, !dbg !4620, !llvm.loop !4641

382:                                              ; preds = %363
  %383 = tail call i32 @x264_rc_analyse_slice(ptr noundef %0) #20, !dbg !4643
  %384 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 21, !dbg !4644
  store i32 %383, ptr %384, align 8, !dbg !4645, !tbaa !4472
  br label %385, !dbg !4646

385:                                              ; preds = %314, %382
  %386 = phi double [ %360, %382 ], [ %318, %314 ], !dbg !4647
  call void @llvm.dbg.value(metadata float poison, metadata !4293, metadata !DIExpression()), !dbg !4344
  call void @llvm.dbg.value(metadata double %386, metadata !1920, metadata !DIExpression()), !dbg !4648
  call void @llvm.dbg.value(metadata double %8, metadata !1925, metadata !DIExpression()), !dbg !4648
  call void @llvm.dbg.value(metadata double %10, metadata !1926, metadata !DIExpression()), !dbg !4648
  %387 = fcmp fast ogt double %8, %386, !dbg !4650
  %388 = tail call fast double @llvm.minnum.f64(double %10, double %386), !dbg !4651
  %389 = select fast i1 %387, double %8, double %388, !dbg !4651
  br label %645, !dbg !4652

390:                                              ; preds = %173
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !4338, metadata !DIExpression()), !dbg !4653
  %391 = tail call i32 @x264_rc_analyse_slice(ptr noundef nonnull %0) #20, !dbg !4654
  %392 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 21, !dbg !4655
  store i32 %391, ptr %392, align 8, !dbg !4656, !tbaa !4472
  %393 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 27, !dbg !4657
  %394 = sitofp i32 %391 to double, !dbg !4658
  %395 = load <2 x double>, ptr %393, align 8, !dbg !4659, !tbaa !2065
  %396 = fmul fast <2 x double> %395, <double 5.000000e-01, double 5.000000e-01>, !dbg !4659
  %397 = insertelement <2 x double> <double poison, double 1.000000e+00>, double %394, i64 0, !dbg !4660
  %398 = fadd fast <2 x double> %396, %397, !dbg !4661
  store <2 x double> %398, ptr %393, align 8, !dbg !4661, !tbaa !2065
  call void @llvm.dbg.value(metadata i32 %391, metadata !4295, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)), !dbg !4344
  %399 = extractelement <2 x double> %398, i64 0, !dbg !4662
  %400 = extractelement <2 x double> %398, i64 1, !dbg !4662
  %401 = fdiv fast double %399, %400, !dbg !4662
  %402 = fptrunc double %401 to float, !dbg !4663
  call void @llvm.dbg.value(metadata float %402, metadata !4295, metadata !DIExpression(DW_OP_LLVM_fragment, 480, 32)), !dbg !4344
  call void @llvm.dbg.value(metadata i32 0, metadata !4295, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !4344
  call void @llvm.dbg.value(metadata i32 poison, metadata !4295, metadata !DIExpression(DW_OP_LLVM_fragment, 416, 32)), !dbg !4344
  call void @llvm.dbg.value(metadata i32 0, metadata !4295, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !4344
  call void @llvm.dbg.value(metadata i32 0, metadata !4295, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 32)), !dbg !4344
  call void @llvm.dbg.value(metadata float 1.000000e+00, metadata !4295, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !4344
  call void @llvm.dbg.value(metadata i32 %5, metadata !4295, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4344
  %403 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, !dbg !4664
  %404 = load i32, ptr %403, align 8, !dbg !4665, !tbaa !1802
  %405 = icmp eq i32 %404, 1, !dbg !4666
  br i1 %405, label %406, label %473, !dbg !4667

406:                                              ; preds = %390
  %407 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 29, !dbg !4668
  %408 = load double, ptr %407, align 8, !dbg !4668, !tbaa !2057
  %409 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 37, !dbg !4670
  %410 = load ptr, ptr %409, align 8, !dbg !4670, !tbaa !1704
  %411 = getelementptr inbounds %struct.x264_frame_t, ptr %410, i64 0, i32 4, !dbg !4671
  %412 = load i32, ptr %411, align 8, !dbg !4671, !tbaa !3960
  call void @llvm.dbg.value(metadata ptr %0, metadata !2897, metadata !DIExpression()), !dbg !4672
  call void @llvm.dbg.value(metadata ptr undef, metadata !2902, metadata !DIExpression()), !dbg !4672
  call void @llvm.dbg.value(metadata double %408, metadata !2903, metadata !DIExpression()), !dbg !4672
  call void @llvm.dbg.value(metadata i32 %412, metadata !2904, metadata !DIExpression()), !dbg !4672
  %413 = load ptr, ptr %2, align 16, !dbg !4674, !tbaa !1699
  call void @llvm.dbg.value(metadata ptr %413, metadata !2905, metadata !DIExpression()), !dbg !4672
  call void @llvm.dbg.value(metadata ptr undef, metadata !2910, metadata !DIExpression()), !dbg !4675
  call void @llvm.dbg.value(metadata i32 %412, metadata !2915, metadata !DIExpression()), !dbg !4675
  %414 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %413, i64 0, i32 52, !dbg !4677
  %415 = load i32, ptr %414, align 8, !dbg !4677, !tbaa !2309
  call void @llvm.dbg.value(metadata i32 %415, metadata !2916, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4675
  %416 = icmp sgt i32 %415, 0, !dbg !4678
  br i1 %416, label %417, label %434, !dbg !4679

417:                                              ; preds = %406
  call void @llvm.dbg.value(metadata i32 %415, metadata !2916, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4675
  %418 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %413, i64 0, i32 53
  %419 = load ptr, ptr %418, align 8, !tbaa !2314
  %420 = zext i32 %415 to i64, !dbg !4679
  br label %421, !dbg !4679

421:                                              ; preds = %432, %417
  %422 = phi i64 [ %420, %417 ], [ %423, %432 ]
  %423 = add nsw i64 %422, -1, !dbg !4680
  %424 = and i64 %423, 4294967295
  %425 = getelementptr inbounds %struct.x264_zone_t, ptr %419, i64 %424, !dbg !4681
  call void @llvm.dbg.value(metadata ptr %425, metadata !2917, metadata !DIExpression()), !dbg !4682
  %426 = load i32, ptr %425, align 8, !dbg !4683, !tbaa !2324
  %427 = icmp sgt i32 %426, %412, !dbg !4684
  br i1 %427, label %432, label %428, !dbg !4685

428:                                              ; preds = %421
  %429 = getelementptr inbounds %struct.x264_zone_t, ptr %419, i64 %424, i32 1, !dbg !4686
  %430 = load i32, ptr %429, align 4, !dbg !4686, !tbaa !2327
  %431 = icmp slt i32 %430, %412, !dbg !4687
  br i1 %431, label %432, label %434, !dbg !4688

432:                                              ; preds = %428, %421
  call void @llvm.dbg.value(metadata i64 %423, metadata !2916, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4675
  %433 = icmp ugt i64 %422, 1, !dbg !4678
  br i1 %433, label %421, label %434, !dbg !4679, !llvm.loop !4689

434:                                              ; preds = %432, %428, %406
  %435 = phi ptr [ null, %406 ], [ %425, %428 ], [ null, %432 ], !dbg !4675
  call void @llvm.dbg.value(metadata ptr %435, metadata !2907, metadata !DIExpression()), !dbg !4672
  call void @llvm.dbg.value(metadata double poison, metadata !2906, metadata !DIExpression()), !dbg !4672
  %436 = icmp eq i32 %391, 0, !dbg !4691
  br i1 %436, label %437, label %440, !dbg !4692

437:                                              ; preds = %434
  %438 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %413, i64 0, i32 36, !dbg !4693
  %439 = load double, ptr %438, align 8, !dbg !4693, !tbaa !2100
  call void @llvm.dbg.value(metadata double %439, metadata !2906, metadata !DIExpression()), !dbg !4672
  br label %450, !dbg !4694

440:                                              ; preds = %434
  %441 = fpext float %402 to double, !dbg !4695
  %442 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 19, !dbg !4696
  %443 = load float, ptr %442, align 8, !dbg !4696, !tbaa !2010
  %444 = fsub fast float 1.000000e+00, %443, !dbg !4697
  %445 = fpext float %444 to double, !dbg !4698
  %446 = tail call fast double @llvm.pow.f64(double %441, double %445), !dbg !4699
  call void @llvm.dbg.value(metadata double %446, metadata !2906, metadata !DIExpression()), !dbg !4672
  %447 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %413, i64 0, i32 22, !dbg !4700
  store double %446, ptr %447, align 8, !dbg !4701, !tbaa !2954
  %448 = fdiv fast double %446, %408, !dbg !4702
  call void @llvm.dbg.value(metadata double %448, metadata !2906, metadata !DIExpression()), !dbg !4672
  %449 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %413, i64 0, i32 36, !dbg !4703
  store double %448, ptr %449, align 8, !dbg !4704, !tbaa !2100
  br label %450

450:                                              ; preds = %440, %437
  %451 = phi double [ %439, %437 ], [ %448, %440 ], !dbg !4705
  call void @llvm.dbg.value(metadata double %451, metadata !2906, metadata !DIExpression()), !dbg !4672
  %452 = icmp eq ptr %435, null, !dbg !4706
  br i1 %452, label %470, label %453, !dbg !4707

453:                                              ; preds = %450
  %454 = getelementptr inbounds %struct.x264_zone_t, ptr %435, i64 0, i32 2, !dbg !4708
  %455 = load i32, ptr %454, align 8, !dbg !4708, !tbaa !2246
  %456 = icmp eq i32 %455, 0, !dbg !4709
  br i1 %456, label %465, label %457, !dbg !4710

457:                                              ; preds = %453
  %458 = getelementptr inbounds %struct.x264_zone_t, ptr %435, i64 0, i32 3, !dbg !4711
  %459 = load i32, ptr %458, align 4, !dbg !4711, !tbaa !2966
  %460 = sitofp i32 %459 to double, !dbg !4712
  call void @llvm.dbg.value(metadata double %460, metadata !2044, metadata !DIExpression()), !dbg !4713
  %461 = fmul fast double %460, 0x3FC5555555555555, !dbg !4715
  %462 = fadd fast double %461, -2.000000e+00, !dbg !4715
  %463 = tail call fast double @llvm.exp2.f64(double %462), !dbg !4716
  %464 = fmul fast double %463, 8.500000e-01, !dbg !4717
  call void @llvm.dbg.value(metadata double %464, metadata !2906, metadata !DIExpression()), !dbg !4672
  br label %470, !dbg !4718

465:                                              ; preds = %453
  %466 = getelementptr inbounds %struct.x264_zone_t, ptr %435, i64 0, i32 4, !dbg !4719
  %467 = load float, ptr %466, align 8, !dbg !4719, !tbaa !2227
  %468 = fpext float %467 to double, !dbg !4720
  %469 = fdiv fast double %451, %468, !dbg !4721
  call void @llvm.dbg.value(metadata double %469, metadata !2906, metadata !DIExpression()), !dbg !4672
  br label %470

470:                                              ; preds = %450, %457, %465
  %471 = phi double [ %464, %457 ], [ %469, %465 ], [ %451, %450 ], !dbg !4672
  call void @llvm.dbg.value(metadata double %471, metadata !2906, metadata !DIExpression()), !dbg !4672
  %472 = fptrunc double %471 to float, !dbg !4722
  call void @llvm.dbg.value(metadata float %472, metadata !4293, metadata !DIExpression()), !dbg !4344
  br label %571, !dbg !4723

473:                                              ; preds = %390
  %474 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 37, !dbg !4724
  %475 = load ptr, ptr %474, align 8, !dbg !4724, !tbaa !1704
  %476 = getelementptr inbounds %struct.x264_frame_t, ptr %475, i64 0, i32 4, !dbg !4725
  %477 = load i32, ptr %476, align 8, !dbg !4725, !tbaa !3960
  %478 = add nsw i32 %477, 1, !dbg !4726
  %479 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 1, !dbg !4727
  %480 = load i32, ptr %479, align 4, !dbg !4727, !tbaa !1791
  %481 = sub i32 %478, %480, !dbg !4728
  call void @llvm.dbg.value(metadata i32 %481, metadata !4341, metadata !DIExpression()), !dbg !4729
  %482 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 25, !dbg !4730
  %483 = load double, ptr %482, align 8, !dbg !4730, !tbaa !2026
  %484 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 23, !dbg !4731
  %485 = load double, ptr %484, align 8, !dbg !4731, !tbaa !2020
  call void @llvm.dbg.value(metadata ptr %0, metadata !2897, metadata !DIExpression()), !dbg !4732
  call void @llvm.dbg.value(metadata ptr undef, metadata !2902, metadata !DIExpression()), !dbg !4732
  call void @llvm.dbg.value(metadata double poison, metadata !2903, metadata !DIExpression()), !dbg !4732
  call void @llvm.dbg.value(metadata i32 %477, metadata !2904, metadata !DIExpression()), !dbg !4732
  %486 = load ptr, ptr %2, align 16, !dbg !4734, !tbaa !1699
  call void @llvm.dbg.value(metadata ptr %486, metadata !2905, metadata !DIExpression()), !dbg !4732
  call void @llvm.dbg.value(metadata ptr undef, metadata !2910, metadata !DIExpression()), !dbg !4735
  call void @llvm.dbg.value(metadata i32 %477, metadata !2915, metadata !DIExpression()), !dbg !4735
  %487 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %486, i64 0, i32 52, !dbg !4737
  %488 = load i32, ptr %487, align 8, !dbg !4737, !tbaa !2309
  call void @llvm.dbg.value(metadata i32 %488, metadata !2916, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4735
  %489 = icmp sgt i32 %488, 0, !dbg !4738
  br i1 %489, label %490, label %507, !dbg !4739

490:                                              ; preds = %473
  call void @llvm.dbg.value(metadata i32 %488, metadata !2916, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4735
  %491 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %486, i64 0, i32 53
  %492 = load ptr, ptr %491, align 8, !tbaa !2314
  %493 = zext i32 %488 to i64, !dbg !4739
  br label %494, !dbg !4739

494:                                              ; preds = %505, %490
  %495 = phi i64 [ %493, %490 ], [ %496, %505 ]
  %496 = add nsw i64 %495, -1, !dbg !4740
  %497 = and i64 %496, 4294967295
  %498 = getelementptr inbounds %struct.x264_zone_t, ptr %492, i64 %497, !dbg !4741
  call void @llvm.dbg.value(metadata ptr %498, metadata !2917, metadata !DIExpression()), !dbg !4742
  %499 = load i32, ptr %498, align 8, !dbg !4743, !tbaa !2324
  %500 = icmp sgt i32 %499, %477, !dbg !4744
  br i1 %500, label %505, label %501, !dbg !4745

501:                                              ; preds = %494
  %502 = getelementptr inbounds %struct.x264_zone_t, ptr %492, i64 %497, i32 1, !dbg !4746
  %503 = load i32, ptr %502, align 4, !dbg !4746, !tbaa !2327
  %504 = icmp slt i32 %503, %477, !dbg !4747
  br i1 %504, label %505, label %507, !dbg !4748

505:                                              ; preds = %501, %494
  call void @llvm.dbg.value(metadata i64 %496, metadata !2916, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4735
  %506 = icmp ugt i64 %495, 1, !dbg !4738
  br i1 %506, label %494, label %507, !dbg !4739, !llvm.loop !4749

507:                                              ; preds = %505, %501, %473
  %508 = phi ptr [ null, %473 ], [ %498, %501 ], [ null, %505 ], !dbg !4735
  call void @llvm.dbg.value(metadata ptr %508, metadata !2907, metadata !DIExpression()), !dbg !4732
  call void @llvm.dbg.value(metadata double poison, metadata !2906, metadata !DIExpression()), !dbg !4732
  %509 = icmp eq i32 %391, 0, !dbg !4751
  br i1 %509, label %510, label %513, !dbg !4752

510:                                              ; preds = %507
  %511 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %486, i64 0, i32 36, !dbg !4753
  %512 = load double, ptr %511, align 8, !dbg !4753, !tbaa !2100
  call void @llvm.dbg.value(metadata double %512, metadata !2906, metadata !DIExpression()), !dbg !4732
  br label %524, !dbg !4754

513:                                              ; preds = %507
  %514 = fpext float %402 to double, !dbg !4755
  %515 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 19, !dbg !4756
  %516 = load float, ptr %515, align 8, !dbg !4756, !tbaa !2010
  %517 = fsub fast float 1.000000e+00, %516, !dbg !4757
  %518 = fpext float %517 to double, !dbg !4758
  %519 = tail call fast double @llvm.pow.f64(double %514, double %518), !dbg !4759
  call void @llvm.dbg.value(metadata double %519, metadata !2906, metadata !DIExpression()), !dbg !4732
  %520 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %486, i64 0, i32 22, !dbg !4760
  store double %519, ptr %520, align 8, !dbg !4761, !tbaa !2954
  %521 = fmul fast double %519, %485, !dbg !4762
  %522 = fdiv fast double %521, %483, !dbg !4762
  call void @llvm.dbg.value(metadata double %522, metadata !2906, metadata !DIExpression()), !dbg !4732
  %523 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %486, i64 0, i32 36, !dbg !4763
  store double %522, ptr %523, align 8, !dbg !4764, !tbaa !2100
  br label %524

524:                                              ; preds = %513, %510
  %525 = phi double [ %512, %510 ], [ %522, %513 ], !dbg !4765
  call void @llvm.dbg.value(metadata double %525, metadata !2906, metadata !DIExpression()), !dbg !4732
  %526 = icmp eq ptr %508, null, !dbg !4766
  br i1 %526, label %544, label %527, !dbg !4767

527:                                              ; preds = %524
  %528 = getelementptr inbounds %struct.x264_zone_t, ptr %508, i64 0, i32 2, !dbg !4768
  %529 = load i32, ptr %528, align 8, !dbg !4768, !tbaa !2246
  %530 = icmp eq i32 %529, 0, !dbg !4769
  br i1 %530, label %539, label %531, !dbg !4770

531:                                              ; preds = %527
  %532 = getelementptr inbounds %struct.x264_zone_t, ptr %508, i64 0, i32 3, !dbg !4771
  %533 = load i32, ptr %532, align 4, !dbg !4771, !tbaa !2966
  %534 = sitofp i32 %533 to double, !dbg !4772
  call void @llvm.dbg.value(metadata double %534, metadata !2044, metadata !DIExpression()), !dbg !4773
  %535 = fmul fast double %534, 0x3FC5555555555555, !dbg !4775
  %536 = fadd fast double %535, -2.000000e+00, !dbg !4775
  %537 = tail call fast double @llvm.exp2.f64(double %536), !dbg !4776
  %538 = fmul fast double %537, 8.500000e-01, !dbg !4777
  call void @llvm.dbg.value(metadata double %538, metadata !2906, metadata !DIExpression()), !dbg !4732
  br label %544, !dbg !4778

539:                                              ; preds = %527
  %540 = getelementptr inbounds %struct.x264_zone_t, ptr %508, i64 0, i32 4, !dbg !4779
  %541 = load float, ptr %540, align 8, !dbg !4779, !tbaa !2227
  %542 = fpext float %541 to double, !dbg !4780
  %543 = fdiv fast double %525, %542, !dbg !4781
  call void @llvm.dbg.value(metadata double %543, metadata !2906, metadata !DIExpression()), !dbg !4732
  br label %544

544:                                              ; preds = %524, %531, %539
  %545 = phi double [ %538, %531 ], [ %543, %539 ], [ %525, %524 ], !dbg !4732
  call void @llvm.dbg.value(metadata double %545, metadata !2906, metadata !DIExpression()), !dbg !4732
  %546 = fptrunc double %545 to float, !dbg !4782
  call void @llvm.dbg.value(metadata float %546, metadata !4293, metadata !DIExpression()), !dbg !4344
  %547 = sitofp i32 %481 to double, !dbg !4783
  %548 = load double, ptr %177, align 8, !dbg !4784, !tbaa !1836
  %549 = fmul fast double %548, %547, !dbg !4785
  %550 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 4, !dbg !4786
  %551 = load double, ptr %550, align 8, !dbg !4786, !tbaa !1829
  %552 = fdiv fast double %549, %551, !dbg !4787
  call void @llvm.dbg.value(metadata double %552, metadata !4336, metadata !DIExpression()), !dbg !4653
  %553 = fcmp fast ogt double %552, 0.000000e+00, !dbg !4788
  br i1 %553, label %554, label %571, !dbg !4790

554:                                              ; preds = %544
  %555 = sdiv i32 %481, 25, !dbg !4791
  %556 = sitofp i32 %555 to double, !dbg !4791
  %557 = tail call fast double @llvm.sqrt.f64(double %556), !dbg !4791
  %558 = fcmp fast olt double %557, 1.000000e+00, !dbg !4791
  %559 = select fast i1 %558, double 1.000000e+00, double %557, !dbg !4791
  %560 = fmul fast double %559, %179, !dbg !4793
  call void @llvm.dbg.value(metadata double %560, metadata !4308, metadata !DIExpression()), !dbg !4483
  %561 = sitofp i64 %19 to double, !dbg !4794
  %562 = fsub fast double %561, %552, !dbg !4795
  %563 = fdiv fast double %562, %560, !dbg !4796
  %564 = fadd fast double %563, 1.000000e+00, !dbg !4797
  call void @llvm.dbg.value(metadata double %564, metadata !1920, metadata !DIExpression()), !dbg !4798
  call void @llvm.dbg.value(metadata double 5.000000e-01, metadata !1925, metadata !DIExpression()), !dbg !4798
  call void @llvm.dbg.value(metadata double 2.000000e+00, metadata !1926, metadata !DIExpression()), !dbg !4798
  %565 = fcmp fast ogt double %564, 2.000000e+00, !dbg !4800
  %566 = select fast i1 %565, double 2.000000e+00, double %564, !dbg !4800
  %567 = tail call fast double @llvm.maxnum.f64(double %566, double 5.000000e-01), !dbg !4800
  call void @llvm.dbg.value(metadata double %567, metadata !4338, metadata !DIExpression()), !dbg !4653
  %568 = fpext float %546 to double, !dbg !4801
  %569 = fmul fast double %567, %568, !dbg !4801
  %570 = fptrunc double %569 to float, !dbg !4801
  call void @llvm.dbg.value(metadata float %570, metadata !4293, metadata !DIExpression()), !dbg !4344
  br label %571, !dbg !4802

571:                                              ; preds = %544, %554, %470
  %572 = phi float [ %472, %470 ], [ %570, %554 ], [ %546, %544 ], !dbg !4803
  %573 = phi double [ 1.000000e+00, %470 ], [ %567, %554 ], [ 1.000000e+00, %544 ], !dbg !4653
  call void @llvm.dbg.value(metadata double %573, metadata !4338, metadata !DIExpression()), !dbg !4653
  call void @llvm.dbg.value(metadata float %572, metadata !4293, metadata !DIExpression()), !dbg !4344
  %574 = icmp eq i32 %5, 2, !dbg !4804
  br i1 %574, label %575, label %598, !dbg !4806

575:                                              ; preds = %571
  %576 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 12, !dbg !4807
  %577 = load i32, ptr %576, align 16, !dbg !4807, !tbaa !2409
  %578 = icmp sgt i32 %577, 1, !dbg !4808
  br i1 %578, label %579, label %598, !dbg !4809

579:                                              ; preds = %575
  %580 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 38, !dbg !4810
  %581 = load i32, ptr %580, align 8, !dbg !4810, !tbaa !1851
  %582 = icmp eq i32 %581, 2, !dbg !4811
  br i1 %582, label %598, label %583, !dbg !4812

583:                                              ; preds = %579
  %584 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 39, !dbg !4813
  %585 = load double, ptr %584, align 8, !dbg !4813, !tbaa !2008
  %586 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 40, !dbg !4815
  %587 = load double, ptr %586, align 8, !dbg !4815, !tbaa !2002
  call void @llvm.dbg.value(metadata double poison, metadata !2044, metadata !DIExpression()), !dbg !4816
  %588 = fmul fast double %585, 0x3FC5555555555555, !dbg !4818
  %589 = fdiv fast double %588, %587, !dbg !4818
  %590 = fadd fast double %589, -2.000000e+00, !dbg !4818
  %591 = tail call fast double @llvm.exp2.f64(double %590), !dbg !4819
  %592 = fmul fast double %591, 8.500000e-01, !dbg !4820
  %593 = fptrunc double %592 to float, !dbg !4821
  call void @llvm.dbg.value(metadata float %593, metadata !4293, metadata !DIExpression()), !dbg !4344
  %594 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 11, !dbg !4822
  %595 = load float, ptr %594, align 4, !dbg !4822, !tbaa !3121
  %596 = tail call fast float @llvm.fabs.f32(float %595), !dbg !4823
  %597 = fdiv fast float %593, %596, !dbg !4824
  call void @llvm.dbg.value(metadata float %597, metadata !4293, metadata !DIExpression()), !dbg !4344
  br label %641, !dbg !4825

598:                                              ; preds = %579, %575, %571
  %599 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 6, !dbg !4826
  %600 = load i32, ptr %599, align 16, !dbg !4826, !tbaa !3840
  %601 = icmp sgt i32 %600, 0, !dbg !4828
  br i1 %601, label %602, label %626, !dbg !4829

602:                                              ; preds = %598
  %603 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 37, i64 %6, !dbg !4830
  %604 = load double, ptr %603, align 8, !dbg !4830, !tbaa !2065
  %605 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 44, !dbg !4832
  %606 = load double, ptr %605, align 8, !dbg !4832, !tbaa !2095
  %607 = fdiv fast double %604, %606, !dbg !4833
  call void @llvm.dbg.value(metadata double %607, metadata !4339, metadata !DIExpression()), !dbg !4653
  %608 = fmul fast double %606, %604, !dbg !4834
  call void @llvm.dbg.value(metadata double %608, metadata !4340, metadata !DIExpression()), !dbg !4653
  %609 = fcmp fast ogt double %573, 1.100000e+00, !dbg !4835
  %610 = icmp ugt i32 %600, 3
  %611 = select i1 %609, i1 %610, i1 false, !dbg !4837
  br i1 %611, label %612, label %614, !dbg !4837

612:                                              ; preds = %602
  %613 = fmul fast double %608, %606, !dbg !4838
  call void @llvm.dbg.value(metadata double %613, metadata !4340, metadata !DIExpression()), !dbg !4653
  br label %618, !dbg !4839

614:                                              ; preds = %602
  %615 = fcmp fast olt double %573, 9.000000e-01, !dbg !4840
  br i1 %615, label %616, label %618, !dbg !4842

616:                                              ; preds = %614
  %617 = fdiv fast double %607, %606, !dbg !4843
  call void @llvm.dbg.value(metadata double %617, metadata !4339, metadata !DIExpression()), !dbg !4653
  br label %618, !dbg !4844

618:                                              ; preds = %614, %616, %612
  %619 = phi double [ %607, %612 ], [ %617, %616 ], [ %607, %614 ], !dbg !4845
  %620 = phi double [ %613, %612 ], [ %608, %616 ], [ %608, %614 ], !dbg !4845
  call void @llvm.dbg.value(metadata double %620, metadata !4340, metadata !DIExpression()), !dbg !4653
  call void @llvm.dbg.value(metadata double %619, metadata !4339, metadata !DIExpression()), !dbg !4653
  %621 = fpext float %572 to double, !dbg !4846
  call void @llvm.dbg.value(metadata double %621, metadata !1920, metadata !DIExpression()), !dbg !4847
  call void @llvm.dbg.value(metadata double %619, metadata !1925, metadata !DIExpression()), !dbg !4847
  call void @llvm.dbg.value(metadata double %620, metadata !1926, metadata !DIExpression()), !dbg !4847
  %622 = fcmp fast ogt double %619, %621, !dbg !4849
  %623 = tail call fast double @llvm.minnum.f64(double %620, double %621), !dbg !4850
  %624 = select fast i1 %622, double %619, double %623, !dbg !4850
  %625 = fptrunc double %624 to float, !dbg !4851
  call void @llvm.dbg.value(metadata float %625, metadata !4293, metadata !DIExpression()), !dbg !4344
  br label %641, !dbg !4852

626:                                              ; preds = %598
  br i1 %405, label %627, label %641, !dbg !4853

627:                                              ; preds = %626
  %628 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 6, !dbg !4854
  %629 = load float, ptr %628, align 8, !dbg !4854, !tbaa !2004
  %630 = fpext float %629 to double, !dbg !4854
  call void @llvm.dbg.value(metadata double %630, metadata !2044, metadata !DIExpression()), !dbg !4857
  %631 = fmul fast double %630, 0x3FC5555555555555, !dbg !4859
  %632 = fadd fast double %631, -2.000000e+00, !dbg !4859
  %633 = tail call fast double @llvm.exp2.f64(double %632), !dbg !4860
  %634 = fmul fast double %633, 8.500000e-01, !dbg !4861
  %635 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 11, !dbg !4862
  %636 = load float, ptr %635, align 4, !dbg !4862, !tbaa !3121
  %637 = tail call fast float @llvm.fabs.f32(float %636), !dbg !4863
  %638 = fpext float %637 to double, !dbg !4863
  %639 = fdiv fast double %634, %638, !dbg !4864
  %640 = fptrunc double %639 to float, !dbg !4865
  call void @llvm.dbg.value(metadata float %640, metadata !4293, metadata !DIExpression()), !dbg !4344
  br label %641, !dbg !4866

641:                                              ; preds = %618, %627, %626, %583
  %642 = phi float [ %597, %583 ], [ %625, %618 ], [ %640, %627 ], [ %572, %626 ], !dbg !4653
  call void @llvm.dbg.value(metadata float %642, metadata !4293, metadata !DIExpression()), !dbg !4344
  %643 = fpext float %642 to double, !dbg !4867
  %644 = tail call fast fastcc double @clip_qscale(ptr noundef nonnull %0, i32 noundef %5, double noundef %643), !dbg !4868
  call void @llvm.dbg.value(metadata float poison, metadata !4293, metadata !DIExpression()), !dbg !4344
  br label %645

645:                                              ; preds = %641, %385
  %646 = phi i32 [ %391, %641 ], [ %55, %385 ]
  %647 = phi i32 [ 0, %641 ], [ %56, %385 ]
  %648 = phi float [ 1.000000e+00, %641 ], [ %57, %385 ]
  %649 = phi double [ %644, %641 ], [ %389, %385 ]
  call void @llvm.dbg.value(metadata float %648, metadata !4295, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !4344
  call void @llvm.dbg.value(metadata i32 %647, metadata !4295, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !4344
  call void @llvm.dbg.value(metadata i32 %646, metadata !4295, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)), !dbg !4344
  %650 = fptrunc double %649 to float, !dbg !4869
  call void @llvm.dbg.value(metadata float %650, metadata !4293, metadata !DIExpression()), !dbg !4344
  %651 = fpext float %650 to double, !dbg !4870
  %652 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 36, !dbg !4871
  store double %651, ptr %652, align 8, !dbg !4872, !tbaa !2100
  %653 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 37, !dbg !4873
  %654 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 37, i64 %6, !dbg !4874
  store double %651, ptr %654, align 8, !dbg !4875, !tbaa !2065
  %655 = load i32, ptr %20, align 4, !dbg !4876, !tbaa !1814
  %656 = icmp eq i32 %655, 0, !dbg !4878
  br i1 %656, label %661, label %657, !dbg !4879

657:                                              ; preds = %645
  %658 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 2, !dbg !4880
  %659 = load i32, ptr %658, align 8, !dbg !4880, !tbaa !1959
  %660 = icmp eq i32 %659, 0, !dbg !4881
  br i1 %660, label %693, label %661, !dbg !4882

661:                                              ; preds = %657, %645
  %662 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 37, !dbg !4883
  %663 = load ptr, ptr %662, align 8, !dbg !4883, !tbaa !1704
  %664 = getelementptr inbounds %struct.x264_frame_t, ptr %663, i64 0, i32 4, !dbg !4884
  %665 = load i32, ptr %664, align 8, !dbg !4884, !tbaa !3960
  %666 = icmp eq i32 %665, 0, !dbg !4885
  br i1 %666, label %667, label %668, !dbg !4886

667:                                              ; preds = %661
  store double %651, ptr %653, align 8, !dbg !4887, !tbaa !2065
  br label %668, !dbg !4888

668:                                              ; preds = %667, %661
  br i1 %656, label %693, label %669, !dbg !4889

669:                                              ; preds = %668
  %670 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 2
  %671 = load i32, ptr %670, align 8, !dbg !4891, !tbaa !1959
  %672 = icmp eq i32 %671, 0, !dbg !4892
  br i1 %672, label %693, label %673, !dbg !4893

673:                                              ; preds = %669
  call void @llvm.dbg.value(metadata ptr undef, metadata !2814, metadata !DIExpression()), !dbg !4894
  call void @llvm.dbg.value(metadata double %651, metadata !2819, metadata !DIExpression()), !dbg !4894
  %674 = fcmp fast olt double %651, 1.000000e-01, !dbg !4896
  %675 = select i1 %674, double 1.000000e-01, double %651, !dbg !4897
  call void @llvm.dbg.value(metadata double %675, metadata !2819, metadata !DIExpression()), !dbg !4894
  %676 = fpext float %648 to double, !dbg !4898
  %677 = fcmp fast ole float %648, 1.000000e+00, !dbg !4898
  %678 = select fast i1 %677, float 1.000000e+00, float %648, !dbg !4898
  %679 = fpext float %678 to double, !dbg !4898
  %680 = sitofp i32 %647 to double, !dbg !4899
  %681 = sitofp i32 %646 to double, !dbg !4900
  %682 = fadd fast double %681, 1.000000e-01, !dbg !4901
  %683 = fdiv fast double %676, %675, !dbg !4902
  %684 = tail call fast double @llvm.pow.f64(double %683, double 1.100000e+00), !dbg !4903
  %685 = fmul fast double %684, %682, !dbg !4904
  %686 = tail call fast double @llvm.maxnum.f64(double %675, double 1.000000e+00), !dbg !4905
  %687 = fdiv fast double %679, %686, !dbg !4906
  %688 = tail call fast double @llvm.sqrt.f64(double %687), !dbg !4907
  %689 = fmul fast double %688, %680, !dbg !4908
  %690 = sitofp i32 %54 to double, !dbg !4909
  %691 = fadd fast double %685, %690, !dbg !4910
  %692 = fadd fast double %691, %689, !dbg !4911
  br label %709, !dbg !4912

693:                                              ; preds = %657, %669, %668
  %694 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 20, !dbg !4913
  %695 = load ptr, ptr %694, align 8, !dbg !4913, !tbaa !2104
  %696 = load i32, ptr %4, align 8, !dbg !4914, !tbaa !4012
  %697 = sext i32 %696 to i64, !dbg !4915
  %698 = getelementptr inbounds %struct.predictor_t, ptr %695, i64 %697, !dbg !4915
  %699 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 21, !dbg !4916
  %700 = load i32, ptr %699, align 8, !dbg !4916, !tbaa !4472
  %701 = sitofp i32 %700 to double, !dbg !4917
  call void @llvm.dbg.value(metadata ptr undef, metadata !4443, metadata !DIExpression()), !dbg !4918
  call void @llvm.dbg.value(metadata double %651, metadata !4448, metadata !DIExpression()), !dbg !4918
  call void @llvm.dbg.value(metadata double %701, metadata !4449, metadata !DIExpression()), !dbg !4918
  %702 = load <2 x double>, ptr %698, align 8, !dbg !4920, !tbaa !2065
  %703 = insertelement <2 x double> poison, double %701, i64 0, !dbg !4921
  %704 = insertelement <2 x double> %703, double %651, i64 1, !dbg !4921
  %705 = fmul fast <2 x double> %702, %704, !dbg !4922
  %706 = extractelement <2 x double> %705, i64 0, !dbg !4923
  %707 = extractelement <2 x double> %705, i64 1, !dbg !4923
  %708 = fdiv fast double %706, %707, !dbg !4923
  br label %709

709:                                              ; preds = %693, %673
  %710 = phi double [ %708, %693 ], [ %692, %673 ]
  %711 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 46, !dbg !4924
  store double %710, ptr %711, align 8, !dbg !4924, !tbaa !4090
  %712 = fptosi double %710 to i32, !dbg !4925
  call void @llvm.dbg.value(metadata ptr %0, metadata !3905, metadata !DIExpression()), !dbg !4926
  call void @llvm.dbg.value(metadata i32 %712, metadata !3906, metadata !DIExpression()), !dbg !4926
  %713 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 37, !dbg !4928
  %714 = load ptr, ptr %713, align 8, !dbg !4928, !tbaa !1704
  %715 = getelementptr inbounds %struct.x264_frame_t, ptr %714, i64 0, i32 44, !dbg !4929
  %716 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %715) #20, !dbg !4930
  %717 = sitofp i32 %712 to double, !dbg !4931
  %718 = load ptr, ptr %2, align 16, !dbg !4932, !tbaa !1699
  %719 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %718, i64 0, i32 45, !dbg !4933
  store double %717, ptr %719, align 8, !dbg !4934, !tbaa !3915
  %720 = load ptr, ptr %713, align 8, !dbg !4935, !tbaa !1704
  %721 = getelementptr inbounds %struct.x264_frame_t, ptr %720, i64 0, i32 44, !dbg !4936
  %722 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %721) #20, !dbg !4937
  br label %723

723:                                              ; preds = %709, %126
  %724 = phi float [ %172, %126 ], [ %650, %709 ], !dbg !4938
  ret float %724, !dbg !4939
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_ratecontrol_mb(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 !dbg !4940 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4942, metadata !DIExpression()), !dbg !4963
  call void @llvm.dbg.value(metadata i32 %1, metadata !4943, metadata !DIExpression()), !dbg !4963
  %3 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 46, !dbg !4964
  %4 = load ptr, ptr %3, align 16, !dbg !4964, !tbaa !1699
  call void @llvm.dbg.value(metadata ptr %4, metadata !4944, metadata !DIExpression()), !dbg !4963
  %5 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 5, !dbg !4965
  %6 = load i32, ptr %5, align 4, !dbg !4965, !tbaa !1709
  call void @llvm.dbg.value(metadata i32 %6, metadata !4945, metadata !DIExpression()), !dbg !4963
  tail call void @x264_emms() #20, !dbg !4966
  %7 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 38, !dbg !4967
  %8 = load ptr, ptr %7, align 16, !dbg !4967, !tbaa !4036
  %9 = getelementptr inbounds %struct.x264_frame_t, ptr %8, i64 0, i32 36, !dbg !4968
  %10 = load ptr, ptr %9, align 8, !dbg !4968, !tbaa !4038
  %11 = sext i32 %6 to i64, !dbg !4969
  %12 = getelementptr inbounds i32, ptr %10, i64 %11, !dbg !4969
  %13 = load i32, ptr %12, align 4, !dbg !4970, !tbaa !1667
  %14 = add nsw i32 %13, %1, !dbg !4970
  store i32 %14, ptr %12, align 4, !dbg !4970, !tbaa !1667
  %15 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 12, !dbg !4971
  %16 = load float, ptr %15, align 8, !dbg !4971, !tbaa !1701
  %17 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 13, !dbg !4972
  %18 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 58, !dbg !4973
  %19 = load i32, ptr %18, align 16, !dbg !4973, !tbaa !4974
  %20 = sitofp i32 %19 to float, !dbg !4975
  %21 = load <2 x float>, ptr %17, align 4, !dbg !4976, !tbaa !1622
  %22 = insertelement <2 x float> poison, float %16, i64 0, !dbg !4977
  %23 = insertelement <2 x float> %22, float %20, i64 1, !dbg !4977
  %24 = fadd fast <2 x float> %21, %23, !dbg !4976
  store <2 x float> %24, ptr %17, align 4, !dbg !4976, !tbaa !1622
  %25 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 4, !dbg !4978
  %26 = load i32, ptr %25, align 16, !dbg !4978, !tbaa !1707
  %27 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 16, !dbg !4980
  %28 = load ptr, ptr %27, align 16, !dbg !4980, !tbaa !1562
  %29 = getelementptr inbounds %struct.x264_sps_t, ptr %28, i64 0, i32 16, !dbg !4981
  %30 = load i32, ptr %29, align 4, !dbg !4981, !tbaa !1600
  %31 = add nsw i32 %30, -1, !dbg !4982
  %32 = icmp eq i32 %26, %31, !dbg !4983
  br i1 %32, label %33, label %330, !dbg !4984

33:                                               ; preds = %2
  %34 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 2, !dbg !4985
  %35 = load i32, ptr %34, align 8, !dbg !4985, !tbaa !1959
  %36 = icmp eq i32 %35, 0, !dbg !4986
  br i1 %36, label %330, label %37, !dbg !4987

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 11, !dbg !4988
  %39 = load i32, ptr %38, align 4, !dbg !4988, !tbaa !4234
  %40 = getelementptr inbounds %struct.x264_frame_t, ptr %8, i64 0, i32 37, !dbg !4989
  %41 = load ptr, ptr %40, align 8, !dbg !4989, !tbaa !4990
  %42 = getelementptr inbounds i32, ptr %41, i64 %11, !dbg !4991
  store i32 %39, ptr %42, align 4, !dbg !4992, !tbaa !1667
  %43 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 33, i32 2, !dbg !4993
  %44 = load i32, ptr %43, align 8, !dbg !4993, !tbaa !4012
  %45 = icmp eq i32 %44, 1, !dbg !4994
  br i1 %45, label %46, label %132, !dbg !4995

46:                                               ; preds = %37
  %47 = getelementptr inbounds %struct.x264_sps_t, ptr %28, i64 0, i32 17, !dbg !4996
  %48 = load i32, ptr %47, align 4, !dbg !4996, !tbaa !1593
  %49 = add nsw i32 %48, -1, !dbg !4997
  %50 = icmp slt i32 %6, %49, !dbg !4998
  br i1 %50, label %51, label %327, !dbg !4999

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 40, !dbg !5000
  %53 = load ptr, ptr %52, align 16, !dbg !5000, !tbaa !1681
  %54 = getelementptr inbounds %struct.x264_frame_t, ptr %53, i64 0, i32 37, !dbg !5000
  %55 = load ptr, ptr %54, align 8, !dbg !5000, !tbaa !4990
  %56 = add nsw i32 %6, 1, !dbg !5000
  %57 = sext i32 %56 to i64, !dbg !5000
  %58 = getelementptr inbounds i32, ptr %55, i64 %57, !dbg !5000
  %59 = load i32, ptr %58, align 4, !dbg !5000, !tbaa !1667
  %60 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 42, !dbg !5000
  %61 = load ptr, ptr %60, align 16, !dbg !5000, !tbaa !1681
  %62 = getelementptr inbounds %struct.x264_frame_t, ptr %61, i64 0, i32 37, !dbg !5000
  %63 = load ptr, ptr %62, align 8, !dbg !5000, !tbaa !4990
  %64 = getelementptr inbounds i32, ptr %63, i64 %57, !dbg !5000
  %65 = load i32, ptr %64, align 4, !dbg !5000, !tbaa !1667
  %66 = tail call i32 @llvm.smax.i32(i32 %59, i32 %65), !dbg !5000
  %67 = sitofp i32 %66 to double, !dbg !5000
  %68 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 31, !dbg !5001
  %69 = load double, ptr %68, align 8, !dbg !5001, !tbaa !4400
  %70 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 37, !dbg !5002
  %71 = load ptr, ptr %70, align 8, !dbg !5002, !tbaa !1704
  %72 = getelementptr inbounds %struct.x264_frame_t, ptr %71, i64 0, i32 1, !dbg !5003
  %73 = load i32, ptr %72, align 4, !dbg !5003, !tbaa !4141
  %74 = icmp eq i32 %73, 4, !dbg !5004
  %75 = select fast i1 %74, double 5.000000e-01, double 1.000000e+00, !dbg !5005
  %76 = fmul fast double %75, %69, !dbg !5006
  %77 = fadd fast double %76, %67, !dbg !5007
  %78 = fptosi double %77 to i32, !dbg !5000
  call void @llvm.dbg.value(metadata i32 %78, metadata !4951, metadata !DIExpression()), !dbg !5008
  %79 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 10, !dbg !5009
  %80 = load i32, ptr %79, align 8, !dbg !5009, !tbaa !4231
  %81 = tail call i32 @llvm.smax.i32(i32 %80, i32 %78), !dbg !5009
  %82 = tail call i32 @llvm.smin.i32(i32 %81, i32 51), !dbg !5009
  store i32 %82, ptr %38, align 4, !dbg !5010, !tbaa !4234
  call void @llvm.dbg.value(metadata ptr %0, metadata !5011, metadata !DIExpression()), !dbg !5019
  call void @llvm.dbg.value(metadata i32 %6, metadata !5016, metadata !DIExpression()), !dbg !5019
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !5018, metadata !DIExpression()), !dbg !5019
  call void @llvm.dbg.value(metadata i32 0, metadata !5017, metadata !DIExpression()), !dbg !5019
  %83 = icmp slt i32 %6, 0, !dbg !5021
  br i1 %83, label %123, label %84, !dbg !5024

84:                                               ; preds = %51
  %85 = zext i32 %56 to i64, !dbg !5021
  %86 = icmp ult i32 %56, 4, !dbg !5024
  br i1 %86, label %107, label %87, !dbg !5024

87:                                               ; preds = %84
  %88 = and i64 %85, 4294967292, !dbg !5024
  br label %89, !dbg !5024

89:                                               ; preds = %89, %87
  %90 = phi i64 [ 0, %87 ], [ %101, %89 ], !dbg !5025
  %91 = phi <2 x double> [ zeroinitializer, %87 ], [ %99, %89 ]
  %92 = phi <2 x double> [ zeroinitializer, %87 ], [ %100, %89 ]
  %93 = getelementptr inbounds i32, ptr %10, i64 %90, !dbg !5026
  %94 = load <2 x i32>, ptr %93, align 4, !dbg !5026, !tbaa !1667
  %95 = getelementptr inbounds i32, ptr %93, i64 2, !dbg !5026
  %96 = load <2 x i32>, ptr %95, align 4, !dbg !5026, !tbaa !1667
  %97 = sitofp <2 x i32> %94 to <2 x double>, !dbg !5026
  %98 = sitofp <2 x i32> %96 to <2 x double>, !dbg !5026
  %99 = fadd fast <2 x double> %91, %97, !dbg !5027
  %100 = fadd fast <2 x double> %92, %98, !dbg !5027
  %101 = add nuw i64 %90, 4, !dbg !5025
  %102 = icmp eq i64 %101, %88, !dbg !5025
  br i1 %102, label %103, label %89, !dbg !5025, !llvm.loop !5028

103:                                              ; preds = %89
  %104 = fadd fast <2 x double> %100, %99, !dbg !5024
  %105 = tail call fast double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %104), !dbg !5024
  %106 = icmp eq i64 %88, %85, !dbg !5024
  br i1 %106, label %119, label %107, !dbg !5024

107:                                              ; preds = %84, %103
  %108 = phi i64 [ 0, %84 ], [ %88, %103 ]
  %109 = phi double [ 0.000000e+00, %84 ], [ %105, %103 ]
  br label %110, !dbg !5024

110:                                              ; preds = %107, %110
  %111 = phi i64 [ %117, %110 ], [ %108, %107 ]
  %112 = phi double [ %116, %110 ], [ %109, %107 ]
  call void @llvm.dbg.value(metadata double %112, metadata !5018, metadata !DIExpression()), !dbg !5019
  call void @llvm.dbg.value(metadata i64 %111, metadata !5017, metadata !DIExpression()), !dbg !5019
  %113 = getelementptr inbounds i32, ptr %10, i64 %111, !dbg !5026
  %114 = load i32, ptr %113, align 4, !dbg !5026, !tbaa !1667
  %115 = sitofp i32 %114 to double, !dbg !5026
  %116 = fadd fast double %112, %115, !dbg !5027
  call void @llvm.dbg.value(metadata double %116, metadata !5018, metadata !DIExpression()), !dbg !5019
  %117 = add nuw nsw i64 %111, 1, !dbg !5025
  call void @llvm.dbg.value(metadata i64 %117, metadata !5017, metadata !DIExpression()), !dbg !5019
  %118 = icmp eq i64 %117, %85, !dbg !5021
  br i1 %118, label %119, label %110, !dbg !5024, !llvm.loop !5030

119:                                              ; preds = %110, %103
  %120 = phi double [ %105, %103 ], [ %116, %110 ], !dbg !5027
  %121 = fptosi double %120 to i32, !dbg !5031
  %122 = sitofp i32 %121 to double, !dbg !5032
  br label %123, !dbg !5031

123:                                              ; preds = %119, %51
  %124 = phi double [ 0.000000e+00, %51 ], [ %122, %119 ]
  call void @llvm.dbg.value(metadata i32 poison, metadata !4946, metadata !DIExpression()), !dbg !5008
  %125 = load ptr, ptr %3, align 16, !dbg !5034, !tbaa !1699
  %126 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %125, i64 0, i32 46, !dbg !5035
  %127 = load double, ptr %126, align 8, !dbg !5035, !tbaa !4090
  %128 = fcmp fast olt double %127, %124, !dbg !5036
  br i1 %128, label %129, label %327, !dbg !5037

129:                                              ; preds = %123
  call void @llvm.dbg.value(metadata ptr %0, metadata !3905, metadata !DIExpression()), !dbg !5038
  call void @llvm.dbg.value(metadata i32 poison, metadata !3906, metadata !DIExpression()), !dbg !5038
  %130 = getelementptr inbounds %struct.x264_frame_t, ptr %71, i64 0, i32 44, !dbg !5040
  %131 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %130) #20, !dbg !5041
  br label %319, !dbg !5042

132:                                              ; preds = %37
  %133 = load i32, ptr %38, align 4, !dbg !5043, !tbaa !4234
  call void @llvm.dbg.value(metadata double poison, metadata !2044, metadata !DIExpression()), !dbg !5044
  %134 = getelementptr inbounds %struct.x264_frame_t, ptr %8, i64 0, i32 35, !dbg !5046
  %135 = load ptr, ptr %134, align 8, !dbg !5046, !tbaa !5047
  %136 = getelementptr inbounds i32, ptr %135, i64 %11, !dbg !5048
  %137 = load i32, ptr %136, align 4, !dbg !5048, !tbaa !1667
  call void @llvm.dbg.value(metadata ptr poison, metadata !5049, metadata !DIExpression()), !dbg !5057
  call void @llvm.dbg.value(metadata double poison, metadata !5054, metadata !DIExpression()), !dbg !5057
  call void @llvm.dbg.value(metadata double poison, metadata !5055, metadata !DIExpression()), !dbg !5057
  call void @llvm.dbg.value(metadata double poison, metadata !5056, metadata !DIExpression()), !dbg !5057
  %138 = icmp slt i32 %137, 10, !dbg !5059
  br i1 %138, label %160, label %139, !dbg !5061

139:                                              ; preds = %132
  %140 = sitofp i32 %137 to double, !dbg !5048
  call void @llvm.dbg.value(metadata double %140, metadata !5055, metadata !DIExpression()), !dbg !5057
  %141 = load i32, ptr %12, align 4, !dbg !5062, !tbaa !1667
  %142 = sitofp i32 %141 to double, !dbg !5062
  call void @llvm.dbg.value(metadata double %142, metadata !5056, metadata !DIExpression()), !dbg !5057
  %143 = sitofp i32 %133 to double, !dbg !5063
  call void @llvm.dbg.value(metadata double %143, metadata !2044, metadata !DIExpression()), !dbg !5044
  %144 = fmul fast double %143, 0x3FC5555555555555, !dbg !5064
  %145 = fadd fast double %144, -2.000000e+00, !dbg !5064
  %146 = tail call fast double @llvm.exp2.f64(double %145), !dbg !5065
  %147 = fmul fast double %146, 8.500000e-01, !dbg !5066
  call void @llvm.dbg.value(metadata double %147, metadata !5054, metadata !DIExpression()), !dbg !5057
  %148 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 47, !dbg !5067
  %149 = load ptr, ptr %148, align 8, !dbg !5067, !tbaa !4048
  call void @llvm.dbg.value(metadata ptr %149, metadata !5049, metadata !DIExpression()), !dbg !5057
  %150 = getelementptr inbounds %struct.predictor_t, ptr %149, i64 0, i32 2, !dbg !5068
  %151 = load double, ptr %150, align 8, !dbg !5068, !tbaa !2131
  %152 = fmul fast double %147, %142, !dbg !5069
  %153 = fdiv fast double %152, %140, !dbg !5070
  %154 = load <2 x double>, ptr %149, align 8, !dbg !5071, !tbaa !2065
  %155 = insertelement <2 x double> poison, double %151, i64 0, !dbg !5072
  %156 = shufflevector <2 x double> %155, <2 x double> poison, <2 x i32> zeroinitializer, !dbg !5072
  %157 = fmul fast <2 x double> %154, %156, !dbg !5071
  %158 = insertelement <2 x double> <double poison, double 1.000000e+00>, double %153, i64 0, !dbg !5073
  %159 = fadd fast <2 x double> %157, %158, !dbg !5074
  store <2 x double> %159, ptr %149, align 8, !dbg !5074, !tbaa !2065
  br label %160, !dbg !5075

160:                                              ; preds = %132, %139
  %161 = getelementptr inbounds %struct.x264_sps_t, ptr %28, i64 0, i32 17, !dbg !5076
  %162 = load i32, ptr %161, align 4, !dbg !5076, !tbaa !1593
  %163 = add nsw i32 %162, -1, !dbg !5077
  %164 = icmp slt i32 %6, %163, !dbg !5078
  br i1 %164, label %165, label %327, !dbg !5079

165:                                              ; preds = %160
  %166 = sext i32 %44 to i64, !dbg !5080
  %167 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47, i32 1, i64 %166, !dbg !5080
  %168 = load i32, ptr %167, align 4, !dbg !5080, !tbaa !1667
  %169 = icmp sgt i32 %168, 0, !dbg !5081
  br i1 %169, label %170, label %327, !dbg !5082

170:                                              ; preds = %165
  call void @llvm.dbg.value(metadata i32 %39, metadata !4952, metadata !DIExpression()), !dbg !5083
  %171 = tail call fast fastcc double @predict_row_size_sum(ptr noundef nonnull %0, i32 noundef %6, i32 noundef %133), !dbg !5084
  call void @llvm.dbg.value(metadata i32 poison, metadata !4956, metadata !DIExpression()), !dbg !5083
  call void @llvm.dbg.value(metadata i32 poison, metadata !4957, metadata !DIExpression()), !dbg !5083
  %172 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 4, !dbg !5085
  %173 = load i32, ptr %172, align 8, !dbg !5085, !tbaa !2089
  %174 = add nsw i32 %173, %39, !dbg !5085
  %175 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 3, !dbg !5085
  %176 = load i32, ptr %175, align 4, !dbg !5085, !tbaa !1720
  %177 = tail call i32 @llvm.smin.i32(i32 %174, i32 %176), !dbg !5085
  call void @llvm.dbg.value(metadata i32 %177, metadata !4958, metadata !DIExpression()), !dbg !5083
  %178 = sub nsw i32 %39, %173, !dbg !5086
  %179 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 2, !dbg !5086
  %180 = load i32, ptr %179, align 8, !dbg !5086, !tbaa !1718
  %181 = tail call i32 @llvm.smax.i32(i32 %178, i32 %180), !dbg !5086
  call void @llvm.dbg.value(metadata i32 %181, metadata !4959, metadata !DIExpression()), !dbg !5083
  %182 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 18, !dbg !5087
  %183 = load double, ptr %182, align 8, !dbg !5087, !tbaa !4071
  %184 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 46, !dbg !5088
  %185 = load double, ptr %184, align 8, !dbg !5088, !tbaa !4090
  call void @llvm.dbg.value(metadata float poison, metadata !4960, metadata !DIExpression()), !dbg !5083
  call void @llvm.dbg.value(metadata float 1.000000e+00, metadata !4961, metadata !DIExpression()), !dbg !5083
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !4962, metadata !DIExpression()), !dbg !5083
  call void @llvm.dbg.value(metadata ptr %0, metadata !5011, metadata !DIExpression()), !dbg !5089
  call void @llvm.dbg.value(metadata i32 %6, metadata !5016, metadata !DIExpression()), !dbg !5089
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !5018, metadata !DIExpression()), !dbg !5089
  call void @llvm.dbg.value(metadata i32 0, metadata !5017, metadata !DIExpression()), !dbg !5089
  %186 = icmp slt i32 %6, 0, !dbg !5092
  br i1 %186, label %223, label %187, !dbg !5093

187:                                              ; preds = %170
  %188 = add nuw nsw i32 %6, 1, !dbg !5093
  %189 = zext i32 %188 to i64, !dbg !5092
  %190 = icmp ult i32 %6, 3, !dbg !5093
  br i1 %190, label %211, label %191, !dbg !5093

191:                                              ; preds = %187
  %192 = and i64 %189, 4294967292, !dbg !5093
  br label %193, !dbg !5093

193:                                              ; preds = %193, %191
  %194 = phi i64 [ 0, %191 ], [ %205, %193 ], !dbg !5094
  %195 = phi <2 x double> [ zeroinitializer, %191 ], [ %203, %193 ]
  %196 = phi <2 x double> [ zeroinitializer, %191 ], [ %204, %193 ]
  %197 = getelementptr inbounds i32, ptr %10, i64 %194, !dbg !5095
  %198 = load <2 x i32>, ptr %197, align 4, !dbg !5095, !tbaa !1667
  %199 = getelementptr inbounds i32, ptr %197, i64 2, !dbg !5095
  %200 = load <2 x i32>, ptr %199, align 4, !dbg !5095, !tbaa !1667
  %201 = sitofp <2 x i32> %198 to <2 x double>, !dbg !5095
  %202 = sitofp <2 x i32> %200 to <2 x double>, !dbg !5095
  %203 = fadd fast <2 x double> %195, %201, !dbg !5096
  %204 = fadd fast <2 x double> %196, %202, !dbg !5096
  %205 = add nuw i64 %194, 4, !dbg !5094
  %206 = icmp eq i64 %205, %192, !dbg !5094
  br i1 %206, label %207, label %193, !dbg !5094, !llvm.loop !5097

207:                                              ; preds = %193
  %208 = fadd fast <2 x double> %204, %203, !dbg !5093
  %209 = tail call fast double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %208), !dbg !5093
  %210 = icmp eq i64 %192, %189, !dbg !5093
  br i1 %210, label %223, label %211, !dbg !5093

211:                                              ; preds = %187, %207
  %212 = phi i64 [ 0, %187 ], [ %192, %207 ]
  %213 = phi double [ 0.000000e+00, %187 ], [ %209, %207 ]
  br label %214, !dbg !5093

214:                                              ; preds = %211, %214
  %215 = phi i64 [ %221, %214 ], [ %212, %211 ]
  %216 = phi double [ %220, %214 ], [ %213, %211 ]
  call void @llvm.dbg.value(metadata double %216, metadata !5018, metadata !DIExpression()), !dbg !5089
  call void @llvm.dbg.value(metadata i64 %215, metadata !5017, metadata !DIExpression()), !dbg !5089
  %217 = getelementptr inbounds i32, ptr %10, i64 %215, !dbg !5095
  %218 = load i32, ptr %217, align 4, !dbg !5095, !tbaa !1667
  %219 = sitofp i32 %218 to double, !dbg !5095
  %220 = fadd fast double %216, %219, !dbg !5096
  call void @llvm.dbg.value(metadata double %220, metadata !5018, metadata !DIExpression()), !dbg !5089
  %221 = add nuw nsw i64 %215, 1, !dbg !5094
  call void @llvm.dbg.value(metadata i64 %221, metadata !5017, metadata !DIExpression()), !dbg !5089
  %222 = icmp eq i64 %221, %189, !dbg !5092
  br i1 %222, label %223, label %214, !dbg !5093, !llvm.loop !5099

223:                                              ; preds = %214, %207, %170
  %224 = phi double [ 0.000000e+00, %170 ], [ %209, %207 ], [ %220, %214 ], !dbg !5089
  %225 = fmul fast double %185, 5.000000e-02, !dbg !5100
  %226 = fcmp fast uge double %224, %225, !dbg !5101
  br i1 %226, label %227, label %330, !dbg !5102

227:                                              ; preds = %223
  %228 = fsub fast double %183, %185, !dbg !5103
  %229 = fptrunc double %228 to float, !dbg !5104
  call void @llvm.dbg.value(metadata float %229, metadata !4960, metadata !DIExpression()), !dbg !5083
  %230 = fpext float %229 to double, !dbg !5105
  %231 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 16, !dbg !5106
  %232 = load double, ptr %231, align 8, !dbg !5106, !tbaa !1946
  %233 = fdiv fast double %230, %232, !dbg !5107
  %234 = fptrunc double %233 to float, !dbg !5105
  call void @llvm.dbg.value(metadata float %234, metadata !4962, metadata !DIExpression()), !dbg !5083
  %235 = icmp eq i32 %44, 2, !dbg !5108
  %236 = fmul fast float %234, 5.000000e-01, !dbg !5110
  %237 = select i1 %235, float %234, float %236, !dbg !5110
  call void @llvm.dbg.value(metadata float %237, metadata !4962, metadata !DIExpression()), !dbg !5083
  %238 = fadd fast float %237, 1.000000e+00, !dbg !5111
  call void @llvm.dbg.value(metadata float %238, metadata !4961, metadata !DIExpression()), !dbg !5083
  %239 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 3, !dbg !5112
  %240 = load i32, ptr %239, align 4, !dbg !5112, !tbaa !1970
  %241 = icmp eq i32 %240, 0, !dbg !5114
  br i1 %241, label %242, label %246, !dbg !5115

242:                                              ; preds = %227
  %243 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 33, i32 23, !dbg !5116
  %244 = load i32, ptr %243, align 4, !dbg !5116, !tbaa !5117
  %245 = tail call i32 @llvm.smax.i32(i32 %181, i32 %244), !dbg !5116
  call void @llvm.dbg.value(metadata i32 %245, metadata !4959, metadata !DIExpression()), !dbg !5083
  br label %246, !dbg !5118

246:                                              ; preds = %242, %227
  %247 = phi i32 [ %181, %227 ], [ %245, %242 ], !dbg !5083
  call void @llvm.dbg.value(metadata i32 %247, metadata !4959, metadata !DIExpression()), !dbg !5083
  %248 = fptosi double %171 to i32, !dbg !5083
  call void @llvm.dbg.value(metadata i32 %248, metadata !4957, metadata !DIExpression()), !dbg !5083
  %249 = icmp slt i32 %133, %177, !dbg !5119
  br i1 %249, label %250, label %267, !dbg !5120

250:                                              ; preds = %246
  %251 = fpext float %238 to double
  %252 = fmul fast double %185, %251
  %253 = fmul fast double %230, 5.000000e-01
  br label %254, !dbg !5120

254:                                              ; preds = %250, %262
  %255 = phi i32 [ %248, %250 ], [ %265, %262 ]
  %256 = phi i32 [ %133, %250 ], [ %263, %262 ]
  %257 = sitofp i32 %255 to double, !dbg !5121
  %258 = fcmp fast olt double %252, %257, !dbg !5122
  %259 = fsub fast double %183, %257
  %260 = fcmp fast olt double %259, %253
  %261 = select i1 %258, i1 true, i1 %260, !dbg !5123
  br i1 %261, label %262, label %267, !dbg !5123

262:                                              ; preds = %254
  %263 = add i32 %256, 1, !dbg !5124
  store i32 %263, ptr %38, align 4, !dbg !5124, !tbaa !4234
  %264 = tail call fast fastcc double @predict_row_size_sum(ptr noundef %0, i32 noundef %6, i32 noundef %263), !dbg !5126
  call void @llvm.dbg.value(metadata i32 poison, metadata !4957, metadata !DIExpression()), !dbg !5083
  %265 = fptosi double %264 to i32, !dbg !5083
  call void @llvm.dbg.value(metadata i32 %265, metadata !4957, metadata !DIExpression()), !dbg !5083
  %266 = icmp eq i32 %263, %177, !dbg !5119
  br i1 %266, label %267, label %254, !dbg !5120, !llvm.loop !5127

267:                                              ; preds = %254, %262, %246
  %268 = phi i32 [ %133, %246 ], [ %177, %262 ], [ %256, %254 ]
  %269 = phi i32 [ %248, %246 ], [ %265, %262 ], [ %255, %254 ], !dbg !5083
  call void @llvm.dbg.value(metadata i32 %269, metadata !4957, metadata !DIExpression()), !dbg !5083
  %270 = icmp slt i32 %268, %176, !dbg !5130
  br i1 %270, label %271, label %284, !dbg !5131

271:                                              ; preds = %267
  %272 = fmul fast double %232, 5.000000e-03
  br label %273, !dbg !5131

273:                                              ; preds = %271, %279
  %274 = phi i32 [ %269, %271 ], [ %282, %279 ]
  %275 = phi i32 [ %268, %271 ], [ %280, %279 ]
  call void @llvm.dbg.value(metadata i32 %274, metadata !4957, metadata !DIExpression()), !dbg !5083
  %276 = sitofp i32 %274 to double, !dbg !5132
  %277 = fsub fast double %183, %276, !dbg !5133
  %278 = fcmp fast olt double %277, %272, !dbg !5134
  br i1 %278, label %279, label %284, !dbg !5135

279:                                              ; preds = %273
  %280 = add i32 %275, 1, !dbg !5136
  store i32 %280, ptr %38, align 4, !dbg !5136, !tbaa !4234
  %281 = tail call fast fastcc double @predict_row_size_sum(ptr noundef %0, i32 noundef %6, i32 noundef %280), !dbg !5138
  %282 = fptosi double %281 to i32, !dbg !5138
  call void @llvm.dbg.value(metadata i32 %282, metadata !4957, metadata !DIExpression()), !dbg !5083
  %283 = icmp eq i32 %280, %176, !dbg !5130
  br i1 %283, label %284, label %273, !dbg !5131, !llvm.loop !5139

284:                                              ; preds = %273, %279, %267
  %285 = phi i32 [ %268, %267 ], [ %176, %279 ], [ %275, %273 ], !dbg !5141
  %286 = phi i32 [ %269, %267 ], [ %282, %279 ], [ %274, %273 ], !dbg !5083
  %287 = fsub fast double %183, %232, !dbg !5142
  %288 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 19, !dbg !5143
  call void @llvm.dbg.value(metadata i32 %286, metadata !4957, metadata !DIExpression()), !dbg !5083
  %289 = icmp sgt i32 %285, %247, !dbg !5144
  br i1 %289, label %290, label %312, !dbg !5145

290:                                              ; preds = %284
  %291 = fmul fast double %185, 8.000000e-01
  br label %292, !dbg !5145

292:                                              ; preds = %290, %307
  %293 = phi i32 [ %285, %290 ], [ %308, %307 ]
  %294 = phi i32 [ %286, %290 ], [ %310, %307 ]
  call void @llvm.dbg.value(metadata i32 %294, metadata !4957, metadata !DIExpression()), !dbg !5083
  %295 = load i32, ptr %41, align 4, !dbg !5146, !tbaa !1667
  %296 = icmp sgt i32 %293, %295, !dbg !5147
  br i1 %296, label %297, label %312, !dbg !5148

297:                                              ; preds = %292
  %298 = sitofp i32 %294 to double, !dbg !5149
  %299 = fcmp fast ule double %291, %298, !dbg !5150
  %300 = icmp sgt i32 %293, %39
  %301 = select i1 %299, i1 true, i1 %300, !dbg !5151
  br i1 %301, label %302, label %307, !dbg !5151

302:                                              ; preds = %297
  %303 = load double, ptr %288, align 8, !dbg !5143, !tbaa !1941
  %304 = fadd fast double %287, %303, !dbg !5152
  %305 = fmul fast double %304, 1.100000e+00, !dbg !5153
  %306 = fcmp fast ogt double %305, %298, !dbg !5154
  br i1 %306, label %307, label %312, !dbg !5155

307:                                              ; preds = %297, %302
  %308 = add nsw i32 %293, -1, !dbg !5156
  store i32 %308, ptr %38, align 4, !dbg !5156, !tbaa !4234
  %309 = tail call fast fastcc double @predict_row_size_sum(ptr noundef %0, i32 noundef %6, i32 noundef %308), !dbg !5158
  %310 = fptosi double %309 to i32, !dbg !5158
  call void @llvm.dbg.value(metadata i32 %310, metadata !4957, metadata !DIExpression()), !dbg !5083
  %311 = icmp sgt i32 %308, %247, !dbg !5144
  br i1 %311, label %292, label %312, !dbg !5145, !llvm.loop !5159

312:                                              ; preds = %302, %307, %292, %284
  %313 = phi i32 [ %286, %284 ], [ %294, %292 ], [ %310, %307 ], [ %294, %302 ], !dbg !5083
  call void @llvm.dbg.value(metadata ptr %0, metadata !3905, metadata !DIExpression()), !dbg !5161
  call void @llvm.dbg.value(metadata i32 %313, metadata !3906, metadata !DIExpression()), !dbg !5161
  %314 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 37, !dbg !5163
  %315 = load ptr, ptr %314, align 8, !dbg !5163, !tbaa !1704
  %316 = getelementptr inbounds %struct.x264_frame_t, ptr %315, i64 0, i32 44, !dbg !5164
  %317 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %316) #20, !dbg !5165
  %318 = sitofp i32 %313 to double, !dbg !5166
  br label %319

319:                                              ; preds = %129, %312
  %320 = phi double [ %318, %312 ], [ %124, %129 ]
  %321 = phi ptr [ %314, %312 ], [ %70, %129 ]
  %322 = load ptr, ptr %3, align 16, !dbg !5167, !tbaa !1699
  %323 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %322, i64 0, i32 45, !dbg !5167
  store double %320, ptr %323, align 8, !dbg !5167, !tbaa !3915
  %324 = load ptr, ptr %321, align 8, !dbg !5167, !tbaa !1704
  %325 = getelementptr inbounds %struct.x264_frame_t, ptr %324, i64 0, i32 44, !dbg !5167
  %326 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %325) #20, !dbg !5167
  br label %327, !dbg !5168

327:                                              ; preds = %319, %123, %160, %165, %46
  %328 = load i32, ptr %38, align 4, !dbg !5168, !tbaa !4234
  %329 = sitofp i32 %328 to float, !dbg !5169
  store float %329, ptr %15, align 8, !dbg !5170, !tbaa !1701
  br label %330, !dbg !5171

330:                                              ; preds = %223, %2, %33, %327
  ret void, !dbg !5171
}

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc double @predict_row_size_sum(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #12 !dbg !5172 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5176, metadata !DIExpression()), !dbg !5181
  call void @llvm.dbg.value(metadata i32 %1, metadata !5177, metadata !DIExpression()), !dbg !5181
  call void @llvm.dbg.value(metadata i32 %2, metadata !5178, metadata !DIExpression()), !dbg !5181
  call void @llvm.dbg.value(metadata ptr %0, metadata !5011, metadata !DIExpression()), !dbg !5182
  call void @llvm.dbg.value(metadata i32 %1, metadata !5016, metadata !DIExpression()), !dbg !5182
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !5018, metadata !DIExpression()), !dbg !5182
  call void @llvm.dbg.value(metadata i32 0, metadata !5017, metadata !DIExpression()), !dbg !5182
  %4 = icmp slt i32 %1, 0, !dbg !5184
  br i1 %4, label %5, label %7, !dbg !5185

5:                                                ; preds = %3
  %6 = add nsw i32 %1, 1, !dbg !5186
  br label %47, !dbg !5185

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 38
  %9 = load ptr, ptr %8, align 16, !tbaa !4036
  %10 = getelementptr inbounds %struct.x264_frame_t, ptr %9, i64 0, i32 36
  %11 = load ptr, ptr %10, align 8, !tbaa !4038
  %12 = add nuw i32 %1, 1, !dbg !5185
  %13 = zext i32 %12 to i64, !dbg !5184
  %14 = icmp ult i32 %1, 3, !dbg !5185
  br i1 %14, label %35, label %15, !dbg !5185

15:                                               ; preds = %7
  %16 = and i64 %13, 4294967292, !dbg !5185
  br label %17, !dbg !5185

17:                                               ; preds = %17, %15
  %18 = phi i64 [ 0, %15 ], [ %29, %17 ], !dbg !5188
  %19 = phi <2 x double> [ zeroinitializer, %15 ], [ %27, %17 ]
  %20 = phi <2 x double> [ zeroinitializer, %15 ], [ %28, %17 ]
  %21 = getelementptr inbounds i32, ptr %11, i64 %18, !dbg !5189
  %22 = load <2 x i32>, ptr %21, align 4, !dbg !5189, !tbaa !1667
  %23 = getelementptr inbounds i32, ptr %21, i64 2, !dbg !5189
  %24 = load <2 x i32>, ptr %23, align 4, !dbg !5189, !tbaa !1667
  %25 = sitofp <2 x i32> %22 to <2 x double>, !dbg !5189
  %26 = sitofp <2 x i32> %24 to <2 x double>, !dbg !5189
  %27 = fadd fast <2 x double> %19, %25, !dbg !5190
  %28 = fadd fast <2 x double> %20, %26, !dbg !5190
  %29 = add nuw i64 %18, 4, !dbg !5188
  %30 = icmp eq i64 %29, %16, !dbg !5188
  br i1 %30, label %31, label %17, !dbg !5188, !llvm.loop !5191

31:                                               ; preds = %17
  %32 = fadd fast <2 x double> %28, %27, !dbg !5185
  %33 = tail call fast double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %32), !dbg !5185
  %34 = icmp eq i64 %16, %13, !dbg !5185
  br i1 %34, label %47, label %35, !dbg !5185

35:                                               ; preds = %7, %31
  %36 = phi i64 [ 0, %7 ], [ %16, %31 ]
  %37 = phi double [ 0.000000e+00, %7 ], [ %33, %31 ]
  br label %38, !dbg !5185

38:                                               ; preds = %35, %38
  %39 = phi i64 [ %45, %38 ], [ %36, %35 ]
  %40 = phi double [ %44, %38 ], [ %37, %35 ]
  call void @llvm.dbg.value(metadata double %40, metadata !5018, metadata !DIExpression()), !dbg !5182
  call void @llvm.dbg.value(metadata i64 %39, metadata !5017, metadata !DIExpression()), !dbg !5182
  %41 = getelementptr inbounds i32, ptr %11, i64 %39, !dbg !5189
  %42 = load i32, ptr %41, align 4, !dbg !5189, !tbaa !1667
  %43 = sitofp i32 %42 to double, !dbg !5189
  %44 = fadd fast double %40, %43, !dbg !5190
  call void @llvm.dbg.value(metadata double %44, metadata !5018, metadata !DIExpression()), !dbg !5182
  %45 = add nuw nsw i64 %39, 1, !dbg !5188
  call void @llvm.dbg.value(metadata i64 %45, metadata !5017, metadata !DIExpression()), !dbg !5182
  %46 = icmp eq i64 %45, %13, !dbg !5184
  br i1 %46, label %47, label %38, !dbg !5185, !llvm.loop !5193

47:                                               ; preds = %38, %31, %5
  %48 = phi i32 [ %6, %5 ], [ %12, %31 ], [ %12, %38 ], !dbg !5186
  %49 = phi double [ 0.000000e+00, %5 ], [ %33, %31 ], [ %44, %38 ], !dbg !5182
  call void @llvm.dbg.value(metadata double %49, metadata !5180, metadata !DIExpression()), !dbg !5181
  call void @llvm.dbg.value(metadata i32 %1, metadata !5179, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !5181
  %50 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 16
  %51 = load ptr, ptr %50, align 16, !tbaa !1562
  %52 = getelementptr inbounds %struct.x264_sps_t, ptr %51, i64 0, i32 17
  %53 = load i32, ptr %52, align 4, !tbaa !1593
  call void @llvm.dbg.value(metadata i32 %48, metadata !5179, metadata !DIExpression()), !dbg !5181
  %54 = icmp slt i32 %48, %53, !dbg !5194
  br i1 %54, label %55, label %254, !dbg !5196

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 46
  %57 = load ptr, ptr %56, align 16, !tbaa !1699
  %58 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %57, i64 0, i32 47
  %59 = load ptr, ptr %58, align 8, !tbaa !4048
  %60 = sitofp i32 %2 to double
  %61 = fmul fast double %60, 0x3FC5555555555555
  %62 = fadd fast double %61, -2.000000e+00
  %63 = tail call fast double @llvm.exp2.f64(double %62)
  %64 = fmul fast double %63, 8.500000e-01
  %65 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 38
  %66 = load ptr, ptr %65, align 16, !tbaa !4036
  %67 = getelementptr inbounds %struct.x264_frame_t, ptr %66, i64 0, i32 35
  %68 = load ptr, ptr %67, align 8, !tbaa !5047
  %69 = load double, ptr %59, align 8, !tbaa !5197
  %70 = getelementptr i8, ptr %59, i64 8
  %71 = load double, ptr %70, align 8, !tbaa !5198
  %72 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 33, i32 2
  %73 = load i32, ptr %72, align 8, !tbaa !4012
  %74 = icmp eq i32 %73, 2
  %75 = fmul fast double %71, %64
  %76 = fdiv fast double 1.000000e+00, %75
  br i1 %74, label %77, label %136, !dbg !5199

77:                                               ; preds = %55
  %78 = sext i32 %48 to i64, !dbg !5196
  %79 = xor i32 %48, -1, !dbg !5196
  %80 = add i32 %53, %79, !dbg !5196
  %81 = zext i32 %80 to i64, !dbg !5196
  %82 = add nuw nsw i64 %81, 1, !dbg !5196
  %83 = icmp ult i32 %80, 3, !dbg !5196
  br i1 %83, label %119, label %84, !dbg !5196

84:                                               ; preds = %77
  %85 = and i64 %82, -4, !dbg !5196
  %86 = add nsw i64 %85, %78, !dbg !5196
  %87 = insertelement <2 x double> <double poison, double 0.000000e+00>, double %49, i64 0, !dbg !5196
  %88 = fmul fast double %76, %69
  %89 = insertelement <2 x double> poison, double %88, i64 0
  %90 = shufflevector <2 x double> %89, <2 x double> poison, <2 x i32> zeroinitializer
  %91 = fmul fast double %76, %69
  %92 = insertelement <2 x double> poison, double %91, i64 0
  %93 = shufflevector <2 x double> %92, <2 x double> poison, <2 x i32> zeroinitializer
  br label %94, !dbg !5196

94:                                               ; preds = %94, %84
  %95 = phi i64 [ 0, %84 ], [ %113, %94 ]
  %96 = phi <2 x double> [ %87, %84 ], [ %111, %94 ]
  %97 = phi <2 x double> [ zeroinitializer, %84 ], [ %112, %94 ]
  %98 = add i64 %95, %78, !dbg !5196
  %99 = getelementptr inbounds i32, ptr %68, i64 %98, !dbg !5210
  %100 = load <2 x i32>, ptr %99, align 4, !dbg !5210, !tbaa !1667
  %101 = getelementptr inbounds i32, ptr %99, i64 2, !dbg !5210
  %102 = load <2 x i32>, ptr %101, align 4, !dbg !5210, !tbaa !1667
  %103 = sitofp <2 x i32> %100 to <2 x double>, !dbg !5210
  %104 = sitofp <2 x i32> %102 to <2 x double>, !dbg !5210
  %105 = fmul fast <2 x double> %90, %103
  %106 = fmul fast <2 x double> %93, %104
  %107 = fadd fast <2 x double> %105, %105, !dbg !5211
  %108 = fadd fast <2 x double> %106, %106, !dbg !5211
  %109 = fmul fast <2 x double> %107, <double 5.000000e-01, double 5.000000e-01>, !dbg !5212
  %110 = fmul fast <2 x double> %108, <double 5.000000e-01, double 5.000000e-01>, !dbg !5212
  %111 = fadd fast <2 x double> %109, %96, !dbg !5213
  %112 = fadd fast <2 x double> %110, %97, !dbg !5213
  %113 = add nuw i64 %95, 4
  %114 = icmp eq i64 %113, %85
  br i1 %114, label %115, label %94, !llvm.loop !5214

115:                                              ; preds = %94
  %116 = fadd fast <2 x double> %112, %111, !dbg !5196
  %117 = tail call fast double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %116), !dbg !5196
  %118 = icmp eq i64 %82, %85, !dbg !5196
  br i1 %118, label %254, label %119, !dbg !5196

119:                                              ; preds = %77, %115
  %120 = phi i64 [ %78, %77 ], [ %86, %115 ]
  %121 = phi double [ %49, %77 ], [ %117, %115 ]
  br label %122, !dbg !5196

122:                                              ; preds = %119, %122
  %123 = phi i64 [ %133, %122 ], [ %120, %119 ]
  %124 = phi double [ %132, %122 ], [ %121, %119 ]
  call void @llvm.dbg.value(metadata double %124, metadata !5180, metadata !DIExpression()), !dbg !5181
  call void @llvm.dbg.value(metadata ptr %0, metadata !5203, metadata !DIExpression()), !dbg !5216
  call void @llvm.dbg.value(metadata i64 %123, metadata !5204, metadata !DIExpression()), !dbg !5216
  call void @llvm.dbg.value(metadata i32 %2, metadata !5205, metadata !DIExpression()), !dbg !5216
  call void @llvm.dbg.value(metadata ptr %57, metadata !5206, metadata !DIExpression()), !dbg !5216
  call void @llvm.dbg.value(metadata double %60, metadata !2044, metadata !DIExpression()), !dbg !5217
  %125 = getelementptr inbounds i32, ptr %68, i64 %123, !dbg !5210
  %126 = load i32, ptr %125, align 4, !dbg !5210, !tbaa !1667
  call void @llvm.dbg.value(metadata ptr undef, metadata !4443, metadata !DIExpression()), !dbg !5219
  call void @llvm.dbg.value(metadata double %64, metadata !4448, metadata !DIExpression()), !dbg !5219
  call void @llvm.dbg.value(metadata double poison, metadata !4449, metadata !DIExpression()), !dbg !5219
  call void @llvm.dbg.value(metadata double poison, metadata !5207, metadata !DIExpression()), !dbg !5216
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !5208, metadata !DIExpression()), !dbg !5216
  %127 = sitofp i32 %126 to double, !dbg !5210
  call void @llvm.dbg.value(metadata double %127, metadata !4449, metadata !DIExpression()), !dbg !5219
  %128 = fmul fast double %69, %127, !dbg !5221
  %129 = fmul fast double %128, %76
  call void @llvm.dbg.value(metadata double %129, metadata !5207, metadata !DIExpression()), !dbg !5216
  call void @llvm.dbg.value(metadata double poison, metadata !5208, metadata !DIExpression()), !dbg !5216
  %130 = fadd fast double %129, %129, !dbg !5211
  %131 = fmul fast double %130, 5.000000e-01, !dbg !5212
  %132 = fadd fast double %131, %124, !dbg !5213
  call void @llvm.dbg.value(metadata double %132, metadata !5180, metadata !DIExpression()), !dbg !5181
  call void @llvm.dbg.value(metadata i64 %123, metadata !5179, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !5181
  %133 = add nsw i64 %123, 1, !dbg !5186
  call void @llvm.dbg.value(metadata i64 %133, metadata !5179, metadata !DIExpression()), !dbg !5181
  %134 = trunc i64 %133 to i32, !dbg !5194
  %135 = icmp eq i32 %53, %134, !dbg !5194
  br i1 %135, label %254, label %122, !dbg !5196, !llvm.loop !5222

136:                                              ; preds = %55
  %137 = getelementptr inbounds %struct.x264_frame_t, ptr %66, i64 0, i32 1
  %138 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 40
  %139 = load ptr, ptr %138, align 16, !tbaa !1681
  %140 = getelementptr inbounds %struct.x264_frame_t, ptr %139, i64 0, i32 1
  %141 = load i32, ptr %140, align 4, !tbaa !4141
  %142 = load i32, ptr %137, align 4, !tbaa !4141
  %143 = icmp eq i32 %141, %142
  %144 = getelementptr inbounds %struct.x264_frame_t, ptr %139, i64 0, i32 36
  %145 = getelementptr inbounds %struct.x264_frame_t, ptr %139, i64 0, i32 37
  br i1 %143, label %191, label %146, !dbg !5223

146:                                              ; preds = %136
  %147 = sext i32 %48 to i64, !dbg !5196
  %148 = xor i32 %48, -1, !dbg !5196
  %149 = add i32 %53, %148, !dbg !5196
  %150 = zext i32 %149 to i64, !dbg !5196
  %151 = add nuw nsw i64 %150, 1, !dbg !5196
  %152 = icmp ult i32 %149, 3, !dbg !5196
  br i1 %152, label %188, label %153, !dbg !5196

153:                                              ; preds = %146
  %154 = and i64 %151, -4, !dbg !5196
  %155 = add nsw i64 %154, %147, !dbg !5196
  %156 = insertelement <2 x double> <double poison, double 0.000000e+00>, double %49, i64 0, !dbg !5196
  %157 = fmul fast double %76, %69
  %158 = insertelement <2 x double> poison, double %157, i64 0
  %159 = shufflevector <2 x double> %158, <2 x double> poison, <2 x i32> zeroinitializer
  %160 = fmul fast double %76, %69
  %161 = insertelement <2 x double> poison, double %160, i64 0
  %162 = shufflevector <2 x double> %161, <2 x double> poison, <2 x i32> zeroinitializer
  br label %163, !dbg !5196

163:                                              ; preds = %163, %153
  %164 = phi i64 [ 0, %153 ], [ %182, %163 ]
  %165 = phi <2 x double> [ %156, %153 ], [ %180, %163 ]
  %166 = phi <2 x double> [ zeroinitializer, %153 ], [ %181, %163 ]
  %167 = add i64 %164, %147, !dbg !5196
  %168 = getelementptr inbounds i32, ptr %68, i64 %167, !dbg !5210
  %169 = load <2 x i32>, ptr %168, align 4, !dbg !5210, !tbaa !1667
  %170 = getelementptr inbounds i32, ptr %168, i64 2, !dbg !5210
  %171 = load <2 x i32>, ptr %170, align 4, !dbg !5210, !tbaa !1667
  %172 = sitofp <2 x i32> %169 to <2 x double>, !dbg !5210
  %173 = sitofp <2 x i32> %171 to <2 x double>, !dbg !5210
  %174 = fmul fast <2 x double> %159, %172
  %175 = fmul fast <2 x double> %162, %173
  %176 = fadd fast <2 x double> %174, %174, !dbg !5211
  %177 = fadd fast <2 x double> %175, %175, !dbg !5211
  %178 = fmul fast <2 x double> %176, <double 5.000000e-01, double 5.000000e-01>, !dbg !5212
  %179 = fmul fast <2 x double> %177, <double 5.000000e-01, double 5.000000e-01>, !dbg !5212
  %180 = fadd fast <2 x double> %178, %165, !dbg !5213
  %181 = fadd fast <2 x double> %179, %166, !dbg !5213
  %182 = add nuw i64 %164, 4
  %183 = icmp eq i64 %182, %154
  br i1 %183, label %184, label %163, !llvm.loop !5224

184:                                              ; preds = %163
  %185 = fadd fast <2 x double> %181, %180, !dbg !5196
  %186 = tail call fast double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %185), !dbg !5196
  %187 = icmp eq i64 %151, %154, !dbg !5196
  br i1 %187, label %254, label %188, !dbg !5196

188:                                              ; preds = %146, %184
  %189 = phi i64 [ %147, %146 ], [ %155, %184 ]
  %190 = phi double [ %49, %146 ], [ %186, %184 ]
  br label %240, !dbg !5196

191:                                              ; preds = %136
  %192 = getelementptr inbounds %struct.x264_frame_t, ptr %139, i64 0, i32 35
  %193 = load ptr, ptr %192, align 8, !tbaa !5047
  %194 = sext i32 %48 to i64, !dbg !5196
  %195 = fdiv fast double 1.000000e+00, %63
  br label %196, !dbg !5196

196:                                              ; preds = %227, %191
  %197 = phi i64 [ %237, %227 ], [ %194, %191 ]
  %198 = phi double [ %236, %227 ], [ %49, %191 ]
  call void @llvm.dbg.value(metadata double %198, metadata !5180, metadata !DIExpression()), !dbg !5181
  call void @llvm.dbg.value(metadata ptr %0, metadata !5203, metadata !DIExpression()), !dbg !5216
  call void @llvm.dbg.value(metadata i64 %197, metadata !5204, metadata !DIExpression()), !dbg !5216
  call void @llvm.dbg.value(metadata i32 %2, metadata !5205, metadata !DIExpression()), !dbg !5216
  call void @llvm.dbg.value(metadata ptr %57, metadata !5206, metadata !DIExpression()), !dbg !5216
  call void @llvm.dbg.value(metadata double %60, metadata !2044, metadata !DIExpression()), !dbg !5217
  %199 = getelementptr inbounds i32, ptr %68, i64 %197, !dbg !5210
  %200 = load i32, ptr %199, align 4, !dbg !5210, !tbaa !1667
  call void @llvm.dbg.value(metadata ptr undef, metadata !4443, metadata !DIExpression()), !dbg !5219
  call void @llvm.dbg.value(metadata double %64, metadata !4448, metadata !DIExpression()), !dbg !5219
  call void @llvm.dbg.value(metadata double poison, metadata !4449, metadata !DIExpression()), !dbg !5219
  call void @llvm.dbg.value(metadata double poison, metadata !5207, metadata !DIExpression()), !dbg !5216
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !5208, metadata !DIExpression()), !dbg !5216
  %201 = getelementptr inbounds i32, ptr %193, i64 %197, !dbg !5225
  %202 = load i32, ptr %201, align 4, !dbg !5225, !tbaa !1667
  %203 = icmp sgt i32 %202, 0, !dbg !5226
  br i1 %203, label %204, label %227, !dbg !5227

204:                                              ; preds = %196
  %205 = sub nsw i32 %202, %200, !dbg !5228
  %206 = tail call i32 @llvm.abs.i32(i32 %205, i1 true), !dbg !5229
  %207 = sdiv i32 %200, 2, !dbg !5230
  %208 = icmp slt i32 %206, %207, !dbg !5231
  br i1 %208, label %209, label %227, !dbg !5232

209:                                              ; preds = %204
  %210 = load ptr, ptr %144, align 8, !dbg !5233, !tbaa !4038
  %211 = getelementptr inbounds i32, ptr %210, i64 %197, !dbg !5235
  %212 = load i32, ptr %211, align 4, !dbg !5235, !tbaa !1667
  %213 = mul nsw i32 %212, %200, !dbg !5236
  %214 = sdiv i32 %213, %202, !dbg !5237
  %215 = sitofp i32 %214 to double, !dbg !5235
  %216 = load ptr, ptr %145, align 8, !dbg !5238, !tbaa !4990
  %217 = getelementptr inbounds i32, ptr %216, i64 %197, !dbg !5239
  %218 = load i32, ptr %217, align 4, !dbg !5239, !tbaa !1667
  %219 = sitofp i32 %218 to double, !dbg !5239
  call void @llvm.dbg.value(metadata double %219, metadata !2044, metadata !DIExpression()), !dbg !5240
  %220 = fmul fast double %219, 0x3FC5555555555555, !dbg !5242
  %221 = fadd fast double %220, -2.000000e+00, !dbg !5242
  %222 = tail call fast double @llvm.exp2.f64(double %221), !dbg !5243
  %223 = fmul fast double %215, 8.500000e-01, !dbg !5244
  %224 = fmul fast double %223, %222, !dbg !5245
  call void @llvm.dbg.value(metadata double %60, metadata !2044, metadata !DIExpression()), !dbg !5246
  %225 = fmul fast double %224, 0x3FF2D2D2D2D2D2D3
  %226 = fmul fast double %225, %195
  call void @llvm.dbg.value(metadata double %226, metadata !5208, metadata !DIExpression()), !dbg !5216
  br label %227, !dbg !5248

227:                                              ; preds = %209, %204, %196
  %228 = phi double [ %226, %209 ], [ 0.000000e+00, %204 ], [ 0.000000e+00, %196 ], !dbg !5216
  %229 = sitofp i32 %200 to double, !dbg !5210
  call void @llvm.dbg.value(metadata double %229, metadata !4449, metadata !DIExpression()), !dbg !5219
  %230 = fmul fast double %69, %229, !dbg !5221
  %231 = fmul fast double %230, %76
  call void @llvm.dbg.value(metadata double %231, metadata !5207, metadata !DIExpression()), !dbg !5216
  call void @llvm.dbg.value(metadata double %228, metadata !5208, metadata !DIExpression()), !dbg !5216
  %232 = fcmp fast oeq double %228, 0.000000e+00, !dbg !5249
  %233 = select i1 %232, double %231, double %228, !dbg !5251
  call void @llvm.dbg.value(metadata double %233, metadata !5208, metadata !DIExpression()), !dbg !5216
  %234 = fadd fast double %233, %231, !dbg !5211
  %235 = fmul fast double %234, 5.000000e-01, !dbg !5212
  %236 = fadd fast double %235, %198, !dbg !5213
  call void @llvm.dbg.value(metadata double %236, metadata !5180, metadata !DIExpression()), !dbg !5181
  call void @llvm.dbg.value(metadata i64 %197, metadata !5179, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !5181
  %237 = add nsw i64 %197, 1, !dbg !5186
  call void @llvm.dbg.value(metadata i64 %237, metadata !5179, metadata !DIExpression()), !dbg !5181
  %238 = trunc i64 %237 to i32, !dbg !5194
  %239 = icmp eq i32 %53, %238, !dbg !5194
  br i1 %239, label %254, label %196, !dbg !5196, !llvm.loop !5252

240:                                              ; preds = %188, %240
  %241 = phi i64 [ %251, %240 ], [ %189, %188 ]
  %242 = phi double [ %250, %240 ], [ %190, %188 ]
  call void @llvm.dbg.value(metadata double %242, metadata !5180, metadata !DIExpression()), !dbg !5181
  call void @llvm.dbg.value(metadata ptr %0, metadata !5203, metadata !DIExpression()), !dbg !5216
  call void @llvm.dbg.value(metadata i64 %241, metadata !5204, metadata !DIExpression()), !dbg !5216
  call void @llvm.dbg.value(metadata i32 %2, metadata !5205, metadata !DIExpression()), !dbg !5216
  call void @llvm.dbg.value(metadata ptr %57, metadata !5206, metadata !DIExpression()), !dbg !5216
  call void @llvm.dbg.value(metadata double %60, metadata !2044, metadata !DIExpression()), !dbg !5217
  %243 = getelementptr inbounds i32, ptr %68, i64 %241, !dbg !5210
  %244 = load i32, ptr %243, align 4, !dbg !5210, !tbaa !1667
  call void @llvm.dbg.value(metadata ptr undef, metadata !4443, metadata !DIExpression()), !dbg !5219
  call void @llvm.dbg.value(metadata double %64, metadata !4448, metadata !DIExpression()), !dbg !5219
  call void @llvm.dbg.value(metadata double poison, metadata !4449, metadata !DIExpression()), !dbg !5219
  call void @llvm.dbg.value(metadata double poison, metadata !5207, metadata !DIExpression()), !dbg !5216
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !5208, metadata !DIExpression()), !dbg !5216
  %245 = sitofp i32 %244 to double, !dbg !5210
  call void @llvm.dbg.value(metadata double %245, metadata !4449, metadata !DIExpression()), !dbg !5219
  %246 = fmul fast double %69, %245, !dbg !5221
  %247 = fmul fast double %246, %76
  call void @llvm.dbg.value(metadata double %247, metadata !5207, metadata !DIExpression()), !dbg !5216
  call void @llvm.dbg.value(metadata double poison, metadata !5208, metadata !DIExpression()), !dbg !5216
  %248 = fadd fast double %247, %247, !dbg !5211
  %249 = fmul fast double %248, 5.000000e-01, !dbg !5212
  %250 = fadd fast double %249, %242, !dbg !5213
  call void @llvm.dbg.value(metadata double %250, metadata !5180, metadata !DIExpression()), !dbg !5181
  call void @llvm.dbg.value(metadata i64 %241, metadata !5179, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !5181
  %251 = add nsw i64 %241, 1, !dbg !5186
  call void @llvm.dbg.value(metadata i64 %251, metadata !5179, metadata !DIExpression()), !dbg !5181
  %252 = trunc i64 %251 to i32, !dbg !5194
  %253 = icmp eq i32 %53, %252, !dbg !5194
  br i1 %253, label %254, label %240, !dbg !5196, !llvm.loop !5253

254:                                              ; preds = %240, %227, %122, %184, %115, %47
  %255 = phi double [ %49, %47 ], [ %117, %115 ], [ %186, %184 ], [ %132, %122 ], [ %236, %227 ], [ %250, %240 ], !dbg !5181
  ret double %255, !dbg !5254
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @x264_ratecontrol_qp(ptr nocapture noundef readonly %0) local_unnamed_addr #13 !dbg !5255 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5257, metadata !DIExpression()), !dbg !5258
  %2 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 46, !dbg !5259
  %3 = load ptr, ptr %2, align 16, !dbg !5259, !tbaa !1699
  %4 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 11, !dbg !5260
  %5 = load i32, ptr %4, align 4, !dbg !5260, !tbaa !4234
  ret i32 %5, !dbg !5261
}

; Function Attrs: nounwind uwtable
define dso_local i32 @x264_ratecontrol_slice_type(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !5262 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5266, metadata !DIExpression()), !dbg !5274
  call void @llvm.dbg.value(metadata i32 %1, metadata !5267, metadata !DIExpression()), !dbg !5274
  %3 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 46, !dbg !5275
  %4 = load ptr, ptr %3, align 16, !dbg !5275, !tbaa !1699
  call void @llvm.dbg.value(metadata ptr %4, metadata !5268, metadata !DIExpression()), !dbg !5274
  %5 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 17, !dbg !5276
  %6 = load i32, ptr %5, align 8, !dbg !5276, !tbaa !1809
  %7 = icmp eq i32 %6, 0, !dbg !5277
  br i1 %7, label %113, label %8, !dbg !5278

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 34, !dbg !5279
  %10 = load i32, ptr %9, align 8, !dbg !5279, !tbaa !2474
  %11 = icmp sgt i32 %10, %1, !dbg !5280
  br i1 %11, label %97, label %12, !dbg !5281

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47, i32 1, !dbg !5282
  %14 = load i32, ptr %13, align 8, !dbg !5283, !tbaa !1667
  %15 = icmp eq i32 %14, 0, !dbg !5284
  br i1 %15, label %16, label %18, !dbg !5285

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 1, !dbg !5286
  store i32 24, ptr %17, align 4, !dbg !5287, !tbaa !2067
  call void @llvm.dbg.value(metadata i32 24, metadata !1721, metadata !DIExpression()), !dbg !5288
  call void @llvm.dbg.value(metadata i32 0, metadata !1726, metadata !DIExpression()), !dbg !5288
  call void @llvm.dbg.value(metadata i32 51, metadata !1727, metadata !DIExpression()), !dbg !5288
  br label %29, !dbg !5290

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47, i32 3, !dbg !5291
  %20 = load double, ptr %19, align 8, !dbg !5292, !tbaa !2065
  %21 = sitofp i32 %14 to double, !dbg !5293
  %22 = fdiv fast double %20, %21, !dbg !5294
  %23 = fadd fast double %22, 1.000000e+00, !dbg !5295
  %24 = fptosi double %23 to i32, !dbg !5285
  %25 = freeze i32 %24, !dbg !5296
  %26 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 1, !dbg !5286
  store i32 %25, ptr %26, align 4, !dbg !5287, !tbaa !2067
  call void @llvm.dbg.value(metadata i32 %24, metadata !1721, metadata !DIExpression()), !dbg !5288
  call void @llvm.dbg.value(metadata i32 0, metadata !1726, metadata !DIExpression()), !dbg !5288
  call void @llvm.dbg.value(metadata i32 51, metadata !1727, metadata !DIExpression()), !dbg !5288
  %27 = tail call i32 @llvm.smin.i32(i32 %25, i32 51), !dbg !5290
  %28 = tail call i32 @llvm.smax.i32(i32 %27, i32 0), !dbg !5290
  br label %29, !dbg !5290

29:                                               ; preds = %18, %16
  %30 = phi ptr [ %17, %16 ], [ %26, %18 ]
  %31 = phi i32 [ 24, %16 ], [ %28, %18 ]
  %32 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 8, !dbg !5297
  store i32 %31, ptr %32, align 4, !dbg !5298, !tbaa !1667
  %33 = load i32, ptr %30, align 4, !dbg !5299, !tbaa !2067
  %34 = sitofp i32 %33 to double, !dbg !5300
  call void @llvm.dbg.value(metadata double %34, metadata !2044, metadata !DIExpression()), !dbg !5301
  %35 = fmul fast double %34, 0x3FC5555555555555, !dbg !5303
  %36 = fadd fast double %35, -2.000000e+00, !dbg !5303
  %37 = tail call fast double @llvm.exp2.f64(double %36), !dbg !5304
  %38 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 11, !dbg !5305
  %39 = load float, ptr %38, align 4, !dbg !5305, !tbaa !3121
  %40 = tail call fast float @llvm.fabs.f32(float %39), !dbg !5306
  %41 = fpext float %40 to double, !dbg !5306
  call void @llvm.dbg.value(metadata double poison, metadata !3210, metadata !DIExpression()), !dbg !5307
  %42 = fdiv fast double %37, %41, !dbg !5309
  %43 = tail call fast double @llvm.log.f64(double %42), !dbg !5310
  %44 = fmul fast double %43, 0x40214FF58BE0A23E, !dbg !5311
  %45 = fadd fast double %44, 1.250000e+01, !dbg !5312
  %46 = fptosi double %45 to i32, !dbg !5313
  call void @llvm.dbg.value(metadata i32 %46, metadata !1721, metadata !DIExpression()), !dbg !5314
  call void @llvm.dbg.value(metadata i32 0, metadata !1726, metadata !DIExpression()), !dbg !5314
  call void @llvm.dbg.value(metadata i32 51, metadata !1727, metadata !DIExpression()), !dbg !5314
  %47 = tail call i32 @llvm.smin.i32(i32 %46, i32 51), !dbg !5316
  %48 = tail call i32 @llvm.smax.i32(i32 %47, i32 0), !dbg !5316
  %49 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 8, i64 2, !dbg !5317
  store i32 %48, ptr %49, align 4, !dbg !5318, !tbaa !1667
  %50 = load i32, ptr %30, align 4, !dbg !5319, !tbaa !2067
  %51 = sitofp i32 %50 to double, !dbg !5320
  call void @llvm.dbg.value(metadata double %51, metadata !2044, metadata !DIExpression()), !dbg !5321
  %52 = fmul fast double %51, 0x3FC5555555555555, !dbg !5323
  %53 = fadd fast double %52, -2.000000e+00, !dbg !5323
  %54 = tail call fast double @llvm.exp2.f64(double %53), !dbg !5324
  %55 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 12, !dbg !5325
  %56 = load float, ptr %55, align 8, !dbg !5325, !tbaa !3146
  %57 = tail call fast float @llvm.fabs.f32(float %56), !dbg !5326
  %58 = fpext float %57 to double, !dbg !5326
  call void @llvm.dbg.value(metadata double poison, metadata !3210, metadata !DIExpression()), !dbg !5327
  %59 = fmul fast double %54, %58, !dbg !5329
  %60 = tail call fast double @llvm.log.f64(double %59), !dbg !5330
  %61 = fmul fast double %60, 0x40214FF58BE0A23E, !dbg !5331
  %62 = fadd fast double %61, 1.250000e+01, !dbg !5332
  %63 = fptosi double %62 to i32, !dbg !5333
  call void @llvm.dbg.value(metadata i32 %63, metadata !1721, metadata !DIExpression()), !dbg !5334
  call void @llvm.dbg.value(metadata i32 0, metadata !1726, metadata !DIExpression()), !dbg !5334
  call void @llvm.dbg.value(metadata i32 51, metadata !1727, metadata !DIExpression()), !dbg !5334
  %64 = tail call i32 @llvm.smin.i32(i32 %63, i32 51), !dbg !5336
  %65 = tail call i32 @llvm.smax.i32(i32 %64, i32 0), !dbg !5336
  %66 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 8, i64 1, !dbg !5337
  store i32 %65, ptr %66, align 4, !dbg !5338, !tbaa !1667
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.42, i32 noundef %10) #20, !dbg !5339
  %67 = load i32, ptr %30, align 4, !dbg !5340, !tbaa !2067
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.43, i32 noundef %67) #20, !dbg !5341
  %68 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 17, !dbg !5342
  %69 = load i32, ptr %68, align 4, !dbg !5342, !tbaa !2429
  %70 = icmp eq i32 %69, 0, !dbg !5344
  br i1 %70, label %72, label %71, !dbg !5345

71:                                               ; preds = %29
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.44) #20, !dbg !5346
  br label %72, !dbg !5346

72:                                               ; preds = %71, %29
  call void @llvm.dbg.value(metadata i32 0, metadata !5269, metadata !DIExpression()), !dbg !5347
  %73 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 1
  %74 = load i32, ptr %73, align 4, !tbaa !1791
  call void @llvm.dbg.value(metadata i32 0, metadata !5269, metadata !DIExpression()), !dbg !5347
  %75 = icmp sgt i32 %74, 0, !dbg !5348
  br i1 %75, label %76, label %113, !dbg !5351

76:                                               ; preds = %72
  %77 = zext i32 %74 to i64, !dbg !5348
  br label %78, !dbg !5351

78:                                               ; preds = %76, %94
  %79 = phi i64 [ 0, %76 ], [ %95, %94 ]
  call void @llvm.dbg.value(metadata i64 %79, metadata !5269, metadata !DIExpression()), !dbg !5347
  %80 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1, i64 %79, !dbg !5352
  %81 = load ptr, ptr %80, align 8, !dbg !5352, !tbaa !1681
  %82 = getelementptr inbounds %struct.x264_t, ptr %81, i64 0, i32 46, !dbg !5354
  %83 = load ptr, ptr %82, align 16, !dbg !5354, !tbaa !1699
  store i32 0, ptr %83, align 8, !dbg !5355, !tbaa !1806
  %84 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %83, i64 0, i32 1, !dbg !5356
  store i32 0, ptr %84, align 4, !dbg !5357, !tbaa !1814
  %85 = getelementptr inbounds %struct.x264_param_t, ptr %81, i64 0, i32 40, !dbg !5358
  store i32 0, ptr %85, align 8, !dbg !5359, !tbaa !1802
  %86 = getelementptr inbounds %struct.x264_param_t, ptr %81, i64 0, i32 40, i32 17, !dbg !5360
  store i32 0, ptr %86, align 8, !dbg !5361, !tbaa !1809
  %87 = getelementptr inbounds %struct.x264_param_t, ptr %81, i64 0, i32 17, !dbg !5362
  store i32 0, ptr %87, align 4, !dbg !5363, !tbaa !2429
  %88 = getelementptr inbounds %struct.x264_param_t, ptr %81, i64 0, i32 15, !dbg !5364
  store i32 0, ptr %88, align 4, !dbg !5365, !tbaa !2457
  %89 = getelementptr inbounds %struct.x264_param_t, ptr %81, i64 0, i32 14, !dbg !5366
  store i32 -1, ptr %89, align 8, !dbg !5367, !tbaa !2451
  %90 = getelementptr inbounds %struct.x264_param_t, ptr %81, i64 0, i32 16, !dbg !5368
  %91 = load i32, ptr %90, align 16, !dbg !5368, !tbaa !2033
  %92 = icmp sgt i32 %91, 1, !dbg !5370
  br i1 %92, label %93, label %94, !dbg !5371

93:                                               ; preds = %78
  store i32 1, ptr %90, align 16, !dbg !5372, !tbaa !2033
  br label %94, !dbg !5373

94:                                               ; preds = %78, %93
  %95 = add nuw nsw i64 %79, 1, !dbg !5374
  call void @llvm.dbg.value(metadata i64 %95, metadata !5269, metadata !DIExpression()), !dbg !5347
  %96 = icmp eq i64 %95, %77, !dbg !5348
  br i1 %96, label %113, label %78, !dbg !5351, !llvm.loop !5375

97:                                               ; preds = %8
  %98 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 35, !dbg !5377
  %99 = load ptr, ptr %98, align 8, !dbg !5377, !tbaa !2495
  %100 = sext i32 %1 to i64, !dbg !5378
  %101 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %99, i64 %100, !dbg !5378
  %102 = load i32, ptr %101, align 8, !dbg !5379, !tbaa !2506
  switch i32 %102, label %113 [
    i32 2, label %103
    i32 1, label %108
  ], !dbg !5380

103:                                              ; preds = %97
  %104 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %99, i64 %100, i32 1, !dbg !5381
  %105 = load i32, ptr %104, align 4, !dbg !5381, !tbaa !2566
  %106 = icmp eq i32 %105, 0, !dbg !5383
  %107 = select i1 %106, i32 2, i32 1, !dbg !5383
  br label %113, !dbg !5384

108:                                              ; preds = %97
  %109 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %99, i64 %100, i32 1, !dbg !5385
  %110 = load i32, ptr %109, align 4, !dbg !5385, !tbaa !2566
  %111 = icmp eq i32 %110, 0, !dbg !5386
  %112 = select i1 %111, i32 5, i32 4, !dbg !5386
  br label %113, !dbg !5387

113:                                              ; preds = %94, %72, %2, %97, %108, %103
  %114 = phi i32 [ %112, %108 ], [ %107, %103 ], [ 3, %97 ], [ 0, %2 ], [ 0, %72 ], [ 0, %94 ], !dbg !5388
  ret i32 %114, !dbg !5389
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: nounwind uwtable
define dso_local void @x264_ratecontrol_end(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !5390 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5392, metadata !DIExpression()), !dbg !5404
  call void @llvm.dbg.value(metadata i32 %1, metadata !5393, metadata !DIExpression()), !dbg !5404
  %3 = getelementptr %struct.x264_t, ptr %0, i64 0, i32 46, !dbg !5405
  %4 = load ptr, ptr %3, align 16, !dbg !5405, !tbaa !1699
  call void @llvm.dbg.value(metadata ptr %4, metadata !5394, metadata !DIExpression()), !dbg !5404
  %5 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47, i32 0, i32 3, !dbg !5406
  call void @llvm.dbg.value(metadata ptr %5, metadata !5395, metadata !DIExpression()), !dbg !5404
  tail call void @x264_emms() #20, !dbg !5407
  %6 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47, i32 0, i32 3, i64 6, !dbg !5408
  %7 = load i32, ptr %6, align 4, !dbg !5408, !tbaa !1667
  %8 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47, i32 0, i32 3, i64 18, !dbg !5409
  %9 = load i32, ptr %8, align 4, !dbg !5409, !tbaa !1667
  %10 = add nsw i32 %9, %7, !dbg !5410
  %11 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47, i32 0, i32 6, !dbg !5411
  store i32 %10, ptr %11, align 8, !dbg !5412, !tbaa !5413
  %12 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47, i32 0, i32 3, i64 2, !dbg !5414
  %13 = load i32, ptr %12, align 4, !dbg !5414, !tbaa !1667
  %14 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47, i32 0, i32 3, i64 1, !dbg !5415
  %15 = load i32, ptr %14, align 4, !dbg !5415, !tbaa !1667
  %16 = add nsw i32 %15, %13, !dbg !5416
  %17 = load i32, ptr %5, align 4, !dbg !5417, !tbaa !1667
  %18 = add nsw i32 %16, %17, !dbg !5418
  %19 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47, i32 0, i32 4, !dbg !5419
  store i32 %18, ptr %19, align 8, !dbg !5420, !tbaa !5421
  %20 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47, i32 0, i32 3, i64 4, !dbg !5422
  %21 = load i32, ptr %20, align 4, !dbg !5422, !tbaa !1667
  %22 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47, i32 0, i32 3, i64 5, !dbg !5423
  %23 = load i32, ptr %22, align 4, !dbg !5423, !tbaa !1667
  %24 = add nsw i32 %23, %21, !dbg !5424
  %25 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47, i32 0, i32 5, !dbg !5425
  call void @llvm.dbg.value(metadata i32 7, metadata !5397, metadata !DIExpression()), !dbg !5404
  call void @llvm.dbg.value(metadata i32 7, metadata !5397, metadata !DIExpression()), !dbg !5404
  call void @llvm.dbg.value(metadata i64 7, metadata !5397, metadata !DIExpression()), !dbg !5404
  %26 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47, i32 0, i32 3, i64 7, !dbg !5426
  %27 = load i32, ptr %26, align 4, !dbg !5426, !tbaa !1667
  %28 = add nsw i32 %24, %27, !dbg !5429
  call void @llvm.dbg.value(metadata i64 8, metadata !5397, metadata !DIExpression()), !dbg !5404
  call void @llvm.dbg.value(metadata i64 8, metadata !5397, metadata !DIExpression()), !dbg !5404
  %29 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47, i32 0, i32 3, i64 8, !dbg !5426
  %30 = load i32, ptr %29, align 4, !dbg !5426, !tbaa !1667
  %31 = add nsw i32 %28, %30, !dbg !5429
  call void @llvm.dbg.value(metadata i64 9, metadata !5397, metadata !DIExpression()), !dbg !5404
  call void @llvm.dbg.value(metadata i64 9, metadata !5397, metadata !DIExpression()), !dbg !5404
  %32 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47, i32 0, i32 3, i64 9, !dbg !5426
  %33 = load i32, ptr %32, align 4, !dbg !5426, !tbaa !1667
  %34 = add nsw i32 %31, %33, !dbg !5429
  call void @llvm.dbg.value(metadata i64 10, metadata !5397, metadata !DIExpression()), !dbg !5404
  call void @llvm.dbg.value(metadata i64 10, metadata !5397, metadata !DIExpression()), !dbg !5404
  %35 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47, i32 0, i32 3, i64 10, !dbg !5426
  %36 = load i32, ptr %35, align 4, !dbg !5426, !tbaa !1667
  %37 = add nsw i32 %34, %36, !dbg !5429
  call void @llvm.dbg.value(metadata i64 11, metadata !5397, metadata !DIExpression()), !dbg !5404
  call void @llvm.dbg.value(metadata i64 11, metadata !5397, metadata !DIExpression()), !dbg !5404
  %38 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47, i32 0, i32 3, i64 11, !dbg !5426
  %39 = load i32, ptr %38, align 4, !dbg !5426, !tbaa !1667
  %40 = add nsw i32 %37, %39, !dbg !5429
  call void @llvm.dbg.value(metadata i64 12, metadata !5397, metadata !DIExpression()), !dbg !5404
  call void @llvm.dbg.value(metadata i64 12, metadata !5397, metadata !DIExpression()), !dbg !5404
  %41 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47, i32 0, i32 3, i64 12, !dbg !5426
  %42 = load i32, ptr %41, align 4, !dbg !5426, !tbaa !1667
  %43 = add nsw i32 %40, %42, !dbg !5429
  call void @llvm.dbg.value(metadata i64 13, metadata !5397, metadata !DIExpression()), !dbg !5404
  call void @llvm.dbg.value(metadata i64 13, metadata !5397, metadata !DIExpression()), !dbg !5404
  %44 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47, i32 0, i32 3, i64 13, !dbg !5426
  %45 = load i32, ptr %44, align 4, !dbg !5426, !tbaa !1667
  %46 = add nsw i32 %43, %45, !dbg !5429
  call void @llvm.dbg.value(metadata i64 14, metadata !5397, metadata !DIExpression()), !dbg !5404
  call void @llvm.dbg.value(metadata i64 14, metadata !5397, metadata !DIExpression()), !dbg !5404
  %47 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47, i32 0, i32 3, i64 14, !dbg !5426
  %48 = load i32, ptr %47, align 4, !dbg !5426, !tbaa !1667
  %49 = add nsw i32 %46, %48, !dbg !5429
  call void @llvm.dbg.value(metadata i64 15, metadata !5397, metadata !DIExpression()), !dbg !5404
  call void @llvm.dbg.value(metadata i64 15, metadata !5397, metadata !DIExpression()), !dbg !5404
  %50 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47, i32 0, i32 3, i64 15, !dbg !5426
  %51 = load i32, ptr %50, align 4, !dbg !5426, !tbaa !1667
  %52 = add nsw i32 %49, %51, !dbg !5429
  call void @llvm.dbg.value(metadata i64 16, metadata !5397, metadata !DIExpression()), !dbg !5404
  call void @llvm.dbg.value(metadata i64 16, metadata !5397, metadata !DIExpression()), !dbg !5404
  %53 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47, i32 0, i32 3, i64 16, !dbg !5426
  %54 = load i32, ptr %53, align 4, !dbg !5426, !tbaa !1667
  %55 = add nsw i32 %52, %54, !dbg !5429
  store i32 %55, ptr %25, align 4, !dbg !5429, !tbaa !5430
  call void @llvm.dbg.value(metadata i64 17, metadata !5397, metadata !DIExpression()), !dbg !5404
  %56 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47, !dbg !5431
  %57 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, !dbg !5432
  %58 = load i32, ptr %57, align 16, !dbg !5433, !tbaa !1845
  %59 = sitofp i32 %58 to float, !dbg !5434
  %60 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 13, !dbg !5435
  %61 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 38, !dbg !5436
  %62 = load ptr, ptr %61, align 16, !dbg !5436, !tbaa !4036
  %63 = getelementptr inbounds %struct.x264_frame_t, ptr %62, i64 0, i32 7, !dbg !5437
  %64 = load <2 x float>, ptr %60, align 4, !dbg !5438, !tbaa !1622
  %65 = insertelement <2 x float> poison, float %59, i64 0, !dbg !5439
  %66 = shufflevector <2 x float> %65, <2 x float> poison, <2 x i32> zeroinitializer, !dbg !5439
  %67 = fdiv fast <2 x float> %64, %66, !dbg !5438
  %68 = extractelement <2 x float> %67, i64 0, !dbg !5440
  store float %68, ptr %63, align 4, !dbg !5440, !tbaa !4242
  store <2 x float> %67, ptr %60, align 4, !dbg !5438, !tbaa !1622
  %69 = getelementptr inbounds %struct.x264_frame_t, ptr %62, i64 0, i32 8, !dbg !5441
  %70 = extractelement <2 x float> %67, i64 1, !dbg !5442
  store float %70, ptr %69, align 8, !dbg !5442, !tbaa !4239
  %71 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 15, !dbg !5443
  %72 = load i32, ptr %71, align 4, !dbg !5443, !tbaa !2606
  %73 = icmp eq i32 %72, 0, !dbg !5444
  br i1 %73, label %130, label %74, !dbg !5445

74:                                               ; preds = %2
  %75 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 33, i32 2, !dbg !5446
  %76 = load i32, ptr %75, align 8, !dbg !5446, !tbaa !4012
  switch i32 %76, label %83 [
    i32 2, label %77
    i32 0, label %90
  ], !dbg !5447

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 37, !dbg !5448
  %79 = load ptr, ptr %78, align 8, !dbg !5448, !tbaa !1704
  %80 = load i32, ptr %79, align 8, !dbg !5449, !tbaa !4387
  %81 = icmp eq i32 %80, 0, !dbg !5450
  %82 = select i1 %81, i32 73, i32 105, !dbg !5451
  br label %90, !dbg !5447

83:                                               ; preds = %74
  %84 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 37, !dbg !5452
  %85 = load ptr, ptr %84, align 8, !dbg !5452, !tbaa !1704
  %86 = getelementptr inbounds %struct.x264_frame_t, ptr %85, i64 0, i32 6, !dbg !5453
  %87 = load i32, ptr %86, align 8, !dbg !5453, !tbaa !4190
  %88 = icmp eq i32 %87, 0, !dbg !5454
  %89 = select i1 %88, i32 98, i32 66, !dbg !5454
  br label %90, !dbg !5455

90:                                               ; preds = %74, %83, %77
  %91 = phi i32 [ %82, %77 ], [ %89, %83 ], [ 80, %74 ], !dbg !5447
  call void @llvm.dbg.value(metadata i8 poison, metadata !5398, metadata !DIExpression()), !dbg !5456
  %92 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47, i32 0, i32 13, !dbg !5457
  %93 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47, i32 0, i32 13, i64 1, !dbg !5458
  %94 = load i32, ptr %93, align 4, !dbg !5458, !tbaa !1667
  %95 = load i32, ptr %92, align 4, !dbg !5459, !tbaa !1667
  %96 = sub nsw i32 %94, %95, !dbg !5460
  call void @llvm.dbg.value(metadata i32 %96, metadata !5401, metadata !DIExpression()), !dbg !5456
  %97 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47, i32 15, !dbg !5461
  %98 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47, i32 15, i64 1, !dbg !5462
  %99 = load i32, ptr %98, align 4, !dbg !5462, !tbaa !1667
  %100 = load i32, ptr %97, align 8, !dbg !5463, !tbaa !1667
  call void @llvm.dbg.value(metadata !DIArgList(i32 %99, i32 %100), metadata !5402, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5456
  %101 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 65, !dbg !5464
  %102 = load i32, ptr %101, align 4, !dbg !5464, !tbaa !5465
  %103 = icmp eq i32 %102, 0, !dbg !5466
  br i1 %103, label %113, label %104, !dbg !5466

104:                                              ; preds = %90
  %105 = icmp sgt i32 %96, 0, !dbg !5467
  br i1 %105, label %113, label %106, !dbg !5468

106:                                              ; preds = %104
  %107 = icmp slt i32 %96, 0, !dbg !5469
  br i1 %107, label %113, label %108, !dbg !5470

108:                                              ; preds = %106
  %109 = icmp sgt i32 %99, %100, !dbg !5471
  br i1 %109, label %113, label %110, !dbg !5472

110:                                              ; preds = %108
  %111 = icmp eq i32 %99, %100, !dbg !5473
  %112 = select i1 %111, i32 45, i32 116, !dbg !5466
  br label %113, !dbg !5472

113:                                              ; preds = %90, %104, %110, %108, %106
  %114 = phi i32 [ 115, %104 ], [ 116, %106 ], [ %112, %110 ], [ 115, %108 ], [ 45, %90 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !5403, metadata !DIExpression()), !dbg !5456
  %115 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 32, !dbg !5474
  %116 = load ptr, ptr %115, align 8, !dbg !5474, !tbaa !2624
  %117 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 37, !dbg !5475
  %118 = load ptr, ptr %117, align 8, !dbg !5475, !tbaa !1704
  %119 = getelementptr inbounds %struct.x264_frame_t, ptr %118, i64 0, i32 4, !dbg !5476
  %120 = load i32, ptr %119, align 8, !dbg !5476, !tbaa !3960
  %121 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 6, !dbg !5477
  %122 = load i32, ptr %121, align 16, !dbg !5477, !tbaa !3840
  %123 = fpext float %68 to double, !dbg !5478
  %124 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47, i32 0, i32 1, !dbg !5479
  %125 = load i32, ptr %124, align 4, !dbg !5479, !tbaa !5480
  %126 = load i32, ptr %56, align 8, !dbg !5481, !tbaa !5482
  %127 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47, i32 0, i32 2, !dbg !5483
  %128 = load i32, ptr %127, align 8, !dbg !5483, !tbaa !5484
  %129 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %116, ptr noundef nonnull @.str.45, i32 noundef %120, i32 noundef %122, i32 noundef %91, double noundef %123, i32 noundef %125, i32 noundef %126, i32 noundef %128, i32 noundef %18, i32 noundef %55, i32 noundef %10, i32 noundef %114), !dbg !5485
  br label %130, !dbg !5486

130:                                              ; preds = %113, %2
  %131 = load i32, ptr %4, align 8, !dbg !5487, !tbaa !1806
  %132 = icmp eq i32 %131, 0, !dbg !5489
  br i1 %132, label %193, label %133, !dbg !5490

133:                                              ; preds = %130
  %134 = getelementptr %struct.x264_t, ptr %0, i64 0, i32 33, i32 2, !dbg !5491
  %135 = load i32, ptr %134, align 8, !dbg !5491, !tbaa !4012
  %136 = icmp eq i32 %135, 1, !dbg !5494
  %137 = sitofp i32 %1 to double, !dbg !5495
  %138 = load float, ptr %60, align 4, !dbg !5495, !tbaa !5496
  %139 = fpext float %138 to double, !dbg !5495
  call void @llvm.dbg.value(metadata double %139, metadata !2044, metadata !DIExpression()), !dbg !5497
  call void @llvm.dbg.value(metadata double %139, metadata !2044, metadata !DIExpression()), !dbg !5500
  %140 = fmul fast double %139, 0x3FC5555555555555, !dbg !5495
  %141 = fadd fast double %140, -2.000000e+00, !dbg !5495
  %142 = tail call fast double @llvm.exp2.f64(double %141), !dbg !5495
  %143 = fmul fast double %137, 8.500000e-01, !dbg !5495
  %144 = fmul fast double %143, %142, !dbg !5495
  %145 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 22, !dbg !5495
  %146 = load double, ptr %145, align 8, !dbg !5495, !tbaa !2954
  br i1 %136, label %147, label %153, !dbg !5502

147:                                              ; preds = %133
  %148 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 12, !dbg !5503
  %149 = load float, ptr %148, align 8, !dbg !5503, !tbaa !3146
  %150 = tail call fast float @llvm.fabs.f32(float %149), !dbg !5504
  %151 = fpext float %150 to double, !dbg !5504
  %152 = fmul fast double %146, %151, !dbg !5505
  br label %153

153:                                              ; preds = %133, %147
  %154 = phi double [ %152, %147 ], [ %146, %133 ]
  %155 = fdiv fast double %144, %154, !dbg !5495
  %156 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 23, !dbg !5495
  %157 = load double, ptr %156, align 8, !dbg !5495, !tbaa !2020
  %158 = fadd fast double %155, %157, !dbg !5495
  %159 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 26, !dbg !5506
  %160 = load double, ptr %159, align 8, !dbg !5506, !tbaa !1854
  %161 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 23, !dbg !5507
  %162 = fmul fast double %158, %160, !dbg !5508
  store double %162, ptr %161, align 8, !dbg !5508, !tbaa !2020
  %163 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 5, !dbg !5509
  %164 = load double, ptr %163, align 8, !dbg !5509, !tbaa !1836
  %165 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 4, !dbg !5510
  %166 = load double, ptr %165, align 8, !dbg !5510, !tbaa !1829
  %167 = fdiv fast double %164, %166, !dbg !5511
  %168 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 25, !dbg !5512
  %169 = load double, ptr %168, align 8, !dbg !5513, !tbaa !2026
  %170 = fadd fast double %169, %167, !dbg !5513
  %171 = fmul fast double %170, %160, !dbg !5514
  store double %171, ptr %168, align 8, !dbg !5514, !tbaa !2026
  %172 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 1, !dbg !5515
  %173 = load i32, ptr %172, align 4, !dbg !5515, !tbaa !1791
  %174 = icmp eq i32 %173, 1, !dbg !5517
  br i1 %174, label %175, label %193, !dbg !5518

175:                                              ; preds = %153
  %176 = load ptr, ptr %3, align 16, !dbg !5519, !tbaa !1699
  call void @llvm.dbg.value(metadata ptr undef, metadata !4256, metadata !DIExpression()), !dbg !5520
  call void @llvm.dbg.value(metadata float %138, metadata !4261, metadata !DIExpression()), !dbg !5520
  call void @llvm.dbg.value(metadata ptr %176, metadata !4262, metadata !DIExpression()), !dbg !5520
  %177 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %176, i64 0, i32 39, !dbg !5522
  %178 = load double, ptr %177, align 8, !dbg !5523, !tbaa !2008
  %179 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %176, i64 0, i32 40, !dbg !5524
  %180 = load double, ptr %179, align 8, !dbg !5525, !tbaa !2002
  %181 = fmul fast double %180, 0x3FEE666666666666, !dbg !5525
  %182 = fadd fast double %181, 1.000000e+00, !dbg !5526
  store double %182, ptr %179, align 8, !dbg !5526, !tbaa !2002
  %183 = icmp eq i32 %135, 2, !dbg !5527
  %184 = fpext float %138 to double, !dbg !5528
  br i1 %183, label %185, label %189, !dbg !5529

185:                                              ; preds = %175
  %186 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %176, i64 0, i32 30, !dbg !5530
  %187 = load double, ptr %186, align 8, !dbg !5530, !tbaa !4275
  %188 = fadd fast double %187, %184, !dbg !5531
  br label %189, !dbg !5532

189:                                              ; preds = %175, %185
  %190 = phi double [ %188, %185 ], [ %184, %175 ]
  %191 = fmul fast double %178, 0x3FEE666666666666, !dbg !5523
  %192 = fadd fast double %190, %191, !dbg !5528
  store double %192, ptr %177, align 8, !dbg !5528, !tbaa !2008
  br label %193, !dbg !5519

193:                                              ; preds = %153, %189, %130
  %194 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 1, !dbg !5533
  %195 = load i32, ptr %194, align 4, !dbg !5533, !tbaa !1814
  %196 = icmp eq i32 %195, 0, !dbg !5535
  br i1 %196, label %236, label %197, !dbg !5536

197:                                              ; preds = %193
  %198 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 9, !dbg !5537
  %199 = load ptr, ptr %198, align 8, !dbg !5537, !tbaa !4009
  %200 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %199, i64 0, i32 9, !dbg !5539
  %201 = load i32, ptr %200, align 4, !dbg !5539, !tbaa !2521
  %202 = sitofp i32 %201 to double, !dbg !5540
  call void @llvm.dbg.value(metadata double %202, metadata !2044, metadata !DIExpression()), !dbg !5541
  %203 = fmul fast double %202, 0x3FC5555555555555, !dbg !5543
  %204 = fadd fast double %203, -2.000000e+00, !dbg !5543
  %205 = tail call fast double @llvm.exp2.f64(double %204), !dbg !5544
  %206 = fmul fast double %205, 8.500000e-01, !dbg !5545
  call void @llvm.dbg.value(metadata ptr %199, metadata !2814, metadata !DIExpression()), !dbg !5546
  call void @llvm.dbg.value(metadata double %206, metadata !2819, metadata !DIExpression()), !dbg !5546
  %207 = fcmp fast olt double %206, 1.000000e-01, !dbg !5548
  %208 = select i1 %207, double 1.000000e-01, double %206, !dbg !5549
  call void @llvm.dbg.value(metadata double %208, metadata !2819, metadata !DIExpression()), !dbg !5546
  %209 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %199, i64 0, i32 4, !dbg !5550
  %210 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %199, i64 0, i32 2, !dbg !5551
  %211 = load float, ptr %210, align 8, !dbg !5551, !tbaa !2515
  %212 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %199, i64 0, i32 3, !dbg !5552
  %213 = load i32, ptr %212, align 4, !dbg !5552, !tbaa !2941
  %214 = fpext float %211 to double, !dbg !5553
  %215 = fcmp fast ole float %211, 1.000000e+00, !dbg !5553
  %216 = select fast i1 %215, float 1.000000e+00, float %211, !dbg !5553
  %217 = fpext float %216 to double, !dbg !5553
  %218 = sitofp i32 %213 to double, !dbg !5554
  %219 = fdiv fast double %214, %208, !dbg !5555
  %220 = tail call fast double @llvm.pow.f64(double %219, double 1.100000e+00), !dbg !5556
  %221 = tail call fast double @llvm.maxnum.f64(double %208, double 1.000000e+00), !dbg !5557
  %222 = fdiv fast double %217, %221, !dbg !5558
  %223 = tail call fast double @llvm.sqrt.f64(double %222), !dbg !5559
  %224 = fmul fast double %223, %218, !dbg !5560
  %225 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 24, !dbg !5561
  %226 = load double, ptr %225, align 8, !dbg !5562, !tbaa !4569
  %227 = load <2 x i32>, ptr %209, align 8, !dbg !5550, !tbaa !1667
  %228 = sitofp <2 x i32> %227 to <2 x double>, !dbg !5563
  %229 = insertelement <2 x double> <double 1.000000e-01, double poison>, double %226, i64 1, !dbg !5564
  %230 = fadd fast <2 x double> %229, %228, !dbg !5565
  %231 = extractelement <2 x double> %230, i64 0, !dbg !5566
  %232 = fmul fast double %220, %231, !dbg !5566
  %233 = extractelement <2 x double> %230, i64 1, !dbg !5567
  %234 = fadd fast double %233, %232, !dbg !5567
  %235 = fadd fast double %234, %224, !dbg !5562
  store double %235, ptr %225, align 8, !dbg !5562, !tbaa !4569
  br label %236, !dbg !5568

236:                                              ; preds = %197, %193
  %237 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45, i32 62, !dbg !5569
  %238 = load i32, ptr %237, align 16, !dbg !5569, !tbaa !1993
  %239 = icmp eq i32 %238, 0, !dbg !5571
  br i1 %239, label %291, label %240, !dbg !5572

240:                                              ; preds = %236
  %241 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 33, i32 2, !dbg !5573
  %242 = load i32, ptr %241, align 8, !dbg !5573, !tbaa !4012
  %243 = icmp eq i32 %242, 1, !dbg !5576
  br i1 %243, label %244, label %291, !dbg !5577

244:                                              ; preds = %240
  %245 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 51, !dbg !5578
  %246 = load i32, ptr %245, align 4, !dbg !5580, !tbaa !5581
  %247 = add nsw i32 %246, %1, !dbg !5580
  store i32 %247, ptr %245, align 4, !dbg !5580, !tbaa !5581
  %248 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 36, !dbg !5582
  %249 = load ptr, ptr %248, align 16, !dbg !5584, !tbaa !1681
  %250 = icmp eq ptr %249, null, !dbg !5584
  br i1 %250, label %256, label %251, !dbg !5585

251:                                              ; preds = %244
  %252 = getelementptr inbounds %struct.x264_frame_t, ptr %249, i64 0, i32 1, !dbg !5586
  %253 = load i32, ptr %252, align 4, !dbg !5586, !tbaa !4141
  %254 = and i32 %253, -2, !dbg !5586
  %255 = icmp eq i32 %254, 4, !dbg !5586
  br i1 %255, label %291, label %256, !dbg !5586

256:                                              ; preds = %251, %244
  call void @llvm.dbg.value(metadata double poison, metadata !2044, metadata !DIExpression()), !dbg !5587
  %257 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, !dbg !5590
  %258 = load i32, ptr %257, align 8, !dbg !5590, !tbaa !4438
  %259 = add nsw i32 %258, -1, !dbg !5591
  %260 = sext i32 %259 to i64, !dbg !5592
  %261 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 42, i64 %260, !dbg !5592
  %262 = load ptr, ptr %261, align 8, !dbg !5592, !tbaa !1681
  %263 = getelementptr inbounds %struct.x264_frame_t, ptr %262, i64 0, i32 32, !dbg !5593
  %264 = load i32, ptr %263, align 8, !dbg !5593, !tbaa !4442
  call void @llvm.dbg.value(metadata ptr poison, metadata !5049, metadata !DIExpression()), !dbg !5594
  call void @llvm.dbg.value(metadata double poison, metadata !5054, metadata !DIExpression()), !dbg !5594
  call void @llvm.dbg.value(metadata double poison, metadata !5055, metadata !DIExpression()), !dbg !5594
  call void @llvm.dbg.value(metadata double poison, metadata !5056, metadata !DIExpression()), !dbg !5594
  %265 = icmp slt i32 %264, 10, !dbg !5596
  br i1 %265, label %290, label %266, !dbg !5597

266:                                              ; preds = %256
  %267 = sitofp i32 %264 to double, !dbg !5592
  call void @llvm.dbg.value(metadata double %267, metadata !5055, metadata !DIExpression()), !dbg !5594
  %268 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 50, !dbg !5598
  %269 = load i32, ptr %268, align 8, !dbg !5598, !tbaa !4146
  %270 = sdiv i32 %247, %269, !dbg !5599
  %271 = sitofp i32 %270 to double, !dbg !5600
  call void @llvm.dbg.value(metadata double %271, metadata !5056, metadata !DIExpression()), !dbg !5594
  %272 = load float, ptr %60, align 4, !dbg !5601, !tbaa !5496
  %273 = fpext float %272 to double, !dbg !5602
  call void @llvm.dbg.value(metadata double %273, metadata !2044, metadata !DIExpression()), !dbg !5587
  %274 = fmul fast double %273, 0x3FC5555555555555, !dbg !5603
  %275 = fadd fast double %274, -2.000000e+00, !dbg !5603
  %276 = tail call fast double @llvm.exp2.f64(double %275), !dbg !5604
  call void @llvm.dbg.value(metadata double poison, metadata !5054, metadata !DIExpression()), !dbg !5594
  %277 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 49, !dbg !5605
  %278 = load ptr, ptr %277, align 8, !dbg !5605, !tbaa !2108
  call void @llvm.dbg.value(metadata ptr %278, metadata !5049, metadata !DIExpression()), !dbg !5594
  %279 = getelementptr inbounds %struct.predictor_t, ptr %278, i64 0, i32 2, !dbg !5606
  %280 = load double, ptr %279, align 8, !dbg !5606, !tbaa !2131
  %281 = fmul fast double %271, 8.500000e-01, !dbg !5607
  %282 = fmul fast double %281, %276, !dbg !5608
  %283 = fdiv fast double %282, %267, !dbg !5609
  %284 = load <2 x double>, ptr %278, align 8, !dbg !5610, !tbaa !2065
  %285 = insertelement <2 x double> poison, double %280, i64 0, !dbg !5611
  %286 = shufflevector <2 x double> %285, <2 x double> poison, <2 x i32> zeroinitializer, !dbg !5611
  %287 = fmul fast <2 x double> %284, %286, !dbg !5610
  %288 = insertelement <2 x double> <double poison, double 1.000000e+00>, double %283, i64 0, !dbg !5612
  %289 = fadd fast <2 x double> %287, %288, !dbg !5613
  store <2 x double> %289, ptr %278, align 8, !dbg !5613, !tbaa !2065
  br label %290, !dbg !5614

290:                                              ; preds = %256, %266
  store i32 0, ptr %245, align 4, !dbg !5615, !tbaa !5581
  br label %291, !dbg !5616

291:                                              ; preds = %251, %240, %290, %236
  call void @llvm.dbg.value(metadata ptr %0, metadata !5617, metadata !DIExpression()), !dbg !5623
  call void @llvm.dbg.value(metadata i32 %1, metadata !5620, metadata !DIExpression()), !dbg !5623
  %292 = load ptr, ptr %3, align 16, !dbg !5625, !tbaa !1699
  call void @llvm.dbg.value(metadata ptr %292, metadata !5621, metadata !DIExpression()), !dbg !5623
  %293 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1, !dbg !5626
  %294 = load ptr, ptr %293, align 8, !dbg !5627, !tbaa !1681
  %295 = getelementptr inbounds %struct.x264_t, ptr %294, i64 0, i32 46, !dbg !5628
  %296 = load ptr, ptr %295, align 16, !dbg !5628, !tbaa !1699
  call void @llvm.dbg.value(metadata ptr %296, metadata !5622, metadata !DIExpression()), !dbg !5623
  %297 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %292, i64 0, i32 21, !dbg !5629
  %298 = load i32, ptr %297, align 8, !dbg !5629, !tbaa !4472
  %299 = load i32, ptr %57, align 16, !dbg !5631, !tbaa !1845
  %300 = icmp slt i32 %298, %299, !dbg !5632
  %301 = icmp slt i32 %298, 10
  %302 = or i1 %301, %300, !dbg !5633
  call void @llvm.dbg.value(metadata double poison, metadata !2044, metadata !DIExpression()), !dbg !5634
  call void @llvm.dbg.value(metadata !DIArgList(ptr poison, i32 poison), metadata !5049, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 24, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5636
  call void @llvm.dbg.value(metadata double poison, metadata !5054, metadata !DIExpression()), !dbg !5636
  call void @llvm.dbg.value(metadata double poison, metadata !5055, metadata !DIExpression()), !dbg !5636
  call void @llvm.dbg.value(metadata double poison, metadata !5056, metadata !DIExpression()), !dbg !5636
  br i1 %302, label %329, label %303, !dbg !5633

303:                                              ; preds = %291
  %304 = sitofp i32 %298 to double, !dbg !5638
  call void @llvm.dbg.value(metadata double %304, metadata !5055, metadata !DIExpression()), !dbg !5636
  %305 = sitofp i32 %1 to double, !dbg !5639
  call void @llvm.dbg.value(metadata double %305, metadata !5056, metadata !DIExpression()), !dbg !5636
  %306 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %292, i64 0, i32 13, !dbg !5640
  %307 = load float, ptr %306, align 4, !dbg !5640, !tbaa !5496
  %308 = fpext float %307 to double, !dbg !5641
  call void @llvm.dbg.value(metadata double %308, metadata !2044, metadata !DIExpression()), !dbg !5634
  %309 = fmul fast double %308, 0x3FC5555555555555, !dbg !5642
  %310 = fadd fast double %309, -2.000000e+00, !dbg !5642
  %311 = tail call fast double @llvm.exp2.f64(double %310), !dbg !5643
  call void @llvm.dbg.value(metadata double poison, metadata !5054, metadata !DIExpression()), !dbg !5636
  %312 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %296, i64 0, i32 20, !dbg !5644
  %313 = load ptr, ptr %312, align 8, !dbg !5644, !tbaa !2104
  %314 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 33, i32 2, !dbg !5645
  %315 = load i32, ptr %314, align 8, !dbg !5645, !tbaa !4012
  call void @llvm.dbg.value(metadata !DIArgList(ptr %313, i32 %315), metadata !5049, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 24, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5636
  %316 = sext i32 %315 to i64, !dbg !5646
  call void @llvm.dbg.value(metadata !DIArgList(ptr %313, i64 %316), metadata !5049, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 24, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5636
  %317 = getelementptr inbounds %struct.predictor_t, ptr %313, i64 %316, !dbg !5646
  call void @llvm.dbg.value(metadata ptr %317, metadata !5049, metadata !DIExpression()), !dbg !5636
  %318 = getelementptr inbounds %struct.predictor_t, ptr %313, i64 %316, i32 2, !dbg !5647
  %319 = load double, ptr %318, align 8, !dbg !5647, !tbaa !2131
  %320 = fmul fast double %305, 8.500000e-01, !dbg !5648
  %321 = fmul fast double %320, %311, !dbg !5649
  %322 = fdiv fast double %321, %304, !dbg !5650
  %323 = load <2 x double>, ptr %317, align 8, !dbg !5651, !tbaa !2065
  %324 = insertelement <2 x double> poison, double %319, i64 0, !dbg !5652
  %325 = shufflevector <2 x double> %324, <2 x double> poison, <2 x i32> zeroinitializer, !dbg !5652
  %326 = fmul fast <2 x double> %323, %325, !dbg !5651
  %327 = insertelement <2 x double> <double poison, double 1.000000e+00>, double %322, i64 0, !dbg !5653
  %328 = fadd fast <2 x double> %326, %327, !dbg !5654
  store <2 x double> %328, ptr %317, align 8, !dbg !5654, !tbaa !2065
  br label %329, !dbg !5655

329:                                              ; preds = %303, %291
  %330 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %292, i64 0, i32 2, !dbg !5656
  %331 = load i32, ptr %330, align 8, !dbg !5656, !tbaa !1959
  %332 = icmp eq i32 %331, 0, !dbg !5658
  br i1 %332, label %352, label %333, !dbg !5659

333:                                              ; preds = %329
  %334 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %296, i64 0, i32 19, !dbg !5660
  %335 = load double, ptr %334, align 8, !dbg !5660, !tbaa !1941
  %336 = sitofp i32 %1 to double, !dbg !5661
  %337 = fsub fast double %335, %336, !dbg !5662
  %338 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %296, i64 0, i32 17, !dbg !5663
  %339 = load double, ptr %338, align 8, !dbg !5664, !tbaa !1951
  %340 = fadd fast double %339, %337, !dbg !5664
  store double %340, ptr %338, align 8, !dbg !5664, !tbaa !1951
  %341 = fcmp fast olt double %340, 0.000000e+00, !dbg !5665
  br i1 %341, label %342, label %344, !dbg !5667

342:                                              ; preds = %333
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.55, double noundef %340) #20, !dbg !5668
  %343 = load double, ptr %338, align 8, !dbg !5669, !tbaa !1951
  br label %344, !dbg !5668

344:                                              ; preds = %342, %333
  %345 = phi double [ %343, %342 ], [ %340, %333 ], !dbg !5669
  %346 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %296, i64 0, i32 16, !dbg !5670
  %347 = load double, ptr %346, align 8, !dbg !5670, !tbaa !1946
  call void @llvm.dbg.value(metadata double %345, metadata !1920, metadata !DIExpression()), !dbg !5671
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1925, metadata !DIExpression()), !dbg !5671
  call void @llvm.dbg.value(metadata double %347, metadata !1926, metadata !DIExpression()), !dbg !5671
  %348 = fcmp fast olt double %345, 0.000000e+00, !dbg !5673
  %349 = fcmp fast ogt double %345, %347, !dbg !5674
  %350 = select fast i1 %349, double %347, double %345, !dbg !5674
  %351 = select fast i1 %348, double 0.000000e+00, double %350, !dbg !5674
  store double %351, ptr %338, align 8, !dbg !5675, !tbaa !1951
  br label %352, !dbg !5676

352:                                              ; preds = %329, %344
  ret void, !dbg !5677
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_thread_sync_ratecontrol(ptr noundef readonly %0, ptr noundef readonly %1, ptr noundef readonly %2) local_unnamed_addr #14 !dbg !5678 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5682, metadata !DIExpression()), !dbg !5685
  call void @llvm.dbg.value(metadata ptr %1, metadata !5683, metadata !DIExpression()), !dbg !5685
  call void @llvm.dbg.value(metadata ptr %2, metadata !5684, metadata !DIExpression()), !dbg !5685
  %4 = icmp eq ptr %0, %1, !dbg !5686
  br i1 %4, label %57, label %5, !dbg !5688

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 46, !dbg !5689
  %7 = load ptr, ptr %6, align 16, !dbg !5689, !tbaa !1699
  %8 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %7, i64 0, i32 39, !dbg !5689
  %9 = getelementptr inbounds %struct.x264_t, ptr %1, i64 0, i32 46, !dbg !5689
  %10 = load ptr, ptr %9, align 16, !dbg !5689, !tbaa !1699
  %11 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %10, i64 0, i32 39, !dbg !5689
  %12 = load i64, ptr %11, align 8, !dbg !5689
  store i64 %12, ptr %8, align 8, !dbg !5689
  %13 = load ptr, ptr %6, align 16, !dbg !5691, !tbaa !1699
  %14 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %13, i64 0, i32 40, !dbg !5691
  %15 = load ptr, ptr %9, align 16, !dbg !5691, !tbaa !1699
  %16 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %15, i64 0, i32 40, !dbg !5691
  %17 = load i64, ptr %16, align 8, !dbg !5691
  store i64 %17, ptr %14, align 8, !dbg !5691
  %18 = load ptr, ptr %6, align 16, !dbg !5692, !tbaa !1699
  %19 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %18, i64 0, i32 21, !dbg !5692
  %20 = load ptr, ptr %9, align 16, !dbg !5692, !tbaa !1699
  %21 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %20, i64 0, i32 21, !dbg !5692
  %22 = load i32, ptr %21, align 8, !dbg !5692
  store i32 %22, ptr %19, align 8, !dbg !5692
  %23 = load ptr, ptr %6, align 16, !dbg !5693, !tbaa !1699
  %24 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %23, i64 0, i32 22, !dbg !5693
  %25 = load ptr, ptr %9, align 16, !dbg !5693, !tbaa !1699
  %26 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %25, i64 0, i32 22, !dbg !5693
  %27 = load i64, ptr %26, align 8, !dbg !5693
  store i64 %27, ptr %24, align 8, !dbg !5693
  %28 = load ptr, ptr %6, align 16, !dbg !5694, !tbaa !1699
  %29 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %28, i64 0, i32 37, !dbg !5694
  %30 = load ptr, ptr %9, align 16, !dbg !5694, !tbaa !1699
  %31 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %30, i64 0, i32 37, !dbg !5694
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %29, ptr noundef nonnull align 8 dereferenceable(40) %31, i64 40, i1 false), !dbg !5694
  %32 = load ptr, ptr %6, align 16, !dbg !5695, !tbaa !1699
  %33 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %32, i64 0, i32 38, !dbg !5695
  %34 = load ptr, ptr %9, align 16, !dbg !5695, !tbaa !1699
  %35 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %34, i64 0, i32 38, !dbg !5695
  %36 = load i32, ptr %35, align 8, !dbg !5695
  store i32 %36, ptr %33, align 8, !dbg !5695
  %37 = load ptr, ptr %6, align 16, !dbg !5696, !tbaa !1699
  %38 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %37, i64 0, i32 27, !dbg !5696
  %39 = load ptr, ptr %9, align 16, !dbg !5696, !tbaa !1699
  %40 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %39, i64 0, i32 27, !dbg !5696
  %41 = load i64, ptr %40, align 8, !dbg !5696
  store i64 %41, ptr %38, align 8, !dbg !5696
  %42 = load ptr, ptr %6, align 16, !dbg !5697, !tbaa !1699
  %43 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %42, i64 0, i32 28, !dbg !5697
  %44 = load ptr, ptr %9, align 16, !dbg !5697, !tbaa !1699
  %45 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %44, i64 0, i32 28, !dbg !5697
  %46 = load i64, ptr %45, align 8, !dbg !5697
  store i64 %46, ptr %43, align 8, !dbg !5697
  %47 = load ptr, ptr %6, align 16, !dbg !5698, !tbaa !1699
  %48 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %47, i64 0, i32 50, !dbg !5698
  %49 = load ptr, ptr %9, align 16, !dbg !5698, !tbaa !1699
  %50 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %49, i64 0, i32 50, !dbg !5698
  %51 = load i32, ptr %50, align 8, !dbg !5698
  store i32 %51, ptr %48, align 8, !dbg !5698
  %52 = load ptr, ptr %6, align 16, !dbg !5699, !tbaa !1699
  %53 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %52, i64 0, i32 54, !dbg !5699
  %54 = load ptr, ptr %9, align 16, !dbg !5699, !tbaa !1699
  %55 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %54, i64 0, i32 54, !dbg !5699
  %56 = load i64, ptr %55, align 8, !dbg !5699
  store i64 %56, ptr %53, align 8, !dbg !5699
  br label %57, !dbg !5700

57:                                               ; preds = %5, %3
  %58 = icmp eq ptr %0, %2, !dbg !5701
  br i1 %58, label %73, label %59, !dbg !5703

59:                                               ; preds = %57
  %60 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 46, !dbg !5704
  %61 = load ptr, ptr %60, align 16, !dbg !5704, !tbaa !1699
  %62 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %61, i64 0, i32 23, !dbg !5704
  %63 = getelementptr inbounds %struct.x264_t, ptr %2, i64 0, i32 46, !dbg !5704
  %64 = load ptr, ptr %63, align 16, !dbg !5704, !tbaa !1699
  %65 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %64, i64 0, i32 23, !dbg !5704
  %66 = load <2 x double>, ptr %62, align 8, !dbg !5704, !tbaa !2065
  store <2 x double> %66, ptr %65, align 8, !dbg !5704, !tbaa !2065
  %67 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %61, i64 0, i32 25, !dbg !5706
  %68 = load double, ptr %67, align 8, !dbg !5706, !tbaa !2026
  %69 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %64, i64 0, i32 25, !dbg !5706
  store double %68, ptr %69, align 8, !dbg !5706, !tbaa !2026
  %70 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %61, i64 0, i32 51, !dbg !5707
  %71 = load i32, ptr %70, align 4, !dbg !5707, !tbaa !5581
  %72 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %64, i64 0, i32 51, !dbg !5707
  store i32 %71, ptr %72, align 4, !dbg !5707, !tbaa !5581
  br label %73, !dbg !5708

73:                                               ; preds = %59, %57
  ret void, !dbg !5709
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare !dbg !5710 ptr @strtok_r(ptr noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !5715 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #16

declare !dbg !5719 i32 @x264_param_parse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !5722 i32 @x264_rc_analyse_slice(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc double @clip_qscale(ptr nocapture noundef readonly %0, i32 noundef %1, double noundef %2) unnamed_addr #17 !dbg !5724 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5728, metadata !DIExpression()), !dbg !5750
  call void @llvm.dbg.value(metadata i32 %1, metadata !5729, metadata !DIExpression()), !dbg !5750
  call void @llvm.dbg.value(metadata double %2, metadata !5730, metadata !DIExpression()), !dbg !5750
  %4 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 46, !dbg !5751
  %5 = load ptr, ptr %4, align 16, !dbg !5751, !tbaa !1699
  call void @llvm.dbg.value(metadata ptr %5, metadata !5731, metadata !DIExpression()), !dbg !5750
  %6 = sext i32 %1 to i64, !dbg !5752
  %7 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 42, i64 %6, !dbg !5752
  %8 = load double, ptr %7, align 8, !dbg !5752, !tbaa !2065
  call void @llvm.dbg.value(metadata double %8, metadata !5732, metadata !DIExpression()), !dbg !5750
  %9 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 43, i64 %6, !dbg !5753
  %10 = load double, ptr %9, align 8, !dbg !5753, !tbaa !2065
  call void @llvm.dbg.value(metadata double %10, metadata !5733, metadata !DIExpression()), !dbg !5750
  call void @llvm.dbg.value(metadata double %2, metadata !5734, metadata !DIExpression()), !dbg !5750
  %11 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 2, !dbg !5754
  %12 = load i32, ptr %11, align 8, !dbg !5754, !tbaa !1959
  %13 = icmp eq i32 %12, 0, !dbg !5756
  br i1 %13, label %124, label %14, !dbg !5757

14:                                               ; preds = %3
  switch i32 %1, label %33 [
    i32 0, label %19
    i32 2, label %15
  ], !dbg !5758

15:                                               ; preds = %14
  %16 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 38, !dbg !5759
  %17 = load i32, ptr %16, align 8, !dbg !5759, !tbaa !1851
  %18 = icmp eq i32 %17, 2, !dbg !5760
  br i1 %18, label %19, label %33, !dbg !5761

19:                                               ; preds = %14, %15
  %20 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 18, !dbg !5762
  %21 = load double, ptr %20, align 8, !dbg !5762, !tbaa !4071
  %22 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 16, !dbg !5765
  %23 = load double, ptr %22, align 8, !dbg !5765, !tbaa !1946
  %24 = fdiv fast double %21, %23, !dbg !5766
  %25 = fcmp fast olt double %24, 5.000000e-01, !dbg !5767
  br i1 %25, label %26, label %33, !dbg !5768

26:                                               ; preds = %19
  %27 = fmul fast double %21, 2.000000e+00, !dbg !5769
  %28 = fdiv fast double %27, %23, !dbg !5770
  call void @llvm.dbg.value(metadata double %28, metadata !1920, metadata !DIExpression()), !dbg !5771
  call void @llvm.dbg.value(metadata double 5.000000e-01, metadata !1925, metadata !DIExpression()), !dbg !5771
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1926, metadata !DIExpression()), !dbg !5771
  %29 = fcmp fast ogt double %28, 1.000000e+00, !dbg !5773
  %30 = select fast i1 %29, double 1.000000e+00, double %28, !dbg !5773
  %31 = tail call fast double @llvm.maxnum.f64(double %30, double 5.000000e-01), !dbg !5773
  %32 = fdiv fast double %2, %31, !dbg !5774
  call void @llvm.dbg.value(metadata double %32, metadata !5730, metadata !DIExpression()), !dbg !5750
  br label %33, !dbg !5775

33:                                               ; preds = %14, %19, %26, %15
  %34 = phi double [ %2, %14 ], [ %2, %15 ], [ %2, %19 ], [ %32, %26 ]
  call void @llvm.dbg.value(metadata double %34, metadata !5730, metadata !DIExpression()), !dbg !5750
  %35 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 21, !dbg !5776
  %36 = load i32, ptr %35, align 8, !dbg !5776, !tbaa !4472
  %37 = icmp sgt i32 %36, 0, !dbg !5777
  br i1 %37, label %38, label %124, !dbg !5778

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 20, !dbg !5779
  %40 = load ptr, ptr %39, align 8, !dbg !5779, !tbaa !2104
  %41 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 33, i32 2, !dbg !5780
  %42 = load i32, ptr %41, align 8, !dbg !5780, !tbaa !4012
  %43 = sext i32 %42 to i64, !dbg !5781
  %44 = getelementptr inbounds %struct.predictor_t, ptr %40, i64 %43, !dbg !5781
  %45 = sitofp i32 %36 to double, !dbg !5782
  call void @llvm.dbg.value(metadata ptr undef, metadata !4443, metadata !DIExpression()), !dbg !5783
  call void @llvm.dbg.value(metadata double undef, metadata !4448, metadata !DIExpression()), !dbg !5783
  call void @llvm.dbg.value(metadata double %45, metadata !4449, metadata !DIExpression()), !dbg !5783
  %46 = load <2 x double>, ptr %44, align 8, !dbg !5785, !tbaa !2065
  %47 = insertelement <2 x double> poison, double %45, i64 0, !dbg !5786
  %48 = insertelement <2 x double> %47, double %34, i64 1, !dbg !5786
  %49 = fmul fast <2 x double> %46, %48, !dbg !5787
  %50 = extractelement <2 x double> %49, i64 0, !dbg !5788
  %51 = extractelement <2 x double> %49, i64 1, !dbg !5788
  %52 = fdiv fast double %50, %51, !dbg !5788
  call void @llvm.dbg.value(metadata double %52, metadata !5735, metadata !DIExpression()), !dbg !5789
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !5738, metadata !DIExpression()), !dbg !5789
  %53 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 18, !dbg !5790
  %54 = load double, ptr %53, align 8, !dbg !5790, !tbaa !4071
  %55 = fmul fast double %54, 5.000000e-01, !dbg !5792
  %56 = fcmp fast ogt double %52, %55, !dbg !5793
  br i1 %56, label %57, label %63, !dbg !5794

57:                                               ; preds = %38
  %58 = fmul fast double %52, 2.000000e+00, !dbg !5795
  %59 = fdiv fast double %54, %58, !dbg !5796
  call void @llvm.dbg.value(metadata double %59, metadata !1920, metadata !DIExpression()), !dbg !5797
  call void @llvm.dbg.value(metadata double 2.000000e-01, metadata !1925, metadata !DIExpression()), !dbg !5797
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1926, metadata !DIExpression()), !dbg !5797
  %60 = fcmp fast ogt double %59, 1.000000e+00, !dbg !5799
  %61 = select fast i1 %60, double 1.000000e+00, double %59, !dbg !5799
  %62 = tail call fast double @llvm.maxnum.f64(double %61, double 2.000000e-01), !dbg !5799
  call void @llvm.dbg.value(metadata double %62, metadata !5738, metadata !DIExpression()), !dbg !5789
  br label %63, !dbg !5800

63:                                               ; preds = %57, %38
  %64 = phi double [ %62, %57 ], [ 1.000000e+00, %38 ], !dbg !5789
  call void @llvm.dbg.value(metadata double %64, metadata !5738, metadata !DIExpression()), !dbg !5789
  %65 = fdiv fast double %34, %64, !dbg !5801
  call void @llvm.dbg.value(metadata double %65, metadata !5730, metadata !DIExpression()), !dbg !5750
  %66 = fmul fast double %64, %52, !dbg !5802
  call void @llvm.dbg.value(metadata double %66, metadata !5735, metadata !DIExpression()), !dbg !5789
  %67 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 19, !dbg !5803
  %68 = load double, ptr %67, align 8, !dbg !5803, !tbaa !1941
  %69 = fmul fast double %68, 5.000000e-01, !dbg !5805
  %70 = fcmp fast olt double %66, %69, !dbg !5806
  %71 = fmul fast double %66, 2.000000e+00, !dbg !5807
  %72 = fmul fast double %71, %65, !dbg !5807
  %73 = fdiv fast double %72, %68, !dbg !5807
  %74 = select i1 %70, double %73, double %65, !dbg !5807
  call void @llvm.dbg.value(metadata double %74, metadata !5730, metadata !DIExpression()), !dbg !5750
  %75 = fcmp fast olt double %74, %2, !dbg !5808
  %76 = select fast i1 %75, double %2, double %74, !dbg !5808
  call void @llvm.dbg.value(metadata double %76, metadata !5730, metadata !DIExpression()), !dbg !5750
  %77 = icmp eq i32 %42, 0, !dbg !5809
  br i1 %77, label %78, label %116, !dbg !5810

78:                                               ; preds = %63
  %79 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 50, !dbg !5811
  %80 = load i32, ptr %79, align 8, !dbg !5811, !tbaa !4146
  call void @llvm.dbg.value(metadata i32 %80, metadata !5739, metadata !DIExpression()), !dbg !5812
  call void @llvm.dbg.value(metadata double %66, metadata !5742, metadata !DIExpression()), !dbg !5812
  %81 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 49, !dbg !5813
  %82 = load ptr, ptr %81, align 8, !dbg !5813, !tbaa !2108
  %83 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 12, !dbg !5814
  %84 = load float, ptr %83, align 8, !dbg !5814, !tbaa !3146
  %85 = fpext float %84 to double, !dbg !5815
  %86 = fmul fast double %76, %85, !dbg !5816
  call void @llvm.dbg.value(metadata ptr undef, metadata !4443, metadata !DIExpression()), !dbg !5817
  call void @llvm.dbg.value(metadata double %86, metadata !4448, metadata !DIExpression()), !dbg !5817
  call void @llvm.dbg.value(metadata double %45, metadata !4449, metadata !DIExpression()), !dbg !5817
  %87 = load <2 x double>, ptr %82, align 8, !dbg !5819, !tbaa !2065
  %88 = insertelement <2 x double> %47, double %86, i64 1, !dbg !5820
  %89 = fmul fast <2 x double> %87, %88, !dbg !5821
  %90 = extractelement <2 x double> %89, i64 0, !dbg !5822
  %91 = extractelement <2 x double> %89, i64 1, !dbg !5822
  %92 = fdiv fast double %90, %91, !dbg !5822
  call void @llvm.dbg.value(metadata double %92, metadata !5743, metadata !DIExpression()), !dbg !5812
  %93 = fcmp fast ogt double %92, %68, !dbg !5823
  %94 = select i1 %93, i32 0, i32 %80, !dbg !5825
  call void @llvm.dbg.value(metadata i32 %94, metadata !5739, metadata !DIExpression()), !dbg !5812
  %95 = sitofp i32 %94 to double, !dbg !5826
  %96 = fmul fast double %92, %95, !dbg !5827
  %97 = fadd fast double %96, %66, !dbg !5828
  call void @llvm.dbg.value(metadata double %97, metadata !5742, metadata !DIExpression()), !dbg !5812
  %98 = add nsw i32 %94, 1, !dbg !5829
  %99 = sitofp i32 %98 to double, !dbg !5830
  %100 = fmul fast double %68, %99, !dbg !5831
  %101 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 16, !dbg !5832
  %102 = load double, ptr %101, align 8, !dbg !5832, !tbaa !1946
  %103 = fsub fast double %54, %102, !dbg !5833
  %104 = fadd fast double %103, %100, !dbg !5834
  call void @llvm.dbg.value(metadata double %104, metadata !5744, metadata !DIExpression()), !dbg !5812
  %105 = fcmp fast olt double %97, %104, !dbg !5835
  br i1 %105, label %106, label %112, !dbg !5837

106:                                              ; preds = %78
  %107 = fdiv fast double %97, %104, !dbg !5838
  %108 = fmul fast double %102, 5.000000e-01, !dbg !5838
  %109 = fdiv fast double %66, %108, !dbg !5838
  %110 = tail call fast double @llvm.maxnum.f64(double %107, double %109), !dbg !5838
  %111 = fmul fast double %110, %76, !dbg !5840
  call void @llvm.dbg.value(metadata double %111, metadata !5730, metadata !DIExpression()), !dbg !5750
  br label %112, !dbg !5841

112:                                              ; preds = %106, %78
  %113 = phi double [ %111, %106 ], [ %76, %78 ], !dbg !5789
  call void @llvm.dbg.value(metadata double %113, metadata !5730, metadata !DIExpression()), !dbg !5750
  %114 = fadd fast double %2, -5.000000e+00, !dbg !5842
  %115 = tail call fast double @llvm.maxnum.f64(double %114, double %113), !dbg !5842
  call void @llvm.dbg.value(metadata double %115, metadata !5730, metadata !DIExpression()), !dbg !5750
  br label %116, !dbg !5843

116:                                              ; preds = %112, %63
  %117 = phi double [ %115, %112 ], [ %76, %63 ], !dbg !5789
  call void @llvm.dbg.value(metadata double %117, metadata !5730, metadata !DIExpression()), !dbg !5750
  %118 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 3, !dbg !5844
  %119 = load i32, ptr %118, align 4, !dbg !5844, !tbaa !1970
  %120 = icmp eq i32 %119, 0, !dbg !5846
  %121 = fcmp fast olt double %117, %2, !dbg !5847
  %122 = select i1 %120, i1 %121, i1 false, !dbg !5847
  %123 = select i1 %122, double %2, double %117, !dbg !5847
  call void @llvm.dbg.value(metadata double %123, metadata !5730, metadata !DIExpression()), !dbg !5750
  br label %124, !dbg !5848

124:                                              ; preds = %3, %116, %33
  %125 = phi double [ %123, %116 ], [ %34, %33 ], [ %2, %3 ], !dbg !5750
  call void @llvm.dbg.value(metadata double %125, metadata !5730, metadata !DIExpression()), !dbg !5750
  %126 = fcmp fast oeq double %8, %10, !dbg !5849
  br i1 %126, label %150, label %127, !dbg !5850

127:                                              ; preds = %124
  %128 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 1, !dbg !5851
  %129 = load i32, ptr %128, align 4, !dbg !5851, !tbaa !1814
  %130 = icmp eq i32 %129, 0, !dbg !5852
  br i1 %130, label %145, label %131, !dbg !5853

131:                                              ; preds = %127
  %132 = tail call fast double @llvm.log.f64(double %8), !dbg !5854
  call void @llvm.dbg.value(metadata double %132, metadata !5745, metadata !DIExpression()), !dbg !5855
  %133 = tail call fast double @llvm.log.f64(double %10), !dbg !5856
  call void @llvm.dbg.value(metadata double %133, metadata !5749, metadata !DIExpression()), !dbg !5855
  %134 = tail call fast double @llvm.log.f64(double %125), !dbg !5857
  %135 = fsub fast double %134, %132, !dbg !5858
  %136 = fsub fast double %133, %132, !dbg !5859
  call void @llvm.dbg.value(metadata double poison, metadata !5730, metadata !DIExpression()), !dbg !5750
  %137 = fmul fast double %135, 4.000000e+00, !dbg !5860
  %138 = fdiv fast double %137, %136, !dbg !5860
  %139 = fsub fast double 2.000000e+00, %138, !dbg !5860
  %140 = tail call fast double @llvm.exp.f64(double %139), !dbg !5861
  %141 = fadd fast double %140, 1.000000e+00, !dbg !5862
  %142 = fdiv fast double %136, %141, !dbg !5863
  %143 = fadd fast double %142, %132, !dbg !5864
  call void @llvm.dbg.value(metadata double %143, metadata !5730, metadata !DIExpression()), !dbg !5750
  %144 = tail call fast double @llvm.exp.f64(double %143), !dbg !5865
  br label %150

145:                                              ; preds = %127
  call void @llvm.dbg.value(metadata double %125, metadata !1920, metadata !DIExpression()), !dbg !5866
  call void @llvm.dbg.value(metadata double %8, metadata !1925, metadata !DIExpression()), !dbg !5866
  call void @llvm.dbg.value(metadata double %10, metadata !1926, metadata !DIExpression()), !dbg !5866
  %146 = fcmp fast olt double %125, %8, !dbg !5868
  %147 = fcmp fast ogt double %125, %10, !dbg !5869
  %148 = select fast i1 %147, double %10, double %125, !dbg !5869
  %149 = select fast i1 %146, double %8, double %148, !dbg !5869
  br label %150, !dbg !5870

150:                                              ; preds = %124, %145, %131
  %151 = phi double [ %144, %131 ], [ %149, %145 ], [ %8, %124 ], !dbg !5871
  ret double %151, !dbg !5872
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.exp.f64(double) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.exp2.f64(double) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.maxnum.f64(double, double) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.minnum.f64(double, double) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.log.v2f64(<2 x double>) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #19

attributes #0 = { nounwind uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noinline nounwind uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { noreturn nounwind "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(argmem: read) "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #9 = { nofree nounwind "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #11 = { nounwind "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #12 = { nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #14 = { mustprogress nofree nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #15 = { mustprogress nofree nounwind willreturn "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #16 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #17 = { mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #20 = { nounwind }
attributes #21 = { nounwind willreturn memory(read) }
attributes #22 = { nounwind allocsize(0) }
attributes #23 = { noreturn nounwind }

!llvm.dbg.cu = !{!235}
!llvm.module.flags = !{!370, !371, !372, !373, !374, !375}
!llvm.ident = !{!376}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 257, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "encoder/ratecontrol.c", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "dfd208f5d74bdd933cfa3ac72a699bd0")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 50)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 264, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 48)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 270, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 39)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 276, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 392, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 49)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 283, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 42)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 300, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 40)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 305, type: !29, isLocal: true, isDefinition: true)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(scope: null, file: !2, line: 357, type: !36, isLocal: true, isDefinition: true)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 23)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(scope: null, file: !2, line: 367, type: !41, isLocal: true, isDefinition: true)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 24)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(scope: null, file: !2, line: 367, type: !46, isLocal: true, isDefinition: true)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 22)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(scope: null, file: !2, line: 367, type: !51, isLocal: true, isDefinition: true)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 280, elements: !53)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!53 = !{!54}
!54 = !DISubrange(count: 35)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(scope: null, file: !2, line: 371, type: !57, isLocal: true, isDefinition: true)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !58)
!58 = !{!59}
!59 = !DISubrange(count: 41)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(scope: null, file: !2, line: 376, type: !62, isLocal: true, isDefinition: true)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 10)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(scope: null, file: !2, line: 386, type: !67, isLocal: true, isDefinition: true)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 9)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(scope: null, file: !2, line: 386, type: !72, isLocal: true, isDefinition: true)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 11)
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(scope: null, file: !2, line: 389, type: !77, isLocal: true, isDefinition: true)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 440, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 55)
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(scope: null, file: !2, line: 396, type: !82, isLocal: true, isDefinition: true)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !83)
!83 = !{!84}
!84 = !DISubrange(count: 12)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(scope: null, file: !2, line: 397, type: !87, isLocal: true, isDefinition: true)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !88)
!88 = !{!89}
!89 = !DISubrange(count: 38)
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(scope: null, file: !2, line: 399, type: !92, isLocal: true, isDefinition: true)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !93)
!93 = !{!94}
!94 = !DISubrange(count: 8)
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(scope: null, file: !2, line: 399, type: !62, isLocal: true, isDefinition: true)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(scope: null, file: !2, line: 401, type: !99, isLocal: true, isDefinition: true)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 43)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(scope: null, file: !2, line: 404, type: !104, isLocal: true, isDefinition: true)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 5)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(scope: null, file: !2, line: 405, type: !109, isLocal: true, isDefinition: true)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !110)
!110 = !{!111}
!111 = !DISubrange(count: 62)
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression())
!113 = distinct !DIGlobalVariable(scope: null, file: !2, line: 407, type: !67, isLocal: true, isDefinition: true)
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression())
!115 = distinct !DIGlobalVariable(scope: null, file: !2, line: 407, type: !72, isLocal: true, isDefinition: true)
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(scope: null, file: !2, line: 411, type: !3, isLocal: true, isDefinition: true)
!118 = !DIGlobalVariableExpression(var: !119, expr: !DIExpression())
!119 = distinct !DIGlobalVariable(scope: null, file: !2, line: 415, type: !62, isLocal: true, isDefinition: true)
!120 = !DIGlobalVariableExpression(var: !121, expr: !DIExpression())
!121 = distinct !DIGlobalVariable(scope: null, file: !2, line: 415, type: !82, isLocal: true, isDefinition: true)
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression())
!123 = distinct !DIGlobalVariable(scope: null, file: !2, line: 418, type: !124, isLocal: true, isDefinition: true)
!124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !125)
!125 = !{!126}
!126 = !DISubrange(count: 6)
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(scope: null, file: !2, line: 422, type: !129, isLocal: true, isDefinition: true)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !130)
!130 = !{!131}
!131 = !DISubrange(count: 51)
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(scope: null, file: !2, line: 433, type: !134, isLocal: true, isDefinition: true)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !135)
!135 = !{!136}
!136 = !DISubrange(count: 18)
!137 = !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!138 = distinct !DIGlobalVariable(scope: null, file: !2, line: 440, type: !139, isLocal: true, isDefinition: true)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !140)
!140 = !{!141}
!141 = !DISubrange(count: 52)
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(scope: null, file: !2, line: 445, type: !129, isLocal: true, isDefinition: true)
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(scope: null, file: !2, line: 480, type: !92, isLocal: true, isDefinition: true)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(scope: null, file: !2, line: 484, type: !29, isLocal: true, isDefinition: true)
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(scope: null, file: !2, line: 490, type: !150, isLocal: true, isDefinition: true)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 608, elements: !151)
!151 = !{!152}
!152 = !DISubrange(count: 76)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(scope: null, file: !2, line: 506, type: !3, isLocal: true, isDefinition: true)
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(scope: null, file: !2, line: 530, type: !124, isLocal: true, isDefinition: true)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(scope: null, file: !2, line: 532, type: !159, isLocal: true, isDefinition: true)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !160)
!160 = !{!161}
!161 = !DISubrange(count: 3)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(scope: null, file: !2, line: 540, type: !164, isLocal: true, isDefinition: true)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !165)
!165 = !{!166}
!166 = !DISubrange(count: 14)
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(scope: null, file: !2, line: 680, type: !41, isLocal: true, isDefinition: true)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(scope: null, file: !2, line: 697, type: !171, isLocal: true, isDefinition: true)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !172)
!172 = !{!173}
!173 = !DISubrange(count: 31)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(scope: null, file: !2, line: 764, type: !87, isLocal: true, isDefinition: true)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(scope: null, file: !2, line: 764, type: !178, isLocal: true, isDefinition: true)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 344, elements: !100)
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(scope: null, file: !2, line: 995, type: !181, isLocal: true, isDefinition: true)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 360, elements: !182)
!182 = !{!183}
!183 = !DISubrange(count: 45)
!184 = !DIGlobalVariableExpression(var: !185, expr: !DIExpression())
!185 = distinct !DIGlobalVariable(scope: null, file: !2, line: 996, type: !87, isLocal: true, isDefinition: true)
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(scope: null, file: !2, line: 998, type: !188, isLocal: true, isDefinition: true)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !189)
!189 = !{!190}
!190 = !DISubrange(count: 29)
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1063, type: !193, isLocal: true, isDefinition: true)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 616, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 77)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(scope: null, file: !2, line: 614, type: !198, isLocal: true, isDefinition: true)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !199)
!199 = !{!200}
!200 = !DISubrange(count: 2)
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(scope: null, file: !2, line: 629, type: !171, isLocal: true, isDefinition: true)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(scope: null, file: !2, line: 635, type: !205, isLocal: true, isDefinition: true)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !206)
!206 = !{!207}
!207 = !DISubrange(count: 33)
!208 = !DIGlobalVariableExpression(var: !209, expr: !DIExpression())
!209 = distinct !DIGlobalVariable(scope: null, file: !2, line: 564, type: !210, isLocal: true, isDefinition: true)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !211)
!211 = !{!212}
!212 = !DISubrange(count: 13)
!213 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression())
!214 = distinct !DIGlobalVariable(scope: null, file: !2, line: 566, type: !210, isLocal: true, isDefinition: true)
!215 = !DIGlobalVariableExpression(var: !216, expr: !DIExpression())
!216 = distinct !DIGlobalVariable(scope: null, file: !2, line: 568, type: !92, isLocal: true, isDefinition: true)
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(scope: null, file: !2, line: 572, type: !219, isLocal: true, isDefinition: true)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !220)
!220 = !{!221}
!221 = !DISubrange(count: 20)
!222 = !DIGlobalVariableExpression(var: !223, expr: !DIExpression())
!223 = distinct !DIGlobalVariable(scope: null, file: !2, line: 580, type: !198, isLocal: true, isDefinition: true)
!224 = !DIGlobalVariableExpression(var: !225, expr: !DIExpression())
!225 = distinct !DIGlobalVariable(scope: null, file: !2, line: 590, type: !188, isLocal: true, isDefinition: true)
!226 = !DIGlobalVariableExpression(var: !227, expr: !DIExpression())
!227 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1247, type: !228, isLocal: true, isDefinition: true)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !229)
!229 = !{!230}
!230 = !DISubrange(count: 27)
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1366, type: !205, isLocal: true, isDefinition: true)
!233 = !DIGlobalVariableExpression(var: !234, expr: !DIExpression())
!234 = distinct !DIGlobalVariable(name: "slice_type_to_char", scope: !235, file: !238, line: 157, type: !369, isLocal: true, isDefinition: true)
!235 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 16.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !236, retainedTypes: !282, globals: !315, splitDebugInlining: false, nameTableKind: None)
!236 = !{!237, !246, !269}
!237 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "slice_type_e", file: !238, line: 148, baseType: !239, size: 32, elements: !240)
!238 = !DIFile(filename: "./common/common.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "4880b62cc871dca4002788746fbccb70")
!239 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!240 = !{!241, !242, !243, !244, !245}
!241 = !DIEnumerator(name: "SLICE_TYPE_P", value: 0)
!242 = !DIEnumerator(name: "SLICE_TYPE_B", value: 1)
!243 = !DIEnumerator(name: "SLICE_TYPE_I", value: 2)
!244 = !DIEnumerator(name: "SLICE_TYPE_SP", value: 3)
!245 = !DIEnumerator(name: "SLICE_TYPE_SI", value: 4)
!246 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mb_class_e", file: !247, line: 61, baseType: !239, size: 32, elements: !248)
!247 = !DIFile(filename: "./common/macroblock.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "0b0c175005b691009f3df3e457cfe9c0")
!248 = !{!249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268}
!249 = !DIEnumerator(name: "I_4x4", value: 0)
!250 = !DIEnumerator(name: "I_8x8", value: 1)
!251 = !DIEnumerator(name: "I_16x16", value: 2)
!252 = !DIEnumerator(name: "I_PCM", value: 3)
!253 = !DIEnumerator(name: "P_L0", value: 4)
!254 = !DIEnumerator(name: "P_8x8", value: 5)
!255 = !DIEnumerator(name: "P_SKIP", value: 6)
!256 = !DIEnumerator(name: "B_DIRECT", value: 7)
!257 = !DIEnumerator(name: "B_L0_L0", value: 8)
!258 = !DIEnumerator(name: "B_L0_L1", value: 9)
!259 = !DIEnumerator(name: "B_L0_BI", value: 10)
!260 = !DIEnumerator(name: "B_L1_L0", value: 11)
!261 = !DIEnumerator(name: "B_L1_L1", value: 12)
!262 = !DIEnumerator(name: "B_L1_BI", value: 13)
!263 = !DIEnumerator(name: "B_BI_L0", value: 14)
!264 = !DIEnumerator(name: "B_BI_L1", value: 15)
!265 = !DIEnumerator(name: "B_BI_BI", value: 16)
!266 = !DIEnumerator(name: "B_8x8", value: 17)
!267 = !DIEnumerator(name: "B_SKIP", value: 18)
!268 = !DIEnumerator(name: "X264_MBTYPE_MAX", value: 19)
!269 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !270, line: 30, baseType: !239, size: 32, elements: !271)
!270 = !DIFile(filename: "./common/pixel.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "aba138e44f0e52bc0158be0d182b79c1")
!271 = !{!272, !273, !274, !275, !276, !277, !278, !279, !280, !281}
!272 = !DIEnumerator(name: "PIXEL_16x16", value: 0)
!273 = !DIEnumerator(name: "PIXEL_16x8", value: 1)
!274 = !DIEnumerator(name: "PIXEL_8x16", value: 2)
!275 = !DIEnumerator(name: "PIXEL_8x8", value: 3)
!276 = !DIEnumerator(name: "PIXEL_8x4", value: 4)
!277 = !DIEnumerator(name: "PIXEL_4x8", value: 5)
!278 = !DIEnumerator(name: "PIXEL_4x4", value: 6)
!279 = !DIEnumerator(name: "PIXEL_4x2", value: 7)
!280 = !DIEnumerator(name: "PIXEL_2x4", value: 8)
!281 = !DIEnumerator(name: "PIXEL_2x2", value: 9)
!282 = !{!283, !284, !285, !310, !311, !302, !296}
!283 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!284 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "ratecontrol_entry_t", file: !2, line: 54, baseType: !287)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 37, size: 576, elements: !288)
!288 = !{!289, !290, !291, !292, !293, !294, !295, !301, !303, !304, !305, !306, !307, !308, !309}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "pict_type", scope: !287, file: !2, line: 39, baseType: !283, size: 32)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "kept_as_ref", scope: !287, file: !2, line: 40, baseType: !283, size: 32, offset: 32)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "qscale", scope: !287, file: !2, line: 41, baseType: !284, size: 32, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "mv_bits", scope: !287, file: !2, line: 42, baseType: !283, size: 32, offset: 96)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "tex_bits", scope: !287, file: !2, line: 43, baseType: !283, size: 32, offset: 128)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "misc_bits", scope: !287, file: !2, line: 44, baseType: !283, size: 32, offset: 160)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "expected_bits", scope: !287, file: !2, line: 45, baseType: !296, size: 64, offset: 192)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !297, line: 27, baseType: !298)
!297 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !299, line: 45, baseType: !300)
!299 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!300 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "expected_vbv", scope: !287, file: !2, line: 46, baseType: !302, size: 64, offset: 256)
!302 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "new_qscale", scope: !287, file: !2, line: 47, baseType: !284, size: 32, offset: 320)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "new_qp", scope: !287, file: !2, line: 48, baseType: !283, size: 32, offset: 352)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !287, file: !2, line: 49, baseType: !283, size: 32, offset: 384)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "p_count", scope: !287, file: !2, line: 50, baseType: !283, size: 32, offset: 416)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !287, file: !2, line: 51, baseType: !283, size: 32, offset: 448)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "blurred_complexity", scope: !287, file: !2, line: 52, baseType: !284, size: 32, offset: 480)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "direct_mode", scope: !287, file: !2, line: 53, baseType: !4, size: 8, offset: 512)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !312, line: 27, baseType: !313)
!312 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !299, line: 44, baseType: !314)
!314 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!315 = !{!0, !7, !12, !17, !22, !27, !32, !34, !39, !44, !49, !55, !60, !65, !70, !75, !80, !85, !90, !95, !97, !102, !107, !112, !114, !116, !118, !120, !122, !127, !132, !137, !142, !144, !146, !148, !153, !155, !157, !162, !167, !169, !174, !176, !179, !184, !186, !191, !196, !201, !203, !208, !213, !215, !217, !222, !224, !226, !231, !233, !316, !321, !326, !331, !336, !341, !343, !348, !353, !355, !360, !362, !367}
!316 = !DIGlobalVariableExpression(var: !317, expr: !DIExpression())
!317 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1755, type: !318, isLocal: true, isDefinition: true)
!318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !319)
!319 = !{!320}
!320 = !DISubrange(count: 60)
!321 = !DIGlobalVariableExpression(var: !322, expr: !DIExpression())
!322 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1836, type: !323, isLocal: true, isDefinition: true)
!323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !324)
!324 = !{!325}
!325 = !DISubrange(count: 15)
!326 = !DIGlobalVariableExpression(var: !327, expr: !DIExpression())
!327 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1836, type: !328, isLocal: true, isDefinition: true)
!328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 200, elements: !329)
!329 = !{!330}
!330 = !DISubrange(count: 25)
!331 = !DIGlobalVariableExpression(var: !332, expr: !DIExpression())
!332 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1842, type: !333, isLocal: true, isDefinition: true)
!333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !334)
!334 = !{!335}
!335 = !DISubrange(count: 17)
!336 = !DIGlobalVariableExpression(var: !337, expr: !DIExpression())
!337 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1870, type: !338, isLocal: true, isDefinition: true)
!338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !339)
!339 = !{!340}
!340 = !DISubrange(count: 21)
!341 = !DIGlobalVariableExpression(var: !342, expr: !DIExpression())
!342 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1893, type: !14, isLocal: true, isDefinition: true)
!343 = !DIGlobalVariableExpression(var: !344, expr: !DIExpression())
!344 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1894, type: !345, isLocal: true, isDefinition: true)
!345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 464, elements: !346)
!346 = !{!347}
!347 = !DISubrange(count: 58)
!348 = !DIGlobalVariableExpression(var: !349, expr: !DIExpression())
!349 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1901, type: !350, isLocal: true, isDefinition: true)
!350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 504, elements: !351)
!351 = !{!352}
!352 = !DISubrange(count: 63)
!353 = !DIGlobalVariableExpression(var: !354, expr: !DIExpression())
!354 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1903, type: !188, isLocal: true, isDefinition: true)
!355 = !DIGlobalVariableExpression(var: !356, expr: !DIExpression())
!356 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1908, type: !357, isLocal: true, isDefinition: true)
!357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 536, elements: !358)
!358 = !{!359}
!359 = !DISubrange(count: 67)
!360 = !DIGlobalVariableExpression(var: !361, expr: !DIExpression())
!361 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1910, type: !171, isLocal: true, isDefinition: true)
!362 = !DIGlobalVariableExpression(var: !363, expr: !DIExpression())
!363 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1913, type: !364, isLocal: true, isDefinition: true)
!364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !365)
!365 = !{!366}
!366 = !DISubrange(count: 16)
!367 = !DIGlobalVariableExpression(var: !368, expr: !DIExpression())
!368 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1724, type: !19, isLocal: true, isDefinition: true)
!369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 40, elements: !105)
!370 = !{i32 7, !"Dwarf Version", i32 5}
!371 = !{i32 2, !"Debug Info Version", i32 3}
!372 = !{i32 1, !"wchar_size", i32 4}
!373 = !{i32 8, !"PIC Level", i32 2}
!374 = !{i32 7, !"PIE Level", i32 2}
!375 = !{i32 7, !"uwtable", i32 2}
!376 = !{!"clang version 16.0.0"}
!377 = distinct !DISubprogram(name: "x264_adaptive_quant_frame", scope: !2, file: !2, line: 194, type: !378, scopeLine: 195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !1548)
!378 = !DISubroutineType(types: !379)
!379 = !{null, !380, !784}
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_t", file: !382, line: 42, baseType: !383)
!382 = !DIFile(filename: "./x264.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "9fe19a6136ab7ddd44a70d62bce62365")
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_t", file: !238, line: 250, size: 206080, elements: !384)
!384 = !{!385, !528, !532, !535, !536, !537, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !648, !650, !676, !678, !679, !686, !691, !695, !699, !706, !710, !711, !712, !713, !718, !720, !722, !762, !779, !927, !928, !929, !930, !934, !935, !936, !937, !951, !1102, !1221, !1270, !1279, !1280, !1286, !1288, !1357, !1413, !1465, !1486, !1528}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !383, file: !238, line: 253, baseType: !386, size: 4928)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_param_t", file: !382, line: 295, baseType: !387)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_param_t", file: !382, line: 151, size: 4928, elements: !388)
!388 = !{!389, !390, !391, !392, !393, !394, !395, !396, !397, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !429, !434, !435, !436, !437, !441, !442, !455, !456, !457, !458, !459, !486, !525, !526, !527}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !387, file: !382, line: 154, baseType: !239, size: 32)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "i_threads", scope: !387, file: !382, line: 155, baseType: !283, size: 32, offset: 32)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "b_deterministic", scope: !387, file: !382, line: 156, baseType: !283, size: 32, offset: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !387, file: !382, line: 159, baseType: !283, size: 32, offset: 96)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "i_height", scope: !387, file: !382, line: 160, baseType: !283, size: 32, offset: 128)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "i_csp", scope: !387, file: !382, line: 161, baseType: !283, size: 32, offset: 160)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !387, file: !382, line: 162, baseType: !283, size: 32, offset: 192)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_total", scope: !387, file: !382, line: 163, baseType: !283, size: 32, offset: 224)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !387, file: !382, line: 180, baseType: !398, size: 288, offset: 256)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !387, file: !382, line: 165, size: 288, elements: !399)
!399 = !{!400, !401, !402, !403, !404, !405, !406, !407, !408}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !398, file: !382, line: 168, baseType: !283, size: 32)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !398, file: !382, line: 169, baseType: !283, size: 32, offset: 32)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "i_overscan", scope: !398, file: !382, line: 171, baseType: !283, size: 32, offset: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !398, file: !382, line: 174, baseType: !283, size: 32, offset: 96)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !398, file: !382, line: 175, baseType: !283, size: 32, offset: 128)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !398, file: !382, line: 176, baseType: !283, size: 32, offset: 160)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !398, file: !382, line: 177, baseType: !283, size: 32, offset: 192)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !398, file: !382, line: 178, baseType: !283, size: 32, offset: 224)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc", scope: !398, file: !382, line: 179, baseType: !283, size: 32, offset: 256)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_num", scope: !387, file: !382, line: 182, baseType: !283, size: 32, offset: 544)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_den", scope: !387, file: !382, line: 183, baseType: !283, size: 32, offset: 576)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_reference", scope: !387, file: !382, line: 186, baseType: !283, size: 32, offset: 608)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_max", scope: !387, file: !382, line: 187, baseType: !283, size: 32, offset: 640)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_min", scope: !387, file: !382, line: 188, baseType: !283, size: 32, offset: 672)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "i_scenecut_threshold", scope: !387, file: !382, line: 189, baseType: !283, size: 32, offset: 704)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "b_pre_scenecut", scope: !387, file: !382, line: 190, baseType: !283, size: 32, offset: 736)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe", scope: !387, file: !382, line: 191, baseType: !283, size: 32, offset: 768)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_adaptive", scope: !387, file: !382, line: 192, baseType: !283, size: 32, offset: 800)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_bias", scope: !387, file: !382, line: 193, baseType: !283, size: 32, offset: 832)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "b_bframe_pyramid", scope: !387, file: !382, line: 194, baseType: !283, size: 32, offset: 864)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter", scope: !387, file: !382, line: 196, baseType: !283, size: 32, offset: 896)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_alphac0", scope: !387, file: !382, line: 197, baseType: !283, size: 32, offset: 928)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_beta", scope: !387, file: !382, line: 198, baseType: !283, size: 32, offset: 960)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !387, file: !382, line: 200, baseType: !283, size: 32, offset: 992)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !387, file: !382, line: 201, baseType: !283, size: 32, offset: 1024)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !387, file: !382, line: 203, baseType: !283, size: 32, offset: 1056)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !387, file: !382, line: 205, baseType: !283, size: 32, offset: 1088)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "psz_cqm_file", scope: !387, file: !382, line: 206, baseType: !428, size: 64, offset: 1152)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4iy", scope: !387, file: !382, line: 207, baseType: !430, size: 128, offset: 1216)
!430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !431, size: 128, elements: !365)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !297, line: 24, baseType: !432)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !299, line: 38, baseType: !433)
!433 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4ic", scope: !387, file: !382, line: 208, baseType: !430, size: 128, offset: 1344)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4py", scope: !387, file: !382, line: 209, baseType: !430, size: 128, offset: 1472)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4pc", scope: !387, file: !382, line: 210, baseType: !430, size: 128, offset: 1600)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8iy", scope: !387, file: !382, line: 211, baseType: !438, size: 512, offset: 1728)
!438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !431, size: 512, elements: !439)
!439 = !{!440}
!440 = !DISubrange(count: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8py", scope: !387, file: !382, line: 212, baseType: !438, size: 512, offset: 2240)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "pf_log", scope: !387, file: !382, line: 215, baseType: !443, size: 64, offset: 2752)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DISubroutineType(types: !445)
!445 = !{null, !310, !283, !446, !447}
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !449)
!449 = !{!450, !452, !453, !454}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !448, file: !451, baseType: !239, size: 32)
!451 = !DIFile(filename: "encoder/ratecontrol.c", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src")
!452 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !448, file: !451, baseType: !239, size: 32, offset: 32)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !448, file: !451, baseType: !310, size: 64, offset: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !448, file: !451, baseType: !310, size: 64, offset: 128)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "p_log_private", scope: !387, file: !382, line: 216, baseType: !310, size: 64, offset: 2816)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "i_log_level", scope: !387, file: !382, line: 217, baseType: !283, size: 32, offset: 2880)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "b_visualize", scope: !387, file: !382, line: 218, baseType: !283, size: 32, offset: 2912)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "psz_dump_yuv", scope: !387, file: !382, line: 219, baseType: !428, size: 64, offset: 2944)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "analyse", scope: !387, file: !382, line: 252, baseType: !460, size: 768, offset: 3008)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !387, file: !382, line: 222, size: 768, elements: !461)
!461 = !{!462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !484, !485}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "intra", scope: !460, file: !382, line: 224, baseType: !239, size: 32)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "inter", scope: !460, file: !382, line: 225, baseType: !239, size: 32, offset: 32)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !460, file: !382, line: 227, baseType: !283, size: 32, offset: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !460, file: !382, line: 228, baseType: !283, size: 32, offset: 96)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_mv_pred", scope: !460, file: !382, line: 229, baseType: !283, size: 32, offset: 128)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_8x8_inference", scope: !460, file: !382, line: 230, baseType: !283, size: 32, offset: 160)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_offset", scope: !460, file: !382, line: 231, baseType: !283, size: 32, offset: 192)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !460, file: !382, line: 233, baseType: !283, size: 32, offset: 224)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_range", scope: !460, file: !382, line: 234, baseType: !283, size: 32, offset: 256)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range", scope: !460, file: !382, line: 235, baseType: !283, size: 32, offset: 288)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range_thread", scope: !460, file: !382, line: 236, baseType: !283, size: 32, offset: 320)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !460, file: !382, line: 237, baseType: !283, size: 32, offset: 352)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !460, file: !382, line: 238, baseType: !283, size: 32, offset: 384)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "b_mixed_references", scope: !460, file: !382, line: 239, baseType: !283, size: 32, offset: 416)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "i_trellis", scope: !460, file: !382, line: 240, baseType: !283, size: 32, offset: 448)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "b_fast_pskip", scope: !460, file: !382, line: 241, baseType: !283, size: 32, offset: 480)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "b_dct_decimate", scope: !460, file: !382, line: 242, baseType: !283, size: 32, offset: 512)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "i_noise_reduction", scope: !460, file: !382, line: 243, baseType: !283, size: 32, offset: 544)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_rd", scope: !460, file: !382, line: 244, baseType: !284, size: 32, offset: 576)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_trellis", scope: !460, file: !382, line: 245, baseType: !284, size: 32, offset: 608)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "i_luma_deadzone", scope: !460, file: !382, line: 248, baseType: !483, size: 64, offset: 640)
!483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 64, elements: !199)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "b_psnr", scope: !460, file: !382, line: 250, baseType: !283, size: 32, offset: 704)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "b_ssim", scope: !460, file: !382, line: 251, baseType: !283, size: 32, offset: 736)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !387, file: !382, line: 289, baseType: !487, size: 1024, offset: 3776)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !387, file: !382, line: 255, size: 1024, elements: !488)
!488 = !{!489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !523, !524}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "i_rc_method", scope: !487, file: !382, line: 257, baseType: !283, size: 32)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_constant", scope: !487, file: !382, line: 259, baseType: !283, size: 32, offset: 32)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_min", scope: !487, file: !382, line: 260, baseType: !283, size: 32, offset: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_max", scope: !487, file: !382, line: 261, baseType: !283, size: 32, offset: 96)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_step", scope: !487, file: !382, line: 262, baseType: !283, size: 32, offset: 128)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitrate", scope: !487, file: !382, line: 264, baseType: !283, size: 32, offset: 160)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant", scope: !487, file: !382, line: 265, baseType: !284, size: 32, offset: 192)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "f_rate_tolerance", scope: !487, file: !382, line: 266, baseType: !284, size: 32, offset: 224)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_max_bitrate", scope: !487, file: !382, line: 267, baseType: !283, size: 32, offset: 256)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_buffer_size", scope: !487, file: !382, line: 268, baseType: !283, size: 32, offset: 288)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "f_vbv_buffer_init", scope: !487, file: !382, line: 269, baseType: !284, size: 32, offset: 320)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "f_ip_factor", scope: !487, file: !382, line: 270, baseType: !284, size: 32, offset: 352)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "f_pb_factor", scope: !487, file: !382, line: 271, baseType: !284, size: 32, offset: 384)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "i_aq_mode", scope: !487, file: !382, line: 273, baseType: !283, size: 32, offset: 416)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "f_aq_strength", scope: !487, file: !382, line: 274, baseType: !284, size: 32, offset: 448)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_write", scope: !487, file: !382, line: 277, baseType: !283, size: 32, offset: 480)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_out", scope: !487, file: !382, line: 278, baseType: !428, size: 64, offset: 512)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_read", scope: !487, file: !382, line: 279, baseType: !283, size: 32, offset: 576)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_in", scope: !487, file: !382, line: 280, baseType: !428, size: 64, offset: 640)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "f_qcompress", scope: !487, file: !382, line: 283, baseType: !284, size: 32, offset: 704)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "f_qblur", scope: !487, file: !382, line: 284, baseType: !284, size: 32, offset: 736)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "f_complexity_blur", scope: !487, file: !382, line: 285, baseType: !284, size: 32, offset: 768)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "zones", scope: !487, file: !382, line: 286, baseType: !512, size: 64, offset: 832)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zone_t", file: !382, line: 149, baseType: !514)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !382, line: 142, size: 256, elements: !515)
!515 = !{!516, !517, !518, !519, !520, !521}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "i_start", scope: !514, file: !382, line: 144, baseType: !283, size: 32)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "i_end", scope: !514, file: !382, line: 144, baseType: !283, size: 32, offset: 32)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "b_force_qp", scope: !514, file: !382, line: 145, baseType: !283, size: 32, offset: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !514, file: !382, line: 146, baseType: !283, size: 32, offset: 96)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "f_bitrate_factor", scope: !514, file: !382, line: 147, baseType: !284, size: 32, offset: 128)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !514, file: !382, line: 148, baseType: !522, size: 64, offset: 192)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "i_zones", scope: !487, file: !382, line: 287, baseType: !283, size: 32, offset: 896)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "psz_zones", scope: !487, file: !382, line: 288, baseType: !428, size: 64, offset: 960)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "b_aud", scope: !387, file: !382, line: 292, baseType: !283, size: 32, offset: 4800)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "b_repeat_headers", scope: !387, file: !382, line: 293, baseType: !283, size: 32, offset: 4832)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !387, file: !382, line: 294, baseType: !283, size: 32, offset: 4864)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !383, file: !238, line: 255, baseType: !529, size: 8192, offset: 4928)
!529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !380, size: 8192, elements: !530)
!530 = !{!531}
!531 = !DISubrange(count: 128)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "thread_handle", scope: !383, file: !238, line: 256, baseType: !533, size: 64, offset: 13120)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !534, line: 27, baseType: !300)
!534 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!535 = !DIDerivedType(tag: DW_TAG_member, name: "b_thread_active", scope: !383, file: !238, line: 257, baseType: !283, size: 32, offset: 13184)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "i_thread_phase", scope: !383, file: !238, line: 258, baseType: !283, size: 32, offset: 13216)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !383, file: !238, line: 269, baseType: !538, size: 2112, offset: 13248)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !383, file: !238, line: 261, size: 2112, elements: !539)
!539 = !{!540, !541, !551, !552, !553, !566}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal", scope: !538, file: !238, line: 263, baseType: !283, size: 32)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "nal", scope: !538, file: !238, line: 264, baseType: !542, size: 1536, offset: 64)
!542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !543, size: 1536, elements: !93)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_nal_t", file: !382, line: 399, baseType: !544)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !382, line: 391, size: 192, elements: !545)
!545 = !{!546, !547, !548, !549}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref_idc", scope: !544, file: !382, line: 393, baseType: !283, size: 32)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !544, file: !382, line: 394, baseType: !283, size: 32, offset: 32)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "i_payload", scope: !544, file: !382, line: 397, baseType: !283, size: 32, offset: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "p_payload", scope: !544, file: !382, line: 398, baseType: !550, size: 64, offset: 128)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitstream", scope: !538, file: !238, line: 265, baseType: !283, size: 32, offset: 1600)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "p_bitstream", scope: !538, file: !238, line: 266, baseType: !550, size: 64, offset: 1664)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "bs", scope: !538, file: !238, line: 267, baseType: !554, size: 320, offset: 1728)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "bs_t", file: !555, line: 49, baseType: !556)
!555 = !DIFile(filename: "./common/bs.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "2f46b0964798cffcc7898517b4d9922e")
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bs_s", file: !555, line: 40, size: 320, elements: !557)
!557 = !{!558, !559, !560, !561, !564, !565}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "p_start", scope: !556, file: !555, line: 42, baseType: !550, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !556, file: !555, line: 43, baseType: !550, size: 64, offset: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "p_end", scope: !556, file: !555, line: 44, baseType: !550, size: 64, offset: 128)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bits", scope: !556, file: !555, line: 46, baseType: !562, size: 64, offset: 192)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !563, line: 87, baseType: !314)
!563 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!564 = !DIDerivedType(tag: DW_TAG_member, name: "i_left", scope: !556, file: !555, line: 47, baseType: !283, size: 32, offset: 256)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "i_bits_encoded", scope: !556, file: !555, line: 48, baseType: !283, size: 32, offset: 288)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_size", scope: !538, file: !238, line: 268, baseType: !283, size: 32, offset: 2048)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame", scope: !383, file: !238, line: 274, baseType: !283, size: 32, offset: 15360)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_offset", scope: !383, file: !238, line: 276, baseType: !283, size: 32, offset: 15392)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !383, file: !238, line: 277, baseType: !283, size: 32, offset: 15424)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_msb", scope: !383, file: !238, line: 278, baseType: !283, size: 32, offset: 15456)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_lsb", scope: !383, file: !238, line: 279, baseType: !283, size: 32, offset: 15488)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !383, file: !238, line: 280, baseType: !283, size: 32, offset: 15520)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "i_thread_num", scope: !383, file: !238, line: 282, baseType: !283, size: 32, offset: 15552)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_type", scope: !383, file: !238, line: 283, baseType: !283, size: 32, offset: 15584)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_ref_idc", scope: !383, file: !238, line: 284, baseType: !283, size: 32, offset: 15616)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "sps_array", scope: !383, file: !238, line: 287, baseType: !577, size: 9920, offset: 15648)
!577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !578, size: 9920, elements: !646)
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_sps_t", file: !579, line: 133, baseType: !580)
!579 = !DIFile(filename: "./common/set.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "06164d1fd824dd844d17e97dd39e9ac3")
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !579, line: 52, size: 9920, elements: !581)
!581 = !{!582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !599, !600, !601, !602, !603, !604, !605, !606, !607, !614, !615, !645}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "i_id", scope: !580, file: !579, line: 54, baseType: !283, size: 32)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "i_profile_idc", scope: !580, file: !579, line: 56, baseType: !283, size: 32, offset: 32)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !580, file: !579, line: 57, baseType: !283, size: 32, offset: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set0", scope: !580, file: !579, line: 59, baseType: !283, size: 32, offset: 96)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set1", scope: !580, file: !579, line: 60, baseType: !283, size: 32, offset: 128)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set2", scope: !580, file: !579, line: 61, baseType: !283, size: 32, offset: 160)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_frame_num", scope: !580, file: !579, line: 63, baseType: !283, size: 32, offset: 192)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_type", scope: !580, file: !579, line: 65, baseType: !283, size: 32, offset: 224)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_poc_lsb", scope: !580, file: !579, line: 67, baseType: !283, size: 32, offset: 256)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "b_delta_pic_order_always_zero", scope: !580, file: !579, line: 69, baseType: !283, size: 32, offset: 288)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_non_ref_pic", scope: !580, file: !579, line: 70, baseType: !283, size: 32, offset: 320)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_top_to_bottom_field", scope: !580, file: !579, line: 71, baseType: !283, size: 32, offset: 352)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_frames_in_poc_cycle", scope: !580, file: !579, line: 72, baseType: !283, size: 32, offset: 384)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_ref_frame", scope: !580, file: !579, line: 73, baseType: !596, size: 8192, offset: 416)
!596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 8192, elements: !597)
!597 = !{!598}
!598 = !DISubrange(count: 256)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_frames", scope: !580, file: !579, line: 75, baseType: !283, size: 32, offset: 8608)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "b_gaps_in_frame_num_value_allowed", scope: !580, file: !579, line: 76, baseType: !283, size: 32, offset: 8640)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_width", scope: !580, file: !579, line: 77, baseType: !283, size: 32, offset: 8672)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_height", scope: !580, file: !579, line: 78, baseType: !283, size: 32, offset: 8704)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "b_frame_mbs_only", scope: !580, file: !579, line: 79, baseType: !283, size: 32, offset: 8736)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "b_mb_adaptive_frame_field", scope: !580, file: !579, line: 80, baseType: !283, size: 32, offset: 8768)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct8x8_inference", scope: !580, file: !579, line: 81, baseType: !283, size: 32, offset: 8800)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "b_crop", scope: !580, file: !579, line: 83, baseType: !283, size: 32, offset: 8832)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "crop", scope: !580, file: !579, line: 90, baseType: !608, size: 128, offset: 8864)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !580, file: !579, line: 84, size: 128, elements: !609)
!609 = !{!610, !611, !612, !613}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "i_left", scope: !608, file: !579, line: 86, baseType: !283, size: 32)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "i_right", scope: !608, file: !579, line: 87, baseType: !283, size: 32, offset: 32)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "i_top", scope: !608, file: !579, line: 88, baseType: !283, size: 32, offset: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "i_bottom", scope: !608, file: !579, line: 89, baseType: !283, size: 32, offset: 96)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "b_vui", scope: !580, file: !579, line: 92, baseType: !283, size: 32, offset: 8992)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !580, file: !579, line: 129, baseType: !616, size: 864, offset: 9024)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !580, file: !579, line: 93, size: 864, elements: !617)
!617 = !{!618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "b_aspect_ratio_info_present", scope: !616, file: !579, line: 95, baseType: !283, size: 32)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !616, file: !579, line: 96, baseType: !283, size: 32, offset: 32)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !616, file: !579, line: 97, baseType: !283, size: 32, offset: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "b_overscan_info_present", scope: !616, file: !579, line: 99, baseType: !283, size: 32, offset: 96)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "b_overscan_info", scope: !616, file: !579, line: 100, baseType: !283, size: 32, offset: 128)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "b_signal_type_present", scope: !616, file: !579, line: 102, baseType: !283, size: 32, offset: 160)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !616, file: !579, line: 103, baseType: !283, size: 32, offset: 192)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !616, file: !579, line: 104, baseType: !283, size: 32, offset: 224)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "b_color_description_present", scope: !616, file: !579, line: 105, baseType: !283, size: 32, offset: 256)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !616, file: !579, line: 106, baseType: !283, size: 32, offset: 288)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !616, file: !579, line: 107, baseType: !283, size: 32, offset: 320)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !616, file: !579, line: 108, baseType: !283, size: 32, offset: 352)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_loc_info_present", scope: !616, file: !579, line: 110, baseType: !283, size: 32, offset: 384)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc_top", scope: !616, file: !579, line: 111, baseType: !283, size: 32, offset: 416)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc_bottom", scope: !616, file: !579, line: 112, baseType: !283, size: 32, offset: 448)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "b_timing_info_present", scope: !616, file: !579, line: 114, baseType: !283, size: 32, offset: 480)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_units_in_tick", scope: !616, file: !579, line: 115, baseType: !283, size: 32, offset: 512)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "i_time_scale", scope: !616, file: !579, line: 116, baseType: !283, size: 32, offset: 544)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "b_fixed_frame_rate", scope: !616, file: !579, line: 117, baseType: !283, size: 32, offset: 576)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "b_bitstream_restriction", scope: !616, file: !579, line: 119, baseType: !283, size: 32, offset: 608)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "b_motion_vectors_over_pic_boundaries", scope: !616, file: !579, line: 120, baseType: !283, size: 32, offset: 640)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_bytes_per_pic_denom", scope: !616, file: !579, line: 121, baseType: !283, size: 32, offset: 672)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_bits_per_mb_denom", scope: !616, file: !579, line: 122, baseType: !283, size: 32, offset: 704)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_mv_length_horizontal", scope: !616, file: !579, line: 123, baseType: !283, size: 32, offset: 736)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_mv_length_vertical", scope: !616, file: !579, line: 124, baseType: !283, size: 32, offset: 768)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_reorder_frames", scope: !616, file: !579, line: 125, baseType: !283, size: 32, offset: 800)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_dec_frame_buffering", scope: !616, file: !579, line: 126, baseType: !283, size: 32, offset: 832)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "b_qpprime_y_zero_transform_bypass", scope: !580, file: !579, line: 131, baseType: !283, size: 32, offset: 9888)
!646 = !{!647}
!647 = !DISubrange(count: 1)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !383, file: !238, line: 288, baseType: !649, size: 64, offset: 25600)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "pps_array", scope: !383, file: !238, line: 289, baseType: !651, size: 960, offset: 25664)
!651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !652, size: 960, elements: !646)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pps_t", file: !579, line: 165, baseType: !653)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !579, line: 135, size: 960, elements: !654)
!654 = !{!655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "i_id", scope: !653, file: !579, line: 137, baseType: !283, size: 32)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !653, file: !579, line: 138, baseType: !283, size: 32, offset: 32)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !653, file: !579, line: 140, baseType: !283, size: 32, offset: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_order", scope: !653, file: !579, line: 142, baseType: !283, size: 32, offset: 96)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_slice_groups", scope: !653, file: !579, line: 143, baseType: !283, size: 32, offset: 128)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l0_active", scope: !653, file: !579, line: 145, baseType: !283, size: 32, offset: 160)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l1_active", scope: !653, file: !579, line: 146, baseType: !283, size: 32, offset: 192)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_pred", scope: !653, file: !579, line: 148, baseType: !283, size: 32, offset: 224)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !653, file: !579, line: 149, baseType: !283, size: 32, offset: 256)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_init_qp", scope: !653, file: !579, line: 151, baseType: !283, size: 32, offset: 288)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_init_qs", scope: !653, file: !579, line: 152, baseType: !283, size: 32, offset: 320)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_index_offset", scope: !653, file: !579, line: 154, baseType: !283, size: 32, offset: 352)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter_control", scope: !653, file: !579, line: 156, baseType: !283, size: 32, offset: 384)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "b_constrained_intra_pred", scope: !653, file: !579, line: 157, baseType: !283, size: 32, offset: 416)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "b_redundant_pic_cnt", scope: !653, file: !579, line: 158, baseType: !283, size: 32, offset: 448)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8_mode", scope: !653, file: !579, line: 160, baseType: !283, size: 32, offset: 480)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !653, file: !579, line: 162, baseType: !283, size: 32, offset: 512)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_list", scope: !653, file: !579, line: 163, baseType: !673, size: 384, offset: 576)
!673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !674, size: 384, elements: !125)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !431)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !383, file: !238, line: 290, baseType: !677, size: 64, offset: 26624)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "i_idr_pic_id", scope: !383, file: !238, line: 291, baseType: !283, size: 32, offset: 26688)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "dequant4_mf", scope: !383, file: !238, line: 294, baseType: !680, size: 256, offset: 26752)
!680 = !DICompositeType(tag: DW_TAG_array_type, baseType: !681, size: 256, elements: !685)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 512, elements: !683)
!683 = !{!684, !684}
!684 = !DISubrange(count: 4)
!685 = !{!684}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "dequant8_mf", scope: !383, file: !238, line: 295, baseType: !687, size: 128, offset: 27008)
!687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !688, size: 128, elements: !199)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 2048, elements: !690)
!690 = !{!94, !94}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "unquant4_mf", scope: !383, file: !238, line: 297, baseType: !692, size: 256, offset: 27136)
!692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !693, size: 256, elements: !685)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 512, elements: !365)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "unquant8_mf", scope: !383, file: !238, line: 298, baseType: !696, size: 128, offset: 27392)
!696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !697, size: 128, elements: !199)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 2048, elements: !439)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "quant4_mf", scope: !383, file: !238, line: 300, baseType: !700, size: 256, offset: 27520)
!700 = !DICompositeType(tag: DW_TAG_array_type, baseType: !701, size: 256, elements: !685)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !703, size: 256, elements: !365)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !297, line: 25, baseType: !704)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !299, line: 40, baseType: !705)
!705 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "quant8_mf", scope: !383, file: !238, line: 301, baseType: !707, size: 128, offset: 27776)
!707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !708, size: 128, elements: !199)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !703, size: 1024, elements: !439)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "quant4_bias", scope: !383, file: !238, line: 302, baseType: !700, size: 256, offset: 27904)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "quant8_bias", scope: !383, file: !238, line: 303, baseType: !707, size: 128, offset: 28160)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_table", scope: !383, file: !238, line: 305, baseType: !674, size: 64, offset: 28288)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "nr_residual_sum", scope: !383, file: !238, line: 307, baseType: !714, size: 4096, align: 128, offset: 28416)
!714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !715, size: 4096, elements: !717)
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !297, line: 26, baseType: !716)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !299, line: 42, baseType: !239)
!717 = !{!200, !440}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "nr_offset", scope: !383, file: !238, line: 308, baseType: !719, size: 2048, align: 128, offset: 32512)
!719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !703, size: 2048, elements: !717)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "nr_count", scope: !383, file: !238, line: 309, baseType: !721, size: 64, offset: 34560)
!721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !715, size: 64, elements: !199)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "sh", scope: !383, file: !238, line: 312, baseType: !723, size: 3072, offset: 34624)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_slice_header_t", file: !238, line: 209, baseType: !724)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !238, line: 159, size: 3072, elements: !725)
!725 = !{!726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !754, !755, !756, !757, !758, !759, !760, !761}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !724, file: !238, line: 161, baseType: !649, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !724, file: !238, line: 162, baseType: !677, size: 64, offset: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !724, file: !238, line: 164, baseType: !283, size: 32, offset: 128)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "i_first_mb", scope: !724, file: !238, line: 165, baseType: !283, size: 32, offset: 160)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_mb", scope: !724, file: !238, line: 166, baseType: !283, size: 32, offset: 192)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "i_pps_id", scope: !724, file: !238, line: 168, baseType: !283, size: 32, offset: 224)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !724, file: !238, line: 170, baseType: !283, size: 32, offset: 256)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "b_mbaff", scope: !724, file: !238, line: 172, baseType: !283, size: 32, offset: 288)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "b_field_pic", scope: !724, file: !238, line: 173, baseType: !283, size: 32, offset: 320)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "b_bottom_field", scope: !724, file: !238, line: 174, baseType: !283, size: 32, offset: 352)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "i_idr_pic_id", scope: !724, file: !238, line: 176, baseType: !283, size: 32, offset: 384)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_lsb", scope: !724, file: !238, line: 178, baseType: !283, size: 32, offset: 416)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "i_delta_poc_bottom", scope: !724, file: !238, line: 179, baseType: !283, size: 32, offset: 448)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "i_delta_poc", scope: !724, file: !238, line: 181, baseType: !483, size: 64, offset: 480)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "i_redundant_pic_cnt", scope: !724, file: !238, line: 182, baseType: !283, size: 32, offset: 544)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_spatial_mv_pred", scope: !724, file: !238, line: 184, baseType: !283, size: 32, offset: 576)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "b_num_ref_idx_override", scope: !724, file: !238, line: 186, baseType: !283, size: 32, offset: 608)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l0_active", scope: !724, file: !238, line: 187, baseType: !283, size: 32, offset: 640)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l1_active", scope: !724, file: !238, line: 188, baseType: !283, size: 32, offset: 672)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_pic_list_reordering_l0", scope: !724, file: !238, line: 190, baseType: !283, size: 32, offset: 704)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_pic_list_reordering_l1", scope: !724, file: !238, line: 191, baseType: !283, size: 32, offset: 736)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_order", scope: !724, file: !238, line: 195, baseType: !748, size: 2048, offset: 768)
!748 = !DICompositeType(tag: DW_TAG_array_type, baseType: !749, size: 2048, elements: !753)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !724, file: !238, line: 192, size: 64, elements: !750)
!750 = !{!751, !752}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "idc", scope: !749, file: !238, line: 193, baseType: !283, size: 32)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !749, file: !238, line: 194, baseType: !283, size: 32, offset: 32)
!753 = !{!200, !366}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !724, file: !238, line: 197, baseType: !283, size: 32, offset: 2816)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !724, file: !238, line: 199, baseType: !283, size: 32, offset: 2848)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_delta", scope: !724, file: !238, line: 200, baseType: !283, size: 32, offset: 2880)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "b_sp_for_swidth", scope: !724, file: !238, line: 201, baseType: !283, size: 32, offset: 2912)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "i_qs_delta", scope: !724, file: !238, line: 202, baseType: !283, size: 32, offset: 2944)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "i_disable_deblocking_filter_idc", scope: !724, file: !238, line: 205, baseType: !283, size: 32, offset: 2976)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "i_alpha_c0_offset", scope: !724, file: !238, line: 206, baseType: !283, size: 32, offset: 3008)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "i_beta_offset", scope: !724, file: !238, line: 207, baseType: !283, size: 32, offset: 3040)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "cabac", scope: !383, file: !238, line: 315, baseType: !763, size: 4096, offset: 37760)
!763 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_cabac_t", file: !764, line: 46, baseType: !765)
!764 = !DIFile(filename: "./common/cabac.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "fed287ee191b19e61654b41f7c57e583")
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !764, line: 27, size: 4096, elements: !766)
!766 = !{!767, !768, !769, !770, !771, !772, !773, !774, !775}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "i_low", scope: !765, file: !764, line: 30, baseType: !283, size: 32)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "i_range", scope: !765, file: !764, line: 31, baseType: !283, size: 32, offset: 32)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "i_queue", scope: !765, file: !764, line: 34, baseType: !283, size: 32, offset: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes_outstanding", scope: !765, file: !764, line: 35, baseType: !283, size: 32, offset: 96)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "p_start", scope: !765, file: !764, line: 37, baseType: !550, size: 64, offset: 128)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !765, file: !764, line: 38, baseType: !550, size: 64, offset: 192)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "p_end", scope: !765, file: !764, line: 39, baseType: !550, size: 64, offset: 256)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "f8_bits_encoded", scope: !765, file: !764, line: 42, baseType: !283, size: 32, align: 128, offset: 384)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !765, file: !764, line: 45, baseType: !776, size: 3680, offset: 416)
!776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !431, size: 3680, elements: !777)
!777 = !{!778}
!778 = !DISubrange(count: 460)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "frames", scope: !383, file: !238, line: 340, baseType: !780, size: 31808, offset: 41856)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !383, file: !238, line: 317, size: 31808, elements: !781)
!781 = !{!782, !912, !913, !917, !918, !920, !921, !922, !923, !924, !925, !926}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !780, file: !238, line: 320, baseType: !783, size: 4288)
!783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !784, size: 4288, elements: !358)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_frame_t", file: !786, line: 94, baseType: !787)
!786 = !DIFile(filename: "./common/frame.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "3ae200731644fdbac60ac7f8f3f9d2f1")
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !786, line: 31, size: 51648, elements: !788)
!788 = !{!789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !801, !802, !803, !804, !805, !806, !808, !810, !811, !813, !814, !815, !820, !827, !830, !833, !835, !836, !838, !839, !842, !843, !844, !846, !848, !849, !850, !851, !853, !854, !855, !856, !857, !858, !883}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !787, file: !786, line: 34, baseType: !283, size: 32)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !787, file: !786, line: 35, baseType: !283, size: 32, offset: 32)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "i_qpplus1", scope: !787, file: !786, line: 36, baseType: !283, size: 32, offset: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "i_pts", scope: !787, file: !786, line: 37, baseType: !311, size: 64, offset: 128)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame", scope: !787, file: !786, line: 38, baseType: !283, size: 32, offset: 192)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !787, file: !786, line: 39, baseType: !283, size: 32, offset: 224)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "b_kept_as_ref", scope: !787, file: !786, line: 40, baseType: !283, size: 32, offset: 256)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_avg_rc", scope: !787, file: !786, line: 41, baseType: !284, size: 32, offset: 288)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_avg_aq", scope: !787, file: !786, line: 42, baseType: !284, size: 32, offset: 320)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "i_plane", scope: !787, file: !786, line: 45, baseType: !283, size: 32, offset: 352)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !787, file: !786, line: 46, baseType: !800, size: 96, offset: 384)
!800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 96, elements: !160)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !787, file: !786, line: 47, baseType: !800, size: 96, offset: 480)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines", scope: !787, file: !786, line: 48, baseType: !800, size: 96, offset: 576)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride_lowres", scope: !787, file: !786, line: 49, baseType: !283, size: 32, offset: 672)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "i_width_lowres", scope: !787, file: !786, line: 50, baseType: !283, size: 32, offset: 704)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_lowres", scope: !787, file: !786, line: 51, baseType: !283, size: 32, offset: 736)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !787, file: !786, line: 52, baseType: !807, size: 192, offset: 768)
!807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !550, size: 192, elements: !160)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "filtered", scope: !787, file: !786, line: 53, baseType: !809, size: 256, offset: 960)
!809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !550, size: 256, elements: !685)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "lowres", scope: !787, file: !786, line: 54, baseType: !809, size: 256, offset: 1216)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "integral", scope: !787, file: !786, line: 55, baseType: !812, size: 64, offset: 1472)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !787, file: !786, line: 59, baseType: !809, size: 256, offset: 1536)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_lowres", scope: !787, file: !786, line: 60, baseType: !809, size: 256, offset: 1792)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type", scope: !787, file: !786, line: 63, baseType: !816, size: 64, offset: 2048)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !312, line: 24, baseType: !818)
!818 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !299, line: 37, baseType: !819)
!819 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !787, file: !786, line: 64, baseType: !821, size: 128, offset: 2112)
!821 = !DICompositeType(tag: DW_TAG_array_type, baseType: !822, size: 128, elements: !199)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DICompositeType(tag: DW_TAG_array_type, baseType: !824, size: 32, elements: !199)
!824 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !312, line: 25, baseType: !825)
!825 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !299, line: 39, baseType: !826)
!826 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_mvs", scope: !787, file: !786, line: 65, baseType: !828, size: 2176, offset: 2240)
!828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !822, size: 2176, elements: !829)
!829 = !{!200, !335}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_mv_costs", scope: !787, file: !786, line: 66, baseType: !831, size: 2176, offset: 4416)
!831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !832, size: 2176, elements: !829)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !787, file: !786, line: 67, baseType: !834, size: 128, offset: 6592)
!834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !816, size: 128, elements: !199)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref", scope: !787, file: !786, line: 68, baseType: !483, size: 64, offset: 6720)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "ref_poc", scope: !787, file: !786, line: 69, baseType: !837, size: 1024, offset: 6784)
!837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 1024, elements: !753)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "inv_ref_poc", scope: !787, file: !786, line: 70, baseType: !694, size: 512, offset: 7808)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "i_cost_est", scope: !787, file: !786, line: 75, baseType: !840, size: 10368, offset: 8320)
!840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 10368, elements: !841)
!841 = !{!136, !136}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "i_cost_est_aq", scope: !787, file: !786, line: 76, baseType: !840, size: 10368, offset: 18688)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "i_satd", scope: !787, file: !786, line: 77, baseType: !283, size: 32, offset: 29056)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_mbs", scope: !787, file: !786, line: 78, baseType: !845, size: 576, offset: 29088)
!845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 576, elements: !135)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_satds", scope: !787, file: !786, line: 79, baseType: !847, size: 20736, offset: 29696)
!847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !832, size: 20736, elements: !841)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_satd", scope: !787, file: !786, line: 80, baseType: !832, size: 64, offset: 50432)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_bits", scope: !787, file: !786, line: 81, baseType: !832, size: 64, offset: 50496)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_qp", scope: !787, file: !786, line: 82, baseType: !832, size: 64, offset: 50560)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_offset", scope: !787, file: !786, line: 83, baseType: !852, size: 64, offset: 50624)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "b_intra_calculated", scope: !787, file: !786, line: 84, baseType: !283, size: 32, offset: 50688)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_cost", scope: !787, file: !786, line: 85, baseType: !812, size: 64, offset: 50752)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "i_inv_qscale_factor", scope: !787, file: !786, line: 86, baseType: !812, size: 64, offset: 50816)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_completed", scope: !787, file: !786, line: 89, baseType: !283, size: 32, offset: 50880)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "i_reference_count", scope: !787, file: !786, line: 90, baseType: !283, size: 32, offset: 50912)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !787, file: !786, line: 91, baseType: !859, size: 320, offset: 50944)
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !534, line: 72, baseType: !860)
!860 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !534, line: 67, size: 320, elements: !861)
!861 = !{!862, !881, !882}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !860, file: !534, line: 69, baseType: !863, size: 320)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !864, line: 22, size: 320, elements: !865)
!864 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "584baedd80e6041b81caae7f496091c0")
!865 = !{!866, !867, !868, !869, !870, !871, !872, !873}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !863, file: !864, line: 24, baseType: !283, size: 32)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !863, file: !864, line: 25, baseType: !239, size: 32, offset: 32)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !863, file: !864, line: 26, baseType: !283, size: 32, offset: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !863, file: !864, line: 28, baseType: !239, size: 32, offset: 96)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !863, file: !864, line: 32, baseType: !283, size: 32, offset: 128)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !863, file: !864, line: 34, baseType: !826, size: 16, offset: 160)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !863, file: !864, line: 35, baseType: !826, size: 16, offset: 176)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !863, file: !864, line: 36, baseType: !874, size: 128, offset: 192)
!874 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !875, line: 55, baseType: !876)
!875 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "04c81e86d34dad9c99ad006d32e47a0d")
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !875, line: 51, size: 128, elements: !877)
!877 = !{!878, !880}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !876, file: !875, line: 53, baseType: !879, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !876, file: !875, line: 54, baseType: !879, size: 64, offset: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !860, file: !534, line: 70, baseType: !29, size: 320)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !860, file: !534, line: 71, baseType: !314, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "cv", scope: !787, file: !786, line: 92, baseType: !884, size: 384, offset: 51264)
!884 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_cond_t", file: !534, line: 80, baseType: !885)
!885 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !534, line: 75, size: 384, elements: !886)
!886 = !{!887, !909, !910}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !885, file: !534, line: 77, baseType: !888, size: 384)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_cond_s", file: !875, line: 94, size: 384, elements: !889)
!889 = !{!890, !902, !903, !905, !906, !907, !908}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "__wseq", scope: !888, file: !875, line: 96, baseType: !891, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_typedef, name: "__atomic_wide_counter", file: !892, line: 33, baseType: !893)
!892 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/atomic_wide_counter.h", directory: "", checksumkind: CSK_MD5, checksum: "2708e6e61e266abad2d765ccef838dbe")
!893 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !892, line: 25, size: 64, elements: !894)
!894 = !{!895, !897}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "__value64", scope: !893, file: !892, line: 27, baseType: !896, size: 64)
!896 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "__value32", scope: !893, file: !892, line: 32, baseType: !898, size: 64)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !893, file: !892, line: 28, size: 64, elements: !899)
!899 = !{!900, !901}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "__low", scope: !898, file: !892, line: 30, baseType: !239, size: 32)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "__high", scope: !898, file: !892, line: 31, baseType: !239, size: 32, offset: 32)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_start", scope: !888, file: !875, line: 97, baseType: !891, size: 64, offset: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "__g_refs", scope: !888, file: !875, line: 98, baseType: !904, size: 64, offset: 128)
!904 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 64, elements: !199)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "__g_size", scope: !888, file: !875, line: 99, baseType: !904, size: 64, offset: 192)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_orig_size", scope: !888, file: !875, line: 100, baseType: !239, size: 32, offset: 256)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "__wrefs", scope: !888, file: !875, line: 101, baseType: !239, size: 32, offset: 288)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "__g_signals", scope: !888, file: !875, line: 102, baseType: !904, size: 64, offset: 320)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !885, file: !534, line: 78, baseType: !9, size: 384)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !885, file: !534, line: 79, baseType: !911, size: 64)
!911 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !780, file: !238, line: 322, baseType: !783, size: 4288, offset: 4288)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !780, file: !238, line: 324, baseType: !914, size: 21760, offset: 8576)
!914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !784, size: 21760, elements: !915)
!915 = !{!916}
!916 = !DISubrange(count: 340)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "last_nonb", scope: !780, file: !238, line: 326, baseType: !784, size: 64, offset: 30336)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !780, file: !238, line: 329, baseType: !919, size: 1152, offset: 30400)
!919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !784, size: 1152, elements: !135)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_idr", scope: !780, file: !238, line: 331, baseType: !283, size: 32, offset: 31552)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "i_input", scope: !780, file: !238, line: 333, baseType: !283, size: 32, offset: 31584)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_dpb", scope: !780, file: !238, line: 335, baseType: !283, size: 32, offset: 31616)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_ref0", scope: !780, file: !238, line: 336, baseType: !283, size: 32, offset: 31648)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_ref1", scope: !780, file: !238, line: 337, baseType: !283, size: 32, offset: 31680)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "i_delay", scope: !780, file: !238, line: 338, baseType: !283, size: 32, offset: 31712)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "b_have_lowres", scope: !780, file: !238, line: 339, baseType: !283, size: 32, offset: 31744)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "fenc", scope: !383, file: !238, line: 343, baseType: !784, size: 64, offset: 73664)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "fdec", scope: !383, file: !238, line: 346, baseType: !784, size: 64, offset: 73728)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref0", scope: !383, file: !238, line: 349, baseType: !283, size: 32, offset: 73792)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "fref0", scope: !383, file: !238, line: 350, baseType: !931, size: 1216, offset: 73856)
!931 = !DICompositeType(tag: DW_TAG_array_type, baseType: !784, size: 1216, elements: !932)
!932 = !{!933}
!933 = !DISubrange(count: 19)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref1", scope: !383, file: !238, line: 351, baseType: !283, size: 32, offset: 75072)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "fref1", scope: !383, file: !238, line: 352, baseType: !931, size: 1216, offset: 75136)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_reorder", scope: !383, file: !238, line: 353, baseType: !483, size: 64, offset: 76352)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "dct", scope: !383, file: !238, line: 365, baseType: !938, size: 10624, offset: 76416)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !383, file: !238, line: 358, size: 10624, elements: !939)
!939 = !{!940, !942, !945, !948}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "luma16x16_dc", scope: !938, file: !238, line: 360, baseType: !941, size: 256, align: 128)
!941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !824, size: 256, elements: !365)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_dc", scope: !938, file: !238, line: 361, baseType: !943, size: 128, align: 128, offset: 256)
!943 = !DICompositeType(tag: DW_TAG_array_type, baseType: !824, size: 128, elements: !944)
!944 = !{!200, !684}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "luma8x8", scope: !938, file: !238, line: 363, baseType: !946, size: 4096, align: 128, offset: 384)
!946 = !DICompositeType(tag: DW_TAG_array_type, baseType: !824, size: 4096, elements: !947)
!947 = !{!684, !440}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "luma4x4", scope: !938, file: !238, line: 364, baseType: !949, size: 6144, align: 128, offset: 4480)
!949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !824, size: 6144, elements: !950)
!950 = !{!43, !366}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "mb", scope: !383, file: !238, line: 544, baseType: !952, size: 80128, offset: 87040)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !383, file: !238, line: 368, size: 80128, elements: !953)
!953 = !{!954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !980, !982, !983, !984, !985, !986, !987, !988, !989, !990, !992, !995, !998, !999, !1000, !1001, !1002, !1006, !1007, !1008, !1011, !1013, !1014, !1015, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1064, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1095, !1098, !1100}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !952, file: !238, line: 370, baseType: !283, size: 32)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_stride", scope: !952, file: !238, line: 373, baseType: !283, size: 32, offset: 32)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "i_b8_stride", scope: !952, file: !238, line: 374, baseType: !283, size: 32, offset: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "i_b4_stride", scope: !952, file: !238, line: 375, baseType: !283, size: 32, offset: 96)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_x", scope: !952, file: !238, line: 378, baseType: !283, size: 32, offset: 128)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_y", scope: !952, file: !238, line: 379, baseType: !283, size: 32, offset: 160)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_xy", scope: !952, file: !238, line: 380, baseType: !283, size: 32, offset: 192)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "i_b8_xy", scope: !952, file: !238, line: 381, baseType: !283, size: 32, offset: 224)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "i_b4_xy", scope: !952, file: !238, line: 382, baseType: !283, size: 32, offset: 256)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !952, file: !238, line: 385, baseType: !283, size: 32, offset: 288)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !952, file: !238, line: 386, baseType: !283, size: 32, offset: 320)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !952, file: !238, line: 387, baseType: !283, size: 32, offset: 352)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "b_trellis", scope: !952, file: !238, line: 388, baseType: !283, size: 32, offset: 384)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "b_noise_reduction", scope: !952, file: !238, line: 389, baseType: !283, size: 32, offset: 416)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_rd", scope: !952, file: !238, line: 390, baseType: !283, size: 32, offset: 448)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_trellis", scope: !952, file: !238, line: 391, baseType: !283, size: 32, offset: 480)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !952, file: !238, line: 393, baseType: !283, size: 32, offset: 512)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min", scope: !952, file: !238, line: 396, baseType: !483, size: 64, offset: 544)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max", scope: !952, file: !238, line: 397, baseType: !483, size: 64, offset: 608)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min_spel", scope: !952, file: !238, line: 400, baseType: !483, size: 64, offset: 672)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max_spel", scope: !952, file: !238, line: 401, baseType: !483, size: 64, offset: 736)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min_fpel", scope: !952, file: !238, line: 403, baseType: !483, size: 64, offset: 800)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max_fpel", scope: !952, file: !238, line: 404, baseType: !483, size: 64, offset: 864)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour", scope: !952, file: !238, line: 407, baseType: !239, size: 32, offset: 928)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour8", scope: !952, file: !238, line: 408, baseType: !979, size: 128, offset: 960)
!979 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 128, elements: !685)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour4", scope: !952, file: !238, line: 409, baseType: !981, size: 512, offset: 1088)
!981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 512, elements: !365)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_top", scope: !952, file: !238, line: 410, baseType: !283, size: 32, offset: 1600)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_left", scope: !952, file: !238, line: 411, baseType: !283, size: 32, offset: 1632)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_topleft", scope: !952, file: !238, line: 412, baseType: !283, size: 32, offset: 1664)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_topright", scope: !952, file: !238, line: 413, baseType: !283, size: 32, offset: 1696)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_prev_xy", scope: !952, file: !238, line: 414, baseType: !283, size: 32, offset: 1728)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_top_xy", scope: !952, file: !238, line: 415, baseType: !283, size: 32, offset: 1760)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !952, file: !238, line: 422, baseType: !816, size: 64, offset: 1792)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !952, file: !238, line: 423, baseType: !816, size: 64, offset: 1856)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "cbp", scope: !952, file: !238, line: 424, baseType: !991, size: 64, offset: 1920)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "intra4x4_pred_mode", scope: !952, file: !238, line: 425, baseType: !993, size: 64, offset: 1984)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = !DICompositeType(tag: DW_TAG_array_type, baseType: !817, size: 64, elements: !93)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "non_zero_count", scope: !952, file: !238, line: 427, baseType: !996, size: 64, offset: 2048)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DICompositeType(tag: DW_TAG_array_type, baseType: !431, size: 192, elements: !42)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_pred_mode", scope: !952, file: !238, line: 428, baseType: !816, size: 64, offset: 2112)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !952, file: !238, line: 429, baseType: !821, size: 128, offset: 2176)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !952, file: !238, line: 430, baseType: !821, size: 128, offset: 2304)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !952, file: !238, line: 431, baseType: !834, size: 128, offset: 2432)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "mvr", scope: !952, file: !238, line: 432, baseType: !1003, size: 4096, offset: 2560)
!1003 = !DICompositeType(tag: DW_TAG_array_type, baseType: !822, size: 4096, elements: !1004)
!1004 = !{!200, !1005}
!1005 = !DISubrange(count: 32)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "skipbp", scope: !952, file: !238, line: 433, baseType: !816, size: 64, offset: 6656)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "mb_transform_size", scope: !952, file: !238, line: 434, baseType: !816, size: 64, offset: 6720)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "intra_border_backup", scope: !952, file: !238, line: 435, baseType: !1009, size: 384, offset: 6784)
!1009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !550, size: 384, elements: !1010)
!1010 = !{!200, !161}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "nnz_backup", scope: !952, file: !238, line: 436, baseType: !1012, size: 64, offset: 7168)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !952, file: !238, line: 439, baseType: !283, size: 32, offset: 7232)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "i_partition", scope: !952, file: !238, line: 440, baseType: !283, size: 32, offset: 7264)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "i_sub_partition", scope: !952, file: !238, line: 441, baseType: !1016, size: 128, offset: 7296)
!1016 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 128, elements: !685)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !952, file: !238, line: 442, baseType: !283, size: 32, offset: 7424)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_luma", scope: !952, file: !238, line: 444, baseType: !283, size: 32, offset: 7456)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_chroma", scope: !952, file: !238, line: 445, baseType: !283, size: 32, offset: 7488)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra16x16_pred_mode", scope: !952, file: !238, line: 447, baseType: !283, size: 32, offset: 7520)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_pred_mode", scope: !952, file: !238, line: 448, baseType: !283, size: 32, offset: 7552)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "i_skip_intra", scope: !952, file: !238, line: 454, baseType: !283, size: 32, offset: 7584)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "b_skip_mc", scope: !952, file: !238, line: 457, baseType: !283, size: 32, offset: 7616)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "pic", scope: !952, file: !238, line: 498, baseType: !1025, size: 57344, offset: 7680)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !952, file: !238, line: 459, size: 57344, elements: !1026)
!1026 = !{!1027, !1031, !1035, !1037, !1038, !1041, !1044, !1045, !1048, !1049, !1050, !1053, !1054, !1055, !1056, !1057, !1058, !1061, !1063}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_buf", scope: !1025, file: !238, line: 464, baseType: !1028, size: 3072, align: 128)
!1028 = !DICompositeType(tag: DW_TAG_array_type, baseType: !431, size: 3072, elements: !1029)
!1029 = !{!1030}
!1030 = !DISubrange(count: 384)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "fdec_buf", scope: !1025, file: !238, line: 465, baseType: !1032, size: 6912, align: 128, offset: 3072)
!1032 = !DICompositeType(tag: DW_TAG_array_type, baseType: !431, size: 6912, elements: !1033)
!1033 = !{!1034}
!1034 = !DISubrange(count: 864)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_fdec_buf", scope: !1025, file: !238, line: 468, baseType: !1036, size: 2048, align: 128, offset: 9984)
!1036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !431, size: 2048, elements: !597)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_fdec_buf", scope: !1025, file: !238, line: 469, baseType: !1036, size: 2048, align: 128, offset: 12032)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_dct_buf", scope: !1025, file: !238, line: 470, baseType: !1039, size: 3072, align: 128, offset: 14080)
!1039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !824, size: 3072, elements: !1040)
!1040 = !{!161, !440}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_dct_buf", scope: !1025, file: !238, line: 471, baseType: !1042, size: 3840, align: 128, offset: 17152)
!1042 = !DICompositeType(tag: DW_TAG_array_type, baseType: !824, size: 3840, elements: !1043)
!1043 = !{!325, !366}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_dct8", scope: !1025, file: !238, line: 474, baseType: !946, size: 4096, align: 128, offset: 20992)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_dct4", scope: !1025, file: !238, line: 475, baseType: !1046, size: 4096, align: 128, offset: 25088)
!1046 = !DICompositeType(tag: DW_TAG_array_type, baseType: !824, size: 4096, elements: !1047)
!1047 = !{!366, !366}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_satd", scope: !1025, file: !238, line: 478, baseType: !682, size: 512, offset: 29184)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_satd_sum", scope: !1025, file: !238, line: 479, baseType: !283, size: 32, offset: 29696)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_sa8d", scope: !1025, file: !238, line: 480, baseType: !1051, size: 128, offset: 29728)
!1051 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 128, elements: !1052)
!1052 = !{!200, !200}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_sa8d_sum", scope: !1025, file: !238, line: 481, baseType: !283, size: 32, offset: 29856)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "p_fenc", scope: !1025, file: !238, line: 484, baseType: !807, size: 192, offset: 29888)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "p_fenc_plane", scope: !1025, file: !238, line: 486, baseType: !807, size: 192, offset: 30080)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "p_fdec", scope: !1025, file: !238, line: 489, baseType: !807, size: 192, offset: 30272)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "i_fref", scope: !1025, file: !238, line: 492, baseType: !483, size: 64, offset: 30464)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "p_fref", scope: !1025, file: !238, line: 493, baseType: !1059, size: 24576, offset: 30528)
!1059 = !DICompositeType(tag: DW_TAG_array_type, baseType: !550, size: 24576, elements: !1060)
!1060 = !{!200, !1005, !126}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "p_integral", scope: !1025, file: !238, line: 494, baseType: !1062, size: 2048, offset: 55104)
!1062 = !DICompositeType(tag: DW_TAG_array_type, baseType: !812, size: 2048, elements: !753)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !1025, file: !238, line: 497, baseType: !800, size: 96, offset: 57152)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !952, file: !238, line: 526, baseType: !1065, size: 12032, offset: 65024)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !952, file: !238, line: 501, size: 12032, elements: !1066)
!1066 = !{!1067, !1069, !1071, !1074, !1077, !1078, !1079, !1080, !1081, !1082, !1083}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "intra4x4_pred_mode", scope: !1065, file: !238, line: 504, baseType: !1068, size: 384)
!1068 = !DICompositeType(tag: DW_TAG_array_type, baseType: !817, size: 384, elements: !10)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "non_zero_count", scope: !1065, file: !238, line: 507, baseType: !1070, size: 384, offset: 384)
!1070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !431, size: 384, elements: !10)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1065, file: !238, line: 510, baseType: !1072, size: 768, align: 32, offset: 768)
!1072 = !DICompositeType(tag: DW_TAG_array_type, baseType: !817, size: 768, elements: !1073)
!1073 = !{!200, !11}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !1065, file: !238, line: 513, baseType: !1075, size: 3072, align: 128, offset: 1536)
!1075 = !DICompositeType(tag: DW_TAG_array_type, baseType: !824, size: 3072, elements: !1076)
!1076 = !{!200, !11, !200}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !1065, file: !238, line: 514, baseType: !1075, size: 3072, align: 64, offset: 4608)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "skip", scope: !1065, file: !238, line: 517, baseType: !1068, size: 384, align: 32, offset: 7680)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "direct_mv", scope: !1065, file: !238, line: 519, baseType: !1075, size: 3072, align: 128, offset: 8064)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "direct_ref", scope: !1065, file: !238, line: 520, baseType: !1072, size: 768, align: 32, offset: 11136)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "pskip_mv", scope: !1065, file: !238, line: 521, baseType: !823, size: 32, align: 32, offset: 11904)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_transform_size", scope: !1065, file: !238, line: 524, baseType: !283, size: 32, offset: 11936)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_interlaced", scope: !1065, file: !238, line: 525, baseType: !283, size: 32, offset: 11968)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !952, file: !238, line: 529, baseType: !283, size: 32, offset: 77056)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp", scope: !952, file: !238, line: 530, baseType: !283, size: 32, offset: 77088)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_qp", scope: !952, file: !238, line: 531, baseType: !283, size: 32, offset: 77120)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_dqp", scope: !952, file: !238, line: 532, baseType: !283, size: 32, offset: 77152)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "b_variable_qp", scope: !952, file: !238, line: 533, baseType: !283, size: 32, offset: 77184)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "b_lossless", scope: !952, file: !238, line: 534, baseType: !283, size: 32, offset: 77216)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_auto_read", scope: !952, file: !238, line: 535, baseType: !283, size: 32, offset: 77248)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_auto_write", scope: !952, file: !238, line: 536, baseType: !283, size: 32, offset: 77280)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "dist_scale_factor", scope: !952, file: !238, line: 539, baseType: !1093, size: 512, offset: 77312)
!1093 = !DICompositeType(tag: DW_TAG_array_type, baseType: !824, size: 512, elements: !1094)
!1094 = !{!366, !200}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_weight", scope: !952, file: !238, line: 540, baseType: !1096, size: 2048, offset: 77824)
!1096 = !DICompositeType(tag: DW_TAG_array_type, baseType: !824, size: 2048, elements: !1097)
!1097 = !{!1005, !684}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "map_col_to_list0_buf", scope: !952, file: !238, line: 542, baseType: !1099, size: 16, offset: 79872)
!1099 = !DICompositeType(tag: DW_TAG_array_type, baseType: !817, size: 16, elements: !199)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "map_col_to_list0", scope: !952, file: !238, line: 543, baseType: !1101, size: 128, offset: 79888)
!1101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !817, size: 128, elements: !365)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !383, file: !238, line: 547, baseType: !1103, size: 64, offset: 167168)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_ratecontrol_t", file: !238, line: 248, baseType: !1105)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_ratecontrol_t", file: !2, line: 63, size: 4864, elements: !1106)
!1106 = !{!1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1197, !1198, !1199, !1200, !1201, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1215, !1216, !1217, !1218, !1219, !1220}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "b_abr", scope: !1105, file: !2, line: 66, baseType: !283, size: 32)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "b_2pass", scope: !1105, file: !2, line: 67, baseType: !283, size: 32, offset: 32)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "b_vbv", scope: !1105, file: !2, line: 68, baseType: !283, size: 32, offset: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "b_vbv_min_rate", scope: !1105, file: !2, line: 69, baseType: !283, size: 32, offset: 96)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "fps", scope: !1105, file: !2, line: 70, baseType: !302, size: 64, offset: 128)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "bitrate", scope: !1105, file: !2, line: 71, baseType: !302, size: 64, offset: 192)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "rate_tolerance", scope: !1105, file: !2, line: 72, baseType: !302, size: 64, offset: 256)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "nmb", scope: !1105, file: !2, line: 73, baseType: !283, size: 32, offset: 320)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "qp_constant", scope: !1105, file: !2, line: 74, baseType: !1116, size: 160, offset: 352)
!1116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 160, elements: !105)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "rce", scope: !1105, file: !2, line: 77, baseType: !285, size: 64, offset: 512)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !1105, file: !2, line: 78, baseType: !283, size: 32, offset: 576)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "qpm", scope: !1105, file: !2, line: 79, baseType: !283, size: 32, offset: 608)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "f_qpm", scope: !1105, file: !2, line: 80, baseType: !284, size: 32, offset: 640)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "qpa_rc", scope: !1105, file: !2, line: 81, baseType: !284, size: 32, offset: 672)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "qpa_aq", scope: !1105, file: !2, line: 82, baseType: !284, size: 32, offset: 704)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "qp_force", scope: !1105, file: !2, line: 83, baseType: !283, size: 32, offset: 736)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_size", scope: !1105, file: !2, line: 86, baseType: !302, size: 64, offset: 768)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_fill_final", scope: !1105, file: !2, line: 87, baseType: !302, size: 64, offset: 832)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_fill", scope: !1105, file: !2, line: 88, baseType: !302, size: 64, offset: 896)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_rate", scope: !1105, file: !2, line: 89, baseType: !302, size: 64, offset: 960)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "pred", scope: !1105, file: !2, line: 90, baseType: !1129, size: 64, offset: 1024)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = !DIDerivedType(tag: DW_TAG_typedef, name: "predictor_t", file: !2, line: 61, baseType: !1131)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 56, size: 192, elements: !1132)
!1132 = !{!1133, !1134, !1135}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "coeff", scope: !1131, file: !2, line: 58, baseType: !302, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1131, file: !2, line: 59, baseType: !302, size: 64, offset: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "decay", scope: !1131, file: !2, line: 60, baseType: !302, size: 64, offset: 128)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "last_satd", scope: !1105, file: !2, line: 93, baseType: !283, size: 32, offset: 1088)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "last_rceq", scope: !1105, file: !2, line: 94, baseType: !302, size: 64, offset: 1152)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "cplxr_sum", scope: !1105, file: !2, line: 95, baseType: !302, size: 64, offset: 1216)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "expected_bits_sum", scope: !1105, file: !2, line: 96, baseType: !302, size: 64, offset: 1280)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "wanted_bits_window", scope: !1105, file: !2, line: 97, baseType: !302, size: 64, offset: 1344)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "cbr_decay", scope: !1105, file: !2, line: 98, baseType: !302, size: 64, offset: 1408)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "short_term_cplxsum", scope: !1105, file: !2, line: 99, baseType: !302, size: 64, offset: 1472)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "short_term_cplxcount", scope: !1105, file: !2, line: 100, baseType: !302, size: 64, offset: 1536)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "rate_factor_constant", scope: !1105, file: !2, line: 101, baseType: !302, size: 64, offset: 1600)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "ip_offset", scope: !1105, file: !2, line: 102, baseType: !302, size: 64, offset: 1664)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "pb_offset", scope: !1105, file: !2, line: 103, baseType: !302, size: 64, offset: 1728)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "p_stat_file_out", scope: !1105, file: !2, line: 106, baseType: !1148, size: 64, offset: 1792)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1150, line: 7, baseType: !1151)
!1150 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1152, line: 49, size: 1728, elements: !1153)
!1152 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!1153 = !{!1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1169, !1171, !1172, !1173, !1175, !1176, !1177, !1179, !1182, !1184, !1187, !1190, !1191, !1192, !1195, !1196}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1151, file: !1152, line: 51, baseType: !283, size: 32)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1151, file: !1152, line: 54, baseType: !428, size: 64, offset: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1151, file: !1152, line: 55, baseType: !428, size: 64, offset: 128)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1151, file: !1152, line: 56, baseType: !428, size: 64, offset: 192)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1151, file: !1152, line: 57, baseType: !428, size: 64, offset: 256)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1151, file: !1152, line: 58, baseType: !428, size: 64, offset: 320)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1151, file: !1152, line: 59, baseType: !428, size: 64, offset: 384)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1151, file: !1152, line: 60, baseType: !428, size: 64, offset: 448)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1151, file: !1152, line: 61, baseType: !428, size: 64, offset: 512)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1151, file: !1152, line: 64, baseType: !428, size: 64, offset: 576)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1151, file: !1152, line: 65, baseType: !428, size: 64, offset: 640)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1151, file: !1152, line: 66, baseType: !428, size: 64, offset: 704)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1151, file: !1152, line: 68, baseType: !1167, size: 64, offset: 768)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1152, line: 36, flags: DIFlagFwdDecl)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1151, file: !1152, line: 70, baseType: !1170, size: 64, offset: 832)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1151, file: !1152, line: 72, baseType: !283, size: 32, offset: 896)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1151, file: !1152, line: 73, baseType: !283, size: 32, offset: 928)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1151, file: !1152, line: 74, baseType: !1174, size: 64, offset: 960)
!1174 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !299, line: 152, baseType: !314)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1151, file: !1152, line: 77, baseType: !705, size: 16, offset: 1024)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1151, file: !1152, line: 78, baseType: !819, size: 8, offset: 1040)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1151, file: !1152, line: 79, baseType: !1178, size: 8, offset: 1048)
!1178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !646)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1151, file: !1152, line: 81, baseType: !1180, size: 64, offset: 1088)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1152, line: 43, baseType: null)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1151, file: !1152, line: 89, baseType: !1183, size: 64, offset: 1152)
!1183 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !299, line: 153, baseType: !314)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1151, file: !1152, line: 91, baseType: !1185, size: 64, offset: 1216)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1152, line: 37, flags: DIFlagFwdDecl)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1151, file: !1152, line: 92, baseType: !1188, size: 64, offset: 1280)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1152, line: 38, flags: DIFlagFwdDecl)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1151, file: !1152, line: 93, baseType: !1170, size: 64, offset: 1344)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1151, file: !1152, line: 94, baseType: !310, size: 64, offset: 1408)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1151, file: !1152, line: 95, baseType: !1193, size: 64, offset: 1472)
!1193 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1194, line: 46, baseType: !300)
!1194 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1151, file: !1152, line: 96, baseType: !283, size: 32, offset: 1536)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1151, file: !1152, line: 98, baseType: !219, size: 160, offset: 1568)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_file_tmpname", scope: !1105, file: !2, line: 107, baseType: !428, size: 64, offset: 1856)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "num_entries", scope: !1105, file: !2, line: 109, baseType: !283, size: 32, offset: 1920)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1105, file: !2, line: 110, baseType: !285, size: 64, offset: 1984)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "last_qscale", scope: !1105, file: !2, line: 111, baseType: !302, size: 64, offset: 2048)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "last_qscale_for", scope: !1105, file: !2, line: 112, baseType: !1202, size: 320, offset: 2112)
!1202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, size: 320, elements: !105)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "last_non_b_pict_type", scope: !1105, file: !2, line: 113, baseType: !283, size: 32, offset: 2432)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "accum_p_qp", scope: !1105, file: !2, line: 114, baseType: !302, size: 64, offset: 2496)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "accum_p_norm", scope: !1105, file: !2, line: 115, baseType: !302, size: 64, offset: 2560)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "last_accum_p_norm", scope: !1105, file: !2, line: 116, baseType: !302, size: 64, offset: 2624)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "lmin", scope: !1105, file: !2, line: 117, baseType: !1202, size: 320, offset: 2688)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "lmax", scope: !1105, file: !2, line: 118, baseType: !1202, size: 320, offset: 3008)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "lstep", scope: !1105, file: !2, line: 119, baseType: !302, size: 64, offset: 3328)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "frame_size_estimated", scope: !1105, file: !2, line: 122, baseType: !302, size: 64, offset: 3392)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "frame_size_planned", scope: !1105, file: !2, line: 123, baseType: !302, size: 64, offset: 3456)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "row_pred", scope: !1105, file: !2, line: 124, baseType: !1129, size: 64, offset: 3520)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "row_preds", scope: !1105, file: !2, line: 125, baseType: !1214, size: 960, offset: 3584)
!1214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1130, size: 960, elements: !105)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "pred_b_from_p", scope: !1105, file: !2, line: 126, baseType: !1129, size: 64, offset: 4544)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "bframes", scope: !1105, file: !2, line: 127, baseType: !283, size: 32, offset: 4608)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "bframe_bits", scope: !1105, file: !2, line: 128, baseType: !283, size: 32, offset: 4640)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "i_zones", scope: !1105, file: !2, line: 130, baseType: !283, size: 32, offset: 4672)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "zones", scope: !1105, file: !2, line: 131, baseType: !512, size: 64, offset: 4736)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "prev_zone", scope: !1105, file: !2, line: 132, baseType: !512, size: 64, offset: 4800)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !383, file: !238, line: 604, baseType: !1222, size: 23936, offset: 167232)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !383, file: !238, line: 550, size: 23936, elements: !1223)
!1223 = !{!1224, !1247, !1248, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1261, !1263, !1265, !1268, !1269}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !1222, file: !238, line: 579, baseType: !1225, size: 3904)
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1222, file: !238, line: 553, size: 3904, elements: !1226)
!1226 = !{!1227, !1228, !1229, !1230, !1232, !1233, !1234, !1235, !1236, !1238, !1240, !1241, !1242, !1243, !1244, !1246}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_bits", scope: !1225, file: !238, line: 556, baseType: !283, size: 32)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "i_tex_bits", scope: !1225, file: !238, line: 558, baseType: !283, size: 32, offset: 32)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "i_misc_bits", scope: !1225, file: !238, line: 560, baseType: !283, size: 32, offset: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !1225, file: !238, line: 562, baseType: !1231, size: 608, offset: 96)
!1231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 608, elements: !932)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_i", scope: !1225, file: !238, line: 563, baseType: !283, size: 32, offset: 704)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_p", scope: !1225, file: !238, line: 564, baseType: !283, size: 32, offset: 736)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_skip", scope: !1225, file: !238, line: 565, baseType: !283, size: 32, offset: 768)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_8x8dct", scope: !1225, file: !238, line: 566, baseType: !483, size: 64, offset: 800)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_ref", scope: !1225, file: !238, line: 567, baseType: !1237, size: 2048, offset: 864)
!1237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 2048, elements: !1004)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_partition", scope: !1225, file: !238, line: 568, baseType: !1239, size: 544, offset: 2912)
!1239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 544, elements: !334)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_cost", scope: !1225, file: !238, line: 571, baseType: !283, size: 32, offset: 3456)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "i_inter_cost", scope: !1225, file: !238, line: 572, baseType: !283, size: 32, offset: 3488)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "i_mbs_analysed", scope: !1225, file: !238, line: 573, baseType: !283, size: 32, offset: 3520)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_score", scope: !1225, file: !238, line: 575, baseType: !483, size: 64, offset: 3552)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "i_ssd", scope: !1225, file: !238, line: 577, baseType: !1245, size: 192, offset: 3648)
!1245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 192, elements: !160)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "f_ssim", scope: !1225, file: !238, line: 578, baseType: !302, size: 64, offset: 3840)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_count", scope: !1222, file: !238, line: 584, baseType: !1116, size: 160, offset: 3904)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_size", scope: !1222, file: !238, line: 585, baseType: !1249, size: 320, offset: 4096)
!1249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 320, elements: !105)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "f_slice_qp", scope: !1222, file: !238, line: 586, baseType: !1202, size: 320, offset: 4416)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "i_consecutive_bframes", scope: !1222, file: !238, line: 587, baseType: !1239, size: 544, offset: 4736)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "i_ssd_global", scope: !1222, file: !238, line: 589, baseType: !1249, size: 320, offset: 5312)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_average", scope: !1222, file: !238, line: 590, baseType: !1202, size: 320, offset: 5632)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_y", scope: !1222, file: !238, line: 591, baseType: !1202, size: 320, offset: 5952)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_u", scope: !1222, file: !238, line: 592, baseType: !1202, size: 320, offset: 6272)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_v", scope: !1222, file: !238, line: 593, baseType: !1202, size: 320, offset: 6592)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "f_ssim_mean_y", scope: !1222, file: !238, line: 594, baseType: !1202, size: 320, offset: 6912)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !1222, file: !238, line: 596, baseType: !1259, size: 6080, offset: 7232)
!1259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 6080, elements: !1260)
!1260 = !{!106, !933}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_partition", scope: !1222, file: !238, line: 597, baseType: !1262, size: 2176, offset: 13312)
!1262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 2176, elements: !829)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_8x8dct", scope: !1222, file: !238, line: 598, baseType: !1264, size: 128, offset: 15488)
!1264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 128, elements: !199)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_ref", scope: !1222, file: !238, line: 599, baseType: !1266, size: 8192, offset: 15616)
!1266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 8192, elements: !1267)
!1267 = !{!200, !200, !1005}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_score", scope: !1222, file: !238, line: 601, baseType: !483, size: 64, offset: 23808)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_frames", scope: !1222, file: !238, line: 602, baseType: !483, size: 64, offset: 23872)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "predict_16x16", scope: !383, file: !238, line: 607, baseType: !1271, size: 448, offset: 191168)
!1271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1272, size: 448, elements: !1277)
!1272 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict_t", file: !1273, line: 27, baseType: !1274)
!1273 = !DIFile(filename: "./common/predict.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "c7827bfe44f4a550b7080533457a8327")
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{null, !550}
!1277 = !{!1278}
!1278 = !DISubrange(count: 7)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8c", scope: !383, file: !238, line: 608, baseType: !1271, size: 448, offset: 191616)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8", scope: !383, file: !238, line: 609, baseType: !1281, size: 768, offset: 192064)
!1281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1282, size: 768, elements: !83)
!1282 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict8x8_t", file: !1273, line: 28, baseType: !1283)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{null, !550, !550}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "predict_4x4", scope: !383, file: !238, line: 610, baseType: !1287, size: 768, offset: 192832)
!1287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1272, size: 768, elements: !83)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "pixf", scope: !383, file: !238, line: 612, baseType: !1289, size: 8000, offset: 193600)
!1289 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_function_t", file: !270, line: 103, baseType: !1290)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !270, line: 63, size: 8000, elements: !1291)
!1291 = !{!1292, !1298, !1299, !1300, !1301, !1303, !1304, !1305, !1306, !1312, !1318, !1319, !1325, !1330, !1335, !1339, !1340, !1341, !1342, !1343, !1348, !1352, !1353, !1354, !1355, !1356}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "sad", scope: !1290, file: !270, line: 65, baseType: !1293, size: 448)
!1293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1294, size: 448, elements: !1277)
!1294 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_t", file: !270, line: 26, baseType: !1295)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DISubroutineType(types: !1297)
!1297 = !{!283, !550, !283, !550, !283}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "ssd", scope: !1290, file: !270, line: 66, baseType: !1293, size: 448, offset: 448)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "satd", scope: !1290, file: !270, line: 67, baseType: !1293, size: 448, offset: 896)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "ssim", scope: !1290, file: !270, line: 68, baseType: !1293, size: 448, offset: 1344)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "sa8d", scope: !1290, file: !270, line: 69, baseType: !1302, size: 256, offset: 1792)
!1302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1294, size: 256, elements: !685)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "mbcmp", scope: !1290, file: !270, line: 70, baseType: !1293, size: 448, offset: 2048)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "mbcmp_unaligned", scope: !1290, file: !270, line: 71, baseType: !1293, size: 448, offset: 2496)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp", scope: !1290, file: !270, line: 72, baseType: !1293, size: 448, offset: 2944)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp_x3", scope: !1290, file: !270, line: 73, baseType: !1307, size: 448, offset: 3392)
!1307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1308, size: 448, elements: !1277)
!1308 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_x3_t", file: !270, line: 27, baseType: !1309)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{null, !550, !550, !550, !550, !283, !832}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp_x4", scope: !1290, file: !270, line: 74, baseType: !1313, size: 448, offset: 3840)
!1313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1314, size: 448, elements: !1277)
!1314 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_x4_t", file: !270, line: 28, baseType: !1315)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = !DISubroutineType(types: !1317)
!1317 = !{null, !550, !550, !550, !550, !550, !283, !832}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "sad_aligned", scope: !1290, file: !270, line: 75, baseType: !1293, size: 448, offset: 4288)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1290, file: !270, line: 77, baseType: !1320, size: 256, offset: 4736)
!1320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1321, size: 256, elements: !685)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = !DISubroutineType(types: !1323)
!1323 = !{!283, !550, !283, !1324}
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "hadamard_ac", scope: !1290, file: !270, line: 78, baseType: !1326, size: 256, offset: 4992)
!1326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1327, size: 256, elements: !685)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{!296, !550, !283}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "ssim_4x4x2_core", scope: !1290, file: !270, line: 80, baseType: !1331, size: 64, offset: 5248)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = !DISubroutineType(types: !1333)
!1333 = !{null, !674, !283, !674, !283, !1334}
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "ssim_end4", scope: !1290, file: !270, line: 82, baseType: !1336, size: 64, offset: 5312)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DISubroutineType(types: !1338)
!1338 = !{!284, !1334, !1334, !283}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "sad_x3", scope: !1290, file: !270, line: 85, baseType: !1307, size: 448, offset: 5376)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "sad_x4", scope: !1290, file: !270, line: 86, baseType: !1313, size: 448, offset: 5824)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "satd_x3", scope: !1290, file: !270, line: 87, baseType: !1307, size: 448, offset: 6272)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "satd_x4", scope: !1290, file: !270, line: 88, baseType: !1313, size: 448, offset: 6720)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "ads", scope: !1290, file: !270, line: 92, baseType: !1344, size: 448, offset: 7168)
!1344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1345, size: 448, elements: !1277)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = !DISubroutineType(types: !1347)
!1347 = !{!283, !832, !812, !283, !812, !991, !283, !283}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_16x16", scope: !1290, file: !270, line: 97, baseType: !1349, size: 64, offset: 7616)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{null, !550, !550, !832}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_16x16", scope: !1290, file: !270, line: 98, baseType: !1349, size: 64, offset: 7680)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_16x16", scope: !1290, file: !270, line: 99, baseType: !1349, size: 64, offset: 7744)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_8x8c", scope: !1290, file: !270, line: 100, baseType: !1349, size: 64, offset: 7808)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_4x4", scope: !1290, file: !270, line: 101, baseType: !1349, size: 64, offset: 7872)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sa8d_x3_8x8", scope: !1290, file: !270, line: 102, baseType: !1349, size: 64, offset: 7936)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "mc", scope: !383, file: !238, line: 613, baseType: !1358, size: 1792, offset: 201600)
!1358 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_mc_functions_t", file: !1359, line: 71, baseType: !1360)
!1359 = !DIFile(filename: "./common/mc.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "d49d7420aafa05a86bee506aef111ff0")
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1359, line: 31, size: 1792, elements: !1361)
!1361 = !{!1362, !1367, !1371, !1375, !1380, !1385, !1386, !1390, !1394, !1395, !1399, !1405, !1409}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "mc_luma", scope: !1360, file: !1359, line: 33, baseType: !1363, size: 64)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{null, !550, !283, !1366, !283, !283, !283, !283, !283}
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "get_ref", scope: !1360, file: !1359, line: 38, baseType: !1368, size: 64, offset: 64)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{!550, !550, !832, !1366, !283, !283, !283, !283, !283}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "mc_chroma", scope: !1360, file: !1359, line: 44, baseType: !1372, size: 64, offset: 128)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = !DISubroutineType(types: !1374)
!1374 = !{null, !550, !283, !550, !283, !283, !283, !283, !283}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1360, file: !1359, line: 48, baseType: !1376, size: 640, offset: 192)
!1376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1377, size: 640, elements: !63)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = !DISubroutineType(types: !1379)
!1379 = !{null, !550, !283, !550, !283, !550, !283, !283}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !1360, file: !1359, line: 51, baseType: !1381, size: 448, offset: 832)
!1381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1382, size: 448, elements: !1277)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = !DISubroutineType(types: !1384)
!1384 = !{null, !550, !283, !550, !283, !283}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "copy_16x16_unaligned", scope: !1360, file: !1359, line: 52, baseType: !1382, size: 64, offset: 1280)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "plane_copy", scope: !1360, file: !1359, line: 54, baseType: !1387, size: 64, offset: 1344)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{null, !550, !283, !550, !283, !283, !283}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "hpel_filter", scope: !1360, file: !1359, line: 57, baseType: !1391, size: 64, offset: 1408)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DISubroutineType(types: !1393)
!1393 = !{null, !550, !550, !550, !550, !283, !283, !283}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "prefetch_fenc", scope: !1360, file: !1359, line: 61, baseType: !1382, size: 64, offset: 1472)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "prefetch_ref", scope: !1360, file: !1359, line: 64, baseType: !1396, size: 64, offset: 1536)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1397 = !DISubroutineType(types: !1398)
!1398 = !{null, !550, !283, !283}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "memcpy_aligned", scope: !1360, file: !1359, line: 66, baseType: !1400, size: 64, offset: 1600)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = !DISubroutineType(types: !1402)
!1402 = !{!310, !310, !1403, !1193}
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "memzero_aligned", scope: !1360, file: !1359, line: 67, baseType: !1406, size: 64, offset: 1664)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = !DISubroutineType(types: !1408)
!1408 = !{null, !310, !283}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "frame_init_lowres_core", scope: !1360, file: !1359, line: 69, baseType: !1410, size: 64, offset: 1728)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DISubroutineType(types: !1412)
!1412 = !{null, !550, !550, !550, !550, !550, !283, !283, !283, !283}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "dctf", scope: !383, file: !238, line: 614, baseType: !1414, size: 768, offset: 203392)
!1414 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_dct_function_t", file: !1415, line: 112, baseType: !1416)
!1415 = !DIFile(filename: "./common/dct.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "eb76275dd7785989f0d8a4ada39e3c74")
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1415, line: 89, size: 768, elements: !1417)
!1417 = !{!1418, !1424, !1428, !1434, !1438, !1439, !1440, !1446, !1450, !1456, !1460, !1464}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "sub4x4_dct", scope: !1416, file: !1415, line: 94, baseType: !1419, size: 64)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = !DISubroutineType(types: !1421)
!1421 = !{null, !1422, !550, !550}
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !824, size: 64, elements: !685)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "add4x4_idct", scope: !1416, file: !1415, line: 95, baseType: !1425, size: 64, offset: 64)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DISubroutineType(types: !1427)
!1427 = !{null, !550, !1422}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct", scope: !1416, file: !1415, line: 97, baseType: !1429, size: 64, offset: 128)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = !DISubroutineType(types: !1431)
!1431 = !{null, !1432, !550, !550}
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !824, size: 256, elements: !683)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct", scope: !1416, file: !1415, line: 98, baseType: !1435, size: 64, offset: 192)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = !DISubroutineType(types: !1437)
!1437 = !{null, !550, !1432}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "sub16x16_dct", scope: !1416, file: !1415, line: 100, baseType: !1429, size: 64, offset: 256)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct", scope: !1416, file: !1415, line: 101, baseType: !1435, size: 64, offset: 320)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct8", scope: !1416, file: !1415, line: 103, baseType: !1441, size: 64, offset: 384)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = !DISubroutineType(types: !1443)
!1443 = !{null, !1444, !550, !550}
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !824, size: 128, elements: !93)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct8", scope: !1416, file: !1415, line: 104, baseType: !1447, size: 64, offset: 448)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DISubroutineType(types: !1449)
!1449 = !{null, !550, !1444}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "sub16x16_dct8", scope: !1416, file: !1415, line: 106, baseType: !1451, size: 64, offset: 512)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{null, !1454, !550, !550}
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !824, size: 1024, elements: !690)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct8", scope: !1416, file: !1415, line: 107, baseType: !1457, size: 64, offset: 576)
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1458 = !DISubroutineType(types: !1459)
!1459 = !{null, !550, !1454}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "dct4x4dc", scope: !1416, file: !1415, line: 109, baseType: !1461, size: 64, offset: 640)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DISubroutineType(types: !1463)
!1463 = !{null, !1422}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "idct4x4dc", scope: !1416, file: !1415, line: 110, baseType: !1461, size: 64, offset: 704)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "zigzagf", scope: !383, file: !238, line: 615, baseType: !1466, size: 320, offset: 204160)
!1466 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zigzag_function_t", file: !1415, line: 122, baseType: !1467)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1415, line: 114, size: 320, elements: !1468)
!1468 = !{!1469, !1473, !1477, !1481, !1482}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "scan_8x8", scope: !1467, file: !1415, line: 116, baseType: !1470, size: 64)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = !DISubroutineType(types: !1472)
!1472 = !{null, !991, !1444}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "scan_4x4", scope: !1467, file: !1415, line: 117, baseType: !1474, size: 64, offset: 64)
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1475 = !DISubroutineType(types: !1476)
!1476 = !{null, !991, !1422}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "sub_8x8", scope: !1467, file: !1415, line: 118, baseType: !1478, size: 64, offset: 128)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{null, !991, !674, !550}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "sub_4x4", scope: !1467, file: !1415, line: 119, baseType: !1478, size: 64, offset: 192)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "interleave_8x8_cavlc", scope: !1467, file: !1415, line: 120, baseType: !1483, size: 64, offset: 256)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = !DISubroutineType(types: !1485)
!1485 = !{null, !991, !991}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "quantf", scope: !383, file: !238, line: 616, baseType: !1487, size: 1088, offset: 204480)
!1487 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_quant_function_t", file: !1488, line: 43, baseType: !1489)
!1488 = !DIFile(filename: "./common/quant.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "fe7c19d3e69b65b38e52c43c47235f27")
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1488, line: 26, size: 1088, elements: !1490)
!1490 = !{!1491, !1495, !1499, !1503, !1507, !1511, !1515, !1516, !1520, !1524, !1525, !1526}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "quant_8x8", scope: !1489, file: !1488, line: 28, baseType: !1492, size: 64)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = !DISubroutineType(types: !1494)
!1494 = !{null, !1444, !812, !812}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "quant_4x4", scope: !1489, file: !1488, line: 29, baseType: !1496, size: 64, offset: 64)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = !DISubroutineType(types: !1498)
!1498 = !{null, !1422, !812, !812}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "quant_4x4_dc", scope: !1489, file: !1488, line: 30, baseType: !1500, size: 64, offset: 128)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = !DISubroutineType(types: !1502)
!1502 = !{null, !1422, !283, !283}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "quant_2x2_dc", scope: !1489, file: !1488, line: 31, baseType: !1504, size: 64, offset: 192)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = !DISubroutineType(types: !1506)
!1506 = !{null, !822, !283, !283}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_8x8", scope: !1489, file: !1488, line: 33, baseType: !1508, size: 64, offset: 256)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = !DISubroutineType(types: !1510)
!1510 = !{null, !1444, !688, !283}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_4x4", scope: !1489, file: !1488, line: 34, baseType: !1512, size: 64, offset: 320)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = !DISubroutineType(types: !1514)
!1514 = !{null, !1422, !681, !283}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_4x4_dc", scope: !1489, file: !1488, line: 35, baseType: !1512, size: 64, offset: 384)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "denoise_dct", scope: !1489, file: !1488, line: 37, baseType: !1517, size: 64, offset: 448)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = !DISubroutineType(types: !1519)
!1519 = !{null, !991, !1324, !812, !283}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score15", scope: !1489, file: !1488, line: 39, baseType: !1521, size: 64, offset: 512)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = !DISubroutineType(types: !1523)
!1523 = !{!283, !991}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score16", scope: !1489, file: !1488, line: 40, baseType: !1521, size: 64, offset: 576)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score64", scope: !1489, file: !1488, line: 41, baseType: !1521, size: 64, offset: 640)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_last", scope: !1489, file: !1488, line: 42, baseType: !1527, size: 384, offset: 704)
!1527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1521, size: 384, elements: !125)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "loopf", scope: !383, file: !238, line: 617, baseType: !1529, size: 512, offset: 205568)
!1529 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_function_t", file: !786, line: 108, baseType: !1530)
!1530 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !786, line: 98, size: 512, elements: !1531)
!1531 = !{!1532, !1537, !1538, !1539, !1540, !1545, !1546, !1547}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_v_luma", scope: !1530, file: !786, line: 100, baseType: !1533, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_inter_t", file: !786, line: 96, baseType: !1534)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = !DISubroutineType(types: !1536)
!1536 = !{null, !550, !283, !283, !283, !816}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_h_luma", scope: !1530, file: !786, line: 101, baseType: !1533, size: 64, offset: 64)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_v_chroma", scope: !1530, file: !786, line: 102, baseType: !1533, size: 64, offset: 128)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_h_chroma", scope: !1530, file: !786, line: 103, baseType: !1533, size: 64, offset: 192)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_v_luma_intra", scope: !1530, file: !786, line: 104, baseType: !1541, size: 64, offset: 256)
!1541 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_intra_t", file: !786, line: 97, baseType: !1542)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DISubroutineType(types: !1544)
!1544 = !{null, !550, !283, !283, !283}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_h_luma_intra", scope: !1530, file: !786, line: 105, baseType: !1541, size: 64, offset: 320)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_v_chroma_intra", scope: !1530, file: !786, line: 106, baseType: !1541, size: 64, offset: 384)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_h_chroma_intra", scope: !1530, file: !786, line: 107, baseType: !1541, size: 64, offset: 448)
!1548 = !{!1549, !1550, !1551, !1552, !1553, !1559}
!1549 = !DILocalVariable(name: "h", arg: 1, scope: !377, file: !2, line: 194, type: !380)
!1550 = !DILocalVariable(name: "frame", arg: 2, scope: !377, file: !2, line: 194, type: !784)
!1551 = !DILocalVariable(name: "mb_x", scope: !377, file: !2, line: 196, type: !283)
!1552 = !DILocalVariable(name: "mb_y", scope: !377, file: !2, line: 196, type: !283)
!1553 = !DILocalVariable(name: "energy", scope: !1554, file: !2, line: 200, type: !283)
!1554 = distinct !DILexicalBlock(scope: !1555, file: !2, line: 199, column: 9)
!1555 = distinct !DILexicalBlock(scope: !1556, file: !2, line: 198, column: 9)
!1556 = distinct !DILexicalBlock(scope: !1557, file: !2, line: 198, column: 9)
!1557 = distinct !DILexicalBlock(scope: !1558, file: !2, line: 197, column: 5)
!1558 = distinct !DILexicalBlock(scope: !377, file: !2, line: 197, column: 5)
!1559 = !DILocalVariable(name: "qp_adj", scope: !1554, file: !2, line: 202, type: !284)
!1560 = !DILocation(line: 0, scope: !377)
!1561 = !DILocation(line: 197, column: 26, scope: !1557)
!1562 = !{!1563, !1569, i64 3200}
!1563 = !{!"x264_t", !1564, i64 0, !1566, i64 616, !1573, i64 1640, !1565, i64 1648, !1565, i64 1652, !1574, i64 1656, !1565, i64 1920, !1565, i64 1924, !1565, i64 1928, !1565, i64 1932, !1565, i64 1936, !1565, i64 1940, !1565, i64 1944, !1565, i64 1948, !1565, i64 1952, !1566, i64 1956, !1569, i64 3200, !1566, i64 3208, !1569, i64 3328, !1565, i64 3336, !1566, i64 3344, !1566, i64 3376, !1566, i64 3392, !1566, i64 3424, !1566, i64 3440, !1566, i64 3472, !1566, i64 3488, !1566, i64 3520, !1569, i64 3536, !1566, i64 3552, !1566, i64 4064, !1566, i64 4320, !1576, i64 4328, !1577, i64 4720, !1578, i64 5232, !1569, i64 9208, !1569, i64 9216, !1565, i64 9224, !1566, i64 9232, !1565, i64 9384, !1566, i64 9392, !1566, i64 9544, !1579, i64 9552, !1580, i64 10880, !1569, i64 20896, !1583, i64 20904, !1566, i64 23896, !1566, i64 23952, !1566, i64 24008, !1566, i64 24104, !1586, i64 24200, !1587, i64 25200, !1588, i64 25424, !1589, i64 25520, !1590, i64 25560, !1591, i64 25696}
!1564 = !{!"x264_param_t", !1565, i64 0, !1565, i64 4, !1565, i64 8, !1565, i64 12, !1565, i64 16, !1565, i64 20, !1565, i64 24, !1565, i64 28, !1568, i64 32, !1565, i64 68, !1565, i64 72, !1565, i64 76, !1565, i64 80, !1565, i64 84, !1565, i64 88, !1565, i64 92, !1565, i64 96, !1565, i64 100, !1565, i64 104, !1565, i64 108, !1565, i64 112, !1565, i64 116, !1565, i64 120, !1565, i64 124, !1565, i64 128, !1565, i64 132, !1565, i64 136, !1569, i64 144, !1566, i64 152, !1566, i64 168, !1566, i64 184, !1566, i64 200, !1566, i64 216, !1566, i64 280, !1569, i64 344, !1569, i64 352, !1565, i64 360, !1565, i64 364, !1569, i64 368, !1570, i64 376, !1572, i64 472, !1565, i64 600, !1565, i64 604, !1565, i64 608}
!1565 = !{!"int", !1566, i64 0}
!1566 = !{!"omnipotent char", !1567, i64 0}
!1567 = !{!"Simple C/C++ TBAA"}
!1568 = !{!"", !1565, i64 0, !1565, i64 4, !1565, i64 8, !1565, i64 12, !1565, i64 16, !1565, i64 20, !1565, i64 24, !1565, i64 28, !1565, i64 32}
!1569 = !{!"any pointer", !1566, i64 0}
!1570 = !{!"", !1565, i64 0, !1565, i64 4, !1565, i64 8, !1565, i64 12, !1565, i64 16, !1565, i64 20, !1565, i64 24, !1565, i64 28, !1565, i64 32, !1565, i64 36, !1565, i64 40, !1565, i64 44, !1565, i64 48, !1565, i64 52, !1565, i64 56, !1565, i64 60, !1565, i64 64, !1565, i64 68, !1571, i64 72, !1571, i64 76, !1566, i64 80, !1565, i64 88, !1565, i64 92}
!1571 = !{!"float", !1566, i64 0}
!1572 = !{!"", !1565, i64 0, !1565, i64 4, !1565, i64 8, !1565, i64 12, !1565, i64 16, !1565, i64 20, !1571, i64 24, !1571, i64 28, !1565, i64 32, !1565, i64 36, !1571, i64 40, !1571, i64 44, !1571, i64 48, !1565, i64 52, !1571, i64 56, !1565, i64 60, !1569, i64 64, !1565, i64 72, !1569, i64 80, !1571, i64 88, !1571, i64 92, !1571, i64 96, !1569, i64 104, !1565, i64 112, !1569, i64 120}
!1573 = !{!"long", !1566, i64 0}
!1574 = !{!"", !1565, i64 0, !1566, i64 8, !1565, i64 200, !1569, i64 208, !1575, i64 216, !1565, i64 256}
!1575 = !{!"bs_s", !1569, i64 0, !1569, i64 8, !1569, i64 16, !1573, i64 24, !1565, i64 32, !1565, i64 36}
!1576 = !{!"", !1569, i64 0, !1569, i64 8, !1565, i64 16, !1565, i64 20, !1565, i64 24, !1565, i64 28, !1565, i64 32, !1565, i64 36, !1565, i64 40, !1565, i64 44, !1565, i64 48, !1565, i64 52, !1565, i64 56, !1566, i64 60, !1565, i64 68, !1565, i64 72, !1565, i64 76, !1565, i64 80, !1565, i64 84, !1565, i64 88, !1565, i64 92, !1566, i64 96, !1565, i64 352, !1565, i64 356, !1565, i64 360, !1565, i64 364, !1565, i64 368, !1565, i64 372, !1565, i64 376, !1565, i64 380}
!1577 = !{!"", !1565, i64 0, !1565, i64 4, !1565, i64 8, !1565, i64 12, !1569, i64 16, !1569, i64 24, !1569, i64 32, !1565, i64 48, !1566, i64 52}
!1578 = !{!"", !1566, i64 0, !1566, i64 536, !1566, i64 1072, !1569, i64 3792, !1566, i64 3800, !1565, i64 3944, !1565, i64 3948, !1565, i64 3952, !1565, i64 3956, !1565, i64 3960, !1565, i64 3964, !1565, i64 3968}
!1579 = !{!"", !1566, i64 0, !1566, i64 32, !1566, i64 48, !1566, i64 560}
!1580 = !{!"", !1565, i64 0, !1565, i64 4, !1565, i64 8, !1565, i64 12, !1565, i64 16, !1565, i64 20, !1565, i64 24, !1565, i64 28, !1565, i64 32, !1565, i64 36, !1565, i64 40, !1565, i64 44, !1565, i64 48, !1565, i64 52, !1565, i64 56, !1565, i64 60, !1565, i64 64, !1566, i64 68, !1566, i64 76, !1566, i64 84, !1566, i64 92, !1566, i64 100, !1566, i64 108, !1565, i64 116, !1566, i64 120, !1566, i64 136, !1565, i64 200, !1565, i64 204, !1565, i64 208, !1565, i64 212, !1565, i64 216, !1565, i64 220, !1569, i64 224, !1569, i64 232, !1569, i64 240, !1569, i64 248, !1569, i64 256, !1569, i64 264, !1566, i64 272, !1566, i64 288, !1566, i64 304, !1566, i64 320, !1569, i64 832, !1569, i64 840, !1566, i64 848, !1569, i64 896, !1565, i64 904, !1565, i64 908, !1566, i64 912, !1565, i64 928, !1565, i64 932, !1565, i64 936, !1565, i64 940, !1565, i64 944, !1565, i64 948, !1565, i64 952, !1581, i64 960, !1582, i64 8128, !1565, i64 9632, !1565, i64 9636, !1565, i64 9640, !1565, i64 9644, !1565, i64 9648, !1565, i64 9652, !1565, i64 9656, !1565, i64 9660, !1566, i64 9664, !1566, i64 9728, !1566, i64 9984, !1566, i64 9986}
!1581 = !{!"", !1566, i64 0, !1566, i64 384, !1566, i64 1248, !1566, i64 1504, !1566, i64 1760, !1566, i64 2144, !1566, i64 2624, !1566, i64 3136, !1566, i64 3648, !1565, i64 3712, !1566, i64 3716, !1565, i64 3732, !1566, i64 3736, !1566, i64 3760, !1566, i64 3784, !1566, i64 3808, !1566, i64 3816, !1566, i64 6888, !1566, i64 7144}
!1582 = !{!"", !1566, i64 0, !1566, i64 48, !1566, i64 96, !1566, i64 192, !1566, i64 576, !1566, i64 960, !1566, i64 1008, !1566, i64 1392, !1566, i64 1488, !1565, i64 1492, !1565, i64 1496}
!1583 = !{!"", !1584, i64 0, !1566, i64 488, !1566, i64 512, !1566, i64 552, !1566, i64 592, !1566, i64 664, !1566, i64 704, !1566, i64 744, !1566, i64 784, !1566, i64 824, !1566, i64 864, !1566, i64 904, !1566, i64 1664, !1566, i64 1936, !1566, i64 1952, !1566, i64 2976, !1566, i64 2984}
!1584 = !{!"", !1565, i64 0, !1565, i64 4, !1565, i64 8, !1566, i64 12, !1565, i64 88, !1565, i64 92, !1565, i64 96, !1566, i64 100, !1566, i64 108, !1566, i64 364, !1565, i64 432, !1565, i64 436, !1565, i64 440, !1566, i64 444, !1566, i64 456, !1585, i64 480}
!1585 = !{!"double", !1566, i64 0}
!1586 = !{!"", !1566, i64 0, !1566, i64 56, !1566, i64 112, !1566, i64 168, !1566, i64 224, !1566, i64 256, !1566, i64 312, !1566, i64 368, !1566, i64 424, !1566, i64 480, !1566, i64 536, !1566, i64 592, !1566, i64 624, !1569, i64 656, !1569, i64 664, !1566, i64 672, !1566, i64 728, !1566, i64 784, !1566, i64 840, !1566, i64 896, !1569, i64 952, !1569, i64 960, !1569, i64 968, !1569, i64 976, !1569, i64 984, !1569, i64 992}
!1587 = !{!"", !1569, i64 0, !1569, i64 8, !1569, i64 16, !1566, i64 24, !1566, i64 104, !1569, i64 160, !1569, i64 168, !1569, i64 176, !1569, i64 184, !1569, i64 192, !1569, i64 200, !1569, i64 208, !1569, i64 216}
!1588 = !{!"", !1569, i64 0, !1569, i64 8, !1569, i64 16, !1569, i64 24, !1569, i64 32, !1569, i64 40, !1569, i64 48, !1569, i64 56, !1569, i64 64, !1569, i64 72, !1569, i64 80, !1569, i64 88}
!1589 = !{!"", !1569, i64 0, !1569, i64 8, !1569, i64 16, !1569, i64 24, !1569, i64 32}
!1590 = !{!"", !1569, i64 0, !1569, i64 8, !1569, i64 16, !1569, i64 24, !1569, i64 32, !1569, i64 40, !1569, i64 48, !1569, i64 56, !1569, i64 64, !1569, i64 72, !1569, i64 80, !1566, i64 88}
!1591 = !{!"", !1569, i64 0, !1569, i64 8, !1569, i64 16, !1569, i64 24, !1569, i64 32, !1569, i64 40, !1569, i64 48, !1569, i64 56}
!1592 = !DILocation(line: 197, column: 31, scope: !1557)
!1593 = !{!1594, !1565, i64 1088}
!1594 = !{!"", !1565, i64 0, !1565, i64 4, !1565, i64 8, !1565, i64 12, !1565, i64 16, !1565, i64 20, !1565, i64 24, !1565, i64 28, !1565, i64 32, !1565, i64 36, !1565, i64 40, !1565, i64 44, !1565, i64 48, !1566, i64 52, !1565, i64 1076, !1565, i64 1080, !1565, i64 1084, !1565, i64 1088, !1565, i64 1092, !1565, i64 1096, !1565, i64 1100, !1565, i64 1104, !1595, i64 1108, !1565, i64 1124, !1596, i64 1128, !1565, i64 1236}
!1595 = !{!"", !1565, i64 0, !1565, i64 4, !1565, i64 8, !1565, i64 12}
!1596 = !{!"", !1565, i64 0, !1565, i64 4, !1565, i64 8, !1565, i64 12, !1565, i64 16, !1565, i64 20, !1565, i64 24, !1565, i64 28, !1565, i64 32, !1565, i64 36, !1565, i64 40, !1565, i64 44, !1565, i64 48, !1565, i64 52, !1565, i64 56, !1565, i64 60, !1565, i64 64, !1565, i64 68, !1565, i64 72, !1565, i64 76, !1565, i64 80, !1565, i64 84, !1565, i64 88, !1565, i64 92, !1565, i64 96, !1565, i64 100, !1565, i64 104}
!1597 = !DILocation(line: 197, column: 22, scope: !1557)
!1598 = !DILocation(line: 197, column: 5, scope: !1558)
!1599 = !DILocation(line: 198, column: 35, scope: !1555)
!1600 = !{!1594, !1565, i64 1084}
!1601 = !DILocation(line: 198, column: 26, scope: !1555)
!1602 = !DILocation(line: 198, column: 9, scope: !1556)
!1603 = !DILocation(line: 200, column: 26, scope: !1554)
!1604 = !DILocation(line: 0, scope: !1554)
!1605 = !DILocation(line: 202, column: 40, scope: !1554)
!1606 = !{!1563, !1571, i64 528}
!1607 = !DILocation(line: 202, column: 28, scope: !1554)
!1608 = !DILocation(line: 202, column: 54, scope: !1554)
!1609 = !DILocation(line: 202, column: 68, scope: !1554)
!1610 = !DILocation(line: 202, column: 63, scope: !1554)
!1611 = !DILocation(line: 202, column: 76, scope: !1554)
!1612 = !DILocation(line: 202, column: 60, scope: !1554)
!1613 = !DILocation(line: 203, column: 20, scope: !1554)
!1614 = !{!1615, !1569, i64 6328}
!1615 = !{!"", !1565, i64 0, !1565, i64 4, !1565, i64 8, !1573, i64 16, !1565, i64 24, !1565, i64 28, !1565, i64 32, !1571, i64 36, !1571, i64 40, !1565, i64 44, !1566, i64 48, !1566, i64 60, !1566, i64 72, !1565, i64 84, !1565, i64 88, !1565, i64 92, !1566, i64 96, !1566, i64 120, !1566, i64 152, !1569, i64 184, !1566, i64 192, !1566, i64 224, !1569, i64 256, !1566, i64 264, !1566, i64 280, !1566, i64 552, !1566, i64 824, !1566, i64 840, !1566, i64 848, !1566, i64 976, !1566, i64 1040, !1566, i64 2336, !1565, i64 3632, !1566, i64 3636, !1566, i64 3712, !1569, i64 6304, !1569, i64 6312, !1569, i64 6320, !1569, i64 6328, !1565, i64 6336, !1569, i64 6344, !1569, i64 6352, !1565, i64 6360, !1565, i64 6364, !1566, i64 6368, !1566, i64 6408}
!1616 = !DILocation(line: 203, column: 50, scope: !1554)
!1617 = !{!1563, !1565, i64 10884}
!1618 = !DILocation(line: 203, column: 43, scope: !1554)
!1619 = !DILocation(line: 203, column: 37, scope: !1554)
!1620 = !DILocation(line: 203, column: 13, scope: !1554)
!1621 = !DILocation(line: 203, column: 63, scope: !1554)
!1622 = !{!1571, !1571, i64 0}
!1623 = !DILocation(line: 204, column: 27, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1554, file: !2, line: 204, column: 17)
!1625 = !{!1563, !1565, i64 9200}
!1626 = !DILocation(line: 204, column: 17, scope: !1624)
!1627 = !DILocation(line: 204, column: 17, scope: !1554)
!1628 = !DILocation(line: 205, column: 75, scope: !1624)
!1629 = !DILocation(line: 205, column: 24, scope: !1624)
!1630 = !{!1615, !1569, i64 6352}
!1631 = !DILocation(line: 205, column: 17, scope: !1624)
!1632 = !DILocation(line: 205, column: 73, scope: !1624)
!1633 = !{!1634, !1634, i64 0}
!1634 = !{!"short", !1566, i64 0}
!1635 = !DILocation(line: 198, column: 51, scope: !1555)
!1636 = !DILocation(line: 198, column: 30, scope: !1555)
!1637 = distinct !{!1637, !1602, !1638, !1639}
!1638 = !DILocation(line: 206, column: 9, scope: !1556)
!1639 = !{!"llvm.loop.mustprogress"}
!1640 = !DILocation(line: 197, column: 48, scope: !1557)
!1641 = distinct !{!1641, !1598, !1642, !1639, !1643}
!1642 = !DILocation(line: 206, column: 9, scope: !1558)
!1643 = !{!"llvm.loop.unswitch.partial.disable"}
!1644 = !DILocation(line: 207, column: 1, scope: !377)
!1645 = distinct !DISubprogram(name: "ac_energy_mb", scope: !2, file: !2, line: 171, type: !1646, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !1648)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{!283, !380, !283, !283, !784}
!1648 = !{!1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1660, !1661, !1662}
!1649 = !DILocalVariable(name: "h", arg: 1, scope: !1645, file: !2, line: 171, type: !380)
!1650 = !DILocalVariable(name: "mb_x", arg: 2, scope: !1645, file: !2, line: 171, type: !283)
!1651 = !DILocalVariable(name: "mb_y", arg: 3, scope: !1645, file: !2, line: 171, type: !283)
!1652 = !DILocalVariable(name: "frame", arg: 4, scope: !1645, file: !2, line: 171, type: !784)
!1653 = !DILocalVariable(name: "var", scope: !1645, file: !2, line: 177, type: !239)
!1654 = !DILocalVariable(name: "sad", scope: !1645, file: !2, line: 177, type: !239)
!1655 = !DILocalVariable(name: "i", scope: !1645, file: !2, line: 177, type: !239)
!1656 = !DILocalVariable(name: "w", scope: !1657, file: !2, line: 180, type: !283)
!1657 = distinct !DILexicalBlock(scope: !1658, file: !2, line: 179, column: 5)
!1658 = distinct !DILexicalBlock(scope: !1659, file: !2, line: 178, column: 5)
!1659 = distinct !DILexicalBlock(scope: !1645, file: !2, line: 178, column: 5)
!1660 = !DILocalVariable(name: "stride", scope: !1657, file: !2, line: 181, type: !283)
!1661 = !DILocalVariable(name: "offset", scope: !1657, file: !2, line: 182, type: !283)
!1662 = !DILocalVariable(name: "pix", scope: !1657, file: !2, line: 185, type: !283)
!1663 = !DILocation(line: 0, scope: !1645)
!1664 = !DILocation(line: 177, column: 5, scope: !1645)
!1665 = !DILocation(line: 0, scope: !1657)
!1666 = !DILocation(line: 181, column: 22, scope: !1657)
!1667 = !{!1565, !1565, i64 0}
!1668 = !DILocation(line: 182, column: 28, scope: !1657)
!1669 = !{!1563, !1565, i64 10944}
!1670 = !DILocation(line: 182, column: 22, scope: !1657)
!1671 = !DILocation(line: 183, column: 37, scope: !1657)
!1672 = !DILocation(line: 183, column: 25, scope: !1657)
!1673 = !DILocation(line: 183, column: 17, scope: !1657)
!1674 = !DILocation(line: 183, column: 58, scope: !1657)
!1675 = !DILocation(line: 183, column: 47, scope: !1657)
!1676 = !DILocation(line: 184, column: 32, scope: !1657)
!1677 = !DILocation(line: 184, column: 25, scope: !1657)
!1678 = !DILocation(line: 184, column: 17, scope: !1657)
!1679 = !DILocation(line: 186, column: 16, scope: !1657)
!1680 = !DILocation(line: 187, column: 16, scope: !1657)
!1681 = !{!1569, !1569, i64 0}
!1682 = !DILocation(line: 187, column: 34, scope: !1657)
!1683 = !DILocation(line: 187, column: 49, scope: !1657)
!1684 = !DILocation(line: 187, column: 13, scope: !1657)
!1685 = !DILocation(line: 189, column: 11, scope: !1645)
!1686 = !DILocation(line: 190, column: 5, scope: !1645)
!1687 = !DILocation(line: 192, column: 1, scope: !1645)
!1688 = !DILocation(line: 191, column: 5, scope: !1645)
!1689 = distinct !DISubprogram(name: "x264_adaptive_quant", scope: !2, file: !2, line: 216, type: !1690, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !1692)
!1690 = !DISubroutineType(types: !1691)
!1691 = !{null, !380}
!1692 = !{!1693, !1694, !1695}
!1693 = !DILocalVariable(name: "h", arg: 1, scope: !1689, file: !2, line: 216, type: !380)
!1694 = !DILocalVariable(name: "qp", scope: !1689, file: !2, line: 218, type: !284)
!1695 = !DILocalVariable(name: "qp_adj", scope: !1689, file: !2, line: 218, type: !284)
!1696 = !DILocation(line: 0, scope: !1689)
!1697 = !DILocation(line: 219, column: 5, scope: !1689)
!1698 = !DILocation(line: 220, column: 13, scope: !1689)
!1699 = !{!1563, !1569, i64 20896}
!1700 = !DILocation(line: 220, column: 17, scope: !1689)
!1701 = !{!1702, !1571, i64 80}
!1702 = !{!"x264_ratecontrol_t", !1565, i64 0, !1565, i64 4, !1565, i64 8, !1565, i64 12, !1585, i64 16, !1585, i64 24, !1585, i64 32, !1565, i64 40, !1566, i64 44, !1569, i64 64, !1565, i64 72, !1565, i64 76, !1571, i64 80, !1571, i64 84, !1571, i64 88, !1565, i64 92, !1585, i64 96, !1585, i64 104, !1585, i64 112, !1585, i64 120, !1569, i64 128, !1565, i64 136, !1585, i64 144, !1585, i64 152, !1585, i64 160, !1585, i64 168, !1585, i64 176, !1585, i64 184, !1585, i64 192, !1585, i64 200, !1585, i64 208, !1585, i64 216, !1569, i64 224, !1569, i64 232, !1565, i64 240, !1569, i64 248, !1585, i64 256, !1566, i64 264, !1565, i64 304, !1585, i64 312, !1585, i64 320, !1585, i64 328, !1566, i64 336, !1566, i64 376, !1585, i64 416, !1585, i64 424, !1585, i64 432, !1569, i64 440, !1566, i64 448, !1569, i64 568, !1565, i64 576, !1565, i64 580, !1565, i64 584, !1569, i64 592, !1569, i64 600}
!1703 = !DILocation(line: 221, column: 17, scope: !1689)
!1704 = !{!1563, !1569, i64 9208}
!1705 = !DILocation(line: 221, column: 23, scope: !1689)
!1706 = !DILocation(line: 221, column: 41, scope: !1689)
!1707 = !{!1563, !1565, i64 10896}
!1708 = !DILocation(line: 221, column: 56, scope: !1689)
!1709 = !{!1563, !1565, i64 10900}
!1710 = !DILocation(line: 221, column: 69, scope: !1689)
!1711 = !DILocation(line: 221, column: 62, scope: !1689)
!1712 = !DILocation(line: 221, column: 48, scope: !1689)
!1713 = !DILocation(line: 221, column: 14, scope: !1689)
!1714 = !DILocation(line: 222, column: 33, scope: !1689)
!1715 = !DILocation(line: 222, column: 30, scope: !1689)
!1716 = !DILocation(line: 222, column: 42, scope: !1689)
!1717 = !DILocation(line: 222, column: 60, scope: !1689)
!1718 = !{!1563, !1565, i64 480}
!1719 = !DILocation(line: 222, column: 82, scope: !1689)
!1720 = !{!1563, !1565, i64 484}
!1721 = !DILocalVariable(name: "v", arg: 1, scope: !1722, file: !238, line: 108, type: !283)
!1722 = distinct !DISubprogram(name: "x264_clip3", scope: !238, file: !238, line: 108, type: !1723, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !1725)
!1723 = !DISubroutineType(types: !1724)
!1724 = !{!283, !283, !283, !283}
!1725 = !{!1721, !1726, !1727}
!1726 = !DILocalVariable(name: "i_min", arg: 2, scope: !1722, file: !238, line: 108, type: !283)
!1727 = !DILocalVariable(name: "i_max", arg: 3, scope: !1722, file: !238, line: 108, type: !283)
!1728 = !DILocation(line: 0, scope: !1722, inlinedAt: !1729)
!1729 = distinct !DILocation(line: 222, column: 18, scope: !1689)
!1730 = !DILocation(line: 110, column: 17, scope: !1722, inlinedAt: !1729)
!1731 = !DILocation(line: 110, column: 14, scope: !1722, inlinedAt: !1729)
!1732 = !DILocation(line: 222, column: 11, scope: !1689)
!1733 = !DILocation(line: 225, column: 32, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1689, file: !2, line: 225, column: 9)
!1735 = !{!1563, !1565, i64 20520}
!1736 = !DILocation(line: 225, column: 24, scope: !1734)
!1737 = !DILocation(line: 225, column: 9, scope: !1734)
!1738 = !DILocation(line: 225, column: 43, scope: !1734)
!1739 = !DILocation(line: 225, column: 9, scope: !1689)
!1740 = !DILocation(line: 227, column: 28, scope: !1689)
!1741 = !{!1563, !1569, i64 3536}
!1742 = !DILocation(line: 227, column: 25, scope: !1689)
!1743 = !{!1566, !1566, i64 0}
!1744 = !DILocation(line: 227, column: 11, scope: !1689)
!1745 = !DILocation(line: 227, column: 23, scope: !1689)
!1746 = !{!1563, !1565, i64 20516}
!1747 = !DILocation(line: 228, column: 1, scope: !1689)
!1748 = !DISubprogram(name: "x264_emms", scope: !1749, file: !1749, line: 26, type: !1750, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1752)
!1749 = !DIFile(filename: "./common/cpu.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "5639400f1915d22bd0aadf074bb04719")
!1750 = !DISubroutineType(types: !1751)
!1751 = !{null}
!1752 = !{}
!1753 = distinct !DISubprogram(name: "x264_ratecontrol_new", scope: !2, file: !2, line: 230, type: !1754, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !1756)
!1754 = !DISubroutineType(types: !1755)
!1755 = !{!283, !380}
!1756 = !{!1757, !1758, !1759, !1760, !1763, !1766, !1767, !1768, !1771, !1772, !1776, !1780, !1781, !1782, !1783, !1784, !1785}
!1757 = !DILocalVariable(name: "h", arg: 1, scope: !1753, file: !2, line: 230, type: !380)
!1758 = !DILocalVariable(name: "rc", scope: !1753, file: !2, line: 232, type: !1103)
!1759 = !DILocalVariable(name: "i", scope: !1753, file: !2, line: 233, type: !283)
!1760 = !DILocalVariable(name: "base_cplx", scope: !1761, file: !2, line: 326, type: !302)
!1761 = distinct !DILexicalBlock(scope: !1762, file: !2, line: 324, column: 5)
!1762 = distinct !DILexicalBlock(scope: !1753, file: !2, line: 323, column: 9)
!1763 = !DILocalVariable(name: "p", scope: !1764, file: !2, line: 364, type: !428)
!1764 = distinct !DILexicalBlock(scope: !1765, file: !2, line: 363, column: 5)
!1765 = distinct !DILexicalBlock(scope: !1753, file: !2, line: 362, column: 9)
!1766 = !DILocalVariable(name: "stats_in", scope: !1764, file: !2, line: 364, type: !428)
!1767 = !DILocalVariable(name: "stats_buf", scope: !1764, file: !2, line: 364, type: !428)
!1768 = !DILocalVariable(name: "i", scope: !1769, file: !2, line: 378, type: !283)
!1769 = distinct !DILexicalBlock(scope: !1770, file: !2, line: 377, column: 9)
!1770 = distinct !DILexicalBlock(scope: !1764, file: !2, line: 376, column: 13)
!1771 = !DILocalVariable(name: "opts", scope: !1769, file: !2, line: 379, type: !428)
!1772 = !DILocalVariable(name: "rce", scope: !1773, file: !2, line: 456, type: !285)
!1773 = distinct !DILexicalBlock(scope: !1774, file: !2, line: 455, column: 9)
!1774 = distinct !DILexicalBlock(scope: !1775, file: !2, line: 454, column: 9)
!1775 = distinct !DILexicalBlock(scope: !1764, file: !2, line: 454, column: 9)
!1776 = !DILocalVariable(name: "rce", scope: !1777, file: !2, line: 467, type: !285)
!1777 = distinct !DILexicalBlock(scope: !1778, file: !2, line: 466, column: 9)
!1778 = distinct !DILexicalBlock(scope: !1779, file: !2, line: 465, column: 9)
!1779 = distinct !DILexicalBlock(scope: !1764, file: !2, line: 465, column: 9)
!1780 = !DILocalVariable(name: "frame_number", scope: !1777, file: !2, line: 468, type: !283)
!1781 = !DILocalVariable(name: "pict_type", scope: !1777, file: !2, line: 469, type: !4)
!1782 = !DILocalVariable(name: "e", scope: !1777, file: !2, line: 470, type: !283)
!1783 = !DILocalVariable(name: "next", scope: !1777, file: !2, line: 471, type: !428)
!1784 = !DILocalVariable(name: "qp", scope: !1777, file: !2, line: 472, type: !284)
!1785 = !DILocalVariable(name: "p", scope: !1786, file: !2, line: 526, type: !428)
!1786 = distinct !DILexicalBlock(scope: !1787, file: !2, line: 525, column: 5)
!1787 = distinct !DILexicalBlock(scope: !1753, file: !2, line: 524, column: 9)
!1788 = !DILocation(line: 0, scope: !1753)
!1789 = !DILocation(line: 235, column: 5, scope: !1753)
!1790 = !DILocation(line: 237, column: 40, scope: !1753)
!1791 = !{!1563, !1565, i64 4}
!1792 = !DILocation(line: 237, column: 50, scope: !1753)
!1793 = !DILocation(line: 237, column: 18, scope: !1753)
!1794 = !DILocation(line: 237, column: 13, scope: !1753)
!1795 = !DILocation(line: 237, column: 16, scope: !1753)
!1796 = !DILocation(line: 238, column: 29, scope: !1753)
!1797 = !DILocation(line: 238, column: 20, scope: !1753)
!1798 = !DILocation(line: 238, column: 39, scope: !1753)
!1799 = !DILocation(line: 238, column: 5, scope: !1753)
!1800 = !DILocation(line: 240, column: 26, scope: !1753)
!1801 = !DILocation(line: 240, column: 29, scope: !1753)
!1802 = !{!1563, !1565, i64 472}
!1803 = !DILocation(line: 240, column: 41, scope: !1753)
!1804 = !DILocation(line: 240, column: 56, scope: !1753)
!1805 = !DILocation(line: 240, column: 15, scope: !1753)
!1806 = !{!1702, !1565, i64 0}
!1807 = !DILocation(line: 241, column: 58, scope: !1753)
!1808 = !DILocation(line: 240, column: 72, scope: !1753)
!1809 = !{!1563, !1565, i64 544}
!1810 = !DILocation(line: 240, column: 59, scope: !1753)
!1811 = !DILocation(line: 241, column: 43, scope: !1753)
!1812 = !DILocation(line: 241, column: 9, scope: !1753)
!1813 = !DILocation(line: 241, column: 17, scope: !1753)
!1814 = !{!1702, !1565, i64 4}
!1815 = !DILocation(line: 244, column: 17, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1753, file: !2, line: 244, column: 8)
!1817 = !{!1563, !1565, i64 68}
!1818 = !DILocation(line: 244, column: 27, scope: !1816)
!1819 = !DILocation(line: 244, column: 31, scope: !1816)
!1820 = !DILocation(line: 244, column: 43, scope: !1816)
!1821 = !{!1563, !1565, i64 72}
!1822 = !DILocation(line: 244, column: 53, scope: !1816)
!1823 = !DILocation(line: 244, column: 8, scope: !1753)
!1824 = !DILocation(line: 245, column: 19, scope: !1816)
!1825 = !DILocation(line: 245, column: 48, scope: !1816)
!1826 = !DILocation(line: 245, column: 46, scope: !1816)
!1827 = !DILocation(line: 245, column: 9, scope: !1816)
!1828 = !DILocation(line: 0, scope: !1816)
!1829 = !{!1702, !1585, i64 16}
!1830 = !DILocation(line: 249, column: 31, scope: !1753)
!1831 = !{!1563, !1565, i64 492}
!1832 = !DILocation(line: 249, column: 19, scope: !1753)
!1833 = !DILocation(line: 249, column: 41, scope: !1753)
!1834 = !DILocation(line: 249, column: 9, scope: !1753)
!1835 = !DILocation(line: 249, column: 17, scope: !1753)
!1836 = !{!1702, !1585, i64 24}
!1837 = !DILocation(line: 250, column: 38, scope: !1753)
!1838 = !{!1563, !1571, i64 500}
!1839 = !DILocation(line: 250, column: 26, scope: !1753)
!1840 = !DILocation(line: 250, column: 9, scope: !1753)
!1841 = !DILocation(line: 250, column: 24, scope: !1753)
!1842 = !{!1702, !1585, i64 32}
!1843 = !DILocation(line: 251, column: 18, scope: !1753)
!1844 = !DILocation(line: 251, column: 21, scope: !1753)
!1845 = !{!1563, !1565, i64 10880}
!1846 = !DILocation(line: 251, column: 9, scope: !1753)
!1847 = !DILocation(line: 251, column: 13, scope: !1753)
!1848 = !{!1702, !1565, i64 40}
!1849 = !DILocation(line: 252, column: 9, scope: !1753)
!1850 = !DILocation(line: 252, column: 30, scope: !1753)
!1851 = !{!1702, !1565, i64 304}
!1852 = !DILocation(line: 253, column: 9, scope: !1753)
!1853 = !DILocation(line: 253, column: 19, scope: !1753)
!1854 = !{!1702, !1585, i64 176}
!1855 = !DILocation(line: 255, column: 33, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1753, file: !2, line: 255, column: 9)
!1857 = !DILocation(line: 255, column: 48, scope: !1856)
!1858 = !DILocation(line: 255, column: 63, scope: !1856)
!1859 = !DILocation(line: 255, column: 51, scope: !1856)
!1860 = !DILocation(line: 255, column: 9, scope: !1753)
!1861 = !DILocation(line: 257, column: 9, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1856, file: !2, line: 256, column: 5)
!1863 = !DILocation(line: 258, column: 9, scope: !1862)
!1864 = !DILocation(line: 260, column: 21, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1753, file: !2, line: 260, column: 9)
!1866 = !{!1563, !1565, i64 508}
!1867 = !DILocation(line: 260, column: 9, scope: !1865)
!1868 = !DILocation(line: 260, column: 9, scope: !1753)
!1869 = !DILocation(line: 274, column: 21, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1753, file: !2, line: 274, column: 9)
!1871 = !{!1563, !1565, i64 504}
!1872 = !DILocation(line: 262, column: 13, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1865, file: !2, line: 261, column: 5)
!1874 = !DILocation(line: 264, column: 13, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1876, file: !2, line: 263, column: 9)
!1876 = distinct !DILexicalBlock(scope: !1873, file: !2, line: 262, column: 13)
!1877 = !DILocation(line: 265, column: 25, scope: !1875)
!1878 = !DILocation(line: 265, column: 43, scope: !1875)
!1879 = !DILocation(line: 266, column: 43, scope: !1875)
!1880 = !DILocation(line: 298, column: 14, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1870, file: !2, line: 277, column: 14)
!1882 = !DILocation(line: 268, column: 30, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1876, file: !2, line: 268, column: 18)
!1884 = !DILocation(line: 268, column: 48, scope: !1883)
!1885 = !DILocation(line: 268, column: 18, scope: !1876)
!1886 = !DILocation(line: 270, column: 13, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1883, file: !2, line: 269, column: 9)
!1888 = !DILocation(line: 271, column: 57, scope: !1887)
!1889 = !DILocation(line: 271, column: 43, scope: !1887)
!1890 = !DILocation(line: 277, column: 48, scope: !1881)
!1891 = !DILocation(line: 274, column: 39, scope: !1870)
!1892 = !DILocation(line: 274, column: 63, scope: !1870)
!1893 = !DILocation(line: 276, column: 9, scope: !1870)
!1894 = !DILocation(line: 278, column: 26, scope: !1881)
!1895 = !DILocation(line: 278, column: 44, scope: !1881)
!1896 = !DILocation(line: 277, column: 14, scope: !1870)
!1897 = !DILocation(line: 280, column: 13, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1899, file: !2, line: 280, column: 13)
!1899 = distinct !DILexicalBlock(scope: !1881, file: !2, line: 279, column: 5)
!1900 = !DILocation(line: 280, column: 47, scope: !1898)
!1901 = !DILocation(line: 280, column: 45, scope: !1898)
!1902 = !DILocation(line: 280, column: 85, scope: !1898)
!1903 = !DILocation(line: 280, column: 79, scope: !1898)
!1904 = !DILocation(line: 280, column: 43, scope: !1898)
!1905 = !DILocation(line: 280, column: 13, scope: !1899)
!1906 = !DILocation(line: 282, column: 45, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1898, file: !2, line: 281, column: 9)
!1908 = !DILocation(line: 282, column: 43, scope: !1907)
!1909 = !DILocation(line: 283, column: 13, scope: !1907)
!1910 = !DILocation(line: 285, column: 9, scope: !1907)
!1911 = !DILocation(line: 286, column: 25, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1899, file: !2, line: 286, column: 13)
!1913 = !{!1563, !1571, i64 512}
!1914 = !DILocation(line: 286, column: 43, scope: !1912)
!1915 = !DILocation(line: 0, scope: !1899)
!1916 = !DILocation(line: 286, column: 13, scope: !1899)
!1917 = !DILocation(line: 287, column: 90, scope: !1912)
!1918 = !DILocation(line: 287, column: 88, scope: !1912)
!1919 = !DILocation(line: 287, column: 58, scope: !1912)
!1920 = !DILocalVariable(name: "v", arg: 1, scope: !1921, file: !238, line: 113, type: !302)
!1921 = distinct !DISubprogram(name: "x264_clip3f", scope: !238, file: !238, line: 113, type: !1922, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !1924)
!1922 = !DISubroutineType(types: !1923)
!1923 = !{!302, !302, !302, !302}
!1924 = !{!1920, !1925, !1926}
!1925 = !DILocalVariable(name: "f_min", arg: 2, scope: !1921, file: !238, line: 113, type: !302)
!1926 = !DILocalVariable(name: "f_max", arg: 3, scope: !1921, file: !238, line: 113, type: !302)
!1927 = !DILocation(line: 0, scope: !1921, inlinedAt: !1928)
!1928 = distinct !DILocation(line: 287, column: 45, scope: !1912)
!1929 = !DILocation(line: 115, column: 14, scope: !1921, inlinedAt: !1928)
!1930 = !DILocation(line: 287, column: 45, scope: !1912)
!1931 = !DILocation(line: 287, column: 43, scope: !1912)
!1932 = !DILocation(line: 287, column: 13, scope: !1912)
!1933 = !DILocation(line: 290, column: 63, scope: !1899)
!1934 = !DILocation(line: 288, column: 39, scope: !1899)
!1935 = !DILocation(line: 288, column: 27, scope: !1899)
!1936 = !DILocation(line: 288, column: 57, scope: !1899)
!1937 = !DILocation(line: 288, column: 71, scope: !1899)
!1938 = !DILocation(line: 288, column: 65, scope: !1899)
!1939 = !DILocation(line: 288, column: 13, scope: !1899)
!1940 = !DILocation(line: 288, column: 25, scope: !1899)
!1941 = !{!1702, !1585, i64 120}
!1942 = !DILocation(line: 289, column: 27, scope: !1899)
!1943 = !DILocation(line: 289, column: 57, scope: !1899)
!1944 = !DILocation(line: 289, column: 13, scope: !1899)
!1945 = !DILocation(line: 289, column: 25, scope: !1899)
!1946 = !{!1702, !1585, i64 96}
!1947 = !DILocation(line: 290, column: 51, scope: !1899)
!1948 = !DILocation(line: 290, column: 49, scope: !1899)
!1949 = !DILocation(line: 290, column: 13, scope: !1899)
!1950 = !DILocation(line: 290, column: 31, scope: !1899)
!1951 = !{!1702, !1585, i64 104}
!1952 = !DILocation(line: 292, column: 23, scope: !1899)
!1953 = !DILocation(line: 292, column: 31, scope: !1899)
!1954 = !DILocation(line: 292, column: 29, scope: !1899)
!1955 = !DILocation(line: 291, column: 29, scope: !1899)
!1956 = !DILocation(line: 291, column: 23, scope: !1899)
!1957 = !DILocation(line: 293, column: 13, scope: !1899)
!1958 = !DILocation(line: 293, column: 19, scope: !1899)
!1959 = !{!1702, !1565, i64 8}
!1960 = !DILocation(line: 294, column: 35, scope: !1899)
!1961 = !DILocation(line: 294, column: 31, scope: !1899)
!1962 = !DILocation(line: 295, column: 27, scope: !1899)
!1963 = !DILocation(line: 295, column: 42, scope: !1899)
!1964 = !DILocation(line: 295, column: 54, scope: !1899)
!1965 = !DILocation(line: 296, column: 27, scope: !1899)
!1966 = !DILocation(line: 296, column: 75, scope: !1899)
!1967 = !DILocation(line: 296, column: 60, scope: !1899)
!1968 = !DILocation(line: 294, column: 13, scope: !1899)
!1969 = !DILocation(line: 294, column: 28, scope: !1899)
!1970 = !{!1702, !1565, i64 12}
!1971 = !DILocation(line: 297, column: 5, scope: !1899)
!1972 = !DILocation(line: 298, column: 14, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1881, file: !2, line: 298, column: 14)
!1974 = !DILocation(line: 300, column: 9, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1973, file: !2, line: 299, column: 5)
!1976 = !DILocation(line: 301, column: 39, scope: !1975)
!1977 = !DILocation(line: 302, column: 5, scope: !1975)
!1978 = !DILocation(line: 303, column: 12, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1753, file: !2, line: 303, column: 8)
!1980 = !DILocation(line: 303, column: 27, scope: !1979)
!1981 = !DILocation(line: 303, column: 8, scope: !1753)
!1982 = !DILocation(line: 305, column: 9, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1979, file: !2, line: 304, column: 5)
!1984 = !DILocation(line: 306, column: 28, scope: !1983)
!1985 = !DILocation(line: 307, column: 5, scope: !1983)
!1986 = !DILocation(line: 309, column: 31, scope: !1753)
!1987 = !DILocation(line: 309, column: 27, scope: !1753)
!1988 = !DILocation(line: 309, column: 37, scope: !1753)
!1989 = !DILocation(line: 309, column: 52, scope: !1753)
!1990 = !{!1563, !1565, i64 524}
!1991 = !DILocation(line: 309, column: 11, scope: !1753)
!1992 = !DILocation(line: 309, column: 25, scope: !1753)
!1993 = !{!1563, !1565, i64 20528}
!1994 = !DILocation(line: 311, column: 13, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1753, file: !2, line: 311, column: 9)
!1996 = !DILocation(line: 311, column: 9, scope: !1995)
!1997 = !DILocation(line: 311, column: 9, scope: !1753)
!1998 = !DILocation(line: 323, column: 21, scope: !1762)
!1999 = !DILocation(line: 315, column: 13, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !1995, file: !2, line: 312, column: 5)
!2001 = !DILocation(line: 315, column: 26, scope: !2000)
!2002 = !{!1702, !1585, i64 320}
!2003 = !DILocation(line: 316, column: 26, scope: !2000)
!2004 = !{!1563, !1571, i64 496}
!2005 = !DILocation(line: 316, column: 38, scope: !2000)
!2006 = !DILocation(line: 316, column: 13, scope: !2000)
!2007 = !DILocation(line: 316, column: 24, scope: !2000)
!2008 = !{!1702, !1585, i64 312}
!2009 = !DILocation(line: 318, column: 55, scope: !2000)
!2010 = !{!1563, !1571, i64 560}
!2011 = !DILocation(line: 318, column: 43, scope: !2000)
!2012 = !DILocation(line: 318, column: 31, scope: !2000)
!2013 = !DILocation(line: 318, column: 29, scope: !2000)
!2014 = !DILocation(line: 318, column: 82, scope: !2000)
!2015 = !DILocation(line: 318, column: 76, scope: !2000)
!2016 = !DILocation(line: 318, column: 71, scope: !2000)
!2017 = !DILocation(line: 318, column: 69, scope: !2000)
!2018 = !DILocation(line: 318, column: 13, scope: !2000)
!2019 = !DILocation(line: 318, column: 23, scope: !2000)
!2020 = !{!1702, !1585, i64 152}
!2021 = !DILocation(line: 319, column: 44, scope: !2000)
!2022 = !DILocation(line: 319, column: 58, scope: !2000)
!2023 = !DILocation(line: 319, column: 52, scope: !2000)
!2024 = !DILocation(line: 319, column: 13, scope: !2000)
!2025 = !DILocation(line: 319, column: 32, scope: !2000)
!2026 = !{!1702, !1585, i64 168}
!2027 = !DILocation(line: 320, column: 34, scope: !2000)
!2028 = !DILocation(line: 321, column: 5, scope: !2000)
!2029 = !DILocation(line: 323, column: 33, scope: !1762)
!2030 = !DILocation(line: 323, column: 9, scope: !1753)
!2031 = !DILocation(line: 326, column: 34, scope: !1761)
!2032 = !DILocation(line: 326, column: 57, scope: !1761)
!2033 = !{!1563, !1565, i64 96}
!2034 = !DILocation(line: 326, column: 48, scope: !1761)
!2035 = !DILocation(line: 326, column: 45, scope: !1761)
!2036 = !DILocation(line: 326, column: 28, scope: !1761)
!2037 = !DILocation(line: 0, scope: !1761)
!2038 = !DILocation(line: 327, column: 68, scope: !1761)
!2039 = !DILocation(line: 327, column: 54, scope: !1761)
!2040 = !DILocation(line: 327, column: 52, scope: !1761)
!2041 = !DILocation(line: 327, column: 36, scope: !1761)
!2042 = !DILocation(line: 328, column: 59, scope: !1761)
!2043 = !DILocation(line: 328, column: 47, scope: !1761)
!2044 = !DILocalVariable(name: "qp", arg: 1, scope: !2045, file: !2, line: 148, type: !302)
!2045 = distinct !DISubprogram(name: "qp2qscale", scope: !2, file: !2, line: 148, type: !2046, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !2048)
!2046 = !DISubroutineType(types: !2047)
!2047 = !{!302, !302}
!2048 = !{!2044}
!2049 = !DILocation(line: 0, scope: !2045, inlinedAt: !2050)
!2050 = distinct !DILocation(line: 328, column: 36, scope: !1761)
!2051 = !DILocation(line: 150, column: 42, scope: !2045, inlinedAt: !2050)
!2052 = !DILocation(line: 150, column: 19, scope: !2045, inlinedAt: !2050)
!2053 = !DILocation(line: 150, column: 17, scope: !2045, inlinedAt: !2050)
!2054 = !DILocation(line: 328, column: 34, scope: !1761)
!2055 = !DILocation(line: 327, column: 13, scope: !1761)
!2056 = !DILocation(line: 327, column: 34, scope: !1761)
!2057 = !{!1702, !1585, i64 200}
!2058 = !DILocation(line: 329, column: 5, scope: !1761)
!2059 = !DILocation(line: 331, column: 43, scope: !1753)
!2060 = !DILocation(line: 331, column: 9, scope: !1753)
!2061 = !DILocation(line: 331, column: 31, scope: !1753)
!2062 = !DILocation(line: 331, column: 27, scope: !1753)
!2063 = !DILocation(line: 331, column: 56, scope: !1753)
!2064 = !DILocation(line: 331, column: 19, scope: !1753)
!2065 = !{!1585, !1585, i64 0}
!2066 = !DILocation(line: 333, column: 49, scope: !1753)
!2067 = !{!1563, !1565, i64 476}
!2068 = !DILocation(line: 333, column: 9, scope: !1753)
!2069 = !DILocation(line: 333, column: 35, scope: !1753)
!2070 = !DILocation(line: 334, column: 61, scope: !1753)
!2071 = !DILocation(line: 334, column: 49, scope: !1753)
!2072 = !DILocation(line: 334, column: 75, scope: !1753)
!2073 = !DILocation(line: 334, column: 91, scope: !1753)
!2074 = !DILocation(line: 0, scope: !1722, inlinedAt: !2075)
!2075 = distinct !DILocation(line: 334, column: 37, scope: !1753)
!2076 = !DILocation(line: 110, column: 14, scope: !1722, inlinedAt: !2075)
!2077 = !DILocation(line: 334, column: 5, scope: !1753)
!2078 = !DILocation(line: 334, column: 35, scope: !1753)
!2079 = !DILocation(line: 335, column: 61, scope: !1753)
!2080 = !DILocation(line: 335, column: 49, scope: !1753)
!2081 = !DILocation(line: 335, column: 75, scope: !1753)
!2082 = !DILocation(line: 335, column: 91, scope: !1753)
!2083 = !DILocation(line: 0, scope: !1722, inlinedAt: !2084)
!2084 = distinct !DILocation(line: 335, column: 37, scope: !1753)
!2085 = !DILocation(line: 110, column: 14, scope: !1722, inlinedAt: !2084)
!2086 = !DILocation(line: 335, column: 5, scope: !1753)
!2087 = !DILocation(line: 335, column: 35, scope: !1753)
!2088 = !DILocation(line: 337, column: 37, scope: !1753)
!2089 = !{!1563, !1565, i64 488}
!2090 = !DILocation(line: 337, column: 25, scope: !1753)
!2091 = !DILocation(line: 337, column: 47, scope: !1753)
!2092 = !DILocation(line: 337, column: 17, scope: !1753)
!2093 = !DILocation(line: 337, column: 9, scope: !1753)
!2094 = !DILocation(line: 337, column: 15, scope: !1753)
!2095 = !{!1702, !1585, i64 416}
!2096 = !DILocation(line: 0, scope: !2045, inlinedAt: !2097)
!2097 = distinct !DILocation(line: 338, column: 23, scope: !1753)
!2098 = !DILocation(line: 338, column: 9, scope: !1753)
!2099 = !DILocation(line: 338, column: 21, scope: !1753)
!2100 = !{!1702, !1585, i64 256}
!2101 = !DILocation(line: 339, column: 16, scope: !1753)
!2102 = !DILocation(line: 339, column: 9, scope: !1753)
!2103 = !DILocation(line: 339, column: 14, scope: !1753)
!2104 = !{!1702, !1569, i64 128}
!2105 = !DILocation(line: 340, column: 25, scope: !1753)
!2106 = !DILocation(line: 340, column: 9, scope: !1753)
!2107 = !DILocation(line: 340, column: 23, scope: !1753)
!2108 = !{!1702, !1569, i64 568}
!2109 = !DILocation(line: 343, column: 45, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2111, file: !2, line: 342, column: 5)
!2111 = distinct !DILexicalBlock(scope: !2112, file: !2, line: 341, column: 5)
!2112 = distinct !DILexicalBlock(scope: !1753, file: !2, line: 341, column: 5)
!2113 = !DILocation(line: 0, scope: !2045, inlinedAt: !2114)
!2114 = distinct !DILocation(line: 343, column: 34, scope: !2110)
!2115 = !DILocation(line: 150, column: 42, scope: !2045, inlinedAt: !2114)
!2116 = !DILocation(line: 150, column: 19, scope: !2045, inlinedAt: !2114)
!2117 = !DILocation(line: 150, column: 17, scope: !2045, inlinedAt: !2114)
!2118 = !DILocation(line: 343, column: 9, scope: !2110)
!2119 = !DILocation(line: 343, column: 32, scope: !2110)
!2120 = !DILocation(line: 0, scope: !2045, inlinedAt: !2121)
!2121 = distinct !DILocation(line: 344, column: 23, scope: !2110)
!2122 = !DILocation(line: 344, column: 9, scope: !2110)
!2123 = !DILocation(line: 344, column: 21, scope: !2110)
!2124 = !DILocation(line: 0, scope: !2045, inlinedAt: !2125)
!2125 = distinct !DILocation(line: 345, column: 23, scope: !2110)
!2126 = !DILocation(line: 345, column: 9, scope: !2110)
!2127 = !DILocation(line: 345, column: 21, scope: !2110)
!2128 = !DILocation(line: 346, column: 26, scope: !2110)
!2129 = !DILocation(line: 348, column: 21, scope: !2110)
!2130 = !DILocation(line: 348, column: 26, scope: !2110)
!2131 = !{!2132, !1585, i64 16}
!2132 = !{!"", !1585, i64 0, !1585, i64 8, !1585, i64 16}
!2133 = !DILocation(line: 349, column: 9, scope: !2110)
!2134 = !DILocation(line: 349, column: 31, scope: !2110)
!2135 = !DILocation(line: 351, column: 26, scope: !2110)
!2136 = !DILocation(line: 351, column: 31, scope: !2110)
!2137 = !DILocation(line: 346, column: 9, scope: !2110)
!2138 = !DILocation(line: 353, column: 26, scope: !1753)
!2139 = !{i64 0, i64 8, !2065, i64 8, i64 8, !2065, i64 16, i64 8, !2065}
!2140 = !DILocalVariable(name: "h", arg: 1, scope: !2141, file: !2, line: 598, type: !380)
!2141 = distinct !DISubprogram(name: "parse_zones", scope: !2, file: !2, line: 598, type: !1754, scopeLine: 599, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !2142)
!2142 = !{!2140, !2143, !2144, !2145, !2148, !2149, !2150, !2151}
!2143 = !DILocalVariable(name: "rc", scope: !2141, file: !2, line: 600, type: !1103)
!2144 = !DILocalVariable(name: "i", scope: !2141, file: !2, line: 601, type: !283)
!2145 = !DILocalVariable(name: "p", scope: !2146, file: !2, line: 604, type: !428)
!2146 = distinct !DILexicalBlock(scope: !2147, file: !2, line: 603, column: 5)
!2147 = distinct !DILexicalBlock(scope: !2141, file: !2, line: 602, column: 9)
!2148 = !DILocalVariable(name: "tok", scope: !2146, file: !2, line: 604, type: !428)
!2149 = !DILocalVariable(name: "saveptr", scope: !2146, file: !2, line: 604, type: !428)
!2150 = !DILocalVariable(name: "psz_zones", scope: !2146, file: !2, line: 605, type: !428)
!2151 = !DILocalVariable(name: "z", scope: !2152, file: !2, line: 626, type: !513)
!2152 = distinct !DILexicalBlock(scope: !2153, file: !2, line: 625, column: 9)
!2153 = distinct !DILexicalBlock(scope: !2154, file: !2, line: 624, column: 9)
!2154 = distinct !DILexicalBlock(scope: !2155, file: !2, line: 624, column: 9)
!2155 = distinct !DILexicalBlock(scope: !2156, file: !2, line: 623, column: 5)
!2156 = distinct !DILexicalBlock(scope: !2141, file: !2, line: 622, column: 9)
!2157 = !DILocation(line: 0, scope: !2141, inlinedAt: !2158)
!2158 = distinct !DILocation(line: 355, column: 9, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !1753, file: !2, line: 355, column: 9)
!2160 = !DILocation(line: 600, column: 33, scope: !2141, inlinedAt: !2158)
!2161 = !DILocation(line: 602, column: 21, scope: !2147, inlinedAt: !2158)
!2162 = !{!1563, !1569, i64 592}
!2163 = !DILocation(line: 602, column: 9, scope: !2147, inlinedAt: !2158)
!2164 = !DILocation(line: 602, column: 31, scope: !2147, inlinedAt: !2158)
!2165 = !DILocation(line: 602, column: 47, scope: !2147, inlinedAt: !2158)
!2166 = !{!1563, !1565, i64 584}
!2167 = !DILocation(line: 602, column: 35, scope: !2147, inlinedAt: !2158)
!2168 = !DILocation(line: 602, column: 9, scope: !2141, inlinedAt: !2158)
!2169 = !DILocation(line: 604, column: 9, scope: !2146, inlinedAt: !2158)
!2170 = !DILocation(line: 605, column: 40, scope: !2146, inlinedAt: !2158)
!2171 = !DILocation(line: 605, column: 27, scope: !2146, inlinedAt: !2158)
!2172 = !DILocation(line: 0, scope: !2146, inlinedAt: !2158)
!2173 = !DILocation(line: 606, column: 40, scope: !2146, inlinedAt: !2158)
!2174 = !DILocation(line: 606, column: 9, scope: !2146, inlinedAt: !2158)
!2175 = !DILocation(line: 607, column: 29, scope: !2146, inlinedAt: !2158)
!2176 = !DILocation(line: 608, column: 29, scope: !2177, inlinedAt: !2158)
!2177 = distinct !DILexicalBlock(scope: !2178, file: !2, line: 608, column: 9)
!2178 = distinct !DILexicalBlock(scope: !2146, file: !2, line: 608, column: 9)
!2179 = !DILocation(line: 608, column: 9, scope: !2178, inlinedAt: !2158)
!2180 = !DILocation(line: 609, column: 40, scope: !2177, inlinedAt: !2158)
!2181 = !DILocation(line: 609, column: 33, scope: !2177, inlinedAt: !2158)
!2182 = !DILocation(line: 608, column: 34, scope: !2177, inlinedAt: !2158)
!2183 = distinct !{!2183, !2179, !2184, !1639}
!2184 = !DILocation(line: 609, column: 46, scope: !2178, inlinedAt: !2158)
!2185 = !DILocation(line: 610, column: 54, scope: !2146, inlinedAt: !2158)
!2186 = !DILocation(line: 610, column: 62, scope: !2146, inlinedAt: !2158)
!2187 = !DILocation(line: 610, column: 29, scope: !2146, inlinedAt: !2158)
!2188 = !DILocation(line: 610, column: 21, scope: !2146, inlinedAt: !2158)
!2189 = !DILocation(line: 610, column: 27, scope: !2146, inlinedAt: !2158)
!2190 = !{!1563, !1569, i64 576}
!2191 = !DILocation(line: 612, column: 37, scope: !2192, inlinedAt: !2158)
!2192 = distinct !DILexicalBlock(scope: !2193, file: !2, line: 612, column: 9)
!2193 = distinct !DILexicalBlock(scope: !2146, file: !2, line: 612, column: 9)
!2194 = !DILocation(line: 612, column: 23, scope: !2192, inlinedAt: !2158)
!2195 = !DILocation(line: 612, column: 9, scope: !2193, inlinedAt: !2158)
!2196 = !DILocation(line: 614, column: 19, scope: !2197, inlinedAt: !2158)
!2197 = distinct !DILexicalBlock(scope: !2192, file: !2, line: 613, column: 9)
!2198 = !DILocation(line: 615, column: 18, scope: !2199, inlinedAt: !2158)
!2199 = distinct !DILexicalBlock(scope: !2197, file: !2, line: 615, column: 17)
!2200 = !DILocation(line: 615, column: 22, scope: !2199, inlinedAt: !2158)
!2201 = !DILocation(line: 620, column: 5, scope: !2147, inlinedAt: !2158)
!2202 = !DILocation(line: 615, column: 53, scope: !2199, inlinedAt: !2158)
!2203 = !DILocation(line: 615, column: 41, scope: !2199, inlinedAt: !2158)
!2204 = !DILocalVariable(name: "h", arg: 1, scope: !2205, file: !2, line: 558, type: !380)
!2205 = distinct !DISubprogram(name: "parse_zone", scope: !2, file: !2, line: 558, type: !2206, scopeLine: 559, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !2208)
!2206 = !DISubroutineType(types: !2207)
!2207 = !{!283, !380, !512, !428}
!2208 = !{!2204, !2209, !2210, !2211, !2212, !2213, !2214}
!2209 = !DILocalVariable(name: "z", arg: 2, scope: !2205, file: !2, line: 558, type: !512)
!2210 = !DILocalVariable(name: "p", arg: 3, scope: !2205, file: !2, line: 558, type: !428)
!2211 = !DILocalVariable(name: "len", scope: !2205, file: !2, line: 560, type: !283)
!2212 = !DILocalVariable(name: "tok", scope: !2205, file: !2, line: 561, type: !428)
!2213 = !DILocalVariable(name: "saveptr", scope: !2205, file: !2, line: 561, type: !428)
!2214 = !DILocalVariable(name: "val", scope: !2215, file: !2, line: 582, type: !428)
!2215 = distinct !DILexicalBlock(scope: !2205, file: !2, line: 581, column: 5)
!2216 = !DILocation(line: 0, scope: !2205, inlinedAt: !2217)
!2217 = distinct !DILocation(line: 615, column: 25, scope: !2199, inlinedAt: !2158)
!2218 = !DILocation(line: 560, column: 5, scope: !2205, inlinedAt: !2217)
!2219 = !DILocation(line: 560, column: 9, scope: !2205, inlinedAt: !2217)
!2220 = !DILocation(line: 561, column: 5, scope: !2205, inlinedAt: !2217)
!2221 = !DILocation(line: 562, column: 8, scope: !2205, inlinedAt: !2217)
!2222 = !DILocation(line: 562, column: 14, scope: !2205, inlinedAt: !2217)
!2223 = !{!2224, !1569, i64 24}
!2224 = !{!"", !1565, i64 0, !1565, i64 4, !1565, i64 8, !1565, i64 12, !1571, i64 16, !1569, i64 24}
!2225 = !DILocation(line: 563, column: 8, scope: !2205, inlinedAt: !2217)
!2226 = !DILocation(line: 563, column: 25, scope: !2205, inlinedAt: !2217)
!2227 = !{!2224, !1571, i64 16}
!2228 = !DILocation(line: 564, column: 57, scope: !2229, inlinedAt: !2217)
!2229 = distinct !DILexicalBlock(scope: !2205, file: !2, line: 564, column: 9)
!2230 = !DILocation(line: 564, column: 68, scope: !2229, inlinedAt: !2217)
!2231 = !DILocation(line: 564, column: 14, scope: !2229, inlinedAt: !2217)
!2232 = !DILocation(line: 564, column: 11, scope: !2229, inlinedAt: !2217)
!2233 = !DILocation(line: 564, column: 9, scope: !2205, inlinedAt: !2217)
!2234 = !DILocation(line: 566, column: 19, scope: !2235, inlinedAt: !2217)
!2235 = distinct !DILexicalBlock(scope: !2229, file: !2, line: 566, column: 14)
!2236 = !DILocation(line: 566, column: 16, scope: !2235, inlinedAt: !2217)
!2237 = !DILocation(line: 566, column: 14, scope: !2229, inlinedAt: !2217)
!2238 = !DILocation(line: 568, column: 19, scope: !2239, inlinedAt: !2217)
!2239 = distinct !DILexicalBlock(scope: !2235, file: !2, line: 568, column: 14)
!2240 = !DILocation(line: 568, column: 16, scope: !2239, inlinedAt: !2217)
!2241 = !DILocation(line: 568, column: 14, scope: !2235, inlinedAt: !2217)
!2242 = !DILocation(line: 572, column: 9, scope: !2243, inlinedAt: !2217)
!2243 = distinct !DILexicalBlock(scope: !2239, file: !2, line: 571, column: 5)
!2244 = !DILocation(line: 596, column: 1, scope: !2205, inlinedAt: !2217)
!2245 = !DILocation(line: 0, scope: !2229, inlinedAt: !2217)
!2246 = !{!2224, !1565, i64 8}
!2247 = !DILocation(line: 575, column: 10, scope: !2205, inlinedAt: !2217)
!2248 = !DILocation(line: 575, column: 7, scope: !2205, inlinedAt: !2217)
!2249 = !DILocation(line: 576, column: 10, scope: !2250, inlinedAt: !2217)
!2250 = distinct !DILexicalBlock(scope: !2205, file: !2, line: 576, column: 9)
!2251 = !DILocation(line: 576, column: 9, scope: !2205, inlinedAt: !2217)
!2252 = !DILocation(line: 578, column: 16, scope: !2205, inlinedAt: !2217)
!2253 = !DILocation(line: 578, column: 14, scope: !2205, inlinedAt: !2217)
!2254 = !DILocation(line: 579, column: 5, scope: !2205, inlinedAt: !2217)
!2255 = !DILocation(line: 580, column: 19, scope: !2205, inlinedAt: !2217)
!2256 = !DILocation(line: 580, column: 5, scope: !2205, inlinedAt: !2217)
!2257 = !DILocation(line: 582, column: 21, scope: !2215, inlinedAt: !2217)
!2258 = !DILocation(line: 0, scope: !2215, inlinedAt: !2217)
!2259 = !DILocation(line: 583, column: 13, scope: !2260, inlinedAt: !2217)
!2260 = distinct !DILexicalBlock(scope: !2215, file: !2, line: 583, column: 13)
!2261 = !DILocation(line: 583, column: 13, scope: !2215, inlinedAt: !2217)
!2262 = !DILocation(line: 585, column: 18, scope: !2263, inlinedAt: !2217)
!2263 = distinct !DILexicalBlock(scope: !2260, file: !2, line: 584, column: 9)
!2264 = !DILocation(line: 586, column: 16, scope: !2263, inlinedAt: !2217)
!2265 = !DILocation(line: 587, column: 9, scope: !2263, inlinedAt: !2217)
!2266 = !DILocation(line: 588, column: 34, scope: !2267, inlinedAt: !2217)
!2267 = distinct !DILexicalBlock(scope: !2215, file: !2, line: 588, column: 13)
!2268 = !DILocation(line: 588, column: 13, scope: !2267, inlinedAt: !2217)
!2269 = !DILocation(line: 588, column: 13, scope: !2215, inlinedAt: !2217)
!2270 = !DILocation(line: 590, column: 13, scope: !2271, inlinedAt: !2217)
!2271 = distinct !DILexicalBlock(scope: !2267, file: !2, line: 589, column: 9)
!2272 = distinct !{!2272, !2256, !2273, !1639, !2274}
!2273 = !DILocation(line: 594, column: 5, scope: !2205, inlinedAt: !2217)
!2274 = !{!"llvm.loop.peeled.count", i32 1}
!2275 = !DILocation(line: 612, column: 47, scope: !2192, inlinedAt: !2158)
!2276 = distinct !{!2276, !2195, !2277, !1639}
!2277 = !DILocation(line: 618, column: 9, scope: !2193, inlinedAt: !2158)
!2278 = !DILocation(line: 619, column: 9, scope: !2146, inlinedAt: !2158)
!2279 = !DILocation(line: 622, column: 21, scope: !2156, inlinedAt: !2158)
!2280 = !DILocation(line: 622, column: 29, scope: !2156, inlinedAt: !2158)
!2281 = !DILocation(line: 622, column: 9, scope: !2141, inlinedAt: !2158)
!2282 = !DILocation(line: 624, column: 23, scope: !2153, inlinedAt: !2158)
!2283 = !DILocation(line: 624, column: 9, scope: !2154, inlinedAt: !2158)
!2284 = !DILocation(line: 624, column: 47, scope: !2153, inlinedAt: !2158)
!2285 = distinct !{!2285, !2283, !2286, !1639}
!2286 = !DILocation(line: 639, column: 9, scope: !2154, inlinedAt: !2158)
!2287 = !DILocation(line: 626, column: 29, scope: !2152, inlinedAt: !2158)
!2288 = !{i64 0, i64 4, !1667, i64 4, i64 4, !1667, i64 8, i64 4, !1667, i64 12, i64 4, !1667, i64 16, i64 4, !1622, i64 24, i64 8, !1681}
!2289 = !DILocation(line: 0, scope: !2152, inlinedAt: !2158)
!2290 = !{i64 0, i64 4, !1667, i64 4, i64 4, !1667, i64 8, i64 4, !1667, i64 12, i64 4, !1622, i64 20, i64 8, !1681}
!2291 = !DILocation(line: 627, column: 27, scope: !2292, inlinedAt: !2158)
!2292 = distinct !DILexicalBlock(scope: !2152, file: !2, line: 627, column: 17)
!2293 = !DILocation(line: 627, column: 31, scope: !2292, inlinedAt: !2158)
!2294 = !DILocation(line: 629, column: 17, scope: !2295, inlinedAt: !2158)
!2295 = distinct !DILexicalBlock(scope: !2292, file: !2, line: 628, column: 13)
!2296 = !DILocation(line: 631, column: 17, scope: !2295, inlinedAt: !2158)
!2297 = !{i64 0, i64 4, !1622, i64 8, i64 8, !1681}
!2298 = !{i64 0, i64 4, !1667, i64 4, i64 4, !1667, i64 8, i64 4, !1622, i64 16, i64 8, !1681}
!2299 = !DILocation(line: 633, column: 23, scope: !2300, inlinedAt: !2158)
!2300 = distinct !DILexicalBlock(scope: !2292, file: !2, line: 633, column: 22)
!2301 = !DILocation(line: 633, column: 36, scope: !2300, inlinedAt: !2158)
!2302 = !DILocation(line: 636, column: 27, scope: !2303, inlinedAt: !2158)
!2303 = distinct !DILexicalBlock(scope: !2300, file: !2, line: 634, column: 13)
!2304 = !DILocation(line: 635, column: 17, scope: !2303, inlinedAt: !2158)
!2305 = !DILocation(line: 637, column: 17, scope: !2303, inlinedAt: !2158)
!2306 = !DILocation(line: 641, column: 43, scope: !2155, inlinedAt: !2158)
!2307 = !DILocation(line: 641, column: 13, scope: !2155, inlinedAt: !2158)
!2308 = !DILocation(line: 641, column: 21, scope: !2155, inlinedAt: !2158)
!2309 = !{!1702, !1565, i64 584}
!2310 = !DILocation(line: 642, column: 46, scope: !2155, inlinedAt: !2158)
!2311 = !DILocation(line: 642, column: 21, scope: !2155, inlinedAt: !2158)
!2312 = !DILocation(line: 642, column: 13, scope: !2155, inlinedAt: !2158)
!2313 = !DILocation(line: 642, column: 19, scope: !2155, inlinedAt: !2158)
!2314 = !{!1702, !1569, i64 592}
!2315 = !DILocation(line: 643, column: 26, scope: !2155, inlinedAt: !2158)
!2316 = !DILocation(line: 643, column: 42, scope: !2155, inlinedAt: !2158)
!2317 = !DILocation(line: 643, column: 54, scope: !2155, inlinedAt: !2158)
!2318 = !DILocation(line: 643, column: 61, scope: !2155, inlinedAt: !2158)
!2319 = !DILocation(line: 643, column: 49, scope: !2155, inlinedAt: !2158)
!2320 = !DILocation(line: 643, column: 65, scope: !2155, inlinedAt: !2158)
!2321 = !DILocation(line: 643, column: 9, scope: !2155, inlinedAt: !2158)
!2322 = !DILocation(line: 646, column: 13, scope: !2155, inlinedAt: !2158)
!2323 = !DILocation(line: 646, column: 30, scope: !2155, inlinedAt: !2158)
!2324 = !{!2224, !1565, i64 0}
!2325 = !DILocation(line: 647, column: 22, scope: !2155, inlinedAt: !2158)
!2326 = !DILocation(line: 647, column: 28, scope: !2155, inlinedAt: !2158)
!2327 = !{!2224, !1565, i64 4}
!2328 = !DILocation(line: 648, column: 22, scope: !2155, inlinedAt: !2158)
!2329 = !DILocation(line: 648, column: 33, scope: !2155, inlinedAt: !2158)
!2330 = !DILocation(line: 649, column: 22, scope: !2155, inlinedAt: !2158)
!2331 = !DILocation(line: 649, column: 39, scope: !2155, inlinedAt: !2158)
!2332 = !DILocation(line: 650, column: 30, scope: !2155, inlinedAt: !2158)
!2333 = !DILocation(line: 650, column: 13, scope: !2155, inlinedAt: !2158)
!2334 = !DILocation(line: 650, column: 22, scope: !2155, inlinedAt: !2158)
!2335 = !DILocation(line: 650, column: 28, scope: !2155, inlinedAt: !2158)
!2336 = !DILocation(line: 651, column: 9, scope: !2155, inlinedAt: !2158)
!2337 = !DILocation(line: 652, column: 23, scope: !2338, inlinedAt: !2158)
!2338 = distinct !DILexicalBlock(scope: !2339, file: !2, line: 652, column: 9)
!2339 = distinct !DILexicalBlock(scope: !2155, file: !2, line: 652, column: 9)
!2340 = !DILocation(line: 652, column: 9, scope: !2339, inlinedAt: !2158)
!2341 = !DILocation(line: 654, column: 31, scope: !2342, inlinedAt: !2158)
!2342 = distinct !DILexicalBlock(scope: !2343, file: !2, line: 654, column: 17)
!2343 = distinct !DILexicalBlock(scope: !2338, file: !2, line: 653, column: 9)
!2344 = !DILocation(line: 654, column: 18, scope: !2342, inlinedAt: !2158)
!2345 = !DILocation(line: 654, column: 17, scope: !2343, inlinedAt: !2158)
!2346 = !DILocation(line: 655, column: 51, scope: !2342, inlinedAt: !2158)
!2347 = !DILocation(line: 655, column: 36, scope: !2342, inlinedAt: !2158)
!2348 = !DILocation(line: 655, column: 17, scope: !2342, inlinedAt: !2158)
!2349 = !DILocation(line: 652, column: 39, scope: !2338, inlinedAt: !2158)
!2350 = distinct !{!2350, !2340, !2351, !1639}
!2351 = !DILocation(line: 656, column: 9, scope: !2339, inlinedAt: !2158)
!2352 = !DILocation(line: 357, column: 9, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2159, file: !2, line: 356, column: 5)
!2354 = !DILocation(line: 358, column: 9, scope: !2353)
!2355 = !DILocation(line: 362, column: 21, scope: !1765)
!2356 = !DILocation(line: 362, column: 9, scope: !1765)
!2357 = !DILocation(line: 362, column: 9, scope: !1753)
!2358 = !DILocation(line: 367, column: 9, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2360, file: !2, line: 367, column: 9)
!2360 = distinct !DILexicalBlock(scope: !1764, file: !2, line: 367, column: 9)
!2361 = !{!1563, !1569, i64 552}
!2362 = !DILocation(line: 367, column: 9, scope: !2360)
!2363 = !DILocation(line: 368, column: 32, scope: !1764)
!2364 = !DILocation(line: 0, scope: !1764)
!2365 = !DILocation(line: 369, column: 14, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !1764, file: !2, line: 369, column: 13)
!2367 = !DILocation(line: 369, column: 13, scope: !1764)
!2368 = !DILocation(line: 371, column: 13, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2366, file: !2, line: 370, column: 9)
!2370 = !DILocation(line: 372, column: 13, scope: !2369)
!2371 = !DILocation(line: 376, column: 14, scope: !1770)
!2372 = !DILocation(line: 376, column: 13, scope: !1764)
!2373 = !DILocation(line: 378, column: 13, scope: !1769)
!2374 = !DILocation(line: 0, scope: !1769)
!2375 = !DILocation(line: 380, column: 24, scope: !1769)
!2376 = !DILocation(line: 381, column: 18, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !1769, file: !2, line: 381, column: 17)
!2378 = !DILocation(line: 381, column: 17, scope: !1769)
!2379 = !DILocation(line: 383, column: 23, scope: !1769)
!2380 = !DILocation(line: 384, column: 21, scope: !1769)
!2381 = !DILocation(line: 386, column: 23, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !1769, file: !2, line: 386, column: 17)
!2383 = !DILocation(line: 386, column: 21, scope: !2382)
!2384 = !DILocation(line: 386, column: 52, scope: !2382)
!2385 = !DILocation(line: 386, column: 55, scope: !2382)
!2386 = !DILocation(line: 387, column: 17, scope: !2382)
!2387 = !DILocation(line: 387, column: 29, scope: !2382)
!2388 = !DILocation(line: 387, column: 41, scope: !2382)
!2389 = !DILocation(line: 387, column: 38, scope: !2382)
!2390 = !DILocation(line: 386, column: 17, scope: !1769)
!2391 = !DILocation(line: 389, column: 17, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2382, file: !2, line: 388, column: 13)
!2393 = !DILocation(line: 391, column: 17, scope: !2392)
!2394 = !DILocation(line: 396, column: 17, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !1769, file: !2, line: 396, column: 17)
!2396 = !DILocation(line: 396, column: 47, scope: !2395)
!2397 = !DILocation(line: 396, column: 60, scope: !2395)
!2398 = !{!1563, !1565, i64 108}
!2399 = !DILocation(line: 396, column: 51, scope: !2395)
!2400 = !DILocation(line: 396, column: 17, scope: !1769)
!2401 = !DILocation(line: 397, column: 17, scope: !2395)
!2402 = !DILocation(line: 399, column: 23, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !1769, file: !2, line: 399, column: 17)
!2404 = !DILocation(line: 399, column: 21, scope: !2403)
!2405 = !DILocation(line: 399, column: 51, scope: !2403)
!2406 = !DILocation(line: 399, column: 54, scope: !2403)
!2407 = !DILocation(line: 400, column: 17, scope: !2403)
!2408 = !DILocation(line: 400, column: 29, scope: !2403)
!2409 = !{!1563, !1565, i64 80}
!2410 = !DILocation(line: 400, column: 45, scope: !2403)
!2411 = !DILocation(line: 400, column: 42, scope: !2403)
!2412 = !DILocation(line: 399, column: 17, scope: !1769)
!2413 = !DILocation(line: 401, column: 17, scope: !2403)
!2414 = !DILocation(line: 404, column: 17, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !1769, file: !2, line: 404, column: 17)
!2416 = !DILocation(line: 404, column: 40, scope: !2415)
!2417 = !DILocation(line: 404, column: 55, scope: !2415)
!2418 = !DILocation(line: 404, column: 67, scope: !2415)
!2419 = !DILocation(line: 404, column: 17, scope: !1769)
!2420 = !DILocation(line: 405, column: 17, scope: !2415)
!2421 = !DILocation(line: 407, column: 23, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !1769, file: !2, line: 407, column: 17)
!2423 = !DILocation(line: 407, column: 21, scope: !2422)
!2424 = !DILocation(line: 407, column: 52, scope: !2422)
!2425 = !DILocation(line: 407, column: 55, scope: !2422)
!2426 = !DILocation(line: 407, column: 85, scope: !2422)
!2427 = !DILocation(line: 408, column: 26, scope: !2422)
!2428 = !DILocation(line: 408, column: 44, scope: !2422)
!2429 = !{!1563, !1565, i64 100}
!2430 = !DILocation(line: 408, column: 17, scope: !2422)
!2431 = !DILocation(line: 409, column: 31, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2422, file: !2, line: 409, column: 22)
!2433 = !DILocation(line: 409, column: 22, scope: !2432)
!2434 = !DILocation(line: 409, column: 22, scope: !2422)
!2435 = !DILocation(line: 411, column: 17, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2432, file: !2, line: 410, column: 13)
!2437 = !DILocation(line: 412, column: 17, scope: !2436)
!2438 = !DILocation(line: 415, column: 23, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !1769, file: !2, line: 415, column: 17)
!2440 = !DILocation(line: 415, column: 21, scope: !2439)
!2441 = !DILocation(line: 415, column: 53, scope: !2439)
!2442 = !DILocation(line: 415, column: 56, scope: !2439)
!2443 = !DILocation(line: 415, column: 87, scope: !2439)
!2444 = !DILocation(line: 422, column: 17, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2439, file: !2, line: 421, column: 13)
!2446 = !DILocation(line: 423, column: 17, scope: !2445)
!2447 = !DILocation(line: 425, column: 9, scope: !1770)
!2448 = !DILocation(line: 417, column: 26, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2439, file: !2, line: 416, column: 13)
!2450 = !DILocation(line: 417, column: 47, scope: !2449)
!2451 = !{!1563, !1565, i64 88}
!2452 = !DILocation(line: 418, column: 45, scope: !2449)
!2453 = !DILocation(line: 418, column: 44, scope: !2449)
!2454 = !DILocation(line: 418, column: 43, scope: !2449)
!2455 = !DILocation(line: 418, column: 26, scope: !2449)
!2456 = !DILocation(line: 418, column: 41, scope: !2449)
!2457 = !{!1563, !1565, i64 92}
!2458 = !DILocation(line: 429, column: 9, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !1764, file: !2, line: 429, column: 9)
!2460 = !DILocation(line: 430, column: 25, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2459, file: !2, line: 429, column: 9)
!2462 = !DILocation(line: 430, column: 17, scope: !2461)
!2463 = !DILocation(line: 429, column: 23, scope: !2461)
!2464 = distinct !{!2464, !2458, !2465, !1639}
!2465 = !DILocation(line: 430, column: 32, scope: !2459)
!2466 = !DILocation(line: 431, column: 13, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !1764, file: !2, line: 431, column: 12)
!2468 = !DILocation(line: 431, column: 12, scope: !1764)
!2469 = !DILocation(line: 433, column: 13, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2467, file: !2, line: 432, column: 9)
!2471 = !DILocation(line: 434, column: 13, scope: !2470)
!2472 = !DILocation(line: 436, column: 13, scope: !1764)
!2473 = !DILocation(line: 436, column: 25, scope: !1764)
!2474 = !{!1702, !1565, i64 240}
!2475 = !DILocation(line: 438, column: 22, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !1764, file: !2, line: 438, column: 13)
!2477 = !{!1563, !1565, i64 28}
!2478 = !DILocation(line: 438, column: 36, scope: !2476)
!2479 = !DILocation(line: 438, column: 54, scope: !2476)
!2480 = !DILocation(line: 440, column: 13, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2476, file: !2, line: 439, column: 9)
!2482 = !DILocation(line: 443, column: 22, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !1764, file: !2, line: 443, column: 13)
!2484 = !DILocation(line: 443, column: 42, scope: !2483)
!2485 = !DILocation(line: 442, column: 9, scope: !2481)
!2486 = !DILocation(line: 443, column: 36, scope: !2483)
!2487 = !DILocation(line: 443, column: 13, scope: !1764)
!2488 = !DILocation(line: 445, column: 13, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2483, file: !2, line: 444, column: 9)
!2490 = !DILocation(line: 447, column: 13, scope: !2489)
!2491 = !DILocation(line: 450, column: 72, scope: !1764)
!2492 = !DILocation(line: 450, column: 44, scope: !1764)
!2493 = !DILocation(line: 450, column: 13, scope: !1764)
!2494 = !DILocation(line: 450, column: 19, scope: !1764)
!2495 = !{!1702, !1569, i64 248}
!2496 = !DILocation(line: 451, column: 34, scope: !1764)
!2497 = !DILocation(line: 451, column: 30, scope: !1764)
!2498 = !DILocation(line: 451, column: 46, scope: !1764)
!2499 = !DILocation(line: 451, column: 9, scope: !1764)
!2500 = !DILocation(line: 454, column: 19, scope: !1774)
!2501 = !DILocation(line: 454, column: 9, scope: !1775)
!2502 = !DILocation(line: 465, column: 9, scope: !1779)
!2503 = !DILocation(line: 456, column: 41, scope: !1773)
!2504 = !DILocation(line: 0, scope: !1773)
!2505 = !DILocation(line: 457, column: 28, scope: !1773)
!2506 = !{!2507, !1565, i64 0}
!2507 = !{!"", !1565, i64 0, !1565, i64 4, !1571, i64 8, !1565, i64 12, !1565, i64 16, !1565, i64 20, !1573, i64 24, !1585, i64 32, !1571, i64 40, !1565, i64 44, !1565, i64 48, !1565, i64 52, !1565, i64 56, !1571, i64 60, !1566, i64 64}
!2508 = !DILocation(line: 0, scope: !2045, inlinedAt: !2509)
!2509 = distinct !DILocation(line: 458, column: 45, scope: !1773)
!2510 = !DILocation(line: 458, column: 32, scope: !1773)
!2511 = !DILocation(line: 458, column: 43, scope: !1773)
!2512 = !{!2507, !1571, i64 40}
!2513 = !DILocation(line: 458, column: 18, scope: !1773)
!2514 = !DILocation(line: 458, column: 25, scope: !1773)
!2515 = !{!2507, !1571, i64 8}
!2516 = !DILocation(line: 459, column: 18, scope: !1773)
!2517 = !DILocation(line: 459, column: 28, scope: !1773)
!2518 = !{!2507, !1565, i64 20}
!2519 = !DILocation(line: 460, column: 18, scope: !1773)
!2520 = !DILocation(line: 460, column: 25, scope: !1773)
!2521 = !{!2507, !1565, i64 44}
!2522 = !DILocation(line: 454, column: 38, scope: !1774)
!2523 = distinct !{!2523, !2501, !2524, !1639}
!2524 = !DILocation(line: 461, column: 9, scope: !1775)
!2525 = !DILocation(line: 468, column: 13, scope: !1777)
!2526 = !DILocation(line: 469, column: 13, scope: !1777)
!2527 = !DILocation(line: 472, column: 13, scope: !1777)
!2528 = !DILocation(line: 474, column: 19, scope: !1777)
!2529 = !DILocation(line: 0, scope: !1777)
!2530 = !DILocation(line: 475, column: 16, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !1777, file: !2, line: 475, column: 16)
!2532 = !DILocation(line: 475, column: 16, scope: !1777)
!2533 = !DILocation(line: 477, column: 24, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !2531, file: !2, line: 476, column: 13)
!2535 = !DILocation(line: 478, column: 21, scope: !2534)
!2536 = !DILocation(line: 479, column: 13, scope: !2534)
!2537 = !DILocation(line: 480, column: 17, scope: !1777)
!2538 = !DILocation(line: 482, column: 16, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !1777, file: !2, line: 482, column: 16)
!2540 = !DILocation(line: 482, column: 29, scope: !2539)
!2541 = !DILocation(line: 482, column: 33, scope: !2539)
!2542 = !DILocation(line: 482, column: 56, scope: !2539)
!2543 = !DILocation(line: 482, column: 49, scope: !2539)
!2544 = !DILocation(line: 482, column: 16, scope: !1777)
!2545 = !DILocation(line: 484, column: 17, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2539, file: !2, line: 483, column: 13)
!2547 = !DILocation(line: 485, column: 17, scope: !2546)
!2548 = !DILocation(line: 487, column: 24, scope: !1777)
!2549 = !DILocation(line: 487, column: 20, scope: !1777)
!2550 = !DILocation(line: 488, column: 18, scope: !1777)
!2551 = !DILocation(line: 488, column: 30, scope: !1777)
!2552 = !{!2507, !1566, i64 64}
!2553 = !DILocation(line: 491, column: 43, scope: !1777)
!2554 = !DILocation(line: 492, column: 26, scope: !1777)
!2555 = !DILocation(line: 492, column: 41, scope: !1777)
!2556 = !DILocation(line: 492, column: 58, scope: !1777)
!2557 = !DILocation(line: 492, column: 73, scope: !1777)
!2558 = !DILocation(line: 493, column: 26, scope: !1777)
!2559 = !DILocation(line: 490, column: 18, scope: !1777)
!2560 = !DILocation(line: 490, column: 15, scope: !1777)
!2561 = !DILocation(line: 495, column: 20, scope: !1777)
!2562 = !DILocation(line: 495, column: 13, scope: !1777)
!2563 = !DILocation(line: 497, column: 32, scope: !2564)
!2564 = distinct !DILexicalBlock(scope: !1777, file: !2, line: 496, column: 13)
!2565 = !DILocation(line: 497, column: 44, scope: !2564)
!2566 = !{!2507, !1565, i64 4}
!2567 = !DILocation(line: 497, column: 27, scope: !2564)
!2568 = !DILocation(line: 499, column: 58, scope: !2564)
!2569 = !DILocation(line: 500, column: 32, scope: !2564)
!2570 = !DILocation(line: 500, column: 44, scope: !2564)
!2571 = !DILocation(line: 500, column: 27, scope: !2564)
!2572 = !DILocation(line: 501, column: 58, scope: !2564)
!2573 = !DILocation(line: 0, scope: !2564)
!2574 = !DILocation(line: 504, column: 18, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !1777, file: !2, line: 504, column: 16)
!2576 = !DILocation(line: 504, column: 16, scope: !1777)
!2577 = !DILocation(line: 506, column: 17, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2575, file: !2, line: 505, column: 13)
!2579 = !DILocation(line: 507, column: 17, scope: !2578)
!2580 = !DILocation(line: 511, column: 9, scope: !1778)
!2581 = !DILocation(line: 509, column: 37, scope: !1777)
!2582 = !DILocation(line: 0, scope: !2045, inlinedAt: !2583)
!2583 = distinct !DILocation(line: 509, column: 27, scope: !1777)
!2584 = !DILocation(line: 150, column: 42, scope: !2045, inlinedAt: !2583)
!2585 = !DILocation(line: 150, column: 19, scope: !2045, inlinedAt: !2583)
!2586 = !DILocation(line: 150, column: 17, scope: !2045, inlinedAt: !2583)
!2587 = !DILocation(line: 509, column: 27, scope: !1777)
!2588 = !DILocation(line: 509, column: 18, scope: !1777)
!2589 = !DILocation(line: 509, column: 25, scope: !1777)
!2590 = !DILocation(line: 465, column: 40, scope: !1778)
!2591 = !DILocation(line: 465, column: 26, scope: !1778)
!2592 = !DILocation(line: 465, column: 20, scope: !1778)
!2593 = distinct !{!2593, !2502, !2594, !1639}
!2594 = !DILocation(line: 511, column: 9, scope: !1779)
!2595 = !DILocation(line: 513, column: 9, scope: !1764)
!2596 = !DILocation(line: 515, column: 24, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !1764, file: !2, line: 515, column: 12)
!2598 = !DILocation(line: 515, column: 36, scope: !2597)
!2599 = !DILocation(line: 515, column: 12, scope: !1764)
!2600 = !DILocation(line: 517, column: 16, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2602, file: !2, line: 517, column: 16)
!2602 = distinct !DILexicalBlock(scope: !2597, file: !2, line: 516, column: 9)
!2603 = !DILocation(line: 517, column: 30, scope: !2601)
!2604 = !DILocation(line: 517, column: 16, scope: !2602)
!2605 = !DILocation(line: 524, column: 21, scope: !1787)
!2606 = !{!1563, !1565, i64 532}
!2607 = !DILocation(line: 524, column: 9, scope: !1787)
!2608 = !DILocation(line: 524, column: 9, scope: !1753)
!2609 = !DILocation(line: 528, column: 69, scope: !1786)
!2610 = !{!1563, !1569, i64 536}
!2611 = !DILocation(line: 528, column: 50, scope: !1786)
!2612 = !DILocation(line: 528, column: 37, scope: !1786)
!2613 = !DILocation(line: 528, column: 13, scope: !1786)
!2614 = !DILocation(line: 528, column: 35, scope: !1786)
!2615 = !{!1702, !1569, i64 232}
!2616 = !DILocation(line: 529, column: 56, scope: !1786)
!2617 = !DILocation(line: 529, column: 9, scope: !1786)
!2618 = !DILocation(line: 530, column: 21, scope: !1786)
!2619 = !DILocation(line: 530, column: 9, scope: !1786)
!2620 = !DILocation(line: 532, column: 42, scope: !1786)
!2621 = !DILocation(line: 532, column: 31, scope: !1786)
!2622 = !DILocation(line: 532, column: 13, scope: !1786)
!2623 = !DILocation(line: 532, column: 29, scope: !1786)
!2624 = !{!1702, !1569, i64 224}
!2625 = !DILocation(line: 533, column: 33, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !1786, file: !2, line: 533, column: 13)
!2627 = !DILocation(line: 533, column: 13, scope: !1786)
!2628 = !DILocation(line: 535, column: 13, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2626, file: !2, line: 534, column: 9)
!2630 = !DILocation(line: 539, column: 13, scope: !1786)
!2631 = !DILocation(line: 0, scope: !1786)
!2632 = !DILocation(line: 540, column: 22, scope: !1786)
!2633 = !DILocation(line: 540, column: 9, scope: !1786)
!2634 = !DILocation(line: 541, column: 9, scope: !1786)
!2635 = !DILocation(line: 544, column: 26, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2637, file: !2, line: 544, column: 5)
!2637 = distinct !DILexicalBlock(scope: !1753, file: !2, line: 544, column: 5)
!2638 = !DILocation(line: 544, column: 16, scope: !2636)
!2639 = !DILocation(line: 544, column: 5, scope: !2637)
!2640 = !DILocation(line: 546, column: 9, scope: !2641)
!2641 = distinct !DILexicalBlock(scope: !2636, file: !2, line: 545, column: 5)
!2642 = !DILocation(line: 546, column: 23, scope: !2641)
!2643 = !DILocation(line: 546, column: 26, scope: !2641)
!2644 = !DILocation(line: 546, column: 30, scope: !2641)
!2645 = !DILocation(line: 549, column: 21, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2647, file: !2, line: 548, column: 9)
!2647 = distinct !DILexicalBlock(scope: !2641, file: !2, line: 547, column: 13)
!2648 = !{i64 0, i64 4, !1667, i64 4, i64 4, !1667, i64 8, i64 4, !1667, i64 12, i64 4, !1667, i64 16, i64 8, !2065, i64 24, i64 8, !2065, i64 32, i64 8, !2065, i64 40, i64 4, !1667, i64 44, i64 20, !1743, i64 64, i64 8, !1681, i64 72, i64 4, !1667, i64 76, i64 4, !1667, i64 80, i64 4, !1622, i64 84, i64 4, !1622, i64 88, i64 4, !1622, i64 92, i64 4, !1667, i64 96, i64 8, !2065, i64 104, i64 8, !2065, i64 112, i64 8, !2065, i64 120, i64 8, !2065, i64 128, i64 8, !1681, i64 136, i64 4, !1667, i64 144, i64 8, !2065, i64 152, i64 8, !2065, i64 160, i64 8, !2065, i64 168, i64 8, !2065, i64 176, i64 8, !2065, i64 184, i64 8, !2065, i64 192, i64 8, !2065, i64 200, i64 8, !2065, i64 208, i64 8, !2065, i64 216, i64 8, !2065, i64 224, i64 8, !1681, i64 232, i64 8, !1681, i64 240, i64 4, !1667, i64 248, i64 8, !1681, i64 256, i64 8, !2065, i64 264, i64 40, !1743, i64 304, i64 4, !1667, i64 312, i64 8, !2065, i64 320, i64 8, !2065, i64 328, i64 8, !2065, i64 336, i64 40, !1743, i64 376, i64 40, !1743, i64 416, i64 8, !2065, i64 424, i64 8, !2065, i64 432, i64 8, !2065, i64 440, i64 8, !1681, i64 448, i64 120, !1743, i64 568, i64 8, !1681, i64 576, i64 4, !1667, i64 580, i64 4, !1667, i64 584, i64 4, !1667, i64 592, i64 8, !1681, i64 600, i64 8, !1681}
!2649 = !DILocation(line: 550, column: 22, scope: !2646)
!2650 = !DILocation(line: 550, column: 13, scope: !2646)
!2651 = !DILocation(line: 551, column: 52, scope: !2646)
!2652 = !DILocation(line: 551, column: 13, scope: !2646)
!2653 = !DILocation(line: 551, column: 30, scope: !2646)
!2654 = !DILocation(line: 551, column: 44, scope: !2646)
!2655 = !DILocation(line: 544, column: 38, scope: !2636)
!2656 = distinct !{!2656, !2639, !2657, !1639, !2274}
!2657 = !DILocation(line: 553, column: 5, scope: !2637)
!2658 = !DILocation(line: 556, column: 1, scope: !1753)
!2659 = !DISubprogram(name: "x264_malloc", scope: !238, file: !238, line: 84, type: !2660, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1752)
!2660 = !DISubroutineType(types: !2661)
!2661 = !{!310, !283}
!2662 = !DISubprogram(name: "x264_log", scope: !238, file: !238, line: 99, type: !2663, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1752)
!2663 = !DISubroutineType(types: !2664)
!2664 = !{null, !380, !283, !446, null}
!2665 = !DISubprogram(name: "__assert_fail", scope: !2666, file: !2666, line: 69, type: !2667, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1752)
!2666 = !DIFile(filename: "/usr/include/assert.h", directory: "", checksumkind: CSK_MD5, checksum: "ab7dc6991d501750085448b20099a5a0")
!2667 = !DISubroutineType(types: !2668)
!2668 = !{null, !446, !446, !239, !446}
!2669 = !DISubprogram(name: "x264_slurp_file", scope: !238, file: !238, line: 89, type: !2670, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1752)
!2670 = !DISubroutineType(types: !2671)
!2671 = !{!428, !446}
!2672 = !DISubprogram(name: "strncmp", scope: !2673, file: !2673, line: 159, type: !2674, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1752)
!2673 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!2674 = !DISubroutineType(types: !2675)
!2675 = !{!283, !446, !446, !1193}
!2676 = !DISubprogram(name: "strchr", scope: !2673, file: !2673, line: 246, type: !2677, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1752)
!2677 = !DISubroutineType(types: !2678)
!2678 = !{!428, !446, !283}
!2679 = !DISubprogram(name: "strstr", scope: !2673, file: !2673, line: 350, type: !2680, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1752)
!2680 = !DISubroutineType(types: !2681)
!2681 = !{!428, !446, !446}
!2682 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !2683, file: !2683, line: 439, type: !2684, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1752)
!2683 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!2684 = !DISubroutineType(types: !2685)
!2685 = !{!283, !2686, !2686, null}
!2686 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !446)
!2687 = !DISubprogram(name: "x264_free", scope: !238, file: !238, line: 86, type: !2688, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1752)
!2688 = !DISubroutineType(types: !2689)
!2689 = !{null, !310}
!2690 = distinct !DISubprogram(name: "init_pass2", scope: !2, file: !2, line: 1733, type: !1754, scopeLine: 1734, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !2691)
!2691 = !{!2692, !2693, !2694, !2695, !2696, !2697, !2698, !2699, !2700, !2701, !2703, !2704, !2706, !2707, !2708, !2712, !2716, !2717, !2718, !2719, !2720, !2721, !2725, !2729, !2738, !2739, !2740, !2741, !2745, !2746, !2747, !2751}
!2692 = !DILocalVariable(name: "h", arg: 1, scope: !2690, file: !2, line: 1733, type: !380)
!2693 = !DILocalVariable(name: "rcc", scope: !2690, file: !2, line: 1735, type: !1103)
!2694 = !DILocalVariable(name: "all_const_bits", scope: !2690, file: !2, line: 1736, type: !296)
!2695 = !DILocalVariable(name: "all_available_bits", scope: !2690, file: !2, line: 1737, type: !296)
!2696 = !DILocalVariable(name: "rate_factor", scope: !2690, file: !2, line: 1738, type: !302)
!2697 = !DILocalVariable(name: "step", scope: !2690, file: !2, line: 1738, type: !302)
!2698 = !DILocalVariable(name: "step_mult", scope: !2690, file: !2, line: 1738, type: !302)
!2699 = !DILocalVariable(name: "qblur", scope: !2690, file: !2, line: 1739, type: !302)
!2700 = !DILocalVariable(name: "cplxblur", scope: !2690, file: !2, line: 1740, type: !302)
!2701 = !DILocalVariable(name: "filter_size", scope: !2690, file: !2, line: 1741, type: !2702)
!2702 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !283)
!2703 = !DILocalVariable(name: "expected_bits", scope: !2690, file: !2, line: 1742, type: !302)
!2704 = !DILocalVariable(name: "qscale", scope: !2690, file: !2, line: 1743, type: !2705)
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!2706 = !DILocalVariable(name: "blurred_qscale", scope: !2690, file: !2, line: 1743, type: !2705)
!2707 = !DILocalVariable(name: "i", scope: !2690, file: !2, line: 1744, type: !283)
!2708 = !DILocalVariable(name: "rce", scope: !2709, file: !2, line: 1749, type: !285)
!2709 = distinct !DILexicalBlock(scope: !2710, file: !2, line: 1748, column: 5)
!2710 = distinct !DILexicalBlock(scope: !2711, file: !2, line: 1747, column: 5)
!2711 = distinct !DILexicalBlock(scope: !2690, file: !2, line: 1747, column: 5)
!2712 = !DILocalVariable(name: "rce", scope: !2713, file: !2, line: 1766, type: !285)
!2713 = distinct !DILexicalBlock(scope: !2714, file: !2, line: 1765, column: 5)
!2714 = distinct !DILexicalBlock(scope: !2715, file: !2, line: 1764, column: 5)
!2715 = distinct !DILexicalBlock(scope: !2690, file: !2, line: 1764, column: 5)
!2716 = !DILocalVariable(name: "weight_sum", scope: !2713, file: !2, line: 1767, type: !302)
!2717 = !DILocalVariable(name: "cplx_sum", scope: !2713, file: !2, line: 1768, type: !302)
!2718 = !DILocalVariable(name: "weight", scope: !2713, file: !2, line: 1769, type: !302)
!2719 = !DILocalVariable(name: "gaussian_weight", scope: !2713, file: !2, line: 1770, type: !302)
!2720 = !DILocalVariable(name: "j", scope: !2713, file: !2, line: 1771, type: !283)
!2721 = !DILocalVariable(name: "rcj", scope: !2722, file: !2, line: 1775, type: !285)
!2722 = distinct !DILexicalBlock(scope: !2723, file: !2, line: 1774, column: 9)
!2723 = distinct !DILexicalBlock(scope: !2724, file: !2, line: 1773, column: 9)
!2724 = distinct !DILexicalBlock(scope: !2713, file: !2, line: 1773, column: 9)
!2725 = !DILocalVariable(name: "rcj", scope: !2726, file: !2, line: 1787, type: !285)
!2726 = distinct !DILexicalBlock(scope: !2727, file: !2, line: 1786, column: 9)
!2727 = distinct !DILexicalBlock(scope: !2728, file: !2, line: 1785, column: 9)
!2728 = distinct !DILexicalBlock(scope: !2713, file: !2, line: 1785, column: 9)
!2729 = !DILocalVariable(name: "rce", scope: !2730, file: !2, line: 1845, type: !285)
!2730 = distinct !DILexicalBlock(scope: !2731, file: !2, line: 1844, column: 13)
!2731 = distinct !DILexicalBlock(scope: !2732, file: !2, line: 1843, column: 13)
!2732 = distinct !DILexicalBlock(scope: !2733, file: !2, line: 1843, column: 13)
!2733 = distinct !DILexicalBlock(scope: !2734, file: !2, line: 1841, column: 9)
!2734 = distinct !DILexicalBlock(scope: !2735, file: !2, line: 1840, column: 12)
!2735 = distinct !DILexicalBlock(scope: !2736, file: !2, line: 1818, column: 5)
!2736 = distinct !DILexicalBlock(scope: !2737, file: !2, line: 1817, column: 5)
!2737 = distinct !DILexicalBlock(scope: !2690, file: !2, line: 1817, column: 5)
!2738 = !DILocalVariable(name: "j", scope: !2730, file: !2, line: 1846, type: !283)
!2739 = !DILocalVariable(name: "q", scope: !2730, file: !2, line: 1847, type: !302)
!2740 = !DILocalVariable(name: "sum", scope: !2730, file: !2, line: 1847, type: !302)
!2741 = !DILocalVariable(name: "index", scope: !2742, file: !2, line: 1851, type: !283)
!2742 = distinct !DILexicalBlock(scope: !2743, file: !2, line: 1850, column: 17)
!2743 = distinct !DILexicalBlock(scope: !2744, file: !2, line: 1849, column: 17)
!2744 = distinct !DILexicalBlock(scope: !2730, file: !2, line: 1849, column: 17)
!2745 = !DILocalVariable(name: "d", scope: !2742, file: !2, line: 1852, type: !302)
!2746 = !DILocalVariable(name: "coeff", scope: !2742, file: !2, line: 1853, type: !302)
!2747 = !DILocalVariable(name: "rce", scope: !2748, file: !2, line: 1868, type: !285)
!2748 = distinct !DILexicalBlock(scope: !2749, file: !2, line: 1867, column: 9)
!2749 = distinct !DILexicalBlock(scope: !2750, file: !2, line: 1866, column: 9)
!2750 = distinct !DILexicalBlock(scope: !2735, file: !2, line: 1866, column: 9)
!2751 = !DILocalVariable(name: "avgq", scope: !2752, file: !2, line: 1887, type: !302)
!2752 = distinct !DILexicalBlock(scope: !2753, file: !2, line: 1886, column: 5)
!2753 = distinct !DILexicalBlock(scope: !2690, file: !2, line: 1885, column: 8)
!2754 = !DILocation(line: 0, scope: !2690)
!2755 = !DILocation(line: 1735, column: 34, scope: !2690)
!2756 = !DILocation(line: 1737, column: 58, scope: !2690)
!2757 = !DILocation(line: 1737, column: 46, scope: !2690)
!2758 = !DILocation(line: 1737, column: 83, scope: !2690)
!2759 = !DILocation(line: 1737, column: 78, scope: !2690)
!2760 = !DILocation(line: 1737, column: 68, scope: !2690)
!2761 = !DILocation(line: 1737, column: 76, scope: !2690)
!2762 = !DILocation(line: 1737, column: 102, scope: !2690)
!2763 = !DILocation(line: 1737, column: 95, scope: !2690)
!2764 = !DILocation(line: 1737, column: 35, scope: !2690)
!2765 = !DILocation(line: 1739, column: 32, scope: !2690)
!2766 = !{!1563, !1571, i64 564}
!2767 = !DILocation(line: 1739, column: 20, scope: !2690)
!2768 = !DILocation(line: 1740, column: 35, scope: !2690)
!2769 = !{!1563, !1571, i64 568}
!2770 = !DILocation(line: 1740, column: 23, scope: !2690)
!2771 = !DILocation(line: 1741, column: 40, scope: !2690)
!2772 = !DILocation(line: 1741, column: 29, scope: !2690)
!2773 = !DILocation(line: 1741, column: 44, scope: !2690)
!2774 = !DILocation(line: 1747, column: 15, scope: !2710)
!2775 = !DILocation(line: 1747, column: 5, scope: !2711)
!2776 = !DILocation(line: 0, scope: !2709)
!2777 = !DILocation(line: 1750, column: 32, scope: !2709)
!2778 = !DILocation(line: 1750, column: 27, scope: !2709)
!2779 = !DILocation(line: 1750, column: 24, scope: !2709)
!2780 = !DILocation(line: 1747, column: 35, scope: !2710)
!2781 = distinct !{!2781, !2775, !2782, !1639}
!2782 = !DILocation(line: 1751, column: 5, scope: !2711)
!2783 = distinct !{!2783, !2784}
!2784 = !{!"llvm.loop.unroll.disable"}
!2785 = !DILocation(line: 1753, column: 28, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2690, file: !2, line: 1753, column: 9)
!2787 = !DILocation(line: 1753, column: 9, scope: !2690)
!2788 = !DILocation(line: 1764, column: 5, scope: !2715)
!2789 = !DILocation(line: 1764, column: 15, scope: !2714)
!2790 = !DILocation(line: 1756, column: 24, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2786, file: !2, line: 1754, column: 5)
!2792 = !DILocation(line: 1756, column: 39, scope: !2791)
!2793 = !DILocation(line: 1756, column: 50, scope: !2791)
!2794 = !DILocation(line: 1756, column: 18, scope: !2791)
!2795 = !DILocation(line: 1755, column: 9, scope: !2791)
!2796 = !DILocation(line: 1757, column: 9, scope: !2791)
!2797 = !DILocation(line: 0, scope: !2713)
!2798 = !DILocation(line: 1773, column: 31, scope: !2723)
!2799 = !DILocation(line: 1775, column: 53, scope: !2722)
!2800 = !DILocation(line: 0, scope: !2722)
!2801 = !DILocation(line: 1776, column: 44, scope: !2722)
!2802 = !{!2507, !1565, i64 48}
!2803 = !DILocation(line: 1776, column: 32, scope: !2722)
!2804 = !DILocation(line: 1776, column: 27, scope: !2722)
!2805 = !DILocation(line: 1776, column: 25, scope: !2722)
!2806 = !DILocation(line: 1776, column: 20, scope: !2722)
!2807 = !DILocation(line: 1777, column: 23, scope: !2808)
!2808 = distinct !DILexicalBlock(scope: !2722, file: !2, line: 1777, column: 16)
!2809 = !DILocation(line: 1777, column: 16, scope: !2722)
!2810 = !DILocation(line: 1779, column: 46, scope: !2722)
!2811 = !DILocation(line: 1779, column: 44, scope: !2722)
!2812 = !DILocation(line: 1779, column: 48, scope: !2722)
!2813 = !DILocation(line: 1779, column: 40, scope: !2722)
!2814 = !DILocalVariable(name: "rce", arg: 1, scope: !2815, file: !2, line: 161, type: !285)
!2815 = distinct !DISubprogram(name: "qscale2bits", scope: !2, file: !2, line: 161, type: !2816, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !2818)
!2816 = !DISubroutineType(types: !2817)
!2817 = !{!302, !285, !302}
!2818 = !{!2814, !2819}
!2819 = !DILocalVariable(name: "qscale", arg: 2, scope: !2815, file: !2, line: 161, type: !302)
!2820 = !DILocation(line: 0, scope: !2815, inlinedAt: !2821)
!2821 = distinct !DILocation(line: 1781, column: 44, scope: !2722)
!2822 = !DILocation(line: 165, column: 45, scope: !2815, inlinedAt: !2821)
!2823 = !DILocation(line: 166, column: 19, scope: !2815, inlinedAt: !2821)
!2824 = !DILocation(line: 166, column: 34, scope: !2815, inlinedAt: !2821)
!2825 = !DILocation(line: 165, column: 35, scope: !2815, inlinedAt: !2821)
!2826 = !DILocation(line: 166, column: 29, scope: !2815, inlinedAt: !2821)
!2827 = !DILocation(line: 166, column: 14, scope: !2815, inlinedAt: !2821)
!2828 = !DILocation(line: 165, column: 33, scope: !2815, inlinedAt: !2821)
!2829 = !DILocation(line: 1781, column: 64, scope: !2722)
!2830 = !DILocation(line: 1779, column: 38, scope: !2722)
!2831 = !DILocation(line: 1781, column: 41, scope: !2722)
!2832 = !DILocation(line: 1781, column: 22, scope: !2722)
!2833 = !DILocation(line: 1780, column: 24, scope: !2722)
!2834 = !DILocation(line: 1773, column: 57, scope: !2723)
!2835 = !DILocation(line: 1773, column: 18, scope: !2723)
!2836 = !DILocation(line: 1773, column: 19, scope: !2723)
!2837 = distinct !{!2837, !2838, !2839, !1639}
!2838 = !DILocation(line: 1773, column: 9, scope: !2724)
!2839 = !DILocation(line: 1782, column: 9, scope: !2724)
!2840 = !DILocation(line: 1767, column: 16, scope: !2713)
!2841 = !DILocation(line: 1785, column: 9, scope: !2728)
!2842 = !DILocation(line: 1785, column: 42, scope: !2727)
!2843 = !DILocation(line: 1785, column: 18, scope: !2727)
!2844 = !DILocation(line: 1785, column: 19, scope: !2727)
!2845 = !DILocation(line: 1785, column: 32, scope: !2727)
!2846 = distinct !{!2846, !2841, !2847, !1639}
!2847 = !DILocation(line: 1794, column: 9, scope: !2728)
!2848 = !DILocation(line: 1787, column: 53, scope: !2726)
!2849 = !DILocation(line: 0, scope: !2726)
!2850 = !DILocation(line: 1788, column: 46, scope: !2726)
!2851 = !DILocation(line: 1788, column: 44, scope: !2726)
!2852 = !DILocation(line: 1788, column: 48, scope: !2726)
!2853 = !DILocation(line: 1788, column: 40, scope: !2726)
!2854 = !DILocation(line: 0, scope: !2815, inlinedAt: !2855)
!2855 = distinct !DILocation(line: 1790, column: 44, scope: !2726)
!2856 = !DILocation(line: 165, column: 45, scope: !2815, inlinedAt: !2855)
!2857 = !DILocation(line: 166, column: 19, scope: !2815, inlinedAt: !2855)
!2858 = !DILocation(line: 166, column: 34, scope: !2815, inlinedAt: !2855)
!2859 = !DILocation(line: 165, column: 35, scope: !2815, inlinedAt: !2855)
!2860 = !DILocation(line: 166, column: 29, scope: !2815, inlinedAt: !2855)
!2861 = !DILocation(line: 166, column: 14, scope: !2815, inlinedAt: !2855)
!2862 = !DILocation(line: 165, column: 33, scope: !2815, inlinedAt: !2855)
!2863 = !DILocation(line: 1790, column: 64, scope: !2726)
!2864 = !DILocation(line: 1788, column: 38, scope: !2726)
!2865 = !DILocation(line: 1790, column: 41, scope: !2726)
!2866 = !DILocation(line: 1790, column: 22, scope: !2726)
!2867 = !DILocation(line: 1789, column: 24, scope: !2726)
!2868 = !DILocation(line: 1791, column: 44, scope: !2726)
!2869 = !DILocation(line: 1791, column: 32, scope: !2726)
!2870 = !DILocation(line: 1791, column: 27, scope: !2726)
!2871 = !DILocation(line: 1791, column: 25, scope: !2726)
!2872 = !DILocation(line: 1791, column: 20, scope: !2726)
!2873 = !DILocation(line: 1792, column: 23, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2726, file: !2, line: 1792, column: 16)
!2875 = !DILocation(line: 1795, column: 44, scope: !2713)
!2876 = !DILocation(line: 1795, column: 35, scope: !2713)
!2877 = !DILocation(line: 1795, column: 14, scope: !2713)
!2878 = !DILocation(line: 1795, column: 33, scope: !2713)
!2879 = !{!2507, !1571, i64 60}
!2880 = !DILocation(line: 1764, column: 35, scope: !2714)
!2881 = distinct !{!2881, !2788, !2882, !1639}
!2882 = !DILocation(line: 1796, column: 5, scope: !2715)
!2883 = !DILocation(line: 1798, column: 40, scope: !2690)
!2884 = !DILocation(line: 1798, column: 14, scope: !2690)
!2885 = !DILocation(line: 1799, column: 20, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2690, file: !2, line: 1799, column: 8)
!2887 = !DILocation(line: 1799, column: 8, scope: !2690)
!2888 = !DILocation(line: 1800, column: 58, scope: !2886)
!2889 = !DILocation(line: 1800, column: 52, scope: !2886)
!2890 = !DILocation(line: 1800, column: 26, scope: !2886)
!2891 = !DILocation(line: 1800, column: 9, scope: !2886)
!2892 = !DILocation(line: 0, scope: !2886)
!2893 = !DILocation(line: 1812, column: 15, scope: !2894)
!2894 = distinct !DILexicalBlock(scope: !2895, file: !2, line: 1812, column: 5)
!2895 = distinct !DILexicalBlock(scope: !2690, file: !2, line: 1812, column: 5)
!2896 = !DILocation(line: 1812, column: 5, scope: !2895)
!2897 = !DILocalVariable(name: "h", arg: 1, scope: !2898, file: !2, line: 1122, type: !380)
!2898 = distinct !DISubprogram(name: "get_qscale", scope: !2, file: !2, line: 1122, type: !2899, scopeLine: 1123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !2901)
!2899 = !DISubroutineType(types: !2900)
!2900 = !{!302, !380, !285, !302, !283}
!2901 = !{!2897, !2902, !2903, !2904, !2905, !2906, !2907}
!2902 = !DILocalVariable(name: "rce", arg: 2, scope: !2898, file: !2, line: 1122, type: !285)
!2903 = !DILocalVariable(name: "rate_factor", arg: 3, scope: !2898, file: !2, line: 1122, type: !302)
!2904 = !DILocalVariable(name: "frame_num", arg: 4, scope: !2898, file: !2, line: 1122, type: !283)
!2905 = !DILocalVariable(name: "rcc", scope: !2898, file: !2, line: 1124, type: !1103)
!2906 = !DILocalVariable(name: "q", scope: !2898, file: !2, line: 1125, type: !302)
!2907 = !DILocalVariable(name: "zone", scope: !2898, file: !2, line: 1126, type: !512)
!2908 = !DILocation(line: 0, scope: !2898, inlinedAt: !2909)
!2909 = distinct !DILocation(line: 1813, column: 54, scope: !2894)
!2910 = !DILocalVariable(name: "h", arg: 1, scope: !2911, file: !2, line: 662, type: !380)
!2911 = distinct !DISubprogram(name: "get_zone", scope: !2, file: !2, line: 662, type: !2912, scopeLine: 663, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !2914)
!2912 = !DISubroutineType(types: !2913)
!2913 = !{!512, !380, !283}
!2914 = !{!2910, !2915, !2916, !2917}
!2915 = !DILocalVariable(name: "frame_num", arg: 2, scope: !2911, file: !2, line: 662, type: !283)
!2916 = !DILocalVariable(name: "i", scope: !2911, file: !2, line: 664, type: !283)
!2917 = !DILocalVariable(name: "z", scope: !2918, file: !2, line: 667, type: !512)
!2918 = distinct !DILexicalBlock(scope: !2919, file: !2, line: 666, column: 5)
!2919 = distinct !DILexicalBlock(scope: !2920, file: !2, line: 665, column: 5)
!2920 = distinct !DILexicalBlock(scope: !2911, file: !2, line: 665, column: 5)
!2921 = !DILocation(line: 0, scope: !2911, inlinedAt: !2922)
!2922 = distinct !DILocation(line: 1126, column: 25, scope: !2898, inlinedAt: !2909)
!2923 = !DILocation(line: 665, column: 5, scope: !2920, inlinedAt: !2922)
!2924 = !DILocation(line: 665, scope: !2920, inlinedAt: !2922)
!2925 = !DILocation(line: 667, column: 27, scope: !2918, inlinedAt: !2922)
!2926 = !DILocation(line: 0, scope: !2918, inlinedAt: !2922)
!2927 = !DILocation(line: 668, column: 29, scope: !2928, inlinedAt: !2922)
!2928 = distinct !DILexicalBlock(scope: !2918, file: !2, line: 668, column: 13)
!2929 = !DILocation(line: 668, column: 23, scope: !2928, inlinedAt: !2922)
!2930 = !DILocation(line: 668, column: 37, scope: !2928, inlinedAt: !2922)
!2931 = !DILocation(line: 668, column: 56, scope: !2928, inlinedAt: !2922)
!2932 = !DILocation(line: 668, column: 50, scope: !2928, inlinedAt: !2922)
!2933 = !DILocation(line: 668, column: 13, scope: !2918, inlinedAt: !2922)
!2934 = !DILocation(line: 665, column: 34, scope: !2919, inlinedAt: !2922)
!2935 = distinct !{!2935, !2923, !2936, !1639}
!2936 = !DILocation(line: 670, column: 5, scope: !2920, inlinedAt: !2922)
!2937 = !DILocation(line: 1131, column: 29, scope: !2938, inlinedAt: !2909)
!2938 = distinct !DILexicalBlock(scope: !2898, file: !2, line: 1131, column: 8)
!2939 = !{!2507, !1565, i64 16}
!2940 = !DILocation(line: 1131, column: 45, scope: !2938, inlinedAt: !2909)
!2941 = !{!2507, !1565, i64 12}
!2942 = !DILocation(line: 1131, column: 53, scope: !2938, inlinedAt: !2909)
!2943 = !DILocation(line: 1131, column: 8, scope: !2898, inlinedAt: !2909)
!2944 = !DILocation(line: 1132, column: 18, scope: !2938, inlinedAt: !2909)
!2945 = !DILocation(line: 1132, column: 9, scope: !2938, inlinedAt: !2909)
!2946 = !DILocation(line: 1128, column: 19, scope: !2898, inlinedAt: !2909)
!2947 = !DILocation(line: 1128, column: 14, scope: !2898, inlinedAt: !2909)
!2948 = !DILocation(line: 1128, column: 55, scope: !2898, inlinedAt: !2909)
!2949 = !DILocation(line: 1128, column: 41, scope: !2898, inlinedAt: !2909)
!2950 = !DILocation(line: 1128, column: 39, scope: !2898, inlinedAt: !2909)
!2951 = !DILocation(line: 1128, column: 9, scope: !2898, inlinedAt: !2909)
!2952 = !DILocation(line: 1135, column: 24, scope: !2953, inlinedAt: !2909)
!2953 = distinct !DILexicalBlock(scope: !2938, file: !2, line: 1134, column: 5)
!2954 = !{!1702, !1585, i64 144}
!2955 = !DILocation(line: 1137, column: 26, scope: !2953, inlinedAt: !2909)
!2956 = !DILocation(line: 0, scope: !2938, inlinedAt: !2909)
!2957 = !DILocation(line: 1140, column: 9, scope: !2958, inlinedAt: !2909)
!2958 = distinct !DILexicalBlock(scope: !2898, file: !2, line: 1140, column: 9)
!2959 = !DILocation(line: 1140, column: 9, scope: !2898, inlinedAt: !2909)
!2960 = !DILocation(line: 1142, column: 19, scope: !2961, inlinedAt: !2909)
!2961 = distinct !DILexicalBlock(scope: !2962, file: !2, line: 1142, column: 13)
!2962 = distinct !DILexicalBlock(scope: !2958, file: !2, line: 1141, column: 5)
!2963 = !DILocation(line: 1142, column: 13, scope: !2961, inlinedAt: !2909)
!2964 = !DILocation(line: 1142, column: 13, scope: !2962, inlinedAt: !2909)
!2965 = !DILocation(line: 1143, column: 33, scope: !2961, inlinedAt: !2909)
!2966 = !{!2224, !1565, i64 12}
!2967 = !DILocation(line: 1143, column: 27, scope: !2961, inlinedAt: !2909)
!2968 = !DILocation(line: 0, scope: !2045, inlinedAt: !2969)
!2969 = distinct !DILocation(line: 1143, column: 17, scope: !2961, inlinedAt: !2909)
!2970 = !DILocation(line: 150, column: 42, scope: !2045, inlinedAt: !2969)
!2971 = !DILocation(line: 150, column: 19, scope: !2045, inlinedAt: !2969)
!2972 = !DILocation(line: 150, column: 17, scope: !2045, inlinedAt: !2969)
!2973 = !DILocation(line: 1143, column: 13, scope: !2961, inlinedAt: !2909)
!2974 = !DILocation(line: 1145, column: 24, scope: !2961, inlinedAt: !2909)
!2975 = !DILocation(line: 1145, column: 18, scope: !2961, inlinedAt: !2909)
!2976 = !DILocation(line: 1145, column: 15, scope: !2961, inlinedAt: !2909)
!2977 = !DILocation(line: 0, scope: !2815, inlinedAt: !2978)
!2978 = distinct !DILocation(line: 1813, column: 26, scope: !2894)
!2979 = !DILocation(line: 163, column: 14, scope: !2980, inlinedAt: !2978)
!2980 = distinct !DILexicalBlock(scope: !2815, file: !2, line: 163, column: 8)
!2981 = !DILocation(line: 163, column: 8, scope: !2815, inlinedAt: !2978)
!2982 = !DILocation(line: 165, column: 45, scope: !2815, inlinedAt: !2978)
!2983 = !DILocation(line: 166, column: 34, scope: !2815, inlinedAt: !2978)
!2984 = !DILocation(line: 166, column: 14, scope: !2815, inlinedAt: !2978)
!2985 = !DILocation(line: 165, column: 13, scope: !2815, inlinedAt: !2978)
!2986 = !DILocation(line: 165, column: 27, scope: !2815, inlinedAt: !2978)
!2987 = !DILocation(line: 165, column: 52, scope: !2815, inlinedAt: !2978)
!2988 = !DILocation(line: 165, column: 35, scope: !2815, inlinedAt: !2978)
!2989 = !DILocation(line: 165, column: 33, scope: !2815, inlinedAt: !2978)
!2990 = !DILocation(line: 166, column: 61, scope: !2815, inlinedAt: !2978)
!2991 = !DILocation(line: 166, column: 59, scope: !2815, inlinedAt: !2978)
!2992 = !DILocation(line: 166, column: 29, scope: !2815, inlinedAt: !2978)
!2993 = !DILocation(line: 166, column: 27, scope: !2815, inlinedAt: !2978)
!2994 = !DILocation(line: 167, column: 19, scope: !2815, inlinedAt: !2978)
!2995 = !DILocation(line: 167, column: 14, scope: !2815, inlinedAt: !2978)
!2996 = !DILocation(line: 166, column: 12, scope: !2815, inlinedAt: !2978)
!2997 = !DILocation(line: 167, column: 12, scope: !2815, inlinedAt: !2978)
!2998 = !DILocation(line: 1813, column: 23, scope: !2894)
!2999 = !DILocation(line: 1812, column: 35, scope: !2894)
!3000 = distinct !{!3000, !2896, !3001, !1639}
!3001 = !DILocation(line: 1813, column: 91, scope: !2895)
!3002 = !DILocation(line: 1814, column: 17, scope: !2690)
!3003 = !DILocation(line: 1814, column: 36, scope: !2690)
!3004 = !DILocation(line: 1817, column: 20, scope: !2737)
!3005 = !DILocation(line: 1817, column: 38, scope: !2736)
!3006 = !DILocation(line: 1817, column: 5, scope: !2737)
!3007 = !DILocation(line: 1820, column: 21, scope: !2735)
!3008 = !DILocation(line: 1822, column: 35, scope: !2735)
!3009 = !DILocation(line: 1824, column: 27, scope: !2735)
!3010 = !DILocation(line: 1827, column: 19, scope: !3011)
!3011 = distinct !DILexicalBlock(scope: !3012, file: !2, line: 1827, column: 9)
!3012 = distinct !DILexicalBlock(scope: !2735, file: !2, line: 1827, column: 9)
!3013 = !DILocation(line: 1827, column: 9, scope: !3012)
!3014 = !DILocation(line: 1833, column: 9, scope: !3015)
!3015 = distinct !DILexicalBlock(scope: !2735, file: !2, line: 1833, column: 9)
!3016 = !DILocation(line: 0, scope: !2898, inlinedAt: !3017)
!3017 = distinct !DILocation(line: 1829, column: 25, scope: !3018)
!3018 = distinct !DILexicalBlock(scope: !3011, file: !2, line: 1828, column: 9)
!3019 = !DILocation(line: 0, scope: !2911, inlinedAt: !3020)
!3020 = distinct !DILocation(line: 1126, column: 25, scope: !2898, inlinedAt: !3017)
!3021 = !DILocation(line: 665, column: 5, scope: !2920, inlinedAt: !3020)
!3022 = !DILocation(line: 665, scope: !2920, inlinedAt: !3020)
!3023 = !DILocation(line: 667, column: 27, scope: !2918, inlinedAt: !3020)
!3024 = !DILocation(line: 0, scope: !2918, inlinedAt: !3020)
!3025 = !DILocation(line: 668, column: 29, scope: !2928, inlinedAt: !3020)
!3026 = !DILocation(line: 668, column: 23, scope: !2928, inlinedAt: !3020)
!3027 = !DILocation(line: 668, column: 37, scope: !2928, inlinedAt: !3020)
!3028 = !DILocation(line: 668, column: 56, scope: !2928, inlinedAt: !3020)
!3029 = !DILocation(line: 668, column: 50, scope: !2928, inlinedAt: !3020)
!3030 = !DILocation(line: 668, column: 13, scope: !2918, inlinedAt: !3020)
!3031 = !DILocation(line: 665, column: 34, scope: !2919, inlinedAt: !3020)
!3032 = distinct !{!3032, !3021, !3033, !1639}
!3033 = !DILocation(line: 670, column: 5, scope: !2920, inlinedAt: !3020)
!3034 = !DILocation(line: 1131, column: 29, scope: !2938, inlinedAt: !3017)
!3035 = !DILocation(line: 1131, column: 45, scope: !2938, inlinedAt: !3017)
!3036 = !DILocation(line: 1131, column: 53, scope: !2938, inlinedAt: !3017)
!3037 = !DILocation(line: 1131, column: 8, scope: !2898, inlinedAt: !3017)
!3038 = !DILocation(line: 1132, column: 18, scope: !2938, inlinedAt: !3017)
!3039 = !DILocation(line: 1132, column: 9, scope: !2938, inlinedAt: !3017)
!3040 = !DILocation(line: 1128, column: 19, scope: !2898, inlinedAt: !3017)
!3041 = !DILocation(line: 1128, column: 14, scope: !2898, inlinedAt: !3017)
!3042 = !DILocation(line: 1128, column: 55, scope: !2898, inlinedAt: !3017)
!3043 = !DILocation(line: 1128, column: 41, scope: !2898, inlinedAt: !3017)
!3044 = !DILocation(line: 1128, column: 39, scope: !2898, inlinedAt: !3017)
!3045 = !DILocation(line: 1128, column: 9, scope: !2898, inlinedAt: !3017)
!3046 = !DILocation(line: 1135, column: 24, scope: !2953, inlinedAt: !3017)
!3047 = !DILocation(line: 1137, column: 26, scope: !2953, inlinedAt: !3017)
!3048 = !DILocation(line: 0, scope: !2938, inlinedAt: !3017)
!3049 = !DILocation(line: 1140, column: 9, scope: !2958, inlinedAt: !3017)
!3050 = !DILocation(line: 1140, column: 9, scope: !2898, inlinedAt: !3017)
!3051 = !DILocation(line: 1142, column: 19, scope: !2961, inlinedAt: !3017)
!3052 = !DILocation(line: 1142, column: 13, scope: !2961, inlinedAt: !3017)
!3053 = !DILocation(line: 1142, column: 13, scope: !2962, inlinedAt: !3017)
!3054 = !DILocation(line: 1143, column: 33, scope: !2961, inlinedAt: !3017)
!3055 = !DILocation(line: 1143, column: 27, scope: !2961, inlinedAt: !3017)
!3056 = !DILocation(line: 0, scope: !2045, inlinedAt: !3057)
!3057 = distinct !DILocation(line: 1143, column: 17, scope: !2961, inlinedAt: !3017)
!3058 = !DILocation(line: 150, column: 42, scope: !2045, inlinedAt: !3057)
!3059 = !DILocation(line: 150, column: 19, scope: !2045, inlinedAt: !3057)
!3060 = !DILocation(line: 150, column: 17, scope: !2045, inlinedAt: !3057)
!3061 = !DILocation(line: 1143, column: 13, scope: !2961, inlinedAt: !3017)
!3062 = !DILocation(line: 1145, column: 24, scope: !2961, inlinedAt: !3017)
!3063 = !DILocation(line: 1145, column: 18, scope: !2961, inlinedAt: !3017)
!3064 = !DILocation(line: 1145, column: 15, scope: !2961, inlinedAt: !3017)
!3065 = !DILocation(line: 1829, column: 13, scope: !3018)
!3066 = !DILocation(line: 1829, column: 23, scope: !3018)
!3067 = !DILocation(line: 1827, column: 39, scope: !3011)
!3068 = distinct !{!3068, !3013, !3069, !1639}
!3069 = !DILocation(line: 1830, column: 9, scope: !3012)
!3070 = !DILocation(line: 1833, scope: !3015)
!3071 = !DILocation(line: 1833, column: 36, scope: !3072)
!3072 = distinct !DILexicalBlock(scope: !3015, file: !2, line: 1833, column: 9)
!3073 = !DILocation(line: 1835, column: 53, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !3072, file: !2, line: 1834, column: 9)
!3075 = !DILocation(line: 1835, column: 48, scope: !3074)
!3076 = !DILocation(line: 1835, column: 63, scope: !3074)
!3077 = !DILocalVariable(name: "h", arg: 1, scope: !3078, file: !2, line: 1151, type: !380)
!3078 = distinct !DISubprogram(name: "get_diff_limited_q", scope: !2, file: !2, line: 1151, type: !3079, scopeLine: 1152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !3081)
!3079 = !DISubroutineType(types: !3080)
!3080 = !{!302, !380, !285, !302}
!3081 = !{!3077, !3082, !3083, !3084, !3085, !3086, !3088, !3089, !3092, !3093, !3094, !3097, !3098, !3099}
!3082 = !DILocalVariable(name: "rce", arg: 2, scope: !3078, file: !2, line: 1151, type: !285)
!3083 = !DILocalVariable(name: "q", arg: 3, scope: !3078, file: !2, line: 1151, type: !302)
!3084 = !DILocalVariable(name: "rcc", scope: !3078, file: !2, line: 1153, type: !1103)
!3085 = !DILocalVariable(name: "pict_type", scope: !3078, file: !2, line: 1154, type: !2702)
!3086 = !DILocalVariable(name: "last_p_q", scope: !3078, file: !2, line: 1157, type: !3087)
!3087 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !302)
!3088 = !DILocalVariable(name: "last_non_b_q", scope: !3078, file: !2, line: 1158, type: !3087)
!3089 = !DILocalVariable(name: "iq", scope: !3090, file: !2, line: 1161, type: !302)
!3090 = distinct !DILexicalBlock(scope: !3091, file: !2, line: 1160, column: 5)
!3091 = distinct !DILexicalBlock(scope: !3078, file: !2, line: 1159, column: 9)
!3092 = !DILocalVariable(name: "pq", scope: !3090, file: !2, line: 1162, type: !302)
!3093 = !DILocalVariable(name: "ip_factor", scope: !3090, file: !2, line: 1163, type: !302)
!3094 = !DILocalVariable(name: "last_q", scope: !3095, file: !2, line: 1192, type: !302)
!3095 = distinct !DILexicalBlock(scope: !3096, file: !2, line: 1191, column: 5)
!3096 = distinct !DILexicalBlock(scope: !3078, file: !2, line: 1189, column: 8)
!3097 = !DILocalVariable(name: "max_qscale", scope: !3095, file: !2, line: 1193, type: !302)
!3098 = !DILocalVariable(name: "min_qscale", scope: !3095, file: !2, line: 1194, type: !302)
!3099 = !DILocalVariable(name: "mask", scope: !3100, file: !2, line: 1211, type: !284)
!3100 = distinct !DILexicalBlock(scope: !3101, file: !2, line: 1210, column: 5)
!3101 = distinct !DILexicalBlock(scope: !3078, file: !2, line: 1209, column: 8)
!3102 = !DILocation(line: 0, scope: !3078, inlinedAt: !3103)
!3103 = distinct !DILocation(line: 1835, column: 25, scope: !3074)
!3104 = !DILocation(line: 1153, column: 34, scope: !3078, inlinedAt: !3103)
!3105 = !DILocation(line: 1154, column: 32, scope: !3078, inlinedAt: !3103)
!3106 = !DILocation(line: 1157, column: 37, scope: !3078, inlinedAt: !3103)
!3107 = !DILocation(line: 1157, column: 32, scope: !3078, inlinedAt: !3103)
!3108 = !DILocation(line: 1158, column: 58, scope: !3078, inlinedAt: !3103)
!3109 = !DILocation(line: 1158, column: 32, scope: !3078, inlinedAt: !3103)
!3110 = !DILocation(line: 1159, column: 19, scope: !3091, inlinedAt: !3103)
!3111 = !DILocation(line: 1159, column: 9, scope: !3078, inlinedAt: !3103)
!3112 = !DILocation(line: 0, scope: !3090, inlinedAt: !3103)
!3113 = !DILocation(line: 1162, column: 37, scope: !3090, inlinedAt: !3103)
!3114 = !DILocation(line: 1162, column: 55, scope: !3090, inlinedAt: !3103)
!3115 = !DILocation(line: 0, scope: !2045, inlinedAt: !3116)
!3116 = distinct !DILocation(line: 1162, column: 21, scope: !3090, inlinedAt: !3103)
!3117 = !DILocation(line: 150, column: 42, scope: !2045, inlinedAt: !3116)
!3118 = !DILocation(line: 150, column: 19, scope: !2045, inlinedAt: !3116)
!3119 = !DILocation(line: 150, column: 17, scope: !2045, inlinedAt: !3116)
!3120 = !DILocation(line: 1163, column: 46, scope: !3090, inlinedAt: !3103)
!3121 = !{!1563, !1571, i64 516}
!3122 = !DILocation(line: 1163, column: 28, scope: !3090, inlinedAt: !3103)
!3123 = !DILocation(line: 1165, column: 31, scope: !3124, inlinedAt: !3103)
!3124 = distinct !DILexicalBlock(scope: !3090, file: !2, line: 1165, column: 13)
!3125 = !DILocation(line: 1165, column: 13, scope: !3090, inlinedAt: !3103)
!3126 = !DILocation(line: 1167, column: 42, scope: !3127, inlinedAt: !3103)
!3127 = distinct !DILexicalBlock(scope: !3124, file: !2, line: 1167, column: 18)
!3128 = !DILocation(line: 1167, column: 18, scope: !3124, inlinedAt: !3103)
!3129 = !DILocation(line: 1168, column: 20, scope: !3127, inlinedAt: !3103)
!3130 = !DILocation(line: 1168, column: 13, scope: !3127, inlinedAt: !3103)
!3131 = !DILocation(line: 1169, column: 36, scope: !3132, inlinedAt: !3103)
!3132 = distinct !DILexicalBlock(scope: !3127, file: !2, line: 1169, column: 18)
!3133 = !DILocation(line: 1169, column: 18, scope: !3127, inlinedAt: !3103)
!3134 = !DILocation(line: 1170, column: 20, scope: !3132, inlinedAt: !3103)
!3135 = !DILocation(line: 1170, column: 13, scope: !3132, inlinedAt: !3103)
!3136 = !DILocation(line: 1172, column: 35, scope: !3132, inlinedAt: !3103)
!3137 = !DILocation(line: 1172, column: 40, scope: !3132, inlinedAt: !3103)
!3138 = !DILocation(line: 1172, column: 57, scope: !3132, inlinedAt: !3103)
!3139 = !DILocation(line: 1172, column: 78, scope: !3132, inlinedAt: !3103)
!3140 = !DILocation(line: 1172, column: 52, scope: !3132, inlinedAt: !3103)
!3141 = !DILocation(line: 1174, column: 14, scope: !3091, inlinedAt: !3103)
!3142 = !DILocation(line: 1176, column: 25, scope: !3143, inlinedAt: !3103)
!3143 = distinct !DILexicalBlock(scope: !3144, file: !2, line: 1176, column: 13)
!3144 = distinct !DILexicalBlock(scope: !3145, file: !2, line: 1175, column: 5)
!3145 = distinct !DILexicalBlock(scope: !3091, file: !2, line: 1174, column: 14)
!3146 = !{!1563, !1571, i64 520}
!3147 = !DILocation(line: 1176, column: 37, scope: !3143, inlinedAt: !3103)
!3148 = !DILocation(line: 1176, column: 13, scope: !3144, inlinedAt: !3103)
!3149 = !DILocation(line: 1178, column: 19, scope: !3150, inlinedAt: !3103)
!3150 = distinct !DILexicalBlock(scope: !3144, file: !2, line: 1178, column: 13)
!3151 = !DILocation(line: 1178, column: 14, scope: !3150, inlinedAt: !3103)
!3152 = !DILocation(line: 1178, column: 13, scope: !3144, inlinedAt: !3103)
!3153 = !DILocation(line: 1179, column: 18, scope: !3150, inlinedAt: !3103)
!3154 = !DILocation(line: 1179, column: 15, scope: !3150, inlinedAt: !3103)
!3155 = !DILocation(line: 1179, column: 13, scope: !3150, inlinedAt: !3103)
!3156 = !DILocation(line: 1182, column: 43, scope: !3157, inlinedAt: !3103)
!3157 = distinct !DILexicalBlock(scope: !3145, file: !2, line: 1181, column: 14)
!3158 = !DILocation(line: 1183, column: 14, scope: !3157, inlinedAt: !3103)
!3159 = !DILocation(line: 1183, column: 22, scope: !3157, inlinedAt: !3103)
!3160 = !DILocation(line: 1183, column: 31, scope: !3157, inlinedAt: !3103)
!3161 = !DILocation(line: 1181, column: 14, scope: !3145, inlinedAt: !3103)
!3162 = !DILocation(line: 1186, column: 5, scope: !3163, inlinedAt: !3103)
!3163 = distinct !DILexicalBlock(scope: !3157, file: !2, line: 1184, column: 5)
!3164 = !DILocation(line: 1189, column: 33, scope: !3096, inlinedAt: !3103)
!3165 = !DILocation(line: 1190, column: 8, scope: !3096, inlinedAt: !3103)
!3166 = !DILocation(line: 1200, column: 5, scope: !3078, inlinedAt: !3103)
!3167 = !DILocation(line: 1190, column: 36, scope: !3096, inlinedAt: !3103)
!3168 = !DILocation(line: 1190, column: 44, scope: !3096, inlinedAt: !3103)
!3169 = !{!1702, !1585, i64 328}
!3170 = !DILocation(line: 1190, column: 62, scope: !3096, inlinedAt: !3103)
!3171 = !DILocation(line: 1189, column: 8, scope: !3078, inlinedAt: !3103)
!3172 = !DILocation(line: 1200, column: 37, scope: !3078, inlinedAt: !3103)
!3173 = !DILocation(line: 1202, column: 35, scope: !3174, inlinedAt: !3103)
!3174 = distinct !DILexicalBlock(scope: !3078, file: !2, line: 1201, column: 8)
!3175 = !DILocation(line: 1203, column: 8, scope: !3078, inlinedAt: !3103)
!3176 = !DILocation(line: 1192, column: 25, scope: !3095, inlinedAt: !3103)
!3177 = !DILocation(line: 0, scope: !3095, inlinedAt: !3103)
!3178 = !DILocation(line: 1193, column: 43, scope: !3095, inlinedAt: !3103)
!3179 = !DILocation(line: 1193, column: 36, scope: !3095, inlinedAt: !3103)
!3180 = !DILocation(line: 1194, column: 36, scope: !3095, inlinedAt: !3103)
!3181 = !DILocation(line: 1196, column: 19, scope: !3182, inlinedAt: !3103)
!3182 = distinct !DILexicalBlock(scope: !3095, file: !2, line: 1196, column: 17)
!3183 = !DILocation(line: 1196, column: 17, scope: !3095, inlinedAt: !3103)
!3184 = !DILocation(line: 1197, column: 19, scope: !3185, inlinedAt: !3103)
!3185 = distinct !DILexicalBlock(scope: !3182, file: !2, line: 1197, column: 17)
!3186 = !DILocation(line: 1197, column: 17, scope: !3182, inlinedAt: !3103)
!3187 = !DILocation(line: 1197, column: 33, scope: !3185, inlinedAt: !3103)
!3188 = !DILocation(line: 1201, column: 17, scope: !3174, inlinedAt: !3103)
!3189 = !DILocation(line: 1201, column: 8, scope: !3078, inlinedAt: !3103)
!3190 = !DILocation(line: 1205, column: 39, scope: !3191, inlinedAt: !3103)
!3191 = distinct !DILexicalBlock(scope: !3192, file: !2, line: 1204, column: 5)
!3192 = distinct !DILexicalBlock(scope: !3078, file: !2, line: 1203, column: 8)
!3193 = !DILocation(line: 1205, column: 14, scope: !3191, inlinedAt: !3103)
!3194 = !DILocation(line: 1205, column: 32, scope: !3191, inlinedAt: !3103)
!3195 = !DILocation(line: 1207, column: 14, scope: !3191, inlinedAt: !3103)
!3196 = !DILocation(line: 1207, column: 25, scope: !3191, inlinedAt: !3103)
!3197 = !DILocation(line: 1208, column: 5, scope: !3191, inlinedAt: !3103)
!3198 = !DILocation(line: 1209, column: 17, scope: !3101, inlinedAt: !3103)
!3199 = !DILocation(line: 1209, column: 8, scope: !3078, inlinedAt: !3103)
!3200 = !DILocation(line: 1211, column: 43, scope: !3100, inlinedAt: !3103)
!3201 = !DILocation(line: 1211, column: 31, scope: !3100, inlinedAt: !3103)
!3202 = !DILocation(line: 1211, column: 58, scope: !3100, inlinedAt: !3103)
!3203 = !DILocation(line: 1211, column: 53, scope: !3100, inlinedAt: !3103)
!3204 = !DILocation(line: 1211, column: 51, scope: !3100, inlinedAt: !3103)
!3205 = !DILocation(line: 1211, column: 26, scope: !3100, inlinedAt: !3103)
!3206 = !DILocation(line: 1211, column: 24, scope: !3100, inlinedAt: !3103)
!3207 = !DILocation(line: 1211, column: 22, scope: !3100, inlinedAt: !3103)
!3208 = !DILocation(line: 0, scope: !3100, inlinedAt: !3103)
!3209 = !DILocation(line: 1212, column: 29, scope: !3100, inlinedAt: !3103)
!3210 = !DILocalVariable(name: "qscale", arg: 1, scope: !3211, file: !2, line: 152, type: !302)
!3211 = distinct !DISubprogram(name: "qscale2qp", scope: !2, file: !2, line: 152, type: !2046, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !3212)
!3212 = !{!3210}
!3213 = !DILocation(line: 0, scope: !3211, inlinedAt: !3214)
!3214 = distinct !DILocation(line: 1212, column: 37, scope: !3100, inlinedAt: !3103)
!3215 = !DILocation(line: 154, column: 35, scope: !3211, inlinedAt: !3214)
!3216 = !DILocation(line: 154, column: 25, scope: !3211, inlinedAt: !3214)
!3217 = !DILocation(line: 154, column: 42, scope: !3211, inlinedAt: !3214)
!3218 = !DILocation(line: 154, column: 17, scope: !3211, inlinedAt: !3214)
!3219 = !DILocation(line: 1212, column: 57, scope: !3100, inlinedAt: !3103)
!3220 = !DILocation(line: 1213, column: 39, scope: !3100, inlinedAt: !3103)
!3221 = !DILocation(line: 1212, column: 50, scope: !3100, inlinedAt: !3103)
!3222 = !DILocation(line: 1213, column: 34, scope: !3100, inlinedAt: !3103)
!3223 = !DILocation(line: 1212, column: 34, scope: !3100, inlinedAt: !3103)
!3224 = !DILocation(line: 1212, column: 27, scope: !3100, inlinedAt: !3103)
!3225 = !DILocation(line: 1214, column: 5, scope: !3100, inlinedAt: !3103)
!3226 = !DILocation(line: 1835, column: 23, scope: !3074)
!3227 = !DILocation(line: 1836, column: 13, scope: !3228)
!3228 = distinct !DILexicalBlock(scope: !3229, file: !2, line: 1836, column: 13)
!3229 = distinct !DILexicalBlock(scope: !3074, file: !2, line: 1836, column: 13)
!3230 = !DILocation(line: 1836, column: 13, scope: !3229)
!3231 = distinct !{!3231, !3014, !3232, !1639}
!3232 = !DILocation(line: 1837, column: 9, scope: !3015)
!3233 = !DILocation(line: 1840, column: 12, scope: !2735)
!3234 = !DILocation(line: 1843, column: 23, scope: !2731)
!3235 = !DILocation(line: 1843, column: 13, scope: !2732)
!3236 = !DILocation(line: 1853, column: 36, scope: !2742)
!3237 = !DILocation(line: 1845, column: 45, scope: !2730)
!3238 = !DILocation(line: 0, scope: !2730)
!3239 = !DILocation(line: 1849, column: 17, scope: !2744)
!3240 = !DILocation(line: 1851, column: 36, scope: !2742)
!3241 = !DILocation(line: 0, scope: !2742)
!3242 = !DILocation(line: 1854, column: 30, scope: !3243)
!3243 = distinct !DILexicalBlock(scope: !2742, file: !2, line: 1854, column: 24)
!3244 = !DILocation(line: 1854, column: 34, scope: !3243)
!3245 = !DILocation(line: 1856, column: 29, scope: !3246)
!3246 = distinct !DILexicalBlock(scope: !2742, file: !2, line: 1856, column: 24)
!3247 = !DILocation(line: 1856, column: 42, scope: !3246)
!3248 = !DILocation(line: 1856, column: 60, scope: !3246)
!3249 = !DILocation(line: 1856, column: 39, scope: !3246)
!3250 = !DILocation(line: 1856, column: 24, scope: !2742)
!3251 = !DILocation(line: 1858, column: 26, scope: !2742)
!3252 = !DILocation(line: 1858, column: 23, scope: !2742)
!3253 = !DILocation(line: 1859, column: 25, scope: !2742)
!3254 = !DILocation(line: 1860, column: 17, scope: !2743)
!3255 = !DILocation(line: 1849, column: 42, scope: !2743)
!3256 = !DILocation(line: 1849, column: 27, scope: !2743)
!3257 = distinct !{!3257, !3239, !3258, !1639}
!3258 = !DILocation(line: 1860, column: 17, scope: !2744)
!3259 = !DILocation(line: 1861, column: 38, scope: !2730)
!3260 = !DILocation(line: 1861, column: 17, scope: !2730)
!3261 = !DILocation(line: 1861, column: 35, scope: !2730)
!3262 = !DILocation(line: 1843, column: 43, scope: !2731)
!3263 = distinct !{!3263, !3235, !3264, !1639}
!3264 = !DILocation(line: 1862, column: 13, scope: !2732)
!3265 = !DILocation(line: 1852, column: 37, scope: !2742)
!3266 = !DILocation(line: 1852, column: 32, scope: !2742)
!3267 = !DILocation(line: 1853, column: 57, scope: !2742)
!3268 = !DILocation(line: 1853, column: 59, scope: !2742)
!3269 = !DILocation(line: 1853, column: 53, scope: !2742)
!3270 = !DILocation(line: 1858, column: 40, scope: !2742)
!3271 = !DILocation(line: 1866, column: 19, scope: !2749)
!3272 = !DILocation(line: 1866, column: 9, scope: !2750)
!3273 = !DILocation(line: 1868, column: 41, scope: !2748)
!3274 = !DILocation(line: 0, scope: !2748)
!3275 = !DILocation(line: 1869, column: 51, scope: !2748)
!3276 = !DILocation(line: 1869, column: 62, scope: !2748)
!3277 = !DILocation(line: 1869, column: 31, scope: !2748)
!3278 = !DILocation(line: 1869, column: 18, scope: !2748)
!3279 = !DILocation(line: 1869, column: 29, scope: !2748)
!3280 = !DILocation(line: 1870, column: 13, scope: !3281)
!3281 = distinct !DILexicalBlock(scope: !3282, file: !2, line: 1870, column: 13)
!3282 = distinct !DILexicalBlock(scope: !2748, file: !2, line: 1870, column: 13)
!3283 = !DILocation(line: 1870, column: 13, scope: !3282)
!3284 = !DILocation(line: 1871, column: 47, scope: !2748)
!3285 = !DILocation(line: 0, scope: !2815, inlinedAt: !3286)
!3286 = distinct !DILocation(line: 1871, column: 30, scope: !2748)
!3287 = !DILocation(line: 163, column: 14, scope: !2980, inlinedAt: !3286)
!3288 = !DILocation(line: 163, column: 8, scope: !2815, inlinedAt: !3286)
!3289 = !DILocation(line: 165, column: 18, scope: !2815, inlinedAt: !3286)
!3290 = !DILocation(line: 165, column: 45, scope: !2815, inlinedAt: !3286)
!3291 = !DILocation(line: 166, column: 19, scope: !2815, inlinedAt: !3286)
!3292 = !DILocation(line: 166, column: 34, scope: !2815, inlinedAt: !3286)
!3293 = !DILocation(line: 166, column: 14, scope: !2815, inlinedAt: !3286)
!3294 = !DILocation(line: 165, column: 52, scope: !2815, inlinedAt: !3286)
!3295 = !DILocation(line: 165, column: 35, scope: !2815, inlinedAt: !3286)
!3296 = !DILocation(line: 166, column: 61, scope: !2815, inlinedAt: !3286)
!3297 = !DILocation(line: 166, column: 59, scope: !2815, inlinedAt: !3286)
!3298 = !DILocation(line: 166, column: 29, scope: !2815, inlinedAt: !3286)
!3299 = !DILocation(line: 166, column: 27, scope: !2815, inlinedAt: !3286)
!3300 = !DILocation(line: 167, column: 14, scope: !2815, inlinedAt: !3286)
!3301 = !DILocation(line: 165, column: 27, scope: !2815, inlinedAt: !3286)
!3302 = !DILocation(line: 166, column: 12, scope: !2815, inlinedAt: !3286)
!3303 = !DILocation(line: 165, column: 33, scope: !2815, inlinedAt: !3286)
!3304 = !DILocation(line: 167, column: 12, scope: !2815, inlinedAt: !3286)
!3305 = !DILocation(line: 1871, column: 27, scope: !2748)
!3306 = !DILocation(line: 1866, column: 39, scope: !2749)
!3307 = distinct !{!3307, !3272, !3308, !1639}
!3308 = !DILocation(line: 1872, column: 9, scope: !2750)
!3309 = !DILocation(line: 0, scope: !2735)
!3310 = !DILocation(line: 1874, column: 26, scope: !3311)
!3311 = distinct !DILexicalBlock(scope: !2735, file: !2, line: 1874, column: 12)
!3312 = !DILocation(line: 1874, column: 12, scope: !2735)
!3313 = !DILocation(line: 1817, column: 63, scope: !2736)
!3314 = distinct !{!3314, !3006, !3315, !1639}
!3315 = !DILocation(line: 1875, column: 5, scope: !2737)
!3316 = !DILocation(line: 1877, column: 5, scope: !2690)
!3317 = !DILocation(line: 1878, column: 8, scope: !2690)
!3318 = !DILocation(line: 1879, column: 9, scope: !3319)
!3319 = distinct !DILexicalBlock(scope: !2690, file: !2, line: 1878, column: 8)
!3320 = !DILocation(line: 1881, column: 13, scope: !3321)
!3321 = distinct !DILexicalBlock(scope: !2690, file: !2, line: 1881, column: 8)
!3322 = !DILocation(line: 1881, column: 8, scope: !3321)
!3323 = !DILocation(line: 1881, column: 8, scope: !2690)
!3324 = !DILocalVariable(name: "h", arg: 1, scope: !3325, file: !2, line: 1672, type: !380)
!3325 = distinct !DISubprogram(name: "vbv_pass2", scope: !2, file: !2, line: 1672, type: !1690, scopeLine: 1673, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !3326)
!3326 = !{!3324, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340}
!3327 = !DILocalVariable(name: "rcc", scope: !3325, file: !2, line: 1679, type: !1103)
!3328 = !DILocalVariable(name: "fills", scope: !3325, file: !2, line: 1680, type: !2705)
!3329 = !DILocalVariable(name: "all_available_bits", scope: !3325, file: !2, line: 1681, type: !302)
!3330 = !DILocalVariable(name: "expected_bits", scope: !3325, file: !2, line: 1682, type: !302)
!3331 = !DILocalVariable(name: "adjustment", scope: !3325, file: !2, line: 1683, type: !302)
!3332 = !DILocalVariable(name: "prev_bits", scope: !3325, file: !2, line: 1684, type: !302)
!3333 = !DILocalVariable(name: "i", scope: !3325, file: !2, line: 1685, type: !283)
!3334 = !DILocalVariable(name: "t0", scope: !3325, file: !2, line: 1685, type: !283)
!3335 = !DILocalVariable(name: "t1", scope: !3325, file: !2, line: 1685, type: !283)
!3336 = !DILocalVariable(name: "qscale_min", scope: !3325, file: !2, line: 1686, type: !302)
!3337 = !DILocalVariable(name: "qscale_max", scope: !3325, file: !2, line: 1687, type: !302)
!3338 = !DILocalVariable(name: "iterations", scope: !3325, file: !2, line: 1688, type: !283)
!3339 = !DILocalVariable(name: "adj_min", scope: !3325, file: !2, line: 1689, type: !283)
!3340 = !DILocalVariable(name: "adj_max", scope: !3325, file: !2, line: 1689, type: !283)
!3341 = !DILocation(line: 0, scope: !3325, inlinedAt: !3342)
!3342 = distinct !DILocation(line: 1882, column: 9, scope: !3321)
!3343 = !DILocation(line: 1679, column: 34, scope: !3325, inlinedAt: !3342)
!3344 = !DILocation(line: 1680, column: 39, scope: !3325, inlinedAt: !3342)
!3345 = !DILocation(line: 1680, column: 53, scope: !3325, inlinedAt: !3342)
!3346 = !DILocation(line: 1680, column: 21, scope: !3325, inlinedAt: !3342)
!3347 = !DILocation(line: 1681, column: 45, scope: !3325, inlinedAt: !3342)
!3348 = !DILocation(line: 1681, column: 33, scope: !3325, inlinedAt: !3342)
!3349 = !DILocation(line: 1681, column: 55, scope: !3325, inlinedAt: !3342)
!3350 = !DILocation(line: 1681, column: 70, scope: !3325, inlinedAt: !3342)
!3351 = !DILocation(line: 1681, column: 65, scope: !3325, inlinedAt: !3342)
!3352 = !DILocation(line: 1681, column: 63, scope: !3325, inlinedAt: !3342)
!3353 = !DILocation(line: 1681, column: 89, scope: !3325, inlinedAt: !3342)
!3354 = !DILocation(line: 1681, column: 82, scope: !3325, inlinedAt: !3342)
!3355 = !DILocation(line: 1686, column: 47, scope: !3325, inlinedAt: !3342)
!3356 = !DILocation(line: 1686, column: 35, scope: !3325, inlinedAt: !3342)
!3357 = !DILocation(line: 0, scope: !2045, inlinedAt: !3358)
!3358 = distinct !DILocation(line: 1686, column: 25, scope: !3325, inlinedAt: !3342)
!3359 = !DILocation(line: 150, column: 42, scope: !2045, inlinedAt: !3358)
!3360 = !DILocation(line: 150, column: 19, scope: !2045, inlinedAt: !3358)
!3361 = !DILocation(line: 150, column: 17, scope: !2045, inlinedAt: !3358)
!3362 = !DILocation(line: 1687, column: 47, scope: !3325, inlinedAt: !3342)
!3363 = !DILocation(line: 1687, column: 35, scope: !3325, inlinedAt: !3342)
!3364 = !DILocation(line: 0, scope: !2045, inlinedAt: !3365)
!3365 = distinct !DILocation(line: 1687, column: 25, scope: !3325, inlinedAt: !3342)
!3366 = !DILocation(line: 150, column: 42, scope: !2045, inlinedAt: !3365)
!3367 = !DILocation(line: 150, column: 19, scope: !2045, inlinedAt: !3365)
!3368 = !DILocation(line: 150, column: 17, scope: !2045, inlinedAt: !3365)
!3369 = !DILocation(line: 1691, column: 10, scope: !3325, inlinedAt: !3342)
!3370 = !DILocation(line: 1694, column: 5, scope: !3325, inlinedAt: !3342)
!3371 = !DILocation(line: 1699, column: 26, scope: !3372, inlinedAt: !3342)
!3372 = distinct !DILexicalBlock(scope: !3373, file: !2, line: 1699, column: 12)
!3373 = distinct !DILexicalBlock(scope: !3325, file: !2, line: 1695, column: 5)
!3374 = !DILocation(line: 1699, column: 12, scope: !3373, inlinedAt: !3342)
!3375 = !DILocation(line: 1701, column: 26, scope: !3376, inlinedAt: !3342)
!3376 = distinct !DILexicalBlock(scope: !3372, file: !2, line: 1700, column: 9)
!3377 = !DILocation(line: 1702, column: 30, scope: !3376, inlinedAt: !3342)
!3378 = !DILocation(line: 1702, column: 42, scope: !3376, inlinedAt: !3342)
!3379 = !DILocation(line: 1702, column: 23, scope: !3376, inlinedAt: !3342)
!3380 = !DILocation(line: 1706, column: 27, scope: !3376, inlinedAt: !3342)
!3381 = !DILocalVariable(name: "h", arg: 1, scope: !3382, file: !2, line: 1608, type: !380)
!3382 = distinct !DISubprogram(name: "find_underflow", scope: !2, file: !2, line: 1608, type: !3383, scopeLine: 1609, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !3385)
!3383 = !DISubroutineType(types: !3384)
!3384 = !{!283, !380, !2705, !832, !832, !283}
!3385 = !{!3381, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397}
!3386 = !DILocalVariable(name: "fills", arg: 2, scope: !3382, file: !2, line: 1608, type: !2705)
!3387 = !DILocalVariable(name: "t0", arg: 3, scope: !3382, file: !2, line: 1608, type: !832)
!3388 = !DILocalVariable(name: "t1", arg: 4, scope: !3382, file: !2, line: 1608, type: !832)
!3389 = !DILocalVariable(name: "over", arg: 5, scope: !3382, file: !2, line: 1608, type: !283)
!3390 = !DILocalVariable(name: "rcc", scope: !3382, file: !2, line: 1613, type: !1103)
!3391 = !DILocalVariable(name: "buffer_min", scope: !3382, file: !2, line: 1614, type: !3087)
!3392 = !DILocalVariable(name: "buffer_max", scope: !3382, file: !2, line: 1615, type: !3087)
!3393 = !DILocalVariable(name: "fill", scope: !3382, file: !2, line: 1616, type: !302)
!3394 = !DILocalVariable(name: "parity", scope: !3382, file: !2, line: 1617, type: !302)
!3395 = !DILocalVariable(name: "i", scope: !3382, file: !2, line: 1618, type: !283)
!3396 = !DILocalVariable(name: "start", scope: !3382, file: !2, line: 1618, type: !283)
!3397 = !DILocalVariable(name: "end", scope: !3382, file: !2, line: 1618, type: !283)
!3398 = !DILocation(line: 0, scope: !3382, inlinedAt: !3399)
!3399 = distinct !DILocation(line: 1706, column: 30, scope: !3376, inlinedAt: !3342)
!3400 = !DILocation(line: 1614, column: 55, scope: !3382, inlinedAt: !3399)
!3401 = !DILocation(line: 1614, column: 48, scope: !3382, inlinedAt: !3399)
!3402 = !DILocation(line: 1615, column: 34, scope: !3382, inlinedAt: !3399)
!3403 = !DILocation(line: 1619, column: 20, scope: !3404, inlinedAt: !3399)
!3404 = distinct !DILexicalBlock(scope: !3405, file: !2, line: 1619, column: 5)
!3405 = distinct !DILexicalBlock(scope: !3382, file: !2, line: 1619, column: 5)
!3406 = !DILocation(line: 1619, column: 5, scope: !3405, inlinedAt: !3399)
!3407 = !DILocation(line: 1616, column: 28, scope: !3382, inlinedAt: !3399)
!3408 = !DILocation(line: 1616, column: 19, scope: !3382, inlinedAt: !3399)
!3409 = !DILocation(line: 1621, column: 23, scope: !3410, inlinedAt: !3399)
!3410 = distinct !DILexicalBlock(scope: !3404, file: !2, line: 1620, column: 5)
!3411 = !DILocation(line: 1621, column: 79, scope: !3410, inlinedAt: !3399)
!3412 = !DILocation(line: 1621, column: 65, scope: !3410, inlinedAt: !3399)
!3413 = !DILocation(line: 0, scope: !2815, inlinedAt: !3414)
!3414 = distinct !DILocation(line: 1621, column: 37, scope: !3410, inlinedAt: !3399)
!3415 = !DILocation(line: 163, column: 14, scope: !2980, inlinedAt: !3414)
!3416 = !DILocation(line: 163, column: 8, scope: !2815, inlinedAt: !3414)
!3417 = !DILocation(line: 165, column: 45, scope: !2815, inlinedAt: !3414)
!3418 = !DILocation(line: 166, column: 19, scope: !2815, inlinedAt: !3414)
!3419 = !DILocation(line: 166, column: 34, scope: !2815, inlinedAt: !3414)
!3420 = !DILocation(line: 165, column: 52, scope: !2815, inlinedAt: !3414)
!3421 = !DILocation(line: 165, column: 35, scope: !2815, inlinedAt: !3414)
!3422 = !DILocation(line: 166, column: 61, scope: !2815, inlinedAt: !3414)
!3423 = !DILocation(line: 166, column: 59, scope: !2815, inlinedAt: !3414)
!3424 = !DILocation(line: 166, column: 29, scope: !2815, inlinedAt: !3414)
!3425 = !DILocation(line: 167, column: 19, scope: !2815, inlinedAt: !3414)
!3426 = !DILocation(line: 167, column: 14, scope: !2815, inlinedAt: !3414)
!3427 = !DILocation(line: 166, column: 14, scope: !2815, inlinedAt: !3414)
!3428 = !DILocation(line: 1621, column: 14, scope: !3410, inlinedAt: !3399)
!3429 = !DILocation(line: 1622, column: 42, scope: !3410, inlinedAt: !3399)
!3430 = !DILocation(line: 0, scope: !1921, inlinedAt: !3431)
!3431 = distinct !DILocation(line: 1622, column: 16, scope: !3410, inlinedAt: !3399)
!3432 = !DILocation(line: 115, column: 17, scope: !1921, inlinedAt: !3431)
!3433 = !DILocation(line: 115, column: 14, scope: !1921, inlinedAt: !3431)
!3434 = !DILocation(line: 1623, column: 9, scope: !3410, inlinedAt: !3399)
!3435 = !DILocation(line: 1623, column: 18, scope: !3410, inlinedAt: !3399)
!3436 = !DILocation(line: 1624, column: 17, scope: !3437, inlinedAt: !3399)
!3437 = distinct !DILexicalBlock(scope: !3410, file: !2, line: 1624, column: 12)
!3438 = !DILocation(line: 1624, column: 31, scope: !3437, inlinedAt: !3399)
!3439 = !DILocation(line: 1626, column: 20, scope: !3440, inlinedAt: !3399)
!3440 = distinct !DILexicalBlock(scope: !3441, file: !2, line: 1626, column: 16)
!3441 = distinct !DILexicalBlock(scope: !3437, file: !2, line: 1625, column: 9)
!3442 = !DILocation(line: 1626, column: 16, scope: !3441, inlinedAt: !3399)
!3443 = !DILocation(line: 1630, column: 22, scope: !3444, inlinedAt: !3399)
!3444 = distinct !DILexicalBlock(scope: !3437, file: !2, line: 1630, column: 17)
!3445 = !DILocation(line: 1630, column: 36, scope: !3444, inlinedAt: !3399)
!3446 = !DILocation(line: 1619, column: 41, scope: !3404, inlinedAt: !3399)
!3447 = distinct !{!3447, !3406, !3448, !1639}
!3448 = !DILocation(line: 1632, column: 5, scope: !3405, inlinedAt: !3399)
!3449 = !DILocation(line: 1618, column: 22, scope: !3382, inlinedAt: !3399)
!3450 = !DILocation(line: 1635, column: 17, scope: !3382, inlinedAt: !3399)
!3451 = !DILocation(line: 1635, column: 21, scope: !3382, inlinedAt: !3399)
!3452 = !DILocation(line: 1706, column: 13, scope: !3376, inlinedAt: !3342)
!3453 = !DILocalVariable(name: "h", arg: 1, scope: !3454, file: !2, line: 1638, type: !380)
!3454 = distinct !DISubprogram(name: "fix_underflow", scope: !2, file: !2, line: 1638, type: !3455, scopeLine: 1639, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !3457)
!3455 = !DISubroutineType(types: !3456)
!3456 = !{!283, !380, !283, !283, !302, !302, !302}
!3457 = !{!3453, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467}
!3458 = !DILocalVariable(name: "t0", arg: 2, scope: !3454, file: !2, line: 1638, type: !283)
!3459 = !DILocalVariable(name: "t1", arg: 3, scope: !3454, file: !2, line: 1638, type: !283)
!3460 = !DILocalVariable(name: "adjustment", arg: 4, scope: !3454, file: !2, line: 1638, type: !302)
!3461 = !DILocalVariable(name: "qscale_min", arg: 5, scope: !3454, file: !2, line: 1638, type: !302)
!3462 = !DILocalVariable(name: "qscale_max", arg: 6, scope: !3454, file: !2, line: 1638, type: !302)
!3463 = !DILocalVariable(name: "rcc", scope: !3454, file: !2, line: 1640, type: !1103)
!3464 = !DILocalVariable(name: "qscale_orig", scope: !3454, file: !2, line: 1641, type: !302)
!3465 = !DILocalVariable(name: "qscale_new", scope: !3454, file: !2, line: 1641, type: !302)
!3466 = !DILocalVariable(name: "i", scope: !3454, file: !2, line: 1642, type: !283)
!3467 = !DILocalVariable(name: "adjusted", scope: !3454, file: !2, line: 1643, type: !283)
!3468 = !DILocation(line: 0, scope: !3454, inlinedAt: !3469)
!3469 = distinct !DILocation(line: 1708, column: 27, scope: !3470, inlinedAt: !3342)
!3470 = distinct !DILexicalBlock(scope: !3376, file: !2, line: 1707, column: 13)
!3471 = !DILocation(line: 1644, column: 11, scope: !3472, inlinedAt: !3469)
!3472 = distinct !DILexicalBlock(scope: !3454, file: !2, line: 1644, column: 8)
!3473 = !DILocation(line: 1644, column: 8, scope: !3454, inlinedAt: !3469)
!3474 = !DILocation(line: 1646, column: 19, scope: !3475, inlinedAt: !3469)
!3475 = distinct !DILexicalBlock(scope: !3476, file: !2, line: 1646, column: 5)
!3476 = distinct !DILexicalBlock(scope: !3454, file: !2, line: 1646, column: 5)
!3477 = !DILocation(line: 1646, column: 5, scope: !3476, inlinedAt: !3469)
!3478 = !DILocation(line: 1648, column: 37, scope: !3479, inlinedAt: !3469)
!3479 = distinct !DILexicalBlock(scope: !3475, file: !2, line: 1647, column: 5)
!3480 = !DILocation(line: 1648, column: 23, scope: !3479, inlinedAt: !3469)
!3481 = !DILocation(line: 0, scope: !1921, inlinedAt: !3482)
!3482 = distinct !DILocation(line: 1649, column: 23, scope: !3479, inlinedAt: !3469)
!3483 = !DILocation(line: 115, column: 17, scope: !1921, inlinedAt: !3482)
!3484 = !DILocation(line: 115, column: 14, scope: !1921, inlinedAt: !3482)
!3485 = !DILocation(line: 1650, column: 35, scope: !3479, inlinedAt: !3469)
!3486 = !DILocation(line: 0, scope: !1921, inlinedAt: !3487)
!3487 = distinct !DILocation(line: 1651, column: 23, scope: !3479, inlinedAt: !3469)
!3488 = !DILocation(line: 115, column: 17, scope: !1921, inlinedAt: !3487)
!3489 = !DILocation(line: 115, column: 14, scope: !1921, inlinedAt: !3487)
!3490 = !DILocation(line: 1652, column: 36, scope: !3479, inlinedAt: !3469)
!3491 = !DILocation(line: 1652, column: 34, scope: !3479, inlinedAt: !3469)
!3492 = !DILocation(line: 1653, column: 29, scope: !3479, inlinedAt: !3469)
!3493 = !DILocation(line: 1646, column: 27, scope: !3475, inlinedAt: !3469)
!3494 = distinct !{!3494, !3477, !3495, !1639}
!3495 = !DILocation(line: 1654, column: 5, scope: !3476, inlinedAt: !3469)
!3496 = distinct !{!3496, !3452, !3497, !1639}
!3497 = !DILocation(line: 1710, column: 13, scope: !3376, inlinedAt: !3342)
!3498 = !DILocation(line: 1713, column: 26, scope: !3373, inlinedAt: !3342)
!3499 = !DILocation(line: 1713, column: 38, scope: !3373, inlinedAt: !3342)
!3500 = !DILocation(line: 1713, column: 19, scope: !3373, inlinedAt: !3342)
!3501 = !DILocation(line: 1717, column: 23, scope: !3373, inlinedAt: !3342)
!3502 = !DILocation(line: 0, scope: !3382, inlinedAt: !3503)
!3503 = distinct !DILocation(line: 1717, column: 26, scope: !3373, inlinedAt: !3342)
!3504 = !DILocation(line: 1614, column: 55, scope: !3382, inlinedAt: !3503)
!3505 = !DILocation(line: 1614, column: 48, scope: !3382, inlinedAt: !3503)
!3506 = !DILocation(line: 1615, column: 34, scope: !3382, inlinedAt: !3503)
!3507 = !DILocation(line: 1619, column: 20, scope: !3404, inlinedAt: !3503)
!3508 = !DILocation(line: 1619, column: 5, scope: !3405, inlinedAt: !3503)
!3509 = !DILocation(line: 1616, column: 28, scope: !3382, inlinedAt: !3503)
!3510 = !DILocation(line: 1616, column: 19, scope: !3382, inlinedAt: !3503)
!3511 = !DILocation(line: 1621, column: 23, scope: !3410, inlinedAt: !3503)
!3512 = !DILocation(line: 1621, column: 79, scope: !3410, inlinedAt: !3503)
!3513 = !DILocation(line: 1621, column: 65, scope: !3410, inlinedAt: !3503)
!3514 = !DILocation(line: 0, scope: !2815, inlinedAt: !3515)
!3515 = distinct !DILocation(line: 1621, column: 37, scope: !3410, inlinedAt: !3503)
!3516 = !DILocation(line: 163, column: 14, scope: !2980, inlinedAt: !3515)
!3517 = !DILocation(line: 163, column: 8, scope: !2815, inlinedAt: !3515)
!3518 = !DILocation(line: 165, column: 18, scope: !2815, inlinedAt: !3515)
!3519 = !DILocation(line: 165, column: 45, scope: !2815, inlinedAt: !3515)
!3520 = !DILocation(line: 166, column: 19, scope: !2815, inlinedAt: !3515)
!3521 = !DILocation(line: 166, column: 34, scope: !2815, inlinedAt: !3515)
!3522 = !DILocation(line: 166, column: 14, scope: !2815, inlinedAt: !3515)
!3523 = !DILocation(line: 165, column: 52, scope: !2815, inlinedAt: !3515)
!3524 = !DILocation(line: 165, column: 35, scope: !2815, inlinedAt: !3515)
!3525 = !DILocation(line: 166, column: 61, scope: !2815, inlinedAt: !3515)
!3526 = !DILocation(line: 166, column: 59, scope: !2815, inlinedAt: !3515)
!3527 = !DILocation(line: 166, column: 29, scope: !2815, inlinedAt: !3515)
!3528 = !DILocation(line: 167, column: 14, scope: !2815, inlinedAt: !3515)
!3529 = !DILocation(line: 165, column: 27, scope: !2815, inlinedAt: !3515)
!3530 = !DILocation(line: 1621, column: 35, scope: !3410, inlinedAt: !3503)
!3531 = !DILocation(line: 1621, column: 92, scope: !3410, inlinedAt: !3503)
!3532 = !DILocation(line: 1621, column: 14, scope: !3410, inlinedAt: !3503)
!3533 = !DILocation(line: 1622, column: 42, scope: !3410, inlinedAt: !3503)
!3534 = !DILocation(line: 0, scope: !1921, inlinedAt: !3535)
!3535 = distinct !DILocation(line: 1622, column: 16, scope: !3410, inlinedAt: !3503)
!3536 = !DILocation(line: 115, column: 17, scope: !1921, inlinedAt: !3535)
!3537 = !DILocation(line: 115, column: 14, scope: !1921, inlinedAt: !3535)
!3538 = !DILocation(line: 1623, column: 9, scope: !3410, inlinedAt: !3503)
!3539 = !DILocation(line: 1623, column: 18, scope: !3410, inlinedAt: !3503)
!3540 = !DILocation(line: 1624, column: 17, scope: !3437, inlinedAt: !3503)
!3541 = !DILocation(line: 1624, column: 31, scope: !3437, inlinedAt: !3503)
!3542 = !DILocation(line: 1626, column: 20, scope: !3440, inlinedAt: !3503)
!3543 = !DILocation(line: 1626, column: 16, scope: !3441, inlinedAt: !3503)
!3544 = !DILocation(line: 1630, column: 22, scope: !3444, inlinedAt: !3503)
!3545 = !DILocation(line: 1630, column: 36, scope: !3444, inlinedAt: !3503)
!3546 = !DILocation(line: 1619, column: 41, scope: !3404, inlinedAt: !3503)
!3547 = distinct !{!3547, !3508, !3548, !1639}
!3548 = !DILocation(line: 1632, column: 5, scope: !3405, inlinedAt: !3503)
!3549 = !DILocation(line: 1618, column: 22, scope: !3382, inlinedAt: !3503)
!3550 = !DILocation(line: 1635, column: 17, scope: !3382, inlinedAt: !3503)
!3551 = !DILocation(line: 1635, column: 21, scope: !3382, inlinedAt: !3503)
!3552 = !DILocation(line: 1717, column: 9, scope: !3373, inlinedAt: !3342)
!3553 = !DILocation(line: 0, scope: !3454, inlinedAt: !3554)
!3554 = distinct !DILocation(line: 1718, column: 23, scope: !3373, inlinedAt: !3342)
!3555 = !DILocation(line: 1644, column: 11, scope: !3472, inlinedAt: !3554)
!3556 = !DILocation(line: 1644, column: 8, scope: !3454, inlinedAt: !3554)
!3557 = !DILocation(line: 1646, column: 19, scope: !3475, inlinedAt: !3554)
!3558 = !DILocation(line: 1646, column: 5, scope: !3476, inlinedAt: !3554)
!3559 = !DILocation(line: 1648, column: 37, scope: !3479, inlinedAt: !3554)
!3560 = !DILocation(line: 1648, column: 23, scope: !3479, inlinedAt: !3554)
!3561 = !DILocation(line: 0, scope: !1921, inlinedAt: !3562)
!3562 = distinct !DILocation(line: 1649, column: 23, scope: !3479, inlinedAt: !3554)
!3563 = !DILocation(line: 115, column: 17, scope: !1921, inlinedAt: !3562)
!3564 = !DILocation(line: 115, column: 14, scope: !1921, inlinedAt: !3562)
!3565 = !DILocation(line: 1650, column: 35, scope: !3479, inlinedAt: !3554)
!3566 = !DILocation(line: 0, scope: !1921, inlinedAt: !3567)
!3567 = distinct !DILocation(line: 1651, column: 23, scope: !3479, inlinedAt: !3554)
!3568 = !DILocation(line: 115, column: 17, scope: !1921, inlinedAt: !3567)
!3569 = !DILocation(line: 115, column: 14, scope: !1921, inlinedAt: !3567)
!3570 = !DILocation(line: 1652, column: 36, scope: !3479, inlinedAt: !3554)
!3571 = !DILocation(line: 1652, column: 34, scope: !3479, inlinedAt: !3554)
!3572 = !DILocation(line: 1653, column: 29, scope: !3479, inlinedAt: !3554)
!3573 = !DILocation(line: 1646, column: 27, scope: !3475, inlinedAt: !3554)
!3574 = distinct !{!3574, !3558, !3575, !1639}
!3575 = !DILocation(line: 1654, column: 5, scope: !3476, inlinedAt: !3554)
!3576 = distinct !{!3576, !3552, !3577, !1639}
!3577 = !DILocation(line: 1718, column: 77, scope: !3373, inlinedAt: !3342)
!3578 = !DILocation(line: 1717, column: 15, scope: !3373, inlinedAt: !3342)
!3579 = !DILocalVariable(name: "h", arg: 1, scope: !3580, file: !2, line: 1658, type: !380)
!3580 = distinct !DISubprogram(name: "count_expected_bits", scope: !2, file: !2, line: 1658, type: !3581, scopeLine: 1659, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !3583)
!3581 = !DISubroutineType(types: !3582)
!3582 = !{!302, !380}
!3583 = !{!3579, !3584, !3585, !3586, !3587}
!3584 = !DILocalVariable(name: "rcc", scope: !3580, file: !2, line: 1660, type: !1103)
!3585 = !DILocalVariable(name: "expected_bits", scope: !3580, file: !2, line: 1661, type: !302)
!3586 = !DILocalVariable(name: "i", scope: !3580, file: !2, line: 1662, type: !283)
!3587 = !DILocalVariable(name: "rce", scope: !3588, file: !2, line: 1665, type: !285)
!3588 = distinct !DILexicalBlock(scope: !3589, file: !2, line: 1664, column: 5)
!3589 = distinct !DILexicalBlock(scope: !3590, file: !2, line: 1663, column: 5)
!3590 = distinct !DILexicalBlock(scope: !3580, file: !2, line: 1663, column: 5)
!3591 = !DILocation(line: 0, scope: !3580, inlinedAt: !3592)
!3592 = distinct !DILocation(line: 1720, column: 25, scope: !3373, inlinedAt: !3342)
!3593 = !DILocation(line: 1663, column: 5, scope: !3590, inlinedAt: !3592)
!3594 = !DILocation(line: 0, scope: !3588, inlinedAt: !3592)
!3595 = !DILocation(line: 1666, column: 30, scope: !3588, inlinedAt: !3592)
!3596 = !DILocation(line: 1666, column: 14, scope: !3588, inlinedAt: !3592)
!3597 = !DILocation(line: 1666, column: 28, scope: !3588, inlinedAt: !3592)
!3598 = !{!2507, !1573, i64 24}
!3599 = !DILocation(line: 1667, column: 48, scope: !3588, inlinedAt: !3592)
!3600 = !DILocation(line: 1667, column: 43, scope: !3588, inlinedAt: !3592)
!3601 = !DILocation(line: 0, scope: !2815, inlinedAt: !3602)
!3602 = distinct !DILocation(line: 1667, column: 26, scope: !3588, inlinedAt: !3592)
!3603 = !DILocation(line: 163, column: 14, scope: !2980, inlinedAt: !3602)
!3604 = !DILocation(line: 163, column: 8, scope: !2815, inlinedAt: !3602)
!3605 = !DILocation(line: 165, column: 18, scope: !2815, inlinedAt: !3602)
!3606 = !DILocation(line: 165, column: 45, scope: !2815, inlinedAt: !3602)
!3607 = !DILocation(line: 166, column: 19, scope: !2815, inlinedAt: !3602)
!3608 = !DILocation(line: 166, column: 34, scope: !2815, inlinedAt: !3602)
!3609 = !DILocation(line: 166, column: 14, scope: !2815, inlinedAt: !3602)
!3610 = !DILocation(line: 165, column: 52, scope: !2815, inlinedAt: !3602)
!3611 = !DILocation(line: 165, column: 35, scope: !2815, inlinedAt: !3602)
!3612 = !DILocation(line: 166, column: 61, scope: !2815, inlinedAt: !3602)
!3613 = !DILocation(line: 166, column: 59, scope: !2815, inlinedAt: !3602)
!3614 = !DILocation(line: 166, column: 29, scope: !2815, inlinedAt: !3602)
!3615 = !DILocation(line: 166, column: 27, scope: !2815, inlinedAt: !3602)
!3616 = !DILocation(line: 167, column: 14, scope: !2815, inlinedAt: !3602)
!3617 = !DILocation(line: 165, column: 27, scope: !2815, inlinedAt: !3602)
!3618 = !DILocation(line: 166, column: 12, scope: !2815, inlinedAt: !3602)
!3619 = !DILocation(line: 165, column: 33, scope: !2815, inlinedAt: !3602)
!3620 = !DILocation(line: 167, column: 12, scope: !2815, inlinedAt: !3602)
!3621 = !DILocation(line: 1667, column: 23, scope: !3588, inlinedAt: !3592)
!3622 = !DILocation(line: 1663, column: 39, scope: !3589, inlinedAt: !3592)
!3623 = !DILocation(line: 1663, column: 18, scope: !3589, inlinedAt: !3592)
!3624 = distinct !{!3624, !3593, !3625, !1639}
!3625 = !DILocation(line: 1668, column: 5, scope: !3590, inlinedAt: !3592)
!3626 = !DILocation(line: 1721, column: 28, scope: !3325, inlinedAt: !3342)
!3627 = !DILocation(line: 1721, column: 55, scope: !3325, inlinedAt: !3342)
!3628 = !DILocation(line: 1721, column: 78, scope: !3325, inlinedAt: !3342)
!3629 = !DILocation(line: 1721, column: 59, scope: !3325, inlinedAt: !3342)
!3630 = !DILocation(line: 1721, column: 83, scope: !3325, inlinedAt: !3342)
!3631 = !DILocation(line: 1721, column: 5, scope: !3373, inlinedAt: !3342)
!3632 = distinct !{!3632, !3370, !3633, !1639}
!3633 = !DILocation(line: 1721, column: 106, scope: !3325, inlinedAt: !3342)
!3634 = !DILocation(line: 1723, column: 9, scope: !3325, inlinedAt: !3342)
!3635 = !DILocation(line: 1724, column: 9, scope: !3636, inlinedAt: !3342)
!3636 = distinct !DILexicalBlock(scope: !3325, file: !2, line: 1723, column: 9)
!3637 = !DILocation(line: 1727, column: 18, scope: !3638, inlinedAt: !3342)
!3638 = distinct !DILexicalBlock(scope: !3639, file: !2, line: 1727, column: 5)
!3639 = distinct !DILexicalBlock(scope: !3325, file: !2, line: 1727, column: 5)
!3640 = !DILocation(line: 1727, column: 5, scope: !3639, inlinedAt: !3342)
!3641 = !DILocation(line: 1728, column: 57, scope: !3638, inlinedAt: !3342)
!3642 = !DILocation(line: 1728, column: 55, scope: !3638, inlinedAt: !3342)
!3643 = !DILocation(line: 1728, column: 23, scope: !3638, inlinedAt: !3342)
!3644 = !DILocation(line: 1728, column: 36, scope: !3638, inlinedAt: !3342)
!3645 = !{!2507, !1585, i64 32}
!3646 = !DILocation(line: 1727, column: 39, scope: !3638, inlinedAt: !3342)
!3647 = distinct !{!3647, !3640, !3648, !1639}
!3648 = !DILocation(line: 1728, column: 64, scope: !3639, inlinedAt: !3342)
!3649 = distinct !{!3649, !2784}
!3650 = !DILocation(line: 1730, column: 5, scope: !3325, inlinedAt: !3342)
!3651 = !DILocation(line: 1882, column: 9, scope: !3321)
!3652 = !DILocation(line: 1883, column: 21, scope: !2690)
!3653 = !DILocation(line: 0, scope: !3580, inlinedAt: !3654)
!3654 = distinct !DILocation(line: 1883, column: 21, scope: !2690)
!3655 = !DILocation(line: 1663, column: 18, scope: !3589, inlinedAt: !3654)
!3656 = !DILocation(line: 1663, column: 5, scope: !3590, inlinedAt: !3654)
!3657 = !DILocation(line: 0, scope: !3588, inlinedAt: !3654)
!3658 = !DILocation(line: 1666, column: 30, scope: !3588, inlinedAt: !3654)
!3659 = !DILocation(line: 1666, column: 14, scope: !3588, inlinedAt: !3654)
!3660 = !DILocation(line: 1666, column: 28, scope: !3588, inlinedAt: !3654)
!3661 = !DILocation(line: 1667, column: 48, scope: !3588, inlinedAt: !3654)
!3662 = !DILocation(line: 1667, column: 43, scope: !3588, inlinedAt: !3654)
!3663 = !DILocation(line: 0, scope: !2815, inlinedAt: !3664)
!3664 = distinct !DILocation(line: 1667, column: 26, scope: !3588, inlinedAt: !3654)
!3665 = !DILocation(line: 163, column: 14, scope: !2980, inlinedAt: !3664)
!3666 = !DILocation(line: 163, column: 8, scope: !2815, inlinedAt: !3664)
!3667 = !DILocation(line: 165, column: 18, scope: !2815, inlinedAt: !3664)
!3668 = !DILocation(line: 165, column: 45, scope: !2815, inlinedAt: !3664)
!3669 = !DILocation(line: 166, column: 19, scope: !2815, inlinedAt: !3664)
!3670 = !DILocation(line: 166, column: 34, scope: !2815, inlinedAt: !3664)
!3671 = !DILocation(line: 166, column: 14, scope: !2815, inlinedAt: !3664)
!3672 = !DILocation(line: 165, column: 52, scope: !2815, inlinedAt: !3664)
!3673 = !DILocation(line: 165, column: 35, scope: !2815, inlinedAt: !3664)
!3674 = !DILocation(line: 166, column: 61, scope: !2815, inlinedAt: !3664)
!3675 = !DILocation(line: 166, column: 59, scope: !2815, inlinedAt: !3664)
!3676 = !DILocation(line: 166, column: 29, scope: !2815, inlinedAt: !3664)
!3677 = !DILocation(line: 166, column: 27, scope: !2815, inlinedAt: !3664)
!3678 = !DILocation(line: 167, column: 14, scope: !2815, inlinedAt: !3664)
!3679 = !DILocation(line: 165, column: 27, scope: !2815, inlinedAt: !3664)
!3680 = !DILocation(line: 166, column: 12, scope: !2815, inlinedAt: !3664)
!3681 = !DILocation(line: 165, column: 33, scope: !2815, inlinedAt: !3664)
!3682 = !DILocation(line: 167, column: 12, scope: !2815, inlinedAt: !3664)
!3683 = !DILocation(line: 1667, column: 23, scope: !3588, inlinedAt: !3654)
!3684 = !DILocation(line: 1663, column: 39, scope: !3589, inlinedAt: !3654)
!3685 = distinct !{!3685, !3656, !3686, !1639}
!3686 = !DILocation(line: 1668, column: 5, scope: !3590, inlinedAt: !3654)
!3687 = !DILocation(line: 1885, column: 26, scope: !2753)
!3688 = !DILocation(line: 1885, column: 46, scope: !2753)
!3689 = !DILocation(line: 1885, column: 8, scope: !2753)
!3690 = !DILocation(line: 1885, column: 53, scope: !2753)
!3691 = !DILocation(line: 1885, column: 8, scope: !2690)
!3692 = !DILocation(line: 0, scope: !2752)
!3693 = !DILocation(line: 1888, column: 19, scope: !3694)
!3694 = distinct !DILexicalBlock(scope: !3695, file: !2, line: 1888, column: 9)
!3695 = distinct !DILexicalBlock(scope: !2752, file: !2, line: 1888, column: 9)
!3696 = !DILocation(line: 1888, column: 9, scope: !3695)
!3697 = !DILocation(line: 1888, column: 39, scope: !3694)
!3698 = !DILocation(line: 1889, column: 35, scope: !3694)
!3699 = !DILocation(line: 1889, column: 18, scope: !3694)
!3700 = distinct !{!3700, !3696, !3701, !1639, !3702, !3703}
!3701 = !DILocation(line: 1889, column: 35, scope: !3695)
!3702 = !{!"llvm.loop.isvectorized", i32 1}
!3703 = !{!"llvm.loop.unroll.runtime.disable"}
!3704 = !DILocation(line: 1889, column: 21, scope: !3694)
!3705 = distinct !{!3705, !3696, !3701, !1639, !3703, !3702}
!3706 = !DILocation(line: 154, column: 35, scope: !3211, inlinedAt: !3707)
!3707 = distinct !DILocation(line: 1890, column: 16, scope: !2752)
!3708 = !DILocation(line: 1890, column: 33, scope: !2752)
!3709 = !DILocation(line: 0, scope: !3211, inlinedAt: !3707)
!3710 = !DILocation(line: 154, column: 25, scope: !3211, inlinedAt: !3707)
!3711 = !DILocation(line: 154, column: 42, scope: !3211, inlinedAt: !3707)
!3712 = !DILocation(line: 154, column: 17, scope: !3211, inlinedAt: !3707)
!3713 = !DILocation(line: 1892, column: 28, scope: !3714)
!3714 = distinct !DILexicalBlock(scope: !2752, file: !2, line: 1892, column: 13)
!3715 = !DILocation(line: 1892, column: 50, scope: !3714)
!3716 = !DILocation(line: 1892, column: 60, scope: !3714)
!3717 = !DILocation(line: 1892, column: 55, scope: !3714)
!3718 = !DILocation(line: 1892, column: 13, scope: !2752)
!3719 = !DILocation(line: 1893, column: 13, scope: !3714)
!3720 = !DILocation(line: 1896, column: 51, scope: !2752)
!3721 = !DILocation(line: 1896, column: 46, scope: !2752)
!3722 = !DILocation(line: 1895, column: 37, scope: !2752)
!3723 = !DILocation(line: 1895, column: 18, scope: !2752)
!3724 = !DILocation(line: 1896, column: 39, scope: !2752)
!3725 = !DILocation(line: 1896, column: 32, scope: !2752)
!3726 = !DILocation(line: 1896, column: 63, scope: !2752)
!3727 = !DILocation(line: 1896, column: 43, scope: !2752)
!3728 = !DILocation(line: 1894, column: 9, scope: !2752)
!3729 = !DILocation(line: 1898, column: 26, scope: !3730)
!3730 = distinct !DILexicalBlock(scope: !2752, file: !2, line: 1898, column: 12)
!3731 = !DILocation(line: 1898, column: 47, scope: !3730)
!3732 = !DILocation(line: 1898, column: 69, scope: !3730)
!3733 = !DILocation(line: 1898, column: 78, scope: !3730)
!3734 = !DILocation(line: 1898, column: 57, scope: !3730)
!3735 = !DILocation(line: 1898, column: 55, scope: !3730)
!3736 = !DILocation(line: 1898, column: 12, scope: !2752)
!3737 = !DILocation(line: 1900, column: 37, scope: !3738)
!3738 = distinct !DILexicalBlock(scope: !3739, file: !2, line: 1900, column: 16)
!3739 = distinct !DILexicalBlock(scope: !3730, file: !2, line: 1899, column: 9)
!3740 = !DILocation(line: 1900, column: 16, scope: !3739)
!3741 = !DILocation(line: 1901, column: 17, scope: !3738)
!3742 = !DILocation(line: 1903, column: 17, scope: !3738)
!3743 = !DILocation(line: 1905, column: 52, scope: !3744)
!3744 = distinct !DILexicalBlock(scope: !3730, file: !2, line: 1905, column: 17)
!3745 = !DILocation(line: 1905, column: 74, scope: !3744)
!3746 = !DILocation(line: 1905, column: 83, scope: !3744)
!3747 = !DILocation(line: 1905, column: 62, scope: !3744)
!3748 = !DILocation(line: 1905, column: 60, scope: !3744)
!3749 = !DILocation(line: 1905, column: 17, scope: !3730)
!3750 = !DILocation(line: 1907, column: 37, scope: !3751)
!3751 = distinct !DILexicalBlock(scope: !3752, file: !2, line: 1907, column: 16)
!3752 = distinct !DILexicalBlock(scope: !3744, file: !2, line: 1906, column: 9)
!3753 = !DILocation(line: 1907, column: 16, scope: !3752)
!3754 = !DILocation(line: 1908, column: 17, scope: !3751)
!3755 = !DILocation(line: 1910, column: 17, scope: !3751)
!3756 = !DILocation(line: 1912, column: 24, scope: !3757)
!3757 = distinct !DILexicalBlock(scope: !3744, file: !2, line: 1912, column: 17)
!3758 = !DILocation(line: 1912, column: 19, scope: !3757)
!3759 = !DILocation(line: 1912, column: 32, scope: !3757)
!3760 = !DILocation(line: 1912, column: 40, scope: !3757)
!3761 = !DILocation(line: 1912, column: 35, scope: !3757)
!3762 = !DILocation(line: 1912, column: 17, scope: !3744)
!3763 = !DILocation(line: 1913, column: 13, scope: !3757)
!3764 = !DILocation(line: 1917, column: 1, scope: !2690)
!3765 = !DISubprogram(name: "strlen", scope: !2673, file: !2673, line: 407, type: !3766, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1752)
!3766 = !DISubroutineType(types: !3767)
!3767 = !{!300, !446}
!3768 = !DISubprogram(name: "strcpy", scope: !2673, file: !2673, line: 141, type: !3769, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1752)
!3769 = !DISubroutineType(types: !3770)
!3770 = !{!428, !3771, !2686}
!3771 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !428)
!3772 = !DISubprogram(name: "fopen", scope: !2683, file: !2683, line: 258, type: !3773, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1752)
!3773 = !DISubroutineType(types: !3774)
!3774 = !{!1148, !2686, !2686}
!3775 = !DISubprogram(name: "x264_param2string", scope: !238, file: !238, line: 96, type: !3776, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1752)
!3776 = !DISubroutineType(types: !3777)
!3777 = !{!428, !3778, !283}
!3778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!3779 = !DISubprogram(name: "fprintf", scope: !2683, file: !2683, line: 350, type: !3780, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1752)
!3780 = !DISubroutineType(types: !3781)
!3781 = !{!283, !3782, !2686, null}
!3782 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1148)
!3783 = distinct !DISubprogram(name: "x264_ratecontrol_summary", scope: !2, file: !2, line: 674, type: !1690, scopeLine: 675, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !3784)
!3784 = !{!3785, !3786, !3787}
!3785 = !DILocalVariable(name: "h", arg: 1, scope: !3783, file: !2, line: 674, type: !380)
!3786 = !DILocalVariable(name: "rc", scope: !3783, file: !2, line: 676, type: !1103)
!3787 = !DILocalVariable(name: "base_cplx", scope: !3788, file: !2, line: 679, type: !302)
!3788 = distinct !DILexicalBlock(scope: !3789, file: !2, line: 678, column: 5)
!3789 = distinct !DILexicalBlock(scope: !3783, file: !2, line: 677, column: 9)
!3790 = !DILocation(line: 0, scope: !3783)
!3791 = !DILocation(line: 676, column: 33, scope: !3783)
!3792 = !DILocation(line: 677, column: 13, scope: !3789)
!3793 = !DILocation(line: 677, column: 9, scope: !3789)
!3794 = !DILocation(line: 677, column: 19, scope: !3789)
!3795 = !DILocation(line: 677, column: 31, scope: !3789)
!3796 = !DILocation(line: 677, column: 34, scope: !3789)
!3797 = !DILocation(line: 677, column: 46, scope: !3789)
!3798 = !DILocation(line: 677, column: 61, scope: !3789)
!3799 = !DILocation(line: 677, column: 68, scope: !3789)
!3800 = !DILocation(line: 677, column: 78, scope: !3789)
!3801 = !DILocation(line: 677, column: 9, scope: !3783)
!3802 = !DILocation(line: 679, column: 31, scope: !3788)
!3803 = !DILocation(line: 679, column: 34, scope: !3788)
!3804 = !DILocation(line: 679, column: 57, scope: !3788)
!3805 = !DILocation(line: 679, column: 48, scope: !3788)
!3806 = !DILocation(line: 679, column: 45, scope: !3788)
!3807 = !DILocation(line: 679, column: 28, scope: !3788)
!3808 = !DILocation(line: 0, scope: !3788)
!3809 = !DILocation(line: 681, column: 62, scope: !3788)
!3810 = !DILocation(line: 681, column: 48, scope: !3788)
!3811 = !DILocation(line: 681, column: 46, scope: !3788)
!3812 = !DILocation(line: 681, column: 30, scope: !3788)
!3813 = !DILocation(line: 682, column: 36, scope: !3788)
!3814 = !DILocation(line: 682, column: 52, scope: !3788)
!3815 = !DILocation(line: 0, scope: !3211, inlinedAt: !3816)
!3816 = distinct !DILocation(line: 681, column: 19, scope: !3788)
!3817 = !DILocation(line: 682, column: 30, scope: !3788)
!3818 = !DILocation(line: 154, column: 35, scope: !3211, inlinedAt: !3816)
!3819 = !DILocation(line: 154, column: 25, scope: !3211, inlinedAt: !3816)
!3820 = !DILocation(line: 154, column: 42, scope: !3211, inlinedAt: !3816)
!3821 = !DILocation(line: 154, column: 17, scope: !3211, inlinedAt: !3816)
!3822 = !DILocation(line: 680, column: 9, scope: !3788)
!3823 = !DILocation(line: 683, column: 5, scope: !3788)
!3824 = !DILocation(line: 684, column: 1, scope: !3783)
!3825 = distinct !DISubprogram(name: "x264_ratecontrol_delete", scope: !2, file: !2, line: 686, type: !1690, scopeLine: 687, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !3826)
!3826 = !{!3827, !3828, !3829}
!3827 = !DILocalVariable(name: "h", arg: 1, scope: !3825, file: !2, line: 686, type: !380)
!3828 = !DILocalVariable(name: "rc", scope: !3825, file: !2, line: 688, type: !1103)
!3829 = !DILocalVariable(name: "i", scope: !3825, file: !2, line: 689, type: !283)
!3830 = !DILocation(line: 0, scope: !3825)
!3831 = !DILocation(line: 688, column: 33, scope: !3825)
!3832 = !DILocation(line: 691, column: 13, scope: !3833)
!3833 = distinct !DILexicalBlock(scope: !3825, file: !2, line: 691, column: 9)
!3834 = !DILocation(line: 691, column: 9, scope: !3833)
!3835 = !DILocation(line: 691, column: 9, scope: !3825)
!3836 = !DILocation(line: 693, column: 9, scope: !3837)
!3837 = distinct !DILexicalBlock(scope: !3833, file: !2, line: 692, column: 5)
!3838 = !DILocation(line: 694, column: 16, scope: !3839)
!3839 = distinct !DILexicalBlock(scope: !3837, file: !2, line: 694, column: 13)
!3840 = !{!1563, !1565, i64 1920}
!3841 = !DILocation(line: 694, column: 31, scope: !3839)
!3842 = !DILocation(line: 694, column: 24, scope: !3839)
!3843 = !DILocation(line: 694, column: 13, scope: !3837)
!3844 = !DILocation(line: 695, column: 29, scope: !3845)
!3845 = distinct !DILexicalBlock(scope: !3839, file: !2, line: 695, column: 17)
!3846 = !DILocation(line: 695, column: 64, scope: !3845)
!3847 = !DILocation(line: 695, column: 17, scope: !3845)
!3848 = !DILocation(line: 695, column: 79, scope: !3845)
!3849 = !DILocation(line: 695, column: 17, scope: !3839)
!3850 = !DILocation(line: 698, column: 31, scope: !3851)
!3851 = distinct !DILexicalBlock(scope: !3845, file: !2, line: 696, column: 13)
!3852 = !DILocation(line: 698, column: 66, scope: !3851)
!3853 = !DILocation(line: 697, column: 17, scope: !3851)
!3854 = !DILocation(line: 699, column: 13, scope: !3851)
!3855 = !DILocation(line: 700, column: 24, scope: !3837)
!3856 = !DILocation(line: 700, column: 9, scope: !3837)
!3857 = !DILocation(line: 701, column: 5, scope: !3837)
!3858 = !DILocation(line: 702, column: 20, scope: !3825)
!3859 = !DILocation(line: 702, column: 5, scope: !3825)
!3860 = !DILocation(line: 703, column: 20, scope: !3825)
!3861 = !DILocation(line: 703, column: 5, scope: !3825)
!3862 = !DILocation(line: 704, column: 20, scope: !3825)
!3863 = !DILocation(line: 704, column: 5, scope: !3825)
!3864 = !DILocation(line: 705, column: 13, scope: !3865)
!3865 = distinct !DILexicalBlock(scope: !3825, file: !2, line: 705, column: 9)
!3866 = !DILocation(line: 705, column: 9, scope: !3865)
!3867 = !DILocation(line: 705, column: 9, scope: !3825)
!3868 = !DILocation(line: 707, column: 33, scope: !3869)
!3869 = distinct !DILexicalBlock(scope: !3865, file: !2, line: 706, column: 5)
!3870 = !DILocation(line: 707, column: 9, scope: !3869)
!3871 = !DILocation(line: 708, column: 25, scope: !3872)
!3872 = distinct !DILexicalBlock(scope: !3869, file: !2, line: 708, column: 13)
!3873 = !DILocation(line: 708, column: 13, scope: !3872)
!3874 = !DILocation(line: 708, column: 13, scope: !3869)
!3875 = !DILocation(line: 709, column: 29, scope: !3876)
!3876 = distinct !DILexicalBlock(scope: !3877, file: !2, line: 709, column: 13)
!3877 = distinct !DILexicalBlock(scope: !3872, file: !2, line: 709, column: 13)
!3878 = !DILocation(line: 709, column: 24, scope: !3876)
!3879 = !DILocation(line: 709, column: 13, scope: !3877)
!3880 = !DILocation(line: 710, column: 25, scope: !3881)
!3881 = distinct !DILexicalBlock(scope: !3876, file: !2, line: 710, column: 21)
!3882 = !DILocation(line: 710, column: 34, scope: !3881)
!3883 = !DILocation(line: 710, column: 56, scope: !3881)
!3884 = !DILocation(line: 710, column: 40, scope: !3881)
!3885 = !DILocation(line: 710, column: 21, scope: !3876)
!3886 = !DILocation(line: 711, column: 21, scope: !3881)
!3887 = !DILocation(line: 709, column: 39, scope: !3876)
!3888 = distinct !{!3888, !3879, !3889, !1639}
!3889 = !DILocation(line: 711, column: 51, scope: !3877)
!3890 = !DILocation(line: 712, column: 24, scope: !3869)
!3891 = !DILocation(line: 712, column: 9, scope: !3869)
!3892 = !DILocation(line: 713, column: 5, scope: !3869)
!3893 = !DILocation(line: 714, column: 5, scope: !3825)
!3894 = !DILocation(line: 715, column: 1, scope: !3825)
!3895 = !DISubprogram(name: "fclose", scope: !2683, file: !2683, line: 178, type: !3896, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1752)
!3896 = !DISubroutineType(types: !3897)
!3897 = !{!283, !1148}
!3898 = !DISubprogram(name: "rename", scope: !2683, file: !2683, line: 154, type: !3899, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1752)
!3899 = !DISubroutineType(types: !3900)
!3900 = !{!283, !446, !446}
!3901 = distinct !DISubprogram(name: "x264_ratecontrol_set_estimated_size", scope: !2, file: !2, line: 717, type: !3902, scopeLine: 718, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !3904)
!3902 = !DISubroutineType(types: !3903)
!3903 = !{null, !380, !283}
!3904 = !{!3905, !3906}
!3905 = !DILocalVariable(name: "h", arg: 1, scope: !3901, file: !2, line: 717, type: !380)
!3906 = !DILocalVariable(name: "bits", arg: 2, scope: !3901, file: !2, line: 717, type: !283)
!3907 = !DILocation(line: 0, scope: !3901)
!3908 = !DILocation(line: 719, column: 34, scope: !3901)
!3909 = !DILocation(line: 719, column: 40, scope: !3901)
!3910 = !DILocation(line: 719, column: 5, scope: !3901)
!3911 = !DILocation(line: 720, column: 35, scope: !3901)
!3912 = !DILocation(line: 720, column: 8, scope: !3901)
!3913 = !DILocation(line: 720, column: 12, scope: !3901)
!3914 = !DILocation(line: 720, column: 33, scope: !3901)
!3915 = !{!1702, !1585, i64 424}
!3916 = !DILocation(line: 721, column: 36, scope: !3901)
!3917 = !DILocation(line: 721, column: 42, scope: !3901)
!3918 = !DILocation(line: 721, column: 5, scope: !3901)
!3919 = !DILocation(line: 722, column: 1, scope: !3901)
!3920 = !DISubprogram(name: "pthread_mutex_lock", scope: !3921, file: !3921, line: 794, type: !3922, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1752)
!3921 = !DIFile(filename: "/usr/include/pthread.h", directory: "", checksumkind: CSK_MD5, checksum: "5205981c6f80cc3dc1e81231df63d8ef")
!3922 = !DISubroutineType(types: !3923)
!3923 = !{!283, !3924}
!3924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!3925 = !DISubprogram(name: "pthread_mutex_unlock", scope: !3921, file: !3921, line: 835, type: !3922, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1752)
!3926 = distinct !DISubprogram(name: "x264_ratecontrol_get_estimated_size", scope: !2, file: !2, line: 724, type: !3927, scopeLine: 725, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !3931)
!3927 = !DISubroutineType(types: !3928)
!3928 = !{!283, !3929}
!3929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3930, size: 64)
!3930 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !381)
!3931 = !{!3932, !3933}
!3932 = !DILocalVariable(name: "h", arg: 1, scope: !3926, file: !2, line: 724, type: !3929)
!3933 = !DILocalVariable(name: "size", scope: !3926, file: !2, line: 726, type: !283)
!3934 = !DILocation(line: 0, scope: !3926)
!3935 = !DILocation(line: 727, column: 34, scope: !3926)
!3936 = !DILocation(line: 727, column: 40, scope: !3926)
!3937 = !DILocation(line: 727, column: 5, scope: !3926)
!3938 = !DILocation(line: 728, column: 15, scope: !3926)
!3939 = !DILocation(line: 728, column: 19, scope: !3926)
!3940 = !DILocation(line: 728, column: 12, scope: !3926)
!3941 = !DILocation(line: 729, column: 36, scope: !3926)
!3942 = !DILocation(line: 729, column: 42, scope: !3926)
!3943 = !DILocation(line: 729, column: 5, scope: !3926)
!3944 = !DILocation(line: 730, column: 5, scope: !3926)
!3945 = distinct !DISubprogram(name: "x264_ratecontrol_start", scope: !2, file: !2, line: 746, type: !3902, scopeLine: 747, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !3946)
!3946 = !{!3947, !3948, !3949, !3950, !3951, !3952, !3953}
!3947 = !DILocalVariable(name: "h", arg: 1, scope: !3945, file: !2, line: 746, type: !380)
!3948 = !DILocalVariable(name: "i_force_qp", arg: 2, scope: !3945, file: !2, line: 746, type: !283)
!3949 = !DILocalVariable(name: "rc", scope: !3945, file: !2, line: 748, type: !1103)
!3950 = !DILocalVariable(name: "rce", scope: !3945, file: !2, line: 749, type: !285)
!3951 = !DILocalVariable(name: "zone", scope: !3945, file: !2, line: 750, type: !512)
!3952 = !DILocalVariable(name: "q", scope: !3945, file: !2, line: 751, type: !284)
!3953 = !DILocalVariable(name: "frame", scope: !3954, file: !2, line: 763, type: !283)
!3954 = distinct !DILexicalBlock(scope: !3955, file: !2, line: 762, column: 5)
!3955 = distinct !DILexicalBlock(scope: !3945, file: !2, line: 761, column: 9)
!3956 = !DILocation(line: 0, scope: !3945)
!3957 = !DILocation(line: 748, column: 33, scope: !3945)
!3958 = !DILocation(line: 750, column: 41, scope: !3945)
!3959 = !DILocation(line: 750, column: 47, scope: !3945)
!3960 = !{!1615, !1565, i64 24}
!3961 = !DILocation(line: 0, scope: !2911, inlinedAt: !3962)
!3962 = distinct !DILocation(line: 750, column: 25, scope: !3945)
!3963 = !DILocation(line: 665, column: 21, scope: !2920, inlinedAt: !3962)
!3964 = !DILocation(line: 665, column: 34, scope: !2919, inlinedAt: !3962)
!3965 = !DILocation(line: 665, column: 5, scope: !2920, inlinedAt: !3962)
!3966 = !DILocation(line: 665, scope: !2920, inlinedAt: !3962)
!3967 = !DILocation(line: 667, column: 27, scope: !2918, inlinedAt: !3962)
!3968 = !DILocation(line: 0, scope: !2918, inlinedAt: !3962)
!3969 = !DILocation(line: 668, column: 29, scope: !2928, inlinedAt: !3962)
!3970 = !DILocation(line: 668, column: 23, scope: !2928, inlinedAt: !3962)
!3971 = !DILocation(line: 668, column: 37, scope: !2928, inlinedAt: !3962)
!3972 = !DILocation(line: 668, column: 56, scope: !2928, inlinedAt: !3962)
!3973 = !DILocation(line: 668, column: 50, scope: !2928, inlinedAt: !3962)
!3974 = !DILocation(line: 668, column: 13, scope: !2918, inlinedAt: !3962)
!3975 = distinct !{!3975, !3965, !3976, !1639}
!3976 = !DILocation(line: 670, column: 5, scope: !2920, inlinedAt: !3962)
!3977 = !DILocation(line: 753, column: 5, scope: !3945)
!3978 = !DILocation(line: 755, column: 14, scope: !3979)
!3979 = distinct !DILexicalBlock(scope: !3945, file: !2, line: 755, column: 9)
!3980 = !DILocation(line: 755, column: 23, scope: !3979)
!3981 = !{!1702, !1569, i64 600}
!3982 = !DILocation(line: 755, column: 19, scope: !3979)
!3983 = !DILocation(line: 0, scope: !3979)
!3984 = !DILocation(line: 755, column: 33, scope: !3979)
!3985 = !DILocation(line: 755, column: 66, scope: !3979)
!3986 = !DILocation(line: 755, column: 48, scope: !3979)
!3987 = !DILocation(line: 755, column: 9, scope: !3945)
!3988 = !DILocation(line: 756, column: 9, scope: !3979)
!3989 = !DILocation(line: 757, column: 9, scope: !3945)
!3990 = !DILocation(line: 757, column: 19, scope: !3945)
!3991 = !DILocation(line: 759, column: 9, scope: !3945)
!3992 = !DILocation(line: 759, column: 18, scope: !3945)
!3993 = !{!1702, !1565, i64 92}
!3994 = !DILocation(line: 761, column: 21, scope: !3955)
!3995 = !DILocation(line: 761, column: 9, scope: !3955)
!3996 = !DILocation(line: 761, column: 9, scope: !3945)
!3997 = !DILocation(line: 763, column: 24, scope: !3954)
!3998 = !DILocation(line: 763, column: 30, scope: !3954)
!3999 = !DILocation(line: 0, scope: !3954)
!4000 = !DILocation(line: 764, column: 9, scope: !4001)
!4001 = distinct !DILexicalBlock(scope: !4002, file: !2, line: 764, column: 9)
!4002 = distinct !DILexicalBlock(scope: !3954, file: !2, line: 764, column: 9)
!4003 = !DILocation(line: 764, column: 9, scope: !4002)
!4004 = !DILocation(line: 765, column: 32, scope: !3954)
!4005 = !DILocation(line: 765, column: 36, scope: !3954)
!4006 = !DILocation(line: 765, column: 29, scope: !3954)
!4007 = !DILocation(line: 765, column: 22, scope: !3954)
!4008 = !DILocation(line: 765, column: 26, scope: !3954)
!4009 = !{!1702, !1569, i64 64}
!4010 = !DILocation(line: 767, column: 19, scope: !4011)
!4011 = distinct !DILexicalBlock(scope: !3954, file: !2, line: 767, column: 13)
!4012 = !{!1563, !1565, i64 4344}
!4013 = !DILocation(line: 767, column: 26, scope: !4011)
!4014 = !DILocation(line: 768, column: 13, scope: !4011)
!4015 = !DILocation(line: 768, column: 33, scope: !4011)
!4016 = !{!1563, !1565, i64 392}
!4017 = !DILocation(line: 768, column: 50, scope: !4011)
!4018 = !DILocation(line: 767, column: 13, scope: !3954)
!4019 = !DILocation(line: 770, column: 53, scope: !4020)
!4020 = distinct !DILexicalBlock(scope: !4011, file: !2, line: 769, column: 9)
!4021 = !DILocation(line: 770, column: 65, scope: !4020)
!4022 = !DILocation(line: 770, column: 19, scope: !4020)
!4023 = !DILocation(line: 770, column: 44, scope: !4020)
!4024 = !{!1563, !1565, i64 4400}
!4025 = !DILocation(line: 771, column: 66, scope: !4020)
!4026 = !DILocation(line: 771, column: 19, scope: !4020)
!4027 = !DILocation(line: 771, column: 38, scope: !4020)
!4028 = !{!1563, !1565, i64 20536}
!4029 = !DILocation(line: 772, column: 9, scope: !4020)
!4030 = !DILocation(line: 775, column: 13, scope: !4031)
!4031 = distinct !DILexicalBlock(scope: !3945, file: !2, line: 775, column: 9)
!4032 = !DILocation(line: 775, column: 9, scope: !4031)
!4033 = !DILocation(line: 775, column: 9, scope: !3945)
!4034 = !DILocation(line: 777, column: 20, scope: !4035)
!4035 = distinct !DILexicalBlock(scope: !4031, file: !2, line: 776, column: 5)
!4036 = !{!1563, !1569, i64 9216}
!4037 = !DILocation(line: 777, column: 26, scope: !4035)
!4038 = !{!1615, !1569, i64 6312}
!4039 = !DILocation(line: 777, column: 44, scope: !4035)
!4040 = !DILocation(line: 777, column: 49, scope: !4035)
!4041 = !DILocation(line: 777, column: 41, scope: !4035)
!4042 = !DILocation(line: 777, column: 61, scope: !4035)
!4043 = !DILocation(line: 777, column: 9, scope: !4035)
!4044 = !DILocation(line: 778, column: 45, scope: !4035)
!4045 = !DILocation(line: 778, column: 25, scope: !4035)
!4046 = !DILocation(line: 778, column: 13, scope: !4035)
!4047 = !DILocation(line: 778, column: 22, scope: !4035)
!4048 = !{!1702, !1569, i64 440}
!4049 = !DILocalVariable(name: "h", arg: 1, scope: !4050, file: !2, line: 1252, type: !380)
!4050 = distinct !DISubprogram(name: "update_vbv_plan", scope: !2, file: !2, line: 1252, type: !1690, scopeLine: 1253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !4051)
!4051 = !{!4049, !4052, !4053, !4056, !4057, !4061}
!4052 = !DILocalVariable(name: "rcc", scope: !4050, file: !2, line: 1254, type: !1103)
!4053 = !DILocalVariable(name: "j", scope: !4054, file: !2, line: 1258, type: !283)
!4054 = distinct !DILexicalBlock(scope: !4055, file: !2, line: 1257, column: 5)
!4055 = distinct !DILexicalBlock(scope: !4050, file: !2, line: 1256, column: 9)
!4056 = !DILocalVariable(name: "i", scope: !4054, file: !2, line: 1259, type: !283)
!4057 = !DILocalVariable(name: "t", scope: !4058, file: !2, line: 1262, type: !380)
!4058 = distinct !DILexicalBlock(scope: !4059, file: !2, line: 1261, column: 9)
!4059 = distinct !DILexicalBlock(scope: !4060, file: !2, line: 1260, column: 9)
!4060 = distinct !DILexicalBlock(scope: !4054, file: !2, line: 1260, column: 9)
!4061 = !DILocalVariable(name: "bits", scope: !4058, file: !2, line: 1263, type: !302)
!4062 = !DILocation(line: 0, scope: !4050, inlinedAt: !4063)
!4063 = distinct !DILocation(line: 779, column: 9, scope: !4035)
!4064 = !DILocation(line: 1254, column: 34, scope: !4050, inlinedAt: !4063)
!4065 = !DILocation(line: 1255, column: 27, scope: !4050, inlinedAt: !4063)
!4066 = !DILocation(line: 1255, column: 24, scope: !4050, inlinedAt: !4063)
!4067 = !DILocation(line: 1255, column: 38, scope: !4050, inlinedAt: !4063)
!4068 = !DILocation(line: 1255, column: 42, scope: !4050, inlinedAt: !4063)
!4069 = !DILocation(line: 1255, column: 10, scope: !4050, inlinedAt: !4063)
!4070 = !DILocation(line: 1255, column: 22, scope: !4050, inlinedAt: !4063)
!4071 = !{!1702, !1585, i64 112}
!4072 = !DILocation(line: 1256, column: 18, scope: !4055, inlinedAt: !4063)
!4073 = !DILocation(line: 1256, column: 28, scope: !4055, inlinedAt: !4063)
!4074 = !DILocation(line: 1256, column: 9, scope: !4050, inlinedAt: !4063)
!4075 = !DILocation(line: 1258, column: 23, scope: !4054, inlinedAt: !4063)
!4076 = !DILocation(line: 1258, column: 17, scope: !4054, inlinedAt: !4063)
!4077 = !DILocation(line: 0, scope: !4054, inlinedAt: !4063)
!4078 = !DILocation(line: 1260, column: 9, scope: !4060, inlinedAt: !4063)
!4079 = !DILocation(line: 1262, column: 38, scope: !4058, inlinedAt: !4063)
!4080 = !DILocation(line: 1262, column: 41, scope: !4058, inlinedAt: !4063)
!4081 = !DILocation(line: 1262, column: 25, scope: !4058, inlinedAt: !4063)
!4082 = !DILocation(line: 0, scope: !4058, inlinedAt: !4063)
!4083 = !DILocation(line: 1263, column: 30, scope: !4058, inlinedAt: !4063)
!4084 = !DILocation(line: 1264, column: 21, scope: !4085, inlinedAt: !4063)
!4085 = distinct !DILexicalBlock(scope: !4058, file: !2, line: 1264, column: 17)
!4086 = !{!1563, !1565, i64 1648}
!4087 = !DILocation(line: 1264, column: 18, scope: !4085, inlinedAt: !4063)
!4088 = !DILocation(line: 1264, column: 17, scope: !4058, inlinedAt: !4063)
!4089 = !DILocation(line: 1263, column: 34, scope: !4058, inlinedAt: !4063)
!4090 = !{!1702, !1585, i64 432}
!4091 = !DILocation(line: 0, scope: !3926, inlinedAt: !4092)
!4092 = distinct !DILocation(line: 1266, column: 21, scope: !4058, inlinedAt: !4063)
!4093 = !DILocation(line: 727, column: 34, scope: !3926, inlinedAt: !4092)
!4094 = !DILocation(line: 727, column: 40, scope: !3926, inlinedAt: !4092)
!4095 = !DILocation(line: 727, column: 5, scope: !3926, inlinedAt: !4092)
!4096 = !DILocation(line: 728, column: 15, scope: !3926, inlinedAt: !4092)
!4097 = !DILocation(line: 728, column: 19, scope: !3926, inlinedAt: !4092)
!4098 = !DILocation(line: 728, column: 12, scope: !3926, inlinedAt: !4092)
!4099 = !DILocation(line: 729, column: 36, scope: !3926, inlinedAt: !4092)
!4100 = !DILocation(line: 729, column: 42, scope: !3926, inlinedAt: !4092)
!4101 = !DILocation(line: 729, column: 5, scope: !3926, inlinedAt: !4092)
!4102 = !DILocation(line: 1266, column: 21, scope: !4058, inlinedAt: !4063)
!4103 = !DILocation(line: 0, scope: !3926, inlinedAt: !4104)
!4104 = distinct !DILocation(line: 1266, column: 21, scope: !4058, inlinedAt: !4063)
!4105 = !DILocation(line: 727, column: 34, scope: !3926, inlinedAt: !4104)
!4106 = !DILocation(line: 727, column: 40, scope: !3926, inlinedAt: !4104)
!4107 = !DILocation(line: 727, column: 5, scope: !3926, inlinedAt: !4104)
!4108 = !DILocation(line: 728, column: 15, scope: !3926, inlinedAt: !4104)
!4109 = !DILocation(line: 728, column: 19, scope: !3926, inlinedAt: !4104)
!4110 = !DILocation(line: 728, column: 12, scope: !3926, inlinedAt: !4104)
!4111 = !DILocation(line: 729, column: 36, scope: !3926, inlinedAt: !4104)
!4112 = !DILocation(line: 729, column: 42, scope: !3926, inlinedAt: !4104)
!4113 = !DILocation(line: 729, column: 5, scope: !3926, inlinedAt: !4104)
!4114 = !DILocation(line: 1267, column: 38, scope: !4058, inlinedAt: !4063)
!4115 = !DILocation(line: 1267, column: 50, scope: !4058, inlinedAt: !4063)
!4116 = !DILocation(line: 1267, column: 30, scope: !4058, inlinedAt: !4063)
!4117 = !DILocation(line: 1268, column: 44, scope: !4058, inlinedAt: !4063)
!4118 = !DILocation(line: 1268, column: 70, scope: !4058, inlinedAt: !4063)
!4119 = !DILocation(line: 1268, column: 65, scope: !4058, inlinedAt: !4063)
!4120 = !DILocation(line: 0, scope: !1722, inlinedAt: !4121)
!4121 = distinct !DILocation(line: 1268, column: 32, scope: !4058, inlinedAt: !4063)
!4122 = !DILocation(line: 110, column: 17, scope: !1722, inlinedAt: !4121)
!4123 = !DILocation(line: 110, column: 14, scope: !1722, inlinedAt: !4121)
!4124 = !DILocation(line: 1268, column: 32, scope: !4058, inlinedAt: !4063)
!4125 = !DILocation(line: 1268, column: 30, scope: !4058, inlinedAt: !4063)
!4126 = !DILocation(line: 1260, column: 30, scope: !4059, inlinedAt: !4063)
!4127 = !DILocation(line: 1269, column: 9, scope: !4059, inlinedAt: !4063)
!4128 = !DILocation(line: 1260, column: 42, scope: !4059, inlinedAt: !4063)
!4129 = !DILocation(line: 1260, column: 20, scope: !4059, inlinedAt: !4063)
!4130 = distinct !{!4130, !4078, !4131, !1639}
!4131 = !DILocation(line: 1269, column: 9, scope: !4060, inlinedAt: !4063)
!4132 = !DILocation(line: 782, column: 15, scope: !4133)
!4133 = distinct !DILexicalBlock(scope: !3945, file: !2, line: 782, column: 9)
!4134 = !DILocation(line: 782, column: 22, scope: !4133)
!4135 = !DILocation(line: 782, column: 9, scope: !3945)
!4136 = !DILocation(line: 784, column: 13, scope: !4137)
!4137 = distinct !DILexicalBlock(scope: !4133, file: !2, line: 783, column: 5)
!4138 = !DILocation(line: 785, column: 16, scope: !4137)
!4139 = !DILocation(line: 785, column: 47, scope: !4137)
!4140 = !DILocation(line: 785, column: 50, scope: !4137)
!4141 = !{!1615, !1565, i64 4}
!4142 = !DILocation(line: 786, column: 24, scope: !4137)
!4143 = distinct !{!4143, !4144, !4142, !1639}
!4144 = !DILocation(line: 785, column: 9, scope: !4137)
!4145 = !DILocation(line: 0, scope: !4137)
!4146 = !{!1702, !1565, i64 576}
!4147 = !DILocation(line: 789, column: 9, scope: !4148)
!4148 = distinct !DILexicalBlock(scope: !3945, file: !2, line: 789, column: 9)
!4149 = !DILocation(line: 789, column: 9, scope: !3945)
!4150 = !DILocation(line: 791, column: 24, scope: !4151)
!4151 = distinct !DILexicalBlock(scope: !4148, file: !2, line: 790, column: 5)
!4152 = !DILocation(line: 791, column: 13, scope: !4151)
!4153 = !DILocation(line: 792, column: 5, scope: !4151)
!4154 = !DILocation(line: 793, column: 18, scope: !4155)
!4155 = distinct !DILexicalBlock(scope: !4148, file: !2, line: 793, column: 14)
!4156 = !DILocation(line: 793, column: 14, scope: !4155)
!4157 = !DILocation(line: 793, column: 14, scope: !4148)
!4158 = !DILocation(line: 795, column: 24, scope: !4159)
!4159 = distinct !DILexicalBlock(scope: !4155, file: !2, line: 794, column: 5)
!4160 = !DILocation(line: 0, scope: !3211, inlinedAt: !4161)
!4161 = distinct !DILocation(line: 795, column: 13, scope: !4159)
!4162 = !DILocation(line: 154, column: 35, scope: !3211, inlinedAt: !4161)
!4163 = !DILocation(line: 154, column: 25, scope: !3211, inlinedAt: !4161)
!4164 = !DILocation(line: 154, column: 42, scope: !3211, inlinedAt: !4161)
!4165 = !DILocation(line: 154, column: 17, scope: !3211, inlinedAt: !4161)
!4166 = !DILocation(line: 795, column: 13, scope: !4159)
!4167 = !DILocation(line: 796, column: 5, scope: !4159)
!4168 = !DILocation(line: 797, column: 18, scope: !4169)
!4169 = distinct !DILexicalBlock(scope: !4155, file: !2, line: 797, column: 14)
!4170 = !DILocation(line: 797, column: 14, scope: !4169)
!4171 = !DILocation(line: 797, column: 14, scope: !4155)
!4172 = !DILocation(line: 799, column: 27, scope: !4173)
!4173 = distinct !DILexicalBlock(scope: !4169, file: !2, line: 798, column: 5)
!4174 = !DILocation(line: 799, column: 14, scope: !4173)
!4175 = !DILocation(line: 799, column: 25, scope: !4173)
!4176 = !DILocation(line: 800, column: 24, scope: !4173)
!4177 = !DILocation(line: 0, scope: !3211, inlinedAt: !4178)
!4178 = distinct !DILocation(line: 800, column: 13, scope: !4173)
!4179 = !DILocation(line: 154, column: 35, scope: !3211, inlinedAt: !4178)
!4180 = !DILocation(line: 154, column: 25, scope: !3211, inlinedAt: !4178)
!4181 = !DILocation(line: 154, column: 42, scope: !3211, inlinedAt: !4178)
!4182 = !DILocation(line: 154, column: 17, scope: !3211, inlinedAt: !4178)
!4183 = !DILocation(line: 800, column: 13, scope: !4173)
!4184 = !DILocation(line: 801, column: 5, scope: !4173)
!4185 = !DILocation(line: 804, column: 42, scope: !4186)
!4186 = distinct !DILexicalBlock(scope: !4187, file: !2, line: 804, column: 13)
!4187 = distinct !DILexicalBlock(scope: !4169, file: !2, line: 803, column: 5)
!4188 = !DILocation(line: 804, column: 48, scope: !4186)
!4189 = !DILocation(line: 804, column: 54, scope: !4186)
!4190 = !{!1615, !1565, i64 32}
!4191 = !DILocation(line: 804, column: 45, scope: !4186)
!4192 = !DILocation(line: 804, column: 13, scope: !4187)
!4193 = !DILocation(line: 805, column: 23, scope: !4186)
!4194 = !DILocation(line: 805, column: 19, scope: !4186)
!4195 = !DILocation(line: 805, column: 53, scope: !4186)
!4196 = !DILocation(line: 805, column: 51, scope: !4186)
!4197 = !DILocation(line: 805, column: 87, scope: !4186)
!4198 = !DILocation(line: 805, column: 13, scope: !4186)
!4199 = !DILocation(line: 807, column: 17, scope: !4186)
!4200 = !DILocation(line: 0, scope: !4186)
!4201 = !DILocation(line: 809, column: 13, scope: !4187)
!4202 = !DILocation(line: 811, column: 23, scope: !4203)
!4203 = distinct !DILexicalBlock(scope: !4204, file: !2, line: 811, column: 17)
!4204 = distinct !DILexicalBlock(scope: !4205, file: !2, line: 810, column: 9)
!4205 = distinct !DILexicalBlock(scope: !4187, file: !2, line: 809, column: 13)
!4206 = !DILocation(line: 811, column: 17, scope: !4203)
!4207 = !DILocation(line: 811, column: 17, scope: !4204)
!4208 = !DILocation(line: 812, column: 28, scope: !4203)
!4209 = !DILocation(line: 812, column: 39, scope: !4203)
!4210 = !DILocation(line: 812, column: 35, scope: !4203)
!4211 = !DILocation(line: 812, column: 33, scope: !4203)
!4212 = !DILocation(line: 812, column: 22, scope: !4203)
!4213 = !DILocation(line: 812, column: 19, scope: !4203)
!4214 = !DILocation(line: 812, column: 17, scope: !4203)
!4215 = !DILocation(line: 814, column: 34, scope: !4203)
!4216 = !DILocation(line: 814, column: 28, scope: !4203)
!4217 = !DILocation(line: 814, column: 24, scope: !4203)
!4218 = !DILocation(line: 814, column: 51, scope: !4203)
!4219 = !DILocation(line: 814, column: 19, scope: !4203)
!4220 = !DILocation(line: 0, scope: !4148)
!4221 = !DILocation(line: 818, column: 9, scope: !3945)
!4222 = !DILocation(line: 818, column: 16, scope: !3945)
!4223 = !DILocation(line: 823, column: 32, scope: !3945)
!4224 = !DILocation(line: 823, column: 34, scope: !3945)
!4225 = !DILocation(line: 823, column: 26, scope: !3945)
!4226 = !DILocation(line: 0, scope: !1722, inlinedAt: !4227)
!4227 = distinct !DILocation(line: 823, column: 14, scope: !3945)
!4228 = !DILocation(line: 110, column: 14, scope: !1722, inlinedAt: !4227)
!4229 = !DILocation(line: 823, column: 9, scope: !3945)
!4230 = !DILocation(line: 823, column: 12, scope: !3945)
!4231 = !{!1702, !1565, i64 72}
!4232 = !DILocation(line: 822, column: 9, scope: !3945)
!4233 = !DILocation(line: 822, column: 13, scope: !3945)
!4234 = !{!1702, !1565, i64 76}
!4235 = !DILocation(line: 822, column: 5, scope: !3945)
!4236 = !DILocation(line: 821, column: 8, scope: !3945)
!4237 = !DILocation(line: 821, column: 14, scope: !3945)
!4238 = !DILocation(line: 821, column: 26, scope: !3945)
!4239 = !{!1615, !1571, i64 40}
!4240 = !DILocation(line: 820, column: 14, scope: !3945)
!4241 = !DILocation(line: 820, column: 26, scope: !3945)
!4242 = !{!1615, !1571, i64 36}
!4243 = !DILocation(line: 824, column: 9, scope: !3945)
!4244 = !DILocation(line: 824, column: 15, scope: !3945)
!4245 = !DILocation(line: 825, column: 9, scope: !4246)
!4246 = distinct !DILexicalBlock(scope: !3945, file: !2, line: 825, column: 9)
!4247 = !DILocation(line: 825, column: 9, scope: !3945)
!4248 = !DILocation(line: 826, column: 14, scope: !4246)
!4249 = !DILocation(line: 826, column: 21, scope: !4246)
!4250 = !DILocation(line: 826, column: 9, scope: !4246)
!4251 = !DILocation(line: 832, column: 18, scope: !4252)
!4252 = distinct !DILexicalBlock(scope: !3945, file: !2, line: 832, column: 9)
!4253 = !DILocation(line: 832, column: 28, scope: !4252)
!4254 = !DILocation(line: 832, column: 9, scope: !3945)
!4255 = !DILocation(line: 833, column: 9, scope: !4252)
!4256 = !DILocalVariable(name: "h", arg: 1, scope: !4257, file: !2, line: 733, type: !380)
!4257 = distinct !DISubprogram(name: "accum_p_qp_update", scope: !2, file: !2, line: 733, type: !4258, scopeLine: 734, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !4260)
!4258 = !DISubroutineType(types: !4259)
!4259 = !{null, !380, !284}
!4260 = !{!4256, !4261, !4262}
!4261 = !DILocalVariable(name: "qp", arg: 2, scope: !4257, file: !2, line: 733, type: !284)
!4262 = !DILocalVariable(name: "rc", scope: !4257, file: !2, line: 735, type: !1103)
!4263 = !DILocation(line: 0, scope: !4257, inlinedAt: !4264)
!4264 = distinct !DILocation(line: 833, column: 9, scope: !4252)
!4265 = !DILocation(line: 736, column: 9, scope: !4257, inlinedAt: !4264)
!4266 = !DILocation(line: 736, column: 22, scope: !4257, inlinedAt: !4264)
!4267 = !DILocation(line: 737, column: 9, scope: !4257, inlinedAt: !4264)
!4268 = !DILocation(line: 737, column: 22, scope: !4257, inlinedAt: !4264)
!4269 = !DILocation(line: 738, column: 22, scope: !4257, inlinedAt: !4264)
!4270 = !DILocation(line: 739, column: 22, scope: !4271, inlinedAt: !4264)
!4271 = distinct !DILexicalBlock(scope: !4257, file: !2, line: 739, column: 9)
!4272 = !DILocation(line: 0, scope: !4271, inlinedAt: !4264)
!4273 = !DILocation(line: 739, column: 9, scope: !4257, inlinedAt: !4264)
!4274 = !DILocation(line: 740, column: 36, scope: !4271, inlinedAt: !4264)
!4275 = !{!1702, !1585, i64 208}
!4276 = !DILocation(line: 740, column: 30, scope: !4271, inlinedAt: !4264)
!4277 = !DILocation(line: 740, column: 9, scope: !4271, inlinedAt: !4264)
!4278 = !DILocation(line: 835, column: 22, scope: !4279)
!4279 = distinct !DILexicalBlock(scope: !3945, file: !2, line: 835, column: 9)
!4280 = !DILocation(line: 835, column: 9, scope: !3945)
!4281 = !DILocation(line: 836, column: 13, scope: !4279)
!4282 = !DILocation(line: 836, column: 34, scope: !4279)
!4283 = !DILocation(line: 836, column: 9, scope: !4279)
!4284 = !DILocation(line: 837, column: 1, scope: !3945)
!4285 = !DISubprogram(name: "x264_encoder_reconfig", scope: !382, file: !382, line: 421, type: !4286, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1752)
!4286 = !DISubroutineType(types: !4287)
!4287 = !{!283, !380, !3778}
!4288 = distinct !DISubprogram(name: "rate_estimate_qscale", scope: !2, file: !2, line: 1349, type: !4289, scopeLine: 1350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !4291)
!4289 = !DISubroutineType(types: !4290)
!4290 = !{!284, !380}
!4291 = !{!4292, !4293, !4294, !4295, !4296, !4297, !4298, !4299, !4300, !4303, !4304, !4305, !4306, !4307, !4308, !4310, !4313, !4314, !4319, !4320, !4324, !4325, !4328, !4329, !4332, !4333, !4334, !4335, !4336, !4338, !4339, !4340, !4341}
!4292 = !DILocalVariable(name: "h", arg: 1, scope: !4288, file: !2, line: 1349, type: !380)
!4293 = !DILocalVariable(name: "q", scope: !4288, file: !2, line: 1351, type: !284)
!4294 = !DILocalVariable(name: "rcc", scope: !4288, file: !2, line: 1352, type: !1103)
!4295 = !DILocalVariable(name: "rce", scope: !4288, file: !2, line: 1353, type: !286)
!4296 = !DILocalVariable(name: "pict_type", scope: !4288, file: !2, line: 1354, type: !283)
!4297 = !DILocalVariable(name: "lmin", scope: !4288, file: !2, line: 1355, type: !302)
!4298 = !DILocalVariable(name: "lmax", scope: !4288, file: !2, line: 1356, type: !302)
!4299 = !DILocalVariable(name: "total_bits", scope: !4288, file: !2, line: 1357, type: !311)
!4300 = !DILocalVariable(name: "i0", scope: !4301, file: !2, line: 1376, type: !283)
!4301 = distinct !DILexicalBlock(scope: !4302, file: !2, line: 1372, column: 5)
!4302 = distinct !DILexicalBlock(scope: !4288, file: !2, line: 1371, column: 9)
!4303 = !DILocalVariable(name: "i1", scope: !4301, file: !2, line: 1377, type: !283)
!4304 = !DILocalVariable(name: "dt0", scope: !4301, file: !2, line: 1378, type: !283)
!4305 = !DILocalVariable(name: "dt1", scope: !4301, file: !2, line: 1379, type: !283)
!4306 = !DILocalVariable(name: "q0", scope: !4301, file: !2, line: 1380, type: !284)
!4307 = !DILocalVariable(name: "q1", scope: !4301, file: !2, line: 1381, type: !284)
!4308 = !DILocalVariable(name: "abr_buffer", scope: !4309, file: !2, line: 1409, type: !302)
!4309 = distinct !DILexicalBlock(scope: !4302, file: !2, line: 1408, column: 5)
!4310 = !DILocalVariable(name: "diff", scope: !4311, file: !2, line: 1414, type: !311)
!4311 = distinct !DILexicalBlock(scope: !4312, file: !2, line: 1412, column: 9)
!4312 = distinct !DILexicalBlock(scope: !4309, file: !2, line: 1411, column: 13)
!4313 = !DILocalVariable(name: "predicted_bits", scope: !4311, file: !2, line: 1415, type: !311)
!4314 = !DILocalVariable(name: "j", scope: !4315, file: !2, line: 1421, type: !283)
!4315 = distinct !DILexicalBlock(scope: !4316, file: !2, line: 1420, column: 17)
!4316 = distinct !DILexicalBlock(scope: !4317, file: !2, line: 1419, column: 21)
!4317 = distinct !DILexicalBlock(scope: !4318, file: !2, line: 1418, column: 13)
!4318 = distinct !DILexicalBlock(scope: !4311, file: !2, line: 1417, column: 17)
!4319 = !DILocalVariable(name: "i", scope: !4315, file: !2, line: 1422, type: !283)
!4320 = !DILocalVariable(name: "t", scope: !4321, file: !2, line: 1425, type: !380)
!4321 = distinct !DILexicalBlock(scope: !4322, file: !2, line: 1424, column: 21)
!4322 = distinct !DILexicalBlock(scope: !4323, file: !2, line: 1423, column: 21)
!4323 = distinct !DILexicalBlock(scope: !4315, file: !2, line: 1423, column: 21)
!4324 = !DILocalVariable(name: "bits", scope: !4321, file: !2, line: 1426, type: !302)
!4325 = !DILocalVariable(name: "time", scope: !4326, file: !2, line: 1450, type: !302)
!4326 = distinct !DILexicalBlock(scope: !4327, file: !2, line: 1447, column: 13)
!4327 = distinct !DILexicalBlock(scope: !4311, file: !2, line: 1445, column: 17)
!4328 = !DILocalVariable(name: "w", scope: !4326, file: !2, line: 1451, type: !302)
!4329 = !DILocalVariable(name: "expected_size", scope: !4330, file: !2, line: 1457, type: !302)
!4330 = distinct !DILexicalBlock(scope: !4331, file: !2, line: 1455, column: 13)
!4331 = distinct !DILexicalBlock(scope: !4311, file: !2, line: 1454, column: 17)
!4332 = !DILocalVariable(name: "expected_vbv", scope: !4330, file: !2, line: 1458, type: !302)
!4333 = !DILocalVariable(name: "expected_fullness", scope: !4330, file: !2, line: 1459, type: !302)
!4334 = !DILocalVariable(name: "qmax", scope: !4330, file: !2, line: 1460, type: !302)
!4335 = !DILocalVariable(name: "size_constraint", scope: !4330, file: !2, line: 1461, type: !302)
!4336 = !DILocalVariable(name: "wanted_bits", scope: !4337, file: !2, line: 1489, type: !302)
!4337 = distinct !DILexicalBlock(scope: !4312, file: !2, line: 1478, column: 9)
!4338 = !DILocalVariable(name: "overflow", scope: !4337, file: !2, line: 1489, type: !302)
!4339 = !DILocalVariable(name: "lmin", scope: !4337, file: !2, line: 1489, type: !302)
!4340 = !DILocalVariable(name: "lmax", scope: !4337, file: !2, line: 1489, type: !302)
!4341 = !DILocalVariable(name: "i_frame_done", scope: !4342, file: !2, line: 1512, type: !283)
!4342 = distinct !DILexicalBlock(scope: !4343, file: !2, line: 1511, column: 13)
!4343 = distinct !DILexicalBlock(scope: !4337, file: !2, line: 1506, column: 17)
!4344 = !DILocation(line: 0, scope: !4288)
!4345 = !DILocation(line: 1352, column: 34, scope: !4288)
!4346 = !DILocation(line: 1354, column: 27, scope: !4288)
!4347 = !DILocation(line: 1355, column: 19, scope: !4288)
!4348 = !DILocation(line: 1356, column: 19, scope: !4288)
!4349 = !DILocation(line: 1357, column: 37, scope: !4288)
!4350 = !DILocation(line: 1357, column: 29, scope: !4288)
!4351 = !{!1573, !1573, i64 0}
!4352 = !DILocation(line: 1358, column: 29, scope: !4288)
!4353 = !DILocation(line: 1358, column: 27, scope: !4288)
!4354 = !DILocation(line: 1359, column: 29, scope: !4288)
!4355 = !DILocation(line: 1359, column: 27, scope: !4288)
!4356 = !DILocation(line: 1357, column: 27, scope: !4288)
!4357 = !DILocation(line: 1361, column: 14, scope: !4358)
!4358 = distinct !DILexicalBlock(scope: !4288, file: !2, line: 1361, column: 9)
!4359 = !DILocation(line: 1361, column: 9, scope: !4358)
!4360 = !DILocation(line: 1361, column: 9, scope: !4288)
!4361 = !DILocation(line: 1363, column: 21, scope: !4362)
!4362 = distinct !DILexicalBlock(scope: !4358, file: !2, line: 1362, column: 5)
!4363 = !DILocation(line: 1363, column: 15, scope: !4362)
!4364 = !{i64 0, i64 4, !1667, i64 4, i64 4, !1667, i64 8, i64 4, !1622, i64 12, i64 4, !1667, i64 16, i64 4, !1667, i64 20, i64 4, !1667, i64 24, i64 8, !4351, i64 32, i64 8, !2065, i64 40, i64 4, !1622, i64 44, i64 4, !1667, i64 48, i64 4, !1667, i64 52, i64 4, !1667, i64 56, i64 4, !1667, i64 60, i64 4, !1622, i64 64, i64 1, !1743}
!4365 = !{i64 0, i64 4, !1622, i64 4, i64 4, !1667, i64 8, i64 4, !1667, i64 12, i64 4, !1667, i64 16, i64 8, !4351, i64 24, i64 8, !2065, i64 32, i64 4, !1622, i64 36, i64 4, !1667, i64 40, i64 4, !1667, i64 44, i64 4, !1667, i64 48, i64 4, !1667, i64 52, i64 4, !1622, i64 56, i64 1, !1743}
!4366 = !{i64 0, i64 4, !1667, i64 4, i64 4, !1667, i64 8, i64 4, !1667, i64 12, i64 8, !4351, i64 20, i64 8, !2065, i64 28, i64 4, !1622, i64 32, i64 4, !1667, i64 36, i64 4, !1667, i64 40, i64 4, !1667, i64 44, i64 4, !1667, i64 48, i64 4, !1622, i64 52, i64 1, !1743}
!4367 = !{i64 0, i64 4, !1667, i64 4, i64 4, !1667, i64 8, i64 8, !4351, i64 16, i64 8, !2065, i64 24, i64 4, !1622, i64 28, i64 4, !1667, i64 32, i64 4, !1667, i64 36, i64 4, !1667, i64 40, i64 4, !1667, i64 44, i64 4, !1622, i64 48, i64 1, !1743}
!4368 = !{i64 0, i64 4, !1667, i64 4, i64 8, !4351, i64 12, i64 8, !2065, i64 20, i64 4, !1622, i64 24, i64 4, !1667, i64 28, i64 4, !1667, i64 32, i64 4, !1667, i64 36, i64 4, !1667, i64 40, i64 4, !1622, i64 44, i64 1, !1743}
!4369 = !{i64 0, i64 8, !4351, i64 8, i64 8, !2065, i64 16, i64 4, !1622, i64 20, i64 4, !1667, i64 24, i64 4, !1667, i64 28, i64 4, !1667, i64 32, i64 4, !1667, i64 36, i64 4, !1622, i64 40, i64 1, !1743}
!4370 = !{i64 0, i64 8, !2065, i64 8, i64 4, !1622, i64 12, i64 4, !1667, i64 16, i64 4, !1667, i64 20, i64 4, !1667, i64 24, i64 4, !1667, i64 28, i64 4, !1622, i64 32, i64 1, !1743}
!4371 = !{i64 0, i64 4, !1622, i64 4, i64 4, !1667, i64 8, i64 4, !1667, i64 12, i64 4, !1667, i64 16, i64 4, !1667, i64 20, i64 4, !1622, i64 24, i64 1, !1743}
!4372 = !DILocation(line: 1364, column: 22, scope: !4373)
!4373 = distinct !DILexicalBlock(scope: !4362, file: !2, line: 1364, column: 12)
!4374 = !DILocation(line: 1364, column: 12, scope: !4362)
!4375 = !DILocation(line: 1367, column: 22, scope: !4376)
!4376 = distinct !DILexicalBlock(scope: !4373, file: !2, line: 1365, column: 9)
!4377 = !DILocation(line: 1367, column: 53, scope: !4376)
!4378 = !DILocation(line: 1366, column: 13, scope: !4376)
!4379 = !DILocation(line: 1368, column: 9, scope: !4376)
!4380 = !DILocation(line: 1371, column: 19, scope: !4302)
!4381 = !DILocation(line: 1371, column: 9, scope: !4288)
!4382 = !DILocation(line: 1376, column: 18, scope: !4301)
!4383 = !DILocation(line: 0, scope: !4301)
!4384 = !DILocation(line: 1377, column: 18, scope: !4301)
!4385 = !DILocation(line: 1378, column: 26, scope: !4301)
!4386 = !DILocation(line: 1378, column: 32, scope: !4301)
!4387 = !{!1615, !1565, i64 0}
!4388 = !DILocation(line: 1378, column: 53, scope: !4301)
!4389 = !DILocation(line: 1378, column: 38, scope: !4301)
!4390 = !DILocation(line: 1378, column: 19, scope: !4301)
!4391 = !DILocation(line: 1379, column: 53, scope: !4301)
!4392 = !DILocation(line: 1379, column: 38, scope: !4301)
!4393 = !DILocation(line: 1379, column: 19, scope: !4301)
!4394 = !DILocation(line: 1380, column: 33, scope: !4301)
!4395 = !DILocation(line: 1381, column: 33, scope: !4301)
!4396 = !DILocation(line: 1383, column: 33, scope: !4397)
!4397 = distinct !DILexicalBlock(scope: !4301, file: !2, line: 1383, column: 13)
!4398 = !DILocation(line: 1383, column: 13, scope: !4301)
!4399 = !DILocation(line: 1384, column: 24, scope: !4397)
!4400 = !{!1702, !1585, i64 216}
!4401 = !DILocation(line: 1384, column: 33, scope: !4397)
!4402 = !DILocation(line: 1384, column: 16, scope: !4397)
!4403 = !DILocation(line: 1384, column: 13, scope: !4397)
!4404 = !DILocation(line: 1385, column: 33, scope: !4405)
!4405 = distinct !DILexicalBlock(scope: !4301, file: !2, line: 1385, column: 13)
!4406 = !DILocation(line: 1385, column: 13, scope: !4301)
!4407 = !DILocation(line: 1386, column: 24, scope: !4405)
!4408 = !DILocation(line: 1386, column: 33, scope: !4405)
!4409 = !DILocation(line: 1386, column: 16, scope: !4405)
!4410 = !DILocation(line: 1388, column: 15, scope: !4411)
!4411 = distinct !DILexicalBlock(scope: !4301, file: !2, line: 1388, column: 12)
!4412 = !DILocation(line: 1389, column: 21, scope: !4411)
!4413 = !DILocation(line: 1389, column: 27, scope: !4411)
!4414 = !DILocation(line: 1389, column: 17, scope: !4411)
!4415 = !DILocation(line: 1389, column: 38, scope: !4411)
!4416 = !DILocation(line: 1389, column: 31, scope: !4411)
!4417 = !DILocation(line: 1389, column: 13, scope: !4411)
!4418 = !DILocation(line: 1390, column: 17, scope: !4411)
!4419 = !DILocation(line: 1395, column: 21, scope: !4420)
!4420 = distinct !DILexicalBlock(scope: !4421, file: !2, line: 1392, column: 17)
!4421 = distinct !DILexicalBlock(scope: !4411, file: !2, line: 1390, column: 17)
!4422 = !DILocation(line: 1395, column: 20, scope: !4420)
!4423 = !DILocation(line: 1395, column: 30, scope: !4420)
!4424 = !DILocation(line: 1395, column: 29, scope: !4420)
!4425 = !DILocation(line: 1395, column: 25, scope: !4420)
!4426 = !DILocation(line: 1395, column: 42, scope: !4420)
!4427 = !DILocation(line: 1395, column: 37, scope: !4420)
!4428 = !DILocation(line: 1395, column: 35, scope: !4420)
!4429 = !DILocation(line: 0, scope: !4411)
!4430 = !DILocation(line: 1397, column: 21, scope: !4431)
!4431 = distinct !DILexicalBlock(scope: !4301, file: !2, line: 1397, column: 12)
!4432 = !DILocation(line: 1397, column: 12, scope: !4431)
!4433 = !DILocation(line: 0, scope: !4431)
!4434 = !DILocation(line: 1397, column: 12, scope: !4301)
!4435 = !DILocation(line: 1402, column: 54, scope: !4301)
!4436 = !DILocation(line: 1402, column: 69, scope: !4301)
!4437 = !DILocation(line: 1402, column: 84, scope: !4301)
!4438 = !{!1563, !1565, i64 9384}
!4439 = !DILocation(line: 1402, column: 90, scope: !4301)
!4440 = !DILocation(line: 1402, column: 72, scope: !4301)
!4441 = !DILocation(line: 1402, column: 95, scope: !4301)
!4442 = !{!1615, !1565, i64 3632}
!4443 = !DILocalVariable(name: "p", arg: 1, scope: !4444, file: !2, line: 1218, type: !1129)
!4444 = distinct !DISubprogram(name: "predict_size", scope: !2, file: !2, line: 1218, type: !4445, scopeLine: 1219, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !4447)
!4445 = !DISubroutineType(types: !4446)
!4446 = !{!302, !1129, !302, !302}
!4447 = !{!4443, !4448, !4449}
!4448 = !DILocalVariable(name: "q", arg: 2, scope: !4444, file: !2, line: 1218, type: !302)
!4449 = !DILocalVariable(name: "var", arg: 3, scope: !4444, file: !2, line: 1218, type: !302)
!4450 = !DILocation(line: 0, scope: !4444, inlinedAt: !4451)
!4451 = distinct !DILocation(line: 1402, column: 35, scope: !4301)
!4452 = !DILocation(line: 1402, column: 35, scope: !4301)
!4453 = !DILocation(line: 1220, column: 30, scope: !4444, inlinedAt: !4451)
!4454 = !DILocation(line: 1220, column: 21, scope: !4444, inlinedAt: !4451)
!4455 = !DILocation(line: 1220, column: 26, scope: !4444, inlinedAt: !4451)
!4456 = !DILocation(line: 1402, column: 14, scope: !4301)
!4457 = !DILocation(line: 1402, column: 33, scope: !4301)
!4458 = !DILocation(line: 1403, column: 48, scope: !4301)
!4459 = !DILocation(line: 0, scope: !3901, inlinedAt: !4460)
!4460 = distinct !DILocation(line: 1403, column: 9, scope: !4301)
!4461 = !DILocation(line: 719, column: 40, scope: !3901, inlinedAt: !4460)
!4462 = !DILocation(line: 719, column: 5, scope: !3901, inlinedAt: !4460)
!4463 = !DILocation(line: 720, column: 35, scope: !3901, inlinedAt: !4460)
!4464 = !DILocation(line: 720, column: 8, scope: !3901, inlinedAt: !4460)
!4465 = !DILocation(line: 720, column: 12, scope: !3901, inlinedAt: !4460)
!4466 = !DILocation(line: 720, column: 33, scope: !3901, inlinedAt: !4460)
!4467 = !DILocation(line: 721, column: 36, scope: !3901, inlinedAt: !4460)
!4468 = !DILocation(line: 721, column: 42, scope: !3901, inlinedAt: !4460)
!4469 = !DILocation(line: 721, column: 5, scope: !3901, inlinedAt: !4460)
!4470 = !DILocation(line: 1404, column: 14, scope: !4301)
!4471 = !DILocation(line: 1404, column: 24, scope: !4301)
!4472 = !{!1702, !1565, i64 136}
!4473 = !DILocation(line: 0, scope: !2045, inlinedAt: !4474)
!4474 = distinct !DILocation(line: 1405, column: 16, scope: !4301)
!4475 = !DILocation(line: 150, column: 42, scope: !2045, inlinedAt: !4474)
!4476 = !DILocation(line: 150, column: 19, scope: !2045, inlinedAt: !4474)
!4477 = !DILocation(line: 150, column: 17, scope: !2045, inlinedAt: !4474)
!4478 = !DILocation(line: 1405, column: 16, scope: !4301)
!4479 = !DILocation(line: 1409, column: 38, scope: !4309)
!4480 = !DILocation(line: 1409, column: 31, scope: !4309)
!4481 = !DILocation(line: 1409, column: 60, scope: !4309)
!4482 = !DILocation(line: 1409, column: 53, scope: !4309)
!4483 = !DILocation(line: 0, scope: !4309)
!4484 = !DILocation(line: 1411, column: 18, scope: !4312)
!4485 = !DILocation(line: 1411, column: 13, scope: !4312)
!4486 = !DILocation(line: 1411, column: 13, scope: !4309)
!4487 = !DILocation(line: 0, scope: !4311)
!4488 = !DILocation(line: 1417, column: 22, scope: !4318)
!4489 = !DILocation(line: 1417, column: 17, scope: !4318)
!4490 = !DILocation(line: 1417, column: 17, scope: !4311)
!4491 = !DILocation(line: 1419, column: 30, scope: !4316)
!4492 = !DILocation(line: 1419, column: 40, scope: !4316)
!4493 = !DILocation(line: 1419, column: 21, scope: !4317)
!4494 = !DILocation(line: 1421, column: 32, scope: !4315)
!4495 = !DILocation(line: 1421, column: 40, scope: !4315)
!4496 = !DILocation(line: 1421, column: 37, scope: !4315)
!4497 = !DILocation(line: 1421, column: 51, scope: !4315)
!4498 = !DILocation(line: 1421, column: 35, scope: !4315)
!4499 = !DILocation(line: 1421, column: 29, scope: !4315)
!4500 = !DILocation(line: 0, scope: !4315)
!4501 = !DILocation(line: 1423, column: 21, scope: !4323)
!4502 = !DILocation(line: 1425, column: 50, scope: !4321)
!4503 = !DILocation(line: 1425, column: 53, scope: !4321)
!4504 = !DILocation(line: 1425, column: 37, scope: !4321)
!4505 = !DILocation(line: 0, scope: !4321)
!4506 = !DILocation(line: 1426, column: 42, scope: !4321)
!4507 = !DILocation(line: 1427, column: 33, scope: !4508)
!4508 = distinct !DILexicalBlock(scope: !4321, file: !2, line: 1427, column: 29)
!4509 = !DILocation(line: 1427, column: 30, scope: !4508)
!4510 = !DILocation(line: 1427, column: 29, scope: !4321)
!4511 = !DILocation(line: 1426, column: 46, scope: !4321)
!4512 = !DILocation(line: 0, scope: !3926, inlinedAt: !4513)
!4513 = distinct !DILocation(line: 1429, column: 33, scope: !4321)
!4514 = !DILocation(line: 727, column: 34, scope: !3926, inlinedAt: !4513)
!4515 = !DILocation(line: 727, column: 40, scope: !3926, inlinedAt: !4513)
!4516 = !DILocation(line: 727, column: 5, scope: !3926, inlinedAt: !4513)
!4517 = !DILocation(line: 728, column: 15, scope: !3926, inlinedAt: !4513)
!4518 = !DILocation(line: 728, column: 19, scope: !3926, inlinedAt: !4513)
!4519 = !DILocation(line: 728, column: 12, scope: !3926, inlinedAt: !4513)
!4520 = !DILocation(line: 729, column: 36, scope: !3926, inlinedAt: !4513)
!4521 = !DILocation(line: 729, column: 42, scope: !3926, inlinedAt: !4513)
!4522 = !DILocation(line: 729, column: 5, scope: !3926, inlinedAt: !4513)
!4523 = !DILocation(line: 1429, column: 33, scope: !4321)
!4524 = !DILocation(line: 0, scope: !3926, inlinedAt: !4525)
!4525 = distinct !DILocation(line: 1429, column: 33, scope: !4321)
!4526 = !DILocation(line: 727, column: 34, scope: !3926, inlinedAt: !4525)
!4527 = !DILocation(line: 727, column: 40, scope: !3926, inlinedAt: !4525)
!4528 = !DILocation(line: 727, column: 5, scope: !3926, inlinedAt: !4525)
!4529 = !DILocation(line: 728, column: 15, scope: !3926, inlinedAt: !4525)
!4530 = !DILocation(line: 728, column: 19, scope: !3926, inlinedAt: !4525)
!4531 = !DILocation(line: 728, column: 12, scope: !3926, inlinedAt: !4525)
!4532 = !DILocation(line: 729, column: 36, scope: !3926, inlinedAt: !4525)
!4533 = !DILocation(line: 729, column: 42, scope: !3926, inlinedAt: !4525)
!4534 = !DILocation(line: 729, column: 5, scope: !3926, inlinedAt: !4525)
!4535 = !DILocation(line: 1430, column: 43, scope: !4321)
!4536 = !DILocation(line: 1430, column: 40, scope: !4321)
!4537 = !DILocation(line: 1423, column: 42, scope: !4322)
!4538 = !DILocation(line: 1431, column: 21, scope: !4322)
!4539 = !DILocation(line: 1423, column: 54, scope: !4322)
!4540 = !DILocation(line: 1423, column: 32, scope: !4322)
!4541 = distinct !{!4541, !4501, !4542, !1639}
!4542 = !DILocation(line: 1431, column: 21, scope: !4323)
!4543 = !DILocation(line: 1436, column: 24, scope: !4544)
!4544 = distinct !DILexicalBlock(scope: !4545, file: !2, line: 1436, column: 21)
!4545 = distinct !DILexicalBlock(scope: !4318, file: !2, line: 1435, column: 13)
!4546 = !DILocation(line: 1436, column: 30, scope: !4544)
!4547 = !DILocation(line: 1436, column: 49, scope: !4544)
!4548 = !DILocation(line: 1436, column: 38, scope: !4544)
!4549 = !DILocation(line: 1436, column: 21, scope: !4545)
!4550 = !DILocation(line: 0, scope: !4544)
!4551 = !DILocation(line: 1442, column: 35, scope: !4311)
!4552 = !DILocation(line: 1445, column: 51, scope: !4327)
!4553 = !DILocation(line: 1444, column: 52, scope: !4311)
!4554 = !DILocation(line: 1444, column: 50, scope: !4311)
!4555 = !DILocation(line: 1444, column: 58, scope: !4311)
!4556 = !DILocation(line: 0, scope: !1921, inlinedAt: !4557)
!4557 = distinct !DILocation(line: 1444, column: 18, scope: !4311)
!4558 = !DILocation(line: 115, column: 14, scope: !1921, inlinedAt: !4557)
!4559 = !DILocation(line: 1444, column: 15, scope: !4311)
!4560 = !DILocation(line: 1445, column: 22, scope: !4327)
!4561 = !DILocation(line: 1445, column: 28, scope: !4327)
!4562 = !DILocation(line: 1445, column: 36, scope: !4327)
!4563 = !DILocation(line: 1445, column: 40, scope: !4327)
!4564 = !DILocation(line: 1445, column: 18, scope: !4327)
!4565 = !DILocation(line: 1445, column: 70, scope: !4327)
!4566 = !DILocation(line: 1445, column: 62, scope: !4327)
!4567 = !DILocation(line: 1445, column: 75, scope: !4327)
!4568 = !DILocation(line: 1446, column: 23, scope: !4327)
!4569 = !{!1702, !1585, i64 160}
!4570 = !DILocation(line: 1446, column: 41, scope: !4327)
!4571 = !DILocation(line: 1445, column: 17, scope: !4311)
!4572 = !DILocation(line: 1450, column: 31, scope: !4326)
!4573 = !DILocation(line: 1450, column: 63, scope: !4326)
!4574 = !DILocation(line: 1450, column: 58, scope: !4326)
!4575 = !DILocation(line: 0, scope: !4326)
!4576 = !DILocation(line: 1451, column: 45, scope: !4326)
!4577 = !DILocation(line: 0, scope: !1921, inlinedAt: !4578)
!4578 = distinct !DILocation(line: 1451, column: 28, scope: !4326)
!4579 = !DILocation(line: 115, column: 14, scope: !1921, inlinedAt: !4578)
!4580 = !DILocation(line: 1452, column: 27, scope: !4326)
!4581 = !DILocation(line: 1452, column: 46, scope: !4326)
!4582 = !DILocation(line: 1452, column: 22, scope: !4326)
!4583 = !DILocation(line: 1452, column: 19, scope: !4326)
!4584 = !DILocation(line: 1453, column: 13, scope: !4326)
!4585 = !DILocation(line: 1454, column: 22, scope: !4331)
!4586 = !DILocation(line: 1454, column: 17, scope: !4331)
!4587 = !DILocation(line: 1454, column: 17, scope: !4311)
!4588 = !DILocation(line: 0, scope: !2815, inlinedAt: !4589)
!4589 = distinct !DILocation(line: 1457, column: 40, scope: !4330)
!4590 = !DILocation(line: 163, column: 14, scope: !2980, inlinedAt: !4589)
!4591 = !DILocation(line: 163, column: 8, scope: !2815, inlinedAt: !4589)
!4592 = !DILocation(line: 166, column: 34, scope: !2815, inlinedAt: !4589)
!4593 = !DILocation(line: 166, column: 14, scope: !2815, inlinedAt: !4589)
!4594 = !DILocation(line: 165, column: 13, scope: !2815, inlinedAt: !4589)
!4595 = !DILocation(line: 165, column: 27, scope: !2815, inlinedAt: !4589)
!4596 = !DILocation(line: 165, column: 52, scope: !2815, inlinedAt: !4589)
!4597 = !DILocation(line: 165, column: 35, scope: !2815, inlinedAt: !4589)
!4598 = !DILocation(line: 165, column: 33, scope: !2815, inlinedAt: !4589)
!4599 = !DILocation(line: 166, column: 61, scope: !2815, inlinedAt: !4589)
!4600 = !DILocation(line: 166, column: 59, scope: !2815, inlinedAt: !4589)
!4601 = !DILocation(line: 166, column: 29, scope: !2815, inlinedAt: !4589)
!4602 = !DILocation(line: 166, column: 27, scope: !2815, inlinedAt: !4589)
!4603 = !DILocation(line: 167, column: 14, scope: !2815, inlinedAt: !4589)
!4604 = !DILocation(line: 166, column: 12, scope: !2815, inlinedAt: !4589)
!4605 = !DILocation(line: 167, column: 12, scope: !2815, inlinedAt: !4589)
!4606 = !DILocation(line: 0, scope: !4330)
!4607 = !DILocation(line: 1458, column: 44, scope: !4330)
!4608 = !DILocation(line: 1458, column: 63, scope: !4330)
!4609 = !DILocation(line: 1458, column: 56, scope: !4330)
!4610 = !DILocation(line: 1459, column: 69, scope: !4330)
!4611 = !DILocation(line: 1459, column: 62, scope: !4330)
!4612 = !DILocation(line: 1460, column: 36, scope: !4330)
!4613 = !DILocation(line: 1460, column: 32, scope: !4330)
!4614 = !DILocation(line: 1461, column: 44, scope: !4330)
!4615 = !DILocation(line: 1462, column: 24, scope: !4330)
!4616 = !DILocation(line: 1463, column: 39, scope: !4617)
!4617 = distinct !DILexicalBlock(scope: !4330, file: !2, line: 1463, column: 21)
!4618 = !DILocation(line: 1463, column: 21, scope: !4330)
!4619 = !DILocation(line: 1465, column: 24, scope: !4330)
!4620 = !DILocation(line: 1466, column: 17, scope: !4330)
!4621 = !DILocation(line: 1466, column: 39, scope: !4330)
!4622 = !DILocation(line: 1466, column: 75, scope: !4330)
!4623 = !DILocation(line: 1467, column: 40, scope: !4330)
!4624 = !DILocation(line: 1467, column: 45, scope: !4330)
!4625 = !DILocation(line: 1469, column: 23, scope: !4626)
!4626 = distinct !DILexicalBlock(scope: !4330, file: !2, line: 1468, column: 17)
!4627 = !DILocation(line: 1470, column: 55, scope: !4626)
!4628 = !DILocation(line: 0, scope: !2815, inlinedAt: !4629)
!4629 = distinct !DILocation(line: 1470, column: 37, scope: !4626)
!4630 = !DILocation(line: 163, column: 14, scope: !2980, inlinedAt: !4629)
!4631 = !DILocation(line: 163, column: 8, scope: !2815, inlinedAt: !4629)
!4632 = !DILocation(line: 165, column: 52, scope: !2815, inlinedAt: !4629)
!4633 = !DILocation(line: 165, column: 35, scope: !2815, inlinedAt: !4629)
!4634 = !DILocation(line: 165, column: 33, scope: !2815, inlinedAt: !4629)
!4635 = !DILocation(line: 166, column: 61, scope: !2815, inlinedAt: !4629)
!4636 = !DILocation(line: 166, column: 59, scope: !2815, inlinedAt: !4629)
!4637 = !DILocation(line: 166, column: 29, scope: !2815, inlinedAt: !4629)
!4638 = !DILocation(line: 166, column: 27, scope: !2815, inlinedAt: !4629)
!4639 = !DILocation(line: 166, column: 12, scope: !2815, inlinedAt: !4629)
!4640 = !DILocation(line: 167, column: 12, scope: !2815, inlinedAt: !4629)
!4641 = distinct !{!4641, !4620, !4642, !1639}
!4642 = !DILocation(line: 1472, column: 17, scope: !4330)
!4643 = !DILocation(line: 1473, column: 34, scope: !4330)
!4644 = !DILocation(line: 1473, column: 22, scope: !4330)
!4645 = !DILocation(line: 1473, column: 32, scope: !4330)
!4646 = !DILocation(line: 1474, column: 13, scope: !4330)
!4647 = !DILocation(line: 1475, column: 30, scope: !4311)
!4648 = !DILocation(line: 0, scope: !1921, inlinedAt: !4649)
!4649 = distinct !DILocation(line: 1475, column: 17, scope: !4311)
!4650 = !DILocation(line: 115, column: 17, scope: !1921, inlinedAt: !4649)
!4651 = !DILocation(line: 115, column: 14, scope: !1921, inlinedAt: !4649)
!4652 = !DILocation(line: 1476, column: 9, scope: !4311)
!4653 = !DILocation(line: 0, scope: !4337)
!4654 = !DILocation(line: 1491, column: 30, scope: !4337)
!4655 = !DILocation(line: 1491, column: 18, scope: !4337)
!4656 = !DILocation(line: 1491, column: 28, scope: !4337)
!4657 = !DILocation(line: 1492, column: 18, scope: !4337)
!4658 = !DILocation(line: 1494, column: 40, scope: !4337)
!4659 = !DILocation(line: 1492, column: 37, scope: !4337)
!4660 = !DILocation(line: 1495, column: 39, scope: !4337)
!4661 = !DILocation(line: 1494, column: 37, scope: !4337)
!4662 = !DILocation(line: 1498, column: 62, scope: !4337)
!4663 = !DILocation(line: 1498, column: 38, scope: !4337)
!4664 = !DILocation(line: 1506, column: 26, scope: !4343)
!4665 = !DILocation(line: 1506, column: 29, scope: !4343)
!4666 = !DILocation(line: 1506, column: 41, scope: !4343)
!4667 = !DILocation(line: 1506, column: 17, scope: !4337)
!4668 = !DILocation(line: 1508, column: 47, scope: !4669)
!4669 = distinct !DILexicalBlock(scope: !4343, file: !2, line: 1507, column: 13)
!4670 = !DILocation(line: 1508, column: 72, scope: !4669)
!4671 = !DILocation(line: 1508, column: 78, scope: !4669)
!4672 = !DILocation(line: 0, scope: !2898, inlinedAt: !4673)
!4673 = distinct !DILocation(line: 1508, column: 21, scope: !4669)
!4674 = !DILocation(line: 1124, column: 33, scope: !2898, inlinedAt: !4673)
!4675 = !DILocation(line: 0, scope: !2911, inlinedAt: !4676)
!4676 = distinct !DILocation(line: 1126, column: 25, scope: !2898, inlinedAt: !4673)
!4677 = !DILocation(line: 665, column: 21, scope: !2920, inlinedAt: !4676)
!4678 = !DILocation(line: 665, column: 34, scope: !2919, inlinedAt: !4676)
!4679 = !DILocation(line: 665, column: 5, scope: !2920, inlinedAt: !4676)
!4680 = !DILocation(line: 665, scope: !2920, inlinedAt: !4676)
!4681 = !DILocation(line: 667, column: 27, scope: !2918, inlinedAt: !4676)
!4682 = !DILocation(line: 0, scope: !2918, inlinedAt: !4676)
!4683 = !DILocation(line: 668, column: 29, scope: !2928, inlinedAt: !4676)
!4684 = !DILocation(line: 668, column: 23, scope: !2928, inlinedAt: !4676)
!4685 = !DILocation(line: 668, column: 37, scope: !2928, inlinedAt: !4676)
!4686 = !DILocation(line: 668, column: 56, scope: !2928, inlinedAt: !4676)
!4687 = !DILocation(line: 668, column: 50, scope: !2928, inlinedAt: !4676)
!4688 = !DILocation(line: 668, column: 13, scope: !2918, inlinedAt: !4676)
!4689 = distinct !{!4689, !4679, !4690, !1639}
!4690 = !DILocation(line: 670, column: 5, scope: !2920, inlinedAt: !4676)
!4691 = !DILocation(line: 1131, column: 53, scope: !2938, inlinedAt: !4673)
!4692 = !DILocation(line: 1131, column: 8, scope: !2898, inlinedAt: !4673)
!4693 = !DILocation(line: 1132, column: 18, scope: !2938, inlinedAt: !4673)
!4694 = !DILocation(line: 1132, column: 9, scope: !2938, inlinedAt: !4673)
!4695 = !DILocation(line: 1128, column: 14, scope: !2898, inlinedAt: !4673)
!4696 = !DILocation(line: 1128, column: 55, scope: !2898, inlinedAt: !4673)
!4697 = !DILocation(line: 1128, column: 41, scope: !2898, inlinedAt: !4673)
!4698 = !DILocation(line: 1128, column: 39, scope: !2898, inlinedAt: !4673)
!4699 = !DILocation(line: 1128, column: 9, scope: !2898, inlinedAt: !4673)
!4700 = !DILocation(line: 1135, column: 14, scope: !2953, inlinedAt: !4673)
!4701 = !DILocation(line: 1135, column: 24, scope: !2953, inlinedAt: !4673)
!4702 = !DILocation(line: 1136, column: 11, scope: !2953, inlinedAt: !4673)
!4703 = !DILocation(line: 1137, column: 14, scope: !2953, inlinedAt: !4673)
!4704 = !DILocation(line: 1137, column: 26, scope: !2953, inlinedAt: !4673)
!4705 = !DILocation(line: 0, scope: !2938, inlinedAt: !4673)
!4706 = !DILocation(line: 1140, column: 9, scope: !2958, inlinedAt: !4673)
!4707 = !DILocation(line: 1140, column: 9, scope: !2898, inlinedAt: !4673)
!4708 = !DILocation(line: 1142, column: 19, scope: !2961, inlinedAt: !4673)
!4709 = !DILocation(line: 1142, column: 13, scope: !2961, inlinedAt: !4673)
!4710 = !DILocation(line: 1142, column: 13, scope: !2962, inlinedAt: !4673)
!4711 = !DILocation(line: 1143, column: 33, scope: !2961, inlinedAt: !4673)
!4712 = !DILocation(line: 1143, column: 27, scope: !2961, inlinedAt: !4673)
!4713 = !DILocation(line: 0, scope: !2045, inlinedAt: !4714)
!4714 = distinct !DILocation(line: 1143, column: 17, scope: !2961, inlinedAt: !4673)
!4715 = !DILocation(line: 150, column: 42, scope: !2045, inlinedAt: !4714)
!4716 = !DILocation(line: 150, column: 19, scope: !2045, inlinedAt: !4714)
!4717 = !DILocation(line: 150, column: 17, scope: !2045, inlinedAt: !4714)
!4718 = !DILocation(line: 1143, column: 13, scope: !2961, inlinedAt: !4673)
!4719 = !DILocation(line: 1145, column: 24, scope: !2961, inlinedAt: !4673)
!4720 = !DILocation(line: 1145, column: 18, scope: !2961, inlinedAt: !4673)
!4721 = !DILocation(line: 1145, column: 15, scope: !2961, inlinedAt: !4673)
!4722 = !DILocation(line: 1508, column: 21, scope: !4669)
!4723 = !DILocation(line: 1509, column: 13, scope: !4669)
!4724 = !DILocation(line: 1512, column: 39, scope: !4342)
!4725 = !DILocation(line: 1512, column: 45, scope: !4342)
!4726 = !DILocation(line: 1512, column: 53, scope: !4342)
!4727 = !DILocation(line: 1512, column: 68, scope: !4342)
!4728 = !DILocation(line: 1512, column: 57, scope: !4342)
!4729 = !DILocation(line: 0, scope: !4342)
!4730 = !DILocation(line: 1514, column: 47, scope: !4342)
!4731 = !DILocation(line: 1514, column: 73, scope: !4342)
!4732 = !DILocation(line: 0, scope: !2898, inlinedAt: !4733)
!4733 = distinct !DILocation(line: 1514, column: 21, scope: !4342)
!4734 = !DILocation(line: 1124, column: 33, scope: !2898, inlinedAt: !4733)
!4735 = !DILocation(line: 0, scope: !2911, inlinedAt: !4736)
!4736 = distinct !DILocation(line: 1126, column: 25, scope: !2898, inlinedAt: !4733)
!4737 = !DILocation(line: 665, column: 21, scope: !2920, inlinedAt: !4736)
!4738 = !DILocation(line: 665, column: 34, scope: !2919, inlinedAt: !4736)
!4739 = !DILocation(line: 665, column: 5, scope: !2920, inlinedAt: !4736)
!4740 = !DILocation(line: 665, scope: !2920, inlinedAt: !4736)
!4741 = !DILocation(line: 667, column: 27, scope: !2918, inlinedAt: !4736)
!4742 = !DILocation(line: 0, scope: !2918, inlinedAt: !4736)
!4743 = !DILocation(line: 668, column: 29, scope: !2928, inlinedAt: !4736)
!4744 = !DILocation(line: 668, column: 23, scope: !2928, inlinedAt: !4736)
!4745 = !DILocation(line: 668, column: 37, scope: !2928, inlinedAt: !4736)
!4746 = !DILocation(line: 668, column: 56, scope: !2928, inlinedAt: !4736)
!4747 = !DILocation(line: 668, column: 50, scope: !2928, inlinedAt: !4736)
!4748 = !DILocation(line: 668, column: 13, scope: !2918, inlinedAt: !4736)
!4749 = distinct !{!4749, !4739, !4750, !1639}
!4750 = !DILocation(line: 670, column: 5, scope: !2920, inlinedAt: !4736)
!4751 = !DILocation(line: 1131, column: 53, scope: !2938, inlinedAt: !4733)
!4752 = !DILocation(line: 1131, column: 8, scope: !2898, inlinedAt: !4733)
!4753 = !DILocation(line: 1132, column: 18, scope: !2938, inlinedAt: !4733)
!4754 = !DILocation(line: 1132, column: 9, scope: !2938, inlinedAt: !4733)
!4755 = !DILocation(line: 1128, column: 14, scope: !2898, inlinedAt: !4733)
!4756 = !DILocation(line: 1128, column: 55, scope: !2898, inlinedAt: !4733)
!4757 = !DILocation(line: 1128, column: 41, scope: !2898, inlinedAt: !4733)
!4758 = !DILocation(line: 1128, column: 39, scope: !2898, inlinedAt: !4733)
!4759 = !DILocation(line: 1128, column: 9, scope: !2898, inlinedAt: !4733)
!4760 = !DILocation(line: 1135, column: 14, scope: !2953, inlinedAt: !4733)
!4761 = !DILocation(line: 1135, column: 24, scope: !2953, inlinedAt: !4733)
!4762 = !DILocation(line: 1136, column: 11, scope: !2953, inlinedAt: !4733)
!4763 = !DILocation(line: 1137, column: 14, scope: !2953, inlinedAt: !4733)
!4764 = !DILocation(line: 1137, column: 26, scope: !2953, inlinedAt: !4733)
!4765 = !DILocation(line: 0, scope: !2938, inlinedAt: !4733)
!4766 = !DILocation(line: 1140, column: 9, scope: !2958, inlinedAt: !4733)
!4767 = !DILocation(line: 1140, column: 9, scope: !2898, inlinedAt: !4733)
!4768 = !DILocation(line: 1142, column: 19, scope: !2961, inlinedAt: !4733)
!4769 = !DILocation(line: 1142, column: 13, scope: !2961, inlinedAt: !4733)
!4770 = !DILocation(line: 1142, column: 13, scope: !2962, inlinedAt: !4733)
!4771 = !DILocation(line: 1143, column: 33, scope: !2961, inlinedAt: !4733)
!4772 = !DILocation(line: 1143, column: 27, scope: !2961, inlinedAt: !4733)
!4773 = !DILocation(line: 0, scope: !2045, inlinedAt: !4774)
!4774 = distinct !DILocation(line: 1143, column: 17, scope: !2961, inlinedAt: !4733)
!4775 = !DILocation(line: 150, column: 42, scope: !2045, inlinedAt: !4774)
!4776 = !DILocation(line: 150, column: 19, scope: !2045, inlinedAt: !4774)
!4777 = !DILocation(line: 150, column: 17, scope: !2045, inlinedAt: !4774)
!4778 = !DILocation(line: 1143, column: 13, scope: !2961, inlinedAt: !4733)
!4779 = !DILocation(line: 1145, column: 24, scope: !2961, inlinedAt: !4733)
!4780 = !DILocation(line: 1145, column: 18, scope: !2961, inlinedAt: !4733)
!4781 = !DILocation(line: 1145, column: 15, scope: !2961, inlinedAt: !4733)
!4782 = !DILocation(line: 1514, column: 21, scope: !4342)
!4783 = !DILocation(line: 1517, column: 31, scope: !4342)
!4784 = !DILocation(line: 1517, column: 51, scope: !4342)
!4785 = !DILocation(line: 1517, column: 44, scope: !4342)
!4786 = !DILocation(line: 1517, column: 66, scope: !4342)
!4787 = !DILocation(line: 1517, column: 59, scope: !4342)
!4788 = !DILocation(line: 1518, column: 33, scope: !4789)
!4789 = distinct !DILexicalBlock(scope: !4342, file: !2, line: 1518, column: 21)
!4790 = !DILocation(line: 1518, column: 21, scope: !4342)
!4791 = !DILocation(line: 1520, column: 35, scope: !4792)
!4792 = distinct !DILexicalBlock(scope: !4789, file: !2, line: 1519, column: 17)
!4793 = !DILocation(line: 1520, column: 32, scope: !4792)
!4794 = !DILocation(line: 1521, column: 52, scope: !4792)
!4795 = !DILocation(line: 1521, column: 63, scope: !4792)
!4796 = !DILocation(line: 1521, column: 78, scope: !4792)
!4797 = !DILocation(line: 1521, column: 49, scope: !4792)
!4798 = !DILocation(line: 0, scope: !1921, inlinedAt: !4799)
!4799 = distinct !DILocation(line: 1521, column: 32, scope: !4792)
!4800 = !DILocation(line: 115, column: 14, scope: !1921, inlinedAt: !4799)
!4801 = !DILocation(line: 1522, column: 23, scope: !4792)
!4802 = !DILocation(line: 1523, column: 17, scope: !4792)
!4803 = !DILocation(line: 0, scope: !4343)
!4804 = !DILocation(line: 1526, column: 27, scope: !4805)
!4805 = distinct !DILexicalBlock(scope: !4337, file: !2, line: 1526, column: 17)
!4806 = !DILocation(line: 1526, column: 43, scope: !4805)
!4807 = !DILocation(line: 1526, column: 55, scope: !4805)
!4808 = !DILocation(line: 1526, column: 68, scope: !4805)
!4809 = !DILocation(line: 1528, column: 17, scope: !4805)
!4810 = !DILocation(line: 1528, column: 25, scope: !4805)
!4811 = !DILocation(line: 1528, column: 46, scope: !4805)
!4812 = !DILocation(line: 1526, column: 17, scope: !4337)
!4813 = !DILocation(line: 1530, column: 37, scope: !4814)
!4814 = distinct !DILexicalBlock(scope: !4805, file: !2, line: 1529, column: 13)
!4815 = !DILocation(line: 1530, column: 55, scope: !4814)
!4816 = !DILocation(line: 0, scope: !2045, inlinedAt: !4817)
!4817 = distinct !DILocation(line: 1530, column: 21, scope: !4814)
!4818 = !DILocation(line: 150, column: 42, scope: !2045, inlinedAt: !4817)
!4819 = !DILocation(line: 150, column: 19, scope: !2045, inlinedAt: !4817)
!4820 = !DILocation(line: 150, column: 17, scope: !2045, inlinedAt: !4817)
!4821 = !DILocation(line: 1530, column: 21, scope: !4814)
!4822 = !DILocation(line: 1531, column: 40, scope: !4814)
!4823 = !DILocation(line: 1531, column: 22, scope: !4814)
!4824 = !DILocation(line: 1531, column: 19, scope: !4814)
!4825 = !DILocation(line: 1532, column: 13, scope: !4814)
!4826 = !DILocation(line: 1533, column: 25, scope: !4827)
!4827 = distinct !DILexicalBlock(scope: !4805, file: !2, line: 1533, column: 22)
!4828 = !DILocation(line: 1533, column: 33, scope: !4827)
!4829 = !DILocation(line: 1533, column: 22, scope: !4805)
!4830 = !DILocation(line: 1537, column: 24, scope: !4831)
!4831 = distinct !DILexicalBlock(scope: !4827, file: !2, line: 1534, column: 13)
!4832 = !DILocation(line: 1537, column: 63, scope: !4831)
!4833 = !DILocation(line: 1537, column: 56, scope: !4831)
!4834 = !DILocation(line: 1538, column: 56, scope: !4831)
!4835 = !DILocation(line: 1539, column: 30, scope: !4836)
!4836 = distinct !DILexicalBlock(scope: !4831, file: !2, line: 1539, column: 21)
!4837 = !DILocation(line: 1539, column: 36, scope: !4836)
!4838 = !DILocation(line: 1540, column: 26, scope: !4836)
!4839 = !DILocation(line: 1540, column: 21, scope: !4836)
!4840 = !DILocation(line: 1541, column: 35, scope: !4841)
!4841 = distinct !DILexicalBlock(scope: !4836, file: !2, line: 1541, column: 26)
!4842 = !DILocation(line: 1541, column: 26, scope: !4836)
!4843 = !DILocation(line: 1542, column: 26, scope: !4841)
!4844 = !DILocation(line: 1542, column: 21, scope: !4841)
!4845 = !DILocation(line: 0, scope: !4831)
!4846 = !DILocation(line: 1544, column: 33, scope: !4831)
!4847 = !DILocation(line: 0, scope: !1921, inlinedAt: !4848)
!4848 = distinct !DILocation(line: 1544, column: 21, scope: !4831)
!4849 = !DILocation(line: 115, column: 17, scope: !1921, inlinedAt: !4848)
!4850 = !DILocation(line: 115, column: 14, scope: !1921, inlinedAt: !4848)
!4851 = !DILocation(line: 1544, column: 21, scope: !4831)
!4852 = !DILocation(line: 1545, column: 13, scope: !4831)
!4853 = !DILocation(line: 1546, column: 22, scope: !4827)
!4854 = !DILocation(line: 1548, column: 32, scope: !4855)
!4855 = distinct !DILexicalBlock(scope: !4856, file: !2, line: 1547, column: 13)
!4856 = distinct !DILexicalBlock(scope: !4827, file: !2, line: 1546, column: 22)
!4857 = !DILocation(line: 0, scope: !2045, inlinedAt: !4858)
!4858 = distinct !DILocation(line: 1548, column: 21, scope: !4855)
!4859 = !DILocation(line: 150, column: 42, scope: !2045, inlinedAt: !4858)
!4860 = !DILocation(line: 150, column: 19, scope: !2045, inlinedAt: !4858)
!4861 = !DILocation(line: 150, column: 17, scope: !2045, inlinedAt: !4858)
!4862 = !DILocation(line: 1548, column: 66, scope: !4855)
!4863 = !DILocation(line: 1548, column: 48, scope: !4855)
!4864 = !DILocation(line: 1548, column: 46, scope: !4855)
!4865 = !DILocation(line: 1548, column: 21, scope: !4855)
!4866 = !DILocation(line: 1549, column: 13, scope: !4855)
!4867 = !DILocation(line: 1552, column: 44, scope: !4337)
!4868 = !DILocation(line: 1552, column: 17, scope: !4337)
!4869 = !DILocation(line: 0, scope: !4312)
!4870 = !DILocation(line: 1556, column: 28, scope: !4309)
!4871 = !DILocation(line: 1556, column: 14, scope: !4309)
!4872 = !DILocation(line: 1556, column: 26, scope: !4309)
!4873 = !DILocation(line: 1555, column: 14, scope: !4309)
!4874 = !DILocation(line: 1555, column: 9, scope: !4309)
!4875 = !DILocation(line: 1555, column: 41, scope: !4309)
!4876 = !DILocation(line: 1558, column: 20, scope: !4877)
!4877 = distinct !DILexicalBlock(scope: !4309, file: !2, line: 1558, column: 13)
!4878 = !DILocation(line: 1558, column: 15, scope: !4877)
!4879 = !DILocation(line: 1558, column: 28, scope: !4877)
!4880 = !DILocation(line: 1558, column: 37, scope: !4877)
!4881 = !DILocation(line: 1558, column: 32, scope: !4877)
!4882 = !DILocation(line: 1558, column: 44, scope: !4877)
!4883 = !DILocation(line: 1558, column: 50, scope: !4877)
!4884 = !DILocation(line: 1558, column: 56, scope: !4877)
!4885 = !DILocation(line: 1558, column: 64, scope: !4877)
!4886 = !DILocation(line: 1558, column: 13, scope: !4309)
!4887 = !DILocation(line: 1559, column: 48, scope: !4877)
!4888 = !DILocation(line: 1559, column: 13, scope: !4877)
!4889 = !DILocation(line: 1561, column: 26, scope: !4890)
!4890 = distinct !DILexicalBlock(scope: !4309, file: !2, line: 1561, column: 13)
!4891 = !DILocation(line: 1561, column: 34, scope: !4890)
!4892 = !DILocation(line: 1561, column: 29, scope: !4890)
!4893 = !DILocation(line: 1561, column: 13, scope: !4309)
!4894 = !DILocation(line: 0, scope: !2815, inlinedAt: !4895)
!4895 = distinct !DILocation(line: 1562, column: 39, scope: !4890)
!4896 = !DILocation(line: 163, column: 14, scope: !2980, inlinedAt: !4895)
!4897 = !DILocation(line: 163, column: 8, scope: !2815, inlinedAt: !4895)
!4898 = !DILocation(line: 166, column: 34, scope: !2815, inlinedAt: !4895)
!4899 = !DILocation(line: 166, column: 14, scope: !2815, inlinedAt: !4895)
!4900 = !DILocation(line: 165, column: 13, scope: !2815, inlinedAt: !4895)
!4901 = !DILocation(line: 165, column: 27, scope: !2815, inlinedAt: !4895)
!4902 = !DILocation(line: 165, column: 52, scope: !2815, inlinedAt: !4895)
!4903 = !DILocation(line: 165, column: 35, scope: !2815, inlinedAt: !4895)
!4904 = !DILocation(line: 165, column: 33, scope: !2815, inlinedAt: !4895)
!4905 = !DILocation(line: 166, column: 61, scope: !2815, inlinedAt: !4895)
!4906 = !DILocation(line: 166, column: 59, scope: !2815, inlinedAt: !4895)
!4907 = !DILocation(line: 166, column: 29, scope: !2815, inlinedAt: !4895)
!4908 = !DILocation(line: 166, column: 27, scope: !2815, inlinedAt: !4895)
!4909 = !DILocation(line: 167, column: 14, scope: !2815, inlinedAt: !4895)
!4910 = !DILocation(line: 166, column: 12, scope: !2815, inlinedAt: !4895)
!4911 = !DILocation(line: 167, column: 12, scope: !2815, inlinedAt: !4895)
!4912 = !DILocation(line: 1562, column: 13, scope: !4890)
!4913 = !DILocation(line: 1564, column: 59, scope: !4890)
!4914 = !DILocation(line: 1564, column: 70, scope: !4890)
!4915 = !DILocation(line: 1564, column: 54, scope: !4890)
!4916 = !DILocation(line: 1564, column: 87, scope: !4890)
!4917 = !DILocation(line: 1564, column: 82, scope: !4890)
!4918 = !DILocation(line: 0, scope: !4444, inlinedAt: !4919)
!4919 = distinct !DILocation(line: 1564, column: 39, scope: !4890)
!4920 = !DILocation(line: 1564, column: 39, scope: !4890)
!4921 = !DILocation(line: 1220, column: 30, scope: !4444, inlinedAt: !4919)
!4922 = !DILocation(line: 1220, column: 21, scope: !4444, inlinedAt: !4919)
!4923 = !DILocation(line: 1220, column: 26, scope: !4444, inlinedAt: !4919)
!4924 = !DILocation(line: 0, scope: !4890)
!4925 = !DILocation(line: 1565, column: 48, scope: !4309)
!4926 = !DILocation(line: 0, scope: !3901, inlinedAt: !4927)
!4927 = distinct !DILocation(line: 1565, column: 9, scope: !4309)
!4928 = !DILocation(line: 719, column: 34, scope: !3901, inlinedAt: !4927)
!4929 = !DILocation(line: 719, column: 40, scope: !3901, inlinedAt: !4927)
!4930 = !DILocation(line: 719, column: 5, scope: !3901, inlinedAt: !4927)
!4931 = !DILocation(line: 720, column: 35, scope: !3901, inlinedAt: !4927)
!4932 = !DILocation(line: 720, column: 8, scope: !3901, inlinedAt: !4927)
!4933 = !DILocation(line: 720, column: 12, scope: !3901, inlinedAt: !4927)
!4934 = !DILocation(line: 720, column: 33, scope: !3901, inlinedAt: !4927)
!4935 = !DILocation(line: 721, column: 36, scope: !3901, inlinedAt: !4927)
!4936 = !DILocation(line: 721, column: 42, scope: !3901, inlinedAt: !4927)
!4937 = !DILocation(line: 721, column: 5, scope: !3901, inlinedAt: !4927)
!4938 = !DILocation(line: 0, scope: !4302)
!4939 = !DILocation(line: 1568, column: 1, scope: !4288)
!4940 = distinct !DISubprogram(name: "x264_ratecontrol_mb", scope: !2, file: !2, line: 879, type: !3902, scopeLine: 880, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !4941)
!4941 = !{!4942, !4943, !4944, !4945, !4946, !4951, !4952, !4956, !4957, !4958, !4959, !4960, !4961, !4962}
!4942 = !DILocalVariable(name: "h", arg: 1, scope: !4940, file: !2, line: 879, type: !380)
!4943 = !DILocalVariable(name: "bits", arg: 2, scope: !4940, file: !2, line: 879, type: !283)
!4944 = !DILocalVariable(name: "rc", scope: !4940, file: !2, line: 881, type: !1103)
!4945 = !DILocalVariable(name: "y", scope: !4940, file: !2, line: 882, type: !2702)
!4946 = !DILocalVariable(name: "i_estimated", scope: !4947, file: !2, line: 902, type: !283)
!4947 = distinct !DILexicalBlock(scope: !4948, file: !2, line: 901, column: 9)
!4948 = distinct !DILexicalBlock(scope: !4949, file: !2, line: 900, column: 13)
!4949 = distinct !DILexicalBlock(scope: !4950, file: !2, line: 896, column: 5)
!4950 = distinct !DILexicalBlock(scope: !4940, file: !2, line: 895, column: 9)
!4951 = !DILocalVariable(name: "avg_qp", scope: !4947, file: !2, line: 903, type: !283)
!4952 = !DILocalVariable(name: "prev_row_qp", scope: !4953, file: !2, line: 918, type: !283)
!4953 = distinct !DILexicalBlock(scope: !4954, file: !2, line: 917, column: 9)
!4954 = distinct !DILexicalBlock(scope: !4955, file: !2, line: 916, column: 13)
!4955 = distinct !DILexicalBlock(scope: !4950, file: !2, line: 912, column: 5)
!4956 = !DILocalVariable(name: "b0", scope: !4953, file: !2, line: 919, type: !283)
!4957 = !DILocalVariable(name: "b1", scope: !4953, file: !2, line: 920, type: !283)
!4958 = !DILocalVariable(name: "i_qp_max", scope: !4953, file: !2, line: 921, type: !283)
!4959 = !DILocalVariable(name: "i_qp_min", scope: !4953, file: !2, line: 922, type: !283)
!4960 = !DILocalVariable(name: "buffer_left_planned", scope: !4953, file: !2, line: 923, type: !284)
!4961 = !DILocalVariable(name: "rc_tol", scope: !4953, file: !2, line: 924, type: !284)
!4962 = !DILocalVariable(name: "headroom", scope: !4953, file: !2, line: 925, type: !284)
!4963 = !DILocation(line: 0, scope: !4940)
!4964 = !DILocation(line: 881, column: 33, scope: !4940)
!4965 = !DILocation(line: 882, column: 25, scope: !4940)
!4966 = !DILocation(line: 884, column: 5, scope: !4940)
!4967 = !DILocation(line: 886, column: 8, scope: !4940)
!4968 = !DILocation(line: 886, column: 14, scope: !4940)
!4969 = !DILocation(line: 886, column: 5, scope: !4940)
!4970 = !DILocation(line: 886, column: 28, scope: !4940)
!4971 = !DILocation(line: 887, column: 23, scope: !4940)
!4972 = !DILocation(line: 887, column: 9, scope: !4940)
!4973 = !DILocation(line: 888, column: 25, scope: !4940)
!4974 = !{!1563, !1565, i64 20512}
!4975 = !DILocation(line: 888, column: 19, scope: !4940)
!4976 = !DILocation(line: 887, column: 16, scope: !4940)
!4977 = !DILocation(line: 888, column: 16, scope: !4940)
!4978 = !DILocation(line: 890, column: 15, scope: !4979)
!4979 = distinct !DILexicalBlock(scope: !4940, file: !2, line: 890, column: 9)
!4980 = !DILocation(line: 890, column: 28, scope: !4979)
!4981 = !DILocation(line: 890, column: 33, scope: !4979)
!4982 = !DILocation(line: 890, column: 44, scope: !4979)
!4983 = !DILocation(line: 890, column: 22, scope: !4979)
!4984 = !DILocation(line: 890, column: 48, scope: !4979)
!4985 = !DILocation(line: 890, column: 56, scope: !4979)
!4986 = !DILocation(line: 890, column: 52, scope: !4979)
!4987 = !DILocation(line: 890, column: 9, scope: !4940)
!4988 = !DILocation(line: 893, column: 32, scope: !4940)
!4989 = !DILocation(line: 893, column: 14, scope: !4940)
!4990 = !{!1615, !1569, i64 6320}
!4991 = !DILocation(line: 893, column: 5, scope: !4940)
!4992 = !DILocation(line: 893, column: 26, scope: !4940)
!4993 = !DILocation(line: 895, column: 15, scope: !4950)
!4994 = !DILocation(line: 895, column: 22, scope: !4950)
!4995 = !DILocation(line: 895, column: 9, scope: !4940)
!4996 = !DILocation(line: 900, column: 25, scope: !4948)
!4997 = !DILocation(line: 900, column: 36, scope: !4948)
!4998 = !DILocation(line: 900, column: 15, scope: !4948)
!4999 = !DILocation(line: 900, column: 13, scope: !4949)
!5000 = !DILocation(line: 903, column: 26, scope: !4947)
!5001 = !DILocation(line: 904, column: 30, scope: !4947)
!5002 = !DILocation(line: 904, column: 47, scope: !4947)
!5003 = !DILocation(line: 904, column: 53, scope: !4947)
!5004 = !DILocation(line: 904, column: 60, scope: !4947)
!5005 = !DILocation(line: 904, column: 43, scope: !4947)
!5006 = !DILocation(line: 904, column: 40, scope: !4947)
!5007 = !DILocation(line: 904, column: 24, scope: !4947)
!5008 = !DILocation(line: 0, scope: !4947)
!5009 = !DILocation(line: 905, column: 23, scope: !4947)
!5010 = !DILocation(line: 905, column: 21, scope: !4947)
!5011 = !DILocalVariable(name: "h", arg: 1, scope: !5012, file: !2, line: 860, type: !380)
!5012 = distinct !DISubprogram(name: "row_bits_so_far", scope: !2, file: !2, line: 860, type: !5013, scopeLine: 861, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !5015)
!5013 = !DISubroutineType(types: !5014)
!5014 = !{!302, !380, !283}
!5015 = !{!5011, !5016, !5017, !5018}
!5016 = !DILocalVariable(name: "y", arg: 2, scope: !5012, file: !2, line: 860, type: !283)
!5017 = !DILocalVariable(name: "i", scope: !5012, file: !2, line: 862, type: !283)
!5018 = !DILocalVariable(name: "bits", scope: !5012, file: !2, line: 863, type: !302)
!5019 = !DILocation(line: 0, scope: !5012, inlinedAt: !5020)
!5020 = distinct !DILocation(line: 906, column: 27, scope: !4947)
!5021 = !DILocation(line: 864, column: 19, scope: !5022, inlinedAt: !5020)
!5022 = distinct !DILexicalBlock(scope: !5023, file: !2, line: 864, column: 5)
!5023 = distinct !DILexicalBlock(scope: !5012, file: !2, line: 864, column: 5)
!5024 = !DILocation(line: 864, column: 5, scope: !5023, inlinedAt: !5020)
!5025 = !DILocation(line: 864, column: 26, scope: !5022, inlinedAt: !5020)
!5026 = !DILocation(line: 865, column: 17, scope: !5022, inlinedAt: !5020)
!5027 = !DILocation(line: 865, column: 14, scope: !5022, inlinedAt: !5020)
!5028 = distinct !{!5028, !5024, !5029, !1639, !3702, !3703}
!5029 = !DILocation(line: 865, column: 38, scope: !5023, inlinedAt: !5020)
!5030 = distinct !{!5030, !5024, !5029, !1639, !3703, !3702}
!5031 = !DILocation(line: 906, column: 27, scope: !4947)
!5032 = !DILocation(line: 907, column: 17, scope: !5033)
!5033 = distinct !DILexicalBlock(scope: !4947, file: !2, line: 907, column: 17)
!5034 = !DILocation(line: 907, column: 34, scope: !5033)
!5035 = !DILocation(line: 907, column: 38, scope: !5033)
!5036 = !DILocation(line: 907, column: 29, scope: !5033)
!5037 = !DILocation(line: 907, column: 17, scope: !4947)
!5038 = !DILocation(line: 0, scope: !3901, inlinedAt: !5039)
!5039 = distinct !DILocation(line: 908, column: 17, scope: !5033)
!5040 = !DILocation(line: 719, column: 40, scope: !3901, inlinedAt: !5039)
!5041 = !DILocation(line: 719, column: 5, scope: !3901, inlinedAt: !5039)
!5042 = !DILocation(line: 908, column: 17, scope: !5033)
!5043 = !DILocation(line: 913, column: 55, scope: !4955)
!5044 = !DILocation(line: 0, scope: !2045, inlinedAt: !5045)
!5045 = distinct !DILocation(line: 913, column: 41, scope: !4955)
!5046 = !DILocation(line: 913, column: 70, scope: !4955)
!5047 = !{!1615, !1569, i64 6304}
!5048 = !DILocation(line: 913, column: 61, scope: !4955)
!5049 = !DILocalVariable(name: "p", arg: 1, scope: !5050, file: !2, line: 1223, type: !1129)
!5050 = distinct !DISubprogram(name: "update_predictor", scope: !2, file: !2, line: 1223, type: !5051, scopeLine: 1224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !5053)
!5051 = !DISubroutineType(types: !5052)
!5052 = !{null, !1129, !302, !302, !302}
!5053 = !{!5049, !5054, !5055, !5056}
!5054 = !DILocalVariable(name: "q", arg: 2, scope: !5050, file: !2, line: 1223, type: !302)
!5055 = !DILocalVariable(name: "var", arg: 3, scope: !5050, file: !2, line: 1223, type: !302)
!5056 = !DILocalVariable(name: "bits", arg: 4, scope: !5050, file: !2, line: 1223, type: !302)
!5057 = !DILocation(line: 0, scope: !5050, inlinedAt: !5058)
!5058 = distinct !DILocation(line: 913, column: 9, scope: !4955)
!5059 = !DILocation(line: 1225, column: 13, scope: !5060, inlinedAt: !5058)
!5060 = distinct !DILexicalBlock(scope: !5050, file: !2, line: 1225, column: 9)
!5061 = !DILocation(line: 1225, column: 9, scope: !5050, inlinedAt: !5058)
!5062 = !DILocation(line: 913, column: 85, scope: !4955)
!5063 = !DILocation(line: 913, column: 51, scope: !4955)
!5064 = !DILocation(line: 150, column: 42, scope: !2045, inlinedAt: !5045)
!5065 = !DILocation(line: 150, column: 19, scope: !2045, inlinedAt: !5045)
!5066 = !DILocation(line: 150, column: 17, scope: !2045, inlinedAt: !5045)
!5067 = !DILocation(line: 913, column: 31, scope: !4955)
!5068 = !DILocation(line: 1227, column: 20, scope: !5050, inlinedAt: !5058)
!5069 = !DILocation(line: 1230, column: 21, scope: !5050, inlinedAt: !5058)
!5070 = !DILocation(line: 1230, column: 24, scope: !5050, inlinedAt: !5058)
!5071 = !DILocation(line: 1228, column: 14, scope: !5050, inlinedAt: !5058)
!5072 = !DILocation(line: 1227, column: 14, scope: !5050, inlinedAt: !5058)
!5073 = !DILocation(line: 1229, column: 14, scope: !5050, inlinedAt: !5058)
!5074 = !DILocation(line: 1230, column: 14, scope: !5050, inlinedAt: !5058)
!5075 = !DILocation(line: 1231, column: 1, scope: !5050, inlinedAt: !5058)
!5076 = !DILocation(line: 916, column: 25, scope: !4954)
!5077 = !DILocation(line: 916, column: 36, scope: !4954)
!5078 = !DILocation(line: 916, column: 15, scope: !4954)
!5079 = !DILocation(line: 916, column: 39, scope: !4954)
!5080 = !DILocation(line: 916, column: 42, scope: !4954)
!5081 = !DILocation(line: 916, column: 78, scope: !4954)
!5082 = !DILocation(line: 916, column: 13, scope: !4955)
!5083 = !DILocation(line: 0, scope: !4953)
!5084 = !DILocation(line: 919, column: 22, scope: !4953)
!5085 = !DILocation(line: 921, column: 28, scope: !4953)
!5086 = !DILocation(line: 922, column: 28, scope: !4953)
!5087 = !DILocation(line: 923, column: 45, scope: !4953)
!5088 = !DILocation(line: 923, column: 63, scope: !4953)
!5089 = !DILocation(line: 0, scope: !5012, inlinedAt: !5090)
!5090 = distinct !DILocation(line: 929, column: 16, scope: !5091)
!5091 = distinct !DILexicalBlock(scope: !4953, file: !2, line: 929, column: 16)
!5092 = !DILocation(line: 864, column: 19, scope: !5022, inlinedAt: !5090)
!5093 = !DILocation(line: 864, column: 5, scope: !5023, inlinedAt: !5090)
!5094 = !DILocation(line: 864, column: 26, scope: !5022, inlinedAt: !5090)
!5095 = !DILocation(line: 865, column: 17, scope: !5022, inlinedAt: !5090)
!5096 = !DILocation(line: 865, column: 14, scope: !5022, inlinedAt: !5090)
!5097 = distinct !{!5097, !5093, !5098, !1639, !3702, !3703}
!5098 = !DILocation(line: 865, column: 38, scope: !5023, inlinedAt: !5090)
!5099 = distinct !{!5099, !5093, !5098, !1639, !3703, !3702}
!5100 = !DILocation(line: 929, column: 44, scope: !5091)
!5101 = !DILocation(line: 929, column: 37, scope: !5091)
!5102 = !DILocation(line: 929, column: 16, scope: !4953)
!5103 = !DILocation(line: 923, column: 57, scope: !4953)
!5104 = !DILocation(line: 923, column: 41, scope: !4953)
!5105 = !DILocation(line: 932, column: 24, scope: !4953)
!5106 = !DILocation(line: 932, column: 48, scope: !4953)
!5107 = !DILocation(line: 932, column: 43, scope: !4953)
!5108 = !DILocation(line: 933, column: 29, scope: !5109)
!5109 = distinct !DILexicalBlock(scope: !4953, file: !2, line: 933, column: 16)
!5110 = !DILocation(line: 933, column: 16, scope: !4953)
!5111 = !DILocation(line: 935, column: 20, scope: !4953)
!5112 = !DILocation(line: 937, column: 22, scope: !5113)
!5113 = distinct !DILexicalBlock(scope: !4953, file: !2, line: 937, column: 17)
!5114 = !DILocation(line: 937, column: 18, scope: !5113)
!5115 = !DILocation(line: 937, column: 17, scope: !4953)
!5116 = !DILocation(line: 938, column: 28, scope: !5113)
!5117 = !{!1563, !1565, i64 4684}
!5118 = !DILocation(line: 938, column: 17, scope: !5113)
!5119 = !DILocation(line: 940, column: 28, scope: !4953)
!5120 = !DILocation(line: 941, column: 20, scope: !4953)
!5121 = !DILocation(line: 941, column: 24, scope: !4953)
!5122 = !DILocation(line: 941, column: 27, scope: !4953)
!5123 = !DILocation(line: 942, column: 21, scope: !4953)
!5124 = !DILocation(line: 944, column: 25, scope: !5125)
!5125 = distinct !DILexicalBlock(scope: !4953, file: !2, line: 943, column: 13)
!5126 = !DILocation(line: 945, column: 22, scope: !5125)
!5127 = distinct !{!5127, !5128, !5129, !1639}
!5128 = !DILocation(line: 940, column: 13, scope: !4953)
!5129 = !DILocation(line: 946, column: 13, scope: !4953)
!5130 = !DILocation(line: 949, column: 29, scope: !4953)
!5131 = !DILocation(line: 950, column: 20, scope: !4953)
!5132 = !DILocation(line: 950, column: 42, scope: !4953)
!5133 = !DILocation(line: 950, column: 40, scope: !4953)
!5134 = !DILocation(line: 950, column: 45, scope: !4953)
!5135 = !DILocation(line: 949, column: 13, scope: !4953)
!5136 = !DILocation(line: 952, column: 25, scope: !5137)
!5137 = distinct !DILexicalBlock(scope: !4953, file: !2, line: 951, column: 13)
!5138 = !DILocation(line: 953, column: 22, scope: !5137)
!5139 = distinct !{!5139, !5135, !5140, !1639}
!5140 = !DILocation(line: 954, column: 13, scope: !4953)
!5141 = !DILocation(line: 956, column: 24, scope: !4953)
!5142 = !DILocation(line: 959, column: 47, scope: !4953)
!5143 = !DILocation(line: 959, column: 71, scope: !4953)
!5144 = !DILocation(line: 956, column: 28, scope: !4953)
!5145 = !DILocation(line: 957, column: 20, scope: !4953)
!5146 = !DILocation(line: 957, column: 33, scope: !4953)
!5147 = !DILocation(line: 957, column: 31, scope: !4953)
!5148 = !DILocation(line: 958, column: 20, scope: !4953)
!5149 = !DILocation(line: 958, column: 25, scope: !4953)
!5150 = !DILocation(line: 958, column: 28, scope: !4953)
!5151 = !DILocation(line: 958, column: 59, scope: !4953)
!5152 = !DILocation(line: 959, column: 65, scope: !4953)
!5153 = !DILocation(line: 959, column: 84, scope: !4953)
!5154 = !DILocation(line: 959, column: 28, scope: !4953)
!5155 = !DILocation(line: 956, column: 13, scope: !4953)
!5156 = !DILocation(line: 961, column: 25, scope: !5157)
!5157 = distinct !DILexicalBlock(scope: !4953, file: !2, line: 960, column: 13)
!5158 = !DILocation(line: 962, column: 22, scope: !5157)
!5159 = distinct !{!5159, !5155, !5160, !1639}
!5160 = !DILocation(line: 963, column: 13, scope: !4953)
!5161 = !DILocation(line: 0, scope: !3901, inlinedAt: !5162)
!5162 = distinct !DILocation(line: 964, column: 13, scope: !4953)
!5163 = !DILocation(line: 719, column: 34, scope: !3901, inlinedAt: !5162)
!5164 = !DILocation(line: 719, column: 40, scope: !3901, inlinedAt: !5162)
!5165 = !DILocation(line: 719, column: 5, scope: !3901, inlinedAt: !5162)
!5166 = !DILocation(line: 720, column: 35, scope: !3901, inlinedAt: !5162)
!5167 = !DILocation(line: 0, scope: !4950)
!5168 = !DILocation(line: 968, column: 21, scope: !4940)
!5169 = !DILocation(line: 968, column: 17, scope: !4940)
!5170 = !DILocation(line: 968, column: 15, scope: !4940)
!5171 = !DILocation(line: 969, column: 1, scope: !4940)
!5172 = distinct !DISubprogram(name: "predict_row_size_sum", scope: !2, file: !2, line: 869, type: !5173, scopeLine: 870, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !5175)
!5173 = !DISubroutineType(types: !5174)
!5174 = !{!302, !380, !283, !283}
!5175 = !{!5176, !5177, !5178, !5179, !5180}
!5176 = !DILocalVariable(name: "h", arg: 1, scope: !5172, file: !2, line: 869, type: !380)
!5177 = !DILocalVariable(name: "y", arg: 2, scope: !5172, file: !2, line: 869, type: !283)
!5178 = !DILocalVariable(name: "qp", arg: 3, scope: !5172, file: !2, line: 869, type: !283)
!5179 = !DILocalVariable(name: "i", scope: !5172, file: !2, line: 871, type: !283)
!5180 = !DILocalVariable(name: "bits", scope: !5172, file: !2, line: 872, type: !302)
!5181 = !DILocation(line: 0, scope: !5172)
!5182 = !DILocation(line: 0, scope: !5012, inlinedAt: !5183)
!5183 = distinct !DILocation(line: 872, column: 19, scope: !5172)
!5184 = !DILocation(line: 864, column: 19, scope: !5022, inlinedAt: !5183)
!5185 = !DILocation(line: 864, column: 5, scope: !5023, inlinedAt: !5183)
!5186 = !DILocation(line: 873, scope: !5187)
!5187 = distinct !DILexicalBlock(scope: !5172, file: !2, line: 873, column: 5)
!5188 = !DILocation(line: 864, column: 26, scope: !5022, inlinedAt: !5183)
!5189 = !DILocation(line: 865, column: 17, scope: !5022, inlinedAt: !5183)
!5190 = !DILocation(line: 865, column: 14, scope: !5022, inlinedAt: !5183)
!5191 = distinct !{!5191, !5185, !5192, !1639, !3702, !3703}
!5192 = !DILocation(line: 865, column: 38, scope: !5023, inlinedAt: !5183)
!5193 = distinct !{!5193, !5185, !5192, !1639, !3703, !3702}
!5194 = !DILocation(line: 873, column: 21, scope: !5195)
!5195 = distinct !DILexicalBlock(scope: !5187, file: !2, line: 873, column: 5)
!5196 = !DILocation(line: 873, column: 5, scope: !5187)
!5197 = !{!2132, !1585, i64 0}
!5198 = !{!2132, !1585, i64 8}
!5199 = !DILocation(line: 847, column: 9, scope: !5200, inlinedAt: !5209)
!5200 = distinct !DILexicalBlock(scope: !5201, file: !2, line: 846, column: 9)
!5201 = distinct !DISubprogram(name: "predict_row_size", scope: !2, file: !2, line: 839, type: !5173, scopeLine: 840, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !5202)
!5202 = !{!5203, !5204, !5205, !5206, !5207, !5208}
!5203 = !DILocalVariable(name: "h", arg: 1, scope: !5201, file: !2, line: 839, type: !380)
!5204 = !DILocalVariable(name: "y", arg: 2, scope: !5201, file: !2, line: 839, type: !283)
!5205 = !DILocalVariable(name: "qp", arg: 3, scope: !5201, file: !2, line: 839, type: !283)
!5206 = !DILocalVariable(name: "rc", scope: !5201, file: !2, line: 843, type: !1103)
!5207 = !DILocalVariable(name: "pred_s", scope: !5201, file: !2, line: 844, type: !302)
!5208 = !DILocalVariable(name: "pred_t", scope: !5201, file: !2, line: 845, type: !302)
!5209 = distinct !DILocation(line: 874, column: 17, scope: !5195)
!5210 = !DILocation(line: 844, column: 64, scope: !5201, inlinedAt: !5209)
!5211 = !DILocation(line: 857, column: 20, scope: !5201, inlinedAt: !5209)
!5212 = !DILocation(line: 857, column: 30, scope: !5201, inlinedAt: !5209)
!5213 = !DILocation(line: 874, column: 14, scope: !5195)
!5214 = distinct !{!5214, !5196, !5215, !1639, !3702, !3703}
!5215 = !DILocation(line: 874, column: 44, scope: !5187)
!5216 = !DILocation(line: 0, scope: !5201, inlinedAt: !5209)
!5217 = !DILocation(line: 0, scope: !2045, inlinedAt: !5218)
!5218 = distinct !DILocation(line: 844, column: 49, scope: !5201, inlinedAt: !5209)
!5219 = !DILocation(line: 0, scope: !4444, inlinedAt: !5220)
!5220 = distinct !DILocation(line: 844, column: 21, scope: !5201, inlinedAt: !5209)
!5221 = !DILocation(line: 1220, column: 21, scope: !4444, inlinedAt: !5220)
!5222 = distinct !{!5222, !5196, !5215, !1639, !3703, !3702}
!5223 = !DILocation(line: 848, column: 9, scope: !5200, inlinedAt: !5209)
!5224 = distinct !{!5224, !5196, !5215, !1639, !3702, !3703}
!5225 = !DILocation(line: 848, column: 12, scope: !5200, inlinedAt: !5209)
!5226 = !DILocation(line: 848, column: 39, scope: !5200, inlinedAt: !5209)
!5227 = !DILocation(line: 849, column: 9, scope: !5200, inlinedAt: !5209)
!5228 = !DILocation(line: 849, column: 44, scope: !5200, inlinedAt: !5209)
!5229 = !DILocation(line: 849, column: 13, scope: !5200, inlinedAt: !5209)
!5230 = !DILocation(line: 849, column: 94, scope: !5200, inlinedAt: !5209)
!5231 = !DILocation(line: 849, column: 70, scope: !5200, inlinedAt: !5209)
!5232 = !DILocation(line: 846, column: 9, scope: !5201, inlinedAt: !5209)
!5233 = !DILocation(line: 851, column: 31, scope: !5234, inlinedAt: !5209)
!5234 = distinct !DILexicalBlock(scope: !5200, file: !2, line: 850, column: 5)
!5235 = !DILocation(line: 851, column: 18, scope: !5234, inlinedAt: !5209)
!5236 = !DILocation(line: 851, column: 45, scope: !5234, inlinedAt: !5209)
!5237 = !DILocation(line: 851, column: 70, scope: !5234, inlinedAt: !5209)
!5238 = !DILocation(line: 852, column: 43, scope: !5234, inlinedAt: !5209)
!5239 = !DILocation(line: 852, column: 30, scope: !5234, inlinedAt: !5209)
!5240 = !DILocation(line: 0, scope: !2045, inlinedAt: !5241)
!5241 = distinct !DILocation(line: 852, column: 20, scope: !5234, inlinedAt: !5209)
!5242 = !DILocation(line: 150, column: 42, scope: !2045, inlinedAt: !5241)
!5243 = !DILocation(line: 150, column: 19, scope: !2045, inlinedAt: !5241)
!5244 = !DILocation(line: 150, column: 17, scope: !2045, inlinedAt: !5241)
!5245 = !DILocation(line: 852, column: 18, scope: !5234, inlinedAt: !5209)
!5246 = !DILocation(line: 0, scope: !2045, inlinedAt: !5247)
!5247 = distinct !DILocation(line: 852, column: 58, scope: !5234, inlinedAt: !5209)
!5248 = !DILocation(line: 853, column: 5, scope: !5234, inlinedAt: !5209)
!5249 = !DILocation(line: 854, column: 16, scope: !5250, inlinedAt: !5209)
!5250 = distinct !DILexicalBlock(scope: !5201, file: !2, line: 854, column: 9)
!5251 = !DILocation(line: 854, column: 9, scope: !5201, inlinedAt: !5209)
!5252 = distinct !{!5252, !5196, !5215, !1639}
!5253 = distinct !{!5253, !5196, !5215, !1639, !3703, !3702}
!5254 = !DILocation(line: 875, column: 5, scope: !5172)
!5255 = distinct !DISubprogram(name: "x264_ratecontrol_qp", scope: !2, file: !2, line: 971, type: !1754, scopeLine: 972, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !5256)
!5256 = !{!5257}
!5257 = !DILocalVariable(name: "h", arg: 1, scope: !5255, file: !2, line: 971, type: !380)
!5258 = !DILocation(line: 0, scope: !5255)
!5259 = !DILocation(line: 973, column: 15, scope: !5255)
!5260 = !DILocation(line: 973, column: 19, scope: !5255)
!5261 = !DILocation(line: 973, column: 5, scope: !5255)
!5262 = distinct !DISubprogram(name: "x264_ratecontrol_slice_type", scope: !2, file: !2, line: 977, type: !5263, scopeLine: 978, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !5265)
!5263 = !DISubroutineType(types: !5264)
!5264 = !{!283, !380, !283}
!5265 = !{!5266, !5267, !5268, !5269}
!5266 = !DILocalVariable(name: "h", arg: 1, scope: !5262, file: !2, line: 977, type: !380)
!5267 = !DILocalVariable(name: "frame_num", arg: 2, scope: !5262, file: !2, line: 977, type: !283)
!5268 = !DILocalVariable(name: "rc", scope: !5262, file: !2, line: 979, type: !1103)
!5269 = !DILocalVariable(name: "i", scope: !5270, file: !2, line: 987, type: !283)
!5270 = distinct !DILexicalBlock(scope: !5271, file: !2, line: 983, column: 9)
!5271 = distinct !DILexicalBlock(scope: !5272, file: !2, line: 982, column: 13)
!5272 = distinct !DILexicalBlock(scope: !5273, file: !2, line: 981, column: 5)
!5273 = distinct !DILexicalBlock(scope: !5262, file: !2, line: 980, column: 9)
!5274 = !DILocation(line: 0, scope: !5262)
!5275 = !DILocation(line: 979, column: 33, scope: !5262)
!5276 = !DILocation(line: 980, column: 21, scope: !5273)
!5277 = !DILocation(line: 980, column: 9, scope: !5273)
!5278 = !DILocation(line: 980, column: 9, scope: !5262)
!5279 = !DILocation(line: 982, column: 30, scope: !5271)
!5280 = !DILocation(line: 982, column: 23, scope: !5271)
!5281 = !DILocation(line: 982, column: 13, scope: !5272)
!5282 = !DILocation(line: 989, column: 50, scope: !5270)
!5283 = !DILocation(line: 989, column: 42, scope: !5270)
!5284 = !DILocation(line: 989, column: 78, scope: !5270)
!5285 = !DILocation(line: 989, column: 41, scope: !5270)
!5286 = !DILocation(line: 989, column: 25, scope: !5270)
!5287 = !DILocation(line: 989, column: 39, scope: !5270)
!5288 = !DILocation(line: 0, scope: !1722, inlinedAt: !5289)
!5289 = distinct !DILocation(line: 991, column: 45, scope: !5270)
!5290 = !DILocation(line: 110, column: 14, scope: !1722, inlinedAt: !5289)
!5291 = !DILocation(line: 990, column: 53, scope: !5270)
!5292 = !DILocation(line: 990, column: 45, scope: !5270)
!5293 = !DILocation(line: 990, column: 80, scope: !5270)
!5294 = !DILocation(line: 990, column: 78, scope: !5270)
!5295 = !DILocation(line: 990, column: 43, scope: !5270)
!5296 = !DILocation(line: 110, column: 17, scope: !1722, inlinedAt: !5289)
!5297 = !DILocation(line: 991, column: 17, scope: !5270)
!5298 = !DILocation(line: 991, column: 43, scope: !5270)
!5299 = !DILocation(line: 992, column: 98, scope: !5270)
!5300 = !DILocation(line: 992, column: 86, scope: !5270)
!5301 = !DILocation(line: 0, scope: !2045, inlinedAt: !5302)
!5302 = distinct !DILocation(line: 992, column: 75, scope: !5270)
!5303 = !DILocation(line: 150, column: 42, scope: !2045, inlinedAt: !5302)
!5304 = !DILocation(line: 150, column: 19, scope: !2045, inlinedAt: !5302)
!5305 = !DILocation(line: 992, column: 134, scope: !5270)
!5306 = !DILocation(line: 992, column: 116, scope: !5270)
!5307 = !DILocation(line: 0, scope: !3211, inlinedAt: !5308)
!5308 = distinct !DILocation(line: 992, column: 64, scope: !5270)
!5309 = !DILocation(line: 154, column: 35, scope: !3211, inlinedAt: !5308)
!5310 = !DILocation(line: 154, column: 25, scope: !3211, inlinedAt: !5308)
!5311 = !DILocation(line: 154, column: 42, scope: !3211, inlinedAt: !5308)
!5312 = !DILocation(line: 992, column: 149, scope: !5270)
!5313 = !DILocation(line: 992, column: 57, scope: !5270)
!5314 = !DILocation(line: 0, scope: !1722, inlinedAt: !5315)
!5315 = distinct !DILocation(line: 992, column: 45, scope: !5270)
!5316 = !DILocation(line: 110, column: 14, scope: !1722, inlinedAt: !5315)
!5317 = !DILocation(line: 992, column: 13, scope: !5270)
!5318 = !DILocation(line: 992, column: 43, scope: !5270)
!5319 = !DILocation(line: 993, column: 98, scope: !5270)
!5320 = !DILocation(line: 993, column: 86, scope: !5270)
!5321 = !DILocation(line: 0, scope: !2045, inlinedAt: !5322)
!5322 = distinct !DILocation(line: 993, column: 75, scope: !5270)
!5323 = !DILocation(line: 150, column: 42, scope: !2045, inlinedAt: !5322)
!5324 = !DILocation(line: 150, column: 19, scope: !2045, inlinedAt: !5322)
!5325 = !DILocation(line: 993, column: 134, scope: !5270)
!5326 = !DILocation(line: 993, column: 116, scope: !5270)
!5327 = !DILocation(line: 0, scope: !3211, inlinedAt: !5328)
!5328 = distinct !DILocation(line: 993, column: 64, scope: !5270)
!5329 = !DILocation(line: 154, column: 35, scope: !3211, inlinedAt: !5328)
!5330 = !DILocation(line: 154, column: 25, scope: !3211, inlinedAt: !5328)
!5331 = !DILocation(line: 154, column: 42, scope: !3211, inlinedAt: !5328)
!5332 = !DILocation(line: 993, column: 149, scope: !5270)
!5333 = !DILocation(line: 993, column: 57, scope: !5270)
!5334 = !DILocation(line: 0, scope: !1722, inlinedAt: !5335)
!5335 = distinct !DILocation(line: 993, column: 45, scope: !5270)
!5336 = !DILocation(line: 110, column: 14, scope: !1722, inlinedAt: !5335)
!5337 = !DILocation(line: 993, column: 13, scope: !5270)
!5338 = !DILocation(line: 993, column: 43, scope: !5270)
!5339 = !DILocation(line: 995, column: 13, scope: !5270)
!5340 = !DILocation(line: 996, column: 95, scope: !5270)
!5341 = !DILocation(line: 996, column: 13, scope: !5270)
!5342 = !DILocation(line: 997, column: 26, scope: !5343)
!5343 = distinct !DILexicalBlock(scope: !5270, file: !2, line: 997, column: 17)
!5344 = !DILocation(line: 997, column: 17, scope: !5343)
!5345 = !DILocation(line: 997, column: 17, scope: !5270)
!5346 = !DILocation(line: 998, column: 17, scope: !5343)
!5347 = !DILocation(line: 0, scope: !5270)
!5348 = !DILocation(line: 1000, column: 27, scope: !5349)
!5349 = distinct !DILexicalBlock(scope: !5350, file: !2, line: 1000, column: 13)
!5350 = distinct !DILexicalBlock(scope: !5270, file: !2, line: 1000, column: 13)
!5351 = !DILocation(line: 1000, column: 13, scope: !5350)
!5352 = !DILocation(line: 1002, column: 17, scope: !5353)
!5353 = distinct !DILexicalBlock(scope: !5349, file: !2, line: 1001, column: 13)
!5354 = !DILocation(line: 1002, column: 31, scope: !5353)
!5355 = !DILocation(line: 1002, column: 41, scope: !5353)
!5356 = !DILocation(line: 1003, column: 35, scope: !5353)
!5357 = !DILocation(line: 1003, column: 43, scope: !5353)
!5358 = !DILocation(line: 1004, column: 37, scope: !5353)
!5359 = !DILocation(line: 1004, column: 52, scope: !5353)
!5360 = !DILocation(line: 1005, column: 40, scope: !5353)
!5361 = !DILocation(line: 1005, column: 52, scope: !5353)
!5362 = !DILocation(line: 1006, column: 37, scope: !5353)
!5363 = !DILocation(line: 1006, column: 55, scope: !5353)
!5364 = !DILocation(line: 1007, column: 37, scope: !5353)
!5365 = !DILocation(line: 1007, column: 52, scope: !5353)
!5366 = !DILocation(line: 1008, column: 37, scope: !5353)
!5367 = !DILocation(line: 1008, column: 58, scope: !5353)
!5368 = !DILocation(line: 1009, column: 41, scope: !5369)
!5369 = distinct !DILexicalBlock(scope: !5353, file: !2, line: 1009, column: 21)
!5370 = !DILocation(line: 1009, column: 50, scope: !5369)
!5371 = !DILocation(line: 1009, column: 21, scope: !5353)
!5372 = !DILocation(line: 1010, column: 50, scope: !5369)
!5373 = !DILocation(line: 1010, column: 21, scope: !5369)
!5374 = !DILocation(line: 1000, column: 50, scope: !5349)
!5375 = distinct !{!5375, !5351, !5376, !1639}
!5376 = !DILocation(line: 1011, column: 13, scope: !5350)
!5377 = !DILocation(line: 1014, column: 21, scope: !5272)
!5378 = !DILocation(line: 1014, column: 17, scope: !5272)
!5379 = !DILocation(line: 1014, column: 38, scope: !5272)
!5380 = !DILocation(line: 1014, column: 9, scope: !5272)
!5381 = !DILocation(line: 1017, column: 45, scope: !5382)
!5382 = distinct !DILexicalBlock(scope: !5272, file: !2, line: 1015, column: 9)
!5383 = !DILocation(line: 1017, column: 24, scope: !5382)
!5384 = !DILocation(line: 1017, column: 17, scope: !5382)
!5385 = !DILocation(line: 1020, column: 45, scope: !5382)
!5386 = !DILocation(line: 1020, column: 24, scope: !5382)
!5387 = !DILocation(line: 1020, column: 17, scope: !5382)
!5388 = !DILocation(line: 0, scope: !5273)
!5389 = !DILocation(line: 1031, column: 1, scope: !5262)
!5390 = distinct !DISubprogram(name: "x264_ratecontrol_end", scope: !2, file: !2, line: 1034, type: !3902, scopeLine: 1035, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !5391)
!5391 = !{!5392, !5393, !5394, !5395, !5397, !5398, !5401, !5402, !5403}
!5392 = !DILocalVariable(name: "h", arg: 1, scope: !5390, file: !2, line: 1034, type: !380)
!5393 = !DILocalVariable(name: "bits", arg: 2, scope: !5390, file: !2, line: 1034, type: !283)
!5394 = !DILocalVariable(name: "rc", scope: !5390, file: !2, line: 1036, type: !1103)
!5395 = !DILocalVariable(name: "mbs", scope: !5390, file: !2, line: 1037, type: !5396)
!5396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2702, size: 64)
!5397 = !DILocalVariable(name: "i", scope: !5390, file: !2, line: 1038, type: !283)
!5398 = !DILocalVariable(name: "c_type", scope: !5399, file: !2, line: 1053, type: !4)
!5399 = distinct !DILexicalBlock(scope: !5400, file: !2, line: 1052, column: 5)
!5400 = distinct !DILexicalBlock(scope: !5390, file: !2, line: 1051, column: 9)
!5401 = !DILocalVariable(name: "dir_frame", scope: !5399, file: !2, line: 1056, type: !283)
!5402 = !DILocalVariable(name: "dir_avg", scope: !5399, file: !2, line: 1057, type: !283)
!5403 = !DILocalVariable(name: "c_direct", scope: !5399, file: !2, line: 1058, type: !4)
!5404 = !DILocation(line: 0, scope: !5390)
!5405 = !DILocation(line: 1036, column: 33, scope: !5390)
!5406 = !DILocation(line: 1037, column: 36, scope: !5390)
!5407 = !DILocation(line: 1040, column: 5, scope: !5390)
!5408 = !DILocation(line: 1042, column: 37, scope: !5390)
!5409 = !DILocation(line: 1042, column: 51, scope: !5390)
!5410 = !DILocation(line: 1042, column: 49, scope: !5390)
!5411 = !DILocation(line: 1042, column: 19, scope: !5390)
!5412 = !DILocation(line: 1042, column: 35, scope: !5390)
!5413 = !{!1563, !1565, i64 21000}
!5414 = !DILocation(line: 1043, column: 34, scope: !5390)
!5415 = !DILocation(line: 1043, column: 49, scope: !5390)
!5416 = !DILocation(line: 1043, column: 47, scope: !5390)
!5417 = !DILocation(line: 1043, column: 62, scope: !5390)
!5418 = !DILocation(line: 1043, column: 60, scope: !5390)
!5419 = !DILocation(line: 1043, column: 19, scope: !5390)
!5420 = !DILocation(line: 1043, column: 32, scope: !5390)
!5421 = !{!1563, !1565, i64 20992}
!5422 = !DILocation(line: 1044, column: 34, scope: !5390)
!5423 = !DILocation(line: 1044, column: 46, scope: !5390)
!5424 = !DILocation(line: 1044, column: 44, scope: !5390)
!5425 = !DILocation(line: 1044, column: 19, scope: !5390)
!5426 = !DILocation(line: 1046, column: 39, scope: !5427)
!5427 = distinct !DILexicalBlock(scope: !5428, file: !2, line: 1045, column: 5)
!5428 = distinct !DILexicalBlock(scope: !5390, file: !2, line: 1045, column: 5)
!5429 = !DILocation(line: 1046, column: 36, scope: !5427)
!5430 = !{!1563, !1565, i64 20996}
!5431 = !DILocation(line: 1037, column: 25, scope: !5390)
!5432 = !DILocation(line: 1048, column: 45, scope: !5390)
!5433 = !DILocation(line: 1048, column: 48, scope: !5390)
!5434 = !DILocation(line: 1048, column: 42, scope: !5390)
!5435 = !DILocation(line: 1048, column: 32, scope: !5390)
!5436 = !DILocation(line: 1048, column: 8, scope: !5390)
!5437 = !DILocation(line: 1048, column: 14, scope: !5390)
!5438 = !DILocation(line: 1048, column: 39, scope: !5390)
!5439 = !DILocation(line: 1049, column: 39, scope: !5390)
!5440 = !DILocation(line: 1048, column: 26, scope: !5390)
!5441 = !DILocation(line: 1049, column: 14, scope: !5390)
!5442 = !DILocation(line: 1049, column: 26, scope: !5390)
!5443 = !DILocation(line: 1051, column: 21, scope: !5400)
!5444 = !DILocation(line: 1051, column: 9, scope: !5400)
!5445 = !DILocation(line: 1051, column: 9, scope: !5390)
!5446 = !DILocation(line: 1053, column: 29, scope: !5399)
!5447 = !DILocation(line: 1053, column: 23, scope: !5399)
!5448 = !DILocation(line: 1053, column: 56, scope: !5399)
!5449 = !DILocation(line: 1053, column: 62, scope: !5399)
!5450 = !DILocation(line: 1053, column: 67, scope: !5399)
!5451 = !DILocation(line: 1053, column: 53, scope: !5399)
!5452 = !DILocation(line: 1055, column: 26, scope: !5399)
!5453 = !DILocation(line: 1055, column: 32, scope: !5399)
!5454 = !DILocation(line: 1055, column: 23, scope: !5399)
!5455 = !DILocation(line: 1054, column: 23, scope: !5399)
!5456 = !DILocation(line: 0, scope: !5399)
!5457 = !DILocation(line: 1056, column: 39, scope: !5399)
!5458 = !DILocation(line: 1056, column: 25, scope: !5399)
!5459 = !DILocation(line: 1056, column: 59, scope: !5399)
!5460 = !DILocation(line: 1056, column: 57, scope: !5399)
!5461 = !DILocation(line: 1057, column: 31, scope: !5399)
!5462 = !DILocation(line: 1057, column: 23, scope: !5399)
!5463 = !DILocation(line: 1057, column: 51, scope: !5399)
!5464 = !DILocation(line: 1058, column: 31, scope: !5399)
!5465 = !{!1563, !1565, i64 20540}
!5466 = !DILocation(line: 1058, column: 25, scope: !5399)
!5467 = !DILocation(line: 1059, column: 36, scope: !5399)
!5468 = !DILocation(line: 1059, column: 27, scope: !5399)
!5469 = !DILocation(line: 1059, column: 56, scope: !5399)
!5470 = !DILocation(line: 1059, column: 47, scope: !5399)
!5471 = !DILocation(line: 1060, column: 34, scope: !5399)
!5472 = !DILocation(line: 1060, column: 27, scope: !5399)
!5473 = !DILocation(line: 1060, column: 52, scope: !5399)
!5474 = !DILocation(line: 1062, column: 22, scope: !5399)
!5475 = !DILocation(line: 1064, column: 21, scope: !5399)
!5476 = !DILocation(line: 1064, column: 27, scope: !5399)
!5477 = !DILocation(line: 1064, column: 39, scope: !5399)
!5478 = !DILocation(line: 1065, column: 26, scope: !5399)
!5479 = !DILocation(line: 1066, column: 32, scope: !5399)
!5480 = !{!1563, !1565, i64 20908}
!5481 = !DILocation(line: 1067, column: 32, scope: !5399)
!5482 = !{!1563, !1565, i64 20904}
!5483 = !DILocation(line: 1068, column: 32, scope: !5399)
!5484 = !{!1563, !1565, i64 20912}
!5485 = !DILocation(line: 1062, column: 9, scope: !5399)
!5486 = !DILocation(line: 1073, column: 5, scope: !5399)
!5487 = !DILocation(line: 1075, column: 13, scope: !5488)
!5488 = distinct !DILexicalBlock(scope: !5390, file: !2, line: 1075, column: 9)
!5489 = !DILocation(line: 1075, column: 9, scope: !5488)
!5490 = !DILocation(line: 1075, column: 9, scope: !5390)
!5491 = !DILocation(line: 1077, column: 19, scope: !5492)
!5492 = distinct !DILexicalBlock(scope: !5493, file: !2, line: 1077, column: 13)
!5493 = distinct !DILexicalBlock(scope: !5488, file: !2, line: 1076, column: 5)
!5494 = !DILocation(line: 1077, column: 26, scope: !5492)
!5495 = !DILocation(line: 0, scope: !5492)
!5496 = !{!1702, !1571, i64 84}
!5497 = !DILocation(line: 0, scope: !2045, inlinedAt: !5498)
!5498 = distinct !DILocation(line: 1083, column: 37, scope: !5499)
!5499 = distinct !DILexicalBlock(scope: !5492, file: !2, line: 1080, column: 9)
!5500 = !DILocation(line: 0, scope: !2045, inlinedAt: !5501)
!5501 = distinct !DILocation(line: 1078, column: 37, scope: !5492)
!5502 = !DILocation(line: 1077, column: 13, scope: !5493)
!5503 = !DILocation(line: 1083, column: 95, scope: !5499)
!5504 = !DILocation(line: 1083, column: 78, scope: !5499)
!5505 = !DILocation(line: 1083, column: 76, scope: !5499)
!5506 = !DILocation(line: 1085, column: 30, scope: !5493)
!5507 = !DILocation(line: 1085, column: 13, scope: !5493)
!5508 = !DILocation(line: 1085, column: 23, scope: !5493)
!5509 = !DILocation(line: 1086, column: 39, scope: !5493)
!5510 = !DILocation(line: 1086, column: 53, scope: !5493)
!5511 = !DILocation(line: 1086, column: 47, scope: !5493)
!5512 = !DILocation(line: 1086, column: 13, scope: !5493)
!5513 = !DILocation(line: 1086, column: 32, scope: !5493)
!5514 = !DILocation(line: 1087, column: 32, scope: !5493)
!5515 = !DILocation(line: 1089, column: 22, scope: !5516)
!5516 = distinct !DILexicalBlock(scope: !5493, file: !2, line: 1089, column: 13)
!5517 = !DILocation(line: 1089, column: 32, scope: !5516)
!5518 = !DILocation(line: 1089, column: 13, scope: !5493)
!5519 = !DILocation(line: 1090, column: 13, scope: !5516)
!5520 = !DILocation(line: 0, scope: !4257, inlinedAt: !5521)
!5521 = distinct !DILocation(line: 1090, column: 13, scope: !5516)
!5522 = !DILocation(line: 736, column: 9, scope: !4257, inlinedAt: !5521)
!5523 = !DILocation(line: 736, column: 22, scope: !4257, inlinedAt: !5521)
!5524 = !DILocation(line: 737, column: 9, scope: !4257, inlinedAt: !5521)
!5525 = !DILocation(line: 737, column: 22, scope: !4257, inlinedAt: !5521)
!5526 = !DILocation(line: 738, column: 22, scope: !4257, inlinedAt: !5521)
!5527 = !DILocation(line: 739, column: 22, scope: !4271, inlinedAt: !5521)
!5528 = !DILocation(line: 0, scope: !4271, inlinedAt: !5521)
!5529 = !DILocation(line: 739, column: 9, scope: !4257, inlinedAt: !5521)
!5530 = !DILocation(line: 740, column: 36, scope: !4271, inlinedAt: !5521)
!5531 = !DILocation(line: 740, column: 30, scope: !4271, inlinedAt: !5521)
!5532 = !DILocation(line: 740, column: 9, scope: !4271, inlinedAt: !5521)
!5533 = !DILocation(line: 1093, column: 13, scope: !5534)
!5534 = distinct !DILexicalBlock(scope: !5390, file: !2, line: 1093, column: 9)
!5535 = !DILocation(line: 1093, column: 9, scope: !5534)
!5536 = !DILocation(line: 1093, column: 9, scope: !5390)
!5537 = !DILocation(line: 1095, column: 51, scope: !5538)
!5538 = distinct !DILexicalBlock(scope: !5534, file: !2, line: 1094, column: 5)
!5539 = !DILocation(line: 1095, column: 75, scope: !5538)
!5540 = !DILocation(line: 1095, column: 66, scope: !5538)
!5541 = !DILocation(line: 0, scope: !2045, inlinedAt: !5542)
!5542 = distinct !DILocation(line: 1095, column: 56, scope: !5538)
!5543 = !DILocation(line: 150, column: 42, scope: !2045, inlinedAt: !5542)
!5544 = !DILocation(line: 150, column: 19, scope: !2045, inlinedAt: !5542)
!5545 = !DILocation(line: 150, column: 17, scope: !2045, inlinedAt: !5542)
!5546 = !DILocation(line: 0, scope: !2815, inlinedAt: !5547)
!5547 = distinct !DILocation(line: 1095, column: 34, scope: !5538)
!5548 = !DILocation(line: 163, column: 14, scope: !2980, inlinedAt: !5547)
!5549 = !DILocation(line: 163, column: 8, scope: !2815, inlinedAt: !5547)
!5550 = !DILocation(line: 165, column: 18, scope: !2815, inlinedAt: !5547)
!5551 = !DILocation(line: 165, column: 45, scope: !2815, inlinedAt: !5547)
!5552 = !DILocation(line: 166, column: 19, scope: !2815, inlinedAt: !5547)
!5553 = !DILocation(line: 166, column: 34, scope: !2815, inlinedAt: !5547)
!5554 = !DILocation(line: 166, column: 14, scope: !2815, inlinedAt: !5547)
!5555 = !DILocation(line: 165, column: 52, scope: !2815, inlinedAt: !5547)
!5556 = !DILocation(line: 165, column: 35, scope: !2815, inlinedAt: !5547)
!5557 = !DILocation(line: 166, column: 61, scope: !2815, inlinedAt: !5547)
!5558 = !DILocation(line: 166, column: 59, scope: !2815, inlinedAt: !5547)
!5559 = !DILocation(line: 166, column: 29, scope: !2815, inlinedAt: !5547)
!5560 = !DILocation(line: 166, column: 27, scope: !2815, inlinedAt: !5547)
!5561 = !DILocation(line: 1095, column: 13, scope: !5538)
!5562 = !DILocation(line: 1095, column: 31, scope: !5538)
!5563 = !DILocation(line: 167, column: 14, scope: !2815, inlinedAt: !5547)
!5564 = !DILocation(line: 165, column: 27, scope: !2815, inlinedAt: !5547)
!5565 = !DILocation(line: 166, column: 12, scope: !2815, inlinedAt: !5547)
!5566 = !DILocation(line: 165, column: 33, scope: !2815, inlinedAt: !5547)
!5567 = !DILocation(line: 167, column: 12, scope: !2815, inlinedAt: !5547)
!5568 = !DILocation(line: 1096, column: 5, scope: !5538)
!5569 = !DILocation(line: 1098, column: 15, scope: !5570)
!5570 = distinct !DILexicalBlock(scope: !5390, file: !2, line: 1098, column: 9)
!5571 = !DILocation(line: 1098, column: 9, scope: !5570)
!5572 = !DILocation(line: 1098, column: 9, scope: !5390)
!5573 = !DILocation(line: 1100, column: 19, scope: !5574)
!5574 = distinct !DILexicalBlock(scope: !5575, file: !2, line: 1100, column: 13)
!5575 = distinct !DILexicalBlock(scope: !5570, file: !2, line: 1099, column: 5)
!5576 = !DILocation(line: 1100, column: 26, scope: !5574)
!5577 = !DILocation(line: 1100, column: 13, scope: !5575)
!5578 = !DILocation(line: 1102, column: 17, scope: !5579)
!5579 = distinct !DILexicalBlock(scope: !5574, file: !2, line: 1101, column: 9)
!5580 = !DILocation(line: 1102, column: 29, scope: !5579)
!5581 = !{!1702, !1565, i64 580}
!5582 = !DILocation(line: 1103, column: 21, scope: !5583)
!5583 = distinct !DILexicalBlock(scope: !5579, file: !2, line: 1103, column: 17)
!5584 = !DILocation(line: 1103, column: 18, scope: !5583)
!5585 = !DILocation(line: 1103, column: 39, scope: !5583)
!5586 = !DILocation(line: 1103, column: 43, scope: !5583)
!5587 = !DILocation(line: 0, scope: !2045, inlinedAt: !5588)
!5588 = distinct !DILocation(line: 1105, column: 54, scope: !5589)
!5589 = distinct !DILexicalBlock(scope: !5583, file: !2, line: 1104, column: 13)
!5590 = !DILocation(line: 1106, column: 47, scope: !5589)
!5591 = !DILocation(line: 1106, column: 53, scope: !5589)
!5592 = !DILocation(line: 1106, column: 35, scope: !5589)
!5593 = !DILocation(line: 1106, column: 58, scope: !5589)
!5594 = !DILocation(line: 0, scope: !5050, inlinedAt: !5595)
!5595 = distinct !DILocation(line: 1105, column: 17, scope: !5589)
!5596 = !DILocation(line: 1225, column: 13, scope: !5060, inlinedAt: !5595)
!5597 = !DILocation(line: 1225, column: 9, scope: !5050, inlinedAt: !5595)
!5598 = !DILocation(line: 1106, column: 88, scope: !5589)
!5599 = !DILocation(line: 1106, column: 82, scope: !5589)
!5600 = !DILocation(line: 1106, column: 66, scope: !5589)
!5601 = !DILocation(line: 1105, column: 68, scope: !5589)
!5602 = !DILocation(line: 1105, column: 64, scope: !5589)
!5603 = !DILocation(line: 150, column: 42, scope: !2045, inlinedAt: !5588)
!5604 = !DILocation(line: 150, column: 19, scope: !2045, inlinedAt: !5588)
!5605 = !DILocation(line: 1105, column: 39, scope: !5589)
!5606 = !DILocation(line: 1227, column: 20, scope: !5050, inlinedAt: !5595)
!5607 = !DILocation(line: 150, column: 17, scope: !2045, inlinedAt: !5588)
!5608 = !DILocation(line: 1230, column: 21, scope: !5050, inlinedAt: !5595)
!5609 = !DILocation(line: 1230, column: 24, scope: !5050, inlinedAt: !5595)
!5610 = !DILocation(line: 1228, column: 14, scope: !5050, inlinedAt: !5595)
!5611 = !DILocation(line: 1227, column: 14, scope: !5050, inlinedAt: !5595)
!5612 = !DILocation(line: 1229, column: 14, scope: !5050, inlinedAt: !5595)
!5613 = !DILocation(line: 1230, column: 14, scope: !5050, inlinedAt: !5595)
!5614 = !DILocation(line: 1231, column: 1, scope: !5050, inlinedAt: !5595)
!5615 = !DILocation(line: 1107, column: 33, scope: !5589)
!5616 = !DILocation(line: 1108, column: 13, scope: !5589)
!5617 = !DILocalVariable(name: "h", arg: 1, scope: !5618, file: !2, line: 1234, type: !380)
!5618 = distinct !DISubprogram(name: "update_vbv", scope: !2, file: !2, line: 1234, type: !3902, scopeLine: 1235, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !5619)
!5619 = !{!5617, !5620, !5621, !5622}
!5620 = !DILocalVariable(name: "bits", arg: 2, scope: !5618, file: !2, line: 1234, type: !283)
!5621 = !DILocalVariable(name: "rcc", scope: !5618, file: !2, line: 1236, type: !1103)
!5622 = !DILocalVariable(name: "rct", scope: !5618, file: !2, line: 1237, type: !1103)
!5623 = !DILocation(line: 0, scope: !5618, inlinedAt: !5624)
!5624 = distinct !DILocation(line: 1112, column: 5, scope: !5390)
!5625 = !DILocation(line: 1236, column: 34, scope: !5618, inlinedAt: !5624)
!5626 = !DILocation(line: 1237, column: 34, scope: !5618, inlinedAt: !5624)
!5627 = !DILocation(line: 1237, column: 31, scope: !5618, inlinedAt: !5624)
!5628 = !DILocation(line: 1237, column: 45, scope: !5618, inlinedAt: !5624)
!5629 = !DILocation(line: 1239, column: 14, scope: !5630, inlinedAt: !5624)
!5630 = distinct !DILexicalBlock(scope: !5618, file: !2, line: 1239, column: 9)
!5631 = !DILocation(line: 1239, column: 33, scope: !5630, inlinedAt: !5624)
!5632 = !DILocation(line: 1239, column: 24, scope: !5630, inlinedAt: !5624)
!5633 = !DILocation(line: 1239, column: 9, scope: !5618, inlinedAt: !5624)
!5634 = !DILocation(line: 0, scope: !2045, inlinedAt: !5635)
!5635 = distinct !DILocation(line: 1240, column: 53, scope: !5630, inlinedAt: !5624)
!5636 = !DILocation(line: 0, scope: !5050, inlinedAt: !5637)
!5637 = distinct !DILocation(line: 1240, column: 9, scope: !5630, inlinedAt: !5624)
!5638 = !DILocation(line: 1240, column: 77, scope: !5630, inlinedAt: !5624)
!5639 = !DILocation(line: 1240, column: 93, scope: !5630, inlinedAt: !5624)
!5640 = !DILocation(line: 1240, column: 68, scope: !5630, inlinedAt: !5624)
!5641 = !DILocation(line: 1240, column: 63, scope: !5630, inlinedAt: !5624)
!5642 = !DILocation(line: 150, column: 42, scope: !2045, inlinedAt: !5635)
!5643 = !DILocation(line: 150, column: 19, scope: !2045, inlinedAt: !5635)
!5644 = !DILocation(line: 1240, column: 33, scope: !5630, inlinedAt: !5624)
!5645 = !DILocation(line: 1240, column: 44, scope: !5630, inlinedAt: !5624)
!5646 = !DILocation(line: 1240, column: 28, scope: !5630, inlinedAt: !5624)
!5647 = !DILocation(line: 1227, column: 20, scope: !5050, inlinedAt: !5637)
!5648 = !DILocation(line: 150, column: 17, scope: !2045, inlinedAt: !5635)
!5649 = !DILocation(line: 1230, column: 21, scope: !5050, inlinedAt: !5637)
!5650 = !DILocation(line: 1230, column: 24, scope: !5050, inlinedAt: !5637)
!5651 = !DILocation(line: 1228, column: 14, scope: !5050, inlinedAt: !5637)
!5652 = !DILocation(line: 1227, column: 14, scope: !5050, inlinedAt: !5637)
!5653 = !DILocation(line: 1229, column: 14, scope: !5050, inlinedAt: !5637)
!5654 = !DILocation(line: 1230, column: 14, scope: !5050, inlinedAt: !5637)
!5655 = !DILocation(line: 1231, column: 1, scope: !5050, inlinedAt: !5637)
!5656 = !DILocation(line: 1242, column: 15, scope: !5657, inlinedAt: !5624)
!5657 = distinct !DILexicalBlock(scope: !5618, file: !2, line: 1242, column: 9)
!5658 = !DILocation(line: 1242, column: 10, scope: !5657, inlinedAt: !5624)
!5659 = !DILocation(line: 1242, column: 9, scope: !5618, inlinedAt: !5624)
!5660 = !DILocation(line: 1245, column: 36, scope: !5618, inlinedAt: !5624)
!5661 = !DILocation(line: 1245, column: 50, scope: !5618, inlinedAt: !5624)
!5662 = !DILocation(line: 1245, column: 48, scope: !5618, inlinedAt: !5624)
!5663 = !DILocation(line: 1245, column: 10, scope: !5618, inlinedAt: !5624)
!5664 = !DILocation(line: 1245, column: 28, scope: !5618, inlinedAt: !5624)
!5665 = !DILocation(line: 1246, column: 32, scope: !5666, inlinedAt: !5624)
!5666 = distinct !DILexicalBlock(scope: !5618, file: !2, line: 1246, column: 9)
!5667 = !DILocation(line: 1246, column: 9, scope: !5618, inlinedAt: !5624)
!5668 = !DILocation(line: 1247, column: 9, scope: !5666, inlinedAt: !5624)
!5669 = !DILocation(line: 1248, column: 48, scope: !5618, inlinedAt: !5624)
!5670 = !DILocation(line: 1248, column: 75, scope: !5618, inlinedAt: !5624)
!5671 = !DILocation(line: 0, scope: !1921, inlinedAt: !5672)
!5672 = distinct !DILocation(line: 1248, column: 30, scope: !5618, inlinedAt: !5624)
!5673 = !DILocation(line: 115, column: 17, scope: !1921, inlinedAt: !5672)
!5674 = !DILocation(line: 115, column: 14, scope: !1921, inlinedAt: !5672)
!5675 = !DILocation(line: 1248, column: 28, scope: !5618, inlinedAt: !5624)
!5676 = !DILocation(line: 1249, column: 1, scope: !5618, inlinedAt: !5624)
!5677 = !DILocation(line: 1113, column: 1, scope: !5390)
!5678 = distinct !DISubprogram(name: "x264_thread_sync_ratecontrol", scope: !2, file: !2, line: 1570, type: !5679, scopeLine: 1571, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !5681)
!5679 = !DISubroutineType(types: !5680)
!5680 = !{null, !380, !380, !380}
!5681 = !{!5682, !5683, !5684}
!5682 = !DILocalVariable(name: "cur", arg: 1, scope: !5678, file: !2, line: 1570, type: !380)
!5683 = !DILocalVariable(name: "prev", arg: 2, scope: !5678, file: !2, line: 1570, type: !380)
!5684 = !DILocalVariable(name: "next", arg: 3, scope: !5678, file: !2, line: 1570, type: !380)
!5685 = !DILocation(line: 0, scope: !5678)
!5686 = !DILocation(line: 1572, column: 13, scope: !5687)
!5687 = distinct !DILexicalBlock(scope: !5678, file: !2, line: 1572, column: 9)
!5688 = !DILocation(line: 1572, column: 9, scope: !5678)
!5689 = !DILocation(line: 1579, column: 9, scope: !5690)
!5690 = distinct !DILexicalBlock(scope: !5687, file: !2, line: 1573, column: 5)
!5691 = !DILocation(line: 1580, column: 9, scope: !5690)
!5692 = !DILocation(line: 1581, column: 9, scope: !5690)
!5693 = !DILocation(line: 1582, column: 9, scope: !5690)
!5694 = !DILocation(line: 1583, column: 9, scope: !5690)
!5695 = !DILocation(line: 1584, column: 9, scope: !5690)
!5696 = !DILocation(line: 1585, column: 9, scope: !5690)
!5697 = !DILocation(line: 1586, column: 9, scope: !5690)
!5698 = !DILocation(line: 1587, column: 9, scope: !5690)
!5699 = !DILocation(line: 1588, column: 9, scope: !5690)
!5700 = !DILocation(line: 1590, column: 5, scope: !5690)
!5701 = !DILocation(line: 1591, column: 13, scope: !5702)
!5702 = distinct !DILexicalBlock(scope: !5678, file: !2, line: 1591, column: 9)
!5703 = !DILocation(line: 1591, column: 9, scope: !5678)
!5704 = !DILocation(line: 1598, column: 9, scope: !5705)
!5705 = distinct !DILexicalBlock(scope: !5702, file: !2, line: 1592, column: 5)
!5706 = !DILocation(line: 1600, column: 9, scope: !5705)
!5707 = !DILocation(line: 1601, column: 9, scope: !5705)
!5708 = !DILocation(line: 1603, column: 5, scope: !5705)
!5709 = !DILocation(line: 1606, column: 1, scope: !5678)
!5710 = !DISubprogram(name: "strtok_r", scope: !2673, file: !2673, line: 366, type: !5711, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1752)
!5711 = !DISubroutineType(types: !5712)
!5712 = !{!428, !3771, !2686, !5713}
!5713 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !5714)
!5714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!5715 = !DISubprogram(name: "malloc", scope: !5716, file: !5716, line: 540, type: !5717, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1752)
!5716 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!5717 = !DISubroutineType(types: !5718)
!5718 = !{!310, !1193}
!5719 = !DISubprogram(name: "x264_param_parse", scope: !382, file: !382, line: 328, type: !5720, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1752)
!5720 = !DISubroutineType(types: !5721)
!5721 = !{!283, !3778, !446, !446}
!5722 = !DISubprogram(name: "x264_rc_analyse_slice", scope: !5723, file: !5723, line: 41, type: !1754, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1752)
!5723 = !DIFile(filename: "encoder/ratecontrol.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "1c7c6e4ec395afa862a2409c92936483")
!5724 = distinct !DISubprogram(name: "clip_qscale", scope: !2, file: !2, line: 1274, type: !5725, scopeLine: 1275, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !5727)
!5725 = !DISubroutineType(types: !5726)
!5726 = !{!302, !380, !283, !302}
!5727 = !{!5728, !5729, !5730, !5731, !5732, !5733, !5734, !5735, !5738, !5739, !5742, !5743, !5744, !5745, !5749}
!5728 = !DILocalVariable(name: "h", arg: 1, scope: !5724, file: !2, line: 1274, type: !380)
!5729 = !DILocalVariable(name: "pict_type", arg: 2, scope: !5724, file: !2, line: 1274, type: !283)
!5730 = !DILocalVariable(name: "q", arg: 3, scope: !5724, file: !2, line: 1274, type: !302)
!5731 = !DILocalVariable(name: "rcc", scope: !5724, file: !2, line: 1276, type: !1103)
!5732 = !DILocalVariable(name: "lmin", scope: !5724, file: !2, line: 1277, type: !302)
!5733 = !DILocalVariable(name: "lmax", scope: !5724, file: !2, line: 1278, type: !302)
!5734 = !DILocalVariable(name: "q0", scope: !5724, file: !2, line: 1279, type: !302)
!5735 = !DILocalVariable(name: "bits", scope: !5736, file: !2, line: 1297, type: !302)
!5736 = distinct !DILexicalBlock(scope: !5737, file: !2, line: 1294, column: 5)
!5737 = distinct !DILexicalBlock(scope: !5724, file: !2, line: 1293, column: 9)
!5738 = !DILocalVariable(name: "qf", scope: !5736, file: !2, line: 1298, type: !302)
!5739 = !DILocalVariable(name: "nb", scope: !5740, file: !2, line: 1311, type: !283)
!5740 = distinct !DILexicalBlock(scope: !5741, file: !2, line: 1310, column: 9)
!5741 = distinct !DILexicalBlock(scope: !5736, file: !2, line: 1309, column: 13)
!5742 = !DILocalVariable(name: "pbbits", scope: !5740, file: !2, line: 1312, type: !302)
!5743 = !DILocalVariable(name: "bbits", scope: !5740, file: !2, line: 1313, type: !302)
!5744 = !DILocalVariable(name: "space", scope: !5740, file: !2, line: 1314, type: !302)
!5745 = !DILocalVariable(name: "min2", scope: !5746, file: !2, line: 1337, type: !302)
!5746 = distinct !DILexicalBlock(scope: !5747, file: !2, line: 1336, column: 5)
!5747 = distinct !DILexicalBlock(scope: !5748, file: !2, line: 1335, column: 13)
!5748 = distinct !DILexicalBlock(scope: !5724, file: !2, line: 1333, column: 8)
!5749 = !DILocalVariable(name: "max2", scope: !5746, file: !2, line: 1338, type: !302)
!5750 = !DILocation(line: 0, scope: !5724)
!5751 = !DILocation(line: 1276, column: 34, scope: !5724)
!5752 = !DILocation(line: 1277, column: 19, scope: !5724)
!5753 = !DILocation(line: 1278, column: 19, scope: !5724)
!5754 = !DILocation(line: 1285, column: 14, scope: !5755)
!5755 = distinct !DILexicalBlock(scope: !5724, file: !2, line: 1285, column: 9)
!5756 = !DILocation(line: 1285, column: 9, scope: !5755)
!5757 = !DILocation(line: 1285, column: 20, scope: !5755)
!5758 = !DILocation(line: 1286, column: 37, scope: !5755)
!5759 = !DILocation(line: 1287, column: 47, scope: !5755)
!5760 = !DILocation(line: 1287, column: 68, scope: !5755)
!5761 = !DILocation(line: 1285, column: 9, scope: !5724)
!5762 = !DILocation(line: 1289, column: 18, scope: !5763)
!5763 = distinct !DILexicalBlock(scope: !5764, file: !2, line: 1289, column: 13)
!5764 = distinct !DILexicalBlock(scope: !5755, file: !2, line: 1288, column: 5)
!5765 = !DILocation(line: 1289, column: 35, scope: !5763)
!5766 = !DILocation(line: 1289, column: 29, scope: !5763)
!5767 = !DILocation(line: 1289, column: 47, scope: !5763)
!5768 = !DILocation(line: 1289, column: 13, scope: !5764)
!5769 = !DILocation(line: 1290, column: 34, scope: !5763)
!5770 = !DILocation(line: 1290, column: 51, scope: !5763)
!5771 = !DILocation(line: 0, scope: !1921, inlinedAt: !5772)
!5772 = distinct !DILocation(line: 1290, column: 18, scope: !5763)
!5773 = !DILocation(line: 115, column: 14, scope: !1921, inlinedAt: !5772)
!5774 = !DILocation(line: 1290, column: 15, scope: !5763)
!5775 = !DILocation(line: 1290, column: 13, scope: !5763)
!5776 = !DILocation(line: 1293, column: 28, scope: !5737)
!5777 = !DILocation(line: 1293, column: 38, scope: !5737)
!5778 = !DILocation(line: 1293, column: 9, scope: !5724)
!5779 = !DILocation(line: 1297, column: 43, scope: !5736)
!5780 = !DILocation(line: 1297, column: 54, scope: !5736)
!5781 = !DILocation(line: 1297, column: 38, scope: !5736)
!5782 = !DILocation(line: 1297, column: 66, scope: !5736)
!5783 = !DILocation(line: 0, scope: !4444, inlinedAt: !5784)
!5784 = distinct !DILocation(line: 1297, column: 23, scope: !5736)
!5785 = !DILocation(line: 1297, column: 23, scope: !5736)
!5786 = !DILocation(line: 1220, column: 30, scope: !4444, inlinedAt: !5784)
!5787 = !DILocation(line: 1220, column: 21, scope: !4444, inlinedAt: !5784)
!5788 = !DILocation(line: 1220, column: 26, scope: !4444, inlinedAt: !5784)
!5789 = !DILocation(line: 0, scope: !5736)
!5790 = !DILocation(line: 1299, column: 25, scope: !5791)
!5791 = distinct !DILexicalBlock(scope: !5736, file: !2, line: 1299, column: 13)
!5792 = !DILocation(line: 1299, column: 36, scope: !5791)
!5793 = !DILocation(line: 1299, column: 18, scope: !5791)
!5794 = !DILocation(line: 1299, column: 13, scope: !5736)
!5795 = !DILocation(line: 1300, column: 50, scope: !5791)
!5796 = !DILocation(line: 1300, column: 47, scope: !5791)
!5797 = !DILocation(line: 0, scope: !1921, inlinedAt: !5798)
!5798 = distinct !DILocation(line: 1300, column: 18, scope: !5791)
!5799 = !DILocation(line: 115, column: 14, scope: !1921, inlinedAt: !5798)
!5800 = !DILocation(line: 1300, column: 13, scope: !5791)
!5801 = !DILocation(line: 1301, column: 11, scope: !5736)
!5802 = !DILocation(line: 1302, column: 14, scope: !5736)
!5803 = !DILocation(line: 1303, column: 25, scope: !5804)
!5804 = distinct !DILexicalBlock(scope: !5736, file: !2, line: 1303, column: 13)
!5805 = !DILocation(line: 1303, column: 36, scope: !5804)
!5806 = !DILocation(line: 1303, column: 18, scope: !5804)
!5807 = !DILocation(line: 1303, column: 13, scope: !5736)
!5808 = !DILocation(line: 1305, column: 13, scope: !5736)
!5809 = !DILocation(line: 1309, column: 26, scope: !5741)
!5810 = !DILocation(line: 1309, column: 13, scope: !5736)
!5811 = !DILocation(line: 1311, column: 27, scope: !5740)
!5812 = !DILocation(line: 0, scope: !5740)
!5813 = !DILocation(line: 1313, column: 47, scope: !5740)
!5814 = !DILocation(line: 1313, column: 78, scope: !5740)
!5815 = !DILocation(line: 1313, column: 66, scope: !5740)
!5816 = !DILocation(line: 1313, column: 64, scope: !5740)
!5817 = !DILocation(line: 0, scope: !4444, inlinedAt: !5818)
!5818 = distinct !DILocation(line: 1313, column: 28, scope: !5740)
!5819 = !DILocation(line: 1313, column: 28, scope: !5740)
!5820 = !DILocation(line: 1220, column: 30, scope: !4444, inlinedAt: !5818)
!5821 = !DILocation(line: 1220, column: 21, scope: !4444, inlinedAt: !5818)
!5822 = !DILocation(line: 1220, column: 26, scope: !4444, inlinedAt: !5818)
!5823 = !DILocation(line: 1316, column: 23, scope: !5824)
!5824 = distinct !DILexicalBlock(scope: !5740, file: !2, line: 1316, column: 17)
!5825 = !DILocation(line: 1316, column: 17, scope: !5740)
!5826 = !DILocation(line: 1318, column: 23, scope: !5740)
!5827 = !DILocation(line: 1318, column: 26, scope: !5740)
!5828 = !DILocation(line: 1318, column: 20, scope: !5740)
!5829 = !DILocation(line: 1320, column: 42, scope: !5740)
!5830 = !DILocation(line: 1320, column: 40, scope: !5740)
!5831 = !DILocation(line: 1320, column: 46, scope: !5740)
!5832 = !DILocation(line: 1320, column: 71, scope: !5740)
!5833 = !DILocation(line: 1320, column: 38, scope: !5740)
!5834 = !DILocation(line: 1320, column: 64, scope: !5740)
!5835 = !DILocation(line: 1321, column: 24, scope: !5836)
!5836 = distinct !DILexicalBlock(scope: !5740, file: !2, line: 1321, column: 17)
!5837 = !DILocation(line: 1321, column: 17, scope: !5740)
!5838 = !DILocation(line: 1323, column: 22, scope: !5839)
!5839 = distinct !DILexicalBlock(scope: !5836, file: !2, line: 1322, column: 13)
!5840 = !DILocation(line: 1323, column: 19, scope: !5839)
!5841 = !DILocation(line: 1325, column: 13, scope: !5839)
!5842 = !DILocation(line: 1326, column: 17, scope: !5740)
!5843 = !DILocation(line: 1327, column: 9, scope: !5740)
!5844 = !DILocation(line: 1329, column: 19, scope: !5845)
!5845 = distinct !DILexicalBlock(scope: !5736, file: !2, line: 1329, column: 13)
!5846 = !DILocation(line: 1329, column: 14, scope: !5845)
!5847 = !DILocation(line: 1329, column: 13, scope: !5736)
!5848 = !DILocation(line: 1331, column: 5, scope: !5736)
!5849 = !DILocation(line: 1333, column: 12, scope: !5748)
!5850 = !DILocation(line: 1333, column: 8, scope: !5724)
!5851 = !DILocation(line: 1335, column: 18, scope: !5747)
!5852 = !DILocation(line: 1335, column: 13, scope: !5747)
!5853 = !DILocation(line: 1335, column: 13, scope: !5748)
!5854 = !DILocation(line: 1337, column: 23, scope: !5746)
!5855 = !DILocation(line: 0, scope: !5746)
!5856 = !DILocation(line: 1338, column: 23, scope: !5746)
!5857 = !DILocation(line: 1339, column: 14, scope: !5746)
!5858 = !DILocation(line: 1339, column: 21, scope: !5746)
!5859 = !DILocation(line: 1339, column: 34, scope: !5746)
!5860 = !DILocation(line: 1340, column: 30, scope: !5746)
!5861 = !DILocation(line: 1340, column: 24, scope: !5746)
!5862 = !DILocation(line: 1340, column: 22, scope: !5746)
!5863 = !DILocation(line: 1341, column: 14, scope: !5746)
!5864 = !DILocation(line: 1341, column: 27, scope: !5746)
!5865 = !DILocation(line: 1342, column: 16, scope: !5746)
!5866 = !DILocation(line: 0, scope: !1921, inlinedAt: !5867)
!5867 = distinct !DILocation(line: 1345, column: 16, scope: !5747)
!5868 = !DILocation(line: 115, column: 17, scope: !1921, inlinedAt: !5867)
!5869 = !DILocation(line: 115, column: 14, scope: !1921, inlinedAt: !5867)
!5870 = !DILocation(line: 1345, column: 9, scope: !5747)
!5871 = !DILocation(line: 0, scope: !5748)
!5872 = !DILocation(line: 1346, column: 1, scope: !5724)
