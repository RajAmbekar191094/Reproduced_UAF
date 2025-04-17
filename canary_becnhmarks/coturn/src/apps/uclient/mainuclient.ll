; ModuleID = '/home/raj/coturn/src/apps/uclient/mainuclient.c'
source_filename = "/home/raj/coturn/src/apps/uclient/mainuclient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._oauth_key_data_raw = type { [129 x i8], [257 x i8], i64, i32, [65 x i8], [128 x i8] }
%struct._oauth_key = type { [129 x i8], [257 x i8], i64, i32, i32, i32, [257 x i8], i64, [257 x i8], i64 }
%union.ioa_addr = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct._oauth_key_data = type { [129 x i8], [257 x i8], i64, i32, i32, [65 x i8] }

@clmessage_length = dso_local global i32 100, align 4, !dbg !0
@do_not_use_channel = dso_local global i32 0, align 4, !dbg !48
@c2c = dso_local global i32 0, align 4, !dbg !51
@clnet_verbose = dso_local global i32 0, align 4, !dbg !53
@use_tcp = dso_local global i32 0, align 4, !dbg !55
@use_sctp = dso_local global i32 0, align 4, !dbg !57
@use_secure = dso_local global i32 0, align 4, !dbg !59
@hang_on = dso_local global i32 0, align 4, !dbg !61
@no_rtcp = dso_local global i32 0, align 4, !dbg !63
@default_address_family = dso_local global i32 0, align 4, !dbg !65
@dont_fragment = dso_local global i32 0, align 4, !dbg !67
@g_auth_secret = dso_local global [1025 x i8] zeroinitializer, align 16, !dbg !69
@g_use_auth_secret_with_timestamp = dso_local global i32 0, align 4, !dbg !74
@use_fingerprints = dso_local global i32 1, align 4, !dbg !76
@cert_file = dso_local global [1025 x i8] zeroinitializer, align 16, !dbg !78
@pkey_file = dso_local global [1025 x i8] zeroinitializer, align 16, !dbg !80
@root_tls_ctx_num = dso_local global i32 0, align 4, !dbg !82
@relay_transport = dso_local global i8 17, align 1, !dbg !84
@client_ifname = dso_local global [1025 x i8] zeroinitializer, align 16, !dbg !86
@passive_tcp = dso_local global i32 0, align 4, !dbg !89
@mandatory_channel_padding = dso_local global i32 0, align 4, !dbg !91
@negative_test = dso_local global i32 0, align 4, !dbg !93
@negative_protocol_test = dso_local global i32 0, align 4, !dbg !95
@dos = dso_local global i32 0, align 4, !dbg !97
@random_disconnect = dso_local global i32 0, align 4, !dbg !99
@shatype = dso_local global i32 0, align 4, !dbg !101
@mobility = dso_local global i32 0, align 4, !dbg !104
@no_permissions = dso_local global i32 0, align 4, !dbg !106
@extra_requests = dso_local global i32 0, align 4, !dbg !108
@origin = dso_local global [128 x i8] zeroinitializer, align 16, !dbg !110
@bps = dso_local global i64 0, align 8, !dbg !115
@dual_allocation = dso_local global i32 0, align 4, !dbg !117
@oauth = dso_local global i32 0, align 4, !dbg !119
@.str = private unnamed_addr constant [7 x i8] c"stdout\00", align 1, !dbg !121
@.str.1 = private unnamed_addr constant [64 x i8] c"a:d:p:l:n:L:m:e:r:u:w:i:k:z:W:C:E:F:o:bZvsyhcxXgtTSAPDNOUMRIGBJ\00", align 1, !dbg !126
@okdr_array = internal global [3 x %struct._oauth_key_data_raw] [%struct._oauth_key_data_raw { [129 x i8] c"north\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [257 x i8] c"MDEyMzQ1Njc4OTAxMjM0NTY3ODkwMTIzNDU2Nzg5MDEK\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 0, i32 0, [65 x i8] c"A256GCM\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"crinna.org\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct._oauth_key_data_raw { [129 x i8] c"union\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [257 x i8] c"MTIzNDU2Nzg5MDEyMzQ1Ngo=\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 0, i32 0, [65 x i8] c"A128GCM\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"north.gov\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct._oauth_key_data_raw { [129 x i8] c"oldempire\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [257 x i8] c"MTIzNDU2Nzg5MDEyMzQ1Njc4OTAxMjM0NTY3ODkwMTIK\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 0, i32 0, [65 x i8] c"A256GCM\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] zeroinitializer }], align 16, !dbg !281
@okey_array = dso_local global [3 x %struct._oauth_key] zeroinitializer, align 16, !dbg !254
@stderr = external global ptr, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1, !dbg !131
@optarg = external global ptr, align 8
@cipher_suite = internal global [1025 x i8] zeroinitializer, align 16, !dbg !299
@.str.3 = private unnamed_addr constant [26 x i8] c"ERROR: file %s not found\0A\00", align 1, !dbg !136
@ca_cert_file = internal global [1025 x i8] zeroinitializer, align 16, !dbg !301
@RTP_PACKET_INTERVAL = external global i32, align 4
@g_uname = dso_local global [513 x i8] zeroinitializer, align 16, !dbg !234
@g_upwd = dso_local global [257 x i8] zeroinitializer, align 16, !dbg !239
@Usage = internal global [2175 x i8] c"Usage: uclient [flags] [options] turn-server-ip-address\0AFlags:\0A\09-t\09TCP (default - UDP).\0A\09-b\09SCTP (default - UDP).\0A\09-T\09TCP relay transport (default - UDP). Implies options -t, -y, -c, and ignores \0A\09\09options -s, -e, -r and -g. Can be used together with -b\0A\09-P\09Passive TCP (RFC6062 with active peer). Implies -T.\0A\09-S\09Secure connection: TLS for TCP, DTLS for UDP.\0A\09-U\09Secure connection with eNULL cipher.\0A\09-v\09Verbose.\0A\09-s\09Use send method.\0A\09-y\09Use client-to-client connections.\0A\09-h\09Hang on indefinitely after the last sent packet.\0A\09-c\09No rtcp connections.\0A\09-x\09IPv6 relay address requested.\0A\09-X\09IPv4 relay address explicitly requested.\0A\09-g\09Include DONT_FRAGMENT option.\0A\09-D\09Mandatory channel padding (like in pjnath).\0A\09-N\09Negative tests (some limited cases only).\0A\09-R\09Negative protocol tests.\0A\09-O\09DOS attack mode (quick connect and exit).\0A\09-M\09ICE Mobility engaged.\0A\09-I\09Do not set permissions on TURN relay endpoints\0A\09\09(for testing the non-standard server relay functionality).\0A\09-G\09Generate extra requests (create permissions, channel bind).\0A\09-B\09Random disconnect after a few initial packets.\0A\09-Z\09Dual allocation (implies -c).\0A\09-J\09Use oAuth with default test keys kid='north', 'union' or 'oldempire'.\0AOptions:\0A\09-l\09Message length (Default: 100 Bytes).\0A\09-i\09Certificate file (for secure connections only, optional).\0A\09-k\09Private key file (for secure connections only).\0A\09-E\09CA file for server certificate verification, \0A\09\09if the server certificate to be verified.\0A\09-p\09TURN server port (Default: 3478 unsecure, 5349 secure).\0A\09-n\09Number of messages to send (Default: 5).\0A\09-d\09Local interface device (optional).\0A\09-L\09Local address.\0A\09-m\09Number of clients (default is 1).\0A\09-e\09Peer address.\0A\09-r\09Peer port (default 3480).\0A\09-z\09Per-session packet interval in milliseconds (default is 20 ms).\0A\09-u\09STUN/TURN user name.\0A\09-w\09STUN/TURN user password.\0A\09-W\09TURN REST API \22plain text\22 secret.\0A\09-C\09TURN REST API timestamp/username separator symbol (character). The default value is ':'.\0A\09-F\09<cipher-suite> Cipher suite for TLS/DTLS. Default value is DEFAULT.\0A\09-o\09<origin> - the ORIGIN STUN attribute value.\0A\09-a\09<bytes-per-second> Bandwidth for the bandwidth request in ALLOCATE. The default value is zero.\0A\00", align 16, !dbg !303
@.str.4 = private unnamed_addr constant [8 x i8] c"%lu%c%s\00", align 1, !dbg !141
@.str.5 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1, !dbg !146
@.str.6 = private unnamed_addr constant [36 x i8] c"Message length was corrected to %d\0A\00", align 1, !dbg !148
@optind = external global i32, align 4
@peer_addr = dso_local global %union.ioa_addr zeroinitializer, align 4, !dbg !177
@.str.7 = private unnamed_addr constant [4 x i8] c"ALL\00", align 1, !dbg !153
@.str.8 = private unnamed_addr constant [6 x i8] c"eNULL\00", align 1, !dbg !155
@root_tls_ctx = dso_local global [32 x ptr] zeroinitializer, align 16, !dbg !245
@.str.9 = private unnamed_addr constant [31 x i8] c"\0AERROR: no certificate found!\0A\00", align 1, !dbg !160
@.str.10 = private unnamed_addr constant [31 x i8] c"\0AERROR: no private key found!\0A\00", align 1, !dbg !165
@.str.11 = private unnamed_addr constant [30 x i8] c"\0AERROR: invalid private key!\0A\00", align 1, !dbg !167
@.str.12 = private unnamed_addr constant [37 x i8] c"ERROR: cannot load CA from file: %s\0A\00", align 1, !dbg !172

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 !dbg !316 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [256 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [129 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca [3 x %struct._oauth_key_data], align 16
  %16 = alloca [1025 x i8], align 16
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca ptr, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca ptr, align 8
  %29 = alloca i64, align 8
  %30 = alloca ptr, align 8
  %31 = alloca i64, align 8
  %32 = alloca [1025 x i8], align 16
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca [128 x i8], align 16
  %36 = alloca i32, align 4
  %37 = alloca i64, align 8
  %38 = alloca ptr, align 8
  %39 = alloca i32, align 4
  %40 = alloca ptr, align 8
  %41 = alloca i32, align 4
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !321, metadata !DIExpression()), !dbg !322
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !323, metadata !DIExpression()), !dbg !324
  call void @llvm.dbg.declare(metadata ptr %6, metadata !325, metadata !DIExpression()), !dbg !326
  store i32 0, ptr %6, align 4, !dbg !326
  call void @llvm.dbg.declare(metadata ptr %7, metadata !327, metadata !DIExpression()), !dbg !328
  store i32 5, ptr %7, align 4, !dbg !328
  call void @llvm.dbg.declare(metadata ptr %8, metadata !329, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.declare(metadata ptr %9, metadata !334, metadata !DIExpression()), !dbg !335
  call void @llvm.dbg.declare(metadata ptr %10, metadata !336, metadata !DIExpression()), !dbg !337
  store i32 1, ptr %10, align 4, !dbg !337
  call void @llvm.dbg.declare(metadata ptr %11, metadata !338, metadata !DIExpression()), !dbg !339
  call void @llvm.memset.p0.i64(ptr align 16 %11, i8 0, i64 129, i1 false), !dbg !339
  call void @llvm.dbg.declare(metadata ptr %12, metadata !340, metadata !DIExpression()), !dbg !341
  store i32 3480, ptr %12, align 4, !dbg !341
  call void @llvm.dbg.declare(metadata ptr %13, metadata !342, metadata !DIExpression()), !dbg !343
  store i8 58, ptr %13, align 1, !dbg !343
  call void @llvm.dbg.declare(metadata ptr %14, metadata !344, metadata !DIExpression()), !dbg !345
  store i32 0, ptr %14, align 4, !dbg !345
  call void @set_logfile(ptr noundef @.str), !dbg !346
  call void @set_execdir(), !dbg !347
  %42 = call i64 @set_system_parameters(i32 noundef 0), !dbg !348
  %43 = getelementptr inbounds [256 x i8], ptr %8, i64 0, i64 0, !dbg !349
  call void @llvm.memset.p0.i64(ptr align 16 %43, i8 0, i64 256, i1 false), !dbg !349
  br label %44, !dbg !350

44:                                               ; preds = %313, %2
  %45 = load i32, ptr %4, align 4, !dbg !351
  %46 = load ptr, ptr %5, align 8, !dbg !352
  %47 = call i32 @getopt(i32 noundef %45, ptr noundef %46, ptr noundef @.str.1) #7, !dbg !353
  store i32 %47, ptr %9, align 4, !dbg !354
  %48 = icmp ne i32 %47, -1, !dbg !355
  br i1 %48, label %49, label %314, !dbg !350

49:                                               ; preds = %44
  %50 = load i32, ptr %9, align 4, !dbg !356
  switch i32 %50, label %310 [
    i32 74, label %51
    i32 97, label %85
    i32 111, label %88
    i32 66, label %101
    i32 71, label %102
    i32 70, label %103
    i32 73, label %116
    i32 77, label %117
    i32 69, label %118
    i32 79, label %140
    i32 67, label %141
    i32 68, label %144
    i32 78, label %145
    i32 82, label %146
    i32 122, label %147
    i32 90, label %150
    i32 117, label %151
    i32 119, label %164
    i32 103, label %177
    i32 100, label %178
    i32 120, label %191
    i32 88, label %192
    i32 108, label %193
    i32 115, label %196
    i32 110, label %197
    i32 112, label %200
    i32 76, label %203
    i32 101, label %219
    i32 114, label %235
    i32 118, label %238
    i32 104, label %239
    i32 99, label %240
    i32 109, label %241
    i32 121, label %244
    i32 116, label %245
    i32 98, label %246
    i32 80, label %247
    i32 84, label %248
    i32 85, label %249
    i32 83, label %250
    i32 87, label %251
    i32 105, label %264
    i32 107, label %287
  ], !dbg !358

51:                                               ; preds = %49
  store i32 1, ptr @oauth, align 4, !dbg !359
  call void @llvm.dbg.declare(metadata ptr %15, metadata !362, metadata !DIExpression()), !dbg !373
  %52 = getelementptr inbounds [3 x %struct._oauth_key_data], ptr %15, i64 0, i64 0, !dbg !374
  call void @convert_oauth_key_data_raw(ptr noundef @okdr_array, ptr noundef %52), !dbg !375
  %53 = getelementptr inbounds [3 x %struct._oauth_key_data], ptr %15, i64 0, i64 1, !dbg !376
  call void @convert_oauth_key_data_raw(ptr noundef getelementptr inbounds ([3 x %struct._oauth_key_data_raw], ptr @okdr_array, i64 0, i64 1), ptr noundef %53), !dbg !377
  %54 = getelementptr inbounds [3 x %struct._oauth_key_data], ptr %15, i64 0, i64 2, !dbg !378
  call void @convert_oauth_key_data_raw(ptr noundef getelementptr inbounds ([3 x %struct._oauth_key_data_raw], ptr @okdr_array, i64 0, i64 2), ptr noundef %54), !dbg !379
  call void @llvm.dbg.declare(metadata ptr %16, metadata !380, metadata !DIExpression()), !dbg !381
  call void @llvm.memset.p0.i64(ptr align 16 %16, i8 0, i64 1025, i1 false), !dbg !381
  call void @llvm.dbg.declare(metadata ptr %17, metadata !382, metadata !DIExpression()), !dbg !383
  store i64 1024, ptr %17, align 8, !dbg !383
  %55 = getelementptr inbounds [3 x %struct._oauth_key_data], ptr %15, i64 0, i64 0, !dbg !384
  %56 = getelementptr inbounds [1025 x i8], ptr %16, i64 0, i64 0, !dbg !386
  %57 = load i64, ptr %17, align 8, !dbg !387
  %58 = call i32 @convert_oauth_key_data(ptr noundef %55, ptr noundef @okey_array, ptr noundef %56, i64 noundef %57), !dbg !388
  %59 = icmp slt i32 %58, 0, !dbg !389
  br i1 %59, label %60, label %64, !dbg !390

60:                                               ; preds = %51
  %61 = load ptr, ptr @stderr, align 8, !dbg !391
  %62 = getelementptr inbounds [1025 x i8], ptr %16, i64 0, i64 0, !dbg !393
  %63 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %61, ptr noundef @.str.2, ptr noundef %62), !dbg !394
  call void @exit(i32 noundef -1) #8, !dbg !395
  unreachable, !dbg !395

64:                                               ; preds = %51
  %65 = getelementptr inbounds [3 x %struct._oauth_key_data], ptr %15, i64 0, i64 1, !dbg !396
  %66 = getelementptr inbounds [1025 x i8], ptr %16, i64 0, i64 0, !dbg !398
  %67 = load i64, ptr %17, align 8, !dbg !399
  %68 = call i32 @convert_oauth_key_data(ptr noundef %65, ptr noundef getelementptr inbounds ([3 x %struct._oauth_key], ptr @okey_array, i64 0, i64 1), ptr noundef %66, i64 noundef %67), !dbg !400
  %69 = icmp slt i32 %68, 0, !dbg !401
  br i1 %69, label %70, label %74, !dbg !402

70:                                               ; preds = %64
  %71 = load ptr, ptr @stderr, align 8, !dbg !403
  %72 = getelementptr inbounds [1025 x i8], ptr %16, i64 0, i64 0, !dbg !405
  %73 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %71, ptr noundef @.str.2, ptr noundef %72), !dbg !406
  call void @exit(i32 noundef -1) #8, !dbg !407
  unreachable, !dbg !407

74:                                               ; preds = %64
  %75 = getelementptr inbounds [3 x %struct._oauth_key_data], ptr %15, i64 0, i64 2, !dbg !408
  %76 = getelementptr inbounds [1025 x i8], ptr %16, i64 0, i64 0, !dbg !410
  %77 = load i64, ptr %17, align 8, !dbg !411
  %78 = call i32 @convert_oauth_key_data(ptr noundef %75, ptr noundef getelementptr inbounds ([3 x %struct._oauth_key], ptr @okey_array, i64 0, i64 2), ptr noundef %76, i64 noundef %77), !dbg !412
  %79 = icmp slt i32 %78, 0, !dbg !413
  br i1 %79, label %80, label %84, !dbg !414

80:                                               ; preds = %74
  %81 = load ptr, ptr @stderr, align 8, !dbg !415
  %82 = getelementptr inbounds [1025 x i8], ptr %16, i64 0, i64 0, !dbg !417
  %83 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %81, ptr noundef @.str.2, ptr noundef %82), !dbg !418
  call void @exit(i32 noundef -1) #8, !dbg !419
  unreachable, !dbg !419

84:                                               ; preds = %74
  br label %313, !dbg !420

85:                                               ; preds = %49
  %86 = load ptr, ptr @optarg, align 8, !dbg !421
  %87 = call i64 @strtoul(ptr noundef %86, ptr noundef null, i32 noundef 10) #7, !dbg !422
  store i64 %87, ptr @bps, align 8, !dbg !423
  br label %313, !dbg !424

88:                                               ; preds = %49
  br label %89, !dbg !425

89:                                               ; preds = %88
  %90 = load ptr, ptr @optarg, align 8, !dbg !426
  %91 = icmp ne ptr @origin, %90, !dbg !426
  br i1 %91, label %92, label %99, !dbg !429

92:                                               ; preds = %89
  call void @llvm.dbg.declare(metadata ptr %18, metadata !430, metadata !DIExpression()), !dbg !434
  store i64 128, ptr %18, align 8, !dbg !434
  %93 = load ptr, ptr @optarg, align 8, !dbg !434
  %94 = load i64, ptr %18, align 8, !dbg !434
  %95 = call ptr @strncpy(ptr noundef @origin, ptr noundef %93, i64 noundef %94) #7, !dbg !434
  %96 = load i64, ptr %18, align 8, !dbg !434
  %97 = sub i64 %96, 1, !dbg !434
  %98 = getelementptr inbounds i8, ptr @origin, i64 %97, !dbg !434
  store i8 0, ptr %98, align 1, !dbg !434
  br label %99, !dbg !435

99:                                               ; preds = %92, %89
  br label %100, !dbg !429

100:                                              ; preds = %99
  br label %313, !dbg !436

101:                                              ; preds = %49
  store i32 1, ptr @random_disconnect, align 4, !dbg !437
  br label %313, !dbg !438

102:                                              ; preds = %49
  store i32 1, ptr @extra_requests, align 4, !dbg !439
  br label %313, !dbg !440

103:                                              ; preds = %49
  br label %104, !dbg !441

104:                                              ; preds = %103
  %105 = load ptr, ptr @optarg, align 8, !dbg !442
  %106 = icmp ne ptr @cipher_suite, %105, !dbg !442
  br i1 %106, label %107, label %114, !dbg !445

107:                                              ; preds = %104
  call void @llvm.dbg.declare(metadata ptr %19, metadata !446, metadata !DIExpression()), !dbg !450
  store i64 1025, ptr %19, align 8, !dbg !450
  %108 = load ptr, ptr @optarg, align 8, !dbg !450
  %109 = load i64, ptr %19, align 8, !dbg !450
  %110 = call ptr @strncpy(ptr noundef @cipher_suite, ptr noundef %108, i64 noundef %109) #7, !dbg !450
  %111 = load i64, ptr %19, align 8, !dbg !450
  %112 = sub i64 %111, 1, !dbg !450
  %113 = getelementptr inbounds i8, ptr @cipher_suite, i64 %112, !dbg !450
  store i8 0, ptr %113, align 1, !dbg !450
  br label %114, !dbg !451

114:                                              ; preds = %107, %104
  br label %115, !dbg !445

115:                                              ; preds = %114
  br label %313, !dbg !452

116:                                              ; preds = %49
  store i32 1, ptr @no_permissions, align 4, !dbg !453
  br label %313, !dbg !454

117:                                              ; preds = %49
  store i32 1, ptr @mobility, align 4, !dbg !455
  br label %313, !dbg !456

118:                                              ; preds = %49
  call void @llvm.dbg.declare(metadata ptr %20, metadata !457, metadata !DIExpression()), !dbg !459
  %119 = load ptr, ptr @optarg, align 8, !dbg !460
  %120 = call ptr @find_config_file(ptr noundef %119, i32 noundef 1), !dbg !461
  store ptr %120, ptr %20, align 8, !dbg !459
  %121 = load ptr, ptr %20, align 8, !dbg !462
  %122 = icmp ne ptr %121, null, !dbg !462
  br i1 %122, label %127, label %123, !dbg !464

123:                                              ; preds = %118
  %124 = load ptr, ptr @stderr, align 8, !dbg !465
  %125 = load ptr, ptr @optarg, align 8, !dbg !467
  %126 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %124, ptr noundef @.str.3, ptr noundef %125), !dbg !468
  call void @exit(i32 noundef -1) #8, !dbg !469
  unreachable, !dbg !469

127:                                              ; preds = %118
  br label %128, !dbg !470

128:                                              ; preds = %127
  %129 = load ptr, ptr %20, align 8, !dbg !471
  %130 = icmp ne ptr @ca_cert_file, %129, !dbg !471
  br i1 %130, label %131, label %138, !dbg !474

131:                                              ; preds = %128
  call void @llvm.dbg.declare(metadata ptr %21, metadata !475, metadata !DIExpression()), !dbg !479
  store i64 1025, ptr %21, align 8, !dbg !479
  %132 = load ptr, ptr %20, align 8, !dbg !479
  %133 = load i64, ptr %21, align 8, !dbg !479
  %134 = call ptr @strncpy(ptr noundef @ca_cert_file, ptr noundef %132, i64 noundef %133) #7, !dbg !479
  %135 = load i64, ptr %21, align 8, !dbg !479
  %136 = sub i64 %135, 1, !dbg !479
  %137 = getelementptr inbounds i8, ptr @ca_cert_file, i64 %136, !dbg !479
  store i8 0, ptr %137, align 1, !dbg !479
  br label %138, !dbg !480

138:                                              ; preds = %131, %128
  br label %139, !dbg !474

139:                                              ; preds = %138
  br label %313, !dbg !481

140:                                              ; preds = %49
  store i32 1, ptr @dos, align 4, !dbg !482
  br label %313, !dbg !483

141:                                              ; preds = %49
  %142 = load ptr, ptr @optarg, align 8, !dbg !484
  %143 = load i8, ptr %142, align 1, !dbg !485
  store i8 %143, ptr %13, align 1, !dbg !486
  br label %313, !dbg !487

144:                                              ; preds = %49
  store i32 1, ptr @mandatory_channel_padding, align 4, !dbg !488
  br label %313, !dbg !489

145:                                              ; preds = %49
  store i32 1, ptr @negative_test, align 4, !dbg !490
  br label %313, !dbg !491

146:                                              ; preds = %49
  store i32 1, ptr @negative_protocol_test, align 4, !dbg !492
  br label %313, !dbg !493

147:                                              ; preds = %49
  %148 = load ptr, ptr @optarg, align 8, !dbg !494
  %149 = call i32 @atoi(ptr noundef %148) #9, !dbg !495
  store i32 %149, ptr @RTP_PACKET_INTERVAL, align 4, !dbg !496
  br label %313, !dbg !497

150:                                              ; preds = %49
  store i32 1, ptr @dual_allocation, align 4, !dbg !498
  br label %313, !dbg !499

151:                                              ; preds = %49
  br label %152, !dbg !500

152:                                              ; preds = %151
  %153 = load ptr, ptr @optarg, align 8, !dbg !501
  %154 = icmp ne ptr @g_uname, %153, !dbg !501
  br i1 %154, label %155, label %162, !dbg !504

155:                                              ; preds = %152
  call void @llvm.dbg.declare(metadata ptr %22, metadata !505, metadata !DIExpression()), !dbg !509
  store i64 513, ptr %22, align 8, !dbg !509
  %156 = load ptr, ptr @optarg, align 8, !dbg !509
  %157 = load i64, ptr %22, align 8, !dbg !509
  %158 = call ptr @strncpy(ptr noundef @g_uname, ptr noundef %156, i64 noundef %157) #7, !dbg !509
  %159 = load i64, ptr %22, align 8, !dbg !509
  %160 = sub i64 %159, 1, !dbg !509
  %161 = getelementptr inbounds i8, ptr @g_uname, i64 %160, !dbg !509
  store i8 0, ptr %161, align 1, !dbg !509
  br label %162, !dbg !510

162:                                              ; preds = %155, %152
  br label %163, !dbg !504

163:                                              ; preds = %162
  br label %313, !dbg !511

164:                                              ; preds = %49
  br label %165, !dbg !512

165:                                              ; preds = %164
  %166 = load ptr, ptr @optarg, align 8, !dbg !513
  %167 = icmp ne ptr @g_upwd, %166, !dbg !513
  br i1 %167, label %168, label %175, !dbg !516

168:                                              ; preds = %165
  call void @llvm.dbg.declare(metadata ptr %23, metadata !517, metadata !DIExpression()), !dbg !521
  store i64 257, ptr %23, align 8, !dbg !521
  %169 = load ptr, ptr @optarg, align 8, !dbg !521
  %170 = load i64, ptr %23, align 8, !dbg !521
  %171 = call ptr @strncpy(ptr noundef @g_upwd, ptr noundef %169, i64 noundef %170) #7, !dbg !521
  %172 = load i64, ptr %23, align 8, !dbg !521
  %173 = sub i64 %172, 1, !dbg !521
  %174 = getelementptr inbounds i8, ptr @g_upwd, i64 %173, !dbg !521
  store i8 0, ptr %174, align 1, !dbg !521
  br label %175, !dbg !522

175:                                              ; preds = %168, %165
  br label %176, !dbg !516

176:                                              ; preds = %175
  br label %313, !dbg !523

177:                                              ; preds = %49
  store i32 1, ptr @dont_fragment, align 4, !dbg !524
  br label %313, !dbg !525

178:                                              ; preds = %49
  br label %179, !dbg !526

179:                                              ; preds = %178
  %180 = load ptr, ptr @optarg, align 8, !dbg !527
  %181 = icmp ne ptr @client_ifname, %180, !dbg !527
  br i1 %181, label %182, label %189, !dbg !530

182:                                              ; preds = %179
  call void @llvm.dbg.declare(metadata ptr %24, metadata !531, metadata !DIExpression()), !dbg !535
  store i64 1025, ptr %24, align 8, !dbg !535
  %183 = load ptr, ptr @optarg, align 8, !dbg !535
  %184 = load i64, ptr %24, align 8, !dbg !535
  %185 = call ptr @strncpy(ptr noundef @client_ifname, ptr noundef %183, i64 noundef %184) #7, !dbg !535
  %186 = load i64, ptr %24, align 8, !dbg !535
  %187 = sub i64 %186, 1, !dbg !535
  %188 = getelementptr inbounds i8, ptr @client_ifname, i64 %187, !dbg !535
  store i8 0, ptr %188, align 1, !dbg !535
  br label %189, !dbg !536

189:                                              ; preds = %182, %179
  br label %190, !dbg !530

190:                                              ; preds = %189
  br label %313, !dbg !537

191:                                              ; preds = %49
  store i32 2, ptr @default_address_family, align 4, !dbg !538
  br label %313, !dbg !539

192:                                              ; preds = %49
  store i32 1, ptr @default_address_family, align 4, !dbg !540
  br label %313, !dbg !541

193:                                              ; preds = %49
  %194 = load ptr, ptr @optarg, align 8, !dbg !542
  %195 = call i32 @atoi(ptr noundef %194) #9, !dbg !543
  store i32 %195, ptr @clmessage_length, align 4, !dbg !544
  br label %313, !dbg !545

196:                                              ; preds = %49
  store i32 1, ptr @do_not_use_channel, align 4, !dbg !546
  br label %313, !dbg !547

197:                                              ; preds = %49
  %198 = load ptr, ptr @optarg, align 8, !dbg !548
  %199 = call i32 @atoi(ptr noundef %198) #9, !dbg !549
  store i32 %199, ptr %7, align 4, !dbg !550
  br label %313, !dbg !551

200:                                              ; preds = %49
  %201 = load ptr, ptr @optarg, align 8, !dbg !552
  %202 = call i32 @atoi(ptr noundef %201) #9, !dbg !553
  store i32 %202, ptr %6, align 4, !dbg !554
  br label %313, !dbg !555

203:                                              ; preds = %49
  br label %204, !dbg !556

204:                                              ; preds = %203
  %205 = getelementptr inbounds [256 x i8], ptr %8, i64 0, i64 0, !dbg !557
  %206 = load ptr, ptr @optarg, align 8, !dbg !557
  %207 = icmp ne ptr %205, %206, !dbg !557
  br i1 %207, label %208, label %217, !dbg !560

208:                                              ; preds = %204
  call void @llvm.dbg.declare(metadata ptr %25, metadata !561, metadata !DIExpression()), !dbg !565
  store i64 256, ptr %25, align 8, !dbg !565
  %209 = getelementptr inbounds [256 x i8], ptr %8, i64 0, i64 0, !dbg !565
  %210 = load ptr, ptr @optarg, align 8, !dbg !565
  %211 = load i64, ptr %25, align 8, !dbg !565
  %212 = call ptr @strncpy(ptr noundef %209, ptr noundef %210, i64 noundef %211) #7, !dbg !565
  %213 = getelementptr inbounds [256 x i8], ptr %8, i64 0, i64 0, !dbg !565
  %214 = load i64, ptr %25, align 8, !dbg !565
  %215 = sub i64 %214, 1, !dbg !565
  %216 = getelementptr inbounds i8, ptr %213, i64 %215, !dbg !565
  store i8 0, ptr %216, align 1, !dbg !565
  br label %217, !dbg !566

217:                                              ; preds = %208, %204
  br label %218, !dbg !560

218:                                              ; preds = %217
  br label %313, !dbg !567

219:                                              ; preds = %49
  br label %220, !dbg !568

220:                                              ; preds = %219
  %221 = getelementptr inbounds [129 x i8], ptr %11, i64 0, i64 0, !dbg !569
  %222 = load ptr, ptr @optarg, align 8, !dbg !569
  %223 = icmp ne ptr %221, %222, !dbg !569
  br i1 %223, label %224, label %233, !dbg !572

224:                                              ; preds = %220
  call void @llvm.dbg.declare(metadata ptr %26, metadata !573, metadata !DIExpression()), !dbg !577
  store i64 129, ptr %26, align 8, !dbg !577
  %225 = getelementptr inbounds [129 x i8], ptr %11, i64 0, i64 0, !dbg !577
  %226 = load ptr, ptr @optarg, align 8, !dbg !577
  %227 = load i64, ptr %26, align 8, !dbg !577
  %228 = call ptr @strncpy(ptr noundef %225, ptr noundef %226, i64 noundef %227) #7, !dbg !577
  %229 = getelementptr inbounds [129 x i8], ptr %11, i64 0, i64 0, !dbg !577
  %230 = load i64, ptr %26, align 8, !dbg !577
  %231 = sub i64 %230, 1, !dbg !577
  %232 = getelementptr inbounds i8, ptr %229, i64 %231, !dbg !577
  store i8 0, ptr %232, align 1, !dbg !577
  br label %233, !dbg !578

233:                                              ; preds = %224, %220
  br label %234, !dbg !572

234:                                              ; preds = %233
  br label %313, !dbg !579

235:                                              ; preds = %49
  %236 = load ptr, ptr @optarg, align 8, !dbg !580
  %237 = call i32 @atoi(ptr noundef %236) #9, !dbg !581
  store i32 %237, ptr %12, align 4, !dbg !582
  br label %313, !dbg !583

238:                                              ; preds = %49
  store i32 1, ptr @clnet_verbose, align 4, !dbg !584
  br label %313, !dbg !585

239:                                              ; preds = %49
  store i32 1, ptr @hang_on, align 4, !dbg !586
  br label %313, !dbg !587

240:                                              ; preds = %49
  store i32 1, ptr @no_rtcp, align 4, !dbg !588
  br label %313, !dbg !589

241:                                              ; preds = %49
  %242 = load ptr, ptr @optarg, align 8, !dbg !590
  %243 = call i32 @atoi(ptr noundef %242) #9, !dbg !591
  store i32 %243, ptr %10, align 4, !dbg !592
  br label %313, !dbg !593

244:                                              ; preds = %49
  store i32 1, ptr @c2c, align 4, !dbg !594
  br label %313, !dbg !595

245:                                              ; preds = %49
  store i32 1, ptr @use_tcp, align 4, !dbg !596
  br label %313, !dbg !597

246:                                              ; preds = %49
  store i32 1, ptr @use_sctp, align 4, !dbg !598
  store i32 1, ptr @use_tcp, align 4, !dbg !599
  br label %313, !dbg !600

247:                                              ; preds = %49
  store i32 1, ptr @passive_tcp, align 4, !dbg !601
  br label %248, !dbg !602

248:                                              ; preds = %49, %247
  store i8 6, ptr @relay_transport, align 1, !dbg !603
  br label %313, !dbg !604

249:                                              ; preds = %49
  store i32 1, ptr %14, align 4, !dbg !605
  br label %250, !dbg !606

250:                                              ; preds = %49, %249
  store i32 1, ptr @use_secure, align 4, !dbg !607
  br label %313, !dbg !608

251:                                              ; preds = %49
  store i32 1, ptr @g_use_auth_secret_with_timestamp, align 4, !dbg !609
  br label %252, !dbg !610

252:                                              ; preds = %251
  %253 = load ptr, ptr @optarg, align 8, !dbg !611
  %254 = icmp ne ptr @g_auth_secret, %253, !dbg !611
  br i1 %254, label %255, label %262, !dbg !614

255:                                              ; preds = %252
  call void @llvm.dbg.declare(metadata ptr %27, metadata !615, metadata !DIExpression()), !dbg !619
  store i64 1025, ptr %27, align 8, !dbg !619
  %256 = load ptr, ptr @optarg, align 8, !dbg !619
  %257 = load i64, ptr %27, align 8, !dbg !619
  %258 = call ptr @strncpy(ptr noundef @g_auth_secret, ptr noundef %256, i64 noundef %257) #7, !dbg !619
  %259 = load i64, ptr %27, align 8, !dbg !619
  %260 = sub i64 %259, 1, !dbg !619
  %261 = getelementptr inbounds i8, ptr @g_auth_secret, i64 %260, !dbg !619
  store i8 0, ptr %261, align 1, !dbg !619
  br label %262, !dbg !620

262:                                              ; preds = %255, %252
  br label %263, !dbg !614

263:                                              ; preds = %262
  br label %313, !dbg !621

264:                                              ; preds = %49
  call void @llvm.dbg.declare(metadata ptr %28, metadata !622, metadata !DIExpression()), !dbg !624
  %265 = load ptr, ptr @optarg, align 8, !dbg !625
  %266 = call ptr @find_config_file(ptr noundef %265, i32 noundef 1), !dbg !626
  store ptr %266, ptr %28, align 8, !dbg !624
  %267 = load ptr, ptr %28, align 8, !dbg !627
  %268 = icmp ne ptr %267, null, !dbg !627
  br i1 %268, label %273, label %269, !dbg !629

269:                                              ; preds = %264
  %270 = load ptr, ptr @stderr, align 8, !dbg !630
  %271 = load ptr, ptr @optarg, align 8, !dbg !632
  %272 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %270, ptr noundef @.str.3, ptr noundef %271), !dbg !633
  call void @exit(i32 noundef -1) #8, !dbg !634
  unreachable, !dbg !634

