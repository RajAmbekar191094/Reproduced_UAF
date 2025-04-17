; ModuleID = '/home/raj/coturn/src/apps/oauth/oauth.c'
source_filename = "/home/raj/coturn/src/apps/oauth/oauth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct._oauth_key = type { [129 x i8], [257 x i8], i64, i32, i32, i32, [257 x i8], i64, [257 x i8], i64 }
%struct._oauth_token = type { %struct._oauth_encrypted_block }
%struct._oauth_encrypted_block = type { i16, [256 x i8], i16, [128 x i8], i64, i32 }
%struct._oauth_key_data = type { [129 x i8], [257 x i8], i64, i32, i32, [65 x i8] }
%struct._oauth_key_data_raw = type { [129 x i8], [257 x i8], i64, i32, [65 x i8], [128 x i8] }
%struct._encoded_oauth_token = type { [1024 x i8], i64 }

@Usage = dso_local constant [1487 x i8] c"Usage: oauth [ -e / -d ] [options]\0AOptions:\0A\0A        -h, --help                       usage\0A\0A        -v, --verbose                    verbose mode\0A\0A        -e, --encrypt                    encrypt token\0A        -d, --decrypt                    decrypt validate token\0A\0A        -i, --server-name                server name (max. 255 char)\0A        -j, --auth-key-id                Auth key id (max. 32 char)\0A        -k, --auth-key                   base64 encoded Auth key\0A        -l  --auth-key-timestamp         Auth key timestamp (sec since epoch)\0A        -m, --auth-key-lifetime          Auth key lifetime in sec\0A        -n, --auth-key-as-rs-alg         Authorization Server(AS) - Resource Server (RS) encryption algorithm\0A        -o, --token-nonce                base64 encoded nonce base64(12 octet) = 16 char\0A        -p, --token-mac-key              base64 encoded MAC key base64(32 octet) = 44 char\0A        -q, --token-timestamp            timestamp in format 64 bit unsigned (Native format - Unix),\0A                                         so 48 bit for secs since epoch UTC + 16 bit for 1/64000 fractions of a second.\0A                                         e.g.: the actual unixtimestamp 16 bit left shifted. (Default: actual gmtime)\0A        -r, --token-lifetime             lifetime in sec (Default: 3600)\0A        -t, --token                      base64 encoded encrypted token for validation and decryption\0A        -u, --hmac-alg                   stun client hmac algorithm\0A\00", align 16, !dbg !0
@__const.main.as_rs_alg = private unnamed_addr constant [8 x i8] c"A256GCM\00", align 1
@__const.main.hmac_alg = private unnamed_addr constant [21 x i8] c"HMAC-SHA1\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@main.verbose_flag = internal global i32 0, align 4, !dbg !34
@main.encrypt_flag = internal global i32 0, align 4, !dbg !42
@main.decrypt_flag = internal global i32 0, align 4, !dbg !44
@main.long_options = internal global [17 x %struct.option] [%struct.option { ptr @.str, i32 0, ptr @main.verbose_flag, i32 1 }, %struct.option { ptr @.str.1, i32 0, ptr @main.encrypt_flag, i32 1 }, %struct.option { ptr @.str.2, i32 0, ptr @main.decrypt_flag, i32 1 }, %struct.option { ptr @.str.3, i32 0, ptr null, i32 104 }, %struct.option { ptr @.str.4, i32 1, ptr null, i32 105 }, %struct.option { ptr @.str.5, i32 1, ptr null, i32 106 }, %struct.option { ptr @.str.6, i32 1, ptr null, i32 107 }, %struct.option { ptr @.str.7, i32 1, ptr null, i32 108 }, %struct.option { ptr @.str.8, i32 1, ptr null, i32 109 }, %struct.option { ptr @.str.9, i32 1, ptr null, i32 110 }, %struct.option { ptr @.str.10, i32 1, ptr null, i32 111 }, %struct.option { ptr @.str.11, i32 1, ptr null, i32 112 }, %struct.option { ptr @.str.12, i32 1, ptr null, i32 113 }, %struct.option { ptr @.str.13, i32 1, ptr null, i32 114 }, %struct.option { ptr @.str.14, i32 1, ptr null, i32 116 }, %struct.option { ptr @.str.15, i32 1, ptr null, i32 117 }, %struct.option zeroinitializer], align 16, !dbg !108
@.str = private unnamed_addr constant [8 x i8] c"verbose\00", align 1, !dbg !46
@.str.1 = private unnamed_addr constant [8 x i8] c"encrypt\00", align 1, !dbg !51
@.str.2 = private unnamed_addr constant [8 x i8] c"decrypt\00", align 1, !dbg !53
@.str.3 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !55
@.str.4 = private unnamed_addr constant [12 x i8] c"server-name\00", align 1, !dbg !60
@.str.5 = private unnamed_addr constant [12 x i8] c"auth-key-id\00", align 1, !dbg !65
@.str.6 = private unnamed_addr constant [9 x i8] c"auth-key\00", align 1, !dbg !67
@.str.7 = private unnamed_addr constant [19 x i8] c"auth-key-timestamp\00", align 1, !dbg !72
@.str.8 = private unnamed_addr constant [18 x i8] c"auth-key-lifetime\00", align 1, !dbg !77
@.str.9 = private unnamed_addr constant [19 x i8] c"auth-key-as-rs-alg\00", align 1, !dbg !82
@.str.10 = private unnamed_addr constant [12 x i8] c"token-nonce\00", align 1, !dbg !84
@.str.11 = private unnamed_addr constant [14 x i8] c"token-mac-key\00", align 1, !dbg !86
@.str.12 = private unnamed_addr constant [16 x i8] c"token-timestamp\00", align 1, !dbg !91
@.str.13 = private unnamed_addr constant [15 x i8] c"token-lifetime\00", align 1, !dbg !96
@.str.14 = private unnamed_addr constant [6 x i8] c"token\00", align 1, !dbg !101
@.str.15 = private unnamed_addr constant [9 x i8] c"hmac-alg\00", align 1, !dbg !106
@.str.16 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1, !dbg !121
@.str.17 = private unnamed_addr constant [29 x i8] c"hvedi:j:k:l:m:n:o:p:q:r:t:u:\00", align 1, !dbg !126
@stderr = external global ptr, align 8
@.str.18 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1, !dbg !131
@optarg = external global ptr, align 8
@.str.19 = private unnamed_addr constant [33 x i8] c"Server-name must not exceed %d!\0A\00", align 1, !dbg !136
@.str.20 = private unnamed_addr constant [28 x i8] c"Key ID must not exceed %d!\0A\00", align 1, !dbg !141
@.str.21 = private unnamed_addr constant [25 x i8] c"Key must not exceed %d!\0A\00", align 1, !dbg !146
@.str.22 = private unnamed_addr constant [31 x i8] c"AS-RS Alg must not exceed %d!\0A\00", align 1, !dbg !151
@.str.23 = private unnamed_addr constant [52 x i8] c"base64 encoded encrypted token must not exceed %d!\0A\00", align 1, !dbg !156
@.str.24 = private unnamed_addr constant [42 x i8] c"STUN client HMAC Alg must not exceed %d!\0A\00", align 1, !dbg !161
@optind = external global i32, align 4
@.str.25 = private unnamed_addr constant [24 x i8] c"Non-option argument %s\0A\00", align 1, !dbg !166
@.str.26 = private unnamed_addr constant [78 x i8] c"Use either encrypt or decrypt.\0APlease use -h or --help for the detailed help\0A\00", align 1, !dbg !171
@.str.27 = private unnamed_addr constant [51 x i8] c"For encode/decode  --server-name/-i is mandatory \0A\00", align 1, !dbg !176
@.str.28 = private unnamed_addr constant [51 x i8] c"For encode/decode  --auth-key-id/-j is mandatory \0A\00", align 1, !dbg !181
@.str.29 = private unnamed_addr constant [48 x i8] c"For encode/decode  --auth-key/-k is mandatory \0A\00", align 1, !dbg !183
@.str.30 = private unnamed_addr constant [58 x i8] c"For encode/decode  --auth-key-timestamp/-l is mandatory \0A\00", align 1, !dbg !188
@.str.31 = private unnamed_addr constant [57 x i8] c"For encode/decode  --auth-key-lifetime/-m is mandatory \0A\00", align 1, !dbg !193
@.str.32 = private unnamed_addr constant [45 x i8] c"For encode --token-mac-key/-p is mandatory \0A\00", align 1, !dbg !198
@.str.33 = private unnamed_addr constant [37 x i8] c"For decode --token/-t is mandatory \0A\00", align 1, !dbg !203
@.str.34 = private unnamed_addr constant [78 x i8] c"\0AWARNING: Token expiry is earlear then Auth key life time start timestamp!!\0A\0A\00", align 1, !dbg !208
@.str.35 = private unnamed_addr constant [87 x i8] c"\0AWARNING: Token life time start timestamp is earlier then Auth key start timestamp!!\0A\0A\00", align 1, !dbg !210
@.str.36 = private unnamed_addr constant [73 x i8] c"\0AWARNING: Auth key will expire before token lifetime start timestamp!!\0A\0A\00", align 1, !dbg !215
@.str.37 = private unnamed_addr constant [55 x i8] c"\0AWARNING: Auth key will expire before token expiry!!\0A\0A\00", align 1, !dbg !220
@.str.38 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1, !dbg !225
@.str.39 = private unnamed_addr constant [26 x i8] c"    \22access_token\22:\22%s\22,\0A\00", align 1, !dbg !230
@.str.40 = private unnamed_addr constant [25 x i8] c"    \22token_type\22:\22pop\22,\0A\00", align 1, !dbg !235
@.str.41 = private unnamed_addr constant [22 x i8] c"    \22expires_in\22:%d,\0A\00", align 1, !dbg !237
@.str.42 = private unnamed_addr constant [17 x i8] c"    \22kid\22:\22%s\22,\0A\00", align 1, !dbg !242
@.str.43 = private unnamed_addr constant [17 x i8] c"    \22key\22:\22%s\22,\0A\00", align 1, !dbg !245
@.str.44 = private unnamed_addr constant [16 x i8] c"    \22alg\22:\22%s\22\0A\00", align 1, !dbg !247
@.str.45 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1, !dbg !249
@.str.46 = private unnamed_addr constant [27 x i8] c"Error during token encode\0A\00", align 1, !dbg !251
@.str.47 = private unnamed_addr constant [18 x i8] c"-=Valid token!=-\0A\00", align 1, !dbg !256
@.str.48 = private unnamed_addr constant [44 x i8] c"Error during token validation and decoding\0A\00", align 1, !dbg !258
@.str.49 = private unnamed_addr constant [24 x i8] c"Error during key setup\0A\00", align 1, !dbg !263
@.str.50 = private unnamed_addr constant [31 x i8] c"%s: cannot encode oauth token\0A\00", align 1, !dbg !265
@__FUNCTION__.encode_token = private unnamed_addr constant [13 x i8] c"encode_token\00", align 1, !dbg !267
@.str.51 = private unnamed_addr constant [31 x i8] c"%s: cannot decode oauth token\0A\00", align 1, !dbg !272
@__FUNCTION__.validate_decode_token = private unnamed_addr constant [22 x i8] c"validate_decode_token\00", align 1, !dbg !274
@.str.52 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !277
@.str.53 = private unnamed_addr constant [27 x i8] c"Token non-encrpyted body:\0A\00", align 1, !dbg !282
@.str.54 = private unnamed_addr constant [15 x i8] c"    nonce: %s\0A\00", align 1, !dbg !284
@.str.55 = private unnamed_addr constant [22 x i8] c"    nonce length: %d\0A\00", align 1, !dbg !286
@.str.56 = private unnamed_addr constant [23 x i8] c"Token encrpyted body:\0A\00", align 1, !dbg !288
@.str.57 = private unnamed_addr constant [17 x i8] c"    mac key: %s\0A\00", align 1, !dbg !293
@.str.58 = private unnamed_addr constant [24 x i8] c"    mac key length: %d\0A\00", align 1, !dbg !295
@.str.59 = private unnamed_addr constant [16 x i8] c"    timestamp:\0A\00", align 1, !dbg !297
@.str.60 = private unnamed_addr constant [38 x i8] c"        unixtime: %u (localtime: %s )\00", align 1, !dbg !299
@.str.61 = private unnamed_addr constant [17 x i8] c"        msec:%u\0A\00", align 1, !dbg !304
@.str.62 = private unnamed_addr constant [19 x i8] c"    lifetime: %lu\0A\00", align 1, !dbg !306

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 !dbg !36 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca %struct._oauth_key, align 8
  %7 = alloca [13 x i8], align 1
  %8 = alloca [33 x i8], align 16
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca [33 x i8], align 16
  %14 = alloca [45 x i8], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [8 x i8], align 1
  %18 = alloca [256 x i8], align 16
  %19 = alloca [1000 x i8], align 16
  %20 = alloca [21 x i8], align 16
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca ptr, align 8
  %24 = alloca i64, align 8
  %25 = alloca ptr, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca %struct._oauth_token, align 8
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !319, metadata !DIExpression()), !dbg !320
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !321, metadata !DIExpression()), !dbg !322
  call void @llvm.dbg.declare(metadata ptr %6, metadata !323, metadata !DIExpression()), !dbg !350
  call void @llvm.dbg.declare(metadata ptr %7, metadata !351, metadata !DIExpression()), !dbg !353
  call void @llvm.memset.p0.i64(ptr align 1 %7, i8 0, i64 13, i1 false), !dbg !353
  call void @llvm.dbg.declare(metadata ptr %8, metadata !354, metadata !DIExpression()), !dbg !355
  call void @llvm.memset.p0.i64(ptr align 16 %8, i8 0, i64 33, i1 false), !dbg !355
  call void @llvm.dbg.declare(metadata ptr %9, metadata !356, metadata !DIExpression()), !dbg !361
  %34 = call i64 @time(ptr noundef null) #8, !dbg !362
  store i64 %34, ptr %9, align 8, !dbg !361
  call void @llvm.dbg.declare(metadata ptr %10, metadata !363, metadata !DIExpression()), !dbg !379
  %35 = call ptr @gmtime(ptr noundef %9) #8, !dbg !380
  store ptr %35, ptr %10, align 8, !dbg !379
  call void @llvm.dbg.declare(metadata ptr %11, metadata !381, metadata !DIExpression()), !dbg !384
  %36 = load ptr, ptr %10, align 8, !dbg !385
  %37 = call i64 @mktime(ptr noundef %36) #8, !dbg !386
  %38 = shl i64 %37, 16, !dbg !387
  store i64 %38, ptr %11, align 8, !dbg !384
  call void @llvm.dbg.declare(metadata ptr %12, metadata !388, metadata !DIExpression()), !dbg !389
  store i32 3600, ptr %12, align 4, !dbg !389
  call void @llvm.dbg.declare(metadata ptr %13, metadata !390, metadata !DIExpression()), !dbg !391
  call void @llvm.memset.p0.i64(ptr align 16 %13, i8 0, i64 33, i1 false), !dbg !391
  call void @llvm.dbg.declare(metadata ptr %14, metadata !392, metadata !DIExpression()), !dbg !393
  call void @llvm.memset.p0.i64(ptr align 16 %14, i8 0, i64 45, i1 false), !dbg !393
  call void @llvm.dbg.declare(metadata ptr %15, metadata !394, metadata !DIExpression()), !dbg !395
  store i32 0, ptr %15, align 4, !dbg !395
  call void @llvm.dbg.declare(metadata ptr %16, metadata !396, metadata !DIExpression()), !dbg !397
  store i32 0, ptr %16, align 4, !dbg !397
  call void @llvm.dbg.declare(metadata ptr %17, metadata !398, metadata !DIExpression()), !dbg !399
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %17, ptr align 1 @__const.main.as_rs_alg, i64 8, i1 false), !dbg !399
  call void @llvm.dbg.declare(metadata ptr %18, metadata !400, metadata !DIExpression()), !dbg !404
  call void @llvm.memset.p0.i64(ptr align 16 %18, i8 0, i64 256, i1 false), !dbg !404
  call void @llvm.dbg.declare(metadata ptr %19, metadata !405, metadata !DIExpression()), !dbg !409
  call void @llvm.memset.p0.i64(ptr align 16 %19, i8 0, i64 1000, i1 false), !dbg !409
  call void @llvm.dbg.declare(metadata ptr %20, metadata !410, metadata !DIExpression()), !dbg !414
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %20, ptr align 16 @__const.main.hmac_alg, i64 21, i1 false), !dbg !414
  call void @llvm.dbg.declare(metadata ptr %21, metadata !415, metadata !DIExpression()), !dbg !416
  store i32 0, ptr %21, align 4, !dbg !416
  call void @llvm.dbg.declare(metadata ptr %22, metadata !417, metadata !DIExpression()), !dbg !418
  store i64 0, ptr %22, align 8, !dbg !418
  call void @llvm.dbg.declare(metadata ptr %23, metadata !419, metadata !DIExpression()), !dbg !420
  call void @llvm.dbg.declare(metadata ptr %24, metadata !421, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.declare(metadata ptr %25, metadata !423, metadata !DIExpression()), !dbg !424
  call void @llvm.dbg.declare(metadata ptr %26, metadata !425, metadata !DIExpression()), !dbg !426
  call void @llvm.dbg.declare(metadata ptr %27, metadata !427, metadata !DIExpression()), !dbg !428
  store i32 0, ptr %27, align 4, !dbg !428
  call void @set_logfile(ptr noundef @.str.16), !dbg !429
  %39 = call i64 @set_system_parameters(i32 noundef 0), !dbg !430
  br label %40, !dbg !431

40:                                               ; preds = %239, %2
  %41 = load i32, ptr %4, align 4, !dbg !432
  %42 = load ptr, ptr %5, align 8, !dbg !433
  %43 = call i32 @getopt_long(i32 noundef %41, ptr noundef %42, ptr noundef @.str.17, ptr noundef @main.long_options, ptr noundef %21) #8, !dbg !434
  store i32 %43, ptr %27, align 4, !dbg !435
  %44 = icmp ne i32 %43, -1, !dbg !436
  br i1 %44, label %45, label %240, !dbg !431

45:                                               ; preds = %40
  %46 = load i32, ptr %27, align 4, !dbg !437
  switch i32 %46, label %236 [
    i32 104, label %47
    i32 118, label %50
    i32 101, label %51
    i32 100, label %52
    i32 105, label %53
    i32 106, label %77
    i32 107, label %101
    i32 108, label %125
    i32 109, label %128
    i32 110, label %131
    i32 111, label %150
    i32 112, label %166
    i32 113, label %182
    i32 114, label %185
    i32 116, label %188
    i32 117, label %212
  ], !dbg !439

47:                                               ; preds = %45
  %48 = load ptr, ptr @stderr, align 8, !dbg !440
  %49 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %48, ptr noundef @.str.18, ptr noundef @Usage), !dbg !442
  call void @exit(i32 noundef 1) #9, !dbg !443
  unreachable, !dbg !443

50:                                               ; preds = %45
  store i32 1, ptr @main.verbose_flag, align 4, !dbg !444
  br label %239, !dbg !445

51:                                               ; preds = %45
  store i32 1, ptr @main.encrypt_flag, align 4, !dbg !446
  br label %239, !dbg !447

52:                                               ; preds = %45
  store i32 1, ptr @main.decrypt_flag, align 4, !dbg !448
  br label %239, !dbg !449

53:                                               ; preds = %45
  %54 = load ptr, ptr @optarg, align 8, !dbg !450
  %55 = call i64 @strlen(ptr noundef %54) #10, !dbg !452
  %56 = icmp ule i64 %55, 255, !dbg !453
  br i1 %56, label %57, label %73, !dbg !454

57:                                               ; preds = %53
  br label %58, !dbg !455

58:                                               ; preds = %57
  %59 = getelementptr inbounds [256 x i8], ptr %18, i64 0, i64 0, !dbg !457
  %60 = load ptr, ptr @optarg, align 8, !dbg !457
  %61 = icmp ne ptr %59, %60, !dbg !457
  br i1 %61, label %62, label %71, !dbg !460

