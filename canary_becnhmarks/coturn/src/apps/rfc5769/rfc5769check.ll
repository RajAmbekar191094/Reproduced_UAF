; ModuleID = '/home/raj/coturn/src/apps/rfc5769/rfc5769check.c'
source_filename = "/home/raj/coturn/src/apps/rfc5769/rfc5769check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stun_tid = type { [12 x i8] }
%union.ioa_addr = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct._oauth_token = type { %struct._oauth_encrypted_block }
%struct._oauth_encrypted_block = type { i16, [256 x i8], i16, [128 x i8], i64, i32 }
%struct._oauth_key = type { [129 x i8], [257 x i8], i64, i32, i32, i32, [257 x i8], i64, [257 x i8], i64 }
%struct._oauth_key_data = type { [129 x i8], [257 x i8], i64, i32, i32, [65 x i8] }
%struct._oauth_key_data_raw = type { [129 x i8], [257 x i8], i64, i32, [65 x i8], [128 x i8] }
%struct._encoded_oauth_token = type { [1024 x i8], i64 }

@.str = private unnamed_addr constant [19 x i8] c"\0Afield %s %lu==>>\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [7 x i8] c"\\x%02x\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [15 x i8] c"\0A<<==field %s\0A\00", align 1, !dbg !12
@print_extra = internal global i32 0, align 4, !dbg !17
@.str.3 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1, !dbg !72
@__const.main.reqstc = private unnamed_addr constant [109 x i8] c"\00\01\00X!\12\A4B\B7\E7\A7\01\BC4\D6\86\FA\87\DF\AE\80\22\00\10STUN test client\00$\00\04n\00\01\FF\80)\00\08\93/\F9\B1Q&;6\00\06\00\09evtj:h6vY   \00\08\00\14\9A\EA\A7\0C\BF\D8\CBVx\1E\F2\B5\B2\D3\F2I\C1\B5q\A2\80(\00\04\E5z;\CF\00", align 16
@.str.4 = private unnamed_addr constant [46 x i8] c"RFC 5769 message fingerprint test(0) result: \00", align 1, !dbg !74
@.str.5 = private unnamed_addr constant [9 x i8] c"success\0A\00", align 1, !dbg !79
@.str.6 = private unnamed_addr constant [33 x i8] c"failure on fingerprint(0) check\0A\00", align 1, !dbg !84
@.str.7 = private unnamed_addr constant [23 x i8] c"VOkJxbRl1RmTxUk/WvJxBt\00", align 1, !dbg !89
@shatype = internal global i32 0, align 4, !dbg !210
@.str.8 = private unnamed_addr constant [75 x i8] c"RFC 5769 simple request short-term credentials and integrity test result: \00", align 1, !dbg !94
@.str.9 = private unnamed_addr constant [28 x i8] c"failure on integrity check\0A\00", align 1, !dbg !99
@.str.10 = private unnamed_addr constant [36 x i8] c"failure on message structure check\0A\00", align 1, !dbg !104
@.str.11 = private unnamed_addr constant [47 x i8] c"RFC 5769 NEGATIVE fingerprint test(0) result: \00", align 1, !dbg !109
@.str.12 = private unnamed_addr constant [39 x i8] c"failure on NEGATIVE fingerprint check\0A\00", align 1, !dbg !114
@__const.main.reqltc = private unnamed_addr constant [117 x i8] c"\00\01\00`!\12\A4Bx\AD43\C6\ADr\C0)\DAA.\00\06\00\12\E3\83\9E\E3\83\88\E3\83\AA\E3\83\83\E3\82\AF\E3\82\B9\00\00\00\15\00\1Cf//499k954d6OL34oL9FSTvy64sA\00\14\00\0Bexample.org\00\00\08\00\14\F6p$em\D6J>\02\B8\E0q.\85\C9\A2\8C\A8\96f\00", align 16
@__const.main.user = private unnamed_addr constant [19 x i8] c"\E3\83\9E\E3\83\88\E3\83\AA\E3\83\83\E3\82\AF\E3\82\B9\00", align 16
@.str.13 = private unnamed_addr constant [12 x i8] c"example.org\00", align 1, !dbg !119
@.str.14 = private unnamed_addr constant [10 x i8] c"TheMatrIX\00", align 1, !dbg !124
@.str.15 = private unnamed_addr constant [29 x i8] c"f//499k954d6OL34oL9FSTvy64sA\00", align 1, !dbg !129
@.str.16 = private unnamed_addr constant [78 x i8] c"RFC 5769 message structure, long-term credentials and integrity test result: \00", align 1, !dbg !134
@.str.17 = private unnamed_addr constant [40 x i8] c"RFC 5769 message encoding test result: \00", align 1, !dbg !139
@.str.18 = private unnamed_addr constant [13 x i8] c"x\AD43\C6\ADr\C0)\DAA.\00", align 1, !dbg !144
@.str.19 = private unnamed_addr constant [32 x i8] c"failure: length %d, must be %d\0A\00", align 1, !dbg !149
@.str.20 = private unnamed_addr constant [32 x i8] c"failure: wrong message content\0A\00", align 1, !dbg !154
@.str.21 = private unnamed_addr constant [5 x i8] c" %2x\00", align 1, !dbg !156
@.str.22 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !161
@.str.23 = private unnamed_addr constant [54 x i8] c"RFC 5769 NEGATIVE long-term credentials test result: \00", align 1, !dbg !166
@.str.24 = private unnamed_addr constant [49 x i8] c"failure on NEGATIVE long-term credentials check\0A\00", align 1, !dbg !171
@__const.main.respv4 = private unnamed_addr constant [81 x i8] c"\01\01\00<!\12\A4B\B7\E7\A7\01\BC4\D6\86\FA\87\DF\AE\80\22\00\0Btest vector \00 \00\08\00\01\A1G\E1\12\A6C\00\08\00\14+\91\F5\99\FD\9E\90\C3\8Ct\89\F9*\F9\BAS\F0k\E7\D7\80(\00\04\C0}L\96\00", align 16
@.str.25 = private unnamed_addr constant [46 x i8] c"RFC 5769 message fingerprint test(1) result: \00", align 1, !dbg !176
@.str.26 = private unnamed_addr constant [33 x i8] c"failure on fingerprint(1) check\0A\00", align 1, !dbg !178
@.str.27 = private unnamed_addr constant [74 x i8] c"RFC 5769 IPv4 response short-term credentials and integrity test result: \00", align 1, !dbg !180
@.str.28 = private unnamed_addr constant [47 x i8] c"RFC 5769 NEGATIVE fingerprint test(1) result: \00", align 1, !dbg !185
@.str.29 = private unnamed_addr constant [32 x i8] c"RFC 5769 IPv4 encoding result: \00", align 1, !dbg !187
@.str.30 = private unnamed_addr constant [10 x i8] c"192.0.2.1\00", align 1, !dbg !189
@.str.31 = private unnamed_addr constant [33 x i8] c"failure on IPv4 deconding check\0A\00", align 1, !dbg !191
@__const.main.respv6 = private unnamed_addr constant [93 x i8] c"\01\01\00H!\12\A4B\B7\E7\A7\01\BC4\D6\86\FA\87\DF\AE\80\22\00\0Btest vector \00 \00\14\00\02\A1G\01\13\A9\FA\A5\D3\F1y\BC%\F4\B5\BE\D2\B9\D9\00\08\00\14\A3\82\95NK\E6{\F1\17\84\C9|\82\92\C2u\BF\E3\EDA\80(\00\04\C8\FB\0BL\00", align 16
@.str.32 = private unnamed_addr constant [46 x i8] c"RFC 5769 message fingerprint test(2) result: \00", align 1, !dbg !193
@.str.33 = private unnamed_addr constant [33 x i8] c"failure on fingerprint(2) check\0A\00", align 1, !dbg !195
@.str.34 = private unnamed_addr constant [74 x i8] c"RFC 5769 IPv6 response short-term credentials and integrity test result: \00", align 1, !dbg !197
@.str.35 = private unnamed_addr constant [47 x i8] c"RFC 5769 NEGATIVE fingerprint test(2) result: \00", align 1, !dbg !199
@.str.36 = private unnamed_addr constant [32 x i8] c"RFC 5769 IPv6 encoding result: \00", align 1, !dbg !201
@.str.37 = private unnamed_addr constant [37 x i8] c"2001:db8:1234:5678:11:2233:4455:6677\00", align 1, !dbg !203
@.str.38 = private unnamed_addr constant [33 x i8] c"failure on IPv6 deconding check\0A\00", align 1, !dbg !208
@__const.check_oauth.server_name = private unnamed_addr constant [33 x i8] c"blackdow.carleon.gov\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@__const.check_oauth.long_term_key = private unnamed_addr constant [33 x i8] c"HGkj32KJGiuy098sdfaqbNjOiaz71923\00", align 16
@__const.check_oauth.mac_key = private unnamed_addr constant [33 x i8] c"ZksjpweoixXmvn67534m\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@__const.check_oauth.kid = private unnamed_addr constant [33 x i8] c"2783466234\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@__const.check_oauth.gcm_nonce = private unnamed_addr constant [13 x i8] c"h4j3k2l2n4b5\00", align 1
@encs = internal global [3 x ptr] [ptr @.str.51, ptr @.str.52, ptr null], align 16, !dbg !271
@.str.39 = private unnamed_addr constant [16 x i8] c"oauth token %s:\00", align 1, !dbg !213
@stderr = external global ptr, align 8
@.str.40 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1, !dbg !218
@.str.41 = private unnamed_addr constant [6 x i8] c"AS-RS\00", align 1, !dbg !223
@.str.42 = private unnamed_addr constant [5 x i8] c"AUTH\00", align 1, !dbg !228
@.str.43 = private unnamed_addr constant [31 x i8] c"%s: cannot encode oauth token\0A\00", align 1, !dbg !230
@__FUNCTION__.check_oauth = private unnamed_addr constant [12 x i8] c"check_oauth\00", align 1, !dbg !235
@.str.44 = private unnamed_addr constant [14 x i8] c"encoded token\00", align 1, !dbg !238
@.str.45 = private unnamed_addr constant [31 x i8] c"%s: cannot decode oauth token\0A\00", align 1, !dbg !243
@.str.46 = private unnamed_addr constant [35 x i8] c"%s: wrong mac key: %s, must be %s\0A\00", align 1, !dbg !245
@.str.47 = private unnamed_addr constant [38 x i8] c"%s: wrong key length: %d, must be %d\0A\00", align 1, !dbg !250
@.str.48 = private unnamed_addr constant [41 x i8] c"%s: wrong timestamp: %llu, must be %llu\0A\00", align 1, !dbg !255
@.str.49 = private unnamed_addr constant [38 x i8] c"%s: wrong lifetime: %lu, must be %lu\0A\00", align 1, !dbg !260
@.str.50 = private unnamed_addr constant [4 x i8] c"OK\0A\00", align 1, !dbg !262
@.str.51 = private unnamed_addr constant [8 x i8] c"A128GCM\00", align 1, !dbg !264
@.str.52 = private unnamed_addr constant [8 x i8] c"A256GCM\00", align 1, !dbg !269

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_field5769(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 !dbg !284 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !292, metadata !DIExpression()), !dbg !293
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !294, metadata !DIExpression()), !dbg !295
  store i64 %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !296, metadata !DIExpression()), !dbg !297
  call void @llvm.dbg.declare(metadata ptr %7, metadata !298, metadata !DIExpression()), !dbg !299
  %9 = load ptr, ptr %5, align 8, !dbg !300
  store ptr %9, ptr %7, align 8, !dbg !299
  %10 = load ptr, ptr %4, align 8, !dbg !301
  %11 = load i64, ptr %6, align 8, !dbg !302
  %12 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %10, i64 noundef %11), !dbg !303
  call void @llvm.dbg.declare(metadata ptr %8, metadata !304, metadata !DIExpression()), !dbg !305
  store i64 0, ptr %8, align 8, !dbg !306
  br label %13, !dbg !308

13:                                               ; preds = %24, %3
  %14 = load i64, ptr %8, align 8, !dbg !309
  %15 = load i64, ptr %6, align 8, !dbg !311
  %16 = icmp ult i64 %14, %15, !dbg !312
  br i1 %16, label %17, label %27, !dbg !313

17:                                               ; preds = %13
  %18 = load ptr, ptr %7, align 8, !dbg !314
  %19 = load i64, ptr %8, align 8, !dbg !316
  %20 = getelementptr inbounds i8, ptr %18, i64 %19, !dbg !314
  %21 = load i8, ptr %20, align 1, !dbg !314
  %22 = zext i8 %21 to i32, !dbg !317
  %23 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %22), !dbg !318
  br label %24, !dbg !319

24:                                               ; preds = %17
  %25 = load i64, ptr %8, align 8, !dbg !320
  %26 = add i64 %25, 1, !dbg !320
  store i64 %26, ptr %8, align 8, !dbg !320
  br label %13, !dbg !321, !llvm.loop !322

27:                                               ; preds = %13
  %28 = load ptr, ptr %4, align 8, !dbg !325
  %29 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, ptr noundef %28), !dbg !326
  ret void, !dbg !327
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 !dbg !328 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca [109 x i8], align 16
  %8 = alloca [109 x i8], align 16
  %9 = alloca [33 x i8], align 16
  %10 = alloca [33 x i8], align 16
  %11 = alloca [33 x i8], align 16
  %12 = alloca [117 x i8], align 16
  %13 = alloca [19 x i8], align 16
  %14 = alloca [33 x i8], align 16
  %15 = alloca [29 x i8], align 16
  %16 = alloca [33 x i8], align 16
  %17 = alloca [117 x i8], align 16
  %18 = alloca [19 x i8], align 16
  %19 = alloca i64, align 8
  %20 = alloca i16, align 2
  %21 = alloca %struct.stun_tid, align 1
  %22 = alloca ptr, align 8
  %23 = alloca ptr, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i8, align 1
  %29 = alloca [81 x i8], align 16
  %30 = alloca [81 x i8], align 16
  %31 = alloca [33 x i8], align 16
  %32 = alloca [33 x i8], align 16
  %33 = alloca [33 x i8], align 16
  %34 = alloca %union.ioa_addr, align 4
  %35 = alloca %union.ioa_addr, align 4
  %36 = alloca [93 x i8], align 16
  %37 = alloca [93 x i8], align 16
  %38 = alloca [33 x i8], align 16
  %39 = alloca [33 x i8], align 16
  %40 = alloca [33 x i8], align 16
  %41 = alloca %union.ioa_addr, align 4
  %42 = alloca %union.ioa_addr, align 4
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !332, metadata !DIExpression()), !dbg !333
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !334, metadata !DIExpression()), !dbg !335
  call void @llvm.dbg.declare(metadata ptr %6, metadata !336, metadata !DIExpression()), !dbg !337
  store i32 -1, ptr %6, align 4, !dbg !337
  br label %43, !dbg !338

43:                                               ; preds = %2
  %44 = load i32, ptr %4, align 4, !dbg !339
  store i32 %44, ptr %4, align 4, !dbg !339
  br label %45, !dbg !339

45:                                               ; preds = %43
  br label %46, !dbg !341

46:                                               ; preds = %45
  %47 = load ptr, ptr %5, align 8, !dbg !342
  store ptr %47, ptr %5, align 8, !dbg !342
  br label %48, !dbg !342

48:                                               ; preds = %46
  %49 = load i32, ptr %4, align 4, !dbg !344
  %50 = icmp sgt i32 %49, 1, !dbg !346
  br i1 %50, label %51, label %52, !dbg !347

51:                                               ; preds = %48
  store i32 1, ptr @print_extra, align 4, !dbg !348
  br label %52, !dbg !349

52:                                               ; preds = %51, %48
  call void @set_logfile(ptr noundef @.str.3), !dbg !350
  %53 = call i64 @set_system_parameters(i32 noundef 0), !dbg !351
  call void @llvm.dbg.declare(metadata ptr %7, metadata !352, metadata !DIExpression()), !dbg !357
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %7, ptr align 16 @__const.main.reqstc, i64 109, i1 false), !dbg !357
  call void @llvm.dbg.declare(metadata ptr %8, metadata !358, metadata !DIExpression()), !dbg !360
  %54 = getelementptr inbounds [109 x i8], ptr %8, i64 0, i64 0, !dbg !361
  %55 = getelementptr inbounds [109 x i8], ptr %7, i64 0, i64 0, !dbg !361
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %54, ptr align 16 %55, i64 109, i1 false), !dbg !361
  %56 = getelementptr inbounds [109 x i8], ptr %8, i64 0, i64 0, !dbg !362
  %57 = call i32 @stun_is_command_message_full_check_str(ptr noundef %56, i64 noundef 108, i32 noundef 1, ptr noundef null), !dbg !364
  store i32 %57, ptr %6, align 4, !dbg !365
  %58 = call i32 (ptr, ...) @printf(ptr noundef @.str.4), !dbg !366
  %59 = load i32, ptr %6, align 4, !dbg !367
  %60 = icmp ne i32 %59, 0, !dbg !367
  br i1 %60, label %61, label %63, !dbg !369

61:                                               ; preds = %52
  %62 = call i32 (ptr, ...) @printf(ptr noundef @.str.5), !dbg !370
  br label %69, !dbg !372

63:                                               ; preds = %52
  %64 = load i32, ptr %6, align 4, !dbg !373
  %65 = icmp eq i32 %64, 0, !dbg !375
  br i1 %65, label %66, label %68, !dbg !376

66:                                               ; preds = %63
  %67 = call i32 (ptr, ...) @printf(ptr noundef @.str.6), !dbg !377
  call void @exit(i32 noundef -1) #9, !dbg !379
  unreachable, !dbg !379

68:                                               ; preds = %63
  br label %69