273:                                              ; preds = %264
  br label %274, !dbg !635

274:                                              ; preds = %273
  %275 = load ptr, ptr %28, align 8, !dbg !636
  %276 = icmp ne ptr @cert_file, %275, !dbg !636
  br i1 %276, label %277, label %284, !dbg !639

277:                                              ; preds = %274
  call void @llvm.dbg.declare(metadata ptr %29, metadata !640, metadata !DIExpression()), !dbg !644
  store i64 1025, ptr %29, align 8, !dbg !644
  %278 = load ptr, ptr %28, align 8, !dbg !644
  %279 = load i64, ptr %29, align 8, !dbg !644
  %280 = call ptr @strncpy(ptr noundef @cert_file, ptr noundef %278, i64 noundef %279) #7, !dbg !644
  %281 = load i64, ptr %29, align 8, !dbg !644
  %282 = sub i64 %281, 1, !dbg !644
  %283 = getelementptr inbounds i8, ptr @cert_file, i64 %282, !dbg !644
  store i8 0, ptr %283, align 1, !dbg !644
  br label %284, !dbg !645

284:                                              ; preds = %277, %274
  br label %285, !dbg !639

285:                                              ; preds = %284
  %286 = load ptr, ptr %28, align 8, !dbg !646
  call void @free(ptr noundef %286) #7, !dbg !647
  br label %313, !dbg !648