62:                                               ; preds = %58
  call void @llvm.dbg.declare(metadata ptr %28, metadata !461, metadata !DIExpression()), !dbg !465
  store i64 256, ptr %28, align 8, !dbg !465
  %63 = getelementptr inbounds [256 x i8], ptr %18, i64 0, i64 0, !dbg !465
  %64 = load ptr, ptr @optarg, align 8, !dbg !465
  %65 = load i64, ptr %28, align 8, !dbg !465
  %66 = call ptr @strncpy(ptr noundef %63, ptr noundef %64, i64 noundef %65) #8, !dbg !465
  %67 = getelementptr inbounds [256 x i8], ptr %18, i64 0, i64 0, !dbg !465
  %68 = load i64, ptr %28, align 8, !dbg !465
  %69 = sub i64 %68, 1, !dbg !465
  %70 = getelementptr inbounds i8, ptr %67, i64 %69, !dbg !465
  store i8 0, ptr %70, align 1, !dbg !465
  br label %71, !dbg !466

71:                                               ; preds = %62, %58
  br label %72, !dbg !460

72:                                               ; preds = %71
  br label %76, !dbg !467

73:                                               ; preds = %53
  %74 = load ptr, ptr @stderr, align 8, !dbg !468
  %75 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %74, ptr noundef @.str.19, i32 noundef 32), !dbg !470
  call void @exit(i32 noundef 1) #9, !dbg !471
  unreachable, !dbg !471

76:                                               ; preds = %72
  br label %239, !dbg !472

77:                                               ; preds = %45
  %78 = load ptr, ptr @optarg, align 8, !dbg !473
  %79 = call i64 @strlen(ptr noundef %78) #10, !dbg !475
  %80 = icmp ule i64 %79, 32, !dbg !476
  br i1 %80, label %81, label %97, !dbg !477

81:                                               ; preds = %77
  br label %82, !dbg !478

82:                                               ; preds = %81
  %83 = getelementptr inbounds [33 x i8], ptr %13, i64 0, i64 0, !dbg !480
  %84 = load ptr, ptr @optarg, align 8, !dbg !480
  %85 = icmp ne ptr %83, %84, !dbg !480
  br i1 %85, label %86, label %95, !dbg !483

86:                                               ; preds = %82
  call void @llvm.dbg.declare(metadata ptr %29, metadata !484, metadata !DIExpression()), !dbg !488
  store i64 33, ptr %29, align 8, !dbg !488
  %87 = getelementptr inbounds [33 x i8], ptr %13, i64 0, i64 0, !dbg !488
  %88 = load ptr, ptr @optarg, align 8, !dbg !488
  %89 = load i64, ptr %29, align 8, !dbg !488
  %90 = call ptr @strncpy(ptr noundef %87, ptr noundef %88, i64 noundef %89) #8, !dbg !488
  %91 = getelementptr inbounds [33 x i8], ptr %13, i64 0, i64 0, !dbg !488
  %92 = load i64, ptr %29, align 8, !dbg !488
  %93 = sub i64 %92, 1, !dbg !488
  %94 = getelementptr inbounds i8, ptr %91, i64 %93, !dbg !488
  store i8 0, ptr %94, align 1, !dbg !488
  br label %95, !dbg !489

95:                                               ; preds = %86, %82
  br label %96, !dbg !483

96:                                               ; preds = %95
  br label %100, !dbg !490

97:                                               ; preds = %77
  %98 = load ptr, ptr @stderr, align 8, !dbg !491
  %99 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %98, ptr noundef @.str.20, i32 noundef 32), !dbg !493
  call void @exit(i32 noundef 1) #9, !dbg !494
  unreachable, !dbg !494

100:                                              ; preds = %96
  br label %239, !dbg !495

101:                                              ; preds = %45
  %102 = load ptr, ptr @optarg, align 8, !dbg !496
  %103 = call i64 @strlen(ptr noundef %102) #10, !dbg !498
  %104 = icmp ule i64 %103, 44, !dbg !499
  br i1 %104, label %105, label %121, !dbg !500

105:                                              ; preds = %101
  br label %106, !dbg !501

106:                                              ; preds = %105
  %107 = getelementptr inbounds [45 x i8], ptr %14, i64 0, i64 0, !dbg !503
  %108 = load ptr, ptr @optarg, align 8, !dbg !503
  %109 = icmp ne ptr %107, %108, !dbg !503
  br i1 %109, label %110, label %119, !dbg !506

110:                                              ; preds = %106
  call void @llvm.dbg.declare(metadata ptr %30, metadata !507, metadata !DIExpression()), !dbg !511
  store i64 45, ptr %30, align 8, !dbg !511
  %111 = getelementptr inbounds [45 x i8], ptr %14, i64 0, i64 0, !dbg !511
  %112 = load ptr, ptr @optarg, align 8, !dbg !511
  %113 = load i64, ptr %30, align 8, !dbg !511
  %114 = call ptr @strncpy(ptr noundef %111, ptr noundef %112, i64 noundef %113) #8, !dbg !511
  %115 = getelementptr inbounds [45 x i8], ptr %14, i64 0, i64 0, !dbg !511
  %116 = load i64, ptr %30, align 8, !dbg !511
  %117 = sub i64 %116, 1, !dbg !511
  %118 = getelementptr inbounds i8, ptr %115, i64 %117, !dbg !511
  store i8 0, ptr %118, align 1, !dbg !511
  br label %119, !dbg !512

119:                                              ; preds = %110, %106
  br label %120, !dbg !506

120:                                              ; preds = %119
  br label %124, !dbg !513

121:                                              ; preds = %101
  %122 = load ptr, ptr @stderr, align 8, !dbg !514
  %123 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %122, ptr noundef @.str.21, i32 noundef 44), !dbg !516
  call void @exit(i32 noundef 1) #9, !dbg !517
  unreachable, !dbg !517

124:                                              ; preds = %120
  br label %239, !dbg !518

125:                                              ; preds = %45
  %126 = load ptr, ptr @optarg, align 8, !dbg !519
  %127 = call i32 @atoi(ptr noundef %126) #10, !dbg !520
  store i32 %127, ptr %15, align 4, !dbg !521
  br label %239, !dbg !522

128:                                              ; preds = %45
  %129 = load ptr, ptr @optarg, align 8, !dbg !523
  %130 = call i32 @atoi(ptr noundef %129) #10, !dbg !524
  store i32 %130, ptr %16, align 4, !dbg !525
  br label %239, !dbg !526

131:                                              ; preds = %45
  %132 = load ptr, ptr @optarg, align 8, !dbg !527
  %133 = call i64 @strlen(ptr noundef %132) #10, !dbg !529
  %134 = icmp ule i64 %133, 7, !dbg !530
  br i1 %134, label %135, label %146, !dbg !531

135:                                              ; preds = %131
  br label %136, !dbg !532

136:                                              ; preds = %135
  %137 = getelementptr inbounds [8 x i8], ptr %17, i64 0, i64 0, !dbg !534
  %138 = load ptr, ptr @optarg, align 8, !dbg !534
  %139 = icmp ne ptr %137, %138, !dbg !534
  br i1 %139, label %140, label %144, !dbg !537

140:                                              ; preds = %136
  %141 = getelementptr inbounds [8 x i8], ptr %17, i64 0, i64 0, !dbg !538
  %142 = load ptr, ptr @optarg, align 8, !dbg !538
  %143 = call ptr @strcpy(ptr noundef %141, ptr noundef %142) #8, !dbg !538
  br label %144, !dbg !541

144:                                              ; preds = %140, %136
  br label %145, !dbg !537

145:                                              ; preds = %144
  br label %149, !dbg !542

146:                                              ; preds = %131
  %147 = load ptr, ptr @stderr, align 8, !dbg !543
  %148 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %147, ptr noundef @.str.22, i32 noundef 7), !dbg !545
  call void @exit(i32 noundef 1) #9, !dbg !546
  unreachable, !dbg !546

149:                                              ; preds = %145
  br label %239, !dbg !547

150:                                              ; preds = %45
  %151 = load ptr, ptr @optarg, align 8, !dbg !548
  %152 = load ptr, ptr @optarg, align 8, !dbg !549
  %153 = call i64 @strlen(ptr noundef %152) #10, !dbg !550
  %154 = call ptr @base64_decode(ptr noundef %151, i64 noundef %153, ptr noundef %22), !dbg !551
  store ptr %154, ptr %23, align 8, !dbg !552
  %155 = load i64, ptr %22, align 8, !dbg !553
  %156 = icmp ugt i64 %155, 12, !dbg !555
  br i1 %156, label %157, label %158, !dbg !556

157:                                              ; preds = %150
  store i64 12, ptr %22, align 8, !dbg !557
  br label %158, !dbg !559

158:                                              ; preds = %157, %150
  %159 = getelementptr inbounds [13 x i8], ptr %7, i64 0, i64 0, !dbg !560
  %160 = load ptr, ptr %23, align 8, !dbg !561
  %161 = load i64, ptr %22, align 8, !dbg !562
  %162 = call ptr @strncpy(ptr noundef %159, ptr noundef %160, i64 noundef %161) #8, !dbg !563
  %163 = load i64, ptr %22, align 8, !dbg !564
  %164 = add i64 %163, 1, !dbg !565
  %165 = getelementptr inbounds [13 x i8], ptr %7, i64 0, i64 %164, !dbg !566
  store i8 0, ptr %165, align 1, !dbg !567
  br label %239, !dbg !568

166:                                              ; preds = %45
  %167 = load ptr, ptr @optarg, align 8, !dbg !569
  %168 = load ptr, ptr @optarg, align 8, !dbg !570
  %169 = call i64 @strlen(ptr noundef %168) #10, !dbg !571
  %170 = call ptr @base64_decode(ptr noundef %167, i64 noundef %169, ptr noundef %24), !dbg !572
  store ptr %170, ptr %25, align 8, !dbg !573
  %171 = load i64, ptr %24, align 8, !dbg !574
  %172 = icmp ugt i64 %171, 32, !dbg !576
  br i1 %172, label %173, label %174, !dbg !577

173:                                              ; preds = %166
  store i64 32, ptr %24, align 8, !dbg !578
  br label %174, !dbg !580

174:                                              ; preds = %173, %166
  %175 = getelementptr inbounds [33 x i8], ptr %8, i64 0, i64 0, !dbg !581
  %176 = load ptr, ptr %25, align 8, !dbg !582
  %177 = load i64, ptr %24, align 8, !dbg !583
  %178 = call ptr @strncpy(ptr noundef %175, ptr noundef %176, i64 noundef %177) #8, !dbg !584
  %179 = load i64, ptr %24, align 8, !dbg !585
  %180 = add i64 %179, 1, !dbg !586
  %181 = getelementptr inbounds [33 x i8], ptr %8, i64 0, i64 %180, !dbg !587
  store i8 0, ptr %181, align 1, !dbg !588
  br label %239, !dbg !589

182:                                              ; preds = %45
  %183 = load ptr, ptr @optarg, align 8, !dbg !590
  %184 = call i64 @strtoull(ptr noundef %183, ptr noundef null, i32 noundef 10) #8, !dbg !591
  store i64 %184, ptr %11, align 8, !dbg !592
  br label %239, !dbg !593

185:                                              ; preds = %45
  %186 = load ptr, ptr @optarg, align 8, !dbg !594
  %187 = call i32 @atoi(ptr noundef %186) #10, !dbg !595
  store i32 %187, ptr %12, align 4, !dbg !596
  br label %239, !dbg !597

188:                                              ; preds = %45
  %189 = load ptr, ptr @optarg, align 8, !dbg !598
  %190 = call i64 @strlen(ptr noundef %189) #10, !dbg !600
  %191 = icmp ule i64 %190, 1000, !dbg !601
  br i1 %191, label %192, label %208, !dbg !602

192:                                              ; preds = %188
  br label %193, !dbg !603

193:                                              ; preds = %192
  %194 = getelementptr inbounds [1000 x i8], ptr %19, i64 0, i64 0, !dbg !605
  %195 = load ptr, ptr @optarg, align 8, !dbg !605
  %196 = icmp ne ptr %194, %195, !dbg !605
  br i1 %196, label %197, label %206, !dbg !608

197:                                              ; preds = %193
  call void @llvm.dbg.declare(metadata ptr %31, metadata !609, metadata !DIExpression()), !dbg !613
  store i64 1000, ptr %31, align 8, !dbg !613
  %198 = getelementptr inbounds [1000 x i8], ptr %19, i64 0, i64 0, !dbg !613
  %199 = load ptr, ptr @optarg, align 8, !dbg !613
  %200 = load i64, ptr %31, align 8, !dbg !613
  %201 = call ptr @strncpy(ptr noundef %198, ptr noundef %199, i64 noundef %200) #8, !dbg !613
  %202 = getelementptr inbounds [1000 x i8], ptr %19, i64 0, i64 0, !dbg !613
  %203 = load i64, ptr %31, align 8, !dbg !613
  %204 = sub i64 %203, 1, !dbg !613
  %205 = getelementptr inbounds i8, ptr %202, i64 %204, !dbg !613
  store i8 0, ptr %205, align 1, !dbg !613
  br label %206, !dbg !614

206:                                              ; preds = %197, %193
  br label %207, !dbg !608

207:                                              ; preds = %206
  br label %211, !dbg !615

208:                                              ; preds = %188
  %209 = load ptr, ptr @stderr, align 8, !dbg !616
  %210 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %209, ptr noundef @.str.23, i32 noundef 1000), !dbg !618
  call void @exit(i32 noundef 1) #9, !dbg !619
  unreachable, !dbg !619

211:                                              ; preds = %207
  br label %239, !dbg !620

212:                                              ; preds = %45
  %213 = load ptr, ptr @optarg, align 8, !dbg !621
  %214 = call i64 @strlen(ptr noundef %213) #10, !dbg !623
  %215 = icmp ule i64 %214, 20, !dbg !624
  br i1 %215, label %216, label %232, !dbg !625

216:                                              ; preds = %212
  br label %217, !dbg !626

217:                                              ; preds = %216
  %218 = getelementptr inbounds [21 x i8], ptr %20, i64 0, i64 0, !dbg !628
  %219 = load ptr, ptr @optarg, align 8, !dbg !628
  %220 = icmp ne ptr %218, %219, !dbg !628
  br i1 %220, label %221, label %230, !dbg !631

221:                                              ; preds = %217
  call void @llvm.dbg.declare(metadata ptr %32, metadata !632, metadata !DIExpression()), !dbg !636
  store i64 21, ptr %32, align 8, !dbg !636
  %222 = getelementptr inbounds [21 x i8], ptr %20, i64 0, i64 0, !dbg !636
  %223 = load ptr, ptr @optarg, align 8, !dbg !636
  %224 = load i64, ptr %32, align 8, !dbg !636
  %225 = call ptr @strncpy(ptr noundef %222, ptr noundef %223, i64 noundef %224) #8, !dbg !636
  %226 = getelementptr inbounds [21 x i8], ptr %20, i64 0, i64 0, !dbg !636
  %227 = load i64, ptr %32, align 8, !dbg !636
  %228 = sub i64 %227, 1, !dbg !636
  %229 = getelementptr inbounds i8, ptr %226, i64 %228, !dbg !636
  store i8 0, ptr %229, align 1, !dbg !636
  br label %230, !dbg !637

230:                                              ; preds = %221, %217
  br label %231, !dbg !631

231:                                              ; preds = %230
  br label %235, !dbg !638

232:                                              ; preds = %212
  %233 = load ptr, ptr @stderr, align 8, !dbg !639
  %234 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %233, ptr noundef @.str.24, i32 noundef 20), !dbg !641
  call void @exit(i32 noundef 1) #9, !dbg !642
  unreachable, !dbg !642

235:                                              ; preds = %231
  br label %239, !dbg !643

236:                                              ; preds = %45
  %237 = load ptr, ptr @stderr, align 8, !dbg !644
  %238 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %237, ptr noundef @.str.18, ptr noundef @Usage), !dbg !645
  call void @exit(i32 noundef 1) #9, !dbg !646
  unreachable, !dbg !646

239:                                              ; preds = %235, %211, %185, %182, %174, %158, %149, %128, %125, %124, %100, %76, %52, %51, %50
  br label %40, !dbg !431, !llvm.loop !647

240:                                              ; preds = %40
  %241 = load i32, ptr @optind, align 4, !dbg !650
  store i32 %241, ptr %26, align 4, !dbg !652
  br label %242, !dbg !653

242:                                              ; preds = %253, %240
  %243 = load i32, ptr %26, align 4, !dbg !654
  %244 = load i32, ptr %4, align 4, !dbg !656
  %245 = icmp slt i32 %243, %244, !dbg !657
  br i1 %245, label %246, label %256, !dbg !658

246:                                              ; preds = %242
  %247 = load ptr, ptr %5, align 8, !dbg !659
  %248 = load i32, ptr %26, align 4, !dbg !660
  %249 = sext i32 %248 to i64, !dbg !659
  %250 = getelementptr inbounds ptr, ptr %247, i64 %249, !dbg !659
  %251 = load ptr, ptr %250, align 8, !dbg !659
  %252 = call i32 (ptr, ...) @printf(ptr noundef @.str.25, ptr noundef %251), !dbg !661
  br label %253, !dbg !661

253:                                              ; preds = %246
  %254 = load i32, ptr %26, align 4, !dbg !662
  %255 = add nsw i32 %254, 1, !dbg !662
  store i32 %255, ptr %26, align 4, !dbg !662
  br label %242, !dbg !663, !llvm.loop !664

256:                                              ; preds = %242
  %257 = load i32, ptr @optind, align 4, !dbg !666
  %258 = load i32, ptr %4, align 4, !dbg !668
  %259 = icmp sgt i32 %257, %258, !dbg !669
  br i1 %259, label %260, label %263, !dbg !670

260:                                              ; preds = %256
  %261 = load ptr, ptr @stderr, align 8, !dbg !671
  %262 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %261, ptr noundef @.str.18, ptr noundef @Usage), !dbg !673
  call void @exit(i32 noundef -1) #9, !dbg !674
  unreachable, !dbg !674

263:                                              ; preds = %256
  %264 = load i32, ptr @main.encrypt_flag, align 4, !dbg !675
  %265 = icmp ne i32 %264, 0, !dbg !675
  br i1 %265, label %272, label %266, !dbg !677

266:                                              ; preds = %263
  %267 = load i32, ptr @main.decrypt_flag, align 4, !dbg !678
  %268 = icmp ne i32 %267, 0, !dbg !678
  br i1 %268, label %272, label %269, !dbg !679

269:                                              ; preds = %266
  %270 = load ptr, ptr @stderr, align 8, !dbg !680
  %271 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %270, ptr noundef @.str.26), !dbg !682
  call void @exit(i32 noundef -1) #9, !dbg !683
  unreachable, !dbg !683

272:                                              ; preds = %266, %263
  %273 = load i32, ptr @main.encrypt_flag, align 4, !dbg !684
  %274 = icmp ne i32 %273, 0, !dbg !684
  br i1 %274, label %278, label %275, !dbg !686

275:                                              ; preds = %272
  %276 = load i32, ptr @main.decrypt_flag, align 4, !dbg !687
  %277 = icmp ne i32 %276, 0, !dbg !687
  br i1 %277, label %278, label %445, !dbg !688

278:                                              ; preds = %275, %272
  %279 = getelementptr inbounds [256 x i8], ptr %18, i64 0, i64 0, !dbg !689
  %280 = call i64 @strlen(ptr noundef %279) #10, !dbg !692
  %281 = icmp eq i64 %280, 0, !dbg !693
  br i1 %281, label %282, label %285, !dbg !694

282:                                              ; preds = %278
  %283 = load ptr, ptr @stderr, align 8, !dbg !695
  %284 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %283, ptr noundef @.str.27), !dbg !697
  call void @exit(i32 noundef -1) #9, !dbg !698
  unreachable, !dbg !698

285:                                              ; preds = %278
  %286 = getelementptr inbounds [33 x i8], ptr %13, i64 0, i64 0, !dbg !699
  %287 = call i64 @strlen(ptr noundef %286) #10, !dbg !701
  %288 = icmp eq i64 %287, 0, !dbg !702
  br i1 %288, label %289, label %292, !dbg !703

289:                                              ; preds = %285
  %290 = load ptr, ptr @stderr, align 8, !dbg !704
  %291 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %290, ptr noundef @.str.28), !dbg !706
  call void @exit(i32 noundef -1) #9, !dbg !707
  unreachable, !dbg !707

292:                                              ; preds = %285
  %293 = getelementptr inbounds [45 x i8], ptr %14, i64 0, i64 0, !dbg !708
  %294 = call i64 @strlen(ptr noundef %293) #10, !dbg !710
  %295 = icmp eq i64 %294, 0, !dbg !711
  br i1 %295, label %296, label %299, !dbg !712

