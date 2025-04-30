; ModuleID = 'common/common.c'
source_filename = "common/common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x264_cpu_name_t = type { [16 x i8], i32 }
%struct.x264_param_t = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [16 x i8], [16 x i8], [16 x i8], [16 x i8], [64 x i8], [64 x i8], ptr, ptr, i32, i32, ptr, %struct.anon.0, %struct.anon.1, i32, i32, i32 }
%struct.anon = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.0 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, [2 x i32], i32, i32 }
%struct.anon.1 = type { i32, i32, i32, i32, i32, i32, float, float, i32, i32, float, float, float, i32, float, i32, ptr, i32, ptr, float, float, float, ptr, i32, ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.x264_picture_t = type { i32, i32, i64, %struct.x264_image_t }
%struct.x264_image_t = type { i32, i32, [4 x i32], [4 x ptr] }
%struct.x264_nal_t = type { i32, i32, i32, ptr }

@.str = private unnamed_addr constant [15 x i8] c"x264_2pass.log\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [5 x i8] c"true\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [4 x i8] c"no-\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [3 x i8] c"no\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [6 x i8] c"false\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [4 x i8] c"asm\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [5 x i8] c"auto\00", align 1, !dbg !29
@.str.7 = private unnamed_addr constant [2 x i8] c",\00", align 1, !dbg !31
@x264_cpu_names = external constant [0 x %struct.x264_cpu_name_t], align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"threads\00", align 1, !dbg !36
@.str.9 = private unnamed_addr constant [14 x i8] c"deterministic\00", align 1, !dbg !41
@.str.10 = private unnamed_addr constant [16 x i8] c"n-deterministic\00", align 1, !dbg !46
@.str.11 = private unnamed_addr constant [6 x i8] c"level\00", align 1, !dbg !51
@.str.12 = private unnamed_addr constant [10 x i8] c"level-idc\00", align 1, !dbg !53
@.str.13 = private unnamed_addr constant [4 x i8] c"sar\00", align 1, !dbg !58
@.str.14 = private unnamed_addr constant [6 x i8] c"%d:%d\00", align 1, !dbg !60
@.str.15 = private unnamed_addr constant [6 x i8] c"%d/%d\00", align 1, !dbg !62
@.str.16 = private unnamed_addr constant [9 x i8] c"overscan\00", align 1, !dbg !64
@x264_overscan_names = internal constant [4 x ptr] [ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr null], align 16, !dbg !69
@.str.17 = private unnamed_addr constant [12 x i8] c"videoformat\00", align 1, !dbg !100
@x264_vidformat_names = internal constant [7 x ptr] [ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.177, ptr null], align 16, !dbg !479
@.str.18 = private unnamed_addr constant [10 x i8] c"fullrange\00", align 1, !dbg !105
@x264_fullrange_names = internal constant [3 x ptr] [ptr @.str.185, ptr @.str.186, ptr null], align 16, !dbg !489
@.str.19 = private unnamed_addr constant [10 x i8] c"colorprim\00", align 1, !dbg !107
@x264_colorprim_names = internal constant [10 x ptr] [ptr @.str.156, ptr @.str.187, ptr @.str.177, ptr @.str.156, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr null], align 16, !dbg !504
@.str.20 = private unnamed_addr constant [9 x i8] c"transfer\00", align 1, !dbg !109
@x264_transfer_names = internal constant [12 x ptr] [ptr @.str.156, ptr @.str.187, ptr @.str.177, ptr @.str.156, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr null], align 16, !dbg !513
@.str.21 = private unnamed_addr constant [12 x i8] c"colormatrix\00", align 1, !dbg !111
@x264_colmatrix_names = internal constant [10 x ptr] [ptr @.str.196, ptr @.str.187, ptr @.str.177, ptr @.str.156, ptr @.str.197, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.198, ptr null], align 16, !dbg !522
@.str.22 = private unnamed_addr constant [10 x i8] c"chromaloc\00", align 1, !dbg !113
@.str.23 = private unnamed_addr constant [4 x i8] c"fps\00", align 1, !dbg !115
@.str.24 = private unnamed_addr constant [4 x i8] c"ref\00", align 1, !dbg !117
@.str.25 = private unnamed_addr constant [9 x i8] c"frameref\00", align 1, !dbg !119
@.str.26 = private unnamed_addr constant [7 x i8] c"keyint\00", align 1, !dbg !121
@.str.27 = private unnamed_addr constant [11 x i8] c"min-keyint\00", align 1, !dbg !126
@.str.28 = private unnamed_addr constant [11 x i8] c"keyint-min\00", align 1, !dbg !131
@.str.29 = private unnamed_addr constant [9 x i8] c"scenecut\00", align 1, !dbg !133
@.str.30 = private unnamed_addr constant [13 x i8] c"pre-scenecut\00", align 1, !dbg !135
@.str.31 = private unnamed_addr constant [8 x i8] c"bframes\00", align 1, !dbg !140
@.str.32 = private unnamed_addr constant [8 x i8] c"b-adapt\00", align 1, !dbg !142
@.str.33 = private unnamed_addr constant [7 x i8] c"b-bias\00", align 1, !dbg !144
@.str.34 = private unnamed_addr constant [10 x i8] c"b-pyramid\00", align 1, !dbg !146
@.str.35 = private unnamed_addr constant [3 x i8] c"nf\00", align 1, !dbg !148
@.str.36 = private unnamed_addr constant [7 x i8] c"filter\00", align 1, !dbg !150
@.str.37 = private unnamed_addr constant [8 x i8] c"deblock\00", align 1, !dbg !152
@.str.38 = private unnamed_addr constant [6 x i8] c"%d,%d\00", align 1, !dbg !154
@.str.39 = private unnamed_addr constant [3 x i8] c"%d\00", align 1, !dbg !156
@.str.40 = private unnamed_addr constant [6 x i8] c"cabac\00", align 1, !dbg !158
@.str.41 = private unnamed_addr constant [10 x i8] c"cabac-idc\00", align 1, !dbg !160
@.str.42 = private unnamed_addr constant [11 x i8] c"interlaced\00", align 1, !dbg !162
@.str.43 = private unnamed_addr constant [4 x i8] c"cqm\00", align 1, !dbg !164
@.str.44 = private unnamed_addr constant [5 x i8] c"flat\00", align 1, !dbg !166
@.str.45 = private unnamed_addr constant [4 x i8] c"jvt\00", align 1, !dbg !168
@.str.46 = private unnamed_addr constant [8 x i8] c"cqmfile\00", align 1, !dbg !170
@.str.47 = private unnamed_addr constant [5 x i8] c"cqm4\00", align 1, !dbg !172
@.str.48 = private unnamed_addr constant [5 x i8] c"cqm8\00", align 1, !dbg !174
@.str.49 = private unnamed_addr constant [6 x i8] c"cqm4i\00", align 1, !dbg !176
@.str.50 = private unnamed_addr constant [6 x i8] c"cqm4p\00", align 1, !dbg !178
@.str.51 = private unnamed_addr constant [7 x i8] c"cqm4iy\00", align 1, !dbg !180
@.str.52 = private unnamed_addr constant [7 x i8] c"cqm4ic\00", align 1, !dbg !182
@.str.53 = private unnamed_addr constant [7 x i8] c"cqm4py\00", align 1, !dbg !184
@.str.54 = private unnamed_addr constant [7 x i8] c"cqm4pc\00", align 1, !dbg !186
@.str.55 = private unnamed_addr constant [6 x i8] c"cqm8i\00", align 1, !dbg !188
@.str.56 = private unnamed_addr constant [6 x i8] c"cqm8p\00", align 1, !dbg !190
@.str.57 = private unnamed_addr constant [4 x i8] c"log\00", align 1, !dbg !192
@.str.58 = private unnamed_addr constant [9 x i8] c"dump-yuv\00", align 1, !dbg !194
@.str.59 = private unnamed_addr constant [8 x i8] c"analyse\00", align 1, !dbg !196
@.str.60 = private unnamed_addr constant [11 x i8] c"partitions\00", align 1, !dbg !198
@.str.61 = private unnamed_addr constant [5 x i8] c"none\00", align 1, !dbg !200
@.str.62 = private unnamed_addr constant [4 x i8] c"all\00", align 1, !dbg !202
@.str.63 = private unnamed_addr constant [5 x i8] c"i4x4\00", align 1, !dbg !204
@.str.64 = private unnamed_addr constant [5 x i8] c"i8x8\00", align 1, !dbg !206
@.str.65 = private unnamed_addr constant [5 x i8] c"p8x8\00", align 1, !dbg !208
@.str.66 = private unnamed_addr constant [5 x i8] c"p4x4\00", align 1, !dbg !210
@.str.67 = private unnamed_addr constant [5 x i8] c"b8x8\00", align 1, !dbg !212
@.str.68 = private unnamed_addr constant [7 x i8] c"8x8dct\00", align 1, !dbg !214
@.str.69 = private unnamed_addr constant [8 x i8] c"weightb\00", align 1, !dbg !216
@.str.70 = private unnamed_addr constant [9 x i8] c"weight-b\00", align 1, !dbg !218
@.str.71 = private unnamed_addr constant [7 x i8] c"direct\00", align 1, !dbg !220
@.str.72 = private unnamed_addr constant [12 x i8] c"direct-pred\00", align 1, !dbg !222
@x264_direct_pred_names = internal constant [5 x ptr] [ptr @.str.61, ptr @.str.199, ptr @.str.200, ptr @.str.6, ptr null], align 16, !dbg !528
@.str.73 = private unnamed_addr constant [11 x i8] c"direct-8x8\00", align 1, !dbg !224
@.str.74 = private unnamed_addr constant [17 x i8] c"chroma-qp-offset\00", align 1, !dbg !226
@.str.75 = private unnamed_addr constant [3 x i8] c"me\00", align 1, !dbg !231
@x264_motion_est_names = internal constant [6 x ptr] [ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr null], align 16, !dbg !541
@.str.76 = private unnamed_addr constant [8 x i8] c"merange\00", align 1, !dbg !233
@.str.77 = private unnamed_addr constant [9 x i8] c"me-range\00", align 1, !dbg !235
@.str.78 = private unnamed_addr constant [8 x i8] c"mvrange\00", align 1, !dbg !237
@.str.79 = private unnamed_addr constant [9 x i8] c"mv-range\00", align 1, !dbg !239
@.str.80 = private unnamed_addr constant [15 x i8] c"mvrange-thread\00", align 1, !dbg !241
@.str.81 = private unnamed_addr constant [16 x i8] c"mv-range-thread\00", align 1, !dbg !243
@.str.82 = private unnamed_addr constant [6 x i8] c"subme\00", align 1, !dbg !245
@.str.83 = private unnamed_addr constant [5 x i8] c"subq\00", align 1, !dbg !247
@.str.84 = private unnamed_addr constant [7 x i8] c"psy-rd\00", align 1, !dbg !249
@.str.85 = private unnamed_addr constant [6 x i8] c"%f:%f\00", align 1, !dbg !251
@.str.86 = private unnamed_addr constant [6 x i8] c"%f,%f\00", align 1, !dbg !253
@.str.87 = private unnamed_addr constant [3 x i8] c"%f\00", align 1, !dbg !255
@.str.88 = private unnamed_addr constant [10 x i8] c"chroma-me\00", align 1, !dbg !257
@.str.89 = private unnamed_addr constant [11 x i8] c"mixed-refs\00", align 1, !dbg !259
@.str.90 = private unnamed_addr constant [8 x i8] c"trellis\00", align 1, !dbg !261
@.str.91 = private unnamed_addr constant [11 x i8] c"fast-pskip\00", align 1, !dbg !263
@.str.92 = private unnamed_addr constant [13 x i8] c"dct-decimate\00", align 1, !dbg !265
@.str.93 = private unnamed_addr constant [15 x i8] c"deadzone-inter\00", align 1, !dbg !267
@.str.94 = private unnamed_addr constant [15 x i8] c"deadzone-intra\00", align 1, !dbg !269
@.str.95 = private unnamed_addr constant [3 x i8] c"nr\00", align 1, !dbg !271
@.str.96 = private unnamed_addr constant [8 x i8] c"bitrate\00", align 1, !dbg !273
@.str.97 = private unnamed_addr constant [3 x i8] c"qp\00", align 1, !dbg !275
@.str.98 = private unnamed_addr constant [12 x i8] c"qp_constant\00", align 1, !dbg !277
@.str.99 = private unnamed_addr constant [4 x i8] c"crf\00", align 1, !dbg !279
@.str.100 = private unnamed_addr constant [6 x i8] c"qpmin\00", align 1, !dbg !281
@.str.101 = private unnamed_addr constant [7 x i8] c"qp-min\00", align 1, !dbg !283
@.str.102 = private unnamed_addr constant [6 x i8] c"qpmax\00", align 1, !dbg !285
@.str.103 = private unnamed_addr constant [7 x i8] c"qp-max\00", align 1, !dbg !287
@.str.104 = private unnamed_addr constant [7 x i8] c"qpstep\00", align 1, !dbg !289
@.str.105 = private unnamed_addr constant [8 x i8] c"qp-step\00", align 1, !dbg !291
@.str.106 = private unnamed_addr constant [8 x i8] c"ratetol\00", align 1, !dbg !293
@.str.107 = private unnamed_addr constant [4 x i8] c"inf\00", align 1, !dbg !295
@.str.108 = private unnamed_addr constant [12 x i8] c"vbv-maxrate\00", align 1, !dbg !297
@.str.109 = private unnamed_addr constant [12 x i8] c"vbv-bufsize\00", align 1, !dbg !299
@.str.110 = private unnamed_addr constant [9 x i8] c"vbv-init\00", align 1, !dbg !301
@.str.111 = private unnamed_addr constant [8 x i8] c"ipratio\00", align 1, !dbg !303
@.str.112 = private unnamed_addr constant [10 x i8] c"ip-factor\00", align 1, !dbg !305
@.str.113 = private unnamed_addr constant [8 x i8] c"pbratio\00", align 1, !dbg !307
@.str.114 = private unnamed_addr constant [10 x i8] c"pb-factor\00", align 1, !dbg !309
@.str.115 = private unnamed_addr constant [8 x i8] c"aq-mode\00", align 1, !dbg !311
@.str.116 = private unnamed_addr constant [12 x i8] c"aq-strength\00", align 1, !dbg !313
@.str.117 = private unnamed_addr constant [5 x i8] c"pass\00", align 1, !dbg !315
@.str.118 = private unnamed_addr constant [6 x i8] c"stats\00", align 1, !dbg !317
@.str.119 = private unnamed_addr constant [6 x i8] c"qcomp\00", align 1, !dbg !319
@.str.120 = private unnamed_addr constant [6 x i8] c"qblur\00", align 1, !dbg !321
@.str.121 = private unnamed_addr constant [9 x i8] c"cplxblur\00", align 1, !dbg !323
@.str.122 = private unnamed_addr constant [10 x i8] c"cplx-blur\00", align 1, !dbg !325
@.str.123 = private unnamed_addr constant [6 x i8] c"zones\00", align 1, !dbg !327
@.str.124 = private unnamed_addr constant [5 x i8] c"psnr\00", align 1, !dbg !329
@.str.125 = private unnamed_addr constant [5 x i8] c"ssim\00", align 1, !dbg !331
@.str.126 = private unnamed_addr constant [4 x i8] c"aud\00", align 1, !dbg !333
@.str.127 = private unnamed_addr constant [7 x i8] c"sps-id\00", align 1, !dbg !335
@.str.128 = private unnamed_addr constant [14 x i8] c"global-header\00", align 1, !dbg !337
@.str.129 = private unnamed_addr constant [15 x i8] c"repeat-headers\00", align 1, !dbg !339
@.str.130 = private unnamed_addr constant [3 x i8] c"rb\00", align 1, !dbg !341
@.str.131 = private unnamed_addr constant [7 x i8] c"%dx%d \00", align 1, !dbg !343
@.str.132 = private unnamed_addr constant [11 x i8] c"fps=%d/%d \00", align 1, !dbg !345
@.str.133 = private unnamed_addr constant [9 x i8] c"cabac=%d\00", align 1, !dbg !347
@.str.134 = private unnamed_addr constant [8 x i8] c" ref=%d\00", align 1, !dbg !349
@.str.135 = private unnamed_addr constant [18 x i8] c" deblock=%d:%d:%d\00", align 1, !dbg !351
@.str.136 = private unnamed_addr constant [17 x i8] c" analyse=%#x:%#x\00", align 1, !dbg !356
@.str.137 = private unnamed_addr constant [7 x i8] c" me=%s\00", align 1, !dbg !358
@.str.138 = private unnamed_addr constant [10 x i8] c" subme=%d\00", align 1, !dbg !360
@.str.139 = private unnamed_addr constant [18 x i8] c" psy_rd=%.1f:%.1f\00", align 1, !dbg !362
@.str.140 = private unnamed_addr constant [14 x i8] c" mixed_ref=%d\00", align 1, !dbg !364
@.str.141 = private unnamed_addr constant [13 x i8] c" me_range=%d\00", align 1, !dbg !366
@.str.142 = private unnamed_addr constant [14 x i8] c" chroma_me=%d\00", align 1, !dbg !368
@.str.143 = private unnamed_addr constant [12 x i8] c" trellis=%d\00", align 1, !dbg !370
@.str.144 = private unnamed_addr constant [11 x i8] c" 8x8dct=%d\00", align 1, !dbg !372
@.str.145 = private unnamed_addr constant [8 x i8] c" cqm=%d\00", align 1, !dbg !374
@.str.146 = private unnamed_addr constant [16 x i8] c" deadzone=%d,%d\00", align 1, !dbg !376
@.str.147 = private unnamed_addr constant [21 x i8] c" chroma_qp_offset=%d\00", align 1, !dbg !378
@.str.148 = private unnamed_addr constant [12 x i8] c" threads=%d\00", align 1, !dbg !383
@.str.149 = private unnamed_addr constant [7 x i8] c" nr=%d\00", align 1, !dbg !385
@.str.150 = private unnamed_addr constant [13 x i8] c" decimate=%d\00", align 1, !dbg !387
@.str.151 = private unnamed_addr constant [10 x i8] c" mbaff=%d\00", align 1, !dbg !389
@.str.152 = private unnamed_addr constant [12 x i8] c" bframes=%d\00", align 1, !dbg !391
@.str.153 = private unnamed_addr constant [55 x i8] c" b_pyramid=%d b_adapt=%d b_bias=%d direct=%d wpredb=%d\00", align 1, !dbg !393
@.str.154 = private unnamed_addr constant [39 x i8] c" keyint=%d keyint_min=%d scenecut=%d%s\00", align 1, !dbg !398
@.str.155 = private unnamed_addr constant [6 x i8] c"(pre)\00", align 1, !dbg !403
@.str.156 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !405
@.str.157 = private unnamed_addr constant [7 x i8] c" rc=%s\00", align 1, !dbg !410
@.str.158 = private unnamed_addr constant [6 x i8] c"2pass\00", align 1, !dbg !412
@.str.159 = private unnamed_addr constant [4 x i8] c"cbr\00", align 1, !dbg !414
@.str.160 = private unnamed_addr constant [4 x i8] c"abr\00", align 1, !dbg !416
@.str.161 = private unnamed_addr constant [4 x i8] c"cqp\00", align 1, !dbg !418
@.str.162 = private unnamed_addr constant [10 x i8] c" crf=%.1f\00", align 1, !dbg !420
@.str.163 = private unnamed_addr constant [25 x i8] c" bitrate=%d ratetol=%.1f\00", align 1, !dbg !422
@.str.164 = private unnamed_addr constant [40 x i8] c" qcomp=%.2f qpmin=%d qpmax=%d qpstep=%d\00", align 1, !dbg !427
@.str.165 = private unnamed_addr constant [26 x i8] c" cplxblur=%.1f qblur=%.1f\00", align 1, !dbg !432
@.str.166 = private unnamed_addr constant [31 x i8] c" vbv_maxrate=%d vbv_bufsize=%d\00", align 1, !dbg !437
@.str.167 = private unnamed_addr constant [7 x i8] c" qp=%d\00", align 1, !dbg !442
@.str.168 = private unnamed_addr constant [15 x i8] c" ip_ratio=%.2f\00", align 1, !dbg !444
@.str.169 = private unnamed_addr constant [15 x i8] c" pb_ratio=%.2f\00", align 1, !dbg !446
@.str.170 = private unnamed_addr constant [7 x i8] c" aq=%d\00", align 1, !dbg !448
@.str.171 = private unnamed_addr constant [6 x i8] c":%.2f\00", align 1, !dbg !450
@.str.172 = private unnamed_addr constant [10 x i8] c" zones=%s\00", align 1, !dbg !452
@.str.173 = private unnamed_addr constant [7 x i8] c" zones\00", align 1, !dbg !454
@.str.174 = private unnamed_addr constant [2 x i8] c"1\00", align 1, !dbg !456
@.str.175 = private unnamed_addr constant [4 x i8] c"yes\00", align 1, !dbg !458
@.str.176 = private unnamed_addr constant [2 x i8] c"0\00", align 1, !dbg !460
@.str.177 = private unnamed_addr constant [6 x i8] c"undef\00", align 1, !dbg !462
@.str.178 = private unnamed_addr constant [5 x i8] c"show\00", align 1, !dbg !465
@.str.179 = private unnamed_addr constant [5 x i8] c"crop\00", align 1, !dbg !467
@.str.180 = private unnamed_addr constant [10 x i8] c"component\00", align 1, !dbg !469
@.str.181 = private unnamed_addr constant [4 x i8] c"pal\00", align 1, !dbg !471
@.str.182 = private unnamed_addr constant [5 x i8] c"ntsc\00", align 1, !dbg !473
@.str.183 = private unnamed_addr constant [6 x i8] c"secam\00", align 1, !dbg !475
@.str.184 = private unnamed_addr constant [4 x i8] c"mac\00", align 1, !dbg !477
@.str.185 = private unnamed_addr constant [4 x i8] c"off\00", align 1, !dbg !485
@.str.186 = private unnamed_addr constant [3 x i8] c"on\00", align 1, !dbg !487
@.str.187 = private unnamed_addr constant [6 x i8] c"bt709\00", align 1, !dbg !492
@.str.188 = private unnamed_addr constant [7 x i8] c"bt470m\00", align 1, !dbg !494
@.str.189 = private unnamed_addr constant [8 x i8] c"bt470bg\00", align 1, !dbg !496
@.str.190 = private unnamed_addr constant [10 x i8] c"smpte170m\00", align 1, !dbg !498
@.str.191 = private unnamed_addr constant [10 x i8] c"smpte240m\00", align 1, !dbg !500
@.str.192 = private unnamed_addr constant [5 x i8] c"film\00", align 1, !dbg !502
@.str.193 = private unnamed_addr constant [7 x i8] c"linear\00", align 1, !dbg !507
@.str.194 = private unnamed_addr constant [7 x i8] c"log100\00", align 1, !dbg !509
@.str.195 = private unnamed_addr constant [7 x i8] c"log316\00", align 1, !dbg !511
@.str.196 = private unnamed_addr constant [4 x i8] c"GBR\00", align 1, !dbg !516
@.str.197 = private unnamed_addr constant [4 x i8] c"fcc\00", align 1, !dbg !518
@.str.198 = private unnamed_addr constant [6 x i8] c"YCgCo\00", align 1, !dbg !520
@.str.199 = private unnamed_addr constant [8 x i8] c"spatial\00", align 1, !dbg !524
@.str.200 = private unnamed_addr constant [9 x i8] c"temporal\00", align 1, !dbg !526
@.str.201 = private unnamed_addr constant [4 x i8] c"dia\00", align 1, !dbg !531
@.str.202 = private unnamed_addr constant [4 x i8] c"hex\00", align 1, !dbg !533
@.str.203 = private unnamed_addr constant [4 x i8] c"umh\00", align 1, !dbg !535
@.str.204 = private unnamed_addr constant [4 x i8] c"esa\00", align 1, !dbg !537
@.str.205 = private unnamed_addr constant [5 x i8] c"tesa\00", align 1, !dbg !539
@.str.206 = private unnamed_addr constant [6 x i8] c"error\00", align 1, !dbg !544
@.str.207 = private unnamed_addr constant [8 x i8] c"warning\00", align 1, !dbg !546
@.str.208 = private unnamed_addr constant [5 x i8] c"info\00", align 1, !dbg !548
@.str.209 = private unnamed_addr constant [6 x i8] c"debug\00", align 1, !dbg !550
@.str.210 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1, !dbg !552
@stderr = external local_unnamed_addr global ptr, align 8
@.str.211 = private unnamed_addr constant [12 x i8] c"x264 [%s]: \00", align 1, !dbg !554
@reltable.x264_log_default = private unnamed_addr constant [4 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.206 to i64), i64 ptrtoint (ptr @reltable.x264_log_default to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.207 to i64), i64 ptrtoint (ptr @reltable.x264_log_default to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.208 to i64), i64 ptrtoint (ptr @reltable.x264_log_default to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.209 to i64), i64 ptrtoint (ptr @reltable.x264_log_default to i64)) to i32)], align 4

; Function Attrs: nounwind uwtable
define dso_local void @x264_param_default(ptr noundef writeonly %0) local_unnamed_addr #0 !dbg !564 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !708, metadata !DIExpression()), !dbg !709
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(616) %0, i8 0, i64 616, i1 false), !dbg !710
  %2 = tail call i32 @x264_cpu_detect() #27, !dbg !711
  store i32 %2, ptr %0, align 8, !dbg !712, !tbaa !713
  %3 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 1, !dbg !723
  %4 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 5, !dbg !724
  store i32 1, ptr %4, align 4, !dbg !725, !tbaa !726
  store <4 x i32> <i32 1, i32 1, i32 0, i32 0>, ptr %3, align 4, !dbg !727, !tbaa !728
  %5 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 8, !dbg !729
  store <4 x i32> <i32 0, i32 0, i32 0, i32 5>, ptr %5, align 8, !dbg !730, !tbaa !728
  %6 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 8, i32 4, !dbg !731
  store <4 x i32> <i32 0, i32 2, i32 2, i32 2>, ptr %6, align 8, !dbg !732, !tbaa !728
  %7 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 8, i32 8, !dbg !733
  %8 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 6, !dbg !734
  store i32 -1, ptr %8, align 8, !dbg !735, !tbaa !736
  store <4 x i32> <i32 0, i32 25, i32 1, i32 1>, ptr %7, align 8, !dbg !737, !tbaa !728
  %9 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 12, !dbg !738
  store i32 250, ptr %9, align 8, !dbg !739, !tbaa !740
  %10 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 13, !dbg !741
  store i32 25, ptr %10, align 4, !dbg !742, !tbaa !743
  %11 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 16, !dbg !744
  %12 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 14, !dbg !745
  store i32 40, ptr %12, align 8, !dbg !746, !tbaa !747
  store <4 x i32> <i32 0, i32 1, i32 0, i32 0>, ptr %11, align 8, !dbg !748, !tbaa !728
  %13 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 20, !dbg !749
  store <4 x i32> <i32 1, i32 0, i32 0, i32 1>, ptr %13, align 8, !dbg !750, !tbaa !728
  %14 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 24, !dbg !751
  store i32 0, ptr %14, align 8, !dbg !752, !tbaa !753
  %15 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, !dbg !754
  %16 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 5, !dbg !755
  store i32 0, ptr %16, align 4, !dbg !756, !tbaa !757
  %17 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 8, !dbg !758
  store i32 0, ptr %17, align 8, !dbg !759, !tbaa !760
  %18 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 9, !dbg !761
  store i32 0, ptr %18, align 4, !dbg !762, !tbaa !763
  %19 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 10, !dbg !764
  %20 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 6, !dbg !765
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %20, align 8, !dbg !766, !tbaa !767
  store <4 x i32> <i32 -1, i32 26, i32 10, i32 51>, ptr %15, align 8, !dbg !768, !tbaa !728
  %21 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 4, !dbg !769
  store i32 4, ptr %21, align 8, !dbg !770, !tbaa !771
  store <2 x float> <float 0x3FECCCCCC0000000, float 0x3FF6666660000000>, ptr %19, align 8, !dbg !772, !tbaa !767
  %22 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 12, !dbg !773
  store float 0x3FF4CCCCC0000000, ptr %22, align 8, !dbg !774, !tbaa !775
  %23 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 13, !dbg !776
  store i32 1, ptr %23, align 4, !dbg !777, !tbaa !778
  %24 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 14, !dbg !779
  store float 1.000000e+00, ptr %24, align 8, !dbg !780, !tbaa !781
  %25 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 15, !dbg !782
  store i32 0, ptr %25, align 4, !dbg !783, !tbaa !784
  %26 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 16, !dbg !785
  store ptr @.str, ptr %26, align 8, !dbg !786, !tbaa !787
  %27 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 17, !dbg !788
  store i32 0, ptr %27, align 8, !dbg !789, !tbaa !790
  %28 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 18, !dbg !791
  store ptr @.str, ptr %28, align 8, !dbg !792, !tbaa !793
  %29 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 19, !dbg !794
  store <2 x float> <float 0x3FE3333340000000, float 5.000000e-01>, ptr %29, align 8, !dbg !795, !tbaa !767
  %30 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 21, !dbg !796
  store float 2.000000e+01, ptr %30, align 8, !dbg !797, !tbaa !798
  %31 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 23, !dbg !799
  store i32 0, ptr %31, align 8, !dbg !800, !tbaa !801
  %32 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 34, !dbg !802
  store ptr @x264_log_default, ptr %32, align 8, !dbg !803, !tbaa !804
  %33 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 35, !dbg !805
  store ptr null, ptr %33, align 8, !dbg !806, !tbaa !807
  %34 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 36, !dbg !808
  store i32 2, ptr %34, align 8, !dbg !809, !tbaa !810
  %35 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 39, !dbg !811
  store i32 3, ptr %35, align 8, !dbg !812, !tbaa !813
  %36 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 39, i32 1, !dbg !814
  store i32 275, ptr %36, align 4, !dbg !815, !tbaa !816
  %37 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 39, i32 4, !dbg !817
  %38 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 39, i32 18, !dbg !818
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %38, align 8, !dbg !819, !tbaa !767
  %39 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 39, i32 8, !dbg !820
  %40 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 39, i32 12, !dbg !821
  store i32 1, ptr %40, align 8, !dbg !822, !tbaa !823
  store <4 x i32> <i32 16, i32 -1, i32 -1, i32 6>, ptr %39, align 8, !dbg !824, !tbaa !728
  store <4 x i32> <i32 1, i32 1, i32 0, i32 1>, ptr %37, align 8, !dbg !825, !tbaa !728
  %41 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 39, i32 15, !dbg !826
  store i32 1, ptr %41, align 4, !dbg !827, !tbaa !828
  %42 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 39, i32 16, !dbg !829
  store i32 1, ptr %42, align 8, !dbg !830, !tbaa !831
  %43 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 39, i32 20, !dbg !832
  store <4 x i32> <i32 21, i32 11, i32 1, i32 1>, ptr %43, align 8, !dbg !833, !tbaa !728
  %44 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 26, !dbg !834
  store i32 0, ptr %44, align 8, !dbg !835, !tbaa !836
  %45 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 28, !dbg !837
  %46 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, !dbg !838
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %45, i8 16, i64 192, i1 false), !dbg !839
  store i32 1, ptr %46, align 4, !dbg !840, !tbaa !841
  %47 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, !dbg !842
  store i32 0, ptr %47, align 8, !dbg !843, !tbaa !844
  ret void, !dbg !845
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare !dbg !846 i32 @x264_cpu_detect() local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define internal void @x264_log_default(ptr nocapture readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #4 !dbg !853 {
  call void @llvm.dbg.value(metadata ptr poison, metadata !855, metadata !DIExpression()), !dbg !860
  call void @llvm.dbg.value(metadata i32 %1, metadata !856, metadata !DIExpression()), !dbg !860
  call void @llvm.dbg.value(metadata ptr %2, metadata !857, metadata !DIExpression()), !dbg !860
  call void @llvm.dbg.value(metadata ptr %3, metadata !858, metadata !DIExpression()), !dbg !860
  %5 = icmp ult i32 %1, 4, !dbg !861
  br i1 %5, label %6, label %10, !dbg !861

6:                                                ; preds = %4
  %7 = sext i32 %1 to i64, !dbg !861
  %8 = shl i64 %7, 2, !dbg !861
  %9 = call ptr @llvm.load.relative.i64(ptr @reltable.x264_log_default, i64 %8), !dbg !861
  br label %10, !dbg !861

10:                                               ; preds = %4, %6
  %11 = phi ptr [ %9, %6 ], [ @.str.210, %4 ], !dbg !862
  call void @llvm.dbg.value(metadata ptr %11, metadata !859, metadata !DIExpression()), !dbg !860
  %12 = load ptr, ptr @stderr, align 8, !dbg !864, !tbaa !865
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef nonnull @.str.211, ptr noundef nonnull %11) #28, !dbg !866
  %14 = load ptr, ptr @stderr, align 8, !dbg !867, !tbaa !865
  %15 = tail call i32 @vfprintf(ptr noundef %14, ptr noundef %2, ptr noundef %3) #28, !dbg !868
  ret void, !dbg !869
}

; Function Attrs: nounwind uwtable
define dso_local i32 @x264_param_parse(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 !dbg !870 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = alloca ptr, align 8
  %23 = alloca ptr, align 8
  %24 = alloca ptr, align 8
  %25 = alloca ptr, align 8
  %26 = alloca ptr, align 8
  %27 = alloca ptr, align 8
  %28 = alloca ptr, align 8
  %29 = alloca ptr, align 8
  %30 = alloca ptr, align 8
  %31 = alloca ptr, align 8
  %32 = alloca ptr, align 8
  %33 = alloca ptr, align 8
  %34 = alloca ptr, align 8
  %35 = alloca ptr, align 8
  %36 = alloca ptr, align 8
  %37 = alloca ptr, align 8
  %38 = alloca ptr, align 8
  %39 = alloca ptr, align 8
  %40 = alloca ptr, align 8
  %41 = alloca ptr, align 8
  %42 = alloca ptr, align 8
  %43 = alloca ptr, align 8
  %44 = alloca ptr, align 8
  %45 = alloca ptr, align 8
  %46 = alloca ptr, align 8
  %47 = alloca ptr, align 8
  %48 = alloca ptr, align 8
  %49 = alloca i32, align 4
  %50 = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !874, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata ptr %1, metadata !875, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata ptr %2, metadata !876, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata ptr null, metadata !877, metadata !DIExpression()), !dbg !975
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %49) #27, !dbg !976
  call void @llvm.dbg.value(metadata i32 0, metadata !878, metadata !DIExpression()), !dbg !975
  store i32 0, ptr %49, align 4, !dbg !977, !tbaa !728
  %51 = icmp eq ptr %2, null, !dbg !978
  call void @llvm.dbg.value(metadata i1 %51, metadata !880, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !975
  %52 = icmp eq ptr %1, null, !dbg !979
  br i1 %52, label %1275, label %53, !dbg !981

53:                                               ; preds = %3
  %54 = select i1 %51, ptr @.str.1, ptr %2, !dbg !982
  call void @llvm.dbg.value(metadata ptr %54, metadata !876, metadata !DIExpression()), !dbg !975
  %55 = load i8, ptr %54, align 1, !dbg !983, !tbaa !985
  %56 = icmp eq i8 %55, 61, !dbg !986
  %57 = zext i1 %56 to i64, !dbg !987
  %58 = getelementptr i8, ptr %54, i64 %57, !dbg !987
  call void @llvm.dbg.value(metadata ptr %58, metadata !876, metadata !DIExpression()), !dbg !975
  %59 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 95) #29, !dbg !988
  %60 = icmp eq ptr %59, null, !dbg !988
  br i1 %60, label %69, label %61, !dbg !989

61:                                               ; preds = %53
  %62 = tail call noalias ptr @strdup(ptr noundef nonnull %1) #27, !dbg !990
  call void @llvm.dbg.value(metadata ptr %62, metadata !877, metadata !DIExpression()), !dbg !975
  %63 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %62, i32 noundef 95) #29, !dbg !991
  call void @llvm.dbg.value(metadata ptr %63, metadata !882, metadata !DIExpression()), !dbg !992
  %64 = icmp eq ptr %63, null, !dbg !993
  br i1 %64, label %69, label %65, !dbg !993

65:                                               ; preds = %61, %65
  %66 = phi ptr [ %67, %65 ], [ %63, %61 ]
  store i8 45, ptr %66, align 1, !dbg !994, !tbaa !985
  %67 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %62, i32 noundef 95) #29, !dbg !991
  call void @llvm.dbg.value(metadata ptr %67, metadata !882, metadata !DIExpression()), !dbg !992
  %68 = icmp eq ptr %67, null, !dbg !993
  br i1 %68, label %69, label %65, !dbg !993, !llvm.loop !995

69:                                               ; preds = %65, %61, %53
  %70 = phi ptr [ null, %53 ], [ %62, %61 ], [ %62, %65 ], !dbg !975
  %71 = phi ptr [ %1, %53 ], [ %62, %61 ], [ %62, %65 ]
  call void @llvm.dbg.value(metadata ptr %71, metadata !875, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata ptr %70, metadata !877, metadata !DIExpression()), !dbg !975
  %72 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %71, ptr noundef nonnull dereferenceable(4) @.str.2, i64 noundef 3) #29, !dbg !998
  %73 = icmp eq i32 %72, 0, !dbg !998
  br i1 %73, label %77, label %74, !dbg !1000

74:                                               ; preds = %69
  %75 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %71, ptr noundef nonnull dereferenceable(3) @.str.3, i64 noundef 2) #29, !dbg !1001
  %76 = icmp eq i32 %75, 0, !dbg !1001
  br i1 %76, label %77, label %83, !dbg !1002

77:                                               ; preds = %74, %69
  %78 = phi i64 [ 3, %69 ], [ 2, %74 ]
  call void @llvm.dbg.value(metadata i32 poison, metadata !881, metadata !DIExpression()), !dbg !975
  %79 = getelementptr inbounds i8, ptr %71, i64 %78, !dbg !1003
  call void @llvm.dbg.value(metadata ptr %79, metadata !875, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata i32 1, metadata !879, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata ptr %49, metadata !878, metadata !DIExpression(DW_OP_deref)), !dbg !975
  %80 = call fastcc i32 @x264_atobool(ptr noundef nonnull %58, ptr noundef nonnull %49), !dbg !1005
  %81 = icmp eq i32 %80, 0, !dbg !1005
  %82 = select i1 %81, ptr @.str.1, ptr @.str.4, !dbg !1005
  call void @llvm.dbg.value(metadata ptr %82, metadata !876, metadata !DIExpression()), !dbg !975
  br label %83, !dbg !1006

83:                                               ; preds = %77, %74
  %84 = phi ptr [ %58, %74 ], [ %82, %77 ], !dbg !975
  %85 = phi ptr [ %71, %74 ], [ %79, %77 ], !dbg !975
  call void @llvm.dbg.value(metadata ptr %85, metadata !875, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata ptr %84, metadata !876, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata i32 0, metadata !879, metadata !DIExpression()), !dbg !975
  %86 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(4) @.str.5) #29, !dbg !1007
  %87 = icmp eq i32 %86, 0, !dbg !1007
  br i1 %87, label %88, label %154, !dbg !1008

88:                                               ; preds = %83
  %89 = tail call ptr @__ctype_b_loc() #30, !dbg !1009
  %90 = load ptr, ptr %89, align 8, !dbg !1009, !tbaa !865
  %91 = load i8, ptr %84, align 1, !dbg !1009, !tbaa !985
  %92 = sext i8 %91 to i64, !dbg !1009
  %93 = getelementptr inbounds i16, ptr %90, i64 %92, !dbg !1009
  %94 = load i16, ptr %93, align 2, !dbg !1009, !tbaa !1010
  %95 = and i16 %94, 2048, !dbg !1009
  %96 = icmp eq i16 %95, 0, !dbg !1009
  br i1 %96, label %107, label %97, !dbg !1009

97:                                               ; preds = %88
  call void @llvm.dbg.value(metadata ptr %49, metadata !878, metadata !DIExpression(DW_OP_deref)), !dbg !975
  call void @llvm.dbg.value(metadata ptr %84, metadata !1012, metadata !DIExpression()), !dbg !1021
  call void @llvm.dbg.value(metadata ptr %49, metadata !1018, metadata !DIExpression()), !dbg !1021
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %48) #27, !dbg !1023
  call void @llvm.dbg.value(metadata ptr %48, metadata !1019, metadata !DIExpression(DW_OP_deref)), !dbg !1021
  %98 = call i64 @strtol(ptr noundef nonnull %84, ptr noundef nonnull %48, i32 noundef 0) #27, !dbg !1024
  call void @llvm.dbg.value(metadata i64 %98, metadata !1020, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1021
  %99 = load ptr, ptr %48, align 8, !dbg !1025, !tbaa !865
  call void @llvm.dbg.value(metadata ptr %99, metadata !1019, metadata !DIExpression()), !dbg !1021
  %100 = icmp eq ptr %99, %84, !dbg !1027
  br i1 %100, label %104, label %101, !dbg !1028

101:                                              ; preds = %97
  %102 = load i8, ptr %99, align 1, !dbg !1029, !tbaa !985
  %103 = icmp eq i8 %102, 0, !dbg !1030
  br i1 %103, label %105, label %104, !dbg !1031

104:                                              ; preds = %101, %97
  store i32 1, ptr %49, align 4, !dbg !1032, !tbaa !728
  br label %105, !dbg !1033

105:                                              ; preds = %101, %104
  %106 = trunc i64 %98 to i32, !dbg !1024
  call void @llvm.dbg.value(metadata i32 %106, metadata !1020, metadata !DIExpression()), !dbg !1021
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %48) #27, !dbg !1034
  br label %116, !dbg !1009

107:                                              ; preds = %88
  %108 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %84, ptr noundef nonnull dereferenceable(5) @.str.6) #29, !dbg !1035
  %109 = icmp eq i32 %108, 0, !dbg !1035
  br i1 %109, label %113, label %110, !dbg !1036

110:                                              ; preds = %107
  call void @llvm.dbg.value(metadata i32 1, metadata !879, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata ptr %49, metadata !878, metadata !DIExpression(DW_OP_deref)), !dbg !975
  %111 = call fastcc i32 @x264_atobool(ptr noundef nonnull %84, ptr noundef nonnull %49), !dbg !1037
  %112 = icmp eq i32 %111, 0, !dbg !1037
  br i1 %112, label %116, label %113, !dbg !1038

113:                                              ; preds = %110, %107
  %114 = phi i32 [ 1, %110 ], [ 0, %107 ], !dbg !975
  call void @llvm.dbg.value(metadata i32 %114, metadata !879, metadata !DIExpression()), !dbg !975
  %115 = tail call i32 @x264_cpu_detect() #27, !dbg !1039
  br label %116, !dbg !1038

116:                                              ; preds = %113, %110, %105
  %117 = phi i32 [ 0, %105 ], [ %114, %113 ], [ 1, %110 ], !dbg !975
  %118 = phi i32 [ %106, %105 ], [ %115, %113 ], [ 0, %110 ], !dbg !1009
  call void @llvm.dbg.value(metadata i32 %117, metadata !879, metadata !DIExpression()), !dbg !975
  store i32 %118, ptr %0, align 8, !dbg !1040, !tbaa !713
  %119 = load i32, ptr %49, align 4, !dbg !1041, !tbaa !728
  call void @llvm.dbg.value(metadata i32 %119, metadata !878, metadata !DIExpression()), !dbg !975
  %120 = icmp eq i32 %119, 0, !dbg !1041
  br i1 %120, label %1263, label %121, !dbg !1042

121:                                              ; preds = %116
  %122 = tail call noalias ptr @strdup(ptr noundef nonnull %84) #27, !dbg !1043
  call void @llvm.dbg.value(metadata ptr %122, metadata !885, metadata !DIExpression()), !dbg !1044
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %50) #27, !dbg !1045
  call void @llvm.dbg.value(metadata i32 0, metadata !878, metadata !DIExpression()), !dbg !975
  store i32 0, ptr %49, align 4, !dbg !1046, !tbaa !728
  store i32 0, ptr %0, align 8, !dbg !1047, !tbaa !713
  call void @llvm.dbg.value(metadata ptr %122, metadata !893, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.value(metadata ptr %50, metadata !892, metadata !DIExpression(DW_OP_deref)), !dbg !1044
  %123 = call ptr @strtok_r(ptr noundef %122, ptr noundef nonnull @.str.7, ptr noundef nonnull %50) #27, !dbg !1048
  call void @llvm.dbg.value(metadata ptr %123, metadata !891, metadata !DIExpression()), !dbg !1044
  %124 = icmp eq ptr %123, null, !dbg !1051
  br i1 %124, label %153, label %125, !dbg !1051

125:                                              ; preds = %121
  %126 = load i32, ptr getelementptr inbounds ([0 x %struct.x264_cpu_name_t], ptr @x264_cpu_names, i64 0, i64 0, i32 1), align 4, !tbaa !1052
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %131, !dbg !1054

128:                                              ; preds = %125, %128
  call void @llvm.dbg.value(metadata i32 0, metadata !881, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata i32 1, metadata !878, metadata !DIExpression()), !dbg !975
  store i32 1, ptr %49, align 4, !dbg !1058, !tbaa !728
  call void @llvm.dbg.value(metadata ptr null, metadata !893, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.value(metadata ptr %50, metadata !892, metadata !DIExpression(DW_OP_deref)), !dbg !1044
  %129 = call ptr @strtok_r(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull %50) #27, !dbg !1048
  call void @llvm.dbg.value(metadata ptr %129, metadata !891, metadata !DIExpression()), !dbg !1044
  %130 = icmp eq ptr %129, null, !dbg !1051
  br i1 %130, label %153, label %128, !dbg !1051, !llvm.loop !1060

131:                                              ; preds = %125, %150
  %132 = phi ptr [ %151, %150 ], [ %123, %125 ]
  call void @llvm.dbg.value(metadata i32 0, metadata !881, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata i64 0, metadata !881, metadata !DIExpression()), !dbg !975
  %133 = call i32 @strcasecmp(ptr noundef nonnull %132, ptr noundef nonnull @x264_cpu_names) #29, !dbg !1062
  %134 = icmp eq i32 %133, 0, !dbg !1054
  call void @llvm.dbg.value(metadata i64 0, metadata !881, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !975
  br i1 %134, label %145, label %135, !dbg !1063

135:                                              ; preds = %131, %141
  %136 = phi i64 [ %137, %141 ], [ 0, %131 ]
  call void @llvm.dbg.value(metadata i64 %136, metadata !881, metadata !DIExpression()), !dbg !975
  %137 = add nuw i64 %136, 1, !dbg !1064
  call void @llvm.dbg.value(metadata i32 poison, metadata !881, metadata !DIExpression()), !dbg !975
  %138 = getelementptr inbounds [0 x %struct.x264_cpu_name_t], ptr @x264_cpu_names, i64 0, i64 %137, i32 1, !dbg !1065
  %139 = load i32, ptr %138, align 4, !dbg !1065, !tbaa !1052
  %140 = icmp eq i32 %139, 0, !dbg !1066
  br i1 %140, label %149, label %141, !dbg !1054, !llvm.loop !1067

141:                                              ; preds = %135
  call void @llvm.dbg.value(metadata i64 %137, metadata !881, metadata !DIExpression()), !dbg !975
  %142 = getelementptr inbounds [0 x %struct.x264_cpu_name_t], ptr @x264_cpu_names, i64 0, i64 %137, !dbg !1066
  %143 = call i32 @strcasecmp(ptr noundef nonnull %132, ptr noundef nonnull %142) #29, !dbg !1062
  %144 = icmp eq i32 %143, 0, !dbg !1054
  call void @llvm.dbg.value(metadata i64 %137, metadata !881, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !975
  br i1 %144, label %145, label %135, !dbg !1063, !llvm.loop !1067

145:                                              ; preds = %141, %131
  %146 = phi i32 [ %126, %131 ], [ %139, %141 ]
  %147 = load i32, ptr %0, align 8, !dbg !1069, !tbaa !713
  %148 = or i32 %147, %146, !dbg !1069
  store i32 %148, ptr %0, align 8, !dbg !1069, !tbaa !713
  br label %150, !dbg !1070

149:                                              ; preds = %135
  call void @llvm.dbg.value(metadata i32 1, metadata !878, metadata !DIExpression()), !dbg !975
  store i32 1, ptr %49, align 4, !dbg !1058, !tbaa !728
  br label %150, !dbg !1071

150:                                              ; preds = %145, %149
  call void @llvm.dbg.value(metadata ptr null, metadata !893, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.value(metadata ptr %50, metadata !892, metadata !DIExpression(DW_OP_deref)), !dbg !1044
  %151 = call ptr @strtok_r(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull %50) #27, !dbg !1048
  call void @llvm.dbg.value(metadata ptr %151, metadata !891, metadata !DIExpression()), !dbg !1044
  %152 = icmp eq ptr %151, null, !dbg !1051
  br i1 %152, label %153, label %131, !dbg !1051, !llvm.loop !1060

153:                                              ; preds = %150, %128, %121
  call void @free(ptr noundef %122) #27, !dbg !1072
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %50) #27, !dbg !1073
  br label %1263, !dbg !1074

154:                                              ; preds = %83
  %155 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(8) @.str.8) #29, !dbg !1075
  %156 = icmp eq i32 %155, 0, !dbg !1075
  br i1 %156, label %157, label %173, !dbg !1076

157:                                              ; preds = %154
  %158 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %84, ptr noundef nonnull dereferenceable(5) @.str.6) #29, !dbg !1077
  %159 = icmp eq i32 %158, 0, !dbg !1077
  br i1 %159, label %160, label %162, !dbg !1080

160:                                              ; preds = %157
  %161 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 1, !dbg !1081
  store i32 0, ptr %161, align 4, !dbg !1082, !tbaa !1083
  br label %1263, !dbg !1084

162:                                              ; preds = %157
  call void @llvm.dbg.value(metadata ptr %49, metadata !878, metadata !DIExpression(DW_OP_deref)), !dbg !975
  call void @llvm.dbg.value(metadata ptr %84, metadata !1012, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata ptr %49, metadata !1018, metadata !DIExpression()), !dbg !1085
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %47) #27, !dbg !1087
  call void @llvm.dbg.value(metadata ptr %47, metadata !1019, metadata !DIExpression(DW_OP_deref)), !dbg !1085
  %163 = call i64 @strtol(ptr noundef %84, ptr noundef nonnull %47, i32 noundef 0) #27, !dbg !1088
  call void @llvm.dbg.value(metadata i64 %163, metadata !1020, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1085
  %164 = load ptr, ptr %47, align 8, !dbg !1089, !tbaa !865
  call void @llvm.dbg.value(metadata ptr %164, metadata !1019, metadata !DIExpression()), !dbg !1085
  %165 = icmp eq ptr %164, %84, !dbg !1090
  br i1 %165, label %169, label %166, !dbg !1091

166:                                              ; preds = %162
  %167 = load i8, ptr %164, align 1, !dbg !1092, !tbaa !985
  %168 = icmp eq i8 %167, 0, !dbg !1093
  br i1 %168, label %170, label %169, !dbg !1094

169:                                              ; preds = %166, %162
  store i32 1, ptr %49, align 4, !dbg !1095, !tbaa !728
  br label %170, !dbg !1096

170:                                              ; preds = %166, %169
  %171 = trunc i64 %163 to i32, !dbg !1088
  call void @llvm.dbg.value(metadata i32 %171, metadata !1020, metadata !DIExpression()), !dbg !1085
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %47) #27, !dbg !1097
  %172 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 1, !dbg !1098
  store i32 %171, ptr %172, align 4, !dbg !1099, !tbaa !1083
  br label %1263

173:                                              ; preds = %154
  %174 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(14) @.str.9) #29, !dbg !1100
  %175 = icmp eq i32 %174, 0, !dbg !1100
  br i1 %175, label %179, label %176, !dbg !1100

176:                                              ; preds = %173
  %177 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(16) @.str.10) #29, !dbg !1100
  %178 = icmp eq i32 %177, 0, !dbg !1100
  br i1 %178, label %179, label %182, !dbg !1101

179:                                              ; preds = %176, %173
  call void @llvm.dbg.value(metadata i32 1, metadata !879, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata ptr %49, metadata !878, metadata !DIExpression(DW_OP_deref)), !dbg !975
  %180 = call fastcc i32 @x264_atobool(ptr noundef %84, ptr noundef nonnull %49), !dbg !1102
  %181 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 2, !dbg !1103
  store i32 %180, ptr %181, align 8, !dbg !1104, !tbaa !1105
  br label %1263, !dbg !1106

182:                                              ; preds = %176
  %183 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(6) @.str.11) #29, !dbg !1107
  %184 = icmp eq i32 %183, 0, !dbg !1107
  br i1 %184, label %188, label %185, !dbg !1107

185:                                              ; preds = %182
  %186 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(10) @.str.12) #29, !dbg !1107
  %187 = icmp eq i32 %186, 0, !dbg !1107
  br i1 %187, label %188, label %222, !dbg !1108

188:                                              ; preds = %185, %182
  call void @llvm.dbg.value(metadata ptr %49, metadata !878, metadata !DIExpression(DW_OP_deref)), !dbg !975
  call void @llvm.dbg.value(metadata ptr %84, metadata !1109, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata ptr %49, metadata !1115, metadata !DIExpression()), !dbg !1118
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %46) #27, !dbg !1122
  call void @llvm.dbg.value(metadata ptr %46, metadata !1116, metadata !DIExpression(DW_OP_deref)), !dbg !1118
  %189 = call fast double @strtod(ptr noundef %84, ptr noundef nonnull %46) #27, !dbg !1123
  call void @llvm.dbg.value(metadata double %189, metadata !1117, metadata !DIExpression()), !dbg !1118
  %190 = load ptr, ptr %46, align 8, !dbg !1124, !tbaa !865
  call void @llvm.dbg.value(metadata ptr %190, metadata !1116, metadata !DIExpression()), !dbg !1118
  %191 = icmp eq ptr %190, %84, !dbg !1126
  br i1 %191, label %195, label %192, !dbg !1127

192:                                              ; preds = %188
  %193 = load i8, ptr %190, align 1, !dbg !1128, !tbaa !985
  %194 = icmp eq i8 %193, 0, !dbg !1129
  br i1 %194, label %196, label %195, !dbg !1130

195:                                              ; preds = %192, %188
  store i32 1, ptr %49, align 4, !dbg !1131, !tbaa !728
  br label %196, !dbg !1132

196:                                              ; preds = %192, %195
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %46) #27, !dbg !1133
  %197 = fcmp fast olt double %189, 6.000000e+00, !dbg !1134
  call void @llvm.dbg.value(metadata ptr %49, metadata !878, metadata !DIExpression(DW_OP_deref)), !dbg !975
  call void @llvm.dbg.value(metadata ptr %49, metadata !878, metadata !DIExpression(DW_OP_deref)), !dbg !975
  br i1 %197, label %198, label %211, !dbg !1135

198:                                              ; preds = %196
  call void @llvm.dbg.value(metadata ptr %84, metadata !1109, metadata !DIExpression()), !dbg !1136
  call void @llvm.dbg.value(metadata ptr %49, metadata !1115, metadata !DIExpression()), !dbg !1136
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %45) #27, !dbg !1138
  call void @llvm.dbg.value(metadata ptr %45, metadata !1116, metadata !DIExpression(DW_OP_deref)), !dbg !1136
  %199 = call fast double @strtod(ptr noundef %84, ptr noundef nonnull %45) #27, !dbg !1139
  call void @llvm.dbg.value(metadata double %199, metadata !1117, metadata !DIExpression()), !dbg !1136
  %200 = load ptr, ptr %45, align 8, !dbg !1140, !tbaa !865
  call void @llvm.dbg.value(metadata ptr %200, metadata !1116, metadata !DIExpression()), !dbg !1136
  %201 = icmp eq ptr %200, %84, !dbg !1141
  br i1 %201, label %205, label %202, !dbg !1142

202:                                              ; preds = %198
  %203 = load i8, ptr %200, align 1, !dbg !1143, !tbaa !985
  %204 = icmp eq i8 %203, 0, !dbg !1144
  br i1 %204, label %206, label %205, !dbg !1145

205:                                              ; preds = %202, %198
  store i32 1, ptr %49, align 4, !dbg !1146, !tbaa !728
  br label %206, !dbg !1147

206:                                              ; preds = %202, %205
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %45) #27, !dbg !1148
  %207 = fmul fast double %199, 1.000000e+01, !dbg !1149
  %208 = fadd fast double %207, 5.000000e-01, !dbg !1150
  %209 = fptosi double %208 to i32, !dbg !1151
  %210 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 6, !dbg !1152
  store i32 %209, ptr %210, align 8, !dbg !1153, !tbaa !736
  br label %1263, !dbg !1154

211:                                              ; preds = %196
  call void @llvm.dbg.value(metadata ptr %84, metadata !1012, metadata !DIExpression()), !dbg !1155
  call void @llvm.dbg.value(metadata ptr %49, metadata !1018, metadata !DIExpression()), !dbg !1155
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %44) #27, !dbg !1157
  call void @llvm.dbg.value(metadata ptr %44, metadata !1019, metadata !DIExpression(DW_OP_deref)), !dbg !1155
  %212 = call i64 @strtol(ptr noundef %84, ptr noundef nonnull %44, i32 noundef 0) #27, !dbg !1158
  call void @llvm.dbg.value(metadata i64 %212, metadata !1020, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1155
  %213 = load ptr, ptr %44, align 8, !dbg !1159, !tbaa !865
  call void @llvm.dbg.value(metadata ptr %213, metadata !1019, metadata !DIExpression()), !dbg !1155
  %214 = icmp eq ptr %213, %84, !dbg !1160
  br i1 %214, label %218, label %215, !dbg !1161

215:                                              ; preds = %211
  %216 = load i8, ptr %213, align 1, !dbg !1162, !tbaa !985
  %217 = icmp eq i8 %216, 0, !dbg !1163
  br i1 %217, label %219, label %218, !dbg !1164

218:                                              ; preds = %215, %211
  store i32 1, ptr %49, align 4, !dbg !1165, !tbaa !728
  br label %219, !dbg !1166

219:                                              ; preds = %215, %218
  %220 = trunc i64 %212 to i32, !dbg !1158
  call void @llvm.dbg.value(metadata i32 %220, metadata !1020, metadata !DIExpression()), !dbg !1155
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %44) #27, !dbg !1167
  %221 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 6, !dbg !1168
  store i32 %220, ptr %221, align 8, !dbg !1169, !tbaa !736
  br label %1263

222:                                              ; preds = %185
  %223 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(4) @.str.13) #29, !dbg !1170
  %224 = icmp eq i32 %223, 0, !dbg !1170
  br i1 %224, label %225, label %236, !dbg !1171

225:                                              ; preds = %222
  %226 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 8, !dbg !1172
  %227 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 8, i32 1, !dbg !1174
  %228 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %84, ptr noundef nonnull @.str.14, ptr noundef nonnull %227, ptr noundef nonnull %226) #27, !dbg !1175
  %229 = icmp eq i32 %228, 2, !dbg !1176
  br i1 %229, label %234, label %230, !dbg !1177

230:                                              ; preds = %225
  %231 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %84, ptr noundef nonnull @.str.15, ptr noundef nonnull %227, ptr noundef nonnull %226) #27, !dbg !1178
  %232 = icmp ne i32 %231, 2, !dbg !1179
  %233 = zext i1 %232 to i32, !dbg !1177
  br label %234

234:                                              ; preds = %230, %225
  %235 = phi i32 [ 0, %225 ], [ %233, %230 ]
  call void @llvm.dbg.value(metadata i32 %235, metadata !878, metadata !DIExpression()), !dbg !975
  store i32 %235, ptr %49, align 4, !dbg !1180, !tbaa !728
  br label %1263, !dbg !1181

236:                                              ; preds = %222
  %237 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(9) @.str.16) #29, !dbg !1182
  %238 = icmp eq i32 %237, 0, !dbg !1182
  br i1 %238, label %239, label %244, !dbg !1183

239:                                              ; preds = %236
  %240 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 8, i32 2, !dbg !1184
  %241 = tail call fastcc i32 @parse_enum(ptr noundef %84, ptr noundef nonnull @x264_overscan_names, ptr noundef nonnull %240), !dbg !1185
  %242 = load i32, ptr %49, align 4, !dbg !1186, !tbaa !728
  call void @llvm.dbg.value(metadata i32 %242, metadata !878, metadata !DIExpression()), !dbg !975
  %243 = or i32 %242, %241, !dbg !1186
  call void @llvm.dbg.value(metadata i32 %243, metadata !878, metadata !DIExpression()), !dbg !975
  store i32 %243, ptr %49, align 4, !dbg !1186, !tbaa !728
  br label %1263, !dbg !1187

244:                                              ; preds = %236
  %245 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(12) @.str.17) #29, !dbg !1188
  %246 = icmp eq i32 %245, 0, !dbg !1188
  br i1 %246, label %247, label %252, !dbg !1189

247:                                              ; preds = %244
  %248 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 8, i32 3, !dbg !1190
  %249 = tail call fastcc i32 @parse_enum(ptr noundef %84, ptr noundef nonnull @x264_vidformat_names, ptr noundef nonnull %248), !dbg !1191
  %250 = load i32, ptr %49, align 4, !dbg !1192, !tbaa !728
  call void @llvm.dbg.value(metadata i32 %250, metadata !878, metadata !DIExpression()), !dbg !975
  %251 = or i32 %250, %249, !dbg !1192
  call void @llvm.dbg.value(metadata i32 %251, metadata !878, metadata !DIExpression()), !dbg !975
  store i32 %251, ptr %49, align 4, !dbg !1192, !tbaa !728
  br label %1263, !dbg !1193

252:                                              ; preds = %244
  %253 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(10) @.str.18) #29, !dbg !1194
  %254 = icmp eq i32 %253, 0, !dbg !1194
  br i1 %254, label %255, label %260, !dbg !1195

255:                                              ; preds = %252
  %256 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 8, i32 4, !dbg !1196
  %257 = tail call fastcc i32 @parse_enum(ptr noundef %84, ptr noundef nonnull @x264_fullrange_names, ptr noundef nonnull %256), !dbg !1197
  %258 = load i32, ptr %49, align 4, !dbg !1198, !tbaa !728
  call void @llvm.dbg.value(metadata i32 %258, metadata !878, metadata !DIExpression()), !dbg !975
  %259 = or i32 %258, %257, !dbg !1198
  call void @llvm.dbg.value(metadata i32 %259, metadata !878, metadata !DIExpression()), !dbg !975
  store i32 %259, ptr %49, align 4, !dbg !1198, !tbaa !728
  br label %1263, !dbg !1199

260:                                              ; preds = %252
  %261 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(10) @.str.19) #29, !dbg !1200
  %262 = icmp eq i32 %261, 0, !dbg !1200
  br i1 %262, label %263, label %268, !dbg !1201

263:                                              ; preds = %260
  %264 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 8, i32 5, !dbg !1202
  %265 = tail call fastcc i32 @parse_enum(ptr noundef %84, ptr noundef nonnull @x264_colorprim_names, ptr noundef nonnull %264), !dbg !1203
  %266 = load i32, ptr %49, align 4, !dbg !1204, !tbaa !728
  call void @llvm.dbg.value(metadata i32 %266, metadata !878, metadata !DIExpression()), !dbg !975
  %267 = or i32 %266, %265, !dbg !1204
  call void @llvm.dbg.value(metadata i32 %267, metadata !878, metadata !DIExpression()), !dbg !975
  store i32 %267, ptr %49, align 4, !dbg !1204, !tbaa !728
  br label %1263, !dbg !1205

268:                                              ; preds = %260
  %269 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(9) @.str.20) #29, !dbg !1206
  %270 = icmp eq i32 %269, 0, !dbg !1206
  br i1 %270, label %271, label %276, !dbg !1207

271:                                              ; preds = %268
  %272 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 8, i32 6, !dbg !1208
  %273 = tail call fastcc i32 @parse_enum(ptr noundef %84, ptr noundef nonnull @x264_transfer_names, ptr noundef nonnull %272), !dbg !1209
  %274 = load i32, ptr %49, align 4, !dbg !1210, !tbaa !728
  call void @llvm.dbg.value(metadata i32 %274, metadata !878, metadata !DIExpression()), !dbg !975
  %275 = or i32 %274, %273, !dbg !1210
  call void @llvm.dbg.value(metadata i32 %275, metadata !878, metadata !DIExpression()), !dbg !975
  store i32 %275, ptr %49, align 4, !dbg !1210, !tbaa !728
  br label %1263, !dbg !1211

276:                                              ; preds = %268
  %277 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(12) @.str.21) #29, !dbg !1212
  %278 = icmp eq i32 %277, 0, !dbg !1212
  br i1 %278, label %279, label %284, !dbg !1213

279:                                              ; preds = %276
  %280 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 8, i32 7, !dbg !1214
  %281 = tail call fastcc i32 @parse_enum(ptr noundef %84, ptr noundef nonnull @x264_colmatrix_names, ptr noundef nonnull %280), !dbg !1215
  %282 = load i32, ptr %49, align 4, !dbg !1216, !tbaa !728
  call void @llvm.dbg.value(metadata i32 %282, metadata !878, metadata !DIExpression()), !dbg !975
  %283 = or i32 %282, %281, !dbg !1216
  call void @llvm.dbg.value(metadata i32 %283, metadata !878, metadata !DIExpression()), !dbg !975
  store i32 %283, ptr %49, align 4, !dbg !1216, !tbaa !728
  br label %1263, !dbg !1217

284:                                              ; preds = %276
  %285 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(10) @.str.22) #29, !dbg !1218
  %286 = icmp eq i32 %285, 0, !dbg !1218
  br i1 %286, label %287, label %293, !dbg !1219

287:                                              ; preds = %284
  call void @llvm.dbg.value(metadata ptr %49, metadata !878, metadata !DIExpression(DW_OP_deref)), !dbg !975
  call void @llvm.dbg.value(metadata ptr %84, metadata !1012, metadata !DIExpression()), !dbg !1220
  call void @llvm.dbg.value(metadata ptr %49, metadata !1018, metadata !DIExpression()), !dbg !1220
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %43) #27, !dbg !1223
  call void @llvm.dbg.value(metadata ptr %43, metadata !1019, metadata !DIExpression(DW_OP_deref)), !dbg !1220
  %288 = call i64 @strtol(ptr noundef %84, ptr noundef nonnull %43, i32 noundef 0) #27, !dbg !1224
  call void @llvm.dbg.value(metadata i64 %288, metadata !1020, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1220
  call void @llvm.dbg.value(metadata ptr poison, metadata !1019, metadata !DIExpression()), !dbg !1220
  %289 = trunc i64 %288 to i32, !dbg !1224
  call void @llvm.dbg.value(metadata i32 %289, metadata !1020, metadata !DIExpression()), !dbg !1220
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %43) #27, !dbg !1225
  %290 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 8, i32 8, !dbg !1226
  store i32 %289, ptr %290, align 8, !dbg !1227, !tbaa !1228
  %291 = icmp ugt i32 %289, 5, !dbg !1229
  %292 = zext i1 %291 to i32, !dbg !1229
  call void @llvm.dbg.value(metadata i32 %292, metadata !878, metadata !DIExpression()), !dbg !975
  store i32 %292, ptr %49, align 4, !dbg !1230, !tbaa !728
  br label %1263, !dbg !1231

293:                                              ; preds = %284
  %294 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(4) @.str.23) #29, !dbg !1232
  %295 = icmp eq i32 %294, 0, !dbg !1232
  br i1 %295, label %296, label %315, !dbg !1233

296:                                              ; preds = %293
  %297 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 9, !dbg !1234
  %298 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 10, !dbg !1235
  %299 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %84, ptr noundef nonnull @.str.15, ptr noundef nonnull %297, ptr noundef nonnull %298) #27, !dbg !1236
  %300 = icmp eq i32 %299, 2, !dbg !1237
  br i1 %300, label %1263, label %301, !dbg !1238

301:                                              ; preds = %296
  call void @llvm.dbg.value(metadata ptr %49, metadata !878, metadata !DIExpression(DW_OP_deref)), !dbg !975
  call void @llvm.dbg.value(metadata ptr %84, metadata !1109, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.value(metadata ptr %49, metadata !1115, metadata !DIExpression()), !dbg !1239
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %42) #27, !dbg !1241
  call void @llvm.dbg.value(metadata ptr %42, metadata !1116, metadata !DIExpression(DW_OP_deref)), !dbg !1239
  %302 = call fast double @strtod(ptr noundef %84, ptr noundef nonnull %42) #27, !dbg !1242
  call void @llvm.dbg.value(metadata double %302, metadata !1117, metadata !DIExpression()), !dbg !1239
  %303 = load ptr, ptr %42, align 8, !dbg !1243, !tbaa !865
  call void @llvm.dbg.value(metadata ptr %303, metadata !1116, metadata !DIExpression()), !dbg !1239
  %304 = icmp eq ptr %303, %84, !dbg !1244
  br i1 %304, label %308, label %305, !dbg !1245

305:                                              ; preds = %301
  %306 = load i8, ptr %303, align 1, !dbg !1246, !tbaa !985
  %307 = icmp eq i8 %306, 0, !dbg !1247
  br i1 %307, label %309, label %308, !dbg !1248

308:                                              ; preds = %305, %301
  store i32 1, ptr %49, align 4, !dbg !1249, !tbaa !728
  br label %309, !dbg !1250

309:                                              ; preds = %305, %308
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %42) #27, !dbg !1251
  %310 = fptrunc double %302 to float, !dbg !1252
  call void @llvm.dbg.value(metadata float %310, metadata !894, metadata !DIExpression()), !dbg !1253
  %311 = fmul fast float %310, 1.000000e+03, !dbg !1254
  %312 = fpext float %311 to double, !dbg !1255
  %313 = fadd fast double %312, 5.000000e-01, !dbg !1256
  %314 = fptosi double %313 to i32, !dbg !1257
  store i32 %314, ptr %297, align 4, !dbg !1258, !tbaa !1259
  store i32 1000, ptr %298, align 8, !dbg !1260, !tbaa !1261
  br label %1263

315:                                              ; preds = %293
  %316 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(4) @.str.24) #29, !dbg !1262
  %317 = icmp eq i32 %316, 0, !dbg !1262
  br i1 %317, label %321, label %318, !dbg !1262

318:                                              ; preds = %315
  %319 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(9) @.str.25) #29, !dbg !1262
  %320 = icmp eq i32 %319, 0, !dbg !1262
  br i1 %320, label %321, label %332, !dbg !1263

321:                                              ; preds = %318, %315
  call void @llvm.dbg.value(metadata ptr %49, metadata !878, metadata !DIExpression(DW_OP_deref)), !dbg !975
  call void @llvm.dbg.value(metadata ptr %84, metadata !1012, metadata !DIExpression()), !dbg !1264
  call void @llvm.dbg.value(metadata ptr %49, metadata !1018, metadata !DIExpression()), !dbg !1264
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %41) #27, !dbg !1266
  call void @llvm.dbg.value(metadata ptr %41, metadata !1019, metadata !DIExpression(DW_OP_deref)), !dbg !1264
  %322 = call i64 @strtol(ptr noundef %84, ptr noundef nonnull %41, i32 noundef 0) #27, !dbg !1267
  call void @llvm.dbg.value(metadata i64 %322, metadata !1020, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1264
  %323 = load ptr, ptr %41, align 8, !dbg !1268, !tbaa !865
  call void @llvm.dbg.value(metadata ptr %323, metadata !1019, metadata !DIExpression()), !dbg !1264
  %324 = icmp eq ptr %323, %84, !dbg !1269
  br i1 %324, label %328, label %325, !dbg !1270

325:                                              ; preds = %321
  %326 = load i8, ptr %323, align 1, !dbg !1271, !tbaa !985
  %327 = icmp eq i8 %326, 0, !dbg !1272
  br i1 %327, label %329, label %328, !dbg !1273

328:                                              ; preds = %325, %321
  store i32 1, ptr %49, align 4, !dbg !1274, !tbaa !728
  br label %329, !dbg !1275

329:                                              ; preds = %325, %328
  %330 = trunc i64 %322 to i32, !dbg !1267
  call void @llvm.dbg.value(metadata i32 %330, metadata !1020, metadata !DIExpression()), !dbg !1264
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %41) #27, !dbg !1276
  %331 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 11, !dbg !1277
  store i32 %330, ptr %331, align 4, !dbg !1278, !tbaa !1279
  br label %1263, !dbg !1280

332:                                              ; preds = %318
  %333 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(7) @.str.26) #29, !dbg !1281
  %334 = icmp eq i32 %333, 0, !dbg !1281
  br i1 %334, label %335, label %350, !dbg !1282

335:                                              ; preds = %332
  call void @llvm.dbg.value(metadata ptr %49, metadata !878, metadata !DIExpression(DW_OP_deref)), !dbg !975
  call void @llvm.dbg.value(metadata ptr %84, metadata !1012, metadata !DIExpression()), !dbg !1283
  call void @llvm.dbg.value(metadata ptr %49, metadata !1018, metadata !DIExpression()), !dbg !1283
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %40) #27, !dbg !1286
  call void @llvm.dbg.value(metadata ptr %40, metadata !1019, metadata !DIExpression(DW_OP_deref)), !dbg !1283
  %336 = call i64 @strtol(ptr noundef %84, ptr noundef nonnull %40, i32 noundef 0) #27, !dbg !1287
  call void @llvm.dbg.value(metadata i64 %336, metadata !1020, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1283
  %337 = load ptr, ptr %40, align 8, !dbg !1288, !tbaa !865
  call void @llvm.dbg.value(metadata ptr %337, metadata !1019, metadata !DIExpression()), !dbg !1283
  %338 = icmp eq ptr %337, %84, !dbg !1289
  br i1 %338, label %342, label %339, !dbg !1290

339:                                              ; preds = %335
  %340 = load i8, ptr %337, align 1, !dbg !1291, !tbaa !985
  %341 = icmp eq i8 %340, 0, !dbg !1292
  br i1 %341, label %343, label %342, !dbg !1293

342:                                              ; preds = %339, %335
  store i32 1, ptr %49, align 4, !dbg !1294, !tbaa !728
  br label %343, !dbg !1295

343:                                              ; preds = %339, %342
  %344 = trunc i64 %336 to i32, !dbg !1287
  call void @llvm.dbg.value(metadata i32 %344, metadata !1020, metadata !DIExpression()), !dbg !1283
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %40) #27, !dbg !1296
  %345 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 12, !dbg !1297
  store i32 %344, ptr %345, align 8, !dbg !1298, !tbaa !740
  %346 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 13, !dbg !1299
  %347 = load i32, ptr %346, align 4, !dbg !1299, !tbaa !743
  %348 = icmp sgt i32 %347, %344, !dbg !1301
  br i1 %348, label %349, label %1263, !dbg !1302

349:                                              ; preds = %343
  store i32 %344, ptr %346, align 4, !dbg !1303, !tbaa !743
  br label %1263, !dbg !1304

350:                                              ; preds = %332
  %351 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(11) @.str.27) #29, !dbg !1305
  %352 = icmp eq i32 %351, 0, !dbg !1305
  br i1 %352, label %356, label %353, !dbg !1305

353:                                              ; preds = %350
  %354 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(11) @.str.28) #29, !dbg !1305
  %355 = icmp eq i32 %354, 0, !dbg !1305
  br i1 %355, label %356, label %371, !dbg !1306

356:                                              ; preds = %353, %350
  call void @llvm.dbg.value(metadata ptr %49, metadata !878, metadata !DIExpression(DW_OP_deref)), !dbg !975
  call void @llvm.dbg.value(metadata ptr %84, metadata !1012, metadata !DIExpression()), !dbg !1307
  call void @llvm.dbg.value(metadata ptr %49, metadata !1018, metadata !DIExpression()), !dbg !1307
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %39) #27, !dbg !1310
  call void @llvm.dbg.value(metadata ptr %39, metadata !1019, metadata !DIExpression(DW_OP_deref)), !dbg !1307
  %357 = call i64 @strtol(ptr noundef %84, ptr noundef nonnull %39, i32 noundef 0) #27, !dbg !1311
  call void @llvm.dbg.value(metadata i64 %357, metadata !1020, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1307
  %358 = load ptr, ptr %39, align 8, !dbg !1312, !tbaa !865
  call void @llvm.dbg.value(metadata ptr %358, metadata !1019, metadata !DIExpression()), !dbg !1307
  %359 = icmp eq ptr %358, %84, !dbg !1313
  br i1 %359, label %363, label %360, !dbg !1314

360:                                              ; preds = %356
  %361 = load i8, ptr %358, align 1, !dbg !1315, !tbaa !985
  %362 = icmp eq i8 %361, 0, !dbg !1316
  br i1 %362, label %364, label %363, !dbg !1317

363:                                              ; preds = %360, %356
  store i32 1, ptr %49, align 4, !dbg !1318, !tbaa !728
  br label %364, !dbg !1319

364:                                              ; preds = %360, %363
  %365 = trunc i64 %357 to i32, !dbg !1311
  call void @llvm.dbg.value(metadata i32 %365, metadata !1020, metadata !DIExpression()), !dbg !1307
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %39) #27, !dbg !1320
  %366 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 13, !dbg !1321
  store i32 %365, ptr %366, align 4, !dbg !1322, !tbaa !743
  %367 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 12, !dbg !1323
  %368 = load i32, ptr %367, align 8, !dbg !1323, !tbaa !740
  %369 = icmp slt i32 %368, %365, !dbg !1325
  br i1 %369, label %370, label %1263, !dbg !1326

370:                                              ; preds = %364
  store i32 %365, ptr %367, align 8, !dbg !1327, !tbaa !740
  br label %1263, !dbg !1328

371:                                              ; preds = %353
  %372 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(9) @.str.29) #29, !dbg !1329
  %373 = icmp eq i32 %372, 0, !dbg !1329
  br i1 %373, label %374, label %385, !dbg !1330

374:                                              ; preds = %371
  call void @llvm.dbg.value(metadata ptr %49, metadata !878, metadata !DIExpression(DW_OP_deref)), !dbg !975
  call void @llvm.dbg.value(metadata ptr %84, metadata !1012, metadata !DIExpression()), !dbg !1331
  call void @llvm.dbg.value(metadata ptr %49, metadata !1018, metadata !DIExpression()), !dbg !1331
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %38) #27, !dbg !1333
  call void @llvm.dbg.value(metadata ptr %38, metadata !1019, metadata !DIExpression(DW_OP_deref)), !dbg !1331
  %375 = call i64 @strtol(ptr noundef %84, ptr noundef nonnull %38, i32 noundef 0) #27, !dbg !1334
  call void @llvm.dbg.value(metadata i64 %375, metadata !1020, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1331
  %376 = load ptr, ptr %38, align 8, !dbg !1335, !tbaa !865
  call void @llvm.dbg.value(metadata ptr %376, metadata !1019, metadata !DIExpression()), !dbg !1331
  %377 = icmp eq ptr %376, %84, !dbg !1336
  br i1 %377, label %381, label %378, !dbg !1337

378:                                              ; preds = %374
  %379 = load i8, ptr %376, align 1, !dbg !1338, !tbaa !985
  %380 = icmp eq i8 %379, 0, !dbg !1339
  br i1 %380, label %382, label %381, !dbg !1340

381:                                              ; preds = %378, %374
  store i32 1, ptr %49, align 4, !dbg !1341, !tbaa !728
  br label %382, !dbg !1342

382:                                              ; preds = %378, %381
  %383 = trunc i64 %375 to i32, !dbg !1334
  call void @llvm.dbg.value(metadata i32 %383, metadata !1020, metadata !DIExpression()), !dbg !1331
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %38) #27, !dbg !1343
  %384 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 14, !dbg !1344
  store i32 %383, ptr %384, align 8, !dbg !1345, !tbaa !747
  br label %1263, !dbg !1346

385:                                              ; preds = %371
  %386 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(13) @.str.30) #29, !dbg !1347
  %387 = icmp eq i32 %386, 0, !dbg !1347
  br i1 %387, label %388, label %391, !dbg !1348

388:                                              ; preds = %385
  call void @llvm.dbg.value(metadata i32 1, metadata !879, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata ptr %49, metadata !878, metadata !DIExpression(DW_OP_deref)), !dbg !975
  %389 = call fastcc i32 @x264_atobool(ptr noundef %84, ptr noundef nonnull %49), !dbg !1349
  %390 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 15, !dbg !1350
  store i32 %389, ptr %390, align 4, !dbg !1351, !tbaa !1352
  br label %1263, !dbg !1353

391:                                              ; preds = %385
  %392 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(8) @.str.31) #29, !dbg !1354
  %393 = icmp eq i32 %392, 0, !dbg !1354
  br i1 %393, label %394, label %405, !dbg !1355

394:                                              ; preds = %391
  call void @llvm.dbg.value(metadata ptr %49, metadata !878, metadata !DIExpression(DW_OP_deref)), !dbg !975
  call void @llvm.dbg.value(metadata ptr %84, metadata !1012, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata ptr %49, metadata !1018, metadata !DIExpression()), !dbg !1356
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %37) #27, !dbg !1358
  call void @llvm.dbg.value(metadata ptr %37, metadata !1019, metadata !DIExpression(DW_OP_deref)), !dbg !1356
  %395 = call i64 @strtol(ptr noundef %84, ptr noundef nonnull %37, i32 noundef 0) #27, !dbg !1359
  call void @llvm.dbg.value(metadata i64 %395, metadata !1020, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1356
  %396 = load ptr, ptr %37, align 8, !dbg !1360, !tbaa !865
  call void @llvm.dbg.value(metadata ptr %396, metadata !1019, metadata !DIExpression()), !dbg !1356
  %397 = icmp eq ptr %396, %84, !dbg !1361
  br i1 %397, label %401, label %398, !dbg !1362

398:                                              ; preds = %394
  %399 = load i8, ptr %396, align 1, !dbg !1363, !tbaa !985
  %400 = icmp eq i8 %399, 0, !dbg !1364
  br i1 %400, label %402, label %401, !dbg !1365

401:                                              ; preds = %398, %394
  store i32 1, ptr %49, align 4, !dbg !1366, !tbaa !728
  br label %402, !dbg !1367

402:                                              ; preds = %398, %401
  %403 = trunc i64 %395 to i32, !dbg !1359
  call void @llvm.dbg.value(metadata i32 %403, metadata !1020, metadata !DIExpression()), !dbg !1356
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %37) #27, !dbg !1368
  %404 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 16, !dbg !1369
  store i32 %403, ptr %404, align 8, !dbg !1370, !tbaa !1371
  br label %1263, !dbg !1372

405:                                              ; preds = %391
  %406 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(8) @.str.32) #29, !dbg !1373
  %407 = icmp eq i32 %406, 0, !dbg !1373
  br i1 %407, label %408, label %423, !dbg !1374

408:                                              ; preds = %405
  call void @llvm.dbg.value(metadata i32 1, metadata !879, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata ptr %49, metadata !878, metadata !DIExpression(DW_OP_deref)), !dbg !975
  %409 = call fastcc i32 @x264_atobool(ptr noundef %84, ptr noundef nonnull %49), !dbg !1375
  %410 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 17, !dbg !1377
  store i32 %409, ptr %410, align 4, !dbg !1378, !tbaa !1379
  %411 = load i32, ptr %49, align 4, !dbg !1380, !tbaa !728
  call void @llvm.dbg.value(metadata i32 %411, metadata !878, metadata !DIExpression()), !dbg !975
  %412 = icmp eq i32 %411, 0, !dbg !1380
  br i1 %412, label %1263, label %413, !dbg !1382

413:                                              ; preds = %408
  call void @llvm.dbg.value(metadata i32 0, metadata !878, metadata !DIExpression()), !dbg !975
  store i32 0, ptr %49, align 4, !dbg !1383, !tbaa !728
  call void @llvm.dbg.value(metadata ptr %49, metadata !878, metadata !DIExpression(DW_OP_deref)), !dbg !975
  call void @llvm.dbg.value(metadata ptr %84, metadata !1012, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata ptr %49, metadata !1018, metadata !DIExpression()), !dbg !1385
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %36) #27, !dbg !1387
  call void @llvm.dbg.value(metadata ptr %36, metadata !1019, metadata !DIExpression(DW_OP_deref)), !dbg !1385
  %414 = call i64 @strtol(ptr noundef %84, ptr noundef nonnull %36, i32 noundef 0) #27, !dbg !1388
  call void @llvm.dbg.value(metadata i64 %414, metadata !1020, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1385
  %415 = load ptr, ptr %36, align 8, !dbg !1389, !tbaa !865
  call void @llvm.dbg.value(metadata ptr %415, metadata !1019, metadata !DIExpression()), !dbg !1385
  %416 = icmp eq ptr %415, %84, !dbg !1390
  br i1 %416, label %420, label %417, !dbg !1391

417:                                              ; preds = %413
  %418 = load i8, ptr %415, align 1, !dbg !1392, !tbaa !985
  %419 = icmp eq i8 %418, 0, !dbg !1393
  br i1 %419, label %421, label %420, !dbg !1394

420:                                              ; preds = %417, %413
  store i32 1, ptr %49, align 4, !dbg !1395, !tbaa !728
  br label %421, !dbg !1396

421:                                              ; preds = %417, %420
  %422 = trunc i64 %414 to i32, !dbg !1388
  call void @llvm.dbg.value(metadata i32 %422, metadata !1020, metadata !DIExpression()), !dbg !1385
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %36) #27, !dbg !1397
  store i32 %422, ptr %410, align 4, !dbg !1398, !tbaa !1379
  br label %1263, !dbg !1399

423:                                              ; preds = %405
  %424 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(7) @.str.33) #29, !dbg !1400
  %425 = icmp eq i32 %424, 0, !dbg !1400
  br i1 %425, label %426, label %437, !dbg !1401

426:                                              ; preds = %423
  call void @llvm.dbg.value(metadata ptr %49, metadata !878, metadata !DIExpression(DW_OP_deref)), !dbg !975
  call void @llvm.dbg.value(metadata ptr %84, metadata !1012, metadata !DIExpression()), !dbg !1402
  call void @llvm.dbg.value(metadata ptr %49, metadata !1018, metadata !DIExpression()), !dbg !1402
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %35) #27, !dbg !1404
  call void @llvm.dbg.value(metadata ptr %35, metadata !1019, metadata !DIExpression(DW_OP_deref)), !dbg !1402
  %427 = call i64 @strtol(ptr noundef %84, ptr noundef nonnull %35, i32 noundef 0) #27, !dbg !1405
  call void @llvm.dbg.value(metadata i64 %427, metadata !1020, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1402
  %428 = load ptr, ptr %35, align 8, !dbg !1406, !tbaa !865
  call void @llvm.dbg.value(metadata ptr %428, metadata !1019, metadata !DIExpression()), !dbg !1402
  %429 = icmp eq ptr %428, %84, !dbg !1407
  br i1 %429, label %433, label %430, !dbg !1408

430:                                              ; preds = %426
  %431 = load i8, ptr %428, align 1, !dbg !1409, !tbaa !985
  %432 = icmp eq i8 %431, 0, !dbg !1410
  br i1 %432, label %434, label %433, !dbg !1411

433:                                              ; preds = %430, %426
  store i32 1, ptr %49, align 4, !dbg !1412, !tbaa !728
  br label %434, !dbg !1413

434:                                              ; preds = %430, %433
  %435 = trunc i64 %427 to i32, !dbg !1405
  call void @llvm.dbg.value(metadata i32 %435, metadata !1020, metadata !DIExpression()), !dbg !1402
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %35) #27, !dbg !1414
  %436 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 18, !dbg !1415
  store i32 %435, ptr %436, align 8, !dbg !1416, !tbaa !1417
  br label %1263, !dbg !1418

437:                                              ; preds = %423
  %438 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(10) @.str.34) #29, !dbg !1419
  %439 = icmp eq i32 %438, 0, !dbg !1419
  br i1 %439, label %440, label %443, !dbg !1420

440:                                              ; preds = %437
  call void @llvm.dbg.value(metadata i32 1, metadata !879, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata ptr %49, metadata !878, metadata !DIExpression(DW_OP_deref)), !dbg !975
  %441 = call fastcc i32 @x264_atobool(ptr noundef %84, ptr noundef nonnull %49), !dbg !1421
  %442 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 19, !dbg !1422
  store i32 %441, ptr %442, align 4, !dbg !1423, !tbaa !1424
  br label %1263, !dbg !1425

443:                                              ; preds = %437
  %444 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(3) @.str.35) #29, !dbg !1426
  %445 = icmp eq i32 %444, 0, !dbg !1426
  br i1 %445, label %446, label %451, !dbg !1427

446:                                              ; preds = %443
  call void @llvm.dbg.value(metadata i32 1, metadata !879, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata ptr %49, metadata !878, metadata !DIExpression(DW_OP_deref)), !dbg !975
  %447 = call fastcc i32 @x264_atobool(ptr noundef %84, ptr noundef nonnull %49), !dbg !1428
  %448 = icmp eq i32 %447, 0, !dbg !1429
  %449 = zext i1 %448 to i32, !dbg !1429
  %450 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 20, !dbg !1430
  store i32 %449, ptr %450, align 8, !dbg !1431, !tbaa !1432
  br label %1263, !dbg !1433

451:                                              ; preds = %443
  %452 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(7) @.str.36) #29, !dbg !1434
  %453 = icmp eq i32 %452, 0, !dbg !1434
  br i1 %453, label %457, label %454, !dbg !1434

454:                                              ; preds = %451
  %455 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(8) @.str.37) #29, !dbg !1434
  %456 = icmp eq i32 %455, 0, !dbg !1434
  br i1 %456, label %457, label %476, !dbg !1435

457:                                              ; preds = %454, %451
  %458 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 21, !dbg !1436
  %459 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 22, !dbg !1439
  %460 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %84, ptr noundef nonnull @.str.14, ptr noundef nonnull %458, ptr noundef nonnull %459) #27, !dbg !1440
  %461 = icmp eq i32 %460, 2, !dbg !1441
  br i1 %461, label %465, label %462, !dbg !1442

462:                                              ; preds = %457
  %463 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %84, ptr noundef nonnull @.str.38, ptr noundef nonnull %458, ptr noundef nonnull %459) #27, !dbg !1443
  %464 = icmp eq i32 %463, 2, !dbg !1444
  br i1 %464, label %465, label %467, !dbg !1445

465:                                              ; preds = %462, %457
  %466 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 20, !dbg !1446
  store i32 1, ptr %466, align 8, !dbg !1448, !tbaa !1432
  br label %1263, !dbg !1449

467:                                              ; preds = %462
  %468 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %84, ptr noundef nonnull @.str.39, ptr noundef nonnull %458) #27, !dbg !1450
  %469 = icmp eq i32 %468, 0, !dbg !1450
  br i1 %469, label %473, label %470, !dbg !1452

470:                                              ; preds = %467
  %471 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 20, !dbg !1453
  store i32 1, ptr %471, align 8, !dbg !1455, !tbaa !1432
  %472 = load i32, ptr %458, align 4, !dbg !1456, !tbaa !1457
  store i32 %472, ptr %459, align 8, !dbg !1458, !tbaa !1459
  br label %1263, !dbg !1460

473:                                              ; preds = %467
  call void @llvm.dbg.value(metadata i32 1, metadata !879, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata ptr %49, metadata !878, metadata !DIExpression(DW_OP_deref)), !dbg !975
  %474 = call fastcc i32 @x264_atobool(ptr noundef %84, ptr noundef nonnull %49), !dbg !1461
  %475 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 20, !dbg !1462
  store i32 %474, ptr %475, align 8, !dbg !1463, !tbaa !1432
  br label %1263

476:                                              ; preds = %454
  %477 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(6) @.str.40) #29, !dbg !1464
  %478 = icmp eq i32 %477, 0, !dbg !1464
  br i1 %478, label %479, label %482, !dbg !1465

479:                                              ; preds = %476
  call void @llvm.dbg.value(metadata i32 1, metadata !879, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata ptr %49, metadata !878, metadata !DIExpression(DW_OP_deref)), !dbg !975
  %480 = call fastcc i32 @x264_atobool(ptr noundef %84, ptr noundef nonnull %49), !dbg !1466
  %481 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 23, !dbg !1467
  store i32 %480, ptr %481, align 4, !dbg !1468, !tbaa !1469
  br label %1263, !dbg !1470

482:                                              ; preds = %476
  %483 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(10) @.str.41) #29, !dbg !1471
  %484 = icmp eq i32 %483, 0, !dbg !1471
  br i1 %484, label %485, label %496, !dbg !1472

485:                                              ; preds = %482
  call void @llvm.dbg.value(metadata ptr %49, metadata !878, metadata !DIExpression(DW_OP_deref)), !dbg !975
  call void @llvm.dbg.value(metadata ptr %84, metadata !1012, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata ptr %49, metadata !1018, metadata !DIExpression()), !dbg !1473
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %34) #27, !dbg !1475
  call void @llvm.dbg.value(metadata ptr %34, metadata !1019, metadata !DIExpression(DW_OP_deref)), !dbg !1473
  %486 = call i64 @strtol(ptr noundef %84, ptr noundef nonnull %34, i32 noundef 0) #27, !dbg !1476
  call void @llvm.dbg.value(metadata i64 %486, metadata !1020, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1473
  %487 = load ptr, ptr %34, align 8, !dbg !1477, !tbaa !865
  call void @llvm.dbg.value(metadata ptr %487, metadata !1019, metadata !DIExpression()), !dbg !1473
  %488 = icmp eq ptr %487, %84, !dbg !1478
  br i1 %488, label %492, label %489, !dbg !1479

489:                                              ; preds = %485
  %490 = load i8, ptr %487, align 1, !dbg !1480, !tbaa !985
  %491 = icmp eq i8 %490, 0, !dbg !1481
  br i1 %491, label %493, label %492, !dbg !1482

492:                                              ; preds = %489, %485
  store i32 1, ptr %49, align 4, !dbg !1483, !tbaa !728
  br label %493, !dbg !1484

493:                                              ; preds = %489, %492
  %494 = trunc i64 %486 to i32, !dbg !1476
  call void @llvm.dbg.value(metadata i32 %494, metadata !1020, metadata !DIExpression()), !dbg !1473
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %34) #27, !dbg !1485
  %495 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 24, !dbg !1486
  store i32 %494, ptr %495, align 8, !dbg !1487, !tbaa !753
  br label %1263, !dbg !1488

496:                                              ; preds = %482
  %497 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(11) @.str.42) #29, !dbg !1489
  %498 = icmp eq i32 %497, 0, !dbg !1489
  br i1 %498, label %499, label %502, !dbg !1490

499:                                              ; preds = %496
  call void @llvm.dbg.value(metadata i32 1, metadata !879, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata ptr %49, metadata !878, metadata !DIExpression(DW_OP_deref)), !dbg !975
  %500 = call fastcc i32 @x264_atobool(ptr noundef %84, ptr noundef nonnull %49), !dbg !1491
  %501 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 25, !dbg !1492
  store i32 %500, ptr %501, align 4, !dbg !1493, !tbaa !1494
  br label %1263, !dbg !1495

502:                                              ; preds = %496
  %503 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(4) @.str.43) #29, !dbg !1496
  %504 = icmp eq i32 %503, 0, !dbg !1496
  br i1 %504, label %505, label %518, !dbg !1497

505:                                              ; preds = %502
  %506 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %84, ptr noundef nonnull dereferenceable(1) @.str.44) #29, !dbg !1498
  %507 = icmp eq ptr %506, null, !dbg !1498
  br i1 %507, label %510, label %508, !dbg !1501

508:                                              ; preds = %505
  %509 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 26, !dbg !1502
  store i32 0, ptr %509, align 8, !dbg !1503, !tbaa !836
  br label %1263, !dbg !1504

510:                                              ; preds = %505
  %511 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %84, ptr noundef nonnull dereferenceable(1) @.str.45) #29, !dbg !1505
  %512 = icmp eq ptr %511, null, !dbg !1505
  br i1 %512, label %515, label %513, !dbg !1507

513:                                              ; preds = %510
  %514 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 26, !dbg !1508
  store i32 1, ptr %514, align 8, !dbg !1509, !tbaa !836
  br label %1263, !dbg !1510

515:                                              ; preds = %510
  %516 = tail call noalias ptr @strdup(ptr noundef %84) #27, !dbg !1511
  %517 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 27, !dbg !1512
  store ptr %516, ptr %517, align 8, !dbg !1513, !tbaa !1514
  br label %1263

518:                                              ; preds = %502
  %519 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(8) @.str.46) #29, !dbg !1515
  %520 = icmp eq i32 %519, 0, !dbg !1515
  br i1 %520, label %521, label %524, !dbg !1516

521:                                              ; preds = %518
  %522 = tail call noalias ptr @strdup(ptr noundef %84) #27, !dbg !1517
  %523 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 27, !dbg !1518
  store ptr %522, ptr %523, align 8, !dbg !1519, !tbaa !1514
  br label %1263, !dbg !1520

524:                                              ; preds = %518
  %525 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(5) @.str.47) #29, !dbg !1521
  %526 = icmp eq i32 %525, 0, !dbg !1521
  br i1 %526, label %527, label %542, !dbg !1522

527:                                              ; preds = %524
  %528 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 26, !dbg !1523
  store i32 2, ptr %528, align 8, !dbg !1525, !tbaa !836
  %529 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 28, !dbg !1526
  %530 = tail call fastcc i32 @parse_cqm(ptr noundef %84, ptr noundef nonnull %529, i32 noundef 16), !dbg !1527
  %531 = load i32, ptr %49, align 4, !dbg !1528, !tbaa !728
  call void @llvm.dbg.value(metadata i32 %531, metadata !878, metadata !DIExpression()), !dbg !975
  %532 = or i32 %531, %530, !dbg !1528
  call void @llvm.dbg.value(metadata i32 %532, metadata !878, metadata !DIExpression()), !dbg !975
  %533 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 29, !dbg !1529
  %534 = tail call fastcc i32 @parse_cqm(ptr noundef %84, ptr noundef nonnull %533, i32 noundef 16), !dbg !1530
  %535 = or i32 %532, %534, !dbg !1531
  call void @llvm.dbg.value(metadata i32 %535, metadata !878, metadata !DIExpression()), !dbg !975
  %536 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 30, !dbg !1532
  %537 = tail call fastcc i32 @parse_cqm(ptr noundef %84, ptr noundef nonnull %536, i32 noundef 16), !dbg !1533
  %538 = or i32 %535, %537, !dbg !1534
  call void @llvm.dbg.value(metadata i32 %538, metadata !878, metadata !DIExpression()), !dbg !975
  %539 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 31, !dbg !1535
  %540 = tail call fastcc i32 @parse_cqm(ptr noundef %84, ptr noundef nonnull %539, i32 noundef 16), !dbg !1536
  %541 = or i32 %538, %540, !dbg !1537
  call void @llvm.dbg.value(metadata i32 %541, metadata !878, metadata !DIExpression()), !dbg !975
  store i32 %541, ptr %49, align 4, !dbg !1537, !tbaa !728
  br label %1263, !dbg !1538

542:                                              ; preds = %524
  %543 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(5) @.str.48) #29, !dbg !1539
  %544 = icmp eq i32 %543, 0, !dbg !1539
  br i1 %544, label %545, label %554, !dbg !1540

545:                                              ; preds = %542
  %546 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 26, !dbg !1541
  store i32 2, ptr %546, align 8, !dbg !1543, !tbaa !836
  %547 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 32, !dbg !1544
  %548 = tail call fastcc i32 @parse_cqm(ptr noundef %84, ptr noundef nonnull %547, i32 noundef 64), !dbg !1545
  %549 = load i32, ptr %49, align 4, !dbg !1546, !tbaa !728
  call void @llvm.dbg.value(metadata i32 %549, metadata !878, metadata !DIExpression()), !dbg !975
  %550 = or i32 %549, %548, !dbg !1546
  call void @llvm.dbg.value(metadata i32 %550, metadata !878, metadata !DIExpression()), !dbg !975
  %551 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 33, !dbg !1547
  %552 = tail call fastcc i32 @parse_cqm(ptr noundef %84, ptr noundef nonnull %551, i32 noundef 64), !dbg !1548
  %553 = or i32 %550, %552, !dbg !1549
  call void @llvm.dbg.value(metadata i32 %553, metadata !878, metadata !DIExpression()), !dbg !975
  store i32 %553, ptr %49, align 4, !dbg !1549, !tbaa !728
  br label %1263, !dbg !1550

554:                                              ; preds = %542
  %555 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(6) @.str.49) #29, !dbg !1551
  %556 = icmp eq i32 %555, 0, !dbg !1551
  br i1 %556, label %557, label %566, !dbg !1552

557:                                              ; preds = %554
  %558 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 26, !dbg !1553
  store i32 2, ptr %558, align 8, !dbg !1555, !tbaa !836
  %559 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 28, !dbg !1556
  %560 = tail call fastcc i32 @parse_cqm(ptr noundef %84, ptr noundef nonnull %559, i32 noundef 16), !dbg !1557
  %561 = load i32, ptr %49, align 4, !dbg !1558, !tbaa !728
  call void @llvm.dbg.value(metadata i32 %561, metadata !878, metadata !DIExpression()), !dbg !975
  %562 = or i32 %561, %560, !dbg !1558
  call void @llvm.dbg.value(metadata i32 %562, metadata !878, metadata !DIExpression()), !dbg !975
  %563 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 29, !dbg !1559
  %564 = tail call fastcc i32 @parse_cqm(ptr noundef %84, ptr noundef nonnull %563, i32 noundef 16), !dbg !1560
  %565 = or i32 %562, %564, !dbg !1561
  call void @llvm.dbg.value(metadata i32 %565, metadata !878, metadata !DIExpression()), !dbg !975
  store i32 %565, ptr %49, align 4, !dbg !1561, !tbaa !728
  br label %1263, !dbg !1562

566:                                              ; preds = %554
  %567 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(6) @.str.50) #29, !dbg !1563
  %568 = icmp eq i32 %567, 0, !dbg !1563
  br i1 %568, label %569, label %578, !dbg !1564

569:                                              ; preds = %566
  %570 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 26, !dbg !1565
  store i32 2, ptr %570, align 8, !dbg !1567, !tbaa !836
  %571 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 30, !dbg !1568
  %572 = tail call fastcc i32 @parse_cqm(ptr noundef %84, ptr noundef nonnull %571, i32 noundef 16), !dbg !1569
  %573 = load i32, ptr %49, align 4, !dbg !1570, !tbaa !728
  call void @llvm.dbg.value(metadata i32 %573, metadata !878, metadata !DIExpression()), !dbg !975
  %574 = or i32 %573, %572, !dbg !1570
  call void @llvm.dbg.value(metadata i32 %574, metadata !878, metadata !DIExpression()), !dbg !975
  %575 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 31, !dbg !1571
  %576 = tail call fastcc i32 @parse_cqm(ptr noundef %84, ptr noundef nonnull %575, i32 noundef 16), !dbg !1572
  %577 = or i32 %574, %576, !dbg !1573
  call void @llvm.dbg.value(metadata i32 %577, metadata !878, metadata !DIExpression()), !dbg !975
  store i32 %577, ptr %49, align 4, !dbg !1573, !tbaa !728
  br label %1263, !dbg !1574

578:                                              ; preds = %566
  %579 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(7) @.str.51) #29, !dbg !1575
  %580 = icmp eq i32 %579, 0, !dbg !1575
  br i1 %580, label %581, label %587, !dbg !1576

581:                                              ; preds = %578
  %582 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 26, !dbg !1577
  store i32 2, ptr %582, align 8, !dbg !1579, !tbaa !836
  %583 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 28, !dbg !1580
  %584 = tail call fastcc i32 @parse_cqm(ptr noundef %84, ptr noundef nonnull %583, i32 noundef 16), !dbg !1581
  %585 = load i32, ptr %49, align 4, !dbg !1582, !tbaa !728
  call void @llvm.dbg.value(metadata i32 %585, metadata !878, metadata !DIExpression()), !dbg !975
  %586 = or i32 %585, %584, !dbg !1582
  call void @llvm.dbg.value(metadata i32 %586, metadata !878, metadata !DIExpression()), !dbg !975
  store i32 %586, ptr %49, align 4, !dbg !1582, !tbaa !728
  br label %1263, !dbg !1583

587:                                              ; preds = %578
  %588 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(7) @.str.52) #29, !dbg !1584
  %589 = icmp eq i32 %588, 0, !dbg !1584
  br i1 %589, label %590, label %596, !dbg !1585

590:                                              ; preds = %587
  %591 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 26, !dbg !1586
  store i32 2, ptr %591, align 8, !dbg !1588, !tbaa !836
  %592 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 29, !dbg !1589
  %593 = tail call fastcc i32 @parse_cqm(ptr noundef %84, ptr noundef nonnull %592, i32 noundef 16), !dbg !1590
  %594 = load i32, ptr %49, align 4, !dbg !1591, !tbaa !728
  call void @llvm.dbg.value(metadata i32 %594, metadata !878, metadata !DIExpression()), !dbg !975
  %595 = or i32 %594, %593, !dbg !1591
  call void @llvm.dbg.value(metadata i32 %595, metadata !878, metadata !DIExpression()), !dbg !975
  store i32 %595, ptr %49, align 4, !dbg !1591, !tbaa !728
  br label %1263, !dbg !1592

596:                                              ; preds = %587
  %597 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(7) @.str.53) #29, !dbg !1593
  %598 = icmp eq i32 %597, 0, !dbg !1593
  br i1 %598, label %599, label %605, !dbg !1594

599:                                              ; preds = %596
  %600 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 26, !dbg !1595
  store i32 2, ptr %600, align 8, !dbg !1597, !tbaa !836
  %601 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 30, !dbg !1598
  %602 = tail call fastcc i32 @parse_cqm(ptr noundef %84, ptr noundef nonnull %601, i32 noundef 16), !dbg !1599
  %603 = load i32, ptr %49, align 4, !dbg !1600, !tbaa !728
  call void @llvm.dbg.value(metadata i32 %603, metadata !878, metadata !DIExpression()), !dbg !975
  %604 = or i32 %603, %602, !dbg !1600
  call void @llvm.dbg.value(metadata i32 %604, metadata !878, metadata !DIExpression()), !dbg !975
  store i32 %604, ptr %49, align 4, !dbg !1600, !tbaa !728
  br label %1263, !dbg !1601

605:                                              ; preds = %596
  %606 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(7) @.str.54) #29, !dbg !1602
  %607 = icmp eq i32 %606, 0, !dbg !1602
  br i1 %607, label %608, label %614, !dbg !1603

608:                                              ; preds = %605
  %609 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 26, !dbg !1604
  store i32 2, ptr %609, align 8, !dbg !1606, !tbaa !836
  %610 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 31, !dbg !1607
  %611 = tail call fastcc i32 @parse_cqm(ptr noundef %84, ptr noundef nonnull %610, i32 noundef 16), !dbg !1608
  %612 = load i32, ptr %49, align 4, !dbg !1609, !tbaa !728
  call void @llvm.dbg.value(metadata i32 %612, metadata !878, metadata !DIExpression()), !dbg !975
  %613 = or i32 %612, %611, !dbg !1609
  call void @llvm.dbg.value(metadata i32 %613, metadata !878, metadata !DIExpression()), !dbg !975
  store i32 %613, ptr %49, align 4, !dbg !1609, !tbaa !728
  br label %1263, !dbg !1610

614:                                              ; preds = %605
  %615 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(6) @.str.55) #29, !dbg !1611
  %616 = icmp eq i32 %615, 0, !dbg !1611
  br i1 %616, label %617, label %623, !dbg !1612

617:                                              ; preds = %614
  %618 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 26, !dbg !1613
  store i32 2, ptr %618, align 8, !dbg !1615, !tbaa !836
  %619 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 32, !dbg !1616
  %620 = tail call fastcc i32 @parse_cqm(ptr noundef %84, ptr noundef nonnull %619, i32 noundef 64), !dbg !1617
  %621 = load i32, ptr %49, align 4, !dbg !1618, !tbaa !728
  call void @llvm.dbg.value(metadata i32 %621, metadata !878, metadata !DIExpression()), !dbg !975
  %622 = or i32 %621, %620, !dbg !1618
  call void @llvm.dbg.value(metadata i32 %622, metadata !878, metadata !DIExpression()), !dbg !975
  store i32 %622, ptr %49, align 4, !dbg !1618, !tbaa !728
  br label %1263, !dbg !1619

623:                                              ; preds = %614
  %624 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(6) @.str.56) #29, !dbg !1620
  %625 = icmp eq i32 %624, 0, !dbg !1620
  br i1 %625, label %626, label %632, !dbg !1621

626:                                              ; preds = %623
  %627 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 26, !dbg !1622
  store i32 2, ptr %627, align 8, !dbg !1624, !tbaa !836
  %628 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 33, !dbg !1625
  %629 = tail call fastcc i32 @parse_cqm(ptr noundef %84, ptr noundef nonnull %628, i32 noundef 64), !dbg !1626
  %630 = load i32, ptr %49, align 4, !dbg !1627, !tbaa !728
  call void @llvm.dbg.value(metadata i32 %630, metadata !878, metadata !DIExpression()), !dbg !975
  %631 = or i32 %630, %629, !dbg !1627
  call void @llvm.dbg.value(metadata i32 %631, metadata !878, metadata !DIExpression()), !dbg !975
  store i32 %631, ptr %49, align 4, !dbg !1627, !tbaa !728
  br label %1263, !dbg !1628

632:                                              ; preds = %623
  %633 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(4) @.str.57) #29, !dbg !1629
  %634 = icmp eq i32 %633, 0, !dbg !1629
  br i1 %634, label %635, label %646, !dbg !1630

635:                                              ; preds = %632
  call void @llvm.dbg.value(metadata ptr %49, metadata !878, metadata !DIExpression(DW_OP_deref)), !dbg !975
  call void @llvm.dbg.value(metadata ptr %84, metadata !1012, metadata !DIExpression()), !dbg !1631
  call void @llvm.dbg.value(metadata ptr %49, metadata !1018, metadata !DIExpression()), !dbg !1631
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %33) #27, !dbg !1633
  call void @llvm.dbg.value(metadata ptr %33, metadata !1019, metadata !DIExpression(DW_OP_deref)), !dbg !1631
  %636 = call i64 @strtol(ptr noundef %84, ptr noundef nonnull %33, i32 noundef 0) #27, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %636, metadata !1020, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1631
  %637 = load ptr, ptr %33, align 8, !dbg !1635, !tbaa !865
  call void @llvm.dbg.value(metadata ptr %637, metadata !1019, metadata !DIExpression()), !dbg !1631
  %638 = icmp eq ptr %637, %84, !dbg !1636
  br i1 %638, label %642, label %639, !dbg !1637

639:                                              ; preds = %635
  %640 = load i8, ptr %637, align 1, !dbg !1638, !tbaa !985
  %641 = icmp eq i8 %640, 0, !dbg !1639
  br i1 %641, label %643, label %642, !dbg !1640

642:                                              ; preds = %639, %635
  store i32 1, ptr %49, align 4, !dbg !1641, !tbaa !728
  br label %643, !dbg !1642

643:                                              ; preds = %639, %642
  %644 = trunc i64 %636 to i32, !dbg !1634
  call void @llvm.dbg.value(metadata i32 %644, metadata !1020, metadata !DIExpression()), !dbg !1631
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %33) #27, !dbg !1643
  %645 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 36, !dbg !1644
  store i32 %644, ptr %645, align 8, !dbg !1645, !tbaa !810
  br label %1263, !dbg !1646

646:                                              ; preds = %632
  %647 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(9) @.str.58) #29, !dbg !1647
  %648 = icmp eq i32 %647, 0, !dbg !1647
  br i1 %648, label %649, label %652, !dbg !1648

649:                                              ; preds = %646
  %650 = tail call noalias ptr @strdup(ptr noundef %84) #27, !dbg !1649
  %651 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 38, !dbg !1650
  store ptr %650, ptr %651, align 8, !dbg !1651, !tbaa !1652
  br label %1263, !dbg !1653

652:                                              ; preds = %646
  %653 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(8) @.str.59) #29, !dbg !1654
  %654 = icmp eq i32 %653, 0, !dbg !1654
  br i1 %654, label %658, label %655, !dbg !1654

655:                                              ; preds = %652
  %656 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(11) @.str.60) #29, !dbg !1654
  %657 = icmp eq i32 %656, 0, !dbg !1654
  br i1 %657, label %658, label %691, !dbg !1655

658:                                              ; preds = %655, %652
  %659 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 39, i32 1, !dbg !1656
  store i32 0, ptr %659, align 4, !dbg !1658
  %660 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %84, ptr noundef nonnull dereferenceable(1) @.str.62) #29, !dbg !1659
  %661 = icmp ne ptr %660, null, !dbg !1659
  %662 = sext i1 %661 to i32, !dbg !1661
  store i32 %662, ptr %659, align 4, !dbg !1662
  %663 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %84, ptr noundef nonnull dereferenceable(1) @.str.63) #29, !dbg !1663
  %664 = icmp eq ptr %663, null, !dbg !1663
  br i1 %664, label %667, label %665, !dbg !1665

665:                                              ; preds = %658
  %666 = select i1 %661, i32 -1, i32 1, !dbg !1666
  store i32 %666, ptr %659, align 4, !dbg !1666, !tbaa !816
  br label %667, !dbg !1667

667:                                              ; preds = %665, %658
  %668 = phi i32 [ %666, %665 ], [ %662, %658 ]
  %669 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %84, ptr noundef nonnull dereferenceable(1) @.str.64) #29, !dbg !1668
  %670 = icmp eq ptr %669, null, !dbg !1668
  br i1 %670, label %673, label %671, !dbg !1670

671:                                              ; preds = %667
  %672 = or i32 %668, 2, !dbg !1671
  store i32 %672, ptr %659, align 4, !dbg !1671, !tbaa !816
  br label %673, !dbg !1672

673:                                              ; preds = %671, %667
  %674 = phi i32 [ %672, %671 ], [ %668, %667 ]
  %675 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %84, ptr noundef nonnull dereferenceable(1) @.str.65) #29, !dbg !1673
  %676 = icmp eq ptr %675, null, !dbg !1673
  br i1 %676, label %679, label %677, !dbg !1675

677:                                              ; preds = %673
  %678 = or i32 %674, 16, !dbg !1676
  store i32 %678, ptr %659, align 4, !dbg !1676, !tbaa !816
  br label %679, !dbg !1677

679:                                              ; preds = %677, %673
  %680 = phi i32 [ %678, %677 ], [ %674, %673 ]
  %681 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %84, ptr noundef nonnull dereferenceable(1) @.str.66) #29, !dbg !1678
  %682 = icmp eq ptr %681, null, !dbg !1678
  br i1 %682, label %685, label %683, !dbg !1680

683:                                              ; preds = %679
  %684 = or i32 %680, 32, !dbg !1681
  store i32 %684, ptr %659, align 4, !dbg !1681, !tbaa !816
  br label %685, !dbg !1682

685:                                              ; preds = %683, %679
  %686 = phi i32 [ %684, %683 ], [ %680, %679 ]
  %687 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %84, ptr noundef nonnull dereferenceable(1) @.str.67) #29, !dbg !1683
  %688 = icmp eq ptr %687, null, !dbg !1683
  br i1 %688, label %1263, label %689, !dbg !1685

689:                                              ; preds = %685
  %690 = or i32 %686, 256, !dbg !1686
  store i32 %690, ptr %659, align 4, !dbg !1686, !tbaa !816
  br label %1263, !dbg !1687

691:                                              ; preds = %655
  %692 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(7) @.str.68) #29, !dbg !1688
  %693 = icmp eq i32 %692, 0, !dbg !1688
  br i1 %693, label %694, label %697, !dbg !1689

694:                                              ; preds = %691
  call void @llvm.dbg.value(metadata i32 1, metadata !879, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata ptr %49, metadata !878, metadata !DIExpression(DW_OP_deref)), !dbg !975
  %695 = call fastcc i32 @x264_atobool(ptr noundef %84, ptr noundef nonnull %49), !dbg !1690
  %696 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 39, i32 2, !dbg !1691
  store i32 %695, ptr %696, align 8, !dbg !1692, !tbaa !1693
  br label %1263, !dbg !1694

697:                                              ; preds = %691
  %698 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(8) @.str.69) #29, !dbg !1695
  %699 = icmp eq i32 %698, 0, !dbg !1695
  br i1 %699, label %703, label %700, !dbg !1695

700:                                              ; preds = %697
  %701 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(9) @.str.70) #29, !dbg !1695
  %702 = icmp eq i32 %701, 0, !dbg !1695
  br i1 %702, label %703, label %706, !dbg !1696

703:                                              ; preds = %700, %697
  call void @llvm.dbg.value(metadata i32 1, metadata !879, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata ptr %49, metadata !878, metadata !DIExpression(DW_OP_deref)), !dbg !975
  %704 = call fastcc i32 @x264_atobool(ptr noundef %84, ptr noundef nonnull %49), !dbg !1697
  %705 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 39, i32 3, !dbg !1698
  store i32 %704, ptr %705, align 4, !dbg !1699, !tbaa !1700
  br label %1263, !dbg !1701

706:                                              ; preds = %700
  %707 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(7) @.str.71) #29, !dbg !1702
  %708 = icmp eq i32 %707, 0, !dbg !1702
  br i1 %708, label %712, label %709, !dbg !1702

709:                                              ; preds = %706
  %710 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(12) @.str.72) #29, !dbg !1702
  %711 = icmp eq i32 %710, 0, !dbg !1702
  br i1 %711, label %712, label %717, !dbg !1703

712:                                              ; preds = %709, %706
  %713 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 39, i32 4, !dbg !1704
  %714 = tail call fastcc i32 @parse_enum(ptr noundef %84, ptr noundef nonnull @x264_direct_pred_names, ptr noundef nonnull %713), !dbg !1705
  %715 = load i32, ptr %49, align 4, !dbg !1706, !tbaa !728
  call void @llvm.dbg.value(metadata i32 %715, metadata !878, metadata !DIExpression()), !dbg !975
  %716 = or i32 %715, %714, !dbg !1706
  call void @llvm.dbg.value(metadata i32 %716, metadata !878, metadata !DIExpression()), !dbg !975
  store i32 %716, ptr %49, align 4, !dbg !1706, !tbaa !728
  br label %1263, !dbg !1707

717:                                              ; preds = %709
  %718 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(11) @.str.73) #29, !dbg !1708
  %719 = icmp eq i32 %718, 0, !dbg !1708
  br i1 %719, label %720, label %731, !dbg !1709

720:                                              ; preds = %717
  call void @llvm.dbg.value(metadata ptr %49, metadata !878, metadata !DIExpression(DW_OP_deref)), !dbg !975
  call void @llvm.dbg.value(metadata ptr %84, metadata !1012, metadata !DIExpression()), !dbg !1710
  call void @llvm.dbg.value(metadata ptr %49, metadata !1018, metadata !DIExpression()), !dbg !1710
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %32) #27, !dbg !1712
  call void @llvm.dbg.value(metadata ptr %32, metadata !1019, metadata !DIExpression(DW_OP_deref)), !dbg !1710
  %721 = call i64 @strtol(ptr noundef %84, ptr noundef nonnull %32, i32 noundef 0) #27, !dbg !1713
  call void @llvm.dbg.value(metadata i64 %721, metadata !1020, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1710
  %722 = load ptr, ptr %32, align 8, !dbg !1714, !tbaa !865
  call void @llvm.dbg.value(metadata ptr %722, metadata !1019, metadata !DIExpression()), !dbg !1710
  %723 = icmp eq ptr %722, %84, !dbg !1715
  br i1 %723, label %727, label %724, !dbg !1716

724:                                              ; preds = %720
  %725 = load i8, ptr %722, align 1, !dbg !1717, !tbaa !985
  %726 = icmp eq i8 %725, 0, !dbg !1718
  br i1 %726, label %728, label %727, !dbg !1719

727:                                              ; preds = %724, %720
  store i32 1, ptr %49, align 4, !dbg !1720, !tbaa !728
  br label %728, !dbg !1721

728:                                              ; preds = %724, %727
  %729 = trunc i64 %721 to i32, !dbg !1713
  call void @llvm.dbg.value(metadata i32 %729, metadata !1020, metadata !DIExpression()), !dbg !1710
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %32) #27, !dbg !1722
  %730 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 39, i32 5, !dbg !1723
  store i32 %729, ptr %730, align 4, !dbg !1724, !tbaa !1725
  br label %1263, !dbg !1726

731:                                              ; preds = %717
  %732 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(17) @.str.74) #29, !dbg !1727
  %733 = icmp eq i32 %732, 0, !dbg !1727
  br i1 %733, label %734, label %745, !dbg !1728

734:                                              ; preds = %731
  call void @llvm.dbg.value(metadata ptr %49, metadata !878, metadata !DIExpression(DW_OP_deref)), !dbg !975
  call void @llvm.dbg.value(metadata ptr %84, metadata !1012, metadata !DIExpression()), !dbg !1729
  call void @llvm.dbg.value(metadata ptr %49, metadata !1018, metadata !DIExpression()), !dbg !1729
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %31) #27, !dbg !1731
  call void @llvm.dbg.value(metadata ptr %31, metadata !1019, metadata !DIExpression(DW_OP_deref)), !dbg !1729
  %735 = call i64 @strtol(ptr noundef %84, ptr noundef nonnull %31, i32 noundef 0) #27, !dbg !1732
  call void @llvm.dbg.value(metadata i64 %735, metadata !1020, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1729
  %736 = load ptr, ptr %31, align 8, !dbg !1733, !tbaa !865
  call void @llvm.dbg.value(metadata ptr %736, metadata !1019, metadata !DIExpression()), !dbg !1729
  %737 = icmp eq ptr %736, %84, !dbg !1734
  br i1 %737, label %741, label %738, !dbg !1735

738:                                              ; preds = %734
  %739 = load i8, ptr %736, align 1, !dbg !1736, !tbaa !985
  %740 = icmp eq i8 %739, 0, !dbg !1737
  br i1 %740, label %742, label %741, !dbg !1738

741:                                              ; preds = %738, %734
  store i32 1, ptr %49, align 4, !dbg !1739, !tbaa !728
  br label %742, !dbg !1740

742:                                              ; preds = %738, %741
  %743 = trunc i64 %735 to i32, !dbg !1732
  call void @llvm.dbg.value(metadata i32 %743, metadata !1020, metadata !DIExpression()), !dbg !1729
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %31) #27, !dbg !1741
  %744 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 39, i32 6, !dbg !1742
  store i32 %743, ptr %744, align 8, !dbg !1743, !tbaa !1744
  br label %1263, !dbg !1745

745:                                              ; preds = %731
  %746 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(3) @.str.75) #29, !dbg !1746
  %747 = icmp eq i32 %746, 0, !dbg !1746
  br i1 %747, label %748, label %753, !dbg !1747

748:                                              ; preds = %745
  %749 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 39, i32 7, !dbg !1748
  %750 = tail call fastcc i32 @parse_enum(ptr noundef %84, ptr noundef nonnull @x264_motion_est_names, ptr noundef nonnull %749), !dbg !1749
  %751 = load i32, ptr %49, align 4, !dbg !1750, !tbaa !728
  call void @llvm.dbg.value(metadata i32 %751, metadata !878, metadata !DIExpression()), !dbg !975
  %752 = or i32 %751, %750, !dbg !1750
  call void @llvm.dbg.value(metadata i32 %752, metadata !878, metadata !DIExpression()), !dbg !975
  store i32 %752, ptr %49, align 4, !dbg !1750, !tbaa !728
  br label %1263, !dbg !1751

753:                                              ; preds = %745
  %754 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(8) @.str.76) #29, !dbg !1752
  %755 = icmp eq i32 %754, 0, !dbg !1752
  br i1 %755, label %759, label %756, !dbg !1752

756:                                              ; preds = %753
  %757 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(9) @.str.77) #29, !dbg !1752
  %758 = icmp eq i32 %757, 0, !dbg !1752
  br i1 %758, label %759, label %770, !dbg !1753

759:                                              ; preds = %756, %753
  call void @llvm.dbg.value(metadata ptr %49, metadata !878, metadata !DIExpression(DW_OP_deref)), !dbg !975
  call void @llvm.dbg.value(metadata ptr %84, metadata !1012, metadata !DIExpression()), !dbg !1754
  call void @llvm.dbg.value(metadata ptr %49, metadata !1018, metadata !DIExpression()), !dbg !1754
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %30) #27, !dbg !1756
  call void @llvm.dbg.value(metadata ptr %30, metadata !1019, metadata !DIExpression(DW_OP_deref)), !dbg !1754
  %760 = call i64 @strtol(ptr noundef %84, ptr noundef nonnull %30, i32 noundef 0) #27, !dbg !1757
  call void @llvm.dbg.value(metadata i64 %760, metadata !1020, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1754
  %761 = load ptr, ptr %30, align 8, !dbg !1758, !tbaa !865
  call void @llvm.dbg.value(metadata ptr %761, metadata !1019, metadata !DIExpression()), !dbg !1754
  %762 = icmp eq ptr %761, %84, !dbg !1759
  br i1 %762, label %766, label %763, !dbg !1760

763:                                              ; preds = %759
  %764 = load i8, ptr %761, align 1, !dbg !1761, !tbaa !985
  %765 = icmp eq i8 %764, 0, !dbg !1762
  br i1 %765, label %767, label %766, !dbg !1763

766:                                              ; preds = %763, %759
  store i32 1, ptr %49, align 4, !dbg !1764, !tbaa !728
  br label %767, !dbg !1765

767:                                              ; preds = %763, %766
  %768 = trunc i64 %760 to i32, !dbg !1757
  call void @llvm.dbg.value(metadata i32 %768, metadata !1020, metadata !DIExpression()), !dbg !1754
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %30) #27, !dbg !1766
  %769 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 39, i32 8, !dbg !1767
  store i32 %768, ptr %769, align 8, !dbg !1768, !tbaa !1769
  br label %1263, !dbg !1770

770:                                              ; preds = %756
  %771 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(8) @.str.78) #29, !dbg !1771
  %772 = icmp eq i32 %771, 0, !dbg !1771
  br i1 %772, label %776, label %773, !dbg !1771

773:                                              ; preds = %770
  %774 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(9) @.str.79) #29, !dbg !1771
  %775 = icmp eq i32 %774, 0, !dbg !1771
  br i1 %775, label %776, label %787, !dbg !1772

776:                                              ; preds = %773, %770
  call void @llvm.dbg.value(metadata ptr %49, metadata !878, metadata !DIExpression(DW_OP_deref)), !dbg !975
  call void @llvm.dbg.value(metadata ptr %84, metadata !1012, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata ptr %49, metadata !1018, metadata !DIExpression()), !dbg !1773
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %29) #27, !dbg !1775
  call void @llvm.dbg.value(metadata ptr %29, metadata !1019, metadata !DIExpression(DW_OP_deref)), !dbg !1773
  %777 = call i64 @strtol(ptr noundef %84, ptr noundef nonnull %29, i32 noundef 0) #27, !dbg !1776
  call void @llvm.dbg.value(metadata i64 %777, metadata !1020, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1773
  %778 = load ptr, ptr %29, align 8, !dbg !1777, !tbaa !865
  call void @llvm.dbg.value(metadata ptr %778, metadata !1019, metadata !DIExpression()), !dbg !1773
  %779 = icmp eq ptr %778, %84, !dbg !1778
  br i1 %779, label %783, label %780, !dbg !1779

780:                                              ; preds = %776
  %781 = load i8, ptr %778, align 1, !dbg !1780, !tbaa !985
  %782 = icmp eq i8 %781, 0, !dbg !1781
  br i1 %782, label %784, label %783, !dbg !1782

783:                                              ; preds = %780, %776
  store i32 1, ptr %49, align 4, !dbg !1783, !tbaa !728
  br label %784, !dbg !1784

784:                                              ; preds = %780, %783
  %785 = trunc i64 %777 to i32, !dbg !1776
  call void @llvm.dbg.value(metadata i32 %785, metadata !1020, metadata !DIExpression()), !dbg !1773
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %29) #27, !dbg !1785
  %786 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 39, i32 9, !dbg !1786
  store i32 %785, ptr %786, align 4, !dbg !1787, !tbaa !1788
  br label %1263, !dbg !1789

787:                                              ; preds = %773
  %788 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(15) @.str.80) #29, !dbg !1790
  %789 = icmp eq i32 %788, 0, !dbg !1790
  br i1 %789, label %793, label %790, !dbg !1790

790:                                              ; preds = %787
  %791 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(16) @.str.81) #29, !dbg !1790
  %792 = icmp eq i32 %791, 0, !dbg !1790
  br i1 %792, label %793, label %804, !dbg !1791

793:                                              ; preds = %790, %787
  call void @llvm.dbg.value(metadata ptr %49, metadata !878, metadata !DIExpression(DW_OP_deref)), !dbg !975
  call void @llvm.dbg.value(metadata ptr %84, metadata !1012, metadata !DIExpression()), !dbg !1792
  call void @llvm.dbg.value(metadata ptr %49, metadata !1018, metadata !DIExpression()), !dbg !1792
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %28) #27, !dbg !1794
  call void @llvm.dbg.value(metadata ptr %28, metadata !1019, metadata !DIExpression(DW_OP_deref)), !dbg !1792
  %794 = call i64 @strtol(ptr noundef %84, ptr noundef nonnull %28, i32 noundef 0) #27, !dbg !1795
  call void @llvm.dbg.value(metadata i64 %794, metadata !1020, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1792
  %795 = load ptr, ptr %28, align 8, !dbg !1796, !tbaa !865
  call void @llvm.dbg.value(metadata ptr %795, metadata !1019, metadata !DIExpression()), !dbg !1792
  %796 = icmp eq ptr %795, %84, !dbg !1797
  br i1 %796, label %800, label %797, !dbg !1798

797:                                              ; preds = %793
  %798 = load i8, ptr %795, align 1, !dbg !1799, !tbaa !985
  %799 = icmp eq i8 %798, 0, !dbg !1800
  br i1 %799, label %801, label %800, !dbg !1801

800:                                              ; preds = %797, %793
  store i32 1, ptr %49, align 4, !dbg !1802, !tbaa !728
  br label %801, !dbg !1803

801:                                              ; preds = %797, %800
  %802 = trunc i64 %794 to i32, !dbg !1795
  call void @llvm.dbg.value(metadata i32 %802, metadata !1020, metadata !DIExpression()), !dbg !1792
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %28) #27, !dbg !1804
  %803 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 39, i32 10, !dbg !1805
  store i32 %802, ptr %803, align 8, !dbg !1806, !tbaa !1807
  br label %1263, !dbg !1808

804:                                              ; preds = %790
  %805 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(6) @.str.82) #29, !dbg !1809
  %806 = icmp eq i32 %805, 0, !dbg !1809
  br i1 %806, label %810, label %807, !dbg !1809

807:                                              ; preds = %804
  %808 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(5) @.str.83) #29, !dbg !1809
  %809 = icmp eq i32 %808, 0, !dbg !1809
  br i1 %809, label %810, label %821, !dbg !1810

810:                                              ; preds = %807, %804
  call void @llvm.dbg.value(metadata ptr %49, metadata !878, metadata !DIExpression(DW_OP_deref)), !dbg !975
  call void @llvm.dbg.value(metadata ptr %84, metadata !1012, metadata !DIExpression()), !dbg !1811
  call void @llvm.dbg.value(metadata ptr %49, metadata !1018, metadata !DIExpression()), !dbg !1811
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %27) #27, !dbg !1813
  call void @llvm.dbg.value(metadata ptr %27, metadata !1019, metadata !DIExpression(DW_OP_deref)), !dbg !1811
  %811 = call i64 @strtol(ptr noundef %84, ptr noundef nonnull %27, i32 noundef 0) #27, !dbg !1814
  call void @llvm.dbg.value(metadata i64 %811, metadata !1020, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1811
  %812 = load ptr, ptr %27, align 8, !dbg !1815, !tbaa !865
  call void @llvm.dbg.value(metadata ptr %812, metadata !1019, metadata !DIExpression()), !dbg !1811
  %813 = icmp eq ptr %812, %84, !dbg !1816
  br i1 %813, label %817, label %814, !dbg !1817

814:                                              ; preds = %810
  %815 = load i8, ptr %812, align 1, !dbg !1818, !tbaa !985
  %816 = icmp eq i8 %815, 0, !dbg !1819
  br i1 %816, label %818, label %817, !dbg !1820

817:                                              ; preds = %814, %810
  store i32 1, ptr %49, align 4, !dbg !1821, !tbaa !728
  br label %818, !dbg !1822

818:                                              ; preds = %814, %817
  %819 = trunc i64 %811 to i32, !dbg !1814
  call void @llvm.dbg.value(metadata i32 %819, metadata !1020, metadata !DIExpression()), !dbg !1811
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %27) #27, !dbg !1823
  %820 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 39, i32 11, !dbg !1824
  store i32 %819, ptr %820, align 4, !dbg !1825, !tbaa !1826
  br label %1263, !dbg !1827

821:                                              ; preds = %807
  %822 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(7) @.str.84) #29, !dbg !1828
  %823 = icmp eq i32 %822, 0, !dbg !1828
  br i1 %823, label %824, label %837, !dbg !1829

824:                                              ; preds = %821
  %825 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 39, i32 18, !dbg !1830
  %826 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 39, i32 19, !dbg !1833
  %827 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %84, ptr noundef nonnull @.str.85, ptr noundef nonnull %825, ptr noundef nonnull %826) #27, !dbg !1834
  %828 = icmp eq i32 %827, 2, !dbg !1835
  br i1 %828, label %1263, label %829, !dbg !1836

829:                                              ; preds = %824
  %830 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %84, ptr noundef nonnull @.str.86, ptr noundef nonnull %825, ptr noundef nonnull %826) #27, !dbg !1837
  %831 = icmp eq i32 %830, 2, !dbg !1838
  br i1 %831, label %1263, label %832, !dbg !1839

832:                                              ; preds = %829
  %833 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %84, ptr noundef nonnull @.str.87, ptr noundef nonnull %825) #27, !dbg !1840
  %834 = icmp eq i32 %833, 0, !dbg !1840
  br i1 %834, label %836, label %835, !dbg !1842

835:                                              ; preds = %832
  store float 0.000000e+00, ptr %826, align 4, !dbg !1843, !tbaa !1845
  br label %1263, !dbg !1846

836:                                              ; preds = %832
  store <2 x float> zeroinitializer, ptr %825, align 8, !dbg !1847, !tbaa !767
  br label %1263

837:                                              ; preds = %821
  %838 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(10) @.str.88) #29, !dbg !1849
  %839 = icmp eq i32 %838, 0, !dbg !1849
  br i1 %839, label %840, label %843, !dbg !1850

840:                                              ; preds = %837
  call void @llvm.dbg.value(metadata i32 1, metadata !879, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata ptr %49, metadata !878, metadata !DIExpression(DW_OP_deref)), !dbg !975
  %841 = call fastcc i32 @x264_atobool(ptr noundef %84, ptr noundef nonnull %49), !dbg !1851
  %842 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 39, i32 12, !dbg !1852
  store i32 %841, ptr %842, align 8, !dbg !1853, !tbaa !823
  br label %1263, !dbg !1854

843:                                              ; preds = %837
  %844 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(11) @.str.89) #29, !dbg !1855
  %845 = icmp eq i32 %844, 0, !dbg !1855
  br i1 %845, label %846, label %849, !dbg !1856

846:                                              ; preds = %843
  call void @llvm.dbg.value(metadata i32 1, metadata !879, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata ptr %49, metadata !878, metadata !DIExpression(DW_OP_deref)), !dbg !975
  %847 = call fastcc i32 @x264_atobool(ptr noundef %84, ptr noundef nonnull %49), !dbg !1857
  %848 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 39, i32 13, !dbg !1858
  store i32 %847, ptr %848, align 4, !dbg !1859, !tbaa !1860
  br label %1263, !dbg !1861

849:                                              ; preds = %843
  %850 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(8) @.str.90) #29, !dbg !1862
  %851 = icmp eq i32 %850, 0, !dbg !1862
  br i1 %851, label %852, label %863, !dbg !1863

852:                                              ; preds = %849
  call void @llvm.dbg.value(metadata ptr %49, metadata !878, metadata !DIExpression(DW_OP_deref)), !dbg !975
  call void @llvm.dbg.value(metadata ptr %84, metadata !1012, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata ptr %49, metadata !1018, metadata !DIExpression()), !dbg !1864
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %26) #27, !dbg !1866
  call void @llvm.dbg.value(metadata ptr %26, metadata !1019, metadata !DIExpression(DW_OP_deref)), !dbg !1864
  %853 = call i64 @strtol(ptr noundef %84, ptr noundef nonnull %26, i32 noundef 0) #27, !dbg !1867
  call void @llvm.dbg.value(metadata i64 %853, metadata !1020, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1864
  %854 = load ptr, ptr %26, align 8, !dbg !1868, !tbaa !865
  call void @llvm.dbg.value(metadata ptr %854, metadata !1019, metadata !DIExpression()), !dbg !1864
  %855 = icmp eq ptr %854, %84, !dbg !1869
  br i1 %855, label %859, label %856, !dbg !1870

856:                                              ; preds = %852
  %857 = load i8, ptr %854, align 1, !dbg !1871, !tbaa !985
  %858 = icmp eq i8 %857, 0, !dbg !1872
  br i1 %858, label %860, label %859, !dbg !1873

859:                                              ; preds = %856, %852
  store i32 1, ptr %49, align 4, !dbg !1874, !tbaa !728
  br label %860, !dbg !1875

860:                                              ; preds = %856, %859
  %861 = trunc i64 %853 to i32, !dbg !1867
  call void @llvm.dbg.value(metadata i32 %861, metadata !1020, metadata !DIExpression()), !dbg !1864
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %26) #27, !dbg !1876
  %862 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 39, i32 14, !dbg !1877
  store i32 %861, ptr %862, align 8, !dbg !1878, !tbaa !1879
  br label %1263, !dbg !1880

863:                                              ; preds = %849
  %864 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(11) @.str.91) #29, !dbg !1881
  %865 = icmp eq i32 %864, 0, !dbg !1881
  br i1 %865, label %866, label %869, !dbg !1882

866:                                              ; preds = %863
  call void @llvm.dbg.value(metadata i32 1, metadata !879, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata ptr %49, metadata !878, metadata !DIExpression(DW_OP_deref)), !dbg !975
  %867 = call fastcc i32 @x264_atobool(ptr noundef %84, ptr noundef nonnull %49), !dbg !1883
  %868 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 39, i32 15, !dbg !1884
  store i32 %867, ptr %868, align 4, !dbg !1885, !tbaa !828
  br label %1263, !dbg !1886

869:                                              ; preds = %863
  %870 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(13) @.str.92) #29, !dbg !1887
  %871 = icmp eq i32 %870, 0, !dbg !1887
  br i1 %871, label %872, label %875, !dbg !1888

872:                                              ; preds = %869
  call void @llvm.dbg.value(metadata i32 1, metadata !879, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata ptr %49, metadata !878, metadata !DIExpression(DW_OP_deref)), !dbg !975
  %873 = call fastcc i32 @x264_atobool(ptr noundef %84, ptr noundef nonnull %49), !dbg !1889
  %874 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 39, i32 16, !dbg !1890
  store i32 %873, ptr %874, align 8, !dbg !1891, !tbaa !831
  br label %1263, !dbg !1892

875:                                              ; preds = %869
  %876 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(15) @.str.93) #29, !dbg !1893
  %877 = icmp eq i32 %876, 0, !dbg !1893
  br i1 %877, label %878, label %889, !dbg !1894

878:                                              ; preds = %875
  call void @llvm.dbg.value(metadata ptr %49, metadata !878, metadata !DIExpression(DW_OP_deref)), !dbg !975
  call void @llvm.dbg.value(metadata ptr %84, metadata !1012, metadata !DIExpression()), !dbg !1895
  call void @llvm.dbg.value(metadata ptr %49, metadata !1018, metadata !DIExpression()), !dbg !1895
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %25) #27, !dbg !1897
  call void @llvm.dbg.value(metadata ptr %25, metadata !1019, metadata !DIExpression(DW_OP_deref)), !dbg !1895
  %879 = call i64 @strtol(ptr noundef %84, ptr noundef nonnull %25, i32 noundef 0) #27, !dbg !1898
  call void @llvm.dbg.value(metadata i64 %879, metadata !1020, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1895
  %880 = load ptr, ptr %25, align 8, !dbg !1899, !tbaa !865
  call void @llvm.dbg.value(metadata ptr %880, metadata !1019, metadata !DIExpression()), !dbg !1895
  %881 = icmp eq ptr %880, %84, !dbg !1900
  br i1 %881, label %885, label %882, !dbg !1901

882:                                              ; preds = %878
  %883 = load i8, ptr %880, align 1, !dbg !1902, !tbaa !985
  %884 = icmp eq i8 %883, 0, !dbg !1903
  br i1 %884, label %886, label %885, !dbg !1904

885:                                              ; preds = %882, %878
  store i32 1, ptr %49, align 4, !dbg !1905, !tbaa !728
  br label %886, !dbg !1906

886:                                              ; preds = %882, %885
  %887 = trunc i64 %879 to i32, !dbg !1898
  call void @llvm.dbg.value(metadata i32 %887, metadata !1020, metadata !DIExpression()), !dbg !1895
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %25) #27, !dbg !1907
  %888 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 39, i32 20, !dbg !1908
  store i32 %887, ptr %888, align 8, !dbg !1909, !tbaa !728
  br label %1263, !dbg !1910

889:                                              ; preds = %875
  %890 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(15) @.str.94) #29, !dbg !1911
  %891 = icmp eq i32 %890, 0, !dbg !1911
  br i1 %891, label %892, label %903, !dbg !1912

892:                                              ; preds = %889
  call void @llvm.dbg.value(metadata ptr %49, metadata !878, metadata !DIExpression(DW_OP_deref)), !dbg !975
  call void @llvm.dbg.value(metadata ptr %84, metadata !1012, metadata !DIExpression()), !dbg !1913
  call void @llvm.dbg.value(metadata ptr %49, metadata !1018, metadata !DIExpression()), !dbg !1913
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %24) #27, !dbg !1915
  call void @llvm.dbg.value(metadata ptr %24, metadata !1019, metadata !DIExpression(DW_OP_deref)), !dbg !1913
  %893 = call i64 @strtol(ptr noundef %84, ptr noundef nonnull %24, i32 noundef 0) #27, !dbg !1916
  call void @llvm.dbg.value(metadata i64 %893, metadata !1020, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1913
  %894 = load ptr, ptr %24, align 8, !dbg !1917, !tbaa !865
  call void @llvm.dbg.value(metadata ptr %894, metadata !1019, metadata !DIExpression()), !dbg !1913
  %895 = icmp eq ptr %894, %84, !dbg !1918
  br i1 %895, label %899, label %896, !dbg !1919

896:                                              ; preds = %892
  %897 = load i8, ptr %894, align 1, !dbg !1920, !tbaa !985
  %898 = icmp eq i8 %897, 0, !dbg !1921
  br i1 %898, label %900, label %899, !dbg !1922

899:                                              ; preds = %896, %892
  store i32 1, ptr %49, align 4, !dbg !1923, !tbaa !728
  br label %900, !dbg !1924

900:                                              ; preds = %896, %899
  %901 = trunc i64 %893 to i32, !dbg !1916
  call void @llvm.dbg.value(metadata i32 %901, metadata !1020, metadata !DIExpression()), !dbg !1913
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %24) #27, !dbg !1925
  %902 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 39, i32 20, i64 1, !dbg !1926
  store i32 %901, ptr %902, align 4, !dbg !1927, !tbaa !728
  br label %1263, !dbg !1926

903:                                              ; preds = %889
  %904 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(3) @.str.95) #29, !dbg !1928
  %905 = icmp eq i32 %904, 0, !dbg !1928
  br i1 %905, label %906, label %917, !dbg !1929

906:                                              ; preds = %903
  call void @llvm.dbg.value(metadata ptr %49, metadata !878, metadata !DIExpression(DW_OP_deref)), !dbg !975
  call void @llvm.dbg.value(metadata ptr %84, metadata !1012, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata ptr %49, metadata !1018, metadata !DIExpression()), !dbg !1930
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %23) #27, !dbg !1932
  call void @llvm.dbg.value(metadata ptr %23, metadata !1019, metadata !DIExpression(DW_OP_deref)), !dbg !1930
  %907 = call i64 @strtol(ptr noundef %84, ptr noundef nonnull %23, i32 noundef 0) #27, !dbg !1933
  call void @llvm.dbg.value(metadata i64 %907, metadata !1020, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1930
  %908 = load ptr, ptr %23, align 8, !dbg !1934, !tbaa !865
  call void @llvm.dbg.value(metadata ptr %908, metadata !1019, metadata !DIExpression()), !dbg !1930
  %909 = icmp eq ptr %908, %84, !dbg !1935
  br i1 %909, label %913, label %910, !dbg !1936

910:                                              ; preds = %906
  %911 = load i8, ptr %908, align 1, !dbg !1937, !tbaa !985
  %912 = icmp eq i8 %911, 0, !dbg !1938
  br i1 %912, label %914, label %913, !dbg !1939

913:                                              ; preds = %910, %906
  store i32 1, ptr %49, align 4, !dbg !1940, !tbaa !728
  br label %914, !dbg !1941

914:                                              ; preds = %910, %913
  %915 = trunc i64 %907 to i32, !dbg !1933
  call void @llvm.dbg.value(metadata i32 %915, metadata !1020, metadata !DIExpression()), !dbg !1930
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %23) #27, !dbg !1942
  %916 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 39, i32 17, !dbg !1943
  store i32 %915, ptr %916, align 4, !dbg !1944, !tbaa !1945
  br label %1263, !dbg !1946

917:                                              ; preds = %903
  %918 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(8) @.str.96) #29, !dbg !1947
  %919 = icmp eq i32 %918, 0, !dbg !1947
  br i1 %919, label %920, label %932, !dbg !1948

920:                                              ; preds = %917
  call void @llvm.dbg.value(metadata ptr %49, metadata !878, metadata !DIExpression(DW_OP_deref)), !dbg !975
  call void @llvm.dbg.value(metadata ptr %84, metadata !1012, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.value(metadata ptr %49, metadata !1018, metadata !DIExpression()), !dbg !1949
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %22) #27, !dbg !1952
  call void @llvm.dbg.value(metadata ptr %22, metadata !1019, metadata !DIExpression(DW_OP_deref)), !dbg !1949
  %921 = call i64 @strtol(ptr noundef %84, ptr noundef nonnull %22, i32 noundef 0) #27, !dbg !1953
  call void @llvm.dbg.value(metadata i64 %921, metadata !1020, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1949
  %922 = load ptr, ptr %22, align 8, !dbg !1954, !tbaa !865
  call void @llvm.dbg.value(metadata ptr %922, metadata !1019, metadata !DIExpression()), !dbg !1949
  %923 = icmp eq ptr %922, %84, !dbg !1955
  br i1 %923, label %927, label %924, !dbg !1956

924:                                              ; preds = %920
  %925 = load i8, ptr %922, align 1, !dbg !1957, !tbaa !985
  %926 = icmp eq i8 %925, 0, !dbg !1958
  br i1 %926, label %928, label %927, !dbg !1959

927:                                              ; preds = %924, %920
  store i32 1, ptr %49, align 4, !dbg !1960, !tbaa !728
  br label %928, !dbg !1961

928:                                              ; preds = %924, %927
  %929 = trunc i64 %921 to i32, !dbg !1953
  call void @llvm.dbg.value(metadata i32 %929, metadata !1020, metadata !DIExpression()), !dbg !1949
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %22) #27, !dbg !1962
  %930 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, !dbg !1963
  %931 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 5, !dbg !1964
  store i32 %929, ptr %931, align 4, !dbg !1965, !tbaa !757
  store i32 2, ptr %930, align 8, !dbg !1966, !tbaa !1967
  br label %1263, !dbg !1968

932:                                              ; preds = %917
  %933 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(3) @.str.97) #29, !dbg !1969
  %934 = icmp eq i32 %933, 0, !dbg !1969
  br i1 %934, label %938, label %935, !dbg !1969

935:                                              ; preds = %932
  %936 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(12) @.str.98) #29, !dbg !1969
  %937 = icmp eq i32 %936, 0, !dbg !1969
  br i1 %937, label %938, label %950, !dbg !1970

938:                                              ; preds = %935, %932
  call void @llvm.dbg.value(metadata ptr %49, metadata !878, metadata !DIExpression(DW_OP_deref)), !dbg !975
  call void @llvm.dbg.value(metadata ptr %84, metadata !1012, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata ptr %49, metadata !1018, metadata !DIExpression()), !dbg !1971
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %21) #27, !dbg !1974
  call void @llvm.dbg.value(metadata ptr %21, metadata !1019, metadata !DIExpression(DW_OP_deref)), !dbg !1971
  %939 = call i64 @strtol(ptr noundef %84, ptr noundef nonnull %21, i32 noundef 0) #27, !dbg !1975
  call void @llvm.dbg.value(metadata i64 %939, metadata !1020, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1971
  %940 = load ptr, ptr %21, align 8, !dbg !1976, !tbaa !865
  call void @llvm.dbg.value(metadata ptr %940, metadata !1019, metadata !DIExpression()), !dbg !1971
  %941 = icmp eq ptr %940, %84, !dbg !1977
  br i1 %941, label %945, label %942, !dbg !1978

942:                                              ; preds = %938
  %943 = load i8, ptr %940, align 1, !dbg !1979, !tbaa !985
  %944 = icmp eq i8 %943, 0, !dbg !1980
  br i1 %944, label %946, label %945, !dbg !1981

945:                                              ; preds = %942, %938
  store i32 1, ptr %49, align 4, !dbg !1982, !tbaa !728
  br label %946, !dbg !1983

946:                                              ; preds = %942, %945
  %947 = trunc i64 %939 to i32, !dbg !1975
  call void @llvm.dbg.value(metadata i32 %947, metadata !1020, metadata !DIExpression()), !dbg !1971
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %21) #27, !dbg !1984
  %948 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, !dbg !1985
  %949 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 1, !dbg !1986
  store i32 %947, ptr %949, align 4, !dbg !1987, !tbaa !1988
  store i32 0, ptr %948, align 8, !dbg !1989, !tbaa !1967
  br label %1263, !dbg !1990

950:                                              ; preds = %935
  %951 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(4) @.str.99) #29, !dbg !1991
  %952 = icmp eq i32 %951, 0, !dbg !1991
  br i1 %952, label %953, label %965, !dbg !1992

953:                                              ; preds = %950
  call void @llvm.dbg.value(metadata ptr %49, metadata !878, metadata !DIExpression(DW_OP_deref)), !dbg !975
  call void @llvm.dbg.value(metadata ptr %84, metadata !1109, metadata !DIExpression()), !dbg !1993
  call void @llvm.dbg.value(metadata ptr %49, metadata !1115, metadata !DIExpression()), !dbg !1993
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %20) #27, !dbg !1996
  call void @llvm.dbg.value(metadata ptr %20, metadata !1116, metadata !DIExpression(DW_OP_deref)), !dbg !1993
  %954 = call fast double @strtod(ptr noundef %84, ptr noundef nonnull %20) #27, !dbg !1997
  call void @llvm.dbg.value(metadata double %954, metadata !1117, metadata !DIExpression()), !dbg !1993
  %955 = load ptr, ptr %20, align 8, !dbg !1998, !tbaa !865
  call void @llvm.dbg.value(metadata ptr %955, metadata !1116, metadata !DIExpression()), !dbg !1993
  %956 = icmp eq ptr %955, %84, !dbg !1999
  br i1 %956, label %960, label %957, !dbg !2000

957:                                              ; preds = %953
  %958 = load i8, ptr %955, align 1, !dbg !2001, !tbaa !985
  %959 = icmp eq i8 %958, 0, !dbg !2002
  br i1 %959, label %961, label %960, !dbg !2003

960:                                              ; preds = %957, %953
  store i32 1, ptr %49, align 4, !dbg !2004, !tbaa !728
  br label %961, !dbg !2005

961:                                              ; preds = %957, %960
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #27, !dbg !2006
  %962 = fptrunc double %954 to float, !dbg !2007
  %963 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, !dbg !2008
  %964 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 6, !dbg !2009
  store float %962, ptr %964, align 8, !dbg !2010, !tbaa !2011
  store i32 1, ptr %963, align 8, !dbg !2012, !tbaa !1967
  br label %1263, !dbg !2013

965:                                              ; preds = %950
  %966 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(6) @.str.100) #29, !dbg !2014
  %967 = icmp eq i32 %966, 0, !dbg !2014
  br i1 %967, label %971, label %968, !dbg !2014

968:                                              ; preds = %965
  %969 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(7) @.str.101) #29, !dbg !2014
  %970 = icmp eq i32 %969, 0, !dbg !2014
  br i1 %970, label %971, label %982, !dbg !2015

971:                                              ; preds = %968, %965
  call void @llvm.dbg.value(metadata ptr %49, metadata !878, metadata !DIExpression(DW_OP_deref)), !dbg !975
  call void @llvm.dbg.value(metadata ptr %84, metadata !1012, metadata !DIExpression()), !dbg !2016
  call void @llvm.dbg.value(metadata ptr %49, metadata !1018, metadata !DIExpression()), !dbg !2016
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #27, !dbg !2018
  call void @llvm.dbg.value(metadata ptr %19, metadata !1019, metadata !DIExpression(DW_OP_deref)), !dbg !2016
  %972 = call i64 @strtol(ptr noundef %84, ptr noundef nonnull %19, i32 noundef 0) #27, !dbg !2019
  call void @llvm.dbg.value(metadata i64 %972, metadata !1020, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2016
  %973 = load ptr, ptr %19, align 8, !dbg !2020, !tbaa !865
  call void @llvm.dbg.value(metadata ptr %973, metadata !1019, metadata !DIExpression()), !dbg !2016
  %974 = icmp eq ptr %973, %84, !dbg !2021
  br i1 %974, label %978, label %975, !dbg !2022

975:                                              ; preds = %971
  %976 = load i8, ptr %973, align 1, !dbg !2023, !tbaa !985
  %977 = icmp eq i8 %976, 0, !dbg !2024
  br i1 %977, label %979, label %978, !dbg !2025

978:                                              ; preds = %975, %971
  store i32 1, ptr %49, align 4, !dbg !2026, !tbaa !728
  br label %979, !dbg !2027

979:                                              ; preds = %975, %978
  %980 = trunc i64 %972 to i32, !dbg !2019
  call void @llvm.dbg.value(metadata i32 %980, metadata !1020, metadata !DIExpression()), !dbg !2016
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #27, !dbg !2028
  %981 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 2, !dbg !2029
  store i32 %980, ptr %981, align 8, !dbg !2030, !tbaa !2031
  br label %1263, !dbg !2032

982:                                              ; preds = %968
  %983 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(6) @.str.102) #29, !dbg !2033
  %984 = icmp eq i32 %983, 0, !dbg !2033
  br i1 %984, label %988, label %985, !dbg !2033

985:                                              ; preds = %982
  %986 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(7) @.str.103) #29, !dbg !2033
  %987 = icmp eq i32 %986, 0, !dbg !2033
  br i1 %987, label %988, label %999, !dbg !2034

988:                                              ; preds = %985, %982
  call void @llvm.dbg.value(metadata ptr %49, metadata !878, metadata !DIExpression(DW_OP_deref)), !dbg !975
  call void @llvm.dbg.value(metadata ptr %84, metadata !1012, metadata !DIExpression()), !dbg !2035
  call void @llvm.dbg.value(metadata ptr %49, metadata !1018, metadata !DIExpression()), !dbg !2035
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #27, !dbg !2037
  call void @llvm.dbg.value(metadata ptr %18, metadata !1019, metadata !DIExpression(DW_OP_deref)), !dbg !2035
  %989 = call i64 @strtol(ptr noundef %84, ptr noundef nonnull %18, i32 noundef 0) #27, !dbg !2038
  call void @llvm.dbg.value(metadata i64 %989, metadata !1020, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2035
  %990 = load ptr, ptr %18, align 8, !dbg !2039, !tbaa !865
  call void @llvm.dbg.value(metadata ptr %990, metadata !1019, metadata !DIExpression()), !dbg !2035
  %991 = icmp eq ptr %990, %84, !dbg !2040
  br i1 %991, label %995, label %992, !dbg !2041

992:                                              ; preds = %988
  %993 = load i8, ptr %990, align 1, !dbg !2042, !tbaa !985
  %994 = icmp eq i8 %993, 0, !dbg !2043
  br i1 %994, label %996, label %995, !dbg !2044

995:                                              ; preds = %992, %988
  store i32 1, ptr %49, align 4, !dbg !2045, !tbaa !728
  br label %996, !dbg !2046

996:                                              ; preds = %992, %995
  %997 = trunc i64 %989 to i32, !dbg !2038
  call void @llvm.dbg.value(metadata i32 %997, metadata !1020, metadata !DIExpression()), !dbg !2035
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #27, !dbg !2047
  %998 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 3, !dbg !2048
  store i32 %997, ptr %998, align 4, !dbg !2049, !tbaa !2050
  br label %1263, !dbg !2051

999:                                              ; preds = %985
  %1000 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(7) @.str.104) #29, !dbg !2052
  %1001 = icmp eq i32 %1000, 0, !dbg !2052
  br i1 %1001, label %1005, label %1002, !dbg !2052

1002:                                             ; preds = %999
  %1003 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(8) @.str.105) #29, !dbg !2052
  %1004 = icmp eq i32 %1003, 0, !dbg !2052
  br i1 %1004, label %1005, label %1016, !dbg !2053

1005:                                             ; preds = %1002, %999
  call void @llvm.dbg.value(metadata ptr %49, metadata !878, metadata !DIExpression(DW_OP_deref)), !dbg !975
  call void @llvm.dbg.value(metadata ptr %84, metadata !1012, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata ptr %49, metadata !1018, metadata !DIExpression()), !dbg !2054
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #27, !dbg !2056
  call void @llvm.dbg.value(metadata ptr %17, metadata !1019, metadata !DIExpression(DW_OP_deref)), !dbg !2054
  %1006 = call i64 @strtol(ptr noundef %84, ptr noundef nonnull %17, i32 noundef 0) #27, !dbg !2057
  call void @llvm.dbg.value(metadata i64 %1006, metadata !1020, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2054
  %1007 = load ptr, ptr %17, align 8, !dbg !2058, !tbaa !865
  call void @llvm.dbg.value(metadata ptr %1007, metadata !1019, metadata !DIExpression()), !dbg !2054
  %1008 = icmp eq ptr %1007, %84, !dbg !2059
  br i1 %1008, label %1012, label %1009, !dbg !2060

1009:                                             ; preds = %1005
  %1010 = load i8, ptr %1007, align 1, !dbg !2061, !tbaa !985
  %1011 = icmp eq i8 %1010, 0, !dbg !2062
  br i1 %1011, label %1013, label %1012, !dbg !2063

1012:                                             ; preds = %1009, %1005
  store i32 1, ptr %49, align 4, !dbg !2064, !tbaa !728
  br label %1013, !dbg !2065

1013:                                             ; preds = %1009, %1012
  %1014 = trunc i64 %1006 to i32, !dbg !2057
  call void @llvm.dbg.value(metadata i32 %1014, metadata !1020, metadata !DIExpression()), !dbg !2054
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #27, !dbg !2066
  %1015 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 4, !dbg !2067
  store i32 %1014, ptr %1015, align 8, !dbg !2068, !tbaa !771
  br label %1263, !dbg !2069

1016:                                             ; preds = %1002
  %1017 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(8) @.str.106) #29, !dbg !2070
  %1018 = icmp eq i32 %1017, 0, !dbg !2070
  br i1 %1018, label %1019, label %1035, !dbg !2071

1019:                                             ; preds = %1016
  %1020 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(4) @.str.107, ptr noundef nonnull dereferenceable(1) %84, i64 noundef 3) #29, !dbg !2072
  %1021 = icmp eq i32 %1020, 0, !dbg !2072
  br i1 %1021, label %1032, label %1022, !dbg !2073

1022:                                             ; preds = %1019
  call void @llvm.dbg.value(metadata ptr %49, metadata !878, metadata !DIExpression(DW_OP_deref)), !dbg !975
  call void @llvm.dbg.value(metadata ptr %84, metadata !1109, metadata !DIExpression()), !dbg !2074
  call void @llvm.dbg.value(metadata ptr %49, metadata !1115, metadata !DIExpression()), !dbg !2074
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #27, !dbg !2076
  call void @llvm.dbg.value(metadata ptr %16, metadata !1116, metadata !DIExpression(DW_OP_deref)), !dbg !2074
  %1023 = call fast double @strtod(ptr noundef %84, ptr noundef nonnull %16) #27, !dbg !2077
  call void @llvm.dbg.value(metadata double %1023, metadata !1117, metadata !DIExpression()), !dbg !2074
  %1024 = load ptr, ptr %16, align 8, !dbg !2078, !tbaa !865
  call void @llvm.dbg.value(metadata ptr %1024, metadata !1116, metadata !DIExpression()), !dbg !2074
  %1025 = icmp eq ptr %1024, %84, !dbg !2079
  br i1 %1025, label %1029, label %1026, !dbg !2080

1026:                                             ; preds = %1022
  %1027 = load i8, ptr %1024, align 1, !dbg !2081, !tbaa !985
  %1028 = icmp eq i8 %1027, 0, !dbg !2082
  br i1 %1028, label %1030, label %1029, !dbg !2083

1029:                                             ; preds = %1026, %1022
  store i32 1, ptr %49, align 4, !dbg !2084, !tbaa !728
  br label %1030, !dbg !2085

1030:                                             ; preds = %1026, %1029
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #27, !dbg !2086
  %1031 = fptrunc double %1023 to float, !dbg !2073
  br label %1032, !dbg !2073

1032:                                             ; preds = %1019, %1030
  %1033 = phi float [ %1031, %1030 ], [ 1.000000e+09, %1019 ]
  %1034 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 7, !dbg !2087
  store float %1033, ptr %1034, align 4, !dbg !2088, !tbaa !2089
  br label %1263, !dbg !2090

1035:                                             ; preds = %1016
  %1036 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(12) @.str.108) #29, !dbg !2091
  %1037 = icmp eq i32 %1036, 0, !dbg !2091
  br i1 %1037, label %1038, label %1049, !dbg !2092

1038:                                             ; preds = %1035
  call void @llvm.dbg.value(metadata ptr %49, metadata !878, metadata !DIExpression(DW_OP_deref)), !dbg !975
  call void @llvm.dbg.value(metadata ptr %84, metadata !1012, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata ptr %49, metadata !1018, metadata !DIExpression()), !dbg !2093
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #27, !dbg !2095
  call void @llvm.dbg.value(metadata ptr %15, metadata !1019, metadata !DIExpression(DW_OP_deref)), !dbg !2093
  %1039 = call i64 @strtol(ptr noundef %84, ptr noundef nonnull %15, i32 noundef 0) #27, !dbg !2096
  call void @llvm.dbg.value(metadata i64 %1039, metadata !1020, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2093
  %1040 = load ptr, ptr %15, align 8, !dbg !2097, !tbaa !865
  call void @llvm.dbg.value(metadata ptr %1040, metadata !1019, metadata !DIExpression()), !dbg !2093
  %1041 = icmp eq ptr %1040, %84, !dbg !2098
  br i1 %1041, label %1045, label %1042, !dbg !2099

1042:                                             ; preds = %1038
  %1043 = load i8, ptr %1040, align 1, !dbg !2100, !tbaa !985
  %1044 = icmp eq i8 %1043, 0, !dbg !2101
  br i1 %1044, label %1046, label %1045, !dbg !2102

1045:                                             ; preds = %1042, %1038
  store i32 1, ptr %49, align 4, !dbg !2103, !tbaa !728
  br label %1046, !dbg !2104

1046:                                             ; preds = %1042, %1045
  %1047 = trunc i64 %1039 to i32, !dbg !2096
  call void @llvm.dbg.value(metadata i32 %1047, metadata !1020, metadata !DIExpression()), !dbg !2093
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #27, !dbg !2105
  %1048 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 8, !dbg !2106
  store i32 %1047, ptr %1048, align 8, !dbg !2107, !tbaa !760
  br label %1263, !dbg !2108

1049:                                             ; preds = %1035
  %1050 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(12) @.str.109) #29, !dbg !2109
  %1051 = icmp eq i32 %1050, 0, !dbg !2109
  br i1 %1051, label %1052, label %1063, !dbg !2110

1052:                                             ; preds = %1049
  call void @llvm.dbg.value(metadata ptr %49, metadata !878, metadata !DIExpression(DW_OP_deref)), !dbg !975
  call void @llvm.dbg.value(metadata ptr %84, metadata !1012, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata ptr %49, metadata !1018, metadata !DIExpression()), !dbg !2111
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #27, !dbg !2113
  call void @llvm.dbg.value(metadata ptr %14, metadata !1019, metadata !DIExpression(DW_OP_deref)), !dbg !2111
  %1053 = call i64 @strtol(ptr noundef %84, ptr noundef nonnull %14, i32 noundef 0) #27, !dbg !2114
  call void @llvm.dbg.value(metadata i64 %1053, metadata !1020, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2111
  %1054 = load ptr, ptr %14, align 8, !dbg !2115, !tbaa !865
  call void @llvm.dbg.value(metadata ptr %1054, metadata !1019, metadata !DIExpression()), !dbg !2111
  %1055 = icmp eq ptr %1054, %84, !dbg !2116
  br i1 %1055, label %1059, label %1056, !dbg !2117

1056:                                             ; preds = %1052
  %1057 = load i8, ptr %1054, align 1, !dbg !2118, !tbaa !985
  %1058 = icmp eq i8 %1057, 0, !dbg !2119
  br i1 %1058, label %1060, label %1059, !dbg !2120

1059:                                             ; preds = %1056, %1052
  store i32 1, ptr %49, align 4, !dbg !2121, !tbaa !728
  br label %1060, !dbg !2122

1060:                                             ; preds = %1056, %1059
  %1061 = trunc i64 %1053 to i32, !dbg !2114
  call void @llvm.dbg.value(metadata i32 %1061, metadata !1020, metadata !DIExpression()), !dbg !2111
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #27, !dbg !2123
  %1062 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 9, !dbg !2124
  store i32 %1061, ptr %1062, align 4, !dbg !2125, !tbaa !763
  br label %1263, !dbg !2126

1063:                                             ; preds = %1049
  %1064 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(9) @.str.110) #29, !dbg !2127
  %1065 = icmp eq i32 %1064, 0, !dbg !2127
  br i1 %1065, label %1066, label %1077, !dbg !2128

1066:                                             ; preds = %1063
  call void @llvm.dbg.value(metadata ptr %49, metadata !878, metadata !DIExpression(DW_OP_deref)), !dbg !975
  call void @llvm.dbg.value(metadata ptr %84, metadata !1109, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata ptr %49, metadata !1115, metadata !DIExpression()), !dbg !2129
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #27, !dbg !2131
  call void @llvm.dbg.value(metadata ptr %13, metadata !1116, metadata !DIExpression(DW_OP_deref)), !dbg !2129
  %1067 = call fast double @strtod(ptr noundef %84, ptr noundef nonnull %13) #27, !dbg !2132
  call void @llvm.dbg.value(metadata double %1067, metadata !1117, metadata !DIExpression()), !dbg !2129
  %1068 = load ptr, ptr %13, align 8, !dbg !2133, !tbaa !865
  call void @llvm.dbg.value(metadata ptr %1068, metadata !1116, metadata !DIExpression()), !dbg !2129
  %1069 = icmp eq ptr %1068, %84, !dbg !2134
  br i1 %1069, label %1073, label %1070, !dbg !2135

1070:                                             ; preds = %1066
  %1071 = load i8, ptr %1068, align 1, !dbg !2136, !tbaa !985
  %1072 = icmp eq i8 %1071, 0, !dbg !2137
  br i1 %1072, label %1074, label %1073, !dbg !2138

1073:                                             ; preds = %1070, %1066
  store i32 1, ptr %49, align 4, !dbg !2139, !tbaa !728
  br label %1074, !dbg !2140

1074:                                             ; preds = %1070, %1073
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #27, !dbg !2141
  %1075 = fptrunc double %1067 to float, !dbg !2142
  %1076 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 10, !dbg !2143
  store float %1075, ptr %1076, align 8, !dbg !2144, !tbaa !2145
  br label %1263, !dbg !2146

1077:                                             ; preds = %1063
  %1078 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(8) @.str.111) #29, !dbg !2147
  %1079 = icmp eq i32 %1078, 0, !dbg !2147
  br i1 %1079, label %1083, label %1080, !dbg !2147

1080:                                             ; preds = %1077
  %1081 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(10) @.str.112) #29, !dbg !2147
  %1082 = icmp eq i32 %1081, 0, !dbg !2147
  br i1 %1082, label %1083, label %1094, !dbg !2148

1083:                                             ; preds = %1080, %1077
  call void @llvm.dbg.value(metadata ptr %49, metadata !878, metadata !DIExpression(DW_OP_deref)), !dbg !975
  call void @llvm.dbg.value(metadata ptr %84, metadata !1109, metadata !DIExpression()), !dbg !2149
  call void @llvm.dbg.value(metadata ptr %49, metadata !1115, metadata !DIExpression()), !dbg !2149
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #27, !dbg !2151
  call void @llvm.dbg.value(metadata ptr %12, metadata !1116, metadata !DIExpression(DW_OP_deref)), !dbg !2149
  %1084 = call fast double @strtod(ptr noundef %84, ptr noundef nonnull %12) #27, !dbg !2152
  call void @llvm.dbg.value(metadata double %1084, metadata !1117, metadata !DIExpression()), !dbg !2149
  %1085 = load ptr, ptr %12, align 8, !dbg !2153, !tbaa !865
  call void @llvm.dbg.value(metadata ptr %1085, metadata !1116, metadata !DIExpression()), !dbg !2149
  %1086 = icmp eq ptr %1085, %84, !dbg !2154
  br i1 %1086, label %1090, label %1087, !dbg !2155

1087:                                             ; preds = %1083
  %1088 = load i8, ptr %1085, align 1, !dbg !2156, !tbaa !985
  %1089 = icmp eq i8 %1088, 0, !dbg !2157
  br i1 %1089, label %1091, label %1090, !dbg !2158

1090:                                             ; preds = %1087, %1083
  store i32 1, ptr %49, align 4, !dbg !2159, !tbaa !728
  br label %1091, !dbg !2160

1091:                                             ; preds = %1087, %1090
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #27, !dbg !2161
  %1092 = fptrunc double %1084 to float, !dbg !2162
  %1093 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 11, !dbg !2163
  store float %1092, ptr %1093, align 4, !dbg !2164, !tbaa !2165
  br label %1263, !dbg !2166

1094:                                             ; preds = %1080
  %1095 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(8) @.str.113) #29, !dbg !2167
  %1096 = icmp eq i32 %1095, 0, !dbg !2167
  br i1 %1096, label %1100, label %1097, !dbg !2167

1097:                                             ; preds = %1094
  %1098 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(10) @.str.114) #29, !dbg !2167
  %1099 = icmp eq i32 %1098, 0, !dbg !2167
  br i1 %1099, label %1100, label %1111, !dbg !2168

1100:                                             ; preds = %1097, %1094
  call void @llvm.dbg.value(metadata ptr %49, metadata !878, metadata !DIExpression(DW_OP_deref)), !dbg !975
  call void @llvm.dbg.value(metadata ptr %84, metadata !1109, metadata !DIExpression()), !dbg !2169
  call void @llvm.dbg.value(metadata ptr %49, metadata !1115, metadata !DIExpression()), !dbg !2169
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #27, !dbg !2171
  call void @llvm.dbg.value(metadata ptr %11, metadata !1116, metadata !DIExpression(DW_OP_deref)), !dbg !2169
  %1101 = call fast double @strtod(ptr noundef %84, ptr noundef nonnull %11) #27, !dbg !2172
  call void @llvm.dbg.value(metadata double %1101, metadata !1117, metadata !DIExpression()), !dbg !2169
  %1102 = load ptr, ptr %11, align 8, !dbg !2173, !tbaa !865
  call void @llvm.dbg.value(metadata ptr %1102, metadata !1116, metadata !DIExpression()), !dbg !2169
  %1103 = icmp eq ptr %1102, %84, !dbg !2174
  br i1 %1103, label %1107, label %1104, !dbg !2175

1104:                                             ; preds = %1100
  %1105 = load i8, ptr %1102, align 1, !dbg !2176, !tbaa !985
  %1106 = icmp eq i8 %1105, 0, !dbg !2177
  br i1 %1106, label %1108, label %1107, !dbg !2178

1107:                                             ; preds = %1104, %1100
  store i32 1, ptr %49, align 4, !dbg !2179, !tbaa !728
  br label %1108, !dbg !2180

1108:                                             ; preds = %1104, %1107
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #27, !dbg !2181
  %1109 = fptrunc double %1101 to float, !dbg !2182
  %1110 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 12, !dbg !2183
  store float %1109, ptr %1110, align 8, !dbg !2184, !tbaa !775
  br label %1263, !dbg !2185

1111:                                             ; preds = %1097
  %1112 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(8) @.str.115) #29, !dbg !2186
  %1113 = icmp eq i32 %1112, 0, !dbg !2186
  br i1 %1113, label %1114, label %1125, !dbg !2187

1114:                                             ; preds = %1111
  call void @llvm.dbg.value(metadata ptr %49, metadata !878, metadata !DIExpression(DW_OP_deref)), !dbg !975
  call void @llvm.dbg.value(metadata ptr %84, metadata !1012, metadata !DIExpression()), !dbg !2188
  call void @llvm.dbg.value(metadata ptr %49, metadata !1018, metadata !DIExpression()), !dbg !2188
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #27, !dbg !2190
  call void @llvm.dbg.value(metadata ptr %10, metadata !1019, metadata !DIExpression(DW_OP_deref)), !dbg !2188
  %1115 = call i64 @strtol(ptr noundef %84, ptr noundef nonnull %10, i32 noundef 0) #27, !dbg !2191
  call void @llvm.dbg.value(metadata i64 %1115, metadata !1020, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2188
  %1116 = load ptr, ptr %10, align 8, !dbg !2192, !tbaa !865
  call void @llvm.dbg.value(metadata ptr %1116, metadata !1019, metadata !DIExpression()), !dbg !2188
  %1117 = icmp eq ptr %1116, %84, !dbg !2193
  br i1 %1117, label %1121, label %1118, !dbg !2194

1118:                                             ; preds = %1114
  %1119 = load i8, ptr %1116, align 1, !dbg !2195, !tbaa !985
  %1120 = icmp eq i8 %1119, 0, !dbg !2196
  br i1 %1120, label %1122, label %1121, !dbg !2197

1121:                                             ; preds = %1118, %1114
  store i32 1, ptr %49, align 4, !dbg !2198, !tbaa !728
  br label %1122, !dbg !2199

1122:                                             ; preds = %1118, %1121
  %1123 = trunc i64 %1115 to i32, !dbg !2191
  call void @llvm.dbg.value(metadata i32 %1123, metadata !1020, metadata !DIExpression()), !dbg !2188
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #27, !dbg !2200
  %1124 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 13, !dbg !2201
  store i32 %1123, ptr %1124, align 4, !dbg !2202, !tbaa !778
  br label %1263, !dbg !2203

1125:                                             ; preds = %1111
  %1126 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(12) @.str.116) #29, !dbg !2204
  %1127 = icmp eq i32 %1126, 0, !dbg !2204
  br i1 %1127, label %1128, label %1139, !dbg !2205

1128:                                             ; preds = %1125
  call void @llvm.dbg.value(metadata ptr %49, metadata !878, metadata !DIExpression(DW_OP_deref)), !dbg !975
  call void @llvm.dbg.value(metadata ptr %84, metadata !1109, metadata !DIExpression()), !dbg !2206
  call void @llvm.dbg.value(metadata ptr %49, metadata !1115, metadata !DIExpression()), !dbg !2206
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #27, !dbg !2208
  call void @llvm.dbg.value(metadata ptr %9, metadata !1116, metadata !DIExpression(DW_OP_deref)), !dbg !2206
  %1129 = call fast double @strtod(ptr noundef %84, ptr noundef nonnull %9) #27, !dbg !2209
  call void @llvm.dbg.value(metadata double %1129, metadata !1117, metadata !DIExpression()), !dbg !2206
  %1130 = load ptr, ptr %9, align 8, !dbg !2210, !tbaa !865
  call void @llvm.dbg.value(metadata ptr %1130, metadata !1116, metadata !DIExpression()), !dbg !2206
  %1131 = icmp eq ptr %1130, %84, !dbg !2211
  br i1 %1131, label %1135, label %1132, !dbg !2212

1132:                                             ; preds = %1128
  %1133 = load i8, ptr %1130, align 1, !dbg !2213, !tbaa !985
  %1134 = icmp eq i8 %1133, 0, !dbg !2214
  br i1 %1134, label %1136, label %1135, !dbg !2215

1135:                                             ; preds = %1132, %1128
  store i32 1, ptr %49, align 4, !dbg !2216, !tbaa !728
  br label %1136, !dbg !2217

1136:                                             ; preds = %1132, %1135
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #27, !dbg !2218
  %1137 = fptrunc double %1129 to float, !dbg !2219
  %1138 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 14, !dbg !2220
  store float %1137, ptr %1138, align 8, !dbg !2221, !tbaa !781
  br label %1263, !dbg !2222

1139:                                             ; preds = %1125
  %1140 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(5) @.str.117) #29, !dbg !2223
  %1141 = icmp eq i32 %1140, 0, !dbg !2223
  br i1 %1141, label %1142, label %1158, !dbg !2224

1142:                                             ; preds = %1139
  call void @llvm.dbg.value(metadata ptr %49, metadata !878, metadata !DIExpression(DW_OP_deref)), !dbg !975
  call void @llvm.dbg.value(metadata ptr %84, metadata !1012, metadata !DIExpression()), !dbg !2225
  call void @llvm.dbg.value(metadata ptr %49, metadata !1018, metadata !DIExpression()), !dbg !2225
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #27, !dbg !2227
  call void @llvm.dbg.value(metadata ptr %8, metadata !1019, metadata !DIExpression(DW_OP_deref)), !dbg !2225
  %1143 = call i64 @strtol(ptr noundef %84, ptr noundef nonnull %8, i32 noundef 0) #27, !dbg !2228
  call void @llvm.dbg.value(metadata i64 %1143, metadata !1020, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2225
  %1144 = load ptr, ptr %8, align 8, !dbg !2229, !tbaa !865
  call void @llvm.dbg.value(metadata ptr %1144, metadata !1019, metadata !DIExpression()), !dbg !2225
  %1145 = icmp eq ptr %1144, %84, !dbg !2230
  br i1 %1145, label %1149, label %1146, !dbg !2231

1146:                                             ; preds = %1142
  %1147 = load i8, ptr %1144, align 1, !dbg !2232, !tbaa !985
  %1148 = icmp eq i8 %1147, 0, !dbg !2233
  br i1 %1148, label %1150, label %1149, !dbg !2234

1149:                                             ; preds = %1146, %1142
  store i32 1, ptr %49, align 4, !dbg !2235, !tbaa !728
  br label %1150, !dbg !2236

1150:                                             ; preds = %1146, %1149
  %1151 = trunc i64 %1143 to i32, !dbg !2228
  call void @llvm.dbg.value(metadata i32 %1151, metadata !1020, metadata !DIExpression()), !dbg !2225
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #27, !dbg !2237
  call void @llvm.dbg.value(metadata i32 %1151, metadata !2238, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.value(metadata i32 0, metadata !2244, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.value(metadata i32 3, metadata !2245, metadata !DIExpression()), !dbg !2246
  %1152 = tail call i32 @llvm.smin.i32(i32 %1151, i32 3), !dbg !2248
  %1153 = tail call i32 @llvm.smax.i32(i32 %1152, i32 0), !dbg !2248
  call void @llvm.dbg.value(metadata i32 %1153, metadata !910, metadata !DIExpression()), !dbg !2249
  %1154 = and i32 %1153, 1, !dbg !2250
  %1155 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 15, !dbg !2251
  store i32 %1154, ptr %1155, align 4, !dbg !2252, !tbaa !784
  %1156 = and i32 %1153, 2, !dbg !2253
  %1157 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 17, !dbg !2254
  store i32 %1156, ptr %1157, align 8, !dbg !2255, !tbaa !790
  br label %1263, !dbg !2256

1158:                                             ; preds = %1139
  %1159 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(6) @.str.118) #29, !dbg !2257
  %1160 = icmp eq i32 %1159, 0, !dbg !2257
  br i1 %1160, label %1161, label %1166, !dbg !2259

1161:                                             ; preds = %1158
  %1162 = tail call noalias ptr @strdup(ptr noundef %84) #27, !dbg !2260
  %1163 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 18, !dbg !2262
  store ptr %1162, ptr %1163, align 8, !dbg !2263, !tbaa !793
  %1164 = tail call noalias ptr @strdup(ptr noundef %84) #27, !dbg !2264
  %1165 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 16, !dbg !2265
  store ptr %1164, ptr %1165, align 8, !dbg !2266, !tbaa !787
  br label %1263, !dbg !2267

1166:                                             ; preds = %1158
  %1167 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(6) @.str.119) #29, !dbg !2268
  %1168 = icmp eq i32 %1167, 0, !dbg !2268
  br i1 %1168, label %1169, label %1180, !dbg !2270

1169:                                             ; preds = %1166
  call void @llvm.dbg.value(metadata ptr %49, metadata !878, metadata !DIExpression(DW_OP_deref)), !dbg !975
  call void @llvm.dbg.value(metadata ptr %84, metadata !1109, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata ptr %49, metadata !1115, metadata !DIExpression()), !dbg !2271
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #27, !dbg !2273
  call void @llvm.dbg.value(metadata ptr %7, metadata !1116, metadata !DIExpression(DW_OP_deref)), !dbg !2271
  %1170 = call fast double @strtod(ptr noundef %84, ptr noundef nonnull %7) #27, !dbg !2274
  call void @llvm.dbg.value(metadata double %1170, metadata !1117, metadata !DIExpression()), !dbg !2271
  %1171 = load ptr, ptr %7, align 8, !dbg !2275, !tbaa !865
  call void @llvm.dbg.value(metadata ptr %1171, metadata !1116, metadata !DIExpression()), !dbg !2271
  %1172 = icmp eq ptr %1171, %84, !dbg !2276
  br i1 %1172, label %1176, label %1173, !dbg !2277

1173:                                             ; preds = %1169
  %1174 = load i8, ptr %1171, align 1, !dbg !2278, !tbaa !985
  %1175 = icmp eq i8 %1174, 0, !dbg !2279
  br i1 %1175, label %1177, label %1176, !dbg !2280

1176:                                             ; preds = %1173, %1169
  store i32 1, ptr %49, align 4, !dbg !2281, !tbaa !728
  br label %1177, !dbg !2282

1177:                                             ; preds = %1173, %1176
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #27, !dbg !2283
  %1178 = fptrunc double %1170 to float, !dbg !2284
  %1179 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 19, !dbg !2285
  store float %1178, ptr %1179, align 8, !dbg !2286, !tbaa !2287
  br label %1263, !dbg !2288

1180:                                             ; preds = %1166
  %1181 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(6) @.str.120) #29, !dbg !2289
  %1182 = icmp eq i32 %1181, 0, !dbg !2289
  br i1 %1182, label %1183, label %1194, !dbg !2291

1183:                                             ; preds = %1180
  call void @llvm.dbg.value(metadata ptr %49, metadata !878, metadata !DIExpression(DW_OP_deref)), !dbg !975
  call void @llvm.dbg.value(metadata ptr %84, metadata !1109, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata ptr %49, metadata !1115, metadata !DIExpression()), !dbg !2292
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #27, !dbg !2294
  call void @llvm.dbg.value(metadata ptr %6, metadata !1116, metadata !DIExpression(DW_OP_deref)), !dbg !2292
  %1184 = call fast double @strtod(ptr noundef %84, ptr noundef nonnull %6) #27, !dbg !2295
  call void @llvm.dbg.value(metadata double %1184, metadata !1117, metadata !DIExpression()), !dbg !2292
  %1185 = load ptr, ptr %6, align 8, !dbg !2296, !tbaa !865
  call void @llvm.dbg.value(metadata ptr %1185, metadata !1116, metadata !DIExpression()), !dbg !2292
  %1186 = icmp eq ptr %1185, %84, !dbg !2297
  br i1 %1186, label %1190, label %1187, !dbg !2298

1187:                                             ; preds = %1183
  %1188 = load i8, ptr %1185, align 1, !dbg !2299, !tbaa !985
  %1189 = icmp eq i8 %1188, 0, !dbg !2300
  br i1 %1189, label %1191, label %1190, !dbg !2301

1190:                                             ; preds = %1187, %1183
  store i32 1, ptr %49, align 4, !dbg !2302, !tbaa !728
  br label %1191, !dbg !2303

1191:                                             ; preds = %1187, %1190
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #27, !dbg !2304
  %1192 = fptrunc double %1184 to float, !dbg !2305
  %1193 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 20, !dbg !2306
  store float %1192, ptr %1193, align 4, !dbg !2307, !tbaa !2308
  br label %1263, !dbg !2309

1194:                                             ; preds = %1180
  %1195 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(9) @.str.121) #29, !dbg !2310
  %1196 = icmp eq i32 %1195, 0, !dbg !2310
  br i1 %1196, label %1200, label %1197, !dbg !2310

1197:                                             ; preds = %1194
  %1198 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(10) @.str.122) #29, !dbg !2310
  %1199 = icmp eq i32 %1198, 0, !dbg !2310
  br i1 %1199, label %1200, label %1211, !dbg !2312

1200:                                             ; preds = %1197, %1194
  call void @llvm.dbg.value(metadata ptr %49, metadata !878, metadata !DIExpression(DW_OP_deref)), !dbg !975
  call void @llvm.dbg.value(metadata ptr %84, metadata !1109, metadata !DIExpression()), !dbg !2313
  call void @llvm.dbg.value(metadata ptr %49, metadata !1115, metadata !DIExpression()), !dbg !2313
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #27, !dbg !2315
  call void @llvm.dbg.value(metadata ptr %5, metadata !1116, metadata !DIExpression(DW_OP_deref)), !dbg !2313
  %1201 = call fast double @strtod(ptr noundef %84, ptr noundef nonnull %5) #27, !dbg !2316
  call void @llvm.dbg.value(metadata double %1201, metadata !1117, metadata !DIExpression()), !dbg !2313
  %1202 = load ptr, ptr %5, align 8, !dbg !2317, !tbaa !865
  call void @llvm.dbg.value(metadata ptr %1202, metadata !1116, metadata !DIExpression()), !dbg !2313
  %1203 = icmp eq ptr %1202, %84, !dbg !2318
  br i1 %1203, label %1207, label %1204, !dbg !2319

1204:                                             ; preds = %1200
  %1205 = load i8, ptr %1202, align 1, !dbg !2320, !tbaa !985
  %1206 = icmp eq i8 %1205, 0, !dbg !2321
  br i1 %1206, label %1208, label %1207, !dbg !2322

1207:                                             ; preds = %1204, %1200
  store i32 1, ptr %49, align 4, !dbg !2323, !tbaa !728
  br label %1208, !dbg !2324

1208:                                             ; preds = %1204, %1207
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #27, !dbg !2325
  %1209 = fptrunc double %1201 to float, !dbg !2326
  %1210 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 21, !dbg !2327
  store float %1209, ptr %1210, align 8, !dbg !2328, !tbaa !798
  br label %1263, !dbg !2329

1211:                                             ; preds = %1197
  %1212 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(6) @.str.123) #29, !dbg !2330
  %1213 = icmp eq i32 %1212, 0, !dbg !2330
  br i1 %1213, label %1214, label %1217, !dbg !2332

1214:                                             ; preds = %1211
  %1215 = tail call noalias ptr @strdup(ptr noundef %84) #27, !dbg !2333
  %1216 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 24, !dbg !2334
  store ptr %1215, ptr %1216, align 8, !dbg !2335, !tbaa !2336
  br label %1263, !dbg !2337

1217:                                             ; preds = %1211
  %1218 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(5) @.str.124) #29, !dbg !2338
  %1219 = icmp eq i32 %1218, 0, !dbg !2338
  br i1 %1219, label %1220, label %1223, !dbg !2340

1220:                                             ; preds = %1217
  call void @llvm.dbg.value(metadata i32 1, metadata !879, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata ptr %49, metadata !878, metadata !DIExpression(DW_OP_deref)), !dbg !975
  %1221 = call fastcc i32 @x264_atobool(ptr noundef %84, ptr noundef nonnull %49), !dbg !2341
  %1222 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 39, i32 21, !dbg !2342
  store i32 %1221, ptr %1222, align 8, !dbg !2343, !tbaa !2344
  br label %1263, !dbg !2345

1223:                                             ; preds = %1217
  %1224 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(5) @.str.125) #29, !dbg !2346
  %1225 = icmp eq i32 %1224, 0, !dbg !2346
  br i1 %1225, label %1226, label %1229, !dbg !2348

1226:                                             ; preds = %1223
  call void @llvm.dbg.value(metadata i32 1, metadata !879, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata ptr %49, metadata !878, metadata !DIExpression(DW_OP_deref)), !dbg !975
  %1227 = call fastcc i32 @x264_atobool(ptr noundef %84, ptr noundef nonnull %49), !dbg !2349
  %1228 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 39, i32 22, !dbg !2350
  store i32 %1227, ptr %1228, align 4, !dbg !2351, !tbaa !2352
  br label %1263, !dbg !2353

1229:                                             ; preds = %1223
  %1230 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(4) @.str.126) #29, !dbg !2354
  %1231 = icmp eq i32 %1230, 0, !dbg !2354
  br i1 %1231, label %1232, label %1235, !dbg !2356

1232:                                             ; preds = %1229
  call void @llvm.dbg.value(metadata i32 1, metadata !879, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata ptr %49, metadata !878, metadata !DIExpression(DW_OP_deref)), !dbg !975
  %1233 = call fastcc i32 @x264_atobool(ptr noundef %84, ptr noundef nonnull %49), !dbg !2357
  %1234 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, !dbg !2358
  store i32 %1233, ptr %1234, align 8, !dbg !2359, !tbaa !844
  br label %1263, !dbg !2360

1235:                                             ; preds = %1229
  %1236 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(7) @.str.127) #29, !dbg !2361
  %1237 = icmp eq i32 %1236, 0, !dbg !2361
  br i1 %1237, label %1238, label %1249, !dbg !2363

1238:                                             ; preds = %1235
  call void @llvm.dbg.value(metadata ptr %49, metadata !878, metadata !DIExpression(DW_OP_deref)), !dbg !975
  call void @llvm.dbg.value(metadata ptr %84, metadata !1012, metadata !DIExpression()), !dbg !2364
  call void @llvm.dbg.value(metadata ptr %49, metadata !1018, metadata !DIExpression()), !dbg !2364
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #27, !dbg !2366
  call void @llvm.dbg.value(metadata ptr %4, metadata !1019, metadata !DIExpression(DW_OP_deref)), !dbg !2364
  %1239 = call i64 @strtol(ptr noundef %84, ptr noundef nonnull %4, i32 noundef 0) #27, !dbg !2367
  call void @llvm.dbg.value(metadata i64 %1239, metadata !1020, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2364
  %1240 = load ptr, ptr %4, align 8, !dbg !2368, !tbaa !865
  call void @llvm.dbg.value(metadata ptr %1240, metadata !1019, metadata !DIExpression()), !dbg !2364
  %1241 = icmp eq ptr %1240, %84, !dbg !2369
  br i1 %1241, label %1245, label %1242, !dbg !2370

1242:                                             ; preds = %1238
  %1243 = load i8, ptr %1240, align 1, !dbg !2371, !tbaa !985
  %1244 = icmp eq i8 %1243, 0, !dbg !2372
  br i1 %1244, label %1246, label %1245, !dbg !2373

1245:                                             ; preds = %1242, %1238
  store i32 1, ptr %49, align 4, !dbg !2374, !tbaa !728
  br label %1246, !dbg !2375

1246:                                             ; preds = %1242, %1245
  %1247 = trunc i64 %1239 to i32, !dbg !2367
  call void @llvm.dbg.value(metadata i32 %1247, metadata !1020, metadata !DIExpression()), !dbg !2364
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #27, !dbg !2376
  %1248 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 43, !dbg !2377
  store i32 %1247, ptr %1248, align 8, !dbg !2378, !tbaa !2379
  br label %1263, !dbg !2380

1249:                                             ; preds = %1235
  %1250 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(14) @.str.128) #29, !dbg !2381
  %1251 = icmp eq i32 %1250, 0, !dbg !2381
  br i1 %1251, label %1252, label %1257, !dbg !2383

1252:                                             ; preds = %1249
  call void @llvm.dbg.value(metadata i32 1, metadata !879, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata ptr %49, metadata !878, metadata !DIExpression(DW_OP_deref)), !dbg !975
  %1253 = call fastcc i32 @x264_atobool(ptr noundef %84, ptr noundef nonnull %49), !dbg !2384
  %1254 = icmp eq i32 %1253, 0, !dbg !2385
  %1255 = zext i1 %1254 to i32, !dbg !2385
  %1256 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, !dbg !2386
  store i32 %1255, ptr %1256, align 4, !dbg !2387, !tbaa !841
  br label %1263, !dbg !2388

1257:                                             ; preds = %1249
  %1258 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(15) @.str.129) #29, !dbg !2389
  %1259 = icmp eq i32 %1258, 0, !dbg !2389
  br i1 %1259, label %1260, label %1275, !dbg !2391

1260:                                             ; preds = %1257
  call void @llvm.dbg.value(metadata i32 1, metadata !879, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata ptr %49, metadata !878, metadata !DIExpression(DW_OP_deref)), !dbg !975
  %1261 = call fastcc i32 @x264_atobool(ptr noundef %84, ptr noundef nonnull %49), !dbg !2392
  %1262 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, !dbg !2393
  store i32 %1261, ptr %1262, align 4, !dbg !2394, !tbaa !841
  br label %1263

1263:                                             ; preds = %170, %160, %219, %206, %239, %255, %271, %287, %329, %370, %364, %388, %421, %408, %440, %470, %473, %465, %493, %513, %515, %508, %527, %557, %581, %599, %617, %643, %689, %685, %703, %728, %748, %784, %818, %840, %860, %872, %900, %928, %961, %996, %1032, %1060, %1091, %1122, %1150, %1177, %1208, %1220, %1232, %1252, %1260, %1246, %1226, %1214, %1191, %1161, %1136, %1108, %1074, %1046, %1013, %979, %946, %914, %886, %866, %846, %829, %824, %836, %835, %801, %767, %742, %712, %694, %649, %626, %608, %590, %569, %545, %521, %499, %479, %446, %434, %402, %382, %343, %349, %309, %296, %279, %263, %247, %234, %179, %116, %153
  %1264 = phi i32 [ 1, %1260 ], [ 1, %1252 ], [ 0, %1246 ], [ 1, %1232 ], [ 1, %1226 ], [ 1, %1220 ], [ 0, %1214 ], [ 0, %1208 ], [ 0, %1191 ], [ 0, %1177 ], [ 0, %1161 ], [ 0, %1150 ], [ 0, %1136 ], [ 0, %1122 ], [ 0, %1108 ], [ 0, %1091 ], [ 0, %1074 ], [ 0, %1060 ], [ 0, %1046 ], [ 0, %1032 ], [ 0, %1013 ], [ 0, %996 ], [ 0, %979 ], [ 0, %961 ], [ 0, %946 ], [ 0, %928 ], [ 0, %914 ], [ 0, %900 ], [ 0, %886 ], [ 1, %872 ], [ 1, %866 ], [ 0, %860 ], [ 1, %846 ], [ 1, %840 ], [ 0, %824 ], [ 0, %829 ], [ 0, %835 ], [ 0, %836 ], [ 0, %818 ], [ 0, %801 ], [ 0, %784 ], [ 0, %767 ], [ 0, %748 ], [ 0, %742 ], [ 0, %728 ], [ 0, %712 ], [ 1, %703 ], [ 1, %694 ], [ 0, %689 ], [ 0, %685 ], [ 0, %649 ], [ 0, %643 ], [ 0, %626 ], [ 0, %617 ], [ 0, %608 ], [ 0, %599 ], [ 0, %590 ], [ 0, %581 ], [ 0, %569 ], [ 0, %557 ], [ 0, %545 ], [ 0, %527 ], [ 0, %521 ], [ 0, %508 ], [ 0, %513 ], [ 0, %515 ], [ 1, %499 ], [ 0, %493 ], [ 1, %479 ], [ 0, %465 ], [ 0, %470 ], [ 1, %473 ], [ 1, %446 ], [ 1, %440 ], [ 0, %434 ], [ 1, %421 ], [ 1, %408 ], [ 0, %402 ], [ 1, %388 ], [ 0, %382 ], [ 0, %370 ], [ 0, %364 ], [ 0, %349 ], [ 0, %343 ], [ 0, %329 ], [ 0, %296 ], [ 0, %309 ], [ 0, %287 ], [ 0, %279 ], [ 0, %271 ], [ 0, %263 ], [ 0, %255 ], [ 0, %247 ], [ 0, %239 ], [ 0, %234 ], [ 0, %206 ], [ 0, %219 ], [ 1, %179 ], [ 0, %170 ], [ 0, %160 ], [ %117, %153 ], [ %117, %116 ], !dbg !975
  call void @llvm.dbg.value(metadata i32 %1264, metadata !879, metadata !DIExpression()), !dbg !975
  %1265 = icmp eq ptr %70, null, !dbg !2395
  br i1 %1265, label %1267, label %1266, !dbg !2397

1266:                                             ; preds = %1263
  call void @free(ptr noundef nonnull %70) #27, !dbg !2398
  br label %1267, !dbg !2398

1267:                                             ; preds = %1266, %1263
  %1268 = icmp eq i32 %1264, 0, !dbg !2399
  %1269 = and i1 %51, %1268, !dbg !2399
  %1270 = zext i1 %1269 to i32, !dbg !2399
  %1271 = load i32, ptr %49, align 4, !dbg !2400, !tbaa !728
  call void @llvm.dbg.value(metadata i32 %1271, metadata !878, metadata !DIExpression()), !dbg !975
  %1272 = or i32 %1271, %1270, !dbg !2400
  call void @llvm.dbg.value(metadata i32 %1272, metadata !878, metadata !DIExpression()), !dbg !975
  %1273 = icmp eq i32 %1272, 0, !dbg !2401
  %1274 = select i1 %1273, i32 0, i32 -2, !dbg !2401
  br label %1275, !dbg !2402

1275:                                             ; preds = %1257, %3, %1267
  %1276 = phi i32 [ %1274, %1267 ], [ -1, %3 ], [ -1, %1257 ], !dbg !975
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %49) #27, !dbg !2403
  ret i32 %1276, !dbg !2403
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2404 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2408 noalias ptr @strdup(ptr nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2411 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc i32 @x264_atobool(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #8 !dbg !2417 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2419, metadata !DIExpression()), !dbg !2421
  call void @llvm.dbg.value(metadata ptr %1, metadata !2420, metadata !DIExpression()), !dbg !2421
  %3 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.174) #29, !dbg !2422
  %4 = icmp eq i32 %3, 0, !dbg !2422
  br i1 %4, label %21, label %5, !dbg !2424

5:                                                ; preds = %2
  %6 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.1) #29, !dbg !2425
  %7 = icmp eq i32 %6, 0, !dbg !2425
  br i1 %7, label %21, label %8, !dbg !2426

8:                                                ; preds = %5
  %9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.175) #29, !dbg !2427
  %10 = icmp eq i32 %9, 0, !dbg !2427
  br i1 %10, label %21, label %11, !dbg !2428

11:                                               ; preds = %8
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.176) #29, !dbg !2429
  %13 = icmp eq i32 %12, 0, !dbg !2429
  br i1 %13, label %21, label %14, !dbg !2431

14:                                               ; preds = %11
  %15 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.4) #29, !dbg !2432
  %16 = icmp eq i32 %15, 0, !dbg !2432
  br i1 %16, label %21, label %17, !dbg !2433

17:                                               ; preds = %14
  %18 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.3) #29, !dbg !2434
  %19 = icmp eq i32 %18, 0, !dbg !2434
  br i1 %19, label %21, label %20, !dbg !2435

20:                                               ; preds = %17
  store i32 1, ptr %1, align 4, !dbg !2436, !tbaa !728
  br label %21, !dbg !2437

21:                                               ; preds = %11, %14, %17, %2, %5, %8, %20
  %22 = phi i32 [ 0, %20 ], [ 1, %8 ], [ 1, %5 ], [ 1, %2 ], [ 0, %17 ], [ 0, %14 ], [ 0, %11 ], !dbg !2421
  ret i32 %22, !dbg !2438
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2439 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !2442 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn
declare !dbg !2448 ptr @strtok_r(ptr noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !2455 i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2457 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare !dbg !2461 noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: nofree nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @parse_enum(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #14 !dbg !2465 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2470, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata ptr %1, metadata !2471, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata ptr %2, metadata !2472, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i32 0, metadata !2473, metadata !DIExpression()), !dbg !2474
  %4 = load ptr, ptr %1, align 8, !dbg !2475, !tbaa !865
  %5 = icmp eq ptr %4, null, !dbg !2478
  br i1 %5, label %18, label %6, !dbg !2478

6:                                                ; preds = %3, %13
  %7 = phi i64 [ %14, %13 ], [ 0, %3 ]
  %8 = phi ptr [ %16, %13 ], [ %4, %3 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !2473, metadata !DIExpression()), !dbg !2474
  %9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %8) #29, !dbg !2479
  %10 = icmp eq i32 %9, 0, !dbg !2479
  br i1 %10, label %11, label %13, !dbg !2481

11:                                               ; preds = %6
  %12 = trunc i64 %7 to i32, !dbg !2482
  store i32 %12, ptr %2, align 4, !dbg !2482, !tbaa !728
  br label %18, !dbg !2484

13:                                               ; preds = %6
  %14 = add nuw i64 %7, 1, !dbg !2485
  call void @llvm.dbg.value(metadata i64 %14, metadata !2473, metadata !DIExpression()), !dbg !2474
  %15 = getelementptr inbounds ptr, ptr %1, i64 %14, !dbg !2475
  %16 = load ptr, ptr %15, align 8, !dbg !2475, !tbaa !865
  %17 = icmp eq ptr %16, null, !dbg !2478
  br i1 %17, label %18, label %6, !dbg !2478, !llvm.loop !2486

18:                                               ; preds = %13, %3, %11
  %19 = phi i32 [ 0, %11 ], [ -1, %3 ], [ -1, %13 ], !dbg !2474
  ret i32 %19, !dbg !2488
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2489 ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind uwtable
define internal fastcc i32 @parse_cqm(ptr noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) unnamed_addr #4 !dbg !2492 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !2496, metadata !DIExpression()), !dbg !2502
  call void @llvm.dbg.value(metadata ptr %1, metadata !2497, metadata !DIExpression()), !dbg !2502
  call void @llvm.dbg.value(metadata i32 %2, metadata !2498, metadata !DIExpression()), !dbg !2502
  call void @llvm.dbg.value(metadata i32 0, metadata !2499, metadata !DIExpression()), !dbg !2502
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #27, !dbg !2503
  call void @llvm.dbg.value(metadata ptr %4, metadata !2500, metadata !DIExpression(DW_OP_deref)), !dbg !2504
  %5 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %0, ptr noundef nonnull @.str.39, ptr noundef nonnull %4) #27, !dbg !2505
  %6 = icmp eq i32 %5, 0, !dbg !2505
  %7 = load i32, ptr %4, align 4
  call void @llvm.dbg.value(metadata i32 %7, metadata !2500, metadata !DIExpression()), !dbg !2504
  %8 = icmp slt i32 %7, 1
  %9 = select i1 %6, i1 true, i1 %8, !dbg !2507
  %10 = icmp sgt i32 %7, 255
  %11 = select i1 %9, i1 true, i1 %10, !dbg !2507
  br i1 %11, label %25, label %12, !dbg !2507

12:                                               ; preds = %3
  %13 = call i32 @llvm.smax.i32(i32 %2, i32 1), !dbg !2508
  %14 = add nsw i32 %13, -1, !dbg !2508
  %15 = zext i32 %14 to i64, !dbg !2509
  br label %26, !dbg !2508

16:                                               ; preds = %34
  %17 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !2510
  call void @llvm.dbg.value(metadata ptr %17, metadata !2496, metadata !DIExpression()), !dbg !2502
  call void @llvm.dbg.value(metadata i64 %31, metadata !2499, metadata !DIExpression()), !dbg !2502
  call void @llvm.dbg.value(metadata ptr %35, metadata !2496, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2502
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #27, !dbg !2503
  call void @llvm.dbg.value(metadata ptr %4, metadata !2500, metadata !DIExpression(DW_OP_deref)), !dbg !2504
  %18 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %17, ptr noundef nonnull @.str.39, ptr noundef nonnull %4) #27, !dbg !2505
  %19 = icmp eq i32 %18, 0, !dbg !2505
  %20 = load i32, ptr %4, align 4
  call void @llvm.dbg.value(metadata i32 %20, metadata !2500, metadata !DIExpression()), !dbg !2504
  %21 = icmp slt i32 %20, 1
  %22 = select i1 %19, i1 true, i1 %21, !dbg !2507
  %23 = icmp sgt i32 %20, 255
  %24 = select i1 %22, i1 true, i1 %23, !dbg !2507
  br i1 %24, label %25, label %26, !dbg !2507

25:                                               ; preds = %16, %3
  call void @llvm.dbg.value(metadata i32 poison, metadata !2499, metadata !DIExpression()), !dbg !2502
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #27, !dbg !2511
  br label %43

26:                                               ; preds = %12, %16
  %27 = phi i64 [ 0, %12 ], [ %31, %16 ]
  %28 = phi i32 [ %7, %12 ], [ %20, %16 ]
  %29 = phi ptr [ %0, %12 ], [ %17, %16 ]
  call void @llvm.dbg.value(metadata i64 %27, metadata !2499, metadata !DIExpression()), !dbg !2502
  call void @llvm.dbg.value(metadata ptr %29, metadata !2496, metadata !DIExpression()), !dbg !2502
  %30 = trunc i32 %28 to i8, !dbg !2512
  %31 = add nuw nsw i64 %27, 1, !dbg !2513
  call void @llvm.dbg.value(metadata i64 %31, metadata !2499, metadata !DIExpression()), !dbg !2502
  %32 = getelementptr inbounds i8, ptr %1, i64 %27, !dbg !2514
  store i8 %30, ptr %32, align 1, !dbg !2515, !tbaa !985
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #27, !dbg !2511
  %33 = icmp eq i64 %27, %15, !dbg !2509
  br i1 %33, label %39, label %34, !dbg !2508

34:                                               ; preds = %26
  %35 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %29, i32 noundef 44) #29, !dbg !2516
  call void @llvm.dbg.value(metadata ptr %35, metadata !2496, metadata !DIExpression()), !dbg !2502
  %36 = icmp eq ptr %35, null, !dbg !2517
  call void @llvm.dbg.value(metadata ptr %35, metadata !2496, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2502
  br i1 %36, label %37, label %16, !dbg !2518

37:                                               ; preds = %34
  %38 = trunc i64 %31 to i32, !dbg !2508
  br label %39, !dbg !2519

39:                                               ; preds = %26, %37
  %40 = phi i32 [ %38, %37 ], [ %13, %26 ], !dbg !2513
  %41 = icmp ne i32 %40, %2, !dbg !2519
  %42 = sext i1 %41 to i32, !dbg !2520
  br label %43, !dbg !2521

43:                                               ; preds = %25, %39
  %44 = phi i32 [ %42, %39 ], [ -1, %25 ], !dbg !2502
  ret i32 %44, !dbg !2522
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_log(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #0 !dbg !2523 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !3442, metadata !DIExpression()), !dbg !3453
  call void @llvm.dbg.value(metadata i32 %1, metadata !3443, metadata !DIExpression()), !dbg !3453
  call void @llvm.dbg.value(metadata ptr %2, metadata !3444, metadata !DIExpression()), !dbg !3453
  %5 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 36, !dbg !3454
  %6 = load i32, ptr %5, align 8, !dbg !3454, !tbaa !3455
  %7 = icmp slt i32 %6, %1, !dbg !3476
  br i1 %7, label %13, label %8, !dbg !3477

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #27, !dbg !3478
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3445, metadata !DIExpression()), !dbg !3479
  call void @llvm.va_start(ptr nonnull %4), !dbg !3480
  %9 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 34, !dbg !3481
  %10 = load ptr, ptr %9, align 8, !dbg !3481, !tbaa !3482
  %11 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 35, !dbg !3483
  %12 = load ptr, ptr %11, align 16, !dbg !3483, !tbaa !3484
  call void %10(ptr noundef %12, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #27, !dbg !3485
  call void @llvm.va_end(ptr nonnull %4), !dbg !3486
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #27, !dbg !3487
  br label %13, !dbg !3488

13:                                               ; preds = %8, %3
  ret void, !dbg !3489
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #15

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite) uwtable
define dso_local void @x264_picture_alloc(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #16 !dbg !3490 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3509, metadata !DIExpression()), !dbg !3513
  call void @llvm.dbg.value(metadata i32 %1, metadata !3510, metadata !DIExpression()), !dbg !3513
  call void @llvm.dbg.value(metadata i32 %2, metadata !3511, metadata !DIExpression()), !dbg !3513
  call void @llvm.dbg.value(metadata i32 %3, metadata !3512, metadata !DIExpression()), !dbg !3513
  store i32 0, ptr %0, align 8, !dbg !3514, !tbaa !3515
  %5 = getelementptr inbounds %struct.x264_picture_t, ptr %0, i64 0, i32 1, !dbg !3518
  store i32 0, ptr %5, align 4, !dbg !3519, !tbaa !3520
  %6 = getelementptr inbounds %struct.x264_picture_t, ptr %0, i64 0, i32 3, !dbg !3521
  store i32 %1, ptr %6, align 8, !dbg !3522, !tbaa !3523
  %7 = getelementptr inbounds %struct.x264_picture_t, ptr %0, i64 0, i32 3, i32 1, !dbg !3524
  store i32 3, ptr %7, align 4, !dbg !3525, !tbaa !3526
  %8 = mul i32 %3, %2, !dbg !3527
  %9 = mul i32 %8, 3, !dbg !3528
  %10 = sdiv i32 %9, 2, !dbg !3529
  call void @llvm.dbg.value(metadata i32 %10, metadata !3530, metadata !DIExpression()), !dbg !3535
  %11 = sext i32 %10 to i64, !dbg !3537
  %12 = tail call noalias align 16 ptr @memalign(i64 noundef 16, i64 noundef %11) #31, !dbg !3538
  %13 = getelementptr inbounds %struct.x264_picture_t, ptr %0, i64 0, i32 3, i32 3, !dbg !3539
  store ptr %12, ptr %13, align 8, !dbg !3540, !tbaa !865
  %14 = sext i32 %8 to i64, !dbg !3541
  %15 = getelementptr inbounds i8, ptr %12, i64 %14, !dbg !3541
  %16 = getelementptr inbounds %struct.x264_picture_t, ptr %0, i64 0, i32 3, i32 3, i64 1, !dbg !3542
  store ptr %15, ptr %16, align 8, !dbg !3543, !tbaa !865
  %17 = sdiv i32 %8, 4, !dbg !3544
  %18 = sext i32 %17 to i64, !dbg !3545
  %19 = getelementptr inbounds i8, ptr %15, i64 %18, !dbg !3545
  %20 = getelementptr inbounds %struct.x264_picture_t, ptr %0, i64 0, i32 3, i32 3, i64 2, !dbg !3546
  store ptr %19, ptr %20, align 8, !dbg !3547, !tbaa !865
  %21 = getelementptr inbounds %struct.x264_picture_t, ptr %0, i64 0, i32 3, i32 2, !dbg !3548
  store i32 %2, ptr %21, align 8, !dbg !3549, !tbaa !728
  %22 = sdiv i32 %2, 2, !dbg !3550
  %23 = getelementptr inbounds %struct.x264_picture_t, ptr %0, i64 0, i32 3, i32 2, i64 1, !dbg !3551
  store i32 %22, ptr %23, align 4, !dbg !3552, !tbaa !728
  %24 = getelementptr inbounds %struct.x264_picture_t, ptr %0, i64 0, i32 3, i32 2, i64 2, !dbg !3553
  store i32 %22, ptr %24, align 8, !dbg !3554, !tbaa !728
  ret void, !dbg !3555
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @x264_malloc(i32 noundef %0) local_unnamed_addr #17 !dbg !3531 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3530, metadata !DIExpression()), !dbg !3556
  %2 = sext i32 %0 to i64, !dbg !3557
  %3 = tail call noalias align 16 ptr @memalign(i64 noundef 16, i64 noundef %2) #31, !dbg !3558
  ret ptr %3, !dbg !3559
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @x264_picture_clean(ptr nocapture noundef %0) local_unnamed_addr #18 !dbg !3560 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3564, metadata !DIExpression()), !dbg !3565
  %2 = getelementptr inbounds %struct.x264_picture_t, ptr %0, i64 0, i32 3, i32 3, !dbg !3566
  %3 = load ptr, ptr %2, align 8, !dbg !3567, !tbaa !865
  call void @llvm.dbg.value(metadata ptr %3, metadata !3568, metadata !DIExpression()), !dbg !3571
  %4 = icmp eq ptr %3, null, !dbg !3573
  br i1 %4, label %6, label %5, !dbg !3575

5:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %3) #27, !dbg !3576
  br label %6, !dbg !3578

6:                                                ; preds = %1, %5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 72, i1 false), !dbg !3579
  ret void, !dbg !3580
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @x264_free(ptr noundef %0) local_unnamed_addr #19 !dbg !3569 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3568, metadata !DIExpression()), !dbg !3581
  %2 = icmp eq ptr %0, null, !dbg !3582
  br i1 %2, label %4, label %3, !dbg !3583

3:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %0) #27, !dbg !3584
  br label %4, !dbg !3585

4:                                                ; preds = %3, %1
  ret void, !dbg !3586
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @x264_nal_encode(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #20 !dbg !3587 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3592, metadata !DIExpression()), !dbg !3600
  call void @llvm.dbg.value(metadata ptr %1, metadata !3593, metadata !DIExpression()), !dbg !3600
  call void @llvm.dbg.value(metadata i32 %2, metadata !3594, metadata !DIExpression()), !dbg !3600
  call void @llvm.dbg.value(metadata ptr %3, metadata !3595, metadata !DIExpression()), !dbg !3600
  call void @llvm.dbg.value(metadata ptr %0, metadata !3596, metadata !DIExpression()), !dbg !3600
  %5 = getelementptr inbounds %struct.x264_nal_t, ptr %3, i64 0, i32 3, !dbg !3601
  %6 = load ptr, ptr %5, align 8, !dbg !3601, !tbaa !3602
  call void @llvm.dbg.value(metadata ptr %6, metadata !3597, metadata !DIExpression()), !dbg !3600
  %7 = getelementptr inbounds %struct.x264_nal_t, ptr %3, i64 0, i32 2, !dbg !3604
  %8 = load i32, ptr %7, align 8, !dbg !3604, !tbaa !3605
  %9 = sext i32 %8 to i64, !dbg !3606
  %10 = getelementptr inbounds i8, ptr %6, i64 %9, !dbg !3606
  call void @llvm.dbg.value(metadata ptr %10, metadata !3598, metadata !DIExpression()), !dbg !3600
  call void @llvm.dbg.value(metadata i32 0, metadata !3599, metadata !DIExpression()), !dbg !3600
  %11 = icmp eq i32 %2, 0, !dbg !3607
  br i1 %11, label %14, label %12, !dbg !3609

12:                                               ; preds = %4
  call void @llvm.dbg.value(metadata ptr %0, metadata !3596, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3600
  call void @llvm.dbg.value(metadata ptr %0, metadata !3596, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !3600
  call void @llvm.dbg.value(metadata ptr %0, metadata !3596, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !3600
  %13 = getelementptr inbounds i8, ptr %0, i64 4, !dbg !3610
  call void @llvm.dbg.value(metadata ptr %13, metadata !3596, metadata !DIExpression()), !dbg !3600
  store <4 x i8> <i8 0, i8 0, i8 0, i8 1>, ptr %0, align 1, !dbg !3612, !tbaa !985
  br label %14, !dbg !3613

14:                                               ; preds = %12, %4
  %15 = phi ptr [ %13, %12 ], [ %0, %4 ], !dbg !3600
  call void @llvm.dbg.value(metadata ptr %15, metadata !3596, metadata !DIExpression()), !dbg !3600
  %16 = load i32, ptr %3, align 8, !dbg !3614, !tbaa !3615
  %17 = shl i32 %16, 5, !dbg !3616
  %18 = getelementptr inbounds %struct.x264_nal_t, ptr %3, i64 0, i32 1, !dbg !3617
  %19 = load i32, ptr %18, align 4, !dbg !3617, !tbaa !3618
  %20 = or i32 %17, %19, !dbg !3619
  %21 = trunc i32 %20 to i8, !dbg !3620
  call void @llvm.dbg.value(metadata ptr %15, metadata !3596, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3600
  store i8 %21, ptr %15, align 1, !dbg !3621, !tbaa !985
  %22 = getelementptr inbounds i8, ptr %15, i64 1, !dbg !3600
  call void @llvm.dbg.value(metadata i32 0, metadata !3599, metadata !DIExpression()), !dbg !3600
  call void @llvm.dbg.value(metadata ptr %22, metadata !3596, metadata !DIExpression()), !dbg !3600
  call void @llvm.dbg.value(metadata ptr %6, metadata !3597, metadata !DIExpression()), !dbg !3600
  %23 = icmp sgt i32 %8, 0, !dbg !3622
  br i1 %23, label %24, label %45, !dbg !3623

24:                                               ; preds = %14, %35
  %25 = phi ptr [ %43, %35 ], [ %22, %14 ]
  %26 = phi i32 [ %41, %35 ], [ 0, %14 ]
  %27 = phi ptr [ %36, %35 ], [ %15, %14 ]
  %28 = phi ptr [ %42, %35 ], [ %6, %14 ]
  call void @llvm.dbg.value(metadata i32 %26, metadata !3599, metadata !DIExpression()), !dbg !3600
  call void @llvm.dbg.value(metadata ptr %28, metadata !3597, metadata !DIExpression()), !dbg !3600
  %29 = icmp eq i32 %26, 2, !dbg !3624
  br i1 %29, label %30, label %35, !dbg !3627

30:                                               ; preds = %24
  %31 = load i8, ptr %28, align 1, !dbg !3628, !tbaa !985
  %32 = icmp ult i8 %31, 4, !dbg !3629
  br i1 %32, label %33, label %35, !dbg !3630

33:                                               ; preds = %30
  %34 = getelementptr inbounds i8, ptr %27, i64 2, !dbg !3631
  call void @llvm.dbg.value(metadata ptr %34, metadata !3596, metadata !DIExpression()), !dbg !3600
  store i8 3, ptr %25, align 1, !dbg !3633, !tbaa !985
  call void @llvm.dbg.value(metadata i32 0, metadata !3599, metadata !DIExpression()), !dbg !3600
  br label %35, !dbg !3634

35:                                               ; preds = %33, %30, %24
  %36 = phi ptr [ %34, %33 ], [ %25, %30 ], [ %25, %24 ], !dbg !3600
  %37 = phi i32 [ 0, %33 ], [ 2, %30 ], [ %26, %24 ], !dbg !3600
  call void @llvm.dbg.value(metadata i32 %37, metadata !3599, metadata !DIExpression()), !dbg !3600
  call void @llvm.dbg.value(metadata ptr %36, metadata !3596, metadata !DIExpression()), !dbg !3600
  %38 = load i8, ptr %28, align 1, !dbg !3635, !tbaa !985
  %39 = icmp eq i8 %38, 0, !dbg !3637
  %40 = add nsw i32 %37, 1, !dbg !3638
  %41 = select i1 %39, i32 %40, i32 0, !dbg !3638
  call void @llvm.dbg.value(metadata i32 %41, metadata !3599, metadata !DIExpression()), !dbg !3600
  %42 = getelementptr inbounds i8, ptr %28, i64 1, !dbg !3639
  call void @llvm.dbg.value(metadata ptr %42, metadata !3597, metadata !DIExpression()), !dbg !3600
  call void @llvm.dbg.value(metadata ptr %36, metadata !3596, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3600
  store i8 %38, ptr %36, align 1, !dbg !3640, !tbaa !985
  %43 = getelementptr inbounds i8, ptr %36, i64 1, !dbg !3600
  call void @llvm.dbg.value(metadata ptr %43, metadata !3596, metadata !DIExpression()), !dbg !3600
  %44 = icmp ult ptr %42, %10, !dbg !3622
  br i1 %44, label %24, label %45, !dbg !3623, !llvm.loop !3641

45:                                               ; preds = %35, %14
  %46 = phi ptr [ %22, %14 ], [ %43, %35 ], !dbg !3600
  %47 = ptrtoint ptr %46 to i64, !dbg !3643
  %48 = ptrtoint ptr %0 to i64, !dbg !3643
  %49 = sub i64 %47, %48, !dbg !3643
  %50 = trunc i64 %49 to i32, !dbg !3644
  store i32 %50, ptr %1, align 4, !dbg !3645, !tbaa !728
  ret i32 %50, !dbg !3646
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized,aligned") allocsize(1) memory(inaccessiblemem: readwrite)
declare !dbg !3647 noalias noundef ptr @memalign(i64 allocalign noundef, i64 noundef) local_unnamed_addr #21

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @x264_realloc(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #19 !dbg !3651 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3655, metadata !DIExpression()), !dbg !3657
  call void @llvm.dbg.value(metadata i32 %1, metadata !3656, metadata !DIExpression()), !dbg !3657
  %3 = sext i32 %1 to i64, !dbg !3658
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #31, !dbg !3659
  ret ptr %4, !dbg !3660
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3661 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #22

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @x264_reduce_fraction(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #23 !dbg !3664 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3668, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata ptr %1, metadata !3669, metadata !DIExpression()), !dbg !3673
  %3 = load i32, ptr %0, align 4, !dbg !3674, !tbaa !728
  call void @llvm.dbg.value(metadata i32 %3, metadata !3670, metadata !DIExpression()), !dbg !3673
  %4 = load i32, ptr %1, align 4, !dbg !3675, !tbaa !728
  call void @llvm.dbg.value(metadata i32 %4, metadata !3671, metadata !DIExpression()), !dbg !3673
  %5 = icmp ne i32 %3, 0, !dbg !3676
  %6 = icmp ne i32 %4, 0
  %7 = select i1 %5, i1 %6, i1 false, !dbg !3678
  br i1 %7, label %8, label %21, !dbg !3678

8:                                                ; preds = %2
  %9 = srem i32 %3, %4, !dbg !3679
  call void @llvm.dbg.value(metadata i32 %9, metadata !3672, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata i32 %4, metadata !3671, metadata !DIExpression()), !dbg !3673
  %10 = icmp eq i32 %9, 0, !dbg !3680
  br i1 %10, label %16, label %11, !dbg !3680

11:                                               ; preds = %8, %11
  %12 = phi i32 [ %14, %11 ], [ %9, %8 ]
  %13 = phi i32 [ %12, %11 ], [ %4, %8 ]
  call void @llvm.dbg.value(metadata i32 %12, metadata !3672, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata i32 %13, metadata !3670, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata i32 %12, metadata !3671, metadata !DIExpression()), !dbg !3673
  %14 = srem i32 %13, %12, !dbg !3681
  call void @llvm.dbg.value(metadata i32 %14, metadata !3672, metadata !DIExpression()), !dbg !3673
  %15 = icmp eq i32 %14, 0, !dbg !3680
  br i1 %15, label %16, label %11, !dbg !3680, !llvm.loop !3683

16:                                               ; preds = %11, %8
  %17 = phi i32 [ %4, %8 ], [ %12, %11 ], !dbg !3673
  %18 = sdiv i32 %3, %17, !dbg !3685
  store i32 %18, ptr %0, align 4, !dbg !3685, !tbaa !728
  %19 = load i32, ptr %1, align 4, !dbg !3686, !tbaa !728
  %20 = sdiv i32 %19, %17, !dbg !3686
  store i32 %20, ptr %1, align 4, !dbg !3686, !tbaa !728
  br label %21, !dbg !3687

21:                                               ; preds = %2, %16
  ret void, !dbg !3687
}

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @x264_slurp_file(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !dbg !3688 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3690, metadata !DIExpression()), !dbg !3744
  call void @llvm.dbg.value(metadata i32 0, metadata !3691, metadata !DIExpression()), !dbg !3744
  %2 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.130), !dbg !3745
  call void @llvm.dbg.value(metadata ptr %2, metadata !3694, metadata !DIExpression()), !dbg !3744
  %3 = icmp eq ptr %2, null, !dbg !3746
  br i1 %3, label %40, label %4, !dbg !3748

4:                                                ; preds = %1
  %5 = tail call i32 @fseek(ptr noundef nonnull %2, i64 noundef 0, i32 noundef 2), !dbg !3749
  call void @llvm.dbg.value(metadata i32 %5, metadata !3691, metadata !DIExpression(DW_OP_constu, 31, DW_OP_shr, DW_OP_stack_value)), !dbg !3744
  %6 = tail call i64 @ftell(ptr noundef nonnull %2), !dbg !3750
  %7 = trunc i64 %6 to i32, !dbg !3750
  call void @llvm.dbg.value(metadata i32 %7, metadata !3692, metadata !DIExpression()), !dbg !3744
  %8 = icmp slt i32 %7, 1, !dbg !3751
  %9 = zext i1 %8 to i32, !dbg !3751
  call void @llvm.dbg.value(metadata i32 poison, metadata !3691, metadata !DIExpression()), !dbg !3744
  %10 = tail call i32 @fseek(ptr noundef nonnull %2, i64 noundef 0, i32 noundef 0), !dbg !3752
  %11 = or i32 %10, %5, !dbg !3753
  %12 = lshr i32 %11, 31, !dbg !3753
  %13 = or i32 %12, %9, !dbg !3754
  call void @llvm.dbg.value(metadata i32 %13, metadata !3691, metadata !DIExpression()), !dbg !3744
  %14 = icmp eq i32 %13, 0, !dbg !3755
  br i1 %14, label %15, label %40, !dbg !3757

15:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %7, metadata !3530, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !3758
  %16 = shl i64 %6, 32, !dbg !3760
  %17 = add i64 %16, 8589934592, !dbg !3760
  %18 = ashr exact i64 %17, 32, !dbg !3760
  %19 = tail call noalias align 16 ptr @memalign(i64 noundef 16, i64 noundef %18) #31, !dbg !3761
  call void @llvm.dbg.value(metadata ptr %19, metadata !3693, metadata !DIExpression()), !dbg !3744
  %20 = icmp eq ptr %19, null, !dbg !3762
  br i1 %20, label %40, label %21, !dbg !3764

21:                                               ; preds = %15
  %22 = ashr exact i64 %16, 32, !dbg !3765
  %23 = tail call i64 @fread(ptr noundef nonnull %19, i64 noundef 1, i64 noundef %22, ptr noundef nonnull %2), !dbg !3766
  %24 = icmp eq i64 %23, %22, !dbg !3767
  call void @llvm.dbg.value(metadata i1 %24, metadata !3691, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3744
  %25 = add i64 %16, -4294967296, !dbg !3768
  %26 = ashr exact i64 %25, 32, !dbg !3768
  %27 = getelementptr inbounds i8, ptr %19, i64 %26, !dbg !3768
  %28 = load i8, ptr %27, align 1, !dbg !3768, !tbaa !985
  %29 = icmp eq i8 %28, 10, !dbg !3770
  br i1 %29, label %35, label %30, !dbg !3771

30:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i32 %7, metadata !3692, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3744
  %31 = getelementptr inbounds i8, ptr %19, i64 %22, !dbg !3772
  store i8 10, ptr %31, align 1, !dbg !3773, !tbaa !985
  %32 = shl i64 %6, 32, !dbg !3774
  %33 = add i64 %32, 4294967296, !dbg !3774
  %34 = ashr exact i64 %33, 32, !dbg !3774
  br label %35, !dbg !3772

35:                                               ; preds = %30, %21
  %36 = phi i64 [ %34, %30 ], [ %22, %21 ], !dbg !3774
  call void @llvm.dbg.value(metadata i32 poison, metadata !3692, metadata !DIExpression()), !dbg !3744
  %37 = getelementptr inbounds i8, ptr %19, i64 %36, !dbg !3774
  store i8 0, ptr %37, align 1, !dbg !3775, !tbaa !985
  %38 = tail call i32 @fclose(ptr noundef nonnull %2), !dbg !3776
  br i1 %24, label %40, label %39, !dbg !3777

39:                                               ; preds = %35
  call void @llvm.dbg.value(metadata ptr %19, metadata !3568, metadata !DIExpression()), !dbg !3778
  tail call void @free(ptr noundef nonnull %19) #27, !dbg !3782
  br label %40, !dbg !3783

40:                                               ; preds = %35, %15, %4, %1, %39
  %41 = phi ptr [ null, %39 ], [ null, %1 ], [ null, %4 ], [ null, %15 ], [ %19, %35 ], !dbg !3744
  ret ptr %41, !dbg !3784
}

; Function Attrs: nofree nounwind
declare !dbg !3785 noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare !dbg !3788 noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare !dbg !3791 noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare !dbg !3794 noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare !dbg !3799 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind uwtable
define dso_local noalias ptr @x264_param2string(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #4 !dbg !3802 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3806, metadata !DIExpression()), !dbg !3811
  call void @llvm.dbg.value(metadata i32 %1, metadata !3807, metadata !DIExpression()), !dbg !3811
  call void @llvm.dbg.value(metadata i32 1000, metadata !3808, metadata !DIExpression()), !dbg !3811
  %3 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, !dbg !3812
  %4 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 24, !dbg !3814
  %5 = load ptr, ptr %4, align 8, !dbg !3814, !tbaa !2336
  %6 = icmp eq ptr %5, null, !dbg !3815
  br i1 %6, label %12, label %7, !dbg !3816

7:                                                ; preds = %2
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #29, !dbg !3817
  call void @llvm.dbg.value(metadata i64 %8, metadata !3808, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus_uconst, 1000, DW_OP_stack_value)), !dbg !3811
  %9 = shl i64 %8, 32, !dbg !3818
  %10 = add i64 %9, 4294967296000, !dbg !3818
  %11 = ashr exact i64 %10, 32, !dbg !3818
  br label %12, !dbg !3820

12:                                               ; preds = %7, %2
  %13 = phi i64 [ %11, %7 ], [ 1000, %2 ]
  call void @llvm.dbg.value(metadata i32 poison, metadata !3808, metadata !DIExpression()), !dbg !3811
  call void @llvm.dbg.value(metadata i32 poison, metadata !3530, metadata !DIExpression()), !dbg !3821
  %14 = tail call noalias align 16 ptr @memalign(i64 noundef 16, i64 noundef %13) #31, !dbg !3822
  call void @llvm.dbg.value(metadata ptr %14, metadata !3810, metadata !DIExpression()), !dbg !3811
  call void @llvm.dbg.value(metadata ptr %14, metadata !3809, metadata !DIExpression()), !dbg !3811
  %15 = icmp eq i32 %1, 0, !dbg !3823
  br i1 %15, label %31, label %16, !dbg !3825

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 3, !dbg !3826
  %18 = load i32, ptr %17, align 4, !dbg !3826, !tbaa !3828
  %19 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 4, !dbg !3829
  %20 = load i32, ptr %19, align 8, !dbg !3829, !tbaa !3830
  %21 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) @.str.131, i32 noundef %18, i32 noundef %20) #27, !dbg !3831
  %22 = sext i32 %21 to i64, !dbg !3832
  %23 = getelementptr inbounds i8, ptr %14, i64 %22, !dbg !3832
  call void @llvm.dbg.value(metadata ptr %23, metadata !3810, metadata !DIExpression()), !dbg !3811
  %24 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 9, !dbg !3833
  %25 = load i32, ptr %24, align 4, !dbg !3833, !tbaa !1259
  %26 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 10, !dbg !3834
  %27 = load i32, ptr %26, align 8, !dbg !3834, !tbaa !1261
  %28 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) @.str.132, i32 noundef %25, i32 noundef %27) #27, !dbg !3835
  %29 = sext i32 %28 to i64, !dbg !3836
  %30 = getelementptr inbounds i8, ptr %23, i64 %29, !dbg !3836
  call void @llvm.dbg.value(metadata ptr %30, metadata !3810, metadata !DIExpression()), !dbg !3811
  br label %31, !dbg !3837

31:                                               ; preds = %16, %12
  %32 = phi ptr [ %30, %16 ], [ %14, %12 ], !dbg !3811
  call void @llvm.dbg.value(metadata ptr %32, metadata !3810, metadata !DIExpression()), !dbg !3811
  %33 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 23, !dbg !3838
  %34 = load i32, ptr %33, align 4, !dbg !3838, !tbaa !1469
  %35 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %32, ptr noundef nonnull dereferenceable(1) @.str.133, i32 noundef %34) #27, !dbg !3839
  %36 = sext i32 %35 to i64, !dbg !3840
  %37 = getelementptr inbounds i8, ptr %32, i64 %36, !dbg !3840
  call void @llvm.dbg.value(metadata ptr %37, metadata !3810, metadata !DIExpression()), !dbg !3811
  %38 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 11, !dbg !3841
  %39 = load i32, ptr %38, align 4, !dbg !3841, !tbaa !1279
  %40 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %37, ptr noundef nonnull dereferenceable(1) @.str.134, i32 noundef %39) #27, !dbg !3842
  %41 = sext i32 %40 to i64, !dbg !3843
  %42 = getelementptr inbounds i8, ptr %37, i64 %41, !dbg !3843
  call void @llvm.dbg.value(metadata ptr %42, metadata !3810, metadata !DIExpression()), !dbg !3811
  %43 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 20, !dbg !3844
  %44 = load i32, ptr %43, align 8, !dbg !3844, !tbaa !1432
  %45 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 21, !dbg !3845
  %46 = load i32, ptr %45, align 4, !dbg !3845, !tbaa !1457
  %47 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 22, !dbg !3846
  %48 = load i32, ptr %47, align 8, !dbg !3846, !tbaa !1459
  %49 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %42, ptr noundef nonnull dereferenceable(1) @.str.135, i32 noundef %44, i32 noundef %46, i32 noundef %48) #27, !dbg !3847
  %50 = sext i32 %49 to i64, !dbg !3848
  %51 = getelementptr inbounds i8, ptr %42, i64 %50, !dbg !3848
  call void @llvm.dbg.value(metadata ptr %51, metadata !3810, metadata !DIExpression()), !dbg !3811
  %52 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 39, !dbg !3849
  %53 = load i32, ptr %52, align 8, !dbg !3850, !tbaa !813
  %54 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 39, i32 1, !dbg !3851
  %55 = load i32, ptr %54, align 4, !dbg !3851, !tbaa !816
  %56 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %51, ptr noundef nonnull dereferenceable(1) @.str.136, i32 noundef %53, i32 noundef %55) #27, !dbg !3852
  %57 = sext i32 %56 to i64, !dbg !3853
  %58 = getelementptr inbounds i8, ptr %51, i64 %57, !dbg !3853
  call void @llvm.dbg.value(metadata ptr %58, metadata !3810, metadata !DIExpression()), !dbg !3811
  %59 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 39, i32 7, !dbg !3854
  %60 = load i32, ptr %59, align 4, !dbg !3854, !tbaa !3855
  %61 = sext i32 %60 to i64, !dbg !3856
  %62 = getelementptr inbounds [6 x ptr], ptr @x264_motion_est_names, i64 0, i64 %61, !dbg !3856
  %63 = load ptr, ptr %62, align 8, !dbg !3856, !tbaa !865
  %64 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %58, ptr noundef nonnull dereferenceable(1) @.str.137, ptr noundef %63) #27, !dbg !3857
  %65 = sext i32 %64 to i64, !dbg !3858
  %66 = getelementptr inbounds i8, ptr %58, i64 %65, !dbg !3858
  call void @llvm.dbg.value(metadata ptr %66, metadata !3810, metadata !DIExpression()), !dbg !3811
  %67 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 39, i32 11, !dbg !3859
  %68 = load i32, ptr %67, align 4, !dbg !3859, !tbaa !1826
  %69 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %66, ptr noundef nonnull dereferenceable(1) @.str.138, i32 noundef %68) #27, !dbg !3860
  %70 = sext i32 %69 to i64, !dbg !3861
  %71 = getelementptr inbounds i8, ptr %66, i64 %70, !dbg !3861
  call void @llvm.dbg.value(metadata ptr %71, metadata !3810, metadata !DIExpression()), !dbg !3811
  %72 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 39, i32 18, !dbg !3862
  %73 = load float, ptr %72, align 8, !dbg !3862, !tbaa !3863
  %74 = fpext float %73 to double, !dbg !3864
  %75 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 39, i32 19, !dbg !3865
  %76 = load float, ptr %75, align 4, !dbg !3865, !tbaa !1845
  %77 = fpext float %76 to double, !dbg !3866
  %78 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %71, ptr noundef nonnull dereferenceable(1) @.str.139, double noundef %74, double noundef %77) #27, !dbg !3867
  %79 = sext i32 %78 to i64, !dbg !3868
  %80 = getelementptr inbounds i8, ptr %71, i64 %79, !dbg !3868
  call void @llvm.dbg.value(metadata ptr %80, metadata !3810, metadata !DIExpression()), !dbg !3811
  %81 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 39, i32 13, !dbg !3869
  %82 = load i32, ptr %81, align 4, !dbg !3869, !tbaa !1860
  %83 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %80, ptr noundef nonnull dereferenceable(1) @.str.140, i32 noundef %82) #27, !dbg !3870
  %84 = sext i32 %83 to i64, !dbg !3871
  %85 = getelementptr inbounds i8, ptr %80, i64 %84, !dbg !3871
  call void @llvm.dbg.value(metadata ptr %85, metadata !3810, metadata !DIExpression()), !dbg !3811
  %86 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 39, i32 8, !dbg !3872
  %87 = load i32, ptr %86, align 8, !dbg !3872, !tbaa !1769
  %88 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(1) @.str.141, i32 noundef %87) #27, !dbg !3873
  %89 = sext i32 %88 to i64, !dbg !3874
  %90 = getelementptr inbounds i8, ptr %85, i64 %89, !dbg !3874
  call void @llvm.dbg.value(metadata ptr %90, metadata !3810, metadata !DIExpression()), !dbg !3811
  %91 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 39, i32 12, !dbg !3875
  %92 = load i32, ptr %91, align 8, !dbg !3875, !tbaa !823
  %93 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %90, ptr noundef nonnull dereferenceable(1) @.str.142, i32 noundef %92) #27, !dbg !3876
  %94 = sext i32 %93 to i64, !dbg !3877
  %95 = getelementptr inbounds i8, ptr %90, i64 %94, !dbg !3877
  call void @llvm.dbg.value(metadata ptr %95, metadata !3810, metadata !DIExpression()), !dbg !3811
  %96 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 39, i32 14, !dbg !3878
  %97 = load i32, ptr %96, align 8, !dbg !3878, !tbaa !1879
  %98 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %95, ptr noundef nonnull dereferenceable(1) @.str.143, i32 noundef %97) #27, !dbg !3879
  %99 = sext i32 %98 to i64, !dbg !3880
  %100 = getelementptr inbounds i8, ptr %95, i64 %99, !dbg !3880
  call void @llvm.dbg.value(metadata ptr %100, metadata !3810, metadata !DIExpression()), !dbg !3811
  %101 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 39, i32 2, !dbg !3881
  %102 = load i32, ptr %101, align 8, !dbg !3881, !tbaa !1693
  %103 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %100, ptr noundef nonnull dereferenceable(1) @.str.144, i32 noundef %102) #27, !dbg !3882
  %104 = sext i32 %103 to i64, !dbg !3883
  %105 = getelementptr inbounds i8, ptr %100, i64 %104, !dbg !3883
  call void @llvm.dbg.value(metadata ptr %105, metadata !3810, metadata !DIExpression()), !dbg !3811
  %106 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 26, !dbg !3884
  %107 = load i32, ptr %106, align 8, !dbg !3884, !tbaa !836
  %108 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %105, ptr noundef nonnull dereferenceable(1) @.str.145, i32 noundef %107) #27, !dbg !3885
  %109 = sext i32 %108 to i64, !dbg !3886
  %110 = getelementptr inbounds i8, ptr %105, i64 %109, !dbg !3886
  call void @llvm.dbg.value(metadata ptr %110, metadata !3810, metadata !DIExpression()), !dbg !3811
  %111 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 39, i32 20, !dbg !3887
  %112 = load i32, ptr %111, align 8, !dbg !3888, !tbaa !728
  %113 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 39, i32 20, i64 1, !dbg !3889
  %114 = load i32, ptr %113, align 4, !dbg !3889, !tbaa !728
  %115 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %110, ptr noundef nonnull dereferenceable(1) @.str.146, i32 noundef %112, i32 noundef %114) #27, !dbg !3890
  %116 = sext i32 %115 to i64, !dbg !3891
  %117 = getelementptr inbounds i8, ptr %110, i64 %116, !dbg !3891
  call void @llvm.dbg.value(metadata ptr %117, metadata !3810, metadata !DIExpression()), !dbg !3811
  %118 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 39, i32 6, !dbg !3892
  %119 = load i32, ptr %118, align 8, !dbg !3892, !tbaa !1744
  %120 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %117, ptr noundef nonnull dereferenceable(1) @.str.147, i32 noundef %119) #27, !dbg !3893
  %121 = sext i32 %120 to i64, !dbg !3894
  %122 = getelementptr inbounds i8, ptr %117, i64 %121, !dbg !3894
  call void @llvm.dbg.value(metadata ptr %122, metadata !3810, metadata !DIExpression()), !dbg !3811
  %123 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 1, !dbg !3895
  %124 = load i32, ptr %123, align 4, !dbg !3895, !tbaa !1083
  %125 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %122, ptr noundef nonnull dereferenceable(1) @.str.148, i32 noundef %124) #27, !dbg !3896
  %126 = sext i32 %125 to i64, !dbg !3897
  %127 = getelementptr inbounds i8, ptr %122, i64 %126, !dbg !3897
  call void @llvm.dbg.value(metadata ptr %127, metadata !3810, metadata !DIExpression()), !dbg !3811
  %128 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 39, i32 17, !dbg !3898
  %129 = load i32, ptr %128, align 4, !dbg !3898, !tbaa !1945
  %130 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %127, ptr noundef nonnull dereferenceable(1) @.str.149, i32 noundef %129) #27, !dbg !3899
  %131 = sext i32 %130 to i64, !dbg !3900
  %132 = getelementptr inbounds i8, ptr %127, i64 %131, !dbg !3900
  call void @llvm.dbg.value(metadata ptr %132, metadata !3810, metadata !DIExpression()), !dbg !3811
  %133 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 39, i32 16, !dbg !3901
  %134 = load i32, ptr %133, align 8, !dbg !3901, !tbaa !831
  %135 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %132, ptr noundef nonnull dereferenceable(1) @.str.150, i32 noundef %134) #27, !dbg !3902
  %136 = sext i32 %135 to i64, !dbg !3903
  %137 = getelementptr inbounds i8, ptr %132, i64 %136, !dbg !3903
  call void @llvm.dbg.value(metadata ptr %137, metadata !3810, metadata !DIExpression()), !dbg !3811
  %138 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 25, !dbg !3904
  %139 = load i32, ptr %138, align 4, !dbg !3904, !tbaa !1494
  %140 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %137, ptr noundef nonnull dereferenceable(1) @.str.151, i32 noundef %139) #27, !dbg !3905
  %141 = sext i32 %140 to i64, !dbg !3906
  %142 = getelementptr inbounds i8, ptr %137, i64 %141, !dbg !3906
  call void @llvm.dbg.value(metadata ptr %142, metadata !3810, metadata !DIExpression()), !dbg !3811
  %143 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 16, !dbg !3907
  %144 = load i32, ptr %143, align 8, !dbg !3907, !tbaa !1371
  %145 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %142, ptr noundef nonnull dereferenceable(1) @.str.152, i32 noundef %144) #27, !dbg !3908
  %146 = sext i32 %145 to i64, !dbg !3909
  %147 = getelementptr inbounds i8, ptr %142, i64 %146, !dbg !3909
  call void @llvm.dbg.value(metadata ptr %147, metadata !3810, metadata !DIExpression()), !dbg !3811
  %148 = load i32, ptr %143, align 8, !dbg !3910, !tbaa !1371
  %149 = icmp eq i32 %148, 0, !dbg !3912
  br i1 %149, label %164, label %150, !dbg !3913

150:                                              ; preds = %31
  %151 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 19, !dbg !3914
  %152 = load i32, ptr %151, align 4, !dbg !3914, !tbaa !1424
  %153 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 17, !dbg !3916
  %154 = load i32, ptr %153, align 4, !dbg !3916, !tbaa !1379
  %155 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 18, !dbg !3917
  %156 = load i32, ptr %155, align 8, !dbg !3917, !tbaa !1417
  %157 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 39, i32 4, !dbg !3918
  %158 = load i32, ptr %157, align 8, !dbg !3918, !tbaa !3919
  %159 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 39, i32 3, !dbg !3920
  %160 = load i32, ptr %159, align 4, !dbg !3920, !tbaa !1700
  %161 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %147, ptr noundef nonnull dereferenceable(1) @.str.153, i32 noundef %152, i32 noundef %154, i32 noundef %156, i32 noundef %158, i32 noundef %160) #27, !dbg !3921
  %162 = sext i32 %161 to i64, !dbg !3922
  %163 = getelementptr inbounds i8, ptr %147, i64 %162, !dbg !3922
  call void @llvm.dbg.value(metadata ptr %163, metadata !3810, metadata !DIExpression()), !dbg !3811
  br label %164, !dbg !3923

164:                                              ; preds = %150, %31
  %165 = phi ptr [ %163, %150 ], [ %147, %31 ], !dbg !3811
  call void @llvm.dbg.value(metadata ptr %165, metadata !3810, metadata !DIExpression()), !dbg !3811
  %166 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 12, !dbg !3924
  %167 = load i32, ptr %166, align 8, !dbg !3924, !tbaa !740
  %168 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 13, !dbg !3925
  %169 = load i32, ptr %168, align 4, !dbg !3925, !tbaa !743
  %170 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 14, !dbg !3926
  %171 = load i32, ptr %170, align 8, !dbg !3926, !tbaa !747
  %172 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 15, !dbg !3927
  %173 = load i32, ptr %172, align 4, !dbg !3927, !tbaa !1352
  %174 = icmp eq i32 %173, 0, !dbg !3928
  %175 = select i1 %174, ptr @.str.156, ptr @.str.155, !dbg !3928
  %176 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %165, ptr noundef nonnull dereferenceable(1) @.str.154, i32 noundef %167, i32 noundef %169, i32 noundef %171, ptr noundef nonnull %175) #27, !dbg !3929
  %177 = sext i32 %176 to i64, !dbg !3930
  %178 = getelementptr inbounds i8, ptr %165, i64 %177, !dbg !3930
  call void @llvm.dbg.value(metadata ptr %178, metadata !3810, metadata !DIExpression()), !dbg !3811
  %179 = load i32, ptr %3, align 8, !dbg !3931, !tbaa !1967
  %180 = icmp eq i32 %179, 2, !dbg !3932
  br i1 %180, label %181, label %190, !dbg !3933

181:                                              ; preds = %164
  %182 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 17, !dbg !3934
  %183 = load i32, ptr %182, align 8, !dbg !3934, !tbaa !790
  %184 = icmp eq i32 %183, 0, !dbg !3935
  br i1 %184, label %185, label %193, !dbg !3935

185:                                              ; preds = %181
  %186 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 9, !dbg !3936
  %187 = load i32, ptr %186, align 4, !dbg !3936, !tbaa !763
  %188 = icmp eq i32 %187, 0, !dbg !3937
  %189 = select i1 %188, ptr @.str.160, ptr @.str.159, !dbg !3937
  br label %193, !dbg !3935

190:                                              ; preds = %164
  %191 = icmp eq i32 %179, 1, !dbg !3938
  %192 = select i1 %191, ptr @.str.99, ptr @.str.161, !dbg !3939
  br label %193, !dbg !3933

193:                                              ; preds = %185, %181, %190
  %194 = phi ptr [ %192, %190 ], [ %189, %185 ], [ @.str.158, %181 ], !dbg !3933
  %195 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %178, ptr noundef nonnull dereferenceable(1) @.str.157, ptr noundef nonnull %194) #27, !dbg !3940
  %196 = sext i32 %195 to i64, !dbg !3941
  %197 = getelementptr inbounds i8, ptr %178, i64 %196, !dbg !3941
  call void @llvm.dbg.value(metadata ptr %197, metadata !3810, metadata !DIExpression()), !dbg !3811
  %198 = load i32, ptr %3, align 8, !dbg !3942, !tbaa !1967
  switch i32 %198, label %265 [
    i32 0, label %251
    i32 1, label %199
    i32 2, label %204
  ], !dbg !3944

199:                                              ; preds = %193
  %200 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 6, !dbg !3945
  %201 = load float, ptr %200, align 8, !dbg !3945, !tbaa !2011
  %202 = fpext float %201 to double, !dbg !3948
  %203 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %197, ptr noundef nonnull dereferenceable(1) @.str.162, double noundef %202) #27, !dbg !3949
  call void @llvm.dbg.value(metadata !DIArgList(ptr %197, i32 %203), metadata !3810, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !3811
  br label %211, !dbg !3950

204:                                              ; preds = %193
  %205 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 5, !dbg !3951
  %206 = load i32, ptr %205, align 4, !dbg !3951, !tbaa !757
  %207 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 7, !dbg !3952
  %208 = load float, ptr %207, align 4, !dbg !3952, !tbaa !2089
  %209 = fpext float %208 to double, !dbg !3953
  %210 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %197, ptr noundef nonnull dereferenceable(1) @.str.163, i32 noundef %206, double noundef %209) #27, !dbg !3954
  call void @llvm.dbg.value(metadata !DIArgList(ptr %197, i32 %210), metadata !3810, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !3811
  br label %211

211:                                              ; preds = %204, %199
  %212 = phi i32 [ %203, %199 ], [ %210, %204 ]
  %213 = sext i32 %212 to i64, !dbg !3955
  %214 = getelementptr inbounds i8, ptr %197, i64 %213, !dbg !3955
  call void @llvm.dbg.value(metadata ptr %214, metadata !3810, metadata !DIExpression()), !dbg !3811
  %215 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 19, !dbg !3956
  %216 = load float, ptr %215, align 8, !dbg !3956, !tbaa !2287
  %217 = fpext float %216 to double, !dbg !3957
  %218 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 2, !dbg !3958
  %219 = load i32, ptr %218, align 8, !dbg !3958, !tbaa !2031
  %220 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 3, !dbg !3959
  %221 = load i32, ptr %220, align 4, !dbg !3959, !tbaa !2050
  %222 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 4, !dbg !3960
  %223 = load i32, ptr %222, align 8, !dbg !3960, !tbaa !771
  %224 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %214, ptr noundef nonnull dereferenceable(1) @.str.164, double noundef %217, i32 noundef %219, i32 noundef %221, i32 noundef %223) #27, !dbg !3961
  %225 = sext i32 %224 to i64, !dbg !3962
  %226 = getelementptr inbounds i8, ptr %214, i64 %225, !dbg !3962
  call void @llvm.dbg.value(metadata ptr %226, metadata !3810, metadata !DIExpression()), !dbg !3811
  %227 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 17, !dbg !3963
  %228 = load i32, ptr %227, align 8, !dbg !3963, !tbaa !790
  %229 = icmp eq i32 %228, 0, !dbg !3965
  br i1 %229, label %240, label %230, !dbg !3966

230:                                              ; preds = %211
  %231 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 21, !dbg !3967
  %232 = load float, ptr %231, align 8, !dbg !3967, !tbaa !798
  %233 = fpext float %232 to double, !dbg !3968
  %234 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 20, !dbg !3969
  %235 = load float, ptr %234, align 4, !dbg !3969, !tbaa !2308
  %236 = fpext float %235 to double, !dbg !3970
  %237 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %226, ptr noundef nonnull dereferenceable(1) @.str.165, double noundef %233, double noundef %236) #27, !dbg !3971
  %238 = sext i32 %237 to i64, !dbg !3972
  %239 = getelementptr inbounds i8, ptr %226, i64 %238, !dbg !3972
  call void @llvm.dbg.value(metadata ptr %239, metadata !3810, metadata !DIExpression()), !dbg !3811
  br label %240, !dbg !3973

240:                                              ; preds = %230, %211
  %241 = phi ptr [ %239, %230 ], [ %226, %211 ], !dbg !3974
  call void @llvm.dbg.value(metadata ptr %241, metadata !3810, metadata !DIExpression()), !dbg !3811
  %242 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 9, !dbg !3975
  %243 = load i32, ptr %242, align 4, !dbg !3975, !tbaa !763
  %244 = icmp eq i32 %243, 0, !dbg !3977
  br i1 %244, label %257, label %245, !dbg !3978

245:                                              ; preds = %240
  %246 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 8, !dbg !3979
  %247 = load i32, ptr %246, align 8, !dbg !3979, !tbaa !760
  %248 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %241, ptr noundef nonnull dereferenceable(1) @.str.166, i32 noundef %247, i32 noundef %243) #27, !dbg !3980
  %249 = sext i32 %248 to i64, !dbg !3981
  %250 = getelementptr inbounds i8, ptr %241, i64 %249, !dbg !3981
  call void @llvm.dbg.value(metadata ptr %250, metadata !3810, metadata !DIExpression()), !dbg !3811
  br label %257, !dbg !3982

251:                                              ; preds = %193
  %252 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 1, !dbg !3983
  %253 = load i32, ptr %252, align 4, !dbg !3983, !tbaa !1988
  %254 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %197, ptr noundef nonnull dereferenceable(1) @.str.167, i32 noundef %253) #27, !dbg !3985
  %255 = sext i32 %254 to i64, !dbg !3986
  %256 = getelementptr inbounds i8, ptr %197, i64 %255, !dbg !3986
  call void @llvm.dbg.value(metadata ptr %256, metadata !3810, metadata !DIExpression()), !dbg !3811
  br label %257, !dbg !3987

257:                                              ; preds = %251, %240, %245
  %258 = phi ptr [ %256, %251 ], [ %241, %240 ], [ %250, %245 ]
  %259 = load i32, ptr %3, align 8, !dbg !3988, !tbaa !1967
  call void @llvm.dbg.value(metadata ptr %258, metadata !3810, metadata !DIExpression()), !dbg !3811
  %260 = icmp eq i32 %259, 0, !dbg !3990
  br i1 %260, label %261, label %265, !dbg !3991

261:                                              ; preds = %257
  %262 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 1, !dbg !3992
  %263 = load i32, ptr %262, align 4, !dbg !3992, !tbaa !1988
  %264 = icmp eq i32 %263, 0, !dbg !3993
  br i1 %264, label %309, label %265, !dbg !3994

265:                                              ; preds = %193, %261, %257
  %266 = phi ptr [ %258, %261 ], [ %258, %257 ], [ %197, %193 ]
  %267 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 11, !dbg !3995
  %268 = load float, ptr %267, align 4, !dbg !3995, !tbaa !2165
  %269 = fpext float %268 to double, !dbg !3997
  %270 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %266, ptr noundef nonnull dereferenceable(1) @.str.168, double noundef %269) #27, !dbg !3998
  %271 = sext i32 %270 to i64, !dbg !3999
  %272 = getelementptr inbounds i8, ptr %266, i64 %271, !dbg !3999
  call void @llvm.dbg.value(metadata ptr %272, metadata !3810, metadata !DIExpression()), !dbg !3811
  %273 = load i32, ptr %143, align 8, !dbg !4000, !tbaa !1371
  %274 = icmp eq i32 %273, 0, !dbg !4002
  br i1 %274, label %282, label %275, !dbg !4003

275:                                              ; preds = %265
  %276 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 12, !dbg !4004
  %277 = load float, ptr %276, align 8, !dbg !4004, !tbaa !775
  %278 = fpext float %277 to double, !dbg !4005
  %279 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %272, ptr noundef nonnull dereferenceable(1) @.str.169, double noundef %278) #27, !dbg !4006
  %280 = sext i32 %279 to i64, !dbg !4007
  %281 = getelementptr inbounds i8, ptr %272, i64 %280, !dbg !4007
  call void @llvm.dbg.value(metadata ptr %281, metadata !3810, metadata !DIExpression()), !dbg !3811
  br label %282, !dbg !4008

282:                                              ; preds = %275, %265
  %283 = phi ptr [ %281, %275 ], [ %272, %265 ], !dbg !4009
  call void @llvm.dbg.value(metadata ptr %283, metadata !3810, metadata !DIExpression()), !dbg !3811
  %284 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 13, !dbg !4010
  %285 = load i32, ptr %284, align 4, !dbg !4010, !tbaa !778
  %286 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %283, ptr noundef nonnull dereferenceable(1) @.str.170, i32 noundef %285) #27, !dbg !4011
  %287 = sext i32 %286 to i64, !dbg !4012
  %288 = getelementptr inbounds i8, ptr %283, i64 %287, !dbg !4012
  call void @llvm.dbg.value(metadata ptr %288, metadata !3810, metadata !DIExpression()), !dbg !3811
  %289 = load i32, ptr %284, align 4, !dbg !4013, !tbaa !778
  %290 = icmp eq i32 %289, 0, !dbg !4015
  br i1 %290, label %298, label %291, !dbg !4016

291:                                              ; preds = %282
  %292 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 14, !dbg !4017
  %293 = load float, ptr %292, align 8, !dbg !4017, !tbaa !781
  %294 = fpext float %293 to double, !dbg !4018
  %295 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %288, ptr noundef nonnull dereferenceable(1) @.str.171, double noundef %294) #27, !dbg !4019
  %296 = sext i32 %295 to i64, !dbg !4020
  %297 = getelementptr inbounds i8, ptr %288, i64 %296, !dbg !4020
  call void @llvm.dbg.value(metadata ptr %297, metadata !3810, metadata !DIExpression()), !dbg !3811
  br label %298, !dbg !4021

298:                                              ; preds = %291, %282
  %299 = phi ptr [ %297, %291 ], [ %288, %282 ], !dbg !4009
  call void @llvm.dbg.value(metadata ptr %299, metadata !3810, metadata !DIExpression()), !dbg !3811
  %300 = load ptr, ptr %4, align 8, !dbg !4022, !tbaa !2336
  %301 = icmp eq ptr %300, null, !dbg !4024
  br i1 %301, label %304, label %302, !dbg !4025

302:                                              ; preds = %298
  %303 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %299, ptr noundef nonnull dereferenceable(1) @.str.172, ptr noundef nonnull %300) #27, !dbg !4026
  call void @llvm.dbg.value(metadata !DIArgList(ptr %299, i32 %303), metadata !3810, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !3811
  br label %309, !dbg !4027

304:                                              ; preds = %298
  %305 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40, i32 23, !dbg !4028
  %306 = load i32, ptr %305, align 8, !dbg !4028, !tbaa !801
  %307 = icmp eq i32 %306, 0, !dbg !4030
  br i1 %307, label %309, label %308, !dbg !4031

308:                                              ; preds = %304
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %299, ptr noundef nonnull align 1 dereferenceable(7) @.str.173, i64 7, i1 false), !dbg !4032
  call void @llvm.dbg.value(metadata !DIArgList(ptr poison, i32 poison), metadata !3810, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !3811
  br label %309, !dbg !4033

309:                                              ; preds = %302, %308, %304, %261
  ret ptr %14, !dbg !4034
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !4035 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !4038 noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind willreturn
declare !dbg !4041 i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn
declare !dbg !4044 double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare !dbg !4047 noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare !dbg !4050 noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #24

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #26

attributes #0 = { nounwind uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #4 = { nofree nounwind uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #10 = { mustprogress nofree nounwind willreturn "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(read) "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #13 = { nofree nounwind "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #14 = { nofree nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #16 = { mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite) uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #17 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #18 = { mustprogress nounwind willreturn uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #19 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #20 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #21 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized,aligned") allocsize(1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #22 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #23 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #27 = { nounwind }
attributes #28 = { cold }
attributes #29 = { nounwind willreturn memory(read) }
attributes #30 = { nounwind willreturn memory(none) }
attributes #31 = { nounwind allocsize(1) }

!llvm.dbg.cu = !{!71}
!llvm.module.flags = !{!557, !558, !559, !560, !561, !562}
!llvm.ident = !{!563}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 100, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "common/common.c", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "97cd11174cbc5b3d76fbbbb6e4cbeb79")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 15)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 218, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 5)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 232, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 4)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 233, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 3)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 236, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 6)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 243, type: !14, isLocal: true, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !2, line: 246, type: !9, isLocal: true, isDefinition: true)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(scope: null, file: !2, line: 253, type: !33, isLocal: true, isDefinition: true)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !34)
!34 = !{!35}
!35 = !DISubrange(count: 2)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(scope: null, file: !2, line: 263, type: !38, isLocal: true, isDefinition: true)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !39)
!39 = !{!40}
!40 = !DISubrange(count: 8)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(scope: null, file: !2, line: 270, type: !43, isLocal: true, isDefinition: true)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !44)
!44 = !{!45}
!45 = !DISubrange(count: 14)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(scope: null, file: !2, line: 270, type: !48, isLocal: true, isDefinition: true)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !49)
!49 = !{!50}
!50 = !DISubrange(count: 16)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(scope: null, file: !2, line: 272, type: !24, isLocal: true, isDefinition: true)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(scope: null, file: !2, line: 272, type: !55, isLocal: true, isDefinition: true)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 10)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(scope: null, file: !2, line: 279, type: !14, isLocal: true, isDefinition: true)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(scope: null, file: !2, line: 281, type: !24, isLocal: true, isDefinition: true)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(scope: null, file: !2, line: 282, type: !24, isLocal: true, isDefinition: true)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(scope: null, file: !2, line: 284, type: !66, isLocal: true, isDefinition: true)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 9)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(name: "x264_overscan_names", scope: !71, file: !464, line: 97, type: !556, isLocal: true, isDefinition: true)
!71 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 16.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !72, retainedTypes: !89, globals: !99, splitDebugInlining: false, nameTableKind: None)
!72 = !{!73}
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !74, line: 46, baseType: !75, size: 32, elements: !76)
!74 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!75 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!76 = !{!77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88}
!77 = !DIEnumerator(name: "_ISupper", value: 256)
!78 = !DIEnumerator(name: "_ISlower", value: 512)
!79 = !DIEnumerator(name: "_ISalpha", value: 1024)
!80 = !DIEnumerator(name: "_ISdigit", value: 2048)
!81 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!82 = !DIEnumerator(name: "_ISspace", value: 8192)
!83 = !DIEnumerator(name: "_ISprint", value: 16384)
!84 = !DIEnumerator(name: "_ISgraph", value: 32768)
!85 = !DIEnumerator(name: "_ISblank", value: 1)
!86 = !DIEnumerator(name: "_IScntrl", value: 2)
!87 = !DIEnumerator(name: "_ISpunct", value: 4)
!88 = !DIEnumerator(name: "_ISalnum", value: 8)
!89 = !{!90, !91, !92, !93}
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!91 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!92 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !95, line: 24, baseType: !96)
!95 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !97, line: 38, baseType: !98)
!97 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!98 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!99 = !{!0, !7, !12, !17, !22, !27, !29, !31, !36, !41, !46, !51, !53, !58, !60, !62, !64, !100, !105, !107, !109, !111, !113, !115, !117, !119, !121, !126, !131, !133, !135, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !383, !385, !387, !389, !391, !393, !398, !403, !405, !410, !412, !414, !416, !418, !420, !422, !427, !432, !437, !442, !444, !446, !448, !450, !452, !454, !456, !458, !460, !462, !465, !467, !69, !469, !471, !473, !475, !477, !479, !485, !487, !489, !492, !494, !496, !498, !500, !502, !504, !507, !509, !511, !513, !516, !518, !520, !522, !524, !526, !528, !531, !533, !535, !537, !539, !541, !544, !546, !548, !550, !552, !554}
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(scope: null, file: !2, line: 286, type: !102, isLocal: true, isDefinition: true)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 12)
!105 = !DIGlobalVariableExpression(var: !106, expr: !DIExpression())
!106 = distinct !DIGlobalVariable(scope: null, file: !2, line: 288, type: !55, isLocal: true, isDefinition: true)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(scope: null, file: !2, line: 290, type: !55, isLocal: true, isDefinition: true)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(scope: null, file: !2, line: 292, type: !66, isLocal: true, isDefinition: true)
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(scope: null, file: !2, line: 294, type: !102, isLocal: true, isDefinition: true)
!113 = !DIGlobalVariableExpression(var: !114, expr: !DIExpression())
!114 = distinct !DIGlobalVariable(scope: null, file: !2, line: 296, type: !55, isLocal: true, isDefinition: true)
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(scope: null, file: !2, line: 301, type: !14, isLocal: true, isDefinition: true)
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(scope: null, file: !2, line: 312, type: !14, isLocal: true, isDefinition: true)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(scope: null, file: !2, line: 312, type: !66, isLocal: true, isDefinition: true)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(scope: null, file: !2, line: 314, type: !123, isLocal: true, isDefinition: true)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 7)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(scope: null, file: !2, line: 320, type: !128, isLocal: true, isDefinition: true)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !129)
!129 = !{!130}
!130 = !DISubrange(count: 11)
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(scope: null, file: !2, line: 320, type: !128, isLocal: true, isDefinition: true)
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(scope: null, file: !2, line: 326, type: !66, isLocal: true, isDefinition: true)
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(scope: null, file: !2, line: 328, type: !137, isLocal: true, isDefinition: true)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !138)
!138 = !{!139}
!139 = !DISubrange(count: 13)
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(scope: null, file: !2, line: 330, type: !38, isLocal: true, isDefinition: true)
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(scope: null, file: !2, line: 332, type: !38, isLocal: true, isDefinition: true)
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(scope: null, file: !2, line: 341, type: !123, isLocal: true, isDefinition: true)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(scope: null, file: !2, line: 343, type: !55, isLocal: true, isDefinition: true)
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(scope: null, file: !2, line: 345, type: !19, isLocal: true, isDefinition: true)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(scope: null, file: !2, line: 347, type: !123, isLocal: true, isDefinition: true)
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(scope: null, file: !2, line: 347, type: !38, isLocal: true, isDefinition: true)
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(scope: null, file: !2, line: 350, type: !24, isLocal: true, isDefinition: true)
!156 = !DIGlobalVariableExpression(var: !157, expr: !DIExpression())
!157 = distinct !DIGlobalVariable(scope: null, file: !2, line: 354, type: !19, isLocal: true, isDefinition: true)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(scope: null, file: !2, line: 362, type: !24, isLocal: true, isDefinition: true)
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(scope: null, file: !2, line: 364, type: !55, isLocal: true, isDefinition: true)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(scope: null, file: !2, line: 366, type: !128, isLocal: true, isDefinition: true)
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(scope: null, file: !2, line: 368, type: !14, isLocal: true, isDefinition: true)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(scope: null, file: !2, line: 370, type: !9, isLocal: true, isDefinition: true)
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(scope: null, file: !2, line: 372, type: !14, isLocal: true, isDefinition: true)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(scope: null, file: !2, line: 377, type: !38, isLocal: true, isDefinition: true)
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression())
!173 = distinct !DIGlobalVariable(scope: null, file: !2, line: 379, type: !9, isLocal: true, isDefinition: true)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(scope: null, file: !2, line: 387, type: !9, isLocal: true, isDefinition: true)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(scope: null, file: !2, line: 393, type: !24, isLocal: true, isDefinition: true)
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(scope: null, file: !2, line: 399, type: !24, isLocal: true, isDefinition: true)
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(scope: null, file: !2, line: 405, type: !123, isLocal: true, isDefinition: true)
!182 = !DIGlobalVariableExpression(var: !183, expr: !DIExpression())
!183 = distinct !DIGlobalVariable(scope: null, file: !2, line: 410, type: !123, isLocal: true, isDefinition: true)
!184 = !DIGlobalVariableExpression(var: !185, expr: !DIExpression())
!185 = distinct !DIGlobalVariable(scope: null, file: !2, line: 415, type: !123, isLocal: true, isDefinition: true)
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(scope: null, file: !2, line: 420, type: !123, isLocal: true, isDefinition: true)
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(scope: null, file: !2, line: 425, type: !24, isLocal: true, isDefinition: true)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(scope: null, file: !2, line: 430, type: !24, isLocal: true, isDefinition: true)
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(scope: null, file: !2, line: 435, type: !14, isLocal: true, isDefinition: true)
!194 = !DIGlobalVariableExpression(var: !195, expr: !DIExpression())
!195 = distinct !DIGlobalVariable(scope: null, file: !2, line: 441, type: !66, isLocal: true, isDefinition: true)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(scope: null, file: !2, line: 443, type: !38, isLocal: true, isDefinition: true)
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(scope: null, file: !2, line: 443, type: !128, isLocal: true, isDefinition: true)
!200 = !DIGlobalVariableExpression(var: !201, expr: !DIExpression())
!201 = distinct !DIGlobalVariable(scope: null, file: !2, line: 446, type: !9, isLocal: true, isDefinition: true)
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression())
!203 = distinct !DIGlobalVariable(scope: null, file: !2, line: 447, type: !14, isLocal: true, isDefinition: true)
!204 = !DIGlobalVariableExpression(var: !205, expr: !DIExpression())
!205 = distinct !DIGlobalVariable(scope: null, file: !2, line: 449, type: !9, isLocal: true, isDefinition: true)
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(scope: null, file: !2, line: 450, type: !9, isLocal: true, isDefinition: true)
!208 = !DIGlobalVariableExpression(var: !209, expr: !DIExpression())
!209 = distinct !DIGlobalVariable(scope: null, file: !2, line: 451, type: !9, isLocal: true, isDefinition: true)
!210 = !DIGlobalVariableExpression(var: !211, expr: !DIExpression())
!211 = distinct !DIGlobalVariable(scope: null, file: !2, line: 452, type: !9, isLocal: true, isDefinition: true)
!212 = !DIGlobalVariableExpression(var: !213, expr: !DIExpression())
!213 = distinct !DIGlobalVariable(scope: null, file: !2, line: 453, type: !9, isLocal: true, isDefinition: true)
!214 = !DIGlobalVariableExpression(var: !215, expr: !DIExpression())
!215 = distinct !DIGlobalVariable(scope: null, file: !2, line: 455, type: !123, isLocal: true, isDefinition: true)
!216 = !DIGlobalVariableExpression(var: !217, expr: !DIExpression())
!217 = distinct !DIGlobalVariable(scope: null, file: !2, line: 457, type: !38, isLocal: true, isDefinition: true)
!218 = !DIGlobalVariableExpression(var: !219, expr: !DIExpression())
!219 = distinct !DIGlobalVariable(scope: null, file: !2, line: 457, type: !66, isLocal: true, isDefinition: true)
!220 = !DIGlobalVariableExpression(var: !221, expr: !DIExpression())
!221 = distinct !DIGlobalVariable(scope: null, file: !2, line: 459, type: !123, isLocal: true, isDefinition: true)
!222 = !DIGlobalVariableExpression(var: !223, expr: !DIExpression())
!223 = distinct !DIGlobalVariable(scope: null, file: !2, line: 459, type: !102, isLocal: true, isDefinition: true)
!224 = !DIGlobalVariableExpression(var: !225, expr: !DIExpression())
!225 = distinct !DIGlobalVariable(scope: null, file: !2, line: 461, type: !128, isLocal: true, isDefinition: true)
!226 = !DIGlobalVariableExpression(var: !227, expr: !DIExpression())
!227 = distinct !DIGlobalVariable(scope: null, file: !2, line: 463, type: !228, isLocal: true, isDefinition: true)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !229)
!229 = !{!230}
!230 = !DISubrange(count: 17)
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(scope: null, file: !2, line: 465, type: !19, isLocal: true, isDefinition: true)
!233 = !DIGlobalVariableExpression(var: !234, expr: !DIExpression())
!234 = distinct !DIGlobalVariable(scope: null, file: !2, line: 467, type: !38, isLocal: true, isDefinition: true)
!235 = !DIGlobalVariableExpression(var: !236, expr: !DIExpression())
!236 = distinct !DIGlobalVariable(scope: null, file: !2, line: 467, type: !66, isLocal: true, isDefinition: true)
!237 = !DIGlobalVariableExpression(var: !238, expr: !DIExpression())
!238 = distinct !DIGlobalVariable(scope: null, file: !2, line: 469, type: !38, isLocal: true, isDefinition: true)
!239 = !DIGlobalVariableExpression(var: !240, expr: !DIExpression())
!240 = distinct !DIGlobalVariable(scope: null, file: !2, line: 469, type: !66, isLocal: true, isDefinition: true)
!241 = !DIGlobalVariableExpression(var: !242, expr: !DIExpression())
!242 = distinct !DIGlobalVariable(scope: null, file: !2, line: 471, type: !3, isLocal: true, isDefinition: true)
!243 = !DIGlobalVariableExpression(var: !244, expr: !DIExpression())
!244 = distinct !DIGlobalVariable(scope: null, file: !2, line: 471, type: !48, isLocal: true, isDefinition: true)
!245 = !DIGlobalVariableExpression(var: !246, expr: !DIExpression())
!246 = distinct !DIGlobalVariable(scope: null, file: !2, line: 473, type: !24, isLocal: true, isDefinition: true)
!247 = !DIGlobalVariableExpression(var: !248, expr: !DIExpression())
!248 = distinct !DIGlobalVariable(scope: null, file: !2, line: 473, type: !9, isLocal: true, isDefinition: true)
!249 = !DIGlobalVariableExpression(var: !250, expr: !DIExpression())
!250 = distinct !DIGlobalVariable(scope: null, file: !2, line: 475, type: !123, isLocal: true, isDefinition: true)
!251 = !DIGlobalVariableExpression(var: !252, expr: !DIExpression())
!252 = distinct !DIGlobalVariable(scope: null, file: !2, line: 477, type: !24, isLocal: true, isDefinition: true)
!253 = !DIGlobalVariableExpression(var: !254, expr: !DIExpression())
!254 = distinct !DIGlobalVariable(scope: null, file: !2, line: 478, type: !24, isLocal: true, isDefinition: true)
!255 = !DIGlobalVariableExpression(var: !256, expr: !DIExpression())
!256 = distinct !DIGlobalVariable(scope: null, file: !2, line: 480, type: !19, isLocal: true, isDefinition: true)
!257 = !DIGlobalVariableExpression(var: !258, expr: !DIExpression())
!258 = distinct !DIGlobalVariable(scope: null, file: !2, line: 490, type: !55, isLocal: true, isDefinition: true)
!259 = !DIGlobalVariableExpression(var: !260, expr: !DIExpression())
!260 = distinct !DIGlobalVariable(scope: null, file: !2, line: 492, type: !128, isLocal: true, isDefinition: true)
!261 = !DIGlobalVariableExpression(var: !262, expr: !DIExpression())
!262 = distinct !DIGlobalVariable(scope: null, file: !2, line: 494, type: !38, isLocal: true, isDefinition: true)
!263 = !DIGlobalVariableExpression(var: !264, expr: !DIExpression())
!264 = distinct !DIGlobalVariable(scope: null, file: !2, line: 496, type: !128, isLocal: true, isDefinition: true)
!265 = !DIGlobalVariableExpression(var: !266, expr: !DIExpression())
!266 = distinct !DIGlobalVariable(scope: null, file: !2, line: 498, type: !137, isLocal: true, isDefinition: true)
!267 = !DIGlobalVariableExpression(var: !268, expr: !DIExpression())
!268 = distinct !DIGlobalVariable(scope: null, file: !2, line: 500, type: !3, isLocal: true, isDefinition: true)
!269 = !DIGlobalVariableExpression(var: !270, expr: !DIExpression())
!270 = distinct !DIGlobalVariable(scope: null, file: !2, line: 502, type: !3, isLocal: true, isDefinition: true)
!271 = !DIGlobalVariableExpression(var: !272, expr: !DIExpression())
!272 = distinct !DIGlobalVariable(scope: null, file: !2, line: 504, type: !19, isLocal: true, isDefinition: true)
!273 = !DIGlobalVariableExpression(var: !274, expr: !DIExpression())
!274 = distinct !DIGlobalVariable(scope: null, file: !2, line: 506, type: !38, isLocal: true, isDefinition: true)
!275 = !DIGlobalVariableExpression(var: !276, expr: !DIExpression())
!276 = distinct !DIGlobalVariable(scope: null, file: !2, line: 511, type: !19, isLocal: true, isDefinition: true)
!277 = !DIGlobalVariableExpression(var: !278, expr: !DIExpression())
!278 = distinct !DIGlobalVariable(scope: null, file: !2, line: 511, type: !102, isLocal: true, isDefinition: true)
!279 = !DIGlobalVariableExpression(var: !280, expr: !DIExpression())
!280 = distinct !DIGlobalVariable(scope: null, file: !2, line: 516, type: !14, isLocal: true, isDefinition: true)
!281 = !DIGlobalVariableExpression(var: !282, expr: !DIExpression())
!282 = distinct !DIGlobalVariable(scope: null, file: !2, line: 521, type: !24, isLocal: true, isDefinition: true)
!283 = !DIGlobalVariableExpression(var: !284, expr: !DIExpression())
!284 = distinct !DIGlobalVariable(scope: null, file: !2, line: 521, type: !123, isLocal: true, isDefinition: true)
!285 = !DIGlobalVariableExpression(var: !286, expr: !DIExpression())
!286 = distinct !DIGlobalVariable(scope: null, file: !2, line: 523, type: !24, isLocal: true, isDefinition: true)
!287 = !DIGlobalVariableExpression(var: !288, expr: !DIExpression())
!288 = distinct !DIGlobalVariable(scope: null, file: !2, line: 523, type: !123, isLocal: true, isDefinition: true)
!289 = !DIGlobalVariableExpression(var: !290, expr: !DIExpression())
!290 = distinct !DIGlobalVariable(scope: null, file: !2, line: 525, type: !123, isLocal: true, isDefinition: true)
!291 = !DIGlobalVariableExpression(var: !292, expr: !DIExpression())
!292 = distinct !DIGlobalVariable(scope: null, file: !2, line: 525, type: !38, isLocal: true, isDefinition: true)
!293 = !DIGlobalVariableExpression(var: !294, expr: !DIExpression())
!294 = distinct !DIGlobalVariable(scope: null, file: !2, line: 527, type: !38, isLocal: true, isDefinition: true)
!295 = !DIGlobalVariableExpression(var: !296, expr: !DIExpression())
!296 = distinct !DIGlobalVariable(scope: null, file: !2, line: 528, type: !14, isLocal: true, isDefinition: true)
!297 = !DIGlobalVariableExpression(var: !298, expr: !DIExpression())
!298 = distinct !DIGlobalVariable(scope: null, file: !2, line: 529, type: !102, isLocal: true, isDefinition: true)
!299 = !DIGlobalVariableExpression(var: !300, expr: !DIExpression())
!300 = distinct !DIGlobalVariable(scope: null, file: !2, line: 531, type: !102, isLocal: true, isDefinition: true)
!301 = !DIGlobalVariableExpression(var: !302, expr: !DIExpression())
!302 = distinct !DIGlobalVariable(scope: null, file: !2, line: 533, type: !66, isLocal: true, isDefinition: true)
!303 = !DIGlobalVariableExpression(var: !304, expr: !DIExpression())
!304 = distinct !DIGlobalVariable(scope: null, file: !2, line: 535, type: !38, isLocal: true, isDefinition: true)
!305 = !DIGlobalVariableExpression(var: !306, expr: !DIExpression())
!306 = distinct !DIGlobalVariable(scope: null, file: !2, line: 535, type: !55, isLocal: true, isDefinition: true)
!307 = !DIGlobalVariableExpression(var: !308, expr: !DIExpression())
!308 = distinct !DIGlobalVariable(scope: null, file: !2, line: 537, type: !38, isLocal: true, isDefinition: true)
!309 = !DIGlobalVariableExpression(var: !310, expr: !DIExpression())
!310 = distinct !DIGlobalVariable(scope: null, file: !2, line: 537, type: !55, isLocal: true, isDefinition: true)
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(scope: null, file: !2, line: 539, type: !38, isLocal: true, isDefinition: true)
!313 = !DIGlobalVariableExpression(var: !314, expr: !DIExpression())
!314 = distinct !DIGlobalVariable(scope: null, file: !2, line: 541, type: !102, isLocal: true, isDefinition: true)
!315 = !DIGlobalVariableExpression(var: !316, expr: !DIExpression())
!316 = distinct !DIGlobalVariable(scope: null, file: !2, line: 543, type: !9, isLocal: true, isDefinition: true)
!317 = !DIGlobalVariableExpression(var: !318, expr: !DIExpression())
!318 = distinct !DIGlobalVariable(scope: null, file: !2, line: 549, type: !24, isLocal: true, isDefinition: true)
!319 = !DIGlobalVariableExpression(var: !320, expr: !DIExpression())
!320 = distinct !DIGlobalVariable(scope: null, file: !2, line: 554, type: !24, isLocal: true, isDefinition: true)
!321 = !DIGlobalVariableExpression(var: !322, expr: !DIExpression())
!322 = distinct !DIGlobalVariable(scope: null, file: !2, line: 556, type: !24, isLocal: true, isDefinition: true)
!323 = !DIGlobalVariableExpression(var: !324, expr: !DIExpression())
!324 = distinct !DIGlobalVariable(scope: null, file: !2, line: 558, type: !66, isLocal: true, isDefinition: true)
!325 = !DIGlobalVariableExpression(var: !326, expr: !DIExpression())
!326 = distinct !DIGlobalVariable(scope: null, file: !2, line: 558, type: !55, isLocal: true, isDefinition: true)
!327 = !DIGlobalVariableExpression(var: !328, expr: !DIExpression())
!328 = distinct !DIGlobalVariable(scope: null, file: !2, line: 560, type: !24, isLocal: true, isDefinition: true)
!329 = !DIGlobalVariableExpression(var: !330, expr: !DIExpression())
!330 = distinct !DIGlobalVariable(scope: null, file: !2, line: 562, type: !9, isLocal: true, isDefinition: true)
!331 = !DIGlobalVariableExpression(var: !332, expr: !DIExpression())
!332 = distinct !DIGlobalVariable(scope: null, file: !2, line: 564, type: !9, isLocal: true, isDefinition: true)
!333 = !DIGlobalVariableExpression(var: !334, expr: !DIExpression())
!334 = distinct !DIGlobalVariable(scope: null, file: !2, line: 566, type: !14, isLocal: true, isDefinition: true)
!335 = !DIGlobalVariableExpression(var: !336, expr: !DIExpression())
!336 = distinct !DIGlobalVariable(scope: null, file: !2, line: 568, type: !123, isLocal: true, isDefinition: true)
!337 = !DIGlobalVariableExpression(var: !338, expr: !DIExpression())
!338 = distinct !DIGlobalVariable(scope: null, file: !2, line: 570, type: !43, isLocal: true, isDefinition: true)
!339 = !DIGlobalVariableExpression(var: !340, expr: !DIExpression())
!340 = distinct !DIGlobalVariable(scope: null, file: !2, line: 572, type: !3, isLocal: true, isDefinition: true)
!341 = !DIGlobalVariableExpression(var: !342, expr: !DIExpression())
!342 = distinct !DIGlobalVariable(scope: null, file: !2, line: 792, type: !19, isLocal: true, isDefinition: true)
!343 = !DIGlobalVariableExpression(var: !344, expr: !DIExpression())
!344 = distinct !DIGlobalVariable(scope: null, file: !2, line: 829, type: !123, isLocal: true, isDefinition: true)
!345 = !DIGlobalVariableExpression(var: !346, expr: !DIExpression())
!346 = distinct !DIGlobalVariable(scope: null, file: !2, line: 830, type: !128, isLocal: true, isDefinition: true)
!347 = !DIGlobalVariableExpression(var: !348, expr: !DIExpression())
!348 = distinct !DIGlobalVariable(scope: null, file: !2, line: 833, type: !66, isLocal: true, isDefinition: true)
!349 = !DIGlobalVariableExpression(var: !350, expr: !DIExpression())
!350 = distinct !DIGlobalVariable(scope: null, file: !2, line: 834, type: !38, isLocal: true, isDefinition: true)
!351 = !DIGlobalVariableExpression(var: !352, expr: !DIExpression())
!352 = distinct !DIGlobalVariable(scope: null, file: !2, line: 835, type: !353, isLocal: true, isDefinition: true)
!353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !354)
!354 = !{!355}
!355 = !DISubrange(count: 18)
!356 = !DIGlobalVariableExpression(var: !357, expr: !DIExpression())
!357 = distinct !DIGlobalVariable(scope: null, file: !2, line: 837, type: !228, isLocal: true, isDefinition: true)
!358 = !DIGlobalVariableExpression(var: !359, expr: !DIExpression())
!359 = distinct !DIGlobalVariable(scope: null, file: !2, line: 838, type: !123, isLocal: true, isDefinition: true)
!360 = !DIGlobalVariableExpression(var: !361, expr: !DIExpression())
!361 = distinct !DIGlobalVariable(scope: null, file: !2, line: 839, type: !55, isLocal: true, isDefinition: true)
!362 = !DIGlobalVariableExpression(var: !363, expr: !DIExpression())
!363 = distinct !DIGlobalVariable(scope: null, file: !2, line: 840, type: !353, isLocal: true, isDefinition: true)
!364 = !DIGlobalVariableExpression(var: !365, expr: !DIExpression())
!365 = distinct !DIGlobalVariable(scope: null, file: !2, line: 841, type: !43, isLocal: true, isDefinition: true)
!366 = !DIGlobalVariableExpression(var: !367, expr: !DIExpression())
!367 = distinct !DIGlobalVariable(scope: null, file: !2, line: 842, type: !137, isLocal: true, isDefinition: true)
!368 = !DIGlobalVariableExpression(var: !369, expr: !DIExpression())
!369 = distinct !DIGlobalVariable(scope: null, file: !2, line: 843, type: !43, isLocal: true, isDefinition: true)
!370 = !DIGlobalVariableExpression(var: !371, expr: !DIExpression())
!371 = distinct !DIGlobalVariable(scope: null, file: !2, line: 844, type: !102, isLocal: true, isDefinition: true)
!372 = !DIGlobalVariableExpression(var: !373, expr: !DIExpression())
!373 = distinct !DIGlobalVariable(scope: null, file: !2, line: 845, type: !128, isLocal: true, isDefinition: true)
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(scope: null, file: !2, line: 846, type: !38, isLocal: true, isDefinition: true)
!376 = !DIGlobalVariableExpression(var: !377, expr: !DIExpression())
!377 = distinct !DIGlobalVariable(scope: null, file: !2, line: 847, type: !48, isLocal: true, isDefinition: true)
!378 = !DIGlobalVariableExpression(var: !379, expr: !DIExpression())
!379 = distinct !DIGlobalVariable(scope: null, file: !2, line: 848, type: !380, isLocal: true, isDefinition: true)
!380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !381)
!381 = !{!382}
!382 = !DISubrange(count: 21)
!383 = !DIGlobalVariableExpression(var: !384, expr: !DIExpression())
!384 = distinct !DIGlobalVariable(scope: null, file: !2, line: 849, type: !102, isLocal: true, isDefinition: true)
!385 = !DIGlobalVariableExpression(var: !386, expr: !DIExpression())
!386 = distinct !DIGlobalVariable(scope: null, file: !2, line: 850, type: !123, isLocal: true, isDefinition: true)
!387 = !DIGlobalVariableExpression(var: !388, expr: !DIExpression())
!388 = distinct !DIGlobalVariable(scope: null, file: !2, line: 851, type: !137, isLocal: true, isDefinition: true)
!389 = !DIGlobalVariableExpression(var: !390, expr: !DIExpression())
!390 = distinct !DIGlobalVariable(scope: null, file: !2, line: 852, type: !55, isLocal: true, isDefinition: true)
!391 = !DIGlobalVariableExpression(var: !392, expr: !DIExpression())
!392 = distinct !DIGlobalVariable(scope: null, file: !2, line: 854, type: !102, isLocal: true, isDefinition: true)
!393 = !DIGlobalVariableExpression(var: !394, expr: !DIExpression())
!394 = distinct !DIGlobalVariable(scope: null, file: !2, line: 857, type: !395, isLocal: true, isDefinition: true)
!395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 440, elements: !396)
!396 = !{!397}
!397 = !DISubrange(count: 55)
!398 = !DIGlobalVariableExpression(var: !399, expr: !DIExpression())
!399 = distinct !DIGlobalVariable(scope: null, file: !2, line: 862, type: !400, isLocal: true, isDefinition: true)
!400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !401)
!401 = !{!402}
!402 = !DISubrange(count: 39)
!403 = !DIGlobalVariableExpression(var: !404, expr: !DIExpression())
!404 = distinct !DIGlobalVariable(scope: null, file: !2, line: 864, type: !24, isLocal: true, isDefinition: true)
!405 = !DIGlobalVariableExpression(var: !406, expr: !DIExpression())
!406 = distinct !DIGlobalVariable(scope: null, file: !2, line: 864, type: !407, isLocal: true, isDefinition: true)
!407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !408)
!408 = !{!409}
!409 = !DISubrange(count: 1)
!410 = !DIGlobalVariableExpression(var: !411, expr: !DIExpression())
!411 = distinct !DIGlobalVariable(scope: null, file: !2, line: 866, type: !123, isLocal: true, isDefinition: true)
!412 = !DIGlobalVariableExpression(var: !413, expr: !DIExpression())
!413 = distinct !DIGlobalVariable(scope: null, file: !2, line: 867, type: !24, isLocal: true, isDefinition: true)
!414 = !DIGlobalVariableExpression(var: !415, expr: !DIExpression())
!415 = distinct !DIGlobalVariable(scope: null, file: !2, line: 867, type: !14, isLocal: true, isDefinition: true)
!416 = !DIGlobalVariableExpression(var: !417, expr: !DIExpression())
!417 = distinct !DIGlobalVariable(scope: null, file: !2, line: 867, type: !14, isLocal: true, isDefinition: true)
!418 = !DIGlobalVariableExpression(var: !419, expr: !DIExpression())
!419 = distinct !DIGlobalVariable(scope: null, file: !2, line: 868, type: !14, isLocal: true, isDefinition: true)
!420 = !DIGlobalVariableExpression(var: !421, expr: !DIExpression())
!421 = distinct !DIGlobalVariable(scope: null, file: !2, line: 872, type: !55, isLocal: true, isDefinition: true)
!422 = !DIGlobalVariableExpression(var: !423, expr: !DIExpression())
!423 = distinct !DIGlobalVariable(scope: null, file: !2, line: 874, type: !424, isLocal: true, isDefinition: true)
!424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !425)
!425 = !{!426}
!426 = !DISubrange(count: 25)
!427 = !DIGlobalVariableExpression(var: !428, expr: !DIExpression())
!428 = distinct !DIGlobalVariable(scope: null, file: !2, line: 876, type: !429, isLocal: true, isDefinition: true)
!429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !430)
!430 = !{!431}
!431 = !DISubrange(count: 40)
!432 = !DIGlobalVariableExpression(var: !433, expr: !DIExpression())
!433 = distinct !DIGlobalVariable(scope: null, file: !2, line: 879, type: !434, isLocal: true, isDefinition: true)
!434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !435)
!435 = !{!436}
!436 = !DISubrange(count: 26)
!437 = !DIGlobalVariableExpression(var: !438, expr: !DIExpression())
!438 = distinct !DIGlobalVariable(scope: null, file: !2, line: 882, type: !439, isLocal: true, isDefinition: true)
!439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !440)
!440 = !{!441}
!441 = !DISubrange(count: 31)
!442 = !DIGlobalVariableExpression(var: !443, expr: !DIExpression())
!443 = distinct !DIGlobalVariable(scope: null, file: !2, line: 886, type: !123, isLocal: true, isDefinition: true)
!444 = !DIGlobalVariableExpression(var: !445, expr: !DIExpression())
!445 = distinct !DIGlobalVariable(scope: null, file: !2, line: 889, type: !3, isLocal: true, isDefinition: true)
!446 = !DIGlobalVariableExpression(var: !447, expr: !DIExpression())
!447 = distinct !DIGlobalVariable(scope: null, file: !2, line: 891, type: !3, isLocal: true, isDefinition: true)
!448 = !DIGlobalVariableExpression(var: !449, expr: !DIExpression())
!449 = distinct !DIGlobalVariable(scope: null, file: !2, line: 892, type: !123, isLocal: true, isDefinition: true)
!450 = !DIGlobalVariableExpression(var: !451, expr: !DIExpression())
!451 = distinct !DIGlobalVariable(scope: null, file: !2, line: 894, type: !24, isLocal: true, isDefinition: true)
!452 = !DIGlobalVariableExpression(var: !453, expr: !DIExpression())
!453 = distinct !DIGlobalVariable(scope: null, file: !2, line: 896, type: !55, isLocal: true, isDefinition: true)
!454 = !DIGlobalVariableExpression(var: !455, expr: !DIExpression())
!455 = distinct !DIGlobalVariable(scope: null, file: !2, line: 898, type: !123, isLocal: true, isDefinition: true)
!456 = !DIGlobalVariableExpression(var: !457, expr: !DIExpression())
!457 = distinct !DIGlobalVariable(scope: null, file: !2, line: 173, type: !33, isLocal: true, isDefinition: true)
!458 = !DIGlobalVariableExpression(var: !459, expr: !DIExpression())
!459 = distinct !DIGlobalVariable(scope: null, file: !2, line: 175, type: !14, isLocal: true, isDefinition: true)
!460 = !DIGlobalVariableExpression(var: !461, expr: !DIExpression())
!461 = distinct !DIGlobalVariable(scope: null, file: !2, line: 177, type: !33, isLocal: true, isDefinition: true)
!462 = !DIGlobalVariableExpression(var: !463, expr: !DIExpression())
!463 = distinct !DIGlobalVariable(scope: null, file: !464, line: 97, type: !24, isLocal: true, isDefinition: true)
!464 = !DIFile(filename: "./x264.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "9fe19a6136ab7ddd44a70d62bce62365")
!465 = !DIGlobalVariableExpression(var: !466, expr: !DIExpression())
!466 = distinct !DIGlobalVariable(scope: null, file: !464, line: 97, type: !9, isLocal: true, isDefinition: true)
!467 = !DIGlobalVariableExpression(var: !468, expr: !DIExpression())
!468 = distinct !DIGlobalVariable(scope: null, file: !464, line: 97, type: !9, isLocal: true, isDefinition: true)
!469 = !DIGlobalVariableExpression(var: !470, expr: !DIExpression())
!470 = distinct !DIGlobalVariable(scope: null, file: !464, line: 98, type: !55, isLocal: true, isDefinition: true)
!471 = !DIGlobalVariableExpression(var: !472, expr: !DIExpression())
!472 = distinct !DIGlobalVariable(scope: null, file: !464, line: 98, type: !14, isLocal: true, isDefinition: true)
!473 = !DIGlobalVariableExpression(var: !474, expr: !DIExpression())
!474 = distinct !DIGlobalVariable(scope: null, file: !464, line: 98, type: !9, isLocal: true, isDefinition: true)
!475 = !DIGlobalVariableExpression(var: !476, expr: !DIExpression())
!476 = distinct !DIGlobalVariable(scope: null, file: !464, line: 98, type: !24, isLocal: true, isDefinition: true)
!477 = !DIGlobalVariableExpression(var: !478, expr: !DIExpression())
!478 = distinct !DIGlobalVariable(scope: null, file: !464, line: 98, type: !14, isLocal: true, isDefinition: true)
!479 = !DIGlobalVariableExpression(var: !480, expr: !DIExpression())
!480 = distinct !DIGlobalVariable(name: "x264_vidformat_names", scope: !71, file: !464, line: 98, type: !481, isLocal: true, isDefinition: true)
!481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !482, size: 448, elements: !124)
!482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !483)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!485 = !DIGlobalVariableExpression(var: !486, expr: !DIExpression())
!486 = distinct !DIGlobalVariable(scope: null, file: !464, line: 99, type: !14, isLocal: true, isDefinition: true)
!487 = !DIGlobalVariableExpression(var: !488, expr: !DIExpression())
!488 = distinct !DIGlobalVariable(scope: null, file: !464, line: 99, type: !19, isLocal: true, isDefinition: true)
!489 = !DIGlobalVariableExpression(var: !490, expr: !DIExpression())
!490 = distinct !DIGlobalVariable(name: "x264_fullrange_names", scope: !71, file: !464, line: 99, type: !491, isLocal: true, isDefinition: true)
!491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !482, size: 192, elements: !20)
!492 = !DIGlobalVariableExpression(var: !493, expr: !DIExpression())
!493 = distinct !DIGlobalVariable(scope: null, file: !464, line: 100, type: !24, isLocal: true, isDefinition: true)
!494 = !DIGlobalVariableExpression(var: !495, expr: !DIExpression())
!495 = distinct !DIGlobalVariable(scope: null, file: !464, line: 100, type: !123, isLocal: true, isDefinition: true)
!496 = !DIGlobalVariableExpression(var: !497, expr: !DIExpression())
!497 = distinct !DIGlobalVariable(scope: null, file: !464, line: 100, type: !38, isLocal: true, isDefinition: true)
!498 = !DIGlobalVariableExpression(var: !499, expr: !DIExpression())
!499 = distinct !DIGlobalVariable(scope: null, file: !464, line: 100, type: !55, isLocal: true, isDefinition: true)
!500 = !DIGlobalVariableExpression(var: !501, expr: !DIExpression())
!501 = distinct !DIGlobalVariable(scope: null, file: !464, line: 100, type: !55, isLocal: true, isDefinition: true)
!502 = !DIGlobalVariableExpression(var: !503, expr: !DIExpression())
!503 = distinct !DIGlobalVariable(scope: null, file: !464, line: 100, type: !9, isLocal: true, isDefinition: true)
!504 = !DIGlobalVariableExpression(var: !505, expr: !DIExpression())
!505 = distinct !DIGlobalVariable(name: "x264_colorprim_names", scope: !71, file: !464, line: 100, type: !506, isLocal: true, isDefinition: true)
!506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !482, size: 640, elements: !56)
!507 = !DIGlobalVariableExpression(var: !508, expr: !DIExpression())
!508 = distinct !DIGlobalVariable(scope: null, file: !464, line: 101, type: !123, isLocal: true, isDefinition: true)
!509 = !DIGlobalVariableExpression(var: !510, expr: !DIExpression())
!510 = distinct !DIGlobalVariable(scope: null, file: !464, line: 101, type: !123, isLocal: true, isDefinition: true)
!511 = !DIGlobalVariableExpression(var: !512, expr: !DIExpression())
!512 = distinct !DIGlobalVariable(scope: null, file: !464, line: 101, type: !123, isLocal: true, isDefinition: true)
!513 = !DIGlobalVariableExpression(var: !514, expr: !DIExpression())
!514 = distinct !DIGlobalVariable(name: "x264_transfer_names", scope: !71, file: !464, line: 101, type: !515, isLocal: true, isDefinition: true)
!515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !482, size: 768, elements: !103)
!516 = !DIGlobalVariableExpression(var: !517, expr: !DIExpression())
!517 = distinct !DIGlobalVariable(scope: null, file: !464, line: 102, type: !14, isLocal: true, isDefinition: true)
!518 = !DIGlobalVariableExpression(var: !519, expr: !DIExpression())
!519 = distinct !DIGlobalVariable(scope: null, file: !464, line: 102, type: !14, isLocal: true, isDefinition: true)
!520 = !DIGlobalVariableExpression(var: !521, expr: !DIExpression())
!521 = distinct !DIGlobalVariable(scope: null, file: !464, line: 102, type: !24, isLocal: true, isDefinition: true)
!522 = !DIGlobalVariableExpression(var: !523, expr: !DIExpression())
!523 = distinct !DIGlobalVariable(name: "x264_colmatrix_names", scope: !71, file: !464, line: 102, type: !506, isLocal: true, isDefinition: true)
!524 = !DIGlobalVariableExpression(var: !525, expr: !DIExpression())
!525 = distinct !DIGlobalVariable(scope: null, file: !464, line: 95, type: !38, isLocal: true, isDefinition: true)
!526 = !DIGlobalVariableExpression(var: !527, expr: !DIExpression())
!527 = distinct !DIGlobalVariable(scope: null, file: !464, line: 95, type: !66, isLocal: true, isDefinition: true)
!528 = !DIGlobalVariableExpression(var: !529, expr: !DIExpression())
!529 = distinct !DIGlobalVariable(name: "x264_direct_pred_names", scope: !71, file: !464, line: 95, type: !530, isLocal: true, isDefinition: true)
!530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !482, size: 320, elements: !10)
!531 = !DIGlobalVariableExpression(var: !532, expr: !DIExpression())
!532 = distinct !DIGlobalVariable(scope: null, file: !464, line: 96, type: !14, isLocal: true, isDefinition: true)
!533 = !DIGlobalVariableExpression(var: !534, expr: !DIExpression())
!534 = distinct !DIGlobalVariable(scope: null, file: !464, line: 96, type: !14, isLocal: true, isDefinition: true)
!535 = !DIGlobalVariableExpression(var: !536, expr: !DIExpression())
!536 = distinct !DIGlobalVariable(scope: null, file: !464, line: 96, type: !14, isLocal: true, isDefinition: true)
!537 = !DIGlobalVariableExpression(var: !538, expr: !DIExpression())
!538 = distinct !DIGlobalVariable(scope: null, file: !464, line: 96, type: !14, isLocal: true, isDefinition: true)
!539 = !DIGlobalVariableExpression(var: !540, expr: !DIExpression())
!540 = distinct !DIGlobalVariable(scope: null, file: !464, line: 96, type: !9, isLocal: true, isDefinition: true)
!541 = !DIGlobalVariableExpression(var: !542, expr: !DIExpression())
!542 = distinct !DIGlobalVariable(name: "x264_motion_est_names", scope: !71, file: !464, line: 96, type: !543, isLocal: true, isDefinition: true)
!543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !482, size: 384, elements: !25)
!544 = !DIGlobalVariableExpression(var: !545, expr: !DIExpression())
!545 = distinct !DIGlobalVariable(scope: null, file: !2, line: 609, type: !24, isLocal: true, isDefinition: true)
!546 = !DIGlobalVariableExpression(var: !547, expr: !DIExpression())
!547 = distinct !DIGlobalVariable(scope: null, file: !2, line: 612, type: !38, isLocal: true, isDefinition: true)
!548 = !DIGlobalVariableExpression(var: !549, expr: !DIExpression())
!549 = distinct !DIGlobalVariable(scope: null, file: !2, line: 615, type: !9, isLocal: true, isDefinition: true)
!550 = !DIGlobalVariableExpression(var: !551, expr: !DIExpression())
!551 = distinct !DIGlobalVariable(scope: null, file: !2, line: 618, type: !24, isLocal: true, isDefinition: true)
!552 = !DIGlobalVariableExpression(var: !553, expr: !DIExpression())
!553 = distinct !DIGlobalVariable(scope: null, file: !2, line: 621, type: !38, isLocal: true, isDefinition: true)
!554 = !DIGlobalVariableExpression(var: !555, expr: !DIExpression())
!555 = distinct !DIGlobalVariable(scope: null, file: !2, line: 624, type: !102, isLocal: true, isDefinition: true)
!556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !482, size: 256, elements: !15)
!557 = !{i32 7, !"Dwarf Version", i32 5}
!558 = !{i32 2, !"Debug Info Version", i32 3}
!559 = !{i32 1, !"wchar_size", i32 4}
!560 = !{i32 8, !"PIC Level", i32 2}
!561 = !{i32 7, !"PIE Level", i32 2}
!562 = !{i32 7, !"uwtable", i32 2}
!563 = !{!"clang version 16.0.0"}
!564 = distinct !DISubprogram(name: "x264_param_default", scope: !2, file: !2, line: 39, type: !565, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !71, retainedNodes: !707)
!565 = !DISubroutineType(types: !566)
!566 = !{null, !567}
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_param_t", file: !464, line: 295, baseType: !569)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_param_t", file: !464, line: 151, size: 4928, elements: !570)
!570 = !{!571, !572, !573, !574, !575, !576, !577, !578, !579, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !611, !613, !614, !615, !616, !620, !621, !633, !634, !635, !636, !637, !665, !704, !705, !706}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !569, file: !464, line: 154, baseType: !75, size: 32)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "i_threads", scope: !569, file: !464, line: 155, baseType: !91, size: 32, offset: 32)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "b_deterministic", scope: !569, file: !464, line: 156, baseType: !91, size: 32, offset: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !569, file: !464, line: 159, baseType: !91, size: 32, offset: 96)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "i_height", scope: !569, file: !464, line: 160, baseType: !91, size: 32, offset: 128)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "i_csp", scope: !569, file: !464, line: 161, baseType: !91, size: 32, offset: 160)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !569, file: !464, line: 162, baseType: !91, size: 32, offset: 192)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_total", scope: !569, file: !464, line: 163, baseType: !91, size: 32, offset: 224)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !569, file: !464, line: 180, baseType: !580, size: 288, offset: 256)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !569, file: !464, line: 165, size: 288, elements: !581)
!581 = !{!582, !583, !584, !585, !586, !587, !588, !589, !590}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !580, file: !464, line: 168, baseType: !91, size: 32)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !580, file: !464, line: 169, baseType: !91, size: 32, offset: 32)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "i_overscan", scope: !580, file: !464, line: 171, baseType: !91, size: 32, offset: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !580, file: !464, line: 174, baseType: !91, size: 32, offset: 96)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !580, file: !464, line: 175, baseType: !91, size: 32, offset: 128)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !580, file: !464, line: 176, baseType: !91, size: 32, offset: 160)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !580, file: !464, line: 177, baseType: !91, size: 32, offset: 192)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !580, file: !464, line: 178, baseType: !91, size: 32, offset: 224)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc", scope: !580, file: !464, line: 179, baseType: !91, size: 32, offset: 256)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_num", scope: !569, file: !464, line: 182, baseType: !91, size: 32, offset: 544)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_den", scope: !569, file: !464, line: 183, baseType: !91, size: 32, offset: 576)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_reference", scope: !569, file: !464, line: 186, baseType: !91, size: 32, offset: 608)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_max", scope: !569, file: !464, line: 187, baseType: !91, size: 32, offset: 640)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_min", scope: !569, file: !464, line: 188, baseType: !91, size: 32, offset: 672)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "i_scenecut_threshold", scope: !569, file: !464, line: 189, baseType: !91, size: 32, offset: 704)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "b_pre_scenecut", scope: !569, file: !464, line: 190, baseType: !91, size: 32, offset: 736)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe", scope: !569, file: !464, line: 191, baseType: !91, size: 32, offset: 768)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_adaptive", scope: !569, file: !464, line: 192, baseType: !91, size: 32, offset: 800)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_bias", scope: !569, file: !464, line: 193, baseType: !91, size: 32, offset: 832)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "b_bframe_pyramid", scope: !569, file: !464, line: 194, baseType: !91, size: 32, offset: 864)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter", scope: !569, file: !464, line: 196, baseType: !91, size: 32, offset: 896)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_alphac0", scope: !569, file: !464, line: 197, baseType: !91, size: 32, offset: 928)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_beta", scope: !569, file: !464, line: 198, baseType: !91, size: 32, offset: 960)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !569, file: !464, line: 200, baseType: !91, size: 32, offset: 992)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !569, file: !464, line: 201, baseType: !91, size: 32, offset: 1024)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !569, file: !464, line: 203, baseType: !91, size: 32, offset: 1056)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !569, file: !464, line: 205, baseType: !91, size: 32, offset: 1088)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "psz_cqm_file", scope: !569, file: !464, line: 206, baseType: !610, size: 64, offset: 1152)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4iy", scope: !569, file: !464, line: 207, baseType: !612, size: 128, offset: 1216)
!612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 128, elements: !49)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4ic", scope: !569, file: !464, line: 208, baseType: !612, size: 128, offset: 1344)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4py", scope: !569, file: !464, line: 209, baseType: !612, size: 128, offset: 1472)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4pc", scope: !569, file: !464, line: 210, baseType: !612, size: 128, offset: 1600)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8iy", scope: !569, file: !464, line: 211, baseType: !617, size: 512, offset: 1728)
!617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 512, elements: !618)
!618 = !{!619}
!619 = !DISubrange(count: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8py", scope: !569, file: !464, line: 212, baseType: !617, size: 512, offset: 2240)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "pf_log", scope: !569, file: !464, line: 215, baseType: !622, size: 64, offset: 2752)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DISubroutineType(types: !624)
!624 = !{null, !90, !91, !483, !625}
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !627)
!627 = !{!628, !630, !631, !632}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !626, file: !629, baseType: !75, size: 32)
!629 = !DIFile(filename: "common/common.c", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src")
!630 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !626, file: !629, baseType: !75, size: 32, offset: 32)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !626, file: !629, baseType: !90, size: 64, offset: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !626, file: !629, baseType: !90, size: 64, offset: 128)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "p_log_private", scope: !569, file: !464, line: 216, baseType: !90, size: 64, offset: 2816)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "i_log_level", scope: !569, file: !464, line: 217, baseType: !91, size: 32, offset: 2880)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "b_visualize", scope: !569, file: !464, line: 218, baseType: !91, size: 32, offset: 2912)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "psz_dump_yuv", scope: !569, file: !464, line: 219, baseType: !610, size: 64, offset: 2944)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "analyse", scope: !569, file: !464, line: 252, baseType: !638, size: 768, offset: 3008)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !569, file: !464, line: 222, size: 768, elements: !639)
!639 = !{!640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !660, !661, !663, !664}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "intra", scope: !638, file: !464, line: 224, baseType: !75, size: 32)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "inter", scope: !638, file: !464, line: 225, baseType: !75, size: 32, offset: 32)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !638, file: !464, line: 227, baseType: !91, size: 32, offset: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !638, file: !464, line: 228, baseType: !91, size: 32, offset: 96)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_mv_pred", scope: !638, file: !464, line: 229, baseType: !91, size: 32, offset: 128)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_8x8_inference", scope: !638, file: !464, line: 230, baseType: !91, size: 32, offset: 160)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_offset", scope: !638, file: !464, line: 231, baseType: !91, size: 32, offset: 192)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !638, file: !464, line: 233, baseType: !91, size: 32, offset: 224)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_range", scope: !638, file: !464, line: 234, baseType: !91, size: 32, offset: 256)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range", scope: !638, file: !464, line: 235, baseType: !91, size: 32, offset: 288)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range_thread", scope: !638, file: !464, line: 236, baseType: !91, size: 32, offset: 320)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !638, file: !464, line: 237, baseType: !91, size: 32, offset: 352)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !638, file: !464, line: 238, baseType: !91, size: 32, offset: 384)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "b_mixed_references", scope: !638, file: !464, line: 239, baseType: !91, size: 32, offset: 416)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "i_trellis", scope: !638, file: !464, line: 240, baseType: !91, size: 32, offset: 448)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "b_fast_pskip", scope: !638, file: !464, line: 241, baseType: !91, size: 32, offset: 480)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "b_dct_decimate", scope: !638, file: !464, line: 242, baseType: !91, size: 32, offset: 512)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "i_noise_reduction", scope: !638, file: !464, line: 243, baseType: !91, size: 32, offset: 544)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_rd", scope: !638, file: !464, line: 244, baseType: !659, size: 32, offset: 576)
!659 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_trellis", scope: !638, file: !464, line: 245, baseType: !659, size: 32, offset: 608)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "i_luma_deadzone", scope: !638, file: !464, line: 248, baseType: !662, size: 64, offset: 640)
!662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 64, elements: !34)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "b_psnr", scope: !638, file: !464, line: 250, baseType: !91, size: 32, offset: 704)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "b_ssim", scope: !638, file: !464, line: 251, baseType: !91, size: 32, offset: 736)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !569, file: !464, line: 289, baseType: !666, size: 1024, offset: 3776)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !569, file: !464, line: 255, size: 1024, elements: !667)
!667 = !{!668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !702, !703}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "i_rc_method", scope: !666, file: !464, line: 257, baseType: !91, size: 32)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_constant", scope: !666, file: !464, line: 259, baseType: !91, size: 32, offset: 32)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_min", scope: !666, file: !464, line: 260, baseType: !91, size: 32, offset: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_max", scope: !666, file: !464, line: 261, baseType: !91, size: 32, offset: 96)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_step", scope: !666, file: !464, line: 262, baseType: !91, size: 32, offset: 128)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitrate", scope: !666, file: !464, line: 264, baseType: !91, size: 32, offset: 160)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant", scope: !666, file: !464, line: 265, baseType: !659, size: 32, offset: 192)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "f_rate_tolerance", scope: !666, file: !464, line: 266, baseType: !659, size: 32, offset: 224)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_max_bitrate", scope: !666, file: !464, line: 267, baseType: !91, size: 32, offset: 256)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_buffer_size", scope: !666, file: !464, line: 268, baseType: !91, size: 32, offset: 288)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "f_vbv_buffer_init", scope: !666, file: !464, line: 269, baseType: !659, size: 32, offset: 320)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "f_ip_factor", scope: !666, file: !464, line: 270, baseType: !659, size: 32, offset: 352)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "f_pb_factor", scope: !666, file: !464, line: 271, baseType: !659, size: 32, offset: 384)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "i_aq_mode", scope: !666, file: !464, line: 273, baseType: !91, size: 32, offset: 416)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "f_aq_strength", scope: !666, file: !464, line: 274, baseType: !659, size: 32, offset: 448)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_write", scope: !666, file: !464, line: 277, baseType: !91, size: 32, offset: 480)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_out", scope: !666, file: !464, line: 278, baseType: !610, size: 64, offset: 512)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_read", scope: !666, file: !464, line: 279, baseType: !91, size: 32, offset: 576)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_in", scope: !666, file: !464, line: 280, baseType: !610, size: 64, offset: 640)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "f_qcompress", scope: !666, file: !464, line: 283, baseType: !659, size: 32, offset: 704)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "f_qblur", scope: !666, file: !464, line: 284, baseType: !659, size: 32, offset: 736)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "f_complexity_blur", scope: !666, file: !464, line: 285, baseType: !659, size: 32, offset: 768)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "zones", scope: !666, file: !464, line: 286, baseType: !691, size: 64, offset: 832)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zone_t", file: !464, line: 149, baseType: !693)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !464, line: 142, size: 256, elements: !694)
!694 = !{!695, !696, !697, !698, !699, !700}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "i_start", scope: !693, file: !464, line: 144, baseType: !91, size: 32)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "i_end", scope: !693, file: !464, line: 144, baseType: !91, size: 32, offset: 32)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "b_force_qp", scope: !693, file: !464, line: 145, baseType: !91, size: 32, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !693, file: !464, line: 146, baseType: !91, size: 32, offset: 96)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "f_bitrate_factor", scope: !693, file: !464, line: 147, baseType: !659, size: 32, offset: 128)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !693, file: !464, line: 148, baseType: !701, size: 64, offset: 192)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "i_zones", scope: !666, file: !464, line: 287, baseType: !91, size: 32, offset: 896)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "psz_zones", scope: !666, file: !464, line: 288, baseType: !610, size: 64, offset: 960)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "b_aud", scope: !569, file: !464, line: 292, baseType: !91, size: 32, offset: 4800)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "b_repeat_headers", scope: !569, file: !464, line: 293, baseType: !91, size: 32, offset: 4832)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !569, file: !464, line: 294, baseType: !91, size: 32, offset: 4864)
!707 = !{!708}
!708 = !DILocalVariable(name: "param", arg: 1, scope: !564, file: !2, line: 39, type: !567)
!709 = !DILocation(line: 0, scope: !564)
!710 = !DILocation(line: 42, column: 5, scope: !564)
!711 = !DILocation(line: 45, column: 18, scope: !564)
!712 = !DILocation(line: 45, column: 16, scope: !564)
!713 = !{!714, !715, i64 0}
!714 = !{!"x264_param_t", !715, i64 0, !715, i64 4, !715, i64 8, !715, i64 12, !715, i64 16, !715, i64 20, !715, i64 24, !715, i64 28, !718, i64 32, !715, i64 68, !715, i64 72, !715, i64 76, !715, i64 80, !715, i64 84, !715, i64 88, !715, i64 92, !715, i64 96, !715, i64 100, !715, i64 104, !715, i64 108, !715, i64 112, !715, i64 116, !715, i64 120, !715, i64 124, !715, i64 128, !715, i64 132, !715, i64 136, !719, i64 144, !716, i64 152, !716, i64 168, !716, i64 184, !716, i64 200, !716, i64 216, !716, i64 280, !719, i64 344, !719, i64 352, !715, i64 360, !715, i64 364, !719, i64 368, !720, i64 376, !722, i64 472, !715, i64 600, !715, i64 604, !715, i64 608}
!715 = !{!"int", !716, i64 0}
!716 = !{!"omnipotent char", !717, i64 0}
!717 = !{!"Simple C/C++ TBAA"}
!718 = !{!"", !715, i64 0, !715, i64 4, !715, i64 8, !715, i64 12, !715, i64 16, !715, i64 20, !715, i64 24, !715, i64 28, !715, i64 32}
!719 = !{!"any pointer", !716, i64 0}
!720 = !{!"", !715, i64 0, !715, i64 4, !715, i64 8, !715, i64 12, !715, i64 16, !715, i64 20, !715, i64 24, !715, i64 28, !715, i64 32, !715, i64 36, !715, i64 40, !715, i64 44, !715, i64 48, !715, i64 52, !715, i64 56, !715, i64 60, !715, i64 64, !715, i64 68, !721, i64 72, !721, i64 76, !716, i64 80, !715, i64 88, !715, i64 92}
!721 = !{!"float", !716, i64 0}
!722 = !{!"", !715, i64 0, !715, i64 4, !715, i64 8, !715, i64 12, !715, i64 16, !715, i64 20, !721, i64 24, !721, i64 28, !715, i64 32, !715, i64 36, !721, i64 40, !721, i64 44, !721, i64 48, !715, i64 52, !721, i64 56, !715, i64 60, !719, i64 64, !715, i64 72, !719, i64 80, !721, i64 88, !721, i64 92, !721, i64 96, !719, i64 104, !715, i64 112, !719, i64 120}
!723 = !DILocation(line: 46, column: 12, scope: !564)
!724 = !DILocation(line: 50, column: 12, scope: !564)
!725 = !DILocation(line: 50, column: 28, scope: !564)
!726 = !{!714, !715, i64 20}
!727 = !DILocation(line: 46, column: 22, scope: !564)
!728 = !{!715, !715, i64 0}
!729 = !DILocation(line: 53, column: 12, scope: !564)
!730 = !DILocation(line: 54, column: 28, scope: !564)
!731 = !DILocation(line: 57, column: 16, scope: !564)
!732 = !DILocation(line: 57, column: 28, scope: !564)
!733 = !DILocation(line: 61, column: 16, scope: !564)
!734 = !DILocation(line: 64, column: 12, scope: !564)
!735 = !DILocation(line: 64, column: 28, scope: !564)
!736 = !{!714, !715, i64 24}
!737 = !DILocation(line: 61, column: 28, scope: !564)
!738 = !DILocation(line: 68, column: 12, scope: !564)
!739 = !DILocation(line: 68, column: 25, scope: !564)
!740 = !{!714, !715, i64 80}
!741 = !DILocation(line: 69, column: 12, scope: !564)
!742 = !DILocation(line: 69, column: 25, scope: !564)
!743 = !{!714, !715, i64 84}
!744 = !DILocation(line: 70, column: 12, scope: !564)
!745 = !DILocation(line: 71, column: 12, scope: !564)
!746 = !DILocation(line: 71, column: 33, scope: !564)
!747 = !{!714, !715, i64 88}
!748 = !DILocation(line: 70, column: 21, scope: !564)
!749 = !DILocation(line: 76, column: 12, scope: !564)
!750 = !DILocation(line: 76, column: 32, scope: !564)
!751 = !DILocation(line: 81, column: 12, scope: !564)
!752 = !DILocation(line: 81, column: 29, scope: !564)
!753 = !{!714, !715, i64 128}
!754 = !DILocation(line: 83, column: 12, scope: !564)
!755 = !DILocation(line: 84, column: 15, scope: !564)
!756 = !DILocation(line: 84, column: 25, scope: !564)
!757 = !{!714, !715, i64 492}
!758 = !DILocation(line: 86, column: 15, scope: !564)
!759 = !DILocation(line: 86, column: 33, scope: !564)
!760 = !{!714, !715, i64 504}
!761 = !DILocation(line: 87, column: 15, scope: !564)
!762 = !DILocation(line: 87, column: 33, scope: !564)
!763 = !{!714, !715, i64 508}
!764 = !DILocation(line: 88, column: 15, scope: !564)
!765 = !DILocation(line: 90, column: 15, scope: !564)
!766 = !DILocation(line: 90, column: 29, scope: !564)
!767 = !{!721, !721, i64 0}
!768 = !DILocation(line: 83, column: 27, scope: !564)
!769 = !DILocation(line: 93, column: 15, scope: !564)
!770 = !DILocation(line: 93, column: 25, scope: !564)
!771 = !{!714, !715, i64 488}
!772 = !DILocation(line: 88, column: 33, scope: !564)
!773 = !DILocation(line: 95, column: 15, scope: !564)
!774 = !DILocation(line: 95, column: 27, scope: !564)
!775 = !{!714, !721, i64 520}
!776 = !DILocation(line: 96, column: 15, scope: !564)
!777 = !DILocation(line: 96, column: 25, scope: !564)
!778 = !{!714, !715, i64 524}
!779 = !DILocation(line: 97, column: 15, scope: !564)
!780 = !DILocation(line: 97, column: 29, scope: !564)
!781 = !{!714, !721, i64 528}
!782 = !DILocation(line: 99, column: 15, scope: !564)
!783 = !DILocation(line: 99, column: 28, scope: !564)
!784 = !{!714, !715, i64 532}
!785 = !DILocation(line: 100, column: 15, scope: !564)
!786 = !DILocation(line: 100, column: 28, scope: !564)
!787 = !{!714, !719, i64 536}
!788 = !DILocation(line: 101, column: 15, scope: !564)
!789 = !DILocation(line: 101, column: 27, scope: !564)
!790 = !{!714, !715, i64 544}
!791 = !DILocation(line: 102, column: 15, scope: !564)
!792 = !DILocation(line: 102, column: 27, scope: !564)
!793 = !{!714, !719, i64 552}
!794 = !DILocation(line: 103, column: 15, scope: !564)
!795 = !DILocation(line: 103, column: 27, scope: !564)
!796 = !DILocation(line: 105, column: 15, scope: !564)
!797 = !DILocation(line: 105, column: 33, scope: !564)
!798 = !{!714, !721, i64 568}
!799 = !DILocation(line: 106, column: 15, scope: !564)
!800 = !DILocation(line: 106, column: 23, scope: !564)
!801 = !{!714, !715, i64 584}
!802 = !DILocation(line: 109, column: 12, scope: !564)
!803 = !DILocation(line: 109, column: 19, scope: !564)
!804 = !{!714, !719, i64 344}
!805 = !DILocation(line: 110, column: 12, scope: !564)
!806 = !DILocation(line: 110, column: 26, scope: !564)
!807 = !{!714, !719, i64 352}
!808 = !DILocation(line: 111, column: 12, scope: !564)
!809 = !DILocation(line: 111, column: 24, scope: !564)
!810 = !{!714, !715, i64 360}
!811 = !DILocation(line: 114, column: 12, scope: !564)
!812 = !DILocation(line: 114, column: 26, scope: !564)
!813 = !{!714, !715, i64 376}
!814 = !DILocation(line: 115, column: 20, scope: !564)
!815 = !DILocation(line: 115, column: 26, scope: !564)
!816 = !{!714, !715, i64 380}
!817 = !DILocation(line: 117, column: 20, scope: !564)
!818 = !DILocation(line: 119, column: 20, scope: !564)
!819 = !DILocation(line: 119, column: 29, scope: !564)
!820 = !DILocation(line: 121, column: 20, scope: !564)
!821 = !DILocation(line: 123, column: 20, scope: !564)
!822 = !DILocation(line: 123, column: 32, scope: !564)
!823 = !{!714, !715, i64 424}
!824 = !DILocation(line: 121, column: 31, scope: !564)
!825 = !DILocation(line: 117, column: 37, scope: !564)
!826 = !DILocation(line: 128, column: 20, scope: !564)
!827 = !DILocation(line: 128, column: 33, scope: !564)
!828 = !{!714, !715, i64 436}
!829 = !DILocation(line: 129, column: 20, scope: !564)
!830 = !DILocation(line: 129, column: 35, scope: !564)
!831 = !{!714, !715, i64 440}
!832 = !DILocation(line: 130, column: 20, scope: !564)
!833 = !DILocation(line: 130, column: 39, scope: !564)
!834 = !DILocation(line: 135, column: 12, scope: !564)
!835 = !DILocation(line: 135, column: 25, scope: !564)
!836 = !{!714, !715, i64 136}
!837 = !DILocation(line: 136, column: 20, scope: !564)
!838 = !DILocation(line: 143, column: 12, scope: !564)
!839 = !DILocation(line: 137, column: 5, scope: !564)
!840 = !DILocation(line: 143, column: 29, scope: !564)
!841 = !{!714, !715, i64 604}
!842 = !DILocation(line: 144, column: 12, scope: !564)
!843 = !DILocation(line: 144, column: 18, scope: !564)
!844 = !{!714, !715, i64 600}
!845 = !DILocation(line: 145, column: 1, scope: !564)
!846 = !DISubprogram(name: "x264_cpu_detect", scope: !847, file: !847, line: 24, type: !848, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !852)
!847 = !DIFile(filename: "common/cpu.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "5639400f1915d22bd0aadf074bb04719")
!848 = !DISubroutineType(types: !849)
!849 = !{!850}
!850 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !95, line: 26, baseType: !851)
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !97, line: 42, baseType: !75)
!852 = !{}
!853 = distinct !DISubprogram(name: "x264_log_default", scope: !2, file: !2, line: 603, type: !623, scopeLine: 604, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !71, retainedNodes: !854)
!854 = !{!855, !856, !857, !858, !859}
!855 = !DILocalVariable(name: "p_unused", arg: 1, scope: !853, file: !2, line: 603, type: !90)
!856 = !DILocalVariable(name: "i_level", arg: 2, scope: !853, file: !2, line: 603, type: !91)
!857 = !DILocalVariable(name: "psz_fmt", arg: 3, scope: !853, file: !2, line: 603, type: !483)
!858 = !DILocalVariable(name: "arg", arg: 4, scope: !853, file: !2, line: 603, type: !625)
!859 = !DILocalVariable(name: "psz_prefix", scope: !853, file: !2, line: 605, type: !610)
!860 = !DILocation(line: 0, scope: !853)
!861 = !DILocation(line: 606, column: 5, scope: !853)
!862 = !DILocation(line: 0, scope: !863)
!863 = distinct !DILexicalBlock(scope: !853, file: !2, line: 607, column: 5)
!864 = !DILocation(line: 624, column: 14, scope: !853)
!865 = !{!719, !719, i64 0}
!866 = !DILocation(line: 624, column: 5, scope: !853)
!867 = !DILocation(line: 625, column: 15, scope: !853)
!868 = !DILocation(line: 625, column: 5, scope: !853)
!869 = !DILocation(line: 626, column: 1, scope: !853)
!870 = distinct !DISubprogram(name: "x264_param_parse", scope: !2, file: !2, line: 207, type: !871, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !71, retainedNodes: !873)
!871 = !DISubroutineType(types: !872)
!872 = !{!91, !567, !483, !483}
!873 = !{!874, !875, !876, !877, !878, !879, !880, !881, !882, !885, !891, !892, !893, !894, !910}
!874 = !DILocalVariable(name: "p", arg: 1, scope: !870, file: !2, line: 207, type: !567)
!875 = !DILocalVariable(name: "name", arg: 2, scope: !870, file: !2, line: 207, type: !483)
!876 = !DILocalVariable(name: "value", arg: 3, scope: !870, file: !2, line: 207, type: !483)
!877 = !DILocalVariable(name: "name_buf", scope: !870, file: !2, line: 209, type: !610)
!878 = !DILocalVariable(name: "b_error", scope: !870, file: !2, line: 210, type: !91)
!879 = !DILocalVariable(name: "name_was_bool", scope: !870, file: !2, line: 211, type: !91)
!880 = !DILocalVariable(name: "value_was_null", scope: !870, file: !2, line: 212, type: !91)
!881 = !DILocalVariable(name: "i", scope: !870, file: !2, line: 213, type: !91)
!882 = !DILocalVariable(name: "p", scope: !883, file: !2, line: 225, type: !610)
!883 = distinct !DILexicalBlock(scope: !884, file: !2, line: 224, column: 5)
!884 = distinct !DILexicalBlock(scope: !870, file: !2, line: 223, column: 9)
!885 = !DILocalVariable(name: "buf", scope: !886, file: !2, line: 249, type: !610)
!886 = distinct !DILexicalBlock(scope: !887, file: !2, line: 248, column: 9)
!887 = distinct !DILexicalBlock(scope: !888, file: !2, line: 247, column: 13)
!888 = distinct !DILexicalBlock(scope: !889, file: !2, line: 244, column: 5)
!889 = distinct !DILexicalBlock(scope: !890, file: !2, line: 243, column: 5)
!890 = distinct !DILexicalBlock(scope: !870, file: !2, line: 242, column: 8)
!891 = !DILocalVariable(name: "tok", scope: !886, file: !2, line: 250, type: !610)
!892 = !DILocalVariable(name: "saveptr", scope: !886, file: !2, line: 250, type: !610)
!893 = !DILocalVariable(name: "init", scope: !886, file: !2, line: 250, type: !610)
!894 = !DILocalVariable(name: "fps", scope: !895, file: !2, line: 307, type: !659)
!895 = distinct !DILexicalBlock(scope: !896, file: !2, line: 306, column: 9)
!896 = distinct !DILexicalBlock(scope: !897, file: !2, line: 303, column: 13)
!897 = distinct !DILexicalBlock(scope: !898, file: !2, line: 302, column: 5)
!898 = distinct !DILexicalBlock(scope: !899, file: !2, line: 301, column: 5)
!899 = distinct !DILexicalBlock(scope: !900, file: !2, line: 296, column: 5)
!900 = distinct !DILexicalBlock(scope: !901, file: !2, line: 294, column: 5)
!901 = distinct !DILexicalBlock(scope: !902, file: !2, line: 292, column: 5)
!902 = distinct !DILexicalBlock(scope: !903, file: !2, line: 290, column: 5)
!903 = distinct !DILexicalBlock(scope: !904, file: !2, line: 288, column: 5)
!904 = distinct !DILexicalBlock(scope: !905, file: !2, line: 286, column: 5)
!905 = distinct !DILexicalBlock(scope: !906, file: !2, line: 284, column: 5)
!906 = distinct !DILexicalBlock(scope: !907, file: !2, line: 279, column: 5)
!907 = distinct !DILexicalBlock(scope: !908, file: !2, line: 272, column: 5)
!908 = distinct !DILexicalBlock(scope: !909, file: !2, line: 270, column: 5)
!909 = distinct !DILexicalBlock(scope: !889, file: !2, line: 263, column: 5)
!910 = !DILocalVariable(name: "i", scope: !911, file: !2, line: 545, type: !91)
!911 = distinct !DILexicalBlock(scope: !912, file: !2, line: 544, column: 5)
!912 = distinct !DILexicalBlock(scope: !913, file: !2, line: 543, column: 5)
!913 = distinct !DILexicalBlock(scope: !914, file: !2, line: 541, column: 5)
!914 = distinct !DILexicalBlock(scope: !915, file: !2, line: 539, column: 5)
!915 = distinct !DILexicalBlock(scope: !916, file: !2, line: 537, column: 5)
!916 = distinct !DILexicalBlock(scope: !917, file: !2, line: 535, column: 5)
!917 = distinct !DILexicalBlock(scope: !918, file: !2, line: 533, column: 5)
!918 = distinct !DILexicalBlock(scope: !919, file: !2, line: 531, column: 5)
!919 = distinct !DILexicalBlock(scope: !920, file: !2, line: 529, column: 5)
!920 = distinct !DILexicalBlock(scope: !921, file: !2, line: 527, column: 5)
!921 = distinct !DILexicalBlock(scope: !922, file: !2, line: 525, column: 5)
!922 = distinct !DILexicalBlock(scope: !923, file: !2, line: 523, column: 5)
!923 = distinct !DILexicalBlock(scope: !924, file: !2, line: 521, column: 5)
!924 = distinct !DILexicalBlock(scope: !925, file: !2, line: 516, column: 5)
!925 = distinct !DILexicalBlock(scope: !926, file: !2, line: 511, column: 5)
!926 = distinct !DILexicalBlock(scope: !927, file: !2, line: 506, column: 5)
!927 = distinct !DILexicalBlock(scope: !928, file: !2, line: 504, column: 5)
!928 = distinct !DILexicalBlock(scope: !929, file: !2, line: 502, column: 5)
!929 = distinct !DILexicalBlock(scope: !930, file: !2, line: 500, column: 5)
!930 = distinct !DILexicalBlock(scope: !931, file: !2, line: 498, column: 5)
!931 = distinct !DILexicalBlock(scope: !932, file: !2, line: 496, column: 5)
!932 = distinct !DILexicalBlock(scope: !933, file: !2, line: 494, column: 5)
!933 = distinct !DILexicalBlock(scope: !934, file: !2, line: 492, column: 5)
!934 = distinct !DILexicalBlock(scope: !935, file: !2, line: 490, column: 5)
!935 = distinct !DILexicalBlock(scope: !936, file: !2, line: 475, column: 5)
!936 = distinct !DILexicalBlock(scope: !937, file: !2, line: 473, column: 5)
!937 = distinct !DILexicalBlock(scope: !938, file: !2, line: 471, column: 5)
!938 = distinct !DILexicalBlock(scope: !939, file: !2, line: 469, column: 5)
!939 = distinct !DILexicalBlock(scope: !940, file: !2, line: 467, column: 5)
!940 = distinct !DILexicalBlock(scope: !941, file: !2, line: 465, column: 5)
!941 = distinct !DILexicalBlock(scope: !942, file: !2, line: 463, column: 5)
!942 = distinct !DILexicalBlock(scope: !943, file: !2, line: 461, column: 5)
!943 = distinct !DILexicalBlock(scope: !944, file: !2, line: 459, column: 5)
!944 = distinct !DILexicalBlock(scope: !945, file: !2, line: 457, column: 5)
!945 = distinct !DILexicalBlock(scope: !946, file: !2, line: 455, column: 5)
!946 = distinct !DILexicalBlock(scope: !947, file: !2, line: 443, column: 5)
!947 = distinct !DILexicalBlock(scope: !948, file: !2, line: 441, column: 5)
!948 = distinct !DILexicalBlock(scope: !949, file: !2, line: 435, column: 5)
!949 = distinct !DILexicalBlock(scope: !950, file: !2, line: 430, column: 5)
!950 = distinct !DILexicalBlock(scope: !951, file: !2, line: 425, column: 5)
!951 = distinct !DILexicalBlock(scope: !952, file: !2, line: 420, column: 5)
!952 = distinct !DILexicalBlock(scope: !953, file: !2, line: 415, column: 5)
!953 = distinct !DILexicalBlock(scope: !954, file: !2, line: 410, column: 5)
!954 = distinct !DILexicalBlock(scope: !955, file: !2, line: 405, column: 5)
!955 = distinct !DILexicalBlock(scope: !956, file: !2, line: 399, column: 5)
!956 = distinct !DILexicalBlock(scope: !957, file: !2, line: 393, column: 5)
!957 = distinct !DILexicalBlock(scope: !958, file: !2, line: 387, column: 5)
!958 = distinct !DILexicalBlock(scope: !959, file: !2, line: 379, column: 5)
!959 = distinct !DILexicalBlock(scope: !960, file: !2, line: 377, column: 5)
!960 = distinct !DILexicalBlock(scope: !961, file: !2, line: 368, column: 5)
!961 = distinct !DILexicalBlock(scope: !962, file: !2, line: 366, column: 5)
!962 = distinct !DILexicalBlock(scope: !963, file: !2, line: 364, column: 5)
!963 = distinct !DILexicalBlock(scope: !964, file: !2, line: 362, column: 5)
!964 = distinct !DILexicalBlock(scope: !965, file: !2, line: 347, column: 5)
!965 = distinct !DILexicalBlock(scope: !966, file: !2, line: 345, column: 5)
!966 = distinct !DILexicalBlock(scope: !967, file: !2, line: 343, column: 5)
!967 = distinct !DILexicalBlock(scope: !968, file: !2, line: 341, column: 5)
!968 = distinct !DILexicalBlock(scope: !969, file: !2, line: 332, column: 5)
!969 = distinct !DILexicalBlock(scope: !970, file: !2, line: 330, column: 5)
!970 = distinct !DILexicalBlock(scope: !971, file: !2, line: 328, column: 5)
!971 = distinct !DILexicalBlock(scope: !972, file: !2, line: 326, column: 5)
!972 = distinct !DILexicalBlock(scope: !973, file: !2, line: 320, column: 5)
!973 = distinct !DILexicalBlock(scope: !974, file: !2, line: 314, column: 5)
!974 = distinct !DILexicalBlock(scope: !898, file: !2, line: 312, column: 5)
!975 = !DILocation(line: 0, scope: !870)
!976 = !DILocation(line: 210, column: 5, scope: !870)
!977 = !DILocation(line: 210, column: 9, scope: !870)
!978 = !DILocation(line: 212, column: 26, scope: !870)
!979 = !DILocation(line: 215, column: 10, scope: !980)
!980 = distinct !DILexicalBlock(scope: !870, file: !2, line: 215, column: 9)
!981 = !DILocation(line: 215, column: 9, scope: !870)
!982 = !DILocation(line: 217, column: 9, scope: !870)
!983 = !DILocation(line: 220, column: 9, scope: !984)
!984 = distinct !DILexicalBlock(scope: !870, file: !2, line: 220, column: 9)
!985 = !{!716, !716, i64 0}
!986 = !DILocation(line: 220, column: 18, scope: !984)
!987 = !DILocation(line: 220, column: 9, scope: !870)
!988 = !DILocation(line: 223, column: 9, scope: !884)
!989 = !DILocation(line: 223, column: 9, scope: !870)
!990 = !DILocation(line: 226, column: 20, scope: !883)
!991 = !DILocation(line: 227, column: 21, scope: !883)
!992 = !DILocation(line: 0, scope: !883)
!993 = !DILocation(line: 227, column: 9, scope: !883)
!994 = !DILocation(line: 228, column: 16, scope: !883)
!995 = distinct !{!995, !993, !996, !997}
!996 = !DILocation(line: 228, column: 18, scope: !883)
!997 = !{!"llvm.loop.mustprogress"}
!998 = !DILocation(line: 232, column: 11, scope: !999)
!999 = distinct !DILexicalBlock(scope: !870, file: !2, line: 232, column: 9)
!1000 = !DILocation(line: 232, column: 37, scope: !999)
!1001 = !DILocation(line: 233, column: 11, scope: !999)
!1002 = !DILocation(line: 233, column: 36, scope: !999)
!1003 = !DILocation(line: 235, column: 14, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !999, file: !2, line: 234, column: 5)
!1005 = !DILocation(line: 236, column: 17, scope: !1004)
!1006 = !DILocation(line: 237, column: 5, scope: !1004)
!1007 = !DILocation(line: 243, column: 5, scope: !889)
!1008 = !DILocation(line: 243, column: 5, scope: !890)
!1009 = !DILocation(line: 245, column: 18, scope: !888)
!1010 = !{!1011, !1011, i64 0}
!1011 = !{!"short", !716, i64 0}
!1012 = !DILocalVariable(name: "str", arg: 1, scope: !1013, file: !2, line: 185, type: !483)
!1013 = distinct !DISubprogram(name: "x264_atoi", scope: !2, file: !2, line: 185, type: !1014, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !71, retainedNodes: !1017)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{!91, !483, !1016}
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!1017 = !{!1012, !1018, !1019, !1020}
!1018 = !DILocalVariable(name: "b_error", arg: 2, scope: !1013, file: !2, line: 185, type: !1016)
!1019 = !DILocalVariable(name: "end", scope: !1013, file: !2, line: 187, type: !610)
!1020 = !DILocalVariable(name: "v", scope: !1013, file: !2, line: 188, type: !91)
!1021 = !DILocation(line: 0, scope: !1013, inlinedAt: !1022)
!1022 = distinct !DILocation(line: 245, column: 38, scope: !888)
!1023 = !DILocation(line: 187, column: 5, scope: !1013, inlinedAt: !1022)
!1024 = !DILocation(line: 188, column: 13, scope: !1013, inlinedAt: !1022)
!1025 = !DILocation(line: 189, column: 9, scope: !1026, inlinedAt: !1022)
!1026 = distinct !DILexicalBlock(scope: !1013, file: !2, line: 189, column: 9)
!1027 = !DILocation(line: 189, column: 13, scope: !1026, inlinedAt: !1022)
!1028 = !DILocation(line: 189, column: 20, scope: !1026, inlinedAt: !1022)
!1029 = !DILocation(line: 189, column: 23, scope: !1026, inlinedAt: !1022)
!1030 = !DILocation(line: 189, column: 28, scope: !1026, inlinedAt: !1022)
!1031 = !DILocation(line: 189, column: 9, scope: !1013, inlinedAt: !1022)
!1032 = !DILocation(line: 190, column: 18, scope: !1026, inlinedAt: !1022)
!1033 = !DILocation(line: 190, column: 9, scope: !1026, inlinedAt: !1022)
!1034 = !DILocation(line: 192, column: 1, scope: !1013, inlinedAt: !1022)
!1035 = !DILocation(line: 246, column: 19, scope: !888)
!1036 = !DILocation(line: 246, column: 41, scope: !888)
!1037 = !DILocation(line: 246, column: 44, scope: !888)
!1038 = !DILocation(line: 246, column: 18, scope: !888)
!1039 = !DILocation(line: 246, column: 61, scope: !888)
!1040 = !DILocation(line: 245, column: 16, scope: !888)
!1041 = !DILocation(line: 247, column: 13, scope: !887)
!1042 = !DILocation(line: 247, column: 13, scope: !888)
!1043 = !DILocation(line: 249, column: 25, scope: !886)
!1044 = !DILocation(line: 0, scope: !886)
!1045 = !DILocation(line: 250, column: 13, scope: !886)
!1046 = !DILocation(line: 251, column: 21, scope: !886)
!1047 = !DILocation(line: 252, column: 20, scope: !886)
!1048 = !DILocation(line: 253, column: 33, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1050, file: !2, line: 253, column: 13)
!1050 = distinct !DILexicalBlock(scope: !886, file: !2, line: 253, column: 13)
!1051 = !DILocation(line: 253, column: 13, scope: !1050)
!1052 = !{!1053, !715, i64 16}
!1053 = !{!"", !716, i64 0, !715, i64 16}
!1054 = !DILocation(line: 255, column: 51, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1056, file: !2, line: 255, column: 17)
!1056 = distinct !DILexicalBlock(scope: !1057, file: !2, line: 255, column: 17)
!1057 = distinct !DILexicalBlock(scope: !1049, file: !2, line: 254, column: 13)
!1058 = !DILocation(line: 258, column: 29, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1057, file: !2, line: 257, column: 21)
!1060 = distinct !{!1060, !1051, !1061, !997}
!1061 = !DILocation(line: 259, column: 13, scope: !1050)
!1062 = !DILocation(line: 255, column: 54, scope: !1055)
!1063 = !DILocation(line: 255, column: 17, scope: !1056)
!1064 = !DILocation(line: 255, column: 96, scope: !1055)
!1065 = !DILocation(line: 255, column: 45, scope: !1055)
!1066 = !DILocation(line: 255, column: 27, scope: !1055)
!1067 = distinct !{!1067, !1063, !1068, !997}
!1068 = !DILocation(line: 255, column: 100, scope: !1056)
!1069 = !DILocation(line: 256, column: 24, scope: !1057)
!1070 = !DILocation(line: 257, column: 21, scope: !1057)
!1071 = !DILocation(line: 258, column: 21, scope: !1059)
!1072 = !DILocation(line: 260, column: 13, scope: !886)
!1073 = !DILocation(line: 261, column: 9, scope: !887)
!1074 = !DILocation(line: 261, column: 9, scope: !886)
!1075 = !DILocation(line: 263, column: 5, scope: !909)
!1076 = !DILocation(line: 263, column: 5, scope: !889)
!1077 = !DILocation(line: 265, column: 14, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1079, file: !2, line: 265, column: 13)
!1079 = distinct !DILexicalBlock(scope: !909, file: !2, line: 264, column: 5)
!1080 = !DILocation(line: 265, column: 13, scope: !1079)
!1081 = !DILocation(line: 266, column: 16, scope: !1078)
!1082 = !DILocation(line: 266, column: 26, scope: !1078)
!1083 = !{!714, !715, i64 4}
!1084 = !DILocation(line: 266, column: 13, scope: !1078)
!1085 = !DILocation(line: 0, scope: !1013, inlinedAt: !1086)
!1086 = distinct !DILocation(line: 268, column: 28, scope: !1078)
!1087 = !DILocation(line: 187, column: 5, scope: !1013, inlinedAt: !1086)
!1088 = !DILocation(line: 188, column: 13, scope: !1013, inlinedAt: !1086)
!1089 = !DILocation(line: 189, column: 9, scope: !1026, inlinedAt: !1086)
!1090 = !DILocation(line: 189, column: 13, scope: !1026, inlinedAt: !1086)
!1091 = !DILocation(line: 189, column: 20, scope: !1026, inlinedAt: !1086)
!1092 = !DILocation(line: 189, column: 23, scope: !1026, inlinedAt: !1086)
!1093 = !DILocation(line: 189, column: 28, scope: !1026, inlinedAt: !1086)
!1094 = !DILocation(line: 189, column: 9, scope: !1013, inlinedAt: !1086)
!1095 = !DILocation(line: 190, column: 18, scope: !1026, inlinedAt: !1086)
!1096 = !DILocation(line: 190, column: 9, scope: !1026, inlinedAt: !1086)
!1097 = !DILocation(line: 192, column: 1, scope: !1013, inlinedAt: !1086)
!1098 = !DILocation(line: 268, column: 16, scope: !1078)
!1099 = !DILocation(line: 268, column: 26, scope: !1078)
!1100 = !DILocation(line: 270, column: 5, scope: !908)
!1101 = !DILocation(line: 270, column: 5, scope: !909)
!1102 = !DILocation(line: 271, column: 30, scope: !908)
!1103 = !DILocation(line: 271, column: 12, scope: !908)
!1104 = !DILocation(line: 271, column: 28, scope: !908)
!1105 = !{!714, !715, i64 8}
!1106 = !DILocation(line: 271, column: 9, scope: !908)
!1107 = !DILocation(line: 272, column: 5, scope: !907)
!1108 = !DILocation(line: 272, column: 5, scope: !908)
!1109 = !DILocalVariable(name: "str", arg: 1, scope: !1110, file: !2, line: 194, type: !483)
!1110 = distinct !DISubprogram(name: "x264_atof", scope: !2, file: !2, line: 194, type: !1111, scopeLine: 195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !71, retainedNodes: !1114)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{!1113, !483, !1016}
!1113 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1114 = !{!1109, !1115, !1116, !1117}
!1115 = !DILocalVariable(name: "b_error", arg: 2, scope: !1110, file: !2, line: 194, type: !1016)
!1116 = !DILocalVariable(name: "end", scope: !1110, file: !2, line: 196, type: !610)
!1117 = !DILocalVariable(name: "v", scope: !1110, file: !2, line: 197, type: !1113)
!1118 = !DILocation(line: 0, scope: !1110, inlinedAt: !1119)
!1119 = distinct !DILocation(line: 274, column: 13, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1121, file: !2, line: 274, column: 13)
!1121 = distinct !DILexicalBlock(scope: !907, file: !2, line: 273, column: 5)
!1122 = !DILocation(line: 196, column: 5, scope: !1110, inlinedAt: !1119)
!1123 = !DILocation(line: 197, column: 16, scope: !1110, inlinedAt: !1119)
!1124 = !DILocation(line: 198, column: 9, scope: !1125, inlinedAt: !1119)
!1125 = distinct !DILexicalBlock(scope: !1110, file: !2, line: 198, column: 9)
!1126 = !DILocation(line: 198, column: 13, scope: !1125, inlinedAt: !1119)
!1127 = !DILocation(line: 198, column: 20, scope: !1125, inlinedAt: !1119)
!1128 = !DILocation(line: 198, column: 23, scope: !1125, inlinedAt: !1119)
!1129 = !DILocation(line: 198, column: 28, scope: !1125, inlinedAt: !1119)
!1130 = !DILocation(line: 198, column: 9, scope: !1110, inlinedAt: !1119)
!1131 = !DILocation(line: 199, column: 18, scope: !1125, inlinedAt: !1119)
!1132 = !DILocation(line: 199, column: 9, scope: !1125, inlinedAt: !1119)
!1133 = !DILocation(line: 201, column: 1, scope: !1110, inlinedAt: !1119)
!1134 = !DILocation(line: 274, column: 25, scope: !1120)
!1135 = !DILocation(line: 274, column: 13, scope: !1121)
!1136 = !DILocation(line: 0, scope: !1110, inlinedAt: !1137)
!1137 = distinct !DILocation(line: 275, column: 39, scope: !1120)
!1138 = !DILocation(line: 196, column: 5, scope: !1110, inlinedAt: !1137)
!1139 = !DILocation(line: 197, column: 16, scope: !1110, inlinedAt: !1137)
!1140 = !DILocation(line: 198, column: 9, scope: !1125, inlinedAt: !1137)
!1141 = !DILocation(line: 198, column: 13, scope: !1125, inlinedAt: !1137)
!1142 = !DILocation(line: 198, column: 20, scope: !1125, inlinedAt: !1137)
!1143 = !DILocation(line: 198, column: 23, scope: !1125, inlinedAt: !1137)
!1144 = !DILocation(line: 198, column: 28, scope: !1125, inlinedAt: !1137)
!1145 = !DILocation(line: 198, column: 9, scope: !1110, inlinedAt: !1137)
!1146 = !DILocation(line: 199, column: 18, scope: !1125, inlinedAt: !1137)
!1147 = !DILocation(line: 199, column: 9, scope: !1125, inlinedAt: !1137)
!1148 = !DILocation(line: 201, column: 1, scope: !1110, inlinedAt: !1137)
!1149 = !DILocation(line: 275, column: 38, scope: !1120)
!1150 = !DILocation(line: 275, column: 50, scope: !1120)
!1151 = !DILocation(line: 275, column: 30, scope: !1120)
!1152 = !DILocation(line: 275, column: 16, scope: !1120)
!1153 = !DILocation(line: 275, column: 28, scope: !1120)
!1154 = !DILocation(line: 275, column: 13, scope: !1120)
!1155 = !DILocation(line: 0, scope: !1013, inlinedAt: !1156)
!1156 = distinct !DILocation(line: 277, column: 30, scope: !1120)
!1157 = !DILocation(line: 187, column: 5, scope: !1013, inlinedAt: !1156)
!1158 = !DILocation(line: 188, column: 13, scope: !1013, inlinedAt: !1156)
!1159 = !DILocation(line: 189, column: 9, scope: !1026, inlinedAt: !1156)
!1160 = !DILocation(line: 189, column: 13, scope: !1026, inlinedAt: !1156)
!1161 = !DILocation(line: 189, column: 20, scope: !1026, inlinedAt: !1156)
!1162 = !DILocation(line: 189, column: 23, scope: !1026, inlinedAt: !1156)
!1163 = !DILocation(line: 189, column: 28, scope: !1026, inlinedAt: !1156)
!1164 = !DILocation(line: 189, column: 9, scope: !1013, inlinedAt: !1156)
!1165 = !DILocation(line: 190, column: 18, scope: !1026, inlinedAt: !1156)
!1166 = !DILocation(line: 190, column: 9, scope: !1026, inlinedAt: !1156)
!1167 = !DILocation(line: 192, column: 1, scope: !1013, inlinedAt: !1156)
!1168 = !DILocation(line: 277, column: 16, scope: !1120)
!1169 = !DILocation(line: 277, column: 28, scope: !1120)
!1170 = !DILocation(line: 279, column: 5, scope: !906)
!1171 = !DILocation(line: 279, column: 5, scope: !907)
!1172 = !DILocation(line: 281, column: 54, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !906, file: !2, line: 280, column: 5)
!1174 = !DILocation(line: 281, column: 58, scope: !1173)
!1175 = !DILocation(line: 281, column: 26, scope: !1173)
!1176 = !DILocation(line: 281, column: 23, scope: !1173)
!1177 = !DILocation(line: 281, column: 94, scope: !1173)
!1178 = !DILocation(line: 282, column: 26, scope: !1173)
!1179 = !DILocation(line: 282, column: 23, scope: !1173)
!1180 = !DILocation(line: 281, column: 17, scope: !1173)
!1181 = !DILocation(line: 283, column: 5, scope: !1173)
!1182 = !DILocation(line: 284, column: 5, scope: !905)
!1183 = !DILocation(line: 284, column: 5, scope: !906)
!1184 = !DILocation(line: 285, column: 68, scope: !905)
!1185 = !DILocation(line: 285, column: 20, scope: !905)
!1186 = !DILocation(line: 285, column: 17, scope: !905)
!1187 = !DILocation(line: 285, column: 9, scope: !905)
!1188 = !DILocation(line: 286, column: 5, scope: !904)
!1189 = !DILocation(line: 286, column: 5, scope: !905)
!1190 = !DILocation(line: 287, column: 69, scope: !904)
!1191 = !DILocation(line: 287, column: 20, scope: !904)
!1192 = !DILocation(line: 287, column: 17, scope: !904)
!1193 = !DILocation(line: 287, column: 9, scope: !904)
!1194 = !DILocation(line: 288, column: 5, scope: !903)
!1195 = !DILocation(line: 288, column: 5, scope: !904)
!1196 = !DILocation(line: 289, column: 69, scope: !903)
!1197 = !DILocation(line: 289, column: 20, scope: !903)
!1198 = !DILocation(line: 289, column: 17, scope: !903)
!1199 = !DILocation(line: 289, column: 9, scope: !903)
!1200 = !DILocation(line: 290, column: 5, scope: !902)
!1201 = !DILocation(line: 290, column: 5, scope: !903)
!1202 = !DILocation(line: 291, column: 69, scope: !902)
!1203 = !DILocation(line: 291, column: 20, scope: !902)
!1204 = !DILocation(line: 291, column: 17, scope: !902)
!1205 = !DILocation(line: 291, column: 9, scope: !902)
!1206 = !DILocation(line: 292, column: 5, scope: !901)
!1207 = !DILocation(line: 292, column: 5, scope: !902)
!1208 = !DILocation(line: 293, column: 68, scope: !901)
!1209 = !DILocation(line: 293, column: 20, scope: !901)
!1210 = !DILocation(line: 293, column: 17, scope: !901)
!1211 = !DILocation(line: 293, column: 9, scope: !901)
!1212 = !DILocation(line: 294, column: 5, scope: !900)
!1213 = !DILocation(line: 294, column: 5, scope: !901)
!1214 = !DILocation(line: 295, column: 69, scope: !900)
!1215 = !DILocation(line: 295, column: 20, scope: !900)
!1216 = !DILocation(line: 295, column: 17, scope: !900)
!1217 = !DILocation(line: 295, column: 9, scope: !900)
!1218 = !DILocation(line: 296, column: 5, scope: !899)
!1219 = !DILocation(line: 296, column: 5, scope: !900)
!1220 = !DILocation(line: 0, scope: !1013, inlinedAt: !1221)
!1221 = distinct !DILocation(line: 298, column: 31, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !899, file: !2, line: 297, column: 5)
!1223 = !DILocation(line: 187, column: 5, scope: !1013, inlinedAt: !1221)
!1224 = !DILocation(line: 188, column: 13, scope: !1013, inlinedAt: !1221)
!1225 = !DILocation(line: 192, column: 1, scope: !1013, inlinedAt: !1221)
!1226 = !DILocation(line: 298, column: 16, scope: !1222)
!1227 = !DILocation(line: 298, column: 29, scope: !1222)
!1228 = !{!714, !715, i64 64}
!1229 = !DILocation(line: 299, column: 45, scope: !1222)
!1230 = !DILocation(line: 299, column: 17, scope: !1222)
!1231 = !DILocation(line: 300, column: 5, scope: !1222)
!1232 = !DILocation(line: 301, column: 5, scope: !898)
!1233 = !DILocation(line: 301, column: 5, scope: !899)
!1234 = !DILocation(line: 303, column: 41, scope: !896)
!1235 = !DILocation(line: 303, column: 56, scope: !896)
!1236 = !DILocation(line: 303, column: 13, scope: !896)
!1237 = !DILocation(line: 303, column: 68, scope: !896)
!1238 = !DILocation(line: 303, column: 13, scope: !897)
!1239 = !DILocation(line: 0, scope: !1110, inlinedAt: !1240)
!1240 = distinct !DILocation(line: 307, column: 25, scope: !895)
!1241 = !DILocation(line: 196, column: 5, scope: !1110, inlinedAt: !1240)
!1242 = !DILocation(line: 197, column: 16, scope: !1110, inlinedAt: !1240)
!1243 = !DILocation(line: 198, column: 9, scope: !1125, inlinedAt: !1240)
!1244 = !DILocation(line: 198, column: 13, scope: !1125, inlinedAt: !1240)
!1245 = !DILocation(line: 198, column: 20, scope: !1125, inlinedAt: !1240)
!1246 = !DILocation(line: 198, column: 23, scope: !1125, inlinedAt: !1240)
!1247 = !DILocation(line: 198, column: 28, scope: !1125, inlinedAt: !1240)
!1248 = !DILocation(line: 198, column: 9, scope: !1110, inlinedAt: !1240)
!1249 = !DILocation(line: 199, column: 18, scope: !1125, inlinedAt: !1240)
!1250 = !DILocation(line: 199, column: 9, scope: !1125, inlinedAt: !1240)
!1251 = !DILocation(line: 201, column: 1, scope: !1110, inlinedAt: !1240)
!1252 = !DILocation(line: 307, column: 25, scope: !895)
!1253 = !DILocation(line: 0, scope: !895)
!1254 = !DILocation(line: 308, column: 38, scope: !895)
!1255 = !DILocation(line: 308, column: 34, scope: !895)
!1256 = !DILocation(line: 308, column: 45, scope: !895)
!1257 = !DILocation(line: 308, column: 28, scope: !895)
!1258 = !DILocation(line: 308, column: 26, scope: !895)
!1259 = !{!714, !715, i64 68}
!1260 = !DILocation(line: 309, column: 26, scope: !895)
!1261 = !{!714, !715, i64 72}
!1262 = !DILocation(line: 312, column: 5, scope: !974)
!1263 = !DILocation(line: 312, column: 5, scope: !898)
!1264 = !DILocation(line: 0, scope: !1013, inlinedAt: !1265)
!1265 = distinct !DILocation(line: 313, column: 32, scope: !974)
!1266 = !DILocation(line: 187, column: 5, scope: !1013, inlinedAt: !1265)
!1267 = !DILocation(line: 188, column: 13, scope: !1013, inlinedAt: !1265)
!1268 = !DILocation(line: 189, column: 9, scope: !1026, inlinedAt: !1265)
!1269 = !DILocation(line: 189, column: 13, scope: !1026, inlinedAt: !1265)
!1270 = !DILocation(line: 189, column: 20, scope: !1026, inlinedAt: !1265)
!1271 = !DILocation(line: 189, column: 23, scope: !1026, inlinedAt: !1265)
!1272 = !DILocation(line: 189, column: 28, scope: !1026, inlinedAt: !1265)
!1273 = !DILocation(line: 189, column: 9, scope: !1013, inlinedAt: !1265)
!1274 = !DILocation(line: 190, column: 18, scope: !1026, inlinedAt: !1265)
!1275 = !DILocation(line: 190, column: 9, scope: !1026, inlinedAt: !1265)
!1276 = !DILocation(line: 192, column: 1, scope: !1013, inlinedAt: !1265)
!1277 = !DILocation(line: 313, column: 12, scope: !974)
!1278 = !DILocation(line: 313, column: 30, scope: !974)
!1279 = !{!714, !715, i64 76}
!1280 = !DILocation(line: 313, column: 9, scope: !974)
!1281 = !DILocation(line: 314, column: 5, scope: !973)
!1282 = !DILocation(line: 314, column: 5, scope: !974)
!1283 = !DILocation(line: 0, scope: !1013, inlinedAt: !1284)
!1284 = distinct !DILocation(line: 316, column: 27, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !973, file: !2, line: 315, column: 5)
!1286 = !DILocation(line: 187, column: 5, scope: !1013, inlinedAt: !1284)
!1287 = !DILocation(line: 188, column: 13, scope: !1013, inlinedAt: !1284)
!1288 = !DILocation(line: 189, column: 9, scope: !1026, inlinedAt: !1284)
!1289 = !DILocation(line: 189, column: 13, scope: !1026, inlinedAt: !1284)
!1290 = !DILocation(line: 189, column: 20, scope: !1026, inlinedAt: !1284)
!1291 = !DILocation(line: 189, column: 23, scope: !1026, inlinedAt: !1284)
!1292 = !DILocation(line: 189, column: 28, scope: !1026, inlinedAt: !1284)
!1293 = !DILocation(line: 189, column: 9, scope: !1013, inlinedAt: !1284)
!1294 = !DILocation(line: 190, column: 18, scope: !1026, inlinedAt: !1284)
!1295 = !DILocation(line: 190, column: 9, scope: !1026, inlinedAt: !1284)
!1296 = !DILocation(line: 192, column: 1, scope: !1013, inlinedAt: !1284)
!1297 = !DILocation(line: 316, column: 12, scope: !1285)
!1298 = !DILocation(line: 316, column: 25, scope: !1285)
!1299 = !DILocation(line: 317, column: 16, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1285, file: !2, line: 317, column: 13)
!1301 = !DILocation(line: 317, column: 29, scope: !1300)
!1302 = !DILocation(line: 317, column: 13, scope: !1285)
!1303 = !DILocation(line: 318, column: 29, scope: !1300)
!1304 = !DILocation(line: 318, column: 13, scope: !1300)
!1305 = !DILocation(line: 320, column: 5, scope: !972)
!1306 = !DILocation(line: 320, column: 5, scope: !973)
!1307 = !DILocation(line: 0, scope: !1013, inlinedAt: !1308)
!1308 = distinct !DILocation(line: 322, column: 27, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !972, file: !2, line: 321, column: 5)
!1310 = !DILocation(line: 187, column: 5, scope: !1013, inlinedAt: !1308)
!1311 = !DILocation(line: 188, column: 13, scope: !1013, inlinedAt: !1308)
!1312 = !DILocation(line: 189, column: 9, scope: !1026, inlinedAt: !1308)
!1313 = !DILocation(line: 189, column: 13, scope: !1026, inlinedAt: !1308)
!1314 = !DILocation(line: 189, column: 20, scope: !1026, inlinedAt: !1308)
!1315 = !DILocation(line: 189, column: 23, scope: !1026, inlinedAt: !1308)
!1316 = !DILocation(line: 189, column: 28, scope: !1026, inlinedAt: !1308)
!1317 = !DILocation(line: 189, column: 9, scope: !1013, inlinedAt: !1308)
!1318 = !DILocation(line: 190, column: 18, scope: !1026, inlinedAt: !1308)
!1319 = !DILocation(line: 190, column: 9, scope: !1026, inlinedAt: !1308)
!1320 = !DILocation(line: 192, column: 1, scope: !1013, inlinedAt: !1308)
!1321 = !DILocation(line: 322, column: 12, scope: !1309)
!1322 = !DILocation(line: 322, column: 25, scope: !1309)
!1323 = !DILocation(line: 323, column: 16, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1309, file: !2, line: 323, column: 13)
!1325 = !DILocation(line: 323, column: 29, scope: !1324)
!1326 = !DILocation(line: 323, column: 13, scope: !1309)
!1327 = !DILocation(line: 324, column: 29, scope: !1324)
!1328 = !DILocation(line: 324, column: 13, scope: !1324)
!1329 = !DILocation(line: 326, column: 5, scope: !971)
!1330 = !DILocation(line: 326, column: 5, scope: !972)
!1331 = !DILocation(line: 0, scope: !1013, inlinedAt: !1332)
!1332 = distinct !DILocation(line: 327, column: 35, scope: !971)
!1333 = !DILocation(line: 187, column: 5, scope: !1013, inlinedAt: !1332)
!1334 = !DILocation(line: 188, column: 13, scope: !1013, inlinedAt: !1332)
!1335 = !DILocation(line: 189, column: 9, scope: !1026, inlinedAt: !1332)
!1336 = !DILocation(line: 189, column: 13, scope: !1026, inlinedAt: !1332)
!1337 = !DILocation(line: 189, column: 20, scope: !1026, inlinedAt: !1332)
!1338 = !DILocation(line: 189, column: 23, scope: !1026, inlinedAt: !1332)
!1339 = !DILocation(line: 189, column: 28, scope: !1026, inlinedAt: !1332)
!1340 = !DILocation(line: 189, column: 9, scope: !1013, inlinedAt: !1332)
!1341 = !DILocation(line: 190, column: 18, scope: !1026, inlinedAt: !1332)
!1342 = !DILocation(line: 190, column: 9, scope: !1026, inlinedAt: !1332)
!1343 = !DILocation(line: 192, column: 1, scope: !1013, inlinedAt: !1332)
!1344 = !DILocation(line: 327, column: 12, scope: !971)
!1345 = !DILocation(line: 327, column: 33, scope: !971)
!1346 = !DILocation(line: 327, column: 9, scope: !971)
!1347 = !DILocation(line: 328, column: 5, scope: !970)
!1348 = !DILocation(line: 328, column: 5, scope: !971)
!1349 = !DILocation(line: 329, column: 29, scope: !970)
!1350 = !DILocation(line: 329, column: 12, scope: !970)
!1351 = !DILocation(line: 329, column: 27, scope: !970)
!1352 = !{!714, !715, i64 92}
!1353 = !DILocation(line: 329, column: 9, scope: !970)
!1354 = !DILocation(line: 330, column: 5, scope: !969)
!1355 = !DILocation(line: 330, column: 5, scope: !970)
!1356 = !DILocation(line: 0, scope: !1013, inlinedAt: !1357)
!1357 = distinct !DILocation(line: 331, column: 23, scope: !969)
!1358 = !DILocation(line: 187, column: 5, scope: !1013, inlinedAt: !1357)
!1359 = !DILocation(line: 188, column: 13, scope: !1013, inlinedAt: !1357)
!1360 = !DILocation(line: 189, column: 9, scope: !1026, inlinedAt: !1357)
!1361 = !DILocation(line: 189, column: 13, scope: !1026, inlinedAt: !1357)
!1362 = !DILocation(line: 189, column: 20, scope: !1026, inlinedAt: !1357)
!1363 = !DILocation(line: 189, column: 23, scope: !1026, inlinedAt: !1357)
!1364 = !DILocation(line: 189, column: 28, scope: !1026, inlinedAt: !1357)
!1365 = !DILocation(line: 189, column: 9, scope: !1013, inlinedAt: !1357)
!1366 = !DILocation(line: 190, column: 18, scope: !1026, inlinedAt: !1357)
!1367 = !DILocation(line: 190, column: 9, scope: !1026, inlinedAt: !1357)
!1368 = !DILocation(line: 192, column: 1, scope: !1013, inlinedAt: !1357)
!1369 = !DILocation(line: 331, column: 12, scope: !969)
!1370 = !DILocation(line: 331, column: 21, scope: !969)
!1371 = !{!714, !715, i64 96}
!1372 = !DILocation(line: 331, column: 9, scope: !969)
!1373 = !DILocation(line: 332, column: 5, scope: !968)
!1374 = !DILocation(line: 332, column: 5, scope: !969)
!1375 = !DILocation(line: 334, column: 32, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !968, file: !2, line: 333, column: 5)
!1377 = !DILocation(line: 334, column: 12, scope: !1376)
!1378 = !DILocation(line: 334, column: 30, scope: !1376)
!1379 = !{!714, !715, i64 100}
!1380 = !DILocation(line: 335, column: 13, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1376, file: !2, line: 335, column: 13)
!1382 = !DILocation(line: 335, column: 13, scope: !1376)
!1383 = !DILocation(line: 337, column: 21, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1381, file: !2, line: 336, column: 9)
!1385 = !DILocation(line: 0, scope: !1013, inlinedAt: !1386)
!1386 = distinct !DILocation(line: 338, column: 36, scope: !1384)
!1387 = !DILocation(line: 187, column: 5, scope: !1013, inlinedAt: !1386)
!1388 = !DILocation(line: 188, column: 13, scope: !1013, inlinedAt: !1386)
!1389 = !DILocation(line: 189, column: 9, scope: !1026, inlinedAt: !1386)
!1390 = !DILocation(line: 189, column: 13, scope: !1026, inlinedAt: !1386)
!1391 = !DILocation(line: 189, column: 20, scope: !1026, inlinedAt: !1386)
!1392 = !DILocation(line: 189, column: 23, scope: !1026, inlinedAt: !1386)
!1393 = !DILocation(line: 189, column: 28, scope: !1026, inlinedAt: !1386)
!1394 = !DILocation(line: 189, column: 9, scope: !1013, inlinedAt: !1386)
!1395 = !DILocation(line: 190, column: 18, scope: !1026, inlinedAt: !1386)
!1396 = !DILocation(line: 190, column: 9, scope: !1026, inlinedAt: !1386)
!1397 = !DILocation(line: 192, column: 1, scope: !1013, inlinedAt: !1386)
!1398 = !DILocation(line: 338, column: 34, scope: !1384)
!1399 = !DILocation(line: 339, column: 9, scope: !1384)
!1400 = !DILocation(line: 341, column: 5, scope: !967)
!1401 = !DILocation(line: 341, column: 5, scope: !968)
!1402 = !DILocation(line: 0, scope: !1013, inlinedAt: !1403)
!1403 = distinct !DILocation(line: 342, column: 28, scope: !967)
!1404 = !DILocation(line: 187, column: 5, scope: !1013, inlinedAt: !1403)
!1405 = !DILocation(line: 188, column: 13, scope: !1013, inlinedAt: !1403)
!1406 = !DILocation(line: 189, column: 9, scope: !1026, inlinedAt: !1403)
!1407 = !DILocation(line: 189, column: 13, scope: !1026, inlinedAt: !1403)
!1408 = !DILocation(line: 189, column: 20, scope: !1026, inlinedAt: !1403)
!1409 = !DILocation(line: 189, column: 23, scope: !1026, inlinedAt: !1403)
!1410 = !DILocation(line: 189, column: 28, scope: !1026, inlinedAt: !1403)
!1411 = !DILocation(line: 189, column: 9, scope: !1013, inlinedAt: !1403)
!1412 = !DILocation(line: 190, column: 18, scope: !1026, inlinedAt: !1403)
!1413 = !DILocation(line: 190, column: 9, scope: !1026, inlinedAt: !1403)
!1414 = !DILocation(line: 192, column: 1, scope: !1013, inlinedAt: !1403)
!1415 = !DILocation(line: 342, column: 12, scope: !967)
!1416 = !DILocation(line: 342, column: 26, scope: !967)
!1417 = !{!714, !715, i64 104}
!1418 = !DILocation(line: 342, column: 9, scope: !967)
!1419 = !DILocation(line: 343, column: 5, scope: !966)
!1420 = !DILocation(line: 343, column: 5, scope: !967)
!1421 = !DILocation(line: 344, column: 31, scope: !966)
!1422 = !DILocation(line: 344, column: 12, scope: !966)
!1423 = !DILocation(line: 344, column: 29, scope: !966)
!1424 = !{!714, !715, i64 108}
!1425 = !DILocation(line: 344, column: 9, scope: !966)
!1426 = !DILocation(line: 345, column: 5, scope: !965)
!1427 = !DILocation(line: 345, column: 5, scope: !966)
!1428 = !DILocation(line: 346, column: 35, scope: !965)
!1429 = !DILocation(line: 346, column: 34, scope: !965)
!1430 = !DILocation(line: 346, column: 12, scope: !965)
!1431 = !DILocation(line: 346, column: 32, scope: !965)
!1432 = !{!714, !715, i64 112}
!1433 = !DILocation(line: 346, column: 9, scope: !965)
!1434 = !DILocation(line: 347, column: 5, scope: !964)
!1435 = !DILocation(line: 347, column: 5, scope: !965)
!1436 = !DILocation(line: 349, column: 46, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1438, file: !2, line: 349, column: 13)
!1438 = distinct !DILexicalBlock(scope: !964, file: !2, line: 348, column: 5)
!1439 = !DILocation(line: 349, column: 79, scope: !1437)
!1440 = !DILocation(line: 349, column: 18, scope: !1437)
!1441 = !DILocation(line: 349, column: 15, scope: !1437)
!1442 = !DILocation(line: 349, column: 106, scope: !1437)
!1443 = !DILocation(line: 350, column: 18, scope: !1437)
!1444 = !DILocation(line: 350, column: 15, scope: !1437)
!1445 = !DILocation(line: 349, column: 13, scope: !1438)
!1446 = !DILocation(line: 352, column: 16, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1437, file: !2, line: 351, column: 9)
!1448 = !DILocation(line: 352, column: 36, scope: !1447)
!1449 = !DILocation(line: 353, column: 9, scope: !1447)
!1450 = !DILocation(line: 354, column: 18, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1437, file: !2, line: 354, column: 18)
!1452 = !DILocation(line: 354, column: 18, scope: !1437)
!1453 = !DILocation(line: 356, column: 16, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1451, file: !2, line: 355, column: 9)
!1455 = !DILocation(line: 356, column: 36, scope: !1454)
!1456 = !DILocation(line: 357, column: 46, scope: !1454)
!1457 = !{!714, !715, i64 116}
!1458 = !DILocation(line: 357, column: 41, scope: !1454)
!1459 = !{!714, !715, i64 120}
!1460 = !DILocation(line: 358, column: 9, scope: !1454)
!1461 = !DILocation(line: 360, column: 38, scope: !1451)
!1462 = !DILocation(line: 360, column: 16, scope: !1451)
!1463 = !DILocation(line: 360, column: 36, scope: !1451)
!1464 = !DILocation(line: 362, column: 5, scope: !963)
!1465 = !DILocation(line: 362, column: 5, scope: !964)
!1466 = !DILocation(line: 363, column: 22, scope: !963)
!1467 = !DILocation(line: 363, column: 12, scope: !963)
!1468 = !DILocation(line: 363, column: 20, scope: !963)
!1469 = !{!714, !715, i64 124}
!1470 = !DILocation(line: 363, column: 9, scope: !963)
!1471 = !DILocation(line: 364, column: 5, scope: !962)
!1472 = !DILocation(line: 364, column: 5, scope: !963)
!1473 = !DILocation(line: 0, scope: !1013, inlinedAt: !1474)
!1474 = distinct !DILocation(line: 365, column: 31, scope: !962)
!1475 = !DILocation(line: 187, column: 5, scope: !1013, inlinedAt: !1474)
!1476 = !DILocation(line: 188, column: 13, scope: !1013, inlinedAt: !1474)
!1477 = !DILocation(line: 189, column: 9, scope: !1026, inlinedAt: !1474)
!1478 = !DILocation(line: 189, column: 13, scope: !1026, inlinedAt: !1474)
!1479 = !DILocation(line: 189, column: 20, scope: !1026, inlinedAt: !1474)
!1480 = !DILocation(line: 189, column: 23, scope: !1026, inlinedAt: !1474)
!1481 = !DILocation(line: 189, column: 28, scope: !1026, inlinedAt: !1474)
!1482 = !DILocation(line: 189, column: 9, scope: !1013, inlinedAt: !1474)
!1483 = !DILocation(line: 190, column: 18, scope: !1026, inlinedAt: !1474)
!1484 = !DILocation(line: 190, column: 9, scope: !1026, inlinedAt: !1474)
!1485 = !DILocation(line: 192, column: 1, scope: !1013, inlinedAt: !1474)
!1486 = !DILocation(line: 365, column: 12, scope: !962)
!1487 = !DILocation(line: 365, column: 29, scope: !962)
!1488 = !DILocation(line: 365, column: 9, scope: !962)
!1489 = !DILocation(line: 366, column: 5, scope: !961)
!1490 = !DILocation(line: 366, column: 5, scope: !962)
!1491 = !DILocation(line: 367, column: 27, scope: !961)
!1492 = !DILocation(line: 367, column: 12, scope: !961)
!1493 = !DILocation(line: 367, column: 25, scope: !961)
!1494 = !{!714, !715, i64 132}
!1495 = !DILocation(line: 367, column: 9, scope: !961)
!1496 = !DILocation(line: 368, column: 5, scope: !960)
!1497 = !DILocation(line: 368, column: 5, scope: !961)
!1498 = !DILocation(line: 370, column: 13, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1500, file: !2, line: 370, column: 13)
!1500 = distinct !DILexicalBlock(scope: !960, file: !2, line: 369, column: 5)
!1501 = !DILocation(line: 370, column: 13, scope: !1500)
!1502 = !DILocation(line: 371, column: 16, scope: !1499)
!1503 = !DILocation(line: 371, column: 29, scope: !1499)
!1504 = !DILocation(line: 371, column: 13, scope: !1499)
!1505 = !DILocation(line: 372, column: 18, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1499, file: !2, line: 372, column: 18)
!1507 = !DILocation(line: 372, column: 18, scope: !1499)
!1508 = !DILocation(line: 373, column: 16, scope: !1506)
!1509 = !DILocation(line: 373, column: 29, scope: !1506)
!1510 = !DILocation(line: 373, column: 13, scope: !1506)
!1511 = !DILocation(line: 375, column: 31, scope: !1506)
!1512 = !DILocation(line: 375, column: 16, scope: !1506)
!1513 = !DILocation(line: 375, column: 29, scope: !1506)
!1514 = !{!714, !719, i64 144}
!1515 = !DILocation(line: 377, column: 5, scope: !959)
!1516 = !DILocation(line: 377, column: 5, scope: !960)
!1517 = !DILocation(line: 378, column: 27, scope: !959)
!1518 = !DILocation(line: 378, column: 12, scope: !959)
!1519 = !DILocation(line: 378, column: 25, scope: !959)
!1520 = !DILocation(line: 378, column: 9, scope: !959)
!1521 = !DILocation(line: 379, column: 5, scope: !958)
!1522 = !DILocation(line: 379, column: 5, scope: !959)
!1523 = !DILocation(line: 381, column: 12, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !958, file: !2, line: 380, column: 5)
!1525 = !DILocation(line: 381, column: 25, scope: !1524)
!1526 = !DILocation(line: 382, column: 41, scope: !1524)
!1527 = !DILocation(line: 382, column: 20, scope: !1524)
!1528 = !DILocation(line: 382, column: 17, scope: !1524)
!1529 = !DILocation(line: 383, column: 41, scope: !1524)
!1530 = !DILocation(line: 383, column: 20, scope: !1524)
!1531 = !DILocation(line: 383, column: 17, scope: !1524)
!1532 = !DILocation(line: 384, column: 41, scope: !1524)
!1533 = !DILocation(line: 384, column: 20, scope: !1524)
!1534 = !DILocation(line: 384, column: 17, scope: !1524)
!1535 = !DILocation(line: 385, column: 41, scope: !1524)
!1536 = !DILocation(line: 385, column: 20, scope: !1524)
!1537 = !DILocation(line: 385, column: 17, scope: !1524)
!1538 = !DILocation(line: 386, column: 5, scope: !1524)
!1539 = !DILocation(line: 387, column: 5, scope: !957)
!1540 = !DILocation(line: 387, column: 5, scope: !958)
!1541 = !DILocation(line: 389, column: 12, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !957, file: !2, line: 388, column: 5)
!1543 = !DILocation(line: 389, column: 25, scope: !1542)
!1544 = !DILocation(line: 390, column: 41, scope: !1542)
!1545 = !DILocation(line: 390, column: 20, scope: !1542)
!1546 = !DILocation(line: 390, column: 17, scope: !1542)
!1547 = !DILocation(line: 391, column: 41, scope: !1542)
!1548 = !DILocation(line: 391, column: 20, scope: !1542)
!1549 = !DILocation(line: 391, column: 17, scope: !1542)
!1550 = !DILocation(line: 392, column: 5, scope: !1542)
!1551 = !DILocation(line: 393, column: 5, scope: !956)
!1552 = !DILocation(line: 393, column: 5, scope: !957)
!1553 = !DILocation(line: 395, column: 12, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !956, file: !2, line: 394, column: 5)
!1555 = !DILocation(line: 395, column: 25, scope: !1554)
!1556 = !DILocation(line: 396, column: 41, scope: !1554)
!1557 = !DILocation(line: 396, column: 20, scope: !1554)
!1558 = !DILocation(line: 396, column: 17, scope: !1554)
!1559 = !DILocation(line: 397, column: 41, scope: !1554)
!1560 = !DILocation(line: 397, column: 20, scope: !1554)
!1561 = !DILocation(line: 397, column: 17, scope: !1554)
!1562 = !DILocation(line: 398, column: 5, scope: !1554)
!1563 = !DILocation(line: 399, column: 5, scope: !955)
!1564 = !DILocation(line: 399, column: 5, scope: !956)
!1565 = !DILocation(line: 401, column: 12, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !955, file: !2, line: 400, column: 5)
!1567 = !DILocation(line: 401, column: 25, scope: !1566)
!1568 = !DILocation(line: 402, column: 41, scope: !1566)
!1569 = !DILocation(line: 402, column: 20, scope: !1566)
!1570 = !DILocation(line: 402, column: 17, scope: !1566)
!1571 = !DILocation(line: 403, column: 41, scope: !1566)
!1572 = !DILocation(line: 403, column: 20, scope: !1566)
!1573 = !DILocation(line: 403, column: 17, scope: !1566)
!1574 = !DILocation(line: 404, column: 5, scope: !1566)
!1575 = !DILocation(line: 405, column: 5, scope: !954)
!1576 = !DILocation(line: 405, column: 5, scope: !955)
!1577 = !DILocation(line: 407, column: 12, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !954, file: !2, line: 406, column: 5)
!1579 = !DILocation(line: 407, column: 25, scope: !1578)
!1580 = !DILocation(line: 408, column: 41, scope: !1578)
!1581 = !DILocation(line: 408, column: 20, scope: !1578)
!1582 = !DILocation(line: 408, column: 17, scope: !1578)
!1583 = !DILocation(line: 409, column: 5, scope: !1578)
!1584 = !DILocation(line: 410, column: 5, scope: !953)
!1585 = !DILocation(line: 410, column: 5, scope: !954)
!1586 = !DILocation(line: 412, column: 12, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !953, file: !2, line: 411, column: 5)
!1588 = !DILocation(line: 412, column: 25, scope: !1587)
!1589 = !DILocation(line: 413, column: 41, scope: !1587)
!1590 = !DILocation(line: 413, column: 20, scope: !1587)
!1591 = !DILocation(line: 413, column: 17, scope: !1587)
!1592 = !DILocation(line: 414, column: 5, scope: !1587)
!1593 = !DILocation(line: 415, column: 5, scope: !952)
!1594 = !DILocation(line: 415, column: 5, scope: !953)
!1595 = !DILocation(line: 417, column: 12, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !952, file: !2, line: 416, column: 5)
!1597 = !DILocation(line: 417, column: 25, scope: !1596)
!1598 = !DILocation(line: 418, column: 41, scope: !1596)
!1599 = !DILocation(line: 418, column: 20, scope: !1596)
!1600 = !DILocation(line: 418, column: 17, scope: !1596)
!1601 = !DILocation(line: 419, column: 5, scope: !1596)
!1602 = !DILocation(line: 420, column: 5, scope: !951)
!1603 = !DILocation(line: 420, column: 5, scope: !952)
!1604 = !DILocation(line: 422, column: 12, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !951, file: !2, line: 421, column: 5)
!1606 = !DILocation(line: 422, column: 25, scope: !1605)
!1607 = !DILocation(line: 423, column: 41, scope: !1605)
!1608 = !DILocation(line: 423, column: 20, scope: !1605)
!1609 = !DILocation(line: 423, column: 17, scope: !1605)
!1610 = !DILocation(line: 424, column: 5, scope: !1605)
!1611 = !DILocation(line: 425, column: 5, scope: !950)
!1612 = !DILocation(line: 425, column: 5, scope: !951)
!1613 = !DILocation(line: 427, column: 12, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !950, file: !2, line: 426, column: 5)
!1615 = !DILocation(line: 427, column: 25, scope: !1614)
!1616 = !DILocation(line: 428, column: 41, scope: !1614)
!1617 = !DILocation(line: 428, column: 20, scope: !1614)
!1618 = !DILocation(line: 428, column: 17, scope: !1614)
!1619 = !DILocation(line: 429, column: 5, scope: !1614)
!1620 = !DILocation(line: 430, column: 5, scope: !949)
!1621 = !DILocation(line: 430, column: 5, scope: !950)
!1622 = !DILocation(line: 432, column: 12, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !949, file: !2, line: 431, column: 5)
!1624 = !DILocation(line: 432, column: 25, scope: !1623)
!1625 = !DILocation(line: 433, column: 41, scope: !1623)
!1626 = !DILocation(line: 433, column: 20, scope: !1623)
!1627 = !DILocation(line: 433, column: 17, scope: !1623)
!1628 = !DILocation(line: 434, column: 5, scope: !1623)
!1629 = !DILocation(line: 435, column: 5, scope: !948)
!1630 = !DILocation(line: 435, column: 5, scope: !949)
!1631 = !DILocation(line: 0, scope: !1013, inlinedAt: !1632)
!1632 = distinct !DILocation(line: 436, column: 26, scope: !948)
!1633 = !DILocation(line: 187, column: 5, scope: !1013, inlinedAt: !1632)
!1634 = !DILocation(line: 188, column: 13, scope: !1013, inlinedAt: !1632)
!1635 = !DILocation(line: 189, column: 9, scope: !1026, inlinedAt: !1632)
!1636 = !DILocation(line: 189, column: 13, scope: !1026, inlinedAt: !1632)
!1637 = !DILocation(line: 189, column: 20, scope: !1026, inlinedAt: !1632)
!1638 = !DILocation(line: 189, column: 23, scope: !1026, inlinedAt: !1632)
!1639 = !DILocation(line: 189, column: 28, scope: !1026, inlinedAt: !1632)
!1640 = !DILocation(line: 189, column: 9, scope: !1013, inlinedAt: !1632)
!1641 = !DILocation(line: 190, column: 18, scope: !1026, inlinedAt: !1632)
!1642 = !DILocation(line: 190, column: 9, scope: !1026, inlinedAt: !1632)
!1643 = !DILocation(line: 192, column: 1, scope: !1013, inlinedAt: !1632)
!1644 = !DILocation(line: 436, column: 12, scope: !948)
!1645 = !DILocation(line: 436, column: 24, scope: !948)
!1646 = !DILocation(line: 436, column: 9, scope: !948)
!1647 = !DILocation(line: 441, column: 5, scope: !947)
!1648 = !DILocation(line: 441, column: 5, scope: !948)
!1649 = !DILocation(line: 442, column: 27, scope: !947)
!1650 = !DILocation(line: 442, column: 12, scope: !947)
!1651 = !DILocation(line: 442, column: 25, scope: !947)
!1652 = !{!714, !719, i64 368}
!1653 = !DILocation(line: 442, column: 9, scope: !947)
!1654 = !DILocation(line: 443, column: 5, scope: !946)
!1655 = !DILocation(line: 443, column: 5, scope: !947)
!1656 = !DILocation(line: 445, column: 20, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !946, file: !2, line: 444, column: 5)
!1658 = !DILocation(line: 446, scope: !1657)
!1659 = !DILocation(line: 447, column: 13, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1657, file: !2, line: 447, column: 13)
!1661 = !DILocation(line: 447, column: 13, scope: !1657)
!1662 = !DILocation(line: 447, scope: !1657)
!1663 = !DILocation(line: 449, column: 13, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1657, file: !2, line: 449, column: 13)
!1665 = !DILocation(line: 449, column: 13, scope: !1657)
!1666 = !DILocation(line: 449, column: 57, scope: !1664)
!1667 = !DILocation(line: 449, column: 40, scope: !1664)
!1668 = !DILocation(line: 450, column: 13, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1657, file: !2, line: 450, column: 13)
!1670 = !DILocation(line: 450, column: 13, scope: !1657)
!1671 = !DILocation(line: 450, column: 57, scope: !1669)
!1672 = !DILocation(line: 450, column: 40, scope: !1669)
!1673 = !DILocation(line: 451, column: 13, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1657, file: !2, line: 451, column: 13)
!1675 = !DILocation(line: 451, column: 13, scope: !1657)
!1676 = !DILocation(line: 451, column: 57, scope: !1674)
!1677 = !DILocation(line: 451, column: 40, scope: !1674)
!1678 = !DILocation(line: 452, column: 13, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1657, file: !2, line: 452, column: 13)
!1680 = !DILocation(line: 452, column: 13, scope: !1657)
!1681 = !DILocation(line: 452, column: 57, scope: !1679)
!1682 = !DILocation(line: 452, column: 40, scope: !1679)
!1683 = !DILocation(line: 453, column: 13, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1657, file: !2, line: 453, column: 13)
!1685 = !DILocation(line: 453, column: 13, scope: !1657)
!1686 = !DILocation(line: 453, column: 57, scope: !1684)
!1687 = !DILocation(line: 453, column: 40, scope: !1684)
!1688 = !DILocation(line: 455, column: 5, scope: !945)
!1689 = !DILocation(line: 455, column: 5, scope: !946)
!1690 = !DILocation(line: 456, column: 38, scope: !945)
!1691 = !DILocation(line: 456, column: 20, scope: !945)
!1692 = !DILocation(line: 456, column: 36, scope: !945)
!1693 = !{!714, !715, i64 384}
!1694 = !DILocation(line: 456, column: 9, scope: !945)
!1695 = !DILocation(line: 457, column: 5, scope: !944)
!1696 = !DILocation(line: 457, column: 5, scope: !945)
!1697 = !DILocation(line: 458, column: 40, scope: !944)
!1698 = !DILocation(line: 458, column: 20, scope: !944)
!1699 = !DILocation(line: 458, column: 38, scope: !944)
!1700 = !{!714, !715, i64 388}
!1701 = !DILocation(line: 458, column: 9, scope: !944)
!1702 = !DILocation(line: 459, column: 5, scope: !943)
!1703 = !DILocation(line: 459, column: 5, scope: !944)
!1704 = !DILocation(line: 460, column: 75, scope: !943)
!1705 = !DILocation(line: 460, column: 20, scope: !943)
!1706 = !DILocation(line: 460, column: 17, scope: !943)
!1707 = !DILocation(line: 460, column: 9, scope: !943)
!1708 = !DILocation(line: 461, column: 5, scope: !942)
!1709 = !DILocation(line: 461, column: 5, scope: !943)
!1710 = !DILocation(line: 0, scope: !1013, inlinedAt: !1711)
!1711 = distinct !DILocation(line: 462, column: 45, scope: !942)
!1712 = !DILocation(line: 187, column: 5, scope: !1013, inlinedAt: !1711)
!1713 = !DILocation(line: 188, column: 13, scope: !1013, inlinedAt: !1711)
!1714 = !DILocation(line: 189, column: 9, scope: !1026, inlinedAt: !1711)
!1715 = !DILocation(line: 189, column: 13, scope: !1026, inlinedAt: !1711)
!1716 = !DILocation(line: 189, column: 20, scope: !1026, inlinedAt: !1711)
!1717 = !DILocation(line: 189, column: 23, scope: !1026, inlinedAt: !1711)
!1718 = !DILocation(line: 189, column: 28, scope: !1026, inlinedAt: !1711)
!1719 = !DILocation(line: 189, column: 9, scope: !1013, inlinedAt: !1711)
!1720 = !DILocation(line: 190, column: 18, scope: !1026, inlinedAt: !1711)
!1721 = !DILocation(line: 190, column: 9, scope: !1026, inlinedAt: !1711)
!1722 = !DILocation(line: 192, column: 1, scope: !1013, inlinedAt: !1711)
!1723 = !DILocation(line: 462, column: 20, scope: !942)
!1724 = !DILocation(line: 462, column: 43, scope: !942)
!1725 = !{!714, !715, i64 396}
!1726 = !DILocation(line: 462, column: 9, scope: !942)
!1727 = !DILocation(line: 463, column: 5, scope: !941)
!1728 = !DILocation(line: 463, column: 5, scope: !942)
!1729 = !DILocation(line: 0, scope: !1013, inlinedAt: !1730)
!1730 = distinct !DILocation(line: 464, column: 41, scope: !941)
!1731 = !DILocation(line: 187, column: 5, scope: !1013, inlinedAt: !1730)
!1732 = !DILocation(line: 188, column: 13, scope: !1013, inlinedAt: !1730)
!1733 = !DILocation(line: 189, column: 9, scope: !1026, inlinedAt: !1730)
!1734 = !DILocation(line: 189, column: 13, scope: !1026, inlinedAt: !1730)
!1735 = !DILocation(line: 189, column: 20, scope: !1026, inlinedAt: !1730)
!1736 = !DILocation(line: 189, column: 23, scope: !1026, inlinedAt: !1730)
!1737 = !DILocation(line: 189, column: 28, scope: !1026, inlinedAt: !1730)
!1738 = !DILocation(line: 189, column: 9, scope: !1013, inlinedAt: !1730)
!1739 = !DILocation(line: 190, column: 18, scope: !1026, inlinedAt: !1730)
!1740 = !DILocation(line: 190, column: 9, scope: !1026, inlinedAt: !1730)
!1741 = !DILocation(line: 192, column: 1, scope: !1013, inlinedAt: !1730)
!1742 = !DILocation(line: 464, column: 20, scope: !941)
!1743 = !DILocation(line: 464, column: 39, scope: !941)
!1744 = !{!714, !715, i64 400}
!1745 = !DILocation(line: 464, column: 9, scope: !941)
!1746 = !DILocation(line: 465, column: 5, scope: !940)
!1747 = !DILocation(line: 465, column: 5, scope: !941)
!1748 = !DILocation(line: 466, column: 74, scope: !940)
!1749 = !DILocation(line: 466, column: 20, scope: !940)
!1750 = !DILocation(line: 466, column: 17, scope: !940)
!1751 = !DILocation(line: 466, column: 9, scope: !940)
!1752 = !DILocation(line: 467, column: 5, scope: !939)
!1753 = !DILocation(line: 467, column: 5, scope: !940)
!1754 = !DILocation(line: 0, scope: !1013, inlinedAt: !1755)
!1755 = distinct !DILocation(line: 468, column: 33, scope: !939)
!1756 = !DILocation(line: 187, column: 5, scope: !1013, inlinedAt: !1755)
!1757 = !DILocation(line: 188, column: 13, scope: !1013, inlinedAt: !1755)
!1758 = !DILocation(line: 189, column: 9, scope: !1026, inlinedAt: !1755)
!1759 = !DILocation(line: 189, column: 13, scope: !1026, inlinedAt: !1755)
!1760 = !DILocation(line: 189, column: 20, scope: !1026, inlinedAt: !1755)
!1761 = !DILocation(line: 189, column: 23, scope: !1026, inlinedAt: !1755)
!1762 = !DILocation(line: 189, column: 28, scope: !1026, inlinedAt: !1755)
!1763 = !DILocation(line: 189, column: 9, scope: !1013, inlinedAt: !1755)
!1764 = !DILocation(line: 190, column: 18, scope: !1026, inlinedAt: !1755)
!1765 = !DILocation(line: 190, column: 9, scope: !1026, inlinedAt: !1755)
!1766 = !DILocation(line: 192, column: 1, scope: !1013, inlinedAt: !1755)
!1767 = !DILocation(line: 468, column: 20, scope: !939)
!1768 = !DILocation(line: 468, column: 31, scope: !939)
!1769 = !{!714, !715, i64 408}
!1770 = !DILocation(line: 468, column: 9, scope: !939)
!1771 = !DILocation(line: 469, column: 5, scope: !938)
!1772 = !DILocation(line: 469, column: 5, scope: !939)
!1773 = !DILocation(line: 0, scope: !1013, inlinedAt: !1774)
!1774 = distinct !DILocation(line: 470, column: 33, scope: !938)
!1775 = !DILocation(line: 187, column: 5, scope: !1013, inlinedAt: !1774)
!1776 = !DILocation(line: 188, column: 13, scope: !1013, inlinedAt: !1774)
!1777 = !DILocation(line: 189, column: 9, scope: !1026, inlinedAt: !1774)
!1778 = !DILocation(line: 189, column: 13, scope: !1026, inlinedAt: !1774)
!1779 = !DILocation(line: 189, column: 20, scope: !1026, inlinedAt: !1774)
!1780 = !DILocation(line: 189, column: 23, scope: !1026, inlinedAt: !1774)
!1781 = !DILocation(line: 189, column: 28, scope: !1026, inlinedAt: !1774)
!1782 = !DILocation(line: 189, column: 9, scope: !1013, inlinedAt: !1774)
!1783 = !DILocation(line: 190, column: 18, scope: !1026, inlinedAt: !1774)
!1784 = !DILocation(line: 190, column: 9, scope: !1026, inlinedAt: !1774)
!1785 = !DILocation(line: 192, column: 1, scope: !1013, inlinedAt: !1774)
!1786 = !DILocation(line: 470, column: 20, scope: !938)
!1787 = !DILocation(line: 470, column: 31, scope: !938)
!1788 = !{!714, !715, i64 412}
!1789 = !DILocation(line: 470, column: 9, scope: !938)
!1790 = !DILocation(line: 471, column: 5, scope: !937)
!1791 = !DILocation(line: 471, column: 5, scope: !938)
!1792 = !DILocation(line: 0, scope: !1013, inlinedAt: !1793)
!1793 = distinct !DILocation(line: 472, column: 40, scope: !937)
!1794 = !DILocation(line: 187, column: 5, scope: !1013, inlinedAt: !1793)
!1795 = !DILocation(line: 188, column: 13, scope: !1013, inlinedAt: !1793)
!1796 = !DILocation(line: 189, column: 9, scope: !1026, inlinedAt: !1793)
!1797 = !DILocation(line: 189, column: 13, scope: !1026, inlinedAt: !1793)
!1798 = !DILocation(line: 189, column: 20, scope: !1026, inlinedAt: !1793)
!1799 = !DILocation(line: 189, column: 23, scope: !1026, inlinedAt: !1793)
!1800 = !DILocation(line: 189, column: 28, scope: !1026, inlinedAt: !1793)
!1801 = !DILocation(line: 189, column: 9, scope: !1013, inlinedAt: !1793)
!1802 = !DILocation(line: 190, column: 18, scope: !1026, inlinedAt: !1793)
!1803 = !DILocation(line: 190, column: 9, scope: !1026, inlinedAt: !1793)
!1804 = !DILocation(line: 192, column: 1, scope: !1013, inlinedAt: !1793)
!1805 = !DILocation(line: 472, column: 20, scope: !937)
!1806 = !DILocation(line: 472, column: 38, scope: !937)
!1807 = !{!714, !715, i64 416}
!1808 = !DILocation(line: 472, column: 9, scope: !937)
!1809 = !DILocation(line: 473, column: 5, scope: !936)
!1810 = !DILocation(line: 473, column: 5, scope: !937)
!1811 = !DILocation(line: 0, scope: !1013, inlinedAt: !1812)
!1812 = distinct !DILocation(line: 474, column: 38, scope: !936)
!1813 = !DILocation(line: 187, column: 5, scope: !1013, inlinedAt: !1812)
!1814 = !DILocation(line: 188, column: 13, scope: !1013, inlinedAt: !1812)
!1815 = !DILocation(line: 189, column: 9, scope: !1026, inlinedAt: !1812)
!1816 = !DILocation(line: 189, column: 13, scope: !1026, inlinedAt: !1812)
!1817 = !DILocation(line: 189, column: 20, scope: !1026, inlinedAt: !1812)
!1818 = !DILocation(line: 189, column: 23, scope: !1026, inlinedAt: !1812)
!1819 = !DILocation(line: 189, column: 28, scope: !1026, inlinedAt: !1812)
!1820 = !DILocation(line: 189, column: 9, scope: !1013, inlinedAt: !1812)
!1821 = !DILocation(line: 190, column: 18, scope: !1026, inlinedAt: !1812)
!1822 = !DILocation(line: 190, column: 9, scope: !1026, inlinedAt: !1812)
!1823 = !DILocation(line: 192, column: 1, scope: !1013, inlinedAt: !1812)
!1824 = !DILocation(line: 474, column: 20, scope: !936)
!1825 = !DILocation(line: 474, column: 36, scope: !936)
!1826 = !{!714, !715, i64 420}
!1827 = !DILocation(line: 474, column: 9, scope: !936)
!1828 = !DILocation(line: 475, column: 5, scope: !935)
!1829 = !DILocation(line: 475, column: 5, scope: !936)
!1830 = !DILocation(line: 477, column: 54, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1832, file: !2, line: 477, column: 13)
!1832 = distinct !DILexicalBlock(scope: !935, file: !2, line: 476, column: 5)
!1833 = !DILocation(line: 477, column: 76, scope: !1831)
!1834 = !DILocation(line: 477, column: 18, scope: !1831)
!1835 = !DILocation(line: 477, column: 15, scope: !1831)
!1836 = !DILocation(line: 477, column: 92, scope: !1831)
!1837 = !DILocation(line: 478, column: 18, scope: !1831)
!1838 = !DILocation(line: 478, column: 15, scope: !1831)
!1839 = !DILocation(line: 477, column: 13, scope: !1832)
!1840 = !DILocation(line: 480, column: 18, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1831, file: !2, line: 480, column: 18)
!1842 = !DILocation(line: 480, column: 18, scope: !1831)
!1843 = !DILocation(line: 482, column: 38, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1841, file: !2, line: 481, column: 9)
!1845 = !{!714, !721, i64 452}
!1846 = !DILocation(line: 483, column: 9, scope: !1844)
!1847 = !DILocation(line: 486, column: 33, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1841, file: !2, line: 485, column: 9)
!1849 = !DILocation(line: 490, column: 5, scope: !934)
!1850 = !DILocation(line: 490, column: 5, scope: !935)
!1851 = !DILocation(line: 491, column: 34, scope: !934)
!1852 = !DILocation(line: 491, column: 20, scope: !934)
!1853 = !DILocation(line: 491, column: 32, scope: !934)
!1854 = !DILocation(line: 491, column: 9, scope: !934)
!1855 = !DILocation(line: 492, column: 5, scope: !933)
!1856 = !DILocation(line: 492, column: 5, scope: !934)
!1857 = !DILocation(line: 493, column: 41, scope: !933)
!1858 = !DILocation(line: 493, column: 20, scope: !933)
!1859 = !DILocation(line: 493, column: 39, scope: !933)
!1860 = !{!714, !715, i64 428}
!1861 = !DILocation(line: 493, column: 9, scope: !933)
!1862 = !DILocation(line: 494, column: 5, scope: !932)
!1863 = !DILocation(line: 494, column: 5, scope: !933)
!1864 = !DILocation(line: 0, scope: !1013, inlinedAt: !1865)
!1865 = distinct !DILocation(line: 495, column: 32, scope: !932)
!1866 = !DILocation(line: 187, column: 5, scope: !1013, inlinedAt: !1865)
!1867 = !DILocation(line: 188, column: 13, scope: !1013, inlinedAt: !1865)
!1868 = !DILocation(line: 189, column: 9, scope: !1026, inlinedAt: !1865)
!1869 = !DILocation(line: 189, column: 13, scope: !1026, inlinedAt: !1865)
!1870 = !DILocation(line: 189, column: 20, scope: !1026, inlinedAt: !1865)
!1871 = !DILocation(line: 189, column: 23, scope: !1026, inlinedAt: !1865)
!1872 = !DILocation(line: 189, column: 28, scope: !1026, inlinedAt: !1865)
!1873 = !DILocation(line: 189, column: 9, scope: !1013, inlinedAt: !1865)
!1874 = !DILocation(line: 190, column: 18, scope: !1026, inlinedAt: !1865)
!1875 = !DILocation(line: 190, column: 9, scope: !1026, inlinedAt: !1865)
!1876 = !DILocation(line: 192, column: 1, scope: !1013, inlinedAt: !1865)
!1877 = !DILocation(line: 495, column: 20, scope: !932)
!1878 = !DILocation(line: 495, column: 30, scope: !932)
!1879 = !{!714, !715, i64 432}
!1880 = !DILocation(line: 495, column: 9, scope: !932)
!1881 = !DILocation(line: 496, column: 5, scope: !931)
!1882 = !DILocation(line: 496, column: 5, scope: !932)
!1883 = !DILocation(line: 497, column: 35, scope: !931)
!1884 = !DILocation(line: 497, column: 20, scope: !931)
!1885 = !DILocation(line: 497, column: 33, scope: !931)
!1886 = !DILocation(line: 497, column: 9, scope: !931)
!1887 = !DILocation(line: 498, column: 5, scope: !930)
!1888 = !DILocation(line: 498, column: 5, scope: !931)
!1889 = !DILocation(line: 499, column: 37, scope: !930)
!1890 = !DILocation(line: 499, column: 20, scope: !930)
!1891 = !DILocation(line: 499, column: 35, scope: !930)
!1892 = !DILocation(line: 499, column: 9, scope: !930)
!1893 = !DILocation(line: 500, column: 5, scope: !929)
!1894 = !DILocation(line: 500, column: 5, scope: !930)
!1895 = !DILocation(line: 0, scope: !1013, inlinedAt: !1896)
!1896 = distinct !DILocation(line: 501, column: 41, scope: !929)
!1897 = !DILocation(line: 187, column: 5, scope: !1013, inlinedAt: !1896)
!1898 = !DILocation(line: 188, column: 13, scope: !1013, inlinedAt: !1896)
!1899 = !DILocation(line: 189, column: 9, scope: !1026, inlinedAt: !1896)
!1900 = !DILocation(line: 189, column: 13, scope: !1026, inlinedAt: !1896)
!1901 = !DILocation(line: 189, column: 20, scope: !1026, inlinedAt: !1896)
!1902 = !DILocation(line: 189, column: 23, scope: !1026, inlinedAt: !1896)
!1903 = !DILocation(line: 189, column: 28, scope: !1026, inlinedAt: !1896)
!1904 = !DILocation(line: 189, column: 9, scope: !1013, inlinedAt: !1896)
!1905 = !DILocation(line: 190, column: 18, scope: !1026, inlinedAt: !1896)
!1906 = !DILocation(line: 190, column: 9, scope: !1026, inlinedAt: !1896)
!1907 = !DILocation(line: 192, column: 1, scope: !1013, inlinedAt: !1896)
!1908 = !DILocation(line: 501, column: 20, scope: !929)
!1909 = !DILocation(line: 501, column: 39, scope: !929)
!1910 = !DILocation(line: 501, column: 9, scope: !929)
!1911 = !DILocation(line: 502, column: 5, scope: !928)
!1912 = !DILocation(line: 502, column: 5, scope: !929)
!1913 = !DILocation(line: 0, scope: !1013, inlinedAt: !1914)
!1914 = distinct !DILocation(line: 503, column: 41, scope: !928)
!1915 = !DILocation(line: 187, column: 5, scope: !1013, inlinedAt: !1914)
!1916 = !DILocation(line: 188, column: 13, scope: !1013, inlinedAt: !1914)
!1917 = !DILocation(line: 189, column: 9, scope: !1026, inlinedAt: !1914)
!1918 = !DILocation(line: 189, column: 13, scope: !1026, inlinedAt: !1914)
!1919 = !DILocation(line: 189, column: 20, scope: !1026, inlinedAt: !1914)
!1920 = !DILocation(line: 189, column: 23, scope: !1026, inlinedAt: !1914)
!1921 = !DILocation(line: 189, column: 28, scope: !1026, inlinedAt: !1914)
!1922 = !DILocation(line: 189, column: 9, scope: !1013, inlinedAt: !1914)
!1923 = !DILocation(line: 190, column: 18, scope: !1026, inlinedAt: !1914)
!1924 = !DILocation(line: 190, column: 9, scope: !1026, inlinedAt: !1914)
!1925 = !DILocation(line: 192, column: 1, scope: !1013, inlinedAt: !1914)
!1926 = !DILocation(line: 503, column: 9, scope: !928)
!1927 = !DILocation(line: 503, column: 39, scope: !928)
!1928 = !DILocation(line: 504, column: 5, scope: !927)
!1929 = !DILocation(line: 504, column: 5, scope: !928)
!1930 = !DILocation(line: 0, scope: !1013, inlinedAt: !1931)
!1931 = distinct !DILocation(line: 505, column: 40, scope: !927)
!1932 = !DILocation(line: 187, column: 5, scope: !1013, inlinedAt: !1931)
!1933 = !DILocation(line: 188, column: 13, scope: !1013, inlinedAt: !1931)
!1934 = !DILocation(line: 189, column: 9, scope: !1026, inlinedAt: !1931)
!1935 = !DILocation(line: 189, column: 13, scope: !1026, inlinedAt: !1931)
!1936 = !DILocation(line: 189, column: 20, scope: !1026, inlinedAt: !1931)
!1937 = !DILocation(line: 189, column: 23, scope: !1026, inlinedAt: !1931)
!1938 = !DILocation(line: 189, column: 28, scope: !1026, inlinedAt: !1931)
!1939 = !DILocation(line: 189, column: 9, scope: !1013, inlinedAt: !1931)
!1940 = !DILocation(line: 190, column: 18, scope: !1026, inlinedAt: !1931)
!1941 = !DILocation(line: 190, column: 9, scope: !1026, inlinedAt: !1931)
!1942 = !DILocation(line: 192, column: 1, scope: !1013, inlinedAt: !1931)
!1943 = !DILocation(line: 505, column: 20, scope: !927)
!1944 = !DILocation(line: 505, column: 38, scope: !927)
!1945 = !{!714, !715, i64 444}
!1946 = !DILocation(line: 505, column: 9, scope: !927)
!1947 = !DILocation(line: 506, column: 5, scope: !926)
!1948 = !DILocation(line: 506, column: 5, scope: !927)
!1949 = !DILocation(line: 0, scope: !1013, inlinedAt: !1950)
!1950 = distinct !DILocation(line: 508, column: 27, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !926, file: !2, line: 507, column: 5)
!1952 = !DILocation(line: 187, column: 5, scope: !1013, inlinedAt: !1950)
!1953 = !DILocation(line: 188, column: 13, scope: !1013, inlinedAt: !1950)
!1954 = !DILocation(line: 189, column: 9, scope: !1026, inlinedAt: !1950)
!1955 = !DILocation(line: 189, column: 13, scope: !1026, inlinedAt: !1950)
!1956 = !DILocation(line: 189, column: 20, scope: !1026, inlinedAt: !1950)
!1957 = !DILocation(line: 189, column: 23, scope: !1026, inlinedAt: !1950)
!1958 = !DILocation(line: 189, column: 28, scope: !1026, inlinedAt: !1950)
!1959 = !DILocation(line: 189, column: 9, scope: !1013, inlinedAt: !1950)
!1960 = !DILocation(line: 190, column: 18, scope: !1026, inlinedAt: !1950)
!1961 = !DILocation(line: 190, column: 9, scope: !1026, inlinedAt: !1950)
!1962 = !DILocation(line: 192, column: 1, scope: !1013, inlinedAt: !1950)
!1963 = !DILocation(line: 508, column: 12, scope: !1951)
!1964 = !DILocation(line: 508, column: 15, scope: !1951)
!1965 = !DILocation(line: 508, column: 25, scope: !1951)
!1966 = !DILocation(line: 509, column: 27, scope: !1951)
!1967 = !{!714, !715, i64 472}
!1968 = !DILocation(line: 510, column: 5, scope: !1951)
!1969 = !DILocation(line: 511, column: 5, scope: !925)
!1970 = !DILocation(line: 511, column: 5, scope: !926)
!1971 = !DILocation(line: 0, scope: !1013, inlinedAt: !1972)
!1972 = distinct !DILocation(line: 513, column: 31, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !925, file: !2, line: 512, column: 5)
!1974 = !DILocation(line: 187, column: 5, scope: !1013, inlinedAt: !1972)
!1975 = !DILocation(line: 188, column: 13, scope: !1013, inlinedAt: !1972)
!1976 = !DILocation(line: 189, column: 9, scope: !1026, inlinedAt: !1972)
!1977 = !DILocation(line: 189, column: 13, scope: !1026, inlinedAt: !1972)
!1978 = !DILocation(line: 189, column: 20, scope: !1026, inlinedAt: !1972)
!1979 = !DILocation(line: 189, column: 23, scope: !1026, inlinedAt: !1972)
!1980 = !DILocation(line: 189, column: 28, scope: !1026, inlinedAt: !1972)
!1981 = !DILocation(line: 189, column: 9, scope: !1013, inlinedAt: !1972)
!1982 = !DILocation(line: 190, column: 18, scope: !1026, inlinedAt: !1972)
!1983 = !DILocation(line: 190, column: 9, scope: !1026, inlinedAt: !1972)
!1984 = !DILocation(line: 192, column: 1, scope: !1013, inlinedAt: !1972)
!1985 = !DILocation(line: 513, column: 12, scope: !1973)
!1986 = !DILocation(line: 513, column: 15, scope: !1973)
!1987 = !DILocation(line: 513, column: 29, scope: !1973)
!1988 = !{!714, !715, i64 476}
!1989 = !DILocation(line: 514, column: 27, scope: !1973)
!1990 = !DILocation(line: 515, column: 5, scope: !1973)
!1991 = !DILocation(line: 516, column: 5, scope: !924)
!1992 = !DILocation(line: 516, column: 5, scope: !925)
!1993 = !DILocation(line: 0, scope: !1110, inlinedAt: !1994)
!1994 = distinct !DILocation(line: 518, column: 31, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !924, file: !2, line: 517, column: 5)
!1996 = !DILocation(line: 196, column: 5, scope: !1110, inlinedAt: !1994)
!1997 = !DILocation(line: 197, column: 16, scope: !1110, inlinedAt: !1994)
!1998 = !DILocation(line: 198, column: 9, scope: !1125, inlinedAt: !1994)
!1999 = !DILocation(line: 198, column: 13, scope: !1125, inlinedAt: !1994)
!2000 = !DILocation(line: 198, column: 20, scope: !1125, inlinedAt: !1994)
!2001 = !DILocation(line: 198, column: 23, scope: !1125, inlinedAt: !1994)
!2002 = !DILocation(line: 198, column: 28, scope: !1125, inlinedAt: !1994)
!2003 = !DILocation(line: 198, column: 9, scope: !1110, inlinedAt: !1994)
!2004 = !DILocation(line: 199, column: 18, scope: !1125, inlinedAt: !1994)
!2005 = !DILocation(line: 199, column: 9, scope: !1125, inlinedAt: !1994)
!2006 = !DILocation(line: 201, column: 1, scope: !1110, inlinedAt: !1994)
!2007 = !DILocation(line: 518, column: 31, scope: !1995)
!2008 = !DILocation(line: 518, column: 12, scope: !1995)
!2009 = !DILocation(line: 518, column: 15, scope: !1995)
!2010 = !DILocation(line: 518, column: 29, scope: !1995)
!2011 = !{!714, !721, i64 496}
!2012 = !DILocation(line: 519, column: 27, scope: !1995)
!2013 = !DILocation(line: 520, column: 5, scope: !1995)
!2014 = !DILocation(line: 521, column: 5, scope: !923)
!2015 = !DILocation(line: 521, column: 5, scope: !924)
!2016 = !DILocation(line: 0, scope: !1013, inlinedAt: !2017)
!2017 = distinct !DILocation(line: 522, column: 26, scope: !923)
!2018 = !DILocation(line: 187, column: 5, scope: !1013, inlinedAt: !2017)
!2019 = !DILocation(line: 188, column: 13, scope: !1013, inlinedAt: !2017)
!2020 = !DILocation(line: 189, column: 9, scope: !1026, inlinedAt: !2017)
!2021 = !DILocation(line: 189, column: 13, scope: !1026, inlinedAt: !2017)
!2022 = !DILocation(line: 189, column: 20, scope: !1026, inlinedAt: !2017)
!2023 = !DILocation(line: 189, column: 23, scope: !1026, inlinedAt: !2017)
!2024 = !DILocation(line: 189, column: 28, scope: !1026, inlinedAt: !2017)
!2025 = !DILocation(line: 189, column: 9, scope: !1013, inlinedAt: !2017)
!2026 = !DILocation(line: 190, column: 18, scope: !1026, inlinedAt: !2017)
!2027 = !DILocation(line: 190, column: 9, scope: !1026, inlinedAt: !2017)
!2028 = !DILocation(line: 192, column: 1, scope: !1013, inlinedAt: !2017)
!2029 = !DILocation(line: 522, column: 15, scope: !923)
!2030 = !DILocation(line: 522, column: 24, scope: !923)
!2031 = !{!714, !715, i64 480}
!2032 = !DILocation(line: 522, column: 9, scope: !923)
!2033 = !DILocation(line: 523, column: 5, scope: !922)
!2034 = !DILocation(line: 523, column: 5, scope: !923)
!2035 = !DILocation(line: 0, scope: !1013, inlinedAt: !2036)
!2036 = distinct !DILocation(line: 524, column: 26, scope: !922)
!2037 = !DILocation(line: 187, column: 5, scope: !1013, inlinedAt: !2036)
!2038 = !DILocation(line: 188, column: 13, scope: !1013, inlinedAt: !2036)
!2039 = !DILocation(line: 189, column: 9, scope: !1026, inlinedAt: !2036)
!2040 = !DILocation(line: 189, column: 13, scope: !1026, inlinedAt: !2036)
!2041 = !DILocation(line: 189, column: 20, scope: !1026, inlinedAt: !2036)
!2042 = !DILocation(line: 189, column: 23, scope: !1026, inlinedAt: !2036)
!2043 = !DILocation(line: 189, column: 28, scope: !1026, inlinedAt: !2036)
!2044 = !DILocation(line: 189, column: 9, scope: !1013, inlinedAt: !2036)
!2045 = !DILocation(line: 190, column: 18, scope: !1026, inlinedAt: !2036)
!2046 = !DILocation(line: 190, column: 9, scope: !1026, inlinedAt: !2036)
!2047 = !DILocation(line: 192, column: 1, scope: !1013, inlinedAt: !2036)
!2048 = !DILocation(line: 524, column: 15, scope: !922)
!2049 = !DILocation(line: 524, column: 24, scope: !922)
!2050 = !{!714, !715, i64 484}
!2051 = !DILocation(line: 524, column: 9, scope: !922)
!2052 = !DILocation(line: 525, column: 5, scope: !921)
!2053 = !DILocation(line: 525, column: 5, scope: !922)
!2054 = !DILocation(line: 0, scope: !1013, inlinedAt: !2055)
!2055 = distinct !DILocation(line: 526, column: 27, scope: !921)
!2056 = !DILocation(line: 187, column: 5, scope: !1013, inlinedAt: !2055)
!2057 = !DILocation(line: 188, column: 13, scope: !1013, inlinedAt: !2055)
!2058 = !DILocation(line: 189, column: 9, scope: !1026, inlinedAt: !2055)
!2059 = !DILocation(line: 189, column: 13, scope: !1026, inlinedAt: !2055)
!2060 = !DILocation(line: 189, column: 20, scope: !1026, inlinedAt: !2055)
!2061 = !DILocation(line: 189, column: 23, scope: !1026, inlinedAt: !2055)
!2062 = !DILocation(line: 189, column: 28, scope: !1026, inlinedAt: !2055)
!2063 = !DILocation(line: 189, column: 9, scope: !1013, inlinedAt: !2055)
!2064 = !DILocation(line: 190, column: 18, scope: !1026, inlinedAt: !2055)
!2065 = !DILocation(line: 190, column: 9, scope: !1026, inlinedAt: !2055)
!2066 = !DILocation(line: 192, column: 1, scope: !1013, inlinedAt: !2055)
!2067 = !DILocation(line: 526, column: 15, scope: !921)
!2068 = !DILocation(line: 526, column: 25, scope: !921)
!2069 = !DILocation(line: 526, column: 9, scope: !921)
!2070 = !DILocation(line: 527, column: 5, scope: !920)
!2071 = !DILocation(line: 527, column: 5, scope: !921)
!2072 = !DILocation(line: 528, column: 35, scope: !920)
!2073 = !DILocation(line: 528, column: 34, scope: !920)
!2074 = !DILocation(line: 0, scope: !1110, inlinedAt: !2075)
!2075 = distinct !DILocation(line: 528, column: 68, scope: !920)
!2076 = !DILocation(line: 196, column: 5, scope: !1110, inlinedAt: !2075)
!2077 = !DILocation(line: 197, column: 16, scope: !1110, inlinedAt: !2075)
!2078 = !DILocation(line: 198, column: 9, scope: !1125, inlinedAt: !2075)
!2079 = !DILocation(line: 198, column: 13, scope: !1125, inlinedAt: !2075)
!2080 = !DILocation(line: 198, column: 20, scope: !1125, inlinedAt: !2075)
!2081 = !DILocation(line: 198, column: 23, scope: !1125, inlinedAt: !2075)
!2082 = !DILocation(line: 198, column: 28, scope: !1125, inlinedAt: !2075)
!2083 = !DILocation(line: 198, column: 9, scope: !1110, inlinedAt: !2075)
!2084 = !DILocation(line: 199, column: 18, scope: !1125, inlinedAt: !2075)
!2085 = !DILocation(line: 199, column: 9, scope: !1125, inlinedAt: !2075)
!2086 = !DILocation(line: 201, column: 1, scope: !1110, inlinedAt: !2075)
!2087 = !DILocation(line: 528, column: 15, scope: !920)
!2088 = !DILocation(line: 528, column: 32, scope: !920)
!2089 = !{!714, !721, i64 500}
!2090 = !DILocation(line: 528, column: 9, scope: !920)
!2091 = !DILocation(line: 529, column: 5, scope: !919)
!2092 = !DILocation(line: 529, column: 5, scope: !920)
!2093 = !DILocation(line: 0, scope: !1013, inlinedAt: !2094)
!2094 = distinct !DILocation(line: 530, column: 35, scope: !919)
!2095 = !DILocation(line: 187, column: 5, scope: !1013, inlinedAt: !2094)
!2096 = !DILocation(line: 188, column: 13, scope: !1013, inlinedAt: !2094)
!2097 = !DILocation(line: 189, column: 9, scope: !1026, inlinedAt: !2094)
!2098 = !DILocation(line: 189, column: 13, scope: !1026, inlinedAt: !2094)
!2099 = !DILocation(line: 189, column: 20, scope: !1026, inlinedAt: !2094)
!2100 = !DILocation(line: 189, column: 23, scope: !1026, inlinedAt: !2094)
!2101 = !DILocation(line: 189, column: 28, scope: !1026, inlinedAt: !2094)
!2102 = !DILocation(line: 189, column: 9, scope: !1013, inlinedAt: !2094)
!2103 = !DILocation(line: 190, column: 18, scope: !1026, inlinedAt: !2094)
!2104 = !DILocation(line: 190, column: 9, scope: !1026, inlinedAt: !2094)
!2105 = !DILocation(line: 192, column: 1, scope: !1013, inlinedAt: !2094)
!2106 = !DILocation(line: 530, column: 15, scope: !919)
!2107 = !DILocation(line: 530, column: 33, scope: !919)
!2108 = !DILocation(line: 530, column: 9, scope: !919)
!2109 = !DILocation(line: 531, column: 5, scope: !918)
!2110 = !DILocation(line: 531, column: 5, scope: !919)
!2111 = !DILocation(line: 0, scope: !1013, inlinedAt: !2112)
!2112 = distinct !DILocation(line: 532, column: 35, scope: !918)
!2113 = !DILocation(line: 187, column: 5, scope: !1013, inlinedAt: !2112)
!2114 = !DILocation(line: 188, column: 13, scope: !1013, inlinedAt: !2112)
!2115 = !DILocation(line: 189, column: 9, scope: !1026, inlinedAt: !2112)
!2116 = !DILocation(line: 189, column: 13, scope: !1026, inlinedAt: !2112)
!2117 = !DILocation(line: 189, column: 20, scope: !1026, inlinedAt: !2112)
!2118 = !DILocation(line: 189, column: 23, scope: !1026, inlinedAt: !2112)
!2119 = !DILocation(line: 189, column: 28, scope: !1026, inlinedAt: !2112)
!2120 = !DILocation(line: 189, column: 9, scope: !1013, inlinedAt: !2112)
!2121 = !DILocation(line: 190, column: 18, scope: !1026, inlinedAt: !2112)
!2122 = !DILocation(line: 190, column: 9, scope: !1026, inlinedAt: !2112)
!2123 = !DILocation(line: 192, column: 1, scope: !1013, inlinedAt: !2112)
!2124 = !DILocation(line: 532, column: 15, scope: !918)
!2125 = !DILocation(line: 532, column: 33, scope: !918)
!2126 = !DILocation(line: 532, column: 9, scope: !918)
!2127 = !DILocation(line: 533, column: 5, scope: !917)
!2128 = !DILocation(line: 533, column: 5, scope: !918)
!2129 = !DILocation(line: 0, scope: !1110, inlinedAt: !2130)
!2130 = distinct !DILocation(line: 534, column: 35, scope: !917)
!2131 = !DILocation(line: 196, column: 5, scope: !1110, inlinedAt: !2130)
!2132 = !DILocation(line: 197, column: 16, scope: !1110, inlinedAt: !2130)
!2133 = !DILocation(line: 198, column: 9, scope: !1125, inlinedAt: !2130)
!2134 = !DILocation(line: 198, column: 13, scope: !1125, inlinedAt: !2130)
!2135 = !DILocation(line: 198, column: 20, scope: !1125, inlinedAt: !2130)
!2136 = !DILocation(line: 198, column: 23, scope: !1125, inlinedAt: !2130)
!2137 = !DILocation(line: 198, column: 28, scope: !1125, inlinedAt: !2130)
!2138 = !DILocation(line: 198, column: 9, scope: !1110, inlinedAt: !2130)
!2139 = !DILocation(line: 199, column: 18, scope: !1125, inlinedAt: !2130)
!2140 = !DILocation(line: 199, column: 9, scope: !1125, inlinedAt: !2130)
!2141 = !DILocation(line: 201, column: 1, scope: !1110, inlinedAt: !2130)
!2142 = !DILocation(line: 534, column: 35, scope: !917)
!2143 = !DILocation(line: 534, column: 15, scope: !917)
!2144 = !DILocation(line: 534, column: 33, scope: !917)
!2145 = !{!714, !721, i64 512}
!2146 = !DILocation(line: 534, column: 9, scope: !917)
!2147 = !DILocation(line: 535, column: 5, scope: !916)
!2148 = !DILocation(line: 535, column: 5, scope: !917)
!2149 = !DILocation(line: 0, scope: !1110, inlinedAt: !2150)
!2150 = distinct !DILocation(line: 536, column: 29, scope: !916)
!2151 = !DILocation(line: 196, column: 5, scope: !1110, inlinedAt: !2150)
!2152 = !DILocation(line: 197, column: 16, scope: !1110, inlinedAt: !2150)
!2153 = !DILocation(line: 198, column: 9, scope: !1125, inlinedAt: !2150)
!2154 = !DILocation(line: 198, column: 13, scope: !1125, inlinedAt: !2150)
!2155 = !DILocation(line: 198, column: 20, scope: !1125, inlinedAt: !2150)
!2156 = !DILocation(line: 198, column: 23, scope: !1125, inlinedAt: !2150)
!2157 = !DILocation(line: 198, column: 28, scope: !1125, inlinedAt: !2150)
!2158 = !DILocation(line: 198, column: 9, scope: !1110, inlinedAt: !2150)
!2159 = !DILocation(line: 199, column: 18, scope: !1125, inlinedAt: !2150)
!2160 = !DILocation(line: 199, column: 9, scope: !1125, inlinedAt: !2150)
!2161 = !DILocation(line: 201, column: 1, scope: !1110, inlinedAt: !2150)
!2162 = !DILocation(line: 536, column: 29, scope: !916)
!2163 = !DILocation(line: 536, column: 15, scope: !916)
!2164 = !DILocation(line: 536, column: 27, scope: !916)
!2165 = !{!714, !721, i64 516}
!2166 = !DILocation(line: 536, column: 9, scope: !916)
!2167 = !DILocation(line: 537, column: 5, scope: !915)
!2168 = !DILocation(line: 537, column: 5, scope: !916)
!2169 = !DILocation(line: 0, scope: !1110, inlinedAt: !2170)
!2170 = distinct !DILocation(line: 538, column: 29, scope: !915)
!2171 = !DILocation(line: 196, column: 5, scope: !1110, inlinedAt: !2170)
!2172 = !DILocation(line: 197, column: 16, scope: !1110, inlinedAt: !2170)
!2173 = !DILocation(line: 198, column: 9, scope: !1125, inlinedAt: !2170)
!2174 = !DILocation(line: 198, column: 13, scope: !1125, inlinedAt: !2170)
!2175 = !DILocation(line: 198, column: 20, scope: !1125, inlinedAt: !2170)
!2176 = !DILocation(line: 198, column: 23, scope: !1125, inlinedAt: !2170)
!2177 = !DILocation(line: 198, column: 28, scope: !1125, inlinedAt: !2170)
!2178 = !DILocation(line: 198, column: 9, scope: !1110, inlinedAt: !2170)
!2179 = !DILocation(line: 199, column: 18, scope: !1125, inlinedAt: !2170)
!2180 = !DILocation(line: 199, column: 9, scope: !1125, inlinedAt: !2170)
!2181 = !DILocation(line: 201, column: 1, scope: !1110, inlinedAt: !2170)
!2182 = !DILocation(line: 538, column: 29, scope: !915)
!2183 = !DILocation(line: 538, column: 15, scope: !915)
!2184 = !DILocation(line: 538, column: 27, scope: !915)
!2185 = !DILocation(line: 538, column: 9, scope: !915)
!2186 = !DILocation(line: 539, column: 5, scope: !914)
!2187 = !DILocation(line: 539, column: 5, scope: !915)
!2188 = !DILocation(line: 0, scope: !1013, inlinedAt: !2189)
!2189 = distinct !DILocation(line: 540, column: 27, scope: !914)
!2190 = !DILocation(line: 187, column: 5, scope: !1013, inlinedAt: !2189)
!2191 = !DILocation(line: 188, column: 13, scope: !1013, inlinedAt: !2189)
!2192 = !DILocation(line: 189, column: 9, scope: !1026, inlinedAt: !2189)
!2193 = !DILocation(line: 189, column: 13, scope: !1026, inlinedAt: !2189)
!2194 = !DILocation(line: 189, column: 20, scope: !1026, inlinedAt: !2189)
!2195 = !DILocation(line: 189, column: 23, scope: !1026, inlinedAt: !2189)
!2196 = !DILocation(line: 189, column: 28, scope: !1026, inlinedAt: !2189)
!2197 = !DILocation(line: 189, column: 9, scope: !1013, inlinedAt: !2189)
!2198 = !DILocation(line: 190, column: 18, scope: !1026, inlinedAt: !2189)
!2199 = !DILocation(line: 190, column: 9, scope: !1026, inlinedAt: !2189)
!2200 = !DILocation(line: 192, column: 1, scope: !1013, inlinedAt: !2189)
!2201 = !DILocation(line: 540, column: 15, scope: !914)
!2202 = !DILocation(line: 540, column: 25, scope: !914)
!2203 = !DILocation(line: 540, column: 9, scope: !914)
!2204 = !DILocation(line: 541, column: 5, scope: !913)
!2205 = !DILocation(line: 541, column: 5, scope: !914)
!2206 = !DILocation(line: 0, scope: !1110, inlinedAt: !2207)
!2207 = distinct !DILocation(line: 542, column: 31, scope: !913)
!2208 = !DILocation(line: 196, column: 5, scope: !1110, inlinedAt: !2207)
!2209 = !DILocation(line: 197, column: 16, scope: !1110, inlinedAt: !2207)
!2210 = !DILocation(line: 198, column: 9, scope: !1125, inlinedAt: !2207)
!2211 = !DILocation(line: 198, column: 13, scope: !1125, inlinedAt: !2207)
!2212 = !DILocation(line: 198, column: 20, scope: !1125, inlinedAt: !2207)
!2213 = !DILocation(line: 198, column: 23, scope: !1125, inlinedAt: !2207)
!2214 = !DILocation(line: 198, column: 28, scope: !1125, inlinedAt: !2207)
!2215 = !DILocation(line: 198, column: 9, scope: !1110, inlinedAt: !2207)
!2216 = !DILocation(line: 199, column: 18, scope: !1125, inlinedAt: !2207)
!2217 = !DILocation(line: 199, column: 9, scope: !1125, inlinedAt: !2207)
!2218 = !DILocation(line: 201, column: 1, scope: !1110, inlinedAt: !2207)
!2219 = !DILocation(line: 542, column: 31, scope: !913)
!2220 = !DILocation(line: 542, column: 15, scope: !913)
!2221 = !DILocation(line: 542, column: 29, scope: !913)
!2222 = !DILocation(line: 542, column: 9, scope: !913)
!2223 = !DILocation(line: 543, column: 5, scope: !912)
!2224 = !DILocation(line: 543, column: 5, scope: !913)
!2225 = !DILocation(line: 0, scope: !1013, inlinedAt: !2226)
!2226 = distinct !DILocation(line: 545, column: 29, scope: !911)
!2227 = !DILocation(line: 187, column: 5, scope: !1013, inlinedAt: !2226)
!2228 = !DILocation(line: 188, column: 13, scope: !1013, inlinedAt: !2226)
!2229 = !DILocation(line: 189, column: 9, scope: !1026, inlinedAt: !2226)
!2230 = !DILocation(line: 189, column: 13, scope: !1026, inlinedAt: !2226)
!2231 = !DILocation(line: 189, column: 20, scope: !1026, inlinedAt: !2226)
!2232 = !DILocation(line: 189, column: 23, scope: !1026, inlinedAt: !2226)
!2233 = !DILocation(line: 189, column: 28, scope: !1026, inlinedAt: !2226)
!2234 = !DILocation(line: 189, column: 9, scope: !1013, inlinedAt: !2226)
!2235 = !DILocation(line: 190, column: 18, scope: !1026, inlinedAt: !2226)
!2236 = !DILocation(line: 190, column: 9, scope: !1026, inlinedAt: !2226)
!2237 = !DILocation(line: 192, column: 1, scope: !1013, inlinedAt: !2226)
!2238 = !DILocalVariable(name: "v", arg: 1, scope: !2239, file: !2240, line: 108, type: !91)
!2239 = distinct !DISubprogram(name: "x264_clip3", scope: !2240, file: !2240, line: 108, type: !2241, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !71, retainedNodes: !2243)
!2240 = !DIFile(filename: "common/common.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "4880b62cc871dca4002788746fbccb70")
!2241 = !DISubroutineType(types: !2242)
!2242 = !{!91, !91, !91, !91}
!2243 = !{!2238, !2244, !2245}
!2244 = !DILocalVariable(name: "i_min", arg: 2, scope: !2239, file: !2240, line: 108, type: !91)
!2245 = !DILocalVariable(name: "i_max", arg: 3, scope: !2239, file: !2240, line: 108, type: !91)
!2246 = !DILocation(line: 0, scope: !2239, inlinedAt: !2247)
!2247 = distinct !DILocation(line: 545, column: 17, scope: !911)
!2248 = !DILocation(line: 110, column: 14, scope: !2239, inlinedAt: !2247)
!2249 = !DILocation(line: 0, scope: !911)
!2250 = !DILocation(line: 546, column: 32, scope: !911)
!2251 = !DILocation(line: 546, column: 15, scope: !911)
!2252 = !DILocation(line: 546, column: 28, scope: !911)
!2253 = !DILocation(line: 547, column: 31, scope: !911)
!2254 = !DILocation(line: 547, column: 15, scope: !911)
!2255 = !DILocation(line: 547, column: 27, scope: !911)
!2256 = !DILocation(line: 548, column: 5, scope: !911)
!2257 = !DILocation(line: 549, column: 5, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !912, file: !2, line: 549, column: 5)
!2259 = !DILocation(line: 549, column: 5, scope: !912)
!2260 = !DILocation(line: 551, column: 29, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2258, file: !2, line: 550, column: 5)
!2262 = !DILocation(line: 551, column: 15, scope: !2261)
!2263 = !DILocation(line: 551, column: 27, scope: !2261)
!2264 = !DILocation(line: 552, column: 30, scope: !2261)
!2265 = !DILocation(line: 552, column: 15, scope: !2261)
!2266 = !DILocation(line: 552, column: 28, scope: !2261)
!2267 = !DILocation(line: 553, column: 5, scope: !2261)
!2268 = !DILocation(line: 554, column: 5, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2258, file: !2, line: 554, column: 5)
!2270 = !DILocation(line: 554, column: 5, scope: !2258)
!2271 = !DILocation(line: 0, scope: !1110, inlinedAt: !2272)
!2272 = distinct !DILocation(line: 555, column: 29, scope: !2269)
!2273 = !DILocation(line: 196, column: 5, scope: !1110, inlinedAt: !2272)
!2274 = !DILocation(line: 197, column: 16, scope: !1110, inlinedAt: !2272)
!2275 = !DILocation(line: 198, column: 9, scope: !1125, inlinedAt: !2272)
!2276 = !DILocation(line: 198, column: 13, scope: !1125, inlinedAt: !2272)
!2277 = !DILocation(line: 198, column: 20, scope: !1125, inlinedAt: !2272)
!2278 = !DILocation(line: 198, column: 23, scope: !1125, inlinedAt: !2272)
!2279 = !DILocation(line: 198, column: 28, scope: !1125, inlinedAt: !2272)
!2280 = !DILocation(line: 198, column: 9, scope: !1110, inlinedAt: !2272)
!2281 = !DILocation(line: 199, column: 18, scope: !1125, inlinedAt: !2272)
!2282 = !DILocation(line: 199, column: 9, scope: !1125, inlinedAt: !2272)
!2283 = !DILocation(line: 201, column: 1, scope: !1110, inlinedAt: !2272)
!2284 = !DILocation(line: 555, column: 29, scope: !2269)
!2285 = !DILocation(line: 555, column: 15, scope: !2269)
!2286 = !DILocation(line: 555, column: 27, scope: !2269)
!2287 = !{!714, !721, i64 560}
!2288 = !DILocation(line: 555, column: 9, scope: !2269)
!2289 = !DILocation(line: 556, column: 5, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2269, file: !2, line: 556, column: 5)
!2291 = !DILocation(line: 556, column: 5, scope: !2269)
!2292 = !DILocation(line: 0, scope: !1110, inlinedAt: !2293)
!2293 = distinct !DILocation(line: 557, column: 25, scope: !2290)
!2294 = !DILocation(line: 196, column: 5, scope: !1110, inlinedAt: !2293)
!2295 = !DILocation(line: 197, column: 16, scope: !1110, inlinedAt: !2293)
!2296 = !DILocation(line: 198, column: 9, scope: !1125, inlinedAt: !2293)
!2297 = !DILocation(line: 198, column: 13, scope: !1125, inlinedAt: !2293)
!2298 = !DILocation(line: 198, column: 20, scope: !1125, inlinedAt: !2293)
!2299 = !DILocation(line: 198, column: 23, scope: !1125, inlinedAt: !2293)
!2300 = !DILocation(line: 198, column: 28, scope: !1125, inlinedAt: !2293)
!2301 = !DILocation(line: 198, column: 9, scope: !1110, inlinedAt: !2293)
!2302 = !DILocation(line: 199, column: 18, scope: !1125, inlinedAt: !2293)
!2303 = !DILocation(line: 199, column: 9, scope: !1125, inlinedAt: !2293)
!2304 = !DILocation(line: 201, column: 1, scope: !1110, inlinedAt: !2293)
!2305 = !DILocation(line: 557, column: 25, scope: !2290)
!2306 = !DILocation(line: 557, column: 15, scope: !2290)
!2307 = !DILocation(line: 557, column: 23, scope: !2290)
!2308 = !{!714, !721, i64 564}
!2309 = !DILocation(line: 557, column: 9, scope: !2290)
!2310 = !DILocation(line: 558, column: 5, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2290, file: !2, line: 558, column: 5)
!2312 = !DILocation(line: 558, column: 5, scope: !2290)
!2313 = !DILocation(line: 0, scope: !1110, inlinedAt: !2314)
!2314 = distinct !DILocation(line: 559, column: 35, scope: !2311)
!2315 = !DILocation(line: 196, column: 5, scope: !1110, inlinedAt: !2314)
!2316 = !DILocation(line: 197, column: 16, scope: !1110, inlinedAt: !2314)
!2317 = !DILocation(line: 198, column: 9, scope: !1125, inlinedAt: !2314)
!2318 = !DILocation(line: 198, column: 13, scope: !1125, inlinedAt: !2314)
!2319 = !DILocation(line: 198, column: 20, scope: !1125, inlinedAt: !2314)
!2320 = !DILocation(line: 198, column: 23, scope: !1125, inlinedAt: !2314)
!2321 = !DILocation(line: 198, column: 28, scope: !1125, inlinedAt: !2314)
!2322 = !DILocation(line: 198, column: 9, scope: !1110, inlinedAt: !2314)
!2323 = !DILocation(line: 199, column: 18, scope: !1125, inlinedAt: !2314)
!2324 = !DILocation(line: 199, column: 9, scope: !1125, inlinedAt: !2314)
!2325 = !DILocation(line: 201, column: 1, scope: !1110, inlinedAt: !2314)
!2326 = !DILocation(line: 559, column: 35, scope: !2311)
!2327 = !DILocation(line: 559, column: 15, scope: !2311)
!2328 = !DILocation(line: 559, column: 33, scope: !2311)
!2329 = !DILocation(line: 559, column: 9, scope: !2311)
!2330 = !DILocation(line: 560, column: 5, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2311, file: !2, line: 560, column: 5)
!2332 = !DILocation(line: 560, column: 5, scope: !2311)
!2333 = !DILocation(line: 561, column: 27, scope: !2331)
!2334 = !DILocation(line: 561, column: 15, scope: !2331)
!2335 = !DILocation(line: 561, column: 25, scope: !2331)
!2336 = !{!714, !719, i64 592}
!2337 = !DILocation(line: 561, column: 9, scope: !2331)
!2338 = !DILocation(line: 562, column: 5, scope: !2339)
!2339 = distinct !DILexicalBlock(scope: !2331, file: !2, line: 562, column: 5)
!2340 = !DILocation(line: 562, column: 5, scope: !2331)
!2341 = !DILocation(line: 563, column: 29, scope: !2339)
!2342 = !DILocation(line: 563, column: 20, scope: !2339)
!2343 = !DILocation(line: 563, column: 27, scope: !2339)
!2344 = !{!714, !715, i64 464}
!2345 = !DILocation(line: 563, column: 9, scope: !2339)
!2346 = !DILocation(line: 564, column: 5, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !2339, file: !2, line: 564, column: 5)
!2348 = !DILocation(line: 564, column: 5, scope: !2339)
!2349 = !DILocation(line: 565, column: 29, scope: !2347)
!2350 = !DILocation(line: 565, column: 20, scope: !2347)
!2351 = !DILocation(line: 565, column: 27, scope: !2347)
!2352 = !{!714, !715, i64 468}
!2353 = !DILocation(line: 565, column: 9, scope: !2347)
!2354 = !DILocation(line: 566, column: 5, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2347, file: !2, line: 566, column: 5)
!2356 = !DILocation(line: 566, column: 5, scope: !2347)
!2357 = !DILocation(line: 567, column: 20, scope: !2355)
!2358 = !DILocation(line: 567, column: 12, scope: !2355)
!2359 = !DILocation(line: 567, column: 18, scope: !2355)
!2360 = !DILocation(line: 567, column: 9, scope: !2355)
!2361 = !DILocation(line: 568, column: 5, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2355, file: !2, line: 568, column: 5)
!2363 = !DILocation(line: 568, column: 5, scope: !2355)
!2364 = !DILocation(line: 0, scope: !1013, inlinedAt: !2365)
!2365 = distinct !DILocation(line: 569, column: 23, scope: !2362)
!2366 = !DILocation(line: 187, column: 5, scope: !1013, inlinedAt: !2365)
!2367 = !DILocation(line: 188, column: 13, scope: !1013, inlinedAt: !2365)
!2368 = !DILocation(line: 189, column: 9, scope: !1026, inlinedAt: !2365)
!2369 = !DILocation(line: 189, column: 13, scope: !1026, inlinedAt: !2365)
!2370 = !DILocation(line: 189, column: 20, scope: !1026, inlinedAt: !2365)
!2371 = !DILocation(line: 189, column: 23, scope: !1026, inlinedAt: !2365)
!2372 = !DILocation(line: 189, column: 28, scope: !1026, inlinedAt: !2365)
!2373 = !DILocation(line: 189, column: 9, scope: !1013, inlinedAt: !2365)
!2374 = !DILocation(line: 190, column: 18, scope: !1026, inlinedAt: !2365)
!2375 = !DILocation(line: 190, column: 9, scope: !1026, inlinedAt: !2365)
!2376 = !DILocation(line: 192, column: 1, scope: !1013, inlinedAt: !2365)
!2377 = !DILocation(line: 569, column: 12, scope: !2362)
!2378 = !DILocation(line: 569, column: 21, scope: !2362)
!2379 = !{!714, !715, i64 608}
!2380 = !DILocation(line: 569, column: 9, scope: !2362)
!2381 = !DILocation(line: 570, column: 5, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2362, file: !2, line: 570, column: 5)
!2383 = !DILocation(line: 570, column: 5, scope: !2362)
!2384 = !DILocation(line: 571, column: 32, scope: !2382)
!2385 = !DILocation(line: 571, column: 31, scope: !2382)
!2386 = !DILocation(line: 571, column: 12, scope: !2382)
!2387 = !DILocation(line: 571, column: 29, scope: !2382)
!2388 = !DILocation(line: 571, column: 9, scope: !2382)
!2389 = !DILocation(line: 572, column: 5, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2382, file: !2, line: 572, column: 5)
!2391 = !DILocation(line: 572, column: 5, scope: !2382)
!2392 = !DILocation(line: 573, column: 31, scope: !2390)
!2393 = !DILocation(line: 573, column: 12, scope: !2390)
!2394 = !DILocation(line: 573, column: 29, scope: !2390)
!2395 = !DILocation(line: 582, column: 9, scope: !2396)
!2396 = distinct !DILexicalBlock(scope: !870, file: !2, line: 582, column: 9)
!2397 = !DILocation(line: 582, column: 9, scope: !870)
!2398 = !DILocation(line: 583, column: 9, scope: !2396)
!2399 = !DILocation(line: 585, column: 31, scope: !870)
!2400 = !DILocation(line: 585, column: 13, scope: !870)
!2401 = !DILocation(line: 586, column: 12, scope: !870)
!2402 = !DILocation(line: 586, column: 5, scope: !870)
!2403 = !DILocation(line: 587, column: 1, scope: !870)
!2404 = !DISubprogram(name: "strchr", scope: !2405, file: !2405, line: 246, type: !2406, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !852)
!2405 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!2406 = !DISubroutineType(types: !2407)
!2407 = !{!610, !483, !91}
!2408 = !DISubprogram(name: "strdup", scope: !2405, file: !2405, line: 187, type: !2409, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !852)
!2409 = !DISubroutineType(types: !2410)
!2410 = !{!610, !483}
!2411 = !DISubprogram(name: "strncmp", scope: !2405, file: !2405, line: 159, type: !2412, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !852)
!2412 = !DISubroutineType(types: !2413)
!2413 = !{!91, !483, !483, !2414}
!2414 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !2415, line: 46, baseType: !2416)
!2415 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!2416 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!2417 = distinct !DISubprogram(name: "x264_atobool", scope: !2, file: !2, line: 171, type: !1014, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !71, retainedNodes: !2418)
!2418 = !{!2419, !2420}
!2419 = !DILocalVariable(name: "str", arg: 1, scope: !2417, file: !2, line: 171, type: !483)
!2420 = !DILocalVariable(name: "b_error", arg: 2, scope: !2417, file: !2, line: 171, type: !1016)
!2421 = !DILocation(line: 0, scope: !2417)
!2422 = !DILocation(line: 173, column: 10, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2417, file: !2, line: 173, column: 9)
!2424 = !DILocation(line: 173, column: 27, scope: !2423)
!2425 = !DILocation(line: 174, column: 10, scope: !2423)
!2426 = !DILocation(line: 174, column: 30, scope: !2423)
!2427 = !DILocation(line: 175, column: 10, scope: !2423)
!2428 = !DILocation(line: 173, column: 9, scope: !2417)
!2429 = !DILocation(line: 177, column: 10, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2417, file: !2, line: 177, column: 9)
!2431 = !DILocation(line: 177, column: 27, scope: !2430)
!2432 = !DILocation(line: 178, column: 10, scope: !2430)
!2433 = !DILocation(line: 178, column: 31, scope: !2430)
!2434 = !DILocation(line: 179, column: 10, scope: !2430)
!2435 = !DILocation(line: 177, column: 9, scope: !2417)
!2436 = !DILocation(line: 181, column: 14, scope: !2417)
!2437 = !DILocation(line: 182, column: 5, scope: !2417)
!2438 = !DILocation(line: 183, column: 1, scope: !2417)
!2439 = !DISubprogram(name: "strcmp", scope: !2405, file: !2405, line: 156, type: !2440, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !852)
!2440 = !DISubroutineType(types: !2441)
!2441 = !{!91, !483, !483}
!2442 = !DISubprogram(name: "__ctype_b_loc", scope: !74, file: !74, line: 79, type: !2443, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !852)
!2443 = !DISubroutineType(types: !2444)
!2444 = !{!2445}
!2445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2446, size: 64)
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2447 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!2448 = !DISubprogram(name: "strtok_r", scope: !2405, file: !2405, line: 366, type: !2449, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !852)
!2449 = !DISubroutineType(types: !2450)
!2450 = !{!610, !2451, !2452, !2453}
!2451 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !610)
!2452 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !483)
!2453 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2454)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!2455 = !DISubprogram(name: "strcasecmp", scope: !2456, file: !2456, line: 116, type: !2440, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !852)
!2456 = !DIFile(filename: "/usr/include/strings.h", directory: "", checksumkind: CSK_MD5, checksum: "7444da68ad94ab9f25ff447750787173")
!2457 = !DISubprogram(name: "free", scope: !2458, file: !2458, line: 555, type: !2459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !852)
!2458 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!2459 = !DISubroutineType(types: !2460)
!2460 = !{null, !90}
!2461 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !2462, file: !2462, line: 439, type: !2463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !852)
!2462 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!2463 = !DISubroutineType(types: !2464)
!2464 = !{!91, !2452, !2452, null}
!2465 = distinct !DISubprogram(name: "parse_enum", scope: !2, file: !2, line: 147, type: !2466, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !71, retainedNodes: !2469)
!2466 = !DISubroutineType(types: !2467)
!2467 = !{!91, !483, !2468, !1016}
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!2469 = !{!2470, !2471, !2472, !2473}
!2470 = !DILocalVariable(name: "arg", arg: 1, scope: !2465, file: !2, line: 147, type: !483)
!2471 = !DILocalVariable(name: "names", arg: 2, scope: !2465, file: !2, line: 147, type: !2468)
!2472 = !DILocalVariable(name: "dst", arg: 3, scope: !2465, file: !2, line: 147, type: !1016)
!2473 = !DILocalVariable(name: "i", scope: !2465, file: !2, line: 149, type: !91)
!2474 = !DILocation(line: 0, scope: !2465)
!2475 = !DILocation(line: 150, column: 17, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2477, file: !2, line: 150, column: 5)
!2477 = distinct !DILexicalBlock(scope: !2465, file: !2, line: 150, column: 5)
!2478 = !DILocation(line: 150, column: 5, scope: !2477)
!2479 = !DILocation(line: 151, column: 14, scope: !2480)
!2480 = distinct !DILexicalBlock(scope: !2476, file: !2, line: 151, column: 13)
!2481 = !DILocation(line: 151, column: 13, scope: !2476)
!2482 = !DILocation(line: 153, column: 18, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2480, file: !2, line: 152, column: 9)
!2484 = !DILocation(line: 154, column: 13, scope: !2483)
!2485 = !DILocation(line: 150, column: 28, scope: !2476)
!2486 = distinct !{!2486, !2478, !2487, !997}
!2487 = !DILocation(line: 155, column: 9, scope: !2477)
!2488 = !DILocation(line: 157, column: 1, scope: !2465)
!2489 = !DISubprogram(name: "strstr", scope: !2405, file: !2405, line: 350, type: !2490, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !852)
!2490 = !DISubroutineType(types: !2491)
!2491 = !{!610, !483, !483}
!2492 = distinct !DISubprogram(name: "parse_cqm", scope: !2, file: !2, line: 159, type: !2493, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !71, retainedNodes: !2495)
!2493 = !DISubroutineType(types: !2494)
!2494 = !{!91, !483, !93, !91}
!2495 = !{!2496, !2497, !2498, !2499, !2500}
!2496 = !DILocalVariable(name: "str", arg: 1, scope: !2492, file: !2, line: 159, type: !483)
!2497 = !DILocalVariable(name: "cqm", arg: 2, scope: !2492, file: !2, line: 159, type: !93)
!2498 = !DILocalVariable(name: "length", arg: 3, scope: !2492, file: !2, line: 159, type: !91)
!2499 = !DILocalVariable(name: "i", scope: !2492, file: !2, line: 161, type: !91)
!2500 = !DILocalVariable(name: "coef", scope: !2501, file: !2, line: 163, type: !91)
!2501 = distinct !DILexicalBlock(scope: !2492, file: !2, line: 162, column: 8)
!2502 = !DILocation(line: 0, scope: !2492)
!2503 = !DILocation(line: 163, column: 9, scope: !2501)
!2504 = !DILocation(line: 0, scope: !2501)
!2505 = !DILocation(line: 164, column: 14, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !2501, file: !2, line: 164, column: 13)
!2507 = !DILocation(line: 164, column: 41, scope: !2506)
!2508 = !DILocation(line: 167, column: 25, scope: !2492)
!2509 = !DILocation(line: 167, column: 16, scope: !2492)
!2510 = !DILocation(line: 167, column: 61, scope: !2492)
!2511 = !DILocation(line: 167, column: 5, scope: !2492)
!2512 = !DILocation(line: 166, column: 20, scope: !2501)
!2513 = !DILocation(line: 166, column: 14, scope: !2501)
!2514 = !DILocation(line: 166, column: 9, scope: !2501)
!2515 = !DILocation(line: 166, column: 18, scope: !2501)
!2516 = !DILocation(line: 167, column: 35, scope: !2492)
!2517 = !DILocation(line: 167, column: 33, scope: !2492)
!2518 = !DILocation(line: 167, column: 55, scope: !2492)
!2519 = !DILocation(line: 168, column: 15, scope: !2492)
!2520 = !DILocation(line: 168, column: 12, scope: !2492)
!2521 = !DILocation(line: 168, column: 5, scope: !2492)
!2522 = !DILocation(line: 169, column: 1, scope: !2492)
!2523 = distinct !DISubprogram(name: "x264_log", scope: !2, file: !2, line: 592, type: !2524, scopeLine: 593, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !71, retainedNodes: !3441)
!2524 = !DISubroutineType(types: !2525)
!2525 = !{null, !2526, !91, !483, null}
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_t", file: !464, line: 42, baseType: !2528)
!2528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_t", file: !2240, line: 250, size: 206080, elements: !2529)
!2529 = !{!2530, !2531, !2535, !2538, !2539, !2540, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2649, !2651, !2677, !2679, !2680, !2685, !2690, !2694, !2698, !2704, !2708, !2709, !2710, !2711, !2714, !2716, !2718, !2758, !2775, !2930, !2931, !2932, !2933, !2937, !2938, !2939, !2940, !2955, !3107, !3111, !3162, !3169, !3170, !3176, !3178, !3250, !3306, !3358, !3379, !3421}
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !2528, file: !2240, line: 253, baseType: !568, size: 4928)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2528, file: !2240, line: 255, baseType: !2532, size: 8192, offset: 4928)
!2532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2526, size: 8192, elements: !2533)
!2533 = !{!2534}
!2534 = !DISubrange(count: 128)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "thread_handle", scope: !2528, file: !2240, line: 256, baseType: !2536, size: 64, offset: 13120)
!2536 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !2537, line: 27, baseType: !2416)
!2537 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "b_thread_active", scope: !2528, file: !2240, line: 257, baseType: !91, size: 32, offset: 13184)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "i_thread_phase", scope: !2528, file: !2240, line: 258, baseType: !91, size: 32, offset: 13216)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !2528, file: !2240, line: 269, baseType: !2541, size: 2112, offset: 13248)
!2541 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2528, file: !2240, line: 261, size: 2112, elements: !2542)
!2542 = !{!2543, !2544, !2553, !2554, !2555, !2569}
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal", scope: !2541, file: !2240, line: 263, baseType: !91, size: 32)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "nal", scope: !2541, file: !2240, line: 264, baseType: !2545, size: 1536, offset: 64)
!2545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2546, size: 1536, elements: !39)
!2546 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_nal_t", file: !464, line: 399, baseType: !2547)
!2547 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !464, line: 391, size: 192, elements: !2548)
!2548 = !{!2549, !2550, !2551, !2552}
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref_idc", scope: !2547, file: !464, line: 393, baseType: !91, size: 32)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !2547, file: !464, line: 394, baseType: !91, size: 32, offset: 32)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "i_payload", scope: !2547, file: !464, line: 397, baseType: !91, size: 32, offset: 64)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "p_payload", scope: !2547, file: !464, line: 398, baseType: !93, size: 64, offset: 128)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitstream", scope: !2541, file: !2240, line: 265, baseType: !91, size: 32, offset: 1600)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "p_bitstream", scope: !2541, file: !2240, line: 266, baseType: !93, size: 64, offset: 1664)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "bs", scope: !2541, file: !2240, line: 267, baseType: !2556, size: 320, offset: 1728)
!2556 = !DIDerivedType(tag: DW_TAG_typedef, name: "bs_t", file: !2557, line: 49, baseType: !2558)
!2557 = !DIFile(filename: "common/bs.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "2f46b0964798cffcc7898517b4d9922e")
!2558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bs_s", file: !2557, line: 40, size: 320, elements: !2559)
!2559 = !{!2560, !2561, !2562, !2563, !2567, !2568}
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "p_start", scope: !2558, file: !2557, line: 42, baseType: !93, size: 64)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2558, file: !2557, line: 43, baseType: !93, size: 64, offset: 64)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "p_end", scope: !2558, file: !2557, line: 44, baseType: !93, size: 64, offset: 128)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bits", scope: !2558, file: !2557, line: 46, baseType: !2564, size: 64, offset: 192)
!2564 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !2565, line: 87, baseType: !2566)
!2565 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!2566 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "i_left", scope: !2558, file: !2557, line: 47, baseType: !91, size: 32, offset: 256)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "i_bits_encoded", scope: !2558, file: !2557, line: 48, baseType: !91, size: 32, offset: 288)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_size", scope: !2541, file: !2240, line: 268, baseType: !91, size: 32, offset: 2048)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame", scope: !2528, file: !2240, line: 274, baseType: !91, size: 32, offset: 15360)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_offset", scope: !2528, file: !2240, line: 276, baseType: !91, size: 32, offset: 15392)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !2528, file: !2240, line: 277, baseType: !91, size: 32, offset: 15424)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_msb", scope: !2528, file: !2240, line: 278, baseType: !91, size: 32, offset: 15456)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_lsb", scope: !2528, file: !2240, line: 279, baseType: !91, size: 32, offset: 15488)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !2528, file: !2240, line: 280, baseType: !91, size: 32, offset: 15520)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "i_thread_num", scope: !2528, file: !2240, line: 282, baseType: !91, size: 32, offset: 15552)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_type", scope: !2528, file: !2240, line: 283, baseType: !91, size: 32, offset: 15584)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_ref_idc", scope: !2528, file: !2240, line: 284, baseType: !91, size: 32, offset: 15616)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "sps_array", scope: !2528, file: !2240, line: 287, baseType: !2580, size: 9920, offset: 15648)
!2580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2581, size: 9920, elements: !408)
!2581 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_sps_t", file: !2582, line: 133, baseType: !2583)
!2582 = !DIFile(filename: "common/set.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "06164d1fd824dd844d17e97dd39e9ac3")
!2583 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2582, line: 52, size: 9920, elements: !2584)
!2584 = !{!2585, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609, !2610, !2617, !2618, !2648}
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "i_id", scope: !2583, file: !2582, line: 54, baseType: !91, size: 32)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "i_profile_idc", scope: !2583, file: !2582, line: 56, baseType: !91, size: 32, offset: 32)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !2583, file: !2582, line: 57, baseType: !91, size: 32, offset: 64)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set0", scope: !2583, file: !2582, line: 59, baseType: !91, size: 32, offset: 96)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set1", scope: !2583, file: !2582, line: 60, baseType: !91, size: 32, offset: 128)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set2", scope: !2583, file: !2582, line: 61, baseType: !91, size: 32, offset: 160)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_frame_num", scope: !2583, file: !2582, line: 63, baseType: !91, size: 32, offset: 192)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_type", scope: !2583, file: !2582, line: 65, baseType: !91, size: 32, offset: 224)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_poc_lsb", scope: !2583, file: !2582, line: 67, baseType: !91, size: 32, offset: 256)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "b_delta_pic_order_always_zero", scope: !2583, file: !2582, line: 69, baseType: !91, size: 32, offset: 288)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_non_ref_pic", scope: !2583, file: !2582, line: 70, baseType: !91, size: 32, offset: 320)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_top_to_bottom_field", scope: !2583, file: !2582, line: 71, baseType: !91, size: 32, offset: 352)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_frames_in_poc_cycle", scope: !2583, file: !2582, line: 72, baseType: !91, size: 32, offset: 384)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_ref_frame", scope: !2583, file: !2582, line: 73, baseType: !2599, size: 8192, offset: 416)
!2599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 8192, elements: !2600)
!2600 = !{!2601}
!2601 = !DISubrange(count: 256)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_frames", scope: !2583, file: !2582, line: 75, baseType: !91, size: 32, offset: 8608)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "b_gaps_in_frame_num_value_allowed", scope: !2583, file: !2582, line: 76, baseType: !91, size: 32, offset: 8640)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_width", scope: !2583, file: !2582, line: 77, baseType: !91, size: 32, offset: 8672)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_height", scope: !2583, file: !2582, line: 78, baseType: !91, size: 32, offset: 8704)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "b_frame_mbs_only", scope: !2583, file: !2582, line: 79, baseType: !91, size: 32, offset: 8736)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "b_mb_adaptive_frame_field", scope: !2583, file: !2582, line: 80, baseType: !91, size: 32, offset: 8768)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct8x8_inference", scope: !2583, file: !2582, line: 81, baseType: !91, size: 32, offset: 8800)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "b_crop", scope: !2583, file: !2582, line: 83, baseType: !91, size: 32, offset: 8832)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "crop", scope: !2583, file: !2582, line: 90, baseType: !2611, size: 128, offset: 8864)
!2611 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2583, file: !2582, line: 84, size: 128, elements: !2612)
!2612 = !{!2613, !2614, !2615, !2616}
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "i_left", scope: !2611, file: !2582, line: 86, baseType: !91, size: 32)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "i_right", scope: !2611, file: !2582, line: 87, baseType: !91, size: 32, offset: 32)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "i_top", scope: !2611, file: !2582, line: 88, baseType: !91, size: 32, offset: 64)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "i_bottom", scope: !2611, file: !2582, line: 89, baseType: !91, size: 32, offset: 96)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "b_vui", scope: !2583, file: !2582, line: 92, baseType: !91, size: 32, offset: 8992)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !2583, file: !2582, line: 129, baseType: !2619, size: 864, offset: 9024)
!2619 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2583, file: !2582, line: 93, size: 864, elements: !2620)
!2620 = !{!2621, !2622, !2623, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647}
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "b_aspect_ratio_info_present", scope: !2619, file: !2582, line: 95, baseType: !91, size: 32)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !2619, file: !2582, line: 96, baseType: !91, size: 32, offset: 32)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !2619, file: !2582, line: 97, baseType: !91, size: 32, offset: 64)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "b_overscan_info_present", scope: !2619, file: !2582, line: 99, baseType: !91, size: 32, offset: 96)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "b_overscan_info", scope: !2619, file: !2582, line: 100, baseType: !91, size: 32, offset: 128)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "b_signal_type_present", scope: !2619, file: !2582, line: 102, baseType: !91, size: 32, offset: 160)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !2619, file: !2582, line: 103, baseType: !91, size: 32, offset: 192)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !2619, file: !2582, line: 104, baseType: !91, size: 32, offset: 224)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "b_color_description_present", scope: !2619, file: !2582, line: 105, baseType: !91, size: 32, offset: 256)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !2619, file: !2582, line: 106, baseType: !91, size: 32, offset: 288)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !2619, file: !2582, line: 107, baseType: !91, size: 32, offset: 320)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !2619, file: !2582, line: 108, baseType: !91, size: 32, offset: 352)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_loc_info_present", scope: !2619, file: !2582, line: 110, baseType: !91, size: 32, offset: 384)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc_top", scope: !2619, file: !2582, line: 111, baseType: !91, size: 32, offset: 416)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc_bottom", scope: !2619, file: !2582, line: 112, baseType: !91, size: 32, offset: 448)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "b_timing_info_present", scope: !2619, file: !2582, line: 114, baseType: !91, size: 32, offset: 480)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_units_in_tick", scope: !2619, file: !2582, line: 115, baseType: !91, size: 32, offset: 512)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "i_time_scale", scope: !2619, file: !2582, line: 116, baseType: !91, size: 32, offset: 544)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "b_fixed_frame_rate", scope: !2619, file: !2582, line: 117, baseType: !91, size: 32, offset: 576)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "b_bitstream_restriction", scope: !2619, file: !2582, line: 119, baseType: !91, size: 32, offset: 608)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "b_motion_vectors_over_pic_boundaries", scope: !2619, file: !2582, line: 120, baseType: !91, size: 32, offset: 640)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_bytes_per_pic_denom", scope: !2619, file: !2582, line: 121, baseType: !91, size: 32, offset: 672)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_bits_per_mb_denom", scope: !2619, file: !2582, line: 122, baseType: !91, size: 32, offset: 704)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_mv_length_horizontal", scope: !2619, file: !2582, line: 123, baseType: !91, size: 32, offset: 736)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_mv_length_vertical", scope: !2619, file: !2582, line: 124, baseType: !91, size: 32, offset: 768)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_reorder_frames", scope: !2619, file: !2582, line: 125, baseType: !91, size: 32, offset: 800)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_dec_frame_buffering", scope: !2619, file: !2582, line: 126, baseType: !91, size: 32, offset: 832)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "b_qpprime_y_zero_transform_bypass", scope: !2583, file: !2582, line: 131, baseType: !91, size: 32, offset: 9888)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !2528, file: !2240, line: 288, baseType: !2650, size: 64, offset: 25600)
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "pps_array", scope: !2528, file: !2240, line: 289, baseType: !2652, size: 960, offset: 25664)
!2652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2653, size: 960, elements: !408)
!2653 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pps_t", file: !2582, line: 165, baseType: !2654)
!2654 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2582, line: 135, size: 960, elements: !2655)
!2655 = !{!2656, !2657, !2658, !2659, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2668, !2669, !2670, !2671, !2672, !2673}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "i_id", scope: !2654, file: !2582, line: 137, baseType: !91, size: 32)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !2654, file: !2582, line: 138, baseType: !91, size: 32, offset: 32)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !2654, file: !2582, line: 140, baseType: !91, size: 32, offset: 64)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_order", scope: !2654, file: !2582, line: 142, baseType: !91, size: 32, offset: 96)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_slice_groups", scope: !2654, file: !2582, line: 143, baseType: !91, size: 32, offset: 128)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l0_active", scope: !2654, file: !2582, line: 145, baseType: !91, size: 32, offset: 160)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l1_active", scope: !2654, file: !2582, line: 146, baseType: !91, size: 32, offset: 192)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_pred", scope: !2654, file: !2582, line: 148, baseType: !91, size: 32, offset: 224)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !2654, file: !2582, line: 149, baseType: !91, size: 32, offset: 256)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_init_qp", scope: !2654, file: !2582, line: 151, baseType: !91, size: 32, offset: 288)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_init_qs", scope: !2654, file: !2582, line: 152, baseType: !91, size: 32, offset: 320)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_index_offset", scope: !2654, file: !2582, line: 154, baseType: !91, size: 32, offset: 352)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter_control", scope: !2654, file: !2582, line: 156, baseType: !91, size: 32, offset: 384)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "b_constrained_intra_pred", scope: !2654, file: !2582, line: 157, baseType: !91, size: 32, offset: 416)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "b_redundant_pic_cnt", scope: !2654, file: !2582, line: 158, baseType: !91, size: 32, offset: 448)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8_mode", scope: !2654, file: !2582, line: 160, baseType: !91, size: 32, offset: 480)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !2654, file: !2582, line: 162, baseType: !91, size: 32, offset: 512)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_list", scope: !2654, file: !2582, line: 163, baseType: !2674, size: 384, offset: 576)
!2674 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2675, size: 384, elements: !25)
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2676, size: 64)
!2676 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !2528, file: !2240, line: 290, baseType: !2678, size: 64, offset: 26624)
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "i_idr_pic_id", scope: !2528, file: !2240, line: 291, baseType: !91, size: 32, offset: 26688)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "dequant4_mf", scope: !2528, file: !2240, line: 294, baseType: !2681, size: 256, offset: 26752)
!2681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2682, size: 256, elements: !15)
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 512, elements: !2684)
!2684 = !{!16, !16}
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "dequant8_mf", scope: !2528, file: !2240, line: 295, baseType: !2686, size: 128, offset: 27008)
!2686 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2687, size: 128, elements: !34)
!2687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2688, size: 64)
!2688 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 2048, elements: !2689)
!2689 = !{!40, !40}
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "unquant4_mf", scope: !2528, file: !2240, line: 297, baseType: !2691, size: 256, offset: 27136)
!2691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2692, size: 256, elements: !15)
!2692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2693, size: 64)
!2693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 512, elements: !49)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "unquant8_mf", scope: !2528, file: !2240, line: 298, baseType: !2695, size: 128, offset: 27392)
!2695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2696, size: 128, elements: !34)
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 2048, elements: !618)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "quant4_mf", scope: !2528, file: !2240, line: 300, baseType: !2699, size: 256, offset: 27520)
!2699 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2700, size: 256, elements: !15)
!2700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2701, size: 64)
!2701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2702, size: 256, elements: !49)
!2702 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !95, line: 25, baseType: !2703)
!2703 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !97, line: 40, baseType: !92)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "quant8_mf", scope: !2528, file: !2240, line: 301, baseType: !2705, size: 128, offset: 27776)
!2705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2706, size: 128, elements: !34)
!2706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2707, size: 64)
!2707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2702, size: 1024, elements: !618)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "quant4_bias", scope: !2528, file: !2240, line: 302, baseType: !2699, size: 256, offset: 27904)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "quant8_bias", scope: !2528, file: !2240, line: 303, baseType: !2705, size: 128, offset: 28160)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_table", scope: !2528, file: !2240, line: 305, baseType: !2675, size: 64, offset: 28288)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "nr_residual_sum", scope: !2528, file: !2240, line: 307, baseType: !2712, size: 4096, align: 128, offset: 28416)
!2712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !850, size: 4096, elements: !2713)
!2713 = !{!35, !619}
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "nr_offset", scope: !2528, file: !2240, line: 308, baseType: !2715, size: 2048, align: 128, offset: 32512)
!2715 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2702, size: 2048, elements: !2713)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "nr_count", scope: !2528, file: !2240, line: 309, baseType: !2717, size: 64, offset: 34560)
!2717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !850, size: 64, elements: !34)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "sh", scope: !2528, file: !2240, line: 312, baseType: !2719, size: 3072, offset: 34624)
!2719 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_slice_header_t", file: !2240, line: 209, baseType: !2720)
!2720 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2240, line: 159, size: 3072, elements: !2721)
!2721 = !{!2722, !2723, !2724, !2725, !2726, !2727, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757}
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !2720, file: !2240, line: 161, baseType: !2650, size: 64)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !2720, file: !2240, line: 162, baseType: !2678, size: 64, offset: 64)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !2720, file: !2240, line: 164, baseType: !91, size: 32, offset: 128)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "i_first_mb", scope: !2720, file: !2240, line: 165, baseType: !91, size: 32, offset: 160)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_mb", scope: !2720, file: !2240, line: 166, baseType: !91, size: 32, offset: 192)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "i_pps_id", scope: !2720, file: !2240, line: 168, baseType: !91, size: 32, offset: 224)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !2720, file: !2240, line: 170, baseType: !91, size: 32, offset: 256)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "b_mbaff", scope: !2720, file: !2240, line: 172, baseType: !91, size: 32, offset: 288)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "b_field_pic", scope: !2720, file: !2240, line: 173, baseType: !91, size: 32, offset: 320)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "b_bottom_field", scope: !2720, file: !2240, line: 174, baseType: !91, size: 32, offset: 352)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "i_idr_pic_id", scope: !2720, file: !2240, line: 176, baseType: !91, size: 32, offset: 384)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_lsb", scope: !2720, file: !2240, line: 178, baseType: !91, size: 32, offset: 416)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "i_delta_poc_bottom", scope: !2720, file: !2240, line: 179, baseType: !91, size: 32, offset: 448)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "i_delta_poc", scope: !2720, file: !2240, line: 181, baseType: !662, size: 64, offset: 480)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "i_redundant_pic_cnt", scope: !2720, file: !2240, line: 182, baseType: !91, size: 32, offset: 544)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_spatial_mv_pred", scope: !2720, file: !2240, line: 184, baseType: !91, size: 32, offset: 576)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "b_num_ref_idx_override", scope: !2720, file: !2240, line: 186, baseType: !91, size: 32, offset: 608)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l0_active", scope: !2720, file: !2240, line: 187, baseType: !91, size: 32, offset: 640)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l1_active", scope: !2720, file: !2240, line: 188, baseType: !91, size: 32, offset: 672)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_pic_list_reordering_l0", scope: !2720, file: !2240, line: 190, baseType: !91, size: 32, offset: 704)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_pic_list_reordering_l1", scope: !2720, file: !2240, line: 191, baseType: !91, size: 32, offset: 736)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_order", scope: !2720, file: !2240, line: 195, baseType: !2744, size: 2048, offset: 768)
!2744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2745, size: 2048, elements: !2749)
!2745 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2720, file: !2240, line: 192, size: 64, elements: !2746)
!2746 = !{!2747, !2748}
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "idc", scope: !2745, file: !2240, line: 193, baseType: !91, size: 32)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2745, file: !2240, line: 194, baseType: !91, size: 32, offset: 32)
!2749 = !{!35, !50}
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !2720, file: !2240, line: 197, baseType: !91, size: 32, offset: 2816)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !2720, file: !2240, line: 199, baseType: !91, size: 32, offset: 2848)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_delta", scope: !2720, file: !2240, line: 200, baseType: !91, size: 32, offset: 2880)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "b_sp_for_swidth", scope: !2720, file: !2240, line: 201, baseType: !91, size: 32, offset: 2912)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "i_qs_delta", scope: !2720, file: !2240, line: 202, baseType: !91, size: 32, offset: 2944)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "i_disable_deblocking_filter_idc", scope: !2720, file: !2240, line: 205, baseType: !91, size: 32, offset: 2976)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "i_alpha_c0_offset", scope: !2720, file: !2240, line: 206, baseType: !91, size: 32, offset: 3008)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "i_beta_offset", scope: !2720, file: !2240, line: 207, baseType: !91, size: 32, offset: 3040)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "cabac", scope: !2528, file: !2240, line: 315, baseType: !2759, size: 4096, offset: 37760)
!2759 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_cabac_t", file: !2760, line: 46, baseType: !2761)
!2760 = !DIFile(filename: "common/cabac.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "fed287ee191b19e61654b41f7c57e583")
!2761 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2760, line: 27, size: 4096, elements: !2762)
!2762 = !{!2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771}
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "i_low", scope: !2761, file: !2760, line: 30, baseType: !91, size: 32)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "i_range", scope: !2761, file: !2760, line: 31, baseType: !91, size: 32, offset: 32)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "i_queue", scope: !2761, file: !2760, line: 34, baseType: !91, size: 32, offset: 64)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes_outstanding", scope: !2761, file: !2760, line: 35, baseType: !91, size: 32, offset: 96)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "p_start", scope: !2761, file: !2760, line: 37, baseType: !93, size: 64, offset: 128)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2761, file: !2760, line: 38, baseType: !93, size: 64, offset: 192)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "p_end", scope: !2761, file: !2760, line: 39, baseType: !93, size: 64, offset: 256)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "f8_bits_encoded", scope: !2761, file: !2760, line: 42, baseType: !91, size: 32, align: 128, offset: 384)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2761, file: !2760, line: 45, baseType: !2772, size: 3680, offset: 416)
!2772 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 3680, elements: !2773)
!2773 = !{!2774}
!2774 = !DISubrange(count: 460)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "frames", scope: !2528, file: !2240, line: 340, baseType: !2776, size: 31808, offset: 41856)
!2776 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2528, file: !2240, line: 317, size: 31808, elements: !2777)
!2777 = !{!2778, !2915, !2916, !2920, !2921, !2923, !2924, !2925, !2926, !2927, !2928, !2929}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !2776, file: !2240, line: 320, baseType: !2779, size: 4288)
!2779 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2780, size: 4288, elements: !2913)
!2780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2781, size: 64)
!2781 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_frame_t", file: !2782, line: 94, baseType: !2783)
!2782 = !DIFile(filename: "common/frame.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "3ae200731644fdbac60ac7f8f3f9d2f1")
!2783 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2782, line: 31, size: 51648, elements: !2784)
!2784 = !{!2785, !2786, !2787, !2788, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2800, !2801, !2802, !2803, !2804, !2805, !2807, !2809, !2810, !2812, !2813, !2814, !2819, !2826, !2829, !2831, !2833, !2834, !2836, !2837, !2840, !2841, !2842, !2844, !2846, !2847, !2848, !2849, !2851, !2852, !2853, !2854, !2855, !2856, !2881}
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !2783, file: !2782, line: 34, baseType: !91, size: 32)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !2783, file: !2782, line: 35, baseType: !91, size: 32, offset: 32)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "i_qpplus1", scope: !2783, file: !2782, line: 36, baseType: !91, size: 32, offset: 64)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "i_pts", scope: !2783, file: !2782, line: 37, baseType: !2789, size: 64, offset: 128)
!2789 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !2790, line: 27, baseType: !2791)
!2790 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!2791 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !97, line: 44, baseType: !2566)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame", scope: !2783, file: !2782, line: 38, baseType: !91, size: 32, offset: 192)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !2783, file: !2782, line: 39, baseType: !91, size: 32, offset: 224)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "b_kept_as_ref", scope: !2783, file: !2782, line: 40, baseType: !91, size: 32, offset: 256)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_avg_rc", scope: !2783, file: !2782, line: 41, baseType: !659, size: 32, offset: 288)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_avg_aq", scope: !2783, file: !2782, line: 42, baseType: !659, size: 32, offset: 320)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "i_plane", scope: !2783, file: !2782, line: 45, baseType: !91, size: 32, offset: 352)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !2783, file: !2782, line: 46, baseType: !2799, size: 96, offset: 384)
!2799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 96, elements: !20)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !2783, file: !2782, line: 47, baseType: !2799, size: 96, offset: 480)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines", scope: !2783, file: !2782, line: 48, baseType: !2799, size: 96, offset: 576)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride_lowres", scope: !2783, file: !2782, line: 49, baseType: !91, size: 32, offset: 672)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "i_width_lowres", scope: !2783, file: !2782, line: 50, baseType: !91, size: 32, offset: 704)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_lowres", scope: !2783, file: !2782, line: 51, baseType: !91, size: 32, offset: 736)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !2783, file: !2782, line: 52, baseType: !2806, size: 192, offset: 768)
!2806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 192, elements: !20)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "filtered", scope: !2783, file: !2782, line: 53, baseType: !2808, size: 256, offset: 960)
!2808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 256, elements: !15)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "lowres", scope: !2783, file: !2782, line: 54, baseType: !2808, size: 256, offset: 1216)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "integral", scope: !2783, file: !2782, line: 55, baseType: !2811, size: 64, offset: 1472)
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2702, size: 64)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2783, file: !2782, line: 59, baseType: !2808, size: 256, offset: 1536)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_lowres", scope: !2783, file: !2782, line: 60, baseType: !2808, size: 256, offset: 1792)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type", scope: !2783, file: !2782, line: 63, baseType: !2815, size: 64, offset: 2048)
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2816 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !2790, line: 24, baseType: !2817)
!2817 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !97, line: 37, baseType: !2818)
!2818 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !2783, file: !2782, line: 64, baseType: !2820, size: 128, offset: 2112)
!2820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2821, size: 128, elements: !34)
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2823, size: 32, elements: !34)
!2823 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !2790, line: 25, baseType: !2824)
!2824 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !97, line: 39, baseType: !2825)
!2825 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_mvs", scope: !2783, file: !2782, line: 65, baseType: !2827, size: 2176, offset: 2240)
!2827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2821, size: 2176, elements: !2828)
!2828 = !{!35, !230}
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_mv_costs", scope: !2783, file: !2782, line: 66, baseType: !2830, size: 2176, offset: 4416)
!2830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1016, size: 2176, elements: !2828)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2783, file: !2782, line: 67, baseType: !2832, size: 128, offset: 6592)
!2832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2815, size: 128, elements: !34)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref", scope: !2783, file: !2782, line: 68, baseType: !662, size: 64, offset: 6720)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "ref_poc", scope: !2783, file: !2782, line: 69, baseType: !2835, size: 1024, offset: 6784)
!2835 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 1024, elements: !2749)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "inv_ref_poc", scope: !2783, file: !2782, line: 70, baseType: !2693, size: 512, offset: 7808)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "i_cost_est", scope: !2783, file: !2782, line: 75, baseType: !2838, size: 10368, offset: 8320)
!2838 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 10368, elements: !2839)
!2839 = !{!355, !355}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "i_cost_est_aq", scope: !2783, file: !2782, line: 76, baseType: !2838, size: 10368, offset: 18688)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "i_satd", scope: !2783, file: !2782, line: 77, baseType: !91, size: 32, offset: 29056)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_mbs", scope: !2783, file: !2782, line: 78, baseType: !2843, size: 576, offset: 29088)
!2843 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 576, elements: !354)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_satds", scope: !2783, file: !2782, line: 79, baseType: !2845, size: 20736, offset: 29696)
!2845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1016, size: 20736, elements: !2839)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_satd", scope: !2783, file: !2782, line: 80, baseType: !1016, size: 64, offset: 50432)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_bits", scope: !2783, file: !2782, line: 81, baseType: !1016, size: 64, offset: 50496)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_qp", scope: !2783, file: !2782, line: 82, baseType: !1016, size: 64, offset: 50560)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_offset", scope: !2783, file: !2782, line: 83, baseType: !2850, size: 64, offset: 50624)
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "b_intra_calculated", scope: !2783, file: !2782, line: 84, baseType: !91, size: 32, offset: 50688)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_cost", scope: !2783, file: !2782, line: 85, baseType: !2811, size: 64, offset: 50752)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "i_inv_qscale_factor", scope: !2783, file: !2782, line: 86, baseType: !2811, size: 64, offset: 50816)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_completed", scope: !2783, file: !2782, line: 89, baseType: !91, size: 32, offset: 50880)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "i_reference_count", scope: !2783, file: !2782, line: 90, baseType: !91, size: 32, offset: 50912)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2783, file: !2782, line: 91, baseType: !2857, size: 320, offset: 50944)
!2857 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !2537, line: 72, baseType: !2858)
!2858 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !2537, line: 67, size: 320, elements: !2859)
!2859 = !{!2860, !2879, !2880}
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !2858, file: !2537, line: 69, baseType: !2861, size: 320)
!2861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !2862, line: 22, size: 320, elements: !2863)
!2862 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "584baedd80e6041b81caae7f496091c0")
!2863 = !{!2864, !2865, !2866, !2867, !2868, !2869, !2870, !2871}
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !2861, file: !2862, line: 24, baseType: !91, size: 32)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2861, file: !2862, line: 25, baseType: !75, size: 32, offset: 32)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !2861, file: !2862, line: 26, baseType: !91, size: 32, offset: 64)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !2861, file: !2862, line: 28, baseType: !75, size: 32, offset: 96)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !2861, file: !2862, line: 32, baseType: !91, size: 32, offset: 128)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !2861, file: !2862, line: 34, baseType: !2825, size: 16, offset: 160)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !2861, file: !2862, line: 35, baseType: !2825, size: 16, offset: 176)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !2861, file: !2862, line: 36, baseType: !2872, size: 128, offset: 192)
!2872 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !2873, line: 55, baseType: !2874)
!2873 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "04c81e86d34dad9c99ad006d32e47a0d")
!2874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !2873, line: 51, size: 128, elements: !2875)
!2875 = !{!2876, !2878}
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !2874, file: !2873, line: 53, baseType: !2877, size: 64)
!2877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2874, size: 64)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !2874, file: !2873, line: 54, baseType: !2877, size: 64, offset: 64)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !2858, file: !2537, line: 70, baseType: !429, size: 320)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !2858, file: !2537, line: 71, baseType: !2566, size: 64)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "cv", scope: !2783, file: !2782, line: 92, baseType: !2882, size: 384, offset: 51264)
!2882 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_cond_t", file: !2537, line: 80, baseType: !2883)
!2883 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !2537, line: 75, size: 384, elements: !2884)
!2884 = !{!2885, !2907, !2911}
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !2883, file: !2537, line: 77, baseType: !2886, size: 384)
!2886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_cond_s", file: !2873, line: 94, size: 384, elements: !2887)
!2887 = !{!2888, !2900, !2901, !2903, !2904, !2905, !2906}
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "__wseq", scope: !2886, file: !2873, line: 96, baseType: !2889, size: 64)
!2889 = !DIDerivedType(tag: DW_TAG_typedef, name: "__atomic_wide_counter", file: !2890, line: 33, baseType: !2891)
!2890 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/atomic_wide_counter.h", directory: "", checksumkind: CSK_MD5, checksum: "2708e6e61e266abad2d765ccef838dbe")
!2891 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !2890, line: 25, size: 64, elements: !2892)
!2892 = !{!2893, !2895}
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "__value64", scope: !2891, file: !2890, line: 27, baseType: !2894, size: 64)
!2894 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "__value32", scope: !2891, file: !2890, line: 32, baseType: !2896, size: 64)
!2896 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2891, file: !2890, line: 28, size: 64, elements: !2897)
!2897 = !{!2898, !2899}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "__low", scope: !2896, file: !2890, line: 30, baseType: !75, size: 32)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "__high", scope: !2896, file: !2890, line: 31, baseType: !75, size: 32, offset: 32)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_start", scope: !2886, file: !2873, line: 97, baseType: !2889, size: 64, offset: 64)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "__g_refs", scope: !2886, file: !2873, line: 98, baseType: !2902, size: 64, offset: 128)
!2902 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 64, elements: !34)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "__g_size", scope: !2886, file: !2873, line: 99, baseType: !2902, size: 64, offset: 192)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_orig_size", scope: !2886, file: !2873, line: 100, baseType: !75, size: 32, offset: 256)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "__wrefs", scope: !2886, file: !2873, line: 101, baseType: !75, size: 32, offset: 288)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "__g_signals", scope: !2886, file: !2873, line: 102, baseType: !2902, size: 64, offset: 320)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !2883, file: !2537, line: 78, baseType: !2908, size: 384)
!2908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !2909)
!2909 = !{!2910}
!2910 = !DISubrange(count: 48)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !2883, file: !2537, line: 79, baseType: !2912, size: 64)
!2912 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!2913 = !{!2914}
!2914 = !DISubrange(count: 67)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2776, file: !2240, line: 322, baseType: !2779, size: 4288, offset: 4288)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !2776, file: !2240, line: 324, baseType: !2917, size: 21760, offset: 8576)
!2917 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2780, size: 21760, elements: !2918)
!2918 = !{!2919}
!2919 = !DISubrange(count: 340)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "last_nonb", scope: !2776, file: !2240, line: 326, baseType: !2780, size: 64, offset: 30336)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !2776, file: !2240, line: 329, baseType: !2922, size: 1152, offset: 30400)
!2922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2780, size: 1152, elements: !354)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_idr", scope: !2776, file: !2240, line: 331, baseType: !91, size: 32, offset: 31552)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "i_input", scope: !2776, file: !2240, line: 333, baseType: !91, size: 32, offset: 31584)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_dpb", scope: !2776, file: !2240, line: 335, baseType: !91, size: 32, offset: 31616)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_ref0", scope: !2776, file: !2240, line: 336, baseType: !91, size: 32, offset: 31648)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_ref1", scope: !2776, file: !2240, line: 337, baseType: !91, size: 32, offset: 31680)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "i_delay", scope: !2776, file: !2240, line: 338, baseType: !91, size: 32, offset: 31712)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "b_have_lowres", scope: !2776, file: !2240, line: 339, baseType: !91, size: 32, offset: 31744)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "fenc", scope: !2528, file: !2240, line: 343, baseType: !2780, size: 64, offset: 73664)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "fdec", scope: !2528, file: !2240, line: 346, baseType: !2780, size: 64, offset: 73728)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref0", scope: !2528, file: !2240, line: 349, baseType: !91, size: 32, offset: 73792)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "fref0", scope: !2528, file: !2240, line: 350, baseType: !2934, size: 1216, offset: 73856)
!2934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2780, size: 1216, elements: !2935)
!2935 = !{!2936}
!2936 = !DISubrange(count: 19)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref1", scope: !2528, file: !2240, line: 351, baseType: !91, size: 32, offset: 75072)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "fref1", scope: !2528, file: !2240, line: 352, baseType: !2934, size: 1216, offset: 75136)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_reorder", scope: !2528, file: !2240, line: 353, baseType: !662, size: 64, offset: 76352)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "dct", scope: !2528, file: !2240, line: 365, baseType: !2941, size: 10624, offset: 76416)
!2941 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2528, file: !2240, line: 358, size: 10624, elements: !2942)
!2942 = !{!2943, !2945, !2948, !2951}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "luma16x16_dc", scope: !2941, file: !2240, line: 360, baseType: !2944, size: 256, align: 128)
!2944 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2823, size: 256, elements: !49)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_dc", scope: !2941, file: !2240, line: 361, baseType: !2946, size: 128, align: 128, offset: 256)
!2946 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2823, size: 128, elements: !2947)
!2947 = !{!35, !16}
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "luma8x8", scope: !2941, file: !2240, line: 363, baseType: !2949, size: 4096, align: 128, offset: 384)
!2949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2823, size: 4096, elements: !2950)
!2950 = !{!16, !619}
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "luma4x4", scope: !2941, file: !2240, line: 364, baseType: !2952, size: 6144, align: 128, offset: 4480)
!2952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2823, size: 6144, elements: !2953)
!2953 = !{!2954, !50}
!2954 = !DISubrange(count: 24)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "mb", scope: !2528, file: !2240, line: 544, baseType: !2956, size: 80128, offset: 87040)
!2956 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2528, file: !2240, line: 368, size: 80128, elements: !2957)
!2957 = !{!2958, !2959, !2960, !2961, !2962, !2963, !2964, !2965, !2966, !2967, !2968, !2969, !2970, !2971, !2972, !2973, !2974, !2975, !2976, !2977, !2978, !2979, !2980, !2981, !2982, !2984, !2986, !2987, !2988, !2989, !2990, !2991, !2992, !2993, !2994, !2996, !2999, !3003, !3004, !3005, !3006, !3007, !3011, !3012, !3013, !3016, !3018, !3019, !3020, !3022, !3023, !3024, !3025, !3026, !3027, !3028, !3029, !3069, !3089, !3090, !3091, !3092, !3093, !3094, !3095, !3096, !3097, !3100, !3103, !3105}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !2956, file: !2240, line: 370, baseType: !91, size: 32)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_stride", scope: !2956, file: !2240, line: 373, baseType: !91, size: 32, offset: 32)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "i_b8_stride", scope: !2956, file: !2240, line: 374, baseType: !91, size: 32, offset: 64)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "i_b4_stride", scope: !2956, file: !2240, line: 375, baseType: !91, size: 32, offset: 96)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_x", scope: !2956, file: !2240, line: 378, baseType: !91, size: 32, offset: 128)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_y", scope: !2956, file: !2240, line: 379, baseType: !91, size: 32, offset: 160)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_xy", scope: !2956, file: !2240, line: 380, baseType: !91, size: 32, offset: 192)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "i_b8_xy", scope: !2956, file: !2240, line: 381, baseType: !91, size: 32, offset: 224)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "i_b4_xy", scope: !2956, file: !2240, line: 382, baseType: !91, size: 32, offset: 256)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !2956, file: !2240, line: 385, baseType: !91, size: 32, offset: 288)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !2956, file: !2240, line: 386, baseType: !91, size: 32, offset: 320)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !2956, file: !2240, line: 387, baseType: !91, size: 32, offset: 352)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "b_trellis", scope: !2956, file: !2240, line: 388, baseType: !91, size: 32, offset: 384)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "b_noise_reduction", scope: !2956, file: !2240, line: 389, baseType: !91, size: 32, offset: 416)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_rd", scope: !2956, file: !2240, line: 390, baseType: !91, size: 32, offset: 448)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_trellis", scope: !2956, file: !2240, line: 391, baseType: !91, size: 32, offset: 480)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !2956, file: !2240, line: 393, baseType: !91, size: 32, offset: 512)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min", scope: !2956, file: !2240, line: 396, baseType: !662, size: 64, offset: 544)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max", scope: !2956, file: !2240, line: 397, baseType: !662, size: 64, offset: 608)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min_spel", scope: !2956, file: !2240, line: 400, baseType: !662, size: 64, offset: 672)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max_spel", scope: !2956, file: !2240, line: 401, baseType: !662, size: 64, offset: 736)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min_fpel", scope: !2956, file: !2240, line: 403, baseType: !662, size: 64, offset: 800)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max_fpel", scope: !2956, file: !2240, line: 404, baseType: !662, size: 64, offset: 864)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour", scope: !2956, file: !2240, line: 407, baseType: !75, size: 32, offset: 928)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour8", scope: !2956, file: !2240, line: 408, baseType: !2983, size: 128, offset: 960)
!2983 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 128, elements: !15)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour4", scope: !2956, file: !2240, line: 409, baseType: !2985, size: 512, offset: 1088)
!2985 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 512, elements: !49)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_top", scope: !2956, file: !2240, line: 410, baseType: !91, size: 32, offset: 1600)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_left", scope: !2956, file: !2240, line: 411, baseType: !91, size: 32, offset: 1632)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_topleft", scope: !2956, file: !2240, line: 412, baseType: !91, size: 32, offset: 1664)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_topright", scope: !2956, file: !2240, line: 413, baseType: !91, size: 32, offset: 1696)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_prev_xy", scope: !2956, file: !2240, line: 414, baseType: !91, size: 32, offset: 1728)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_top_xy", scope: !2956, file: !2240, line: 415, baseType: !91, size: 32, offset: 1760)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2956, file: !2240, line: 422, baseType: !2815, size: 64, offset: 1792)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !2956, file: !2240, line: 423, baseType: !2815, size: 64, offset: 1856)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "cbp", scope: !2956, file: !2240, line: 424, baseType: !2995, size: 64, offset: 1920)
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "intra4x4_pred_mode", scope: !2956, file: !2240, line: 425, baseType: !2997, size: 64, offset: 1984)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2816, size: 64, elements: !39)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "non_zero_count", scope: !2956, file: !2240, line: 427, baseType: !3000, size: 64, offset: 2048)
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 192, elements: !3002)
!3002 = !{!2954}
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_pred_mode", scope: !2956, file: !2240, line: 428, baseType: !2815, size: 64, offset: 2112)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !2956, file: !2240, line: 429, baseType: !2820, size: 128, offset: 2176)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !2956, file: !2240, line: 430, baseType: !2820, size: 128, offset: 2304)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2956, file: !2240, line: 431, baseType: !2832, size: 128, offset: 2432)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "mvr", scope: !2956, file: !2240, line: 432, baseType: !3008, size: 4096, offset: 2560)
!3008 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2821, size: 4096, elements: !3009)
!3009 = !{!35, !3010}
!3010 = !DISubrange(count: 32)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "skipbp", scope: !2956, file: !2240, line: 433, baseType: !2815, size: 64, offset: 6656)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "mb_transform_size", scope: !2956, file: !2240, line: 434, baseType: !2815, size: 64, offset: 6720)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "intra_border_backup", scope: !2956, file: !2240, line: 435, baseType: !3014, size: 384, offset: 6784)
!3014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 384, elements: !3015)
!3015 = !{!35, !21}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "nnz_backup", scope: !2956, file: !2240, line: 436, baseType: !3017, size: 64, offset: 7168)
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !2956, file: !2240, line: 439, baseType: !91, size: 32, offset: 7232)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "i_partition", scope: !2956, file: !2240, line: 440, baseType: !91, size: 32, offset: 7264)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "i_sub_partition", scope: !2956, file: !2240, line: 441, baseType: !3021, size: 128, offset: 7296)
!3021 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 128, elements: !15)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !2956, file: !2240, line: 442, baseType: !91, size: 32, offset: 7424)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_luma", scope: !2956, file: !2240, line: 444, baseType: !91, size: 32, offset: 7456)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_chroma", scope: !2956, file: !2240, line: 445, baseType: !91, size: 32, offset: 7488)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra16x16_pred_mode", scope: !2956, file: !2240, line: 447, baseType: !91, size: 32, offset: 7520)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_pred_mode", scope: !2956, file: !2240, line: 448, baseType: !91, size: 32, offset: 7552)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "i_skip_intra", scope: !2956, file: !2240, line: 454, baseType: !91, size: 32, offset: 7584)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "b_skip_mc", scope: !2956, file: !2240, line: 457, baseType: !91, size: 32, offset: 7616)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "pic", scope: !2956, file: !2240, line: 498, baseType: !3030, size: 57344, offset: 7680)
!3030 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2956, file: !2240, line: 459, size: 57344, elements: !3031)
!3031 = !{!3032, !3036, !3040, !3042, !3043, !3046, !3049, !3050, !3053, !3054, !3055, !3058, !3059, !3060, !3061, !3062, !3063, !3066, !3068}
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_buf", scope: !3030, file: !2240, line: 464, baseType: !3033, size: 3072, align: 128)
!3033 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 3072, elements: !3034)
!3034 = !{!3035}
!3035 = !DISubrange(count: 384)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "fdec_buf", scope: !3030, file: !2240, line: 465, baseType: !3037, size: 6912, align: 128, offset: 3072)
!3037 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 6912, elements: !3038)
!3038 = !{!3039}
!3039 = !DISubrange(count: 864)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_fdec_buf", scope: !3030, file: !2240, line: 468, baseType: !3041, size: 2048, align: 128, offset: 9984)
!3041 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 2048, elements: !2600)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_fdec_buf", scope: !3030, file: !2240, line: 469, baseType: !3041, size: 2048, align: 128, offset: 12032)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_dct_buf", scope: !3030, file: !2240, line: 470, baseType: !3044, size: 3072, align: 128, offset: 14080)
!3044 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2823, size: 3072, elements: !3045)
!3045 = !{!21, !619}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_dct_buf", scope: !3030, file: !2240, line: 471, baseType: !3047, size: 3840, align: 128, offset: 17152)
!3047 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2823, size: 3840, elements: !3048)
!3048 = !{!6, !50}
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_dct8", scope: !3030, file: !2240, line: 474, baseType: !2949, size: 4096, align: 128, offset: 20992)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_dct4", scope: !3030, file: !2240, line: 475, baseType: !3051, size: 4096, align: 128, offset: 25088)
!3051 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2823, size: 4096, elements: !3052)
!3052 = !{!50, !50}
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_satd", scope: !3030, file: !2240, line: 478, baseType: !2683, size: 512, offset: 29184)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_satd_sum", scope: !3030, file: !2240, line: 479, baseType: !91, size: 32, offset: 29696)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_sa8d", scope: !3030, file: !2240, line: 480, baseType: !3056, size: 128, offset: 29728)
!3056 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 128, elements: !3057)
!3057 = !{!35, !35}
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_sa8d_sum", scope: !3030, file: !2240, line: 481, baseType: !91, size: 32, offset: 29856)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "p_fenc", scope: !3030, file: !2240, line: 484, baseType: !2806, size: 192, offset: 29888)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "p_fenc_plane", scope: !3030, file: !2240, line: 486, baseType: !2806, size: 192, offset: 30080)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "p_fdec", scope: !3030, file: !2240, line: 489, baseType: !2806, size: 192, offset: 30272)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "i_fref", scope: !3030, file: !2240, line: 492, baseType: !662, size: 64, offset: 30464)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "p_fref", scope: !3030, file: !2240, line: 493, baseType: !3064, size: 24576, offset: 30528)
!3064 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 24576, elements: !3065)
!3065 = !{!35, !3010, !26}
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "p_integral", scope: !3030, file: !2240, line: 494, baseType: !3067, size: 2048, offset: 55104)
!3067 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2811, size: 2048, elements: !2749)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !3030, file: !2240, line: 497, baseType: !2799, size: 96, offset: 57152)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !2956, file: !2240, line: 526, baseType: !3070, size: 12032, offset: 65024)
!3070 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2956, file: !2240, line: 501, size: 12032, elements: !3071)
!3071 = !{!3072, !3074, !3076, !3079, !3082, !3083, !3084, !3085, !3086, !3087, !3088}
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "intra4x4_pred_mode", scope: !3070, file: !2240, line: 504, baseType: !3073, size: 384)
!3073 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2816, size: 384, elements: !2909)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "non_zero_count", scope: !3070, file: !2240, line: 507, baseType: !3075, size: 384, offset: 384)
!3075 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 384, elements: !2909)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3070, file: !2240, line: 510, baseType: !3077, size: 768, align: 32, offset: 768)
!3077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2816, size: 768, elements: !3078)
!3078 = !{!35, !2910}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !3070, file: !2240, line: 513, baseType: !3080, size: 3072, align: 128, offset: 1536)
!3080 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2823, size: 3072, elements: !3081)
!3081 = !{!35, !2910, !35}
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !3070, file: !2240, line: 514, baseType: !3080, size: 3072, align: 64, offset: 4608)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "skip", scope: !3070, file: !2240, line: 517, baseType: !3073, size: 384, align: 32, offset: 7680)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "direct_mv", scope: !3070, file: !2240, line: 519, baseType: !3080, size: 3072, align: 128, offset: 8064)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "direct_ref", scope: !3070, file: !2240, line: 520, baseType: !3077, size: 768, align: 32, offset: 11136)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "pskip_mv", scope: !3070, file: !2240, line: 521, baseType: !2822, size: 32, align: 32, offset: 11904)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_transform_size", scope: !3070, file: !2240, line: 524, baseType: !91, size: 32, offset: 11936)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_interlaced", scope: !3070, file: !2240, line: 525, baseType: !91, size: 32, offset: 11968)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !2956, file: !2240, line: 529, baseType: !91, size: 32, offset: 77056)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp", scope: !2956, file: !2240, line: 530, baseType: !91, size: 32, offset: 77088)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_qp", scope: !2956, file: !2240, line: 531, baseType: !91, size: 32, offset: 77120)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_dqp", scope: !2956, file: !2240, line: 532, baseType: !91, size: 32, offset: 77152)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "b_variable_qp", scope: !2956, file: !2240, line: 533, baseType: !91, size: 32, offset: 77184)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "b_lossless", scope: !2956, file: !2240, line: 534, baseType: !91, size: 32, offset: 77216)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_auto_read", scope: !2956, file: !2240, line: 535, baseType: !91, size: 32, offset: 77248)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_auto_write", scope: !2956, file: !2240, line: 536, baseType: !91, size: 32, offset: 77280)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "dist_scale_factor", scope: !2956, file: !2240, line: 539, baseType: !3098, size: 512, offset: 77312)
!3098 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2823, size: 512, elements: !3099)
!3099 = !{!50, !35}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_weight", scope: !2956, file: !2240, line: 540, baseType: !3101, size: 2048, offset: 77824)
!3101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2823, size: 2048, elements: !3102)
!3102 = !{!3010, !16}
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "map_col_to_list0_buf", scope: !2956, file: !2240, line: 542, baseType: !3104, size: 16, offset: 79872)
!3104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2816, size: 16, elements: !34)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "map_col_to_list0", scope: !2956, file: !2240, line: 543, baseType: !3106, size: 128, offset: 79888)
!3106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2816, size: 128, elements: !49)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !2528, file: !2240, line: 547, baseType: !3108, size: 64, offset: 167168)
!3108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3109, size: 64)
!3109 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_ratecontrol_t", file: !2240, line: 248, baseType: !3110)
!3110 = !DICompositeType(tag: DW_TAG_structure_type, name: "x264_ratecontrol_t", file: !2240, line: 248, flags: DIFlagFwdDecl)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !2528, file: !2240, line: 604, baseType: !3112, size: 23936, offset: 167232)
!3112 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2528, file: !2240, line: 550, size: 23936, elements: !3113)
!3113 = !{!3114, !3137, !3139, !3141, !3143, !3144, !3145, !3146, !3147, !3148, !3149, !3150, !3153, !3155, !3157, !3160, !3161}
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !3112, file: !2240, line: 579, baseType: !3115, size: 3904)
!3115 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3112, file: !2240, line: 553, size: 3904, elements: !3116)
!3116 = !{!3117, !3118, !3119, !3120, !3122, !3123, !3124, !3125, !3126, !3128, !3130, !3131, !3132, !3133, !3134, !3136}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_bits", scope: !3115, file: !2240, line: 556, baseType: !91, size: 32)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "i_tex_bits", scope: !3115, file: !2240, line: 558, baseType: !91, size: 32, offset: 32)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "i_misc_bits", scope: !3115, file: !2240, line: 560, baseType: !91, size: 32, offset: 64)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !3115, file: !2240, line: 562, baseType: !3121, size: 608, offset: 96)
!3121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 608, elements: !2935)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_i", scope: !3115, file: !2240, line: 563, baseType: !91, size: 32, offset: 704)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_p", scope: !3115, file: !2240, line: 564, baseType: !91, size: 32, offset: 736)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_skip", scope: !3115, file: !2240, line: 565, baseType: !91, size: 32, offset: 768)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_8x8dct", scope: !3115, file: !2240, line: 566, baseType: !662, size: 64, offset: 800)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_ref", scope: !3115, file: !2240, line: 567, baseType: !3127, size: 2048, offset: 864)
!3127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 2048, elements: !3009)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_partition", scope: !3115, file: !2240, line: 568, baseType: !3129, size: 544, offset: 2912)
!3129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 544, elements: !229)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_cost", scope: !3115, file: !2240, line: 571, baseType: !91, size: 32, offset: 3456)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "i_inter_cost", scope: !3115, file: !2240, line: 572, baseType: !91, size: 32, offset: 3488)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "i_mbs_analysed", scope: !3115, file: !2240, line: 573, baseType: !91, size: 32, offset: 3520)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_score", scope: !3115, file: !2240, line: 575, baseType: !662, size: 64, offset: 3552)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "i_ssd", scope: !3115, file: !2240, line: 577, baseType: !3135, size: 192, offset: 3648)
!3135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2789, size: 192, elements: !20)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "f_ssim", scope: !3115, file: !2240, line: 578, baseType: !1113, size: 64, offset: 3840)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_count", scope: !3112, file: !2240, line: 584, baseType: !3138, size: 160, offset: 3904)
!3138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 160, elements: !10)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_size", scope: !3112, file: !2240, line: 585, baseType: !3140, size: 320, offset: 4096)
!3140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2789, size: 320, elements: !10)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "f_slice_qp", scope: !3112, file: !2240, line: 586, baseType: !3142, size: 320, offset: 4416)
!3142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1113, size: 320, elements: !10)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "i_consecutive_bframes", scope: !3112, file: !2240, line: 587, baseType: !3129, size: 544, offset: 4736)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "i_ssd_global", scope: !3112, file: !2240, line: 589, baseType: !3140, size: 320, offset: 5312)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_average", scope: !3112, file: !2240, line: 590, baseType: !3142, size: 320, offset: 5632)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_y", scope: !3112, file: !2240, line: 591, baseType: !3142, size: 320, offset: 5952)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_u", scope: !3112, file: !2240, line: 592, baseType: !3142, size: 320, offset: 6272)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_v", scope: !3112, file: !2240, line: 593, baseType: !3142, size: 320, offset: 6592)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "f_ssim_mean_y", scope: !3112, file: !2240, line: 594, baseType: !3142, size: 320, offset: 6912)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !3112, file: !2240, line: 596, baseType: !3151, size: 6080, offset: 7232)
!3151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2789, size: 6080, elements: !3152)
!3152 = !{!11, !2936}
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_partition", scope: !3112, file: !2240, line: 597, baseType: !3154, size: 2176, offset: 13312)
!3154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2789, size: 2176, elements: !2828)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_8x8dct", scope: !3112, file: !2240, line: 598, baseType: !3156, size: 128, offset: 15488)
!3156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2789, size: 128, elements: !34)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_ref", scope: !3112, file: !2240, line: 599, baseType: !3158, size: 8192, offset: 15616)
!3158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2789, size: 8192, elements: !3159)
!3159 = !{!35, !35, !3010}
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_score", scope: !3112, file: !2240, line: 601, baseType: !662, size: 64, offset: 23808)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_frames", scope: !3112, file: !2240, line: 602, baseType: !662, size: 64, offset: 23872)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "predict_16x16", scope: !2528, file: !2240, line: 607, baseType: !3163, size: 448, offset: 191168)
!3163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3164, size: 448, elements: !124)
!3164 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict_t", file: !3165, line: 27, baseType: !3166)
!3165 = !DIFile(filename: "common/predict.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "c7827bfe44f4a550b7080533457a8327")
!3166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3167, size: 64)
!3167 = !DISubroutineType(types: !3168)
!3168 = !{null, !93}
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8c", scope: !2528, file: !2240, line: 608, baseType: !3163, size: 448, offset: 191616)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8", scope: !2528, file: !2240, line: 609, baseType: !3171, size: 768, offset: 192064)
!3171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3172, size: 768, elements: !103)
!3172 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict8x8_t", file: !3165, line: 28, baseType: !3173)
!3173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3174, size: 64)
!3174 = !DISubroutineType(types: !3175)
!3175 = !{null, !93, !93}
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "predict_4x4", scope: !2528, file: !2240, line: 610, baseType: !3177, size: 768, offset: 192832)
!3177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3164, size: 768, elements: !103)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "pixf", scope: !2528, file: !2240, line: 612, baseType: !3179, size: 8000, offset: 193600)
!3179 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_function_t", file: !3180, line: 103, baseType: !3181)
!3180 = !DIFile(filename: "common/pixel.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "aba138e44f0e52bc0158be0d182b79c1")
!3181 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3180, line: 63, size: 8000, elements: !3182)
!3182 = !{!3183, !3189, !3190, !3191, !3192, !3194, !3195, !3196, !3197, !3203, !3209, !3210, !3216, !3223, !3228, !3232, !3233, !3234, !3235, !3236, !3241, !3245, !3246, !3247, !3248, !3249}
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "sad", scope: !3181, file: !3180, line: 65, baseType: !3184, size: 448)
!3184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3185, size: 448, elements: !124)
!3185 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_t", file: !3180, line: 26, baseType: !3186)
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3187, size: 64)
!3187 = !DISubroutineType(types: !3188)
!3188 = !{!91, !93, !91, !93, !91}
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "ssd", scope: !3181, file: !3180, line: 66, baseType: !3184, size: 448, offset: 448)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "satd", scope: !3181, file: !3180, line: 67, baseType: !3184, size: 448, offset: 896)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "ssim", scope: !3181, file: !3180, line: 68, baseType: !3184, size: 448, offset: 1344)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "sa8d", scope: !3181, file: !3180, line: 69, baseType: !3193, size: 256, offset: 1792)
!3193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3185, size: 256, elements: !15)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "mbcmp", scope: !3181, file: !3180, line: 70, baseType: !3184, size: 448, offset: 2048)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "mbcmp_unaligned", scope: !3181, file: !3180, line: 71, baseType: !3184, size: 448, offset: 2496)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp", scope: !3181, file: !3180, line: 72, baseType: !3184, size: 448, offset: 2944)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp_x3", scope: !3181, file: !3180, line: 73, baseType: !3198, size: 448, offset: 3392)
!3198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3199, size: 448, elements: !124)
!3199 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_x3_t", file: !3180, line: 27, baseType: !3200)
!3200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3201, size: 64)
!3201 = !DISubroutineType(types: !3202)
!3202 = !{null, !93, !93, !93, !93, !91, !1016}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp_x4", scope: !3181, file: !3180, line: 74, baseType: !3204, size: 448, offset: 3840)
!3204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3205, size: 448, elements: !124)
!3205 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_x4_t", file: !3180, line: 28, baseType: !3206)
!3206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3207, size: 64)
!3207 = !DISubroutineType(types: !3208)
!3208 = !{null, !93, !93, !93, !93, !93, !91, !1016}
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "sad_aligned", scope: !3181, file: !3180, line: 75, baseType: !3184, size: 448, offset: 4288)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !3181, file: !3180, line: 77, baseType: !3211, size: 256, offset: 4736)
!3211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3212, size: 256, elements: !15)
!3212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3213, size: 64)
!3213 = !DISubroutineType(types: !3214)
!3214 = !{!91, !93, !91, !3215}
!3215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "hadamard_ac", scope: !3181, file: !3180, line: 78, baseType: !3217, size: 256, offset: 4992)
!3217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3218, size: 256, elements: !15)
!3218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3219, size: 64)
!3219 = !DISubroutineType(types: !3220)
!3220 = !{!3221, !93, !91}
!3221 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !95, line: 27, baseType: !3222)
!3222 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !97, line: 45, baseType: !2416)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "ssim_4x4x2_core", scope: !3181, file: !3180, line: 80, baseType: !3224, size: 64, offset: 5248)
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3225, size: 64)
!3225 = !DISubroutineType(types: !3226)
!3226 = !{null, !2675, !91, !2675, !91, !3227}
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "ssim_end4", scope: !3181, file: !3180, line: 82, baseType: !3229, size: 64, offset: 5312)
!3229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3230, size: 64)
!3230 = !DISubroutineType(types: !3231)
!3231 = !{!659, !3227, !3227, !91}
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "sad_x3", scope: !3181, file: !3180, line: 85, baseType: !3198, size: 448, offset: 5376)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "sad_x4", scope: !3181, file: !3180, line: 86, baseType: !3204, size: 448, offset: 5824)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "satd_x3", scope: !3181, file: !3180, line: 87, baseType: !3198, size: 448, offset: 6272)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "satd_x4", scope: !3181, file: !3180, line: 88, baseType: !3204, size: 448, offset: 6720)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "ads", scope: !3181, file: !3180, line: 92, baseType: !3237, size: 448, offset: 7168)
!3237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3238, size: 448, elements: !124)
!3238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3239, size: 64)
!3239 = !DISubroutineType(types: !3240)
!3240 = !{!91, !1016, !2811, !91, !2811, !2995, !91, !91}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_16x16", scope: !3181, file: !3180, line: 97, baseType: !3242, size: 64, offset: 7616)
!3242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3243, size: 64)
!3243 = !DISubroutineType(types: !3244)
!3244 = !{null, !93, !93, !1016}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_16x16", scope: !3181, file: !3180, line: 98, baseType: !3242, size: 64, offset: 7680)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_16x16", scope: !3181, file: !3180, line: 99, baseType: !3242, size: 64, offset: 7744)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_8x8c", scope: !3181, file: !3180, line: 100, baseType: !3242, size: 64, offset: 7808)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_4x4", scope: !3181, file: !3180, line: 101, baseType: !3242, size: 64, offset: 7872)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sa8d_x3_8x8", scope: !3181, file: !3180, line: 102, baseType: !3242, size: 64, offset: 7936)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "mc", scope: !2528, file: !2240, line: 613, baseType: !3251, size: 1792, offset: 201600)
!3251 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_mc_functions_t", file: !3252, line: 71, baseType: !3253)
!3252 = !DIFile(filename: "common/mc.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "d49d7420aafa05a86bee506aef111ff0")
!3253 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3252, line: 31, size: 1792, elements: !3254)
!3254 = !{!3255, !3260, !3264, !3268, !3273, !3278, !3279, !3283, !3287, !3288, !3292, !3298, !3302}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "mc_luma", scope: !3253, file: !3252, line: 33, baseType: !3256, size: 64)
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = !DISubroutineType(types: !3258)
!3258 = !{null, !93, !91, !3259, !91, !91, !91, !91, !91}
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "get_ref", scope: !3253, file: !3252, line: 38, baseType: !3261, size: 64, offset: 64)
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{!93, !93, !1016, !3259, !91, !91, !91, !91, !91}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "mc_chroma", scope: !3253, file: !3252, line: 44, baseType: !3265, size: 64, offset: 128)
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3266, size: 64)
!3266 = !DISubroutineType(types: !3267)
!3267 = !{null, !93, !91, !93, !91, !91, !91, !91, !91}
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !3253, file: !3252, line: 48, baseType: !3269, size: 640, offset: 192)
!3269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3270, size: 640, elements: !56)
!3270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3271, size: 64)
!3271 = !DISubroutineType(types: !3272)
!3272 = !{null, !93, !91, !93, !91, !93, !91, !91}
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !3253, file: !3252, line: 51, baseType: !3274, size: 448, offset: 832)
!3274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3275, size: 448, elements: !124)
!3275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3276, size: 64)
!3276 = !DISubroutineType(types: !3277)
!3277 = !{null, !93, !91, !93, !91, !91}
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "copy_16x16_unaligned", scope: !3253, file: !3252, line: 52, baseType: !3275, size: 64, offset: 1280)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "plane_copy", scope: !3253, file: !3252, line: 54, baseType: !3280, size: 64, offset: 1344)
!3280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3281, size: 64)
!3281 = !DISubroutineType(types: !3282)
!3282 = !{null, !93, !91, !93, !91, !91, !91}
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "hpel_filter", scope: !3253, file: !3252, line: 57, baseType: !3284, size: 64, offset: 1408)
!3284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3285, size: 64)
!3285 = !DISubroutineType(types: !3286)
!3286 = !{null, !93, !93, !93, !93, !91, !91, !91}
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "prefetch_fenc", scope: !3253, file: !3252, line: 61, baseType: !3275, size: 64, offset: 1472)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "prefetch_ref", scope: !3253, file: !3252, line: 64, baseType: !3289, size: 64, offset: 1536)
!3289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3290, size: 64)
!3290 = !DISubroutineType(types: !3291)
!3291 = !{null, !93, !91, !91}
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "memcpy_aligned", scope: !3253, file: !3252, line: 66, baseType: !3293, size: 64, offset: 1600)
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3294, size: 64)
!3294 = !DISubroutineType(types: !3295)
!3295 = !{!90, !90, !3296, !2414}
!3296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3297, size: 64)
!3297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "memzero_aligned", scope: !3253, file: !3252, line: 67, baseType: !3299, size: 64, offset: 1664)
!3299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3300, size: 64)
!3300 = !DISubroutineType(types: !3301)
!3301 = !{null, !90, !91}
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "frame_init_lowres_core", scope: !3253, file: !3252, line: 69, baseType: !3303, size: 64, offset: 1728)
!3303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3304, size: 64)
!3304 = !DISubroutineType(types: !3305)
!3305 = !{null, !93, !93, !93, !93, !93, !91, !91, !91, !91}
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "dctf", scope: !2528, file: !2240, line: 614, baseType: !3307, size: 768, offset: 203392)
!3307 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_dct_function_t", file: !3308, line: 112, baseType: !3309)
!3308 = !DIFile(filename: "common/dct.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "eb76275dd7785989f0d8a4ada39e3c74")
!3309 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3308, line: 89, size: 768, elements: !3310)
!3310 = !{!3311, !3317, !3321, !3327, !3331, !3332, !3333, !3339, !3343, !3349, !3353, !3357}
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "sub4x4_dct", scope: !3309, file: !3308, line: 94, baseType: !3312, size: 64)
!3312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3313, size: 64)
!3313 = !DISubroutineType(types: !3314)
!3314 = !{null, !3315, !93, !93}
!3315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3316, size: 64)
!3316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2823, size: 64, elements: !15)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "add4x4_idct", scope: !3309, file: !3308, line: 95, baseType: !3318, size: 64, offset: 64)
!3318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3319, size: 64)
!3319 = !DISubroutineType(types: !3320)
!3320 = !{null, !93, !3315}
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct", scope: !3309, file: !3308, line: 97, baseType: !3322, size: 64, offset: 128)
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3323 = !DISubroutineType(types: !3324)
!3324 = !{null, !3325, !93, !93}
!3325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3326, size: 64)
!3326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2823, size: 256, elements: !2684)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct", scope: !3309, file: !3308, line: 98, baseType: !3328, size: 64, offset: 192)
!3328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3329, size: 64)
!3329 = !DISubroutineType(types: !3330)
!3330 = !{null, !93, !3325}
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "sub16x16_dct", scope: !3309, file: !3308, line: 100, baseType: !3322, size: 64, offset: 256)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct", scope: !3309, file: !3308, line: 101, baseType: !3328, size: 64, offset: 320)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct8", scope: !3309, file: !3308, line: 103, baseType: !3334, size: 64, offset: 384)
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3335, size: 64)
!3335 = !DISubroutineType(types: !3336)
!3336 = !{null, !3337, !93, !93}
!3337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3338, size: 64)
!3338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2823, size: 128, elements: !39)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct8", scope: !3309, file: !3308, line: 104, baseType: !3340, size: 64, offset: 448)
!3340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3341, size: 64)
!3341 = !DISubroutineType(types: !3342)
!3342 = !{null, !93, !3337}
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "sub16x16_dct8", scope: !3309, file: !3308, line: 106, baseType: !3344, size: 64, offset: 512)
!3344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3345, size: 64)
!3345 = !DISubroutineType(types: !3346)
!3346 = !{null, !3347, !93, !93}
!3347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3348, size: 64)
!3348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2823, size: 1024, elements: !2689)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct8", scope: !3309, file: !3308, line: 107, baseType: !3350, size: 64, offset: 576)
!3350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3351, size: 64)
!3351 = !DISubroutineType(types: !3352)
!3352 = !{null, !93, !3347}
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "dct4x4dc", scope: !3309, file: !3308, line: 109, baseType: !3354, size: 64, offset: 640)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = !DISubroutineType(types: !3356)
!3356 = !{null, !3315}
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "idct4x4dc", scope: !3309, file: !3308, line: 110, baseType: !3354, size: 64, offset: 704)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "zigzagf", scope: !2528, file: !2240, line: 615, baseType: !3359, size: 320, offset: 204160)
!3359 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zigzag_function_t", file: !3308, line: 122, baseType: !3360)
!3360 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3308, line: 114, size: 320, elements: !3361)
!3361 = !{!3362, !3366, !3370, !3374, !3375}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "scan_8x8", scope: !3360, file: !3308, line: 116, baseType: !3363, size: 64)
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3364, size: 64)
!3364 = !DISubroutineType(types: !3365)
!3365 = !{null, !2995, !3337}
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "scan_4x4", scope: !3360, file: !3308, line: 117, baseType: !3367, size: 64, offset: 64)
!3367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3368, size: 64)
!3368 = !DISubroutineType(types: !3369)
!3369 = !{null, !2995, !3315}
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "sub_8x8", scope: !3360, file: !3308, line: 118, baseType: !3371, size: 64, offset: 128)
!3371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3372, size: 64)
!3372 = !DISubroutineType(types: !3373)
!3373 = !{null, !2995, !2675, !93}
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "sub_4x4", scope: !3360, file: !3308, line: 119, baseType: !3371, size: 64, offset: 192)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "interleave_8x8_cavlc", scope: !3360, file: !3308, line: 120, baseType: !3376, size: 64, offset: 256)
!3376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3377, size: 64)
!3377 = !DISubroutineType(types: !3378)
!3378 = !{null, !2995, !2995}
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "quantf", scope: !2528, file: !2240, line: 616, baseType: !3380, size: 1088, offset: 204480)
!3380 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_quant_function_t", file: !3381, line: 43, baseType: !3382)
!3381 = !DIFile(filename: "common/quant.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "fe7c19d3e69b65b38e52c43c47235f27")
!3382 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3381, line: 26, size: 1088, elements: !3383)
!3383 = !{!3384, !3388, !3392, !3396, !3400, !3404, !3408, !3409, !3413, !3417, !3418, !3419}
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "quant_8x8", scope: !3382, file: !3381, line: 28, baseType: !3385, size: 64)
!3385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3386, size: 64)
!3386 = !DISubroutineType(types: !3387)
!3387 = !{null, !3337, !2811, !2811}
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "quant_4x4", scope: !3382, file: !3381, line: 29, baseType: !3389, size: 64, offset: 64)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = !DISubroutineType(types: !3391)
!3391 = !{null, !3315, !2811, !2811}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "quant_4x4_dc", scope: !3382, file: !3381, line: 30, baseType: !3393, size: 64, offset: 128)
!3393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3394, size: 64)
!3394 = !DISubroutineType(types: !3395)
!3395 = !{null, !3315, !91, !91}
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "quant_2x2_dc", scope: !3382, file: !3381, line: 31, baseType: !3397, size: 64, offset: 192)
!3397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3398, size: 64)
!3398 = !DISubroutineType(types: !3399)
!3399 = !{null, !2821, !91, !91}
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_8x8", scope: !3382, file: !3381, line: 33, baseType: !3401, size: 64, offset: 256)
!3401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3402, size: 64)
!3402 = !DISubroutineType(types: !3403)
!3403 = !{null, !3337, !2687, !91}
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_4x4", scope: !3382, file: !3381, line: 34, baseType: !3405, size: 64, offset: 320)
!3405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3406, size: 64)
!3406 = !DISubroutineType(types: !3407)
!3407 = !{null, !3315, !2682, !91}
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_4x4_dc", scope: !3382, file: !3381, line: 35, baseType: !3405, size: 64, offset: 384)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "denoise_dct", scope: !3382, file: !3381, line: 37, baseType: !3410, size: 64, offset: 448)
!3410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3411, size: 64)
!3411 = !DISubroutineType(types: !3412)
!3412 = !{null, !2995, !3215, !2811, !91}
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score15", scope: !3382, file: !3381, line: 39, baseType: !3414, size: 64, offset: 512)
!3414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3415, size: 64)
!3415 = !DISubroutineType(types: !3416)
!3416 = !{!91, !2995}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score16", scope: !3382, file: !3381, line: 40, baseType: !3414, size: 64, offset: 576)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score64", scope: !3382, file: !3381, line: 41, baseType: !3414, size: 64, offset: 640)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_last", scope: !3382, file: !3381, line: 42, baseType: !3420, size: 384, offset: 704)
!3420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3414, size: 384, elements: !25)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "loopf", scope: !2528, file: !2240, line: 617, baseType: !3422, size: 512, offset: 205568)
!3422 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_function_t", file: !2782, line: 108, baseType: !3423)
!3423 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2782, line: 98, size: 512, elements: !3424)
!3424 = !{!3425, !3430, !3431, !3432, !3433, !3438, !3439, !3440}
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_v_luma", scope: !3423, file: !2782, line: 100, baseType: !3426, size: 64)
!3426 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_inter_t", file: !2782, line: 96, baseType: !3427)
!3427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3428, size: 64)
!3428 = !DISubroutineType(types: !3429)
!3429 = !{null, !93, !91, !91, !91, !2815}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_h_luma", scope: !3423, file: !2782, line: 101, baseType: !3426, size: 64, offset: 64)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_v_chroma", scope: !3423, file: !2782, line: 102, baseType: !3426, size: 64, offset: 128)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_h_chroma", scope: !3423, file: !2782, line: 103, baseType: !3426, size: 64, offset: 192)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_v_luma_intra", scope: !3423, file: !2782, line: 104, baseType: !3434, size: 64, offset: 256)
!3434 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_intra_t", file: !2782, line: 97, baseType: !3435)
!3435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3436, size: 64)
!3436 = !DISubroutineType(types: !3437)
!3437 = !{null, !93, !91, !91, !91}
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_h_luma_intra", scope: !3423, file: !2782, line: 105, baseType: !3434, size: 64, offset: 320)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_v_chroma_intra", scope: !3423, file: !2782, line: 106, baseType: !3434, size: 64, offset: 384)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_h_chroma_intra", scope: !3423, file: !2782, line: 107, baseType: !3434, size: 64, offset: 448)
!3441 = !{!3442, !3443, !3444, !3445}
!3442 = !DILocalVariable(name: "h", arg: 1, scope: !2523, file: !2, line: 592, type: !2526)
!3443 = !DILocalVariable(name: "i_level", arg: 2, scope: !2523, file: !2, line: 592, type: !91)
!3444 = !DILocalVariable(name: "psz_fmt", arg: 3, scope: !2523, file: !2, line: 592, type: !483)
!3445 = !DILocalVariable(name: "arg", scope: !3446, file: !2, line: 596, type: !3448)
!3446 = distinct !DILexicalBlock(scope: !3447, file: !2, line: 595, column: 5)
!3447 = distinct !DILexicalBlock(scope: !2523, file: !2, line: 594, column: 9)
!3448 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2462, line: 52, baseType: !3449)
!3449 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3450, line: 14, baseType: !3451)
!3450 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stdarg.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!3451 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !629, baseType: !3452)
!3452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !626, size: 192, elements: !408)
!3453 = !DILocation(line: 0, scope: !2523)
!3454 = !DILocation(line: 594, column: 29, scope: !3447)
!3455 = !{!3456, !715, i64 360}
!3456 = !{!"x264_t", !714, i64 0, !716, i64 616, !3457, i64 1640, !715, i64 1648, !715, i64 1652, !3458, i64 1656, !715, i64 1920, !715, i64 1924, !715, i64 1928, !715, i64 1932, !715, i64 1936, !715, i64 1940, !715, i64 1944, !715, i64 1948, !715, i64 1952, !716, i64 1956, !719, i64 3200, !716, i64 3208, !719, i64 3328, !715, i64 3336, !716, i64 3344, !716, i64 3376, !716, i64 3392, !716, i64 3424, !716, i64 3440, !716, i64 3472, !716, i64 3488, !716, i64 3520, !719, i64 3536, !716, i64 3552, !716, i64 4064, !716, i64 4320, !3460, i64 4328, !3461, i64 4720, !3462, i64 5232, !719, i64 9208, !719, i64 9216, !715, i64 9224, !716, i64 9232, !715, i64 9384, !716, i64 9392, !716, i64 9544, !3463, i64 9552, !3464, i64 10880, !719, i64 20896, !3467, i64 20904, !716, i64 23896, !716, i64 23952, !716, i64 24008, !716, i64 24104, !3470, i64 24200, !3471, i64 25200, !3472, i64 25424, !3473, i64 25520, !3474, i64 25560, !3475, i64 25696}
!3457 = !{!"long", !716, i64 0}
!3458 = !{!"", !715, i64 0, !716, i64 8, !715, i64 200, !719, i64 208, !3459, i64 216, !715, i64 256}
!3459 = !{!"bs_s", !719, i64 0, !719, i64 8, !719, i64 16, !3457, i64 24, !715, i64 32, !715, i64 36}
!3460 = !{!"", !719, i64 0, !719, i64 8, !715, i64 16, !715, i64 20, !715, i64 24, !715, i64 28, !715, i64 32, !715, i64 36, !715, i64 40, !715, i64 44, !715, i64 48, !715, i64 52, !715, i64 56, !716, i64 60, !715, i64 68, !715, i64 72, !715, i64 76, !715, i64 80, !715, i64 84, !715, i64 88, !715, i64 92, !716, i64 96, !715, i64 352, !715, i64 356, !715, i64 360, !715, i64 364, !715, i64 368, !715, i64 372, !715, i64 376, !715, i64 380}
!3461 = !{!"", !715, i64 0, !715, i64 4, !715, i64 8, !715, i64 12, !719, i64 16, !719, i64 24, !719, i64 32, !715, i64 48, !716, i64 52}
!3462 = !{!"", !716, i64 0, !716, i64 536, !716, i64 1072, !719, i64 3792, !716, i64 3800, !715, i64 3944, !715, i64 3948, !715, i64 3952, !715, i64 3956, !715, i64 3960, !715, i64 3964, !715, i64 3968}
!3463 = !{!"", !716, i64 0, !716, i64 32, !716, i64 48, !716, i64 560}
!3464 = !{!"", !715, i64 0, !715, i64 4, !715, i64 8, !715, i64 12, !715, i64 16, !715, i64 20, !715, i64 24, !715, i64 28, !715, i64 32, !715, i64 36, !715, i64 40, !715, i64 44, !715, i64 48, !715, i64 52, !715, i64 56, !715, i64 60, !715, i64 64, !716, i64 68, !716, i64 76, !716, i64 84, !716, i64 92, !716, i64 100, !716, i64 108, !715, i64 116, !716, i64 120, !716, i64 136, !715, i64 200, !715, i64 204, !715, i64 208, !715, i64 212, !715, i64 216, !715, i64 220, !719, i64 224, !719, i64 232, !719, i64 240, !719, i64 248, !719, i64 256, !719, i64 264, !716, i64 272, !716, i64 288, !716, i64 304, !716, i64 320, !719, i64 832, !719, i64 840, !716, i64 848, !719, i64 896, !715, i64 904, !715, i64 908, !716, i64 912, !715, i64 928, !715, i64 932, !715, i64 936, !715, i64 940, !715, i64 944, !715, i64 948, !715, i64 952, !3465, i64 960, !3466, i64 8128, !715, i64 9632, !715, i64 9636, !715, i64 9640, !715, i64 9644, !715, i64 9648, !715, i64 9652, !715, i64 9656, !715, i64 9660, !716, i64 9664, !716, i64 9728, !716, i64 9984, !716, i64 9986}
!3465 = !{!"", !716, i64 0, !716, i64 384, !716, i64 1248, !716, i64 1504, !716, i64 1760, !716, i64 2144, !716, i64 2624, !716, i64 3136, !716, i64 3648, !715, i64 3712, !716, i64 3716, !715, i64 3732, !716, i64 3736, !716, i64 3760, !716, i64 3784, !716, i64 3808, !716, i64 3816, !716, i64 6888, !716, i64 7144}
!3466 = !{!"", !716, i64 0, !716, i64 48, !716, i64 96, !716, i64 192, !716, i64 576, !716, i64 960, !716, i64 1008, !716, i64 1392, !716, i64 1488, !715, i64 1492, !715, i64 1496}
!3467 = !{!"", !3468, i64 0, !716, i64 488, !716, i64 512, !716, i64 552, !716, i64 592, !716, i64 664, !716, i64 704, !716, i64 744, !716, i64 784, !716, i64 824, !716, i64 864, !716, i64 904, !716, i64 1664, !716, i64 1936, !716, i64 1952, !716, i64 2976, !716, i64 2984}
!3468 = !{!"", !715, i64 0, !715, i64 4, !715, i64 8, !716, i64 12, !715, i64 88, !715, i64 92, !715, i64 96, !716, i64 100, !716, i64 108, !716, i64 364, !715, i64 432, !715, i64 436, !715, i64 440, !716, i64 444, !716, i64 456, !3469, i64 480}
!3469 = !{!"double", !716, i64 0}
!3470 = !{!"", !716, i64 0, !716, i64 56, !716, i64 112, !716, i64 168, !716, i64 224, !716, i64 256, !716, i64 312, !716, i64 368, !716, i64 424, !716, i64 480, !716, i64 536, !716, i64 592, !716, i64 624, !719, i64 656, !719, i64 664, !716, i64 672, !716, i64 728, !716, i64 784, !716, i64 840, !716, i64 896, !719, i64 952, !719, i64 960, !719, i64 968, !719, i64 976, !719, i64 984, !719, i64 992}
!3471 = !{!"", !719, i64 0, !719, i64 8, !719, i64 16, !716, i64 24, !716, i64 104, !719, i64 160, !719, i64 168, !719, i64 176, !719, i64 184, !719, i64 192, !719, i64 200, !719, i64 208, !719, i64 216}
!3472 = !{!"", !719, i64 0, !719, i64 8, !719, i64 16, !719, i64 24, !719, i64 32, !719, i64 40, !719, i64 48, !719, i64 56, !719, i64 64, !719, i64 72, !719, i64 80, !719, i64 88}
!3473 = !{!"", !719, i64 0, !719, i64 8, !719, i64 16, !719, i64 24, !719, i64 32}
!3474 = !{!"", !719, i64 0, !719, i64 8, !719, i64 16, !719, i64 24, !719, i64 32, !719, i64 40, !719, i64 48, !719, i64 56, !719, i64 64, !719, i64 72, !719, i64 80, !716, i64 88}
!3475 = !{!"", !719, i64 0, !719, i64 8, !719, i64 16, !719, i64 24, !719, i64 32, !719, i64 40, !719, i64 48, !719, i64 56}
!3476 = !DILocation(line: 594, column: 17, scope: !3447)
!3477 = !DILocation(line: 594, column: 9, scope: !2523)
!3478 = !DILocation(line: 596, column: 9, scope: !3446)
!3479 = !DILocation(line: 596, column: 17, scope: !3446)
!3480 = !DILocation(line: 597, column: 9, scope: !3446)
!3481 = !DILocation(line: 598, column: 18, scope: !3446)
!3482 = !{!3456, !719, i64 344}
!3483 = !DILocation(line: 598, column: 35, scope: !3446)
!3484 = !{!3456, !719, i64 352}
!3485 = !DILocation(line: 598, column: 9, scope: !3446)
!3486 = !DILocation(line: 599, column: 9, scope: !3446)
!3487 = !DILocation(line: 600, column: 5, scope: !3447)
!3488 = !DILocation(line: 600, column: 5, scope: !3446)
!3489 = !DILocation(line: 601, column: 1, scope: !2523)
!3490 = distinct !DISubprogram(name: "x264_picture_alloc", scope: !2, file: !2, line: 631, type: !3491, scopeLine: 632, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !71, retainedNodes: !3508)
!3491 = !DISubroutineType(types: !3492)
!3492 = !{null, !3493, !91, !91, !91}
!3493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3494, size: 64)
!3494 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_picture_t", file: !464, line: 354, baseType: !3495)
!3495 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !464, line: 342, size: 576, elements: !3496)
!3496 = !{!3497, !3498, !3499, !3500}
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !3495, file: !464, line: 346, baseType: !91, size: 32)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "i_qpplus1", scope: !3495, file: !464, line: 348, baseType: !91, size: 32, offset: 32)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "i_pts", scope: !3495, file: !464, line: 350, baseType: !2789, size: 64, offset: 64)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "img", scope: !3495, file: !464, line: 353, baseType: !3501, size: 448, offset: 128)
!3501 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_image_t", file: !464, line: 340, baseType: !3502)
!3502 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !464, line: 333, size: 448, elements: !3503)
!3503 = !{!3504, !3505, !3506, !3507}
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "i_csp", scope: !3502, file: !464, line: 335, baseType: !91, size: 32)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "i_plane", scope: !3502, file: !464, line: 337, baseType: !91, size: 32, offset: 32)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !3502, file: !464, line: 338, baseType: !3021, size: 128, offset: 64)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !3502, file: !464, line: 339, baseType: !2808, size: 256, offset: 192)
!3508 = !{!3509, !3510, !3511, !3512}
!3509 = !DILocalVariable(name: "pic", arg: 1, scope: !3490, file: !2, line: 631, type: !3493)
!3510 = !DILocalVariable(name: "i_csp", arg: 2, scope: !3490, file: !2, line: 631, type: !91)
!3511 = !DILocalVariable(name: "i_width", arg: 3, scope: !3490, file: !2, line: 631, type: !91)
!3512 = !DILocalVariable(name: "i_height", arg: 4, scope: !3490, file: !2, line: 631, type: !91)
!3513 = !DILocation(line: 0, scope: !3490)
!3514 = !DILocation(line: 633, column: 17, scope: !3490)
!3515 = !{!3516, !715, i64 0}
!3516 = !{!"", !715, i64 0, !715, i64 4, !3457, i64 8, !3517, i64 16}
!3517 = !{!"", !715, i64 0, !715, i64 4, !716, i64 8, !716, i64 24}
!3518 = !DILocation(line: 634, column: 10, scope: !3490)
!3519 = !DILocation(line: 634, column: 20, scope: !3490)
!3520 = !{!3516, !715, i64 4}
!3521 = !DILocation(line: 635, column: 10, scope: !3490)
!3522 = !DILocation(line: 635, column: 20, scope: !3490)
!3523 = !{!3516, !715, i64 16}
!3524 = !DILocation(line: 636, column: 14, scope: !3490)
!3525 = !DILocation(line: 636, column: 22, scope: !3490)
!3526 = !{!3516, !715, i64 20}
!3527 = !DILocation(line: 637, column: 40, scope: !3490)
!3528 = !DILocation(line: 637, column: 50, scope: !3490)
!3529 = !DILocation(line: 637, column: 61, scope: !3490)
!3530 = !DILocalVariable(name: "i_size", arg: 1, scope: !3531, file: !2, line: 703, type: !91)
!3531 = distinct !DISubprogram(name: "x264_malloc", scope: !2, file: !2, line: 703, type: !3532, scopeLine: 704, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !71, retainedNodes: !3534)
!3532 = !DISubroutineType(types: !3533)
!3533 = !{!90, !91}
!3534 = !{!3530}
!3535 = !DILocation(line: 0, scope: !3531, inlinedAt: !3536)
!3536 = distinct !DILocation(line: 637, column: 25, scope: !3490)
!3537 = !DILocation(line: 709, column: 26, scope: !3531, inlinedAt: !3536)
!3538 = !DILocation(line: 709, column: 12, scope: !3531, inlinedAt: !3536)
!3539 = !DILocation(line: 637, column: 14, scope: !3490)
!3540 = !DILocation(line: 637, column: 23, scope: !3490)
!3541 = !DILocation(line: 638, column: 43, scope: !3490)
!3542 = !DILocation(line: 638, column: 5, scope: !3490)
!3543 = !DILocation(line: 638, column: 23, scope: !3490)
!3544 = !DILocation(line: 639, column: 64, scope: !3490)
!3545 = !DILocation(line: 639, column: 43, scope: !3490)
!3546 = !DILocation(line: 639, column: 5, scope: !3490)
!3547 = !DILocation(line: 639, column: 23, scope: !3490)
!3548 = !DILocation(line: 640, column: 14, scope: !3490)
!3549 = !DILocation(line: 640, column: 26, scope: !3490)
!3550 = !DILocation(line: 641, column: 36, scope: !3490)
!3551 = !DILocation(line: 641, column: 5, scope: !3490)
!3552 = !DILocation(line: 641, column: 26, scope: !3490)
!3553 = !DILocation(line: 642, column: 5, scope: !3490)
!3554 = !DILocation(line: 642, column: 26, scope: !3490)
!3555 = !DILocation(line: 643, column: 1, scope: !3490)
!3556 = !DILocation(line: 0, scope: !3531)
!3557 = !DILocation(line: 709, column: 26, scope: !3531)
!3558 = !DILocation(line: 709, column: 12, scope: !3531)
!3559 = !DILocation(line: 709, column: 5, scope: !3531)
!3560 = distinct !DISubprogram(name: "x264_picture_clean", scope: !2, file: !2, line: 648, type: !3561, scopeLine: 649, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !71, retainedNodes: !3563)
!3561 = !DISubroutineType(types: !3562)
!3562 = !{null, !3493}
!3563 = !{!3564}
!3564 = !DILocalVariable(name: "pic", arg: 1, scope: !3560, file: !2, line: 648, type: !3493)
!3565 = !DILocation(line: 0, scope: !3560)
!3566 = !DILocation(line: 650, column: 25, scope: !3560)
!3567 = !DILocation(line: 650, column: 16, scope: !3560)
!3568 = !DILocalVariable(name: "p", arg: 1, scope: !3569, file: !2, line: 726, type: !90)
!3569 = distinct !DISubprogram(name: "x264_free", scope: !2, file: !2, line: 726, type: !2459, scopeLine: 727, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !71, retainedNodes: !3570)
!3570 = !{!3568}
!3571 = !DILocation(line: 0, scope: !3569, inlinedAt: !3572)
!3572 = distinct !DILocation(line: 650, column: 5, scope: !3560)
!3573 = !DILocation(line: 728, column: 9, scope: !3574, inlinedAt: !3572)
!3574 = distinct !DILexicalBlock(scope: !3569, file: !2, line: 728, column: 9)
!3575 = !DILocation(line: 728, column: 9, scope: !3569, inlinedAt: !3572)
!3576 = !DILocation(line: 731, column: 9, scope: !3577, inlinedAt: !3572)
!3577 = distinct !DILexicalBlock(scope: !3574, file: !2, line: 729, column: 5)
!3578 = !DILocation(line: 735, column: 5, scope: !3577, inlinedAt: !3572)
!3579 = !DILocation(line: 653, column: 5, scope: !3560)
!3580 = !DILocation(line: 654, column: 1, scope: !3560)
!3581 = !DILocation(line: 0, scope: !3569)
!3582 = !DILocation(line: 728, column: 9, scope: !3574)
!3583 = !DILocation(line: 728, column: 9, scope: !3569)
!3584 = !DILocation(line: 731, column: 9, scope: !3577)
!3585 = !DILocation(line: 735, column: 5, scope: !3577)
!3586 = !DILocation(line: 736, column: 1, scope: !3569)
!3587 = distinct !DISubprogram(name: "x264_nal_encode", scope: !2, file: !2, line: 659, type: !3588, scopeLine: 660, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !71, retainedNodes: !3591)
!3588 = !DISubroutineType(types: !3589)
!3589 = !{!91, !90, !1016, !91, !3590}
!3590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!3591 = !{!3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599}
!3592 = !DILocalVariable(name: "p_data", arg: 1, scope: !3587, file: !2, line: 659, type: !90)
!3593 = !DILocalVariable(name: "pi_data", arg: 2, scope: !3587, file: !2, line: 659, type: !1016)
!3594 = !DILocalVariable(name: "b_annexeb", arg: 3, scope: !3587, file: !2, line: 659, type: !91)
!3595 = !DILocalVariable(name: "nal", arg: 4, scope: !3587, file: !2, line: 659, type: !3590)
!3596 = !DILocalVariable(name: "dst", scope: !3587, file: !2, line: 661, type: !93)
!3597 = !DILocalVariable(name: "src", scope: !3587, file: !2, line: 662, type: !93)
!3598 = !DILocalVariable(name: "end", scope: !3587, file: !2, line: 663, type: !93)
!3599 = !DILocalVariable(name: "i_count", scope: !3587, file: !2, line: 664, type: !91)
!3600 = !DILocation(line: 0, scope: !3587)
!3601 = !DILocation(line: 662, column: 25, scope: !3587)
!3602 = !{!3603, !719, i64 16}
!3603 = !{!"", !715, i64 0, !715, i64 4, !715, i64 8, !719, i64 16}
!3604 = !DILocation(line: 663, column: 41, scope: !3587)
!3605 = !{!3603, !715, i64 8}
!3606 = !DILocation(line: 663, column: 21, scope: !3587)
!3607 = !DILocation(line: 668, column: 9, scope: !3608)
!3608 = distinct !DILexicalBlock(scope: !3587, file: !2, line: 668, column: 9)
!3609 = !DILocation(line: 668, column: 9, scope: !3587)
!3610 = !DILocation(line: 674, column: 13, scope: !3611)
!3611 = distinct !DILexicalBlock(scope: !3608, file: !2, line: 669, column: 5)
!3612 = !DILocation(line: 671, column: 16, scope: !3611)
!3613 = !DILocation(line: 675, column: 5, scope: !3611)
!3614 = !DILocation(line: 678, column: 37, scope: !3587)
!3615 = !{!3603, !715, i64 0}
!3616 = !DILocation(line: 678, column: 47, scope: !3587)
!3617 = !DILocation(line: 678, column: 61, scope: !3587)
!3618 = !{!3603, !715, i64 4}
!3619 = !DILocation(line: 678, column: 54, scope: !3587)
!3620 = !DILocation(line: 678, column: 14, scope: !3587)
!3621 = !DILocation(line: 678, column: 12, scope: !3587)
!3622 = !DILocation(line: 680, column: 16, scope: !3587)
!3623 = !DILocation(line: 680, column: 5, scope: !3587)
!3624 = !DILocation(line: 682, column: 21, scope: !3625)
!3625 = distinct !DILexicalBlock(scope: !3626, file: !2, line: 682, column: 13)
!3626 = distinct !DILexicalBlock(scope: !3587, file: !2, line: 681, column: 5)
!3627 = !DILocation(line: 682, column: 26, scope: !3625)
!3628 = !DILocation(line: 682, column: 29, scope: !3625)
!3629 = !DILocation(line: 682, column: 34, scope: !3625)
!3630 = !DILocation(line: 682, column: 13, scope: !3626)
!3631 = !DILocation(line: 684, column: 17, scope: !3632)
!3632 = distinct !DILexicalBlock(scope: !3625, file: !2, line: 683, column: 9)
!3633 = !DILocation(line: 684, column: 20, scope: !3632)
!3634 = !DILocation(line: 686, column: 9, scope: !3632)
!3635 = !DILocation(line: 687, column: 13, scope: !3636)
!3636 = distinct !DILexicalBlock(scope: !3626, file: !2, line: 687, column: 13)
!3637 = !DILocation(line: 687, column: 18, scope: !3636)
!3638 = !DILocation(line: 687, column: 13, scope: !3626)
!3639 = !DILocation(line: 691, column: 22, scope: !3626)
!3640 = !DILocation(line: 691, column: 16, scope: !3626)
!3641 = distinct !{!3641, !3623, !3642, !997}
!3642 = !DILocation(line: 692, column: 5, scope: !3587)
!3643 = !DILocation(line: 693, column: 20, scope: !3587)
!3644 = !DILocation(line: 693, column: 16, scope: !3587)
!3645 = !DILocation(line: 693, column: 14, scope: !3587)
!3646 = !DILocation(line: 695, column: 5, scope: !3587)
!3647 = !DISubprogram(name: "memalign", scope: !3648, file: !3648, line: 67, type: !3649, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !852)
!3648 = !DIFile(filename: "/usr/include/malloc.h", directory: "", checksumkind: CSK_MD5, checksum: "a76bbc754bc1912bbc478953970c700c")
!3649 = !DISubroutineType(types: !3650)
!3650 = !{!90, !2414, !2414}
!3651 = distinct !DISubprogram(name: "x264_realloc", scope: !2, file: !2, line: 741, type: !3652, scopeLine: 742, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !71, retainedNodes: !3654)
!3652 = !DISubroutineType(types: !3653)
!3653 = !{!90, !90, !91}
!3654 = !{!3655, !3656}
!3655 = !DILocalVariable(name: "p", arg: 1, scope: !3651, file: !2, line: 741, type: !90)
!3656 = !DILocalVariable(name: "i_size", arg: 2, scope: !3651, file: !2, line: 741, type: !91)
!3657 = !DILocation(line: 0, scope: !3651)
!3658 = !DILocation(line: 744, column: 24, scope: !3651)
!3659 = !DILocation(line: 744, column: 12, scope: !3651)
!3660 = !DILocation(line: 744, column: 5, scope: !3651)
!3661 = !DISubprogram(name: "realloc", scope: !2458, file: !2458, line: 551, type: !3662, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !852)
!3662 = !DISubroutineType(types: !3663)
!3663 = !{!90, !90, !2414}
!3664 = distinct !DISubprogram(name: "x264_reduce_fraction", scope: !2, file: !2, line: 766, type: !3665, scopeLine: 767, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !71, retainedNodes: !3667)
!3665 = !DISubroutineType(types: !3666)
!3666 = !{null, !1016, !1016}
!3667 = !{!3668, !3669, !3670, !3671, !3672}
!3668 = !DILocalVariable(name: "n", arg: 1, scope: !3664, file: !2, line: 766, type: !1016)
!3669 = !DILocalVariable(name: "d", arg: 2, scope: !3664, file: !2, line: 766, type: !1016)
!3670 = !DILocalVariable(name: "a", scope: !3664, file: !2, line: 768, type: !91)
!3671 = !DILocalVariable(name: "b", scope: !3664, file: !2, line: 769, type: !91)
!3672 = !DILocalVariable(name: "c", scope: !3664, file: !2, line: 770, type: !91)
!3673 = !DILocation(line: 0, scope: !3664)
!3674 = !DILocation(line: 768, column: 13, scope: !3664)
!3675 = !DILocation(line: 769, column: 13, scope: !3664)
!3676 = !DILocation(line: 771, column: 10, scope: !3677)
!3677 = distinct !DILexicalBlock(scope: !3664, file: !2, line: 771, column: 9)
!3678 = !DILocation(line: 771, column: 12, scope: !3677)
!3679 = !DILocation(line: 773, column: 11, scope: !3664)
!3680 = !DILocation(line: 774, column: 5, scope: !3664)
!3681 = !DILocation(line: 778, column: 8, scope: !3682)
!3682 = distinct !DILexicalBlock(scope: !3664, file: !2, line: 775, column: 5)
!3683 = distinct !{!3683, !3680, !3684, !997}
!3684 = !DILocation(line: 779, column: 5, scope: !3664)
!3685 = !DILocation(line: 780, column: 8, scope: !3664)
!3686 = !DILocation(line: 781, column: 8, scope: !3664)
!3687 = !DILocation(line: 782, column: 1, scope: !3664)
!3688 = distinct !DISubprogram(name: "x264_slurp_file", scope: !2, file: !2, line: 787, type: !2409, scopeLine: 788, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !71, retainedNodes: !3689)
!3689 = !{!3690, !3691, !3692, !3693, !3694}
!3690 = !DILocalVariable(name: "filename", arg: 1, scope: !3688, file: !2, line: 787, type: !483)
!3691 = !DILocalVariable(name: "b_error", scope: !3688, file: !2, line: 789, type: !91)
!3692 = !DILocalVariable(name: "i_size", scope: !3688, file: !2, line: 790, type: !91)
!3693 = !DILocalVariable(name: "buf", scope: !3688, file: !2, line: 791, type: !610)
!3694 = !DILocalVariable(name: "fh", scope: !3688, file: !2, line: 792, type: !3695)
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3696, size: 64)
!3696 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3697, line: 7, baseType: !3698)
!3697 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!3698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3699, line: 49, size: 1728, elements: !3700)
!3699 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!3700 = !{!3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3716, !3718, !3719, !3720, !3722, !3723, !3724, !3725, !3728, !3730, !3733, !3736, !3737, !3738, !3739, !3740}
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3698, file: !3699, line: 51, baseType: !91, size: 32)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3698, file: !3699, line: 54, baseType: !610, size: 64, offset: 64)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3698, file: !3699, line: 55, baseType: !610, size: 64, offset: 128)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3698, file: !3699, line: 56, baseType: !610, size: 64, offset: 192)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3698, file: !3699, line: 57, baseType: !610, size: 64, offset: 256)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3698, file: !3699, line: 58, baseType: !610, size: 64, offset: 320)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3698, file: !3699, line: 59, baseType: !610, size: 64, offset: 384)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3698, file: !3699, line: 60, baseType: !610, size: 64, offset: 448)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3698, file: !3699, line: 61, baseType: !610, size: 64, offset: 512)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3698, file: !3699, line: 64, baseType: !610, size: 64, offset: 576)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3698, file: !3699, line: 65, baseType: !610, size: 64, offset: 640)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3698, file: !3699, line: 66, baseType: !610, size: 64, offset: 704)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3698, file: !3699, line: 68, baseType: !3714, size: 64, offset: 768)
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3715, size: 64)
!3715 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3699, line: 36, flags: DIFlagFwdDecl)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3698, file: !3699, line: 70, baseType: !3717, size: 64, offset: 832)
!3717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3698, file: !3699, line: 72, baseType: !91, size: 32, offset: 896)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3698, file: !3699, line: 73, baseType: !91, size: 32, offset: 928)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3698, file: !3699, line: 74, baseType: !3721, size: 64, offset: 960)
!3721 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !97, line: 152, baseType: !2566)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3698, file: !3699, line: 77, baseType: !92, size: 16, offset: 1024)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3698, file: !3699, line: 78, baseType: !2818, size: 8, offset: 1040)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3698, file: !3699, line: 79, baseType: !407, size: 8, offset: 1048)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3698, file: !3699, line: 81, baseType: !3726, size: 64, offset: 1088)
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3727 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !3699, line: 43, baseType: null)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3698, file: !3699, line: 89, baseType: !3729, size: 64, offset: 1152)
!3729 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !97, line: 153, baseType: !2566)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3698, file: !3699, line: 91, baseType: !3731, size: 64, offset: 1216)
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3732 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !3699, line: 37, flags: DIFlagFwdDecl)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3698, file: !3699, line: 92, baseType: !3734, size: 64, offset: 1280)
!3734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3735, size: 64)
!3735 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !3699, line: 38, flags: DIFlagFwdDecl)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3698, file: !3699, line: 93, baseType: !3717, size: 64, offset: 1344)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3698, file: !3699, line: 94, baseType: !90, size: 64, offset: 1408)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3698, file: !3699, line: 95, baseType: !2414, size: 64, offset: 1472)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3698, file: !3699, line: 96, baseType: !91, size: 32, offset: 1536)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3698, file: !3699, line: 98, baseType: !3741, size: 160, offset: 1568)
!3741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !3742)
!3742 = !{!3743}
!3743 = !DISubrange(count: 20)
!3744 = !DILocation(line: 0, scope: !3688)
!3745 = !DILocation(line: 792, column: 16, scope: !3688)
!3746 = !DILocation(line: 793, column: 10, scope: !3747)
!3747 = distinct !DILexicalBlock(scope: !3688, file: !2, line: 793, column: 9)
!3748 = !DILocation(line: 793, column: 9, scope: !3688)
!3749 = !DILocation(line: 795, column: 16, scope: !3688)
!3750 = !DILocation(line: 796, column: 27, scope: !3688)
!3751 = !DILocation(line: 796, column: 41, scope: !3688)
!3752 = !DILocation(line: 797, column: 16, scope: !3688)
!3753 = !DILocation(line: 796, column: 13, scope: !3688)
!3754 = !DILocation(line: 797, column: 13, scope: !3688)
!3755 = !DILocation(line: 798, column: 9, scope: !3756)
!3756 = distinct !DILexicalBlock(scope: !3688, file: !2, line: 798, column: 9)
!3757 = !DILocation(line: 798, column: 9, scope: !3688)
!3758 = !DILocation(line: 0, scope: !3531, inlinedAt: !3759)
!3759 = distinct !DILocation(line: 800, column: 11, scope: !3688)
!3760 = !DILocation(line: 709, column: 26, scope: !3531, inlinedAt: !3759)
!3761 = !DILocation(line: 709, column: 12, scope: !3531, inlinedAt: !3759)
!3762 = !DILocation(line: 801, column: 13, scope: !3763)
!3763 = distinct !DILexicalBlock(scope: !3688, file: !2, line: 801, column: 9)
!3764 = !DILocation(line: 801, column: 9, scope: !3688)
!3765 = !DILocation(line: 803, column: 31, scope: !3688)
!3766 = !DILocation(line: 803, column: 16, scope: !3688)
!3767 = !DILocation(line: 803, column: 44, scope: !3688)
!3768 = !DILocation(line: 804, column: 9, scope: !3769)
!3769 = distinct !DILexicalBlock(scope: !3688, file: !2, line: 804, column: 9)
!3770 = !DILocation(line: 804, column: 23, scope: !3769)
!3771 = !DILocation(line: 804, column: 9, scope: !3688)
!3772 = !DILocation(line: 805, column: 9, scope: !3769)
!3773 = !DILocation(line: 805, column: 23, scope: !3769)
!3774 = !DILocation(line: 806, column: 5, scope: !3688)
!3775 = !DILocation(line: 806, column: 17, scope: !3688)
!3776 = !DILocation(line: 807, column: 5, scope: !3688)
!3777 = !DILocation(line: 808, column: 9, scope: !3688)
!3778 = !DILocation(line: 0, scope: !3569, inlinedAt: !3779)
!3779 = distinct !DILocation(line: 810, column: 9, scope: !3780)
!3780 = distinct !DILexicalBlock(scope: !3781, file: !2, line: 809, column: 5)
!3781 = distinct !DILexicalBlock(scope: !3688, file: !2, line: 808, column: 9)
!3782 = !DILocation(line: 731, column: 9, scope: !3577, inlinedAt: !3779)
!3783 = !DILocation(line: 811, column: 9, scope: !3780)
!3784 = !DILocation(line: 814, column: 1, scope: !3688)
!3785 = !DISubprogram(name: "fopen", scope: !2462, file: !2462, line: 258, type: !3786, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !852)
!3786 = !DISubroutineType(types: !3787)
!3787 = !{!3695, !2452, !2452}
!3788 = !DISubprogram(name: "fseek", scope: !2462, file: !2462, line: 713, type: !3789, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !852)
!3789 = !DISubroutineType(types: !3790)
!3790 = !{!91, !3695, !2566, !91}
!3791 = !DISubprogram(name: "ftell", scope: !2462, file: !2462, line: 718, type: !3792, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !852)
!3792 = !DISubroutineType(types: !3793)
!3793 = !{!2566, !3695}
!3794 = !DISubprogram(name: "fread", scope: !2462, file: !2462, line: 675, type: !3795, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !852)
!3795 = !DISubroutineType(types: !3796)
!3796 = !{!2416, !3797, !2414, !2414, !3798}
!3797 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !90)
!3798 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !3695)
!3799 = !DISubprogram(name: "fclose", scope: !2462, file: !2462, line: 178, type: !3800, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !852)
!3800 = !DISubroutineType(types: !3801)
!3801 = !{!91, !3695}
!3802 = distinct !DISubprogram(name: "x264_param2string", scope: !2, file: !2, line: 819, type: !3803, scopeLine: 820, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !71, retainedNodes: !3805)
!3803 = !DISubroutineType(types: !3804)
!3804 = !{!610, !567, !91}
!3805 = !{!3806, !3807, !3808, !3809, !3810}
!3806 = !DILocalVariable(name: "p", arg: 1, scope: !3802, file: !2, line: 819, type: !567)
!3807 = !DILocalVariable(name: "b_res", arg: 2, scope: !3802, file: !2, line: 819, type: !91)
!3808 = !DILocalVariable(name: "len", scope: !3802, file: !2, line: 821, type: !91)
!3809 = !DILocalVariable(name: "buf", scope: !3802, file: !2, line: 822, type: !610)
!3810 = !DILocalVariable(name: "s", scope: !3802, file: !2, line: 822, type: !610)
!3811 = !DILocation(line: 0, scope: !3802)
!3812 = !DILocation(line: 823, column: 12, scope: !3813)
!3813 = distinct !DILexicalBlock(scope: !3802, file: !2, line: 823, column: 9)
!3814 = !DILocation(line: 823, column: 15, scope: !3813)
!3815 = !DILocation(line: 823, column: 9, scope: !3813)
!3816 = !DILocation(line: 823, column: 9, scope: !3802)
!3817 = !DILocation(line: 824, column: 16, scope: !3813)
!3818 = !DILocation(line: 709, column: 26, scope: !3531, inlinedAt: !3819)
!3819 = distinct !DILocation(line: 825, column: 15, scope: !3802)
!3820 = !DILocation(line: 824, column: 9, scope: !3813)
!3821 = !DILocation(line: 0, scope: !3531, inlinedAt: !3819)
!3822 = !DILocation(line: 709, column: 12, scope: !3531, inlinedAt: !3819)
!3823 = !DILocation(line: 827, column: 9, scope: !3824)
!3824 = distinct !DILexicalBlock(scope: !3802, file: !2, line: 827, column: 9)
!3825 = !DILocation(line: 827, column: 9, scope: !3802)
!3826 = !DILocation(line: 829, column: 39, scope: !3827)
!3827 = distinct !DILexicalBlock(scope: !3824, file: !2, line: 828, column: 5)
!3828 = !{!714, !715, i64 12}
!3829 = !DILocation(line: 829, column: 51, scope: !3827)
!3830 = !{!714, !715, i64 16}
!3831 = !DILocation(line: 829, column: 14, scope: !3827)
!3832 = !DILocation(line: 829, column: 11, scope: !3827)
!3833 = !DILocation(line: 830, column: 43, scope: !3827)
!3834 = !DILocation(line: 830, column: 57, scope: !3827)
!3835 = !DILocation(line: 830, column: 14, scope: !3827)
!3836 = !DILocation(line: 830, column: 11, scope: !3827)
!3837 = !DILocation(line: 831, column: 5, scope: !3827)
!3838 = !DILocation(line: 833, column: 37, scope: !3802)
!3839 = !DILocation(line: 833, column: 10, scope: !3802)
!3840 = !DILocation(line: 833, column: 7, scope: !3802)
!3841 = !DILocation(line: 834, column: 36, scope: !3802)
!3842 = !DILocation(line: 834, column: 10, scope: !3802)
!3843 = !DILocation(line: 834, column: 7, scope: !3802)
!3844 = !DILocation(line: 835, column: 46, scope: !3802)
!3845 = !DILocation(line: 836, column: 22, scope: !3802)
!3846 = !DILocation(line: 836, column: 54, scope: !3802)
!3847 = !DILocation(line: 835, column: 10, scope: !3802)
!3848 = !DILocation(line: 835, column: 7, scope: !3802)
!3849 = !DILocation(line: 837, column: 45, scope: !3802)
!3850 = !DILocation(line: 837, column: 53, scope: !3802)
!3851 = !DILocation(line: 837, column: 71, scope: !3802)
!3852 = !DILocation(line: 837, column: 10, scope: !3802)
!3853 = !DILocation(line: 837, column: 7, scope: !3802)
!3854 = !DILocation(line: 838, column: 66, scope: !3802)
!3855 = !{!714, !715, i64 404}
!3856 = !DILocation(line: 838, column: 32, scope: !3802)
!3857 = !DILocation(line: 838, column: 10, scope: !3802)
!3858 = !DILocation(line: 838, column: 7, scope: !3802)
!3859 = !DILocation(line: 839, column: 46, scope: !3802)
!3860 = !DILocation(line: 839, column: 10, scope: !3802)
!3861 = !DILocation(line: 839, column: 7, scope: !3802)
!3862 = !DILocation(line: 840, column: 54, scope: !3802)
!3863 = !{!714, !721, i64 448}
!3864 = !DILocation(line: 840, column: 43, scope: !3802)
!3865 = !DILocation(line: 840, column: 75, scope: !3802)
!3866 = !DILocation(line: 840, column: 64, scope: !3802)
!3867 = !DILocation(line: 840, column: 10, scope: !3802)
!3868 = !DILocation(line: 840, column: 7, scope: !3802)
!3869 = !DILocation(line: 841, column: 50, scope: !3802)
!3870 = !DILocation(line: 841, column: 10, scope: !3802)
!3871 = !DILocation(line: 841, column: 7, scope: !3802)
!3872 = !DILocation(line: 842, column: 49, scope: !3802)
!3873 = !DILocation(line: 842, column: 10, scope: !3802)
!3874 = !DILocation(line: 842, column: 7, scope: !3802)
!3875 = !DILocation(line: 843, column: 50, scope: !3802)
!3876 = !DILocation(line: 843, column: 10, scope: !3802)
!3877 = !DILocation(line: 843, column: 7, scope: !3802)
!3878 = !DILocation(line: 844, column: 48, scope: !3802)
!3879 = !DILocation(line: 844, column: 10, scope: !3802)
!3880 = !DILocation(line: 844, column: 7, scope: !3802)
!3881 = !DILocation(line: 845, column: 47, scope: !3802)
!3882 = !DILocation(line: 845, column: 10, scope: !3802)
!3883 = !DILocation(line: 845, column: 7, scope: !3802)
!3884 = !DILocation(line: 846, column: 36, scope: !3802)
!3885 = !DILocation(line: 846, column: 10, scope: !3802)
!3886 = !DILocation(line: 846, column: 7, scope: !3802)
!3887 = !DILocation(line: 847, column: 52, scope: !3802)
!3888 = !DILocation(line: 847, column: 41, scope: !3802)
!3889 = !DILocation(line: 847, column: 72, scope: !3802)
!3890 = !DILocation(line: 847, column: 10, scope: !3802)
!3891 = !DILocation(line: 847, column: 7, scope: !3802)
!3892 = !DILocation(line: 848, column: 57, scope: !3802)
!3893 = !DILocation(line: 848, column: 10, scope: !3802)
!3894 = !DILocation(line: 848, column: 7, scope: !3802)
!3895 = !DILocation(line: 849, column: 40, scope: !3802)
!3896 = !DILocation(line: 849, column: 10, scope: !3802)
!3897 = !DILocation(line: 849, column: 7, scope: !3802)
!3898 = !DILocation(line: 850, column: 43, scope: !3802)
!3899 = !DILocation(line: 850, column: 10, scope: !3802)
!3900 = !DILocation(line: 850, column: 7, scope: !3802)
!3901 = !DILocation(line: 851, column: 49, scope: !3802)
!3902 = !DILocation(line: 851, column: 10, scope: !3802)
!3903 = !DILocation(line: 851, column: 7, scope: !3802)
!3904 = !DILocation(line: 852, column: 38, scope: !3802)
!3905 = !DILocation(line: 852, column: 10, scope: !3802)
!3906 = !DILocation(line: 852, column: 7, scope: !3802)
!3907 = !DILocation(line: 854, column: 40, scope: !3802)
!3908 = !DILocation(line: 854, column: 10, scope: !3802)
!3909 = !DILocation(line: 854, column: 7, scope: !3802)
!3910 = !DILocation(line: 855, column: 12, scope: !3911)
!3911 = distinct !DILexicalBlock(scope: !3802, file: !2, line: 855, column: 9)
!3912 = !DILocation(line: 855, column: 9, scope: !3911)
!3913 = !DILocation(line: 855, column: 9, scope: !3802)
!3914 = !DILocation(line: 858, column: 26, scope: !3915)
!3915 = distinct !DILexicalBlock(scope: !3911, file: !2, line: 856, column: 5)
!3916 = !DILocation(line: 858, column: 47, scope: !3915)
!3917 = !DILocation(line: 858, column: 69, scope: !3915)
!3918 = !DILocation(line: 859, column: 34, scope: !3915)
!3919 = !{!714, !715, i64 392}
!3920 = !DILocation(line: 859, column: 63, scope: !3915)
!3921 = !DILocation(line: 857, column: 14, scope: !3915)
!3922 = !DILocation(line: 857, column: 11, scope: !3915)
!3923 = !DILocation(line: 860, column: 5, scope: !3915)
!3924 = !DILocation(line: 863, column: 22, scope: !3802)
!3925 = !DILocation(line: 863, column: 39, scope: !3802)
!3926 = !DILocation(line: 863, column: 56, scope: !3802)
!3927 = !DILocation(line: 864, column: 22, scope: !3802)
!3928 = !DILocation(line: 864, column: 19, scope: !3802)
!3929 = !DILocation(line: 862, column: 10, scope: !3802)
!3930 = !DILocation(line: 862, column: 7, scope: !3802)
!3931 = !DILocation(line: 866, column: 38, scope: !3802)
!3932 = !DILocation(line: 866, column: 50, scope: !3802)
!3933 = !DILocation(line: 866, column: 32, scope: !3802)
!3934 = !DILocation(line: 867, column: 40, scope: !3802)
!3935 = !DILocation(line: 867, column: 34, scope: !3802)
!3936 = !DILocation(line: 867, column: 70, scope: !3802)
!3937 = !DILocation(line: 867, column: 64, scope: !3802)
!3938 = !DILocation(line: 868, column: 52, scope: !3802)
!3939 = !DILocation(line: 868, column: 34, scope: !3802)
!3940 = !DILocation(line: 866, column: 10, scope: !3802)
!3941 = !DILocation(line: 866, column: 7, scope: !3802)
!3942 = !DILocation(line: 869, column: 15, scope: !3943)
!3943 = distinct !DILexicalBlock(scope: !3802, file: !2, line: 869, column: 9)
!3944 = !DILocation(line: 869, column: 42, scope: !3943)
!3945 = !DILocation(line: 872, column: 49, scope: !3946)
!3946 = distinct !DILexicalBlock(scope: !3947, file: !2, line: 871, column: 13)
!3947 = distinct !DILexicalBlock(scope: !3943, file: !2, line: 870, column: 5)
!3948 = !DILocation(line: 872, column: 43, scope: !3946)
!3949 = !DILocation(line: 872, column: 18, scope: !3946)
!3950 = !DILocation(line: 872, column: 13, scope: !3946)
!3951 = !DILocation(line: 875, column: 33, scope: !3946)
!3952 = !DILocation(line: 875, column: 50, scope: !3946)
!3953 = !DILocation(line: 875, column: 44, scope: !3946)
!3954 = !DILocation(line: 874, column: 18, scope: !3946)
!3955 = !DILocation(line: 0, scope: !3946)
!3956 = !DILocation(line: 877, column: 29, scope: !3947)
!3957 = !DILocation(line: 877, column: 23, scope: !3947)
!3958 = !DILocation(line: 877, column: 48, scope: !3947)
!3959 = !DILocation(line: 877, column: 64, scope: !3947)
!3960 = !DILocation(line: 877, column: 80, scope: !3947)
!3961 = !DILocation(line: 876, column: 14, scope: !3947)
!3962 = !DILocation(line: 876, column: 11, scope: !3947)
!3963 = !DILocation(line: 878, column: 19, scope: !3964)
!3964 = distinct !DILexicalBlock(scope: !3947, file: !2, line: 878, column: 13)
!3965 = !DILocation(line: 878, column: 13, scope: !3964)
!3966 = !DILocation(line: 878, column: 13, scope: !3947)
!3967 = !DILocation(line: 880, column: 33, scope: !3964)
!3968 = !DILocation(line: 880, column: 27, scope: !3964)
!3969 = !DILocation(line: 880, column: 58, scope: !3964)
!3970 = !DILocation(line: 880, column: 52, scope: !3964)
!3971 = !DILocation(line: 879, column: 18, scope: !3964)
!3972 = !DILocation(line: 879, column: 15, scope: !3964)
!3973 = !DILocation(line: 879, column: 13, scope: !3964)
!3974 = !DILocation(line: 0, scope: !3947)
!3975 = !DILocation(line: 881, column: 19, scope: !3976)
!3976 = distinct !DILexicalBlock(scope: !3947, file: !2, line: 881, column: 13)
!3977 = !DILocation(line: 881, column: 13, scope: !3976)
!3978 = !DILocation(line: 881, column: 13, scope: !3947)
!3979 = !DILocation(line: 883, column: 33, scope: !3976)
!3980 = !DILocation(line: 882, column: 18, scope: !3976)
!3981 = !DILocation(line: 882, column: 15, scope: !3976)
!3982 = !DILocation(line: 882, column: 13, scope: !3976)
!3983 = !DILocation(line: 886, column: 42, scope: !3984)
!3984 = distinct !DILexicalBlock(scope: !3943, file: !2, line: 885, column: 14)
!3985 = !DILocation(line: 886, column: 14, scope: !3984)
!3986 = !DILocation(line: 886, column: 11, scope: !3984)
!3987 = !DILocation(line: 886, column: 9, scope: !3984)
!3988 = !DILocation(line: 887, column: 17, scope: !3989)
!3989 = distinct !DILexicalBlock(scope: !3802, file: !2, line: 887, column: 9)
!3990 = !DILocation(line: 887, column: 29, scope: !3989)
!3991 = !DILocation(line: 887, column: 44, scope: !3989)
!3992 = !DILocation(line: 887, column: 53, scope: !3989)
!3993 = !DILocation(line: 887, column: 67, scope: !3989)
!3994 = !DILocation(line: 887, column: 9, scope: !3802)
!3995 = !DILocation(line: 889, column: 50, scope: !3996)
!3996 = distinct !DILexicalBlock(scope: !3989, file: !2, line: 888, column: 5)
!3997 = !DILocation(line: 889, column: 44, scope: !3996)
!3998 = !DILocation(line: 889, column: 14, scope: !3996)
!3999 = !DILocation(line: 889, column: 11, scope: !3996)
!4000 = !DILocation(line: 890, column: 16, scope: !4001)
!4001 = distinct !DILexicalBlock(scope: !3996, file: !2, line: 890, column: 13)
!4002 = !DILocation(line: 890, column: 13, scope: !4001)
!4003 = !DILocation(line: 890, column: 13, scope: !3996)
!4004 = !DILocation(line: 891, column: 54, scope: !4001)
!4005 = !DILocation(line: 891, column: 48, scope: !4001)
!4006 = !DILocation(line: 891, column: 18, scope: !4001)
!4007 = !DILocation(line: 891, column: 15, scope: !4001)
!4008 = !DILocation(line: 891, column: 13, scope: !4001)
!4009 = !DILocation(line: 0, scope: !3996)
!4010 = !DILocation(line: 892, column: 42, scope: !3996)
!4011 = !DILocation(line: 892, column: 14, scope: !3996)
!4012 = !DILocation(line: 892, column: 11, scope: !3996)
!4013 = !DILocation(line: 893, column: 19, scope: !4014)
!4014 = distinct !DILexicalBlock(scope: !3996, file: !2, line: 893, column: 13)
!4015 = !DILocation(line: 893, column: 13, scope: !4014)
!4016 = !DILocation(line: 893, column: 13, scope: !3996)
!4017 = !DILocation(line: 894, column: 45, scope: !4014)
!4018 = !DILocation(line: 894, column: 39, scope: !4014)
!4019 = !DILocation(line: 894, column: 18, scope: !4014)
!4020 = !DILocation(line: 894, column: 15, scope: !4014)
!4021 = !DILocation(line: 894, column: 13, scope: !4014)
!4022 = !DILocation(line: 895, column: 19, scope: !4023)
!4023 = distinct !DILexicalBlock(scope: !3996, file: !2, line: 895, column: 13)
!4024 = !DILocation(line: 895, column: 13, scope: !4023)
!4025 = !DILocation(line: 895, column: 13, scope: !3996)
!4026 = !DILocation(line: 896, column: 18, scope: !4023)
!4027 = !DILocation(line: 896, column: 13, scope: !4023)
!4028 = !DILocation(line: 897, column: 24, scope: !4029)
!4029 = distinct !DILexicalBlock(scope: !4023, file: !2, line: 897, column: 18)
!4030 = !DILocation(line: 897, column: 18, scope: !4029)
!4031 = !DILocation(line: 897, column: 18, scope: !4023)
!4032 = !DILocation(line: 898, column: 18, scope: !4029)
!4033 = !DILocation(line: 898, column: 13, scope: !4029)
!4034 = !DILocation(line: 901, column: 5, scope: !3802)
!4035 = !DISubprogram(name: "strlen", scope: !2405, file: !2405, line: 407, type: !4036, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !852)
!4036 = !DISubroutineType(types: !4037)
!4037 = !{!2416, !483}
!4038 = !DISubprogram(name: "sprintf", scope: !2462, file: !2462, line: 358, type: !4039, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !852)
!4039 = !DISubroutineType(types: !4040)
!4040 = !{!91, !2451, !2452, null}
!4041 = !DISubprogram(name: "strtol", scope: !2458, file: !2458, line: 177, type: !4042, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !852)
!4042 = !DISubroutineType(types: !4043)
!4043 = !{!2566, !2452, !2453, !91}
!4044 = !DISubprogram(name: "strtod", scope: !2458, file: !2458, line: 118, type: !4045, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !852)
!4045 = !DISubroutineType(types: !4046)
!4046 = !{!1113, !2452, !2453}
!4047 = !DISubprogram(name: "fprintf", scope: !2462, file: !2462, line: 350, type: !4048, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !852)
!4048 = !DISubroutineType(types: !4049)
!4049 = !{!91, !3798, !2452, null}
!4050 = !DISubprogram(name: "vfprintf", scope: !2462, file: !2462, line: 365, type: !4051, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !852)
!4051 = !DISubroutineType(types: !4052)
!4052 = !{!91, !3798, !2452, !625}