69:                                               ; preds = %68, %61
  call void @llvm.dbg.declare(metadata ptr %9, metadata !380, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.declare(metadata ptr %10, metadata !384, metadata !DIExpression()), !dbg !385
  call void @llvm.dbg.declare(metadata ptr %11, metadata !386, metadata !DIExpression()), !dbg !387
  %70 = getelementptr inbounds [33 x i8], ptr %11, i64 0, i64 0, !dbg !388
  %71 = call ptr @strcpy(ptr noundef %70, ptr noundef @.str.7) #10, !dbg !389
  %72 = getelementptr inbounds [109 x i8], ptr %8, i64 0, i64 0, !dbg !390
  %73 = getelementptr inbounds [33 x i8], ptr %9, i64 0, i64 0, !dbg !391
  %74 = getelementptr inbounds [33 x i8], ptr %10, i64 0, i64 0, !dbg !392
  %75 = getelementptr inbounds [33 x i8], ptr %11, i64 0, i64 0, !dbg !393
  %76 = load i32, ptr @shatype, align 4, !dbg !394
  %77 = call i32 @stun_check_message_integrity_str(i32 noundef 2, ptr noundef %72, i64 noundef 108, ptr noundef %73, ptr noundef %74, ptr noundef %75, i32 noundef %76), !dbg !395
  store i32 %77, ptr %6, align 4, !dbg !396
  %78 = call i32 (ptr, ...) @printf(ptr noundef @.str.8), !dbg !397
  %79 = load i32, ptr %6, align 4, !dbg !398
  %80 = icmp sgt i32 %79, 0, !dbg !400
  br i1 %80, label %81, label %83, !dbg !401

81:                                               ; preds = %69
  %82 = call i32 (ptr, ...) @printf(ptr noundef @.str.5), !dbg !402
  br label %90, !dbg !404

83:                                               ; preds = %69
  %84 = load i32, ptr %6, align 4, !dbg !405
  %85 = icmp eq i32 %84, 0, !dbg !407
  br i1 %85, label %86, label %88, !dbg !408

86:                                               ; preds = %83
  %87 = call i32 (ptr, ...) @printf(ptr noundef @.str.9), !dbg !409
  call void @exit(i32 noundef -1) #9, !dbg !411
  unreachable, !dbg !411

88:                                               ; preds = %83
  %89 = call i32 (ptr, ...) @printf(ptr noundef @.str.10), !dbg !412
  call void @exit(i32 noundef -1) #9, !dbg !414
  unreachable, !dbg !414

90:                                               ; preds = %81
  %91 = getelementptr inbounds [109 x i8], ptr %8, i64 0, i64 27, !dbg !415
  store i8 23, ptr %91, align 1, !dbg !417
  %92 = getelementptr inbounds [109 x i8], ptr %8, i64 0, i64 0, !dbg !418
  %93 = call i32 @stun_is_command_message_full_check_str(ptr noundef %92, i64 noundef 108, i32 noundef 1, ptr noundef null), !dbg !419
  store i32 %93, ptr %6, align 4, !dbg !420
  %94 = call i32 (ptr, ...) @printf(ptr noundef @.str.11), !dbg !421
  %95 = load i32, ptr %6, align 4, !dbg !422
  %96 = icmp ne i32 %95, 0, !dbg !422
  br i1 %96, label %99, label %97, !dbg !424

97:                                               ; preds = %90
  %98 = call i32 (ptr, ...) @printf(ptr noundef @.str.5), !dbg !425
  br label %105, !dbg !427

99:                                               ; preds = %90
  %100 = load i32, ptr %6, align 4, !dbg !428
  %101 = icmp eq i32 %100, 0, !dbg !430
  br i1 %101, label %102, label %104, !dbg !431

102:                                              ; preds = %99
  %103 = call i32 (ptr, ...) @printf(ptr noundef @.str.12), !dbg !432
  call void @exit(i32 noundef -1) #9, !dbg !434
  unreachable, !dbg !434

104:                                              ; preds = %99
  br label %105

105:                                              ; preds = %104, %97
  call void @llvm.dbg.declare(metadata ptr %12, metadata !435, metadata !DIExpression()), !dbg !440
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %12, ptr align 16 @__const.main.reqltc, i64 117, i1 false), !dbg !440
  call void @llvm.dbg.declare(metadata ptr %13, metadata !441, metadata !DIExpression()), !dbg !443
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %13, ptr align 16 @__const.main.user, i64 19, i1 false), !dbg !443
  call void @llvm.dbg.declare(metadata ptr %14, metadata !444, metadata !DIExpression()), !dbg !445
  call void @llvm.dbg.declare(metadata ptr %15, metadata !446, metadata !DIExpression()), !dbg !448
  call void @llvm.dbg.declare(metadata ptr %16, metadata !449, metadata !DIExpression()), !dbg !450
  call void @llvm.dbg.declare(metadata ptr %17, metadata !451, metadata !DIExpression()), !dbg !453
  %106 = getelementptr inbounds [117 x i8], ptr %17, i64 0, i64 0, !dbg !454
  %107 = getelementptr inbounds [117 x i8], ptr %12, i64 0, i64 0, !dbg !454
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %106, ptr align 16 %107, i64 117, i1 false), !dbg !454
  call void @llvm.dbg.declare(metadata ptr %18, metadata !455, metadata !DIExpression()), !dbg !456
  %108 = getelementptr inbounds [19 x i8], ptr %18, i64 0, i64 0, !dbg !457
  %109 = getelementptr inbounds [19 x i8], ptr %13, i64 0, i64 0, !dbg !457
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %108, ptr align 16 %109, i64 19, i1 false), !dbg !457
  %110 = getelementptr inbounds [33 x i8], ptr %14, i64 0, i64 0, !dbg !458
  %111 = call ptr @strcpy(ptr noundef %110, ptr noundef @.str.13) #10, !dbg !459
  %112 = getelementptr inbounds [33 x i8], ptr %16, i64 0, i64 0, !dbg !460
  %113 = call ptr @strcpy(ptr noundef %112, ptr noundef @.str.14) #10, !dbg !461
  %114 = getelementptr inbounds [29 x i8], ptr %15, i64 0, i64 0, !dbg !462
  %115 = call ptr @strcpy(ptr noundef %114, ptr noundef @.str.15) #10, !dbg !463
  %116 = getelementptr inbounds [117 x i8], ptr %17, i64 0, i64 0, !dbg !464
  %117 = getelementptr inbounds [19 x i8], ptr %18, i64 0, i64 0, !dbg !465
  %118 = getelementptr inbounds [33 x i8], ptr %14, i64 0, i64 0, !dbg !466
  %119 = getelementptr inbounds [33 x i8], ptr %16, i64 0, i64 0, !dbg !467
  %120 = load i32, ptr @shatype, align 4, !dbg !468
  %121 = call i32 @stun_check_message_integrity_str(i32 noundef 1, ptr noundef %116, i64 noundef 116, ptr noundef %117, ptr noundef %118, ptr noundef %119, i32 noundef %120), !dbg !469
  store i32 %121, ptr %6, align 4, !dbg !470
  %122 = call i32 (ptr, ...) @printf(ptr noundef @.str.16), !dbg !471
  %123 = load i32, ptr %6, align 4, !dbg !472
  %124 = icmp sgt i32 %123, 0, !dbg !474
  br i1 %124, label %125, label %127, !dbg !475

125:                                              ; preds = %105
  %126 = call i32 (ptr, ...) @printf(ptr noundef @.str.5), !dbg !476
  br label %134, !dbg !478

127:                                              ; preds = %105
  %128 = load i32, ptr %6, align 4, !dbg !479
  %129 = icmp eq i32 %128, 0, !dbg !481
  br i1 %129, label %130, label %132, !dbg !482

130:                                              ; preds = %127
  %131 = call i32 (ptr, ...) @printf(ptr noundef @.str.9), !dbg !483
  call void @exit(i32 noundef -1) #9, !dbg !485
  unreachable, !dbg !485

132:                                              ; preds = %127
  %133 = call i32 (ptr, ...) @printf(ptr noundef @.str.10), !dbg !486
  call void @exit(i32 noundef -1) #9, !dbg !488
  unreachable, !dbg !488

134:                                              ; preds = %125
  %135 = call i32 (ptr, ...) @printf(ptr noundef @.str.17), !dbg !489
  call void @llvm.dbg.declare(metadata ptr %19, metadata !491, metadata !DIExpression()), !dbg !492
  store i64 0, ptr %19, align 8, !dbg !492
  call void @llvm.dbg.declare(metadata ptr %20, metadata !493, metadata !DIExpression()), !dbg !494
  store i16 1, ptr %20, align 2, !dbg !494
  call void @llvm.dbg.declare(metadata ptr %21, metadata !495, metadata !DIExpression()), !dbg !501
  call void @llvm.dbg.declare(metadata ptr %22, metadata !502, metadata !DIExpression()), !dbg !503
  %136 = getelementptr inbounds [117 x i8], ptr %17, i64 0, i64 0, !dbg !504
  store ptr %136, ptr %22, align 8, !dbg !503
  call void @llvm.dbg.declare(metadata ptr %23, metadata !505, metadata !DIExpression()), !dbg !506
  %137 = getelementptr inbounds [117 x i8], ptr %17, i64 0, i64 0, !dbg !507
  store ptr %137, ptr %23, align 8, !dbg !506
  %138 = getelementptr inbounds %struct.stun_tid, ptr %21, i32 0, i32 0, !dbg !508
  %139 = getelementptr inbounds [12 x i8], ptr %138, i64 0, i64 0, !dbg !509
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %139, ptr align 1 @.str.18, i64 12, i1 false), !dbg !509
  %140 = getelementptr inbounds [117 x i8], ptr %17, i64 0, i64 0, !dbg !510
  call void @stun_init_buffer_str(ptr noundef %140, ptr noundef %19), !dbg !511
  %141 = load i16, ptr %20, align 2, !dbg !512
  %142 = zext i16 %141 to i32, !dbg !512
  %143 = and i32 %142, 16383, !dbg !512
  %144 = trunc i32 %143 to i16, !dbg !512
  store i16 %144, ptr %20, align 2, !dbg !512
  %145 = load i16, ptr %20, align 2, !dbg !513
  %146 = call zeroext i16 @ntohs(i16 noundef zeroext %145) #11, !dbg !513
  %147 = load ptr, ptr %22, align 8, !dbg !514
  %148 = getelementptr inbounds i16, ptr %147, i64 0, !dbg !514
  store i16 %146, ptr %148, align 2, !dbg !515
  %149 = load ptr, ptr %22, align 8, !dbg !516
  %150 = getelementptr inbounds i16, ptr %149, i64 1, !dbg !516
  store i16 0, ptr %150, align 2, !dbg !517
  %151 = call i32 @ntohl(i32 noundef 554869826) #11, !dbg !518
  %152 = load ptr, ptr %23, align 8, !dbg !519
  %153 = getelementptr inbounds i32, ptr %152, i64 1, !dbg !519
  store i32 %151, ptr %153, align 4, !dbg !520
  %154 = getelementptr inbounds [117 x i8], ptr %17, i64 0, i64 0, !dbg !521
  call void @stun_tid_message_cpy(ptr noundef %154, ptr noundef %21), !dbg !522
  %155 = getelementptr inbounds [117 x i8], ptr %17, i64 0, i64 0, !dbg !523
  %156 = getelementptr inbounds [19 x i8], ptr %18, i64 0, i64 0, !dbg !524
  %157 = getelementptr inbounds [33 x i8], ptr %14, i64 0, i64 0, !dbg !525
  %158 = getelementptr inbounds [33 x i8], ptr %16, i64 0, i64 0, !dbg !526
  %159 = getelementptr inbounds [29 x i8], ptr %15, i64 0, i64 0, !dbg !527
  %160 = load i32, ptr @shatype, align 4, !dbg !528
  %161 = call i32 @stun_attr_add_integrity_by_user_str(ptr noundef %155, ptr noundef %19, ptr noundef %156, ptr noundef %157, ptr noundef %158, ptr noundef %159, i32 noundef %160), !dbg !529
  %162 = load i64, ptr %19, align 8, !dbg !530
  %163 = icmp ne i64 %162, 116, !dbg !532
  br i1 %163, label %164, label %168, !dbg !533

164:                                              ; preds = %134
  %165 = load i64, ptr %19, align 8, !dbg !534
  %166 = trunc i64 %165 to i32, !dbg !536
  %167 = call i32 (ptr, ...) @printf(ptr noundef @.str.19, i32 noundef %166, i32 noundef 116), !dbg !537
  call void @exit(i32 noundef -1) #9, !dbg !538
  unreachable, !dbg !538

168:                                              ; preds = %134
  %169 = getelementptr inbounds [117 x i8], ptr %17, i64 0, i64 0, !dbg !539
  %170 = getelementptr inbounds [117 x i8], ptr %12, i64 0, i64 0, !dbg !541
  %171 = load i64, ptr %19, align 8, !dbg !542
  %172 = call i32 @memcmp(ptr noundef %169, ptr noundef %170, i64 noundef %171) #12, !dbg !543
  %173 = icmp ne i32 %172, 0, !dbg !543
  br i1 %173, label %174, label %205, !dbg !544

174:                                              ; preds = %168
  %175 = call i32 (ptr, ...) @printf(ptr noundef @.str.20), !dbg !545
  call void @llvm.dbg.declare(metadata ptr %24, metadata !547, metadata !DIExpression()), !dbg !549
  store i32 29, ptr %24, align 4, !dbg !549
  call void @llvm.dbg.declare(metadata ptr %25, metadata !550, metadata !DIExpression()), !dbg !551
  store i32 0, ptr %25, align 4, !dbg !551
  call void @llvm.dbg.declare(metadata ptr %26, metadata !552, metadata !DIExpression()), !dbg !553
  store i32 0, ptr %26, align 4, !dbg !553
  call void @llvm.dbg.declare(metadata ptr %27, metadata !554, metadata !DIExpression()), !dbg !555
  store i32 4, ptr %27, align 4, !dbg !555
  store i32 0, ptr %25, align 4, !dbg !556
  br label %176, !dbg !558

176:                                              ; preds = %201, %174
  %177 = load i32, ptr %25, align 4, !dbg !559
  %178 = load i32, ptr %24, align 4, !dbg !561
  %179 = icmp slt i32 %177, %178, !dbg !562
  br i1 %179, label %180, label %204, !dbg !563

180:                                              ; preds = %176
  store i32 0, ptr %26, align 4, !dbg !564
  br label %181, !dbg !567

181:                                              ; preds = %196, %180
  %182 = load i32, ptr %26, align 4, !dbg !568
  %183 = load i32, ptr %27, align 4, !dbg !570
  %184 = icmp slt i32 %182, %183, !dbg !571
  br i1 %184, label %185, label %199, !dbg !572

185:                                              ; preds = %181
  call void @llvm.dbg.declare(metadata ptr %28, metadata !573, metadata !DIExpression()), !dbg !575
  %186 = load i32, ptr %25, align 4, !dbg !576
  %187 = mul nsw i32 %186, 4, !dbg !577
  %188 = load i32, ptr %26, align 4, !dbg !578
  %189 = add nsw i32 %187, %188, !dbg !579
  %190 = sext i32 %189 to i64, !dbg !580
  %191 = getelementptr inbounds [117 x i8], ptr %17, i64 0, i64 %190, !dbg !580
  %192 = load i8, ptr %191, align 1, !dbg !580
  store i8 %192, ptr %28, align 1, !dbg !575
  %193 = load i8, ptr %28, align 1, !dbg !581
  %194 = zext i8 %193 to i32, !dbg !582
  %195 = call i32 (ptr, ...) @printf(ptr noundef @.str.21, i32 noundef %194), !dbg !583
  br label %196, !dbg !584

196:                                              ; preds = %185
  %197 = load i32, ptr %26, align 4, !dbg !585
  %198 = add nsw i32 %197, 1, !dbg !585
  store i32 %198, ptr %26, align 4, !dbg !585
  br label %181, !dbg !586, !llvm.loop !587

199:                                              ; preds = %181
  %200 = call i32 (ptr, ...) @printf(ptr noundef @.str.22), !dbg !589
  br label %201, !dbg !590

201:                                              ; preds = %199
  %202 = load i32, ptr %25, align 4, !dbg !591
  %203 = add nsw i32 %202, 1, !dbg !591
  store i32 %203, ptr %25, align 4, !dbg !591
  br label %176, !dbg !592, !llvm.loop !593

204:                                              ; preds = %176
  call void @exit(i32 noundef -1) #9, !dbg !595
  unreachable, !dbg !595

205:                                              ; preds = %168
  %206 = call i32 (ptr, ...) @printf(ptr noundef @.str.5), !dbg !596
  %207 = getelementptr inbounds [117 x i8], ptr %17, i64 0, i64 32, !dbg !597
  store i8 10, ptr %207, align 16, !dbg !598
  %208 = getelementptr inbounds [117 x i8], ptr %17, i64 0, i64 0, !dbg !599
  %209 = getelementptr inbounds [19 x i8], ptr %18, i64 0, i64 0, !dbg !600
  %210 = getelementptr inbounds [33 x i8], ptr %14, i64 0, i64 0, !dbg !601
  %211 = getelementptr inbounds [33 x i8], ptr %16, i64 0, i64 0, !dbg !602
  %212 = load i32, ptr @shatype, align 4, !dbg !603
  %213 = call i32 @stun_check_message_integrity_str(i32 noundef 1, ptr noundef %208, i64 noundef 116, ptr noundef %209, ptr noundef %210, ptr noundef %211, i32 noundef %212), !dbg !604
  store i32 %213, ptr %6, align 4, !dbg !605
  %214 = call i32 (ptr, ...) @printf(ptr noundef @.str.23), !dbg !606
  %215 = load i32, ptr %6, align 4, !dbg !607
  %216 = icmp eq i32 %215, 0, !dbg !609
  br i1 %216, label %217, label %219, !dbg !610

217:                                              ; preds = %205
  %218 = call i32 (ptr, ...) @printf(ptr noundef @.str.5), !dbg !611
  br label %221, !dbg !613

219:                                              ; preds = %205
  %220 = call i32 (ptr, ...) @printf(ptr noundef @.str.24), !dbg !614
  call void @exit(i32 noundef -1) #9, !dbg !616
  unreachable, !dbg !616

221:                                              ; preds = %217
  call void @llvm.dbg.declare(metadata ptr %29, metadata !617, metadata !DIExpression()), !dbg !622
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %29, ptr align 16 @__const.main.respv4, i64 81, i1 false), !dbg !622
  call void @llvm.dbg.declare(metadata ptr %30, metadata !623, metadata !DIExpression()), !dbg !625
  %222 = getelementptr inbounds [81 x i8], ptr %30, i64 0, i64 0, !dbg !626
  %223 = getelementptr inbounds [81 x i8], ptr %29, i64 0, i64 0, !dbg !626
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %222, ptr align 16 %223, i64 81, i1 false), !dbg !626
  %224 = getelementptr inbounds [81 x i8], ptr %30, i64 0, i64 0, !dbg !627
  %225 = call i32 @stun_is_command_message_full_check_str(ptr noundef %224, i64 noundef 80, i32 noundef 1, ptr noundef null), !dbg !629
  store i32 %225, ptr %6, align 4, !dbg !630
  %226 = call i32 (ptr, ...) @printf(ptr noundef @.str.25), !dbg !631
  %227 = load i32, ptr %6, align 4, !dbg !632
  %228 = icmp ne i32 %227, 0, !dbg !632
  br i1 %228, label %229, label %231, !dbg !634

229:                                              ; preds = %221
  %230 = call i32 (ptr, ...) @printf(ptr noundef @.str.5), !dbg !635
  br label %237, !dbg !637

231:                                              ; preds = %221
  %232 = load i32, ptr %6, align 4, !dbg !638
  %233 = icmp eq i32 %232, 0, !dbg !640
  br i1 %233, label %234, label %236, !dbg !641

234:                                              ; preds = %231
  %235 = call i32 (ptr, ...) @printf(ptr noundef @.str.26), !dbg !642
  call void @exit(i32 noundef -1) #9, !dbg !644
  unreachable, !dbg !644

236:                                              ; preds = %231
  br label %237

237:                                              ; preds = %236, %229
  call void @llvm.dbg.declare(metadata ptr %31, metadata !645, metadata !DIExpression()), !dbg !647
  call void @llvm.dbg.declare(metadata ptr %32, metadata !648, metadata !DIExpression()), !dbg !649
  call void @llvm.dbg.declare(metadata ptr %33, metadata !650, metadata !DIExpression()), !dbg !651
  %238 = getelementptr inbounds [33 x i8], ptr %33, i64 0, i64 0, !dbg !652
  %239 = call ptr @strcpy(ptr noundef %238, ptr noundef @.str.7) #10, !dbg !653
  %240 = getelementptr inbounds [81 x i8], ptr %30, i64 0, i64 0, !dbg !654
  %241 = getelementptr inbounds [33 x i8], ptr %31, i64 0, i64 0, !dbg !655
  %242 = getelementptr inbounds [33 x i8], ptr %32, i64 0, i64 0, !dbg !656
  %243 = getelementptr inbounds [33 x i8], ptr %33, i64 0, i64 0, !dbg !657
  %244 = load i32, ptr @shatype, align 4, !dbg !658
  %245 = call i32 @stun_check_message_integrity_str(i32 noundef 2, ptr noundef %240, i64 noundef 80, ptr noundef %241, ptr noundef %242, ptr noundef %243, i32 noundef %244), !dbg !659
  store i32 %245, ptr %6, align 4, !dbg !660
  %246 = call i32 (ptr, ...) @printf(ptr noundef @.str.27), !dbg !661
  %247 = load i32, ptr %6, align 4, !dbg !662
  %248 = icmp sgt i32 %247, 0, !dbg !664
  br i1 %248, label %249, label %251, !dbg !665

249:                                              ; preds = %237
  %250 = call i32 (ptr, ...) @printf(ptr noundef @.str.5), !dbg !666
  br label %258, !dbg !668

251:                                              ; preds = %237
  %252 = load i32, ptr %6, align 4, !dbg !669
  %253 = icmp eq i32 %252, 0, !dbg !671
  br i1 %253, label %254, label %256, !dbg !672

254:                                              ; preds = %251
  %255 = call i32 (ptr, ...) @printf(ptr noundef @.str.9), !dbg !673
  call void @exit(i32 noundef -1) #9, !dbg !675
  unreachable, !dbg !675

256:                                              ; preds = %251
  %257 = call i32 (ptr, ...) @printf(ptr noundef @.str.10), !dbg !676
  call void @exit(i32 noundef -1) #9, !dbg !678
  unreachable, !dbg !678

258:                                              ; preds = %249
  %259 = getelementptr inbounds [81 x i8], ptr %30, i64 0, i64 27, !dbg !679
  store i8 23, ptr %259, align 1, !dbg !681
  %260 = getelementptr inbounds [81 x i8], ptr %30, i64 0, i64 0, !dbg !682
  %261 = call i32 @stun_is_command_message_full_check_str(ptr noundef %260, i64 noundef 80, i32 noundef 1, ptr noundef null), !dbg !683
  store i32 %261, ptr %6, align 4, !dbg !684
  %262 = call i32 (ptr, ...) @printf(ptr noundef @.str.28), !dbg !685
  %263 = load i32, ptr %6, align 4, !dbg !686
  %264 = icmp ne i32 %263, 0, !dbg !686
  br i1 %264, label %267, label %265, !dbg !688