296:                                              ; preds = %292
  %297 = load ptr, ptr @stderr, align 8, !dbg !713
  %298 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %297, ptr noundef @.str.29), !dbg !715
  call void @exit(i32 noundef -1) #9, !dbg !716
  unreachable, !dbg !716

299:                                              ; preds = %292
  %300 = load i32, ptr %15, align 4, !dbg !717
  %301 = icmp eq i32 %300, 0, !dbg !719
  br i1 %301, label %302, label %305, !dbg !720

302:                                              ; preds = %299
  %303 = load ptr, ptr @stderr, align 8, !dbg !721
  %304 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %303, ptr noundef @.str.30), !dbg !723
  call void @exit(i32 noundef -1) #9, !dbg !724
  unreachable, !dbg !724

305:                                              ; preds = %299
  %306 = load i32, ptr %16, align 4, !dbg !725
  %307 = icmp eq i32 %306, 0, !dbg !727
  br i1 %307, label %308, label %311, !dbg !728

308:                                              ; preds = %305
  %309 = load ptr, ptr @stderr, align 8, !dbg !729
  %310 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %309, ptr noundef @.str.31), !dbg !731
  call void @exit(i32 noundef -1) #9, !dbg !732
  unreachable, !dbg !732

311:                                              ; preds = %305
  %312 = load i32, ptr @main.encrypt_flag, align 4, !dbg !733
  %313 = icmp ne i32 %312, 0, !dbg !733
  br i1 %313, label %314, label %321, !dbg !735

314:                                              ; preds = %311
  %315 = getelementptr inbounds [33 x i8], ptr %8, i64 0, i64 0, !dbg !736
  %316 = call i64 @strlen(ptr noundef %315) #10, !dbg !737
  %317 = icmp eq i64 %316, 0, !dbg !738
  br i1 %317, label %318, label %321, !dbg !739

318:                                              ; preds = %314
  %319 = load ptr, ptr @stderr, align 8, !dbg !740
  %320 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %319, ptr noundef @.str.32), !dbg !742
  call void @exit(i32 noundef -1) #9, !dbg !743
  unreachable, !dbg !743

321:                                              ; preds = %314, %311
  %322 = load i32, ptr @main.encrypt_flag, align 4, !dbg !744
  %323 = icmp ne i32 %322, 0, !dbg !744
  br i1 %323, label %334, label %324, !dbg !746

324:                                              ; preds = %321
  %325 = load i32, ptr @main.decrypt_flag, align 4, !dbg !747
  %326 = icmp ne i32 %325, 0, !dbg !747
  br i1 %326, label %327, label %334, !dbg !748

327:                                              ; preds = %324
  %328 = getelementptr inbounds [1000 x i8], ptr %19, i64 0, i64 0, !dbg !749
  %329 = call i64 @strlen(ptr noundef %328) #10, !dbg !750
  %330 = icmp eq i64 %329, 0, !dbg !751
  br i1 %330, label %331, label %334, !dbg !752

331:                                              ; preds = %327
  %332 = load ptr, ptr @stderr, align 8, !dbg !753
  %333 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %332, ptr noundef @.str.33), !dbg !755
  call void @exit(i32 noundef -1) #9, !dbg !756
  unreachable, !dbg !756

334:                                              ; preds = %327, %324, %321
  %335 = load i32, ptr %15, align 4, !dbg !757
  %336 = zext i32 %335 to i64, !dbg !759
  %337 = shl i64 %336, 16, !dbg !760
  %338 = load i64, ptr %11, align 8, !dbg !761
  %339 = load i32, ptr %12, align 4, !dbg !762
  %340 = zext i32 %339 to i64, !dbg !763
  %341 = shl i64 %340, 16, !dbg !764
  %342 = add i64 %338, %341, !dbg !765
  %343 = icmp ugt i64 %337, %342, !dbg !766
  br i1 %343, label %344, label %347, !dbg !767

344:                                              ; preds = %334
  %345 = load ptr, ptr @stderr, align 8, !dbg !768
  %346 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %345, ptr noundef @.str.34), !dbg !770
  br label %357, !dbg !771

347:                                              ; preds = %334
  %348 = load i32, ptr %15, align 4, !dbg !772
  %349 = zext i32 %348 to i64, !dbg !775
  %350 = shl i64 %349, 16, !dbg !776
  %351 = load i64, ptr %11, align 8, !dbg !777
  %352 = icmp ugt i64 %350, %351, !dbg !778
  br i1 %352, label %353, label %356, !dbg !779

353:                                              ; preds = %347
  %354 = load ptr, ptr @stderr, align 8, !dbg !780
  %355 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %354, ptr noundef @.str.35), !dbg !782
  br label %356, !dbg !783

356:                                              ; preds = %353, %347
  br label %357

357:                                              ; preds = %356, %344
  %358 = load i32, ptr %15, align 4, !dbg !784
  %359 = load i32, ptr %16, align 4, !dbg !786
  %360 = add i32 %358, %359, !dbg !787
  %361 = zext i32 %360 to i64, !dbg !788
  %362 = shl i64 %361, 16, !dbg !789
  %363 = load i64, ptr %11, align 8, !dbg !790
  %364 = icmp ult i64 %362, %363, !dbg !791
  br i1 %364, label %365, label %368, !dbg !792

365:                                              ; preds = %357
  %366 = load ptr, ptr @stderr, align 8, !dbg !793
  %367 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %366, ptr noundef @.str.36), !dbg !795
  br label %384, !dbg !796

368:                                              ; preds = %357
  %369 = load i32, ptr %15, align 4, !dbg !797
  %370 = load i32, ptr %16, align 4, !dbg !800
  %371 = add i32 %369, %370, !dbg !801
  %372 = zext i32 %371 to i64, !dbg !802
  %373 = shl i64 %372, 16, !dbg !803
  %374 = load i64, ptr %11, align 8, !dbg !804
  %375 = load i32, ptr %12, align 4, !dbg !805
  %376 = zext i32 %375 to i64, !dbg !806
  %377 = shl i64 %376, 16, !dbg !807
  %378 = add i64 %374, %377, !dbg !808
  %379 = icmp ult i64 %373, %378, !dbg !809
  br i1 %379, label %380, label %383, !dbg !810

380:                                              ; preds = %368
  %381 = load ptr, ptr @stderr, align 8, !dbg !811
  %382 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %381, ptr noundef @.str.37), !dbg !813
  br label %383, !dbg !814

383:                                              ; preds = %380, %368
  br label %384

384:                                              ; preds = %383, %365
  %385 = getelementptr inbounds [33 x i8], ptr %13, i64 0, i64 0, !dbg !815
  %386 = getelementptr inbounds [45 x i8], ptr %14, i64 0, i64 0, !dbg !817
  %387 = load i32, ptr %15, align 4, !dbg !818
  %388 = load i32, ptr %16, align 4, !dbg !819
  %389 = getelementptr inbounds [8 x i8], ptr %17, i64 0, i64 0, !dbg !820
  %390 = call i32 @setup_ikm_key(ptr noundef %385, ptr noundef %386, i32 noundef %387, i32 noundef %388, ptr noundef %389, ptr noundef %6), !dbg !821
  %391 = icmp eq i32 %390, 0, !dbg !822
  br i1 %391, label %392, label %441, !dbg !823

392:                                              ; preds = %384
  %393 = load i32, ptr @main.encrypt_flag, align 4, !dbg !824
  %394 = icmp ne i32 %393, 0, !dbg !824
  br i1 %394, label %395, label %422, !dbg !827

395:                                              ; preds = %392
  %396 = getelementptr inbounds [256 x i8], ptr %18, i64 0, i64 0, !dbg !828
  %397 = getelementptr inbounds [13 x i8], ptr %7, i64 0, i64 0, !dbg !831
  %398 = getelementptr inbounds [33 x i8], ptr %8, i64 0, i64 0, !dbg !832
  %399 = load i64, ptr %11, align 8, !dbg !833
  %400 = load i32, ptr %12, align 4, !dbg !834
  %401 = getelementptr inbounds [1000 x i8], ptr %19, i64 0, i64 0, !dbg !835
  %402 = call i32 @encode_token(ptr noundef %396, ptr noundef %397, ptr noundef %398, i64 noundef %399, i32 noundef %400, ptr noundef byval(%struct._oauth_key) align 8 %6, ptr noundef %401), !dbg !836
  %403 = icmp eq i32 %402, 0, !dbg !837
  br i1 %403, label %404, label %418, !dbg !838

404:                                              ; preds = %395
  %405 = call i32 (ptr, ...) @printf(ptr noundef @.str.38), !dbg !839
  %406 = getelementptr inbounds [1000 x i8], ptr %19, i64 0, i64 0, !dbg !841
  %407 = call i32 (ptr, ...) @printf(ptr noundef @.str.39, ptr noundef %406), !dbg !842
  %408 = call i32 (ptr, ...) @printf(ptr noundef @.str.40), !dbg !843
  %409 = load i32, ptr %12, align 4, !dbg !844
  %410 = call i32 (ptr, ...) @printf(ptr noundef @.str.41, i32 noundef %409), !dbg !845
  %411 = getelementptr inbounds [33 x i8], ptr %13, i64 0, i64 0, !dbg !846
  %412 = call i32 (ptr, ...) @printf(ptr noundef @.str.42, ptr noundef %411), !dbg !847
  %413 = getelementptr inbounds [33 x i8], ptr %8, i64 0, i64 0, !dbg !848
  %414 = call i32 (ptr, ...) @printf(ptr noundef @.str.43, ptr noundef %413), !dbg !849
  %415 = getelementptr inbounds [21 x i8], ptr %20, i64 0, i64 0, !dbg !850
  %416 = call i32 (ptr, ...) @printf(ptr noundef @.str.44, ptr noundef %415), !dbg !851
  %417 = call i32 (ptr, ...) @printf(ptr noundef @.str.45), !dbg !852
  br label %421, !dbg !853

418:                                              ; preds = %395
  %419 = load ptr, ptr @stderr, align 8, !dbg !854
  %420 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %419, ptr noundef @.str.46), !dbg !856
  call void @exit(i32 noundef -1) #9, !dbg !857
  unreachable, !dbg !857

421:                                              ; preds = %404
  br label %422, !dbg !858

422:                                              ; preds = %421, %392
  %423 = load i32, ptr @main.decrypt_flag, align 4, !dbg !859
  %424 = icmp ne i32 %423, 0, !dbg !859
  br i1 %424, label %425, label %440, !dbg !861

425:                                              ; preds = %422
  call void @llvm.dbg.declare(metadata ptr %33, metadata !862, metadata !DIExpression()), !dbg !881
  %426 = getelementptr inbounds [256 x i8], ptr %18, i64 0, i64 0, !dbg !882
  %427 = getelementptr inbounds [1000 x i8], ptr %19, i64 0, i64 0, !dbg !884
  %428 = call i32 @validate_decode_token(ptr noundef %426, ptr noundef byval(%struct._oauth_key) align 8 %6, ptr noundef %427, ptr noundef %33), !dbg !885
  %429 = icmp eq i32 %428, 0, !dbg !886
  br i1 %429, label %430, label %436, !dbg !887

430:                                              ; preds = %425
  %431 = call i32 (ptr, ...) @printf(ptr noundef @.str.47), !dbg !888
  %432 = load i32, ptr @main.verbose_flag, align 4, !dbg !890
  %433 = icmp ne i32 %432, 0, !dbg !890
  br i1 %433, label %434, label %435, !dbg !892

434:                                              ; preds = %430
  call void @print_token_body(ptr noundef %33), !dbg !893
  br label %435, !dbg !893

435:                                              ; preds = %434, %430
  br label %439, !dbg !894

436:                                              ; preds = %425
  %437 = load ptr, ptr @stderr, align 8, !dbg !895
  %438 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %437, ptr noundef @.str.48), !dbg !897
  call void @exit(i32 noundef -1) #9, !dbg !898
  unreachable, !dbg !898

439:                                              ; preds = %435
  br label %440, !dbg !899

440:                                              ; preds = %439, %422
  br label %444, !dbg !900

441:                                              ; preds = %384
  %442 = load ptr, ptr @stderr, align 8, !dbg !901
  %443 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %442, ptr noundef @.str.49), !dbg !903
  call void @exit(i32 noundef -1) #9, !dbg !904
  unreachable, !dbg !904

444:                                              ; preds = %440
  br label %445, !dbg !905

445:                                              ; preds = %444, %275
  ret i32 0, !dbg !906
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind
declare i64 @time(ptr noundef) #3

; Function Attrs: nounwind
declare ptr @gmtime(ptr noundef) #3

; Function Attrs: nounwind
declare i64 @mktime(ptr noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare void @set_logfile(ptr noundef) #5

declare i64 @set_system_parameters(i32 noundef) #5

; Function Attrs: nounwind
declare i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #6

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #7

; Function Attrs: nounwind
declare ptr @strncpy(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: nounwind willreturn memory(read)
declare i32 @atoi(ptr noundef) #7

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #3

declare ptr @base64_decode(ptr noundef, i64 noundef, ptr noundef) #5

; Function Attrs: nounwind
declare i64 @strtoull(ptr noundef, ptr noundef, i32 noundef) #3

declare i32 @printf(ptr noundef, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_ikm_key(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) #0 !dbg !907 {
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca %struct._oauth_key_data, align 8
  %15 = alloca %struct._oauth_key_data_raw, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca [1025 x i8], align 16
  %20 = alloca i64, align 8
  store ptr %0, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !912, metadata !DIExpression()), !dbg !913
  store ptr %1, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !914, metadata !DIExpression()), !dbg !915
  store i32 %2, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !916, metadata !DIExpression()), !dbg !917
  store i32 %3, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !918, metadata !DIExpression()), !dbg !919
  store ptr %4, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !920, metadata !DIExpression()), !dbg !921
  store ptr %5, ptr %13, align 8
  call void @llvm.dbg.declare(metadata ptr %13, metadata !922, metadata !DIExpression()), !dbg !923
  %21 = load ptr, ptr %13, align 8, !dbg !924
  call void @llvm.memset.p0.i64(ptr align 8 %21, i8 0, i64 952, i1 false), !dbg !925
  call void @llvm.dbg.declare(metadata ptr %14, metadata !926, metadata !DIExpression()), !dbg !939
  call void @llvm.memset.p0.i64(ptr align 8 %14, i8 0, i64 480, i1 false), !dbg !940
  call void @llvm.dbg.declare(metadata ptr %15, metadata !941, metadata !DIExpression()), !dbg !954
  call void @llvm.memset.p0.i64(ptr align 8 %15, i8 0, i64 600, i1 false), !dbg !955
  br label %22, !dbg !956

22:                                               ; preds = %6
  %23 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %15, i32 0, i32 0, !dbg !957
  %24 = getelementptr inbounds [129 x i8], ptr %23, i64 0, i64 0, !dbg !957
  %25 = load ptr, ptr %8, align 8, !dbg !957
  %26 = icmp ne ptr %24, %25, !dbg !957
  br i1 %26, label %27, label %38, !dbg !960

27:                                               ; preds = %22
  call void @llvm.dbg.declare(metadata ptr %16, metadata !961, metadata !DIExpression()), !dbg !965
  store i64 129, ptr %16, align 8, !dbg !965
  %28 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %15, i32 0, i32 0, !dbg !965
  %29 = getelementptr inbounds [129 x i8], ptr %28, i64 0, i64 0, !dbg !965
  %30 = load ptr, ptr %8, align 8, !dbg !965
  %31 = load i64, ptr %16, align 8, !dbg !965
  %32 = call ptr @strncpy(ptr noundef %29, ptr noundef %30, i64 noundef %31) #8, !dbg !965
  %33 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %15, i32 0, i32 0, !dbg !965
  %34 = getelementptr inbounds [129 x i8], ptr %33, i64 0, i64 0, !dbg !965
  %35 = load i64, ptr %16, align 8, !dbg !965
  %36 = sub i64 %35, 1, !dbg !965
  %37 = getelementptr inbounds i8, ptr %34, i64 %36, !dbg !965
  store i8 0, ptr %37, align 1, !dbg !965
  br label %38, !dbg !966

38:                                               ; preds = %27, %22
  br label %39, !dbg !960

39:                                               ; preds = %38
  br label %40, !dbg !967

40:                                               ; preds = %39
  %41 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %15, i32 0, i32 1, !dbg !968
  %42 = getelementptr inbounds [257 x i8], ptr %41, i64 0, i64 0, !dbg !968
  %43 = load ptr, ptr %9, align 8, !dbg !968
  %44 = icmp ne ptr %42, %43, !dbg !968
  br i1 %44, label %45, label %56, !dbg !971

45:                                               ; preds = %40
  call void @llvm.dbg.declare(metadata ptr %17, metadata !972, metadata !DIExpression()), !dbg !976
  store i64 257, ptr %17, align 8, !dbg !976
  %46 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %15, i32 0, i32 1, !dbg !976
  %47 = getelementptr inbounds [257 x i8], ptr %46, i64 0, i64 0, !dbg !976
  %48 = load ptr, ptr %9, align 8, !dbg !976
  %49 = load i64, ptr %17, align 8, !dbg !976
  %50 = call ptr @strncpy(ptr noundef %47, ptr noundef %48, i64 noundef %49) #8, !dbg !976
  %51 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %15, i32 0, i32 1, !dbg !976
  %52 = getelementptr inbounds [257 x i8], ptr %51, i64 0, i64 0, !dbg !976
  %53 = load i64, ptr %17, align 8, !dbg !976
  %54 = sub i64 %53, 1, !dbg !976
  %55 = getelementptr inbounds i8, ptr %52, i64 %54, !dbg !976
  store i8 0, ptr %55, align 1, !dbg !976
  br label %56, !dbg !977

56:                                               ; preds = %45, %40
  br label %57, !dbg !971

57:                                               ; preds = %56
  br label %58, !dbg !978

58:                                               ; preds = %57
  %59 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %15, i32 0, i32 4, !dbg !979
  %60 = getelementptr inbounds [65 x i8], ptr %59, i64 0, i64 0, !dbg !979
  %61 = load ptr, ptr %12, align 8, !dbg !979
  %62 = icmp ne ptr %60, %61, !dbg !979
  br i1 %62, label %63, label %74, !dbg !982

63:                                               ; preds = %58
  call void @llvm.dbg.declare(metadata ptr %18, metadata !983, metadata !DIExpression()), !dbg !987
  store i64 65, ptr %18, align 8, !dbg !987
  %64 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %15, i32 0, i32 4, !dbg !987
  %65 = getelementptr inbounds [65 x i8], ptr %64, i64 0, i64 0, !dbg !987
  %66 = load ptr, ptr %12, align 8, !dbg !987
  %67 = load i64, ptr %18, align 8, !dbg !987
  %68 = call ptr @strncpy(ptr noundef %65, ptr noundef %66, i64 noundef %67) #8, !dbg !987
  %69 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %15, i32 0, i32 4, !dbg !987
  %70 = getelementptr inbounds [65 x i8], ptr %69, i64 0, i64 0, !dbg !987
  %71 = load i64, ptr %18, align 8, !dbg !987
  %72 = sub i64 %71, 1, !dbg !987
  %73 = getelementptr inbounds i8, ptr %70, i64 %72, !dbg !987
  store i8 0, ptr %73, align 1, !dbg !987
  br label %74, !dbg !988

74:                                               ; preds = %63, %58
  br label %75, !dbg !982

75:                                               ; preds = %74
  %76 = load i32, ptr %10, align 4, !dbg !989
  %77 = zext i32 %76 to i64, !dbg !989
  %78 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %15, i32 0, i32 2, !dbg !990
  store i64 %77, ptr %78, align 8, !dbg !991
  %79 = load i32, ptr %11, align 4, !dbg !992
  %80 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %15, i32 0, i32 3, !dbg !993
  store i32 %79, ptr %80, align 8, !dbg !994
  call void @convert_oauth_key_data_raw(ptr noundef %15, ptr noundef %14), !dbg !995
  call void @llvm.dbg.declare(metadata ptr %19, metadata !996, metadata !DIExpression()), !dbg !1000
  call void @llvm.memset.p0.i64(ptr align 16 %19, i8 0, i64 1025, i1 false), !dbg !1000
  call void @llvm.dbg.declare(metadata ptr %20, metadata !1001, metadata !DIExpression()), !dbg !1002
  store i64 1024, ptr %20, align 8, !dbg !1002
  %81 = load ptr, ptr %13, align 8, !dbg !1003
  %82 = getelementptr inbounds [1025 x i8], ptr %19, i64 0, i64 0, !dbg !1005
  %83 = load i64, ptr %20, align 8, !dbg !1006
  %84 = call i32 @convert_oauth_key_data(ptr noundef %14, ptr noundef %81, ptr noundef %82, i64 noundef %83), !dbg !1007
  %85 = icmp slt i32 %84, 0, !dbg !1008
  br i1 %85, label %86, label %90, !dbg !1009