287:                                              ; preds = %49
  call void @llvm.dbg.declare(metadata ptr %30, metadata !649, metadata !DIExpression()), !dbg !651
  %288 = load ptr, ptr @optarg, align 8, !dbg !652
  %289 = call ptr @find_config_file(ptr noundef %288, i32 noundef 1), !dbg !653
  store ptr %289, ptr %30, align 8, !dbg !651
  %290 = load ptr, ptr %30, align 8, !dbg !654
  %291 = icmp ne ptr %290, null, !dbg !654
  br i1 %291, label %296, label %292, !dbg !656

292:                                              ; preds = %287
  %293 = load ptr, ptr @stderr, align 8, !dbg !657
  %294 = load ptr, ptr @optarg, align 8, !dbg !659
  %295 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %293, ptr noundef @.str.3, ptr noundef %294), !dbg !660
  call void @exit(i32 noundef -1) #8, !dbg !661
  unreachable, !dbg !661

296:                                              ; preds = %287
  br label %297, !dbg !662

297:                                              ; preds = %296
  %298 = load ptr, ptr %30, align 8, !dbg !663
  %299 = icmp ne ptr @pkey_file, %298, !dbg !663
  br i1 %299, label %300, label %307, !dbg !666

300:                                              ; preds = %297
  call void @llvm.dbg.declare(metadata ptr %31, metadata !667, metadata !DIExpression()), !dbg !671
  store i64 1025, ptr %31, align 8, !dbg !671
  %301 = load ptr, ptr %30, align 8, !dbg !671
  %302 = load i64, ptr %31, align 8, !dbg !671
  %303 = call ptr @strncpy(ptr noundef @pkey_file, ptr noundef %301, i64 noundef %302) #7, !dbg !671
  %304 = load i64, ptr %31, align 8, !dbg !671
  %305 = sub i64 %304, 1, !dbg !671
  %306 = getelementptr inbounds i8, ptr @pkey_file, i64 %305, !dbg !671
  store i8 0, ptr %306, align 1, !dbg !671
  br label %307, !dbg !672

307:                                              ; preds = %300, %297
  br label %308, !dbg !666

308:                                              ; preds = %307
  %309 = load ptr, ptr %30, align 8, !dbg !673
  call void @free(ptr noundef %309) #7, !dbg !674
  br label %313, !dbg !675

310:                                              ; preds = %49
  %311 = load ptr, ptr @stderr, align 8, !dbg !676
  %312 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %311, ptr noundef @.str.2, ptr noundef @Usage), !dbg !677
  call void @exit(i32 noundef 1) #8, !dbg !678
  unreachable, !dbg !678

313:                                              ; preds = %308, %285, %263, %250, %248, %246, %245, %244, %241, %240, %239, %238, %235, %234, %218, %200, %197, %196, %193, %192, %191, %190, %177, %176, %163, %150, %147, %146, %145, %144, %141, %140, %139, %117, %116, %115, %102, %101, %100, %85, %84
  br label %44, !dbg !350, !llvm.loop !679

314:                                              ; preds = %44
  %315 = load i32, ptr @dual_allocation, align 4, !dbg !682
  %316 = icmp ne i32 %315, 0, !dbg !682
  br i1 %316, label %317, label %318, !dbg !684

317:                                              ; preds = %314
  store i32 1, ptr @no_rtcp, align 4, !dbg !685
  br label %318, !dbg !687

318:                                              ; preds = %317, %314
  %319 = load i32, ptr @g_use_auth_secret_with_timestamp, align 4, !dbg !688
  %320 = icmp ne i32 %319, 0, !dbg !688
  br i1 %320, label %321, label %377, !dbg !690

321:                                              ; preds = %318
  call void @llvm.dbg.declare(metadata ptr %32, metadata !691, metadata !DIExpression()), !dbg !694
  call void @llvm.dbg.declare(metadata ptr %33, metadata !695, metadata !DIExpression()), !dbg !697
  store i64 86400, ptr %33, align 8, !dbg !697
  %322 = load i8, ptr @g_uname, align 16, !dbg !698
  %323 = icmp ne i8 %322, 0, !dbg !698
  br i1 %323, label %324, label %331, !dbg !700

324:                                              ; preds = %321
  %325 = getelementptr inbounds [1025 x i8], ptr %32, i64 0, i64 0, !dbg !701
  %326 = call i64 @time(ptr noundef null) #7, !dbg !703
  %327 = add i64 %326, 86400, !dbg !704
  %328 = load i8, ptr %13, align 1, !dbg !705
  %329 = sext i8 %328 to i32, !dbg !705
  %330 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %325, i64 noundef 1025, ptr noundef @.str.4, i64 noundef %327, i32 noundef %329, ptr noundef @g_uname) #7, !dbg !706
  br label %336, !dbg !707

331:                                              ; preds = %321
  %332 = getelementptr inbounds [1025 x i8], ptr %32, i64 0, i64 0, !dbg !708
  %333 = call i64 @time(ptr noundef null) #7, !dbg !710
  %334 = add i64 %333, 86400, !dbg !711
  %335 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %332, i64 noundef 1025, ptr noundef @.str.5, i64 noundef %334) #7, !dbg !712
  br label %336

336:                                              ; preds = %331, %324
  br label %337, !dbg !713

337:                                              ; preds = %336
  call void @llvm.dbg.declare(metadata ptr %34, metadata !714, metadata !DIExpression()), !dbg !720
  store i64 513, ptr %34, align 8, !dbg !720
  %338 = getelementptr inbounds [1025 x i8], ptr %32, i64 0, i64 0, !dbg !720
  %339 = load i64, ptr %34, align 8, !dbg !720
  %340 = call ptr @strncpy(ptr noundef @g_uname, ptr noundef %338, i64 noundef %339) #7, !dbg !720
  %341 = load i64, ptr %34, align 8, !dbg !720
  %342 = sub i64 %341, 1, !dbg !720
  %343 = getelementptr inbounds i8, ptr @g_uname, i64 %342, !dbg !720
  store i8 0, ptr %343, align 1, !dbg !720
  br label %344, !dbg !721

344:                                              ; preds = %337
  call void @llvm.dbg.declare(metadata ptr %35, metadata !722, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.declare(metadata ptr %36, metadata !726, metadata !DIExpression()), !dbg !727
  %345 = load i32, ptr @shatype, align 4, !dbg !728
  switch i32 %345, label %349 [
    i32 1, label %346
    i32 2, label %347
    i32 3, label %348
  ], !dbg !729

346:                                              ; preds = %344
  store i32 32, ptr %36, align 4, !dbg !730
  br label %350, !dbg !732

347:                                              ; preds = %344
  store i32 48, ptr %36, align 4, !dbg !733
  br label %350, !dbg !734

348:                                              ; preds = %344
  store i32 64, ptr %36, align 4, !dbg !735
  br label %350, !dbg !736

349:                                              ; preds = %344
  store i32 20, ptr %36, align 4, !dbg !737
  br label %350, !dbg !738

350:                                              ; preds = %349, %348, %347, %346
  %351 = getelementptr inbounds [128 x i8], ptr %35, i64 0, i64 0, !dbg !739
  store i8 0, ptr %351, align 16, !dbg !740
  %352 = call i64 @strlen(ptr noundef @g_uname) #9, !dbg !741
  %353 = call i64 @strlen(ptr noundef @g_auth_secret) #9, !dbg !743
  %354 = getelementptr inbounds [128 x i8], ptr %35, i64 0, i64 0, !dbg !744
  %355 = load i32, ptr @shatype, align 4, !dbg !745
  %356 = call i32 @stun_calculate_hmac(ptr noundef @g_uname, i64 noundef %352, ptr noundef @g_auth_secret, i64 noundef %353, ptr noundef %354, ptr noundef %36, i32 noundef %355), !dbg !746
  %357 = icmp sge i32 %356, 0, !dbg !747
  br i1 %357, label %358, label %376, !dbg !748

358:                                              ; preds = %350
  call void @llvm.dbg.declare(metadata ptr %37, metadata !749, metadata !DIExpression()), !dbg !751
  store i64 0, ptr %37, align 8, !dbg !751
  call void @llvm.dbg.declare(metadata ptr %38, metadata !752, metadata !DIExpression()), !dbg !753
  %359 = getelementptr inbounds [128 x i8], ptr %35, i64 0, i64 0, !dbg !754
  %360 = load i32, ptr %36, align 4, !dbg !755
  %361 = zext i32 %360 to i64, !dbg !755
  %362 = call ptr @base64_encode(ptr noundef %359, i64 noundef %361, ptr noundef %37), !dbg !756
  store ptr %362, ptr %38, align 8, !dbg !753
  %363 = load ptr, ptr %38, align 8, !dbg !757
  %364 = icmp ne ptr %363, null, !dbg !757
  br i1 %364, label %365, label %374, !dbg !759

365:                                              ; preds = %358
  %366 = load i64, ptr %37, align 8, !dbg !760
  %367 = icmp ugt i64 %366, 0, !dbg !763
  br i1 %367, label %368, label %373, !dbg !764

368:                                              ; preds = %365
  %369 = load ptr, ptr %38, align 8, !dbg !765
  %370 = load i64, ptr %37, align 8, !dbg !767
  call void @bcopy(ptr noundef %369, ptr noundef @g_upwd, i64 noundef %370) #7, !dbg !768
  %371 = load i64, ptr %37, align 8, !dbg !769
  %372 = getelementptr inbounds [257 x i8], ptr @g_upwd, i64 0, i64 %371, !dbg !770
  store i8 0, ptr %372, align 1, !dbg !771
  br label %373, !dbg !772

373:                                              ; preds = %368, %365
  br label %374, !dbg !773

374:                                              ; preds = %373, %358
  %375 = load ptr, ptr %38, align 8, !dbg !774
  call void @free(ptr noundef %375) #7, !dbg !775
  br label %376, !dbg !776

376:                                              ; preds = %374, %350
  br label %377, !dbg !777

377:                                              ; preds = %376, %318
  %378 = load i8, ptr @relay_transport, align 1, !dbg !778
  %379 = zext i8 %378 to i32, !dbg !778
  %380 = icmp eq i32 %379, 6, !dbg !778
  br i1 %380, label %381, label %382, !dbg !780

381:                                              ; preds = %377
  store i32 0, ptr @dont_fragment, align 4, !dbg !781
  store i32 1, ptr @no_rtcp, align 4, !dbg !783
  store i32 1, ptr @c2c, align 4, !dbg !784
  store i32 1, ptr @use_tcp, align 4, !dbg !785
  store i32 1, ptr @do_not_use_channel, align 4, !dbg !786
  br label %382, !dbg !787

382:                                              ; preds = %381, %377
  %383 = load i32, ptr %6, align 4, !dbg !788
  %384 = icmp eq i32 %383, 0, !dbg !790
  br i1 %384, label %385, label %391, !dbg !791

385:                                              ; preds = %382
  %386 = load i32, ptr @use_secure, align 4, !dbg !792
  %387 = icmp ne i32 %386, 0, !dbg !792
  br i1 %387, label %388, label %389, !dbg !795

388:                                              ; preds = %385
  store i32 5349, ptr %6, align 4, !dbg !796
  br label %390, !dbg !797

389:                                              ; preds = %385
  store i32 3478, ptr %6, align 4, !dbg !798
  br label %390

390:                                              ; preds = %389, %388
  br label %391, !dbg !799

391:                                              ; preds = %390, %382
  %392 = load i32, ptr @clmessage_length, align 4, !dbg !800
  %393 = icmp slt i32 %392, 16, !dbg !802
  br i1 %393, label %394, label %395, !dbg !803

394:                                              ; preds = %391
  store i32 16, ptr @clmessage_length, align 4, !dbg !804
  br label %395, !dbg !805

395:                                              ; preds = %394, %391
  call void @llvm.dbg.declare(metadata ptr %39, metadata !806, metadata !DIExpression()), !dbg !808
  store i32 100, ptr %39, align 4, !dbg !808
  %396 = load i32, ptr @clmessage_length, align 4, !dbg !809
  %397 = icmp sgt i32 %396, 65407, !dbg !811
  br i1 %397, label %398, label %401, !dbg !812

398:                                              ; preds = %395
  %399 = load ptr, ptr @stderr, align 8, !dbg !813
  %400 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %399, ptr noundef @.str.6, i32 noundef 65407), !dbg !815
  store i32 65407, ptr @clmessage_length, align 4, !dbg !816
  br label %401, !dbg !817

401:                                              ; preds = %398, %395
  %402 = load i32, ptr @optind, align 4, !dbg !818
  %403 = load i32, ptr %4, align 4, !dbg !820
  %404 = icmp sge i32 %402, %403, !dbg !821
  br i1 %404, label %405, label %408, !dbg !822

405:                                              ; preds = %401
  %406 = load ptr, ptr @stderr, align 8, !dbg !823
  %407 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %406, ptr noundef @.str.2, ptr noundef @Usage), !dbg !825
  call void @exit(i32 noundef -1) #8, !dbg !826
  unreachable, !dbg !826

408:                                              ; preds = %401
  %409 = load i32, ptr @c2c, align 4, !dbg !827
  %410 = icmp ne i32 %409, 0, !dbg !827
  br i1 %410, label %429, label %411, !dbg !829

411:                                              ; preds = %408
  %412 = getelementptr inbounds [129 x i8], ptr %11, i64 0, i64 0, !dbg !830
  %413 = load i32, ptr %12, align 4, !dbg !833
  %414 = call i32 @make_ioa_addr(ptr noundef %412, i32 noundef %413, ptr noundef @peer_addr), !dbg !834
  %415 = icmp slt i32 %414, 0, !dbg !835
  br i1 %415, label %416, label %417, !dbg !836

416:                                              ; preds = %411
  store i32 -1, ptr %3, align 4, !dbg !837
  br label %612, !dbg !837

417:                                              ; preds = %411
  %418 = load i16, ptr @peer_addr, align 4, !dbg !839
  %419 = zext i16 %418 to i32, !dbg !841
  %420 = icmp eq i32 %419, 10, !dbg !842
  br i1 %420, label %421, label %422, !dbg !843

421:                                              ; preds = %417
  store i32 2, ptr @default_address_family, align 4, !dbg !844
  br label %428, !dbg !846

422:                                              ; preds = %417
  %423 = load i16, ptr @peer_addr, align 4, !dbg !847
  %424 = zext i16 %423 to i32, !dbg !849
  %425 = icmp eq i32 %424, 2, !dbg !850
  br i1 %425, label %426, label %427, !dbg !851

426:                                              ; preds = %422
  store i32 1, ptr @default_address_family, align 4, !dbg !852
  br label %427, !dbg !854

427:                                              ; preds = %426, %422
  br label %428

428:                                              ; preds = %427, %421
  br label %429, !dbg !855

429:                                              ; preds = %428, %408
  %430 = load i32, ptr @use_secure, align 4, !dbg !856
  %431 = icmp ne i32 %430, 0, !dbg !856
  br i1 %431, label %432, label %602, !dbg !858

432:                                              ; preds = %429
  %433 = call i32 @OPENSSL_init_ssl(i64 noundef 2097154, ptr noundef null), !dbg !859
  %434 = call i32 @OPENSSL_init_ssl(i64 noundef 0, ptr noundef null), !dbg !861
  call void @llvm.dbg.declare(metadata ptr %40, metadata !862, metadata !DIExpression()), !dbg !863
  store ptr @.str.7, ptr %40, align 8, !dbg !863
  %435 = load i32, ptr %14, align 4, !dbg !864
  %436 = icmp ne i32 %435, 0, !dbg !864
  br i1 %436, label %437, label %438, !dbg !866