265:                                              ; preds = %258
  %266 = call i32 (ptr, ...) @printf(ptr noundef @.str.5), !dbg !689
  br label %273, !dbg !691

267:                                              ; preds = %258
  %268 = load i32, ptr %6, align 4, !dbg !692
  %269 = icmp eq i32 %268, 0, !dbg !694
  br i1 %269, label %270, label %272, !dbg !695

270:                                              ; preds = %267
  %271 = call i32 (ptr, ...) @printf(ptr noundef @.str.12), !dbg !696
  call void @exit(i32 noundef -1) #9, !dbg !698
  unreachable, !dbg !698

272:                                              ; preds = %267
  br label %273

273:                                              ; preds = %272, %265
  call void @llvm.dbg.declare(metadata ptr %34, metadata !699, metadata !DIExpression()), !dbg !746
  call void @llvm.dbg.declare(metadata ptr %35, metadata !747, metadata !DIExpression()), !dbg !748
  %274 = call i32 (ptr, ...) @printf(ptr noundef @.str.29), !dbg !749
  %275 = getelementptr inbounds [81 x i8], ptr %30, i64 0, i64 0, !dbg !750
  %276 = call i32 @stun_attr_get_first_addr_str(ptr noundef %275, i64 noundef 80, i16 noundef zeroext 32, ptr noundef %34, ptr noundef null), !dbg !751
  store i32 %276, ptr %6, align 4, !dbg !752
  %277 = load i32, ptr %6, align 4, !dbg !753
  %278 = icmp slt i32 %277, 0, !dbg !755
  br i1 %278, label %279, label %281, !dbg !756

279:                                              ; preds = %273
  %280 = call i32 (ptr, ...) @printf(ptr noundef @.str.10), !dbg !757
  call void @exit(i32 noundef -1) #9, !dbg !759
  unreachable, !dbg !759

281:                                              ; preds = %273
  %282 = call i32 @make_ioa_addr(ptr noundef @.str.30, i32 noundef 32853, ptr noundef %35), !dbg !760
  %283 = call i32 @addr_eq(ptr noundef %34, ptr noundef %35), !dbg !761
  %284 = icmp ne i32 %283, 0, !dbg !761
  br i1 %284, label %285, label %287, !dbg !763

285:                                              ; preds = %281
  %286 = call i32 (ptr, ...) @printf(ptr noundef @.str.5), !dbg !764
  br label %289, !dbg !766

287:                                              ; preds = %281
  %288 = call i32 (ptr, ...) @printf(ptr noundef @.str.31), !dbg !767
  call void @exit(i32 noundef -1) #9, !dbg !769
  unreachable, !dbg !769

289:                                              ; preds = %285
  call void @llvm.dbg.declare(metadata ptr %36, metadata !770, metadata !DIExpression()), !dbg !775
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %36, ptr align 16 @__const.main.respv6, i64 93, i1 false), !dbg !775
  call void @llvm.dbg.declare(metadata ptr %37, metadata !776, metadata !DIExpression()), !dbg !778
  %290 = getelementptr inbounds [93 x i8], ptr %37, i64 0, i64 0, !dbg !779
  %291 = getelementptr inbounds [93 x i8], ptr %36, i64 0, i64 0, !dbg !779
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %290, ptr align 16 %291, i64 93, i1 false), !dbg !779
  %292 = getelementptr inbounds [93 x i8], ptr %37, i64 0, i64 0, !dbg !781
  %293 = call i32 @stun_is_command_message_full_check_str(ptr noundef %292, i64 noundef 92, i32 noundef 1, ptr noundef null), !dbg !782
  store i32 %293, ptr %6, align 4, !dbg !783
  %294 = call i32 (ptr, ...) @printf(ptr noundef @.str.32), !dbg !784
  %295 = load i32, ptr %6, align 4, !dbg !785
  %296 = icmp ne i32 %295, 0, !dbg !785
  br i1 %296, label %297, label %299, !dbg !787

297:                                              ; preds = %289
  %298 = call i32 (ptr, ...) @printf(ptr noundef @.str.5), !dbg !788
  br label %305, !dbg !790

299:                                              ; preds = %289
  %300 = load i32, ptr %6, align 4, !dbg !791
  %301 = icmp eq i32 %300, 0, !dbg !793
  br i1 %301, label %302, label %304, !dbg !794

302:                                              ; preds = %299
  %303 = call i32 (ptr, ...) @printf(ptr noundef @.str.33), !dbg !795
  call void @exit(i32 noundef -1) #9, !dbg !797
  unreachable, !dbg !797

304:                                              ; preds = %299
  br label %305

305:                                              ; preds = %304, %297
  call void @llvm.dbg.declare(metadata ptr %38, metadata !798, metadata !DIExpression()), !dbg !800
  call void @llvm.dbg.declare(metadata ptr %39, metadata !801, metadata !DIExpression()), !dbg !802
  call void @llvm.dbg.declare(metadata ptr %40, metadata !803, metadata !DIExpression()), !dbg !804
  %306 = getelementptr inbounds [33 x i8], ptr %40, i64 0, i64 0, !dbg !805
  %307 = call ptr @strcpy(ptr noundef %306, ptr noundef @.str.7) #10, !dbg !806
  %308 = getelementptr inbounds [93 x i8], ptr %37, i64 0, i64 0, !dbg !807
  %309 = getelementptr inbounds [33 x i8], ptr %38, i64 0, i64 0, !dbg !808
  %310 = getelementptr inbounds [33 x i8], ptr %39, i64 0, i64 0, !dbg !809
  %311 = getelementptr inbounds [33 x i8], ptr %40, i64 0, i64 0, !dbg !810
  %312 = load i32, ptr @shatype, align 4, !dbg !811
  %313 = call i32 @stun_check_message_integrity_str(i32 noundef 2, ptr noundef %308, i64 noundef 92, ptr noundef %309, ptr noundef %310, ptr noundef %311, i32 noundef %312), !dbg !812
  store i32 %313, ptr %6, align 4, !dbg !813
  %314 = call i32 (ptr, ...) @printf(ptr noundef @.str.34), !dbg !814
  %315 = load i32, ptr %6, align 4, !dbg !815
  %316 = icmp sgt i32 %315, 0, !dbg !817
  br i1 %316, label %317, label %319, !dbg !818

317:                                              ; preds = %305
  %318 = call i32 (ptr, ...) @printf(ptr noundef @.str.5), !dbg !819
  br label %326, !dbg !821

319:                                              ; preds = %305
  %320 = load i32, ptr %6, align 4, !dbg !822
  %321 = icmp eq i32 %320, 0, !dbg !824
  br i1 %321, label %322, label %324, !dbg !825

322:                                              ; preds = %319
  %323 = call i32 (ptr, ...) @printf(ptr noundef @.str.9), !dbg !826
  call void @exit(i32 noundef -1) #9, !dbg !828
  unreachable, !dbg !828

324:                                              ; preds = %319
  %325 = call i32 (ptr, ...) @printf(ptr noundef @.str.10), !dbg !829
  call void @exit(i32 noundef -1) #9, !dbg !831
  unreachable, !dbg !831

326:                                              ; preds = %317
  %327 = getelementptr inbounds [93 x i8], ptr %37, i64 0, i64 27, !dbg !832
  store i8 23, ptr %327, align 1, !dbg !834
  %328 = getelementptr inbounds [93 x i8], ptr %37, i64 0, i64 0, !dbg !835
  %329 = call i32 @stun_is_command_message_full_check_str(ptr noundef %328, i64 noundef 92, i32 noundef 1, ptr noundef null), !dbg !836
  store i32 %329, ptr %6, align 4, !dbg !837
  %330 = call i32 (ptr, ...) @printf(ptr noundef @.str.35), !dbg !838
  %331 = load i32, ptr %6, align 4, !dbg !839
  %332 = icmp ne i32 %331, 0, !dbg !839
  br i1 %332, label %335, label %333, !dbg !841

333:                                              ; preds = %326
  %334 = call i32 (ptr, ...) @printf(ptr noundef @.str.5), !dbg !842
  br label %341, !dbg !844

335:                                              ; preds = %326
  %336 = load i32, ptr %6, align 4, !dbg !845
  %337 = icmp eq i32 %336, 0, !dbg !847
  br i1 %337, label %338, label %340, !dbg !848

338:                                              ; preds = %335
  %339 = call i32 (ptr, ...) @printf(ptr noundef @.str.12), !dbg !849
  call void @exit(i32 noundef -1) #9, !dbg !851
  unreachable, !dbg !851

340:                                              ; preds = %335
  br label %341

341:                                              ; preds = %340, %333
  call void @llvm.dbg.declare(metadata ptr %41, metadata !852, metadata !DIExpression()), !dbg !854
  call void @llvm.dbg.declare(metadata ptr %42, metadata !855, metadata !DIExpression()), !dbg !856
  %342 = call i32 (ptr, ...) @printf(ptr noundef @.str.36), !dbg !857
  %343 = getelementptr inbounds [93 x i8], ptr %37, i64 0, i64 0, !dbg !858
  %344 = call i32 @stun_attr_get_first_addr_str(ptr noundef %343, i64 noundef 92, i16 noundef zeroext 32, ptr noundef %41, ptr noundef null), !dbg !859
  store i32 %344, ptr %6, align 4, !dbg !860
  %345 = load i32, ptr %6, align 4, !dbg !861
  %346 = icmp slt i32 %345, 0, !dbg !863
  br i1 %346, label %347, label %349, !dbg !864

347:                                              ; preds = %341
  %348 = call i32 (ptr, ...) @printf(ptr noundef @.str.10), !dbg !865
  call void @exit(i32 noundef -1) #9, !dbg !867
  unreachable, !dbg !867

349:                                              ; preds = %341
  %350 = call i32 @make_ioa_addr(ptr noundef @.str.37, i32 noundef 32853, ptr noundef %42), !dbg !868
  %351 = call i32 @addr_eq(ptr noundef %41, ptr noundef %42), !dbg !869
  %352 = icmp ne i32 %351, 0, !dbg !869
  br i1 %352, label %353, label %355, !dbg !871

353:                                              ; preds = %349
  %354 = call i32 (ptr, ...) @printf(ptr noundef @.str.5), !dbg !872
  br label %357, !dbg !874

355:                                              ; preds = %349
  %356 = call i32 (ptr, ...) @printf(ptr noundef @.str.38), !dbg !875
  call void @exit(i32 noundef -1) #9, !dbg !877
  unreachable, !dbg !877

357:                                              ; preds = %353
  %358 = call i32 @check_oauth(), !dbg !878
  %359 = icmp slt i32 %358, 0, !dbg !881
  br i1 %359, label %360, label %361, !dbg !882

360:                                              ; preds = %357
  call void @exit(i32 noundef -1) #9, !dbg !883
  unreachable, !dbg !883

361:                                              ; preds = %357
  ret i32 0, !dbg !884
}

declare void @set_logfile(ptr noundef) #2

declare i64 @set_system_parameters(i32 noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare i32 @stun_is_command_message_full_check_str(ptr noundef, i64 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #4

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #5

declare i32 @stun_check_message_integrity_str(i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @stun_init_buffer_str(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind willreturn memory(none)
declare zeroext i16 @ntohs(i16 noundef zeroext) #6

; Function Attrs: nounwind willreturn memory(none)
declare i32 @ntohl(i32 noundef) #6

declare void @stun_tid_message_cpy(ptr noundef, ptr noundef) #2

declare i32 @stun_attr_add_integrity_by_user_str(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #7

declare i32 @stun_attr_get_first_addr_str(ptr noundef, i64 noundef, i16 noundef zeroext, ptr noundef, ptr noundef) #2

declare i32 @make_ioa_addr(ptr noundef, i32 noundef, ptr noundef) #2

declare i32 @addr_eq(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_oauth() #0 !dbg !885 {
  %1 = alloca i32, align 4
  %2 = alloca [33 x i8], align 16
  %3 = alloca i64, align 8
  %4 = alloca [33 x i8], align 16
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca [33 x i8], align 16
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca [33 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [13 x i8], align 1
  %15 = alloca %struct._oauth_token, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct._oauth_token, align 8
  %18 = alloca %struct._oauth_key, align 8
  %19 = alloca %struct._oauth_key_data, align 8
  %20 = alloca %struct._oauth_key_data_raw, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca [1025 x i8], align 16
  %25 = alloca i64, align 8
  %26 = alloca %struct._encoded_oauth_token, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !888, metadata !DIExpression()), !dbg !890
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %2, ptr align 16 @__const.check_oauth.server_name, i64 33, i1 false), !dbg !890
  call void @llvm.dbg.declare(metadata ptr %3, metadata !891, metadata !DIExpression()), !dbg !892
  call void @llvm.dbg.declare(metadata ptr %4, metadata !893, metadata !DIExpression()), !dbg !894
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %4, ptr align 16 @__const.check_oauth.long_term_key, i64 33, i1 false), !dbg !894
  call void @llvm.dbg.declare(metadata ptr %5, metadata !895, metadata !DIExpression()), !dbg !896
  store i64 0, ptr %5, align 8, !dbg !896
  call void @llvm.dbg.declare(metadata ptr %6, metadata !897, metadata !DIExpression()), !dbg !898
  %27 = getelementptr inbounds [33 x i8], ptr %4, i64 0, i64 0, !dbg !899
  %28 = getelementptr inbounds [33 x i8], ptr %4, i64 0, i64 0, !dbg !900
  %29 = call i64 @strlen(ptr noundef %28) #12, !dbg !901
  %30 = call ptr @base64_encode(ptr noundef %27, i64 noundef %29, ptr noundef %5), !dbg !902
  store ptr %30, ptr %6, align 8, !dbg !898
  call void @llvm.dbg.declare(metadata ptr %7, metadata !903, metadata !DIExpression()), !dbg !904
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %7, ptr align 16 @__const.check_oauth.mac_key, i64 33, i1 false), !dbg !904
  call void @llvm.dbg.declare(metadata ptr %8, metadata !905, metadata !DIExpression()), !dbg !907
  %31 = getelementptr inbounds [33 x i8], ptr %7, i64 0, i64 0, !dbg !908
  %32 = call i64 @strlen(ptr noundef %31) #12, !dbg !909
  store i64 %32, ptr %8, align 8, !dbg !907
  call void @llvm.dbg.declare(metadata ptr %9, metadata !910, metadata !DIExpression()), !dbg !912
  store i64 92470300704768, ptr %9, align 8, !dbg !912
  call void @llvm.dbg.declare(metadata ptr %10, metadata !913, metadata !DIExpression()), !dbg !915
  store i32 3600, ptr %10, align 4, !dbg !915
  call void @llvm.dbg.declare(metadata ptr %11, metadata !916, metadata !DIExpression()), !dbg !917
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %11, ptr align 16 @__const.check_oauth.kid, i64 33, i1 false), !dbg !917
  call void @llvm.dbg.declare(metadata ptr %12, metadata !918, metadata !DIExpression()), !dbg !922
  store i32 1234567890, ptr %12, align 4, !dbg !922
  call void @llvm.dbg.declare(metadata ptr %13, metadata !923, metadata !DIExpression()), !dbg !924
  store i32 3600, ptr %13, align 4, !dbg !924
  call void @llvm.dbg.declare(metadata ptr %14, metadata !925, metadata !DIExpression()), !dbg !927
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %14, ptr align 1 @__const.check_oauth.gcm_nonce, i64 13, i1 false), !dbg !927
  store i64 0, ptr %3, align 8, !dbg !928
  br label %33, !dbg !932

33:                                               ; preds = %244, %0
  %34 = load i64, ptr %3, align 8, !dbg !933
  %35 = getelementptr inbounds [3 x ptr], ptr @encs, i64 0, i64 %34, !dbg !935
  %36 = load ptr, ptr %35, align 8, !dbg !935
  %37 = icmp ne ptr %36, null, !dbg !936
  br i1 %37, label %38, label %247, !dbg !936

38:                                               ; preds = %33
  %39 = load i64, ptr %3, align 8, !dbg !937
  %40 = getelementptr inbounds [3 x ptr], ptr @encs, i64 0, i64 %39, !dbg !939
  %41 = load ptr, ptr %40, align 8, !dbg !939
  %42 = call i32 (ptr, ...) @printf(ptr noundef @.str.39, ptr noundef %41), !dbg !940
  %43 = load i32, ptr @print_extra, align 4, !dbg !941
  %44 = icmp ne i32 %43, 0, !dbg !941
  br i1 %44, label %45, label %47, !dbg !943

45:                                               ; preds = %38
  %46 = call i32 (ptr, ...) @printf(ptr noundef @.str.22), !dbg !944
  br label %47, !dbg !944

47:                                               ; preds = %45, %38
  call void @llvm.dbg.declare(metadata ptr %15, metadata !945, metadata !DIExpression()), !dbg !965
  call void @llvm.memset.p0.i64(ptr align 8 %15, i8 0, i64 408, i1 false), !dbg !966
  %48 = load i64, ptr %8, align 8, !dbg !967
  %49 = trunc i64 %48 to i16, !dbg !968
  %50 = getelementptr inbounds %struct._oauth_token, ptr %15, i32 0, i32 0, !dbg !969
  %51 = getelementptr inbounds %struct._oauth_encrypted_block, ptr %50, i32 0, i32 2, !dbg !970
  store i16 %49, ptr %51, align 2, !dbg !971
  br label %52, !dbg !972

52:                                               ; preds = %47
  call void @llvm.dbg.declare(metadata ptr %16, metadata !973, metadata !DIExpression()), !dbg !979
  store i64 128, ptr %16, align 8, !dbg !979
  %53 = getelementptr inbounds %struct._oauth_token, ptr %15, i32 0, i32 0, !dbg !979
  %54 = getelementptr inbounds %struct._oauth_encrypted_block, ptr %53, i32 0, i32 3, !dbg !979
  %55 = getelementptr inbounds [128 x i8], ptr %54, i64 0, i64 0, !dbg !979
  %56 = getelementptr inbounds [33 x i8], ptr %7, i64 0, i64 0, !dbg !979
  %57 = load i64, ptr %16, align 8, !dbg !979
  %58 = call ptr @strncpy(ptr noundef %55, ptr noundef %56, i64 noundef %57) #10, !dbg !979
  %59 = getelementptr inbounds %struct._oauth_token, ptr %15, i32 0, i32 0, !dbg !979
  %60 = getelementptr inbounds %struct._oauth_encrypted_block, ptr %59, i32 0, i32 3, !dbg !979
  %61 = getelementptr inbounds [128 x i8], ptr %60, i64 0, i64 0, !dbg !979
  %62 = load i64, ptr %16, align 8, !dbg !979
  %63 = sub i64 %62, 1, !dbg !979
  %64 = getelementptr inbounds i8, ptr %61, i64 %63, !dbg !979
  store i8 0, ptr %64, align 1, !dbg !979
  br label %65, !dbg !980

65:                                               ; preds = %52
  %66 = getelementptr inbounds %struct._oauth_token, ptr %15, i32 0, i32 0, !dbg !981
  %67 = getelementptr inbounds %struct._oauth_encrypted_block, ptr %66, i32 0, i32 4, !dbg !982
  store i64 92470300704768, ptr %67, align 8, !dbg !983
  %68 = getelementptr inbounds %struct._oauth_token, ptr %15, i32 0, i32 0, !dbg !984
  %69 = getelementptr inbounds %struct._oauth_encrypted_block, ptr %68, i32 0, i32 5, !dbg !985
  store i32 3600, ptr %69, align 8, !dbg !986
  call void @llvm.dbg.declare(metadata ptr %17, metadata !987, metadata !DIExpression()), !dbg !988
  call void @llvm.memset.p0.i64(ptr align 8 %17, i8 0, i64 408, i1 false), !dbg !989
  call void @llvm.dbg.declare(metadata ptr %18, metadata !990, metadata !DIExpression()), !dbg !1011
  call void @llvm.memset.p0.i64(ptr align 8 %18, i8 0, i64 952, i1 false), !dbg !1012
  call void @llvm.dbg.declare(metadata ptr %19, metadata !1013, metadata !DIExpression()), !dbg !1027
  call void @llvm.memset.p0.i64(ptr align 8 %19, i8 0, i64 480, i1 false), !dbg !1028
  call void @llvm.dbg.declare(metadata ptr %20, metadata !1029, metadata !DIExpression()), !dbg !1042
  call void @llvm.memset.p0.i64(ptr align 8 %20, i8 0, i64 600, i1 false), !dbg !1043
  br label %70, !dbg !1044

70:                                               ; preds = %65
  call void @llvm.dbg.declare(metadata ptr %21, metadata !1045, metadata !DIExpression()), !dbg !1051
  store i64 129, ptr %21, align 8, !dbg !1051
  %71 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %20, i32 0, i32 0, !dbg !1051
  %72 = getelementptr inbounds [129 x i8], ptr %71, i64 0, i64 0, !dbg !1051
  %73 = getelementptr inbounds [33 x i8], ptr %11, i64 0, i64 0, !dbg !1051
  %74 = load i64, ptr %21, align 8, !dbg !1051
  %75 = call ptr @strncpy(ptr noundef %72, ptr noundef %73, i64 noundef %74) #10, !dbg !1051
  %76 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %20, i32 0, i32 0, !dbg !1051
  %77 = getelementptr inbounds [129 x i8], ptr %76, i64 0, i64 0, !dbg !1051
  %78 = load i64, ptr %21, align 8, !dbg !1051
  %79 = sub i64 %78, 1, !dbg !1051
  %80 = getelementptr inbounds i8, ptr %77, i64 %79, !dbg !1051
  store i8 0, ptr %80, align 1, !dbg !1051
  br label %81, !dbg !1052

81:                                               ; preds = %70
  br label %82, !dbg !1053

82:                                               ; preds = %81
  %83 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %20, i32 0, i32 1, !dbg !1054
  %84 = getelementptr inbounds [257 x i8], ptr %83, i64 0, i64 0, !dbg !1054
  %85 = load ptr, ptr %6, align 8, !dbg !1054
  %86 = icmp ne ptr %84, %85, !dbg !1054
  br i1 %86, label %87, label %98, !dbg !1057

87:                                               ; preds = %82
  call void @llvm.dbg.declare(metadata ptr %22, metadata !1058, metadata !DIExpression()), !dbg !1062
  store i64 257, ptr %22, align 8, !dbg !1062
  %88 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %20, i32 0, i32 1, !dbg !1062
  %89 = getelementptr inbounds [257 x i8], ptr %88, i64 0, i64 0, !dbg !1062
  %90 = load ptr, ptr %6, align 8, !dbg !1062
  %91 = load i64, ptr %22, align 8, !dbg !1062
  %92 = call ptr @strncpy(ptr noundef %89, ptr noundef %90, i64 noundef %91) #10, !dbg !1062
  %93 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %20, i32 0, i32 1, !dbg !1062
  %94 = getelementptr inbounds [257 x i8], ptr %93, i64 0, i64 0, !dbg !1062
  %95 = load i64, ptr %22, align 8, !dbg !1062
  %96 = sub i64 %95, 1, !dbg !1062
  %97 = getelementptr inbounds i8, ptr %94, i64 %96, !dbg !1062
  store i8 0, ptr %97, align 1, !dbg !1062
  br label %98, !dbg !1063

98:                                               ; preds = %87, %82
  br label %99, !dbg !1057

99:                                               ; preds = %98
  br label %100, !dbg !1064

100:                                              ; preds = %99
  %101 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %20, i32 0, i32 4, !dbg !1065
  %102 = getelementptr inbounds [65 x i8], ptr %101, i64 0, i64 0, !dbg !1065
  %103 = load i64, ptr %3, align 8, !dbg !1065
  %104 = getelementptr inbounds [3 x ptr], ptr @encs, i64 0, i64 %103, !dbg !1065
  %105 = load ptr, ptr %104, align 8, !dbg !1065
  %106 = icmp ne ptr %102, %105, !dbg !1065
  br i1 %106, label %107, label %120, !dbg !1068

107:                                              ; preds = %100
  call void @llvm.dbg.declare(metadata ptr %23, metadata !1069, metadata !DIExpression()), !dbg !1073
  store i64 65, ptr %23, align 8, !dbg !1073
  %108 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %20, i32 0, i32 4, !dbg !1073
  %109 = getelementptr inbounds [65 x i8], ptr %108, i64 0, i64 0, !dbg !1073
  %110 = load i64, ptr %3, align 8, !dbg !1073
  %111 = getelementptr inbounds [3 x ptr], ptr @encs, i64 0, i64 %110, !dbg !1073
  %112 = load ptr, ptr %111, align 8, !dbg !1073
  %113 = load i64, ptr %23, align 8, !dbg !1073
  %114 = call ptr @strncpy(ptr noundef %109, ptr noundef %112, i64 noundef %113) #10, !dbg !1073
  %115 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %20, i32 0, i32 4, !dbg !1073
  %116 = getelementptr inbounds [65 x i8], ptr %115, i64 0, i64 0, !dbg !1073
  %117 = load i64, ptr %23, align 8, !dbg !1073
  %118 = sub i64 %117, 1, !dbg !1073
  %119 = getelementptr inbounds i8, ptr %116, i64 %118, !dbg !1073
  store i8 0, ptr %119, align 1, !dbg !1073
  br label %120, !dbg !1074

120:                                              ; preds = %107, %100
  br label %121, !dbg !1068

121:                                              ; preds = %120
  %122 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %20, i32 0, i32 2, !dbg !1075
  store i64 1234567890, ptr %122, align 8, !dbg !1076
  %123 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %20, i32 0, i32 3, !dbg !1077
  store i32 3600, ptr %123, align 8, !dbg !1078
  call void @convert_oauth_key_data_raw(ptr noundef %20, ptr noundef %19), !dbg !1079
  call void @llvm.dbg.declare(metadata ptr %24, metadata !1080, metadata !DIExpression()), !dbg !1084
  call void @llvm.memset.p0.i64(ptr align 16 %24, i8 0, i64 1025, i1 false), !dbg !1084
  call void @llvm.dbg.declare(metadata ptr %25, metadata !1085, metadata !DIExpression()), !dbg !1086
  store i64 1024, ptr %25, align 8, !dbg !1086
  %124 = getelementptr inbounds [1025 x i8], ptr %24, i64 0, i64 0, !dbg !1087
  %125 = load i64, ptr %25, align 8, !dbg !1089
  %126 = call i32 @convert_oauth_key_data(ptr noundef %19, ptr noundef %18, ptr noundef %124, i64 noundef %125), !dbg !1090
  %127 = icmp slt i32 %126, 0, !dbg !1091
  br i1 %127, label %128, label %132, !dbg !1092

128:                                              ; preds = %121
  %129 = load ptr, ptr @stderr, align 8, !dbg !1093
  %130 = getelementptr inbounds [1025 x i8], ptr %24, i64 0, i64 0, !dbg !1095
  %131 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %129, ptr noundef @.str.40, ptr noundef %130), !dbg !1096
  store i32 -1, ptr %1, align 4, !dbg !1097
  br label %248, !dbg !1097