86:                                               ; preds = %75
  %87 = load ptr, ptr @stderr, align 8, !dbg !1010
  %88 = getelementptr inbounds [1025 x i8], ptr %19, i64 0, i64 0, !dbg !1012
  %89 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %87, ptr noundef @.str.18, ptr noundef %88), !dbg !1013
  store i32 -1, ptr %7, align 4, !dbg !1014
  br label %91, !dbg !1014

90:                                               ; preds = %75
  store i32 0, ptr %7, align 4, !dbg !1015
  br label %91, !dbg !1015

91:                                               ; preds = %90, %86
  %92 = load i32, ptr %7, align 4, !dbg !1016
  ret i32 %92, !dbg !1016
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_token(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef byval(%struct._oauth_key) align 8 %5, ptr noundef %6) #0 !dbg !1017 {
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 8
  %15 = alloca %struct._oauth_token, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct._encoded_oauth_token, align 8
  %19 = alloca i64, align 8
  %20 = alloca ptr, align 8
  store ptr %0, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1023, metadata !DIExpression()), !dbg !1024
  store ptr %1, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1025, metadata !DIExpression()), !dbg !1026
  store ptr %2, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1027, metadata !DIExpression()), !dbg !1028
  store i64 %3, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1029, metadata !DIExpression()), !dbg !1030
  store i32 %4, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1031, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1033, metadata !DIExpression()), !dbg !1034
  store ptr %6, ptr %14, align 8
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1035, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1037, metadata !DIExpression()), !dbg !1038
  call void @llvm.memset.p0.i64(ptr align 8 %15, i8 0, i64 408, i1 false), !dbg !1039
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1040, metadata !DIExpression()), !dbg !1042
  %21 = load ptr, ptr %11, align 8, !dbg !1043
  %22 = call i64 @strlen(ptr noundef %21) #10, !dbg !1044
  store i64 %22, ptr %16, align 8, !dbg !1042
  %23 = load i64, ptr %16, align 8, !dbg !1045
  %24 = trunc i64 %23 to i16, !dbg !1046
  %25 = getelementptr inbounds %struct._oauth_token, ptr %15, i32 0, i32 0, !dbg !1047
  %26 = getelementptr inbounds %struct._oauth_encrypted_block, ptr %25, i32 0, i32 2, !dbg !1048
  store i16 %24, ptr %26, align 2, !dbg !1049
  br label %27, !dbg !1050

27:                                               ; preds = %7
  %28 = getelementptr inbounds %struct._oauth_token, ptr %15, i32 0, i32 0, !dbg !1051
  %29 = getelementptr inbounds %struct._oauth_encrypted_block, ptr %28, i32 0, i32 3, !dbg !1051
  %30 = getelementptr inbounds [128 x i8], ptr %29, i64 0, i64 0, !dbg !1051
  %31 = load ptr, ptr %11, align 8, !dbg !1051
  %32 = icmp ne ptr %30, %31, !dbg !1051
  br i1 %32, label %33, label %46, !dbg !1054

33:                                               ; preds = %27
  call void @llvm.dbg.declare(metadata ptr %17, metadata !1055, metadata !DIExpression()), !dbg !1059
  store i64 128, ptr %17, align 8, !dbg !1059
  %34 = getelementptr inbounds %struct._oauth_token, ptr %15, i32 0, i32 0, !dbg !1059
  %35 = getelementptr inbounds %struct._oauth_encrypted_block, ptr %34, i32 0, i32 3, !dbg !1059
  %36 = getelementptr inbounds [128 x i8], ptr %35, i64 0, i64 0, !dbg !1059
  %37 = load ptr, ptr %11, align 8, !dbg !1059
  %38 = load i64, ptr %17, align 8, !dbg !1059
  %39 = call ptr @strncpy(ptr noundef %36, ptr noundef %37, i64 noundef %38) #8, !dbg !1059
  %40 = getelementptr inbounds %struct._oauth_token, ptr %15, i32 0, i32 0, !dbg !1059
  %41 = getelementptr inbounds %struct._oauth_encrypted_block, ptr %40, i32 0, i32 3, !dbg !1059
  %42 = getelementptr inbounds [128 x i8], ptr %41, i64 0, i64 0, !dbg !1059
  %43 = load i64, ptr %17, align 8, !dbg !1059
  %44 = sub i64 %43, 1, !dbg !1059
  %45 = getelementptr inbounds i8, ptr %42, i64 %44, !dbg !1059
  store i8 0, ptr %45, align 1, !dbg !1059
  br label %46, !dbg !1060

46:                                               ; preds = %33, %27
  br label %47, !dbg !1054

47:                                               ; preds = %46
  %48 = load i64, ptr %12, align 8, !dbg !1061
  %49 = getelementptr inbounds %struct._oauth_token, ptr %15, i32 0, i32 0, !dbg !1062
  %50 = getelementptr inbounds %struct._oauth_encrypted_block, ptr %49, i32 0, i32 4, !dbg !1063
  store i64 %48, ptr %50, align 8, !dbg !1064
  %51 = load i32, ptr %13, align 4, !dbg !1065
  %52 = getelementptr inbounds %struct._oauth_token, ptr %15, i32 0, i32 0, !dbg !1066
  %53 = getelementptr inbounds %struct._oauth_encrypted_block, ptr %52, i32 0, i32 5, !dbg !1067
  store i32 %51, ptr %53, align 8, !dbg !1068
  call void @llvm.dbg.declare(metadata ptr %18, metadata !1069, metadata !DIExpression()), !dbg !1078
  call void @llvm.memset.p0.i64(ptr align 8 %18, i8 0, i64 1032, i1 false), !dbg !1079
  %54 = load ptr, ptr %10, align 8, !dbg !1080
  %55 = load i8, ptr %54, align 1, !dbg !1082
  %56 = icmp ne i8 %55, 0, !dbg !1082
  br i1 %56, label %58, label %57, !dbg !1083

57:                                               ; preds = %47
  store ptr null, ptr %10, align 8, !dbg !1084
  br label %58, !dbg !1085

58:                                               ; preds = %57, %47
  %59 = load ptr, ptr %9, align 8, !dbg !1086
  %60 = load ptr, ptr %10, align 8, !dbg !1088
  %61 = call i32 @encode_oauth_token(ptr noundef %59, ptr noundef %18, ptr noundef %5, ptr noundef %15, ptr noundef %60), !dbg !1089
  %62 = icmp slt i32 %61, 0, !dbg !1090
  br i1 %62, label %63, label %66, !dbg !1091

63:                                               ; preds = %58
  %64 = load ptr, ptr @stderr, align 8, !dbg !1092
  %65 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %64, ptr noundef @.str.50, ptr noundef @__FUNCTION__.encode_token), !dbg !1094
  store i32 -1, ptr %8, align 4, !dbg !1095
  br label %82, !dbg !1095

66:                                               ; preds = %58
  call void @llvm.dbg.declare(metadata ptr %19, metadata !1096, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.declare(metadata ptr %20, metadata !1098, metadata !DIExpression()), !dbg !1099
  %67 = getelementptr inbounds %struct._encoded_oauth_token, ptr %18, i32 0, i32 0, !dbg !1100
  %68 = getelementptr inbounds [1024 x i8], ptr %67, i64 0, i64 0, !dbg !1101
  %69 = getelementptr inbounds %struct._encoded_oauth_token, ptr %18, i32 0, i32 1, !dbg !1102
  %70 = load i64, ptr %69, align 8, !dbg !1102
  %71 = call ptr @base64_encode(ptr noundef %68, i64 noundef %70, ptr noundef %19), !dbg !1103
  store ptr %71, ptr %20, align 8, !dbg !1099
  br label %72, !dbg !1104

72:                                               ; preds = %66
  %73 = load ptr, ptr %14, align 8, !dbg !1105
  %74 = load ptr, ptr %20, align 8, !dbg !1105
  %75 = icmp ne ptr %73, %74, !dbg !1105
  br i1 %75, label %76, label %80, !dbg !1108

76:                                               ; preds = %72
  %77 = load ptr, ptr %14, align 8, !dbg !1109
  %78 = load ptr, ptr %20, align 8, !dbg !1109
  %79 = call ptr @strcpy(ptr noundef %77, ptr noundef %78) #8, !dbg !1109
  br label %80, !dbg !1112

80:                                               ; preds = %76, %72
  br label %81, !dbg !1108

81:                                               ; preds = %80
  store i32 0, ptr %8, align 4, !dbg !1113
  br label %82, !dbg !1113

82:                                               ; preds = %81, %63
  %83 = load i32, ptr %8, align 4, !dbg !1114
  ret i32 %83, !dbg !1114
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_decode_token(ptr noundef %0, ptr noundef byval(%struct._oauth_key) align 8 %1, ptr noundef %2, ptr noundef %3) #0 !dbg !1115 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %struct._encoded_oauth_token, align 8
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1119, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.declare(metadata ptr %1, metadata !1121, metadata !DIExpression()), !dbg !1122
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1123, metadata !DIExpression()), !dbg !1124
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1125, metadata !DIExpression()), !dbg !1126
  %12 = load ptr, ptr %8, align 8, !dbg !1127
  call void @llvm.memset.p0.i64(ptr align 8 %12, i8 0, i64 408, i1 false), !dbg !1128
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1129, metadata !DIExpression()), !dbg !1130
  call void @llvm.memset.p0.i64(ptr align 8 %9, i8 0, i64 1032, i1 false), !dbg !1131
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1132, metadata !DIExpression()), !dbg !1133
  %13 = load ptr, ptr %7, align 8, !dbg !1134
  %14 = call i64 @strlen(ptr noundef %13) #10, !dbg !1135
  store i64 %14, ptr %10, align 8, !dbg !1133
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1136, metadata !DIExpression()), !dbg !1139
  %15 = load ptr, ptr %7, align 8, !dbg !1140
  %16 = load i64, ptr %10, align 8, !dbg !1141
  %17 = getelementptr inbounds %struct._encoded_oauth_token, ptr %9, i32 0, i32 1, !dbg !1142
  %18 = call ptr @base64_decode(ptr noundef %15, i64 noundef %16, ptr noundef %17), !dbg !1143
  store ptr %18, ptr %11, align 8, !dbg !1139
  %19 = getelementptr inbounds %struct._encoded_oauth_token, ptr %9, i32 0, i32 0, !dbg !1144
  %20 = getelementptr inbounds [1024 x i8], ptr %19, i64 0, i64 0, !dbg !1145
  %21 = load ptr, ptr %11, align 8, !dbg !1146
  %22 = getelementptr inbounds %struct._encoded_oauth_token, ptr %9, i32 0, i32 1, !dbg !1147
  %23 = load i64, ptr %22, align 8, !dbg !1147
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %20, ptr align 1 %21, i64 %23, i1 false), !dbg !1145
  %24 = load ptr, ptr %6, align 8, !dbg !1148
  %25 = load ptr, ptr %8, align 8, !dbg !1150
  %26 = call i32 @decode_oauth_token(ptr noundef %24, ptr noundef %9, ptr noundef %1, ptr noundef %25), !dbg !1151
  %27 = icmp slt i32 %26, 0, !dbg !1152
  br i1 %27, label %28, label %31, !dbg !1153

28:                                               ; preds = %4
  %29 = load ptr, ptr @stderr, align 8, !dbg !1154
  %30 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef @.str.51, ptr noundef @__FUNCTION__.validate_decode_token), !dbg !1156
  store i32 -1, ptr %5, align 4, !dbg !1157
  br label %32, !dbg !1157

31:                                               ; preds = %4
  store i32 0, ptr %5, align 4, !dbg !1158
  br label %32, !dbg !1158

32:                                               ; preds = %31, %28
  %33 = load i32, ptr %5, align 4, !dbg !1160
  ret i32 %33, !dbg !1160
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_token_body(ptr noundef %0) #0 !dbg !1161 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1164, metadata !DIExpression()), !dbg !1165
  %7 = call i32 (ptr, ...) @printf(ptr noundef @.str.52), !dbg !1166
  %8 = call i32 (ptr, ...) @printf(ptr noundef @.str.53), !dbg !1167
  %9 = call i32 (ptr, ...) @printf(ptr noundef @.str.38), !dbg !1168
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1169, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1171, metadata !DIExpression()), !dbg !1172
  %10 = load ptr, ptr %2, align 8, !dbg !1173
  %11 = getelementptr inbounds %struct._oauth_token, ptr %10, i32 0, i32 0, !dbg !1174
  %12 = getelementptr inbounds %struct._oauth_encrypted_block, ptr %11, i32 0, i32 1, !dbg !1175
  %13 = getelementptr inbounds [256 x i8], ptr %12, i64 0, i64 0, !dbg !1173
  %14 = load ptr, ptr %2, align 8, !dbg !1176
  %15 = getelementptr inbounds %struct._oauth_token, ptr %14, i32 0, i32 0, !dbg !1177
  %16 = getelementptr inbounds %struct._oauth_encrypted_block, ptr %15, i32 0, i32 0, !dbg !1178
  %17 = load i16, ptr %16, align 8, !dbg !1178
  %18 = zext i16 %17 to i64, !dbg !1176
  %19 = call ptr @base64_encode(ptr noundef %13, i64 noundef %18, ptr noundef %3), !dbg !1179
  store ptr %19, ptr %4, align 8, !dbg !1172
  %20 = load ptr, ptr %4, align 8, !dbg !1180
  %21 = call i32 (ptr, ...) @printf(ptr noundef @.str.54, ptr noundef %20), !dbg !1181
  %22 = load ptr, ptr %2, align 8, !dbg !1182
  %23 = getelementptr inbounds %struct._oauth_token, ptr %22, i32 0, i32 0, !dbg !1183
  %24 = getelementptr inbounds %struct._oauth_encrypted_block, ptr %23, i32 0, i32 0, !dbg !1184
  %25 = load i16, ptr %24, align 8, !dbg !1184
  %26 = zext i16 %25 to i32, !dbg !1185
  %27 = call i32 (ptr, ...) @printf(ptr noundef @.str.55, i32 noundef %26), !dbg !1186
  %28 = call i32 (ptr, ...) @printf(ptr noundef @.str.56), !dbg !1187
  %29 = call i32 (ptr, ...) @printf(ptr noundef @.str.38), !dbg !1188
  %30 = load ptr, ptr %2, align 8, !dbg !1189
  %31 = getelementptr inbounds %struct._oauth_token, ptr %30, i32 0, i32 0, !dbg !1190
  %32 = getelementptr inbounds %struct._oauth_encrypted_block, ptr %31, i32 0, i32 3, !dbg !1191
  %33 = getelementptr inbounds [128 x i8], ptr %32, i64 0, i64 0, !dbg !1189
  %34 = call i32 (ptr, ...) @printf(ptr noundef @.str.57, ptr noundef %33), !dbg !1192
  %35 = load ptr, ptr %2, align 8, !dbg !1193
  %36 = getelementptr inbounds %struct._oauth_token, ptr %35, i32 0, i32 0, !dbg !1194
  %37 = getelementptr inbounds %struct._oauth_encrypted_block, ptr %36, i32 0, i32 2, !dbg !1195
  %38 = load i16, ptr %37, align 2, !dbg !1195
  %39 = zext i16 %38 to i32, !dbg !1196
  %40 = call i32 (ptr, ...) @printf(ptr noundef @.str.58, i32 noundef %39), !dbg !1197
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1198, metadata !DIExpression()), !dbg !1199
  %41 = load ptr, ptr %2, align 8, !dbg !1200
  %42 = getelementptr inbounds %struct._oauth_token, ptr %41, i32 0, i32 0, !dbg !1201
  %43 = getelementptr inbounds %struct._oauth_encrypted_block, ptr %42, i32 0, i32 4, !dbg !1202
  %44 = load i64, ptr %43, align 8, !dbg !1202
  %45 = lshr i64 %44, 16, !dbg !1203
  store i64 %45, ptr %5, align 8, !dbg !1199
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1204, metadata !DIExpression()), !dbg !1205
  %46 = load ptr, ptr %2, align 8, !dbg !1206
  %47 = getelementptr inbounds %struct._oauth_token, ptr %46, i32 0, i32 0, !dbg !1207
  %48 = getelementptr inbounds %struct._oauth_encrypted_block, ptr %47, i32 0, i32 4, !dbg !1208
  %49 = load i64, ptr %48, align 8, !dbg !1208
  %50 = and i64 %49, 65535, !dbg !1209
  %51 = mul i64 %50, 64, !dbg !1210
  %52 = trunc i64 %51 to i32, !dbg !1211
  store i32 %52, ptr %6, align 4, !dbg !1205
  %53 = call i32 (ptr, ...) @printf(ptr noundef @.str.59), !dbg !1212
  %54 = load i64, ptr %5, align 8, !dbg !1213
  %55 = trunc i64 %54 to i32, !dbg !1214
  %56 = call ptr @ctime(ptr noundef %5) #8, !dbg !1215
  %57 = call i32 (ptr, ...) @printf(ptr noundef @.str.60, i32 noundef %55, ptr noundef %56), !dbg !1216
  %58 = load i32, ptr %6, align 4, !dbg !1217
  %59 = call i32 (ptr, ...) @printf(ptr noundef @.str.61, i32 noundef %58), !dbg !1218
  %60 = load ptr, ptr %2, align 8, !dbg !1219
  %61 = getelementptr inbounds %struct._oauth_token, ptr %60, i32 0, i32 0, !dbg !1220
  %62 = getelementptr inbounds %struct._oauth_encrypted_block, ptr %61, i32 0, i32 5, !dbg !1221
  %63 = load i32, ptr %62, align 8, !dbg !1221
  %64 = zext i32 %63 to i64, !dbg !1222
  %65 = call i32 (ptr, ...) @printf(ptr noundef @.str.62, i64 noundef %64), !dbg !1223
  %66 = call i32 (ptr, ...) @printf(ptr noundef @.str.45), !dbg !1224
  ret void, !dbg !1225
}

declare void @convert_oauth_key_data_raw(ptr noundef, ptr noundef) #5

