; ModuleID = 'encoder/set.c'
source_filename = "encoder/set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.4 = type { i32, i32, i32 }
%struct.x264_level_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.x264_param_t = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon.1, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [16 x i8], [16 x i8], [16 x i8], [16 x i8], [64 x i8], [64 x i8], ptr, ptr, i32, i32, ptr, %struct.anon.2, %struct.anon.3, i32, i32, i32 }
%struct.anon.1 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.2 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, [2 x i32], i32, i32 }
%struct.anon.3 = type { i32, i32, i32, i32, i32, i32, float, float, i32, i32, float, float, float, i32, float, i32, ptr, i32, ptr, float, float, float, ptr, i32, ptr }
%struct.x264_sps_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon, i32, %struct.anon.0, i32 }
%struct.anon = type { i32, i32, i32, i32 }
%struct.anon.0 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bs_s = type { ptr, ptr, ptr, i64, i32, i32 }
%struct.x264_pps_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x ptr] }
%struct.x264_t = type { %struct.x264_param_t, [128 x ptr], i64, i32, i32, %struct.anon.5, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1 x %struct.x264_sps_t], ptr, [1 x %struct.x264_pps_t], ptr, i32, [4 x ptr], [2 x ptr], [4 x ptr], [2 x ptr], [4 x ptr], [2 x ptr], [4 x ptr], [2 x ptr], ptr, [8 x i8], [2 x [64 x i32]], [2 x [64 x i16]], [2 x i32], %struct.x264_slice_header_t, [8 x i8], %struct.x264_cabac_t, %struct.anon.7, ptr, ptr, i32, [19 x ptr], i32, [19 x ptr], [2 x i32], %struct.anon.9, %struct.anon.10, ptr, %struct.anon.13, [7 x ptr], [7 x ptr], [12 x ptr], [12 x ptr], %struct.x264_pixel_function_t, %struct.x264_mc_functions_t, %struct.x264_dct_function_t, %struct.x264_zigzag_function_t, %struct.x264_quant_function_t, %struct.x264_deblock_function_t }
%struct.anon.5 = type { i32, [8 x %struct.x264_nal_t], i32, ptr, %struct.bs_s, i32 }
%struct.x264_nal_t = type { i32, i32, i32, ptr }
%struct.x264_slice_header_t = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, [2 x [16 x %struct.anon.6]], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.6 = type { i32, i32 }
%struct.x264_cabac_t = type { i32, i32, i32, i32, ptr, ptr, ptr, [8 x i8], i32, [460 x i8] }
%struct.anon.7 = type { [67 x ptr], [67 x ptr], [340 x ptr], ptr, [18 x ptr], i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.9 = type { [16 x i16], [2 x [4 x i16]], [4 x [64 x i16]], [24 x [16 x i16]] }
%struct.anon.10 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [4 x i32], [16 x i32], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], [2 x ptr], [2 x ptr], [2 x [32 x ptr]], ptr, ptr, [2 x [3 x ptr]], ptr, i32, i32, [4 x i32], i32, i32, i32, i32, i32, i32, i32, %struct.anon.11, %struct.anon.12, i32, i32, i32, i32, i32, i32, i32, i32, [16 x [2 x i16]], [32 x [4 x i16]], [2 x i8], [16 x i8], [14 x i8] }
%struct.anon.11 = type { [384 x i8], [864 x i8], [256 x i8], [256 x i8], [3 x [64 x i16]], [15 x [16 x i16]], [4 x [64 x i16]], [16 x [16 x i16]], [4 x [4 x i32]], i32, [2 x [2 x i32]], i32, [3 x ptr], [3 x ptr], [3 x ptr], [2 x i32], [2 x [32 x [6 x ptr]]], [2 x [16 x ptr]], [3 x i32], [12 x i8] }
%struct.anon.12 = type { [48 x i8], [48 x i8], [2 x [48 x i8]], [2 x [48 x [2 x i16]]], [2 x [48 x [2 x i16]]], [48 x i8], [2 x [48 x [2 x i16]]], [2 x [48 x i8]], [2 x i16], i32, i32, [4 x i8] }
%struct.anon.13 = type { %struct.anon.14, [5 x i32], [5 x i64], [5 x double], [17 x i32], [5 x i64], [5 x double], [5 x double], [5 x double], [5 x double], [5 x double], [5 x [19 x i64]], [2 x [17 x i64]], [2 x i64], [2 x [2 x [32 x i64]]], [2 x i32], [2 x i32] }
%struct.anon.14 = type { i32, i32, i32, [19 x i32], i32, i32, i32, [2 x i32], [2 x [32 x i32]], [17 x i32], i32, i32, i32, [2 x i32], [3 x i64], double }
%struct.x264_pixel_function_t = type { [7 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], [4 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], [4 x ptr], [4 x ptr], ptr, ptr, [7 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], ptr, ptr, ptr, ptr, ptr, ptr }
%struct.x264_mc_functions_t = type { ptr, ptr, ptr, [10 x ptr], [7 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.x264_dct_function_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.x264_zigzag_function_t = type { ptr, ptr, ptr, ptr, ptr }
%struct.x264_quant_function_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [6 x ptr] }
%struct.x264_deblock_function_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@x264_sps_write.sar = internal unnamed_addr constant [14 x %struct.anon.4] [%struct.anon.4 { i32 1, i32 1, i32 1 }, %struct.anon.4 { i32 12, i32 11, i32 2 }, %struct.anon.4 { i32 10, i32 11, i32 3 }, %struct.anon.4 { i32 16, i32 11, i32 4 }, %struct.anon.4 { i32 40, i32 33, i32 5 }, %struct.anon.4 { i32 24, i32 11, i32 6 }, %struct.anon.4 { i32 20, i32 11, i32 7 }, %struct.anon.4 { i32 32, i32 11, i32 8 }, %struct.anon.4 { i32 80, i32 33, i32 9 }, %struct.anon.4 { i32 18, i32 11, i32 10 }, %struct.anon.4 { i32 15, i32 11, i32 11 }, %struct.anon.4 { i32 64, i32 33, i32 12 }, %struct.anon.4 { i32 160, i32 99, i32 13 }, %struct.anon.4 { i32 0, i32 0, i32 -1 }], align 16, !dbg !0
@x264_cqm_flat16 = internal constant [64 x i8] c"\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10", align 16, !dbg !203
@x264_cqm_jvt = internal unnamed_addr constant [6 x ptr] [ptr @x264_cqm_jvt4i, ptr @x264_cqm_jvt4p, ptr @x264_cqm_jvt4i, ptr @x264_cqm_jvt4p, ptr @x264_cqm_jvt8i, ptr @x264_cqm_jvt8p], align 16, !dbg !208
@__const.x264_sei_version_write.uuid = private unnamed_addr constant [16 x i8] c"\DCE\E9\BD\E6\D9H\B7\96,\D8 \D9#\EE\EF", align 16
@.str = private unnamed_addr constant [113 x i8] c"x264 - core %d%s - H.264/MPEG-4 AVC codec - Copyleft 2003-2008 - http://www.videolan.org/x264.html - options: %s\00", align 1, !dbg !131
@.str.1 = private unnamed_addr constant [16 x i8] c" r1047M f773bf0\00", align 1, !dbg !137
@x264_levels = dso_local local_unnamed_addr constant [16 x %struct.x264_level_t] [%struct.x264_level_t { i32 10, i32 1485, i32 99, i32 152064, i32 64, i32 175, i32 64, i32 64, i32 0, i32 0, i32 0, i32 1 }, %struct.x264_level_t { i32 11, i32 3000, i32 396, i32 345600, i32 192, i32 500, i32 128, i32 64, i32 0, i32 0, i32 0, i32 1 }, %struct.x264_level_t { i32 12, i32 6000, i32 396, i32 912384, i32 384, i32 1000, i32 128, i32 64, i32 0, i32 0, i32 0, i32 1 }, %struct.x264_level_t { i32 13, i32 11880, i32 396, i32 912384, i32 768, i32 2000, i32 128, i32 64, i32 0, i32 0, i32 0, i32 1 }, %struct.x264_level_t { i32 20, i32 11880, i32 396, i32 912384, i32 2000, i32 2000, i32 128, i32 64, i32 0, i32 0, i32 0, i32 1 }, %struct.x264_level_t { i32 21, i32 19800, i32 792, i32 1824768, i32 4000, i32 4000, i32 256, i32 64, i32 0, i32 0, i32 0, i32 0 }, %struct.x264_level_t { i32 22, i32 20250, i32 1620, i32 3110400, i32 4000, i32 4000, i32 256, i32 64, i32 0, i32 0, i32 0, i32 0 }, %struct.x264_level_t { i32 30, i32 40500, i32 1620, i32 3110400, i32 10000, i32 10000, i32 256, i32 32, i32 22, i32 0, i32 1, i32 0 }, %struct.x264_level_t { i32 31, i32 108000, i32 3600, i32 6912000, i32 14000, i32 14000, i32 512, i32 16, i32 60, i32 1, i32 1, i32 0 }, %struct.x264_level_t { i32 32, i32 216000, i32 5120, i32 7864320, i32 20000, i32 20000, i32 512, i32 16, i32 60, i32 1, i32 1, i32 0 }, %struct.x264_level_t { i32 40, i32 245760, i32 8192, i32 12582912, i32 20000, i32 25000, i32 512, i32 16, i32 60, i32 1, i32 1, i32 0 }, %struct.x264_level_t { i32 41, i32 245760, i32 8192, i32 12582912, i32 50000, i32 62500, i32 512, i32 16, i32 24, i32 1, i32 1, i32 0 }, %struct.x264_level_t { i32 42, i32 522240, i32 8704, i32 13369344, i32 50000, i32 62500, i32 512, i32 16, i32 24, i32 1, i32 1, i32 1 }, %struct.x264_level_t { i32 50, i32 589824, i32 22080, i32 42393600, i32 135000, i32 135000, i32 512, i32 16, i32 24, i32 1, i32 1, i32 1 }, %struct.x264_level_t { i32 51, i32 983040, i32 36864, i32 70778880, i32 240000, i32 240000, i32 512, i32 16, i32 24, i32 1, i32 1, i32 1 }, %struct.x264_level_t zeroinitializer], align 16, !dbg !142
@.str.2 = private unnamed_addr constant [42 x i8] c"frame MB size (%dx%d) > level limit (%d)\0A\00", align 1, !dbg !162
@.str.3 = private unnamed_addr constant [68 x i8] c"DPB size (%d frames, %d bytes) > level limit (%d frames, %d bytes)\0A\00", align 1, !dbg !167
@.str.4 = private unnamed_addr constant [37 x i8] c"VBV bitrate (%d) > level limit (%d)\0A\00", align 1, !dbg !172
@.str.5 = private unnamed_addr constant [36 x i8] c"VBV buffer (%d) > level limit (%d)\0A\00", align 1, !dbg !177
@.str.6 = private unnamed_addr constant [34 x i8] c"MV range (%d) > level limit (%d)\0A\00", align 1, !dbg !182
@.str.7 = private unnamed_addr constant [36 x i8] c"interlaced (%d) > level limit (%d)\0A\00", align 1, !dbg !187
@.str.8 = private unnamed_addr constant [33 x i8] c"MB rate (%d) > level limit (%d)\0A\00", align 1, !dbg !189
@.str.9 = private unnamed_addr constant [50 x i8] c"direct 8x8 inference (0) < level requirement (1)\0A\00", align 1, !dbg !194
@x264_ue_size_tab = internal unnamed_addr constant [256 x i8] c"\01\01\03\03\05\05\05\05\07\07\07\07\07\07\07\07\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F", align 16, !dbg !199
@x264_cqm_jvt4i = internal constant [16 x i8] c"\06\0D\14\1C\0D\14\1C \14\1C %\1C %*", align 16, !dbg !215
@x264_cqm_jvt4p = internal constant [16 x i8] c"\0A\0E\14\18\0E\14\18\1B\14\18\1B\1E\18\1B\1E\22", align 16, !dbg !218
@x264_cqm_jvt8i = internal constant [64 x i8] c"\06\0A\0D\10\12\17\19\1B\0A\0B\10\12\17\19\1B\1D\0D\10\12\17\19\1B\1D\1F\10\12\17\19\1B\1D\1F!\12\17\19\1B\1D\1F!$\17\19\1B\1D\1F!$&\19\1B\1D\1F!$&(\1B\1D\1F!$&(*", align 16, !dbg !220
@x264_cqm_jvt8p = internal constant [64 x i8] c"\09\0D\0F\11\13\15\16\18\0D\0D\11\13\15\16\18\19\0F\11\13\15\16\18\19\1B\11\13\15\16\18\19\1B\1C\13\15\16\18\19\1B\1C\1E\15\16\18\19\1B\1C\1E \16\18\19\1B\1C\1E !\18\19\1B\1C\1E !#", align 16, !dbg !222
@x264_zigzag_scan4 = internal unnamed_addr constant [2 x [16 x i8]] [[16 x i8] c"\00\04\01\02\05\08\0C\09\06\03\07\0A\0D\0E\0B\0F", [16 x i8] c"\00\01\04\02\03\05\06\07\08\09\0A\0B\0C\0D\0E\0F"], align 16, !dbg !224
@x264_zigzag_scan8 = internal unnamed_addr constant [2 x [64 x i8]] [[64 x i8] c"\00\08\01\02\09\10\18\11\0A\03\04\0B\12\19 (!\1A\13\0C\05\06\0D\14\1B\22)081*#\1C\15\0E\07\0F\16\1D$+29:3,%\1E\17\1F&-4;<5.'/6=>7?", [64 x i8] c"\00\01\02\08\09\03\04\0A\10\0B\05\06\07\0C\11\18\12\0D\0E\0F\13\19 \1A\14\15\16\17\1B!(\22\1C\1D\1E\1F#)0*$%&'+12,-./3894567:;<=>?"], align 16, !dbg !230

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @x264_sps_init(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 !dbg !262 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !408, metadata !DIExpression()), !dbg !415
  call void @llvm.dbg.value(metadata i32 %1, metadata !409, metadata !DIExpression()), !dbg !415
  call void @llvm.dbg.value(metadata ptr %2, metadata !410, metadata !DIExpression()), !dbg !415
  store i32 %1, ptr %0, align 4, !dbg !416, !tbaa !417
  %4 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 40, !dbg !424
  %5 = load i32, ptr %4, align 8, !dbg !425, !tbaa !426
  %6 = icmp eq i32 %5, 0, !dbg !433
  br i1 %6, label %7, label %13, !dbg !434

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 40, i32 1, !dbg !435
  %9 = load i32, ptr %8, align 4, !dbg !435, !tbaa !436
  %10 = icmp eq i32 %9, 0, !dbg !437
  %11 = zext i1 %10 to i32, !dbg !434
  %12 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 25, !dbg !438
  store i32 %11, ptr %12, align 4, !dbg !439, !tbaa !440
  br i1 %10, label %33, label %15, !dbg !441

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 25, !dbg !438
  store i32 0, ptr %14, align 4, !dbg !439, !tbaa !440
  br label %15, !dbg !441

15:                                               ; preds = %13, %7
  %16 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 39, i32 2, !dbg !442
  %17 = load i32, ptr %16, align 8, !dbg !442, !tbaa !445
  %18 = icmp eq i32 %17, 0, !dbg !446
  br i1 %18, label %19, label %33, !dbg !447

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 26, !dbg !448
  %21 = load i32, ptr %20, align 8, !dbg !448, !tbaa !449
  %22 = icmp eq i32 %21, 0, !dbg !450
  br i1 %22, label %23, label %33, !dbg !451

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 23, !dbg !452
  %25 = load i32, ptr %24, align 4, !dbg !452, !tbaa !454
  %26 = icmp eq i32 %25, 0, !dbg !455
  br i1 %26, label %27, label %33, !dbg !456

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 16, !dbg !457
  %29 = load i32, ptr %28, align 8, !dbg !457, !tbaa !458
  %30 = icmp slt i32 %29, 1, !dbg !459
  %31 = select i1 %30, i32 66, i32 77, !dbg !460
  %32 = zext i1 %30 to i32, !dbg !460
  br label %33, !dbg !460

33:                                               ; preds = %27, %23, %15, %19, %7
  %34 = phi i32 [ 244, %7 ], [ 100, %19 ], [ 100, %15 ], [ 77, %23 ], [ %31, %27 ]
  %35 = phi i32 [ 0, %7 ], [ 0, %19 ], [ 0, %15 ], [ 0, %23 ], [ %32, %27 ]
  %36 = phi i32 [ 0, %7 ], [ 0, %19 ], [ 0, %15 ], [ 1, %23 ], [ 1, %27 ]
  %37 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 1, !dbg !461
  store i32 %34, ptr %37, align 4, !dbg !461, !tbaa !462
  %38 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 6, !dbg !463
  %39 = load i32, ptr %38, align 8, !dbg !463, !tbaa !464
  %40 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 2, !dbg !465
  store i32 %39, ptr %40, align 4, !dbg !466, !tbaa !467
  %41 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 3, !dbg !468
  store i32 %35, ptr %41, align 4, !dbg !469, !tbaa !470
  %42 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 4, !dbg !471
  store i32 %36, ptr %42, align 4, !dbg !472, !tbaa !473
  %43 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 5, !dbg !474
  store i32 0, ptr %43, align 4, !dbg !475, !tbaa !476
  %44 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 12
  %45 = load i32, ptr %44, align 8, !tbaa !477
  br label %46, !dbg !478

46:                                               ; preds = %46, %33
  %47 = phi i32 [ 4, %33 ], [ %50, %46 ], !dbg !415
  %48 = shl nuw i32 1, %47, !dbg !479
  %49 = icmp sgt i32 %48, %45, !dbg !480
  %50 = add nuw nsw i32 %47, 1, !dbg !481
  br i1 %49, label %51, label %46, !dbg !478, !llvm.loop !483

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 6, !dbg !486
  store i32 %50, ptr %52, align 4, !dbg !487, !tbaa !488
  %53 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 7, !dbg !489
  store i32 0, ptr %53, align 4, !dbg !490, !tbaa !491
  %54 = add nuw nsw i32 %47, 2, !dbg !492
  %55 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 8, !dbg !494
  store i32 %54, ptr %55, align 4, !dbg !495, !tbaa !496
  %56 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 23, !dbg !497
  store i32 1, ptr %56, align 4, !dbg !498, !tbaa !499
  %57 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 15, !dbg !500
  store i32 0, ptr %57, align 4, !dbg !501, !tbaa !502
  %58 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 3, !dbg !503
  %59 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 16, !dbg !504
  %60 = load <2 x i32>, ptr %58, align 4, !dbg !503, !tbaa !505
  %61 = add nsw <2 x i32> %60, <i32 15, i32 15>, !dbg !506
  %62 = sdiv <2 x i32> %61, <i32 16, i32 16>, !dbg !507
  store <2 x i32> %62, ptr %59, align 4, !dbg !508, !tbaa !505
  %63 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 25, !dbg !509
  %64 = load i32, ptr %63, align 4, !dbg !509, !tbaa !511
  %65 = icmp eq i32 %64, 0, !dbg !512
  %66 = extractelement <2 x i32> %62, i64 1, !dbg !513
  br i1 %65, label %71, label %67, !dbg !513

67:                                               ; preds = %51
  %68 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 17, !dbg !514
  %69 = add nsw i32 %66, 1, !dbg !515
  %70 = and i32 %69, -2, !dbg !516
  store i32 %70, ptr %68, align 4, !dbg !517, !tbaa !518
  br label %71, !dbg !519

71:                                               ; preds = %67, %51
  %72 = phi i32 [ %70, %67 ], [ %66, %51 ]
  %73 = zext i1 %65 to i32, !dbg !520
  %74 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 18, !dbg !521
  store i32 %73, ptr %74, align 4, !dbg !522, !tbaa !523
  %75 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 19, !dbg !524
  store i32 %64, ptr %75, align 4, !dbg !525, !tbaa !526
  %76 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 39, i32 5, !dbg !527
  %77 = load i32, ptr %76, align 4, !dbg !527, !tbaa !528
  %78 = or i32 %77, %64, !dbg !529
  %79 = icmp eq i32 %78, 0, !dbg !529
  br i1 %79, label %80, label %86, !dbg !529

80:                                               ; preds = %71
  %81 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 39, i32 1, !dbg !530
  %82 = load i32, ptr %81, align 4, !dbg !530, !tbaa !531
  %83 = lshr i32 %82, 5, !dbg !532
  %84 = and i32 %83, 1, !dbg !532
  %85 = xor i32 %84, 1, !dbg !532
  br label %86, !dbg !532

86:                                               ; preds = %71, %80
  %87 = phi i32 [ 1, %71 ], [ %85, %80 ]
  %88 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 20, !dbg !533
  store i32 %87, ptr %88, align 4, !dbg !534, !tbaa !535
  %89 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 22, !dbg !536
  store i32 0, ptr %89, align 4, !dbg !537, !tbaa !538
  %90 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 22, i32 2, !dbg !539
  store i32 0, ptr %90, align 4, !dbg !540, !tbaa !541
  %91 = extractelement <2 x i32> %62, i64 0, !dbg !542
  %92 = shl nsw i32 %91, 4, !dbg !542
  %93 = extractelement <2 x i32> %60, i64 0, !dbg !543
  %94 = sub nsw i32 %92, %93, !dbg !544
  %95 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 22, i32 1, !dbg !545
  store i32 %94, ptr %95, align 4, !dbg !546, !tbaa !547
  %96 = shl nsw i32 %72, 4, !dbg !548
  %97 = extractelement <2 x i32> %60, i64 1, !dbg !549
  %98 = sub nsw i32 %96, %97, !dbg !549
  %99 = ashr i32 %98, %64, !dbg !550
  %100 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 22, i32 3, !dbg !551
  store i32 %99, ptr %100, align 4, !dbg !552, !tbaa !553
  %101 = icmp ne i32 %92, %93, !dbg !543
  %102 = icmp ne i32 %99, 0
  %103 = select i1 %101, i1 true, i1 %102, !dbg !554
  %104 = zext i1 %103 to i32, !dbg !554
  %105 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 21, !dbg !555
  store i32 %104, ptr %105, align 4, !dbg !556, !tbaa !557
  %106 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, !dbg !558
  store i32 0, ptr %106, align 4, !dbg !559, !tbaa !560
  %107 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 8, i32 1, !dbg !561
  %108 = load i32, ptr %107, align 4, !dbg !561, !tbaa !563
  %109 = icmp sgt i32 %108, 0, !dbg !564
  br i1 %109, label %110, label %117, !dbg !565

110:                                              ; preds = %86
  %111 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 8, !dbg !566
  %112 = load i32, ptr %111, align 8, !dbg !567, !tbaa !568
  %113 = icmp sgt i32 %112, 0, !dbg !569
  br i1 %113, label %114, label %117, !dbg !570

114:                                              ; preds = %110
  store i32 1, ptr %106, align 4, !dbg !571, !tbaa !560
  %115 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 1, !dbg !573
  store i32 %108, ptr %115, align 4, !dbg !574, !tbaa !575
  %116 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 2, !dbg !576
  store i32 %112, ptr %116, align 4, !dbg !577, !tbaa !578
  br label %117, !dbg !579

117:                                              ; preds = %114, %110, %86
  %118 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 8, i32 2, !dbg !580
  %119 = load i32, ptr %118, align 8, !dbg !580, !tbaa !581
  %120 = icmp ne i32 %119, 0, !dbg !582
  %121 = zext i1 %120 to i32, !dbg !582
  %122 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 3, !dbg !583
  store i32 %121, ptr %122, align 4, !dbg !584, !tbaa !585
  br i1 %120, label %123, label %127, !dbg !586

123:                                              ; preds = %117
  %124 = icmp eq i32 %119, 2, !dbg !587
  %125 = zext i1 %124 to i32, !dbg !589
  %126 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 4, !dbg !590
  store i32 %125, ptr %126, align 4, !dbg !591, !tbaa !592
  br label %127, !dbg !593

127:                                              ; preds = %123, %117
  %128 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 5, !dbg !594
  store i32 0, ptr %128, align 4, !dbg !595, !tbaa !596
  %129 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 8, i32 3, !dbg !597
  %130 = load i32, ptr %129, align 4, !dbg !597, !tbaa !598
  %131 = tail call i32 @llvm.smin.i32(i32 %130, i32 5), !dbg !599
  %132 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 6, !dbg !600
  store i32 %131, ptr %132, align 4, !dbg !601, !tbaa !602
  %133 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 8, i32 4, !dbg !603
  %134 = load i32, ptr %133, align 8, !dbg !603, !tbaa !604
  %135 = icmp ne i32 %134, 0, !dbg !605
  %136 = zext i1 %135 to i32, !dbg !605
  %137 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 7, !dbg !606
  store i32 %136, ptr %137, align 4, !dbg !607, !tbaa !608
  %138 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 8, !dbg !609
  store i32 0, ptr %138, align 4, !dbg !610, !tbaa !611
  %139 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 8, i32 5, !dbg !612
  %140 = load i32, ptr %139, align 4, !dbg !612, !tbaa !613
  %141 = icmp slt i32 %140, 10, !dbg !614
  %142 = select i1 %141, i32 %140, i32 2, !dbg !615
  %143 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 9, !dbg !616
  store i32 %142, ptr %143, align 4, !dbg !617, !tbaa !618
  %144 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 8, i32 6, !dbg !619
  %145 = load i32, ptr %144, align 8, !dbg !619, !tbaa !620
  %146 = icmp slt i32 %145, 12, !dbg !621
  %147 = select i1 %146, i32 %145, i32 2, !dbg !622
  %148 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 10, !dbg !623
  store i32 %147, ptr %148, align 4, !dbg !624, !tbaa !625
  %149 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 8, i32 7, !dbg !626
  %150 = load i32, ptr %149, align 4, !dbg !626, !tbaa !627
  %151 = icmp slt i32 %150, 10, !dbg !628
  %152 = select i1 %151, i32 %150, i32 2, !dbg !629
  %153 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 11, !dbg !630
  store i32 %152, ptr %153, align 4, !dbg !631, !tbaa !632
  %154 = icmp eq i32 %142, 2, !dbg !633
  br i1 %154, label %155, label %162, !dbg !635

155:                                              ; preds = %127
  %156 = icmp eq i32 %147, 2, !dbg !636
  %157 = icmp eq i32 %152, 2
  %158 = select i1 %156, i1 %157, i1 false, !dbg !637
  br i1 %158, label %159, label %162, !dbg !637

159:                                              ; preds = %155
  %160 = icmp slt i32 %130, 5, !dbg !638
  %161 = select i1 %160, i1 true, i1 %135, !dbg !640
  br i1 %161, label %163, label %164, !dbg !640

162:                                              ; preds = %127, %155
  store i32 1, ptr %138, align 4, !dbg !641, !tbaa !611
  br label %163, !dbg !640

163:                                              ; preds = %162, %159
  store i32 1, ptr %128, align 4, !dbg !643, !tbaa !596
  br label %164, !dbg !645

164:                                              ; preds = %159, %163
  %165 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 8, i32 8, !dbg !646
  %166 = load i32, ptr %165, align 8, !dbg !646, !tbaa !647
  %167 = icmp ne i32 %166, 0, !dbg !648
  %168 = zext i1 %167 to i32, !dbg !648
  %169 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 12, !dbg !649
  store i32 %168, ptr %169, align 4, !dbg !650, !tbaa !651
  br i1 %167, label %170, label %173, !dbg !652

170:                                              ; preds = %164
  %171 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 13, !dbg !653
  store i32 %166, ptr %171, align 4, !dbg !656, !tbaa !657
  %172 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 14, !dbg !658
  store i32 %166, ptr %172, align 4, !dbg !659, !tbaa !660
  br label %173, !dbg !661

173:                                              ; preds = %170, %164
  %174 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 15, !dbg !662
  store i32 0, ptr %174, align 4, !dbg !663, !tbaa !664
  %175 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 9, !dbg !665
  %176 = load i32, ptr %175, align 4, !dbg !665, !tbaa !667
  %177 = icmp sgt i32 %176, 0, !dbg !668
  br i1 %177, label %178, label %187, !dbg !669

178:                                              ; preds = %173
  %179 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 10, !dbg !670
  %180 = load i32, ptr %179, align 8, !dbg !670, !tbaa !671
  %181 = icmp sgt i32 %180, 0, !dbg !672
  br i1 %181, label %182, label %187, !dbg !673

182:                                              ; preds = %178
  store i32 1, ptr %174, align 4, !dbg !674, !tbaa !664
  %183 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 16, !dbg !676
  store i32 %180, ptr %183, align 4, !dbg !677, !tbaa !678
  %184 = shl nuw nsw i32 %176, 1, !dbg !679
  %185 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 17, !dbg !680
  store i32 %184, ptr %185, align 4, !dbg !681, !tbaa !682
  %186 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 18, !dbg !683
  store i32 1, ptr %186, align 4, !dbg !684, !tbaa !685
  br label %187, !dbg !686

187:                                              ; preds = %182, %178, %173
  %188 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 19, !dbg !687
  %189 = load i32, ptr %188, align 4, !dbg !687, !tbaa !688
  %190 = icmp eq i32 %189, 0, !dbg !689
  br i1 %190, label %191, label %196, !dbg !689

191:                                              ; preds = %187
  %192 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 16, !dbg !690
  %193 = load i32, ptr %192, align 8, !dbg !690, !tbaa !458
  %194 = icmp ne i32 %193, 0, !dbg !691
  %195 = zext i1 %194 to i32, !dbg !691
  br label %196, !dbg !689

196:                                              ; preds = %187, %191
  %197 = phi i32 [ %195, %191 ], [ 2, %187 ], !dbg !689
  %198 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 25, !dbg !692
  store i32 %197, ptr %198, align 4, !dbg !693, !tbaa !694
  %199 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 11, !dbg !695
  %200 = load i32, ptr %199, align 4, !dbg !695, !tbaa !696
  %201 = add nuw nsw i32 %197, 1, !dbg !695
  %202 = tail call i32 @llvm.smax.i32(i32 %200, i32 %201), !dbg !695
  %203 = tail call i32 @llvm.umin.i32(i32 %202, i32 16), !dbg !695
  %204 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 14, !dbg !697
  store i32 %203, ptr %204, align 4, !dbg !698, !tbaa !699
  %205 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 26, !dbg !700
  store i32 %203, ptr %205, align 4, !dbg !701, !tbaa !702
  %206 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 19, !dbg !703
  store <4 x i32> <i32 1, i32 1, i32 0, i32 0>, ptr %206, align 4, !dbg !704, !tbaa !505
  %207 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 39, i32 9, !dbg !705
  %208 = load i32, ptr %207, align 4, !dbg !705, !tbaa !708
  %209 = shl nsw i32 %208, 2, !dbg !709
  %210 = add nsw i32 %209, -1, !dbg !710
  %211 = sitofp i32 %210 to double, !dbg !711
  %212 = tail call fast double @llvm.log.f64(double %211), !dbg !712
  %213 = fmul fast double %212, 0x3FF71547652B82FE, !dbg !713
  %214 = fptosi double %213 to i32, !dbg !714
  %215 = add nsw i32 %214, 1, !dbg !715
  %216 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 24, !dbg !716
  store i32 %215, ptr %216, align 4, !dbg !717, !tbaa !718
  %217 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 23, !dbg !719
  store i32 %215, ptr %217, align 4, !dbg !720, !tbaa !721
  ret void, !dbg !722
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log.f64(double) #1

; Function Attrs: nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_sps_write(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #2 !dbg !2 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !235, metadata !DIExpression()), !dbg !723
  call void @llvm.dbg.value(metadata ptr %1, metadata !236, metadata !DIExpression()), !dbg !723
  %3 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 1, !dbg !724
  %4 = load i32, ptr %3, align 4, !dbg !724, !tbaa !462
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !732
  call void @llvm.dbg.value(metadata i32 8, metadata !730, metadata !DIExpression()), !dbg !732
  call void @llvm.dbg.value(metadata i32 %4, metadata !731, metadata !DIExpression()), !dbg !732
  %5 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 3, !dbg !734
  %6 = load i64, ptr %5, align 8, !dbg !734, !tbaa !737
  %7 = shl i64 %6, 8, !dbg !740
  %8 = zext i32 %4 to i64, !dbg !741
  %9 = or i64 %7, %8, !dbg !742
  %10 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 4, !dbg !743
  %11 = load i32, ptr %10, align 8, !dbg !744, !tbaa !745
  %12 = add nsw i32 %11, -8, !dbg !744
  store i32 %12, ptr %10, align 8, !dbg !744, !tbaa !745
  %13 = icmp slt i32 %11, 41, !dbg !746
  br i1 %13, label %14, label %24, !dbg !748

14:                                               ; preds = %2
  %15 = zext i32 %12 to i64, !dbg !749
  %16 = shl i64 %9, %15, !dbg !749
  call void @llvm.dbg.value(metadata i64 %16, metadata !751, metadata !DIExpression()), !dbg !757
  %17 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %16) #11, !dbg !759, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %17, metadata !751, metadata !DIExpression()), !dbg !757
  %18 = trunc i64 %17 to i32, !dbg !761
  %19 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !762
  %20 = load ptr, ptr %19, align 8, !dbg !762, !tbaa !763
  store i32 %18, ptr %20, align 4, !dbg !764, !tbaa !505
  %21 = load i32, ptr %10, align 8, !dbg !765, !tbaa !745
  %22 = add nsw i32 %21, 32, !dbg !765
  %23 = getelementptr inbounds i8, ptr %20, i64 4, !dbg !766
  store ptr %23, ptr %19, align 8, !dbg !766, !tbaa !763
  br label %24, !dbg !767

24:                                               ; preds = %2, %14
  %25 = phi i32 [ %12, %2 ], [ %22, %14 ], !dbg !768
  %26 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 3, !dbg !770
  %27 = load i32, ptr %26, align 4, !dbg !770, !tbaa !470
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !771
  call void @llvm.dbg.value(metadata i32 1, metadata !730, metadata !DIExpression()), !dbg !771
  call void @llvm.dbg.value(metadata i32 %27, metadata !731, metadata !DIExpression()), !dbg !771
  %28 = shl i64 %9, 1, !dbg !772
  %29 = zext i32 %27 to i64, !dbg !773
  %30 = or i64 %28, %29, !dbg !774
  %31 = add nsw i32 %25, -1, !dbg !768
  store i32 %31, ptr %10, align 8, !dbg !768, !tbaa !745
  %32 = icmp slt i32 %25, 34, !dbg !775
  br i1 %32, label %33, label %43, !dbg !776

33:                                               ; preds = %24
  %34 = zext i32 %31 to i64, !dbg !777
  %35 = shl i64 %30, %34, !dbg !777
  call void @llvm.dbg.value(metadata i64 %35, metadata !751, metadata !DIExpression()), !dbg !778
  %36 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %35) #11, !dbg !780, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %36, metadata !751, metadata !DIExpression()), !dbg !778
  %37 = trunc i64 %36 to i32, !dbg !781
  %38 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !782
  %39 = load ptr, ptr %38, align 8, !dbg !782, !tbaa !763
  store i32 %37, ptr %39, align 4, !dbg !783, !tbaa !505
  %40 = load i32, ptr %10, align 8, !dbg !784, !tbaa !745
  %41 = add nsw i32 %40, 32, !dbg !784
  %42 = getelementptr inbounds i8, ptr %39, i64 4, !dbg !785
  store ptr %42, ptr %38, align 8, !dbg !785, !tbaa !763
  br label %43, !dbg !786

43:                                               ; preds = %24, %33
  %44 = phi i32 [ %31, %24 ], [ %41, %33 ], !dbg !787
  %45 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 4, !dbg !789
  %46 = load i32, ptr %45, align 4, !dbg !789, !tbaa !473
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !790
  call void @llvm.dbg.value(metadata i32 1, metadata !730, metadata !DIExpression()), !dbg !790
  call void @llvm.dbg.value(metadata i32 %46, metadata !731, metadata !DIExpression()), !dbg !790
  %47 = shl i64 %30, 1, !dbg !791
  %48 = zext i32 %46 to i64, !dbg !792
  %49 = or i64 %47, %48, !dbg !793
  store i64 %49, ptr %5, align 8, !dbg !794, !tbaa !737
  %50 = add nsw i32 %44, -1, !dbg !787
  store i32 %50, ptr %10, align 8, !dbg !787, !tbaa !745
  %51 = icmp slt i32 %44, 34, !dbg !795
  br i1 %51, label %52, label %62, !dbg !796

52:                                               ; preds = %43
  %53 = zext i32 %50 to i64, !dbg !797
  %54 = shl i64 %49, %53, !dbg !797
  call void @llvm.dbg.value(metadata i64 %54, metadata !751, metadata !DIExpression()), !dbg !798
  %55 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %54) #11, !dbg !800, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %55, metadata !751, metadata !DIExpression()), !dbg !798
  %56 = trunc i64 %55 to i32, !dbg !801
  %57 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !802
  %58 = load ptr, ptr %57, align 8, !dbg !802, !tbaa !763
  store i32 %56, ptr %58, align 4, !dbg !803, !tbaa !505
  %59 = load i32, ptr %10, align 8, !dbg !804, !tbaa !745
  %60 = add nsw i32 %59, 32, !dbg !804
  %61 = getelementptr inbounds i8, ptr %58, i64 4, !dbg !805
  store ptr %61, ptr %57, align 8, !dbg !805, !tbaa !763
  br label %62, !dbg !806

62:                                               ; preds = %43, %52
  %63 = phi i32 [ %50, %43 ], [ %60, %52 ], !dbg !807
  %64 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 5, !dbg !809
  %65 = load i32, ptr %64, align 4, !dbg !809, !tbaa !476
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !810
  call void @llvm.dbg.value(metadata i32 1, metadata !730, metadata !DIExpression()), !dbg !810
  call void @llvm.dbg.value(metadata i32 %65, metadata !731, metadata !DIExpression()), !dbg !810
  %66 = shl i64 %49, 1, !dbg !811
  %67 = zext i32 %65 to i64, !dbg !812
  %68 = or i64 %66, %67, !dbg !813
  %69 = add nsw i32 %63, -1, !dbg !807
  store i32 %69, ptr %10, align 8, !dbg !807, !tbaa !745
  %70 = icmp slt i32 %63, 34, !dbg !814
  br i1 %70, label %71, label %81, !dbg !815

71:                                               ; preds = %62
  %72 = zext i32 %69 to i64, !dbg !816
  %73 = shl i64 %68, %72, !dbg !816
  call void @llvm.dbg.value(metadata i64 %73, metadata !751, metadata !DIExpression()), !dbg !817
  %74 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %73) #11, !dbg !819, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %74, metadata !751, metadata !DIExpression()), !dbg !817
  %75 = trunc i64 %74 to i32, !dbg !820
  %76 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !821
  %77 = load ptr, ptr %76, align 8, !dbg !821, !tbaa !763
  store i32 %75, ptr %77, align 4, !dbg !822, !tbaa !505
  %78 = load i32, ptr %10, align 8, !dbg !823, !tbaa !745
  %79 = add nsw i32 %78, 32, !dbg !823
  %80 = getelementptr inbounds i8, ptr %77, i64 4, !dbg !824
  store ptr %80, ptr %76, align 8, !dbg !824, !tbaa !763
  br label %81, !dbg !825

81:                                               ; preds = %62, %71
  %82 = phi i32 [ %69, %62 ], [ %79, %71 ], !dbg !826
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !828
  call void @llvm.dbg.value(metadata i32 5, metadata !730, metadata !DIExpression()), !dbg !828
  call void @llvm.dbg.value(metadata i32 0, metadata !731, metadata !DIExpression()), !dbg !828
  %83 = add nsw i32 %82, -5, !dbg !826
  store i32 %83, ptr %10, align 8, !dbg !826, !tbaa !745
  %84 = icmp slt i32 %82, 38, !dbg !829
  br i1 %84, label %85, label %96, !dbg !830

85:                                               ; preds = %81
  %86 = shl i64 %68, 5, !dbg !831
  %87 = zext i32 %83 to i64, !dbg !832
  %88 = shl i64 %86, %87, !dbg !832
  call void @llvm.dbg.value(metadata i64 %88, metadata !751, metadata !DIExpression()), !dbg !833
  %89 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %88) #11, !dbg !835, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %89, metadata !751, metadata !DIExpression()), !dbg !833
  %90 = trunc i64 %89 to i32, !dbg !836
  %91 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !837
  %92 = load ptr, ptr %91, align 8, !dbg !837, !tbaa !763
  store i32 %90, ptr %92, align 4, !dbg !838, !tbaa !505
  %93 = load i32, ptr %10, align 8, !dbg !839, !tbaa !745
  %94 = add nsw i32 %93, 32, !dbg !839
  %95 = getelementptr inbounds i8, ptr %92, i64 4, !dbg !840
  store ptr %95, ptr %91, align 8, !dbg !840, !tbaa !763
  br label %96, !dbg !841

96:                                               ; preds = %81, %85
  %97 = phi i32 [ %83, %81 ], [ %94, %85 ], !dbg !842
  %98 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 2, !dbg !844
  %99 = load i32, ptr %98, align 4, !dbg !844, !tbaa !467
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !845
  call void @llvm.dbg.value(metadata i32 8, metadata !730, metadata !DIExpression()), !dbg !845
  call void @llvm.dbg.value(metadata i32 %99, metadata !731, metadata !DIExpression()), !dbg !845
  %100 = shl i64 %68, 13, !dbg !846
  %101 = zext i32 %99 to i64, !dbg !847
  %102 = or i64 %100, %101, !dbg !848
  store i64 %102, ptr %5, align 8, !dbg !849, !tbaa !737
  %103 = add nsw i32 %97, -8, !dbg !842
  store i32 %103, ptr %10, align 8, !dbg !842, !tbaa !745
  %104 = icmp slt i32 %97, 41, !dbg !850
  br i1 %104, label %105, label %115, !dbg !851

105:                                              ; preds = %96
  %106 = zext i32 %103 to i64, !dbg !852
  %107 = shl i64 %102, %106, !dbg !852
  call void @llvm.dbg.value(metadata i64 %107, metadata !751, metadata !DIExpression()), !dbg !853
  %108 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %107) #11, !dbg !855, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %108, metadata !751, metadata !DIExpression()), !dbg !853
  %109 = trunc i64 %108 to i32, !dbg !856
  %110 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !857
  %111 = load ptr, ptr %110, align 8, !dbg !857, !tbaa !763
  store i32 %109, ptr %111, align 4, !dbg !858, !tbaa !505
  %112 = load i32, ptr %10, align 8, !dbg !859, !tbaa !745
  %113 = add nsw i32 %112, 32, !dbg !859
  %114 = getelementptr inbounds i8, ptr %111, i64 4, !dbg !860
  store ptr %114, ptr %110, align 8, !dbg !860, !tbaa !763
  br label %115, !dbg !861

115:                                              ; preds = %96, %105
  %116 = phi i32 [ %103, %96 ], [ %113, %105 ], !dbg !862
  %117 = load i32, ptr %1, align 4, !dbg !873, !tbaa !417
  call void @llvm.dbg.value(metadata ptr %0, metadata !868, metadata !DIExpression()), !dbg !874
  call void @llvm.dbg.value(metadata i32 %117, metadata !869, metadata !DIExpression()), !dbg !874
  call void @llvm.dbg.value(metadata i32 0, metadata !870, metadata !DIExpression()), !dbg !874
  %118 = add i32 %117, 1, !dbg !875
  call void @llvm.dbg.value(metadata i32 %118, metadata !869, metadata !DIExpression()), !dbg !874
  call void @llvm.dbg.value(metadata i32 %118, metadata !871, metadata !DIExpression()), !dbg !874
  %119 = icmp sgt i32 %118, 65535, !dbg !876
  %120 = lshr i32 %118, 16
  %121 = select i1 %119, i32 32, i32 0, !dbg !878
  %122 = select i1 %119, i32 %120, i32 %118, !dbg !878
  call void @llvm.dbg.value(metadata i32 %122, metadata !871, metadata !DIExpression()), !dbg !874
  call void @llvm.dbg.value(metadata i32 %121, metadata !870, metadata !DIExpression()), !dbg !874
  %123 = icmp sgt i32 %122, 255, !dbg !879
  %124 = or i32 %121, 16, !dbg !881
  %125 = lshr i32 %122, 8, !dbg !881
  %126 = select i1 %123, i32 %124, i32 %121, !dbg !881
  %127 = select i1 %123, i32 %125, i32 %122, !dbg !881
  call void @llvm.dbg.value(metadata i32 %127, metadata !871, metadata !DIExpression()), !dbg !874
  call void @llvm.dbg.value(metadata i32 %126, metadata !870, metadata !DIExpression()), !dbg !874
  %128 = sext i32 %127 to i64, !dbg !882
  %129 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %128, !dbg !882
  %130 = load i8, ptr %129, align 1, !dbg !882, !tbaa !883
  %131 = zext i8 %130 to i32, !dbg !882
  %132 = add nuw nsw i32 %126, %131, !dbg !884
  call void @llvm.dbg.value(metadata i32 %132, metadata !870, metadata !DIExpression()), !dbg !874
  %133 = lshr i32 %132, 1, !dbg !885
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !886
  call void @llvm.dbg.value(metadata i32 %133, metadata !730, metadata !DIExpression()), !dbg !886
  call void @llvm.dbg.value(metadata i32 0, metadata !731, metadata !DIExpression()), !dbg !886
  %134 = zext i32 %133 to i64, !dbg !887
  %135 = shl i64 %102, %134, !dbg !887
  %136 = sub nsw i32 %116, %133, !dbg !862
  store i32 %136, ptr %10, align 8, !dbg !862, !tbaa !745
  %137 = icmp slt i32 %136, 33, !dbg !888
  br i1 %137, label %138, label %148, !dbg !889

138:                                              ; preds = %115
  %139 = zext i32 %136 to i64, !dbg !890
  %140 = shl i64 %135, %139, !dbg !890
  call void @llvm.dbg.value(metadata i64 %140, metadata !751, metadata !DIExpression()), !dbg !891
  %141 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %140) #11, !dbg !893, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %141, metadata !751, metadata !DIExpression()), !dbg !891
  %142 = trunc i64 %141 to i32, !dbg !894
  %143 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !895
  %144 = load ptr, ptr %143, align 8, !dbg !895, !tbaa !763
  store i32 %142, ptr %144, align 4, !dbg !896, !tbaa !505
  %145 = load i32, ptr %10, align 8, !dbg !897, !tbaa !745
  %146 = add nsw i32 %145, 32, !dbg !897
  %147 = getelementptr inbounds i8, ptr %144, i64 4, !dbg !898
  store ptr %147, ptr %143, align 8, !dbg !898, !tbaa !763
  br label %148, !dbg !899

148:                                              ; preds = %138, %115
  %149 = phi i32 [ %136, %115 ], [ %146, %138 ], !dbg !900
  %150 = add nuw nsw i32 %133, 1, !dbg !902
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !903
  call void @llvm.dbg.value(metadata i32 %150, metadata !730, metadata !DIExpression()), !dbg !903
  call void @llvm.dbg.value(metadata i32 %118, metadata !731, metadata !DIExpression()), !dbg !903
  %151 = zext i32 %150 to i64, !dbg !904
  %152 = shl i64 %135, %151, !dbg !904
  %153 = zext i32 %118 to i64, !dbg !905
  %154 = or i64 %152, %153, !dbg !906
  %155 = sub nsw i32 %149, %150, !dbg !900
  store i32 %155, ptr %10, align 8, !dbg !900, !tbaa !745
  %156 = icmp slt i32 %155, 33, !dbg !907
  br i1 %156, label %157, label %167, !dbg !908

157:                                              ; preds = %148
  %158 = zext i32 %155 to i64, !dbg !909
  %159 = shl i64 %154, %158, !dbg !909
  call void @llvm.dbg.value(metadata i64 %159, metadata !751, metadata !DIExpression()), !dbg !910
  %160 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %159) #11, !dbg !912, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %160, metadata !751, metadata !DIExpression()), !dbg !910
  %161 = trunc i64 %160 to i32, !dbg !913
  %162 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !914
  %163 = load ptr, ptr %162, align 8, !dbg !914, !tbaa !763
  store i32 %161, ptr %163, align 4, !dbg !915, !tbaa !505
  %164 = load i32, ptr %10, align 8, !dbg !916, !tbaa !745
  %165 = add nsw i32 %164, 32, !dbg !916
  %166 = getelementptr inbounds i8, ptr %163, i64 4, !dbg !917
  store ptr %166, ptr %162, align 8, !dbg !917, !tbaa !763
  br label %167, !dbg !918

167:                                              ; preds = %148, %157
  %168 = phi i32 [ %155, %148 ], [ %165, %157 ]
  %169 = load i32, ptr %3, align 4, !dbg !919, !tbaa !462
  %170 = icmp sgt i32 %169, 99, !dbg !921
  br i1 %170, label %171, label %285, !dbg !922

171:                                              ; preds = %167
  call void @llvm.dbg.value(metadata ptr %0, metadata !868, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.value(metadata i32 1, metadata !869, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.value(metadata i32 0, metadata !870, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.value(metadata i32 2, metadata !869, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.value(metadata i32 2, metadata !871, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.value(metadata i32 2, metadata !871, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.value(metadata i32 0, metadata !870, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.value(metadata i32 2, metadata !871, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.value(metadata i32 0, metadata !870, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.value(metadata i32 3, metadata !870, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !926
  call void @llvm.dbg.value(metadata i32 1, metadata !730, metadata !DIExpression()), !dbg !926
  call void @llvm.dbg.value(metadata i32 0, metadata !731, metadata !DIExpression()), !dbg !926
  %172 = add nsw i32 %168, -1, !dbg !928
  store i32 %172, ptr %10, align 8, !dbg !928, !tbaa !745
  %173 = icmp slt i32 %168, 34, !dbg !929
  br i1 %173, label %174, label %185, !dbg !930

174:                                              ; preds = %171
  %175 = shl i64 %154, 1, !dbg !931
  %176 = zext i32 %172 to i64, !dbg !932
  %177 = shl i64 %175, %176, !dbg !932
  call void @llvm.dbg.value(metadata i64 %177, metadata !751, metadata !DIExpression()), !dbg !933
  %178 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %177) #11, !dbg !935, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %178, metadata !751, metadata !DIExpression()), !dbg !933
  %179 = trunc i64 %178 to i32, !dbg !936
  %180 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !937
  %181 = load ptr, ptr %180, align 8, !dbg !937, !tbaa !763
  store i32 %179, ptr %181, align 4, !dbg !938, !tbaa !505
  %182 = load i32, ptr %10, align 8, !dbg !939, !tbaa !745
  %183 = add nsw i32 %182, 32, !dbg !939
  %184 = getelementptr inbounds i8, ptr %181, i64 4, !dbg !940
  store ptr %184, ptr %180, align 8, !dbg !940, !tbaa !763
  br label %185, !dbg !941

185:                                              ; preds = %174, %171
  %186 = phi i32 [ %172, %171 ], [ %183, %174 ], !dbg !942
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.value(metadata i32 2, metadata !730, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.value(metadata i32 2, metadata !731, metadata !DIExpression()), !dbg !944
  %187 = shl i64 %154, 3, !dbg !945
  %188 = or i64 %187, 2, !dbg !946
  store i64 %188, ptr %5, align 8, !dbg !947, !tbaa !737
  %189 = add nsw i32 %186, -2, !dbg !942
  store i32 %189, ptr %10, align 8, !dbg !942, !tbaa !745
  %190 = icmp slt i32 %186, 35, !dbg !948
  br i1 %190, label %191, label %210, !dbg !949

191:                                              ; preds = %185
  %192 = zext i32 %189 to i64, !dbg !950
  %193 = shl i64 %188, %192, !dbg !950
  call void @llvm.dbg.value(metadata i64 %193, metadata !751, metadata !DIExpression()), !dbg !951
  %194 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %193) #11, !dbg !953, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %194, metadata !751, metadata !DIExpression()), !dbg !951
  %195 = trunc i64 %194 to i32, !dbg !954
  %196 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !955
  %197 = load ptr, ptr %196, align 8, !dbg !955, !tbaa !763
  store i32 %195, ptr %197, align 4, !dbg !956, !tbaa !505
  %198 = load i32, ptr %10, align 8, !dbg !957, !tbaa !745
  %199 = add nsw i32 %198, 32, !dbg !957
  store i32 %199, ptr %10, align 8, !dbg !957, !tbaa !745
  %200 = getelementptr inbounds i8, ptr %197, i64 4, !dbg !958
  store ptr %200, ptr %196, align 8, !dbg !958, !tbaa !763
  call void @llvm.dbg.value(metadata ptr %0, metadata !868, metadata !DIExpression()), !dbg !959
  call void @llvm.dbg.value(metadata i32 1, metadata !869, metadata !DIExpression()), !dbg !959
  call void @llvm.dbg.value(metadata i32 1, metadata !871, metadata !DIExpression()), !dbg !959
  call void @llvm.dbg.value(metadata i32 1, metadata !870, metadata !DIExpression()), !dbg !959
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !961
  call void @llvm.dbg.value(metadata i32 0, metadata !730, metadata !DIExpression()), !dbg !961
  call void @llvm.dbg.value(metadata i32 0, metadata !731, metadata !DIExpression()), !dbg !961
  %201 = icmp slt i32 %198, 1, !dbg !963
  br i1 %201, label %202, label %210, !dbg !964

202:                                              ; preds = %191
  %203 = zext i32 %199 to i64, !dbg !965
  %204 = shl i64 %188, %203, !dbg !965
  call void @llvm.dbg.value(metadata i64 %204, metadata !751, metadata !DIExpression()), !dbg !966
  %205 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %204) #11, !dbg !968, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %205, metadata !751, metadata !DIExpression()), !dbg !966
  %206 = trunc i64 %205 to i32, !dbg !969
  store i32 %206, ptr %200, align 4, !dbg !970, !tbaa !505
  %207 = load i32, ptr %10, align 8, !dbg !971, !tbaa !745
  %208 = add nsw i32 %207, 32, !dbg !971
  %209 = getelementptr inbounds i8, ptr %197, i64 8, !dbg !972
  store ptr %209, ptr %196, align 8, !dbg !972, !tbaa !763
  br label %210, !dbg !973

210:                                              ; preds = %185, %202, %191
  %211 = phi i32 [ %199, %191 ], [ %208, %202 ], [ %189, %185 ], !dbg !974
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !976
  call void @llvm.dbg.value(metadata i32 1, metadata !730, metadata !DIExpression()), !dbg !976
  call void @llvm.dbg.value(metadata i32 1, metadata !731, metadata !DIExpression()), !dbg !976
  %212 = shl i64 %188, 1, !dbg !977
  %213 = or i64 %212, 1, !dbg !978
  %214 = add nsw i32 %211, -1, !dbg !974
  store i32 %214, ptr %10, align 8, !dbg !974, !tbaa !745
  %215 = icmp slt i32 %211, 34, !dbg !979
  br i1 %215, label %216, label %235, !dbg !980

216:                                              ; preds = %210
  %217 = zext i32 %214 to i64, !dbg !981
  %218 = shl i64 %213, %217, !dbg !981
  call void @llvm.dbg.value(metadata i64 %218, metadata !751, metadata !DIExpression()), !dbg !982
  %219 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %218) #11, !dbg !984, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %219, metadata !751, metadata !DIExpression()), !dbg !982
  %220 = trunc i64 %219 to i32, !dbg !985
  %221 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !986
  %222 = load ptr, ptr %221, align 8, !dbg !986, !tbaa !763
  store i32 %220, ptr %222, align 4, !dbg !987, !tbaa !505
  %223 = load i32, ptr %10, align 8, !dbg !988, !tbaa !745
  %224 = add nsw i32 %223, 32, !dbg !988
  store i32 %224, ptr %10, align 8, !dbg !988, !tbaa !745
  %225 = getelementptr inbounds i8, ptr %222, i64 4, !dbg !989
  store ptr %225, ptr %221, align 8, !dbg !989, !tbaa !763
  call void @llvm.dbg.value(metadata ptr %0, metadata !868, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i32 1, metadata !869, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i32 1, metadata !871, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i32 1, metadata !870, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !992
  call void @llvm.dbg.value(metadata i32 0, metadata !730, metadata !DIExpression()), !dbg !992
  call void @llvm.dbg.value(metadata i32 0, metadata !731, metadata !DIExpression()), !dbg !992
  %226 = icmp slt i32 %223, 1, !dbg !994
  br i1 %226, label %227, label %235, !dbg !995

227:                                              ; preds = %216
  %228 = zext i32 %224 to i64, !dbg !996
  %229 = shl i64 %213, %228, !dbg !996
  call void @llvm.dbg.value(metadata i64 %229, metadata !751, metadata !DIExpression()), !dbg !997
  %230 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %229) #11, !dbg !999, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %230, metadata !751, metadata !DIExpression()), !dbg !997
  %231 = trunc i64 %230 to i32, !dbg !1000
  store i32 %231, ptr %225, align 4, !dbg !1001, !tbaa !505
  %232 = load i32, ptr %10, align 8, !dbg !1002, !tbaa !745
  %233 = add nsw i32 %232, 32, !dbg !1002
  %234 = getelementptr inbounds i8, ptr %222, i64 8, !dbg !1003
  store ptr %234, ptr %221, align 8, !dbg !1003, !tbaa !763
  br label %235, !dbg !1004

235:                                              ; preds = %210, %227, %216
  %236 = phi i32 [ %224, %216 ], [ %233, %227 ], [ %214, %210 ], !dbg !1005
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !1007
  call void @llvm.dbg.value(metadata i32 1, metadata !730, metadata !DIExpression()), !dbg !1007
  call void @llvm.dbg.value(metadata i32 1, metadata !731, metadata !DIExpression()), !dbg !1007
  %237 = shl i64 %213, 1, !dbg !1008
  %238 = or i64 %237, 1, !dbg !1009
  %239 = add nsw i32 %236, -1, !dbg !1005
  store i32 %239, ptr %10, align 8, !dbg !1005, !tbaa !745
  %240 = icmp slt i32 %236, 34, !dbg !1010
  br i1 %240, label %241, label %251, !dbg !1011

241:                                              ; preds = %235
  %242 = zext i32 %239 to i64, !dbg !1012
  %243 = shl i64 %238, %242, !dbg !1012
  call void @llvm.dbg.value(metadata i64 %243, metadata !751, metadata !DIExpression()), !dbg !1013
  %244 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %243) #11, !dbg !1015, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %244, metadata !751, metadata !DIExpression()), !dbg !1013
  %245 = trunc i64 %244 to i32, !dbg !1016
  %246 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !1017
  %247 = load ptr, ptr %246, align 8, !dbg !1017, !tbaa !763
  store i32 %245, ptr %247, align 4, !dbg !1018, !tbaa !505
  %248 = load i32, ptr %10, align 8, !dbg !1019, !tbaa !745
  %249 = add nsw i32 %248, 32, !dbg !1019
  %250 = getelementptr inbounds i8, ptr %247, i64 4, !dbg !1020
  store ptr %250, ptr %246, align 8, !dbg !1020, !tbaa !763
  br label %251, !dbg !1021

251:                                              ; preds = %235, %241
  %252 = phi i32 [ %239, %235 ], [ %249, %241 ], !dbg !1022
  %253 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 25, !dbg !1024
  %254 = load i32, ptr %253, align 4, !dbg !1024, !tbaa !440
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !1025
  call void @llvm.dbg.value(metadata i32 1, metadata !730, metadata !DIExpression()), !dbg !1025
  call void @llvm.dbg.value(metadata i32 %254, metadata !731, metadata !DIExpression()), !dbg !1025
  %255 = shl i64 %238, 1, !dbg !1026
  %256 = zext i32 %254 to i64, !dbg !1027
  %257 = or i64 %255, %256, !dbg !1028
  store i64 %257, ptr %5, align 8, !dbg !1029, !tbaa !737
  %258 = add nsw i32 %252, -1, !dbg !1022
  store i32 %258, ptr %10, align 8, !dbg !1022, !tbaa !745
  %259 = icmp slt i32 %252, 34, !dbg !1030
  br i1 %259, label %260, label %270, !dbg !1031

260:                                              ; preds = %251
  %261 = zext i32 %258 to i64, !dbg !1032
  %262 = shl i64 %257, %261, !dbg !1032
  call void @llvm.dbg.value(metadata i64 %262, metadata !751, metadata !DIExpression()), !dbg !1033
  %263 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %262) #11, !dbg !1035, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %263, metadata !751, metadata !DIExpression()), !dbg !1033
  %264 = trunc i64 %263 to i32, !dbg !1036
  %265 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !1037
  %266 = load ptr, ptr %265, align 8, !dbg !1037, !tbaa !763
  store i32 %264, ptr %266, align 4, !dbg !1038, !tbaa !505
  %267 = load i32, ptr %10, align 8, !dbg !1039, !tbaa !745
  %268 = add nsw i32 %267, 32, !dbg !1039
  %269 = getelementptr inbounds i8, ptr %266, i64 4, !dbg !1040
  store ptr %269, ptr %265, align 8, !dbg !1040, !tbaa !763
  br label %270, !dbg !1041

270:                                              ; preds = %251, %260
  %271 = phi i32 [ %258, %251 ], [ %268, %260 ], !dbg !1042
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.value(metadata i32 1, metadata !730, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.value(metadata i32 0, metadata !731, metadata !DIExpression()), !dbg !1044
  %272 = shl i64 %257, 1, !dbg !1045
  %273 = add nsw i32 %271, -1, !dbg !1042
  store i32 %273, ptr %10, align 8, !dbg !1042, !tbaa !745
  %274 = icmp slt i32 %271, 34, !dbg !1046
  br i1 %274, label %275, label %285, !dbg !1047

275:                                              ; preds = %270
  %276 = zext i32 %273 to i64, !dbg !1048
  %277 = shl i64 %272, %276, !dbg !1048
  call void @llvm.dbg.value(metadata i64 %277, metadata !751, metadata !DIExpression()), !dbg !1049
  %278 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %277) #11, !dbg !1051, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %278, metadata !751, metadata !DIExpression()), !dbg !1049
  %279 = trunc i64 %278 to i32, !dbg !1052
  %280 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !1053
  %281 = load ptr, ptr %280, align 8, !dbg !1053, !tbaa !763
  store i32 %279, ptr %281, align 4, !dbg !1054, !tbaa !505
  %282 = load i32, ptr %10, align 8, !dbg !1055, !tbaa !745
  %283 = add nsw i32 %282, 32, !dbg !1055
  %284 = getelementptr inbounds i8, ptr %281, i64 4, !dbg !1056
  store ptr %284, ptr %280, align 8, !dbg !1056, !tbaa !763
  br label %285, !dbg !1057

285:                                              ; preds = %275, %270, %167
  %286 = phi i32 [ %283, %275 ], [ %273, %270 ], [ %168, %167 ], !dbg !1058
  %287 = phi i64 [ %272, %275 ], [ %272, %270 ], [ %154, %167 ], !dbg !1061
  %288 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 6, !dbg !1062
  %289 = load i32, ptr %288, align 4, !dbg !1062, !tbaa !488
  call void @llvm.dbg.value(metadata ptr %0, metadata !868, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata i32 %289, metadata !869, metadata !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value)), !dbg !1063
  call void @llvm.dbg.value(metadata i32 0, metadata !870, metadata !DIExpression()), !dbg !1063
  %290 = add nsw i32 %289, -3, !dbg !1064
  call void @llvm.dbg.value(metadata i32 %290, metadata !869, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata i32 %290, metadata !871, metadata !DIExpression()), !dbg !1063
  %291 = icmp sgt i32 %289, 65538, !dbg !1065
  %292 = lshr i32 %290, 16
  %293 = select i1 %291, i32 32, i32 0, !dbg !1066
  %294 = select i1 %291, i32 %292, i32 %290, !dbg !1066
  call void @llvm.dbg.value(metadata i32 %294, metadata !871, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata i32 %293, metadata !870, metadata !DIExpression()), !dbg !1063
  %295 = icmp sgt i32 %294, 255, !dbg !1067
  %296 = or i32 %293, 16, !dbg !1068
  %297 = lshr i32 %294, 8, !dbg !1068
  %298 = select i1 %295, i32 %296, i32 %293, !dbg !1068
  %299 = select i1 %295, i32 %297, i32 %294, !dbg !1068
  call void @llvm.dbg.value(metadata i32 %299, metadata !871, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata i32 %298, metadata !870, metadata !DIExpression()), !dbg !1063
  %300 = sext i32 %299 to i64, !dbg !1069
  %301 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %300, !dbg !1069
  %302 = load i8, ptr %301, align 1, !dbg !1069, !tbaa !883
  %303 = zext i8 %302 to i32, !dbg !1069
  %304 = add nuw nsw i32 %298, %303, !dbg !1070
  call void @llvm.dbg.value(metadata i32 %304, metadata !870, metadata !DIExpression()), !dbg !1063
  %305 = lshr i32 %304, 1, !dbg !1071
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !1072
  call void @llvm.dbg.value(metadata i32 %305, metadata !730, metadata !DIExpression()), !dbg !1072
  call void @llvm.dbg.value(metadata i32 0, metadata !731, metadata !DIExpression()), !dbg !1072
  %306 = zext i32 %305 to i64, !dbg !1073
  %307 = shl i64 %287, %306, !dbg !1073
  %308 = sub nsw i32 %286, %305, !dbg !1058
  store i32 %308, ptr %10, align 8, !dbg !1058, !tbaa !745
  %309 = icmp slt i32 %308, 33, !dbg !1074
  br i1 %309, label %310, label %320, !dbg !1075

310:                                              ; preds = %285
  %311 = zext i32 %308 to i64, !dbg !1076
  %312 = shl i64 %307, %311, !dbg !1076
  call void @llvm.dbg.value(metadata i64 %312, metadata !751, metadata !DIExpression()), !dbg !1077
  %313 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %312) #11, !dbg !1079, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %313, metadata !751, metadata !DIExpression()), !dbg !1077
  %314 = trunc i64 %313 to i32, !dbg !1080
  %315 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !1081
  %316 = load ptr, ptr %315, align 8, !dbg !1081, !tbaa !763
  store i32 %314, ptr %316, align 4, !dbg !1082, !tbaa !505
  %317 = load i32, ptr %10, align 8, !dbg !1083, !tbaa !745
  %318 = add nsw i32 %317, 32, !dbg !1083
  %319 = getelementptr inbounds i8, ptr %316, i64 4, !dbg !1084
  store ptr %319, ptr %315, align 8, !dbg !1084, !tbaa !763
  br label %320, !dbg !1085

320:                                              ; preds = %310, %285
  %321 = phi i32 [ %308, %285 ], [ %318, %310 ], !dbg !1086
  %322 = add nuw nsw i32 %305, 1, !dbg !1088
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i32 %322, metadata !730, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i32 %290, metadata !731, metadata !DIExpression()), !dbg !1089
  %323 = zext i32 %322 to i64, !dbg !1090
  %324 = shl i64 %307, %323, !dbg !1090
  %325 = zext i32 %290 to i64, !dbg !1091
  %326 = or i64 %324, %325, !dbg !1092
  store i64 %326, ptr %5, align 8, !dbg !1093, !tbaa !737
  %327 = sub nsw i32 %321, %322, !dbg !1086
  store i32 %327, ptr %10, align 8, !dbg !1086, !tbaa !745
  %328 = icmp slt i32 %327, 33, !dbg !1094
  br i1 %328, label %329, label %339, !dbg !1095

329:                                              ; preds = %320
  %330 = zext i32 %327 to i64, !dbg !1096
  %331 = shl i64 %326, %330, !dbg !1096
  call void @llvm.dbg.value(metadata i64 %331, metadata !751, metadata !DIExpression()), !dbg !1097
  %332 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %331) #11, !dbg !1099, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %332, metadata !751, metadata !DIExpression()), !dbg !1097
  %333 = trunc i64 %332 to i32, !dbg !1100
  %334 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !1101
  %335 = load ptr, ptr %334, align 8, !dbg !1101, !tbaa !763
  store i32 %333, ptr %335, align 4, !dbg !1102, !tbaa !505
  %336 = load i32, ptr %10, align 8, !dbg !1103, !tbaa !745
  %337 = add nsw i32 %336, 32, !dbg !1103
  %338 = getelementptr inbounds i8, ptr %335, i64 4, !dbg !1104
  store ptr %338, ptr %334, align 8, !dbg !1104, !tbaa !763
  br label %339, !dbg !1105

339:                                              ; preds = %320, %329
  %340 = phi i32 [ %327, %320 ], [ %337, %329 ], !dbg !1106
  %341 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 7, !dbg !1109
  %342 = load i32, ptr %341, align 4, !dbg !1109, !tbaa !491
  call void @llvm.dbg.value(metadata ptr %0, metadata !868, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i32 %342, metadata !869, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i32 0, metadata !870, metadata !DIExpression()), !dbg !1110
  %343 = add i32 %342, 1, !dbg !1111
  call void @llvm.dbg.value(metadata i32 %343, metadata !869, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i32 %343, metadata !871, metadata !DIExpression()), !dbg !1110
  %344 = icmp sgt i32 %343, 65535, !dbg !1112
  %345 = lshr i32 %343, 16
  %346 = select i1 %344, i32 32, i32 0, !dbg !1113
  %347 = select i1 %344, i32 %345, i32 %343, !dbg !1113
  call void @llvm.dbg.value(metadata i32 %347, metadata !871, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i32 %346, metadata !870, metadata !DIExpression()), !dbg !1110
  %348 = icmp sgt i32 %347, 255, !dbg !1114
  %349 = or i32 %346, 16, !dbg !1115
  %350 = lshr i32 %347, 8, !dbg !1115
  %351 = select i1 %348, i32 %349, i32 %346, !dbg !1115
  %352 = select i1 %348, i32 %350, i32 %347, !dbg !1115
  call void @llvm.dbg.value(metadata i32 %352, metadata !871, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i32 %351, metadata !870, metadata !DIExpression()), !dbg !1110
  %353 = sext i32 %352 to i64, !dbg !1116
  %354 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %353, !dbg !1116
  %355 = load i8, ptr %354, align 1, !dbg !1116, !tbaa !883
  %356 = zext i8 %355 to i32, !dbg !1116
  %357 = add nuw nsw i32 %351, %356, !dbg !1117
  call void @llvm.dbg.value(metadata i32 %357, metadata !870, metadata !DIExpression()), !dbg !1110
  %358 = lshr i32 %357, 1, !dbg !1118
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !1119
  call void @llvm.dbg.value(metadata i32 %358, metadata !730, metadata !DIExpression()), !dbg !1119
  call void @llvm.dbg.value(metadata i32 0, metadata !731, metadata !DIExpression()), !dbg !1119
  %359 = zext i32 %358 to i64, !dbg !1120
  %360 = shl i64 %326, %359, !dbg !1120
  %361 = sub nsw i32 %340, %358, !dbg !1106
  store i32 %361, ptr %10, align 8, !dbg !1106, !tbaa !745
  %362 = icmp slt i32 %361, 33, !dbg !1121
  br i1 %362, label %363, label %373, !dbg !1122

363:                                              ; preds = %339
  %364 = zext i32 %361 to i64, !dbg !1123
  %365 = shl i64 %360, %364, !dbg !1123
  call void @llvm.dbg.value(metadata i64 %365, metadata !751, metadata !DIExpression()), !dbg !1124
  %366 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %365) #11, !dbg !1126, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %366, metadata !751, metadata !DIExpression()), !dbg !1124
  %367 = trunc i64 %366 to i32, !dbg !1127
  %368 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !1128
  %369 = load ptr, ptr %368, align 8, !dbg !1128, !tbaa !763
  store i32 %367, ptr %369, align 4, !dbg !1129, !tbaa !505
  %370 = load i32, ptr %10, align 8, !dbg !1130, !tbaa !745
  %371 = add nsw i32 %370, 32, !dbg !1130
  %372 = getelementptr inbounds i8, ptr %369, i64 4, !dbg !1131
  store ptr %372, ptr %368, align 8, !dbg !1131, !tbaa !763
  br label %373, !dbg !1132

373:                                              ; preds = %363, %339
  %374 = phi i32 [ %361, %339 ], [ %371, %363 ], !dbg !1133
  %375 = add nuw nsw i32 %358, 1, !dbg !1135
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !1136
  call void @llvm.dbg.value(metadata i32 %375, metadata !730, metadata !DIExpression()), !dbg !1136
  call void @llvm.dbg.value(metadata i32 %343, metadata !731, metadata !DIExpression()), !dbg !1136
  %376 = zext i32 %375 to i64, !dbg !1137
  %377 = shl i64 %360, %376, !dbg !1137
  %378 = zext i32 %343 to i64, !dbg !1138
  %379 = or i64 %377, %378, !dbg !1139
  %380 = sub nsw i32 %374, %375, !dbg !1133
  store i32 %380, ptr %10, align 8, !dbg !1133, !tbaa !745
  %381 = icmp slt i32 %380, 33, !dbg !1140
  br i1 %381, label %382, label %392, !dbg !1141

382:                                              ; preds = %373
  %383 = zext i32 %380 to i64, !dbg !1142
  %384 = shl i64 %379, %383, !dbg !1142
  call void @llvm.dbg.value(metadata i64 %384, metadata !751, metadata !DIExpression()), !dbg !1143
  %385 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %384) #11, !dbg !1145, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %385, metadata !751, metadata !DIExpression()), !dbg !1143
  %386 = trunc i64 %385 to i32, !dbg !1146
  %387 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !1147
  %388 = load ptr, ptr %387, align 8, !dbg !1147, !tbaa !763
  store i32 %386, ptr %388, align 4, !dbg !1148, !tbaa !505
  %389 = load i32, ptr %10, align 8, !dbg !1149, !tbaa !745
  %390 = add nsw i32 %389, 32, !dbg !1149
  %391 = getelementptr inbounds i8, ptr %388, i64 4, !dbg !1150
  store ptr %391, ptr %387, align 8, !dbg !1150, !tbaa !763
  br label %392, !dbg !1151

392:                                              ; preds = %373, %382
  %393 = phi i32 [ %380, %373 ], [ %390, %382 ]
  %394 = load i32, ptr %341, align 4, !dbg !1152, !tbaa !491
  switch i32 %394, label %635 [
    i32 0, label %395
    i32 1, label %447
  ], !dbg !1153

395:                                              ; preds = %392
  %396 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 8, !dbg !1154
  %397 = load i32, ptr %396, align 4, !dbg !1154, !tbaa !496
  call void @llvm.dbg.value(metadata ptr %0, metadata !868, metadata !DIExpression()), !dbg !1156
  call void @llvm.dbg.value(metadata i32 %397, metadata !869, metadata !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value)), !dbg !1156
  call void @llvm.dbg.value(metadata i32 0, metadata !870, metadata !DIExpression()), !dbg !1156
  %398 = add nsw i32 %397, -3, !dbg !1158
  call void @llvm.dbg.value(metadata i32 %398, metadata !869, metadata !DIExpression()), !dbg !1156
  call void @llvm.dbg.value(metadata i32 %398, metadata !871, metadata !DIExpression()), !dbg !1156
  %399 = icmp sgt i32 %397, 65538, !dbg !1159
  %400 = lshr i32 %398, 16
  %401 = select i1 %399, i32 32, i32 0, !dbg !1160
  %402 = select i1 %399, i32 %400, i32 %398, !dbg !1160
  call void @llvm.dbg.value(metadata i32 %402, metadata !871, metadata !DIExpression()), !dbg !1156
  call void @llvm.dbg.value(metadata i32 %401, metadata !870, metadata !DIExpression()), !dbg !1156
  %403 = icmp sgt i32 %402, 255, !dbg !1161
  %404 = or i32 %401, 16, !dbg !1162
  %405 = lshr i32 %402, 8, !dbg !1162
  %406 = select i1 %403, i32 %404, i32 %401, !dbg !1162
  %407 = select i1 %403, i32 %405, i32 %402, !dbg !1162
  call void @llvm.dbg.value(metadata i32 %407, metadata !871, metadata !DIExpression()), !dbg !1156
  call void @llvm.dbg.value(metadata i32 %406, metadata !870, metadata !DIExpression()), !dbg !1156
  %408 = sext i32 %407 to i64, !dbg !1163
  %409 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %408, !dbg !1163
  %410 = load i8, ptr %409, align 1, !dbg !1163, !tbaa !883
  %411 = zext i8 %410 to i32, !dbg !1163
  %412 = add nuw nsw i32 %406, %411, !dbg !1164
  call void @llvm.dbg.value(metadata i32 %412, metadata !870, metadata !DIExpression()), !dbg !1156
  %413 = lshr i32 %412, 1, !dbg !1165
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !1166
  call void @llvm.dbg.value(metadata i32 %413, metadata !730, metadata !DIExpression()), !dbg !1166
  call void @llvm.dbg.value(metadata i32 0, metadata !731, metadata !DIExpression()), !dbg !1166
  %414 = zext i32 %413 to i64, !dbg !1168
  %415 = shl i64 %379, %414, !dbg !1168
  %416 = sub nsw i32 %393, %413, !dbg !1169
  store i32 %416, ptr %10, align 8, !dbg !1169, !tbaa !745
  %417 = icmp slt i32 %416, 33, !dbg !1170
  br i1 %417, label %418, label %428, !dbg !1171

418:                                              ; preds = %395
  %419 = zext i32 %416 to i64, !dbg !1172
  %420 = shl i64 %415, %419, !dbg !1172
  call void @llvm.dbg.value(metadata i64 %420, metadata !751, metadata !DIExpression()), !dbg !1173
  %421 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %420) #11, !dbg !1175, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %421, metadata !751, metadata !DIExpression()), !dbg !1173
  %422 = trunc i64 %421 to i32, !dbg !1176
  %423 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !1177
  %424 = load ptr, ptr %423, align 8, !dbg !1177, !tbaa !763
  store i32 %422, ptr %424, align 4, !dbg !1178, !tbaa !505
  %425 = load i32, ptr %10, align 8, !dbg !1179, !tbaa !745
  %426 = add nsw i32 %425, 32, !dbg !1179
  %427 = getelementptr inbounds i8, ptr %424, i64 4, !dbg !1180
  store ptr %427, ptr %423, align 8, !dbg !1180, !tbaa !763
  br label %428, !dbg !1181

428:                                              ; preds = %418, %395
  %429 = phi i32 [ %416, %395 ], [ %426, %418 ], !dbg !1182
  %430 = add nuw nsw i32 %413, 1, !dbg !1184
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !1185
  call void @llvm.dbg.value(metadata i32 %430, metadata !730, metadata !DIExpression()), !dbg !1185
  call void @llvm.dbg.value(metadata i32 %398, metadata !731, metadata !DIExpression()), !dbg !1185
  %431 = zext i32 %430 to i64, !dbg !1186
  %432 = shl i64 %415, %431, !dbg !1186
  %433 = zext i32 %398 to i64, !dbg !1187
  %434 = or i64 %432, %433, !dbg !1188
  store i64 %434, ptr %5, align 8, !dbg !1189, !tbaa !737
  %435 = sub nsw i32 %429, %430, !dbg !1182
  store i32 %435, ptr %10, align 8, !dbg !1182, !tbaa !745
  %436 = icmp slt i32 %435, 33, !dbg !1190
  br i1 %436, label %437, label %635, !dbg !1191

437:                                              ; preds = %428
  %438 = zext i32 %435 to i64, !dbg !1192
  %439 = shl i64 %434, %438, !dbg !1192
  call void @llvm.dbg.value(metadata i64 %439, metadata !751, metadata !DIExpression()), !dbg !1193
  %440 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %439) #11, !dbg !1195, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %440, metadata !751, metadata !DIExpression()), !dbg !1193
  %441 = trunc i64 %440 to i32, !dbg !1196
  %442 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !1197
  %443 = load ptr, ptr %442, align 8, !dbg !1197, !tbaa !763
  store i32 %441, ptr %443, align 4, !dbg !1198, !tbaa !505
  %444 = load i32, ptr %10, align 8, !dbg !1199, !tbaa !745
  %445 = add nsw i32 %444, 32, !dbg !1199
  %446 = getelementptr inbounds i8, ptr %443, i64 4, !dbg !1200
  store ptr %446, ptr %442, align 8, !dbg !1200, !tbaa !763
  br label %635, !dbg !1201

447:                                              ; preds = %392
  %448 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 9, !dbg !1202
  %449 = load i32, ptr %448, align 4, !dbg !1202, !tbaa !1203
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !1204
  call void @llvm.dbg.value(metadata i32 1, metadata !730, metadata !DIExpression()), !dbg !1204
  call void @llvm.dbg.value(metadata i32 %449, metadata !731, metadata !DIExpression()), !dbg !1204
  %450 = shl i64 %379, 1, !dbg !1206
  %451 = zext i32 %449 to i64, !dbg !1207
  %452 = or i64 %450, %451, !dbg !1208
  %453 = add nsw i32 %393, -1, !dbg !1209
  store i32 %453, ptr %10, align 8, !dbg !1209, !tbaa !745
  %454 = icmp slt i32 %393, 34, !dbg !1210
  br i1 %454, label %455, label %465, !dbg !1211

455:                                              ; preds = %447
  %456 = zext i32 %453 to i64, !dbg !1212
  %457 = shl i64 %452, %456, !dbg !1212
  call void @llvm.dbg.value(metadata i64 %457, metadata !751, metadata !DIExpression()), !dbg !1213
  %458 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %457) #11, !dbg !1215, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %458, metadata !751, metadata !DIExpression()), !dbg !1213
  %459 = trunc i64 %458 to i32, !dbg !1216
  %460 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !1217
  %461 = load ptr, ptr %460, align 8, !dbg !1217, !tbaa !763
  store i32 %459, ptr %461, align 4, !dbg !1218, !tbaa !505
  %462 = load i32, ptr %10, align 8, !dbg !1219, !tbaa !745
  %463 = add nsw i32 %462, 32, !dbg !1219
  %464 = getelementptr inbounds i8, ptr %461, i64 4, !dbg !1220
  store ptr %464, ptr %460, align 8, !dbg !1220, !tbaa !763
  br label %465, !dbg !1221

465:                                              ; preds = %447, %455
  %466 = phi i32 [ %453, %447 ], [ %463, %455 ], !dbg !1222
  %467 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 10, !dbg !1233
  %468 = load i32, ptr %467, align 4, !dbg !1233, !tbaa !1234
  call void @llvm.dbg.value(metadata ptr %0, metadata !1228, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i32 %468, metadata !1229, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i32 0, metadata !1230, metadata !DIExpression()), !dbg !1235
  %469 = icmp slt i32 %468, 1, !dbg !1236
  %470 = mul i32 %468, -2, !dbg !1237
  %471 = or i32 %470, 1, !dbg !1237
  %472 = shl nsw i32 %468, 1, !dbg !1237
  %473 = select i1 %469, i32 %471, i32 %472, !dbg !1237
  call void @llvm.dbg.value(metadata i32 %473, metadata !1229, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i32 %473, metadata !1231, metadata !DIExpression()), !dbg !1235
  %474 = icmp sgt i32 %473, 255, !dbg !1238
  %475 = lshr i32 %473, 8, !dbg !1240
  %476 = select i1 %474, i32 16, i32 0, !dbg !1240
  %477 = select i1 %474, i32 %475, i32 %473, !dbg !1240
  call void @llvm.dbg.value(metadata i32 %477, metadata !1231, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i32 %476, metadata !1230, metadata !DIExpression()), !dbg !1235
  %478 = sext i32 %477 to i64, !dbg !1241
  %479 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %478, !dbg !1241
  %480 = load i8, ptr %479, align 1, !dbg !1241, !tbaa !883
  %481 = zext i8 %480 to i32, !dbg !1241
  %482 = add nuw nsw i32 %476, %481, !dbg !1242
  call void @llvm.dbg.value(metadata i32 %482, metadata !1230, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !1243
  call void @llvm.dbg.value(metadata i32 %482, metadata !730, metadata !DIExpression()), !dbg !1243
  call void @llvm.dbg.value(metadata i32 %473, metadata !731, metadata !DIExpression()), !dbg !1243
  %483 = zext i32 %482 to i64, !dbg !1244
  %484 = shl i64 %452, %483, !dbg !1244
  %485 = zext i32 %473 to i64, !dbg !1245
  %486 = or i64 %484, %485, !dbg !1246
  store i64 %486, ptr %5, align 8, !dbg !1247, !tbaa !737
  %487 = sub nsw i32 %466, %482, !dbg !1222
  store i32 %487, ptr %10, align 8, !dbg !1222, !tbaa !745
  %488 = icmp slt i32 %487, 33, !dbg !1248
  br i1 %488, label %489, label %499, !dbg !1249

489:                                              ; preds = %465
  %490 = zext i32 %487 to i64, !dbg !1250
  %491 = shl i64 %486, %490, !dbg !1250
  call void @llvm.dbg.value(metadata i64 %491, metadata !751, metadata !DIExpression()), !dbg !1251
  %492 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %491) #11, !dbg !1253, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %492, metadata !751, metadata !DIExpression()), !dbg !1251
  %493 = trunc i64 %492 to i32, !dbg !1254
  %494 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !1255
  %495 = load ptr, ptr %494, align 8, !dbg !1255, !tbaa !763
  store i32 %493, ptr %495, align 4, !dbg !1256, !tbaa !505
  %496 = load i32, ptr %10, align 8, !dbg !1257, !tbaa !745
  %497 = add nsw i32 %496, 32, !dbg !1257
  %498 = getelementptr inbounds i8, ptr %495, i64 4, !dbg !1258
  store ptr %498, ptr %494, align 8, !dbg !1258, !tbaa !763
  br label %499, !dbg !1259

499:                                              ; preds = %465, %489
  %500 = phi i32 [ %487, %465 ], [ %497, %489 ], !dbg !1260
  %501 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 11, !dbg !1263
  %502 = load i32, ptr %501, align 4, !dbg !1263, !tbaa !1264
  call void @llvm.dbg.value(metadata ptr %0, metadata !1228, metadata !DIExpression()), !dbg !1265
  call void @llvm.dbg.value(metadata i32 %502, metadata !1229, metadata !DIExpression()), !dbg !1265
  call void @llvm.dbg.value(metadata i32 0, metadata !1230, metadata !DIExpression()), !dbg !1265
  %503 = icmp slt i32 %502, 1, !dbg !1266
  %504 = mul i32 %502, -2, !dbg !1267
  %505 = or i32 %504, 1, !dbg !1267
  %506 = shl nsw i32 %502, 1, !dbg !1267
  %507 = select i1 %503, i32 %505, i32 %506, !dbg !1267
  call void @llvm.dbg.value(metadata i32 %507, metadata !1229, metadata !DIExpression()), !dbg !1265
  call void @llvm.dbg.value(metadata i32 %507, metadata !1231, metadata !DIExpression()), !dbg !1265
  %508 = icmp sgt i32 %507, 255, !dbg !1268
  %509 = lshr i32 %507, 8, !dbg !1269
  %510 = select i1 %508, i32 16, i32 0, !dbg !1269
  %511 = select i1 %508, i32 %509, i32 %507, !dbg !1269
  call void @llvm.dbg.value(metadata i32 %511, metadata !1231, metadata !DIExpression()), !dbg !1265
  call void @llvm.dbg.value(metadata i32 %510, metadata !1230, metadata !DIExpression()), !dbg !1265
  %512 = sext i32 %511 to i64, !dbg !1270
  %513 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %512, !dbg !1270
  %514 = load i8, ptr %513, align 1, !dbg !1270, !tbaa !883
  %515 = zext i8 %514 to i32, !dbg !1270
  %516 = add nuw nsw i32 %510, %515, !dbg !1271
  call void @llvm.dbg.value(metadata i32 %516, metadata !1230, metadata !DIExpression()), !dbg !1265
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !1272
  call void @llvm.dbg.value(metadata i32 %516, metadata !730, metadata !DIExpression()), !dbg !1272
  call void @llvm.dbg.value(metadata i32 %507, metadata !731, metadata !DIExpression()), !dbg !1272
  %517 = zext i32 %516 to i64, !dbg !1273
  %518 = shl i64 %486, %517, !dbg !1273
  %519 = zext i32 %507 to i64, !dbg !1274
  %520 = or i64 %518, %519, !dbg !1275
  %521 = sub nsw i32 %500, %516, !dbg !1260
  store i32 %521, ptr %10, align 8, !dbg !1260, !tbaa !745
  %522 = icmp slt i32 %521, 33, !dbg !1276
  br i1 %522, label %523, label %533, !dbg !1277

523:                                              ; preds = %499
  %524 = zext i32 %521 to i64, !dbg !1278
  %525 = shl i64 %520, %524, !dbg !1278
  call void @llvm.dbg.value(metadata i64 %525, metadata !751, metadata !DIExpression()), !dbg !1279
  %526 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %525) #11, !dbg !1281, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %526, metadata !751, metadata !DIExpression()), !dbg !1279
  %527 = trunc i64 %526 to i32, !dbg !1282
  %528 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !1283
  %529 = load ptr, ptr %528, align 8, !dbg !1283, !tbaa !763
  store i32 %527, ptr %529, align 4, !dbg !1284, !tbaa !505
  %530 = load i32, ptr %10, align 8, !dbg !1285, !tbaa !745
  %531 = add nsw i32 %530, 32, !dbg !1285
  %532 = getelementptr inbounds i8, ptr %529, i64 4, !dbg !1286
  store ptr %532, ptr %528, align 8, !dbg !1286, !tbaa !763
  br label %533, !dbg !1287

533:                                              ; preds = %499, %523
  %534 = phi i32 [ %521, %499 ], [ %531, %523 ], !dbg !1288
  %535 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 12, !dbg !1291
  %536 = load i32, ptr %535, align 4, !dbg !1291, !tbaa !1292
  call void @llvm.dbg.value(metadata ptr %0, metadata !868, metadata !DIExpression()), !dbg !1293
  call void @llvm.dbg.value(metadata i32 %536, metadata !869, metadata !DIExpression()), !dbg !1293
  call void @llvm.dbg.value(metadata i32 0, metadata !870, metadata !DIExpression()), !dbg !1293
  %537 = add i32 %536, 1, !dbg !1294
  call void @llvm.dbg.value(metadata i32 %537, metadata !869, metadata !DIExpression()), !dbg !1293
  call void @llvm.dbg.value(metadata i32 %537, metadata !871, metadata !DIExpression()), !dbg !1293
  %538 = icmp sgt i32 %537, 65535, !dbg !1295
  %539 = lshr i32 %537, 16
  %540 = select i1 %538, i32 32, i32 0, !dbg !1296
  %541 = select i1 %538, i32 %539, i32 %537, !dbg !1296
  call void @llvm.dbg.value(metadata i32 %541, metadata !871, metadata !DIExpression()), !dbg !1293
  call void @llvm.dbg.value(metadata i32 %540, metadata !870, metadata !DIExpression()), !dbg !1293
  %542 = icmp sgt i32 %541, 255, !dbg !1297
  %543 = or i32 %540, 16, !dbg !1298
  %544 = lshr i32 %541, 8, !dbg !1298
  %545 = select i1 %542, i32 %543, i32 %540, !dbg !1298
  %546 = select i1 %542, i32 %544, i32 %541, !dbg !1298
  call void @llvm.dbg.value(metadata i32 %546, metadata !871, metadata !DIExpression()), !dbg !1293
  call void @llvm.dbg.value(metadata i32 %545, metadata !870, metadata !DIExpression()), !dbg !1293
  %547 = sext i32 %546 to i64, !dbg !1299
  %548 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %547, !dbg !1299
  %549 = load i8, ptr %548, align 1, !dbg !1299, !tbaa !883
  %550 = zext i8 %549 to i32, !dbg !1299
  %551 = add nuw nsw i32 %545, %550, !dbg !1300
  call void @llvm.dbg.value(metadata i32 %551, metadata !870, metadata !DIExpression()), !dbg !1293
  %552 = lshr i32 %551, 1, !dbg !1301
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !1302
  call void @llvm.dbg.value(metadata i32 %552, metadata !730, metadata !DIExpression()), !dbg !1302
  call void @llvm.dbg.value(metadata i32 0, metadata !731, metadata !DIExpression()), !dbg !1302
  %553 = zext i32 %552 to i64, !dbg !1303
  %554 = shl i64 %520, %553, !dbg !1303
  %555 = sub nsw i32 %534, %552, !dbg !1288
  store i32 %555, ptr %10, align 8, !dbg !1288, !tbaa !745
  %556 = icmp slt i32 %555, 33, !dbg !1304
  br i1 %556, label %557, label %567, !dbg !1305

557:                                              ; preds = %533
  %558 = zext i32 %555 to i64, !dbg !1306
  %559 = shl i64 %554, %558, !dbg !1306
  call void @llvm.dbg.value(metadata i64 %559, metadata !751, metadata !DIExpression()), !dbg !1307
  %560 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %559) #11, !dbg !1309, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %560, metadata !751, metadata !DIExpression()), !dbg !1307
  %561 = trunc i64 %560 to i32, !dbg !1310
  %562 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !1311
  %563 = load ptr, ptr %562, align 8, !dbg !1311, !tbaa !763
  store i32 %561, ptr %563, align 4, !dbg !1312, !tbaa !505
  %564 = load i32, ptr %10, align 8, !dbg !1313, !tbaa !745
  %565 = add nsw i32 %564, 32, !dbg !1313
  %566 = getelementptr inbounds i8, ptr %563, i64 4, !dbg !1314
  store ptr %566, ptr %562, align 8, !dbg !1314, !tbaa !763
  br label %567, !dbg !1315

567:                                              ; preds = %557, %533
  %568 = phi i32 [ %555, %533 ], [ %565, %557 ], !dbg !1316
  %569 = add nuw nsw i32 %552, 1, !dbg !1318
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.value(metadata i32 %569, metadata !730, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.value(metadata i32 %537, metadata !731, metadata !DIExpression()), !dbg !1319
  %570 = zext i32 %569 to i64, !dbg !1320
  %571 = shl i64 %554, %570, !dbg !1320
  %572 = zext i32 %537 to i64, !dbg !1321
  %573 = or i64 %571, %572, !dbg !1322
  %574 = sub nsw i32 %568, %569, !dbg !1316
  store i32 %574, ptr %10, align 8, !dbg !1316, !tbaa !745
  %575 = icmp slt i32 %574, 33, !dbg !1323
  br i1 %575, label %576, label %586, !dbg !1324

576:                                              ; preds = %567
  %577 = zext i32 %574 to i64, !dbg !1325
  %578 = shl i64 %573, %577, !dbg !1325
  call void @llvm.dbg.value(metadata i64 %578, metadata !751, metadata !DIExpression()), !dbg !1326
  %579 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %578) #11, !dbg !1328, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %579, metadata !751, metadata !DIExpression()), !dbg !1326
  %580 = trunc i64 %579 to i32, !dbg !1329
  %581 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !1330
  %582 = load ptr, ptr %581, align 8, !dbg !1330, !tbaa !763
  store i32 %580, ptr %582, align 4, !dbg !1331, !tbaa !505
  %583 = load i32, ptr %10, align 8, !dbg !1332, !tbaa !745
  %584 = add nsw i32 %583, 32, !dbg !1332
  store i32 %584, ptr %10, align 8, !dbg !1332, !tbaa !745
  %585 = getelementptr inbounds i8, ptr %582, i64 4, !dbg !1333
  store ptr %585, ptr %581, align 8, !dbg !1333, !tbaa !763
  br label %586, !dbg !1334

586:                                              ; preds = %567, %576
  %587 = phi i32 [ %574, %567 ], [ %584, %576 ]
  call void @llvm.dbg.value(metadata i32 0, metadata !237, metadata !DIExpression()), !dbg !1335
  %588 = load i32, ptr %535, align 4, !dbg !1336, !tbaa !1292
  %589 = icmp sgt i32 %588, 0, !dbg !1339
  br i1 %589, label %590, label %635, !dbg !1340

590:                                              ; preds = %586
  %591 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1
  br label %592, !dbg !1340

592:                                              ; preds = %590, %629
  %593 = phi i32 [ %588, %590 ], [ %630, %629 ]
  %594 = phi i32 [ %587, %590 ], [ %631, %629 ], !dbg !1341
  %595 = phi i64 [ 0, %590 ], [ %632, %629 ], !dbg !1335
  %596 = phi i64 [ %573, %590 ], [ %616, %629 ], !dbg !1335
  call void @llvm.dbg.value(metadata i64 %595, metadata !237, metadata !DIExpression()), !dbg !1335
  %597 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 13, i64 %595, !dbg !1345
  %598 = load i32, ptr %597, align 4, !dbg !1345, !tbaa !505
  call void @llvm.dbg.value(metadata ptr %0, metadata !1228, metadata !DIExpression()), !dbg !1346
  call void @llvm.dbg.value(metadata i32 %598, metadata !1229, metadata !DIExpression()), !dbg !1346
  call void @llvm.dbg.value(metadata i32 0, metadata !1230, metadata !DIExpression()), !dbg !1346
  %599 = icmp slt i32 %598, 1, !dbg !1347
  %600 = mul i32 %598, -2, !dbg !1348
  %601 = or i32 %600, 1, !dbg !1348
  %602 = shl nsw i32 %598, 1, !dbg !1348
  %603 = select i1 %599, i32 %601, i32 %602, !dbg !1348
  call void @llvm.dbg.value(metadata i32 %603, metadata !1229, metadata !DIExpression()), !dbg !1346
  call void @llvm.dbg.value(metadata i32 %603, metadata !1231, metadata !DIExpression()), !dbg !1346
  %604 = icmp sgt i32 %603, 255, !dbg !1349
  %605 = lshr i32 %603, 8, !dbg !1350
  %606 = select i1 %604, i32 16, i32 0, !dbg !1350
  %607 = select i1 %604, i32 %605, i32 %603, !dbg !1350
  call void @llvm.dbg.value(metadata i32 %607, metadata !1231, metadata !DIExpression()), !dbg !1346
  call void @llvm.dbg.value(metadata i32 %606, metadata !1230, metadata !DIExpression()), !dbg !1346
  %608 = sext i32 %607 to i64, !dbg !1351
  %609 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %608, !dbg !1351
  %610 = load i8, ptr %609, align 1, !dbg !1351, !tbaa !883
  %611 = zext i8 %610 to i32, !dbg !1351
  %612 = add nuw nsw i32 %606, %611, !dbg !1352
  call void @llvm.dbg.value(metadata i32 %612, metadata !1230, metadata !DIExpression()), !dbg !1346
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !1353
  call void @llvm.dbg.value(metadata i32 %612, metadata !730, metadata !DIExpression()), !dbg !1353
  call void @llvm.dbg.value(metadata i32 %603, metadata !731, metadata !DIExpression()), !dbg !1353
  %613 = zext i32 %612 to i64, !dbg !1354
  %614 = shl i64 %596, %613, !dbg !1354
  %615 = zext i32 %603 to i64, !dbg !1355
  %616 = or i64 %614, %615, !dbg !1356
  store i64 %616, ptr %5, align 8, !dbg !1357, !tbaa !737
  %617 = sub nsw i32 %594, %612, !dbg !1341
  store i32 %617, ptr %10, align 8, !dbg !1341, !tbaa !745
  %618 = icmp slt i32 %617, 33, !dbg !1358
  br i1 %618, label %619, label %629, !dbg !1359

619:                                              ; preds = %592
  %620 = zext i32 %617 to i64, !dbg !1360
  %621 = shl i64 %616, %620, !dbg !1360
  call void @llvm.dbg.value(metadata i64 %621, metadata !751, metadata !DIExpression()), !dbg !1361
  %622 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %621) #11, !dbg !1363, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %622, metadata !751, metadata !DIExpression()), !dbg !1361
  %623 = trunc i64 %622 to i32, !dbg !1364
  %624 = load ptr, ptr %591, align 8, !dbg !1365, !tbaa !763
  store i32 %623, ptr %624, align 4, !dbg !1366, !tbaa !505
  %625 = load i32, ptr %10, align 8, !dbg !1367, !tbaa !745
  %626 = add nsw i32 %625, 32, !dbg !1367
  store i32 %626, ptr %10, align 8, !dbg !1367, !tbaa !745
  %627 = getelementptr inbounds i8, ptr %624, i64 4, !dbg !1368
  store ptr %627, ptr %591, align 8, !dbg !1368, !tbaa !763
  %628 = load i32, ptr %535, align 4, !dbg !1336, !tbaa !1292
  br label %629, !dbg !1369

629:                                              ; preds = %592, %619
  %630 = phi i32 [ %593, %592 ], [ %628, %619 ], !dbg !1336
  %631 = phi i32 [ %617, %592 ], [ %626, %619 ]
  %632 = add nuw nsw i64 %595, 1, !dbg !1370
  call void @llvm.dbg.value(metadata i64 %632, metadata !237, metadata !DIExpression()), !dbg !1335
  %633 = sext i32 %630 to i64, !dbg !1339
  %634 = icmp slt i64 %632, %633, !dbg !1339
  br i1 %634, label %592, label %635, !dbg !1340, !llvm.loop !1371

635:                                              ; preds = %629, %586, %437, %428, %392
  %636 = phi i32 [ %587, %586 ], [ %445, %437 ], [ %435, %428 ], [ %393, %392 ], [ %631, %629 ], !dbg !1373
  %637 = phi i64 [ %573, %586 ], [ %434, %437 ], [ %434, %428 ], [ %379, %392 ], [ %616, %629 ], !dbg !1376
  %638 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 14, !dbg !1377
  %639 = load i32, ptr %638, align 4, !dbg !1377, !tbaa !699
  call void @llvm.dbg.value(metadata ptr %0, metadata !868, metadata !DIExpression()), !dbg !1378
  call void @llvm.dbg.value(metadata i32 %639, metadata !869, metadata !DIExpression()), !dbg !1378
  call void @llvm.dbg.value(metadata i32 0, metadata !870, metadata !DIExpression()), !dbg !1378
  %640 = add i32 %639, 1, !dbg !1379
  call void @llvm.dbg.value(metadata i32 %640, metadata !869, metadata !DIExpression()), !dbg !1378
  call void @llvm.dbg.value(metadata i32 %640, metadata !871, metadata !DIExpression()), !dbg !1378
  %641 = icmp sgt i32 %640, 65535, !dbg !1380
  %642 = lshr i32 %640, 16
  %643 = select i1 %641, i32 32, i32 0, !dbg !1381
  %644 = select i1 %641, i32 %642, i32 %640, !dbg !1381
  call void @llvm.dbg.value(metadata i32 %644, metadata !871, metadata !DIExpression()), !dbg !1378
  call void @llvm.dbg.value(metadata i32 %643, metadata !870, metadata !DIExpression()), !dbg !1378
  %645 = icmp sgt i32 %644, 255, !dbg !1382
  %646 = or i32 %643, 16, !dbg !1383
  %647 = lshr i32 %644, 8, !dbg !1383
  %648 = select i1 %645, i32 %646, i32 %643, !dbg !1383
  %649 = select i1 %645, i32 %647, i32 %644, !dbg !1383
  call void @llvm.dbg.value(metadata i32 %649, metadata !871, metadata !DIExpression()), !dbg !1378
  call void @llvm.dbg.value(metadata i32 %648, metadata !870, metadata !DIExpression()), !dbg !1378
  %650 = sext i32 %649 to i64, !dbg !1384
  %651 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %650, !dbg !1384
  %652 = load i8, ptr %651, align 1, !dbg !1384, !tbaa !883
  %653 = zext i8 %652 to i32, !dbg !1384
  %654 = add nuw nsw i32 %648, %653, !dbg !1385
  call void @llvm.dbg.value(metadata i32 %654, metadata !870, metadata !DIExpression()), !dbg !1378
  %655 = lshr i32 %654, 1, !dbg !1386
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i32 %655, metadata !730, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i32 0, metadata !731, metadata !DIExpression()), !dbg !1387
  %656 = zext i32 %655 to i64, !dbg !1388
  %657 = shl i64 %637, %656, !dbg !1388
  %658 = sub nsw i32 %636, %655, !dbg !1373
  store i32 %658, ptr %10, align 8, !dbg !1373, !tbaa !745
  %659 = icmp slt i32 %658, 33, !dbg !1389
  br i1 %659, label %660, label %670, !dbg !1390

660:                                              ; preds = %635
  %661 = zext i32 %658 to i64, !dbg !1391
  %662 = shl i64 %657, %661, !dbg !1391
  call void @llvm.dbg.value(metadata i64 %662, metadata !751, metadata !DIExpression()), !dbg !1392
  %663 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %662) #11, !dbg !1394, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %663, metadata !751, metadata !DIExpression()), !dbg !1392
  %664 = trunc i64 %663 to i32, !dbg !1395
  %665 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !1396
  %666 = load ptr, ptr %665, align 8, !dbg !1396, !tbaa !763
  store i32 %664, ptr %666, align 4, !dbg !1397, !tbaa !505
  %667 = load i32, ptr %10, align 8, !dbg !1398, !tbaa !745
  %668 = add nsw i32 %667, 32, !dbg !1398
  %669 = getelementptr inbounds i8, ptr %666, i64 4, !dbg !1399
  store ptr %669, ptr %665, align 8, !dbg !1399, !tbaa !763
  br label %670, !dbg !1400

670:                                              ; preds = %660, %635
  %671 = phi i32 [ %658, %635 ], [ %668, %660 ], !dbg !1401
  %672 = add nuw nsw i32 %655, 1, !dbg !1403
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i32 %672, metadata !730, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i32 %640, metadata !731, metadata !DIExpression()), !dbg !1404
  %673 = zext i32 %672 to i64, !dbg !1405
  %674 = shl i64 %657, %673, !dbg !1405
  %675 = zext i32 %640 to i64, !dbg !1406
  %676 = or i64 %674, %675, !dbg !1407
  %677 = sub nsw i32 %671, %672, !dbg !1401
  store i32 %677, ptr %10, align 8, !dbg !1401, !tbaa !745
  %678 = icmp slt i32 %677, 33, !dbg !1408
  br i1 %678, label %679, label %689, !dbg !1409

679:                                              ; preds = %670
  %680 = zext i32 %677 to i64, !dbg !1410
  %681 = shl i64 %676, %680, !dbg !1410
  call void @llvm.dbg.value(metadata i64 %681, metadata !751, metadata !DIExpression()), !dbg !1411
  %682 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %681) #11, !dbg !1413, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %682, metadata !751, metadata !DIExpression()), !dbg !1411
  %683 = trunc i64 %682 to i32, !dbg !1414
  %684 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !1415
  %685 = load ptr, ptr %684, align 8, !dbg !1415, !tbaa !763
  store i32 %683, ptr %685, align 4, !dbg !1416, !tbaa !505
  %686 = load i32, ptr %10, align 8, !dbg !1417, !tbaa !745
  %687 = add nsw i32 %686, 32, !dbg !1417
  %688 = getelementptr inbounds i8, ptr %685, i64 4, !dbg !1418
  store ptr %688, ptr %684, align 8, !dbg !1418, !tbaa !763
  br label %689, !dbg !1419

689:                                              ; preds = %670, %679
  %690 = phi i32 [ %677, %670 ], [ %687, %679 ], !dbg !1420
  %691 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 15, !dbg !1422
  %692 = load i32, ptr %691, align 4, !dbg !1422, !tbaa !502
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata i32 1, metadata !730, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata i32 %692, metadata !731, metadata !DIExpression()), !dbg !1423
  %693 = shl i64 %676, 1, !dbg !1424
  %694 = zext i32 %692 to i64, !dbg !1425
  %695 = or i64 %693, %694, !dbg !1426
  %696 = add nsw i32 %690, -1, !dbg !1420
  store i32 %696, ptr %10, align 8, !dbg !1420, !tbaa !745
  %697 = icmp slt i32 %690, 34, !dbg !1427
  br i1 %697, label %698, label %708, !dbg !1428

698:                                              ; preds = %689
  %699 = zext i32 %696 to i64, !dbg !1429
  %700 = shl i64 %695, %699, !dbg !1429
  call void @llvm.dbg.value(metadata i64 %700, metadata !751, metadata !DIExpression()), !dbg !1430
  %701 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %700) #11, !dbg !1432, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %701, metadata !751, metadata !DIExpression()), !dbg !1430
  %702 = trunc i64 %701 to i32, !dbg !1433
  %703 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !1434
  %704 = load ptr, ptr %703, align 8, !dbg !1434, !tbaa !763
  store i32 %702, ptr %704, align 4, !dbg !1435, !tbaa !505
  %705 = load i32, ptr %10, align 8, !dbg !1436, !tbaa !745
  %706 = add nsw i32 %705, 32, !dbg !1436
  %707 = getelementptr inbounds i8, ptr %704, i64 4, !dbg !1437
  store ptr %707, ptr %703, align 8, !dbg !1437, !tbaa !763
  br label %708, !dbg !1438

708:                                              ; preds = %689, %698
  %709 = phi i32 [ %696, %689 ], [ %706, %698 ], !dbg !1439
  %710 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 16, !dbg !1442
  %711 = load i32, ptr %710, align 4, !dbg !1442, !tbaa !1443
  call void @llvm.dbg.value(metadata ptr %0, metadata !868, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i32 0, metadata !870, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i32 %711, metadata !869, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i32 %711, metadata !871, metadata !DIExpression()), !dbg !1444
  %712 = icmp sgt i32 %711, 65535, !dbg !1445
  %713 = lshr i32 %711, 16
  %714 = select i1 %712, i32 32, i32 0, !dbg !1446
  %715 = select i1 %712, i32 %713, i32 %711, !dbg !1446
  call void @llvm.dbg.value(metadata i32 %715, metadata !871, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i32 %714, metadata !870, metadata !DIExpression()), !dbg !1444
  %716 = icmp sgt i32 %715, 255, !dbg !1447
  %717 = or i32 %714, 16, !dbg !1448
  %718 = lshr i32 %715, 8, !dbg !1448
  %719 = select i1 %716, i32 %717, i32 %714, !dbg !1448
  %720 = select i1 %716, i32 %718, i32 %715, !dbg !1448
  call void @llvm.dbg.value(metadata i32 %720, metadata !871, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i32 %719, metadata !870, metadata !DIExpression()), !dbg !1444
  %721 = sext i32 %720 to i64, !dbg !1449
  %722 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %721, !dbg !1449
  %723 = load i8, ptr %722, align 1, !dbg !1449, !tbaa !883
  %724 = zext i8 %723 to i32, !dbg !1449
  %725 = add nuw nsw i32 %719, %724, !dbg !1450
  call void @llvm.dbg.value(metadata i32 %725, metadata !870, metadata !DIExpression()), !dbg !1444
  %726 = lshr i32 %725, 1, !dbg !1451
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !1452
  call void @llvm.dbg.value(metadata i32 %726, metadata !730, metadata !DIExpression()), !dbg !1452
  call void @llvm.dbg.value(metadata i32 0, metadata !731, metadata !DIExpression()), !dbg !1452
  %727 = zext i32 %726 to i64, !dbg !1453
  %728 = shl i64 %695, %727, !dbg !1453
  %729 = sub nsw i32 %709, %726, !dbg !1439
  store i32 %729, ptr %10, align 8, !dbg !1439, !tbaa !745
  %730 = icmp slt i32 %729, 33, !dbg !1454
  br i1 %730, label %731, label %741, !dbg !1455

731:                                              ; preds = %708
  %732 = zext i32 %729 to i64, !dbg !1456
  %733 = shl i64 %728, %732, !dbg !1456
  call void @llvm.dbg.value(metadata i64 %733, metadata !751, metadata !DIExpression()), !dbg !1457
  %734 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %733) #11, !dbg !1459, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %734, metadata !751, metadata !DIExpression()), !dbg !1457
  %735 = trunc i64 %734 to i32, !dbg !1460
  %736 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !1461
  %737 = load ptr, ptr %736, align 8, !dbg !1461, !tbaa !763
  store i32 %735, ptr %737, align 4, !dbg !1462, !tbaa !505
  %738 = load i32, ptr %10, align 8, !dbg !1463, !tbaa !745
  %739 = add nsw i32 %738, 32, !dbg !1463
  %740 = getelementptr inbounds i8, ptr %737, i64 4, !dbg !1464
  store ptr %740, ptr %736, align 8, !dbg !1464, !tbaa !763
  br label %741, !dbg !1465

741:                                              ; preds = %731, %708
  %742 = phi i32 [ %729, %708 ], [ %739, %731 ], !dbg !1466
  %743 = add nuw nsw i32 %726, 1, !dbg !1468
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !1469
  call void @llvm.dbg.value(metadata i32 %743, metadata !730, metadata !DIExpression()), !dbg !1469
  call void @llvm.dbg.value(metadata i32 %711, metadata !731, metadata !DIExpression()), !dbg !1469
  %744 = zext i32 %743 to i64, !dbg !1470
  %745 = shl i64 %728, %744, !dbg !1470
  %746 = zext i32 %711 to i64, !dbg !1471
  %747 = or i64 %745, %746, !dbg !1472
  store i64 %747, ptr %5, align 8, !dbg !1473, !tbaa !737
  %748 = sub nsw i32 %742, %743, !dbg !1466
  store i32 %748, ptr %10, align 8, !dbg !1466, !tbaa !745
  %749 = icmp slt i32 %748, 33, !dbg !1474
  br i1 %749, label %750, label %760, !dbg !1475

750:                                              ; preds = %741
  %751 = zext i32 %748 to i64, !dbg !1476
  %752 = shl i64 %747, %751, !dbg !1476
  call void @llvm.dbg.value(metadata i64 %752, metadata !751, metadata !DIExpression()), !dbg !1477
  %753 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %752) #11, !dbg !1479, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %753, metadata !751, metadata !DIExpression()), !dbg !1477
  %754 = trunc i64 %753 to i32, !dbg !1480
  %755 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !1481
  %756 = load ptr, ptr %755, align 8, !dbg !1481, !tbaa !763
  store i32 %754, ptr %756, align 4, !dbg !1482, !tbaa !505
  %757 = load i32, ptr %10, align 8, !dbg !1483, !tbaa !745
  %758 = add nsw i32 %757, 32, !dbg !1483
  %759 = getelementptr inbounds i8, ptr %756, i64 4, !dbg !1484
  store ptr %759, ptr %755, align 8, !dbg !1484, !tbaa !763
  br label %760, !dbg !1485

760:                                              ; preds = %741, %750
  %761 = phi i32 [ %748, %741 ], [ %758, %750 ]
  %762 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 18, !dbg !1486
  %763 = load i32, ptr %762, align 4, !dbg !1486, !tbaa !523
  %764 = icmp eq i32 %763, 0, !dbg !1488
  %765 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 17, !dbg !1489
  %766 = load i32, ptr %765, align 4, !dbg !1489, !tbaa !518
  br i1 %764, label %813, label %767, !dbg !1490

767:                                              ; preds = %760
  call void @llvm.dbg.value(metadata ptr %0, metadata !868, metadata !DIExpression()), !dbg !1491
  call void @llvm.dbg.value(metadata i32 0, metadata !870, metadata !DIExpression()), !dbg !1491
  call void @llvm.dbg.value(metadata i32 %766, metadata !869, metadata !DIExpression()), !dbg !1491
  call void @llvm.dbg.value(metadata i32 %766, metadata !871, metadata !DIExpression()), !dbg !1491
  %768 = icmp sgt i32 %766, 65535, !dbg !1494
  %769 = lshr i32 %766, 16
  %770 = select i1 %768, i32 32, i32 0, !dbg !1495
  %771 = select i1 %768, i32 %769, i32 %766, !dbg !1495
  call void @llvm.dbg.value(metadata i32 %771, metadata !871, metadata !DIExpression()), !dbg !1491
  call void @llvm.dbg.value(metadata i32 %770, metadata !870, metadata !DIExpression()), !dbg !1491
  %772 = icmp sgt i32 %771, 255, !dbg !1496
  %773 = or i32 %770, 16, !dbg !1497
  %774 = lshr i32 %771, 8, !dbg !1497
  %775 = select i1 %772, i32 %773, i32 %770, !dbg !1497
  %776 = select i1 %772, i32 %774, i32 %771, !dbg !1497
  call void @llvm.dbg.value(metadata i32 %776, metadata !871, metadata !DIExpression()), !dbg !1491
  call void @llvm.dbg.value(metadata i32 %775, metadata !870, metadata !DIExpression()), !dbg !1491
  %777 = sext i32 %776 to i64, !dbg !1498
  %778 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %777, !dbg !1498
  %779 = load i8, ptr %778, align 1, !dbg !1498, !tbaa !883
  %780 = zext i8 %779 to i32, !dbg !1498
  %781 = add nuw nsw i32 %775, %780, !dbg !1499
  call void @llvm.dbg.value(metadata i32 %781, metadata !870, metadata !DIExpression()), !dbg !1491
  %782 = lshr i32 %781, 1, !dbg !1500
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !1501
  call void @llvm.dbg.value(metadata i32 %782, metadata !730, metadata !DIExpression()), !dbg !1501
  call void @llvm.dbg.value(metadata i32 0, metadata !731, metadata !DIExpression()), !dbg !1501
  %783 = zext i32 %782 to i64, !dbg !1503
  %784 = shl i64 %747, %783, !dbg !1503
  %785 = sub nsw i32 %761, %782, !dbg !1504
  store i32 %785, ptr %10, align 8, !dbg !1504, !tbaa !745
  %786 = icmp slt i32 %785, 33, !dbg !1505
  br i1 %786, label %787, label %797, !dbg !1506

787:                                              ; preds = %767
  %788 = zext i32 %785 to i64, !dbg !1507
  %789 = shl i64 %784, %788, !dbg !1507
  call void @llvm.dbg.value(metadata i64 %789, metadata !751, metadata !DIExpression()), !dbg !1508
  %790 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %789) #11, !dbg !1510, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %790, metadata !751, metadata !DIExpression()), !dbg !1508
  %791 = trunc i64 %790 to i32, !dbg !1511
  %792 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !1512
  %793 = load ptr, ptr %792, align 8, !dbg !1512, !tbaa !763
  store i32 %791, ptr %793, align 4, !dbg !1513, !tbaa !505
  %794 = load i32, ptr %10, align 8, !dbg !1514, !tbaa !745
  %795 = add nsw i32 %794, 32, !dbg !1514
  %796 = getelementptr inbounds i8, ptr %793, i64 4, !dbg !1515
  store ptr %796, ptr %792, align 8, !dbg !1515, !tbaa !763
  br label %797, !dbg !1516

797:                                              ; preds = %787, %767
  %798 = phi i32 [ %785, %767 ], [ %795, %787 ], !dbg !1517
  %799 = add nuw nsw i32 %782, 1, !dbg !1519
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i32 %799, metadata !730, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i32 %766, metadata !731, metadata !DIExpression()), !dbg !1520
  %800 = zext i32 %799 to i64, !dbg !1521
  %801 = shl i64 %784, %800, !dbg !1521
  %802 = zext i32 %766 to i64, !dbg !1522
  %803 = or i64 %801, %802, !dbg !1523
  %804 = sub nsw i32 %798, %799, !dbg !1517
  store i32 %804, ptr %10, align 8, !dbg !1517, !tbaa !745
  %805 = icmp slt i32 %804, 33, !dbg !1524
  br i1 %805, label %806, label %867, !dbg !1525

806:                                              ; preds = %797
  %807 = zext i32 %804 to i64, !dbg !1526
  %808 = shl i64 %803, %807, !dbg !1526
  call void @llvm.dbg.value(metadata i64 %808, metadata !751, metadata !DIExpression()), !dbg !1527
  %809 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %808) #11, !dbg !1529, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %809, metadata !751, metadata !DIExpression()), !dbg !1527
  %810 = trunc i64 %809 to i32, !dbg !1530
  %811 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !1531
  %812 = load ptr, ptr %811, align 8, !dbg !1531, !tbaa !763
  store i32 %810, ptr %812, align 4, !dbg !1532, !tbaa !505
  br label %860, !dbg !1533

813:                                              ; preds = %760
  %814 = sdiv i32 %766, 2, !dbg !1534
  call void @llvm.dbg.value(metadata ptr %0, metadata !868, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i32 0, metadata !870, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i32 %814, metadata !869, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i32 %814, metadata !871, metadata !DIExpression()), !dbg !1536
  %815 = icmp sgt i32 %766, 131071, !dbg !1538
  %816 = lshr i32 %814, 16
  %817 = select i1 %815, i32 32, i32 0, !dbg !1539
  %818 = select i1 %815, i32 %816, i32 %814, !dbg !1539
  call void @llvm.dbg.value(metadata i32 %818, metadata !871, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i32 %817, metadata !870, metadata !DIExpression()), !dbg !1536
  %819 = icmp sgt i32 %818, 255, !dbg !1540
  %820 = or i32 %817, 16, !dbg !1541
  %821 = lshr i32 %818, 8, !dbg !1541
  %822 = select i1 %819, i32 %820, i32 %817, !dbg !1541
  %823 = select i1 %819, i32 %821, i32 %818, !dbg !1541
  call void @llvm.dbg.value(metadata i32 %823, metadata !871, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i32 %822, metadata !870, metadata !DIExpression()), !dbg !1536
  %824 = sext i32 %823 to i64, !dbg !1542
  %825 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %824, !dbg !1542
  %826 = load i8, ptr %825, align 1, !dbg !1542, !tbaa !883
  %827 = zext i8 %826 to i32, !dbg !1542
  %828 = add nuw nsw i32 %822, %827, !dbg !1543
  call void @llvm.dbg.value(metadata i32 %828, metadata !870, metadata !DIExpression()), !dbg !1536
  %829 = lshr i32 %828, 1, !dbg !1544
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !1545
  call void @llvm.dbg.value(metadata i32 %829, metadata !730, metadata !DIExpression()), !dbg !1545
  call void @llvm.dbg.value(metadata i32 0, metadata !731, metadata !DIExpression()), !dbg !1545
  %830 = zext i32 %829 to i64, !dbg !1547
  %831 = shl i64 %747, %830, !dbg !1547
  %832 = sub nsw i32 %761, %829, !dbg !1548
  store i32 %832, ptr %10, align 8, !dbg !1548, !tbaa !745
  %833 = icmp slt i32 %832, 33, !dbg !1549
  br i1 %833, label %834, label %844, !dbg !1550

834:                                              ; preds = %813
  %835 = zext i32 %832 to i64, !dbg !1551
  %836 = shl i64 %831, %835, !dbg !1551
  call void @llvm.dbg.value(metadata i64 %836, metadata !751, metadata !DIExpression()), !dbg !1552
  %837 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %836) #11, !dbg !1554, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %837, metadata !751, metadata !DIExpression()), !dbg !1552
  %838 = trunc i64 %837 to i32, !dbg !1555
  %839 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !1556
  %840 = load ptr, ptr %839, align 8, !dbg !1556, !tbaa !763
  store i32 %838, ptr %840, align 4, !dbg !1557, !tbaa !505
  %841 = load i32, ptr %10, align 8, !dbg !1558, !tbaa !745
  %842 = add nsw i32 %841, 32, !dbg !1558
  %843 = getelementptr inbounds i8, ptr %840, i64 4, !dbg !1559
  store ptr %843, ptr %839, align 8, !dbg !1559, !tbaa !763
  br label %844, !dbg !1560

844:                                              ; preds = %834, %813
  %845 = phi i32 [ %832, %813 ], [ %842, %834 ], !dbg !1561
  %846 = add nuw nsw i32 %829, 1, !dbg !1563
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i32 %846, metadata !730, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i32 %814, metadata !731, metadata !DIExpression()), !dbg !1564
  %847 = zext i32 %846 to i64, !dbg !1565
  %848 = shl i64 %831, %847, !dbg !1565
  %849 = zext i32 %814 to i64, !dbg !1566
  %850 = or i64 %848, %849, !dbg !1567
  %851 = sub nsw i32 %845, %846, !dbg !1561
  store i32 %851, ptr %10, align 8, !dbg !1561, !tbaa !745
  %852 = icmp slt i32 %851, 33, !dbg !1568
  br i1 %852, label %853, label %867, !dbg !1569

853:                                              ; preds = %844
  %854 = zext i32 %851 to i64, !dbg !1570
  %855 = shl i64 %850, %854, !dbg !1570
  call void @llvm.dbg.value(metadata i64 %855, metadata !751, metadata !DIExpression()), !dbg !1571
  %856 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %855) #11, !dbg !1573, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %856, metadata !751, metadata !DIExpression()), !dbg !1571
  %857 = trunc i64 %856 to i32, !dbg !1574
  %858 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !1575
  %859 = load ptr, ptr %858, align 8, !dbg !1575, !tbaa !763
  store i32 %857, ptr %859, align 4, !dbg !1576, !tbaa !505
  br label %860, !dbg !1577

860:                                              ; preds = %806, %853
  %861 = phi ptr [ %859, %853 ], [ %812, %806 ]
  %862 = phi ptr [ %858, %853 ], [ %811, %806 ]
  %863 = phi i64 [ %850, %853 ], [ %803, %806 ]
  %864 = load i32, ptr %10, align 8, !dbg !1489, !tbaa !745
  %865 = add nsw i32 %864, 32, !dbg !1489
  %866 = getelementptr inbounds i8, ptr %861, i64 4, !dbg !1489
  store ptr %866, ptr %862, align 8, !dbg !1489, !tbaa !763
  br label %867, !dbg !1578

867:                                              ; preds = %860, %844, %797
  %868 = phi i32 [ %851, %844 ], [ %804, %797 ], [ %865, %860 ], !dbg !1579
  %869 = phi i64 [ %850, %844 ], [ %803, %797 ], [ %863, %860 ], !dbg !1581
  %870 = load i32, ptr %762, align 4, !dbg !1578, !tbaa !523
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !1582
  call void @llvm.dbg.value(metadata i32 1, metadata !730, metadata !DIExpression()), !dbg !1582
  call void @llvm.dbg.value(metadata i32 %870, metadata !731, metadata !DIExpression()), !dbg !1582
  %871 = shl i64 %869, 1, !dbg !1583
  %872 = zext i32 %870 to i64, !dbg !1584
  %873 = or i64 %871, %872, !dbg !1585
  store i64 %873, ptr %5, align 8, !dbg !1586, !tbaa !737
  %874 = add nsw i32 %868, -1, !dbg !1579
  store i32 %874, ptr %10, align 8, !dbg !1579, !tbaa !745
  %875 = icmp slt i32 %868, 34, !dbg !1587
  br i1 %875, label %876, label %887, !dbg !1588

876:                                              ; preds = %867
  %877 = zext i32 %874 to i64, !dbg !1589
  %878 = shl i64 %873, %877, !dbg !1589
  call void @llvm.dbg.value(metadata i64 %878, metadata !751, metadata !DIExpression()), !dbg !1590
  %879 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %878) #11, !dbg !1592, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %879, metadata !751, metadata !DIExpression()), !dbg !1590
  %880 = trunc i64 %879 to i32, !dbg !1593
  %881 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !1594
  %882 = load ptr, ptr %881, align 8, !dbg !1594, !tbaa !763
  store i32 %880, ptr %882, align 4, !dbg !1595, !tbaa !505
  %883 = load i32, ptr %10, align 8, !dbg !1596, !tbaa !745
  %884 = add nsw i32 %883, 32, !dbg !1596
  %885 = getelementptr inbounds i8, ptr %882, i64 4, !dbg !1597
  store ptr %885, ptr %881, align 8, !dbg !1597, !tbaa !763
  %886 = load i32, ptr %762, align 4, !dbg !1598, !tbaa !523
  br label %887, !dbg !1600

887:                                              ; preds = %867, %876
  %888 = phi i32 [ %874, %867 ], [ %884, %876 ]
  %889 = phi i32 [ %870, %867 ], [ %886, %876 ], !dbg !1598
  %890 = icmp eq i32 %889, 0, !dbg !1601
  br i1 %890, label %891, label %909, !dbg !1602

891:                                              ; preds = %887
  %892 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 19, !dbg !1603
  %893 = load i32, ptr %892, align 4, !dbg !1603, !tbaa !526
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i32 1, metadata !730, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i32 %893, metadata !731, metadata !DIExpression()), !dbg !1605
  %894 = shl i64 %873, 1, !dbg !1607
  %895 = zext i32 %893 to i64, !dbg !1608
  %896 = or i64 %894, %895, !dbg !1609
  %897 = add nsw i32 %888, -1, !dbg !1610
  store i32 %897, ptr %10, align 8, !dbg !1610, !tbaa !745
  %898 = icmp slt i32 %888, 34, !dbg !1611
  br i1 %898, label %899, label %909, !dbg !1612

899:                                              ; preds = %891
  %900 = zext i32 %897 to i64, !dbg !1613
  %901 = shl i64 %896, %900, !dbg !1613
  call void @llvm.dbg.value(metadata i64 %901, metadata !751, metadata !DIExpression()), !dbg !1614
  %902 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %901) #11, !dbg !1616, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %902, metadata !751, metadata !DIExpression()), !dbg !1614
  %903 = trunc i64 %902 to i32, !dbg !1617
  %904 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !1618
  %905 = load ptr, ptr %904, align 8, !dbg !1618, !tbaa !763
  store i32 %903, ptr %905, align 4, !dbg !1619, !tbaa !505
  %906 = load i32, ptr %10, align 8, !dbg !1620, !tbaa !745
  %907 = add nsw i32 %906, 32, !dbg !1620
  %908 = getelementptr inbounds i8, ptr %905, i64 4, !dbg !1621
  store ptr %908, ptr %904, align 8, !dbg !1621, !tbaa !763
  br label %909, !dbg !1622

909:                                              ; preds = %899, %891, %887
  %910 = phi i32 [ %907, %899 ], [ %897, %891 ], [ %888, %887 ], !dbg !1623
  %911 = phi i64 [ %896, %899 ], [ %896, %891 ], [ %873, %887 ], !dbg !1625
  %912 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 20, !dbg !1626
  %913 = load i32, ptr %912, align 4, !dbg !1626, !tbaa !535
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !1627
  call void @llvm.dbg.value(metadata i32 1, metadata !730, metadata !DIExpression()), !dbg !1627
  call void @llvm.dbg.value(metadata i32 %913, metadata !731, metadata !DIExpression()), !dbg !1627
  %914 = shl i64 %911, 1, !dbg !1628
  %915 = zext i32 %913 to i64, !dbg !1629
  %916 = or i64 %914, %915, !dbg !1630
  %917 = add nsw i32 %910, -1, !dbg !1623
  store i32 %917, ptr %10, align 8, !dbg !1623, !tbaa !745
  %918 = icmp slt i32 %910, 34, !dbg !1631
  br i1 %918, label %919, label %929, !dbg !1632

919:                                              ; preds = %909
  %920 = zext i32 %917 to i64, !dbg !1633
  %921 = shl i64 %916, %920, !dbg !1633
  call void @llvm.dbg.value(metadata i64 %921, metadata !751, metadata !DIExpression()), !dbg !1634
  %922 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %921) #11, !dbg !1636, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %922, metadata !751, metadata !DIExpression()), !dbg !1634
  %923 = trunc i64 %922 to i32, !dbg !1637
  %924 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !1638
  %925 = load ptr, ptr %924, align 8, !dbg !1638, !tbaa !763
  store i32 %923, ptr %925, align 4, !dbg !1639, !tbaa !505
  %926 = load i32, ptr %10, align 8, !dbg !1640, !tbaa !745
  %927 = add nsw i32 %926, 32, !dbg !1640
  %928 = getelementptr inbounds i8, ptr %925, i64 4, !dbg !1641
  store ptr %928, ptr %924, align 8, !dbg !1641, !tbaa !763
  br label %929, !dbg !1642

929:                                              ; preds = %909, %919
  %930 = phi i32 [ %917, %909 ], [ %927, %919 ], !dbg !1643
  %931 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 21, !dbg !1645
  %932 = load i32, ptr %931, align 4, !dbg !1645, !tbaa !557
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !1646
  call void @llvm.dbg.value(metadata i32 1, metadata !730, metadata !DIExpression()), !dbg !1646
  call void @llvm.dbg.value(metadata i32 %932, metadata !731, metadata !DIExpression()), !dbg !1646
  %933 = shl i64 %916, 1, !dbg !1647
  %934 = zext i32 %932 to i64, !dbg !1648
  %935 = or i64 %933, %934, !dbg !1649
  store i64 %935, ptr %5, align 8, !dbg !1650, !tbaa !737
  %936 = add nsw i32 %930, -1, !dbg !1643
  store i32 %936, ptr %10, align 8, !dbg !1643, !tbaa !745
  %937 = icmp slt i32 %930, 34, !dbg !1651
  br i1 %937, label %938, label %949, !dbg !1652

938:                                              ; preds = %929
  %939 = zext i32 %936 to i64, !dbg !1653
  %940 = shl i64 %935, %939, !dbg !1653
  call void @llvm.dbg.value(metadata i64 %940, metadata !751, metadata !DIExpression()), !dbg !1654
  %941 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %940) #11, !dbg !1656, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %941, metadata !751, metadata !DIExpression()), !dbg !1654
  %942 = trunc i64 %941 to i32, !dbg !1657
  %943 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !1658
  %944 = load ptr, ptr %943, align 8, !dbg !1658, !tbaa !763
  store i32 %942, ptr %944, align 4, !dbg !1659, !tbaa !505
  %945 = load i32, ptr %10, align 8, !dbg !1660, !tbaa !745
  %946 = add nsw i32 %945, 32, !dbg !1660
  %947 = getelementptr inbounds i8, ptr %944, i64 4, !dbg !1661
  store ptr %947, ptr %943, align 8, !dbg !1661, !tbaa !763
  %948 = load i32, ptr %931, align 4, !dbg !1662, !tbaa !557
  br label %949, !dbg !1664

949:                                              ; preds = %929, %938
  %950 = phi i32 [ %936, %929 ], [ %946, %938 ]
  %951 = phi i32 [ %932, %929 ], [ %948, %938 ], !dbg !1662
  %952 = icmp eq i32 %951, 0, !dbg !1665
  br i1 %952, label %1168, label %953, !dbg !1666

953:                                              ; preds = %949
  %954 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 22, !dbg !1667
  %955 = load i32, ptr %954, align 4, !dbg !1669, !tbaa !538
  %956 = sdiv i32 %955, 2, !dbg !1670
  call void @llvm.dbg.value(metadata ptr %0, metadata !868, metadata !DIExpression()), !dbg !1671
  call void @llvm.dbg.value(metadata i32 %956, metadata !869, metadata !DIExpression()), !dbg !1671
  call void @llvm.dbg.value(metadata i32 0, metadata !870, metadata !DIExpression()), !dbg !1671
  %957 = add nsw i32 %956, 1, !dbg !1673
  call void @llvm.dbg.value(metadata i32 %957, metadata !869, metadata !DIExpression()), !dbg !1671
  call void @llvm.dbg.value(metadata i32 %957, metadata !871, metadata !DIExpression()), !dbg !1671
  %958 = icmp sgt i32 %955, 131069, !dbg !1674
  %959 = lshr i32 %957, 16
  %960 = select i1 %958, i32 32, i32 0, !dbg !1675
  %961 = select i1 %958, i32 %959, i32 %957, !dbg !1675
  call void @llvm.dbg.value(metadata i32 %961, metadata !871, metadata !DIExpression()), !dbg !1671
  call void @llvm.dbg.value(metadata i32 %960, metadata !870, metadata !DIExpression()), !dbg !1671
  %962 = icmp sgt i32 %961, 255, !dbg !1676
  %963 = or i32 %960, 16, !dbg !1677
  %964 = lshr i32 %961, 8, !dbg !1677
  %965 = select i1 %962, i32 %963, i32 %960, !dbg !1677
  %966 = select i1 %962, i32 %964, i32 %961, !dbg !1677
  call void @llvm.dbg.value(metadata i32 %966, metadata !871, metadata !DIExpression()), !dbg !1671
  call void @llvm.dbg.value(metadata i32 %965, metadata !870, metadata !DIExpression()), !dbg !1671
  %967 = sext i32 %966 to i64, !dbg !1678
  %968 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %967, !dbg !1678
  %969 = load i8, ptr %968, align 1, !dbg !1678, !tbaa !883
  %970 = zext i8 %969 to i32, !dbg !1678
  %971 = add nuw nsw i32 %965, %970, !dbg !1679
  call void @llvm.dbg.value(metadata i32 %971, metadata !870, metadata !DIExpression()), !dbg !1671
  %972 = lshr i32 %971, 1, !dbg !1680
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !1681
  call void @llvm.dbg.value(metadata i32 %972, metadata !730, metadata !DIExpression()), !dbg !1681
  call void @llvm.dbg.value(metadata i32 0, metadata !731, metadata !DIExpression()), !dbg !1681
  %973 = zext i32 %972 to i64, !dbg !1683
  %974 = shl i64 %935, %973, !dbg !1683
  %975 = sub nsw i32 %950, %972, !dbg !1684
  store i32 %975, ptr %10, align 8, !dbg !1684, !tbaa !745
  %976 = icmp slt i32 %975, 33, !dbg !1685
  br i1 %976, label %977, label %987, !dbg !1686

977:                                              ; preds = %953
  %978 = zext i32 %975 to i64, !dbg !1687
  %979 = shl i64 %974, %978, !dbg !1687
  call void @llvm.dbg.value(metadata i64 %979, metadata !751, metadata !DIExpression()), !dbg !1688
  %980 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %979) #11, !dbg !1690, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %980, metadata !751, metadata !DIExpression()), !dbg !1688
  %981 = trunc i64 %980 to i32, !dbg !1691
  %982 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !1692
  %983 = load ptr, ptr %982, align 8, !dbg !1692, !tbaa !763
  store i32 %981, ptr %983, align 4, !dbg !1693, !tbaa !505
  %984 = load i32, ptr %10, align 8, !dbg !1694, !tbaa !745
  %985 = add nsw i32 %984, 32, !dbg !1694
  %986 = getelementptr inbounds i8, ptr %983, i64 4, !dbg !1695
  store ptr %986, ptr %982, align 8, !dbg !1695, !tbaa !763
  br label %987, !dbg !1696

987:                                              ; preds = %977, %953
  %988 = phi i32 [ %975, %953 ], [ %985, %977 ], !dbg !1697
  %989 = add nuw nsw i32 %972, 1, !dbg !1699
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i32 %989, metadata !730, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i32 %957, metadata !731, metadata !DIExpression()), !dbg !1700
  %990 = zext i32 %989 to i64, !dbg !1701
  %991 = shl i64 %974, %990, !dbg !1701
  %992 = zext i32 %957 to i64, !dbg !1702
  %993 = or i64 %991, %992, !dbg !1703
  %994 = sub nsw i32 %988, %989, !dbg !1697
  store i32 %994, ptr %10, align 8, !dbg !1697, !tbaa !745
  %995 = icmp slt i32 %994, 33, !dbg !1704
  br i1 %995, label %996, label %1006, !dbg !1705

996:                                              ; preds = %987
  %997 = zext i32 %994 to i64, !dbg !1706
  %998 = shl i64 %993, %997, !dbg !1706
  call void @llvm.dbg.value(metadata i64 %998, metadata !751, metadata !DIExpression()), !dbg !1707
  %999 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %998) #11, !dbg !1709, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %999, metadata !751, metadata !DIExpression()), !dbg !1707
  %1000 = trunc i64 %999 to i32, !dbg !1710
  %1001 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !1711
  %1002 = load ptr, ptr %1001, align 8, !dbg !1711, !tbaa !763
  store i32 %1000, ptr %1002, align 4, !dbg !1712, !tbaa !505
  %1003 = load i32, ptr %10, align 8, !dbg !1713, !tbaa !745
  %1004 = add nsw i32 %1003, 32, !dbg !1713
  %1005 = getelementptr inbounds i8, ptr %1002, i64 4, !dbg !1714
  store ptr %1005, ptr %1001, align 8, !dbg !1714, !tbaa !763
  br label %1006, !dbg !1715

1006:                                             ; preds = %987, %996
  %1007 = phi i32 [ %994, %987 ], [ %1004, %996 ], !dbg !1716
  %1008 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 22, i32 1, !dbg !1719
  %1009 = load i32, ptr %1008, align 4, !dbg !1719, !tbaa !547
  %1010 = sdiv i32 %1009, 2, !dbg !1720
  call void @llvm.dbg.value(metadata ptr %0, metadata !868, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i32 %1010, metadata !869, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i32 0, metadata !870, metadata !DIExpression()), !dbg !1721
  %1011 = add nsw i32 %1010, 1, !dbg !1722
  call void @llvm.dbg.value(metadata i32 %1011, metadata !869, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i32 %1011, metadata !871, metadata !DIExpression()), !dbg !1721
  %1012 = icmp sgt i32 %1009, 131069, !dbg !1723
  %1013 = lshr i32 %1011, 16
  %1014 = select i1 %1012, i32 32, i32 0, !dbg !1724
  %1015 = select i1 %1012, i32 %1013, i32 %1011, !dbg !1724
  call void @llvm.dbg.value(metadata i32 %1015, metadata !871, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i32 %1014, metadata !870, metadata !DIExpression()), !dbg !1721
  %1016 = icmp sgt i32 %1015, 255, !dbg !1725
  %1017 = or i32 %1014, 16, !dbg !1726
  %1018 = lshr i32 %1015, 8, !dbg !1726
  %1019 = select i1 %1016, i32 %1017, i32 %1014, !dbg !1726
  %1020 = select i1 %1016, i32 %1018, i32 %1015, !dbg !1726
  call void @llvm.dbg.value(metadata i32 %1020, metadata !871, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i32 %1019, metadata !870, metadata !DIExpression()), !dbg !1721
  %1021 = sext i32 %1020 to i64, !dbg !1727
  %1022 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %1021, !dbg !1727
  %1023 = load i8, ptr %1022, align 1, !dbg !1727, !tbaa !883
  %1024 = zext i8 %1023 to i32, !dbg !1727
  %1025 = add nuw nsw i32 %1019, %1024, !dbg !1728
  call void @llvm.dbg.value(metadata i32 %1025, metadata !870, metadata !DIExpression()), !dbg !1721
  %1026 = lshr i32 %1025, 1, !dbg !1729
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !1730
  call void @llvm.dbg.value(metadata i32 %1026, metadata !730, metadata !DIExpression()), !dbg !1730
  call void @llvm.dbg.value(metadata i32 0, metadata !731, metadata !DIExpression()), !dbg !1730
  %1027 = zext i32 %1026 to i64, !dbg !1731
  %1028 = shl i64 %993, %1027, !dbg !1731
  %1029 = sub nsw i32 %1007, %1026, !dbg !1716
  store i32 %1029, ptr %10, align 8, !dbg !1716, !tbaa !745
  %1030 = icmp slt i32 %1029, 33, !dbg !1732
  br i1 %1030, label %1031, label %1041, !dbg !1733

1031:                                             ; preds = %1006
  %1032 = zext i32 %1029 to i64, !dbg !1734
  %1033 = shl i64 %1028, %1032, !dbg !1734
  call void @llvm.dbg.value(metadata i64 %1033, metadata !751, metadata !DIExpression()), !dbg !1735
  %1034 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1033) #11, !dbg !1737, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %1034, metadata !751, metadata !DIExpression()), !dbg !1735
  %1035 = trunc i64 %1034 to i32, !dbg !1738
  %1036 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !1739
  %1037 = load ptr, ptr %1036, align 8, !dbg !1739, !tbaa !763
  store i32 %1035, ptr %1037, align 4, !dbg !1740, !tbaa !505
  %1038 = load i32, ptr %10, align 8, !dbg !1741, !tbaa !745
  %1039 = add nsw i32 %1038, 32, !dbg !1741
  %1040 = getelementptr inbounds i8, ptr %1037, i64 4, !dbg !1742
  store ptr %1040, ptr %1036, align 8, !dbg !1742, !tbaa !763
  br label %1041, !dbg !1743

1041:                                             ; preds = %1031, %1006
  %1042 = phi i32 [ %1029, %1006 ], [ %1039, %1031 ], !dbg !1744
  %1043 = add nuw nsw i32 %1026, 1, !dbg !1746
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i32 %1043, metadata !730, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i32 %1011, metadata !731, metadata !DIExpression()), !dbg !1747
  %1044 = zext i32 %1043 to i64, !dbg !1748
  %1045 = shl i64 %1028, %1044, !dbg !1748
  %1046 = zext i32 %1011 to i64, !dbg !1749
  %1047 = or i64 %1045, %1046, !dbg !1750
  store i64 %1047, ptr %5, align 8, !dbg !1751, !tbaa !737
  %1048 = sub nsw i32 %1042, %1043, !dbg !1744
  store i32 %1048, ptr %10, align 8, !dbg !1744, !tbaa !745
  %1049 = icmp slt i32 %1048, 33, !dbg !1752
  br i1 %1049, label %1050, label %1060, !dbg !1753

1050:                                             ; preds = %1041
  %1051 = zext i32 %1048 to i64, !dbg !1754
  %1052 = shl i64 %1047, %1051, !dbg !1754
  call void @llvm.dbg.value(metadata i64 %1052, metadata !751, metadata !DIExpression()), !dbg !1755
  %1053 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1052) #11, !dbg !1757, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %1053, metadata !751, metadata !DIExpression()), !dbg !1755
  %1054 = trunc i64 %1053 to i32, !dbg !1758
  %1055 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !1759
  %1056 = load ptr, ptr %1055, align 8, !dbg !1759, !tbaa !763
  store i32 %1054, ptr %1056, align 4, !dbg !1760, !tbaa !505
  %1057 = load i32, ptr %10, align 8, !dbg !1761, !tbaa !745
  %1058 = add nsw i32 %1057, 32, !dbg !1761
  %1059 = getelementptr inbounds i8, ptr %1056, i64 4, !dbg !1762
  store ptr %1059, ptr %1055, align 8, !dbg !1762, !tbaa !763
  br label %1060, !dbg !1763

1060:                                             ; preds = %1041, %1050
  %1061 = phi i32 [ %1048, %1041 ], [ %1058, %1050 ], !dbg !1764
  %1062 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 22, i32 2, !dbg !1767
  %1063 = load i32, ptr %1062, align 4, !dbg !1767, !tbaa !541
  %1064 = sdiv i32 %1063, 2, !dbg !1768
  call void @llvm.dbg.value(metadata ptr %0, metadata !868, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i32 %1064, metadata !869, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i32 0, metadata !870, metadata !DIExpression()), !dbg !1769
  %1065 = add nsw i32 %1064, 1, !dbg !1770
  call void @llvm.dbg.value(metadata i32 %1065, metadata !869, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i32 %1065, metadata !871, metadata !DIExpression()), !dbg !1769
  %1066 = icmp sgt i32 %1063, 131069, !dbg !1771
  %1067 = lshr i32 %1065, 16
  %1068 = select i1 %1066, i32 32, i32 0, !dbg !1772
  %1069 = select i1 %1066, i32 %1067, i32 %1065, !dbg !1772
  call void @llvm.dbg.value(metadata i32 %1069, metadata !871, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i32 %1068, metadata !870, metadata !DIExpression()), !dbg !1769
  %1070 = icmp sgt i32 %1069, 255, !dbg !1773
  %1071 = or i32 %1068, 16, !dbg !1774
  %1072 = lshr i32 %1069, 8, !dbg !1774
  %1073 = select i1 %1070, i32 %1071, i32 %1068, !dbg !1774
  %1074 = select i1 %1070, i32 %1072, i32 %1069, !dbg !1774
  call void @llvm.dbg.value(metadata i32 %1074, metadata !871, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i32 %1073, metadata !870, metadata !DIExpression()), !dbg !1769
  %1075 = sext i32 %1074 to i64, !dbg !1775
  %1076 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %1075, !dbg !1775
  %1077 = load i8, ptr %1076, align 1, !dbg !1775, !tbaa !883
  %1078 = zext i8 %1077 to i32, !dbg !1775
  %1079 = add nuw nsw i32 %1073, %1078, !dbg !1776
  call void @llvm.dbg.value(metadata i32 %1079, metadata !870, metadata !DIExpression()), !dbg !1769
  %1080 = lshr i32 %1079, 1, !dbg !1777
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i32 %1080, metadata !730, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i32 0, metadata !731, metadata !DIExpression()), !dbg !1778
  %1081 = zext i32 %1080 to i64, !dbg !1779
  %1082 = shl i64 %1047, %1081, !dbg !1779
  %1083 = sub nsw i32 %1061, %1080, !dbg !1764
  store i32 %1083, ptr %10, align 8, !dbg !1764, !tbaa !745
  %1084 = icmp slt i32 %1083, 33, !dbg !1780
  br i1 %1084, label %1085, label %1095, !dbg !1781

1085:                                             ; preds = %1060
  %1086 = zext i32 %1083 to i64, !dbg !1782
  %1087 = shl i64 %1082, %1086, !dbg !1782
  call void @llvm.dbg.value(metadata i64 %1087, metadata !751, metadata !DIExpression()), !dbg !1783
  %1088 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1087) #11, !dbg !1785, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %1088, metadata !751, metadata !DIExpression()), !dbg !1783
  %1089 = trunc i64 %1088 to i32, !dbg !1786
  %1090 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !1787
  %1091 = load ptr, ptr %1090, align 8, !dbg !1787, !tbaa !763
  store i32 %1089, ptr %1091, align 4, !dbg !1788, !tbaa !505
  %1092 = load i32, ptr %10, align 8, !dbg !1789, !tbaa !745
  %1093 = add nsw i32 %1092, 32, !dbg !1789
  %1094 = getelementptr inbounds i8, ptr %1091, i64 4, !dbg !1790
  store ptr %1094, ptr %1090, align 8, !dbg !1790, !tbaa !763
  br label %1095, !dbg !1791

1095:                                             ; preds = %1085, %1060
  %1096 = phi i32 [ %1083, %1060 ], [ %1093, %1085 ], !dbg !1792
  %1097 = add nuw nsw i32 %1080, 1, !dbg !1794
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.value(metadata i32 %1097, metadata !730, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.value(metadata i32 %1065, metadata !731, metadata !DIExpression()), !dbg !1795
  %1098 = zext i32 %1097 to i64, !dbg !1796
  %1099 = shl i64 %1082, %1098, !dbg !1796
  %1100 = zext i32 %1065 to i64, !dbg !1797
  %1101 = or i64 %1099, %1100, !dbg !1798
  %1102 = sub nsw i32 %1096, %1097, !dbg !1792
  store i32 %1102, ptr %10, align 8, !dbg !1792, !tbaa !745
  %1103 = icmp slt i32 %1102, 33, !dbg !1799
  br i1 %1103, label %1104, label %1114, !dbg !1800

1104:                                             ; preds = %1095
  %1105 = zext i32 %1102 to i64, !dbg !1801
  %1106 = shl i64 %1101, %1105, !dbg !1801
  call void @llvm.dbg.value(metadata i64 %1106, metadata !751, metadata !DIExpression()), !dbg !1802
  %1107 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1106) #11, !dbg !1804, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %1107, metadata !751, metadata !DIExpression()), !dbg !1802
  %1108 = trunc i64 %1107 to i32, !dbg !1805
  %1109 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !1806
  %1110 = load ptr, ptr %1109, align 8, !dbg !1806, !tbaa !763
  store i32 %1108, ptr %1110, align 4, !dbg !1807, !tbaa !505
  %1111 = load i32, ptr %10, align 8, !dbg !1808, !tbaa !745
  %1112 = add nsw i32 %1111, 32, !dbg !1808
  %1113 = getelementptr inbounds i8, ptr %1110, i64 4, !dbg !1809
  store ptr %1113, ptr %1109, align 8, !dbg !1809, !tbaa !763
  br label %1114, !dbg !1810

1114:                                             ; preds = %1095, %1104
  %1115 = phi i32 [ %1102, %1095 ], [ %1112, %1104 ], !dbg !1811
  %1116 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 22, i32 3, !dbg !1814
  %1117 = load i32, ptr %1116, align 4, !dbg !1814, !tbaa !553
  %1118 = sdiv i32 %1117, 2, !dbg !1815
  call void @llvm.dbg.value(metadata ptr %0, metadata !868, metadata !DIExpression()), !dbg !1816
  call void @llvm.dbg.value(metadata i32 %1118, metadata !869, metadata !DIExpression()), !dbg !1816
  call void @llvm.dbg.value(metadata i32 0, metadata !870, metadata !DIExpression()), !dbg !1816
  %1119 = add nsw i32 %1118, 1, !dbg !1817
  call void @llvm.dbg.value(metadata i32 %1119, metadata !869, metadata !DIExpression()), !dbg !1816
  call void @llvm.dbg.value(metadata i32 %1119, metadata !871, metadata !DIExpression()), !dbg !1816
  %1120 = icmp sgt i32 %1117, 131069, !dbg !1818
  %1121 = lshr i32 %1119, 16
  %1122 = select i1 %1120, i32 32, i32 0, !dbg !1819
  %1123 = select i1 %1120, i32 %1121, i32 %1119, !dbg !1819
  call void @llvm.dbg.value(metadata i32 %1123, metadata !871, metadata !DIExpression()), !dbg !1816
  call void @llvm.dbg.value(metadata i32 %1122, metadata !870, metadata !DIExpression()), !dbg !1816
  %1124 = icmp sgt i32 %1123, 255, !dbg !1820
  %1125 = or i32 %1122, 16, !dbg !1821
  %1126 = lshr i32 %1123, 8, !dbg !1821
  %1127 = select i1 %1124, i32 %1125, i32 %1122, !dbg !1821
  %1128 = select i1 %1124, i32 %1126, i32 %1123, !dbg !1821
  call void @llvm.dbg.value(metadata i32 %1128, metadata !871, metadata !DIExpression()), !dbg !1816
  call void @llvm.dbg.value(metadata i32 %1127, metadata !870, metadata !DIExpression()), !dbg !1816
  %1129 = sext i32 %1128 to i64, !dbg !1822
  %1130 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %1129, !dbg !1822
  %1131 = load i8, ptr %1130, align 1, !dbg !1822, !tbaa !883
  %1132 = zext i8 %1131 to i32, !dbg !1822
  %1133 = add nuw nsw i32 %1127, %1132, !dbg !1823
  call void @llvm.dbg.value(metadata i32 %1133, metadata !870, metadata !DIExpression()), !dbg !1816
  %1134 = lshr i32 %1133, 1, !dbg !1824
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !1825
  call void @llvm.dbg.value(metadata i32 %1134, metadata !730, metadata !DIExpression()), !dbg !1825
  call void @llvm.dbg.value(metadata i32 0, metadata !731, metadata !DIExpression()), !dbg !1825
  %1135 = zext i32 %1134 to i64, !dbg !1826
  %1136 = shl i64 %1101, %1135, !dbg !1826
  %1137 = sub nsw i32 %1115, %1134, !dbg !1811
  store i32 %1137, ptr %10, align 8, !dbg !1811, !tbaa !745
  %1138 = icmp slt i32 %1137, 33, !dbg !1827
  br i1 %1138, label %1139, label %1149, !dbg !1828

1139:                                             ; preds = %1114
  %1140 = zext i32 %1137 to i64, !dbg !1829
  %1141 = shl i64 %1136, %1140, !dbg !1829
  call void @llvm.dbg.value(metadata i64 %1141, metadata !751, metadata !DIExpression()), !dbg !1830
  %1142 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1141) #11, !dbg !1832, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %1142, metadata !751, metadata !DIExpression()), !dbg !1830
  %1143 = trunc i64 %1142 to i32, !dbg !1833
  %1144 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !1834
  %1145 = load ptr, ptr %1144, align 8, !dbg !1834, !tbaa !763
  store i32 %1143, ptr %1145, align 4, !dbg !1835, !tbaa !505
  %1146 = load i32, ptr %10, align 8, !dbg !1836, !tbaa !745
  %1147 = add nsw i32 %1146, 32, !dbg !1836
  %1148 = getelementptr inbounds i8, ptr %1145, i64 4, !dbg !1837
  store ptr %1148, ptr %1144, align 8, !dbg !1837, !tbaa !763
  br label %1149, !dbg !1838

1149:                                             ; preds = %1139, %1114
  %1150 = phi i32 [ %1137, %1114 ], [ %1147, %1139 ], !dbg !1839
  %1151 = add nuw nsw i32 %1134, 1, !dbg !1841
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i32 %1151, metadata !730, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i32 %1119, metadata !731, metadata !DIExpression()), !dbg !1842
  %1152 = zext i32 %1151 to i64, !dbg !1843
  %1153 = shl i64 %1136, %1152, !dbg !1843
  %1154 = zext i32 %1119 to i64, !dbg !1844
  %1155 = or i64 %1153, %1154, !dbg !1845
  store i64 %1155, ptr %5, align 8, !dbg !1846, !tbaa !737
  %1156 = sub nsw i32 %1150, %1151, !dbg !1839
  store i32 %1156, ptr %10, align 8, !dbg !1839, !tbaa !745
  %1157 = icmp slt i32 %1156, 33, !dbg !1847
  br i1 %1157, label %1158, label %1168, !dbg !1848

1158:                                             ; preds = %1149
  %1159 = zext i32 %1156 to i64, !dbg !1849
  %1160 = shl i64 %1155, %1159, !dbg !1849
  call void @llvm.dbg.value(metadata i64 %1160, metadata !751, metadata !DIExpression()), !dbg !1850
  %1161 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1160) #11, !dbg !1852, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %1161, metadata !751, metadata !DIExpression()), !dbg !1850
  %1162 = trunc i64 %1161 to i32, !dbg !1853
  %1163 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !1854
  %1164 = load ptr, ptr %1163, align 8, !dbg !1854, !tbaa !763
  store i32 %1162, ptr %1164, align 4, !dbg !1855, !tbaa !505
  %1165 = load i32, ptr %10, align 8, !dbg !1856, !tbaa !745
  %1166 = add nsw i32 %1165, 32, !dbg !1856
  %1167 = getelementptr inbounds i8, ptr %1164, i64 4, !dbg !1857
  store ptr %1167, ptr %1163, align 8, !dbg !1857, !tbaa !763
  br label %1168, !dbg !1858

1168:                                             ; preds = %1158, %1149, %949
  %1169 = phi i32 [ %1166, %1158 ], [ %1156, %1149 ], [ %950, %949 ], !dbg !1859
  %1170 = phi i64 [ %1155, %1158 ], [ %1155, %1149 ], [ %935, %949 ], !dbg !1861
  %1171 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 23, !dbg !1862
  %1172 = load i32, ptr %1171, align 4, !dbg !1862, !tbaa !499
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i32 1, metadata !730, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i32 %1172, metadata !731, metadata !DIExpression()), !dbg !1863
  %1173 = shl i64 %1170, 1, !dbg !1864
  %1174 = zext i32 %1172 to i64, !dbg !1865
  %1175 = or i64 %1173, %1174, !dbg !1866
  %1176 = add nsw i32 %1169, -1, !dbg !1859
  store i32 %1176, ptr %10, align 8, !dbg !1859, !tbaa !745
  %1177 = icmp slt i32 %1169, 34, !dbg !1867
  br i1 %1177, label %1178, label %1189, !dbg !1868

1178:                                             ; preds = %1168
  %1179 = zext i32 %1176 to i64, !dbg !1869
  %1180 = shl i64 %1175, %1179, !dbg !1869
  call void @llvm.dbg.value(metadata i64 %1180, metadata !751, metadata !DIExpression()), !dbg !1870
  %1181 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1180) #11, !dbg !1872, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %1181, metadata !751, metadata !DIExpression()), !dbg !1870
  %1182 = trunc i64 %1181 to i32, !dbg !1873
  %1183 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !1874
  %1184 = load ptr, ptr %1183, align 8, !dbg !1874, !tbaa !763
  store i32 %1182, ptr %1184, align 4, !dbg !1875, !tbaa !505
  %1185 = load i32, ptr %10, align 8, !dbg !1876, !tbaa !745
  %1186 = add nsw i32 %1185, 32, !dbg !1876
  %1187 = getelementptr inbounds i8, ptr %1184, i64 4, !dbg !1877
  store ptr %1187, ptr %1183, align 8, !dbg !1877, !tbaa !763
  %1188 = load i32, ptr %1171, align 4, !dbg !1878, !tbaa !499
  br label %1189, !dbg !1879

1189:                                             ; preds = %1168, %1178
  %1190 = phi i32 [ %1176, %1168 ], [ %1186, %1178 ]
  %1191 = phi i32 [ %1172, %1168 ], [ %1188, %1178 ], !dbg !1878
  %1192 = icmp eq i32 %1191, 0, !dbg !1880
  br i1 %1192, label %2118, label %1193, !dbg !1881

1193:                                             ; preds = %1189
  %1194 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, !dbg !1882
  %1195 = load i32, ptr %1194, align 4, !dbg !1883, !tbaa !560
  call void @llvm.dbg.value(metadata ptr %0, metadata !1884, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i32 %1195, metadata !1889, metadata !DIExpression()), !dbg !1890
  %1196 = shl i64 %1175, 1, !dbg !1892
  %1197 = zext i32 %1195 to i64, !dbg !1893
  %1198 = or i64 %1196, %1197, !dbg !1894
  %1199 = add nsw i32 %1190, -1, !dbg !1895
  %1200 = icmp eq i32 %1199, 32, !dbg !1896
  br i1 %1200, label %1201, label %1208, !dbg !1898

1201:                                             ; preds = %1193
  %1202 = trunc i64 %1198 to i32, !dbg !1899
  call void @llvm.dbg.value(metadata i32 %1202, metadata !1901, metadata !DIExpression()), !dbg !1906
  %1203 = tail call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %1202) #11, !dbg !1908, !srcloc !1909
  call void @llvm.dbg.value(metadata i32 %1203, metadata !1901, metadata !DIExpression()), !dbg !1906
  %1204 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !1910
  %1205 = load ptr, ptr %1204, align 8, !dbg !1910, !tbaa !763
  store i32 %1203, ptr %1205, align 4, !dbg !1911, !tbaa !505
  %1206 = getelementptr inbounds i8, ptr %1205, i64 4, !dbg !1912
  store ptr %1206, ptr %1204, align 8, !dbg !1912, !tbaa !763
  %1207 = load i32, ptr %1194, align 4, !dbg !1913, !tbaa !560
  br label %1208, !dbg !1914

1208:                                             ; preds = %1193, %1201
  %1209 = phi i32 [ %1199, %1193 ], [ 64, %1201 ]
  %1210 = phi i32 [ %1195, %1193 ], [ %1207, %1201 ], !dbg !1913
  %1211 = icmp eq i32 %1210, 0, !dbg !1915
  br i1 %1211, label %1327, label %1212, !dbg !1916

1212:                                             ; preds = %1208
  %1213 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 1
  %1214 = load i32, ptr %1213, align 4, !tbaa !575
  call void @llvm.dbg.value(metadata i32 0, metadata !241, metadata !DIExpression()), !dbg !1917
  %1215 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 2
  call void @llvm.dbg.value(metadata i64 0, metadata !241, metadata !DIExpression()), !dbg !1917
  switch i32 %1214, label %1255 [
    i32 1, label %1216
    i32 12, label %1219
    i32 10, label %1222
    i32 16, label %1225
    i32 40, label %1228
    i32 24, label %1231
    i32 20, label %1234
    i32 32, label %1237
    i32 80, label %1240
    i32 18, label %1243
    i32 15, label %1246
    i32 64, label %1249
    i32 160, label %1252
  ], !dbg !1918

1216:                                             ; preds = %1212
  %1217 = load i32, ptr %1215, align 4, !dbg !1923, !tbaa !578
  %1218 = icmp eq i32 %1217, 1, !dbg !1924
  br i1 %1218, label %1260, label %1255, !dbg !1925

1219:                                             ; preds = %1212
  %1220 = load i32, ptr %1215, align 4, !dbg !1923, !tbaa !578
  %1221 = icmp eq i32 %1220, 11, !dbg !1924
  br i1 %1221, label %1260, label %1255, !dbg !1925

1222:                                             ; preds = %1212
  %1223 = load i32, ptr %1215, align 4, !dbg !1923, !tbaa !578
  %1224 = icmp eq i32 %1223, 11, !dbg !1924
  br i1 %1224, label %1260, label %1255, !dbg !1925

1225:                                             ; preds = %1212
  %1226 = load i32, ptr %1215, align 4, !dbg !1923, !tbaa !578
  %1227 = icmp eq i32 %1226, 11, !dbg !1924
  br i1 %1227, label %1260, label %1255, !dbg !1925

1228:                                             ; preds = %1212
  %1229 = load i32, ptr %1215, align 4, !dbg !1923, !tbaa !578
  %1230 = icmp eq i32 %1229, 33, !dbg !1924
  br i1 %1230, label %1260, label %1255, !dbg !1925

1231:                                             ; preds = %1212
  %1232 = load i32, ptr %1215, align 4, !dbg !1923, !tbaa !578
  %1233 = icmp eq i32 %1232, 11, !dbg !1924
  br i1 %1233, label %1260, label %1255, !dbg !1925

1234:                                             ; preds = %1212
  %1235 = load i32, ptr %1215, align 4, !dbg !1923, !tbaa !578
  %1236 = icmp eq i32 %1235, 11, !dbg !1924
  br i1 %1236, label %1260, label %1255, !dbg !1925

1237:                                             ; preds = %1212
  %1238 = load i32, ptr %1215, align 4, !dbg !1923, !tbaa !578
  %1239 = icmp eq i32 %1238, 11, !dbg !1924
  br i1 %1239, label %1260, label %1255, !dbg !1925

1240:                                             ; preds = %1212
  %1241 = load i32, ptr %1215, align 4, !dbg !1923, !tbaa !578
  %1242 = icmp eq i32 %1241, 33, !dbg !1924
  br i1 %1242, label %1260, label %1255, !dbg !1925

1243:                                             ; preds = %1212
  %1244 = load i32, ptr %1215, align 4, !dbg !1923, !tbaa !578
  %1245 = icmp eq i32 %1244, 11, !dbg !1924
  br i1 %1245, label %1260, label %1255, !dbg !1925

1246:                                             ; preds = %1212
  %1247 = load i32, ptr %1215, align 4, !dbg !1923, !tbaa !578
  %1248 = icmp eq i32 %1247, 11, !dbg !1924
  br i1 %1248, label %1260, label %1255, !dbg !1925

1249:                                             ; preds = %1212
  %1250 = load i32, ptr %1215, align 4, !dbg !1923, !tbaa !578
  %1251 = icmp eq i32 %1250, 33, !dbg !1924
  br i1 %1251, label %1260, label %1255, !dbg !1925

1252:                                             ; preds = %1212
  %1253 = load i32, ptr %1215, align 4, !dbg !1923, !tbaa !578
  %1254 = icmp eq i32 %1253, 99, !dbg !1924
  br i1 %1254, label %1260, label %1255, !dbg !1925

1255:                                             ; preds = %1212, %1228, %1225, %1222, %1219, %1216, %1231, %1234, %1237, %1240, %1243, %1246, %1249, %1252
  call void @llvm.dbg.value(metadata i64 13, metadata !241, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !1926
  call void @llvm.dbg.value(metadata i32 8, metadata !730, metadata !DIExpression()), !dbg !1926
  call void @llvm.dbg.value(metadata i32 255, metadata !731, metadata !DIExpression()), !dbg !1926
  %1256 = shl i64 %1198, 8, !dbg !1930
  %1257 = or i64 %1256, 255, !dbg !1931
  %1258 = add nsw i32 %1209, -8, !dbg !1932
  store i32 %1258, ptr %10, align 8, !dbg !1932, !tbaa !745
  %1259 = icmp slt i32 %1209, 41, !dbg !1933
  br i1 %1259, label %1276, label %1287, !dbg !1934

1260:                                             ; preds = %1252, %1249, %1246, %1243, %1240, %1237, %1234, %1231, %1228, %1225, %1222, %1219, %1216
  %1261 = phi i64 [ 0, %1216 ], [ 1, %1219 ], [ 2, %1222 ], [ 3, %1225 ], [ 4, %1228 ], [ 5, %1231 ], [ 6, %1234 ], [ 7, %1237 ], [ 8, %1240 ], [ 9, %1243 ], [ 10, %1246 ], [ 11, %1249 ], [ 12, %1252 ]
  %1262 = getelementptr inbounds [14 x %struct.anon.4], ptr @x264_sps_write.sar, i64 0, i64 %1261, i32 2, !dbg !1935
  %1263 = load i32, ptr %1262, align 4, !dbg !1936, !tbaa !1937
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i32 8, metadata !730, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i32 %1263, metadata !731, metadata !DIExpression()), !dbg !1939
  %1264 = shl i64 %1198, 8, !dbg !1942
  %1265 = zext i32 %1263 to i64, !dbg !1943
  %1266 = or i64 %1264, %1265, !dbg !1944
  store i64 %1266, ptr %5, align 8, !dbg !1945, !tbaa !737
  %1267 = add nsw i32 %1209, -8, !dbg !1946
  store i32 %1267, ptr %10, align 8, !dbg !1946, !tbaa !745
  %1268 = icmp slt i32 %1209, 41, !dbg !1947
  br i1 %1268, label %1269, label %1327, !dbg !1948

1269:                                             ; preds = %1260
  %1270 = zext i32 %1267 to i64, !dbg !1949
  %1271 = shl i64 %1266, %1270, !dbg !1949
  call void @llvm.dbg.value(metadata i64 %1271, metadata !751, metadata !DIExpression()), !dbg !1950
  %1272 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1271) #11, !dbg !1952, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %1272, metadata !751, metadata !DIExpression()), !dbg !1950
  %1273 = trunc i64 %1272 to i32, !dbg !1953
  %1274 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !1954
  %1275 = load ptr, ptr %1274, align 8, !dbg !1954, !tbaa !763
  store i32 %1273, ptr %1275, align 4, !dbg !1955, !tbaa !505
  br label %1320, !dbg !1956

1276:                                             ; preds = %1255
  %1277 = zext i32 %1258 to i64, !dbg !1957
  %1278 = shl i64 %1257, %1277, !dbg !1957
  call void @llvm.dbg.value(metadata i64 %1278, metadata !751, metadata !DIExpression()), !dbg !1958
  %1279 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1278) #11, !dbg !1960, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %1279, metadata !751, metadata !DIExpression()), !dbg !1958
  %1280 = trunc i64 %1279 to i32, !dbg !1961
  %1281 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !1962
  %1282 = load ptr, ptr %1281, align 8, !dbg !1962, !tbaa !763
  store i32 %1280, ptr %1282, align 4, !dbg !1963, !tbaa !505
  %1283 = load i32, ptr %10, align 8, !dbg !1964, !tbaa !745
  %1284 = add nsw i32 %1283, 32, !dbg !1964
  %1285 = getelementptr inbounds i8, ptr %1282, i64 4, !dbg !1965
  store ptr %1285, ptr %1281, align 8, !dbg !1965, !tbaa !763
  %1286 = load i32, ptr %1213, align 4, !dbg !1966, !tbaa !575
  br label %1287, !dbg !1967

1287:                                             ; preds = %1255, %1276
  %1288 = phi i32 [ %1258, %1255 ], [ %1284, %1276 ], !dbg !1968
  %1289 = phi i32 [ %1214, %1255 ], [ %1286, %1276 ], !dbg !1966
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i32 16, metadata !730, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i32 %1289, metadata !731, metadata !DIExpression()), !dbg !1970
  %1290 = shl i64 %1257, 16, !dbg !1971
  %1291 = zext i32 %1289 to i64, !dbg !1972
  %1292 = or i64 %1290, %1291, !dbg !1973
  %1293 = add nsw i32 %1288, -16, !dbg !1968
  store i32 %1293, ptr %10, align 8, !dbg !1968, !tbaa !745
  %1294 = icmp slt i32 %1288, 49, !dbg !1974
  br i1 %1294, label %1295, label %1305, !dbg !1975

1295:                                             ; preds = %1287
  %1296 = zext i32 %1293 to i64, !dbg !1976
  %1297 = shl i64 %1292, %1296, !dbg !1976
  call void @llvm.dbg.value(metadata i64 %1297, metadata !751, metadata !DIExpression()), !dbg !1977
  %1298 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1297) #11, !dbg !1979, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %1298, metadata !751, metadata !DIExpression()), !dbg !1977
  %1299 = trunc i64 %1298 to i32, !dbg !1980
  %1300 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !1981
  %1301 = load ptr, ptr %1300, align 8, !dbg !1981, !tbaa !763
  store i32 %1299, ptr %1301, align 4, !dbg !1982, !tbaa !505
  %1302 = load i32, ptr %10, align 8, !dbg !1983, !tbaa !745
  %1303 = add nsw i32 %1302, 32, !dbg !1983
  %1304 = getelementptr inbounds i8, ptr %1301, i64 4, !dbg !1984
  store ptr %1304, ptr %1300, align 8, !dbg !1984, !tbaa !763
  br label %1305, !dbg !1985

1305:                                             ; preds = %1287, %1295
  %1306 = phi i32 [ %1293, %1287 ], [ %1303, %1295 ], !dbg !1986
  %1307 = load i32, ptr %1215, align 4, !dbg !1988, !tbaa !578
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !1989
  call void @llvm.dbg.value(metadata i32 16, metadata !730, metadata !DIExpression()), !dbg !1989
  call void @llvm.dbg.value(metadata i32 %1307, metadata !731, metadata !DIExpression()), !dbg !1989
  %1308 = shl i64 %1292, 16, !dbg !1990
  %1309 = zext i32 %1307 to i64, !dbg !1991
  %1310 = or i64 %1308, %1309, !dbg !1992
  store i64 %1310, ptr %5, align 8, !dbg !1993, !tbaa !737
  %1311 = add nsw i32 %1306, -16, !dbg !1986
  store i32 %1311, ptr %10, align 8, !dbg !1986, !tbaa !745
  %1312 = icmp slt i32 %1306, 49, !dbg !1994
  br i1 %1312, label %1313, label %1327, !dbg !1995

1313:                                             ; preds = %1305
  %1314 = zext i32 %1311 to i64, !dbg !1996
  %1315 = shl i64 %1310, %1314, !dbg !1996
  call void @llvm.dbg.value(metadata i64 %1315, metadata !751, metadata !DIExpression()), !dbg !1997
  %1316 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1315) #11, !dbg !1999, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %1316, metadata !751, metadata !DIExpression()), !dbg !1997
  %1317 = trunc i64 %1316 to i32, !dbg !2000
  %1318 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !2001
  %1319 = load ptr, ptr %1318, align 8, !dbg !2001, !tbaa !763
  store i32 %1317, ptr %1319, align 4, !dbg !2002, !tbaa !505
  br label %1320, !dbg !2003

1320:                                             ; preds = %1269, %1313
  %1321 = phi ptr [ %1319, %1313 ], [ %1275, %1269 ]
  %1322 = phi ptr [ %1318, %1313 ], [ %1274, %1269 ]
  %1323 = phi i64 [ %1310, %1313 ], [ %1266, %1269 ]
  %1324 = load i32, ptr %10, align 8, !dbg !2004, !tbaa !745
  %1325 = add nsw i32 %1324, 32, !dbg !2004
  %1326 = getelementptr inbounds i8, ptr %1321, i64 4, !dbg !2004
  store ptr %1326, ptr %1322, align 8, !dbg !2004, !tbaa !763
  br label %1327, !dbg !2005

1327:                                             ; preds = %1320, %1305, %1260, %1208
  %1328 = phi i32 [ %1311, %1305 ], [ %1267, %1260 ], [ %1209, %1208 ], [ %1325, %1320 ], !dbg !2006
  %1329 = phi i64 [ %1310, %1305 ], [ %1266, %1260 ], [ %1198, %1208 ], [ %1323, %1320 ], !dbg !2008
  %1330 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 3, !dbg !2005
  %1331 = load i32, ptr %1330, align 4, !dbg !2005, !tbaa !585
  call void @llvm.dbg.value(metadata ptr %0, metadata !1884, metadata !DIExpression()), !dbg !2009
  call void @llvm.dbg.value(metadata i32 %1331, metadata !1889, metadata !DIExpression()), !dbg !2009
  %1332 = shl i64 %1329, 1, !dbg !2008
  %1333 = zext i32 %1331 to i64, !dbg !2010
  %1334 = or i64 %1332, %1333, !dbg !2011
  %1335 = add nsw i32 %1328, -1, !dbg !2006
  %1336 = icmp eq i32 %1335, 32, !dbg !2012
  br i1 %1336, label %1337, label %1344, !dbg !2013

1337:                                             ; preds = %1327
  %1338 = trunc i64 %1334 to i32, !dbg !2014
  call void @llvm.dbg.value(metadata i32 %1338, metadata !1901, metadata !DIExpression()), !dbg !2015
  %1339 = tail call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %1338) #11, !dbg !2017, !srcloc !1909
  call void @llvm.dbg.value(metadata i32 %1339, metadata !1901, metadata !DIExpression()), !dbg !2015
  %1340 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !2018
  %1341 = load ptr, ptr %1340, align 8, !dbg !2018, !tbaa !763
  store i32 %1339, ptr %1341, align 4, !dbg !2019, !tbaa !505
  %1342 = getelementptr inbounds i8, ptr %1341, i64 4, !dbg !2020
  store ptr %1342, ptr %1340, align 8, !dbg !2020, !tbaa !763
  store i32 64, ptr %10, align 8, !dbg !2021, !tbaa !745
  %1343 = load i32, ptr %1330, align 4, !dbg !2022, !tbaa !585
  br label %1344, !dbg !2024

1344:                                             ; preds = %1327, %1337
  %1345 = phi i32 [ %1335, %1327 ], [ 64, %1337 ]
  %1346 = phi i32 [ %1331, %1327 ], [ %1343, %1337 ], !dbg !2022
  %1347 = icmp eq i32 %1346, 0, !dbg !2025
  br i1 %1347, label %1362, label %1348, !dbg !2026

1348:                                             ; preds = %1344
  %1349 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 4, !dbg !2027
  %1350 = load i32, ptr %1349, align 4, !dbg !2027, !tbaa !592
  call void @llvm.dbg.value(metadata ptr %0, metadata !1884, metadata !DIExpression()), !dbg !2028
  call void @llvm.dbg.value(metadata i32 %1350, metadata !1889, metadata !DIExpression()), !dbg !2028
  %1351 = shl i64 %1334, 1, !dbg !2030
  %1352 = zext i32 %1350 to i64, !dbg !2031
  %1353 = or i64 %1351, %1352, !dbg !2032
  store i64 %1353, ptr %5, align 8, !dbg !2032, !tbaa !737
  %1354 = add nsw i32 %1345, -1, !dbg !2033
  %1355 = icmp eq i32 %1354, 32, !dbg !2034
  br i1 %1355, label %1356, label %1362, !dbg !2035

1356:                                             ; preds = %1348
  %1357 = trunc i64 %1353 to i32, !dbg !2036
  call void @llvm.dbg.value(metadata i32 %1357, metadata !1901, metadata !DIExpression()), !dbg !2037
  %1358 = tail call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %1357) #11, !dbg !2039, !srcloc !1909
  call void @llvm.dbg.value(metadata i32 %1358, metadata !1901, metadata !DIExpression()), !dbg !2037
  %1359 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !2040
  %1360 = load ptr, ptr %1359, align 8, !dbg !2040, !tbaa !763
  store i32 %1358, ptr %1360, align 4, !dbg !2041, !tbaa !505
  %1361 = getelementptr inbounds i8, ptr %1360, i64 4, !dbg !2042
  store ptr %1361, ptr %1359, align 8, !dbg !2042, !tbaa !763
  br label %1362, !dbg !2043

1362:                                             ; preds = %1356, %1348, %1344
  %1363 = phi i32 [ 64, %1356 ], [ %1354, %1348 ], [ %1345, %1344 ], !dbg !2044
  %1364 = phi i64 [ %1353, %1356 ], [ %1353, %1348 ], [ %1334, %1344 ], !dbg !2046
  %1365 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 5, !dbg !2047
  %1366 = load i32, ptr %1365, align 4, !dbg !2047, !tbaa !596
  call void @llvm.dbg.value(metadata ptr %0, metadata !1884, metadata !DIExpression()), !dbg !2048
  call void @llvm.dbg.value(metadata i32 %1366, metadata !1889, metadata !DIExpression()), !dbg !2048
  %1367 = shl i64 %1364, 1, !dbg !2046
  %1368 = zext i32 %1366 to i64, !dbg !2049
  %1369 = or i64 %1367, %1368, !dbg !2050
  %1370 = add nsw i32 %1363, -1, !dbg !2044
  %1371 = icmp eq i32 %1370, 32, !dbg !2051
  br i1 %1371, label %1372, label %1379, !dbg !2052

1372:                                             ; preds = %1362
  %1373 = trunc i64 %1369 to i32, !dbg !2053
  call void @llvm.dbg.value(metadata i32 %1373, metadata !1901, metadata !DIExpression()), !dbg !2054
  %1374 = tail call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %1373) #11, !dbg !2056, !srcloc !1909
  call void @llvm.dbg.value(metadata i32 %1374, metadata !1901, metadata !DIExpression()), !dbg !2054
  %1375 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !2057
  %1376 = load ptr, ptr %1375, align 8, !dbg !2057, !tbaa !763
  store i32 %1374, ptr %1376, align 4, !dbg !2058, !tbaa !505
  %1377 = getelementptr inbounds i8, ptr %1376, i64 4, !dbg !2059
  store ptr %1377, ptr %1375, align 8, !dbg !2059, !tbaa !763
  %1378 = load i32, ptr %1365, align 4, !dbg !2060, !tbaa !596
  br label %1379, !dbg !2062

1379:                                             ; preds = %1362, %1372
  %1380 = phi i32 [ %1370, %1362 ], [ 64, %1372 ]
  %1381 = phi i32 [ %1366, %1362 ], [ %1378, %1372 ], !dbg !2060
  %1382 = icmp eq i32 %1381, 0, !dbg !2063
  br i1 %1382, label %1492, label %1383, !dbg !2064

1383:                                             ; preds = %1379
  %1384 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 6, !dbg !2065
  %1385 = load i32, ptr %1384, align 4, !dbg !2065, !tbaa !602
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i32 3, metadata !730, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i32 %1385, metadata !731, metadata !DIExpression()), !dbg !2067
  %1386 = shl i64 %1369, 3, !dbg !2069
  %1387 = zext i32 %1385 to i64, !dbg !2070
  %1388 = or i64 %1386, %1387, !dbg !2071
  %1389 = add nsw i32 %1380, -3, !dbg !2072
  store i32 %1389, ptr %10, align 8, !dbg !2072, !tbaa !745
  %1390 = icmp slt i32 %1380, 36, !dbg !2073
  br i1 %1390, label %1391, label %1401, !dbg !2074

1391:                                             ; preds = %1383
  %1392 = zext i32 %1389 to i64, !dbg !2075
  %1393 = shl i64 %1388, %1392, !dbg !2075
  call void @llvm.dbg.value(metadata i64 %1393, metadata !751, metadata !DIExpression()), !dbg !2076
  %1394 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1393) #11, !dbg !2078, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %1394, metadata !751, metadata !DIExpression()), !dbg !2076
  %1395 = trunc i64 %1394 to i32, !dbg !2079
  %1396 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !2080
  %1397 = load ptr, ptr %1396, align 8, !dbg !2080, !tbaa !763
  store i32 %1395, ptr %1397, align 4, !dbg !2081, !tbaa !505
  %1398 = load i32, ptr %10, align 8, !dbg !2082, !tbaa !745
  %1399 = add nsw i32 %1398, 32, !dbg !2082
  %1400 = getelementptr inbounds i8, ptr %1397, i64 4, !dbg !2083
  store ptr %1400, ptr %1396, align 8, !dbg !2083, !tbaa !763
  br label %1401, !dbg !2084

1401:                                             ; preds = %1383, %1391
  %1402 = phi i32 [ %1389, %1383 ], [ %1399, %1391 ], !dbg !2085
  %1403 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 7, !dbg !2087
  %1404 = load i32, ptr %1403, align 4, !dbg !2087, !tbaa !608
  call void @llvm.dbg.value(metadata ptr %0, metadata !1884, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i32 %1404, metadata !1889, metadata !DIExpression()), !dbg !2088
  %1405 = shl i64 %1388, 1, !dbg !2089
  %1406 = zext i32 %1404 to i64, !dbg !2090
  %1407 = or i64 %1405, %1406, !dbg !2091
  store i64 %1407, ptr %5, align 8, !dbg !2091, !tbaa !737
  %1408 = add nsw i32 %1402, -1, !dbg !2085
  %1409 = icmp eq i32 %1408, 32, !dbg !2092
  br i1 %1409, label %1410, label %1416, !dbg !2093

1410:                                             ; preds = %1401
  %1411 = trunc i64 %1407 to i32, !dbg !2094
  call void @llvm.dbg.value(metadata i32 %1411, metadata !1901, metadata !DIExpression()), !dbg !2095
  %1412 = tail call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %1411) #11, !dbg !2097, !srcloc !1909
  call void @llvm.dbg.value(metadata i32 %1412, metadata !1901, metadata !DIExpression()), !dbg !2095
  %1413 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !2098
  %1414 = load ptr, ptr %1413, align 8, !dbg !2098, !tbaa !763
  store i32 %1412, ptr %1414, align 4, !dbg !2099, !tbaa !505
  %1415 = getelementptr inbounds i8, ptr %1414, i64 4, !dbg !2100
  store ptr %1415, ptr %1413, align 8, !dbg !2100, !tbaa !763
  br label %1416, !dbg !2101

1416:                                             ; preds = %1401, %1410
  %1417 = phi i32 [ %1408, %1401 ], [ 64, %1410 ], !dbg !2102
  %1418 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 8, !dbg !2104
  %1419 = load i32, ptr %1418, align 4, !dbg !2104, !tbaa !611
  call void @llvm.dbg.value(metadata ptr %0, metadata !1884, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i32 %1419, metadata !1889, metadata !DIExpression()), !dbg !2105
  %1420 = shl i64 %1407, 1, !dbg !2106
  %1421 = zext i32 %1419 to i64, !dbg !2107
  %1422 = or i64 %1420, %1421, !dbg !2108
  %1423 = add nsw i32 %1417, -1, !dbg !2102
  %1424 = icmp eq i32 %1423, 32, !dbg !2109
  br i1 %1424, label %1425, label %1432, !dbg !2110

1425:                                             ; preds = %1416
  %1426 = trunc i64 %1422 to i32, !dbg !2111
  call void @llvm.dbg.value(metadata i32 %1426, metadata !1901, metadata !DIExpression()), !dbg !2112
  %1427 = tail call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %1426) #11, !dbg !2114, !srcloc !1909
  call void @llvm.dbg.value(metadata i32 %1427, metadata !1901, metadata !DIExpression()), !dbg !2112
  %1428 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !2115
  %1429 = load ptr, ptr %1428, align 8, !dbg !2115, !tbaa !763
  store i32 %1427, ptr %1429, align 4, !dbg !2116, !tbaa !505
  %1430 = getelementptr inbounds i8, ptr %1429, i64 4, !dbg !2117
  store ptr %1430, ptr %1428, align 8, !dbg !2117, !tbaa !763
  %1431 = load i32, ptr %1418, align 4, !dbg !2118, !tbaa !611
  br label %1432, !dbg !2120

1432:                                             ; preds = %1416, %1425
  %1433 = phi i32 [ %1423, %1416 ], [ 64, %1425 ]
  %1434 = phi i32 [ %1419, %1416 ], [ %1431, %1425 ], !dbg !2118
  %1435 = icmp eq i32 %1434, 0, !dbg !2121
  br i1 %1435, label %1492, label %1436, !dbg !2122

1436:                                             ; preds = %1432
  %1437 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 9, !dbg !2123
  %1438 = load i32, ptr %1437, align 4, !dbg !2123, !tbaa !618
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata i32 8, metadata !730, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata i32 %1438, metadata !731, metadata !DIExpression()), !dbg !2125
  %1439 = shl i64 %1422, 8, !dbg !2127
  %1440 = zext i32 %1438 to i64, !dbg !2128
  %1441 = or i64 %1439, %1440, !dbg !2129
  %1442 = add nsw i32 %1433, -8, !dbg !2130
  store i32 %1442, ptr %10, align 8, !dbg !2130, !tbaa !745
  %1443 = icmp slt i32 %1433, 41, !dbg !2131
  br i1 %1443, label %1444, label %1454, !dbg !2132

1444:                                             ; preds = %1436
  %1445 = zext i32 %1442 to i64, !dbg !2133
  %1446 = shl i64 %1441, %1445, !dbg !2133
  call void @llvm.dbg.value(metadata i64 %1446, metadata !751, metadata !DIExpression()), !dbg !2134
  %1447 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1446) #11, !dbg !2136, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %1447, metadata !751, metadata !DIExpression()), !dbg !2134
  %1448 = trunc i64 %1447 to i32, !dbg !2137
  %1449 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !2138
  %1450 = load ptr, ptr %1449, align 8, !dbg !2138, !tbaa !763
  store i32 %1448, ptr %1450, align 4, !dbg !2139, !tbaa !505
  %1451 = load i32, ptr %10, align 8, !dbg !2140, !tbaa !745
  %1452 = add nsw i32 %1451, 32, !dbg !2140
  %1453 = getelementptr inbounds i8, ptr %1450, i64 4, !dbg !2141
  store ptr %1453, ptr %1449, align 8, !dbg !2141, !tbaa !763
  br label %1454, !dbg !2142

1454:                                             ; preds = %1436, %1444
  %1455 = phi i32 [ %1442, %1436 ], [ %1452, %1444 ], !dbg !2143
  %1456 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 10, !dbg !2145
  %1457 = load i32, ptr %1456, align 4, !dbg !2145, !tbaa !625
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i32 8, metadata !730, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i32 %1457, metadata !731, metadata !DIExpression()), !dbg !2146
  %1458 = shl i64 %1441, 8, !dbg !2147
  %1459 = zext i32 %1457 to i64, !dbg !2148
  %1460 = or i64 %1458, %1459, !dbg !2149
  store i64 %1460, ptr %5, align 8, !dbg !2150, !tbaa !737
  %1461 = add nsw i32 %1455, -8, !dbg !2143
  store i32 %1461, ptr %10, align 8, !dbg !2143, !tbaa !745
  %1462 = icmp slt i32 %1455, 41, !dbg !2151
  br i1 %1462, label %1463, label %1473, !dbg !2152

1463:                                             ; preds = %1454
  %1464 = zext i32 %1461 to i64, !dbg !2153
  %1465 = shl i64 %1460, %1464, !dbg !2153
  call void @llvm.dbg.value(metadata i64 %1465, metadata !751, metadata !DIExpression()), !dbg !2154
  %1466 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1465) #11, !dbg !2156, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %1466, metadata !751, metadata !DIExpression()), !dbg !2154
  %1467 = trunc i64 %1466 to i32, !dbg !2157
  %1468 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !2158
  %1469 = load ptr, ptr %1468, align 8, !dbg !2158, !tbaa !763
  store i32 %1467, ptr %1469, align 4, !dbg !2159, !tbaa !505
  %1470 = load i32, ptr %10, align 8, !dbg !2160, !tbaa !745
  %1471 = add nsw i32 %1470, 32, !dbg !2160
  %1472 = getelementptr inbounds i8, ptr %1469, i64 4, !dbg !2161
  store ptr %1472, ptr %1468, align 8, !dbg !2161, !tbaa !763
  br label %1473, !dbg !2162

1473:                                             ; preds = %1454, %1463
  %1474 = phi i32 [ %1461, %1454 ], [ %1471, %1463 ], !dbg !2163
  %1475 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 11, !dbg !2165
  %1476 = load i32, ptr %1475, align 4, !dbg !2165, !tbaa !632
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !2166
  call void @llvm.dbg.value(metadata i32 8, metadata !730, metadata !DIExpression()), !dbg !2166
  call void @llvm.dbg.value(metadata i32 %1476, metadata !731, metadata !DIExpression()), !dbg !2166
  %1477 = shl i64 %1460, 8, !dbg !2167
  %1478 = zext i32 %1476 to i64, !dbg !2168
  %1479 = or i64 %1477, %1478, !dbg !2169
  %1480 = add nsw i32 %1474, -8, !dbg !2163
  store i32 %1480, ptr %10, align 8, !dbg !2163, !tbaa !745
  %1481 = icmp slt i32 %1474, 41, !dbg !2170
  br i1 %1481, label %1482, label %1492, !dbg !2171

1482:                                             ; preds = %1473
  %1483 = zext i32 %1480 to i64, !dbg !2172
  %1484 = shl i64 %1479, %1483, !dbg !2172
  call void @llvm.dbg.value(metadata i64 %1484, metadata !751, metadata !DIExpression()), !dbg !2173
  %1485 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1484) #11, !dbg !2175, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %1485, metadata !751, metadata !DIExpression()), !dbg !2173
  %1486 = trunc i64 %1485 to i32, !dbg !2176
  %1487 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !2177
  %1488 = load ptr, ptr %1487, align 8, !dbg !2177, !tbaa !763
  store i32 %1486, ptr %1488, align 4, !dbg !2178, !tbaa !505
  %1489 = load i32, ptr %10, align 8, !dbg !2179, !tbaa !745
  %1490 = add nsw i32 %1489, 32, !dbg !2179
  %1491 = getelementptr inbounds i8, ptr %1488, i64 4, !dbg !2180
  store ptr %1491, ptr %1487, align 8, !dbg !2180, !tbaa !763
  br label %1492, !dbg !2181

1492:                                             ; preds = %1482, %1473, %1432, %1379
  %1493 = phi i32 [ %1490, %1482 ], [ %1480, %1473 ], [ %1433, %1432 ], [ %1380, %1379 ], !dbg !2182
  %1494 = phi i64 [ %1479, %1482 ], [ %1479, %1473 ], [ %1422, %1432 ], [ %1369, %1379 ], !dbg !2184
  %1495 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 12, !dbg !2185
  %1496 = load i32, ptr %1495, align 4, !dbg !2185, !tbaa !651
  call void @llvm.dbg.value(metadata ptr %0, metadata !1884, metadata !DIExpression()), !dbg !2186
  call void @llvm.dbg.value(metadata i32 %1496, metadata !1889, metadata !DIExpression()), !dbg !2186
  %1497 = shl i64 %1494, 1, !dbg !2184
  %1498 = zext i32 %1496 to i64, !dbg !2187
  %1499 = or i64 %1497, %1498, !dbg !2188
  %1500 = add nsw i32 %1493, -1, !dbg !2182
  %1501 = icmp eq i32 %1500, 32, !dbg !2189
  br i1 %1501, label %1502, label %1509, !dbg !2190

1502:                                             ; preds = %1492
  %1503 = trunc i64 %1499 to i32, !dbg !2191
  call void @llvm.dbg.value(metadata i32 %1503, metadata !1901, metadata !DIExpression()), !dbg !2192
  %1504 = tail call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %1503) #11, !dbg !2194, !srcloc !1909
  call void @llvm.dbg.value(metadata i32 %1504, metadata !1901, metadata !DIExpression()), !dbg !2192
  %1505 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !2195
  %1506 = load ptr, ptr %1505, align 8, !dbg !2195, !tbaa !763
  store i32 %1504, ptr %1506, align 4, !dbg !2196, !tbaa !505
  %1507 = getelementptr inbounds i8, ptr %1506, i64 4, !dbg !2197
  store ptr %1507, ptr %1505, align 8, !dbg !2197, !tbaa !763
  %1508 = load i32, ptr %1495, align 4, !dbg !2198, !tbaa !651
  br label %1509, !dbg !2200

1509:                                             ; preds = %1492, %1502
  %1510 = phi i32 [ %1500, %1492 ], [ 64, %1502 ]
  %1511 = phi i32 [ %1496, %1492 ], [ %1508, %1502 ], !dbg !2198
  %1512 = icmp eq i32 %1511, 0, !dbg !2201
  br i1 %1512, label %1618, label %1513, !dbg !2202

1513:                                             ; preds = %1509
  %1514 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 13, !dbg !2203
  %1515 = load i32, ptr %1514, align 4, !dbg !2203, !tbaa !657
  call void @llvm.dbg.value(metadata ptr %0, metadata !868, metadata !DIExpression()), !dbg !2205
  call void @llvm.dbg.value(metadata i32 %1515, metadata !869, metadata !DIExpression()), !dbg !2205
  call void @llvm.dbg.value(metadata i32 0, metadata !870, metadata !DIExpression()), !dbg !2205
  %1516 = add i32 %1515, 1, !dbg !2207
  call void @llvm.dbg.value(metadata i32 %1516, metadata !869, metadata !DIExpression()), !dbg !2205
  call void @llvm.dbg.value(metadata i32 %1516, metadata !871, metadata !DIExpression()), !dbg !2205
  %1517 = icmp sgt i32 %1516, 65535, !dbg !2208
  %1518 = lshr i32 %1516, 16
  %1519 = select i1 %1517, i32 32, i32 0, !dbg !2209
  %1520 = select i1 %1517, i32 %1518, i32 %1516, !dbg !2209
  call void @llvm.dbg.value(metadata i32 %1520, metadata !871, metadata !DIExpression()), !dbg !2205
  call void @llvm.dbg.value(metadata i32 %1519, metadata !870, metadata !DIExpression()), !dbg !2205
  %1521 = icmp sgt i32 %1520, 255, !dbg !2210
  %1522 = or i32 %1519, 16, !dbg !2211
  %1523 = lshr i32 %1520, 8, !dbg !2211
  %1524 = select i1 %1521, i32 %1522, i32 %1519, !dbg !2211
  %1525 = select i1 %1521, i32 %1523, i32 %1520, !dbg !2211
  call void @llvm.dbg.value(metadata i32 %1525, metadata !871, metadata !DIExpression()), !dbg !2205
  call void @llvm.dbg.value(metadata i32 %1524, metadata !870, metadata !DIExpression()), !dbg !2205
  %1526 = sext i32 %1525 to i64, !dbg !2212
  %1527 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %1526, !dbg !2212
  %1528 = load i8, ptr %1527, align 1, !dbg !2212, !tbaa !883
  %1529 = zext i8 %1528 to i32, !dbg !2212
  %1530 = add nuw nsw i32 %1524, %1529, !dbg !2213
  call void @llvm.dbg.value(metadata i32 %1530, metadata !870, metadata !DIExpression()), !dbg !2205
  %1531 = lshr i32 %1530, 1, !dbg !2214
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i32 %1531, metadata !730, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i32 0, metadata !731, metadata !DIExpression()), !dbg !2215
  %1532 = zext i32 %1531 to i64, !dbg !2217
  %1533 = shl i64 %1499, %1532, !dbg !2217
  %1534 = sub nsw i32 %1510, %1531, !dbg !2218
  store i32 %1534, ptr %10, align 8, !dbg !2218, !tbaa !745
  %1535 = icmp slt i32 %1534, 33, !dbg !2219
  br i1 %1535, label %1536, label %1546, !dbg !2220

1536:                                             ; preds = %1513
  %1537 = zext i32 %1534 to i64, !dbg !2221
  %1538 = shl i64 %1533, %1537, !dbg !2221
  call void @llvm.dbg.value(metadata i64 %1538, metadata !751, metadata !DIExpression()), !dbg !2222
  %1539 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1538) #11, !dbg !2224, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %1539, metadata !751, metadata !DIExpression()), !dbg !2222
  %1540 = trunc i64 %1539 to i32, !dbg !2225
  %1541 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !2226
  %1542 = load ptr, ptr %1541, align 8, !dbg !2226, !tbaa !763
  store i32 %1540, ptr %1542, align 4, !dbg !2227, !tbaa !505
  %1543 = load i32, ptr %10, align 8, !dbg !2228, !tbaa !745
  %1544 = add nsw i32 %1543, 32, !dbg !2228
  %1545 = getelementptr inbounds i8, ptr %1542, i64 4, !dbg !2229
  store ptr %1545, ptr %1541, align 8, !dbg !2229, !tbaa !763
  br label %1546, !dbg !2230

1546:                                             ; preds = %1536, %1513
  %1547 = phi i32 [ %1534, %1513 ], [ %1544, %1536 ], !dbg !2231
  %1548 = add nuw nsw i32 %1531, 1, !dbg !2233
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i32 %1548, metadata !730, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i32 %1516, metadata !731, metadata !DIExpression()), !dbg !2234
  %1549 = zext i32 %1548 to i64, !dbg !2235
  %1550 = shl i64 %1533, %1549, !dbg !2235
  %1551 = zext i32 %1516 to i64, !dbg !2236
  %1552 = or i64 %1550, %1551, !dbg !2237
  store i64 %1552, ptr %5, align 8, !dbg !2238, !tbaa !737
  %1553 = sub nsw i32 %1547, %1548, !dbg !2231
  store i32 %1553, ptr %10, align 8, !dbg !2231, !tbaa !745
  %1554 = icmp slt i32 %1553, 33, !dbg !2239
  br i1 %1554, label %1555, label %1565, !dbg !2240

1555:                                             ; preds = %1546
  %1556 = zext i32 %1553 to i64, !dbg !2241
  %1557 = shl i64 %1552, %1556, !dbg !2241
  call void @llvm.dbg.value(metadata i64 %1557, metadata !751, metadata !DIExpression()), !dbg !2242
  %1558 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1557) #11, !dbg !2244, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %1558, metadata !751, metadata !DIExpression()), !dbg !2242
  %1559 = trunc i64 %1558 to i32, !dbg !2245
  %1560 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !2246
  %1561 = load ptr, ptr %1560, align 8, !dbg !2246, !tbaa !763
  store i32 %1559, ptr %1561, align 4, !dbg !2247, !tbaa !505
  %1562 = load i32, ptr %10, align 8, !dbg !2248, !tbaa !745
  %1563 = add nsw i32 %1562, 32, !dbg !2248
  %1564 = getelementptr inbounds i8, ptr %1561, i64 4, !dbg !2249
  store ptr %1564, ptr %1560, align 8, !dbg !2249, !tbaa !763
  br label %1565, !dbg !2250

1565:                                             ; preds = %1546, %1555
  %1566 = phi i32 [ %1553, %1546 ], [ %1563, %1555 ], !dbg !2251
  %1567 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 14, !dbg !2254
  %1568 = load i32, ptr %1567, align 4, !dbg !2254, !tbaa !660
  call void @llvm.dbg.value(metadata ptr %0, metadata !868, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata i32 %1568, metadata !869, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata i32 0, metadata !870, metadata !DIExpression()), !dbg !2255
  %1569 = add i32 %1568, 1, !dbg !2256
  call void @llvm.dbg.value(metadata i32 %1569, metadata !869, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata i32 %1569, metadata !871, metadata !DIExpression()), !dbg !2255
  %1570 = icmp sgt i32 %1569, 65535, !dbg !2257
  %1571 = lshr i32 %1569, 16
  %1572 = select i1 %1570, i32 32, i32 0, !dbg !2258
  %1573 = select i1 %1570, i32 %1571, i32 %1569, !dbg !2258
  call void @llvm.dbg.value(metadata i32 %1573, metadata !871, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata i32 %1572, metadata !870, metadata !DIExpression()), !dbg !2255
  %1574 = icmp sgt i32 %1573, 255, !dbg !2259
  %1575 = or i32 %1572, 16, !dbg !2260
  %1576 = lshr i32 %1573, 8, !dbg !2260
  %1577 = select i1 %1574, i32 %1575, i32 %1572, !dbg !2260
  %1578 = select i1 %1574, i32 %1576, i32 %1573, !dbg !2260
  call void @llvm.dbg.value(metadata i32 %1578, metadata !871, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata i32 %1577, metadata !870, metadata !DIExpression()), !dbg !2255
  %1579 = sext i32 %1578 to i64, !dbg !2261
  %1580 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %1579, !dbg !2261
  %1581 = load i8, ptr %1580, align 1, !dbg !2261, !tbaa !883
  %1582 = zext i8 %1581 to i32, !dbg !2261
  %1583 = add nuw nsw i32 %1577, %1582, !dbg !2262
  call void @llvm.dbg.value(metadata i32 %1583, metadata !870, metadata !DIExpression()), !dbg !2255
  %1584 = lshr i32 %1583, 1, !dbg !2263
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i32 %1584, metadata !730, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i32 0, metadata !731, metadata !DIExpression()), !dbg !2264
  %1585 = zext i32 %1584 to i64, !dbg !2265
  %1586 = shl i64 %1552, %1585, !dbg !2265
  %1587 = sub nsw i32 %1566, %1584, !dbg !2251
  store i32 %1587, ptr %10, align 8, !dbg !2251, !tbaa !745
  %1588 = icmp slt i32 %1587, 33, !dbg !2266
  br i1 %1588, label %1589, label %1599, !dbg !2267

1589:                                             ; preds = %1565
  %1590 = zext i32 %1587 to i64, !dbg !2268
  %1591 = shl i64 %1586, %1590, !dbg !2268
  call void @llvm.dbg.value(metadata i64 %1591, metadata !751, metadata !DIExpression()), !dbg !2269
  %1592 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1591) #11, !dbg !2271, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %1592, metadata !751, metadata !DIExpression()), !dbg !2269
  %1593 = trunc i64 %1592 to i32, !dbg !2272
  %1594 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !2273
  %1595 = load ptr, ptr %1594, align 8, !dbg !2273, !tbaa !763
  store i32 %1593, ptr %1595, align 4, !dbg !2274, !tbaa !505
  %1596 = load i32, ptr %10, align 8, !dbg !2275, !tbaa !745
  %1597 = add nsw i32 %1596, 32, !dbg !2275
  %1598 = getelementptr inbounds i8, ptr %1595, i64 4, !dbg !2276
  store ptr %1598, ptr %1594, align 8, !dbg !2276, !tbaa !763
  br label %1599, !dbg !2277

1599:                                             ; preds = %1589, %1565
  %1600 = phi i32 [ %1587, %1565 ], [ %1597, %1589 ], !dbg !2278
  %1601 = add nuw nsw i32 %1584, 1, !dbg !2280
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i32 %1601, metadata !730, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i32 %1569, metadata !731, metadata !DIExpression()), !dbg !2281
  %1602 = zext i32 %1601 to i64, !dbg !2282
  %1603 = shl i64 %1586, %1602, !dbg !2282
  %1604 = zext i32 %1569 to i64, !dbg !2283
  %1605 = or i64 %1603, %1604, !dbg !2284
  %1606 = sub nsw i32 %1600, %1601, !dbg !2278
  store i32 %1606, ptr %10, align 8, !dbg !2278, !tbaa !745
  %1607 = icmp slt i32 %1606, 33, !dbg !2285
  br i1 %1607, label %1608, label %1618, !dbg !2286

1608:                                             ; preds = %1599
  %1609 = zext i32 %1606 to i64, !dbg !2287
  %1610 = shl i64 %1605, %1609, !dbg !2287
  call void @llvm.dbg.value(metadata i64 %1610, metadata !751, metadata !DIExpression()), !dbg !2288
  %1611 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1610) #11, !dbg !2290, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %1611, metadata !751, metadata !DIExpression()), !dbg !2288
  %1612 = trunc i64 %1611 to i32, !dbg !2291
  %1613 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !2292
  %1614 = load ptr, ptr %1613, align 8, !dbg !2292, !tbaa !763
  store i32 %1612, ptr %1614, align 4, !dbg !2293, !tbaa !505
  %1615 = load i32, ptr %10, align 8, !dbg !2294, !tbaa !745
  %1616 = add nsw i32 %1615, 32, !dbg !2294
  %1617 = getelementptr inbounds i8, ptr %1614, i64 4, !dbg !2295
  store ptr %1617, ptr %1613, align 8, !dbg !2295, !tbaa !763
  br label %1618, !dbg !2296

1618:                                             ; preds = %1608, %1599, %1509
  %1619 = phi i32 [ %1616, %1608 ], [ %1606, %1599 ], [ %1510, %1509 ], !dbg !2297
  %1620 = phi i64 [ %1605, %1608 ], [ %1605, %1599 ], [ %1499, %1509 ], !dbg !2299
  %1621 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 15, !dbg !2300
  %1622 = load i32, ptr %1621, align 4, !dbg !2300, !tbaa !664
  call void @llvm.dbg.value(metadata ptr %0, metadata !1884, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i32 %1622, metadata !1889, metadata !DIExpression()), !dbg !2301
  %1623 = shl i64 %1620, 1, !dbg !2299
  %1624 = zext i32 %1622 to i64, !dbg !2302
  %1625 = or i64 %1623, %1624, !dbg !2303
  %1626 = add nsw i32 %1619, -1, !dbg !2297
  %1627 = icmp eq i32 %1626, 32, !dbg !2304
  br i1 %1627, label %1628, label %1635, !dbg !2305

1628:                                             ; preds = %1618
  %1629 = trunc i64 %1625 to i32, !dbg !2306
  call void @llvm.dbg.value(metadata i32 %1629, metadata !1901, metadata !DIExpression()), !dbg !2307
  %1630 = tail call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %1629) #11, !dbg !2309, !srcloc !1909
  call void @llvm.dbg.value(metadata i32 %1630, metadata !1901, metadata !DIExpression()), !dbg !2307
  %1631 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !2310
  %1632 = load ptr, ptr %1631, align 8, !dbg !2310, !tbaa !763
  store i32 %1630, ptr %1632, align 4, !dbg !2311, !tbaa !505
  %1633 = getelementptr inbounds i8, ptr %1632, i64 4, !dbg !2312
  store ptr %1633, ptr %1631, align 8, !dbg !2312, !tbaa !763
  %1634 = load i32, ptr %1621, align 4, !dbg !2313, !tbaa !664
  br label %1635, !dbg !2315

1635:                                             ; preds = %1618, %1628
  %1636 = phi i32 [ %1626, %1618 ], [ 64, %1628 ]
  %1637 = phi i32 [ %1622, %1618 ], [ %1634, %1628 ], !dbg !2313
  %1638 = icmp eq i32 %1637, 0, !dbg !2316
  br i1 %1638, label %1726, label %1639, !dbg !2317

1639:                                             ; preds = %1635
  %1640 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 16, !dbg !2318
  %1641 = load i32, ptr %1640, align 4, !dbg !2318, !tbaa !678
  call void @llvm.dbg.value(metadata ptr %0, metadata !2320, metadata !DIExpression()), !dbg !2324
  call void @llvm.dbg.value(metadata i32 %1641, metadata !2323, metadata !DIExpression()), !dbg !2324
  %1642 = lshr i32 %1641, 16, !dbg !2326
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !2327
  call void @llvm.dbg.value(metadata i32 16, metadata !730, metadata !DIExpression()), !dbg !2327
  call void @llvm.dbg.value(metadata i32 %1642, metadata !731, metadata !DIExpression()), !dbg !2327
  %1643 = shl i64 %1625, 16, !dbg !2329
  %1644 = zext i32 %1642 to i64, !dbg !2330
  %1645 = or i64 %1643, %1644, !dbg !2331
  %1646 = add nsw i32 %1636, -16, !dbg !2332
  store i32 %1646, ptr %10, align 8, !dbg !2332, !tbaa !745
  %1647 = icmp slt i32 %1636, 49, !dbg !2333
  br i1 %1647, label %1648, label %1658, !dbg !2334

1648:                                             ; preds = %1639
  %1649 = zext i32 %1646 to i64, !dbg !2335
  %1650 = shl i64 %1645, %1649, !dbg !2335
  call void @llvm.dbg.value(metadata i64 %1650, metadata !751, metadata !DIExpression()), !dbg !2336
  %1651 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1650) #11, !dbg !2338, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %1651, metadata !751, metadata !DIExpression()), !dbg !2336
  %1652 = trunc i64 %1651 to i32, !dbg !2339
  %1653 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !2340
  %1654 = load ptr, ptr %1653, align 8, !dbg !2340, !tbaa !763
  store i32 %1652, ptr %1654, align 4, !dbg !2341, !tbaa !505
  %1655 = load i32, ptr %10, align 8, !dbg !2342, !tbaa !745
  %1656 = add nsw i32 %1655, 32, !dbg !2342
  %1657 = getelementptr inbounds i8, ptr %1654, i64 4, !dbg !2343
  store ptr %1657, ptr %1653, align 8, !dbg !2343, !tbaa !763
  br label %1658, !dbg !2344

1658:                                             ; preds = %1648, %1639
  %1659 = phi i32 [ %1646, %1639 ], [ %1656, %1648 ], !dbg !2345
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i32 16, metadata !730, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i32 %1641, metadata !731, metadata !DIExpression()), !dbg !2347
  %1660 = shl i64 %1645, 16, !dbg !2348
  %1661 = zext i32 %1641 to i64, !dbg !2349
  %1662 = or i64 %1660, %1661, !dbg !2350
  %1663 = add nsw i32 %1659, -16, !dbg !2345
  store i32 %1663, ptr %10, align 8, !dbg !2345, !tbaa !745
  %1664 = icmp slt i32 %1659, 49, !dbg !2351
  br i1 %1664, label %1665, label %1675, !dbg !2352

1665:                                             ; preds = %1658
  %1666 = zext i32 %1663 to i64, !dbg !2353
  %1667 = shl i64 %1662, %1666, !dbg !2353
  call void @llvm.dbg.value(metadata i64 %1667, metadata !751, metadata !DIExpression()), !dbg !2354
  %1668 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1667) #11, !dbg !2356, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %1668, metadata !751, metadata !DIExpression()), !dbg !2354
  %1669 = trunc i64 %1668 to i32, !dbg !2357
  %1670 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !2358
  %1671 = load ptr, ptr %1670, align 8, !dbg !2358, !tbaa !763
  store i32 %1669, ptr %1671, align 4, !dbg !2359, !tbaa !505
  %1672 = load i32, ptr %10, align 8, !dbg !2360, !tbaa !745
  %1673 = add nsw i32 %1672, 32, !dbg !2360
  %1674 = getelementptr inbounds i8, ptr %1671, i64 4, !dbg !2361
  store ptr %1674, ptr %1670, align 8, !dbg !2361, !tbaa !763
  br label %1675, !dbg !2362

1675:                                             ; preds = %1658, %1665
  %1676 = phi i32 [ %1663, %1658 ], [ %1673, %1665 ], !dbg !2363
  %1677 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 17, !dbg !2366
  %1678 = load i32, ptr %1677, align 4, !dbg !2366, !tbaa !682
  call void @llvm.dbg.value(metadata ptr %0, metadata !2320, metadata !DIExpression()), !dbg !2367
  call void @llvm.dbg.value(metadata i32 %1678, metadata !2323, metadata !DIExpression()), !dbg !2367
  %1679 = lshr i32 %1678, 16, !dbg !2368
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata i32 16, metadata !730, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata i32 %1679, metadata !731, metadata !DIExpression()), !dbg !2369
  %1680 = shl i64 %1662, 16, !dbg !2370
  %1681 = zext i32 %1679 to i64, !dbg !2371
  %1682 = or i64 %1680, %1681, !dbg !2372
  %1683 = add nsw i32 %1676, -16, !dbg !2363
  store i32 %1683, ptr %10, align 8, !dbg !2363, !tbaa !745
  %1684 = icmp slt i32 %1676, 49, !dbg !2373
  br i1 %1684, label %1685, label %1695, !dbg !2374

1685:                                             ; preds = %1675
  %1686 = zext i32 %1683 to i64, !dbg !2375
  %1687 = shl i64 %1682, %1686, !dbg !2375
  call void @llvm.dbg.value(metadata i64 %1687, metadata !751, metadata !DIExpression()), !dbg !2376
  %1688 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1687) #11, !dbg !2378, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %1688, metadata !751, metadata !DIExpression()), !dbg !2376
  %1689 = trunc i64 %1688 to i32, !dbg !2379
  %1690 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !2380
  %1691 = load ptr, ptr %1690, align 8, !dbg !2380, !tbaa !763
  store i32 %1689, ptr %1691, align 4, !dbg !2381, !tbaa !505
  %1692 = load i32, ptr %10, align 8, !dbg !2382, !tbaa !745
  %1693 = add nsw i32 %1692, 32, !dbg !2382
  %1694 = getelementptr inbounds i8, ptr %1691, i64 4, !dbg !2383
  store ptr %1694, ptr %1690, align 8, !dbg !2383, !tbaa !763
  br label %1695, !dbg !2384

1695:                                             ; preds = %1685, %1675
  %1696 = phi i32 [ %1683, %1675 ], [ %1693, %1685 ], !dbg !2385
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.value(metadata i32 16, metadata !730, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.value(metadata i32 %1678, metadata !731, metadata !DIExpression()), !dbg !2387
  %1697 = shl i64 %1682, 16, !dbg !2388
  %1698 = zext i32 %1678 to i64, !dbg !2389
  %1699 = or i64 %1697, %1698, !dbg !2390
  store i64 %1699, ptr %5, align 8, !dbg !2391, !tbaa !737
  %1700 = add nsw i32 %1696, -16, !dbg !2385
  store i32 %1700, ptr %10, align 8, !dbg !2385, !tbaa !745
  %1701 = icmp slt i32 %1696, 49, !dbg !2392
  br i1 %1701, label %1702, label %1712, !dbg !2393

1702:                                             ; preds = %1695
  %1703 = zext i32 %1700 to i64, !dbg !2394
  %1704 = shl i64 %1699, %1703, !dbg !2394
  call void @llvm.dbg.value(metadata i64 %1704, metadata !751, metadata !DIExpression()), !dbg !2395
  %1705 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1704) #11, !dbg !2397, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %1705, metadata !751, metadata !DIExpression()), !dbg !2395
  %1706 = trunc i64 %1705 to i32, !dbg !2398
  %1707 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !2399
  %1708 = load ptr, ptr %1707, align 8, !dbg !2399, !tbaa !763
  store i32 %1706, ptr %1708, align 4, !dbg !2400, !tbaa !505
  %1709 = load i32, ptr %10, align 8, !dbg !2401, !tbaa !745
  %1710 = add nsw i32 %1709, 32, !dbg !2401
  %1711 = getelementptr inbounds i8, ptr %1708, i64 4, !dbg !2402
  store ptr %1711, ptr %1707, align 8, !dbg !2402, !tbaa !763
  br label %1712, !dbg !2403

1712:                                             ; preds = %1695, %1702
  %1713 = phi i32 [ %1700, %1695 ], [ %1710, %1702 ], !dbg !2404
  %1714 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 18, !dbg !2406
  %1715 = load i32, ptr %1714, align 4, !dbg !2406, !tbaa !685
  call void @llvm.dbg.value(metadata ptr %0, metadata !1884, metadata !DIExpression()), !dbg !2407
  call void @llvm.dbg.value(metadata i32 %1715, metadata !1889, metadata !DIExpression()), !dbg !2407
  %1716 = shl i64 %1699, 1, !dbg !2408
  %1717 = zext i32 %1715 to i64, !dbg !2409
  %1718 = or i64 %1716, %1717, !dbg !2410
  %1719 = add nsw i32 %1713, -1, !dbg !2404
  %1720 = icmp eq i32 %1719, 32, !dbg !2411
  br i1 %1720, label %1721, label %1726, !dbg !2412

1721:                                             ; preds = %1712
  %1722 = trunc i64 %1718 to i32, !dbg !2413
  call void @llvm.dbg.value(metadata i32 %1722, metadata !1901, metadata !DIExpression()), !dbg !2414
  %1723 = tail call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %1722) #11, !dbg !2416, !srcloc !1909
  call void @llvm.dbg.value(metadata i32 %1723, metadata !1901, metadata !DIExpression()), !dbg !2414
  %1724 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !2417
  %1725 = load ptr, ptr %1724, align 8, !dbg !2417, !tbaa !763
  store i32 %1723, ptr %1725, align 4, !dbg !2418, !tbaa !505
  call void @llvm.dbg.value(metadata ptr %0, metadata !1884, metadata !DIExpression()), !dbg !2419
  call void @llvm.dbg.value(metadata i32 0, metadata !1889, metadata !DIExpression()), !dbg !2419
  br label %1736, !dbg !2421

1726:                                             ; preds = %1712, %1635
  %1727 = phi i32 [ %1719, %1712 ], [ %1636, %1635 ], !dbg !2422
  %1728 = phi i64 [ %1718, %1712 ], [ %1625, %1635 ], !dbg !2423
  call void @llvm.dbg.value(metadata ptr %0, metadata !1884, metadata !DIExpression()), !dbg !2419
  call void @llvm.dbg.value(metadata i32 0, metadata !1889, metadata !DIExpression()), !dbg !2419
  %1729 = icmp eq i32 %1727, 33, !dbg !2424
  br i1 %1729, label %1730, label %1742, !dbg !2421

1730:                                             ; preds = %1726
  %1731 = trunc i64 %1728 to i32, !dbg !2425
  %1732 = shl i32 %1731, 1, !dbg !2425
  call void @llvm.dbg.value(metadata i32 %1732, metadata !1901, metadata !DIExpression()), !dbg !2426
  %1733 = tail call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %1732) #11, !dbg !2428, !srcloc !1909
  call void @llvm.dbg.value(metadata i32 %1733, metadata !1901, metadata !DIExpression()), !dbg !2426
  %1734 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !2429
  %1735 = load ptr, ptr %1734, align 8, !dbg !2429, !tbaa !763
  store i32 %1733, ptr %1735, align 4, !dbg !2430, !tbaa !505
  br label %1736, !dbg !2431

1736:                                             ; preds = %1730, %1721
  %1737 = phi ptr [ %1735, %1730 ], [ %1725, %1721 ]
  %1738 = phi ptr [ %1734, %1730 ], [ %1724, %1721 ]
  %1739 = phi i64 [ %1728, %1730 ], [ %1718, %1721 ]
  %1740 = phi i32 [ 63, %1730 ], [ 62, %1721 ]
  %1741 = getelementptr inbounds i8, ptr %1737, i64 4, !dbg !2432
  store ptr %1741, ptr %1738, align 8, !dbg !2432, !tbaa !763
  call void @llvm.dbg.value(metadata ptr %0, metadata !1884, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i32 0, metadata !1889, metadata !DIExpression()), !dbg !2433
  store i32 %1740, ptr %10, align 8, !dbg !2435, !tbaa !745
  br label %1753, !dbg !2436

1742:                                             ; preds = %1726
  call void @llvm.dbg.value(metadata ptr %0, metadata !1884, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i32 0, metadata !1889, metadata !DIExpression()), !dbg !2433
  %1743 = add nsw i32 %1727, -2, !dbg !2435
  store i32 %1743, ptr %10, align 8, !dbg !2435, !tbaa !745
  %1744 = icmp eq i32 %1743, 32, !dbg !2437
  br i1 %1744, label %1745, label %1753, !dbg !2436

1745:                                             ; preds = %1742
  %1746 = trunc i64 %1728 to i32, !dbg !2438
  %1747 = shl i32 %1746, 2, !dbg !2438
  call void @llvm.dbg.value(metadata i32 %1747, metadata !1901, metadata !DIExpression()), !dbg !2439
  %1748 = tail call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %1747) #11, !dbg !2441, !srcloc !1909
  call void @llvm.dbg.value(metadata i32 %1748, metadata !1901, metadata !DIExpression()), !dbg !2439
  %1749 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !2442
  %1750 = load ptr, ptr %1749, align 8, !dbg !2442, !tbaa !763
  store i32 %1748, ptr %1750, align 4, !dbg !2443, !tbaa !505
  %1751 = getelementptr inbounds i8, ptr %1750, i64 4, !dbg !2444
  store ptr %1751, ptr %1749, align 8, !dbg !2444, !tbaa !763
  call void @llvm.dbg.value(metadata ptr %0, metadata !1884, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata i32 0, metadata !1889, metadata !DIExpression()), !dbg !2445
  %1752 = shl i64 %1728, 3, !dbg !2447
  store i64 %1752, ptr %5, align 8, !dbg !2448, !tbaa !737
  br label %1765, !dbg !2449

1753:                                             ; preds = %1736, %1742
  %1754 = phi i64 [ %1728, %1742 ], [ %1739, %1736 ]
  %1755 = phi i32 [ %1743, %1742 ], [ %1740, %1736 ], !dbg !2450
  call void @llvm.dbg.value(metadata ptr %0, metadata !1884, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata i32 0, metadata !1889, metadata !DIExpression()), !dbg !2445
  %1756 = shl i64 %1754, 3, !dbg !2447
  store i64 %1756, ptr %5, align 8, !dbg !2448, !tbaa !737
  %1757 = add nsw i32 %1755, -1, !dbg !2450
  %1758 = icmp eq i32 %1757, 32, !dbg !2451
  br i1 %1758, label %1759, label %1765, !dbg !2449

1759:                                             ; preds = %1753
  %1760 = trunc i64 %1756 to i32, !dbg !2452
  call void @llvm.dbg.value(metadata i32 %1760, metadata !1901, metadata !DIExpression()), !dbg !2453
  %1761 = tail call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %1760) #11, !dbg !2455, !srcloc !1909
  call void @llvm.dbg.value(metadata i32 %1761, metadata !1901, metadata !DIExpression()), !dbg !2453
  %1762 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !2456
  %1763 = load ptr, ptr %1762, align 8, !dbg !2456, !tbaa !763
  store i32 %1761, ptr %1763, align 4, !dbg !2457, !tbaa !505
  %1764 = getelementptr inbounds i8, ptr %1763, i64 4, !dbg !2458
  store ptr %1764, ptr %1762, align 8, !dbg !2458, !tbaa !763
  br label %1765, !dbg !2459

1765:                                             ; preds = %1745, %1753, %1759
  %1766 = phi i64 [ %1754, %1753 ], [ %1754, %1759 ], [ %1728, %1745 ]
  %1767 = phi i32 [ %1757, %1753 ], [ 64, %1759 ], [ 63, %1745 ], !dbg !2460
  %1768 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 19, !dbg !2462
  %1769 = load i32, ptr %1768, align 4, !dbg !2462, !tbaa !2463
  call void @llvm.dbg.value(metadata ptr %0, metadata !1884, metadata !DIExpression()), !dbg !2464
  call void @llvm.dbg.value(metadata i32 %1769, metadata !1889, metadata !DIExpression()), !dbg !2464
  %1770 = shl i64 %1766, 4, !dbg !2465
  %1771 = zext i32 %1769 to i64, !dbg !2466
  %1772 = or i64 %1770, %1771, !dbg !2467
  %1773 = add nsw i32 %1767, -1, !dbg !2460
  %1774 = icmp eq i32 %1773, 32, !dbg !2468
  br i1 %1774, label %1775, label %1782, !dbg !2469

1775:                                             ; preds = %1765
  %1776 = trunc i64 %1772 to i32, !dbg !2470
  call void @llvm.dbg.value(metadata i32 %1776, metadata !1901, metadata !DIExpression()), !dbg !2471
  %1777 = tail call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %1776) #11, !dbg !2473, !srcloc !1909
  call void @llvm.dbg.value(metadata i32 %1777, metadata !1901, metadata !DIExpression()), !dbg !2471
  %1778 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !2474
  %1779 = load ptr, ptr %1778, align 8, !dbg !2474, !tbaa !763
  store i32 %1777, ptr %1779, align 4, !dbg !2475, !tbaa !505
  %1780 = getelementptr inbounds i8, ptr %1779, i64 4, !dbg !2476
  store ptr %1780, ptr %1778, align 8, !dbg !2476, !tbaa !763
  %1781 = load i32, ptr %1768, align 4, !dbg !2477, !tbaa !2463
  br label %1782, !dbg !2479

1782:                                             ; preds = %1765, %1775
  %1783 = phi i32 [ %1773, %1765 ], [ 64, %1775 ]
  %1784 = phi i32 [ %1769, %1765 ], [ %1781, %1775 ], !dbg !2477
  %1785 = icmp eq i32 %1784, 0, !dbg !2480
  br i1 %1785, label %2118, label %1786, !dbg !2481

1786:                                             ; preds = %1782
  %1787 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 20, !dbg !2482
  %1788 = load i32, ptr %1787, align 4, !dbg !2482, !tbaa !2484
  call void @llvm.dbg.value(metadata ptr %0, metadata !1884, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata i32 %1788, metadata !1889, metadata !DIExpression()), !dbg !2485
  %1789 = shl i64 %1772, 1, !dbg !2487
  %1790 = zext i32 %1788 to i64, !dbg !2488
  %1791 = or i64 %1789, %1790, !dbg !2489
  %1792 = add nsw i32 %1783, -1, !dbg !2490
  %1793 = icmp eq i32 %1792, 32, !dbg !2491
  br i1 %1793, label %1794, label %1800, !dbg !2492

1794:                                             ; preds = %1786
  %1795 = trunc i64 %1791 to i32, !dbg !2493
  call void @llvm.dbg.value(metadata i32 %1795, metadata !1901, metadata !DIExpression()), !dbg !2494
  %1796 = tail call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %1795) #11, !dbg !2496, !srcloc !1909
  call void @llvm.dbg.value(metadata i32 %1796, metadata !1901, metadata !DIExpression()), !dbg !2494
  %1797 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !2497
  %1798 = load ptr, ptr %1797, align 8, !dbg !2497, !tbaa !763
  store i32 %1796, ptr %1798, align 4, !dbg !2498, !tbaa !505
  %1799 = getelementptr inbounds i8, ptr %1798, i64 4, !dbg !2499
  store ptr %1799, ptr %1797, align 8, !dbg !2499, !tbaa !763
  br label %1800, !dbg !2500

1800:                                             ; preds = %1786, %1794
  %1801 = phi i32 [ %1792, %1786 ], [ 64, %1794 ], !dbg !2501
  %1802 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 21, !dbg !2504
  %1803 = load i32, ptr %1802, align 4, !dbg !2504, !tbaa !2505
  call void @llvm.dbg.value(metadata ptr %0, metadata !868, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.value(metadata i32 %1803, metadata !869, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.value(metadata i32 0, metadata !870, metadata !DIExpression()), !dbg !2506
  %1804 = add i32 %1803, 1, !dbg !2507
  call void @llvm.dbg.value(metadata i32 %1804, metadata !869, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.value(metadata i32 %1804, metadata !871, metadata !DIExpression()), !dbg !2506
  %1805 = icmp sgt i32 %1804, 65535, !dbg !2508
  %1806 = lshr i32 %1804, 16
  %1807 = select i1 %1805, i32 32, i32 0, !dbg !2509
  %1808 = select i1 %1805, i32 %1806, i32 %1804, !dbg !2509
  call void @llvm.dbg.value(metadata i32 %1808, metadata !871, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.value(metadata i32 %1807, metadata !870, metadata !DIExpression()), !dbg !2506
  %1809 = icmp sgt i32 %1808, 255, !dbg !2510
  %1810 = or i32 %1807, 16, !dbg !2511
  %1811 = lshr i32 %1808, 8, !dbg !2511
  %1812 = select i1 %1809, i32 %1810, i32 %1807, !dbg !2511
  %1813 = select i1 %1809, i32 %1811, i32 %1808, !dbg !2511
  call void @llvm.dbg.value(metadata i32 %1813, metadata !871, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.value(metadata i32 %1812, metadata !870, metadata !DIExpression()), !dbg !2506
  %1814 = sext i32 %1813 to i64, !dbg !2512
  %1815 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %1814, !dbg !2512
  %1816 = load i8, ptr %1815, align 1, !dbg !2512, !tbaa !883
  %1817 = zext i8 %1816 to i32, !dbg !2512
  %1818 = add nuw nsw i32 %1812, %1817, !dbg !2513
  call void @llvm.dbg.value(metadata i32 %1818, metadata !870, metadata !DIExpression()), !dbg !2506
  %1819 = lshr i32 %1818, 1, !dbg !2514
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !2515
  call void @llvm.dbg.value(metadata i32 %1819, metadata !730, metadata !DIExpression()), !dbg !2515
  call void @llvm.dbg.value(metadata i32 0, metadata !731, metadata !DIExpression()), !dbg !2515
  %1820 = zext i32 %1819 to i64, !dbg !2516
  %1821 = shl i64 %1791, %1820, !dbg !2516
  %1822 = sub nsw i32 %1801, %1819, !dbg !2501
  store i32 %1822, ptr %10, align 8, !dbg !2501, !tbaa !745
  %1823 = icmp slt i32 %1822, 33, !dbg !2517
  br i1 %1823, label %1824, label %1834, !dbg !2518

1824:                                             ; preds = %1800
  %1825 = zext i32 %1822 to i64, !dbg !2519
  %1826 = shl i64 %1821, %1825, !dbg !2519
  call void @llvm.dbg.value(metadata i64 %1826, metadata !751, metadata !DIExpression()), !dbg !2520
  %1827 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1826) #11, !dbg !2522, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %1827, metadata !751, metadata !DIExpression()), !dbg !2520
  %1828 = trunc i64 %1827 to i32, !dbg !2523
  %1829 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !2524
  %1830 = load ptr, ptr %1829, align 8, !dbg !2524, !tbaa !763
  store i32 %1828, ptr %1830, align 4, !dbg !2525, !tbaa !505
  %1831 = load i32, ptr %10, align 8, !dbg !2526, !tbaa !745
  %1832 = add nsw i32 %1831, 32, !dbg !2526
  %1833 = getelementptr inbounds i8, ptr %1830, i64 4, !dbg !2527
  store ptr %1833, ptr %1829, align 8, !dbg !2527, !tbaa !763
  br label %1834, !dbg !2528

1834:                                             ; preds = %1824, %1800
  %1835 = phi i32 [ %1822, %1800 ], [ %1832, %1824 ], !dbg !2529
  %1836 = add nuw nsw i32 %1819, 1, !dbg !2531
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata i32 %1836, metadata !730, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata i32 %1804, metadata !731, metadata !DIExpression()), !dbg !2532
  %1837 = zext i32 %1836 to i64, !dbg !2533
  %1838 = shl i64 %1821, %1837, !dbg !2533
  %1839 = zext i32 %1804 to i64, !dbg !2534
  %1840 = or i64 %1838, %1839, !dbg !2535
  store i64 %1840, ptr %5, align 8, !dbg !2536, !tbaa !737
  %1841 = sub nsw i32 %1835, %1836, !dbg !2529
  store i32 %1841, ptr %10, align 8, !dbg !2529, !tbaa !745
  %1842 = icmp slt i32 %1841, 33, !dbg !2537
  br i1 %1842, label %1843, label %1853, !dbg !2538

1843:                                             ; preds = %1834
  %1844 = zext i32 %1841 to i64, !dbg !2539
  %1845 = shl i64 %1840, %1844, !dbg !2539
  call void @llvm.dbg.value(metadata i64 %1845, metadata !751, metadata !DIExpression()), !dbg !2540
  %1846 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1845) #11, !dbg !2542, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %1846, metadata !751, metadata !DIExpression()), !dbg !2540
  %1847 = trunc i64 %1846 to i32, !dbg !2543
  %1848 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !2544
  %1849 = load ptr, ptr %1848, align 8, !dbg !2544, !tbaa !763
  store i32 %1847, ptr %1849, align 4, !dbg !2545, !tbaa !505
  %1850 = load i32, ptr %10, align 8, !dbg !2546, !tbaa !745
  %1851 = add nsw i32 %1850, 32, !dbg !2546
  %1852 = getelementptr inbounds i8, ptr %1849, i64 4, !dbg !2547
  store ptr %1852, ptr %1848, align 8, !dbg !2547, !tbaa !763
  br label %1853, !dbg !2548

1853:                                             ; preds = %1834, %1843
  %1854 = phi i32 [ %1841, %1834 ], [ %1851, %1843 ], !dbg !2549
  %1855 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 22, !dbg !2552
  %1856 = load i32, ptr %1855, align 4, !dbg !2552, !tbaa !2553
  call void @llvm.dbg.value(metadata ptr %0, metadata !868, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i32 %1856, metadata !869, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i32 0, metadata !870, metadata !DIExpression()), !dbg !2554
  %1857 = add i32 %1856, 1, !dbg !2555
  call void @llvm.dbg.value(metadata i32 %1857, metadata !869, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i32 %1857, metadata !871, metadata !DIExpression()), !dbg !2554
  %1858 = icmp sgt i32 %1857, 65535, !dbg !2556
  %1859 = lshr i32 %1857, 16
  %1860 = select i1 %1858, i32 32, i32 0, !dbg !2557
  %1861 = select i1 %1858, i32 %1859, i32 %1857, !dbg !2557
  call void @llvm.dbg.value(metadata i32 %1861, metadata !871, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i32 %1860, metadata !870, metadata !DIExpression()), !dbg !2554
  %1862 = icmp sgt i32 %1861, 255, !dbg !2558
  %1863 = or i32 %1860, 16, !dbg !2559
  %1864 = lshr i32 %1861, 8, !dbg !2559
  %1865 = select i1 %1862, i32 %1863, i32 %1860, !dbg !2559
  %1866 = select i1 %1862, i32 %1864, i32 %1861, !dbg !2559
  call void @llvm.dbg.value(metadata i32 %1866, metadata !871, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i32 %1865, metadata !870, metadata !DIExpression()), !dbg !2554
  %1867 = sext i32 %1866 to i64, !dbg !2560
  %1868 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %1867, !dbg !2560
  %1869 = load i8, ptr %1868, align 1, !dbg !2560, !tbaa !883
  %1870 = zext i8 %1869 to i32, !dbg !2560
  %1871 = add nuw nsw i32 %1865, %1870, !dbg !2561
  call void @llvm.dbg.value(metadata i32 %1871, metadata !870, metadata !DIExpression()), !dbg !2554
  %1872 = lshr i32 %1871, 1, !dbg !2562
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i32 %1872, metadata !730, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i32 0, metadata !731, metadata !DIExpression()), !dbg !2563
  %1873 = zext i32 %1872 to i64, !dbg !2564
  %1874 = shl i64 %1840, %1873, !dbg !2564
  %1875 = sub nsw i32 %1854, %1872, !dbg !2549
  store i32 %1875, ptr %10, align 8, !dbg !2549, !tbaa !745
  %1876 = icmp slt i32 %1875, 33, !dbg !2565
  br i1 %1876, label %1877, label %1887, !dbg !2566

1877:                                             ; preds = %1853
  %1878 = zext i32 %1875 to i64, !dbg !2567
  %1879 = shl i64 %1874, %1878, !dbg !2567
  call void @llvm.dbg.value(metadata i64 %1879, metadata !751, metadata !DIExpression()), !dbg !2568
  %1880 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1879) #11, !dbg !2570, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %1880, metadata !751, metadata !DIExpression()), !dbg !2568
  %1881 = trunc i64 %1880 to i32, !dbg !2571
  %1882 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !2572
  %1883 = load ptr, ptr %1882, align 8, !dbg !2572, !tbaa !763
  store i32 %1881, ptr %1883, align 4, !dbg !2573, !tbaa !505
  %1884 = load i32, ptr %10, align 8, !dbg !2574, !tbaa !745
  %1885 = add nsw i32 %1884, 32, !dbg !2574
  %1886 = getelementptr inbounds i8, ptr %1883, i64 4, !dbg !2575
  store ptr %1886, ptr %1882, align 8, !dbg !2575, !tbaa !763
  br label %1887, !dbg !2576

1887:                                             ; preds = %1877, %1853
  %1888 = phi i32 [ %1875, %1853 ], [ %1885, %1877 ], !dbg !2577
  %1889 = add nuw nsw i32 %1872, 1, !dbg !2579
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !2580
  call void @llvm.dbg.value(metadata i32 %1889, metadata !730, metadata !DIExpression()), !dbg !2580
  call void @llvm.dbg.value(metadata i32 %1857, metadata !731, metadata !DIExpression()), !dbg !2580
  %1890 = zext i32 %1889 to i64, !dbg !2581
  %1891 = shl i64 %1874, %1890, !dbg !2581
  %1892 = zext i32 %1857 to i64, !dbg !2582
  %1893 = or i64 %1891, %1892, !dbg !2583
  %1894 = sub nsw i32 %1888, %1889, !dbg !2577
  store i32 %1894, ptr %10, align 8, !dbg !2577, !tbaa !745
  %1895 = icmp slt i32 %1894, 33, !dbg !2584
  br i1 %1895, label %1896, label %1906, !dbg !2585

1896:                                             ; preds = %1887
  %1897 = zext i32 %1894 to i64, !dbg !2586
  %1898 = shl i64 %1893, %1897, !dbg !2586
  call void @llvm.dbg.value(metadata i64 %1898, metadata !751, metadata !DIExpression()), !dbg !2587
  %1899 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1898) #11, !dbg !2589, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %1899, metadata !751, metadata !DIExpression()), !dbg !2587
  %1900 = trunc i64 %1899 to i32, !dbg !2590
  %1901 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !2591
  %1902 = load ptr, ptr %1901, align 8, !dbg !2591, !tbaa !763
  store i32 %1900, ptr %1902, align 4, !dbg !2592, !tbaa !505
  %1903 = load i32, ptr %10, align 8, !dbg !2593, !tbaa !745
  %1904 = add nsw i32 %1903, 32, !dbg !2593
  %1905 = getelementptr inbounds i8, ptr %1902, i64 4, !dbg !2594
  store ptr %1905, ptr %1901, align 8, !dbg !2594, !tbaa !763
  br label %1906, !dbg !2595

1906:                                             ; preds = %1887, %1896
  %1907 = phi i32 [ %1894, %1887 ], [ %1904, %1896 ], !dbg !2596
  %1908 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 23, !dbg !2599
  %1909 = load i32, ptr %1908, align 4, !dbg !2599, !tbaa !721
  call void @llvm.dbg.value(metadata ptr %0, metadata !868, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.value(metadata i32 %1909, metadata !869, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.value(metadata i32 0, metadata !870, metadata !DIExpression()), !dbg !2600
  %1910 = add i32 %1909, 1, !dbg !2601
  call void @llvm.dbg.value(metadata i32 %1910, metadata !869, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.value(metadata i32 %1910, metadata !871, metadata !DIExpression()), !dbg !2600
  %1911 = icmp sgt i32 %1910, 65535, !dbg !2602
  %1912 = lshr i32 %1910, 16
  %1913 = select i1 %1911, i32 32, i32 0, !dbg !2603
  %1914 = select i1 %1911, i32 %1912, i32 %1910, !dbg !2603
  call void @llvm.dbg.value(metadata i32 %1914, metadata !871, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.value(metadata i32 %1913, metadata !870, metadata !DIExpression()), !dbg !2600
  %1915 = icmp sgt i32 %1914, 255, !dbg !2604
  %1916 = or i32 %1913, 16, !dbg !2605
  %1917 = lshr i32 %1914, 8, !dbg !2605
  %1918 = select i1 %1915, i32 %1916, i32 %1913, !dbg !2605
  %1919 = select i1 %1915, i32 %1917, i32 %1914, !dbg !2605
  call void @llvm.dbg.value(metadata i32 %1919, metadata !871, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.value(metadata i32 %1918, metadata !870, metadata !DIExpression()), !dbg !2600
  %1920 = sext i32 %1919 to i64, !dbg !2606
  %1921 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %1920, !dbg !2606
  %1922 = load i8, ptr %1921, align 1, !dbg !2606, !tbaa !883
  %1923 = zext i8 %1922 to i32, !dbg !2606
  %1924 = add nuw nsw i32 %1918, %1923, !dbg !2607
  call void @llvm.dbg.value(metadata i32 %1924, metadata !870, metadata !DIExpression()), !dbg !2600
  %1925 = lshr i32 %1924, 1, !dbg !2608
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata i32 %1925, metadata !730, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata i32 0, metadata !731, metadata !DIExpression()), !dbg !2609
  %1926 = zext i32 %1925 to i64, !dbg !2610
  %1927 = shl i64 %1893, %1926, !dbg !2610
  %1928 = sub nsw i32 %1907, %1925, !dbg !2596
  store i32 %1928, ptr %10, align 8, !dbg !2596, !tbaa !745
  %1929 = icmp slt i32 %1928, 33, !dbg !2611
  br i1 %1929, label %1930, label %1940, !dbg !2612

1930:                                             ; preds = %1906
  %1931 = zext i32 %1928 to i64, !dbg !2613
  %1932 = shl i64 %1927, %1931, !dbg !2613
  call void @llvm.dbg.value(metadata i64 %1932, metadata !751, metadata !DIExpression()), !dbg !2614
  %1933 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1932) #11, !dbg !2616, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %1933, metadata !751, metadata !DIExpression()), !dbg !2614
  %1934 = trunc i64 %1933 to i32, !dbg !2617
  %1935 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !2618
  %1936 = load ptr, ptr %1935, align 8, !dbg !2618, !tbaa !763
  store i32 %1934, ptr %1936, align 4, !dbg !2619, !tbaa !505
  %1937 = load i32, ptr %10, align 8, !dbg !2620, !tbaa !745
  %1938 = add nsw i32 %1937, 32, !dbg !2620
  %1939 = getelementptr inbounds i8, ptr %1936, i64 4, !dbg !2621
  store ptr %1939, ptr %1935, align 8, !dbg !2621, !tbaa !763
  br label %1940, !dbg !2622

1940:                                             ; preds = %1930, %1906
  %1941 = phi i32 [ %1928, %1906 ], [ %1938, %1930 ], !dbg !2623
  %1942 = add nuw nsw i32 %1925, 1, !dbg !2625
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !2626
  call void @llvm.dbg.value(metadata i32 %1942, metadata !730, metadata !DIExpression()), !dbg !2626
  call void @llvm.dbg.value(metadata i32 %1910, metadata !731, metadata !DIExpression()), !dbg !2626
  %1943 = zext i32 %1942 to i64, !dbg !2627
  %1944 = shl i64 %1927, %1943, !dbg !2627
  %1945 = zext i32 %1910 to i64, !dbg !2628
  %1946 = or i64 %1944, %1945, !dbg !2629
  store i64 %1946, ptr %5, align 8, !dbg !2630, !tbaa !737
  %1947 = sub nsw i32 %1941, %1942, !dbg !2623
  store i32 %1947, ptr %10, align 8, !dbg !2623, !tbaa !745
  %1948 = icmp slt i32 %1947, 33, !dbg !2631
  br i1 %1948, label %1949, label %1959, !dbg !2632

1949:                                             ; preds = %1940
  %1950 = zext i32 %1947 to i64, !dbg !2633
  %1951 = shl i64 %1946, %1950, !dbg !2633
  call void @llvm.dbg.value(metadata i64 %1951, metadata !751, metadata !DIExpression()), !dbg !2634
  %1952 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1951) #11, !dbg !2636, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %1952, metadata !751, metadata !DIExpression()), !dbg !2634
  %1953 = trunc i64 %1952 to i32, !dbg !2637
  %1954 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !2638
  %1955 = load ptr, ptr %1954, align 8, !dbg !2638, !tbaa !763
  store i32 %1953, ptr %1955, align 4, !dbg !2639, !tbaa !505
  %1956 = load i32, ptr %10, align 8, !dbg !2640, !tbaa !745
  %1957 = add nsw i32 %1956, 32, !dbg !2640
  %1958 = getelementptr inbounds i8, ptr %1955, i64 4, !dbg !2641
  store ptr %1958, ptr %1954, align 8, !dbg !2641, !tbaa !763
  br label %1959, !dbg !2642

1959:                                             ; preds = %1940, %1949
  %1960 = phi i32 [ %1947, %1940 ], [ %1957, %1949 ], !dbg !2643
  %1961 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 24, !dbg !2646
  %1962 = load i32, ptr %1961, align 4, !dbg !2646, !tbaa !718
  call void @llvm.dbg.value(metadata ptr %0, metadata !868, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata i32 %1962, metadata !869, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata i32 0, metadata !870, metadata !DIExpression()), !dbg !2647
  %1963 = add i32 %1962, 1, !dbg !2648
  call void @llvm.dbg.value(metadata i32 %1963, metadata !869, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata i32 %1963, metadata !871, metadata !DIExpression()), !dbg !2647
  %1964 = icmp sgt i32 %1963, 65535, !dbg !2649
  %1965 = lshr i32 %1963, 16
  %1966 = select i1 %1964, i32 32, i32 0, !dbg !2650
  %1967 = select i1 %1964, i32 %1965, i32 %1963, !dbg !2650
  call void @llvm.dbg.value(metadata i32 %1967, metadata !871, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata i32 %1966, metadata !870, metadata !DIExpression()), !dbg !2647
  %1968 = icmp sgt i32 %1967, 255, !dbg !2651
  %1969 = or i32 %1966, 16, !dbg !2652
  %1970 = lshr i32 %1967, 8, !dbg !2652
  %1971 = select i1 %1968, i32 %1969, i32 %1966, !dbg !2652
  %1972 = select i1 %1968, i32 %1970, i32 %1967, !dbg !2652
  call void @llvm.dbg.value(metadata i32 %1972, metadata !871, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata i32 %1971, metadata !870, metadata !DIExpression()), !dbg !2647
  %1973 = sext i32 %1972 to i64, !dbg !2653
  %1974 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %1973, !dbg !2653
  %1975 = load i8, ptr %1974, align 1, !dbg !2653, !tbaa !883
  %1976 = zext i8 %1975 to i32, !dbg !2653
  %1977 = add nuw nsw i32 %1971, %1976, !dbg !2654
  call void @llvm.dbg.value(metadata i32 %1977, metadata !870, metadata !DIExpression()), !dbg !2647
  %1978 = lshr i32 %1977, 1, !dbg !2655
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !2656
  call void @llvm.dbg.value(metadata i32 %1978, metadata !730, metadata !DIExpression()), !dbg !2656
  call void @llvm.dbg.value(metadata i32 0, metadata !731, metadata !DIExpression()), !dbg !2656
  %1979 = zext i32 %1978 to i64, !dbg !2657
  %1980 = shl i64 %1946, %1979, !dbg !2657
  %1981 = sub nsw i32 %1960, %1978, !dbg !2643
  store i32 %1981, ptr %10, align 8, !dbg !2643, !tbaa !745
  %1982 = icmp slt i32 %1981, 33, !dbg !2658
  br i1 %1982, label %1983, label %1993, !dbg !2659

1983:                                             ; preds = %1959
  %1984 = zext i32 %1981 to i64, !dbg !2660
  %1985 = shl i64 %1980, %1984, !dbg !2660
  call void @llvm.dbg.value(metadata i64 %1985, metadata !751, metadata !DIExpression()), !dbg !2661
  %1986 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1985) #11, !dbg !2663, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %1986, metadata !751, metadata !DIExpression()), !dbg !2661
  %1987 = trunc i64 %1986 to i32, !dbg !2664
  %1988 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !2665
  %1989 = load ptr, ptr %1988, align 8, !dbg !2665, !tbaa !763
  store i32 %1987, ptr %1989, align 4, !dbg !2666, !tbaa !505
  %1990 = load i32, ptr %10, align 8, !dbg !2667, !tbaa !745
  %1991 = add nsw i32 %1990, 32, !dbg !2667
  %1992 = getelementptr inbounds i8, ptr %1989, i64 4, !dbg !2668
  store ptr %1992, ptr %1988, align 8, !dbg !2668, !tbaa !763
  br label %1993, !dbg !2669

1993:                                             ; preds = %1983, %1959
  %1994 = phi i32 [ %1981, %1959 ], [ %1991, %1983 ], !dbg !2670
  %1995 = add nuw nsw i32 %1978, 1, !dbg !2672
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !2673
  call void @llvm.dbg.value(metadata i32 %1995, metadata !730, metadata !DIExpression()), !dbg !2673
  call void @llvm.dbg.value(metadata i32 %1963, metadata !731, metadata !DIExpression()), !dbg !2673
  %1996 = zext i32 %1995 to i64, !dbg !2674
  %1997 = shl i64 %1980, %1996, !dbg !2674
  %1998 = zext i32 %1963 to i64, !dbg !2675
  %1999 = or i64 %1997, %1998, !dbg !2676
  %2000 = sub nsw i32 %1994, %1995, !dbg !2670
  store i32 %2000, ptr %10, align 8, !dbg !2670, !tbaa !745
  %2001 = icmp slt i32 %2000, 33, !dbg !2677
  br i1 %2001, label %2002, label %2012, !dbg !2678

2002:                                             ; preds = %1993
  %2003 = zext i32 %2000 to i64, !dbg !2679
  %2004 = shl i64 %1999, %2003, !dbg !2679
  call void @llvm.dbg.value(metadata i64 %2004, metadata !751, metadata !DIExpression()), !dbg !2680
  %2005 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %2004) #11, !dbg !2682, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %2005, metadata !751, metadata !DIExpression()), !dbg !2680
  %2006 = trunc i64 %2005 to i32, !dbg !2683
  %2007 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !2684
  %2008 = load ptr, ptr %2007, align 8, !dbg !2684, !tbaa !763
  store i32 %2006, ptr %2008, align 4, !dbg !2685, !tbaa !505
  %2009 = load i32, ptr %10, align 8, !dbg !2686, !tbaa !745
  %2010 = add nsw i32 %2009, 32, !dbg !2686
  %2011 = getelementptr inbounds i8, ptr %2008, i64 4, !dbg !2687
  store ptr %2011, ptr %2007, align 8, !dbg !2687, !tbaa !763
  br label %2012, !dbg !2688

2012:                                             ; preds = %1993, %2002
  %2013 = phi i32 [ %2000, %1993 ], [ %2010, %2002 ], !dbg !2689
  %2014 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 25, !dbg !2692
  %2015 = load i32, ptr %2014, align 4, !dbg !2692, !tbaa !694
  call void @llvm.dbg.value(metadata ptr %0, metadata !868, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i32 %2015, metadata !869, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i32 0, metadata !870, metadata !DIExpression()), !dbg !2693
  %2016 = add i32 %2015, 1, !dbg !2694
  call void @llvm.dbg.value(metadata i32 %2016, metadata !869, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i32 %2016, metadata !871, metadata !DIExpression()), !dbg !2693
  %2017 = icmp sgt i32 %2016, 65535, !dbg !2695
  %2018 = lshr i32 %2016, 16
  %2019 = select i1 %2017, i32 32, i32 0, !dbg !2696
  %2020 = select i1 %2017, i32 %2018, i32 %2016, !dbg !2696
  call void @llvm.dbg.value(metadata i32 %2020, metadata !871, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i32 %2019, metadata !870, metadata !DIExpression()), !dbg !2693
  %2021 = icmp sgt i32 %2020, 255, !dbg !2697
  %2022 = or i32 %2019, 16, !dbg !2698
  %2023 = lshr i32 %2020, 8, !dbg !2698
  %2024 = select i1 %2021, i32 %2022, i32 %2019, !dbg !2698
  %2025 = select i1 %2021, i32 %2023, i32 %2020, !dbg !2698
  call void @llvm.dbg.value(metadata i32 %2025, metadata !871, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i32 %2024, metadata !870, metadata !DIExpression()), !dbg !2693
  %2026 = sext i32 %2025 to i64, !dbg !2699
  %2027 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %2026, !dbg !2699
  %2028 = load i8, ptr %2027, align 1, !dbg !2699, !tbaa !883
  %2029 = zext i8 %2028 to i32, !dbg !2699
  %2030 = add nuw nsw i32 %2024, %2029, !dbg !2700
  call void @llvm.dbg.value(metadata i32 %2030, metadata !870, metadata !DIExpression()), !dbg !2693
  %2031 = lshr i32 %2030, 1, !dbg !2701
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !2702
  call void @llvm.dbg.value(metadata i32 %2031, metadata !730, metadata !DIExpression()), !dbg !2702
  call void @llvm.dbg.value(metadata i32 0, metadata !731, metadata !DIExpression()), !dbg !2702
  %2032 = zext i32 %2031 to i64, !dbg !2703
  %2033 = shl i64 %1999, %2032, !dbg !2703
  %2034 = sub nsw i32 %2013, %2031, !dbg !2689
  store i32 %2034, ptr %10, align 8, !dbg !2689, !tbaa !745
  %2035 = icmp slt i32 %2034, 33, !dbg !2704
  br i1 %2035, label %2036, label %2046, !dbg !2705

2036:                                             ; preds = %2012
  %2037 = zext i32 %2034 to i64, !dbg !2706
  %2038 = shl i64 %2033, %2037, !dbg !2706
  call void @llvm.dbg.value(metadata i64 %2038, metadata !751, metadata !DIExpression()), !dbg !2707
  %2039 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %2038) #11, !dbg !2709, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %2039, metadata !751, metadata !DIExpression()), !dbg !2707
  %2040 = trunc i64 %2039 to i32, !dbg !2710
  %2041 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !2711
  %2042 = load ptr, ptr %2041, align 8, !dbg !2711, !tbaa !763
  store i32 %2040, ptr %2042, align 4, !dbg !2712, !tbaa !505
  %2043 = load i32, ptr %10, align 8, !dbg !2713, !tbaa !745
  %2044 = add nsw i32 %2043, 32, !dbg !2713
  %2045 = getelementptr inbounds i8, ptr %2042, i64 4, !dbg !2714
  store ptr %2045, ptr %2041, align 8, !dbg !2714, !tbaa !763
  br label %2046, !dbg !2715

2046:                                             ; preds = %2036, %2012
  %2047 = phi i32 [ %2034, %2012 ], [ %2044, %2036 ], !dbg !2716
  %2048 = add nuw nsw i32 %2031, 1, !dbg !2718
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i32 %2048, metadata !730, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i32 %2016, metadata !731, metadata !DIExpression()), !dbg !2719
  %2049 = zext i32 %2048 to i64, !dbg !2720
  %2050 = shl i64 %2033, %2049, !dbg !2720
  %2051 = zext i32 %2016 to i64, !dbg !2721
  %2052 = or i64 %2050, %2051, !dbg !2722
  store i64 %2052, ptr %5, align 8, !dbg !2723, !tbaa !737
  %2053 = sub nsw i32 %2047, %2048, !dbg !2716
  store i32 %2053, ptr %10, align 8, !dbg !2716, !tbaa !745
  %2054 = icmp slt i32 %2053, 33, !dbg !2724
  br i1 %2054, label %2055, label %2065, !dbg !2725

2055:                                             ; preds = %2046
  %2056 = zext i32 %2053 to i64, !dbg !2726
  %2057 = shl i64 %2052, %2056, !dbg !2726
  call void @llvm.dbg.value(metadata i64 %2057, metadata !751, metadata !DIExpression()), !dbg !2727
  %2058 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %2057) #11, !dbg !2729, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %2058, metadata !751, metadata !DIExpression()), !dbg !2727
  %2059 = trunc i64 %2058 to i32, !dbg !2730
  %2060 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !2731
  %2061 = load ptr, ptr %2060, align 8, !dbg !2731, !tbaa !763
  store i32 %2059, ptr %2061, align 4, !dbg !2732, !tbaa !505
  %2062 = load i32, ptr %10, align 8, !dbg !2733, !tbaa !745
  %2063 = add nsw i32 %2062, 32, !dbg !2733
  %2064 = getelementptr inbounds i8, ptr %2061, i64 4, !dbg !2734
  store ptr %2064, ptr %2060, align 8, !dbg !2734, !tbaa !763
  br label %2065, !dbg !2735

2065:                                             ; preds = %2046, %2055
  %2066 = phi i32 [ %2053, %2046 ], [ %2063, %2055 ], !dbg !2736
  %2067 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 26, !dbg !2739
  %2068 = load i32, ptr %2067, align 4, !dbg !2739, !tbaa !702
  call void @llvm.dbg.value(metadata ptr %0, metadata !868, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.value(metadata i32 %2068, metadata !869, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.value(metadata i32 0, metadata !870, metadata !DIExpression()), !dbg !2740
  %2069 = add i32 %2068, 1, !dbg !2741
  call void @llvm.dbg.value(metadata i32 %2069, metadata !869, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.value(metadata i32 %2069, metadata !871, metadata !DIExpression()), !dbg !2740
  %2070 = icmp sgt i32 %2069, 65535, !dbg !2742
  %2071 = lshr i32 %2069, 16
  %2072 = select i1 %2070, i32 32, i32 0, !dbg !2743
  %2073 = select i1 %2070, i32 %2071, i32 %2069, !dbg !2743
  call void @llvm.dbg.value(metadata i32 %2073, metadata !871, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.value(metadata i32 %2072, metadata !870, metadata !DIExpression()), !dbg !2740
  %2074 = icmp sgt i32 %2073, 255, !dbg !2744
  %2075 = or i32 %2072, 16, !dbg !2745
  %2076 = lshr i32 %2073, 8, !dbg !2745
  %2077 = select i1 %2074, i32 %2075, i32 %2072, !dbg !2745
  %2078 = select i1 %2074, i32 %2076, i32 %2073, !dbg !2745
  call void @llvm.dbg.value(metadata i32 %2078, metadata !871, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.value(metadata i32 %2077, metadata !870, metadata !DIExpression()), !dbg !2740
  %2079 = sext i32 %2078 to i64, !dbg !2746
  %2080 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %2079, !dbg !2746
  %2081 = load i8, ptr %2080, align 1, !dbg !2746, !tbaa !883
  %2082 = zext i8 %2081 to i32, !dbg !2746
  %2083 = add nuw nsw i32 %2077, %2082, !dbg !2747
  call void @llvm.dbg.value(metadata i32 %2083, metadata !870, metadata !DIExpression()), !dbg !2740
  %2084 = lshr i32 %2083, 1, !dbg !2748
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i32 %2084, metadata !730, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i32 0, metadata !731, metadata !DIExpression()), !dbg !2749
  %2085 = zext i32 %2084 to i64, !dbg !2750
  %2086 = shl i64 %2052, %2085, !dbg !2750
  %2087 = sub nsw i32 %2066, %2084, !dbg !2736
  store i32 %2087, ptr %10, align 8, !dbg !2736, !tbaa !745
  %2088 = icmp slt i32 %2087, 33, !dbg !2751
  br i1 %2088, label %2089, label %2099, !dbg !2752

2089:                                             ; preds = %2065
  %2090 = zext i32 %2087 to i64, !dbg !2753
  %2091 = shl i64 %2086, %2090, !dbg !2753
  call void @llvm.dbg.value(metadata i64 %2091, metadata !751, metadata !DIExpression()), !dbg !2754
  %2092 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %2091) #11, !dbg !2756, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %2092, metadata !751, metadata !DIExpression()), !dbg !2754
  %2093 = trunc i64 %2092 to i32, !dbg !2757
  %2094 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !2758
  %2095 = load ptr, ptr %2094, align 8, !dbg !2758, !tbaa !763
  store i32 %2093, ptr %2095, align 4, !dbg !2759, !tbaa !505
  %2096 = load i32, ptr %10, align 8, !dbg !2760, !tbaa !745
  %2097 = add nsw i32 %2096, 32, !dbg !2760
  %2098 = getelementptr inbounds i8, ptr %2095, i64 4, !dbg !2761
  store ptr %2098, ptr %2094, align 8, !dbg !2761, !tbaa !763
  br label %2099, !dbg !2762

2099:                                             ; preds = %2089, %2065
  %2100 = phi i32 [ %2087, %2065 ], [ %2097, %2089 ], !dbg !2763
  %2101 = add nuw nsw i32 %2084, 1, !dbg !2765
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i32 %2101, metadata !730, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i32 %2069, metadata !731, metadata !DIExpression()), !dbg !2766
  %2102 = zext i32 %2101 to i64, !dbg !2767
  %2103 = shl i64 %2086, %2102, !dbg !2767
  %2104 = zext i32 %2069 to i64, !dbg !2768
  %2105 = or i64 %2103, %2104, !dbg !2769
  %2106 = sub nsw i32 %2100, %2101, !dbg !2763
  store i32 %2106, ptr %10, align 8, !dbg !2763, !tbaa !745
  %2107 = icmp slt i32 %2106, 33, !dbg !2770
  br i1 %2107, label %2108, label %2118, !dbg !2771

2108:                                             ; preds = %2099
  %2109 = zext i32 %2106 to i64, !dbg !2772
  %2110 = shl i64 %2105, %2109, !dbg !2772
  call void @llvm.dbg.value(metadata i64 %2110, metadata !751, metadata !DIExpression()), !dbg !2773
  %2111 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %2110) #11, !dbg !2775, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %2111, metadata !751, metadata !DIExpression()), !dbg !2773
  %2112 = trunc i64 %2111 to i32, !dbg !2776
  %2113 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !2777
  %2114 = load ptr, ptr %2113, align 8, !dbg !2777, !tbaa !763
  store i32 %2112, ptr %2114, align 4, !dbg !2778, !tbaa !505
  %2115 = load i32, ptr %10, align 8, !dbg !2779, !tbaa !745
  %2116 = add nsw i32 %2115, 32, !dbg !2779
  %2117 = getelementptr inbounds i8, ptr %2114, i64 4, !dbg !2780
  store ptr %2117, ptr %2113, align 8, !dbg !2780, !tbaa !763
  br label %2118, !dbg !2781

2118:                                             ; preds = %2108, %2099, %1782, %1189
  %2119 = phi i32 [ %2116, %2108 ], [ %2106, %2099 ], [ %1783, %1782 ], [ %1190, %1189 ], !dbg !2782
  %2120 = phi i64 [ %2105, %2108 ], [ %2105, %2099 ], [ %1772, %1782 ], [ %1175, %1189 ], !dbg !2790
  call void @llvm.dbg.value(metadata ptr %0, metadata !2788, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata ptr %0, metadata !1884, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata i32 1, metadata !1889, metadata !DIExpression()), !dbg !2792
  %2121 = shl i64 %2120, 1, !dbg !2790
  %2122 = or i64 %2121, 1, !dbg !2793
  store i64 %2122, ptr %5, align 8, !dbg !2793, !tbaa !737
  %2123 = add nsw i32 %2119, -1, !dbg !2782
  %2124 = icmp eq i32 %2123, 32, !dbg !2794
  br i1 %2124, label %2125, label %2131, !dbg !2795

2125:                                             ; preds = %2118
  %2126 = trunc i64 %2122 to i32, !dbg !2796
  call void @llvm.dbg.value(metadata i32 %2126, metadata !1901, metadata !DIExpression()), !dbg !2797
  %2127 = tail call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %2126) #11, !dbg !2799, !srcloc !1909
  call void @llvm.dbg.value(metadata i32 %2127, metadata !1901, metadata !DIExpression()), !dbg !2797
  %2128 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !2800
  %2129 = load ptr, ptr %2128, align 8, !dbg !2800, !tbaa !763
  store i32 %2127, ptr %2129, align 4, !dbg !2801, !tbaa !505
  %2130 = getelementptr inbounds i8, ptr %2129, i64 4, !dbg !2802
  store ptr %2130, ptr %2128, align 8, !dbg !2802, !tbaa !763
  br label %2131, !dbg !2803

2131:                                             ; preds = %2118, %2125
  %2132 = phi i32 [ %2123, %2118 ], [ 64, %2125 ], !dbg !2804
  call void @llvm.dbg.value(metadata ptr %0, metadata !2807, metadata !DIExpression()), !dbg !2809
  %2133 = zext i32 %2132 to i64, !dbg !2810
  %2134 = shl i64 %2122, %2133, !dbg !2810
  call void @llvm.dbg.value(metadata i64 %2134, metadata !751, metadata !DIExpression()), !dbg !2811
  %2135 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %2134) #11, !dbg !2813, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %2135, metadata !751, metadata !DIExpression()), !dbg !2811
  %2136 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !2814
  %2137 = load ptr, ptr %2136, align 8, !dbg !2814, !tbaa !763
  store i64 %2135, ptr %2137, align 8, !dbg !2815, !tbaa !2816
  %2138 = sdiv i32 %2132, -8, !dbg !2817
  %2139 = add nsw i32 %2138, 8, !dbg !2818
  %2140 = sext i32 %2139 to i64, !dbg !2818
  %2141 = getelementptr inbounds i8, ptr %2137, i64 %2140, !dbg !2819
  store ptr %2141, ptr %2136, align 8, !dbg !2819, !tbaa !763
  store i32 64, ptr %10, align 8, !dbg !2820, !tbaa !745
  ret void, !dbg !2821
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_pps_init(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #3 !dbg !2822 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2849, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i32 %1, metadata !2850, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata ptr %2, metadata !2851, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata ptr %3, metadata !2852, metadata !DIExpression()), !dbg !2855
  store i32 %1, ptr %0, align 8, !dbg !2856, !tbaa !2857
  %5 = load i32, ptr %3, align 4, !dbg !2859, !tbaa !417
  %6 = getelementptr inbounds %struct.x264_pps_t, ptr %0, i64 0, i32 1, !dbg !2860
  store i32 %5, ptr %6, align 4, !dbg !2861, !tbaa !2862
  %7 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 23, !dbg !2863
  %8 = load i32, ptr %7, align 4, !dbg !2863, !tbaa !454
  %9 = getelementptr inbounds %struct.x264_pps_t, ptr %0, i64 0, i32 2, !dbg !2864
  store i32 %8, ptr %9, align 8, !dbg !2865, !tbaa !2866
  %10 = getelementptr inbounds %struct.x264_pps_t, ptr %0, i64 0, i32 3, !dbg !2867
  store <4 x i32> <i32 0, i32 1, i32 1, i32 1>, ptr %10, align 4, !dbg !2868, !tbaa !505
  %11 = getelementptr inbounds %struct.x264_pps_t, ptr %0, i64 0, i32 7, !dbg !2869
  store i32 0, ptr %11, align 4, !dbg !2870, !tbaa !2871
  %12 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 39, i32 3, !dbg !2872
  %13 = load i32, ptr %12, align 4, !dbg !2872, !tbaa !2873
  %14 = icmp eq i32 %13, 0, !dbg !2874
  %15 = select i1 %14, i32 0, i32 2, !dbg !2874
  %16 = getelementptr inbounds %struct.x264_pps_t, ptr %0, i64 0, i32 8, !dbg !2875
  store i32 %15, ptr %16, align 8, !dbg !2876, !tbaa !2877
  %17 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 40, !dbg !2878
  %18 = load i32, ptr %17, align 8, !dbg !2879, !tbaa !426
  %19 = icmp eq i32 %18, 2, !dbg !2880
  br i1 %19, label %23, label %20, !dbg !2881

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 40, i32 1, !dbg !2882
  %22 = load i32, ptr %21, align 4, !dbg !2882, !tbaa !436
  br label %23, !dbg !2881

23:                                               ; preds = %4, %20
  %24 = phi i32 [ %22, %20 ], [ 26, %4 ], !dbg !2881
  %25 = getelementptr inbounds %struct.x264_pps_t, ptr %0, i64 0, i32 9, !dbg !2883
  store i32 %24, ptr %25, align 4, !dbg !2884, !tbaa !2885
  %26 = getelementptr inbounds %struct.x264_pps_t, ptr %0, i64 0, i32 10, !dbg !2886
  store i32 26, ptr %26, align 8, !dbg !2887, !tbaa !2888
  %27 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 39, i32 6, !dbg !2889
  %28 = load i32, ptr %27, align 8, !dbg !2889, !tbaa !2890
  %29 = getelementptr inbounds %struct.x264_pps_t, ptr %0, i64 0, i32 11, !dbg !2891
  store i32 %28, ptr %29, align 4, !dbg !2892, !tbaa !2893
  %30 = getelementptr inbounds %struct.x264_pps_t, ptr %0, i64 0, i32 12, !dbg !2894
  store i32 1, ptr %30, align 8, !dbg !2895, !tbaa !2896
  %31 = getelementptr inbounds %struct.x264_pps_t, ptr %0, i64 0, i32 13, !dbg !2897
  store i32 0, ptr %31, align 4, !dbg !2898, !tbaa !2899
  %32 = getelementptr inbounds %struct.x264_pps_t, ptr %0, i64 0, i32 14, !dbg !2900
  store i32 0, ptr %32, align 8, !dbg !2901, !tbaa !2902
  %33 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 39, i32 2, !dbg !2903
  %34 = load i32, ptr %33, align 8, !dbg !2903, !tbaa !445
  %35 = icmp ne i32 %34, 0, !dbg !2904
  %36 = zext i1 %35 to i32, !dbg !2904
  %37 = getelementptr inbounds %struct.x264_pps_t, ptr %0, i64 0, i32 15, !dbg !2905
  store i32 %36, ptr %37, align 4, !dbg !2906, !tbaa !2907
  %38 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 26, !dbg !2908
  %39 = load i32, ptr %38, align 8, !dbg !2908, !tbaa !449
  %40 = getelementptr inbounds %struct.x264_pps_t, ptr %0, i64 0, i32 16, !dbg !2909
  store i32 %39, ptr %40, align 8, !dbg !2910, !tbaa !2911
  switch i32 %39, label %826 [
    i32 0, label %41
    i32 1, label %815
    i32 2, label %42
  ], !dbg !2912

41:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i64 0, metadata !2853, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 1, metadata !2853, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 1, metadata !2853, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 2, metadata !2853, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 2, metadata !2853, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 3, metadata !2853, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 3, metadata !2853, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 4, metadata !2853, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 4, metadata !2853, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 5, metadata !2853, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 5, metadata !2853, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 6, metadata !2853, metadata !DIExpression()), !dbg !2855
  br label %815, !dbg !2913

42:                                               ; preds = %23
  %43 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 28, !dbg !2914
  call void @llvm.dbg.value(metadata ptr %43, metadata !2916, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i32 4, metadata !2921, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 1, metadata !2922, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 0, metadata !2923, metadata !DIExpression()), !dbg !2930
  %44 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 28, i64 4, !dbg !2932
  %45 = load i8, ptr %44, align 1, !dbg !2932, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %45, metadata !2924, metadata !DIExpression()), !dbg !2933
  %46 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 28, i64 1, !dbg !2932
  %47 = load i8, ptr %46, align 1, !dbg !2932, !tbaa !883
  store i8 %47, ptr %44, align 1, !dbg !2932, !tbaa !883
  store i8 %45, ptr %46, align 1, !dbg !2932, !tbaa !883
  call void @llvm.dbg.value(metadata i64 2, metadata !2922, metadata !DIExpression()), !dbg !2930
  %48 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 28, i64 8, !dbg !2932
  %49 = load i8, ptr %48, align 1, !dbg !2932, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %49, metadata !2924, metadata !DIExpression()), !dbg !2933
  %50 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 28, i64 2, !dbg !2932
  %51 = load i8, ptr %50, align 1, !dbg !2932, !tbaa !883
  store i8 %51, ptr %48, align 1, !dbg !2932, !tbaa !883
  store i8 %49, ptr %50, align 1, !dbg !2932, !tbaa !883
  call void @llvm.dbg.value(metadata i64 1, metadata !2923, metadata !DIExpression()), !dbg !2930
  %52 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 28, i64 9, !dbg !2932
  %53 = load i8, ptr %52, align 1, !dbg !2932, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %53, metadata !2924, metadata !DIExpression()), !dbg !2933
  %54 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 28, i64 6, !dbg !2932
  %55 = load i8, ptr %54, align 1, !dbg !2932, !tbaa !883
  store i8 %55, ptr %52, align 1, !dbg !2932, !tbaa !883
  store i8 %53, ptr %54, align 1, !dbg !2932, !tbaa !883
  call void @llvm.dbg.value(metadata i64 3, metadata !2922, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 0, metadata !2923, metadata !DIExpression()), !dbg !2930
  %56 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 28, i64 12, !dbg !2932
  %57 = load i8, ptr %56, align 1, !dbg !2932, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %57, metadata !2924, metadata !DIExpression()), !dbg !2933
  %58 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 28, i64 3, !dbg !2932
  %59 = load i8, ptr %58, align 1, !dbg !2932, !tbaa !883
  store i8 %59, ptr %56, align 1, !dbg !2932, !tbaa !883
  store i8 %57, ptr %58, align 1, !dbg !2932, !tbaa !883
  call void @llvm.dbg.value(metadata i64 1, metadata !2923, metadata !DIExpression()), !dbg !2930
  %60 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 28, i64 13, !dbg !2932
  %61 = load i8, ptr %60, align 1, !dbg !2932, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %61, metadata !2924, metadata !DIExpression()), !dbg !2933
  %62 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 28, i64 7, !dbg !2932
  %63 = load i8, ptr %62, align 1, !dbg !2932, !tbaa !883
  store i8 %63, ptr %60, align 1, !dbg !2932, !tbaa !883
  store i8 %61, ptr %62, align 1, !dbg !2932, !tbaa !883
  call void @llvm.dbg.value(metadata i64 2, metadata !2923, metadata !DIExpression()), !dbg !2930
  %64 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 28, i64 14, !dbg !2932
  %65 = load i8, ptr %64, align 1, !dbg !2932, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %65, metadata !2924, metadata !DIExpression()), !dbg !2933
  %66 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 28, i64 11, !dbg !2932
  %67 = load i8, ptr %66, align 1, !dbg !2932, !tbaa !883
  store i8 %67, ptr %64, align 1, !dbg !2932, !tbaa !883
  store i8 %65, ptr %66, align 1, !dbg !2932, !tbaa !883
  call void @llvm.dbg.value(metadata i64 3, metadata !2923, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 4, metadata !2922, metadata !DIExpression()), !dbg !2930
  %68 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 29, !dbg !2934
  call void @llvm.dbg.value(metadata ptr %68, metadata !2916, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata i32 4, metadata !2921, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata i64 1, metadata !2922, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata i64 0, metadata !2923, metadata !DIExpression()), !dbg !2935
  %69 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 29, i64 4, !dbg !2937
  %70 = load i8, ptr %69, align 1, !dbg !2937, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %70, metadata !2924, metadata !DIExpression()), !dbg !2938
  %71 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 29, i64 1, !dbg !2937
  %72 = load i8, ptr %71, align 1, !dbg !2937, !tbaa !883
  store i8 %72, ptr %69, align 1, !dbg !2937, !tbaa !883
  store i8 %70, ptr %71, align 1, !dbg !2937, !tbaa !883
  call void @llvm.dbg.value(metadata i64 2, metadata !2922, metadata !DIExpression()), !dbg !2935
  %73 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 29, i64 8, !dbg !2937
  %74 = load i8, ptr %73, align 1, !dbg !2937, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %74, metadata !2924, metadata !DIExpression()), !dbg !2938
  %75 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 29, i64 2, !dbg !2937
  %76 = load i8, ptr %75, align 1, !dbg !2937, !tbaa !883
  store i8 %76, ptr %73, align 1, !dbg !2937, !tbaa !883
  store i8 %74, ptr %75, align 1, !dbg !2937, !tbaa !883
  call void @llvm.dbg.value(metadata i64 1, metadata !2923, metadata !DIExpression()), !dbg !2935
  %77 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 29, i64 9, !dbg !2937
  %78 = load i8, ptr %77, align 1, !dbg !2937, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %78, metadata !2924, metadata !DIExpression()), !dbg !2938
  %79 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 29, i64 6, !dbg !2937
  %80 = load i8, ptr %79, align 1, !dbg !2937, !tbaa !883
  store i8 %80, ptr %77, align 1, !dbg !2937, !tbaa !883
  store i8 %78, ptr %79, align 1, !dbg !2937, !tbaa !883
  call void @llvm.dbg.value(metadata i64 3, metadata !2922, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata i64 0, metadata !2923, metadata !DIExpression()), !dbg !2935
  %81 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 29, i64 12, !dbg !2937
  %82 = load i8, ptr %81, align 1, !dbg !2937, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %82, metadata !2924, metadata !DIExpression()), !dbg !2938
  %83 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 29, i64 3, !dbg !2937
  %84 = load i8, ptr %83, align 1, !dbg !2937, !tbaa !883
  store i8 %84, ptr %81, align 1, !dbg !2937, !tbaa !883
  store i8 %82, ptr %83, align 1, !dbg !2937, !tbaa !883
  call void @llvm.dbg.value(metadata i64 1, metadata !2923, metadata !DIExpression()), !dbg !2935
  %85 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 29, i64 13, !dbg !2937
  %86 = load i8, ptr %85, align 1, !dbg !2937, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %86, metadata !2924, metadata !DIExpression()), !dbg !2938
  %87 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 29, i64 7, !dbg !2937
  %88 = load i8, ptr %87, align 1, !dbg !2937, !tbaa !883
  store i8 %88, ptr %85, align 1, !dbg !2937, !tbaa !883
  store i8 %86, ptr %87, align 1, !dbg !2937, !tbaa !883
  call void @llvm.dbg.value(metadata i64 2, metadata !2923, metadata !DIExpression()), !dbg !2935
  %89 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 29, i64 14, !dbg !2937
  %90 = load i8, ptr %89, align 1, !dbg !2937, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %90, metadata !2924, metadata !DIExpression()), !dbg !2938
  %91 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 29, i64 11, !dbg !2937
  %92 = load i8, ptr %91, align 1, !dbg !2937, !tbaa !883
  store i8 %92, ptr %89, align 1, !dbg !2937, !tbaa !883
  store i8 %90, ptr %91, align 1, !dbg !2937, !tbaa !883
  call void @llvm.dbg.value(metadata i64 3, metadata !2923, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata i64 4, metadata !2922, metadata !DIExpression()), !dbg !2935
  %93 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 30, !dbg !2939
  call void @llvm.dbg.value(metadata ptr %93, metadata !2916, metadata !DIExpression()), !dbg !2940
  call void @llvm.dbg.value(metadata i32 4, metadata !2921, metadata !DIExpression()), !dbg !2940
  call void @llvm.dbg.value(metadata i64 1, metadata !2922, metadata !DIExpression()), !dbg !2940
  call void @llvm.dbg.value(metadata i64 0, metadata !2923, metadata !DIExpression()), !dbg !2940
  %94 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 30, i64 4, !dbg !2942
  %95 = load i8, ptr %94, align 1, !dbg !2942, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %95, metadata !2924, metadata !DIExpression()), !dbg !2943
  %96 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 30, i64 1, !dbg !2942
  %97 = load i8, ptr %96, align 1, !dbg !2942, !tbaa !883
  store i8 %97, ptr %94, align 1, !dbg !2942, !tbaa !883
  store i8 %95, ptr %96, align 1, !dbg !2942, !tbaa !883
  call void @llvm.dbg.value(metadata i64 2, metadata !2922, metadata !DIExpression()), !dbg !2940
  %98 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 30, i64 8, !dbg !2942
  %99 = load i8, ptr %98, align 1, !dbg !2942, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %99, metadata !2924, metadata !DIExpression()), !dbg !2943
  %100 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 30, i64 2, !dbg !2942
  %101 = load i8, ptr %100, align 1, !dbg !2942, !tbaa !883
  store i8 %101, ptr %98, align 1, !dbg !2942, !tbaa !883
  store i8 %99, ptr %100, align 1, !dbg !2942, !tbaa !883
  call void @llvm.dbg.value(metadata i64 1, metadata !2923, metadata !DIExpression()), !dbg !2940
  %102 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 30, i64 9, !dbg !2942
  %103 = load i8, ptr %102, align 1, !dbg !2942, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %103, metadata !2924, metadata !DIExpression()), !dbg !2943
  %104 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 30, i64 6, !dbg !2942
  %105 = load i8, ptr %104, align 1, !dbg !2942, !tbaa !883
  store i8 %105, ptr %102, align 1, !dbg !2942, !tbaa !883
  store i8 %103, ptr %104, align 1, !dbg !2942, !tbaa !883
  call void @llvm.dbg.value(metadata i64 3, metadata !2922, metadata !DIExpression()), !dbg !2940
  call void @llvm.dbg.value(metadata i64 0, metadata !2923, metadata !DIExpression()), !dbg !2940
  %106 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 30, i64 12, !dbg !2942
  %107 = load i8, ptr %106, align 1, !dbg !2942, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %107, metadata !2924, metadata !DIExpression()), !dbg !2943
  %108 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 30, i64 3, !dbg !2942
  %109 = load i8, ptr %108, align 1, !dbg !2942, !tbaa !883
  store i8 %109, ptr %106, align 1, !dbg !2942, !tbaa !883
  store i8 %107, ptr %108, align 1, !dbg !2942, !tbaa !883
  call void @llvm.dbg.value(metadata i64 1, metadata !2923, metadata !DIExpression()), !dbg !2940
  %110 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 30, i64 13, !dbg !2942
  %111 = load i8, ptr %110, align 1, !dbg !2942, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %111, metadata !2924, metadata !DIExpression()), !dbg !2943
  %112 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 30, i64 7, !dbg !2942
  %113 = load i8, ptr %112, align 1, !dbg !2942, !tbaa !883
  store i8 %113, ptr %110, align 1, !dbg !2942, !tbaa !883
  store i8 %111, ptr %112, align 1, !dbg !2942, !tbaa !883
  call void @llvm.dbg.value(metadata i64 2, metadata !2923, metadata !DIExpression()), !dbg !2940
  %114 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 30, i64 14, !dbg !2942
  %115 = load i8, ptr %114, align 1, !dbg !2942, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %115, metadata !2924, metadata !DIExpression()), !dbg !2943
  %116 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 30, i64 11, !dbg !2942
  %117 = load i8, ptr %116, align 1, !dbg !2942, !tbaa !883
  store i8 %117, ptr %114, align 1, !dbg !2942, !tbaa !883
  store i8 %115, ptr %116, align 1, !dbg !2942, !tbaa !883
  call void @llvm.dbg.value(metadata i64 3, metadata !2923, metadata !DIExpression()), !dbg !2940
  call void @llvm.dbg.value(metadata i64 4, metadata !2922, metadata !DIExpression()), !dbg !2940
  %118 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 31, !dbg !2944
  call void @llvm.dbg.value(metadata ptr %118, metadata !2916, metadata !DIExpression()), !dbg !2945
  call void @llvm.dbg.value(metadata i32 4, metadata !2921, metadata !DIExpression()), !dbg !2945
  call void @llvm.dbg.value(metadata i64 1, metadata !2922, metadata !DIExpression()), !dbg !2945
  call void @llvm.dbg.value(metadata i64 0, metadata !2923, metadata !DIExpression()), !dbg !2945
  %119 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 31, i64 4, !dbg !2947
  %120 = load i8, ptr %119, align 1, !dbg !2947, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %120, metadata !2924, metadata !DIExpression()), !dbg !2948
  %121 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 31, i64 1, !dbg !2947
  %122 = load i8, ptr %121, align 1, !dbg !2947, !tbaa !883
  store i8 %122, ptr %119, align 1, !dbg !2947, !tbaa !883
  store i8 %120, ptr %121, align 1, !dbg !2947, !tbaa !883
  call void @llvm.dbg.value(metadata i64 2, metadata !2922, metadata !DIExpression()), !dbg !2945
  %123 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 31, i64 8, !dbg !2947
  %124 = load i8, ptr %123, align 1, !dbg !2947, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %124, metadata !2924, metadata !DIExpression()), !dbg !2948
  %125 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 31, i64 2, !dbg !2947
  %126 = load i8, ptr %125, align 1, !dbg !2947, !tbaa !883
  store i8 %126, ptr %123, align 1, !dbg !2947, !tbaa !883
  store i8 %124, ptr %125, align 1, !dbg !2947, !tbaa !883
  call void @llvm.dbg.value(metadata i64 1, metadata !2923, metadata !DIExpression()), !dbg !2945
  %127 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 31, i64 9, !dbg !2947
  %128 = load i8, ptr %127, align 1, !dbg !2947, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %128, metadata !2924, metadata !DIExpression()), !dbg !2948
  %129 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 31, i64 6, !dbg !2947
  %130 = load i8, ptr %129, align 1, !dbg !2947, !tbaa !883
  store i8 %130, ptr %127, align 1, !dbg !2947, !tbaa !883
  store i8 %128, ptr %129, align 1, !dbg !2947, !tbaa !883
  call void @llvm.dbg.value(metadata i64 3, metadata !2922, metadata !DIExpression()), !dbg !2945
  call void @llvm.dbg.value(metadata i64 0, metadata !2923, metadata !DIExpression()), !dbg !2945
  %131 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 31, i64 12, !dbg !2947
  %132 = load i8, ptr %131, align 1, !dbg !2947, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %132, metadata !2924, metadata !DIExpression()), !dbg !2948
  %133 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 31, i64 3, !dbg !2947
  %134 = load i8, ptr %133, align 1, !dbg !2947, !tbaa !883
  store i8 %134, ptr %131, align 1, !dbg !2947, !tbaa !883
  store i8 %132, ptr %133, align 1, !dbg !2947, !tbaa !883
  call void @llvm.dbg.value(metadata i64 1, metadata !2923, metadata !DIExpression()), !dbg !2945
  %135 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 31, i64 13, !dbg !2947
  %136 = load i8, ptr %135, align 1, !dbg !2947, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %136, metadata !2924, metadata !DIExpression()), !dbg !2948
  %137 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 31, i64 7, !dbg !2947
  %138 = load i8, ptr %137, align 1, !dbg !2947, !tbaa !883
  store i8 %138, ptr %135, align 1, !dbg !2947, !tbaa !883
  store i8 %136, ptr %137, align 1, !dbg !2947, !tbaa !883
  call void @llvm.dbg.value(metadata i64 2, metadata !2923, metadata !DIExpression()), !dbg !2945
  %139 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 31, i64 14, !dbg !2947
  %140 = load i8, ptr %139, align 1, !dbg !2947, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %140, metadata !2924, metadata !DIExpression()), !dbg !2948
  %141 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 31, i64 11, !dbg !2947
  %142 = load i8, ptr %141, align 1, !dbg !2947, !tbaa !883
  store i8 %142, ptr %139, align 1, !dbg !2947, !tbaa !883
  store i8 %140, ptr %141, align 1, !dbg !2947, !tbaa !883
  call void @llvm.dbg.value(metadata i64 3, metadata !2923, metadata !DIExpression()), !dbg !2945
  call void @llvm.dbg.value(metadata i64 4, metadata !2922, metadata !DIExpression()), !dbg !2945
  %143 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 32, !dbg !2949
  call void @llvm.dbg.value(metadata ptr %143, metadata !2916, metadata !DIExpression()), !dbg !2950
  call void @llvm.dbg.value(metadata i32 8, metadata !2921, metadata !DIExpression()), !dbg !2950
  call void @llvm.dbg.value(metadata i64 1, metadata !2922, metadata !DIExpression()), !dbg !2950
  call void @llvm.dbg.value(metadata i64 0, metadata !2923, metadata !DIExpression()), !dbg !2950
  %144 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 32, i64 8, !dbg !2952
  %145 = load i8, ptr %144, align 1, !dbg !2952, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %145, metadata !2924, metadata !DIExpression()), !dbg !2953
  %146 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 32, i64 1, !dbg !2952
  %147 = load i8, ptr %146, align 1, !dbg !2952, !tbaa !883
  store i8 %147, ptr %144, align 1, !dbg !2952, !tbaa !883
  store i8 %145, ptr %146, align 1, !dbg !2952, !tbaa !883
  call void @llvm.dbg.value(metadata i64 2, metadata !2922, metadata !DIExpression()), !dbg !2950
  %148 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 32, i64 16, !dbg !2952
  %149 = load i8, ptr %148, align 1, !dbg !2952, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %149, metadata !2924, metadata !DIExpression()), !dbg !2953
  %150 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 32, i64 2, !dbg !2952
  %151 = load i8, ptr %150, align 1, !dbg !2952, !tbaa !883
  store i8 %151, ptr %148, align 1, !dbg !2952, !tbaa !883
  store i8 %149, ptr %150, align 1, !dbg !2952, !tbaa !883
  call void @llvm.dbg.value(metadata i64 1, metadata !2923, metadata !DIExpression()), !dbg !2950
  %152 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 32, i64 17, !dbg !2952
  %153 = load i8, ptr %152, align 1, !dbg !2952, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %153, metadata !2924, metadata !DIExpression()), !dbg !2953
  %154 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 32, i64 10, !dbg !2952
  %155 = load i8, ptr %154, align 1, !dbg !2952, !tbaa !883
  store i8 %155, ptr %152, align 1, !dbg !2952, !tbaa !883
  store i8 %153, ptr %154, align 1, !dbg !2952, !tbaa !883
  call void @llvm.dbg.value(metadata i64 3, metadata !2922, metadata !DIExpression()), !dbg !2950
  call void @llvm.dbg.value(metadata i64 0, metadata !2923, metadata !DIExpression()), !dbg !2950
  %156 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 32, i64 24, !dbg !2952
  %157 = load i8, ptr %156, align 1, !dbg !2952, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %157, metadata !2924, metadata !DIExpression()), !dbg !2953
  %158 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 32, i64 3, !dbg !2952
  %159 = load i8, ptr %158, align 1, !dbg !2952, !tbaa !883
  store i8 %159, ptr %156, align 1, !dbg !2952, !tbaa !883
  store i8 %157, ptr %158, align 1, !dbg !2952, !tbaa !883
  call void @llvm.dbg.value(metadata i64 1, metadata !2923, metadata !DIExpression()), !dbg !2950
  %160 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 32, i64 25, !dbg !2952
  %161 = load i8, ptr %160, align 1, !dbg !2952, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %161, metadata !2924, metadata !DIExpression()), !dbg !2953
  %162 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 32, i64 11, !dbg !2952
  %163 = load i8, ptr %162, align 1, !dbg !2952, !tbaa !883
  store i8 %163, ptr %160, align 1, !dbg !2952, !tbaa !883
  store i8 %161, ptr %162, align 1, !dbg !2952, !tbaa !883
  call void @llvm.dbg.value(metadata i64 2, metadata !2923, metadata !DIExpression()), !dbg !2950
  %164 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 32, i64 26, !dbg !2952
  %165 = load i8, ptr %164, align 1, !dbg !2952, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %165, metadata !2924, metadata !DIExpression()), !dbg !2953
  %166 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 32, i64 19, !dbg !2952
  %167 = load i8, ptr %166, align 1, !dbg !2952, !tbaa !883
  store i8 %167, ptr %164, align 1, !dbg !2952, !tbaa !883
  store i8 %165, ptr %166, align 1, !dbg !2952, !tbaa !883
  call void @llvm.dbg.value(metadata i64 4, metadata !2922, metadata !DIExpression()), !dbg !2950
  call void @llvm.dbg.value(metadata i64 0, metadata !2923, metadata !DIExpression()), !dbg !2950
  %168 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 32, i64 32, !dbg !2952
  %169 = load i8, ptr %168, align 1, !dbg !2952, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %169, metadata !2924, metadata !DIExpression()), !dbg !2953
  %170 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 32, i64 4, !dbg !2952
  %171 = load i8, ptr %170, align 1, !dbg !2952, !tbaa !883
  store i8 %171, ptr %168, align 1, !dbg !2952, !tbaa !883
  store i8 %169, ptr %170, align 1, !dbg !2952, !tbaa !883
  call void @llvm.dbg.value(metadata i64 1, metadata !2923, metadata !DIExpression()), !dbg !2950
  %172 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 32, i64 33, !dbg !2952
  %173 = load i8, ptr %172, align 1, !dbg !2952, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %173, metadata !2924, metadata !DIExpression()), !dbg !2953
  %174 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 32, i64 12, !dbg !2952
  %175 = load i8, ptr %174, align 1, !dbg !2952, !tbaa !883
  store i8 %175, ptr %172, align 1, !dbg !2952, !tbaa !883
  store i8 %173, ptr %174, align 1, !dbg !2952, !tbaa !883
  call void @llvm.dbg.value(metadata i64 2, metadata !2923, metadata !DIExpression()), !dbg !2950
  %176 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 32, i64 34, !dbg !2952
  %177 = load i8, ptr %176, align 1, !dbg !2952, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %177, metadata !2924, metadata !DIExpression()), !dbg !2953
  %178 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 32, i64 20, !dbg !2952
  %179 = load i8, ptr %178, align 1, !dbg !2952, !tbaa !883
  store i8 %179, ptr %176, align 1, !dbg !2952, !tbaa !883
  store i8 %177, ptr %178, align 1, !dbg !2952, !tbaa !883
  call void @llvm.dbg.value(metadata i64 3, metadata !2923, metadata !DIExpression()), !dbg !2950
  %180 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 32, i64 35, !dbg !2952
  %181 = load i8, ptr %180, align 1, !dbg !2952, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %181, metadata !2924, metadata !DIExpression()), !dbg !2953
  %182 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 32, i64 28, !dbg !2952
  %183 = load i8, ptr %182, align 1, !dbg !2952, !tbaa !883
  store i8 %183, ptr %180, align 1, !dbg !2952, !tbaa !883
  store i8 %181, ptr %182, align 1, !dbg !2952, !tbaa !883
  call void @llvm.dbg.value(metadata i64 5, metadata !2922, metadata !DIExpression()), !dbg !2950
  call void @llvm.dbg.value(metadata i64 0, metadata !2923, metadata !DIExpression()), !dbg !2950
  %184 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 32, i64 40, !dbg !2952
  %185 = load i8, ptr %184, align 1, !dbg !2952, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %185, metadata !2924, metadata !DIExpression()), !dbg !2953
  %186 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 32, i64 5, !dbg !2952
  %187 = load i8, ptr %186, align 1, !dbg !2952, !tbaa !883
  store i8 %187, ptr %184, align 1, !dbg !2952, !tbaa !883
  store i8 %185, ptr %186, align 1, !dbg !2952, !tbaa !883
  call void @llvm.dbg.value(metadata i64 1, metadata !2923, metadata !DIExpression()), !dbg !2950
  %188 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 32, i64 41, !dbg !2952
  %189 = load i8, ptr %188, align 1, !dbg !2952, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %189, metadata !2924, metadata !DIExpression()), !dbg !2953
  %190 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 32, i64 13, !dbg !2952
  %191 = load i8, ptr %190, align 1, !dbg !2952, !tbaa !883
  store i8 %191, ptr %188, align 1, !dbg !2952, !tbaa !883
  store i8 %189, ptr %190, align 1, !dbg !2952, !tbaa !883
  call void @llvm.dbg.value(metadata i64 2, metadata !2923, metadata !DIExpression()), !dbg !2950
  %192 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 32, i64 42, !dbg !2952
  %193 = load i8, ptr %192, align 1, !dbg !2952, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %193, metadata !2924, metadata !DIExpression()), !dbg !2953
  %194 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 32, i64 21, !dbg !2952
  %195 = load i8, ptr %194, align 1, !dbg !2952, !tbaa !883
  store i8 %195, ptr %192, align 1, !dbg !2952, !tbaa !883
  store i8 %193, ptr %194, align 1, !dbg !2952, !tbaa !883
  call void @llvm.dbg.value(metadata i64 3, metadata !2923, metadata !DIExpression()), !dbg !2950
  %196 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 32, i64 43, !dbg !2952
  %197 = load i8, ptr %196, align 1, !dbg !2952, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %197, metadata !2924, metadata !DIExpression()), !dbg !2953
  %198 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 32, i64 29, !dbg !2952
  %199 = load i8, ptr %198, align 1, !dbg !2952, !tbaa !883
  store i8 %199, ptr %196, align 1, !dbg !2952, !tbaa !883
  store i8 %197, ptr %198, align 1, !dbg !2952, !tbaa !883
  call void @llvm.dbg.value(metadata i64 4, metadata !2923, metadata !DIExpression()), !dbg !2950
  %200 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 32, i64 44, !dbg !2952
  %201 = load i8, ptr %200, align 1, !dbg !2952, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %201, metadata !2924, metadata !DIExpression()), !dbg !2953
  %202 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 32, i64 37, !dbg !2952
  %203 = load i8, ptr %202, align 1, !dbg !2952, !tbaa !883
  store i8 %203, ptr %200, align 1, !dbg !2952, !tbaa !883
  store i8 %201, ptr %202, align 1, !dbg !2952, !tbaa !883
  call void @llvm.dbg.value(metadata i64 6, metadata !2922, metadata !DIExpression()), !dbg !2950
  call void @llvm.dbg.value(metadata i64 0, metadata !2923, metadata !DIExpression()), !dbg !2950
  %204 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 32, i64 48, !dbg !2952
  %205 = load i8, ptr %204, align 1, !dbg !2952, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %205, metadata !2924, metadata !DIExpression()), !dbg !2953
  %206 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 32, i64 6, !dbg !2952
  %207 = load i8, ptr %206, align 1, !dbg !2952, !tbaa !883
  store i8 %207, ptr %204, align 1, !dbg !2952, !tbaa !883
  store i8 %205, ptr %206, align 1, !dbg !2952, !tbaa !883
  call void @llvm.dbg.value(metadata i64 1, metadata !2923, metadata !DIExpression()), !dbg !2950
  %208 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 32, i64 49, !dbg !2952
  %209 = load i8, ptr %208, align 1, !dbg !2952, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %209, metadata !2924, metadata !DIExpression()), !dbg !2953
  %210 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 32, i64 14, !dbg !2952
  %211 = load i8, ptr %210, align 1, !dbg !2952, !tbaa !883
  store i8 %211, ptr %208, align 1, !dbg !2952, !tbaa !883
  store i8 %209, ptr %210, align 1, !dbg !2952, !tbaa !883
  call void @llvm.dbg.value(metadata i64 2, metadata !2923, metadata !DIExpression()), !dbg !2950
  %212 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 32, i64 50, !dbg !2952
  %213 = load i8, ptr %212, align 1, !dbg !2952, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %213, metadata !2924, metadata !DIExpression()), !dbg !2953
  %214 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 32, i64 22, !dbg !2952
  %215 = load i8, ptr %214, align 1, !dbg !2952, !tbaa !883
  store i8 %215, ptr %212, align 1, !dbg !2952, !tbaa !883
  store i8 %213, ptr %214, align 1, !dbg !2952, !tbaa !883
  call void @llvm.dbg.value(metadata i64 3, metadata !2923, metadata !DIExpression()), !dbg !2950
  %216 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 32, i64 51, !dbg !2952
  %217 = load i8, ptr %216, align 1, !dbg !2952, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %217, metadata !2924, metadata !DIExpression()), !dbg !2953
  %218 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 32, i64 30, !dbg !2952
  %219 = load i8, ptr %218, align 1, !dbg !2952, !tbaa !883
  store i8 %219, ptr %216, align 1, !dbg !2952, !tbaa !883
  store i8 %217, ptr %218, align 1, !dbg !2952, !tbaa !883
  call void @llvm.dbg.value(metadata i64 4, metadata !2923, metadata !DIExpression()), !dbg !2950
  %220 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 32, i64 52, !dbg !2952
  %221 = load i8, ptr %220, align 1, !dbg !2952, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %221, metadata !2924, metadata !DIExpression()), !dbg !2953
  %222 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 32, i64 38, !dbg !2952
  %223 = load i8, ptr %222, align 1, !dbg !2952, !tbaa !883
  store i8 %223, ptr %220, align 1, !dbg !2952, !tbaa !883
  store i8 %221, ptr %222, align 1, !dbg !2952, !tbaa !883
  call void @llvm.dbg.value(metadata i64 5, metadata !2923, metadata !DIExpression()), !dbg !2950
  %224 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 32, i64 53, !dbg !2952
  %225 = load i8, ptr %224, align 1, !dbg !2952, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %225, metadata !2924, metadata !DIExpression()), !dbg !2953
  %226 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 32, i64 46, !dbg !2952
  %227 = load i8, ptr %226, align 1, !dbg !2952, !tbaa !883
  store i8 %227, ptr %224, align 1, !dbg !2952, !tbaa !883
  store i8 %225, ptr %226, align 1, !dbg !2952, !tbaa !883
  call void @llvm.dbg.value(metadata i64 7, metadata !2922, metadata !DIExpression()), !dbg !2950
  call void @llvm.dbg.value(metadata i64 0, metadata !2923, metadata !DIExpression()), !dbg !2950
  %228 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 32, i64 56, !dbg !2952
  %229 = load i8, ptr %228, align 1, !dbg !2952, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %229, metadata !2924, metadata !DIExpression()), !dbg !2953
  %230 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 32, i64 7, !dbg !2952
  %231 = load i8, ptr %230, align 1, !dbg !2952, !tbaa !883
  store i8 %231, ptr %228, align 1, !dbg !2952, !tbaa !883
  store i8 %229, ptr %230, align 1, !dbg !2952, !tbaa !883
  call void @llvm.dbg.value(metadata i64 1, metadata !2923, metadata !DIExpression()), !dbg !2950
  %232 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 32, i64 57, !dbg !2952
  %233 = load i8, ptr %232, align 1, !dbg !2952, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %233, metadata !2924, metadata !DIExpression()), !dbg !2953
  %234 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 32, i64 15, !dbg !2952
  %235 = load i8, ptr %234, align 1, !dbg !2952, !tbaa !883
  store i8 %235, ptr %232, align 1, !dbg !2952, !tbaa !883
  store i8 %233, ptr %234, align 1, !dbg !2952, !tbaa !883
  call void @llvm.dbg.value(metadata i64 2, metadata !2923, metadata !DIExpression()), !dbg !2950
  %236 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 32, i64 58, !dbg !2952
  %237 = load i8, ptr %236, align 1, !dbg !2952, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %237, metadata !2924, metadata !DIExpression()), !dbg !2953
  %238 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 32, i64 23, !dbg !2952
  %239 = load i8, ptr %238, align 1, !dbg !2952, !tbaa !883
  store i8 %239, ptr %236, align 1, !dbg !2952, !tbaa !883
  store i8 %237, ptr %238, align 1, !dbg !2952, !tbaa !883
  call void @llvm.dbg.value(metadata i64 3, metadata !2923, metadata !DIExpression()), !dbg !2950
  %240 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 32, i64 59, !dbg !2952
  %241 = load i8, ptr %240, align 1, !dbg !2952, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %241, metadata !2924, metadata !DIExpression()), !dbg !2953
  %242 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 32, i64 31, !dbg !2952
  %243 = load i8, ptr %242, align 1, !dbg !2952, !tbaa !883
  store i8 %243, ptr %240, align 1, !dbg !2952, !tbaa !883
  store i8 %241, ptr %242, align 1, !dbg !2952, !tbaa !883
  call void @llvm.dbg.value(metadata i64 4, metadata !2923, metadata !DIExpression()), !dbg !2950
  %244 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 32, i64 60, !dbg !2952
  %245 = load i8, ptr %244, align 1, !dbg !2952, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %245, metadata !2924, metadata !DIExpression()), !dbg !2953
  %246 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 32, i64 39, !dbg !2952
  %247 = load i8, ptr %246, align 1, !dbg !2952, !tbaa !883
  store i8 %247, ptr %244, align 1, !dbg !2952, !tbaa !883
  store i8 %245, ptr %246, align 1, !dbg !2952, !tbaa !883
  call void @llvm.dbg.value(metadata i64 5, metadata !2923, metadata !DIExpression()), !dbg !2950
  %248 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 32, i64 61, !dbg !2952
  %249 = load i8, ptr %248, align 1, !dbg !2952, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %249, metadata !2924, metadata !DIExpression()), !dbg !2953
  %250 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 32, i64 47, !dbg !2952
  %251 = load i8, ptr %250, align 1, !dbg !2952, !tbaa !883
  store i8 %251, ptr %248, align 1, !dbg !2952, !tbaa !883
  store i8 %249, ptr %250, align 1, !dbg !2952, !tbaa !883
  call void @llvm.dbg.value(metadata i64 6, metadata !2923, metadata !DIExpression()), !dbg !2950
  %252 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 32, i64 62, !dbg !2952
  %253 = load i8, ptr %252, align 1, !dbg !2952, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %253, metadata !2924, metadata !DIExpression()), !dbg !2953
  %254 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 32, i64 55, !dbg !2952
  %255 = load i8, ptr %254, align 1, !dbg !2952, !tbaa !883
  store i8 %255, ptr %252, align 1, !dbg !2952, !tbaa !883
  store i8 %253, ptr %254, align 1, !dbg !2952, !tbaa !883
  call void @llvm.dbg.value(metadata i64 7, metadata !2923, metadata !DIExpression()), !dbg !2950
  call void @llvm.dbg.value(metadata i64 8, metadata !2922, metadata !DIExpression()), !dbg !2950
  %256 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 33, !dbg !2954
  call void @llvm.dbg.value(metadata ptr %256, metadata !2916, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i32 8, metadata !2921, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i64 1, metadata !2922, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i64 0, metadata !2923, metadata !DIExpression()), !dbg !2955
  %257 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 33, i64 8, !dbg !2957
  %258 = load i8, ptr %257, align 1, !dbg !2957, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %258, metadata !2924, metadata !DIExpression()), !dbg !2958
  %259 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 33, i64 1, !dbg !2957
  %260 = load i8, ptr %259, align 1, !dbg !2957, !tbaa !883
  store i8 %260, ptr %257, align 1, !dbg !2957, !tbaa !883
  store i8 %258, ptr %259, align 1, !dbg !2957, !tbaa !883
  call void @llvm.dbg.value(metadata i64 2, metadata !2922, metadata !DIExpression()), !dbg !2955
  %261 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 33, i64 16, !dbg !2957
  %262 = load i8, ptr %261, align 1, !dbg !2957, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %262, metadata !2924, metadata !DIExpression()), !dbg !2958
  %263 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 33, i64 2, !dbg !2957
  %264 = load i8, ptr %263, align 1, !dbg !2957, !tbaa !883
  store i8 %264, ptr %261, align 1, !dbg !2957, !tbaa !883
  store i8 %262, ptr %263, align 1, !dbg !2957, !tbaa !883
  call void @llvm.dbg.value(metadata i64 1, metadata !2923, metadata !DIExpression()), !dbg !2955
  %265 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 33, i64 17, !dbg !2957
  %266 = load i8, ptr %265, align 1, !dbg !2957, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %266, metadata !2924, metadata !DIExpression()), !dbg !2958
  %267 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 33, i64 10, !dbg !2957
  %268 = load i8, ptr %267, align 1, !dbg !2957, !tbaa !883
  store i8 %268, ptr %265, align 1, !dbg !2957, !tbaa !883
  store i8 %266, ptr %267, align 1, !dbg !2957, !tbaa !883
  call void @llvm.dbg.value(metadata i64 3, metadata !2922, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i64 0, metadata !2923, metadata !DIExpression()), !dbg !2955
  %269 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 33, i64 24, !dbg !2957
  %270 = load i8, ptr %269, align 1, !dbg !2957, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %270, metadata !2924, metadata !DIExpression()), !dbg !2958
  %271 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 33, i64 3, !dbg !2957
  %272 = load i8, ptr %271, align 1, !dbg !2957, !tbaa !883
  store i8 %272, ptr %269, align 1, !dbg !2957, !tbaa !883
  store i8 %270, ptr %271, align 1, !dbg !2957, !tbaa !883
  call void @llvm.dbg.value(metadata i64 1, metadata !2923, metadata !DIExpression()), !dbg !2955
  %273 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 33, i64 25, !dbg !2957
  %274 = load i8, ptr %273, align 1, !dbg !2957, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %274, metadata !2924, metadata !DIExpression()), !dbg !2958
  %275 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 33, i64 11, !dbg !2957
  %276 = load i8, ptr %275, align 1, !dbg !2957, !tbaa !883
  store i8 %276, ptr %273, align 1, !dbg !2957, !tbaa !883
  store i8 %274, ptr %275, align 1, !dbg !2957, !tbaa !883
  call void @llvm.dbg.value(metadata i64 2, metadata !2923, metadata !DIExpression()), !dbg !2955
  %277 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 33, i64 26, !dbg !2957
  %278 = load i8, ptr %277, align 1, !dbg !2957, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %278, metadata !2924, metadata !DIExpression()), !dbg !2958
  %279 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 33, i64 19, !dbg !2957
  %280 = load i8, ptr %279, align 1, !dbg !2957, !tbaa !883
  store i8 %280, ptr %277, align 1, !dbg !2957, !tbaa !883
  store i8 %278, ptr %279, align 1, !dbg !2957, !tbaa !883
  call void @llvm.dbg.value(metadata i64 4, metadata !2922, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i64 0, metadata !2923, metadata !DIExpression()), !dbg !2955
  %281 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 33, i64 32, !dbg !2957
  %282 = load i8, ptr %281, align 1, !dbg !2957, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %282, metadata !2924, metadata !DIExpression()), !dbg !2958
  %283 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 33, i64 4, !dbg !2957
  %284 = load i8, ptr %283, align 1, !dbg !2957, !tbaa !883
  store i8 %284, ptr %281, align 1, !dbg !2957, !tbaa !883
  store i8 %282, ptr %283, align 1, !dbg !2957, !tbaa !883
  call void @llvm.dbg.value(metadata i64 1, metadata !2923, metadata !DIExpression()), !dbg !2955
  %285 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 33, i64 33, !dbg !2957
  %286 = load i8, ptr %285, align 1, !dbg !2957, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %286, metadata !2924, metadata !DIExpression()), !dbg !2958
  %287 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 33, i64 12, !dbg !2957
  %288 = load i8, ptr %287, align 1, !dbg !2957, !tbaa !883
  store i8 %288, ptr %285, align 1, !dbg !2957, !tbaa !883
  store i8 %286, ptr %287, align 1, !dbg !2957, !tbaa !883
  call void @llvm.dbg.value(metadata i64 2, metadata !2923, metadata !DIExpression()), !dbg !2955
  %289 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 33, i64 34, !dbg !2957
  %290 = load i8, ptr %289, align 1, !dbg !2957, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %290, metadata !2924, metadata !DIExpression()), !dbg !2958
  %291 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 33, i64 20, !dbg !2957
  %292 = load i8, ptr %291, align 1, !dbg !2957, !tbaa !883
  store i8 %292, ptr %289, align 1, !dbg !2957, !tbaa !883
  store i8 %290, ptr %291, align 1, !dbg !2957, !tbaa !883
  call void @llvm.dbg.value(metadata i64 3, metadata !2923, metadata !DIExpression()), !dbg !2955
  %293 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 33, i64 35, !dbg !2957
  %294 = load i8, ptr %293, align 1, !dbg !2957, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %294, metadata !2924, metadata !DIExpression()), !dbg !2958
  %295 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 33, i64 28, !dbg !2957
  %296 = load i8, ptr %295, align 1, !dbg !2957, !tbaa !883
  store i8 %296, ptr %293, align 1, !dbg !2957, !tbaa !883
  store i8 %294, ptr %295, align 1, !dbg !2957, !tbaa !883
  call void @llvm.dbg.value(metadata i64 5, metadata !2922, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i64 0, metadata !2923, metadata !DIExpression()), !dbg !2955
  %297 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 33, i64 40, !dbg !2957
  %298 = load i8, ptr %297, align 1, !dbg !2957, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %298, metadata !2924, metadata !DIExpression()), !dbg !2958
  %299 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 33, i64 5, !dbg !2957
  %300 = load i8, ptr %299, align 1, !dbg !2957, !tbaa !883
  store i8 %300, ptr %297, align 1, !dbg !2957, !tbaa !883
  store i8 %298, ptr %299, align 1, !dbg !2957, !tbaa !883
  call void @llvm.dbg.value(metadata i64 1, metadata !2923, metadata !DIExpression()), !dbg !2955
  %301 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 33, i64 41, !dbg !2957
  %302 = load i8, ptr %301, align 1, !dbg !2957, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %302, metadata !2924, metadata !DIExpression()), !dbg !2958
  %303 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 33, i64 13, !dbg !2957
  %304 = load i8, ptr %303, align 1, !dbg !2957, !tbaa !883
  store i8 %304, ptr %301, align 1, !dbg !2957, !tbaa !883
  store i8 %302, ptr %303, align 1, !dbg !2957, !tbaa !883
  call void @llvm.dbg.value(metadata i64 2, metadata !2923, metadata !DIExpression()), !dbg !2955
  %305 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 33, i64 42, !dbg !2957
  %306 = load i8, ptr %305, align 1, !dbg !2957, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %306, metadata !2924, metadata !DIExpression()), !dbg !2958
  %307 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 33, i64 21, !dbg !2957
  %308 = load i8, ptr %307, align 1, !dbg !2957, !tbaa !883
  store i8 %308, ptr %305, align 1, !dbg !2957, !tbaa !883
  store i8 %306, ptr %307, align 1, !dbg !2957, !tbaa !883
  call void @llvm.dbg.value(metadata i64 3, metadata !2923, metadata !DIExpression()), !dbg !2955
  %309 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 33, i64 43, !dbg !2957
  %310 = load i8, ptr %309, align 1, !dbg !2957, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %310, metadata !2924, metadata !DIExpression()), !dbg !2958
  %311 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 33, i64 29, !dbg !2957
  %312 = load i8, ptr %311, align 1, !dbg !2957, !tbaa !883
  store i8 %312, ptr %309, align 1, !dbg !2957, !tbaa !883
  store i8 %310, ptr %311, align 1, !dbg !2957, !tbaa !883
  call void @llvm.dbg.value(metadata i64 4, metadata !2923, metadata !DIExpression()), !dbg !2955
  %313 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 33, i64 44, !dbg !2957
  %314 = load i8, ptr %313, align 1, !dbg !2957, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %314, metadata !2924, metadata !DIExpression()), !dbg !2958
  %315 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 33, i64 37, !dbg !2957
  %316 = load i8, ptr %315, align 1, !dbg !2957, !tbaa !883
  store i8 %316, ptr %313, align 1, !dbg !2957, !tbaa !883
  store i8 %314, ptr %315, align 1, !dbg !2957, !tbaa !883
  call void @llvm.dbg.value(metadata i64 6, metadata !2922, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i64 0, metadata !2923, metadata !DIExpression()), !dbg !2955
  %317 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 33, i64 48, !dbg !2957
  %318 = load i8, ptr %317, align 1, !dbg !2957, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %318, metadata !2924, metadata !DIExpression()), !dbg !2958
  %319 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 33, i64 6, !dbg !2957
  %320 = load i8, ptr %319, align 1, !dbg !2957, !tbaa !883
  store i8 %320, ptr %317, align 1, !dbg !2957, !tbaa !883
  store i8 %318, ptr %319, align 1, !dbg !2957, !tbaa !883
  call void @llvm.dbg.value(metadata i64 1, metadata !2923, metadata !DIExpression()), !dbg !2955
  %321 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 33, i64 49, !dbg !2957
  %322 = load i8, ptr %321, align 1, !dbg !2957, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %322, metadata !2924, metadata !DIExpression()), !dbg !2958
  %323 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 33, i64 14, !dbg !2957
  %324 = load i8, ptr %323, align 1, !dbg !2957, !tbaa !883
  store i8 %324, ptr %321, align 1, !dbg !2957, !tbaa !883
  store i8 %322, ptr %323, align 1, !dbg !2957, !tbaa !883
  call void @llvm.dbg.value(metadata i64 2, metadata !2923, metadata !DIExpression()), !dbg !2955
  %325 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 33, i64 50, !dbg !2957
  %326 = load i8, ptr %325, align 1, !dbg !2957, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %326, metadata !2924, metadata !DIExpression()), !dbg !2958
  %327 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 33, i64 22, !dbg !2957
  %328 = load i8, ptr %327, align 1, !dbg !2957, !tbaa !883
  store i8 %328, ptr %325, align 1, !dbg !2957, !tbaa !883
  store i8 %326, ptr %327, align 1, !dbg !2957, !tbaa !883
  call void @llvm.dbg.value(metadata i64 3, metadata !2923, metadata !DIExpression()), !dbg !2955
  %329 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 33, i64 51, !dbg !2957
  %330 = load i8, ptr %329, align 1, !dbg !2957, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %330, metadata !2924, metadata !DIExpression()), !dbg !2958
  %331 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 33, i64 30, !dbg !2957
  %332 = load i8, ptr %331, align 1, !dbg !2957, !tbaa !883
  store i8 %332, ptr %329, align 1, !dbg !2957, !tbaa !883
  store i8 %330, ptr %331, align 1, !dbg !2957, !tbaa !883
  call void @llvm.dbg.value(metadata i64 4, metadata !2923, metadata !DIExpression()), !dbg !2955
  %333 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 33, i64 52, !dbg !2957
  %334 = load i8, ptr %333, align 1, !dbg !2957, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %334, metadata !2924, metadata !DIExpression()), !dbg !2958
  %335 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 33, i64 38, !dbg !2957
  %336 = load i8, ptr %335, align 1, !dbg !2957, !tbaa !883
  store i8 %336, ptr %333, align 1, !dbg !2957, !tbaa !883
  store i8 %334, ptr %335, align 1, !dbg !2957, !tbaa !883
  call void @llvm.dbg.value(metadata i64 5, metadata !2923, metadata !DIExpression()), !dbg !2955
  %337 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 33, i64 53, !dbg !2957
  %338 = load i8, ptr %337, align 1, !dbg !2957, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %338, metadata !2924, metadata !DIExpression()), !dbg !2958
  %339 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 33, i64 46, !dbg !2957
  %340 = load i8, ptr %339, align 1, !dbg !2957, !tbaa !883
  store i8 %340, ptr %337, align 1, !dbg !2957, !tbaa !883
  store i8 %338, ptr %339, align 1, !dbg !2957, !tbaa !883
  call void @llvm.dbg.value(metadata i64 7, metadata !2922, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i64 0, metadata !2923, metadata !DIExpression()), !dbg !2955
  %341 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 33, i64 56, !dbg !2957
  %342 = load i8, ptr %341, align 1, !dbg !2957, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %342, metadata !2924, metadata !DIExpression()), !dbg !2958
  %343 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 33, i64 7, !dbg !2957
  %344 = load i8, ptr %343, align 1, !dbg !2957, !tbaa !883
  store i8 %344, ptr %341, align 1, !dbg !2957, !tbaa !883
  store i8 %342, ptr %343, align 1, !dbg !2957, !tbaa !883
  call void @llvm.dbg.value(metadata i64 1, metadata !2923, metadata !DIExpression()), !dbg !2955
  %345 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 33, i64 57, !dbg !2957
  %346 = load i8, ptr %345, align 1, !dbg !2957, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %346, metadata !2924, metadata !DIExpression()), !dbg !2958
  %347 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 33, i64 15, !dbg !2957
  %348 = load i8, ptr %347, align 1, !dbg !2957, !tbaa !883
  store i8 %348, ptr %345, align 1, !dbg !2957, !tbaa !883
  store i8 %346, ptr %347, align 1, !dbg !2957, !tbaa !883
  call void @llvm.dbg.value(metadata i64 2, metadata !2923, metadata !DIExpression()), !dbg !2955
  %349 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 33, i64 58, !dbg !2957
  %350 = load i8, ptr %349, align 1, !dbg !2957, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %350, metadata !2924, metadata !DIExpression()), !dbg !2958
  %351 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 33, i64 23, !dbg !2957
  %352 = load i8, ptr %351, align 1, !dbg !2957, !tbaa !883
  store i8 %352, ptr %349, align 1, !dbg !2957, !tbaa !883
  store i8 %350, ptr %351, align 1, !dbg !2957, !tbaa !883
  call void @llvm.dbg.value(metadata i64 3, metadata !2923, metadata !DIExpression()), !dbg !2955
  %353 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 33, i64 59, !dbg !2957
  %354 = load i8, ptr %353, align 1, !dbg !2957, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %354, metadata !2924, metadata !DIExpression()), !dbg !2958
  %355 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 33, i64 31, !dbg !2957
  %356 = load i8, ptr %355, align 1, !dbg !2957, !tbaa !883
  store i8 %356, ptr %353, align 1, !dbg !2957, !tbaa !883
  store i8 %354, ptr %355, align 1, !dbg !2957, !tbaa !883
  call void @llvm.dbg.value(metadata i64 4, metadata !2923, metadata !DIExpression()), !dbg !2955
  %357 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 33, i64 60, !dbg !2957
  %358 = load i8, ptr %357, align 1, !dbg !2957, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %358, metadata !2924, metadata !DIExpression()), !dbg !2958
  %359 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 33, i64 39, !dbg !2957
  %360 = load i8, ptr %359, align 1, !dbg !2957, !tbaa !883
  store i8 %360, ptr %357, align 1, !dbg !2957, !tbaa !883
  store i8 %358, ptr %359, align 1, !dbg !2957, !tbaa !883
  call void @llvm.dbg.value(metadata i64 5, metadata !2923, metadata !DIExpression()), !dbg !2955
  %361 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 33, i64 61, !dbg !2957
  %362 = load i8, ptr %361, align 1, !dbg !2957, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %362, metadata !2924, metadata !DIExpression()), !dbg !2958
  %363 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 33, i64 47, !dbg !2957
  %364 = load i8, ptr %363, align 1, !dbg !2957, !tbaa !883
  store i8 %364, ptr %361, align 1, !dbg !2957, !tbaa !883
  store i8 %362, ptr %363, align 1, !dbg !2957, !tbaa !883
  call void @llvm.dbg.value(metadata i64 6, metadata !2923, metadata !DIExpression()), !dbg !2955
  %365 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 33, i64 62, !dbg !2957
  %366 = load i8, ptr %365, align 1, !dbg !2957, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %366, metadata !2924, metadata !DIExpression()), !dbg !2958
  %367 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 33, i64 55, !dbg !2957
  %368 = load i8, ptr %367, align 1, !dbg !2957, !tbaa !883
  store i8 %368, ptr %365, align 1, !dbg !2957, !tbaa !883
  store i8 %366, ptr %367, align 1, !dbg !2957, !tbaa !883
  call void @llvm.dbg.value(metadata i64 7, metadata !2923, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i64 8, metadata !2922, metadata !DIExpression()), !dbg !2955
  %369 = getelementptr inbounds %struct.x264_pps_t, ptr %0, i64 0, i32 17, !dbg !2959
  store ptr %43, ptr %369, align 8, !dbg !2960, !tbaa !2961
  %370 = getelementptr inbounds %struct.x264_pps_t, ptr %0, i64 0, i32 17, i64 2, !dbg !2962
  store ptr %68, ptr %370, align 8, !dbg !2963, !tbaa !2961
  %371 = getelementptr inbounds %struct.x264_pps_t, ptr %0, i64 0, i32 17, i64 1, !dbg !2964
  store ptr %93, ptr %371, align 8, !dbg !2965, !tbaa !2961
  %372 = getelementptr inbounds %struct.x264_pps_t, ptr %0, i64 0, i32 17, i64 3, !dbg !2966
  store ptr %118, ptr %372, align 8, !dbg !2967, !tbaa !2961
  %373 = getelementptr inbounds %struct.x264_pps_t, ptr %0, i64 0, i32 17, i64 4, !dbg !2968
  store ptr %143, ptr %373, align 8, !dbg !2969, !tbaa !2961
  %374 = getelementptr inbounds %struct.x264_pps_t, ptr %0, i64 0, i32 17, i64 5, !dbg !2970
  store ptr %256, ptr %374, align 8, !dbg !2971, !tbaa !2961
  call void @llvm.dbg.value(metadata i64 0, metadata !2853, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 0, metadata !2854, metadata !DIExpression()), !dbg !2855
  %375 = load i8, ptr %43, align 1, !dbg !2972, !tbaa !883
  %376 = icmp eq i8 %375, 0, !dbg !2978
  br i1 %376, label %377, label %378, !dbg !2979

377:                                              ; preds = %42
  store ptr @x264_cqm_jvt4i, ptr %369, align 8, !dbg !2980, !tbaa !2961
  br label %378, !dbg !2981

378:                                              ; preds = %42, %377
  %379 = phi ptr [ %43, %42 ], [ @x264_cqm_jvt4i, %377 ]
  call void @llvm.dbg.value(metadata i64 1, metadata !2854, metadata !DIExpression()), !dbg !2855
  %380 = getelementptr inbounds i8, ptr %379, i64 1, !dbg !2972
  %381 = load i8, ptr %380, align 1, !dbg !2972, !tbaa !883
  %382 = icmp eq i8 %381, 0, !dbg !2978
  br i1 %382, label %383, label %384, !dbg !2979

383:                                              ; preds = %378
  store ptr @x264_cqm_jvt4i, ptr %369, align 8, !dbg !2980, !tbaa !2961
  br label %384, !dbg !2981

384:                                              ; preds = %383, %378
  %385 = phi ptr [ %379, %378 ], [ @x264_cqm_jvt4i, %383 ]
  call void @llvm.dbg.value(metadata i64 2, metadata !2854, metadata !DIExpression()), !dbg !2855
  %386 = getelementptr inbounds i8, ptr %385, i64 2, !dbg !2972
  %387 = load i8, ptr %386, align 1, !dbg !2972, !tbaa !883
  %388 = icmp eq i8 %387, 0, !dbg !2978
  br i1 %388, label %389, label %390, !dbg !2979

389:                                              ; preds = %384
  store ptr @x264_cqm_jvt4i, ptr %369, align 8, !dbg !2980, !tbaa !2961
  br label %390, !dbg !2981

390:                                              ; preds = %389, %384
  %391 = phi ptr [ %385, %384 ], [ @x264_cqm_jvt4i, %389 ]
  call void @llvm.dbg.value(metadata i64 3, metadata !2854, metadata !DIExpression()), !dbg !2855
  %392 = getelementptr inbounds i8, ptr %391, i64 3, !dbg !2972
  %393 = load i8, ptr %392, align 1, !dbg !2972, !tbaa !883
  %394 = icmp eq i8 %393, 0, !dbg !2978
  br i1 %394, label %395, label %396, !dbg !2979

395:                                              ; preds = %390
  store ptr @x264_cqm_jvt4i, ptr %369, align 8, !dbg !2980, !tbaa !2961
  br label %396, !dbg !2981

396:                                              ; preds = %395, %390
  %397 = phi ptr [ %391, %390 ], [ @x264_cqm_jvt4i, %395 ]
  call void @llvm.dbg.value(metadata i64 4, metadata !2854, metadata !DIExpression()), !dbg !2855
  %398 = getelementptr inbounds i8, ptr %397, i64 4, !dbg !2972
  %399 = load i8, ptr %398, align 1, !dbg !2972, !tbaa !883
  %400 = icmp eq i8 %399, 0, !dbg !2978
  br i1 %400, label %401, label %402, !dbg !2979

401:                                              ; preds = %396
  store ptr @x264_cqm_jvt4i, ptr %369, align 8, !dbg !2980, !tbaa !2961
  br label %402, !dbg !2981

402:                                              ; preds = %401, %396
  %403 = phi ptr [ %397, %396 ], [ @x264_cqm_jvt4i, %401 ]
  call void @llvm.dbg.value(metadata i64 5, metadata !2854, metadata !DIExpression()), !dbg !2855
  %404 = getelementptr inbounds i8, ptr %403, i64 5, !dbg !2972
  %405 = load i8, ptr %404, align 1, !dbg !2972, !tbaa !883
  %406 = icmp eq i8 %405, 0, !dbg !2978
  br i1 %406, label %407, label %408, !dbg !2979

407:                                              ; preds = %402
  store ptr @x264_cqm_jvt4i, ptr %369, align 8, !dbg !2980, !tbaa !2961
  br label %408, !dbg !2981

408:                                              ; preds = %407, %402
  %409 = phi ptr [ %403, %402 ], [ @x264_cqm_jvt4i, %407 ]
  call void @llvm.dbg.value(metadata i64 6, metadata !2854, metadata !DIExpression()), !dbg !2855
  %410 = getelementptr inbounds i8, ptr %409, i64 6, !dbg !2972
  %411 = load i8, ptr %410, align 1, !dbg !2972, !tbaa !883
  %412 = icmp eq i8 %411, 0, !dbg !2978
  br i1 %412, label %413, label %414, !dbg !2979

413:                                              ; preds = %408
  store ptr @x264_cqm_jvt4i, ptr %369, align 8, !dbg !2980, !tbaa !2961
  br label %414, !dbg !2981

414:                                              ; preds = %413, %408
  %415 = phi ptr [ %409, %408 ], [ @x264_cqm_jvt4i, %413 ]
  call void @llvm.dbg.value(metadata i64 7, metadata !2854, metadata !DIExpression()), !dbg !2855
  %416 = getelementptr inbounds i8, ptr %415, i64 7, !dbg !2972
  %417 = load i8, ptr %416, align 1, !dbg !2972, !tbaa !883
  %418 = icmp eq i8 %417, 0, !dbg !2978
  br i1 %418, label %419, label %420, !dbg !2979

419:                                              ; preds = %414
  store ptr @x264_cqm_jvt4i, ptr %369, align 8, !dbg !2980, !tbaa !2961
  br label %420, !dbg !2981

420:                                              ; preds = %419, %414
  %421 = phi ptr [ %415, %414 ], [ @x264_cqm_jvt4i, %419 ]
  call void @llvm.dbg.value(metadata i64 8, metadata !2854, metadata !DIExpression()), !dbg !2855
  %422 = getelementptr inbounds i8, ptr %421, i64 8, !dbg !2972
  %423 = load i8, ptr %422, align 1, !dbg !2972, !tbaa !883
  %424 = icmp eq i8 %423, 0, !dbg !2978
  br i1 %424, label %425, label %426, !dbg !2979

425:                                              ; preds = %420
  store ptr @x264_cqm_jvt4i, ptr %369, align 8, !dbg !2980, !tbaa !2961
  br label %426, !dbg !2981

426:                                              ; preds = %425, %420
  %427 = phi ptr [ %421, %420 ], [ @x264_cqm_jvt4i, %425 ]
  call void @llvm.dbg.value(metadata i64 9, metadata !2854, metadata !DIExpression()), !dbg !2855
  %428 = getelementptr inbounds i8, ptr %427, i64 9, !dbg !2972
  %429 = load i8, ptr %428, align 1, !dbg !2972, !tbaa !883
  %430 = icmp eq i8 %429, 0, !dbg !2978
  br i1 %430, label %431, label %432, !dbg !2979

431:                                              ; preds = %426
  store ptr @x264_cqm_jvt4i, ptr %369, align 8, !dbg !2980, !tbaa !2961
  br label %432, !dbg !2981

432:                                              ; preds = %431, %426
  %433 = phi ptr [ %427, %426 ], [ @x264_cqm_jvt4i, %431 ]
  call void @llvm.dbg.value(metadata i64 10, metadata !2854, metadata !DIExpression()), !dbg !2855
  %434 = getelementptr inbounds i8, ptr %433, i64 10, !dbg !2972
  %435 = load i8, ptr %434, align 1, !dbg !2972, !tbaa !883
  %436 = icmp eq i8 %435, 0, !dbg !2978
  br i1 %436, label %437, label %438, !dbg !2979

437:                                              ; preds = %432
  store ptr @x264_cqm_jvt4i, ptr %369, align 8, !dbg !2980, !tbaa !2961
  br label %438, !dbg !2981

438:                                              ; preds = %437, %432
  %439 = phi ptr [ %433, %432 ], [ @x264_cqm_jvt4i, %437 ]
  call void @llvm.dbg.value(metadata i64 11, metadata !2854, metadata !DIExpression()), !dbg !2855
  %440 = getelementptr inbounds i8, ptr %439, i64 11, !dbg !2972
  %441 = load i8, ptr %440, align 1, !dbg !2972, !tbaa !883
  %442 = icmp eq i8 %441, 0, !dbg !2978
  br i1 %442, label %443, label %444, !dbg !2979

443:                                              ; preds = %438
  store ptr @x264_cqm_jvt4i, ptr %369, align 8, !dbg !2980, !tbaa !2961
  br label %444, !dbg !2981

444:                                              ; preds = %443, %438
  %445 = phi ptr [ %439, %438 ], [ @x264_cqm_jvt4i, %443 ]
  call void @llvm.dbg.value(metadata i64 12, metadata !2854, metadata !DIExpression()), !dbg !2855
  %446 = getelementptr inbounds i8, ptr %445, i64 12, !dbg !2972
  %447 = load i8, ptr %446, align 1, !dbg !2972, !tbaa !883
  %448 = icmp eq i8 %447, 0, !dbg !2978
  br i1 %448, label %449, label %450, !dbg !2979

449:                                              ; preds = %444
  store ptr @x264_cqm_jvt4i, ptr %369, align 8, !dbg !2980, !tbaa !2961
  br label %450, !dbg !2981

450:                                              ; preds = %449, %444
  %451 = phi ptr [ %445, %444 ], [ @x264_cqm_jvt4i, %449 ]
  call void @llvm.dbg.value(metadata i64 13, metadata !2854, metadata !DIExpression()), !dbg !2855
  %452 = getelementptr inbounds i8, ptr %451, i64 13, !dbg !2972
  %453 = load i8, ptr %452, align 1, !dbg !2972, !tbaa !883
  %454 = icmp eq i8 %453, 0, !dbg !2978
  br i1 %454, label %455, label %456, !dbg !2979

455:                                              ; preds = %450
  store ptr @x264_cqm_jvt4i, ptr %369, align 8, !dbg !2980, !tbaa !2961
  br label %456, !dbg !2981

456:                                              ; preds = %455, %450
  %457 = phi ptr [ %451, %450 ], [ @x264_cqm_jvt4i, %455 ]
  call void @llvm.dbg.value(metadata i64 14, metadata !2854, metadata !DIExpression()), !dbg !2855
  %458 = getelementptr inbounds i8, ptr %457, i64 14, !dbg !2972
  %459 = load i8, ptr %458, align 1, !dbg !2972, !tbaa !883
  %460 = icmp eq i8 %459, 0, !dbg !2978
  br i1 %460, label %461, label %462, !dbg !2979

461:                                              ; preds = %456
  store ptr @x264_cqm_jvt4i, ptr %369, align 8, !dbg !2980, !tbaa !2961
  br label %462, !dbg !2981

462:                                              ; preds = %461, %456
  %463 = phi ptr [ %457, %456 ], [ @x264_cqm_jvt4i, %461 ]
  call void @llvm.dbg.value(metadata i64 15, metadata !2854, metadata !DIExpression()), !dbg !2855
  %464 = getelementptr inbounds i8, ptr %463, i64 15, !dbg !2972
  %465 = load i8, ptr %464, align 1, !dbg !2972, !tbaa !883
  %466 = icmp eq i8 %465, 0, !dbg !2978
  br i1 %466, label %467, label %468, !dbg !2979

467:                                              ; preds = %462
  store ptr @x264_cqm_jvt4i, ptr %369, align 8, !dbg !2980, !tbaa !2961
  br label %468, !dbg !2981

468:                                              ; preds = %467, %462
  call void @llvm.dbg.value(metadata i64 1, metadata !2853, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 0, metadata !2854, metadata !DIExpression()), !dbg !2855
  %469 = load i8, ptr %93, align 1, !dbg !2972, !tbaa !883
  %470 = icmp eq i8 %469, 0, !dbg !2978
  br i1 %470, label %471, label %472, !dbg !2979

471:                                              ; preds = %468
  store ptr @x264_cqm_jvt4p, ptr %371, align 8, !dbg !2980, !tbaa !2961
  br label %472, !dbg !2981

472:                                              ; preds = %471, %468
  %473 = phi ptr [ %93, %468 ], [ @x264_cqm_jvt4p, %471 ]
  call void @llvm.dbg.value(metadata i64 1, metadata !2854, metadata !DIExpression()), !dbg !2855
  %474 = getelementptr inbounds i8, ptr %473, i64 1, !dbg !2972
  %475 = load i8, ptr %474, align 1, !dbg !2972, !tbaa !883
  %476 = icmp eq i8 %475, 0, !dbg !2978
  br i1 %476, label %477, label %478, !dbg !2979

477:                                              ; preds = %472
  store ptr @x264_cqm_jvt4p, ptr %371, align 8, !dbg !2980, !tbaa !2961
  br label %478, !dbg !2981

478:                                              ; preds = %477, %472
  %479 = phi ptr [ %473, %472 ], [ @x264_cqm_jvt4p, %477 ]
  call void @llvm.dbg.value(metadata i64 2, metadata !2854, metadata !DIExpression()), !dbg !2855
  %480 = getelementptr inbounds i8, ptr %479, i64 2, !dbg !2972
  %481 = load i8, ptr %480, align 1, !dbg !2972, !tbaa !883
  %482 = icmp eq i8 %481, 0, !dbg !2978
  br i1 %482, label %483, label %484, !dbg !2979

483:                                              ; preds = %478
  store ptr @x264_cqm_jvt4p, ptr %371, align 8, !dbg !2980, !tbaa !2961
  br label %484, !dbg !2981

484:                                              ; preds = %483, %478
  %485 = phi ptr [ %479, %478 ], [ @x264_cqm_jvt4p, %483 ]
  call void @llvm.dbg.value(metadata i64 3, metadata !2854, metadata !DIExpression()), !dbg !2855
  %486 = getelementptr inbounds i8, ptr %485, i64 3, !dbg !2972
  %487 = load i8, ptr %486, align 1, !dbg !2972, !tbaa !883
  %488 = icmp eq i8 %487, 0, !dbg !2978
  br i1 %488, label %489, label %490, !dbg !2979

489:                                              ; preds = %484
  store ptr @x264_cqm_jvt4p, ptr %371, align 8, !dbg !2980, !tbaa !2961
  br label %490, !dbg !2981

490:                                              ; preds = %489, %484
  %491 = phi ptr [ %485, %484 ], [ @x264_cqm_jvt4p, %489 ]
  call void @llvm.dbg.value(metadata i64 4, metadata !2854, metadata !DIExpression()), !dbg !2855
  %492 = getelementptr inbounds i8, ptr %491, i64 4, !dbg !2972
  %493 = load i8, ptr %492, align 1, !dbg !2972, !tbaa !883
  %494 = icmp eq i8 %493, 0, !dbg !2978
  br i1 %494, label %495, label %496, !dbg !2979

495:                                              ; preds = %490
  store ptr @x264_cqm_jvt4p, ptr %371, align 8, !dbg !2980, !tbaa !2961
  br label %496, !dbg !2981

496:                                              ; preds = %495, %490
  %497 = phi ptr [ %491, %490 ], [ @x264_cqm_jvt4p, %495 ]
  call void @llvm.dbg.value(metadata i64 5, metadata !2854, metadata !DIExpression()), !dbg !2855
  %498 = getelementptr inbounds i8, ptr %497, i64 5, !dbg !2972
  %499 = load i8, ptr %498, align 1, !dbg !2972, !tbaa !883
  %500 = icmp eq i8 %499, 0, !dbg !2978
  br i1 %500, label %501, label %502, !dbg !2979

501:                                              ; preds = %496
  store ptr @x264_cqm_jvt4p, ptr %371, align 8, !dbg !2980, !tbaa !2961
  br label %502, !dbg !2981

502:                                              ; preds = %501, %496
  %503 = phi ptr [ %497, %496 ], [ @x264_cqm_jvt4p, %501 ]
  call void @llvm.dbg.value(metadata i64 6, metadata !2854, metadata !DIExpression()), !dbg !2855
  %504 = getelementptr inbounds i8, ptr %503, i64 6, !dbg !2972
  %505 = load i8, ptr %504, align 1, !dbg !2972, !tbaa !883
  %506 = icmp eq i8 %505, 0, !dbg !2978
  br i1 %506, label %507, label %508, !dbg !2979

507:                                              ; preds = %502
  store ptr @x264_cqm_jvt4p, ptr %371, align 8, !dbg !2980, !tbaa !2961
  br label %508, !dbg !2981

508:                                              ; preds = %507, %502
  %509 = phi ptr [ %503, %502 ], [ @x264_cqm_jvt4p, %507 ]
  call void @llvm.dbg.value(metadata i64 7, metadata !2854, metadata !DIExpression()), !dbg !2855
  %510 = getelementptr inbounds i8, ptr %509, i64 7, !dbg !2972
  %511 = load i8, ptr %510, align 1, !dbg !2972, !tbaa !883
  %512 = icmp eq i8 %511, 0, !dbg !2978
  br i1 %512, label %513, label %514, !dbg !2979

513:                                              ; preds = %508
  store ptr @x264_cqm_jvt4p, ptr %371, align 8, !dbg !2980, !tbaa !2961
  br label %514, !dbg !2981

514:                                              ; preds = %513, %508
  %515 = phi ptr [ %509, %508 ], [ @x264_cqm_jvt4p, %513 ]
  call void @llvm.dbg.value(metadata i64 8, metadata !2854, metadata !DIExpression()), !dbg !2855
  %516 = getelementptr inbounds i8, ptr %515, i64 8, !dbg !2972
  %517 = load i8, ptr %516, align 1, !dbg !2972, !tbaa !883
  %518 = icmp eq i8 %517, 0, !dbg !2978
  br i1 %518, label %519, label %520, !dbg !2979

519:                                              ; preds = %514
  store ptr @x264_cqm_jvt4p, ptr %371, align 8, !dbg !2980, !tbaa !2961
  br label %520, !dbg !2981

520:                                              ; preds = %519, %514
  %521 = phi ptr [ %515, %514 ], [ @x264_cqm_jvt4p, %519 ]
  call void @llvm.dbg.value(metadata i64 9, metadata !2854, metadata !DIExpression()), !dbg !2855
  %522 = getelementptr inbounds i8, ptr %521, i64 9, !dbg !2972
  %523 = load i8, ptr %522, align 1, !dbg !2972, !tbaa !883
  %524 = icmp eq i8 %523, 0, !dbg !2978
  br i1 %524, label %525, label %526, !dbg !2979

525:                                              ; preds = %520
  store ptr @x264_cqm_jvt4p, ptr %371, align 8, !dbg !2980, !tbaa !2961
  br label %526, !dbg !2981

526:                                              ; preds = %525, %520
  %527 = phi ptr [ %521, %520 ], [ @x264_cqm_jvt4p, %525 ]
  call void @llvm.dbg.value(metadata i64 10, metadata !2854, metadata !DIExpression()), !dbg !2855
  %528 = getelementptr inbounds i8, ptr %527, i64 10, !dbg !2972
  %529 = load i8, ptr %528, align 1, !dbg !2972, !tbaa !883
  %530 = icmp eq i8 %529, 0, !dbg !2978
  br i1 %530, label %531, label %532, !dbg !2979

531:                                              ; preds = %526
  store ptr @x264_cqm_jvt4p, ptr %371, align 8, !dbg !2980, !tbaa !2961
  br label %532, !dbg !2981

532:                                              ; preds = %531, %526
  %533 = phi ptr [ %527, %526 ], [ @x264_cqm_jvt4p, %531 ]
  call void @llvm.dbg.value(metadata i64 11, metadata !2854, metadata !DIExpression()), !dbg !2855
  %534 = getelementptr inbounds i8, ptr %533, i64 11, !dbg !2972
  %535 = load i8, ptr %534, align 1, !dbg !2972, !tbaa !883
  %536 = icmp eq i8 %535, 0, !dbg !2978
  br i1 %536, label %537, label %538, !dbg !2979

537:                                              ; preds = %532
  store ptr @x264_cqm_jvt4p, ptr %371, align 8, !dbg !2980, !tbaa !2961
  br label %538, !dbg !2981

538:                                              ; preds = %537, %532
  %539 = phi ptr [ %533, %532 ], [ @x264_cqm_jvt4p, %537 ]
  call void @llvm.dbg.value(metadata i64 12, metadata !2854, metadata !DIExpression()), !dbg !2855
  %540 = getelementptr inbounds i8, ptr %539, i64 12, !dbg !2972
  %541 = load i8, ptr %540, align 1, !dbg !2972, !tbaa !883
  %542 = icmp eq i8 %541, 0, !dbg !2978
  br i1 %542, label %543, label %544, !dbg !2979

543:                                              ; preds = %538
  store ptr @x264_cqm_jvt4p, ptr %371, align 8, !dbg !2980, !tbaa !2961
  br label %544, !dbg !2981

544:                                              ; preds = %543, %538
  %545 = phi ptr [ %539, %538 ], [ @x264_cqm_jvt4p, %543 ]
  call void @llvm.dbg.value(metadata i64 13, metadata !2854, metadata !DIExpression()), !dbg !2855
  %546 = getelementptr inbounds i8, ptr %545, i64 13, !dbg !2972
  %547 = load i8, ptr %546, align 1, !dbg !2972, !tbaa !883
  %548 = icmp eq i8 %547, 0, !dbg !2978
  br i1 %548, label %549, label %550, !dbg !2979

549:                                              ; preds = %544
  store ptr @x264_cqm_jvt4p, ptr %371, align 8, !dbg !2980, !tbaa !2961
  br label %550, !dbg !2981

550:                                              ; preds = %549, %544
  %551 = phi ptr [ %545, %544 ], [ @x264_cqm_jvt4p, %549 ]
  call void @llvm.dbg.value(metadata i64 14, metadata !2854, metadata !DIExpression()), !dbg !2855
  %552 = getelementptr inbounds i8, ptr %551, i64 14, !dbg !2972
  %553 = load i8, ptr %552, align 1, !dbg !2972, !tbaa !883
  %554 = icmp eq i8 %553, 0, !dbg !2978
  br i1 %554, label %555, label %556, !dbg !2979

555:                                              ; preds = %550
  store ptr @x264_cqm_jvt4p, ptr %371, align 8, !dbg !2980, !tbaa !2961
  br label %556, !dbg !2981

556:                                              ; preds = %555, %550
  %557 = phi ptr [ %551, %550 ], [ @x264_cqm_jvt4p, %555 ]
  call void @llvm.dbg.value(metadata i64 15, metadata !2854, metadata !DIExpression()), !dbg !2855
  %558 = getelementptr inbounds i8, ptr %557, i64 15, !dbg !2972
  %559 = load i8, ptr %558, align 1, !dbg !2972, !tbaa !883
  %560 = icmp eq i8 %559, 0, !dbg !2978
  br i1 %560, label %561, label %562, !dbg !2979

561:                                              ; preds = %556
  store ptr @x264_cqm_jvt4p, ptr %371, align 8, !dbg !2980, !tbaa !2961
  br label %562, !dbg !2981

562:                                              ; preds = %561, %556
  call void @llvm.dbg.value(metadata i64 2, metadata !2853, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 0, metadata !2854, metadata !DIExpression()), !dbg !2855
  %563 = load i8, ptr %68, align 1, !dbg !2972, !tbaa !883
  %564 = icmp eq i8 %563, 0, !dbg !2978
  br i1 %564, label %565, label %566, !dbg !2979

565:                                              ; preds = %562
  store ptr @x264_cqm_jvt4i, ptr %370, align 8, !dbg !2980, !tbaa !2961
  br label %566, !dbg !2981

566:                                              ; preds = %565, %562
  %567 = phi ptr [ %68, %562 ], [ @x264_cqm_jvt4i, %565 ]
  call void @llvm.dbg.value(metadata i64 1, metadata !2854, metadata !DIExpression()), !dbg !2855
  %568 = getelementptr inbounds i8, ptr %567, i64 1, !dbg !2972
  %569 = load i8, ptr %568, align 1, !dbg !2972, !tbaa !883
  %570 = icmp eq i8 %569, 0, !dbg !2978
  br i1 %570, label %571, label %572, !dbg !2979

571:                                              ; preds = %566
  store ptr @x264_cqm_jvt4i, ptr %370, align 8, !dbg !2980, !tbaa !2961
  br label %572, !dbg !2981

572:                                              ; preds = %571, %566
  %573 = phi ptr [ %567, %566 ], [ @x264_cqm_jvt4i, %571 ]
  call void @llvm.dbg.value(metadata i64 2, metadata !2854, metadata !DIExpression()), !dbg !2855
  %574 = getelementptr inbounds i8, ptr %573, i64 2, !dbg !2972
  %575 = load i8, ptr %574, align 1, !dbg !2972, !tbaa !883
  %576 = icmp eq i8 %575, 0, !dbg !2978
  br i1 %576, label %577, label %578, !dbg !2979

577:                                              ; preds = %572
  store ptr @x264_cqm_jvt4i, ptr %370, align 8, !dbg !2980, !tbaa !2961
  br label %578, !dbg !2981

578:                                              ; preds = %577, %572
  %579 = phi ptr [ %573, %572 ], [ @x264_cqm_jvt4i, %577 ]
  call void @llvm.dbg.value(metadata i64 3, metadata !2854, metadata !DIExpression()), !dbg !2855
  %580 = getelementptr inbounds i8, ptr %579, i64 3, !dbg !2972
  %581 = load i8, ptr %580, align 1, !dbg !2972, !tbaa !883
  %582 = icmp eq i8 %581, 0, !dbg !2978
  br i1 %582, label %583, label %584, !dbg !2979

583:                                              ; preds = %578
  store ptr @x264_cqm_jvt4i, ptr %370, align 8, !dbg !2980, !tbaa !2961
  br label %584, !dbg !2981

584:                                              ; preds = %583, %578
  %585 = phi ptr [ %579, %578 ], [ @x264_cqm_jvt4i, %583 ]
  call void @llvm.dbg.value(metadata i64 4, metadata !2854, metadata !DIExpression()), !dbg !2855
  %586 = getelementptr inbounds i8, ptr %585, i64 4, !dbg !2972
  %587 = load i8, ptr %586, align 1, !dbg !2972, !tbaa !883
  %588 = icmp eq i8 %587, 0, !dbg !2978
  br i1 %588, label %589, label %590, !dbg !2979

589:                                              ; preds = %584
  store ptr @x264_cqm_jvt4i, ptr %370, align 8, !dbg !2980, !tbaa !2961
  br label %590, !dbg !2981

590:                                              ; preds = %589, %584
  %591 = phi ptr [ %585, %584 ], [ @x264_cqm_jvt4i, %589 ]
  call void @llvm.dbg.value(metadata i64 5, metadata !2854, metadata !DIExpression()), !dbg !2855
  %592 = getelementptr inbounds i8, ptr %591, i64 5, !dbg !2972
  %593 = load i8, ptr %592, align 1, !dbg !2972, !tbaa !883
  %594 = icmp eq i8 %593, 0, !dbg !2978
  br i1 %594, label %595, label %596, !dbg !2979

595:                                              ; preds = %590
  store ptr @x264_cqm_jvt4i, ptr %370, align 8, !dbg !2980, !tbaa !2961
  br label %596, !dbg !2981

596:                                              ; preds = %595, %590
  %597 = phi ptr [ %591, %590 ], [ @x264_cqm_jvt4i, %595 ]
  call void @llvm.dbg.value(metadata i64 6, metadata !2854, metadata !DIExpression()), !dbg !2855
  %598 = getelementptr inbounds i8, ptr %597, i64 6, !dbg !2972
  %599 = load i8, ptr %598, align 1, !dbg !2972, !tbaa !883
  %600 = icmp eq i8 %599, 0, !dbg !2978
  br i1 %600, label %601, label %602, !dbg !2979

601:                                              ; preds = %596
  store ptr @x264_cqm_jvt4i, ptr %370, align 8, !dbg !2980, !tbaa !2961
  br label %602, !dbg !2981

602:                                              ; preds = %601, %596
  %603 = phi ptr [ %597, %596 ], [ @x264_cqm_jvt4i, %601 ]
  call void @llvm.dbg.value(metadata i64 7, metadata !2854, metadata !DIExpression()), !dbg !2855
  %604 = getelementptr inbounds i8, ptr %603, i64 7, !dbg !2972
  %605 = load i8, ptr %604, align 1, !dbg !2972, !tbaa !883
  %606 = icmp eq i8 %605, 0, !dbg !2978
  br i1 %606, label %607, label %608, !dbg !2979

607:                                              ; preds = %602
  store ptr @x264_cqm_jvt4i, ptr %370, align 8, !dbg !2980, !tbaa !2961
  br label %608, !dbg !2981

608:                                              ; preds = %607, %602
  %609 = phi ptr [ %603, %602 ], [ @x264_cqm_jvt4i, %607 ]
  call void @llvm.dbg.value(metadata i64 8, metadata !2854, metadata !DIExpression()), !dbg !2855
  %610 = getelementptr inbounds i8, ptr %609, i64 8, !dbg !2972
  %611 = load i8, ptr %610, align 1, !dbg !2972, !tbaa !883
  %612 = icmp eq i8 %611, 0, !dbg !2978
  br i1 %612, label %613, label %614, !dbg !2979

613:                                              ; preds = %608
  store ptr @x264_cqm_jvt4i, ptr %370, align 8, !dbg !2980, !tbaa !2961
  br label %614, !dbg !2981

614:                                              ; preds = %613, %608
  %615 = phi ptr [ %609, %608 ], [ @x264_cqm_jvt4i, %613 ]
  call void @llvm.dbg.value(metadata i64 9, metadata !2854, metadata !DIExpression()), !dbg !2855
  %616 = getelementptr inbounds i8, ptr %615, i64 9, !dbg !2972
  %617 = load i8, ptr %616, align 1, !dbg !2972, !tbaa !883
  %618 = icmp eq i8 %617, 0, !dbg !2978
  br i1 %618, label %619, label %620, !dbg !2979

619:                                              ; preds = %614
  store ptr @x264_cqm_jvt4i, ptr %370, align 8, !dbg !2980, !tbaa !2961
  br label %620, !dbg !2981

620:                                              ; preds = %619, %614
  %621 = phi ptr [ %615, %614 ], [ @x264_cqm_jvt4i, %619 ]
  call void @llvm.dbg.value(metadata i64 10, metadata !2854, metadata !DIExpression()), !dbg !2855
  %622 = getelementptr inbounds i8, ptr %621, i64 10, !dbg !2972
  %623 = load i8, ptr %622, align 1, !dbg !2972, !tbaa !883
  %624 = icmp eq i8 %623, 0, !dbg !2978
  br i1 %624, label %625, label %626, !dbg !2979

625:                                              ; preds = %620
  store ptr @x264_cqm_jvt4i, ptr %370, align 8, !dbg !2980, !tbaa !2961
  br label %626, !dbg !2981

626:                                              ; preds = %625, %620
  %627 = phi ptr [ %621, %620 ], [ @x264_cqm_jvt4i, %625 ]
  call void @llvm.dbg.value(metadata i64 11, metadata !2854, metadata !DIExpression()), !dbg !2855
  %628 = getelementptr inbounds i8, ptr %627, i64 11, !dbg !2972
  %629 = load i8, ptr %628, align 1, !dbg !2972, !tbaa !883
  %630 = icmp eq i8 %629, 0, !dbg !2978
  br i1 %630, label %631, label %632, !dbg !2979

631:                                              ; preds = %626
  store ptr @x264_cqm_jvt4i, ptr %370, align 8, !dbg !2980, !tbaa !2961
  br label %632, !dbg !2981

632:                                              ; preds = %631, %626
  %633 = phi ptr [ %627, %626 ], [ @x264_cqm_jvt4i, %631 ]
  call void @llvm.dbg.value(metadata i64 12, metadata !2854, metadata !DIExpression()), !dbg !2855
  %634 = getelementptr inbounds i8, ptr %633, i64 12, !dbg !2972
  %635 = load i8, ptr %634, align 1, !dbg !2972, !tbaa !883
  %636 = icmp eq i8 %635, 0, !dbg !2978
  br i1 %636, label %637, label %638, !dbg !2979

637:                                              ; preds = %632
  store ptr @x264_cqm_jvt4i, ptr %370, align 8, !dbg !2980, !tbaa !2961
  br label %638, !dbg !2981

638:                                              ; preds = %637, %632
  %639 = phi ptr [ %633, %632 ], [ @x264_cqm_jvt4i, %637 ]
  call void @llvm.dbg.value(metadata i64 13, metadata !2854, metadata !DIExpression()), !dbg !2855
  %640 = getelementptr inbounds i8, ptr %639, i64 13, !dbg !2972
  %641 = load i8, ptr %640, align 1, !dbg !2972, !tbaa !883
  %642 = icmp eq i8 %641, 0, !dbg !2978
  br i1 %642, label %643, label %644, !dbg !2979

643:                                              ; preds = %638
  store ptr @x264_cqm_jvt4i, ptr %370, align 8, !dbg !2980, !tbaa !2961
  br label %644, !dbg !2981

644:                                              ; preds = %643, %638
  %645 = phi ptr [ %639, %638 ], [ @x264_cqm_jvt4i, %643 ]
  call void @llvm.dbg.value(metadata i64 14, metadata !2854, metadata !DIExpression()), !dbg !2855
  %646 = getelementptr inbounds i8, ptr %645, i64 14, !dbg !2972
  %647 = load i8, ptr %646, align 1, !dbg !2972, !tbaa !883
  %648 = icmp eq i8 %647, 0, !dbg !2978
  br i1 %648, label %649, label %650, !dbg !2979

649:                                              ; preds = %644
  store ptr @x264_cqm_jvt4i, ptr %370, align 8, !dbg !2980, !tbaa !2961
  br label %650, !dbg !2981

650:                                              ; preds = %649, %644
  %651 = phi ptr [ %645, %644 ], [ @x264_cqm_jvt4i, %649 ]
  call void @llvm.dbg.value(metadata i64 15, metadata !2854, metadata !DIExpression()), !dbg !2855
  %652 = getelementptr inbounds i8, ptr %651, i64 15, !dbg !2972
  %653 = load i8, ptr %652, align 1, !dbg !2972, !tbaa !883
  %654 = icmp eq i8 %653, 0, !dbg !2978
  br i1 %654, label %655, label %656, !dbg !2979

655:                                              ; preds = %650
  store ptr @x264_cqm_jvt4i, ptr %370, align 8, !dbg !2980, !tbaa !2961
  br label %656, !dbg !2981

656:                                              ; preds = %655, %650
  call void @llvm.dbg.value(metadata i64 3, metadata !2853, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 0, metadata !2854, metadata !DIExpression()), !dbg !2855
  %657 = load i8, ptr %118, align 1, !dbg !2972, !tbaa !883
  %658 = icmp eq i8 %657, 0, !dbg !2978
  br i1 %658, label %659, label %660, !dbg !2979

659:                                              ; preds = %656
  store ptr @x264_cqm_jvt4p, ptr %372, align 8, !dbg !2980, !tbaa !2961
  br label %660, !dbg !2981

660:                                              ; preds = %659, %656
  %661 = phi ptr [ %118, %656 ], [ @x264_cqm_jvt4p, %659 ]
  call void @llvm.dbg.value(metadata i64 1, metadata !2854, metadata !DIExpression()), !dbg !2855
  %662 = getelementptr inbounds i8, ptr %661, i64 1, !dbg !2972
  %663 = load i8, ptr %662, align 1, !dbg !2972, !tbaa !883
  %664 = icmp eq i8 %663, 0, !dbg !2978
  br i1 %664, label %665, label %666, !dbg !2979

665:                                              ; preds = %660
  store ptr @x264_cqm_jvt4p, ptr %372, align 8, !dbg !2980, !tbaa !2961
  br label %666, !dbg !2981

666:                                              ; preds = %665, %660
  %667 = phi ptr [ %661, %660 ], [ @x264_cqm_jvt4p, %665 ]
  call void @llvm.dbg.value(metadata i64 2, metadata !2854, metadata !DIExpression()), !dbg !2855
  %668 = getelementptr inbounds i8, ptr %667, i64 2, !dbg !2972
  %669 = load i8, ptr %668, align 1, !dbg !2972, !tbaa !883
  %670 = icmp eq i8 %669, 0, !dbg !2978
  br i1 %670, label %671, label %672, !dbg !2979

671:                                              ; preds = %666
  store ptr @x264_cqm_jvt4p, ptr %372, align 8, !dbg !2980, !tbaa !2961
  br label %672, !dbg !2981

672:                                              ; preds = %671, %666
  %673 = phi ptr [ %667, %666 ], [ @x264_cqm_jvt4p, %671 ]
  call void @llvm.dbg.value(metadata i64 3, metadata !2854, metadata !DIExpression()), !dbg !2855
  %674 = getelementptr inbounds i8, ptr %673, i64 3, !dbg !2972
  %675 = load i8, ptr %674, align 1, !dbg !2972, !tbaa !883
  %676 = icmp eq i8 %675, 0, !dbg !2978
  br i1 %676, label %677, label %678, !dbg !2979

677:                                              ; preds = %672
  store ptr @x264_cqm_jvt4p, ptr %372, align 8, !dbg !2980, !tbaa !2961
  br label %678, !dbg !2981

678:                                              ; preds = %677, %672
  %679 = phi ptr [ %673, %672 ], [ @x264_cqm_jvt4p, %677 ]
  call void @llvm.dbg.value(metadata i64 4, metadata !2854, metadata !DIExpression()), !dbg !2855
  %680 = getelementptr inbounds i8, ptr %679, i64 4, !dbg !2972
  %681 = load i8, ptr %680, align 1, !dbg !2972, !tbaa !883
  %682 = icmp eq i8 %681, 0, !dbg !2978
  br i1 %682, label %683, label %684, !dbg !2979

683:                                              ; preds = %678
  store ptr @x264_cqm_jvt4p, ptr %372, align 8, !dbg !2980, !tbaa !2961
  br label %684, !dbg !2981

684:                                              ; preds = %683, %678
  %685 = phi ptr [ %679, %678 ], [ @x264_cqm_jvt4p, %683 ]
  call void @llvm.dbg.value(metadata i64 5, metadata !2854, metadata !DIExpression()), !dbg !2855
  %686 = getelementptr inbounds i8, ptr %685, i64 5, !dbg !2972
  %687 = load i8, ptr %686, align 1, !dbg !2972, !tbaa !883
  %688 = icmp eq i8 %687, 0, !dbg !2978
  br i1 %688, label %689, label %690, !dbg !2979

689:                                              ; preds = %684
  store ptr @x264_cqm_jvt4p, ptr %372, align 8, !dbg !2980, !tbaa !2961
  br label %690, !dbg !2981

690:                                              ; preds = %689, %684
  %691 = phi ptr [ %685, %684 ], [ @x264_cqm_jvt4p, %689 ]
  call void @llvm.dbg.value(metadata i64 6, metadata !2854, metadata !DIExpression()), !dbg !2855
  %692 = getelementptr inbounds i8, ptr %691, i64 6, !dbg !2972
  %693 = load i8, ptr %692, align 1, !dbg !2972, !tbaa !883
  %694 = icmp eq i8 %693, 0, !dbg !2978
  br i1 %694, label %695, label %696, !dbg !2979

695:                                              ; preds = %690
  store ptr @x264_cqm_jvt4p, ptr %372, align 8, !dbg !2980, !tbaa !2961
  br label %696, !dbg !2981

696:                                              ; preds = %695, %690
  %697 = phi ptr [ %691, %690 ], [ @x264_cqm_jvt4p, %695 ]
  call void @llvm.dbg.value(metadata i64 7, metadata !2854, metadata !DIExpression()), !dbg !2855
  %698 = getelementptr inbounds i8, ptr %697, i64 7, !dbg !2972
  %699 = load i8, ptr %698, align 1, !dbg !2972, !tbaa !883
  %700 = icmp eq i8 %699, 0, !dbg !2978
  br i1 %700, label %701, label %702, !dbg !2979

701:                                              ; preds = %696
  store ptr @x264_cqm_jvt4p, ptr %372, align 8, !dbg !2980, !tbaa !2961
  br label %702, !dbg !2981

702:                                              ; preds = %701, %696
  %703 = phi ptr [ %697, %696 ], [ @x264_cqm_jvt4p, %701 ]
  call void @llvm.dbg.value(metadata i64 8, metadata !2854, metadata !DIExpression()), !dbg !2855
  %704 = getelementptr inbounds i8, ptr %703, i64 8, !dbg !2972
  %705 = load i8, ptr %704, align 1, !dbg !2972, !tbaa !883
  %706 = icmp eq i8 %705, 0, !dbg !2978
  br i1 %706, label %707, label %708, !dbg !2979

707:                                              ; preds = %702
  store ptr @x264_cqm_jvt4p, ptr %372, align 8, !dbg !2980, !tbaa !2961
  br label %708, !dbg !2981

708:                                              ; preds = %707, %702
  %709 = phi ptr [ %703, %702 ], [ @x264_cqm_jvt4p, %707 ]
  call void @llvm.dbg.value(metadata i64 9, metadata !2854, metadata !DIExpression()), !dbg !2855
  %710 = getelementptr inbounds i8, ptr %709, i64 9, !dbg !2972
  %711 = load i8, ptr %710, align 1, !dbg !2972, !tbaa !883
  %712 = icmp eq i8 %711, 0, !dbg !2978
  br i1 %712, label %713, label %714, !dbg !2979

713:                                              ; preds = %708
  store ptr @x264_cqm_jvt4p, ptr %372, align 8, !dbg !2980, !tbaa !2961
  br label %714, !dbg !2981

714:                                              ; preds = %713, %708
  %715 = phi ptr [ %709, %708 ], [ @x264_cqm_jvt4p, %713 ]
  call void @llvm.dbg.value(metadata i64 10, metadata !2854, metadata !DIExpression()), !dbg !2855
  %716 = getelementptr inbounds i8, ptr %715, i64 10, !dbg !2972
  %717 = load i8, ptr %716, align 1, !dbg !2972, !tbaa !883
  %718 = icmp eq i8 %717, 0, !dbg !2978
  br i1 %718, label %719, label %720, !dbg !2979

719:                                              ; preds = %714
  store ptr @x264_cqm_jvt4p, ptr %372, align 8, !dbg !2980, !tbaa !2961
  br label %720, !dbg !2981

720:                                              ; preds = %719, %714
  %721 = phi ptr [ %715, %714 ], [ @x264_cqm_jvt4p, %719 ]
  call void @llvm.dbg.value(metadata i64 11, metadata !2854, metadata !DIExpression()), !dbg !2855
  %722 = getelementptr inbounds i8, ptr %721, i64 11, !dbg !2972
  %723 = load i8, ptr %722, align 1, !dbg !2972, !tbaa !883
  %724 = icmp eq i8 %723, 0, !dbg !2978
  br i1 %724, label %725, label %726, !dbg !2979

725:                                              ; preds = %720
  store ptr @x264_cqm_jvt4p, ptr %372, align 8, !dbg !2980, !tbaa !2961
  br label %726, !dbg !2981

726:                                              ; preds = %725, %720
  %727 = phi ptr [ %721, %720 ], [ @x264_cqm_jvt4p, %725 ]
  call void @llvm.dbg.value(metadata i64 12, metadata !2854, metadata !DIExpression()), !dbg !2855
  %728 = getelementptr inbounds i8, ptr %727, i64 12, !dbg !2972
  %729 = load i8, ptr %728, align 1, !dbg !2972, !tbaa !883
  %730 = icmp eq i8 %729, 0, !dbg !2978
  br i1 %730, label %731, label %732, !dbg !2979

731:                                              ; preds = %726
  store ptr @x264_cqm_jvt4p, ptr %372, align 8, !dbg !2980, !tbaa !2961
  br label %732, !dbg !2981

732:                                              ; preds = %731, %726
  %733 = phi ptr [ %727, %726 ], [ @x264_cqm_jvt4p, %731 ]
  call void @llvm.dbg.value(metadata i64 13, metadata !2854, metadata !DIExpression()), !dbg !2855
  %734 = getelementptr inbounds i8, ptr %733, i64 13, !dbg !2972
  %735 = load i8, ptr %734, align 1, !dbg !2972, !tbaa !883
  %736 = icmp eq i8 %735, 0, !dbg !2978
  br i1 %736, label %737, label %738, !dbg !2979

737:                                              ; preds = %732
  store ptr @x264_cqm_jvt4p, ptr %372, align 8, !dbg !2980, !tbaa !2961
  br label %738, !dbg !2981

738:                                              ; preds = %737, %732
  %739 = phi ptr [ %733, %732 ], [ @x264_cqm_jvt4p, %737 ]
  call void @llvm.dbg.value(metadata i64 14, metadata !2854, metadata !DIExpression()), !dbg !2855
  %740 = getelementptr inbounds i8, ptr %739, i64 14, !dbg !2972
  %741 = load i8, ptr %740, align 1, !dbg !2972, !tbaa !883
  %742 = icmp eq i8 %741, 0, !dbg !2978
  br i1 %742, label %743, label %744, !dbg !2979

743:                                              ; preds = %738
  store ptr @x264_cqm_jvt4p, ptr %372, align 8, !dbg !2980, !tbaa !2961
  br label %744, !dbg !2981

744:                                              ; preds = %743, %738
  %745 = phi ptr [ %739, %738 ], [ @x264_cqm_jvt4p, %743 ]
  call void @llvm.dbg.value(metadata i64 15, metadata !2854, metadata !DIExpression()), !dbg !2855
  %746 = getelementptr inbounds i8, ptr %745, i64 15, !dbg !2972
  %747 = load i8, ptr %746, align 1, !dbg !2972, !tbaa !883
  %748 = icmp eq i8 %747, 0, !dbg !2978
  br i1 %748, label %749, label %750, !dbg !2979

749:                                              ; preds = %744
  store ptr @x264_cqm_jvt4p, ptr %372, align 8, !dbg !2980, !tbaa !2961
  br label %750, !dbg !2981

750:                                              ; preds = %749, %744
  br label %751, !dbg !2982

751:                                              ; preds = %779, %750
  %752 = phi i64 [ 0, %750 ], [ %781, %779 ]
  %753 = phi ptr [ %143, %750 ], [ %780, %779 ]
  call void @llvm.dbg.value(metadata i64 %752, metadata !2854, metadata !DIExpression()), !dbg !2855
  %754 = getelementptr inbounds i8, ptr %753, i64 %752, !dbg !2972
  %755 = load i8, ptr %754, align 1, !dbg !2972, !tbaa !883
  %756 = icmp eq i8 %755, 0, !dbg !2978
  br i1 %756, label %757, label %758, !dbg !2979

757:                                              ; preds = %751
  store ptr @x264_cqm_jvt8i, ptr %373, align 8, !dbg !2980, !tbaa !2961
  br label %758, !dbg !2981

758:                                              ; preds = %757, %751
  %759 = phi ptr [ %753, %751 ], [ @x264_cqm_jvt8i, %757 ]
  %760 = or i64 %752, 1, !dbg !2983
  call void @llvm.dbg.value(metadata i64 %760, metadata !2854, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %760, metadata !2854, metadata !DIExpression()), !dbg !2855
  %761 = getelementptr inbounds i8, ptr %759, i64 %760, !dbg !2972
  %762 = load i8, ptr %761, align 1, !dbg !2972, !tbaa !883
  %763 = icmp eq i8 %762, 0, !dbg !2978
  br i1 %763, label %764, label %765, !dbg !2979

764:                                              ; preds = %758
  store ptr @x264_cqm_jvt8i, ptr %373, align 8, !dbg !2980, !tbaa !2961
  br label %765, !dbg !2981

765:                                              ; preds = %764, %758
  %766 = phi ptr [ %759, %758 ], [ @x264_cqm_jvt8i, %764 ]
  %767 = or i64 %752, 2, !dbg !2983
  call void @llvm.dbg.value(metadata i64 %767, metadata !2854, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %767, metadata !2854, metadata !DIExpression()), !dbg !2855
  %768 = getelementptr inbounds i8, ptr %766, i64 %767, !dbg !2972
  %769 = load i8, ptr %768, align 1, !dbg !2972, !tbaa !883
  %770 = icmp eq i8 %769, 0, !dbg !2978
  br i1 %770, label %771, label %772, !dbg !2979

771:                                              ; preds = %765
  store ptr @x264_cqm_jvt8i, ptr %373, align 8, !dbg !2980, !tbaa !2961
  br label %772, !dbg !2981

772:                                              ; preds = %771, %765
  %773 = phi ptr [ %766, %765 ], [ @x264_cqm_jvt8i, %771 ]
  %774 = or i64 %752, 3, !dbg !2983
  call void @llvm.dbg.value(metadata i64 %774, metadata !2854, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %774, metadata !2854, metadata !DIExpression()), !dbg !2855
  %775 = getelementptr inbounds i8, ptr %773, i64 %774, !dbg !2972
  %776 = load i8, ptr %775, align 1, !dbg !2972, !tbaa !883
  %777 = icmp eq i8 %776, 0, !dbg !2978
  br i1 %777, label %778, label %779, !dbg !2979

778:                                              ; preds = %772
  store ptr @x264_cqm_jvt8i, ptr %373, align 8, !dbg !2980, !tbaa !2961
  br label %779, !dbg !2981

779:                                              ; preds = %778, %772
  %780 = phi ptr [ %773, %772 ], [ @x264_cqm_jvt8i, %778 ]
  %781 = add nuw nsw i64 %752, 4, !dbg !2983
  call void @llvm.dbg.value(metadata i64 %781, metadata !2854, metadata !DIExpression()), !dbg !2855
  %782 = icmp eq i64 %781, 64, !dbg !2984
  br i1 %782, label %783, label %751, !dbg !2982, !llvm.loop !2985

783:                                              ; preds = %779, %811
  %784 = phi i64 [ %813, %811 ], [ 0, %779 ]
  %785 = phi ptr [ %812, %811 ], [ %256, %779 ]
  call void @llvm.dbg.value(metadata i64 %784, metadata !2854, metadata !DIExpression()), !dbg !2855
  %786 = getelementptr inbounds i8, ptr %785, i64 %784, !dbg !2972
  %787 = load i8, ptr %786, align 1, !dbg !2972, !tbaa !883
  %788 = icmp eq i8 %787, 0, !dbg !2978
  br i1 %788, label %789, label %790, !dbg !2979

789:                                              ; preds = %783
  store ptr @x264_cqm_jvt8p, ptr %374, align 8, !dbg !2980, !tbaa !2961
  br label %790, !dbg !2981

790:                                              ; preds = %789, %783
  %791 = phi ptr [ %785, %783 ], [ @x264_cqm_jvt8p, %789 ]
  %792 = or i64 %784, 1, !dbg !2983
  call void @llvm.dbg.value(metadata i64 %792, metadata !2854, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %792, metadata !2854, metadata !DIExpression()), !dbg !2855
  %793 = getelementptr inbounds i8, ptr %791, i64 %792, !dbg !2972
  %794 = load i8, ptr %793, align 1, !dbg !2972, !tbaa !883
  %795 = icmp eq i8 %794, 0, !dbg !2978
  br i1 %795, label %796, label %797, !dbg !2979

796:                                              ; preds = %790
  store ptr @x264_cqm_jvt8p, ptr %374, align 8, !dbg !2980, !tbaa !2961
  br label %797, !dbg !2981

797:                                              ; preds = %796, %790
  %798 = phi ptr [ %791, %790 ], [ @x264_cqm_jvt8p, %796 ]
  %799 = or i64 %784, 2, !dbg !2983
  call void @llvm.dbg.value(metadata i64 %799, metadata !2854, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %799, metadata !2854, metadata !DIExpression()), !dbg !2855
  %800 = getelementptr inbounds i8, ptr %798, i64 %799, !dbg !2972
  %801 = load i8, ptr %800, align 1, !dbg !2972, !tbaa !883
  %802 = icmp eq i8 %801, 0, !dbg !2978
  br i1 %802, label %803, label %804, !dbg !2979

803:                                              ; preds = %797
  store ptr @x264_cqm_jvt8p, ptr %374, align 8, !dbg !2980, !tbaa !2961
  br label %804, !dbg !2981

804:                                              ; preds = %803, %797
  %805 = phi ptr [ %798, %797 ], [ @x264_cqm_jvt8p, %803 ]
  %806 = or i64 %784, 3, !dbg !2983
  call void @llvm.dbg.value(metadata i64 %806, metadata !2854, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %806, metadata !2854, metadata !DIExpression()), !dbg !2855
  %807 = getelementptr inbounds i8, ptr %805, i64 %806, !dbg !2972
  %808 = load i8, ptr %807, align 1, !dbg !2972, !tbaa !883
  %809 = icmp eq i8 %808, 0, !dbg !2978
  br i1 %809, label %810, label %811, !dbg !2979

810:                                              ; preds = %804
  store ptr @x264_cqm_jvt8p, ptr %374, align 8, !dbg !2980, !tbaa !2961
  br label %811, !dbg !2981

811:                                              ; preds = %810, %804
  %812 = phi ptr [ %805, %804 ], [ @x264_cqm_jvt8p, %810 ]
  %813 = add nuw nsw i64 %784, 4, !dbg !2983
  call void @llvm.dbg.value(metadata i64 %813, metadata !2854, metadata !DIExpression()), !dbg !2855
  %814 = icmp eq i64 %813, 64, !dbg !2984
  br i1 %814, label %826, label %783, !dbg !2982, !llvm.loop !2985

815:                                              ; preds = %23, %41
  %816 = phi ptr [ @x264_cqm_flat16, %41 ], [ @x264_cqm_jvt4i, %23 ]
  %817 = phi ptr [ @x264_cqm_flat16, %41 ], [ @x264_cqm_jvt4p, %23 ]
  %818 = phi ptr [ @x264_cqm_flat16, %41 ], [ @x264_cqm_jvt8i, %23 ]
  %819 = phi ptr [ @x264_cqm_flat16, %41 ], [ @x264_cqm_jvt8p, %23 ]
  %820 = getelementptr inbounds %struct.x264_pps_t, ptr %0, i64 0, i32 17, i64 0, !dbg !2987
  store ptr %816, ptr %820, align 8, !dbg !2987, !tbaa !2961
  %821 = getelementptr inbounds %struct.x264_pps_t, ptr %0, i64 0, i32 17, i64 1, !dbg !2987
  store ptr %817, ptr %821, align 8, !dbg !2987, !tbaa !2961
  %822 = getelementptr inbounds %struct.x264_pps_t, ptr %0, i64 0, i32 17, i64 2, !dbg !2987
  store ptr %816, ptr %822, align 8, !dbg !2987, !tbaa !2961
  %823 = getelementptr inbounds %struct.x264_pps_t, ptr %0, i64 0, i32 17, i64 3, !dbg !2987
  store ptr %817, ptr %823, align 8, !dbg !2987, !tbaa !2961
  %824 = getelementptr inbounds %struct.x264_pps_t, ptr %0, i64 0, i32 17, i64 4, !dbg !2987
  store ptr %818, ptr %824, align 8, !dbg !2987, !tbaa !2961
  %825 = getelementptr inbounds %struct.x264_pps_t, ptr %0, i64 0, i32 17, i64 5, !dbg !2987
  store ptr %819, ptr %825, align 8, !dbg !2987, !tbaa !2961
  br label %826, !dbg !2913

826:                                              ; preds = %811, %815, %23
  ret void, !dbg !2913
}

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_pps_write(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 !dbg !2988 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2992, metadata !DIExpression()), !dbg !2994
  call void @llvm.dbg.value(metadata ptr %1, metadata !2993, metadata !DIExpression()), !dbg !2994
  %3 = load i32, ptr %1, align 8, !dbg !2995, !tbaa !2857
  call void @llvm.dbg.value(metadata ptr %0, metadata !868, metadata !DIExpression()), !dbg !2996
  call void @llvm.dbg.value(metadata i32 %3, metadata !869, metadata !DIExpression()), !dbg !2996
  call void @llvm.dbg.value(metadata i32 0, metadata !870, metadata !DIExpression()), !dbg !2996
  %4 = add i32 %3, 1, !dbg !2998
  call void @llvm.dbg.value(metadata i32 %4, metadata !869, metadata !DIExpression()), !dbg !2996
  call void @llvm.dbg.value(metadata i32 %4, metadata !871, metadata !DIExpression()), !dbg !2996
  %5 = icmp sgt i32 %4, 65535, !dbg !2999
  %6 = lshr i32 %4, 16
  %7 = select i1 %5, i32 32, i32 0, !dbg !3000
  %8 = select i1 %5, i32 %6, i32 %4, !dbg !3000
  call void @llvm.dbg.value(metadata i32 %8, metadata !871, metadata !DIExpression()), !dbg !2996
  call void @llvm.dbg.value(metadata i32 %7, metadata !870, metadata !DIExpression()), !dbg !2996
  %9 = icmp sgt i32 %8, 255, !dbg !3001
  %10 = or i32 %7, 16, !dbg !3002
  %11 = lshr i32 %8, 8, !dbg !3002
  %12 = select i1 %9, i32 %10, i32 %7, !dbg !3002
  %13 = select i1 %9, i32 %11, i32 %8, !dbg !3002
  call void @llvm.dbg.value(metadata i32 %13, metadata !871, metadata !DIExpression()), !dbg !2996
  call void @llvm.dbg.value(metadata i32 %12, metadata !870, metadata !DIExpression()), !dbg !2996
  %14 = sext i32 %13 to i64, !dbg !3003
  %15 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %14, !dbg !3003
  %16 = load i8, ptr %15, align 1, !dbg !3003, !tbaa !883
  %17 = zext i8 %16 to i32, !dbg !3003
  %18 = add nuw nsw i32 %12, %17, !dbg !3004
  call void @llvm.dbg.value(metadata i32 %18, metadata !870, metadata !DIExpression()), !dbg !2996
  %19 = lshr i32 %18, 1, !dbg !3005
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata i32 %19, metadata !730, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata i32 0, metadata !731, metadata !DIExpression()), !dbg !3006
  %20 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 3, !dbg !3008
  %21 = load i64, ptr %20, align 8, !dbg !3008, !tbaa !737
  %22 = zext i32 %19 to i64, !dbg !3009
  %23 = shl i64 %21, %22, !dbg !3009
  %24 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 4, !dbg !3010
  %25 = load i32, ptr %24, align 8, !dbg !3011, !tbaa !745
  %26 = sub nsw i32 %25, %19, !dbg !3011
  store i32 %26, ptr %24, align 8, !dbg !3011, !tbaa !745
  %27 = icmp slt i32 %26, 33, !dbg !3012
  br i1 %27, label %28, label %38, !dbg !3013

28:                                               ; preds = %2
  %29 = zext i32 %26 to i64, !dbg !3014
  %30 = shl i64 %23, %29, !dbg !3014
  call void @llvm.dbg.value(metadata i64 %30, metadata !751, metadata !DIExpression()), !dbg !3015
  %31 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %30) #11, !dbg !3017, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %31, metadata !751, metadata !DIExpression()), !dbg !3015
  %32 = trunc i64 %31 to i32, !dbg !3018
  %33 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !3019
  %34 = load ptr, ptr %33, align 8, !dbg !3019, !tbaa !763
  store i32 %32, ptr %34, align 4, !dbg !3020, !tbaa !505
  %35 = load i32, ptr %24, align 8, !dbg !3021, !tbaa !745
  %36 = add nsw i32 %35, 32, !dbg !3021
  %37 = getelementptr inbounds i8, ptr %34, i64 4, !dbg !3022
  store ptr %37, ptr %33, align 8, !dbg !3022, !tbaa !763
  br label %38, !dbg !3023

38:                                               ; preds = %28, %2
  %39 = phi i32 [ %26, %2 ], [ %36, %28 ], !dbg !3024
  %40 = add nuw nsw i32 %19, 1, !dbg !3026
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.value(metadata i32 %40, metadata !730, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.value(metadata i32 %4, metadata !731, metadata !DIExpression()), !dbg !3027
  %41 = zext i32 %40 to i64, !dbg !3028
  %42 = shl i64 %23, %41, !dbg !3028
  %43 = zext i32 %4 to i64, !dbg !3029
  %44 = or i64 %42, %43, !dbg !3030
  %45 = sub nsw i32 %39, %40, !dbg !3024
  store i32 %45, ptr %24, align 8, !dbg !3024, !tbaa !745
  %46 = icmp slt i32 %45, 33, !dbg !3031
  br i1 %46, label %47, label %57, !dbg !3032

47:                                               ; preds = %38
  %48 = zext i32 %45 to i64, !dbg !3033
  %49 = shl i64 %44, %48, !dbg !3033
  call void @llvm.dbg.value(metadata i64 %49, metadata !751, metadata !DIExpression()), !dbg !3034
  %50 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %49) #11, !dbg !3036, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %50, metadata !751, metadata !DIExpression()), !dbg !3034
  %51 = trunc i64 %50 to i32, !dbg !3037
  %52 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !3038
  %53 = load ptr, ptr %52, align 8, !dbg !3038, !tbaa !763
  store i32 %51, ptr %53, align 4, !dbg !3039, !tbaa !505
  %54 = load i32, ptr %24, align 8, !dbg !3040, !tbaa !745
  %55 = add nsw i32 %54, 32, !dbg !3040
  %56 = getelementptr inbounds i8, ptr %53, i64 4, !dbg !3041
  store ptr %56, ptr %52, align 8, !dbg !3041, !tbaa !763
  br label %57, !dbg !3042

57:                                               ; preds = %38, %47
  %58 = phi i32 [ %45, %38 ], [ %55, %47 ], !dbg !3043
  %59 = getelementptr inbounds %struct.x264_pps_t, ptr %1, i64 0, i32 1, !dbg !3046
  %60 = load i32, ptr %59, align 4, !dbg !3046, !tbaa !2862
  call void @llvm.dbg.value(metadata ptr %0, metadata !868, metadata !DIExpression()), !dbg !3047
  call void @llvm.dbg.value(metadata i32 %60, metadata !869, metadata !DIExpression()), !dbg !3047
  call void @llvm.dbg.value(metadata i32 0, metadata !870, metadata !DIExpression()), !dbg !3047
  %61 = add i32 %60, 1, !dbg !3048
  call void @llvm.dbg.value(metadata i32 %61, metadata !869, metadata !DIExpression()), !dbg !3047
  call void @llvm.dbg.value(metadata i32 %61, metadata !871, metadata !DIExpression()), !dbg !3047
  %62 = icmp sgt i32 %61, 65535, !dbg !3049
  %63 = lshr i32 %61, 16
  %64 = select i1 %62, i32 32, i32 0, !dbg !3050
  %65 = select i1 %62, i32 %63, i32 %61, !dbg !3050
  call void @llvm.dbg.value(metadata i32 %65, metadata !871, metadata !DIExpression()), !dbg !3047
  call void @llvm.dbg.value(metadata i32 %64, metadata !870, metadata !DIExpression()), !dbg !3047
  %66 = icmp sgt i32 %65, 255, !dbg !3051
  %67 = or i32 %64, 16, !dbg !3052
  %68 = lshr i32 %65, 8, !dbg !3052
  %69 = select i1 %66, i32 %67, i32 %64, !dbg !3052
  %70 = select i1 %66, i32 %68, i32 %65, !dbg !3052
  call void @llvm.dbg.value(metadata i32 %70, metadata !871, metadata !DIExpression()), !dbg !3047
  call void @llvm.dbg.value(metadata i32 %69, metadata !870, metadata !DIExpression()), !dbg !3047
  %71 = sext i32 %70 to i64, !dbg !3053
  %72 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %71, !dbg !3053
  %73 = load i8, ptr %72, align 1, !dbg !3053, !tbaa !883
  %74 = zext i8 %73 to i32, !dbg !3053
  %75 = add nuw nsw i32 %69, %74, !dbg !3054
  call void @llvm.dbg.value(metadata i32 %75, metadata !870, metadata !DIExpression()), !dbg !3047
  %76 = lshr i32 %75, 1, !dbg !3055
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !3056
  call void @llvm.dbg.value(metadata i32 %76, metadata !730, metadata !DIExpression()), !dbg !3056
  call void @llvm.dbg.value(metadata i32 0, metadata !731, metadata !DIExpression()), !dbg !3056
  %77 = zext i32 %76 to i64, !dbg !3057
  %78 = shl i64 %44, %77, !dbg !3057
  %79 = sub nsw i32 %58, %76, !dbg !3043
  store i32 %79, ptr %24, align 8, !dbg !3043, !tbaa !745
  %80 = icmp slt i32 %79, 33, !dbg !3058
  br i1 %80, label %81, label %91, !dbg !3059

81:                                               ; preds = %57
  %82 = zext i32 %79 to i64, !dbg !3060
  %83 = shl i64 %78, %82, !dbg !3060
  call void @llvm.dbg.value(metadata i64 %83, metadata !751, metadata !DIExpression()), !dbg !3061
  %84 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %83) #11, !dbg !3063, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %84, metadata !751, metadata !DIExpression()), !dbg !3061
  %85 = trunc i64 %84 to i32, !dbg !3064
  %86 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !3065
  %87 = load ptr, ptr %86, align 8, !dbg !3065, !tbaa !763
  store i32 %85, ptr %87, align 4, !dbg !3066, !tbaa !505
  %88 = load i32, ptr %24, align 8, !dbg !3067, !tbaa !745
  %89 = add nsw i32 %88, 32, !dbg !3067
  %90 = getelementptr inbounds i8, ptr %87, i64 4, !dbg !3068
  store ptr %90, ptr %86, align 8, !dbg !3068, !tbaa !763
  br label %91, !dbg !3069

91:                                               ; preds = %81, %57
  %92 = phi i32 [ %79, %57 ], [ %89, %81 ], !dbg !3070
  %93 = add nuw nsw i32 %76, 1, !dbg !3072
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata i32 %93, metadata !730, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata i32 %61, metadata !731, metadata !DIExpression()), !dbg !3073
  %94 = zext i32 %93 to i64, !dbg !3074
  %95 = shl i64 %78, %94, !dbg !3074
  %96 = zext i32 %61 to i64, !dbg !3075
  %97 = or i64 %95, %96, !dbg !3076
  store i64 %97, ptr %20, align 8, !dbg !3077, !tbaa !737
  %98 = sub nsw i32 %92, %93, !dbg !3070
  store i32 %98, ptr %24, align 8, !dbg !3070, !tbaa !745
  %99 = icmp slt i32 %98, 33, !dbg !3078
  br i1 %99, label %100, label %110, !dbg !3079

100:                                              ; preds = %91
  %101 = zext i32 %98 to i64, !dbg !3080
  %102 = shl i64 %97, %101, !dbg !3080
  call void @llvm.dbg.value(metadata i64 %102, metadata !751, metadata !DIExpression()), !dbg !3081
  %103 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %102) #11, !dbg !3083, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %103, metadata !751, metadata !DIExpression()), !dbg !3081
  %104 = trunc i64 %103 to i32, !dbg !3084
  %105 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !3085
  %106 = load ptr, ptr %105, align 8, !dbg !3085, !tbaa !763
  store i32 %104, ptr %106, align 4, !dbg !3086, !tbaa !505
  %107 = load i32, ptr %24, align 8, !dbg !3087, !tbaa !745
  %108 = add nsw i32 %107, 32, !dbg !3087
  %109 = getelementptr inbounds i8, ptr %106, i64 4, !dbg !3088
  store ptr %109, ptr %105, align 8, !dbg !3088, !tbaa !763
  br label %110, !dbg !3089

110:                                              ; preds = %91, %100
  %111 = phi i32 [ %98, %91 ], [ %108, %100 ], !dbg !3090
  %112 = getelementptr inbounds %struct.x264_pps_t, ptr %1, i64 0, i32 2, !dbg !3092
  %113 = load i32, ptr %112, align 8, !dbg !3092, !tbaa !2866
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !3093
  call void @llvm.dbg.value(metadata i32 1, metadata !730, metadata !DIExpression()), !dbg !3093
  call void @llvm.dbg.value(metadata i32 %113, metadata !731, metadata !DIExpression()), !dbg !3093
  %114 = shl i64 %97, 1, !dbg !3094
  %115 = zext i32 %113 to i64, !dbg !3095
  %116 = or i64 %114, %115, !dbg !3096
  %117 = add nsw i32 %111, -1, !dbg !3090
  store i32 %117, ptr %24, align 8, !dbg !3090, !tbaa !745
  %118 = icmp slt i32 %111, 34, !dbg !3097
  br i1 %118, label %119, label %129, !dbg !3098

119:                                              ; preds = %110
  %120 = zext i32 %117 to i64, !dbg !3099
  %121 = shl i64 %116, %120, !dbg !3099
  call void @llvm.dbg.value(metadata i64 %121, metadata !751, metadata !DIExpression()), !dbg !3100
  %122 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %121) #11, !dbg !3102, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %122, metadata !751, metadata !DIExpression()), !dbg !3100
  %123 = trunc i64 %122 to i32, !dbg !3103
  %124 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !3104
  %125 = load ptr, ptr %124, align 8, !dbg !3104, !tbaa !763
  store i32 %123, ptr %125, align 4, !dbg !3105, !tbaa !505
  %126 = load i32, ptr %24, align 8, !dbg !3106, !tbaa !745
  %127 = add nsw i32 %126, 32, !dbg !3106
  %128 = getelementptr inbounds i8, ptr %125, i64 4, !dbg !3107
  store ptr %128, ptr %124, align 8, !dbg !3107, !tbaa !763
  br label %129, !dbg !3108

129:                                              ; preds = %110, %119
  %130 = phi i32 [ %117, %110 ], [ %127, %119 ], !dbg !3109
  %131 = getelementptr inbounds %struct.x264_pps_t, ptr %1, i64 0, i32 3, !dbg !3111
  %132 = load i32, ptr %131, align 4, !dbg !3111, !tbaa !3112
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !3113
  call void @llvm.dbg.value(metadata i32 1, metadata !730, metadata !DIExpression()), !dbg !3113
  call void @llvm.dbg.value(metadata i32 %132, metadata !731, metadata !DIExpression()), !dbg !3113
  %133 = shl i64 %116, 1, !dbg !3114
  %134 = zext i32 %132 to i64, !dbg !3115
  %135 = or i64 %133, %134, !dbg !3116
  %136 = add nsw i32 %130, -1, !dbg !3109
  store i32 %136, ptr %24, align 8, !dbg !3109, !tbaa !745
  %137 = icmp slt i32 %130, 34, !dbg !3117
  br i1 %137, label %138, label %148, !dbg !3118

138:                                              ; preds = %129
  %139 = zext i32 %136 to i64, !dbg !3119
  %140 = shl i64 %135, %139, !dbg !3119
  call void @llvm.dbg.value(metadata i64 %140, metadata !751, metadata !DIExpression()), !dbg !3120
  %141 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %140) #11, !dbg !3122, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %141, metadata !751, metadata !DIExpression()), !dbg !3120
  %142 = trunc i64 %141 to i32, !dbg !3123
  %143 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !3124
  %144 = load ptr, ptr %143, align 8, !dbg !3124, !tbaa !763
  store i32 %142, ptr %144, align 4, !dbg !3125, !tbaa !505
  %145 = load i32, ptr %24, align 8, !dbg !3126, !tbaa !745
  %146 = add nsw i32 %145, 32, !dbg !3126
  %147 = getelementptr inbounds i8, ptr %144, i64 4, !dbg !3127
  store ptr %147, ptr %143, align 8, !dbg !3127, !tbaa !763
  br label %148, !dbg !3128

148:                                              ; preds = %129, %138
  %149 = phi i32 [ %136, %129 ], [ %146, %138 ], !dbg !3129
  %150 = getelementptr inbounds %struct.x264_pps_t, ptr %1, i64 0, i32 4, !dbg !3132
  %151 = load i32, ptr %150, align 8, !dbg !3132, !tbaa !3133
  call void @llvm.dbg.value(metadata ptr %0, metadata !868, metadata !DIExpression()), !dbg !3134
  call void @llvm.dbg.value(metadata i32 %151, metadata !869, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3134
  call void @llvm.dbg.value(metadata i32 0, metadata !870, metadata !DIExpression()), !dbg !3134
  call void @llvm.dbg.value(metadata i32 %151, metadata !869, metadata !DIExpression()), !dbg !3134
  call void @llvm.dbg.value(metadata i32 %151, metadata !871, metadata !DIExpression()), !dbg !3134
  %152 = icmp sgt i32 %151, 65535, !dbg !3135
  %153 = lshr i32 %151, 16
  %154 = select i1 %152, i32 32, i32 0, !dbg !3136
  %155 = select i1 %152, i32 %153, i32 %151, !dbg !3136
  call void @llvm.dbg.value(metadata i32 %155, metadata !871, metadata !DIExpression()), !dbg !3134
  call void @llvm.dbg.value(metadata i32 %154, metadata !870, metadata !DIExpression()), !dbg !3134
  %156 = icmp sgt i32 %155, 255, !dbg !3137
  %157 = or i32 %154, 16, !dbg !3138
  %158 = lshr i32 %155, 8, !dbg !3138
  %159 = select i1 %156, i32 %157, i32 %154, !dbg !3138
  %160 = select i1 %156, i32 %158, i32 %155, !dbg !3138
  call void @llvm.dbg.value(metadata i32 %160, metadata !871, metadata !DIExpression()), !dbg !3134
  call void @llvm.dbg.value(metadata i32 %159, metadata !870, metadata !DIExpression()), !dbg !3134
  %161 = sext i32 %160 to i64, !dbg !3139
  %162 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %161, !dbg !3139
  %163 = load i8, ptr %162, align 1, !dbg !3139, !tbaa !883
  %164 = zext i8 %163 to i32, !dbg !3139
  %165 = add nuw nsw i32 %159, %164, !dbg !3140
  call void @llvm.dbg.value(metadata i32 %165, metadata !870, metadata !DIExpression()), !dbg !3134
  %166 = lshr i32 %165, 1, !dbg !3141
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata i32 %166, metadata !730, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata i32 0, metadata !731, metadata !DIExpression()), !dbg !3142
  %167 = zext i32 %166 to i64, !dbg !3143
  %168 = shl i64 %135, %167, !dbg !3143
  %169 = sub nsw i32 %149, %166, !dbg !3129
  store i32 %169, ptr %24, align 8, !dbg !3129, !tbaa !745
  %170 = icmp slt i32 %169, 33, !dbg !3144
  br i1 %170, label %171, label %181, !dbg !3145

171:                                              ; preds = %148
  %172 = zext i32 %169 to i64, !dbg !3146
  %173 = shl i64 %168, %172, !dbg !3146
  call void @llvm.dbg.value(metadata i64 %173, metadata !751, metadata !DIExpression()), !dbg !3147
  %174 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %173) #11, !dbg !3149, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %174, metadata !751, metadata !DIExpression()), !dbg !3147
  %175 = trunc i64 %174 to i32, !dbg !3150
  %176 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !3151
  %177 = load ptr, ptr %176, align 8, !dbg !3151, !tbaa !763
  store i32 %175, ptr %177, align 4, !dbg !3152, !tbaa !505
  %178 = load i32, ptr %24, align 8, !dbg !3153, !tbaa !745
  %179 = add nsw i32 %178, 32, !dbg !3153
  %180 = getelementptr inbounds i8, ptr %177, i64 4, !dbg !3154
  store ptr %180, ptr %176, align 8, !dbg !3154, !tbaa !763
  br label %181, !dbg !3155

181:                                              ; preds = %171, %148
  %182 = phi i32 [ %169, %148 ], [ %179, %171 ], !dbg !3156
  %183 = add nuw nsw i32 %166, 1, !dbg !3158
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i32 %183, metadata !730, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i32 %151, metadata !731, metadata !DIExpression()), !dbg !3159
  %184 = zext i32 %183 to i64, !dbg !3160
  %185 = shl i64 %168, %184, !dbg !3160
  %186 = zext i32 %151 to i64, !dbg !3161
  %187 = or i64 %185, %186, !dbg !3162
  store i64 %187, ptr %20, align 8, !dbg !3163, !tbaa !737
  %188 = sub nsw i32 %182, %183, !dbg !3156
  store i32 %188, ptr %24, align 8, !dbg !3156, !tbaa !745
  %189 = icmp slt i32 %188, 33, !dbg !3164
  br i1 %189, label %190, label %200, !dbg !3165

190:                                              ; preds = %181
  %191 = zext i32 %188 to i64, !dbg !3166
  %192 = shl i64 %187, %191, !dbg !3166
  call void @llvm.dbg.value(metadata i64 %192, metadata !751, metadata !DIExpression()), !dbg !3167
  %193 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %192) #11, !dbg !3169, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %193, metadata !751, metadata !DIExpression()), !dbg !3167
  %194 = trunc i64 %193 to i32, !dbg !3170
  %195 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !3171
  %196 = load ptr, ptr %195, align 8, !dbg !3171, !tbaa !763
  store i32 %194, ptr %196, align 4, !dbg !3172, !tbaa !505
  %197 = load i32, ptr %24, align 8, !dbg !3173, !tbaa !745
  %198 = add nsw i32 %197, 32, !dbg !3173
  %199 = getelementptr inbounds i8, ptr %196, i64 4, !dbg !3174
  store ptr %199, ptr %195, align 8, !dbg !3174, !tbaa !763
  br label %200, !dbg !3175

200:                                              ; preds = %181, %190
  %201 = phi i32 [ %188, %181 ], [ %198, %190 ], !dbg !3176
  %202 = getelementptr inbounds %struct.x264_pps_t, ptr %1, i64 0, i32 5, !dbg !3179
  %203 = load i32, ptr %202, align 4, !dbg !3179, !tbaa !3180
  call void @llvm.dbg.value(metadata ptr %0, metadata !868, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.value(metadata i32 %203, metadata !869, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3181
  call void @llvm.dbg.value(metadata i32 0, metadata !870, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.value(metadata i32 %203, metadata !869, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.value(metadata i32 %203, metadata !871, metadata !DIExpression()), !dbg !3181
  %204 = icmp sgt i32 %203, 65535, !dbg !3182
  %205 = lshr i32 %203, 16
  %206 = select i1 %204, i32 32, i32 0, !dbg !3183
  %207 = select i1 %204, i32 %205, i32 %203, !dbg !3183
  call void @llvm.dbg.value(metadata i32 %207, metadata !871, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.value(metadata i32 %206, metadata !870, metadata !DIExpression()), !dbg !3181
  %208 = icmp sgt i32 %207, 255, !dbg !3184
  %209 = or i32 %206, 16, !dbg !3185
  %210 = lshr i32 %207, 8, !dbg !3185
  %211 = select i1 %208, i32 %209, i32 %206, !dbg !3185
  %212 = select i1 %208, i32 %210, i32 %207, !dbg !3185
  call void @llvm.dbg.value(metadata i32 %212, metadata !871, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.value(metadata i32 %211, metadata !870, metadata !DIExpression()), !dbg !3181
  %213 = sext i32 %212 to i64, !dbg !3186
  %214 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %213, !dbg !3186
  %215 = load i8, ptr %214, align 1, !dbg !3186, !tbaa !883
  %216 = zext i8 %215 to i32, !dbg !3186
  %217 = add nuw nsw i32 %211, %216, !dbg !3187
  call void @llvm.dbg.value(metadata i32 %217, metadata !870, metadata !DIExpression()), !dbg !3181
  %218 = lshr i32 %217, 1, !dbg !3188
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !3189
  call void @llvm.dbg.value(metadata i32 %218, metadata !730, metadata !DIExpression()), !dbg !3189
  call void @llvm.dbg.value(metadata i32 0, metadata !731, metadata !DIExpression()), !dbg !3189
  %219 = zext i32 %218 to i64, !dbg !3190
  %220 = shl i64 %187, %219, !dbg !3190
  %221 = sub nsw i32 %201, %218, !dbg !3176
  store i32 %221, ptr %24, align 8, !dbg !3176, !tbaa !745
  %222 = icmp slt i32 %221, 33, !dbg !3191
  br i1 %222, label %223, label %233, !dbg !3192

223:                                              ; preds = %200
  %224 = zext i32 %221 to i64, !dbg !3193
  %225 = shl i64 %220, %224, !dbg !3193
  call void @llvm.dbg.value(metadata i64 %225, metadata !751, metadata !DIExpression()), !dbg !3194
  %226 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %225) #11, !dbg !3196, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %226, metadata !751, metadata !DIExpression()), !dbg !3194
  %227 = trunc i64 %226 to i32, !dbg !3197
  %228 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !3198
  %229 = load ptr, ptr %228, align 8, !dbg !3198, !tbaa !763
  store i32 %227, ptr %229, align 4, !dbg !3199, !tbaa !505
  %230 = load i32, ptr %24, align 8, !dbg !3200, !tbaa !745
  %231 = add nsw i32 %230, 32, !dbg !3200
  %232 = getelementptr inbounds i8, ptr %229, i64 4, !dbg !3201
  store ptr %232, ptr %228, align 8, !dbg !3201, !tbaa !763
  br label %233, !dbg !3202

233:                                              ; preds = %223, %200
  %234 = phi i32 [ %221, %200 ], [ %231, %223 ], !dbg !3203
  %235 = add nuw nsw i32 %218, 1, !dbg !3205
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i32 %235, metadata !730, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i32 %203, metadata !731, metadata !DIExpression()), !dbg !3206
  %236 = zext i32 %235 to i64, !dbg !3207
  %237 = shl i64 %220, %236, !dbg !3207
  %238 = zext i32 %203 to i64, !dbg !3208
  %239 = or i64 %237, %238, !dbg !3209
  %240 = sub nsw i32 %234, %235, !dbg !3203
  store i32 %240, ptr %24, align 8, !dbg !3203, !tbaa !745
  %241 = icmp slt i32 %240, 33, !dbg !3210
  br i1 %241, label %242, label %252, !dbg !3211

242:                                              ; preds = %233
  %243 = zext i32 %240 to i64, !dbg !3212
  %244 = shl i64 %239, %243, !dbg !3212
  call void @llvm.dbg.value(metadata i64 %244, metadata !751, metadata !DIExpression()), !dbg !3213
  %245 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %244) #11, !dbg !3215, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %245, metadata !751, metadata !DIExpression()), !dbg !3213
  %246 = trunc i64 %245 to i32, !dbg !3216
  %247 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !3217
  %248 = load ptr, ptr %247, align 8, !dbg !3217, !tbaa !763
  store i32 %246, ptr %248, align 4, !dbg !3218, !tbaa !505
  %249 = load i32, ptr %24, align 8, !dbg !3219, !tbaa !745
  %250 = add nsw i32 %249, 32, !dbg !3219
  %251 = getelementptr inbounds i8, ptr %248, i64 4, !dbg !3220
  store ptr %251, ptr %247, align 8, !dbg !3220, !tbaa !763
  br label %252, !dbg !3221

252:                                              ; preds = %233, %242
  %253 = phi i32 [ %240, %233 ], [ %250, %242 ], !dbg !3222
  %254 = getelementptr inbounds %struct.x264_pps_t, ptr %1, i64 0, i32 6, !dbg !3225
  %255 = load i32, ptr %254, align 8, !dbg !3225, !tbaa !3226
  call void @llvm.dbg.value(metadata ptr %0, metadata !868, metadata !DIExpression()), !dbg !3227
  call void @llvm.dbg.value(metadata i32 %255, metadata !869, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3227
  call void @llvm.dbg.value(metadata i32 0, metadata !870, metadata !DIExpression()), !dbg !3227
  call void @llvm.dbg.value(metadata i32 %255, metadata !869, metadata !DIExpression()), !dbg !3227
  call void @llvm.dbg.value(metadata i32 %255, metadata !871, metadata !DIExpression()), !dbg !3227
  %256 = icmp sgt i32 %255, 65535, !dbg !3228
  %257 = lshr i32 %255, 16
  %258 = select i1 %256, i32 32, i32 0, !dbg !3229
  %259 = select i1 %256, i32 %257, i32 %255, !dbg !3229
  call void @llvm.dbg.value(metadata i32 %259, metadata !871, metadata !DIExpression()), !dbg !3227
  call void @llvm.dbg.value(metadata i32 %258, metadata !870, metadata !DIExpression()), !dbg !3227
  %260 = icmp sgt i32 %259, 255, !dbg !3230
  %261 = or i32 %258, 16, !dbg !3231
  %262 = lshr i32 %259, 8, !dbg !3231
  %263 = select i1 %260, i32 %261, i32 %258, !dbg !3231
  %264 = select i1 %260, i32 %262, i32 %259, !dbg !3231
  call void @llvm.dbg.value(metadata i32 %264, metadata !871, metadata !DIExpression()), !dbg !3227
  call void @llvm.dbg.value(metadata i32 %263, metadata !870, metadata !DIExpression()), !dbg !3227
  %265 = sext i32 %264 to i64, !dbg !3232
  %266 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %265, !dbg !3232
  %267 = load i8, ptr %266, align 1, !dbg !3232, !tbaa !883
  %268 = zext i8 %267 to i32, !dbg !3232
  %269 = add nuw nsw i32 %263, %268, !dbg !3233
  call void @llvm.dbg.value(metadata i32 %269, metadata !870, metadata !DIExpression()), !dbg !3227
  %270 = lshr i32 %269, 1, !dbg !3234
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !3235
  call void @llvm.dbg.value(metadata i32 %270, metadata !730, metadata !DIExpression()), !dbg !3235
  call void @llvm.dbg.value(metadata i32 0, metadata !731, metadata !DIExpression()), !dbg !3235
  %271 = zext i32 %270 to i64, !dbg !3236
  %272 = shl i64 %239, %271, !dbg !3236
  %273 = sub nsw i32 %253, %270, !dbg !3222
  store i32 %273, ptr %24, align 8, !dbg !3222, !tbaa !745
  %274 = icmp slt i32 %273, 33, !dbg !3237
  br i1 %274, label %275, label %285, !dbg !3238

275:                                              ; preds = %252
  %276 = zext i32 %273 to i64, !dbg !3239
  %277 = shl i64 %272, %276, !dbg !3239
  call void @llvm.dbg.value(metadata i64 %277, metadata !751, metadata !DIExpression()), !dbg !3240
  %278 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %277) #11, !dbg !3242, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %278, metadata !751, metadata !DIExpression()), !dbg !3240
  %279 = trunc i64 %278 to i32, !dbg !3243
  %280 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !3244
  %281 = load ptr, ptr %280, align 8, !dbg !3244, !tbaa !763
  store i32 %279, ptr %281, align 4, !dbg !3245, !tbaa !505
  %282 = load i32, ptr %24, align 8, !dbg !3246, !tbaa !745
  %283 = add nsw i32 %282, 32, !dbg !3246
  %284 = getelementptr inbounds i8, ptr %281, i64 4, !dbg !3247
  store ptr %284, ptr %280, align 8, !dbg !3247, !tbaa !763
  br label %285, !dbg !3248

285:                                              ; preds = %275, %252
  %286 = phi i32 [ %273, %252 ], [ %283, %275 ], !dbg !3249
  %287 = add nuw nsw i32 %270, 1, !dbg !3251
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !3252
  call void @llvm.dbg.value(metadata i32 %287, metadata !730, metadata !DIExpression()), !dbg !3252
  call void @llvm.dbg.value(metadata i32 %255, metadata !731, metadata !DIExpression()), !dbg !3252
  %288 = zext i32 %287 to i64, !dbg !3253
  %289 = shl i64 %272, %288, !dbg !3253
  %290 = zext i32 %255 to i64, !dbg !3254
  %291 = or i64 %289, %290, !dbg !3255
  store i64 %291, ptr %20, align 8, !dbg !3256, !tbaa !737
  %292 = sub nsw i32 %286, %287, !dbg !3249
  store i32 %292, ptr %24, align 8, !dbg !3249, !tbaa !745
  %293 = icmp slt i32 %292, 33, !dbg !3257
  br i1 %293, label %294, label %304, !dbg !3258

294:                                              ; preds = %285
  %295 = zext i32 %292 to i64, !dbg !3259
  %296 = shl i64 %291, %295, !dbg !3259
  call void @llvm.dbg.value(metadata i64 %296, metadata !751, metadata !DIExpression()), !dbg !3260
  %297 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %296) #11, !dbg !3262, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %297, metadata !751, metadata !DIExpression()), !dbg !3260
  %298 = trunc i64 %297 to i32, !dbg !3263
  %299 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !3264
  %300 = load ptr, ptr %299, align 8, !dbg !3264, !tbaa !763
  store i32 %298, ptr %300, align 4, !dbg !3265, !tbaa !505
  %301 = load i32, ptr %24, align 8, !dbg !3266, !tbaa !745
  %302 = add nsw i32 %301, 32, !dbg !3266
  %303 = getelementptr inbounds i8, ptr %300, i64 4, !dbg !3267
  store ptr %303, ptr %299, align 8, !dbg !3267, !tbaa !763
  br label %304, !dbg !3268

304:                                              ; preds = %285, %294
  %305 = phi i32 [ %292, %285 ], [ %302, %294 ], !dbg !3269
  %306 = getelementptr inbounds %struct.x264_pps_t, ptr %1, i64 0, i32 7, !dbg !3271
  %307 = load i32, ptr %306, align 4, !dbg !3271, !tbaa !2871
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !3272
  call void @llvm.dbg.value(metadata i32 1, metadata !730, metadata !DIExpression()), !dbg !3272
  call void @llvm.dbg.value(metadata i32 %307, metadata !731, metadata !DIExpression()), !dbg !3272
  %308 = shl i64 %291, 1, !dbg !3273
  %309 = zext i32 %307 to i64, !dbg !3274
  %310 = or i64 %308, %309, !dbg !3275
  %311 = add nsw i32 %305, -1, !dbg !3269
  store i32 %311, ptr %24, align 8, !dbg !3269, !tbaa !745
  %312 = icmp slt i32 %305, 34, !dbg !3276
  br i1 %312, label %313, label %323, !dbg !3277

313:                                              ; preds = %304
  %314 = zext i32 %311 to i64, !dbg !3278
  %315 = shl i64 %310, %314, !dbg !3278
  call void @llvm.dbg.value(metadata i64 %315, metadata !751, metadata !DIExpression()), !dbg !3279
  %316 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %315) #11, !dbg !3281, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %316, metadata !751, metadata !DIExpression()), !dbg !3279
  %317 = trunc i64 %316 to i32, !dbg !3282
  %318 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !3283
  %319 = load ptr, ptr %318, align 8, !dbg !3283, !tbaa !763
  store i32 %317, ptr %319, align 4, !dbg !3284, !tbaa !505
  %320 = load i32, ptr %24, align 8, !dbg !3285, !tbaa !745
  %321 = add nsw i32 %320, 32, !dbg !3285
  %322 = getelementptr inbounds i8, ptr %319, i64 4, !dbg !3286
  store ptr %322, ptr %318, align 8, !dbg !3286, !tbaa !763
  br label %323, !dbg !3287

323:                                              ; preds = %304, %313
  %324 = phi i32 [ %311, %304 ], [ %321, %313 ], !dbg !3288
  %325 = getelementptr inbounds %struct.x264_pps_t, ptr %1, i64 0, i32 8, !dbg !3290
  %326 = load i32, ptr %325, align 8, !dbg !3290, !tbaa !2877
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata i32 2, metadata !730, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata i32 %326, metadata !731, metadata !DIExpression()), !dbg !3291
  %327 = shl i64 %310, 2, !dbg !3292
  %328 = zext i32 %326 to i64, !dbg !3293
  %329 = or i64 %327, %328, !dbg !3294
  %330 = add nsw i32 %324, -2, !dbg !3288
  store i32 %330, ptr %24, align 8, !dbg !3288, !tbaa !745
  %331 = icmp slt i32 %324, 35, !dbg !3295
  br i1 %331, label %332, label %342, !dbg !3296

332:                                              ; preds = %323
  %333 = zext i32 %330 to i64, !dbg !3297
  %334 = shl i64 %329, %333, !dbg !3297
  call void @llvm.dbg.value(metadata i64 %334, metadata !751, metadata !DIExpression()), !dbg !3298
  %335 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %334) #11, !dbg !3300, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %335, metadata !751, metadata !DIExpression()), !dbg !3298
  %336 = trunc i64 %335 to i32, !dbg !3301
  %337 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !3302
  %338 = load ptr, ptr %337, align 8, !dbg !3302, !tbaa !763
  store i32 %336, ptr %338, align 4, !dbg !3303, !tbaa !505
  %339 = load i32, ptr %24, align 8, !dbg !3304, !tbaa !745
  %340 = add nsw i32 %339, 32, !dbg !3304
  %341 = getelementptr inbounds i8, ptr %338, i64 4, !dbg !3305
  store ptr %341, ptr %337, align 8, !dbg !3305, !tbaa !763
  br label %342, !dbg !3306

342:                                              ; preds = %323, %332
  %343 = phi i32 [ %330, %323 ], [ %340, %332 ], !dbg !3307
  %344 = getelementptr inbounds %struct.x264_pps_t, ptr %1, i64 0, i32 9, !dbg !3310
  %345 = load i32, ptr %344, align 4, !dbg !3310, !tbaa !2885
  %346 = add nsw i32 %345, -26, !dbg !3311
  call void @llvm.dbg.value(metadata ptr %0, metadata !1228, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.value(metadata i32 %346, metadata !1229, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.value(metadata i32 0, metadata !1230, metadata !DIExpression()), !dbg !3312
  %347 = icmp slt i32 %345, 27, !dbg !3313
  %348 = mul i32 %346, -2, !dbg !3314
  %349 = or i32 %348, 1, !dbg !3314
  %350 = shl nsw i32 %346, 1, !dbg !3314
  %351 = select i1 %347, i32 %349, i32 %350, !dbg !3314
  call void @llvm.dbg.value(metadata i32 %351, metadata !1229, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.value(metadata i32 %351, metadata !1231, metadata !DIExpression()), !dbg !3312
  %352 = icmp sgt i32 %351, 255, !dbg !3315
  %353 = lshr i32 %351, 8, !dbg !3316
  %354 = select i1 %352, i32 16, i32 0, !dbg !3316
  %355 = select i1 %352, i32 %353, i32 %351, !dbg !3316
  call void @llvm.dbg.value(metadata i32 %355, metadata !1231, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.value(metadata i32 %354, metadata !1230, metadata !DIExpression()), !dbg !3312
  %356 = sext i32 %355 to i64, !dbg !3317
  %357 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %356, !dbg !3317
  %358 = load i8, ptr %357, align 1, !dbg !3317, !tbaa !883
  %359 = zext i8 %358 to i32, !dbg !3317
  %360 = add nuw nsw i32 %354, %359, !dbg !3318
  call void @llvm.dbg.value(metadata i32 %360, metadata !1230, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !3319
  call void @llvm.dbg.value(metadata i32 %360, metadata !730, metadata !DIExpression()), !dbg !3319
  call void @llvm.dbg.value(metadata i32 %351, metadata !731, metadata !DIExpression()), !dbg !3319
  %361 = zext i32 %360 to i64, !dbg !3320
  %362 = shl i64 %329, %361, !dbg !3320
  %363 = zext i32 %351 to i64, !dbg !3321
  %364 = or i64 %362, %363, !dbg !3322
  store i64 %364, ptr %20, align 8, !dbg !3323, !tbaa !737
  %365 = sub nsw i32 %343, %360, !dbg !3307
  store i32 %365, ptr %24, align 8, !dbg !3307, !tbaa !745
  %366 = icmp slt i32 %365, 33, !dbg !3324
  br i1 %366, label %367, label %377, !dbg !3325

367:                                              ; preds = %342
  %368 = zext i32 %365 to i64, !dbg !3326
  %369 = shl i64 %364, %368, !dbg !3326
  call void @llvm.dbg.value(metadata i64 %369, metadata !751, metadata !DIExpression()), !dbg !3327
  %370 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %369) #11, !dbg !3329, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %370, metadata !751, metadata !DIExpression()), !dbg !3327
  %371 = trunc i64 %370 to i32, !dbg !3330
  %372 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !3331
  %373 = load ptr, ptr %372, align 8, !dbg !3331, !tbaa !763
  store i32 %371, ptr %373, align 4, !dbg !3332, !tbaa !505
  %374 = load i32, ptr %24, align 8, !dbg !3333, !tbaa !745
  %375 = add nsw i32 %374, 32, !dbg !3333
  %376 = getelementptr inbounds i8, ptr %373, i64 4, !dbg !3334
  store ptr %376, ptr %372, align 8, !dbg !3334, !tbaa !763
  br label %377, !dbg !3335

377:                                              ; preds = %342, %367
  %378 = phi i32 [ %365, %342 ], [ %375, %367 ], !dbg !3336
  %379 = getelementptr inbounds %struct.x264_pps_t, ptr %1, i64 0, i32 10, !dbg !3339
  %380 = load i32, ptr %379, align 8, !dbg !3339, !tbaa !2888
  %381 = add nsw i32 %380, -26, !dbg !3340
  call void @llvm.dbg.value(metadata ptr %0, metadata !1228, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.value(metadata i32 %381, metadata !1229, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.value(metadata i32 0, metadata !1230, metadata !DIExpression()), !dbg !3341
  %382 = icmp slt i32 %380, 27, !dbg !3342
  %383 = mul i32 %381, -2, !dbg !3343
  %384 = or i32 %383, 1, !dbg !3343
  %385 = shl nsw i32 %381, 1, !dbg !3343
  %386 = select i1 %382, i32 %384, i32 %385, !dbg !3343
  call void @llvm.dbg.value(metadata i32 %386, metadata !1229, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.value(metadata i32 %386, metadata !1231, metadata !DIExpression()), !dbg !3341
  %387 = icmp sgt i32 %386, 255, !dbg !3344
  %388 = lshr i32 %386, 8, !dbg !3345
  %389 = select i1 %387, i32 16, i32 0, !dbg !3345
  %390 = select i1 %387, i32 %388, i32 %386, !dbg !3345
  call void @llvm.dbg.value(metadata i32 %390, metadata !1231, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.value(metadata i32 %389, metadata !1230, metadata !DIExpression()), !dbg !3341
  %391 = sext i32 %390 to i64, !dbg !3346
  %392 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %391, !dbg !3346
  %393 = load i8, ptr %392, align 1, !dbg !3346, !tbaa !883
  %394 = zext i8 %393 to i32, !dbg !3346
  %395 = add nuw nsw i32 %389, %394, !dbg !3347
  call void @llvm.dbg.value(metadata i32 %395, metadata !1230, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata i32 %395, metadata !730, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata i32 %386, metadata !731, metadata !DIExpression()), !dbg !3348
  %396 = zext i32 %395 to i64, !dbg !3349
  %397 = shl i64 %364, %396, !dbg !3349
  %398 = zext i32 %386 to i64, !dbg !3350
  %399 = or i64 %397, %398, !dbg !3351
  %400 = sub nsw i32 %378, %395, !dbg !3336
  store i32 %400, ptr %24, align 8, !dbg !3336, !tbaa !745
  %401 = icmp slt i32 %400, 33, !dbg !3352
  br i1 %401, label %402, label %412, !dbg !3353

402:                                              ; preds = %377
  %403 = zext i32 %400 to i64, !dbg !3354
  %404 = shl i64 %399, %403, !dbg !3354
  call void @llvm.dbg.value(metadata i64 %404, metadata !751, metadata !DIExpression()), !dbg !3355
  %405 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %404) #11, !dbg !3357, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %405, metadata !751, metadata !DIExpression()), !dbg !3355
  %406 = trunc i64 %405 to i32, !dbg !3358
  %407 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !3359
  %408 = load ptr, ptr %407, align 8, !dbg !3359, !tbaa !763
  store i32 %406, ptr %408, align 4, !dbg !3360, !tbaa !505
  %409 = load i32, ptr %24, align 8, !dbg !3361, !tbaa !745
  %410 = add nsw i32 %409, 32, !dbg !3361
  %411 = getelementptr inbounds i8, ptr %408, i64 4, !dbg !3362
  store ptr %411, ptr %407, align 8, !dbg !3362, !tbaa !763
  br label %412, !dbg !3363

412:                                              ; preds = %377, %402
  %413 = phi i32 [ %400, %377 ], [ %410, %402 ], !dbg !3364
  %414 = getelementptr inbounds %struct.x264_pps_t, ptr %1, i64 0, i32 11, !dbg !3367
  %415 = load i32, ptr %414, align 4, !dbg !3367, !tbaa !2893
  call void @llvm.dbg.value(metadata ptr %0, metadata !1228, metadata !DIExpression()), !dbg !3368
  call void @llvm.dbg.value(metadata i32 %415, metadata !1229, metadata !DIExpression()), !dbg !3368
  call void @llvm.dbg.value(metadata i32 0, metadata !1230, metadata !DIExpression()), !dbg !3368
  %416 = icmp slt i32 %415, 1, !dbg !3369
  %417 = mul i32 %415, -2, !dbg !3370
  %418 = or i32 %417, 1, !dbg !3370
  %419 = shl nsw i32 %415, 1, !dbg !3370
  %420 = select i1 %416, i32 %418, i32 %419, !dbg !3370
  call void @llvm.dbg.value(metadata i32 %420, metadata !1229, metadata !DIExpression()), !dbg !3368
  call void @llvm.dbg.value(metadata i32 %420, metadata !1231, metadata !DIExpression()), !dbg !3368
  %421 = icmp sgt i32 %420, 255, !dbg !3371
  %422 = lshr i32 %420, 8, !dbg !3372
  %423 = select i1 %421, i32 16, i32 0, !dbg !3372
  %424 = select i1 %421, i32 %422, i32 %420, !dbg !3372
  call void @llvm.dbg.value(metadata i32 %424, metadata !1231, metadata !DIExpression()), !dbg !3368
  call void @llvm.dbg.value(metadata i32 %423, metadata !1230, metadata !DIExpression()), !dbg !3368
  %425 = sext i32 %424 to i64, !dbg !3373
  %426 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %425, !dbg !3373
  %427 = load i8, ptr %426, align 1, !dbg !3373, !tbaa !883
  %428 = zext i8 %427 to i32, !dbg !3373
  %429 = add nuw nsw i32 %423, %428, !dbg !3374
  call void @llvm.dbg.value(metadata i32 %429, metadata !1230, metadata !DIExpression()), !dbg !3368
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !3375
  call void @llvm.dbg.value(metadata i32 %429, metadata !730, metadata !DIExpression()), !dbg !3375
  call void @llvm.dbg.value(metadata i32 %420, metadata !731, metadata !DIExpression()), !dbg !3375
  %430 = zext i32 %429 to i64, !dbg !3376
  %431 = shl i64 %399, %430, !dbg !3376
  %432 = zext i32 %420 to i64, !dbg !3377
  %433 = or i64 %431, %432, !dbg !3378
  %434 = sub nsw i32 %413, %429, !dbg !3364
  store i32 %434, ptr %24, align 8, !dbg !3364, !tbaa !745
  %435 = icmp slt i32 %434, 33, !dbg !3379
  br i1 %435, label %436, label %446, !dbg !3380

436:                                              ; preds = %412
  %437 = zext i32 %434 to i64, !dbg !3381
  %438 = shl i64 %433, %437, !dbg !3381
  call void @llvm.dbg.value(metadata i64 %438, metadata !751, metadata !DIExpression()), !dbg !3382
  %439 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %438) #11, !dbg !3384, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %439, metadata !751, metadata !DIExpression()), !dbg !3382
  %440 = trunc i64 %439 to i32, !dbg !3385
  %441 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !3386
  %442 = load ptr, ptr %441, align 8, !dbg !3386, !tbaa !763
  store i32 %440, ptr %442, align 4, !dbg !3387, !tbaa !505
  %443 = load i32, ptr %24, align 8, !dbg !3388, !tbaa !745
  %444 = add nsw i32 %443, 32, !dbg !3388
  %445 = getelementptr inbounds i8, ptr %442, i64 4, !dbg !3389
  store ptr %445, ptr %441, align 8, !dbg !3389, !tbaa !763
  br label %446, !dbg !3390

446:                                              ; preds = %412, %436
  %447 = phi i32 [ %434, %412 ], [ %444, %436 ], !dbg !3391
  %448 = getelementptr inbounds %struct.x264_pps_t, ptr %1, i64 0, i32 12, !dbg !3393
  %449 = load i32, ptr %448, align 8, !dbg !3393, !tbaa !2896
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !3394
  call void @llvm.dbg.value(metadata i32 1, metadata !730, metadata !DIExpression()), !dbg !3394
  call void @llvm.dbg.value(metadata i32 %449, metadata !731, metadata !DIExpression()), !dbg !3394
  %450 = shl i64 %433, 1, !dbg !3395
  %451 = zext i32 %449 to i64, !dbg !3396
  %452 = or i64 %450, %451, !dbg !3397
  store i64 %452, ptr %20, align 8, !dbg !3398, !tbaa !737
  %453 = add nsw i32 %447, -1, !dbg !3391
  store i32 %453, ptr %24, align 8, !dbg !3391, !tbaa !745
  %454 = icmp slt i32 %447, 34, !dbg !3399
  br i1 %454, label %455, label %465, !dbg !3400

455:                                              ; preds = %446
  %456 = zext i32 %453 to i64, !dbg !3401
  %457 = shl i64 %452, %456, !dbg !3401
  call void @llvm.dbg.value(metadata i64 %457, metadata !751, metadata !DIExpression()), !dbg !3402
  %458 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %457) #11, !dbg !3404, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %458, metadata !751, metadata !DIExpression()), !dbg !3402
  %459 = trunc i64 %458 to i32, !dbg !3405
  %460 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !3406
  %461 = load ptr, ptr %460, align 8, !dbg !3406, !tbaa !763
  store i32 %459, ptr %461, align 4, !dbg !3407, !tbaa !505
  %462 = load i32, ptr %24, align 8, !dbg !3408, !tbaa !745
  %463 = add nsw i32 %462, 32, !dbg !3408
  %464 = getelementptr inbounds i8, ptr %461, i64 4, !dbg !3409
  store ptr %464, ptr %460, align 8, !dbg !3409, !tbaa !763
  br label %465, !dbg !3410

465:                                              ; preds = %446, %455
  %466 = phi i32 [ %453, %446 ], [ %463, %455 ], !dbg !3411
  %467 = getelementptr inbounds %struct.x264_pps_t, ptr %1, i64 0, i32 13, !dbg !3413
  %468 = load i32, ptr %467, align 4, !dbg !3413, !tbaa !2899
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i32 1, metadata !730, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i32 %468, metadata !731, metadata !DIExpression()), !dbg !3414
  %469 = shl i64 %452, 1, !dbg !3415
  %470 = zext i32 %468 to i64, !dbg !3416
  %471 = or i64 %469, %470, !dbg !3417
  %472 = add nsw i32 %466, -1, !dbg !3411
  store i32 %472, ptr %24, align 8, !dbg !3411, !tbaa !745
  %473 = icmp slt i32 %466, 34, !dbg !3418
  br i1 %473, label %474, label %484, !dbg !3419

474:                                              ; preds = %465
  %475 = zext i32 %472 to i64, !dbg !3420
  %476 = shl i64 %471, %475, !dbg !3420
  call void @llvm.dbg.value(metadata i64 %476, metadata !751, metadata !DIExpression()), !dbg !3421
  %477 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %476) #11, !dbg !3423, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %477, metadata !751, metadata !DIExpression()), !dbg !3421
  %478 = trunc i64 %477 to i32, !dbg !3424
  %479 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !3425
  %480 = load ptr, ptr %479, align 8, !dbg !3425, !tbaa !763
  store i32 %478, ptr %480, align 4, !dbg !3426, !tbaa !505
  %481 = load i32, ptr %24, align 8, !dbg !3427, !tbaa !745
  %482 = add nsw i32 %481, 32, !dbg !3427
  %483 = getelementptr inbounds i8, ptr %480, i64 4, !dbg !3428
  store ptr %483, ptr %479, align 8, !dbg !3428, !tbaa !763
  br label %484, !dbg !3429

484:                                              ; preds = %465, %474
  %485 = phi i32 [ %472, %465 ], [ %482, %474 ], !dbg !3430
  %486 = getelementptr inbounds %struct.x264_pps_t, ptr %1, i64 0, i32 14, !dbg !3432
  %487 = load i32, ptr %486, align 8, !dbg !3432, !tbaa !2902
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !3433
  call void @llvm.dbg.value(metadata i32 1, metadata !730, metadata !DIExpression()), !dbg !3433
  call void @llvm.dbg.value(metadata i32 %487, metadata !731, metadata !DIExpression()), !dbg !3433
  %488 = shl i64 %471, 1, !dbg !3434
  %489 = zext i32 %487 to i64, !dbg !3435
  %490 = or i64 %488, %489, !dbg !3436
  %491 = add nsw i32 %485, -1, !dbg !3430
  store i32 %491, ptr %24, align 8, !dbg !3430, !tbaa !745
  %492 = icmp slt i32 %485, 34, !dbg !3437
  br i1 %492, label %493, label %503, !dbg !3438

493:                                              ; preds = %484
  %494 = zext i32 %491 to i64, !dbg !3439
  %495 = shl i64 %490, %494, !dbg !3439
  call void @llvm.dbg.value(metadata i64 %495, metadata !751, metadata !DIExpression()), !dbg !3440
  %496 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %495) #11, !dbg !3442, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %496, metadata !751, metadata !DIExpression()), !dbg !3440
  %497 = trunc i64 %496 to i32, !dbg !3443
  %498 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !3444
  %499 = load ptr, ptr %498, align 8, !dbg !3444, !tbaa !763
  store i32 %497, ptr %499, align 4, !dbg !3445, !tbaa !505
  %500 = load i32, ptr %24, align 8, !dbg !3446, !tbaa !745
  %501 = add nsw i32 %500, 32, !dbg !3446
  %502 = getelementptr inbounds i8, ptr %499, i64 4, !dbg !3447
  store ptr %502, ptr %498, align 8, !dbg !3447, !tbaa !763
  br label %503, !dbg !3448

503:                                              ; preds = %484, %493
  %504 = phi i32 [ %491, %484 ], [ %501, %493 ]
  %505 = getelementptr inbounds %struct.x264_pps_t, ptr %1, i64 0, i32 15, !dbg !3449
  %506 = load i32, ptr %505, align 4, !dbg !3449, !tbaa !2907
  %507 = icmp eq i32 %506, 0, !dbg !3451
  br i1 %507, label %508, label %512, !dbg !3452

508:                                              ; preds = %503
  %509 = getelementptr inbounds %struct.x264_pps_t, ptr %1, i64 0, i32 16, !dbg !3453
  %510 = load i32, ptr %509, align 8, !dbg !3453, !tbaa !2911
  %511 = icmp eq i32 %510, 0, !dbg !3454
  br i1 %511, label %626, label %512, !dbg !3455

512:                                              ; preds = %508, %503
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata i32 1, metadata !730, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata i32 %506, metadata !731, metadata !DIExpression()), !dbg !3456
  %513 = shl i64 %490, 1, !dbg !3459
  %514 = zext i32 %506 to i64, !dbg !3460
  %515 = or i64 %513, %514, !dbg !3461
  %516 = add nsw i32 %504, -1, !dbg !3462
  store i32 %516, ptr %24, align 8, !dbg !3462, !tbaa !745
  %517 = icmp slt i32 %504, 34, !dbg !3463
  br i1 %517, label %518, label %528, !dbg !3464

518:                                              ; preds = %512
  %519 = zext i32 %516 to i64, !dbg !3465
  %520 = shl i64 %515, %519, !dbg !3465
  call void @llvm.dbg.value(metadata i64 %520, metadata !751, metadata !DIExpression()), !dbg !3466
  %521 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %520) #11, !dbg !3468, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %521, metadata !751, metadata !DIExpression()), !dbg !3466
  %522 = trunc i64 %521 to i32, !dbg !3469
  %523 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !3470
  %524 = load ptr, ptr %523, align 8, !dbg !3470, !tbaa !763
  store i32 %522, ptr %524, align 4, !dbg !3471, !tbaa !505
  %525 = load i32, ptr %24, align 8, !dbg !3472, !tbaa !745
  %526 = add nsw i32 %525, 32, !dbg !3472
  %527 = getelementptr inbounds i8, ptr %524, i64 4, !dbg !3473
  store ptr %527, ptr %523, align 8, !dbg !3473, !tbaa !763
  br label %528, !dbg !3474

528:                                              ; preds = %512, %518
  %529 = phi i32 [ %516, %512 ], [ %526, %518 ], !dbg !3475
  %530 = getelementptr inbounds %struct.x264_pps_t, ptr %1, i64 0, i32 16, !dbg !3477
  %531 = load i32, ptr %530, align 8, !dbg !3477, !tbaa !2911
  %532 = icmp ne i32 %531, 0, !dbg !3478
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !3479
  call void @llvm.dbg.value(metadata i32 1, metadata !730, metadata !DIExpression()), !dbg !3479
  call void @llvm.dbg.value(metadata i1 %532, metadata !731, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3479
  %533 = shl i64 %515, 1, !dbg !3480
  %534 = zext i1 %532 to i64, !dbg !3481
  %535 = or i64 %533, %534, !dbg !3482
  store i64 %535, ptr %20, align 8, !dbg !3483, !tbaa !737
  %536 = add nsw i32 %529, -1, !dbg !3475
  store i32 %536, ptr %24, align 8, !dbg !3475, !tbaa !745
  %537 = icmp slt i32 %529, 34, !dbg !3484
  br i1 %537, label %538, label %549, !dbg !3485

538:                                              ; preds = %528
  %539 = zext i32 %536 to i64, !dbg !3486
  %540 = shl i64 %535, %539, !dbg !3486
  call void @llvm.dbg.value(metadata i64 %540, metadata !751, metadata !DIExpression()), !dbg !3487
  %541 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %540) #11, !dbg !3489, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %541, metadata !751, metadata !DIExpression()), !dbg !3487
  %542 = trunc i64 %541 to i32, !dbg !3490
  %543 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !3491
  %544 = load ptr, ptr %543, align 8, !dbg !3491, !tbaa !763
  store i32 %542, ptr %544, align 4, !dbg !3492, !tbaa !505
  %545 = load i32, ptr %24, align 8, !dbg !3493, !tbaa !745
  %546 = add nsw i32 %545, 32, !dbg !3493
  store i32 %546, ptr %24, align 8, !dbg !3493, !tbaa !745
  %547 = getelementptr inbounds i8, ptr %544, i64 4, !dbg !3494
  store ptr %547, ptr %543, align 8, !dbg !3494, !tbaa !763
  %548 = load i32, ptr %530, align 8, !dbg !3495, !tbaa !2911
  br label %549, !dbg !3497

549:                                              ; preds = %528, %538
  %550 = phi i32 [ %536, %528 ], [ %546, %538 ]
  %551 = phi i32 [ %531, %528 ], [ %548, %538 ], !dbg !3495
  %552 = icmp eq i32 %551, 0, !dbg !3498
  br i1 %552, label %592, label %553, !dbg !3499

553:                                              ; preds = %549
  tail call fastcc void @scaling_list_write(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0), !dbg !3500
  tail call fastcc void @scaling_list_write(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 2), !dbg !3502
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !3503
  call void @llvm.dbg.value(metadata i32 1, metadata !730, metadata !DIExpression()), !dbg !3503
  call void @llvm.dbg.value(metadata i32 0, metadata !731, metadata !DIExpression()), !dbg !3503
  %554 = load i64, ptr %20, align 8, !dbg !3505, !tbaa !737
  %555 = shl i64 %554, 1, !dbg !3506
  store i64 %555, ptr %20, align 8, !dbg !3507, !tbaa !737
  %556 = load i32, ptr %24, align 8, !dbg !3508, !tbaa !745
  %557 = add nsw i32 %556, -1, !dbg !3508
  store i32 %557, ptr %24, align 8, !dbg !3508, !tbaa !745
  %558 = icmp slt i32 %556, 34, !dbg !3509
  br i1 %558, label %559, label %569, !dbg !3510

559:                                              ; preds = %553
  %560 = zext i32 %557 to i64, !dbg !3511
  %561 = shl i64 %555, %560, !dbg !3511
  call void @llvm.dbg.value(metadata i64 %561, metadata !751, metadata !DIExpression()), !dbg !3512
  %562 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %561) #11, !dbg !3514, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %562, metadata !751, metadata !DIExpression()), !dbg !3512
  %563 = trunc i64 %562 to i32, !dbg !3515
  %564 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !3516
  %565 = load ptr, ptr %564, align 8, !dbg !3516, !tbaa !763
  store i32 %563, ptr %565, align 4, !dbg !3517, !tbaa !505
  %566 = load i32, ptr %24, align 8, !dbg !3518, !tbaa !745
  %567 = add nsw i32 %566, 32, !dbg !3518
  store i32 %567, ptr %24, align 8, !dbg !3518, !tbaa !745
  %568 = getelementptr inbounds i8, ptr %565, i64 4, !dbg !3519
  store ptr %568, ptr %564, align 8, !dbg !3519, !tbaa !763
  br label %569, !dbg !3520

569:                                              ; preds = %553, %559
  tail call fastcc void @scaling_list_write(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 1), !dbg !3521
  tail call fastcc void @scaling_list_write(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 3), !dbg !3522
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !3523
  call void @llvm.dbg.value(metadata i32 1, metadata !730, metadata !DIExpression()), !dbg !3523
  call void @llvm.dbg.value(metadata i32 0, metadata !731, metadata !DIExpression()), !dbg !3523
  %570 = load i64, ptr %20, align 8, !dbg !3525, !tbaa !737
  %571 = shl i64 %570, 1, !dbg !3526
  store i64 %571, ptr %20, align 8, !dbg !3527, !tbaa !737
  %572 = load i32, ptr %24, align 8, !dbg !3528, !tbaa !745
  %573 = add nsw i32 %572, -1, !dbg !3528
  store i32 %573, ptr %24, align 8, !dbg !3528, !tbaa !745
  %574 = icmp slt i32 %572, 34, !dbg !3529
  br i1 %574, label %575, label %585, !dbg !3530

575:                                              ; preds = %569
  %576 = zext i32 %573 to i64, !dbg !3531
  %577 = shl i64 %571, %576, !dbg !3531
  call void @llvm.dbg.value(metadata i64 %577, metadata !751, metadata !DIExpression()), !dbg !3532
  %578 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %577) #11, !dbg !3534, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %578, metadata !751, metadata !DIExpression()), !dbg !3532
  %579 = trunc i64 %578 to i32, !dbg !3535
  %580 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !3536
  %581 = load ptr, ptr %580, align 8, !dbg !3536, !tbaa !763
  store i32 %579, ptr %581, align 4, !dbg !3537, !tbaa !505
  %582 = load i32, ptr %24, align 8, !dbg !3538, !tbaa !745
  %583 = add nsw i32 %582, 32, !dbg !3538
  store i32 %583, ptr %24, align 8, !dbg !3538, !tbaa !745
  %584 = getelementptr inbounds i8, ptr %581, i64 4, !dbg !3539
  store ptr %584, ptr %580, align 8, !dbg !3539, !tbaa !763
  br label %585, !dbg !3540

585:                                              ; preds = %569, %575
  %586 = phi i32 [ %573, %569 ], [ %583, %575 ]
  %587 = load i32, ptr %505, align 4, !dbg !3541, !tbaa !2907
  %588 = icmp eq i32 %587, 0, !dbg !3543
  br i1 %588, label %592, label %589, !dbg !3544

589:                                              ; preds = %585
  tail call fastcc void @scaling_list_write(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 4), !dbg !3545
  tail call fastcc void @scaling_list_write(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 5), !dbg !3547
  %590 = load i64, ptr %20, align 8, !dbg !3548, !tbaa !737
  %591 = load i32, ptr %24, align 8, !dbg !3551, !tbaa !745
  br label %592, !dbg !3552

592:                                              ; preds = %585, %589, %549
  %593 = phi i32 [ %586, %585 ], [ %591, %589 ], [ %550, %549 ], !dbg !3551
  %594 = phi i64 [ %571, %585 ], [ %590, %589 ], [ %535, %549 ], !dbg !3548
  %595 = load i32, ptr %414, align 4, !dbg !3553, !tbaa !2893
  call void @llvm.dbg.value(metadata ptr %0, metadata !1228, metadata !DIExpression()), !dbg !3554
  call void @llvm.dbg.value(metadata i32 %595, metadata !1229, metadata !DIExpression()), !dbg !3554
  call void @llvm.dbg.value(metadata i32 0, metadata !1230, metadata !DIExpression()), !dbg !3554
  %596 = icmp slt i32 %595, 1, !dbg !3555
  %597 = mul i32 %595, -2, !dbg !3556
  %598 = or i32 %597, 1, !dbg !3556
  %599 = shl nsw i32 %595, 1, !dbg !3556
  %600 = select i1 %596, i32 %598, i32 %599, !dbg !3556
  call void @llvm.dbg.value(metadata i32 %600, metadata !1229, metadata !DIExpression()), !dbg !3554
  call void @llvm.dbg.value(metadata i32 %600, metadata !1231, metadata !DIExpression()), !dbg !3554
  %601 = icmp sgt i32 %600, 255, !dbg !3557
  %602 = lshr i32 %600, 8, !dbg !3558
  %603 = select i1 %601, i32 16, i32 0, !dbg !3558
  %604 = select i1 %601, i32 %602, i32 %600, !dbg !3558
  call void @llvm.dbg.value(metadata i32 %604, metadata !1231, metadata !DIExpression()), !dbg !3554
  call void @llvm.dbg.value(metadata i32 %603, metadata !1230, metadata !DIExpression()), !dbg !3554
  %605 = sext i32 %604 to i64, !dbg !3559
  %606 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %605, !dbg !3559
  %607 = load i8, ptr %606, align 1, !dbg !3559, !tbaa !883
  %608 = zext i8 %607 to i32, !dbg !3559
  %609 = add nuw nsw i32 %603, %608, !dbg !3560
  call void @llvm.dbg.value(metadata i32 %609, metadata !1230, metadata !DIExpression()), !dbg !3554
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !3561
  call void @llvm.dbg.value(metadata i32 %609, metadata !730, metadata !DIExpression()), !dbg !3561
  call void @llvm.dbg.value(metadata i32 %600, metadata !731, metadata !DIExpression()), !dbg !3561
  %610 = zext i32 %609 to i64, !dbg !3562
  %611 = shl i64 %594, %610, !dbg !3562
  %612 = zext i32 %600 to i64, !dbg !3563
  %613 = or i64 %611, %612, !dbg !3564
  %614 = sub nsw i32 %593, %609, !dbg !3551
  store i32 %614, ptr %24, align 8, !dbg !3551, !tbaa !745
  %615 = icmp slt i32 %614, 33, !dbg !3565
  br i1 %615, label %616, label %626, !dbg !3566

616:                                              ; preds = %592
  %617 = zext i32 %614 to i64, !dbg !3567
  %618 = shl i64 %613, %617, !dbg !3567
  call void @llvm.dbg.value(metadata i64 %618, metadata !751, metadata !DIExpression()), !dbg !3568
  %619 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %618) #11, !dbg !3570, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %619, metadata !751, metadata !DIExpression()), !dbg !3568
  %620 = trunc i64 %619 to i32, !dbg !3571
  %621 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !3572
  %622 = load ptr, ptr %621, align 8, !dbg !3572, !tbaa !763
  store i32 %620, ptr %622, align 4, !dbg !3573, !tbaa !505
  %623 = load i32, ptr %24, align 8, !dbg !3574, !tbaa !745
  %624 = add nsw i32 %623, 32, !dbg !3574
  %625 = getelementptr inbounds i8, ptr %622, i64 4, !dbg !3575
  store ptr %625, ptr %621, align 8, !dbg !3575, !tbaa !763
  br label %626, !dbg !3576

626:                                              ; preds = %616, %592, %508
  %627 = phi i32 [ %624, %616 ], [ %614, %592 ], [ %504, %508 ], !dbg !3577
  %628 = phi i64 [ %613, %616 ], [ %613, %592 ], [ %490, %508 ], !dbg !3580
  call void @llvm.dbg.value(metadata ptr %0, metadata !2788, metadata !DIExpression()), !dbg !3581
  call void @llvm.dbg.value(metadata ptr %0, metadata !1884, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.value(metadata i32 1, metadata !1889, metadata !DIExpression()), !dbg !3582
  %629 = shl i64 %628, 1, !dbg !3580
  %630 = or i64 %629, 1, !dbg !3583
  store i64 %630, ptr %20, align 8, !dbg !3583, !tbaa !737
  %631 = add nsw i32 %627, -1, !dbg !3577
  %632 = icmp eq i32 %631, 32, !dbg !3584
  br i1 %632, label %633, label %639, !dbg !3585

633:                                              ; preds = %626
  %634 = trunc i64 %630 to i32, !dbg !3586
  call void @llvm.dbg.value(metadata i32 %634, metadata !1901, metadata !DIExpression()), !dbg !3587
  %635 = tail call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %634) #11, !dbg !3589, !srcloc !1909
  call void @llvm.dbg.value(metadata i32 %635, metadata !1901, metadata !DIExpression()), !dbg !3587
  %636 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !3590
  %637 = load ptr, ptr %636, align 8, !dbg !3590, !tbaa !763
  store i32 %635, ptr %637, align 4, !dbg !3591, !tbaa !505
  %638 = getelementptr inbounds i8, ptr %637, i64 4, !dbg !3592
  store ptr %638, ptr %636, align 8, !dbg !3592, !tbaa !763
  br label %639, !dbg !3593

639:                                              ; preds = %626, %633
  %640 = phi i32 [ %631, %626 ], [ 64, %633 ], !dbg !3594
  call void @llvm.dbg.value(metadata ptr %0, metadata !2807, metadata !DIExpression()), !dbg !3596
  %641 = zext i32 %640 to i64, !dbg !3597
  %642 = shl i64 %630, %641, !dbg !3597
  call void @llvm.dbg.value(metadata i64 %642, metadata !751, metadata !DIExpression()), !dbg !3598
  %643 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %642) #11, !dbg !3600, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %643, metadata !751, metadata !DIExpression()), !dbg !3598
  %644 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !3601
  %645 = load ptr, ptr %644, align 8, !dbg !3601, !tbaa !763
  store i64 %643, ptr %645, align 8, !dbg !3602, !tbaa !2816
  %646 = sdiv i32 %640, -8, !dbg !3603
  %647 = add nsw i32 %646, 8, !dbg !3604
  %648 = sext i32 %647 to i64, !dbg !3604
  %649 = getelementptr inbounds i8, ptr %645, i64 %648, !dbg !3605
  store ptr %649, ptr %644, align 8, !dbg !3605, !tbaa !763
  store i32 64, ptr %24, align 8, !dbg !3606, !tbaa !745
  ret void, !dbg !3607
}

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @scaling_list_write(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #4 !dbg !3608 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3612, metadata !DIExpression()), !dbg !3625
  call void @llvm.dbg.value(metadata ptr %1, metadata !3613, metadata !DIExpression()), !dbg !3625
  call void @llvm.dbg.value(metadata i32 %2, metadata !3614, metadata !DIExpression()), !dbg !3625
  %4 = icmp slt i32 %2, 4, !dbg !3626
  %5 = select i1 %4, i32 16, i32 64, !dbg !3627
  call void @llvm.dbg.value(metadata i32 %5, metadata !3615, metadata !DIExpression()), !dbg !3625
  %6 = select i1 %4, ptr @x264_zigzag_scan4, ptr @x264_zigzag_scan8, !dbg !3628
  call void @llvm.dbg.value(metadata ptr %6, metadata !3617, metadata !DIExpression()), !dbg !3625
  %7 = zext i32 %2 to i64
  %8 = getelementptr inbounds %struct.x264_pps_t, ptr %1, i64 0, i32 17, i64 %7, !dbg !3629
  %9 = load ptr, ptr %8, align 8, !dbg !3629, !tbaa !2961
  call void @llvm.dbg.value(metadata ptr %9, metadata !3618, metadata !DIExpression()), !dbg !3625
  switch i32 %2, label %14 [
    i32 2, label %10
    i32 3, label %12
  ], !dbg !3630

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.x264_pps_t, ptr %1, i64 0, i32 17, !dbg !3631
  br label %16, !dbg !3630

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.x264_pps_t, ptr %1, i64 0, i32 17, i64 1, !dbg !3632
  br label %16, !dbg !3633

14:                                               ; preds = %3
  %15 = getelementptr inbounds [6 x ptr], ptr @x264_cqm_jvt, i64 0, i64 %7, !dbg !3634
  br label %16, !dbg !3633

16:                                               ; preds = %12, %14, %10
  %17 = phi ptr [ %11, %10 ], [ %13, %12 ], [ %15, %14 ]
  %18 = load ptr, ptr %17, align 8, !dbg !3630, !tbaa !2961
  call void @llvm.dbg.value(metadata ptr %18, metadata !3619, metadata !DIExpression()), !dbg !3625
  %19 = zext i32 %5 to i64
  %20 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %18, i64 %19), !dbg !3635
  %21 = icmp eq i32 %20, 0, !dbg !3635
  br i1 %21, label %22, label %37, !dbg !3636

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !3637
  call void @llvm.dbg.value(metadata i32 1, metadata !730, metadata !DIExpression()), !dbg !3637
  call void @llvm.dbg.value(metadata i32 0, metadata !731, metadata !DIExpression()), !dbg !3637
  %23 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 3, !dbg !3639
  %24 = load i64, ptr %23, align 8, !dbg !3639, !tbaa !737
  %25 = shl i64 %24, 1, !dbg !3640
  store i64 %25, ptr %23, align 8, !dbg !3641, !tbaa !737
  %26 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 4, !dbg !3642
  %27 = load i32, ptr %26, align 8, !dbg !3643, !tbaa !745
  %28 = add nsw i32 %27, -1, !dbg !3643
  store i32 %28, ptr %26, align 8, !dbg !3643, !tbaa !745
  %29 = icmp slt i32 %27, 34, !dbg !3644
  br i1 %29, label %30, label %282, !dbg !3645

30:                                               ; preds = %22
  %31 = zext i32 %28 to i64, !dbg !3646
  %32 = shl i64 %25, %31, !dbg !3646
  call void @llvm.dbg.value(metadata i64 %32, metadata !751, metadata !DIExpression()), !dbg !3647
  %33 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %32) #11, !dbg !3649, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %33, metadata !751, metadata !DIExpression()), !dbg !3647
  %34 = trunc i64 %33 to i32, !dbg !3650
  %35 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !3651
  %36 = load ptr, ptr %35, align 8, !dbg !3651, !tbaa !763
  store i32 %34, ptr %36, align 4, !dbg !3652, !tbaa !505
  br label %275, !dbg !3653

37:                                               ; preds = %16
  %38 = getelementptr inbounds [6 x ptr], ptr @x264_cqm_jvt, i64 0, i64 %7, !dbg !3654
  %39 = load ptr, ptr %38, align 8, !dbg !3654, !tbaa !2961
  %40 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %39, i64 %19), !dbg !3655
  %41 = icmp eq i32 %40, 0, !dbg !3655
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !3656
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !3659
  call void @llvm.dbg.value(metadata i32 1, metadata !730, metadata !DIExpression()), !dbg !3656
  call void @llvm.dbg.value(metadata i32 1, metadata !730, metadata !DIExpression()), !dbg !3659
  call void @llvm.dbg.value(metadata i32 1, metadata !731, metadata !DIExpression()), !dbg !3656
  call void @llvm.dbg.value(metadata i32 1, metadata !731, metadata !DIExpression()), !dbg !3659
  %42 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 3, !dbg !3661
  %43 = load i64, ptr %42, align 8, !dbg !3661, !tbaa !737
  %44 = shl i64 %43, 1, !dbg !3661
  %45 = or i64 %44, 1, !dbg !3661
  br i1 %41, label %46, label %74, !dbg !3662

46:                                               ; preds = %37
  %47 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 4, !dbg !3663
  %48 = load i32, ptr %47, align 8, !dbg !3664, !tbaa !745
  %49 = add nsw i32 %48, -1, !dbg !3664
  store i32 %49, ptr %47, align 8, !dbg !3664, !tbaa !745
  %50 = icmp slt i32 %48, 34, !dbg !3665
  br i1 %50, label %51, label %61, !dbg !3666

51:                                               ; preds = %46
  %52 = zext i32 %49 to i64, !dbg !3667
  %53 = shl i64 %45, %52, !dbg !3667
  call void @llvm.dbg.value(metadata i64 %53, metadata !751, metadata !DIExpression()), !dbg !3668
  %54 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %53) #11, !dbg !3670, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %54, metadata !751, metadata !DIExpression()), !dbg !3668
  %55 = trunc i64 %54 to i32, !dbg !3671
  %56 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !3672
  %57 = load ptr, ptr %56, align 8, !dbg !3672, !tbaa !763
  store i32 %55, ptr %57, align 4, !dbg !3673, !tbaa !505
  %58 = load i32, ptr %47, align 8, !dbg !3674, !tbaa !745
  %59 = add nsw i32 %58, 32, !dbg !3674
  %60 = getelementptr inbounds i8, ptr %57, i64 4, !dbg !3675
  store ptr %60, ptr %56, align 8, !dbg !3675, !tbaa !763
  br label %61, !dbg !3676

61:                                               ; preds = %46, %51
  %62 = phi i32 [ %49, %46 ], [ %59, %51 ], !dbg !3677
  call void @llvm.dbg.value(metadata ptr %0, metadata !1228, metadata !DIExpression()), !dbg !3680
  call void @llvm.dbg.value(metadata i32 17, metadata !1229, metadata !DIExpression()), !dbg !3680
  call void @llvm.dbg.value(metadata i32 17, metadata !1231, metadata !DIExpression()), !dbg !3680
  call void @llvm.dbg.value(metadata i32 9, metadata !1230, metadata !DIExpression()), !dbg !3680
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !3681
  call void @llvm.dbg.value(metadata i32 9, metadata !730, metadata !DIExpression()), !dbg !3681
  call void @llvm.dbg.value(metadata i32 17, metadata !731, metadata !DIExpression()), !dbg !3681
  %63 = shl i64 %45, 9, !dbg !3682
  %64 = or i64 %63, 17, !dbg !3683
  store i64 %64, ptr %42, align 8, !dbg !3684, !tbaa !737
  %65 = add nsw i32 %62, -9, !dbg !3677
  store i32 %65, ptr %47, align 8, !dbg !3677, !tbaa !745
  %66 = icmp slt i32 %62, 42, !dbg !3685
  br i1 %66, label %67, label %282, !dbg !3686

67:                                               ; preds = %61
  %68 = zext i32 %65 to i64, !dbg !3687
  %69 = shl i64 %64, %68, !dbg !3687
  call void @llvm.dbg.value(metadata i64 %69, metadata !751, metadata !DIExpression()), !dbg !3688
  %70 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %69) #11, !dbg !3690, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %70, metadata !751, metadata !DIExpression()), !dbg !3688
  %71 = trunc i64 %70 to i32, !dbg !3691
  %72 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !3692
  %73 = load ptr, ptr %72, align 8, !dbg !3692, !tbaa !763
  store i32 %71, ptr %73, align 4, !dbg !3693, !tbaa !505
  br label %275, !dbg !3694

74:                                               ; preds = %37
  store i64 %45, ptr %42, align 8, !dbg !3695, !tbaa !737
  %75 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 4, !dbg !3696
  %76 = load i32, ptr %75, align 8, !dbg !3697, !tbaa !745
  %77 = add nsw i32 %76, -1, !dbg !3697
  store i32 %77, ptr %75, align 8, !dbg !3697, !tbaa !745
  %78 = icmp slt i32 %76, 34, !dbg !3698
  br i1 %78, label %79, label %89, !dbg !3699

79:                                               ; preds = %74
  %80 = zext i32 %77 to i64, !dbg !3700
  %81 = shl i64 %45, %80, !dbg !3700
  call void @llvm.dbg.value(metadata i64 %81, metadata !751, metadata !DIExpression()), !dbg !3701
  %82 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %81) #11, !dbg !3703, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %82, metadata !751, metadata !DIExpression()), !dbg !3701
  %83 = trunc i64 %82 to i32, !dbg !3704
  %84 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !3705
  %85 = load ptr, ptr %84, align 8, !dbg !3705, !tbaa !763
  store i32 %83, ptr %85, align 4, !dbg !3706, !tbaa !505
  %86 = load i32, ptr %75, align 8, !dbg !3707, !tbaa !745
  %87 = add nsw i32 %86, 32, !dbg !3707
  store i32 %87, ptr %75, align 8, !dbg !3707, !tbaa !745
  %88 = getelementptr inbounds i8, ptr %85, i64 4, !dbg !3708
  store ptr %88, ptr %84, align 8, !dbg !3708, !tbaa !763
  br label %89, !dbg !3709

89:                                               ; preds = %74, %79
  %90 = phi i32 [ %77, %74 ], [ %87, %79 ]
  call void @llvm.dbg.value(metadata i32 %5, metadata !3624, metadata !DIExpression()), !dbg !3710
  br label %91, !dbg !3711

91:                                               ; preds = %94, %89
  %92 = phi i64 [ %95, %94 ], [ %19, %89 ], !dbg !3713
  call void @llvm.dbg.value(metadata i64 %92, metadata !3624, metadata !DIExpression()), !dbg !3710
  %93 = icmp sgt i64 %92, 1, !dbg !3714
  br i1 %93, label %94, label %113, !dbg !3716

94:                                               ; preds = %91
  %95 = add nsw i64 %92, -1, !dbg !3717
  %96 = and i64 %95, 4294967295
  %97 = getelementptr inbounds i8, ptr %6, i64 %96, !dbg !3719
  %98 = load i8, ptr %97, align 1, !dbg !3719, !tbaa !883
  %99 = zext i8 %98 to i64, !dbg !3720
  %100 = getelementptr inbounds i8, ptr %9, i64 %99, !dbg !3720
  %101 = load i8, ptr %100, align 1, !dbg !3720, !tbaa !883
  %102 = add nuw i64 %92, 4294967294
  %103 = and i64 %102, 4294967295
  %104 = getelementptr inbounds i8, ptr %6, i64 %103, !dbg !3721
  %105 = load i8, ptr %104, align 1, !dbg !3721, !tbaa !883
  %106 = zext i8 %105 to i64, !dbg !3722
  %107 = getelementptr inbounds i8, ptr %9, i64 %106, !dbg !3722
  %108 = load i8, ptr %107, align 1, !dbg !3722, !tbaa !883
  %109 = icmp eq i8 %101, %108, !dbg !3723
  br i1 %109, label %91, label %110, !dbg !3724, !llvm.loop !3725

110:                                              ; preds = %94
  %111 = trunc i64 %92 to i32, !dbg !3716
  %112 = icmp sgt i32 %5, %111, !dbg !3727
  br i1 %112, label %113, label %140, !dbg !3729

113:                                              ; preds = %91, %110
  %114 = phi i32 [ %111, %110 ], [ 1, %91 ]
  %115 = sub nsw i32 %5, %114, !dbg !3730
  %116 = sext i32 %114 to i64, !dbg !3731
  %117 = getelementptr inbounds i8, ptr %6, i64 %116, !dbg !3731
  %118 = load i8, ptr %117, align 1, !dbg !3731, !tbaa !883
  %119 = zext i8 %118 to i64, !dbg !3732
  %120 = getelementptr inbounds i8, ptr %9, i64 %119, !dbg !3732
  %121 = load i8, ptr %120, align 1, !dbg !3732, !tbaa !883
  %122 = sub i8 0, %121, !dbg !3733
  %123 = sext i8 %122 to i32, !dbg !3734
  call void @llvm.dbg.value(metadata i32 %123, metadata !3735, metadata !DIExpression()), !dbg !3740
  %124 = icmp slt i8 %122, 1, !dbg !3742
  %125 = mul nsw i32 %123, -2, !dbg !3743
  %126 = shl nsw i32 %123, 1, !dbg !3743
  %127 = add nsw i32 %126, -1, !dbg !3743
  %128 = select i1 %124, i32 %125, i32 %127, !dbg !3743
  call void @llvm.dbg.value(metadata i32 %128, metadata !3744, metadata !DIExpression()), !dbg !3749
  %129 = icmp ult i32 %128, 255, !dbg !3751
  br i1 %129, label %130, label %136, !dbg !3753

130:                                              ; preds = %113
  %131 = add nuw nsw i32 %128, 1, !dbg !3754
  %132 = zext i32 %131 to i64, !dbg !3755
  %133 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %132, !dbg !3755
  %134 = load i8, ptr %133, align 1, !dbg !3755, !tbaa !883
  %135 = zext i8 %134 to i32, !dbg !3755
  br label %136, !dbg !3756

136:                                              ; preds = %113, %130
  %137 = phi i32 [ %135, %130 ], [ 17, %113 ], !dbg !3757
  %138 = icmp slt i32 %115, %137, !dbg !3758
  %139 = select i1 %138, i32 %5, i32 %114, !dbg !3759
  br label %140, !dbg !3759

140:                                              ; preds = %136, %110
  %141 = phi i32 [ %111, %110 ], [ %139, %136 ], !dbg !3710
  call void @llvm.dbg.value(metadata i32 %141, metadata !3624, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata i32 0, metadata !3620, metadata !DIExpression()), !dbg !3710
  %142 = icmp sgt i32 %141, 0, !dbg !3760
  br i1 %142, label %143, label %235, !dbg !3763

143:                                              ; preds = %140
  %144 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1
  %145 = zext i32 %141 to i64, !dbg !3760
  call void @llvm.dbg.value(metadata i64 0, metadata !3620, metadata !DIExpression()), !dbg !3710
  %146 = load i8, ptr %6, align 16, !dbg !3764, !tbaa !883
  %147 = zext i8 %146 to i64, !dbg !3765
  %148 = getelementptr inbounds i8, ptr %9, i64 %147, !dbg !3765
  %149 = load i8, ptr %148, align 1, !dbg !3765, !tbaa !883
  %150 = add i8 %149, -8, !dbg !3766
  %151 = sext i8 %150 to i32, !dbg !3767
  call void @llvm.dbg.value(metadata ptr %0, metadata !1228, metadata !DIExpression()), !dbg !3768
  call void @llvm.dbg.value(metadata i32 %151, metadata !1229, metadata !DIExpression()), !dbg !3768
  call void @llvm.dbg.value(metadata i32 0, metadata !1230, metadata !DIExpression()), !dbg !3768
  %152 = icmp slt i8 %150, 1, !dbg !3770
  %153 = mul nsw i32 %151, -2, !dbg !3771
  %154 = or i32 %153, 1, !dbg !3771
  %155 = shl nsw i32 %151, 1, !dbg !3771
  %156 = select i1 %152, i32 %154, i32 %155, !dbg !3771
  call void @llvm.dbg.value(metadata i32 %156, metadata !1229, metadata !DIExpression()), !dbg !3768
  call void @llvm.dbg.value(metadata i32 %156, metadata !1231, metadata !DIExpression()), !dbg !3768
  %157 = icmp sgt i32 %156, 255, !dbg !3772
  %158 = lshr i32 %156, 8, !dbg !3773
  %159 = select i1 %157, i32 16, i32 0, !dbg !3773
  %160 = select i1 %157, i32 %158, i32 %156, !dbg !3773
  call void @llvm.dbg.value(metadata i32 %160, metadata !1231, metadata !DIExpression()), !dbg !3768
  call void @llvm.dbg.value(metadata i32 %159, metadata !1230, metadata !DIExpression()), !dbg !3768
  %161 = sext i32 %160 to i64, !dbg !3774
  %162 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %161, !dbg !3774
  %163 = load i8, ptr %162, align 1, !dbg !3774, !tbaa !883
  %164 = zext i8 %163 to i32, !dbg !3774
  %165 = add nuw nsw i32 %159, %164, !dbg !3775
  call void @llvm.dbg.value(metadata i32 %165, metadata !1230, metadata !DIExpression()), !dbg !3768
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata i32 %165, metadata !730, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata i32 %156, metadata !731, metadata !DIExpression()), !dbg !3776
  %166 = zext i32 %165 to i64, !dbg !3778
  %167 = shl i64 %45, %166, !dbg !3778
  %168 = zext i32 %156 to i64, !dbg !3779
  %169 = or i64 %167, %168, !dbg !3780
  store i64 %169, ptr %42, align 8, !dbg !3781, !tbaa !737
  %170 = sub nsw i32 %90, %165, !dbg !3782
  store i32 %170, ptr %75, align 8, !dbg !3782, !tbaa !745
  %171 = icmp slt i32 %170, 33, !dbg !3783
  br i1 %171, label %172, label %181, !dbg !3784

172:                                              ; preds = %143
  %173 = zext i32 %170 to i64, !dbg !3785
  %174 = shl i64 %169, %173, !dbg !3785
  call void @llvm.dbg.value(metadata i64 %174, metadata !751, metadata !DIExpression()), !dbg !3786
  %175 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %174) #11, !dbg !3788, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %175, metadata !751, metadata !DIExpression()), !dbg !3786
  %176 = trunc i64 %175 to i32, !dbg !3789
  %177 = load ptr, ptr %144, align 8, !dbg !3790, !tbaa !763
  store i32 %176, ptr %177, align 4, !dbg !3791, !tbaa !505
  %178 = load i32, ptr %75, align 8, !dbg !3792, !tbaa !745
  %179 = add nsw i32 %178, 32, !dbg !3792
  store i32 %179, ptr %75, align 8, !dbg !3792, !tbaa !745
  %180 = getelementptr inbounds i8, ptr %177, i64 4, !dbg !3793
  store ptr %180, ptr %144, align 8, !dbg !3793, !tbaa !763
  br label %181, !dbg !3794

181:                                              ; preds = %172, %143
  %182 = phi i32 [ %179, %172 ], [ %170, %143 ]
  call void @llvm.dbg.value(metadata i64 1, metadata !3620, metadata !DIExpression()), !dbg !3710
  %183 = icmp eq i32 %141, 1, !dbg !3760
  br i1 %183, label %235, label %184, !dbg !3763

184:                                              ; preds = %181, %231
  %185 = phi i32 [ %232, %231 ], [ %182, %181 ]
  %186 = phi i64 [ %233, %231 ], [ 1, %181 ]
  %187 = phi i64 [ %219, %231 ], [ %169, %181 ]
  call void @llvm.dbg.value(metadata i64 %186, metadata !3620, metadata !DIExpression()), !dbg !3710
  %188 = getelementptr inbounds i8, ptr %6, i64 %186, !dbg !3764
  %189 = load i8, ptr %188, align 1, !dbg !3764, !tbaa !883
  %190 = zext i8 %189 to i64, !dbg !3765
  %191 = getelementptr inbounds i8, ptr %9, i64 %190, !dbg !3765
  %192 = load i8, ptr %191, align 1, !dbg !3765, !tbaa !883
  %193 = add nuw i64 %186, 4294967295
  %194 = and i64 %193, 4294967295
  %195 = getelementptr inbounds i8, ptr %6, i64 %194, !dbg !3795
  %196 = load i8, ptr %195, align 1, !dbg !3795, !tbaa !883
  %197 = zext i8 %196 to i64, !dbg !3796
  %198 = getelementptr inbounds i8, ptr %9, i64 %197, !dbg !3796
  %199 = load i8, ptr %198, align 1, !dbg !3796, !tbaa !883
  %200 = sub i8 %192, %199, !dbg !3766
  %201 = sext i8 %200 to i32, !dbg !3767
  call void @llvm.dbg.value(metadata ptr %0, metadata !1228, metadata !DIExpression()), !dbg !3768
  call void @llvm.dbg.value(metadata i32 %201, metadata !1229, metadata !DIExpression()), !dbg !3768
  call void @llvm.dbg.value(metadata i32 0, metadata !1230, metadata !DIExpression()), !dbg !3768
  %202 = icmp slt i8 %200, 1, !dbg !3770
  %203 = mul nsw i32 %201, -2, !dbg !3771
  %204 = or i32 %203, 1, !dbg !3771
  %205 = shl nsw i32 %201, 1, !dbg !3771
  %206 = select i1 %202, i32 %204, i32 %205, !dbg !3771
  call void @llvm.dbg.value(metadata i32 %206, metadata !1229, metadata !DIExpression()), !dbg !3768
  call void @llvm.dbg.value(metadata i32 %206, metadata !1231, metadata !DIExpression()), !dbg !3768
  %207 = icmp sgt i32 %206, 255, !dbg !3772
  %208 = lshr i32 %206, 8, !dbg !3773
  %209 = select i1 %207, i32 16, i32 0, !dbg !3773
  %210 = select i1 %207, i32 %208, i32 %206, !dbg !3773
  call void @llvm.dbg.value(metadata i32 %210, metadata !1231, metadata !DIExpression()), !dbg !3768
  call void @llvm.dbg.value(metadata i32 %209, metadata !1230, metadata !DIExpression()), !dbg !3768
  %211 = sext i32 %210 to i64, !dbg !3774
  %212 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %211, !dbg !3774
  %213 = load i8, ptr %212, align 1, !dbg !3774, !tbaa !883
  %214 = zext i8 %213 to i32, !dbg !3774
  %215 = add nuw nsw i32 %209, %214, !dbg !3775
  call void @llvm.dbg.value(metadata i32 %215, metadata !1230, metadata !DIExpression()), !dbg !3768
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata i32 %215, metadata !730, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata i32 %206, metadata !731, metadata !DIExpression()), !dbg !3776
  %216 = zext i32 %215 to i64, !dbg !3778
  %217 = shl i64 %187, %216, !dbg !3778
  %218 = zext i32 %206 to i64, !dbg !3779
  %219 = or i64 %217, %218, !dbg !3780
  store i64 %219, ptr %42, align 8, !dbg !3781, !tbaa !737
  %220 = sub nsw i32 %185, %215, !dbg !3782
  store i32 %220, ptr %75, align 8, !dbg !3782, !tbaa !745
  %221 = icmp slt i32 %220, 33, !dbg !3783
  br i1 %221, label %222, label %231, !dbg !3784

222:                                              ; preds = %184
  %223 = zext i32 %220 to i64, !dbg !3785
  %224 = shl i64 %219, %223, !dbg !3785
  call void @llvm.dbg.value(metadata i64 %224, metadata !751, metadata !DIExpression()), !dbg !3786
  %225 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %224) #11, !dbg !3788, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %225, metadata !751, metadata !DIExpression()), !dbg !3786
  %226 = trunc i64 %225 to i32, !dbg !3789
  %227 = load ptr, ptr %144, align 8, !dbg !3790, !tbaa !763
  store i32 %226, ptr %227, align 4, !dbg !3791, !tbaa !505
  %228 = load i32, ptr %75, align 8, !dbg !3792, !tbaa !745
  %229 = add nsw i32 %228, 32, !dbg !3792
  store i32 %229, ptr %75, align 8, !dbg !3792, !tbaa !745
  %230 = getelementptr inbounds i8, ptr %227, i64 4, !dbg !3793
  store ptr %230, ptr %144, align 8, !dbg !3793, !tbaa !763
  br label %231, !dbg !3794

231:                                              ; preds = %184, %222
  %232 = phi i32 [ %220, %184 ], [ %229, %222 ]
  %233 = add nuw nsw i64 %186, 1, !dbg !3797
  call void @llvm.dbg.value(metadata i64 %233, metadata !3620, metadata !DIExpression()), !dbg !3710
  %234 = icmp eq i64 %233, %145, !dbg !3760
  br i1 %234, label %235, label %184, !dbg !3763, !llvm.loop !3798

235:                                              ; preds = %231, %181, %140
  %236 = phi i32 [ %90, %140 ], [ %182, %181 ], [ %232, %231 ]
  %237 = phi i64 [ %45, %140 ], [ %169, %181 ], [ %219, %231 ]
  %238 = icmp slt i32 %141, %5, !dbg !3801
  br i1 %238, label %239, label %282, !dbg !3803

239:                                              ; preds = %235
  %240 = sext i32 %141 to i64, !dbg !3804
  %241 = getelementptr inbounds i8, ptr %6, i64 %240, !dbg !3804
  %242 = load i8, ptr %241, align 1, !dbg !3804, !tbaa !883
  %243 = zext i8 %242 to i64, !dbg !3805
  %244 = getelementptr inbounds i8, ptr %9, i64 %243, !dbg !3805
  %245 = load i8, ptr %244, align 1, !dbg !3805, !tbaa !883
  %246 = sub i8 0, %245, !dbg !3806
  %247 = sext i8 %246 to i32, !dbg !3807
  call void @llvm.dbg.value(metadata ptr %0, metadata !1228, metadata !DIExpression()), !dbg !3808
  call void @llvm.dbg.value(metadata i32 %247, metadata !1229, metadata !DIExpression()), !dbg !3808
  call void @llvm.dbg.value(metadata i32 0, metadata !1230, metadata !DIExpression()), !dbg !3808
  %248 = icmp slt i8 %246, 1, !dbg !3810
  %249 = mul nsw i32 %247, -2, !dbg !3811
  %250 = or i32 %249, 1, !dbg !3811
  %251 = shl nsw i32 %247, 1, !dbg !3811
  %252 = select i1 %248, i32 %250, i32 %251, !dbg !3811
  call void @llvm.dbg.value(metadata i32 %252, metadata !1229, metadata !DIExpression()), !dbg !3808
  call void @llvm.dbg.value(metadata i32 %252, metadata !1231, metadata !DIExpression()), !dbg !3808
  %253 = icmp sgt i32 %252, 255, !dbg !3812
  %254 = lshr i32 %252, 8, !dbg !3813
  %255 = select i1 %253, i32 16, i32 0, !dbg !3813
  %256 = select i1 %253, i32 %254, i32 %252, !dbg !3813
  call void @llvm.dbg.value(metadata i32 %256, metadata !1231, metadata !DIExpression()), !dbg !3808
  call void @llvm.dbg.value(metadata i32 %255, metadata !1230, metadata !DIExpression()), !dbg !3808
  %257 = sext i32 %256 to i64, !dbg !3814
  %258 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %257, !dbg !3814
  %259 = load i8, ptr %258, align 1, !dbg !3814, !tbaa !883
  %260 = zext i8 %259 to i32, !dbg !3814
  %261 = add nuw nsw i32 %255, %260, !dbg !3815
  call void @llvm.dbg.value(metadata i32 %261, metadata !1230, metadata !DIExpression()), !dbg !3808
  call void @llvm.dbg.value(metadata ptr %0, metadata !725, metadata !DIExpression()), !dbg !3816
  call void @llvm.dbg.value(metadata i32 %261, metadata !730, metadata !DIExpression()), !dbg !3816
  call void @llvm.dbg.value(metadata i32 %252, metadata !731, metadata !DIExpression()), !dbg !3816
  %262 = zext i32 %261 to i64, !dbg !3818
  %263 = shl i64 %237, %262, !dbg !3818
  %264 = zext i32 %252 to i64, !dbg !3819
  %265 = or i64 %263, %264, !dbg !3820
  store i64 %265, ptr %42, align 8, !dbg !3821, !tbaa !737
  %266 = sub nsw i32 %236, %261, !dbg !3822
  store i32 %266, ptr %75, align 8, !dbg !3822, !tbaa !745
  %267 = icmp slt i32 %266, 33, !dbg !3823
  br i1 %267, label %268, label %282, !dbg !3824

268:                                              ; preds = %239
  %269 = zext i32 %266 to i64, !dbg !3825
  %270 = shl i64 %265, %269, !dbg !3825
  call void @llvm.dbg.value(metadata i64 %270, metadata !751, metadata !DIExpression()), !dbg !3826
  %271 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %270) #11, !dbg !3828, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %271, metadata !751, metadata !DIExpression()), !dbg !3826
  %272 = trunc i64 %271 to i32, !dbg !3829
  %273 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1, !dbg !3830
  %274 = load ptr, ptr %273, align 8, !dbg !3830, !tbaa !763
  store i32 %272, ptr %274, align 4, !dbg !3831, !tbaa !505
  br label %275, !dbg !3832

275:                                              ; preds = %30, %67, %268
  %276 = phi ptr [ %75, %268 ], [ %47, %67 ], [ %26, %30 ]
  %277 = phi ptr [ %274, %268 ], [ %73, %67 ], [ %36, %30 ]
  %278 = phi ptr [ %273, %268 ], [ %72, %67 ], [ %35, %30 ]
  %279 = load i32, ptr %276, align 8, !dbg !3833, !tbaa !745
  %280 = add nsw i32 %279, 32, !dbg !3833
  store i32 %280, ptr %276, align 8, !dbg !3833, !tbaa !745
  %281 = getelementptr inbounds i8, ptr %277, i64 4, !dbg !3833
  store ptr %281, ptr %278, align 8, !dbg !3833, !tbaa !763
  br label %282, !dbg !3834

282:                                              ; preds = %275, %239, %61, %22, %235
  ret void, !dbg !3834
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_sei_version_write(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #5 !dbg !3835 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4669, metadata !DIExpression()), !dbg !4676
  call void @llvm.dbg.value(metadata ptr %1, metadata !4670, metadata !DIExpression()), !dbg !4676
  call void @llvm.dbg.declare(metadata ptr @__const.x264_sei_version_write.uuid, metadata !4672, metadata !DIExpression()), !dbg !4677
  %3 = tail call ptr @x264_param2string(ptr noundef %0, i32 noundef 0) #12, !dbg !4678
  call void @llvm.dbg.value(metadata ptr %3, metadata !4673, metadata !DIExpression()), !dbg !4676
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #13, !dbg !4679
  %5 = trunc i64 %4 to i32, !dbg !4680
  %6 = add i32 %5, 200, !dbg !4680
  %7 = tail call ptr @x264_malloc(i32 noundef %6) #12, !dbg !4681
  call void @llvm.dbg.value(metadata ptr %7, metadata !4674, metadata !DIExpression()), !dbg !4676
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 65, ptr noundef nonnull @.str.1, ptr noundef %3) #12, !dbg !4682
  %9 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #13, !dbg !4683
  %10 = trunc i64 %9 to i32, !dbg !4683
  %11 = add i32 %10, 17, !dbg !4683
  call void @llvm.dbg.value(metadata i32 %11, metadata !4675, metadata !DIExpression()), !dbg !4676
  call void @llvm.dbg.value(metadata ptr %1, metadata !725, metadata !DIExpression()), !dbg !4684
  call void @llvm.dbg.value(metadata i32 8, metadata !730, metadata !DIExpression()), !dbg !4684
  call void @llvm.dbg.value(metadata i32 5, metadata !731, metadata !DIExpression()), !dbg !4684
  %12 = getelementptr inbounds %struct.bs_s, ptr %1, i64 0, i32 3, !dbg !4686
  %13 = load i64, ptr %12, align 8, !dbg !4686, !tbaa !737
  %14 = shl i64 %13, 8, !dbg !4687
  %15 = or i64 %14, 5, !dbg !4688
  %16 = getelementptr inbounds %struct.bs_s, ptr %1, i64 0, i32 4, !dbg !4689
  %17 = load i32, ptr %16, align 8, !dbg !4690, !tbaa !745
  %18 = add nsw i32 %17, -8, !dbg !4690
  store i32 %18, ptr %16, align 8, !dbg !4690, !tbaa !745
  %19 = icmp slt i32 %17, 41, !dbg !4691
  br i1 %19, label %20, label %30, !dbg !4692

20:                                               ; preds = %2
  %21 = zext i32 %18 to i64, !dbg !4693
  %22 = shl i64 %15, %21, !dbg !4693
  call void @llvm.dbg.value(metadata i64 %22, metadata !751, metadata !DIExpression()), !dbg !4694
  %23 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %22) #11, !dbg !4696, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %23, metadata !751, metadata !DIExpression()), !dbg !4694
  %24 = trunc i64 %23 to i32, !dbg !4697
  %25 = getelementptr inbounds %struct.bs_s, ptr %1, i64 0, i32 1, !dbg !4698
  %26 = load ptr, ptr %25, align 8, !dbg !4698, !tbaa !763
  store i32 %24, ptr %26, align 4, !dbg !4699, !tbaa !505
  %27 = load i32, ptr %16, align 8, !dbg !4700, !tbaa !745
  %28 = add nsw i32 %27, 32, !dbg !4700
  %29 = getelementptr inbounds i8, ptr %26, i64 4, !dbg !4701
  store ptr %29, ptr %25, align 8, !dbg !4701, !tbaa !763
  br label %30, !dbg !4702

30:                                               ; preds = %2, %20
  %31 = phi i32 [ %18, %2 ], [ %28, %20 ]
  call void @llvm.dbg.value(metadata i32 0, metadata !4671, metadata !DIExpression()), !dbg !4676
  %32 = add i32 %10, -238
  call void @llvm.dbg.value(metadata i32 0, metadata !4671, metadata !DIExpression()), !dbg !4676
  %33 = icmp slt i32 %32, 0, !dbg !4703
  br i1 %33, label %57, label %34, !dbg !4706

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.bs_s, ptr %1, i64 0, i32 1
  br label %36, !dbg !4706

36:                                               ; preds = %34, %53
  %37 = phi i32 [ %31, %34 ], [ %54, %53 ], !dbg !4707
  %38 = phi i64 [ %15, %34 ], [ %41, %53 ], !dbg !4676
  %39 = phi i32 [ 0, %34 ], [ %55, %53 ]
  call void @llvm.dbg.value(metadata i32 %39, metadata !4671, metadata !DIExpression()), !dbg !4676
  call void @llvm.dbg.value(metadata ptr %1, metadata !725, metadata !DIExpression()), !dbg !4709
  call void @llvm.dbg.value(metadata i32 8, metadata !730, metadata !DIExpression()), !dbg !4709
  call void @llvm.dbg.value(metadata i32 255, metadata !731, metadata !DIExpression()), !dbg !4709
  %40 = shl i64 %38, 8, !dbg !4710
  %41 = or i64 %40, 255, !dbg !4711
  store i64 %41, ptr %12, align 8, !dbg !4712, !tbaa !737
  %42 = add nsw i32 %37, -8, !dbg !4707
  store i32 %42, ptr %16, align 8, !dbg !4707, !tbaa !745
  %43 = icmp slt i32 %37, 41, !dbg !4713
  br i1 %43, label %44, label %53, !dbg !4714

44:                                               ; preds = %36
  %45 = zext i32 %42 to i64, !dbg !4715
  %46 = shl i64 %41, %45, !dbg !4715
  call void @llvm.dbg.value(metadata i64 %46, metadata !751, metadata !DIExpression()), !dbg !4716
  %47 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %46) #11, !dbg !4718, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %47, metadata !751, metadata !DIExpression()), !dbg !4716
  %48 = trunc i64 %47 to i32, !dbg !4719
  %49 = load ptr, ptr %35, align 8, !dbg !4720, !tbaa !763
  store i32 %48, ptr %49, align 4, !dbg !4721, !tbaa !505
  %50 = load i32, ptr %16, align 8, !dbg !4722, !tbaa !745
  %51 = add nsw i32 %50, 32, !dbg !4722
  store i32 %51, ptr %16, align 8, !dbg !4722, !tbaa !745
  %52 = getelementptr inbounds i8, ptr %49, i64 4, !dbg !4723
  store ptr %52, ptr %35, align 8, !dbg !4723, !tbaa !763
  br label %53, !dbg !4724

53:                                               ; preds = %36, %44
  %54 = phi i32 [ %42, %36 ], [ %51, %44 ]
  %55 = add nuw nsw i32 %39, 255, !dbg !4725
  call void @llvm.dbg.value(metadata i32 %55, metadata !4671, metadata !DIExpression()), !dbg !4676
  %56 = icmp sgt i32 %55, %32, !dbg !4703
  br i1 %56, label %57, label %36, !dbg !4706, !llvm.loop !4726

57:                                               ; preds = %53, %30
  %58 = phi i32 [ %31, %30 ], [ %54, %53 ], !dbg !4728
  %59 = phi i64 [ %15, %30 ], [ %41, %53 ], !dbg !4730
  %60 = phi i32 [ 0, %30 ], [ %55, %53 ], !dbg !4731
  %61 = sub i32 %11, %60, !dbg !4732
  call void @llvm.dbg.value(metadata ptr %1, metadata !725, metadata !DIExpression()), !dbg !4733
  call void @llvm.dbg.value(metadata i32 8, metadata !730, metadata !DIExpression()), !dbg !4733
  call void @llvm.dbg.value(metadata i32 %61, metadata !731, metadata !DIExpression()), !dbg !4733
  %62 = shl i64 %59, 8, !dbg !4734
  %63 = zext i32 %61 to i64, !dbg !4735
  %64 = or i64 %62, %63, !dbg !4736
  %65 = add nsw i32 %58, -8, !dbg !4728
  store i32 %65, ptr %16, align 8, !dbg !4728, !tbaa !745
  %66 = icmp slt i32 %58, 41, !dbg !4737
  br i1 %66, label %67, label %77, !dbg !4738

67:                                               ; preds = %57
  %68 = zext i32 %65 to i64, !dbg !4739
  %69 = shl i64 %64, %68, !dbg !4739
  call void @llvm.dbg.value(metadata i64 %69, metadata !751, metadata !DIExpression()), !dbg !4740
  %70 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %69) #11, !dbg !4742, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %70, metadata !751, metadata !DIExpression()), !dbg !4740
  %71 = trunc i64 %70 to i32, !dbg !4743
  %72 = getelementptr inbounds %struct.bs_s, ptr %1, i64 0, i32 1, !dbg !4744
  %73 = load ptr, ptr %72, align 8, !dbg !4744, !tbaa !763
  store i32 %71, ptr %73, align 4, !dbg !4745, !tbaa !505
  %74 = load i32, ptr %16, align 8, !dbg !4746, !tbaa !745
  %75 = add nsw i32 %74, 32, !dbg !4746
  %76 = getelementptr inbounds i8, ptr %73, i64 4, !dbg !4747
  store ptr %76, ptr %72, align 8, !dbg !4747, !tbaa !763
  br label %77, !dbg !4748

77:                                               ; preds = %57, %67
  %78 = phi i32 [ %65, %57 ], [ %75, %67 ]
  call void @llvm.dbg.value(metadata i32 0, metadata !4671, metadata !DIExpression()), !dbg !4676
  %79 = getelementptr inbounds %struct.bs_s, ptr %1, i64 0, i32 1
  br label %85, !dbg !4749

80:                                               ; preds = %105
  call void @llvm.dbg.value(metadata i32 0, metadata !4671, metadata !DIExpression()), !dbg !4676
  %81 = icmp ult i32 %10, 2147483647, !dbg !4751
  br i1 %81, label %82, label %134, !dbg !4754

82:                                               ; preds = %80
  %83 = add i64 %9, 1
  %84 = and i64 %83, 4294967295, !dbg !4751
  br label %109, !dbg !4754

85:                                               ; preds = %77, %105
  %86 = phi i32 [ %78, %77 ], [ %106, %105 ], !dbg !4755
  %87 = phi i64 [ 0, %77 ], [ %107, %105 ]
  %88 = phi i64 [ %64, %77 ], [ %93, %105 ]
  call void @llvm.dbg.value(metadata i64 %87, metadata !4671, metadata !DIExpression()), !dbg !4676
  %89 = getelementptr inbounds [16 x i8], ptr @__const.x264_sei_version_write.uuid, i64 0, i64 %87, !dbg !4758
  %90 = load i8, ptr %89, align 1, !dbg !4758, !tbaa !883
  call void @llvm.dbg.value(metadata ptr %1, metadata !725, metadata !DIExpression()), !dbg !4759
  call void @llvm.dbg.value(metadata i32 8, metadata !730, metadata !DIExpression()), !dbg !4759
  call void @llvm.dbg.value(metadata i8 %90, metadata !731, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4759
  %91 = shl i64 %88, 8, !dbg !4760
  %92 = zext i8 %90 to i64, !dbg !4761
  %93 = or i64 %91, %92, !dbg !4762
  store i64 %93, ptr %12, align 8, !dbg !4763, !tbaa !737
  %94 = add nsw i32 %86, -8, !dbg !4755
  store i32 %94, ptr %16, align 8, !dbg !4755, !tbaa !745
  %95 = icmp slt i32 %86, 41, !dbg !4764
  br i1 %95, label %96, label %105, !dbg !4765

96:                                               ; preds = %85
  %97 = zext i32 %94 to i64, !dbg !4766
  %98 = shl i64 %93, %97, !dbg !4766
  call void @llvm.dbg.value(metadata i64 %98, metadata !751, metadata !DIExpression()), !dbg !4767
  %99 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %98) #11, !dbg !4769, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %99, metadata !751, metadata !DIExpression()), !dbg !4767
  %100 = trunc i64 %99 to i32, !dbg !4770
  %101 = load ptr, ptr %79, align 8, !dbg !4771, !tbaa !763
  store i32 %100, ptr %101, align 4, !dbg !4772, !tbaa !505
  %102 = load i32, ptr %16, align 8, !dbg !4773, !tbaa !745
  %103 = add nsw i32 %102, 32, !dbg !4773
  store i32 %103, ptr %16, align 8, !dbg !4773, !tbaa !745
  %104 = getelementptr inbounds i8, ptr %101, i64 4, !dbg !4774
  store ptr %104, ptr %79, align 8, !dbg !4774, !tbaa !763
  br label %105, !dbg !4775

105:                                              ; preds = %85, %96
  %106 = phi i32 [ %94, %85 ], [ %103, %96 ]
  %107 = add nuw nsw i64 %87, 1, !dbg !4776
  call void @llvm.dbg.value(metadata i64 %107, metadata !4671, metadata !DIExpression()), !dbg !4676
  %108 = icmp eq i64 %107, 16, !dbg !4777
  br i1 %108, label %80, label %85, !dbg !4749, !llvm.loop !4778

109:                                              ; preds = %82, %130
  %110 = phi i32 [ %106, %82 ], [ %131, %130 ], !dbg !4780
  %111 = phi i64 [ 0, %82 ], [ %132, %130 ], !dbg !4676
  %112 = phi i64 [ %93, %82 ], [ %118, %130 ], !dbg !4676
  call void @llvm.dbg.value(metadata i64 %111, metadata !4671, metadata !DIExpression()), !dbg !4676
  %113 = getelementptr inbounds i8, ptr %7, i64 %111, !dbg !4782
  %114 = load i8, ptr %113, align 1, !dbg !4782, !tbaa !883
  %115 = sext i8 %114 to i64, !dbg !4782
  call void @llvm.dbg.value(metadata ptr %1, metadata !725, metadata !DIExpression()), !dbg !4783
  call void @llvm.dbg.value(metadata i32 8, metadata !730, metadata !DIExpression()), !dbg !4783
  call void @llvm.dbg.value(metadata i8 %114, metadata !731, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !4783
  %116 = shl i64 %112, 8, !dbg !4784
  %117 = and i64 %115, 4294967295, !dbg !4785
  %118 = or i64 %116, %117, !dbg !4786
  store i64 %118, ptr %12, align 8, !dbg !4787, !tbaa !737
  %119 = add nsw i32 %110, -8, !dbg !4780
  store i32 %119, ptr %16, align 8, !dbg !4780, !tbaa !745
  %120 = icmp slt i32 %110, 41, !dbg !4788
  br i1 %120, label %121, label %130, !dbg !4789

121:                                              ; preds = %109
  %122 = zext i32 %119 to i64, !dbg !4790
  %123 = shl i64 %118, %122, !dbg !4790
  call void @llvm.dbg.value(metadata i64 %123, metadata !751, metadata !DIExpression()), !dbg !4791
  %124 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %123) #11, !dbg !4793, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %124, metadata !751, metadata !DIExpression()), !dbg !4791
  %125 = trunc i64 %124 to i32, !dbg !4794
  %126 = load ptr, ptr %79, align 8, !dbg !4795, !tbaa !763
  store i32 %125, ptr %126, align 4, !dbg !4796, !tbaa !505
  %127 = load i32, ptr %16, align 8, !dbg !4797, !tbaa !745
  %128 = add nsw i32 %127, 32, !dbg !4797
  store i32 %128, ptr %16, align 8, !dbg !4797, !tbaa !745
  %129 = getelementptr inbounds i8, ptr %126, i64 4, !dbg !4798
  store ptr %129, ptr %79, align 8, !dbg !4798, !tbaa !763
  br label %130, !dbg !4799

130:                                              ; preds = %109, %121
  %131 = phi i32 [ %119, %109 ], [ %128, %121 ]
  %132 = add nuw nsw i64 %111, 1, !dbg !4800
  call void @llvm.dbg.value(metadata i64 %132, metadata !4671, metadata !DIExpression()), !dbg !4676
  %133 = icmp eq i64 %132, %84, !dbg !4751
  br i1 %133, label %134, label %109, !dbg !4754, !llvm.loop !4801

134:                                              ; preds = %130, %80
  %135 = phi i32 [ %106, %80 ], [ %131, %130 ], !dbg !4803
  %136 = phi i64 [ %93, %80 ], [ %118, %130 ], !dbg !4806
  call void @llvm.dbg.value(metadata ptr %1, metadata !2788, metadata !DIExpression()), !dbg !4807
  call void @llvm.dbg.value(metadata ptr %1, metadata !1884, metadata !DIExpression()), !dbg !4808
  call void @llvm.dbg.value(metadata i32 1, metadata !1889, metadata !DIExpression()), !dbg !4808
  %137 = shl i64 %136, 1, !dbg !4806
  %138 = or i64 %137, 1, !dbg !4809
  store i64 %138, ptr %12, align 8, !dbg !4809, !tbaa !737
  %139 = add nsw i32 %135, -1, !dbg !4803
  %140 = icmp eq i32 %139, 32, !dbg !4810
  br i1 %140, label %141, label %146, !dbg !4811

141:                                              ; preds = %134
  %142 = trunc i64 %138 to i32, !dbg !4812
  call void @llvm.dbg.value(metadata i32 %142, metadata !1901, metadata !DIExpression()), !dbg !4813
  %143 = tail call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %142) #11, !dbg !4815, !srcloc !1909
  call void @llvm.dbg.value(metadata i32 %143, metadata !1901, metadata !DIExpression()), !dbg !4813
  %144 = load ptr, ptr %79, align 8, !dbg !4816, !tbaa !763
  store i32 %143, ptr %144, align 4, !dbg !4817, !tbaa !505
  %145 = getelementptr inbounds i8, ptr %144, i64 4, !dbg !4818
  store ptr %145, ptr %79, align 8, !dbg !4818, !tbaa !763
  br label %146, !dbg !4819

146:                                              ; preds = %134, %141
  %147 = phi i32 [ %139, %134 ], [ 64, %141 ], !dbg !4820
  call void @llvm.dbg.value(metadata ptr %1, metadata !2807, metadata !DIExpression()), !dbg !4822
  %148 = zext i32 %147 to i64, !dbg !4823
  %149 = shl i64 %138, %148, !dbg !4823
  call void @llvm.dbg.value(metadata i64 %149, metadata !751, metadata !DIExpression()), !dbg !4824
  %150 = tail call i64 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %149) #11, !dbg !4826, !srcloc !760
  call void @llvm.dbg.value(metadata i64 %150, metadata !751, metadata !DIExpression()), !dbg !4824
  %151 = load ptr, ptr %79, align 8, !dbg !4827, !tbaa !763
  store i64 %150, ptr %151, align 8, !dbg !4828, !tbaa !2816
  %152 = sdiv i32 %147, -8, !dbg !4829
  %153 = add nsw i32 %152, 8, !dbg !4830
  %154 = sext i32 %153 to i64, !dbg !4830
  %155 = getelementptr inbounds i8, ptr %151, i64 %154, !dbg !4831
  store ptr %155, ptr %79, align 8, !dbg !4831, !tbaa !763
  store i32 64, ptr %16, align 8, !dbg !4832, !tbaa !745
  tail call void @x264_free(ptr noundef %3) #12, !dbg !4833
  tail call void @x264_free(ptr noundef %7) #12, !dbg !4834
  ret void, !dbg !4835
}

declare !dbg !4836 ptr @x264_param2string(ptr noundef, i32 noundef) local_unnamed_addr #6

declare !dbg !4840 ptr @x264_malloc(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !4843 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare !dbg !4847 noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

declare !dbg !4853 void @x264_free(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i32 @x264_validate_levels(ptr noundef %0, i32 noundef %1) local_unnamed_addr #5 !dbg !4856 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4860, metadata !DIExpression()), !dbg !4868
  call void @llvm.dbg.value(metadata i32 %1, metadata !4861, metadata !DIExpression()), !dbg !4868
  call void @llvm.dbg.value(metadata i32 0, metadata !4862, metadata !DIExpression()), !dbg !4868
  %3 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 16, !dbg !4869
  %4 = load ptr, ptr %3, align 16, !dbg !4869, !tbaa !4870
  %5 = getelementptr inbounds %struct.x264_sps_t, ptr %4, i64 0, i32 16, !dbg !4889
  %6 = load i32, ptr %5, align 4, !dbg !4889, !tbaa !1443
  %7 = getelementptr inbounds %struct.x264_sps_t, ptr %4, i64 0, i32 17, !dbg !4890
  %8 = load i32, ptr %7, align 4, !dbg !4890, !tbaa !518
  %9 = mul nsw i32 %8, %6, !dbg !4891
  call void @llvm.dbg.value(metadata i32 %9, metadata !4863, metadata !DIExpression()), !dbg !4868
  %10 = mul nsw i32 %9, 384, !dbg !4892
  %11 = getelementptr inbounds %struct.x264_sps_t, ptr %4, i64 0, i32 14, !dbg !4893
  %12 = load i32, ptr %11, align 4, !dbg !4893, !tbaa !699
  %13 = mul nsw i32 %10, %12, !dbg !4894
  call void @llvm.dbg.value(metadata i32 %13, metadata !4864, metadata !DIExpression()), !dbg !4868
  %14 = getelementptr inbounds %struct.x264_sps_t, ptr %4, i64 0, i32 1, !dbg !4895
  %15 = load i32, ptr %14, align 4, !dbg !4895, !tbaa !462
  %16 = icmp eq i32 %15, 100, !dbg !4896
  %17 = select i1 %16, i32 5, i32 4, !dbg !4897
  call void @llvm.dbg.value(metadata i32 %17, metadata !4865, metadata !DIExpression()), !dbg !4868
  call void @llvm.dbg.value(metadata ptr @x264_levels, metadata !4866, metadata !DIExpression()), !dbg !4868
  %18 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 6, !dbg !4898
  call void @llvm.dbg.value(metadata ptr @x264_levels, metadata !4866, metadata !DIExpression()), !dbg !4868
  %19 = load i32, ptr %18, align 8, !tbaa !4899
  call void @llvm.dbg.value(metadata ptr @x264_levels, metadata !4866, metadata !DIExpression()), !dbg !4868
  switch i32 %19, label %20 [
    i32 10, label %35
    i32 11, label %21
    i32 12, label %22
    i32 13, label %23
    i32 20, label %24
    i32 21, label %25
    i32 22, label %26
    i32 30, label %27
    i32 31, label %28
    i32 32, label %29
    i32 40, label %30
    i32 41, label %31
    i32 42, label %32
    i32 50, label %33
    i32 51, label %34
  ], !dbg !4900

20:                                               ; preds = %2
  br label %35

21:                                               ; preds = %2
  br label %35, !dbg !4901

22:                                               ; preds = %2
  br label %35, !dbg !4901

23:                                               ; preds = %2
  br label %35, !dbg !4901

24:                                               ; preds = %2
  br label %35, !dbg !4901

25:                                               ; preds = %2
  br label %35, !dbg !4901

26:                                               ; preds = %2
  br label %35, !dbg !4901

27:                                               ; preds = %2
  br label %35, !dbg !4901

28:                                               ; preds = %2
  br label %35, !dbg !4901

29:                                               ; preds = %2
  br label %35, !dbg !4901

30:                                               ; preds = %2
  br label %35, !dbg !4901

31:                                               ; preds = %2
  br label %35, !dbg !4901

32:                                               ; preds = %2
  br label %35, !dbg !4901

33:                                               ; preds = %2
  br label %35, !dbg !4901

34:                                               ; preds = %2
  br label %35, !dbg !4901

35:                                               ; preds = %2, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20
  %36 = phi ptr [ @x264_levels, %2 ], [ getelementptr inbounds ([16 x %struct.x264_level_t], ptr @x264_levels, i64 0, i64 15, i32 0), %20 ], [ getelementptr inbounds ([16 x %struct.x264_level_t], ptr @x264_levels, i64 0, i64 1), %21 ], [ getelementptr inbounds ([16 x %struct.x264_level_t], ptr @x264_levels, i64 0, i64 2), %22 ], [ getelementptr inbounds ([16 x %struct.x264_level_t], ptr @x264_levels, i64 0, i64 3), %23 ], [ getelementptr inbounds ([16 x %struct.x264_level_t], ptr @x264_levels, i64 0, i64 4), %24 ], [ getelementptr inbounds ([16 x %struct.x264_level_t], ptr @x264_levels, i64 0, i64 5), %25 ], [ getelementptr inbounds ([16 x %struct.x264_level_t], ptr @x264_levels, i64 0, i64 6), %26 ], [ getelementptr inbounds ([16 x %struct.x264_level_t], ptr @x264_levels, i64 0, i64 7), %27 ], [ getelementptr inbounds ([16 x %struct.x264_level_t], ptr @x264_levels, i64 0, i64 8), %28 ], [ getelementptr inbounds ([16 x %struct.x264_level_t], ptr @x264_levels, i64 0, i64 9), %29 ], [ getelementptr inbounds ([16 x %struct.x264_level_t], ptr @x264_levels, i64 0, i64 10), %30 ], [ getelementptr inbounds ([16 x %struct.x264_level_t], ptr @x264_levels, i64 0, i64 11), %31 ], [ getelementptr inbounds ([16 x %struct.x264_level_t], ptr @x264_levels, i64 0, i64 12), %32 ], [ getelementptr inbounds ([16 x %struct.x264_level_t], ptr @x264_levels, i64 0, i64 13), %33 ], [ getelementptr inbounds ([16 x %struct.x264_level_t], ptr @x264_levels, i64 0, i64 14), %34 ], !dbg !4868
  %37 = getelementptr inbounds %struct.x264_level_t, ptr %36, i64 0, i32 2, !dbg !4901
  %38 = load i32, ptr %37, align 4, !dbg !4901, !tbaa !4903
  %39 = icmp slt i32 %38, %9, !dbg !4905
  br i1 %39, label %47, label %40, !dbg !4906

40:                                               ; preds = %35
  %41 = shl nsw i32 %38, 3, !dbg !4907
  %42 = mul nsw i32 %6, %6, !dbg !4908
  %43 = icmp slt i32 %41, %42, !dbg !4909
  %44 = mul nsw i32 %8, %8
  %45 = icmp slt i32 %41, %44
  %46 = select i1 %43, i1 true, i1 %45, !dbg !4910
  br i1 %46, label %47, label %50, !dbg !4910

47:                                               ; preds = %40, %35
  %48 = icmp eq i32 %1, 0, !dbg !4911
  br i1 %48, label %62, label %49, !dbg !4914

49:                                               ; preds = %47
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef %6, i32 noundef %8, i32 noundef %38) #12, !dbg !4911
  br label %50, !dbg !4911

50:                                               ; preds = %40, %49
  %51 = phi i32 [ 1, %49 ], [ 0, %40 ], !dbg !4868
  call void @llvm.dbg.value(metadata i32 %51, metadata !4862, metadata !DIExpression()), !dbg !4868
  %52 = getelementptr inbounds %struct.x264_level_t, ptr %36, i64 0, i32 3, !dbg !4915
  %53 = load i32, ptr %52, align 4, !dbg !4915, !tbaa !4917
  %54 = icmp sgt i32 %13, %53, !dbg !4918
  br i1 %54, label %55, label %62, !dbg !4919

55:                                               ; preds = %50
  %56 = icmp eq i32 %1, 0, !dbg !4920
  br i1 %56, label %62, label %57, !dbg !4923

57:                                               ; preds = %55
  %58 = load ptr, ptr %3, align 16, !dbg !4920, !tbaa !4870
  %59 = getelementptr inbounds %struct.x264_sps_t, ptr %58, i64 0, i32 14, !dbg !4920
  %60 = load i32, ptr %59, align 4, !dbg !4920, !tbaa !699
  %61 = sdiv i32 %53, %10, !dbg !4920
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef %60, i32 noundef %13, i32 noundef %61, i32 noundef %53) #12, !dbg !4920
  br label %62, !dbg !4920

62:                                               ; preds = %47, %55, %57, %50
  %63 = phi i32 [ %51, %50 ], [ 1, %57 ], [ 1, %55 ], [ 1, %47 ], !dbg !4868
  call void @llvm.dbg.value(metadata i32 %63, metadata !4862, metadata !DIExpression()), !dbg !4868
  %64 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 8, !dbg !4924
  %65 = load i32, ptr %64, align 8, !dbg !4924, !tbaa !4926
  %66 = getelementptr inbounds %struct.x264_level_t, ptr %36, i64 0, i32 4, !dbg !4924
  %67 = load i32, ptr %66, align 4, !dbg !4924, !tbaa !4927
  %68 = mul nsw i32 %67, %17, !dbg !4924
  %69 = sdiv i32 %68, 4, !dbg !4924
  %70 = icmp sgt i32 %65, %69, !dbg !4924
  br i1 %70, label %71, label %74, !dbg !4928

71:                                               ; preds = %62
  %72 = icmp eq i32 %1, 0, !dbg !4929
  br i1 %72, label %86, label %73, !dbg !4932

73:                                               ; preds = %71
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef %65, i32 noundef %69) #12, !dbg !4929
  br label %74, !dbg !4929

74:                                               ; preds = %73, %62
  %75 = phi i32 [ %63, %62 ], [ 1, %73 ], !dbg !4868
  call void @llvm.dbg.value(metadata i32 %75, metadata !4862, metadata !DIExpression()), !dbg !4868
  %76 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 9, !dbg !4933
  %77 = load i32, ptr %76, align 4, !dbg !4933, !tbaa !4935
  %78 = getelementptr inbounds %struct.x264_level_t, ptr %36, i64 0, i32 5, !dbg !4933
  %79 = load i32, ptr %78, align 4, !dbg !4933, !tbaa !4936
  %80 = mul nsw i32 %79, %17, !dbg !4933
  %81 = sdiv i32 %80, 4, !dbg !4933
  %82 = icmp sgt i32 %77, %81, !dbg !4933
  br i1 %82, label %83, label %86, !dbg !4937

83:                                               ; preds = %74
  %84 = icmp eq i32 %1, 0, !dbg !4938
  br i1 %84, label %86, label %85, !dbg !4941

85:                                               ; preds = %83
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.5, i32 noundef %77, i32 noundef %81) #12, !dbg !4938
  br label %86, !dbg !4938

86:                                               ; preds = %71, %83, %85, %74
  %87 = phi i32 [ %75, %74 ], [ 1, %85 ], [ 1, %83 ], [ 1, %71 ], !dbg !4868
  call void @llvm.dbg.value(metadata i32 %87, metadata !4862, metadata !DIExpression()), !dbg !4868
  %88 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 39, i32 9, !dbg !4942
  %89 = load i32, ptr %88, align 4, !dbg !4942, !tbaa !4944
  %90 = getelementptr inbounds %struct.x264_level_t, ptr %36, i64 0, i32 6, !dbg !4942
  %91 = load i32, ptr %90, align 4, !dbg !4942, !tbaa !4945
  %92 = icmp sgt i32 %89, %91, !dbg !4942
  br i1 %92, label %93, label %96, !dbg !4946

93:                                               ; preds = %86
  %94 = icmp eq i32 %1, 0, !dbg !4947
  br i1 %94, label %108, label %95, !dbg !4950

95:                                               ; preds = %93
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef %89, i32 noundef %91) #12, !dbg !4947
  br label %96, !dbg !4947

96:                                               ; preds = %95, %86
  %97 = phi i32 [ %87, %86 ], [ 1, %95 ], !dbg !4868
  call void @llvm.dbg.value(metadata i32 %97, metadata !4862, metadata !DIExpression()), !dbg !4868
  %98 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 25, !dbg !4951
  %99 = load i32, ptr %98, align 4, !dbg !4951, !tbaa !4953
  %100 = getelementptr inbounds %struct.x264_level_t, ptr %36, i64 0, i32 11, !dbg !4951
  %101 = load i32, ptr %100, align 4, !dbg !4951, !tbaa !4954
  %102 = icmp eq i32 %101, 0, !dbg !4951
  %103 = zext i1 %102 to i32, !dbg !4951
  %104 = icmp sgt i32 %99, %103, !dbg !4951
  br i1 %104, label %105, label %108, !dbg !4955

105:                                              ; preds = %96
  %106 = icmp eq i32 %1, 0, !dbg !4956
  br i1 %106, label %108, label %107, !dbg !4959

107:                                              ; preds = %105
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.7, i32 noundef %99, i32 noundef %103) #12, !dbg !4956
  br label %108, !dbg !4956

108:                                              ; preds = %93, %105, %107, %96
  %109 = phi i32 [ %97, %96 ], [ 1, %107 ], [ 1, %105 ], [ 1, %93 ], !dbg !4868
  call void @llvm.dbg.value(metadata i32 %109, metadata !4862, metadata !DIExpression()), !dbg !4868
  %110 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 10, !dbg !4960
  %111 = load i32, ptr %110, align 8, !dbg !4960, !tbaa !4962
  %112 = icmp sgt i32 %111, 0, !dbg !4963
  br i1 %112, label %113, label %129, !dbg !4964

113:                                              ; preds = %108
  %114 = sext i32 %9 to i64, !dbg !4965
  %115 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 9, !dbg !4965
  %116 = load i32, ptr %115, align 4, !dbg !4965, !tbaa !4967
  %117 = sext i32 %116 to i64, !dbg !4965
  %118 = mul nsw i64 %117, %114, !dbg !4965
  %119 = zext i32 %111 to i64
  %120 = sdiv i64 %118, %119, !dbg !4965
  %121 = getelementptr inbounds %struct.x264_level_t, ptr %36, i64 0, i32 1, !dbg !4965
  %122 = load i32, ptr %121, align 4, !dbg !4965, !tbaa !4968
  %123 = sext i32 %122 to i64, !dbg !4965
  %124 = icmp sgt i64 %120, %123, !dbg !4965
  br i1 %124, label %125, label %129, !dbg !4969

125:                                              ; preds = %113
  %126 = icmp eq i32 %1, 0, !dbg !4970
  br i1 %126, label %140, label %127, !dbg !4973

127:                                              ; preds = %125
  %128 = trunc i64 %120 to i32, !dbg !4970
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.8, i32 noundef %128, i32 noundef %122) #12, !dbg !4970
  br label %129, !dbg !4970

129:                                              ; preds = %127, %113, %108
  %130 = phi i32 [ %109, %113 ], [ %109, %108 ], [ 1, %127 ], !dbg !4868
  call void @llvm.dbg.value(metadata i32 %130, metadata !4862, metadata !DIExpression()), !dbg !4868
  %131 = load ptr, ptr %3, align 16, !dbg !4974, !tbaa !4870
  %132 = getelementptr inbounds %struct.x264_sps_t, ptr %131, i64 0, i32 20, !dbg !4976
  %133 = load i32, ptr %132, align 4, !dbg !4976, !tbaa !535
  %134 = getelementptr inbounds %struct.x264_level_t, ptr %36, i64 0, i32 10, !dbg !4977
  %135 = load i32, ptr %134, align 4, !dbg !4977, !tbaa !4978
  %136 = icmp slt i32 %133, %135, !dbg !4979
  br i1 %136, label %137, label %140, !dbg !4980

137:                                              ; preds = %129
  %138 = icmp eq i32 %1, 0, !dbg !4981
  br i1 %138, label %140, label %139, !dbg !4984

139:                                              ; preds = %137
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.9) #12, !dbg !4981
  br label %140, !dbg !4981

140:                                              ; preds = %125, %137, %139, %129
  %141 = phi i32 [ %130, %129 ], [ 1, %139 ], [ 1, %137 ], [ 1, %125 ], !dbg !4868
  call void @llvm.dbg.value(metadata i32 %141, metadata !4862, metadata !DIExpression()), !dbg !4868
  ret i32 %141, !dbg !4985
}

declare !dbg !4986 void @x264_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #9

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

attributes #0 = { nofree nosync nounwind memory(argmem: readwrite) uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #3 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #4 = { nounwind memory(readwrite, inaccessiblemem: none) uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #5 = { nounwind uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #6 = { "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: read) "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #8 = { nofree nounwind "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nofree nounwind willreturn memory(argmem: read) }
attributes #11 = { nounwind memory(none) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!96}
!llvm.module.flags = !{!255, !256, !257, !258, !259, !260}
!llvm.ident = !{!261}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "sar", scope: !2, file: !3, line: 292, type: !246, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "x264_sps_write", scope: !3, file: !3, line: 216, type: !4, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !96, retainedNodes: !234)
!3 = !DIFile(filename: "encoder/set.c", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "01703375ad3e6415bb3aab75ef516715")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6, !27}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "bs_t", file: !8, line: 49, baseType: !9)
!8 = !DIFile(filename: "./common/bs.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "2f46b0964798cffcc7898517b4d9922e")
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bs_s", file: !8, line: 40, size: 320, elements: !10)
!10 = !{!11, !18, !19, !20, !24, !26}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "p_start", scope: !9, file: !8, line: 42, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !14, line: 24, baseType: !15)
!14 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !16, line: 38, baseType: !17)
!16 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!17 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !9, file: !8, line: 43, baseType: !12, size: 64, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "p_end", scope: !9, file: !8, line: 44, baseType: !12, size: 64, offset: 128)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bits", scope: !9, file: !8, line: 46, baseType: !21, size: 64, offset: 192)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !22, line: 87, baseType: !23)
!22 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!23 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "i_left", scope: !9, file: !8, line: 47, baseType: !25, size: 32, offset: 256)
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "i_bits_encoded", scope: !9, file: !8, line: 48, baseType: !25, size: 32, offset: 288)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_sps_t", file: !29, line: 133, baseType: !30)
!29 = !DIFile(filename: "./common/set.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "06164d1fd824dd844d17e97dd39e9ac3")
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !29, line: 52, size: 9920, elements: !31)
!31 = !{!32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !49, !50, !51, !52, !53, !54, !55, !56, !57, !64, !65, !95}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "i_id", scope: !30, file: !29, line: 54, baseType: !25, size: 32)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "i_profile_idc", scope: !30, file: !29, line: 56, baseType: !25, size: 32, offset: 32)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !30, file: !29, line: 57, baseType: !25, size: 32, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set0", scope: !30, file: !29, line: 59, baseType: !25, size: 32, offset: 96)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set1", scope: !30, file: !29, line: 60, baseType: !25, size: 32, offset: 128)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set2", scope: !30, file: !29, line: 61, baseType: !25, size: 32, offset: 160)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_frame_num", scope: !30, file: !29, line: 63, baseType: !25, size: 32, offset: 192)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_type", scope: !30, file: !29, line: 65, baseType: !25, size: 32, offset: 224)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_poc_lsb", scope: !30, file: !29, line: 67, baseType: !25, size: 32, offset: 256)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "b_delta_pic_order_always_zero", scope: !30, file: !29, line: 69, baseType: !25, size: 32, offset: 288)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_non_ref_pic", scope: !30, file: !29, line: 70, baseType: !25, size: 32, offset: 320)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_top_to_bottom_field", scope: !30, file: !29, line: 71, baseType: !25, size: 32, offset: 352)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_frames_in_poc_cycle", scope: !30, file: !29, line: 72, baseType: !25, size: 32, offset: 384)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_ref_frame", scope: !30, file: !29, line: 73, baseType: !46, size: 8192, offset: 416)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 8192, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 256)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_frames", scope: !30, file: !29, line: 75, baseType: !25, size: 32, offset: 8608)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "b_gaps_in_frame_num_value_allowed", scope: !30, file: !29, line: 76, baseType: !25, size: 32, offset: 8640)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_width", scope: !30, file: !29, line: 77, baseType: !25, size: 32, offset: 8672)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_height", scope: !30, file: !29, line: 78, baseType: !25, size: 32, offset: 8704)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "b_frame_mbs_only", scope: !30, file: !29, line: 79, baseType: !25, size: 32, offset: 8736)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "b_mb_adaptive_frame_field", scope: !30, file: !29, line: 80, baseType: !25, size: 32, offset: 8768)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct8x8_inference", scope: !30, file: !29, line: 81, baseType: !25, size: 32, offset: 8800)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "b_crop", scope: !30, file: !29, line: 83, baseType: !25, size: 32, offset: 8832)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "crop", scope: !30, file: !29, line: 90, baseType: !58, size: 128, offset: 8864)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !30, file: !29, line: 84, size: 128, elements: !59)
!59 = !{!60, !61, !62, !63}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "i_left", scope: !58, file: !29, line: 86, baseType: !25, size: 32)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "i_right", scope: !58, file: !29, line: 87, baseType: !25, size: 32, offset: 32)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "i_top", scope: !58, file: !29, line: 88, baseType: !25, size: 32, offset: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "i_bottom", scope: !58, file: !29, line: 89, baseType: !25, size: 32, offset: 96)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "b_vui", scope: !30, file: !29, line: 92, baseType: !25, size: 32, offset: 8992)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !30, file: !29, line: 129, baseType: !66, size: 864, offset: 9024)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !30, file: !29, line: 93, size: 864, elements: !67)
!67 = !{!68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "b_aspect_ratio_info_present", scope: !66, file: !29, line: 95, baseType: !25, size: 32)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !66, file: !29, line: 96, baseType: !25, size: 32, offset: 32)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !66, file: !29, line: 97, baseType: !25, size: 32, offset: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "b_overscan_info_present", scope: !66, file: !29, line: 99, baseType: !25, size: 32, offset: 96)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "b_overscan_info", scope: !66, file: !29, line: 100, baseType: !25, size: 32, offset: 128)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "b_signal_type_present", scope: !66, file: !29, line: 102, baseType: !25, size: 32, offset: 160)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !66, file: !29, line: 103, baseType: !25, size: 32, offset: 192)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !66, file: !29, line: 104, baseType: !25, size: 32, offset: 224)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "b_color_description_present", scope: !66, file: !29, line: 105, baseType: !25, size: 32, offset: 256)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !66, file: !29, line: 106, baseType: !25, size: 32, offset: 288)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !66, file: !29, line: 107, baseType: !25, size: 32, offset: 320)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !66, file: !29, line: 108, baseType: !25, size: 32, offset: 352)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_loc_info_present", scope: !66, file: !29, line: 110, baseType: !25, size: 32, offset: 384)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc_top", scope: !66, file: !29, line: 111, baseType: !25, size: 32, offset: 416)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc_bottom", scope: !66, file: !29, line: 112, baseType: !25, size: 32, offset: 448)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "b_timing_info_present", scope: !66, file: !29, line: 114, baseType: !25, size: 32, offset: 480)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_units_in_tick", scope: !66, file: !29, line: 115, baseType: !25, size: 32, offset: 512)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "i_time_scale", scope: !66, file: !29, line: 116, baseType: !25, size: 32, offset: 544)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "b_fixed_frame_rate", scope: !66, file: !29, line: 117, baseType: !25, size: 32, offset: 576)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "b_bitstream_restriction", scope: !66, file: !29, line: 119, baseType: !25, size: 32, offset: 608)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "b_motion_vectors_over_pic_boundaries", scope: !66, file: !29, line: 120, baseType: !25, size: 32, offset: 640)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_bytes_per_pic_denom", scope: !66, file: !29, line: 121, baseType: !25, size: 32, offset: 672)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_bits_per_mb_denom", scope: !66, file: !29, line: 122, baseType: !25, size: 32, offset: 704)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_mv_length_horizontal", scope: !66, file: !29, line: 123, baseType: !25, size: 32, offset: 736)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_mv_length_vertical", scope: !66, file: !29, line: 124, baseType: !25, size: 32, offset: 768)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_reorder_frames", scope: !66, file: !29, line: 125, baseType: !25, size: 32, offset: 800)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_dec_frame_buffering", scope: !66, file: !29, line: 126, baseType: !25, size: 32, offset: 832)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "b_qpprime_y_zero_transform_bypass", scope: !30, file: !29, line: 131, baseType: !25, size: 32, offset: 9888)
!96 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 16.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !97, retainedTypes: !119, globals: !130, splitDebugInlining: false, nameTableKind: None)
!97 = !{!98, !109, !115}
!98 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_e", file: !29, line: 27, baseType: !99, size: 32, elements: !100)
!99 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!100 = !{!101, !102, !103, !104, !105, !106, !107, !108}
!101 = !DIEnumerator(name: "PROFILE_BASELINE", value: 66)
!102 = !DIEnumerator(name: "PROFILE_MAIN", value: 77)
!103 = !DIEnumerator(name: "PROFILE_EXTENDED", value: 88)
!104 = !DIEnumerator(name: "PROFILE_HIGH", value: 100)
!105 = !DIEnumerator(name: "PROFILE_HIGH10", value: 110)
!106 = !DIEnumerator(name: "PROFILE_HIGH422", value: 122)
!107 = !DIEnumerator(name: "PROFILE_HIGH444", value: 144)
!108 = !DIEnumerator(name: "PROFILE_HIGH444_PREDICTIVE", value: 244)
!109 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cqm4_e", file: !29, line: 39, baseType: !99, size: 32, elements: !110)
!110 = !{!111, !112, !113, !114}
!111 = !DIEnumerator(name: "CQM_4IY", value: 0)
!112 = !DIEnumerator(name: "CQM_4PY", value: 1)
!113 = !DIEnumerator(name: "CQM_4IC", value: 2)
!114 = !DIEnumerator(name: "CQM_4PC", value: 3)
!115 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cqm8_e", file: !29, line: 46, baseType: !99, size: 32, elements: !116)
!116 = !{!117, !118}
!117 = !DIEnumerator(name: "CQM_8IY", value: 0)
!118 = !DIEnumerator(name: "CQM_8PY", value: 1)
!119 = !{!25, !120, !123, !126, !127}
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !121, line: 27, baseType: !122)
!121 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !16, line: 44, baseType: !23)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !14, line: 26, baseType: !125)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !16, line: 42, baseType: !99)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !121, line: 24, baseType: !128)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !16, line: 37, baseType: !129)
!129 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!130 = !{!0, !131, !137, !142, !162, !167, !172, !177, !182, !187, !189, !194, !199, !203, !208, !215, !218, !220, !222, !224, !230}
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(scope: null, file: !3, line: 487, type: !133, isLocal: true, isDefinition: true)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 904, elements: !135)
!134 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!135 = !{!136}
!136 = !DISubrange(count: 113)
!137 = !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!138 = distinct !DIGlobalVariable(scope: null, file: !3, line: 489, type: !139, isLocal: true, isDefinition: true)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 128, elements: !140)
!140 = !{!141}
!141 = !DISubrange(count: 16)
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(name: "x264_levels", scope: !96, file: !3, line: 509, type: !144, isLocal: false, isDefinition: true)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 6144, elements: !140)
!145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !146)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_level_t", file: !147, line: 310, baseType: !148)
!147 = !DIFile(filename: "./x264.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "9fe19a6136ab7ddd44a70d62bce62365")
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !147, line: 297, size: 384, elements: !149)
!149 = !{!150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "level_idc", scope: !148, file: !147, line: 298, baseType: !25, size: 32)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "mbps", scope: !148, file: !147, line: 299, baseType: !25, size: 32, offset: 32)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "frame_size", scope: !148, file: !147, line: 300, baseType: !25, size: 32, offset: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "dpb", scope: !148, file: !147, line: 301, baseType: !25, size: 32, offset: 96)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "bitrate", scope: !148, file: !147, line: 302, baseType: !25, size: 32, offset: 128)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "cpb", scope: !148, file: !147, line: 303, baseType: !25, size: 32, offset: 160)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "mv_range", scope: !148, file: !147, line: 304, baseType: !25, size: 32, offset: 192)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "mvs_per_2mb", scope: !148, file: !147, line: 305, baseType: !25, size: 32, offset: 224)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "slice_rate", scope: !148, file: !147, line: 306, baseType: !25, size: 32, offset: 256)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "bipred8x8", scope: !148, file: !147, line: 307, baseType: !25, size: 32, offset: 288)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "direct8x8", scope: !148, file: !147, line: 308, baseType: !25, size: 32, offset: 320)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "frame_only", scope: !148, file: !147, line: 309, baseType: !25, size: 32, offset: 352)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(scope: null, file: !3, line: 551, type: !164, isLocal: true, isDefinition: true)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 336, elements: !165)
!165 = !{!166}
!166 = !DISubrange(count: 42)
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(scope: null, file: !3, line: 554, type: !169, isLocal: true, isDefinition: true)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 544, elements: !170)
!170 = !{!171}
!171 = !DISubrange(count: 68)
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression())
!173 = distinct !DIGlobalVariable(scope: null, file: !3, line: 561, type: !174, isLocal: true, isDefinition: true)
!174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 296, elements: !175)
!175 = !{!176}
!176 = !DISubrange(count: 37)
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(scope: null, file: !3, line: 562, type: !179, isLocal: true, isDefinition: true)
!179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 288, elements: !180)
!180 = !{!181}
!181 = !DISubrange(count: 36)
!182 = !DIGlobalVariableExpression(var: !183, expr: !DIExpression())
!183 = distinct !DIGlobalVariable(scope: null, file: !3, line: 563, type: !184, isLocal: true, isDefinition: true)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 272, elements: !185)
!185 = !{!186}
!186 = !DISubrange(count: 34)
!187 = !DIGlobalVariableExpression(var: !188, expr: !DIExpression())
!188 = distinct !DIGlobalVariable(scope: null, file: !3, line: 564, type: !179, isLocal: true, isDefinition: true)
!189 = !DIGlobalVariableExpression(var: !190, expr: !DIExpression())
!190 = distinct !DIGlobalVariable(scope: null, file: !3, line: 567, type: !191, isLocal: true, isDefinition: true)
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 264, elements: !192)
!192 = !{!193}
!193 = !DISubrange(count: 33)
!194 = !DIGlobalVariableExpression(var: !195, expr: !DIExpression())
!195 = distinct !DIGlobalVariable(scope: null, file: !3, line: 569, type: !196, isLocal: true, isDefinition: true)
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 400, elements: !197)
!197 = !{!198}
!198 = !DISubrange(count: 50)
!199 = !DIGlobalVariableExpression(var: !200, expr: !DIExpression())
!200 = distinct !DIGlobalVariable(name: "x264_ue_size_tab", scope: !96, file: !8, line: 183, type: !201, isLocal: true, isDefinition: true)
!201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 2048, elements: !47)
!202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(name: "x264_cqm_flat16", scope: !96, file: !29, line: 204, type: !205, isLocal: true, isDefinition: true)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 512, elements: !206)
!206 = !{!207}
!207 = !DISubrange(count: 64)
!208 = !DIGlobalVariableExpression(var: !209, expr: !DIExpression())
!209 = distinct !DIGlobalVariable(name: "x264_cqm_jvt", scope: !96, file: !29, line: 215, type: !210, isLocal: true, isDefinition: true)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 384, elements: !213)
!211 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !212)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!213 = !{!214}
!214 = !DISubrange(count: 6)
!215 = !DIGlobalVariableExpression(var: !216, expr: !DIExpression())
!216 = distinct !DIGlobalVariable(name: "x264_cqm_jvt4i", scope: !96, file: !29, line: 168, type: !217, isLocal: true, isDefinition: true)
!217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 128, elements: !140)
!218 = !DIGlobalVariableExpression(var: !219, expr: !DIExpression())
!219 = distinct !DIGlobalVariable(name: "x264_cqm_jvt4p", scope: !96, file: !29, line: 175, type: !217, isLocal: true, isDefinition: true)
!220 = !DIGlobalVariableExpression(var: !221, expr: !DIExpression())
!221 = distinct !DIGlobalVariable(name: "x264_cqm_jvt8i", scope: !96, file: !29, line: 182, type: !205, isLocal: true, isDefinition: true)
!222 = !DIGlobalVariableExpression(var: !223, expr: !DIExpression())
!223 = distinct !DIGlobalVariable(name: "x264_cqm_jvt8p", scope: !96, file: !29, line: 193, type: !205, isLocal: true, isDefinition: true)
!224 = !DIGlobalVariableExpression(var: !225, expr: !DIExpression())
!225 = distinct !DIGlobalVariable(name: "x264_zigzag_scan4", scope: !96, file: !226, line: 187, type: !227, isLocal: true, isDefinition: true)
!226 = !DIFile(filename: "./common/macroblock.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "0b0c175005b691009f3df3e457cfe9c0")
!227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 256, elements: !228)
!228 = !{!229, !141}
!229 = !DISubrange(count: 2)
!230 = !DIGlobalVariableExpression(var: !231, expr: !DIExpression())
!231 = distinct !DIGlobalVariable(name: "x264_zigzag_scan8", scope: !96, file: !226, line: 194, type: !232, isLocal: true, isDefinition: true)
!232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 1024, elements: !233)
!233 = !{!229, !207}
!234 = !{!235, !236, !237, !241}
!235 = !DILocalVariable(name: "s", arg: 1, scope: !2, file: !3, line: 216, type: !6)
!236 = !DILocalVariable(name: "sps", arg: 2, scope: !2, file: !3, line: 216, type: !27)
!237 = !DILocalVariable(name: "i", scope: !238, file: !3, line: 246, type: !25)
!238 = distinct !DILexicalBlock(scope: !239, file: !3, line: 245, column: 5)
!239 = distinct !DILexicalBlock(scope: !240, file: !3, line: 244, column: 14)
!240 = distinct !DILexicalBlock(scope: !2, file: !3, line: 240, column: 9)
!241 = !DILocalVariable(name: "i", scope: !242, file: !3, line: 291, type: !25)
!242 = distinct !DILexicalBlock(scope: !243, file: !3, line: 290, column: 9)
!243 = distinct !DILexicalBlock(scope: !244, file: !3, line: 289, column: 13)
!244 = distinct !DILexicalBlock(scope: !245, file: !3, line: 287, column: 5)
!245 = distinct !DILexicalBlock(scope: !2, file: !3, line: 286, column: 9)
!246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !247, size: 1344, elements: !253)
!247 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !248)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2, file: !3, line: 292, size: 96, elements: !249)
!249 = !{!250, !251, !252}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "w", scope: !248, file: !3, line: 292, baseType: !25, size: 32)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "h", scope: !248, file: !3, line: 292, baseType: !25, size: 32, offset: 32)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "sar", scope: !248, file: !3, line: 292, baseType: !25, size: 32, offset: 64)
!253 = !{!254}
!254 = !DISubrange(count: 14)
!255 = !{i32 7, !"Dwarf Version", i32 5}
!256 = !{i32 2, !"Debug Info Version", i32 3}
!257 = !{i32 1, !"wchar_size", i32 4}
!258 = !{i32 8, !"PIC Level", i32 2}
!259 = !{i32 7, !"PIE Level", i32 2}
!260 = !{i32 7, !"uwtable", i32 2}
!261 = !{!"clang version 16.0.0"}
!262 = distinct !DISubprogram(name: "x264_sps_init", scope: !3, file: !3, line: 77, type: !263, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !96, retainedNodes: !407)
!263 = !DISubroutineType(types: !264)
!264 = !{null, !27, !25, !265}
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_param_t", file: !147, line: 295, baseType: !267)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_param_t", file: !147, line: 151, size: 4928, elements: !268)
!268 = !{!269, !270, !271, !272, !273, !274, !275, !276, !277, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !309, !311, !312, !313, !314, !316, !317, !332, !333, !334, !335, !336, !365, !404, !405, !406}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !267, file: !147, line: 154, baseType: !99, size: 32)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "i_threads", scope: !267, file: !147, line: 155, baseType: !25, size: 32, offset: 32)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "b_deterministic", scope: !267, file: !147, line: 156, baseType: !25, size: 32, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !267, file: !147, line: 159, baseType: !25, size: 32, offset: 96)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "i_height", scope: !267, file: !147, line: 160, baseType: !25, size: 32, offset: 128)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "i_csp", scope: !267, file: !147, line: 161, baseType: !25, size: 32, offset: 160)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !267, file: !147, line: 162, baseType: !25, size: 32, offset: 192)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_total", scope: !267, file: !147, line: 163, baseType: !25, size: 32, offset: 224)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !267, file: !147, line: 180, baseType: !278, size: 288, offset: 256)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !267, file: !147, line: 165, size: 288, elements: !279)
!279 = !{!280, !281, !282, !283, !284, !285, !286, !287, !288}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !278, file: !147, line: 168, baseType: !25, size: 32)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !278, file: !147, line: 169, baseType: !25, size: 32, offset: 32)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "i_overscan", scope: !278, file: !147, line: 171, baseType: !25, size: 32, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !278, file: !147, line: 174, baseType: !25, size: 32, offset: 96)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !278, file: !147, line: 175, baseType: !25, size: 32, offset: 128)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !278, file: !147, line: 176, baseType: !25, size: 32, offset: 160)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !278, file: !147, line: 177, baseType: !25, size: 32, offset: 192)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !278, file: !147, line: 178, baseType: !25, size: 32, offset: 224)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc", scope: !278, file: !147, line: 179, baseType: !25, size: 32, offset: 256)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_num", scope: !267, file: !147, line: 182, baseType: !25, size: 32, offset: 544)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_den", scope: !267, file: !147, line: 183, baseType: !25, size: 32, offset: 576)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_reference", scope: !267, file: !147, line: 186, baseType: !25, size: 32, offset: 608)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_max", scope: !267, file: !147, line: 187, baseType: !25, size: 32, offset: 640)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_min", scope: !267, file: !147, line: 188, baseType: !25, size: 32, offset: 672)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "i_scenecut_threshold", scope: !267, file: !147, line: 189, baseType: !25, size: 32, offset: 704)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "b_pre_scenecut", scope: !267, file: !147, line: 190, baseType: !25, size: 32, offset: 736)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe", scope: !267, file: !147, line: 191, baseType: !25, size: 32, offset: 768)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_adaptive", scope: !267, file: !147, line: 192, baseType: !25, size: 32, offset: 800)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_bias", scope: !267, file: !147, line: 193, baseType: !25, size: 32, offset: 832)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "b_bframe_pyramid", scope: !267, file: !147, line: 194, baseType: !25, size: 32, offset: 864)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter", scope: !267, file: !147, line: 196, baseType: !25, size: 32, offset: 896)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_alphac0", scope: !267, file: !147, line: 197, baseType: !25, size: 32, offset: 928)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_beta", scope: !267, file: !147, line: 198, baseType: !25, size: 32, offset: 960)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !267, file: !147, line: 200, baseType: !25, size: 32, offset: 992)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !267, file: !147, line: 201, baseType: !25, size: 32, offset: 1024)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !267, file: !147, line: 203, baseType: !25, size: 32, offset: 1056)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !267, file: !147, line: 205, baseType: !25, size: 32, offset: 1088)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "psz_cqm_file", scope: !267, file: !147, line: 206, baseType: !308, size: 64, offset: 1152)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4iy", scope: !267, file: !147, line: 207, baseType: !310, size: 128, offset: 1216)
!310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 128, elements: !140)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4ic", scope: !267, file: !147, line: 208, baseType: !310, size: 128, offset: 1344)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4py", scope: !267, file: !147, line: 209, baseType: !310, size: 128, offset: 1472)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4pc", scope: !267, file: !147, line: 210, baseType: !310, size: 128, offset: 1600)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8iy", scope: !267, file: !147, line: 211, baseType: !315, size: 512, offset: 1728)
!315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 512, elements: !206)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8py", scope: !267, file: !147, line: 212, baseType: !315, size: 512, offset: 2240)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "pf_log", scope: !267, file: !147, line: 215, baseType: !318, size: 64, offset: 2752)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DISubroutineType(types: !320)
!320 = !{null, !321, !25, !322, !324}
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !134)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !326)
!326 = !{!327, !329, !330, !331}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !325, file: !328, baseType: !99, size: 32)
!328 = !DIFile(filename: "encoder/set.c", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src")
!329 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !325, file: !328, baseType: !99, size: 32, offset: 32)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !325, file: !328, baseType: !321, size: 64, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !325, file: !328, baseType: !321, size: 64, offset: 128)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "p_log_private", scope: !267, file: !147, line: 216, baseType: !321, size: 64, offset: 2816)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "i_log_level", scope: !267, file: !147, line: 217, baseType: !25, size: 32, offset: 2880)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "b_visualize", scope: !267, file: !147, line: 218, baseType: !25, size: 32, offset: 2912)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "psz_dump_yuv", scope: !267, file: !147, line: 219, baseType: !308, size: 64, offset: 2944)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "analyse", scope: !267, file: !147, line: 252, baseType: !337, size: 768, offset: 3008)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !267, file: !147, line: 222, size: 768, elements: !338)
!338 = !{!339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !359, !360, !363, !364}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "intra", scope: !337, file: !147, line: 224, baseType: !99, size: 32)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "inter", scope: !337, file: !147, line: 225, baseType: !99, size: 32, offset: 32)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !337, file: !147, line: 227, baseType: !25, size: 32, offset: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !337, file: !147, line: 228, baseType: !25, size: 32, offset: 96)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_mv_pred", scope: !337, file: !147, line: 229, baseType: !25, size: 32, offset: 128)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_8x8_inference", scope: !337, file: !147, line: 230, baseType: !25, size: 32, offset: 160)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_offset", scope: !337, file: !147, line: 231, baseType: !25, size: 32, offset: 192)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !337, file: !147, line: 233, baseType: !25, size: 32, offset: 224)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_range", scope: !337, file: !147, line: 234, baseType: !25, size: 32, offset: 256)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range", scope: !337, file: !147, line: 235, baseType: !25, size: 32, offset: 288)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range_thread", scope: !337, file: !147, line: 236, baseType: !25, size: 32, offset: 320)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !337, file: !147, line: 237, baseType: !25, size: 32, offset: 352)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !337, file: !147, line: 238, baseType: !25, size: 32, offset: 384)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "b_mixed_references", scope: !337, file: !147, line: 239, baseType: !25, size: 32, offset: 416)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "i_trellis", scope: !337, file: !147, line: 240, baseType: !25, size: 32, offset: 448)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "b_fast_pskip", scope: !337, file: !147, line: 241, baseType: !25, size: 32, offset: 480)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "b_dct_decimate", scope: !337, file: !147, line: 242, baseType: !25, size: 32, offset: 512)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "i_noise_reduction", scope: !337, file: !147, line: 243, baseType: !25, size: 32, offset: 544)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_rd", scope: !337, file: !147, line: 244, baseType: !358, size: 32, offset: 576)
!358 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_trellis", scope: !337, file: !147, line: 245, baseType: !358, size: 32, offset: 608)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "i_luma_deadzone", scope: !337, file: !147, line: 248, baseType: !361, size: 64, offset: 640)
!361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 64, elements: !362)
!362 = !{!229}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "b_psnr", scope: !337, file: !147, line: 250, baseType: !25, size: 32, offset: 704)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "b_ssim", scope: !337, file: !147, line: 251, baseType: !25, size: 32, offset: 736)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !267, file: !147, line: 289, baseType: !366, size: 1024, offset: 3776)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !267, file: !147, line: 255, size: 1024, elements: !367)
!367 = !{!368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !402, !403}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "i_rc_method", scope: !366, file: !147, line: 257, baseType: !25, size: 32)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_constant", scope: !366, file: !147, line: 259, baseType: !25, size: 32, offset: 32)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_min", scope: !366, file: !147, line: 260, baseType: !25, size: 32, offset: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_max", scope: !366, file: !147, line: 261, baseType: !25, size: 32, offset: 96)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_step", scope: !366, file: !147, line: 262, baseType: !25, size: 32, offset: 128)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitrate", scope: !366, file: !147, line: 264, baseType: !25, size: 32, offset: 160)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant", scope: !366, file: !147, line: 265, baseType: !358, size: 32, offset: 192)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "f_rate_tolerance", scope: !366, file: !147, line: 266, baseType: !358, size: 32, offset: 224)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_max_bitrate", scope: !366, file: !147, line: 267, baseType: !25, size: 32, offset: 256)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_buffer_size", scope: !366, file: !147, line: 268, baseType: !25, size: 32, offset: 288)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "f_vbv_buffer_init", scope: !366, file: !147, line: 269, baseType: !358, size: 32, offset: 320)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "f_ip_factor", scope: !366, file: !147, line: 270, baseType: !358, size: 32, offset: 352)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "f_pb_factor", scope: !366, file: !147, line: 271, baseType: !358, size: 32, offset: 384)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "i_aq_mode", scope: !366, file: !147, line: 273, baseType: !25, size: 32, offset: 416)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "f_aq_strength", scope: !366, file: !147, line: 274, baseType: !358, size: 32, offset: 448)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_write", scope: !366, file: !147, line: 277, baseType: !25, size: 32, offset: 480)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_out", scope: !366, file: !147, line: 278, baseType: !308, size: 64, offset: 512)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_read", scope: !366, file: !147, line: 279, baseType: !25, size: 32, offset: 576)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_in", scope: !366, file: !147, line: 280, baseType: !308, size: 64, offset: 640)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "f_qcompress", scope: !366, file: !147, line: 283, baseType: !358, size: 32, offset: 704)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "f_qblur", scope: !366, file: !147, line: 284, baseType: !358, size: 32, offset: 736)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "f_complexity_blur", scope: !366, file: !147, line: 285, baseType: !358, size: 32, offset: 768)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "zones", scope: !366, file: !147, line: 286, baseType: !391, size: 64, offset: 832)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zone_t", file: !147, line: 149, baseType: !393)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !147, line: 142, size: 256, elements: !394)
!394 = !{!395, !396, !397, !398, !399, !400}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "i_start", scope: !393, file: !147, line: 144, baseType: !25, size: 32)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "i_end", scope: !393, file: !147, line: 144, baseType: !25, size: 32, offset: 32)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "b_force_qp", scope: !393, file: !147, line: 145, baseType: !25, size: 32, offset: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !393, file: !147, line: 146, baseType: !25, size: 32, offset: 96)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "f_bitrate_factor", scope: !393, file: !147, line: 147, baseType: !358, size: 32, offset: 128)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !393, file: !147, line: 148, baseType: !401, size: 64, offset: 192)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "i_zones", scope: !366, file: !147, line: 287, baseType: !25, size: 32, offset: 896)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "psz_zones", scope: !366, file: !147, line: 288, baseType: !308, size: 64, offset: 960)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "b_aud", scope: !267, file: !147, line: 292, baseType: !25, size: 32, offset: 4800)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "b_repeat_headers", scope: !267, file: !147, line: 293, baseType: !25, size: 32, offset: 4832)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !267, file: !147, line: 294, baseType: !25, size: 32, offset: 4864)
!407 = !{!408, !409, !410, !411}
!408 = !DILocalVariable(name: "sps", arg: 1, scope: !262, file: !3, line: 77, type: !27)
!409 = !DILocalVariable(name: "i_id", arg: 2, scope: !262, file: !3, line: 77, type: !25)
!410 = !DILocalVariable(name: "param", arg: 3, scope: !262, file: !3, line: 77, type: !265)
!411 = !DILocalVariable(name: "i", scope: !412, file: !3, line: 113, type: !25)
!412 = distinct !DILexicalBlock(scope: !413, file: !3, line: 112, column: 5)
!413 = distinct !DILexicalBlock(scope: !414, file: !3, line: 111, column: 14)
!414 = distinct !DILexicalBlock(scope: !262, file: !3, line: 107, column: 9)
!415 = !DILocation(line: 0, scope: !262)
!416 = !DILocation(line: 79, column: 15, scope: !262)
!417 = !{!418, !419, i64 0}
!418 = !{!"", !419, i64 0, !419, i64 4, !419, i64 8, !419, i64 12, !419, i64 16, !419, i64 20, !419, i64 24, !419, i64 28, !419, i64 32, !419, i64 36, !419, i64 40, !419, i64 44, !419, i64 48, !420, i64 52, !419, i64 1076, !419, i64 1080, !419, i64 1084, !419, i64 1088, !419, i64 1092, !419, i64 1096, !419, i64 1100, !419, i64 1104, !422, i64 1108, !419, i64 1124, !423, i64 1128, !419, i64 1236}
!419 = !{!"int", !420, i64 0}
!420 = !{!"omnipotent char", !421, i64 0}
!421 = !{!"Simple C/C++ TBAA"}
!422 = !{!"", !419, i64 0, !419, i64 4, !419, i64 8, !419, i64 12}
!423 = !{!"", !419, i64 0, !419, i64 4, !419, i64 8, !419, i64 12, !419, i64 16, !419, i64 20, !419, i64 24, !419, i64 28, !419, i64 32, !419, i64 36, !419, i64 40, !419, i64 44, !419, i64 48, !419, i64 52, !419, i64 56, !419, i64 60, !419, i64 64, !419, i64 68, !419, i64 72, !419, i64 76, !419, i64 80, !419, i64 84, !419, i64 88, !419, i64 92, !419, i64 96, !419, i64 100, !419, i64 104}
!424 = !DILocation(line: 81, column: 53, scope: !262)
!425 = !DILocation(line: 81, column: 56, scope: !262)
!426 = !{!427, !419, i64 472}
!427 = !{!"x264_param_t", !419, i64 0, !419, i64 4, !419, i64 8, !419, i64 12, !419, i64 16, !419, i64 20, !419, i64 24, !419, i64 28, !428, i64 32, !419, i64 68, !419, i64 72, !419, i64 76, !419, i64 80, !419, i64 84, !419, i64 88, !419, i64 92, !419, i64 96, !419, i64 100, !419, i64 104, !419, i64 108, !419, i64 112, !419, i64 116, !419, i64 120, !419, i64 124, !419, i64 128, !419, i64 132, !419, i64 136, !429, i64 144, !420, i64 152, !420, i64 168, !420, i64 184, !420, i64 200, !420, i64 216, !420, i64 280, !429, i64 344, !429, i64 352, !419, i64 360, !419, i64 364, !429, i64 368, !430, i64 376, !432, i64 472, !419, i64 600, !419, i64 604, !419, i64 608}
!428 = !{!"", !419, i64 0, !419, i64 4, !419, i64 8, !419, i64 12, !419, i64 16, !419, i64 20, !419, i64 24, !419, i64 28, !419, i64 32}
!429 = !{!"any pointer", !420, i64 0}
!430 = !{!"", !419, i64 0, !419, i64 4, !419, i64 8, !419, i64 12, !419, i64 16, !419, i64 20, !419, i64 24, !419, i64 28, !419, i64 32, !419, i64 36, !419, i64 40, !419, i64 44, !419, i64 48, !419, i64 52, !419, i64 56, !419, i64 60, !419, i64 64, !419, i64 68, !431, i64 72, !431, i64 76, !420, i64 80, !419, i64 88, !419, i64 92}
!431 = !{!"float", !420, i64 0}
!432 = !{!"", !419, i64 0, !419, i64 4, !419, i64 8, !419, i64 12, !419, i64 16, !419, i64 20, !431, i64 24, !431, i64 28, !419, i64 32, !419, i64 36, !431, i64 40, !431, i64 44, !431, i64 48, !419, i64 52, !431, i64 56, !419, i64 60, !429, i64 64, !419, i64 72, !429, i64 80, !431, i64 88, !431, i64 92, !431, i64 96, !429, i64 104, !419, i64 112, !429, i64 120}
!433 = !DILocation(line: 81, column: 68, scope: !262)
!434 = !DILocation(line: 81, column: 83, scope: !262)
!435 = !DILocation(line: 81, column: 96, scope: !262)
!436 = !{!427, !419, i64 476}
!437 = !DILocation(line: 81, column: 110, scope: !262)
!438 = !DILocation(line: 81, column: 10, scope: !262)
!439 = !DILocation(line: 81, column: 44, scope: !262)
!440 = !{!418, !419, i64 1236}
!441 = !DILocation(line: 82, column: 9, scope: !262)
!442 = !DILocation(line: 84, column: 29, scope: !443)
!443 = distinct !DILexicalBlock(scope: !444, file: !3, line: 84, column: 14)
!444 = distinct !DILexicalBlock(scope: !262, file: !3, line: 82, column: 9)
!445 = !{!427, !419, i64 384}
!446 = !DILocation(line: 84, column: 14, scope: !443)
!447 = !DILocation(line: 84, column: 45, scope: !443)
!448 = !DILocation(line: 84, column: 55, scope: !443)
!449 = !{!427, !419, i64 136}
!450 = !DILocation(line: 84, column: 68, scope: !443)
!451 = !DILocation(line: 84, column: 14, scope: !444)
!452 = !DILocation(line: 86, column: 21, scope: !453)
!453 = distinct !DILexicalBlock(scope: !443, file: !3, line: 86, column: 14)
!454 = !{!427, !419, i64 124}
!455 = !DILocation(line: 86, column: 14, scope: !453)
!456 = !DILocation(line: 86, column: 29, scope: !453)
!457 = !DILocation(line: 86, column: 39, scope: !453)
!458 = !{!427, !419, i64 96}
!459 = !DILocation(line: 86, column: 48, scope: !453)
!460 = !DILocation(line: 86, column: 14, scope: !443)
!461 = !DILocation(line: 0, scope: !444)
!462 = !{!418, !419, i64 4}
!463 = !DILocation(line: 90, column: 31, scope: !262)
!464 = !{!427, !419, i64 24}
!465 = !DILocation(line: 90, column: 10, scope: !262)
!466 = !DILocation(line: 90, column: 22, scope: !262)
!467 = !{!418, !419, i64 8}
!468 = !DILocation(line: 92, column: 10, scope: !262)
!469 = !DILocation(line: 92, column: 29, scope: !262)
!470 = !{!418, !419, i64 12}
!471 = !DILocation(line: 95, column: 10, scope: !262)
!472 = !DILocation(line: 95, column: 29, scope: !262)
!473 = !{!418, !419, i64 16}
!474 = !DILocation(line: 97, column: 10, scope: !262)
!475 = !DILocation(line: 97, column: 29, scope: !262)
!476 = !{!418, !419, i64 20}
!477 = !{!427, !419, i64 80}
!478 = !DILocation(line: 100, column: 5, scope: !262)
!479 = !DILocation(line: 100, column: 15, scope: !262)
!480 = !DILocation(line: 100, column: 45, scope: !262)
!481 = !DILocation(line: 102, column: 34, scope: !482)
!482 = distinct !DILexicalBlock(scope: !262, file: !3, line: 101, column: 5)
!483 = distinct !{!483, !478, !484, !485}
!484 = !DILocation(line: 103, column: 5, scope: !262)
!485 = !{!"llvm.loop.mustprogress"}
!486 = !DILocation(line: 99, column: 10, scope: !262)
!487 = !DILocation(line: 104, column: 30, scope: !262)
!488 = !{!418, !419, i64 24}
!489 = !DILocation(line: 106, column: 10, scope: !262)
!490 = !DILocation(line: 106, column: 21, scope: !262)
!491 = !{!418, !419, i64 28}
!492 = !DILocation(line: 109, column: 61, scope: !493)
!493 = distinct !DILexicalBlock(scope: !414, file: !3, line: 108, column: 5)
!494 = !DILocation(line: 109, column: 14, scope: !493)
!495 = !DILocation(line: 109, column: 33, scope: !493)
!496 = !{!418, !419, i64 32}
!497 = !DILocation(line: 127, column: 10, scope: !262)
!498 = !DILocation(line: 127, column: 16, scope: !262)
!499 = !{!418, !419, i64 1124}
!500 = !DILocation(line: 129, column: 10, scope: !262)
!501 = !DILocation(line: 129, column: 44, scope: !262)
!502 = !{!418, !419, i64 1080}
!503 = !DILocation(line: 130, column: 32, scope: !262)
!504 = !DILocation(line: 130, column: 10, scope: !262)
!505 = !{!419, !419, i64 0}
!506 = !DILocation(line: 130, column: 40, scope: !262)
!507 = !DILocation(line: 130, column: 47, scope: !262)
!508 = !DILocation(line: 130, column: 21, scope: !262)
!509 = !DILocation(line: 132, column: 16, scope: !510)
!510 = distinct !DILexicalBlock(scope: !262, file: !3, line: 132, column: 9)
!511 = !{!427, !419, i64 132}
!512 = !DILocation(line: 132, column: 9, scope: !510)
!513 = !DILocation(line: 132, column: 9, scope: !262)
!514 = !DILocation(line: 131, column: 10, scope: !262)
!515 = !DILocation(line: 133, column: 47, scope: !510)
!516 = !DILocation(line: 133, column: 53, scope: !510)
!517 = !DILocation(line: 133, column: 26, scope: !510)
!518 = !{!418, !419, i64 1088}
!519 = !DILocation(line: 133, column: 9, scope: !510)
!520 = !DILocation(line: 134, column: 29, scope: !262)
!521 = !DILocation(line: 134, column: 10, scope: !262)
!522 = !DILocation(line: 134, column: 27, scope: !262)
!523 = !{!418, !419, i64 1092}
!524 = !DILocation(line: 135, column: 10, scope: !262)
!525 = !DILocation(line: 135, column: 36, scope: !262)
!526 = !{!418, !419, i64 1096}
!527 = !DILocation(line: 136, column: 49, scope: !262)
!528 = !{!427, !419, i64 396}
!529 = !DILocation(line: 137, column: 31, scope: !262)
!530 = !DILocation(line: 138, column: 51, scope: !262)
!531 = !{!427, !419, i64 380}
!532 = !DILocation(line: 138, column: 31, scope: !262)
!533 = !DILocation(line: 136, column: 10, scope: !262)
!534 = !DILocation(line: 136, column: 32, scope: !262)
!535 = !{!418, !419, i64 1100}
!536 = !DILocation(line: 140, column: 10, scope: !262)
!537 = !DILocation(line: 140, column: 24, scope: !262)
!538 = !{!418, !419, i64 1108}
!539 = !DILocation(line: 141, column: 15, scope: !262)
!540 = !DILocation(line: 141, column: 24, scope: !262)
!541 = !{!418, !419, i64 1116}
!542 = !DILocation(line: 142, column: 41, scope: !262)
!543 = !DILocation(line: 145, column: 19, scope: !262)
!544 = !DILocation(line: 142, column: 45, scope: !262)
!545 = !DILocation(line: 142, column: 15, scope: !262)
!546 = !DILocation(line: 142, column: 24, scope: !262)
!547 = !{!418, !419, i64 1112}
!548 = !DILocation(line: 143, column: 43, scope: !262)
!549 = !DILocation(line: 143, column: 47, scope: !262)
!550 = !DILocation(line: 143, column: 66, scope: !262)
!551 = !DILocation(line: 143, column: 15, scope: !262)
!552 = !DILocation(line: 143, column: 24, scope: !262)
!553 = !{!418, !419, i64 1120}
!554 = !DILocation(line: 145, column: 37, scope: !262)
!555 = !DILocation(line: 144, column: 10, scope: !262)
!556 = !DILocation(line: 144, column: 17, scope: !262)
!557 = !{!418, !419, i64 1104}
!558 = !DILocation(line: 147, column: 10, scope: !262)
!559 = !DILocation(line: 147, column: 42, scope: !262)
!560 = !{!418, !419, i64 1128}
!561 = !DILocation(line: 148, column: 20, scope: !562)
!562 = distinct !DILexicalBlock(scope: !262, file: !3, line: 148, column: 9)
!563 = !{!427, !419, i64 36}
!564 = !DILocation(line: 148, column: 32, scope: !562)
!565 = !DILocation(line: 148, column: 36, scope: !562)
!566 = !DILocation(line: 148, column: 16, scope: !562)
!567 = !DILocation(line: 148, column: 50, scope: !562)
!568 = !{!427, !419, i64 32}
!569 = !DILocation(line: 148, column: 63, scope: !562)
!570 = !DILocation(line: 148, column: 9, scope: !262)
!571 = !DILocation(line: 150, column: 46, scope: !572)
!572 = distinct !DILexicalBlock(scope: !562, file: !3, line: 149, column: 5)
!573 = !DILocation(line: 151, column: 18, scope: !572)
!574 = !DILocation(line: 151, column: 30, scope: !572)
!575 = !{!418, !419, i64 1132}
!576 = !DILocation(line: 152, column: 18, scope: !572)
!577 = !DILocation(line: 152, column: 30, scope: !572)
!578 = !{!418, !419, i64 1136}
!579 = !DILocation(line: 153, column: 5, scope: !572)
!580 = !DILocation(line: 155, column: 53, scope: !262)
!581 = !{!427, !419, i64 40}
!582 = !DILocation(line: 155, column: 42, scope: !262)
!583 = !DILocation(line: 155, column: 14, scope: !262)
!584 = !DILocation(line: 155, column: 38, scope: !262)
!585 = !{!418, !419, i64 1140}
!586 = !DILocation(line: 156, column: 9, scope: !262)
!587 = !DILocation(line: 157, column: 60, scope: !588)
!588 = distinct !DILexicalBlock(scope: !262, file: !3, line: 156, column: 9)
!589 = !DILocation(line: 157, column: 38, scope: !588)
!590 = !DILocation(line: 157, column: 18, scope: !588)
!591 = !DILocation(line: 157, column: 34, scope: !588)
!592 = !{!418, !419, i64 1144}
!593 = !DILocation(line: 157, column: 9, scope: !588)
!594 = !DILocation(line: 159, column: 14, scope: !262)
!595 = !DILocation(line: 159, column: 36, scope: !262)
!596 = !{!418, !419, i64 1148}
!597 = !DILocation(line: 160, column: 41, scope: !262)
!598 = !{!427, !419, i64 44}
!599 = !DILocation(line: 160, column: 30, scope: !262)
!600 = !DILocation(line: 160, column: 14, scope: !262)
!601 = !DILocation(line: 160, column: 26, scope: !262)
!602 = !{!418, !419, i64 1152}
!603 = !DILocation(line: 161, column: 41, scope: !262)
!604 = !{!427, !419, i64 48}
!605 = !DILocation(line: 161, column: 30, scope: !262)
!606 = !DILocation(line: 161, column: 14, scope: !262)
!607 = !DILocation(line: 161, column: 26, scope: !262)
!608 = !{!418, !419, i64 1156}
!609 = !DILocation(line: 162, column: 14, scope: !262)
!610 = !DILocation(line: 162, column: 42, scope: !262)
!611 = !{!418, !419, i64 1160}
!612 = !DILocation(line: 164, column: 41, scope: !262)
!613 = !{!427, !419, i64 52}
!614 = !DILocation(line: 164, column: 53, scope: !262)
!615 = !DILocation(line: 164, column: 30, scope: !262)
!616 = !DILocation(line: 164, column: 14, scope: !262)
!617 = !DILocation(line: 164, column: 26, scope: !262)
!618 = !{!418, !419, i64 1164}
!619 = !DILocation(line: 165, column: 41, scope: !262)
!620 = !{!427, !419, i64 56}
!621 = !DILocation(line: 165, column: 53, scope: !262)
!622 = !DILocation(line: 165, column: 30, scope: !262)
!623 = !DILocation(line: 165, column: 14, scope: !262)
!624 = !DILocation(line: 165, column: 26, scope: !262)
!625 = !{!418, !419, i64 1168}
!626 = !DILocation(line: 166, column: 41, scope: !262)
!627 = !{!427, !419, i64 60}
!628 = !DILocation(line: 166, column: 53, scope: !262)
!629 = !DILocation(line: 166, column: 30, scope: !262)
!630 = !DILocation(line: 166, column: 14, scope: !262)
!631 = !DILocation(line: 166, column: 26, scope: !262)
!632 = !{!418, !419, i64 1172}
!633 = !DILocation(line: 167, column: 30, scope: !634)
!634 = distinct !DILexicalBlock(scope: !262, file: !3, line: 167, column: 9)
!635 = !DILocation(line: 167, column: 35, scope: !634)
!636 = !DILocation(line: 168, column: 30, scope: !634)
!637 = !DILocation(line: 168, column: 35, scope: !634)
!638 = !DILocation(line: 174, column: 30, scope: !639)
!639 = distinct !DILexicalBlock(scope: !262, file: !3, line: 174, column: 9)
!640 = !DILocation(line: 174, column: 35, scope: !639)
!641 = !DILocation(line: 171, column: 46, scope: !642)
!642 = distinct !DILexicalBlock(scope: !634, file: !3, line: 170, column: 5)
!643 = !DILocation(line: 178, column: 40, scope: !644)
!644 = distinct !DILexicalBlock(scope: !639, file: !3, line: 177, column: 5)
!645 = !DILocation(line: 179, column: 5, scope: !644)
!646 = !DILocation(line: 182, column: 55, scope: !262)
!647 = !{!427, !419, i64 64}
!648 = !DILocation(line: 182, column: 44, scope: !262)
!649 = !DILocation(line: 182, column: 14, scope: !262)
!650 = !DILocation(line: 182, column: 40, scope: !262)
!651 = !{!418, !419, i64 1176}
!652 = !DILocation(line: 183, column: 9, scope: !262)
!653 = !DILocation(line: 185, column: 18, scope: !654)
!654 = distinct !DILexicalBlock(scope: !655, file: !3, line: 184, column: 5)
!655 = distinct !DILexicalBlock(scope: !262, file: !3, line: 183, column: 9)
!656 = !DILocation(line: 185, column: 35, scope: !654)
!657 = !{!418, !419, i64 1180}
!658 = !DILocation(line: 186, column: 18, scope: !654)
!659 = !DILocation(line: 186, column: 38, scope: !654)
!660 = !{!418, !419, i64 1184}
!661 = !DILocation(line: 187, column: 5, scope: !654)
!662 = !DILocation(line: 189, column: 14, scope: !262)
!663 = !DILocation(line: 189, column: 36, scope: !262)
!664 = !{!418, !419, i64 1188}
!665 = !DILocation(line: 190, column: 16, scope: !666)
!666 = distinct !DILexicalBlock(scope: !262, file: !3, line: 190, column: 9)
!667 = !{!427, !419, i64 68}
!668 = !DILocation(line: 190, column: 26, scope: !666)
!669 = !DILocation(line: 190, column: 30, scope: !666)
!670 = !DILocation(line: 190, column: 40, scope: !666)
!671 = !{!427, !419, i64 72}
!672 = !DILocation(line: 190, column: 50, scope: !666)
!673 = !DILocation(line: 190, column: 9, scope: !262)
!674 = !DILocation(line: 192, column: 40, scope: !675)
!675 = distinct !DILexicalBlock(scope: !666, file: !3, line: 191, column: 5)
!676 = !DILocation(line: 193, column: 18, scope: !675)
!677 = !DILocation(line: 193, column: 38, scope: !675)
!678 = !{!418, !419, i64 1192}
!679 = !DILocation(line: 194, column: 50, scope: !675)
!680 = !DILocation(line: 194, column: 18, scope: !675)
!681 = !DILocation(line: 194, column: 31, scope: !675)
!682 = !{!418, !419, i64 1196}
!683 = !DILocation(line: 195, column: 18, scope: !675)
!684 = !DILocation(line: 195, column: 37, scope: !675)
!685 = !{!418, !419, i64 1200}
!686 = !DILocation(line: 196, column: 5, scope: !675)
!687 = !DILocation(line: 198, column: 44, scope: !262)
!688 = !{!427, !419, i64 108}
!689 = !DILocation(line: 198, column: 37, scope: !262)
!690 = !DILocation(line: 198, column: 74, scope: !262)
!691 = !DILocation(line: 198, column: 67, scope: !262)
!692 = !DILocation(line: 198, column: 14, scope: !262)
!693 = !DILocation(line: 198, column: 35, scope: !262)
!694 = !{!418, !419, i64 1228}
!695 = !DILocation(line: 202, column: 29, scope: !262)
!696 = !{!427, !419, i64 76}
!697 = !DILocation(line: 202, column: 10, scope: !262)
!698 = !DILocation(line: 202, column: 27, scope: !262)
!699 = !{!418, !419, i64 1076}
!700 = !DILocation(line: 201, column: 14, scope: !262)
!701 = !DILocation(line: 201, column: 40, scope: !262)
!702 = !{!418, !419, i64 1232}
!703 = !DILocation(line: 204, column: 14, scope: !262)
!704 = !DILocation(line: 204, column: 38, scope: !262)
!705 = !DILocation(line: 211, column: 75, scope: !706)
!706 = distinct !DILexicalBlock(scope: !707, file: !3, line: 206, column: 5)
!707 = distinct !DILexicalBlock(scope: !262, file: !3, line: 205, column: 9)
!708 = !{!427, !419, i64 412}
!709 = !DILocation(line: 211, column: 85, scope: !706)
!710 = !DILocation(line: 211, column: 87, scope: !706)
!711 = !DILocation(line: 211, column: 60, scope: !706)
!712 = !DILocation(line: 211, column: 56, scope: !706)
!713 = !DILocation(line: 211, column: 90, scope: !706)
!714 = !DILocation(line: 211, column: 50, scope: !706)
!715 = !DILocation(line: 211, column: 99, scope: !706)
!716 = !DILocation(line: 211, column: 18, scope: !706)
!717 = !DILocation(line: 211, column: 48, scope: !706)
!718 = !{!418, !419, i64 1224}
!719 = !DILocation(line: 210, column: 18, scope: !706)
!720 = !DILocation(line: 210, column: 50, scope: !706)
!721 = !{!418, !419, i64 1220}
!722 = !DILocation(line: 213, column: 1, scope: !262)
!723 = !DILocation(line: 0, scope: !2)
!724 = !DILocation(line: 218, column: 26, scope: !2)
!725 = !DILocalVariable(name: "s", arg: 1, scope: !726, file: !8, line: 86, type: !6)
!726 = distinct !DISubprogram(name: "bs_write", scope: !8, file: !8, line: 86, type: !727, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !96, retainedNodes: !729)
!727 = !DISubroutineType(types: !728)
!728 = !{null, !6, !25, !124}
!729 = !{!725, !730, !731}
!730 = !DILocalVariable(name: "i_count", arg: 2, scope: !726, file: !8, line: 86, type: !25)
!731 = !DILocalVariable(name: "i_bits", arg: 3, scope: !726, file: !8, line: 86, type: !124)
!732 = !DILocation(line: 0, scope: !726, inlinedAt: !733)
!733 = distinct !DILocation(line: 218, column: 5, scope: !2)
!734 = !DILocation(line: 90, column: 27, scope: !735, inlinedAt: !733)
!735 = distinct !DILexicalBlock(scope: !736, file: !8, line: 89, column: 5)
!736 = distinct !DILexicalBlock(scope: !726, file: !8, line: 88, column: 9)
!737 = !{!738, !739, i64 24}
!738 = !{!"bs_s", !429, i64 0, !429, i64 8, !429, i64 16, !739, i64 24, !419, i64 32, !419, i64 36}
!739 = !{!"long", !420, i64 0}
!740 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !733)
!741 = !DILocation(line: 90, column: 50, scope: !735, inlinedAt: !733)
!742 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !733)
!743 = !DILocation(line: 91, column: 12, scope: !735, inlinedAt: !733)
!744 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !733)
!745 = !{!738, !419, i64 32}
!746 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !733)
!747 = distinct !DILexicalBlock(scope: !735, file: !8, line: 92, column: 13)
!748 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !733)
!749 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !733)
!750 = distinct !DILexicalBlock(scope: !747, file: !8, line: 93, column: 9)
!751 = !DILocalVariable(name: "x", arg: 1, scope: !752, file: !753, line: 153, type: !21)
!752 = distinct !DISubprogram(name: "endian_fix", scope: !753, file: !753, line: 153, type: !754, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !96, retainedNodes: !756)
!753 = !DIFile(filename: "./common/osdep.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "61ba426ac8237ae8f0b1d3591c09a744")
!754 = !DISubroutineType(types: !755)
!755 = !{!21, !21}
!756 = !{!751}
!757 = !DILocation(line: 0, scope: !752, inlinedAt: !758)
!758 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !733)
!759 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !758)
!760 = !{i64 472789}
!761 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !733)
!762 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !733)
!763 = !{!738, !429, i64 8}
!764 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !733)
!765 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !733)
!766 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !733)
!767 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !733)
!768 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !769)
!769 = distinct !DILocation(line: 219, column: 5, scope: !2)
!770 = !DILocation(line: 219, column: 26, scope: !2)
!771 = !DILocation(line: 0, scope: !726, inlinedAt: !769)
!772 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !769)
!773 = !DILocation(line: 90, column: 50, scope: !735, inlinedAt: !769)
!774 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !769)
!775 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !769)
!776 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !769)
!777 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !769)
!778 = !DILocation(line: 0, scope: !752, inlinedAt: !779)
!779 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !769)
!780 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !779)
!781 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !769)
!782 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !769)
!783 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !769)
!784 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !769)
!785 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !769)
!786 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !769)
!787 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !788)
!788 = distinct !DILocation(line: 220, column: 5, scope: !2)
!789 = !DILocation(line: 220, column: 26, scope: !2)
!790 = !DILocation(line: 0, scope: !726, inlinedAt: !788)
!791 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !788)
!792 = !DILocation(line: 90, column: 50, scope: !735, inlinedAt: !788)
!793 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !788)
!794 = !DILocation(line: 90, column: 21, scope: !735, inlinedAt: !788)
!795 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !788)
!796 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !788)
!797 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !788)
!798 = !DILocation(line: 0, scope: !752, inlinedAt: !799)
!799 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !788)
!800 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !799)
!801 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !788)
!802 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !788)
!803 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !788)
!804 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !788)
!805 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !788)
!806 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !788)
!807 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !808)
!808 = distinct !DILocation(line: 221, column: 5, scope: !2)
!809 = !DILocation(line: 221, column: 26, scope: !2)
!810 = !DILocation(line: 0, scope: !726, inlinedAt: !808)
!811 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !808)
!812 = !DILocation(line: 90, column: 50, scope: !735, inlinedAt: !808)
!813 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !808)
!814 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !808)
!815 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !808)
!816 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !808)
!817 = !DILocation(line: 0, scope: !752, inlinedAt: !818)
!818 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !808)
!819 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !818)
!820 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !808)
!821 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !808)
!822 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !808)
!823 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !808)
!824 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !808)
!825 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !808)
!826 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !827)
!827 = distinct !DILocation(line: 223, column: 5, scope: !2)
!828 = !DILocation(line: 0, scope: !726, inlinedAt: !827)
!829 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !827)
!830 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !827)
!831 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !827)
!832 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !827)
!833 = !DILocation(line: 0, scope: !752, inlinedAt: !834)
!834 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !827)
!835 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !834)
!836 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !827)
!837 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !827)
!838 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !827)
!839 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !827)
!840 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !827)
!841 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !827)
!842 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !843)
!843 = distinct !DILocation(line: 225, column: 5, scope: !2)
!844 = !DILocation(line: 225, column: 26, scope: !2)
!845 = !DILocation(line: 0, scope: !726, inlinedAt: !843)
!846 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !843)
!847 = !DILocation(line: 90, column: 50, scope: !735, inlinedAt: !843)
!848 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !843)
!849 = !DILocation(line: 90, column: 21, scope: !735, inlinedAt: !843)
!850 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !843)
!851 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !843)
!852 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !843)
!853 = !DILocation(line: 0, scope: !752, inlinedAt: !854)
!854 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !843)
!855 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !854)
!856 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !843)
!857 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !843)
!858 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !843)
!859 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !843)
!860 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !843)
!861 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !843)
!862 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !863)
!863 = distinct !DILocation(line: 218, column: 5, scope: !864, inlinedAt: !872)
!864 = distinct !DISubprogram(name: "bs_write_ue_big", scope: !8, file: !8, line: 203, type: !865, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !96, retainedNodes: !867)
!865 = !DISubroutineType(types: !866)
!866 = !{null, !6, !99}
!867 = !{!868, !869, !870, !871}
!868 = !DILocalVariable(name: "s", arg: 1, scope: !864, file: !8, line: 203, type: !6)
!869 = !DILocalVariable(name: "val", arg: 2, scope: !864, file: !8, line: 203, type: !99)
!870 = !DILocalVariable(name: "size", scope: !864, file: !8, line: 205, type: !25)
!871 = !DILocalVariable(name: "tmp", scope: !864, file: !8, line: 206, type: !25)
!872 = distinct !DILocation(line: 227, column: 5, scope: !2)
!873 = !DILocation(line: 227, column: 26, scope: !2)
!874 = !DILocation(line: 0, scope: !864, inlinedAt: !872)
!875 = !DILocation(line: 206, column: 15, scope: !864, inlinedAt: !872)
!876 = !DILocation(line: 207, column: 13, scope: !877, inlinedAt: !872)
!877 = distinct !DILexicalBlock(scope: !864, file: !8, line: 207, column: 9)
!878 = !DILocation(line: 207, column: 9, scope: !864, inlinedAt: !872)
!879 = !DILocation(line: 212, column: 13, scope: !880, inlinedAt: !872)
!880 = distinct !DILexicalBlock(scope: !864, file: !8, line: 212, column: 9)
!881 = !DILocation(line: 212, column: 9, scope: !864, inlinedAt: !872)
!882 = !DILocation(line: 217, column: 13, scope: !864, inlinedAt: !872)
!883 = !{!420, !420, i64 0}
!884 = !DILocation(line: 217, column: 10, scope: !864, inlinedAt: !872)
!885 = !DILocation(line: 218, column: 22, scope: !864, inlinedAt: !872)
!886 = !DILocation(line: 0, scope: !726, inlinedAt: !863)
!887 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !863)
!888 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !863)
!889 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !863)
!890 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !863)
!891 = !DILocation(line: 0, scope: !752, inlinedAt: !892)
!892 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !863)
!893 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !892)
!894 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !863)
!895 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !863)
!896 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !863)
!897 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !863)
!898 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !863)
!899 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !863)
!900 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !901)
!901 = distinct !DILocation(line: 219, column: 5, scope: !864, inlinedAt: !872)
!902 = !DILocation(line: 219, column: 27, scope: !864, inlinedAt: !872)
!903 = !DILocation(line: 0, scope: !726, inlinedAt: !901)
!904 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !901)
!905 = !DILocation(line: 90, column: 50, scope: !735, inlinedAt: !901)
!906 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !901)
!907 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !901)
!908 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !901)
!909 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !901)
!910 = !DILocation(line: 0, scope: !752, inlinedAt: !911)
!911 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !901)
!912 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !911)
!913 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !901)
!914 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !901)
!915 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !901)
!916 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !901)
!917 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !901)
!918 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !901)
!919 = !DILocation(line: 229, column: 14, scope: !920)
!920 = distinct !DILexicalBlock(scope: !2, file: !3, line: 229, column: 9)
!921 = !DILocation(line: 229, column: 28, scope: !920)
!922 = !DILocation(line: 229, column: 9, scope: !2)
!923 = !DILocation(line: 0, scope: !864, inlinedAt: !924)
!924 = distinct !DILocation(line: 231, column: 9, scope: !925)
!925 = distinct !DILexicalBlock(scope: !920, file: !3, line: 230, column: 5)
!926 = !DILocation(line: 0, scope: !726, inlinedAt: !927)
!927 = distinct !DILocation(line: 218, column: 5, scope: !864, inlinedAt: !924)
!928 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !927)
!929 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !927)
!930 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !927)
!931 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !927)
!932 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !927)
!933 = !DILocation(line: 0, scope: !752, inlinedAt: !934)
!934 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !927)
!935 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !934)
!936 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !927)
!937 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !927)
!938 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !927)
!939 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !927)
!940 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !927)
!941 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !927)
!942 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !943)
!943 = distinct !DILocation(line: 219, column: 5, scope: !864, inlinedAt: !924)
!944 = !DILocation(line: 0, scope: !726, inlinedAt: !943)
!945 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !943)
!946 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !943)
!947 = !DILocation(line: 90, column: 21, scope: !735, inlinedAt: !943)
!948 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !943)
!949 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !943)
!950 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !943)
!951 = !DILocation(line: 0, scope: !752, inlinedAt: !952)
!952 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !943)
!953 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !952)
!954 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !943)
!955 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !943)
!956 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !943)
!957 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !943)
!958 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !943)
!959 = !DILocation(line: 0, scope: !864, inlinedAt: !960)
!960 = distinct !DILocation(line: 232, column: 9, scope: !925)
!961 = !DILocation(line: 0, scope: !726, inlinedAt: !962)
!962 = distinct !DILocation(line: 218, column: 5, scope: !864, inlinedAt: !960)
!963 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !962)
!964 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !962)
!965 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !962)
!966 = !DILocation(line: 0, scope: !752, inlinedAt: !967)
!967 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !962)
!968 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !967)
!969 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !962)
!970 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !962)
!971 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !962)
!972 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !962)
!973 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !962)
!974 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !975)
!975 = distinct !DILocation(line: 219, column: 5, scope: !864, inlinedAt: !960)
!976 = !DILocation(line: 0, scope: !726, inlinedAt: !975)
!977 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !975)
!978 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !975)
!979 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !975)
!980 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !975)
!981 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !975)
!982 = !DILocation(line: 0, scope: !752, inlinedAt: !983)
!983 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !975)
!984 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !983)
!985 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !975)
!986 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !975)
!987 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !975)
!988 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !975)
!989 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !975)
!990 = !DILocation(line: 0, scope: !864, inlinedAt: !991)
!991 = distinct !DILocation(line: 233, column: 9, scope: !925)
!992 = !DILocation(line: 0, scope: !726, inlinedAt: !993)
!993 = distinct !DILocation(line: 218, column: 5, scope: !864, inlinedAt: !991)
!994 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !993)
!995 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !993)
!996 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !993)
!997 = !DILocation(line: 0, scope: !752, inlinedAt: !998)
!998 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !993)
!999 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !998)
!1000 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !993)
!1001 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !993)
!1002 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !993)
!1003 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !993)
!1004 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !993)
!1005 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !1006)
!1006 = distinct !DILocation(line: 219, column: 5, scope: !864, inlinedAt: !991)
!1007 = !DILocation(line: 0, scope: !726, inlinedAt: !1006)
!1008 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !1006)
!1009 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !1006)
!1010 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !1006)
!1011 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !1006)
!1012 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !1006)
!1013 = !DILocation(line: 0, scope: !752, inlinedAt: !1014)
!1014 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1006)
!1015 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !1014)
!1016 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1006)
!1017 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !1006)
!1018 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !1006)
!1019 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !1006)
!1020 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !1006)
!1021 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !1006)
!1022 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !1023)
!1023 = distinct !DILocation(line: 234, column: 9, scope: !925)
!1024 = !DILocation(line: 234, column: 30, scope: !925)
!1025 = !DILocation(line: 0, scope: !726, inlinedAt: !1023)
!1026 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !1023)
!1027 = !DILocation(line: 90, column: 50, scope: !735, inlinedAt: !1023)
!1028 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !1023)
!1029 = !DILocation(line: 90, column: 21, scope: !735, inlinedAt: !1023)
!1030 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !1023)
!1031 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !1023)
!1032 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !1023)
!1033 = !DILocation(line: 0, scope: !752, inlinedAt: !1034)
!1034 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1023)
!1035 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !1034)
!1036 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1023)
!1037 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !1023)
!1038 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !1023)
!1039 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !1023)
!1040 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !1023)
!1041 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !1023)
!1042 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !1043)
!1043 = distinct !DILocation(line: 235, column: 9, scope: !925)
!1044 = !DILocation(line: 0, scope: !726, inlinedAt: !1043)
!1045 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !1043)
!1046 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !1043)
!1047 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !1043)
!1048 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !1043)
!1049 = !DILocation(line: 0, scope: !752, inlinedAt: !1050)
!1050 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1043)
!1051 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !1050)
!1052 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1043)
!1053 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !1043)
!1054 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !1043)
!1055 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !1043)
!1056 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !1043)
!1057 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !1043)
!1058 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !1059)
!1059 = distinct !DILocation(line: 218, column: 5, scope: !864, inlinedAt: !1060)
!1060 = distinct !DILocation(line: 238, column: 5, scope: !2)
!1061 = !DILocation(line: 90, column: 27, scope: !735, inlinedAt: !1059)
!1062 = !DILocation(line: 238, column: 26, scope: !2)
!1063 = !DILocation(line: 0, scope: !864, inlinedAt: !1060)
!1064 = !DILocation(line: 206, column: 15, scope: !864, inlinedAt: !1060)
!1065 = !DILocation(line: 207, column: 13, scope: !877, inlinedAt: !1060)
!1066 = !DILocation(line: 207, column: 9, scope: !864, inlinedAt: !1060)
!1067 = !DILocation(line: 212, column: 13, scope: !880, inlinedAt: !1060)
!1068 = !DILocation(line: 212, column: 9, scope: !864, inlinedAt: !1060)
!1069 = !DILocation(line: 217, column: 13, scope: !864, inlinedAt: !1060)
!1070 = !DILocation(line: 217, column: 10, scope: !864, inlinedAt: !1060)
!1071 = !DILocation(line: 218, column: 22, scope: !864, inlinedAt: !1060)
!1072 = !DILocation(line: 0, scope: !726, inlinedAt: !1059)
!1073 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !1059)
!1074 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !1059)
!1075 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !1059)
!1076 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !1059)
!1077 = !DILocation(line: 0, scope: !752, inlinedAt: !1078)
!1078 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1059)
!1079 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !1078)
!1080 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1059)
!1081 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !1059)
!1082 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !1059)
!1083 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !1059)
!1084 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !1059)
!1085 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !1059)
!1086 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !1087)
!1087 = distinct !DILocation(line: 219, column: 5, scope: !864, inlinedAt: !1060)
!1088 = !DILocation(line: 219, column: 27, scope: !864, inlinedAt: !1060)
!1089 = !DILocation(line: 0, scope: !726, inlinedAt: !1087)
!1090 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !1087)
!1091 = !DILocation(line: 90, column: 50, scope: !735, inlinedAt: !1087)
!1092 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !1087)
!1093 = !DILocation(line: 90, column: 21, scope: !735, inlinedAt: !1087)
!1094 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !1087)
!1095 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !1087)
!1096 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !1087)
!1097 = !DILocation(line: 0, scope: !752, inlinedAt: !1098)
!1098 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1087)
!1099 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !1098)
!1100 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1087)
!1101 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !1087)
!1102 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !1087)
!1103 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !1087)
!1104 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !1087)
!1105 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !1087)
!1106 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !1107)
!1107 = distinct !DILocation(line: 218, column: 5, scope: !864, inlinedAt: !1108)
!1108 = distinct !DILocation(line: 239, column: 5, scope: !2)
!1109 = !DILocation(line: 239, column: 26, scope: !2)
!1110 = !DILocation(line: 0, scope: !864, inlinedAt: !1108)
!1111 = !DILocation(line: 206, column: 15, scope: !864, inlinedAt: !1108)
!1112 = !DILocation(line: 207, column: 13, scope: !877, inlinedAt: !1108)
!1113 = !DILocation(line: 207, column: 9, scope: !864, inlinedAt: !1108)
!1114 = !DILocation(line: 212, column: 13, scope: !880, inlinedAt: !1108)
!1115 = !DILocation(line: 212, column: 9, scope: !864, inlinedAt: !1108)
!1116 = !DILocation(line: 217, column: 13, scope: !864, inlinedAt: !1108)
!1117 = !DILocation(line: 217, column: 10, scope: !864, inlinedAt: !1108)
!1118 = !DILocation(line: 218, column: 22, scope: !864, inlinedAt: !1108)
!1119 = !DILocation(line: 0, scope: !726, inlinedAt: !1107)
!1120 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !1107)
!1121 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !1107)
!1122 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !1107)
!1123 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !1107)
!1124 = !DILocation(line: 0, scope: !752, inlinedAt: !1125)
!1125 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1107)
!1126 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !1125)
!1127 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1107)
!1128 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !1107)
!1129 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !1107)
!1130 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !1107)
!1131 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !1107)
!1132 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !1107)
!1133 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !1134)
!1134 = distinct !DILocation(line: 219, column: 5, scope: !864, inlinedAt: !1108)
!1135 = !DILocation(line: 219, column: 27, scope: !864, inlinedAt: !1108)
!1136 = !DILocation(line: 0, scope: !726, inlinedAt: !1134)
!1137 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !1134)
!1138 = !DILocation(line: 90, column: 50, scope: !735, inlinedAt: !1134)
!1139 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !1134)
!1140 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !1134)
!1141 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !1134)
!1142 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !1134)
!1143 = !DILocation(line: 0, scope: !752, inlinedAt: !1144)
!1144 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1134)
!1145 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !1144)
!1146 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1134)
!1147 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !1134)
!1148 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !1134)
!1149 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !1134)
!1150 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !1134)
!1151 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !1134)
!1152 = !DILocation(line: 240, column: 14, scope: !240)
!1153 = !DILocation(line: 240, column: 9, scope: !2)
!1154 = !DILocation(line: 242, column: 30, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !240, file: !3, line: 241, column: 5)
!1156 = !DILocation(line: 0, scope: !864, inlinedAt: !1157)
!1157 = distinct !DILocation(line: 242, column: 9, scope: !1155)
!1158 = !DILocation(line: 206, column: 15, scope: !864, inlinedAt: !1157)
!1159 = !DILocation(line: 207, column: 13, scope: !877, inlinedAt: !1157)
!1160 = !DILocation(line: 207, column: 9, scope: !864, inlinedAt: !1157)
!1161 = !DILocation(line: 212, column: 13, scope: !880, inlinedAt: !1157)
!1162 = !DILocation(line: 212, column: 9, scope: !864, inlinedAt: !1157)
!1163 = !DILocation(line: 217, column: 13, scope: !864, inlinedAt: !1157)
!1164 = !DILocation(line: 217, column: 10, scope: !864, inlinedAt: !1157)
!1165 = !DILocation(line: 218, column: 22, scope: !864, inlinedAt: !1157)
!1166 = !DILocation(line: 0, scope: !726, inlinedAt: !1167)
!1167 = distinct !DILocation(line: 218, column: 5, scope: !864, inlinedAt: !1157)
!1168 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !1167)
!1169 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !1167)
!1170 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !1167)
!1171 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !1167)
!1172 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !1167)
!1173 = !DILocation(line: 0, scope: !752, inlinedAt: !1174)
!1174 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1167)
!1175 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !1174)
!1176 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1167)
!1177 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !1167)
!1178 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !1167)
!1179 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !1167)
!1180 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !1167)
!1181 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !1167)
!1182 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !1183)
!1183 = distinct !DILocation(line: 219, column: 5, scope: !864, inlinedAt: !1157)
!1184 = !DILocation(line: 219, column: 27, scope: !864, inlinedAt: !1157)
!1185 = !DILocation(line: 0, scope: !726, inlinedAt: !1183)
!1186 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !1183)
!1187 = !DILocation(line: 90, column: 50, scope: !735, inlinedAt: !1183)
!1188 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !1183)
!1189 = !DILocation(line: 90, column: 21, scope: !735, inlinedAt: !1183)
!1190 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !1183)
!1191 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !1183)
!1192 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !1183)
!1193 = !DILocation(line: 0, scope: !752, inlinedAt: !1194)
!1194 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1183)
!1195 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !1194)
!1196 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1183)
!1197 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !1183)
!1198 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !1183)
!1199 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !1183)
!1200 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !1183)
!1201 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !1183)
!1202 = !DILocation(line: 248, column: 30, scope: !238)
!1203 = !{!418, !419, i64 36}
!1204 = !DILocation(line: 0, scope: !726, inlinedAt: !1205)
!1205 = distinct !DILocation(line: 248, column: 9, scope: !238)
!1206 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !1205)
!1207 = !DILocation(line: 90, column: 50, scope: !735, inlinedAt: !1205)
!1208 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !1205)
!1209 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !1205)
!1210 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !1205)
!1211 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !1205)
!1212 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !1205)
!1213 = !DILocation(line: 0, scope: !752, inlinedAt: !1214)
!1214 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1205)
!1215 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !1214)
!1216 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1205)
!1217 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !1205)
!1218 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !1205)
!1219 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !1205)
!1220 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !1205)
!1221 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !1205)
!1222 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !1223)
!1223 = distinct !DILocation(line: 238, column: 5, scope: !1224, inlinedAt: !1232)
!1224 = distinct !DISubprogram(name: "bs_write_se", scope: !8, file: !8, line: 228, type: !1225, scopeLine: 229, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !96, retainedNodes: !1227)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{null, !6, !25}
!1227 = !{!1228, !1229, !1230, !1231}
!1228 = !DILocalVariable(name: "s", arg: 1, scope: !1224, file: !8, line: 228, type: !6)
!1229 = !DILocalVariable(name: "val", arg: 2, scope: !1224, file: !8, line: 228, type: !25)
!1230 = !DILocalVariable(name: "size", scope: !1224, file: !8, line: 230, type: !25)
!1231 = !DILocalVariable(name: "tmp", scope: !1224, file: !8, line: 231, type: !25)
!1232 = distinct !DILocation(line: 249, column: 9, scope: !238)
!1233 = !DILocation(line: 249, column: 30, scope: !238)
!1234 = !{!418, !419, i64 40}
!1235 = !DILocation(line: 0, scope: !1224, inlinedAt: !1232)
!1236 = !DILocation(line: 231, column: 25, scope: !1224, inlinedAt: !1232)
!1237 = !DILocation(line: 231, column: 21, scope: !1224, inlinedAt: !1232)
!1238 = !DILocation(line: 232, column: 13, scope: !1239, inlinedAt: !1232)
!1239 = distinct !DILexicalBlock(scope: !1224, file: !8, line: 232, column: 9)
!1240 = !DILocation(line: 232, column: 9, scope: !1224, inlinedAt: !1232)
!1241 = !DILocation(line: 237, column: 13, scope: !1224, inlinedAt: !1232)
!1242 = !DILocation(line: 237, column: 10, scope: !1224, inlinedAt: !1232)
!1243 = !DILocation(line: 0, scope: !726, inlinedAt: !1223)
!1244 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !1223)
!1245 = !DILocation(line: 90, column: 50, scope: !735, inlinedAt: !1223)
!1246 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !1223)
!1247 = !DILocation(line: 90, column: 21, scope: !735, inlinedAt: !1223)
!1248 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !1223)
!1249 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !1223)
!1250 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !1223)
!1251 = !DILocation(line: 0, scope: !752, inlinedAt: !1252)
!1252 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1223)
!1253 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !1252)
!1254 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1223)
!1255 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !1223)
!1256 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !1223)
!1257 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !1223)
!1258 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !1223)
!1259 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !1223)
!1260 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !1261)
!1261 = distinct !DILocation(line: 238, column: 5, scope: !1224, inlinedAt: !1262)
!1262 = distinct !DILocation(line: 250, column: 9, scope: !238)
!1263 = !DILocation(line: 250, column: 30, scope: !238)
!1264 = !{!418, !419, i64 44}
!1265 = !DILocation(line: 0, scope: !1224, inlinedAt: !1262)
!1266 = !DILocation(line: 231, column: 25, scope: !1224, inlinedAt: !1262)
!1267 = !DILocation(line: 231, column: 21, scope: !1224, inlinedAt: !1262)
!1268 = !DILocation(line: 232, column: 13, scope: !1239, inlinedAt: !1262)
!1269 = !DILocation(line: 232, column: 9, scope: !1224, inlinedAt: !1262)
!1270 = !DILocation(line: 237, column: 13, scope: !1224, inlinedAt: !1262)
!1271 = !DILocation(line: 237, column: 10, scope: !1224, inlinedAt: !1262)
!1272 = !DILocation(line: 0, scope: !726, inlinedAt: !1261)
!1273 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !1261)
!1274 = !DILocation(line: 90, column: 50, scope: !735, inlinedAt: !1261)
!1275 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !1261)
!1276 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !1261)
!1277 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !1261)
!1278 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !1261)
!1279 = !DILocation(line: 0, scope: !752, inlinedAt: !1280)
!1280 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1261)
!1281 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !1280)
!1282 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1261)
!1283 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !1261)
!1284 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !1261)
!1285 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !1261)
!1286 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !1261)
!1287 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !1261)
!1288 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !1289)
!1289 = distinct !DILocation(line: 218, column: 5, scope: !864, inlinedAt: !1290)
!1290 = distinct !DILocation(line: 251, column: 9, scope: !238)
!1291 = !DILocation(line: 251, column: 30, scope: !238)
!1292 = !{!418, !419, i64 48}
!1293 = !DILocation(line: 0, scope: !864, inlinedAt: !1290)
!1294 = !DILocation(line: 206, column: 15, scope: !864, inlinedAt: !1290)
!1295 = !DILocation(line: 207, column: 13, scope: !877, inlinedAt: !1290)
!1296 = !DILocation(line: 207, column: 9, scope: !864, inlinedAt: !1290)
!1297 = !DILocation(line: 212, column: 13, scope: !880, inlinedAt: !1290)
!1298 = !DILocation(line: 212, column: 9, scope: !864, inlinedAt: !1290)
!1299 = !DILocation(line: 217, column: 13, scope: !864, inlinedAt: !1290)
!1300 = !DILocation(line: 217, column: 10, scope: !864, inlinedAt: !1290)
!1301 = !DILocation(line: 218, column: 22, scope: !864, inlinedAt: !1290)
!1302 = !DILocation(line: 0, scope: !726, inlinedAt: !1289)
!1303 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !1289)
!1304 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !1289)
!1305 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !1289)
!1306 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !1289)
!1307 = !DILocation(line: 0, scope: !752, inlinedAt: !1308)
!1308 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1289)
!1309 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !1308)
!1310 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1289)
!1311 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !1289)
!1312 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !1289)
!1313 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !1289)
!1314 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !1289)
!1315 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !1289)
!1316 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !1317)
!1317 = distinct !DILocation(line: 219, column: 5, scope: !864, inlinedAt: !1290)
!1318 = !DILocation(line: 219, column: 27, scope: !864, inlinedAt: !1290)
!1319 = !DILocation(line: 0, scope: !726, inlinedAt: !1317)
!1320 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !1317)
!1321 = !DILocation(line: 90, column: 50, scope: !735, inlinedAt: !1317)
!1322 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !1317)
!1323 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !1317)
!1324 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !1317)
!1325 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !1317)
!1326 = !DILocation(line: 0, scope: !752, inlinedAt: !1327)
!1327 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1317)
!1328 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !1327)
!1329 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1317)
!1330 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !1317)
!1331 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !1317)
!1332 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !1317)
!1333 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !1317)
!1334 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !1317)
!1335 = !DILocation(line: 0, scope: !238)
!1336 = !DILocation(line: 253, column: 30, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 253, column: 9)
!1338 = distinct !DILexicalBlock(scope: !238, file: !3, line: 253, column: 9)
!1339 = !DILocation(line: 253, column: 23, scope: !1337)
!1340 = !DILocation(line: 253, column: 9, scope: !1338)
!1341 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !1342)
!1342 = distinct !DILocation(line: 238, column: 5, scope: !1224, inlinedAt: !1343)
!1343 = distinct !DILocation(line: 255, column: 13, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 254, column: 9)
!1345 = !DILocation(line: 255, column: 29, scope: !1344)
!1346 = !DILocation(line: 0, scope: !1224, inlinedAt: !1343)
!1347 = !DILocation(line: 231, column: 25, scope: !1224, inlinedAt: !1343)
!1348 = !DILocation(line: 231, column: 21, scope: !1224, inlinedAt: !1343)
!1349 = !DILocation(line: 232, column: 13, scope: !1239, inlinedAt: !1343)
!1350 = !DILocation(line: 232, column: 9, scope: !1224, inlinedAt: !1343)
!1351 = !DILocation(line: 237, column: 13, scope: !1224, inlinedAt: !1343)
!1352 = !DILocation(line: 237, column: 10, scope: !1224, inlinedAt: !1343)
!1353 = !DILocation(line: 0, scope: !726, inlinedAt: !1342)
!1354 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !1342)
!1355 = !DILocation(line: 90, column: 50, scope: !735, inlinedAt: !1342)
!1356 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !1342)
!1357 = !DILocation(line: 90, column: 21, scope: !735, inlinedAt: !1342)
!1358 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !1342)
!1359 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !1342)
!1360 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !1342)
!1361 = !DILocation(line: 0, scope: !752, inlinedAt: !1362)
!1362 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1342)
!1363 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !1362)
!1364 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1342)
!1365 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !1342)
!1366 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !1342)
!1367 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !1342)
!1368 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !1342)
!1369 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !1342)
!1370 = !DILocation(line: 253, column: 62, scope: !1337)
!1371 = distinct !{!1371, !1340, !1372, !485}
!1372 = !DILocation(line: 256, column: 9, scope: !1338)
!1373 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !1374)
!1374 = distinct !DILocation(line: 218, column: 5, scope: !864, inlinedAt: !1375)
!1375 = distinct !DILocation(line: 258, column: 5, scope: !2)
!1376 = !DILocation(line: 90, column: 27, scope: !735, inlinedAt: !1374)
!1377 = !DILocation(line: 258, column: 26, scope: !2)
!1378 = !DILocation(line: 0, scope: !864, inlinedAt: !1375)
!1379 = !DILocation(line: 206, column: 15, scope: !864, inlinedAt: !1375)
!1380 = !DILocation(line: 207, column: 13, scope: !877, inlinedAt: !1375)
!1381 = !DILocation(line: 207, column: 9, scope: !864, inlinedAt: !1375)
!1382 = !DILocation(line: 212, column: 13, scope: !880, inlinedAt: !1375)
!1383 = !DILocation(line: 212, column: 9, scope: !864, inlinedAt: !1375)
!1384 = !DILocation(line: 217, column: 13, scope: !864, inlinedAt: !1375)
!1385 = !DILocation(line: 217, column: 10, scope: !864, inlinedAt: !1375)
!1386 = !DILocation(line: 218, column: 22, scope: !864, inlinedAt: !1375)
!1387 = !DILocation(line: 0, scope: !726, inlinedAt: !1374)
!1388 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !1374)
!1389 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !1374)
!1390 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !1374)
!1391 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !1374)
!1392 = !DILocation(line: 0, scope: !752, inlinedAt: !1393)
!1393 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1374)
!1394 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !1393)
!1395 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1374)
!1396 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !1374)
!1397 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !1374)
!1398 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !1374)
!1399 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !1374)
!1400 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !1374)
!1401 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !1402)
!1402 = distinct !DILocation(line: 219, column: 5, scope: !864, inlinedAt: !1375)
!1403 = !DILocation(line: 219, column: 27, scope: !864, inlinedAt: !1375)
!1404 = !DILocation(line: 0, scope: !726, inlinedAt: !1402)
!1405 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !1402)
!1406 = !DILocation(line: 90, column: 50, scope: !735, inlinedAt: !1402)
!1407 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !1402)
!1408 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !1402)
!1409 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !1402)
!1410 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !1402)
!1411 = !DILocation(line: 0, scope: !752, inlinedAt: !1412)
!1412 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1402)
!1413 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !1412)
!1414 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1402)
!1415 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !1402)
!1416 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !1402)
!1417 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !1402)
!1418 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !1402)
!1419 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !1402)
!1420 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !1421)
!1421 = distinct !DILocation(line: 259, column: 5, scope: !2)
!1422 = !DILocation(line: 259, column: 26, scope: !2)
!1423 = !DILocation(line: 0, scope: !726, inlinedAt: !1421)
!1424 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !1421)
!1425 = !DILocation(line: 90, column: 50, scope: !735, inlinedAt: !1421)
!1426 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !1421)
!1427 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !1421)
!1428 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !1421)
!1429 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !1421)
!1430 = !DILocation(line: 0, scope: !752, inlinedAt: !1431)
!1431 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1421)
!1432 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !1431)
!1433 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1421)
!1434 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !1421)
!1435 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !1421)
!1436 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !1421)
!1437 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !1421)
!1438 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !1421)
!1439 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !1440)
!1440 = distinct !DILocation(line: 218, column: 5, scope: !864, inlinedAt: !1441)
!1441 = distinct !DILocation(line: 260, column: 5, scope: !2)
!1442 = !DILocation(line: 260, column: 26, scope: !2)
!1443 = !{!418, !419, i64 1084}
!1444 = !DILocation(line: 0, scope: !864, inlinedAt: !1441)
!1445 = !DILocation(line: 207, column: 13, scope: !877, inlinedAt: !1441)
!1446 = !DILocation(line: 207, column: 9, scope: !864, inlinedAt: !1441)
!1447 = !DILocation(line: 212, column: 13, scope: !880, inlinedAt: !1441)
!1448 = !DILocation(line: 212, column: 9, scope: !864, inlinedAt: !1441)
!1449 = !DILocation(line: 217, column: 13, scope: !864, inlinedAt: !1441)
!1450 = !DILocation(line: 217, column: 10, scope: !864, inlinedAt: !1441)
!1451 = !DILocation(line: 218, column: 22, scope: !864, inlinedAt: !1441)
!1452 = !DILocation(line: 0, scope: !726, inlinedAt: !1440)
!1453 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !1440)
!1454 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !1440)
!1455 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !1440)
!1456 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !1440)
!1457 = !DILocation(line: 0, scope: !752, inlinedAt: !1458)
!1458 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1440)
!1459 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !1458)
!1460 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1440)
!1461 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !1440)
!1462 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !1440)
!1463 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !1440)
!1464 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !1440)
!1465 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !1440)
!1466 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !1467)
!1467 = distinct !DILocation(line: 219, column: 5, scope: !864, inlinedAt: !1441)
!1468 = !DILocation(line: 219, column: 27, scope: !864, inlinedAt: !1441)
!1469 = !DILocation(line: 0, scope: !726, inlinedAt: !1467)
!1470 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !1467)
!1471 = !DILocation(line: 90, column: 50, scope: !735, inlinedAt: !1467)
!1472 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !1467)
!1473 = !DILocation(line: 90, column: 21, scope: !735, inlinedAt: !1467)
!1474 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !1467)
!1475 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !1467)
!1476 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !1467)
!1477 = !DILocation(line: 0, scope: !752, inlinedAt: !1478)
!1478 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1467)
!1479 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !1478)
!1480 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1467)
!1481 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !1467)
!1482 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !1467)
!1483 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !1467)
!1484 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !1467)
!1485 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !1467)
!1486 = !DILocation(line: 261, column: 14, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !2, file: !3, line: 261, column: 9)
!1488 = !DILocation(line: 261, column: 9, scope: !1487)
!1489 = !DILocation(line: 0, scope: !1487)
!1490 = !DILocation(line: 261, column: 9, scope: !2)
!1491 = !DILocation(line: 0, scope: !864, inlinedAt: !1492)
!1492 = distinct !DILocation(line: 263, column: 9, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1487, file: !3, line: 262, column: 5)
!1494 = !DILocation(line: 207, column: 13, scope: !877, inlinedAt: !1492)
!1495 = !DILocation(line: 207, column: 9, scope: !864, inlinedAt: !1492)
!1496 = !DILocation(line: 212, column: 13, scope: !880, inlinedAt: !1492)
!1497 = !DILocation(line: 212, column: 9, scope: !864, inlinedAt: !1492)
!1498 = !DILocation(line: 217, column: 13, scope: !864, inlinedAt: !1492)
!1499 = !DILocation(line: 217, column: 10, scope: !864, inlinedAt: !1492)
!1500 = !DILocation(line: 218, column: 22, scope: !864, inlinedAt: !1492)
!1501 = !DILocation(line: 0, scope: !726, inlinedAt: !1502)
!1502 = distinct !DILocation(line: 218, column: 5, scope: !864, inlinedAt: !1492)
!1503 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !1502)
!1504 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !1502)
!1505 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !1502)
!1506 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !1502)
!1507 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !1502)
!1508 = !DILocation(line: 0, scope: !752, inlinedAt: !1509)
!1509 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1502)
!1510 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !1509)
!1511 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1502)
!1512 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !1502)
!1513 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !1502)
!1514 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !1502)
!1515 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !1502)
!1516 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !1502)
!1517 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !1518)
!1518 = distinct !DILocation(line: 219, column: 5, scope: !864, inlinedAt: !1492)
!1519 = !DILocation(line: 219, column: 27, scope: !864, inlinedAt: !1492)
!1520 = !DILocation(line: 0, scope: !726, inlinedAt: !1518)
!1521 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !1518)
!1522 = !DILocation(line: 90, column: 50, scope: !735, inlinedAt: !1518)
!1523 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !1518)
!1524 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !1518)
!1525 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !1518)
!1526 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !1518)
!1527 = !DILocation(line: 0, scope: !752, inlinedAt: !1528)
!1528 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1518)
!1529 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !1528)
!1530 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1518)
!1531 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !1518)
!1532 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !1518)
!1533 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !1518)
!1534 = !DILocation(line: 267, column: 41, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1487, file: !3, line: 266, column: 5)
!1536 = !DILocation(line: 0, scope: !864, inlinedAt: !1537)
!1537 = distinct !DILocation(line: 267, column: 9, scope: !1535)
!1538 = !DILocation(line: 207, column: 13, scope: !877, inlinedAt: !1537)
!1539 = !DILocation(line: 207, column: 9, scope: !864, inlinedAt: !1537)
!1540 = !DILocation(line: 212, column: 13, scope: !880, inlinedAt: !1537)
!1541 = !DILocation(line: 212, column: 9, scope: !864, inlinedAt: !1537)
!1542 = !DILocation(line: 217, column: 13, scope: !864, inlinedAt: !1537)
!1543 = !DILocation(line: 217, column: 10, scope: !864, inlinedAt: !1537)
!1544 = !DILocation(line: 218, column: 22, scope: !864, inlinedAt: !1537)
!1545 = !DILocation(line: 0, scope: !726, inlinedAt: !1546)
!1546 = distinct !DILocation(line: 218, column: 5, scope: !864, inlinedAt: !1537)
!1547 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !1546)
!1548 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !1546)
!1549 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !1546)
!1550 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !1546)
!1551 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !1546)
!1552 = !DILocation(line: 0, scope: !752, inlinedAt: !1553)
!1553 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1546)
!1554 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !1553)
!1555 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1546)
!1556 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !1546)
!1557 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !1546)
!1558 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !1546)
!1559 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !1546)
!1560 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !1546)
!1561 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !1562)
!1562 = distinct !DILocation(line: 219, column: 5, scope: !864, inlinedAt: !1537)
!1563 = !DILocation(line: 219, column: 27, scope: !864, inlinedAt: !1537)
!1564 = !DILocation(line: 0, scope: !726, inlinedAt: !1562)
!1565 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !1562)
!1566 = !DILocation(line: 90, column: 50, scope: !735, inlinedAt: !1562)
!1567 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !1562)
!1568 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !1562)
!1569 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !1562)
!1570 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !1562)
!1571 = !DILocation(line: 0, scope: !752, inlinedAt: !1572)
!1572 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1562)
!1573 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !1572)
!1574 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1562)
!1575 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !1562)
!1576 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !1562)
!1577 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !1562)
!1578 = !DILocation(line: 269, column: 26, scope: !2)
!1579 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !1580)
!1580 = distinct !DILocation(line: 269, column: 5, scope: !2)
!1581 = !DILocation(line: 90, column: 27, scope: !735, inlinedAt: !1580)
!1582 = !DILocation(line: 0, scope: !726, inlinedAt: !1580)
!1583 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !1580)
!1584 = !DILocation(line: 90, column: 50, scope: !735, inlinedAt: !1580)
!1585 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !1580)
!1586 = !DILocation(line: 90, column: 21, scope: !735, inlinedAt: !1580)
!1587 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !1580)
!1588 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !1580)
!1589 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !1580)
!1590 = !DILocation(line: 0, scope: !752, inlinedAt: !1591)
!1591 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1580)
!1592 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !1591)
!1593 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1580)
!1594 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !1580)
!1595 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !1580)
!1596 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !1580)
!1597 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !1580)
!1598 = !DILocation(line: 270, column: 15, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !2, file: !3, line: 270, column: 9)
!1600 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !1580)
!1601 = !DILocation(line: 270, column: 10, scope: !1599)
!1602 = !DILocation(line: 270, column: 9, scope: !2)
!1603 = !DILocation(line: 272, column: 30, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1599, file: !3, line: 271, column: 5)
!1605 = !DILocation(line: 0, scope: !726, inlinedAt: !1606)
!1606 = distinct !DILocation(line: 272, column: 9, scope: !1604)
!1607 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !1606)
!1608 = !DILocation(line: 90, column: 50, scope: !735, inlinedAt: !1606)
!1609 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !1606)
!1610 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !1606)
!1611 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !1606)
!1612 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !1606)
!1613 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !1606)
!1614 = !DILocation(line: 0, scope: !752, inlinedAt: !1615)
!1615 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1606)
!1616 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !1615)
!1617 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1606)
!1618 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !1606)
!1619 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !1606)
!1620 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !1606)
!1621 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !1606)
!1622 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !1606)
!1623 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !1624)
!1624 = distinct !DILocation(line: 274, column: 5, scope: !2)
!1625 = !DILocation(line: 90, column: 27, scope: !735, inlinedAt: !1624)
!1626 = !DILocation(line: 274, column: 26, scope: !2)
!1627 = !DILocation(line: 0, scope: !726, inlinedAt: !1624)
!1628 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !1624)
!1629 = !DILocation(line: 90, column: 50, scope: !735, inlinedAt: !1624)
!1630 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !1624)
!1631 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !1624)
!1632 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !1624)
!1633 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !1624)
!1634 = !DILocation(line: 0, scope: !752, inlinedAt: !1635)
!1635 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1624)
!1636 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !1635)
!1637 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1624)
!1638 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !1624)
!1639 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !1624)
!1640 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !1624)
!1641 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !1624)
!1642 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !1624)
!1643 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !1644)
!1644 = distinct !DILocation(line: 276, column: 5, scope: !2)
!1645 = !DILocation(line: 276, column: 26, scope: !2)
!1646 = !DILocation(line: 0, scope: !726, inlinedAt: !1644)
!1647 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !1644)
!1648 = !DILocation(line: 90, column: 50, scope: !735, inlinedAt: !1644)
!1649 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !1644)
!1650 = !DILocation(line: 90, column: 21, scope: !735, inlinedAt: !1644)
!1651 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !1644)
!1652 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !1644)
!1653 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !1644)
!1654 = !DILocation(line: 0, scope: !752, inlinedAt: !1655)
!1655 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1644)
!1656 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !1655)
!1657 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1644)
!1658 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !1644)
!1659 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !1644)
!1660 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !1644)
!1661 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !1644)
!1662 = !DILocation(line: 277, column: 14, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !2, file: !3, line: 277, column: 9)
!1664 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !1644)
!1665 = !DILocation(line: 277, column: 9, scope: !1663)
!1666 = !DILocation(line: 277, column: 9, scope: !2)
!1667 = !DILocation(line: 279, column: 30, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1663, file: !3, line: 278, column: 5)
!1669 = !DILocation(line: 279, column: 35, scope: !1668)
!1670 = !DILocation(line: 279, column: 44, scope: !1668)
!1671 = !DILocation(line: 0, scope: !864, inlinedAt: !1672)
!1672 = distinct !DILocation(line: 279, column: 9, scope: !1668)
!1673 = !DILocation(line: 206, column: 15, scope: !864, inlinedAt: !1672)
!1674 = !DILocation(line: 207, column: 13, scope: !877, inlinedAt: !1672)
!1675 = !DILocation(line: 207, column: 9, scope: !864, inlinedAt: !1672)
!1676 = !DILocation(line: 212, column: 13, scope: !880, inlinedAt: !1672)
!1677 = !DILocation(line: 212, column: 9, scope: !864, inlinedAt: !1672)
!1678 = !DILocation(line: 217, column: 13, scope: !864, inlinedAt: !1672)
!1679 = !DILocation(line: 217, column: 10, scope: !864, inlinedAt: !1672)
!1680 = !DILocation(line: 218, column: 22, scope: !864, inlinedAt: !1672)
!1681 = !DILocation(line: 0, scope: !726, inlinedAt: !1682)
!1682 = distinct !DILocation(line: 218, column: 5, scope: !864, inlinedAt: !1672)
!1683 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !1682)
!1684 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !1682)
!1685 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !1682)
!1686 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !1682)
!1687 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !1682)
!1688 = !DILocation(line: 0, scope: !752, inlinedAt: !1689)
!1689 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1682)
!1690 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !1689)
!1691 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1682)
!1692 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !1682)
!1693 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !1682)
!1694 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !1682)
!1695 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !1682)
!1696 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !1682)
!1697 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !1698)
!1698 = distinct !DILocation(line: 219, column: 5, scope: !864, inlinedAt: !1672)
!1699 = !DILocation(line: 219, column: 27, scope: !864, inlinedAt: !1672)
!1700 = !DILocation(line: 0, scope: !726, inlinedAt: !1698)
!1701 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !1698)
!1702 = !DILocation(line: 90, column: 50, scope: !735, inlinedAt: !1698)
!1703 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !1698)
!1704 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !1698)
!1705 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !1698)
!1706 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !1698)
!1707 = !DILocation(line: 0, scope: !752, inlinedAt: !1708)
!1708 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1698)
!1709 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !1708)
!1710 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1698)
!1711 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !1698)
!1712 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !1698)
!1713 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !1698)
!1714 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !1698)
!1715 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !1698)
!1716 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !1717)
!1717 = distinct !DILocation(line: 218, column: 5, scope: !864, inlinedAt: !1718)
!1718 = distinct !DILocation(line: 280, column: 9, scope: !1668)
!1719 = !DILocation(line: 280, column: 35, scope: !1668)
!1720 = !DILocation(line: 280, column: 44, scope: !1668)
!1721 = !DILocation(line: 0, scope: !864, inlinedAt: !1718)
!1722 = !DILocation(line: 206, column: 15, scope: !864, inlinedAt: !1718)
!1723 = !DILocation(line: 207, column: 13, scope: !877, inlinedAt: !1718)
!1724 = !DILocation(line: 207, column: 9, scope: !864, inlinedAt: !1718)
!1725 = !DILocation(line: 212, column: 13, scope: !880, inlinedAt: !1718)
!1726 = !DILocation(line: 212, column: 9, scope: !864, inlinedAt: !1718)
!1727 = !DILocation(line: 217, column: 13, scope: !864, inlinedAt: !1718)
!1728 = !DILocation(line: 217, column: 10, scope: !864, inlinedAt: !1718)
!1729 = !DILocation(line: 218, column: 22, scope: !864, inlinedAt: !1718)
!1730 = !DILocation(line: 0, scope: !726, inlinedAt: !1717)
!1731 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !1717)
!1732 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !1717)
!1733 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !1717)
!1734 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !1717)
!1735 = !DILocation(line: 0, scope: !752, inlinedAt: !1736)
!1736 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1717)
!1737 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !1736)
!1738 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1717)
!1739 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !1717)
!1740 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !1717)
!1741 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !1717)
!1742 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !1717)
!1743 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !1717)
!1744 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !1745)
!1745 = distinct !DILocation(line: 219, column: 5, scope: !864, inlinedAt: !1718)
!1746 = !DILocation(line: 219, column: 27, scope: !864, inlinedAt: !1718)
!1747 = !DILocation(line: 0, scope: !726, inlinedAt: !1745)
!1748 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !1745)
!1749 = !DILocation(line: 90, column: 50, scope: !735, inlinedAt: !1745)
!1750 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !1745)
!1751 = !DILocation(line: 90, column: 21, scope: !735, inlinedAt: !1745)
!1752 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !1745)
!1753 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !1745)
!1754 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !1745)
!1755 = !DILocation(line: 0, scope: !752, inlinedAt: !1756)
!1756 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1745)
!1757 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !1756)
!1758 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1745)
!1759 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !1745)
!1760 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !1745)
!1761 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !1745)
!1762 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !1745)
!1763 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !1745)
!1764 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !1765)
!1765 = distinct !DILocation(line: 218, column: 5, scope: !864, inlinedAt: !1766)
!1766 = distinct !DILocation(line: 281, column: 9, scope: !1668)
!1767 = !DILocation(line: 281, column: 35, scope: !1668)
!1768 = !DILocation(line: 281, column: 44, scope: !1668)
!1769 = !DILocation(line: 0, scope: !864, inlinedAt: !1766)
!1770 = !DILocation(line: 206, column: 15, scope: !864, inlinedAt: !1766)
!1771 = !DILocation(line: 207, column: 13, scope: !877, inlinedAt: !1766)
!1772 = !DILocation(line: 207, column: 9, scope: !864, inlinedAt: !1766)
!1773 = !DILocation(line: 212, column: 13, scope: !880, inlinedAt: !1766)
!1774 = !DILocation(line: 212, column: 9, scope: !864, inlinedAt: !1766)
!1775 = !DILocation(line: 217, column: 13, scope: !864, inlinedAt: !1766)
!1776 = !DILocation(line: 217, column: 10, scope: !864, inlinedAt: !1766)
!1777 = !DILocation(line: 218, column: 22, scope: !864, inlinedAt: !1766)
!1778 = !DILocation(line: 0, scope: !726, inlinedAt: !1765)
!1779 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !1765)
!1780 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !1765)
!1781 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !1765)
!1782 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !1765)
!1783 = !DILocation(line: 0, scope: !752, inlinedAt: !1784)
!1784 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1765)
!1785 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !1784)
!1786 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1765)
!1787 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !1765)
!1788 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !1765)
!1789 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !1765)
!1790 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !1765)
!1791 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !1765)
!1792 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !1793)
!1793 = distinct !DILocation(line: 219, column: 5, scope: !864, inlinedAt: !1766)
!1794 = !DILocation(line: 219, column: 27, scope: !864, inlinedAt: !1766)
!1795 = !DILocation(line: 0, scope: !726, inlinedAt: !1793)
!1796 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !1793)
!1797 = !DILocation(line: 90, column: 50, scope: !735, inlinedAt: !1793)
!1798 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !1793)
!1799 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !1793)
!1800 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !1793)
!1801 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !1793)
!1802 = !DILocation(line: 0, scope: !752, inlinedAt: !1803)
!1803 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1793)
!1804 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !1803)
!1805 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1793)
!1806 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !1793)
!1807 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !1793)
!1808 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !1793)
!1809 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !1793)
!1810 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !1793)
!1811 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !1812)
!1812 = distinct !DILocation(line: 218, column: 5, scope: !864, inlinedAt: !1813)
!1813 = distinct !DILocation(line: 282, column: 9, scope: !1668)
!1814 = !DILocation(line: 282, column: 35, scope: !1668)
!1815 = !DILocation(line: 282, column: 44, scope: !1668)
!1816 = !DILocation(line: 0, scope: !864, inlinedAt: !1813)
!1817 = !DILocation(line: 206, column: 15, scope: !864, inlinedAt: !1813)
!1818 = !DILocation(line: 207, column: 13, scope: !877, inlinedAt: !1813)
!1819 = !DILocation(line: 207, column: 9, scope: !864, inlinedAt: !1813)
!1820 = !DILocation(line: 212, column: 13, scope: !880, inlinedAt: !1813)
!1821 = !DILocation(line: 212, column: 9, scope: !864, inlinedAt: !1813)
!1822 = !DILocation(line: 217, column: 13, scope: !864, inlinedAt: !1813)
!1823 = !DILocation(line: 217, column: 10, scope: !864, inlinedAt: !1813)
!1824 = !DILocation(line: 218, column: 22, scope: !864, inlinedAt: !1813)
!1825 = !DILocation(line: 0, scope: !726, inlinedAt: !1812)
!1826 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !1812)
!1827 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !1812)
!1828 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !1812)
!1829 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !1812)
!1830 = !DILocation(line: 0, scope: !752, inlinedAt: !1831)
!1831 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1812)
!1832 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !1831)
!1833 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1812)
!1834 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !1812)
!1835 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !1812)
!1836 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !1812)
!1837 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !1812)
!1838 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !1812)
!1839 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !1840)
!1840 = distinct !DILocation(line: 219, column: 5, scope: !864, inlinedAt: !1813)
!1841 = !DILocation(line: 219, column: 27, scope: !864, inlinedAt: !1813)
!1842 = !DILocation(line: 0, scope: !726, inlinedAt: !1840)
!1843 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !1840)
!1844 = !DILocation(line: 90, column: 50, scope: !735, inlinedAt: !1840)
!1845 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !1840)
!1846 = !DILocation(line: 90, column: 21, scope: !735, inlinedAt: !1840)
!1847 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !1840)
!1848 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !1840)
!1849 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !1840)
!1850 = !DILocation(line: 0, scope: !752, inlinedAt: !1851)
!1851 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1840)
!1852 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !1851)
!1853 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1840)
!1854 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !1840)
!1855 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !1840)
!1856 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !1840)
!1857 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !1840)
!1858 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !1840)
!1859 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !1860)
!1860 = distinct !DILocation(line: 285, column: 5, scope: !2)
!1861 = !DILocation(line: 90, column: 27, scope: !735, inlinedAt: !1860)
!1862 = !DILocation(line: 285, column: 26, scope: !2)
!1863 = !DILocation(line: 0, scope: !726, inlinedAt: !1860)
!1864 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !1860)
!1865 = !DILocation(line: 90, column: 50, scope: !735, inlinedAt: !1860)
!1866 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !1860)
!1867 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !1860)
!1868 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !1860)
!1869 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !1860)
!1870 = !DILocation(line: 0, scope: !752, inlinedAt: !1871)
!1871 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1860)
!1872 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !1871)
!1873 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1860)
!1874 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !1860)
!1875 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !1860)
!1876 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !1860)
!1877 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !1860)
!1878 = !DILocation(line: 286, column: 14, scope: !245)
!1879 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !1860)
!1880 = !DILocation(line: 286, column: 9, scope: !245)
!1881 = !DILocation(line: 286, column: 9, scope: !2)
!1882 = !DILocation(line: 288, column: 28, scope: !244)
!1883 = !DILocation(line: 288, column: 32, scope: !244)
!1884 = !DILocalVariable(name: "s", arg: 1, scope: !1885, file: !8, line: 139, type: !6)
!1885 = distinct !DISubprogram(name: "bs_write1", scope: !8, file: !8, line: 139, type: !1886, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !96, retainedNodes: !1888)
!1886 = !DISubroutineType(types: !1887)
!1887 = !{null, !6, !124}
!1888 = !{!1884, !1889}
!1889 = !DILocalVariable(name: "i_bit", arg: 2, scope: !1885, file: !8, line: 139, type: !124)
!1890 = !DILocation(line: 0, scope: !1885, inlinedAt: !1891)
!1891 = distinct !DILocation(line: 288, column: 9, scope: !244)
!1892 = !DILocation(line: 141, column: 17, scope: !1885, inlinedAt: !1891)
!1893 = !DILocation(line: 142, column: 20, scope: !1885, inlinedAt: !1891)
!1894 = !DILocation(line: 142, column: 17, scope: !1885, inlinedAt: !1891)
!1895 = !DILocation(line: 143, column: 14, scope: !1885, inlinedAt: !1891)
!1896 = !DILocation(line: 144, column: 19, scope: !1897, inlinedAt: !1891)
!1897 = distinct !DILexicalBlock(scope: !1885, file: !8, line: 144, column: 9)
!1898 = !DILocation(line: 144, column: 9, scope: !1885, inlinedAt: !1891)
!1899 = !DILocation(line: 154, column: 42, scope: !1900, inlinedAt: !1891)
!1900 = distinct !DILexicalBlock(scope: !1897, file: !8, line: 145, column: 5)
!1901 = !DILocalVariable(name: "x", arg: 1, scope: !1902, file: !753, line: 148, type: !124)
!1902 = distinct !DISubprogram(name: "endian_fix32", scope: !753, file: !753, line: 148, type: !1903, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !96, retainedNodes: !1905)
!1903 = !DISubroutineType(types: !1904)
!1904 = !{!124, !124}
!1905 = !{!1901}
!1906 = !DILocation(line: 0, scope: !1902, inlinedAt: !1907)
!1907 = distinct !DILocation(line: 154, column: 28, scope: !1900, inlinedAt: !1891)
!1908 = !DILocation(line: 150, column: 5, scope: !1902, inlinedAt: !1907)
!1909 = !{i64 472687}
!1910 = !DILocation(line: 154, column: 24, scope: !1900, inlinedAt: !1891)
!1911 = !DILocation(line: 154, column: 26, scope: !1900, inlinedAt: !1891)
!1912 = !DILocation(line: 156, column: 14, scope: !1900, inlinedAt: !1891)
!1913 = !DILocation(line: 289, column: 22, scope: !243)
!1914 = !DILocation(line: 158, column: 5, scope: !1900, inlinedAt: !1891)
!1915 = !DILocation(line: 289, column: 13, scope: !243)
!1916 = !DILocation(line: 289, column: 13, scope: !244)
!1917 = !DILocation(line: 0, scope: !242)
!1918 = !DILocation(line: 301, column: 54, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1920, file: !3, line: 301, column: 21)
!1920 = distinct !DILexicalBlock(scope: !1921, file: !3, line: 300, column: 13)
!1921 = distinct !DILexicalBlock(scope: !1922, file: !3, line: 299, column: 13)
!1922 = distinct !DILexicalBlock(scope: !242, file: !3, line: 299, column: 13)
!1923 = !DILocation(line: 302, column: 42, scope: !1919)
!1924 = !DILocation(line: 302, column: 30, scope: !1919)
!1925 = !DILocation(line: 301, column: 21, scope: !1920)
!1926 = !DILocation(line: 0, scope: !726, inlinedAt: !1927)
!1927 = distinct !DILocation(line: 311, column: 17, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1929, file: !3, line: 310, column: 13)
!1929 = distinct !DILexicalBlock(scope: !242, file: !3, line: 305, column: 17)
!1930 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !1927)
!1931 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !1927)
!1932 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !1927)
!1933 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !1927)
!1934 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !1927)
!1935 = !DILocation(line: 299, column: 32, scope: !1921)
!1936 = !DILocation(line: 305, column: 24, scope: !1929)
!1937 = !{!1938, !419, i64 8}
!1938 = !{!"", !419, i64 0, !419, i64 4, !419, i64 8}
!1939 = !DILocation(line: 0, scope: !726, inlinedAt: !1940)
!1940 = distinct !DILocation(line: 307, column: 17, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1929, file: !3, line: 306, column: 13)
!1942 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !1940)
!1943 = !DILocation(line: 90, column: 50, scope: !735, inlinedAt: !1940)
!1944 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !1940)
!1945 = !DILocation(line: 90, column: 21, scope: !735, inlinedAt: !1940)
!1946 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !1940)
!1947 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !1940)
!1948 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !1940)
!1949 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !1940)
!1950 = !DILocation(line: 0, scope: !752, inlinedAt: !1951)
!1951 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1940)
!1952 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !1951)
!1953 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1940)
!1954 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !1940)
!1955 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !1940)
!1956 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !1940)
!1957 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !1927)
!1958 = !DILocation(line: 0, scope: !752, inlinedAt: !1959)
!1959 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1927)
!1960 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !1959)
!1961 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1927)
!1962 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !1927)
!1963 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !1927)
!1964 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !1927)
!1965 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !1927)
!1966 = !DILocation(line: 312, column: 43, scope: !1928)
!1967 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !1927)
!1968 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !1969)
!1969 = distinct !DILocation(line: 312, column: 17, scope: !1928)
!1970 = !DILocation(line: 0, scope: !726, inlinedAt: !1969)
!1971 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !1969)
!1972 = !DILocation(line: 90, column: 50, scope: !735, inlinedAt: !1969)
!1973 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !1969)
!1974 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !1969)
!1975 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !1969)
!1976 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !1969)
!1977 = !DILocation(line: 0, scope: !752, inlinedAt: !1978)
!1978 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1969)
!1979 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !1978)
!1980 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1969)
!1981 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !1969)
!1982 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !1969)
!1983 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !1969)
!1984 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !1969)
!1985 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !1969)
!1986 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !1987)
!1987 = distinct !DILocation(line: 313, column: 17, scope: !1928)
!1988 = !DILocation(line: 313, column: 43, scope: !1928)
!1989 = !DILocation(line: 0, scope: !726, inlinedAt: !1987)
!1990 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !1987)
!1991 = !DILocation(line: 90, column: 50, scope: !735, inlinedAt: !1987)
!1992 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !1987)
!1993 = !DILocation(line: 90, column: 21, scope: !735, inlinedAt: !1987)
!1994 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !1987)
!1995 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !1987)
!1996 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !1987)
!1997 = !DILocation(line: 0, scope: !752, inlinedAt: !1998)
!1998 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1987)
!1999 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !1998)
!2000 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !1987)
!2001 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !1987)
!2002 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !1987)
!2003 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !1987)
!2004 = !DILocation(line: 0, scope: !1929)
!2005 = !DILocation(line: 317, column: 32, scope: !244)
!2006 = !DILocation(line: 143, column: 14, scope: !1885, inlinedAt: !2007)
!2007 = distinct !DILocation(line: 317, column: 9, scope: !244)
!2008 = !DILocation(line: 141, column: 17, scope: !1885, inlinedAt: !2007)
!2009 = !DILocation(line: 0, scope: !1885, inlinedAt: !2007)
!2010 = !DILocation(line: 142, column: 20, scope: !1885, inlinedAt: !2007)
!2011 = !DILocation(line: 142, column: 17, scope: !1885, inlinedAt: !2007)
!2012 = !DILocation(line: 144, column: 19, scope: !1897, inlinedAt: !2007)
!2013 = !DILocation(line: 144, column: 9, scope: !1885, inlinedAt: !2007)
!2014 = !DILocation(line: 154, column: 42, scope: !1900, inlinedAt: !2007)
!2015 = !DILocation(line: 0, scope: !1902, inlinedAt: !2016)
!2016 = distinct !DILocation(line: 154, column: 28, scope: !1900, inlinedAt: !2007)
!2017 = !DILocation(line: 150, column: 5, scope: !1902, inlinedAt: !2016)
!2018 = !DILocation(line: 154, column: 24, scope: !1900, inlinedAt: !2007)
!2019 = !DILocation(line: 154, column: 26, scope: !1900, inlinedAt: !2007)
!2020 = !DILocation(line: 156, column: 14, scope: !1900, inlinedAt: !2007)
!2021 = !DILocation(line: 157, column: 19, scope: !1900, inlinedAt: !2007)
!2022 = !DILocation(line: 318, column: 22, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !244, file: !3, line: 318, column: 13)
!2024 = !DILocation(line: 158, column: 5, scope: !1900, inlinedAt: !2007)
!2025 = !DILocation(line: 318, column: 13, scope: !2023)
!2026 = !DILocation(line: 318, column: 13, scope: !244)
!2027 = !DILocation(line: 319, column: 36, scope: !2023)
!2028 = !DILocation(line: 0, scope: !1885, inlinedAt: !2029)
!2029 = distinct !DILocation(line: 319, column: 13, scope: !2023)
!2030 = !DILocation(line: 141, column: 17, scope: !1885, inlinedAt: !2029)
!2031 = !DILocation(line: 142, column: 20, scope: !1885, inlinedAt: !2029)
!2032 = !DILocation(line: 142, column: 17, scope: !1885, inlinedAt: !2029)
!2033 = !DILocation(line: 143, column: 14, scope: !1885, inlinedAt: !2029)
!2034 = !DILocation(line: 144, column: 19, scope: !1897, inlinedAt: !2029)
!2035 = !DILocation(line: 144, column: 9, scope: !1885, inlinedAt: !2029)
!2036 = !DILocation(line: 154, column: 42, scope: !1900, inlinedAt: !2029)
!2037 = !DILocation(line: 0, scope: !1902, inlinedAt: !2038)
!2038 = distinct !DILocation(line: 154, column: 28, scope: !1900, inlinedAt: !2029)
!2039 = !DILocation(line: 150, column: 5, scope: !1902, inlinedAt: !2038)
!2040 = !DILocation(line: 154, column: 24, scope: !1900, inlinedAt: !2029)
!2041 = !DILocation(line: 154, column: 26, scope: !1900, inlinedAt: !2029)
!2042 = !DILocation(line: 156, column: 14, scope: !1900, inlinedAt: !2029)
!2043 = !DILocation(line: 158, column: 5, scope: !1900, inlinedAt: !2029)
!2044 = !DILocation(line: 143, column: 14, scope: !1885, inlinedAt: !2045)
!2045 = distinct !DILocation(line: 321, column: 9, scope: !244)
!2046 = !DILocation(line: 141, column: 17, scope: !1885, inlinedAt: !2045)
!2047 = !DILocation(line: 321, column: 32, scope: !244)
!2048 = !DILocation(line: 0, scope: !1885, inlinedAt: !2045)
!2049 = !DILocation(line: 142, column: 20, scope: !1885, inlinedAt: !2045)
!2050 = !DILocation(line: 142, column: 17, scope: !1885, inlinedAt: !2045)
!2051 = !DILocation(line: 144, column: 19, scope: !1897, inlinedAt: !2045)
!2052 = !DILocation(line: 144, column: 9, scope: !1885, inlinedAt: !2045)
!2053 = !DILocation(line: 154, column: 42, scope: !1900, inlinedAt: !2045)
!2054 = !DILocation(line: 0, scope: !1902, inlinedAt: !2055)
!2055 = distinct !DILocation(line: 154, column: 28, scope: !1900, inlinedAt: !2045)
!2056 = !DILocation(line: 150, column: 5, scope: !1902, inlinedAt: !2055)
!2057 = !DILocation(line: 154, column: 24, scope: !1900, inlinedAt: !2045)
!2058 = !DILocation(line: 154, column: 26, scope: !1900, inlinedAt: !2045)
!2059 = !DILocation(line: 156, column: 14, scope: !1900, inlinedAt: !2045)
!2060 = !DILocation(line: 322, column: 22, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !244, file: !3, line: 322, column: 13)
!2062 = !DILocation(line: 158, column: 5, scope: !1900, inlinedAt: !2045)
!2063 = !DILocation(line: 322, column: 13, scope: !2061)
!2064 = !DILocation(line: 322, column: 13, scope: !244)
!2065 = !DILocation(line: 324, column: 38, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2061, file: !3, line: 323, column: 9)
!2067 = !DILocation(line: 0, scope: !726, inlinedAt: !2068)
!2068 = distinct !DILocation(line: 324, column: 13, scope: !2066)
!2069 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !2068)
!2070 = !DILocation(line: 90, column: 50, scope: !735, inlinedAt: !2068)
!2071 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !2068)
!2072 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !2068)
!2073 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !2068)
!2074 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !2068)
!2075 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !2068)
!2076 = !DILocation(line: 0, scope: !752, inlinedAt: !2077)
!2077 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !2068)
!2078 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !2077)
!2079 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !2068)
!2080 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !2068)
!2081 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !2068)
!2082 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !2068)
!2083 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !2068)
!2084 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !2068)
!2085 = !DILocation(line: 143, column: 14, scope: !1885, inlinedAt: !2086)
!2086 = distinct !DILocation(line: 325, column: 13, scope: !2066)
!2087 = !DILocation(line: 325, column: 36, scope: !2066)
!2088 = !DILocation(line: 0, scope: !1885, inlinedAt: !2086)
!2089 = !DILocation(line: 141, column: 17, scope: !1885, inlinedAt: !2086)
!2090 = !DILocation(line: 142, column: 20, scope: !1885, inlinedAt: !2086)
!2091 = !DILocation(line: 142, column: 17, scope: !1885, inlinedAt: !2086)
!2092 = !DILocation(line: 144, column: 19, scope: !1897, inlinedAt: !2086)
!2093 = !DILocation(line: 144, column: 9, scope: !1885, inlinedAt: !2086)
!2094 = !DILocation(line: 154, column: 42, scope: !1900, inlinedAt: !2086)
!2095 = !DILocation(line: 0, scope: !1902, inlinedAt: !2096)
!2096 = distinct !DILocation(line: 154, column: 28, scope: !1900, inlinedAt: !2086)
!2097 = !DILocation(line: 150, column: 5, scope: !1902, inlinedAt: !2096)
!2098 = !DILocation(line: 154, column: 24, scope: !1900, inlinedAt: !2086)
!2099 = !DILocation(line: 154, column: 26, scope: !1900, inlinedAt: !2086)
!2100 = !DILocation(line: 156, column: 14, scope: !1900, inlinedAt: !2086)
!2101 = !DILocation(line: 158, column: 5, scope: !1900, inlinedAt: !2086)
!2102 = !DILocation(line: 143, column: 14, scope: !1885, inlinedAt: !2103)
!2103 = distinct !DILocation(line: 326, column: 13, scope: !2066)
!2104 = !DILocation(line: 326, column: 36, scope: !2066)
!2105 = !DILocation(line: 0, scope: !1885, inlinedAt: !2103)
!2106 = !DILocation(line: 141, column: 17, scope: !1885, inlinedAt: !2103)
!2107 = !DILocation(line: 142, column: 20, scope: !1885, inlinedAt: !2103)
!2108 = !DILocation(line: 142, column: 17, scope: !1885, inlinedAt: !2103)
!2109 = !DILocation(line: 144, column: 19, scope: !1897, inlinedAt: !2103)
!2110 = !DILocation(line: 144, column: 9, scope: !1885, inlinedAt: !2103)
!2111 = !DILocation(line: 154, column: 42, scope: !1900, inlinedAt: !2103)
!2112 = !DILocation(line: 0, scope: !1902, inlinedAt: !2113)
!2113 = distinct !DILocation(line: 154, column: 28, scope: !1900, inlinedAt: !2103)
!2114 = !DILocation(line: 150, column: 5, scope: !1902, inlinedAt: !2113)
!2115 = !DILocation(line: 154, column: 24, scope: !1900, inlinedAt: !2103)
!2116 = !DILocation(line: 154, column: 26, scope: !1900, inlinedAt: !2103)
!2117 = !DILocation(line: 156, column: 14, scope: !1900, inlinedAt: !2103)
!2118 = !DILocation(line: 327, column: 26, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2066, file: !3, line: 327, column: 17)
!2120 = !DILocation(line: 158, column: 5, scope: !1900, inlinedAt: !2103)
!2121 = !DILocation(line: 327, column: 17, scope: !2119)
!2122 = !DILocation(line: 327, column: 17, scope: !2066)
!2123 = !DILocation(line: 329, column: 42, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !2119, file: !3, line: 328, column: 13)
!2125 = !DILocation(line: 0, scope: !726, inlinedAt: !2126)
!2126 = distinct !DILocation(line: 329, column: 17, scope: !2124)
!2127 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !2126)
!2128 = !DILocation(line: 90, column: 50, scope: !735, inlinedAt: !2126)
!2129 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !2126)
!2130 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !2126)
!2131 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !2126)
!2132 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !2126)
!2133 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !2126)
!2134 = !DILocation(line: 0, scope: !752, inlinedAt: !2135)
!2135 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !2126)
!2136 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !2135)
!2137 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !2126)
!2138 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !2126)
!2139 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !2126)
!2140 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !2126)
!2141 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !2126)
!2142 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !2126)
!2143 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !2144)
!2144 = distinct !DILocation(line: 330, column: 17, scope: !2124)
!2145 = !DILocation(line: 330, column: 42, scope: !2124)
!2146 = !DILocation(line: 0, scope: !726, inlinedAt: !2144)
!2147 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !2144)
!2148 = !DILocation(line: 90, column: 50, scope: !735, inlinedAt: !2144)
!2149 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !2144)
!2150 = !DILocation(line: 90, column: 21, scope: !735, inlinedAt: !2144)
!2151 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !2144)
!2152 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !2144)
!2153 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !2144)
!2154 = !DILocation(line: 0, scope: !752, inlinedAt: !2155)
!2155 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !2144)
!2156 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !2155)
!2157 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !2144)
!2158 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !2144)
!2159 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !2144)
!2160 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !2144)
!2161 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !2144)
!2162 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !2144)
!2163 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !2164)
!2164 = distinct !DILocation(line: 331, column: 17, scope: !2124)
!2165 = !DILocation(line: 331, column: 42, scope: !2124)
!2166 = !DILocation(line: 0, scope: !726, inlinedAt: !2164)
!2167 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !2164)
!2168 = !DILocation(line: 90, column: 50, scope: !735, inlinedAt: !2164)
!2169 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !2164)
!2170 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !2164)
!2171 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !2164)
!2172 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !2164)
!2173 = !DILocation(line: 0, scope: !752, inlinedAt: !2174)
!2174 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !2164)
!2175 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !2174)
!2176 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !2164)
!2177 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !2164)
!2178 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !2164)
!2179 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !2164)
!2180 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !2164)
!2181 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !2164)
!2182 = !DILocation(line: 143, column: 14, scope: !1885, inlinedAt: !2183)
!2183 = distinct !DILocation(line: 335, column: 9, scope: !244)
!2184 = !DILocation(line: 141, column: 17, scope: !1885, inlinedAt: !2183)
!2185 = !DILocation(line: 335, column: 32, scope: !244)
!2186 = !DILocation(line: 0, scope: !1885, inlinedAt: !2183)
!2187 = !DILocation(line: 142, column: 20, scope: !1885, inlinedAt: !2183)
!2188 = !DILocation(line: 142, column: 17, scope: !1885, inlinedAt: !2183)
!2189 = !DILocation(line: 144, column: 19, scope: !1897, inlinedAt: !2183)
!2190 = !DILocation(line: 144, column: 9, scope: !1885, inlinedAt: !2183)
!2191 = !DILocation(line: 154, column: 42, scope: !1900, inlinedAt: !2183)
!2192 = !DILocation(line: 0, scope: !1902, inlinedAt: !2193)
!2193 = distinct !DILocation(line: 154, column: 28, scope: !1900, inlinedAt: !2183)
!2194 = !DILocation(line: 150, column: 5, scope: !1902, inlinedAt: !2193)
!2195 = !DILocation(line: 154, column: 24, scope: !1900, inlinedAt: !2183)
!2196 = !DILocation(line: 154, column: 26, scope: !1900, inlinedAt: !2183)
!2197 = !DILocation(line: 156, column: 14, scope: !1900, inlinedAt: !2183)
!2198 = !DILocation(line: 336, column: 22, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !244, file: !3, line: 336, column: 13)
!2200 = !DILocation(line: 158, column: 5, scope: !1900, inlinedAt: !2183)
!2201 = !DILocation(line: 336, column: 13, scope: !2199)
!2202 = !DILocation(line: 336, column: 13, scope: !244)
!2203 = !DILocation(line: 338, column: 38, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2199, file: !3, line: 337, column: 9)
!2205 = !DILocation(line: 0, scope: !864, inlinedAt: !2206)
!2206 = distinct !DILocation(line: 338, column: 13, scope: !2204)
!2207 = !DILocation(line: 206, column: 15, scope: !864, inlinedAt: !2206)
!2208 = !DILocation(line: 207, column: 13, scope: !877, inlinedAt: !2206)
!2209 = !DILocation(line: 207, column: 9, scope: !864, inlinedAt: !2206)
!2210 = !DILocation(line: 212, column: 13, scope: !880, inlinedAt: !2206)
!2211 = !DILocation(line: 212, column: 9, scope: !864, inlinedAt: !2206)
!2212 = !DILocation(line: 217, column: 13, scope: !864, inlinedAt: !2206)
!2213 = !DILocation(line: 217, column: 10, scope: !864, inlinedAt: !2206)
!2214 = !DILocation(line: 218, column: 22, scope: !864, inlinedAt: !2206)
!2215 = !DILocation(line: 0, scope: !726, inlinedAt: !2216)
!2216 = distinct !DILocation(line: 218, column: 5, scope: !864, inlinedAt: !2206)
!2217 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !2216)
!2218 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !2216)
!2219 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !2216)
!2220 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !2216)
!2221 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !2216)
!2222 = !DILocation(line: 0, scope: !752, inlinedAt: !2223)
!2223 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !2216)
!2224 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !2223)
!2225 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !2216)
!2226 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !2216)
!2227 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !2216)
!2228 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !2216)
!2229 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !2216)
!2230 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !2216)
!2231 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !2232)
!2232 = distinct !DILocation(line: 219, column: 5, scope: !864, inlinedAt: !2206)
!2233 = !DILocation(line: 219, column: 27, scope: !864, inlinedAt: !2206)
!2234 = !DILocation(line: 0, scope: !726, inlinedAt: !2232)
!2235 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !2232)
!2236 = !DILocation(line: 90, column: 50, scope: !735, inlinedAt: !2232)
!2237 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !2232)
!2238 = !DILocation(line: 90, column: 21, scope: !735, inlinedAt: !2232)
!2239 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !2232)
!2240 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !2232)
!2241 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !2232)
!2242 = !DILocation(line: 0, scope: !752, inlinedAt: !2243)
!2243 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !2232)
!2244 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !2243)
!2245 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !2232)
!2246 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !2232)
!2247 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !2232)
!2248 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !2232)
!2249 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !2232)
!2250 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !2232)
!2251 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !2252)
!2252 = distinct !DILocation(line: 218, column: 5, scope: !864, inlinedAt: !2253)
!2253 = distinct !DILocation(line: 339, column: 13, scope: !2204)
!2254 = !DILocation(line: 339, column: 38, scope: !2204)
!2255 = !DILocation(line: 0, scope: !864, inlinedAt: !2253)
!2256 = !DILocation(line: 206, column: 15, scope: !864, inlinedAt: !2253)
!2257 = !DILocation(line: 207, column: 13, scope: !877, inlinedAt: !2253)
!2258 = !DILocation(line: 207, column: 9, scope: !864, inlinedAt: !2253)
!2259 = !DILocation(line: 212, column: 13, scope: !880, inlinedAt: !2253)
!2260 = !DILocation(line: 212, column: 9, scope: !864, inlinedAt: !2253)
!2261 = !DILocation(line: 217, column: 13, scope: !864, inlinedAt: !2253)
!2262 = !DILocation(line: 217, column: 10, scope: !864, inlinedAt: !2253)
!2263 = !DILocation(line: 218, column: 22, scope: !864, inlinedAt: !2253)
!2264 = !DILocation(line: 0, scope: !726, inlinedAt: !2252)
!2265 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !2252)
!2266 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !2252)
!2267 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !2252)
!2268 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !2252)
!2269 = !DILocation(line: 0, scope: !752, inlinedAt: !2270)
!2270 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !2252)
!2271 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !2270)
!2272 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !2252)
!2273 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !2252)
!2274 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !2252)
!2275 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !2252)
!2276 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !2252)
!2277 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !2252)
!2278 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !2279)
!2279 = distinct !DILocation(line: 219, column: 5, scope: !864, inlinedAt: !2253)
!2280 = !DILocation(line: 219, column: 27, scope: !864, inlinedAt: !2253)
!2281 = !DILocation(line: 0, scope: !726, inlinedAt: !2279)
!2282 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !2279)
!2283 = !DILocation(line: 90, column: 50, scope: !735, inlinedAt: !2279)
!2284 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !2279)
!2285 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !2279)
!2286 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !2279)
!2287 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !2279)
!2288 = !DILocation(line: 0, scope: !752, inlinedAt: !2289)
!2289 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !2279)
!2290 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !2289)
!2291 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !2279)
!2292 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !2279)
!2293 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !2279)
!2294 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !2279)
!2295 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !2279)
!2296 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !2279)
!2297 = !DILocation(line: 143, column: 14, scope: !1885, inlinedAt: !2298)
!2298 = distinct !DILocation(line: 342, column: 9, scope: !244)
!2299 = !DILocation(line: 141, column: 17, scope: !1885, inlinedAt: !2298)
!2300 = !DILocation(line: 342, column: 32, scope: !244)
!2301 = !DILocation(line: 0, scope: !1885, inlinedAt: !2298)
!2302 = !DILocation(line: 142, column: 20, scope: !1885, inlinedAt: !2298)
!2303 = !DILocation(line: 142, column: 17, scope: !1885, inlinedAt: !2298)
!2304 = !DILocation(line: 144, column: 19, scope: !1897, inlinedAt: !2298)
!2305 = !DILocation(line: 144, column: 9, scope: !1885, inlinedAt: !2298)
!2306 = !DILocation(line: 154, column: 42, scope: !1900, inlinedAt: !2298)
!2307 = !DILocation(line: 0, scope: !1902, inlinedAt: !2308)
!2308 = distinct !DILocation(line: 154, column: 28, scope: !1900, inlinedAt: !2298)
!2309 = !DILocation(line: 150, column: 5, scope: !1902, inlinedAt: !2308)
!2310 = !DILocation(line: 154, column: 24, scope: !1900, inlinedAt: !2298)
!2311 = !DILocation(line: 154, column: 26, scope: !1900, inlinedAt: !2298)
!2312 = !DILocation(line: 156, column: 14, scope: !1900, inlinedAt: !2298)
!2313 = !DILocation(line: 343, column: 22, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !244, file: !3, line: 343, column: 13)
!2315 = !DILocation(line: 158, column: 5, scope: !1900, inlinedAt: !2298)
!2316 = !DILocation(line: 343, column: 13, scope: !2314)
!2317 = !DILocation(line: 343, column: 13, scope: !244)
!2318 = !DILocation(line: 345, column: 37, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2314, file: !3, line: 344, column: 9)
!2320 = !DILocalVariable(name: "s", arg: 1, scope: !2321, file: !8, line: 133, type: !6)
!2321 = distinct !DISubprogram(name: "bs_write32", scope: !8, file: !8, line: 133, type: !1886, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !96, retainedNodes: !2322)
!2322 = !{!2320, !2323}
!2323 = !DILocalVariable(name: "i_bits", arg: 2, scope: !2321, file: !8, line: 133, type: !124)
!2324 = !DILocation(line: 0, scope: !2321, inlinedAt: !2325)
!2325 = distinct !DILocation(line: 345, column: 13, scope: !2319)
!2326 = !DILocation(line: 135, column: 29, scope: !2321, inlinedAt: !2325)
!2327 = !DILocation(line: 0, scope: !726, inlinedAt: !2328)
!2328 = distinct !DILocation(line: 135, column: 5, scope: !2321, inlinedAt: !2325)
!2329 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !2328)
!2330 = !DILocation(line: 90, column: 50, scope: !735, inlinedAt: !2328)
!2331 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !2328)
!2332 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !2328)
!2333 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !2328)
!2334 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !2328)
!2335 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !2328)
!2336 = !DILocation(line: 0, scope: !752, inlinedAt: !2337)
!2337 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !2328)
!2338 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !2337)
!2339 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !2328)
!2340 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !2328)
!2341 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !2328)
!2342 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !2328)
!2343 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !2328)
!2344 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !2328)
!2345 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !2346)
!2346 = distinct !DILocation(line: 136, column: 5, scope: !2321, inlinedAt: !2325)
!2347 = !DILocation(line: 0, scope: !726, inlinedAt: !2346)
!2348 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !2346)
!2349 = !DILocation(line: 90, column: 50, scope: !735, inlinedAt: !2346)
!2350 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !2346)
!2351 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !2346)
!2352 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !2346)
!2353 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !2346)
!2354 = !DILocation(line: 0, scope: !752, inlinedAt: !2355)
!2355 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !2346)
!2356 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !2355)
!2357 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !2346)
!2358 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !2346)
!2359 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !2346)
!2360 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !2346)
!2361 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !2346)
!2362 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !2346)
!2363 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !2364)
!2364 = distinct !DILocation(line: 135, column: 5, scope: !2321, inlinedAt: !2365)
!2365 = distinct !DILocation(line: 346, column: 13, scope: !2319)
!2366 = !DILocation(line: 346, column: 37, scope: !2319)
!2367 = !DILocation(line: 0, scope: !2321, inlinedAt: !2365)
!2368 = !DILocation(line: 135, column: 29, scope: !2321, inlinedAt: !2365)
!2369 = !DILocation(line: 0, scope: !726, inlinedAt: !2364)
!2370 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !2364)
!2371 = !DILocation(line: 90, column: 50, scope: !735, inlinedAt: !2364)
!2372 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !2364)
!2373 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !2364)
!2374 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !2364)
!2375 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !2364)
!2376 = !DILocation(line: 0, scope: !752, inlinedAt: !2377)
!2377 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !2364)
!2378 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !2377)
!2379 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !2364)
!2380 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !2364)
!2381 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !2364)
!2382 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !2364)
!2383 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !2364)
!2384 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !2364)
!2385 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !2386)
!2386 = distinct !DILocation(line: 136, column: 5, scope: !2321, inlinedAt: !2365)
!2387 = !DILocation(line: 0, scope: !726, inlinedAt: !2386)
!2388 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !2386)
!2389 = !DILocation(line: 90, column: 50, scope: !735, inlinedAt: !2386)
!2390 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !2386)
!2391 = !DILocation(line: 90, column: 21, scope: !735, inlinedAt: !2386)
!2392 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !2386)
!2393 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !2386)
!2394 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !2386)
!2395 = !DILocation(line: 0, scope: !752, inlinedAt: !2396)
!2396 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !2386)
!2397 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !2396)
!2398 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !2386)
!2399 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !2386)
!2400 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !2386)
!2401 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !2386)
!2402 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !2386)
!2403 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !2386)
!2404 = !DILocation(line: 143, column: 14, scope: !1885, inlinedAt: !2405)
!2405 = distinct !DILocation(line: 347, column: 13, scope: !2319)
!2406 = !DILocation(line: 347, column: 36, scope: !2319)
!2407 = !DILocation(line: 0, scope: !1885, inlinedAt: !2405)
!2408 = !DILocation(line: 141, column: 17, scope: !1885, inlinedAt: !2405)
!2409 = !DILocation(line: 142, column: 20, scope: !1885, inlinedAt: !2405)
!2410 = !DILocation(line: 142, column: 17, scope: !1885, inlinedAt: !2405)
!2411 = !DILocation(line: 144, column: 19, scope: !1897, inlinedAt: !2405)
!2412 = !DILocation(line: 144, column: 9, scope: !1885, inlinedAt: !2405)
!2413 = !DILocation(line: 154, column: 42, scope: !1900, inlinedAt: !2405)
!2414 = !DILocation(line: 0, scope: !1902, inlinedAt: !2415)
!2415 = distinct !DILocation(line: 154, column: 28, scope: !1900, inlinedAt: !2405)
!2416 = !DILocation(line: 150, column: 5, scope: !1902, inlinedAt: !2415)
!2417 = !DILocation(line: 154, column: 24, scope: !1900, inlinedAt: !2405)
!2418 = !DILocation(line: 154, column: 26, scope: !1900, inlinedAt: !2405)
!2419 = !DILocation(line: 0, scope: !1885, inlinedAt: !2420)
!2420 = distinct !DILocation(line: 350, column: 9, scope: !244)
!2421 = !DILocation(line: 144, column: 9, scope: !1885, inlinedAt: !2420)
!2422 = !DILocation(line: 143, column: 14, scope: !1885, inlinedAt: !2420)
!2423 = !DILocation(line: 141, column: 17, scope: !1885, inlinedAt: !2420)
!2424 = !DILocation(line: 144, column: 19, scope: !1897, inlinedAt: !2420)
!2425 = !DILocation(line: 154, column: 42, scope: !1900, inlinedAt: !2420)
!2426 = !DILocation(line: 0, scope: !1902, inlinedAt: !2427)
!2427 = distinct !DILocation(line: 154, column: 28, scope: !1900, inlinedAt: !2420)
!2428 = !DILocation(line: 150, column: 5, scope: !1902, inlinedAt: !2427)
!2429 = !DILocation(line: 154, column: 24, scope: !1900, inlinedAt: !2420)
!2430 = !DILocation(line: 154, column: 26, scope: !1900, inlinedAt: !2420)
!2431 = !DILocation(line: 158, column: 5, scope: !1900, inlinedAt: !2420)
!2432 = !DILocation(line: 0, scope: !244)
!2433 = !DILocation(line: 0, scope: !1885, inlinedAt: !2434)
!2434 = distinct !DILocation(line: 351, column: 9, scope: !244)
!2435 = !DILocation(line: 143, column: 14, scope: !1885, inlinedAt: !2434)
!2436 = !DILocation(line: 144, column: 9, scope: !1885, inlinedAt: !2434)
!2437 = !DILocation(line: 144, column: 19, scope: !1897, inlinedAt: !2434)
!2438 = !DILocation(line: 154, column: 42, scope: !1900, inlinedAt: !2434)
!2439 = !DILocation(line: 0, scope: !1902, inlinedAt: !2440)
!2440 = distinct !DILocation(line: 154, column: 28, scope: !1900, inlinedAt: !2434)
!2441 = !DILocation(line: 150, column: 5, scope: !1902, inlinedAt: !2440)
!2442 = !DILocation(line: 154, column: 24, scope: !1900, inlinedAt: !2434)
!2443 = !DILocation(line: 154, column: 26, scope: !1900, inlinedAt: !2434)
!2444 = !DILocation(line: 156, column: 14, scope: !1900, inlinedAt: !2434)
!2445 = !DILocation(line: 0, scope: !1885, inlinedAt: !2446)
!2446 = distinct !DILocation(line: 352, column: 9, scope: !244)
!2447 = !DILocation(line: 141, column: 17, scope: !1885, inlinedAt: !2446)
!2448 = !DILocation(line: 142, column: 17, scope: !1885, inlinedAt: !2446)
!2449 = !DILocation(line: 144, column: 9, scope: !1885, inlinedAt: !2446)
!2450 = !DILocation(line: 143, column: 14, scope: !1885, inlinedAt: !2446)
!2451 = !DILocation(line: 144, column: 19, scope: !1897, inlinedAt: !2446)
!2452 = !DILocation(line: 154, column: 42, scope: !1900, inlinedAt: !2446)
!2453 = !DILocation(line: 0, scope: !1902, inlinedAt: !2454)
!2454 = distinct !DILocation(line: 154, column: 28, scope: !1900, inlinedAt: !2446)
!2455 = !DILocation(line: 150, column: 5, scope: !1902, inlinedAt: !2454)
!2456 = !DILocation(line: 154, column: 24, scope: !1900, inlinedAt: !2446)
!2457 = !DILocation(line: 154, column: 26, scope: !1900, inlinedAt: !2446)
!2458 = !DILocation(line: 156, column: 14, scope: !1900, inlinedAt: !2446)
!2459 = !DILocation(line: 158, column: 5, scope: !1900, inlinedAt: !2446)
!2460 = !DILocation(line: 143, column: 14, scope: !1885, inlinedAt: !2461)
!2461 = distinct !DILocation(line: 353, column: 9, scope: !244)
!2462 = !DILocation(line: 353, column: 32, scope: !244)
!2463 = !{!418, !419, i64 1204}
!2464 = !DILocation(line: 0, scope: !1885, inlinedAt: !2461)
!2465 = !DILocation(line: 141, column: 17, scope: !1885, inlinedAt: !2461)
!2466 = !DILocation(line: 142, column: 20, scope: !1885, inlinedAt: !2461)
!2467 = !DILocation(line: 142, column: 17, scope: !1885, inlinedAt: !2461)
!2468 = !DILocation(line: 144, column: 19, scope: !1897, inlinedAt: !2461)
!2469 = !DILocation(line: 144, column: 9, scope: !1885, inlinedAt: !2461)
!2470 = !DILocation(line: 154, column: 42, scope: !1900, inlinedAt: !2461)
!2471 = !DILocation(line: 0, scope: !1902, inlinedAt: !2472)
!2472 = distinct !DILocation(line: 154, column: 28, scope: !1900, inlinedAt: !2461)
!2473 = !DILocation(line: 150, column: 5, scope: !1902, inlinedAt: !2472)
!2474 = !DILocation(line: 154, column: 24, scope: !1900, inlinedAt: !2461)
!2475 = !DILocation(line: 154, column: 26, scope: !1900, inlinedAt: !2461)
!2476 = !DILocation(line: 156, column: 14, scope: !1900, inlinedAt: !2461)
!2477 = !DILocation(line: 354, column: 22, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !244, file: !3, line: 354, column: 13)
!2479 = !DILocation(line: 158, column: 5, scope: !1900, inlinedAt: !2461)
!2480 = !DILocation(line: 354, column: 13, scope: !2478)
!2481 = !DILocation(line: 354, column: 13, scope: !244)
!2482 = !DILocation(line: 356, column: 36, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2478, file: !3, line: 355, column: 9)
!2484 = !{!418, !419, i64 1208}
!2485 = !DILocation(line: 0, scope: !1885, inlinedAt: !2486)
!2486 = distinct !DILocation(line: 356, column: 13, scope: !2483)
!2487 = !DILocation(line: 141, column: 17, scope: !1885, inlinedAt: !2486)
!2488 = !DILocation(line: 142, column: 20, scope: !1885, inlinedAt: !2486)
!2489 = !DILocation(line: 142, column: 17, scope: !1885, inlinedAt: !2486)
!2490 = !DILocation(line: 143, column: 14, scope: !1885, inlinedAt: !2486)
!2491 = !DILocation(line: 144, column: 19, scope: !1897, inlinedAt: !2486)
!2492 = !DILocation(line: 144, column: 9, scope: !1885, inlinedAt: !2486)
!2493 = !DILocation(line: 154, column: 42, scope: !1900, inlinedAt: !2486)
!2494 = !DILocation(line: 0, scope: !1902, inlinedAt: !2495)
!2495 = distinct !DILocation(line: 154, column: 28, scope: !1900, inlinedAt: !2486)
!2496 = !DILocation(line: 150, column: 5, scope: !1902, inlinedAt: !2495)
!2497 = !DILocation(line: 154, column: 24, scope: !1900, inlinedAt: !2486)
!2498 = !DILocation(line: 154, column: 26, scope: !1900, inlinedAt: !2486)
!2499 = !DILocation(line: 156, column: 14, scope: !1900, inlinedAt: !2486)
!2500 = !DILocation(line: 158, column: 5, scope: !1900, inlinedAt: !2486)
!2501 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !2502)
!2502 = distinct !DILocation(line: 218, column: 5, scope: !864, inlinedAt: !2503)
!2503 = distinct !DILocation(line: 357, column: 13, scope: !2483)
!2504 = !DILocation(line: 357, column: 38, scope: !2483)
!2505 = !{!418, !419, i64 1212}
!2506 = !DILocation(line: 0, scope: !864, inlinedAt: !2503)
!2507 = !DILocation(line: 206, column: 15, scope: !864, inlinedAt: !2503)
!2508 = !DILocation(line: 207, column: 13, scope: !877, inlinedAt: !2503)
!2509 = !DILocation(line: 207, column: 9, scope: !864, inlinedAt: !2503)
!2510 = !DILocation(line: 212, column: 13, scope: !880, inlinedAt: !2503)
!2511 = !DILocation(line: 212, column: 9, scope: !864, inlinedAt: !2503)
!2512 = !DILocation(line: 217, column: 13, scope: !864, inlinedAt: !2503)
!2513 = !DILocation(line: 217, column: 10, scope: !864, inlinedAt: !2503)
!2514 = !DILocation(line: 218, column: 22, scope: !864, inlinedAt: !2503)
!2515 = !DILocation(line: 0, scope: !726, inlinedAt: !2502)
!2516 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !2502)
!2517 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !2502)
!2518 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !2502)
!2519 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !2502)
!2520 = !DILocation(line: 0, scope: !752, inlinedAt: !2521)
!2521 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !2502)
!2522 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !2521)
!2523 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !2502)
!2524 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !2502)
!2525 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !2502)
!2526 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !2502)
!2527 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !2502)
!2528 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !2502)
!2529 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !2530)
!2530 = distinct !DILocation(line: 219, column: 5, scope: !864, inlinedAt: !2503)
!2531 = !DILocation(line: 219, column: 27, scope: !864, inlinedAt: !2503)
!2532 = !DILocation(line: 0, scope: !726, inlinedAt: !2530)
!2533 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !2530)
!2534 = !DILocation(line: 90, column: 50, scope: !735, inlinedAt: !2530)
!2535 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !2530)
!2536 = !DILocation(line: 90, column: 21, scope: !735, inlinedAt: !2530)
!2537 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !2530)
!2538 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !2530)
!2539 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !2530)
!2540 = !DILocation(line: 0, scope: !752, inlinedAt: !2541)
!2541 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !2530)
!2542 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !2541)
!2543 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !2530)
!2544 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !2530)
!2545 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !2530)
!2546 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !2530)
!2547 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !2530)
!2548 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !2530)
!2549 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !2550)
!2550 = distinct !DILocation(line: 218, column: 5, scope: !864, inlinedAt: !2551)
!2551 = distinct !DILocation(line: 358, column: 13, scope: !2483)
!2552 = !DILocation(line: 358, column: 38, scope: !2483)
!2553 = !{!418, !419, i64 1216}
!2554 = !DILocation(line: 0, scope: !864, inlinedAt: !2551)
!2555 = !DILocation(line: 206, column: 15, scope: !864, inlinedAt: !2551)
!2556 = !DILocation(line: 207, column: 13, scope: !877, inlinedAt: !2551)
!2557 = !DILocation(line: 207, column: 9, scope: !864, inlinedAt: !2551)
!2558 = !DILocation(line: 212, column: 13, scope: !880, inlinedAt: !2551)
!2559 = !DILocation(line: 212, column: 9, scope: !864, inlinedAt: !2551)
!2560 = !DILocation(line: 217, column: 13, scope: !864, inlinedAt: !2551)
!2561 = !DILocation(line: 217, column: 10, scope: !864, inlinedAt: !2551)
!2562 = !DILocation(line: 218, column: 22, scope: !864, inlinedAt: !2551)
!2563 = !DILocation(line: 0, scope: !726, inlinedAt: !2550)
!2564 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !2550)
!2565 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !2550)
!2566 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !2550)
!2567 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !2550)
!2568 = !DILocation(line: 0, scope: !752, inlinedAt: !2569)
!2569 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !2550)
!2570 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !2569)
!2571 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !2550)
!2572 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !2550)
!2573 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !2550)
!2574 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !2550)
!2575 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !2550)
!2576 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !2550)
!2577 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !2578)
!2578 = distinct !DILocation(line: 219, column: 5, scope: !864, inlinedAt: !2551)
!2579 = !DILocation(line: 219, column: 27, scope: !864, inlinedAt: !2551)
!2580 = !DILocation(line: 0, scope: !726, inlinedAt: !2578)
!2581 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !2578)
!2582 = !DILocation(line: 90, column: 50, scope: !735, inlinedAt: !2578)
!2583 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !2578)
!2584 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !2578)
!2585 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !2578)
!2586 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !2578)
!2587 = !DILocation(line: 0, scope: !752, inlinedAt: !2588)
!2588 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !2578)
!2589 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !2588)
!2590 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !2578)
!2591 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !2578)
!2592 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !2578)
!2593 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !2578)
!2594 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !2578)
!2595 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !2578)
!2596 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !2597)
!2597 = distinct !DILocation(line: 218, column: 5, scope: !864, inlinedAt: !2598)
!2598 = distinct !DILocation(line: 359, column: 13, scope: !2483)
!2599 = !DILocation(line: 359, column: 38, scope: !2483)
!2600 = !DILocation(line: 0, scope: !864, inlinedAt: !2598)
!2601 = !DILocation(line: 206, column: 15, scope: !864, inlinedAt: !2598)
!2602 = !DILocation(line: 207, column: 13, scope: !877, inlinedAt: !2598)
!2603 = !DILocation(line: 207, column: 9, scope: !864, inlinedAt: !2598)
!2604 = !DILocation(line: 212, column: 13, scope: !880, inlinedAt: !2598)
!2605 = !DILocation(line: 212, column: 9, scope: !864, inlinedAt: !2598)
!2606 = !DILocation(line: 217, column: 13, scope: !864, inlinedAt: !2598)
!2607 = !DILocation(line: 217, column: 10, scope: !864, inlinedAt: !2598)
!2608 = !DILocation(line: 218, column: 22, scope: !864, inlinedAt: !2598)
!2609 = !DILocation(line: 0, scope: !726, inlinedAt: !2597)
!2610 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !2597)
!2611 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !2597)
!2612 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !2597)
!2613 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !2597)
!2614 = !DILocation(line: 0, scope: !752, inlinedAt: !2615)
!2615 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !2597)
!2616 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !2615)
!2617 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !2597)
!2618 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !2597)
!2619 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !2597)
!2620 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !2597)
!2621 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !2597)
!2622 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !2597)
!2623 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !2624)
!2624 = distinct !DILocation(line: 219, column: 5, scope: !864, inlinedAt: !2598)
!2625 = !DILocation(line: 219, column: 27, scope: !864, inlinedAt: !2598)
!2626 = !DILocation(line: 0, scope: !726, inlinedAt: !2624)
!2627 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !2624)
!2628 = !DILocation(line: 90, column: 50, scope: !735, inlinedAt: !2624)
!2629 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !2624)
!2630 = !DILocation(line: 90, column: 21, scope: !735, inlinedAt: !2624)
!2631 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !2624)
!2632 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !2624)
!2633 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !2624)
!2634 = !DILocation(line: 0, scope: !752, inlinedAt: !2635)
!2635 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !2624)
!2636 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !2635)
!2637 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !2624)
!2638 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !2624)
!2639 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !2624)
!2640 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !2624)
!2641 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !2624)
!2642 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !2624)
!2643 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !2644)
!2644 = distinct !DILocation(line: 218, column: 5, scope: !864, inlinedAt: !2645)
!2645 = distinct !DILocation(line: 360, column: 13, scope: !2483)
!2646 = !DILocation(line: 360, column: 38, scope: !2483)
!2647 = !DILocation(line: 0, scope: !864, inlinedAt: !2645)
!2648 = !DILocation(line: 206, column: 15, scope: !864, inlinedAt: !2645)
!2649 = !DILocation(line: 207, column: 13, scope: !877, inlinedAt: !2645)
!2650 = !DILocation(line: 207, column: 9, scope: !864, inlinedAt: !2645)
!2651 = !DILocation(line: 212, column: 13, scope: !880, inlinedAt: !2645)
!2652 = !DILocation(line: 212, column: 9, scope: !864, inlinedAt: !2645)
!2653 = !DILocation(line: 217, column: 13, scope: !864, inlinedAt: !2645)
!2654 = !DILocation(line: 217, column: 10, scope: !864, inlinedAt: !2645)
!2655 = !DILocation(line: 218, column: 22, scope: !864, inlinedAt: !2645)
!2656 = !DILocation(line: 0, scope: !726, inlinedAt: !2644)
!2657 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !2644)
!2658 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !2644)
!2659 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !2644)
!2660 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !2644)
!2661 = !DILocation(line: 0, scope: !752, inlinedAt: !2662)
!2662 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !2644)
!2663 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !2662)
!2664 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !2644)
!2665 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !2644)
!2666 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !2644)
!2667 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !2644)
!2668 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !2644)
!2669 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !2644)
!2670 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !2671)
!2671 = distinct !DILocation(line: 219, column: 5, scope: !864, inlinedAt: !2645)
!2672 = !DILocation(line: 219, column: 27, scope: !864, inlinedAt: !2645)
!2673 = !DILocation(line: 0, scope: !726, inlinedAt: !2671)
!2674 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !2671)
!2675 = !DILocation(line: 90, column: 50, scope: !735, inlinedAt: !2671)
!2676 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !2671)
!2677 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !2671)
!2678 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !2671)
!2679 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !2671)
!2680 = !DILocation(line: 0, scope: !752, inlinedAt: !2681)
!2681 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !2671)
!2682 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !2681)
!2683 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !2671)
!2684 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !2671)
!2685 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !2671)
!2686 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !2671)
!2687 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !2671)
!2688 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !2671)
!2689 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !2690)
!2690 = distinct !DILocation(line: 218, column: 5, scope: !864, inlinedAt: !2691)
!2691 = distinct !DILocation(line: 361, column: 13, scope: !2483)
!2692 = !DILocation(line: 361, column: 38, scope: !2483)
!2693 = !DILocation(line: 0, scope: !864, inlinedAt: !2691)
!2694 = !DILocation(line: 206, column: 15, scope: !864, inlinedAt: !2691)
!2695 = !DILocation(line: 207, column: 13, scope: !877, inlinedAt: !2691)
!2696 = !DILocation(line: 207, column: 9, scope: !864, inlinedAt: !2691)
!2697 = !DILocation(line: 212, column: 13, scope: !880, inlinedAt: !2691)
!2698 = !DILocation(line: 212, column: 9, scope: !864, inlinedAt: !2691)
!2699 = !DILocation(line: 217, column: 13, scope: !864, inlinedAt: !2691)
!2700 = !DILocation(line: 217, column: 10, scope: !864, inlinedAt: !2691)
!2701 = !DILocation(line: 218, column: 22, scope: !864, inlinedAt: !2691)
!2702 = !DILocation(line: 0, scope: !726, inlinedAt: !2690)
!2703 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !2690)
!2704 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !2690)
!2705 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !2690)
!2706 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !2690)
!2707 = !DILocation(line: 0, scope: !752, inlinedAt: !2708)
!2708 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !2690)
!2709 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !2708)
!2710 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !2690)
!2711 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !2690)
!2712 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !2690)
!2713 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !2690)
!2714 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !2690)
!2715 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !2690)
!2716 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !2717)
!2717 = distinct !DILocation(line: 219, column: 5, scope: !864, inlinedAt: !2691)
!2718 = !DILocation(line: 219, column: 27, scope: !864, inlinedAt: !2691)
!2719 = !DILocation(line: 0, scope: !726, inlinedAt: !2717)
!2720 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !2717)
!2721 = !DILocation(line: 90, column: 50, scope: !735, inlinedAt: !2717)
!2722 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !2717)
!2723 = !DILocation(line: 90, column: 21, scope: !735, inlinedAt: !2717)
!2724 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !2717)
!2725 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !2717)
!2726 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !2717)
!2727 = !DILocation(line: 0, scope: !752, inlinedAt: !2728)
!2728 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !2717)
!2729 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !2728)
!2730 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !2717)
!2731 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !2717)
!2732 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !2717)
!2733 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !2717)
!2734 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !2717)
!2735 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !2717)
!2736 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !2737)
!2737 = distinct !DILocation(line: 218, column: 5, scope: !864, inlinedAt: !2738)
!2738 = distinct !DILocation(line: 362, column: 13, scope: !2483)
!2739 = !DILocation(line: 362, column: 38, scope: !2483)
!2740 = !DILocation(line: 0, scope: !864, inlinedAt: !2738)
!2741 = !DILocation(line: 206, column: 15, scope: !864, inlinedAt: !2738)
!2742 = !DILocation(line: 207, column: 13, scope: !877, inlinedAt: !2738)
!2743 = !DILocation(line: 207, column: 9, scope: !864, inlinedAt: !2738)
!2744 = !DILocation(line: 212, column: 13, scope: !880, inlinedAt: !2738)
!2745 = !DILocation(line: 212, column: 9, scope: !864, inlinedAt: !2738)
!2746 = !DILocation(line: 217, column: 13, scope: !864, inlinedAt: !2738)
!2747 = !DILocation(line: 217, column: 10, scope: !864, inlinedAt: !2738)
!2748 = !DILocation(line: 218, column: 22, scope: !864, inlinedAt: !2738)
!2749 = !DILocation(line: 0, scope: !726, inlinedAt: !2737)
!2750 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !2737)
!2751 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !2737)
!2752 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !2737)
!2753 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !2737)
!2754 = !DILocation(line: 0, scope: !752, inlinedAt: !2755)
!2755 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !2737)
!2756 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !2755)
!2757 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !2737)
!2758 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !2737)
!2759 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !2737)
!2760 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !2737)
!2761 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !2737)
!2762 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !2737)
!2763 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !2764)
!2764 = distinct !DILocation(line: 219, column: 5, scope: !864, inlinedAt: !2738)
!2765 = !DILocation(line: 219, column: 27, scope: !864, inlinedAt: !2738)
!2766 = !DILocation(line: 0, scope: !726, inlinedAt: !2764)
!2767 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !2764)
!2768 = !DILocation(line: 90, column: 50, scope: !735, inlinedAt: !2764)
!2769 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !2764)
!2770 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !2764)
!2771 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !2764)
!2772 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !2764)
!2773 = !DILocation(line: 0, scope: !752, inlinedAt: !2774)
!2774 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !2764)
!2775 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !2774)
!2776 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !2764)
!2777 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !2764)
!2778 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !2764)
!2779 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !2764)
!2780 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !2764)
!2781 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !2764)
!2782 = !DILocation(line: 143, column: 14, scope: !1885, inlinedAt: !2783)
!2783 = distinct !DILocation(line: 251, column: 5, scope: !2784, inlinedAt: !2789)
!2784 = distinct !DISubprogram(name: "bs_rbsp_trailing", scope: !8, file: !8, line: 249, type: !2785, scopeLine: 250, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !96, retainedNodes: !2787)
!2785 = !DISubroutineType(types: !2786)
!2786 = !{null, !6}
!2787 = !{!2788}
!2788 = !DILocalVariable(name: "s", arg: 1, scope: !2784, file: !8, line: 249, type: !6)
!2789 = distinct !DILocation(line: 366, column: 5, scope: !2)
!2790 = !DILocation(line: 141, column: 17, scope: !1885, inlinedAt: !2783)
!2791 = !DILocation(line: 0, scope: !2784, inlinedAt: !2789)
!2792 = !DILocation(line: 0, scope: !1885, inlinedAt: !2783)
!2793 = !DILocation(line: 142, column: 17, scope: !1885, inlinedAt: !2783)
!2794 = !DILocation(line: 144, column: 19, scope: !1897, inlinedAt: !2783)
!2795 = !DILocation(line: 144, column: 9, scope: !1885, inlinedAt: !2783)
!2796 = !DILocation(line: 154, column: 42, scope: !1900, inlinedAt: !2783)
!2797 = !DILocation(line: 0, scope: !1902, inlinedAt: !2798)
!2798 = distinct !DILocation(line: 154, column: 28, scope: !1900, inlinedAt: !2783)
!2799 = !DILocation(line: 150, column: 5, scope: !1902, inlinedAt: !2798)
!2800 = !DILocation(line: 154, column: 24, scope: !1900, inlinedAt: !2783)
!2801 = !DILocation(line: 154, column: 26, scope: !1900, inlinedAt: !2783)
!2802 = !DILocation(line: 156, column: 14, scope: !1900, inlinedAt: !2783)
!2803 = !DILocation(line: 158, column: 5, scope: !1900, inlinedAt: !2783)
!2804 = !DILocation(line: 80, column: 54, scope: !2805, inlinedAt: !2808)
!2805 = distinct !DISubprogram(name: "bs_flush", scope: !8, file: !8, line: 70, type: !2785, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !96, retainedNodes: !2806)
!2806 = !{!2807}
!2807 = !DILocalVariable(name: "s", arg: 1, scope: !2805, file: !8, line: 70, type: !6)
!2808 = distinct !DILocation(line: 252, column: 5, scope: !2784, inlinedAt: !2789)
!2809 = !DILocation(line: 0, scope: !2805, inlinedAt: !2808)
!2810 = !DILocation(line: 80, column: 48, scope: !2805, inlinedAt: !2808)
!2811 = !DILocation(line: 0, scope: !752, inlinedAt: !2812)
!2812 = distinct !DILocation(line: 80, column: 24, scope: !2805, inlinedAt: !2808)
!2813 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !2812)
!2814 = !DILocation(line: 80, column: 20, scope: !2805, inlinedAt: !2808)
!2815 = !DILocation(line: 80, column: 22, scope: !2805, inlinedAt: !2808)
!2816 = !{!739, !739, i64 0}
!2817 = !DILocation(line: 82, column: 35, scope: !2805, inlinedAt: !2808)
!2818 = !DILocation(line: 82, column: 23, scope: !2805, inlinedAt: !2808)
!2819 = !DILocation(line: 82, column: 10, scope: !2805, inlinedAt: !2808)
!2820 = !DILocation(line: 83, column: 15, scope: !2805, inlinedAt: !2808)
!2821 = !DILocation(line: 367, column: 1, scope: !2)
!2822 = distinct !DISubprogram(name: "x264_pps_init", scope: !3, file: !3, line: 369, type: !2823, scopeLine: 370, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !96, retainedNodes: !2848)
!2823 = !DISubroutineType(types: !2824)
!2824 = !{null, !2825, !25, !265, !27}
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pps_t", file: !29, line: 165, baseType: !2827)
!2827 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !29, line: 135, size: 960, elements: !2828)
!2828 = !{!2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2846}
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "i_id", scope: !2827, file: !29, line: 137, baseType: !25, size: 32)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !2827, file: !29, line: 138, baseType: !25, size: 32, offset: 32)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !2827, file: !29, line: 140, baseType: !25, size: 32, offset: 64)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_order", scope: !2827, file: !29, line: 142, baseType: !25, size: 32, offset: 96)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_slice_groups", scope: !2827, file: !29, line: 143, baseType: !25, size: 32, offset: 128)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l0_active", scope: !2827, file: !29, line: 145, baseType: !25, size: 32, offset: 160)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l1_active", scope: !2827, file: !29, line: 146, baseType: !25, size: 32, offset: 192)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_pred", scope: !2827, file: !29, line: 148, baseType: !25, size: 32, offset: 224)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !2827, file: !29, line: 149, baseType: !25, size: 32, offset: 256)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_init_qp", scope: !2827, file: !29, line: 151, baseType: !25, size: 32, offset: 288)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_init_qs", scope: !2827, file: !29, line: 152, baseType: !25, size: 32, offset: 320)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_index_offset", scope: !2827, file: !29, line: 154, baseType: !25, size: 32, offset: 352)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter_control", scope: !2827, file: !29, line: 156, baseType: !25, size: 32, offset: 384)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "b_constrained_intra_pred", scope: !2827, file: !29, line: 157, baseType: !25, size: 32, offset: 416)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "b_redundant_pic_cnt", scope: !2827, file: !29, line: 158, baseType: !25, size: 32, offset: 448)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8_mode", scope: !2827, file: !29, line: 160, baseType: !25, size: 32, offset: 480)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !2827, file: !29, line: 162, baseType: !25, size: 32, offset: 512)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_list", scope: !2827, file: !29, line: 163, baseType: !2847, size: 384, offset: 576)
!2847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 384, elements: !213)
!2848 = !{!2849, !2850, !2851, !2852, !2853, !2854}
!2849 = !DILocalVariable(name: "pps", arg: 1, scope: !2822, file: !3, line: 369, type: !2825)
!2850 = !DILocalVariable(name: "i_id", arg: 2, scope: !2822, file: !3, line: 369, type: !25)
!2851 = !DILocalVariable(name: "param", arg: 3, scope: !2822, file: !3, line: 369, type: !265)
!2852 = !DILocalVariable(name: "sps", arg: 4, scope: !2822, file: !3, line: 369, type: !27)
!2853 = !DILocalVariable(name: "i", scope: !2822, file: !3, line: 371, type: !25)
!2854 = !DILocalVariable(name: "j", scope: !2822, file: !3, line: 371, type: !25)
!2855 = !DILocation(line: 0, scope: !2822)
!2856 = !DILocation(line: 373, column: 15, scope: !2822)
!2857 = !{!2858, !419, i64 0}
!2858 = !{!"", !419, i64 0, !419, i64 4, !419, i64 8, !419, i64 12, !419, i64 16, !419, i64 20, !419, i64 24, !419, i64 28, !419, i64 32, !419, i64 36, !419, i64 40, !419, i64 44, !419, i64 48, !419, i64 52, !419, i64 56, !419, i64 60, !419, i64 64, !420, i64 72}
!2859 = !DILocation(line: 374, column: 26, scope: !2822)
!2860 = !DILocation(line: 374, column: 10, scope: !2822)
!2861 = !DILocation(line: 374, column: 19, scope: !2822)
!2862 = !{!2858, !419, i64 4}
!2863 = !DILocation(line: 375, column: 27, scope: !2822)
!2864 = !DILocation(line: 375, column: 10, scope: !2822)
!2865 = !DILocation(line: 375, column: 18, scope: !2822)
!2866 = !{!2858, !419, i64 8}
!2867 = !DILocation(line: 377, column: 10, scope: !2822)
!2868 = !DILocation(line: 377, column: 22, scope: !2822)
!2869 = !DILocation(line: 383, column: 10, scope: !2822)
!2870 = !DILocation(line: 383, column: 26, scope: !2822)
!2871 = !{!2858, !419, i64 28}
!2872 = !DILocation(line: 384, column: 45, scope: !2822)
!2873 = !{!427, !419, i64 388}
!2874 = !DILocation(line: 384, column: 30, scope: !2822)
!2875 = !DILocation(line: 384, column: 10, scope: !2822)
!2876 = !DILocation(line: 384, column: 28, scope: !2822)
!2877 = !{!2858, !419, i64 32}
!2878 = !DILocation(line: 386, column: 33, scope: !2822)
!2879 = !DILocation(line: 386, column: 36, scope: !2822)
!2880 = !DILocation(line: 386, column: 48, scope: !2822)
!2881 = !DILocation(line: 386, column: 26, scope: !2822)
!2882 = !DILocation(line: 386, column: 80, scope: !2822)
!2883 = !DILocation(line: 386, column: 10, scope: !2822)
!2884 = !DILocation(line: 386, column: 24, scope: !2822)
!2885 = !{!2858, !419, i64 36}
!2886 = !DILocation(line: 387, column: 10, scope: !2822)
!2887 = !DILocation(line: 387, column: 24, scope: !2822)
!2888 = !{!2858, !419, i64 40}
!2889 = !DILocation(line: 389, column: 52, scope: !2822)
!2890 = !{!427, !419, i64 400}
!2891 = !DILocation(line: 389, column: 10, scope: !2822)
!2892 = !DILocation(line: 389, column: 35, scope: !2822)
!2893 = !{!2858, !419, i64 44}
!2894 = !DILocation(line: 390, column: 10, scope: !2822)
!2895 = !DILocation(line: 390, column: 38, scope: !2822)
!2896 = !{!2858, !419, i64 48}
!2897 = !DILocation(line: 391, column: 10, scope: !2822)
!2898 = !DILocation(line: 391, column: 35, scope: !2822)
!2899 = !{!2858, !419, i64 52}
!2900 = !DILocation(line: 392, column: 10, scope: !2822)
!2901 = !DILocation(line: 392, column: 30, scope: !2822)
!2902 = !{!2858, !419, i64 56}
!2903 = !DILocation(line: 394, column: 48, scope: !2822)
!2904 = !DILocation(line: 394, column: 33, scope: !2822)
!2905 = !DILocation(line: 394, column: 10, scope: !2822)
!2906 = !DILocation(line: 394, column: 31, scope: !2822)
!2907 = !{!2858, !419, i64 60}
!2908 = !DILocation(line: 396, column: 32, scope: !2822)
!2909 = !DILocation(line: 396, column: 10, scope: !2822)
!2910 = !DILocation(line: 396, column: 23, scope: !2822)
!2911 = !{!2858, !419, i64 64}
!2912 = !DILocation(line: 397, column: 5, scope: !2822)
!2913 = !DILocation(line: 427, column: 1, scope: !2822)
!2914 = !DILocation(line: 409, column: 27, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2822, file: !3, line: 398, column: 5)
!2916 = !DILocalVariable(name: "buf", arg: 1, scope: !2917, file: !3, line: 34, type: !12)
!2917 = distinct !DISubprogram(name: "transpose", scope: !3, file: !3, line: 34, type: !2918, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !96, retainedNodes: !2920)
!2918 = !DISubroutineType(types: !2919)
!2919 = !{null, !12, !25}
!2920 = !{!2916, !2921, !2922, !2923, !2924}
!2921 = !DILocalVariable(name: "w", arg: 2, scope: !2917, file: !3, line: 34, type: !25)
!2922 = !DILocalVariable(name: "i", scope: !2917, file: !3, line: 36, type: !25)
!2923 = !DILocalVariable(name: "j", scope: !2917, file: !3, line: 36, type: !25)
!2924 = !DILocalVariable(name: "t", scope: !2925, file: !3, line: 39, type: !13)
!2925 = distinct !DILexicalBlock(scope: !2926, file: !3, line: 39, column: 13)
!2926 = distinct !DILexicalBlock(scope: !2927, file: !3, line: 38, column: 9)
!2927 = distinct !DILexicalBlock(scope: !2928, file: !3, line: 38, column: 9)
!2928 = distinct !DILexicalBlock(scope: !2929, file: !3, line: 37, column: 5)
!2929 = distinct !DILexicalBlock(scope: !2917, file: !3, line: 37, column: 5)
!2930 = !DILocation(line: 0, scope: !2917, inlinedAt: !2931)
!2931 = distinct !DILocation(line: 409, column: 9, scope: !2915)
!2932 = !DILocation(line: 39, column: 13, scope: !2925, inlinedAt: !2931)
!2933 = !DILocation(line: 0, scope: !2925, inlinedAt: !2931)
!2934 = !DILocation(line: 410, column: 27, scope: !2915)
!2935 = !DILocation(line: 0, scope: !2917, inlinedAt: !2936)
!2936 = distinct !DILocation(line: 410, column: 9, scope: !2915)
!2937 = !DILocation(line: 39, column: 13, scope: !2925, inlinedAt: !2936)
!2938 = !DILocation(line: 0, scope: !2925, inlinedAt: !2936)
!2939 = !DILocation(line: 411, column: 27, scope: !2915)
!2940 = !DILocation(line: 0, scope: !2917, inlinedAt: !2941)
!2941 = distinct !DILocation(line: 411, column: 9, scope: !2915)
!2942 = !DILocation(line: 39, column: 13, scope: !2925, inlinedAt: !2941)
!2943 = !DILocation(line: 0, scope: !2925, inlinedAt: !2941)
!2944 = !DILocation(line: 412, column: 27, scope: !2915)
!2945 = !DILocation(line: 0, scope: !2917, inlinedAt: !2946)
!2946 = distinct !DILocation(line: 412, column: 9, scope: !2915)
!2947 = !DILocation(line: 39, column: 13, scope: !2925, inlinedAt: !2946)
!2948 = !DILocation(line: 0, scope: !2925, inlinedAt: !2946)
!2949 = !DILocation(line: 413, column: 27, scope: !2915)
!2950 = !DILocation(line: 0, scope: !2917, inlinedAt: !2951)
!2951 = distinct !DILocation(line: 413, column: 9, scope: !2915)
!2952 = !DILocation(line: 39, column: 13, scope: !2925, inlinedAt: !2951)
!2953 = !DILocation(line: 0, scope: !2925, inlinedAt: !2951)
!2954 = !DILocation(line: 414, column: 27, scope: !2915)
!2955 = !DILocation(line: 0, scope: !2917, inlinedAt: !2956)
!2956 = distinct !DILocation(line: 414, column: 9, scope: !2915)
!2957 = !DILocation(line: 39, column: 13, scope: !2925, inlinedAt: !2956)
!2958 = !DILocation(line: 0, scope: !2925, inlinedAt: !2956)
!2959 = !DILocation(line: 415, column: 14, scope: !2915)
!2960 = !DILocation(line: 415, column: 36, scope: !2915)
!2961 = !{!429, !429, i64 0}
!2962 = !DILocation(line: 416, column: 9, scope: !2915)
!2963 = !DILocation(line: 416, column: 36, scope: !2915)
!2964 = !DILocation(line: 417, column: 9, scope: !2915)
!2965 = !DILocation(line: 417, column: 36, scope: !2915)
!2966 = !DILocation(line: 418, column: 9, scope: !2915)
!2967 = !DILocation(line: 418, column: 36, scope: !2915)
!2968 = !DILocation(line: 419, column: 9, scope: !2915)
!2969 = !DILocation(line: 419, column: 38, scope: !2915)
!2970 = !DILocation(line: 420, column: 9, scope: !2915)
!2971 = !DILocation(line: 420, column: 38, scope: !2915)
!2972 = !DILocation(line: 423, column: 21, scope: !2973)
!2973 = distinct !DILexicalBlock(scope: !2974, file: !3, line: 423, column: 21)
!2974 = distinct !DILexicalBlock(scope: !2975, file: !3, line: 422, column: 13)
!2975 = distinct !DILexicalBlock(scope: !2976, file: !3, line: 422, column: 13)
!2976 = distinct !DILexicalBlock(scope: !2977, file: !3, line: 421, column: 9)
!2977 = distinct !DILexicalBlock(scope: !2915, file: !3, line: 421, column: 9)
!2978 = !DILocation(line: 423, column: 45, scope: !2973)
!2979 = !DILocation(line: 423, column: 21, scope: !2974)
!2980 = !DILocation(line: 424, column: 42, scope: !2973)
!2981 = !DILocation(line: 424, column: 21, scope: !2973)
!2982 = !DILocation(line: 422, column: 13, scope: !2975)
!2983 = !DILocation(line: 422, column: 43, scope: !2974)
!2984 = !DILocation(line: 422, column: 27, scope: !2974)
!2985 = distinct !{!2985, !2982, !2986, !485}
!2986 = !DILocation(line: 424, column: 58, scope: !2975)
!2987 = !DILocation(line: 0, scope: !2915)
!2988 = distinct !DISubprogram(name: "x264_pps_write", scope: !3, file: !3, line: 429, type: !2989, scopeLine: 430, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !96, retainedNodes: !2991)
!2989 = !DISubroutineType(types: !2990)
!2990 = !{null, !6, !2825}
!2991 = !{!2992, !2993}
!2992 = !DILocalVariable(name: "s", arg: 1, scope: !2988, file: !3, line: 429, type: !6)
!2993 = !DILocalVariable(name: "pps", arg: 2, scope: !2988, file: !3, line: 429, type: !2825)
!2994 = !DILocation(line: 0, scope: !2988)
!2995 = !DILocation(line: 431, column: 26, scope: !2988)
!2996 = !DILocation(line: 0, scope: !864, inlinedAt: !2997)
!2997 = distinct !DILocation(line: 431, column: 5, scope: !2988)
!2998 = !DILocation(line: 206, column: 15, scope: !864, inlinedAt: !2997)
!2999 = !DILocation(line: 207, column: 13, scope: !877, inlinedAt: !2997)
!3000 = !DILocation(line: 207, column: 9, scope: !864, inlinedAt: !2997)
!3001 = !DILocation(line: 212, column: 13, scope: !880, inlinedAt: !2997)
!3002 = !DILocation(line: 212, column: 9, scope: !864, inlinedAt: !2997)
!3003 = !DILocation(line: 217, column: 13, scope: !864, inlinedAt: !2997)
!3004 = !DILocation(line: 217, column: 10, scope: !864, inlinedAt: !2997)
!3005 = !DILocation(line: 218, column: 22, scope: !864, inlinedAt: !2997)
!3006 = !DILocation(line: 0, scope: !726, inlinedAt: !3007)
!3007 = distinct !DILocation(line: 218, column: 5, scope: !864, inlinedAt: !2997)
!3008 = !DILocation(line: 90, column: 27, scope: !735, inlinedAt: !3007)
!3009 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !3007)
!3010 = !DILocation(line: 91, column: 12, scope: !735, inlinedAt: !3007)
!3011 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !3007)
!3012 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !3007)
!3013 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !3007)
!3014 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !3007)
!3015 = !DILocation(line: 0, scope: !752, inlinedAt: !3016)
!3016 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !3007)
!3017 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !3016)
!3018 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !3007)
!3019 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !3007)
!3020 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !3007)
!3021 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !3007)
!3022 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !3007)
!3023 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !3007)
!3024 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !3025)
!3025 = distinct !DILocation(line: 219, column: 5, scope: !864, inlinedAt: !2997)
!3026 = !DILocation(line: 219, column: 27, scope: !864, inlinedAt: !2997)
!3027 = !DILocation(line: 0, scope: !726, inlinedAt: !3025)
!3028 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !3025)
!3029 = !DILocation(line: 90, column: 50, scope: !735, inlinedAt: !3025)
!3030 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !3025)
!3031 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !3025)
!3032 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !3025)
!3033 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !3025)
!3034 = !DILocation(line: 0, scope: !752, inlinedAt: !3035)
!3035 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !3025)
!3036 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !3035)
!3037 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !3025)
!3038 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !3025)
!3039 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !3025)
!3040 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !3025)
!3041 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !3025)
!3042 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !3025)
!3043 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !3044)
!3044 = distinct !DILocation(line: 218, column: 5, scope: !864, inlinedAt: !3045)
!3045 = distinct !DILocation(line: 432, column: 5, scope: !2988)
!3046 = !DILocation(line: 432, column: 26, scope: !2988)
!3047 = !DILocation(line: 0, scope: !864, inlinedAt: !3045)
!3048 = !DILocation(line: 206, column: 15, scope: !864, inlinedAt: !3045)
!3049 = !DILocation(line: 207, column: 13, scope: !877, inlinedAt: !3045)
!3050 = !DILocation(line: 207, column: 9, scope: !864, inlinedAt: !3045)
!3051 = !DILocation(line: 212, column: 13, scope: !880, inlinedAt: !3045)
!3052 = !DILocation(line: 212, column: 9, scope: !864, inlinedAt: !3045)
!3053 = !DILocation(line: 217, column: 13, scope: !864, inlinedAt: !3045)
!3054 = !DILocation(line: 217, column: 10, scope: !864, inlinedAt: !3045)
!3055 = !DILocation(line: 218, column: 22, scope: !864, inlinedAt: !3045)
!3056 = !DILocation(line: 0, scope: !726, inlinedAt: !3044)
!3057 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !3044)
!3058 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !3044)
!3059 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !3044)
!3060 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !3044)
!3061 = !DILocation(line: 0, scope: !752, inlinedAt: !3062)
!3062 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !3044)
!3063 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !3062)
!3064 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !3044)
!3065 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !3044)
!3066 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !3044)
!3067 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !3044)
!3068 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !3044)
!3069 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !3044)
!3070 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !3071)
!3071 = distinct !DILocation(line: 219, column: 5, scope: !864, inlinedAt: !3045)
!3072 = !DILocation(line: 219, column: 27, scope: !864, inlinedAt: !3045)
!3073 = !DILocation(line: 0, scope: !726, inlinedAt: !3071)
!3074 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !3071)
!3075 = !DILocation(line: 90, column: 50, scope: !735, inlinedAt: !3071)
!3076 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !3071)
!3077 = !DILocation(line: 90, column: 21, scope: !735, inlinedAt: !3071)
!3078 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !3071)
!3079 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !3071)
!3080 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !3071)
!3081 = !DILocation(line: 0, scope: !752, inlinedAt: !3082)
!3082 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !3071)
!3083 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !3082)
!3084 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !3071)
!3085 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !3071)
!3086 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !3071)
!3087 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !3071)
!3088 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !3071)
!3089 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !3071)
!3090 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !3091)
!3091 = distinct !DILocation(line: 434, column: 5, scope: !2988)
!3092 = !DILocation(line: 434, column: 26, scope: !2988)
!3093 = !DILocation(line: 0, scope: !726, inlinedAt: !3091)
!3094 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !3091)
!3095 = !DILocation(line: 90, column: 50, scope: !735, inlinedAt: !3091)
!3096 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !3091)
!3097 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !3091)
!3098 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !3091)
!3099 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !3091)
!3100 = !DILocation(line: 0, scope: !752, inlinedAt: !3101)
!3101 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !3091)
!3102 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !3101)
!3103 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !3091)
!3104 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !3091)
!3105 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !3091)
!3106 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !3091)
!3107 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !3091)
!3108 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !3091)
!3109 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !3110)
!3110 = distinct !DILocation(line: 435, column: 5, scope: !2988)
!3111 = !DILocation(line: 435, column: 26, scope: !2988)
!3112 = !{!2858, !419, i64 12}
!3113 = !DILocation(line: 0, scope: !726, inlinedAt: !3110)
!3114 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !3110)
!3115 = !DILocation(line: 90, column: 50, scope: !735, inlinedAt: !3110)
!3116 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !3110)
!3117 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !3110)
!3118 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !3110)
!3119 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !3110)
!3120 = !DILocation(line: 0, scope: !752, inlinedAt: !3121)
!3121 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !3110)
!3122 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !3121)
!3123 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !3110)
!3124 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !3110)
!3125 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !3110)
!3126 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !3110)
!3127 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !3110)
!3128 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !3110)
!3129 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !3130)
!3130 = distinct !DILocation(line: 218, column: 5, scope: !864, inlinedAt: !3131)
!3131 = distinct !DILocation(line: 436, column: 5, scope: !2988)
!3132 = !DILocation(line: 436, column: 26, scope: !2988)
!3133 = !{!2858, !419, i64 16}
!3134 = !DILocation(line: 0, scope: !864, inlinedAt: !3131)
!3135 = !DILocation(line: 207, column: 13, scope: !877, inlinedAt: !3131)
!3136 = !DILocation(line: 207, column: 9, scope: !864, inlinedAt: !3131)
!3137 = !DILocation(line: 212, column: 13, scope: !880, inlinedAt: !3131)
!3138 = !DILocation(line: 212, column: 9, scope: !864, inlinedAt: !3131)
!3139 = !DILocation(line: 217, column: 13, scope: !864, inlinedAt: !3131)
!3140 = !DILocation(line: 217, column: 10, scope: !864, inlinedAt: !3131)
!3141 = !DILocation(line: 218, column: 22, scope: !864, inlinedAt: !3131)
!3142 = !DILocation(line: 0, scope: !726, inlinedAt: !3130)
!3143 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !3130)
!3144 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !3130)
!3145 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !3130)
!3146 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !3130)
!3147 = !DILocation(line: 0, scope: !752, inlinedAt: !3148)
!3148 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !3130)
!3149 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !3148)
!3150 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !3130)
!3151 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !3130)
!3152 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !3130)
!3153 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !3130)
!3154 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !3130)
!3155 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !3130)
!3156 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !3157)
!3157 = distinct !DILocation(line: 219, column: 5, scope: !864, inlinedAt: !3131)
!3158 = !DILocation(line: 219, column: 27, scope: !864, inlinedAt: !3131)
!3159 = !DILocation(line: 0, scope: !726, inlinedAt: !3157)
!3160 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !3157)
!3161 = !DILocation(line: 90, column: 50, scope: !735, inlinedAt: !3157)
!3162 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !3157)
!3163 = !DILocation(line: 90, column: 21, scope: !735, inlinedAt: !3157)
!3164 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !3157)
!3165 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !3157)
!3166 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !3157)
!3167 = !DILocation(line: 0, scope: !752, inlinedAt: !3168)
!3168 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !3157)
!3169 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !3168)
!3170 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !3157)
!3171 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !3157)
!3172 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !3157)
!3173 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !3157)
!3174 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !3157)
!3175 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !3157)
!3176 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !3177)
!3177 = distinct !DILocation(line: 218, column: 5, scope: !864, inlinedAt: !3178)
!3178 = distinct !DILocation(line: 438, column: 5, scope: !2988)
!3179 = !DILocation(line: 438, column: 26, scope: !2988)
!3180 = !{!2858, !419, i64 20}
!3181 = !DILocation(line: 0, scope: !864, inlinedAt: !3178)
!3182 = !DILocation(line: 207, column: 13, scope: !877, inlinedAt: !3178)
!3183 = !DILocation(line: 207, column: 9, scope: !864, inlinedAt: !3178)
!3184 = !DILocation(line: 212, column: 13, scope: !880, inlinedAt: !3178)
!3185 = !DILocation(line: 212, column: 9, scope: !864, inlinedAt: !3178)
!3186 = !DILocation(line: 217, column: 13, scope: !864, inlinedAt: !3178)
!3187 = !DILocation(line: 217, column: 10, scope: !864, inlinedAt: !3178)
!3188 = !DILocation(line: 218, column: 22, scope: !864, inlinedAt: !3178)
!3189 = !DILocation(line: 0, scope: !726, inlinedAt: !3177)
!3190 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !3177)
!3191 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !3177)
!3192 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !3177)
!3193 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !3177)
!3194 = !DILocation(line: 0, scope: !752, inlinedAt: !3195)
!3195 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !3177)
!3196 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !3195)
!3197 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !3177)
!3198 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !3177)
!3199 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !3177)
!3200 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !3177)
!3201 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !3177)
!3202 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !3177)
!3203 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !3204)
!3204 = distinct !DILocation(line: 219, column: 5, scope: !864, inlinedAt: !3178)
!3205 = !DILocation(line: 219, column: 27, scope: !864, inlinedAt: !3178)
!3206 = !DILocation(line: 0, scope: !726, inlinedAt: !3204)
!3207 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !3204)
!3208 = !DILocation(line: 90, column: 50, scope: !735, inlinedAt: !3204)
!3209 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !3204)
!3210 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !3204)
!3211 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !3204)
!3212 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !3204)
!3213 = !DILocation(line: 0, scope: !752, inlinedAt: !3214)
!3214 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !3204)
!3215 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !3214)
!3216 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !3204)
!3217 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !3204)
!3218 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !3204)
!3219 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !3204)
!3220 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !3204)
!3221 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !3204)
!3222 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !3223)
!3223 = distinct !DILocation(line: 218, column: 5, scope: !864, inlinedAt: !3224)
!3224 = distinct !DILocation(line: 439, column: 5, scope: !2988)
!3225 = !DILocation(line: 439, column: 26, scope: !2988)
!3226 = !{!2858, !419, i64 24}
!3227 = !DILocation(line: 0, scope: !864, inlinedAt: !3224)
!3228 = !DILocation(line: 207, column: 13, scope: !877, inlinedAt: !3224)
!3229 = !DILocation(line: 207, column: 9, scope: !864, inlinedAt: !3224)
!3230 = !DILocation(line: 212, column: 13, scope: !880, inlinedAt: !3224)
!3231 = !DILocation(line: 212, column: 9, scope: !864, inlinedAt: !3224)
!3232 = !DILocation(line: 217, column: 13, scope: !864, inlinedAt: !3224)
!3233 = !DILocation(line: 217, column: 10, scope: !864, inlinedAt: !3224)
!3234 = !DILocation(line: 218, column: 22, scope: !864, inlinedAt: !3224)
!3235 = !DILocation(line: 0, scope: !726, inlinedAt: !3223)
!3236 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !3223)
!3237 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !3223)
!3238 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !3223)
!3239 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !3223)
!3240 = !DILocation(line: 0, scope: !752, inlinedAt: !3241)
!3241 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !3223)
!3242 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !3241)
!3243 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !3223)
!3244 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !3223)
!3245 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !3223)
!3246 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !3223)
!3247 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !3223)
!3248 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !3223)
!3249 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !3250)
!3250 = distinct !DILocation(line: 219, column: 5, scope: !864, inlinedAt: !3224)
!3251 = !DILocation(line: 219, column: 27, scope: !864, inlinedAt: !3224)
!3252 = !DILocation(line: 0, scope: !726, inlinedAt: !3250)
!3253 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !3250)
!3254 = !DILocation(line: 90, column: 50, scope: !735, inlinedAt: !3250)
!3255 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !3250)
!3256 = !DILocation(line: 90, column: 21, scope: !735, inlinedAt: !3250)
!3257 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !3250)
!3258 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !3250)
!3259 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !3250)
!3260 = !DILocation(line: 0, scope: !752, inlinedAt: !3261)
!3261 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !3250)
!3262 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !3261)
!3263 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !3250)
!3264 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !3250)
!3265 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !3250)
!3266 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !3250)
!3267 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !3250)
!3268 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !3250)
!3269 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !3270)
!3270 = distinct !DILocation(line: 440, column: 5, scope: !2988)
!3271 = !DILocation(line: 440, column: 26, scope: !2988)
!3272 = !DILocation(line: 0, scope: !726, inlinedAt: !3270)
!3273 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !3270)
!3274 = !DILocation(line: 90, column: 50, scope: !735, inlinedAt: !3270)
!3275 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !3270)
!3276 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !3270)
!3277 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !3270)
!3278 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !3270)
!3279 = !DILocation(line: 0, scope: !752, inlinedAt: !3280)
!3280 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !3270)
!3281 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !3280)
!3282 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !3270)
!3283 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !3270)
!3284 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !3270)
!3285 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !3270)
!3286 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !3270)
!3287 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !3270)
!3288 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !3289)
!3289 = distinct !DILocation(line: 441, column: 5, scope: !2988)
!3290 = !DILocation(line: 441, column: 26, scope: !2988)
!3291 = !DILocation(line: 0, scope: !726, inlinedAt: !3289)
!3292 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !3289)
!3293 = !DILocation(line: 90, column: 50, scope: !735, inlinedAt: !3289)
!3294 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !3289)
!3295 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !3289)
!3296 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !3289)
!3297 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !3289)
!3298 = !DILocation(line: 0, scope: !752, inlinedAt: !3299)
!3299 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !3289)
!3300 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !3299)
!3301 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !3289)
!3302 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !3289)
!3303 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !3289)
!3304 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !3289)
!3305 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !3289)
!3306 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !3289)
!3307 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !3308)
!3308 = distinct !DILocation(line: 238, column: 5, scope: !1224, inlinedAt: !3309)
!3309 = distinct !DILocation(line: 443, column: 5, scope: !2988)
!3310 = !DILocation(line: 443, column: 26, scope: !2988)
!3311 = !DILocation(line: 443, column: 40, scope: !2988)
!3312 = !DILocation(line: 0, scope: !1224, inlinedAt: !3309)
!3313 = !DILocation(line: 231, column: 25, scope: !1224, inlinedAt: !3309)
!3314 = !DILocation(line: 231, column: 21, scope: !1224, inlinedAt: !3309)
!3315 = !DILocation(line: 232, column: 13, scope: !1239, inlinedAt: !3309)
!3316 = !DILocation(line: 232, column: 9, scope: !1224, inlinedAt: !3309)
!3317 = !DILocation(line: 237, column: 13, scope: !1224, inlinedAt: !3309)
!3318 = !DILocation(line: 237, column: 10, scope: !1224, inlinedAt: !3309)
!3319 = !DILocation(line: 0, scope: !726, inlinedAt: !3308)
!3320 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !3308)
!3321 = !DILocation(line: 90, column: 50, scope: !735, inlinedAt: !3308)
!3322 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !3308)
!3323 = !DILocation(line: 90, column: 21, scope: !735, inlinedAt: !3308)
!3324 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !3308)
!3325 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !3308)
!3326 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !3308)
!3327 = !DILocation(line: 0, scope: !752, inlinedAt: !3328)
!3328 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !3308)
!3329 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !3328)
!3330 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !3308)
!3331 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !3308)
!3332 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !3308)
!3333 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !3308)
!3334 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !3308)
!3335 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !3308)
!3336 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !3337)
!3337 = distinct !DILocation(line: 238, column: 5, scope: !1224, inlinedAt: !3338)
!3338 = distinct !DILocation(line: 444, column: 5, scope: !2988)
!3339 = !DILocation(line: 444, column: 26, scope: !2988)
!3340 = !DILocation(line: 444, column: 40, scope: !2988)
!3341 = !DILocation(line: 0, scope: !1224, inlinedAt: !3338)
!3342 = !DILocation(line: 231, column: 25, scope: !1224, inlinedAt: !3338)
!3343 = !DILocation(line: 231, column: 21, scope: !1224, inlinedAt: !3338)
!3344 = !DILocation(line: 232, column: 13, scope: !1239, inlinedAt: !3338)
!3345 = !DILocation(line: 232, column: 9, scope: !1224, inlinedAt: !3338)
!3346 = !DILocation(line: 237, column: 13, scope: !1224, inlinedAt: !3338)
!3347 = !DILocation(line: 237, column: 10, scope: !1224, inlinedAt: !3338)
!3348 = !DILocation(line: 0, scope: !726, inlinedAt: !3337)
!3349 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !3337)
!3350 = !DILocation(line: 90, column: 50, scope: !735, inlinedAt: !3337)
!3351 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !3337)
!3352 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !3337)
!3353 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !3337)
!3354 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !3337)
!3355 = !DILocation(line: 0, scope: !752, inlinedAt: !3356)
!3356 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !3337)
!3357 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !3356)
!3358 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !3337)
!3359 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !3337)
!3360 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !3337)
!3361 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !3337)
!3362 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !3337)
!3363 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !3337)
!3364 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !3365)
!3365 = distinct !DILocation(line: 238, column: 5, scope: !1224, inlinedAt: !3366)
!3366 = distinct !DILocation(line: 445, column: 5, scope: !2988)
!3367 = !DILocation(line: 445, column: 26, scope: !2988)
!3368 = !DILocation(line: 0, scope: !1224, inlinedAt: !3366)
!3369 = !DILocation(line: 231, column: 25, scope: !1224, inlinedAt: !3366)
!3370 = !DILocation(line: 231, column: 21, scope: !1224, inlinedAt: !3366)
!3371 = !DILocation(line: 232, column: 13, scope: !1239, inlinedAt: !3366)
!3372 = !DILocation(line: 232, column: 9, scope: !1224, inlinedAt: !3366)
!3373 = !DILocation(line: 237, column: 13, scope: !1224, inlinedAt: !3366)
!3374 = !DILocation(line: 237, column: 10, scope: !1224, inlinedAt: !3366)
!3375 = !DILocation(line: 0, scope: !726, inlinedAt: !3365)
!3376 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !3365)
!3377 = !DILocation(line: 90, column: 50, scope: !735, inlinedAt: !3365)
!3378 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !3365)
!3379 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !3365)
!3380 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !3365)
!3381 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !3365)
!3382 = !DILocation(line: 0, scope: !752, inlinedAt: !3383)
!3383 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !3365)
!3384 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !3383)
!3385 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !3365)
!3386 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !3365)
!3387 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !3365)
!3388 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !3365)
!3389 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !3365)
!3390 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !3365)
!3391 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !3392)
!3392 = distinct !DILocation(line: 447, column: 5, scope: !2988)
!3393 = !DILocation(line: 447, column: 26, scope: !2988)
!3394 = !DILocation(line: 0, scope: !726, inlinedAt: !3392)
!3395 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !3392)
!3396 = !DILocation(line: 90, column: 50, scope: !735, inlinedAt: !3392)
!3397 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !3392)
!3398 = !DILocation(line: 90, column: 21, scope: !735, inlinedAt: !3392)
!3399 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !3392)
!3400 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !3392)
!3401 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !3392)
!3402 = !DILocation(line: 0, scope: !752, inlinedAt: !3403)
!3403 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !3392)
!3404 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !3403)
!3405 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !3392)
!3406 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !3392)
!3407 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !3392)
!3408 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !3392)
!3409 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !3392)
!3410 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !3392)
!3411 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !3412)
!3412 = distinct !DILocation(line: 448, column: 5, scope: !2988)
!3413 = !DILocation(line: 448, column: 26, scope: !2988)
!3414 = !DILocation(line: 0, scope: !726, inlinedAt: !3412)
!3415 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !3412)
!3416 = !DILocation(line: 90, column: 50, scope: !735, inlinedAt: !3412)
!3417 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !3412)
!3418 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !3412)
!3419 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !3412)
!3420 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !3412)
!3421 = !DILocation(line: 0, scope: !752, inlinedAt: !3422)
!3422 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !3412)
!3423 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !3422)
!3424 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !3412)
!3425 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !3412)
!3426 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !3412)
!3427 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !3412)
!3428 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !3412)
!3429 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !3412)
!3430 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !3431)
!3431 = distinct !DILocation(line: 449, column: 5, scope: !2988)
!3432 = !DILocation(line: 449, column: 26, scope: !2988)
!3433 = !DILocation(line: 0, scope: !726, inlinedAt: !3431)
!3434 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !3431)
!3435 = !DILocation(line: 90, column: 50, scope: !735, inlinedAt: !3431)
!3436 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !3431)
!3437 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !3431)
!3438 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !3431)
!3439 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !3431)
!3440 = !DILocation(line: 0, scope: !752, inlinedAt: !3441)
!3441 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !3431)
!3442 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !3441)
!3443 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !3431)
!3444 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !3431)
!3445 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !3431)
!3446 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !3431)
!3447 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !3431)
!3448 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !3431)
!3449 = !DILocation(line: 451, column: 14, scope: !3450)
!3450 = distinct !DILexicalBlock(scope: !2988, file: !3, line: 451, column: 9)
!3451 = !DILocation(line: 451, column: 9, scope: !3450)
!3452 = !DILocation(line: 451, column: 35, scope: !3450)
!3453 = !DILocation(line: 451, column: 43, scope: !3450)
!3454 = !DILocation(line: 451, column: 56, scope: !3450)
!3455 = !DILocation(line: 451, column: 9, scope: !2988)
!3456 = !DILocation(line: 0, scope: !726, inlinedAt: !3457)
!3457 = distinct !DILocation(line: 453, column: 9, scope: !3458)
!3458 = distinct !DILexicalBlock(scope: !3450, file: !3, line: 452, column: 5)
!3459 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !3457)
!3460 = !DILocation(line: 90, column: 50, scope: !735, inlinedAt: !3457)
!3461 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !3457)
!3462 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !3457)
!3463 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !3457)
!3464 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !3457)
!3465 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !3457)
!3466 = !DILocation(line: 0, scope: !752, inlinedAt: !3467)
!3467 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !3457)
!3468 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !3467)
!3469 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !3457)
!3470 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !3457)
!3471 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !3457)
!3472 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !3457)
!3473 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !3457)
!3474 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !3457)
!3475 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !3476)
!3476 = distinct !DILocation(line: 454, column: 9, scope: !3458)
!3477 = !DILocation(line: 454, column: 31, scope: !3458)
!3478 = !DILocation(line: 454, column: 44, scope: !3458)
!3479 = !DILocation(line: 0, scope: !726, inlinedAt: !3476)
!3480 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !3476)
!3481 = !DILocation(line: 90, column: 50, scope: !735, inlinedAt: !3476)
!3482 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !3476)
!3483 = !DILocation(line: 90, column: 21, scope: !735, inlinedAt: !3476)
!3484 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !3476)
!3485 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !3476)
!3486 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !3476)
!3487 = !DILocation(line: 0, scope: !752, inlinedAt: !3488)
!3488 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !3476)
!3489 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !3488)
!3490 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !3476)
!3491 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !3476)
!3492 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !3476)
!3493 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !3476)
!3494 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !3476)
!3495 = !DILocation(line: 455, column: 18, scope: !3496)
!3496 = distinct !DILexicalBlock(scope: !3458, file: !3, line: 455, column: 13)
!3497 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !3476)
!3498 = !DILocation(line: 455, column: 31, scope: !3496)
!3499 = !DILocation(line: 455, column: 13, scope: !3458)
!3500 = !DILocation(line: 457, column: 13, scope: !3501)
!3501 = distinct !DILexicalBlock(scope: !3496, file: !3, line: 456, column: 9)
!3502 = !DILocation(line: 458, column: 13, scope: !3501)
!3503 = !DILocation(line: 0, scope: !726, inlinedAt: !3504)
!3504 = distinct !DILocation(line: 459, column: 13, scope: !3501)
!3505 = !DILocation(line: 90, column: 27, scope: !735, inlinedAt: !3504)
!3506 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !3504)
!3507 = !DILocation(line: 90, column: 21, scope: !735, inlinedAt: !3504)
!3508 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !3504)
!3509 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !3504)
!3510 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !3504)
!3511 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !3504)
!3512 = !DILocation(line: 0, scope: !752, inlinedAt: !3513)
!3513 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !3504)
!3514 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !3513)
!3515 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !3504)
!3516 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !3504)
!3517 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !3504)
!3518 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !3504)
!3519 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !3504)
!3520 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !3504)
!3521 = !DILocation(line: 460, column: 13, scope: !3501)
!3522 = !DILocation(line: 461, column: 13, scope: !3501)
!3523 = !DILocation(line: 0, scope: !726, inlinedAt: !3524)
!3524 = distinct !DILocation(line: 462, column: 13, scope: !3501)
!3525 = !DILocation(line: 90, column: 27, scope: !735, inlinedAt: !3524)
!3526 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !3524)
!3527 = !DILocation(line: 90, column: 21, scope: !735, inlinedAt: !3524)
!3528 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !3524)
!3529 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !3524)
!3530 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !3524)
!3531 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !3524)
!3532 = !DILocation(line: 0, scope: !752, inlinedAt: !3533)
!3533 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !3524)
!3534 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !3533)
!3535 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !3524)
!3536 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !3524)
!3537 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !3524)
!3538 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !3524)
!3539 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !3524)
!3540 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !3524)
!3541 = !DILocation(line: 463, column: 22, scope: !3542)
!3542 = distinct !DILexicalBlock(scope: !3501, file: !3, line: 463, column: 17)
!3543 = !DILocation(line: 463, column: 17, scope: !3542)
!3544 = !DILocation(line: 463, column: 17, scope: !3501)
!3545 = !DILocation(line: 465, column: 17, scope: !3546)
!3546 = distinct !DILexicalBlock(scope: !3542, file: !3, line: 464, column: 13)
!3547 = !DILocation(line: 466, column: 17, scope: !3546)
!3548 = !DILocation(line: 90, column: 27, scope: !735, inlinedAt: !3549)
!3549 = distinct !DILocation(line: 238, column: 5, scope: !1224, inlinedAt: !3550)
!3550 = distinct !DILocation(line: 469, column: 9, scope: !3458)
!3551 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !3549)
!3552 = !DILocation(line: 467, column: 13, scope: !3546)
!3553 = !DILocation(line: 469, column: 30, scope: !3458)
!3554 = !DILocation(line: 0, scope: !1224, inlinedAt: !3550)
!3555 = !DILocation(line: 231, column: 25, scope: !1224, inlinedAt: !3550)
!3556 = !DILocation(line: 231, column: 21, scope: !1224, inlinedAt: !3550)
!3557 = !DILocation(line: 232, column: 13, scope: !1239, inlinedAt: !3550)
!3558 = !DILocation(line: 232, column: 9, scope: !1224, inlinedAt: !3550)
!3559 = !DILocation(line: 237, column: 13, scope: !1224, inlinedAt: !3550)
!3560 = !DILocation(line: 237, column: 10, scope: !1224, inlinedAt: !3550)
!3561 = !DILocation(line: 0, scope: !726, inlinedAt: !3549)
!3562 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !3549)
!3563 = !DILocation(line: 90, column: 50, scope: !735, inlinedAt: !3549)
!3564 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !3549)
!3565 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !3549)
!3566 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !3549)
!3567 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !3549)
!3568 = !DILocation(line: 0, scope: !752, inlinedAt: !3569)
!3569 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !3549)
!3570 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !3569)
!3571 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !3549)
!3572 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !3549)
!3573 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !3549)
!3574 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !3549)
!3575 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !3549)
!3576 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !3549)
!3577 = !DILocation(line: 143, column: 14, scope: !1885, inlinedAt: !3578)
!3578 = distinct !DILocation(line: 251, column: 5, scope: !2784, inlinedAt: !3579)
!3579 = distinct !DILocation(line: 472, column: 5, scope: !2988)
!3580 = !DILocation(line: 141, column: 17, scope: !1885, inlinedAt: !3578)
!3581 = !DILocation(line: 0, scope: !2784, inlinedAt: !3579)
!3582 = !DILocation(line: 0, scope: !1885, inlinedAt: !3578)
!3583 = !DILocation(line: 142, column: 17, scope: !1885, inlinedAt: !3578)
!3584 = !DILocation(line: 144, column: 19, scope: !1897, inlinedAt: !3578)
!3585 = !DILocation(line: 144, column: 9, scope: !1885, inlinedAt: !3578)
!3586 = !DILocation(line: 154, column: 42, scope: !1900, inlinedAt: !3578)
!3587 = !DILocation(line: 0, scope: !1902, inlinedAt: !3588)
!3588 = distinct !DILocation(line: 154, column: 28, scope: !1900, inlinedAt: !3578)
!3589 = !DILocation(line: 150, column: 5, scope: !1902, inlinedAt: !3588)
!3590 = !DILocation(line: 154, column: 24, scope: !1900, inlinedAt: !3578)
!3591 = !DILocation(line: 154, column: 26, scope: !1900, inlinedAt: !3578)
!3592 = !DILocation(line: 156, column: 14, scope: !1900, inlinedAt: !3578)
!3593 = !DILocation(line: 158, column: 5, scope: !1900, inlinedAt: !3578)
!3594 = !DILocation(line: 80, column: 54, scope: !2805, inlinedAt: !3595)
!3595 = distinct !DILocation(line: 252, column: 5, scope: !2784, inlinedAt: !3579)
!3596 = !DILocation(line: 0, scope: !2805, inlinedAt: !3595)
!3597 = !DILocation(line: 80, column: 48, scope: !2805, inlinedAt: !3595)
!3598 = !DILocation(line: 0, scope: !752, inlinedAt: !3599)
!3599 = distinct !DILocation(line: 80, column: 24, scope: !2805, inlinedAt: !3595)
!3600 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !3599)
!3601 = !DILocation(line: 80, column: 20, scope: !2805, inlinedAt: !3595)
!3602 = !DILocation(line: 80, column: 22, scope: !2805, inlinedAt: !3595)
!3603 = !DILocation(line: 82, column: 35, scope: !2805, inlinedAt: !3595)
!3604 = !DILocation(line: 82, column: 23, scope: !2805, inlinedAt: !3595)
!3605 = !DILocation(line: 82, column: 10, scope: !2805, inlinedAt: !3595)
!3606 = !DILocation(line: 83, column: 15, scope: !2805, inlinedAt: !3595)
!3607 = !DILocation(line: 473, column: 1, scope: !2988)
!3608 = distinct !DISubprogram(name: "scaling_list_write", scope: !3, file: !3, line: 42, type: !3609, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !96, retainedNodes: !3611)
!3609 = !DISubroutineType(types: !3610)
!3610 = !{null, !6, !2825, !25}
!3611 = !{!3612, !3613, !3614, !3615, !3617, !3618, !3619, !3620, !3624}
!3612 = !DILocalVariable(name: "s", arg: 1, scope: !3608, file: !3, line: 42, type: !6)
!3613 = !DILocalVariable(name: "pps", arg: 2, scope: !3608, file: !3, line: 42, type: !2825)
!3614 = !DILocalVariable(name: "idx", arg: 3, scope: !3608, file: !3, line: 42, type: !25)
!3615 = !DILocalVariable(name: "len", scope: !3608, file: !3, line: 44, type: !3616)
!3616 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!3617 = !DILocalVariable(name: "zigzag", scope: !3608, file: !3, line: 45, type: !212)
!3618 = !DILocalVariable(name: "list", scope: !3608, file: !3, line: 46, type: !212)
!3619 = !DILocalVariable(name: "def_list", scope: !3608, file: !3, line: 47, type: !212)
!3620 = !DILocalVariable(name: "j", scope: !3621, file: !3, line: 59, type: !25)
!3621 = distinct !DILexicalBlock(scope: !3622, file: !3, line: 58, column: 5)
!3622 = distinct !DILexicalBlock(scope: !3623, file: !3, line: 52, column: 14)
!3623 = distinct !DILexicalBlock(scope: !3608, file: !3, line: 50, column: 9)
!3624 = !DILocalVariable(name: "run", scope: !3621, file: !3, line: 59, type: !25)
!3625 = !DILocation(line: 0, scope: !3608)
!3626 = !DILocation(line: 44, column: 24, scope: !3608)
!3627 = !DILocation(line: 44, column: 21, scope: !3608)
!3628 = !DILocation(line: 45, column: 29, scope: !3608)
!3629 = !DILocation(line: 46, column: 27, scope: !3608)
!3630 = !DILocation(line: 47, column: 31, scope: !3608)
!3631 = !DILocation(line: 46, column: 32, scope: !3608)
!3632 = !DILocation(line: 48, column: 48, scope: !3608)
!3633 = !DILocation(line: 48, column: 31, scope: !3608)
!3634 = !DILocation(line: 49, column: 31, scope: !3608)
!3635 = !DILocation(line: 50, column: 10, scope: !3623)
!3636 = !DILocation(line: 50, column: 9, scope: !3608)
!3637 = !DILocation(line: 0, scope: !726, inlinedAt: !3638)
!3638 = distinct !DILocation(line: 51, column: 9, scope: !3623)
!3639 = !DILocation(line: 90, column: 27, scope: !735, inlinedAt: !3638)
!3640 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !3638)
!3641 = !DILocation(line: 90, column: 21, scope: !735, inlinedAt: !3638)
!3642 = !DILocation(line: 91, column: 12, scope: !735, inlinedAt: !3638)
!3643 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !3638)
!3644 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !3638)
!3645 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !3638)
!3646 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !3638)
!3647 = !DILocation(line: 0, scope: !752, inlinedAt: !3648)
!3648 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !3638)
!3649 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !3648)
!3650 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !3638)
!3651 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !3638)
!3652 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !3638)
!3653 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !3638)
!3654 = !DILocation(line: 52, column: 29, scope: !3622)
!3655 = !DILocation(line: 52, column: 15, scope: !3622)
!3656 = !DILocation(line: 0, scope: !726, inlinedAt: !3657)
!3657 = distinct !DILocation(line: 54, column: 9, scope: !3658)
!3658 = distinct !DILexicalBlock(scope: !3622, file: !3, line: 53, column: 5)
!3659 = !DILocation(line: 0, scope: !726, inlinedAt: !3660)
!3660 = distinct !DILocation(line: 60, column: 9, scope: !3621)
!3661 = !DILocation(line: 0, scope: !3622)
!3662 = !DILocation(line: 52, column: 14, scope: !3623)
!3663 = !DILocation(line: 91, column: 12, scope: !735, inlinedAt: !3657)
!3664 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !3657)
!3665 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !3657)
!3666 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !3657)
!3667 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !3657)
!3668 = !DILocation(line: 0, scope: !752, inlinedAt: !3669)
!3669 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !3657)
!3670 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !3669)
!3671 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !3657)
!3672 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !3657)
!3673 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !3657)
!3674 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !3657)
!3675 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !3657)
!3676 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !3657)
!3677 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !3678)
!3678 = distinct !DILocation(line: 238, column: 5, scope: !1224, inlinedAt: !3679)
!3679 = distinct !DILocation(line: 55, column: 9, scope: !3658)
!3680 = !DILocation(line: 0, scope: !1224, inlinedAt: !3679)
!3681 = !DILocation(line: 0, scope: !726, inlinedAt: !3678)
!3682 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !3678)
!3683 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !3678)
!3684 = !DILocation(line: 90, column: 21, scope: !735, inlinedAt: !3678)
!3685 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !3678)
!3686 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !3678)
!3687 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !3678)
!3688 = !DILocation(line: 0, scope: !752, inlinedAt: !3689)
!3689 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !3678)
!3690 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !3689)
!3691 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !3678)
!3692 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !3678)
!3693 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !3678)
!3694 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !3678)
!3695 = !DILocation(line: 90, column: 21, scope: !735, inlinedAt: !3660)
!3696 = !DILocation(line: 91, column: 12, scope: !735, inlinedAt: !3660)
!3697 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !3660)
!3698 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !3660)
!3699 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !3660)
!3700 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !3660)
!3701 = !DILocation(line: 0, scope: !752, inlinedAt: !3702)
!3702 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !3660)
!3703 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !3702)
!3704 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !3660)
!3705 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !3660)
!3706 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !3660)
!3707 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !3660)
!3708 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !3660)
!3709 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !3660)
!3710 = !DILocation(line: 0, scope: !3621)
!3711 = !DILocation(line: 63, column: 14, scope: !3712)
!3712 = distinct !DILexicalBlock(scope: !3621, file: !3, line: 63, column: 9)
!3713 = !DILocation(line: 63, scope: !3712)
!3714 = !DILocation(line: 63, column: 29, scope: !3715)
!3715 = distinct !DILexicalBlock(scope: !3712, file: !3, line: 63, column: 9)
!3716 = !DILocation(line: 63, column: 9, scope: !3712)
!3717 = !DILocation(line: 64, column: 32, scope: !3718)
!3718 = distinct !DILexicalBlock(scope: !3715, file: !3, line: 64, column: 17)
!3719 = !DILocation(line: 64, column: 22, scope: !3718)
!3720 = !DILocation(line: 64, column: 17, scope: !3718)
!3721 = !DILocation(line: 64, column: 45, scope: !3718)
!3722 = !DILocation(line: 64, column: 40, scope: !3718)
!3723 = !DILocation(line: 64, column: 37, scope: !3718)
!3724 = !DILocation(line: 64, column: 17, scope: !3715)
!3725 = distinct !{!3725, !3716, !3726, !485}
!3726 = !DILocation(line: 65, column: 17, scope: !3712)
!3727 = !DILocation(line: 66, column: 17, scope: !3728)
!3728 = distinct !DILexicalBlock(scope: !3621, file: !3, line: 66, column: 13)
!3729 = !DILocation(line: 66, column: 23, scope: !3728)
!3730 = !DILocation(line: 66, column: 30, scope: !3728)
!3731 = !DILocation(line: 66, column: 64, scope: !3728)
!3732 = !DILocation(line: 66, column: 59, scope: !3728)
!3733 = !DILocation(line: 66, column: 58, scope: !3728)
!3734 = !DILocation(line: 66, column: 50, scope: !3728)
!3735 = !DILocalVariable(name: "val", arg: 1, scope: !3736, file: !8, line: 268, type: !25)
!3736 = distinct !DISubprogram(name: "bs_size_se", scope: !8, file: !8, line: 268, type: !3737, scopeLine: 269, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !96, retainedNodes: !3739)
!3737 = !DISubroutineType(types: !3738)
!3738 = !{!25, !25}
!3739 = !{!3735}
!3740 = !DILocation(line: 0, scope: !3736, inlinedAt: !3741)
!3741 = distinct !DILocation(line: 66, column: 38, scope: !3728)
!3742 = !DILocation(line: 270, column: 32, scope: !3736, inlinedAt: !3741)
!3743 = !DILocation(line: 270, column: 28, scope: !3736, inlinedAt: !3741)
!3744 = !DILocalVariable(name: "val", arg: 1, scope: !3745, file: !8, line: 260, type: !99)
!3745 = distinct !DISubprogram(name: "bs_size_ue_big", scope: !8, file: !8, line: 260, type: !3746, scopeLine: 261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !96, retainedNodes: !3748)
!3746 = !DISubroutineType(types: !3747)
!3747 = !{!25, !99}
!3748 = !{!3744}
!3749 = !DILocation(line: 0, scope: !3745, inlinedAt: !3750)
!3750 = distinct !DILocation(line: 270, column: 12, scope: !3736, inlinedAt: !3741)
!3751 = !DILocation(line: 262, column: 13, scope: !3752, inlinedAt: !3750)
!3752 = distinct !DILexicalBlock(scope: !3745, file: !8, line: 262, column: 9)
!3753 = !DILocation(line: 262, column: 9, scope: !3745, inlinedAt: !3750)
!3754 = !DILocation(line: 263, column: 36, scope: !3752, inlinedAt: !3750)
!3755 = !DILocation(line: 263, column: 16, scope: !3752, inlinedAt: !3750)
!3756 = !DILocation(line: 263, column: 9, scope: !3752, inlinedAt: !3750)
!3757 = !DILocation(line: 0, scope: !3752, inlinedAt: !3750)
!3758 = !DILocation(line: 66, column: 36, scope: !3728)
!3759 = !DILocation(line: 66, column: 13, scope: !3621)
!3760 = !DILocation(line: 69, column: 23, scope: !3761)
!3761 = distinct !DILexicalBlock(scope: !3762, file: !3, line: 69, column: 9)
!3762 = distinct !DILexicalBlock(scope: !3621, file: !3, line: 69, column: 9)
!3763 = !DILocation(line: 69, column: 9, scope: !3762)
!3764 = !DILocation(line: 70, column: 43, scope: !3761)
!3765 = !DILocation(line: 70, column: 38, scope: !3761)
!3766 = !DILocation(line: 70, column: 54, scope: !3761)
!3767 = !DILocation(line: 70, column: 29, scope: !3761)
!3768 = !DILocation(line: 0, scope: !1224, inlinedAt: !3769)
!3769 = distinct !DILocation(line: 70, column: 13, scope: !3761)
!3770 = !DILocation(line: 231, column: 25, scope: !1224, inlinedAt: !3769)
!3771 = !DILocation(line: 231, column: 21, scope: !1224, inlinedAt: !3769)
!3772 = !DILocation(line: 232, column: 13, scope: !1239, inlinedAt: !3769)
!3773 = !DILocation(line: 232, column: 9, scope: !1224, inlinedAt: !3769)
!3774 = !DILocation(line: 237, column: 13, scope: !1224, inlinedAt: !3769)
!3775 = !DILocation(line: 237, column: 10, scope: !1224, inlinedAt: !3769)
!3776 = !DILocation(line: 0, scope: !726, inlinedAt: !3777)
!3777 = distinct !DILocation(line: 238, column: 5, scope: !1224, inlinedAt: !3769)
!3778 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !3777)
!3779 = !DILocation(line: 90, column: 50, scope: !735, inlinedAt: !3777)
!3780 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !3777)
!3781 = !DILocation(line: 90, column: 21, scope: !735, inlinedAt: !3777)
!3782 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !3777)
!3783 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !3777)
!3784 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !3777)
!3785 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !3777)
!3786 = !DILocation(line: 0, scope: !752, inlinedAt: !3787)
!3787 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !3777)
!3788 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !3787)
!3789 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !3777)
!3790 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !3777)
!3791 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !3777)
!3792 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !3777)
!3793 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !3777)
!3794 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !3777)
!3795 = !DILocation(line: 70, column: 68, scope: !3761)
!3796 = !DILocation(line: 70, column: 63, scope: !3761)
!3797 = !DILocation(line: 69, column: 31, scope: !3761)
!3798 = distinct !{!3798, !3763, !3799, !485, !3800}
!3799 = !DILocation(line: 70, column: 87, scope: !3762)
!3800 = !{!"llvm.loop.peeled.count", i32 1}
!3801 = !DILocation(line: 72, column: 17, scope: !3802)
!3802 = distinct !DILexicalBlock(scope: !3621, file: !3, line: 72, column: 13)
!3803 = !DILocation(line: 72, column: 13, scope: !3621)
!3804 = !DILocation(line: 73, column: 43, scope: !3802)
!3805 = !DILocation(line: 73, column: 38, scope: !3802)
!3806 = !DILocation(line: 73, column: 37, scope: !3802)
!3807 = !DILocation(line: 73, column: 29, scope: !3802)
!3808 = !DILocation(line: 0, scope: !1224, inlinedAt: !3809)
!3809 = distinct !DILocation(line: 73, column: 13, scope: !3802)
!3810 = !DILocation(line: 231, column: 25, scope: !1224, inlinedAt: !3809)
!3811 = !DILocation(line: 231, column: 21, scope: !1224, inlinedAt: !3809)
!3812 = !DILocation(line: 232, column: 13, scope: !1239, inlinedAt: !3809)
!3813 = !DILocation(line: 232, column: 9, scope: !1224, inlinedAt: !3809)
!3814 = !DILocation(line: 237, column: 13, scope: !1224, inlinedAt: !3809)
!3815 = !DILocation(line: 237, column: 10, scope: !1224, inlinedAt: !3809)
!3816 = !DILocation(line: 0, scope: !726, inlinedAt: !3817)
!3817 = distinct !DILocation(line: 238, column: 5, scope: !1224, inlinedAt: !3809)
!3818 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !3817)
!3819 = !DILocation(line: 90, column: 50, scope: !735, inlinedAt: !3817)
!3820 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !3817)
!3821 = !DILocation(line: 90, column: 21, scope: !735, inlinedAt: !3817)
!3822 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !3817)
!3823 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !3817)
!3824 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !3817)
!3825 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !3817)
!3826 = !DILocation(line: 0, scope: !752, inlinedAt: !3827)
!3827 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !3817)
!3828 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !3827)
!3829 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !3817)
!3830 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !3817)
!3831 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !3817)
!3832 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !3817)
!3833 = !DILocation(line: 0, scope: !3623)
!3834 = !DILocation(line: 75, column: 1, scope: !3608)
!3835 = distinct !DISubprogram(name: "x264_sei_version_write", scope: !3, file: !3, line: 475, type: !3836, scopeLine: 476, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !96, retainedNodes: !4668)
!3836 = !DISubroutineType(types: !3837)
!3837 = !{null, !3838, !6}
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_t", file: !147, line: 42, baseType: !3840)
!3840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_t", file: !3841, line: 250, size: 206080, elements: !3842)
!3841 = !DIFile(filename: "./common/common.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "4880b62cc871dca4002788746fbccb70")
!3842 = !{!3843, !3844, !3848, !3852, !3853, !3854, !3873, !3874, !3875, !3876, !3877, !3878, !3879, !3880, !3881, !3882, !3886, !3887, !3889, !3890, !3891, !3898, !3903, !3907, !3911, !3918, !3922, !3923, !3924, !3925, !3927, !3929, !3931, !3970, !3987, !4145, !4146, !4147, !4148, !4152, !4153, !4154, !4155, !4170, !4323, !4327, !4382, !4391, !4392, !4400, !4402, !4473, !4533, !4585, !4606, !4648}
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3840, file: !3841, line: 253, baseType: !266, size: 4928)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !3840, file: !3841, line: 255, baseType: !3845, size: 8192, offset: 4928)
!3845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3838, size: 8192, elements: !3846)
!3846 = !{!3847}
!3847 = !DISubrange(count: 128)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "thread_handle", scope: !3840, file: !3841, line: 256, baseType: !3849, size: 64, offset: 13120)
!3849 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !3850, line: 27, baseType: !3851)
!3850 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!3851 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "b_thread_active", scope: !3840, file: !3841, line: 257, baseType: !25, size: 32, offset: 13184)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "i_thread_phase", scope: !3840, file: !3841, line: 258, baseType: !25, size: 32, offset: 13216)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !3840, file: !3841, line: 269, baseType: !3855, size: 2112, offset: 13248)
!3855 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3840, file: !3841, line: 261, size: 2112, elements: !3856)
!3856 = !{!3857, !3858, !3869, !3870, !3871, !3872}
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal", scope: !3855, file: !3841, line: 263, baseType: !25, size: 32)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "nal", scope: !3855, file: !3841, line: 264, baseType: !3859, size: 1536, offset: 64)
!3859 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3860, size: 1536, elements: !3867)
!3860 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_nal_t", file: !147, line: 399, baseType: !3861)
!3861 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !147, line: 391, size: 192, elements: !3862)
!3862 = !{!3863, !3864, !3865, !3866}
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref_idc", scope: !3861, file: !147, line: 393, baseType: !25, size: 32)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !3861, file: !147, line: 394, baseType: !25, size: 32, offset: 32)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "i_payload", scope: !3861, file: !147, line: 397, baseType: !25, size: 32, offset: 64)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "p_payload", scope: !3861, file: !147, line: 398, baseType: !12, size: 64, offset: 128)
!3867 = !{!3868}
!3868 = !DISubrange(count: 8)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitstream", scope: !3855, file: !3841, line: 265, baseType: !25, size: 32, offset: 1600)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "p_bitstream", scope: !3855, file: !3841, line: 266, baseType: !12, size: 64, offset: 1664)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "bs", scope: !3855, file: !3841, line: 267, baseType: !7, size: 320, offset: 1728)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_size", scope: !3855, file: !3841, line: 268, baseType: !25, size: 32, offset: 2048)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame", scope: !3840, file: !3841, line: 274, baseType: !25, size: 32, offset: 15360)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_offset", scope: !3840, file: !3841, line: 276, baseType: !25, size: 32, offset: 15392)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !3840, file: !3841, line: 277, baseType: !25, size: 32, offset: 15424)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_msb", scope: !3840, file: !3841, line: 278, baseType: !25, size: 32, offset: 15456)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_lsb", scope: !3840, file: !3841, line: 279, baseType: !25, size: 32, offset: 15488)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !3840, file: !3841, line: 280, baseType: !25, size: 32, offset: 15520)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "i_thread_num", scope: !3840, file: !3841, line: 282, baseType: !25, size: 32, offset: 15552)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_type", scope: !3840, file: !3841, line: 283, baseType: !25, size: 32, offset: 15584)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_ref_idc", scope: !3840, file: !3841, line: 284, baseType: !25, size: 32, offset: 15616)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "sps_array", scope: !3840, file: !3841, line: 287, baseType: !3883, size: 9920, offset: 15648)
!3883 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 9920, elements: !3884)
!3884 = !{!3885}
!3885 = !DISubrange(count: 1)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !3840, file: !3841, line: 288, baseType: !27, size: 64, offset: 25600)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "pps_array", scope: !3840, file: !3841, line: 289, baseType: !3888, size: 960, offset: 25664)
!3888 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2826, size: 960, elements: !3884)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !3840, file: !3841, line: 290, baseType: !2825, size: 64, offset: 26624)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "i_idr_pic_id", scope: !3840, file: !3841, line: 291, baseType: !25, size: 32, offset: 26688)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "dequant4_mf", scope: !3840, file: !3841, line: 294, baseType: !3892, size: 256, offset: 26752)
!3892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3893, size: 256, elements: !3897)
!3893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3894, size: 64)
!3894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 512, elements: !3895)
!3895 = !{!3896, !3896}
!3896 = !DISubrange(count: 4)
!3897 = !{!3896}
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "dequant8_mf", scope: !3840, file: !3841, line: 295, baseType: !3899, size: 128, offset: 27008)
!3899 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3900, size: 128, elements: !362)
!3900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3901, size: 64)
!3901 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 2048, elements: !3902)
!3902 = !{!3868, !3868}
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "unquant4_mf", scope: !3840, file: !3841, line: 297, baseType: !3904, size: 256, offset: 27136)
!3904 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3905, size: 256, elements: !3897)
!3905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3906, size: 64)
!3906 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 512, elements: !140)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "unquant8_mf", scope: !3840, file: !3841, line: 298, baseType: !3908, size: 128, offset: 27392)
!3908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3909, size: 128, elements: !362)
!3909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3910, size: 64)
!3910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 2048, elements: !206)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "quant4_mf", scope: !3840, file: !3841, line: 300, baseType: !3912, size: 256, offset: 27520)
!3912 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3913, size: 256, elements: !3897)
!3913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3914, size: 64)
!3914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3915, size: 256, elements: !140)
!3915 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !14, line: 25, baseType: !3916)
!3916 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !16, line: 40, baseType: !3917)
!3917 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "quant8_mf", scope: !3840, file: !3841, line: 301, baseType: !3919, size: 128, offset: 27776)
!3919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3920, size: 128, elements: !362)
!3920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3921, size: 64)
!3921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3915, size: 1024, elements: !206)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "quant4_bias", scope: !3840, file: !3841, line: 302, baseType: !3912, size: 256, offset: 27904)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "quant8_bias", scope: !3840, file: !3841, line: 303, baseType: !3919, size: 128, offset: 28160)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_table", scope: !3840, file: !3841, line: 305, baseType: !212, size: 64, offset: 28288)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "nr_residual_sum", scope: !3840, file: !3841, line: 307, baseType: !3926, size: 4096, align: 128, offset: 28416)
!3926 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 4096, elements: !233)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "nr_offset", scope: !3840, file: !3841, line: 308, baseType: !3928, size: 2048, align: 128, offset: 32512)
!3928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3915, size: 2048, elements: !233)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "nr_count", scope: !3840, file: !3841, line: 309, baseType: !3930, size: 64, offset: 34560)
!3930 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 64, elements: !362)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "sh", scope: !3840, file: !3841, line: 312, baseType: !3932, size: 3072, offset: 34624)
!3932 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_slice_header_t", file: !3841, line: 209, baseType: !3933)
!3933 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3841, line: 159, size: 3072, elements: !3934)
!3934 = !{!3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3954, !3955, !3956, !3962, !3963, !3964, !3965, !3966, !3967, !3968, !3969}
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !3933, file: !3841, line: 161, baseType: !27, size: 64)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !3933, file: !3841, line: 162, baseType: !2825, size: 64, offset: 64)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !3933, file: !3841, line: 164, baseType: !25, size: 32, offset: 128)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "i_first_mb", scope: !3933, file: !3841, line: 165, baseType: !25, size: 32, offset: 160)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_mb", scope: !3933, file: !3841, line: 166, baseType: !25, size: 32, offset: 192)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "i_pps_id", scope: !3933, file: !3841, line: 168, baseType: !25, size: 32, offset: 224)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !3933, file: !3841, line: 170, baseType: !25, size: 32, offset: 256)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "b_mbaff", scope: !3933, file: !3841, line: 172, baseType: !25, size: 32, offset: 288)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "b_field_pic", scope: !3933, file: !3841, line: 173, baseType: !25, size: 32, offset: 320)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "b_bottom_field", scope: !3933, file: !3841, line: 174, baseType: !25, size: 32, offset: 352)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "i_idr_pic_id", scope: !3933, file: !3841, line: 176, baseType: !25, size: 32, offset: 384)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_lsb", scope: !3933, file: !3841, line: 178, baseType: !25, size: 32, offset: 416)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "i_delta_poc_bottom", scope: !3933, file: !3841, line: 179, baseType: !25, size: 32, offset: 448)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "i_delta_poc", scope: !3933, file: !3841, line: 181, baseType: !361, size: 64, offset: 480)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "i_redundant_pic_cnt", scope: !3933, file: !3841, line: 182, baseType: !25, size: 32, offset: 544)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_spatial_mv_pred", scope: !3933, file: !3841, line: 184, baseType: !25, size: 32, offset: 576)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "b_num_ref_idx_override", scope: !3933, file: !3841, line: 186, baseType: !25, size: 32, offset: 608)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l0_active", scope: !3933, file: !3841, line: 187, baseType: !25, size: 32, offset: 640)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l1_active", scope: !3933, file: !3841, line: 188, baseType: !25, size: 32, offset: 672)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_pic_list_reordering_l0", scope: !3933, file: !3841, line: 190, baseType: !25, size: 32, offset: 704)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_pic_list_reordering_l1", scope: !3933, file: !3841, line: 191, baseType: !25, size: 32, offset: 736)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_order", scope: !3933, file: !3841, line: 195, baseType: !3957, size: 2048, offset: 768)
!3957 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3958, size: 2048, elements: !228)
!3958 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3933, file: !3841, line: 192, size: 64, elements: !3959)
!3959 = !{!3960, !3961}
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "idc", scope: !3958, file: !3841, line: 193, baseType: !25, size: 32)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3958, file: !3841, line: 194, baseType: !25, size: 32, offset: 32)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !3933, file: !3841, line: 197, baseType: !25, size: 32, offset: 2816)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !3933, file: !3841, line: 199, baseType: !25, size: 32, offset: 2848)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_delta", scope: !3933, file: !3841, line: 200, baseType: !25, size: 32, offset: 2880)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "b_sp_for_swidth", scope: !3933, file: !3841, line: 201, baseType: !25, size: 32, offset: 2912)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "i_qs_delta", scope: !3933, file: !3841, line: 202, baseType: !25, size: 32, offset: 2944)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "i_disable_deblocking_filter_idc", scope: !3933, file: !3841, line: 205, baseType: !25, size: 32, offset: 2976)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "i_alpha_c0_offset", scope: !3933, file: !3841, line: 206, baseType: !25, size: 32, offset: 3008)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "i_beta_offset", scope: !3933, file: !3841, line: 207, baseType: !25, size: 32, offset: 3040)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "cabac", scope: !3840, file: !3841, line: 315, baseType: !3971, size: 4096, offset: 37760)
!3971 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_cabac_t", file: !3972, line: 46, baseType: !3973)
!3972 = !DIFile(filename: "./common/cabac.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "fed287ee191b19e61654b41f7c57e583")
!3973 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3972, line: 27, size: 4096, elements: !3974)
!3974 = !{!3975, !3976, !3977, !3978, !3979, !3980, !3981, !3982, !3983}
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "i_low", scope: !3973, file: !3972, line: 30, baseType: !25, size: 32)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "i_range", scope: !3973, file: !3972, line: 31, baseType: !25, size: 32, offset: 32)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "i_queue", scope: !3973, file: !3972, line: 34, baseType: !25, size: 32, offset: 64)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes_outstanding", scope: !3973, file: !3972, line: 35, baseType: !25, size: 32, offset: 96)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "p_start", scope: !3973, file: !3972, line: 37, baseType: !12, size: 64, offset: 128)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3973, file: !3972, line: 38, baseType: !12, size: 64, offset: 192)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "p_end", scope: !3973, file: !3972, line: 39, baseType: !12, size: 64, offset: 256)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "f8_bits_encoded", scope: !3973, file: !3972, line: 42, baseType: !25, size: 32, align: 128, offset: 384)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3973, file: !3972, line: 45, baseType: !3984, size: 3680, offset: 416)
!3984 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 3680, elements: !3985)
!3985 = !{!3986}
!3986 = !DISubrange(count: 460)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "frames", scope: !3840, file: !3841, line: 340, baseType: !3988, size: 31808, offset: 41856)
!3988 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3840, file: !3841, line: 317, size: 31808, elements: !3989)
!3989 = !{!3990, !4130, !4131, !4135, !4136, !4138, !4139, !4140, !4141, !4142, !4143, !4144}
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !3988, file: !3841, line: 320, baseType: !3991, size: 4288)
!3991 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3992, size: 4288, elements: !4128)
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!3993 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_frame_t", file: !3994, line: 94, baseType: !3995)
!3994 = !DIFile(filename: "./common/frame.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "3ae200731644fdbac60ac7f8f3f9d2f1")
!3995 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3994, line: 31, size: 51648, elements: !3996)
!3996 = !{!3997, !3998, !3999, !4000, !4001, !4002, !4003, !4004, !4005, !4006, !4007, !4011, !4012, !4013, !4014, !4015, !4016, !4018, !4020, !4021, !4023, !4024, !4025, !4027, !4034, !4038, !4041, !4043, !4044, !4046, !4047, !4051, !4052, !4053, !4056, !4058, !4059, !4060, !4061, !4063, !4064, !4065, !4066, !4067, !4068, !4096}
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !3995, file: !3994, line: 34, baseType: !25, size: 32)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !3995, file: !3994, line: 35, baseType: !25, size: 32, offset: 32)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "i_qpplus1", scope: !3995, file: !3994, line: 36, baseType: !25, size: 32, offset: 64)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "i_pts", scope: !3995, file: !3994, line: 37, baseType: !120, size: 64, offset: 128)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame", scope: !3995, file: !3994, line: 38, baseType: !25, size: 32, offset: 192)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !3995, file: !3994, line: 39, baseType: !25, size: 32, offset: 224)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "b_kept_as_ref", scope: !3995, file: !3994, line: 40, baseType: !25, size: 32, offset: 256)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_avg_rc", scope: !3995, file: !3994, line: 41, baseType: !358, size: 32, offset: 288)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_avg_aq", scope: !3995, file: !3994, line: 42, baseType: !358, size: 32, offset: 320)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "i_plane", scope: !3995, file: !3994, line: 45, baseType: !25, size: 32, offset: 352)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !3995, file: !3994, line: 46, baseType: !4008, size: 96, offset: 384)
!4008 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 96, elements: !4009)
!4009 = !{!4010}
!4010 = !DISubrange(count: 3)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !3995, file: !3994, line: 47, baseType: !4008, size: 96, offset: 480)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines", scope: !3995, file: !3994, line: 48, baseType: !4008, size: 96, offset: 576)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride_lowres", scope: !3995, file: !3994, line: 49, baseType: !25, size: 32, offset: 672)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "i_width_lowres", scope: !3995, file: !3994, line: 50, baseType: !25, size: 32, offset: 704)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_lowres", scope: !3995, file: !3994, line: 51, baseType: !25, size: 32, offset: 736)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !3995, file: !3994, line: 52, baseType: !4017, size: 192, offset: 768)
!4017 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 192, elements: !4009)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "filtered", scope: !3995, file: !3994, line: 53, baseType: !4019, size: 256, offset: 960)
!4019 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 256, elements: !3897)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "lowres", scope: !3995, file: !3994, line: 54, baseType: !4019, size: 256, offset: 1216)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "integral", scope: !3995, file: !3994, line: 55, baseType: !4022, size: 64, offset: 1472)
!4022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3915, size: 64)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !3995, file: !3994, line: 59, baseType: !4019, size: 256, offset: 1536)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_lowres", scope: !3995, file: !3994, line: 60, baseType: !4019, size: 256, offset: 1792)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type", scope: !3995, file: !3994, line: 63, baseType: !4026, size: 64, offset: 2048)
!4026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !3995, file: !3994, line: 64, baseType: !4028, size: 128, offset: 2112)
!4028 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4029, size: 128, elements: !362)
!4029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4030, size: 64)
!4030 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4031, size: 32, elements: !362)
!4031 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !121, line: 25, baseType: !4032)
!4032 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !16, line: 39, baseType: !4033)
!4033 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_mvs", scope: !3995, file: !3994, line: 65, baseType: !4035, size: 2176, offset: 2240)
!4035 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4029, size: 2176, elements: !4036)
!4036 = !{!229, !4037}
!4037 = !DISubrange(count: 17)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_mv_costs", scope: !3995, file: !3994, line: 66, baseType: !4039, size: 2176, offset: 4416)
!4039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4040, size: 2176, elements: !4036)
!4040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3995, file: !3994, line: 67, baseType: !4042, size: 128, offset: 6592)
!4042 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4026, size: 128, elements: !362)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref", scope: !3995, file: !3994, line: 68, baseType: !361, size: 64, offset: 6720)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "ref_poc", scope: !3995, file: !3994, line: 69, baseType: !4045, size: 1024, offset: 6784)
!4045 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 1024, elements: !228)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "inv_ref_poc", scope: !3995, file: !3994, line: 70, baseType: !3906, size: 512, offset: 7808)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "i_cost_est", scope: !3995, file: !3994, line: 75, baseType: !4048, size: 10368, offset: 8320)
!4048 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 10368, elements: !4049)
!4049 = !{!4050, !4050}
!4050 = !DISubrange(count: 18)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "i_cost_est_aq", scope: !3995, file: !3994, line: 76, baseType: !4048, size: 10368, offset: 18688)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "i_satd", scope: !3995, file: !3994, line: 77, baseType: !25, size: 32, offset: 29056)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_mbs", scope: !3995, file: !3994, line: 78, baseType: !4054, size: 576, offset: 29088)
!4054 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 576, elements: !4055)
!4055 = !{!4050}
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_satds", scope: !3995, file: !3994, line: 79, baseType: !4057, size: 20736, offset: 29696)
!4057 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4040, size: 20736, elements: !4049)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_satd", scope: !3995, file: !3994, line: 80, baseType: !4040, size: 64, offset: 50432)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_bits", scope: !3995, file: !3994, line: 81, baseType: !4040, size: 64, offset: 50496)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_qp", scope: !3995, file: !3994, line: 82, baseType: !4040, size: 64, offset: 50560)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_offset", scope: !3995, file: !3994, line: 83, baseType: !4062, size: 64, offset: 50624)
!4062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "b_intra_calculated", scope: !3995, file: !3994, line: 84, baseType: !25, size: 32, offset: 50688)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_cost", scope: !3995, file: !3994, line: 85, baseType: !4022, size: 64, offset: 50752)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "i_inv_qscale_factor", scope: !3995, file: !3994, line: 86, baseType: !4022, size: 64, offset: 50816)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_completed", scope: !3995, file: !3994, line: 89, baseType: !25, size: 32, offset: 50880)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "i_reference_count", scope: !3995, file: !3994, line: 90, baseType: !25, size: 32, offset: 50912)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3995, file: !3994, line: 91, baseType: !4069, size: 320, offset: 50944)
!4069 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !3850, line: 72, baseType: !4070)
!4070 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !3850, line: 67, size: 320, elements: !4071)
!4071 = !{!4072, !4091, !4095}
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !4070, file: !3850, line: 69, baseType: !4073, size: 320)
!4073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !4074, line: 22, size: 320, elements: !4075)
!4074 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "584baedd80e6041b81caae7f496091c0")
!4075 = !{!4076, !4077, !4078, !4079, !4080, !4081, !4082, !4083}
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !4073, file: !4074, line: 24, baseType: !25, size: 32)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4073, file: !4074, line: 25, baseType: !99, size: 32, offset: 32)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !4073, file: !4074, line: 26, baseType: !25, size: 32, offset: 64)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !4073, file: !4074, line: 28, baseType: !99, size: 32, offset: 96)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !4073, file: !4074, line: 32, baseType: !25, size: 32, offset: 128)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !4073, file: !4074, line: 34, baseType: !4033, size: 16, offset: 160)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !4073, file: !4074, line: 35, baseType: !4033, size: 16, offset: 176)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !4073, file: !4074, line: 36, baseType: !4084, size: 128, offset: 192)
!4084 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !4085, line: 55, baseType: !4086)
!4085 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "04c81e86d34dad9c99ad006d32e47a0d")
!4086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !4085, line: 51, size: 128, elements: !4087)
!4087 = !{!4088, !4090}
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !4086, file: !4085, line: 53, baseType: !4089, size: 64)
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4086, size: 64)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !4086, file: !4085, line: 54, baseType: !4089, size: 64, offset: 64)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !4070, file: !3850, line: 70, baseType: !4092, size: 320)
!4092 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 320, elements: !4093)
!4093 = !{!4094}
!4094 = !DISubrange(count: 40)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !4070, file: !3850, line: 71, baseType: !23, size: 64)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "cv", scope: !3995, file: !3994, line: 92, baseType: !4097, size: 384, offset: 51264)
!4097 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_cond_t", file: !3850, line: 80, baseType: !4098)
!4098 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !3850, line: 75, size: 384, elements: !4099)
!4099 = !{!4100, !4122, !4126}
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !4098, file: !3850, line: 77, baseType: !4101, size: 384)
!4101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_cond_s", file: !4085, line: 94, size: 384, elements: !4102)
!4102 = !{!4103, !4115, !4116, !4118, !4119, !4120, !4121}
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "__wseq", scope: !4101, file: !4085, line: 96, baseType: !4104, size: 64)
!4104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__atomic_wide_counter", file: !4105, line: 33, baseType: !4106)
!4105 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/atomic_wide_counter.h", directory: "", checksumkind: CSK_MD5, checksum: "2708e6e61e266abad2d765ccef838dbe")
!4106 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !4105, line: 25, size: 64, elements: !4107)
!4107 = !{!4108, !4110}
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "__value64", scope: !4106, file: !4105, line: 27, baseType: !4109, size: 64)
!4109 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "__value32", scope: !4106, file: !4105, line: 32, baseType: !4111, size: 64)
!4111 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4106, file: !4105, line: 28, size: 64, elements: !4112)
!4112 = !{!4113, !4114}
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "__low", scope: !4111, file: !4105, line: 30, baseType: !99, size: 32)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "__high", scope: !4111, file: !4105, line: 31, baseType: !99, size: 32, offset: 32)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_start", scope: !4101, file: !4085, line: 97, baseType: !4104, size: 64, offset: 64)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "__g_refs", scope: !4101, file: !4085, line: 98, baseType: !4117, size: 64, offset: 128)
!4117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 64, elements: !362)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "__g_size", scope: !4101, file: !4085, line: 99, baseType: !4117, size: 64, offset: 192)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_orig_size", scope: !4101, file: !4085, line: 100, baseType: !99, size: 32, offset: 256)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "__wrefs", scope: !4101, file: !4085, line: 101, baseType: !99, size: 32, offset: 288)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "__g_signals", scope: !4101, file: !4085, line: 102, baseType: !4117, size: 64, offset: 320)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !4098, file: !3850, line: 78, baseType: !4123, size: 384)
!4123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 384, elements: !4124)
!4124 = !{!4125}
!4125 = !DISubrange(count: 48)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !4098, file: !3850, line: 79, baseType: !4127, size: 64)
!4127 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!4128 = !{!4129}
!4129 = !DISubrange(count: 67)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3988, file: !3841, line: 322, baseType: !3991, size: 4288, offset: 4288)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !3988, file: !3841, line: 324, baseType: !4132, size: 21760, offset: 8576)
!4132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3992, size: 21760, elements: !4133)
!4133 = !{!4134}
!4134 = !DISubrange(count: 340)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "last_nonb", scope: !3988, file: !3841, line: 326, baseType: !3992, size: 64, offset: 30336)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !3988, file: !3841, line: 329, baseType: !4137, size: 1152, offset: 30400)
!4137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3992, size: 1152, elements: !4055)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_idr", scope: !3988, file: !3841, line: 331, baseType: !25, size: 32, offset: 31552)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "i_input", scope: !3988, file: !3841, line: 333, baseType: !25, size: 32, offset: 31584)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_dpb", scope: !3988, file: !3841, line: 335, baseType: !25, size: 32, offset: 31616)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_ref0", scope: !3988, file: !3841, line: 336, baseType: !25, size: 32, offset: 31648)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_ref1", scope: !3988, file: !3841, line: 337, baseType: !25, size: 32, offset: 31680)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "i_delay", scope: !3988, file: !3841, line: 338, baseType: !25, size: 32, offset: 31712)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "b_have_lowres", scope: !3988, file: !3841, line: 339, baseType: !25, size: 32, offset: 31744)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "fenc", scope: !3840, file: !3841, line: 343, baseType: !3992, size: 64, offset: 73664)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "fdec", scope: !3840, file: !3841, line: 346, baseType: !3992, size: 64, offset: 73728)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref0", scope: !3840, file: !3841, line: 349, baseType: !25, size: 32, offset: 73792)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "fref0", scope: !3840, file: !3841, line: 350, baseType: !4149, size: 1216, offset: 73856)
!4149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3992, size: 1216, elements: !4150)
!4150 = !{!4151}
!4151 = !DISubrange(count: 19)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref1", scope: !3840, file: !3841, line: 351, baseType: !25, size: 32, offset: 75072)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "fref1", scope: !3840, file: !3841, line: 352, baseType: !4149, size: 1216, offset: 75136)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_reorder", scope: !3840, file: !3841, line: 353, baseType: !361, size: 64, offset: 76352)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "dct", scope: !3840, file: !3841, line: 365, baseType: !4156, size: 10624, offset: 76416)
!4156 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3840, file: !3841, line: 358, size: 10624, elements: !4157)
!4157 = !{!4158, !4160, !4163, !4166}
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "luma16x16_dc", scope: !4156, file: !3841, line: 360, baseType: !4159, size: 256, align: 128)
!4159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4031, size: 256, elements: !140)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_dc", scope: !4156, file: !3841, line: 361, baseType: !4161, size: 128, align: 128, offset: 256)
!4161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4031, size: 128, elements: !4162)
!4162 = !{!229, !3896}
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "luma8x8", scope: !4156, file: !3841, line: 363, baseType: !4164, size: 4096, align: 128, offset: 384)
!4164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4031, size: 4096, elements: !4165)
!4165 = !{!3896, !207}
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "luma4x4", scope: !4156, file: !3841, line: 364, baseType: !4167, size: 6144, align: 128, offset: 4480)
!4167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4031, size: 6144, elements: !4168)
!4168 = !{!4169, !141}
!4169 = !DISubrange(count: 24)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "mb", scope: !3840, file: !3841, line: 544, baseType: !4171, size: 80128, offset: 87040)
!4171 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3840, file: !3841, line: 368, size: 80128, elements: !4172)
!4172 = !{!4173, !4174, !4175, !4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183, !4184, !4185, !4186, !4187, !4188, !4189, !4190, !4191, !4192, !4193, !4194, !4195, !4196, !4197, !4199, !4201, !4202, !4203, !4204, !4205, !4206, !4207, !4208, !4209, !4211, !4214, !4218, !4219, !4220, !4221, !4222, !4226, !4227, !4228, !4231, !4233, !4234, !4235, !4237, !4238, !4239, !4240, !4241, !4242, !4243, !4244, !4285, !4305, !4306, !4307, !4308, !4309, !4310, !4311, !4312, !4313, !4316, !4319, !4321}
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !4171, file: !3841, line: 370, baseType: !25, size: 32)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_stride", scope: !4171, file: !3841, line: 373, baseType: !25, size: 32, offset: 32)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "i_b8_stride", scope: !4171, file: !3841, line: 374, baseType: !25, size: 32, offset: 64)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "i_b4_stride", scope: !4171, file: !3841, line: 375, baseType: !25, size: 32, offset: 96)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_x", scope: !4171, file: !3841, line: 378, baseType: !25, size: 32, offset: 128)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_y", scope: !4171, file: !3841, line: 379, baseType: !25, size: 32, offset: 160)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_xy", scope: !4171, file: !3841, line: 380, baseType: !25, size: 32, offset: 192)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "i_b8_xy", scope: !4171, file: !3841, line: 381, baseType: !25, size: 32, offset: 224)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "i_b4_xy", scope: !4171, file: !3841, line: 382, baseType: !25, size: 32, offset: 256)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !4171, file: !3841, line: 385, baseType: !25, size: 32, offset: 288)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !4171, file: !3841, line: 386, baseType: !25, size: 32, offset: 320)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !4171, file: !3841, line: 387, baseType: !25, size: 32, offset: 352)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "b_trellis", scope: !4171, file: !3841, line: 388, baseType: !25, size: 32, offset: 384)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "b_noise_reduction", scope: !4171, file: !3841, line: 389, baseType: !25, size: 32, offset: 416)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_rd", scope: !4171, file: !3841, line: 390, baseType: !25, size: 32, offset: 448)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_trellis", scope: !4171, file: !3841, line: 391, baseType: !25, size: 32, offset: 480)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !4171, file: !3841, line: 393, baseType: !25, size: 32, offset: 512)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min", scope: !4171, file: !3841, line: 396, baseType: !361, size: 64, offset: 544)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max", scope: !4171, file: !3841, line: 397, baseType: !361, size: 64, offset: 608)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min_spel", scope: !4171, file: !3841, line: 400, baseType: !361, size: 64, offset: 672)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max_spel", scope: !4171, file: !3841, line: 401, baseType: !361, size: 64, offset: 736)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min_fpel", scope: !4171, file: !3841, line: 403, baseType: !361, size: 64, offset: 800)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max_fpel", scope: !4171, file: !3841, line: 404, baseType: !361, size: 64, offset: 864)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour", scope: !4171, file: !3841, line: 407, baseType: !99, size: 32, offset: 928)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour8", scope: !4171, file: !3841, line: 408, baseType: !4198, size: 128, offset: 960)
!4198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 128, elements: !3897)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour4", scope: !4171, file: !3841, line: 409, baseType: !4200, size: 512, offset: 1088)
!4200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 512, elements: !140)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_top", scope: !4171, file: !3841, line: 410, baseType: !25, size: 32, offset: 1600)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_left", scope: !4171, file: !3841, line: 411, baseType: !25, size: 32, offset: 1632)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_topleft", scope: !4171, file: !3841, line: 412, baseType: !25, size: 32, offset: 1664)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_topright", scope: !4171, file: !3841, line: 413, baseType: !25, size: 32, offset: 1696)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_prev_xy", scope: !4171, file: !3841, line: 414, baseType: !25, size: 32, offset: 1728)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_top_xy", scope: !4171, file: !3841, line: 415, baseType: !25, size: 32, offset: 1760)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4171, file: !3841, line: 422, baseType: !4026, size: 64, offset: 1792)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !4171, file: !3841, line: 423, baseType: !4026, size: 64, offset: 1856)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "cbp", scope: !4171, file: !3841, line: 424, baseType: !4210, size: 64, offset: 1920)
!4210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4031, size: 64)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "intra4x4_pred_mode", scope: !4171, file: !3841, line: 425, baseType: !4212, size: 64, offset: 1984)
!4212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4213, size: 64)
!4213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 64, elements: !3867)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "non_zero_count", scope: !4171, file: !3841, line: 427, baseType: !4215, size: 64, offset: 2048)
!4215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4216, size: 64)
!4216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 192, elements: !4217)
!4217 = !{!4169}
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_pred_mode", scope: !4171, file: !3841, line: 428, baseType: !4026, size: 64, offset: 2112)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !4171, file: !3841, line: 429, baseType: !4028, size: 128, offset: 2176)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !4171, file: !3841, line: 430, baseType: !4028, size: 128, offset: 2304)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4171, file: !3841, line: 431, baseType: !4042, size: 128, offset: 2432)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "mvr", scope: !4171, file: !3841, line: 432, baseType: !4223, size: 4096, offset: 2560)
!4223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4029, size: 4096, elements: !4224)
!4224 = !{!229, !4225}
!4225 = !DISubrange(count: 32)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "skipbp", scope: !4171, file: !3841, line: 433, baseType: !4026, size: 64, offset: 6656)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "mb_transform_size", scope: !4171, file: !3841, line: 434, baseType: !4026, size: 64, offset: 6720)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "intra_border_backup", scope: !4171, file: !3841, line: 435, baseType: !4229, size: 384, offset: 6784)
!4229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 384, elements: !4230)
!4230 = !{!229, !4010}
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "nnz_backup", scope: !4171, file: !3841, line: 436, baseType: !4232, size: 64, offset: 7168)
!4232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !4171, file: !3841, line: 439, baseType: !25, size: 32, offset: 7232)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "i_partition", scope: !4171, file: !3841, line: 440, baseType: !25, size: 32, offset: 7264)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "i_sub_partition", scope: !4171, file: !3841, line: 441, baseType: !4236, size: 128, offset: 7296)
!4236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 128, elements: !3897)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !4171, file: !3841, line: 442, baseType: !25, size: 32, offset: 7424)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_luma", scope: !4171, file: !3841, line: 444, baseType: !25, size: 32, offset: 7456)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_chroma", scope: !4171, file: !3841, line: 445, baseType: !25, size: 32, offset: 7488)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra16x16_pred_mode", scope: !4171, file: !3841, line: 447, baseType: !25, size: 32, offset: 7520)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_pred_mode", scope: !4171, file: !3841, line: 448, baseType: !25, size: 32, offset: 7552)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "i_skip_intra", scope: !4171, file: !3841, line: 454, baseType: !25, size: 32, offset: 7584)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "b_skip_mc", scope: !4171, file: !3841, line: 457, baseType: !25, size: 32, offset: 7616)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "pic", scope: !4171, file: !3841, line: 498, baseType: !4245, size: 57344, offset: 7680)
!4245 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4171, file: !3841, line: 459, size: 57344, elements: !4246)
!4246 = !{!4247, !4251, !4255, !4257, !4258, !4261, !4265, !4266, !4269, !4270, !4271, !4274, !4275, !4276, !4277, !4278, !4279, !4282, !4284}
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_buf", scope: !4245, file: !3841, line: 464, baseType: !4248, size: 3072, align: 128)
!4248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 3072, elements: !4249)
!4249 = !{!4250}
!4250 = !DISubrange(count: 384)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "fdec_buf", scope: !4245, file: !3841, line: 465, baseType: !4252, size: 6912, align: 128, offset: 3072)
!4252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 6912, elements: !4253)
!4253 = !{!4254}
!4254 = !DISubrange(count: 864)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_fdec_buf", scope: !4245, file: !3841, line: 468, baseType: !4256, size: 2048, align: 128, offset: 9984)
!4256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 2048, elements: !47)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_fdec_buf", scope: !4245, file: !3841, line: 469, baseType: !4256, size: 2048, align: 128, offset: 12032)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_dct_buf", scope: !4245, file: !3841, line: 470, baseType: !4259, size: 3072, align: 128, offset: 14080)
!4259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4031, size: 3072, elements: !4260)
!4260 = !{!4010, !207}
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_dct_buf", scope: !4245, file: !3841, line: 471, baseType: !4262, size: 3840, align: 128, offset: 17152)
!4262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4031, size: 3840, elements: !4263)
!4263 = !{!4264, !141}
!4264 = !DISubrange(count: 15)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_dct8", scope: !4245, file: !3841, line: 474, baseType: !4164, size: 4096, align: 128, offset: 20992)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_dct4", scope: !4245, file: !3841, line: 475, baseType: !4267, size: 4096, align: 128, offset: 25088)
!4267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4031, size: 4096, elements: !4268)
!4268 = !{!141, !141}
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_satd", scope: !4245, file: !3841, line: 478, baseType: !3894, size: 512, offset: 29184)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_satd_sum", scope: !4245, file: !3841, line: 479, baseType: !25, size: 32, offset: 29696)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_sa8d", scope: !4245, file: !3841, line: 480, baseType: !4272, size: 128, offset: 29728)
!4272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 128, elements: !4273)
!4273 = !{!229, !229}
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_sa8d_sum", scope: !4245, file: !3841, line: 481, baseType: !25, size: 32, offset: 29856)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "p_fenc", scope: !4245, file: !3841, line: 484, baseType: !4017, size: 192, offset: 29888)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "p_fenc_plane", scope: !4245, file: !3841, line: 486, baseType: !4017, size: 192, offset: 30080)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "p_fdec", scope: !4245, file: !3841, line: 489, baseType: !4017, size: 192, offset: 30272)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "i_fref", scope: !4245, file: !3841, line: 492, baseType: !361, size: 64, offset: 30464)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "p_fref", scope: !4245, file: !3841, line: 493, baseType: !4280, size: 24576, offset: 30528)
!4280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 24576, elements: !4281)
!4281 = !{!229, !4225, !214}
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "p_integral", scope: !4245, file: !3841, line: 494, baseType: !4283, size: 2048, offset: 55104)
!4283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4022, size: 2048, elements: !228)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !4245, file: !3841, line: 497, baseType: !4008, size: 96, offset: 57152)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !4171, file: !3841, line: 526, baseType: !4286, size: 12032, offset: 65024)
!4286 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4171, file: !3841, line: 501, size: 12032, elements: !4287)
!4287 = !{!4288, !4290, !4292, !4295, !4298, !4299, !4300, !4301, !4302, !4303, !4304}
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "intra4x4_pred_mode", scope: !4286, file: !3841, line: 504, baseType: !4289, size: 384)
!4289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 384, elements: !4124)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "non_zero_count", scope: !4286, file: !3841, line: 507, baseType: !4291, size: 384, offset: 384)
!4291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 384, elements: !4124)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4286, file: !3841, line: 510, baseType: !4293, size: 768, align: 32, offset: 768)
!4293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 768, elements: !4294)
!4294 = !{!229, !4125}
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !4286, file: !3841, line: 513, baseType: !4296, size: 3072, align: 128, offset: 1536)
!4296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4031, size: 3072, elements: !4297)
!4297 = !{!229, !4125, !229}
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !4286, file: !3841, line: 514, baseType: !4296, size: 3072, align: 64, offset: 4608)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "skip", scope: !4286, file: !3841, line: 517, baseType: !4289, size: 384, align: 32, offset: 7680)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "direct_mv", scope: !4286, file: !3841, line: 519, baseType: !4296, size: 3072, align: 128, offset: 8064)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "direct_ref", scope: !4286, file: !3841, line: 520, baseType: !4293, size: 768, align: 32, offset: 11136)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "pskip_mv", scope: !4286, file: !3841, line: 521, baseType: !4030, size: 32, align: 32, offset: 11904)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_transform_size", scope: !4286, file: !3841, line: 524, baseType: !25, size: 32, offset: 11936)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_interlaced", scope: !4286, file: !3841, line: 525, baseType: !25, size: 32, offset: 11968)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !4171, file: !3841, line: 529, baseType: !25, size: 32, offset: 77056)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp", scope: !4171, file: !3841, line: 530, baseType: !25, size: 32, offset: 77088)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_qp", scope: !4171, file: !3841, line: 531, baseType: !25, size: 32, offset: 77120)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_dqp", scope: !4171, file: !3841, line: 532, baseType: !25, size: 32, offset: 77152)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "b_variable_qp", scope: !4171, file: !3841, line: 533, baseType: !25, size: 32, offset: 77184)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "b_lossless", scope: !4171, file: !3841, line: 534, baseType: !25, size: 32, offset: 77216)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_auto_read", scope: !4171, file: !3841, line: 535, baseType: !25, size: 32, offset: 77248)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_auto_write", scope: !4171, file: !3841, line: 536, baseType: !25, size: 32, offset: 77280)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "dist_scale_factor", scope: !4171, file: !3841, line: 539, baseType: !4314, size: 512, offset: 77312)
!4314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4031, size: 512, elements: !4315)
!4315 = !{!141, !229}
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_weight", scope: !4171, file: !3841, line: 540, baseType: !4317, size: 2048, offset: 77824)
!4317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4031, size: 2048, elements: !4318)
!4318 = !{!4225, !3896}
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "map_col_to_list0_buf", scope: !4171, file: !3841, line: 542, baseType: !4320, size: 16, offset: 79872)
!4320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 16, elements: !362)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "map_col_to_list0", scope: !4171, file: !3841, line: 543, baseType: !4322, size: 128, offset: 79888)
!4322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 128, elements: !140)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !3840, file: !3841, line: 547, baseType: !4324, size: 64, offset: 167168)
!4324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4325, size: 64)
!4325 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_ratecontrol_t", file: !3841, line: 248, baseType: !4326)
!4326 = !DICompositeType(tag: DW_TAG_structure_type, name: "x264_ratecontrol_t", file: !3841, line: 248, flags: DIFlagFwdDecl)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !3840, file: !3841, line: 604, baseType: !4328, size: 23936, offset: 167232)
!4328 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3840, file: !3841, line: 550, size: 23936, elements: !4329)
!4329 = !{!4330, !4355, !4359, !4361, !4363, !4364, !4365, !4366, !4367, !4368, !4369, !4370, !4373, !4375, !4377, !4380, !4381}
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !4328, file: !3841, line: 579, baseType: !4331, size: 3904)
!4331 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4328, file: !3841, line: 553, size: 3904, elements: !4332)
!4332 = !{!4333, !4334, !4335, !4336, !4338, !4339, !4340, !4341, !4342, !4344, !4347, !4348, !4349, !4350, !4351, !4353}
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_bits", scope: !4331, file: !3841, line: 556, baseType: !25, size: 32)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "i_tex_bits", scope: !4331, file: !3841, line: 558, baseType: !25, size: 32, offset: 32)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "i_misc_bits", scope: !4331, file: !3841, line: 560, baseType: !25, size: 32, offset: 64)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !4331, file: !3841, line: 562, baseType: !4337, size: 608, offset: 96)
!4337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 608, elements: !4150)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_i", scope: !4331, file: !3841, line: 563, baseType: !25, size: 32, offset: 704)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_p", scope: !4331, file: !3841, line: 564, baseType: !25, size: 32, offset: 736)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_skip", scope: !4331, file: !3841, line: 565, baseType: !25, size: 32, offset: 768)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_8x8dct", scope: !4331, file: !3841, line: 566, baseType: !361, size: 64, offset: 800)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_ref", scope: !4331, file: !3841, line: 567, baseType: !4343, size: 2048, offset: 864)
!4343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 2048, elements: !4224)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_partition", scope: !4331, file: !3841, line: 568, baseType: !4345, size: 544, offset: 2912)
!4345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 544, elements: !4346)
!4346 = !{!4037}
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_cost", scope: !4331, file: !3841, line: 571, baseType: !25, size: 32, offset: 3456)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "i_inter_cost", scope: !4331, file: !3841, line: 572, baseType: !25, size: 32, offset: 3488)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "i_mbs_analysed", scope: !4331, file: !3841, line: 573, baseType: !25, size: 32, offset: 3520)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_score", scope: !4331, file: !3841, line: 575, baseType: !361, size: 64, offset: 3552)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "i_ssd", scope: !4331, file: !3841, line: 577, baseType: !4352, size: 192, offset: 3648)
!4352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 192, elements: !4009)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "f_ssim", scope: !4331, file: !3841, line: 578, baseType: !4354, size: 64, offset: 3840)
!4354 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_count", scope: !4328, file: !3841, line: 584, baseType: !4356, size: 160, offset: 3904)
!4356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 160, elements: !4357)
!4357 = !{!4358}
!4358 = !DISubrange(count: 5)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_size", scope: !4328, file: !3841, line: 585, baseType: !4360, size: 320, offset: 4096)
!4360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 320, elements: !4357)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "f_slice_qp", scope: !4328, file: !3841, line: 586, baseType: !4362, size: 320, offset: 4416)
!4362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4354, size: 320, elements: !4357)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "i_consecutive_bframes", scope: !4328, file: !3841, line: 587, baseType: !4345, size: 544, offset: 4736)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "i_ssd_global", scope: !4328, file: !3841, line: 589, baseType: !4360, size: 320, offset: 5312)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_average", scope: !4328, file: !3841, line: 590, baseType: !4362, size: 320, offset: 5632)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_y", scope: !4328, file: !3841, line: 591, baseType: !4362, size: 320, offset: 5952)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_u", scope: !4328, file: !3841, line: 592, baseType: !4362, size: 320, offset: 6272)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_v", scope: !4328, file: !3841, line: 593, baseType: !4362, size: 320, offset: 6592)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "f_ssim_mean_y", scope: !4328, file: !3841, line: 594, baseType: !4362, size: 320, offset: 6912)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !4328, file: !3841, line: 596, baseType: !4371, size: 6080, offset: 7232)
!4371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 6080, elements: !4372)
!4372 = !{!4358, !4151}
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_partition", scope: !4328, file: !3841, line: 597, baseType: !4374, size: 2176, offset: 13312)
!4374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 2176, elements: !4036)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_8x8dct", scope: !4328, file: !3841, line: 598, baseType: !4376, size: 128, offset: 15488)
!4376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 128, elements: !362)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_ref", scope: !4328, file: !3841, line: 599, baseType: !4378, size: 8192, offset: 15616)
!4378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 8192, elements: !4379)
!4379 = !{!229, !229, !4225}
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_score", scope: !4328, file: !3841, line: 601, baseType: !361, size: 64, offset: 23808)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_frames", scope: !4328, file: !3841, line: 602, baseType: !361, size: 64, offset: 23872)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "predict_16x16", scope: !3840, file: !3841, line: 607, baseType: !4383, size: 448, offset: 191168)
!4383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4384, size: 448, elements: !4389)
!4384 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict_t", file: !4385, line: 27, baseType: !4386)
!4385 = !DIFile(filename: "./common/predict.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "c7827bfe44f4a550b7080533457a8327")
!4386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4387, size: 64)
!4387 = !DISubroutineType(types: !4388)
!4388 = !{null, !12}
!4389 = !{!4390}
!4390 = !DISubrange(count: 7)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8c", scope: !3840, file: !3841, line: 608, baseType: !4383, size: 448, offset: 191616)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8", scope: !3840, file: !3841, line: 609, baseType: !4393, size: 768, offset: 192064)
!4393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4394, size: 768, elements: !4398)
!4394 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict8x8_t", file: !4385, line: 28, baseType: !4395)
!4395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4396, size: 64)
!4396 = !DISubroutineType(types: !4397)
!4397 = !{null, !12, !12}
!4398 = !{!4399}
!4399 = !DISubrange(count: 12)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "predict_4x4", scope: !3840, file: !3841, line: 610, baseType: !4401, size: 768, offset: 192832)
!4401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4384, size: 768, elements: !4398)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "pixf", scope: !3840, file: !3841, line: 612, baseType: !4403, size: 8000, offset: 193600)
!4403 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_function_t", file: !4404, line: 103, baseType: !4405)
!4404 = !DIFile(filename: "./common/pixel.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "aba138e44f0e52bc0158be0d182b79c1")
!4405 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4404, line: 63, size: 8000, elements: !4406)
!4406 = !{!4407, !4413, !4414, !4415, !4416, !4418, !4419, !4420, !4421, !4427, !4433, !4434, !4439, !4446, !4451, !4455, !4456, !4457, !4458, !4459, !4464, !4468, !4469, !4470, !4471, !4472}
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "sad", scope: !4405, file: !4404, line: 65, baseType: !4408, size: 448)
!4408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4409, size: 448, elements: !4389)
!4409 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_t", file: !4404, line: 26, baseType: !4410)
!4410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4411, size: 64)
!4411 = !DISubroutineType(types: !4412)
!4412 = !{!25, !12, !25, !12, !25}
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "ssd", scope: !4405, file: !4404, line: 66, baseType: !4408, size: 448, offset: 448)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "satd", scope: !4405, file: !4404, line: 67, baseType: !4408, size: 448, offset: 896)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "ssim", scope: !4405, file: !4404, line: 68, baseType: !4408, size: 448, offset: 1344)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "sa8d", scope: !4405, file: !4404, line: 69, baseType: !4417, size: 256, offset: 1792)
!4417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4409, size: 256, elements: !3897)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "mbcmp", scope: !4405, file: !4404, line: 70, baseType: !4408, size: 448, offset: 2048)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "mbcmp_unaligned", scope: !4405, file: !4404, line: 71, baseType: !4408, size: 448, offset: 2496)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp", scope: !4405, file: !4404, line: 72, baseType: !4408, size: 448, offset: 2944)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp_x3", scope: !4405, file: !4404, line: 73, baseType: !4422, size: 448, offset: 3392)
!4422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4423, size: 448, elements: !4389)
!4423 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_x3_t", file: !4404, line: 27, baseType: !4424)
!4424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4425, size: 64)
!4425 = !DISubroutineType(types: !4426)
!4426 = !{null, !12, !12, !12, !12, !25, !4040}
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp_x4", scope: !4405, file: !4404, line: 74, baseType: !4428, size: 448, offset: 3840)
!4428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4429, size: 448, elements: !4389)
!4429 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_x4_t", file: !4404, line: 28, baseType: !4430)
!4430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4431, size: 64)
!4431 = !DISubroutineType(types: !4432)
!4432 = !{null, !12, !12, !12, !12, !12, !25, !4040}
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "sad_aligned", scope: !4405, file: !4404, line: 75, baseType: !4408, size: 448, offset: 4288)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !4405, file: !4404, line: 77, baseType: !4435, size: 256, offset: 4736)
!4435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4436, size: 256, elements: !3897)
!4436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4437, size: 64)
!4437 = !DISubroutineType(types: !4438)
!4438 = !{!25, !12, !25, !123}
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "hadamard_ac", scope: !4405, file: !4404, line: 78, baseType: !4440, size: 256, offset: 4992)
!4440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4441, size: 256, elements: !3897)
!4441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4442, size: 64)
!4442 = !DISubroutineType(types: !4443)
!4443 = !{!4444, !12, !25}
!4444 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !14, line: 27, baseType: !4445)
!4445 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !16, line: 45, baseType: !3851)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "ssim_4x4x2_core", scope: !4405, file: !4404, line: 80, baseType: !4447, size: 64, offset: 5248)
!4447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4448, size: 64)
!4448 = !DISubroutineType(types: !4449)
!4449 = !{null, !212, !25, !212, !25, !4450}
!4450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4236, size: 64)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "ssim_end4", scope: !4405, file: !4404, line: 82, baseType: !4452, size: 64, offset: 5312)
!4452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4453, size: 64)
!4453 = !DISubroutineType(types: !4454)
!4454 = !{!358, !4450, !4450, !25}
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "sad_x3", scope: !4405, file: !4404, line: 85, baseType: !4422, size: 448, offset: 5376)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "sad_x4", scope: !4405, file: !4404, line: 86, baseType: !4428, size: 448, offset: 5824)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "satd_x3", scope: !4405, file: !4404, line: 87, baseType: !4422, size: 448, offset: 6272)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "satd_x4", scope: !4405, file: !4404, line: 88, baseType: !4428, size: 448, offset: 6720)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "ads", scope: !4405, file: !4404, line: 92, baseType: !4460, size: 448, offset: 7168)
!4460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4461, size: 448, elements: !4389)
!4461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4462, size: 64)
!4462 = !DISubroutineType(types: !4463)
!4463 = !{!25, !4040, !4022, !25, !4022, !4210, !25, !25}
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_16x16", scope: !4405, file: !4404, line: 97, baseType: !4465, size: 64, offset: 7616)
!4465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4466, size: 64)
!4466 = !DISubroutineType(types: !4467)
!4467 = !{null, !12, !12, !4040}
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_16x16", scope: !4405, file: !4404, line: 98, baseType: !4465, size: 64, offset: 7680)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_16x16", scope: !4405, file: !4404, line: 99, baseType: !4465, size: 64, offset: 7744)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_8x8c", scope: !4405, file: !4404, line: 100, baseType: !4465, size: 64, offset: 7808)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_4x4", scope: !4405, file: !4404, line: 101, baseType: !4465, size: 64, offset: 7872)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sa8d_x3_8x8", scope: !4405, file: !4404, line: 102, baseType: !4465, size: 64, offset: 7936)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "mc", scope: !3840, file: !3841, line: 613, baseType: !4474, size: 1792, offset: 201600)
!4474 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_mc_functions_t", file: !4475, line: 71, baseType: !4476)
!4475 = !DIFile(filename: "./common/mc.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "d49d7420aafa05a86bee506aef111ff0")
!4476 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4475, line: 31, size: 1792, elements: !4477)
!4477 = !{!4478, !4483, !4487, !4491, !4498, !4503, !4504, !4508, !4512, !4513, !4517, !4525, !4529}
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "mc_luma", scope: !4476, file: !4475, line: 33, baseType: !4479, size: 64)
!4479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4480, size: 64)
!4480 = !DISubroutineType(types: !4481)
!4481 = !{null, !12, !25, !4482, !25, !25, !25, !25, !25}
!4482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "get_ref", scope: !4476, file: !4475, line: 38, baseType: !4484, size: 64, offset: 64)
!4484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4485, size: 64)
!4485 = !DISubroutineType(types: !4486)
!4486 = !{!12, !12, !4040, !4482, !25, !25, !25, !25, !25}
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "mc_chroma", scope: !4476, file: !4475, line: 44, baseType: !4488, size: 64, offset: 128)
!4488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4489, size: 64)
!4489 = !DISubroutineType(types: !4490)
!4490 = !{null, !12, !25, !12, !25, !25, !25, !25, !25}
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !4476, file: !4475, line: 48, baseType: !4492, size: 640, offset: 192)
!4492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4493, size: 640, elements: !4496)
!4493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4494, size: 64)
!4494 = !DISubroutineType(types: !4495)
!4495 = !{null, !12, !25, !12, !25, !12, !25, !25}
!4496 = !{!4497}
!4497 = !DISubrange(count: 10)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !4476, file: !4475, line: 51, baseType: !4499, size: 448, offset: 832)
!4499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4500, size: 448, elements: !4389)
!4500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4501, size: 64)
!4501 = !DISubroutineType(types: !4502)
!4502 = !{null, !12, !25, !12, !25, !25}
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "copy_16x16_unaligned", scope: !4476, file: !4475, line: 52, baseType: !4500, size: 64, offset: 1280)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "plane_copy", scope: !4476, file: !4475, line: 54, baseType: !4505, size: 64, offset: 1344)
!4505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4506, size: 64)
!4506 = !DISubroutineType(types: !4507)
!4507 = !{null, !12, !25, !12, !25, !25, !25}
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "hpel_filter", scope: !4476, file: !4475, line: 57, baseType: !4509, size: 64, offset: 1408)
!4509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4510, size: 64)
!4510 = !DISubroutineType(types: !4511)
!4511 = !{null, !12, !12, !12, !12, !25, !25, !25}
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "prefetch_fenc", scope: !4476, file: !4475, line: 61, baseType: !4500, size: 64, offset: 1472)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "prefetch_ref", scope: !4476, file: !4475, line: 64, baseType: !4514, size: 64, offset: 1536)
!4514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4515, size: 64)
!4515 = !DISubroutineType(types: !4516)
!4516 = !{null, !12, !25, !25}
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "memcpy_aligned", scope: !4476, file: !4475, line: 66, baseType: !4518, size: 64, offset: 1600)
!4518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4519, size: 64)
!4519 = !DISubroutineType(types: !4520)
!4520 = !{!321, !321, !4521, !4523}
!4521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4522, size: 64)
!4522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!4523 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !4524, line: 46, baseType: !3851)
!4524 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "memzero_aligned", scope: !4476, file: !4475, line: 67, baseType: !4526, size: 64, offset: 1664)
!4526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4527, size: 64)
!4527 = !DISubroutineType(types: !4528)
!4528 = !{null, !321, !25}
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "frame_init_lowres_core", scope: !4476, file: !4475, line: 69, baseType: !4530, size: 64, offset: 1728)
!4530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4531, size: 64)
!4531 = !DISubroutineType(types: !4532)
!4532 = !{null, !12, !12, !12, !12, !12, !25, !25, !25, !25}
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "dctf", scope: !3840, file: !3841, line: 614, baseType: !4534, size: 768, offset: 203392)
!4534 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_dct_function_t", file: !4535, line: 112, baseType: !4536)
!4535 = !DIFile(filename: "./common/dct.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "eb76275dd7785989f0d8a4ada39e3c74")
!4536 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4535, line: 89, size: 768, elements: !4537)
!4537 = !{!4538, !4544, !4548, !4554, !4558, !4559, !4560, !4566, !4570, !4576, !4580, !4584}
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "sub4x4_dct", scope: !4536, file: !4535, line: 94, baseType: !4539, size: 64)
!4539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4540, size: 64)
!4540 = !DISubroutineType(types: !4541)
!4541 = !{null, !4542, !12, !12}
!4542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4543, size: 64)
!4543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4031, size: 64, elements: !3897)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "add4x4_idct", scope: !4536, file: !4535, line: 95, baseType: !4545, size: 64, offset: 64)
!4545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4546, size: 64)
!4546 = !DISubroutineType(types: !4547)
!4547 = !{null, !12, !4542}
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct", scope: !4536, file: !4535, line: 97, baseType: !4549, size: 64, offset: 128)
!4549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4550, size: 64)
!4550 = !DISubroutineType(types: !4551)
!4551 = !{null, !4552, !12, !12}
!4552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4553, size: 64)
!4553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4031, size: 256, elements: !3895)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct", scope: !4536, file: !4535, line: 98, baseType: !4555, size: 64, offset: 192)
!4555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4556, size: 64)
!4556 = !DISubroutineType(types: !4557)
!4557 = !{null, !12, !4552}
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "sub16x16_dct", scope: !4536, file: !4535, line: 100, baseType: !4549, size: 64, offset: 256)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct", scope: !4536, file: !4535, line: 101, baseType: !4555, size: 64, offset: 320)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct8", scope: !4536, file: !4535, line: 103, baseType: !4561, size: 64, offset: 384)
!4561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4562, size: 64)
!4562 = !DISubroutineType(types: !4563)
!4563 = !{null, !4564, !12, !12}
!4564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4565, size: 64)
!4565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4031, size: 128, elements: !3867)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct8", scope: !4536, file: !4535, line: 104, baseType: !4567, size: 64, offset: 448)
!4567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4568, size: 64)
!4568 = !DISubroutineType(types: !4569)
!4569 = !{null, !12, !4564}
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "sub16x16_dct8", scope: !4536, file: !4535, line: 106, baseType: !4571, size: 64, offset: 512)
!4571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4572, size: 64)
!4572 = !DISubroutineType(types: !4573)
!4573 = !{null, !4574, !12, !12}
!4574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4575, size: 64)
!4575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4031, size: 1024, elements: !3902)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct8", scope: !4536, file: !4535, line: 107, baseType: !4577, size: 64, offset: 576)
!4577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4578, size: 64)
!4578 = !DISubroutineType(types: !4579)
!4579 = !{null, !12, !4574}
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "dct4x4dc", scope: !4536, file: !4535, line: 109, baseType: !4581, size: 64, offset: 640)
!4581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4582, size: 64)
!4582 = !DISubroutineType(types: !4583)
!4583 = !{null, !4542}
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "idct4x4dc", scope: !4536, file: !4535, line: 110, baseType: !4581, size: 64, offset: 704)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "zigzagf", scope: !3840, file: !3841, line: 615, baseType: !4586, size: 320, offset: 204160)
!4586 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zigzag_function_t", file: !4535, line: 122, baseType: !4587)
!4587 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4535, line: 114, size: 320, elements: !4588)
!4588 = !{!4589, !4593, !4597, !4601, !4602}
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "scan_8x8", scope: !4587, file: !4535, line: 116, baseType: !4590, size: 64)
!4590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4591, size: 64)
!4591 = !DISubroutineType(types: !4592)
!4592 = !{null, !4210, !4564}
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "scan_4x4", scope: !4587, file: !4535, line: 117, baseType: !4594, size: 64, offset: 64)
!4594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4595, size: 64)
!4595 = !DISubroutineType(types: !4596)
!4596 = !{null, !4210, !4542}
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "sub_8x8", scope: !4587, file: !4535, line: 118, baseType: !4598, size: 64, offset: 128)
!4598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4599, size: 64)
!4599 = !DISubroutineType(types: !4600)
!4600 = !{null, !4210, !212, !12}
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "sub_4x4", scope: !4587, file: !4535, line: 119, baseType: !4598, size: 64, offset: 192)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "interleave_8x8_cavlc", scope: !4587, file: !4535, line: 120, baseType: !4603, size: 64, offset: 256)
!4603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4604, size: 64)
!4604 = !DISubroutineType(types: !4605)
!4605 = !{null, !4210, !4210}
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "quantf", scope: !3840, file: !3841, line: 616, baseType: !4607, size: 1088, offset: 204480)
!4607 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_quant_function_t", file: !4608, line: 43, baseType: !4609)
!4608 = !DIFile(filename: "./common/quant.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "fe7c19d3e69b65b38e52c43c47235f27")
!4609 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4608, line: 26, size: 1088, elements: !4610)
!4610 = !{!4611, !4615, !4619, !4623, !4627, !4631, !4635, !4636, !4640, !4644, !4645, !4646}
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "quant_8x8", scope: !4609, file: !4608, line: 28, baseType: !4612, size: 64)
!4612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4613, size: 64)
!4613 = !DISubroutineType(types: !4614)
!4614 = !{null, !4564, !4022, !4022}
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "quant_4x4", scope: !4609, file: !4608, line: 29, baseType: !4616, size: 64, offset: 64)
!4616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4617, size: 64)
!4617 = !DISubroutineType(types: !4618)
!4618 = !{null, !4542, !4022, !4022}
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "quant_4x4_dc", scope: !4609, file: !4608, line: 30, baseType: !4620, size: 64, offset: 128)
!4620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4621, size: 64)
!4621 = !DISubroutineType(types: !4622)
!4622 = !{null, !4542, !25, !25}
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "quant_2x2_dc", scope: !4609, file: !4608, line: 31, baseType: !4624, size: 64, offset: 192)
!4624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4625, size: 64)
!4625 = !DISubroutineType(types: !4626)
!4626 = !{null, !4029, !25, !25}
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_8x8", scope: !4609, file: !4608, line: 33, baseType: !4628, size: 64, offset: 256)
!4628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4629, size: 64)
!4629 = !DISubroutineType(types: !4630)
!4630 = !{null, !4564, !3900, !25}
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_4x4", scope: !4609, file: !4608, line: 34, baseType: !4632, size: 64, offset: 320)
!4632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4633, size: 64)
!4633 = !DISubroutineType(types: !4634)
!4634 = !{null, !4542, !3893, !25}
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_4x4_dc", scope: !4609, file: !4608, line: 35, baseType: !4632, size: 64, offset: 384)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "denoise_dct", scope: !4609, file: !4608, line: 37, baseType: !4637, size: 64, offset: 448)
!4637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4638, size: 64)
!4638 = !DISubroutineType(types: !4639)
!4639 = !{null, !4210, !123, !4022, !25}
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score15", scope: !4609, file: !4608, line: 39, baseType: !4641, size: 64, offset: 512)
!4641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4642, size: 64)
!4642 = !DISubroutineType(types: !4643)
!4643 = !{!25, !4210}
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score16", scope: !4609, file: !4608, line: 40, baseType: !4641, size: 64, offset: 576)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score64", scope: !4609, file: !4608, line: 41, baseType: !4641, size: 64, offset: 640)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_last", scope: !4609, file: !4608, line: 42, baseType: !4647, size: 384, offset: 704)
!4647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4641, size: 384, elements: !213)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "loopf", scope: !3840, file: !3841, line: 617, baseType: !4649, size: 512, offset: 205568)
!4649 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_function_t", file: !3994, line: 108, baseType: !4650)
!4650 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3994, line: 98, size: 512, elements: !4651)
!4651 = !{!4652, !4657, !4658, !4659, !4660, !4665, !4666, !4667}
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_v_luma", scope: !4650, file: !3994, line: 100, baseType: !4653, size: 64)
!4653 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_inter_t", file: !3994, line: 96, baseType: !4654)
!4654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4655, size: 64)
!4655 = !DISubroutineType(types: !4656)
!4656 = !{null, !12, !25, !25, !25, !4026}
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_h_luma", scope: !4650, file: !3994, line: 101, baseType: !4653, size: 64, offset: 64)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_v_chroma", scope: !4650, file: !3994, line: 102, baseType: !4653, size: 64, offset: 128)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_h_chroma", scope: !4650, file: !3994, line: 103, baseType: !4653, size: 64, offset: 192)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_v_luma_intra", scope: !4650, file: !3994, line: 104, baseType: !4661, size: 64, offset: 256)
!4661 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_intra_t", file: !3994, line: 97, baseType: !4662)
!4662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4663, size: 64)
!4663 = !DISubroutineType(types: !4664)
!4664 = !{null, !12, !25, !25, !25}
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_h_luma_intra", scope: !4650, file: !3994, line: 105, baseType: !4661, size: 64, offset: 320)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_v_chroma_intra", scope: !4650, file: !3994, line: 106, baseType: !4661, size: 64, offset: 384)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_h_chroma_intra", scope: !4650, file: !3994, line: 107, baseType: !4661, size: 64, offset: 448)
!4668 = !{!4669, !4670, !4671, !4672, !4673, !4674, !4675}
!4669 = !DILocalVariable(name: "h", arg: 1, scope: !3835, file: !3, line: 475, type: !3838)
!4670 = !DILocalVariable(name: "s", arg: 2, scope: !3835, file: !3, line: 475, type: !6)
!4671 = !DILocalVariable(name: "i", scope: !3835, file: !3, line: 477, type: !25)
!4672 = !DILocalVariable(name: "uuid", scope: !3835, file: !3, line: 479, type: !217)
!4673 = !DILocalVariable(name: "opts", scope: !3835, file: !3, line: 483, type: !308)
!4674 = !DILocalVariable(name: "version", scope: !3835, file: !3, line: 484, type: !308)
!4675 = !DILocalVariable(name: "length", scope: !3835, file: !3, line: 485, type: !25)
!4676 = !DILocation(line: 0, scope: !3835)
!4677 = !DILocation(line: 479, column: 19, scope: !3835)
!4678 = !DILocation(line: 483, column: 18, scope: !3835)
!4679 = !DILocation(line: 484, column: 40, scope: !3835)
!4680 = !DILocation(line: 484, column: 34, scope: !3835)
!4681 = !DILocation(line: 484, column: 21, scope: !3835)
!4682 = !DILocation(line: 487, column: 5, scope: !3835)
!4683 = !DILocation(line: 490, column: 14, scope: !3835)
!4684 = !DILocation(line: 0, scope: !726, inlinedAt: !4685)
!4685 = distinct !DILocation(line: 492, column: 5, scope: !3835)
!4686 = !DILocation(line: 90, column: 27, scope: !735, inlinedAt: !4685)
!4687 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !4685)
!4688 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !4685)
!4689 = !DILocation(line: 91, column: 12, scope: !735, inlinedAt: !4685)
!4690 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !4685)
!4691 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !4685)
!4692 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !4685)
!4693 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !4685)
!4694 = !DILocation(line: 0, scope: !752, inlinedAt: !4695)
!4695 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !4685)
!4696 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !4695)
!4697 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !4685)
!4698 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !4685)
!4699 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !4685)
!4700 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !4685)
!4701 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !4685)
!4702 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !4685)
!4703 = !DILocation(line: 494, column: 19, scope: !4704)
!4704 = distinct !DILexicalBlock(scope: !4705, file: !3, line: 494, column: 5)
!4705 = distinct !DILexicalBlock(scope: !3835, file: !3, line: 494, column: 5)
!4706 = !DILocation(line: 494, column: 5, scope: !4705)
!4707 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !4708)
!4708 = distinct !DILocation(line: 495, column: 9, scope: !4704)
!4709 = !DILocation(line: 0, scope: !726, inlinedAt: !4708)
!4710 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !4708)
!4711 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !4708)
!4712 = !DILocation(line: 90, column: 21, scope: !735, inlinedAt: !4708)
!4713 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !4708)
!4714 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !4708)
!4715 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !4708)
!4716 = !DILocation(line: 0, scope: !752, inlinedAt: !4717)
!4717 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !4708)
!4718 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !4717)
!4719 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !4708)
!4720 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !4708)
!4721 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !4708)
!4722 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !4708)
!4723 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !4708)
!4724 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !4708)
!4725 = !DILocation(line: 494, column: 36, scope: !4704)
!4726 = distinct !{!4726, !4706, !4727, !485}
!4727 = !DILocation(line: 495, column: 29, scope: !4705)
!4728 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !4729)
!4729 = distinct !DILocation(line: 496, column: 5, scope: !3835)
!4730 = !DILocation(line: 90, column: 27, scope: !735, inlinedAt: !4729)
!4731 = !DILocation(line: 494, scope: !4705)
!4732 = !DILocation(line: 496, column: 27, scope: !3835)
!4733 = !DILocation(line: 0, scope: !726, inlinedAt: !4729)
!4734 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !4729)
!4735 = !DILocation(line: 90, column: 50, scope: !735, inlinedAt: !4729)
!4736 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !4729)
!4737 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !4729)
!4738 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !4729)
!4739 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !4729)
!4740 = !DILocation(line: 0, scope: !752, inlinedAt: !4741)
!4741 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !4729)
!4742 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !4741)
!4743 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !4729)
!4744 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !4729)
!4745 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !4729)
!4746 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !4729)
!4747 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !4729)
!4748 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !4729)
!4749 = !DILocation(line: 498, column: 5, scope: !4750)
!4750 = distinct !DILexicalBlock(scope: !3835, file: !3, line: 498, column: 5)
!4751 = !DILocation(line: 500, column: 19, scope: !4752)
!4752 = distinct !DILexicalBlock(scope: !4753, file: !3, line: 500, column: 5)
!4753 = distinct !DILexicalBlock(scope: !3835, file: !3, line: 500, column: 5)
!4754 = !DILocation(line: 500, column: 5, scope: !4753)
!4755 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !4756)
!4756 = distinct !DILocation(line: 499, column: 9, scope: !4757)
!4757 = distinct !DILexicalBlock(scope: !4750, file: !3, line: 498, column: 5)
!4758 = !DILocation(line: 499, column: 25, scope: !4757)
!4759 = !DILocation(line: 0, scope: !726, inlinedAt: !4756)
!4760 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !4756)
!4761 = !DILocation(line: 90, column: 50, scope: !735, inlinedAt: !4756)
!4762 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !4756)
!4763 = !DILocation(line: 90, column: 21, scope: !735, inlinedAt: !4756)
!4764 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !4756)
!4765 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !4756)
!4766 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !4756)
!4767 = !DILocation(line: 0, scope: !752, inlinedAt: !4768)
!4768 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !4756)
!4769 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !4768)
!4770 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !4756)
!4771 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !4756)
!4772 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !4756)
!4773 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !4756)
!4774 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !4756)
!4775 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !4756)
!4776 = !DILocation(line: 498, column: 26, scope: !4757)
!4777 = !DILocation(line: 498, column: 19, scope: !4757)
!4778 = distinct !{!4778, !4749, !4779, !485}
!4779 = !DILocation(line: 499, column: 33, scope: !4750)
!4780 = !DILocation(line: 91, column: 19, scope: !735, inlinedAt: !4781)
!4781 = distinct !DILocation(line: 501, column: 9, scope: !4752)
!4782 = !DILocation(line: 501, column: 25, scope: !4752)
!4783 = !DILocation(line: 0, scope: !726, inlinedAt: !4781)
!4784 = !DILocation(line: 90, column: 36, scope: !735, inlinedAt: !4781)
!4785 = !DILocation(line: 90, column: 50, scope: !735, inlinedAt: !4781)
!4786 = !DILocation(line: 90, column: 48, scope: !735, inlinedAt: !4781)
!4787 = !DILocation(line: 90, column: 21, scope: !735, inlinedAt: !4781)
!4788 = !DILocation(line: 92, column: 23, scope: !747, inlinedAt: !4781)
!4789 = !DILocation(line: 92, column: 13, scope: !735, inlinedAt: !4781)
!4790 = !DILocation(line: 97, column: 56, scope: !750, inlinedAt: !4781)
!4791 = !DILocation(line: 0, scope: !752, inlinedAt: !4792)
!4792 = distinct !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !4781)
!4793 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !4792)
!4794 = !DILocation(line: 97, column: 32, scope: !750, inlinedAt: !4781)
!4795 = !DILocation(line: 97, column: 28, scope: !750, inlinedAt: !4781)
!4796 = !DILocation(line: 97, column: 30, scope: !750, inlinedAt: !4781)
!4797 = !DILocation(line: 99, column: 23, scope: !750, inlinedAt: !4781)
!4798 = !DILocation(line: 100, column: 18, scope: !750, inlinedAt: !4781)
!4799 = !DILocation(line: 101, column: 9, scope: !750, inlinedAt: !4781)
!4800 = !DILocation(line: 500, column: 33, scope: !4752)
!4801 = distinct !{!4801, !4754, !4802, !485}
!4802 = !DILocation(line: 501, column: 36, scope: !4753)
!4803 = !DILocation(line: 143, column: 14, scope: !1885, inlinedAt: !4804)
!4804 = distinct !DILocation(line: 251, column: 5, scope: !2784, inlinedAt: !4805)
!4805 = distinct !DILocation(line: 503, column: 5, scope: !3835)
!4806 = !DILocation(line: 141, column: 17, scope: !1885, inlinedAt: !4804)
!4807 = !DILocation(line: 0, scope: !2784, inlinedAt: !4805)
!4808 = !DILocation(line: 0, scope: !1885, inlinedAt: !4804)
!4809 = !DILocation(line: 142, column: 17, scope: !1885, inlinedAt: !4804)
!4810 = !DILocation(line: 144, column: 19, scope: !1897, inlinedAt: !4804)
!4811 = !DILocation(line: 144, column: 9, scope: !1885, inlinedAt: !4804)
!4812 = !DILocation(line: 154, column: 42, scope: !1900, inlinedAt: !4804)
!4813 = !DILocation(line: 0, scope: !1902, inlinedAt: !4814)
!4814 = distinct !DILocation(line: 154, column: 28, scope: !1900, inlinedAt: !4804)
!4815 = !DILocation(line: 150, column: 5, scope: !1902, inlinedAt: !4814)
!4816 = !DILocation(line: 154, column: 24, scope: !1900, inlinedAt: !4804)
!4817 = !DILocation(line: 154, column: 26, scope: !1900, inlinedAt: !4804)
!4818 = !DILocation(line: 156, column: 14, scope: !1900, inlinedAt: !4804)
!4819 = !DILocation(line: 158, column: 5, scope: !1900, inlinedAt: !4804)
!4820 = !DILocation(line: 80, column: 54, scope: !2805, inlinedAt: !4821)
!4821 = distinct !DILocation(line: 252, column: 5, scope: !2784, inlinedAt: !4805)
!4822 = !DILocation(line: 0, scope: !2805, inlinedAt: !4821)
!4823 = !DILocation(line: 80, column: 48, scope: !2805, inlinedAt: !4821)
!4824 = !DILocation(line: 0, scope: !752, inlinedAt: !4825)
!4825 = distinct !DILocation(line: 80, column: 24, scope: !2805, inlinedAt: !4821)
!4826 = !DILocation(line: 155, column: 5, scope: !752, inlinedAt: !4825)
!4827 = !DILocation(line: 80, column: 20, scope: !2805, inlinedAt: !4821)
!4828 = !DILocation(line: 80, column: 22, scope: !2805, inlinedAt: !4821)
!4829 = !DILocation(line: 82, column: 35, scope: !2805, inlinedAt: !4821)
!4830 = !DILocation(line: 82, column: 23, scope: !2805, inlinedAt: !4821)
!4831 = !DILocation(line: 82, column: 10, scope: !2805, inlinedAt: !4821)
!4832 = !DILocation(line: 83, column: 15, scope: !2805, inlinedAt: !4821)
!4833 = !DILocation(line: 505, column: 5, scope: !3835)
!4834 = !DILocation(line: 506, column: 5, scope: !3835)
!4835 = !DILocation(line: 507, column: 1, scope: !3835)
!4836 = !DISubprogram(name: "x264_param2string", scope: !3841, file: !3841, line: 96, type: !4837, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4839)
!4837 = !DISubroutineType(types: !4838)
!4838 = !{!308, !265, !25}
!4839 = !{}
!4840 = !DISubprogram(name: "x264_malloc", scope: !3841, file: !3841, line: 84, type: !4841, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4839)
!4841 = !DISubroutineType(types: !4842)
!4842 = !{!321, !25}
!4843 = !DISubprogram(name: "strlen", scope: !4844, file: !4844, line: 407, type: !4845, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4839)
!4844 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!4845 = !DISubroutineType(types: !4846)
!4846 = !{!3851, !322}
!4847 = !DISubprogram(name: "sprintf", scope: !4848, file: !4848, line: 358, type: !4849, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4839)
!4848 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!4849 = !DISubroutineType(types: !4850)
!4850 = !{!25, !4851, !4852, null}
!4851 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !308)
!4852 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !322)
!4853 = !DISubprogram(name: "x264_free", scope: !3841, file: !3841, line: 86, type: !4854, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4839)
!4854 = !DISubroutineType(types: !4855)
!4855 = !{null, !321}
!4856 = distinct !DISubprogram(name: "x264_validate_levels", scope: !3, file: !3, line: 537, type: !4857, scopeLine: 538, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !96, retainedNodes: !4859)
!4857 = !DISubroutineType(types: !4858)
!4858 = !{!25, !3838, !25}
!4859 = !{!4860, !4861, !4862, !4863, !4864, !4865, !4866}
!4860 = !DILocalVariable(name: "h", arg: 1, scope: !4856, file: !3, line: 537, type: !3838)
!4861 = !DILocalVariable(name: "verbose", arg: 2, scope: !4856, file: !3, line: 537, type: !25)
!4862 = !DILocalVariable(name: "ret", scope: !4856, file: !3, line: 539, type: !25)
!4863 = !DILocalVariable(name: "mbs", scope: !4856, file: !3, line: 540, type: !25)
!4864 = !DILocalVariable(name: "dpb", scope: !4856, file: !3, line: 541, type: !25)
!4865 = !DILocalVariable(name: "cbp_factor", scope: !4856, file: !3, line: 542, type: !25)
!4866 = !DILocalVariable(name: "l", scope: !4856, file: !3, line: 544, type: !4867)
!4867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!4868 = !DILocation(line: 0, scope: !4856)
!4869 = !DILocation(line: 540, column: 18, scope: !4856)
!4870 = !{!4871, !429, i64 3200}
!4871 = !{!"x264_t", !427, i64 0, !420, i64 616, !739, i64 1640, !419, i64 1648, !419, i64 1652, !4872, i64 1656, !419, i64 1920, !419, i64 1924, !419, i64 1928, !419, i64 1932, !419, i64 1936, !419, i64 1940, !419, i64 1944, !419, i64 1948, !419, i64 1952, !420, i64 1956, !429, i64 3200, !420, i64 3208, !429, i64 3328, !419, i64 3336, !420, i64 3344, !420, i64 3376, !420, i64 3392, !420, i64 3424, !420, i64 3440, !420, i64 3472, !420, i64 3488, !420, i64 3520, !429, i64 3536, !420, i64 3552, !420, i64 4064, !420, i64 4320, !4873, i64 4328, !4874, i64 4720, !4875, i64 5232, !429, i64 9208, !429, i64 9216, !419, i64 9224, !420, i64 9232, !419, i64 9384, !420, i64 9392, !420, i64 9544, !4876, i64 9552, !4877, i64 10880, !429, i64 20896, !4880, i64 20904, !420, i64 23896, !420, i64 23952, !420, i64 24008, !420, i64 24104, !4883, i64 24200, !4884, i64 25200, !4885, i64 25424, !4886, i64 25520, !4887, i64 25560, !4888, i64 25696}
!4872 = !{!"", !419, i64 0, !420, i64 8, !419, i64 200, !429, i64 208, !738, i64 216, !419, i64 256}
!4873 = !{!"", !429, i64 0, !429, i64 8, !419, i64 16, !419, i64 20, !419, i64 24, !419, i64 28, !419, i64 32, !419, i64 36, !419, i64 40, !419, i64 44, !419, i64 48, !419, i64 52, !419, i64 56, !420, i64 60, !419, i64 68, !419, i64 72, !419, i64 76, !419, i64 80, !419, i64 84, !419, i64 88, !419, i64 92, !420, i64 96, !419, i64 352, !419, i64 356, !419, i64 360, !419, i64 364, !419, i64 368, !419, i64 372, !419, i64 376, !419, i64 380}
!4874 = !{!"", !419, i64 0, !419, i64 4, !419, i64 8, !419, i64 12, !429, i64 16, !429, i64 24, !429, i64 32, !419, i64 48, !420, i64 52}
!4875 = !{!"", !420, i64 0, !420, i64 536, !420, i64 1072, !429, i64 3792, !420, i64 3800, !419, i64 3944, !419, i64 3948, !419, i64 3952, !419, i64 3956, !419, i64 3960, !419, i64 3964, !419, i64 3968}
!4876 = !{!"", !420, i64 0, !420, i64 32, !420, i64 48, !420, i64 560}
!4877 = !{!"", !419, i64 0, !419, i64 4, !419, i64 8, !419, i64 12, !419, i64 16, !419, i64 20, !419, i64 24, !419, i64 28, !419, i64 32, !419, i64 36, !419, i64 40, !419, i64 44, !419, i64 48, !419, i64 52, !419, i64 56, !419, i64 60, !419, i64 64, !420, i64 68, !420, i64 76, !420, i64 84, !420, i64 92, !420, i64 100, !420, i64 108, !419, i64 116, !420, i64 120, !420, i64 136, !419, i64 200, !419, i64 204, !419, i64 208, !419, i64 212, !419, i64 216, !419, i64 220, !429, i64 224, !429, i64 232, !429, i64 240, !429, i64 248, !429, i64 256, !429, i64 264, !420, i64 272, !420, i64 288, !420, i64 304, !420, i64 320, !429, i64 832, !429, i64 840, !420, i64 848, !429, i64 896, !419, i64 904, !419, i64 908, !420, i64 912, !419, i64 928, !419, i64 932, !419, i64 936, !419, i64 940, !419, i64 944, !419, i64 948, !419, i64 952, !4878, i64 960, !4879, i64 8128, !419, i64 9632, !419, i64 9636, !419, i64 9640, !419, i64 9644, !419, i64 9648, !419, i64 9652, !419, i64 9656, !419, i64 9660, !420, i64 9664, !420, i64 9728, !420, i64 9984, !420, i64 9986}
!4878 = !{!"", !420, i64 0, !420, i64 384, !420, i64 1248, !420, i64 1504, !420, i64 1760, !420, i64 2144, !420, i64 2624, !420, i64 3136, !420, i64 3648, !419, i64 3712, !420, i64 3716, !419, i64 3732, !420, i64 3736, !420, i64 3760, !420, i64 3784, !420, i64 3808, !420, i64 3816, !420, i64 6888, !420, i64 7144}
!4879 = !{!"", !420, i64 0, !420, i64 48, !420, i64 96, !420, i64 192, !420, i64 576, !420, i64 960, !420, i64 1008, !420, i64 1392, !420, i64 1488, !419, i64 1492, !419, i64 1496}
!4880 = !{!"", !4881, i64 0, !420, i64 488, !420, i64 512, !420, i64 552, !420, i64 592, !420, i64 664, !420, i64 704, !420, i64 744, !420, i64 784, !420, i64 824, !420, i64 864, !420, i64 904, !420, i64 1664, !420, i64 1936, !420, i64 1952, !420, i64 2976, !420, i64 2984}
!4881 = !{!"", !419, i64 0, !419, i64 4, !419, i64 8, !420, i64 12, !419, i64 88, !419, i64 92, !419, i64 96, !420, i64 100, !420, i64 108, !420, i64 364, !419, i64 432, !419, i64 436, !419, i64 440, !420, i64 444, !420, i64 456, !4882, i64 480}
!4882 = !{!"double", !420, i64 0}
!4883 = !{!"", !420, i64 0, !420, i64 56, !420, i64 112, !420, i64 168, !420, i64 224, !420, i64 256, !420, i64 312, !420, i64 368, !420, i64 424, !420, i64 480, !420, i64 536, !420, i64 592, !420, i64 624, !429, i64 656, !429, i64 664, !420, i64 672, !420, i64 728, !420, i64 784, !420, i64 840, !420, i64 896, !429, i64 952, !429, i64 960, !429, i64 968, !429, i64 976, !429, i64 984, !429, i64 992}
!4884 = !{!"", !429, i64 0, !429, i64 8, !429, i64 16, !420, i64 24, !420, i64 104, !429, i64 160, !429, i64 168, !429, i64 176, !429, i64 184, !429, i64 192, !429, i64 200, !429, i64 208, !429, i64 216}
!4885 = !{!"", !429, i64 0, !429, i64 8, !429, i64 16, !429, i64 24, !429, i64 32, !429, i64 40, !429, i64 48, !429, i64 56, !429, i64 64, !429, i64 72, !429, i64 80, !429, i64 88}
!4886 = !{!"", !429, i64 0, !429, i64 8, !429, i64 16, !429, i64 24, !429, i64 32}
!4887 = !{!"", !429, i64 0, !429, i64 8, !429, i64 16, !429, i64 24, !429, i64 32, !429, i64 40, !429, i64 48, !429, i64 56, !429, i64 64, !429, i64 72, !429, i64 80, !420, i64 88}
!4888 = !{!"", !429, i64 0, !429, i64 8, !429, i64 16, !429, i64 24, !429, i64 32, !429, i64 40, !429, i64 48, !429, i64 56}
!4889 = !DILocation(line: 540, column: 23, scope: !4856)
!4890 = !DILocation(line: 540, column: 44, scope: !4856)
!4891 = !DILocation(line: 540, column: 34, scope: !4856)
!4892 = !DILocation(line: 541, column: 19, scope: !4856)
!4893 = !DILocation(line: 541, column: 35, scope: !4856)
!4894 = !DILocation(line: 541, column: 25, scope: !4856)
!4895 = !DILocation(line: 542, column: 30, scope: !4856)
!4896 = !DILocation(line: 542, column: 43, scope: !4856)
!4897 = !DILocation(line: 542, column: 22, scope: !4856)
!4898 = !DILocation(line: 545, column: 58, scope: !4856)
!4899 = !{!4871, !419, i64 24}
!4900 = !DILocation(line: 545, column: 5, scope: !4856)
!4901 = !DILocation(line: 548, column: 12, scope: !4902)
!4902 = distinct !DILexicalBlock(scope: !4856, file: !3, line: 548, column: 9)
!4903 = !{!4904, !419, i64 8}
!4904 = !{!"", !419, i64 0, !419, i64 4, !419, i64 8, !419, i64 12, !419, i64 16, !419, i64 20, !419, i64 24, !419, i64 28, !419, i64 32, !419, i64 36, !419, i64 40, !419, i64 44}
!4905 = !DILocation(line: 548, column: 23, scope: !4902)
!4906 = !DILocation(line: 549, column: 9, scope: !4902)
!4907 = !DILocation(line: 549, column: 25, scope: !4902)
!4908 = !DILocation(line: 549, column: 49, scope: !4902)
!4909 = !DILocation(line: 549, column: 28, scope: !4902)
!4910 = !DILocation(line: 550, column: 9, scope: !4902)
!4911 = !DILocation(line: 551, column: 9, scope: !4912)
!4912 = distinct !DILexicalBlock(scope: !4913, file: !3, line: 551, column: 9)
!4913 = distinct !DILexicalBlock(scope: !4902, file: !3, line: 551, column: 9)
!4914 = !DILocation(line: 551, column: 9, scope: !4913)
!4915 = !DILocation(line: 553, column: 18, scope: !4916)
!4916 = distinct !DILexicalBlock(scope: !4856, file: !3, line: 553, column: 9)
!4917 = !{!4904, !419, i64 12}
!4918 = !DILocation(line: 553, column: 13, scope: !4916)
!4919 = !DILocation(line: 553, column: 9, scope: !4856)
!4920 = !DILocation(line: 554, column: 9, scope: !4921)
!4921 = distinct !DILexicalBlock(scope: !4922, file: !3, line: 554, column: 9)
!4922 = distinct !DILexicalBlock(scope: !4916, file: !3, line: 554, column: 9)
!4923 = !DILocation(line: 554, column: 9, scope: !4922)
!4924 = !DILocation(line: 561, column: 5, scope: !4925)
!4925 = distinct !DILexicalBlock(scope: !4856, file: !3, line: 561, column: 5)
!4926 = !{!4871, !419, i64 504}
!4927 = !{!4904, !419, i64 16}
!4928 = !DILocation(line: 561, column: 5, scope: !4856)
!4929 = !DILocation(line: 561, column: 5, scope: !4930)
!4930 = distinct !DILexicalBlock(scope: !4931, file: !3, line: 561, column: 5)
!4931 = distinct !DILexicalBlock(scope: !4925, file: !3, line: 561, column: 5)
!4932 = !DILocation(line: 561, column: 5, scope: !4931)
!4933 = !DILocation(line: 562, column: 5, scope: !4934)
!4934 = distinct !DILexicalBlock(scope: !4856, file: !3, line: 562, column: 5)
!4935 = !{!4871, !419, i64 508}
!4936 = !{!4904, !419, i64 20}
!4937 = !DILocation(line: 562, column: 5, scope: !4856)
!4938 = !DILocation(line: 562, column: 5, scope: !4939)
!4939 = distinct !DILexicalBlock(scope: !4940, file: !3, line: 562, column: 5)
!4940 = distinct !DILexicalBlock(scope: !4934, file: !3, line: 562, column: 5)
!4941 = !DILocation(line: 562, column: 5, scope: !4940)
!4942 = !DILocation(line: 563, column: 5, scope: !4943)
!4943 = distinct !DILexicalBlock(scope: !4856, file: !3, line: 563, column: 5)
!4944 = !{!4871, !419, i64 412}
!4945 = !{!4904, !419, i64 24}
!4946 = !DILocation(line: 563, column: 5, scope: !4856)
!4947 = !DILocation(line: 563, column: 5, scope: !4948)
!4948 = distinct !DILexicalBlock(scope: !4949, file: !3, line: 563, column: 5)
!4949 = distinct !DILexicalBlock(scope: !4943, file: !3, line: 563, column: 5)
!4950 = !DILocation(line: 563, column: 5, scope: !4949)
!4951 = !DILocation(line: 564, column: 5, scope: !4952)
!4952 = distinct !DILexicalBlock(scope: !4856, file: !3, line: 564, column: 5)
!4953 = !{!4871, !419, i64 132}
!4954 = !{!4904, !419, i64 44}
!4955 = !DILocation(line: 564, column: 5, scope: !4856)
!4956 = !DILocation(line: 564, column: 5, scope: !4957)
!4957 = distinct !DILexicalBlock(scope: !4958, file: !3, line: 564, column: 5)
!4958 = distinct !DILexicalBlock(scope: !4952, file: !3, line: 564, column: 5)
!4959 = !DILocation(line: 564, column: 5, scope: !4958)
!4960 = !DILocation(line: 566, column: 18, scope: !4961)
!4961 = distinct !DILexicalBlock(scope: !4856, file: !3, line: 566, column: 9)
!4962 = !{!4871, !419, i64 72}
!4963 = !DILocation(line: 566, column: 28, scope: !4961)
!4964 = !DILocation(line: 566, column: 9, scope: !4856)
!4965 = !DILocation(line: 567, column: 9, scope: !4966)
!4966 = distinct !DILexicalBlock(scope: !4961, file: !3, line: 567, column: 9)
!4967 = !{!4871, !419, i64 68}
!4968 = !{!4904, !419, i64 4}
!4969 = !DILocation(line: 567, column: 9, scope: !4961)
!4970 = !DILocation(line: 567, column: 9, scope: !4971)
!4971 = distinct !DILexicalBlock(scope: !4972, file: !3, line: 567, column: 9)
!4972 = distinct !DILexicalBlock(scope: !4966, file: !3, line: 567, column: 9)
!4973 = !DILocation(line: 567, column: 9, scope: !4972)
!4974 = !DILocation(line: 568, column: 12, scope: !4975)
!4975 = distinct !DILexicalBlock(scope: !4856, file: !3, line: 568, column: 9)
!4976 = !DILocation(line: 568, column: 17, scope: !4975)
!4977 = !DILocation(line: 568, column: 44, scope: !4975)
!4978 = !{!4904, !419, i64 40}
!4979 = !DILocation(line: 568, column: 39, scope: !4975)
!4980 = !DILocation(line: 568, column: 9, scope: !4856)
!4981 = !DILocation(line: 569, column: 9, scope: !4982)
!4982 = distinct !DILexicalBlock(scope: !4983, file: !3, line: 569, column: 9)
!4983 = distinct !DILexicalBlock(scope: !4975, file: !3, line: 569, column: 9)
!4984 = !DILocation(line: 569, column: 9, scope: !4983)
!4985 = !DILocation(line: 572, column: 5, scope: !4856)
!4986 = !DISubprogram(name: "x264_log", scope: !3841, file: !3841, line: 99, type: !4987, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4839)
!4987 = !DISubroutineType(types: !4988)
!4988 = !{null, !3838, !25, !322, null}