132:                                              ; preds = %121
  %133 = load i32, ptr @print_extra, align 4, !dbg !1098
  %134 = icmp ne i32 %133, 0, !dbg !1098
  br i1 %134, label %135, label %144, !dbg !1100

135:                                              ; preds = %132
  %136 = getelementptr inbounds %struct._oauth_key, ptr %18, i32 0, i32 6, !dbg !1101
  %137 = getelementptr inbounds [257 x i8], ptr %136, i64 0, i64 0, !dbg !1103
  %138 = getelementptr inbounds %struct._oauth_key, ptr %18, i32 0, i32 7, !dbg !1104
  %139 = load i64, ptr %138, align 8, !dbg !1104
  call void @print_field5769(ptr noundef @.str.41, ptr noundef %137, i64 noundef %139), !dbg !1105
  %140 = getelementptr inbounds %struct._oauth_key, ptr %18, i32 0, i32 8, !dbg !1106
  %141 = getelementptr inbounds [257 x i8], ptr %140, i64 0, i64 0, !dbg !1107
  %142 = getelementptr inbounds %struct._oauth_key, ptr %18, i32 0, i32 9, !dbg !1108
  %143 = load i64, ptr %142, align 8, !dbg !1108
  call void @print_field5769(ptr noundef @.str.42, ptr noundef %141, i64 noundef %143), !dbg !1109
  br label %144, !dbg !1110

144:                                              ; preds = %135, %132
  call void @llvm.dbg.declare(metadata ptr %26, metadata !1111, metadata !DIExpression()), !dbg !1121
  call void @llvm.memset.p0.i64(ptr align 8 %26, i8 0, i64 1032, i1 false), !dbg !1122
  %145 = getelementptr inbounds [33 x i8], ptr %2, i64 0, i64 0, !dbg !1123
  %146 = getelementptr inbounds [13 x i8], ptr %14, i64 0, i64 0, !dbg !1125
  %147 = call i32 @encode_oauth_token(ptr noundef %145, ptr noundef %26, ptr noundef %18, ptr noundef %15, ptr noundef %146), !dbg !1126
  %148 = icmp slt i32 %147, 0, !dbg !1127
  br i1 %148, label %149, label %152, !dbg !1128

149:                                              ; preds = %144
  %150 = load ptr, ptr @stderr, align 8, !dbg !1129
  %151 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %150, ptr noundef @.str.43, ptr noundef @__FUNCTION__.check_oauth), !dbg !1131
  store i32 -1, ptr %1, align 4, !dbg !1132
  br label %248, !dbg !1132

152:                                              ; preds = %144
  %153 = load i32, ptr @print_extra, align 4, !dbg !1133
  %154 = icmp ne i32 %153, 0, !dbg !1133
  br i1 %154, label %155, label %160, !dbg !1135

155:                                              ; preds = %152
  %156 = getelementptr inbounds %struct._encoded_oauth_token, ptr %26, i32 0, i32 0, !dbg !1136
  %157 = getelementptr inbounds [1024 x i8], ptr %156, i64 0, i64 0, !dbg !1138
  %158 = getelementptr inbounds %struct._encoded_oauth_token, ptr %26, i32 0, i32 1, !dbg !1139
  %159 = load i64, ptr %158, align 8, !dbg !1139
  call void @print_field5769(ptr noundef @.str.44, ptr noundef %157, i64 noundef %159), !dbg !1140
  br label %160, !dbg !1141

160:                                              ; preds = %155, %152
  %161 = getelementptr inbounds [33 x i8], ptr %2, i64 0, i64 0, !dbg !1142
  %162 = call i32 @decode_oauth_token(ptr noundef %161, ptr noundef %26, ptr noundef %18, ptr noundef %17), !dbg !1144
  %163 = icmp slt i32 %162, 0, !dbg !1145
  br i1 %163, label %164, label %167, !dbg !1146

164:                                              ; preds = %160
  %165 = load ptr, ptr @stderr, align 8, !dbg !1147
  %166 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %165, ptr noundef @.str.45, ptr noundef @__FUNCTION__.check_oauth), !dbg !1149
  store i32 -1, ptr %1, align 4, !dbg !1150
  br label %248, !dbg !1150

167:                                              ; preds = %160
  %168 = getelementptr inbounds %struct._oauth_token, ptr %15, i32 0, i32 0, !dbg !1151
  %169 = getelementptr inbounds %struct._oauth_encrypted_block, ptr %168, i32 0, i32 3, !dbg !1153
  %170 = getelementptr inbounds [128 x i8], ptr %169, i64 0, i64 0, !dbg !1154
  %171 = getelementptr inbounds %struct._oauth_token, ptr %17, i32 0, i32 0, !dbg !1155
  %172 = getelementptr inbounds %struct._oauth_encrypted_block, ptr %171, i32 0, i32 3, !dbg !1156
  %173 = getelementptr inbounds [128 x i8], ptr %172, i64 0, i64 0, !dbg !1157
  %174 = call i32 @strcmp(ptr noundef %170, ptr noundef %173) #12, !dbg !1158
  %175 = icmp ne i32 %174, 0, !dbg !1158
  br i1 %175, label %176, label %185, !dbg !1159

176:                                              ; preds = %167
  %177 = load ptr, ptr @stderr, align 8, !dbg !1160
  %178 = getelementptr inbounds %struct._oauth_token, ptr %17, i32 0, i32 0, !dbg !1162
  %179 = getelementptr inbounds %struct._oauth_encrypted_block, ptr %178, i32 0, i32 3, !dbg !1163
  %180 = getelementptr inbounds [128 x i8], ptr %179, i64 0, i64 0, !dbg !1164
  %181 = getelementptr inbounds %struct._oauth_token, ptr %15, i32 0, i32 0, !dbg !1165
  %182 = getelementptr inbounds %struct._oauth_encrypted_block, ptr %181, i32 0, i32 3, !dbg !1166
  %183 = getelementptr inbounds [128 x i8], ptr %182, i64 0, i64 0, !dbg !1167
  %184 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %177, ptr noundef @.str.46, ptr noundef @__FUNCTION__.check_oauth, ptr noundef %180, ptr noundef %183), !dbg !1168
  store i32 -1, ptr %1, align 4, !dbg !1169
  br label %248, !dbg !1169

185:                                              ; preds = %167
  %186 = getelementptr inbounds %struct._oauth_token, ptr %15, i32 0, i32 0, !dbg !1170
  %187 = getelementptr inbounds %struct._oauth_encrypted_block, ptr %186, i32 0, i32 2, !dbg !1172
  %188 = load i16, ptr %187, align 2, !dbg !1172
  %189 = zext i16 %188 to i32, !dbg !1173
  %190 = getelementptr inbounds %struct._oauth_token, ptr %17, i32 0, i32 0, !dbg !1174
  %191 = getelementptr inbounds %struct._oauth_encrypted_block, ptr %190, i32 0, i32 2, !dbg !1175
  %192 = load i16, ptr %191, align 2, !dbg !1175
  %193 = zext i16 %192 to i32, !dbg !1176
  %194 = icmp ne i32 %189, %193, !dbg !1177
  br i1 %194, label %195, label %206, !dbg !1178

195:                                              ; preds = %185
  %196 = load ptr, ptr @stderr, align 8, !dbg !1179
  %197 = getelementptr inbounds %struct._oauth_token, ptr %17, i32 0, i32 0, !dbg !1181
  %198 = getelementptr inbounds %struct._oauth_encrypted_block, ptr %197, i32 0, i32 2, !dbg !1182
  %199 = load i16, ptr %198, align 2, !dbg !1182
  %200 = zext i16 %199 to i32, !dbg !1183
  %201 = getelementptr inbounds %struct._oauth_token, ptr %15, i32 0, i32 0, !dbg !1184
  %202 = getelementptr inbounds %struct._oauth_encrypted_block, ptr %201, i32 0, i32 2, !dbg !1185
  %203 = load i16, ptr %202, align 2, !dbg !1185
  %204 = zext i16 %203 to i32, !dbg !1186
  %205 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %196, ptr noundef @.str.47, ptr noundef @__FUNCTION__.check_oauth, i32 noundef %200, i32 noundef %204), !dbg !1187
  store i32 -1, ptr %1, align 4, !dbg !1188
  br label %248, !dbg !1188

206:                                              ; preds = %185
  %207 = getelementptr inbounds %struct._oauth_token, ptr %15, i32 0, i32 0, !dbg !1189
  %208 = getelementptr inbounds %struct._oauth_encrypted_block, ptr %207, i32 0, i32 4, !dbg !1191
  %209 = load i64, ptr %208, align 8, !dbg !1191
  %210 = getelementptr inbounds %struct._oauth_token, ptr %17, i32 0, i32 0, !dbg !1192
  %211 = getelementptr inbounds %struct._oauth_encrypted_block, ptr %210, i32 0, i32 4, !dbg !1193
  %212 = load i64, ptr %211, align 8, !dbg !1193
  %213 = icmp ne i64 %209, %212, !dbg !1194
  br i1 %213, label %214, label %223, !dbg !1195

214:                                              ; preds = %206
  %215 = load ptr, ptr @stderr, align 8, !dbg !1196
  %216 = getelementptr inbounds %struct._oauth_token, ptr %17, i32 0, i32 0, !dbg !1198
  %217 = getelementptr inbounds %struct._oauth_encrypted_block, ptr %216, i32 0, i32 4, !dbg !1199
  %218 = load i64, ptr %217, align 8, !dbg !1199
  %219 = getelementptr inbounds %struct._oauth_token, ptr %15, i32 0, i32 0, !dbg !1200
  %220 = getelementptr inbounds %struct._oauth_encrypted_block, ptr %219, i32 0, i32 4, !dbg !1201
  %221 = load i64, ptr %220, align 8, !dbg !1201
  %222 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %215, ptr noundef @.str.48, ptr noundef @__FUNCTION__.check_oauth, i64 noundef %218, i64 noundef %221), !dbg !1202
  store i32 -1, ptr %1, align 4, !dbg !1203
  br label %248, !dbg !1203

223:                                              ; preds = %206
  %224 = getelementptr inbounds %struct._oauth_token, ptr %15, i32 0, i32 0, !dbg !1204
  %225 = getelementptr inbounds %struct._oauth_encrypted_block, ptr %224, i32 0, i32 5, !dbg !1206
  %226 = load i32, ptr %225, align 8, !dbg !1206
  %227 = getelementptr inbounds %struct._oauth_token, ptr %17, i32 0, i32 0, !dbg !1207
  %228 = getelementptr inbounds %struct._oauth_encrypted_block, ptr %227, i32 0, i32 5, !dbg !1208
  %229 = load i32, ptr %228, align 8, !dbg !1208
  %230 = icmp ne i32 %226, %229, !dbg !1209
  br i1 %230, label %231, label %242, !dbg !1210

231:                                              ; preds = %223
  %232 = load ptr, ptr @stderr, align 8, !dbg !1211
  %233 = getelementptr inbounds %struct._oauth_token, ptr %17, i32 0, i32 0, !dbg !1213
  %234 = getelementptr inbounds %struct._oauth_encrypted_block, ptr %233, i32 0, i32 5, !dbg !1214
  %235 = load i32, ptr %234, align 8, !dbg !1214
  %236 = zext i32 %235 to i64, !dbg !1215
  %237 = getelementptr inbounds %struct._oauth_token, ptr %15, i32 0, i32 0, !dbg !1216
  %238 = getelementptr inbounds %struct._oauth_encrypted_block, ptr %237, i32 0, i32 5, !dbg !1217
  %239 = load i32, ptr %238, align 8, !dbg !1217
  %240 = zext i32 %239 to i64, !dbg !1218
  %241 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %232, ptr noundef @.str.49, ptr noundef @__FUNCTION__.check_oauth, i64 noundef %236, i64 noundef %240), !dbg !1219
  store i32 -1, ptr %1, align 4, !dbg !1220
  br label %248, !dbg !1220

242:                                              ; preds = %223
  %243 = call i32 (ptr, ...) @printf(ptr noundef @.str.50), !dbg !1221
  br label %244, !dbg !1222

244:                                              ; preds = %242
  %245 = load i64, ptr %3, align 8, !dbg !1223
  %246 = add i64 %245, 1, !dbg !1223
  store i64 %246, ptr %3, align 8, !dbg !1223
  br label %33, !dbg !1224, !llvm.loop !1225

247:                                              ; preds = %33
  store i32 0, ptr %1, align 4, !dbg !1227
  br label %248, !dbg !1227

248:                                              ; preds = %247, %231, %214, %195, %176, %164, %149, %128
  %249 = load i32, ptr %1, align 4, !dbg !1228
  ret i32 %249, !dbg !1228
}