declare i32 @convert_oauth_key_data(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #5

declare i32 @encode_oauth_token(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #5

declare ptr @base64_encode(ptr noundef, i64 noundef, ptr noundef) #5

declare i32 @decode_oauth_token(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: nounwind
declare ptr @ctime(ptr noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!311, !312, !313, !314, !315, !316, !317}
!llvm.ident = !{!318}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "Usage", scope: !2, file: !37, line: 179, type: !308, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !14, globals: !33, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/raj/coturn/src/apps/oauth/oauth.c", directory: "/home/raj/coturn/build", checksumkind: CSK_MD5, checksum: "e7d0eeb02a01ef087a7707b49f01ccb7")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_ENC_ALG", file: !6, line: 177, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "src/client/ns_turn_msg_defs.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "4d8c44ae9e82b7a50b86805787352690")
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!9, !10, !11, !12, !13}
!9 = !DIEnumerator(name: "ENC_ALG_ERROR", value: -1)
!10 = !DIEnumerator(name: "ENC_ALG_DEFAULT", value: 0)
!11 = !DIEnumerator(name: "A256GCM", value: 0)
!12 = !DIEnumerator(name: "A128GCM", value: 1)
!13 = !DIEnumerator(name: "ENC_ALG_NUM", value: 2)
!14 = !{!15, !16, !19, !20, !25, !30, !7, !31, !32}
!15 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!18 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !21, line: 25, baseType: !22)
!21 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !23, line: 40, baseType: !24)
!23 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!24 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !21, line: 24, baseType: !28)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !23, line: 38, baseType: !29)
!29 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!31 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!32 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!33 = !{!0, !34, !42, !44, !46, !51, !53, !55, !60, !65, !67, !72, !77, !82, !84, !86, !91, !96, !101, !106, !108, !121, !126, !131, !136, !141, !146, !151, !156, !161, !166, !171, !176, !181, !183, !188, !193, !198, !203, !208, !210, !215, !220, !225, !230, !235, !237, !242, !245, !247, !249, !251, !256, !258, !263, !265, !267, !272, !274, !277, !282, !284, !286, !288, !293, !295, !297, !299, !304, !306}
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(name: "verbose_flag", scope: !36, file: !37, line: 233, type: !7, isLocal: true, isDefinition: true)
!36 = distinct !DISubprogram(name: "main", scope: !37, file: !37, line: 205, type: !38, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !41)
!37 = !DIFile(filename: "src/apps/oauth/oauth.c", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "e7d0eeb02a01ef087a7707b49f01ccb7")
!38 = !DISubroutineType(types: !39)
!39 = !{!7, !7, !40}
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!41 = !{}
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(name: "encrypt_flag", scope: !36, file: !37, line: 234, type: !7, isLocal: true, isDefinition: true)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "decrypt_flag", scope: !36, file: !37, line: 235, type: !7, isLocal: true, isDefinition: true)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(scope: null, file: !37, line: 240, type: !48, isLocal: true, isDefinition: true)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 64, elements: !49)
!49 = !{!50}
!50 = !DISubrange(count: 8)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(scope: null, file: !37, line: 241, type: !48, isLocal: true, isDefinition: true)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(scope: null, file: !37, line: 242, type: !48, isLocal: true, isDefinition: true)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(scope: null, file: !37, line: 243, type: !57, isLocal: true, isDefinition: true)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 40, elements: !58)
!58 = !{!59}
!59 = !DISubrange(count: 5)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(scope: null, file: !37, line: 244, type: !62, isLocal: true, isDefinition: true)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 96, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 12)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(scope: null, file: !37, line: 245, type: !62, isLocal: true, isDefinition: true)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(scope: null, file: !37, line: 246, type: !69, isLocal: true, isDefinition: true)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 72, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 9)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(scope: null, file: !37, line: 247, type: !74, isLocal: true, isDefinition: true)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 152, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 19)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(scope: null, file: !37, line: 248, type: !79, isLocal: true, isDefinition: true)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 144, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 18)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(scope: null, file: !37, line: 249, type: !74, isLocal: true, isDefinition: true)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(scope: null, file: !37, line: 250, type: !62, isLocal: true, isDefinition: true)
!86 = !DIGlobalVariableExpression(var: !87, expr: !DIExpression())
!87 = distinct !DIGlobalVariable(scope: null, file: !37, line: 251, type: !88, isLocal: true, isDefinition: true)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 112, elements: !89)
!89 = !{!90}
!90 = !DISubrange(count: 14)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(scope: null, file: !37, line: 252, type: !93, isLocal: true, isDefinition: true)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 128, elements: !94)
!94 = !{!95}
!95 = !DISubrange(count: 16)
!96 = !DIGlobalVariableExpression(var: !97, expr: !DIExpression())
!97 = distinct !DIGlobalVariable(scope: null, file: !37, line: 253, type: !98, isLocal: true, isDefinition: true)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 120, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 15)
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(scope: null, file: !37, line: 254, type: !103, isLocal: true, isDefinition: true)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 48, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 6)
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(scope: null, file: !37, line: 255, type: !69, isLocal: true, isDefinition: true)
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(name: "long_options", scope: !36, file: !37, line: 237, type: !110, isLocal: true, isDefinition: true)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 4352, elements: !119)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !112, line: 50, size: 256, elements: !113)
!112 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!113 = !{!114, !115, !116, !118}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !111, file: !112, line: 52, baseType: !16, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !111, file: !112, line: 55, baseType: !7, size: 32, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !111, file: !112, line: 56, baseType: !117, size: 64, offset: 128)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !111, file: !112, line: 57, baseType: !7, size: 32, offset: 192)
!119 = !{!120}
!120 = !DISubrange(count: 17)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(scope: null, file: !37, line: 272, type: !123, isLocal: true, isDefinition: true)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 56, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 7)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(scope: null, file: !37, line: 275, type: !128, isLocal: true, isDefinition: true)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 232, elements: !129)
!129 = !{!130}
!130 = !DISubrange(count: 29)
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(scope: null, file: !37, line: 278, type: !133, isLocal: true, isDefinition: true)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 32, elements: !134)
!134 = !{!135}
!135 = !DISubrange(count: 4)
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression())
!137 = distinct !DIGlobalVariable(scope: null, file: !37, line: 295, type: !138, isLocal: true, isDefinition: true)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 264, elements: !139)
!139 = !{!140}
!140 = !DISubrange(count: 33)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(scope: null, file: !37, line: 304, type: !143, isLocal: true, isDefinition: true)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 224, elements: !144)
!144 = !{!145}
!145 = !DISubrange(count: 28)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(scope: null, file: !37, line: 313, type: !148, isLocal: true, isDefinition: true)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 200, elements: !149)
!149 = !{!150}
!150 = !DISubrange(count: 25)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(scope: null, file: !37, line: 330, type: !153, isLocal: true, isDefinition: true)
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 248, elements: !154)
!154 = !{!155}
!155 = !DISubrange(count: 31)
!156 = !DIGlobalVariableExpression(var: !157, expr: !DIExpression())
!157 = distinct !DIGlobalVariable(scope: null, file: !37, line: 364, type: !158, isLocal: true, isDefinition: true)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 416, elements: !159)
!159 = !{!160}
!160 = !DISubrange(count: 52)
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(scope: null, file: !37, line: 373, type: !163, isLocal: true, isDefinition: true)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 336, elements: !164)
!164 = !{!165}
!165 = !DISubrange(count: 42)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(scope: null, file: !37, line: 385, type: !168, isLocal: true, isDefinition: true)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 192, elements: !169)
!169 = !{!170}
!170 = !DISubrange(count: 24)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(scope: null, file: !37, line: 393, type: !173, isLocal: true, isDefinition: true)
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 624, elements: !174)
!174 = !{!175}
!175 = !DISubrange(count: 78)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(scope: null, file: !37, line: 401, type: !178, isLocal: true, isDefinition: true)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 408, elements: !179)
!179 = !{!180}
!180 = !DISubrange(count: 51)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(scope: null, file: !37, line: 406, type: !178, isLocal: true, isDefinition: true)
!183 = !DIGlobalVariableExpression(var: !184, expr: !DIExpression())
!184 = distinct !DIGlobalVariable(scope: null, file: !37, line: 410, type: !185, isLocal: true, isDefinition: true)
!185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 384, elements: !186)
!186 = !{!187}
!187 = !DISubrange(count: 48)
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(scope: null, file: !37, line: 414, type: !190, isLocal: true, isDefinition: true)
!190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 464, elements: !191)
!191 = !{!192}
!192 = !DISubrange(count: 58)
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(scope: null, file: !37, line: 418, type: !195, isLocal: true, isDefinition: true)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 456, elements: !196)
!196 = !{!197}
!197 = !DISubrange(count: 57)
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(scope: null, file: !37, line: 423, type: !200, isLocal: true, isDefinition: true)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 360, elements: !201)
!201 = !{!202}
!202 = !DISubrange(count: 45)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(scope: null, file: !37, line: 428, type: !205, isLocal: true, isDefinition: true)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 296, elements: !206)
!206 = !{!207}
!207 = !DISubrange(count: 37)
!208 = !DIGlobalVariableExpression(var: !209, expr: !DIExpression())
!209 = distinct !DIGlobalVariable(scope: null, file: !37, line: 434, type: !173, isLocal: true, isDefinition: true)
!210 = !DIGlobalVariableExpression(var: !211, expr: !DIExpression())
!211 = distinct !DIGlobalVariable(scope: null, file: !37, line: 437, type: !212, isLocal: true, isDefinition: true)
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 696, elements: !213)
!213 = !{!214}
!214 = !DISubrange(count: 87)
!215 = !DIGlobalVariableExpression(var: !216, expr: !DIExpression())
!216 = distinct !DIGlobalVariable(scope: null, file: !37, line: 441, type: !217, isLocal: true, isDefinition: true)
!217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 584, elements: !218)
!218 = !{!219}
!219 = !DISubrange(count: 73)
!220 = !DIGlobalVariableExpression(var: !221, expr: !DIExpression())
!221 = distinct !DIGlobalVariable(scope: null, file: !37, line: 444, type: !222, isLocal: true, isDefinition: true)
!222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 440, elements: !223)
!223 = !{!224}
!224 = !DISubrange(count: 55)
!225 = !DIGlobalVariableExpression(var: !226, expr: !DIExpression())
!226 = distinct !DIGlobalVariable(scope: null, file: !37, line: 451, type: !227, isLocal: true, isDefinition: true)
!227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 24, elements: !228)
!228 = !{!229}
!229 = !DISubrange(count: 3)
!230 = !DIGlobalVariableExpression(var: !231, expr: !DIExpression())
!231 = distinct !DIGlobalVariable(scope: null, file: !37, line: 452, type: !232, isLocal: true, isDefinition: true)
!232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 208, elements: !233)
!233 = !{!234}
!234 = !DISubrange(count: 26)
!235 = !DIGlobalVariableExpression(var: !236, expr: !DIExpression())
!236 = distinct !DIGlobalVariable(scope: null, file: !37, line: 453, type: !148, isLocal: true, isDefinition: true)
!237 = !DIGlobalVariableExpression(var: !238, expr: !DIExpression())
!238 = distinct !DIGlobalVariable(scope: null, file: !37, line: 454, type: !239, isLocal: true, isDefinition: true)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 176, elements: !240)
!240 = !{!241}
!241 = !DISubrange(count: 22)
!242 = !DIGlobalVariableExpression(var: !243, expr: !DIExpression())
!243 = distinct !DIGlobalVariable(scope: null, file: !37, line: 455, type: !244, isLocal: true, isDefinition: true)
!244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 136, elements: !119)
!245 = !DIGlobalVariableExpression(var: !246, expr: !DIExpression())
!246 = distinct !DIGlobalVariable(scope: null, file: !37, line: 456, type: !244, isLocal: true, isDefinition: true)
!247 = !DIGlobalVariableExpression(var: !248, expr: !DIExpression())
!248 = distinct !DIGlobalVariable(scope: null, file: !37, line: 457, type: !93, isLocal: true, isDefinition: true)
!249 = !DIGlobalVariableExpression(var: !250, expr: !DIExpression())
!250 = distinct !DIGlobalVariable(scope: null, file: !37, line: 458, type: !227, isLocal: true, isDefinition: true)
!251 = !DIGlobalVariableExpression(var: !252, expr: !DIExpression())
!252 = distinct !DIGlobalVariable(scope: null, file: !37, line: 460, type: !253, isLocal: true, isDefinition: true)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 216, elements: !254)
!254 = !{!255}
!255 = !DISubrange(count: 27)
!256 = !DIGlobalVariableExpression(var: !257, expr: !DIExpression())
!257 = distinct !DIGlobalVariable(scope: null, file: !37, line: 467, type: !79, isLocal: true, isDefinition: true)
!258 = !DIGlobalVariableExpression(var: !259, expr: !DIExpression())
!259 = distinct !DIGlobalVariable(scope: null, file: !37, line: 470, type: !260, isLocal: true, isDefinition: true)
!260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 352, elements: !261)
!261 = !{!262}
!262 = !DISubrange(count: 44)
!263 = !DIGlobalVariableExpression(var: !264, expr: !DIExpression())
!264 = distinct !DIGlobalVariable(scope: null, file: !37, line: 475, type: !168, isLocal: true, isDefinition: true)
!265 = !DIGlobalVariableExpression(var: !266, expr: !DIExpression())
!266 = distinct !DIGlobalVariable(scope: null, file: !37, line: 121, type: !153, isLocal: true, isDefinition: true)
!267 = !DIGlobalVariableExpression(var: !268, expr: !DIExpression())
!268 = distinct !DIGlobalVariable(scope: null, file: !37, line: 122, type: !269, isLocal: true, isDefinition: true)
!269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 104, elements: !270)
!270 = !{!271}
!271 = !DISubrange(count: 13)
!272 = !DIGlobalVariableExpression(var: !273, expr: !DIExpression())
!273 = distinct !DIGlobalVariable(scope: null, file: !37, line: 148, type: !153, isLocal: true, isDefinition: true)
!274 = !DIGlobalVariableExpression(var: !275, expr: !DIExpression())
!275 = distinct !DIGlobalVariable(scope: null, file: !37, line: 149, type: !276, isLocal: true, isDefinition: true)
!276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 176, elements: !240)
!277 = !DIGlobalVariableExpression(var: !278, expr: !DIExpression())
!278 = distinct !DIGlobalVariable(scope: null, file: !37, line: 157, type: !279, isLocal: true, isDefinition: true)
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 16, elements: !280)
!280 = !{!281}
!281 = !DISubrange(count: 2)
!282 = !DIGlobalVariableExpression(var: !283, expr: !DIExpression())
!283 = distinct !DIGlobalVariable(scope: null, file: !37, line: 158, type: !253, isLocal: true, isDefinition: true)
!284 = !DIGlobalVariableExpression(var: !285, expr: !DIExpression())
!285 = distinct !DIGlobalVariable(scope: null, file: !37, line: 162, type: !98, isLocal: true, isDefinition: true)
!286 = !DIGlobalVariableExpression(var: !287, expr: !DIExpression())
!287 = distinct !DIGlobalVariable(scope: null, file: !37, line: 163, type: !239, isLocal: true, isDefinition: true)
!288 = !DIGlobalVariableExpression(var: !289, expr: !DIExpression())
!289 = distinct !DIGlobalVariable(scope: null, file: !37, line: 164, type: !290, isLocal: true, isDefinition: true)
!290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 184, elements: !291)
!291 = !{!292}
!292 = !DISubrange(count: 23)
!293 = !DIGlobalVariableExpression(var: !294, expr: !DIExpression())
!294 = distinct !DIGlobalVariable(scope: null, file: !37, line: 166, type: !244, isLocal: true, isDefinition: true)
!295 = !DIGlobalVariableExpression(var: !296, expr: !DIExpression())
!296 = distinct !DIGlobalVariable(scope: null, file: !37, line: 167, type: !168, isLocal: true, isDefinition: true)
!297 = !DIGlobalVariableExpression(var: !298, expr: !DIExpression())
!298 = distinct !DIGlobalVariable(scope: null, file: !37, line: 170, type: !93, isLocal: true, isDefinition: true)
!299 = !DIGlobalVariableExpression(var: !300, expr: !DIExpression())
!300 = distinct !DIGlobalVariable(scope: null, file: !37, line: 171, type: !301, isLocal: true, isDefinition: true)
!301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 304, elements: !302)
!302 = !{!303}
!303 = !DISubrange(count: 38)
!304 = !DIGlobalVariableExpression(var: !305, expr: !DIExpression())
!305 = distinct !DIGlobalVariable(scope: null, file: !37, line: 172, type: !244, isLocal: true, isDefinition: true)
!306 = !DIGlobalVariableExpression(var: !307, expr: !DIExpression())
!307 = distinct !DIGlobalVariable(scope: null, file: !37, line: 173, type: !74, isLocal: true, isDefinition: true)
!308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 11896, elements: !309)
!309 = !{!310}
!310 = !DISubrange(count: 1487)
!311 = !{i32 7, !"Dwarf Version", i32 5}
!312 = !{i32 2, !"Debug Info Version", i32 3}
!313 = !{i32 1, !"wchar_size", i32 4}
!314 = !{i32 8, !"PIC Level", i32 2}
!315 = !{i32 7, !"PIE Level", i32 2}
!316 = !{i32 7, !"uwtable", i32 2}
!317 = !{i32 7, !"frame-pointer", i32 2}
!318 = !{!"clang version 16.0.0"}
!319 = !DILocalVariable(name: "argc", arg: 1, scope: !36, file: !37, line: 205, type: !7)
!320 = !DILocation(line: 205, column: 14, scope: !36)
!321 = !DILocalVariable(name: "argv", arg: 2, scope: !36, file: !37, line: 205, type: !40)
!322 = !DILocation(line: 205, column: 27, scope: !36)
!323 = !DILocalVariable(name: "key", scope: !36, file: !37, line: 208, type: !324)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "oauth_key", file: !6, line: 236, baseType: !325)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_oauth_key", file: !6, line: 223, size: 7616, elements: !326)
!326 = !{!327, !331, !335, !338, !343, !344, !346, !347, !348, !349}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "kid", scope: !325, file: !6, line: 224, baseType: !328, size: 1032)
!328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 1032, elements: !329)
!329 = !{!330}
!330 = !DISubrange(count: 129)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "ikm_key", scope: !325, file: !6, line: 225, baseType: !332, size: 2056, offset: 1032)
!332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 2056, elements: !333)
!333 = !{!334}
!334 = !DISubrange(count: 257)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "ikm_key_size", scope: !325, file: !6, line: 226, baseType: !336, size: 64, offset: 3136)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !337, line: 46, baseType: !32)
!337 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!338 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !325, file: !6, line: 227, baseType: !339, size: 32, offset: 3200)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_time_t", file: !340, line: 108, baseType: !341)
!340 = !DIFile(filename: "src/ns_turn_defs.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "126e9c9d0b914de7fdf6162f77453397")
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !21, line: 26, baseType: !342)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !23, line: 42, baseType: !31)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "lifetime", scope: !325, file: !6, line: 228, baseType: !339, size: 32, offset: 3232)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "as_rs_alg", scope: !325, file: !6, line: 229, baseType: !345, size: 32, offset: 3264)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENC_ALG", file: !6, line: 187, baseType: !5)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "as_rs_key", scope: !325, file: !6, line: 230, baseType: !332, size: 2056, offset: 3296)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "as_rs_key_size", scope: !325, file: !6, line: 231, baseType: !336, size: 64, offset: 5376)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "auth_key", scope: !325, file: !6, line: 232, baseType: !332, size: 2056, offset: 5440)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "auth_key_size", scope: !325, file: !6, line: 233, baseType: !336, size: 64, offset: 7552)
!350 = !DILocation(line: 208, column: 13, scope: !36)
!351 = !DILocalVariable(name: "gcm_nonce", scope: !36, file: !37, line: 211, type: !352)
!352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 104, elements: !270)
!353 = !DILocation(line: 211, column: 8, scope: !36)
!354 = !DILocalVariable(name: "mac_key", scope: !36, file: !37, line: 213, type: !138)
!355 = !DILocation(line: 213, column: 8, scope: !36)
!356 = !DILocalVariable(name: "current_time", scope: !36, file: !37, line: 215, type: !357)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !358, line: 10, baseType: !359)
!358 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "5c299a4954617c88bb03645c7864e1b1")
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !23, line: 160, baseType: !360)
!360 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!361 = !DILocation(line: 215, column: 10, scope: !36)
!362 = !DILocation(line: 215, column: 25, scope: !36)
!363 = !DILocalVariable(name: "gmt", scope: !36, file: !37, line: 216, type: !364)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !366, line: 7, size: 448, elements: !367)
!366 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_tm.h", directory: "", checksumkind: CSK_MD5, checksum: "9e5545b565ef031c4cd0faf90b69386f")
!367 = !{!368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !365, file: !366, line: 9, baseType: !7, size: 32)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !365, file: !366, line: 10, baseType: !7, size: 32, offset: 32)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !365, file: !366, line: 11, baseType: !7, size: 32, offset: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !365, file: !366, line: 12, baseType: !7, size: 32, offset: 96)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !365, file: !366, line: 13, baseType: !7, size: 32, offset: 128)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !365, file: !366, line: 14, baseType: !7, size: 32, offset: 160)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !365, file: !366, line: 15, baseType: !7, size: 32, offset: 192)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !365, file: !366, line: 16, baseType: !7, size: 32, offset: 224)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !365, file: !366, line: 17, baseType: !7, size: 32, offset: 256)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "tm_gmtoff", scope: !365, file: !366, line: 20, baseType: !360, size: 64, offset: 320)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "tm_zone", scope: !365, file: !366, line: 21, baseType: !16, size: 64, offset: 384)
!379 = !DILocation(line: 216, column: 14, scope: !36)
!380 = !DILocation(line: 216, column: 20, scope: !36)
!381 = !DILocalVariable(name: "token_timestamp", scope: !36, file: !37, line: 217, type: !382)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !21, line: 27, baseType: !383)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !23, line: 45, baseType: !32)
!384 = !DILocation(line: 217, column: 12, scope: !36)
!385 = !DILocation(line: 217, column: 57, scope: !36)
!386 = !DILocation(line: 217, column: 50, scope: !36)
!387 = !DILocation(line: 217, column: 62, scope: !36)
!388 = !DILocalVariable(name: "token_lifetime", scope: !36, file: !37, line: 218, type: !341)
!389 = !DILocation(line: 218, column: 12, scope: !36)
!390 = !DILocalVariable(name: "kid", scope: !36, file: !37, line: 221, type: !138)
!391 = !DILocation(line: 221, column: 8, scope: !36)
!392 = !DILocalVariable(name: "base64encoded_ltk", scope: !36, file: !37, line: 222, type: !200)
!393 = !DILocation(line: 222, column: 8, scope: !36)
!394 = !DILocalVariable(name: "key_timestamp", scope: !36, file: !37, line: 223, type: !339)
!395 = !DILocation(line: 223, column: 15, scope: !36)
!396 = !DILocalVariable(name: "key_lifetime", scope: !36, file: !37, line: 224, type: !339)
!397 = !DILocation(line: 224, column: 15, scope: !36)
!398 = !DILocalVariable(name: "as_rs_alg", scope: !36, file: !37, line: 225, type: !48)
!399 = !DILocation(line: 225, column: 8, scope: !36)
!400 = !DILocalVariable(name: "server_name", scope: !36, file: !37, line: 226, type: !401)
!401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 2048, elements: !402)
!402 = !{!403}
!403 = !DISubrange(count: 256)
!404 = !DILocation(line: 226, column: 8, scope: !36)
!405 = !DILocalVariable(name: "base64encoded_etoken", scope: !36, file: !37, line: 228, type: !406)
!406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 8000, elements: !407)
!407 = !{!408}
!408 = !DISubrange(count: 1000)
!409 = !DILocation(line: 228, column: 8, scope: !36)
!410 = !DILocalVariable(name: "hmac_alg", scope: !36, file: !37, line: 231, type: !411)
!411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 168, elements: !412)
!412 = !{!413}
!413 = !DISubrange(count: 21)
!414 = !DILocation(line: 231, column: 8, scope: !36)
!415 = !DILocalVariable(name: "option_index", scope: !36, file: !37, line: 259, type: !7)
!416 = !DILocation(line: 259, column: 7, scope: !36)
!417 = !DILocalVariable(name: "nonce_size", scope: !36, file: !37, line: 262, type: !336)
!418 = !DILocation(line: 262, column: 10, scope: !36)
!419 = !DILocalVariable(name: "nonce_val", scope: !36, file: !37, line: 263, type: !19)
!420 = !DILocation(line: 263, column: 9, scope: !36)
!421 = !DILocalVariable(name: "mac_key_size", scope: !36, file: !37, line: 265, type: !336)
!422 = !DILocation(line: 265, column: 10, scope: !36)
!423 = !DILocalVariable(name: "mac_key_val", scope: !36, file: !37, line: 266, type: !19)
!424 = !DILocation(line: 266, column: 9, scope: !36)
!425 = !DILocalVariable(name: "i", scope: !36, file: !37, line: 269, type: !7)
!426 = !DILocation(line: 269, column: 7, scope: !36)
!427 = !DILocalVariable(name: "c", scope: !36, file: !37, line: 270, type: !7)
!428 = !DILocation(line: 270, column: 7, scope: !36)
!429 = !DILocation(line: 272, column: 3, scope: !36)
!430 = !DILocation(line: 273, column: 3, scope: !36)
!431 = !DILocation(line: 275, column: 3, scope: !36)
!432 = !DILocation(line: 275, column: 27, scope: !36)
!433 = !DILocation(line: 275, column: 33, scope: !36)
!434 = !DILocation(line: 275, column: 15, scope: !36)
!435 = !DILocation(line: 275, column: 13, scope: !36)
!436 = !DILocation(line: 275, column: 100, scope: !36)
!437 = !DILocation(line: 276, column: 12, scope: !438)
!438 = distinct !DILexicalBlock(scope: !36, file: !37, line: 275, column: 107)
!439 = !DILocation(line: 276, column: 5, scope: !438)
!440 = !DILocation(line: 278, column: 15, scope: !441)
!441 = distinct !DILexicalBlock(scope: !438, file: !37, line: 276, column: 15)
!442 = !DILocation(line: 278, column: 7, scope: !441)
!443 = !DILocation(line: 279, column: 7, scope: !441)
!444 = !DILocation(line: 282, column: 19, scope: !441)
!445 = !DILocation(line: 283, column: 7, scope: !441)
!446 = !DILocation(line: 285, column: 19, scope: !441)
!447 = !DILocation(line: 286, column: 7, scope: !441)
!448 = !DILocation(line: 288, column: 19, scope: !441)
!449 = !DILocation(line: 289, column: 7, scope: !441)
!450 = !DILocation(line: 292, column: 19, scope: !451)
!451 = distinct !DILexicalBlock(scope: !441, file: !37, line: 292, column: 12)
!452 = !DILocation(line: 292, column: 12, scope: !451)
!453 = !DILocation(line: 292, column: 27, scope: !451)
!454 = !DILocation(line: 292, column: 12, scope: !441)
!455 = !DILocation(line: 293, column: 9, scope: !456)
!456 = distinct !DILexicalBlock(scope: !451, file: !37, line: 292, column: 55)
!457 = !DILocation(line: 293, column: 9, scope: !458)
!458 = distinct !DILexicalBlock(scope: !459, file: !37, line: 293, column: 9)
!459 = distinct !DILexicalBlock(scope: !456, file: !37, line: 293, column: 9)
!460 = !DILocation(line: 293, column: 9, scope: !459)
!461 = !DILocalVariable(name: "szdst", scope: !462, file: !37, line: 293, type: !336)
!462 = distinct !DILexicalBlock(scope: !463, file: !37, line: 293, column: 9)
!463 = distinct !DILexicalBlock(scope: !464, file: !37, line: 293, column: 9)
!464 = distinct !DILexicalBlock(scope: !458, file: !37, line: 293, column: 9)
!465 = !DILocation(line: 293, column: 9, scope: !462)
!466 = !DILocation(line: 293, column: 9, scope: !464)
!467 = !DILocation(line: 294, column: 7, scope: !456)
!468 = !DILocation(line: 295, column: 17, scope: !469)
!469 = distinct !DILexicalBlock(scope: !451, file: !37, line: 294, column: 14)
!470 = !DILocation(line: 295, column: 9, scope: !469)
!471 = !DILocation(line: 296, column: 9, scope: !469)
!472 = !DILocation(line: 298, column: 7, scope: !441)
!473 = !DILocation(line: 301, column: 19, scope: !474)
!474 = distinct !DILexicalBlock(scope: !441, file: !37, line: 301, column: 12)
!475 = !DILocation(line: 301, column: 12, scope: !474)
!476 = !DILocation(line: 301, column: 27, scope: !474)
!477 = !DILocation(line: 301, column: 12, scope: !441)
!478 = !DILocation(line: 302, column: 9, scope: !479)
!479 = distinct !DILexicalBlock(scope: !474, file: !37, line: 301, column: 50)
!480 = !DILocation(line: 302, column: 9, scope: !481)
!481 = distinct !DILexicalBlock(scope: !482, file: !37, line: 302, column: 9)
!482 = distinct !DILexicalBlock(scope: !479, file: !37, line: 302, column: 9)
!483 = !DILocation(line: 302, column: 9, scope: !482)
!484 = !DILocalVariable(name: "szdst", scope: !485, file: !37, line: 302, type: !336)
!485 = distinct !DILexicalBlock(scope: !486, file: !37, line: 302, column: 9)
!486 = distinct !DILexicalBlock(scope: !487, file: !37, line: 302, column: 9)
!487 = distinct !DILexicalBlock(scope: !481, file: !37, line: 302, column: 9)
!488 = !DILocation(line: 302, column: 9, scope: !485)
!489 = !DILocation(line: 302, column: 9, scope: !487)
!490 = !DILocation(line: 303, column: 7, scope: !479)
!491 = !DILocation(line: 304, column: 17, scope: !492)
!492 = distinct !DILexicalBlock(scope: !474, file: !37, line: 303, column: 14)
!493 = !DILocation(line: 304, column: 9, scope: !492)
!494 = !DILocation(line: 305, column: 9, scope: !492)
!495 = !DILocation(line: 307, column: 7, scope: !441)
!496 = !DILocation(line: 310, column: 19, scope: !497)
!497 = distinct !DILexicalBlock(scope: !441, file: !37, line: 310, column: 12)
!498 = !DILocation(line: 310, column: 12, scope: !497)
!499 = !DILocation(line: 310, column: 27, scope: !497)
!500 = !DILocation(line: 310, column: 12, scope: !441)
!501 = !DILocation(line: 311, column: 9, scope: !502)
!502 = distinct !DILexicalBlock(scope: !497, file: !37, line: 310, column: 61)
!503 = !DILocation(line: 311, column: 9, scope: !504)
!504 = distinct !DILexicalBlock(scope: !505, file: !37, line: 311, column: 9)
!505 = distinct !DILexicalBlock(scope: !502, file: !37, line: 311, column: 9)
!506 = !DILocation(line: 311, column: 9, scope: !505)
!507 = !DILocalVariable(name: "szdst", scope: !508, file: !37, line: 311, type: !336)
!508 = distinct !DILexicalBlock(scope: !509, file: !37, line: 311, column: 9)
!509 = distinct !DILexicalBlock(scope: !510, file: !37, line: 311, column: 9)
!510 = distinct !DILexicalBlock(scope: !504, file: !37, line: 311, column: 9)
!511 = !DILocation(line: 311, column: 9, scope: !508)
!512 = !DILocation(line: 311, column: 9, scope: !510)
!513 = !DILocation(line: 312, column: 7, scope: !502)
!514 = !DILocation(line: 313, column: 17, scope: !515)
!515 = distinct !DILexicalBlock(scope: !497, file: !37, line: 312, column: 14)
!516 = !DILocation(line: 313, column: 9, scope: !515)
!517 = !DILocation(line: 314, column: 9, scope: !515)
!518 = !DILocation(line: 316, column: 7, scope: !441)
!519 = !DILocation(line: 319, column: 28, scope: !441)
!520 = !DILocation(line: 319, column: 23, scope: !441)
!521 = !DILocation(line: 319, column: 21, scope: !441)
!522 = !DILocation(line: 320, column: 7, scope: !441)
!523 = !DILocation(line: 323, column: 25, scope: !441)
!524 = !DILocation(line: 323, column: 20, scope: !441)
!525 = !DILocation(line: 323, column: 19, scope: !441)
!526 = !DILocation(line: 324, column: 7, scope: !441)
!527 = !DILocation(line: 327, column: 19, scope: !528)
!528 = distinct !DILexicalBlock(scope: !441, file: !37, line: 327, column: 12)
!529 = !DILocation(line: 327, column: 12, scope: !528)
!530 = !DILocation(line: 327, column: 27, scope: !528)
!531 = !DILocation(line: 327, column: 12, scope: !441)
!532 = !DILocation(line: 328, column: 9, scope: !533)
!533 = distinct !DILexicalBlock(scope: !528, file: !37, line: 327, column: 53)
!534 = !DILocation(line: 328, column: 9, scope: !535)
!535 = distinct !DILexicalBlock(scope: !536, file: !37, line: 328, column: 9)
!536 = distinct !DILexicalBlock(scope: !533, file: !37, line: 328, column: 9)
!537 = !DILocation(line: 328, column: 9, scope: !536)
!538 = !DILocation(line: 328, column: 9, scope: !539)
!539 = distinct !DILexicalBlock(scope: !540, file: !37, line: 328, column: 9)
!540 = distinct !DILexicalBlock(scope: !535, file: !37, line: 328, column: 9)
!541 = !DILocation(line: 328, column: 9, scope: !540)
!542 = !DILocation(line: 329, column: 7, scope: !533)
!543 = !DILocation(line: 330, column: 17, scope: !544)
!544 = distinct !DILexicalBlock(scope: !528, file: !37, line: 329, column: 14)
!545 = !DILocation(line: 330, column: 9, scope: !544)
!546 = !DILocation(line: 331, column: 9, scope: !544)
!547 = !DILocation(line: 333, column: 7, scope: !441)
!548 = !DILocation(line: 336, column: 40, scope: !441)
!549 = !DILocation(line: 336, column: 54, scope: !441)
!550 = !DILocation(line: 336, column: 47, scope: !441)
!551 = !DILocation(line: 336, column: 26, scope: !441)
!552 = !DILocation(line: 336, column: 17, scope: !441)
!553 = !DILocation(line: 337, column: 11, scope: !554)
!554 = distinct !DILexicalBlock(scope: !441, file: !37, line: 337, column: 11)
!555 = !DILocation(line: 337, column: 22, scope: !554)
!556 = !DILocation(line: 337, column: 11, scope: !441)
!557 = !DILocation(line: 338, column: 19, scope: !558)
!558 = distinct !DILexicalBlock(scope: !554, file: !37, line: 337, column: 45)
!559 = !DILocation(line: 339, column: 7, scope: !558)
!560 = !DILocation(line: 340, column: 15, scope: !441)
!561 = !DILocation(line: 340, column: 25, scope: !441)
!562 = !DILocation(line: 340, column: 35, scope: !441)
!563 = !DILocation(line: 340, column: 7, scope: !441)
!564 = !DILocation(line: 341, column: 18, scope: !441)
!565 = !DILocation(line: 341, column: 29, scope: !441)
!566 = !DILocation(line: 341, column: 7, scope: !441)
!567 = !DILocation(line: 341, column: 34, scope: !441)
!568 = !DILocation(line: 342, column: 7, scope: !441)
!569 = !DILocation(line: 345, column: 42, scope: !441)
!570 = !DILocation(line: 345, column: 56, scope: !441)
!571 = !DILocation(line: 345, column: 49, scope: !441)
!572 = !DILocation(line: 345, column: 28, scope: !441)
!573 = !DILocation(line: 345, column: 19, scope: !441)
!574 = !DILocation(line: 346, column: 11, scope: !575)
!575 = distinct !DILexicalBlock(scope: !441, file: !37, line: 346, column: 11)
!576 = !DILocation(line: 346, column: 24, scope: !575)
!577 = !DILocation(line: 346, column: 11, scope: !441)
!578 = !DILocation(line: 347, column: 21, scope: !579)
!579 = distinct !DILexicalBlock(scope: !575, file: !37, line: 346, column: 45)
!580 = !DILocation(line: 348, column: 7, scope: !579)
!581 = !DILocation(line: 349, column: 15, scope: !441)
!582 = !DILocation(line: 349, column: 23, scope: !441)
!583 = !DILocation(line: 349, column: 35, scope: !441)
!584 = !DILocation(line: 349, column: 7, scope: !441)
!585 = !DILocation(line: 350, column: 15, scope: !441)
!586 = !DILocation(line: 350, column: 27, scope: !441)
!587 = !DILocation(line: 350, column: 7, scope: !441)
!588 = !DILocation(line: 350, column: 30, scope: !441)
!589 = !DILocation(line: 351, column: 7, scope: !441)
!590 = !DILocation(line: 354, column: 32, scope: !441)
!591 = !DILocation(line: 354, column: 23, scope: !441)
!592 = !DILocation(line: 354, column: 22, scope: !441)
!593 = !DILocation(line: 355, column: 7, scope: !441)
!594 = !DILocation(line: 358, column: 27, scope: !441)
!595 = !DILocation(line: 358, column: 22, scope: !441)
!596 = !DILocation(line: 358, column: 21, scope: !441)
!597 = !DILocation(line: 359, column: 7, scope: !441)
!598 = !DILocation(line: 361, column: 19, scope: !599)
!599 = distinct !DILexicalBlock(scope: !441, file: !37, line: 361, column: 12)
!600 = !DILocation(line: 361, column: 12, scope: !599)
!601 = !DILocation(line: 361, column: 27, scope: !599)
!602 = !DILocation(line: 361, column: 12, scope: !441)
!603 = !DILocation(line: 362, column: 9, scope: !604)
!604 = distinct !DILexicalBlock(scope: !599, file: !37, line: 361, column: 49)
!605 = !DILocation(line: 362, column: 9, scope: !606)
!606 = distinct !DILexicalBlock(scope: !607, file: !37, line: 362, column: 9)
!607 = distinct !DILexicalBlock(scope: !604, file: !37, line: 362, column: 9)
!608 = !DILocation(line: 362, column: 9, scope: !607)
!609 = !DILocalVariable(name: "szdst", scope: !610, file: !37, line: 362, type: !336)
!610 = distinct !DILexicalBlock(scope: !611, file: !37, line: 362, column: 9)
!611 = distinct !DILexicalBlock(scope: !612, file: !37, line: 362, column: 9)
!612 = distinct !DILexicalBlock(scope: !606, file: !37, line: 362, column: 9)
!613 = !DILocation(line: 362, column: 9, scope: !610)
!614 = !DILocation(line: 362, column: 9, scope: !612)
!615 = !DILocation(line: 363, column: 7, scope: !604)
!616 = !DILocation(line: 364, column: 17, scope: !617)
!617 = distinct !DILexicalBlock(scope: !599, file: !37, line: 363, column: 14)
!618 = !DILocation(line: 364, column: 9, scope: !617)
!619 = !DILocation(line: 365, column: 9, scope: !617)
!620 = !DILocation(line: 367, column: 7, scope: !441)
!621 = !DILocation(line: 370, column: 19, scope: !622)
!622 = distinct !DILexicalBlock(scope: !441, file: !37, line: 370, column: 12)
!623 = !DILocation(line: 370, column: 12, scope: !622)
!624 = !DILocation(line: 370, column: 27, scope: !622)
!625 = !DILocation(line: 370, column: 12, scope: !441)
!626 = !DILocation(line: 371, column: 9, scope: !627)
!627 = distinct !DILexicalBlock(scope: !622, file: !37, line: 370, column: 52)
!628 = !DILocation(line: 371, column: 9, scope: !629)
!629 = distinct !DILexicalBlock(scope: !630, file: !37, line: 371, column: 9)
!630 = distinct !DILexicalBlock(scope: !627, file: !37, line: 371, column: 9)
!631 = !DILocation(line: 371, column: 9, scope: !630)
!632 = !DILocalVariable(name: "szdst", scope: !633, file: !37, line: 371, type: !336)
!633 = distinct !DILexicalBlock(scope: !634, file: !37, line: 371, column: 9)
!634 = distinct !DILexicalBlock(scope: !635, file: !37, line: 371, column: 9)
!635 = distinct !DILexicalBlock(scope: !629, file: !37, line: 371, column: 9)
!636 = !DILocation(line: 371, column: 9, scope: !633)
!637 = !DILocation(line: 371, column: 9, scope: !635)
!638 = !DILocation(line: 372, column: 7, scope: !627)
!639 = !DILocation(line: 373, column: 17, scope: !640)
!640 = distinct !DILexicalBlock(scope: !622, file: !37, line: 372, column: 14)
!641 = !DILocation(line: 373, column: 9, scope: !640)
!642 = !DILocation(line: 374, column: 9, scope: !640)
!643 = !DILocation(line: 376, column: 7, scope: !441)
!644 = !DILocation(line: 378, column: 15, scope: !441)
!645 = !DILocation(line: 378, column: 7, scope: !441)
!646 = !DILocation(line: 379, column: 7, scope: !441)
!647 = distinct !{!647, !431, !648, !649}
!648 = !DILocation(line: 382, column: 3, scope: !36)
!649 = !{!"llvm.loop.mustprogress"}
!650 = !DILocation(line: 384, column: 12, scope: !651)
!651 = distinct !DILexicalBlock(scope: !36, file: !37, line: 384, column: 3)
!652 = !DILocation(line: 384, column: 10, scope: !651)
!653 = !DILocation(line: 384, column: 8, scope: !651)
!654 = !DILocation(line: 384, column: 20, scope: !655)
!655 = distinct !DILexicalBlock(scope: !651, file: !37, line: 384, column: 3)
!656 = !DILocation(line: 384, column: 24, scope: !655)
!657 = !DILocation(line: 384, column: 22, scope: !655)
!658 = !DILocation(line: 384, column: 3, scope: !651)
!659 = !DILocation(line: 385, column: 41, scope: !655)
!660 = !DILocation(line: 385, column: 46, scope: !655)
!661 = !DILocation(line: 385, column: 5, scope: !655)
!662 = !DILocation(line: 384, column: 31, scope: !655)
!663 = !DILocation(line: 384, column: 3, scope: !655)
!664 = distinct !{!664, !658, !665, !649}
!665 = !DILocation(line: 385, column: 48, scope: !651)
!666 = !DILocation(line: 387, column: 6, scope: !667)
!667 = distinct !DILexicalBlock(scope: !36, file: !37, line: 387, column: 6)
!668 = !DILocation(line: 387, column: 13, scope: !667)
!669 = !DILocation(line: 387, column: 12, scope: !667)
!670 = !DILocation(line: 387, column: 6, scope: !36)
!671 = !DILocation(line: 388, column: 13, scope: !672)
!672 = distinct !DILexicalBlock(scope: !667, file: !37, line: 387, column: 19)
!673 = !DILocation(line: 388, column: 5, scope: !672)
!674 = !DILocation(line: 389, column: 5, scope: !672)
!675 = !DILocation(line: 392, column: 9, scope: !676)
!676 = distinct !DILexicalBlock(scope: !36, file: !37, line: 392, column: 7)
!677 = !DILocation(line: 392, column: 22, scope: !676)
!678 = !DILocation(line: 392, column: 25, scope: !676)
!679 = !DILocation(line: 392, column: 7, scope: !36)
!680 = !DILocation(line: 393, column: 17, scope: !681)
!681 = distinct !DILexicalBlock(scope: !676, file: !37, line: 392, column: 39)
!682 = !DILocation(line: 393, column: 9, scope: !681)
!683 = !DILocation(line: 394, column: 10, scope: !681)
!684 = !DILocation(line: 399, column: 7, scope: !685)
!685 = distinct !DILexicalBlock(scope: !36, file: !37, line: 399, column: 7)
!686 = !DILocation(line: 399, column: 20, scope: !685)
!687 = !DILocation(line: 399, column: 23, scope: !685)
!688 = !DILocation(line: 399, column: 7, scope: !36)
!689 = !DILocation(line: 400, column: 16, scope: !690)
!690 = distinct !DILexicalBlock(scope: !691, file: !37, line: 400, column: 9)
!691 = distinct !DILexicalBlock(scope: !685, file: !37, line: 399, column: 36)
!692 = !DILocation(line: 400, column: 9, scope: !690)
!693 = !DILocation(line: 400, column: 29, scope: !690)
!694 = !DILocation(line: 400, column: 9, scope: !691)
!695 = !DILocation(line: 401, column: 17, scope: !696)
!696 = distinct !DILexicalBlock(scope: !690, file: !37, line: 400, column: 35)
!697 = !DILocation(line: 401, column: 9, scope: !696)
!698 = !DILocation(line: 402, column: 10, scope: !696)
!699 = !DILocation(line: 405, column: 16, scope: !700)
!700 = distinct !DILexicalBlock(scope: !691, file: !37, line: 405, column: 9)
!701 = !DILocation(line: 405, column: 9, scope: !700)
!702 = !DILocation(line: 405, column: 21, scope: !700)
!703 = !DILocation(line: 405, column: 9, scope: !691)
!704 = !DILocation(line: 406, column: 17, scope: !705)
!705 = distinct !DILexicalBlock(scope: !700, file: !37, line: 405, column: 26)
!706 = !DILocation(line: 406, column: 9, scope: !705)
!707 = !DILocation(line: 407, column: 9, scope: !705)
!708 = !DILocation(line: 409, column: 17, scope: !709)
!709 = distinct !DILexicalBlock(scope: !691, file: !37, line: 409, column: 10)
!710 = !DILocation(line: 409, column: 10, scope: !709)
!711 = !DILocation(line: 409, column: 36, scope: !709)
!712 = !DILocation(line: 409, column: 10, scope: !691)
!713 = !DILocation(line: 410, column: 17, scope: !714)
!714 = distinct !DILexicalBlock(scope: !709, file: !37, line: 409, column: 41)
!715 = !DILocation(line: 410, column: 9, scope: !714)
!716 = !DILocation(line: 411, column: 9, scope: !714)
!717 = !DILocation(line: 413, column: 9, scope: !718)
!718 = distinct !DILexicalBlock(scope: !691, file: !37, line: 413, column: 9)
!719 = !DILocation(line: 413, column: 23, scope: !718)
!720 = !DILocation(line: 413, column: 9, scope: !691)
!721 = !DILocation(line: 414, column: 17, scope: !722)
!722 = distinct !DILexicalBlock(scope: !718, file: !37, line: 413, column: 28)
!723 = !DILocation(line: 414, column: 9, scope: !722)
!724 = !DILocation(line: 415, column: 9, scope: !722)
!725 = !DILocation(line: 417, column: 9, scope: !726)
!726 = distinct !DILexicalBlock(scope: !691, file: !37, line: 417, column: 9)
!727 = !DILocation(line: 417, column: 22, scope: !726)
!728 = !DILocation(line: 417, column: 9, scope: !691)
!729 = !DILocation(line: 418, column: 17, scope: !730)
!730 = distinct !DILexicalBlock(scope: !726, file: !37, line: 417, column: 27)
!731 = !DILocation(line: 418, column: 9, scope: !730)
!732 = !DILocation(line: 419, column: 9, scope: !730)
!733 = !DILocation(line: 422, column: 9, scope: !734)
!734 = distinct !DILexicalBlock(scope: !691, file: !37, line: 422, column: 9)
!735 = !DILocation(line: 422, column: 22, scope: !734)
!736 = !DILocation(line: 422, column: 32, scope: !734)
!737 = !DILocation(line: 422, column: 25, scope: !734)
!738 = !DILocation(line: 422, column: 41, scope: !734)
!739 = !DILocation(line: 422, column: 9, scope: !691)
!740 = !DILocation(line: 423, column: 17, scope: !741)
!741 = distinct !DILexicalBlock(scope: !734, file: !37, line: 422, column: 47)
!742 = !DILocation(line: 423, column: 9, scope: !741)
!743 = !DILocation(line: 424, column: 9, scope: !741)
!744 = !DILocation(line: 427, column: 10, scope: !745)
!745 = distinct !DILexicalBlock(scope: !691, file: !37, line: 427, column: 9)
!746 = !DILocation(line: 427, column: 23, scope: !745)
!747 = !DILocation(line: 427, column: 26, scope: !745)
!748 = !DILocation(line: 427, column: 39, scope: !745)
!749 = !DILocation(line: 427, column: 49, scope: !745)
!750 = !DILocation(line: 427, column: 42, scope: !745)
!751 = !DILocation(line: 427, column: 71, scope: !745)
!752 = !DILocation(line: 427, column: 9, scope: !691)
!753 = !DILocation(line: 428, column: 17, scope: !754)
!754 = distinct !DILexicalBlock(scope: !745, file: !37, line: 427, column: 77)
!755 = !DILocation(line: 428, column: 9, scope: !754)
!756 = !DILocation(line: 429, column: 9, scope: !754)
!757 = !DILocation(line: 433, column: 30, scope: !758)
!758 = distinct !DILexicalBlock(scope: !691, file: !37, line: 433, column: 10)
!759 = !DILocation(line: 433, column: 10, scope: !758)
!760 = !DILocation(line: 433, column: 43, scope: !758)
!761 = !DILocation(line: 433, column: 50, scope: !758)
!762 = !DILocation(line: 433, column: 89, scope: !758)
!763 = !DILocation(line: 433, column: 69, scope: !758)
!764 = !DILocation(line: 433, column: 104, scope: !758)
!765 = !DILocation(line: 433, column: 67, scope: !758)
!766 = !DILocation(line: 433, column: 48, scope: !758)
!767 = !DILocation(line: 433, column: 10, scope: !691)
!768 = !DILocation(line: 434, column: 17, scope: !769)
!769 = distinct !DILexicalBlock(scope: !758, file: !37, line: 433, column: 114)
!770 = !DILocation(line: 434, column: 9, scope: !769)
!771 = !DILocation(line: 435, column: 5, scope: !769)
!772 = !DILocation(line: 436, column: 33, scope: !773)
!773 = distinct !DILexicalBlock(scope: !774, file: !37, line: 436, column: 13)
!774 = distinct !DILexicalBlock(scope: !758, file: !37, line: 435, column: 12)
!775 = !DILocation(line: 436, column: 13, scope: !773)
!776 = !DILocation(line: 436, column: 46, scope: !773)
!777 = !DILocation(line: 436, column: 53, scope: !773)
!778 = !DILocation(line: 436, column: 51, scope: !773)
!779 = !DILocation(line: 436, column: 13, scope: !774)
!780 = !DILocation(line: 437, column: 21, scope: !781)
!781 = distinct !DILexicalBlock(scope: !773, file: !37, line: 436, column: 70)
!782 = !DILocation(line: 437, column: 13, scope: !781)
!783 = !DILocation(line: 438, column: 9, scope: !781)
!784 = !DILocation(line: 440, column: 31, scope: !785)
!785 = distinct !DILexicalBlock(scope: !691, file: !37, line: 440, column: 9)
!786 = !DILocation(line: 440, column: 47, scope: !785)
!787 = !DILocation(line: 440, column: 45, scope: !785)
!788 = !DILocation(line: 440, column: 9, scope: !785)
!789 = !DILocation(line: 440, column: 61, scope: !785)
!790 = !DILocation(line: 440, column: 68, scope: !785)
!791 = !DILocation(line: 440, column: 66, scope: !785)
!792 = !DILocation(line: 440, column: 9, scope: !691)
!793 = !DILocation(line: 441, column: 17, scope: !794)
!794 = distinct !DILexicalBlock(scope: !785, file: !37, line: 440, column: 86)
!795 = !DILocation(line: 441, column: 9, scope: !794)
!796 = !DILocation(line: 442, column: 5, scope: !794)
!797 = !DILocation(line: 443, column: 35, scope: !798)
!798 = distinct !DILexicalBlock(scope: !799, file: !37, line: 443, column: 13)
!799 = distinct !DILexicalBlock(scope: !785, file: !37, line: 442, column: 12)
!800 = !DILocation(line: 443, column: 51, scope: !798)
!801 = !DILocation(line: 443, column: 49, scope: !798)
!802 = !DILocation(line: 443, column: 13, scope: !798)
!803 = !DILocation(line: 443, column: 64, scope: !798)
!804 = !DILocation(line: 443, column: 71, scope: !798)
!805 = !DILocation(line: 443, column: 110, scope: !798)
!806 = !DILocation(line: 443, column: 90, scope: !798)
!807 = !DILocation(line: 443, column: 125, scope: !798)
!808 = !DILocation(line: 443, column: 87, scope: !798)
!809 = !DILocation(line: 443, column: 69, scope: !798)
!810 = !DILocation(line: 443, column: 13, scope: !799)
!811 = !DILocation(line: 444, column: 21, scope: !812)
!812 = distinct !DILexicalBlock(scope: !798, file: !37, line: 443, column: 134)
!813 = !DILocation(line: 444, column: 13, scope: !812)
!814 = !DILocation(line: 445, column: 9, scope: !812)
!815 = !DILocation(line: 448, column: 24, scope: !816)
!816 = distinct !DILexicalBlock(scope: !691, file: !37, line: 448, column: 10)
!817 = !DILocation(line: 448, column: 29, scope: !816)
!818 = !DILocation(line: 448, column: 48, scope: !816)
!819 = !DILocation(line: 448, column: 63, scope: !816)
!820 = !DILocation(line: 448, column: 77, scope: !816)
!821 = !DILocation(line: 448, column: 10, scope: !816)
!822 = !DILocation(line: 448, column: 94, scope: !816)
!823 = !DILocation(line: 448, column: 10, scope: !691)
!824 = !DILocation(line: 449, column: 14, scope: !825)
!825 = distinct !DILexicalBlock(scope: !826, file: !37, line: 449, column: 14)
!826 = distinct !DILexicalBlock(scope: !816, file: !37, line: 448, column: 101)
!827 = !DILocation(line: 449, column: 14, scope: !826)
!828 = !DILocation(line: 450, column: 28, scope: !829)
!829 = distinct !DILexicalBlock(scope: !830, file: !37, line: 450, column: 15)
!830 = distinct !DILexicalBlock(scope: !825, file: !37, line: 449, column: 28)
!831 = !DILocation(line: 450, column: 41, scope: !829)
!832 = !DILocation(line: 450, column: 52, scope: !829)
!833 = !DILocation(line: 450, column: 61, scope: !829)
!834 = !DILocation(line: 450, column: 78, scope: !829)
!835 = !DILocation(line: 450, column: 99, scope: !829)
!836 = !DILocation(line: 450, column: 15, scope: !829)
!837 = !DILocation(line: 450, column: 121, scope: !829)
!838 = !DILocation(line: 450, column: 15, scope: !830)
!839 = !DILocation(line: 451, column: 13, scope: !840)
!840 = distinct !DILexicalBlock(scope: !829, file: !37, line: 450, column: 128)
!841 = !DILocation(line: 452, column: 53, scope: !840)
!842 = !DILocation(line: 452, column: 13, scope: !840)
!843 = !DILocation(line: 453, column: 13, scope: !840)
!844 = !DILocation(line: 454, column: 47, scope: !840)
!845 = !DILocation(line: 454, column: 13, scope: !840)
!846 = !DILocation(line: 455, column: 44, scope: !840)
!847 = !DILocation(line: 455, column: 13, scope: !840)
!848 = !DILocation(line: 456, column: 44, scope: !840)
!849 = !DILocation(line: 456, column: 13, scope: !840)
!850 = !DILocation(line: 457, column: 43, scope: !840)
!851 = !DILocation(line: 457, column: 13, scope: !840)
!852 = !DILocation(line: 458, column: 13, scope: !840)
!853 = !DILocation(line: 459, column: 11, scope: !840)
!854 = !DILocation(line: 460, column: 21, scope: !855)
!855 = distinct !DILexicalBlock(scope: !829, file: !37, line: 459, column: 18)
!856 = !DILocation(line: 460, column: 13, scope: !855)
!857 = !DILocation(line: 461, column: 13, scope: !855)
!858 = !DILocation(line: 463, column: 9, scope: !830)
!859 = !DILocation(line: 464, column: 13, scope: !860)
!860 = distinct !DILexicalBlock(scope: !826, file: !37, line: 464, column: 13)
!861 = !DILocation(line: 464, column: 13, scope: !826)
!862 = !DILocalVariable(name: "dot", scope: !863, file: !37, line: 465, type: !864)
!863 = distinct !DILexicalBlock(scope: !860, file: !37, line: 464, column: 27)
!864 = !DIDerivedType(tag: DW_TAG_typedef, name: "oauth_token", file: !6, line: 253, baseType: !865)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_oauth_token", file: !6, line: 249, size: 3264, elements: !866)
!866 = !{!867}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "enc_block", scope: !865, file: !6, line: 250, baseType: !868, size: 3264)
!868 = !DIDerivedType(tag: DW_TAG_typedef, name: "oauth_encrypted_block", file: !6, line: 247, baseType: !869)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_oauth_encrypted_block", file: !6, line: 238, size: 3264, elements: !870)
!870 = !{!871, !872, !874, !875, !879, !880}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "nonce_length", scope: !869, file: !6, line: 239, baseType: !20, size: 16)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "nonce", scope: !869, file: !6, line: 240, baseType: !873, size: 2048, offset: 16)
!873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 2048, elements: !402)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "key_length", scope: !869, file: !6, line: 241, baseType: !20, size: 16, offset: 2064)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "mac_key", scope: !869, file: !6, line: 242, baseType: !876, size: 1024, offset: 2080)
!876 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 1024, elements: !877)
!877 = !{!878}
!878 = !DISubrange(count: 128)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !869, file: !6, line: 243, baseType: !382, size: 64, offset: 3136)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "lifetime", scope: !869, file: !6, line: 244, baseType: !341, size: 32, offset: 3200)
!881 = !DILocation(line: 465, column: 23, scope: !863)
!882 = !DILocation(line: 466, column: 38, scope: !883)
!883 = distinct !DILexicalBlock(scope: !863, file: !37, line: 466, column: 16)
!884 = !DILocation(line: 466, column: 56, scope: !883)
!885 = !DILocation(line: 466, column: 16, scope: !883)
!886 = !DILocation(line: 466, column: 83, scope: !883)
!887 = !DILocation(line: 466, column: 16, scope: !863)
!888 = !DILocation(line: 467, column: 13, scope: !889)
!889 = distinct !DILexicalBlock(scope: !883, file: !37, line: 466, column: 89)
!890 = !DILocation(line: 468, column: 19, scope: !891)
!891 = distinct !DILexicalBlock(scope: !889, file: !37, line: 468, column: 19)
!892 = !DILocation(line: 468, column: 19, scope: !889)
!893 = !DILocation(line: 468, column: 33, scope: !891)
!894 = !DILocation(line: 469, column: 11, scope: !889)
!895 = !DILocation(line: 470, column: 21, scope: !896)
!896 = distinct !DILexicalBlock(scope: !883, file: !37, line: 469, column: 18)
!897 = !DILocation(line: 470, column: 13, scope: !896)
!898 = !DILocation(line: 471, column: 13, scope: !896)
!899 = !DILocation(line: 473, column: 9, scope: !863)
!900 = !DILocation(line: 474, column: 6, scope: !826)
!901 = !DILocation(line: 475, column: 17, scope: !902)
!902 = distinct !DILexicalBlock(scope: !816, file: !37, line: 474, column: 13)
!903 = !DILocation(line: 475, column: 9, scope: !902)
!904 = !DILocation(line: 476, column: 10, scope: !902)
!905 = !DILocation(line: 479, column: 3, scope: !691)
!906 = !DILocation(line: 481, column: 3, scope: !36)
!907 = distinct !DISubprogram(name: "setup_ikm_key", scope: !37, file: !37, line: 58, type: !908, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !41)
!908 = !DISubroutineType(types: !909)
!909 = !{!7, !16, !16, !910, !910, !16, !911}
!910 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !339)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!912 = !DILocalVariable(name: "kid", arg: 1, scope: !907, file: !37, line: 58, type: !16)
!913 = !DILocation(line: 58, column: 38, scope: !907)
!914 = !DILocalVariable(name: "ikm_key", arg: 2, scope: !907, file: !37, line: 59, type: !16)
!915 = !DILocation(line: 59, column: 37, scope: !907)
!916 = !DILocalVariable(name: "key_timestamp", arg: 3, scope: !907, file: !37, line: 60, type: !910)
!917 = !DILocation(line: 60, column: 43, scope: !907)
!918 = !DILocalVariable(name: "key_lifetime", arg: 4, scope: !907, file: !37, line: 61, type: !910)
!919 = !DILocation(line: 61, column: 43, scope: !907)
!920 = !DILocalVariable(name: "as_rs_alg", arg: 5, scope: !907, file: !37, line: 62, type: !16)
!921 = !DILocation(line: 62, column: 37, scope: !907)
!922 = !DILocalVariable(name: "key", arg: 6, scope: !907, file: !37, line: 63, type: !911)
!923 = !DILocation(line: 63, column: 36, scope: !907)
!924 = !DILocation(line: 65, column: 15, scope: !907)
!925 = !DILocation(line: 65, column: 9, scope: !907)
!926 = !DILocalVariable(name: "okd", scope: !907, file: !37, line: 67, type: !927)
!927 = !DIDerivedType(tag: DW_TAG_typedef, name: "oauth_key_data", file: !6, line: 221, baseType: !928)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_oauth_key_data", file: !6, line: 212, size: 3840, elements: !929)
!929 = !{!930, !931, !932, !933, !934, !935}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "kid", scope: !928, file: !6, line: 213, baseType: !328, size: 1032)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "ikm_key", scope: !928, file: !6, line: 214, baseType: !332, size: 2056, offset: 1032)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "ikm_key_size", scope: !928, file: !6, line: 215, baseType: !336, size: 64, offset: 3136)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !928, file: !6, line: 216, baseType: !339, size: 32, offset: 3200)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "lifetime", scope: !928, file: !6, line: 217, baseType: !339, size: 32, offset: 3232)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "as_rs_alg", scope: !928, file: !6, line: 218, baseType: !936, size: 520, offset: 3264)
!936 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 520, elements: !937)
!937 = !{!938}
!938 = !DISubrange(count: 65)
!939 = !DILocation(line: 67, column: 24, scope: !907)
!940 = !DILocation(line: 68, column: 9, scope: !907)
!941 = !DILocalVariable(name: "okdr", scope: !942, file: !37, line: 71, type: !943)
!942 = distinct !DILexicalBlock(scope: !907, file: !37, line: 70, column: 9)
!943 = !DIDerivedType(tag: DW_TAG_typedef, name: "oauth_key_data_raw", file: !944, line: 144, baseType: !945)
!944 = !DIFile(filename: "src/apps/common/apputils.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "5f4d9112d5c1617ebc273618c0760b4a")
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_oauth_key_data_raw", file: !944, line: 135, size: 4800, elements: !946)
!946 = !{!947, !948, !949, !950, !951, !952}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "kid", scope: !945, file: !944, line: 136, baseType: !328, size: 1032)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "ikm_key", scope: !945, file: !944, line: 137, baseType: !332, size: 2056, offset: 1032)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !945, file: !944, line: 138, baseType: !382, size: 64, offset: 3136)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "lifetime", scope: !945, file: !944, line: 139, baseType: !341, size: 32, offset: 3200)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "as_rs_alg", scope: !945, file: !944, line: 140, baseType: !936, size: 520, offset: 3232)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "realm", scope: !945, file: !944, line: 141, baseType: !953, size: 1024, offset: 3752)
!953 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 1024, elements: !877)
!954 = !DILocation(line: 71, column: 36, scope: !942)
!955 = !DILocation(line: 72, column: 17, scope: !942)
!956 = !DILocation(line: 74, column: 17, scope: !942)
!957 = !DILocation(line: 74, column: 17, scope: !958)
!958 = distinct !DILexicalBlock(scope: !959, file: !37, line: 74, column: 17)
!959 = distinct !DILexicalBlock(scope: !942, file: !37, line: 74, column: 17)
!960 = !DILocation(line: 74, column: 17, scope: !959)
!961 = !DILocalVariable(name: "szdst", scope: !962, file: !37, line: 74, type: !336)
!962 = distinct !DILexicalBlock(scope: !963, file: !37, line: 74, column: 17)
!963 = distinct !DILexicalBlock(scope: !964, file: !37, line: 74, column: 17)
!964 = distinct !DILexicalBlock(scope: !958, file: !37, line: 74, column: 17)
!965 = !DILocation(line: 74, column: 17, scope: !962)
!966 = !DILocation(line: 74, column: 17, scope: !964)
!967 = !DILocation(line: 75, column: 17, scope: !942)
!968 = !DILocation(line: 75, column: 17, scope: !969)
!969 = distinct !DILexicalBlock(scope: !970, file: !37, line: 75, column: 17)
!970 = distinct !DILexicalBlock(scope: !942, file: !37, line: 75, column: 17)
!971 = !DILocation(line: 75, column: 17, scope: !970)
!972 = !DILocalVariable(name: "szdst", scope: !973, file: !37, line: 75, type: !336)
!973 = distinct !DILexicalBlock(scope: !974, file: !37, line: 75, column: 17)
!974 = distinct !DILexicalBlock(scope: !975, file: !37, line: 75, column: 17)
!975 = distinct !DILexicalBlock(scope: !969, file: !37, line: 75, column: 17)
!976 = !DILocation(line: 75, column: 17, scope: !973)
!977 = !DILocation(line: 75, column: 17, scope: !975)
!978 = !DILocation(line: 76, column: 17, scope: !942)
!979 = !DILocation(line: 76, column: 17, scope: !980)
!980 = distinct !DILexicalBlock(scope: !981, file: !37, line: 76, column: 17)
!981 = distinct !DILexicalBlock(scope: !942, file: !37, line: 76, column: 17)
!982 = !DILocation(line: 76, column: 17, scope: !981)
!983 = !DILocalVariable(name: "szdst", scope: !984, file: !37, line: 76, type: !336)
!984 = distinct !DILexicalBlock(scope: !985, file: !37, line: 76, column: 17)
!985 = distinct !DILexicalBlock(scope: !986, file: !37, line: 76, column: 17)
!986 = distinct !DILexicalBlock(scope: !980, file: !37, line: 76, column: 17)
!987 = !DILocation(line: 76, column: 17, scope: !984)
!988 = !DILocation(line: 76, column: 17, scope: !986)
!989 = !DILocation(line: 77, column: 34, scope: !942)
!990 = !DILocation(line: 77, column: 22, scope: !942)
!991 = !DILocation(line: 77, column: 32, scope: !942)
!992 = !DILocation(line: 78, column: 33, scope: !942)
!993 = !DILocation(line: 78, column: 22, scope: !942)
!994 = !DILocation(line: 78, column: 31, scope: !942)
!995 = !DILocation(line: 80, column: 17, scope: !942)
!996 = !DILocalVariable(name: "err_msg", scope: !907, file: !37, line: 83, type: !997)
!997 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 8200, elements: !998)
!998 = !{!999}
!999 = !DISubrange(count: 1025)
!1000 = !DILocation(line: 83, column: 14, scope: !907)
!1001 = !DILocalVariable(name: "err_msg_size", scope: !907, file: !37, line: 84, type: !336)
!1002 = !DILocation(line: 84, column: 16, scope: !907)
!1003 = !DILocation(line: 86, column: 42, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !907, file: !37, line: 86, column: 13)
!1005 = !DILocation(line: 86, column: 47, scope: !1004)
!1006 = !DILocation(line: 86, column: 56, scope: !1004)
!1007 = !DILocation(line: 86, column: 13, scope: !1004)
!1008 = !DILocation(line: 86, column: 70, scope: !1004)
!1009 = !DILocation(line: 86, column: 13, scope: !907)
!1010 = !DILocation(line: 87, column: 33, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1004, file: !37, line: 86, column: 75)
!1012 = !DILocation(line: 87, column: 49, scope: !1011)
!1013 = !DILocation(line: 87, column: 25, scope: !1011)
!1014 = !DILocation(line: 88, column: 25, scope: !1011)
!1015 = !DILocation(line: 91, column: 9, scope: !907)
!1016 = !DILocation(line: 92, column: 1, scope: !907)
!1017 = distinct !DISubprogram(name: "encode_token", scope: !37, file: !37, line: 96, type: !1018, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !41)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{!7, !16, !16, !16, !1020, !1021, !1022, !19}
!1020 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !382)
!1021 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !341)
!1022 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !324)
!1023 = !DILocalVariable(name: "server_name", arg: 1, scope: !1017, file: !37, line: 96, type: !16)
!1024 = !DILocation(line: 96, column: 37, scope: !1017)
!1025 = !DILocalVariable(name: "gcm_nonce", arg: 2, scope: !1017, file: !37, line: 97, type: !16)
!1026 = !DILocation(line: 97, column: 37, scope: !1017)
!1027 = !DILocalVariable(name: "mac_key", arg: 3, scope: !1017, file: !37, line: 98, type: !16)
!1028 = !DILocation(line: 98, column: 37, scope: !1017)
!1029 = !DILocalVariable(name: "token_timestamp", arg: 4, scope: !1017, file: !37, line: 99, type: !1020)
!1030 = !DILocation(line: 99, column: 40, scope: !1017)
!1031 = !DILocalVariable(name: "token_lifetime", arg: 5, scope: !1017, file: !37, line: 100, type: !1021)
!1032 = !DILocation(line: 100, column: 40, scope: !1017)
!1033 = !DILocalVariable(name: "key", arg: 6, scope: !1017, file: !37, line: 101, type: !1022)
!1034 = !DILocation(line: 101, column: 41, scope: !1017)
!1035 = !DILocalVariable(name: "base64encoded_etoken", arg: 7, scope: !1017, file: !37, line: 102, type: !19)
!1036 = !DILocation(line: 102, column: 31, scope: !1017)
!1037 = !DILocalVariable(name: "ot", scope: !1017, file: !37, line: 105, type: !864)
!1038 = !DILocation(line: 105, column: 21, scope: !1017)
!1039 = !DILocation(line: 106, column: 9, scope: !1017)
!1040 = !DILocalVariable(name: "mac_key_length", scope: !1017, file: !37, line: 108, type: !1041)
!1041 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !336)
!1042 = !DILocation(line: 108, column: 22, scope: !1017)
!1043 = !DILocation(line: 108, column: 44, scope: !1017)
!1044 = !DILocation(line: 108, column: 37, scope: !1017)
!1045 = !DILocation(line: 109, column: 45, scope: !1017)
!1046 = !DILocation(line: 109, column: 35, scope: !1017)
!1047 = !DILocation(line: 109, column: 12, scope: !1017)
!1048 = !DILocation(line: 109, column: 22, scope: !1017)
!1049 = !DILocation(line: 109, column: 33, scope: !1017)
!1050 = !DILocation(line: 110, column: 9, scope: !1017)
!1051 = !DILocation(line: 110, column: 9, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1053, file: !37, line: 110, column: 9)
!1053 = distinct !DILexicalBlock(scope: !1017, file: !37, line: 110, column: 9)
!1054 = !DILocation(line: 110, column: 9, scope: !1053)
!1055 = !DILocalVariable(name: "szdst", scope: !1056, file: !37, line: 110, type: !336)
!1056 = distinct !DILexicalBlock(scope: !1057, file: !37, line: 110, column: 9)
!1057 = distinct !DILexicalBlock(scope: !1058, file: !37, line: 110, column: 9)
!1058 = distinct !DILexicalBlock(scope: !1052, file: !37, line: 110, column: 9)
!1059 = !DILocation(line: 110, column: 9, scope: !1056)
!1060 = !DILocation(line: 110, column: 9, scope: !1058)
!1061 = !DILocation(line: 111, column: 34, scope: !1017)
!1062 = !DILocation(line: 111, column: 12, scope: !1017)
!1063 = !DILocation(line: 111, column: 22, scope: !1017)
!1064 = !DILocation(line: 111, column: 32, scope: !1017)
!1065 = !DILocation(line: 112, column: 33, scope: !1017)
!1066 = !DILocation(line: 112, column: 12, scope: !1017)
!1067 = !DILocation(line: 112, column: 22, scope: !1017)
!1068 = !DILocation(line: 112, column: 31, scope: !1017)
!1069 = !DILocalVariable(name: "etoken", scope: !1017, file: !37, line: 114, type: !1070)
!1070 = !DIDerivedType(tag: DW_TAG_typedef, name: "encoded_oauth_token", file: !6, line: 262, baseType: !1071)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_encoded_oauth_token", file: !6, line: 257, size: 8256, elements: !1072)
!1072 = !{!1073, !1077}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !1071, file: !6, line: 258, baseType: !1074, size: 8192)
!1074 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 8192, elements: !1075)
!1075 = !{!1076}
!1076 = !DISubrange(count: 1024)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1071, file: !6, line: 259, baseType: !336, size: 64, offset: 8192)
!1078 = !DILocation(line: 114, column: 29, scope: !1017)
!1079 = !DILocation(line: 115, column: 9, scope: !1017)
!1080 = !DILocation(line: 118, column: 15, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1017, file: !37, line: 118, column: 13)
!1082 = !DILocation(line: 118, column: 14, scope: !1081)
!1083 = !DILocation(line: 118, column: 13, scope: !1017)
!1084 = !DILocation(line: 118, column: 35, scope: !1081)
!1085 = !DILocation(line: 118, column: 26, scope: !1081)
!1086 = !DILocation(line: 120, column: 50, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1017, file: !37, line: 120, column: 13)
!1088 = !DILocation(line: 120, column: 100, scope: !1087)
!1089 = !DILocation(line: 120, column: 13, scope: !1087)
!1090 = !DILocation(line: 120, column: 111, scope: !1087)
!1091 = !DILocation(line: 120, column: 13, scope: !1017)
!1092 = !DILocation(line: 121, column: 25, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1087, file: !37, line: 120, column: 116)
!1094 = !DILocation(line: 121, column: 17, scope: !1093)
!1095 = !DILocation(line: 123, column: 17, scope: !1093)
!1096 = !DILocalVariable(name: "base64encoded_etoken_length", scope: !1017, file: !37, line: 126, type: !336)
!1097 = !DILocation(line: 126, column: 16, scope: !1017)
!1098 = !DILocalVariable(name: "tmp", scope: !1017, file: !37, line: 127, type: !16)
!1099 = !DILocation(line: 127, column: 21, scope: !1017)
!1100 = !DILocation(line: 127, column: 64, scope: !1017)
!1101 = !DILocation(line: 127, column: 56, scope: !1017)
!1102 = !DILocation(line: 127, column: 79, scope: !1017)
!1103 = !DILocation(line: 127, column: 25, scope: !1017)
!1104 = !DILocation(line: 128, column: 9, scope: !1017)
!1105 = !DILocation(line: 128, column: 9, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1107, file: !37, line: 128, column: 9)
!1107 = distinct !DILexicalBlock(scope: !1017, file: !37, line: 128, column: 9)
!1108 = !DILocation(line: 128, column: 9, scope: !1107)
!1109 = !DILocation(line: 128, column: 9, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1111, file: !37, line: 128, column: 9)
!1111 = distinct !DILexicalBlock(scope: !1106, file: !37, line: 128, column: 9)
!1112 = !DILocation(line: 128, column: 9, scope: !1111)
!1113 = !DILocation(line: 130, column: 9, scope: !1017)
!1114 = !DILocation(line: 131, column: 1, scope: !1017)
!1115 = distinct !DISubprogram(name: "validate_decode_token", scope: !37, file: !37, line: 133, type: !1116, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !41)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!7, !16, !1022, !16, !1118}
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!1119 = !DILocalVariable(name: "server_name", arg: 1, scope: !1115, file: !37, line: 133, type: !16)
!1120 = !DILocation(line: 133, column: 46, scope: !1115)
!1121 = !DILocalVariable(name: "key", arg: 2, scope: !1115, file: !37, line: 134, type: !1022)
!1122 = !DILocation(line: 134, column: 41, scope: !1115)
!1123 = !DILocalVariable(name: "base64encoded_etoken", arg: 3, scope: !1115, file: !37, line: 135, type: !16)
!1124 = !DILocation(line: 135, column: 37, scope: !1115)
!1125 = !DILocalVariable(name: "dot", arg: 4, scope: !1115, file: !37, line: 135, type: !1118)
!1126 = !DILocation(line: 135, column: 72, scope: !1115)
!1127 = !DILocation(line: 138, column: 16, scope: !1115)
!1128 = !DILocation(line: 138, column: 9, scope: !1115)
!1129 = !DILocalVariable(name: "etoken", scope: !1115, file: !37, line: 140, type: !1070)
!1130 = !DILocation(line: 140, column: 29, scope: !1115)
!1131 = !DILocation(line: 141, column: 9, scope: !1115)
!1132 = !DILocalVariable(name: "base64encoded_etoken_length", scope: !1115, file: !37, line: 143, type: !1041)
!1133 = !DILocation(line: 143, column: 22, scope: !1115)
!1134 = !DILocation(line: 143, column: 57, scope: !1115)
!1135 = !DILocation(line: 143, column: 50, scope: !1115)
!1136 = !DILocalVariable(name: "tmp", scope: !1115, file: !37, line: 144, type: !1137)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!1139 = !DILocation(line: 144, column: 30, scope: !1115)
!1140 = !DILocation(line: 144, column: 50, scope: !1115)
!1141 = !DILocation(line: 144, column: 71, scope: !1115)
!1142 = !DILocation(line: 144, column: 107, scope: !1115)
!1143 = !DILocation(line: 144, column: 36, scope: !1115)
!1144 = !DILocation(line: 145, column: 23, scope: !1115)
!1145 = !DILocation(line: 145, column: 9, scope: !1115)
!1146 = !DILocation(line: 145, column: 29, scope: !1115)
!1147 = !DILocation(line: 145, column: 40, scope: !1115)
!1148 = !DILocation(line: 147, column: 50, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1115, file: !37, line: 147, column: 13)
!1150 = !DILocation(line: 147, column: 78, scope: !1149)
!1151 = !DILocation(line: 147, column: 13, scope: !1149)
!1152 = !DILocation(line: 147, column: 83, scope: !1149)
!1153 = !DILocation(line: 147, column: 13, scope: !1115)
!1154 = !DILocation(line: 148, column: 25, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1149, file: !37, line: 147, column: 88)
!1156 = !DILocation(line: 148, column: 17, scope: !1155)
!1157 = !DILocation(line: 150, column: 17, scope: !1155)
!1158 = !DILocation(line: 152, column: 17, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1149, file: !37, line: 151, column: 16)
!1160 = !DILocation(line: 154, column: 1, scope: !1115)
!1161 = distinct !DISubprogram(name: "print_token_body", scope: !37, file: !37, line: 156, type: !1162, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !41)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{null, !1118}
!1164 = !DILocalVariable(name: "dot", arg: 1, scope: !1161, file: !37, line: 156, type: !1118)
!1165 = !DILocation(line: 156, column: 43, scope: !1161)
!1166 = !DILocation(line: 157, column: 9, scope: !1161)
!1167 = !DILocation(line: 158, column: 9, scope: !1161)
!1168 = !DILocation(line: 159, column: 9, scope: !1161)
!1169 = !DILocalVariable(name: "base64encoded_nonce_length", scope: !1161, file: !37, line: 160, type: !336)
!1170 = !DILocation(line: 160, column: 16, scope: !1161)
!1171 = !DILocalVariable(name: "base64encoded_nonce", scope: !1161, file: !37, line: 161, type: !16)
!1172 = !DILocation(line: 161, column: 21, scope: !1161)
!1173 = !DILocation(line: 161, column: 74, scope: !1161)
!1174 = !DILocation(line: 161, column: 79, scope: !1161)
!1175 = !DILocation(line: 161, column: 89, scope: !1161)
!1176 = !DILocation(line: 161, column: 96, scope: !1161)
!1177 = !DILocation(line: 161, column: 101, scope: !1161)
!1178 = !DILocation(line: 161, column: 111, scope: !1161)
!1179 = !DILocation(line: 161, column: 43, scope: !1161)
!1180 = !DILocation(line: 162, column: 35, scope: !1161)
!1181 = !DILocation(line: 162, column: 9, scope: !1161)
!1182 = !DILocation(line: 163, column: 48, scope: !1161)
!1183 = !DILocation(line: 163, column: 53, scope: !1161)
!1184 = !DILocation(line: 163, column: 63, scope: !1161)
!1185 = !DILocation(line: 163, column: 42, scope: !1161)
!1186 = !DILocation(line: 163, column: 9, scope: !1161)
!1187 = !DILocation(line: 164, column: 9, scope: !1161)
!1188 = !DILocation(line: 165, column: 9, scope: !1161)
!1189 = !DILocation(line: 166, column: 45, scope: !1161)
!1190 = !DILocation(line: 166, column: 50, scope: !1161)
!1191 = !DILocation(line: 166, column: 60, scope: !1161)
!1192 = !DILocation(line: 166, column: 9, scope: !1161)
!1193 = !DILocation(line: 167, column: 50, scope: !1161)
!1194 = !DILocation(line: 167, column: 55, scope: !1161)
!1195 = !DILocation(line: 167, column: 65, scope: !1161)
!1196 = !DILocation(line: 167, column: 44, scope: !1161)
!1197 = !DILocation(line: 167, column: 9, scope: !1161)
!1198 = !DILocalVariable(name: "time", scope: !1161, file: !37, line: 168, type: !357)
!1199 = !DILocation(line: 168, column: 16, scope: !1161)
!1200 = !DILocation(line: 168, column: 21, scope: !1161)
!1201 = !DILocation(line: 168, column: 26, scope: !1161)
!1202 = !DILocation(line: 168, column: 36, scope: !1161)
!1203 = !DILocation(line: 168, column: 45, scope: !1161)
!1204 = !DILocalVariable(name: "msec", scope: !1161, file: !37, line: 169, type: !31)
!1205 = !DILocation(line: 169, column: 18, scope: !1161)
!1206 = !DILocation(line: 169, column: 24, scope: !1161)
!1207 = !DILocation(line: 169, column: 29, scope: !1161)
!1208 = !DILocation(line: 169, column: 39, scope: !1161)
!1209 = !DILocation(line: 169, column: 49, scope: !1161)
!1210 = !DILocation(line: 169, column: 58, scope: !1161)
!1211 = !DILocation(line: 169, column: 23, scope: !1161)
!1212 = !DILocation(line: 170, column: 9, scope: !1161)
!1213 = !DILocation(line: 171, column: 71, scope: !1161)
!1214 = !DILocation(line: 171, column: 57, scope: !1161)
!1215 = !DILocation(line: 171, column: 77, scope: !1161)
!1216 = !DILocation(line: 171, column: 9, scope: !1161)
!1217 = !DILocation(line: 172, column: 37, scope: !1161)
!1218 = !DILocation(line: 172, column: 9, scope: !1161)
!1219 = !DILocation(line: 173, column: 55, scope: !1161)
!1220 = !DILocation(line: 173, column: 60, scope: !1161)
!1221 = !DILocation(line: 173, column: 70, scope: !1161)
!1222 = !DILocation(line: 173, column: 39, scope: !1161)
!1223 = !DILocation(line: 173, column: 9, scope: !1161)
!1224 = !DILocation(line: 174, column: 9, scope: !1161)
!1225 = !DILocation(line: 175, column: 1, scope: !1161)