437:                                              ; preds = %432
  store ptr @.str.8, ptr %40, align 8, !dbg !867
  br label %443, !dbg !868

438:                                              ; preds = %432
  %439 = load i8, ptr @cipher_suite, align 16, !dbg !869
  %440 = icmp ne i8 %439, 0, !dbg !869
  br i1 %440, label %441, label %442, !dbg !871

441:                                              ; preds = %438
  store ptr @cipher_suite, ptr %40, align 8, !dbg !872
  br label %442, !dbg !873

442:                                              ; preds = %441, %438
  br label %443

443:                                              ; preds = %442, %437
  %444 = load i32, ptr @use_tcp, align 4, !dbg !874
  %445 = icmp ne i32 %444, 0, !dbg !874
  br i1 %445, label %446, label %499, !dbg !876

446:                                              ; preds = %443
  %447 = call ptr @TLS_client_method(), !dbg !877
  %448 = call ptr @SSL_CTX_new(ptr noundef %447), !dbg !879
  %449 = load i32, ptr @root_tls_ctx_num, align 4, !dbg !880
  %450 = sext i32 %449 to i64, !dbg !881
  %451 = getelementptr inbounds [32 x ptr], ptr @root_tls_ctx, i64 0, i64 %450, !dbg !881
  store ptr %448, ptr %451, align 8, !dbg !882
  %452 = load i32, ptr @root_tls_ctx_num, align 4, !dbg !883
  %453 = sext i32 %452 to i64, !dbg !884
  %454 = getelementptr inbounds [32 x ptr], ptr @root_tls_ctx, i64 0, i64 %453, !dbg !884
  %455 = load ptr, ptr %454, align 8, !dbg !884
  %456 = load ptr, ptr %40, align 8, !dbg !885
  %457 = call i32 @SSL_CTX_set_cipher_list(ptr noundef %455, ptr noundef %456), !dbg !886
  %458 = load i32, ptr @root_tls_ctx_num, align 4, !dbg !887
  %459 = add nsw i32 %458, 1, !dbg !887
  store i32 %459, ptr @root_tls_ctx_num, align 4, !dbg !887
  %460 = call ptr @TLSv1_client_method(), !dbg !888
  %461 = call ptr @SSL_CTX_new(ptr noundef %460), !dbg !889
  %462 = load i32, ptr @root_tls_ctx_num, align 4, !dbg !890
  %463 = sext i32 %462 to i64, !dbg !891
  %464 = getelementptr inbounds [32 x ptr], ptr @root_tls_ctx, i64 0, i64 %463, !dbg !891
  store ptr %461, ptr %464, align 8, !dbg !892
  %465 = load i32, ptr @root_tls_ctx_num, align 4, !dbg !893
  %466 = sext i32 %465 to i64, !dbg !894
  %467 = getelementptr inbounds [32 x ptr], ptr @root_tls_ctx, i64 0, i64 %466, !dbg !894
  %468 = load ptr, ptr %467, align 8, !dbg !894
  %469 = load ptr, ptr %40, align 8, !dbg !895
  %470 = call i32 @SSL_CTX_set_cipher_list(ptr noundef %468, ptr noundef %469), !dbg !896
  %471 = load i32, ptr @root_tls_ctx_num, align 4, !dbg !897
  %472 = add nsw i32 %471, 1, !dbg !897
  store i32 %472, ptr @root_tls_ctx_num, align 4, !dbg !897
  %473 = call ptr @TLSv1_1_client_method(), !dbg !898
  %474 = call ptr @SSL_CTX_new(ptr noundef %473), !dbg !899
  %475 = load i32, ptr @root_tls_ctx_num, align 4, !dbg !900
  %476 = sext i32 %475 to i64, !dbg !901
  %477 = getelementptr inbounds [32 x ptr], ptr @root_tls_ctx, i64 0, i64 %476, !dbg !901
  store ptr %474, ptr %477, align 8, !dbg !902
  %478 = load i32, ptr @root_tls_ctx_num, align 4, !dbg !903
  %479 = sext i32 %478 to i64, !dbg !904
  %480 = getelementptr inbounds [32 x ptr], ptr @root_tls_ctx, i64 0, i64 %479, !dbg !904
  %481 = load ptr, ptr %480, align 8, !dbg !904
  %482 = load ptr, ptr %40, align 8, !dbg !905
  %483 = call i32 @SSL_CTX_set_cipher_list(ptr noundef %481, ptr noundef %482), !dbg !906
  %484 = load i32, ptr @root_tls_ctx_num, align 4, !dbg !907
  %485 = add nsw i32 %484, 1, !dbg !907
  store i32 %485, ptr @root_tls_ctx_num, align 4, !dbg !907
  %486 = call ptr @TLSv1_2_client_method(), !dbg !908
  %487 = call ptr @SSL_CTX_new(ptr noundef %486), !dbg !909
  %488 = load i32, ptr @root_tls_ctx_num, align 4, !dbg !910
  %489 = sext i32 %488 to i64, !dbg !911
  %490 = getelementptr inbounds [32 x ptr], ptr @root_tls_ctx, i64 0, i64 %489, !dbg !911
  store ptr %487, ptr %490, align 8, !dbg !912
  %491 = load i32, ptr @root_tls_ctx_num, align 4, !dbg !913
  %492 = sext i32 %491 to i64, !dbg !914
  %493 = getelementptr inbounds [32 x ptr], ptr @root_tls_ctx, i64 0, i64 %492, !dbg !914
  %494 = load ptr, ptr %493, align 8, !dbg !914
  %495 = load ptr, ptr %40, align 8, !dbg !915
  %496 = call i32 @SSL_CTX_set_cipher_list(ptr noundef %494, ptr noundef %495), !dbg !916
  %497 = load i32, ptr @root_tls_ctx_num, align 4, !dbg !917
  %498 = add nsw i32 %497, 1, !dbg !917
  store i32 %498, ptr @root_tls_ctx_num, align 4, !dbg !917
  br label %526, !dbg !918

499:                                              ; preds = %443
  %500 = call ptr @DTLSv1_client_method(), !dbg !919
  %501 = call ptr @SSL_CTX_new(ptr noundef %500), !dbg !921
  %502 = load i32, ptr @root_tls_ctx_num, align 4, !dbg !922
  %503 = sext i32 %502 to i64, !dbg !923
  %504 = getelementptr inbounds [32 x ptr], ptr @root_tls_ctx, i64 0, i64 %503, !dbg !923
  store ptr %501, ptr %504, align 8, !dbg !924
  %505 = load i32, ptr @root_tls_ctx_num, align 4, !dbg !925
  %506 = sext i32 %505 to i64, !dbg !926
  %507 = getelementptr inbounds [32 x ptr], ptr @root_tls_ctx, i64 0, i64 %506, !dbg !926
  %508 = load ptr, ptr %507, align 8, !dbg !926
  %509 = load ptr, ptr %40, align 8, !dbg !927
  %510 = call i32 @SSL_CTX_set_cipher_list(ptr noundef %508, ptr noundef %509), !dbg !928
  %511 = load i32, ptr @root_tls_ctx_num, align 4, !dbg !929
  %512 = add nsw i32 %511, 1, !dbg !929
  store i32 %512, ptr @root_tls_ctx_num, align 4, !dbg !929
  %513 = call ptr @DTLSv1_2_client_method(), !dbg !930
  %514 = call ptr @SSL_CTX_new(ptr noundef %513), !dbg !931
  %515 = load i32, ptr @root_tls_ctx_num, align 4, !dbg !932
  %516 = sext i32 %515 to i64, !dbg !933
  %517 = getelementptr inbounds [32 x ptr], ptr @root_tls_ctx, i64 0, i64 %516, !dbg !933
  store ptr %514, ptr %517, align 8, !dbg !934
  %518 = load i32, ptr @root_tls_ctx_num, align 4, !dbg !935
  %519 = sext i32 %518 to i64, !dbg !936
  %520 = getelementptr inbounds [32 x ptr], ptr @root_tls_ctx, i64 0, i64 %519, !dbg !936
  %521 = load ptr, ptr %520, align 8, !dbg !936
  %522 = load ptr, ptr %40, align 8, !dbg !937
  %523 = call i32 @SSL_CTX_set_cipher_list(ptr noundef %521, ptr noundef %522), !dbg !938
  %524 = load i32, ptr @root_tls_ctx_num, align 4, !dbg !939
  %525 = add nsw i32 %524, 1, !dbg !939
  store i32 %525, ptr @root_tls_ctx_num, align 4, !dbg !939
  br label %526

526:                                              ; preds = %499, %446
  call void @llvm.dbg.declare(metadata ptr %41, metadata !940, metadata !DIExpression()), !dbg !941
  store i32 0, ptr %41, align 4, !dbg !941
  store i32 0, ptr %41, align 4, !dbg !942
  br label %527, !dbg !944

527:                                              ; preds = %598, %526
  %528 = load i32, ptr %41, align 4, !dbg !945
  %529 = load i32, ptr @root_tls_ctx_num, align 4, !dbg !947
  %530 = icmp slt i32 %528, %529, !dbg !948
  br i1 %530, label %531, label %601, !dbg !949

531:                                              ; preds = %527
  %532 = load i8, ptr @cert_file, align 16, !dbg !950
  %533 = icmp ne i8 %532, 0, !dbg !950
  br i1 %533, label %534, label %543, !dbg !953

534:                                              ; preds = %531
  %535 = load i32, ptr %41, align 4, !dbg !954
  %536 = sext i32 %535 to i64, !dbg !957
  %537 = getelementptr inbounds [32 x ptr], ptr @root_tls_ctx, i64 0, i64 %536, !dbg !957
  %538 = load ptr, ptr %537, align 8, !dbg !957
  %539 = call i32 @SSL_CTX_use_certificate_chain_file(ptr noundef %538, ptr noundef @cert_file), !dbg !958
  %540 = icmp ne i32 %539, 0, !dbg !958
  br i1 %540, label %542, label %541, !dbg !959

541:                                              ; preds = %534
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.9), !dbg !960
  call void @exit(i32 noundef -1) #8, !dbg !962
  unreachable, !dbg !962

542:                                              ; preds = %534
  br label %543, !dbg !963

543:                                              ; preds = %542, %531
  %544 = load i32, ptr %41, align 4, !dbg !964
  %545 = sext i32 %544 to i64, !dbg !966
  %546 = getelementptr inbounds [32 x ptr], ptr @root_tls_ctx, i64 0, i64 %545, !dbg !966
  %547 = load ptr, ptr %546, align 8, !dbg !966
  %548 = call i32 @SSL_CTX_use_PrivateKey_file(ptr noundef %547, ptr noundef @pkey_file, i32 noundef 1), !dbg !967
  %549 = icmp ne i32 %548, 0, !dbg !967
  br i1 %549, label %551, label %550, !dbg !968

550:                                              ; preds = %543
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.10), !dbg !969
  call void @exit(i32 noundef -1) #8, !dbg !971
  unreachable, !dbg !971

551:                                              ; preds = %543
  %552 = load i8, ptr @cert_file, align 16, !dbg !972
  %553 = icmp ne i8 %552, 0, !dbg !972
  br i1 %553, label %554, label %563, !dbg !974

554:                                              ; preds = %551
  %555 = load i32, ptr %41, align 4, !dbg !975
  %556 = sext i32 %555 to i64, !dbg !978
  %557 = getelementptr inbounds [32 x ptr], ptr @root_tls_ctx, i64 0, i64 %556, !dbg !978
  %558 = load ptr, ptr %557, align 8, !dbg !978
  %559 = call i32 @SSL_CTX_check_private_key(ptr noundef %558), !dbg !979
  %560 = icmp ne i32 %559, 0, !dbg !979
  br i1 %560, label %562, label %561, !dbg !980

561:                                              ; preds = %554
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.11), !dbg !981
  call void @exit(i32 noundef -1) #8, !dbg !983
  unreachable, !dbg !983

562:                                              ; preds = %554
  br label %563, !dbg !984

563:                                              ; preds = %562, %551
  %564 = load i8, ptr @ca_cert_file, align 16, !dbg !985
  %565 = icmp ne i8 %564, 0, !dbg !985
  br i1 %565, label %566, label %583, !dbg !987

566:                                              ; preds = %563
  %567 = load i32, ptr %41, align 4, !dbg !988
  %568 = sext i32 %567 to i64, !dbg !991
  %569 = getelementptr inbounds [32 x ptr], ptr @root_tls_ctx, i64 0, i64 %568, !dbg !991
  %570 = load ptr, ptr %569, align 8, !dbg !991
  %571 = call i32 @SSL_CTX_load_verify_locations(ptr noundef %570, ptr noundef @ca_cert_file, ptr noundef null), !dbg !992
  %572 = icmp ne i32 %571, 0, !dbg !992
  br i1 %572, label %574, label %573, !dbg !993

573:                                              ; preds = %566
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.12, ptr noundef @ca_cert_file), !dbg !994
  br label %574, !dbg !996

574:                                              ; preds = %573, %566
  %575 = load i32, ptr %41, align 4, !dbg !997
  %576 = sext i32 %575 to i64, !dbg !998
  %577 = getelementptr inbounds [32 x ptr], ptr @root_tls_ctx, i64 0, i64 %576, !dbg !998
  %578 = load ptr, ptr %577, align 8, !dbg !998
  call void @SSL_CTX_set_verify(ptr noundef %578, i32 noundef 1, ptr noundef null), !dbg !999
  %579 = load i32, ptr %41, align 4, !dbg !1000
  %580 = sext i32 %579 to i64, !dbg !1001
  %581 = getelementptr inbounds [32 x ptr], ptr @root_tls_ctx, i64 0, i64 %580, !dbg !1001
  %582 = load ptr, ptr %581, align 8, !dbg !1001
  call void @SSL_CTX_set_verify_depth(ptr noundef %582, i32 noundef 9), !dbg !1002
  br label %588, !dbg !1003

583:                                              ; preds = %563
  %584 = load i32, ptr %41, align 4, !dbg !1004
  %585 = sext i32 %584 to i64, !dbg !1006
  %586 = getelementptr inbounds [32 x ptr], ptr @root_tls_ctx, i64 0, i64 %585, !dbg !1006
  %587 = load ptr, ptr %586, align 8, !dbg !1006
  call void @SSL_CTX_set_verify(ptr noundef %587, i32 noundef 0, ptr noundef null), !dbg !1007
  br label %588

588:                                              ; preds = %583, %574
  %589 = load i32, ptr @use_tcp, align 4, !dbg !1008
  %590 = icmp ne i32 %589, 0, !dbg !1008
  br i1 %590, label %597, label %591, !dbg !1010

591:                                              ; preds = %588
  %592 = load i32, ptr %41, align 4, !dbg !1011
  %593 = sext i32 %592 to i64, !dbg !1011
  %594 = getelementptr inbounds [32 x ptr], ptr @root_tls_ctx, i64 0, i64 %593, !dbg !1011
  %595 = load ptr, ptr %594, align 8, !dbg !1011
  %596 = call i64 @SSL_CTX_ctrl(ptr noundef %595, i32 noundef 41, i64 noundef 1, ptr noundef null), !dbg !1011
  br label %597, !dbg !1011

597:                                              ; preds = %591, %588
  br label %598, !dbg !1012

598:                                              ; preds = %597
  %599 = load i32, ptr %41, align 4, !dbg !1013
  %600 = add nsw i32 %599, 1, !dbg !1013
  store i32 %600, ptr %41, align 4, !dbg !1013
  br label %527, !dbg !1014, !llvm.loop !1015

601:                                              ; preds = %527
  br label %602, !dbg !1017

602:                                              ; preds = %601, %429
  %603 = load ptr, ptr %5, align 8, !dbg !1018
  %604 = load i32, ptr @optind, align 4, !dbg !1019
  %605 = sext i32 %604 to i64, !dbg !1018
  %606 = getelementptr inbounds ptr, ptr %603, i64 %605, !dbg !1018
  %607 = load ptr, ptr %606, align 8, !dbg !1018
  %608 = load i32, ptr %6, align 4, !dbg !1020
  %609 = getelementptr inbounds [256 x i8], ptr %8, i64 0, i64 0, !dbg !1021
  %610 = load i32, ptr %7, align 4, !dbg !1022
  %611 = load i32, ptr %10, align 4, !dbg !1023
  call void @start_mclient(ptr noundef %607, i32 noundef %608, ptr noundef @client_ifname, ptr noundef %609, i32 noundef %610, i32 noundef %611), !dbg !1024
  store i32 0, ptr %3, align 4, !dbg !1025
  br label %612, !dbg !1025

612:                                              ; preds = %602, %416
  %613 = load i32, ptr %3, align 4, !dbg !1026
  ret i32 %613, !dbg !1026
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare void @set_logfile(ptr noundef) #3

declare void @set_execdir() #3

declare i64 @set_system_parameters(i32 noundef) #3

; Function Attrs: nounwind
declare i32 @getopt(i32 noundef, ptr noundef, ptr noundef) #4

declare void @convert_oauth_key_data_raw(ptr noundef, ptr noundef) #3