declare ptr @base64_encode(ptr noundef, i64 noundef, ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nounwind
declare ptr @strncpy(ptr noundef, ptr noundef, i64 noundef) #5

declare void @convert_oauth_key_data_raw(ptr noundef, ptr noundef) #2

declare i32 @convert_oauth_key_data(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

declare i32 @encode_oauth_token(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @decode_oauth_token(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #7

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(none) }
attributes #12 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!19}
!llvm.module.flags = !{!276, !277, !278, !279, !280, !281, !282}
!llvm.ident = !{!283}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 55, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/apps/rfc5769/rfc5769check.c", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "0fc8a3c9bbcaa24e4e93409b619d6083")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 19)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 58, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 7)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 60, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 15)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "print_extra", scope: !19, file: !2, line: 50, type: !32, isLocal: true, isDefinition: true)
!19 = distinct !DICompileUnit(language: DW_LANG_C11, file: !20, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !21, retainedTypes: !47, globals: !71, splitDebugInlining: false, nameTableKind: None)
!20 = !DIFile(filename: "/home/raj/coturn/src/apps/rfc5769/rfc5769check.c", directory: "/home/raj/coturn/build", checksumkind: CSK_MD5, checksum: "0fc8a3c9bbcaa24e4e93409b619d6083")
!21 = !{!22, !30, !40}
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !23, line: 54, baseType: !24, size: 32, elements: !25)
!23 = !DIFile(filename: "src/client/ns_turn_msg.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "43c56357294df21a547ee0716fe3769d")
!24 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!25 = !{!26, !27, !28, !29}
!26 = !DIEnumerator(name: "TURN_CREDENTIALS_NONE", value: 0)
!27 = !DIEnumerator(name: "TURN_CREDENTIALS_LONG_TERM", value: 1)
!28 = !DIEnumerator(name: "TURN_CREDENTIALS_SHORT_TERM", value: 2)
!29 = !DIEnumerator(name: "TURN_CREDENTIALS_UNDEFINED", value: 3)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_SHATYPE", file: !31, line: 160, baseType: !32, size: 32, elements: !33)
!31 = !DIFile(filename: "src/client/ns_turn_msg_defs.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "4d8c44ae9e82b7a50b86805787352690")
!32 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!33 = !{!34, !35, !36, !37, !38, !39}
!34 = !DIEnumerator(name: "SHATYPE_ERROR", value: -1)
!35 = !DIEnumerator(name: "SHATYPE_DEFAULT", value: 0)
!36 = !DIEnumerator(name: "SHATYPE_SHA1", value: 0)
!37 = !DIEnumerator(name: "SHATYPE_SHA256", value: 1)
!38 = !DIEnumerator(name: "SHATYPE_SHA384", value: 2)
!39 = !DIEnumerator(name: "SHATYPE_SHA512", value: 3)
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_ENC_ALG", file: !31, line: 177, baseType: !32, size: 32, elements: !41)
!41 = !{!42, !43, !44, !45, !46}
!42 = !DIEnumerator(name: "ENC_ALG_ERROR", value: -1)
!43 = !DIEnumerator(name: "ENC_ALG_DEFAULT", value: 0)
!44 = !DIEnumerator(name: "A256GCM", value: 0)
!45 = !DIEnumerator(name: "A128GCM", value: 1)
!46 = !DIEnumerator(name: "ENC_ALG_NUM", value: 2)
!47 = !{!48, !51, !24, !52, !53, !59, !54, !32, !62, !66, !68, !70}
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!50 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!51 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !55, line: 25, baseType: !56)
!55 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !57, line: 40, baseType: !58)
!57 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!58 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !55, line: 26, baseType: !61)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !57, line: 42, baseType: !24)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !55, line: 24, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !57, line: 38, baseType: !50)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !55, line: 27, baseType: !67)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !57, line: 45, baseType: !51)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!70 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!71 = !{!0, !7, !12, !72, !74, !79, !84, !89, !94, !99, !104, !109, !114, !119, !124, !129, !134, !139, !144, !149, !154, !156, !161, !166, !171, !176, !178, !180, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !208, !17, !210, !213, !218, !223, !228, !230, !235, !238, !243, !245, !250, !255, !260, !262, !264, !269, !271}
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(scope: null, file: !2, line: 216, type: !9, isLocal: true, isDefinition: true)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(scope: null, file: !2, line: 244, type: !76, isLocal: true, isDefinition: true)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 368, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 46)
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(scope: null, file: !2, line: 247, type: !81, isLocal: true, isDefinition: true)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 9)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(scope: null, file: !2, line: 249, type: !86, isLocal: true, isDefinition: true)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 33)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(scope: null, file: !2, line: 258, type: !91, isLocal: true, isDefinition: true)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !92)
!92 = !{!93}
!93 = !DISubrange(count: 23)
!94 = !DIGlobalVariableExpression(var: !95, expr: !DIExpression())
!95 = distinct !DIGlobalVariable(scope: null, file: !2, line: 261, type: !96, isLocal: true, isDefinition: true)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 600, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 75)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(scope: null, file: !2, line: 266, type: !101, isLocal: true, isDefinition: true)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 28)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(scope: null, file: !2, line: 269, type: !106, isLocal: true, isDefinition: true)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 36)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(scope: null, file: !2, line: 278, type: !111, isLocal: true, isDefinition: true)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 376, elements: !112)
!112 = !{!113}
!113 = !DISubrange(count: 47)
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression())
!115 = distinct !DIGlobalVariable(scope: null, file: !2, line: 283, type: !116, isLocal: true, isDefinition: true)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !117)
!117 = !{!118}
!118 = !DISubrange(count: 39)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(scope: null, file: !2, line: 319, type: !121, isLocal: true, isDefinition: true)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !122)
!122 = !{!123}
!123 = !DISubrange(count: 12)
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(scope: null, file: !2, line: 320, type: !126, isLocal: true, isDefinition: true)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !127)
!127 = !{!128}
!128 = !DISubrange(count: 10)
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(scope: null, file: !2, line: 321, type: !131, isLocal: true, isDefinition: true)
!131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !132)
!132 = !{!133}
!133 = !DISubrange(count: 29)
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(scope: null, file: !2, line: 326, type: !136, isLocal: true, isDefinition: true)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 624, elements: !137)
!137 = !{!138}
!138 = !DISubrange(count: 78)
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression())
!140 = distinct !DIGlobalVariable(scope: null, file: !2, line: 339, type: !141, isLocal: true, isDefinition: true)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: 40)
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(scope: null, file: !2, line: 345, type: !146, isLocal: true, isDefinition: true)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !147)
!147 = !{!148}
!148 = !DISubrange(count: 13)
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(scope: null, file: !2, line: 354, type: !151, isLocal: true, isDefinition: true)
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !152)
!152 = !{!153}
!153 = !DISubrange(count: 32)
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(scope: null, file: !2, line: 358, type: !151, isLocal: true, isDefinition: true)
!156 = !DIGlobalVariableExpression(var: !157, expr: !DIExpression())
!157 = distinct !DIGlobalVariable(scope: null, file: !2, line: 367, type: !158, isLocal: true, isDefinition: true)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !159)
!159 = !{!160}
!160 = !DISubrange(count: 5)
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(scope: null, file: !2, line: 369, type: !163, isLocal: true, isDefinition: true)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !164)
!164 = !{!165}
!165 = !DISubrange(count: 2)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(scope: null, file: !2, line: 382, type: !168, isLocal: true, isDefinition: true)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 432, elements: !169)
!169 = !{!170}
!170 = !DISubrange(count: 54)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(scope: null, file: !2, line: 387, type: !173, isLocal: true, isDefinition: true)
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 392, elements: !174)
!174 = !{!175}
!175 = !DISubrange(count: 49)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(scope: null, file: !2, line: 412, type: !76, isLocal: true, isDefinition: true)
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(scope: null, file: !2, line: 417, type: !86, isLocal: true, isDefinition: true)
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(scope: null, file: !2, line: 429, type: !182, isLocal: true, isDefinition: true)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 592, elements: !183)
!183 = !{!184}
!184 = !DISubrange(count: 74)
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(scope: null, file: !2, line: 446, type: !111, isLocal: true, isDefinition: true)
!187 = !DIGlobalVariableExpression(var: !188, expr: !DIExpression())
!188 = distinct !DIGlobalVariable(scope: null, file: !2, line: 460, type: !151, isLocal: true, isDefinition: true)
!189 = !DIGlobalVariableExpression(var: !190, expr: !DIExpression())
!190 = distinct !DIGlobalVariable(scope: null, file: !2, line: 468, type: !126, isLocal: true, isDefinition: true)
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(scope: null, file: !2, line: 472, type: !86, isLocal: true, isDefinition: true)
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(scope: null, file: !2, line: 500, type: !76, isLocal: true, isDefinition: true)
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(scope: null, file: !2, line: 505, type: !86, isLocal: true, isDefinition: true)
!197 = !DIGlobalVariableExpression(var: !198, expr: !DIExpression())
!198 = distinct !DIGlobalVariable(scope: null, file: !2, line: 517, type: !182, isLocal: true, isDefinition: true)
!199 = !DIGlobalVariableExpression(var: !200, expr: !DIExpression())
!200 = distinct !DIGlobalVariable(scope: null, file: !2, line: 534, type: !111, isLocal: true, isDefinition: true)
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(scope: null, file: !2, line: 548, type: !151, isLocal: true, isDefinition: true)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(scope: null, file: !2, line: 557, type: !205, isLocal: true, isDefinition: true)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !206)
!206 = !{!207}
!207 = !DISubrange(count: 37)
!208 = !DIGlobalVariableExpression(var: !209, expr: !DIExpression())
!209 = distinct !DIGlobalVariable(scope: null, file: !2, line: 561, type: !86, isLocal: true, isDefinition: true)
!210 = !DIGlobalVariableExpression(var: !211, expr: !DIExpression())
!211 = distinct !DIGlobalVariable(name: "shatype", scope: !19, file: !2, line: 204, type: !212, isLocal: true, isDefinition: true)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "SHATYPE", file: !31, line: 169, baseType: !30)
!213 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression())
!214 = distinct !DIGlobalVariable(scope: null, file: !2, line: 93, type: !215, isLocal: true, isDefinition: true)
!215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !216)
!216 = !{!217}
!217 = !DISubrange(count: 16)
!218 = !DIGlobalVariableExpression(var: !219, expr: !DIExpression())
!219 = distinct !DIGlobalVariable(scope: null, file: !2, line: 131, type: !220, isLocal: true, isDefinition: true)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !221)
!221 = !{!222}
!222 = !DISubrange(count: 4)
!223 = !DIGlobalVariableExpression(var: !224, expr: !DIExpression())
!224 = distinct !DIGlobalVariable(scope: null, file: !2, line: 138, type: !225, isLocal: true, isDefinition: true)
!225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !226)
!226 = !{!227}
!227 = !DISubrange(count: 6)
!228 = !DIGlobalVariableExpression(var: !229, expr: !DIExpression())
!229 = distinct !DIGlobalVariable(scope: null, file: !2, line: 139, type: !158, isLocal: true, isDefinition: true)
!230 = !DIGlobalVariableExpression(var: !231, expr: !DIExpression())
!231 = distinct !DIGlobalVariable(scope: null, file: !2, line: 148, type: !232, isLocal: true, isDefinition: true)
!232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !233)
!233 = !{!234}
!234 = !DISubrange(count: 31)
!235 = !DIGlobalVariableExpression(var: !236, expr: !DIExpression())
!236 = distinct !DIGlobalVariable(scope: null, file: !2, line: 149, type: !237, isLocal: true, isDefinition: true)
!237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 96, elements: !122)
!238 = !DIGlobalVariableExpression(var: !239, expr: !DIExpression())
!239 = distinct !DIGlobalVariable(scope: null, file: !2, line: 154, type: !240, isLocal: true, isDefinition: true)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !241)
!241 = !{!242}
!242 = !DISubrange(count: 14)
!243 = !DIGlobalVariableExpression(var: !244, expr: !DIExpression())
!244 = distinct !DIGlobalVariable(scope: null, file: !2, line: 159, type: !232, isLocal: true, isDefinition: true)
!245 = !DIGlobalVariableExpression(var: !246, expr: !DIExpression())
!246 = distinct !DIGlobalVariable(scope: null, file: !2, line: 167, type: !247, isLocal: true, isDefinition: true)
!247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !248)
!248 = !{!249}
!249 = !DISubrange(count: 35)
!250 = !DIGlobalVariableExpression(var: !251, expr: !DIExpression())
!251 = distinct !DIGlobalVariable(scope: null, file: !2, line: 174, type: !252, isLocal: true, isDefinition: true)
!252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !253)
!253 = !{!254}
!254 = !DISubrange(count: 38)
!255 = !DIGlobalVariableExpression(var: !256, expr: !DIExpression())
!256 = distinct !DIGlobalVariable(scope: null, file: !2, line: 180, type: !257, isLocal: true, isDefinition: true)
!257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !258)
!258 = !{!259}
!259 = !DISubrange(count: 41)
!260 = !DIGlobalVariableExpression(var: !261, expr: !DIExpression())
!261 = distinct !DIGlobalVariable(scope: null, file: !2, line: 187, type: !252, isLocal: true, isDefinition: true)
!262 = !DIGlobalVariableExpression(var: !263, expr: !DIExpression())
!263 = distinct !DIGlobalVariable(scope: null, file: !2, line: 194, type: !220, isLocal: true, isDefinition: true)
!264 = !DIGlobalVariableExpression(var: !265, expr: !DIExpression())
!265 = distinct !DIGlobalVariable(scope: null, file: !2, line: 46, type: !266, isLocal: true, isDefinition: true)
!266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !267)
!267 = !{!268}
!268 = !DISubrange(count: 8)
!269 = !DIGlobalVariableExpression(var: !270, expr: !DIExpression())
!270 = distinct !DIGlobalVariable(scope: null, file: !2, line: 46, type: !266, isLocal: true, isDefinition: true)
!271 = !DIGlobalVariableExpression(var: !272, expr: !DIExpression())
!272 = distinct !DIGlobalVariable(name: "encs", scope: !19, file: !2, line: 44, type: !273, isLocal: true, isDefinition: true)
!273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 192, elements: !274)
!274 = !{!275}
!275 = !DISubrange(count: 3)
!276 = !{i32 7, !"Dwarf Version", i32 5}
!277 = !{i32 2, !"Debug Info Version", i32 3}
!278 = !{i32 1, !"wchar_size", i32 4}
!279 = !{i32 8, !"PIC Level", i32 2}
!280 = !{i32 7, !"PIE Level", i32 2}
!281 = !{i32 7, !"uwtable", i32 2}
!282 = !{i32 7, !"frame-pointer", i32 2}
!283 = !{!"clang version 16.0.0"}
!284 = distinct !DISubprogram(name: "print_field5769", scope: !2, file: !2, line: 53, type: !285, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !291)
!285 = !DISubroutineType(types: !286)
!286 = !{null, !68, !287, !289}
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !290, line: 46, baseType: !51)
!290 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!291 = !{}
!292 = !DILocalVariable(name: "name", arg: 1, scope: !284, file: !2, line: 53, type: !68)
!293 = !DILocation(line: 53, column: 34, scope: !284)
!294 = !DILocalVariable(name: "f0", arg: 2, scope: !284, file: !2, line: 53, type: !287)
!295 = !DILocation(line: 53, column: 52, scope: !284)
!296 = !DILocalVariable(name: "len", arg: 3, scope: !284, file: !2, line: 53, type: !289)
!297 = !DILocation(line: 53, column: 63, scope: !284)
!298 = !DILocalVariable(name: "f", scope: !284, file: !2, line: 54, type: !48)
!299 = !DILocation(line: 54, column: 24, scope: !284)
!300 = !DILocation(line: 54, column: 50, scope: !284)
!301 = !DILocation(line: 55, column: 33, scope: !284)
!302 = !DILocation(line: 55, column: 53, scope: !284)
!303 = !DILocation(line: 55, column: 3, scope: !284)
!304 = !DILocalVariable(name: "i", scope: !284, file: !2, line: 56, type: !289)
!305 = !DILocation(line: 56, column: 10, scope: !284)
!306 = !DILocation(line: 57, column: 9, scope: !307)
!307 = distinct !DILexicalBlock(scope: !284, file: !2, line: 57, column: 3)
!308 = !DILocation(line: 57, column: 7, scope: !307)
!309 = !DILocation(line: 57, column: 13, scope: !310)
!310 = distinct !DILexicalBlock(scope: !307, file: !2, line: 57, column: 3)
!311 = !DILocation(line: 57, column: 15, scope: !310)
!312 = !DILocation(line: 57, column: 14, scope: !310)
!313 = !DILocation(line: 57, column: 3, scope: !307)
!314 = !DILocation(line: 58, column: 36, scope: !315)
!315 = distinct !DILexicalBlock(scope: !310, file: !2, line: 57, column: 24)
!316 = !DILocation(line: 58, column: 38, scope: !315)
!317 = !DILocation(line: 58, column: 22, scope: !315)
!318 = !DILocation(line: 58, column: 5, scope: !315)
!319 = !DILocation(line: 59, column: 3, scope: !315)
!320 = !DILocation(line: 57, column: 19, scope: !310)
!321 = !DILocation(line: 57, column: 3, scope: !310)
!322 = distinct !{!322, !313, !323, !324}
!323 = !DILocation(line: 59, column: 3, scope: !307)
!324 = !{!"llvm.loop.mustprogress"}
!325 = !DILocation(line: 60, column: 29, scope: !284)
!326 = !DILocation(line: 60, column: 3, scope: !284)
!327 = !DILocation(line: 61, column: 1, scope: !284)
!328 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 206, type: !329, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !291)
!329 = !DISubroutineType(types: !330)
!330 = !{!32, !32, !331}
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!332 = !DILocalVariable(name: "argc", arg: 1, scope: !328, file: !2, line: 206, type: !32)
!333 = !DILocation(line: 206, column: 14, scope: !328)
!334 = !DILocalVariable(name: "argv", arg: 2, scope: !328, file: !2, line: 206, type: !331)
!335 = !DILocation(line: 206, column: 33, scope: !328)
!336 = !DILocalVariable(name: "res", scope: !328, file: !2, line: 208, type: !32)
!337 = !DILocation(line: 208, column: 6, scope: !328)
!338 = !DILocation(line: 210, column: 2, scope: !328)
!339 = !DILocation(line: 210, column: 2, scope: !340)
!340 = distinct !DILexicalBlock(scope: !328, file: !2, line: 210, column: 2)
!341 = !DILocation(line: 211, column: 2, scope: !328)
!342 = !DILocation(line: 211, column: 2, scope: !343)
!343 = distinct !DILexicalBlock(scope: !328, file: !2, line: 211, column: 2)
!344 = !DILocation(line: 213, column: 5, scope: !345)
!345 = distinct !DILexicalBlock(scope: !328, file: !2, line: 213, column: 5)
!346 = !DILocation(line: 213, column: 9, scope: !345)
!347 = !DILocation(line: 213, column: 5, scope: !328)
!348 = !DILocation(line: 214, column: 15, scope: !345)
!349 = !DILocation(line: 214, column: 3, scope: !345)
!350 = !DILocation(line: 216, column: 2, scope: !328)
!351 = !DILocation(line: 217, column: 2, scope: !328)
!352 = !DILocalVariable(name: "reqstc", scope: !353, file: !2, line: 220, type: !354)
!353 = distinct !DILexicalBlock(scope: !328, file: !2, line: 219, column: 2)
!354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 872, elements: !355)
!355 = !{!356}
!356 = !DISubrange(count: 109)
!357 = !DILocation(line: 220, column: 23, scope: !353)
!358 = !DILocalVariable(name: "buf", scope: !353, file: !2, line: 238, type: !359)
!359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 872, elements: !355)
!360 = !DILocation(line: 238, column: 11, scope: !353)
!361 = !DILocation(line: 239, column: 3, scope: !353)
!362 = !DILocation(line: 243, column: 49, scope: !363)
!363 = distinct !DILexicalBlock(scope: !353, file: !2, line: 241, column: 3)
!364 = !DILocation(line: 243, column: 10, scope: !363)
!365 = !DILocation(line: 243, column: 8, scope: !363)
!366 = !DILocation(line: 244, column: 4, scope: !363)
!367 = !DILocation(line: 246, column: 8, scope: !368)
!368 = distinct !DILexicalBlock(scope: !363, file: !2, line: 246, column: 8)
!369 = !DILocation(line: 246, column: 8, scope: !363)
!370 = !DILocation(line: 247, column: 5, scope: !371)
!371 = distinct !DILexicalBlock(scope: !368, file: !2, line: 246, column: 13)
!372 = !DILocation(line: 248, column: 4, scope: !371)
!373 = !DILocation(line: 248, column: 15, scope: !374)
!374 = distinct !DILexicalBlock(scope: !368, file: !2, line: 248, column: 15)
!375 = !DILocation(line: 248, column: 19, scope: !374)
!376 = !DILocation(line: 248, column: 15, scope: !368)
!377 = !DILocation(line: 249, column: 5, scope: !378)
!378 = distinct !DILexicalBlock(scope: !374, file: !2, line: 248, column: 25)
!379 = !DILocation(line: 250, column: 5, scope: !378)
!380 = !DILocalVariable(name: "uname", scope: !381, file: !2, line: 255, type: !382)
!381 = distinct !DILexicalBlock(scope: !353, file: !2, line: 254, column: 3)
!382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 264, elements: !87)
!383 = !DILocation(line: 255, column: 12, scope: !381)
!384 = !DILocalVariable(name: "realm", scope: !381, file: !2, line: 256, type: !382)
!385 = !DILocation(line: 256, column: 12, scope: !381)
!386 = !DILocalVariable(name: "upwd", scope: !381, file: !2, line: 257, type: !382)
!387 = !DILocation(line: 257, column: 12, scope: !381)
!388 = !DILocation(line: 258, column: 19, scope: !381)
!389 = !DILocation(line: 258, column: 4, scope: !381)
!390 = !DILocation(line: 260, column: 72, scope: !381)
!391 = !DILocation(line: 260, column: 97, scope: !381)
!392 = !DILocation(line: 260, column: 104, scope: !381)
!393 = !DILocation(line: 260, column: 111, scope: !381)
!394 = !DILocation(line: 260, column: 117, scope: !381)
!395 = !DILocation(line: 260, column: 10, scope: !381)
!396 = !DILocation(line: 260, column: 8, scope: !381)
!397 = !DILocation(line: 261, column: 4, scope: !381)
!398 = !DILocation(line: 263, column: 8, scope: !399)
!399 = distinct !DILexicalBlock(scope: !381, file: !2, line: 263, column: 8)
!400 = !DILocation(line: 263, column: 12, scope: !399)
!401 = !DILocation(line: 263, column: 8, scope: !381)
!402 = !DILocation(line: 264, column: 5, scope: !403)
!403 = distinct !DILexicalBlock(scope: !399, file: !2, line: 263, column: 17)
!404 = !DILocation(line: 265, column: 4, scope: !403)
!405 = !DILocation(line: 265, column: 15, scope: !406)
!406 = distinct !DILexicalBlock(scope: !399, file: !2, line: 265, column: 15)
!407 = !DILocation(line: 265, column: 19, scope: !406)
!408 = !DILocation(line: 265, column: 15, scope: !399)
!409 = !DILocation(line: 266, column: 5, scope: !410)
!410 = distinct !DILexicalBlock(scope: !406, file: !2, line: 265, column: 25)
!411 = !DILocation(line: 267, column: 5, scope: !410)
!412 = !DILocation(line: 269, column: 5, scope: !413)
!413 = distinct !DILexicalBlock(scope: !406, file: !2, line: 268, column: 11)
!414 = !DILocation(line: 270, column: 5, scope: !413)
!415 = !DILocation(line: 275, column: 4, scope: !416)
!416 = distinct !DILexicalBlock(scope: !353, file: !2, line: 274, column: 3)
!417 = !DILocation(line: 275, column: 12, scope: !416)
!418 = !DILocation(line: 277, column: 49, scope: !416)
!419 = !DILocation(line: 277, column: 10, scope: !416)
!420 = !DILocation(line: 277, column: 8, scope: !416)
!421 = !DILocation(line: 278, column: 4, scope: !416)
!422 = !DILocation(line: 280, column: 9, scope: !423)
!423 = distinct !DILexicalBlock(scope: !416, file: !2, line: 280, column: 8)
!424 = !DILocation(line: 280, column: 8, scope: !416)
!425 = !DILocation(line: 281, column: 5, scope: !426)
!426 = distinct !DILexicalBlock(scope: !423, file: !2, line: 280, column: 14)
!427 = !DILocation(line: 282, column: 4, scope: !426)
!428 = !DILocation(line: 282, column: 15, scope: !429)
!429 = distinct !DILexicalBlock(scope: !423, file: !2, line: 282, column: 15)
!430 = !DILocation(line: 282, column: 19, scope: !429)
!431 = !DILocation(line: 282, column: 15, scope: !423)
!432 = !DILocation(line: 283, column: 5, scope: !433)
!433 = distinct !DILexicalBlock(scope: !429, file: !2, line: 282, column: 25)
!434 = !DILocation(line: 284, column: 5, scope: !433)
!435 = !DILocalVariable(name: "reqltc", scope: !436, file: !2, line: 290, type: !437)
!436 = distinct !DILexicalBlock(scope: !328, file: !2, line: 289, column: 2)
!437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 936, elements: !438)
!438 = !{!439}
!439 = !DISubrange(count: 117)
!440 = !DILocation(line: 290, column: 23, scope: !436)
!441 = !DILocalVariable(name: "user", scope: !436, file: !2, line: 306, type: !442)
!442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 152, elements: !5)
!443 = !DILocation(line: 306, column: 11, scope: !436)
!444 = !DILocalVariable(name: "realm", scope: !436, file: !2, line: 309, type: !382)
!445 = !DILocation(line: 309, column: 11, scope: !436)
!446 = !DILocalVariable(name: "nonce", scope: !436, file: !2, line: 310, type: !447)
!447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 232, elements: !132)
!448 = !DILocation(line: 310, column: 11, scope: !436)
!449 = !DILocalVariable(name: "upwd", scope: !436, file: !2, line: 311, type: !382)
!450 = !DILocation(line: 311, column: 11, scope: !436)
!451 = !DILocalVariable(name: "buf", scope: !436, file: !2, line: 313, type: !452)
!452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 936, elements: !438)
!453 = !DILocation(line: 313, column: 11, scope: !436)
!454 = !DILocation(line: 314, column: 3, scope: !436)
!455 = !DILocalVariable(name: "uname", scope: !436, file: !2, line: 316, type: !442)
!456 = !DILocation(line: 316, column: 11, scope: !436)
!457 = !DILocation(line: 317, column: 3, scope: !436)
!458 = !DILocation(line: 319, column: 18, scope: !436)
!459 = !DILocation(line: 319, column: 3, scope: !436)
!460 = !DILocation(line: 320, column: 18, scope: !436)
!461 = !DILocation(line: 320, column: 3, scope: !436)
!462 = !DILocation(line: 321, column: 17, scope: !436)
!463 = !DILocation(line: 321, column: 3, scope: !436)
!464 = !DILocation(line: 323, column: 70, scope: !436)
!465 = !DILocation(line: 323, column: 95, scope: !436)
!466 = !DILocation(line: 323, column: 102, scope: !436)
!467 = !DILocation(line: 324, column: 7, scope: !436)
!468 = !DILocation(line: 324, column: 13, scope: !436)
!469 = !DILocation(line: 323, column: 9, scope: !436)
!470 = !DILocation(line: 323, column: 7, scope: !436)
!471 = !DILocation(line: 326, column: 3, scope: !436)
!472 = !DILocation(line: 328, column: 7, scope: !473)
!473 = distinct !DILexicalBlock(scope: !436, file: !2, line: 328, column: 7)
!474 = !DILocation(line: 328, column: 11, scope: !473)
!475 = !DILocation(line: 328, column: 7, scope: !436)
!476 = !DILocation(line: 329, column: 4, scope: !477)
!477 = distinct !DILexicalBlock(scope: !473, file: !2, line: 328, column: 16)
!478 = !DILocation(line: 330, column: 3, scope: !477)
!479 = !DILocation(line: 330, column: 14, scope: !480)
!480 = distinct !DILexicalBlock(scope: !473, file: !2, line: 330, column: 14)
!481 = !DILocation(line: 330, column: 18, scope: !480)
!482 = !DILocation(line: 330, column: 14, scope: !473)
!483 = !DILocation(line: 331, column: 4, scope: !484)
!484 = distinct !DILexicalBlock(scope: !480, file: !2, line: 330, column: 24)
!485 = !DILocation(line: 332, column: 4, scope: !484)
!486 = !DILocation(line: 334, column: 4, scope: !487)
!487 = distinct !DILexicalBlock(scope: !480, file: !2, line: 333, column: 10)
!488 = !DILocation(line: 335, column: 4, scope: !487)
!489 = !DILocation(line: 339, column: 4, scope: !490)
!490 = distinct !DILexicalBlock(scope: !436, file: !2, line: 338, column: 3)
!491 = !DILocalVariable(name: "len", scope: !490, file: !2, line: 340, type: !289)
!492 = !DILocation(line: 340, column: 11, scope: !490)
!493 = !DILocalVariable(name: "message_type", scope: !490, file: !2, line: 341, type: !54)
!494 = !DILocation(line: 341, column: 13, scope: !490)
!495 = !DILocalVariable(name: "tid", scope: !490, file: !2, line: 342, type: !496)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "stun_tid", file: !23, line: 52, baseType: !497)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !23, line: 47, size: 96, elements: !498)
!498 = !{!499}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "tsx_id", scope: !497, file: !23, line: 51, baseType: !500, size: 96)
!500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 96, elements: !122)
!501 = !DILocation(line: 342, column: 13, scope: !490)
!502 = !DILocalVariable(name: "buf16", scope: !490, file: !2, line: 343, type: !53)
!503 = !DILocation(line: 343, column: 14, scope: !490)
!504 = !DILocation(line: 343, column: 33, scope: !490)
!505 = !DILocalVariable(name: "buf32", scope: !490, file: !2, line: 344, type: !59)
!506 = !DILocation(line: 344, column: 14, scope: !490)
!507 = !DILocation(line: 344, column: 33, scope: !490)
!508 = !DILocation(line: 345, column: 15, scope: !490)
!509 = !DILocation(line: 345, column: 4, scope: !490)
!510 = !DILocation(line: 346, column: 25, scope: !490)
!511 = !DILocation(line: 346, column: 4, scope: !490)
!512 = !DILocation(line: 347, column: 17, scope: !490)
!513 = !DILocation(line: 348, column: 13, scope: !490)
!514 = !DILocation(line: 348, column: 4, scope: !490)
!515 = !DILocation(line: 348, column: 12, scope: !490)
!516 = !DILocation(line: 349, column: 4, scope: !490)
!517 = !DILocation(line: 349, column: 12, scope: !490)
!518 = !DILocation(line: 350, column: 13, scope: !490)
!519 = !DILocation(line: 350, column: 4, scope: !490)
!520 = !DILocation(line: 350, column: 12, scope: !490)
!521 = !DILocation(line: 351, column: 25, scope: !490)
!522 = !DILocation(line: 351, column: 4, scope: !490)
!523 = !DILocation(line: 352, column: 40, scope: !490)
!524 = !DILocation(line: 352, column: 51, scope: !490)
!525 = !DILocation(line: 352, column: 58, scope: !490)
!526 = !DILocation(line: 352, column: 65, scope: !490)
!527 = !DILocation(line: 352, column: 71, scope: !490)
!528 = !DILocation(line: 352, column: 78, scope: !490)
!529 = !DILocation(line: 352, column: 4, scope: !490)
!530 = !DILocation(line: 353, column: 7, scope: !531)
!531 = distinct !DILexicalBlock(scope: !490, file: !2, line: 353, column: 7)
!532 = !DILocation(line: 353, column: 11, scope: !531)
!533 = !DILocation(line: 353, column: 7, scope: !490)
!534 = !DILocation(line: 354, column: 52, scope: !535)
!535 = distinct !DILexicalBlock(scope: !531, file: !2, line: 353, column: 34)
!536 = !DILocation(line: 354, column: 47, scope: !535)
!537 = !DILocation(line: 354, column: 5, scope: !535)
!538 = !DILocation(line: 355, column: 5, scope: !535)
!539 = !DILocation(line: 357, column: 14, scope: !540)
!540 = distinct !DILexicalBlock(scope: !490, file: !2, line: 357, column: 7)
!541 = !DILocation(line: 357, column: 18, scope: !540)
!542 = !DILocation(line: 357, column: 25, scope: !540)
!543 = !DILocation(line: 357, column: 7, scope: !540)
!544 = !DILocation(line: 357, column: 7, scope: !490)
!545 = !DILocation(line: 358, column: 5, scope: !546)
!546 = distinct !DILexicalBlock(scope: !540, file: !2, line: 357, column: 31)
!547 = !DILocalVariable(name: "lines", scope: !548, file: !2, line: 360, type: !32)
!548 = distinct !DILexicalBlock(scope: !546, file: !2, line: 359, column: 5)
!549 = !DILocation(line: 360, column: 10, scope: !548)
!550 = !DILocalVariable(name: "line", scope: !548, file: !2, line: 361, type: !32)
!551 = !DILocation(line: 361, column: 10, scope: !548)
!552 = !DILocalVariable(name: "col", scope: !548, file: !2, line: 362, type: !32)
!553 = !DILocation(line: 362, column: 10, scope: !548)
!554 = !DILocalVariable(name: "cols", scope: !548, file: !2, line: 363, type: !32)
!555 = !DILocation(line: 363, column: 10, scope: !548)
!556 = !DILocation(line: 364, column: 15, scope: !557)
!557 = distinct !DILexicalBlock(scope: !548, file: !2, line: 364, column: 6)
!558 = !DILocation(line: 364, column: 10, scope: !557)
!559 = !DILocation(line: 364, column: 19, scope: !560)
!560 = distinct !DILexicalBlock(scope: !557, file: !2, line: 364, column: 6)
!561 = !DILocation(line: 364, column: 24, scope: !560)
!562 = !DILocation(line: 364, column: 23, scope: !560)
!563 = !DILocation(line: 364, column: 6, scope: !557)
!564 = !DILocation(line: 365, column: 15, scope: !565)
!565 = distinct !DILexicalBlock(scope: !566, file: !2, line: 365, column: 7)
!566 = distinct !DILexicalBlock(scope: !560, file: !2, line: 364, column: 38)
!567 = !DILocation(line: 365, column: 11, scope: !565)
!568 = !DILocation(line: 365, column: 20, scope: !569)
!569 = distinct !DILexicalBlock(scope: !565, file: !2, line: 365, column: 7)
!570 = !DILocation(line: 365, column: 24, scope: !569)
!571 = !DILocation(line: 365, column: 23, scope: !569)
!572 = !DILocation(line: 365, column: 7, scope: !565)
!573 = !DILocalVariable(name: "c", scope: !574, file: !2, line: 366, type: !64)
!574 = distinct !DILexicalBlock(scope: !569, file: !2, line: 365, column: 37)
!575 = !DILocation(line: 366, column: 16, scope: !574)
!576 = !DILocation(line: 366, column: 24, scope: !574)
!577 = !DILocation(line: 366, column: 28, scope: !574)
!578 = !DILocation(line: 366, column: 31, scope: !574)
!579 = !DILocation(line: 366, column: 30, scope: !574)
!580 = !DILocation(line: 366, column: 20, scope: !574)
!581 = !DILocation(line: 367, column: 27, scope: !574)
!582 = !DILocation(line: 367, column: 22, scope: !574)
!583 = !DILocation(line: 367, column: 8, scope: !574)
!584 = !DILocation(line: 368, column: 7, scope: !574)
!585 = !DILocation(line: 365, column: 33, scope: !569)
!586 = !DILocation(line: 365, column: 7, scope: !569)
!587 = distinct !{!587, !572, !588, !324}
!588 = !DILocation(line: 368, column: 7, scope: !565)
!589 = !DILocation(line: 369, column: 7, scope: !566)
!590 = !DILocation(line: 370, column: 6, scope: !566)
!591 = !DILocation(line: 364, column: 34, scope: !560)
!592 = !DILocation(line: 364, column: 6, scope: !560)
!593 = distinct !{!593, !563, !594, !324}
!594 = !DILocation(line: 370, column: 6, scope: !557)
!595 = !DILocation(line: 372, column: 5, scope: !546)
!596 = !DILocation(line: 374, column: 4, scope: !490)
!597 = !DILocation(line: 378, column: 3, scope: !436)
!598 = !DILocation(line: 378, column: 11, scope: !436)
!599 = !DILocation(line: 379, column: 70, scope: !436)
!600 = !DILocation(line: 379, column: 95, scope: !436)
!601 = !DILocation(line: 379, column: 102, scope: !436)
!602 = !DILocation(line: 380, column: 7, scope: !436)
!603 = !DILocation(line: 380, column: 13, scope: !436)
!604 = !DILocation(line: 379, column: 9, scope: !436)
!605 = !DILocation(line: 379, column: 7, scope: !436)
!606 = !DILocation(line: 382, column: 3, scope: !436)
!607 = !DILocation(line: 384, column: 7, scope: !608)
!608 = distinct !DILexicalBlock(scope: !436, file: !2, line: 384, column: 7)
!609 = !DILocation(line: 384, column: 11, scope: !608)
!610 = !DILocation(line: 384, column: 7, scope: !436)
!611 = !DILocation(line: 385, column: 4, scope: !612)
!612 = distinct !DILexicalBlock(scope: !608, file: !2, line: 384, column: 17)
!613 = !DILocation(line: 386, column: 3, scope: !612)
!614 = !DILocation(line: 387, column: 4, scope: !615)
!615 = distinct !DILexicalBlock(scope: !608, file: !2, line: 386, column: 10)
!616 = !DILocation(line: 388, column: 4, scope: !615)
!617 = !DILocalVariable(name: "respv4", scope: !618, file: !2, line: 393, type: !619)
!618 = distinct !DILexicalBlock(scope: !328, file: !2, line: 392, column: 2)
!619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 648, elements: !620)
!620 = !{!621}
!621 = !DISubrange(count: 81)
!622 = !DILocation(line: 393, column: 23, scope: !618)
!623 = !DILocalVariable(name: "buf", scope: !618, file: !2, line: 406, type: !624)
!624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 648, elements: !620)
!625 = !DILocation(line: 406, column: 11, scope: !618)
!626 = !DILocation(line: 407, column: 3, scope: !618)
!627 = !DILocation(line: 411, column: 49, scope: !628)
!628 = distinct !DILexicalBlock(scope: !618, file: !2, line: 409, column: 3)
!629 = !DILocation(line: 411, column: 10, scope: !628)
!630 = !DILocation(line: 411, column: 8, scope: !628)
!631 = !DILocation(line: 412, column: 4, scope: !628)
!632 = !DILocation(line: 414, column: 8, scope: !633)
!633 = distinct !DILexicalBlock(scope: !628, file: !2, line: 414, column: 8)
!634 = !DILocation(line: 414, column: 8, scope: !628)
!635 = !DILocation(line: 415, column: 5, scope: !636)
!636 = distinct !DILexicalBlock(scope: !633, file: !2, line: 414, column: 13)
!637 = !DILocation(line: 416, column: 4, scope: !636)
!638 = !DILocation(line: 416, column: 15, scope: !639)
!639 = distinct !DILexicalBlock(scope: !633, file: !2, line: 416, column: 15)
!640 = !DILocation(line: 416, column: 19, scope: !639)
!641 = !DILocation(line: 416, column: 15, scope: !633)
!642 = !DILocation(line: 417, column: 5, scope: !643)
!643 = distinct !DILexicalBlock(scope: !639, file: !2, line: 416, column: 25)
!644 = !DILocation(line: 418, column: 5, scope: !643)
!645 = !DILocalVariable(name: "uname", scope: !646, file: !2, line: 423, type: !382)
!646 = distinct !DILexicalBlock(scope: !618, file: !2, line: 422, column: 3)
!647 = !DILocation(line: 423, column: 12, scope: !646)
!648 = !DILocalVariable(name: "realm", scope: !646, file: !2, line: 424, type: !382)
!649 = !DILocation(line: 424, column: 12, scope: !646)
!650 = !DILocalVariable(name: "upwd", scope: !646, file: !2, line: 425, type: !382)
!651 = !DILocation(line: 425, column: 12, scope: !646)
!652 = !DILocation(line: 426, column: 19, scope: !646)
!653 = !DILocation(line: 426, column: 4, scope: !646)
!654 = !DILocation(line: 428, column: 72, scope: !646)
!655 = !DILocation(line: 428, column: 97, scope: !646)
!656 = !DILocation(line: 428, column: 104, scope: !646)
!657 = !DILocation(line: 428, column: 111, scope: !646)
!658 = !DILocation(line: 428, column: 117, scope: !646)
!659 = !DILocation(line: 428, column: 10, scope: !646)
!660 = !DILocation(line: 428, column: 8, scope: !646)
!661 = !DILocation(line: 429, column: 4, scope: !646)
!662 = !DILocation(line: 431, column: 8, scope: !663)
!663 = distinct !DILexicalBlock(scope: !646, file: !2, line: 431, column: 8)
!664 = !DILocation(line: 431, column: 12, scope: !663)
!665 = !DILocation(line: 431, column: 8, scope: !646)
!666 = !DILocation(line: 432, column: 5, scope: !667)
!667 = distinct !DILexicalBlock(scope: !663, file: !2, line: 431, column: 17)
!668 = !DILocation(line: 433, column: 4, scope: !667)
!669 = !DILocation(line: 433, column: 15, scope: !670)
!670 = distinct !DILexicalBlock(scope: !663, file: !2, line: 433, column: 15)
!671 = !DILocation(line: 433, column: 19, scope: !670)
!672 = !DILocation(line: 433, column: 15, scope: !663)
!673 = !DILocation(line: 434, column: 5, scope: !674)
!674 = distinct !DILexicalBlock(scope: !670, file: !2, line: 433, column: 25)
!675 = !DILocation(line: 435, column: 5, scope: !674)
!676 = !DILocation(line: 437, column: 5, scope: !677)
!677 = distinct !DILexicalBlock(scope: !670, file: !2, line: 436, column: 11)
!678 = !DILocation(line: 438, column: 5, scope: !677)
!679 = !DILocation(line: 443, column: 4, scope: !680)
!680 = distinct !DILexicalBlock(scope: !618, file: !2, line: 442, column: 3)
!681 = !DILocation(line: 443, column: 12, scope: !680)
!682 = !DILocation(line: 445, column: 49, scope: !680)
!683 = !DILocation(line: 445, column: 10, scope: !680)
!684 = !DILocation(line: 445, column: 8, scope: !680)
!685 = !DILocation(line: 446, column: 4, scope: !680)
!686 = !DILocation(line: 448, column: 9, scope: !687)
!687 = distinct !DILexicalBlock(scope: !680, file: !2, line: 448, column: 8)
!688 = !DILocation(line: 448, column: 8, scope: !680)
!689 = !DILocation(line: 449, column: 5, scope: !690)
!690 = distinct !DILexicalBlock(scope: !687, file: !2, line: 448, column: 14)
!691 = !DILocation(line: 450, column: 4, scope: !690)
!692 = !DILocation(line: 450, column: 15, scope: !693)
!693 = distinct !DILexicalBlock(scope: !687, file: !2, line: 450, column: 15)
!694 = !DILocation(line: 450, column: 19, scope: !693)
!695 = !DILocation(line: 450, column: 15, scope: !687)
!696 = !DILocation(line: 451, column: 5, scope: !697)
!697 = distinct !DILexicalBlock(scope: !693, file: !2, line: 450, column: 25)
!698 = !DILocation(line: 452, column: 5, scope: !697)
!699 = !DILocalVariable(name: "addr4", scope: !700, file: !2, line: 457, type: !701)
!700 = distinct !DILexicalBlock(scope: !618, file: !2, line: 456, column: 3)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_addr", file: !702, line: 48, baseType: !703)
!702 = !DIFile(filename: "src/client/ns_turn_ioaddr.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "6bb7c107d1e7937049c12f6d0dffd94c")
!703 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !702, line: 44, size: 224, elements: !704)
!704 = !{!705, !713, !727}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !703, file: !702, line: 45, baseType: !706, size: 128)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !707, line: 180, size: 128, elements: !708)
!707 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "e3826be048699664d9ef7b080f62f2e0")
!708 = !{!709, !712}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !706, file: !707, line: 182, baseType: !710, size: 16)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !711, line: 28, baseType: !58)
!711 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "dd7f1d9dd6e26f88d1726905ed5d9ff5")
!712 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !706, file: !707, line: 183, baseType: !240, size: 112, offset: 16)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "s4", scope: !703, file: !702, line: 46, baseType: !714, size: 128)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !715, line: 245, size: 128, elements: !716)
!715 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "eb6560f10d4cfe9f30fea2c92b9da0fd")
!716 = !{!717, !718, !720, !725}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !714, file: !715, line: 247, baseType: !710, size: 16)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !714, file: !715, line: 248, baseType: !719, size: 16, offset: 16)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !715, line: 123, baseType: !54)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !714, file: !715, line: 249, baseType: !721, size: 32, offset: 32)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !715, line: 31, size: 32, elements: !722)
!722 = !{!723}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !721, file: !715, line: 33, baseType: !724, size: 32)
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !715, line: 30, baseType: !60)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !714, file: !715, line: 252, baseType: !726, size: 64, offset: 64)
!726 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 64, elements: !267)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "s6", scope: !703, file: !702, line: 47, baseType: !728, size: 224)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !715, line: 260, size: 224, elements: !729)
!729 = !{!730, !731, !732, !733, !745}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_family", scope: !728, file: !715, line: 262, baseType: !710, size: 16)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_port", scope: !728, file: !715, line: 263, baseType: !719, size: 16, offset: 16)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_flowinfo", scope: !728, file: !715, line: 264, baseType: !60, size: 32, offset: 32)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !728, file: !715, line: 265, baseType: !734, size: 128, offset: 64)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !715, line: 219, size: 128, elements: !735)
!735 = !{!736}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !734, file: !715, line: 226, baseType: !737, size: 128)
!737 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !734, file: !715, line: 221, size: 128, elements: !738)
!738 = !{!739, !741, !743}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !737, file: !715, line: 223, baseType: !740, size: 128)
!740 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 128, elements: !216)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !737, file: !715, line: 224, baseType: !742, size: 128)
!742 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 128, elements: !267)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !737, file: !715, line: 225, baseType: !744, size: 128)
!744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 128, elements: !221)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_scope_id", scope: !728, file: !715, line: 266, baseType: !60, size: 32, offset: 192)
!746 = !DILocation(line: 457, column: 13, scope: !700)
!747 = !DILocalVariable(name: "addr4_test", scope: !700, file: !2, line: 458, type: !701)
!748 = !DILocation(line: 458, column: 13, scope: !700)
!749 = !DILocation(line: 460, column: 4, scope: !700)
!750 = !DILocation(line: 462, column: 39, scope: !700)
!751 = !DILocation(line: 462, column: 10, scope: !700)
!752 = !DILocation(line: 462, column: 8, scope: !700)
!753 = !DILocation(line: 463, column: 7, scope: !754)
!754 = distinct !DILexicalBlock(scope: !700, file: !2, line: 463, column: 7)
!755 = !DILocation(line: 463, column: 11, scope: !754)
!756 = !DILocation(line: 463, column: 7, scope: !700)
!757 = !DILocation(line: 464, column: 5, scope: !758)
!758 = distinct !DILexicalBlock(scope: !754, file: !2, line: 463, column: 16)
!759 = !DILocation(line: 465, column: 5, scope: !758)
!760 = !DILocation(line: 468, column: 4, scope: !700)
!761 = !DILocation(line: 469, column: 7, scope: !762)
!762 = distinct !DILexicalBlock(scope: !700, file: !2, line: 469, column: 7)
!763 = !DILocation(line: 469, column: 7, scope: !700)
!764 = !DILocation(line: 470, column: 5, scope: !765)
!765 = distinct !DILexicalBlock(scope: !762, file: !2, line: 469, column: 36)
!766 = !DILocation(line: 471, column: 4, scope: !765)
!767 = !DILocation(line: 472, column: 5, scope: !768)
!768 = distinct !DILexicalBlock(scope: !762, file: !2, line: 471, column: 11)
!769 = !DILocation(line: 473, column: 5, scope: !768)
!770 = !DILocalVariable(name: "respv6", scope: !771, file: !2, line: 479, type: !772)
!771 = distinct !DILexicalBlock(scope: !328, file: !2, line: 478, column: 2)
!772 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 744, elements: !773)
!773 = !{!774}
!774 = !DISubrange(count: 93)
!775 = !DILocation(line: 479, column: 23, scope: !771)
!776 = !DILocalVariable(name: "buf", scope: !771, file: !2, line: 494, type: !777)
!777 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 744, elements: !773)
!778 = !DILocation(line: 494, column: 11, scope: !771)
!779 = !DILocation(line: 497, column: 4, scope: !780)
!780 = distinct !DILexicalBlock(scope: !771, file: !2, line: 496, column: 3)
!781 = !DILocation(line: 499, column: 49, scope: !780)
!782 = !DILocation(line: 499, column: 10, scope: !780)
!783 = !DILocation(line: 499, column: 8, scope: !780)
!784 = !DILocation(line: 500, column: 4, scope: !780)
!785 = !DILocation(line: 502, column: 8, scope: !786)
!786 = distinct !DILexicalBlock(scope: !780, file: !2, line: 502, column: 8)
!787 = !DILocation(line: 502, column: 8, scope: !780)
!788 = !DILocation(line: 503, column: 5, scope: !789)
!789 = distinct !DILexicalBlock(scope: !786, file: !2, line: 502, column: 13)
!790 = !DILocation(line: 504, column: 4, scope: !789)
!791 = !DILocation(line: 504, column: 15, scope: !792)
!792 = distinct !DILexicalBlock(scope: !786, file: !2, line: 504, column: 15)
!793 = !DILocation(line: 504, column: 19, scope: !792)
!794 = !DILocation(line: 504, column: 15, scope: !786)
!795 = !DILocation(line: 505, column: 5, scope: !796)
!796 = distinct !DILexicalBlock(scope: !792, file: !2, line: 504, column: 25)
!797 = !DILocation(line: 506, column: 5, scope: !796)
!798 = !DILocalVariable(name: "uname", scope: !799, file: !2, line: 511, type: !382)
!799 = distinct !DILexicalBlock(scope: !771, file: !2, line: 510, column: 3)
!800 = !DILocation(line: 511, column: 12, scope: !799)
!801 = !DILocalVariable(name: "realm", scope: !799, file: !2, line: 512, type: !382)
!802 = !DILocation(line: 512, column: 12, scope: !799)
!803 = !DILocalVariable(name: "upwd", scope: !799, file: !2, line: 513, type: !382)
!804 = !DILocation(line: 513, column: 12, scope: !799)
!805 = !DILocation(line: 514, column: 19, scope: !799)
!806 = !DILocation(line: 514, column: 4, scope: !799)
!807 = !DILocation(line: 516, column: 72, scope: !799)
!808 = !DILocation(line: 516, column: 97, scope: !799)
!809 = !DILocation(line: 516, column: 104, scope: !799)
!810 = !DILocation(line: 516, column: 111, scope: !799)
!811 = !DILocation(line: 516, column: 117, scope: !799)
!812 = !DILocation(line: 516, column: 10, scope: !799)
!813 = !DILocation(line: 516, column: 8, scope: !799)
!814 = !DILocation(line: 517, column: 4, scope: !799)
!815 = !DILocation(line: 519, column: 8, scope: !816)
!816 = distinct !DILexicalBlock(scope: !799, file: !2, line: 519, column: 8)
!817 = !DILocation(line: 519, column: 12, scope: !816)
!818 = !DILocation(line: 519, column: 8, scope: !799)
!819 = !DILocation(line: 520, column: 5, scope: !820)
!820 = distinct !DILexicalBlock(scope: !816, file: !2, line: 519, column: 17)
!821 = !DILocation(line: 521, column: 4, scope: !820)
!822 = !DILocation(line: 521, column: 15, scope: !823)
!823 = distinct !DILexicalBlock(scope: !816, file: !2, line: 521, column: 15)
!824 = !DILocation(line: 521, column: 19, scope: !823)
!825 = !DILocation(line: 521, column: 15, scope: !816)
!826 = !DILocation(line: 522, column: 5, scope: !827)
!827 = distinct !DILexicalBlock(scope: !823, file: !2, line: 521, column: 25)
!828 = !DILocation(line: 523, column: 5, scope: !827)
!829 = !DILocation(line: 525, column: 5, scope: !830)
!830 = distinct !DILexicalBlock(scope: !823, file: !2, line: 524, column: 11)
!831 = !DILocation(line: 526, column: 5, scope: !830)
!832 = !DILocation(line: 531, column: 4, scope: !833)
!833 = distinct !DILexicalBlock(scope: !771, file: !2, line: 530, column: 3)
!834 = !DILocation(line: 531, column: 12, scope: !833)
!835 = !DILocation(line: 533, column: 49, scope: !833)
!836 = !DILocation(line: 533, column: 10, scope: !833)
!837 = !DILocation(line: 533, column: 8, scope: !833)
!838 = !DILocation(line: 534, column: 4, scope: !833)
!839 = !DILocation(line: 536, column: 9, scope: !840)
!840 = distinct !DILexicalBlock(scope: !833, file: !2, line: 536, column: 8)
!841 = !DILocation(line: 536, column: 8, scope: !833)
!842 = !DILocation(line: 537, column: 5, scope: !843)
!843 = distinct !DILexicalBlock(scope: !840, file: !2, line: 536, column: 14)
!844 = !DILocation(line: 538, column: 4, scope: !843)
!845 = !DILocation(line: 538, column: 15, scope: !846)
!846 = distinct !DILexicalBlock(scope: !840, file: !2, line: 538, column: 15)
!847 = !DILocation(line: 538, column: 19, scope: !846)
!848 = !DILocation(line: 538, column: 15, scope: !840)
!849 = !DILocation(line: 539, column: 5, scope: !850)
!850 = distinct !DILexicalBlock(scope: !846, file: !2, line: 538, column: 25)
!851 = !DILocation(line: 540, column: 5, scope: !850)
!852 = !DILocalVariable(name: "addr6", scope: !853, file: !2, line: 545, type: !701)
!853 = distinct !DILexicalBlock(scope: !771, file: !2, line: 544, column: 3)
!854 = !DILocation(line: 545, column: 13, scope: !853)
!855 = !DILocalVariable(name: "addr6_test", scope: !853, file: !2, line: 546, type: !701)
!856 = !DILocation(line: 546, column: 13, scope: !853)
!857 = !DILocation(line: 548, column: 4, scope: !853)
!858 = !DILocation(line: 550, column: 39, scope: !853)
!859 = !DILocation(line: 550, column: 10, scope: !853)
!860 = !DILocation(line: 550, column: 8, scope: !853)
!861 = !DILocation(line: 552, column: 8, scope: !862)
!862 = distinct !DILexicalBlock(scope: !853, file: !2, line: 552, column: 8)
!863 = !DILocation(line: 552, column: 12, scope: !862)
!864 = !DILocation(line: 552, column: 8, scope: !853)
!865 = !DILocation(line: 553, column: 5, scope: !866)
!866 = distinct !DILexicalBlock(scope: !862, file: !2, line: 552, column: 17)
!867 = !DILocation(line: 554, column: 5, scope: !866)
!868 = !DILocation(line: 557, column: 4, scope: !853)
!869 = !DILocation(line: 558, column: 8, scope: !870)
!870 = distinct !DILexicalBlock(scope: !853, file: !2, line: 558, column: 8)
!871 = !DILocation(line: 558, column: 8, scope: !853)
!872 = !DILocation(line: 559, column: 5, scope: !873)
!873 = distinct !DILexicalBlock(scope: !870, file: !2, line: 558, column: 38)
!874 = !DILocation(line: 560, column: 4, scope: !873)
!875 = !DILocation(line: 561, column: 5, scope: !876)
!876 = distinct !DILexicalBlock(scope: !870, file: !2, line: 560, column: 11)
!877 = !DILocation(line: 562, column: 5, scope: !876)
!878 = !DILocation(line: 568, column: 6, scope: !879)
!879 = distinct !DILexicalBlock(scope: !880, file: !2, line: 568, column: 6)
!880 = distinct !DILexicalBlock(scope: !328, file: !2, line: 567, column: 2)
!881 = !DILocation(line: 568, column: 19, scope: !879)
!882 = !DILocation(line: 568, column: 6, scope: !880)
!883 = !DILocation(line: 569, column: 4, scope: !879)
!884 = !DILocation(line: 572, column: 2, scope: !328)
!885 = distinct !DISubprogram(name: "check_oauth", scope: !2, file: !2, line: 63, type: !886, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !19, retainedNodes: !291)
!886 = !DISubroutineType(types: !887)
!887 = !{!32}
!888 = !DILocalVariable(name: "server_name", scope: !885, file: !2, line: 65, type: !889)
!889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 264, elements: !87)
!890 = !DILocation(line: 65, column: 13, scope: !885)
!891 = !DILocalVariable(name: "i_encs", scope: !885, file: !2, line: 67, type: !289)
!892 = !DILocation(line: 67, column: 9, scope: !885)
!893 = !DILocalVariable(name: "long_term_key", scope: !885, file: !2, line: 69, type: !889)
!894 = !DILocation(line: 69, column: 13, scope: !885)
!895 = !DILocalVariable(name: "ltp_output_length", scope: !885, file: !2, line: 71, type: !289)
!896 = !DILocation(line: 71, column: 9, scope: !885)
!897 = !DILocalVariable(name: "base64encoded_ltp", scope: !885, file: !2, line: 73, type: !68)
!898 = !DILocation(line: 73, column: 14, scope: !885)
!899 = !DILocation(line: 73, column: 71, scope: !885)
!900 = !DILocation(line: 74, column: 20, scope: !885)
!901 = !DILocation(line: 74, column: 13, scope: !885)
!902 = !DILocation(line: 73, column: 34, scope: !885)
!903 = !DILocalVariable(name: "mac_key", scope: !885, file: !2, line: 77, type: !889)
!904 = !DILocation(line: 77, column: 13, scope: !885)
!905 = !DILocalVariable(name: "mac_key_length", scope: !885, file: !2, line: 78, type: !906)
!906 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !289)
!907 = !DILocation(line: 78, column: 15, scope: !885)
!908 = !DILocation(line: 78, column: 37, scope: !885)
!909 = !DILocation(line: 78, column: 30, scope: !885)
!910 = !DILocalVariable(name: "token_timestamp", scope: !885, file: !2, line: 79, type: !911)
!911 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!912 = !DILocation(line: 79, column: 17, scope: !885)
!913 = !DILocalVariable(name: "token_lifetime", scope: !885, file: !2, line: 80, type: !914)
!914 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!915 = !DILocation(line: 80, column: 17, scope: !885)
!916 = !DILocalVariable(name: "kid", scope: !885, file: !2, line: 82, type: !889)
!917 = !DILocation(line: 82, column: 13, scope: !885)
!918 = !DILocalVariable(name: "key_timestamp", scope: !885, file: !2, line: 83, type: !919)
!919 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !920)
!920 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_time_t", file: !921, line: 108, baseType: !60)
!921 = !DIFile(filename: "src/ns_turn_defs.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "126e9c9d0b914de7fdf6162f77453397")
!922 = !DILocation(line: 83, column: 20, scope: !885)
!923 = !DILocalVariable(name: "key_lifetime", scope: !885, file: !2, line: 84, type: !919)
!924 = !DILocation(line: 84, column: 20, scope: !885)
!925 = !DILocalVariable(name: "gcm_nonce", scope: !885, file: !2, line: 86, type: !926)
!926 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 104, elements: !147)
!927 = !DILocation(line: 86, column: 13, scope: !885)
!928 = !DILocation(line: 91, column: 16, scope: !929)
!929 = distinct !DILexicalBlock(scope: !930, file: !2, line: 91, column: 4)
!930 = distinct !DILexicalBlock(scope: !931, file: !2, line: 89, column: 3)
!931 = distinct !DILexicalBlock(scope: !885, file: !2, line: 88, column: 2)
!932 = !DILocation(line: 91, column: 9, scope: !929)
!933 = !DILocation(line: 91, column: 26, scope: !934)
!934 = distinct !DILexicalBlock(scope: !929, file: !2, line: 91, column: 4)
!935 = !DILocation(line: 91, column: 21, scope: !934)
!936 = !DILocation(line: 91, column: 4, scope: !929)
!937 = !DILocation(line: 93, column: 35, scope: !938)
!938 = distinct !DILexicalBlock(scope: !934, file: !2, line: 91, column: 45)
!939 = !DILocation(line: 93, column: 30, scope: !938)
!940 = !DILocation(line: 93, column: 5, scope: !938)
!941 = !DILocation(line: 95, column: 8, scope: !942)
!942 = distinct !DILexicalBlock(scope: !938, file: !2, line: 95, column: 8)
!943 = !DILocation(line: 95, column: 8, scope: !938)
!944 = !DILocation(line: 96, column: 6, scope: !942)
!945 = !DILocalVariable(name: "ot", scope: !938, file: !2, line: 98, type: !946)
!946 = !DIDerivedType(tag: DW_TAG_typedef, name: "oauth_token", file: !31, line: 253, baseType: !947)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_oauth_token", file: !31, line: 249, size: 3264, elements: !948)
!948 = !{!949}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "enc_block", scope: !947, file: !31, line: 250, baseType: !950, size: 3264)
!950 = !DIDerivedType(tag: DW_TAG_typedef, name: "oauth_encrypted_block", file: !31, line: 247, baseType: !951)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_oauth_encrypted_block", file: !31, line: 238, size: 3264, elements: !952)
!952 = !{!953, !954, !958, !959, !963, !964}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "nonce_length", scope: !951, file: !31, line: 239, baseType: !54, size: 16)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "nonce", scope: !951, file: !31, line: 240, baseType: !955, size: 2048, offset: 16)
!955 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 2048, elements: !956)
!956 = !{!957}
!957 = !DISubrange(count: 256)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "key_length", scope: !951, file: !31, line: 241, baseType: !54, size: 16, offset: 2064)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "mac_key", scope: !951, file: !31, line: 242, baseType: !960, size: 1024, offset: 2080)
!960 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 1024, elements: !961)
!961 = !{!962}
!962 = !DISubrange(count: 128)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !951, file: !31, line: 243, baseType: !66, size: 64, offset: 3136)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "lifetime", scope: !951, file: !31, line: 244, baseType: !60, size: 32, offset: 3200)
!965 = !DILocation(line: 98, column: 17, scope: !938)
!966 = !DILocation(line: 99, column: 5, scope: !938)
!967 = !DILocation(line: 100, column: 41, scope: !938)
!968 = !DILocation(line: 100, column: 31, scope: !938)
!969 = !DILocation(line: 100, column: 8, scope: !938)
!970 = !DILocation(line: 100, column: 18, scope: !938)
!971 = !DILocation(line: 100, column: 29, scope: !938)
!972 = !DILocation(line: 101, column: 5, scope: !938)
!973 = !DILocalVariable(name: "szdst", scope: !974, file: !2, line: 101, type: !289)
!974 = distinct !DILexicalBlock(scope: !975, file: !2, line: 101, column: 5)
!975 = distinct !DILexicalBlock(scope: !976, file: !2, line: 101, column: 5)
!976 = distinct !DILexicalBlock(scope: !977, file: !2, line: 101, column: 5)
!977 = distinct !DILexicalBlock(scope: !978, file: !2, line: 101, column: 5)
!978 = distinct !DILexicalBlock(scope: !938, file: !2, line: 101, column: 5)
!979 = !DILocation(line: 101, column: 5, scope: !974)
!980 = !DILocation(line: 101, column: 5, scope: !978)
!981 = !DILocation(line: 102, column: 8, scope: !938)
!982 = !DILocation(line: 102, column: 18, scope: !938)
!983 = !DILocation(line: 102, column: 28, scope: !938)
!984 = !DILocation(line: 103, column: 8, scope: !938)
!985 = !DILocation(line: 103, column: 18, scope: !938)
!986 = !DILocation(line: 103, column: 27, scope: !938)
!987 = !DILocalVariable(name: "dot", scope: !938, file: !2, line: 105, type: !946)
!988 = !DILocation(line: 105, column: 17, scope: !938)
!989 = !DILocation(line: 106, column: 5, scope: !938)
!990 = !DILocalVariable(name: "key", scope: !938, file: !2, line: 107, type: !991)
!991 = !DIDerivedType(tag: DW_TAG_typedef, name: "oauth_key", file: !31, line: 236, baseType: !992)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_oauth_key", file: !31, line: 223, size: 7616, elements: !993)
!993 = !{!994, !998, !1002, !1003, !1004, !1005, !1007, !1008, !1009, !1010}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "kid", scope: !992, file: !31, line: 224, baseType: !995, size: 1032)
!995 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1032, elements: !996)
!996 = !{!997}
!997 = !DISubrange(count: 129)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "ikm_key", scope: !992, file: !31, line: 225, baseType: !999, size: 2056, offset: 1032)
!999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !1000)
!1000 = !{!1001}
!1001 = !DISubrange(count: 257)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "ikm_key_size", scope: !992, file: !31, line: 226, baseType: !289, size: 64, offset: 3136)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !992, file: !31, line: 227, baseType: !920, size: 32, offset: 3200)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "lifetime", scope: !992, file: !31, line: 228, baseType: !920, size: 32, offset: 3232)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "as_rs_alg", scope: !992, file: !31, line: 229, baseType: !1006, size: 32, offset: 3264)
!1006 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENC_ALG", file: !31, line: 187, baseType: !40)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "as_rs_key", scope: !992, file: !31, line: 230, baseType: !999, size: 2056, offset: 3296)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "as_rs_key_size", scope: !992, file: !31, line: 231, baseType: !289, size: 64, offset: 5376)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "auth_key", scope: !992, file: !31, line: 232, baseType: !999, size: 2056, offset: 5440)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "auth_key_size", scope: !992, file: !31, line: 233, baseType: !289, size: 64, offset: 7552)
!1011 = !DILocation(line: 107, column: 15, scope: !938)
!1012 = !DILocation(line: 108, column: 5, scope: !938)
!1013 = !DILocalVariable(name: "okd", scope: !1014, file: !2, line: 111, type: !1015)
!1014 = distinct !DILexicalBlock(scope: !938, file: !2, line: 110, column: 5)
!1015 = !DIDerivedType(tag: DW_TAG_typedef, name: "oauth_key_data", file: !31, line: 221, baseType: !1016)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_oauth_key_data", file: !31, line: 212, size: 3840, elements: !1017)
!1017 = !{!1018, !1019, !1020, !1021, !1022, !1023}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "kid", scope: !1016, file: !31, line: 213, baseType: !995, size: 1032)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "ikm_key", scope: !1016, file: !31, line: 214, baseType: !999, size: 2056, offset: 1032)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "ikm_key_size", scope: !1016, file: !31, line: 215, baseType: !289, size: 64, offset: 3136)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !1016, file: !31, line: 216, baseType: !920, size: 32, offset: 3200)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "lifetime", scope: !1016, file: !31, line: 217, baseType: !920, size: 32, offset: 3232)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "as_rs_alg", scope: !1016, file: !31, line: 218, baseType: !1024, size: 520, offset: 3264)
!1024 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 520, elements: !1025)
!1025 = !{!1026}
!1026 = !DISubrange(count: 65)
!1027 = !DILocation(line: 111, column: 21, scope: !1014)
!1028 = !DILocation(line: 112, column: 6, scope: !1014)
!1029 = !DILocalVariable(name: "okdr", scope: !1030, file: !2, line: 115, type: !1031)
!1030 = distinct !DILexicalBlock(scope: !1014, file: !2, line: 114, column: 6)
!1031 = !DIDerivedType(tag: DW_TAG_typedef, name: "oauth_key_data_raw", file: !1032, line: 144, baseType: !1033)
!1032 = !DIFile(filename: "src/apps/common/apputils.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "5f4d9112d5c1617ebc273618c0760b4a")
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_oauth_key_data_raw", file: !1032, line: 135, size: 4800, elements: !1034)
!1034 = !{!1035, !1036, !1037, !1038, !1039, !1040}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "kid", scope: !1033, file: !1032, line: 136, baseType: !995, size: 1032)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "ikm_key", scope: !1033, file: !1032, line: 137, baseType: !999, size: 2056, offset: 1032)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !1033, file: !1032, line: 138, baseType: !66, size: 64, offset: 3136)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "lifetime", scope: !1033, file: !1032, line: 139, baseType: !60, size: 32, offset: 3200)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "as_rs_alg", scope: !1033, file: !1032, line: 140, baseType: !1024, size: 520, offset: 3232)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "realm", scope: !1033, file: !1032, line: 141, baseType: !1041, size: 1024, offset: 3752)
!1041 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1024, elements: !961)
!1042 = !DILocation(line: 115, column: 27, scope: !1030)
!1043 = !DILocation(line: 116, column: 8, scope: !1030)
!1044 = !DILocation(line: 118, column: 7, scope: !1030)
!1045 = !DILocalVariable(name: "szdst", scope: !1046, file: !2, line: 118, type: !289)
!1046 = distinct !DILexicalBlock(scope: !1047, file: !2, line: 118, column: 7)
!1047 = distinct !DILexicalBlock(scope: !1048, file: !2, line: 118, column: 7)
!1048 = distinct !DILexicalBlock(scope: !1049, file: !2, line: 118, column: 7)
!1049 = distinct !DILexicalBlock(scope: !1050, file: !2, line: 118, column: 7)
!1050 = distinct !DILexicalBlock(scope: !1030, file: !2, line: 118, column: 7)
!1051 = !DILocation(line: 118, column: 7, scope: !1046)
!1052 = !DILocation(line: 118, column: 7, scope: !1050)
!1053 = !DILocation(line: 119, column: 7, scope: !1030)
!1054 = !DILocation(line: 119, column: 7, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1056, file: !2, line: 119, column: 7)
!1056 = distinct !DILexicalBlock(scope: !1030, file: !2, line: 119, column: 7)
!1057 = !DILocation(line: 119, column: 7, scope: !1056)
!1058 = !DILocalVariable(name: "szdst", scope: !1059, file: !2, line: 119, type: !289)
!1059 = distinct !DILexicalBlock(scope: !1060, file: !2, line: 119, column: 7)
!1060 = distinct !DILexicalBlock(scope: !1061, file: !2, line: 119, column: 7)
!1061 = distinct !DILexicalBlock(scope: !1055, file: !2, line: 119, column: 7)
!1062 = !DILocation(line: 119, column: 7, scope: !1059)
!1063 = !DILocation(line: 119, column: 7, scope: !1061)
!1064 = !DILocation(line: 120, column: 7, scope: !1030)
!1065 = !DILocation(line: 120, column: 7, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1067, file: !2, line: 120, column: 7)
!1067 = distinct !DILexicalBlock(scope: !1030, file: !2, line: 120, column: 7)
!1068 = !DILocation(line: 120, column: 7, scope: !1067)
!1069 = !DILocalVariable(name: "szdst", scope: !1070, file: !2, line: 120, type: !289)
!1070 = distinct !DILexicalBlock(scope: !1071, file: !2, line: 120, column: 7)
!1071 = distinct !DILexicalBlock(scope: !1072, file: !2, line: 120, column: 7)
!1072 = distinct !DILexicalBlock(scope: !1066, file: !2, line: 120, column: 7)
!1073 = !DILocation(line: 120, column: 7, scope: !1070)
!1074 = !DILocation(line: 120, column: 7, scope: !1072)
!1075 = !DILocation(line: 121, column: 12, scope: !1030)
!1076 = !DILocation(line: 121, column: 22, scope: !1030)
!1077 = !DILocation(line: 122, column: 12, scope: !1030)
!1078 = !DILocation(line: 122, column: 21, scope: !1030)
!1079 = !DILocation(line: 124, column: 7, scope: !1030)
!1080 = !DILocalVariable(name: "err_msg", scope: !1030, file: !2, line: 126, type: !1081)
!1081 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8200, elements: !1082)
!1082 = !{!1083}
!1083 = !DISubrange(count: 1025)
!1084 = !DILocation(line: 126, column: 12, scope: !1030)
!1085 = !DILocalVariable(name: "err_msg_size", scope: !1030, file: !2, line: 127, type: !289)
!1086 = !DILocation(line: 127, column: 14, scope: !1030)
!1087 = !DILocation(line: 129, column: 46, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1030, file: !2, line: 129, column: 11)
!1089 = !DILocation(line: 130, column: 9, scope: !1088)
!1090 = !DILocation(line: 129, column: 11, scope: !1088)
!1091 = !DILocation(line: 130, column: 23, scope: !1088)
!1092 = !DILocation(line: 129, column: 11, scope: !1030)
!1093 = !DILocation(line: 131, column: 16, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1088, file: !2, line: 130, column: 28)
!1095 = !DILocation(line: 131, column: 32, scope: !1094)
!1096 = !DILocation(line: 131, column: 8, scope: !1094)
!1097 = !DILocation(line: 132, column: 8, scope: !1094)
!1098 = !DILocation(line: 137, column: 8, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !938, file: !2, line: 137, column: 8)
!1100 = !DILocation(line: 137, column: 8, scope: !938)
!1101 = !DILocation(line: 138, column: 34, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1099, file: !2, line: 137, column: 21)
!1103 = !DILocation(line: 138, column: 30, scope: !1102)
!1104 = !DILocation(line: 138, column: 48, scope: !1102)
!1105 = !DILocation(line: 138, column: 6, scope: !1102)
!1106 = !DILocation(line: 139, column: 33, scope: !1102)
!1107 = !DILocation(line: 139, column: 29, scope: !1102)
!1108 = !DILocation(line: 139, column: 46, scope: !1102)
!1109 = !DILocation(line: 139, column: 6, scope: !1102)
!1110 = !DILocation(line: 140, column: 5, scope: !1102)
!1111 = !DILocalVariable(name: "etoken", scope: !1112, file: !2, line: 143, type: !1113)
!1112 = distinct !DILexicalBlock(scope: !938, file: !2, line: 142, column: 5)
!1113 = !DIDerivedType(tag: DW_TAG_typedef, name: "encoded_oauth_token", file: !31, line: 262, baseType: !1114)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_encoded_oauth_token", file: !31, line: 257, size: 8256, elements: !1115)
!1115 = !{!1116, !1120}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !1114, file: !31, line: 258, baseType: !1117, size: 8192)
!1117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1118)
!1118 = !{!1119}
!1119 = !DISubrange(count: 1024)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1114, file: !31, line: 259, baseType: !289, size: 64, offset: 8192)
!1121 = !DILocation(line: 143, column: 26, scope: !1112)
!1122 = !DILocation(line: 144, column: 6, scope: !1112)
!1123 = !DILocation(line: 146, column: 47, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1112, file: !2, line: 146, column: 10)
!1125 = !DILocation(line: 147, column: 35, scope: !1124)
!1126 = !DILocation(line: 146, column: 10, scope: !1124)
!1127 = !DILocation(line: 147, column: 46, scope: !1124)
!1128 = !DILocation(line: 146, column: 10, scope: !1112)
!1129 = !DILocation(line: 148, column: 15, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1124, file: !2, line: 147, column: 51)
!1131 = !DILocation(line: 148, column: 7, scope: !1130)
!1132 = !DILocation(line: 150, column: 7, scope: !1130)
!1133 = !DILocation(line: 153, column: 9, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1112, file: !2, line: 153, column: 9)
!1135 = !DILocation(line: 153, column: 9, scope: !1112)
!1136 = !DILocation(line: 154, column: 46, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1134, file: !2, line: 153, column: 22)
!1138 = !DILocation(line: 154, column: 39, scope: !1137)
!1139 = !DILocation(line: 154, column: 59, scope: !1137)
!1140 = !DILocation(line: 154, column: 7, scope: !1137)
!1141 = !DILocation(line: 155, column: 6, scope: !1137)
!1142 = !DILocation(line: 157, column: 47, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1112, file: !2, line: 157, column: 10)
!1144 = !DILocation(line: 157, column: 10, scope: !1143)
!1145 = !DILocation(line: 158, column: 20, scope: !1143)
!1146 = !DILocation(line: 157, column: 10, scope: !1112)
!1147 = !DILocation(line: 159, column: 15, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1143, file: !2, line: 158, column: 25)
!1149 = !DILocation(line: 159, column: 7, scope: !1148)
!1150 = !DILocation(line: 161, column: 7, scope: !1148)
!1151 = !DILocation(line: 165, column: 27, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !938, file: !2, line: 165, column: 9)
!1153 = !DILocation(line: 165, column: 37, scope: !1152)
!1154 = !DILocation(line: 165, column: 24, scope: !1152)
!1155 = !DILocation(line: 166, column: 19, scope: !1152)
!1156 = !DILocation(line: 166, column: 29, scope: !1152)
!1157 = !DILocation(line: 166, column: 15, scope: !1152)
!1158 = !DILocation(line: 165, column: 9, scope: !1152)
!1159 = !DILocation(line: 165, column: 9, scope: !938)
!1160 = !DILocation(line: 167, column: 14, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1152, file: !2, line: 166, column: 39)
!1162 = !DILocation(line: 168, column: 34, scope: !1161)
!1163 = !DILocation(line: 168, column: 44, scope: !1161)
!1164 = !DILocation(line: 168, column: 30, scope: !1161)
!1165 = !DILocation(line: 169, column: 19, scope: !1161)
!1166 = !DILocation(line: 169, column: 29, scope: !1161)
!1167 = !DILocation(line: 169, column: 16, scope: !1161)
!1168 = !DILocation(line: 167, column: 6, scope: !1161)
!1169 = !DILocation(line: 170, column: 6, scope: !1161)
!1170 = !DILocation(line: 173, column: 12, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !938, file: !2, line: 173, column: 9)
!1172 = !DILocation(line: 173, column: 22, scope: !1171)
!1173 = !DILocation(line: 173, column: 9, scope: !1171)
!1174 = !DILocation(line: 173, column: 40, scope: !1171)
!1175 = !DILocation(line: 173, column: 50, scope: !1171)
!1176 = !DILocation(line: 173, column: 36, scope: !1171)
!1177 = !DILocation(line: 173, column: 33, scope: !1171)
!1178 = !DILocation(line: 173, column: 9, scope: !938)
!1179 = !DILocation(line: 174, column: 14, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1171, file: !2, line: 173, column: 62)
!1181 = !DILocation(line: 175, column: 32, scope: !1180)
!1182 = !DILocation(line: 175, column: 42, scope: !1180)
!1183 = !DILocation(line: 175, column: 22, scope: !1180)
!1184 = !DILocation(line: 176, column: 17, scope: !1180)
!1185 = !DILocation(line: 176, column: 27, scope: !1180)
!1186 = !DILocation(line: 176, column: 8, scope: !1180)
!1187 = !DILocation(line: 174, column: 6, scope: !1180)
!1188 = !DILocation(line: 177, column: 6, scope: !1180)
!1189 = !DILocation(line: 179, column: 12, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !938, file: !2, line: 179, column: 9)
!1191 = !DILocation(line: 179, column: 22, scope: !1190)
!1192 = !DILocation(line: 179, column: 39, scope: !1190)
!1193 = !DILocation(line: 179, column: 49, scope: !1190)
!1194 = !DILocation(line: 179, column: 32, scope: !1190)
!1195 = !DILocation(line: 179, column: 9, scope: !938)
!1196 = !DILocation(line: 180, column: 14, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1190, file: !2, line: 179, column: 60)
!1198 = !DILocation(line: 182, column: 33, scope: !1197)
!1199 = !DILocation(line: 182, column: 43, scope: !1197)
!1200 = !DILocation(line: 183, column: 32, scope: !1197)
!1201 = !DILocation(line: 183, column: 42, scope: !1197)
!1202 = !DILocation(line: 180, column: 6, scope: !1197)
!1203 = !DILocation(line: 184, column: 6, scope: !1197)
!1204 = !DILocation(line: 186, column: 12, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !938, file: !2, line: 186, column: 9)
!1206 = !DILocation(line: 186, column: 22, scope: !1205)
!1207 = !DILocation(line: 186, column: 38, scope: !1205)
!1208 = !DILocation(line: 186, column: 48, scope: !1205)
!1209 = !DILocation(line: 186, column: 31, scope: !1205)
!1210 = !DILocation(line: 186, column: 9, scope: !938)
!1211 = !DILocation(line: 187, column: 14, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1205, file: !2, line: 186, column: 58)
!1213 = !DILocation(line: 189, column: 28, scope: !1212)
!1214 = !DILocation(line: 189, column: 38, scope: !1212)
!1215 = !DILocation(line: 189, column: 8, scope: !1212)
!1216 = !DILocation(line: 190, column: 27, scope: !1212)
!1217 = !DILocation(line: 190, column: 37, scope: !1212)
!1218 = !DILocation(line: 190, column: 8, scope: !1212)
!1219 = !DILocation(line: 187, column: 6, scope: !1212)
!1220 = !DILocation(line: 191, column: 6, scope: !1212)
!1221 = !DILocation(line: 194, column: 5, scope: !938)
!1222 = !DILocation(line: 195, column: 4, scope: !938)
!1223 = !DILocation(line: 91, column: 35, scope: !934)
!1224 = !DILocation(line: 91, column: 4, scope: !934)
!1225 = distinct !{!1225, !936, !1226, !324}
!1226 = !DILocation(line: 195, column: 4, scope: !929)
!1227 = !DILocation(line: 199, column: 2, scope: !885)
!1228 = !DILocation(line: 200, column: 1, scope: !885)
