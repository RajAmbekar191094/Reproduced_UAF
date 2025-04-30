; ModuleID = 'x264.c'
source_filename = "x264.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct.x264_picture_t = type { i32, i32, i64, %struct.x264_image_t }
%struct.x264_image_t = type { i32, i32, [4 x i32], [4 x ptr] }
%struct.x264_param_t = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [16 x i8], [16 x i8], [16 x i8], [16 x i8], [64 x i8], [64 x i8], ptr, ptr, i32, i32, ptr, %struct.anon.0, %struct.anon.1, i32, i32, i32 }
%struct.anon = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.0 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, [2 x i32], i32, i32 }
%struct.anon.1 = type { i32, i32, i32, i32, i32, i32, float, float, i32, i32, float, float, float, i32, float, i32, ptr, i32, ptr, float, float, float, ptr, i32, ptr }
%struct.cli_opt_t = type { i32, i32, ptr, ptr, ptr }
%struct.x264_nal_t = type { i32, i32, i32, ptr }

@mux_buffer = dso_local local_unnamed_addr global ptr null, align 8, !dbg !0
@mux_buffer_size = dso_local local_unnamed_addr global i32 0, align 4, !dbg !17
@p_open_infile = dso_local local_unnamed_addr global ptr null, align 8, !dbg !24
@p_get_frame_total = dso_local local_unnamed_addr global ptr null, align 8, !dbg !183
@p_read_frame = dso_local local_unnamed_addr global ptr null, align 8, !dbg !188
@p_close_infile = dso_local local_unnamed_addr global ptr null, align 8, !dbg !213
@b_ctrl_c = internal unnamed_addr global i1 false, align 4, !dbg !1184
@p_open_outfile = internal unnamed_addr global ptr null, align 8, !dbg !659
@p_set_outfile_param = internal unnamed_addr global ptr null, align 8, !dbg !664
@p_write_nalu = internal unnamed_addr global ptr null, align 8, !dbg !669
@p_set_eop = internal unnamed_addr global ptr null, align 8, !dbg !674
@p_close_outfile = internal unnamed_addr global ptr null, align 8, !dbg !679
@Parse.long_options = internal global [101 x %struct.option] [%struct.option { ptr @.str.1, i32 0, ptr null, i32 104 }, %struct.option { ptr @.str.2, i32 0, ptr null, i32 263 }, %struct.option { ptr @.str.3, i32 0, ptr null, i32 86 }, %struct.option { ptr @.str.4, i32 1, ptr null, i32 66 }, %struct.option { ptr @.str.5, i32 1, ptr null, i32 98 }, %struct.option { ptr @.str.6, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.7, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.8, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.9, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.10, i32 1, ptr null, i32 105 }, %struct.option { ptr @.str.11, i32 1, ptr null, i32 73 }, %struct.option { ptr @.str.12, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.13, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.14, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.15, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.16, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.17, i32 1, ptr null, i32 102 }, %struct.option { ptr @.str.18, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.19, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.20, i32 1, ptr null, i32 113 }, %struct.option { ptr @.str.21, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.22, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.23, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.24, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.25, i32 1, ptr null, i32 114 }, %struct.option { ptr @.str.26, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.27, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.28, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.29, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.30, i32 1, ptr null, i32 256 }, %struct.option { ptr @.str.31, i32 1, ptr null, i32 257 }, %struct.option { ptr @.str.32, i32 1, ptr null, i32 111 }, %struct.option { ptr @.str.33, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.34, i32 1, ptr null, i32 65 }, %struct.option { ptr @.str.35, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.36, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.37, i32 0, ptr null, i32 119 }, %struct.option { ptr @.str.38, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.39, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.40, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.41, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.42, i32 1, ptr null, i32 109 }, %struct.option { ptr @.str.43, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.44, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.45, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.46, i32 0, ptr null, i32 56 }, %struct.option { ptr @.str.47, i32 1, ptr null, i32 116 }, %struct.option { ptr @.str.48, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.49, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.50, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.51, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.52, i32 1, ptr null, i32 48 }, %struct.option { ptr @.str.53, i32 1, ptr null, i32 48 }, %struct.option { ptr @.str.54, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.55, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.56, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.57, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.58, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.59, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.60, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.61, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.62, i32 1, ptr null, i32 112 }, %struct.option { ptr @.str.63, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.64, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.65, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.66, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.67, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.68, i32 1, ptr null, i32 258 }, %struct.option { ptr @.str.69, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.70, i32 0, ptr null, i32 259 }, %struct.option { ptr @.str.71, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.72, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.73, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.74, i32 0, ptr null, i32 260 }, %struct.option { ptr @.str.75, i32 0, ptr null, i32 118 }, %struct.option { ptr @.str.76, i32 0, ptr null, i32 261 }, %struct.option { ptr @.str.77, i32 0, ptr null, i32 262 }, %struct.option { ptr @.str.78, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.79, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.80, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.81, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.82, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.83, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.84, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.85, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.86, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.87, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.88, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.89, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.90, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.91, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.92, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.93, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.94, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.95, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.96, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.97, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.98, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.99, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.100, i32 1, ptr null, i32 0 }, %struct.option zeroinitializer], align 16, !dbg !463
@.str.1 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !219
@.str.2 = private unnamed_addr constant [9 x i8] c"longhelp\00", align 1, !dbg !224
@.str.3 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !229
@.str.4 = private unnamed_addr constant [8 x i8] c"bitrate\00", align 1, !dbg !234
@.str.5 = private unnamed_addr constant [8 x i8] c"bframes\00", align 1, !dbg !236
@.str.6 = private unnamed_addr constant [8 x i8] c"b-adapt\00", align 1, !dbg !238
@.str.7 = private unnamed_addr constant [11 x i8] c"no-b-adapt\00", align 1, !dbg !240
@.str.8 = private unnamed_addr constant [7 x i8] c"b-bias\00", align 1, !dbg !245
@.str.9 = private unnamed_addr constant [10 x i8] c"b-pyramid\00", align 1, !dbg !250
@.str.10 = private unnamed_addr constant [11 x i8] c"min-keyint\00", align 1, !dbg !255
@.str.11 = private unnamed_addr constant [7 x i8] c"keyint\00", align 1, !dbg !257
@.str.12 = private unnamed_addr constant [9 x i8] c"scenecut\00", align 1, !dbg !259
@.str.13 = private unnamed_addr constant [13 x i8] c"pre-scenecut\00", align 1, !dbg !261
@.str.14 = private unnamed_addr constant [3 x i8] c"nf\00", align 1, !dbg !266
@.str.15 = private unnamed_addr constant [11 x i8] c"no-deblock\00", align 1, !dbg !271
@.str.16 = private unnamed_addr constant [7 x i8] c"filter\00", align 1, !dbg !273
@.str.17 = private unnamed_addr constant [8 x i8] c"deblock\00", align 1, !dbg !275
@.str.18 = private unnamed_addr constant [11 x i8] c"interlaced\00", align 1, !dbg !277
@.str.19 = private unnamed_addr constant [9 x i8] c"no-cabac\00", align 1, !dbg !279
@.str.20 = private unnamed_addr constant [3 x i8] c"qp\00", align 1, !dbg !281
@.str.21 = private unnamed_addr constant [6 x i8] c"qpmin\00", align 1, !dbg !283
@.str.22 = private unnamed_addr constant [6 x i8] c"qpmax\00", align 1, !dbg !288
@.str.23 = private unnamed_addr constant [7 x i8] c"qpstep\00", align 1, !dbg !290
@.str.24 = private unnamed_addr constant [4 x i8] c"crf\00", align 1, !dbg !292
@.str.25 = private unnamed_addr constant [4 x i8] c"ref\00", align 1, !dbg !295
@.str.26 = private unnamed_addr constant [4 x i8] c"asm\00", align 1, !dbg !297
@.str.27 = private unnamed_addr constant [7 x i8] c"no-asm\00", align 1, !dbg !299
@.str.28 = private unnamed_addr constant [4 x i8] c"sar\00", align 1, !dbg !301
@.str.29 = private unnamed_addr constant [4 x i8] c"fps\00", align 1, !dbg !303
@.str.30 = private unnamed_addr constant [7 x i8] c"frames\00", align 1, !dbg !305
@.str.31 = private unnamed_addr constant [5 x i8] c"seek\00", align 1, !dbg !307
@.str.32 = private unnamed_addr constant [7 x i8] c"output\00", align 1, !dbg !309
@.str.33 = private unnamed_addr constant [8 x i8] c"analyse\00", align 1, !dbg !311
@.str.34 = private unnamed_addr constant [11 x i8] c"partitions\00", align 1, !dbg !313
@.str.35 = private unnamed_addr constant [7 x i8] c"direct\00", align 1, !dbg !315
@.str.36 = private unnamed_addr constant [11 x i8] c"direct-8x8\00", align 1, !dbg !317
@.str.37 = private unnamed_addr constant [8 x i8] c"weightb\00", align 1, !dbg !319
@.str.38 = private unnamed_addr constant [3 x i8] c"me\00", align 1, !dbg !321
@.str.39 = private unnamed_addr constant [8 x i8] c"merange\00", align 1, !dbg !323
@.str.40 = private unnamed_addr constant [8 x i8] c"mvrange\00", align 1, !dbg !325
@.str.41 = private unnamed_addr constant [15 x i8] c"mvrange-thread\00", align 1, !dbg !327
@.str.42 = private unnamed_addr constant [6 x i8] c"subme\00", align 1, !dbg !332
@.str.43 = private unnamed_addr constant [7 x i8] c"psy-rd\00", align 1, !dbg !334
@.str.44 = private unnamed_addr constant [11 x i8] c"mixed-refs\00", align 1, !dbg !336
@.str.45 = private unnamed_addr constant [13 x i8] c"no-chroma-me\00", align 1, !dbg !338
@.str.46 = private unnamed_addr constant [7 x i8] c"8x8dct\00", align 1, !dbg !340
@.str.47 = private unnamed_addr constant [8 x i8] c"trellis\00", align 1, !dbg !342
@.str.48 = private unnamed_addr constant [14 x i8] c"no-fast-pskip\00", align 1, !dbg !344
@.str.49 = private unnamed_addr constant [16 x i8] c"no-dct-decimate\00", align 1, !dbg !349
@.str.50 = private unnamed_addr constant [12 x i8] c"aq-strength\00", align 1, !dbg !352
@.str.51 = private unnamed_addr constant [8 x i8] c"aq-mode\00", align 1, !dbg !357
@.str.52 = private unnamed_addr constant [15 x i8] c"deadzone-inter\00", align 1, !dbg !359
@.str.53 = private unnamed_addr constant [15 x i8] c"deadzone-intra\00", align 1, !dbg !361
@.str.54 = private unnamed_addr constant [6 x i8] c"level\00", align 1, !dbg !363
@.str.55 = private unnamed_addr constant [8 x i8] c"ratetol\00", align 1, !dbg !365
@.str.56 = private unnamed_addr constant [12 x i8] c"vbv-maxrate\00", align 1, !dbg !367
@.str.57 = private unnamed_addr constant [12 x i8] c"vbv-bufsize\00", align 1, !dbg !369
@.str.58 = private unnamed_addr constant [9 x i8] c"vbv-init\00", align 1, !dbg !371
@.str.59 = private unnamed_addr constant [8 x i8] c"ipratio\00", align 1, !dbg !373
@.str.60 = private unnamed_addr constant [8 x i8] c"pbratio\00", align 1, !dbg !375
@.str.61 = private unnamed_addr constant [17 x i8] c"chroma-qp-offset\00", align 1, !dbg !377
@.str.62 = private unnamed_addr constant [5 x i8] c"pass\00", align 1, !dbg !382
@.str.63 = private unnamed_addr constant [6 x i8] c"stats\00", align 1, !dbg !384
@.str.64 = private unnamed_addr constant [6 x i8] c"qcomp\00", align 1, !dbg !386
@.str.65 = private unnamed_addr constant [6 x i8] c"qblur\00", align 1, !dbg !388
@.str.66 = private unnamed_addr constant [9 x i8] c"cplxblur\00", align 1, !dbg !390
@.str.67 = private unnamed_addr constant [6 x i8] c"zones\00", align 1, !dbg !392
@.str.68 = private unnamed_addr constant [7 x i8] c"qpfile\00", align 1, !dbg !394
@.str.69 = private unnamed_addr constant [8 x i8] c"threads\00", align 1, !dbg !396
@.str.70 = private unnamed_addr constant [13 x i8] c"thread-input\00", align 1, !dbg !398
@.str.71 = private unnamed_addr constant [18 x i8] c"non-deterministic\00", align 1, !dbg !400
@.str.72 = private unnamed_addr constant [8 x i8] c"no-psnr\00", align 1, !dbg !405
@.str.73 = private unnamed_addr constant [8 x i8] c"no-ssim\00", align 1, !dbg !407
@.str.74 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1, !dbg !409
@.str.75 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1, !dbg !411
@.str.76 = private unnamed_addr constant [9 x i8] c"progress\00", align 1, !dbg !413
@.str.77 = private unnamed_addr constant [10 x i8] c"visualize\00", align 1, !dbg !415
@.str.78 = private unnamed_addr constant [9 x i8] c"dump-yuv\00", align 1, !dbg !417
@.str.79 = private unnamed_addr constant [7 x i8] c"sps-id\00", align 1, !dbg !419
@.str.80 = private unnamed_addr constant [4 x i8] c"aud\00", align 1, !dbg !421
@.str.81 = private unnamed_addr constant [3 x i8] c"nr\00", align 1, !dbg !423
@.str.82 = private unnamed_addr constant [4 x i8] c"cqm\00", align 1, !dbg !425
@.str.83 = private unnamed_addr constant [8 x i8] c"cqmfile\00", align 1, !dbg !427
@.str.84 = private unnamed_addr constant [5 x i8] c"cqm4\00", align 1, !dbg !429
@.str.85 = private unnamed_addr constant [6 x i8] c"cqm4i\00", align 1, !dbg !431
@.str.86 = private unnamed_addr constant [7 x i8] c"cqm4iy\00", align 1, !dbg !433
@.str.87 = private unnamed_addr constant [7 x i8] c"cqm4ic\00", align 1, !dbg !435
@.str.88 = private unnamed_addr constant [6 x i8] c"cqm4p\00", align 1, !dbg !437
@.str.89 = private unnamed_addr constant [7 x i8] c"cqm4py\00", align 1, !dbg !439
@.str.90 = private unnamed_addr constant [7 x i8] c"cqm4pc\00", align 1, !dbg !441
@.str.91 = private unnamed_addr constant [5 x i8] c"cqm8\00", align 1, !dbg !443
@.str.92 = private unnamed_addr constant [6 x i8] c"cqm8i\00", align 1, !dbg !445
@.str.93 = private unnamed_addr constant [6 x i8] c"cqm8p\00", align 1, !dbg !447
@.str.94 = private unnamed_addr constant [9 x i8] c"overscan\00", align 1, !dbg !449
@.str.95 = private unnamed_addr constant [12 x i8] c"videoformat\00", align 1, !dbg !451
@.str.96 = private unnamed_addr constant [10 x i8] c"fullrange\00", align 1, !dbg !453
@.str.97 = private unnamed_addr constant [10 x i8] c"colorprim\00", align 1, !dbg !455
@.str.98 = private unnamed_addr constant [9 x i8] c"transfer\00", align 1, !dbg !457
@.str.99 = private unnamed_addr constant [12 x i8] c"colormatrix\00", align 1, !dbg !459
@.str.100 = private unnamed_addr constant [10 x i8] c"chromaloc\00", align 1, !dbg !461
@.str.101 = private unnamed_addr constant [30 x i8] c"8A:B:b:f:hI:i:m:o:p:q:r:t:Vvw\00", align 1, !dbg !568
@.str.103 = private unnamed_addr constant [23 x i8] c"built on Apr 30 2025, \00", align 1, !dbg !578
@optarg = external local_unnamed_addr global ptr, align 8
@.str.105 = private unnamed_addr constant [5 x i8] c".mp4\00", align 1, !dbg !588
@stderr = external local_unnamed_addr global ptr, align 8
@.str.106 = private unnamed_addr constant [52 x i8] c"x264 [error]: not compiled with MP4 output support\0A\00", align 1, !dbg !590
@.str.107 = private unnamed_addr constant [5 x i8] c".mkv\00", align 1, !dbg !595
@.str.108 = private unnamed_addr constant [2 x i8] c"-\00", align 1, !dbg !597
@stdout = external local_unnamed_addr global ptr, align 8
@.str.109 = private unnamed_addr constant [43 x i8] c"x264 [error]: can't open output file `%s'\0A\00", align 1, !dbg !600
@.str.110 = private unnamed_addr constant [2 x i8] c"r\00", align 1, !dbg !605
@.str.111 = private unnamed_addr constant [31 x i8] c"x264 [error]: can't open `%s'\0A\00", align 1, !dbg !607
@.str.112 = private unnamed_addr constant [57 x i8] c"x264 [warning]: not compiled with visualization support\0A\00", align 1, !dbg !612
@optind = external local_unnamed_addr global i32, align 4
@.str.113 = private unnamed_addr constant [41 x i8] c"x264 [error]: invalid argument: %s = %s\0A\00", align 1, !dbg !617
@.str.114 = private unnamed_addr constant [66 x i8] c"x264 [error]: No %s file. Run x264 --help for a list of options.\0A\00", align 1, !dbg !622
@.str.115 = private unnamed_addr constant [6 x i8] c"input\00", align 1, !dbg !627
@.str.116 = private unnamed_addr constant [5 x i8] c".avi\00", align 1, !dbg !629
@.str.117 = private unnamed_addr constant [5 x i8] c".avs\00", align 1, !dbg !631
@.str.118 = private unnamed_addr constant [5 x i8] c".y4m\00", align 1, !dbg !633
@.str.119 = private unnamed_addr constant [6 x i8] c"%ux%u\00", align 1, !dbg !635
@.str.120 = private unnamed_addr constant [36 x i8] c"x264 [info]: file name gives %dx%d\0A\00", align 1, !dbg !637
@.str.121 = private unnamed_addr constant [51 x i8] c"x264 [error]: Rawyuv input requires a resolution.\0A\00", align 1, !dbg !642
@.str.122 = private unnamed_addr constant [52 x i8] c"x264 [error]: not compiled with AVIS input support\0A\00", align 1, !dbg !647
@.str.123 = private unnamed_addr constant [46 x i8] c"x264 [error]: could not open input file '%s'\0A\00", align 1, !dbg !649
@.str.124 = private unnamed_addr constant [39 x i8] c"x264 [warning]: threaded input failed\0A\00", align 1, !dbg !654
@.str.125 = private unnamed_addr constant [480 x i8] c"x264 core:%d%s\0ASyntax: x264 [options] -o outfile infile [widthxheight]\0A\0AInfile can be raw YUV 4:2:0 (in which case resolution is required),\0A  or YUV4MPEG 4:2:0 (*.y4m),\0A  or AVI or Avisynth if compiled with AVIS support (%s).\0AOutfile type is selected by filename:\0A .264 -> Raw bytestream\0A .mkv -> Matroska\0A .mp4 -> MP4 if compiled with GPAC support (%s)\0A\0AOptions:\0A\0A  -h, --help                  List the more commonly used options\0A      --longhelp              List all options\0A\0A\00", align 1, !dbg !681
@.str.126 = private unnamed_addr constant [16 x i8] c" r1047M f773bf0\00", align 1, !dbg !686
@.str.127 = private unnamed_addr constant [3 x i8] c"no\00", align 1, !dbg !688
@.str.130 = private unnamed_addr constant [53 x i8] c"  -I, --keyint <integer>      Maximum GOP size [%d]\0A\00", align 1, !dbg !697
@.str.131 = private unnamed_addr constant [53 x i8] c"  -i, --min-keyint <integer>  Minimum GOP size [%d]\0A\00", align 1, !dbg !702
@.str.132 = private unnamed_addr constant [78 x i8] c"      --scenecut <integer>    How aggressively to insert extra I-frames [%d]\0A\00", align 1, !dbg !704
@.str.134 = private unnamed_addr constant [71 x i8] c"  -b, --bframes <integer>     Number of B-frames between I and P [%d]\0A\00", align 1, !dbg !714
@.str.135 = private unnamed_addr constant [315 x i8] c"      --b-adapt               Adaptive B-frame decision method [%d]\0A                                  Higher values may lower threading efficiency.\0A                                  - 0: Disabled\0A                                  - 1: Fast\0A                                  - 2: Optimal (slow with high --bframes)\0A\00", align 1, !dbg !719
@.str.136 = private unnamed_addr constant [75 x i8] c"      --b-bias <integer>      Influences how often B-frames are used [%d]\0A\00", align 1, !dbg !724
@.str.139 = private unnamed_addr constant [63 x i8] c"  -r, --ref <integer>         Number of reference frames [%d]\0A\00", align 1, !dbg !737
@.str.141 = private unnamed_addr constant [79 x i8] c"  -f, --deblock <alpha:beta>  Loop filter AlphaC0 and Beta parameters [%d:%d]\0A\00", align 1, !dbg !744
@.str.144 = private unnamed_addr constant [56 x i8] c"  -q, --qp <integer>          Set QP (0=lossless) [%d]\0A\00", align 1, !dbg !756
@.str.147 = private unnamed_addr constant [63 x i8] c"      --vbv-maxrate <integer> Max local bitrate (kbit/s) [%d]\0A\00", align 1, !dbg !768
@.str.148 = private unnamed_addr constant [85 x i8] c"      --vbv-bufsize <integer> Enable CBR and set size of the VBV buffer (kbit) [%d]\0A\00", align 1, !dbg !770
@.str.149 = private unnamed_addr constant [67 x i8] c"      --vbv-init <float>      Initial VBV buffer occupancy [%.1f]\0A\00", align 1, !dbg !775
@.str.150 = private unnamed_addr constant [47 x i8] c"      --qpmin <integer>       Set min QP [%d]\0A\00", align 1, !dbg !780
@.str.151 = private unnamed_addr constant [47 x i8] c"      --qpmax <integer>       Set max QP [%d]\0A\00", align 1, !dbg !785
@.str.152 = private unnamed_addr constant [52 x i8] c"      --qpstep <integer>      Set max QP step [%d]\0A\00", align 1, !dbg !787
@.str.153 = private unnamed_addr constant [74 x i8] c"      --ratetol <float>       Allowed variance of average bitrate [%.1f]\0A\00", align 1, !dbg !789
@.str.154 = private unnamed_addr constant [64 x i8] c"      --ipratio <float>       QP factor between I and P [%.2f]\0A\00", align 1, !dbg !794
@.str.155 = private unnamed_addr constant [64 x i8] c"      --pbratio <float>       QP factor between P and B [%.2f]\0A\00", align 1, !dbg !796
@.str.156 = private unnamed_addr constant [80 x i8] c"      --chroma-qp-offset <integer>  QP difference between chroma and luma [%d]\0A\00", align 1, !dbg !798
@.str.157 = private unnamed_addr constant [163 x i8] c"      --aq-mode <integer>     AQ method [%d]\0A                                  - 0: Disabled\0A                                  - 1: Variance AQ (complexity mask)\0A\00", align 1, !dbg !803
@.str.158 = private unnamed_addr constant [226 x i8] c"      --aq-strength <float>   Reduces blocking and blurring in flat and\0A                              textured areas. [%.1f]\0A                                  - 0.5: weak AQ\0A                                  - 1.5: strong AQ\0A\00", align 1, !dbg !808
@.str.160 = private unnamed_addr constant [64 x i8] c"      --stats <string>        Filename for 2 pass stats [\22%s\22]\0A\00", align 1, !dbg !818
@.str.161 = private unnamed_addr constant [83 x i8] c"      --qcomp <float>         QP curve compression: 0.0 => CBR, 1.0 => CQP [%.2f]\0A\00", align 1, !dbg !820
@.str.162 = private unnamed_addr constant [91 x i8] c"      --cplxblur <float>      Reduce fluctuations in QP (before curve compression) [%.1f]\0A\00", align 1, !dbg !825
@.str.163 = private unnamed_addr constant [90 x i8] c"      --qblur <float>         Reduce fluctuations in QP (after curve compression) [%.1f]\0A\00", align 1, !dbg !830
@.str.169 = private unnamed_addr constant [130 x i8] c"      --direct <string>       Direct MV prediction mode [\22%s\22]\0A                                  - none, spatial, temporal, auto\0A\00", align 1, !dbg !851
@x264_direct_pred_names = internal unnamed_addr constant [5 x ptr] [ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr null], align 16, !dbg !1076
@.str.170 = private unnamed_addr constant [224 x i8] c"      --direct-8x8 <-1|0|1>   Direct prediction size [%d]\0A                                  -  0: 4x4\0A                                  -  1: 8x8\0A                                  - -1: smallest possible according to level\0A\00", align 1, !dbg !856
@.str.172 = private unnamed_addr constant [77 x i8] c"      --me <string>           Integer pixel motion estimation method [\22%s\22]\0A\00", align 1, !dbg !863
@x264_motion_est_names = internal unnamed_addr constant [6 x ptr] [ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr null], align 16, !dbg !1090
@.str.175 = private unnamed_addr constant [71 x i8] c"      --merange <integer>     Maximum motion vector search range [%d]\0A\00", align 1, !dbg !875
@.str.178 = private unnamed_addr constant [81 x i8] c"  -m, --subme <integer>       Subpixel motion estimation and mode decision [%d]\0A\00", align 1, !dbg !884
@.str.181 = private unnamed_addr constant [223 x i8] c"      --psy-rd                Strength of psychovisual optimization [\22%.1f:%.1f\22]\0A                                  #1: RD (requires subme>=6)\0A                                  #2: Trellis (requires trellis, experimental)\0A\00", align 1, !dbg !899
@.str.185 = private unnamed_addr constant [274 x i8] c"  -t, --trellis <integer>     Trellis RD quantization. Requires CABAC. [%d]\0A                                  - 0: disabled\0A                                  - 1: enabled only on the final encode of a MB\0A                                  - 2: enabled on all mode decisions\0A\00", align 1, !dbg !910
@.str.188 = private unnamed_addr constant [52 x i8] c"      --nr <integer>          Noise reduction [%d]\0A\00", align 1, !dbg !922
@.str.189 = private unnamed_addr constant [89 x i8] c"      --deadzone-inter <int>  Set the size of the inter luma quantization deadzone [%d]\0A\00", align 1, !dbg !924
@.str.190 = private unnamed_addr constant [89 x i8] c"      --deadzone-intra <int>  Set the size of the intra luma quantization deadzone [%d]\0A\00", align 1, !dbg !929
@.str.202 = private unnamed_addr constant [122 x i8] c"      --overscan <string>     Specify crop overscan setting [\22%s\22]\0A                                  - undef, show, crop\0A\00", align 1, !dbg !974
@x264_overscan_names = internal unnamed_addr constant [4 x ptr] [ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr null], align 16, !dbg !1099
@.str.203 = private unnamed_addr constant [135 x i8] c"      --videoformat <string>  Specify video format [\22%s\22]\0A                                  - component, pal, ntsc, secam, mac, undef\0A\00", align 1, !dbg !979
@x264_vidformat_names = internal unnamed_addr constant [7 x ptr] [ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.240, ptr null], align 16, !dbg !1112
@.str.204 = private unnamed_addr constant [117 x i8] c"      --fullrange <string>    Specify full range samples setting [\22%s\22]\0A                                  - off, on\0A\00", align 1, !dbg !984
@x264_fullrange_names = internal unnamed_addr constant [3 x ptr] [ptr @.str.248, ptr @.str.249, ptr null], align 16, !dbg !1119
@.str.205 = private unnamed_addr constant [191 x i8] c"      --colorprim <string>    Specify color primaries [\22%s\22]\0A                                  - undef, bt709, bt470m, bt470bg\0A                                    smpte170m, smpte240m, film\0A\00", align 1, !dbg !989
@x264_colorprim_names = internal unnamed_addr constant [10 x ptr] [ptr @.str.250, ptr @.str.251, ptr @.str.240, ptr @.str.250, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @.str.255, ptr @.str.256, ptr null], align 16, !dbg !1136
@.str.206 = private unnamed_addr constant [219 x i8] c"      --transfer <string>     Specify transfer characteristics [\22%s\22]\0A                                  - undef, bt709, bt470m, bt470bg, linear,\0A                                    log100, log316, smpte170m, smpte240m\0A\00", align 1, !dbg !994
@x264_transfer_names = internal unnamed_addr constant [12 x ptr] [ptr @.str.250, ptr @.str.251, ptr @.str.240, ptr @.str.250, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @.str.255, ptr @.str.257, ptr @.str.258, ptr @.str.259, ptr null], align 16, !dbg !1145
@.str.207 = private unnamed_addr constant [199 x i8] c"      --colormatrix <string>  Specify color matrix setting [\22%s\22]\0A                                  - undef, bt709, fcc, bt470bg\0A                                    smpte170m, smpte240m, GBR, YCgCo\0A\00", align 1, !dbg !999
@x264_colmatrix_names = internal unnamed_addr constant [10 x ptr] [ptr @.str.260, ptr @.str.251, ptr @.str.240, ptr @.str.250, ptr @.str.261, ptr @.str.253, ptr @.str.254, ptr @.str.255, ptr @.str.262, ptr null], align 16, !dbg !1154
@.str.208 = private unnamed_addr constant [76 x i8] c"      --chromaloc <integer>   Specify chroma sample location (0 to 5) [%d]\0A\00", align 1, !dbg !1004
@.str.228 = private unnamed_addr constant [63 x i8] c"      --sps-id <integer>      Set SPS and PPS id numbers [%d]\0A\00", align 1, !dbg !1062
@.str.230 = private unnamed_addr constant [4 x i8] c"???\00", align 1, !dbg !1066
@.str.231 = private unnamed_addr constant [5 x i8] c"none\00", align 1, !dbg !1068
@.str.232 = private unnamed_addr constant [8 x i8] c"spatial\00", align 1, !dbg !1070
@.str.233 = private unnamed_addr constant [9 x i8] c"temporal\00", align 1, !dbg !1072
@.str.234 = private unnamed_addr constant [5 x i8] c"auto\00", align 1, !dbg !1074
@.str.235 = private unnamed_addr constant [4 x i8] c"dia\00", align 1, !dbg !1080
@.str.236 = private unnamed_addr constant [4 x i8] c"hex\00", align 1, !dbg !1082
@.str.237 = private unnamed_addr constant [4 x i8] c"umh\00", align 1, !dbg !1084
@.str.238 = private unnamed_addr constant [4 x i8] c"esa\00", align 1, !dbg !1086
@.str.239 = private unnamed_addr constant [5 x i8] c"tesa\00", align 1, !dbg !1088
@.str.240 = private unnamed_addr constant [6 x i8] c"undef\00", align 1, !dbg !1093
@.str.241 = private unnamed_addr constant [5 x i8] c"show\00", align 1, !dbg !1095
@.str.242 = private unnamed_addr constant [5 x i8] c"crop\00", align 1, !dbg !1097
@.str.243 = private unnamed_addr constant [10 x i8] c"component\00", align 1, !dbg !1102
@.str.244 = private unnamed_addr constant [4 x i8] c"pal\00", align 1, !dbg !1104
@.str.245 = private unnamed_addr constant [5 x i8] c"ntsc\00", align 1, !dbg !1106
@.str.246 = private unnamed_addr constant [6 x i8] c"secam\00", align 1, !dbg !1108
@.str.247 = private unnamed_addr constant [4 x i8] c"mac\00", align 1, !dbg !1110
@.str.248 = private unnamed_addr constant [4 x i8] c"off\00", align 1, !dbg !1115
@.str.249 = private unnamed_addr constant [3 x i8] c"on\00", align 1, !dbg !1117
@.str.250 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !1122
@.str.251 = private unnamed_addr constant [6 x i8] c"bt709\00", align 1, !dbg !1124
@.str.252 = private unnamed_addr constant [7 x i8] c"bt470m\00", align 1, !dbg !1126
@.str.253 = private unnamed_addr constant [8 x i8] c"bt470bg\00", align 1, !dbg !1128
@.str.254 = private unnamed_addr constant [10 x i8] c"smpte170m\00", align 1, !dbg !1130
@.str.255 = private unnamed_addr constant [10 x i8] c"smpte240m\00", align 1, !dbg !1132
@.str.256 = private unnamed_addr constant [5 x i8] c"film\00", align 1, !dbg !1134
@.str.257 = private unnamed_addr constant [7 x i8] c"linear\00", align 1, !dbg !1139
@.str.258 = private unnamed_addr constant [7 x i8] c"log100\00", align 1, !dbg !1141
@.str.259 = private unnamed_addr constant [7 x i8] c"log316\00", align 1, !dbg !1143
@.str.260 = private unnamed_addr constant [4 x i8] c"GBR\00", align 1, !dbg !1148
@.str.261 = private unnamed_addr constant [4 x i8] c"fcc\00", align 1, !dbg !1150
@.str.262 = private unnamed_addr constant [6 x i8] c"YCgCo\00", align 1, !dbg !1152
@.str.263 = private unnamed_addr constant [40 x i8] c"x264 [error]: x264_encoder_open failed\0A\00", align 1, !dbg !1156
@.str.264 = private unnamed_addr constant [39 x i8] c"x264 [error]: can't set outfile param\0A\00", align 1, !dbg !1161
@.str.265 = private unnamed_addr constant [66 x i8] c"x264 [%.1f%%] %d/%d frames, %.2f fps, %.2f kb/s, eta %d:%02d:%02d\00", align 1, !dbg !1163
@.str.266 = private unnamed_addr constant [36 x i8] c"x264 %d frames: %.2f fps, %.2f kb/s\00", align 1, !dbg !1165
@.str.267 = private unnamed_addr constant [6 x i8] c"%s  \0D\00", align 1, !dbg !1167
@.str.268 = private unnamed_addr constant [81 x i8] c"                                                                               \0D\00", align 1, !dbg !1169
@.str.269 = private unnamed_addr constant [27 x i8] c"aborted at input frame %d\0A\00", align 1, !dbg !1171
@.str.270 = private unnamed_addr constant [40 x i8] c"encoded %d frames, %.2f fps, %.2f kb/s\0A\00", align 1, !dbg !1176
@.str.271 = private unnamed_addr constant [10 x i8] c"%d %c %d\0A\00", align 1, !dbg !1178
@.str.272 = private unnamed_addr constant [47 x i8] c"x264 [error]: can't parse qpfile for frame %d\0A\00", align 1, !dbg !1180
@.str.273 = private unnamed_addr constant [42 x i8] c"x264 [error]: x264_encoder_encode failed\0A\00", align 1, !dbg !1182
@str = private unnamed_addr constant [23 x i8] c"PARSEC Benchmark Suite\00", align 1
@str.274 = private unnamed_addr constant [24 x i8] c"x264 0.65.1047M f773bf0\00", align 1
@str.275 = private unnamed_addr constant [18 x i8] c"gcc: Clang 16.0.0\00", align 1
@str.276 = private unnamed_addr constant [20 x i8] c"Frame-type options:\00", align 1
@str.277 = private unnamed_addr constant [63 x i8] c"      --b-pyramid             Keep some B-frames as references\00", align 1
@str.278 = private unnamed_addr constant [44 x i8] c"      --no-cabac              Disable CABAC\00", align 1
@str.279 = private unnamed_addr constant [58 x i8] c"      --interlaced            Enable pure-interlaced mode\00", align 1
@str.280 = private unnamed_addr constant [13 x i8] c"Ratecontrol:\00", align 1
@str.281 = private unnamed_addr constant [51 x i8] c"  -B, --bitrate <integer>     Set bitrate (kbit/s)\00", align 1
@str.282 = private unnamed_addr constant [61 x i8] c"      --crf <float>           Quality-based VBR (nominal QP)\00", align 1
@str.283 = private unnamed_addr constant [280 x i8] c"  -p, --pass <1|2|3>          Enable multipass ratecontrol\0A                                  - 1: First pass, creates stats file\0A                                  - 2: Last pass, does not overwrite stats file\0A                                  - 3: Nth pass, overwrites stats file\00", align 1
@str.284 = private unnamed_addr constant [82 x i8] c"      --zones <zone0>/<zone1>/...  Tweak the bitrate of some regions of the video\00", align 1
@str.285 = private unnamed_addr constant [10 x i8] c"Analysis:\00", align 1
@str.286 = private unnamed_addr constant [268 x i8] c"  -A, --partitions <string>   Partitions to consider [\22p8x8,b8x8,i8x8,i4x4\22]\0A                                  - p8x8, p4x4, b8x8, i8x8, i4x4\0A                                  - none, all\0A                                  (p4x4 requires p8x8. i8x8 requires --8x8dct.)\00", align 1
@str.287 = private unnamed_addr constant [63 x i8] c"  -w, --weightb               Weighted prediction for B-frames\00", align 1
@str.288 = private unnamed_addr constant [50 x i8] c"                                  - dia, hex, umh\00", align 1
@str.289 = private unnamed_addr constant [68 x i8] c"                                  decision quality: 1=fast, 9=best.\00", align 1
@str.290 = private unnamed_addr constant [73 x i8] c"      --mixed-refs            Decide references on a per partition basis\00", align 1
@str.291 = private unnamed_addr constant [62 x i8] c"  -8, --8x8dct                Adaptive spatial transform size\00", align 1
@str.292 = private unnamed_addr constant [72 x i8] c"      --no-fast-pskip         Disables early SKIP detection on P-frames\00", align 1
@str.293 = private unnamed_addr constant [76 x i8] c"      --no-dct-decimate       Disables coefficient thresholding on P-frames\00", align 1
@str.294 = private unnamed_addr constant [83 x i8] c"      --cqmfile <string>      Read custom quant matrices from a JM-compatible file\00", align 1
@str.295 = private unnamed_addr constant [14 x i8] c"Input/Output:\00", align 1
@str.296 = private unnamed_addr constant [50 x i8] c"  -o, --output                Specify output file\00", align 1
@str.297 = private unnamed_addr constant [58 x i8] c"      --sar width:height      Specify Sample Aspect Ratio\00", align 1
@str.298 = private unnamed_addr constant [48 x i8] c"      --fps <float|rational>  Specify framerate\00", align 1
@str.299 = private unnamed_addr constant [52 x i8] c"      --seek <integer>        First frame to encode\00", align 1
@str.300 = private unnamed_addr constant [65 x i8] c"      --frames <integer>      Maximum number of frames to encode\00", align 1
@str.301 = private unnamed_addr constant [68 x i8] c"      --level <string>        Specify level (as defined by Annex A)\00", align 1
@str.302 = private unnamed_addr constant [57 x i8] c"  -v, --verbose               Print stats for each frame\00", align 1
@str.303 = private unnamed_addr constant [71 x i8] c"      --progress              Show a progress indicator while encoding\00", align 1
@str.304 = private unnamed_addr constant [41 x i8] c"      --quiet                 Quiet Mode\00", align 1
@str.305 = private unnamed_addr constant [55 x i8] c"      --no-psnr               Disable PSNR computation\00", align 1
@str.306 = private unnamed_addr constant [55 x i8] c"      --no-ssim               Disable SSIM computation\00", align 1
@str.307 = private unnamed_addr constant [48 x i8] c"      --threads <integer>     Parallel encoding\00", align 1
@str.308 = private unnamed_addr constant [61 x i8] c"      --thread-input          Run Avisynth in its own thread\00", align 1
@str.309 = private unnamed_addr constant [57 x i8] c"      --aud                   Use access unit delimiters\00", align 1
@str.310 = private unnamed_addr constant [56 x i8] c"      --dump-yuv <string>     Save reconstructed frames\00", align 1
@str.311 = private unnamed_addr constant [75 x i8] c"      --visualize             Show MB types overlayed on the encoded video\00", align 1
@str.312 = private unnamed_addr constant [60 x i8] c"      --no-asm                Disable all CPU optimizations\00", align 1
@str.313 = private unnamed_addr constant [53 x i8] c"      --asm <integer>         Override CPU detection\00", align 1
@str.314 = private unnamed_addr constant [92 x i8] c"      --non-deterministic     Slightly improve quality of SMP, at the cost of repeatability\00", align 1
@str.315 = private unnamed_addr constant [75 x i8] c"the playback equipment. See doc/vui.txt for details. Use at your own risk.\00", align 1
@str.316 = private unnamed_addr constant [75 x i8] c"The VUI settings are not used by the encoder but are merely suggestions to\00", align 1
@str.317 = private unnamed_addr constant [32 x i8] c"Video Usability Info (Annex E):\00", align 1
@str.318 = private unnamed_addr constant [105 x i8] c"      --cqm4iy, --cqm4ic, --cqm4py, --cqm4pc\0A                              Set individual quant matrices\00", align 1
@str.319 = private unnamed_addr constant [111 x i8] c"      --cqm4i, --cqm4p, --cqm8i, --cqm8p\0A                              Set both luma and chroma quant matrices\00", align 1
@str.320 = private unnamed_addr constant [136 x i8] c"      --cqm8 <list>           Set all 8x8 quant matrices\0A                                  Takes a comma-separated list of 64 integers.\00", align 1
@str.321 = private unnamed_addr constant [136 x i8] c"      --cqm4 <list>           Set all 4x4 quant matrices\0A                                  Takes a comma-separated list of 16 integers.\00", align 1
@str.322 = private unnamed_addr constant [70 x i8] c"                                  Overrides any other --cqm* options.\00", align 1
@str.323 = private unnamed_addr constant [107 x i8] c"      --cqm <string>          Preset quant matrices [\22flat\22]\0A                                  - jvt, flat\00", align 1
@str.324 = private unnamed_addr constant [75 x i8] c"                                  Deadzones should be in the range 0 - 32.\00", align 1
@str.325 = private unnamed_addr constant [65 x i8] c"      --no-chroma-me          Ignore chroma in motion estimation\00", align 1
@str.326 = private unnamed_addr constant [548 x i8] c"                                  - 0: fullpel only (not recommended)\0A                                  - 1: SAD mode decision, one qpel iteration\0A                                  - 2: SATD mode decision\0A                                  - 3-5: Progressively more qpel\0A                                  - 6: RD mode decision for I/P-frames\0A                                  - 7: RD mode decision for all frames\0A                                  - 8: RD refinement for I/P-frames\0A                                  - 9: RD refinement for all frames\00", align 1
@str.327 = private unnamed_addr constant [73 x i8] c"      --mvrange-thread <int>  Minimum buffer between threads [-1 (auto)]\00", align 1
@str.328 = private unnamed_addr constant [71 x i8] c"      --mvrange <integer>     Maximum motion vector length [-1 (auto)]\00", align 1
@str.329 = private unnamed_addr constant [345 x i8] c"                                  - dia: diamond search, radius 1 (fast)\0A                                  - hex: hexagonal search, radius 2\0A                                  - umh: uneven multi-hexagon search\0A                                  - esa: exhaustive search\0A                                  - tesa: hadamard exhaustive search (slow)\00", align 1
@str.330 = private unnamed_addr constant [55 x i8] c"      --qpfile <string>       Force frametypes and QPs\00", align 1
@str.331 = private unnamed_addr constant [313 x i8] c"                              Each zone is of the form\0A                                  <start frame>,<end frame>,<option>\0A                                  where <option> is either\0A                                      q=<integer> (force QP)\0A                                  or  b=<float> (bitrate multiplier)\00", align 1
@str.332 = private unnamed_addr constant [50 x i8] c"      --no-deblock            Disable loop filter\00", align 1
@str.333 = private unnamed_addr constant [146 x i8] c"      --pre-scenecut          Faster, less precise scenecut detection.\0A                                  Required and implied by multi-threading.\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 !dbg !1192 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca %struct.x264_picture_t, align 8
  %7 = alloca [200 x i8], align 16
  %8 = alloca %struct.x264_param_t, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.x264_param_t, align 8
  %11 = alloca %struct.cli_opt_t, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1196, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata ptr %1, metadata !1197, metadata !DIExpression()), !dbg !1201
  call void @llvm.lifetime.start.p0(i64 616, ptr nonnull %10) #16, !dbg !1202
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1198, metadata !DIExpression()), !dbg !1203
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #16, !dbg !1204
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1199, metadata !DIExpression()), !dbg !1205
  %12 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str), !dbg !1206
  %13 = tail call i32 @fflush(ptr noundef null), !dbg !1207
  call void @x264_param_default(ptr noundef nonnull %10) #16, !dbg !1208
  call void @llvm.dbg.value(metadata i32 %0, metadata !535, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata ptr %1, metadata !536, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata ptr %10, metadata !537, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata ptr %11, metadata !538, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata ptr null, metadata !539, metadata !DIExpression()), !dbg !1209
  call void @llvm.lifetime.start.p0(i64 616, ptr nonnull %8) #16, !dbg !1212
  call void @llvm.dbg.declare(metadata ptr %8, metadata !540, metadata !DIExpression()), !dbg !1213
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(616) %8, ptr noundef nonnull align 8 dereferenceable(616) %10, i64 616, i1 false), !dbg !1214, !tbaa.struct !1215
  call void @llvm.dbg.value(metadata i32 0, metadata !542, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i32 0, metadata !543, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i32 0, metadata !544, metadata !DIExpression()), !dbg !1209
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false), !dbg !1225
  store ptr @open_file_yuv, ptr @p_open_infile, align 8, !dbg !1226, !tbaa !1220
  store ptr @get_frame_total_yuv, ptr @p_get_frame_total, align 8, !dbg !1227, !tbaa !1220
  store ptr @read_frame_yuv, ptr @p_read_frame, align 8, !dbg !1228, !tbaa !1220
  store ptr @close_file_yuv, ptr @p_close_infile, align 8, !dbg !1229, !tbaa !1220
  store ptr @open_file_bsf, ptr @p_open_outfile, align 8, !dbg !1230, !tbaa !1220
  store ptr @set_param_bsf, ptr @p_set_outfile_param, align 8, !dbg !1231, !tbaa !1220
  store ptr @write_nalu_bsf, ptr @p_write_nalu, align 8, !dbg !1232, !tbaa !1220
  store ptr @set_eop_bsf, ptr @p_set_eop, align 8, !dbg !1233, !tbaa !1220
  store ptr @close_file_bsf, ptr @p_close_outfile, align 8, !dbg !1234, !tbaa !1220
  %14 = getelementptr inbounds %struct.x264_param_t, ptr %10, i64 0, i32 36
  %15 = getelementptr inbounds %struct.cli_opt_t, ptr %11, i64 0, i32 4
  %16 = getelementptr inbounds %struct.x264_param_t, ptr %10, i64 0, i32 14
  %17 = getelementptr inbounds %struct.x264_param_t, ptr %10, i64 0, i32 17
  %18 = getelementptr inbounds %struct.cli_opt_t, ptr %11, i64 0, i32 3
  %19 = getelementptr inbounds %struct.cli_opt_t, ptr %11, i64 0, i32 1
  %20 = getelementptr inbounds %struct.x264_param_t, ptr %10, i64 0, i32 7
  br label %21, !dbg !1235

21:                                               ; preds = %121, %2
  %22 = phi i32 [ 0, %2 ], [ %122, %121 ], !dbg !1236
  call void @llvm.dbg.value(metadata i32 %22, metadata !544, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i32 0, metadata !545, metadata !DIExpression()), !dbg !1237
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #16, !dbg !1238
  call void @llvm.dbg.value(metadata i32 -1, metadata !549, metadata !DIExpression()), !dbg !1237
  store i32 -1, ptr %9, align 4, !dbg !1239, !tbaa !1216
  call void @llvm.dbg.value(metadata ptr %9, metadata !549, metadata !DIExpression(DW_OP_deref)), !dbg !1237
  %23 = call i32 @getopt_long(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.101, ptr noundef nonnull @Parse.long_options, ptr noundef nonnull %9) #16, !dbg !1240
  call void @llvm.dbg.value(metadata i32 %23, metadata !550, metadata !DIExpression()), !dbg !1237
  switch i32 %23, label %80 [
    i32 -1, label %123
    i32 104, label %24
    i32 263, label %25
    i32 86, label %26
    i32 256, label %30
    i32 257, label %34
    i32 111, label %38
    i32 258, label %65
    i32 259, label %121
    i32 260, label %74
    i32 118, label %75
    i32 261, label %76
    i32 262, label %77
  ], !dbg !1241

24:                                               ; preds = %21
  call fastcc void @Help(ptr noundef nonnull %8, i32 noundef 0), !dbg !1242
  call void @exit(i32 noundef 0) #17, !dbg !1243
  unreachable, !dbg !1243

25:                                               ; preds = %21
  call fastcc void @Help(ptr noundef nonnull %8, i32 noundef 1), !dbg !1244
  call void @exit(i32 noundef 0) #17, !dbg !1245
  unreachable, !dbg !1245

26:                                               ; preds = %21
  %27 = call i32 @puts(ptr nonnull dereferenceable(1) @str.274), !dbg !1246
  %28 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.103), !dbg !1247
  %29 = call i32 @puts(ptr nonnull dereferenceable(1) @str.275), !dbg !1248
  call void @exit(i32 noundef 0) #17, !dbg !1249
  unreachable, !dbg !1249

30:                                               ; preds = %21
  %31 = load ptr, ptr @optarg, align 8, !dbg !1250, !tbaa !1220
  call void @llvm.dbg.value(metadata ptr %31, metadata !1251, metadata !DIExpression()), !dbg !1257
  %32 = call i64 @strtol(ptr nocapture noundef nonnull %31, ptr noundef null, i32 noundef 10) #16, !dbg !1259
  %33 = trunc i64 %32 to i32, !dbg !1260
  store i32 %33, ptr %20, align 4, !dbg !1261, !tbaa !1262
  br label %121, !dbg !1267

34:                                               ; preds = %21
  %35 = load ptr, ptr @optarg, align 8, !dbg !1268, !tbaa !1220
  call void @llvm.dbg.value(metadata ptr %35, metadata !1251, metadata !DIExpression()), !dbg !1269
  %36 = call i64 @strtol(ptr nocapture noundef nonnull %35, ptr noundef null, i32 noundef 10) #16, !dbg !1271
  %37 = trunc i64 %36 to i32, !dbg !1272
  store i32 %37, ptr %19, align 4, !dbg !1273, !tbaa !1274
  br label %121, !dbg !1276

38:                                               ; preds = %21
  %39 = load ptr, ptr @optarg, align 8, !dbg !1277, !tbaa !1220
  %40 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %39) #18, !dbg !1279
  %41 = getelementptr i8, ptr %39, i64 -4, !dbg !1280
  %42 = getelementptr i8, ptr %41, i64 %40, !dbg !1281
  %43 = call i32 @strncasecmp(ptr noundef nonnull %42, ptr noundef nonnull @.str.105, i64 noundef 4) #18, !dbg !1282
  %44 = icmp eq i32 %43, 0, !dbg !1282
  br i1 %44, label %45, label %48, !dbg !1283

45:                                               ; preds = %38
  %46 = load ptr, ptr @stderr, align 8, !dbg !1284, !tbaa !1220
  %47 = call i64 @fwrite(ptr nonnull @.str.106, i64 51, i64 1, ptr %46) #19, !dbg !1286
  br label %120, !dbg !1287

48:                                               ; preds = %38
  %49 = call i32 @strncasecmp(ptr noundef nonnull %42, ptr noundef nonnull @.str.107, i64 noundef 4) #18, !dbg !1288
  %50 = icmp eq i32 %49, 0, !dbg !1288
  br i1 %50, label %51, label %52, !dbg !1290

51:                                               ; preds = %48
  store ptr @open_file_mkv, ptr @p_open_outfile, align 8, !dbg !1291, !tbaa !1220
  store ptr @write_nalu_mkv, ptr @p_write_nalu, align 8, !dbg !1293, !tbaa !1220
  store ptr @set_param_mkv, ptr @p_set_outfile_param, align 8, !dbg !1294, !tbaa !1220
  store ptr @set_eop_mkv, ptr @p_set_eop, align 8, !dbg !1295, !tbaa !1220
  store ptr @close_file_mkv, ptr @p_close_outfile, align 8, !dbg !1296, !tbaa !1220
  br label %52, !dbg !1297

52:                                               ; preds = %51, %48
  %53 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(2) @.str.108) #18, !dbg !1298
  %54 = icmp eq i32 %53, 0, !dbg !1298
  br i1 %54, label %55, label %57, !dbg !1300

55:                                               ; preds = %52
  %56 = load ptr, ptr @stdout, align 8, !dbg !1301, !tbaa !1220
  store ptr %56, ptr %18, align 8, !dbg !1302, !tbaa !1303
  br label %121, !dbg !1304

57:                                               ; preds = %52
  %58 = load ptr, ptr @p_open_outfile, align 8, !dbg !1305, !tbaa !1220
  %59 = call i32 %58(ptr noundef %39, ptr noundef nonnull %18) #16, !dbg !1305, !callees !1307
  %60 = icmp eq i32 %59, 0, !dbg !1305
  br i1 %60, label %121, label %61, !dbg !1308

61:                                               ; preds = %57
  %62 = load ptr, ptr @stderr, align 8, !dbg !1309, !tbaa !1220
  %63 = load ptr, ptr @optarg, align 8, !dbg !1311, !tbaa !1220
  %64 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %62, ptr noundef nonnull @.str.109, ptr noundef %63) #19, !dbg !1312
  br label %120, !dbg !1313

65:                                               ; preds = %21
  %66 = load ptr, ptr @optarg, align 8, !dbg !1314, !tbaa !1220
  %67 = call noalias ptr @fopen(ptr noundef %66, ptr noundef nonnull @.str.110), !dbg !1315
  store ptr %67, ptr %15, align 8, !dbg !1316, !tbaa !1317
  %68 = icmp eq ptr %67, null, !dbg !1318
  br i1 %68, label %69, label %73, !dbg !1320

69:                                               ; preds = %65
  %70 = load ptr, ptr @stderr, align 8, !dbg !1321, !tbaa !1220
  %71 = load ptr, ptr @optarg, align 8, !dbg !1323, !tbaa !1220
  %72 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %70, ptr noundef nonnull @.str.111, ptr noundef %71) #19, !dbg !1324
  br label %120, !dbg !1325

73:                                               ; preds = %65
  store i32 -1, ptr %16, align 8, !dbg !1326, !tbaa !1327
  store i32 0, ptr %17, align 4, !dbg !1328, !tbaa !1329
  br label %121, !dbg !1330

74:                                               ; preds = %21
  store i32 -1, ptr %14, align 8, !dbg !1331, !tbaa !1332
  br label %121, !dbg !1333

75:                                               ; preds = %21
  store i32 3, ptr %14, align 8, !dbg !1334, !tbaa !1332
  br label %121, !dbg !1335

76:                                               ; preds = %21
  store i32 1, ptr %11, align 8, !dbg !1336, !tbaa !1337
  br label %121, !dbg !1338

77:                                               ; preds = %21
  %78 = load ptr, ptr @stderr, align 8, !dbg !1339, !tbaa !1220
  %79 = call i64 @fwrite(ptr nonnull @.str.112, i64 56, i64 1, ptr %78) #19, !dbg !1340
  br label %121, !dbg !1341

80:                                               ; preds = %21
  %81 = load i32, ptr %9, align 4, !dbg !1342, !tbaa !1216
  call void @llvm.dbg.value(metadata i32 %81, metadata !549, metadata !DIExpression()), !dbg !1237
  %82 = icmp slt i32 %81, 0, !dbg !1344
  br i1 %82, label %83, label %98, !dbg !1345

83:                                               ; preds = %80
  call void @llvm.dbg.value(metadata i32 0, metadata !551, metadata !DIExpression()), !dbg !1346
  %84 = load ptr, ptr @Parse.long_options, align 16, !dbg !1347, !tbaa !1351
  %85 = icmp eq ptr %84, null, !dbg !1353
  br i1 %85, label %120, label %86, !dbg !1353

86:                                               ; preds = %83, %93
  %87 = phi i64 [ %94, %93 ], [ 0, %83 ]
  call void @llvm.dbg.value(metadata i64 %87, metadata !551, metadata !DIExpression()), !dbg !1346
  %88 = getelementptr inbounds [101 x %struct.option], ptr @Parse.long_options, i64 0, i64 %87, i32 3, !dbg !1354
  %89 = load i32, ptr %88, align 8, !dbg !1354, !tbaa !1356
  %90 = icmp eq i32 %89, %23, !dbg !1357
  br i1 %90, label %91, label %93, !dbg !1358

91:                                               ; preds = %86
  %92 = trunc i64 %87 to i32, !dbg !1237
  call void @llvm.dbg.value(metadata i32 %92, metadata !549, metadata !DIExpression()), !dbg !1237
  store i32 %92, ptr %9, align 4, !dbg !1359, !tbaa !1216
  br label %98, !dbg !1361

93:                                               ; preds = %86
  %94 = add nuw i64 %87, 1, !dbg !1362
  call void @llvm.dbg.value(metadata i64 %94, metadata !551, metadata !DIExpression()), !dbg !1346
  %95 = getelementptr inbounds [101 x %struct.option], ptr @Parse.long_options, i64 0, i64 %94, !dbg !1363
  %96 = load ptr, ptr %95, align 16, !dbg !1347, !tbaa !1351
  %97 = icmp eq ptr %96, null, !dbg !1353
  br i1 %97, label %120, label %86, !dbg !1353, !llvm.loop !1364

98:                                               ; preds = %91, %80
  %99 = phi i32 [ %81, %80 ], [ %92, %91 ], !dbg !1367
  call void @llvm.dbg.value(metadata i32 %99, metadata !549, metadata !DIExpression()), !dbg !1237
  %100 = sext i32 %99 to i64, !dbg !1368
  %101 = getelementptr inbounds [101 x %struct.option], ptr @Parse.long_options, i64 0, i64 %100, !dbg !1368
  %102 = load ptr, ptr %101, align 16, !dbg !1369, !tbaa !1351
  %103 = load ptr, ptr @optarg, align 8, !dbg !1370, !tbaa !1220
  %104 = call i32 @x264_param_parse(ptr noundef nonnull %10, ptr noundef %102, ptr noundef %103) #16, !dbg !1371
  call void @llvm.dbg.value(metadata i32 %104, metadata !545, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i32 %22, metadata !544, metadata !DIExpression()), !dbg !1209
  %105 = icmp eq i32 %104, 0, !dbg !1372
  br i1 %105, label %121, label %106, !dbg !1373

106:                                              ; preds = %98
  %107 = load i32, ptr %9, align 4, !dbg !1374, !tbaa !1216
  call void @llvm.dbg.value(metadata i32 %107, metadata !549, metadata !DIExpression()), !dbg !1237
  %108 = icmp sgt i32 %107, 0, !dbg !1375
  %109 = zext i32 %107 to i64, !dbg !1374
  %110 = getelementptr inbounds [101 x %struct.option], ptr @Parse.long_options, i64 0, i64 %109, !dbg !1374
  %111 = load i32, ptr @optind, align 4, !dbg !1374
  %112 = add nsw i32 %111, -2, !dbg !1374
  %113 = sext i32 %112 to i64, !dbg !1374
  %114 = getelementptr inbounds ptr, ptr %1, i64 %113, !dbg !1374
  %115 = select i1 %108, ptr %110, ptr %114, !dbg !1374
  %116 = load ptr, ptr %115, align 8, !dbg !1374, !tbaa !1220
  call void @llvm.dbg.value(metadata ptr %116, metadata !554, metadata !DIExpression()), !dbg !1376
  %117 = load ptr, ptr @stderr, align 8, !dbg !1377, !tbaa !1220
  %118 = load ptr, ptr @optarg, align 8, !dbg !1378, !tbaa !1220
  %119 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %117, ptr noundef nonnull @.str.113, ptr noundef %116, ptr noundef %118) #19, !dbg !1379
  br label %120

120:                                              ; preds = %83, %93, %106, %69, %61, %45
  call void @llvm.dbg.value(metadata i32 poison, metadata !544, metadata !DIExpression()), !dbg !1209
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #16, !dbg !1380
  br label %235

121:                                              ; preds = %98, %77, %76, %75, %74, %73, %57, %55, %34, %30, %21
  %122 = phi i32 [ %22, %98 ], [ 1, %21 ], [ %22, %30 ], [ %22, %34 ], [ %22, %55 ], [ %22, %57 ], [ %22, %73 ], [ %22, %74 ], [ %22, %75 ], [ %22, %76 ], [ %22, %77 ], !dbg !1236
  call void @llvm.dbg.value(metadata i32 %122, metadata !544, metadata !DIExpression()), !dbg !1209
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #16, !dbg !1380
  br label %21

123:                                              ; preds = %21
  call void @llvm.dbg.value(metadata i32 %22, metadata !544, metadata !DIExpression()), !dbg !1209
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #16, !dbg !1380
  %124 = load i32, ptr @optind, align 4, !dbg !1381, !tbaa !1216
  %125 = icmp slt i32 %124, %0, !dbg !1383
  br i1 %125, label %126, label %129, !dbg !1384

126:                                              ; preds = %123
  %127 = load ptr, ptr %18, align 8, !dbg !1385, !tbaa !1303
  %128 = icmp eq ptr %127, null, !dbg !1386
  br i1 %128, label %129, label %133, !dbg !1387

129:                                              ; preds = %126, %123
  %130 = phi ptr [ @.str.32, %126 ], [ @.str.115, %123 ], !dbg !1388
  %131 = load ptr, ptr @stderr, align 8, !dbg !1388, !tbaa !1220
  %132 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %131, ptr noundef nonnull @.str.114, ptr noundef nonnull %130) #19, !dbg !1390
  br label %235, !dbg !1391

133:                                              ; preds = %126
  %134 = add nsw i32 %124, 1, !dbg !1392
  store i32 %134, ptr @optind, align 4, !dbg !1392, !tbaa !1216
  %135 = sext i32 %124 to i64, !dbg !1393
  %136 = getelementptr inbounds ptr, ptr %1, i64 %135, !dbg !1393
  %137 = load ptr, ptr %136, align 8, !dbg !1393, !tbaa !1220
  call void @llvm.dbg.value(metadata ptr %137, metadata !539, metadata !DIExpression()), !dbg !1209
  %138 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %137) #18, !dbg !1394
  %139 = getelementptr inbounds i8, ptr %137, i64 %138, !dbg !1395
  call void @llvm.dbg.value(metadata ptr %139, metadata !541, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1209
  br label %140, !dbg !1396

140:                                              ; preds = %144, %133
  %141 = phi ptr [ %139, %133 ], [ %142, %144 ]
  %142 = getelementptr inbounds i8, ptr %141, i64 -1, !dbg !1209
  call void @llvm.dbg.value(metadata ptr %142, metadata !541, metadata !DIExpression()), !dbg !1209
  %143 = icmp ugt ptr %142, %137, !dbg !1397
  br i1 %143, label %144, label %147, !dbg !1398

144:                                              ; preds = %140
  %145 = load i8, ptr %142, align 1, !dbg !1399, !tbaa !1222
  %146 = icmp eq i8 %145, 46, !dbg !1400
  br i1 %146, label %147, label %140, !dbg !1396, !llvm.loop !1401

147:                                              ; preds = %144, %140
  %148 = call i32 @strncasecmp(ptr noundef nonnull %142, ptr noundef nonnull @.str.116, i64 noundef 4) #18, !dbg !1403
  %149 = icmp eq i32 %148, 0, !dbg !1403
  br i1 %149, label %203, label %150, !dbg !1405

150:                                              ; preds = %147
  %151 = call i32 @strncasecmp(ptr noundef nonnull %142, ptr noundef nonnull @.str.117, i64 noundef 4) #18, !dbg !1406
  %152 = icmp eq i32 %151, 0, !dbg !1406
  br i1 %152, label %203, label %153, !dbg !1407

153:                                              ; preds = %150
  call void @llvm.dbg.value(metadata i32 poison, metadata !542, metadata !DIExpression()), !dbg !1209
  %154 = call i32 @strncasecmp(ptr noundef nonnull %142, ptr noundef nonnull @.str.118, i64 noundef 4) #18, !dbg !1408
  %155 = icmp eq i32 %154, 0, !dbg !1408
  call void @llvm.dbg.value(metadata i32 poison, metadata !543, metadata !DIExpression()), !dbg !1209
  br i1 %155, label %208, label %156, !dbg !1410

156:                                              ; preds = %153
  %157 = icmp slt i32 %134, %0, !dbg !1412
  br i1 %157, label %184, label %158, !dbg !1415

158:                                              ; preds = %156
  call void @llvm.dbg.value(metadata ptr %137, metadata !541, metadata !DIExpression()), !dbg !1209
  %159 = load i8, ptr %137, align 1, !dbg !1416, !tbaa !1222
  %160 = icmp eq i8 %159, 0, !dbg !1420
  br i1 %160, label %192, label %161, !dbg !1420

161:                                              ; preds = %158
  %162 = getelementptr inbounds %struct.x264_param_t, ptr %10, i64 0, i32 3
  %163 = getelementptr inbounds %struct.x264_param_t, ptr %10, i64 0, i32 4
  br label %164, !dbg !1420

164:                                              ; preds = %180, %161
  %165 = phi i8 [ %159, %161 ], [ %182, %180 ]
  %166 = phi ptr [ %137, %161 ], [ %181, %180 ]
  call void @llvm.dbg.value(metadata ptr %166, metadata !541, metadata !DIExpression()), !dbg !1209
  %167 = add i8 %165, -48, !dbg !1421
  %168 = icmp ult i8 %167, 10, !dbg !1421
  br i1 %168, label %169, label %180, !dbg !1421

169:                                              ; preds = %164
  %170 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %166, ptr noundef nonnull @.str.119, ptr noundef nonnull %162, ptr noundef nonnull %163) #16, !dbg !1424
  %171 = icmp eq i32 %170, 2, !dbg !1425
  br i1 %171, label %172, label %180, !dbg !1426

172:                                              ; preds = %169
  %173 = load i32, ptr %14, align 8, !dbg !1427, !tbaa !1332
  %174 = icmp sgt i32 %173, 1, !dbg !1430
  br i1 %174, label %175, label %192, !dbg !1431

175:                                              ; preds = %172
  %176 = load ptr, ptr @stderr, align 8, !dbg !1432, !tbaa !1220
  %177 = load i32, ptr %162, align 4, !dbg !1433, !tbaa !1434
  %178 = load i32, ptr %163, align 8, !dbg !1435, !tbaa !1436
  %179 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %176, ptr noundef nonnull @.str.120, i32 noundef %177, i32 noundef %178) #19, !dbg !1437
  br label %192, !dbg !1437

180:                                              ; preds = %169, %164
  %181 = getelementptr inbounds i8, ptr %166, i64 1, !dbg !1438
  call void @llvm.dbg.value(metadata ptr %181, metadata !541, metadata !DIExpression()), !dbg !1209
  %182 = load i8, ptr %181, align 1, !dbg !1416, !tbaa !1222
  %183 = icmp eq i8 %182, 0, !dbg !1420
  br i1 %183, label %192, label %164, !dbg !1420, !llvm.loop !1439

184:                                              ; preds = %156
  %185 = add nsw i32 %124, 2, !dbg !1441
  store i32 %185, ptr @optind, align 4, !dbg !1441, !tbaa !1216
  %186 = sext i32 %134 to i64, !dbg !1443
  %187 = getelementptr inbounds ptr, ptr %1, i64 %186, !dbg !1443
  %188 = load ptr, ptr %187, align 8, !dbg !1443, !tbaa !1220
  %189 = getelementptr inbounds %struct.x264_param_t, ptr %10, i64 0, i32 3, !dbg !1444
  %190 = getelementptr inbounds %struct.x264_param_t, ptr %10, i64 0, i32 4, !dbg !1445
  %191 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %188, ptr noundef nonnull @.str.119, ptr noundef nonnull %189, ptr noundef nonnull %190) #16, !dbg !1446
  br label %192

192:                                              ; preds = %180, %184, %175, %172, %158
  %193 = getelementptr inbounds %struct.x264_param_t, ptr %10, i64 0, i32 3, !dbg !1447
  %194 = load i32, ptr %193, align 4, !dbg !1447, !tbaa !1434
  %195 = icmp eq i32 %194, 0, !dbg !1449
  %196 = getelementptr inbounds %struct.x264_param_t, ptr %10, i64 0, i32 4
  %197 = load i32, ptr %196, align 8
  %198 = icmp eq i32 %197, 0
  %199 = select i1 %195, i1 true, i1 %198, !dbg !1450
  br i1 %199, label %200, label %206, !dbg !1450

200:                                              ; preds = %192
  %201 = load ptr, ptr @stderr, align 8, !dbg !1451, !tbaa !1220
  %202 = call i64 @fwrite(ptr nonnull @.str.121, i64 50, i64 1, ptr %201) #19, !dbg !1453
  br label %235, !dbg !1454

203:                                              ; preds = %150, %147
  %204 = load ptr, ptr @stderr, align 8, !dbg !1455, !tbaa !1220
  %205 = call i64 @fwrite(ptr nonnull @.str.122, i64 51, i64 1, ptr %204) #19, !dbg !1459
  br label %235, !dbg !1460

206:                                              ; preds = %192
  %207 = load ptr, ptr @p_open_infile, align 8, !dbg !1461, !tbaa !1220
  br label %209, !dbg !1463

208:                                              ; preds = %153
  store ptr @open_file_y4m, ptr @p_open_infile, align 8, !dbg !1464, !tbaa !1220
  store ptr @get_frame_total_y4m, ptr @p_get_frame_total, align 8, !dbg !1467, !tbaa !1220
  store ptr @read_frame_y4m, ptr @p_read_frame, align 8, !dbg !1468, !tbaa !1220
  store ptr @close_file_y4m, ptr @p_close_infile, align 8, !dbg !1469, !tbaa !1220
  br label %209, !dbg !1470

209:                                              ; preds = %208, %206
  %210 = phi ptr [ %207, %206 ], [ @open_file_y4m, %208 ], !dbg !1461
  %211 = getelementptr inbounds %struct.cli_opt_t, ptr %11, i64 0, i32 2, !dbg !1471
  %212 = call i32 %210(ptr noundef %137, ptr noundef nonnull %211, ptr noundef nonnull %10) #16, !dbg !1461
  %213 = icmp eq i32 %212, 0, !dbg !1461
  br i1 %213, label %217, label %214, !dbg !1472

214:                                              ; preds = %209
  %215 = load ptr, ptr @stderr, align 8, !dbg !1473, !tbaa !1220
  %216 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %215, ptr noundef nonnull @.str.123, ptr noundef %137) #19, !dbg !1475
  br label %235, !dbg !1476

217:                                              ; preds = %209
  %218 = icmp eq i32 %22, 0, !dbg !1477
  br i1 %218, label %219, label %228, !dbg !1479

219:                                              ; preds = %217
  %220 = getelementptr inbounds %struct.x264_param_t, ptr %10, i64 0, i32 1, !dbg !1480
  %221 = load i32, ptr %220, align 4, !dbg !1480, !tbaa !1481
  %222 = icmp sgt i32 %221, 1, !dbg !1482
  br i1 %222, label %228, label %223, !dbg !1483

223:                                              ; preds = %219
  %224 = icmp eq i32 %221, 0, !dbg !1484
  br i1 %224, label %225, label %236, !dbg !1485

225:                                              ; preds = %223
  %226 = call i32 @x264_cpu_num_processors() #16, !dbg !1486
  %227 = icmp sgt i32 %226, 1, !dbg !1487
  br i1 %227, label %228, label %236, !dbg !1488

228:                                              ; preds = %225, %219, %217
  %229 = call i32 @open_file_thread(ptr noundef null, ptr noundef nonnull %211, ptr noundef nonnull %10) #16, !dbg !1489
  %230 = icmp eq i32 %229, 0, !dbg !1489
  br i1 %230, label %234, label %231, !dbg !1492

231:                                              ; preds = %228
  %232 = load ptr, ptr @stderr, align 8, !dbg !1493, !tbaa !1220
  %233 = call i64 @fwrite(ptr nonnull @.str.124, i64 38, i64 1, ptr %232) #19, !dbg !1495
  br label %236, !dbg !1496

234:                                              ; preds = %228
  store ptr @open_file_thread, ptr @p_open_infile, align 8, !dbg !1497, !tbaa !1220
  store ptr @get_frame_total_thread, ptr @p_get_frame_total, align 8, !dbg !1499, !tbaa !1220
  store ptr @read_frame_thread, ptr @p_read_frame, align 8, !dbg !1500, !tbaa !1220
  store ptr @close_file_thread, ptr @p_close_infile, align 8, !dbg !1501, !tbaa !1220
  br label %236

235:                                              ; preds = %129, %203, %214, %200, %120
  call void @llvm.lifetime.end.p0(i64 616, ptr nonnull %8) #16, !dbg !1502
  br label %482, !dbg !1503

236:                                              ; preds = %234, %231, %225, %223
  call void @llvm.lifetime.end.p0(i64 616, ptr nonnull %8) #16, !dbg !1502
  %237 = call ptr @signal(i32 noundef 2, ptr noundef nonnull @SigIntHandler) #16, !dbg !1504
  call void @llvm.dbg.value(metadata ptr %10, metadata !1505, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.value(metadata ptr %11, metadata !1510, metadata !DIExpression()), !dbg !2443
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %6) #16, !dbg !2445
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2417, metadata !DIExpression()), !dbg !2446
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %7) #16, !dbg !2447
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2425, metadata !DIExpression()), !dbg !2448
  %238 = load i32, ptr %14, align 8, !dbg !2449, !tbaa !1332
  %239 = icmp slt i32 %238, 3, !dbg !2450
  %240 = zext i1 %239 to i32, !dbg !2450
  %241 = load i32, ptr %11, align 8, !dbg !2451, !tbaa !1337
  %242 = and i32 %241, %240, !dbg !2451
  store i32 %242, ptr %11, align 8, !dbg !2451, !tbaa !1337
  %243 = load ptr, ptr @p_get_frame_total, align 8, !dbg !2452, !tbaa !1220
  %244 = load ptr, ptr %211, align 8, !dbg !2453, !tbaa !2454
  %245 = call i32 %243(ptr noundef %244) #16, !dbg !2452
  call void @llvm.dbg.value(metadata i32 %245, metadata !2419, metadata !DIExpression()), !dbg !2443
  %246 = load i32, ptr %19, align 4, !dbg !2455, !tbaa !1274
  %247 = sub nsw i32 %245, %246, !dbg !2456
  call void @llvm.dbg.value(metadata i32 %247, metadata !2419, metadata !DIExpression()), !dbg !2443
  %248 = icmp eq i32 %247, 0, !dbg !2457
  %249 = load i32, ptr %20, align 4, !dbg !2459, !tbaa !1262
  %250 = icmp slt i32 %249, %247
  %251 = select i1 %248, i1 true, i1 %250, !dbg !2460
  br i1 %251, label %253, label %252, !dbg !2460

252:                                              ; preds = %236
  call void @llvm.dbg.value(metadata i32 %247, metadata !2419, metadata !DIExpression()), !dbg !2443
  store i32 %247, ptr %20, align 4, !dbg !2461, !tbaa !1262
  br label %257, !dbg !2462

253:                                              ; preds = %236
  %254 = icmp sgt i32 %249, 0, !dbg !2463
  %255 = select i1 %254, i32 %249, i32 %247, !dbg !2464
  call void @llvm.dbg.value(metadata i32 %255, metadata !2419, metadata !DIExpression()), !dbg !2443
  store i32 %255, ptr %20, align 4, !dbg !2461, !tbaa !1262
  %256 = icmp eq i32 %255, 0, !dbg !2462
  br i1 %256, label %262, label %257, !dbg !2462

257:                                              ; preds = %253, %252
  %258 = phi i32 [ %247, %252 ], [ %255, %253 ]
  %259 = sdiv i32 %258, 1000, !dbg !2465
  call void @llvm.dbg.value(metadata i32 %259, metadata !2466, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata i32 1, metadata !2471, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata i32 10, metadata !2472, metadata !DIExpression()), !dbg !2473
  %260 = call i32 @llvm.smin.i32(i32 %259, i32 10), !dbg !2475
  %261 = call i32 @llvm.smax.i32(i32 %260, i32 1), !dbg !2475
  br label %262, !dbg !2462

262:                                              ; preds = %257, %253
  %263 = phi i1 [ false, %257 ], [ true, %253 ]
  %264 = phi i32 [ %258, %257 ], [ 0, %253 ]
  %265 = phi i32 [ %261, %257 ], [ 10, %253 ], !dbg !2462
  call void @llvm.dbg.value(metadata i32 %265, metadata !2424, metadata !DIExpression()), !dbg !2443
  %266 = call ptr @x264_encoder_open(ptr noundef nonnull %10) #16, !dbg !2476
  call void @llvm.dbg.value(metadata ptr %266, metadata !1511, metadata !DIExpression()), !dbg !2443
  %267 = icmp eq ptr %266, null, !dbg !2478
  br i1 %267, label %268, label %274, !dbg !2479

268:                                              ; preds = %262
  %269 = load ptr, ptr @stderr, align 8, !dbg !2480, !tbaa !1220
  %270 = call i64 @fwrite(ptr nonnull @.str.263, i64 39, i64 1, ptr %269) #19, !dbg !2482
  %271 = load ptr, ptr @p_close_infile, align 8, !dbg !2483, !tbaa !1220
  %272 = load ptr, ptr %211, align 8, !dbg !2484, !tbaa !2454
  %273 = call i32 %271(ptr noundef %272) #16, !dbg !2483
  br label %480, !dbg !2485

274:                                              ; preds = %262
  %275 = load ptr, ptr @p_set_outfile_param, align 8, !dbg !2486, !tbaa !1220
  %276 = load ptr, ptr %18, align 8, !dbg !2488, !tbaa !1303
  %277 = call i32 %275(ptr noundef %276, ptr noundef nonnull %10) #16, !dbg !2486, !callees !2489
  %278 = icmp eq i32 %277, 0, !dbg !2486
  br i1 %278, label %288, label %279, !dbg !2490

279:                                              ; preds = %274
  %280 = load ptr, ptr @stderr, align 8, !dbg !2491, !tbaa !1220
  %281 = call i64 @fwrite(ptr nonnull @.str.264, i64 38, i64 1, ptr %280) #19, !dbg !2493
  %282 = load ptr, ptr @p_close_infile, align 8, !dbg !2494, !tbaa !1220
  %283 = load ptr, ptr %211, align 8, !dbg !2495, !tbaa !2454
  %284 = call i32 %282(ptr noundef %283) #16, !dbg !2494
  %285 = load ptr, ptr @p_close_outfile, align 8, !dbg !2496, !tbaa !1220
  %286 = load ptr, ptr %18, align 8, !dbg !2497, !tbaa !1303
  %287 = call i32 %285(ptr noundef %286) #16, !dbg !2496, !callees !2498
  br label %480, !dbg !2499

288:                                              ; preds = %274
  %289 = getelementptr inbounds %struct.x264_param_t, ptr %10, i64 0, i32 3, !dbg !2500
  %290 = load i32, ptr %289, align 4, !dbg !2500, !tbaa !1434
  %291 = getelementptr inbounds %struct.x264_param_t, ptr %10, i64 0, i32 4, !dbg !2501
  %292 = load i32, ptr %291, align 8, !dbg !2501, !tbaa !1436
  call void @x264_picture_alloc(ptr noundef nonnull %6, i32 noundef 1, i32 noundef %290, i32 noundef %292) #16, !dbg !2502
  %293 = call i64 @x264_mdate() #16, !dbg !2503
  call void @llvm.dbg.value(metadata i64 %293, metadata !2420, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.value(metadata i32 0, metadata !2418, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.value(metadata i64 0, metadata !2422, metadata !DIExpression()), !dbg !2443
  %294 = load i1, ptr @b_ctrl_c, align 4, !dbg !2504
  %295 = xor i1 %294, true, !dbg !2505
  %296 = icmp sgt i32 %264, 0
  %297 = or i1 %263, %296
  %298 = select i1 %295, i1 %297, i1 false, !dbg !2505
  br i1 %298, label %299, label %426, !dbg !2505

299:                                              ; preds = %288
  %300 = getelementptr inbounds %struct.x264_param_t, ptr %10, i64 0, i32 10
  %301 = getelementptr inbounds %struct.x264_picture_t, ptr %6, i64 0, i32 2
  %302 = getelementptr inbounds %struct.x264_picture_t, ptr %6, i64 0, i32 1
  %303 = getelementptr inbounds %struct.x264_param_t, ptr %10, i64 0, i32 9
  %304 = sitofp i32 %264 to double
  %305 = getelementptr inbounds i8, ptr %7, i64 5
  %306 = sext i32 %264 to i64, !dbg !2505
  %307 = fdiv fast double 1.000000e+00, %304
  br label %308, !dbg !2505

308:                                              ; preds = %416, %299
  %309 = phi i64 [ 0, %299 ], [ %369, %416 ]
  %310 = phi i64 [ 0, %299 ], [ %368, %416 ]
  call void @llvm.dbg.value(metadata i64 %309, metadata !2418, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.value(metadata i64 %310, metadata !2422, metadata !DIExpression()), !dbg !2443
  %311 = load ptr, ptr @p_read_frame, align 8, !dbg !2506, !tbaa !1220
  %312 = load ptr, ptr %211, align 8, !dbg !2508, !tbaa !2454
  %313 = load i32, ptr %19, align 4, !dbg !2509, !tbaa !1274
  %314 = trunc i64 %309 to i32, !dbg !2510
  %315 = add nsw i32 %313, %314, !dbg !2510
  %316 = call i32 %311(ptr noundef nonnull %6, ptr noundef %312, i32 noundef %315) #16, !dbg !2506
  %317 = icmp eq i32 %316, 0, !dbg !2506
  br i1 %317, label %318, label %422, !dbg !2511

318:                                              ; preds = %308
  %319 = load i32, ptr %300, align 8, !dbg !2512, !tbaa !2513
  %320 = sext i32 %319 to i64, !dbg !2514
  %321 = mul nsw i64 %309, %320, !dbg !2515
  store i64 %321, ptr %301, align 8, !dbg !2516, !tbaa !2517
  %322 = load ptr, ptr %15, align 8, !dbg !2521, !tbaa !1317
  %323 = icmp eq ptr %322, null, !dbg !2523
  br i1 %323, label %363, label %324, !dbg !2524

324:                                              ; preds = %318
  %325 = load i32, ptr %19, align 4, !dbg !2525, !tbaa !1274
  %326 = add nsw i32 %325, %314, !dbg !2526
  call void @llvm.dbg.value(metadata ptr %11, metadata !2527, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.value(metadata ptr %6, metadata !2532, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.value(metadata i32 %326, metadata !2533, metadata !DIExpression()), !dbg !2539
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16, !dbg !2541
  call void @llvm.dbg.value(metadata i32 -1, metadata !2534, metadata !DIExpression()), !dbg !2539
  store i32 -1, ptr %3, align 4, !dbg !2542, !tbaa !1216
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16, !dbg !2541
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #16, !dbg !2543
  %327 = icmp sgt i32 %326, -1, !dbg !2544
  br i1 %327, label %328, label %362, !dbg !2545

328:                                              ; preds = %324, %340
  %329 = load ptr, ptr %15, align 8, !dbg !2546, !tbaa !1317
  %330 = call i64 @ftello(ptr noundef %329), !dbg !2548
  call void @llvm.dbg.value(metadata i64 %330, metadata !2538, metadata !DIExpression()), !dbg !2539
  %331 = load ptr, ptr %15, align 8, !dbg !2549, !tbaa !1317
  call void @llvm.dbg.value(metadata ptr %3, metadata !2534, metadata !DIExpression(DW_OP_deref)), !dbg !2539
  call void @llvm.dbg.value(metadata ptr %4, metadata !2535, metadata !DIExpression(DW_OP_deref)), !dbg !2539
  call void @llvm.dbg.value(metadata ptr %5, metadata !2537, metadata !DIExpression(DW_OP_deref)), !dbg !2539
  %332 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %331, ptr noundef nonnull @.str.271, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %4) #16, !dbg !2550
  call void @llvm.dbg.value(metadata i32 %332, metadata !2536, metadata !DIExpression()), !dbg !2539
  %333 = load i32, ptr %3, align 4, !dbg !2551, !tbaa !1216
  call void @llvm.dbg.value(metadata i32 %333, metadata !2534, metadata !DIExpression()), !dbg !2539
  %334 = icmp sgt i32 %333, %326, !dbg !2553
  %335 = icmp eq i32 %332, -1
  %336 = select i1 %334, i1 true, i1 %335, !dbg !2554
  br i1 %336, label %337, label %340, !dbg !2554

337:                                              ; preds = %328
  store i32 0, ptr %6, align 8, !dbg !2555, !tbaa !2557
  store i32 0, ptr %302, align 4, !dbg !2558, !tbaa !2559
  %338 = load ptr, ptr %15, align 8, !dbg !2560, !tbaa !1317
  %339 = call i32 @fseeko(ptr noundef %338, i64 noundef %330, i32 noundef 0), !dbg !2561
  br label %362, !dbg !2562

340:                                              ; preds = %328
  %341 = icmp slt i32 %333, %326, !dbg !2563
  br i1 %341, label %328, label %342, !dbg !2565

342:                                              ; preds = %340
  %343 = load i32, ptr %4, align 4, !dbg !2566, !tbaa !1216
  call void @llvm.dbg.value(metadata i32 %343, metadata !2535, metadata !DIExpression()), !dbg !2539
  %344 = add nsw i32 %343, 1, !dbg !2567
  store i32 %344, ptr %302, align 4, !dbg !2568, !tbaa !2559
  %345 = load i8, ptr %5, align 1, !dbg !2569, !tbaa !1222
  call void @llvm.dbg.value(metadata i8 %345, metadata !2537, metadata !DIExpression()), !dbg !2539
  switch i8 %345, label %357 [
    i8 73, label %350
    i8 105, label %346
    i8 80, label %347
    i8 66, label %348
    i8 98, label %349
  ], !dbg !2571

346:                                              ; preds = %342
  br label %350, !dbg !2572

347:                                              ; preds = %342
  br label %350, !dbg !2574

348:                                              ; preds = %342
  br label %350, !dbg !2576

349:                                              ; preds = %342
  br label %350, !dbg !2578

350:                                              ; preds = %349, %348, %347, %346, %342
  %351 = phi i32 [ 2, %346 ], [ 4, %348 ], [ 5, %349 ], [ 3, %347 ], [ 1, %342 ]
  store i32 %351, ptr %6, align 8, !dbg !2580, !tbaa !2557
  call void @llvm.dbg.value(metadata i32 %332, metadata !2536, metadata !DIExpression()), !dbg !2539
  %352 = icmp ne i32 %332, 3, !dbg !2581
  call void @llvm.dbg.value(metadata i32 %343, metadata !2535, metadata !DIExpression()), !dbg !2539
  %353 = icmp slt i32 %343, -1
  %354 = select i1 %352, i1 true, i1 %353, !dbg !2583
  %355 = icmp sgt i32 %343, 51
  %356 = select i1 %354, i1 true, i1 %355, !dbg !2583
  br i1 %356, label %357, label %362, !dbg !2583

357:                                              ; preds = %350, %342
  %358 = load ptr, ptr @stderr, align 8, !dbg !2584, !tbaa !1220
  %359 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %358, ptr noundef nonnull @.str.272, i32 noundef %326) #19, !dbg !2586
  %360 = load ptr, ptr %15, align 8, !dbg !2587, !tbaa !1317
  %361 = call i32 @fclose(ptr noundef %360), !dbg !2588
  store ptr null, ptr %15, align 8, !dbg !2589, !tbaa !1317
  store i32 0, ptr %6, align 8, !dbg !2590, !tbaa !2557
  store i32 0, ptr %302, align 4, !dbg !2591, !tbaa !2559
  br label %362, !dbg !2592

362:                                              ; preds = %357, %350, %337, %324
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #16, !dbg !2593
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16, !dbg !2593
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16, !dbg !2593
  br label %364, !dbg !2594

363:                                              ; preds = %318
  store i32 0, ptr %6, align 8, !dbg !2595, !tbaa !2557
  store i32 0, ptr %302, align 4, !dbg !2597, !tbaa !2559
  br label %364

364:                                              ; preds = %363, %362
  %365 = load ptr, ptr %18, align 8, !dbg !2598, !tbaa !1303
  %366 = call fastcc i32 @Encode_frame(ptr noundef nonnull %266, ptr noundef %365, ptr noundef nonnull %6), !dbg !2599
  %367 = sext i32 %366 to i64, !dbg !2599
  %368 = add nsw i64 %310, %367, !dbg !2600
  call void @llvm.dbg.value(metadata i64 %368, metadata !2422, metadata !DIExpression()), !dbg !2443
  %369 = add nuw i64 %309, 1, !dbg !2601
  %370 = trunc i64 %369 to i32, !dbg !2601
  call void @llvm.dbg.value(metadata i64 %369, metadata !2418, metadata !DIExpression()), !dbg !2443
  %371 = load i32, ptr %11, align 8, !dbg !2602, !tbaa !1337
  %372 = icmp eq i32 %371, 0, !dbg !2603
  br i1 %372, label %416, label %373, !dbg !2604

373:                                              ; preds = %364
  %374 = urem i32 %370, %265, !dbg !2605
  %375 = icmp eq i32 %374, 0, !dbg !2606
  br i1 %375, label %376, label %416, !dbg !2607

376:                                              ; preds = %373
  %377 = call i64 @x264_mdate() #16, !dbg !2608
  %378 = sub nsw i64 %377, %293, !dbg !2609
  call void @llvm.dbg.value(metadata i64 %378, metadata !2429, metadata !DIExpression()), !dbg !2610
  %379 = icmp sgt i64 %378, 0, !dbg !2611
  %380 = sitofp i32 %370 to double, !dbg !2612
  %381 = fmul fast double %380, 1.000000e+06, !dbg !2612
  %382 = sitofp i64 %378 to double, !dbg !2612
  %383 = fdiv fast double %381, %382, !dbg !2612
  %384 = select fast i1 %379, double %383, double 0.000000e+00, !dbg !2612
  call void @llvm.dbg.value(metadata double %384, metadata !2435, metadata !DIExpression()), !dbg !2610
  %385 = sitofp i64 %368 to double, !dbg !2613
  %386 = fmul fast double %385, 8.000000e+00, !dbg !2614
  %387 = load i32, ptr %303, align 4, !dbg !2615, !tbaa !2616
  %388 = sitofp i32 %387 to double, !dbg !2617
  %389 = fmul fast double %386, %388, !dbg !2618
  %390 = load i32, ptr %300, align 8, !dbg !2619, !tbaa !2513
  %391 = sitofp i32 %390 to double, !dbg !2620
  %392 = fmul fast double %380, 1.000000e+03, !dbg !2621
  %393 = fmul fast double %392, %391, !dbg !2622
  %394 = fdiv fast double %389, %393, !dbg !2623
  call void @llvm.dbg.value(metadata double %394, metadata !2436, metadata !DIExpression()), !dbg !2610
  br i1 %263, label %409, label %395, !dbg !2624

395:                                              ; preds = %376
  %396 = sub nsw i64 %306, %369, !dbg !2625
  %397 = mul nsw i64 %378, %396, !dbg !2626
  %398 = and i64 %369, 4294967295, !dbg !2627
  %399 = mul nuw nsw i64 %398, 1000000, !dbg !2628
  %400 = sdiv i64 %397, %399, !dbg !2629
  %401 = trunc i64 %400 to i32, !dbg !2630
  call void @llvm.dbg.value(metadata i32 %401, metadata !2437, metadata !DIExpression()), !dbg !2631
  %402 = fmul fast double %380, 1.000000e+02, !dbg !2632
  %403 = fmul fast double %402, %307
  %404 = sdiv i32 %401, 3600, !dbg !2633
  %405 = sdiv i32 %401, 60, !dbg !2634
  %406 = srem i32 %405, 60, !dbg !2635
  %407 = srem i32 %401, 60, !dbg !2636
  %408 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) @.str.265, double noundef %403, i32 noundef %370, i32 noundef %264, double noundef %384, double noundef %394, i32 noundef %404, i32 noundef %406, i32 noundef %407) #16, !dbg !2637
  br label %411, !dbg !2638

409:                                              ; preds = %376
  %410 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) @.str.266, i32 noundef %370, double noundef %384, double noundef %394) #16, !dbg !2639
  br label %411

411:                                              ; preds = %409, %395
  %412 = load ptr, ptr @stderr, align 8, !dbg !2641, !tbaa !1220
  %413 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %412, ptr noundef nonnull @.str.267, ptr noundef nonnull %305) #19, !dbg !2642
  %414 = load ptr, ptr @stderr, align 8, !dbg !2643, !tbaa !1220
  %415 = call i32 @fflush(ptr noundef %414), !dbg !2644
  br label %416, !dbg !2645

416:                                              ; preds = %411, %373, %364
  call void @llvm.dbg.value(metadata i64 %369, metadata !2418, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.value(metadata i64 %368, metadata !2422, metadata !DIExpression()), !dbg !2443
  %417 = load i1, ptr @b_ctrl_c, align 4, !dbg !2504
  %418 = xor i1 %417, true, !dbg !2505
  %419 = icmp slt i64 %369, %306
  %420 = or i1 %263, %419
  %421 = select i1 %418, i1 %420, i1 false, !dbg !2505
  br i1 %421, label %308, label %422, !dbg !2505, !llvm.loop !2646

422:                                              ; preds = %308, %416
  %423 = phi i64 [ %369, %416 ], [ %309, %308 ]
  %424 = phi i64 [ %368, %416 ], [ %310, %308 ]
  %425 = trunc i64 %423 to i32, !dbg !2649
  br label %426, !dbg !2650

426:                                              ; preds = %422, %288
  %427 = phi i64 [ 0, %288 ], [ %424, %422 ], !dbg !2651
  %428 = phi i32 [ 0, %288 ], [ %425, %422 ], !dbg !2651
  br label %429, !dbg !2650

429:                                              ; preds = %429, %426
  %430 = phi i64 [ %427, %426 ], [ %434, %429 ], !dbg !2443
  call void @llvm.dbg.value(metadata i64 %430, metadata !2422, metadata !DIExpression()), !dbg !2443
  %431 = load ptr, ptr %18, align 8, !dbg !2652, !tbaa !1303
  %432 = call fastcc i32 @Encode_frame(ptr noundef nonnull %266, ptr noundef %431, ptr noundef null), !dbg !2654
  call void @llvm.dbg.value(metadata i32 %432, metadata !2423, metadata !DIExpression()), !dbg !2443
  %433 = sext i32 %432 to i64, !dbg !2655
  %434 = add nsw i64 %430, %433, !dbg !2656
  call void @llvm.dbg.value(metadata i64 %434, metadata !2422, metadata !DIExpression()), !dbg !2443
  %435 = icmp eq i32 %432, 0, !dbg !2657
  br i1 %435, label %436, label %429, !dbg !2657, !llvm.loop !2658

436:                                              ; preds = %429
  %437 = call i64 @x264_mdate() #16, !dbg !2660
  call void @llvm.dbg.value(metadata i64 %437, metadata !2421, metadata !DIExpression()), !dbg !2443
  call void @x264_picture_clean(ptr noundef nonnull %6) #16, !dbg !2661
  %438 = load i32, ptr %11, align 8, !dbg !2662, !tbaa !1337
  %439 = icmp eq i32 %438, 0, !dbg !2664
  br i1 %439, label %443, label %440, !dbg !2665

440:                                              ; preds = %436
  %441 = load ptr, ptr @stderr, align 8, !dbg !2666, !tbaa !1220
  %442 = call i64 @fwrite(ptr nonnull @.str.268, i64 80, i64 1, ptr %441) #19, !dbg !2667
  br label %443, !dbg !2667

443:                                              ; preds = %440, %436
  call void @x264_encoder_close(ptr noundef nonnull %266) #16, !dbg !2668
  %444 = load ptr, ptr @mux_buffer, align 8, !dbg !2669, !tbaa !1220
  call void @x264_free(ptr noundef %444) #16, !dbg !2670
  %445 = load ptr, ptr @stderr, align 8, !dbg !2671, !tbaa !1220
  %446 = call i32 @fputc(i32 10, ptr %445), !dbg !2672
  %447 = load i1, ptr @b_ctrl_c, align 4, !dbg !2673
  br i1 %447, label %448, label %453, !dbg !2675

448:                                              ; preds = %443
  %449 = load ptr, ptr @stderr, align 8, !dbg !2676, !tbaa !1220
  %450 = load i32, ptr %19, align 4, !dbg !2677, !tbaa !1274
  %451 = add nsw i32 %450, %428, !dbg !2678
  %452 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %449, ptr noundef nonnull @.str.269, i32 noundef %451) #19, !dbg !2679
  br label %453, !dbg !2679

453:                                              ; preds = %448, %443
  %454 = load ptr, ptr @p_close_infile, align 8, !dbg !2680, !tbaa !1220
  %455 = load ptr, ptr %211, align 8, !dbg !2681, !tbaa !2454
  %456 = call i32 %454(ptr noundef %455) #16, !dbg !2680
  %457 = load ptr, ptr @p_close_outfile, align 8, !dbg !2682, !tbaa !1220
  %458 = load ptr, ptr %18, align 8, !dbg !2683, !tbaa !1303
  %459 = call i32 %457(ptr noundef %458) #16, !dbg !2682, !callees !2498
  %460 = icmp eq i32 %428, 0, !dbg !2684
  br i1 %460, label %480, label %461, !dbg !2685

461:                                              ; preds = %453
  %462 = sitofp i32 %428 to double, !dbg !2686
  %463 = fmul fast double %462, 1.000000e+06, !dbg !2687
  %464 = sub nsw i64 %437, %293, !dbg !2688
  %465 = sitofp i64 %464 to double, !dbg !2689
  %466 = fdiv fast double %463, %465, !dbg !2690
  call void @llvm.dbg.value(metadata double %466, metadata !2440, metadata !DIExpression()), !dbg !2691
  %467 = load ptr, ptr @stderr, align 8, !dbg !2692, !tbaa !1220
  %468 = sitofp i64 %434 to double, !dbg !2693
  %469 = getelementptr inbounds %struct.x264_param_t, ptr %10, i64 0, i32 9, !dbg !2694
  %470 = load <2 x i32>, ptr %469, align 4, !dbg !2694, !tbaa !1216
  %471 = sitofp <2 x i32> %470 to <2 x double>, !dbg !2695
  %472 = insertelement <2 x double> poison, double %468, i64 0, !dbg !2696
  %473 = insertelement <2 x double> %472, double %462, i64 1, !dbg !2696
  %474 = fmul fast <2 x double> %473, <double 8.000000e+00, double 1.000000e+03>, !dbg !2697
  %475 = fmul fast <2 x double> %474, %471, !dbg !2698
  %476 = extractelement <2 x double> %475, i64 0, !dbg !2699
  %477 = extractelement <2 x double> %475, i64 1, !dbg !2699
  %478 = fdiv fast double %476, %477, !dbg !2699
  %479 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %467, ptr noundef nonnull @.str.270, i32 noundef %428, double noundef %466, double noundef %478) #19, !dbg !2700
  br label %480, !dbg !2701

480:                                              ; preds = %268, %279, %453, %461
  %481 = phi i32 [ -1, %268 ], [ -1, %279 ], [ 0, %461 ], [ 0, %453 ], !dbg !2443
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %7) #16, !dbg !2702
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #16, !dbg !2702
  call void @llvm.dbg.value(metadata i32 %481, metadata !1200, metadata !DIExpression()), !dbg !1201
  br label %482, !dbg !2703

482:                                              ; preds = %235, %480
  %483 = phi i32 [ %481, %480 ], [ -1, %235 ], !dbg !1201
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #16, !dbg !2704
  call void @llvm.lifetime.end.p0(i64 616, ptr nonnull %10) #16, !dbg !2704
  ret i32 %483, !dbg !2704
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree nounwind
declare !dbg !2705 noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !2711 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #3

declare !dbg !2714 void @x264_param_default(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !2717 ptr @signal(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define internal void @SigIntHandler(i32 %0) #6 !dbg !2725 {
  call void @llvm.dbg.value(metadata i32 poison, metadata !2727, metadata !DIExpression()), !dbg !2728
  store i1 true, ptr @b_ctrl_c, align 4, !dbg !2729
  ret void, !dbg !2730
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noreturn nounwind
declare !dbg !2731 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

declare i32 @open_file_yuv(ptr noundef, ptr noundef, ptr noundef) #4

declare i32 @get_frame_total_yuv(ptr noundef) #4

declare i32 @read_frame_yuv(ptr noundef, ptr noundef, i32 noundef) #4

declare i32 @close_file_yuv(ptr noundef) #4

declare i32 @open_file_bsf(ptr noundef, ptr noundef) #4

declare i32 @set_param_bsf(ptr noundef, ptr noundef) #4

declare i32 @write_nalu_bsf(ptr noundef, ptr noundef, i32 noundef) #4

declare i32 @set_eop_bsf(ptr noundef, ptr noundef) #4

declare i32 @close_file_bsf(ptr noundef) #4

; Function Attrs: nounwind
declare !dbg !2732 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @Help(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #10 !dbg !2739 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2743, metadata !DIExpression()), !dbg !2745
  call void @llvm.dbg.value(metadata i32 %1, metadata !2744, metadata !DIExpression()), !dbg !2745
  %3 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.125, i32 noundef 65, ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.127), !dbg !2746
  %4 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.276), !dbg !2747
  %5 = tail call i32 @putchar(i32 10), !dbg !2748
  %6 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 12, !dbg !2749
  %7 = load i32, ptr %6, align 8, !dbg !2749, !tbaa !2750
  %8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.130, i32 noundef %7), !dbg !2751
  %9 = icmp eq i32 %1, 0, !dbg !2752
  br i1 %9, label %33, label %10, !dbg !2754

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 13, !dbg !2755
  %12 = load i32, ptr %11, align 4, !dbg !2755, !tbaa !2756
  %13 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.131, i32 noundef %12), !dbg !2752
  %14 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 14, !dbg !2757
  %15 = load i32, ptr %14, align 8, !dbg !2757, !tbaa !1327
  %16 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.132, i32 noundef %15), !dbg !2759
  %17 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.333), !dbg !2760
  %18 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 16, !dbg !2762
  %19 = load i32, ptr %18, align 8, !dbg !2762, !tbaa !2763
  %20 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.134, i32 noundef %19), !dbg !2764
  %21 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 17, !dbg !2765
  %22 = load i32, ptr %21, align 4, !dbg !2765, !tbaa !1329
  %23 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.135, i32 noundef %22), !dbg !2767
  %24 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 18, !dbg !2768
  %25 = load i32, ptr %24, align 8, !dbg !2768, !tbaa !2770
  %26 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.136, i32 noundef %25), !dbg !2771
  %27 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.277), !dbg !2772
  %28 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.278), !dbg !2773
  %29 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 11, !dbg !2774
  %30 = load i32, ptr %29, align 4, !dbg !2774, !tbaa !2775
  %31 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.139, i32 noundef %30), !dbg !2776
  %32 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.332), !dbg !2777
  br label %42, !dbg !2777

33:                                               ; preds = %2
  %34 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 16, !dbg !2762
  %35 = load i32, ptr %34, align 8, !dbg !2762, !tbaa !2763
  %36 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.134, i32 noundef %35), !dbg !2764
  %37 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.277), !dbg !2772
  %38 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.278), !dbg !2773
  %39 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 11, !dbg !2774
  %40 = load i32, ptr %39, align 4, !dbg !2774, !tbaa !2775
  %41 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.139, i32 noundef %40), !dbg !2776
  br label %42, !dbg !2779

42:                                               ; preds = %33, %10
  %43 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 21, !dbg !2780
  %44 = load i32, ptr %43, align 4, !dbg !2780, !tbaa !2781
  %45 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 22, !dbg !2782
  %46 = load i32, ptr %45, align 8, !dbg !2782, !tbaa !2783
  %47 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.141, i32 noundef %44, i32 noundef %46), !dbg !2784
  %48 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.279), !dbg !2785
  %49 = tail call i32 @putchar(i32 10), !dbg !2786
  %50 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.280), !dbg !2787
  %51 = tail call i32 @putchar(i32 10), !dbg !2788
  %52 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 1, !dbg !2789
  %53 = load i32, ptr %52, align 4, !dbg !2789, !tbaa !2790
  %54 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.144, i32 noundef %53), !dbg !2791
  %55 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.281), !dbg !2792
  %56 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.282), !dbg !2793
  br i1 %9, label %57, label %61, !dbg !2794

57:                                               ; preds = %42
  %58 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 9, !dbg !2795
  %59 = load i32, ptr %58, align 4, !dbg !2795, !tbaa !2796
  %60 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.148, i32 noundef %59), !dbg !2797
  br label %81, !dbg !2798

61:                                               ; preds = %42
  %62 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 8, !dbg !2799
  %63 = load i32, ptr %62, align 8, !dbg !2799, !tbaa !2801
  %64 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.147, i32 noundef %63), !dbg !2802
  %65 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 9, !dbg !2795
  %66 = load i32, ptr %65, align 4, !dbg !2795, !tbaa !2796
  %67 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.148, i32 noundef %66), !dbg !2797
  %68 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 10, !dbg !2803
  %69 = load float, ptr %68, align 8, !dbg !2803, !tbaa !2805
  %70 = fpext float %69 to double, !dbg !2806
  %71 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.149, double noundef %70), !dbg !2807
  %72 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 2, !dbg !2808
  %73 = load i32, ptr %72, align 8, !dbg !2808, !tbaa !2810
  %74 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.150, i32 noundef %73), !dbg !2811
  %75 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 3, !dbg !2812
  %76 = load i32, ptr %75, align 4, !dbg !2812, !tbaa !2814
  %77 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.151, i32 noundef %76), !dbg !2815
  %78 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 4, !dbg !2816
  %79 = load i32, ptr %78, align 8, !dbg !2816, !tbaa !2818
  %80 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.152, i32 noundef %79), !dbg !2819
  br label %81, !dbg !2819

81:                                               ; preds = %57, %61
  %82 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 7, !dbg !2820
  %83 = load float, ptr %82, align 4, !dbg !2820, !tbaa !2821
  %84 = fpext float %83 to double, !dbg !2822
  %85 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.153, double noundef %84), !dbg !2823
  %86 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 11, !dbg !2824
  %87 = load float, ptr %86, align 4, !dbg !2824, !tbaa !2825
  %88 = fpext float %87 to double, !dbg !2826
  %89 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.154, double noundef %88), !dbg !2827
  %90 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 12, !dbg !2828
  %91 = load float, ptr %90, align 8, !dbg !2828, !tbaa !2829
  %92 = fpext float %91 to double, !dbg !2830
  %93 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.155, double noundef %92), !dbg !2831
  br i1 %9, label %101, label %94, !dbg !2832

94:                                               ; preds = %81
  %95 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 39, i32 6, !dbg !2833
  %96 = load i32, ptr %95, align 8, !dbg !2833, !tbaa !2835
  %97 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.156, i32 noundef %96), !dbg !2836
  %98 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 13, !dbg !2837
  %99 = load i32, ptr %98, align 4, !dbg !2837, !tbaa !2839
  %100 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.157, i32 noundef %99), !dbg !2840
  br label %101, !dbg !2840

101:                                              ; preds = %81, %94
  %102 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 14, !dbg !2841
  %103 = load float, ptr %102, align 8, !dbg !2841, !tbaa !2842
  %104 = fpext float %103 to double, !dbg !2843
  %105 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.158, double noundef %104), !dbg !2844
  %106 = tail call i32 @putchar(i32 10), !dbg !2845
  %107 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.283), !dbg !2846
  %108 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 16, !dbg !2847
  %109 = load ptr, ptr %108, align 8, !dbg !2847, !tbaa !2848
  %110 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.160, ptr noundef %109), !dbg !2849
  %111 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 19, !dbg !2850
  %112 = load float, ptr %111, align 8, !dbg !2850, !tbaa !2851
  %113 = fpext float %112 to double, !dbg !2852
  %114 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.161, double noundef %113), !dbg !2853
  br i1 %9, label %144, label %115, !dbg !2854

115:                                              ; preds = %101
  %116 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 21, !dbg !2855
  %117 = load float, ptr %116, align 8, !dbg !2855, !tbaa !2857
  %118 = fpext float %117 to double, !dbg !2858
  %119 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.162, double noundef %118), !dbg !2859
  %120 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 20, !dbg !2860
  %121 = load float, ptr %120, align 4, !dbg !2860, !tbaa !2862
  %122 = fpext float %121 to double, !dbg !2863
  %123 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.163, double noundef %122), !dbg !2864
  %124 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.284), !dbg !2865
  %125 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.331), !dbg !2866
  %126 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.330), !dbg !2868
  %127 = tail call i32 @putchar(i32 10), !dbg !2870
  %128 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.285), !dbg !2871
  %129 = tail call i32 @putchar(i32 10), !dbg !2872
  %130 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.286), !dbg !2873
  %131 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 39, i32 4, !dbg !2874
  %132 = load i32, ptr %131, align 8, !dbg !2874, !tbaa !2875
  call void @llvm.dbg.value(metadata ptr @x264_direct_pred_names, metadata !2876, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i32 %132, metadata !2882, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i32 0, metadata !2883, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i64 poison, metadata !2883, metadata !DIExpression()), !dbg !2884
  %133 = icmp ult i32 %132, 4, !dbg !2886
  br i1 %133, label %134, label %138, !dbg !2886

134:                                              ; preds = %115
  %135 = zext i32 %132 to i64
  %136 = getelementptr inbounds ptr, ptr @x264_direct_pred_names, i64 %135, !dbg !2887
  %137 = load ptr, ptr %136, align 8, !dbg !2887, !tbaa !1220
  br label %138, !dbg !2888

138:                                              ; preds = %115, %134
  %139 = phi ptr [ %137, %134 ], [ @.str.230, %115 ], !dbg !2888
  %140 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.169, ptr noundef %139), !dbg !2889
  %141 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 39, i32 5, !dbg !2890
  %142 = load i32, ptr %141, align 4, !dbg !2890, !tbaa !2892
  %143 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.170, i32 noundef %142), !dbg !2893
  br label %160, !dbg !2893

144:                                              ; preds = %101
  %145 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.284), !dbg !2865
  %146 = tail call i32 @putchar(i32 10), !dbg !2870
  %147 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.285), !dbg !2871
  %148 = tail call i32 @putchar(i32 10), !dbg !2872
  %149 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.286), !dbg !2873
  %150 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 39, i32 4, !dbg !2874
  %151 = load i32, ptr %150, align 8, !dbg !2874, !tbaa !2875
  call void @llvm.dbg.value(metadata ptr @x264_direct_pred_names, metadata !2876, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata i32 %151, metadata !2882, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata i32 0, metadata !2883, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata i64 poison, metadata !2883, metadata !DIExpression()), !dbg !2894
  %152 = icmp ult i32 %151, 4, !dbg !2896
  br i1 %152, label %153, label %157, !dbg !2896

153:                                              ; preds = %144
  %154 = zext i32 %151 to i64
  %155 = getelementptr inbounds ptr, ptr @x264_direct_pred_names, i64 %154, !dbg !2897
  %156 = load ptr, ptr %155, align 8, !dbg !2897, !tbaa !1220
  br label %157, !dbg !2898

157:                                              ; preds = %144, %153
  %158 = phi ptr [ %156, %153 ], [ @.str.230, %144 ], !dbg !2898
  %159 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.169, ptr noundef %158), !dbg !2889
  br label %160, !dbg !2899

160:                                              ; preds = %157, %138
  %161 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.287), !dbg !2900
  %162 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 39, i32 7, !dbg !2901
  %163 = load i32, ptr %162, align 4, !dbg !2901, !tbaa !2902
  call void @llvm.dbg.value(metadata ptr @x264_motion_est_names, metadata !2876, metadata !DIExpression()), !dbg !2903
  call void @llvm.dbg.value(metadata i32 %163, metadata !2882, metadata !DIExpression()), !dbg !2903
  call void @llvm.dbg.value(metadata i32 0, metadata !2883, metadata !DIExpression()), !dbg !2903
  call void @llvm.dbg.value(metadata i64 poison, metadata !2883, metadata !DIExpression()), !dbg !2903
  %164 = icmp ult i32 %163, 5, !dbg !2905
  br i1 %164, label %165, label %169, !dbg !2905

165:                                              ; preds = %160
  %166 = zext i32 %163 to i64
  %167 = getelementptr inbounds ptr, ptr @x264_motion_est_names, i64 %166, !dbg !2906
  %168 = load ptr, ptr %167, align 8, !dbg !2906, !tbaa !1220
  br label %169, !dbg !2907

169:                                              ; preds = %160, %165
  %170 = phi ptr [ %168, %165 ], [ @.str.230, %160 ], !dbg !2907
  %171 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.172, ptr noundef %170), !dbg !2908
  %172 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 39, i32 8, !dbg !2909
  br i1 %9, label %179, label %173, !dbg !2910

173:                                              ; preds = %169
  %174 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.329), !dbg !2911
  %175 = load i32, ptr %172, align 8, !dbg !2909, !tbaa !2913
  %176 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.175, i32 noundef %175), !dbg !2914
  %177 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.328), !dbg !2915
  %178 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.327), !dbg !2917
  br label %183, !dbg !2919

179:                                              ; preds = %169
  %180 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.288), !dbg !2921
  %181 = load i32, ptr %172, align 8, !dbg !2909, !tbaa !2913
  %182 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.175, i32 noundef %181), !dbg !2914
  br label %183

183:                                              ; preds = %179, %173
  %184 = phi ptr [ @str.289, %179 ], [ @str.326, %173 ]
  %185 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 39, i32 11, !dbg !2922
  %186 = load i32, ptr %185, align 4, !dbg !2922, !tbaa !2923
  %187 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.178, i32 noundef %186), !dbg !2924
  %188 = tail call i32 @puts(ptr nonnull dereferenceable(1) %184), !dbg !2925
  %189 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 39, i32 18, !dbg !2926
  %190 = load float, ptr %189, align 8, !dbg !2926, !tbaa !2927
  %191 = fpext float %190 to double, !dbg !2928
  %192 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 39, i32 19, !dbg !2929
  %193 = load float, ptr %192, align 4, !dbg !2929, !tbaa !2930
  %194 = fpext float %193 to double, !dbg !2931
  %195 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.181, double noundef %191, double noundef %194), !dbg !2932
  %196 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.290), !dbg !2933
  br i1 %9, label %197, label %208, !dbg !2934

197:                                              ; preds = %183
  %198 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.291), !dbg !2935
  %199 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 39, i32 14, !dbg !2936
  %200 = load i32, ptr %199, align 8, !dbg !2936, !tbaa !2937
  %201 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.185, i32 noundef %200), !dbg !2938
  %202 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.292), !dbg !2939
  %203 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.293), !dbg !2940
  %204 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 39, i32 17, !dbg !2941
  %205 = load i32, ptr %204, align 4, !dbg !2941, !tbaa !2942
  %206 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.188, i32 noundef %205), !dbg !2943
  %207 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.294), !dbg !2944
  br label %302, !dbg !2945

208:                                              ; preds = %183
  %209 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.325), !dbg !2946
  %210 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.291), !dbg !2935
  %211 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 39, i32 14, !dbg !2936
  %212 = load i32, ptr %211, align 8, !dbg !2936, !tbaa !2937
  %213 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.185, i32 noundef %212), !dbg !2938
  %214 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.292), !dbg !2939
  %215 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.293), !dbg !2940
  %216 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 39, i32 17, !dbg !2941
  %217 = load i32, ptr %216, align 4, !dbg !2941, !tbaa !2942
  %218 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.188, i32 noundef %217), !dbg !2943
  %219 = tail call i32 @putchar(i32 10), !dbg !2948
  %220 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 39, i32 20, !dbg !2950
  %221 = load i32, ptr %220, align 8, !dbg !2952, !tbaa !1216
  %222 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.189, i32 noundef %221), !dbg !2953
  %223 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 39, i32 20, i64 1, !dbg !2954
  %224 = load i32, ptr %223, align 4, !dbg !2954, !tbaa !1216
  %225 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.190, i32 noundef %224), !dbg !2956
  %226 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.324), !dbg !2957
  %227 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.323), !dbg !2959
  %228 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.294), !dbg !2944
  %229 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.322), !dbg !2961
  %230 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.321), !dbg !2963
  %231 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.320), !dbg !2965
  %232 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.319), !dbg !2967
  %233 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.318), !dbg !2969
  %234 = tail call i32 @putchar(i32 10), !dbg !2971
  %235 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.317), !dbg !2973
  %236 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.316), !dbg !2975
  %237 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.315), !dbg !2977
  %238 = tail call i32 @putchar(i32 10), !dbg !2979
  %239 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 8, i32 2, !dbg !2981
  %240 = load i32, ptr %239, align 8, !dbg !2981, !tbaa !2983
  call void @llvm.dbg.value(metadata ptr @x264_overscan_names, metadata !2876, metadata !DIExpression()), !dbg !2984
  call void @llvm.dbg.value(metadata i32 %240, metadata !2882, metadata !DIExpression()), !dbg !2984
  call void @llvm.dbg.value(metadata i32 0, metadata !2883, metadata !DIExpression()), !dbg !2984
  call void @llvm.dbg.value(metadata i64 poison, metadata !2883, metadata !DIExpression()), !dbg !2984
  %241 = icmp ult i32 %240, 3, !dbg !2986
  br i1 %241, label %242, label %246, !dbg !2986

242:                                              ; preds = %208
  %243 = zext i32 %240 to i64
  %244 = getelementptr inbounds ptr, ptr @x264_overscan_names, i64 %243, !dbg !2987
  %245 = load ptr, ptr %244, align 8, !dbg !2987, !tbaa !1220
  br label %246, !dbg !2988

246:                                              ; preds = %208, %242
  %247 = phi ptr [ %245, %242 ], [ @.str.230, %208 ], !dbg !2988
  %248 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.202, ptr noundef %247), !dbg !2989
  %249 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 8, i32 3, !dbg !2990
  %250 = load i32, ptr %249, align 4, !dbg !2990, !tbaa !2992
  call void @llvm.dbg.value(metadata ptr @x264_vidformat_names, metadata !2876, metadata !DIExpression()), !dbg !2993
  call void @llvm.dbg.value(metadata i32 %250, metadata !2882, metadata !DIExpression()), !dbg !2993
  call void @llvm.dbg.value(metadata i32 0, metadata !2883, metadata !DIExpression()), !dbg !2993
  call void @llvm.dbg.value(metadata i64 poison, metadata !2883, metadata !DIExpression()), !dbg !2993
  %251 = icmp ult i32 %250, 6, !dbg !2995
  br i1 %251, label %252, label %256, !dbg !2995

252:                                              ; preds = %246
  %253 = zext i32 %250 to i64
  %254 = getelementptr inbounds ptr, ptr @x264_vidformat_names, i64 %253, !dbg !2996
  %255 = load ptr, ptr %254, align 8, !dbg !2996, !tbaa !1220
  br label %256, !dbg !2997

256:                                              ; preds = %246, %252
  %257 = phi ptr [ %255, %252 ], [ @.str.230, %246 ], !dbg !2997
  %258 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.203, ptr noundef %257), !dbg !2998
  %259 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 8, i32 4, !dbg !2999
  %260 = load i32, ptr %259, align 8, !dbg !2999, !tbaa !3001
  call void @llvm.dbg.value(metadata ptr @x264_fullrange_names, metadata !2876, metadata !DIExpression()), !dbg !3002
  call void @llvm.dbg.value(metadata i32 %260, metadata !2882, metadata !DIExpression()), !dbg !3002
  call void @llvm.dbg.value(metadata i32 0, metadata !2883, metadata !DIExpression()), !dbg !3002
  call void @llvm.dbg.value(metadata i64 poison, metadata !2883, metadata !DIExpression()), !dbg !3002
  %261 = icmp ult i32 %260, 2, !dbg !3004
  br i1 %261, label %262, label %266, !dbg !3004

262:                                              ; preds = %256
  %263 = zext i32 %260 to i64
  %264 = getelementptr inbounds ptr, ptr @x264_fullrange_names, i64 %263, !dbg !3005
  %265 = load ptr, ptr %264, align 8, !dbg !3005, !tbaa !1220
  br label %266, !dbg !3006

266:                                              ; preds = %256, %262
  %267 = phi ptr [ %265, %262 ], [ @.str.230, %256 ], !dbg !3006
  %268 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.204, ptr noundef %267), !dbg !3007
  %269 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 8, i32 5, !dbg !3008
  %270 = load i32, ptr %269, align 4, !dbg !3008, !tbaa !3010
  call void @llvm.dbg.value(metadata ptr @x264_colorprim_names, metadata !2876, metadata !DIExpression()), !dbg !3011
  call void @llvm.dbg.value(metadata i32 %270, metadata !2882, metadata !DIExpression()), !dbg !3011
  call void @llvm.dbg.value(metadata i32 0, metadata !2883, metadata !DIExpression()), !dbg !3011
  call void @llvm.dbg.value(metadata i64 poison, metadata !2883, metadata !DIExpression()), !dbg !3011
  %271 = icmp ult i32 %270, 9, !dbg !3013
  br i1 %271, label %272, label %276, !dbg !3013

272:                                              ; preds = %266
  %273 = zext i32 %270 to i64
  %274 = getelementptr inbounds ptr, ptr @x264_colorprim_names, i64 %273, !dbg !3014
  %275 = load ptr, ptr %274, align 8, !dbg !3014, !tbaa !1220
  br label %276, !dbg !3015

276:                                              ; preds = %266, %272
  %277 = phi ptr [ %275, %272 ], [ @.str.230, %266 ], !dbg !3015
  %278 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.205, ptr noundef %277), !dbg !3016
  %279 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 8, i32 6, !dbg !3017
  %280 = load i32, ptr %279, align 8, !dbg !3017, !tbaa !3019
  call void @llvm.dbg.value(metadata ptr @x264_transfer_names, metadata !2876, metadata !DIExpression()), !dbg !3020
  call void @llvm.dbg.value(metadata i32 %280, metadata !2882, metadata !DIExpression()), !dbg !3020
  call void @llvm.dbg.value(metadata i32 0, metadata !2883, metadata !DIExpression()), !dbg !3020
  call void @llvm.dbg.value(metadata i64 poison, metadata !2883, metadata !DIExpression()), !dbg !3020
  %281 = icmp ult i32 %280, 11, !dbg !3022
  br i1 %281, label %282, label %286, !dbg !3022

282:                                              ; preds = %276
  %283 = zext i32 %280 to i64
  %284 = getelementptr inbounds ptr, ptr @x264_transfer_names, i64 %283, !dbg !3023
  %285 = load ptr, ptr %284, align 8, !dbg !3023, !tbaa !1220
  br label %286, !dbg !3024

286:                                              ; preds = %276, %282
  %287 = phi ptr [ %285, %282 ], [ @.str.230, %276 ], !dbg !3024
  %288 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.206, ptr noundef %287), !dbg !3025
  %289 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 8, i32 7, !dbg !3026
  %290 = load i32, ptr %289, align 4, !dbg !3026, !tbaa !3028
  call void @llvm.dbg.value(metadata ptr @x264_colmatrix_names, metadata !2876, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.value(metadata i32 %290, metadata !2882, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.value(metadata i32 0, metadata !2883, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.value(metadata i64 poison, metadata !2883, metadata !DIExpression()), !dbg !3029
  %291 = icmp ult i32 %290, 9, !dbg !3031
  br i1 %291, label %292, label %296, !dbg !3031

292:                                              ; preds = %286
  %293 = zext i32 %290 to i64
  %294 = getelementptr inbounds ptr, ptr @x264_colmatrix_names, i64 %293, !dbg !3032
  %295 = load ptr, ptr %294, align 8, !dbg !3032, !tbaa !1220
  br label %296, !dbg !3033

296:                                              ; preds = %286, %292
  %297 = phi ptr [ %295, %292 ], [ @.str.230, %286 ], !dbg !3033
  %298 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.207, ptr noundef %297), !dbg !3034
  %299 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 8, i32 8, !dbg !3035
  %300 = load i32, ptr %299, align 8, !dbg !3035, !tbaa !3037
  %301 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.208, i32 noundef %300), !dbg !3038
  br label %302, !dbg !3038

302:                                              ; preds = %197, %296
  %303 = tail call i32 @putchar(i32 10), !dbg !3039
  %304 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.295), !dbg !3040
  %305 = tail call i32 @putchar(i32 10), !dbg !3041
  %306 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.296), !dbg !3042
  %307 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.297), !dbg !3043
  %308 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.298), !dbg !3044
  %309 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.299), !dbg !3045
  %310 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.300), !dbg !3046
  %311 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.301), !dbg !3047
  %312 = tail call i32 @putchar(i32 10), !dbg !3048
  %313 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.302), !dbg !3049
  %314 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.303), !dbg !3050
  %315 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.304), !dbg !3051
  %316 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.305), !dbg !3052
  %317 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.306), !dbg !3053
  %318 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.307), !dbg !3054
  %319 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.308), !dbg !3055
  br i1 %9, label %330, label %320, !dbg !3056

320:                                              ; preds = %302
  %321 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.314), !dbg !3057
  %322 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.313), !dbg !3059
  %323 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.312), !dbg !3061
  %324 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.311), !dbg !3063
  %325 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.310), !dbg !3065
  %326 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 43, !dbg !3067
  %327 = load i32, ptr %326, align 8, !dbg !3067, !tbaa !3069
  %328 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.228, i32 noundef %327), !dbg !3070
  %329 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.309), !dbg !3071
  br label %330, !dbg !3071

330:                                              ; preds = %302, %320
  %331 = tail call i32 @putchar(i32 10), !dbg !3073
  ret void, !dbg !3074
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !3075 i32 @strncasecmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !3079 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare !dbg !3083 noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

declare i32 @open_file_mkv(ptr noundef, ptr noundef) #4

declare i32 @write_nalu_mkv(ptr noundef, ptr noundef, i32 noundef) #4

declare i32 @set_param_mkv(ptr noundef, ptr noundef) #4

declare i32 @set_eop_mkv(ptr noundef, ptr noundef) #4

declare i32 @close_file_mkv(ptr noundef) #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !3087 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare !dbg !3090 noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #3

declare !dbg !3093 i32 @x264_param_parse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3096 noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

declare i32 @open_file_y4m(ptr noundef, ptr noundef, ptr noundef) #4

declare i32 @get_frame_total_y4m(ptr noundef) #4

declare i32 @read_frame_y4m(ptr noundef, ptr noundef, i32 noundef) #4

declare i32 @close_file_y4m(ptr noundef) #4

declare !dbg !3099 i32 @x264_cpu_num_processors() local_unnamed_addr #4

declare !dbg !3103 i32 @open_file_thread(ptr noundef, ptr noundef, ptr noundef) #4

declare i32 @get_frame_total_thread(ptr noundef) #4

declare i32 @read_frame_thread(ptr noundef, ptr noundef, i32 noundef) #4

declare i32 @close_file_thread(ptr noundef) #4

; Function Attrs: mustprogress nofree nounwind willreturn
declare !dbg !3104 i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #13

declare !dbg !3108 ptr @x264_encoder_open(ptr noundef) local_unnamed_addr #4

declare !dbg !3111 void @x264_picture_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare !dbg !3114 i64 @x264_mdate() local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc i32 @Encode_frame(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !dbg !3117 {
  %4 = alloca %struct.x264_picture_t, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !3121, metadata !DIExpression()), !dbg !3134
  call void @llvm.dbg.value(metadata ptr %1, metadata !3122, metadata !DIExpression()), !dbg !3134
  call void @llvm.dbg.value(metadata ptr %2, metadata !3123, metadata !DIExpression()), !dbg !3134
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #16, !dbg !3135
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3124, metadata !DIExpression()), !dbg !3136
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16, !dbg !3137
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16, !dbg !3138
  call void @llvm.dbg.value(metadata i32 0, metadata !3129, metadata !DIExpression()), !dbg !3134
  call void @llvm.dbg.value(metadata ptr %5, metadata !3125, metadata !DIExpression(DW_OP_deref)), !dbg !3134
  call void @llvm.dbg.value(metadata ptr %6, metadata !3127, metadata !DIExpression(DW_OP_deref)), !dbg !3134
  %8 = call i32 @x264_encoder_encode(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %2, ptr noundef nonnull %4) #16, !dbg !3139
  %9 = icmp slt i32 %8, 0, !dbg !3141
  br i1 %9, label %10, label %13, !dbg !3142

10:                                               ; preds = %3
  %11 = load ptr, ptr @stderr, align 8, !dbg !3143, !tbaa !1220
  %12 = call i64 @fwrite(ptr nonnull @.str.273, i64 41, i64 1, ptr %11) #19, !dbg !3145
  br label %13, !dbg !3146

13:                                               ; preds = %10, %3
  call void @llvm.dbg.value(metadata i32 0, metadata !3128, metadata !DIExpression()), !dbg !3134
  call void @llvm.dbg.value(metadata i32 0, metadata !3129, metadata !DIExpression()), !dbg !3134
  %14 = load i32, ptr %6, align 4, !dbg !3147, !tbaa !1216
  call void @llvm.dbg.value(metadata i32 %14, metadata !3127, metadata !DIExpression()), !dbg !3134
  %15 = icmp sgt i32 %14, 0, !dbg !3148
  br i1 %15, label %16, label %52, !dbg !3149

16:                                               ; preds = %13, %37
  %17 = phi i64 [ %48, %37 ], [ 0, %13 ]
  %18 = phi i32 [ %47, %37 ], [ 0, %13 ]
  call void @llvm.dbg.value(metadata i32 %18, metadata !3129, metadata !DIExpression()), !dbg !3134
  call void @llvm.dbg.value(metadata i64 %17, metadata !3128, metadata !DIExpression()), !dbg !3134
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16, !dbg !3150
  %19 = load i32, ptr @mux_buffer_size, align 4, !dbg !3151, !tbaa !1216
  %20 = load ptr, ptr %5, align 8, !dbg !3153, !tbaa !1220
  call void @llvm.dbg.value(metadata ptr %20, metadata !3125, metadata !DIExpression()), !dbg !3134
  %21 = getelementptr inbounds %struct.x264_nal_t, ptr %20, i64 %17, i32 2, !dbg !3154
  %22 = load i32, ptr %21, align 8, !dbg !3154, !tbaa !3155
  %23 = mul nsw i32 %22, 3, !dbg !3157
  %24 = sdiv i32 %23, 2, !dbg !3158
  %25 = add nsw i32 %24, 4, !dbg !3159
  %26 = icmp slt i32 %19, %25, !dbg !3160
  br i1 %26, label %29, label %27, !dbg !3161

27:                                               ; preds = %16
  %28 = load ptr, ptr @mux_buffer, align 8, !dbg !3162, !tbaa !1220
  br label %37, !dbg !3161

29:                                               ; preds = %16
  %30 = shl nsw i32 %22, 1, !dbg !3163
  %31 = add nsw i32 %30, 4, !dbg !3165
  store i32 %31, ptr @mux_buffer_size, align 4, !dbg !3166, !tbaa !1216
  %32 = load ptr, ptr @mux_buffer, align 8, !dbg !3167, !tbaa !1220
  call void @x264_free(ptr noundef %32) #16, !dbg !3168
  %33 = load i32, ptr @mux_buffer_size, align 4, !dbg !3169, !tbaa !1216
  %34 = call ptr @x264_malloc(i32 noundef %33) #16, !dbg !3170
  store ptr %34, ptr @mux_buffer, align 8, !dbg !3171, !tbaa !1220
  %35 = load i32, ptr @mux_buffer_size, align 4, !dbg !3172, !tbaa !1216
  %36 = load ptr, ptr %5, align 8, !dbg !3173, !tbaa !1220
  br label %37, !dbg !3174

37:                                               ; preds = %27, %29
  %38 = phi ptr [ %36, %29 ], [ %20, %27 ], !dbg !3173
  %39 = phi ptr [ %34, %29 ], [ %28, %27 ], !dbg !3162
  %40 = phi i32 [ %35, %29 ], [ %19, %27 ], !dbg !3172
  call void @llvm.dbg.value(metadata i32 %40, metadata !3130, metadata !DIExpression()), !dbg !3175
  store i32 %40, ptr %7, align 4, !dbg !3176, !tbaa !1216
  call void @llvm.dbg.value(metadata ptr %38, metadata !3125, metadata !DIExpression()), !dbg !3134
  %41 = getelementptr inbounds %struct.x264_nal_t, ptr %38, i64 %17, !dbg !3173
  call void @llvm.dbg.value(metadata ptr %7, metadata !3130, metadata !DIExpression(DW_OP_deref)), !dbg !3175
  %42 = call i32 @x264_nal_encode(ptr noundef %39, ptr noundef nonnull %7, i32 noundef 1, ptr noundef %41) #16, !dbg !3177
  %43 = load ptr, ptr @p_write_nalu, align 8, !dbg !3178, !tbaa !1220
  %44 = load ptr, ptr @mux_buffer, align 8, !dbg !3179, !tbaa !1220
  %45 = load i32, ptr %7, align 4, !dbg !3180, !tbaa !1216
  call void @llvm.dbg.value(metadata i32 %45, metadata !3130, metadata !DIExpression()), !dbg !3175
  %46 = call i32 %43(ptr noundef %1, ptr noundef %44, i32 noundef %45) #16, !dbg !3178, !callees !3181
  %47 = add nsw i32 %46, %18, !dbg !3182
  call void @llvm.dbg.value(metadata i32 %47, metadata !3129, metadata !DIExpression()), !dbg !3134
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16, !dbg !3183
  %48 = add nuw nsw i64 %17, 1, !dbg !3184
  call void @llvm.dbg.value(metadata i64 %48, metadata !3128, metadata !DIExpression()), !dbg !3134
  %49 = load i32, ptr %6, align 4, !dbg !3147, !tbaa !1216
  call void @llvm.dbg.value(metadata i32 %49, metadata !3127, metadata !DIExpression()), !dbg !3134
  %50 = sext i32 %49 to i64, !dbg !3148
  %51 = icmp slt i64 %48, %50, !dbg !3148
  br i1 %51, label %16, label %52, !dbg !3149, !llvm.loop !3185

52:                                               ; preds = %37, %13
  %53 = phi i32 [ 0, %13 ], [ %47, %37 ], !dbg !3134
  %54 = phi i32 [ %14, %13 ], [ %49, %37 ], !dbg !3147
  %55 = icmp eq i32 %54, 0, !dbg !3187
  br i1 %55, label %59, label %56, !dbg !3189

56:                                               ; preds = %52
  %57 = load ptr, ptr @p_set_eop, align 8, !dbg !3190, !tbaa !1220
  %58 = call i32 %57(ptr noundef %1, ptr noundef nonnull %4) #16, !dbg !3190, !callees !3191
  br label %59, !dbg !3190

59:                                               ; preds = %56, %52
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16, !dbg !3192
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16, !dbg !3192
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #16, !dbg !3192
  ret i32 %53, !dbg !3193
}

; Function Attrs: nofree nounwind
declare !dbg !3194 noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

declare !dbg !3198 void @x264_picture_clean(ptr noundef) local_unnamed_addr #4

declare !dbg !3201 void @x264_encoder_close(ptr noundef) local_unnamed_addr #4

declare !dbg !3204 void @x264_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3207 noundef i64 @ftello(ptr nocapture noundef) local_unnamed_addr #3

declare !dbg !3210 i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3211 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !3214 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #3

declare !dbg !3215 i32 @x264_encoder_encode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !3219 ptr @x264_malloc(i32 noundef) local_unnamed_addr #4

declare !dbg !3222 i32 @x264_nal_encode(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #14

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

attributes #0 = { nounwind uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree nounwind "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #4 = { "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #5 = { nounwind "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #7 = { noreturn nounwind "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nofree nounwind uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(read) "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(argmem: read) "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #13 = { mustprogress nofree nounwind willreturn "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nofree nounwind }
attributes #16 = { nounwind }
attributes #17 = { noreturn nounwind }
attributes #18 = { nounwind willreturn memory(read) }
attributes #19 = { cold }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1185, !1186, !1187, !1188, !1189, !1190}
!llvm.ident = !{!1191}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "mux_buffer", scope: !2, file: !3, line: 50, type: !212, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 16.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !16, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "x264.c", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "3870ea8dcd436835d69d6cd516a926cd")
!4 = !{!5, !6, !9, !10, !15}
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !11, line: 27, baseType: !12)
!11 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !13, line: 44, baseType: !14)
!13 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!14 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!15 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!16 = !{!0, !17, !19, !24, !183, !188, !213, !215, !217, !219, !224, !229, !234, !236, !238, !240, !245, !250, !255, !257, !259, !261, !266, !271, !273, !275, !277, !279, !281, !283, !288, !290, !292, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !332, !334, !336, !338, !340, !342, !344, !349, !352, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !405, !407, !409, !411, !413, !415, !417, !419, !421, !423, !425, !427, !429, !431, !433, !435, !437, !439, !441, !443, !445, !447, !449, !451, !453, !455, !457, !459, !461, !463, !568, !573, !578, !583, !588, !590, !595, !597, !600, !605, !607, !612, !617, !622, !627, !629, !631, !633, !635, !637, !642, !647, !649, !654, !659, !664, !669, !674, !679, !681, !686, !688, !690, !695, !697, !702, !704, !709, !714, !719, !724, !729, !732, !737, !742, !744, !749, !754, !756, !761, !763, !768, !770, !775, !780, !785, !787, !789, !794, !796, !798, !803, !808, !813, !818, !820, !825, !830, !835, !837, !842, !844, !846, !851, !856, !861, !863, !868, !873, !875, !877, !882, !884, !889, !894, !899, !904, !906, !908, !910, !915, !920, !922, !924, !929, !931, !936, !941, !946, !948, !953, !955, !960, !965, !970, !972, !974, !979, !984, !989, !994, !999, !1004, !1006, !1008, !1010, !1012, !1017, !1019, !1021, !1023, !1028, !1030, !1035, !1037, !1039, !1041, !1043, !1048, !1053, !1058, !1060, !1062, !1064, !1066, !1068, !1070, !1072, !1074, !1076, !1080, !1082, !1084, !1086, !1088, !1090, !1093, !1095, !1097, !1099, !1102, !1104, !1106, !1108, !1110, !1112, !1115, !1117, !1119, !1122, !1124, !1126, !1128, !1130, !1132, !1134, !1136, !1139, !1141, !1143, !1145, !1148, !1150, !1152, !1154, !1156, !1161, !1163, !1165, !1167, !1169, !1171, !1176, !1178, !1180, !1182}
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "mux_buffer_size", scope: !2, file: !3, line: 51, type: !5, isLocal: false, isDefinition: true)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(scope: null, file: !3, line: 104, type: !21, isLocal: true, isDefinition: true)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 192, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 24)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(name: "p_open_infile", scope: !2, file: !3, line: 72, type: !26, isLocal: false, isDefinition: true)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DISubroutineType(types: !28)
!28 = !{!5, !7, !29, !32}
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "hnd_t", file: !31, line: 27, baseType: !9)
!31 = !DIFile(filename: "./muxers.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "ed3d03989a60e06598fb30a2be34ae15")
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_param_t", file: !34, line: 295, baseType: !35)
!34 = !DIFile(filename: "./x264.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "9fe19a6136ab7ddd44a70d62bce62365")
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_param_t", file: !34, line: 151, size: 4928, elements: !36)
!36 = !{!37, !39, !40, !41, !42, !43, !44, !45, !46, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !85, !86, !87, !88, !92, !93, !107, !108, !109, !110, !111, !141, !180, !181, !182}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !35, file: !34, line: 154, baseType: !38, size: 32)
!38 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "i_threads", scope: !35, file: !34, line: 155, baseType: !5, size: 32, offset: 32)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "b_deterministic", scope: !35, file: !34, line: 156, baseType: !5, size: 32, offset: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !35, file: !34, line: 159, baseType: !5, size: 32, offset: 96)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "i_height", scope: !35, file: !34, line: 160, baseType: !5, size: 32, offset: 128)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "i_csp", scope: !35, file: !34, line: 161, baseType: !5, size: 32, offset: 160)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !35, file: !34, line: 162, baseType: !5, size: 32, offset: 192)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_total", scope: !35, file: !34, line: 163, baseType: !5, size: 32, offset: 224)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !35, file: !34, line: 180, baseType: !47, size: 288, offset: 256)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !35, file: !34, line: 165, size: 288, elements: !48)
!48 = !{!49, !50, !51, !52, !53, !54, !55, !56, !57}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !47, file: !34, line: 168, baseType: !5, size: 32)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !47, file: !34, line: 169, baseType: !5, size: 32, offset: 32)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "i_overscan", scope: !47, file: !34, line: 171, baseType: !5, size: 32, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !47, file: !34, line: 174, baseType: !5, size: 32, offset: 96)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !47, file: !34, line: 175, baseType: !5, size: 32, offset: 128)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !47, file: !34, line: 176, baseType: !5, size: 32, offset: 160)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !47, file: !34, line: 177, baseType: !5, size: 32, offset: 192)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !47, file: !34, line: 178, baseType: !5, size: 32, offset: 224)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc", scope: !47, file: !34, line: 179, baseType: !5, size: 32, offset: 256)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_num", scope: !35, file: !34, line: 182, baseType: !5, size: 32, offset: 544)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_den", scope: !35, file: !34, line: 183, baseType: !5, size: 32, offset: 576)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_reference", scope: !35, file: !34, line: 186, baseType: !5, size: 32, offset: 608)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_max", scope: !35, file: !34, line: 187, baseType: !5, size: 32, offset: 640)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_min", scope: !35, file: !34, line: 188, baseType: !5, size: 32, offset: 672)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "i_scenecut_threshold", scope: !35, file: !34, line: 189, baseType: !5, size: 32, offset: 704)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "b_pre_scenecut", scope: !35, file: !34, line: 190, baseType: !5, size: 32, offset: 736)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe", scope: !35, file: !34, line: 191, baseType: !5, size: 32, offset: 768)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_adaptive", scope: !35, file: !34, line: 192, baseType: !5, size: 32, offset: 800)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_bias", scope: !35, file: !34, line: 193, baseType: !5, size: 32, offset: 832)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "b_bframe_pyramid", scope: !35, file: !34, line: 194, baseType: !5, size: 32, offset: 864)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter", scope: !35, file: !34, line: 196, baseType: !5, size: 32, offset: 896)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_alphac0", scope: !35, file: !34, line: 197, baseType: !5, size: 32, offset: 928)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_beta", scope: !35, file: !34, line: 198, baseType: !5, size: 32, offset: 960)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !35, file: !34, line: 200, baseType: !5, size: 32, offset: 992)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !35, file: !34, line: 201, baseType: !5, size: 32, offset: 1024)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !35, file: !34, line: 203, baseType: !5, size: 32, offset: 1056)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !35, file: !34, line: 205, baseType: !5, size: 32, offset: 1088)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "psz_cqm_file", scope: !35, file: !34, line: 206, baseType: !7, size: 64, offset: 1152)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4iy", scope: !35, file: !34, line: 207, baseType: !78, size: 128, offset: 1216)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 128, elements: !83)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !80, line: 24, baseType: !81)
!80 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !13, line: 38, baseType: !82)
!82 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!83 = !{!84}
!84 = !DISubrange(count: 16)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4ic", scope: !35, file: !34, line: 208, baseType: !78, size: 128, offset: 1344)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4py", scope: !35, file: !34, line: 209, baseType: !78, size: 128, offset: 1472)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4pc", scope: !35, file: !34, line: 210, baseType: !78, size: 128, offset: 1600)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8iy", scope: !35, file: !34, line: 211, baseType: !89, size: 512, offset: 1728)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 512, elements: !90)
!90 = !{!91}
!91 = !DISubrange(count: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8py", scope: !35, file: !34, line: 212, baseType: !89, size: 512, offset: 2240)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "pf_log", scope: !35, file: !34, line: 215, baseType: !94, size: 64, offset: 2752)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DISubroutineType(types: !96)
!96 = !{null, !9, !5, !97, !99}
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !101)
!101 = !{!102, !104, !105, !106}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !100, file: !103, line: 94, baseType: !38, size: 32)
!103 = !DIFile(filename: "x264.c", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src")
!104 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !100, file: !103, line: 94, baseType: !38, size: 32, offset: 32)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !100, file: !103, line: 94, baseType: !9, size: 64, offset: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !100, file: !103, line: 94, baseType: !9, size: 64, offset: 128)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "p_log_private", scope: !35, file: !34, line: 216, baseType: !9, size: 64, offset: 2816)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "i_log_level", scope: !35, file: !34, line: 217, baseType: !5, size: 32, offset: 2880)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "b_visualize", scope: !35, file: !34, line: 218, baseType: !5, size: 32, offset: 2912)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "psz_dump_yuv", scope: !35, file: !34, line: 219, baseType: !7, size: 64, offset: 2944)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "analyse", scope: !35, file: !34, line: 252, baseType: !112, size: 768, offset: 3008)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !35, file: !34, line: 222, size: 768, elements: !113)
!113 = !{!114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !134, !135, !139, !140}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "intra", scope: !112, file: !34, line: 224, baseType: !38, size: 32)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "inter", scope: !112, file: !34, line: 225, baseType: !38, size: 32, offset: 32)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !112, file: !34, line: 227, baseType: !5, size: 32, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !112, file: !34, line: 228, baseType: !5, size: 32, offset: 96)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_mv_pred", scope: !112, file: !34, line: 229, baseType: !5, size: 32, offset: 128)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_8x8_inference", scope: !112, file: !34, line: 230, baseType: !5, size: 32, offset: 160)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_offset", scope: !112, file: !34, line: 231, baseType: !5, size: 32, offset: 192)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !112, file: !34, line: 233, baseType: !5, size: 32, offset: 224)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_range", scope: !112, file: !34, line: 234, baseType: !5, size: 32, offset: 256)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range", scope: !112, file: !34, line: 235, baseType: !5, size: 32, offset: 288)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range_thread", scope: !112, file: !34, line: 236, baseType: !5, size: 32, offset: 320)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !112, file: !34, line: 237, baseType: !5, size: 32, offset: 352)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !112, file: !34, line: 238, baseType: !5, size: 32, offset: 384)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "b_mixed_references", scope: !112, file: !34, line: 239, baseType: !5, size: 32, offset: 416)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "i_trellis", scope: !112, file: !34, line: 240, baseType: !5, size: 32, offset: 448)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "b_fast_pskip", scope: !112, file: !34, line: 241, baseType: !5, size: 32, offset: 480)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "b_dct_decimate", scope: !112, file: !34, line: 242, baseType: !5, size: 32, offset: 512)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "i_noise_reduction", scope: !112, file: !34, line: 243, baseType: !5, size: 32, offset: 544)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_rd", scope: !112, file: !34, line: 244, baseType: !133, size: 32, offset: 576)
!133 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_trellis", scope: !112, file: !34, line: 245, baseType: !133, size: 32, offset: 608)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "i_luma_deadzone", scope: !112, file: !34, line: 248, baseType: !136, size: 64, offset: 640)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 64, elements: !137)
!137 = !{!138}
!138 = !DISubrange(count: 2)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "b_psnr", scope: !112, file: !34, line: 250, baseType: !5, size: 32, offset: 704)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "b_ssim", scope: !112, file: !34, line: 251, baseType: !5, size: 32, offset: 736)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !35, file: !34, line: 289, baseType: !142, size: 1024, offset: 3776)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !35, file: !34, line: 255, size: 1024, elements: !143)
!143 = !{!144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !178, !179}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "i_rc_method", scope: !142, file: !34, line: 257, baseType: !5, size: 32)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_constant", scope: !142, file: !34, line: 259, baseType: !5, size: 32, offset: 32)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_min", scope: !142, file: !34, line: 260, baseType: !5, size: 32, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_max", scope: !142, file: !34, line: 261, baseType: !5, size: 32, offset: 96)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_step", scope: !142, file: !34, line: 262, baseType: !5, size: 32, offset: 128)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitrate", scope: !142, file: !34, line: 264, baseType: !5, size: 32, offset: 160)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant", scope: !142, file: !34, line: 265, baseType: !133, size: 32, offset: 192)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "f_rate_tolerance", scope: !142, file: !34, line: 266, baseType: !133, size: 32, offset: 224)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_max_bitrate", scope: !142, file: !34, line: 267, baseType: !5, size: 32, offset: 256)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_buffer_size", scope: !142, file: !34, line: 268, baseType: !5, size: 32, offset: 288)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "f_vbv_buffer_init", scope: !142, file: !34, line: 269, baseType: !133, size: 32, offset: 320)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "f_ip_factor", scope: !142, file: !34, line: 270, baseType: !133, size: 32, offset: 352)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "f_pb_factor", scope: !142, file: !34, line: 271, baseType: !133, size: 32, offset: 384)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "i_aq_mode", scope: !142, file: !34, line: 273, baseType: !5, size: 32, offset: 416)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "f_aq_strength", scope: !142, file: !34, line: 274, baseType: !133, size: 32, offset: 448)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_write", scope: !142, file: !34, line: 277, baseType: !5, size: 32, offset: 480)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_out", scope: !142, file: !34, line: 278, baseType: !7, size: 64, offset: 512)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_read", scope: !142, file: !34, line: 279, baseType: !5, size: 32, offset: 576)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_in", scope: !142, file: !34, line: 280, baseType: !7, size: 64, offset: 640)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "f_qcompress", scope: !142, file: !34, line: 283, baseType: !133, size: 32, offset: 704)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "f_qblur", scope: !142, file: !34, line: 284, baseType: !133, size: 32, offset: 736)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "f_complexity_blur", scope: !142, file: !34, line: 285, baseType: !133, size: 32, offset: 768)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "zones", scope: !142, file: !34, line: 286, baseType: !167, size: 64, offset: 832)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zone_t", file: !34, line: 149, baseType: !169)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 142, size: 256, elements: !170)
!170 = !{!171, !172, !173, !174, !175, !176}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "i_start", scope: !169, file: !34, line: 144, baseType: !5, size: 32)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "i_end", scope: !169, file: !34, line: 144, baseType: !5, size: 32, offset: 32)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "b_force_qp", scope: !169, file: !34, line: 145, baseType: !5, size: 32, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !169, file: !34, line: 146, baseType: !5, size: 32, offset: 96)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "f_bitrate_factor", scope: !169, file: !34, line: 147, baseType: !133, size: 32, offset: 128)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !169, file: !34, line: 148, baseType: !177, size: 64, offset: 192)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "i_zones", scope: !142, file: !34, line: 287, baseType: !5, size: 32, offset: 896)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "psz_zones", scope: !142, file: !34, line: 288, baseType: !7, size: 64, offset: 960)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "b_aud", scope: !35, file: !34, line: 292, baseType: !5, size: 32, offset: 4800)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "b_repeat_headers", scope: !35, file: !34, line: 293, baseType: !5, size: 32, offset: 4832)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !35, file: !34, line: 294, baseType: !5, size: 32, offset: 4864)
!183 = !DIGlobalVariableExpression(var: !184, expr: !DIExpression())
!184 = distinct !DIGlobalVariable(name: "p_get_frame_total", scope: !2, file: !3, line: 73, type: !185, isLocal: false, isDefinition: true)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DISubroutineType(types: !187)
!187 = !{!5, !30}
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(name: "p_read_frame", scope: !2, file: !3, line: 74, type: !190, isLocal: false, isDefinition: true)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{!5, !193, !30, !5}
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_picture_t", file: !34, line: 354, baseType: !195)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 342, size: 576, elements: !196)
!196 = !{!197, !198, !199, !200}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !195, file: !34, line: 346, baseType: !5, size: 32)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "i_qpplus1", scope: !195, file: !34, line: 348, baseType: !5, size: 32, offset: 32)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "i_pts", scope: !195, file: !34, line: 350, baseType: !10, size: 64, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "img", scope: !195, file: !34, line: 353, baseType: !201, size: 448, offset: 128)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_image_t", file: !34, line: 340, baseType: !202)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 333, size: 448, elements: !203)
!203 = !{!204, !205, !206, !210}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "i_csp", scope: !202, file: !34, line: 335, baseType: !5, size: 32)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "i_plane", scope: !202, file: !34, line: 337, baseType: !5, size: 32, offset: 32)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !202, file: !34, line: 338, baseType: !207, size: 128, offset: 64)
!207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 128, elements: !208)
!208 = !{!209}
!209 = !DISubrange(count: 4)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !202, file: !34, line: 339, baseType: !211, size: 256, offset: 192)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 256, elements: !208)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!213 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression())
!214 = distinct !DIGlobalVariable(name: "p_close_infile", scope: !2, file: !3, line: 75, type: !185, isLocal: false, isDefinition: true)
!215 = !DIGlobalVariableExpression(var: !216, expr: !DIExpression())
!216 = distinct !DIGlobalVariable(name: "b_exit_on_ctrl_c", scope: !2, file: !3, line: 55, type: !5, isLocal: true, isDefinition: true)
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(name: "b_ctrl_c", scope: !2, file: !3, line: 54, type: !5, isLocal: true, isDefinition: true)
!219 = !DIGlobalVariableExpression(var: !220, expr: !DIExpression())
!220 = distinct !DIGlobalVariable(scope: null, file: !3, line: 412, type: !221, isLocal: true, isDefinition: true)
!221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 40, elements: !222)
!222 = !{!223}
!223 = !DISubrange(count: 5)
!224 = !DIGlobalVariableExpression(var: !225, expr: !DIExpression())
!225 = distinct !DIGlobalVariable(scope: null, file: !3, line: 413, type: !226, isLocal: true, isDefinition: true)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 72, elements: !227)
!227 = !{!228}
!228 = !DISubrange(count: 9)
!229 = !DIGlobalVariableExpression(var: !230, expr: !DIExpression())
!230 = distinct !DIGlobalVariable(scope: null, file: !3, line: 414, type: !231, isLocal: true, isDefinition: true)
!231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 64, elements: !232)
!232 = !{!233}
!233 = !DISubrange(count: 8)
!234 = !DIGlobalVariableExpression(var: !235, expr: !DIExpression())
!235 = distinct !DIGlobalVariable(scope: null, file: !3, line: 415, type: !231, isLocal: true, isDefinition: true)
!236 = !DIGlobalVariableExpression(var: !237, expr: !DIExpression())
!237 = distinct !DIGlobalVariable(scope: null, file: !3, line: 416, type: !231, isLocal: true, isDefinition: true)
!238 = !DIGlobalVariableExpression(var: !239, expr: !DIExpression())
!239 = distinct !DIGlobalVariable(scope: null, file: !3, line: 417, type: !231, isLocal: true, isDefinition: true)
!240 = !DIGlobalVariableExpression(var: !241, expr: !DIExpression())
!241 = distinct !DIGlobalVariable(scope: null, file: !3, line: 418, type: !242, isLocal: true, isDefinition: true)
!242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 88, elements: !243)
!243 = !{!244}
!244 = !DISubrange(count: 11)
!245 = !DIGlobalVariableExpression(var: !246, expr: !DIExpression())
!246 = distinct !DIGlobalVariable(scope: null, file: !3, line: 419, type: !247, isLocal: true, isDefinition: true)
!247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 56, elements: !248)
!248 = !{!249}
!249 = !DISubrange(count: 7)
!250 = !DIGlobalVariableExpression(var: !251, expr: !DIExpression())
!251 = distinct !DIGlobalVariable(scope: null, file: !3, line: 420, type: !252, isLocal: true, isDefinition: true)
!252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 80, elements: !253)
!253 = !{!254}
!254 = !DISubrange(count: 10)
!255 = !DIGlobalVariableExpression(var: !256, expr: !DIExpression())
!256 = distinct !DIGlobalVariable(scope: null, file: !3, line: 421, type: !242, isLocal: true, isDefinition: true)
!257 = !DIGlobalVariableExpression(var: !258, expr: !DIExpression())
!258 = distinct !DIGlobalVariable(scope: null, file: !3, line: 422, type: !247, isLocal: true, isDefinition: true)
!259 = !DIGlobalVariableExpression(var: !260, expr: !DIExpression())
!260 = distinct !DIGlobalVariable(scope: null, file: !3, line: 423, type: !226, isLocal: true, isDefinition: true)
!261 = !DIGlobalVariableExpression(var: !262, expr: !DIExpression())
!262 = distinct !DIGlobalVariable(scope: null, file: !3, line: 424, type: !263, isLocal: true, isDefinition: true)
!263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 104, elements: !264)
!264 = !{!265}
!265 = !DISubrange(count: 13)
!266 = !DIGlobalVariableExpression(var: !267, expr: !DIExpression())
!267 = distinct !DIGlobalVariable(scope: null, file: !3, line: 425, type: !268, isLocal: true, isDefinition: true)
!268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 24, elements: !269)
!269 = !{!270}
!270 = !DISubrange(count: 3)
!271 = !DIGlobalVariableExpression(var: !272, expr: !DIExpression())
!272 = distinct !DIGlobalVariable(scope: null, file: !3, line: 426, type: !242, isLocal: true, isDefinition: true)
!273 = !DIGlobalVariableExpression(var: !274, expr: !DIExpression())
!274 = distinct !DIGlobalVariable(scope: null, file: !3, line: 427, type: !247, isLocal: true, isDefinition: true)
!275 = !DIGlobalVariableExpression(var: !276, expr: !DIExpression())
!276 = distinct !DIGlobalVariable(scope: null, file: !3, line: 428, type: !231, isLocal: true, isDefinition: true)
!277 = !DIGlobalVariableExpression(var: !278, expr: !DIExpression())
!278 = distinct !DIGlobalVariable(scope: null, file: !3, line: 429, type: !242, isLocal: true, isDefinition: true)
!279 = !DIGlobalVariableExpression(var: !280, expr: !DIExpression())
!280 = distinct !DIGlobalVariable(scope: null, file: !3, line: 430, type: !226, isLocal: true, isDefinition: true)
!281 = !DIGlobalVariableExpression(var: !282, expr: !DIExpression())
!282 = distinct !DIGlobalVariable(scope: null, file: !3, line: 431, type: !268, isLocal: true, isDefinition: true)
!283 = !DIGlobalVariableExpression(var: !284, expr: !DIExpression())
!284 = distinct !DIGlobalVariable(scope: null, file: !3, line: 432, type: !285, isLocal: true, isDefinition: true)
!285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 48, elements: !286)
!286 = !{!287}
!287 = !DISubrange(count: 6)
!288 = !DIGlobalVariableExpression(var: !289, expr: !DIExpression())
!289 = distinct !DIGlobalVariable(scope: null, file: !3, line: 433, type: !285, isLocal: true, isDefinition: true)
!290 = !DIGlobalVariableExpression(var: !291, expr: !DIExpression())
!291 = distinct !DIGlobalVariable(scope: null, file: !3, line: 434, type: !247, isLocal: true, isDefinition: true)
!292 = !DIGlobalVariableExpression(var: !293, expr: !DIExpression())
!293 = distinct !DIGlobalVariable(scope: null, file: !3, line: 435, type: !294, isLocal: true, isDefinition: true)
!294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !208)
!295 = !DIGlobalVariableExpression(var: !296, expr: !DIExpression())
!296 = distinct !DIGlobalVariable(scope: null, file: !3, line: 436, type: !294, isLocal: true, isDefinition: true)
!297 = !DIGlobalVariableExpression(var: !298, expr: !DIExpression())
!298 = distinct !DIGlobalVariable(scope: null, file: !3, line: 437, type: !294, isLocal: true, isDefinition: true)
!299 = !DIGlobalVariableExpression(var: !300, expr: !DIExpression())
!300 = distinct !DIGlobalVariable(scope: null, file: !3, line: 438, type: !247, isLocal: true, isDefinition: true)
!301 = !DIGlobalVariableExpression(var: !302, expr: !DIExpression())
!302 = distinct !DIGlobalVariable(scope: null, file: !3, line: 439, type: !294, isLocal: true, isDefinition: true)
!303 = !DIGlobalVariableExpression(var: !304, expr: !DIExpression())
!304 = distinct !DIGlobalVariable(scope: null, file: !3, line: 440, type: !294, isLocal: true, isDefinition: true)
!305 = !DIGlobalVariableExpression(var: !306, expr: !DIExpression())
!306 = distinct !DIGlobalVariable(scope: null, file: !3, line: 441, type: !247, isLocal: true, isDefinition: true)
!307 = !DIGlobalVariableExpression(var: !308, expr: !DIExpression())
!308 = distinct !DIGlobalVariable(scope: null, file: !3, line: 442, type: !221, isLocal: true, isDefinition: true)
!309 = !DIGlobalVariableExpression(var: !310, expr: !DIExpression())
!310 = distinct !DIGlobalVariable(scope: null, file: !3, line: 443, type: !247, isLocal: true, isDefinition: true)
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(scope: null, file: !3, line: 444, type: !231, isLocal: true, isDefinition: true)
!313 = !DIGlobalVariableExpression(var: !314, expr: !DIExpression())
!314 = distinct !DIGlobalVariable(scope: null, file: !3, line: 445, type: !242, isLocal: true, isDefinition: true)
!315 = !DIGlobalVariableExpression(var: !316, expr: !DIExpression())
!316 = distinct !DIGlobalVariable(scope: null, file: !3, line: 446, type: !247, isLocal: true, isDefinition: true)
!317 = !DIGlobalVariableExpression(var: !318, expr: !DIExpression())
!318 = distinct !DIGlobalVariable(scope: null, file: !3, line: 447, type: !242, isLocal: true, isDefinition: true)
!319 = !DIGlobalVariableExpression(var: !320, expr: !DIExpression())
!320 = distinct !DIGlobalVariable(scope: null, file: !3, line: 448, type: !231, isLocal: true, isDefinition: true)
!321 = !DIGlobalVariableExpression(var: !322, expr: !DIExpression())
!322 = distinct !DIGlobalVariable(scope: null, file: !3, line: 449, type: !268, isLocal: true, isDefinition: true)
!323 = !DIGlobalVariableExpression(var: !324, expr: !DIExpression())
!324 = distinct !DIGlobalVariable(scope: null, file: !3, line: 450, type: !231, isLocal: true, isDefinition: true)
!325 = !DIGlobalVariableExpression(var: !326, expr: !DIExpression())
!326 = distinct !DIGlobalVariable(scope: null, file: !3, line: 451, type: !231, isLocal: true, isDefinition: true)
!327 = !DIGlobalVariableExpression(var: !328, expr: !DIExpression())
!328 = distinct !DIGlobalVariable(scope: null, file: !3, line: 452, type: !329, isLocal: true, isDefinition: true)
!329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 120, elements: !330)
!330 = !{!331}
!331 = !DISubrange(count: 15)
!332 = !DIGlobalVariableExpression(var: !333, expr: !DIExpression())
!333 = distinct !DIGlobalVariable(scope: null, file: !3, line: 453, type: !285, isLocal: true, isDefinition: true)
!334 = !DIGlobalVariableExpression(var: !335, expr: !DIExpression())
!335 = distinct !DIGlobalVariable(scope: null, file: !3, line: 454, type: !247, isLocal: true, isDefinition: true)
!336 = !DIGlobalVariableExpression(var: !337, expr: !DIExpression())
!337 = distinct !DIGlobalVariable(scope: null, file: !3, line: 455, type: !242, isLocal: true, isDefinition: true)
!338 = !DIGlobalVariableExpression(var: !339, expr: !DIExpression())
!339 = distinct !DIGlobalVariable(scope: null, file: !3, line: 456, type: !263, isLocal: true, isDefinition: true)
!340 = !DIGlobalVariableExpression(var: !341, expr: !DIExpression())
!341 = distinct !DIGlobalVariable(scope: null, file: !3, line: 457, type: !247, isLocal: true, isDefinition: true)
!342 = !DIGlobalVariableExpression(var: !343, expr: !DIExpression())
!343 = distinct !DIGlobalVariable(scope: null, file: !3, line: 458, type: !231, isLocal: true, isDefinition: true)
!344 = !DIGlobalVariableExpression(var: !345, expr: !DIExpression())
!345 = distinct !DIGlobalVariable(scope: null, file: !3, line: 459, type: !346, isLocal: true, isDefinition: true)
!346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 112, elements: !347)
!347 = !{!348}
!348 = !DISubrange(count: 14)
!349 = !DIGlobalVariableExpression(var: !350, expr: !DIExpression())
!350 = distinct !DIGlobalVariable(scope: null, file: !3, line: 460, type: !351, isLocal: true, isDefinition: true)
!351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 128, elements: !83)
!352 = !DIGlobalVariableExpression(var: !353, expr: !DIExpression())
!353 = distinct !DIGlobalVariable(scope: null, file: !3, line: 461, type: !354, isLocal: true, isDefinition: true)
!354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 96, elements: !355)
!355 = !{!356}
!356 = !DISubrange(count: 12)
!357 = !DIGlobalVariableExpression(var: !358, expr: !DIExpression())
!358 = distinct !DIGlobalVariable(scope: null, file: !3, line: 462, type: !231, isLocal: true, isDefinition: true)
!359 = !DIGlobalVariableExpression(var: !360, expr: !DIExpression())
!360 = distinct !DIGlobalVariable(scope: null, file: !3, line: 463, type: !329, isLocal: true, isDefinition: true)
!361 = !DIGlobalVariableExpression(var: !362, expr: !DIExpression())
!362 = distinct !DIGlobalVariable(scope: null, file: !3, line: 464, type: !329, isLocal: true, isDefinition: true)
!363 = !DIGlobalVariableExpression(var: !364, expr: !DIExpression())
!364 = distinct !DIGlobalVariable(scope: null, file: !3, line: 465, type: !285, isLocal: true, isDefinition: true)
!365 = !DIGlobalVariableExpression(var: !366, expr: !DIExpression())
!366 = distinct !DIGlobalVariable(scope: null, file: !3, line: 466, type: !231, isLocal: true, isDefinition: true)
!367 = !DIGlobalVariableExpression(var: !368, expr: !DIExpression())
!368 = distinct !DIGlobalVariable(scope: null, file: !3, line: 467, type: !354, isLocal: true, isDefinition: true)
!369 = !DIGlobalVariableExpression(var: !370, expr: !DIExpression())
!370 = distinct !DIGlobalVariable(scope: null, file: !3, line: 468, type: !354, isLocal: true, isDefinition: true)
!371 = !DIGlobalVariableExpression(var: !372, expr: !DIExpression())
!372 = distinct !DIGlobalVariable(scope: null, file: !3, line: 469, type: !226, isLocal: true, isDefinition: true)
!373 = !DIGlobalVariableExpression(var: !374, expr: !DIExpression())
!374 = distinct !DIGlobalVariable(scope: null, file: !3, line: 470, type: !231, isLocal: true, isDefinition: true)
!375 = !DIGlobalVariableExpression(var: !376, expr: !DIExpression())
!376 = distinct !DIGlobalVariable(scope: null, file: !3, line: 471, type: !231, isLocal: true, isDefinition: true)
!377 = !DIGlobalVariableExpression(var: !378, expr: !DIExpression())
!378 = distinct !DIGlobalVariable(scope: null, file: !3, line: 472, type: !379, isLocal: true, isDefinition: true)
!379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 136, elements: !380)
!380 = !{!381}
!381 = !DISubrange(count: 17)
!382 = !DIGlobalVariableExpression(var: !383, expr: !DIExpression())
!383 = distinct !DIGlobalVariable(scope: null, file: !3, line: 473, type: !221, isLocal: true, isDefinition: true)
!384 = !DIGlobalVariableExpression(var: !385, expr: !DIExpression())
!385 = distinct !DIGlobalVariable(scope: null, file: !3, line: 474, type: !285, isLocal: true, isDefinition: true)
!386 = !DIGlobalVariableExpression(var: !387, expr: !DIExpression())
!387 = distinct !DIGlobalVariable(scope: null, file: !3, line: 475, type: !285, isLocal: true, isDefinition: true)
!388 = !DIGlobalVariableExpression(var: !389, expr: !DIExpression())
!389 = distinct !DIGlobalVariable(scope: null, file: !3, line: 476, type: !285, isLocal: true, isDefinition: true)
!390 = !DIGlobalVariableExpression(var: !391, expr: !DIExpression())
!391 = distinct !DIGlobalVariable(scope: null, file: !3, line: 477, type: !226, isLocal: true, isDefinition: true)
!392 = !DIGlobalVariableExpression(var: !393, expr: !DIExpression())
!393 = distinct !DIGlobalVariable(scope: null, file: !3, line: 478, type: !285, isLocal: true, isDefinition: true)
!394 = !DIGlobalVariableExpression(var: !395, expr: !DIExpression())
!395 = distinct !DIGlobalVariable(scope: null, file: !3, line: 479, type: !247, isLocal: true, isDefinition: true)
!396 = !DIGlobalVariableExpression(var: !397, expr: !DIExpression())
!397 = distinct !DIGlobalVariable(scope: null, file: !3, line: 480, type: !231, isLocal: true, isDefinition: true)
!398 = !DIGlobalVariableExpression(var: !399, expr: !DIExpression())
!399 = distinct !DIGlobalVariable(scope: null, file: !3, line: 481, type: !263, isLocal: true, isDefinition: true)
!400 = !DIGlobalVariableExpression(var: !401, expr: !DIExpression())
!401 = distinct !DIGlobalVariable(scope: null, file: !3, line: 482, type: !402, isLocal: true, isDefinition: true)
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 144, elements: !403)
!403 = !{!404}
!404 = !DISubrange(count: 18)
!405 = !DIGlobalVariableExpression(var: !406, expr: !DIExpression())
!406 = distinct !DIGlobalVariable(scope: null, file: !3, line: 483, type: !231, isLocal: true, isDefinition: true)
!407 = !DIGlobalVariableExpression(var: !408, expr: !DIExpression())
!408 = distinct !DIGlobalVariable(scope: null, file: !3, line: 484, type: !231, isLocal: true, isDefinition: true)
!409 = !DIGlobalVariableExpression(var: !410, expr: !DIExpression())
!410 = distinct !DIGlobalVariable(scope: null, file: !3, line: 485, type: !285, isLocal: true, isDefinition: true)
!411 = !DIGlobalVariableExpression(var: !412, expr: !DIExpression())
!412 = distinct !DIGlobalVariable(scope: null, file: !3, line: 486, type: !231, isLocal: true, isDefinition: true)
!413 = !DIGlobalVariableExpression(var: !414, expr: !DIExpression())
!414 = distinct !DIGlobalVariable(scope: null, file: !3, line: 487, type: !226, isLocal: true, isDefinition: true)
!415 = !DIGlobalVariableExpression(var: !416, expr: !DIExpression())
!416 = distinct !DIGlobalVariable(scope: null, file: !3, line: 488, type: !252, isLocal: true, isDefinition: true)
!417 = !DIGlobalVariableExpression(var: !418, expr: !DIExpression())
!418 = distinct !DIGlobalVariable(scope: null, file: !3, line: 489, type: !226, isLocal: true, isDefinition: true)
!419 = !DIGlobalVariableExpression(var: !420, expr: !DIExpression())
!420 = distinct !DIGlobalVariable(scope: null, file: !3, line: 490, type: !247, isLocal: true, isDefinition: true)
!421 = !DIGlobalVariableExpression(var: !422, expr: !DIExpression())
!422 = distinct !DIGlobalVariable(scope: null, file: !3, line: 491, type: !294, isLocal: true, isDefinition: true)
!423 = !DIGlobalVariableExpression(var: !424, expr: !DIExpression())
!424 = distinct !DIGlobalVariable(scope: null, file: !3, line: 492, type: !268, isLocal: true, isDefinition: true)
!425 = !DIGlobalVariableExpression(var: !426, expr: !DIExpression())
!426 = distinct !DIGlobalVariable(scope: null, file: !3, line: 493, type: !294, isLocal: true, isDefinition: true)
!427 = !DIGlobalVariableExpression(var: !428, expr: !DIExpression())
!428 = distinct !DIGlobalVariable(scope: null, file: !3, line: 494, type: !231, isLocal: true, isDefinition: true)
!429 = !DIGlobalVariableExpression(var: !430, expr: !DIExpression())
!430 = distinct !DIGlobalVariable(scope: null, file: !3, line: 495, type: !221, isLocal: true, isDefinition: true)
!431 = !DIGlobalVariableExpression(var: !432, expr: !DIExpression())
!432 = distinct !DIGlobalVariable(scope: null, file: !3, line: 496, type: !285, isLocal: true, isDefinition: true)
!433 = !DIGlobalVariableExpression(var: !434, expr: !DIExpression())
!434 = distinct !DIGlobalVariable(scope: null, file: !3, line: 497, type: !247, isLocal: true, isDefinition: true)
!435 = !DIGlobalVariableExpression(var: !436, expr: !DIExpression())
!436 = distinct !DIGlobalVariable(scope: null, file: !3, line: 498, type: !247, isLocal: true, isDefinition: true)
!437 = !DIGlobalVariableExpression(var: !438, expr: !DIExpression())
!438 = distinct !DIGlobalVariable(scope: null, file: !3, line: 499, type: !285, isLocal: true, isDefinition: true)
!439 = !DIGlobalVariableExpression(var: !440, expr: !DIExpression())
!440 = distinct !DIGlobalVariable(scope: null, file: !3, line: 500, type: !247, isLocal: true, isDefinition: true)
!441 = !DIGlobalVariableExpression(var: !442, expr: !DIExpression())
!442 = distinct !DIGlobalVariable(scope: null, file: !3, line: 501, type: !247, isLocal: true, isDefinition: true)
!443 = !DIGlobalVariableExpression(var: !444, expr: !DIExpression())
!444 = distinct !DIGlobalVariable(scope: null, file: !3, line: 502, type: !221, isLocal: true, isDefinition: true)
!445 = !DIGlobalVariableExpression(var: !446, expr: !DIExpression())
!446 = distinct !DIGlobalVariable(scope: null, file: !3, line: 503, type: !285, isLocal: true, isDefinition: true)
!447 = !DIGlobalVariableExpression(var: !448, expr: !DIExpression())
!448 = distinct !DIGlobalVariable(scope: null, file: !3, line: 504, type: !285, isLocal: true, isDefinition: true)
!449 = !DIGlobalVariableExpression(var: !450, expr: !DIExpression())
!450 = distinct !DIGlobalVariable(scope: null, file: !3, line: 505, type: !226, isLocal: true, isDefinition: true)
!451 = !DIGlobalVariableExpression(var: !452, expr: !DIExpression())
!452 = distinct !DIGlobalVariable(scope: null, file: !3, line: 506, type: !354, isLocal: true, isDefinition: true)
!453 = !DIGlobalVariableExpression(var: !454, expr: !DIExpression())
!454 = distinct !DIGlobalVariable(scope: null, file: !3, line: 507, type: !252, isLocal: true, isDefinition: true)
!455 = !DIGlobalVariableExpression(var: !456, expr: !DIExpression())
!456 = distinct !DIGlobalVariable(scope: null, file: !3, line: 508, type: !252, isLocal: true, isDefinition: true)
!457 = !DIGlobalVariableExpression(var: !458, expr: !DIExpression())
!458 = distinct !DIGlobalVariable(scope: null, file: !3, line: 509, type: !226, isLocal: true, isDefinition: true)
!459 = !DIGlobalVariableExpression(var: !460, expr: !DIExpression())
!460 = distinct !DIGlobalVariable(scope: null, file: !3, line: 510, type: !354, isLocal: true, isDefinition: true)
!461 = !DIGlobalVariableExpression(var: !462, expr: !DIExpression())
!462 = distinct !DIGlobalVariable(scope: null, file: !3, line: 511, type: !252, isLocal: true, isDefinition: true)
!463 = !DIGlobalVariableExpression(var: !464, expr: !DIExpression())
!464 = distinct !DIGlobalVariable(name: "long_options", scope: !465, file: !3, line: 410, type: !557, isLocal: true, isDefinition: true)
!465 = distinct !DISubprogram(name: "Parse", scope: !3, file: !3, line: 370, type: !466, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !534)
!466 = !DISubroutineType(types: !467)
!467 = !{!5, !5, !6, !32, !468}
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "cli_opt_t", file: !3, line: 69, baseType: !470)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 63, size: 256, elements: !471)
!471 = !{!472, !473, !474, !475, !476}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "b_progress", scope: !470, file: !3, line: 64, baseType: !5, size: 32)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "i_seek", scope: !470, file: !3, line: 65, baseType: !5, size: 32, offset: 32)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "hin", scope: !470, file: !3, line: 66, baseType: !30, size: 64, offset: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "hout", scope: !470, file: !3, line: 67, baseType: !30, size: 64, offset: 128)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "qpfile", scope: !470, file: !3, line: 68, baseType: !477, size: 64, offset: 192)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !479, line: 7, baseType: !480)
!479 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !481, line: 49, size: 1728, elements: !482)
!481 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!482 = !{!483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !498, !500, !501, !502, !504, !506, !508, !512, !515, !517, !520, !523, !524, !525, !529, !530}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !480, file: !481, line: 51, baseType: !5, size: 32)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !480, file: !481, line: 54, baseType: !7, size: 64, offset: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !480, file: !481, line: 55, baseType: !7, size: 64, offset: 128)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !480, file: !481, line: 56, baseType: !7, size: 64, offset: 192)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !480, file: !481, line: 57, baseType: !7, size: 64, offset: 256)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !480, file: !481, line: 58, baseType: !7, size: 64, offset: 320)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !480, file: !481, line: 59, baseType: !7, size: 64, offset: 384)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !480, file: !481, line: 60, baseType: !7, size: 64, offset: 448)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !480, file: !481, line: 61, baseType: !7, size: 64, offset: 512)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !480, file: !481, line: 64, baseType: !7, size: 64, offset: 576)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !480, file: !481, line: 65, baseType: !7, size: 64, offset: 640)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !480, file: !481, line: 66, baseType: !7, size: 64, offset: 704)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !480, file: !481, line: 68, baseType: !496, size: 64, offset: 768)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !481, line: 36, flags: DIFlagFwdDecl)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !480, file: !481, line: 70, baseType: !499, size: 64, offset: 832)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !480, file: !481, line: 72, baseType: !5, size: 32, offset: 896)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !480, file: !481, line: 73, baseType: !5, size: 32, offset: 928)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !480, file: !481, line: 74, baseType: !503, size: 64, offset: 960)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !13, line: 152, baseType: !14)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !480, file: !481, line: 77, baseType: !505, size: 16, offset: 1024)
!505 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !480, file: !481, line: 78, baseType: !507, size: 8, offset: 1040)
!507 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !480, file: !481, line: 79, baseType: !509, size: 8, offset: 1048)
!509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !510)
!510 = !{!511}
!511 = !DISubrange(count: 1)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !480, file: !481, line: 81, baseType: !513, size: 64, offset: 1088)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !481, line: 43, baseType: null)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !480, file: !481, line: 89, baseType: !516, size: 64, offset: 1152)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !13, line: 153, baseType: !14)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !480, file: !481, line: 91, baseType: !518, size: 64, offset: 1216)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !481, line: 37, flags: DIFlagFwdDecl)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !480, file: !481, line: 92, baseType: !521, size: 64, offset: 1280)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !481, line: 38, flags: DIFlagFwdDecl)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !480, file: !481, line: 93, baseType: !499, size: 64, offset: 1344)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !480, file: !481, line: 94, baseType: !9, size: 64, offset: 1408)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !480, file: !481, line: 95, baseType: !526, size: 64, offset: 1472)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !527, line: 46, baseType: !528)
!527 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!528 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !480, file: !481, line: 96, baseType: !5, size: 32, offset: 1536)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !480, file: !481, line: 98, baseType: !531, size: 160, offset: 1568)
!531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !532)
!532 = !{!533}
!533 = !DISubrange(count: 20)
!534 = !{!535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !549, !550, !551, !554}
!535 = !DILocalVariable(name: "argc", arg: 1, scope: !465, file: !3, line: 370, type: !5)
!536 = !DILocalVariable(name: "argv", arg: 2, scope: !465, file: !3, line: 370, type: !6)
!537 = !DILocalVariable(name: "param", arg: 3, scope: !465, file: !3, line: 371, type: !32)
!538 = !DILocalVariable(name: "opt", arg: 4, scope: !465, file: !3, line: 371, type: !468)
!539 = !DILocalVariable(name: "psz_filename", scope: !465, file: !3, line: 373, type: !7)
!540 = !DILocalVariable(name: "defaults", scope: !465, file: !3, line: 374, type: !33)
!541 = !DILocalVariable(name: "psz", scope: !465, file: !3, line: 375, type: !7)
!542 = !DILocalVariable(name: "b_avis", scope: !465, file: !3, line: 376, type: !5)
!543 = !DILocalVariable(name: "b_y4m", scope: !465, file: !3, line: 377, type: !5)
!544 = !DILocalVariable(name: "b_thread_input", scope: !465, file: !3, line: 378, type: !5)
!545 = !DILocalVariable(name: "b_error", scope: !546, file: !3, line: 398, type: !5)
!546 = distinct !DILexicalBlock(scope: !547, file: !3, line: 397, column: 5)
!547 = distinct !DILexicalBlock(scope: !548, file: !3, line: 396, column: 5)
!548 = distinct !DILexicalBlock(scope: !465, file: !3, line: 396, column: 5)
!549 = !DILocalVariable(name: "long_options_index", scope: !546, file: !3, line: 399, type: !5)
!550 = !DILocalVariable(name: "c", scope: !546, file: !3, line: 515, type: !5)
!551 = !DILocalVariable(name: "i", scope: !552, file: !3, line: 612, type: !5)
!552 = distinct !DILexicalBlock(scope: !553, file: !3, line: 611, column: 13)
!553 = distinct !DILexicalBlock(scope: !546, file: !3, line: 524, column: 9)
!554 = !DILocalVariable(name: "name", scope: !555, file: !3, line: 634, type: !97)
!555 = distinct !DILexicalBlock(scope: !556, file: !3, line: 633, column: 9)
!556 = distinct !DILexicalBlock(scope: !546, file: !3, line: 632, column: 13)
!557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !558, size: 25856, elements: !566)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !559, line: 50, size: 256, elements: !560)
!559 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!560 = !{!561, !562, !563, !565}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !558, file: !559, line: 52, baseType: !97, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !558, file: !559, line: 55, baseType: !5, size: 32, offset: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !558, file: !559, line: 56, baseType: !564, size: 64, offset: 128)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !558, file: !559, line: 57, baseType: !5, size: 32, offset: 192)
!566 = !{!567}
!567 = !DISubrange(count: 101)
!568 = !DIGlobalVariableExpression(var: !569, expr: !DIExpression())
!569 = distinct !DIGlobalVariable(scope: null, file: !3, line: 515, type: !570, isLocal: true, isDefinition: true)
!570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 240, elements: !571)
!571 = !{!572}
!572 = !DISubrange(count: 30)
!573 = !DIGlobalVariableExpression(var: !574, expr: !DIExpression())
!574 = distinct !DIGlobalVariable(scope: null, file: !3, line: 533, type: !575, isLocal: true, isDefinition: true)
!575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 200, elements: !576)
!576 = !{!577}
!577 = !DISubrange(count: 25)
!578 = !DIGlobalVariableExpression(var: !579, expr: !DIExpression())
!579 = distinct !DIGlobalVariable(scope: null, file: !3, line: 537, type: !580, isLocal: true, isDefinition: true)
!580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 184, elements: !581)
!581 = !{!582}
!582 = !DISubrange(count: 23)
!583 = !DIGlobalVariableExpression(var: !584, expr: !DIExpression())
!584 = distinct !DIGlobalVariable(scope: null, file: !3, line: 539, type: !585, isLocal: true, isDefinition: true)
!585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 152, elements: !586)
!586 = !{!587}
!587 = !DISubrange(count: 19)
!588 = !DIGlobalVariableExpression(var: !589, expr: !DIExpression())
!589 = distinct !DIGlobalVariable(scope: null, file: !3, line: 551, type: !221, isLocal: true, isDefinition: true)
!590 = !DIGlobalVariableExpression(var: !591, expr: !DIExpression())
!591 = distinct !DIGlobalVariable(scope: null, file: !3, line: 560, type: !592, isLocal: true, isDefinition: true)
!592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 416, elements: !593)
!593 = !{!594}
!594 = !DISubrange(count: 52)
!595 = !DIGlobalVariableExpression(var: !596, expr: !DIExpression())
!596 = distinct !DIGlobalVariable(scope: null, file: !3, line: 564, type: !221, isLocal: true, isDefinition: true)
!597 = !DIGlobalVariableExpression(var: !598, expr: !DIExpression())
!598 = distinct !DIGlobalVariable(scope: null, file: !3, line: 572, type: !599, isLocal: true, isDefinition: true)
!599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 16, elements: !137)
!600 = !DIGlobalVariableExpression(var: !601, expr: !DIExpression())
!601 = distinct !DIGlobalVariable(scope: null, file: !3, line: 576, type: !602, isLocal: true, isDefinition: true)
!602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 344, elements: !603)
!603 = !{!604}
!604 = !DISubrange(count: 43)
!605 = !DIGlobalVariableExpression(var: !606, expr: !DIExpression())
!606 = distinct !DIGlobalVariable(scope: null, file: !3, line: 581, type: !599, isLocal: true, isDefinition: true)
!607 = !DIGlobalVariableExpression(var: !608, expr: !DIExpression())
!608 = distinct !DIGlobalVariable(scope: null, file: !3, line: 584, type: !609, isLocal: true, isDefinition: true)
!609 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 248, elements: !610)
!610 = !{!611}
!611 = !DISubrange(count: 31)
!612 = !DIGlobalVariableExpression(var: !613, expr: !DIExpression())
!613 = distinct !DIGlobalVariable(scope: null, file: !3, line: 607, type: !614, isLocal: true, isDefinition: true)
!614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 456, elements: !615)
!615 = !{!616}
!616 = !DISubrange(count: 57)
!617 = !DIGlobalVariableExpression(var: !618, expr: !DIExpression())
!618 = distinct !DIGlobalVariable(scope: null, file: !3, line: 635, type: !619, isLocal: true, isDefinition: true)
!619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 328, elements: !620)
!620 = !{!621}
!621 = !DISubrange(count: 41)
!622 = !DIGlobalVariableExpression(var: !623, expr: !DIExpression())
!623 = distinct !DIGlobalVariable(scope: null, file: !3, line: 643, type: !624, isLocal: true, isDefinition: true)
!624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 528, elements: !625)
!625 = !{!626}
!626 = !DISubrange(count: 66)
!627 = !DIGlobalVariableExpression(var: !628, expr: !DIExpression())
!628 = distinct !DIGlobalVariable(scope: null, file: !3, line: 644, type: !285, isLocal: true, isDefinition: true)
!629 = !DIGlobalVariableExpression(var: !630, expr: !DIExpression())
!630 = distinct !DIGlobalVariable(scope: null, file: !3, line: 653, type: !221, isLocal: true, isDefinition: true)
!631 = !DIGlobalVariableExpression(var: !632, expr: !DIExpression())
!632 = distinct !DIGlobalVariable(scope: null, file: !3, line: 653, type: !221, isLocal: true, isDefinition: true)
!633 = !DIGlobalVariableExpression(var: !634, expr: !DIExpression())
!634 = distinct !DIGlobalVariable(scope: null, file: !3, line: 655, type: !221, isLocal: true, isDefinition: true)
!635 = !DIGlobalVariableExpression(var: !636, expr: !DIExpression())
!636 = distinct !DIGlobalVariable(scope: null, file: !3, line: 666, type: !285, isLocal: true, isDefinition: true)
!637 = !DIGlobalVariableExpression(var: !638, expr: !DIExpression())
!638 = distinct !DIGlobalVariable(scope: null, file: !3, line: 669, type: !639, isLocal: true, isDefinition: true)
!639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 288, elements: !640)
!640 = !{!641}
!641 = !DISubrange(count: 36)
!642 = !DIGlobalVariableExpression(var: !643, expr: !DIExpression())
!643 = distinct !DIGlobalVariable(scope: null, file: !3, line: 682, type: !644, isLocal: true, isDefinition: true)
!644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 408, elements: !645)
!645 = !{!646}
!646 = !DISubrange(count: 51)
!647 = !DIGlobalVariableExpression(var: !648, expr: !DIExpression())
!648 = distinct !DIGlobalVariable(scope: null, file: !3, line: 696, type: !592, isLocal: true, isDefinition: true)
!649 = !DIGlobalVariableExpression(var: !650, expr: !DIExpression())
!650 = distinct !DIGlobalVariable(scope: null, file: !3, line: 710, type: !651, isLocal: true, isDefinition: true)
!651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 368, elements: !652)
!652 = !{!653}
!653 = !DISubrange(count: 46)
!654 = !DIGlobalVariableExpression(var: !655, expr: !DIExpression())
!655 = distinct !DIGlobalVariable(scope: null, file: !3, line: 721, type: !656, isLocal: true, isDefinition: true)
!656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 312, elements: !657)
!657 = !{!658}
!658 = !DISubrange(count: 39)
!659 = !DIGlobalVariableExpression(var: !660, expr: !DIExpression())
!660 = distinct !DIGlobalVariable(name: "p_open_outfile", scope: !2, file: !3, line: 78, type: !661, isLocal: true, isDefinition: true)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DISubroutineType(types: !663)
!663 = !{!5, !7, !29}
!664 = !DIGlobalVariableExpression(var: !665, expr: !DIExpression())
!665 = distinct !DIGlobalVariable(name: "p_set_outfile_param", scope: !2, file: !3, line: 79, type: !666, isLocal: true, isDefinition: true)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DISubroutineType(types: !668)
!668 = !{!5, !30, !32}
!669 = !DIGlobalVariableExpression(var: !670, expr: !DIExpression())
!670 = distinct !DIGlobalVariable(name: "p_write_nalu", scope: !2, file: !3, line: 80, type: !671, isLocal: true, isDefinition: true)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DISubroutineType(types: !673)
!673 = !{!5, !30, !212, !5}
!674 = !DIGlobalVariableExpression(var: !675, expr: !DIExpression())
!675 = distinct !DIGlobalVariable(name: "p_set_eop", scope: !2, file: !3, line: 81, type: !676, isLocal: true, isDefinition: true)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DISubroutineType(types: !678)
!678 = !{!5, !30, !193}
!679 = !DIGlobalVariableExpression(var: !680, expr: !DIExpression())
!680 = distinct !DIGlobalVariable(name: "p_close_outfile", scope: !2, file: !3, line: 82, type: !185, isLocal: true, isDefinition: true)
!681 = !DIGlobalVariableExpression(var: !682, expr: !DIExpression())
!682 = distinct !DIGlobalVariable(scope: null, file: !3, line: 157, type: !683, isLocal: true, isDefinition: true)
!683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 3840, elements: !684)
!684 = !{!685}
!685 = !DISubrange(count: 480)
!686 = !DIGlobalVariableExpression(var: !687, expr: !DIExpression())
!687 = distinct !DIGlobalVariable(scope: null, file: !3, line: 173, type: !351, isLocal: true, isDefinition: true)
!688 = !DIGlobalVariableExpression(var: !689, expr: !DIExpression())
!689 = distinct !DIGlobalVariable(scope: null, file: !3, line: 177, type: !268, isLocal: true, isDefinition: true)
!690 = !DIGlobalVariableExpression(var: !691, expr: !DIExpression())
!691 = distinct !DIGlobalVariable(scope: null, file: !3, line: 185, type: !692, isLocal: true, isDefinition: true)
!692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 168, elements: !693)
!693 = !{!694}
!694 = !DISubrange(count: 21)
!695 = !DIGlobalVariableExpression(var: !696, expr: !DIExpression())
!696 = distinct !DIGlobalVariable(scope: null, file: !3, line: 186, type: !599, isLocal: true, isDefinition: true)
!697 = !DIGlobalVariableExpression(var: !698, expr: !DIExpression())
!698 = distinct !DIGlobalVariable(scope: null, file: !3, line: 187, type: !699, isLocal: true, isDefinition: true)
!699 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 424, elements: !700)
!700 = !{!701}
!701 = !DISubrange(count: 53)
!702 = !DIGlobalVariableExpression(var: !703, expr: !DIExpression())
!703 = distinct !DIGlobalVariable(scope: null, file: !3, line: 188, type: !699, isLocal: true, isDefinition: true)
!704 = !DIGlobalVariableExpression(var: !705, expr: !DIExpression())
!705 = distinct !DIGlobalVariable(scope: null, file: !3, line: 189, type: !706, isLocal: true, isDefinition: true)
!706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 624, elements: !707)
!707 = !{!708}
!708 = !DISubrange(count: 78)
!709 = !DIGlobalVariableExpression(var: !710, expr: !DIExpression())
!710 = distinct !DIGlobalVariable(scope: null, file: !3, line: 190, type: !711, isLocal: true, isDefinition: true)
!711 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 1176, elements: !712)
!712 = !{!713}
!713 = !DISubrange(count: 147)
!714 = !DIGlobalVariableExpression(var: !715, expr: !DIExpression())
!715 = distinct !DIGlobalVariable(scope: null, file: !3, line: 192, type: !716, isLocal: true, isDefinition: true)
!716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 568, elements: !717)
!717 = !{!718}
!718 = !DISubrange(count: 71)
!719 = !DIGlobalVariableExpression(var: !720, expr: !DIExpression())
!720 = distinct !DIGlobalVariable(scope: null, file: !3, line: 193, type: !721, isLocal: true, isDefinition: true)
!721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2520, elements: !722)
!722 = !{!723}
!723 = !DISubrange(count: 315)
!724 = !DIGlobalVariableExpression(var: !725, expr: !DIExpression())
!725 = distinct !DIGlobalVariable(scope: null, file: !3, line: 198, type: !726, isLocal: true, isDefinition: true)
!726 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 600, elements: !727)
!727 = !{!728}
!728 = !DISubrange(count: 75)
!729 = !DIGlobalVariableExpression(var: !730, expr: !DIExpression())
!730 = distinct !DIGlobalVariable(scope: null, file: !3, line: 199, type: !731, isLocal: true, isDefinition: true)
!731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 512, elements: !90)
!732 = !DIGlobalVariableExpression(var: !733, expr: !DIExpression())
!733 = distinct !DIGlobalVariable(scope: null, file: !3, line: 200, type: !734, isLocal: true, isDefinition: true)
!734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 360, elements: !735)
!735 = !{!736}
!736 = !DISubrange(count: 45)
!737 = !DIGlobalVariableExpression(var: !738, expr: !DIExpression())
!738 = distinct !DIGlobalVariable(scope: null, file: !3, line: 201, type: !739, isLocal: true, isDefinition: true)
!739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 504, elements: !740)
!740 = !{!741}
!741 = !DISubrange(count: 63)
!742 = !DIGlobalVariableExpression(var: !743, expr: !DIExpression())
!743 = distinct !DIGlobalVariable(scope: null, file: !3, line: 202, type: !644, isLocal: true, isDefinition: true)
!744 = !DIGlobalVariableExpression(var: !745, expr: !DIExpression())
!745 = distinct !DIGlobalVariable(scope: null, file: !3, line: 203, type: !746, isLocal: true, isDefinition: true)
!746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 632, elements: !747)
!747 = !{!748}
!748 = !DISubrange(count: 79)
!749 = !DIGlobalVariableExpression(var: !750, expr: !DIExpression())
!750 = distinct !DIGlobalVariable(scope: null, file: !3, line: 205, type: !751, isLocal: true, isDefinition: true)
!751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 472, elements: !752)
!752 = !{!753}
!753 = !DISubrange(count: 59)
!754 = !DIGlobalVariableExpression(var: !755, expr: !DIExpression())
!755 = distinct !DIGlobalVariable(scope: null, file: !3, line: 207, type: !346, isLocal: true, isDefinition: true)
!756 = !DIGlobalVariableExpression(var: !757, expr: !DIExpression())
!757 = distinct !DIGlobalVariable(scope: null, file: !3, line: 209, type: !758, isLocal: true, isDefinition: true)
!758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 448, elements: !759)
!759 = !{!760}
!760 = !DISubrange(count: 56)
!761 = !DIGlobalVariableExpression(var: !762, expr: !DIExpression())
!762 = distinct !DIGlobalVariable(scope: null, file: !3, line: 210, type: !592, isLocal: true, isDefinition: true)
!763 = !DIGlobalVariableExpression(var: !764, expr: !DIExpression())
!764 = distinct !DIGlobalVariable(scope: null, file: !3, line: 211, type: !765, isLocal: true, isDefinition: true)
!765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 496, elements: !766)
!766 = !{!767}
!767 = !DISubrange(count: 62)
!768 = !DIGlobalVariableExpression(var: !769, expr: !DIExpression())
!769 = distinct !DIGlobalVariable(scope: null, file: !3, line: 212, type: !739, isLocal: true, isDefinition: true)
!770 = !DIGlobalVariableExpression(var: !771, expr: !DIExpression())
!771 = distinct !DIGlobalVariable(scope: null, file: !3, line: 213, type: !772, isLocal: true, isDefinition: true)
!772 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 680, elements: !773)
!773 = !{!774}
!774 = !DISubrange(count: 85)
!775 = !DIGlobalVariableExpression(var: !776, expr: !DIExpression())
!776 = distinct !DIGlobalVariable(scope: null, file: !3, line: 214, type: !777, isLocal: true, isDefinition: true)
!777 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 536, elements: !778)
!778 = !{!779}
!779 = !DISubrange(count: 67)
!780 = !DIGlobalVariableExpression(var: !781, expr: !DIExpression())
!781 = distinct !DIGlobalVariable(scope: null, file: !3, line: 215, type: !782, isLocal: true, isDefinition: true)
!782 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 376, elements: !783)
!783 = !{!784}
!784 = !DISubrange(count: 47)
!785 = !DIGlobalVariableExpression(var: !786, expr: !DIExpression())
!786 = distinct !DIGlobalVariable(scope: null, file: !3, line: 216, type: !782, isLocal: true, isDefinition: true)
!787 = !DIGlobalVariableExpression(var: !788, expr: !DIExpression())
!788 = distinct !DIGlobalVariable(scope: null, file: !3, line: 217, type: !592, isLocal: true, isDefinition: true)
!789 = !DIGlobalVariableExpression(var: !790, expr: !DIExpression())
!790 = distinct !DIGlobalVariable(scope: null, file: !3, line: 218, type: !791, isLocal: true, isDefinition: true)
!791 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 592, elements: !792)
!792 = !{!793}
!793 = !DISubrange(count: 74)
!794 = !DIGlobalVariableExpression(var: !795, expr: !DIExpression())
!795 = distinct !DIGlobalVariable(scope: null, file: !3, line: 219, type: !731, isLocal: true, isDefinition: true)
!796 = !DIGlobalVariableExpression(var: !797, expr: !DIExpression())
!797 = distinct !DIGlobalVariable(scope: null, file: !3, line: 220, type: !731, isLocal: true, isDefinition: true)
!798 = !DIGlobalVariableExpression(var: !799, expr: !DIExpression())
!799 = distinct !DIGlobalVariable(scope: null, file: !3, line: 221, type: !800, isLocal: true, isDefinition: true)
!800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 640, elements: !801)
!801 = !{!802}
!802 = !DISubrange(count: 80)
!803 = !DIGlobalVariableExpression(var: !804, expr: !DIExpression())
!804 = distinct !DIGlobalVariable(scope: null, file: !3, line: 222, type: !805, isLocal: true, isDefinition: true)
!805 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 1304, elements: !806)
!806 = !{!807}
!807 = !DISubrange(count: 163)
!808 = !DIGlobalVariableExpression(var: !809, expr: !DIExpression())
!809 = distinct !DIGlobalVariable(scope: null, file: !3, line: 225, type: !810, isLocal: true, isDefinition: true)
!810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 1808, elements: !811)
!811 = !{!812}
!812 = !DISubrange(count: 226)
!813 = !DIGlobalVariableExpression(var: !814, expr: !DIExpression())
!814 = distinct !DIGlobalVariable(scope: null, file: !3, line: 230, type: !815, isLocal: true, isDefinition: true)
!815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2248, elements: !816)
!816 = !{!817}
!817 = !DISubrange(count: 281)
!818 = !DIGlobalVariableExpression(var: !819, expr: !DIExpression())
!819 = distinct !DIGlobalVariable(scope: null, file: !3, line: 234, type: !731, isLocal: true, isDefinition: true)
!820 = !DIGlobalVariableExpression(var: !821, expr: !DIExpression())
!821 = distinct !DIGlobalVariable(scope: null, file: !3, line: 235, type: !822, isLocal: true, isDefinition: true)
!822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 664, elements: !823)
!823 = !{!824}
!824 = !DISubrange(count: 83)
!825 = !DIGlobalVariableExpression(var: !826, expr: !DIExpression())
!826 = distinct !DIGlobalVariable(scope: null, file: !3, line: 236, type: !827, isLocal: true, isDefinition: true)
!827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 728, elements: !828)
!828 = !{!829}
!829 = !DISubrange(count: 91)
!830 = !DIGlobalVariableExpression(var: !831, expr: !DIExpression())
!831 = distinct !DIGlobalVariable(scope: null, file: !3, line: 237, type: !832, isLocal: true, isDefinition: true)
!832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 720, elements: !833)
!833 = !{!834}
!834 = !DISubrange(count: 90)
!835 = !DIGlobalVariableExpression(var: !836, expr: !DIExpression())
!836 = distinct !DIGlobalVariable(scope: null, file: !3, line: 238, type: !822, isLocal: true, isDefinition: true)
!837 = !DIGlobalVariableExpression(var: !838, expr: !DIExpression())
!838 = distinct !DIGlobalVariable(scope: null, file: !3, line: 239, type: !839, isLocal: true, isDefinition: true)
!839 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2512, elements: !840)
!840 = !{!841}
!841 = !DISubrange(count: 314)
!842 = !DIGlobalVariableExpression(var: !843, expr: !DIExpression())
!843 = distinct !DIGlobalVariable(scope: null, file: !3, line: 244, type: !758, isLocal: true, isDefinition: true)
!844 = !DIGlobalVariableExpression(var: !845, expr: !DIExpression())
!845 = distinct !DIGlobalVariable(scope: null, file: !3, line: 246, type: !242, isLocal: true, isDefinition: true)
!846 = !DIGlobalVariableExpression(var: !847, expr: !DIExpression())
!847 = distinct !DIGlobalVariable(scope: null, file: !3, line: 248, type: !848, isLocal: true, isDefinition: true)
!848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2152, elements: !849)
!849 = !{!850}
!850 = !DISubrange(count: 269)
!851 = !DIGlobalVariableExpression(var: !852, expr: !DIExpression())
!852 = distinct !DIGlobalVariable(scope: null, file: !3, line: 252, type: !853, isLocal: true, isDefinition: true)
!853 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 1040, elements: !854)
!854 = !{!855}
!855 = !DISubrange(count: 130)
!856 = !DIGlobalVariableExpression(var: !857, expr: !DIExpression())
!857 = distinct !DIGlobalVariable(scope: null, file: !3, line: 255, type: !858, isLocal: true, isDefinition: true)
!858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 1792, elements: !859)
!859 = !{!860}
!860 = !DISubrange(count: 224)
!861 = !DIGlobalVariableExpression(var: !862, expr: !DIExpression())
!862 = distinct !DIGlobalVariable(scope: null, file: !3, line: 260, type: !731, isLocal: true, isDefinition: true)
!863 = !DIGlobalVariableExpression(var: !864, expr: !DIExpression())
!864 = distinct !DIGlobalVariable(scope: null, file: !3, line: 261, type: !865, isLocal: true, isDefinition: true)
!865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 616, elements: !866)
!866 = !{!867}
!867 = !DISubrange(count: 77)
!868 = !DIGlobalVariableExpression(var: !869, expr: !DIExpression())
!869 = distinct !DIGlobalVariable(scope: null, file: !3, line: 263, type: !870, isLocal: true, isDefinition: true)
!870 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2768, elements: !871)
!871 = !{!872}
!872 = !DISubrange(count: 346)
!873 = !DIGlobalVariableExpression(var: !874, expr: !DIExpression())
!874 = distinct !DIGlobalVariable(scope: null, file: !3, line: 268, type: !644, isLocal: true, isDefinition: true)
!875 = !DIGlobalVariableExpression(var: !876, expr: !DIExpression())
!876 = distinct !DIGlobalVariable(scope: null, file: !3, line: 269, type: !716, isLocal: true, isDefinition: true)
!877 = !DIGlobalVariableExpression(var: !878, expr: !DIExpression())
!878 = distinct !DIGlobalVariable(scope: null, file: !3, line: 270, type: !879, isLocal: true, isDefinition: true)
!879 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 576, elements: !880)
!880 = !{!881}
!881 = !DISubrange(count: 72)
!882 = !DIGlobalVariableExpression(var: !883, expr: !DIExpression())
!883 = distinct !DIGlobalVariable(scope: null, file: !3, line: 271, type: !791, isLocal: true, isDefinition: true)
!884 = !DIGlobalVariableExpression(var: !885, expr: !DIExpression())
!885 = distinct !DIGlobalVariable(scope: null, file: !3, line: 272, type: !886, isLocal: true, isDefinition: true)
!886 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 648, elements: !887)
!887 = !{!888}
!888 = !DISubrange(count: 81)
!889 = !DIGlobalVariableExpression(var: !890, expr: !DIExpression())
!890 = distinct !DIGlobalVariable(scope: null, file: !3, line: 273, type: !891, isLocal: true, isDefinition: true)
!891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 4392, elements: !892)
!892 = !{!893}
!893 = !DISubrange(count: 549)
!894 = !DIGlobalVariableExpression(var: !895, expr: !DIExpression())
!895 = distinct !DIGlobalVariable(scope: null, file: !3, line: 281, type: !896, isLocal: true, isDefinition: true)
!896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 552, elements: !897)
!897 = !{!898}
!898 = !DISubrange(count: 69)
!899 = !DIGlobalVariableExpression(var: !900, expr: !DIExpression())
!900 = distinct !DIGlobalVariable(scope: null, file: !3, line: 282, type: !901, isLocal: true, isDefinition: true)
!901 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 1784, elements: !902)
!902 = !{!903}
!903 = !DISubrange(count: 223)
!904 = !DIGlobalVariableExpression(var: !905, expr: !DIExpression())
!905 = distinct !DIGlobalVariable(scope: null, file: !3, line: 286, type: !791, isLocal: true, isDefinition: true)
!906 = !DIGlobalVariableExpression(var: !907, expr: !DIExpression())
!907 = distinct !DIGlobalVariable(scope: null, file: !3, line: 287, type: !624, isLocal: true, isDefinition: true)
!908 = !DIGlobalVariableExpression(var: !909, expr: !DIExpression())
!909 = distinct !DIGlobalVariable(scope: null, file: !3, line: 288, type: !739, isLocal: true, isDefinition: true)
!910 = !DIGlobalVariableExpression(var: !911, expr: !DIExpression())
!911 = distinct !DIGlobalVariable(scope: null, file: !3, line: 289, type: !912, isLocal: true, isDefinition: true)
!912 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2192, elements: !913)
!913 = !{!914}
!914 = !DISubrange(count: 274)
!915 = !DIGlobalVariableExpression(var: !916, expr: !DIExpression())
!916 = distinct !DIGlobalVariable(scope: null, file: !3, line: 293, type: !917, isLocal: true, isDefinition: true)
!917 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 584, elements: !918)
!918 = !{!919}
!919 = !DISubrange(count: 73)
!920 = !DIGlobalVariableExpression(var: !921, expr: !DIExpression())
!921 = distinct !DIGlobalVariable(scope: null, file: !3, line: 294, type: !865, isLocal: true, isDefinition: true)
!922 = !DIGlobalVariableExpression(var: !923, expr: !DIExpression())
!923 = distinct !DIGlobalVariable(scope: null, file: !3, line: 295, type: !592, isLocal: true, isDefinition: true)
!924 = !DIGlobalVariableExpression(var: !925, expr: !DIExpression())
!925 = distinct !DIGlobalVariable(scope: null, file: !3, line: 297, type: !926, isLocal: true, isDefinition: true)
!926 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 712, elements: !927)
!927 = !{!928}
!928 = !DISubrange(count: 89)
!929 = !DIGlobalVariableExpression(var: !930, expr: !DIExpression())
!930 = distinct !DIGlobalVariable(scope: null, file: !3, line: 298, type: !926, isLocal: true, isDefinition: true)
!931 = !DIGlobalVariableExpression(var: !932, expr: !DIExpression())
!932 = distinct !DIGlobalVariable(scope: null, file: !3, line: 299, type: !933, isLocal: true, isDefinition: true)
!933 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 608, elements: !934)
!934 = !{!935}
!935 = !DISubrange(count: 76)
!936 = !DIGlobalVariableExpression(var: !937, expr: !DIExpression())
!937 = distinct !DIGlobalVariable(scope: null, file: !3, line: 300, type: !938, isLocal: true, isDefinition: true)
!938 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 864, elements: !939)
!939 = !{!940}
!940 = !DISubrange(count: 108)
!941 = !DIGlobalVariableExpression(var: !942, expr: !DIExpression())
!942 = distinct !DIGlobalVariable(scope: null, file: !3, line: 302, type: !943, isLocal: true, isDefinition: true)
!943 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 672, elements: !944)
!944 = !{!945}
!945 = !DISubrange(count: 84)
!946 = !DIGlobalVariableExpression(var: !947, expr: !DIExpression())
!947 = distinct !DIGlobalVariable(scope: null, file: !3, line: 303, type: !716, isLocal: true, isDefinition: true)
!948 = !DIGlobalVariableExpression(var: !949, expr: !DIExpression())
!949 = distinct !DIGlobalVariable(scope: null, file: !3, line: 304, type: !950, isLocal: true, isDefinition: true)
!950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 1096, elements: !951)
!951 = !{!952}
!952 = !DISubrange(count: 137)
!953 = !DIGlobalVariableExpression(var: !954, expr: !DIExpression())
!954 = distinct !DIGlobalVariable(scope: null, file: !3, line: 306, type: !950, isLocal: true, isDefinition: true)
!955 = !DIGlobalVariableExpression(var: !956, expr: !DIExpression())
!956 = distinct !DIGlobalVariable(scope: null, file: !3, line: 308, type: !957, isLocal: true, isDefinition: true)
!957 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 896, elements: !958)
!958 = !{!959}
!959 = !DISubrange(count: 112)
!960 = !DIGlobalVariableExpression(var: !961, expr: !DIExpression())
!961 = distinct !DIGlobalVariable(scope: null, file: !3, line: 310, type: !962, isLocal: true, isDefinition: true)
!962 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 848, elements: !963)
!963 = !{!964}
!964 = !DISubrange(count: 106)
!965 = !DIGlobalVariableExpression(var: !966, expr: !DIExpression())
!966 = distinct !DIGlobalVariable(scope: null, file: !3, line: 313, type: !967, isLocal: true, isDefinition: true)
!967 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 264, elements: !968)
!968 = !{!969}
!969 = !DISubrange(count: 33)
!970 = !DIGlobalVariableExpression(var: !971, expr: !DIExpression())
!971 = distinct !DIGlobalVariable(scope: null, file: !3, line: 314, type: !933, isLocal: true, isDefinition: true)
!972 = !DIGlobalVariableExpression(var: !973, expr: !DIExpression())
!973 = distinct !DIGlobalVariable(scope: null, file: !3, line: 315, type: !933, isLocal: true, isDefinition: true)
!974 = !DIGlobalVariableExpression(var: !975, expr: !DIExpression())
!975 = distinct !DIGlobalVariable(scope: null, file: !3, line: 317, type: !976, isLocal: true, isDefinition: true)
!976 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 976, elements: !977)
!977 = !{!978}
!978 = !DISubrange(count: 122)
!979 = !DIGlobalVariableExpression(var: !980, expr: !DIExpression())
!980 = distinct !DIGlobalVariable(scope: null, file: !3, line: 320, type: !981, isLocal: true, isDefinition: true)
!981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 1080, elements: !982)
!982 = !{!983}
!983 = !DISubrange(count: 135)
!984 = !DIGlobalVariableExpression(var: !985, expr: !DIExpression())
!985 = distinct !DIGlobalVariable(scope: null, file: !3, line: 323, type: !986, isLocal: true, isDefinition: true)
!986 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 936, elements: !987)
!987 = !{!988}
!988 = !DISubrange(count: 117)
!989 = !DIGlobalVariableExpression(var: !990, expr: !DIExpression())
!990 = distinct !DIGlobalVariable(scope: null, file: !3, line: 326, type: !991, isLocal: true, isDefinition: true)
!991 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 1528, elements: !992)
!992 = !{!993}
!993 = !DISubrange(count: 191)
!994 = !DIGlobalVariableExpression(var: !995, expr: !DIExpression())
!995 = distinct !DIGlobalVariable(scope: null, file: !3, line: 330, type: !996, isLocal: true, isDefinition: true)
!996 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 1752, elements: !997)
!997 = !{!998}
!998 = !DISubrange(count: 219)
!999 = !DIGlobalVariableExpression(var: !1000, expr: !DIExpression())
!1000 = distinct !DIGlobalVariable(scope: null, file: !3, line: 334, type: !1001, isLocal: true, isDefinition: true)
!1001 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 1592, elements: !1002)
!1002 = !{!1003}
!1003 = !DISubrange(count: 199)
!1004 = !DIGlobalVariableExpression(var: !1005, expr: !DIExpression())
!1005 = distinct !DIGlobalVariable(scope: null, file: !3, line: 338, type: !933, isLocal: true, isDefinition: true)
!1006 = !DIGlobalVariableExpression(var: !1007, expr: !DIExpression())
!1007 = distinct !DIGlobalVariable(scope: null, file: !3, line: 341, type: !329, isLocal: true, isDefinition: true)
!1008 = !DIGlobalVariableExpression(var: !1009, expr: !DIExpression())
!1009 = distinct !DIGlobalVariable(scope: null, file: !3, line: 343, type: !644, isLocal: true, isDefinition: true)
!1010 = !DIGlobalVariableExpression(var: !1011, expr: !DIExpression())
!1011 = distinct !DIGlobalVariable(scope: null, file: !3, line: 344, type: !751, isLocal: true, isDefinition: true)
!1012 = !DIGlobalVariableExpression(var: !1013, expr: !DIExpression())
!1013 = distinct !DIGlobalVariable(scope: null, file: !3, line: 345, type: !1014, isLocal: true, isDefinition: true)
!1014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 392, elements: !1015)
!1015 = !{!1016}
!1016 = !DISubrange(count: 49)
!1017 = !DIGlobalVariableExpression(var: !1018, expr: !DIExpression())
!1018 = distinct !DIGlobalVariable(scope: null, file: !3, line: 346, type: !699, isLocal: true, isDefinition: true)
!1019 = !DIGlobalVariableExpression(var: !1020, expr: !DIExpression())
!1020 = distinct !DIGlobalVariable(scope: null, file: !3, line: 347, type: !624, isLocal: true, isDefinition: true)
!1021 = !DIGlobalVariableExpression(var: !1022, expr: !DIExpression())
!1022 = distinct !DIGlobalVariable(scope: null, file: !3, line: 348, type: !896, isLocal: true, isDefinition: true)
!1023 = !DIGlobalVariableExpression(var: !1024, expr: !DIExpression())
!1024 = distinct !DIGlobalVariable(scope: null, file: !3, line: 350, type: !1025, isLocal: true, isDefinition: true)
!1025 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 464, elements: !1026)
!1026 = !{!1027}
!1027 = !DISubrange(count: 58)
!1028 = !DIGlobalVariableExpression(var: !1029, expr: !DIExpression())
!1029 = distinct !DIGlobalVariable(scope: null, file: !3, line: 351, type: !879, isLocal: true, isDefinition: true)
!1030 = !DIGlobalVariableExpression(var: !1031, expr: !DIExpression())
!1031 = distinct !DIGlobalVariable(scope: null, file: !3, line: 352, type: !1032, isLocal: true, isDefinition: true)
!1032 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 336, elements: !1033)
!1033 = !{!1034}
!1034 = !DISubrange(count: 42)
!1035 = !DIGlobalVariableExpression(var: !1036, expr: !DIExpression())
!1036 = distinct !DIGlobalVariable(scope: null, file: !3, line: 353, type: !758, isLocal: true, isDefinition: true)
!1037 = !DIGlobalVariableExpression(var: !1038, expr: !DIExpression())
!1038 = distinct !DIGlobalVariable(scope: null, file: !3, line: 354, type: !758, isLocal: true, isDefinition: true)
!1039 = !DIGlobalVariableExpression(var: !1040, expr: !DIExpression())
!1040 = distinct !DIGlobalVariable(scope: null, file: !3, line: 355, type: !1014, isLocal: true, isDefinition: true)
!1041 = !DIGlobalVariableExpression(var: !1042, expr: !DIExpression())
!1042 = distinct !DIGlobalVariable(scope: null, file: !3, line: 356, type: !765, isLocal: true, isDefinition: true)
!1043 = !DIGlobalVariableExpression(var: !1044, expr: !DIExpression())
!1044 = distinct !DIGlobalVariable(scope: null, file: !3, line: 357, type: !1045, isLocal: true, isDefinition: true)
!1045 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 744, elements: !1046)
!1046 = !{!1047}
!1047 = !DISubrange(count: 93)
!1048 = !DIGlobalVariableExpression(var: !1049, expr: !DIExpression())
!1049 = distinct !DIGlobalVariable(scope: null, file: !3, line: 358, type: !1050, isLocal: true, isDefinition: true)
!1050 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 432, elements: !1051)
!1051 = !{!1052}
!1052 = !DISubrange(count: 54)
!1053 = !DIGlobalVariableExpression(var: !1054, expr: !DIExpression())
!1054 = distinct !DIGlobalVariable(scope: null, file: !3, line: 359, type: !1055, isLocal: true, isDefinition: true)
!1055 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 488, elements: !1056)
!1056 = !{!1057}
!1057 = !DISubrange(count: 61)
!1058 = !DIGlobalVariableExpression(var: !1059, expr: !DIExpression())
!1059 = distinct !DIGlobalVariable(scope: null, file: !3, line: 360, type: !933, isLocal: true, isDefinition: true)
!1060 = !DIGlobalVariableExpression(var: !1061, expr: !DIExpression())
!1061 = distinct !DIGlobalVariable(scope: null, file: !3, line: 361, type: !614, isLocal: true, isDefinition: true)
!1062 = !DIGlobalVariableExpression(var: !1063, expr: !DIExpression())
!1063 = distinct !DIGlobalVariable(scope: null, file: !3, line: 362, type: !739, isLocal: true, isDefinition: true)
!1064 = !DIGlobalVariableExpression(var: !1065, expr: !DIExpression())
!1065 = distinct !DIGlobalVariable(scope: null, file: !3, line: 363, type: !1025, isLocal: true, isDefinition: true)
!1066 = !DIGlobalVariableExpression(var: !1067, expr: !DIExpression())
!1067 = distinct !DIGlobalVariable(scope: null, file: !3, line: 147, type: !294, isLocal: true, isDefinition: true)
!1068 = !DIGlobalVariableExpression(var: !1069, expr: !DIExpression())
!1069 = distinct !DIGlobalVariable(scope: null, file: !34, line: 95, type: !221, isLocal: true, isDefinition: true)
!1070 = !DIGlobalVariableExpression(var: !1071, expr: !DIExpression())
!1071 = distinct !DIGlobalVariable(scope: null, file: !34, line: 95, type: !231, isLocal: true, isDefinition: true)
!1072 = !DIGlobalVariableExpression(var: !1073, expr: !DIExpression())
!1073 = distinct !DIGlobalVariable(scope: null, file: !34, line: 95, type: !226, isLocal: true, isDefinition: true)
!1074 = !DIGlobalVariableExpression(var: !1075, expr: !DIExpression())
!1075 = distinct !DIGlobalVariable(scope: null, file: !34, line: 95, type: !221, isLocal: true, isDefinition: true)
!1076 = !DIGlobalVariableExpression(var: !1077, expr: !DIExpression())
!1077 = distinct !DIGlobalVariable(name: "x264_direct_pred_names", scope: !2, file: !34, line: 95, type: !1078, isLocal: true, isDefinition: true)
!1078 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1079, size: 320, elements: !222)
!1079 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !97)
!1080 = !DIGlobalVariableExpression(var: !1081, expr: !DIExpression())
!1081 = distinct !DIGlobalVariable(scope: null, file: !34, line: 96, type: !294, isLocal: true, isDefinition: true)
!1082 = !DIGlobalVariableExpression(var: !1083, expr: !DIExpression())
!1083 = distinct !DIGlobalVariable(scope: null, file: !34, line: 96, type: !294, isLocal: true, isDefinition: true)
!1084 = !DIGlobalVariableExpression(var: !1085, expr: !DIExpression())
!1085 = distinct !DIGlobalVariable(scope: null, file: !34, line: 96, type: !294, isLocal: true, isDefinition: true)
!1086 = !DIGlobalVariableExpression(var: !1087, expr: !DIExpression())
!1087 = distinct !DIGlobalVariable(scope: null, file: !34, line: 96, type: !294, isLocal: true, isDefinition: true)
!1088 = !DIGlobalVariableExpression(var: !1089, expr: !DIExpression())
!1089 = distinct !DIGlobalVariable(scope: null, file: !34, line: 96, type: !221, isLocal: true, isDefinition: true)
!1090 = !DIGlobalVariableExpression(var: !1091, expr: !DIExpression())
!1091 = distinct !DIGlobalVariable(name: "x264_motion_est_names", scope: !2, file: !34, line: 96, type: !1092, isLocal: true, isDefinition: true)
!1092 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1079, size: 384, elements: !286)
!1093 = !DIGlobalVariableExpression(var: !1094, expr: !DIExpression())
!1094 = distinct !DIGlobalVariable(scope: null, file: !34, line: 97, type: !285, isLocal: true, isDefinition: true)
!1095 = !DIGlobalVariableExpression(var: !1096, expr: !DIExpression())
!1096 = distinct !DIGlobalVariable(scope: null, file: !34, line: 97, type: !221, isLocal: true, isDefinition: true)
!1097 = !DIGlobalVariableExpression(var: !1098, expr: !DIExpression())
!1098 = distinct !DIGlobalVariable(scope: null, file: !34, line: 97, type: !221, isLocal: true, isDefinition: true)
!1099 = !DIGlobalVariableExpression(var: !1100, expr: !DIExpression())
!1100 = distinct !DIGlobalVariable(name: "x264_overscan_names", scope: !2, file: !34, line: 97, type: !1101, isLocal: true, isDefinition: true)
!1101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1079, size: 256, elements: !208)
!1102 = !DIGlobalVariableExpression(var: !1103, expr: !DIExpression())
!1103 = distinct !DIGlobalVariable(scope: null, file: !34, line: 98, type: !252, isLocal: true, isDefinition: true)
!1104 = !DIGlobalVariableExpression(var: !1105, expr: !DIExpression())
!1105 = distinct !DIGlobalVariable(scope: null, file: !34, line: 98, type: !294, isLocal: true, isDefinition: true)
!1106 = !DIGlobalVariableExpression(var: !1107, expr: !DIExpression())
!1107 = distinct !DIGlobalVariable(scope: null, file: !34, line: 98, type: !221, isLocal: true, isDefinition: true)
!1108 = !DIGlobalVariableExpression(var: !1109, expr: !DIExpression())
!1109 = distinct !DIGlobalVariable(scope: null, file: !34, line: 98, type: !285, isLocal: true, isDefinition: true)
!1110 = !DIGlobalVariableExpression(var: !1111, expr: !DIExpression())
!1111 = distinct !DIGlobalVariable(scope: null, file: !34, line: 98, type: !294, isLocal: true, isDefinition: true)
!1112 = !DIGlobalVariableExpression(var: !1113, expr: !DIExpression())
!1113 = distinct !DIGlobalVariable(name: "x264_vidformat_names", scope: !2, file: !34, line: 98, type: !1114, isLocal: true, isDefinition: true)
!1114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1079, size: 448, elements: !248)
!1115 = !DIGlobalVariableExpression(var: !1116, expr: !DIExpression())
!1116 = distinct !DIGlobalVariable(scope: null, file: !34, line: 99, type: !294, isLocal: true, isDefinition: true)
!1117 = !DIGlobalVariableExpression(var: !1118, expr: !DIExpression())
!1118 = distinct !DIGlobalVariable(scope: null, file: !34, line: 99, type: !268, isLocal: true, isDefinition: true)
!1119 = !DIGlobalVariableExpression(var: !1120, expr: !DIExpression())
!1120 = distinct !DIGlobalVariable(name: "x264_fullrange_names", scope: !2, file: !34, line: 99, type: !1121, isLocal: true, isDefinition: true)
!1121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1079, size: 192, elements: !269)
!1122 = !DIGlobalVariableExpression(var: !1123, expr: !DIExpression())
!1123 = distinct !DIGlobalVariable(scope: null, file: !34, line: 100, type: !509, isLocal: true, isDefinition: true)
!1124 = !DIGlobalVariableExpression(var: !1125, expr: !DIExpression())
!1125 = distinct !DIGlobalVariable(scope: null, file: !34, line: 100, type: !285, isLocal: true, isDefinition: true)
!1126 = !DIGlobalVariableExpression(var: !1127, expr: !DIExpression())
!1127 = distinct !DIGlobalVariable(scope: null, file: !34, line: 100, type: !247, isLocal: true, isDefinition: true)
!1128 = !DIGlobalVariableExpression(var: !1129, expr: !DIExpression())
!1129 = distinct !DIGlobalVariable(scope: null, file: !34, line: 100, type: !231, isLocal: true, isDefinition: true)
!1130 = !DIGlobalVariableExpression(var: !1131, expr: !DIExpression())
!1131 = distinct !DIGlobalVariable(scope: null, file: !34, line: 100, type: !252, isLocal: true, isDefinition: true)
!1132 = !DIGlobalVariableExpression(var: !1133, expr: !DIExpression())
!1133 = distinct !DIGlobalVariable(scope: null, file: !34, line: 100, type: !252, isLocal: true, isDefinition: true)
!1134 = !DIGlobalVariableExpression(var: !1135, expr: !DIExpression())
!1135 = distinct !DIGlobalVariable(scope: null, file: !34, line: 100, type: !221, isLocal: true, isDefinition: true)
!1136 = !DIGlobalVariableExpression(var: !1137, expr: !DIExpression())
!1137 = distinct !DIGlobalVariable(name: "x264_colorprim_names", scope: !2, file: !34, line: 100, type: !1138, isLocal: true, isDefinition: true)
!1138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1079, size: 640, elements: !253)
!1139 = !DIGlobalVariableExpression(var: !1140, expr: !DIExpression())
!1140 = distinct !DIGlobalVariable(scope: null, file: !34, line: 101, type: !247, isLocal: true, isDefinition: true)
!1141 = !DIGlobalVariableExpression(var: !1142, expr: !DIExpression())
!1142 = distinct !DIGlobalVariable(scope: null, file: !34, line: 101, type: !247, isLocal: true, isDefinition: true)
!1143 = !DIGlobalVariableExpression(var: !1144, expr: !DIExpression())
!1144 = distinct !DIGlobalVariable(scope: null, file: !34, line: 101, type: !247, isLocal: true, isDefinition: true)
!1145 = !DIGlobalVariableExpression(var: !1146, expr: !DIExpression())
!1146 = distinct !DIGlobalVariable(name: "x264_transfer_names", scope: !2, file: !34, line: 101, type: !1147, isLocal: true, isDefinition: true)
!1147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1079, size: 768, elements: !355)
!1148 = !DIGlobalVariableExpression(var: !1149, expr: !DIExpression())
!1149 = distinct !DIGlobalVariable(scope: null, file: !34, line: 102, type: !294, isLocal: true, isDefinition: true)
!1150 = !DIGlobalVariableExpression(var: !1151, expr: !DIExpression())
!1151 = distinct !DIGlobalVariable(scope: null, file: !34, line: 102, type: !294, isLocal: true, isDefinition: true)
!1152 = !DIGlobalVariableExpression(var: !1153, expr: !DIExpression())
!1153 = distinct !DIGlobalVariable(scope: null, file: !34, line: 102, type: !285, isLocal: true, isDefinition: true)
!1154 = !DIGlobalVariableExpression(var: !1155, expr: !DIExpression())
!1155 = distinct !DIGlobalVariable(name: "x264_colmatrix_names", scope: !2, file: !34, line: 102, type: !1138, isLocal: true, isDefinition: true)
!1156 = !DIGlobalVariableExpression(var: !1157, expr: !DIExpression())
!1157 = distinct !DIGlobalVariable(scope: null, file: !3, line: 833, type: !1158, isLocal: true, isDefinition: true)
!1158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 320, elements: !1159)
!1159 = !{!1160}
!1160 = !DISubrange(count: 40)
!1161 = !DIGlobalVariableExpression(var: !1162, expr: !DIExpression())
!1162 = distinct !DIGlobalVariable(scope: null, file: !3, line: 840, type: !656, isLocal: true, isDefinition: true)
!1163 = !DIGlobalVariableExpression(var: !1164, expr: !DIExpression())
!1164 = distinct !DIGlobalVariable(scope: null, file: !3, line: 885, type: !624, isLocal: true, isDefinition: true)
!1165 = !DIGlobalVariableExpression(var: !1166, expr: !DIExpression())
!1166 = distinct !DIGlobalVariable(scope: null, file: !3, line: 891, type: !639, isLocal: true, isDefinition: true)
!1167 = !DIGlobalVariableExpression(var: !1168, expr: !DIExpression())
!1168 = distinct !DIGlobalVariable(scope: null, file: !3, line: 893, type: !285, isLocal: true, isDefinition: true)
!1169 = !DIGlobalVariableExpression(var: !1170, expr: !DIExpression())
!1170 = distinct !DIGlobalVariable(scope: null, file: !3, line: 912, type: !886, isLocal: true, isDefinition: true)
!1171 = !DIGlobalVariableExpression(var: !1172, expr: !DIExpression())
!1172 = distinct !DIGlobalVariable(scope: null, file: !3, line: 918, type: !1173, isLocal: true, isDefinition: true)
!1173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 216, elements: !1174)
!1174 = !{!1175}
!1175 = !DISubrange(count: 27)
!1176 = !DIGlobalVariableExpression(var: !1177, expr: !DIExpression())
!1177 = distinct !DIGlobalVariable(scope: null, file: !3, line: 928, type: !1158, isLocal: true, isDefinition: true)
!1178 = !DIGlobalVariableExpression(var: !1179, expr: !DIExpression())
!1179 = distinct !DIGlobalVariable(scope: null, file: !3, line: 744, type: !252, isLocal: true, isDefinition: true)
!1180 = !DIGlobalVariableExpression(var: !1181, expr: !DIExpression())
!1181 = distinct !DIGlobalVariable(scope: null, file: !3, line: 763, type: !782, isLocal: true, isDefinition: true)
!1182 = !DIGlobalVariableExpression(var: !1183, expr: !DIExpression())
!1183 = distinct !DIGlobalVariable(scope: null, file: !3, line: 786, type: !1032, isLocal: true, isDefinition: true)
!1184 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!1185 = !{i32 7, !"Dwarf Version", i32 5}
!1186 = !{i32 2, !"Debug Info Version", i32 3}
!1187 = !{i32 1, !"wchar_size", i32 4}
!1188 = !{i32 8, !"PIC Level", i32 2}
!1189 = !{i32 7, !"PIE Level", i32 2}
!1190 = !{i32 7, !"uwtable", i32 2}
!1191 = !{!"clang version 16.0.0"}
!1192 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 92, type: !1193, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1195)
!1193 = !DISubroutineType(types: !1194)
!1194 = !{!5, !5, !6}
!1195 = !{!1196, !1197, !1198, !1199, !1200}
!1196 = !DILocalVariable(name: "argc", arg: 1, scope: !1192, file: !3, line: 92, type: !5)
!1197 = !DILocalVariable(name: "argv", arg: 2, scope: !1192, file: !3, line: 92, type: !6)
!1198 = !DILocalVariable(name: "param", scope: !1192, file: !3, line: 94, type: !33)
!1199 = !DILocalVariable(name: "opt", scope: !1192, file: !3, line: 95, type: !469)
!1200 = !DILocalVariable(name: "ret", scope: !1192, file: !3, line: 96, type: !5)
!1201 = !DILocation(line: 0, scope: !1192)
!1202 = !DILocation(line: 94, column: 5, scope: !1192)
!1203 = !DILocation(line: 94, column: 18, scope: !1192)
!1204 = !DILocation(line: 95, column: 5, scope: !1192)
!1205 = !DILocation(line: 95, column: 15, scope: !1192)
!1206 = !DILocation(line: 104, column: 5, scope: !1192)
!1207 = !DILocation(line: 105, column: 5, scope: !1192)
!1208 = !DILocation(line: 121, column: 5, scope: !1192)
!1209 = !DILocation(line: 0, scope: !465, inlinedAt: !1210)
!1210 = distinct !DILocation(line: 124, column: 9, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1192, file: !3, line: 124, column: 9)
!1212 = !DILocation(line: 374, column: 5, scope: !465, inlinedAt: !1210)
!1213 = !DILocation(line: 374, column: 18, scope: !465, inlinedAt: !1210)
!1214 = !DILocation(line: 374, column: 29, scope: !465, inlinedAt: !1210)
!1215 = !{i64 0, i64 4, !1216, i64 4, i64 4, !1216, i64 8, i64 4, !1216, i64 12, i64 4, !1216, i64 16, i64 4, !1216, i64 20, i64 4, !1216, i64 24, i64 4, !1216, i64 28, i64 4, !1216, i64 32, i64 4, !1216, i64 36, i64 4, !1216, i64 40, i64 4, !1216, i64 44, i64 4, !1216, i64 48, i64 4, !1216, i64 52, i64 4, !1216, i64 56, i64 4, !1216, i64 60, i64 4, !1216, i64 64, i64 4, !1216, i64 68, i64 4, !1216, i64 72, i64 4, !1216, i64 76, i64 4, !1216, i64 80, i64 4, !1216, i64 84, i64 4, !1216, i64 88, i64 4, !1216, i64 92, i64 4, !1216, i64 96, i64 4, !1216, i64 100, i64 4, !1216, i64 104, i64 4, !1216, i64 108, i64 4, !1216, i64 112, i64 4, !1216, i64 116, i64 4, !1216, i64 120, i64 4, !1216, i64 124, i64 4, !1216, i64 128, i64 4, !1216, i64 132, i64 4, !1216, i64 136, i64 4, !1216, i64 144, i64 8, !1220, i64 152, i64 16, !1222, i64 168, i64 16, !1222, i64 184, i64 16, !1222, i64 200, i64 16, !1222, i64 216, i64 64, !1222, i64 280, i64 64, !1222, i64 344, i64 8, !1220, i64 352, i64 8, !1220, i64 360, i64 4, !1216, i64 364, i64 4, !1216, i64 368, i64 8, !1220, i64 376, i64 4, !1216, i64 380, i64 4, !1216, i64 384, i64 4, !1216, i64 388, i64 4, !1216, i64 392, i64 4, !1216, i64 396, i64 4, !1216, i64 400, i64 4, !1216, i64 404, i64 4, !1216, i64 408, i64 4, !1216, i64 412, i64 4, !1216, i64 416, i64 4, !1216, i64 420, i64 4, !1216, i64 424, i64 4, !1216, i64 428, i64 4, !1216, i64 432, i64 4, !1216, i64 436, i64 4, !1216, i64 440, i64 4, !1216, i64 444, i64 4, !1216, i64 448, i64 4, !1223, i64 452, i64 4, !1223, i64 456, i64 8, !1222, i64 464, i64 4, !1216, i64 468, i64 4, !1216, i64 472, i64 4, !1216, i64 476, i64 4, !1216, i64 480, i64 4, !1216, i64 484, i64 4, !1216, i64 488, i64 4, !1216, i64 492, i64 4, !1216, i64 496, i64 4, !1223, i64 500, i64 4, !1223, i64 504, i64 4, !1216, i64 508, i64 4, !1216, i64 512, i64 4, !1223, i64 516, i64 4, !1223, i64 520, i64 4, !1223, i64 524, i64 4, !1216, i64 528, i64 4, !1223, i64 532, i64 4, !1216, i64 536, i64 8, !1220, i64 544, i64 4, !1216, i64 552, i64 8, !1220, i64 560, i64 4, !1223, i64 564, i64 4, !1223, i64 568, i64 4, !1223, i64 576, i64 8, !1220, i64 584, i64 4, !1216, i64 592, i64 8, !1220, i64 600, i64 4, !1216, i64 604, i64 4, !1216, i64 608, i64 4, !1216}
!1216 = !{!1217, !1217, i64 0}
!1217 = !{!"int", !1218, i64 0}
!1218 = !{!"omnipotent char", !1219, i64 0}
!1219 = !{!"Simple C/C++ TBAA"}
!1220 = !{!1221, !1221, i64 0}
!1221 = !{!"any pointer", !1218, i64 0}
!1222 = !{!1218, !1218, i64 0}
!1223 = !{!1224, !1224, i64 0}
!1224 = !{!"float", !1218, i64 0}
!1225 = !DILocation(line: 380, column: 5, scope: !465, inlinedAt: !1210)
!1226 = !DILocation(line: 383, column: 19, scope: !465, inlinedAt: !1210)
!1227 = !DILocation(line: 384, column: 23, scope: !465, inlinedAt: !1210)
!1228 = !DILocation(line: 385, column: 18, scope: !465, inlinedAt: !1210)
!1229 = !DILocation(line: 386, column: 20, scope: !465, inlinedAt: !1210)
!1230 = !DILocation(line: 389, column: 20, scope: !465, inlinedAt: !1210)
!1231 = !DILocation(line: 390, column: 25, scope: !465, inlinedAt: !1210)
!1232 = !DILocation(line: 391, column: 18, scope: !465, inlinedAt: !1210)
!1233 = !DILocation(line: 392, column: 15, scope: !465, inlinedAt: !1210)
!1234 = !DILocation(line: 393, column: 21, scope: !465, inlinedAt: !1210)
!1235 = !DILocation(line: 396, column: 5, scope: !465, inlinedAt: !1210)
!1236 = !DILocation(line: 378, column: 9, scope: !465, inlinedAt: !1210)
!1237 = !DILocation(line: 0, scope: !546, inlinedAt: !1210)
!1238 = !DILocation(line: 399, column: 9, scope: !546, inlinedAt: !1210)
!1239 = !DILocation(line: 399, column: 13, scope: !546, inlinedAt: !1210)
!1240 = !DILocation(line: 515, column: 17, scope: !546, inlinedAt: !1210)
!1241 = !DILocation(line: 518, column: 13, scope: !546, inlinedAt: !1210)
!1242 = !DILocation(line: 526, column: 17, scope: !553, inlinedAt: !1210)
!1243 = !DILocation(line: 527, column: 17, scope: !553, inlinedAt: !1210)
!1244 = !DILocation(line: 529, column: 17, scope: !553, inlinedAt: !1210)
!1245 = !DILocation(line: 530, column: 17, scope: !553, inlinedAt: !1210)
!1246 = !DILocation(line: 533, column: 17, scope: !553, inlinedAt: !1210)
!1247 = !DILocation(line: 537, column: 17, scope: !553, inlinedAt: !1210)
!1248 = !DILocation(line: 539, column: 17, scope: !553, inlinedAt: !1210)
!1249 = !DILocation(line: 543, column: 17, scope: !553, inlinedAt: !1210)
!1250 = !DILocation(line: 545, column: 46, scope: !553, inlinedAt: !1210)
!1251 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1252, file: !1253, line: 362, type: !97)
!1252 = distinct !DISubprogram(name: "atoi", scope: !1253, file: !1253, line: 362, type: !1254, scopeLine: 363, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1256)
!1253 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1254 = !DISubroutineType(types: !1255)
!1255 = !{!5, !97}
!1256 = !{!1251}
!1257 = !DILocation(line: 0, scope: !1252, inlinedAt: !1258)
!1258 = distinct !DILocation(line: 545, column: 40, scope: !553, inlinedAt: !1210)
!1259 = !DILocation(line: 364, column: 16, scope: !1252, inlinedAt: !1258)
!1260 = !DILocation(line: 364, column: 10, scope: !1252, inlinedAt: !1258)
!1261 = !DILocation(line: 545, column: 38, scope: !553, inlinedAt: !1210)
!1262 = !{!1263, !1217, i64 28}
!1263 = !{!"x264_param_t", !1217, i64 0, !1217, i64 4, !1217, i64 8, !1217, i64 12, !1217, i64 16, !1217, i64 20, !1217, i64 24, !1217, i64 28, !1264, i64 32, !1217, i64 68, !1217, i64 72, !1217, i64 76, !1217, i64 80, !1217, i64 84, !1217, i64 88, !1217, i64 92, !1217, i64 96, !1217, i64 100, !1217, i64 104, !1217, i64 108, !1217, i64 112, !1217, i64 116, !1217, i64 120, !1217, i64 124, !1217, i64 128, !1217, i64 132, !1217, i64 136, !1221, i64 144, !1218, i64 152, !1218, i64 168, !1218, i64 184, !1218, i64 200, !1218, i64 216, !1218, i64 280, !1221, i64 344, !1221, i64 352, !1217, i64 360, !1217, i64 364, !1221, i64 368, !1265, i64 376, !1266, i64 472, !1217, i64 600, !1217, i64 604, !1217, i64 608}
!1264 = !{!"", !1217, i64 0, !1217, i64 4, !1217, i64 8, !1217, i64 12, !1217, i64 16, !1217, i64 20, !1217, i64 24, !1217, i64 28, !1217, i64 32}
!1265 = !{!"", !1217, i64 0, !1217, i64 4, !1217, i64 8, !1217, i64 12, !1217, i64 16, !1217, i64 20, !1217, i64 24, !1217, i64 28, !1217, i64 32, !1217, i64 36, !1217, i64 40, !1217, i64 44, !1217, i64 48, !1217, i64 52, !1217, i64 56, !1217, i64 60, !1217, i64 64, !1217, i64 68, !1224, i64 72, !1224, i64 76, !1218, i64 80, !1217, i64 88, !1217, i64 92}
!1266 = !{!"", !1217, i64 0, !1217, i64 4, !1217, i64 8, !1217, i64 12, !1217, i64 16, !1217, i64 20, !1224, i64 24, !1224, i64 28, !1217, i64 32, !1217, i64 36, !1224, i64 40, !1224, i64 44, !1224, i64 48, !1217, i64 52, !1224, i64 56, !1217, i64 60, !1221, i64 64, !1217, i64 72, !1221, i64 80, !1224, i64 88, !1224, i64 92, !1224, i64 96, !1221, i64 104, !1217, i64 112, !1221, i64 120}
!1267 = !DILocation(line: 546, column: 17, scope: !553, inlinedAt: !1210)
!1268 = !DILocation(line: 548, column: 37, scope: !553, inlinedAt: !1210)
!1269 = !DILocation(line: 0, scope: !1252, inlinedAt: !1270)
!1270 = distinct !DILocation(line: 548, column: 31, scope: !553, inlinedAt: !1210)
!1271 = !DILocation(line: 364, column: 16, scope: !1252, inlinedAt: !1270)
!1272 = !DILocation(line: 364, column: 10, scope: !1252, inlinedAt: !1270)
!1273 = !DILocation(line: 548, column: 29, scope: !553, inlinedAt: !1210)
!1274 = !{!1275, !1217, i64 4}
!1275 = !{!"", !1217, i64 0, !1217, i64 4, !1221, i64 8, !1221, i64 16, !1221, i64 24}
!1276 = !DILocation(line: 549, column: 17, scope: !553, inlinedAt: !1210)
!1277 = !DILocation(line: 551, column: 34, scope: !1278, inlinedAt: !1210)
!1278 = distinct !DILexicalBlock(scope: !553, file: !3, line: 551, column: 21)
!1279 = !DILocation(line: 551, column: 43, scope: !1278, inlinedAt: !1210)
!1280 = !DILocation(line: 551, column: 41, scope: !1278, inlinedAt: !1210)
!1281 = !DILocation(line: 551, column: 58, scope: !1278, inlinedAt: !1210)
!1282 = !DILocation(line: 551, column: 22, scope: !1278, inlinedAt: !1210)
!1283 = !DILocation(line: 551, column: 21, scope: !553, inlinedAt: !1210)
!1284 = !DILocation(line: 560, column: 30, scope: !1285, inlinedAt: !1210)
!1285 = distinct !DILexicalBlock(scope: !1278, file: !3, line: 552, column: 17)
!1286 = !DILocation(line: 560, column: 21, scope: !1285, inlinedAt: !1210)
!1287 = !DILocation(line: 561, column: 21, scope: !1285, inlinedAt: !1210)
!1288 = !DILocation(line: 564, column: 27, scope: !1289, inlinedAt: !1210)
!1289 = distinct !DILexicalBlock(scope: !1278, file: !3, line: 564, column: 26)
!1290 = !DILocation(line: 564, column: 26, scope: !1278, inlinedAt: !1210)
!1291 = !DILocation(line: 566, column: 36, scope: !1292, inlinedAt: !1210)
!1292 = distinct !DILexicalBlock(scope: !1289, file: !3, line: 565, column: 17)
!1293 = !DILocation(line: 567, column: 34, scope: !1292, inlinedAt: !1210)
!1294 = !DILocation(line: 568, column: 41, scope: !1292, inlinedAt: !1210)
!1295 = !DILocation(line: 569, column: 31, scope: !1292, inlinedAt: !1210)
!1296 = !DILocation(line: 570, column: 37, scope: !1292, inlinedAt: !1210)
!1297 = !DILocation(line: 571, column: 17, scope: !1292, inlinedAt: !1210)
!1298 = !DILocation(line: 572, column: 22, scope: !1299, inlinedAt: !1210)
!1299 = distinct !DILexicalBlock(scope: !553, file: !3, line: 572, column: 21)
!1300 = !DILocation(line: 572, column: 21, scope: !553, inlinedAt: !1210)
!1301 = !DILocation(line: 573, column: 33, scope: !1299, inlinedAt: !1210)
!1302 = !DILocation(line: 573, column: 31, scope: !1299, inlinedAt: !1210)
!1303 = !{!1275, !1221, i64 16}
!1304 = !DILocation(line: 573, column: 21, scope: !1299, inlinedAt: !1210)
!1305 = !DILocation(line: 574, column: 26, scope: !1306, inlinedAt: !1210)
!1306 = distinct !DILexicalBlock(scope: !1299, file: !3, line: 574, column: 26)
!1307 = !{ptr @open_file_bsf, ptr @open_file_mkv}
!1308 = !DILocation(line: 574, column: 26, scope: !1299, inlinedAt: !1210)
!1309 = !DILocation(line: 576, column: 30, scope: !1310, inlinedAt: !1210)
!1310 = distinct !DILexicalBlock(scope: !1306, file: !3, line: 575, column: 17)
!1311 = !DILocation(line: 576, column: 85, scope: !1310, inlinedAt: !1210)
!1312 = !DILocation(line: 576, column: 21, scope: !1310, inlinedAt: !1210)
!1313 = !DILocation(line: 577, column: 21, scope: !1310, inlinedAt: !1210)
!1314 = !DILocation(line: 581, column: 38, scope: !553, inlinedAt: !1210)
!1315 = !DILocation(line: 581, column: 31, scope: !553, inlinedAt: !1210)
!1316 = !DILocation(line: 581, column: 29, scope: !553, inlinedAt: !1210)
!1317 = !{!1275, !1221, i64 24}
!1318 = !DILocation(line: 582, column: 22, scope: !1319, inlinedAt: !1210)
!1319 = distinct !DILexicalBlock(scope: !553, file: !3, line: 582, column: 21)
!1320 = !DILocation(line: 582, column: 21, scope: !553, inlinedAt: !1210)
!1321 = !DILocation(line: 584, column: 30, scope: !1322, inlinedAt: !1210)
!1322 = distinct !DILexicalBlock(scope: !1319, file: !3, line: 583, column: 17)
!1323 = !DILocation(line: 584, column: 73, scope: !1322, inlinedAt: !1210)
!1324 = !DILocation(line: 584, column: 21, scope: !1322, inlinedAt: !1210)
!1325 = !DILocation(line: 585, column: 21, scope: !1322, inlinedAt: !1210)
!1326 = !DILocation(line: 587, column: 45, scope: !553, inlinedAt: !1210)
!1327 = !{!1263, !1217, i64 88}
!1328 = !DILocation(line: 588, column: 42, scope: !553, inlinedAt: !1210)
!1329 = !{!1263, !1217, i64 100}
!1330 = !DILocation(line: 589, column: 17, scope: !553, inlinedAt: !1210)
!1331 = !DILocation(line: 594, column: 36, scope: !553, inlinedAt: !1210)
!1332 = !{!1263, !1217, i64 360}
!1333 = !DILocation(line: 595, column: 17, scope: !553, inlinedAt: !1210)
!1334 = !DILocation(line: 597, column: 36, scope: !553, inlinedAt: !1210)
!1335 = !DILocation(line: 598, column: 17, scope: !553, inlinedAt: !1210)
!1336 = !DILocation(line: 600, column: 33, scope: !553, inlinedAt: !1210)
!1337 = !{!1275, !1217, i64 0}
!1338 = !DILocation(line: 601, column: 17, scope: !553, inlinedAt: !1210)
!1339 = !DILocation(line: 607, column: 26, scope: !553, inlinedAt: !1210)
!1340 = !DILocation(line: 607, column: 17, scope: !553, inlinedAt: !1210)
!1341 = !DILocation(line: 609, column: 17, scope: !553, inlinedAt: !1210)
!1342 = !DILocation(line: 613, column: 21, scope: !1343, inlinedAt: !1210)
!1343 = distinct !DILexicalBlock(scope: !552, file: !3, line: 613, column: 21)
!1344 = !DILocation(line: 613, column: 40, scope: !1343, inlinedAt: !1210)
!1345 = !DILocation(line: 613, column: 21, scope: !552, inlinedAt: !1210)
!1346 = !DILocation(line: 0, scope: !552, inlinedAt: !1210)
!1347 = !DILocation(line: 615, column: 49, scope: !1348, inlinedAt: !1210)
!1348 = distinct !DILexicalBlock(scope: !1349, file: !3, line: 615, column: 21)
!1349 = distinct !DILexicalBlock(scope: !1350, file: !3, line: 615, column: 21)
!1350 = distinct !DILexicalBlock(scope: !1343, file: !3, line: 614, column: 17)
!1351 = !{!1352, !1221, i64 0}
!1352 = !{!"option", !1221, i64 0, !1217, i64 8, !1221, i64 16, !1217, i64 24}
!1353 = !DILocation(line: 615, column: 21, scope: !1349, inlinedAt: !1210)
!1354 = !DILocation(line: 616, column: 45, scope: !1355, inlinedAt: !1210)
!1355 = distinct !DILexicalBlock(scope: !1348, file: !3, line: 616, column: 29)
!1356 = !{!1352, !1217, i64 24}
!1357 = !DILocation(line: 616, column: 49, scope: !1355, inlinedAt: !1210)
!1358 = !DILocation(line: 616, column: 29, scope: !1348, inlinedAt: !1210)
!1359 = !DILocation(line: 618, column: 48, scope: !1360, inlinedAt: !1210)
!1360 = distinct !DILexicalBlock(scope: !1355, file: !3, line: 617, column: 25)
!1361 = !DILocation(line: 621, column: 25, scope: !1350, inlinedAt: !1210)
!1362 = !DILocation(line: 615, column: 56, scope: !1348, inlinedAt: !1210)
!1363 = !DILocation(line: 615, column: 33, scope: !1348, inlinedAt: !1210)
!1364 = distinct !{!1364, !1353, !1365, !1366}
!1365 = !DILocation(line: 620, column: 25, scope: !1349, inlinedAt: !1210)
!1366 = !{!"llvm.loop.mustprogress"}
!1367 = !DILocation(line: 628, column: 66, scope: !552, inlinedAt: !1210)
!1368 = !DILocation(line: 628, column: 53, scope: !552, inlinedAt: !1210)
!1369 = !DILocation(line: 628, column: 86, scope: !552, inlinedAt: !1210)
!1370 = !DILocation(line: 628, column: 92, scope: !552, inlinedAt: !1210)
!1371 = !DILocation(line: 628, column: 28, scope: !552, inlinedAt: !1210)
!1372 = !DILocation(line: 632, column: 13, scope: !556, inlinedAt: !1210)
!1373 = !DILocation(line: 632, column: 13, scope: !546, inlinedAt: !1210)
!1374 = !DILocation(line: 634, column: 32, scope: !555, inlinedAt: !1210)
!1375 = !DILocation(line: 634, column: 51, scope: !555, inlinedAt: !1210)
!1376 = !DILocation(line: 0, scope: !555, inlinedAt: !1210)
!1377 = !DILocation(line: 635, column: 22, scope: !555, inlinedAt: !1210)
!1378 = !DILocation(line: 635, column: 81, scope: !555, inlinedAt: !1210)
!1379 = !DILocation(line: 635, column: 13, scope: !555, inlinedAt: !1210)
!1380 = !DILocation(line: 638, column: 5, scope: !547, inlinedAt: !1210)
!1381 = !DILocation(line: 641, column: 9, scope: !1382, inlinedAt: !1210)
!1382 = distinct !DILexicalBlock(scope: !465, file: !3, line: 641, column: 9)
!1383 = !DILocation(line: 641, column: 16, scope: !1382, inlinedAt: !1210)
!1384 = !DILocation(line: 641, column: 27, scope: !1382, inlinedAt: !1210)
!1385 = !DILocation(line: 641, column: 36, scope: !1382, inlinedAt: !1210)
!1386 = !DILocation(line: 641, column: 31, scope: !1382, inlinedAt: !1210)
!1387 = !DILocation(line: 641, column: 9, scope: !465, inlinedAt: !1210)
!1388 = !DILocation(line: 643, column: 18, scope: !1389, inlinedAt: !1210)
!1389 = distinct !DILexicalBlock(scope: !1382, file: !3, line: 642, column: 5)
!1390 = !DILocation(line: 643, column: 9, scope: !1389, inlinedAt: !1210)
!1391 = !DILocation(line: 645, column: 9, scope: !1389, inlinedAt: !1210)
!1392 = !DILocation(line: 647, column: 31, scope: !465, inlinedAt: !1210)
!1393 = !DILocation(line: 647, column: 20, scope: !465, inlinedAt: !1210)
!1394 = !DILocation(line: 650, column: 26, scope: !465, inlinedAt: !1210)
!1395 = !DILocation(line: 650, column: 24, scope: !465, inlinedAt: !1210)
!1396 = !DILocation(line: 651, column: 5, scope: !465, inlinedAt: !1210)
!1397 = !DILocation(line: 651, column: 16, scope: !465, inlinedAt: !1210)
!1398 = !DILocation(line: 651, column: 31, scope: !465, inlinedAt: !1210)
!1399 = !DILocation(line: 651, column: 34, scope: !465, inlinedAt: !1210)
!1400 = !DILocation(line: 651, column: 39, scope: !465, inlinedAt: !1210)
!1401 = distinct !{!1401, !1396, !1402, !1366}
!1402 = !DILocation(line: 652, column: 12, scope: !465, inlinedAt: !1210)
!1403 = !DILocation(line: 653, column: 10, scope: !1404, inlinedAt: !1210)
!1404 = distinct !DILexicalBlock(scope: !465, file: !3, line: 653, column: 9)
!1405 = !DILocation(line: 653, column: 40, scope: !1404, inlinedAt: !1210)
!1406 = !DILocation(line: 653, column: 44, scope: !1404, inlinedAt: !1210)
!1407 = !DILocation(line: 653, column: 9, scope: !465, inlinedAt: !1210)
!1408 = !DILocation(line: 655, column: 10, scope: !1409, inlinedAt: !1210)
!1409 = distinct !DILexicalBlock(scope: !465, file: !3, line: 655, column: 9)
!1410 = !DILocation(line: 658, column: 18, scope: !1411, inlinedAt: !1210)
!1411 = distinct !DILexicalBlock(scope: !465, file: !3, line: 658, column: 9)
!1412 = !DILocation(line: 660, column: 20, scope: !1413, inlinedAt: !1210)
!1413 = distinct !DILexicalBlock(scope: !1414, file: !3, line: 660, column: 13)
!1414 = distinct !DILexicalBlock(scope: !1411, file: !3, line: 659, column: 5)
!1415 = !DILocation(line: 660, column: 13, scope: !1414, inlinedAt: !1210)
!1416 = !DILocation(line: 663, column: 38, scope: !1417, inlinedAt: !1210)
!1417 = distinct !DILexicalBlock(scope: !1418, file: !3, line: 663, column: 13)
!1418 = distinct !DILexicalBlock(scope: !1419, file: !3, line: 663, column: 13)
!1419 = distinct !DILexicalBlock(scope: !1413, file: !3, line: 661, column: 9)
!1420 = !DILocation(line: 663, column: 13, scope: !1418, inlinedAt: !1210)
!1421 = !DILocation(line: 665, column: 33, scope: !1422, inlinedAt: !1210)
!1422 = distinct !DILexicalBlock(scope: !1423, file: !3, line: 665, column: 21)
!1423 = distinct !DILexicalBlock(scope: !1417, file: !3, line: 664, column: 13)
!1424 = !DILocation(line: 666, column: 24, scope: !1422, inlinedAt: !1210)
!1425 = !DILocation(line: 666, column: 82, scope: !1422, inlinedAt: !1210)
!1426 = !DILocation(line: 665, column: 21, scope: !1423, inlinedAt: !1210)
!1427 = !DILocation(line: 668, column: 32, scope: !1428, inlinedAt: !1210)
!1428 = distinct !DILexicalBlock(scope: !1429, file: !3, line: 668, column: 25)
!1429 = distinct !DILexicalBlock(scope: !1422, file: !3, line: 667, column: 17)
!1430 = !DILocation(line: 668, column: 44, scope: !1428, inlinedAt: !1210)
!1431 = !DILocation(line: 668, column: 25, scope: !1429, inlinedAt: !1210)
!1432 = !DILocation(line: 669, column: 34, scope: !1428, inlinedAt: !1210)
!1433 = !DILocation(line: 669, column: 89, scope: !1428, inlinedAt: !1210)
!1434 = !{!1263, !1217, i64 12}
!1435 = !DILocation(line: 669, column: 105, scope: !1428, inlinedAt: !1210)
!1436 = !{!1263, !1217, i64 16}
!1437 = !DILocation(line: 669, column: 25, scope: !1428, inlinedAt: !1210)
!1438 = !DILocation(line: 663, column: 47, scope: !1417, inlinedAt: !1210)
!1439 = distinct !{!1439, !1420, !1440, !1366}
!1440 = !DILocation(line: 672, column: 13, scope: !1418, inlinedAt: !1210)
!1441 = !DILocation(line: 676, column: 32, scope: !1442, inlinedAt: !1210)
!1442 = distinct !DILexicalBlock(scope: !1413, file: !3, line: 675, column: 9)
!1443 = !DILocation(line: 676, column: 21, scope: !1442, inlinedAt: !1210)
!1444 = !DILocation(line: 676, column: 54, scope: !1442, inlinedAt: !1210)
!1445 = !DILocation(line: 676, column: 71, scope: !1442, inlinedAt: !1210)
!1446 = !DILocation(line: 676, column: 13, scope: !1442, inlinedAt: !1210)
!1447 = !DILocation(line: 680, column: 41, scope: !1448, inlinedAt: !1210)
!1448 = distinct !DILexicalBlock(scope: !465, file: !3, line: 680, column: 9)
!1449 = !DILocation(line: 680, column: 34, scope: !1448, inlinedAt: !1210)
!1450 = !DILocation(line: 680, column: 49, scope: !1448, inlinedAt: !1210)
!1451 = !DILocation(line: 682, column: 18, scope: !1452, inlinedAt: !1210)
!1452 = distinct !DILexicalBlock(scope: !1448, file: !3, line: 681, column: 5)
!1453 = !DILocation(line: 682, column: 9, scope: !1452, inlinedAt: !1210)
!1454 = !DILocation(line: 683, column: 9, scope: !1452, inlinedAt: !1210)
!1455 = !DILocation(line: 696, column: 22, scope: !1456, inlinedAt: !1210)
!1456 = distinct !DILexicalBlock(scope: !1457, file: !3, line: 689, column: 9)
!1457 = distinct !DILexicalBlock(scope: !1458, file: !3, line: 688, column: 13)
!1458 = distinct !DILexicalBlock(scope: !465, file: !3, line: 687, column: 5)
!1459 = !DILocation(line: 696, column: 13, scope: !1456, inlinedAt: !1210)
!1460 = !DILocation(line: 697, column: 13, scope: !1456, inlinedAt: !1210)
!1461 = !DILocation(line: 708, column: 13, scope: !1462, inlinedAt: !1210)
!1462 = distinct !DILexicalBlock(scope: !1458, file: !3, line: 708, column: 13)
!1463 = !DILocation(line: 700, column: 14, scope: !1458, inlinedAt: !1210)
!1464 = !DILocation(line: 702, column: 27, scope: !1465, inlinedAt: !1210)
!1465 = distinct !DILexicalBlock(scope: !1466, file: !3, line: 701, column: 9)
!1466 = distinct !DILexicalBlock(scope: !1458, file: !3, line: 700, column: 14)
!1467 = !DILocation(line: 703, column: 31, scope: !1465, inlinedAt: !1210)
!1468 = !DILocation(line: 704, column: 26, scope: !1465, inlinedAt: !1210)
!1469 = !DILocation(line: 705, column: 28, scope: !1465, inlinedAt: !1210)
!1470 = !DILocation(line: 706, column: 9, scope: !1465, inlinedAt: !1210)
!1471 = !DILocation(line: 708, column: 48, scope: !1462, inlinedAt: !1210)
!1472 = !DILocation(line: 708, column: 13, scope: !1458, inlinedAt: !1210)
!1473 = !DILocation(line: 710, column: 22, scope: !1474, inlinedAt: !1210)
!1474 = distinct !DILexicalBlock(scope: !1462, file: !3, line: 709, column: 9)
!1475 = !DILocation(line: 710, column: 13, scope: !1474, inlinedAt: !1210)
!1476 = !DILocation(line: 711, column: 13, scope: !1474, inlinedAt: !1210)
!1477 = !DILocation(line: 716, column: 9, scope: !1478, inlinedAt: !1210)
!1478 = distinct !DILexicalBlock(scope: !465, file: !3, line: 716, column: 9)
!1479 = !DILocation(line: 716, column: 24, scope: !1478, inlinedAt: !1210)
!1480 = !DILocation(line: 716, column: 34, scope: !1478, inlinedAt: !1210)
!1481 = !{!1263, !1217, i64 4}
!1482 = !DILocation(line: 716, column: 44, scope: !1478, inlinedAt: !1210)
!1483 = !DILocation(line: 717, column: 9, scope: !1478, inlinedAt: !1210)
!1484 = !DILocation(line: 717, column: 30, scope: !1478, inlinedAt: !1210)
!1485 = !DILocation(line: 717, column: 35, scope: !1478, inlinedAt: !1210)
!1486 = !DILocation(line: 717, column: 38, scope: !1478, inlinedAt: !1210)
!1487 = !DILocation(line: 717, column: 64, scope: !1478, inlinedAt: !1210)
!1488 = !DILocation(line: 716, column: 9, scope: !465, inlinedAt: !1210)
!1489 = !DILocation(line: 719, column: 13, scope: !1490, inlinedAt: !1210)
!1490 = distinct !DILexicalBlock(scope: !1491, file: !3, line: 719, column: 13)
!1491 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 718, column: 5)
!1492 = !DILocation(line: 719, column: 13, scope: !1491, inlinedAt: !1210)
!1493 = !DILocation(line: 721, column: 22, scope: !1494, inlinedAt: !1210)
!1494 = distinct !DILexicalBlock(scope: !1490, file: !3, line: 720, column: 9)
!1495 = !DILocation(line: 721, column: 13, scope: !1494, inlinedAt: !1210)
!1496 = !DILocation(line: 722, column: 9, scope: !1494, inlinedAt: !1210)
!1497 = !DILocation(line: 725, column: 27, scope: !1498, inlinedAt: !1210)
!1498 = distinct !DILexicalBlock(scope: !1490, file: !3, line: 724, column: 9)
!1499 = !DILocation(line: 726, column: 31, scope: !1498, inlinedAt: !1210)
!1500 = !DILocation(line: 727, column: 26, scope: !1498, inlinedAt: !1210)
!1501 = !DILocation(line: 728, column: 28, scope: !1498, inlinedAt: !1210)
!1502 = !DILocation(line: 734, column: 1, scope: !465, inlinedAt: !1210)
!1503 = !DILocation(line: 124, column: 9, scope: !1192)
!1504 = !DILocation(line: 128, column: 5, scope: !1192)
!1505 = !DILocalVariable(name: "param", arg: 1, scope: !1506, file: !3, line: 810, type: !32)
!1506 = distinct !DISubprogram(name: "Encode", scope: !3, file: !3, line: 810, type: !1507, scopeLine: 811, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1509)
!1507 = !DISubroutineType(types: !1508)
!1508 = !{!5, !32, !468}
!1509 = !{!1505, !1510, !1511, !2417, !2418, !2419, !2420, !2421, !2422, !2423, !2424, !2425, !2429, !2435, !2436, !2437, !2440}
!1510 = !DILocalVariable(name: "opt", arg: 2, scope: !1506, file: !3, line: 810, type: !468)
!1511 = !DILocalVariable(name: "h", scope: !1506, file: !3, line: 812, type: !1512)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_t", file: !34, line: 42, baseType: !1514)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_t", file: !1515, line: 250, size: 206080, elements: !1516)
!1515 = !DIFile(filename: "./common/common.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "4880b62cc871dca4002788746fbccb70")
!1516 = !{!1517, !1518, !1522, !1525, !1526, !1527, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1635, !1637, !1663, !1665, !1666, !1671, !1676, !1680, !1684, !1690, !1694, !1695, !1696, !1697, !1702, !1704, !1706, !1746, !1763, !1911, !1912, !1913, !1914, !1916, !1917, !1918, !1919, !1933, !2083, !2087, !2138, !2145, !2146, !2152, !2154, !2226, !2282, !2334, !2355, !2397}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !1514, file: !1515, line: 253, baseType: !33, size: 4928)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1514, file: !1515, line: 255, baseType: !1519, size: 8192, offset: 4928)
!1519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1512, size: 8192, elements: !1520)
!1520 = !{!1521}
!1521 = !DISubrange(count: 128)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "thread_handle", scope: !1514, file: !1515, line: 256, baseType: !1523, size: 64, offset: 13120)
!1523 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !1524, line: 27, baseType: !528)
!1524 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "b_thread_active", scope: !1514, file: !1515, line: 257, baseType: !5, size: 32, offset: 13184)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "i_thread_phase", scope: !1514, file: !1515, line: 258, baseType: !5, size: 32, offset: 13216)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !1514, file: !1515, line: 269, baseType: !1528, size: 2112, offset: 13248)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1514, file: !1515, line: 261, size: 2112, elements: !1529)
!1529 = !{!1530, !1531, !1540, !1541, !1542, !1555}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal", scope: !1528, file: !1515, line: 263, baseType: !5, size: 32)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "nal", scope: !1528, file: !1515, line: 264, baseType: !1532, size: 1536, offset: 64)
!1532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1533, size: 1536, elements: !232)
!1533 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_nal_t", file: !34, line: 399, baseType: !1534)
!1534 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 391, size: 192, elements: !1535)
!1535 = !{!1536, !1537, !1538, !1539}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref_idc", scope: !1534, file: !34, line: 393, baseType: !5, size: 32)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !1534, file: !34, line: 394, baseType: !5, size: 32, offset: 32)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "i_payload", scope: !1534, file: !34, line: 397, baseType: !5, size: 32, offset: 64)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "p_payload", scope: !1534, file: !34, line: 398, baseType: !212, size: 64, offset: 128)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitstream", scope: !1528, file: !1515, line: 265, baseType: !5, size: 32, offset: 1600)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "p_bitstream", scope: !1528, file: !1515, line: 266, baseType: !212, size: 64, offset: 1664)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "bs", scope: !1528, file: !1515, line: 267, baseType: !1543, size: 320, offset: 1728)
!1543 = !DIDerivedType(tag: DW_TAG_typedef, name: "bs_t", file: !1544, line: 49, baseType: !1545)
!1544 = !DIFile(filename: "./common/bs.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "2f46b0964798cffcc7898517b4d9922e")
!1545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bs_s", file: !1544, line: 40, size: 320, elements: !1546)
!1546 = !{!1547, !1548, !1549, !1550, !1553, !1554}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "p_start", scope: !1545, file: !1544, line: 42, baseType: !212, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1545, file: !1544, line: 43, baseType: !212, size: 64, offset: 64)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "p_end", scope: !1545, file: !1544, line: 44, baseType: !212, size: 64, offset: 128)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bits", scope: !1545, file: !1544, line: 46, baseType: !1551, size: 64, offset: 192)
!1551 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !1552, line: 87, baseType: !14)
!1552 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "i_left", scope: !1545, file: !1544, line: 47, baseType: !5, size: 32, offset: 256)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "i_bits_encoded", scope: !1545, file: !1544, line: 48, baseType: !5, size: 32, offset: 288)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_size", scope: !1528, file: !1515, line: 268, baseType: !5, size: 32, offset: 2048)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame", scope: !1514, file: !1515, line: 274, baseType: !5, size: 32, offset: 15360)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_offset", scope: !1514, file: !1515, line: 276, baseType: !5, size: 32, offset: 15392)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !1514, file: !1515, line: 277, baseType: !5, size: 32, offset: 15424)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_msb", scope: !1514, file: !1515, line: 278, baseType: !5, size: 32, offset: 15456)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_lsb", scope: !1514, file: !1515, line: 279, baseType: !5, size: 32, offset: 15488)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !1514, file: !1515, line: 280, baseType: !5, size: 32, offset: 15520)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "i_thread_num", scope: !1514, file: !1515, line: 282, baseType: !5, size: 32, offset: 15552)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_type", scope: !1514, file: !1515, line: 283, baseType: !5, size: 32, offset: 15584)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_ref_idc", scope: !1514, file: !1515, line: 284, baseType: !5, size: 32, offset: 15616)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "sps_array", scope: !1514, file: !1515, line: 287, baseType: !1566, size: 9920, offset: 15648)
!1566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1567, size: 9920, elements: !510)
!1567 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_sps_t", file: !1568, line: 133, baseType: !1569)
!1568 = !DIFile(filename: "./common/set.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "06164d1fd824dd844d17e97dd39e9ac3")
!1569 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1568, line: 52, size: 9920, elements: !1570)
!1570 = !{!1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1603, !1604, !1634}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "i_id", scope: !1569, file: !1568, line: 54, baseType: !5, size: 32)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "i_profile_idc", scope: !1569, file: !1568, line: 56, baseType: !5, size: 32, offset: 32)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !1569, file: !1568, line: 57, baseType: !5, size: 32, offset: 64)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set0", scope: !1569, file: !1568, line: 59, baseType: !5, size: 32, offset: 96)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set1", scope: !1569, file: !1568, line: 60, baseType: !5, size: 32, offset: 128)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set2", scope: !1569, file: !1568, line: 61, baseType: !5, size: 32, offset: 160)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_frame_num", scope: !1569, file: !1568, line: 63, baseType: !5, size: 32, offset: 192)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_type", scope: !1569, file: !1568, line: 65, baseType: !5, size: 32, offset: 224)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_poc_lsb", scope: !1569, file: !1568, line: 67, baseType: !5, size: 32, offset: 256)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "b_delta_pic_order_always_zero", scope: !1569, file: !1568, line: 69, baseType: !5, size: 32, offset: 288)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_non_ref_pic", scope: !1569, file: !1568, line: 70, baseType: !5, size: 32, offset: 320)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_top_to_bottom_field", scope: !1569, file: !1568, line: 71, baseType: !5, size: 32, offset: 352)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_frames_in_poc_cycle", scope: !1569, file: !1568, line: 72, baseType: !5, size: 32, offset: 384)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_ref_frame", scope: !1569, file: !1568, line: 73, baseType: !1585, size: 8192, offset: 416)
!1585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 8192, elements: !1586)
!1586 = !{!1587}
!1587 = !DISubrange(count: 256)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_frames", scope: !1569, file: !1568, line: 75, baseType: !5, size: 32, offset: 8608)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "b_gaps_in_frame_num_value_allowed", scope: !1569, file: !1568, line: 76, baseType: !5, size: 32, offset: 8640)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_width", scope: !1569, file: !1568, line: 77, baseType: !5, size: 32, offset: 8672)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_height", scope: !1569, file: !1568, line: 78, baseType: !5, size: 32, offset: 8704)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "b_frame_mbs_only", scope: !1569, file: !1568, line: 79, baseType: !5, size: 32, offset: 8736)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "b_mb_adaptive_frame_field", scope: !1569, file: !1568, line: 80, baseType: !5, size: 32, offset: 8768)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct8x8_inference", scope: !1569, file: !1568, line: 81, baseType: !5, size: 32, offset: 8800)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "b_crop", scope: !1569, file: !1568, line: 83, baseType: !5, size: 32, offset: 8832)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "crop", scope: !1569, file: !1568, line: 90, baseType: !1597, size: 128, offset: 8864)
!1597 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1569, file: !1568, line: 84, size: 128, elements: !1598)
!1598 = !{!1599, !1600, !1601, !1602}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "i_left", scope: !1597, file: !1568, line: 86, baseType: !5, size: 32)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "i_right", scope: !1597, file: !1568, line: 87, baseType: !5, size: 32, offset: 32)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "i_top", scope: !1597, file: !1568, line: 88, baseType: !5, size: 32, offset: 64)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "i_bottom", scope: !1597, file: !1568, line: 89, baseType: !5, size: 32, offset: 96)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "b_vui", scope: !1569, file: !1568, line: 92, baseType: !5, size: 32, offset: 8992)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !1569, file: !1568, line: 129, baseType: !1605, size: 864, offset: 9024)
!1605 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1569, file: !1568, line: 93, size: 864, elements: !1606)
!1606 = !{!1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "b_aspect_ratio_info_present", scope: !1605, file: !1568, line: 95, baseType: !5, size: 32)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !1605, file: !1568, line: 96, baseType: !5, size: 32, offset: 32)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !1605, file: !1568, line: 97, baseType: !5, size: 32, offset: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "b_overscan_info_present", scope: !1605, file: !1568, line: 99, baseType: !5, size: 32, offset: 96)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "b_overscan_info", scope: !1605, file: !1568, line: 100, baseType: !5, size: 32, offset: 128)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "b_signal_type_present", scope: !1605, file: !1568, line: 102, baseType: !5, size: 32, offset: 160)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !1605, file: !1568, line: 103, baseType: !5, size: 32, offset: 192)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !1605, file: !1568, line: 104, baseType: !5, size: 32, offset: 224)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "b_color_description_present", scope: !1605, file: !1568, line: 105, baseType: !5, size: 32, offset: 256)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !1605, file: !1568, line: 106, baseType: !5, size: 32, offset: 288)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !1605, file: !1568, line: 107, baseType: !5, size: 32, offset: 320)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !1605, file: !1568, line: 108, baseType: !5, size: 32, offset: 352)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_loc_info_present", scope: !1605, file: !1568, line: 110, baseType: !5, size: 32, offset: 384)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc_top", scope: !1605, file: !1568, line: 111, baseType: !5, size: 32, offset: 416)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc_bottom", scope: !1605, file: !1568, line: 112, baseType: !5, size: 32, offset: 448)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "b_timing_info_present", scope: !1605, file: !1568, line: 114, baseType: !5, size: 32, offset: 480)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_units_in_tick", scope: !1605, file: !1568, line: 115, baseType: !5, size: 32, offset: 512)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "i_time_scale", scope: !1605, file: !1568, line: 116, baseType: !5, size: 32, offset: 544)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "b_fixed_frame_rate", scope: !1605, file: !1568, line: 117, baseType: !5, size: 32, offset: 576)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "b_bitstream_restriction", scope: !1605, file: !1568, line: 119, baseType: !5, size: 32, offset: 608)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "b_motion_vectors_over_pic_boundaries", scope: !1605, file: !1568, line: 120, baseType: !5, size: 32, offset: 640)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_bytes_per_pic_denom", scope: !1605, file: !1568, line: 121, baseType: !5, size: 32, offset: 672)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_bits_per_mb_denom", scope: !1605, file: !1568, line: 122, baseType: !5, size: 32, offset: 704)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_mv_length_horizontal", scope: !1605, file: !1568, line: 123, baseType: !5, size: 32, offset: 736)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_mv_length_vertical", scope: !1605, file: !1568, line: 124, baseType: !5, size: 32, offset: 768)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_reorder_frames", scope: !1605, file: !1568, line: 125, baseType: !5, size: 32, offset: 800)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_dec_frame_buffering", scope: !1605, file: !1568, line: 126, baseType: !5, size: 32, offset: 832)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "b_qpprime_y_zero_transform_bypass", scope: !1569, file: !1568, line: 131, baseType: !5, size: 32, offset: 9888)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !1514, file: !1515, line: 288, baseType: !1636, size: 64, offset: 25600)
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "pps_array", scope: !1514, file: !1515, line: 289, baseType: !1638, size: 960, offset: 25664)
!1638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1639, size: 960, elements: !510)
!1639 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pps_t", file: !1568, line: 165, baseType: !1640)
!1640 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1568, line: 135, size: 960, elements: !1641)
!1641 = !{!1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "i_id", scope: !1640, file: !1568, line: 137, baseType: !5, size: 32)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !1640, file: !1568, line: 138, baseType: !5, size: 32, offset: 32)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !1640, file: !1568, line: 140, baseType: !5, size: 32, offset: 64)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_order", scope: !1640, file: !1568, line: 142, baseType: !5, size: 32, offset: 96)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_slice_groups", scope: !1640, file: !1568, line: 143, baseType: !5, size: 32, offset: 128)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l0_active", scope: !1640, file: !1568, line: 145, baseType: !5, size: 32, offset: 160)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l1_active", scope: !1640, file: !1568, line: 146, baseType: !5, size: 32, offset: 192)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_pred", scope: !1640, file: !1568, line: 148, baseType: !5, size: 32, offset: 224)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !1640, file: !1568, line: 149, baseType: !5, size: 32, offset: 256)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_init_qp", scope: !1640, file: !1568, line: 151, baseType: !5, size: 32, offset: 288)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_init_qs", scope: !1640, file: !1568, line: 152, baseType: !5, size: 32, offset: 320)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_index_offset", scope: !1640, file: !1568, line: 154, baseType: !5, size: 32, offset: 352)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter_control", scope: !1640, file: !1568, line: 156, baseType: !5, size: 32, offset: 384)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "b_constrained_intra_pred", scope: !1640, file: !1568, line: 157, baseType: !5, size: 32, offset: 416)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "b_redundant_pic_cnt", scope: !1640, file: !1568, line: 158, baseType: !5, size: 32, offset: 448)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8_mode", scope: !1640, file: !1568, line: 160, baseType: !5, size: 32, offset: 480)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !1640, file: !1568, line: 162, baseType: !5, size: 32, offset: 512)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_list", scope: !1640, file: !1568, line: 163, baseType: !1660, size: 384, offset: 576)
!1660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1661, size: 384, elements: !286)
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !1514, file: !1515, line: 290, baseType: !1664, size: 64, offset: 26624)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "i_idr_pic_id", scope: !1514, file: !1515, line: 291, baseType: !5, size: 32, offset: 26688)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "dequant4_mf", scope: !1514, file: !1515, line: 294, baseType: !1667, size: 256, offset: 26752)
!1667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1668, size: 256, elements: !208)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 512, elements: !1670)
!1670 = !{!209, !209}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "dequant8_mf", scope: !1514, file: !1515, line: 295, baseType: !1672, size: 128, offset: 27008)
!1672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1673, size: 128, elements: !137)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 2048, elements: !1675)
!1675 = !{!233, !233}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "unquant4_mf", scope: !1514, file: !1515, line: 297, baseType: !1677, size: 256, offset: 27136)
!1677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1678, size: 256, elements: !208)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 512, elements: !83)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "unquant8_mf", scope: !1514, file: !1515, line: 298, baseType: !1681, size: 128, offset: 27392)
!1681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1682, size: 128, elements: !137)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 2048, elements: !90)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "quant4_mf", scope: !1514, file: !1515, line: 300, baseType: !1685, size: 256, offset: 27520)
!1685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1686, size: 256, elements: !208)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1688, size: 256, elements: !83)
!1688 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !80, line: 25, baseType: !1689)
!1689 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !13, line: 40, baseType: !505)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "quant8_mf", scope: !1514, file: !1515, line: 301, baseType: !1691, size: 128, offset: 27776)
!1691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1692, size: 128, elements: !137)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1688, size: 1024, elements: !90)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "quant4_bias", scope: !1514, file: !1515, line: 302, baseType: !1685, size: 256, offset: 27904)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "quant8_bias", scope: !1514, file: !1515, line: 303, baseType: !1691, size: 128, offset: 28160)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_table", scope: !1514, file: !1515, line: 305, baseType: !1661, size: 64, offset: 28288)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "nr_residual_sum", scope: !1514, file: !1515, line: 307, baseType: !1698, size: 4096, align: 128, offset: 28416)
!1698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1699, size: 4096, elements: !1701)
!1699 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !80, line: 26, baseType: !1700)
!1700 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !13, line: 42, baseType: !38)
!1701 = !{!138, !91}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "nr_offset", scope: !1514, file: !1515, line: 308, baseType: !1703, size: 2048, align: 128, offset: 32512)
!1703 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1688, size: 2048, elements: !1701)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "nr_count", scope: !1514, file: !1515, line: 309, baseType: !1705, size: 64, offset: 34560)
!1705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1699, size: 64, elements: !137)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "sh", scope: !1514, file: !1515, line: 312, baseType: !1707, size: 3072, offset: 34624)
!1707 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_slice_header_t", file: !1515, line: 209, baseType: !1708)
!1708 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1515, line: 159, size: 3072, elements: !1709)
!1709 = !{!1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !1708, file: !1515, line: 161, baseType: !1636, size: 64)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !1708, file: !1515, line: 162, baseType: !1664, size: 64, offset: 64)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !1708, file: !1515, line: 164, baseType: !5, size: 32, offset: 128)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "i_first_mb", scope: !1708, file: !1515, line: 165, baseType: !5, size: 32, offset: 160)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_mb", scope: !1708, file: !1515, line: 166, baseType: !5, size: 32, offset: 192)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "i_pps_id", scope: !1708, file: !1515, line: 168, baseType: !5, size: 32, offset: 224)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !1708, file: !1515, line: 170, baseType: !5, size: 32, offset: 256)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "b_mbaff", scope: !1708, file: !1515, line: 172, baseType: !5, size: 32, offset: 288)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "b_field_pic", scope: !1708, file: !1515, line: 173, baseType: !5, size: 32, offset: 320)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "b_bottom_field", scope: !1708, file: !1515, line: 174, baseType: !5, size: 32, offset: 352)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "i_idr_pic_id", scope: !1708, file: !1515, line: 176, baseType: !5, size: 32, offset: 384)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_lsb", scope: !1708, file: !1515, line: 178, baseType: !5, size: 32, offset: 416)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "i_delta_poc_bottom", scope: !1708, file: !1515, line: 179, baseType: !5, size: 32, offset: 448)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "i_delta_poc", scope: !1708, file: !1515, line: 181, baseType: !136, size: 64, offset: 480)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "i_redundant_pic_cnt", scope: !1708, file: !1515, line: 182, baseType: !5, size: 32, offset: 544)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_spatial_mv_pred", scope: !1708, file: !1515, line: 184, baseType: !5, size: 32, offset: 576)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "b_num_ref_idx_override", scope: !1708, file: !1515, line: 186, baseType: !5, size: 32, offset: 608)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l0_active", scope: !1708, file: !1515, line: 187, baseType: !5, size: 32, offset: 640)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l1_active", scope: !1708, file: !1515, line: 188, baseType: !5, size: 32, offset: 672)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_pic_list_reordering_l0", scope: !1708, file: !1515, line: 190, baseType: !5, size: 32, offset: 704)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_pic_list_reordering_l1", scope: !1708, file: !1515, line: 191, baseType: !5, size: 32, offset: 736)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_order", scope: !1708, file: !1515, line: 195, baseType: !1732, size: 2048, offset: 768)
!1732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1733, size: 2048, elements: !1737)
!1733 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1708, file: !1515, line: 192, size: 64, elements: !1734)
!1734 = !{!1735, !1736}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "idc", scope: !1733, file: !1515, line: 193, baseType: !5, size: 32)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1733, file: !1515, line: 194, baseType: !5, size: 32, offset: 32)
!1737 = !{!138, !84}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !1708, file: !1515, line: 197, baseType: !5, size: 32, offset: 2816)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !1708, file: !1515, line: 199, baseType: !5, size: 32, offset: 2848)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_delta", scope: !1708, file: !1515, line: 200, baseType: !5, size: 32, offset: 2880)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "b_sp_for_swidth", scope: !1708, file: !1515, line: 201, baseType: !5, size: 32, offset: 2912)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "i_qs_delta", scope: !1708, file: !1515, line: 202, baseType: !5, size: 32, offset: 2944)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "i_disable_deblocking_filter_idc", scope: !1708, file: !1515, line: 205, baseType: !5, size: 32, offset: 2976)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "i_alpha_c0_offset", scope: !1708, file: !1515, line: 206, baseType: !5, size: 32, offset: 3008)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "i_beta_offset", scope: !1708, file: !1515, line: 207, baseType: !5, size: 32, offset: 3040)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "cabac", scope: !1514, file: !1515, line: 315, baseType: !1747, size: 4096, offset: 37760)
!1747 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_cabac_t", file: !1748, line: 46, baseType: !1749)
!1748 = !DIFile(filename: "./common/cabac.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "fed287ee191b19e61654b41f7c57e583")
!1749 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1748, line: 27, size: 4096, elements: !1750)
!1750 = !{!1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "i_low", scope: !1749, file: !1748, line: 30, baseType: !5, size: 32)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "i_range", scope: !1749, file: !1748, line: 31, baseType: !5, size: 32, offset: 32)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "i_queue", scope: !1749, file: !1748, line: 34, baseType: !5, size: 32, offset: 64)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes_outstanding", scope: !1749, file: !1748, line: 35, baseType: !5, size: 32, offset: 96)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "p_start", scope: !1749, file: !1748, line: 37, baseType: !212, size: 64, offset: 128)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1749, file: !1748, line: 38, baseType: !212, size: 64, offset: 192)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "p_end", scope: !1749, file: !1748, line: 39, baseType: !212, size: 64, offset: 256)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "f8_bits_encoded", scope: !1749, file: !1748, line: 42, baseType: !5, size: 32, align: 128, offset: 384)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1749, file: !1748, line: 45, baseType: !1760, size: 3680, offset: 416)
!1760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 3680, elements: !1761)
!1761 = !{!1762}
!1762 = !DISubrange(count: 460)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "frames", scope: !1514, file: !1515, line: 340, baseType: !1764, size: 31808, offset: 41856)
!1764 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1514, file: !1515, line: 317, size: 31808, elements: !1765)
!1765 = !{!1766, !1896, !1897, !1901, !1902, !1904, !1905, !1906, !1907, !1908, !1909, !1910}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !1764, file: !1515, line: 320, baseType: !1767, size: 4288)
!1767 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1768, size: 4288, elements: !778)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1769 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_frame_t", file: !1770, line: 94, baseType: !1771)
!1770 = !DIFile(filename: "./common/frame.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "3ae200731644fdbac60ac7f8f3f9d2f1")
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1770, line: 31, size: 51648, elements: !1772)
!1772 = !{!1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1785, !1786, !1787, !1788, !1789, !1790, !1792, !1793, !1794, !1796, !1797, !1798, !1802, !1809, !1812, !1814, !1816, !1817, !1819, !1820, !1823, !1824, !1825, !1827, !1829, !1830, !1831, !1832, !1834, !1835, !1836, !1837, !1838, !1839, !1864}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !1771, file: !1770, line: 34, baseType: !5, size: 32)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !1771, file: !1770, line: 35, baseType: !5, size: 32, offset: 32)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "i_qpplus1", scope: !1771, file: !1770, line: 36, baseType: !5, size: 32, offset: 64)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "i_pts", scope: !1771, file: !1770, line: 37, baseType: !10, size: 64, offset: 128)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame", scope: !1771, file: !1770, line: 38, baseType: !5, size: 32, offset: 192)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !1771, file: !1770, line: 39, baseType: !5, size: 32, offset: 224)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "b_kept_as_ref", scope: !1771, file: !1770, line: 40, baseType: !5, size: 32, offset: 256)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_avg_rc", scope: !1771, file: !1770, line: 41, baseType: !133, size: 32, offset: 288)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_avg_aq", scope: !1771, file: !1770, line: 42, baseType: !133, size: 32, offset: 320)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "i_plane", scope: !1771, file: !1770, line: 45, baseType: !5, size: 32, offset: 352)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !1771, file: !1770, line: 46, baseType: !1784, size: 96, offset: 384)
!1784 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 96, elements: !269)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !1771, file: !1770, line: 47, baseType: !1784, size: 96, offset: 480)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines", scope: !1771, file: !1770, line: 48, baseType: !1784, size: 96, offset: 576)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride_lowres", scope: !1771, file: !1770, line: 49, baseType: !5, size: 32, offset: 672)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "i_width_lowres", scope: !1771, file: !1770, line: 50, baseType: !5, size: 32, offset: 704)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_lowres", scope: !1771, file: !1770, line: 51, baseType: !5, size: 32, offset: 736)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !1771, file: !1770, line: 52, baseType: !1791, size: 192, offset: 768)
!1791 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 192, elements: !269)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "filtered", scope: !1771, file: !1770, line: 53, baseType: !211, size: 256, offset: 960)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "lowres", scope: !1771, file: !1770, line: 54, baseType: !211, size: 256, offset: 1216)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "integral", scope: !1771, file: !1770, line: 55, baseType: !1795, size: 64, offset: 1472)
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1771, file: !1770, line: 59, baseType: !211, size: 256, offset: 1536)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_lowres", scope: !1771, file: !1770, line: 60, baseType: !211, size: 256, offset: 1792)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type", scope: !1771, file: !1770, line: 63, baseType: !1799, size: 64, offset: 2048)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !11, line: 24, baseType: !1801)
!1801 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !13, line: 37, baseType: !507)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !1771, file: !1770, line: 64, baseType: !1803, size: 128, offset: 2112)
!1803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1804, size: 128, elements: !137)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!1805 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1806, size: 32, elements: !137)
!1806 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !11, line: 25, baseType: !1807)
!1807 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !13, line: 39, baseType: !1808)
!1808 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_mvs", scope: !1771, file: !1770, line: 65, baseType: !1810, size: 2176, offset: 2240)
!1810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1804, size: 2176, elements: !1811)
!1811 = !{!138, !381}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_mv_costs", scope: !1771, file: !1770, line: 66, baseType: !1813, size: 2176, offset: 4416)
!1813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !564, size: 2176, elements: !1811)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1771, file: !1770, line: 67, baseType: !1815, size: 128, offset: 6592)
!1815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1799, size: 128, elements: !137)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref", scope: !1771, file: !1770, line: 68, baseType: !136, size: 64, offset: 6720)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "ref_poc", scope: !1771, file: !1770, line: 69, baseType: !1818, size: 1024, offset: 6784)
!1818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 1024, elements: !1737)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "inv_ref_poc", scope: !1771, file: !1770, line: 70, baseType: !1679, size: 512, offset: 7808)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "i_cost_est", scope: !1771, file: !1770, line: 75, baseType: !1821, size: 10368, offset: 8320)
!1821 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 10368, elements: !1822)
!1822 = !{!404, !404}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "i_cost_est_aq", scope: !1771, file: !1770, line: 76, baseType: !1821, size: 10368, offset: 18688)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "i_satd", scope: !1771, file: !1770, line: 77, baseType: !5, size: 32, offset: 29056)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_mbs", scope: !1771, file: !1770, line: 78, baseType: !1826, size: 576, offset: 29088)
!1826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 576, elements: !403)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_satds", scope: !1771, file: !1770, line: 79, baseType: !1828, size: 20736, offset: 29696)
!1828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !564, size: 20736, elements: !1822)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_satd", scope: !1771, file: !1770, line: 80, baseType: !564, size: 64, offset: 50432)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_bits", scope: !1771, file: !1770, line: 81, baseType: !564, size: 64, offset: 50496)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_qp", scope: !1771, file: !1770, line: 82, baseType: !564, size: 64, offset: 50560)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_offset", scope: !1771, file: !1770, line: 83, baseType: !1833, size: 64, offset: 50624)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "b_intra_calculated", scope: !1771, file: !1770, line: 84, baseType: !5, size: 32, offset: 50688)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_cost", scope: !1771, file: !1770, line: 85, baseType: !1795, size: 64, offset: 50752)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "i_inv_qscale_factor", scope: !1771, file: !1770, line: 86, baseType: !1795, size: 64, offset: 50816)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_completed", scope: !1771, file: !1770, line: 89, baseType: !5, size: 32, offset: 50880)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "i_reference_count", scope: !1771, file: !1770, line: 90, baseType: !5, size: 32, offset: 50912)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1771, file: !1770, line: 91, baseType: !1840, size: 320, offset: 50944)
!1840 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !1524, line: 72, baseType: !1841)
!1841 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !1524, line: 67, size: 320, elements: !1842)
!1842 = !{!1843, !1862, !1863}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !1841, file: !1524, line: 69, baseType: !1844, size: 320)
!1844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !1845, line: 22, size: 320, elements: !1846)
!1845 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "584baedd80e6041b81caae7f496091c0")
!1846 = !{!1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !1844, file: !1845, line: 24, baseType: !5, size: 32)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1844, file: !1845, line: 25, baseType: !38, size: 32, offset: 32)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !1844, file: !1845, line: 26, baseType: !5, size: 32, offset: 64)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !1844, file: !1845, line: 28, baseType: !38, size: 32, offset: 96)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !1844, file: !1845, line: 32, baseType: !5, size: 32, offset: 128)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !1844, file: !1845, line: 34, baseType: !1808, size: 16, offset: 160)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !1844, file: !1845, line: 35, baseType: !1808, size: 16, offset: 176)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !1844, file: !1845, line: 36, baseType: !1855, size: 128, offset: 192)
!1855 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !1856, line: 55, baseType: !1857)
!1856 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "04c81e86d34dad9c99ad006d32e47a0d")
!1857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !1856, line: 51, size: 128, elements: !1858)
!1858 = !{!1859, !1861}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !1857, file: !1856, line: 53, baseType: !1860, size: 64)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !1857, file: !1856, line: 54, baseType: !1860, size: 64, offset: 64)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !1841, file: !1524, line: 70, baseType: !1158, size: 320)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !1841, file: !1524, line: 71, baseType: !14, size: 64)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "cv", scope: !1771, file: !1770, line: 92, baseType: !1865, size: 384, offset: 51264)
!1865 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_cond_t", file: !1524, line: 80, baseType: !1866)
!1866 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !1524, line: 75, size: 384, elements: !1867)
!1867 = !{!1868, !1890, !1894}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !1866, file: !1524, line: 77, baseType: !1869, size: 384)
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_cond_s", file: !1856, line: 94, size: 384, elements: !1870)
!1870 = !{!1871, !1883, !1884, !1886, !1887, !1888, !1889}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "__wseq", scope: !1869, file: !1856, line: 96, baseType: !1872, size: 64)
!1872 = !DIDerivedType(tag: DW_TAG_typedef, name: "__atomic_wide_counter", file: !1873, line: 33, baseType: !1874)
!1873 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/atomic_wide_counter.h", directory: "", checksumkind: CSK_MD5, checksum: "2708e6e61e266abad2d765ccef838dbe")
!1874 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !1873, line: 25, size: 64, elements: !1875)
!1875 = !{!1876, !1878}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "__value64", scope: !1874, file: !1873, line: 27, baseType: !1877, size: 64)
!1877 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "__value32", scope: !1874, file: !1873, line: 32, baseType: !1879, size: 64)
!1879 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1874, file: !1873, line: 28, size: 64, elements: !1880)
!1880 = !{!1881, !1882}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "__low", scope: !1879, file: !1873, line: 30, baseType: !38, size: 32)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "__high", scope: !1879, file: !1873, line: 31, baseType: !38, size: 32, offset: 32)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_start", scope: !1869, file: !1856, line: 97, baseType: !1872, size: 64, offset: 64)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "__g_refs", scope: !1869, file: !1856, line: 98, baseType: !1885, size: 64, offset: 128)
!1885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 64, elements: !137)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "__g_size", scope: !1869, file: !1856, line: 99, baseType: !1885, size: 64, offset: 192)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_orig_size", scope: !1869, file: !1856, line: 100, baseType: !38, size: 32, offset: 256)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "__wrefs", scope: !1869, file: !1856, line: 101, baseType: !38, size: 32, offset: 288)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "__g_signals", scope: !1869, file: !1856, line: 102, baseType: !1885, size: 64, offset: 320)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !1866, file: !1524, line: 78, baseType: !1891, size: 384)
!1891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 384, elements: !1892)
!1892 = !{!1893}
!1893 = !DISubrange(count: 48)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !1866, file: !1524, line: 79, baseType: !1895, size: 64)
!1895 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1764, file: !1515, line: 322, baseType: !1767, size: 4288, offset: 4288)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !1764, file: !1515, line: 324, baseType: !1898, size: 21760, offset: 8576)
!1898 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1768, size: 21760, elements: !1899)
!1899 = !{!1900}
!1900 = !DISubrange(count: 340)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "last_nonb", scope: !1764, file: !1515, line: 326, baseType: !1768, size: 64, offset: 30336)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !1764, file: !1515, line: 329, baseType: !1903, size: 1152, offset: 30400)
!1903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1768, size: 1152, elements: !403)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_idr", scope: !1764, file: !1515, line: 331, baseType: !5, size: 32, offset: 31552)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "i_input", scope: !1764, file: !1515, line: 333, baseType: !5, size: 32, offset: 31584)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_dpb", scope: !1764, file: !1515, line: 335, baseType: !5, size: 32, offset: 31616)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_ref0", scope: !1764, file: !1515, line: 336, baseType: !5, size: 32, offset: 31648)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_ref1", scope: !1764, file: !1515, line: 337, baseType: !5, size: 32, offset: 31680)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "i_delay", scope: !1764, file: !1515, line: 338, baseType: !5, size: 32, offset: 31712)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "b_have_lowres", scope: !1764, file: !1515, line: 339, baseType: !5, size: 32, offset: 31744)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "fenc", scope: !1514, file: !1515, line: 343, baseType: !1768, size: 64, offset: 73664)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "fdec", scope: !1514, file: !1515, line: 346, baseType: !1768, size: 64, offset: 73728)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref0", scope: !1514, file: !1515, line: 349, baseType: !5, size: 32, offset: 73792)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "fref0", scope: !1514, file: !1515, line: 350, baseType: !1915, size: 1216, offset: 73856)
!1915 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1768, size: 1216, elements: !586)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref1", scope: !1514, file: !1515, line: 351, baseType: !5, size: 32, offset: 75072)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "fref1", scope: !1514, file: !1515, line: 352, baseType: !1915, size: 1216, offset: 75136)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_reorder", scope: !1514, file: !1515, line: 353, baseType: !136, size: 64, offset: 76352)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "dct", scope: !1514, file: !1515, line: 365, baseType: !1920, size: 10624, offset: 76416)
!1920 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1514, file: !1515, line: 358, size: 10624, elements: !1921)
!1921 = !{!1922, !1924, !1927, !1930}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "luma16x16_dc", scope: !1920, file: !1515, line: 360, baseType: !1923, size: 256, align: 128)
!1923 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1806, size: 256, elements: !83)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_dc", scope: !1920, file: !1515, line: 361, baseType: !1925, size: 128, align: 128, offset: 256)
!1925 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1806, size: 128, elements: !1926)
!1926 = !{!138, !209}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "luma8x8", scope: !1920, file: !1515, line: 363, baseType: !1928, size: 4096, align: 128, offset: 384)
!1928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1806, size: 4096, elements: !1929)
!1929 = !{!209, !91}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "luma4x4", scope: !1920, file: !1515, line: 364, baseType: !1931, size: 6144, align: 128, offset: 4480)
!1931 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1806, size: 6144, elements: !1932)
!1932 = !{!23, !84}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "mb", scope: !1514, file: !1515, line: 544, baseType: !1934, size: 80128, offset: 87040)
!1934 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1514, file: !1515, line: 368, size: 80128, elements: !1935)
!1935 = !{!1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1962, !1964, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1974, !1977, !1980, !1981, !1982, !1983, !1984, !1988, !1989, !1990, !1993, !1995, !1996, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2045, !2065, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2076, !2079, !2081}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !1934, file: !1515, line: 370, baseType: !5, size: 32)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_stride", scope: !1934, file: !1515, line: 373, baseType: !5, size: 32, offset: 32)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "i_b8_stride", scope: !1934, file: !1515, line: 374, baseType: !5, size: 32, offset: 64)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "i_b4_stride", scope: !1934, file: !1515, line: 375, baseType: !5, size: 32, offset: 96)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_x", scope: !1934, file: !1515, line: 378, baseType: !5, size: 32, offset: 128)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_y", scope: !1934, file: !1515, line: 379, baseType: !5, size: 32, offset: 160)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_xy", scope: !1934, file: !1515, line: 380, baseType: !5, size: 32, offset: 192)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "i_b8_xy", scope: !1934, file: !1515, line: 381, baseType: !5, size: 32, offset: 224)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "i_b4_xy", scope: !1934, file: !1515, line: 382, baseType: !5, size: 32, offset: 256)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !1934, file: !1515, line: 385, baseType: !5, size: 32, offset: 288)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !1934, file: !1515, line: 386, baseType: !5, size: 32, offset: 320)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !1934, file: !1515, line: 387, baseType: !5, size: 32, offset: 352)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "b_trellis", scope: !1934, file: !1515, line: 388, baseType: !5, size: 32, offset: 384)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "b_noise_reduction", scope: !1934, file: !1515, line: 389, baseType: !5, size: 32, offset: 416)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_rd", scope: !1934, file: !1515, line: 390, baseType: !5, size: 32, offset: 448)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_trellis", scope: !1934, file: !1515, line: 391, baseType: !5, size: 32, offset: 480)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !1934, file: !1515, line: 393, baseType: !5, size: 32, offset: 512)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min", scope: !1934, file: !1515, line: 396, baseType: !136, size: 64, offset: 544)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max", scope: !1934, file: !1515, line: 397, baseType: !136, size: 64, offset: 608)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min_spel", scope: !1934, file: !1515, line: 400, baseType: !136, size: 64, offset: 672)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max_spel", scope: !1934, file: !1515, line: 401, baseType: !136, size: 64, offset: 736)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min_fpel", scope: !1934, file: !1515, line: 403, baseType: !136, size: 64, offset: 800)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max_fpel", scope: !1934, file: !1515, line: 404, baseType: !136, size: 64, offset: 864)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour", scope: !1934, file: !1515, line: 407, baseType: !38, size: 32, offset: 928)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour8", scope: !1934, file: !1515, line: 408, baseType: !1961, size: 128, offset: 960)
!1961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 128, elements: !208)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour4", scope: !1934, file: !1515, line: 409, baseType: !1963, size: 512, offset: 1088)
!1963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 512, elements: !83)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_top", scope: !1934, file: !1515, line: 410, baseType: !5, size: 32, offset: 1600)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_left", scope: !1934, file: !1515, line: 411, baseType: !5, size: 32, offset: 1632)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_topleft", scope: !1934, file: !1515, line: 412, baseType: !5, size: 32, offset: 1664)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_topright", scope: !1934, file: !1515, line: 413, baseType: !5, size: 32, offset: 1696)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_prev_xy", scope: !1934, file: !1515, line: 414, baseType: !5, size: 32, offset: 1728)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_top_xy", scope: !1934, file: !1515, line: 415, baseType: !5, size: 32, offset: 1760)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1934, file: !1515, line: 422, baseType: !1799, size: 64, offset: 1792)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !1934, file: !1515, line: 423, baseType: !1799, size: 64, offset: 1856)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "cbp", scope: !1934, file: !1515, line: 424, baseType: !1973, size: 64, offset: 1920)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "intra4x4_pred_mode", scope: !1934, file: !1515, line: 425, baseType: !1975, size: 64, offset: 1984)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1800, size: 64, elements: !232)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "non_zero_count", scope: !1934, file: !1515, line: 427, baseType: !1978, size: 64, offset: 2048)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 192, elements: !22)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_pred_mode", scope: !1934, file: !1515, line: 428, baseType: !1799, size: 64, offset: 2112)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !1934, file: !1515, line: 429, baseType: !1803, size: 128, offset: 2176)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !1934, file: !1515, line: 430, baseType: !1803, size: 128, offset: 2304)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1934, file: !1515, line: 431, baseType: !1815, size: 128, offset: 2432)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "mvr", scope: !1934, file: !1515, line: 432, baseType: !1985, size: 4096, offset: 2560)
!1985 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1804, size: 4096, elements: !1986)
!1986 = !{!138, !1987}
!1987 = !DISubrange(count: 32)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "skipbp", scope: !1934, file: !1515, line: 433, baseType: !1799, size: 64, offset: 6656)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "mb_transform_size", scope: !1934, file: !1515, line: 434, baseType: !1799, size: 64, offset: 6720)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "intra_border_backup", scope: !1934, file: !1515, line: 435, baseType: !1991, size: 384, offset: 6784)
!1991 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 384, elements: !1992)
!1992 = !{!138, !270}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "nnz_backup", scope: !1934, file: !1515, line: 436, baseType: !1994, size: 64, offset: 7168)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !1934, file: !1515, line: 439, baseType: !5, size: 32, offset: 7232)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "i_partition", scope: !1934, file: !1515, line: 440, baseType: !5, size: 32, offset: 7264)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "i_sub_partition", scope: !1934, file: !1515, line: 441, baseType: !207, size: 128, offset: 7296)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !1934, file: !1515, line: 442, baseType: !5, size: 32, offset: 7424)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_luma", scope: !1934, file: !1515, line: 444, baseType: !5, size: 32, offset: 7456)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_chroma", scope: !1934, file: !1515, line: 445, baseType: !5, size: 32, offset: 7488)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra16x16_pred_mode", scope: !1934, file: !1515, line: 447, baseType: !5, size: 32, offset: 7520)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_pred_mode", scope: !1934, file: !1515, line: 448, baseType: !5, size: 32, offset: 7552)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "i_skip_intra", scope: !1934, file: !1515, line: 454, baseType: !5, size: 32, offset: 7584)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "b_skip_mc", scope: !1934, file: !1515, line: 457, baseType: !5, size: 32, offset: 7616)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "pic", scope: !1934, file: !1515, line: 498, baseType: !2006, size: 57344, offset: 7680)
!2006 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1934, file: !1515, line: 459, size: 57344, elements: !2007)
!2007 = !{!2008, !2012, !2016, !2018, !2019, !2022, !2025, !2026, !2029, !2030, !2031, !2034, !2035, !2036, !2037, !2038, !2039, !2042, !2044}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_buf", scope: !2006, file: !1515, line: 464, baseType: !2009, size: 3072, align: 128)
!2009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 3072, elements: !2010)
!2010 = !{!2011}
!2011 = !DISubrange(count: 384)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "fdec_buf", scope: !2006, file: !1515, line: 465, baseType: !2013, size: 6912, align: 128, offset: 3072)
!2013 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 6912, elements: !2014)
!2014 = !{!2015}
!2015 = !DISubrange(count: 864)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_fdec_buf", scope: !2006, file: !1515, line: 468, baseType: !2017, size: 2048, align: 128, offset: 9984)
!2017 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 2048, elements: !1586)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_fdec_buf", scope: !2006, file: !1515, line: 469, baseType: !2017, size: 2048, align: 128, offset: 12032)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_dct_buf", scope: !2006, file: !1515, line: 470, baseType: !2020, size: 3072, align: 128, offset: 14080)
!2020 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1806, size: 3072, elements: !2021)
!2021 = !{!270, !91}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_dct_buf", scope: !2006, file: !1515, line: 471, baseType: !2023, size: 3840, align: 128, offset: 17152)
!2023 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1806, size: 3840, elements: !2024)
!2024 = !{!331, !84}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_dct8", scope: !2006, file: !1515, line: 474, baseType: !1928, size: 4096, align: 128, offset: 20992)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_dct4", scope: !2006, file: !1515, line: 475, baseType: !2027, size: 4096, align: 128, offset: 25088)
!2027 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1806, size: 4096, elements: !2028)
!2028 = !{!84, !84}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_satd", scope: !2006, file: !1515, line: 478, baseType: !1669, size: 512, offset: 29184)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_satd_sum", scope: !2006, file: !1515, line: 479, baseType: !5, size: 32, offset: 29696)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_sa8d", scope: !2006, file: !1515, line: 480, baseType: !2032, size: 128, offset: 29728)
!2032 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 128, elements: !2033)
!2033 = !{!138, !138}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_sa8d_sum", scope: !2006, file: !1515, line: 481, baseType: !5, size: 32, offset: 29856)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "p_fenc", scope: !2006, file: !1515, line: 484, baseType: !1791, size: 192, offset: 29888)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "p_fenc_plane", scope: !2006, file: !1515, line: 486, baseType: !1791, size: 192, offset: 30080)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "p_fdec", scope: !2006, file: !1515, line: 489, baseType: !1791, size: 192, offset: 30272)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "i_fref", scope: !2006, file: !1515, line: 492, baseType: !136, size: 64, offset: 30464)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "p_fref", scope: !2006, file: !1515, line: 493, baseType: !2040, size: 24576, offset: 30528)
!2040 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 24576, elements: !2041)
!2041 = !{!138, !1987, !287}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "p_integral", scope: !2006, file: !1515, line: 494, baseType: !2043, size: 2048, offset: 55104)
!2043 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1795, size: 2048, elements: !1737)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !2006, file: !1515, line: 497, baseType: !1784, size: 96, offset: 57152)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !1934, file: !1515, line: 526, baseType: !2046, size: 12032, offset: 65024)
!2046 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1934, file: !1515, line: 501, size: 12032, elements: !2047)
!2047 = !{!2048, !2050, !2052, !2055, !2058, !2059, !2060, !2061, !2062, !2063, !2064}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "intra4x4_pred_mode", scope: !2046, file: !1515, line: 504, baseType: !2049, size: 384)
!2049 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1800, size: 384, elements: !1892)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "non_zero_count", scope: !2046, file: !1515, line: 507, baseType: !2051, size: 384, offset: 384)
!2051 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 384, elements: !1892)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2046, file: !1515, line: 510, baseType: !2053, size: 768, align: 32, offset: 768)
!2053 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1800, size: 768, elements: !2054)
!2054 = !{!138, !1893}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !2046, file: !1515, line: 513, baseType: !2056, size: 3072, align: 128, offset: 1536)
!2056 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1806, size: 3072, elements: !2057)
!2057 = !{!138, !1893, !138}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !2046, file: !1515, line: 514, baseType: !2056, size: 3072, align: 64, offset: 4608)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "skip", scope: !2046, file: !1515, line: 517, baseType: !2049, size: 384, align: 32, offset: 7680)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "direct_mv", scope: !2046, file: !1515, line: 519, baseType: !2056, size: 3072, align: 128, offset: 8064)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "direct_ref", scope: !2046, file: !1515, line: 520, baseType: !2053, size: 768, align: 32, offset: 11136)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "pskip_mv", scope: !2046, file: !1515, line: 521, baseType: !1805, size: 32, align: 32, offset: 11904)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_transform_size", scope: !2046, file: !1515, line: 524, baseType: !5, size: 32, offset: 11936)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_interlaced", scope: !2046, file: !1515, line: 525, baseType: !5, size: 32, offset: 11968)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !1934, file: !1515, line: 529, baseType: !5, size: 32, offset: 77056)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp", scope: !1934, file: !1515, line: 530, baseType: !5, size: 32, offset: 77088)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_qp", scope: !1934, file: !1515, line: 531, baseType: !5, size: 32, offset: 77120)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_dqp", scope: !1934, file: !1515, line: 532, baseType: !5, size: 32, offset: 77152)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "b_variable_qp", scope: !1934, file: !1515, line: 533, baseType: !5, size: 32, offset: 77184)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "b_lossless", scope: !1934, file: !1515, line: 534, baseType: !5, size: 32, offset: 77216)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_auto_read", scope: !1934, file: !1515, line: 535, baseType: !5, size: 32, offset: 77248)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_auto_write", scope: !1934, file: !1515, line: 536, baseType: !5, size: 32, offset: 77280)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "dist_scale_factor", scope: !1934, file: !1515, line: 539, baseType: !2074, size: 512, offset: 77312)
!2074 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1806, size: 512, elements: !2075)
!2075 = !{!84, !138}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_weight", scope: !1934, file: !1515, line: 540, baseType: !2077, size: 2048, offset: 77824)
!2077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1806, size: 2048, elements: !2078)
!2078 = !{!1987, !209}
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "map_col_to_list0_buf", scope: !1934, file: !1515, line: 542, baseType: !2080, size: 16, offset: 79872)
!2080 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1800, size: 16, elements: !137)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "map_col_to_list0", scope: !1934, file: !1515, line: 543, baseType: !2082, size: 128, offset: 79888)
!2082 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1800, size: 128, elements: !83)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !1514, file: !1515, line: 547, baseType: !2084, size: 64, offset: 167168)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_ratecontrol_t", file: !1515, line: 248, baseType: !2086)
!2086 = !DICompositeType(tag: DW_TAG_structure_type, name: "x264_ratecontrol_t", file: !1515, line: 248, flags: DIFlagFwdDecl)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !1514, file: !1515, line: 604, baseType: !2088, size: 23936, offset: 167232)
!2088 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1514, file: !1515, line: 550, size: 23936, elements: !2089)
!2089 = !{!2090, !2113, !2115, !2117, !2119, !2120, !2121, !2122, !2123, !2124, !2125, !2126, !2129, !2131, !2133, !2136, !2137}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !2088, file: !1515, line: 579, baseType: !2091, size: 3904)
!2091 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2088, file: !1515, line: 553, size: 3904, elements: !2092)
!2092 = !{!2093, !2094, !2095, !2096, !2098, !2099, !2100, !2101, !2102, !2104, !2106, !2107, !2108, !2109, !2110, !2112}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_bits", scope: !2091, file: !1515, line: 556, baseType: !5, size: 32)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "i_tex_bits", scope: !2091, file: !1515, line: 558, baseType: !5, size: 32, offset: 32)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "i_misc_bits", scope: !2091, file: !1515, line: 560, baseType: !5, size: 32, offset: 64)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !2091, file: !1515, line: 562, baseType: !2097, size: 608, offset: 96)
!2097 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 608, elements: !586)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_i", scope: !2091, file: !1515, line: 563, baseType: !5, size: 32, offset: 704)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_p", scope: !2091, file: !1515, line: 564, baseType: !5, size: 32, offset: 736)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_skip", scope: !2091, file: !1515, line: 565, baseType: !5, size: 32, offset: 768)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_8x8dct", scope: !2091, file: !1515, line: 566, baseType: !136, size: 64, offset: 800)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_ref", scope: !2091, file: !1515, line: 567, baseType: !2103, size: 2048, offset: 864)
!2103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 2048, elements: !1986)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_partition", scope: !2091, file: !1515, line: 568, baseType: !2105, size: 544, offset: 2912)
!2105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 544, elements: !380)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_cost", scope: !2091, file: !1515, line: 571, baseType: !5, size: 32, offset: 3456)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "i_inter_cost", scope: !2091, file: !1515, line: 572, baseType: !5, size: 32, offset: 3488)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "i_mbs_analysed", scope: !2091, file: !1515, line: 573, baseType: !5, size: 32, offset: 3520)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_score", scope: !2091, file: !1515, line: 575, baseType: !136, size: 64, offset: 3552)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "i_ssd", scope: !2091, file: !1515, line: 577, baseType: !2111, size: 192, offset: 3648)
!2111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 192, elements: !269)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "f_ssim", scope: !2091, file: !1515, line: 578, baseType: !15, size: 64, offset: 3840)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_count", scope: !2088, file: !1515, line: 584, baseType: !2114, size: 160, offset: 3904)
!2114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 160, elements: !222)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_size", scope: !2088, file: !1515, line: 585, baseType: !2116, size: 320, offset: 4096)
!2116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 320, elements: !222)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "f_slice_qp", scope: !2088, file: !1515, line: 586, baseType: !2118, size: 320, offset: 4416)
!2118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 320, elements: !222)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "i_consecutive_bframes", scope: !2088, file: !1515, line: 587, baseType: !2105, size: 544, offset: 4736)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "i_ssd_global", scope: !2088, file: !1515, line: 589, baseType: !2116, size: 320, offset: 5312)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_average", scope: !2088, file: !1515, line: 590, baseType: !2118, size: 320, offset: 5632)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_y", scope: !2088, file: !1515, line: 591, baseType: !2118, size: 320, offset: 5952)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_u", scope: !2088, file: !1515, line: 592, baseType: !2118, size: 320, offset: 6272)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_v", scope: !2088, file: !1515, line: 593, baseType: !2118, size: 320, offset: 6592)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "f_ssim_mean_y", scope: !2088, file: !1515, line: 594, baseType: !2118, size: 320, offset: 6912)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !2088, file: !1515, line: 596, baseType: !2127, size: 6080, offset: 7232)
!2127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 6080, elements: !2128)
!2128 = !{!223, !587}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_partition", scope: !2088, file: !1515, line: 597, baseType: !2130, size: 2176, offset: 13312)
!2130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 2176, elements: !1811)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_8x8dct", scope: !2088, file: !1515, line: 598, baseType: !2132, size: 128, offset: 15488)
!2132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 128, elements: !137)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_ref", scope: !2088, file: !1515, line: 599, baseType: !2134, size: 8192, offset: 15616)
!2134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 8192, elements: !2135)
!2135 = !{!138, !138, !1987}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_score", scope: !2088, file: !1515, line: 601, baseType: !136, size: 64, offset: 23808)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_frames", scope: !2088, file: !1515, line: 602, baseType: !136, size: 64, offset: 23872)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "predict_16x16", scope: !1514, file: !1515, line: 607, baseType: !2139, size: 448, offset: 191168)
!2139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2140, size: 448, elements: !248)
!2140 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict_t", file: !2141, line: 27, baseType: !2142)
!2141 = !DIFile(filename: "./common/predict.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "c7827bfe44f4a550b7080533457a8327")
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{null, !212}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8c", scope: !1514, file: !1515, line: 608, baseType: !2139, size: 448, offset: 191616)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8", scope: !1514, file: !1515, line: 609, baseType: !2147, size: 768, offset: 192064)
!2147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2148, size: 768, elements: !355)
!2148 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict8x8_t", file: !2141, line: 28, baseType: !2149)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = !DISubroutineType(types: !2151)
!2151 = !{null, !212, !212}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "predict_4x4", scope: !1514, file: !1515, line: 610, baseType: !2153, size: 768, offset: 192832)
!2153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2140, size: 768, elements: !355)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "pixf", scope: !1514, file: !1515, line: 612, baseType: !2155, size: 8000, offset: 193600)
!2155 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_function_t", file: !2156, line: 103, baseType: !2157)
!2156 = !DIFile(filename: "./common/pixel.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "aba138e44f0e52bc0158be0d182b79c1")
!2157 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2156, line: 63, size: 8000, elements: !2158)
!2158 = !{!2159, !2165, !2166, !2167, !2168, !2170, !2171, !2172, !2173, !2179, !2185, !2186, !2192, !2199, !2204, !2208, !2209, !2210, !2211, !2212, !2217, !2221, !2222, !2223, !2224, !2225}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "sad", scope: !2157, file: !2156, line: 65, baseType: !2160, size: 448)
!2160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2161, size: 448, elements: !248)
!2161 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_t", file: !2156, line: 26, baseType: !2162)
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2163, size: 64)
!2163 = !DISubroutineType(types: !2164)
!2164 = !{!5, !212, !5, !212, !5}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "ssd", scope: !2157, file: !2156, line: 66, baseType: !2160, size: 448, offset: 448)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "satd", scope: !2157, file: !2156, line: 67, baseType: !2160, size: 448, offset: 896)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "ssim", scope: !2157, file: !2156, line: 68, baseType: !2160, size: 448, offset: 1344)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "sa8d", scope: !2157, file: !2156, line: 69, baseType: !2169, size: 256, offset: 1792)
!2169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2161, size: 256, elements: !208)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "mbcmp", scope: !2157, file: !2156, line: 70, baseType: !2160, size: 448, offset: 2048)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "mbcmp_unaligned", scope: !2157, file: !2156, line: 71, baseType: !2160, size: 448, offset: 2496)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp", scope: !2157, file: !2156, line: 72, baseType: !2160, size: 448, offset: 2944)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp_x3", scope: !2157, file: !2156, line: 73, baseType: !2174, size: 448, offset: 3392)
!2174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2175, size: 448, elements: !248)
!2175 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_x3_t", file: !2156, line: 27, baseType: !2176)
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = !DISubroutineType(types: !2178)
!2178 = !{null, !212, !212, !212, !212, !5, !564}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp_x4", scope: !2157, file: !2156, line: 74, baseType: !2180, size: 448, offset: 3840)
!2180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2181, size: 448, elements: !248)
!2181 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_x4_t", file: !2156, line: 28, baseType: !2182)
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2183, size: 64)
!2183 = !DISubroutineType(types: !2184)
!2184 = !{null, !212, !212, !212, !212, !212, !5, !564}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "sad_aligned", scope: !2157, file: !2156, line: 75, baseType: !2160, size: 448, offset: 4288)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !2157, file: !2156, line: 77, baseType: !2187, size: 256, offset: 4736)
!2187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2188, size: 256, elements: !208)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = !DISubroutineType(types: !2190)
!2190 = !{!5, !212, !5, !2191}
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "hadamard_ac", scope: !2157, file: !2156, line: 78, baseType: !2193, size: 256, offset: 4992)
!2193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2194, size: 256, elements: !208)
!2194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2195, size: 64)
!2195 = !DISubroutineType(types: !2196)
!2196 = !{!2197, !212, !5}
!2197 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !80, line: 27, baseType: !2198)
!2198 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !13, line: 45, baseType: !528)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "ssim_4x4x2_core", scope: !2157, file: !2156, line: 80, baseType: !2200, size: 64, offset: 5248)
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{null, !1661, !5, !1661, !5, !2203}
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "ssim_end4", scope: !2157, file: !2156, line: 82, baseType: !2205, size: 64, offset: 5312)
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64)
!2206 = !DISubroutineType(types: !2207)
!2207 = !{!133, !2203, !2203, !5}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "sad_x3", scope: !2157, file: !2156, line: 85, baseType: !2174, size: 448, offset: 5376)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "sad_x4", scope: !2157, file: !2156, line: 86, baseType: !2180, size: 448, offset: 5824)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "satd_x3", scope: !2157, file: !2156, line: 87, baseType: !2174, size: 448, offset: 6272)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "satd_x4", scope: !2157, file: !2156, line: 88, baseType: !2180, size: 448, offset: 6720)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "ads", scope: !2157, file: !2156, line: 92, baseType: !2213, size: 448, offset: 7168)
!2213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2214, size: 448, elements: !248)
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2215, size: 64)
!2215 = !DISubroutineType(types: !2216)
!2216 = !{!5, !564, !1795, !5, !1795, !1973, !5, !5}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_16x16", scope: !2157, file: !2156, line: 97, baseType: !2218, size: 64, offset: 7616)
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2219 = !DISubroutineType(types: !2220)
!2220 = !{null, !212, !212, !564}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_16x16", scope: !2157, file: !2156, line: 98, baseType: !2218, size: 64, offset: 7680)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_16x16", scope: !2157, file: !2156, line: 99, baseType: !2218, size: 64, offset: 7744)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_8x8c", scope: !2157, file: !2156, line: 100, baseType: !2218, size: 64, offset: 7808)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_4x4", scope: !2157, file: !2156, line: 101, baseType: !2218, size: 64, offset: 7872)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sa8d_x3_8x8", scope: !2157, file: !2156, line: 102, baseType: !2218, size: 64, offset: 7936)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "mc", scope: !1514, file: !1515, line: 613, baseType: !2227, size: 1792, offset: 201600)
!2227 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_mc_functions_t", file: !2228, line: 71, baseType: !2229)
!2228 = !DIFile(filename: "./common/mc.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "d49d7420aafa05a86bee506aef111ff0")
!2229 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2228, line: 31, size: 1792, elements: !2230)
!2230 = !{!2231, !2236, !2240, !2244, !2249, !2254, !2255, !2259, !2263, !2264, !2268, !2274, !2278}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "mc_luma", scope: !2229, file: !2228, line: 33, baseType: !2232, size: 64)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2233 = !DISubroutineType(types: !2234)
!2234 = !{null, !212, !5, !2235, !5, !5, !5, !5, !5}
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "get_ref", scope: !2229, file: !2228, line: 38, baseType: !2237, size: 64, offset: 64)
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2238 = !DISubroutineType(types: !2239)
!2239 = !{!212, !212, !564, !2235, !5, !5, !5, !5, !5}
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "mc_chroma", scope: !2229, file: !2228, line: 44, baseType: !2241, size: 64, offset: 128)
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{null, !212, !5, !212, !5, !5, !5, !5, !5}
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2229, file: !2228, line: 48, baseType: !2245, size: 640, offset: 192)
!2245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2246, size: 640, elements: !253)
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2247 = !DISubroutineType(types: !2248)
!2248 = !{null, !212, !5, !212, !5, !212, !5, !5}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !2229, file: !2228, line: 51, baseType: !2250, size: 448, offset: 832)
!2250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2251, size: 448, elements: !248)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2252 = !DISubroutineType(types: !2253)
!2253 = !{null, !212, !5, !212, !5, !5}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "copy_16x16_unaligned", scope: !2229, file: !2228, line: 52, baseType: !2251, size: 64, offset: 1280)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "plane_copy", scope: !2229, file: !2228, line: 54, baseType: !2256, size: 64, offset: 1344)
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = !DISubroutineType(types: !2258)
!2258 = !{null, !212, !5, !212, !5, !5, !5}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "hpel_filter", scope: !2229, file: !2228, line: 57, baseType: !2260, size: 64, offset: 1408)
!2260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2261, size: 64)
!2261 = !DISubroutineType(types: !2262)
!2262 = !{null, !212, !212, !212, !212, !5, !5, !5}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "prefetch_fenc", scope: !2229, file: !2228, line: 61, baseType: !2251, size: 64, offset: 1472)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "prefetch_ref", scope: !2229, file: !2228, line: 64, baseType: !2265, size: 64, offset: 1536)
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2266 = !DISubroutineType(types: !2267)
!2267 = !{null, !212, !5, !5}
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "memcpy_aligned", scope: !2229, file: !2228, line: 66, baseType: !2269, size: 64, offset: 1600)
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!2270 = !DISubroutineType(types: !2271)
!2271 = !{!9, !9, !2272, !526}
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "memzero_aligned", scope: !2229, file: !2228, line: 67, baseType: !2275, size: 64, offset: 1664)
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2276 = !DISubroutineType(types: !2277)
!2277 = !{null, !9, !5}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "frame_init_lowres_core", scope: !2229, file: !2228, line: 69, baseType: !2279, size: 64, offset: 1728)
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2280, size: 64)
!2280 = !DISubroutineType(types: !2281)
!2281 = !{null, !212, !212, !212, !212, !212, !5, !5, !5, !5}
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "dctf", scope: !1514, file: !1515, line: 614, baseType: !2283, size: 768, offset: 203392)
!2283 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_dct_function_t", file: !2284, line: 112, baseType: !2285)
!2284 = !DIFile(filename: "./common/dct.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "eb76275dd7785989f0d8a4ada39e3c74")
!2285 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2284, line: 89, size: 768, elements: !2286)
!2286 = !{!2287, !2293, !2297, !2303, !2307, !2308, !2309, !2315, !2319, !2325, !2329, !2333}
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "sub4x4_dct", scope: !2285, file: !2284, line: 94, baseType: !2288, size: 64)
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2289 = !DISubroutineType(types: !2290)
!2290 = !{null, !2291, !212, !212}
!2291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2292, size: 64)
!2292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1806, size: 64, elements: !208)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "add4x4_idct", scope: !2285, file: !2284, line: 95, baseType: !2294, size: 64, offset: 64)
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64)
!2295 = !DISubroutineType(types: !2296)
!2296 = !{null, !212, !2291}
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct", scope: !2285, file: !2284, line: 97, baseType: !2298, size: 64, offset: 128)
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2299, size: 64)
!2299 = !DISubroutineType(types: !2300)
!2300 = !{null, !2301, !212, !212}
!2301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2302, size: 64)
!2302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1806, size: 256, elements: !1670)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct", scope: !2285, file: !2284, line: 98, baseType: !2304, size: 64, offset: 192)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2305 = !DISubroutineType(types: !2306)
!2306 = !{null, !212, !2301}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "sub16x16_dct", scope: !2285, file: !2284, line: 100, baseType: !2298, size: 64, offset: 256)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct", scope: !2285, file: !2284, line: 101, baseType: !2304, size: 64, offset: 320)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct8", scope: !2285, file: !2284, line: 103, baseType: !2310, size: 64, offset: 384)
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2311 = !DISubroutineType(types: !2312)
!2312 = !{null, !2313, !212, !212}
!2313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2314, size: 64)
!2314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1806, size: 128, elements: !232)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct8", scope: !2285, file: !2284, line: 104, baseType: !2316, size: 64, offset: 448)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2317 = !DISubroutineType(types: !2318)
!2318 = !{null, !212, !2313}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "sub16x16_dct8", scope: !2285, file: !2284, line: 106, baseType: !2320, size: 64, offset: 512)
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2321 = !DISubroutineType(types: !2322)
!2322 = !{null, !2323, !212, !212}
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1806, size: 1024, elements: !1675)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct8", scope: !2285, file: !2284, line: 107, baseType: !2326, size: 64, offset: 576)
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!2327 = !DISubroutineType(types: !2328)
!2328 = !{null, !212, !2323}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "dct4x4dc", scope: !2285, file: !2284, line: 109, baseType: !2330, size: 64, offset: 640)
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = !DISubroutineType(types: !2332)
!2332 = !{null, !2291}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "idct4x4dc", scope: !2285, file: !2284, line: 110, baseType: !2330, size: 64, offset: 704)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "zigzagf", scope: !1514, file: !1515, line: 615, baseType: !2335, size: 320, offset: 204160)
!2335 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zigzag_function_t", file: !2284, line: 122, baseType: !2336)
!2336 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2284, line: 114, size: 320, elements: !2337)
!2337 = !{!2338, !2342, !2346, !2350, !2351}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "scan_8x8", scope: !2336, file: !2284, line: 116, baseType: !2339, size: 64)
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2340, size: 64)
!2340 = !DISubroutineType(types: !2341)
!2341 = !{null, !1973, !2313}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "scan_4x4", scope: !2336, file: !2284, line: 117, baseType: !2343, size: 64, offset: 64)
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2344, size: 64)
!2344 = !DISubroutineType(types: !2345)
!2345 = !{null, !1973, !2291}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "sub_8x8", scope: !2336, file: !2284, line: 118, baseType: !2347, size: 64, offset: 128)
!2347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2348, size: 64)
!2348 = !DISubroutineType(types: !2349)
!2349 = !{null, !1973, !1661, !212}
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "sub_4x4", scope: !2336, file: !2284, line: 119, baseType: !2347, size: 64, offset: 192)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "interleave_8x8_cavlc", scope: !2336, file: !2284, line: 120, baseType: !2352, size: 64, offset: 256)
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = !DISubroutineType(types: !2354)
!2354 = !{null, !1973, !1973}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "quantf", scope: !1514, file: !1515, line: 616, baseType: !2356, size: 1088, offset: 204480)
!2356 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_quant_function_t", file: !2357, line: 43, baseType: !2358)
!2357 = !DIFile(filename: "./common/quant.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "fe7c19d3e69b65b38e52c43c47235f27")
!2358 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2357, line: 26, size: 1088, elements: !2359)
!2359 = !{!2360, !2364, !2368, !2372, !2376, !2380, !2384, !2385, !2389, !2393, !2394, !2395}
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "quant_8x8", scope: !2358, file: !2357, line: 28, baseType: !2361, size: 64)
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2362 = !DISubroutineType(types: !2363)
!2363 = !{null, !2313, !1795, !1795}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "quant_4x4", scope: !2358, file: !2357, line: 29, baseType: !2365, size: 64, offset: 64)
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2366 = !DISubroutineType(types: !2367)
!2367 = !{null, !2291, !1795, !1795}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "quant_4x4_dc", scope: !2358, file: !2357, line: 30, baseType: !2369, size: 64, offset: 128)
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2370 = !DISubroutineType(types: !2371)
!2371 = !{null, !2291, !5, !5}
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "quant_2x2_dc", scope: !2358, file: !2357, line: 31, baseType: !2373, size: 64, offset: 192)
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2374 = !DISubroutineType(types: !2375)
!2375 = !{null, !1804, !5, !5}
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_8x8", scope: !2358, file: !2357, line: 33, baseType: !2377, size: 64, offset: 256)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = !DISubroutineType(types: !2379)
!2379 = !{null, !2313, !1673, !5}
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_4x4", scope: !2358, file: !2357, line: 34, baseType: !2381, size: 64, offset: 320)
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{null, !2291, !1668, !5}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_4x4_dc", scope: !2358, file: !2357, line: 35, baseType: !2381, size: 64, offset: 384)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "denoise_dct", scope: !2358, file: !2357, line: 37, baseType: !2386, size: 64, offset: 448)
!2386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2387, size: 64)
!2387 = !DISubroutineType(types: !2388)
!2388 = !{null, !1973, !2191, !1795, !5}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score15", scope: !2358, file: !2357, line: 39, baseType: !2390, size: 64, offset: 512)
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2391 = !DISubroutineType(types: !2392)
!2392 = !{!5, !1973}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score16", scope: !2358, file: !2357, line: 40, baseType: !2390, size: 64, offset: 576)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score64", scope: !2358, file: !2357, line: 41, baseType: !2390, size: 64, offset: 640)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_last", scope: !2358, file: !2357, line: 42, baseType: !2396, size: 384, offset: 704)
!2396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2390, size: 384, elements: !286)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "loopf", scope: !1514, file: !1515, line: 617, baseType: !2398, size: 512, offset: 205568)
!2398 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_function_t", file: !1770, line: 108, baseType: !2399)
!2399 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1770, line: 98, size: 512, elements: !2400)
!2400 = !{!2401, !2406, !2407, !2408, !2409, !2414, !2415, !2416}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_v_luma", scope: !2399, file: !1770, line: 100, baseType: !2402, size: 64)
!2402 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_inter_t", file: !1770, line: 96, baseType: !2403)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = !DISubroutineType(types: !2405)
!2405 = !{null, !212, !5, !5, !5, !1799}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_h_luma", scope: !2399, file: !1770, line: 101, baseType: !2402, size: 64, offset: 64)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_v_chroma", scope: !2399, file: !1770, line: 102, baseType: !2402, size: 64, offset: 128)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_h_chroma", scope: !2399, file: !1770, line: 103, baseType: !2402, size: 64, offset: 192)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_v_luma_intra", scope: !2399, file: !1770, line: 104, baseType: !2410, size: 64, offset: 256)
!2410 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_intra_t", file: !1770, line: 97, baseType: !2411)
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = !DISubroutineType(types: !2413)
!2413 = !{null, !212, !5, !5, !5}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_h_luma_intra", scope: !2399, file: !1770, line: 105, baseType: !2410, size: 64, offset: 320)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_v_chroma_intra", scope: !2399, file: !1770, line: 106, baseType: !2410, size: 64, offset: 384)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_h_chroma_intra", scope: !2399, file: !1770, line: 107, baseType: !2410, size: 64, offset: 448)
!2417 = !DILocalVariable(name: "pic", scope: !1506, file: !3, line: 813, type: !194)
!2418 = !DILocalVariable(name: "i_frame", scope: !1506, file: !3, line: 815, type: !5)
!2419 = !DILocalVariable(name: "i_frame_total", scope: !1506, file: !3, line: 815, type: !5)
!2420 = !DILocalVariable(name: "i_start", scope: !1506, file: !3, line: 816, type: !10)
!2421 = !DILocalVariable(name: "i_end", scope: !1506, file: !3, line: 816, type: !10)
!2422 = !DILocalVariable(name: "i_file", scope: !1506, file: !3, line: 817, type: !10)
!2423 = !DILocalVariable(name: "i_frame_size", scope: !1506, file: !3, line: 818, type: !5)
!2424 = !DILocalVariable(name: "i_update_interval", scope: !1506, file: !3, line: 819, type: !5)
!2425 = !DILocalVariable(name: "buf", scope: !1506, file: !3, line: 820, type: !2426)
!2426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 1600, elements: !2427)
!2427 = !{!2428}
!2428 = !DISubrange(count: 200)
!2429 = !DILocalVariable(name: "i_elapsed", scope: !2430, file: !3, line: 879, type: !10)
!2430 = distinct !DILexicalBlock(scope: !2431, file: !3, line: 878, column: 9)
!2431 = distinct !DILexicalBlock(scope: !2432, file: !3, line: 877, column: 13)
!2432 = distinct !DILexicalBlock(scope: !2433, file: !3, line: 857, column: 5)
!2433 = distinct !DILexicalBlock(scope: !2434, file: !3, line: 856, column: 5)
!2434 = distinct !DILexicalBlock(scope: !1506, file: !3, line: 856, column: 5)
!2435 = !DILocalVariable(name: "fps", scope: !2430, file: !3, line: 880, type: !15)
!2436 = !DILocalVariable(name: "bitrate", scope: !2430, file: !3, line: 881, type: !15)
!2437 = !DILocalVariable(name: "eta", scope: !2438, file: !3, line: 884, type: !5)
!2438 = distinct !DILexicalBlock(scope: !2439, file: !3, line: 883, column: 13)
!2439 = distinct !DILexicalBlock(scope: !2430, file: !3, line: 882, column: 17)
!2440 = !DILocalVariable(name: "fps", scope: !2441, file: !3, line: 925, type: !15)
!2441 = distinct !DILexicalBlock(scope: !2442, file: !3, line: 924, column: 5)
!2442 = distinct !DILexicalBlock(scope: !1506, file: !3, line: 923, column: 9)
!2443 = !DILocation(line: 0, scope: !1506, inlinedAt: !2444)
!2444 = distinct !DILocation(line: 130, column: 11, scope: !1192)
!2445 = !DILocation(line: 813, column: 5, scope: !1506, inlinedAt: !2444)
!2446 = !DILocation(line: 813, column: 20, scope: !1506, inlinedAt: !2444)
!2447 = !DILocation(line: 820, column: 5, scope: !1506, inlinedAt: !2444)
!2448 = !DILocation(line: 820, column: 13, scope: !1506, inlinedAt: !2444)
!2449 = !DILocation(line: 822, column: 31, scope: !1506, inlinedAt: !2444)
!2450 = !DILocation(line: 822, column: 43, scope: !1506, inlinedAt: !2444)
!2451 = !DILocation(line: 822, column: 21, scope: !1506, inlinedAt: !2444)
!2452 = !DILocation(line: 823, column: 21, scope: !1506, inlinedAt: !2444)
!2453 = !DILocation(line: 823, column: 45, scope: !1506, inlinedAt: !2444)
!2454 = !{!1275, !1221, i64 8}
!2455 = !DILocation(line: 824, column: 27, scope: !1506, inlinedAt: !2444)
!2456 = !DILocation(line: 824, column: 19, scope: !1506, inlinedAt: !2444)
!2457 = !DILocation(line: 825, column: 25, scope: !2458, inlinedAt: !2444)
!2458 = distinct !DILexicalBlock(scope: !1506, file: !3, line: 825, column: 9)
!2459 = !DILocation(line: 0, scope: !2458, inlinedAt: !2444)
!2460 = !DILocation(line: 825, column: 30, scope: !2458, inlinedAt: !2444)
!2461 = !DILocation(line: 828, column: 26, scope: !1506, inlinedAt: !2444)
!2462 = !DILocation(line: 829, column: 25, scope: !1506, inlinedAt: !2444)
!2463 = !DILocation(line: 826, column: 33, scope: !2458, inlinedAt: !2444)
!2464 = !DILocation(line: 825, column: 9, scope: !1506, inlinedAt: !2444)
!2465 = !DILocation(line: 829, column: 67, scope: !1506, inlinedAt: !2444)
!2466 = !DILocalVariable(name: "v", arg: 1, scope: !2467, file: !1515, line: 108, type: !5)
!2467 = distinct !DISubprogram(name: "x264_clip3", scope: !1515, file: !1515, line: 108, type: !2468, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2470)
!2468 = !DISubroutineType(types: !2469)
!2469 = !{!5, !5, !5, !5}
!2470 = !{!2466, !2471, !2472}
!2471 = !DILocalVariable(name: "i_min", arg: 2, scope: !2467, file: !1515, line: 108, type: !5)
!2472 = !DILocalVariable(name: "i_max", arg: 3, scope: !2467, file: !1515, line: 108, type: !5)
!2473 = !DILocation(line: 0, scope: !2467, inlinedAt: !2474)
!2474 = distinct !DILocation(line: 829, column: 41, scope: !1506, inlinedAt: !2444)
!2475 = !DILocation(line: 110, column: 14, scope: !2467, inlinedAt: !2474)
!2476 = !DILocation(line: 831, column: 15, scope: !2477, inlinedAt: !2444)
!2477 = distinct !DILexicalBlock(scope: !1506, file: !3, line: 831, column: 9)
!2478 = !DILocation(line: 831, column: 44, scope: !2477, inlinedAt: !2444)
!2479 = !DILocation(line: 831, column: 9, scope: !1506, inlinedAt: !2444)
!2480 = !DILocation(line: 833, column: 18, scope: !2481, inlinedAt: !2444)
!2481 = distinct !DILexicalBlock(scope: !2477, file: !3, line: 832, column: 5)
!2482 = !DILocation(line: 833, column: 9, scope: !2481, inlinedAt: !2444)
!2483 = !DILocation(line: 834, column: 9, scope: !2481, inlinedAt: !2444)
!2484 = !DILocation(line: 834, column: 30, scope: !2481, inlinedAt: !2444)
!2485 = !DILocation(line: 835, column: 9, scope: !2481, inlinedAt: !2444)
!2486 = !DILocation(line: 838, column: 9, scope: !2487, inlinedAt: !2444)
!2487 = distinct !DILexicalBlock(scope: !1506, file: !3, line: 838, column: 9)
!2488 = !DILocation(line: 838, column: 35, scope: !2487, inlinedAt: !2444)
!2489 = !{ptr @set_param_bsf, ptr @set_param_mkv}
!2490 = !DILocation(line: 838, column: 9, scope: !1506, inlinedAt: !2444)
!2491 = !DILocation(line: 840, column: 18, scope: !2492, inlinedAt: !2444)
!2492 = distinct !DILexicalBlock(scope: !2487, file: !3, line: 839, column: 5)
!2493 = !DILocation(line: 840, column: 9, scope: !2492, inlinedAt: !2444)
!2494 = !DILocation(line: 841, column: 9, scope: !2492, inlinedAt: !2444)
!2495 = !DILocation(line: 841, column: 30, scope: !2492, inlinedAt: !2444)
!2496 = !DILocation(line: 842, column: 9, scope: !2492, inlinedAt: !2444)
!2497 = !DILocation(line: 842, column: 31, scope: !2492, inlinedAt: !2444)
!2498 = !{ptr @close_file_bsf, ptr @close_file_mkv}
!2499 = !DILocation(line: 843, column: 9, scope: !2492, inlinedAt: !2444)
!2500 = !DILocation(line: 847, column: 53, scope: !1506, inlinedAt: !2444)
!2501 = !DILocation(line: 847, column: 69, scope: !1506, inlinedAt: !2444)
!2502 = !DILocation(line: 847, column: 5, scope: !1506, inlinedAt: !2444)
!2503 = !DILocation(line: 849, column: 15, scope: !1506, inlinedAt: !2444)
!2504 = !DILocation(line: 856, column: 35, scope: !2433, inlinedAt: !2444)
!2505 = !DILocation(line: 856, column: 49, scope: !2433, inlinedAt: !2444)
!2506 = !DILocation(line: 858, column: 13, scope: !2507, inlinedAt: !2444)
!2507 = distinct !DILexicalBlock(scope: !2432, file: !3, line: 858, column: 13)
!2508 = !DILocation(line: 858, column: 38, scope: !2507, inlinedAt: !2444)
!2509 = !DILocation(line: 858, column: 58, scope: !2507, inlinedAt: !2444)
!2510 = !DILocation(line: 858, column: 51, scope: !2507, inlinedAt: !2444)
!2511 = !DILocation(line: 858, column: 13, scope: !2432, inlinedAt: !2444)
!2512 = !DILocation(line: 861, column: 47, scope: !2432, inlinedAt: !2444)
!2513 = !{!1263, !1217, i64 72}
!2514 = !DILocation(line: 861, column: 40, scope: !2432, inlinedAt: !2444)
!2515 = !DILocation(line: 861, column: 38, scope: !2432, inlinedAt: !2444)
!2516 = !DILocation(line: 861, column: 19, scope: !2432, inlinedAt: !2444)
!2517 = !{!2518, !2519, i64 8}
!2518 = !{!"", !1217, i64 0, !1217, i64 4, !2519, i64 8, !2520, i64 16}
!2519 = !{!"long", !1218, i64 0}
!2520 = !{!"", !1217, i64 0, !1217, i64 4, !1218, i64 8, !1218, i64 24}
!2521 = !DILocation(line: 863, column: 18, scope: !2522, inlinedAt: !2444)
!2522 = distinct !DILexicalBlock(scope: !2432, file: !3, line: 863, column: 13)
!2523 = !DILocation(line: 863, column: 13, scope: !2522, inlinedAt: !2444)
!2524 = !DILocation(line: 863, column: 13, scope: !2432, inlinedAt: !2444)
!2525 = !DILocation(line: 864, column: 53, scope: !2522, inlinedAt: !2444)
!2526 = !DILocation(line: 864, column: 46, scope: !2522, inlinedAt: !2444)
!2527 = !DILocalVariable(name: "opt", arg: 1, scope: !2528, file: !3, line: 736, type: !468)
!2528 = distinct !DISubprogram(name: "parse_qpfile", scope: !3, file: !3, line: 736, type: !2529, scopeLine: 737, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2531)
!2529 = !DISubroutineType(types: !2530)
!2530 = !{null, !468, !193, !5}
!2531 = !{!2527, !2532, !2533, !2534, !2535, !2536, !2537, !2538}
!2532 = !DILocalVariable(name: "pic", arg: 2, scope: !2528, file: !3, line: 736, type: !193)
!2533 = !DILocalVariable(name: "i_frame", arg: 3, scope: !2528, file: !3, line: 736, type: !5)
!2534 = !DILocalVariable(name: "num", scope: !2528, file: !3, line: 738, type: !5)
!2535 = !DILocalVariable(name: "qp", scope: !2528, file: !3, line: 738, type: !5)
!2536 = !DILocalVariable(name: "ret", scope: !2528, file: !3, line: 738, type: !5)
!2537 = !DILocalVariable(name: "type", scope: !2528, file: !3, line: 739, type: !8)
!2538 = !DILocalVariable(name: "file_pos", scope: !2528, file: !3, line: 740, type: !2197)
!2539 = !DILocation(line: 0, scope: !2528, inlinedAt: !2540)
!2540 = distinct !DILocation(line: 864, column: 13, scope: !2522, inlinedAt: !2444)
!2541 = !DILocation(line: 738, column: 5, scope: !2528, inlinedAt: !2540)
!2542 = !DILocation(line: 738, column: 9, scope: !2528, inlinedAt: !2540)
!2543 = !DILocation(line: 739, column: 5, scope: !2528, inlinedAt: !2540)
!2544 = !DILocation(line: 741, column: 16, scope: !2528, inlinedAt: !2540)
!2545 = !DILocation(line: 741, column: 5, scope: !2528, inlinedAt: !2540)
!2546 = !DILocation(line: 743, column: 32, scope: !2547, inlinedAt: !2540)
!2547 = distinct !DILexicalBlock(scope: !2528, file: !3, line: 742, column: 5)
!2548 = !DILocation(line: 743, column: 20, scope: !2547, inlinedAt: !2540)
!2549 = !DILocation(line: 744, column: 28, scope: !2547, inlinedAt: !2540)
!2550 = !DILocation(line: 744, column: 15, scope: !2547, inlinedAt: !2540)
!2551 = !DILocation(line: 745, column: 7, scope: !2552, inlinedAt: !2540)
!2552 = distinct !DILexicalBlock(scope: !2547, file: !3, line: 745, column: 7)
!2553 = !DILocation(line: 745, column: 11, scope: !2552, inlinedAt: !2540)
!2554 = !DILocation(line: 745, column: 21, scope: !2552, inlinedAt: !2540)
!2555 = !DILocation(line: 747, column: 16, scope: !2556, inlinedAt: !2540)
!2556 = distinct !DILexicalBlock(scope: !2552, file: !3, line: 746, column: 3)
!2557 = !{!2518, !1217, i64 0}
!2558 = !DILocation(line: 748, column: 19, scope: !2556, inlinedAt: !2540)
!2559 = !{!2518, !1217, i64 4}
!2560 = !DILocation(line: 749, column: 16, scope: !2556, inlinedAt: !2540)
!2561 = !DILocation(line: 749, column: 4, scope: !2556, inlinedAt: !2540)
!2562 = !DILocation(line: 750, column: 4, scope: !2556, inlinedAt: !2540)
!2563 = !DILocation(line: 752, column: 17, scope: !2564, inlinedAt: !2540)
!2564 = distinct !DILexicalBlock(scope: !2547, file: !3, line: 752, column: 13)
!2565 = !DILocation(line: 752, column: 13, scope: !2547, inlinedAt: !2540)
!2566 = !DILocation(line: 754, column: 26, scope: !2547, inlinedAt: !2540)
!2567 = !DILocation(line: 754, column: 28, scope: !2547, inlinedAt: !2540)
!2568 = !DILocation(line: 754, column: 24, scope: !2547, inlinedAt: !2540)
!2569 = !DILocation(line: 755, column: 18, scope: !2570, inlinedAt: !2540)
!2570 = distinct !DILexicalBlock(scope: !2547, file: !3, line: 755, column: 18)
!2571 = !DILocation(line: 755, column: 18, scope: !2547, inlinedAt: !2540)
!2572 = !DILocation(line: 756, column: 32, scope: !2573, inlinedAt: !2540)
!2573 = distinct !DILexicalBlock(scope: !2570, file: !3, line: 756, column: 18)
!2574 = !DILocation(line: 757, column: 32, scope: !2575, inlinedAt: !2540)
!2575 = distinct !DILexicalBlock(scope: !2573, file: !3, line: 757, column: 18)
!2576 = !DILocation(line: 758, column: 32, scope: !2577, inlinedAt: !2540)
!2577 = distinct !DILexicalBlock(scope: !2575, file: !3, line: 758, column: 18)
!2578 = !DILocation(line: 759, column: 32, scope: !2579, inlinedAt: !2540)
!2579 = distinct !DILexicalBlock(scope: !2577, file: !3, line: 759, column: 18)
!2580 = !DILocation(line: 0, scope: !2570, inlinedAt: !2540)
!2581 = !DILocation(line: 761, column: 17, scope: !2582, inlinedAt: !2540)
!2582 = distinct !DILexicalBlock(scope: !2547, file: !3, line: 761, column: 13)
!2583 = !DILocation(line: 761, column: 22, scope: !2582, inlinedAt: !2540)
!2584 = !DILocation(line: 763, column: 22, scope: !2585, inlinedAt: !2540)
!2585 = distinct !DILexicalBlock(scope: !2582, file: !3, line: 762, column: 9)
!2586 = !DILocation(line: 763, column: 13, scope: !2585, inlinedAt: !2540)
!2587 = !DILocation(line: 764, column: 26, scope: !2585, inlinedAt: !2540)
!2588 = !DILocation(line: 764, column: 13, scope: !2585, inlinedAt: !2540)
!2589 = !DILocation(line: 765, column: 25, scope: !2585, inlinedAt: !2540)
!2590 = !DILocation(line: 766, column: 25, scope: !2585, inlinedAt: !2540)
!2591 = !DILocation(line: 767, column: 28, scope: !2585, inlinedAt: !2540)
!2592 = !DILocation(line: 768, column: 13, scope: !2585, inlinedAt: !2540)
!2593 = !DILocation(line: 771, column: 1, scope: !2528, inlinedAt: !2540)
!2594 = !DILocation(line: 864, column: 13, scope: !2522, inlinedAt: !2444)
!2595 = !DILocation(line: 868, column: 24, scope: !2596, inlinedAt: !2444)
!2596 = distinct !DILexicalBlock(scope: !2522, file: !3, line: 866, column: 9)
!2597 = !DILocation(line: 869, column: 27, scope: !2596, inlinedAt: !2444)
!2598 = !DILocation(line: 872, column: 41, scope: !2432, inlinedAt: !2444)
!2599 = !DILocation(line: 872, column: 19, scope: !2432, inlinedAt: !2444)
!2600 = !DILocation(line: 872, column: 16, scope: !2432, inlinedAt: !2444)
!2601 = !DILocation(line: 874, column: 16, scope: !2432, inlinedAt: !2444)
!2602 = !DILocation(line: 877, column: 18, scope: !2431, inlinedAt: !2444)
!2603 = !DILocation(line: 877, column: 13, scope: !2431, inlinedAt: !2444)
!2604 = !DILocation(line: 877, column: 29, scope: !2431, inlinedAt: !2444)
!2605 = !DILocation(line: 877, column: 40, scope: !2431, inlinedAt: !2444)
!2606 = !DILocation(line: 877, column: 60, scope: !2431, inlinedAt: !2444)
!2607 = !DILocation(line: 877, column: 13, scope: !2432, inlinedAt: !2444)
!2608 = !DILocation(line: 879, column: 33, scope: !2430, inlinedAt: !2444)
!2609 = !DILocation(line: 879, column: 46, scope: !2430, inlinedAt: !2444)
!2610 = !DILocation(line: 0, scope: !2430, inlinedAt: !2444)
!2611 = !DILocation(line: 880, column: 36, scope: !2430, inlinedAt: !2444)
!2612 = !DILocation(line: 880, column: 26, scope: !2430, inlinedAt: !2444)
!2613 = !DILocation(line: 881, column: 30, scope: !2430, inlinedAt: !2444)
!2614 = !DILocation(line: 881, column: 46, scope: !2430, inlinedAt: !2444)
!2615 = !DILocation(line: 881, column: 59, scope: !2430, inlinedAt: !2444)
!2616 = !{!1263, !1217, i64 68}
!2617 = !DILocation(line: 881, column: 52, scope: !2430, inlinedAt: !2444)
!2618 = !DILocation(line: 881, column: 50, scope: !2430, inlinedAt: !2444)
!2619 = !DILocation(line: 881, column: 89, scope: !2430, inlinedAt: !2444)
!2620 = !DILocation(line: 881, column: 73, scope: !2430, inlinedAt: !2444)
!2621 = !DILocation(line: 881, column: 99, scope: !2430, inlinedAt: !2444)
!2622 = !DILocation(line: 881, column: 109, scope: !2430, inlinedAt: !2444)
!2623 = !DILocation(line: 881, column: 69, scope: !2430, inlinedAt: !2444)
!2624 = !DILocation(line: 882, column: 17, scope: !2430, inlinedAt: !2444)
!2625 = !DILocation(line: 884, column: 54, scope: !2438, inlinedAt: !2444)
!2626 = !DILocation(line: 884, column: 37, scope: !2438, inlinedAt: !2444)
!2627 = !DILocation(line: 884, column: 68, scope: !2438, inlinedAt: !2444)
!2628 = !DILocation(line: 884, column: 85, scope: !2438, inlinedAt: !2444)
!2629 = !DILocation(line: 884, column: 65, scope: !2438, inlinedAt: !2444)
!2630 = !DILocation(line: 884, column: 27, scope: !2438, inlinedAt: !2444)
!2631 = !DILocation(line: 0, scope: !2438, inlinedAt: !2444)
!2632 = !DILocation(line: 886, column: 31, scope: !2438, inlinedAt: !2444)
!2633 = !DILocation(line: 887, column: 29, scope: !2438, inlinedAt: !2444)
!2634 = !DILocation(line: 887, column: 40, scope: !2438, inlinedAt: !2444)
!2635 = !DILocation(line: 887, column: 44, scope: !2438, inlinedAt: !2444)
!2636 = !DILocation(line: 887, column: 52, scope: !2438, inlinedAt: !2444)
!2637 = !DILocation(line: 885, column: 17, scope: !2438, inlinedAt: !2444)
!2638 = !DILocation(line: 888, column: 13, scope: !2438, inlinedAt: !2444)
!2639 = !DILocation(line: 891, column: 17, scope: !2640, inlinedAt: !2444)
!2640 = distinct !DILexicalBlock(scope: !2439, file: !3, line: 890, column: 13)
!2641 = !DILocation(line: 893, column: 22, scope: !2430, inlinedAt: !2444)
!2642 = !DILocation(line: 893, column: 13, scope: !2430, inlinedAt: !2444)
!2643 = !DILocation(line: 895, column: 21, scope: !2430, inlinedAt: !2444)
!2644 = !DILocation(line: 895, column: 13, scope: !2430, inlinedAt: !2444)
!2645 = !DILocation(line: 896, column: 9, scope: !2430, inlinedAt: !2444)
!2646 = distinct !{!2646, !2647, !2648, !1366}
!2647 = !DILocation(line: 856, column: 5, scope: !2434, inlinedAt: !2444)
!2648 = !DILocation(line: 897, column: 5, scope: !2434, inlinedAt: !2444)
!2649 = !DILocation(line: 0, scope: !2432, inlinedAt: !2444)
!2650 = !DILocation(line: 899, column: 5, scope: !1506, inlinedAt: !2444)
!2651 = !DILocation(line: 0, scope: !2434, inlinedAt: !2444)
!2652 = !DILocation(line: 901, column: 46, scope: !2653, inlinedAt: !2444)
!2653 = distinct !DILexicalBlock(scope: !1506, file: !3, line: 899, column: 8)
!2654 = !DILocation(line: 901, column: 24, scope: !2653, inlinedAt: !2444)
!2655 = !DILocation(line: 901, column: 9, scope: !2653, inlinedAt: !2444)
!2656 = !DILocation(line: 900, column: 16, scope: !2653, inlinedAt: !2444)
!2657 = !DILocation(line: 902, column: 5, scope: !2653, inlinedAt: !2444)
!2658 = distinct !{!2658, !2650, !2659, !1366}
!2659 = !DILocation(line: 902, column: 27, scope: !1506, inlinedAt: !2444)
!2660 = !DILocation(line: 908, column: 13, scope: !1506, inlinedAt: !2444)
!2661 = !DILocation(line: 909, column: 5, scope: !1506, inlinedAt: !2444)
!2662 = !DILocation(line: 911, column: 14, scope: !2663, inlinedAt: !2444)
!2663 = distinct !DILexicalBlock(scope: !1506, file: !3, line: 911, column: 9)
!2664 = !DILocation(line: 911, column: 9, scope: !2663, inlinedAt: !2444)
!2665 = !DILocation(line: 911, column: 9, scope: !1506, inlinedAt: !2444)
!2666 = !DILocation(line: 912, column: 18, scope: !2663, inlinedAt: !2444)
!2667 = !DILocation(line: 912, column: 9, scope: !2663, inlinedAt: !2444)
!2668 = !DILocation(line: 913, column: 5, scope: !1506, inlinedAt: !2444)
!2669 = !DILocation(line: 914, column: 16, scope: !1506, inlinedAt: !2444)
!2670 = !DILocation(line: 914, column: 5, scope: !1506, inlinedAt: !2444)
!2671 = !DILocation(line: 915, column: 14, scope: !1506, inlinedAt: !2444)
!2672 = !DILocation(line: 915, column: 5, scope: !1506, inlinedAt: !2444)
!2673 = !DILocation(line: 917, column: 9, scope: !2674, inlinedAt: !2444)
!2674 = distinct !DILexicalBlock(scope: !1506, file: !3, line: 917, column: 9)
!2675 = !DILocation(line: 917, column: 9, scope: !1506, inlinedAt: !2444)
!2676 = !DILocation(line: 918, column: 18, scope: !2674, inlinedAt: !2444)
!2677 = !DILocation(line: 918, column: 62, scope: !2674, inlinedAt: !2444)
!2678 = !DILocation(line: 918, column: 69, scope: !2674, inlinedAt: !2444)
!2679 = !DILocation(line: 918, column: 9, scope: !2674, inlinedAt: !2444)
!2680 = !DILocation(line: 920, column: 5, scope: !1506, inlinedAt: !2444)
!2681 = !DILocation(line: 920, column: 26, scope: !1506, inlinedAt: !2444)
!2682 = !DILocation(line: 921, column: 5, scope: !1506, inlinedAt: !2444)
!2683 = !DILocation(line: 921, column: 27, scope: !1506, inlinedAt: !2444)
!2684 = !DILocation(line: 923, column: 17, scope: !2442, inlinedAt: !2444)
!2685 = !DILocation(line: 923, column: 9, scope: !1506, inlinedAt: !2444)
!2686 = !DILocation(line: 925, column: 22, scope: !2441, inlinedAt: !2444)
!2687 = !DILocation(line: 925, column: 38, scope: !2441, inlinedAt: !2444)
!2688 = !DILocation(line: 926, column: 38, scope: !2441, inlinedAt: !2444)
!2689 = !DILocation(line: 926, column: 22, scope: !2441, inlinedAt: !2444)
!2690 = !DILocation(line: 925, column: 56, scope: !2441, inlinedAt: !2444)
!2691 = !DILocation(line: 0, scope: !2441, inlinedAt: !2444)
!2692 = !DILocation(line: 928, column: 18, scope: !2441, inlinedAt: !2444)
!2693 = !DILocation(line: 929, column: 18, scope: !2441, inlinedAt: !2444)
!2694 = !DILocation(line: 929, column: 47, scope: !2441, inlinedAt: !2444)
!2695 = !DILocation(line: 929, column: 40, scope: !2441, inlinedAt: !2444)
!2696 = !DILocation(line: 930, column: 46, scope: !2441, inlinedAt: !2444)
!2697 = !DILocation(line: 929, column: 34, scope: !2441, inlinedAt: !2444)
!2698 = !DILocation(line: 929, column: 38, scope: !2441, inlinedAt: !2444)
!2699 = !DILocation(line: 929, column: 57, scope: !2441, inlinedAt: !2444)
!2700 = !DILocation(line: 928, column: 9, scope: !2441, inlinedAt: !2444)
!2701 = !DILocation(line: 931, column: 5, scope: !2441, inlinedAt: !2444)
!2702 = !DILocation(line: 934, column: 1, scope: !1506, inlinedAt: !2444)
!2703 = !DILocation(line: 141, column: 5, scope: !1192)
!2704 = !DILocation(line: 142, column: 1, scope: !1192)
!2705 = !DISubprogram(name: "printf", scope: !2706, file: !2706, line: 356, type: !2707, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2710)
!2706 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!2707 = !DISubroutineType(types: !2708)
!2708 = !{!5, !2709, null}
!2709 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !97)
!2710 = !{}
!2711 = !DISubprogram(name: "fflush", scope: !2706, file: !2706, line: 230, type: !2712, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2710)
!2712 = !DISubroutineType(types: !2713)
!2713 = !{!5, !477}
!2714 = !DISubprogram(name: "x264_param_default", scope: !34, file: !34, line: 317, type: !2715, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2710)
!2715 = !DISubroutineType(types: !2716)
!2716 = !{null, !32}
!2717 = !DISubprogram(name: "signal", scope: !2718, file: !2718, line: 88, type: !2719, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2710)
!2718 = !DIFile(filename: "/usr/include/signal.h", directory: "", checksumkind: CSK_MD5, checksum: "331e107bf774bb600ec675d0db0b92ce")
!2719 = !DISubroutineType(types: !2720)
!2720 = !{!2721, !5, !2721}
!2721 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2718, line: 72, baseType: !2722)
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = !DISubroutineType(types: !2724)
!2724 = !{null, !5}
!2725 = distinct !DISubprogram(name: "SigIntHandler", scope: !3, file: !3, line: 56, type: !2723, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2726)
!2726 = !{!2727}
!2727 = !DILocalVariable(name: "a", arg: 1, scope: !2725, file: !3, line: 56, type: !5)
!2728 = !DILocation(line: 0, scope: !2725)
!2729 = !DILocation(line: 60, column: 14, scope: !2725)
!2730 = !DILocation(line: 61, column: 1, scope: !2725)
!2731 = !DISubprogram(name: "exit", scope: !1253, file: !1253, line: 624, type: !2723, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !2710)
!2732 = !DISubprogram(name: "getopt_long", scope: !559, file: !559, line: 66, type: !2733, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2710)
!2733 = !DISubroutineType(types: !2734)
!2734 = !{!5, !5, !2735, !97, !2737, !564}
!2735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2736, size: 64)
!2736 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2738, size: 64)
!2738 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !558)
!2739 = distinct !DISubprogram(name: "Help", scope: !3, file: !3, line: 153, type: !2740, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2742)
!2740 = !DISubroutineType(types: !2741)
!2741 = !{null, !32, !5}
!2742 = !{!2743, !2744}
!2743 = !DILocalVariable(name: "defaults", arg: 1, scope: !2739, file: !3, line: 153, type: !32)
!2744 = !DILocalVariable(name: "b_longhelp", arg: 2, scope: !2739, file: !3, line: 153, type: !5)
!2745 = !DILocation(line: 0, scope: !2739)
!2746 = !DILocation(line: 157, column: 5, scope: !2739)
!2747 = !DILocation(line: 185, column: 5, scope: !2739)
!2748 = !DILocation(line: 186, column: 5, scope: !2739)
!2749 = !DILocation(line: 187, column: 76, scope: !2739)
!2750 = !{!1263, !1217, i64 80}
!2751 = !DILocation(line: 187, column: 5, scope: !2739)
!2752 = !DILocation(line: 188, column: 5, scope: !2753)
!2753 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 188, column: 5)
!2754 = !DILocation(line: 188, column: 5, scope: !2739)
!2755 = !DILocation(line: 188, column: 76, scope: !2753)
!2756 = !{!1263, !1217, i64 84}
!2757 = !DILocation(line: 189, column: 101, scope: !2758)
!2758 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 189, column: 5)
!2759 = !DILocation(line: 189, column: 5, scope: !2758)
!2760 = !DILocation(line: 190, column: 5, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 190, column: 5)
!2762 = !DILocation(line: 192, column: 94, scope: !2739)
!2763 = !{!1263, !1217, i64 96}
!2764 = !DILocation(line: 192, column: 5, scope: !2739)
!2765 = !DILocation(line: 197, column: 98, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 193, column: 5)
!2767 = !DILocation(line: 193, column: 5, scope: !2766)
!2768 = !DILocation(line: 198, column: 98, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 198, column: 5)
!2770 = !{!1263, !1217, i64 104}
!2771 = !DILocation(line: 198, column: 5, scope: !2769)
!2772 = !DILocation(line: 199, column: 5, scope: !2739)
!2773 = !DILocation(line: 200, column: 5, scope: !2739)
!2774 = !DILocation(line: 201, column: 86, scope: !2739)
!2775 = !{!1263, !1217, i64 76}
!2776 = !DILocation(line: 201, column: 5, scope: !2739)
!2777 = !DILocation(line: 202, column: 5, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 202, column: 5)
!2779 = !DILocation(line: 202, column: 5, scope: !2739)
!2780 = !DILocation(line: 204, column: 50, scope: !2739)
!2781 = !{!1263, !1217, i64 116}
!2782 = !DILocation(line: 204, column: 89, scope: !2739)
!2783 = !{!1263, !1217, i64 120}
!2784 = !DILocation(line: 203, column: 5, scope: !2739)
!2785 = !DILocation(line: 205, column: 5, scope: !2739)
!2786 = !DILocation(line: 206, column: 5, scope: !2739)
!2787 = !DILocation(line: 207, column: 5, scope: !2739)
!2788 = !DILocation(line: 208, column: 5, scope: !2739)
!2789 = !DILocation(line: 209, column: 82, scope: !2739)
!2790 = !{!1263, !1217, i64 476}
!2791 = !DILocation(line: 209, column: 5, scope: !2739)
!2792 = !DILocation(line: 210, column: 5, scope: !2739)
!2793 = !DILocation(line: 211, column: 5, scope: !2739)
!2794 = !DILocation(line: 212, column: 5, scope: !2739)
!2795 = !DILocation(line: 213, column: 111, scope: !2739)
!2796 = !{!1263, !1217, i64 508}
!2797 = !DILocation(line: 213, column: 5, scope: !2739)
!2798 = !DILocation(line: 215, column: 5, scope: !2739)
!2799 = !DILocation(line: 212, column: 89, scope: !2800)
!2800 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 212, column: 5)
!2801 = !{!1263, !1217, i64 504}
!2802 = !DILocation(line: 212, column: 5, scope: !2800)
!2803 = !DILocation(line: 214, column: 93, scope: !2804)
!2804 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 214, column: 5)
!2805 = !{!1263, !1224, i64 512}
!2806 = !DILocation(line: 214, column: 80, scope: !2804)
!2807 = !DILocation(line: 214, column: 5, scope: !2804)
!2808 = !DILocation(line: 215, column: 73, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 215, column: 5)
!2810 = !{!1263, !1217, i64 480}
!2811 = !DILocation(line: 215, column: 5, scope: !2809)
!2812 = !DILocation(line: 216, column: 73, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 216, column: 5)
!2814 = !{!1263, !1217, i64 484}
!2815 = !DILocation(line: 216, column: 5, scope: !2813)
!2816 = !DILocation(line: 217, column: 78, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 217, column: 5)
!2818 = !{!1263, !1217, i64 488}
!2819 = !DILocation(line: 217, column: 5, scope: !2817)
!2820 = !DILocation(line: 218, column: 100, scope: !2739)
!2821 = !{!1263, !1224, i64 500}
!2822 = !DILocation(line: 218, column: 87, scope: !2739)
!2823 = !DILocation(line: 218, column: 5, scope: !2739)
!2824 = !DILocation(line: 219, column: 90, scope: !2739)
!2825 = !{!1263, !1224, i64 516}
!2826 = !DILocation(line: 219, column: 77, scope: !2739)
!2827 = !DILocation(line: 219, column: 5, scope: !2739)
!2828 = !DILocation(line: 220, column: 90, scope: !2739)
!2829 = !{!1263, !1224, i64 520}
!2830 = !DILocation(line: 220, column: 77, scope: !2739)
!2831 = !DILocation(line: 220, column: 5, scope: !2739)
!2832 = !DILocation(line: 221, column: 5, scope: !2739)
!2833 = !DILocation(line: 221, column: 111, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 221, column: 5)
!2835 = !{!1263, !1217, i64 400}
!2836 = !DILocation(line: 221, column: 5, scope: !2834)
!2837 = !DILocation(line: 224, column: 96, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 222, column: 5)
!2839 = !{!1263, !1217, i64 524}
!2840 = !DILocation(line: 222, column: 5, scope: !2838)
!2841 = !DILocation(line: 228, column: 78, scope: !2739)
!2842 = !{!1263, !1224, i64 528}
!2843 = !DILocation(line: 228, column: 65, scope: !2739)
!2844 = !DILocation(line: 225, column: 5, scope: !2739)
!2845 = !DILocation(line: 229, column: 5, scope: !2739)
!2846 = !DILocation(line: 230, column: 5, scope: !2739)
!2847 = !DILocation(line: 234, column: 92, scope: !2739)
!2848 = !{!1263, !1221, i64 536}
!2849 = !DILocation(line: 234, column: 5, scope: !2739)
!2850 = !DILocation(line: 235, column: 109, scope: !2739)
!2851 = !{!1263, !1224, i64 560}
!2852 = !DILocation(line: 235, column: 96, scope: !2739)
!2853 = !DILocation(line: 235, column: 5, scope: !2739)
!2854 = !DILocation(line: 236, column: 5, scope: !2739)
!2855 = !DILocation(line: 236, column: 117, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 236, column: 5)
!2857 = !{!1263, !1224, i64 568}
!2858 = !DILocation(line: 236, column: 104, scope: !2856)
!2859 = !DILocation(line: 236, column: 5, scope: !2856)
!2860 = !DILocation(line: 237, column: 116, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 237, column: 5)
!2862 = !{!1263, !1224, i64 564}
!2863 = !DILocation(line: 237, column: 103, scope: !2861)
!2864 = !DILocation(line: 237, column: 5, scope: !2861)
!2865 = !DILocation(line: 238, column: 5, scope: !2739)
!2866 = !DILocation(line: 239, column: 5, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 239, column: 5)
!2868 = !DILocation(line: 244, column: 5, scope: !2869)
!2869 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 244, column: 5)
!2870 = !DILocation(line: 245, column: 5, scope: !2739)
!2871 = !DILocation(line: 246, column: 5, scope: !2739)
!2872 = !DILocation(line: 247, column: 5, scope: !2739)
!2873 = !DILocation(line: 248, column: 5, scope: !2739)
!2874 = !DILocation(line: 254, column: 99, scope: !2739)
!2875 = !{!1263, !1217, i64 392}
!2876 = !DILocalVariable(name: "table", arg: 1, scope: !2877, file: !3, line: 144, type: !2880)
!2877 = distinct !DISubprogram(name: "strtable_lookup", scope: !3, file: !3, line: 144, type: !2878, scopeLine: 145, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2881)
!2878 = !DISubroutineType(types: !2879)
!2879 = !{!97, !2880, !5}
!2880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!2881 = !{!2876, !2882, !2883}
!2882 = !DILocalVariable(name: "index", arg: 2, scope: !2877, file: !3, line: 144, type: !5)
!2883 = !DILocalVariable(name: "i", scope: !2877, file: !3, line: 146, type: !5)
!2884 = !DILocation(line: 0, scope: !2877, inlinedAt: !2885)
!2885 = distinct !DILocation(line: 254, column: 40, scope: !2739)
!2886 = !DILocation(line: 147, column: 27, scope: !2877, inlinedAt: !2885)
!2887 = !DILocation(line: 147, column: 44, scope: !2877, inlinedAt: !2885)
!2888 = !DILocation(line: 147, column: 14, scope: !2877, inlinedAt: !2885)
!2889 = !DILocation(line: 252, column: 5, scope: !2739)
!2890 = !DILocation(line: 259, column: 58, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 255, column: 5)
!2892 = !{!1263, !1217, i64 396}
!2893 = !DILocation(line: 255, column: 5, scope: !2891)
!2894 = !DILocation(line: 0, scope: !2877, inlinedAt: !2895)
!2895 = distinct !DILocation(line: 254, column: 40, scope: !2739)
!2896 = !DILocation(line: 147, column: 27, scope: !2877, inlinedAt: !2895)
!2897 = !DILocation(line: 147, column: 44, scope: !2877, inlinedAt: !2895)
!2898 = !DILocation(line: 147, column: 14, scope: !2877, inlinedAt: !2895)
!2899 = !DILocation(line: 255, column: 5, scope: !2739)
!2900 = !DILocation(line: 260, column: 5, scope: !2739)
!2901 = !DILocation(line: 262, column: 98, scope: !2739)
!2902 = !{!1263, !1217, i64 404}
!2903 = !DILocation(line: 0, scope: !2877, inlinedAt: !2904)
!2904 = distinct !DILocation(line: 262, column: 40, scope: !2739)
!2905 = !DILocation(line: 147, column: 27, scope: !2877, inlinedAt: !2904)
!2906 = !DILocation(line: 147, column: 44, scope: !2877, inlinedAt: !2904)
!2907 = !DILocation(line: 147, column: 14, scope: !2877, inlinedAt: !2904)
!2908 = !DILocation(line: 261, column: 5, scope: !2739)
!2909 = !DILocation(line: 269, column: 102, scope: !2739)
!2910 = !DILocation(line: 263, column: 5, scope: !2739)
!2911 = !DILocation(line: 263, column: 5, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 263, column: 5)
!2913 = !{!1263, !1217, i64 408}
!2914 = !DILocation(line: 269, column: 5, scope: !2739)
!2915 = !DILocation(line: 270, column: 5, scope: !2916)
!2916 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 270, column: 5)
!2917 = !DILocation(line: 271, column: 5, scope: !2918)
!2918 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 271, column: 5)
!2919 = !DILocation(line: 273, column: 5, scope: !2920)
!2920 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 273, column: 5)
!2921 = !DILocation(line: 268, column: 10, scope: !2912)
!2922 = !DILocation(line: 272, column: 112, scope: !2739)
!2923 = !{!1263, !1217, i64 420}
!2924 = !DILocation(line: 272, column: 5, scope: !2739)
!2925 = !DILocation(line: 0, scope: !2920)
!2926 = !DILocation(line: 285, column: 58, scope: !2739)
!2927 = !{!1263, !1224, i64 448}
!2928 = !DILocation(line: 285, column: 40, scope: !2739)
!2929 = !DILocation(line: 285, column: 86, scope: !2739)
!2930 = !{!1263, !1224, i64 452}
!2931 = !DILocation(line: 285, column: 68, scope: !2739)
!2932 = !DILocation(line: 282, column: 5, scope: !2739)
!2933 = !DILocation(line: 286, column: 5, scope: !2739)
!2934 = !DILocation(line: 287, column: 5, scope: !2739)
!2935 = !DILocation(line: 288, column: 5, scope: !2739)
!2936 = !DILocation(line: 292, column: 101, scope: !2739)
!2937 = !{!1263, !1217, i64 432}
!2938 = !DILocation(line: 289, column: 5, scope: !2739)
!2939 = !DILocation(line: 293, column: 5, scope: !2739)
!2940 = !DILocation(line: 294, column: 5, scope: !2739)
!2941 = !DILocation(line: 295, column: 83, scope: !2739)
!2942 = !{!1263, !1217, i64 444}
!2943 = !DILocation(line: 295, column: 5, scope: !2739)
!2944 = !DILocation(line: 302, column: 5, scope: !2739)
!2945 = !DILocation(line: 304, column: 5, scope: !2739)
!2946 = !DILocation(line: 287, column: 5, scope: !2947)
!2947 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 287, column: 5)
!2948 = !DILocation(line: 296, column: 5, scope: !2949)
!2949 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 296, column: 5)
!2950 = !DILocation(line: 297, column: 120, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 297, column: 5)
!2952 = !DILocation(line: 297, column: 102, scope: !2951)
!2953 = !DILocation(line: 297, column: 5, scope: !2951)
!2954 = !DILocation(line: 298, column: 102, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 298, column: 5)
!2956 = !DILocation(line: 298, column: 5, scope: !2955)
!2957 = !DILocation(line: 299, column: 5, scope: !2958)
!2958 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 299, column: 5)
!2959 = !DILocation(line: 300, column: 5, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 300, column: 5)
!2961 = !DILocation(line: 303, column: 5, scope: !2962)
!2962 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 303, column: 5)
!2963 = !DILocation(line: 304, column: 5, scope: !2964)
!2964 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 304, column: 5)
!2965 = !DILocation(line: 306, column: 5, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 306, column: 5)
!2967 = !DILocation(line: 308, column: 5, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 308, column: 5)
!2969 = !DILocation(line: 310, column: 5, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 310, column: 5)
!2971 = !DILocation(line: 312, column: 5, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 312, column: 5)
!2973 = !DILocation(line: 313, column: 5, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 313, column: 5)
!2975 = !DILocation(line: 314, column: 5, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 314, column: 5)
!2977 = !DILocation(line: 315, column: 5, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 315, column: 5)
!2979 = !DILocation(line: 316, column: 5, scope: !2980)
!2980 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 316, column: 5)
!2981 = !DILocation(line: 319, column: 92, scope: !2982)
!2982 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 317, column: 5)
!2983 = !{!1263, !1217, i64 40}
!2984 = !DILocation(line: 0, scope: !2877, inlinedAt: !2985)
!2985 = distinct !DILocation(line: 319, column: 40, scope: !2982)
!2986 = !DILocation(line: 147, column: 27, scope: !2877, inlinedAt: !2985)
!2987 = !DILocation(line: 147, column: 44, scope: !2877, inlinedAt: !2985)
!2988 = !DILocation(line: 147, column: 14, scope: !2877, inlinedAt: !2985)
!2989 = !DILocation(line: 317, column: 5, scope: !2982)
!2990 = !DILocation(line: 322, column: 93, scope: !2991)
!2991 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 320, column: 5)
!2992 = !{!1263, !1217, i64 44}
!2993 = !DILocation(line: 0, scope: !2877, inlinedAt: !2994)
!2994 = distinct !DILocation(line: 322, column: 40, scope: !2991)
!2995 = !DILocation(line: 147, column: 27, scope: !2877, inlinedAt: !2994)
!2996 = !DILocation(line: 147, column: 44, scope: !2877, inlinedAt: !2994)
!2997 = !DILocation(line: 147, column: 14, scope: !2877, inlinedAt: !2994)
!2998 = !DILocation(line: 320, column: 5, scope: !2991)
!2999 = !DILocation(line: 325, column: 93, scope: !3000)
!3000 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 323, column: 5)
!3001 = !{!1263, !1217, i64 48}
!3002 = !DILocation(line: 0, scope: !2877, inlinedAt: !3003)
!3003 = distinct !DILocation(line: 325, column: 40, scope: !3000)
!3004 = !DILocation(line: 147, column: 27, scope: !2877, inlinedAt: !3003)
!3005 = !DILocation(line: 147, column: 44, scope: !2877, inlinedAt: !3003)
!3006 = !DILocation(line: 147, column: 14, scope: !2877, inlinedAt: !3003)
!3007 = !DILocation(line: 323, column: 5, scope: !3000)
!3008 = !DILocation(line: 329, column: 93, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 326, column: 5)
!3010 = !{!1263, !1217, i64 52}
!3011 = !DILocation(line: 0, scope: !2877, inlinedAt: !3012)
!3012 = distinct !DILocation(line: 329, column: 40, scope: !3009)
!3013 = !DILocation(line: 147, column: 27, scope: !2877, inlinedAt: !3012)
!3014 = !DILocation(line: 147, column: 44, scope: !2877, inlinedAt: !3012)
!3015 = !DILocation(line: 147, column: 14, scope: !2877, inlinedAt: !3012)
!3016 = !DILocation(line: 326, column: 5, scope: !3009)
!3017 = !DILocation(line: 333, column: 92, scope: !3018)
!3018 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 330, column: 5)
!3019 = !{!1263, !1217, i64 56}
!3020 = !DILocation(line: 0, scope: !2877, inlinedAt: !3021)
!3021 = distinct !DILocation(line: 333, column: 40, scope: !3018)
!3022 = !DILocation(line: 147, column: 27, scope: !2877, inlinedAt: !3021)
!3023 = !DILocation(line: 147, column: 44, scope: !2877, inlinedAt: !3021)
!3024 = !DILocation(line: 147, column: 14, scope: !2877, inlinedAt: !3021)
!3025 = !DILocation(line: 330, column: 5, scope: !3018)
!3026 = !DILocation(line: 337, column: 93, scope: !3027)
!3027 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 334, column: 5)
!3028 = !{!1263, !1217, i64 60}
!3029 = !DILocation(line: 0, scope: !2877, inlinedAt: !3030)
!3030 = distinct !DILocation(line: 337, column: 40, scope: !3027)
!3031 = !DILocation(line: 147, column: 27, scope: !2877, inlinedAt: !3030)
!3032 = !DILocation(line: 147, column: 44, scope: !2877, inlinedAt: !3030)
!3033 = !DILocation(line: 147, column: 14, scope: !2877, inlinedAt: !3030)
!3034 = !DILocation(line: 334, column: 5, scope: !3027)
!3035 = !DILocation(line: 339, column: 54, scope: !3036)
!3036 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 338, column: 5)
!3037 = !{!1263, !1217, i64 64}
!3038 = !DILocation(line: 338, column: 5, scope: !3036)
!3039 = !DILocation(line: 340, column: 5, scope: !2739)
!3040 = !DILocation(line: 341, column: 5, scope: !2739)
!3041 = !DILocation(line: 342, column: 5, scope: !2739)
!3042 = !DILocation(line: 343, column: 5, scope: !2739)
!3043 = !DILocation(line: 344, column: 5, scope: !2739)
!3044 = !DILocation(line: 345, column: 5, scope: !2739)
!3045 = !DILocation(line: 346, column: 5, scope: !2739)
!3046 = !DILocation(line: 347, column: 5, scope: !2739)
!3047 = !DILocation(line: 348, column: 5, scope: !2739)
!3048 = !DILocation(line: 349, column: 5, scope: !2739)
!3049 = !DILocation(line: 350, column: 5, scope: !2739)
!3050 = !DILocation(line: 351, column: 5, scope: !2739)
!3051 = !DILocation(line: 352, column: 5, scope: !2739)
!3052 = !DILocation(line: 353, column: 5, scope: !2739)
!3053 = !DILocation(line: 354, column: 5, scope: !2739)
!3054 = !DILocation(line: 355, column: 5, scope: !2739)
!3055 = !DILocation(line: 356, column: 5, scope: !2739)
!3056 = !DILocation(line: 357, column: 5, scope: !2739)
!3057 = !DILocation(line: 357, column: 5, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 357, column: 5)
!3059 = !DILocation(line: 358, column: 5, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 358, column: 5)
!3061 = !DILocation(line: 359, column: 5, scope: !3062)
!3062 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 359, column: 5)
!3063 = !DILocation(line: 360, column: 5, scope: !3064)
!3064 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 360, column: 5)
!3065 = !DILocation(line: 361, column: 5, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 361, column: 5)
!3067 = !DILocation(line: 362, column: 86, scope: !3068)
!3068 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 362, column: 5)
!3069 = !{!1263, !1217, i64 608}
!3070 = !DILocation(line: 362, column: 5, scope: !3068)
!3071 = !DILocation(line: 363, column: 5, scope: !3072)
!3072 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 363, column: 5)
!3073 = !DILocation(line: 364, column: 5, scope: !2739)
!3074 = !DILocation(line: 365, column: 1, scope: !2739)
!3075 = !DISubprogram(name: "strncasecmp", scope: !3076, file: !3076, line: 120, type: !3077, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2710)
!3076 = !DIFile(filename: "/usr/include/strings.h", directory: "", checksumkind: CSK_MD5, checksum: "7444da68ad94ab9f25ff447750787173")
!3077 = !DISubroutineType(types: !3078)
!3078 = !{!5, !97, !97, !526}
!3079 = !DISubprogram(name: "strlen", scope: !3080, file: !3080, line: 407, type: !3081, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2710)
!3080 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!3081 = !DISubroutineType(types: !3082)
!3082 = !{!528, !97}
!3083 = !DISubprogram(name: "fprintf", scope: !2706, file: !2706, line: 350, type: !3084, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2710)
!3084 = !DISubroutineType(types: !3085)
!3085 = !{!5, !3086, !2709, null}
!3086 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !477)
!3087 = !DISubprogram(name: "strcmp", scope: !3080, file: !3080, line: 156, type: !3088, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2710)
!3088 = !DISubroutineType(types: !3089)
!3089 = !{!5, !97, !97}
!3090 = !DISubprogram(name: "fopen", scope: !2706, file: !2706, line: 258, type: !3091, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2710)
!3091 = !DISubroutineType(types: !3092)
!3092 = !{!477, !2709, !2709}
!3093 = !DISubprogram(name: "x264_param_parse", scope: !34, file: !34, line: 328, type: !3094, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2710)
!3094 = !DISubroutineType(types: !3095)
!3095 = !{!5, !32, !97, !97}
!3096 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !2706, file: !2706, line: 439, type: !3097, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2710)
!3097 = !DISubroutineType(types: !3098)
!3098 = !{!5, !2709, !2709, null}
!3099 = !DISubprogram(name: "x264_cpu_num_processors", scope: !3100, file: !3100, line: 25, type: !3101, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2710)
!3100 = !DIFile(filename: "./common/cpu.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "5639400f1915d22bd0aadf074bb04719")
!3101 = !DISubroutineType(types: !3102)
!3102 = !{!5}
!3103 = !DISubprogram(name: "open_file_thread", scope: !31, file: !31, line: 44, type: !27, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2710)
!3104 = !DISubprogram(name: "strtol", scope: !1253, file: !1253, line: 177, type: !3105, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2710)
!3105 = !DISubroutineType(types: !3106)
!3106 = !{!14, !2709, !3107, !5}
!3107 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !6)
!3108 = !DISubprogram(name: "x264_encoder_open", scope: !34, file: !34, line: 417, type: !3109, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2710)
!3109 = !DISubroutineType(types: !3110)
!3110 = !{!1512, !32}
!3111 = !DISubprogram(name: "x264_picture_alloc", scope: !34, file: !34, line: 358, type: !3112, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2710)
!3112 = !DISubroutineType(types: !3113)
!3113 = !{null, !193, !5, !5, !5}
!3114 = !DISubprogram(name: "x264_mdate", scope: !1515, file: !1515, line: 92, type: !3115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2710)
!3115 = !DISubroutineType(types: !3116)
!3116 = !{!10}
!3117 = distinct !DISubprogram(name: "Encode_frame", scope: !3, file: !3, line: 777, type: !3118, scopeLine: 778, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3120)
!3118 = !DISubroutineType(types: !3119)
!3119 = !{!5, !1512, !30, !193}
!3120 = !{!3121, !3122, !3123, !3124, !3125, !3127, !3128, !3129, !3130}
!3121 = !DILocalVariable(name: "h", arg: 1, scope: !3117, file: !3, line: 777, type: !1512)
!3122 = !DILocalVariable(name: "hout", arg: 2, scope: !3117, file: !3, line: 777, type: !30)
!3123 = !DILocalVariable(name: "pic", arg: 3, scope: !3117, file: !3, line: 777, type: !193)
!3124 = !DILocalVariable(name: "pic_out", scope: !3117, file: !3, line: 779, type: !194)
!3125 = !DILocalVariable(name: "nal", scope: !3117, file: !3, line: 780, type: !3126)
!3126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!3127 = !DILocalVariable(name: "i_nal", scope: !3117, file: !3, line: 781, type: !5)
!3128 = !DILocalVariable(name: "i", scope: !3117, file: !3, line: 781, type: !5)
!3129 = !DILocalVariable(name: "i_file", scope: !3117, file: !3, line: 782, type: !5)
!3130 = !DILocalVariable(name: "i_size", scope: !3131, file: !3, line: 791, type: !5)
!3131 = distinct !DILexicalBlock(scope: !3132, file: !3, line: 790, column: 5)
!3132 = distinct !DILexicalBlock(scope: !3133, file: !3, line: 789, column: 5)
!3133 = distinct !DILexicalBlock(scope: !3117, file: !3, line: 789, column: 5)
!3134 = !DILocation(line: 0, scope: !3117)
!3135 = !DILocation(line: 779, column: 5, scope: !3117)
!3136 = !DILocation(line: 779, column: 20, scope: !3117)
!3137 = !DILocation(line: 780, column: 5, scope: !3117)
!3138 = !DILocation(line: 781, column: 5, scope: !3117)
!3139 = !DILocation(line: 784, column: 9, scope: !3140)
!3140 = distinct !DILexicalBlock(scope: !3117, file: !3, line: 784, column: 9)
!3141 = !DILocation(line: 784, column: 63, scope: !3140)
!3142 = !DILocation(line: 784, column: 9, scope: !3117)
!3143 = !DILocation(line: 786, column: 18, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !3140, file: !3, line: 785, column: 5)
!3145 = !DILocation(line: 786, column: 9, scope: !3144)
!3146 = !DILocation(line: 787, column: 5, scope: !3144)
!3147 = !DILocation(line: 789, column: 21, scope: !3132)
!3148 = !DILocation(line: 789, column: 19, scope: !3132)
!3149 = !DILocation(line: 789, column: 5, scope: !3133)
!3150 = !DILocation(line: 791, column: 9, scope: !3131)
!3151 = !DILocation(line: 793, column: 13, scope: !3152)
!3152 = distinct !DILexicalBlock(scope: !3131, file: !3, line: 793, column: 13)
!3153 = !DILocation(line: 793, column: 31, scope: !3152)
!3154 = !DILocation(line: 793, column: 38, scope: !3152)
!3155 = !{!3156, !1217, i64 8}
!3156 = !{!"", !1217, i64 0, !1217, i64 4, !1217, i64 8, !1221, i64 16}
!3157 = !DILocation(line: 793, column: 48, scope: !3152)
!3158 = !DILocation(line: 793, column: 51, scope: !3152)
!3159 = !DILocation(line: 793, column: 54, scope: !3152)
!3160 = !DILocation(line: 793, column: 29, scope: !3152)
!3161 = !DILocation(line: 793, column: 13, scope: !3131)
!3162 = !DILocation(line: 801, column: 26, scope: !3131)
!3163 = !DILocation(line: 795, column: 48, scope: !3164)
!3164 = distinct !DILexicalBlock(scope: !3152, file: !3, line: 794, column: 9)
!3165 = !DILocation(line: 795, column: 52, scope: !3164)
!3166 = !DILocation(line: 795, column: 29, scope: !3164)
!3167 = !DILocation(line: 796, column: 24, scope: !3164)
!3168 = !DILocation(line: 796, column: 13, scope: !3164)
!3169 = !DILocation(line: 797, column: 39, scope: !3164)
!3170 = !DILocation(line: 797, column: 26, scope: !3164)
!3171 = !DILocation(line: 797, column: 24, scope: !3164)
!3172 = !DILocation(line: 800, column: 18, scope: !3131)
!3173 = !DILocation(line: 801, column: 51, scope: !3131)
!3174 = !DILocation(line: 798, column: 9, scope: !3164)
!3175 = !DILocation(line: 0, scope: !3131)
!3176 = !DILocation(line: 800, column: 16, scope: !3131)
!3177 = !DILocation(line: 801, column: 9, scope: !3131)
!3178 = !DILocation(line: 802, column: 19, scope: !3131)
!3179 = !DILocation(line: 802, column: 39, scope: !3131)
!3180 = !DILocation(line: 802, column: 51, scope: !3131)
!3181 = !{ptr @write_nalu_bsf, ptr @write_nalu_mkv}
!3182 = !DILocation(line: 802, column: 16, scope: !3131)
!3183 = !DILocation(line: 803, column: 5, scope: !3132)
!3184 = !DILocation(line: 789, column: 29, scope: !3132)
!3185 = distinct !{!3185, !3149, !3186, !1366}
!3186 = !DILocation(line: 803, column: 5, scope: !3133)
!3187 = !DILocation(line: 804, column: 9, scope: !3188)
!3188 = distinct !DILexicalBlock(scope: !3117, file: !3, line: 804, column: 9)
!3189 = !DILocation(line: 804, column: 9, scope: !3117)
!3190 = !DILocation(line: 805, column: 9, scope: !3188)
!3191 = !{ptr @set_eop_bsf, ptr @set_eop_mkv}
!3192 = !DILocation(line: 808, column: 1, scope: !3117)
!3193 = !DILocation(line: 807, column: 5, scope: !3117)
!3194 = !DISubprogram(name: "sprintf", scope: !2706, file: !2706, line: 358, type: !3195, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2710)
!3195 = !DISubroutineType(types: !3196)
!3196 = !{!5, !3197, !2709, null}
!3197 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !7)
!3198 = !DISubprogram(name: "x264_picture_clean", scope: !34, file: !34, line: 363, type: !3199, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2710)
!3199 = !DISubroutineType(types: !3200)
!3200 = !{null, !193}
!3201 = !DISubprogram(name: "x264_encoder_close", scope: !34, file: !34, line: 430, type: !3202, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2710)
!3202 = !DISubroutineType(types: !3203)
!3203 = !{null, !1512}
!3204 = !DISubprogram(name: "x264_free", scope: !1515, file: !1515, line: 86, type: !3205, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2710)
!3205 = !DISubroutineType(types: !3206)
!3206 = !{null, !9}
!3207 = !DISubprogram(name: "ftello", scope: !2706, file: !2706, line: 741, type: !3208, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2710)
!3208 = !DISubroutineType(types: !3209)
!3209 = !{!503, !477}
!3210 = !DISubprogram(name: "fscanf", linkageName: "__isoc99_fscanf", scope: !2706, file: !2706, line: 434, type: !3084, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2710)
!3211 = !DISubprogram(name: "fseeko", scope: !2706, file: !2706, line: 736, type: !3212, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2710)
!3212 = !DISubroutineType(types: !3213)
!3213 = !{!5, !477, !503, !5}
!3214 = !DISubprogram(name: "fclose", scope: !2706, file: !2706, line: 178, type: !2712, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2710)
!3215 = !DISubprogram(name: "x264_encoder_encode", scope: !34, file: !34, line: 427, type: !3216, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2710)
!3216 = !DISubroutineType(types: !3217)
!3217 = !{!5, !1512, !3218, !564, !193, !193}
!3218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3126, size: 64)
!3219 = !DISubprogram(name: "x264_malloc", scope: !1515, file: !1515, line: 84, type: !3220, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2710)
!3220 = !DISubroutineType(types: !3221)
!3221 = !{!9, !5}
!3222 = !DISubprogram(name: "x264_nal_encode", scope: !34, file: !34, line: 405, type: !3223, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2710)
!3223 = !DISubroutineType(types: !3224)
!3224 = !{!5, !9, !564, !5, !3126}