declare i32 @convert_oauth_key_data(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #3

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #5

; Function Attrs: nounwind
declare i64 @strtoul(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: nounwind
declare ptr @strncpy(ptr noundef, ptr noundef, i64 noundef) #4

declare ptr @find_config_file(ptr noundef, i32 noundef) #3

; Function Attrs: nounwind willreturn memory(read)
declare i32 @atoi(ptr noundef) #6

; Function Attrs: nounwind
declare void @free(ptr noundef) #4

; Function Attrs: nounwind
declare i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #4

; Function Attrs: nounwind
declare i64 @time(ptr noundef) #4

declare i32 @stun_calculate_hmac(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #6

declare ptr @base64_encode(ptr noundef, i64 noundef, ptr noundef) #3

; Function Attrs: nounwind
declare void @bcopy(ptr noundef, ptr noundef, i64 noundef) #4

declare i32 @make_ioa_addr(ptr noundef, i32 noundef, ptr noundef) #3

declare i32 @OPENSSL_init_ssl(i64 noundef, ptr noundef) #3

declare ptr @SSL_CTX_new(ptr noundef) #3

declare ptr @TLS_client_method() #3

declare i32 @SSL_CTX_set_cipher_list(ptr noundef, ptr noundef) #3

declare ptr @TLSv1_client_method() #3

declare ptr @TLSv1_1_client_method() #3

declare ptr @TLSv1_2_client_method() #3

declare ptr @DTLSv1_client_method() #3

declare ptr @DTLSv1_2_client_method() #3

declare i32 @SSL_CTX_use_certificate_chain_file(ptr noundef, ptr noundef) #3

declare void @turn_log_func_default(i32 noundef, ptr noundef, ...) #3

declare i32 @SSL_CTX_use_PrivateKey_file(ptr noundef, ptr noundef, i32 noundef) #3

declare i32 @SSL_CTX_check_private_key(ptr noundef) #3

declare i32 @SSL_CTX_load_verify_locations(ptr noundef, ptr noundef, ptr noundef) #3

declare void @SSL_CTX_set_verify(ptr noundef, i32 noundef, ptr noundef) #3

declare void @SSL_CTX_set_verify_depth(ptr noundef, i32 noundef) #3

declare i64 @SSL_CTX_ctrl(ptr noundef, i32 noundef, i64 noundef, ptr noundef) #3

declare void @start_mclient(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!308, !309, !310, !311, !312, !313, !314}
!llvm.ident = !{!315}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "clmessage_length", scope: !2, file: !50, line: 51, type: !7, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !30, globals: !47, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/raj/coturn/src/apps/uclient/mainuclient.c", directory: "/home/raj/coturn/build", checksumkind: CSK_MD5, checksum: "644eec82ab4f5e4fe1fbe0ebad31bde8")
!4 = !{!5, !15, !23}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_SHATYPE", file: !6, line: 160, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "src/client/ns_turn_msg_defs.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "4d8c44ae9e82b7a50b86805787352690")
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!9, !10, !11, !12, !13, !14}
!9 = !DIEnumerator(name: "SHATYPE_ERROR", value: -1)
!10 = !DIEnumerator(name: "SHATYPE_DEFAULT", value: 0)
!11 = !DIEnumerator(name: "SHATYPE_SHA1", value: 0)
!12 = !DIEnumerator(name: "SHATYPE_SHA256", value: 1)
!13 = !DIEnumerator(name: "SHATYPE_SHA384", value: 2)
!14 = !DIEnumerator(name: "SHATYPE_SHA512", value: 3)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !16, line: 47, baseType: !17, size: 32, elements: !18)
!16 = !DIFile(filename: "src/apps/common/ns_turn_utils.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "74cb4019b1eb9d8e2b879df518b15a25")
!17 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!18 = !{!19, !20, !21, !22}
!19 = !DIEnumerator(name: "TURN_LOG_LEVEL_INFO", value: 0)
!20 = !DIEnumerator(name: "TURN_LOG_LEVEL_CONTROL", value: 1)
!21 = !DIEnumerator(name: "TURN_LOG_LEVEL_WARNING", value: 2)
!22 = !DIEnumerator(name: "TURN_LOG_LEVEL_ERROR", value: 3)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_ENC_ALG", file: !6, line: 177, baseType: !7, size: 32, elements: !24)
!24 = !{!25, !26, !27, !28, !29}
!25 = !DIEnumerator(name: "ENC_ALG_ERROR", value: -1)
!26 = !DIEnumerator(name: "ENC_ALG_DEFAULT", value: 0)
!27 = !DIEnumerator(name: "A256GCM", value: 0)
!28 = !DIEnumerator(name: "A128GCM", value: 1)
!29 = !DIEnumerator(name: "ENC_ALG_NUM", value: 2)
!30 = !{!31, !34, !37, !33, !38, !7, !44, !46}
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "band_limit_t", file: !32, line: 67, baseType: !33)
!32 = !DIFile(filename: "src/client/ns_turn_msg.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "43c56357294df21a547ee0716fe3769d")
!33 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!36 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !40, line: 24, baseType: !41)
!40 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !42, line: 38, baseType: !43)
!42 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!43 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!47 = !{!0, !48, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !74, !76, !78, !80, !82, !84, !86, !89, !91, !93, !95, !97, !99, !101, !104, !106, !108, !110, !115, !117, !119, !121, !126, !131, !136, !141, !146, !148, !153, !155, !160, !165, !167, !172, !177, !234, !239, !245, !254, !281, !299, !301, !303}
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(name: "do_not_use_channel", scope: !2, file: !50, line: 52, type: !7, isLocal: false, isDefinition: true)
!50 = !DIFile(filename: "src/apps/uclient/mainuclient.c", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "644eec82ab4f5e4fe1fbe0ebad31bde8")
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(name: "c2c", scope: !2, file: !50, line: 53, type: !7, isLocal: false, isDefinition: true)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(name: "clnet_verbose", scope: !2, file: !50, line: 54, type: !7, isLocal: false, isDefinition: true)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(name: "use_tcp", scope: !2, file: !50, line: 55, type: !7, isLocal: false, isDefinition: true)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(name: "use_sctp", scope: !2, file: !50, line: 56, type: !7, isLocal: false, isDefinition: true)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(name: "use_secure", scope: !2, file: !50, line: 57, type: !7, isLocal: false, isDefinition: true)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(name: "hang_on", scope: !2, file: !50, line: 58, type: !7, isLocal: false, isDefinition: true)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(name: "no_rtcp", scope: !2, file: !50, line: 60, type: !7, isLocal: false, isDefinition: true)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(name: "default_address_family", scope: !2, file: !50, line: 61, type: !7, isLocal: false, isDefinition: true)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(name: "dont_fragment", scope: !2, file: !50, line: 62, type: !7, isLocal: false, isDefinition: true)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(name: "g_auth_secret", scope: !2, file: !50, line: 65, type: !71, isLocal: false, isDefinition: true)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 8200, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 1025)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(name: "g_use_auth_secret_with_timestamp", scope: !2, file: !50, line: 66, type: !7, isLocal: false, isDefinition: true)
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(name: "use_fingerprints", scope: !2, file: !50, line: 67, type: !7, isLocal: false, isDefinition: true)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(name: "cert_file", scope: !2, file: !50, line: 71, type: !71, isLocal: false, isDefinition: true)
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(name: "pkey_file", scope: !2, file: !50, line: 72, type: !71, isLocal: false, isDefinition: true)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(name: "root_tls_ctx_num", scope: !2, file: !50, line: 74, type: !7, isLocal: false, isDefinition: true)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(name: "relay_transport", scope: !2, file: !50, line: 76, type: !39, isLocal: false, isDefinition: true)
!86 = !DIGlobalVariableExpression(var: !87, expr: !DIExpression())
!87 = distinct !DIGlobalVariable(name: "client_ifname", scope: !2, file: !50, line: 77, type: !88, isLocal: false, isDefinition: true)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 8200, elements: !72)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(name: "passive_tcp", scope: !2, file: !50, line: 78, type: !7, isLocal: false, isDefinition: true)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(name: "mandatory_channel_padding", scope: !2, file: !50, line: 79, type: !7, isLocal: false, isDefinition: true)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(name: "negative_test", scope: !2, file: !50, line: 80, type: !7, isLocal: false, isDefinition: true)
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(name: "negative_protocol_test", scope: !2, file: !50, line: 81, type: !7, isLocal: false, isDefinition: true)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(name: "dos", scope: !2, file: !50, line: 82, type: !7, isLocal: false, isDefinition: true)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(name: "random_disconnect", scope: !2, file: !50, line: 83, type: !7, isLocal: false, isDefinition: true)
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(name: "shatype", scope: !2, file: !50, line: 85, type: !103, isLocal: false, isDefinition: true)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "SHATYPE", file: !6, line: 169, baseType: !5)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(name: "mobility", scope: !2, file: !50, line: 87, type: !7, isLocal: false, isDefinition: true)
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(name: "no_permissions", scope: !2, file: !50, line: 89, type: !7, isLocal: false, isDefinition: true)
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(name: "extra_requests", scope: !2, file: !50, line: 91, type: !7, isLocal: false, isDefinition: true)
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(name: "origin", scope: !2, file: !50, line: 93, type: !112, isLocal: false, isDefinition: true)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 1024, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 128)
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(name: "bps", scope: !2, file: !50, line: 95, type: !31, isLocal: false, isDefinition: true)
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(name: "dual_allocation", scope: !2, file: !50, line: 97, type: !7, isLocal: false, isDefinition: true)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(name: "oauth", scope: !2, file: !50, line: 99, type: !7, isLocal: false, isDefinition: true)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(scope: null, file: !50, line: 176, type: !123, isLocal: true, isDefinition: true)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 56, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 7)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(scope: null, file: !50, line: 184, type: !128, isLocal: true, isDefinition: true)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 512, elements: !129)
!129 = !{!130}
!130 = !DISubrange(count: 64)
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(scope: null, file: !50, line: 199, type: !133, isLocal: true, isDefinition: true)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 32, elements: !134)
!134 = !{!135}
!135 = !DISubrange(count: 4)
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression())
!137 = distinct !DIGlobalVariable(scope: null, file: !50, line: 239, type: !138, isLocal: true, isDefinition: true)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 208, elements: !139)
!139 = !{!140}
!140 = !DISubrange(count: 26)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(scope: null, file: !50, line: 385, type: !143, isLocal: true, isDefinition: true)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 64, elements: !144)
!144 = !{!145}
!145 = !DISubrange(count: 8)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(scope: null, file: !50, line: 387, type: !133, isLocal: true, isDefinition: true)
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(scope: null, file: !50, line: 446, type: !150, isLocal: true, isDefinition: true)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 288, elements: !151)
!151 = !{!152}
!152 = !DISubrange(count: 36)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(scope: null, file: !50, line: 476, type: !133, isLocal: true, isDefinition: true)
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(scope: null, file: !50, line: 478, type: !157, isLocal: true, isDefinition: true)
!157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 48, elements: !158)
!158 = !{!159}
!159 = !DISubrange(count: 6)
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(scope: null, file: !50, line: 525, type: !162, isLocal: true, isDefinition: true)
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 248, elements: !163)
!163 = !{!164}
!164 = !DISubrange(count: 31)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(scope: null, file: !50, line: 532, type: !162, isLocal: true, isDefinition: true)
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(scope: null, file: !50, line: 538, type: !169, isLocal: true, isDefinition: true)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 240, elements: !170)
!170 = !{!171}
!171 = !DISubrange(count: 30)
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression())
!173 = distinct !DIGlobalVariable(scope: null, file: !50, line: 546, type: !174, isLocal: true, isDefinition: true)
!174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 296, elements: !175)
!175 = !{!176}
!176 = !DISubrange(count: 37)
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(name: "peer_addr", scope: !2, file: !50, line: 59, type: !179, isLocal: false, isDefinition: true)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_addr", file: !180, line: 48, baseType: !181)
!180 = !DIFile(filename: "src/client/ns_turn_ioaddr.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "6bb7c107d1e7937049c12f6d0dffd94c")
!181 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !180, line: 44, size: 224, elements: !182)
!182 = !{!183, !195, !213}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !181, file: !180, line: 45, baseType: !184, size: 128)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !185, line: 180, size: 128, elements: !186)
!185 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "e3826be048699664d9ef7b080f62f2e0")
!186 = !{!187, !191}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !184, file: !185, line: 182, baseType: !188, size: 16)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !189, line: 28, baseType: !190)
!189 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "dd7f1d9dd6e26f88d1726905ed5d9ff5")
!190 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !184, file: !185, line: 183, baseType: !192, size: 112, offset: 16)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 112, elements: !193)
!193 = !{!194}
!194 = !DISubrange(count: 14)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "s4", scope: !181, file: !180, line: 46, baseType: !196, size: 128)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !197, line: 245, size: 128, elements: !198)
!197 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "eb6560f10d4cfe9f30fea2c92b9da0fd")
!198 = !{!199, !200, !204, !211}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !196, file: !197, line: 247, baseType: !188, size: 16)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !196, file: !197, line: 248, baseType: !201, size: 16, offset: 16)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !197, line: 123, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !40, line: 25, baseType: !203)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !42, line: 40, baseType: !190)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !196, file: !197, line: 249, baseType: !205, size: 32, offset: 32)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !197, line: 31, size: 32, elements: !206)
!206 = !{!207}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !205, file: !197, line: 33, baseType: !208, size: 32)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !197, line: 30, baseType: !209)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !40, line: 26, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !42, line: 42, baseType: !17)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !196, file: !197, line: 252, baseType: !212, size: 64, offset: 64)
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 64, elements: !144)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "s6", scope: !181, file: !180, line: 47, baseType: !214, size: 224)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !197, line: 260, size: 224, elements: !215)
!215 = !{!216, !217, !218, !219, !233}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_family", scope: !214, file: !197, line: 262, baseType: !188, size: 16)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_port", scope: !214, file: !197, line: 263, baseType: !201, size: 16, offset: 16)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_flowinfo", scope: !214, file: !197, line: 264, baseType: !209, size: 32, offset: 32)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !214, file: !197, line: 265, baseType: !220, size: 128, offset: 64)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !197, line: 219, size: 128, elements: !221)
!221 = !{!222}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !220, file: !197, line: 226, baseType: !223, size: 128)
!223 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !220, file: !197, line: 221, size: 128, elements: !224)
!224 = !{!225, !229, !231}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !223, file: !197, line: 223, baseType: !226, size: 128)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 128, elements: !227)
!227 = !{!228}
!228 = !DISubrange(count: 16)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !223, file: !197, line: 224, baseType: !230, size: 128)
!230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 128, elements: !144)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !223, file: !197, line: 225, baseType: !232, size: 128)
!232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 128, elements: !134)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_scope_id", scope: !214, file: !197, line: 266, baseType: !209, size: 32, offset: 192)
!234 = !DIGlobalVariableExpression(var: !235, expr: !DIExpression())
!235 = distinct !DIGlobalVariable(name: "g_uname", scope: !2, file: !50, line: 63, type: !236, isLocal: false, isDefinition: true)
!236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 4104, elements: !237)
!237 = !{!238}
!238 = !DISubrange(count: 513)
!239 = !DIGlobalVariableExpression(var: !240, expr: !DIExpression())
!240 = distinct !DIGlobalVariable(name: "g_upwd", scope: !2, file: !50, line: 64, type: !241, isLocal: false, isDefinition: true)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "password_t", file: !32, line: 66, baseType: !242)
!242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 2056, elements: !243)
!243 = !{!244}
!244 = !DISubrange(count: 257)
!245 = !DIGlobalVariableExpression(var: !246, expr: !DIExpression())
!246 = distinct !DIGlobalVariable(name: "root_tls_ctx", scope: !2, file: !50, line: 73, type: !247, isLocal: false, isDefinition: true)
!247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !248, size: 2048, elements: !252)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_CTX", file: !250, line: 185, baseType: !251)
!250 = !DIFile(filename: "/usr/include/openssl/types.h", directory: "", checksumkind: CSK_MD5, checksum: "44f1236065e4ee65cf4cd545c3e12ab9")
!251 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_ctx_st", file: !250, line: 185, flags: DIFlagFwdDecl)
!252 = !{!253}
!253 = !DISubrange(count: 32)
!254 = !DIGlobalVariableExpression(var: !255, expr: !DIExpression())
!255 = distinct !DIGlobalVariable(name: "okey_array", scope: !2, file: !50, line: 100, type: !256, isLocal: false, isDefinition: true)
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 22848, elements: !279)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "oauth_key", file: !6, line: 236, baseType: !258)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_oauth_key", file: !6, line: 223, size: 7616, elements: !259)
!259 = !{!260, !264, !266, !269, !272, !273, !275, !276, !277, !278}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "kid", scope: !258, file: !6, line: 224, baseType: !261, size: 1032)
!261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 1032, elements: !262)
!262 = !{!263}
!263 = !DISubrange(count: 129)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "ikm_key", scope: !258, file: !6, line: 225, baseType: !265, size: 2056, offset: 1032)
!265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 2056, elements: !243)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "ikm_key_size", scope: !258, file: !6, line: 226, baseType: !267, size: 64, offset: 3136)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !268, line: 46, baseType: !33)
!268 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!269 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !258, file: !6, line: 227, baseType: !270, size: 32, offset: 3200)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_time_t", file: !271, line: 108, baseType: !209)
!271 = !DIFile(filename: "src/ns_turn_defs.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "126e9c9d0b914de7fdf6162f77453397")
!272 = !DIDerivedType(tag: DW_TAG_member, name: "lifetime", scope: !258, file: !6, line: 228, baseType: !270, size: 32, offset: 3232)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "as_rs_alg", scope: !258, file: !6, line: 229, baseType: !274, size: 32, offset: 3264)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENC_ALG", file: !6, line: 187, baseType: !23)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "as_rs_key", scope: !258, file: !6, line: 230, baseType: !265, size: 2056, offset: 3296)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "as_rs_key_size", scope: !258, file: !6, line: 231, baseType: !267, size: 64, offset: 5376)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "auth_key", scope: !258, file: !6, line: 232, baseType: !265, size: 2056, offset: 5440)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "auth_key_size", scope: !258, file: !6, line: 233, baseType: !267, size: 64, offset: 7552)
!279 = !{!280}
!280 = !DISubrange(count: 3)
!281 = !DIGlobalVariableExpression(var: !282, expr: !DIExpression())
!282 = distinct !DIGlobalVariable(name: "okdr_array", scope: !2, file: !50, line: 102, type: !283, isLocal: true, isDefinition: true)
!283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 14400, elements: !279)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "oauth_key_data_raw", file: !285, line: 144, baseType: !286)
!285 = !DIFile(filename: "src/apps/common/apputils.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "5f4d9112d5c1617ebc273618c0760b4a")
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_oauth_key_data_raw", file: !285, line: 135, size: 4800, elements: !287)
!287 = !{!288, !289, !290, !293, !294, !298}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "kid", scope: !286, file: !285, line: 136, baseType: !261, size: 1032)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "ikm_key", scope: !286, file: !285, line: 137, baseType: !265, size: 2056, offset: 1032)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !286, file: !285, line: 138, baseType: !291, size: 64, offset: 3136)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !40, line: 27, baseType: !292)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !42, line: 45, baseType: !33)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "lifetime", scope: !286, file: !285, line: 139, baseType: !209, size: 32, offset: 3200)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "as_rs_alg", scope: !286, file: !285, line: 140, baseType: !295, size: 520, offset: 3232)
!295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 520, elements: !296)
!296 = !{!297}
!297 = !DISubrange(count: 65)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "realm", scope: !286, file: !285, line: 141, baseType: !112, size: 1024, offset: 3752)
!299 = !DIGlobalVariableExpression(var: !300, expr: !DIExpression())
!300 = distinct !DIGlobalVariable(name: "cipher_suite", scope: !2, file: !50, line: 70, type: !71, isLocal: true, isDefinition: true)
!301 = !DIGlobalVariableExpression(var: !302, expr: !DIExpression())
!302 = distinct !DIGlobalVariable(name: "ca_cert_file", scope: !2, file: !50, line: 69, type: !71, isLocal: true, isDefinition: true)
!303 = !DIGlobalVariableExpression(var: !304, expr: !DIExpression())
!304 = distinct !DIGlobalVariable(name: "Usage", scope: !2, file: !50, line: 110, type: !305, isLocal: true, isDefinition: true)
!305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 17400, elements: !306)
!306 = !{!307}
!307 = !DISubrange(count: 2175)
!308 = !{i32 7, !"Dwarf Version", i32 5}
!309 = !{i32 2, !"Debug Info Version", i32 3}
!310 = !{i32 1, !"wchar_size", i32 4}
!311 = !{i32 8, !"PIC Level", i32 2}
!312 = !{i32 7, !"PIE Level", i32 2}
!313 = !{i32 7, !"uwtable", i32 2}
!314 = !{i32 7, !"frame-pointer", i32 2}
!315 = !{!"clang version 16.0.0"}
!316 = distinct !DISubprogram(name: "main", scope: !50, file: !50, line: 163, type: !317, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !320)
!317 = !DISubroutineType(types: !318)
!318 = !{!7, !7, !319}
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!320 = !{}
!321 = !DILocalVariable(name: "argc", arg: 1, scope: !316, file: !50, line: 163, type: !7)
!322 = !DILocation(line: 163, column: 14, scope: !316)
!323 = !DILocalVariable(name: "argv", arg: 2, scope: !316, file: !50, line: 163, type: !319)
!324 = !DILocation(line: 163, column: 27, scope: !316)
!325 = !DILocalVariable(name: "port", scope: !316, file: !50, line: 165, type: !7)
!326 = !DILocation(line: 165, column: 6, scope: !316)
!327 = !DILocalVariable(name: "messagenumber", scope: !316, file: !50, line: 166, type: !7)
!328 = !DILocation(line: 166, column: 6, scope: !316)
!329 = !DILocalVariable(name: "local_addr", scope: !316, file: !50, line: 167, type: !330)
!330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 2048, elements: !331)
!331 = !{!332}
!332 = !DISubrange(count: 256)
!333 = !DILocation(line: 167, column: 7, scope: !316)
!334 = !DILocalVariable(name: "c", scope: !316, file: !50, line: 168, type: !7)
!335 = !DILocation(line: 168, column: 6, scope: !316)
!336 = !DILocalVariable(name: "mclient", scope: !316, file: !50, line: 169, type: !7)
!337 = !DILocation(line: 169, column: 6, scope: !316)
!338 = !DILocalVariable(name: "peer_address", scope: !316, file: !50, line: 170, type: !261)
!339 = !DILocation(line: 170, column: 7, scope: !316)
!340 = !DILocalVariable(name: "peer_port", scope: !316, file: !50, line: 171, type: !7)
!341 = !DILocation(line: 171, column: 6, scope: !316)
!342 = !DILocalVariable(name: "rest_api_separator", scope: !316, file: !50, line: 173, type: !36)
!343 = !DILocation(line: 173, column: 7, scope: !316)
!344 = !DILocalVariable(name: "use_null_cipher", scope: !316, file: !50, line: 174, type: !7)
!345 = !DILocation(line: 174, column: 6, scope: !316)
!346 = !DILocation(line: 176, column: 2, scope: !316)
!347 = !DILocation(line: 178, column: 2, scope: !316)
!348 = !DILocation(line: 180, column: 2, scope: !316)
!349 = !DILocation(line: 182, column: 2, scope: !316)
!350 = !DILocation(line: 184, column: 2, scope: !316)
!351 = !DILocation(line: 184, column: 21, scope: !316)
!352 = !DILocation(line: 184, column: 27, scope: !316)
!353 = !DILocation(line: 184, column: 14, scope: !316)
!354 = !DILocation(line: 184, column: 12, scope: !316)
!355 = !DILocation(line: 184, column: 101, scope: !316)
!356 = !DILocation(line: 185, column: 11, scope: !357)
!357 = distinct !DILexicalBlock(scope: !316, file: !50, line: 184, column: 108)
!358 = !DILocation(line: 185, column: 3, scope: !357)
!359 = !DILocation(line: 188, column: 10, scope: !360)
!360 = distinct !DILexicalBlock(scope: !361, file: !50, line: 186, column: 13)
!361 = distinct !DILexicalBlock(scope: !357, file: !50, line: 185, column: 13)
!362 = !DILocalVariable(name: "okd_array", scope: !360, file: !50, line: 190, type: !363)
!363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !364, size: 11520, elements: !279)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "oauth_key_data", file: !6, line: 221, baseType: !365)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_oauth_key_data", file: !6, line: 212, size: 3840, elements: !366)
!366 = !{!367, !368, !369, !370, !371, !372}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "kid", scope: !365, file: !6, line: 213, baseType: !261, size: 1032)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "ikm_key", scope: !365, file: !6, line: 214, baseType: !265, size: 2056, offset: 1032)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "ikm_key_size", scope: !365, file: !6, line: 215, baseType: !267, size: 64, offset: 3136)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !365, file: !6, line: 216, baseType: !270, size: 32, offset: 3200)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "lifetime", scope: !365, file: !6, line: 217, baseType: !270, size: 32, offset: 3232)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "as_rs_alg", scope: !365, file: !6, line: 218, baseType: !295, size: 520, offset: 3264)
!373 = !DILocation(line: 190, column: 19, scope: !360)
!374 = !DILocation(line: 191, column: 48, scope: !360)
!375 = !DILocation(line: 191, column: 4, scope: !360)
!376 = !DILocation(line: 192, column: 48, scope: !360)
!377 = !DILocation(line: 192, column: 4, scope: !360)
!378 = !DILocation(line: 193, column: 48, scope: !360)
!379 = !DILocation(line: 193, column: 4, scope: !360)
!380 = !DILocalVariable(name: "err_msg", scope: !360, file: !50, line: 195, type: !71)
!381 = !DILocation(line: 195, column: 9, scope: !360)
!382 = !DILocalVariable(name: "err_msg_size", scope: !360, file: !50, line: 196, type: !267)
!383 = !DILocation(line: 196, column: 11, scope: !360)
!384 = !DILocation(line: 198, column: 32, scope: !385)
!385 = distinct !DILexicalBlock(scope: !360, file: !50, line: 198, column: 8)
!386 = !DILocation(line: 198, column: 62, scope: !385)
!387 = !DILocation(line: 198, column: 71, scope: !385)
!388 = !DILocation(line: 198, column: 8, scope: !385)
!389 = !DILocation(line: 198, column: 85, scope: !385)
!390 = !DILocation(line: 198, column: 8, scope: !360)
!391 = !DILocation(line: 199, column: 13, scope: !392)
!392 = distinct !DILexicalBlock(scope: !385, file: !50, line: 198, column: 90)
!393 = !DILocation(line: 199, column: 29, scope: !392)
!394 = !DILocation(line: 199, column: 5, scope: !392)
!395 = !DILocation(line: 200, column: 5, scope: !392)
!396 = !DILocation(line: 203, column: 32, scope: !397)
!397 = distinct !DILexicalBlock(scope: !360, file: !50, line: 203, column: 8)
!398 = !DILocation(line: 203, column: 62, scope: !397)
!399 = !DILocation(line: 203, column: 71, scope: !397)
!400 = !DILocation(line: 203, column: 8, scope: !397)
!401 = !DILocation(line: 203, column: 85, scope: !397)
!402 = !DILocation(line: 203, column: 8, scope: !360)
!403 = !DILocation(line: 204, column: 13, scope: !404)
!404 = distinct !DILexicalBlock(scope: !397, file: !50, line: 203, column: 90)
!405 = !DILocation(line: 204, column: 29, scope: !404)
!406 = !DILocation(line: 204, column: 5, scope: !404)
!407 = !DILocation(line: 205, column: 5, scope: !404)
!408 = !DILocation(line: 208, column: 32, scope: !409)
!409 = distinct !DILexicalBlock(scope: !360, file: !50, line: 208, column: 8)
!410 = !DILocation(line: 208, column: 62, scope: !409)
!411 = !DILocation(line: 208, column: 71, scope: !409)
!412 = !DILocation(line: 208, column: 8, scope: !409)
!413 = !DILocation(line: 208, column: 85, scope: !409)
!414 = !DILocation(line: 208, column: 8, scope: !360)
!415 = !DILocation(line: 209, column: 13, scope: !416)
!416 = distinct !DILexicalBlock(scope: !409, file: !50, line: 208, column: 90)
!417 = !DILocation(line: 209, column: 29, scope: !416)
!418 = !DILocation(line: 209, column: 5, scope: !416)
!419 = !DILocation(line: 210, column: 5, scope: !416)
!420 = !DILocation(line: 213, column: 4, scope: !361)
!421 = !DILocation(line: 215, column: 32, scope: !361)
!422 = !DILocation(line: 215, column: 24, scope: !361)
!423 = !DILocation(line: 215, column: 8, scope: !361)
!424 = !DILocation(line: 216, column: 4, scope: !361)
!425 = !DILocation(line: 218, column: 4, scope: !361)
!426 = !DILocation(line: 218, column: 4, scope: !427)
!427 = distinct !DILexicalBlock(scope: !428, file: !50, line: 218, column: 4)
!428 = distinct !DILexicalBlock(scope: !361, file: !50, line: 218, column: 4)
!429 = !DILocation(line: 218, column: 4, scope: !428)
!430 = !DILocalVariable(name: "szdst", scope: !431, file: !50, line: 218, type: !267)
!431 = distinct !DILexicalBlock(scope: !432, file: !50, line: 218, column: 4)
!432 = distinct !DILexicalBlock(scope: !433, file: !50, line: 218, column: 4)
!433 = distinct !DILexicalBlock(scope: !427, file: !50, line: 218, column: 4)
!434 = !DILocation(line: 218, column: 4, scope: !431)
!435 = !DILocation(line: 218, column: 4, scope: !433)
!436 = !DILocation(line: 219, column: 4, scope: !361)
!437 = !DILocation(line: 221, column: 22, scope: !361)
!438 = !DILocation(line: 222, column: 4, scope: !361)
!439 = !DILocation(line: 224, column: 19, scope: !361)
!440 = !DILocation(line: 225, column: 4, scope: !361)
!441 = !DILocation(line: 227, column: 4, scope: !361)
!442 = !DILocation(line: 227, column: 4, scope: !443)
!443 = distinct !DILexicalBlock(scope: !444, file: !50, line: 227, column: 4)
!444 = distinct !DILexicalBlock(scope: !361, file: !50, line: 227, column: 4)
!445 = !DILocation(line: 227, column: 4, scope: !444)
!446 = !DILocalVariable(name: "szdst", scope: !447, file: !50, line: 227, type: !267)
!447 = distinct !DILexicalBlock(scope: !448, file: !50, line: 227, column: 4)
!448 = distinct !DILexicalBlock(scope: !449, file: !50, line: 227, column: 4)
!449 = distinct !DILexicalBlock(scope: !443, file: !50, line: 227, column: 4)
!450 = !DILocation(line: 227, column: 4, scope: !447)
!451 = !DILocation(line: 227, column: 4, scope: !449)
!452 = !DILocation(line: 228, column: 4, scope: !361)
!453 = !DILocation(line: 230, column: 19, scope: !361)
!454 = !DILocation(line: 231, column: 4, scope: !361)
!455 = !DILocation(line: 233, column: 13, scope: !361)
!456 = !DILocation(line: 234, column: 4, scope: !361)
!457 = !DILocalVariable(name: "fn", scope: !458, file: !50, line: 237, type: !37)
!458 = distinct !DILexicalBlock(scope: !361, file: !50, line: 236, column: 3)
!459 = !DILocation(line: 237, column: 10, scope: !458)
!460 = !DILocation(line: 237, column: 32, scope: !458)
!461 = !DILocation(line: 237, column: 15, scope: !458)
!462 = !DILocation(line: 238, column: 8, scope: !463)
!463 = distinct !DILexicalBlock(scope: !458, file: !50, line: 238, column: 7)
!464 = !DILocation(line: 238, column: 7, scope: !458)
!465 = !DILocation(line: 239, column: 13, scope: !466)
!466 = distinct !DILexicalBlock(scope: !463, file: !50, line: 238, column: 12)
!467 = !DILocation(line: 239, column: 49, scope: !466)
!468 = !DILocation(line: 239, column: 5, scope: !466)
!469 = !DILocation(line: 240, column: 5, scope: !466)
!470 = !DILocation(line: 242, column: 4, scope: !458)
!471 = !DILocation(line: 242, column: 4, scope: !472)
!472 = distinct !DILexicalBlock(scope: !473, file: !50, line: 242, column: 4)
!473 = distinct !DILexicalBlock(scope: !458, file: !50, line: 242, column: 4)
!474 = !DILocation(line: 242, column: 4, scope: !473)
!475 = !DILocalVariable(name: "szdst", scope: !476, file: !50, line: 242, type: !267)
!476 = distinct !DILexicalBlock(scope: !477, file: !50, line: 242, column: 4)
!477 = distinct !DILexicalBlock(scope: !478, file: !50, line: 242, column: 4)
!478 = distinct !DILexicalBlock(scope: !472, file: !50, line: 242, column: 4)
!479 = !DILocation(line: 242, column: 4, scope: !476)
!480 = !DILocation(line: 242, column: 4, scope: !478)
!481 = !DILocation(line: 244, column: 4, scope: !361)
!482 = !DILocation(line: 246, column: 8, scope: !361)
!483 = !DILocation(line: 247, column: 4, scope: !361)
!484 = !DILocation(line: 249, column: 24, scope: !361)
!485 = !DILocation(line: 249, column: 23, scope: !361)
!486 = !DILocation(line: 249, column: 22, scope: !361)
!487 = !DILocation(line: 250, column: 4, scope: !361)
!488 = !DILocation(line: 252, column: 30, scope: !361)
!489 = !DILocation(line: 253, column: 4, scope: !361)
!490 = !DILocation(line: 255, column: 18, scope: !361)
!491 = !DILocation(line: 256, column: 4, scope: !361)
!492 = !DILocation(line: 258, column: 27, scope: !361)
!493 = !DILocation(line: 259, column: 4, scope: !361)
!494 = !DILocation(line: 261, column: 31, scope: !361)
!495 = !DILocation(line: 261, column: 26, scope: !361)
!496 = !DILocation(line: 261, column: 24, scope: !361)
!497 = !DILocation(line: 262, column: 4, scope: !361)
!498 = !DILocation(line: 264, column: 20, scope: !361)
!499 = !DILocation(line: 265, column: 4, scope: !361)
!500 = !DILocation(line: 267, column: 4, scope: !361)
!501 = !DILocation(line: 267, column: 4, scope: !502)
!502 = distinct !DILexicalBlock(scope: !503, file: !50, line: 267, column: 4)
!503 = distinct !DILexicalBlock(scope: !361, file: !50, line: 267, column: 4)
!504 = !DILocation(line: 267, column: 4, scope: !503)
!505 = !DILocalVariable(name: "szdst", scope: !506, file: !50, line: 267, type: !267)
!506 = distinct !DILexicalBlock(scope: !507, file: !50, line: 267, column: 4)
!507 = distinct !DILexicalBlock(scope: !508, file: !50, line: 267, column: 4)
!508 = distinct !DILexicalBlock(scope: !502, file: !50, line: 267, column: 4)
!509 = !DILocation(line: 267, column: 4, scope: !506)
!510 = !DILocation(line: 267, column: 4, scope: !508)
!511 = !DILocation(line: 268, column: 4, scope: !361)
!512 = !DILocation(line: 270, column: 4, scope: !361)
!513 = !DILocation(line: 270, column: 4, scope: !514)
!514 = distinct !DILexicalBlock(scope: !515, file: !50, line: 270, column: 4)
!515 = distinct !DILexicalBlock(scope: !361, file: !50, line: 270, column: 4)
!516 = !DILocation(line: 270, column: 4, scope: !515)
!517 = !DILocalVariable(name: "szdst", scope: !518, file: !50, line: 270, type: !267)
!518 = distinct !DILexicalBlock(scope: !519, file: !50, line: 270, column: 4)
!519 = distinct !DILexicalBlock(scope: !520, file: !50, line: 270, column: 4)
!520 = distinct !DILexicalBlock(scope: !514, file: !50, line: 270, column: 4)
!521 = !DILocation(line: 270, column: 4, scope: !518)
!522 = !DILocation(line: 270, column: 4, scope: !520)
!523 = !DILocation(line: 271, column: 4, scope: !361)
!524 = !DILocation(line: 273, column: 18, scope: !361)
!525 = !DILocation(line: 274, column: 4, scope: !361)
!526 = !DILocation(line: 276, column: 4, scope: !361)
!527 = !DILocation(line: 276, column: 4, scope: !528)
!528 = distinct !DILexicalBlock(scope: !529, file: !50, line: 276, column: 4)
!529 = distinct !DILexicalBlock(scope: !361, file: !50, line: 276, column: 4)
!530 = !DILocation(line: 276, column: 4, scope: !529)
!531 = !DILocalVariable(name: "szdst", scope: !532, file: !50, line: 276, type: !267)
!532 = distinct !DILexicalBlock(scope: !533, file: !50, line: 276, column: 4)
!533 = distinct !DILexicalBlock(scope: !534, file: !50, line: 276, column: 4)
!534 = distinct !DILexicalBlock(scope: !528, file: !50, line: 276, column: 4)
!535 = !DILocation(line: 276, column: 4, scope: !532)
!536 = !DILocation(line: 276, column: 4, scope: !534)
!537 = !DILocation(line: 277, column: 4, scope: !361)
!538 = !DILocation(line: 279, column: 27, scope: !361)
!539 = !DILocation(line: 280, column: 4, scope: !361)
!540 = !DILocation(line: 282, column: 27, scope: !361)
!541 = !DILocation(line: 283, column: 4, scope: !361)
!542 = !DILocation(line: 285, column: 28, scope: !361)
!543 = !DILocation(line: 285, column: 23, scope: !361)
!544 = !DILocation(line: 285, column: 21, scope: !361)
!545 = !DILocation(line: 286, column: 4, scope: !361)
!546 = !DILocation(line: 288, column: 23, scope: !361)
!547 = !DILocation(line: 289, column: 4, scope: !361)
!548 = !DILocation(line: 291, column: 25, scope: !361)
!549 = !DILocation(line: 291, column: 20, scope: !361)
!550 = !DILocation(line: 291, column: 18, scope: !361)
!551 = !DILocation(line: 292, column: 4, scope: !361)
!552 = !DILocation(line: 294, column: 16, scope: !361)
!553 = !DILocation(line: 294, column: 11, scope: !361)
!554 = !DILocation(line: 294, column: 9, scope: !361)
!555 = !DILocation(line: 295, column: 4, scope: !361)
!556 = !DILocation(line: 297, column: 4, scope: !361)
!557 = !DILocation(line: 297, column: 4, scope: !558)
!558 = distinct !DILexicalBlock(scope: !559, file: !50, line: 297, column: 4)
!559 = distinct !DILexicalBlock(scope: !361, file: !50, line: 297, column: 4)
!560 = !DILocation(line: 297, column: 4, scope: !559)
!561 = !DILocalVariable(name: "szdst", scope: !562, file: !50, line: 297, type: !267)
!562 = distinct !DILexicalBlock(scope: !563, file: !50, line: 297, column: 4)
!563 = distinct !DILexicalBlock(scope: !564, file: !50, line: 297, column: 4)
!564 = distinct !DILexicalBlock(scope: !558, file: !50, line: 297, column: 4)
!565 = !DILocation(line: 297, column: 4, scope: !562)
!566 = !DILocation(line: 297, column: 4, scope: !564)
!567 = !DILocation(line: 298, column: 4, scope: !361)
!568 = !DILocation(line: 300, column: 4, scope: !361)
!569 = !DILocation(line: 300, column: 4, scope: !570)
!570 = distinct !DILexicalBlock(scope: !571, file: !50, line: 300, column: 4)
!571 = distinct !DILexicalBlock(scope: !361, file: !50, line: 300, column: 4)
!572 = !DILocation(line: 300, column: 4, scope: !571)
!573 = !DILocalVariable(name: "szdst", scope: !574, file: !50, line: 300, type: !267)
!574 = distinct !DILexicalBlock(scope: !575, file: !50, line: 300, column: 4)
!575 = distinct !DILexicalBlock(scope: !576, file: !50, line: 300, column: 4)
!576 = distinct !DILexicalBlock(scope: !570, file: !50, line: 300, column: 4)
!577 = !DILocation(line: 300, column: 4, scope: !574)
!578 = !DILocation(line: 300, column: 4, scope: !576)
!579 = !DILocation(line: 301, column: 4, scope: !361)
!580 = !DILocation(line: 303, column: 21, scope: !361)
!581 = !DILocation(line: 303, column: 16, scope: !361)
!582 = !DILocation(line: 303, column: 14, scope: !361)
!583 = !DILocation(line: 304, column: 4, scope: !361)
!584 = !DILocation(line: 306, column: 18, scope: !361)
!585 = !DILocation(line: 307, column: 4, scope: !361)
!586 = !DILocation(line: 309, column: 12, scope: !361)
!587 = !DILocation(line: 310, column: 4, scope: !361)
!588 = !DILocation(line: 312, column: 12, scope: !361)
!589 = !DILocation(line: 313, column: 4, scope: !361)
!590 = !DILocation(line: 315, column: 19, scope: !361)
!591 = !DILocation(line: 315, column: 14, scope: !361)
!592 = !DILocation(line: 315, column: 12, scope: !361)
!593 = !DILocation(line: 316, column: 4, scope: !361)
!594 = !DILocation(line: 318, column: 8, scope: !361)
!595 = !DILocation(line: 319, column: 4, scope: !361)
!596 = !DILocation(line: 321, column: 12, scope: !361)
!597 = !DILocation(line: 322, column: 4, scope: !361)
!598 = !DILocation(line: 324, column: 13, scope: !361)
!599 = !DILocation(line: 325, column: 12, scope: !361)
!600 = !DILocation(line: 326, column: 4, scope: !361)
!601 = !DILocation(line: 328, column: 16, scope: !361)
!602 = !DILocation(line: 328, column: 4, scope: !361)
!603 = !DILocation(line: 333, column: 20, scope: !361)
!604 = !DILocation(line: 334, column: 4, scope: !361)
!605 = !DILocation(line: 336, column: 20, scope: !361)
!606 = !DILocation(line: 336, column: 4, scope: !361)
!607 = !DILocation(line: 341, column: 15, scope: !361)
!608 = !DILocation(line: 342, column: 4, scope: !361)
!609 = !DILocation(line: 344, column: 37, scope: !361)
!610 = !DILocation(line: 345, column: 4, scope: !361)
!611 = !DILocation(line: 345, column: 4, scope: !612)
!612 = distinct !DILexicalBlock(scope: !613, file: !50, line: 345, column: 4)
!613 = distinct !DILexicalBlock(scope: !361, file: !50, line: 345, column: 4)
!614 = !DILocation(line: 345, column: 4, scope: !613)
!615 = !DILocalVariable(name: "szdst", scope: !616, file: !50, line: 345, type: !267)
!616 = distinct !DILexicalBlock(scope: !617, file: !50, line: 345, column: 4)
!617 = distinct !DILexicalBlock(scope: !618, file: !50, line: 345, column: 4)
!618 = distinct !DILexicalBlock(scope: !612, file: !50, line: 345, column: 4)
!619 = !DILocation(line: 345, column: 4, scope: !616)
!620 = !DILocation(line: 345, column: 4, scope: !618)
!621 = !DILocation(line: 346, column: 4, scope: !361)
!622 = !DILocalVariable(name: "fn", scope: !623, file: !50, line: 349, type: !37)
!623 = distinct !DILexicalBlock(scope: !361, file: !50, line: 348, column: 3)
!624 = !DILocation(line: 349, column: 10, scope: !623)
!625 = !DILocation(line: 349, column: 32, scope: !623)
!626 = !DILocation(line: 349, column: 15, scope: !623)
!627 = !DILocation(line: 350, column: 8, scope: !628)
!628 = distinct !DILexicalBlock(scope: !623, file: !50, line: 350, column: 7)
!629 = !DILocation(line: 350, column: 7, scope: !623)
!630 = !DILocation(line: 351, column: 13, scope: !631)
!631 = distinct !DILexicalBlock(scope: !628, file: !50, line: 350, column: 12)
!632 = !DILocation(line: 351, column: 49, scope: !631)
!633 = !DILocation(line: 351, column: 5, scope: !631)
!634 = !DILocation(line: 352, column: 5, scope: !631)
!635 = !DILocation(line: 354, column: 4, scope: !623)
!636 = !DILocation(line: 354, column: 4, scope: !637)
!637 = distinct !DILexicalBlock(scope: !638, file: !50, line: 354, column: 4)
!638 = distinct !DILexicalBlock(scope: !623, file: !50, line: 354, column: 4)
!639 = !DILocation(line: 354, column: 4, scope: !638)
!640 = !DILocalVariable(name: "szdst", scope: !641, file: !50, line: 354, type: !267)
!641 = distinct !DILexicalBlock(scope: !642, file: !50, line: 354, column: 4)
!642 = distinct !DILexicalBlock(scope: !643, file: !50, line: 354, column: 4)
!643 = distinct !DILexicalBlock(scope: !637, file: !50, line: 354, column: 4)
!644 = !DILocation(line: 354, column: 4, scope: !641)
!645 = !DILocation(line: 354, column: 4, scope: !643)
!646 = !DILocation(line: 355, column: 9, scope: !623)
!647 = !DILocation(line: 355, column: 4, scope: !623)
!648 = !DILocation(line: 357, column: 4, scope: !361)
!649 = !DILocalVariable(name: "fn", scope: !650, file: !50, line: 360, type: !37)
!650 = distinct !DILexicalBlock(scope: !361, file: !50, line: 359, column: 3)
!651 = !DILocation(line: 360, column: 10, scope: !650)
!652 = !DILocation(line: 360, column: 32, scope: !650)
!653 = !DILocation(line: 360, column: 15, scope: !650)
!654 = !DILocation(line: 361, column: 8, scope: !655)
!655 = distinct !DILexicalBlock(scope: !650, file: !50, line: 361, column: 7)
!656 = !DILocation(line: 361, column: 7, scope: !650)
!657 = !DILocation(line: 362, column: 13, scope: !658)
!658 = distinct !DILexicalBlock(scope: !655, file: !50, line: 361, column: 12)
!659 = !DILocation(line: 362, column: 49, scope: !658)
!660 = !DILocation(line: 362, column: 5, scope: !658)
!661 = !DILocation(line: 363, column: 5, scope: !658)
!662 = !DILocation(line: 365, column: 4, scope: !650)
!663 = !DILocation(line: 365, column: 4, scope: !664)
!664 = distinct !DILexicalBlock(scope: !665, file: !50, line: 365, column: 4)
!665 = distinct !DILexicalBlock(scope: !650, file: !50, line: 365, column: 4)
!666 = !DILocation(line: 365, column: 4, scope: !665)
!667 = !DILocalVariable(name: "szdst", scope: !668, file: !50, line: 365, type: !267)
!668 = distinct !DILexicalBlock(scope: !669, file: !50, line: 365, column: 4)
!669 = distinct !DILexicalBlock(scope: !670, file: !50, line: 365, column: 4)
!670 = distinct !DILexicalBlock(scope: !664, file: !50, line: 365, column: 4)
!671 = !DILocation(line: 365, column: 4, scope: !668)
!672 = !DILocation(line: 365, column: 4, scope: !670)
!673 = !DILocation(line: 366, column: 9, scope: !650)
!674 = !DILocation(line: 366, column: 4, scope: !650)
!675 = !DILocation(line: 368, column: 4, scope: !361)
!676 = !DILocation(line: 370, column: 12, scope: !361)
!677 = !DILocation(line: 370, column: 4, scope: !361)
!678 = !DILocation(line: 371, column: 4, scope: !361)
!679 = distinct !{!679, !350, !680, !681}
!680 = !DILocation(line: 373, column: 2, scope: !316)
!681 = !{!"llvm.loop.mustprogress"}
!682 = !DILocation(line: 375, column: 5, scope: !683)
!683 = distinct !DILexicalBlock(scope: !316, file: !50, line: 375, column: 5)
!684 = !DILocation(line: 375, column: 5, scope: !316)
!685 = !DILocation(line: 376, column: 11, scope: !686)
!686 = distinct !DILexicalBlock(scope: !683, file: !50, line: 375, column: 22)
!687 = !DILocation(line: 377, column: 2, scope: !686)
!688 = !DILocation(line: 379, column: 5, scope: !689)
!689 = distinct !DILexicalBlock(scope: !316, file: !50, line: 379, column: 5)
!690 = !DILocation(line: 379, column: 5, scope: !316)
!691 = !DILocalVariable(name: "new_uname", scope: !692, file: !50, line: 382, type: !71)
!692 = distinct !DILexicalBlock(scope: !693, file: !50, line: 381, column: 3)
!693 = distinct !DILexicalBlock(scope: !689, file: !50, line: 379, column: 39)
!694 = !DILocation(line: 382, column: 9, scope: !692)
!695 = !DILocalVariable(name: "exp_time", scope: !692, file: !50, line: 383, type: !696)
!696 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!697 = !DILocation(line: 383, column: 24, scope: !692)
!698 = !DILocation(line: 384, column: 7, scope: !699)
!699 = distinct !DILexicalBlock(scope: !692, file: !50, line: 384, column: 7)
!700 = !DILocation(line: 384, column: 7, scope: !692)
!701 = !DILocation(line: 385, column: 15, scope: !702)
!702 = distinct !DILexicalBlock(scope: !699, file: !50, line: 384, column: 19)
!703 = !DILocation(line: 385, column: 68, scope: !702)
!704 = !DILocation(line: 385, column: 79, scope: !702)
!705 = !DILocation(line: 385, column: 90, scope: !702)
!706 = !DILocation(line: 385, column: 6, scope: !702)
!707 = !DILocation(line: 386, column: 4, scope: !702)
!708 = !DILocation(line: 387, column: 15, scope: !709)
!709 = distinct !DILexicalBlock(scope: !699, file: !50, line: 386, column: 11)
!710 = !DILocation(line: 387, column: 65, scope: !709)
!711 = !DILocation(line: 387, column: 76, scope: !709)
!712 = !DILocation(line: 387, column: 6, scope: !709)
!713 = !DILocation(line: 389, column: 4, scope: !692)
!714 = !DILocalVariable(name: "szdst", scope: !715, file: !50, line: 389, type: !267)
!715 = distinct !DILexicalBlock(scope: !716, file: !50, line: 389, column: 4)
!716 = distinct !DILexicalBlock(scope: !717, file: !50, line: 389, column: 4)
!717 = distinct !DILexicalBlock(scope: !718, file: !50, line: 389, column: 4)
!718 = distinct !DILexicalBlock(scope: !719, file: !50, line: 389, column: 4)
!719 = distinct !DILexicalBlock(scope: !692, file: !50, line: 389, column: 4)
!720 = !DILocation(line: 389, column: 4, scope: !715)
!721 = !DILocation(line: 389, column: 4, scope: !719)
!722 = !DILocalVariable(name: "hmac", scope: !723, file: !50, line: 392, type: !724)
!723 = distinct !DILexicalBlock(scope: !693, file: !50, line: 391, column: 3)
!724 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 1024, elements: !113)
!725 = !DILocation(line: 392, column: 12, scope: !723)
!726 = !DILocalVariable(name: "hmac_len", scope: !723, file: !50, line: 393, type: !17)
!727 = !DILocation(line: 393, column: 17, scope: !723)
!728 = !DILocation(line: 395, column: 11, scope: !723)
!729 = !DILocation(line: 395, column: 4, scope: !723)
!730 = !DILocation(line: 397, column: 14, scope: !731)
!731 = distinct !DILexicalBlock(scope: !723, file: !50, line: 395, column: 20)
!732 = !DILocation(line: 398, column: 5, scope: !731)
!733 = !DILocation(line: 400, column: 14, scope: !731)
!734 = !DILocation(line: 401, column: 5, scope: !731)
!735 = !DILocation(line: 403, column: 14, scope: !731)
!736 = !DILocation(line: 404, column: 5, scope: !731)
!737 = !DILocation(line: 406, column: 14, scope: !731)
!738 = !DILocation(line: 407, column: 4, scope: !731)
!739 = !DILocation(line: 409, column: 4, scope: !723)
!740 = !DILocation(line: 409, column: 11, scope: !723)
!741 = !DILocation(line: 411, column: 36, scope: !742)
!742 = distinct !DILexicalBlock(scope: !723, file: !50, line: 411, column: 7)
!743 = !DILocation(line: 411, column: 85, scope: !742)
!744 = !DILocation(line: 411, column: 108, scope: !742)
!745 = !DILocation(line: 411, column: 125, scope: !742)
!746 = !DILocation(line: 411, column: 7, scope: !742)
!747 = !DILocation(line: 411, column: 133, scope: !742)
!748 = !DILocation(line: 411, column: 7, scope: !723)
!749 = !DILocalVariable(name: "pwd_length", scope: !750, file: !50, line: 412, type: !267)
!750 = distinct !DILexicalBlock(scope: !742, file: !50, line: 411, column: 138)
!751 = !DILocation(line: 412, column: 12, scope: !750)
!752 = !DILocalVariable(name: "pwd", scope: !750, file: !50, line: 413, type: !37)
!753 = !DILocation(line: 413, column: 11, scope: !750)
!754 = !DILocation(line: 413, column: 31, scope: !750)
!755 = !DILocation(line: 413, column: 36, scope: !750)
!756 = !DILocation(line: 413, column: 17, scope: !750)
!757 = !DILocation(line: 415, column: 8, scope: !758)
!758 = distinct !DILexicalBlock(scope: !750, file: !50, line: 415, column: 8)
!759 = !DILocation(line: 415, column: 8, scope: !750)
!760 = !DILocation(line: 416, column: 9, scope: !761)
!761 = distinct !DILexicalBlock(scope: !762, file: !50, line: 416, column: 9)
!762 = distinct !DILexicalBlock(scope: !758, file: !50, line: 415, column: 13)
!763 = !DILocation(line: 416, column: 19, scope: !761)
!764 = !DILocation(line: 416, column: 9, scope: !762)
!765 = !DILocation(line: 417, column: 13, scope: !766)
!766 = distinct !DILexicalBlock(scope: !761, file: !50, line: 416, column: 23)
!767 = !DILocation(line: 417, column: 24, scope: !766)
!768 = !DILocation(line: 417, column: 7, scope: !766)
!769 = !DILocation(line: 418, column: 14, scope: !766)
!770 = !DILocation(line: 418, column: 7, scope: !766)
!771 = !DILocation(line: 418, column: 25, scope: !766)
!772 = !DILocation(line: 419, column: 6, scope: !766)
!773 = !DILocation(line: 420, column: 5, scope: !762)
!774 = !DILocation(line: 421, column: 10, scope: !750)
!775 = !DILocation(line: 421, column: 5, scope: !750)
!776 = !DILocation(line: 422, column: 4, scope: !750)
!777 = !DILocation(line: 424, column: 2, scope: !693)
!778 = !DILocation(line: 426, column: 5, scope: !779)
!779 = distinct !DILexicalBlock(scope: !316, file: !50, line: 426, column: 5)
!780 = !DILocation(line: 426, column: 5, scope: !316)
!781 = !DILocation(line: 427, column: 17, scope: !782)
!782 = distinct !DILexicalBlock(scope: !779, file: !50, line: 426, column: 21)
!783 = !DILocation(line: 428, column: 11, scope: !782)
!784 = !DILocation(line: 429, column: 7, scope: !782)
!785 = !DILocation(line: 430, column: 11, scope: !782)
!786 = !DILocation(line: 431, column: 22, scope: !782)
!787 = !DILocation(line: 432, column: 2, scope: !782)
!788 = !DILocation(line: 434, column: 5, scope: !789)
!789 = distinct !DILexicalBlock(scope: !316, file: !50, line: 434, column: 5)
!790 = !DILocation(line: 434, column: 10, scope: !789)
!791 = !DILocation(line: 434, column: 5, scope: !316)
!792 = !DILocation(line: 435, column: 6, scope: !793)
!793 = distinct !DILexicalBlock(scope: !794, file: !50, line: 435, column: 6)
!794 = distinct !DILexicalBlock(scope: !789, file: !50, line: 434, column: 16)
!795 = !DILocation(line: 435, column: 6, scope: !794)
!796 = !DILocation(line: 436, column: 9, scope: !793)
!797 = !DILocation(line: 436, column: 4, scope: !793)
!798 = !DILocation(line: 438, column: 9, scope: !793)
!799 = !DILocation(line: 439, column: 2, scope: !794)
!800 = !DILocation(line: 441, column: 6, scope: !801)
!801 = distinct !DILexicalBlock(scope: !316, file: !50, line: 441, column: 6)
!802 = !DILocation(line: 441, column: 23, scope: !801)
!803 = !DILocation(line: 441, column: 6, scope: !316)
!804 = !DILocation(line: 442, column: 20, scope: !801)
!805 = !DILocation(line: 442, column: 3, scope: !801)
!806 = !DILocalVariable(name: "max_header", scope: !316, file: !50, line: 444, type: !807)
!807 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!808 = !DILocation(line: 444, column: 12, scope: !316)
!809 = !DILocation(line: 445, column: 5, scope: !810)
!810 = distinct !DILexicalBlock(scope: !316, file: !50, line: 445, column: 5)
!811 = !DILocation(line: 445, column: 22, scope: !810)
!812 = !DILocation(line: 445, column: 5, scope: !316)
!813 = !DILocation(line: 446, column: 11, scope: !814)
!814 = distinct !DILexicalBlock(scope: !810, file: !50, line: 445, column: 60)
!815 = !DILocation(line: 446, column: 3, scope: !814)
!816 = !DILocation(line: 447, column: 20, scope: !814)
!817 = !DILocation(line: 448, column: 2, scope: !814)
!818 = !DILocation(line: 450, column: 6, scope: !819)
!819 = distinct !DILexicalBlock(scope: !316, file: !50, line: 450, column: 6)
!820 = !DILocation(line: 450, column: 16, scope: !819)
!821 = !DILocation(line: 450, column: 13, scope: !819)
!822 = !DILocation(line: 450, column: 6, scope: !316)
!823 = !DILocation(line: 451, column: 11, scope: !824)
!824 = distinct !DILexicalBlock(scope: !819, file: !50, line: 450, column: 22)
!825 = !DILocation(line: 451, column: 3, scope: !824)
!826 = !DILocation(line: 452, column: 3, scope: !824)
!827 = !DILocation(line: 455, column: 7, scope: !828)
!828 = distinct !DILexicalBlock(scope: !316, file: !50, line: 455, column: 6)
!829 = !DILocation(line: 455, column: 6, scope: !316)
!830 = !DILocation(line: 457, column: 38, scope: !831)
!831 = distinct !DILexicalBlock(scope: !832, file: !50, line: 457, column: 7)
!832 = distinct !DILexicalBlock(scope: !828, file: !50, line: 455, column: 12)
!833 = !DILocation(line: 457, column: 52, scope: !831)
!834 = !DILocation(line: 457, column: 7, scope: !831)
!835 = !DILocation(line: 457, column: 75, scope: !831)
!836 = !DILocation(line: 457, column: 7, scope: !832)
!837 = !DILocation(line: 458, column: 4, scope: !838)
!838 = distinct !DILexicalBlock(scope: !831, file: !50, line: 457, column: 80)
!839 = !DILocation(line: 461, column: 19, scope: !840)
!840 = distinct !DILexicalBlock(scope: !832, file: !50, line: 461, column: 6)
!841 = !DILocation(line: 461, column: 6, scope: !840)
!842 = !DILocation(line: 461, column: 29, scope: !840)
!843 = !DILocation(line: 461, column: 6, scope: !832)
!844 = !DILocation(line: 462, column: 27, scope: !845)
!845 = distinct !DILexicalBlock(scope: !840, file: !50, line: 461, column: 42)
!846 = !DILocation(line: 463, column: 3, scope: !845)
!847 = !DILocation(line: 463, column: 26, scope: !848)
!848 = distinct !DILexicalBlock(scope: !840, file: !50, line: 463, column: 13)
!849 = !DILocation(line: 463, column: 13, scope: !848)
!850 = !DILocation(line: 463, column: 36, scope: !848)
!851 = !DILocation(line: 463, column: 13, scope: !840)
!852 = !DILocation(line: 464, column: 27, scope: !853)
!853 = distinct !DILexicalBlock(scope: !848, file: !50, line: 463, column: 48)
!854 = !DILocation(line: 465, column: 3, scope: !853)
!855 = !DILocation(line: 467, column: 2, scope: !832)
!856 = !DILocation(line: 471, column: 5, scope: !857)
!857 = distinct !DILexicalBlock(scope: !316, file: !50, line: 471, column: 5)
!858 = !DILocation(line: 471, column: 5, scope: !316)
!859 = !DILocation(line: 473, column: 3, scope: !860)
!860 = distinct !DILexicalBlock(scope: !857, file: !50, line: 471, column: 17)
!861 = !DILocation(line: 474, column: 3, scope: !860)
!862 = !DILocalVariable(name: "csuite", scope: !860, file: !50, line: 476, type: !34)
!863 = !DILocation(line: 476, column: 15, scope: !860)
!864 = !DILocation(line: 477, column: 6, scope: !865)
!865 = distinct !DILexicalBlock(scope: !860, file: !50, line: 477, column: 6)
!866 = !DILocation(line: 477, column: 6, scope: !860)
!867 = !DILocation(line: 478, column: 11, scope: !865)
!868 = !DILocation(line: 478, column: 4, scope: !865)
!869 = !DILocation(line: 479, column: 11, scope: !870)
!870 = distinct !DILexicalBlock(scope: !865, file: !50, line: 479, column: 11)
!871 = !DILocation(line: 479, column: 11, scope: !865)
!872 = !DILocation(line: 480, column: 10, scope: !870)
!873 = !DILocation(line: 480, column: 4, scope: !870)
!874 = !DILocation(line: 482, column: 6, scope: !875)
!875 = distinct !DILexicalBlock(scope: !860, file: !50, line: 482, column: 6)
!876 = !DILocation(line: 482, column: 6, scope: !860)
!877 = !DILocation(line: 483, column: 50, scope: !878)
!878 = distinct !DILexicalBlock(scope: !875, file: !50, line: 482, column: 15)
!879 = !DILocation(line: 483, column: 38, scope: !878)
!880 = !DILocation(line: 483, column: 18, scope: !878)
!881 = !DILocation(line: 483, column: 5, scope: !878)
!882 = !DILocation(line: 483, column: 36, scope: !878)
!883 = !DILocation(line: 484, column: 42, scope: !878)
!884 = !DILocation(line: 484, column: 29, scope: !878)
!885 = !DILocation(line: 484, column: 61, scope: !878)
!886 = !DILocation(line: 484, column: 5, scope: !878)
!887 = !DILocation(line: 485, column: 21, scope: !878)
!888 = !DILocation(line: 487, column: 50, scope: !878)
!889 = !DILocation(line: 487, column: 38, scope: !878)
!890 = !DILocation(line: 487, column: 18, scope: !878)
!891 = !DILocation(line: 487, column: 5, scope: !878)
!892 = !DILocation(line: 487, column: 36, scope: !878)
!893 = !DILocation(line: 488, column: 42, scope: !878)
!894 = !DILocation(line: 488, column: 29, scope: !878)
!895 = !DILocation(line: 488, column: 61, scope: !878)
!896 = !DILocation(line: 488, column: 5, scope: !878)
!897 = !DILocation(line: 489, column: 21, scope: !878)
!898 = !DILocation(line: 492, column: 50, scope: !878)
!899 = !DILocation(line: 492, column: 38, scope: !878)
!900 = !DILocation(line: 492, column: 18, scope: !878)
!901 = !DILocation(line: 492, column: 5, scope: !878)
!902 = !DILocation(line: 492, column: 36, scope: !878)
!903 = !DILocation(line: 493, column: 42, scope: !878)
!904 = !DILocation(line: 493, column: 29, scope: !878)
!905 = !DILocation(line: 493, column: 61, scope: !878)
!906 = !DILocation(line: 493, column: 5, scope: !878)
!907 = !DILocation(line: 494, column: 21, scope: !878)
!908 = !DILocation(line: 496, column: 50, scope: !878)
!909 = !DILocation(line: 496, column: 38, scope: !878)
!910 = !DILocation(line: 496, column: 18, scope: !878)
!911 = !DILocation(line: 496, column: 5, scope: !878)
!912 = !DILocation(line: 496, column: 36, scope: !878)
!913 = !DILocation(line: 497, column: 42, scope: !878)
!914 = !DILocation(line: 497, column: 29, scope: !878)
!915 = !DILocation(line: 497, column: 61, scope: !878)
!916 = !DILocation(line: 497, column: 5, scope: !878)
!917 = !DILocation(line: 498, column: 21, scope: !878)
!918 = !DILocation(line: 501, column: 3, scope: !878)
!919 = !DILocation(line: 509, column: 50, scope: !920)
!920 = distinct !DILexicalBlock(scope: !875, file: !50, line: 501, column: 10)
!921 = !DILocation(line: 509, column: 38, scope: !920)
!922 = !DILocation(line: 509, column: 18, scope: !920)
!923 = !DILocation(line: 509, column: 5, scope: !920)
!924 = !DILocation(line: 509, column: 36, scope: !920)
!925 = !DILocation(line: 510, column: 42, scope: !920)
!926 = !DILocation(line: 510, column: 29, scope: !920)
!927 = !DILocation(line: 510, column: 61, scope: !920)
!928 = !DILocation(line: 510, column: 5, scope: !920)
!929 = !DILocation(line: 511, column: 21, scope: !920)
!930 = !DILocation(line: 513, column: 50, scope: !920)
!931 = !DILocation(line: 513, column: 38, scope: !920)
!932 = !DILocation(line: 513, column: 18, scope: !920)
!933 = !DILocation(line: 513, column: 5, scope: !920)
!934 = !DILocation(line: 513, column: 36, scope: !920)
!935 = !DILocation(line: 514, column: 42, scope: !920)
!936 = !DILocation(line: 514, column: 29, scope: !920)
!937 = !DILocation(line: 514, column: 61, scope: !920)
!938 = !DILocation(line: 514, column: 5, scope: !920)
!939 = !DILocation(line: 515, column: 21, scope: !920)
!940 = !DILocalVariable(name: "sslind", scope: !860, file: !50, line: 520, type: !7)
!941 = !DILocation(line: 520, column: 7, scope: !860)
!942 = !DILocation(line: 521, column: 14, scope: !943)
!943 = distinct !DILexicalBlock(scope: !860, file: !50, line: 521, column: 3)
!944 = !DILocation(line: 521, column: 7, scope: !943)
!945 = !DILocation(line: 521, column: 19, scope: !946)
!946 = distinct !DILexicalBlock(scope: !943, file: !50, line: 521, column: 3)
!947 = !DILocation(line: 521, column: 26, scope: !946)
!948 = !DILocation(line: 521, column: 25, scope: !946)
!949 = !DILocation(line: 521, column: 3, scope: !943)
!950 = !DILocation(line: 523, column: 7, scope: !951)
!951 = distinct !DILexicalBlock(scope: !952, file: !50, line: 523, column: 7)
!952 = distinct !DILexicalBlock(scope: !946, file: !50, line: 521, column: 54)
!953 = !DILocation(line: 523, column: 7, scope: !952)
!954 = !DILocation(line: 524, column: 58, scope: !955)
!955 = distinct !DILexicalBlock(scope: !956, file: !50, line: 524, column: 9)
!956 = distinct !DILexicalBlock(scope: !951, file: !50, line: 523, column: 21)
!957 = !DILocation(line: 524, column: 45, scope: !955)
!958 = !DILocation(line: 524, column: 10, scope: !955)
!959 = !DILocation(line: 524, column: 9, scope: !956)
!960 = !DILocation(line: 525, column: 6, scope: !961)
!961 = distinct !DILexicalBlock(scope: !955, file: !50, line: 524, column: 79)
!962 = !DILocation(line: 526, column: 6, scope: !961)
!963 = !DILocation(line: 528, column: 4, scope: !956)
!964 = !DILocation(line: 530, column: 50, scope: !965)
!965 = distinct !DILexicalBlock(scope: !952, file: !50, line: 530, column: 8)
!966 = !DILocation(line: 530, column: 37, scope: !965)
!967 = !DILocation(line: 530, column: 9, scope: !965)
!968 = !DILocation(line: 530, column: 8, scope: !952)
!969 = !DILocation(line: 532, column: 5, scope: !970)
!970 = distinct !DILexicalBlock(scope: !965, file: !50, line: 531, column: 26)
!971 = !DILocation(line: 533, column: 5, scope: !970)
!972 = !DILocation(line: 536, column: 7, scope: !973)
!973 = distinct !DILexicalBlock(scope: !952, file: !50, line: 536, column: 7)
!974 = !DILocation(line: 536, column: 7, scope: !952)
!975 = !DILocation(line: 537, column: 49, scope: !976)
!976 = distinct !DILexicalBlock(scope: !977, file: !50, line: 537, column: 9)
!977 = distinct !DILexicalBlock(scope: !973, file: !50, line: 536, column: 21)
!978 = !DILocation(line: 537, column: 36, scope: !976)
!979 = !DILocation(line: 537, column: 10, scope: !976)
!980 = !DILocation(line: 537, column: 9, scope: !977)
!981 = !DILocation(line: 538, column: 6, scope: !982)
!982 = distinct !DILexicalBlock(scope: !976, file: !50, line: 537, column: 59)
!983 = !DILocation(line: 539, column: 6, scope: !982)
!984 = !DILocation(line: 541, column: 4, scope: !977)
!985 = !DILocation(line: 543, column: 8, scope: !986)
!986 = distinct !DILexicalBlock(scope: !952, file: !50, line: 543, column: 8)
!987 = !DILocation(line: 543, column: 8, scope: !952)
!988 = !DILocation(line: 544, column: 53, scope: !989)
!989 = distinct !DILexicalBlock(scope: !990, file: !50, line: 544, column: 9)
!990 = distinct !DILexicalBlock(scope: !986, file: !50, line: 543, column: 25)
!991 = !DILocation(line: 544, column: 40, scope: !989)
!992 = !DILocation(line: 544, column: 10, scope: !989)
!993 = !DILocation(line: 544, column: 9, scope: !990)
!994 = !DILocation(line: 545, column: 6, scope: !995)
!995 = distinct !DILexicalBlock(scope: !989, file: !50, line: 544, column: 84)
!996 = !DILocation(line: 548, column: 5, scope: !995)
!997 = !DILocation(line: 551, column: 37, scope: !990)
!998 = !DILocation(line: 551, column: 24, scope: !990)
!999 = !DILocation(line: 551, column: 5, scope: !990)
!1000 = !DILocation(line: 554, column: 43, scope: !990)
!1001 = !DILocation(line: 554, column: 30, scope: !990)
!1002 = !DILocation(line: 554, column: 5, scope: !990)
!1003 = !DILocation(line: 555, column: 4, scope: !990)
!1004 = !DILocation(line: 556, column: 37, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !986, file: !50, line: 555, column: 11)
!1006 = !DILocation(line: 556, column: 24, scope: !1005)
!1007 = !DILocation(line: 556, column: 5, scope: !1005)
!1008 = !DILocation(line: 559, column: 8, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !952, file: !50, line: 559, column: 7)
!1010 = !DILocation(line: 559, column: 7, scope: !952)
!1011 = !DILocation(line: 560, column: 5, scope: !1009)
!1012 = !DILocation(line: 561, column: 3, scope: !952)
!1013 = !DILocation(line: 521, column: 50, scope: !946)
!1014 = !DILocation(line: 521, column: 3, scope: !946)
!1015 = distinct !{!1015, !949, !1016, !681}
!1016 = !DILocation(line: 561, column: 3, scope: !943)
!1017 = !DILocation(line: 562, column: 2, scope: !860)
!1018 = !DILocation(line: 564, column: 16, scope: !316)
!1019 = !DILocation(line: 564, column: 21, scope: !316)
!1020 = !DILocation(line: 564, column: 30, scope: !316)
!1021 = !DILocation(line: 564, column: 51, scope: !316)
!1022 = !DILocation(line: 564, column: 63, scope: !316)
!1023 = !DILocation(line: 564, column: 78, scope: !316)
!1024 = !DILocation(line: 564, column: 2, scope: !316)
!1025 = !DILocation(line: 566, column: 2, scope: !316)
!1026 = !DILocation(line: 567, column: 1, scope: !316)
