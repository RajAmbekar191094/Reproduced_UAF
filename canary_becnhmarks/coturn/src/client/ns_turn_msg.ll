; ModuleID = '/home/raj/coturn/src/client/ns_turn_msg.c'
source_filename = "/home/raj/coturn/src/client/ns_turn_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stun_tid = type { [12 x i8] }
%union.ioa_addr = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct._oauth_key_data = type { [129 x i8], [257 x i8], i64, i32, i32, [65 x i8] }
%struct._oauth_key = type { [129 x i8], [257 x i8], i64, i32, i32, i32, [257 x i8], i64, [257 x i8], i64 }
%struct._oauth_token = type { %struct._oauth_encrypted_block }
%struct._oauth_encrypted_block = type { i16, [256 x i8], i16, [128 x i8], i64, i32 }
%struct._encoded_oauth_token = type { [1024 x i8], i64 }

@.str = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [8 x i8] c"BINDING\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [9 x i8] c"ALLOCATE\00", align 1, !dbg !9
@.str.3 = private unnamed_addr constant [8 x i8] c"REFRESH\00", align 1, !dbg !14
@.str.4 = private unnamed_addr constant [5 x i8] c"SEND\00", align 1, !dbg !16
@.str.5 = private unnamed_addr constant [5 x i8] c"DATA\00", align 1, !dbg !21
@.str.6 = private unnamed_addr constant [18 x i8] c"CREATE_PERMISSION\00", align 1, !dbg !23
@.str.7 = private unnamed_addr constant [13 x i8] c"CHANNEL_BIND\00", align 1, !dbg !28
@.str.8 = private unnamed_addr constant [8 x i8] c"CONNECT\00", align 1, !dbg !33
@.str.9 = private unnamed_addr constant [16 x i8] c"CONNECTION_BIND\00", align 1, !dbg !35
@.str.10 = private unnamed_addr constant [19 x i8] c"CONNECTION_ATTEMPT\00", align 1, !dbg !40
@.str.11 = private unnamed_addr constant [14 x i8] c"Unknown error\00", align 1, !dbg !45
@.str.12 = private unnamed_addr constant [14 x i8] c"Try Alternate\00", align 1, !dbg !50
@.str.13 = private unnamed_addr constant [12 x i8] c"Bad Request\00", align 1, !dbg !52
@.str.14 = private unnamed_addr constant [13 x i8] c"Unauthorized\00", align 1, !dbg !57
@.str.15 = private unnamed_addr constant [10 x i8] c"Forbidden\00", align 1, !dbg !59
@.str.16 = private unnamed_addr constant [10 x i8] c"Not Found\00", align 1, !dbg !64
@.str.17 = private unnamed_addr constant [18 x i8] c"Unknown Attribute\00", align 1, !dbg !66
@.str.18 = private unnamed_addr constant [20 x i8] c"Allocation Mismatch\00", align 1, !dbg !68
@.str.19 = private unnamed_addr constant [12 x i8] c"Stale Nonce\00", align 1, !dbg !73
@.str.20 = private unnamed_addr constant [29 x i8] c"Address Family not Supported\00", align 1, !dbg !75
@.str.21 = private unnamed_addr constant [18 x i8] c"Wrong Credentials\00", align 1, !dbg !80
@.str.22 = private unnamed_addr constant [31 x i8] c"Unsupported Transport Protocol\00", align 1, !dbg !82
@.str.23 = private unnamed_addr constant [29 x i8] c"Peer Address Family Mismatch\00", align 1, !dbg !87
@.str.24 = private unnamed_addr constant [26 x i8] c"Connection Already Exists\00", align 1, !dbg !89
@.str.25 = private unnamed_addr constant [30 x i8] c"Connection Timeout or Failure\00", align 1, !dbg !94
@.str.26 = private unnamed_addr constant [25 x i8] c"Allocation Quota Reached\00", align 1, !dbg !99
@.str.27 = private unnamed_addr constant [14 x i8] c"Role Conflict\00", align 1, !dbg !104
@.str.28 = private unnamed_addr constant [13 x i8] c"Server Error\00", align 1, !dbg !106
@.str.29 = private unnamed_addr constant [22 x i8] c"Insufficient Capacity\00", align 1, !dbg !108
@.str.30 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !113
@.str.31 = private unnamed_addr constant [19 x i8] c"<%s>:<%s>:len=%d:[\00", align 1, !dbg !118
@.str.32 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1, !dbg !120
@.str.33 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1, !dbg !122
@.str.34 = private unnamed_addr constant [12 x i8] c"%s:len=%d:[\00", align 1, !dbg !127
@.str.35 = private unnamed_addr constant [19 x i8] c"key is not defined\00", align 1, !dbg !129
@.str.36 = private unnamed_addr constant [19 x i8] c"KID is not defined\00", align 1, !dbg !131
@stderr = external global ptr, align 8
@.str.37 = private unnamed_addr constant [20 x i8] c"KID is not defined\0A\00", align 1, !dbg !133
@.str.38 = private unnamed_addr constant [8 x i8] c"A128GCM\00", align 1, !dbg !135
@.str.39 = private unnamed_addr constant [8 x i8] c"A256GCM\00", align 1, !dbg !137
@.str.40 = private unnamed_addr constant [48 x i8] c"Wrong oAuth token encryption algorithm: %s (2)\0A\00", align 1, !dbg !139
@.str.41 = private unnamed_addr constant [48 x i8] c"Wrong oAuth token encryption algorithm: %s (3)\0A\00", align 1, !dbg !144
@.str.42 = private unnamed_addr constant [35 x i8] c"%s: Unsupported enc algorithm: %d\0A\00", align 1, !dbg !146
@__FUNCTION__.get_cipher_type = private unnamed_addr constant [16 x i8] c"get_cipher_type\00", align 1, !dbg !151
@.str.43 = private unnamed_addr constant [15 x i8] c"\0Afield %s==>>\0A\00", align 1, !dbg !155
@.str.44 = private unnamed_addr constant [7 x i8] c"<0x%x>\00", align 1, !dbg !160
@.str.45 = private unnamed_addr constant [15 x i8] c"\0A<<==field %s\0A\00", align 1, !dbg !165
@.str.46 = private unnamed_addr constant [33 x i8] c"Unsupported AS_RS algorithm: %d\0A\00", align 1, !dbg !167
@.str.47 = private unnamed_addr constant [5 x i8] c"GET \00", align 1, !dbg !172
@.str.48 = private unnamed_addr constant [6 x i8] c"POST \00", align 1, !dbg !174
@.str.49 = private unnamed_addr constant [8 x i8] c"DELETE \00", align 1, !dbg !179
@.str.50 = private unnamed_addr constant [5 x i8] c"PUT \00", align 1, !dbg !181
@.str.51 = private unnamed_addr constant [7 x i8] c" HTTP/\00", align 1, !dbg !183
@.str.52 = private unnamed_addr constant [5 x i8] c"\0D\0A\0D\0A\00", align 1, !dbg !185
@.str.53 = private unnamed_addr constant [17 x i8] c"content-length: \00", align 1, !dbg !187
@crctable = internal constant [256 x i32] [i32 0, i32 1996959894, i32 -301047508, i32 -1727442502, i32 124634137, i32 1886057615, i32 -379345611, i32 -1637575261, i32 249268274, i32 2044508324, i32 -522852066, i32 -1747789432, i32 162941995, i32 2125561021, i32 -407360249, i32 -1866523247, i32 498536548, i32 1789927666, i32 -205950648, i32 -2067906082, i32 450548861, i32 1843258603, i32 -187386543, i32 -2083289657, i32 325883990, i32 1684777152, i32 -43845254, i32 -1973040660, i32 335633487, i32 1661365465, i32 -99664541, i32 -1928851979, i32 997073096, i32 1281953886, i32 -715111964, i32 -1570279054, i32 1006888145, i32 1258607687, i32 -770865667, i32 -1526024853, i32 901097722, i32 1119000684, i32 -608450090, i32 -1396901568, i32 853044451, i32 1172266101, i32 -589951537, i32 -1412350631, i32 651767980, i32 1373503546, i32 -925412992, i32 -1076862698, i32 565507253, i32 1454621731, i32 -809855591, i32 -1195530993, i32 671266974, i32 1594198024, i32 -972236366, i32 -1324619484, i32 795835527, i32 1483230225, i32 -1050600021, i32 -1234817731, i32 1994146192, i32 31158534, i32 -1731059524, i32 -271249366, i32 1907459465, i32 112637215, i32 -1614814043, i32 -390540237, i32 2013776290, i32 251722036, i32 -1777751922, i32 -519137256, i32 2137656763, i32 141376813, i32 -1855689577, i32 -429695999, i32 1802195444, i32 476864866, i32 -2056965928, i32 -228458418, i32 1812370925, i32 453092731, i32 -2113342271, i32 -183516073, i32 1706088902, i32 314042704, i32 -1950435094, i32 -54949764, i32 1658658271, i32 366619977, i32 -1932296973, i32 -69972891, i32 1303535960, i32 984961486, i32 -1547960204, i32 -725929758, i32 1256170817, i32 1037604311, i32 -1529756563, i32 -740887301, i32 1131014506, i32 879679996, i32 -1385723834, i32 -631195440, i32 1141124467, i32 855842277, i32 -1442165665, i32 -586318647, i32 1342533948, i32 654459306, i32 -1106571248, i32 -921952122, i32 1466479909, i32 544179635, i32 -1184443383, i32 -832445281, i32 1591671054, i32 702138776, i32 -1328506846, i32 -942167884, i32 1504918807, i32 783551873, i32 -1212326853, i32 -1061524307, i32 -306674912, i32 -1698712650, i32 62317068, i32 1957810842, i32 -355121351, i32 -1647151185, i32 81470997, i32 1943803523, i32 -480048366, i32 -1805370492, i32 225274430, i32 2053790376, i32 -468791541, i32 -1828061283, i32 167816743, i32 2097651377, i32 -267414716, i32 -2029476910, i32 503444072, i32 1762050814, i32 -144550051, i32 -2140837941, i32 426522225, i32 1852507879, i32 -19653770, i32 -1982649376, i32 282753626, i32 1742555852, i32 -105259153, i32 -1900089351, i32 397917763, i32 1622183637, i32 -690576408, i32 -1580100738, i32 953729732, i32 1340076626, i32 -776247311, i32 -1497606297, i32 1068828381, i32 1219638859, i32 -670225446, i32 -1358292148, i32 906185462, i32 1090812512, i32 -547295293, i32 -1469587627, i32 829329135, i32 1181335161, i32 -882789492, i32 -1134132454, i32 628085408, i32 1382605366, i32 -871598187, i32 -1156888829, i32 570562233, i32 1426400815, i32 -977650754, i32 -1296233688, i32 733239954, i32 1555261956, i32 -1026031705, i32 -1244606671, i32 752459403, i32 1541320221, i32 -1687895376, i32 -328994266, i32 1969922972, i32 40735498, i32 -1677130071, i32 -351390145, i32 1913087877, i32 83908371, i32 -1782625662, i32 -491226604, i32 2075208622, i32 213261112, i32 -1831694693, i32 -438977011, i32 2094854071, i32 198958881, i32 -2032938284, i32 -237706686, i32 1759359992, i32 534414190, i32 -2118248755, i32 -155638181, i32 1873836001, i32 414664567, i32 -2012718362, i32 -15766928, i32 1711684554, i32 285281116, i32 -1889165569, i32 -127750551, i32 1634467795, i32 376229701, i32 -1609899400, i32 -686959890, i32 1308918612, i32 956543938, i32 -1486412191, i32 -799009033, i32 1231636301, i32 1047427035, i32 -1362007478, i32 -640263460, i32 1088359270, i32 936918000, i32 -1447252397, i32 -558129467, i32 1202900863, i32 817233897, i32 -1111625188, i32 -893730166, i32 1404277552, i32 615818150, i32 -1160759803, i32 -841546093, i32 1423857449, i32 601450431, i32 -1285129682, i32 -1000256840, i32 1567103746, i32 711928724, i32 -1274298825, i32 -1022587231, i32 1510334235, i32 755167117], align 16, !dbg !192
@.str.54 = private unnamed_addr constant [30 x i8] c"%s: token size too small: %d\0A\00", align 1, !dbg !258
@__FUNCTION__.decode_oauth_token_gcm = private unnamed_addr constant [23 x i8] c"decode_oauth_token_gcm\00", align 1, !dbg !260
@.str.55 = private unnamed_addr constant [42 x i8] c"%s: Cannot find cipher for algorithm: %d\0A\00", align 1, !dbg !265
@.str.56 = private unnamed_addr constant [34 x i8] c"%s: Cannot initialize decryption\0A\00", align 1, !dbg !270
@.str.57 = private unnamed_addr constant [29 x i8] c"%s: Cannot set nonce length\0A\00", align 1, !dbg !275
@.str.58 = private unnamed_addr constant [22 x i8] c"%s: Cannot set nonce\0A\00", align 1, !dbg !277
@.str.59 = private unnamed_addr constant [51 x i8] c"%s: Cannot decrypt update server_name: %s, len=%d\0A\00", align 1, !dbg !279
@.str.60 = private unnamed_addr constant [27 x i8] c"%s: Cannot decrypt update\0A\00", align 1, !dbg !284
@.str.61 = private unnamed_addr constant [34 x i8] c"%s: token integrity check failed\0A\00", align 1, !dbg !289

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stun_method_str(i16 noundef zeroext %0, ptr noundef %1) #0 !dbg !302 {
  %3 = alloca i16, align 2
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  store i16 %0, ptr %3, align 2
  call void @llvm.dbg.declare(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !307
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !308, metadata !DIExpression()), !dbg !309
  call void @llvm.dbg.declare(metadata ptr %5, metadata !310, metadata !DIExpression()), !dbg !311
  store i32 0, ptr %5, align 4, !dbg !311
  call void @llvm.dbg.declare(metadata ptr %6, metadata !312, metadata !DIExpression()), !dbg !313
  store ptr @.str, ptr %6, align 8, !dbg !313
  %7 = load i16, ptr %3, align 2, !dbg !314
  %8 = zext i16 %7 to i32, !dbg !314
  switch i32 %8, label %19 [
    i32 1, label %9
    i32 3, label %10
    i32 4, label %11
    i32 6, label %12
    i32 7, label %13
    i32 8, label %14
    i32 9, label %15
    i32 10, label %16
    i32 11, label %17
    i32 12, label %18
  ], !dbg !315

9:                                                ; preds = %2
  store ptr @.str.1, ptr %6, align 8, !dbg !316
  br label %20, !dbg !318

10:                                               ; preds = %2
  store ptr @.str.2, ptr %6, align 8, !dbg !319
  br label %20, !dbg !320

11:                                               ; preds = %2
  store ptr @.str.3, ptr %6, align 8, !dbg !321
  br label %20, !dbg !322

12:                                               ; preds = %2
  store ptr @.str.4, ptr %6, align 8, !dbg !323
  br label %20, !dbg !324

13:                                               ; preds = %2
  store ptr @.str.5, ptr %6, align 8, !dbg !325
  br label %20, !dbg !326

14:                                               ; preds = %2
  store ptr @.str.6, ptr %6, align 8, !dbg !327
  br label %20, !dbg !328

15:                                               ; preds = %2
  store ptr @.str.7, ptr %6, align 8, !dbg !329
  br label %20, !dbg !330

16:                                               ; preds = %2
  store ptr @.str.8, ptr %6, align 8, !dbg !331
  br label %20, !dbg !332

17:                                               ; preds = %2
  store ptr @.str.9, ptr %6, align 8, !dbg !333
  br label %20, !dbg !334

18:                                               ; preds = %2
  store ptr @.str.10, ptr %6, align 8, !dbg !335
  br label %20, !dbg !336

19:                                               ; preds = %2
  store i32 -1, ptr %5, align 4, !dbg !337
  br label %20, !dbg !338

20:                                               ; preds = %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9
  %21 = load ptr, ptr %4, align 8, !dbg !339
  %22 = icmp ne ptr %21, null, !dbg !339
  br i1 %22, label %23, label %29, !dbg !341

23:                                               ; preds = %20
  %24 = load ptr, ptr %6, align 8, !dbg !342
  %25 = load ptr, ptr %4, align 8, !dbg !344
  %26 = load ptr, ptr %6, align 8, !dbg !345
  %27 = call i64 @strlen(ptr noundef %26) #8, !dbg !346
  %28 = add i64 %27, 1, !dbg !347
  call void @bcopy(ptr noundef %24, ptr noundef %25, i64 noundef %28) #9, !dbg !348
  br label %29, !dbg !349

29:                                               ; preds = %23, %20
  %30 = load i32, ptr %5, align 4, !dbg !350
  ret i32 %30, !dbg !351
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @bcopy(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @turn_random() #0 !dbg !352 {
  %1 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata ptr %1, metadata !356, metadata !DIExpression()), !dbg !357
  store i64 0, ptr %1, align 8, !dbg !357
  %2 = call i32 @RAND_bytes(ptr noundef %1, i32 noundef 8), !dbg !358
  %3 = icmp ne i32 %2, 0, !dbg !358
  br i1 %3, label %6, label %4, !dbg !360

4:                                                ; preds = %0
  %5 = call i64 @random() #9, !dbg !361
  store i64 %5, ptr %1, align 8, !dbg !362
  br label %6, !dbg !363

6:                                                ; preds = %4, %0
  %7 = load i64, ptr %1, align 8, !dbg !364
  ret i64 %7, !dbg !365
}

declare i32 @RAND_bytes(ptr noundef, i32 noundef) #4

; Function Attrs: nounwind
declare i64 @random() #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stun_calculate_hmac(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) #0 !dbg !366 {
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i64, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  store ptr %0, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !371, metadata !DIExpression()), !dbg !372
  store i64 %1, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !373, metadata !DIExpression()), !dbg !374
  store ptr %2, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !375, metadata !DIExpression()), !dbg !376
  store i64 %3, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !377, metadata !DIExpression()), !dbg !378
  store ptr %4, ptr %13, align 8
  call void @llvm.dbg.declare(metadata ptr %13, metadata !379, metadata !DIExpression()), !dbg !380
  store ptr %5, ptr %14, align 8
  call void @llvm.dbg.declare(metadata ptr %14, metadata !381, metadata !DIExpression()), !dbg !382
  store i32 %6, ptr %15, align 4
  call void @llvm.dbg.declare(metadata ptr %15, metadata !383, metadata !DIExpression()), !dbg !384
  call void @ERR_clear_error(), !dbg !385
  br label %16, !dbg !386

16:                                               ; preds = %7
  %17 = load i32, ptr %15, align 4, !dbg !387
  store i32 %17, ptr %15, align 4, !dbg !387
  br label %18, !dbg !387

18:                                               ; preds = %16
  %19 = load i32, ptr %15, align 4, !dbg !389
  %20 = icmp eq i32 %19, 1, !dbg !391
  br i1 %20, label %21, label %34, !dbg !392

21:                                               ; preds = %18
  %22 = call ptr @EVP_sha256(), !dbg !393
  %23 = load ptr, ptr %11, align 8, !dbg !396
  %24 = load i64, ptr %12, align 8, !dbg !397
  %25 = trunc i64 %24 to i32, !dbg !398
  %26 = load ptr, ptr %9, align 8, !dbg !399
  %27 = load i64, ptr %10, align 8, !dbg !400
  %28 = load ptr, ptr %13, align 8, !dbg !401
  %29 = load ptr, ptr %14, align 8, !dbg !402
  %30 = call ptr @HMAC(ptr noundef %22, ptr noundef %23, i32 noundef %25, ptr noundef %26, i64 noundef %27, ptr noundef %28, ptr noundef %29), !dbg !403
  %31 = icmp ne ptr %30, null, !dbg !403
  br i1 %31, label %33, label %32, !dbg !404

32:                                               ; preds = %21
  store i32 -1, ptr %8, align 4, !dbg !405
  br label %82, !dbg !405

33:                                               ; preds = %21
  br label %81, !dbg !407

34:                                               ; preds = %18
  %35 = load i32, ptr %15, align 4, !dbg !408
  %36 = icmp eq i32 %35, 2, !dbg !410
  br i1 %36, label %37, label %50, !dbg !411

37:                                               ; preds = %34
  %38 = call ptr @EVP_sha384(), !dbg !412
  %39 = load ptr, ptr %11, align 8, !dbg !415
  %40 = load i64, ptr %12, align 8, !dbg !416
  %41 = trunc i64 %40 to i32, !dbg !417
  %42 = load ptr, ptr %9, align 8, !dbg !418
  %43 = load i64, ptr %10, align 8, !dbg !419
  %44 = load ptr, ptr %13, align 8, !dbg !420
  %45 = load ptr, ptr %14, align 8, !dbg !421
  %46 = call ptr @HMAC(ptr noundef %38, ptr noundef %39, i32 noundef %41, ptr noundef %42, i64 noundef %43, ptr noundef %44, ptr noundef %45), !dbg !422
  %47 = icmp ne ptr %46, null, !dbg !422
  br i1 %47, label %49, label %48, !dbg !423

48:                                               ; preds = %37
  store i32 -1, ptr %8, align 4, !dbg !424
  br label %82, !dbg !424

49:                                               ; preds = %37
  br label %80, !dbg !426

50:                                               ; preds = %34
  %51 = load i32, ptr %15, align 4, !dbg !427
  %52 = icmp eq i32 %51, 3, !dbg !429
  br i1 %52, label %53, label %66, !dbg !430

53:                                               ; preds = %50
  %54 = call ptr @EVP_sha512(), !dbg !431
  %55 = load ptr, ptr %11, align 8, !dbg !434
  %56 = load i64, ptr %12, align 8, !dbg !435
  %57 = trunc i64 %56 to i32, !dbg !436
  %58 = load ptr, ptr %9, align 8, !dbg !437
  %59 = load i64, ptr %10, align 8, !dbg !438
  %60 = load ptr, ptr %13, align 8, !dbg !439
  %61 = load ptr, ptr %14, align 8, !dbg !440
  %62 = call ptr @HMAC(ptr noundef %54, ptr noundef %55, i32 noundef %57, ptr noundef %58, i64 noundef %59, ptr noundef %60, ptr noundef %61), !dbg !441
  %63 = icmp ne ptr %62, null, !dbg !441
  br i1 %63, label %65, label %64, !dbg !442

64:                                               ; preds = %53
  store i32 -1, ptr %8, align 4, !dbg !443
  br label %82, !dbg !443

65:                                               ; preds = %53
  br label %79, !dbg !445

66:                                               ; preds = %50
  %67 = call ptr @EVP_sha1(), !dbg !446
  %68 = load ptr, ptr %11, align 8, !dbg !448
  %69 = load i64, ptr %12, align 8, !dbg !449
  %70 = trunc i64 %69 to i32, !dbg !450
  %71 = load ptr, ptr %9, align 8, !dbg !451
  %72 = load i64, ptr %10, align 8, !dbg !452
  %73 = load ptr, ptr %13, align 8, !dbg !453
  %74 = load ptr, ptr %14, align 8, !dbg !454
  %75 = call ptr @HMAC(ptr noundef %67, ptr noundef %68, i32 noundef %70, ptr noundef %71, i64 noundef %72, ptr noundef %73, ptr noundef %74), !dbg !455
  %76 = icmp ne ptr %75, null, !dbg !455
  br i1 %76, label %78, label %77, !dbg !456

77:                                               ; preds = %66
  store i32 -1, ptr %8, align 4, !dbg !457
  br label %82, !dbg !457

78:                                               ; preds = %66
  br label %79

79:                                               ; preds = %78, %65
  br label %80

80:                                               ; preds = %79, %49
  br label %81

81:                                               ; preds = %80, %33
  store i32 0, ptr %8, align 4, !dbg !459
  br label %82, !dbg !459

82:                                               ; preds = %81, %77, %64, %48, %32
  %83 = load i32, ptr %8, align 4, !dbg !460
  ret i32 %83, !dbg !460
}

declare void @ERR_clear_error() #4

declare ptr @HMAC(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) #4

declare ptr @EVP_sha256() #4

declare ptr @EVP_sha384() #4

declare ptr @EVP_sha512() #4

declare ptr @EVP_sha1() #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stun_produce_integrity_key_str(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 !dbg !461 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca ptr, align 8
  %18 = alloca i32, align 4
  %19 = alloca ptr, align 8
  %20 = alloca i32, align 4
  %21 = alloca ptr, align 8
  %22 = alloca i32, align 4
  %23 = alloca ptr, align 8
  %24 = alloca i32, align 4
  %25 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !464, metadata !DIExpression()), !dbg !465
  store ptr %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !466, metadata !DIExpression()), !dbg !467
  store ptr %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !468, metadata !DIExpression()), !dbg !469
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !470, metadata !DIExpression()), !dbg !471
  store i32 %4, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !472, metadata !DIExpression()), !dbg !473
  call void @llvm.dbg.declare(metadata ptr %11, metadata !474, metadata !DIExpression()), !dbg !475
  call void @ERR_clear_error(), !dbg !476
  br label %26, !dbg !477

26:                                               ; preds = %5
  %27 = load i32, ptr %10, align 4, !dbg !478
  store i32 %27, ptr %10, align 4, !dbg !478
  br label %28, !dbg !478

28:                                               ; preds = %26
  call void @llvm.dbg.declare(metadata ptr %12, metadata !480, metadata !DIExpression()), !dbg !481
  %29 = load ptr, ptr %6, align 8, !dbg !482
  %30 = call i64 @strlen(ptr noundef %29) #8, !dbg !483
  store i64 %30, ptr %12, align 8, !dbg !481
  call void @llvm.dbg.declare(metadata ptr %13, metadata !484, metadata !DIExpression()), !dbg !485
  %31 = load ptr, ptr %7, align 8, !dbg !486
  %32 = call i64 @strlen(ptr noundef %31) #8, !dbg !487
  store i64 %32, ptr %13, align 8, !dbg !485
  call void @llvm.dbg.declare(metadata ptr %14, metadata !488, metadata !DIExpression()), !dbg !489
  %33 = load ptr, ptr %8, align 8, !dbg !490
  %34 = call i64 @strlen(ptr noundef %33) #8, !dbg !491
  store i64 %34, ptr %14, align 8, !dbg !489
  call void @llvm.dbg.declare(metadata ptr %15, metadata !492, metadata !DIExpression()), !dbg !493
  %35 = load i64, ptr %12, align 8, !dbg !494
  %36 = add i64 %35, 1, !dbg !495
  %37 = load i64, ptr %13, align 8, !dbg !496
  %38 = add i64 %36, %37, !dbg !497
  %39 = add i64 %38, 1, !dbg !498
  %40 = load i64, ptr %14, align 8, !dbg !499
  %41 = add i64 %39, %40, !dbg !500
  %42 = add i64 %41, 1, !dbg !501
  %43 = add i64 %42, 10, !dbg !502
  store i64 %43, ptr %15, align 8, !dbg !493
  call void @llvm.dbg.declare(metadata ptr %16, metadata !503, metadata !DIExpression()), !dbg !504
  %44 = load i64, ptr %12, align 8, !dbg !505
  %45 = add i64 %44, 1, !dbg !506
  %46 = load i64, ptr %13, align 8, !dbg !507
  %47 = add i64 %45, %46, !dbg !508
  %48 = add i64 %47, 1, !dbg !509
  %49 = load i64, ptr %14, align 8, !dbg !510
  %50 = add i64 %48, %49, !dbg !511
  store i64 %50, ptr %16, align 8, !dbg !504
  call void @llvm.dbg.declare(metadata ptr %17, metadata !512, metadata !DIExpression()), !dbg !513
  %51 = load i64, ptr %15, align 8, !dbg !514
  %52 = add i64 %51, 1, !dbg !515
  %53 = call noalias ptr @malloc(i64 noundef %52) #10, !dbg !516
  store ptr %53, ptr %17, align 8, !dbg !513
  %54 = load ptr, ptr %17, align 8, !dbg !517
  %55 = load ptr, ptr %6, align 8, !dbg !518
  %56 = load i64, ptr %15, align 8, !dbg !519
  %57 = call ptr @strncpy(ptr noundef %54, ptr noundef %55, i64 noundef %56) #9, !dbg !520
  %58 = load ptr, ptr %17, align 8, !dbg !521
  %59 = load i64, ptr %12, align 8, !dbg !522
  %60 = getelementptr inbounds i8, ptr %58, i64 %59, !dbg !521
  store i8 58, ptr %60, align 1, !dbg !523
  %61 = load ptr, ptr %17, align 8, !dbg !524
  %62 = load i64, ptr %12, align 8, !dbg !525
  %63 = getelementptr inbounds i8, ptr %61, i64 %62, !dbg !526
  %64 = getelementptr inbounds i8, ptr %63, i64 1, !dbg !527
  %65 = load ptr, ptr %7, align 8, !dbg !528
  %66 = load i64, ptr %15, align 8, !dbg !529
  %67 = load i64, ptr %12, align 8, !dbg !530
  %68 = sub i64 %66, %67, !dbg !531
  %69 = sub i64 %68, 1, !dbg !532
  %70 = call ptr @strncpy(ptr noundef %64, ptr noundef %65, i64 noundef %69) #9, !dbg !533
  %71 = load ptr, ptr %17, align 8, !dbg !534
  %72 = load i64, ptr %12, align 8, !dbg !535
  %73 = add i64 %72, 1, !dbg !536
  %74 = load i64, ptr %13, align 8, !dbg !537
  %75 = add i64 %73, %74, !dbg !538
  %76 = getelementptr inbounds i8, ptr %71, i64 %75, !dbg !534
  store i8 58, ptr %76, align 1, !dbg !539
  %77 = load ptr, ptr %17, align 8, !dbg !540
  %78 = load i64, ptr %12, align 8, !dbg !541
  %79 = getelementptr inbounds i8, ptr %77, i64 %78, !dbg !542
  %80 = getelementptr inbounds i8, ptr %79, i64 1, !dbg !543
  %81 = load i64, ptr %13, align 8, !dbg !544
  %82 = getelementptr inbounds i8, ptr %80, i64 %81, !dbg !545
  %83 = getelementptr inbounds i8, ptr %82, i64 1, !dbg !546
  %84 = load ptr, ptr %8, align 8, !dbg !547
  %85 = load i64, ptr %15, align 8, !dbg !548
  %86 = load i64, ptr %12, align 8, !dbg !549
  %87 = sub i64 %85, %86, !dbg !550
  %88 = sub i64 %87, 1, !dbg !551
  %89 = load i64, ptr %13, align 8, !dbg !552
  %90 = sub i64 %88, %89, !dbg !553
  %91 = sub i64 %90, 1, !dbg !554
  %92 = call ptr @strncpy(ptr noundef %83, ptr noundef %84, i64 noundef %91) #9, !dbg !555
  %93 = load ptr, ptr %17, align 8, !dbg !556
  %94 = load i64, ptr %16, align 8, !dbg !557
  %95 = getelementptr inbounds i8, ptr %93, i64 %94, !dbg !556
  store i8 0, ptr %95, align 1, !dbg !558
  %96 = load i32, ptr %10, align 4, !dbg !559
  %97 = icmp eq i32 %96, 1, !dbg !561
  br i1 %97, label %98, label %111, !dbg !562

98:                                               ; preds = %28
  call void @llvm.dbg.declare(metadata ptr %18, metadata !563, metadata !DIExpression()), !dbg !565
  store i32 0, ptr %18, align 4, !dbg !565
  call void @llvm.dbg.declare(metadata ptr %19, metadata !566, metadata !DIExpression()), !dbg !571
  %99 = call ptr @EVP_MD_CTX_new(), !dbg !572
  store ptr %99, ptr %19, align 8, !dbg !571
  %100 = load ptr, ptr %19, align 8, !dbg !573
  %101 = call ptr @EVP_sha256(), !dbg !574
  %102 = call i32 @EVP_DigestInit(ptr noundef %100, ptr noundef %101), !dbg !575
  %103 = load ptr, ptr %19, align 8, !dbg !576
  %104 = load ptr, ptr %17, align 8, !dbg !577
  %105 = load i64, ptr %16, align 8, !dbg !578
  %106 = call i32 @EVP_DigestUpdate(ptr noundef %103, ptr noundef %104, i64 noundef %105), !dbg !579
  %107 = load ptr, ptr %19, align 8, !dbg !580
  %108 = load ptr, ptr %9, align 8, !dbg !581
  %109 = call i32 @EVP_DigestFinal(ptr noundef %107, ptr noundef %108, ptr noundef %18), !dbg !582
  %110 = load ptr, ptr %19, align 8, !dbg !583
  call void @EVP_MD_CTX_free(ptr noundef %110), !dbg !584
  store i32 0, ptr %11, align 4, !dbg !585
  br label %158, !dbg !586

111:                                              ; preds = %28
  %112 = load i32, ptr %10, align 4, !dbg !587
  %113 = icmp eq i32 %112, 2, !dbg !589
  br i1 %113, label %114, label %127, !dbg !590

114:                                              ; preds = %111
  call void @llvm.dbg.declare(metadata ptr %20, metadata !591, metadata !DIExpression()), !dbg !593
  store i32 0, ptr %20, align 4, !dbg !593
  call void @llvm.dbg.declare(metadata ptr %21, metadata !594, metadata !DIExpression()), !dbg !595
  %115 = call ptr @EVP_MD_CTX_new(), !dbg !596
  store ptr %115, ptr %21, align 8, !dbg !595
  %116 = load ptr, ptr %21, align 8, !dbg !597
  %117 = call ptr @EVP_sha384(), !dbg !598
  %118 = call i32 @EVP_DigestInit(ptr noundef %116, ptr noundef %117), !dbg !599
  %119 = load ptr, ptr %21, align 8, !dbg !600
  %120 = load ptr, ptr %17, align 8, !dbg !601
  %121 = load i64, ptr %16, align 8, !dbg !602
  %122 = call i32 @EVP_DigestUpdate(ptr noundef %119, ptr noundef %120, i64 noundef %121), !dbg !603
  %123 = load ptr, ptr %21, align 8, !dbg !604
  %124 = load ptr, ptr %9, align 8, !dbg !605
  %125 = call i32 @EVP_DigestFinal(ptr noundef %123, ptr noundef %124, ptr noundef %20), !dbg !606
  %126 = load ptr, ptr %21, align 8, !dbg !607
  call void @EVP_MD_CTX_free(ptr noundef %126), !dbg !608
  store i32 0, ptr %11, align 4, !dbg !609
  br label %157, !dbg !610

127:                                              ; preds = %111
  %128 = load i32, ptr %10, align 4, !dbg !611
  %129 = icmp eq i32 %128, 3, !dbg !613
  br i1 %129, label %130, label %143, !dbg !614

130:                                              ; preds = %127
  call void @llvm.dbg.declare(metadata ptr %22, metadata !615, metadata !DIExpression()), !dbg !617
  store i32 0, ptr %22, align 4, !dbg !617
  call void @llvm.dbg.declare(metadata ptr %23, metadata !618, metadata !DIExpression()), !dbg !619
  %131 = call ptr @EVP_MD_CTX_new(), !dbg !620
  store ptr %131, ptr %23, align 8, !dbg !619
  %132 = load ptr, ptr %23, align 8, !dbg !621
  %133 = call ptr @EVP_sha512(), !dbg !622
  %134 = call i32 @EVP_DigestInit(ptr noundef %132, ptr noundef %133), !dbg !623
  %135 = load ptr, ptr %23, align 8, !dbg !624
  %136 = load ptr, ptr %17, align 8, !dbg !625
  %137 = load i64, ptr %16, align 8, !dbg !626
  %138 = call i32 @EVP_DigestUpdate(ptr noundef %135, ptr noundef %136, i64 noundef %137), !dbg !627
  %139 = load ptr, ptr %23, align 8, !dbg !628
  %140 = load ptr, ptr %9, align 8, !dbg !629
  %141 = call i32 @EVP_DigestFinal(ptr noundef %139, ptr noundef %140, ptr noundef %22), !dbg !630
  %142 = load ptr, ptr %23, align 8, !dbg !631
  call void @EVP_MD_CTX_free(ptr noundef %142), !dbg !632
  store i32 0, ptr %11, align 4, !dbg !633
  br label %156, !dbg !634

143:                                              ; preds = %127
  call void @llvm.dbg.declare(metadata ptr %24, metadata !635, metadata !DIExpression()), !dbg !637
  store i32 0, ptr %24, align 4, !dbg !637
  call void @llvm.dbg.declare(metadata ptr %25, metadata !638, metadata !DIExpression()), !dbg !639
  %144 = call ptr @EVP_MD_CTX_new(), !dbg !640
  store ptr %144, ptr %25, align 8, !dbg !639
  %145 = load ptr, ptr %25, align 8, !dbg !641
  %146 = call ptr @EVP_md5(), !dbg !642
  %147 = call i32 @EVP_DigestInit_ex(ptr noundef %145, ptr noundef %146, ptr noundef null), !dbg !643
  %148 = load ptr, ptr %25, align 8, !dbg !644
  %149 = load ptr, ptr %17, align 8, !dbg !645
  %150 = load i64, ptr %16, align 8, !dbg !646
  %151 = call i32 @EVP_DigestUpdate(ptr noundef %148, ptr noundef %149, i64 noundef %150), !dbg !647
  %152 = load ptr, ptr %25, align 8, !dbg !648
  %153 = load ptr, ptr %9, align 8, !dbg !649
  %154 = call i32 @EVP_DigestFinal(ptr noundef %152, ptr noundef %153, ptr noundef %24), !dbg !650
  %155 = load ptr, ptr %25, align 8, !dbg !651
  call void @EVP_MD_CTX_free(ptr noundef %155), !dbg !652
  store i32 0, ptr %11, align 4, !dbg !653
  br label %156

156:                                              ; preds = %143, %130
  br label %157

157:                                              ; preds = %156, %114
  br label %158

158:                                              ; preds = %157, %98
  %159 = load ptr, ptr %17, align 8, !dbg !654
  call void @free(ptr noundef %159) #9, !dbg !655
  %160 = load i32, ptr %11, align 4, !dbg !656
  ret i32 %160, !dbg !657
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #5

; Function Attrs: nounwind
declare ptr @strncpy(ptr noundef, ptr noundef, i64 noundef) #2

declare ptr @EVP_MD_CTX_new() #4

declare i32 @EVP_DigestInit(ptr noundef, ptr noundef) #4

declare i32 @EVP_DigestUpdate(ptr noundef, ptr noundef, i64 noundef) #4

declare i32 @EVP_DigestFinal(ptr noundef, ptr noundef, ptr noundef) #4

declare void @EVP_MD_CTX_free(ptr noundef) #4

declare i32 @EVP_DigestInit_ex(ptr noundef, ptr noundef, ptr noundef) #4

declare ptr @EVP_md5() #4

; Function Attrs: nounwind
declare void @free(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @generate_new_enc_password(ptr noundef %0, ptr noundef %1) #0 !dbg !658 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !661, metadata !DIExpression()), !dbg !662
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !663, metadata !DIExpression()), !dbg !664
  %5 = load ptr, ptr %3, align 8, !dbg !665
  %6 = load ptr, ptr %4, align 8, !dbg !666
  call void @generate_enc_password(ptr noundef %5, ptr noundef %6, ptr noundef null), !dbg !667
  ret void, !dbg !668
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generate_enc_password(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !669 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca [9 x i8], align 1
  %8 = alloca [17 x i8], align 16
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca [129 x i8], align 16
  %12 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !672, metadata !DIExpression()), !dbg !673
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !674, metadata !DIExpression()), !dbg !675
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !676, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.declare(metadata ptr %7, metadata !678, metadata !DIExpression()), !dbg !680
  %13 = load ptr, ptr %6, align 8, !dbg !681
  %14 = icmp ne ptr %13, null, !dbg !681
  br i1 %14, label %17, label %15, !dbg !683

15:                                               ; preds = %3
  %16 = getelementptr inbounds [9 x i8], ptr %7, i64 0, i64 0, !dbg !684
  call void @generate_random_nonce(ptr noundef %16, i64 noundef 8), !dbg !686
  br label %21, !dbg !687

17:                                               ; preds = %3
  %18 = load ptr, ptr %6, align 8, !dbg !688
  %19 = getelementptr inbounds [9 x i8], ptr %7, i64 0, i64 0, !dbg !690
  call void @bcopy(ptr noundef %18, ptr noundef %19, i64 noundef 8) #9, !dbg !691
  %20 = getelementptr inbounds [9 x i8], ptr %7, i64 0, i64 8, !dbg !692
  store i8 0, ptr %20, align 1, !dbg !693
  br label %21

21:                                               ; preds = %17, %15
  call void @llvm.dbg.declare(metadata ptr %8, metadata !694, metadata !DIExpression()), !dbg !696
  %22 = getelementptr inbounds [9 x i8], ptr %7, i64 0, i64 0, !dbg !697
  %23 = getelementptr inbounds [17 x i8], ptr %8, i64 0, i64 0, !dbg !698
  call void @readable_string(ptr noundef %22, ptr noundef %23, i64 noundef 8), !dbg !699
  %24 = load ptr, ptr %5, align 8, !dbg !700
  %25 = getelementptr inbounds i8, ptr %24, i64 0, !dbg !700
  store i8 36, ptr %25, align 1, !dbg !701
  %26 = load ptr, ptr %5, align 8, !dbg !702
  %27 = getelementptr inbounds i8, ptr %26, i64 1, !dbg !702
  store i8 53, ptr %27, align 1, !dbg !703
  %28 = load ptr, ptr %5, align 8, !dbg !704
  %29 = getelementptr inbounds i8, ptr %28, i64 2, !dbg !704
  store i8 36, ptr %29, align 1, !dbg !705
  %30 = getelementptr inbounds [17 x i8], ptr %8, i64 0, i64 0, !dbg !706
  %31 = load ptr, ptr %5, align 8, !dbg !707
  %32 = getelementptr inbounds i8, ptr %31, i64 3, !dbg !708
  call void @bcopy(ptr noundef %30, ptr noundef %32, i64 noundef 16) #9, !dbg !709
  %33 = load ptr, ptr %5, align 8, !dbg !710
  %34 = getelementptr inbounds i8, ptr %33, i64 19, !dbg !710
  store i8 36, ptr %34, align 1, !dbg !711
  call void @llvm.dbg.declare(metadata ptr %9, metadata !712, metadata !DIExpression()), !dbg !713
  %35 = load ptr, ptr %5, align 8, !dbg !714
  %36 = getelementptr inbounds i8, ptr %35, i64 3, !dbg !715
  %37 = getelementptr inbounds i8, ptr %36, i64 8, !dbg !716
  %38 = getelementptr inbounds i8, ptr %37, i64 8, !dbg !717
  %39 = getelementptr inbounds i8, ptr %38, i64 1, !dbg !718
  store ptr %39, ptr %9, align 8, !dbg !713
  call void @llvm.dbg.declare(metadata ptr %10, metadata !719, metadata !DIExpression()), !dbg !721
  %40 = call ptr @EVP_MD_CTX_new(), !dbg !722
  store ptr %40, ptr %10, align 8, !dbg !721
  %41 = load ptr, ptr %10, align 8, !dbg !723
  %42 = call ptr @EVP_sha256(), !dbg !724
  %43 = call i32 @EVP_DigestInit(ptr noundef %41, ptr noundef %42), !dbg !725
  %44 = load ptr, ptr %10, align 8, !dbg !726
  %45 = getelementptr inbounds [9 x i8], ptr %7, i64 0, i64 0, !dbg !727
  %46 = call i32 @EVP_DigestUpdate(ptr noundef %44, ptr noundef %45, i64 noundef 8), !dbg !728
  %47 = load ptr, ptr %10, align 8, !dbg !729
  %48 = load ptr, ptr %4, align 8, !dbg !730
  %49 = load ptr, ptr %4, align 8, !dbg !731
  %50 = call i64 @strlen(ptr noundef %49) #8, !dbg !732
  %51 = call i32 @EVP_DigestUpdate(ptr noundef %47, ptr noundef %48, i64 noundef %50), !dbg !733
  call void @llvm.dbg.declare(metadata ptr %11, metadata !734, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.declare(metadata ptr %12, metadata !740, metadata !DIExpression()), !dbg !741
  store i32 0, ptr %12, align 4, !dbg !741
  %52 = load ptr, ptr %10, align 8, !dbg !742
  %53 = getelementptr inbounds [129 x i8], ptr %11, i64 0, i64 0, !dbg !743
  %54 = call i32 @EVP_DigestFinal(ptr noundef %52, ptr noundef %53, ptr noundef %12), !dbg !744
  %55 = getelementptr inbounds [129 x i8], ptr %11, i64 0, i64 0, !dbg !745
  %56 = load ptr, ptr %9, align 8, !dbg !746
  %57 = load i32, ptr %12, align 4, !dbg !747
  %58 = zext i32 %57 to i64, !dbg !747
  call void @readable_string(ptr noundef %55, ptr noundef %56, i64 noundef %58), !dbg !748
  %59 = load ptr, ptr %10, align 8, !dbg !749
  call void @EVP_MD_CTX_free(ptr noundef %59), !dbg !750
  ret void, !dbg !751
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_password(ptr noundef %0, ptr noundef %1) #0 !dbg !752 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca [8 x i8], align 1
  %7 = alloca [257 x i8], align 16
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !755, metadata !DIExpression()), !dbg !756
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !757, metadata !DIExpression()), !dbg !758
  call void @llvm.dbg.declare(metadata ptr %6, metadata !759, metadata !DIExpression()), !dbg !761
  %8 = load ptr, ptr %5, align 8, !dbg !762
  %9 = getelementptr inbounds [8 x i8], ptr %6, i64 0, i64 0, !dbg !764
  %10 = call i32 @encrypted_password(ptr noundef %8, ptr noundef %9), !dbg !765
  %11 = icmp ne i32 %10, 0, !dbg !765
  br i1 %11, label %16, label %12, !dbg !766

12:                                               ; preds = %2
  %13 = load ptr, ptr %4, align 8, !dbg !767
  %14 = load ptr, ptr %5, align 8, !dbg !769
  %15 = call i32 @strcmp(ptr noundef %13, ptr noundef %14) #8, !dbg !770
  store i32 %15, ptr %3, align 4, !dbg !771
  br label %23, !dbg !771

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %7, metadata !772, metadata !DIExpression()), !dbg !776
  %17 = load ptr, ptr %4, align 8, !dbg !777
  %18 = getelementptr inbounds [257 x i8], ptr %7, i64 0, i64 0, !dbg !778
  %19 = getelementptr inbounds [8 x i8], ptr %6, i64 0, i64 0, !dbg !779
  call void @generate_enc_password(ptr noundef %17, ptr noundef %18, ptr noundef %19), !dbg !780
  %20 = getelementptr inbounds [257 x i8], ptr %7, i64 0, i64 0, !dbg !781
  %21 = load ptr, ptr %5, align 8, !dbg !782
  %22 = call i32 @strcmp(ptr noundef %20, ptr noundef %21) #8, !dbg !783
  store i32 %22, ptr %3, align 4, !dbg !784
  br label %23, !dbg !784

23:                                               ; preds = %16, %12
  %24 = load i32, ptr %3, align 4, !dbg !785
  ret i32 %24, !dbg !785
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encrypted_password(ptr noundef %0, ptr noundef %1) #0 !dbg !786 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca [3 x i8], align 1
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !789, metadata !DIExpression()), !dbg !790
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !791, metadata !DIExpression()), !dbg !792
  call void @llvm.dbg.declare(metadata ptr %6, metadata !793, metadata !DIExpression()), !dbg !794
  store i64 52, ptr %6, align 8, !dbg !794
  %10 = load ptr, ptr %4, align 8, !dbg !795
  %11 = call i64 @strlen(ptr noundef %10) #8, !dbg !797
  %12 = load i64, ptr %6, align 8, !dbg !798
  %13 = icmp uge i64 %11, %12, !dbg !799
  br i1 %13, label %14, label %69, !dbg !800

14:                                               ; preds = %2
  %15 = load ptr, ptr %4, align 8, !dbg !801
  %16 = getelementptr inbounds i8, ptr %15, i64 0, !dbg !801
  %17 = load i8, ptr %16, align 1, !dbg !801
  %18 = sext i8 %17 to i32, !dbg !801
  %19 = icmp eq i32 %18, 36, !dbg !804
  br i1 %19, label %20, label %68, !dbg !805

20:                                               ; preds = %14
  %21 = load ptr, ptr %4, align 8, !dbg !806
  %22 = getelementptr inbounds i8, ptr %21, i64 1, !dbg !806
  %23 = load i8, ptr %22, align 1, !dbg !806
  %24 = sext i8 %23 to i32, !dbg !806
  %25 = icmp eq i32 %24, 53, !dbg !807
  br i1 %25, label %26, label %68, !dbg !808

26:                                               ; preds = %20
  %27 = load ptr, ptr %4, align 8, !dbg !809
  %28 = getelementptr inbounds i8, ptr %27, i64 2, !dbg !809
  %29 = load i8, ptr %28, align 1, !dbg !809
  %30 = sext i8 %29 to i32, !dbg !809
  %31 = icmp eq i32 %30, 36, !dbg !810
  br i1 %31, label %32, label %68, !dbg !811

32:                                               ; preds = %26
  %33 = load ptr, ptr %4, align 8, !dbg !812
  %34 = getelementptr inbounds i8, ptr %33, i64 19, !dbg !812
  %35 = load i8, ptr %34, align 1, !dbg !812
  %36 = sext i8 %35 to i32, !dbg !812
  %37 = icmp eq i32 %36, 36, !dbg !813
  br i1 %37, label %38, label %68, !dbg !814

38:                                               ; preds = %32
  call void @llvm.dbg.declare(metadata ptr %7, metadata !815, metadata !DIExpression()), !dbg !817
  store i64 0, ptr %7, align 8, !dbg !817
  store i64 0, ptr %7, align 8, !dbg !818
  br label %39, !dbg !820

39:                                               ; preds = %64, %38
  %40 = load i64, ptr %7, align 8, !dbg !821
  %41 = icmp ult i64 %40, 8, !dbg !823
  br i1 %41, label %42, label %67, !dbg !824

42:                                               ; preds = %39
  call void @llvm.dbg.declare(metadata ptr %8, metadata !825, metadata !DIExpression()), !dbg !827
  %43 = load ptr, ptr %4, align 8, !dbg !828
  %44 = getelementptr inbounds i8, ptr %43, i64 3, !dbg !829
  %45 = load i64, ptr %7, align 8, !dbg !830
  %46 = getelementptr inbounds i8, ptr %44, i64 %45, !dbg !831
  %47 = load i64, ptr %7, align 8, !dbg !832
  %48 = getelementptr inbounds i8, ptr %46, i64 %47, !dbg !833
  store ptr %48, ptr %8, align 8, !dbg !827
  call void @llvm.dbg.declare(metadata ptr %9, metadata !834, metadata !DIExpression()), !dbg !835
  %49 = load ptr, ptr %8, align 8, !dbg !836
  %50 = getelementptr inbounds i8, ptr %49, i64 0, !dbg !836
  %51 = load i8, ptr %50, align 1, !dbg !836
  %52 = getelementptr inbounds [3 x i8], ptr %9, i64 0, i64 0, !dbg !837
  store i8 %51, ptr %52, align 1, !dbg !838
  %53 = load ptr, ptr %8, align 8, !dbg !839
  %54 = getelementptr inbounds i8, ptr %53, i64 1, !dbg !839
  %55 = load i8, ptr %54, align 1, !dbg !839
  %56 = getelementptr inbounds [3 x i8], ptr %9, i64 0, i64 1, !dbg !840
  store i8 %55, ptr %56, align 1, !dbg !841
  %57 = getelementptr inbounds [3 x i8], ptr %9, i64 0, i64 2, !dbg !842
  store i8 0, ptr %57, align 1, !dbg !843
  %58 = getelementptr inbounds [3 x i8], ptr %9, i64 0, i64 0, !dbg !844
  %59 = call i64 @strtoul(ptr noundef %58, ptr noundef null, i32 noundef 16) #9, !dbg !845
  %60 = trunc i64 %59 to i8, !dbg !846
  %61 = load ptr, ptr %5, align 8, !dbg !847
  %62 = load i64, ptr %7, align 8, !dbg !848
  %63 = getelementptr inbounds i8, ptr %61, i64 %62, !dbg !847
  store i8 %60, ptr %63, align 1, !dbg !849
  br label %64, !dbg !850

64:                                               ; preds = %42
  %65 = load i64, ptr %7, align 8, !dbg !851
  %66 = add i64 %65, 1, !dbg !851
  store i64 %66, ptr %7, align 8, !dbg !851
  br label %39, !dbg !852, !llvm.loop !853

67:                                               ; preds = %39
  store i32 1, ptr %3, align 4, !dbg !856
  br label %70, !dbg !856

68:                                               ; preds = %32, %26, %20, %14
  br label %69, !dbg !857

69:                                               ; preds = %68, %2
  store i32 0, ptr %3, align 4, !dbg !858
  br label %70, !dbg !858

70:                                               ; preds = %69, %67
  %71 = load i32, ptr %3, align 4, !dbg !859
  ret i32 %71, !dbg !859
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stun_get_command_message_len_str(ptr noundef %0, i64 noundef %1) #0 !dbg !860 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !863, metadata !DIExpression()), !dbg !864
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !865, metadata !DIExpression()), !dbg !866
  %7 = load i64, ptr %5, align 8, !dbg !867
  %8 = icmp ult i64 %7, 20, !dbg !869
  br i1 %8, label %9, label %10, !dbg !870

9:                                                ; preds = %2
  store i32 -1, ptr %3, align 4, !dbg !871
  br label %25, !dbg !871

10:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %6, metadata !872, metadata !DIExpression()), !dbg !873
  %11 = load ptr, ptr %4, align 8, !dbg !874
  %12 = getelementptr inbounds i16, ptr %11, i64 1, !dbg !874
  %13 = load i16, ptr %12, align 2, !dbg !874
  %14 = call zeroext i16 @ntohs(i16 noundef zeroext %13) #11, !dbg !874
  %15 = zext i16 %14 to i32, !dbg !874
  %16 = add nsw i32 %15, 20, !dbg !875
  %17 = sext i32 %16 to i64, !dbg !876
  store i64 %17, ptr %6, align 8, !dbg !873
  %18 = load i64, ptr %6, align 8, !dbg !877
  %19 = load i64, ptr %5, align 8, !dbg !879
  %20 = icmp ugt i64 %18, %19, !dbg !880
  br i1 %20, label %21, label %22, !dbg !881

21:                                               ; preds = %10
  store i32 -1, ptr %3, align 4, !dbg !882
  br label %25, !dbg !882

22:                                               ; preds = %10
  %23 = load i64, ptr %6, align 8, !dbg !884
  %24 = trunc i64 %23 to i32, !dbg !884
  store i32 %24, ptr %3, align 4, !dbg !885
  br label %25, !dbg !885

25:                                               ; preds = %22, %21, %9
  %26 = load i32, ptr %3, align 4, !dbg !886
  ret i32 %26, !dbg !886
}

; Function Attrs: nounwind willreturn memory(none)
declare zeroext i16 @ntohs(i16 noundef zeroext) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @stun_make_type(i16 noundef zeroext %0) #0 !dbg !887 {
  %2 = alloca i16, align 2
  store i16 %0, ptr %2, align 2
  call void @llvm.dbg.declare(metadata ptr %2, metadata !890, metadata !DIExpression()), !dbg !891
  %3 = load i16, ptr %2, align 2, !dbg !892
  %4 = zext i16 %3 to i32, !dbg !892
  %5 = and i32 %4, 4095, !dbg !893
  %6 = trunc i32 %5 to i16, !dbg !892
  store i16 %6, ptr %2, align 2, !dbg !894
  %7 = load i16, ptr %2, align 2, !dbg !895
  %8 = zext i16 %7 to i32, !dbg !895
  %9 = and i32 %8, 15, !dbg !896
  %10 = load i16, ptr %2, align 2, !dbg !897
  %11 = zext i16 %10 to i32, !dbg !897
  %12 = and i32 %11, 112, !dbg !898
  %13 = shl i32 %12, 1, !dbg !899
  %14 = or i32 %9, %13, !dbg !900
  %15 = load i16, ptr %2, align 2, !dbg !901
  %16 = zext i16 %15 to i32, !dbg !901
  %17 = and i32 %16, 896, !dbg !902
  %18 = shl i32 %17, 2, !dbg !903
  %19 = or i32 %14, %18, !dbg !904
  %20 = load i16, ptr %2, align 2, !dbg !905
  %21 = zext i16 %20 to i32, !dbg !905
  %22 = and i32 %21, 3072, !dbg !906
  %23 = shl i32 %22, 2, !dbg !907
  %24 = or i32 %19, %23, !dbg !908
  %25 = trunc i32 %24 to i16, !dbg !909
  ret i16 %25, !dbg !910
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @stun_get_method_str(ptr noundef %0, i64 noundef %1) #0 !dbg !911 {
  %3 = alloca i16, align 2
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i16, align 2
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !914, metadata !DIExpression()), !dbg !915
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !916, metadata !DIExpression()), !dbg !917
  %7 = load ptr, ptr %4, align 8, !dbg !918
  %8 = icmp ne ptr %7, null, !dbg !918
  br i1 %8, label %9, label %12, !dbg !920

9:                                                ; preds = %2
  %10 = load i64, ptr %5, align 8, !dbg !921
  %11 = icmp ult i64 %10, 2, !dbg !922
  br i1 %11, label %12, label %13, !dbg !923

12:                                               ; preds = %9, %2
  store i16 -1, ptr %3, align 2, !dbg !924
  br label %37, !dbg !924

13:                                               ; preds = %9
  call void @llvm.dbg.declare(metadata ptr %6, metadata !925, metadata !DIExpression()), !dbg !926
  %14 = load ptr, ptr %4, align 8, !dbg !927
  %15 = getelementptr inbounds i16, ptr %14, i64 0, !dbg !927
  %16 = load i16, ptr %15, align 2, !dbg !927
  %17 = call zeroext i16 @ntohs(i16 noundef zeroext %16) #11, !dbg !927
  store i16 %17, ptr %6, align 2, !dbg !926
  %18 = load i16, ptr %6, align 2, !dbg !928
  %19 = zext i16 %18 to i32, !dbg !928
  %20 = and i32 %19, 15, !dbg !929
  %21 = load i16, ptr %6, align 2, !dbg !930
  %22 = zext i16 %21 to i32, !dbg !930
  %23 = and i32 %22, 224, !dbg !931
  %24 = ashr i32 %23, 1, !dbg !932
  %25 = or i32 %20, %24, !dbg !933
  %26 = load i16, ptr %6, align 2, !dbg !934
  %27 = zext i16 %26 to i32, !dbg !934
  %28 = and i32 %27, 3584, !dbg !935
  %29 = ashr i32 %28, 2, !dbg !936
  %30 = or i32 %25, %29, !dbg !937
  %31 = load i16, ptr %6, align 2, !dbg !938
  %32 = zext i16 %31 to i32, !dbg !938
  %33 = and i32 %32, 12288, !dbg !939
  %34 = ashr i32 %33, 2, !dbg !940
  %35 = or i32 %30, %34, !dbg !941
  %36 = trunc i32 %35 to i16, !dbg !942
  store i16 %36, ptr %3, align 2, !dbg !943
  br label %37, !dbg !943

37:                                               ; preds = %13, %12
  %38 = load i16, ptr %3, align 2, !dbg !944
  ret i16 %38, !dbg !944
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @stun_get_msg_type_str(ptr noundef %0, i64 noundef %1) #0 !dbg !945 {
  %3 = alloca i16, align 2
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !946, metadata !DIExpression()), !dbg !947
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !948, metadata !DIExpression()), !dbg !949
  %6 = load ptr, ptr %4, align 8, !dbg !950
  %7 = icmp ne ptr %6, null, !dbg !950
  br i1 %7, label %8, label %11, !dbg !952

8:                                                ; preds = %2
  %9 = load i64, ptr %5, align 8, !dbg !953
  %10 = icmp ult i64 %9, 2, !dbg !954
  br i1 %10, label %11, label %12, !dbg !955

11:                                               ; preds = %8, %2
  store i16 -1, ptr %3, align 2, !dbg !956
  br label %20, !dbg !956

12:                                               ; preds = %8
  %13 = load ptr, ptr %4, align 8, !dbg !957
  %14 = getelementptr inbounds i16, ptr %13, i64 0, !dbg !957
  %15 = load i16, ptr %14, align 2, !dbg !957
  %16 = call zeroext i16 @ntohs(i16 noundef zeroext %15) #11, !dbg !957
  %17 = zext i16 %16 to i32, !dbg !958
  %18 = and i32 %17, 16383, !dbg !959
  %19 = trunc i32 %18 to i16, !dbg !960
  store i16 %19, ptr %3, align 2, !dbg !961
  br label %20, !dbg !961

20:                                               ; preds = %12, %11
  %21 = load i16, ptr %3, align 2, !dbg !962
  ret i16 %21, !dbg !962
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_channel_msg_str(ptr noundef %0, i64 noundef %1) #0 !dbg !963 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !964, metadata !DIExpression()), !dbg !965
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !966, metadata !DIExpression()), !dbg !967
  %5 = load ptr, ptr %3, align 8, !dbg !968
  %6 = icmp ne ptr %5, null, !dbg !968
  br i1 %6, label %7, label %26, !dbg !969

7:                                                ; preds = %2
  %8 = load i64, ptr %4, align 8, !dbg !970
  %9 = icmp uge i64 %8, 4, !dbg !971
  br i1 %9, label %10, label %26, !dbg !972

10:                                               ; preds = %7
  %11 = load ptr, ptr %3, align 8, !dbg !973
  %12 = getelementptr inbounds i16, ptr %11, i64 0, !dbg !973
  %13 = load i16, ptr %12, align 2, !dbg !973
  %14 = call zeroext i16 @ntohs(i16 noundef zeroext %13) #11, !dbg !973
  %15 = zext i16 %14 to i32, !dbg !973
  %16 = icmp sge i32 %15, 16384, !dbg !973
  br i1 %16, label %17, label %24, !dbg !973

17:                                               ; preds = %10
  %18 = load ptr, ptr %3, align 8, !dbg !973
  %19 = getelementptr inbounds i16, ptr %18, i64 0, !dbg !973
  %20 = load i16, ptr %19, align 2, !dbg !973
  %21 = call zeroext i16 @ntohs(i16 noundef zeroext %20) #11, !dbg !973
  %22 = zext i16 %21 to i32, !dbg !973
  %23 = icmp sle i32 %22, 32767, !dbg !973
  br label %24

24:                                               ; preds = %17, %10
  %25 = phi i1 [ false, %10 ], [ %23, %17 ], !dbg !974
  br label %26

26:                                               ; preds = %24, %7, %2
  %27 = phi i1 [ false, %7 ], [ false, %2 ], [ %25, %24 ], !dbg !974
  %28 = zext i1 %27 to i32, !dbg !972
  ret i32 %28, !dbg !975
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stun_is_command_message_str(ptr noundef %0, i64 noundef %1) #0 !dbg !976 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i16, align 2
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !977, metadata !DIExpression()), !dbg !978
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !979, metadata !DIExpression()), !dbg !980
  %7 = load ptr, ptr %4, align 8, !dbg !981
  %8 = icmp ne ptr %7, null, !dbg !981
  br i1 %8, label %9, label %61, !dbg !983

9:                                                ; preds = %2
  %10 = load i64, ptr %5, align 8, !dbg !984
  %11 = icmp uge i64 %10, 20, !dbg !985
  br i1 %11, label %12, label %61, !dbg !986

12:                                               ; preds = %9
  %13 = load ptr, ptr %4, align 8, !dbg !987
  %14 = getelementptr inbounds i16, ptr %13, i64 0, !dbg !987
  %15 = load i16, ptr %14, align 2, !dbg !987
  %16 = call zeroext i16 @ntohs(i16 noundef zeroext %15) #11, !dbg !987
  %17 = zext i16 %16 to i32, !dbg !987
  %18 = icmp sge i32 %17, 16384, !dbg !987
  br i1 %18, label %19, label %26, !dbg !987

19:                                               ; preds = %12
  %20 = load ptr, ptr %4, align 8, !dbg !987
  %21 = getelementptr inbounds i16, ptr %20, i64 0, !dbg !987
  %22 = load i16, ptr %21, align 2, !dbg !987
  %23 = call zeroext i16 @ntohs(i16 noundef zeroext %22) #11, !dbg !987
  %24 = zext i16 %23 to i32, !dbg !987
  %25 = icmp sle i32 %24, 32767, !dbg !987
  br i1 %25, label %60, label %26, !dbg !990

26:                                               ; preds = %19, %12
  %27 = load ptr, ptr %4, align 8, !dbg !991
  %28 = getelementptr inbounds i8, ptr %27, i64 0, !dbg !991
  %29 = load i8, ptr %28, align 1, !dbg !991
  %30 = zext i8 %29 to i32, !dbg !994
  %31 = and i32 %30, 192, !dbg !995
  %32 = icmp eq i32 %31, 0, !dbg !996
  br i1 %32, label %33, label %59, !dbg !997

33:                                               ; preds = %26
  %34 = load ptr, ptr %4, align 8, !dbg !998
  %35 = getelementptr inbounds i32, ptr %34, i64 1, !dbg !998
  %36 = load i32, ptr %35, align 4, !dbg !998
  %37 = call i32 @ntohl(i32 noundef %36) #11, !dbg !998
  %38 = icmp eq i32 %37, 554869826, !dbg !1001
  br i1 %38, label %39, label %58, !dbg !1002

39:                                               ; preds = %33
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1003, metadata !DIExpression()), !dbg !1005
  %40 = load ptr, ptr %4, align 8, !dbg !1006
  %41 = getelementptr inbounds i16, ptr %40, i64 1, !dbg !1006
  %42 = load i16, ptr %41, align 2, !dbg !1006
  %43 = call zeroext i16 @ntohs(i16 noundef zeroext %42) #11, !dbg !1006
  store i16 %43, ptr %6, align 2, !dbg !1005
  %44 = load i16, ptr %6, align 2, !dbg !1007
  %45 = zext i16 %44 to i32, !dbg !1007
  %46 = and i32 %45, 3, !dbg !1009
  %47 = icmp eq i32 %46, 0, !dbg !1010
  br i1 %47, label %48, label %57, !dbg !1011

48:                                               ; preds = %39
  %49 = load i16, ptr %6, align 2, !dbg !1012
  %50 = zext i16 %49 to i32, !dbg !1012
  %51 = add nsw i32 %50, 20, !dbg !1015
  %52 = sext i32 %51 to i64, !dbg !1016
  %53 = load i64, ptr %5, align 8, !dbg !1017
  %54 = icmp eq i64 %52, %53, !dbg !1018
  br i1 %54, label %55, label %56, !dbg !1019

55:                                               ; preds = %48
  store i32 1, ptr %3, align 4, !dbg !1020
  br label %62, !dbg !1020

56:                                               ; preds = %48
  br label %57, !dbg !1022

57:                                               ; preds = %56, %39
  br label %58, !dbg !1023

58:                                               ; preds = %57, %33
  br label %59, !dbg !1024

59:                                               ; preds = %58, %26
  br label %60, !dbg !1025

60:                                               ; preds = %59, %19
  br label %61, !dbg !1026

61:                                               ; preds = %60, %9, %2
  store i32 0, ptr %3, align 4, !dbg !1027
  br label %62, !dbg !1027

62:                                               ; preds = %61, %55
  %63 = load i32, ptr %3, align 4, !dbg !1028
  ret i32 %63, !dbg !1028
}

; Function Attrs: nounwind willreturn memory(none)
declare i32 @ntohl(i32 noundef) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @old_stun_is_command_message_str(ptr noundef %0, i64 noundef %1, ptr noundef %2) #0 !dbg !1029 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i16, align 2
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1032, metadata !DIExpression()), !dbg !1033
  store i64 %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1034, metadata !DIExpression()), !dbg !1035
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1036, metadata !DIExpression()), !dbg !1037
  %9 = load ptr, ptr %5, align 8, !dbg !1038
  %10 = icmp ne ptr %9, null, !dbg !1038
  br i1 %10, label %11, label %68, !dbg !1040

11:                                               ; preds = %3
  %12 = load i64, ptr %6, align 8, !dbg !1041
  %13 = icmp uge i64 %12, 20, !dbg !1042
  br i1 %13, label %14, label %68, !dbg !1043

14:                                               ; preds = %11
  %15 = load ptr, ptr %5, align 8, !dbg !1044
  %16 = getelementptr inbounds i16, ptr %15, i64 0, !dbg !1044
  %17 = load i16, ptr %16, align 2, !dbg !1044
  %18 = call zeroext i16 @ntohs(i16 noundef zeroext %17) #11, !dbg !1044
  %19 = zext i16 %18 to i32, !dbg !1044
  %20 = icmp sge i32 %19, 16384, !dbg !1044
  br i1 %20, label %21, label %28, !dbg !1044

21:                                               ; preds = %14
  %22 = load ptr, ptr %5, align 8, !dbg !1044
  %23 = getelementptr inbounds i16, ptr %22, i64 0, !dbg !1044
  %24 = load i16, ptr %23, align 2, !dbg !1044
  %25 = call zeroext i16 @ntohs(i16 noundef zeroext %24) #11, !dbg !1044
  %26 = zext i16 %25 to i32, !dbg !1044
  %27 = icmp sle i32 %26, 32767, !dbg !1044
  br i1 %27, label %67, label %28, !dbg !1047

28:                                               ; preds = %21, %14
  %29 = load ptr, ptr %5, align 8, !dbg !1048
  %30 = getelementptr inbounds i8, ptr %29, i64 0, !dbg !1048
  %31 = load i8, ptr %30, align 1, !dbg !1048
  %32 = zext i8 %31 to i32, !dbg !1051
  %33 = and i32 %32, 192, !dbg !1052
  %34 = icmp eq i32 %33, 0, !dbg !1053
  br i1 %34, label %35, label %66, !dbg !1054

35:                                               ; preds = %28
  %36 = load ptr, ptr %5, align 8, !dbg !1055
  %37 = getelementptr inbounds i32, ptr %36, i64 1, !dbg !1055
  %38 = load i32, ptr %37, align 4, !dbg !1055
  %39 = call i32 @ntohl(i32 noundef %38) #11, !dbg !1055
  %40 = icmp ne i32 %39, 554869826, !dbg !1058
  br i1 %40, label %41, label %65, !dbg !1059

41:                                               ; preds = %35
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1060, metadata !DIExpression()), !dbg !1062
  %42 = load ptr, ptr %5, align 8, !dbg !1063
  %43 = getelementptr inbounds i16, ptr %42, i64 1, !dbg !1063
  %44 = load i16, ptr %43, align 2, !dbg !1063
  %45 = call zeroext i16 @ntohs(i16 noundef zeroext %44) #11, !dbg !1063
  store i16 %45, ptr %8, align 2, !dbg !1062
  %46 = load i16, ptr %8, align 2, !dbg !1064
  %47 = zext i16 %46 to i32, !dbg !1064
  %48 = and i32 %47, 3, !dbg !1066
  %49 = icmp eq i32 %48, 0, !dbg !1067
  br i1 %49, label %50, label %64, !dbg !1068

50:                                               ; preds = %41
  %51 = load i16, ptr %8, align 2, !dbg !1069
  %52 = zext i16 %51 to i32, !dbg !1069
  %53 = add nsw i32 %52, 20, !dbg !1072
  %54 = sext i32 %53 to i64, !dbg !1073
  %55 = load i64, ptr %6, align 8, !dbg !1074
  %56 = icmp eq i64 %54, %55, !dbg !1075
  br i1 %56, label %57, label %63, !dbg !1076

57:                                               ; preds = %50
  %58 = load ptr, ptr %5, align 8, !dbg !1077
  %59 = getelementptr inbounds i32, ptr %58, i64 1, !dbg !1077
  %60 = load i32, ptr %59, align 4, !dbg !1077
  %61 = call i32 @ntohl(i32 noundef %60) #11, !dbg !1077
  %62 = load ptr, ptr %7, align 8, !dbg !1079
  store i32 %61, ptr %62, align 4, !dbg !1080
  store i32 1, ptr %4, align 4, !dbg !1081
  br label %69, !dbg !1081

63:                                               ; preds = %50
  br label %64, !dbg !1082

64:                                               ; preds = %63, %41
  br label %65, !dbg !1083

65:                                               ; preds = %64, %35
  br label %66, !dbg !1084

66:                                               ; preds = %65, %28
  br label %67, !dbg !1085

67:                                               ; preds = %66, %21
  br label %68, !dbg !1086

68:                                               ; preds = %67, %11, %3
  store i32 0, ptr %4, align 4, !dbg !1087
  br label %69, !dbg !1087

69:                                               ; preds = %68, %57
  %70 = load i32, ptr %4, align 4, !dbg !1088
  ret i32 %70, !dbg !1088
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stun_is_command_message_full_check_str(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3) #0 !dbg !1089 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1093, metadata !DIExpression()), !dbg !1094
  store i64 %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1095, metadata !DIExpression()), !dbg !1096
  store i32 %2, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1097, metadata !DIExpression()), !dbg !1098
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1099, metadata !DIExpression()), !dbg !1100
  %14 = load ptr, ptr %6, align 8, !dbg !1101
  %15 = load i64, ptr %7, align 8, !dbg !1103
  %16 = call i32 @stun_is_command_message_str(ptr noundef %14, i64 noundef %15), !dbg !1104
  %17 = icmp ne i32 %16, 0, !dbg !1104
  br i1 %17, label %19, label %18, !dbg !1105

18:                                               ; preds = %4
  store i32 0, ptr %5, align 4, !dbg !1106
  br label %84, !dbg !1106

19:                                               ; preds = %4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1107, metadata !DIExpression()), !dbg !1108
  %20 = load ptr, ptr %6, align 8, !dbg !1109
  %21 = load i64, ptr %7, align 8, !dbg !1110
  %22 = call ptr @stun_attr_get_first_by_type_str(ptr noundef %20, i64 noundef %21, i16 noundef zeroext -32728), !dbg !1111
  store ptr %22, ptr %10, align 8, !dbg !1108
  %23 = load ptr, ptr %10, align 8, !dbg !1112
  %24 = icmp ne ptr %23, null, !dbg !1112
  br i1 %24, label %42, label %25, !dbg !1114

25:                                               ; preds = %19
  %26 = load ptr, ptr %9, align 8, !dbg !1115
  %27 = icmp ne ptr %26, null, !dbg !1115
  br i1 %27, label %28, label %30, !dbg !1118

28:                                               ; preds = %25
  %29 = load ptr, ptr %9, align 8, !dbg !1119
  store i32 0, ptr %29, align 4, !dbg !1120
  br label %30, !dbg !1121

30:                                               ; preds = %28, %25
  %31 = load ptr, ptr %6, align 8, !dbg !1122
  %32 = load i64, ptr %7, align 8, !dbg !1124
  %33 = call zeroext i16 @stun_get_method_str(ptr noundef %31, i64 noundef %32), !dbg !1125
  %34 = zext i16 %33 to i32, !dbg !1125
  %35 = icmp eq i32 %34, 1, !dbg !1126
  br i1 %35, label %36, label %37, !dbg !1127

36:                                               ; preds = %30
  store i32 1, ptr %5, align 4, !dbg !1128
  br label %84, !dbg !1128

37:                                               ; preds = %30
  %38 = load i32, ptr %8, align 4, !dbg !1130
  %39 = icmp ne i32 %38, 0, !dbg !1131
  %40 = xor i1 %39, true, !dbg !1131
  %41 = zext i1 %40 to i32, !dbg !1131
  store i32 %41, ptr %5, align 4, !dbg !1132
  br label %84, !dbg !1132

42:                                               ; preds = %19
  %43 = load ptr, ptr %10, align 8, !dbg !1133
  %44 = call i32 @stun_attr_get_len(ptr noundef %43), !dbg !1135
  %45 = icmp ne i32 %44, 4, !dbg !1136
  br i1 %45, label %46, label %47, !dbg !1137

46:                                               ; preds = %42
  store i32 0, ptr %5, align 4, !dbg !1138
  br label %84, !dbg !1138

47:                                               ; preds = %42
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1139, metadata !DIExpression()), !dbg !1140
  %48 = load ptr, ptr %10, align 8, !dbg !1141
  %49 = call ptr @stun_attr_get_value(ptr noundef %48), !dbg !1142
  store ptr %49, ptr %11, align 8, !dbg !1140
  %50 = load ptr, ptr %11, align 8, !dbg !1143
  %51 = icmp ne ptr %50, null, !dbg !1143
  br i1 %51, label %57, label %52, !dbg !1145

52:                                               ; preds = %47
  %53 = load i32, ptr %8, align 4, !dbg !1146
  %54 = icmp ne i32 %53, 0, !dbg !1147
  %55 = xor i1 %54, true, !dbg !1147
  %56 = zext i1 %55 to i32, !dbg !1147
  store i32 %56, ptr %5, align 4, !dbg !1148
  br label %84, !dbg !1148

57:                                               ; preds = %47
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1149, metadata !DIExpression()), !dbg !1150
  %58 = load ptr, ptr %11, align 8, !dbg !1151
  %59 = load ptr, ptr %6, align 8, !dbg !1152
  %60 = ptrtoint ptr %58 to i64, !dbg !1153
  %61 = ptrtoint ptr %59 to i64, !dbg !1153
  %62 = sub i64 %60, %61, !dbg !1153
  %63 = sub nsw i64 %62, 4, !dbg !1154
  %64 = trunc i64 %63 to i32, !dbg !1155
  store i32 %64, ptr %12, align 4, !dbg !1150
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1156, metadata !DIExpression()), !dbg !1157
  %65 = load ptr, ptr %11, align 8, !dbg !1158
  %66 = load i32, ptr %65, align 4, !dbg !1159
  %67 = load ptr, ptr %6, align 8, !dbg !1160
  %68 = load i32, ptr %12, align 4, !dbg !1160
  %69 = call i32 @ns_crc32(ptr noundef %67, i32 noundef %68), !dbg !1160
  %70 = xor i32 %69, 1398035790, !dbg !1160
  %71 = call i32 @ntohl(i32 noundef %70) #11, !dbg !1160
  %72 = icmp eq i32 %66, %71, !dbg !1161
  %73 = zext i1 %72 to i32, !dbg !1161
  store i32 %73, ptr %13, align 4, !dbg !1157
  %74 = load i32, ptr %13, align 4, !dbg !1162
  %75 = icmp ne i32 %74, 0, !dbg !1162
  br i1 %75, label %76, label %82, !dbg !1164

76:                                               ; preds = %57
  %77 = load ptr, ptr %9, align 8, !dbg !1165
  %78 = icmp ne ptr %77, null, !dbg !1165
  br i1 %78, label %79, label %82, !dbg !1166

79:                                               ; preds = %76
  %80 = load i32, ptr %13, align 4, !dbg !1167
  %81 = load ptr, ptr %9, align 8, !dbg !1168
  store i32 %80, ptr %81, align 4, !dbg !1169
  br label %82, !dbg !1170

82:                                               ; preds = %79, %76, %57
  %83 = load i32, ptr %13, align 4, !dbg !1171
  store i32 %83, ptr %5, align 4, !dbg !1172
  br label %84, !dbg !1172

84:                                               ; preds = %82, %52, %46, %37, %36, %18
  %85 = load i32, ptr %5, align 4, !dbg !1173
  ret i32 %85, !dbg !1173
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @stun_attr_get_first_by_type_str(ptr noundef %0, i64 noundef %1, i16 noundef zeroext %2) #0 !dbg !1174 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i16, align 2
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1177, metadata !DIExpression()), !dbg !1178
  store i64 %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1179, metadata !DIExpression()), !dbg !1180
  store i16 %2, ptr %7, align 2
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1181, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1183, metadata !DIExpression()), !dbg !1184
  %9 = load ptr, ptr %5, align 8, !dbg !1185
  %10 = load i64, ptr %6, align 8, !dbg !1186
  %11 = call ptr @stun_attr_get_first_str(ptr noundef %9, i64 noundef %10), !dbg !1187
  store ptr %11, ptr %8, align 8, !dbg !1184
  br label %12, !dbg !1188

12:                                               ; preds = %23, %3
  %13 = load ptr, ptr %8, align 8, !dbg !1189
  %14 = icmp ne ptr %13, null, !dbg !1188
  br i1 %14, label %15, label %28, !dbg !1188

15:                                               ; preds = %12
  %16 = load ptr, ptr %8, align 8, !dbg !1190
  %17 = call i32 @stun_attr_get_type(ptr noundef %16), !dbg !1193
  %18 = load i16, ptr %7, align 2, !dbg !1194
  %19 = zext i16 %18 to i32, !dbg !1194
  %20 = icmp eq i32 %17, %19, !dbg !1195
  br i1 %20, label %21, label %23, !dbg !1196

21:                                               ; preds = %15
  %22 = load ptr, ptr %8, align 8, !dbg !1197
  store ptr %22, ptr %4, align 8, !dbg !1199
  br label %29, !dbg !1199

23:                                               ; preds = %15
  %24 = load ptr, ptr %5, align 8, !dbg !1200
  %25 = load i64, ptr %6, align 8, !dbg !1201
  %26 = load ptr, ptr %8, align 8, !dbg !1202
  %27 = call ptr @stun_attr_get_next_str(ptr noundef %24, i64 noundef %25, ptr noundef %26), !dbg !1203
  store ptr %27, ptr %8, align 8, !dbg !1204
  br label %12, !dbg !1188, !llvm.loop !1205

28:                                               ; preds = %12
  store ptr null, ptr %4, align 8, !dbg !1207
  br label %29, !dbg !1207

29:                                               ; preds = %28, %21
  %30 = load ptr, ptr %4, align 8, !dbg !1208
  ret ptr %30, !dbg !1208
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stun_attr_get_len(ptr noundef %0) #0 !dbg !1209 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1212, metadata !DIExpression()), !dbg !1213
  %4 = load ptr, ptr %3, align 8, !dbg !1214
  %5 = icmp ne ptr %4, null, !dbg !1214
  br i1 %5, label %6, label %12, !dbg !1216

6:                                                ; preds = %1
  %7 = load ptr, ptr %3, align 8, !dbg !1217
  %8 = getelementptr inbounds i16, ptr %7, i64 1, !dbg !1217
  %9 = load i16, ptr %8, align 2, !dbg !1217
  %10 = call zeroext i16 @ntohs(i16 noundef zeroext %9) #11, !dbg !1217
  %11 = zext i16 %10 to i32, !dbg !1218
  store i32 %11, ptr %2, align 4, !dbg !1219
  br label %13, !dbg !1219

12:                                               ; preds = %1
  store i32 -1, ptr %2, align 4, !dbg !1220
  br label %13, !dbg !1220

13:                                               ; preds = %12, %6
  %14 = load i32, ptr %2, align 4, !dbg !1221
  ret i32 %14, !dbg !1221
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @stun_attr_get_value(ptr noundef %0) #0 !dbg !1222 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1225, metadata !DIExpression()), !dbg !1226
  %5 = load ptr, ptr %3, align 8, !dbg !1227
  %6 = icmp ne ptr %5, null, !dbg !1227
  br i1 %6, label %7, label %19, !dbg !1229

7:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1230, metadata !DIExpression()), !dbg !1232
  %8 = load ptr, ptr %3, align 8, !dbg !1233
  %9 = getelementptr inbounds i16, ptr %8, i64 1, !dbg !1233
  %10 = load i16, ptr %9, align 2, !dbg !1233
  %11 = call zeroext i16 @ntohs(i16 noundef zeroext %10) #11, !dbg !1233
  %12 = zext i16 %11 to i32, !dbg !1234
  store i32 %12, ptr %4, align 4, !dbg !1232
  %13 = load i32, ptr %4, align 4, !dbg !1235
  %14 = icmp slt i32 %13, 1, !dbg !1237
  br i1 %14, label %15, label %16, !dbg !1238

15:                                               ; preds = %7
  store ptr null, ptr %2, align 8, !dbg !1239
  br label %20, !dbg !1239

16:                                               ; preds = %7
  %17 = load ptr, ptr %3, align 8, !dbg !1240
  %18 = getelementptr inbounds i8, ptr %17, i64 4, !dbg !1241
  store ptr %18, ptr %2, align 8, !dbg !1242
  br label %20, !dbg !1242

19:                                               ; preds = %1
  store ptr null, ptr %2, align 8, !dbg !1243
  br label %20, !dbg !1243

20:                                               ; preds = %19, %16, %15
  %21 = load ptr, ptr %2, align 8, !dbg !1244
  ret ptr %21, !dbg !1244
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ns_crc32(ptr noundef %0, i32 noundef %1) #0 !dbg !1245 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1248, metadata !DIExpression()), !dbg !1249
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1250, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1252, metadata !DIExpression()), !dbg !1253
  store i32 -1, ptr %5, align 4, !dbg !1253
  br label %6, !dbg !1254

6:                                                ; preds = %10, %2
  %7 = load i32, ptr %4, align 4, !dbg !1255
  %8 = add i32 %7, -1, !dbg !1255
  store i32 %8, ptr %4, align 4, !dbg !1255
  %9 = icmp ne i32 %7, 0, !dbg !1254
  br i1 %9, label %10, label %25, !dbg !1254

10:                                               ; preds = %6
  %11 = load i32, ptr %5, align 4, !dbg !1256
  %12 = trunc i32 %11 to i8, !dbg !1256
  %13 = zext i8 %12 to i32, !dbg !1256
  %14 = load ptr, ptr %3, align 8, !dbg !1256
  %15 = getelementptr inbounds i8, ptr %14, i32 1, !dbg !1256
  store ptr %15, ptr %3, align 8, !dbg !1256
  %16 = load i8, ptr %14, align 1, !dbg !1256
  %17 = zext i8 %16 to i32, !dbg !1256
  %18 = xor i32 %13, %17, !dbg !1256
  %19 = sext i32 %18 to i64, !dbg !1256
  %20 = getelementptr inbounds [256 x i32], ptr @crctable, i64 0, i64 %19, !dbg !1256
  %21 = load i32, ptr %20, align 4, !dbg !1256
  %22 = load i32, ptr %5, align 4, !dbg !1256
  %23 = lshr i32 %22, 8, !dbg !1256
  %24 = xor i32 %21, %23, !dbg !1256
  store i32 %24, ptr %5, align 4, !dbg !1256
  br label %6, !dbg !1254, !llvm.loop !1257

25:                                               ; preds = %6
  %26 = load i32, ptr %5, align 4, !dbg !1258
  %27 = xor i32 %26, -1, !dbg !1259
  ret i32 %27, !dbg !1260
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stun_is_command_message_offset_str(ptr noundef %0, i64 noundef %1, i32 noundef %2) #0 !dbg !1261 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1264, metadata !DIExpression()), !dbg !1265
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1266, metadata !DIExpression()), !dbg !1267
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1268, metadata !DIExpression()), !dbg !1269
  %7 = load ptr, ptr %4, align 8, !dbg !1270
  %8 = load i32, ptr %6, align 4, !dbg !1271
  %9 = sext i32 %8 to i64, !dbg !1272
  %10 = getelementptr inbounds i8, ptr %7, i64 %9, !dbg !1272
  %11 = load i64, ptr %5, align 8, !dbg !1273
  %12 = call i32 @stun_is_command_message_str(ptr noundef %10, i64 noundef %11), !dbg !1274
  ret i32 %12, !dbg !1275
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stun_is_request_str(ptr noundef %0, i64 noundef %1) #0 !dbg !1276 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1277, metadata !DIExpression()), !dbg !1278
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1279, metadata !DIExpression()), !dbg !1280
  %6 = load ptr, ptr %4, align 8, !dbg !1281
  %7 = load i64, ptr %5, align 8, !dbg !1283
  %8 = call i32 @is_channel_msg_str(ptr noundef %6, i64 noundef %7), !dbg !1284
  %9 = icmp ne i32 %8, 0, !dbg !1284
  br i1 %9, label %10, label %11, !dbg !1285

10:                                               ; preds = %2
  store i32 0, ptr %3, align 4, !dbg !1286
  br label %19, !dbg !1286

11:                                               ; preds = %2
  %12 = load ptr, ptr %4, align 8, !dbg !1287
  %13 = load i64, ptr %5, align 8, !dbg !1287
  %14 = call zeroext i16 @stun_get_msg_type_str(ptr noundef %12, i64 noundef %13), !dbg !1287
  %15 = zext i16 %14 to i32, !dbg !1287
  %16 = and i32 %15, 272, !dbg !1287
  %17 = icmp eq i32 %16, 0, !dbg !1287
  %18 = zext i1 %17 to i32, !dbg !1287
  store i32 %18, ptr %3, align 4, !dbg !1288
  br label %19, !dbg !1288

19:                                               ; preds = %11, %10
  %20 = load i32, ptr %3, align 4, !dbg !1289
  ret i32 %20, !dbg !1289
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stun_is_success_response_str(ptr noundef %0, i64 noundef %1) #0 !dbg !1290 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1291, metadata !DIExpression()), !dbg !1292
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1293, metadata !DIExpression()), !dbg !1294
  %6 = load ptr, ptr %4, align 8, !dbg !1295
  %7 = load i64, ptr %5, align 8, !dbg !1297
  %8 = call i32 @is_channel_msg_str(ptr noundef %6, i64 noundef %7), !dbg !1298
  %9 = icmp ne i32 %8, 0, !dbg !1298
  br i1 %9, label %10, label %11, !dbg !1299

10:                                               ; preds = %2
  store i32 0, ptr %3, align 4, !dbg !1300
  br label %19, !dbg !1300

11:                                               ; preds = %2
  %12 = load ptr, ptr %4, align 8, !dbg !1301
  %13 = load i64, ptr %5, align 8, !dbg !1301
  %14 = call zeroext i16 @stun_get_msg_type_str(ptr noundef %12, i64 noundef %13), !dbg !1301
  %15 = zext i16 %14 to i32, !dbg !1301
  %16 = and i32 %15, 272, !dbg !1301
  %17 = icmp eq i32 %16, 256, !dbg !1301
  %18 = zext i1 %17 to i32, !dbg !1301
  store i32 %18, ptr %3, align 4, !dbg !1302
  br label %19, !dbg !1302

19:                                               ; preds = %11, %10
  %20 = load i32, ptr %3, align 4, !dbg !1303
  ret i32 %20, !dbg !1303
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stun_is_error_response_str(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) #0 !dbg !1304 {
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i64, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i64, align 8
  store ptr %0, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1307, metadata !DIExpression()), !dbg !1308
  store i64 %1, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1309, metadata !DIExpression()), !dbg !1310
  store ptr %2, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1311, metadata !DIExpression()), !dbg !1312
  store ptr %3, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1313, metadata !DIExpression()), !dbg !1314
  store i64 %4, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1315, metadata !DIExpression()), !dbg !1316
  %15 = load ptr, ptr %7, align 8, !dbg !1317
  %16 = load i64, ptr %8, align 8, !dbg !1319
  %17 = call i32 @is_channel_msg_str(ptr noundef %15, i64 noundef %16), !dbg !1320
  %18 = icmp ne i32 %17, 0, !dbg !1320
  br i1 %18, label %19, label %20, !dbg !1321

19:                                               ; preds = %5
  store i32 0, ptr %6, align 4, !dbg !1322
  br label %91, !dbg !1322

20:                                               ; preds = %5
  %21 = load ptr, ptr %7, align 8, !dbg !1323
  %22 = load i64, ptr %8, align 8, !dbg !1323
  %23 = call zeroext i16 @stun_get_msg_type_str(ptr noundef %21, i64 noundef %22), !dbg !1323
  %24 = zext i16 %23 to i32, !dbg !1323
  %25 = and i32 %24, 272, !dbg !1323
  %26 = icmp eq i32 %25, 272, !dbg !1323
  br i1 %26, label %27, label %90, !dbg !1325

27:                                               ; preds = %20
  %28 = load ptr, ptr %9, align 8, !dbg !1326
  %29 = icmp ne ptr %28, null, !dbg !1326
  br i1 %29, label %30, label %89, !dbg !1329

30:                                               ; preds = %27
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1330, metadata !DIExpression()), !dbg !1332
  %31 = load ptr, ptr %7, align 8, !dbg !1333
  %32 = load i64, ptr %8, align 8, !dbg !1334
  %33 = call ptr @stun_attr_get_first_by_type_str(ptr noundef %31, i64 noundef %32, i16 noundef zeroext 9), !dbg !1335
  store ptr %33, ptr %12, align 8, !dbg !1332
  %34 = load ptr, ptr %12, align 8, !dbg !1336
  %35 = icmp ne ptr %34, null, !dbg !1336
  br i1 %35, label %36, label %88, !dbg !1338

36:                                               ; preds = %30
  %37 = load ptr, ptr %12, align 8, !dbg !1339
  %38 = call i32 @stun_attr_get_len(ptr noundef %37), !dbg !1342
  %39 = icmp sge i32 %38, 4, !dbg !1343
  br i1 %39, label %40, label %87, !dbg !1344

40:                                               ; preds = %36
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1345, metadata !DIExpression()), !dbg !1347
  %41 = load ptr, ptr %12, align 8, !dbg !1348
  %42 = call ptr @stun_attr_get_value(ptr noundef %41), !dbg !1349
  store ptr %42, ptr %13, align 8, !dbg !1347
  %43 = load ptr, ptr %13, align 8, !dbg !1350
  %44 = getelementptr inbounds i8, ptr %43, i64 2, !dbg !1350
  %45 = load i8, ptr %44, align 1, !dbg !1350
  %46 = zext i8 %45 to i32, !dbg !1350
  %47 = mul nsw i32 %46, 100, !dbg !1351
  %48 = load ptr, ptr %13, align 8, !dbg !1352
  %49 = getelementptr inbounds i8, ptr %48, i64 3, !dbg !1352
  %50 = load i8, ptr %49, align 1, !dbg !1352
  %51 = zext i8 %50 to i32, !dbg !1352
  %52 = add nsw i32 %47, %51, !dbg !1353
  %53 = load ptr, ptr %9, align 8, !dbg !1354
  store i32 %52, ptr %53, align 4, !dbg !1355
  %54 = load ptr, ptr %10, align 8, !dbg !1356
  %55 = icmp ne ptr %54, null, !dbg !1356
  br i1 %55, label %56, label %86, !dbg !1358

56:                                               ; preds = %40
  %57 = load i64, ptr %11, align 8, !dbg !1359
  %58 = icmp ugt i64 %57, 0, !dbg !1360
  br i1 %58, label %59, label %86, !dbg !1361

59:                                               ; preds = %56
  %60 = load ptr, ptr %10, align 8, !dbg !1362
  %61 = getelementptr inbounds i8, ptr %60, i64 0, !dbg !1362
  store i8 0, ptr %61, align 1, !dbg !1364
  %62 = load ptr, ptr %12, align 8, !dbg !1365
  %63 = call i32 @stun_attr_get_len(ptr noundef %62), !dbg !1367
  %64 = icmp sgt i32 %63, 4, !dbg !1368
  br i1 %64, label %65, label %85, !dbg !1369

65:                                               ; preds = %59
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1370, metadata !DIExpression()), !dbg !1372
  %66 = load ptr, ptr %12, align 8, !dbg !1373
  %67 = call i32 @stun_attr_get_len(ptr noundef %66), !dbg !1374
  %68 = sub nsw i32 %67, 4, !dbg !1375
  %69 = sext i32 %68 to i64, !dbg !1374
  store i64 %69, ptr %14, align 8, !dbg !1372
  %70 = load i64, ptr %14, align 8, !dbg !1376
  %71 = load i64, ptr %11, align 8, !dbg !1378
  %72 = sub i64 %71, 1, !dbg !1379
  %73 = icmp ugt i64 %70, %72, !dbg !1380
  br i1 %73, label %74, label %77, !dbg !1381

74:                                               ; preds = %65
  %75 = load i64, ptr %11, align 8, !dbg !1382
  %76 = sub i64 %75, 1, !dbg !1383
  store i64 %76, ptr %14, align 8, !dbg !1384
  br label %77, !dbg !1385

77:                                               ; preds = %74, %65
  %78 = load ptr, ptr %13, align 8, !dbg !1386
  %79 = getelementptr inbounds i8, ptr %78, i64 4, !dbg !1387
  %80 = load ptr, ptr %10, align 8, !dbg !1388
  %81 = load i64, ptr %14, align 8, !dbg !1389
  call void @bcopy(ptr noundef %79, ptr noundef %80, i64 noundef %81) #9, !dbg !1390
  %82 = load ptr, ptr %10, align 8, !dbg !1391
  %83 = load i64, ptr %14, align 8, !dbg !1392
  %84 = getelementptr inbounds i8, ptr %82, i64 %83, !dbg !1391
  store i8 0, ptr %84, align 1, !dbg !1393
  br label %85, !dbg !1394

85:                                               ; preds = %77, %59
  br label %86, !dbg !1395

86:                                               ; preds = %85, %56, %40
  br label %87, !dbg !1396

87:                                               ; preds = %86, %36
  br label %88, !dbg !1397

88:                                               ; preds = %87, %30
  br label %89, !dbg !1398

89:                                               ; preds = %88, %27
  store i32 1, ptr %6, align 4, !dbg !1399
  br label %91, !dbg !1399

90:                                               ; preds = %20
  store i32 0, ptr %6, align 4, !dbg !1400
  br label %91, !dbg !1400

91:                                               ; preds = %90, %89, %19
  %92 = load i32, ptr %6, align 4, !dbg !1401
  ret i32 %92, !dbg !1401
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stun_is_challenge_response_str(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) #0 !dbg !1402 {
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca i64, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i64, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca i32, align 4
  %21 = alloca ptr, align 8
  %22 = alloca i32, align 4
  %23 = alloca ptr, align 8
  %24 = alloca i64, align 8
  store ptr %0, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1405, metadata !DIExpression()), !dbg !1406
  store i64 %1, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1407, metadata !DIExpression()), !dbg !1408
  store ptr %2, ptr %13, align 8
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1409, metadata !DIExpression()), !dbg !1410
  store ptr %3, ptr %14, align 8
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1411, metadata !DIExpression()), !dbg !1412
  store i64 %4, ptr %15, align 8
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1413, metadata !DIExpression()), !dbg !1414
  store ptr %5, ptr %16, align 8
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1415, metadata !DIExpression()), !dbg !1416
  store ptr %6, ptr %17, align 8
  call void @llvm.dbg.declare(metadata ptr %17, metadata !1417, metadata !DIExpression()), !dbg !1418
  store ptr %7, ptr %18, align 8
  call void @llvm.dbg.declare(metadata ptr %18, metadata !1419, metadata !DIExpression()), !dbg !1420
  store ptr %8, ptr %19, align 8
  call void @llvm.dbg.declare(metadata ptr %19, metadata !1421, metadata !DIExpression()), !dbg !1422
  call void @llvm.dbg.declare(metadata ptr %20, metadata !1423, metadata !DIExpression()), !dbg !1424
  %25 = load ptr, ptr %11, align 8, !dbg !1425
  %26 = load i64, ptr %12, align 8, !dbg !1426
  %27 = load ptr, ptr %13, align 8, !dbg !1427
  %28 = load ptr, ptr %14, align 8, !dbg !1428
  %29 = load i64, ptr %15, align 8, !dbg !1429
  %30 = call i32 @stun_is_error_response_str(ptr noundef %25, i64 noundef %26, ptr noundef %27, ptr noundef %28, i64 noundef %29), !dbg !1430
  store i32 %30, ptr %20, align 4, !dbg !1424
  %31 = load i32, ptr %20, align 4, !dbg !1431
  %32 = icmp ne i32 %31, 0, !dbg !1431
  br i1 %32, label %33, label %119, !dbg !1433

33:                                               ; preds = %9
  %34 = load ptr, ptr %13, align 8, !dbg !1434
  %35 = load i32, ptr %34, align 4, !dbg !1435
  %36 = icmp eq i32 %35, 401, !dbg !1436
  br i1 %36, label %41, label %37, !dbg !1437

37:                                               ; preds = %33
  %38 = load ptr, ptr %13, align 8, !dbg !1438
  %39 = load i32, ptr %38, align 4, !dbg !1439
  %40 = icmp eq i32 %39, 438, !dbg !1440
  br i1 %40, label %41, label %119, !dbg !1441

41:                                               ; preds = %37, %33
  call void @llvm.dbg.declare(metadata ptr %21, metadata !1442, metadata !DIExpression()), !dbg !1444
  %42 = load ptr, ptr %11, align 8, !dbg !1445
  %43 = load i64, ptr %12, align 8, !dbg !1446
  %44 = call ptr @stun_attr_get_first_by_type_str(ptr noundef %42, i64 noundef %43, i16 noundef zeroext 20), !dbg !1447
  store ptr %44, ptr %21, align 8, !dbg !1444
  %45 = load ptr, ptr %21, align 8, !dbg !1448
  %46 = icmp ne ptr %45, null, !dbg !1448
  br i1 %46, label %47, label %118, !dbg !1450

47:                                               ; preds = %41
  call void @llvm.dbg.declare(metadata ptr %22, metadata !1451, metadata !DIExpression()), !dbg !1453
  store i32 0, ptr %22, align 4, !dbg !1453
  call void @llvm.dbg.declare(metadata ptr %23, metadata !1454, metadata !DIExpression()), !dbg !1455
  %48 = load ptr, ptr %21, align 8, !dbg !1456
  %49 = call ptr @stun_attr_get_value(ptr noundef %48), !dbg !1457
  store ptr %49, ptr %23, align 8, !dbg !1455
  %50 = load ptr, ptr %23, align 8, !dbg !1458
  %51 = icmp ne ptr %50, null, !dbg !1458
  br i1 %51, label %52, label %117, !dbg !1460

52:                                               ; preds = %47
  call void @llvm.dbg.declare(metadata ptr %24, metadata !1461, metadata !DIExpression()), !dbg !1463
  %53 = load ptr, ptr %21, align 8, !dbg !1464
  %54 = call i32 @stun_attr_get_len(ptr noundef %53), !dbg !1465
  %55 = sext i32 %54 to i64, !dbg !1466
  store i64 %55, ptr %24, align 8, !dbg !1463
  %56 = load ptr, ptr %23, align 8, !dbg !1467
  %57 = load ptr, ptr %16, align 8, !dbg !1468
  %58 = load i64, ptr %24, align 8, !dbg !1469
  call void @bcopy(ptr noundef %56, ptr noundef %57, i64 noundef %58) #9, !dbg !1470
  %59 = load ptr, ptr %16, align 8, !dbg !1471
  %60 = load i64, ptr %24, align 8, !dbg !1472
  %61 = getelementptr inbounds i8, ptr %59, i64 %60, !dbg !1471
  store i8 0, ptr %61, align 1, !dbg !1473
  %62 = load ptr, ptr %11, align 8, !dbg !1474
  %63 = load i64, ptr %12, align 8, !dbg !1476
  %64 = call ptr @stun_attr_get_first_by_type_str(ptr noundef %62, i64 noundef %63, i16 noundef zeroext -32722), !dbg !1477
  store ptr %64, ptr %21, align 8, !dbg !1478
  %65 = load ptr, ptr %21, align 8, !dbg !1479
  %66 = icmp ne ptr %65, null, !dbg !1479
  br i1 %66, label %67, label %88, !dbg !1481

67:                                               ; preds = %52
  %68 = load ptr, ptr %21, align 8, !dbg !1482
  %69 = call ptr @stun_attr_get_value(ptr noundef %68), !dbg !1484
  store ptr %69, ptr %23, align 8, !dbg !1485
  %70 = load ptr, ptr %23, align 8, !dbg !1486
  %71 = icmp ne ptr %70, null, !dbg !1486
  br i1 %71, label %72, label %87, !dbg !1488

72:                                               ; preds = %67
  %73 = load ptr, ptr %21, align 8, !dbg !1489
  %74 = call i32 @stun_attr_get_len(ptr noundef %73), !dbg !1491
  %75 = sext i32 %74 to i64, !dbg !1492
  store i64 %75, ptr %24, align 8, !dbg !1493
  %76 = load i64, ptr %24, align 8, !dbg !1494
  %77 = icmp ugt i64 %76, 0, !dbg !1496
  br i1 %77, label %78, label %86, !dbg !1497

78:                                               ; preds = %72
  %79 = load ptr, ptr %18, align 8, !dbg !1498
  %80 = icmp ne ptr %79, null, !dbg !1498
  br i1 %80, label %81, label %85, !dbg !1501

81:                                               ; preds = %78
  %82 = load ptr, ptr %23, align 8, !dbg !1502
  %83 = load ptr, ptr %18, align 8, !dbg !1504
  %84 = load i64, ptr %24, align 8, !dbg !1505
  call void @bcopy(ptr noundef %82, ptr noundef %83, i64 noundef %84) #9, !dbg !1506
  br label %85, !dbg !1507

85:                                               ; preds = %81, %78
  store i32 1, ptr %22, align 4, !dbg !1508
  br label %86, !dbg !1509

86:                                               ; preds = %85, %72
  br label %87, !dbg !1510

87:                                               ; preds = %86, %67
  br label %88, !dbg !1511

88:                                               ; preds = %87, %52
  %89 = load ptr, ptr %11, align 8, !dbg !1512
  %90 = load i64, ptr %12, align 8, !dbg !1513
  %91 = call ptr @stun_attr_get_first_by_type_str(ptr noundef %89, i64 noundef %90, i16 noundef zeroext 21), !dbg !1514
  store ptr %91, ptr %21, align 8, !dbg !1515
  %92 = load ptr, ptr %21, align 8, !dbg !1516
  %93 = icmp ne ptr %92, null, !dbg !1516
  br i1 %93, label %94, label %116, !dbg !1518

94:                                               ; preds = %88
  %95 = load ptr, ptr %21, align 8, !dbg !1519
  %96 = call ptr @stun_attr_get_value(ptr noundef %95), !dbg !1521
  store ptr %96, ptr %23, align 8, !dbg !1522
  %97 = load ptr, ptr %23, align 8, !dbg !1523
  %98 = icmp ne ptr %97, null, !dbg !1523
  br i1 %98, label %99, label %115, !dbg !1525

99:                                               ; preds = %94
  %100 = load ptr, ptr %21, align 8, !dbg !1526
  %101 = call i32 @stun_attr_get_len(ptr noundef %100), !dbg !1528
  %102 = sext i32 %101 to i64, !dbg !1529
  store i64 %102, ptr %24, align 8, !dbg !1530
  %103 = load ptr, ptr %23, align 8, !dbg !1531
  %104 = load ptr, ptr %17, align 8, !dbg !1532
  %105 = load i64, ptr %24, align 8, !dbg !1533
  call void @bcopy(ptr noundef %103, ptr noundef %104, i64 noundef %105) #9, !dbg !1534
  %106 = load ptr, ptr %17, align 8, !dbg !1535
  %107 = load i64, ptr %24, align 8, !dbg !1536
  %108 = getelementptr inbounds i8, ptr %106, i64 %107, !dbg !1535
  store i8 0, ptr %108, align 1, !dbg !1537
  %109 = load ptr, ptr %19, align 8, !dbg !1538
  %110 = icmp ne ptr %109, null, !dbg !1538
  br i1 %110, label %111, label %114, !dbg !1540

111:                                              ; preds = %99
  %112 = load i32, ptr %22, align 4, !dbg !1541
  %113 = load ptr, ptr %19, align 8, !dbg !1543
  store i32 %112, ptr %113, align 4, !dbg !1544
  br label %114, !dbg !1545

114:                                              ; preds = %111, %99
  store i32 1, ptr %10, align 4, !dbg !1546
  br label %120, !dbg !1546

115:                                              ; preds = %94
  br label %116, !dbg !1547

116:                                              ; preds = %115, %88
  br label %117, !dbg !1548

117:                                              ; preds = %116, %47
  br label %118, !dbg !1549

118:                                              ; preds = %117, %41
  br label %119, !dbg !1550

119:                                              ; preds = %118, %37, %9
  store i32 0, ptr %10, align 4, !dbg !1551
  br label %120, !dbg !1551

120:                                              ; preds = %119, %114
  %121 = load i32, ptr %10, align 4, !dbg !1552
  ret i32 %121, !dbg !1552
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stun_is_response_str(ptr noundef %0, i64 noundef %1) #0 !dbg !1553 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1554, metadata !DIExpression()), !dbg !1555
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1556, metadata !DIExpression()), !dbg !1557
  %6 = load ptr, ptr %4, align 8, !dbg !1558
  %7 = load i64, ptr %5, align 8, !dbg !1560
  %8 = call i32 @is_channel_msg_str(ptr noundef %6, i64 noundef %7), !dbg !1561
  %9 = icmp ne i32 %8, 0, !dbg !1561
  br i1 %9, label %10, label %11, !dbg !1562

10:                                               ; preds = %2
  store i32 0, ptr %3, align 4, !dbg !1563
  br label %28, !dbg !1563

11:                                               ; preds = %2
  %12 = load ptr, ptr %4, align 8, !dbg !1564
  %13 = load i64, ptr %5, align 8, !dbg !1564
  %14 = call zeroext i16 @stun_get_msg_type_str(ptr noundef %12, i64 noundef %13), !dbg !1564
  %15 = zext i16 %14 to i32, !dbg !1564
  %16 = and i32 %15, 272, !dbg !1564
  %17 = icmp eq i32 %16, 256, !dbg !1564
  br i1 %17, label %18, label %19, !dbg !1566

18:                                               ; preds = %11
  store i32 1, ptr %3, align 4, !dbg !1567
  br label %28, !dbg !1567

19:                                               ; preds = %11
  %20 = load ptr, ptr %4, align 8, !dbg !1568
  %21 = load i64, ptr %5, align 8, !dbg !1568
  %22 = call zeroext i16 @stun_get_msg_type_str(ptr noundef %20, i64 noundef %21), !dbg !1568
  %23 = zext i16 %22 to i32, !dbg !1568
  %24 = and i32 %23, 272, !dbg !1568
  %25 = icmp eq i32 %24, 272, !dbg !1568
  br i1 %25, label %26, label %27, !dbg !1570

26:                                               ; preds = %19
  store i32 1, ptr %3, align 4, !dbg !1571
  br label %28, !dbg !1571

27:                                               ; preds = %19
  store i32 0, ptr %3, align 4, !dbg !1572
  br label %28, !dbg !1572

28:                                               ; preds = %27, %26, %18, %10
  %29 = load i32, ptr %3, align 4, !dbg !1573
  ret i32 %29, !dbg !1573
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stun_is_indication_str(ptr noundef %0, i64 noundef %1) #0 !dbg !1574 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1575, metadata !DIExpression()), !dbg !1576
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1577, metadata !DIExpression()), !dbg !1578
  %6 = load ptr, ptr %4, align 8, !dbg !1579
  %7 = load i64, ptr %5, align 8, !dbg !1581
  %8 = call i32 @is_channel_msg_str(ptr noundef %6, i64 noundef %7), !dbg !1582
  %9 = icmp ne i32 %8, 0, !dbg !1582
  br i1 %9, label %10, label %11, !dbg !1583

10:                                               ; preds = %2
  store i32 0, ptr %3, align 4, !dbg !1584
  br label %19, !dbg !1584

11:                                               ; preds = %2
  %12 = load ptr, ptr %4, align 8, !dbg !1585
  %13 = load i64, ptr %5, align 8, !dbg !1585
  %14 = call zeroext i16 @stun_get_msg_type_str(ptr noundef %12, i64 noundef %13), !dbg !1585
  %15 = zext i16 %14 to i32, !dbg !1585
  %16 = and i32 %15, 272, !dbg !1585
  %17 = icmp eq i32 %16, 16, !dbg !1585
  %18 = zext i1 %17 to i32, !dbg !1585
  store i32 %18, ptr %3, align 4, !dbg !1586
  br label %19, !dbg !1586

19:                                               ; preds = %11, %10
  %20 = load i32, ptr %3, align 4, !dbg !1587
  ret i32 %20, !dbg !1587
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @stun_make_request(i16 noundef zeroext %0) #0 !dbg !1588 {
  %2 = alloca i16, align 2
  store i16 %0, ptr %2, align 2
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1589, metadata !DIExpression()), !dbg !1590
  %3 = load i16, ptr %2, align 2, !dbg !1591
  %4 = call zeroext i16 @stun_make_type(i16 noundef zeroext %3), !dbg !1591
  %5 = zext i16 %4 to i32, !dbg !1591
  %6 = and i32 %5, 65263, !dbg !1591
  %7 = trunc i32 %6 to i16, !dbg !1591
  ret i16 %7, !dbg !1592
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @stun_make_indication(i16 noundef zeroext %0) #0 !dbg !1593 {
  %2 = alloca i16, align 2
  store i16 %0, ptr %2, align 2
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1594, metadata !DIExpression()), !dbg !1595
  %3 = load i16, ptr %2, align 2, !dbg !1596
  %4 = call zeroext i16 @stun_make_type(i16 noundef zeroext %3), !dbg !1596
  %5 = zext i16 %4 to i32, !dbg !1596
  %6 = and i32 %5, 65263, !dbg !1596
  %7 = or i32 %6, 16, !dbg !1596
  %8 = trunc i32 %7 to i16, !dbg !1596
  ret i16 %8, !dbg !1597
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @stun_make_success_response(i16 noundef zeroext %0) #0 !dbg !1598 {
  %2 = alloca i16, align 2
  store i16 %0, ptr %2, align 2
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1599, metadata !DIExpression()), !dbg !1600
  %3 = load i16, ptr %2, align 2, !dbg !1601
  %4 = call zeroext i16 @stun_make_type(i16 noundef zeroext %3), !dbg !1601
  %5 = zext i16 %4 to i32, !dbg !1601
  %6 = and i32 %5, 65263, !dbg !1601
  %7 = or i32 %6, 256, !dbg !1601
  %8 = trunc i32 %7 to i16, !dbg !1601
  ret i16 %8, !dbg !1602
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @stun_make_error_response(i16 noundef zeroext %0) #0 !dbg !1603 {
  %2 = alloca i16, align 2
  store i16 %0, ptr %2, align 2
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1604, metadata !DIExpression()), !dbg !1605
  %3 = load i16, ptr %2, align 2, !dbg !1606
  %4 = call zeroext i16 @stun_make_type(i16 noundef zeroext %3), !dbg !1606
  %5 = zext i16 %4 to i32, !dbg !1606
  %6 = or i32 %5, 272, !dbg !1606
  %7 = trunc i32 %6 to i16, !dbg !1606
  ret i16 %7, !dbg !1607
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stun_init_buffer_str(ptr noundef %0, ptr noundef %1) #0 !dbg !1608 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1612, metadata !DIExpression()), !dbg !1613
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1614, metadata !DIExpression()), !dbg !1615
  %5 = load ptr, ptr %4, align 8, !dbg !1616
  store i64 20, ptr %5, align 8, !dbg !1617
  %6 = load ptr, ptr %3, align 8, !dbg !1618
  %7 = load ptr, ptr %4, align 8, !dbg !1619
  %8 = load i64, ptr %7, align 8, !dbg !1620
  call void @llvm.memset.p0.i64(ptr align 1 %6, i8 0, i64 %8, i1 false), !dbg !1621
  ret void, !dbg !1622
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stun_init_command_str(i16 noundef zeroext %0, ptr noundef %1, ptr noundef %2) #0 !dbg !1623 {
  %4 = alloca i16, align 2
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store i16 %0, ptr %4, align 2
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1626, metadata !DIExpression()), !dbg !1627
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1628, metadata !DIExpression()), !dbg !1629
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1630, metadata !DIExpression()), !dbg !1631
  %7 = load ptr, ptr %5, align 8, !dbg !1632
  %8 = load ptr, ptr %6, align 8, !dbg !1633
  call void @stun_init_buffer_str(ptr noundef %7, ptr noundef %8), !dbg !1634
  %9 = load i16, ptr %4, align 2, !dbg !1635
  %10 = zext i16 %9 to i32, !dbg !1635
  %11 = and i32 %10, 16383, !dbg !1635
  %12 = trunc i32 %11 to i16, !dbg !1635
  store i16 %12, ptr %4, align 2, !dbg !1635
  %13 = load i16, ptr %4, align 2, !dbg !1636
  %14 = call zeroext i16 @ntohs(i16 noundef zeroext %13) #11, !dbg !1636
  %15 = load ptr, ptr %5, align 8, !dbg !1637
  %16 = getelementptr inbounds i16, ptr %15, i64 0, !dbg !1638
  store i16 %14, ptr %16, align 2, !dbg !1639
  %17 = load ptr, ptr %5, align 8, !dbg !1640
  %18 = getelementptr inbounds i16, ptr %17, i64 1, !dbg !1641
  store i16 0, ptr %18, align 2, !dbg !1642
  %19 = call i32 @ntohl(i32 noundef 554869826) #11, !dbg !1643
  %20 = load ptr, ptr %5, align 8, !dbg !1644
  %21 = getelementptr inbounds i32, ptr %20, i64 1, !dbg !1645
  store i32 %19, ptr %21, align 4, !dbg !1646
  %22 = load ptr, ptr %5, align 8, !dbg !1647
  call void @stun_tid_generate_in_message_str(ptr noundef %22, ptr noundef null), !dbg !1648
  ret void, !dbg !1649
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stun_tid_generate_in_message_str(ptr noundef %0, ptr noundef %1) #0 !dbg !1650 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.stun_tid, align 1
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1659, metadata !DIExpression()), !dbg !1660
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1661, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1663, metadata !DIExpression()), !dbg !1664
  %6 = load ptr, ptr %4, align 8, !dbg !1665
  %7 = icmp ne ptr %6, null, !dbg !1665
  br i1 %7, label %9, label %8, !dbg !1667

8:                                                ; preds = %2
  store ptr %5, ptr %4, align 8, !dbg !1668
  br label %9, !dbg !1669

9:                                                ; preds = %8, %2
  %10 = load ptr, ptr %4, align 8, !dbg !1670
  call void @stun_tid_generate(ptr noundef %10), !dbg !1671
  %11 = load ptr, ptr %3, align 8, !dbg !1672
  %12 = load ptr, ptr %4, align 8, !dbg !1673
  call void @stun_tid_message_cpy(ptr noundef %11, ptr noundef %12), !dbg !1674
  ret void, !dbg !1675
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @old_stun_init_command_str(i16 noundef zeroext %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 !dbg !1676 {
  %5 = alloca i16, align 2
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store i16 %0, ptr %5, align 2
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1679, metadata !DIExpression()), !dbg !1680
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1681, metadata !DIExpression()), !dbg !1682
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1683, metadata !DIExpression()), !dbg !1684
  store i32 %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1685, metadata !DIExpression()), !dbg !1686
  %9 = load ptr, ptr %6, align 8, !dbg !1687
  %10 = load ptr, ptr %7, align 8, !dbg !1688
  call void @stun_init_buffer_str(ptr noundef %9, ptr noundef %10), !dbg !1689
  %11 = load i16, ptr %5, align 2, !dbg !1690
  %12 = zext i16 %11 to i32, !dbg !1690
  %13 = and i32 %12, 16383, !dbg !1690
  %14 = trunc i32 %13 to i16, !dbg !1690
  store i16 %14, ptr %5, align 2, !dbg !1690
  %15 = load i16, ptr %5, align 2, !dbg !1691
  %16 = call zeroext i16 @ntohs(i16 noundef zeroext %15) #11, !dbg !1691
  %17 = load ptr, ptr %6, align 8, !dbg !1692
  %18 = getelementptr inbounds i16, ptr %17, i64 0, !dbg !1693
  store i16 %16, ptr %18, align 2, !dbg !1694
  %19 = load ptr, ptr %6, align 8, !dbg !1695
  %20 = getelementptr inbounds i16, ptr %19, i64 1, !dbg !1696
  store i16 0, ptr %20, align 2, !dbg !1697
  %21 = load i32, ptr %8, align 4, !dbg !1698
  %22 = call i32 @ntohl(i32 noundef %21) #11, !dbg !1698
  %23 = load ptr, ptr %6, align 8, !dbg !1699
  %24 = getelementptr inbounds i32, ptr %23, i64 1, !dbg !1700
  store i32 %22, ptr %24, align 4, !dbg !1701
  %25 = load ptr, ptr %6, align 8, !dbg !1702
  call void @stun_tid_generate_in_message_str(ptr noundef %25, ptr noundef null), !dbg !1703
  ret void, !dbg !1704
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stun_init_request_str(i16 noundef zeroext %0, ptr noundef %1, ptr noundef %2) #0 !dbg !1705 {
  %4 = alloca i16, align 2
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store i16 %0, ptr %4, align 2
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1706, metadata !DIExpression()), !dbg !1707
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1708, metadata !DIExpression()), !dbg !1709
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1710, metadata !DIExpression()), !dbg !1711
  %7 = load i16, ptr %4, align 2, !dbg !1712
  %8 = call zeroext i16 @stun_make_request(i16 noundef zeroext %7), !dbg !1713
  %9 = load ptr, ptr %5, align 8, !dbg !1714
  %10 = load ptr, ptr %6, align 8, !dbg !1715
  call void @stun_init_command_str(i16 noundef zeroext %8, ptr noundef %9, ptr noundef %10), !dbg !1716
  ret void, !dbg !1717
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stun_init_indication_str(i16 noundef zeroext %0, ptr noundef %1, ptr noundef %2) #0 !dbg !1718 {
  %4 = alloca i16, align 2
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store i16 %0, ptr %4, align 2
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1719, metadata !DIExpression()), !dbg !1720
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1721, metadata !DIExpression()), !dbg !1722
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1723, metadata !DIExpression()), !dbg !1724
  %7 = load i16, ptr %4, align 2, !dbg !1725
  %8 = call zeroext i16 @stun_make_indication(i16 noundef zeroext %7), !dbg !1726
  %9 = load ptr, ptr %5, align 8, !dbg !1727
  %10 = load ptr, ptr %6, align 8, !dbg !1728
  call void @stun_init_command_str(i16 noundef zeroext %8, ptr noundef %9, ptr noundef %10), !dbg !1729
  ret void, !dbg !1730
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stun_init_success_response_str(i16 noundef zeroext %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !1731 {
  %5 = alloca i16, align 2
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store i16 %0, ptr %5, align 2
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1734, metadata !DIExpression()), !dbg !1735
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1736, metadata !DIExpression()), !dbg !1737
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1738, metadata !DIExpression()), !dbg !1739
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1740, metadata !DIExpression()), !dbg !1741
  %9 = load i16, ptr %5, align 2, !dbg !1742
  %10 = call zeroext i16 @stun_make_success_response(i16 noundef zeroext %9), !dbg !1743
  %11 = load ptr, ptr %6, align 8, !dbg !1744
  %12 = load ptr, ptr %7, align 8, !dbg !1745
  call void @stun_init_command_str(i16 noundef zeroext %10, ptr noundef %11, ptr noundef %12), !dbg !1746
  %13 = load ptr, ptr %8, align 8, !dbg !1747
  %14 = icmp ne ptr %13, null, !dbg !1747
  br i1 %14, label %15, label %18, !dbg !1749

15:                                               ; preds = %4
  %16 = load ptr, ptr %6, align 8, !dbg !1750
  %17 = load ptr, ptr %8, align 8, !dbg !1752
  call void @stun_tid_message_cpy(ptr noundef %16, ptr noundef %17), !dbg !1753
  br label %18, !dbg !1754

18:                                               ; preds = %15, %4
  ret void, !dbg !1755
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stun_tid_message_cpy(ptr noundef %0, ptr noundef %1) #0 !dbg !1756 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1761, metadata !DIExpression()), !dbg !1762
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1763, metadata !DIExpression()), !dbg !1764
  %5 = load ptr, ptr %3, align 8, !dbg !1765
  %6 = icmp ne ptr %5, null, !dbg !1765
  br i1 %6, label %7, label %14, !dbg !1767

7:                                                ; preds = %2
  %8 = load ptr, ptr %4, align 8, !dbg !1768
  %9 = icmp ne ptr %8, null, !dbg !1768
  br i1 %9, label %10, label %14, !dbg !1769

10:                                               ; preds = %7
  %11 = load ptr, ptr %3, align 8, !dbg !1770
  %12 = getelementptr inbounds i8, ptr %11, i64 8, !dbg !1772
  %13 = load ptr, ptr %4, align 8, !dbg !1773
  call void @stun_tid_string_cpy(ptr noundef %12, ptr noundef %13), !dbg !1774
  br label %14, !dbg !1775

14:                                               ; preds = %10, %7, %2
  ret void, !dbg !1776
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @old_stun_init_success_response_str(i16 noundef zeroext %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 !dbg !1777 {
  %6 = alloca i16, align 2
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  store i16 %0, ptr %6, align 2
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1780, metadata !DIExpression()), !dbg !1781
  store ptr %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1782, metadata !DIExpression()), !dbg !1783
  store ptr %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1784, metadata !DIExpression()), !dbg !1785
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1786, metadata !DIExpression()), !dbg !1787
  store i32 %4, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1788, metadata !DIExpression()), !dbg !1789
  %11 = load i16, ptr %6, align 2, !dbg !1790
  %12 = call zeroext i16 @stun_make_success_response(i16 noundef zeroext %11), !dbg !1791
  %13 = load ptr, ptr %7, align 8, !dbg !1792
  %14 = load ptr, ptr %8, align 8, !dbg !1793
  %15 = load i32, ptr %10, align 4, !dbg !1794
  call void @old_stun_init_command_str(i16 noundef zeroext %12, ptr noundef %13, ptr noundef %14, i32 noundef %15), !dbg !1795
  %16 = load ptr, ptr %9, align 8, !dbg !1796
  %17 = icmp ne ptr %16, null, !dbg !1796
  br i1 %17, label %18, label %21, !dbg !1798

18:                                               ; preds = %5
  %19 = load ptr, ptr %7, align 8, !dbg !1799
  %20 = load ptr, ptr %9, align 8, !dbg !1801
  call void @stun_tid_message_cpy(ptr noundef %19, ptr noundef %20), !dbg !1802
  br label %21, !dbg !1803

21:                                               ; preds = %18, %5
  ret void, !dbg !1804
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @get_default_reason(i32 noundef %0) #0 !dbg !1805 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1808, metadata !DIExpression()), !dbg !1809
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1810, metadata !DIExpression()), !dbg !1811
  store ptr @.str.11, ptr %3, align 8, !dbg !1811
  %4 = load i32, ptr %2, align 4, !dbg !1812
  switch i32 %4, label %23 [
    i32 300, label %5
    i32 400, label %6
    i32 401, label %7
    i32 403, label %8
    i32 404, label %9
    i32 420, label %10
    i32 437, label %11
    i32 438, label %12
    i32 440, label %13
    i32 441, label %14
    i32 442, label %15
    i32 443, label %16
    i32 446, label %17
    i32 447, label %18
    i32 486, label %19
    i32 487, label %20
    i32 500, label %21
    i32 508, label %22
  ], !dbg !1813

5:                                                ; preds = %1
  store ptr @.str.12, ptr %3, align 8, !dbg !1814
  br label %24, !dbg !1816

6:                                                ; preds = %1
  store ptr @.str.13, ptr %3, align 8, !dbg !1817
  br label %24, !dbg !1818

7:                                                ; preds = %1
  store ptr @.str.14, ptr %3, align 8, !dbg !1819
  br label %24, !dbg !1820

8:                                                ; preds = %1
  store ptr @.str.15, ptr %3, align 8, !dbg !1821
  br label %24, !dbg !1822

9:                                                ; preds = %1
  store ptr @.str.16, ptr %3, align 8, !dbg !1823
  br label %24, !dbg !1824

10:                                               ; preds = %1
  store ptr @.str.17, ptr %3, align 8, !dbg !1825
  br label %24, !dbg !1826

11:                                               ; preds = %1
  store ptr @.str.18, ptr %3, align 8, !dbg !1827
  br label %24, !dbg !1828

12:                                               ; preds = %1
  store ptr @.str.19, ptr %3, align 8, !dbg !1829
  br label %24, !dbg !1830

13:                                               ; preds = %1
  store ptr @.str.20, ptr %3, align 8, !dbg !1831
  br label %24, !dbg !1832

14:                                               ; preds = %1
  store ptr @.str.21, ptr %3, align 8, !dbg !1833
  br label %24, !dbg !1834

15:                                               ; preds = %1
  store ptr @.str.22, ptr %3, align 8, !dbg !1835
  br label %24, !dbg !1836

16:                                               ; preds = %1
  store ptr @.str.23, ptr %3, align 8, !dbg !1837
  br label %24, !dbg !1838

17:                                               ; preds = %1
  store ptr @.str.24, ptr %3, align 8, !dbg !1839
  br label %24, !dbg !1840

18:                                               ; preds = %1
  store ptr @.str.25, ptr %3, align 8, !dbg !1841
  br label %24, !dbg !1842

19:                                               ; preds = %1
  store ptr @.str.26, ptr %3, align 8, !dbg !1843
  br label %24, !dbg !1844

20:                                               ; preds = %1
  store ptr @.str.27, ptr %3, align 8, !dbg !1845
  br label %24, !dbg !1846

21:                                               ; preds = %1
  store ptr @.str.28, ptr %3, align 8, !dbg !1847
  br label %24, !dbg !1848

22:                                               ; preds = %1
  store ptr @.str.29, ptr %3, align 8, !dbg !1849
  br label %24, !dbg !1850

23:                                               ; preds = %1
  br label %24, !dbg !1851

24:                                               ; preds = %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %25 = load ptr, ptr %3, align 8, !dbg !1852
  ret ptr %25, !dbg !1853
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @old_stun_init_error_response_str(i16 noundef zeroext %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) #0 !dbg !1854 {
  %8 = alloca i16, align 2
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i16, align 2
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  store i16 %0, ptr %8, align 2
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1857, metadata !DIExpression()), !dbg !1858
  store ptr %1, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1859, metadata !DIExpression()), !dbg !1860
  store ptr %2, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1861, metadata !DIExpression()), !dbg !1862
  store i16 %3, ptr %11, align 2
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1863, metadata !DIExpression()), !dbg !1864
  store ptr %4, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1865, metadata !DIExpression()), !dbg !1866
  store ptr %5, ptr %13, align 8
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1867, metadata !DIExpression()), !dbg !1868
  store i32 %6, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1869, metadata !DIExpression()), !dbg !1870
  %15 = load i16, ptr %8, align 2, !dbg !1871
  %16 = call zeroext i16 @stun_make_error_response(i16 noundef zeroext %15), !dbg !1872
  %17 = load ptr, ptr %9, align 8, !dbg !1873
  %18 = load ptr, ptr %10, align 8, !dbg !1874
  %19 = load i32, ptr %14, align 4, !dbg !1875
  call void @old_stun_init_command_str(i16 noundef zeroext %16, ptr noundef %17, ptr noundef %18, i32 noundef %19), !dbg !1876
  %20 = load ptr, ptr %9, align 8, !dbg !1877
  %21 = load ptr, ptr %10, align 8, !dbg !1878
  %22 = load i16, ptr %11, align 2, !dbg !1879
  %23 = load ptr, ptr %12, align 8, !dbg !1880
  %24 = load ptr, ptr %13, align 8, !dbg !1881
  call void @stun_init_error_response_common_str(ptr noundef %20, ptr noundef %21, i16 noundef zeroext %22, ptr noundef %23, ptr noundef %24), !dbg !1882
  ret void, !dbg !1883
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stun_init_error_response_common_str(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2, ptr noundef %3, ptr noundef %4) #0 !dbg !1884 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i16, align 2
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca [513 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1887, metadata !DIExpression()), !dbg !1888
  store ptr %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1889, metadata !DIExpression()), !dbg !1890
  store i16 %2, ptr %8, align 2
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1891, metadata !DIExpression()), !dbg !1892
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1893, metadata !DIExpression()), !dbg !1894
  store ptr %4, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1895, metadata !DIExpression()), !dbg !1896
  %14 = load ptr, ptr %9, align 8, !dbg !1897
  %15 = icmp ne ptr %14, null, !dbg !1897
  br i1 %15, label %16, label %20, !dbg !1899

16:                                               ; preds = %5
  %17 = load ptr, ptr %9, align 8, !dbg !1900
  %18 = call i32 @strcmp(ptr noundef %17, ptr noundef @.str.11) #8, !dbg !1901
  %19 = icmp ne i32 %18, 0, !dbg !1901
  br i1 %19, label %24, label %20, !dbg !1902

20:                                               ; preds = %16, %5
  %21 = load i16, ptr %8, align 2, !dbg !1903
  %22 = zext i16 %21 to i32, !dbg !1903
  %23 = call ptr @get_default_reason(i32 noundef %22), !dbg !1905
  store ptr %23, ptr %9, align 8, !dbg !1906
  br label %24, !dbg !1907

24:                                               ; preds = %20, %16
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1908, metadata !DIExpression()), !dbg !1912
  %25 = getelementptr inbounds [513 x i8], ptr %11, i64 0, i64 0, !dbg !1913
  store i8 0, ptr %25, align 16, !dbg !1914
  %26 = getelementptr inbounds [513 x i8], ptr %11, i64 0, i64 1, !dbg !1915
  store i8 0, ptr %26, align 1, !dbg !1916
  %27 = load i16, ptr %8, align 2, !dbg !1917
  %28 = zext i16 %27 to i32, !dbg !1917
  %29 = sdiv i32 %28, 100, !dbg !1918
  %30 = trunc i32 %29 to i8, !dbg !1919
  %31 = getelementptr inbounds [513 x i8], ptr %11, i64 0, i64 2, !dbg !1920
  store i8 %30, ptr %31, align 2, !dbg !1921
  %32 = load i16, ptr %8, align 2, !dbg !1922
  %33 = zext i16 %32 to i32, !dbg !1922
  %34 = srem i32 %33, 100, !dbg !1923
  %35 = trunc i32 %34 to i8, !dbg !1924
  %36 = getelementptr inbounds [513 x i8], ptr %11, i64 0, i64 3, !dbg !1925
  store i8 %35, ptr %36, align 1, !dbg !1926
  %37 = getelementptr inbounds [513 x i8], ptr %11, i64 0, i64 0, !dbg !1927
  %38 = getelementptr inbounds i8, ptr %37, i64 4, !dbg !1928
  %39 = load ptr, ptr %9, align 8, !dbg !1929
  %40 = call ptr @strncpy(ptr noundef %38, ptr noundef %39, i64 noundef 509) #9, !dbg !1930
  %41 = getelementptr inbounds [513 x i8], ptr %11, i64 0, i64 512, !dbg !1931
  store i8 0, ptr %41, align 16, !dbg !1932
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1933, metadata !DIExpression()), !dbg !1934
  %42 = getelementptr inbounds [513 x i8], ptr %11, i64 0, i64 0, !dbg !1935
  %43 = getelementptr inbounds i8, ptr %42, i64 4, !dbg !1936
  %44 = call i64 @strlen(ptr noundef %43) #8, !dbg !1937
  %45 = trunc i64 %44 to i32, !dbg !1938
  %46 = add nsw i32 4, %45, !dbg !1939
  store i32 %46, ptr %12, align 4, !dbg !1934
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1940, metadata !DIExpression()), !dbg !1942
  %47 = load i32, ptr %12, align 4, !dbg !1943
  %48 = srem i32 %47, 4, !dbg !1944
  store i32 %48, ptr %13, align 4, !dbg !1942
  %49 = load i32, ptr %13, align 4, !dbg !1945
  %50 = icmp ne i32 %49, 0, !dbg !1945
  br i1 %50, label %51, label %56, !dbg !1947

51:                                               ; preds = %24
  %52 = load i32, ptr %13, align 4, !dbg !1948
  %53 = sub nsw i32 4, %52, !dbg !1950
  %54 = load i32, ptr %12, align 4, !dbg !1951
  %55 = add nsw i32 %54, %53, !dbg !1951
  store i32 %55, ptr %12, align 4, !dbg !1951
  br label %56, !dbg !1952

56:                                               ; preds = %51, %24
  %57 = load ptr, ptr %6, align 8, !dbg !1953
  %58 = load ptr, ptr %7, align 8, !dbg !1954
  %59 = getelementptr inbounds [513 x i8], ptr %11, i64 0, i64 0, !dbg !1955
  %60 = load i32, ptr %12, align 4, !dbg !1956
  %61 = call i32 @stun_attr_add_str(ptr noundef %57, ptr noundef %58, i16 noundef zeroext 9, ptr noundef %59, i32 noundef %60), !dbg !1957
  %62 = load ptr, ptr %10, align 8, !dbg !1958
  %63 = icmp ne ptr %62, null, !dbg !1958
  br i1 %63, label %64, label %67, !dbg !1960

64:                                               ; preds = %56
  %65 = load ptr, ptr %6, align 8, !dbg !1961
  %66 = load ptr, ptr %10, align 8, !dbg !1963
  call void @stun_tid_message_cpy(ptr noundef %65, ptr noundef %66), !dbg !1964
  br label %67, !dbg !1965

67:                                               ; preds = %64, %56
  ret void, !dbg !1966
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stun_init_error_response_str(i16 noundef zeroext %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3, ptr noundef %4, ptr noundef %5) #0 !dbg !1967 {
  %7 = alloca i16, align 2
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i16, align 2
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  store i16 %0, ptr %7, align 2
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1970, metadata !DIExpression()), !dbg !1971
  store ptr %1, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1972, metadata !DIExpression()), !dbg !1973
  store ptr %2, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1974, metadata !DIExpression()), !dbg !1975
  store i16 %3, ptr %10, align 2
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1976, metadata !DIExpression()), !dbg !1977
  store ptr %4, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1978, metadata !DIExpression()), !dbg !1979
  store ptr %5, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1980, metadata !DIExpression()), !dbg !1981
  %13 = load i16, ptr %7, align 2, !dbg !1982
  %14 = call zeroext i16 @stun_make_error_response(i16 noundef zeroext %13), !dbg !1983
  %15 = load ptr, ptr %8, align 8, !dbg !1984
  %16 = load ptr, ptr %9, align 8, !dbg !1985
  call void @stun_init_command_str(i16 noundef zeroext %14, ptr noundef %15, ptr noundef %16), !dbg !1986
  %17 = load ptr, ptr %8, align 8, !dbg !1987
  %18 = load ptr, ptr %9, align 8, !dbg !1988
  %19 = load i16, ptr %10, align 2, !dbg !1989
  %20 = load ptr, ptr %11, align 8, !dbg !1990
  %21 = load ptr, ptr %12, align 8, !dbg !1991
  call void @stun_init_error_response_common_str(ptr noundef %17, ptr noundef %18, i16 noundef zeroext %19, ptr noundef %20, ptr noundef %21), !dbg !1992
  ret void, !dbg !1993
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stun_init_channel_message_str(i16 noundef zeroext %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 !dbg !1994 {
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  store i16 %0, ptr %7, align 2
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1997, metadata !DIExpression()), !dbg !1998
  store ptr %1, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1999, metadata !DIExpression()), !dbg !2000
  store ptr %2, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2001, metadata !DIExpression()), !dbg !2002
  store i32 %3, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2003, metadata !DIExpression()), !dbg !2004
  store i32 %4, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2005, metadata !DIExpression()), !dbg !2006
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2007, metadata !DIExpression()), !dbg !2008
  %13 = load i32, ptr %10, align 4, !dbg !2009
  %14 = trunc i32 %13 to i16, !dbg !2010
  store i16 %14, ptr %12, align 2, !dbg !2008
  %15 = load i32, ptr %10, align 4, !dbg !2011
  %16 = icmp slt i32 %15, 0, !dbg !2013
  br i1 %16, label %21, label %17, !dbg !2014

17:                                               ; preds = %5
  %18 = load i32, ptr %10, align 4, !dbg !2015
  %19 = add nsw i32 4, %18, !dbg !2016
  %20 = icmp slt i32 65507, %19, !dbg !2017
  br i1 %20, label %21, label %22, !dbg !2018

21:                                               ; preds = %17, %5
  store i32 -1, ptr %6, align 4, !dbg !2019
  br label %52, !dbg !2019

22:                                               ; preds = %17
  %23 = load i16, ptr %7, align 2, !dbg !2020
  %24 = call zeroext i16 @ntohs(i16 noundef zeroext %23) #11, !dbg !2020
  %25 = load ptr, ptr %8, align 8, !dbg !2021
  %26 = getelementptr inbounds i16, ptr %25, i64 0, !dbg !2022
  store i16 %24, ptr %26, align 2, !dbg !2023
  %27 = load i32, ptr %10, align 4, !dbg !2024
  %28 = trunc i32 %27 to i16, !dbg !2024
  %29 = call zeroext i16 @ntohs(i16 noundef zeroext %28) #11, !dbg !2024
  %30 = load ptr, ptr %8, align 8, !dbg !2025
  %31 = getelementptr inbounds i16, ptr %30, i64 1, !dbg !2026
  store i16 %29, ptr %31, align 2, !dbg !2027
  %32 = load i32, ptr %11, align 4, !dbg !2028
  %33 = icmp ne i32 %32, 0, !dbg !2028
  br i1 %33, label %34, label %46, !dbg !2030

34:                                               ; preds = %22
  %35 = load i16, ptr %12, align 2, !dbg !2031
  %36 = zext i16 %35 to i32, !dbg !2031
  %37 = and i32 %36, 3, !dbg !2032
  %38 = icmp ne i32 %37, 0, !dbg !2032
  br i1 %38, label %39, label %46, !dbg !2033

39:                                               ; preds = %34
  %40 = load i16, ptr %12, align 2, !dbg !2034
  %41 = zext i16 %40 to i32, !dbg !2034
  %42 = ashr i32 %41, 2, !dbg !2035
  %43 = add nsw i32 %42, 1, !dbg !2036
  %44 = shl i32 %43, 2, !dbg !2037
  %45 = trunc i32 %44 to i16, !dbg !2038
  store i16 %45, ptr %12, align 2, !dbg !2039
  br label %46, !dbg !2040

46:                                               ; preds = %39, %34, %22
  %47 = load i16, ptr %12, align 2, !dbg !2041
  %48 = zext i16 %47 to i32, !dbg !2041
  %49 = add nsw i32 4, %48, !dbg !2042
  %50 = sext i32 %49 to i64, !dbg !2043
  %51 = load ptr, ptr %9, align 8, !dbg !2044
  store i64 %50, ptr %51, align 8, !dbg !2045
  store i32 0, ptr %6, align 4, !dbg !2046
  br label %52, !dbg !2046

52:                                               ; preds = %46, %21
  %53 = load i32, ptr %6, align 4, !dbg !2047
  ret i32 %53, !dbg !2047
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stun_is_channel_message_str(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 !dbg !2048 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2051, metadata !DIExpression()), !dbg !2052
  store ptr %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2053, metadata !DIExpression()), !dbg !2054
  store ptr %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2055, metadata !DIExpression()), !dbg !2056
  store i32 %3, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2057, metadata !DIExpression()), !dbg !2058
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2059, metadata !DIExpression()), !dbg !2060
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2061, metadata !DIExpression()), !dbg !2062
  %14 = load ptr, ptr %7, align 8, !dbg !2063
  %15 = icmp ne ptr %14, null, !dbg !2063
  br i1 %15, label %16, label %20, !dbg !2065

16:                                               ; preds = %4
  %17 = load ptr, ptr %7, align 8, !dbg !2066
  %18 = load i64, ptr %17, align 8, !dbg !2067
  %19 = icmp ult i64 %18, 4, !dbg !2068
  br i1 %19, label %20, label %21, !dbg !2069

20:                                               ; preds = %16, %4
  store i32 0, ptr %5, align 4, !dbg !2070
  br label %111, !dbg !2070

21:                                               ; preds = %16
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2071, metadata !DIExpression()), !dbg !2072
  %22 = load ptr, ptr %6, align 8, !dbg !2073
  %23 = getelementptr inbounds i16, ptr %22, i64 0, !dbg !2073
  %24 = load i16, ptr %23, align 2, !dbg !2073
  %25 = call zeroext i16 @ntohs(i16 noundef zeroext %24) #11, !dbg !2073
  store i16 %25, ptr %12, align 2, !dbg !2072
  %26 = load i16, ptr %12, align 2, !dbg !2074
  %27 = zext i16 %26 to i32, !dbg !2074
  %28 = icmp sge i32 %27, 16384, !dbg !2074
  br i1 %28, label %29, label %33, !dbg !2074

29:                                               ; preds = %21
  %30 = load i16, ptr %12, align 2, !dbg !2074
  %31 = zext i16 %30 to i32, !dbg !2074
  %32 = icmp sle i32 %31, 32767, !dbg !2074
  br i1 %32, label %34, label %33, !dbg !2076

33:                                               ; preds = %29, %21
  store i32 0, ptr %5, align 4, !dbg !2077
  br label %111, !dbg !2077

34:                                               ; preds = %29
  %35 = load ptr, ptr %7, align 8, !dbg !2078
  %36 = load i64, ptr %35, align 8, !dbg !2080
  %37 = icmp ugt i64 %36, 65535, !dbg !2081
  br i1 %37, label %38, label %40, !dbg !2082

38:                                               ; preds = %34
  %39 = load ptr, ptr %7, align 8, !dbg !2083
  store i64 65535, ptr %39, align 8, !dbg !2084
  br label %40, !dbg !2085

40:                                               ; preds = %38, %34
  %41 = load ptr, ptr %7, align 8, !dbg !2086
  %42 = load i64, ptr %41, align 8, !dbg !2087
  %43 = trunc i64 %42 to i16, !dbg !2088
  %44 = zext i16 %43 to i32, !dbg !2088
  %45 = sub nsw i32 %44, 4, !dbg !2089
  %46 = trunc i32 %45 to i16, !dbg !2088
  store i16 %46, ptr %11, align 2, !dbg !2090
  %47 = load ptr, ptr %6, align 8, !dbg !2091
  %48 = getelementptr inbounds i16, ptr %47, i64 1, !dbg !2092
  %49 = load i16, ptr %48, align 2, !dbg !2092
  store i16 %49, ptr %10, align 2, !dbg !2093
  %50 = load i16, ptr %10, align 2, !dbg !2094
  %51 = call zeroext i16 @ntohs(i16 noundef zeroext %50) #11, !dbg !2094
  store i16 %51, ptr %10, align 2, !dbg !2095
  %52 = load i16, ptr %10, align 2, !dbg !2096
  %53 = zext i16 %52 to i32, !dbg !2096
  %54 = load i16, ptr %11, align 2, !dbg !2098
  %55 = zext i16 %54 to i32, !dbg !2098
  %56 = icmp sgt i32 %53, %55, !dbg !2099
  br i1 %56, label %57, label %58, !dbg !2100

57:                                               ; preds = %40
  store i32 0, ptr %5, align 4, !dbg !2101
  br label %111, !dbg !2101

58:                                               ; preds = %40
  %59 = load i16, ptr %10, align 2, !dbg !2102
  %60 = zext i16 %59 to i32, !dbg !2102
  %61 = load i16, ptr %11, align 2, !dbg !2104
  %62 = zext i16 %61 to i32, !dbg !2104
  %63 = icmp ne i32 %60, %62, !dbg !2105
  br i1 %63, label %64, label %99, !dbg !2106

64:                                               ; preds = %58
  %65 = load i16, ptr %11, align 2, !dbg !2107
  %66 = zext i16 %65 to i32, !dbg !2107
  %67 = and i32 %66, 3, !dbg !2110
  %68 = icmp ne i32 %67, 0, !dbg !2110
  br i1 %68, label %69, label %98, !dbg !2111

69:                                               ; preds = %64
  %70 = load i32, ptr %9, align 4, !dbg !2112
  %71 = icmp ne i32 %70, 0, !dbg !2112
  br i1 %71, label %72, label %73, !dbg !2115

72:                                               ; preds = %69
  store i32 0, ptr %5, align 4, !dbg !2116
  br label %111, !dbg !2116

73:                                               ; preds = %69
  %74 = load i16, ptr %11, align 2, !dbg !2118
  %75 = zext i16 %74 to i32, !dbg !2118
  %76 = load i16, ptr %10, align 2, !dbg !2120
  %77 = zext i16 %76 to i32, !dbg !2120
  %78 = icmp slt i32 %75, %77, !dbg !2121
  br i1 %78, label %83, label %79, !dbg !2122

79:                                               ; preds = %73
  %80 = load i16, ptr %10, align 2, !dbg !2123
  %81 = zext i16 %80 to i32, !dbg !2123
  %82 = icmp eq i32 %81, 0, !dbg !2124
  br i1 %82, label %83, label %84, !dbg !2125

83:                                               ; preds = %79, %73
  store i32 0, ptr %5, align 4, !dbg !2126
  br label %111, !dbg !2126

84:                                               ; preds = %79
  call void @llvm.dbg.declare(metadata ptr %13, metadata !2128, metadata !DIExpression()), !dbg !2130
  %85 = load i16, ptr %11, align 2, !dbg !2131
  %86 = zext i16 %85 to i32, !dbg !2131
  %87 = load i16, ptr %10, align 2, !dbg !2132
  %88 = zext i16 %87 to i32, !dbg !2132
  %89 = sub nsw i32 %86, %88, !dbg !2133
  %90 = trunc i32 %89 to i16, !dbg !2131
  store i16 %90, ptr %13, align 2, !dbg !2130
  %91 = load i16, ptr %13, align 2, !dbg !2134
  %92 = zext i16 %91 to i32, !dbg !2134
  %93 = icmp sgt i32 %92, 3, !dbg !2136
  br i1 %93, label %94, label %95, !dbg !2137

94:                                               ; preds = %84
  store i32 0, ptr %5, align 4, !dbg !2138
  br label %111, !dbg !2138

95:                                               ; preds = %84
  br label %96

96:                                               ; preds = %95
  br label %97

97:                                               ; preds = %96
  br label %98, !dbg !2139

98:                                               ; preds = %97, %64
  br label %99, !dbg !2140

99:                                               ; preds = %98, %58
  %100 = load i16, ptr %10, align 2, !dbg !2141
  %101 = zext i16 %100 to i32, !dbg !2141
  %102 = add nsw i32 %101, 4, !dbg !2142
  %103 = sext i32 %102 to i64, !dbg !2141
  %104 = load ptr, ptr %7, align 8, !dbg !2143
  store i64 %103, ptr %104, align 8, !dbg !2144
  %105 = load ptr, ptr %8, align 8, !dbg !2145
  %106 = icmp ne ptr %105, null, !dbg !2145
  br i1 %106, label %107, label %110, !dbg !2147

107:                                              ; preds = %99
  %108 = load i16, ptr %12, align 2, !dbg !2148
  %109 = load ptr, ptr %8, align 8, !dbg !2149
  store i16 %108, ptr %109, align 2, !dbg !2150
  br label %110, !dbg !2151

110:                                              ; preds = %107, %99
  store i32 1, ptr %5, align 4, !dbg !2152
  br label %111, !dbg !2152

111:                                              ; preds = %110, %94, %83, %72, %57, %33, %20
  %112 = load i32, ptr %5, align 4, !dbg !2153
  ret i32 %112, !dbg !2153
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_http(ptr noundef %0, i64 noundef %1) #0 !dbg !2154 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2157, metadata !DIExpression()), !dbg !2158
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2159, metadata !DIExpression()), !dbg !2160
  %5 = load ptr, ptr %3, align 8, !dbg !2161
  %6 = load i64, ptr %4, align 8, !dbg !2162
  %7 = call i32 @is_http_inline(ptr noundef %5, i64 noundef %6), !dbg !2163
  ret i32 %7, !dbg !2164
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_http_inline(ptr noundef %0, i64 noundef %1) #0 !dbg !2165 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2166, metadata !DIExpression()), !dbg !2167
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2168, metadata !DIExpression()), !dbg !2169
  %12 = load ptr, ptr %4, align 8, !dbg !2170
  %13 = icmp ne ptr %12, null, !dbg !2170
  br i1 %13, label %14, label %106, !dbg !2172

14:                                               ; preds = %2
  %15 = load i64, ptr %5, align 8, !dbg !2173
  %16 = icmp uge i64 %15, 12, !dbg !2174
  br i1 %16, label %17, label %106, !dbg !2175

17:                                               ; preds = %14
  %18 = load ptr, ptr %4, align 8, !dbg !2176
  %19 = call ptr @strstr(ptr noundef %18, ptr noundef @.str.47) #8, !dbg !2179
  %20 = load ptr, ptr %4, align 8, !dbg !2180
  %21 = icmp eq ptr %19, %20, !dbg !2181
  br i1 %21, label %37, label %22, !dbg !2182

22:                                               ; preds = %17
  %23 = load ptr, ptr %4, align 8, !dbg !2183
  %24 = call ptr @strstr(ptr noundef %23, ptr noundef @.str.48) #8, !dbg !2184
  %25 = load ptr, ptr %4, align 8, !dbg !2185
  %26 = icmp eq ptr %24, %25, !dbg !2186
  br i1 %26, label %37, label %27, !dbg !2187

27:                                               ; preds = %22
  %28 = load ptr, ptr %4, align 8, !dbg !2188
  %29 = call ptr @strstr(ptr noundef %28, ptr noundef @.str.49) #8, !dbg !2189
  %30 = load ptr, ptr %4, align 8, !dbg !2190
  %31 = icmp eq ptr %29, %30, !dbg !2191
  br i1 %31, label %37, label %32, !dbg !2192

32:                                               ; preds = %27
  %33 = load ptr, ptr %4, align 8, !dbg !2193
  %34 = call ptr @strstr(ptr noundef %33, ptr noundef @.str.50) #8, !dbg !2194
  %35 = load ptr, ptr %4, align 8, !dbg !2195
  %36 = icmp eq ptr %34, %35, !dbg !2196
  br i1 %36, label %37, label %105, !dbg !2197

37:                                               ; preds = %32, %27, %22, %17
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2198, metadata !DIExpression()), !dbg !2200
  %38 = load ptr, ptr %4, align 8, !dbg !2201
  %39 = getelementptr inbounds i8, ptr %38, i64 4, !dbg !2202
  %40 = load i64, ptr %5, align 8, !dbg !2203
  %41 = sub i64 %40, 4, !dbg !2204
  %42 = call ptr @findstr(ptr noundef %39, i64 noundef %41, ptr noundef @.str.51, i32 noundef 0), !dbg !2205
  store ptr %42, ptr %6, align 8, !dbg !2200
  %43 = load ptr, ptr %6, align 8, !dbg !2206
  %44 = icmp ne ptr %43, null, !dbg !2206
  br i1 %44, label %45, label %104, !dbg !2208

45:                                               ; preds = %37
  %46 = load ptr, ptr %6, align 8, !dbg !2209
  %47 = getelementptr inbounds i8, ptr %46, i64 6, !dbg !2209
  store ptr %47, ptr %6, align 8, !dbg !2209
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2211, metadata !DIExpression()), !dbg !2212
  %48 = load ptr, ptr %6, align 8, !dbg !2213
  %49 = load ptr, ptr %4, align 8, !dbg !2214
  %50 = ptrtoint ptr %48 to i64, !dbg !2215
  %51 = ptrtoint ptr %49 to i64, !dbg !2215
  %52 = sub i64 %50, %51, !dbg !2215
  store i64 %52, ptr %7, align 8, !dbg !2212
  %53 = load i64, ptr %7, align 8, !dbg !2216
  %54 = add i64 %53, 4, !dbg !2218
  %55 = load i64, ptr %5, align 8, !dbg !2219
  %56 = icmp ule i64 %54, %55, !dbg !2220
  br i1 %56, label %57, label %103, !dbg !2221

57:                                               ; preds = %45
  %58 = load ptr, ptr %6, align 8, !dbg !2222
  %59 = load i64, ptr %5, align 8, !dbg !2224
  %60 = load i64, ptr %7, align 8, !dbg !2225
  %61 = sub i64 %59, %60, !dbg !2226
  %62 = call ptr @findstr(ptr noundef %58, i64 noundef %61, ptr noundef @.str.52, i32 noundef 0), !dbg !2227
  store ptr %62, ptr %6, align 8, !dbg !2228
  %63 = load ptr, ptr %6, align 8, !dbg !2229
  %64 = icmp ne ptr %63, null, !dbg !2229
  br i1 %64, label %65, label %102, !dbg !2231

65:                                               ; preds = %57
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2232, metadata !DIExpression()), !dbg !2234
  %66 = load ptr, ptr %6, align 8, !dbg !2235
  %67 = load ptr, ptr %4, align 8, !dbg !2236
  %68 = ptrtoint ptr %66 to i64, !dbg !2237
  %69 = ptrtoint ptr %67 to i64, !dbg !2237
  %70 = sub i64 %68, %69, !dbg !2237
  %71 = add nsw i64 %70, 4, !dbg !2238
  %72 = trunc i64 %71 to i32, !dbg !2239
  store i32 %72, ptr %8, align 4, !dbg !2234
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2240, metadata !DIExpression()), !dbg !2241
  store ptr @.str.53, ptr %9, align 8, !dbg !2241
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2242, metadata !DIExpression()), !dbg !2243
  %73 = load ptr, ptr %4, align 8, !dbg !2244
  %74 = load ptr, ptr %6, align 8, !dbg !2245
  %75 = load ptr, ptr %4, align 8, !dbg !2246
  %76 = ptrtoint ptr %74 to i64, !dbg !2247
  %77 = ptrtoint ptr %75 to i64, !dbg !2247
  %78 = sub i64 %76, %77, !dbg !2247
  %79 = load ptr, ptr %9, align 8, !dbg !2248
  %80 = call ptr @findstr(ptr noundef %73, i64 noundef %78, ptr noundef %79, i32 noundef 1), !dbg !2249
  store ptr %80, ptr %10, align 8, !dbg !2243
  %81 = load ptr, ptr %10, align 8, !dbg !2250
  %82 = icmp ne ptr %81, null, !dbg !2250
  br i1 %82, label %83, label %100, !dbg !2252

83:                                               ; preds = %65
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2253, metadata !DIExpression()), !dbg !2255
  %84 = load ptr, ptr %10, align 8, !dbg !2256
  %85 = load ptr, ptr %9, align 8, !dbg !2257
  %86 = call i64 @strlen(ptr noundef %85) #8, !dbg !2258
  %87 = getelementptr inbounds i8, ptr %84, i64 %86, !dbg !2259
  %88 = call i64 @strtoul(ptr noundef %87, ptr noundef null, i32 noundef 10) #9, !dbg !2260
  store i64 %88, ptr %11, align 8, !dbg !2255
  %89 = load i64, ptr %11, align 8, !dbg !2261
  %90 = icmp ugt i64 %89, 0, !dbg !2263
  br i1 %90, label %91, label %99, !dbg !2264

91:                                               ; preds = %83
  %92 = load i64, ptr %11, align 8, !dbg !2265
  %93 = icmp ult i64 %92, 268435455, !dbg !2266
  br i1 %93, label %94, label %99, !dbg !2267

94:                                               ; preds = %91
  %95 = load i64, ptr %11, align 8, !dbg !2268
  %96 = trunc i64 %95 to i32, !dbg !2270
  %97 = load i32, ptr %8, align 4, !dbg !2271
  %98 = add nsw i32 %97, %96, !dbg !2271
  store i32 %98, ptr %8, align 4, !dbg !2271
  br label %99, !dbg !2272

99:                                               ; preds = %94, %91, %83
  br label %100, !dbg !2273

100:                                              ; preds = %99, %65
  %101 = load i32, ptr %8, align 4, !dbg !2274
  store i32 %101, ptr %3, align 4, !dbg !2275
  br label %107, !dbg !2275

102:                                              ; preds = %57
  br label %103, !dbg !2276

103:                                              ; preds = %102, %45
  br label %104, !dbg !2277

104:                                              ; preds = %103, %37
  br label %105, !dbg !2278

105:                                              ; preds = %104, %32
  br label %106, !dbg !2279

106:                                              ; preds = %105, %14, %2
  store i32 0, ptr %3, align 4, !dbg !2280
  br label %107, !dbg !2280

107:                                              ; preds = %106, %100
  %108 = load i32, ptr %3, align 4, !dbg !2281
  ret i32 %108, !dbg !2281
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stun_get_message_len_str(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3) #0 !dbg !2282 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i16, align 2
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2285, metadata !DIExpression()), !dbg !2286
  store i64 %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2287, metadata !DIExpression()), !dbg !2288
  store i32 %2, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2289, metadata !DIExpression()), !dbg !2290
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2291, metadata !DIExpression()), !dbg !2292
  %14 = load ptr, ptr %6, align 8, !dbg !2293
  %15 = icmp ne ptr %14, null, !dbg !2293
  br i1 %15, label %16, label %148, !dbg !2295

16:                                               ; preds = %4
  %17 = load i64, ptr %7, align 8, !dbg !2296
  %18 = icmp ne i64 %17, 0, !dbg !2296
  br i1 %18, label %19, label %148, !dbg !2297

19:                                               ; preds = %16
  %20 = load ptr, ptr %6, align 8, !dbg !2298
  %21 = icmp ne ptr %20, null, !dbg !2298
  br i1 %21, label %22, label %81, !dbg !2301

22:                                               ; preds = %19
  %23 = load i64, ptr %7, align 8, !dbg !2302
  %24 = icmp uge i64 %23, 20, !dbg !2303
  br i1 %24, label %25, label %81, !dbg !2304

25:                                               ; preds = %22
  %26 = load ptr, ptr %6, align 8, !dbg !2305
  %27 = getelementptr inbounds i16, ptr %26, i64 0, !dbg !2305
  %28 = load i16, ptr %27, align 2, !dbg !2305
  %29 = call zeroext i16 @ntohs(i16 noundef zeroext %28) #11, !dbg !2305
  %30 = zext i16 %29 to i32, !dbg !2305
  %31 = icmp sge i32 %30, 16384, !dbg !2305
  br i1 %31, label %32, label %39, !dbg !2305

32:                                               ; preds = %25
  %33 = load ptr, ptr %6, align 8, !dbg !2305
  %34 = getelementptr inbounds i16, ptr %33, i64 0, !dbg !2305
  %35 = load i16, ptr %34, align 2, !dbg !2305
  %36 = call zeroext i16 @ntohs(i16 noundef zeroext %35) #11, !dbg !2305
  %37 = zext i16 %36 to i32, !dbg !2305
  %38 = icmp sle i32 %37, 32767, !dbg !2305
  br i1 %38, label %80, label %39, !dbg !2308

39:                                               ; preds = %32, %25
  %40 = load ptr, ptr %6, align 8, !dbg !2309
  %41 = getelementptr inbounds i8, ptr %40, i64 0, !dbg !2309
  %42 = load i8, ptr %41, align 1, !dbg !2309
  %43 = zext i8 %42 to i32, !dbg !2312
  %44 = and i32 %43, 192, !dbg !2313
  %45 = icmp eq i32 %44, 0, !dbg !2314
  br i1 %45, label %46, label %79, !dbg !2315

46:                                               ; preds = %39
  %47 = load ptr, ptr %6, align 8, !dbg !2316
  %48 = getelementptr inbounds i32, ptr %47, i64 1, !dbg !2316
  %49 = load i32, ptr %48, align 4, !dbg !2316
  %50 = call i32 @ntohl(i32 noundef %49) #11, !dbg !2316
  %51 = icmp eq i32 %50, 554869826, !dbg !2319
  br i1 %51, label %52, label %78, !dbg !2320

52:                                               ; preds = %46
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2321, metadata !DIExpression()), !dbg !2323
  %53 = load ptr, ptr %6, align 8, !dbg !2324
  %54 = getelementptr inbounds i16, ptr %53, i64 1, !dbg !2324
  %55 = load i16, ptr %54, align 2, !dbg !2324
  %56 = call zeroext i16 @ntohs(i16 noundef zeroext %55) #11, !dbg !2324
  store i16 %56, ptr %10, align 2, !dbg !2323
  %57 = load i16, ptr %10, align 2, !dbg !2325
  %58 = zext i16 %57 to i32, !dbg !2325
  %59 = and i32 %58, 3, !dbg !2327
  %60 = icmp eq i32 %59, 0, !dbg !2328
  br i1 %60, label %61, label %77, !dbg !2329

61:                                               ; preds = %52
  %62 = load i16, ptr %10, align 2, !dbg !2330
  %63 = zext i16 %62 to i32, !dbg !2330
  %64 = add nsw i32 %63, 20, !dbg !2330
  %65 = trunc i32 %64 to i16, !dbg !2330
  store i16 %65, ptr %10, align 2, !dbg !2330
  %66 = load i16, ptr %10, align 2, !dbg !2332
  %67 = zext i16 %66 to i64, !dbg !2334
  %68 = load i64, ptr %7, align 8, !dbg !2335
  %69 = icmp ule i64 %67, %68, !dbg !2336
  br i1 %69, label %70, label %76, !dbg !2337

70:                                               ; preds = %61
  %71 = load i16, ptr %10, align 2, !dbg !2338
  %72 = zext i16 %71 to i64, !dbg !2340
  %73 = load ptr, ptr %9, align 8, !dbg !2341
  store i64 %72, ptr %73, align 8, !dbg !2342
  %74 = load i16, ptr %10, align 2, !dbg !2343
  %75 = zext i16 %74 to i32, !dbg !2344
  store i32 %75, ptr %5, align 4, !dbg !2345
  br label %149, !dbg !2345

76:                                               ; preds = %61
  br label %77, !dbg !2346

77:                                               ; preds = %76, %52
  br label %78, !dbg !2347

78:                                               ; preds = %77, %46
  br label %79, !dbg !2348

79:                                               ; preds = %78, %39
  br label %80, !dbg !2349

80:                                               ; preds = %79, %32
  br label %81, !dbg !2350

81:                                               ; preds = %80, %22, %19
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2351, metadata !DIExpression()), !dbg !2353
  %82 = load ptr, ptr %6, align 8, !dbg !2354
  %83 = load i64, ptr %7, align 8, !dbg !2355
  %84 = call i32 @is_http_inline(ptr noundef %82, i64 noundef %83), !dbg !2356
  store i32 %84, ptr %11, align 4, !dbg !2353
  %85 = load i32, ptr %11, align 4, !dbg !2357
  %86 = icmp sgt i32 %85, 0, !dbg !2359
  br i1 %86, label %87, label %97, !dbg !2360

87:                                               ; preds = %81
  %88 = load i32, ptr %11, align 4, !dbg !2361
  %89 = sext i32 %88 to i64, !dbg !2362
  %90 = load i64, ptr %7, align 8, !dbg !2363
  %91 = icmp ule i64 %89, %90, !dbg !2364
  br i1 %91, label %92, label %97, !dbg !2365

92:                                               ; preds = %87
  %93 = load i32, ptr %11, align 4, !dbg !2366
  %94 = sext i32 %93 to i64, !dbg !2368
  %95 = load ptr, ptr %9, align 8, !dbg !2369
  store i64 %94, ptr %95, align 8, !dbg !2370
  %96 = load i32, ptr %11, align 4, !dbg !2371
  store i32 %96, ptr %5, align 4, !dbg !2372
  br label %149, !dbg !2372

97:                                               ; preds = %87, %81
  %98 = load i64, ptr %7, align 8, !dbg !2373
  %99 = icmp uge i64 %98, 4, !dbg !2375
  br i1 %99, label %100, label %147, !dbg !2376

100:                                              ; preds = %97
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2377, metadata !DIExpression()), !dbg !2379
  %101 = load ptr, ptr %6, align 8, !dbg !2380
  %102 = getelementptr inbounds i16, ptr %101, i64 0, !dbg !2380
  %103 = load i16, ptr %102, align 2, !dbg !2380
  %104 = call zeroext i16 @ntohs(i16 noundef zeroext %103) #11, !dbg !2380
  store i16 %104, ptr %12, align 2, !dbg !2379
  %105 = load i16, ptr %12, align 2, !dbg !2381
  %106 = zext i16 %105 to i32, !dbg !2381
  %107 = icmp sge i32 %106, 16384, !dbg !2381
  br i1 %107, label %108, label %146, !dbg !2381

108:                                              ; preds = %100
  %109 = load i16, ptr %12, align 2, !dbg !2381
  %110 = zext i16 %109 to i32, !dbg !2381
  %111 = icmp sle i32 %110, 32767, !dbg !2381
  br i1 %111, label %112, label %146, !dbg !2383

112:                                              ; preds = %108
  call void @llvm.dbg.declare(metadata ptr %13, metadata !2384, metadata !DIExpression()), !dbg !2386
  %113 = load ptr, ptr %6, align 8, !dbg !2387
  %114 = getelementptr inbounds i16, ptr %113, i64 1, !dbg !2387
  %115 = load i16, ptr %114, align 2, !dbg !2387
  %116 = call zeroext i16 @ntohs(i16 noundef zeroext %115) #11, !dbg !2387
  %117 = zext i16 %116 to i32, !dbg !2388
  %118 = add nsw i32 4, %117, !dbg !2389
  %119 = trunc i32 %118 to i16, !dbg !2390
  store i16 %119, ptr %13, align 2, !dbg !2386
  %120 = load i16, ptr %13, align 2, !dbg !2391
  %121 = zext i16 %120 to i64, !dbg !2391
  %122 = load ptr, ptr %9, align 8, !dbg !2392
  store i64 %121, ptr %122, align 8, !dbg !2393
  %123 = load i32, ptr %8, align 4, !dbg !2394
  %124 = icmp ne i32 %123, 0, !dbg !2394
  br i1 %124, label %125, label %137, !dbg !2396

125:                                              ; preds = %112
  %126 = load i16, ptr %13, align 2, !dbg !2397
  %127 = zext i16 %126 to i32, !dbg !2397
  %128 = and i32 %127, 3, !dbg !2398
  %129 = icmp ne i32 %128, 0, !dbg !2398
  br i1 %129, label %130, label %137, !dbg !2399

130:                                              ; preds = %125
  %131 = load i16, ptr %13, align 2, !dbg !2400
  %132 = zext i16 %131 to i32, !dbg !2400
  %133 = ashr i32 %132, 2, !dbg !2402
  %134 = add nsw i32 %133, 1, !dbg !2403
  %135 = shl i32 %134, 2, !dbg !2404
  %136 = trunc i32 %135 to i16, !dbg !2405
  store i16 %136, ptr %13, align 2, !dbg !2406
  br label %137, !dbg !2407

137:                                              ; preds = %130, %125, %112
  %138 = load i16, ptr %13, align 2, !dbg !2408
  %139 = zext i16 %138 to i64, !dbg !2408
  %140 = load i64, ptr %7, align 8, !dbg !2410
  %141 = icmp ule i64 %139, %140, !dbg !2411
  br i1 %141, label %142, label %145, !dbg !2412

142:                                              ; preds = %137
  %143 = load i16, ptr %13, align 2, !dbg !2413
  %144 = zext i16 %143 to i32, !dbg !2413
  store i32 %144, ptr %5, align 4, !dbg !2415
  br label %149, !dbg !2415

145:                                              ; preds = %137
  br label %146, !dbg !2416

146:                                              ; preds = %145, %108, %100
  br label %147, !dbg !2417

147:                                              ; preds = %146, %97
  br label %148, !dbg !2418

148:                                              ; preds = %147, %16, %4
  store i32 -1, ptr %5, align 4, !dbg !2419
  br label %149, !dbg !2419

149:                                              ; preds = %148, %142, %92, %70
  %150 = load i32, ptr %5, align 4, !dbg !2420
  ret i32 %150, !dbg !2420
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stun_set_allocate_request_str(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i8 noundef zeroext %5, i32 noundef %6, ptr noundef %7, i32 noundef %8) #0 !dbg !2421 {
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  %18 = alloca ptr, align 8
  %19 = alloca i32, align 4
  %20 = alloca [4 x i8], align 1
  %21 = alloca i32, align 4
  %22 = alloca i8, align 1
  %23 = alloca [4 x i8], align 1
  %24 = alloca [4 x i8], align 1
  %25 = alloca [4 x i8], align 1
  store ptr %0, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2424, metadata !DIExpression()), !dbg !2425
  store ptr %1, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2426, metadata !DIExpression()), !dbg !2427
  store i32 %2, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !2428, metadata !DIExpression()), !dbg !2429
  store i32 %3, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2430, metadata !DIExpression()), !dbg !2431
  store i32 %4, ptr %15, align 4
  call void @llvm.dbg.declare(metadata ptr %15, metadata !2432, metadata !DIExpression()), !dbg !2433
  store i8 %5, ptr %16, align 1
  call void @llvm.dbg.declare(metadata ptr %16, metadata !2434, metadata !DIExpression()), !dbg !2435
  store i32 %6, ptr %17, align 4
  call void @llvm.dbg.declare(metadata ptr %17, metadata !2436, metadata !DIExpression()), !dbg !2437
  store ptr %7, ptr %18, align 8
  call void @llvm.dbg.declare(metadata ptr %18, metadata !2438, metadata !DIExpression()), !dbg !2439
  store i32 %8, ptr %19, align 4
  call void @llvm.dbg.declare(metadata ptr %19, metadata !2440, metadata !DIExpression()), !dbg !2441
  %26 = load ptr, ptr %11, align 8, !dbg !2442
  %27 = load ptr, ptr %12, align 8, !dbg !2443
  call void @stun_init_request_str(i16 noundef zeroext 3, ptr noundef %26, ptr noundef %27), !dbg !2444
  call void @llvm.dbg.declare(metadata ptr %20, metadata !2445, metadata !DIExpression()), !dbg !2450
  %28 = load i8, ptr %16, align 1, !dbg !2451
  %29 = getelementptr inbounds [4 x i8], ptr %20, i64 0, i64 0, !dbg !2452
  store i8 %28, ptr %29, align 1, !dbg !2453
  %30 = getelementptr inbounds [4 x i8], ptr %20, i64 0, i64 1, !dbg !2454
  store i8 0, ptr %30, align 1, !dbg !2455
  %31 = getelementptr inbounds [4 x i8], ptr %20, i64 0, i64 2, !dbg !2456
  store i8 0, ptr %31, align 1, !dbg !2457
  %32 = getelementptr inbounds [4 x i8], ptr %20, i64 0, i64 3, !dbg !2458
  store i8 0, ptr %32, align 1, !dbg !2459
  %33 = load ptr, ptr %11, align 8, !dbg !2460
  %34 = load ptr, ptr %12, align 8, !dbg !2462
  %35 = getelementptr inbounds [4 x i8], ptr %20, i64 0, i64 0, !dbg !2463
  %36 = call i32 @stun_attr_add_str(ptr noundef %33, ptr noundef %34, i16 noundef zeroext 25, ptr noundef %35, i32 noundef 4), !dbg !2464
  %37 = icmp slt i32 %36, 0, !dbg !2465
  br i1 %37, label %38, label %39, !dbg !2466

38:                                               ; preds = %9
  store i32 -1, ptr %10, align 4, !dbg !2467
  br label %140, !dbg !2467

39:                                               ; preds = %9
  %40 = load i32, ptr %13, align 4, !dbg !2468
  %41 = icmp ult i32 %40, 1, !dbg !2471
  br i1 %41, label %42, label %43, !dbg !2472

42:                                               ; preds = %39
  store i32 600, ptr %13, align 4, !dbg !2473
  br label %43, !dbg !2474

43:                                               ; preds = %42, %39
  call void @llvm.dbg.declare(metadata ptr %21, metadata !2475, metadata !DIExpression()), !dbg !2476
  %44 = load i32, ptr %13, align 4, !dbg !2477
  %45 = call i32 @ntohl(i32 noundef %44) #11, !dbg !2477
  store i32 %45, ptr %21, align 4, !dbg !2476
  %46 = load ptr, ptr %11, align 8, !dbg !2478
  %47 = load ptr, ptr %12, align 8, !dbg !2480
  %48 = call i32 @stun_attr_add_str(ptr noundef %46, ptr noundef %47, i16 noundef zeroext 13, ptr noundef %21, i32 noundef 4), !dbg !2481
  %49 = icmp slt i32 %48, 0, !dbg !2482
  br i1 %49, label %50, label %51, !dbg !2483

50:                                               ; preds = %43
  store i32 -1, ptr %10, align 4, !dbg !2484
  br label %140, !dbg !2484

51:                                               ; preds = %43
  %52 = load i32, ptr %17, align 4, !dbg !2485
  %53 = icmp ne i32 %52, 0, !dbg !2485
  br i1 %53, label %54, label %61, !dbg !2487

54:                                               ; preds = %51
  %55 = load ptr, ptr %11, align 8, !dbg !2488
  %56 = load ptr, ptr %12, align 8, !dbg !2491
  %57 = call i32 @stun_attr_add_str(ptr noundef %55, ptr noundef %56, i16 noundef zeroext -32720, ptr noundef @.str.30, i32 noundef 0), !dbg !2492
  %58 = icmp slt i32 %57, 0, !dbg !2493
  br i1 %58, label %59, label %60, !dbg !2494

59:                                               ; preds = %54
  store i32 -1, ptr %10, align 4, !dbg !2495
  br label %140, !dbg !2495

60:                                               ; preds = %54
  br label %61, !dbg !2496

61:                                               ; preds = %60, %51
  %62 = load i32, ptr %19, align 4, !dbg !2497
  %63 = icmp sgt i32 %62, -1, !dbg !2499
  br i1 %63, label %64, label %76, !dbg !2500

64:                                               ; preds = %61
  call void @llvm.dbg.declare(metadata ptr %22, metadata !2501, metadata !DIExpression()), !dbg !2503
  %65 = load i32, ptr %19, align 4, !dbg !2504
  %66 = icmp ne i32 %65, 0, !dbg !2504
  %67 = zext i1 %66 to i64, !dbg !2504
  %68 = select i1 %66, i32 128, i32 0, !dbg !2504
  %69 = trunc i32 %68 to i8, !dbg !2504
  store i8 %69, ptr %22, align 1, !dbg !2503
  %70 = load ptr, ptr %11, align 8, !dbg !2505
  %71 = load ptr, ptr %12, align 8, !dbg !2507
  %72 = call i32 @stun_attr_add_str(ptr noundef %70, ptr noundef %71, i16 noundef zeroext 24, ptr noundef %22, i32 noundef 1), !dbg !2508
  %73 = icmp slt i32 %72, 0, !dbg !2509
  br i1 %73, label %74, label %75, !dbg !2510

74:                                               ; preds = %64
  store i32 -1, ptr %10, align 4, !dbg !2511
  br label %140, !dbg !2511

75:                                               ; preds = %64
  br label %76, !dbg !2512

76:                                               ; preds = %75, %61
  %77 = load ptr, ptr %18, align 8, !dbg !2513
  %78 = icmp ne ptr %77, null, !dbg !2513
  br i1 %78, label %79, label %84, !dbg !2515

79:                                               ; preds = %76
  %80 = load ptr, ptr %11, align 8, !dbg !2516
  %81 = load ptr, ptr %12, align 8, !dbg !2518
  %82 = load ptr, ptr %18, align 8, !dbg !2519
  %83 = call i32 @stun_attr_add_str(ptr noundef %80, ptr noundef %81, i16 noundef zeroext 34, ptr noundef %82, i32 noundef 8), !dbg !2520
  br label %139, !dbg !2521

84:                                               ; preds = %76
  %85 = load i32, ptr %14, align 4, !dbg !2522
  %86 = icmp ne i32 %85, 0, !dbg !2522
  br i1 %86, label %87, label %102, !dbg !2525

87:                                               ; preds = %84
  %88 = load i32, ptr %15, align 4, !dbg !2526
  %89 = icmp ne i32 %88, 0, !dbg !2526
  br i1 %89, label %102, label %90, !dbg !2527

90:                                               ; preds = %87
  call void @llvm.dbg.declare(metadata ptr %23, metadata !2528, metadata !DIExpression()), !dbg !2530
  %91 = getelementptr inbounds [4 x i8], ptr %23, i64 0, i64 0, !dbg !2531
  store i8 1, ptr %91, align 1, !dbg !2532
  %92 = getelementptr inbounds [4 x i8], ptr %23, i64 0, i64 1, !dbg !2533
  store i8 0, ptr %92, align 1, !dbg !2534
  %93 = getelementptr inbounds [4 x i8], ptr %23, i64 0, i64 2, !dbg !2535
  store i8 0, ptr %93, align 1, !dbg !2536
  %94 = getelementptr inbounds [4 x i8], ptr %23, i64 0, i64 3, !dbg !2537
  store i8 0, ptr %94, align 1, !dbg !2538
  %95 = load ptr, ptr %11, align 8, !dbg !2539
  %96 = load ptr, ptr %12, align 8, !dbg !2541
  %97 = getelementptr inbounds [4 x i8], ptr %23, i64 0, i64 0, !dbg !2542
  %98 = call i32 @stun_attr_add_str(ptr noundef %95, ptr noundef %96, i16 noundef zeroext 23, ptr noundef %97, i32 noundef 4), !dbg !2543
  %99 = icmp slt i32 %98, 0, !dbg !2544
  br i1 %99, label %100, label %101, !dbg !2545

100:                                              ; preds = %90
  store i32 -1, ptr %10, align 4, !dbg !2546
  br label %140, !dbg !2546

101:                                              ; preds = %90
  br label %102, !dbg !2547

102:                                              ; preds = %101, %87, %84
  %103 = load i32, ptr %15, align 4, !dbg !2548
  %104 = icmp ne i32 %103, 0, !dbg !2548
  br i1 %104, label %105, label %120, !dbg !2550

105:                                              ; preds = %102
  %106 = load i32, ptr %14, align 4, !dbg !2551
  %107 = icmp ne i32 %106, 0, !dbg !2551
  br i1 %107, label %120, label %108, !dbg !2552

108:                                              ; preds = %105
  call void @llvm.dbg.declare(metadata ptr %24, metadata !2553, metadata !DIExpression()), !dbg !2555
  %109 = getelementptr inbounds [4 x i8], ptr %24, i64 0, i64 0, !dbg !2556
  store i8 2, ptr %109, align 1, !dbg !2557
  %110 = getelementptr inbounds [4 x i8], ptr %24, i64 0, i64 1, !dbg !2558
  store i8 0, ptr %110, align 1, !dbg !2559
  %111 = getelementptr inbounds [4 x i8], ptr %24, i64 0, i64 2, !dbg !2560
  store i8 0, ptr %111, align 1, !dbg !2561
  %112 = getelementptr inbounds [4 x i8], ptr %24, i64 0, i64 3, !dbg !2562
  store i8 0, ptr %112, align 1, !dbg !2563
  %113 = load ptr, ptr %11, align 8, !dbg !2564
  %114 = load ptr, ptr %12, align 8, !dbg !2566
  %115 = getelementptr inbounds [4 x i8], ptr %24, i64 0, i64 0, !dbg !2567
  %116 = call i32 @stun_attr_add_str(ptr noundef %113, ptr noundef %114, i16 noundef zeroext 23, ptr noundef %115, i32 noundef 4), !dbg !2568
  %117 = icmp slt i32 %116, 0, !dbg !2569
  br i1 %117, label %118, label %119, !dbg !2570

118:                                              ; preds = %108
  store i32 -1, ptr %10, align 4, !dbg !2571
  br label %140, !dbg !2571

119:                                              ; preds = %108
  br label %120, !dbg !2572

120:                                              ; preds = %119, %105, %102
  %121 = load i32, ptr %14, align 4, !dbg !2573
  %122 = icmp ne i32 %121, 0, !dbg !2573
  br i1 %122, label %123, label %138, !dbg !2575

123:                                              ; preds = %120
  %124 = load i32, ptr %15, align 4, !dbg !2576
  %125 = icmp ne i32 %124, 0, !dbg !2576
  br i1 %125, label %126, label %138, !dbg !2577

126:                                              ; preds = %123
  call void @llvm.dbg.declare(metadata ptr %25, metadata !2578, metadata !DIExpression()), !dbg !2580
  %127 = getelementptr inbounds [4 x i8], ptr %25, i64 0, i64 0, !dbg !2581
  store i8 2, ptr %127, align 1, !dbg !2582
  %128 = getelementptr inbounds [4 x i8], ptr %25, i64 0, i64 1, !dbg !2583
  store i8 0, ptr %128, align 1, !dbg !2584
  %129 = getelementptr inbounds [4 x i8], ptr %25, i64 0, i64 2, !dbg !2585
  store i8 0, ptr %129, align 1, !dbg !2586
  %130 = getelementptr inbounds [4 x i8], ptr %25, i64 0, i64 3, !dbg !2587
  store i8 0, ptr %130, align 1, !dbg !2588
  %131 = load ptr, ptr %11, align 8, !dbg !2589
  %132 = load ptr, ptr %12, align 8, !dbg !2591
  %133 = getelementptr inbounds [4 x i8], ptr %25, i64 0, i64 0, !dbg !2592
  %134 = call i32 @stun_attr_add_str(ptr noundef %131, ptr noundef %132, i16 noundef zeroext -32718, ptr noundef %133, i32 noundef 4), !dbg !2593
  %135 = icmp slt i32 %134, 0, !dbg !2594
  br i1 %135, label %136, label %137, !dbg !2595

136:                                              ; preds = %126
  store i32 -1, ptr %10, align 4, !dbg !2596
  br label %140, !dbg !2596

137:                                              ; preds = %126
  br label %138, !dbg !2597

138:                                              ; preds = %137, %123, %120
  br label %139

139:                                              ; preds = %138, %79
  store i32 0, ptr %10, align 4, !dbg !2598
  br label %140, !dbg !2598

140:                                              ; preds = %139, %136, %118, %100, %74, %59, %50, %38
  %141 = load i32, ptr %10, align 4, !dbg !2599
  ret i32 %141, !dbg !2599
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stun_attr_add_str(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2, ptr noundef %3, i32 noundef %4) #0 !dbg !2600 {
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i16, align 2
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca [1 x i8], align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  store ptr %0, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2603, metadata !DIExpression()), !dbg !2604
  store ptr %1, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2605, metadata !DIExpression()), !dbg !2606
  store i16 %2, ptr %9, align 2
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2607, metadata !DIExpression()), !dbg !2608
  store ptr %3, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2609, metadata !DIExpression()), !dbg !2610
  store i32 %4, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2611, metadata !DIExpression()), !dbg !2612
  %18 = load i32, ptr %11, align 4, !dbg !2613
  %19 = icmp slt i32 %18, 0, !dbg !2615
  br i1 %19, label %20, label %21, !dbg !2616

20:                                               ; preds = %5
  store i32 0, ptr %11, align 4, !dbg !2617
  br label %21, !dbg !2618

21:                                               ; preds = %20, %5
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2619, metadata !DIExpression()), !dbg !2621
  %22 = load ptr, ptr %10, align 8, !dbg !2622
  %23 = icmp ne ptr %22, null, !dbg !2622
  br i1 %23, label %26, label %24, !dbg !2624

24:                                               ; preds = %21
  store i32 0, ptr %11, align 4, !dbg !2625
  %25 = getelementptr inbounds [1 x i8], ptr %12, i64 0, i64 0, !dbg !2627
  store ptr %25, ptr %10, align 8, !dbg !2628
  br label %26, !dbg !2629

26:                                               ; preds = %24, %21
  call void @llvm.dbg.declare(metadata ptr %13, metadata !2630, metadata !DIExpression()), !dbg !2631
  %27 = load ptr, ptr %7, align 8, !dbg !2632
  %28 = load ptr, ptr %8, align 8, !dbg !2633
  %29 = load i64, ptr %28, align 8, !dbg !2634
  %30 = call i32 @stun_get_command_message_len_str(ptr noundef %27, i64 noundef %29), !dbg !2635
  store i32 %30, ptr %13, align 4, !dbg !2631
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2636, metadata !DIExpression()), !dbg !2637
  %31 = load i32, ptr %13, align 4, !dbg !2638
  %32 = add nsw i32 %31, 4, !dbg !2639
  %33 = load i32, ptr %11, align 4, !dbg !2640
  %34 = add nsw i32 %32, %33, !dbg !2641
  store i32 %34, ptr %14, align 4, !dbg !2637
  call void @llvm.dbg.declare(metadata ptr %15, metadata !2642, metadata !DIExpression()), !dbg !2643
  %35 = load i32, ptr %14, align 4, !dbg !2644
  %36 = and i32 %35, 3, !dbg !2645
  store i32 %36, ptr %15, align 4, !dbg !2643
  %37 = load i32, ptr %15, align 4, !dbg !2646
  %38 = icmp ne i32 %37, 0, !dbg !2646
  br i1 %38, label %39, label %44, !dbg !2648

39:                                               ; preds = %26
  %40 = load i32, ptr %14, align 4, !dbg !2649
  %41 = load i32, ptr %15, align 4, !dbg !2651
  %42 = sub nsw i32 4, %41, !dbg !2652
  %43 = add nsw i32 %40, %42, !dbg !2653
  store i32 %43, ptr %14, align 4, !dbg !2654
  br label %44, !dbg !2655

44:                                               ; preds = %39, %26
  %45 = load i32, ptr %14, align 4, !dbg !2656
  %46 = icmp sge i32 %45, 65507, !dbg !2658
  br i1 %46, label %47, label %48, !dbg !2659

47:                                               ; preds = %44
  store i32 -1, ptr %6, align 4, !dbg !2660
  br label %78, !dbg !2660

48:                                               ; preds = %44
  call void @llvm.dbg.declare(metadata ptr %16, metadata !2661, metadata !DIExpression()), !dbg !2663
  %49 = load ptr, ptr %7, align 8, !dbg !2664
  %50 = load i32, ptr %13, align 4, !dbg !2665
  %51 = sext i32 %50 to i64, !dbg !2666
  %52 = getelementptr inbounds i8, ptr %49, i64 %51, !dbg !2666
  store ptr %52, ptr %16, align 8, !dbg !2663
  call void @llvm.dbg.declare(metadata ptr %17, metadata !2667, metadata !DIExpression()), !dbg !2668
  %53 = load ptr, ptr %16, align 8, !dbg !2669
  store ptr %53, ptr %17, align 8, !dbg !2668
  %54 = load ptr, ptr %7, align 8, !dbg !2670
  %55 = load i32, ptr %14, align 4, !dbg !2671
  %56 = call i32 @stun_set_command_message_len_str(ptr noundef %54, i32 noundef %55), !dbg !2672
  %57 = load i32, ptr %14, align 4, !dbg !2673
  %58 = sext i32 %57 to i64, !dbg !2673
  %59 = load ptr, ptr %8, align 8, !dbg !2674
  store i64 %58, ptr %59, align 8, !dbg !2675
  %60 = load i16, ptr %9, align 2, !dbg !2676
  %61 = call zeroext i16 @ntohs(i16 noundef zeroext %60) #11, !dbg !2676
  %62 = load ptr, ptr %17, align 8, !dbg !2677
  %63 = getelementptr inbounds i16, ptr %62, i64 0, !dbg !2677
  store i16 %61, ptr %63, align 2, !dbg !2678
  %64 = load i32, ptr %11, align 4, !dbg !2679
  %65 = trunc i32 %64 to i16, !dbg !2679
  %66 = call zeroext i16 @ntohs(i16 noundef zeroext %65) #11, !dbg !2679
  %67 = load ptr, ptr %17, align 8, !dbg !2680
  %68 = getelementptr inbounds i16, ptr %67, i64 1, !dbg !2680
  store i16 %66, ptr %68, align 2, !dbg !2681
  %69 = load i32, ptr %11, align 4, !dbg !2682
  %70 = icmp sgt i32 %69, 0, !dbg !2684
  br i1 %70, label %71, label %77, !dbg !2685

71:                                               ; preds = %48
  %72 = load ptr, ptr %10, align 8, !dbg !2686
  %73 = load ptr, ptr %16, align 8, !dbg !2687
  %74 = getelementptr inbounds i8, ptr %73, i64 4, !dbg !2688
  %75 = load i32, ptr %11, align 4, !dbg !2689
  %76 = sext i32 %75 to i64, !dbg !2689
  call void @bcopy(ptr noundef %72, ptr noundef %74, i64 noundef %76) #9, !dbg !2690
  br label %77, !dbg !2690

77:                                               ; preds = %71, %48
  store i32 0, ptr %6, align 4, !dbg !2691
  br label %78, !dbg !2691

78:                                               ; preds = %77, %47
  %79 = load i32, ptr %6, align 4, !dbg !2692
  ret i32 %79, !dbg !2692
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stun_set_allocate_response_str(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef %9, i64 noundef %10, ptr noundef %11) #0 !dbg !2693 {
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca ptr, align 8
  %24 = alloca i64, align 8
  %25 = alloca ptr, align 8
  %26 = alloca i32, align 4
  store ptr %0, ptr %14, align 8
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2744, metadata !DIExpression()), !dbg !2745
  store ptr %1, ptr %15, align 8
  call void @llvm.dbg.declare(metadata ptr %15, metadata !2746, metadata !DIExpression()), !dbg !2747
  store ptr %2, ptr %16, align 8
  call void @llvm.dbg.declare(metadata ptr %16, metadata !2748, metadata !DIExpression()), !dbg !2749
  store ptr %3, ptr %17, align 8
  call void @llvm.dbg.declare(metadata ptr %17, metadata !2750, metadata !DIExpression()), !dbg !2751
  store ptr %4, ptr %18, align 8
  call void @llvm.dbg.declare(metadata ptr %18, metadata !2752, metadata !DIExpression()), !dbg !2753
  store ptr %5, ptr %19, align 8
  call void @llvm.dbg.declare(metadata ptr %19, metadata !2754, metadata !DIExpression()), !dbg !2755
  store i32 %6, ptr %20, align 4
  call void @llvm.dbg.declare(metadata ptr %20, metadata !2756, metadata !DIExpression()), !dbg !2757
  store i32 %7, ptr %21, align 4
  call void @llvm.dbg.declare(metadata ptr %21, metadata !2758, metadata !DIExpression()), !dbg !2759
  store i32 %8, ptr %22, align 4
  call void @llvm.dbg.declare(metadata ptr %22, metadata !2760, metadata !DIExpression()), !dbg !2761
  store ptr %9, ptr %23, align 8
  call void @llvm.dbg.declare(metadata ptr %23, metadata !2762, metadata !DIExpression()), !dbg !2763
  store i64 %10, ptr %24, align 8
  call void @llvm.dbg.declare(metadata ptr %24, metadata !2764, metadata !DIExpression()), !dbg !2765
  store ptr %11, ptr %25, align 8
  call void @llvm.dbg.declare(metadata ptr %25, metadata !2766, metadata !DIExpression()), !dbg !2767
  %27 = load i32, ptr %22, align 4, !dbg !2768
  %28 = icmp ne i32 %27, 0, !dbg !2768
  br i1 %28, label %113, label %29, !dbg !2770

29:                                               ; preds = %12
  %30 = load ptr, ptr %14, align 8, !dbg !2771
  %31 = load ptr, ptr %15, align 8, !dbg !2773
  %32 = load ptr, ptr %16, align 8, !dbg !2774
  call void @stun_init_success_response_str(i16 noundef zeroext 3, ptr noundef %30, ptr noundef %31, ptr noundef %32), !dbg !2775
  %33 = load ptr, ptr %17, align 8, !dbg !2776
  %34 = icmp ne ptr %33, null, !dbg !2776
  br i1 %34, label %35, label %43, !dbg !2778

35:                                               ; preds = %29
  %36 = load ptr, ptr %14, align 8, !dbg !2779
  %37 = load ptr, ptr %15, align 8, !dbg !2782
  %38 = load ptr, ptr %17, align 8, !dbg !2783
  %39 = call i32 @stun_attr_add_addr_str(ptr noundef %36, ptr noundef %37, i16 noundef zeroext 22, ptr noundef %38), !dbg !2784
  %40 = icmp slt i32 %39, 0, !dbg !2785
  br i1 %40, label %41, label %42, !dbg !2786

41:                                               ; preds = %35
  store i32 -1, ptr %13, align 4, !dbg !2787
  br label %121, !dbg !2787

42:                                               ; preds = %35
  br label %43, !dbg !2788

43:                                               ; preds = %42, %29
  %44 = load ptr, ptr %18, align 8, !dbg !2789
  %45 = icmp ne ptr %44, null, !dbg !2789
  br i1 %45, label %46, label %54, !dbg !2791

46:                                               ; preds = %43
  %47 = load ptr, ptr %14, align 8, !dbg !2792
  %48 = load ptr, ptr %15, align 8, !dbg !2795
  %49 = load ptr, ptr %18, align 8, !dbg !2796
  %50 = call i32 @stun_attr_add_addr_str(ptr noundef %47, ptr noundef %48, i16 noundef zeroext 22, ptr noundef %49), !dbg !2797
  %51 = icmp slt i32 %50, 0, !dbg !2798
  br i1 %51, label %52, label %53, !dbg !2799

52:                                               ; preds = %46
  store i32 -1, ptr %13, align 4, !dbg !2800
  br label %121, !dbg !2800

53:                                               ; preds = %46
  br label %54, !dbg !2801

54:                                               ; preds = %53, %43
  %55 = load ptr, ptr %19, align 8, !dbg !2802
  %56 = icmp ne ptr %55, null, !dbg !2802
  br i1 %56, label %57, label %65, !dbg !2804

57:                                               ; preds = %54
  %58 = load ptr, ptr %14, align 8, !dbg !2805
  %59 = load ptr, ptr %15, align 8, !dbg !2808
  %60 = load ptr, ptr %19, align 8, !dbg !2809
  %61 = call i32 @stun_attr_add_addr_str(ptr noundef %58, ptr noundef %59, i16 noundef zeroext 32, ptr noundef %60), !dbg !2810
  %62 = icmp slt i32 %61, 0, !dbg !2811
  br i1 %62, label %63, label %64, !dbg !2812

63:                                               ; preds = %57
  store i32 -1, ptr %13, align 4, !dbg !2813
  br label %121, !dbg !2813

64:                                               ; preds = %57
  br label %65, !dbg !2814

65:                                               ; preds = %64, %54
  %66 = load i64, ptr %24, align 8, !dbg !2815
  %67 = icmp ne i64 %66, 0, !dbg !2815
  br i1 %67, label %68, label %74, !dbg !2817

68:                                               ; preds = %65
  %69 = load i64, ptr %24, align 8, !dbg !2818
  %70 = call i64 @_ioa_ntoh64(i64 noundef %69), !dbg !2818
  store i64 %70, ptr %24, align 8, !dbg !2820
  %71 = load ptr, ptr %14, align 8, !dbg !2821
  %72 = load ptr, ptr %15, align 8, !dbg !2822
  %73 = call i32 @stun_attr_add_str(ptr noundef %71, ptr noundef %72, i16 noundef zeroext 34, ptr noundef %24, i32 noundef 8), !dbg !2823
  br label %74, !dbg !2824

74:                                               ; preds = %68, %65
  %75 = load i32, ptr %20, align 4, !dbg !2825
  %76 = icmp ult i32 %75, 1, !dbg !2828
  br i1 %76, label %77, label %78, !dbg !2829

77:                                               ; preds = %74
  store i32 600, ptr %20, align 4, !dbg !2830
  br label %85, !dbg !2831

78:                                               ; preds = %74
  %79 = load i32, ptr %20, align 4, !dbg !2832
  %80 = load i32, ptr %21, align 4, !dbg !2834
  %81 = icmp ugt i32 %79, %80, !dbg !2835
  br i1 %81, label %82, label %84, !dbg !2836

82:                                               ; preds = %78
  %83 = load i32, ptr %21, align 4, !dbg !2837
  store i32 %83, ptr %20, align 4, !dbg !2838
  br label %84, !dbg !2839

84:                                               ; preds = %82, %78
  br label %85

85:                                               ; preds = %84, %77
  call void @llvm.dbg.declare(metadata ptr %26, metadata !2840, metadata !DIExpression()), !dbg !2841
  %86 = load i32, ptr %20, align 4, !dbg !2842
  %87 = call i32 @ntohl(i32 noundef %86) #11, !dbg !2842
  store i32 %87, ptr %26, align 4, !dbg !2841
  %88 = load ptr, ptr %14, align 8, !dbg !2843
  %89 = load ptr, ptr %15, align 8, !dbg !2845
  %90 = call i32 @stun_attr_add_str(ptr noundef %88, ptr noundef %89, i16 noundef zeroext 13, ptr noundef %26, i32 noundef 4), !dbg !2846
  %91 = icmp slt i32 %90, 0, !dbg !2847
  br i1 %91, label %92, label %93, !dbg !2848

92:                                               ; preds = %85
  store i32 -1, ptr %13, align 4, !dbg !2849
  br label %121, !dbg !2849

93:                                               ; preds = %85
  %94 = load ptr, ptr %25, align 8, !dbg !2850
  %95 = icmp ne ptr %94, null, !dbg !2850
  br i1 %95, label %96, label %112, !dbg !2852

96:                                               ; preds = %93
  %97 = load ptr, ptr %25, align 8, !dbg !2853
  %98 = load i8, ptr %97, align 1, !dbg !2854
  %99 = sext i8 %98 to i32, !dbg !2854
  %100 = icmp ne i32 %99, 0, !dbg !2854
  br i1 %100, label %101, label %112, !dbg !2855

101:                                              ; preds = %96
  %102 = load ptr, ptr %14, align 8, !dbg !2856
  %103 = load ptr, ptr %15, align 8, !dbg !2859
  %104 = load ptr, ptr %25, align 8, !dbg !2860
  %105 = load ptr, ptr %25, align 8, !dbg !2861
  %106 = call i64 @strlen(ptr noundef %105) #8, !dbg !2862
  %107 = trunc i64 %106 to i32, !dbg !2863
  %108 = call i32 @stun_attr_add_str(ptr noundef %102, ptr noundef %103, i16 noundef zeroext -32720, ptr noundef %104, i32 noundef %107), !dbg !2864
  %109 = icmp slt i32 %108, 0, !dbg !2865
  br i1 %109, label %110, label %111, !dbg !2866

110:                                              ; preds = %101
  store i32 -1, ptr %13, align 4, !dbg !2867
  br label %121, !dbg !2867

111:                                              ; preds = %101
  br label %112, !dbg !2868

112:                                              ; preds = %111, %96, %93
  br label %120, !dbg !2869

113:                                              ; preds = %12
  %114 = load ptr, ptr %14, align 8, !dbg !2870
  %115 = load ptr, ptr %15, align 8, !dbg !2872
  %116 = load i32, ptr %22, align 4, !dbg !2873
  %117 = trunc i32 %116 to i16, !dbg !2873
  %118 = load ptr, ptr %23, align 8, !dbg !2874
  %119 = load ptr, ptr %16, align 8, !dbg !2875
  call void @stun_init_error_response_str(i16 noundef zeroext 3, ptr noundef %114, ptr noundef %115, i16 noundef zeroext %117, ptr noundef %118, ptr noundef %119), !dbg !2876
  br label %120

120:                                              ; preds = %113, %112
  store i32 0, ptr %13, align 4, !dbg !2877
  br label %121, !dbg !2877

121:                                              ; preds = %120, %110, %92, %63, %52, %41
  %122 = load i32, ptr %13, align 4, !dbg !2878
  ret i32 %122, !dbg !2878
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stun_attr_add_addr_str(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2, ptr noundef %3) #0 !dbg !2879 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i16, align 2
  %9 = alloca ptr, align 8
  %10 = alloca %struct.stun_tid, align 1
  %11 = alloca i32, align 4
  %12 = alloca %union.ioa_addr, align 4
  %13 = alloca [64 x i8], align 16
  %14 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2882, metadata !DIExpression()), !dbg !2883
  store ptr %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2884, metadata !DIExpression()), !dbg !2885
  store i16 %2, ptr %8, align 2
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2886, metadata !DIExpression()), !dbg !2887
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2888, metadata !DIExpression()), !dbg !2889
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2890, metadata !DIExpression()), !dbg !2891
  %15 = load ptr, ptr %6, align 8, !dbg !2892
  %16 = load ptr, ptr %7, align 8, !dbg !2893
  %17 = load i64, ptr %16, align 8, !dbg !2894
  call void @stun_tid_from_message_str(ptr noundef %15, i64 noundef %17, ptr noundef %10), !dbg !2895
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2896, metadata !DIExpression()), !dbg !2897
  store i32 0, ptr %11, align 4, !dbg !2897
  %18 = load i16, ptr %8, align 2, !dbg !2898
  %19 = zext i16 %18 to i32, !dbg !2898
  switch i32 %19, label %21 [
    i32 32, label %20
    i32 18, label %20
    i32 22, label %20
  ], !dbg !2899

20:                                               ; preds = %4, %4, %4
  store i32 1, ptr %11, align 4, !dbg !2900
  br label %22, !dbg !2902

21:                                               ; preds = %4
  br label %22, !dbg !2903

22:                                               ; preds = %21, %20
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2904, metadata !DIExpression()), !dbg !2905
  %23 = load ptr, ptr %9, align 8, !dbg !2906
  call void @map_addr_from_private_to_public(ptr noundef %23, ptr noundef %12), !dbg !2907
  call void @llvm.dbg.declare(metadata ptr %13, metadata !2908, metadata !DIExpression()), !dbg !2912
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2913, metadata !DIExpression()), !dbg !2914
  store i32 0, ptr %14, align 4, !dbg !2914
  %24 = getelementptr inbounds [64 x i8], ptr %13, i64 0, i64 0, !dbg !2915
  %25 = load i32, ptr %11, align 4, !dbg !2917
  %26 = getelementptr inbounds %struct.stun_tid, ptr %10, i32 0, i32 0, !dbg !2918
  %27 = getelementptr inbounds [12 x i8], ptr %26, i64 0, i64 0, !dbg !2919
  %28 = call i32 @stun_addr_encode(ptr noundef %12, ptr noundef %24, ptr noundef %14, i32 noundef %25, i32 noundef 554869826, ptr noundef %27), !dbg !2920
  %29 = icmp slt i32 %28, 0, !dbg !2921
  br i1 %29, label %30, label %31, !dbg !2922

30:                                               ; preds = %22
  store i32 -1, ptr %5, align 4, !dbg !2923
  br label %40, !dbg !2923

31:                                               ; preds = %22
  %32 = load ptr, ptr %6, align 8, !dbg !2925
  %33 = load ptr, ptr %7, align 8, !dbg !2927
  %34 = load i16, ptr %8, align 2, !dbg !2928
  %35 = load i32, ptr %14, align 4, !dbg !2929
  %36 = call i32 @stun_attr_add_str(ptr noundef %32, ptr noundef %33, i16 noundef zeroext %34, ptr noundef %13, i32 noundef %35), !dbg !2930
  %37 = icmp slt i32 %36, 0, !dbg !2931
  br i1 %37, label %38, label %39, !dbg !2932

38:                                               ; preds = %31
  store i32 -1, ptr %5, align 4, !dbg !2933
  br label %40, !dbg !2933

39:                                               ; preds = %31
  store i32 0, ptr %5, align 4, !dbg !2934
  br label %40, !dbg !2934

40:                                               ; preds = %39, %38, %30
  %41 = load i32, ptr %5, align 4, !dbg !2935
  ret i32 %41, !dbg !2935
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_ioa_ntoh64(i64 noundef %0) #0 !dbg !2936 {
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i8, align 1
  store i64 %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2939, metadata !DIExpression()), !dbg !2940
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2941, metadata !DIExpression()), !dbg !2942
  store ptr %2, ptr %3, align 8, !dbg !2942
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2943, metadata !DIExpression()), !dbg !2944
  %6 = load ptr, ptr %3, align 8, !dbg !2945
  %7 = getelementptr inbounds i8, ptr %6, i64 7, !dbg !2946
  store ptr %7, ptr %4, align 8, !dbg !2944
  br label %8, !dbg !2947

8:                                                ; preds = %12, %1
  %9 = load ptr, ptr %3, align 8, !dbg !2948
  %10 = load ptr, ptr %4, align 8, !dbg !2949
  %11 = icmp ult ptr %9, %10, !dbg !2950
  br i1 %11, label %12, label %22, !dbg !2947

12:                                               ; preds = %8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2951, metadata !DIExpression()), !dbg !2953
  %13 = load ptr, ptr %4, align 8, !dbg !2954
  %14 = load i8, ptr %13, align 1, !dbg !2955
  store i8 %14, ptr %5, align 1, !dbg !2953
  %15 = load ptr, ptr %3, align 8, !dbg !2956
  %16 = load i8, ptr %15, align 1, !dbg !2957
  %17 = load ptr, ptr %4, align 8, !dbg !2958
  %18 = getelementptr inbounds i8, ptr %17, i32 -1, !dbg !2958
  store ptr %18, ptr %4, align 8, !dbg !2958
  store i8 %16, ptr %17, align 1, !dbg !2959
  %19 = load i8, ptr %5, align 1, !dbg !2960
  %20 = load ptr, ptr %3, align 8, !dbg !2961
  %21 = getelementptr inbounds i8, ptr %20, i32 1, !dbg !2961
  store ptr %21, ptr %3, align 8, !dbg !2961
  store i8 %19, ptr %20, align 1, !dbg !2962
  br label %8, !dbg !2947, !llvm.loop !2963

22:                                               ; preds = %8
  %23 = load i64, ptr %2, align 8, !dbg !2965
  ret i64 %23, !dbg !2966
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @stun_set_channel_bind_request_str(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #0 !dbg !2967 {
  %5 = alloca i16, align 2
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i16, align 2
  %10 = alloca %union.ioa_addr, align 4
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2970, metadata !DIExpression()), !dbg !2971
  store ptr %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2972, metadata !DIExpression()), !dbg !2973
  store ptr %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2974, metadata !DIExpression()), !dbg !2975
  store i16 %3, ptr %9, align 2
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2976, metadata !DIExpression()), !dbg !2977
  %11 = load i16, ptr %9, align 2, !dbg !2978
  %12 = zext i16 %11 to i32, !dbg !2978
  %13 = icmp sge i32 %12, 16384, !dbg !2978
  br i1 %13, label %14, label %18, !dbg !2978

14:                                               ; preds = %4
  %15 = load i16, ptr %9, align 2, !dbg !2978
  %16 = zext i16 %15 to i32, !dbg !2978
  %17 = icmp sle i32 %16, 32767, !dbg !2978
  br i1 %17, label %26, label %18, !dbg !2980

18:                                               ; preds = %14, %4
  %19 = call i64 @turn_random(), !dbg !2981
  %20 = trunc i64 %19 to i32, !dbg !2983
  %21 = urem i32 %20, 16384, !dbg !2984
  %22 = trunc i32 %21 to i16, !dbg !2985
  %23 = zext i16 %22 to i32, !dbg !2986
  %24 = add nsw i32 16384, %23, !dbg !2987
  %25 = trunc i32 %24 to i16, !dbg !2988
  store i16 %25, ptr %9, align 2, !dbg !2989
  br label %26, !dbg !2990

26:                                               ; preds = %18, %14
  %27 = load ptr, ptr %6, align 8, !dbg !2991
  %28 = load ptr, ptr %7, align 8, !dbg !2992
  call void @stun_init_request_str(i16 noundef zeroext 9, ptr noundef %27, ptr noundef %28), !dbg !2993
  %29 = load ptr, ptr %6, align 8, !dbg !2994
  %30 = load ptr, ptr %7, align 8, !dbg !2996
  %31 = load i16, ptr %9, align 2, !dbg !2997
  %32 = call i32 @stun_attr_add_channel_number_str(ptr noundef %29, ptr noundef %30, i16 noundef zeroext %31), !dbg !2998
  %33 = icmp slt i32 %32, 0, !dbg !2999
  br i1 %33, label %34, label %35, !dbg !3000

34:                                               ; preds = %26
  store i16 0, ptr %5, align 2, !dbg !3001
  br label %55, !dbg !3001

35:                                               ; preds = %26
  %36 = load ptr, ptr %8, align 8, !dbg !3002
  %37 = icmp ne ptr %36, null, !dbg !3002
  br i1 %37, label %45, label %38, !dbg !3004

38:                                               ; preds = %35
  call void @llvm.dbg.declare(metadata ptr %10, metadata !3005, metadata !DIExpression()), !dbg !3007
  call void @llvm.memset.p0.i64(ptr align 4 %10, i8 0, i64 28, i1 false), !dbg !3008
  %39 = load ptr, ptr %6, align 8, !dbg !3009
  %40 = load ptr, ptr %7, align 8, !dbg !3011
  %41 = call i32 @stun_attr_add_addr_str(ptr noundef %39, ptr noundef %40, i16 noundef zeroext 18, ptr noundef %10), !dbg !3012
  %42 = icmp slt i32 %41, 0, !dbg !3013
  br i1 %42, label %43, label %44, !dbg !3014

43:                                               ; preds = %38
  store i16 0, ptr %5, align 2, !dbg !3015
  br label %55, !dbg !3015

44:                                               ; preds = %38
  br label %53, !dbg !3016

45:                                               ; preds = %35
  %46 = load ptr, ptr %6, align 8, !dbg !3017
  %47 = load ptr, ptr %7, align 8, !dbg !3020
  %48 = load ptr, ptr %8, align 8, !dbg !3021
  %49 = call i32 @stun_attr_add_addr_str(ptr noundef %46, ptr noundef %47, i16 noundef zeroext 18, ptr noundef %48), !dbg !3022
  %50 = icmp slt i32 %49, 0, !dbg !3023
  br i1 %50, label %51, label %52, !dbg !3024

51:                                               ; preds = %45
  store i16 0, ptr %5, align 2, !dbg !3025
  br label %55, !dbg !3025

52:                                               ; preds = %45
  br label %53

53:                                               ; preds = %52, %44
  %54 = load i16, ptr %9, align 2, !dbg !3026
  store i16 %54, ptr %5, align 2, !dbg !3027
  br label %55, !dbg !3027

55:                                               ; preds = %53, %51, %43, %34
  %56 = load i16, ptr %5, align 2, !dbg !3028
  ret i16 %56, !dbg !3028
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stun_attr_add_channel_number_str(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2) #0 !dbg !3029 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i16, align 2
  %7 = alloca [2 x i16], align 2
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3032, metadata !DIExpression()), !dbg !3033
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3034, metadata !DIExpression()), !dbg !3035
  store i16 %2, ptr %6, align 2
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3036, metadata !DIExpression()), !dbg !3037
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3038, metadata !DIExpression()), !dbg !3042
  %8 = load i16, ptr %6, align 2, !dbg !3043
  %9 = call zeroext i16 @ntohs(i16 noundef zeroext %8) #11, !dbg !3043
  %10 = getelementptr inbounds [2 x i16], ptr %7, i64 0, i64 0, !dbg !3044
  store i16 %9, ptr %10, align 2, !dbg !3045
  %11 = getelementptr inbounds [2 x i16], ptr %7, i64 0, i64 1, !dbg !3046
  store i16 0, ptr %11, align 2, !dbg !3047
  %12 = load ptr, ptr %4, align 8, !dbg !3048
  %13 = load ptr, ptr %5, align 8, !dbg !3049
  %14 = getelementptr inbounds [2 x i16], ptr %7, i64 0, i64 0, !dbg !3050
  %15 = call i32 @stun_attr_add_str(ptr noundef %12, ptr noundef %13, i16 noundef zeroext 12, ptr noundef %14, i32 noundef 4), !dbg !3051
  ret i32 %15, !dbg !3052
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stun_set_channel_bind_response_str(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) #0 !dbg !3053 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3056, metadata !DIExpression()), !dbg !3057
  store ptr %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3058, metadata !DIExpression()), !dbg !3059
  store ptr %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3060, metadata !DIExpression()), !dbg !3061
  store i32 %3, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3062, metadata !DIExpression()), !dbg !3063
  store ptr %4, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !3064, metadata !DIExpression()), !dbg !3065
  %11 = load i32, ptr %9, align 4, !dbg !3066
  %12 = icmp ne i32 %11, 0, !dbg !3066
  br i1 %12, label %17, label %13, !dbg !3068

13:                                               ; preds = %5
  %14 = load ptr, ptr %6, align 8, !dbg !3069
  %15 = load ptr, ptr %7, align 8, !dbg !3071
  %16 = load ptr, ptr %8, align 8, !dbg !3072
  call void @stun_init_success_response_str(i16 noundef zeroext 9, ptr noundef %14, ptr noundef %15, ptr noundef %16), !dbg !3073
  br label %24, !dbg !3074

17:                                               ; preds = %5
  %18 = load ptr, ptr %6, align 8, !dbg !3075
  %19 = load ptr, ptr %7, align 8, !dbg !3077
  %20 = load i32, ptr %9, align 4, !dbg !3078
  %21 = trunc i32 %20 to i16, !dbg !3078
  %22 = load ptr, ptr %10, align 8, !dbg !3079
  %23 = load ptr, ptr %8, align 8, !dbg !3080
  call void @stun_init_error_response_str(i16 noundef zeroext 9, ptr noundef %18, ptr noundef %19, i16 noundef zeroext %21, ptr noundef %22, ptr noundef %23), !dbg !3081
  br label %24

24:                                               ; preds = %17, %13
  ret void, !dbg !3082
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stun_set_binding_request_str(ptr noundef %0, ptr noundef %1) #0 !dbg !3083 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3084, metadata !DIExpression()), !dbg !3085
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3086, metadata !DIExpression()), !dbg !3087
  %5 = load ptr, ptr %3, align 8, !dbg !3088
  %6 = load ptr, ptr %4, align 8, !dbg !3089
  call void @stun_init_request_str(i16 noundef zeroext 1, ptr noundef %5, ptr noundef %6), !dbg !3090
  ret void, !dbg !3091
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stun_set_binding_response_str(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) #0 !dbg !3092 {
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  %15 = alloca ptr, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store ptr %0, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !3095, metadata !DIExpression()), !dbg !3096
  store ptr %1, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !3097, metadata !DIExpression()), !dbg !3098
  store ptr %2, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !3099, metadata !DIExpression()), !dbg !3100
  store ptr %3, ptr %13, align 8
  call void @llvm.dbg.declare(metadata ptr %13, metadata !3101, metadata !DIExpression()), !dbg !3102
  store i32 %4, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !3103, metadata !DIExpression()), !dbg !3104
  store ptr %5, ptr %15, align 8
  call void @llvm.dbg.declare(metadata ptr %15, metadata !3105, metadata !DIExpression()), !dbg !3106
  store i32 %6, ptr %16, align 4
  call void @llvm.dbg.declare(metadata ptr %16, metadata !3107, metadata !DIExpression()), !dbg !3108
  store i32 %7, ptr %17, align 4
  call void @llvm.dbg.declare(metadata ptr %17, metadata !3109, metadata !DIExpression()), !dbg !3110
  %18 = load i32, ptr %14, align 4, !dbg !3111
  %19 = icmp ne i32 %18, 0, !dbg !3111
  br i1 %19, label %58, label %20, !dbg !3113

20:                                               ; preds = %8
  %21 = load i32, ptr %17, align 4, !dbg !3114
  %22 = icmp ne i32 %21, 0, !dbg !3114
  br i1 %22, label %27, label %23, !dbg !3117

23:                                               ; preds = %20
  %24 = load ptr, ptr %10, align 8, !dbg !3118
  %25 = load ptr, ptr %11, align 8, !dbg !3120
  %26 = load ptr, ptr %12, align 8, !dbg !3121
  call void @stun_init_success_response_str(i16 noundef zeroext 1, ptr noundef %24, ptr noundef %25, ptr noundef %26), !dbg !3122
  br label %32, !dbg !3123

27:                                               ; preds = %20
  %28 = load ptr, ptr %10, align 8, !dbg !3124
  %29 = load ptr, ptr %11, align 8, !dbg !3126
  %30 = load ptr, ptr %12, align 8, !dbg !3127
  %31 = load i32, ptr %16, align 4, !dbg !3128
  call void @old_stun_init_success_response_str(i16 noundef zeroext 1, ptr noundef %28, ptr noundef %29, ptr noundef %30, i32 noundef %31), !dbg !3129
  br label %32

32:                                               ; preds = %27, %23
  %33 = load i32, ptr %17, align 4, !dbg !3130
  %34 = icmp ne i32 %33, 0, !dbg !3130
  br i1 %34, label %46, label %35, !dbg !3132

35:                                               ; preds = %32
  %36 = load ptr, ptr %13, align 8, !dbg !3133
  %37 = icmp ne ptr %36, null, !dbg !3133
  br i1 %37, label %38, label %46, !dbg !3134

38:                                               ; preds = %35
  %39 = load ptr, ptr %10, align 8, !dbg !3135
  %40 = load ptr, ptr %11, align 8, !dbg !3138
  %41 = load ptr, ptr %13, align 8, !dbg !3139
  %42 = call i32 @stun_attr_add_addr_str(ptr noundef %39, ptr noundef %40, i16 noundef zeroext 32, ptr noundef %41), !dbg !3140
  %43 = icmp slt i32 %42, 0, !dbg !3141
  br i1 %43, label %44, label %45, !dbg !3142

44:                                               ; preds = %38
  store i32 -1, ptr %9, align 4, !dbg !3143
  br label %78, !dbg !3143

45:                                               ; preds = %38
  br label %46, !dbg !3144

46:                                               ; preds = %45, %35, %32
  %47 = load ptr, ptr %13, align 8, !dbg !3145
  %48 = icmp ne ptr %47, null, !dbg !3145
  br i1 %48, label %49, label %57, !dbg !3147

49:                                               ; preds = %46
  %50 = load ptr, ptr %10, align 8, !dbg !3148
  %51 = load ptr, ptr %11, align 8, !dbg !3151
  %52 = load ptr, ptr %13, align 8, !dbg !3152
  %53 = call i32 @stun_attr_add_addr_str(ptr noundef %50, ptr noundef %51, i16 noundef zeroext 1, ptr noundef %52), !dbg !3153
  %54 = icmp slt i32 %53, 0, !dbg !3154
  br i1 %54, label %55, label %56, !dbg !3155

55:                                               ; preds = %49
  store i32 -1, ptr %9, align 4, !dbg !3156
  br label %78, !dbg !3156

56:                                               ; preds = %49
  br label %57, !dbg !3157

57:                                               ; preds = %56, %46
  br label %77, !dbg !3158

58:                                               ; preds = %8
  %59 = load i32, ptr %17, align 4, !dbg !3159
  %60 = icmp ne i32 %59, 0, !dbg !3159
  br i1 %60, label %68, label %61, !dbg !3161

61:                                               ; preds = %58
  %62 = load ptr, ptr %10, align 8, !dbg !3162
  %63 = load ptr, ptr %11, align 8, !dbg !3164
  %64 = load i32, ptr %14, align 4, !dbg !3165
  %65 = trunc i32 %64 to i16, !dbg !3165
  %66 = load ptr, ptr %15, align 8, !dbg !3166
  %67 = load ptr, ptr %12, align 8, !dbg !3167
  call void @stun_init_error_response_str(i16 noundef zeroext 1, ptr noundef %62, ptr noundef %63, i16 noundef zeroext %65, ptr noundef %66, ptr noundef %67), !dbg !3168
  br label %76, !dbg !3169

68:                                               ; preds = %58
  %69 = load ptr, ptr %10, align 8, !dbg !3170
  %70 = load ptr, ptr %11, align 8, !dbg !3172
  %71 = load i32, ptr %14, align 4, !dbg !3173
  %72 = trunc i32 %71 to i16, !dbg !3173
  %73 = load ptr, ptr %15, align 8, !dbg !3174
  %74 = load ptr, ptr %12, align 8, !dbg !3175
  %75 = load i32, ptr %16, align 4, !dbg !3176
  call void @old_stun_init_error_response_str(i16 noundef zeroext 1, ptr noundef %69, ptr noundef %70, i16 noundef zeroext %72, ptr noundef %73, ptr noundef %74, i32 noundef %75), !dbg !3177
  br label %76

76:                                               ; preds = %68, %61
  br label %77

77:                                               ; preds = %76, %57
  store i32 0, ptr %9, align 4, !dbg !3178
  br label %78, !dbg !3178

78:                                               ; preds = %77, %55, %44
  %79 = load i32, ptr %9, align 4, !dbg !3179
  ret i32 %79, !dbg !3179
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stun_is_binding_request_str(ptr noundef %0, i64 noundef %1, i64 noundef %2) #0 !dbg !3180 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3183, metadata !DIExpression()), !dbg !3184
  store i64 %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3185, metadata !DIExpression()), !dbg !3186
  store i64 %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3187, metadata !DIExpression()), !dbg !3188
  %8 = load i64, ptr %7, align 8, !dbg !3189
  %9 = load i64, ptr %6, align 8, !dbg !3191
  %10 = icmp ult i64 %8, %9, !dbg !3192
  br i1 %10, label %11, label %36, !dbg !3193

11:                                               ; preds = %3
  %12 = load i64, ptr %7, align 8, !dbg !3194
  %13 = load ptr, ptr %5, align 8, !dbg !3196
  %14 = getelementptr inbounds i8, ptr %13, i64 %12, !dbg !3196
  store ptr %14, ptr %5, align 8, !dbg !3196
  %15 = load i64, ptr %7, align 8, !dbg !3197
  %16 = load i64, ptr %6, align 8, !dbg !3198
  %17 = sub i64 %16, %15, !dbg !3198
  store i64 %17, ptr %6, align 8, !dbg !3198
  %18 = load ptr, ptr %5, align 8, !dbg !3199
  %19 = load i64, ptr %6, align 8, !dbg !3201
  %20 = call i32 @stun_is_command_message_str(ptr noundef %18, i64 noundef %19), !dbg !3202
  %21 = icmp ne i32 %20, 0, !dbg !3202
  br i1 %21, label %22, label %35, !dbg !3203

22:                                               ; preds = %11
  %23 = load ptr, ptr %5, align 8, !dbg !3204
  %24 = load i64, ptr %6, align 8, !dbg !3207
  %25 = call i32 @stun_is_request_str(ptr noundef %23, i64 noundef %24), !dbg !3208
  %26 = icmp ne i32 %25, 0, !dbg !3208
  br i1 %26, label %27, label %34, !dbg !3209

27:                                               ; preds = %22
  %28 = load ptr, ptr %5, align 8, !dbg !3210
  %29 = load i64, ptr %6, align 8, !dbg !3211
  %30 = call zeroext i16 @stun_get_method_str(ptr noundef %28, i64 noundef %29), !dbg !3212
  %31 = zext i16 %30 to i32, !dbg !3212
  %32 = icmp eq i32 %31, 1, !dbg !3213
  br i1 %32, label %33, label %34, !dbg !3214

33:                                               ; preds = %27
  store i32 1, ptr %4, align 4, !dbg !3215
  br label %37, !dbg !3215

34:                                               ; preds = %27, %22
  br label %35, !dbg !3217

35:                                               ; preds = %34, %11
  br label %36, !dbg !3218

36:                                               ; preds = %35, %3
  store i32 0, ptr %4, align 4, !dbg !3219
  br label %37, !dbg !3219

37:                                               ; preds = %36, %33
  %38 = load i32, ptr %4, align 4, !dbg !3220
  ret i32 %38, !dbg !3220
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stun_is_binding_response_str(ptr noundef %0, i64 noundef %1) #0 !dbg !3221 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3222, metadata !DIExpression()), !dbg !3223
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3224, metadata !DIExpression()), !dbg !3225
  %6 = load ptr, ptr %4, align 8, !dbg !3226
  %7 = load i64, ptr %5, align 8, !dbg !3228
  %8 = call i32 @stun_is_command_message_str(ptr noundef %6, i64 noundef %7), !dbg !3229
  %9 = icmp ne i32 %8, 0, !dbg !3229
  br i1 %9, label %10, label %23, !dbg !3230

10:                                               ; preds = %2
  %11 = load ptr, ptr %4, align 8, !dbg !3231
  %12 = load i64, ptr %5, align 8, !dbg !3232
  %13 = call zeroext i16 @stun_get_method_str(ptr noundef %11, i64 noundef %12), !dbg !3233
  %14 = zext i16 %13 to i32, !dbg !3233
  %15 = icmp eq i32 %14, 1, !dbg !3234
  br i1 %15, label %16, label %23, !dbg !3235

16:                                               ; preds = %10
  %17 = load ptr, ptr %4, align 8, !dbg !3236
  %18 = load i64, ptr %5, align 8, !dbg !3239
  %19 = call i32 @stun_is_response_str(ptr noundef %17, i64 noundef %18), !dbg !3240
  %20 = icmp ne i32 %19, 0, !dbg !3240
  br i1 %20, label %21, label %22, !dbg !3241

21:                                               ; preds = %16
  store i32 1, ptr %3, align 4, !dbg !3242
  br label %24, !dbg !3242

22:                                               ; preds = %16
  br label %23, !dbg !3244

23:                                               ; preds = %22, %10, %2
  store i32 0, ptr %3, align 4, !dbg !3245
  br label %24, !dbg !3245

24:                                               ; preds = %23, %21
  %25 = load i32, ptr %3, align 4, !dbg !3246
  ret i32 %25, !dbg !3246
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stun_tid_equals(ptr noundef %0, ptr noundef %1) #0 !dbg !3247 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3250, metadata !DIExpression()), !dbg !3251
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3252, metadata !DIExpression()), !dbg !3253
  %7 = load ptr, ptr %4, align 8, !dbg !3254
  %8 = load ptr, ptr %5, align 8, !dbg !3256
  %9 = icmp eq ptr %7, %8, !dbg !3257
  br i1 %9, label %10, label %11, !dbg !3258

10:                                               ; preds = %2
  store i32 1, ptr %3, align 4, !dbg !3259
  br label %45, !dbg !3259

11:                                               ; preds = %2
  %12 = load ptr, ptr %4, align 8, !dbg !3260
  %13 = icmp ne ptr %12, null, !dbg !3260
  br i1 %13, label %15, label %14, !dbg !3262

14:                                               ; preds = %11
  store i32 0, ptr %3, align 4, !dbg !3263
  br label %45, !dbg !3263

15:                                               ; preds = %11
  %16 = load ptr, ptr %5, align 8, !dbg !3264
  %17 = icmp ne ptr %16, null, !dbg !3264
  br i1 %17, label %19, label %18, !dbg !3266

18:                                               ; preds = %15
  store i32 0, ptr %3, align 4, !dbg !3267
  br label %45, !dbg !3267

19:                                               ; preds = %15
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3268, metadata !DIExpression()), !dbg !3270
  store i32 0, ptr %6, align 4, !dbg !3270
  store i32 0, ptr %6, align 4, !dbg !3271
  br label %20, !dbg !3273

20:                                               ; preds = %41, %19
  %21 = load i32, ptr %6, align 4, !dbg !3274
  %22 = icmp ult i32 %21, 12, !dbg !3276
  br i1 %22, label %23, label %44, !dbg !3277

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 8, !dbg !3278
  %25 = getelementptr inbounds %struct.stun_tid, ptr %24, i32 0, i32 0, !dbg !3281
  %26 = load i32, ptr %6, align 4, !dbg !3282
  %27 = zext i32 %26 to i64, !dbg !3278
  %28 = getelementptr inbounds [12 x i8], ptr %25, i64 0, i64 %27, !dbg !3278
  %29 = load i8, ptr %28, align 1, !dbg !3278
  %30 = zext i8 %29 to i32, !dbg !3278
  %31 = load ptr, ptr %5, align 8, !dbg !3283
  %32 = getelementptr inbounds %struct.stun_tid, ptr %31, i32 0, i32 0, !dbg !3284
  %33 = load i32, ptr %6, align 4, !dbg !3285
  %34 = zext i32 %33 to i64, !dbg !3283
  %35 = getelementptr inbounds [12 x i8], ptr %32, i64 0, i64 %34, !dbg !3283
  %36 = load i8, ptr %35, align 1, !dbg !3283
  %37 = zext i8 %36 to i32, !dbg !3283
  %38 = icmp ne i32 %30, %37, !dbg !3286
  br i1 %38, label %39, label %40, !dbg !3287

39:                                               ; preds = %23
  store i32 0, ptr %3, align 4, !dbg !3288
  br label %45, !dbg !3288

40:                                               ; preds = %23
  br label %41, !dbg !3289

41:                                               ; preds = %40
  %42 = load i32, ptr %6, align 4, !dbg !3290
  %43 = add i32 %42, 1, !dbg !3290
  store i32 %43, ptr %6, align 4, !dbg !3290
  br label %20, !dbg !3291, !llvm.loop !3292

44:                                               ; preds = %20
  store i32 1, ptr %3, align 4, !dbg !3294
  br label %45, !dbg !3294

45:                                               ; preds = %44, %39, %18, %14, %10
  %46 = load i32, ptr %3, align 4, !dbg !3295
  ret i32 %46, !dbg !3295
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stun_tid_cpy(ptr noundef %0, ptr noundef %1) #0 !dbg !3296 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3299, metadata !DIExpression()), !dbg !3300
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3301, metadata !DIExpression()), !dbg !3302
  %5 = load ptr, ptr %3, align 8, !dbg !3303
  %6 = icmp ne ptr %5, null, !dbg !3303
  br i1 %6, label %8, label %7, !dbg !3305

7:                                                ; preds = %2
  br label %19, !dbg !3306

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 8, !dbg !3307
  %10 = icmp ne ptr %9, null, !dbg !3307
  br i1 %10, label %12, label %11, !dbg !3309

11:                                               ; preds = %8
  br label %19, !dbg !3310

12:                                               ; preds = %8
  %13 = load ptr, ptr %4, align 8, !dbg !3311
  %14 = getelementptr inbounds %struct.stun_tid, ptr %13, i32 0, i32 0, !dbg !3312
  %15 = getelementptr inbounds [12 x i8], ptr %14, i64 0, i64 0, !dbg !3313
  %16 = load ptr, ptr %3, align 8, !dbg !3314
  %17 = getelementptr inbounds %struct.stun_tid, ptr %16, i32 0, i32 0, !dbg !3315
  %18 = getelementptr inbounds [12 x i8], ptr %17, i64 0, i64 0, !dbg !3316
  call void @bcopy(ptr noundef %15, ptr noundef %18, i64 noundef 12) #9, !dbg !3317
  br label %19, !dbg !3318

19:                                               ; preds = %12, %11, %7
  ret void, !dbg !3318
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stun_tid_from_message_str(ptr noundef %0, i64 noundef %1, ptr noundef %2) #0 !dbg !3319 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3322, metadata !DIExpression()), !dbg !3323
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3324, metadata !DIExpression()), !dbg !3325
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3326, metadata !DIExpression()), !dbg !3327
  br label %7, !dbg !3328

7:                                                ; preds = %3
  %8 = load i64, ptr %5, align 8, !dbg !3329
  store i64 %8, ptr %5, align 8, !dbg !3329
  br label %9, !dbg !3329

9:                                                ; preds = %7
  %10 = load ptr, ptr %4, align 8, !dbg !3331
  %11 = getelementptr inbounds i8, ptr %10, i64 8, !dbg !3332
  %12 = load ptr, ptr %6, align 8, !dbg !3333
  call void @stun_tid_from_string(ptr noundef %11, ptr noundef %12), !dbg !3334
  ret void, !dbg !3335
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stun_tid_from_string(ptr noundef %0, ptr noundef %1) #0 !dbg !3336 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3339, metadata !DIExpression()), !dbg !3340
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3341, metadata !DIExpression()), !dbg !3342
  %5 = load ptr, ptr %3, align 8, !dbg !3343
  %6 = icmp ne ptr %5, null, !dbg !3343
  br i1 %6, label %7, label %15, !dbg !3345

7:                                                ; preds = %2
  %8 = load ptr, ptr %4, align 8, !dbg !3346
  %9 = icmp ne ptr %8, null, !dbg !3346
  br i1 %9, label %10, label %15, !dbg !3347

10:                                               ; preds = %7
  %11 = load ptr, ptr %3, align 8, !dbg !3348
  %12 = load ptr, ptr %4, align 8, !dbg !3350
  %13 = getelementptr inbounds %struct.stun_tid, ptr %12, i32 0, i32 0, !dbg !3351
  %14 = getelementptr inbounds [12 x i8], ptr %13, i64 0, i64 0, !dbg !3352
  call void @bcopy(ptr noundef %11, ptr noundef %14, i64 noundef 12) #9, !dbg !3353
  br label %15, !dbg !3354

15:                                               ; preds = %10, %7, %2
  ret void, !dbg !3355
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stun_tid_string_cpy(ptr noundef %0, ptr noundef %1) #0 !dbg !3356 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3357, metadata !DIExpression()), !dbg !3358
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3359, metadata !DIExpression()), !dbg !3360
  %5 = load ptr, ptr %3, align 8, !dbg !3361
  %6 = icmp ne ptr %5, null, !dbg !3361
  br i1 %6, label %7, label %15, !dbg !3363

7:                                                ; preds = %2
  %8 = load ptr, ptr %4, align 8, !dbg !3364
  %9 = icmp ne ptr %8, null, !dbg !3364
  br i1 %9, label %10, label %15, !dbg !3365

10:                                               ; preds = %7
  %11 = load ptr, ptr %4, align 8, !dbg !3366
  %12 = getelementptr inbounds %struct.stun_tid, ptr %11, i32 0, i32 0, !dbg !3368
  %13 = getelementptr inbounds [12 x i8], ptr %12, i64 0, i64 0, !dbg !3369
  %14 = load ptr, ptr %3, align 8, !dbg !3370
  call void @bcopy(ptr noundef %13, ptr noundef %14, i64 noundef 12) #9, !dbg !3371
  br label %15, !dbg !3372

15:                                               ; preds = %10, %7, %2
  ret void, !dbg !3373
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stun_tid_generate(ptr noundef %0) #0 !dbg !3374 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3377, metadata !DIExpression()), !dbg !3378
  %3 = load ptr, ptr %2, align 8, !dbg !3379
  %4 = icmp ne ptr %3, null, !dbg !3379
  br i1 %4, label %5, label %9, !dbg !3381

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8, !dbg !3382
  %7 = getelementptr inbounds %struct.stun_tid, ptr %6, i32 0, i32 0, !dbg !3384
  %8 = getelementptr inbounds [12 x i8], ptr %7, i64 0, i64 0, !dbg !3382
  call void @turn_random_tid_size(ptr noundef %8), !dbg !3385
  br label %9, !dbg !3386

9:                                                ; preds = %5, %1
  ret void, !dbg !3387
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @turn_random_tid_size(ptr noundef %0) #0 !dbg !3388 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3391, metadata !DIExpression()), !dbg !3392
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3393, metadata !DIExpression()), !dbg !3394
  %5 = load ptr, ptr %2, align 8, !dbg !3395
  store ptr %5, ptr %3, align 8, !dbg !3394
  %6 = load ptr, ptr %3, align 8, !dbg !3396
  %7 = call i32 @RAND_pseudo_bytes(ptr noundef %6, i32 noundef 12), !dbg !3398
  %8 = icmp ne i32 %7, 0, !dbg !3398
  br i1 %8, label %23, label %9, !dbg !3399

9:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3400, metadata !DIExpression()), !dbg !3402
  store i64 0, ptr %4, align 8, !dbg !3403
  br label %10, !dbg !3405

10:                                               ; preds = %19, %9
  %11 = load i64, ptr %4, align 8, !dbg !3406
  %12 = icmp ult i64 %11, 3, !dbg !3408
  br i1 %12, label %13, label %22, !dbg !3409

13:                                               ; preds = %10
  %14 = call i64 @random() #9, !dbg !3410
  %15 = trunc i64 %14 to i32, !dbg !3412
  %16 = load ptr, ptr %3, align 8, !dbg !3413
  %17 = load i64, ptr %4, align 8, !dbg !3414
  %18 = getelementptr inbounds i32, ptr %16, i64 %17, !dbg !3413
  store i32 %15, ptr %18, align 4, !dbg !3415
  br label %19, !dbg !3416

19:                                               ; preds = %13
  %20 = load i64, ptr %4, align 8, !dbg !3417
  %21 = add i64 %20, 1, !dbg !3417
  store i64 %21, ptr %4, align 8, !dbg !3417
  br label %10, !dbg !3418, !llvm.loop !3419

22:                                               ; preds = %10
  br label %23, !dbg !3421

23:                                               ; preds = %22, %1
  ret void, !dbg !3422
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stun_adjust_allocate_lifetime(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !3423 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3426, metadata !DIExpression()), !dbg !3427
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3428, metadata !DIExpression()), !dbg !3429
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3430, metadata !DIExpression()), !dbg !3431
  %7 = load i32, ptr %4, align 4, !dbg !3432
  %8 = icmp ne i32 %7, 0, !dbg !3432
  br i1 %8, label %10, label %9, !dbg !3434

9:                                                ; preds = %3
  store i32 600, ptr %4, align 4, !dbg !3435
  br label %22, !dbg !3436

10:                                               ; preds = %3
  %11 = load i32, ptr %4, align 4, !dbg !3437
  %12 = icmp ult i32 %11, 600, !dbg !3439
  br i1 %12, label %13, label %14, !dbg !3440

13:                                               ; preds = %10
  store i32 600, ptr %4, align 4, !dbg !3441
  br label %21, !dbg !3442

14:                                               ; preds = %10
  %15 = load i32, ptr %4, align 4, !dbg !3443
  %16 = load i32, ptr %5, align 4, !dbg !3445
  %17 = icmp ugt i32 %15, %16, !dbg !3446
  br i1 %17, label %18, label %20, !dbg !3447

18:                                               ; preds = %14
  %19 = load i32, ptr %5, align 4, !dbg !3448
  store i32 %19, ptr %4, align 4, !dbg !3449
  br label %20, !dbg !3450

20:                                               ; preds = %18, %14
  br label %21

21:                                               ; preds = %20, %13
  br label %22

22:                                               ; preds = %21, %9
  %23 = load i32, ptr %6, align 4, !dbg !3451
  %24 = icmp ne i32 %23, 0, !dbg !3451
  br i1 %24, label %25, label %31, !dbg !3453

25:                                               ; preds = %22
  %26 = load i32, ptr %6, align 4, !dbg !3454
  %27 = load i32, ptr %4, align 4, !dbg !3455
  %28 = icmp ult i32 %26, %27, !dbg !3456
  br i1 %28, label %29, label %31, !dbg !3457

29:                                               ; preds = %25
  %30 = load i32, ptr %6, align 4, !dbg !3458
  store i32 %30, ptr %4, align 4, !dbg !3460
  br label %31, !dbg !3461

31:                                               ; preds = %29, %25, %22
  %32 = load i32, ptr %4, align 4, !dbg !3462
  ret i32 %32, !dbg !3463
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stun_attr_get_type(ptr noundef %0) #0 !dbg !3464 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3465, metadata !DIExpression()), !dbg !3466
  %4 = load ptr, ptr %3, align 8, !dbg !3467
  %5 = icmp ne ptr %4, null, !dbg !3467
  br i1 %5, label %6, label %12, !dbg !3469

6:                                                ; preds = %1
  %7 = load ptr, ptr %3, align 8, !dbg !3470
  %8 = getelementptr inbounds i16, ptr %7, i64 0, !dbg !3470
  %9 = load i16, ptr %8, align 2, !dbg !3470
  %10 = call zeroext i16 @ntohs(i16 noundef zeroext %9) #11, !dbg !3470
  %11 = zext i16 %10 to i32, !dbg !3471
  store i32 %11, ptr %2, align 4, !dbg !3472
  br label %13, !dbg !3472

12:                                               ; preds = %1
  store i32 -1, ptr %2, align 4, !dbg !3473
  br label %13, !dbg !3473

13:                                               ; preds = %12, %6
  %14 = load i32, ptr %2, align 4, !dbg !3474
  ret i32 %14, !dbg !3474
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stun_get_requested_address_family(ptr noundef %0) #0 !dbg !3475 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3476, metadata !DIExpression()), !dbg !3477
  %6 = load ptr, ptr %3, align 8, !dbg !3478
  %7 = icmp ne ptr %6, null, !dbg !3478
  br i1 %7, label %8, label %28, !dbg !3480

8:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3481, metadata !DIExpression()), !dbg !3483
  %9 = load ptr, ptr %3, align 8, !dbg !3484
  %10 = getelementptr inbounds i16, ptr %9, i64 1, !dbg !3484
  %11 = load i16, ptr %10, align 2, !dbg !3484
  %12 = call zeroext i16 @ntohs(i16 noundef zeroext %11) #11, !dbg !3484
  %13 = zext i16 %12 to i32, !dbg !3485
  store i32 %13, ptr %4, align 4, !dbg !3483
  %14 = load i32, ptr %4, align 4, !dbg !3486
  %15 = icmp ne i32 %14, 4, !dbg !3488
  br i1 %15, label %16, label %17, !dbg !3489

16:                                               ; preds = %8
  store i32 -1, ptr %2, align 4, !dbg !3490
  br label %29, !dbg !3490

17:                                               ; preds = %8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3491, metadata !DIExpression()), !dbg !3492
  %18 = load ptr, ptr %3, align 8, !dbg !3493
  %19 = getelementptr inbounds i8, ptr %18, i64 4, !dbg !3494
  %20 = load i8, ptr %19, align 1, !dbg !3494
  %21 = zext i8 %20 to i32, !dbg !3494
  store i32 %21, ptr %5, align 4, !dbg !3492
  %22 = load i32, ptr %5, align 4, !dbg !3495
  switch i32 %22, label %27 [
    i32 1, label %23
    i32 2, label %25
  ], !dbg !3496

23:                                               ; preds = %17
  %24 = load i32, ptr %5, align 4, !dbg !3497
  store i32 %24, ptr %2, align 4, !dbg !3499
  br label %29, !dbg !3499

25:                                               ; preds = %17
  %26 = load i32, ptr %5, align 4, !dbg !3500
  store i32 %26, ptr %2, align 4, !dbg !3501
  br label %29, !dbg !3501

27:                                               ; preds = %17
  store i32 -1, ptr %2, align 4, !dbg !3502
  br label %29, !dbg !3502

28:                                               ; preds = %1
  store i32 0, ptr %2, align 4, !dbg !3503
  br label %29, !dbg !3503

29:                                               ; preds = %28, %27, %25, %23, %16
  %30 = load i32, ptr %2, align 4, !dbg !3504
  ret i32 %30, !dbg !3504
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @stun_attr_get_channel_number(ptr noundef %0) #0 !dbg !3505 {
  %2 = alloca i16, align 2
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i16, align 2
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3508, metadata !DIExpression()), !dbg !3509
  %6 = load ptr, ptr %3, align 8, !dbg !3510
  %7 = icmp ne ptr %6, null, !dbg !3510
  br i1 %7, label %8, label %33, !dbg !3512

8:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3513, metadata !DIExpression()), !dbg !3515
  %9 = load ptr, ptr %3, align 8, !dbg !3516
  %10 = call ptr @stun_attr_get_value(ptr noundef %9), !dbg !3517
  store ptr %10, ptr %4, align 8, !dbg !3515
  %11 = load ptr, ptr %4, align 8, !dbg !3518
  %12 = icmp ne ptr %11, null, !dbg !3518
  br i1 %12, label %13, label %32, !dbg !3520

13:                                               ; preds = %8
  %14 = load ptr, ptr %3, align 8, !dbg !3521
  %15 = call i32 @stun_attr_get_len(ptr noundef %14), !dbg !3522
  %16 = icmp sge i32 %15, 2, !dbg !3523
  br i1 %16, label %17, label %32, !dbg !3524

17:                                               ; preds = %13
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3525, metadata !DIExpression()), !dbg !3527
  %18 = load ptr, ptr %4, align 8, !dbg !3528
  %19 = getelementptr inbounds i16, ptr %18, i64 0, !dbg !3528
  %20 = load i16, ptr %19, align 2, !dbg !3528
  %21 = call zeroext i16 @ntohs(i16 noundef zeroext %20) #11, !dbg !3528
  store i16 %21, ptr %5, align 2, !dbg !3527
  %22 = load i16, ptr %5, align 2, !dbg !3529
  %23 = zext i16 %22 to i32, !dbg !3529
  %24 = icmp sge i32 %23, 16384, !dbg !3529
  br i1 %24, label %25, label %31, !dbg !3529

25:                                               ; preds = %17
  %26 = load i16, ptr %5, align 2, !dbg !3529
  %27 = zext i16 %26 to i32, !dbg !3529
  %28 = icmp sle i32 %27, 32767, !dbg !3529
  br i1 %28, label %29, label %31, !dbg !3531

29:                                               ; preds = %25
  %30 = load i16, ptr %5, align 2, !dbg !3532
  store i16 %30, ptr %2, align 2, !dbg !3533
  br label %34, !dbg !3533

31:                                               ; preds = %25, %17
  br label %32, !dbg !3534

32:                                               ; preds = %31, %13, %8
  br label %33, !dbg !3535

33:                                               ; preds = %32, %1
  store i16 0, ptr %2, align 2, !dbg !3536
  br label %34, !dbg !3536

34:                                               ; preds = %33, %29
  %35 = load i16, ptr %2, align 2, !dbg !3537
  ret i16 %35, !dbg !3537
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @stun_attr_get_bandwidth(ptr noundef %0) #0 !dbg !3538 {
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3541, metadata !DIExpression()), !dbg !3542
  %6 = load ptr, ptr %3, align 8, !dbg !3543
  %7 = icmp ne ptr %6, null, !dbg !3543
  br i1 %7, label %8, label %26, !dbg !3545

8:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3546, metadata !DIExpression()), !dbg !3548
  %9 = load ptr, ptr %3, align 8, !dbg !3549
  %10 = call ptr @stun_attr_get_value(ptr noundef %9), !dbg !3550
  store ptr %10, ptr %4, align 8, !dbg !3548
  %11 = load ptr, ptr %4, align 8, !dbg !3551
  %12 = icmp ne ptr %11, null, !dbg !3551
  br i1 %12, label %13, label %25, !dbg !3553

13:                                               ; preds = %8
  %14 = load ptr, ptr %3, align 8, !dbg !3554
  %15 = call i32 @stun_attr_get_len(ptr noundef %14), !dbg !3555
  %16 = icmp sge i32 %15, 4, !dbg !3556
  br i1 %16, label %17, label %25, !dbg !3557

17:                                               ; preds = %13
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3558, metadata !DIExpression()), !dbg !3560
  %18 = load ptr, ptr %4, align 8, !dbg !3561
  %19 = getelementptr inbounds i32, ptr %18, i64 0, !dbg !3561
  %20 = load i32, ptr %19, align 4, !dbg !3561
  %21 = call i32 @ntohl(i32 noundef %20) #11, !dbg !3561
  store i32 %21, ptr %5, align 4, !dbg !3560
  %22 = load i32, ptr %5, align 4, !dbg !3562
  %23 = shl i32 %22, 7, !dbg !3563
  %24 = zext i32 %23 to i64, !dbg !3564
  store i64 %24, ptr %2, align 8, !dbg !3565
  br label %27, !dbg !3565

25:                                               ; preds = %13, %8
  br label %26, !dbg !3566

26:                                               ; preds = %25, %1
  store i64 0, ptr %2, align 8, !dbg !3567
  br label %27, !dbg !3567

27:                                               ; preds = %26, %17
  %28 = load i64, ptr %2, align 8, !dbg !3568
  ret i64 %28, !dbg !3568
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @stun_attr_get_reservation_token_value(ptr noundef %0) #0 !dbg !3569 {
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3572, metadata !DIExpression()), !dbg !3573
  %6 = load ptr, ptr %3, align 8, !dbg !3574
  %7 = icmp ne ptr %6, null, !dbg !3574
  br i1 %7, label %8, label %22, !dbg !3576

8:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3577, metadata !DIExpression()), !dbg !3579
  %9 = load ptr, ptr %3, align 8, !dbg !3580
  %10 = call ptr @stun_attr_get_value(ptr noundef %9), !dbg !3581
  store ptr %10, ptr %4, align 8, !dbg !3579
  %11 = load ptr, ptr %4, align 8, !dbg !3582
  %12 = icmp ne ptr %11, null, !dbg !3582
  br i1 %12, label %13, label %21, !dbg !3584

13:                                               ; preds = %8
  %14 = load ptr, ptr %3, align 8, !dbg !3585
  %15 = call i32 @stun_attr_get_len(ptr noundef %14), !dbg !3586
  %16 = icmp eq i32 %15, 8, !dbg !3587
  br i1 %16, label %17, label %21, !dbg !3588

17:                                               ; preds = %13
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3589, metadata !DIExpression()), !dbg !3591
  %18 = load ptr, ptr %4, align 8, !dbg !3592
  call void @bcopy(ptr noundef %18, ptr noundef %5, i64 noundef 8) #9, !dbg !3593
  %19 = load i64, ptr %5, align 8, !dbg !3594
  %20 = call i64 @_ioa_ntoh64(i64 noundef %19), !dbg !3594
  store i64 %20, ptr %2, align 8, !dbg !3595
  br label %23, !dbg !3595

21:                                               ; preds = %13, %8
  br label %22, !dbg !3596

22:                                               ; preds = %21, %1
  store i64 0, ptr %2, align 8, !dbg !3597
  br label %23, !dbg !3597

23:                                               ; preds = %22, %17
  %24 = load i64, ptr %2, align 8, !dbg !3598
  ret i64 %24, !dbg !3598
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stun_attr_is_addr(ptr noundef %0) #0 !dbg !3599 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3600, metadata !DIExpression()), !dbg !3601
  %4 = load ptr, ptr %3, align 8, !dbg !3602
  %5 = icmp ne ptr %4, null, !dbg !3602
  br i1 %5, label %6, label %12, !dbg !3604

6:                                                ; preds = %1
  %7 = load ptr, ptr %3, align 8, !dbg !3605
  %8 = call i32 @stun_attr_get_type(ptr noundef %7), !dbg !3607
  switch i32 %8, label %10 [
    i32 32, label %9
    i32 18, label %9
    i32 22, label %9
    i32 1, label %9
    i32 32803, label %9
    i32 2, label %9
    i32 4, label %9
    i32 5, label %9
    i32 11, label %9
    i32 32811, label %9
    i32 32812, label %9
  ], !dbg !3608

9:                                                ; preds = %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6
  store i32 1, ptr %2, align 4, !dbg !3609
  br label %13, !dbg !3609

10:                                               ; preds = %6
  br label %11, !dbg !3611

11:                                               ; preds = %10
  br label %12, !dbg !3612

12:                                               ; preds = %11, %1
  store i32 0, ptr %2, align 4, !dbg !3613
  br label %13, !dbg !3613

13:                                               ; preds = %12, %9
  %14 = load i32, ptr %2, align 4, !dbg !3614
  ret i32 %14, !dbg !3614
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i8 @stun_attr_get_even_port(ptr noundef %0) #0 !dbg !3615 {
  %2 = alloca i8, align 1
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3618, metadata !DIExpression()), !dbg !3619
  %5 = load ptr, ptr %3, align 8, !dbg !3620
  %6 = icmp ne ptr %5, null, !dbg !3620
  br i1 %6, label %7, label %21, !dbg !3622

7:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3623, metadata !DIExpression()), !dbg !3625
  %8 = load ptr, ptr %3, align 8, !dbg !3626
  %9 = call ptr @stun_attr_get_value(ptr noundef %8), !dbg !3627
  store ptr %9, ptr %4, align 8, !dbg !3625
  %10 = load ptr, ptr %4, align 8, !dbg !3628
  %11 = icmp ne ptr %10, null, !dbg !3628
  br i1 %11, label %12, label %20, !dbg !3630

12:                                               ; preds = %7
  %13 = load ptr, ptr %4, align 8, !dbg !3631
  %14 = getelementptr inbounds i8, ptr %13, i64 0, !dbg !3631
  %15 = load i8, ptr %14, align 1, !dbg !3631
  %16 = zext i8 %15 to i32, !dbg !3634
  %17 = icmp sgt i32 %16, 127, !dbg !3635
  br i1 %17, label %18, label %19, !dbg !3636

18:                                               ; preds = %12
  store i8 1, ptr %2, align 1, !dbg !3637
  br label %22, !dbg !3637

19:                                               ; preds = %12
  br label %20, !dbg !3638

20:                                               ; preds = %19, %7
  br label %21, !dbg !3639

21:                                               ; preds = %20, %1
  store i8 0, ptr %2, align 1, !dbg !3640
  br label %22, !dbg !3640

22:                                               ; preds = %21, %18
  %23 = load i8, ptr %2, align 1, !dbg !3641
  ret i8 %23, !dbg !3641
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @stun_attr_get_first_str(ptr noundef %0, i64 noundef %1) #0 !dbg !3642 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3645, metadata !DIExpression()), !dbg !3646
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3647, metadata !DIExpression()), !dbg !3648
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3649, metadata !DIExpression()), !dbg !3650
  %8 = load ptr, ptr %4, align 8, !dbg !3651
  %9 = load i64, ptr %5, align 8, !dbg !3652
  %10 = call i32 @stun_get_command_message_len_str(ptr noundef %8, i64 noundef %9), !dbg !3653
  store i32 %10, ptr %6, align 4, !dbg !3650
  %11 = load i32, ptr %6, align 4, !dbg !3654
  %12 = icmp sgt i32 %11, 20, !dbg !3656
  br i1 %12, label %13, label %21, !dbg !3657

13:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3658, metadata !DIExpression()), !dbg !3660
  %14 = load ptr, ptr %4, align 8, !dbg !3661
  %15 = getelementptr inbounds i8, ptr %14, i64 20, !dbg !3662
  store ptr %15, ptr %7, align 8, !dbg !3660
  %16 = load ptr, ptr %7, align 8, !dbg !3663
  %17 = load i32, ptr %6, align 4, !dbg !3664
  %18 = sub nsw i32 %17, 20, !dbg !3665
  %19 = sext i32 %18 to i64, !dbg !3664
  %20 = call ptr @stun_attr_check_valid(ptr noundef %16, i64 noundef %19), !dbg !3666
  store ptr %20, ptr %3, align 8, !dbg !3667
  br label %22, !dbg !3667

21:                                               ; preds = %2
  store ptr null, ptr %3, align 8, !dbg !3668
  br label %22, !dbg !3668

22:                                               ; preds = %21, %13
  %23 = load ptr, ptr %3, align 8, !dbg !3669
  ret ptr %23, !dbg !3669
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @stun_attr_get_next_str(ptr noundef %0, i64 noundef %1, ptr noundef %2) #0 !dbg !3670 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3673, metadata !DIExpression()), !dbg !3674
  store i64 %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3675, metadata !DIExpression()), !dbg !3676
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3677, metadata !DIExpression()), !dbg !3678
  %12 = load ptr, ptr %7, align 8, !dbg !3679
  %13 = icmp ne ptr %12, null, !dbg !3679
  br i1 %13, label %18, label %14, !dbg !3681

14:                                               ; preds = %3
  %15 = load ptr, ptr %5, align 8, !dbg !3682
  %16 = load i64, ptr %6, align 8, !dbg !3683
  %17 = call ptr @stun_attr_get_first_str(ptr noundef %15, i64 noundef %16), !dbg !3684
  store ptr %17, ptr %4, align 8, !dbg !3685
  br label %64, !dbg !3685

18:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3686, metadata !DIExpression()), !dbg !3688
  %19 = load ptr, ptr %5, align 8, !dbg !3689
  %20 = load ptr, ptr %5, align 8, !dbg !3690
  %21 = load i64, ptr %6, align 8, !dbg !3691
  %22 = call i32 @stun_get_command_message_len_str(ptr noundef %20, i64 noundef %21), !dbg !3692
  %23 = sext i32 %22 to i64, !dbg !3693
  %24 = getelementptr inbounds i8, ptr %19, i64 %23, !dbg !3693
  store ptr %24, ptr %8, align 8, !dbg !3688
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3694, metadata !DIExpression()), !dbg !3695
  %25 = load ptr, ptr %7, align 8, !dbg !3696
  %26 = call i32 @stun_attr_get_len(ptr noundef %25), !dbg !3697
  store i32 %26, ptr %9, align 4, !dbg !3695
  call void @llvm.dbg.declare(metadata ptr %10, metadata !3698, metadata !DIExpression()), !dbg !3699
  %27 = load i32, ptr %9, align 4, !dbg !3700
  %28 = trunc i32 %27 to i16, !dbg !3701
  %29 = zext i16 %28 to i32, !dbg !3702
  %30 = and i32 %29, 3, !dbg !3703
  %31 = trunc i32 %30 to i16, !dbg !3702
  store i16 %31, ptr %10, align 2, !dbg !3699
  %32 = load i16, ptr %10, align 2, !dbg !3704
  %33 = icmp ne i16 %32, 0, !dbg !3704
  br i1 %33, label %34, label %40, !dbg !3706

34:                                               ; preds = %18
  %35 = load i32, ptr %9, align 4, !dbg !3707
  %36 = add nsw i32 %35, 4, !dbg !3709
  %37 = load i16, ptr %10, align 2, !dbg !3710
  %38 = zext i16 %37 to i32, !dbg !3711
  %39 = sub nsw i32 %36, %38, !dbg !3712
  store i32 %39, ptr %9, align 4, !dbg !3713
  br label %40, !dbg !3714

40:                                               ; preds = %34, %18
  %41 = load i32, ptr %9, align 4, !dbg !3715
  %42 = sext i32 %41 to i64, !dbg !3715
  %43 = load ptr, ptr %8, align 8, !dbg !3717
  %44 = load ptr, ptr %7, align 8, !dbg !3718
  %45 = ptrtoint ptr %43 to i64, !dbg !3719
  %46 = ptrtoint ptr %44 to i64, !dbg !3719
  %47 = sub i64 %45, %46, !dbg !3719
  %48 = sub nsw i64 %47, 4, !dbg !3720
  %49 = icmp slt i64 %42, %48, !dbg !3721
  br i1 %49, label %50, label %63, !dbg !3722

50:                                               ; preds = %40
  call void @llvm.dbg.declare(metadata ptr %11, metadata !3723, metadata !DIExpression()), !dbg !3725
  %51 = load ptr, ptr %7, align 8, !dbg !3726
  %52 = getelementptr inbounds i8, ptr %51, i64 4, !dbg !3727
  %53 = load i32, ptr %9, align 4, !dbg !3728
  %54 = sext i32 %53 to i64, !dbg !3729
  %55 = getelementptr inbounds i8, ptr %52, i64 %54, !dbg !3729
  store ptr %55, ptr %11, align 8, !dbg !3725
  %56 = load ptr, ptr %11, align 8, !dbg !3730
  %57 = load ptr, ptr %8, align 8, !dbg !3731
  %58 = load ptr, ptr %11, align 8, !dbg !3732
  %59 = ptrtoint ptr %57 to i64, !dbg !3733
  %60 = ptrtoint ptr %58 to i64, !dbg !3733
  %61 = sub i64 %59, %60, !dbg !3733
  %62 = call ptr @stun_attr_check_valid(ptr noundef %56, i64 noundef %61), !dbg !3734
  store ptr %62, ptr %4, align 8, !dbg !3735
  br label %64, !dbg !3735

63:                                               ; preds = %40
  store ptr null, ptr %4, align 8, !dbg !3736
  br label %64, !dbg !3736

64:                                               ; preds = %63, %50, %14
  %65 = load ptr, ptr %4, align 8, !dbg !3737
  ret ptr %65, !dbg !3737
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @stun_attr_check_valid(ptr noundef %0, i64 noundef %1) #0 !dbg !3738 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i16, align 2
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3741, metadata !DIExpression()), !dbg !3742
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3743, metadata !DIExpression()), !dbg !3744
  %8 = load i64, ptr %5, align 8, !dbg !3745
  %9 = icmp uge i64 %8, 4, !dbg !3747
  br i1 %9, label %10, label %37, !dbg !3748

10:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3749, metadata !DIExpression()), !dbg !3751
  %11 = load ptr, ptr %4, align 8, !dbg !3752
  %12 = call i32 @stun_attr_get_len(ptr noundef %11), !dbg !3753
  %13 = sext i32 %12 to i64, !dbg !3753
  store i64 %13, ptr %6, align 8, !dbg !3751
  %14 = load i64, ptr %5, align 8, !dbg !3754
  %15 = sub i64 %14, 4, !dbg !3754
  store i64 %15, ptr %5, align 8, !dbg !3754
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3755, metadata !DIExpression()), !dbg !3756
  %16 = load i64, ptr %6, align 8, !dbg !3757
  %17 = trunc i64 %16 to i16, !dbg !3758
  %18 = zext i16 %17 to i32, !dbg !3759
  %19 = and i32 %18, 3, !dbg !3760
  %20 = trunc i32 %19 to i16, !dbg !3759
  store i16 %20, ptr %7, align 2, !dbg !3756
  %21 = load i16, ptr %7, align 2, !dbg !3761
  %22 = icmp ne i16 %21, 0, !dbg !3761
  br i1 %22, label %23, label %30, !dbg !3763

23:                                               ; preds = %10
  %24 = load i64, ptr %6, align 8, !dbg !3764
  %25 = add i64 %24, 4, !dbg !3766
  %26 = load i16, ptr %7, align 2, !dbg !3767
  %27 = zext i16 %26 to i32, !dbg !3768
  %28 = sext i32 %27 to i64, !dbg !3768
  %29 = sub i64 %25, %28, !dbg !3769
  store i64 %29, ptr %6, align 8, !dbg !3770
  br label %30, !dbg !3771

30:                                               ; preds = %23, %10
  %31 = load i64, ptr %6, align 8, !dbg !3772
  %32 = load i64, ptr %5, align 8, !dbg !3774
  %33 = icmp ule i64 %31, %32, !dbg !3775
  br i1 %33, label %34, label %36, !dbg !3776

34:                                               ; preds = %30
  %35 = load ptr, ptr %4, align 8, !dbg !3777
  store ptr %35, ptr %3, align 8, !dbg !3779
  br label %38, !dbg !3779

36:                                               ; preds = %30
  br label %37, !dbg !3780

37:                                               ; preds = %36, %2
  store ptr null, ptr %3, align 8, !dbg !3781
  br label %38, !dbg !3781

38:                                               ; preds = %37, %34
  %39 = load ptr, ptr %3, align 8, !dbg !3782
  ret ptr %39, !dbg !3782
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stun_set_command_message_len_str(ptr noundef %0, i32 noundef %1) #0 !dbg !3783 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3786, metadata !DIExpression()), !dbg !3787
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3788, metadata !DIExpression()), !dbg !3789
  %6 = load i32, ptr %5, align 4, !dbg !3790
  %7 = icmp slt i32 %6, 20, !dbg !3792
  br i1 %7, label %8, label %9, !dbg !3793

8:                                                ; preds = %2
  store i32 -1, ptr %3, align 4, !dbg !3794
  br label %16, !dbg !3794

9:                                                ; preds = %2
  %10 = load i32, ptr %5, align 4, !dbg !3795
  %11 = sub nsw i32 %10, 20, !dbg !3795
  %12 = trunc i32 %11 to i16, !dbg !3795
  %13 = call zeroext i16 @ntohs(i16 noundef zeroext %12) #11, !dbg !3795
  %14 = load ptr, ptr %4, align 8, !dbg !3796
  %15 = getelementptr inbounds i16, ptr %14, i64 1, !dbg !3797
  store i16 %13, ptr %15, align 2, !dbg !3798
  store i32 0, ptr %3, align 4, !dbg !3799
  br label %16, !dbg !3799

16:                                               ; preds = %9, %8
  %17 = load i32, ptr %3, align 4, !dbg !3800
  ret i32 %17, !dbg !3800
}

declare void @map_addr_from_private_to_public(ptr noundef, ptr noundef) #4

declare i32 @stun_addr_encode(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stun_attr_get_addr_str(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 !dbg !3801 {
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca %struct.stun_tid, align 1
  %13 = alloca %union.ioa_addr, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca ptr, align 8
  %17 = alloca i32, align 4
  store ptr %0, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3805, metadata !DIExpression()), !dbg !3806
  store i64 %1, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3807, metadata !DIExpression()), !dbg !3808
  store ptr %2, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3809, metadata !DIExpression()), !dbg !3810
  store ptr %3, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !3811, metadata !DIExpression()), !dbg !3812
  store ptr %4, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !3813, metadata !DIExpression()), !dbg !3814
  call void @llvm.dbg.declare(metadata ptr %12, metadata !3815, metadata !DIExpression()), !dbg !3816
  %18 = load ptr, ptr %7, align 8, !dbg !3817
  %19 = load i64, ptr %8, align 8, !dbg !3818
  call void @stun_tid_from_message_str(ptr noundef %18, i64 noundef %19, ptr noundef %12), !dbg !3819
  call void @llvm.dbg.declare(metadata ptr %13, metadata !3820, metadata !DIExpression()), !dbg !3821
  %20 = load ptr, ptr %10, align 8, !dbg !3822
  call void @addr_set_any(ptr noundef %20), !dbg !3823
  call void @addr_set_any(ptr noundef %13), !dbg !3824
  call void @llvm.dbg.declare(metadata ptr %14, metadata !3825, metadata !DIExpression()), !dbg !3826
  %21 = load ptr, ptr %9, align 8, !dbg !3827
  %22 = call i32 @stun_attr_get_type(ptr noundef %21), !dbg !3828
  store i32 %22, ptr %14, align 4, !dbg !3826
  %23 = load i32, ptr %14, align 4, !dbg !3829
  %24 = icmp slt i32 %23, 0, !dbg !3831
  br i1 %24, label %25, label %26, !dbg !3832

25:                                               ; preds = %5
  store i32 -1, ptr %6, align 4, !dbg !3833
  br label %66, !dbg !3833

26:                                               ; preds = %5
  call void @llvm.dbg.declare(metadata ptr %15, metadata !3834, metadata !DIExpression()), !dbg !3835
  store i32 0, ptr %15, align 4, !dbg !3835
  %27 = load i32, ptr %14, align 4, !dbg !3836
  switch i32 %27, label %29 [
    i32 32, label %28
    i32 18, label %28
    i32 22, label %28
  ], !dbg !3837

28:                                               ; preds = %26, %26, %26
  store i32 1, ptr %15, align 4, !dbg !3838
  br label %30, !dbg !3840

29:                                               ; preds = %26
  br label %30, !dbg !3841

30:                                               ; preds = %29, %28
  call void @llvm.dbg.declare(metadata ptr %16, metadata !3842, metadata !DIExpression()), !dbg !3843
  %31 = load ptr, ptr %9, align 8, !dbg !3844
  %32 = call ptr @stun_attr_get_value(ptr noundef %31), !dbg !3845
  store ptr %32, ptr %16, align 8, !dbg !3843
  %33 = load ptr, ptr %16, align 8, !dbg !3846
  %34 = icmp ne ptr %33, null, !dbg !3846
  br i1 %34, label %36, label %35, !dbg !3848

35:                                               ; preds = %30
  store i32 -1, ptr %6, align 4, !dbg !3849
  br label %66, !dbg !3849

36:                                               ; preds = %30
  %37 = load ptr, ptr %16, align 8, !dbg !3850
  %38 = load ptr, ptr %9, align 8, !dbg !3852
  %39 = call i32 @stun_attr_get_len(ptr noundef %38), !dbg !3853
  %40 = load i32, ptr %15, align 4, !dbg !3854
  %41 = getelementptr inbounds %struct.stun_tid, ptr %12, i32 0, i32 0, !dbg !3855
  %42 = getelementptr inbounds [12 x i8], ptr %41, i64 0, i64 0, !dbg !3856
  %43 = call i32 @stun_addr_decode(ptr noundef %13, ptr noundef %37, i32 noundef %39, i32 noundef %40, i32 noundef 554869826, ptr noundef %42), !dbg !3857
  %44 = icmp slt i32 %43, 0, !dbg !3858
  br i1 %44, label %45, label %46, !dbg !3859

45:                                               ; preds = %36
  store i32 -1, ptr %6, align 4, !dbg !3860
  br label %66, !dbg !3860

46:                                               ; preds = %36
  %47 = load ptr, ptr %10, align 8, !dbg !3862
  call void @map_addr_from_public_to_private(ptr noundef %13, ptr noundef %47), !dbg !3863
  %48 = load ptr, ptr %11, align 8, !dbg !3864
  %49 = icmp ne ptr %48, null, !dbg !3864
  br i1 %49, label %50, label %65, !dbg !3866

50:                                               ; preds = %46
  %51 = load ptr, ptr %10, align 8, !dbg !3867
  %52 = call i32 @addr_any_no_port(ptr noundef %51), !dbg !3868
  %53 = icmp ne i32 %52, 0, !dbg !3868
  br i1 %53, label %54, label %65, !dbg !3869

54:                                               ; preds = %50
  %55 = load ptr, ptr %11, align 8, !dbg !3870
  %56 = call i32 @addr_any_no_port(ptr noundef %55), !dbg !3871
  %57 = icmp ne i32 %56, 0, !dbg !3871
  br i1 %57, label %65, label %58, !dbg !3872

58:                                               ; preds = %54
  call void @llvm.dbg.declare(metadata ptr %17, metadata !3873, metadata !DIExpression()), !dbg !3875
  %59 = load ptr, ptr %10, align 8, !dbg !3876
  %60 = call i32 @addr_get_port(ptr noundef %59), !dbg !3877
  store i32 %60, ptr %17, align 4, !dbg !3875
  %61 = load ptr, ptr %10, align 8, !dbg !3878
  %62 = load ptr, ptr %11, align 8, !dbg !3879
  call void @addr_cpy(ptr noundef %61, ptr noundef %62), !dbg !3880
  %63 = load ptr, ptr %10, align 8, !dbg !3881
  %64 = load i32, ptr %17, align 4, !dbg !3882
  call void @addr_set_port(ptr noundef %63, i32 noundef %64), !dbg !3883
  br label %65, !dbg !3884

65:                                               ; preds = %58, %54, %50, %46
  store i32 0, ptr %6, align 4, !dbg !3885
  br label %66, !dbg !3885

66:                                               ; preds = %65, %45, %35, %25
  %67 = load i32, ptr %6, align 4, !dbg !3886
  ret i32 %67, !dbg !3886
}

declare void @addr_set_any(ptr noundef) #4

declare i32 @stun_addr_decode(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #4

declare void @map_addr_from_public_to_private(ptr noundef, ptr noundef) #4

declare i32 @addr_any_no_port(ptr noundef) #4

declare i32 @addr_get_port(ptr noundef) #4

declare void @addr_cpy(ptr noundef, ptr noundef) #4

declare void @addr_set_port(ptr noundef, i32 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stun_attr_get_first_addr_str(ptr noundef %0, i64 noundef %1, i16 noundef zeroext %2, ptr noundef %3, ptr noundef %4) #0 !dbg !3887 {
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i16, align 2
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  store ptr %0, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3890, metadata !DIExpression()), !dbg !3891
  store i64 %1, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3892, metadata !DIExpression()), !dbg !3893
  store i16 %2, ptr %9, align 2
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3894, metadata !DIExpression()), !dbg !3895
  store ptr %3, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !3896, metadata !DIExpression()), !dbg !3897
  store ptr %4, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !3898, metadata !DIExpression()), !dbg !3899
  call void @llvm.dbg.declare(metadata ptr %12, metadata !3900, metadata !DIExpression()), !dbg !3901
  %13 = load ptr, ptr %7, align 8, !dbg !3902
  %14 = load i64, ptr %8, align 8, !dbg !3903
  %15 = call ptr @stun_attr_get_first_str(ptr noundef %13, i64 noundef %14), !dbg !3904
  store ptr %15, ptr %12, align 8, !dbg !3901
  br label %16, !dbg !3905

16:                                               ; preds = %39, %5
  %17 = load ptr, ptr %12, align 8, !dbg !3906
  %18 = icmp ne ptr %17, null, !dbg !3905
  br i1 %18, label %19, label %44, !dbg !3905

19:                                               ; preds = %16
  %20 = load ptr, ptr %12, align 8, !dbg !3907
  %21 = call i32 @stun_attr_is_addr(ptr noundef %20), !dbg !3910
  %22 = icmp ne i32 %21, 0, !dbg !3910
  br i1 %22, label %23, label %39, !dbg !3911

23:                                               ; preds = %19
  %24 = load i16, ptr %9, align 2, !dbg !3912
  %25 = zext i16 %24 to i32, !dbg !3912
  %26 = load ptr, ptr %12, align 8, !dbg !3913
  %27 = call i32 @stun_attr_get_type(ptr noundef %26), !dbg !3914
  %28 = icmp eq i32 %25, %27, !dbg !3915
  br i1 %28, label %29, label %39, !dbg !3916

29:                                               ; preds = %23
  %30 = load ptr, ptr %7, align 8, !dbg !3917
  %31 = load i64, ptr %8, align 8, !dbg !3920
  %32 = load ptr, ptr %12, align 8, !dbg !3921
  %33 = load ptr, ptr %10, align 8, !dbg !3922
  %34 = load ptr, ptr %11, align 8, !dbg !3923
  %35 = call i32 @stun_attr_get_addr_str(ptr noundef %30, i64 noundef %31, ptr noundef %32, ptr noundef %33, ptr noundef %34), !dbg !3924
  %36 = icmp eq i32 %35, 0, !dbg !3925
  br i1 %36, label %37, label %38, !dbg !3926

37:                                               ; preds = %29
  store i32 0, ptr %6, align 4, !dbg !3927
  br label %45, !dbg !3927

38:                                               ; preds = %29
  br label %39, !dbg !3929

39:                                               ; preds = %38, %23, %19
  %40 = load ptr, ptr %7, align 8, !dbg !3930
  %41 = load i64, ptr %8, align 8, !dbg !3931
  %42 = load ptr, ptr %12, align 8, !dbg !3932
  %43 = call ptr @stun_attr_get_next_str(ptr noundef %40, i64 noundef %41, ptr noundef %42), !dbg !3933
  store ptr %43, ptr %12, align 8, !dbg !3934
  br label %16, !dbg !3905, !llvm.loop !3935

44:                                               ; preds = %16
  store i32 -1, ptr %6, align 4, !dbg !3937
  br label %45, !dbg !3937

45:                                               ; preds = %44, %37
  %46 = load i32, ptr %6, align 4, !dbg !3938
  ret i32 %46, !dbg !3938
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stun_attr_add_bandwidth_str(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 !dbg !3939 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3942, metadata !DIExpression()), !dbg !3943
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3944, metadata !DIExpression()), !dbg !3945
  store i64 %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3946, metadata !DIExpression()), !dbg !3947
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3948, metadata !DIExpression()), !dbg !3949
  %9 = load i64, ptr %6, align 8, !dbg !3950
  %10 = lshr i64 %9, 7, !dbg !3951
  %11 = trunc i64 %10 to i32, !dbg !3952
  store i32 %11, ptr %7, align 4, !dbg !3949
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3953, metadata !DIExpression()), !dbg !3954
  %12 = load i32, ptr %7, align 4, !dbg !3955
  %13 = call i32 @ntohl(i32 noundef %12) #11, !dbg !3955
  store i32 %13, ptr %8, align 4, !dbg !3954
  %14 = load ptr, ptr %4, align 8, !dbg !3956
  %15 = load ptr, ptr %5, align 8, !dbg !3957
  %16 = call i32 @stun_attr_add_str(ptr noundef %14, ptr noundef %15, i16 noundef zeroext -32752, ptr noundef %8, i32 noundef 4), !dbg !3958
  ret i32 %16, !dbg !3959
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stun_attr_add_address_error_code(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 !dbg !3960 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca [513 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3963, metadata !DIExpression()), !dbg !3964
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3965, metadata !DIExpression()), !dbg !3966
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3967, metadata !DIExpression()), !dbg !3968
  store i32 %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3969, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3971, metadata !DIExpression()), !dbg !3972
  %13 = load i32, ptr %8, align 4, !dbg !3973
  %14 = call ptr @get_default_reason(i32 noundef %13), !dbg !3974
  store ptr %14, ptr %9, align 8, !dbg !3972
  call void @llvm.dbg.declare(metadata ptr %10, metadata !3975, metadata !DIExpression()), !dbg !3976
  %15 = load i32, ptr %7, align 4, !dbg !3977
  %16 = trunc i32 %15 to i8, !dbg !3978
  %17 = getelementptr inbounds [513 x i8], ptr %10, i64 0, i64 0, !dbg !3979
  store i8 %16, ptr %17, align 16, !dbg !3980
  %18 = getelementptr inbounds [513 x i8], ptr %10, i64 0, i64 1, !dbg !3981
  store i8 0, ptr %18, align 1, !dbg !3982
  %19 = load i32, ptr %8, align 4, !dbg !3983
  %20 = sdiv i32 %19, 100, !dbg !3984
  %21 = trunc i32 %20 to i8, !dbg !3985
  %22 = getelementptr inbounds [513 x i8], ptr %10, i64 0, i64 2, !dbg !3986
  store i8 %21, ptr %22, align 2, !dbg !3987
  %23 = load i32, ptr %8, align 4, !dbg !3988
  %24 = srem i32 %23, 100, !dbg !3989
  %25 = trunc i32 %24 to i8, !dbg !3990
  %26 = getelementptr inbounds [513 x i8], ptr %10, i64 0, i64 3, !dbg !3991
  store i8 %25, ptr %26, align 1, !dbg !3992
  %27 = getelementptr inbounds [513 x i8], ptr %10, i64 0, i64 0, !dbg !3993
  %28 = getelementptr inbounds i8, ptr %27, i64 4, !dbg !3994
  %29 = load ptr, ptr %9, align 8, !dbg !3995
  %30 = call ptr @strncpy(ptr noundef %28, ptr noundef %29, i64 noundef 509) #9, !dbg !3996
  %31 = getelementptr inbounds [513 x i8], ptr %10, i64 0, i64 512, !dbg !3997
  store i8 0, ptr %31, align 16, !dbg !3998
  call void @llvm.dbg.declare(metadata ptr %11, metadata !3999, metadata !DIExpression()), !dbg !4000
  %32 = getelementptr inbounds [513 x i8], ptr %10, i64 0, i64 0, !dbg !4001
  %33 = getelementptr inbounds i8, ptr %32, i64 4, !dbg !4002
  %34 = call i64 @strlen(ptr noundef %33) #8, !dbg !4003
  %35 = trunc i64 %34 to i32, !dbg !4004
  %36 = add nsw i32 4, %35, !dbg !4005
  store i32 %36, ptr %11, align 4, !dbg !4000
  call void @llvm.dbg.declare(metadata ptr %12, metadata !4006, metadata !DIExpression()), !dbg !4008
  %37 = load i32, ptr %11, align 4, !dbg !4009
  %38 = srem i32 %37, 4, !dbg !4010
  store i32 %38, ptr %12, align 4, !dbg !4008
  %39 = load i32, ptr %12, align 4, !dbg !4011
  %40 = icmp ne i32 %39, 0, !dbg !4011
  br i1 %40, label %41, label %46, !dbg !4013

41:                                               ; preds = %4
  %42 = load i32, ptr %12, align 4, !dbg !4014
  %43 = sub nsw i32 4, %42, !dbg !4016
  %44 = load i32, ptr %11, align 4, !dbg !4017
  %45 = add nsw i32 %44, %43, !dbg !4017
  store i32 %45, ptr %11, align 4, !dbg !4017
  br label %46, !dbg !4018

46:                                               ; preds = %41, %4
  %47 = load ptr, ptr %5, align 8, !dbg !4019
  %48 = load ptr, ptr %6, align 8, !dbg !4020
  %49 = getelementptr inbounds [513 x i8], ptr %10, i64 0, i64 0, !dbg !4021
  %50 = load i32, ptr %11, align 4, !dbg !4022
  %51 = call i32 @stun_attr_add_str(ptr noundef %47, ptr noundef %48, i16 noundef zeroext -32717, ptr noundef %49, i32 noundef %50), !dbg !4023
  ret i32 0, !dbg !4024
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stun_attr_get_address_error_code(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !4025 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4028, metadata !DIExpression()), !dbg !4029
  store i64 %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !4030, metadata !DIExpression()), !dbg !4031
  store ptr %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !4032, metadata !DIExpression()), !dbg !4033
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !4034, metadata !DIExpression()), !dbg !4035
  %13 = load ptr, ptr %8, align 8, !dbg !4036
  %14 = icmp ne ptr %13, null, !dbg !4036
  br i1 %14, label %15, label %17, !dbg !4038

15:                                               ; preds = %4
  %16 = load ptr, ptr %8, align 8, !dbg !4039
  store i32 0, ptr %16, align 4, !dbg !4041
  br label %17, !dbg !4042

17:                                               ; preds = %15, %4
  %18 = load ptr, ptr %9, align 8, !dbg !4043
  %19 = icmp ne ptr %18, null, !dbg !4043
  br i1 %19, label %20, label %22, !dbg !4045

20:                                               ; preds = %17
  %21 = load ptr, ptr %9, align 8, !dbg !4046
  store i32 0, ptr %21, align 4, !dbg !4048
  br label %22, !dbg !4049

22:                                               ; preds = %20, %17
  %23 = load ptr, ptr %6, align 8, !dbg !4050
  %24 = icmp ne ptr %23, null, !dbg !4050
  br i1 %24, label %25, label %72, !dbg !4052

25:                                               ; preds = %22
  %26 = load i64, ptr %7, align 8, !dbg !4053
  %27 = icmp ne i64 %26, 0, !dbg !4053
  br i1 %27, label %28, label %72, !dbg !4054

28:                                               ; preds = %25
  call void @llvm.dbg.declare(metadata ptr %10, metadata !4055, metadata !DIExpression()), !dbg !4057
  %29 = load ptr, ptr %6, align 8, !dbg !4058
  %30 = load i64, ptr %7, align 8, !dbg !4059
  %31 = call ptr @stun_attr_get_first_by_type_str(ptr noundef %29, i64 noundef %30, i16 noundef zeroext -32717), !dbg !4060
  store ptr %31, ptr %10, align 8, !dbg !4057
  %32 = load ptr, ptr %10, align 8, !dbg !4061
  %33 = icmp ne ptr %32, null, !dbg !4061
  br i1 %33, label %34, label %71, !dbg !4063

34:                                               ; preds = %28
  call void @llvm.dbg.declare(metadata ptr %11, metadata !4064, metadata !DIExpression()), !dbg !4066
  %35 = load ptr, ptr %10, align 8, !dbg !4067
  %36 = call ptr @stun_attr_get_value(ptr noundef %35), !dbg !4068
  store ptr %36, ptr %11, align 8, !dbg !4066
  %37 = load ptr, ptr %11, align 8, !dbg !4069
  %38 = icmp ne ptr %37, null, !dbg !4069
  br i1 %38, label %40, label %39, !dbg !4071

39:                                               ; preds = %34
  store i32 -1, ptr %5, align 4, !dbg !4072
  br label %73, !dbg !4072

40:                                               ; preds = %34
  call void @llvm.dbg.declare(metadata ptr %12, metadata !4074, metadata !DIExpression()), !dbg !4076
  %41 = load ptr, ptr %10, align 8, !dbg !4077
  %42 = call i32 @stun_attr_get_len(ptr noundef %41), !dbg !4078
  store i32 %42, ptr %12, align 4, !dbg !4076
  %43 = load i32, ptr %12, align 4, !dbg !4079
  %44 = icmp ne i32 %43, 4, !dbg !4081
  br i1 %44, label %45, label %46, !dbg !4082

45:                                               ; preds = %40
  store i32 -1, ptr %5, align 4, !dbg !4083
  br label %73, !dbg !4083

46:                                               ; preds = %40
  %47 = load ptr, ptr %8, align 8, !dbg !4085
  %48 = icmp ne ptr %47, null, !dbg !4085
  br i1 %48, label %49, label %55, !dbg !4087

49:                                               ; preds = %46
  %50 = load ptr, ptr %11, align 8, !dbg !4088
  %51 = getelementptr inbounds i8, ptr %50, i64 0, !dbg !4088
  %52 = load i8, ptr %51, align 1, !dbg !4088
  %53 = zext i8 %52 to i32, !dbg !4088
  %54 = load ptr, ptr %8, align 8, !dbg !4090
  store i32 %53, ptr %54, align 4, !dbg !4091
  br label %55, !dbg !4092

55:                                               ; preds = %49, %46
  %56 = load ptr, ptr %9, align 8, !dbg !4093
  %57 = icmp ne ptr %56, null, !dbg !4093
  br i1 %57, label %58, label %70, !dbg !4095

58:                                               ; preds = %55
  %59 = load ptr, ptr %11, align 8, !dbg !4096
  %60 = getelementptr inbounds i8, ptr %59, i64 2, !dbg !4096
  %61 = load i8, ptr %60, align 1, !dbg !4096
  %62 = zext i8 %61 to i32, !dbg !4096
  %63 = mul nsw i32 %62, 100, !dbg !4098
  %64 = load ptr, ptr %11, align 8, !dbg !4099
  %65 = getelementptr inbounds i8, ptr %64, i64 3, !dbg !4099
  %66 = load i8, ptr %65, align 1, !dbg !4099
  %67 = zext i8 %66 to i32, !dbg !4099
  %68 = add nsw i32 %63, %67, !dbg !4100
  %69 = load ptr, ptr %9, align 8, !dbg !4101
  store i32 %68, ptr %69, align 4, !dbg !4102
  br label %70, !dbg !4103

70:                                               ; preds = %58, %55
  store i32 0, ptr %5, align 4, !dbg !4104
  br label %73, !dbg !4104

71:                                               ; preds = %28
  br label %72, !dbg !4105

72:                                               ; preds = %71, %25, %22
  store i32 0, ptr %5, align 4, !dbg !4106
  br label %73, !dbg !4106

73:                                               ; preds = %72, %70, %45, %39
  %74 = load i32, ptr %5, align 4, !dbg !4107
  ret i32 %74, !dbg !4107
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @stun_attr_get_first_channel_number_str(ptr noundef %0, i64 noundef %1) #0 !dbg !4108 {
  %3 = alloca i16, align 2
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i16, align 2
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4109, metadata !DIExpression()), !dbg !4110
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4111, metadata !DIExpression()), !dbg !4112
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4113, metadata !DIExpression()), !dbg !4114
  %8 = load ptr, ptr %4, align 8, !dbg !4115
  %9 = load i64, ptr %5, align 8, !dbg !4116
  %10 = call ptr @stun_attr_get_first_str(ptr noundef %8, i64 noundef %9), !dbg !4117
  store ptr %10, ptr %6, align 8, !dbg !4114
  br label %11, !dbg !4118

11:                                               ; preds = %31, %2
  %12 = load ptr, ptr %6, align 8, !dbg !4119
  %13 = icmp ne ptr %12, null, !dbg !4118
  br i1 %13, label %14, label %36, !dbg !4118

14:                                               ; preds = %11
  %15 = load ptr, ptr %6, align 8, !dbg !4120
  %16 = call i32 @stun_attr_get_type(ptr noundef %15), !dbg !4123
  %17 = icmp eq i32 %16, 12, !dbg !4124
  br i1 %17, label %18, label %31, !dbg !4125

18:                                               ; preds = %14
  call void @llvm.dbg.declare(metadata ptr %7, metadata !4126, metadata !DIExpression()), !dbg !4128
  %19 = load ptr, ptr %6, align 8, !dbg !4129
  %20 = call zeroext i16 @stun_attr_get_channel_number(ptr noundef %19), !dbg !4130
  store i16 %20, ptr %7, align 2, !dbg !4128
  %21 = load i16, ptr %7, align 2, !dbg !4131
  %22 = zext i16 %21 to i32, !dbg !4131
  %23 = icmp sge i32 %22, 16384, !dbg !4131
  br i1 %23, label %24, label %30, !dbg !4131

24:                                               ; preds = %18
  %25 = load i16, ptr %7, align 2, !dbg !4131
  %26 = zext i16 %25 to i32, !dbg !4131
  %27 = icmp sle i32 %26, 32767, !dbg !4131
  br i1 %27, label %28, label %30, !dbg !4133

28:                                               ; preds = %24
  %29 = load i16, ptr %7, align 2, !dbg !4134
  store i16 %29, ptr %3, align 2, !dbg !4136
  br label %37, !dbg !4136

30:                                               ; preds = %24, %18
  br label %31, !dbg !4137

31:                                               ; preds = %30, %14
  %32 = load ptr, ptr %4, align 8, !dbg !4138
  %33 = load i64, ptr %5, align 8, !dbg !4139
  %34 = load ptr, ptr %6, align 8, !dbg !4140
  %35 = call ptr @stun_attr_get_next_str(ptr noundef %32, i64 noundef %33, ptr noundef %34), !dbg !4141
  store ptr %35, ptr %6, align 8, !dbg !4142
  br label %11, !dbg !4118, !llvm.loop !4143

36:                                               ; preds = %11
  store i16 0, ptr %3, align 2, !dbg !4145
  br label %37, !dbg !4145

37:                                               ; preds = %36, %28
  %38 = load i16, ptr %3, align 2, !dbg !4146
  ret i16 %38, !dbg !4146
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stun_attr_add_fingerprint_str(ptr noundef %0, ptr noundef %1) #0 !dbg !4147 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4150, metadata !DIExpression()), !dbg !4151
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4152, metadata !DIExpression()), !dbg !4153
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4154, metadata !DIExpression()), !dbg !4155
  store i32 0, ptr %5, align 4, !dbg !4155
  %6 = load ptr, ptr %3, align 8, !dbg !4156
  %7 = load ptr, ptr %4, align 8, !dbg !4157
  %8 = call i32 @stun_attr_add_str(ptr noundef %6, ptr noundef %7, i16 noundef zeroext -32728, ptr noundef %5, i32 noundef 4), !dbg !4158
  %9 = load ptr, ptr %3, align 8, !dbg !4159
  %10 = load ptr, ptr %4, align 8, !dbg !4160
  %11 = load i64, ptr %10, align 8, !dbg !4161
  %12 = trunc i64 %11 to i32, !dbg !4162
  %13 = sub nsw i32 %12, 8, !dbg !4163
  %14 = call i32 @ns_crc32(ptr noundef %9, i32 noundef %13), !dbg !4164
  store i32 %14, ptr %5, align 4, !dbg !4165
  %15 = load i32, ptr %5, align 4, !dbg !4166
  %16 = xor i32 %15, 1398035790, !dbg !4166
  %17 = call i32 @ntohl(i32 noundef %16) #11, !dbg !4166
  %18 = load ptr, ptr %3, align 8, !dbg !4167
  %19 = load ptr, ptr %4, align 8, !dbg !4168
  %20 = load i64, ptr %19, align 8, !dbg !4169
  %21 = getelementptr inbounds i8, ptr %18, i64 %20, !dbg !4170
  %22 = getelementptr inbounds i8, ptr %21, i64 -4, !dbg !4171
  store i32 %17, ptr %22, align 4, !dbg !4172
  ret i32 0, !dbg !4173
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SASLprep(ptr noundef %0) #0 !dbg !4174 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i8, align 1
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4177, metadata !DIExpression()), !dbg !4178
  %7 = load ptr, ptr %3, align 8, !dbg !4179
  %8 = icmp ne ptr %7, null, !dbg !4179
  br i1 %8, label %9, label %55, !dbg !4181

9:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4182, metadata !DIExpression()), !dbg !4184
  %10 = load ptr, ptr %3, align 8, !dbg !4185
  store ptr %10, ptr %4, align 8, !dbg !4184
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4186, metadata !DIExpression()), !dbg !4187
  %11 = load ptr, ptr %3, align 8, !dbg !4188
  store ptr %11, ptr %5, align 8, !dbg !4187
  br label %12, !dbg !4189

12:                                               ; preds = %53, %9
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4190, metadata !DIExpression()), !dbg !4194
  %13 = load ptr, ptr %4, align 8, !dbg !4195
  %14 = load i8, ptr %13, align 1, !dbg !4196
  store i8 %14, ptr %6, align 1, !dbg !4194
  %15 = load i8, ptr %6, align 1, !dbg !4197
  %16 = icmp ne i8 %15, 0, !dbg !4197
  br i1 %16, label %19, label %17, !dbg !4199

17:                                               ; preds = %12
  %18 = load ptr, ptr %5, align 8, !dbg !4200
  store i8 0, ptr %18, align 1, !dbg !4202
  br label %54, !dbg !4203

19:                                               ; preds = %12
  %20 = load i8, ptr %6, align 1, !dbg !4204
  %21 = zext i8 %20 to i32, !dbg !4204
  switch i32 %21, label %32 [
    i32 173, label %22
    i32 160, label %25
    i32 32, label %25
    i32 127, label %31
  ], !dbg !4205

22:                                               ; preds = %19
  %23 = load ptr, ptr %4, align 8, !dbg !4206
  %24 = getelementptr inbounds i8, ptr %23, i32 1, !dbg !4206
  store ptr %24, ptr %4, align 8, !dbg !4206
  br label %53, !dbg !4208

25:                                               ; preds = %19, %19
  %26 = load ptr, ptr %5, align 8, !dbg !4209
  store i8 32, ptr %26, align 1, !dbg !4210
  %27 = load ptr, ptr %5, align 8, !dbg !4211
  %28 = getelementptr inbounds i8, ptr %27, i32 1, !dbg !4211
  store ptr %28, ptr %5, align 8, !dbg !4211
  %29 = load ptr, ptr %4, align 8, !dbg !4212
  %30 = getelementptr inbounds i8, ptr %29, i32 1, !dbg !4212
  store ptr %30, ptr %4, align 8, !dbg !4212
  br label %53, !dbg !4213

31:                                               ; preds = %19
  store i32 -1, ptr %2, align 4, !dbg !4214
  br label %56, !dbg !4214

32:                                               ; preds = %19
  %33 = load i8, ptr %6, align 1, !dbg !4215
  %34 = zext i8 %33 to i32, !dbg !4215
  %35 = icmp slt i32 %34, 31, !dbg !4217
  br i1 %35, label %36, label %37, !dbg !4218

36:                                               ; preds = %32
  store i32 -1, ptr %2, align 4, !dbg !4219
  br label %56, !dbg !4219

37:                                               ; preds = %32
  %38 = load i8, ptr %6, align 1, !dbg !4220
  %39 = zext i8 %38 to i32, !dbg !4220
  %40 = icmp sge i32 %39, 128, !dbg !4222
  br i1 %40, label %41, label %46, !dbg !4223

41:                                               ; preds = %37
  %42 = load i8, ptr %6, align 1, !dbg !4224
  %43 = zext i8 %42 to i32, !dbg !4224
  %44 = icmp sle i32 %43, 159, !dbg !4225
  br i1 %44, label %45, label %46, !dbg !4226

45:                                               ; preds = %41
  store i32 -1, ptr %2, align 4, !dbg !4227
  br label %56, !dbg !4227

46:                                               ; preds = %41, %37
  %47 = load i8, ptr %6, align 1, !dbg !4228
  %48 = load ptr, ptr %5, align 8, !dbg !4229
  store i8 %47, ptr %48, align 1, !dbg !4230
  %49 = load ptr, ptr %5, align 8, !dbg !4231
  %50 = getelementptr inbounds i8, ptr %49, i32 1, !dbg !4231
  store ptr %50, ptr %5, align 8, !dbg !4231
  %51 = load ptr, ptr %4, align 8, !dbg !4232
  %52 = getelementptr inbounds i8, ptr %51, i32 1, !dbg !4232
  store ptr %52, ptr %4, align 8, !dbg !4232
  br label %53, !dbg !4233

53:                                               ; preds = %46, %25, %22
  br label %12, !dbg !4234, !llvm.loop !4235

54:                                               ; preds = %17
  br label %55, !dbg !4238

55:                                               ; preds = %54, %1
  store i32 0, ptr %2, align 4, !dbg !4239
  br label %56, !dbg !4239

56:                                               ; preds = %55, %45, %36, %31
  %57 = load i32, ptr %2, align 4, !dbg !4240
  ret i32 %57, !dbg !4240
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_hmackey_size(i32 noundef %0) #0 !dbg !4241 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4244, metadata !DIExpression()), !dbg !4245
  %4 = load i32, ptr %3, align 4, !dbg !4246
  %5 = icmp eq i32 %4, 1, !dbg !4248
  br i1 %5, label %6, label %7, !dbg !4249

6:                                                ; preds = %1
  store i64 32, ptr %2, align 8, !dbg !4250
  br label %16, !dbg !4250

7:                                                ; preds = %1
  %8 = load i32, ptr %3, align 4, !dbg !4251
  %9 = icmp eq i32 %8, 2, !dbg !4253
  br i1 %9, label %10, label %11, !dbg !4254

10:                                               ; preds = %7
  store i64 48, ptr %2, align 8, !dbg !4255
  br label %16, !dbg !4255

11:                                               ; preds = %7
  %12 = load i32, ptr %3, align 4, !dbg !4256
  %13 = icmp eq i32 %12, 3, !dbg !4258
  br i1 %13, label %14, label %15, !dbg !4259

14:                                               ; preds = %11
  store i64 64, ptr %2, align 8, !dbg !4260
  br label %16, !dbg !4260

15:                                               ; preds = %11
  store i64 16, ptr %2, align 8, !dbg !4261
  br label %16, !dbg !4261

16:                                               ; preds = %15, %14, %10, %6
  %17 = load i64, ptr %2, align 8, !dbg !4262
  ret i64 %17, !dbg !4262
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_bin_func(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !4263 {
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4266, metadata !DIExpression()), !dbg !4267
  store i64 %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4268, metadata !DIExpression()), !dbg !4269
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !4270, metadata !DIExpression()), !dbg !4271
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !4272, metadata !DIExpression()), !dbg !4273
  %10 = load ptr, ptr %8, align 8, !dbg !4274
  %11 = load ptr, ptr %5, align 8, !dbg !4275
  %12 = load i64, ptr %6, align 8, !dbg !4276
  %13 = trunc i64 %12 to i32, !dbg !4277
  %14 = call i32 (ptr, ...) @printf(ptr noundef @.str.31, ptr noundef %10, ptr noundef %11, i32 noundef %13), !dbg !4278
  call void @llvm.dbg.declare(metadata ptr %9, metadata !4279, metadata !DIExpression()), !dbg !4280
  store i64 0, ptr %9, align 8, !dbg !4281
  br label %15, !dbg !4283

15:                                               ; preds = %26, %4
  %16 = load i64, ptr %9, align 8, !dbg !4284
  %17 = load i64, ptr %6, align 8, !dbg !4286
  %18 = icmp ult i64 %16, %17, !dbg !4287
  br i1 %18, label %19, label %29, !dbg !4288

19:                                               ; preds = %15
  %20 = load ptr, ptr %7, align 8, !dbg !4289
  %21 = load i64, ptr %9, align 8, !dbg !4291
  %22 = getelementptr inbounds i8, ptr %20, i64 %21, !dbg !4292
  %23 = load i8, ptr %22, align 1, !dbg !4292
  %24 = zext i8 %23 to i32, !dbg !4293
  %25 = call i32 (ptr, ...) @printf(ptr noundef @.str.32, i32 noundef %24), !dbg !4294
  br label %26, !dbg !4295

26:                                               ; preds = %19
  %27 = load i64, ptr %9, align 8, !dbg !4296
  %28 = add i64 %27, 1, !dbg !4296
  store i64 %28, ptr %9, align 8, !dbg !4296
  br label %15, !dbg !4297, !llvm.loop !4298

29:                                               ; preds = %15
  %30 = call i32 (ptr, ...) @printf(ptr noundef @.str.33), !dbg !4300
  ret void, !dbg !4301
}

declare i32 @printf(ptr noundef, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stun_attr_add_integrity_str(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 !dbg !4302 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca [128 x i8], align 16
  %15 = alloca i32, align 4
  store i32 %0, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !4306, metadata !DIExpression()), !dbg !4307
  store ptr %1, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !4308, metadata !DIExpression()), !dbg !4309
  store ptr %2, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !4310, metadata !DIExpression()), !dbg !4311
  store ptr %3, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !4312, metadata !DIExpression()), !dbg !4313
  store ptr %4, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !4314, metadata !DIExpression()), !dbg !4315
  store i32 %5, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !4316, metadata !DIExpression()), !dbg !4317
  call void @llvm.dbg.declare(metadata ptr %14, metadata !4318, metadata !DIExpression()), !dbg !4322
  call void @llvm.dbg.declare(metadata ptr %15, metadata !4323, metadata !DIExpression()), !dbg !4324
  %16 = load i32, ptr %13, align 4, !dbg !4325
  switch i32 %16, label %20 [
    i32 1, label %17
    i32 2, label %18
    i32 3, label %19
  ], !dbg !4326

17:                                               ; preds = %6
  store i32 32, ptr %15, align 4, !dbg !4327
  br label %21, !dbg !4329

18:                                               ; preds = %6
  store i32 48, ptr %15, align 4, !dbg !4330
  br label %21, !dbg !4331

19:                                               ; preds = %6
  store i32 64, ptr %15, align 4, !dbg !4332
  br label %21, !dbg !4333

20:                                               ; preds = %6
  store i32 20, ptr %15, align 4, !dbg !4334
  br label %21, !dbg !4335

21:                                               ; preds = %20, %19, %18, %17
  %22 = load ptr, ptr %9, align 8, !dbg !4336
  %23 = load ptr, ptr %10, align 8, !dbg !4338
  %24 = getelementptr inbounds [128 x i8], ptr %14, i64 0, i64 0, !dbg !4339
  %25 = load i32, ptr %15, align 4, !dbg !4340
  %26 = call i32 @stun_attr_add_str(ptr noundef %22, ptr noundef %23, i16 noundef zeroext 8, ptr noundef %24, i32 noundef %25), !dbg !4341
  %27 = icmp slt i32 %26, 0, !dbg !4342
  br i1 %27, label %28, label %29, !dbg !4343

28:                                               ; preds = %21
  store i32 -1, ptr %7, align 4, !dbg !4344
  br label %81, !dbg !4344

29:                                               ; preds = %21
  %30 = load i32, ptr %8, align 4, !dbg !4345
  %31 = icmp eq i32 %30, 2, !dbg !4347
  br i1 %31, label %32, label %56, !dbg !4348

32:                                               ; preds = %29
  %33 = load ptr, ptr %9, align 8, !dbg !4349
  %34 = load ptr, ptr %10, align 8, !dbg !4352
  %35 = load i64, ptr %34, align 8, !dbg !4353
  %36 = sub i64 %35, 4, !dbg !4354
  %37 = load i32, ptr %15, align 4, !dbg !4355
  %38 = zext i32 %37 to i64, !dbg !4355
  %39 = sub i64 %36, %38, !dbg !4356
  %40 = load ptr, ptr %12, align 8, !dbg !4357
  %41 = load ptr, ptr %12, align 8, !dbg !4358
  %42 = call i64 @strlen(ptr noundef %41) #8, !dbg !4359
  %43 = load ptr, ptr %9, align 8, !dbg !4360
  %44 = load ptr, ptr %10, align 8, !dbg !4361
  %45 = load i64, ptr %44, align 8, !dbg !4362
  %46 = getelementptr inbounds i8, ptr %43, i64 %45, !dbg !4363
  %47 = load i32, ptr %15, align 4, !dbg !4364
  %48 = zext i32 %47 to i64, !dbg !4365
  %49 = sub i64 0, %48, !dbg !4365
  %50 = getelementptr inbounds i8, ptr %46, i64 %49, !dbg !4365
  %51 = load i32, ptr %13, align 4, !dbg !4366
  %52 = call i32 @stun_calculate_hmac(ptr noundef %33, i64 noundef %39, ptr noundef %40, i64 noundef %42, ptr noundef %50, ptr noundef %15, i32 noundef %51), !dbg !4367
  %53 = icmp slt i32 %52, 0, !dbg !4368
  br i1 %53, label %54, label %55, !dbg !4369

54:                                               ; preds = %32
  store i32 -1, ptr %7, align 4, !dbg !4370
  br label %81, !dbg !4370

55:                                               ; preds = %32
  br label %80, !dbg !4371

56:                                               ; preds = %29
  %57 = load ptr, ptr %9, align 8, !dbg !4372
  %58 = load ptr, ptr %10, align 8, !dbg !4375
  %59 = load i64, ptr %58, align 8, !dbg !4376
  %60 = sub i64 %59, 4, !dbg !4377
  %61 = load i32, ptr %15, align 4, !dbg !4378
  %62 = zext i32 %61 to i64, !dbg !4378
  %63 = sub i64 %60, %62, !dbg !4379
  %64 = load ptr, ptr %11, align 8, !dbg !4380
  %65 = load i32, ptr %13, align 4, !dbg !4381
  %66 = call i64 @get_hmackey_size(i32 noundef %65), !dbg !4382
  %67 = load ptr, ptr %9, align 8, !dbg !4383
  %68 = load ptr, ptr %10, align 8, !dbg !4384
  %69 = load i64, ptr %68, align 8, !dbg !4385
  %70 = getelementptr inbounds i8, ptr %67, i64 %69, !dbg !4386
  %71 = load i32, ptr %15, align 4, !dbg !4387
  %72 = zext i32 %71 to i64, !dbg !4388
  %73 = sub i64 0, %72, !dbg !4388
  %74 = getelementptr inbounds i8, ptr %70, i64 %73, !dbg !4388
  %75 = load i32, ptr %13, align 4, !dbg !4389
  %76 = call i32 @stun_calculate_hmac(ptr noundef %57, i64 noundef %63, ptr noundef %64, i64 noundef %66, ptr noundef %74, ptr noundef %15, i32 noundef %75), !dbg !4390
  %77 = icmp slt i32 %76, 0, !dbg !4391
  br i1 %77, label %78, label %79, !dbg !4392

78:                                               ; preds = %56
  store i32 -1, ptr %7, align 4, !dbg !4393
  br label %81, !dbg !4393

79:                                               ; preds = %56
  br label %80

80:                                               ; preds = %79, %55
  store i32 0, ptr %7, align 4, !dbg !4394
  br label %81, !dbg !4394

81:                                               ; preds = %80, %78, %54, %28
  %82 = load i32, ptr %7, align 4, !dbg !4395
  ret i32 %82, !dbg !4395
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stun_attr_add_integrity_by_key_str(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) #0 !dbg !4396 {
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  %16 = alloca [257 x i8], align 16
  store ptr %0, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !4399, metadata !DIExpression()), !dbg !4400
  store ptr %1, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !4401, metadata !DIExpression()), !dbg !4402
  store ptr %2, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !4403, metadata !DIExpression()), !dbg !4404
  store ptr %3, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !4405, metadata !DIExpression()), !dbg !4406
  store ptr %4, ptr %13, align 8
  call void @llvm.dbg.declare(metadata ptr %13, metadata !4407, metadata !DIExpression()), !dbg !4408
  store ptr %5, ptr %14, align 8
  call void @llvm.dbg.declare(metadata ptr %14, metadata !4409, metadata !DIExpression()), !dbg !4410
  store i32 %6, ptr %15, align 4
  call void @llvm.dbg.declare(metadata ptr %15, metadata !4411, metadata !DIExpression()), !dbg !4412
  %17 = load ptr, ptr %9, align 8, !dbg !4413
  %18 = load ptr, ptr %10, align 8, !dbg !4415
  %19 = load ptr, ptr %11, align 8, !dbg !4416
  %20 = load ptr, ptr %11, align 8, !dbg !4417
  %21 = call i64 @strlen(ptr noundef %20) #8, !dbg !4418
  %22 = trunc i64 %21 to i32, !dbg !4419
  %23 = call i32 @stun_attr_add_str(ptr noundef %17, ptr noundef %18, i16 noundef zeroext 6, ptr noundef %19, i32 noundef %22), !dbg !4420
  %24 = icmp slt i32 %23, 0, !dbg !4421
  br i1 %24, label %25, label %26, !dbg !4422

25:                                               ; preds = %7
  store i32 -1, ptr %8, align 4, !dbg !4423
  br label %53, !dbg !4423

26:                                               ; preds = %7
  %27 = load ptr, ptr %9, align 8, !dbg !4424
  %28 = load ptr, ptr %10, align 8, !dbg !4426
  %29 = load ptr, ptr %14, align 8, !dbg !4427
  %30 = load ptr, ptr %14, align 8, !dbg !4428
  %31 = call i64 @strlen(ptr noundef %30) #8, !dbg !4429
  %32 = trunc i64 %31 to i32, !dbg !4430
  %33 = call i32 @stun_attr_add_str(ptr noundef %27, ptr noundef %28, i16 noundef zeroext 21, ptr noundef %29, i32 noundef %32), !dbg !4431
  %34 = icmp slt i32 %33, 0, !dbg !4432
  br i1 %34, label %35, label %36, !dbg !4433

35:                                               ; preds = %26
  store i32 -1, ptr %8, align 4, !dbg !4434
  br label %53, !dbg !4434

36:                                               ; preds = %26
  %37 = load ptr, ptr %9, align 8, !dbg !4435
  %38 = load ptr, ptr %10, align 8, !dbg !4437
  %39 = load ptr, ptr %12, align 8, !dbg !4438
  %40 = load ptr, ptr %12, align 8, !dbg !4439
  %41 = call i64 @strlen(ptr noundef %40) #8, !dbg !4440
  %42 = trunc i64 %41 to i32, !dbg !4441
  %43 = call i32 @stun_attr_add_str(ptr noundef %37, ptr noundef %38, i16 noundef zeroext 20, ptr noundef %39, i32 noundef %42), !dbg !4442
  %44 = icmp slt i32 %43, 0, !dbg !4443
  br i1 %44, label %45, label %46, !dbg !4444

45:                                               ; preds = %36
  store i32 -1, ptr %8, align 4, !dbg !4445
  br label %53, !dbg !4445

46:                                               ; preds = %36
  call void @llvm.dbg.declare(metadata ptr %16, metadata !4446, metadata !DIExpression()), !dbg !4449
  %47 = load ptr, ptr %9, align 8, !dbg !4450
  %48 = load ptr, ptr %10, align 8, !dbg !4451
  %49 = load ptr, ptr %13, align 8, !dbg !4452
  %50 = getelementptr inbounds [257 x i8], ptr %16, i64 0, i64 0, !dbg !4453
  %51 = load i32, ptr %15, align 4, !dbg !4454
  %52 = call i32 @stun_attr_add_integrity_str(i32 noundef 1, ptr noundef %47, ptr noundef %48, ptr noundef %49, ptr noundef %50, i32 noundef %51), !dbg !4455
  store i32 %52, ptr %8, align 4, !dbg !4456
  br label %53, !dbg !4456

53:                                               ; preds = %46, %45, %35, %25
  %54 = load i32, ptr %8, align 4, !dbg !4457
  ret i32 %54, !dbg !4457
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stun_attr_add_integrity_by_user_str(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) #0 !dbg !4458 {
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  %16 = alloca [64 x i8], align 16
  store ptr %0, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !4461, metadata !DIExpression()), !dbg !4462
  store ptr %1, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !4463, metadata !DIExpression()), !dbg !4464
  store ptr %2, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !4465, metadata !DIExpression()), !dbg !4466
  store ptr %3, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !4467, metadata !DIExpression()), !dbg !4468
  store ptr %4, ptr %13, align 8
  call void @llvm.dbg.declare(metadata ptr %13, metadata !4469, metadata !DIExpression()), !dbg !4470
  store ptr %5, ptr %14, align 8
  call void @llvm.dbg.declare(metadata ptr %14, metadata !4471, metadata !DIExpression()), !dbg !4472
  store i32 %6, ptr %15, align 4
  call void @llvm.dbg.declare(metadata ptr %15, metadata !4473, metadata !DIExpression()), !dbg !4474
  call void @llvm.dbg.declare(metadata ptr %16, metadata !4475, metadata !DIExpression()), !dbg !4477
  %17 = load ptr, ptr %11, align 8, !dbg !4478
  %18 = load ptr, ptr %12, align 8, !dbg !4480
  %19 = load ptr, ptr %13, align 8, !dbg !4481
  %20 = getelementptr inbounds [64 x i8], ptr %16, i64 0, i64 0, !dbg !4482
  %21 = load i32, ptr %15, align 4, !dbg !4483
  %22 = call i32 @stun_produce_integrity_key_str(ptr noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef %20, i32 noundef %21), !dbg !4484
  %23 = icmp slt i32 %22, 0, !dbg !4485
  br i1 %23, label %24, label %25, !dbg !4486

24:                                               ; preds = %7
  store i32 -1, ptr %8, align 4, !dbg !4487
  br label %34, !dbg !4487

25:                                               ; preds = %7
  %26 = load ptr, ptr %9, align 8, !dbg !4488
  %27 = load ptr, ptr %10, align 8, !dbg !4489
  %28 = load ptr, ptr %11, align 8, !dbg !4490
  %29 = load ptr, ptr %12, align 8, !dbg !4491
  %30 = getelementptr inbounds [64 x i8], ptr %16, i64 0, i64 0, !dbg !4492
  %31 = load ptr, ptr %14, align 8, !dbg !4493
  %32 = load i32, ptr %15, align 4, !dbg !4494
  %33 = call i32 @stun_attr_add_integrity_by_key_str(ptr noundef %26, ptr noundef %27, ptr noundef %28, ptr noundef %29, ptr noundef %30, ptr noundef %31, i32 noundef %32), !dbg !4495
  store i32 %33, ptr %8, align 4, !dbg !4496
  br label %34, !dbg !4496

34:                                               ; preds = %25, %24
  %35 = load i32, ptr %8, align 4, !dbg !4497
  ret i32 %35, !dbg !4497
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stun_attr_add_integrity_by_user_short_term_str(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 !dbg !4498 {
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca [64 x i8], align 16
  store ptr %0, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !4501, metadata !DIExpression()), !dbg !4502
  store ptr %1, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !4503, metadata !DIExpression()), !dbg !4504
  store ptr %2, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !4505, metadata !DIExpression()), !dbg !4506
  store ptr %3, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !4507, metadata !DIExpression()), !dbg !4508
  store i32 %4, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !4509, metadata !DIExpression()), !dbg !4510
  %13 = load ptr, ptr %7, align 8, !dbg !4511
  %14 = load ptr, ptr %8, align 8, !dbg !4513
  %15 = load ptr, ptr %9, align 8, !dbg !4514
  %16 = load ptr, ptr %9, align 8, !dbg !4515
  %17 = call i64 @strlen(ptr noundef %16) #8, !dbg !4516
  %18 = trunc i64 %17 to i32, !dbg !4517
  %19 = call i32 @stun_attr_add_str(ptr noundef %13, ptr noundef %14, i16 noundef zeroext 6, ptr noundef %15, i32 noundef %18), !dbg !4518
  %20 = icmp slt i32 %19, 0, !dbg !4519
  br i1 %20, label %21, label %22, !dbg !4520

21:                                               ; preds = %5
  store i32 -1, ptr %6, align 4, !dbg !4521
  br label %29, !dbg !4521

22:                                               ; preds = %5
  call void @llvm.dbg.declare(metadata ptr %12, metadata !4522, metadata !DIExpression()), !dbg !4523
  %23 = load ptr, ptr %7, align 8, !dbg !4524
  %24 = load ptr, ptr %8, align 8, !dbg !4525
  %25 = getelementptr inbounds [64 x i8], ptr %12, i64 0, i64 0, !dbg !4526
  %26 = load ptr, ptr %10, align 8, !dbg !4527
  %27 = load i32, ptr %11, align 4, !dbg !4528
  %28 = call i32 @stun_attr_add_integrity_str(i32 noundef 2, ptr noundef %23, ptr noundef %24, ptr noundef %25, ptr noundef %26, i32 noundef %27), !dbg !4529
  store i32 %28, ptr %6, align 4, !dbg !4530
  br label %29, !dbg !4530

29:                                               ; preds = %22, %21
  %30 = load i32, ptr %6, align 4, !dbg !4531
  ret i32 %30, !dbg !4531
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_hmac(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 !dbg !4532 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4535, metadata !DIExpression()), !dbg !4536
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4537, metadata !DIExpression()), !dbg !4538
  store i64 %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4539, metadata !DIExpression()), !dbg !4540
  %8 = load ptr, ptr %4, align 8, !dbg !4541
  %9 = load i64, ptr %6, align 8, !dbg !4542
  %10 = trunc i64 %9 to i32, !dbg !4543
  %11 = call i32 (ptr, ...) @printf(ptr noundef @.str.34, ptr noundef %8, i32 noundef %10), !dbg !4544
  call void @llvm.dbg.declare(metadata ptr %7, metadata !4545, metadata !DIExpression()), !dbg !4546
  store i64 0, ptr %7, align 8, !dbg !4547
  br label %12, !dbg !4549

12:                                               ; preds = %23, %3
  %13 = load i64, ptr %7, align 8, !dbg !4550
  %14 = load i64, ptr %6, align 8, !dbg !4552
  %15 = icmp ult i64 %13, %14, !dbg !4553
  br i1 %15, label %16, label %26, !dbg !4554

16:                                               ; preds = %12
  %17 = load ptr, ptr %5, align 8, !dbg !4555
  %18 = load i64, ptr %7, align 8, !dbg !4557
  %19 = getelementptr inbounds i8, ptr %17, i64 %18, !dbg !4558
  %20 = load i8, ptr %19, align 1, !dbg !4558
  %21 = zext i8 %20 to i32, !dbg !4559
  %22 = call i32 (ptr, ...) @printf(ptr noundef @.str.32, i32 noundef %21), !dbg !4560
  br label %23, !dbg !4561

23:                                               ; preds = %16
  %24 = load i64, ptr %7, align 8, !dbg !4562
  %25 = add i64 %24, 1, !dbg !4562
  store i64 %25, ptr %7, align 8, !dbg !4562
  br label %12, !dbg !4563, !llvm.loop !4564

26:                                               ; preds = %12
  %27 = call i32 (ptr, ...) @printf(ptr noundef @.str.33), !dbg !4566
  ret void, !dbg !4567
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stun_check_message_integrity_by_key_str(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 !dbg !4568 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [128 x i8], align 16
  %16 = alloca i32, align 4
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !4571, metadata !DIExpression()), !dbg !4572
  store ptr %1, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !4573, metadata !DIExpression()), !dbg !4574
  store i64 %2, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !4575, metadata !DIExpression()), !dbg !4576
  store ptr %3, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !4577, metadata !DIExpression()), !dbg !4578
  store ptr %4, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !4579, metadata !DIExpression()), !dbg !4580
  store i32 %5, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !4581, metadata !DIExpression()), !dbg !4582
  call void @llvm.dbg.declare(metadata ptr %14, metadata !4583, metadata !DIExpression()), !dbg !4584
  store i32 0, ptr %14, align 4, !dbg !4584
  call void @llvm.dbg.declare(metadata ptr %15, metadata !4585, metadata !DIExpression()), !dbg !4586
  call void @llvm.dbg.declare(metadata ptr %16, metadata !4587, metadata !DIExpression()), !dbg !4588
  call void @llvm.dbg.declare(metadata ptr %17, metadata !4589, metadata !DIExpression()), !dbg !4590
  store ptr null, ptr %17, align 8, !dbg !4590
  call void @llvm.dbg.declare(metadata ptr %18, metadata !4591, metadata !DIExpression()), !dbg !4592
  %22 = load ptr, ptr %9, align 8, !dbg !4593
  %23 = load i64, ptr %10, align 8, !dbg !4594
  %24 = call ptr @stun_attr_get_first_by_type_str(ptr noundef %22, i64 noundef %23, i16 noundef zeroext 8), !dbg !4595
  store ptr %24, ptr %18, align 8, !dbg !4592
  %25 = load ptr, ptr %18, align 8, !dbg !4596
  %26 = icmp ne ptr %25, null, !dbg !4596
  br i1 %26, label %28, label %27, !dbg !4598

27:                                               ; preds = %6
  store i32 -1, ptr %7, align 4, !dbg !4599
  br label %133, !dbg !4599

28:                                               ; preds = %6
  call void @llvm.dbg.declare(metadata ptr %19, metadata !4600, metadata !DIExpression()), !dbg !4601
  %29 = load ptr, ptr %18, align 8, !dbg !4602
  %30 = call i32 @stun_attr_get_len(ptr noundef %29), !dbg !4603
  store i32 %30, ptr %19, align 4, !dbg !4601
  %31 = load i32, ptr %19, align 4, !dbg !4604
  switch i32 %31, label %52 [
    i32 32, label %32
    i32 48, label %37
    i32 64, label %42
    i32 20, label %47
  ], !dbg !4605

32:                                               ; preds = %28
  store i32 32, ptr %16, align 4, !dbg !4606
  %33 = load i32, ptr %13, align 4, !dbg !4608
  %34 = icmp ne i32 %33, 1, !dbg !4610
  br i1 %34, label %35, label %36, !dbg !4611

35:                                               ; preds = %32
  store i32 -1, ptr %7, align 4, !dbg !4612
  br label %133, !dbg !4612

36:                                               ; preds = %32
  br label %53, !dbg !4613

37:                                               ; preds = %28
  store i32 48, ptr %16, align 4, !dbg !4614
  %38 = load i32, ptr %13, align 4, !dbg !4615
  %39 = icmp ne i32 %38, 2, !dbg !4617
  br i1 %39, label %40, label %41, !dbg !4618

40:                                               ; preds = %37
  store i32 -1, ptr %7, align 4, !dbg !4619
  br label %133, !dbg !4619

41:                                               ; preds = %37
  br label %53, !dbg !4620

42:                                               ; preds = %28
  store i32 64, ptr %16, align 4, !dbg !4621
  %43 = load i32, ptr %13, align 4, !dbg !4622
  %44 = icmp ne i32 %43, 3, !dbg !4624
  br i1 %44, label %45, label %46, !dbg !4625

45:                                               ; preds = %42
  store i32 -1, ptr %7, align 4, !dbg !4626
  br label %133, !dbg !4626

46:                                               ; preds = %42
  br label %53, !dbg !4627

47:                                               ; preds = %28
  store i32 20, ptr %16, align 4, !dbg !4628
  %48 = load i32, ptr %13, align 4, !dbg !4629
  %49 = icmp ne i32 %48, 0, !dbg !4631
  br i1 %49, label %50, label %51, !dbg !4632

50:                                               ; preds = %47
  store i32 -1, ptr %7, align 4, !dbg !4633
  br label %133, !dbg !4633

51:                                               ; preds = %47
  br label %53, !dbg !4634

52:                                               ; preds = %28
  store i32 -1, ptr %7, align 4, !dbg !4635
  br label %133, !dbg !4635

53:                                               ; preds = %51, %46, %41, %36
  call void @llvm.dbg.declare(metadata ptr %20, metadata !4636, metadata !DIExpression()), !dbg !4637
  %54 = load ptr, ptr %9, align 8, !dbg !4638
  %55 = load i64, ptr %10, align 8, !dbg !4639
  %56 = call i32 @stun_get_command_message_len_str(ptr noundef %54, i64 noundef %55), !dbg !4640
  store i32 %56, ptr %20, align 4, !dbg !4637
  %57 = load i32, ptr %20, align 4, !dbg !4641
  %58 = icmp slt i32 %57, 0, !dbg !4643
  br i1 %58, label %59, label %60, !dbg !4644

59:                                               ; preds = %53
  store i32 -1, ptr %7, align 4, !dbg !4645
  br label %133, !dbg !4645

60:                                               ; preds = %53
  call void @llvm.dbg.declare(metadata ptr %21, metadata !4646, metadata !DIExpression()), !dbg !4647
  %61 = load ptr, ptr %18, align 8, !dbg !4648
  %62 = load ptr, ptr %9, align 8, !dbg !4649
  %63 = ptrtoint ptr %61 to i64, !dbg !4650
  %64 = ptrtoint ptr %62 to i64, !dbg !4650
  %65 = sub i64 %63, %64, !dbg !4650
  %66 = trunc i64 %65 to i32, !dbg !4651
  %67 = add nsw i32 %66, 4, !dbg !4652
  %68 = load i32, ptr %16, align 4, !dbg !4653
  %69 = add i32 %67, %68, !dbg !4654
  store i32 %69, ptr %21, align 4, !dbg !4647
  %70 = load i32, ptr %21, align 4, !dbg !4655
  %71 = load i32, ptr %20, align 4, !dbg !4657
  %72 = icmp sgt i32 %70, %71, !dbg !4658
  br i1 %72, label %73, label %74, !dbg !4659

73:                                               ; preds = %60
  store i32 -1, ptr %7, align 4, !dbg !4660
  br label %133, !dbg !4660

74:                                               ; preds = %60
  %75 = load ptr, ptr %9, align 8, !dbg !4661
  %76 = load i32, ptr %21, align 4, !dbg !4663
  %77 = call i32 @stun_set_command_message_len_str(ptr noundef %75, i32 noundef %76), !dbg !4664
  %78 = icmp slt i32 %77, 0, !dbg !4665
  br i1 %78, label %79, label %80, !dbg !4666

79:                                               ; preds = %74
  store i32 -1, ptr %7, align 4, !dbg !4667
  br label %133, !dbg !4667

80:                                               ; preds = %74
  %81 = load i32, ptr %8, align 4, !dbg !4668
  %82 = icmp eq i32 %81, 2, !dbg !4670
  br i1 %82, label %83, label %97, !dbg !4671

83:                                               ; preds = %80
  %84 = load ptr, ptr %9, align 8, !dbg !4672
  %85 = load i32, ptr %21, align 4, !dbg !4674
  %86 = sext i32 %85 to i64, !dbg !4675
  %87 = sub i64 %86, 4, !dbg !4676
  %88 = load i32, ptr %16, align 4, !dbg !4677
  %89 = zext i32 %88 to i64, !dbg !4677
  %90 = sub i64 %87, %89, !dbg !4678
  %91 = load ptr, ptr %12, align 8, !dbg !4679
  %92 = load ptr, ptr %12, align 8, !dbg !4680
  %93 = call i64 @strlen(ptr noundef %92) #8, !dbg !4681
  %94 = getelementptr inbounds [128 x i8], ptr %15, i64 0, i64 0, !dbg !4682
  %95 = load i32, ptr %13, align 4, !dbg !4683
  %96 = call i32 @stun_calculate_hmac(ptr noundef %84, i64 noundef %90, ptr noundef %91, i64 noundef %93, ptr noundef %94, ptr noundef %16, i32 noundef %95), !dbg !4684
  store i32 %96, ptr %14, align 4, !dbg !4685
  br label %111, !dbg !4686

97:                                               ; preds = %80
  %98 = load ptr, ptr %9, align 8, !dbg !4687
  %99 = load i32, ptr %21, align 4, !dbg !4689
  %100 = sext i32 %99 to i64, !dbg !4690
  %101 = sub i64 %100, 4, !dbg !4691
  %102 = load i32, ptr %16, align 4, !dbg !4692
  %103 = zext i32 %102 to i64, !dbg !4692
  %104 = sub i64 %101, %103, !dbg !4693
  %105 = load ptr, ptr %11, align 8, !dbg !4694
  %106 = load i32, ptr %13, align 4, !dbg !4695
  %107 = call i64 @get_hmackey_size(i32 noundef %106), !dbg !4696
  %108 = getelementptr inbounds [128 x i8], ptr %15, i64 0, i64 0, !dbg !4697
  %109 = load i32, ptr %13, align 4, !dbg !4698
  %110 = call i32 @stun_calculate_hmac(ptr noundef %98, i64 noundef %104, ptr noundef %105, i64 noundef %107, ptr noundef %108, ptr noundef %16, i32 noundef %109), !dbg !4699
  store i32 %110, ptr %14, align 4, !dbg !4700
  br label %111

111:                                              ; preds = %97, %83
  %112 = load ptr, ptr %9, align 8, !dbg !4701
  %113 = load i32, ptr %20, align 4, !dbg !4702
  %114 = call i32 @stun_set_command_message_len_str(ptr noundef %112, i32 noundef %113), !dbg !4703
  %115 = load i32, ptr %14, align 4, !dbg !4704
  %116 = icmp slt i32 %115, 0, !dbg !4706
  br i1 %116, label %117, label %118, !dbg !4707

117:                                              ; preds = %111
  store i32 -1, ptr %7, align 4, !dbg !4708
  br label %133, !dbg !4708

118:                                              ; preds = %111
  %119 = load ptr, ptr %18, align 8, !dbg !4709
  %120 = call ptr @stun_attr_get_value(ptr noundef %119), !dbg !4710
  store ptr %120, ptr %17, align 8, !dbg !4711
  %121 = load ptr, ptr %17, align 8, !dbg !4712
  %122 = icmp ne ptr %121, null, !dbg !4712
  br i1 %122, label %124, label %123, !dbg !4714

123:                                              ; preds = %118
  store i32 -1, ptr %7, align 4, !dbg !4715
  br label %133, !dbg !4715

124:                                              ; preds = %118
  %125 = load ptr, ptr %17, align 8, !dbg !4716
  %126 = getelementptr inbounds [128 x i8], ptr %15, i64 0, i64 0, !dbg !4718
  %127 = load i32, ptr %16, align 4, !dbg !4719
  %128 = zext i32 %127 to i64, !dbg !4719
  %129 = call i32 @bcmp(ptr noundef %125, ptr noundef %126, i64 noundef %128) #8, !dbg !4720
  %130 = icmp ne i32 %129, 0, !dbg !4720
  br i1 %130, label %131, label %132, !dbg !4721

131:                                              ; preds = %124
  store i32 0, ptr %7, align 4, !dbg !4722
  br label %133, !dbg !4722

132:                                              ; preds = %124
  store i32 1, ptr %7, align 4, !dbg !4723
  br label %133, !dbg !4723

133:                                              ; preds = %132, %131, %123, %117, %79, %73, %59, %52, %50, %45, %40, %35, %27
  %134 = load i32, ptr %7, align 4, !dbg !4724
  ret i32 %134, !dbg !4724
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @bcmp(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stun_check_message_integrity_str(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) #0 !dbg !4725 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca i64, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  %16 = alloca [64 x i8], align 16
  %17 = alloca [257 x i8], align 16
  store i32 %0, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !4728, metadata !DIExpression()), !dbg !4729
  store ptr %1, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !4730, metadata !DIExpression()), !dbg !4731
  store i64 %2, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !4732, metadata !DIExpression()), !dbg !4733
  store ptr %3, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !4734, metadata !DIExpression()), !dbg !4735
  store ptr %4, ptr %13, align 8
  call void @llvm.dbg.declare(metadata ptr %13, metadata !4736, metadata !DIExpression()), !dbg !4737
  store ptr %5, ptr %14, align 8
  call void @llvm.dbg.declare(metadata ptr %14, metadata !4738, metadata !DIExpression()), !dbg !4739
  store i32 %6, ptr %15, align 4
  call void @llvm.dbg.declare(metadata ptr %15, metadata !4740, metadata !DIExpression()), !dbg !4741
  call void @llvm.dbg.declare(metadata ptr %16, metadata !4742, metadata !DIExpression()), !dbg !4743
  call void @llvm.dbg.declare(metadata ptr %17, metadata !4744, metadata !DIExpression()), !dbg !4745
  %18 = load i32, ptr %9, align 4, !dbg !4746
  %19 = icmp eq i32 %18, 2, !dbg !4748
  br i1 %19, label %20, label %24, !dbg !4749

20:                                               ; preds = %7
  %21 = getelementptr inbounds [257 x i8], ptr %17, i64 0, i64 0, !dbg !4750
  %22 = load ptr, ptr %14, align 8, !dbg !4751
  %23 = call ptr @strncpy(ptr noundef %21, ptr noundef %22, i64 noundef 257) #9, !dbg !4752
  br label %34, !dbg !4752

24:                                               ; preds = %7
  %25 = load ptr, ptr %12, align 8, !dbg !4753
  %26 = load ptr, ptr %13, align 8, !dbg !4755
  %27 = load ptr, ptr %14, align 8, !dbg !4756
  %28 = getelementptr inbounds [64 x i8], ptr %16, i64 0, i64 0, !dbg !4757
  %29 = load i32, ptr %15, align 4, !dbg !4758
  %30 = call i32 @stun_produce_integrity_key_str(ptr noundef %25, ptr noundef %26, ptr noundef %27, ptr noundef %28, i32 noundef %29), !dbg !4759
  %31 = icmp slt i32 %30, 0, !dbg !4760
  br i1 %31, label %32, label %33, !dbg !4761

32:                                               ; preds = %24
  store i32 -1, ptr %8, align 4, !dbg !4762
  br label %42, !dbg !4762

33:                                               ; preds = %24
  br label %34

34:                                               ; preds = %33, %20
  %35 = load i32, ptr %9, align 4, !dbg !4763
  %36 = load ptr, ptr %10, align 8, !dbg !4764
  %37 = load i64, ptr %11, align 8, !dbg !4765
  %38 = getelementptr inbounds [64 x i8], ptr %16, i64 0, i64 0, !dbg !4766
  %39 = getelementptr inbounds [257 x i8], ptr %17, i64 0, i64 0, !dbg !4767
  %40 = load i32, ptr %15, align 4, !dbg !4768
  %41 = call i32 @stun_check_message_integrity_by_key_str(i32 noundef %35, ptr noundef %36, i64 noundef %37, ptr noundef %38, ptr noundef %39, i32 noundef %40), !dbg !4769
  store i32 %41, ptr %8, align 4, !dbg !4770
  br label %42, !dbg !4770

42:                                               ; preds = %34, %32
  %43 = load i32, ptr %8, align 4, !dbg !4771
  ret i32 %43, !dbg !4771
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stun_attr_get_change_request_str(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !4772 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4775, metadata !DIExpression()), !dbg !4776
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4777, metadata !DIExpression()), !dbg !4778
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !4779, metadata !DIExpression()), !dbg !4780
  %9 = load ptr, ptr %5, align 8, !dbg !4781
  %10 = call i32 @stun_attr_get_len(ptr noundef %9), !dbg !4783
  %11 = icmp eq i32 %10, 4, !dbg !4784
  br i1 %11, label %12, label %31, !dbg !4785

12:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata ptr %8, metadata !4786, metadata !DIExpression()), !dbg !4788
  %13 = load ptr, ptr %5, align 8, !dbg !4789
  %14 = call ptr @stun_attr_get_value(ptr noundef %13), !dbg !4790
  store ptr %14, ptr %8, align 8, !dbg !4788
  %15 = load ptr, ptr %8, align 8, !dbg !4791
  %16 = icmp ne ptr %15, null, !dbg !4791
  br i1 %16, label %17, label %30, !dbg !4793

17:                                               ; preds = %12
  %18 = load ptr, ptr %8, align 8, !dbg !4794
  %19 = getelementptr inbounds i8, ptr %18, i64 3, !dbg !4794
  %20 = load i8, ptr %19, align 1, !dbg !4794
  %21 = zext i8 %20 to i32, !dbg !4794
  %22 = and i32 %21, 4, !dbg !4796
  %23 = load ptr, ptr %6, align 8, !dbg !4797
  store i32 %22, ptr %23, align 4, !dbg !4798
  %24 = load ptr, ptr %8, align 8, !dbg !4799
  %25 = getelementptr inbounds i8, ptr %24, i64 3, !dbg !4799
  %26 = load i8, ptr %25, align 1, !dbg !4799
  %27 = zext i8 %26 to i32, !dbg !4799
  %28 = and i32 %27, 2, !dbg !4800
  %29 = load ptr, ptr %7, align 8, !dbg !4801
  store i32 %28, ptr %29, align 4, !dbg !4802
  store i32 0, ptr %4, align 4, !dbg !4803
  br label %32, !dbg !4803

30:                                               ; preds = %12
  br label %31, !dbg !4804

31:                                               ; preds = %30, %3
  store i32 -1, ptr %4, align 4, !dbg !4805
  br label %32, !dbg !4805

32:                                               ; preds = %31, %17
  %33 = load i32, ptr %4, align 4, !dbg !4806
  ret i32 %33, !dbg !4806
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stun_attr_add_change_request_str(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 !dbg !4807 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [4 x i8], align 1
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4808, metadata !DIExpression()), !dbg !4809
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4810, metadata !DIExpression()), !dbg !4811
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !4812, metadata !DIExpression()), !dbg !4813
  store i32 %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !4814, metadata !DIExpression()), !dbg !4815
  call void @llvm.dbg.declare(metadata ptr %9, metadata !4816, metadata !DIExpression()), !dbg !4817
  call void @llvm.memset.p0.i64(ptr align 1 %9, i8 0, i64 4, i1 false), !dbg !4817
  %10 = load i32, ptr %7, align 4, !dbg !4818
  %11 = icmp ne i32 %10, 0, !dbg !4818
  br i1 %11, label %12, label %20, !dbg !4820

12:                                               ; preds = %4
  %13 = load i32, ptr %8, align 4, !dbg !4821
  %14 = icmp ne i32 %13, 0, !dbg !4821
  br i1 %14, label %15, label %17, !dbg !4824

15:                                               ; preds = %12
  %16 = getelementptr inbounds [4 x i8], ptr %9, i64 0, i64 3, !dbg !4825
  store i8 6, ptr %16, align 1, !dbg !4827
  br label %19, !dbg !4828

17:                                               ; preds = %12
  %18 = getelementptr inbounds [4 x i8], ptr %9, i64 0, i64 3, !dbg !4829
  store i8 4, ptr %18, align 1, !dbg !4831
  br label %19

19:                                               ; preds = %17, %15
  br label %26, !dbg !4832

20:                                               ; preds = %4
  %21 = load i32, ptr %8, align 4, !dbg !4833
  %22 = icmp ne i32 %21, 0, !dbg !4833
  br i1 %22, label %23, label %25, !dbg !4835

23:                                               ; preds = %20
  %24 = getelementptr inbounds [4 x i8], ptr %9, i64 0, i64 3, !dbg !4836
  store i8 2, ptr %24, align 1, !dbg !4838
  br label %25, !dbg !4839

25:                                               ; preds = %23, %20
  br label %26

26:                                               ; preds = %25, %19
  %27 = load ptr, ptr %5, align 8, !dbg !4840
  %28 = load ptr, ptr %6, align 8, !dbg !4841
  %29 = getelementptr inbounds [4 x i8], ptr %9, i64 0, i64 0, !dbg !4842
  %30 = call i32 @stun_attr_add_str(ptr noundef %27, ptr noundef %28, i16 noundef zeroext 3, ptr noundef %29, i32 noundef 4), !dbg !4843
  ret i32 %30, !dbg !4844
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stun_attr_get_response_port_str(ptr noundef %0) #0 !dbg !4845 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4846, metadata !DIExpression()), !dbg !4847
  %5 = load ptr, ptr %3, align 8, !dbg !4848
  %6 = call i32 @stun_attr_get_len(ptr noundef %5), !dbg !4850
  %7 = icmp sge i32 %6, 2, !dbg !4851
  br i1 %7, label %8, label %20, !dbg !4852

8:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4853, metadata !DIExpression()), !dbg !4855
  %9 = load ptr, ptr %3, align 8, !dbg !4856
  %10 = call ptr @stun_attr_get_value(ptr noundef %9), !dbg !4857
  store ptr %10, ptr %4, align 8, !dbg !4855
  %11 = load ptr, ptr %4, align 8, !dbg !4858
  %12 = icmp ne ptr %11, null, !dbg !4858
  br i1 %12, label %13, label %19, !dbg !4860

13:                                               ; preds = %8
  %14 = load ptr, ptr %4, align 8, !dbg !4861
  %15 = getelementptr inbounds i16, ptr %14, i64 0, !dbg !4861
  %16 = load i16, ptr %15, align 2, !dbg !4861
  %17 = call zeroext i16 @ntohs(i16 noundef zeroext %16) #11, !dbg !4861
  %18 = zext i16 %17 to i32, !dbg !4861
  store i32 %18, ptr %2, align 4, !dbg !4863
  br label %21, !dbg !4863

19:                                               ; preds = %8
  br label %20, !dbg !4864

20:                                               ; preds = %19, %1
  store i32 -1, ptr %2, align 4, !dbg !4865
  br label %21, !dbg !4865

21:                                               ; preds = %20, %13
  %22 = load i32, ptr %2, align 4, !dbg !4866
  ret i32 %22, !dbg !4866
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stun_attr_add_response_port_str(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2) #0 !dbg !4867 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i16, align 2
  %7 = alloca [4 x i8], align 1
  %8 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4868, metadata !DIExpression()), !dbg !4869
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4870, metadata !DIExpression()), !dbg !4871
  store i16 %2, ptr %6, align 2
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4872, metadata !DIExpression()), !dbg !4873
  call void @llvm.dbg.declare(metadata ptr %7, metadata !4874, metadata !DIExpression()), !dbg !4875
  call void @llvm.memset.p0.i64(ptr align 1 %7, i8 0, i64 4, i1 false), !dbg !4875
  call void @llvm.dbg.declare(metadata ptr %8, metadata !4876, metadata !DIExpression()), !dbg !4877
  %9 = getelementptr inbounds [4 x i8], ptr %7, i64 0, i64 0, !dbg !4878
  store ptr %9, ptr %8, align 8, !dbg !4877
  %10 = load i16, ptr %6, align 2, !dbg !4879
  %11 = call zeroext i16 @ntohs(i16 noundef zeroext %10) #11, !dbg !4879
  %12 = load ptr, ptr %8, align 8, !dbg !4880
  store i16 %11, ptr %12, align 2, !dbg !4881
  %13 = load ptr, ptr %4, align 8, !dbg !4882
  %14 = load ptr, ptr %5, align 8, !dbg !4883
  %15 = getelementptr inbounds [4 x i8], ptr %7, i64 0, i64 0, !dbg !4884
  %16 = call i32 @stun_attr_add_str(ptr noundef %13, ptr noundef %14, i16 noundef zeroext 39, ptr noundef %15, i32 noundef 4), !dbg !4885
  ret i32 %16, !dbg !4886
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stun_attr_get_padding_len_str(ptr noundef %0) #0 !dbg !4887 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4888, metadata !DIExpression()), !dbg !4889
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4890, metadata !DIExpression()), !dbg !4891
  %5 = load ptr, ptr %3, align 8, !dbg !4892
  %6 = call i32 @stun_attr_get_len(ptr noundef %5), !dbg !4893
  store i32 %6, ptr %4, align 4, !dbg !4891
  %7 = load i32, ptr %4, align 4, !dbg !4894
  %8 = icmp slt i32 %7, 0, !dbg !4896
  br i1 %8, label %9, label %10, !dbg !4897

9:                                                ; preds = %1
  store i32 -1, ptr %2, align 4, !dbg !4898
  br label %14, !dbg !4898

10:                                               ; preds = %1
  %11 = load i32, ptr %4, align 4, !dbg !4899
  %12 = trunc i32 %11 to i16, !dbg !4900
  %13 = zext i16 %12 to i32, !dbg !4900
  store i32 %13, ptr %2, align 4, !dbg !4901
  br label %14, !dbg !4901

14:                                               ; preds = %10, %9
  %15 = load i32, ptr %2, align 4, !dbg !4902
  ret i32 %15, !dbg !4902
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stun_attr_add_padding_str(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2) #0 !dbg !4903 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i16, align 2
  %7 = alloca [65535 x i8], align 16
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4904, metadata !DIExpression()), !dbg !4905
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4906, metadata !DIExpression()), !dbg !4907
  store i16 %2, ptr %6, align 2
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4908, metadata !DIExpression()), !dbg !4909
  call void @llvm.dbg.declare(metadata ptr %7, metadata !4910, metadata !DIExpression()), !dbg !4914
  %8 = getelementptr inbounds [65535 x i8], ptr %7, i64 0, i64 0, !dbg !4915
  %9 = load i16, ptr %6, align 2, !dbg !4916
  %10 = zext i16 %9 to i64, !dbg !4916
  call void @llvm.memset.p0.i64(ptr align 16 %8, i8 0, i64 %10, i1 false), !dbg !4915
  %11 = load ptr, ptr %4, align 8, !dbg !4917
  %12 = load ptr, ptr %5, align 8, !dbg !4918
  %13 = getelementptr inbounds [65535 x i8], ptr %7, i64 0, i64 0, !dbg !4919
  %14 = load i16, ptr %6, align 2, !dbg !4920
  %15 = zext i16 %14 to i32, !dbg !4920
  %16 = call i32 @stun_attr_add_str(ptr noundef %11, ptr noundef %12, i16 noundef zeroext 38, ptr noundef %13, i32 noundef %15), !dbg !4921
  ret i32 %16, !dbg !4922
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @calculate_enc_key_length(i32 noundef %0) #0 !dbg !4923 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4927, metadata !DIExpression()), !dbg !4928
  %4 = load i32, ptr %3, align 4, !dbg !4929
  switch i32 %4, label %6 [
    i32 1, label %5
  ], !dbg !4930

5:                                                ; preds = %1
  store i64 16, ptr %2, align 8, !dbg !4931
  br label %8, !dbg !4931

6:                                                ; preds = %1
  br label %7, !dbg !4933

7:                                                ; preds = %6
  store i64 32, ptr %2, align 8, !dbg !4934
  br label %8, !dbg !4934

8:                                                ; preds = %7, %5
  %9 = load i64, ptr %2, align 8, !dbg !4935
  ret i64 %9, !dbg !4935
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @calculate_auth_key_length(i32 noundef %0) #0 !dbg !4936 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4937, metadata !DIExpression()), !dbg !4938
  %4 = load i32, ptr %3, align 4, !dbg !4939
  switch i32 %4, label %6 [
    i32 0, label %5
    i32 1, label %5
  ], !dbg !4940

5:                                                ; preds = %1, %1
  store i64 0, ptr %2, align 8, !dbg !4941
  br label %8, !dbg !4941

6:                                                ; preds = %1
  br label %7, !dbg !4943

7:                                                ; preds = %6
  store i64 0, ptr %2, align 8, !dbg !4944
  br label %8, !dbg !4944

8:                                                ; preds = %7, %5
  %9 = load i64, ptr %2, align 8, !dbg !4945
  ret i64 %9, !dbg !4945
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @calculate_key(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) #0 !dbg !4946 {
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4949, metadata !DIExpression()), !dbg !4950
  store i64 %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4951, metadata !DIExpression()), !dbg !4952
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !4953, metadata !DIExpression()), !dbg !4954
  store i64 %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !4955, metadata !DIExpression()), !dbg !4956
  br label %9, !dbg !4957

9:                                                ; preds = %4
  %10 = load i64, ptr %6, align 8, !dbg !4958
  store i64 %10, ptr %6, align 8, !dbg !4958
  br label %11, !dbg !4958

11:                                               ; preds = %9
  %12 = load ptr, ptr %5, align 8, !dbg !4960
  %13 = load ptr, ptr %7, align 8, !dbg !4961
  %14 = load i64, ptr %8, align 8, !dbg !4962
  call void @bcopy(ptr noundef %12, ptr noundef %13, i64 noundef %14) #9, !dbg !4963
  ret i32 0, !dbg !4964
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @convert_oauth_key_data(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #0 !dbg !4965 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct._oauth_key_data, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i64, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4997, metadata !DIExpression()), !dbg !4998
  store ptr %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !4999, metadata !DIExpression()), !dbg !5000
  store ptr %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !5001, metadata !DIExpression()), !dbg !5002
  store i64 %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !5003, metadata !DIExpression()), !dbg !5004
  %13 = load ptr, ptr %6, align 8, !dbg !5005
  %14 = icmp ne ptr %13, null, !dbg !5005
  br i1 %14, label %15, label %222, !dbg !5007

15:                                               ; preds = %4
  %16 = load ptr, ptr %7, align 8, !dbg !5008
  %17 = icmp ne ptr %16, null, !dbg !5008
  br i1 %17, label %18, label %222, !dbg !5009

18:                                               ; preds = %15
  call void @llvm.dbg.declare(metadata ptr %10, metadata !5010, metadata !DIExpression()), !dbg !5012
  %19 = load ptr, ptr %6, align 8, !dbg !5013
  call void @bcopy(ptr noundef %19, ptr noundef %10, i64 noundef 480) #9, !dbg !5014
  call void @llvm.dbg.declare(metadata ptr %11, metadata !5015, metadata !DIExpression()), !dbg !5017
  store ptr %10, ptr %11, align 8, !dbg !5017
  %20 = load ptr, ptr %11, align 8, !dbg !5018
  %21 = getelementptr inbounds %struct._oauth_key_data, ptr %20, i32 0, i32 2, !dbg !5020
  %22 = load i64, ptr %21, align 8, !dbg !5020
  %23 = icmp ne i64 %22, 0, !dbg !5021
  br i1 %23, label %32, label %24, !dbg !5022

24:                                               ; preds = %18
  %25 = load ptr, ptr %8, align 8, !dbg !5023
  %26 = icmp ne ptr %25, null, !dbg !5023
  br i1 %26, label %27, label %31, !dbg !5026

27:                                               ; preds = %24
  %28 = load ptr, ptr %8, align 8, !dbg !5027
  %29 = load i64, ptr %9, align 8, !dbg !5029
  %30 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %28, i64 noundef %29, ptr noundef @.str.35) #9, !dbg !5030
  br label %31, !dbg !5031

31:                                               ; preds = %27, %24
  br label %32, !dbg !5032

32:                                               ; preds = %31, %18
  %33 = load ptr, ptr %11, align 8, !dbg !5033
  %34 = getelementptr inbounds %struct._oauth_key_data, ptr %33, i32 0, i32 0, !dbg !5034
  %35 = getelementptr inbounds [129 x i8], ptr %34, i64 0, i64 0, !dbg !5033
  call void @remove_spaces(ptr noundef %35), !dbg !5035
  %36 = load ptr, ptr %11, align 8, !dbg !5036
  %37 = getelementptr inbounds %struct._oauth_key_data, ptr %36, i32 0, i32 5, !dbg !5037
  %38 = getelementptr inbounds [65 x i8], ptr %37, i64 0, i64 0, !dbg !5036
  call void @remove_spaces(ptr noundef %38), !dbg !5038
  %39 = load ptr, ptr %11, align 8, !dbg !5039
  %40 = getelementptr inbounds %struct._oauth_key_data, ptr %39, i32 0, i32 5, !dbg !5040
  %41 = getelementptr inbounds [65 x i8], ptr %40, i64 0, i64 0, !dbg !5039
  call void @normalize_algorithm(ptr noundef %41), !dbg !5041
  %42 = load ptr, ptr %11, align 8, !dbg !5042
  %43 = getelementptr inbounds %struct._oauth_key_data, ptr %42, i32 0, i32 0, !dbg !5044
  %44 = getelementptr inbounds [129 x i8], ptr %43, i64 0, i64 0, !dbg !5042
  %45 = load i8, ptr %44, align 8, !dbg !5042
  %46 = icmp ne i8 %45, 0, !dbg !5045
  br i1 %46, label %57, label %47, !dbg !5046

47:                                               ; preds = %32
  %48 = load ptr, ptr %8, align 8, !dbg !5047
  %49 = icmp ne ptr %48, null, !dbg !5047
  br i1 %49, label %50, label %54, !dbg !5050

50:                                               ; preds = %47
  %51 = load ptr, ptr %8, align 8, !dbg !5051
  %52 = load i64, ptr %9, align 8, !dbg !5053
  %53 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %51, i64 noundef %52, ptr noundef @.str.36) #9, !dbg !5054
  br label %54, !dbg !5055

54:                                               ; preds = %50, %47
  %55 = load ptr, ptr @stderr, align 8, !dbg !5056
  %56 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %55, ptr noundef @.str.37), !dbg !5056
  store i32 -1, ptr %5, align 4, !dbg !5057
  br label %223, !dbg !5057

57:                                               ; preds = %32
  %58 = load ptr, ptr %7, align 8, !dbg !5058
  call void @llvm.memset.p0.i64(ptr align 8 %58, i8 0, i64 952, i1 false), !dbg !5059
  br label %59, !dbg !5060

59:                                               ; preds = %57
  %60 = load ptr, ptr %7, align 8, !dbg !5061
  %61 = getelementptr inbounds %struct._oauth_key, ptr %60, i32 0, i32 0, !dbg !5061
  %62 = getelementptr inbounds [129 x i8], ptr %61, i64 0, i64 0, !dbg !5061
  %63 = load ptr, ptr %11, align 8, !dbg !5061
  %64 = getelementptr inbounds %struct._oauth_key_data, ptr %63, i32 0, i32 0, !dbg !5061
  %65 = getelementptr inbounds [129 x i8], ptr %64, i64 0, i64 0, !dbg !5061
  %66 = icmp ne ptr %62, %65, !dbg !5061
  br i1 %66, label %67, label %82, !dbg !5064

67:                                               ; preds = %59
  call void @llvm.dbg.declare(metadata ptr %12, metadata !5065, metadata !DIExpression()), !dbg !5069
  store i64 129, ptr %12, align 8, !dbg !5069
  %68 = load ptr, ptr %7, align 8, !dbg !5069
  %69 = getelementptr inbounds %struct._oauth_key, ptr %68, i32 0, i32 0, !dbg !5069
  %70 = getelementptr inbounds [129 x i8], ptr %69, i64 0, i64 0, !dbg !5069
  %71 = load ptr, ptr %11, align 8, !dbg !5069
  %72 = getelementptr inbounds %struct._oauth_key_data, ptr %71, i32 0, i32 0, !dbg !5069
  %73 = getelementptr inbounds [129 x i8], ptr %72, i64 0, i64 0, !dbg !5069
  %74 = load i64, ptr %12, align 8, !dbg !5069
  %75 = call ptr @strncpy(ptr noundef %70, ptr noundef %73, i64 noundef %74) #9, !dbg !5069
  %76 = load ptr, ptr %7, align 8, !dbg !5069
  %77 = getelementptr inbounds %struct._oauth_key, ptr %76, i32 0, i32 0, !dbg !5069
  %78 = getelementptr inbounds [129 x i8], ptr %77, i64 0, i64 0, !dbg !5069
  %79 = load i64, ptr %12, align 8, !dbg !5069
  %80 = sub i64 %79, 1, !dbg !5069
  %81 = getelementptr inbounds i8, ptr %78, i64 %80, !dbg !5069
  store i8 0, ptr %81, align 1, !dbg !5069
  br label %82, !dbg !5070

82:                                               ; preds = %67, %59
  br label %83, !dbg !5064

83:                                               ; preds = %82
  %84 = load ptr, ptr %11, align 8, !dbg !5071
  %85 = getelementptr inbounds %struct._oauth_key_data, ptr %84, i32 0, i32 1, !dbg !5072
  %86 = getelementptr inbounds [257 x i8], ptr %85, i64 0, i64 0, !dbg !5071
  %87 = load ptr, ptr %7, align 8, !dbg !5073
  %88 = getelementptr inbounds %struct._oauth_key, ptr %87, i32 0, i32 1, !dbg !5074
  %89 = getelementptr inbounds [257 x i8], ptr %88, i64 0, i64 0, !dbg !5073
  call void @bcopy(ptr noundef %86, ptr noundef %89, i64 noundef 257) #9, !dbg !5075
  %90 = load ptr, ptr %11, align 8, !dbg !5076
  %91 = getelementptr inbounds %struct._oauth_key_data, ptr %90, i32 0, i32 2, !dbg !5077
  %92 = load i64, ptr %91, align 8, !dbg !5077
  %93 = load ptr, ptr %7, align 8, !dbg !5078
  %94 = getelementptr inbounds %struct._oauth_key, ptr %93, i32 0, i32 2, !dbg !5079
  store i64 %92, ptr %94, align 8, !dbg !5080
  %95 = load ptr, ptr %11, align 8, !dbg !5081
  %96 = getelementptr inbounds %struct._oauth_key_data, ptr %95, i32 0, i32 3, !dbg !5082
  %97 = load i32, ptr %96, align 8, !dbg !5082
  %98 = load ptr, ptr %7, align 8, !dbg !5083
  %99 = getelementptr inbounds %struct._oauth_key, ptr %98, i32 0, i32 3, !dbg !5084
  store i32 %97, ptr %99, align 8, !dbg !5085
  %100 = load ptr, ptr %11, align 8, !dbg !5086
  %101 = getelementptr inbounds %struct._oauth_key_data, ptr %100, i32 0, i32 4, !dbg !5087
  %102 = load i32, ptr %101, align 4, !dbg !5087
  %103 = load ptr, ptr %7, align 8, !dbg !5088
  %104 = getelementptr inbounds %struct._oauth_key, ptr %103, i32 0, i32 4, !dbg !5089
  store i32 %102, ptr %104, align 4, !dbg !5090
  %105 = load ptr, ptr %7, align 8, !dbg !5091
  %106 = getelementptr inbounds %struct._oauth_key, ptr %105, i32 0, i32 3, !dbg !5093
  %107 = load i32, ptr %106, align 8, !dbg !5093
  %108 = icmp ne i32 %107, 0, !dbg !5094
  br i1 %108, label %114, label %109, !dbg !5095

109:                                              ; preds = %83
  %110 = call i64 @time(ptr noundef null) #9, !dbg !5096
  %111 = trunc i64 %110 to i32, !dbg !5096
  %112 = load ptr, ptr %7, align 8, !dbg !5097
  %113 = getelementptr inbounds %struct._oauth_key, ptr %112, i32 0, i32 3, !dbg !5098
  store i32 %111, ptr %113, align 8, !dbg !5099
  br label %114, !dbg !5097

114:                                              ; preds = %109, %83
  %115 = load ptr, ptr %7, align 8, !dbg !5100
  %116 = getelementptr inbounds %struct._oauth_key, ptr %115, i32 0, i32 4, !dbg !5102
  %117 = load i32, ptr %116, align 4, !dbg !5102
  %118 = icmp ne i32 %117, 0, !dbg !5103
  br i1 %118, label %122, label %119, !dbg !5104

119:                                              ; preds = %114
  %120 = load ptr, ptr %7, align 8, !dbg !5105
  %121 = getelementptr inbounds %struct._oauth_key, ptr %120, i32 0, i32 4, !dbg !5106
  store i32 0, ptr %121, align 4, !dbg !5107
  br label %122, !dbg !5105

122:                                              ; preds = %119, %114
  %123 = load ptr, ptr %7, align 8, !dbg !5108
  %124 = getelementptr inbounds %struct._oauth_key, ptr %123, i32 0, i32 5, !dbg !5109
  store i32 -1, ptr %124, align 8, !dbg !5110
  %125 = load ptr, ptr %7, align 8, !dbg !5111
  %126 = getelementptr inbounds %struct._oauth_key, ptr %125, i32 0, i32 5, !dbg !5112
  store i32 0, ptr %126, align 8, !dbg !5113
  %127 = load ptr, ptr %11, align 8, !dbg !5114
  %128 = getelementptr inbounds %struct._oauth_key_data, ptr %127, i32 0, i32 5, !dbg !5116
  %129 = getelementptr inbounds [65 x i8], ptr %128, i64 0, i64 0, !dbg !5114
  %130 = call i32 @strcmp(ptr noundef %129, ptr noundef @.str.38) #8, !dbg !5117
  %131 = icmp ne i32 %130, 0, !dbg !5117
  br i1 %131, label %140, label %132, !dbg !5118

132:                                              ; preds = %122
  %133 = load ptr, ptr %7, align 8, !dbg !5119
  %134 = getelementptr inbounds %struct._oauth_key, ptr %133, i32 0, i32 5, !dbg !5121
  store i32 1, ptr %134, align 8, !dbg !5122
  %135 = load ptr, ptr %7, align 8, !dbg !5123
  %136 = getelementptr inbounds %struct._oauth_key, ptr %135, i32 0, i32 9, !dbg !5124
  store i64 0, ptr %136, align 8, !dbg !5125
  %137 = load ptr, ptr %7, align 8, !dbg !5126
  %138 = getelementptr inbounds %struct._oauth_key, ptr %137, i32 0, i32 8, !dbg !5127
  %139 = getelementptr inbounds [257 x i8], ptr %138, i64 0, i64 0, !dbg !5126
  store i8 0, ptr %139, align 8, !dbg !5128
  br label %171, !dbg !5129

140:                                              ; preds = %122
  %141 = load ptr, ptr %11, align 8, !dbg !5130
  %142 = getelementptr inbounds %struct._oauth_key_data, ptr %141, i32 0, i32 5, !dbg !5132
  %143 = getelementptr inbounds [65 x i8], ptr %142, i64 0, i64 0, !dbg !5130
  %144 = call i32 @strcmp(ptr noundef %143, ptr noundef @.str.39) #8, !dbg !5133
  %145 = icmp ne i32 %144, 0, !dbg !5133
  br i1 %145, label %154, label %146, !dbg !5134

146:                                              ; preds = %140
  %147 = load ptr, ptr %7, align 8, !dbg !5135
  %148 = getelementptr inbounds %struct._oauth_key, ptr %147, i32 0, i32 5, !dbg !5137
  store i32 0, ptr %148, align 8, !dbg !5138
  %149 = load ptr, ptr %7, align 8, !dbg !5139
  %150 = getelementptr inbounds %struct._oauth_key, ptr %149, i32 0, i32 9, !dbg !5140
  store i64 0, ptr %150, align 8, !dbg !5141
  %151 = load ptr, ptr %7, align 8, !dbg !5142
  %152 = getelementptr inbounds %struct._oauth_key, ptr %151, i32 0, i32 8, !dbg !5143
  %153 = getelementptr inbounds [257 x i8], ptr %152, i64 0, i64 0, !dbg !5142
  store i8 0, ptr %153, align 8, !dbg !5144
  br label %170, !dbg !5145

154:                                              ; preds = %140
  %155 = load ptr, ptr %8, align 8, !dbg !5146
  %156 = icmp ne ptr %155, null, !dbg !5146
  br i1 %156, label %157, label %164, !dbg !5149

157:                                              ; preds = %154
  %158 = load ptr, ptr %8, align 8, !dbg !5150
  %159 = load i64, ptr %9, align 8, !dbg !5152
  %160 = load ptr, ptr %11, align 8, !dbg !5153
  %161 = getelementptr inbounds %struct._oauth_key_data, ptr %160, i32 0, i32 5, !dbg !5154
  %162 = getelementptr inbounds [65 x i8], ptr %161, i64 0, i64 0, !dbg !5153
  %163 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %158, i64 noundef %159, ptr noundef @.str.40, ptr noundef %162) #9, !dbg !5155
  br label %164, !dbg !5156

164:                                              ; preds = %157, %154
  %165 = load ptr, ptr @stderr, align 8, !dbg !5157
  %166 = load ptr, ptr %11, align 8, !dbg !5157
  %167 = getelementptr inbounds %struct._oauth_key_data, ptr %166, i32 0, i32 5, !dbg !5157
  %168 = getelementptr inbounds [65 x i8], ptr %167, i64 0, i64 0, !dbg !5157
  %169 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %165, ptr noundef @.str.41, ptr noundef %168), !dbg !5157
  store i32 -1, ptr %5, align 4, !dbg !5158
  br label %223, !dbg !5158

170:                                              ; preds = %146
  br label %171

171:                                              ; preds = %170, %132
  %172 = load ptr, ptr %7, align 8, !dbg !5159
  %173 = getelementptr inbounds %struct._oauth_key, ptr %172, i32 0, i32 5, !dbg !5160
  %174 = load i32, ptr %173, align 8, !dbg !5160
  %175 = call i64 @calculate_auth_key_length(i32 noundef %174), !dbg !5161
  %176 = load ptr, ptr %7, align 8, !dbg !5162
  %177 = getelementptr inbounds %struct._oauth_key, ptr %176, i32 0, i32 9, !dbg !5163
  store i64 %175, ptr %177, align 8, !dbg !5164
  %178 = load ptr, ptr %7, align 8, !dbg !5165
  %179 = getelementptr inbounds %struct._oauth_key, ptr %178, i32 0, i32 9, !dbg !5167
  %180 = load i64, ptr %179, align 8, !dbg !5167
  %181 = icmp ne i64 %180, 0, !dbg !5165
  br i1 %181, label %182, label %199, !dbg !5168

182:                                              ; preds = %171
  %183 = load ptr, ptr %7, align 8, !dbg !5169
  %184 = getelementptr inbounds %struct._oauth_key, ptr %183, i32 0, i32 1, !dbg !5172
  %185 = getelementptr inbounds [257 x i8], ptr %184, i64 0, i64 0, !dbg !5169
  %186 = load ptr, ptr %7, align 8, !dbg !5173
  %187 = getelementptr inbounds %struct._oauth_key, ptr %186, i32 0, i32 2, !dbg !5174
  %188 = load i64, ptr %187, align 8, !dbg !5174
  %189 = load ptr, ptr %7, align 8, !dbg !5175
  %190 = getelementptr inbounds %struct._oauth_key, ptr %189, i32 0, i32 8, !dbg !5176
  %191 = getelementptr inbounds [257 x i8], ptr %190, i64 0, i64 0, !dbg !5175
  %192 = load ptr, ptr %7, align 8, !dbg !5177
  %193 = getelementptr inbounds %struct._oauth_key, ptr %192, i32 0, i32 9, !dbg !5178
  %194 = load i64, ptr %193, align 8, !dbg !5178
  %195 = call i32 @calculate_key(ptr noundef %185, i64 noundef %188, ptr noundef %191, i64 noundef %194), !dbg !5179
  %196 = icmp slt i32 %195, 0, !dbg !5180
  br i1 %196, label %197, label %198, !dbg !5181

197:                                              ; preds = %182
  store i32 -1, ptr %5, align 4, !dbg !5182
  br label %223, !dbg !5182

198:                                              ; preds = %182
  br label %199, !dbg !5184

199:                                              ; preds = %198, %171
  %200 = load ptr, ptr %7, align 8, !dbg !5185
  %201 = getelementptr inbounds %struct._oauth_key, ptr %200, i32 0, i32 5, !dbg !5186
  %202 = load i32, ptr %201, align 8, !dbg !5186
  %203 = call i64 @calculate_enc_key_length(i32 noundef %202), !dbg !5187
  %204 = load ptr, ptr %7, align 8, !dbg !5188
  %205 = getelementptr inbounds %struct._oauth_key, ptr %204, i32 0, i32 7, !dbg !5189
  store i64 %203, ptr %205, align 8, !dbg !5190
  %206 = load ptr, ptr %7, align 8, !dbg !5191
  %207 = getelementptr inbounds %struct._oauth_key, ptr %206, i32 0, i32 1, !dbg !5193
  %208 = getelementptr inbounds [257 x i8], ptr %207, i64 0, i64 0, !dbg !5191
  %209 = load ptr, ptr %7, align 8, !dbg !5194
  %210 = getelementptr inbounds %struct._oauth_key, ptr %209, i32 0, i32 2, !dbg !5195
  %211 = load i64, ptr %210, align 8, !dbg !5195
  %212 = load ptr, ptr %7, align 8, !dbg !5196
  %213 = getelementptr inbounds %struct._oauth_key, ptr %212, i32 0, i32 6, !dbg !5197
  %214 = getelementptr inbounds [257 x i8], ptr %213, i64 0, i64 0, !dbg !5196
  %215 = load ptr, ptr %7, align 8, !dbg !5198
  %216 = getelementptr inbounds %struct._oauth_key, ptr %215, i32 0, i32 7, !dbg !5199
  %217 = load i64, ptr %216, align 8, !dbg !5199
  %218 = call i32 @calculate_key(ptr noundef %208, i64 noundef %211, ptr noundef %214, i64 noundef %217), !dbg !5200
  %219 = icmp slt i32 %218, 0, !dbg !5201
  br i1 %219, label %220, label %221, !dbg !5202

220:                                              ; preds = %199
  store i32 -1, ptr %5, align 4, !dbg !5203
  br label %223, !dbg !5203

221:                                              ; preds = %199
  br label %222, !dbg !5205

222:                                              ; preds = %221, %15, %4
  store i32 0, ptr %5, align 4, !dbg !5206
  br label %223, !dbg !5206

223:                                              ; preds = %222, %220, %197, %164, %54
  %224 = load i32, ptr %5, align 4, !dbg !5207
  ret i32 %224, !dbg !5207
}

; Function Attrs: nounwind
declare i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_spaces(ptr noundef %0) #0 !dbg !5208 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !5211, metadata !DIExpression()), !dbg !5212
  call void @llvm.dbg.declare(metadata ptr %3, metadata !5213, metadata !DIExpression()), !dbg !5214
  %4 = load ptr, ptr %2, align 8, !dbg !5215
  store ptr %4, ptr %3, align 8, !dbg !5214
  br label %5, !dbg !5216

5:                                                ; preds = %15, %1
  %6 = load ptr, ptr %3, align 8, !dbg !5217
  %7 = load i8, ptr %6, align 1, !dbg !5218
  %8 = icmp ne i8 %7, 0, !dbg !5216
  br i1 %8, label %9, label %18, !dbg !5216

9:                                                ; preds = %5
  %10 = load ptr, ptr %3, align 8, !dbg !5219
  %11 = load i8, ptr %10, align 1, !dbg !5222
  %12 = sext i8 %11 to i32, !dbg !5222
  %13 = icmp ne i32 %12, 32, !dbg !5223
  br i1 %13, label %14, label %15, !dbg !5224

14:                                               ; preds = %9
  br label %18, !dbg !5225

15:                                               ; preds = %9
  %16 = load ptr, ptr %3, align 8, !dbg !5226
  %17 = getelementptr inbounds i8, ptr %16, i32 1, !dbg !5226
  store ptr %17, ptr %3, align 8, !dbg !5226
  br label %5, !dbg !5216, !llvm.loop !5227

18:                                               ; preds = %14, %5
  %19 = load ptr, ptr %3, align 8, !dbg !5229
  %20 = load i8, ptr %19, align 1, !dbg !5231
  %21 = icmp ne i8 %20, 0, !dbg !5231
  br i1 %21, label %22, label %66, !dbg !5232

22:                                               ; preds = %18
  %23 = load ptr, ptr %3, align 8, !dbg !5233
  %24 = load ptr, ptr %2, align 8, !dbg !5236
  %25 = icmp ne ptr %23, %24, !dbg !5237
  br i1 %25, label %26, label %49, !dbg !5238

26:                                               ; preds = %22
  br label %27, !dbg !5239

27:                                               ; preds = %39, %26
  %28 = load ptr, ptr %3, align 8, !dbg !5241
  %29 = load i8, ptr %28, align 1, !dbg !5242
  %30 = sext i8 %29 to i32, !dbg !5242
  %31 = icmp ne i32 %30, 0, !dbg !5242
  br i1 %31, label %32, label %37, !dbg !5243

32:                                               ; preds = %27
  %33 = load ptr, ptr %3, align 8, !dbg !5244
  %34 = load i8, ptr %33, align 1, !dbg !5245
  %35 = sext i8 %34 to i32, !dbg !5245
  %36 = icmp ne i32 %35, 32, !dbg !5246
  br label %37

37:                                               ; preds = %32, %27
  %38 = phi i1 [ false, %27 ], [ %36, %32 ], !dbg !5247
  br i1 %38, label %39, label %47, !dbg !5239

39:                                               ; preds = %37
  %40 = load ptr, ptr %3, align 8, !dbg !5248
  %41 = load i8, ptr %40, align 1, !dbg !5250
  %42 = load ptr, ptr %2, align 8, !dbg !5251
  store i8 %41, ptr %42, align 1, !dbg !5252
  %43 = load ptr, ptr %2, align 8, !dbg !5253
  %44 = getelementptr inbounds i8, ptr %43, i32 1, !dbg !5253
  store ptr %44, ptr %2, align 8, !dbg !5253
  %45 = load ptr, ptr %3, align 8, !dbg !5254
  %46 = getelementptr inbounds i8, ptr %45, i32 1, !dbg !5254
  store ptr %46, ptr %3, align 8, !dbg !5254
  br label %27, !dbg !5239, !llvm.loop !5255

47:                                               ; preds = %37
  %48 = load ptr, ptr %2, align 8, !dbg !5257
  store i8 0, ptr %48, align 1, !dbg !5258
  br label %65, !dbg !5259

49:                                               ; preds = %22
  br label %50, !dbg !5260

50:                                               ; preds = %61, %49
  %51 = load ptr, ptr %2, align 8, !dbg !5262
  %52 = load i8, ptr %51, align 1, !dbg !5263
  %53 = icmp ne i8 %52, 0, !dbg !5260
  br i1 %53, label %54, label %64, !dbg !5260

54:                                               ; preds = %50
  %55 = load ptr, ptr %2, align 8, !dbg !5264
  %56 = load i8, ptr %55, align 1, !dbg !5267
  %57 = sext i8 %56 to i32, !dbg !5267
  %58 = icmp eq i32 %57, 32, !dbg !5268
  br i1 %58, label %59, label %61, !dbg !5269

59:                                               ; preds = %54
  %60 = load ptr, ptr %2, align 8, !dbg !5270
  store i8 0, ptr %60, align 1, !dbg !5272
  br label %64, !dbg !5273

61:                                               ; preds = %54
  %62 = load ptr, ptr %2, align 8, !dbg !5274
  %63 = getelementptr inbounds i8, ptr %62, i32 1, !dbg !5274
  store ptr %63, ptr %2, align 8, !dbg !5274
  br label %50, !dbg !5260, !llvm.loop !5275

64:                                               ; preds = %59, %50
  br label %65

65:                                               ; preds = %64, %47
  br label %66, !dbg !5277

66:                                               ; preds = %65, %18
  ret void, !dbg !5278
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @normalize_algorithm(ptr noundef %0) #0 !dbg !5279 {
  %2 = alloca ptr, align 8
  %3 = alloca i8, align 1
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !5280, metadata !DIExpression()), !dbg !5281
  call void @llvm.dbg.declare(metadata ptr %3, metadata !5282, metadata !DIExpression()), !dbg !5283
  %4 = load ptr, ptr %2, align 8, !dbg !5284
  %5 = load i8, ptr %4, align 1, !dbg !5285
  store i8 %5, ptr %3, align 1, !dbg !5283
  br label %6, !dbg !5286

6:                                                ; preds = %31, %1
  %7 = load i8, ptr %3, align 1, !dbg !5287
  %8 = icmp ne i8 %7, 0, !dbg !5286
  br i1 %8, label %9, label %36, !dbg !5286

9:                                                ; preds = %6
  %10 = load i8, ptr %3, align 1, !dbg !5288
  %11 = sext i8 %10 to i32, !dbg !5288
  %12 = icmp eq i32 %11, 95, !dbg !5291
  br i1 %12, label %13, label %15, !dbg !5292

13:                                               ; preds = %9
  %14 = load ptr, ptr %2, align 8, !dbg !5293
  store i8 45, ptr %14, align 1, !dbg !5294
  br label %31, !dbg !5295

15:                                               ; preds = %9
  %16 = load i8, ptr %3, align 1, !dbg !5296
  %17 = sext i8 %16 to i32, !dbg !5296
  %18 = icmp sge i32 %17, 97, !dbg !5298
  br i1 %18, label %19, label %30, !dbg !5299

19:                                               ; preds = %15
  %20 = load i8, ptr %3, align 1, !dbg !5300
  %21 = sext i8 %20 to i32, !dbg !5300
  %22 = icmp sle i32 %21, 122, !dbg !5301
  br i1 %22, label %23, label %30, !dbg !5302

23:                                               ; preds = %19
  %24 = load i8, ptr %3, align 1, !dbg !5303
  %25 = sext i8 %24 to i32, !dbg !5303
  %26 = sub nsw i32 %25, 97, !dbg !5305
  %27 = add nsw i32 %26, 65, !dbg !5306
  %28 = trunc i32 %27 to i8, !dbg !5303
  %29 = load ptr, ptr %2, align 8, !dbg !5307
  store i8 %28, ptr %29, align 1, !dbg !5308
  br label %30, !dbg !5309

30:                                               ; preds = %23, %19, %15
  br label %31

31:                                               ; preds = %30, %13
  %32 = load ptr, ptr %2, align 8, !dbg !5310
  %33 = getelementptr inbounds i8, ptr %32, i32 1, !dbg !5310
  store ptr %33, ptr %2, align 8, !dbg !5310
  %34 = load ptr, ptr %2, align 8, !dbg !5311
  %35 = load i8, ptr %34, align 1, !dbg !5312
  store i8 %35, ptr %3, align 1, !dbg !5313
  br label %6, !dbg !5286, !llvm.loop !5314

36:                                               ; preds = %6
  ret void, !dbg !5316
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #4

; Function Attrs: nounwind
declare i64 @time(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @get_cipher_type(i32 noundef %0) #0 !dbg !5317 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !5324, metadata !DIExpression()), !dbg !5325
  %4 = load i32, ptr %3, align 4, !dbg !5326
  switch i32 %4, label %9 [
    i32 1, label %5
    i32 0, label %7
  ], !dbg !5327

5:                                                ; preds = %1
  %6 = call ptr @EVP_aes_128_gcm(), !dbg !5328
  store ptr %6, ptr %2, align 8, !dbg !5330
  br label %14, !dbg !5330

7:                                                ; preds = %1
  %8 = call ptr @EVP_aes_256_gcm(), !dbg !5331
  store ptr %8, ptr %2, align 8, !dbg !5332
  br label %14, !dbg !5332

9:                                                ; preds = %1
  br label %10, !dbg !5333

10:                                               ; preds = %9
  %11 = load ptr, ptr @stderr, align 8, !dbg !5334
  %12 = load i32, ptr %3, align 4, !dbg !5334
  %13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str.42, ptr noundef @__FUNCTION__.get_cipher_type, i32 noundef %12), !dbg !5334
  store ptr null, ptr %2, align 8, !dbg !5335
  br label %14, !dbg !5335

14:                                               ; preds = %10, %7, %5
  %15 = load ptr, ptr %2, align 8, !dbg !5336
  ret ptr %15, !dbg !5336
}

declare ptr @EVP_aes_128_gcm() #4

declare ptr @EVP_aes_256_gcm() #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @my_EVP_EncryptUpdate(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 !dbg !5337 {
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca ptr, align 8
  %16 = alloca i32, align 4
  store ptr %0, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !5343, metadata !DIExpression()), !dbg !5344
  store ptr %1, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !5345, metadata !DIExpression()), !dbg !5346
  store ptr %2, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !5347, metadata !DIExpression()), !dbg !5348
  store ptr %3, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !5349, metadata !DIExpression()), !dbg !5350
  store i32 %4, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !5351, metadata !DIExpression()), !dbg !5352
  call void @llvm.dbg.declare(metadata ptr %12, metadata !5353, metadata !DIExpression()), !dbg !5354
  store i32 0, ptr %12, align 4, !dbg !5354
  call void @llvm.dbg.declare(metadata ptr %13, metadata !5355, metadata !DIExpression()), !dbg !5356
  store i32 0, ptr %13, align 4, !dbg !5356
  br label %17, !dbg !5357

17:                                               ; preds = %53, %5
  %18 = load i32, ptr %13, align 4, !dbg !5358
  %19 = load i32, ptr %11, align 4, !dbg !5359
  %20 = icmp slt i32 %18, %19, !dbg !5360
  br i1 %20, label %21, label %25, !dbg !5361

21:                                               ; preds = %17
  %22 = load i32, ptr %12, align 4, !dbg !5362
  %23 = add nsw i32 %22, 1, !dbg !5362
  store i32 %23, ptr %12, align 4, !dbg !5362
  %24 = icmp slt i32 %23, 128, !dbg !5363
  br label %25

25:                                               ; preds = %21, %17
  %26 = phi i1 [ false, %17 ], [ %24, %21 ], !dbg !5364
  br i1 %26, label %27, label %54, !dbg !5357

27:                                               ; preds = %25
  call void @llvm.dbg.declare(metadata ptr %14, metadata !5365, metadata !DIExpression()), !dbg !5367
  store i32 0, ptr %14, align 4, !dbg !5367
  call void @llvm.dbg.declare(metadata ptr %15, metadata !5368, metadata !DIExpression()), !dbg !5369
  store ptr null, ptr %15, align 8, !dbg !5369
  %28 = load ptr, ptr %8, align 8, !dbg !5370
  %29 = icmp ne ptr %28, null, !dbg !5370
  br i1 %29, label %30, label %35, !dbg !5372

30:                                               ; preds = %27
  %31 = load ptr, ptr %8, align 8, !dbg !5373
  %32 = load i32, ptr %13, align 4, !dbg !5374
  %33 = sext i32 %32 to i64, !dbg !5375
  %34 = getelementptr inbounds i8, ptr %31, i64 %33, !dbg !5375
  store ptr %34, ptr %15, align 8, !dbg !5376
  br label %35, !dbg !5377

35:                                               ; preds = %30, %27
  call void @llvm.dbg.declare(metadata ptr %16, metadata !5378, metadata !DIExpression()), !dbg !5379
  %36 = load ptr, ptr %7, align 8, !dbg !5380
  %37 = load ptr, ptr %15, align 8, !dbg !5381
  %38 = load ptr, ptr %10, align 8, !dbg !5382
  %39 = load i32, ptr %13, align 4, !dbg !5383
  %40 = sext i32 %39 to i64, !dbg !5384
  %41 = getelementptr inbounds i8, ptr %38, i64 %40, !dbg !5384
  %42 = load i32, ptr %11, align 4, !dbg !5385
  %43 = load i32, ptr %13, align 4, !dbg !5386
  %44 = sub nsw i32 %42, %43, !dbg !5387
  %45 = call i32 @EVP_EncryptUpdate(ptr noundef %36, ptr noundef %37, ptr noundef %14, ptr noundef %41, i32 noundef %44), !dbg !5388
  store i32 %45, ptr %16, align 4, !dbg !5379
  %46 = load i32, ptr %14, align 4, !dbg !5389
  %47 = load i32, ptr %13, align 4, !dbg !5390
  %48 = add nsw i32 %47, %46, !dbg !5390
  store i32 %48, ptr %13, align 4, !dbg !5390
  %49 = load i32, ptr %16, align 4, !dbg !5391
  %50 = icmp slt i32 %49, 1, !dbg !5393
  br i1 %50, label %51, label %53, !dbg !5394

51:                                               ; preds = %35
  %52 = load i32, ptr %16, align 4, !dbg !5395
  store i32 %52, ptr %6, align 4, !dbg !5396
  br label %57, !dbg !5396

53:                                               ; preds = %35
  br label %17, !dbg !5357, !llvm.loop !5397

54:                                               ; preds = %25
  %55 = load i32, ptr %13, align 4, !dbg !5399
  %56 = load ptr, ptr %9, align 8, !dbg !5400
  store i32 %55, ptr %56, align 4, !dbg !5401
  store i32 1, ptr %6, align 4, !dbg !5402
  br label %57, !dbg !5402

57:                                               ; preds = %54, %51
  %58 = load i32, ptr %6, align 4, !dbg !5403
  ret i32 %58, !dbg !5403
}

declare i32 @EVP_EncryptUpdate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @my_EVP_DecryptUpdate(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 !dbg !5404 {
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca ptr, align 8
  %16 = alloca i32, align 4
  store ptr %0, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !5405, metadata !DIExpression()), !dbg !5406
  store ptr %1, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !5407, metadata !DIExpression()), !dbg !5408
  store ptr %2, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !5409, metadata !DIExpression()), !dbg !5410
  store ptr %3, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !5411, metadata !DIExpression()), !dbg !5412
  store i32 %4, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !5413, metadata !DIExpression()), !dbg !5414
  call void @llvm.dbg.declare(metadata ptr %12, metadata !5415, metadata !DIExpression()), !dbg !5416
  store i32 0, ptr %12, align 4, !dbg !5416
  call void @llvm.dbg.declare(metadata ptr %13, metadata !5417, metadata !DIExpression()), !dbg !5418
  store i32 0, ptr %13, align 4, !dbg !5418
  br label %17, !dbg !5419

17:                                               ; preds = %53, %5
  %18 = load i32, ptr %13, align 4, !dbg !5420
  %19 = load i32, ptr %11, align 4, !dbg !5421
  %20 = icmp slt i32 %18, %19, !dbg !5422
  br i1 %20, label %21, label %25, !dbg !5423

21:                                               ; preds = %17
  %22 = load i32, ptr %12, align 4, !dbg !5424
  %23 = add nsw i32 %22, 1, !dbg !5424
  store i32 %23, ptr %12, align 4, !dbg !5424
  %24 = icmp slt i32 %23, 128, !dbg !5425
  br label %25

25:                                               ; preds = %21, %17
  %26 = phi i1 [ false, %17 ], [ %24, %21 ], !dbg !5426
  br i1 %26, label %27, label %54, !dbg !5419

27:                                               ; preds = %25
  call void @llvm.dbg.declare(metadata ptr %14, metadata !5427, metadata !DIExpression()), !dbg !5429
  store i32 0, ptr %14, align 4, !dbg !5429
  call void @llvm.dbg.declare(metadata ptr %15, metadata !5430, metadata !DIExpression()), !dbg !5431
  store ptr null, ptr %15, align 8, !dbg !5431
  %28 = load ptr, ptr %8, align 8, !dbg !5432
  %29 = icmp ne ptr %28, null, !dbg !5432
  br i1 %29, label %30, label %35, !dbg !5434

30:                                               ; preds = %27
  %31 = load ptr, ptr %8, align 8, !dbg !5435
  %32 = load i32, ptr %13, align 4, !dbg !5436
  %33 = sext i32 %32 to i64, !dbg !5437
  %34 = getelementptr inbounds i8, ptr %31, i64 %33, !dbg !5437
  store ptr %34, ptr %15, align 8, !dbg !5438
  br label %35, !dbg !5439

35:                                               ; preds = %30, %27
  call void @llvm.dbg.declare(metadata ptr %16, metadata !5440, metadata !DIExpression()), !dbg !5441
  %36 = load ptr, ptr %7, align 8, !dbg !5442
  %37 = load ptr, ptr %15, align 8, !dbg !5443
  %38 = load ptr, ptr %10, align 8, !dbg !5444
  %39 = load i32, ptr %13, align 4, !dbg !5445
  %40 = sext i32 %39 to i64, !dbg !5446
  %41 = getelementptr inbounds i8, ptr %38, i64 %40, !dbg !5446
  %42 = load i32, ptr %11, align 4, !dbg !5447
  %43 = load i32, ptr %13, align 4, !dbg !5448
  %44 = sub nsw i32 %42, %43, !dbg !5449
  %45 = call i32 @EVP_DecryptUpdate(ptr noundef %36, ptr noundef %37, ptr noundef %14, ptr noundef %41, i32 noundef %44), !dbg !5450
  store i32 %45, ptr %16, align 4, !dbg !5441
  %46 = load i32, ptr %14, align 4, !dbg !5451
  %47 = load i32, ptr %13, align 4, !dbg !5452
  %48 = add nsw i32 %47, %46, !dbg !5452
  store i32 %48, ptr %13, align 4, !dbg !5452
  %49 = load i32, ptr %16, align 4, !dbg !5453
  %50 = icmp slt i32 %49, 1, !dbg !5455
  br i1 %50, label %51, label %53, !dbg !5456

51:                                               ; preds = %35
  %52 = load i32, ptr %16, align 4, !dbg !5457
  store i32 %52, ptr %6, align 4, !dbg !5458
  br label %57, !dbg !5458

53:                                               ; preds = %35
  br label %17, !dbg !5419, !llvm.loop !5459

54:                                               ; preds = %25
  %55 = load i32, ptr %13, align 4, !dbg !5461
  %56 = load ptr, ptr %9, align 8, !dbg !5462
  store i32 %55, ptr %56, align 4, !dbg !5463
  store i32 1, ptr %6, align 4, !dbg !5464
  br label %57, !dbg !5464

57:                                               ; preds = %54, %51
  %58 = load i32, ptr %6, align 4, !dbg !5465
  ret i32 %58, !dbg !5465
}

declare i32 @EVP_DecryptUpdate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_field(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 !dbg !5466 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !5469, metadata !DIExpression()), !dbg !5470
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !5471, metadata !DIExpression()), !dbg !5472
  store i64 %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !5473, metadata !DIExpression()), !dbg !5474
  %8 = load ptr, ptr %4, align 8, !dbg !5475
  %9 = call i32 (ptr, ...) @printf(ptr noundef @.str.43, ptr noundef %8), !dbg !5476
  call void @llvm.dbg.declare(metadata ptr %7, metadata !5477, metadata !DIExpression()), !dbg !5478
  store i64 0, ptr %7, align 8, !dbg !5479
  br label %10, !dbg !5481

10:                                               ; preds = %21, %3
  %11 = load i64, ptr %7, align 8, !dbg !5482
  %12 = load i64, ptr %6, align 8, !dbg !5484
  %13 = icmp ult i64 %11, %12, !dbg !5485
  br i1 %13, label %14, label %24, !dbg !5486

14:                                               ; preds = %10
  %15 = load ptr, ptr %5, align 8, !dbg !5487
  %16 = load i64, ptr %7, align 8, !dbg !5489
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !5487
  %18 = load i8, ptr %17, align 1, !dbg !5487
  %19 = zext i8 %18 to i32, !dbg !5490
  %20 = call i32 (ptr, ...) @printf(ptr noundef @.str.44, i32 noundef %19), !dbg !5491
  br label %21, !dbg !5492

21:                                               ; preds = %14
  %22 = load i64, ptr %7, align 8, !dbg !5493
  %23 = add i64 %22, 1, !dbg !5493
  store i64 %23, ptr %7, align 8, !dbg !5493
  br label %10, !dbg !5494, !llvm.loop !5495

24:                                               ; preds = %10
  %25 = load ptr, ptr %4, align 8, !dbg !5497
  %26 = call i32 (ptr, ...) @printf(ptr noundef @.str.45, ptr noundef %25), !dbg !5498
  ret void, !dbg !5499
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @encode_oauth_token_normal(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !5500 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !5530, metadata !DIExpression()), !dbg !5531
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !5532, metadata !DIExpression()), !dbg !5533
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !5534, metadata !DIExpression()), !dbg !5535
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !5536, metadata !DIExpression()), !dbg !5537
  br label %9, !dbg !5538

9:                                                ; preds = %4
  %10 = load ptr, ptr %5, align 8, !dbg !5539
  store ptr %10, ptr %5, align 8, !dbg !5539
  br label %11, !dbg !5539

11:                                               ; preds = %9
  br label %12, !dbg !5541

12:                                               ; preds = %11
  %13 = load ptr, ptr %6, align 8, !dbg !5542
  store ptr %13, ptr %6, align 8, !dbg !5542
  br label %14, !dbg !5542

14:                                               ; preds = %12
  br label %15, !dbg !5544

15:                                               ; preds = %14
  %16 = load ptr, ptr %7, align 8, !dbg !5545
  store ptr %16, ptr %7, align 8, !dbg !5545
  br label %17, !dbg !5545

17:                                               ; preds = %15
  br label %18, !dbg !5547

18:                                               ; preds = %17
  %19 = load ptr, ptr %8, align 8, !dbg !5548
  store ptr %19, ptr %8, align 8, !dbg !5548
  br label %20, !dbg !5548

20:                                               ; preds = %18
  ret i32 -1, !dbg !5550
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @decode_oauth_token_normal(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !5551 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !5557, metadata !DIExpression()), !dbg !5558
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !5559, metadata !DIExpression()), !dbg !5560
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !5561, metadata !DIExpression()), !dbg !5562
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !5563, metadata !DIExpression()), !dbg !5564
  br label %9, !dbg !5565

9:                                                ; preds = %4
  %10 = load ptr, ptr %5, align 8, !dbg !5566
  store ptr %10, ptr %5, align 8, !dbg !5566
  br label %11, !dbg !5566

11:                                               ; preds = %9
  br label %12, !dbg !5568

12:                                               ; preds = %11
  %13 = load ptr, ptr %6, align 8, !dbg !5569
  store ptr %13, ptr %6, align 8, !dbg !5569
  br label %14, !dbg !5569

14:                                               ; preds = %12
  br label %15, !dbg !5571

15:                                               ; preds = %14
  %16 = load ptr, ptr %7, align 8, !dbg !5572
  store ptr %16, ptr %7, align 8, !dbg !5572
  br label %17, !dbg !5572

17:                                               ; preds = %15
  br label %18, !dbg !5574

18:                                               ; preds = %17
  %19 = load ptr, ptr %8, align 8, !dbg !5575
  store ptr %19, ptr %8, align 8, !dbg !5575
  br label %20, !dbg !5575

20:                                               ; preds = %18
  ret i32 -1, !dbg !5577
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @encode_oauth_token(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 !dbg !5578 {
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  store ptr %0, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !5581, metadata !DIExpression()), !dbg !5582
  store ptr %1, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !5583, metadata !DIExpression()), !dbg !5584
  store ptr %2, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !5585, metadata !DIExpression()), !dbg !5586
  store ptr %3, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !5587, metadata !DIExpression()), !dbg !5588
  store ptr %4, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !5589, metadata !DIExpression()), !dbg !5590
  br label %12, !dbg !5591

12:                                               ; preds = %5
  %13 = load ptr, ptr %11, align 8, !dbg !5592
  store ptr %13, ptr %11, align 8, !dbg !5592
  br label %14, !dbg !5592

14:                                               ; preds = %12
  %15 = load ptr, ptr %7, align 8, !dbg !5594
  %16 = icmp ne ptr %15, null, !dbg !5594
  br i1 %16, label %17, label %44, !dbg !5596

17:                                               ; preds = %14
  %18 = load ptr, ptr %8, align 8, !dbg !5597
  %19 = icmp ne ptr %18, null, !dbg !5597
  br i1 %19, label %20, label %44, !dbg !5598

20:                                               ; preds = %17
  %21 = load ptr, ptr %9, align 8, !dbg !5599
  %22 = icmp ne ptr %21, null, !dbg !5599
  br i1 %22, label %23, label %44, !dbg !5600

23:                                               ; preds = %20
  %24 = load ptr, ptr %10, align 8, !dbg !5601
  %25 = icmp ne ptr %24, null, !dbg !5601
  br i1 %25, label %26, label %44, !dbg !5602

26:                                               ; preds = %23
  %27 = load ptr, ptr %9, align 8, !dbg !5603
  %28 = getelementptr inbounds %struct._oauth_key, ptr %27, i32 0, i32 5, !dbg !5605
  %29 = load i32, ptr %28, align 8, !dbg !5605
  switch i32 %29, label %37 [
    i32 0, label %30
    i32 1, label %30
  ], !dbg !5606

30:                                               ; preds = %26, %26
  %31 = load ptr, ptr %7, align 8, !dbg !5607
  %32 = load ptr, ptr %8, align 8, !dbg !5609
  %33 = load ptr, ptr %9, align 8, !dbg !5610
  %34 = load ptr, ptr %10, align 8, !dbg !5611
  %35 = load ptr, ptr %11, align 8, !dbg !5612
  %36 = call i32 @encode_oauth_token_gcm(ptr noundef %31, ptr noundef %32, ptr noundef %33, ptr noundef %34, ptr noundef %35), !dbg !5613
  store i32 %36, ptr %6, align 4, !dbg !5614
  br label %45, !dbg !5614

37:                                               ; preds = %26
  %38 = load ptr, ptr @stderr, align 8, !dbg !5615
  %39 = load ptr, ptr %9, align 8, !dbg !5616
  %40 = getelementptr inbounds %struct._oauth_key, ptr %39, i32 0, i32 5, !dbg !5617
  %41 = load i32, ptr %40, align 8, !dbg !5617
  %42 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %38, ptr noundef @.str.46, i32 noundef %41), !dbg !5618
  br label %43, !dbg !5619

43:                                               ; preds = %37
  br label %44, !dbg !5620

44:                                               ; preds = %43, %23, %20, %17, %14
  store i32 -1, ptr %6, align 4, !dbg !5621
  br label %45, !dbg !5621

45:                                               ; preds = %44, %30
  %46 = load i32, ptr %6, align 4, !dbg !5622
  ret i32 %46, !dbg !5622
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_oauth_token_gcm(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 !dbg !5623 {
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca [1024 x i8], align 16
  %13 = alloca [12 x i8], align 1
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = alloca i32, align 4
  store ptr %0, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !5624, metadata !DIExpression()), !dbg !5625
  store ptr %1, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !5626, metadata !DIExpression()), !dbg !5627
  store ptr %2, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !5628, metadata !DIExpression()), !dbg !5629
  store ptr %3, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !5630, metadata !DIExpression()), !dbg !5631
  store ptr %4, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !5632, metadata !DIExpression()), !dbg !5633
  %23 = load ptr, ptr %7, align 8, !dbg !5634
  %24 = icmp ne ptr %23, null, !dbg !5634
  br i1 %24, label %25, label %199, !dbg !5636

25:                                               ; preds = %5
  %26 = load ptr, ptr %8, align 8, !dbg !5637
  %27 = icmp ne ptr %26, null, !dbg !5637
  br i1 %27, label %28, label %199, !dbg !5638

28:                                               ; preds = %25
  %29 = load ptr, ptr %9, align 8, !dbg !5639
  %30 = icmp ne ptr %29, null, !dbg !5639
  br i1 %30, label %31, label %199, !dbg !5640

31:                                               ; preds = %28
  %32 = load ptr, ptr %10, align 8, !dbg !5641
  %33 = icmp ne ptr %32, null, !dbg !5641
  br i1 %33, label %34, label %199, !dbg !5642

34:                                               ; preds = %31
  %35 = load ptr, ptr %10, align 8, !dbg !5643
  %36 = getelementptr inbounds %struct._oauth_token, ptr %35, i32 0, i32 0, !dbg !5644
  %37 = getelementptr inbounds %struct._oauth_encrypted_block, ptr %36, i32 0, i32 2, !dbg !5645
  %38 = load i16, ptr %37, align 2, !dbg !5645
  %39 = zext i16 %38 to i32, !dbg !5643
  %40 = icmp sle i32 %39, 128, !dbg !5646
  br i1 %40, label %41, label %199, !dbg !5647

41:                                               ; preds = %34
  call void @llvm.dbg.declare(metadata ptr %12, metadata !5648, metadata !DIExpression()), !dbg !5651
  %42 = getelementptr inbounds [1024 x i8], ptr %12, i64 0, i64 0, !dbg !5652
  call void @llvm.memset.p0.i64(ptr align 16 %42, i8 0, i64 1024, i1 false), !dbg !5652
  call void @llvm.dbg.declare(metadata ptr %13, metadata !5653, metadata !DIExpression()), !dbg !5655
  %43 = load ptr, ptr %11, align 8, !dbg !5656
  %44 = icmp ne ptr %43, null, !dbg !5656
  br i1 %44, label %45, label %48, !dbg !5658

45:                                               ; preds = %41
  %46 = load ptr, ptr %11, align 8, !dbg !5659
  %47 = getelementptr inbounds [12 x i8], ptr %13, i64 0, i64 0, !dbg !5661
  call void @bcopy(ptr noundef %46, ptr noundef %47, i64 noundef 12) #9, !dbg !5662
  br label %50, !dbg !5663

48:                                               ; preds = %41
  %49 = getelementptr inbounds [12 x i8], ptr %13, i64 0, i64 0, !dbg !5664
  call void @generate_random_nonce(ptr noundef %49, i64 noundef 12), !dbg !5666
  br label %50

50:                                               ; preds = %48, %45
  call void @llvm.dbg.declare(metadata ptr %14, metadata !5667, metadata !DIExpression()), !dbg !5668
  store i64 0, ptr %14, align 8, !dbg !5668
  %51 = call zeroext i16 @ntohs(i16 noundef zeroext 12) #11, !dbg !5669
  %52 = getelementptr inbounds [1024 x i8], ptr %12, i64 0, i64 0, !dbg !5670
  %53 = load i64, ptr %14, align 8, !dbg !5671
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !5672
  store i16 %51, ptr %54, align 2, !dbg !5673
  %55 = load i64, ptr %14, align 8, !dbg !5674
  %56 = add i64 %55, 2, !dbg !5674
  store i64 %56, ptr %14, align 8, !dbg !5674
  %57 = getelementptr inbounds [12 x i8], ptr %13, i64 0, i64 0, !dbg !5675
  %58 = getelementptr inbounds [1024 x i8], ptr %12, i64 0, i64 0, !dbg !5676
  %59 = load i64, ptr %14, align 8, !dbg !5677
  %60 = getelementptr inbounds i8, ptr %58, i64 %59, !dbg !5678
  call void @bcopy(ptr noundef %57, ptr noundef %60, i64 noundef 12) #9, !dbg !5679
  %61 = load i64, ptr %14, align 8, !dbg !5680
  %62 = add i64 %61, 12, !dbg !5680
  store i64 %62, ptr %14, align 8, !dbg !5680
  %63 = load ptr, ptr %10, align 8, !dbg !5681
  %64 = getelementptr inbounds %struct._oauth_token, ptr %63, i32 0, i32 0, !dbg !5681
  %65 = getelementptr inbounds %struct._oauth_encrypted_block, ptr %64, i32 0, i32 2, !dbg !5681
  %66 = load i16, ptr %65, align 2, !dbg !5681
  %67 = call zeroext i16 @ntohs(i16 noundef zeroext %66) #11, !dbg !5681
  %68 = getelementptr inbounds [1024 x i8], ptr %12, i64 0, i64 0, !dbg !5682
  %69 = load i64, ptr %14, align 8, !dbg !5683
  %70 = getelementptr inbounds i8, ptr %68, i64 %69, !dbg !5684
  store i16 %67, ptr %70, align 2, !dbg !5685
  %71 = load i64, ptr %14, align 8, !dbg !5686
  %72 = add i64 %71, 2, !dbg !5686
  store i64 %72, ptr %14, align 8, !dbg !5686
  %73 = load ptr, ptr %10, align 8, !dbg !5687
  %74 = getelementptr inbounds %struct._oauth_token, ptr %73, i32 0, i32 0, !dbg !5688
  %75 = getelementptr inbounds %struct._oauth_encrypted_block, ptr %74, i32 0, i32 3, !dbg !5689
  %76 = getelementptr inbounds [128 x i8], ptr %75, i64 0, i64 0, !dbg !5687
  %77 = getelementptr inbounds [1024 x i8], ptr %12, i64 0, i64 0, !dbg !5690
  %78 = load i64, ptr %14, align 8, !dbg !5691
  %79 = getelementptr inbounds i8, ptr %77, i64 %78, !dbg !5692
  %80 = load ptr, ptr %10, align 8, !dbg !5693
  %81 = getelementptr inbounds %struct._oauth_token, ptr %80, i32 0, i32 0, !dbg !5694
  %82 = getelementptr inbounds %struct._oauth_encrypted_block, ptr %81, i32 0, i32 2, !dbg !5695
  %83 = load i16, ptr %82, align 2, !dbg !5695
  %84 = zext i16 %83 to i64, !dbg !5693
  call void @bcopy(ptr noundef %76, ptr noundef %79, i64 noundef %84) #9, !dbg !5696
  %85 = load ptr, ptr %10, align 8, !dbg !5697
  %86 = getelementptr inbounds %struct._oauth_token, ptr %85, i32 0, i32 0, !dbg !5698
  %87 = getelementptr inbounds %struct._oauth_encrypted_block, ptr %86, i32 0, i32 2, !dbg !5699
  %88 = load i16, ptr %87, align 2, !dbg !5699
  %89 = zext i16 %88 to i64, !dbg !5697
  %90 = load i64, ptr %14, align 8, !dbg !5700
  %91 = add i64 %90, %89, !dbg !5700
  store i64 %91, ptr %14, align 8, !dbg !5700
  call void @llvm.dbg.declare(metadata ptr %15, metadata !5701, metadata !DIExpression()), !dbg !5702
  %92 = load ptr, ptr %10, align 8, !dbg !5703
  %93 = getelementptr inbounds %struct._oauth_token, ptr %92, i32 0, i32 0, !dbg !5703
  %94 = getelementptr inbounds %struct._oauth_encrypted_block, ptr %93, i32 0, i32 4, !dbg !5703
  %95 = load i64, ptr %94, align 8, !dbg !5703
  %96 = call i64 @_ioa_ntoh64(i64 noundef %95), !dbg !5703
  store i64 %96, ptr %15, align 8, !dbg !5702
  %97 = getelementptr inbounds [1024 x i8], ptr %12, i64 0, i64 0, !dbg !5704
  %98 = load i64, ptr %14, align 8, !dbg !5705
  %99 = getelementptr inbounds i8, ptr %97, i64 %98, !dbg !5706
  call void @bcopy(ptr noundef %15, ptr noundef %99, i64 noundef 8) #9, !dbg !5707
  %100 = load i64, ptr %14, align 8, !dbg !5708
  %101 = add i64 %100, 8, !dbg !5708
  store i64 %101, ptr %14, align 8, !dbg !5708
  %102 = load ptr, ptr %10, align 8, !dbg !5709
  %103 = getelementptr inbounds %struct._oauth_token, ptr %102, i32 0, i32 0, !dbg !5709
  %104 = getelementptr inbounds %struct._oauth_encrypted_block, ptr %103, i32 0, i32 5, !dbg !5709
  %105 = load i32, ptr %104, align 8, !dbg !5709
  %106 = call i32 @ntohl(i32 noundef %105) #11, !dbg !5709
  %107 = getelementptr inbounds [1024 x i8], ptr %12, i64 0, i64 0, !dbg !5710
  %108 = load i64, ptr %14, align 8, !dbg !5711
  %109 = getelementptr inbounds i8, ptr %107, i64 %108, !dbg !5712
  store i32 %106, ptr %109, align 4, !dbg !5713
  %110 = load i64, ptr %14, align 8, !dbg !5714
  %111 = add i64 %110, 4, !dbg !5714
  store i64 %111, ptr %14, align 8, !dbg !5714
  call void @llvm.dbg.declare(metadata ptr %16, metadata !5715, metadata !DIExpression()), !dbg !5716
  %112 = load ptr, ptr %9, align 8, !dbg !5717
  %113 = getelementptr inbounds %struct._oauth_key, ptr %112, i32 0, i32 5, !dbg !5718
  %114 = load i32, ptr %113, align 8, !dbg !5718
  %115 = call ptr @get_cipher_type(i32 noundef %114), !dbg !5719
  store ptr %115, ptr %16, align 8, !dbg !5716
  %116 = load ptr, ptr %16, align 8, !dbg !5720
  %117 = icmp ne ptr %116, null, !dbg !5720
  br i1 %117, label %119, label %118, !dbg !5722

118:                                              ; preds = %50
  store i32 -1, ptr %6, align 4, !dbg !5723
  br label %200, !dbg !5723

119:                                              ; preds = %50
  call void @llvm.dbg.declare(metadata ptr %17, metadata !5724, metadata !DIExpression()), !dbg !5725
  %120 = call ptr @EVP_CIPHER_CTX_new(), !dbg !5726
  store ptr %120, ptr %17, align 8, !dbg !5725
  %121 = load ptr, ptr %17, align 8, !dbg !5727
  %122 = call i32 @EVP_CIPHER_CTX_reset(ptr noundef %121), !dbg !5727
  %123 = load ptr, ptr %17, align 8, !dbg !5728
  %124 = load ptr, ptr %16, align 8, !dbg !5730
  %125 = call i32 @EVP_EncryptInit_ex(ptr noundef %123, ptr noundef %124, ptr noundef null, ptr noundef null, ptr noundef null), !dbg !5731
  %126 = icmp ne i32 1, %125, !dbg !5732
  br i1 %126, label %127, label %128, !dbg !5733

127:                                              ; preds = %119
  store i32 -1, ptr %6, align 4, !dbg !5734
  br label %200, !dbg !5734

128:                                              ; preds = %119
  %129 = load ptr, ptr %17, align 8, !dbg !5735
  %130 = call i32 @EVP_CIPHER_CTX_set_padding(ptr noundef %129, i32 noundef 1), !dbg !5736
  %131 = load ptr, ptr %17, align 8, !dbg !5737
  %132 = call i32 @EVP_CIPHER_CTX_ctrl(ptr noundef %131, i32 noundef 9, i32 noundef 12, ptr noundef null), !dbg !5739
  %133 = icmp ne i32 1, %132, !dbg !5740
  br i1 %133, label %134, label %135, !dbg !5741

134:                                              ; preds = %128
  store i32 -1, ptr %6, align 4, !dbg !5742
  br label %200, !dbg !5742

135:                                              ; preds = %128
  %136 = load ptr, ptr %17, align 8, !dbg !5743
  %137 = load ptr, ptr %9, align 8, !dbg !5745
  %138 = getelementptr inbounds %struct._oauth_key, ptr %137, i32 0, i32 6, !dbg !5746
  %139 = getelementptr inbounds [257 x i8], ptr %138, i64 0, i64 0, !dbg !5745
  %140 = getelementptr inbounds [12 x i8], ptr %13, i64 0, i64 0, !dbg !5747
  %141 = call i32 @EVP_EncryptInit_ex(ptr noundef %136, ptr noundef null, ptr noundef null, ptr noundef %139, ptr noundef %140), !dbg !5748
  %142 = icmp ne i32 1, %141, !dbg !5749
  br i1 %142, label %143, label %144, !dbg !5750

143:                                              ; preds = %135
  store i32 -1, ptr %6, align 4, !dbg !5751
  br label %200, !dbg !5751

144:                                              ; preds = %135
  call void @llvm.dbg.declare(metadata ptr %18, metadata !5752, metadata !DIExpression()), !dbg !5753
  store i32 0, ptr %18, align 4, !dbg !5753
  call void @llvm.dbg.declare(metadata ptr %19, metadata !5754, metadata !DIExpression()), !dbg !5755
  %145 = load ptr, ptr %7, align 8, !dbg !5756
  %146 = call i64 @strlen(ptr noundef %145) #8, !dbg !5757
  store i64 %146, ptr %19, align 8, !dbg !5755
  %147 = load ptr, ptr %17, align 8, !dbg !5758
  %148 = load ptr, ptr %7, align 8, !dbg !5760
  %149 = load i64, ptr %19, align 8, !dbg !5761
  %150 = trunc i64 %149 to i32, !dbg !5762
  %151 = call i32 @my_EVP_EncryptUpdate(ptr noundef %147, ptr noundef null, ptr noundef %18, ptr noundef %148, i32 noundef %150), !dbg !5763
  %152 = icmp ne i32 1, %151, !dbg !5764
  br i1 %152, label %153, label %154, !dbg !5765

153:                                              ; preds = %144
  store i32 -1, ptr %6, align 4, !dbg !5766
  br label %200, !dbg !5766

154:                                              ; preds = %144
  store i32 0, ptr %18, align 4, !dbg !5767
  call void @llvm.dbg.declare(metadata ptr %20, metadata !5768, metadata !DIExpression()), !dbg !5769
  %155 = load ptr, ptr %8, align 8, !dbg !5770
  %156 = getelementptr inbounds %struct._encoded_oauth_token, ptr %155, i32 0, i32 0, !dbg !5771
  %157 = getelementptr inbounds [1024 x i8], ptr %156, i64 0, i64 0, !dbg !5770
  store ptr %157, ptr %20, align 8, !dbg !5769
  %158 = getelementptr inbounds [1024 x i8], ptr %12, i64 0, i64 0, !dbg !5772
  %159 = load ptr, ptr %20, align 8, !dbg !5773
  call void @bcopy(ptr noundef %158, ptr noundef %159, i64 noundef 14) #9, !dbg !5774
  %160 = load ptr, ptr %20, align 8, !dbg !5775
  %161 = getelementptr inbounds i8, ptr %160, i64 14, !dbg !5775
  store ptr %161, ptr %20, align 8, !dbg !5775
  call void @llvm.dbg.declare(metadata ptr %21, metadata !5776, metadata !DIExpression()), !dbg !5777
  %162 = getelementptr inbounds [1024 x i8], ptr %12, i64 0, i64 0, !dbg !5778
  %163 = getelementptr inbounds i8, ptr %162, i64 12, !dbg !5779
  %164 = getelementptr inbounds i8, ptr %163, i64 2, !dbg !5780
  store ptr %164, ptr %21, align 8, !dbg !5777
  %165 = load i64, ptr %14, align 8, !dbg !5781
  %166 = sub i64 %165, 14, !dbg !5781
  store i64 %166, ptr %14, align 8, !dbg !5781
  %167 = load ptr, ptr %17, align 8, !dbg !5782
  %168 = load ptr, ptr %20, align 8, !dbg !5784
  %169 = load ptr, ptr %21, align 8, !dbg !5785
  %170 = load i64, ptr %14, align 8, !dbg !5786
  %171 = trunc i64 %170 to i32, !dbg !5787
  %172 = call i32 @my_EVP_EncryptUpdate(ptr noundef %167, ptr noundef %168, ptr noundef %18, ptr noundef %169, i32 noundef %171), !dbg !5788
  %173 = icmp ne i32 1, %172, !dbg !5789
  br i1 %173, label %174, label %175, !dbg !5790

174:                                              ; preds = %154
  store i32 -1, ptr %6, align 4, !dbg !5791
  br label %200, !dbg !5791

175:                                              ; preds = %154
  call void @llvm.dbg.declare(metadata ptr %22, metadata !5792, metadata !DIExpression()), !dbg !5793
  store i32 0, ptr %22, align 4, !dbg !5793
  %176 = load ptr, ptr %17, align 8, !dbg !5794
  %177 = load ptr, ptr %20, align 8, !dbg !5795
  %178 = load i32, ptr %18, align 4, !dbg !5796
  %179 = sext i32 %178 to i64, !dbg !5797
  %180 = getelementptr inbounds i8, ptr %177, i64 %179, !dbg !5797
  %181 = call i32 @EVP_EncryptFinal_ex(ptr noundef %176, ptr noundef %180, ptr noundef %22), !dbg !5798
  %182 = load i32, ptr %22, align 4, !dbg !5799
  %183 = load i32, ptr %18, align 4, !dbg !5800
  %184 = add nsw i32 %183, %182, !dbg !5800
  store i32 %184, ptr %18, align 4, !dbg !5800
  %185 = load ptr, ptr %17, align 8, !dbg !5801
  %186 = load ptr, ptr %20, align 8, !dbg !5802
  %187 = load i32, ptr %18, align 4, !dbg !5803
  %188 = sext i32 %187 to i64, !dbg !5804
  %189 = getelementptr inbounds i8, ptr %186, i64 %188, !dbg !5804
  %190 = call i32 @EVP_CIPHER_CTX_ctrl(ptr noundef %185, i32 noundef 16, i32 noundef 16, ptr noundef %189), !dbg !5805
  %191 = load i32, ptr %18, align 4, !dbg !5806
  %192 = add nsw i32 %191, 16, !dbg !5806
  store i32 %192, ptr %18, align 4, !dbg !5806
  %193 = load i32, ptr %18, align 4, !dbg !5807
  %194 = add nsw i32 14, %193, !dbg !5808
  %195 = sext i32 %194 to i64, !dbg !5809
  %196 = load ptr, ptr %8, align 8, !dbg !5810
  %197 = getelementptr inbounds %struct._encoded_oauth_token, ptr %196, i32 0, i32 1, !dbg !5811
  store i64 %195, ptr %197, align 8, !dbg !5812
  %198 = load ptr, ptr %17, align 8, !dbg !5813
  call void @EVP_CIPHER_CTX_free(ptr noundef %198), !dbg !5814
  store i32 0, ptr %6, align 4, !dbg !5815
  br label %200, !dbg !5815

199:                                              ; preds = %34, %31, %28, %25, %5
  store i32 -1, ptr %6, align 4, !dbg !5816
  br label %200, !dbg !5816

200:                                              ; preds = %199, %175, %174, %153, %143, %134, %127, %118
  %201 = load i32, ptr %6, align 4, !dbg !5817
  ret i32 %201, !dbg !5817
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @decode_oauth_token(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !5818 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !5819, metadata !DIExpression()), !dbg !5820
  store ptr %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !5821, metadata !DIExpression()), !dbg !5822
  store ptr %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !5823, metadata !DIExpression()), !dbg !5824
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !5825, metadata !DIExpression()), !dbg !5826
  %10 = load ptr, ptr %6, align 8, !dbg !5827
  %11 = icmp ne ptr %10, null, !dbg !5827
  br i1 %11, label %12, label %38, !dbg !5829

12:                                               ; preds = %4
  %13 = load ptr, ptr %7, align 8, !dbg !5830
  %14 = icmp ne ptr %13, null, !dbg !5830
  br i1 %14, label %15, label %38, !dbg !5831

15:                                               ; preds = %12
  %16 = load ptr, ptr %8, align 8, !dbg !5832
  %17 = icmp ne ptr %16, null, !dbg !5832
  br i1 %17, label %18, label %38, !dbg !5833

18:                                               ; preds = %15
  %19 = load ptr, ptr %9, align 8, !dbg !5834
  %20 = icmp ne ptr %19, null, !dbg !5834
  br i1 %20, label %21, label %38, !dbg !5835

21:                                               ; preds = %18
  %22 = load ptr, ptr %8, align 8, !dbg !5836
  %23 = getelementptr inbounds %struct._oauth_key, ptr %22, i32 0, i32 5, !dbg !5838
  %24 = load i32, ptr %23, align 8, !dbg !5838
  switch i32 %24, label %31 [
    i32 0, label %25
    i32 1, label %25
  ], !dbg !5839

25:                                               ; preds = %21, %21
  %26 = load ptr, ptr %6, align 8, !dbg !5840
  %27 = load ptr, ptr %7, align 8, !dbg !5842
  %28 = load ptr, ptr %8, align 8, !dbg !5843
  %29 = load ptr, ptr %9, align 8, !dbg !5844
  %30 = call i32 @decode_oauth_token_gcm(ptr noundef %26, ptr noundef %27, ptr noundef %28, ptr noundef %29), !dbg !5845
  store i32 %30, ptr %5, align 4, !dbg !5846
  br label %39, !dbg !5846

31:                                               ; preds = %21
  %32 = load ptr, ptr @stderr, align 8, !dbg !5847
  %33 = load ptr, ptr %8, align 8, !dbg !5848
  %34 = getelementptr inbounds %struct._oauth_key, ptr %33, i32 0, i32 5, !dbg !5849
  %35 = load i32, ptr %34, align 8, !dbg !5849
  %36 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef @.str.46, i32 noundef %35), !dbg !5850
  br label %37, !dbg !5851

37:                                               ; preds = %31
  br label %38, !dbg !5852

38:                                               ; preds = %37, %18, %15, %12, %4
  store i32 -1, ptr %5, align 4, !dbg !5853
  br label %39, !dbg !5853

39:                                               ; preds = %38, %25
  %40 = load i32, ptr %5, align 4, !dbg !5854
  ret i32 %40, !dbg !5854
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_oauth_token_gcm(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !5855 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca [2 x i8], align 1
  %11 = alloca ptr, align 8
  %12 = alloca i16, align 2
  %13 = alloca i64, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  %16 = alloca ptr, align 8
  %17 = alloca [16 x i8], align 16
  %18 = alloca [1024 x i8], align 16
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !5856, metadata !DIExpression()), !dbg !5857
  store ptr %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !5858, metadata !DIExpression()), !dbg !5859
  store ptr %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !5860, metadata !DIExpression()), !dbg !5861
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !5862, metadata !DIExpression()), !dbg !5863
  %27 = load ptr, ptr %6, align 8, !dbg !5864
  %28 = icmp ne ptr %27, null, !dbg !5864
  br i1 %28, label %29, label %248, !dbg !5866

29:                                               ; preds = %4
  %30 = load ptr, ptr %7, align 8, !dbg !5867
  %31 = icmp ne ptr %30, null, !dbg !5867
  br i1 %31, label %32, label %248, !dbg !5868

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !5869
  %34 = icmp ne ptr %33, null, !dbg !5869
  br i1 %34, label %35, label %248, !dbg !5870

35:                                               ; preds = %32
  %36 = load ptr, ptr %9, align 8, !dbg !5871
  %37 = icmp ne ptr %36, null, !dbg !5871
  br i1 %37, label %38, label %248, !dbg !5872

38:                                               ; preds = %35
  call void @llvm.dbg.declare(metadata ptr %10, metadata !5873, metadata !DIExpression()), !dbg !5876
  %39 = load ptr, ptr %7, align 8, !dbg !5877
  %40 = getelementptr inbounds %struct._encoded_oauth_token, ptr %39, i32 0, i32 0, !dbg !5878
  %41 = getelementptr inbounds [1024 x i8], ptr %40, i64 0, i64 0, !dbg !5879
  %42 = getelementptr inbounds [2 x i8], ptr %10, i64 0, i64 0, !dbg !5880
  call void @bcopy(ptr noundef %41, ptr noundef %42, i64 noundef 2) #9, !dbg !5881
  call void @llvm.dbg.declare(metadata ptr %11, metadata !5882, metadata !DIExpression()), !dbg !5883
  %43 = getelementptr inbounds [2 x i8], ptr %10, i64 0, i64 0, !dbg !5884
  store ptr %43, ptr %11, align 8, !dbg !5883
  call void @llvm.dbg.declare(metadata ptr %12, metadata !5885, metadata !DIExpression()), !dbg !5886
  %44 = load ptr, ptr %11, align 8, !dbg !5887
  %45 = load i16, ptr %44, align 2, !dbg !5887
  %46 = call zeroext i16 @ntohs(i16 noundef zeroext %45) #11, !dbg !5887
  store i16 %46, ptr %12, align 2, !dbg !5886
  %47 = load i16, ptr %12, align 2, !dbg !5888
  %48 = load ptr, ptr %9, align 8, !dbg !5889
  %49 = getelementptr inbounds %struct._oauth_token, ptr %48, i32 0, i32 0, !dbg !5890
  %50 = getelementptr inbounds %struct._oauth_encrypted_block, ptr %49, i32 0, i32 0, !dbg !5891
  store i16 %47, ptr %50, align 8, !dbg !5892
  call void @llvm.dbg.declare(metadata ptr %13, metadata !5893, metadata !DIExpression()), !dbg !5894
  %51 = load i16, ptr %12, align 2, !dbg !5895
  %52 = zext i16 %51 to i32, !dbg !5895
  %53 = add nsw i32 14, %52, !dbg !5896
  %54 = add nsw i32 %53, 2, !dbg !5897
  %55 = add nsw i32 %54, 16, !dbg !5898
  %56 = add nsw i32 %55, 1, !dbg !5899
  %57 = sext i32 %56 to i64, !dbg !5900
  store i64 %57, ptr %13, align 8, !dbg !5894
  %58 = load ptr, ptr %7, align 8, !dbg !5901
  %59 = getelementptr inbounds %struct._encoded_oauth_token, ptr %58, i32 0, i32 1, !dbg !5903
  %60 = load i64, ptr %59, align 8, !dbg !5903
  %61 = load i64, ptr %13, align 8, !dbg !5904
  %62 = icmp ult i64 %60, %61, !dbg !5905
  br i1 %62, label %63, label %70, !dbg !5906

63:                                               ; preds = %38
  %64 = load ptr, ptr @stderr, align 8, !dbg !5907
  %65 = load ptr, ptr %7, align 8, !dbg !5907
  %66 = getelementptr inbounds %struct._encoded_oauth_token, ptr %65, i32 0, i32 1, !dbg !5907
  %67 = load i64, ptr %66, align 8, !dbg !5907
  %68 = trunc i64 %67 to i32, !dbg !5907
  %69 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %64, ptr noundef @.str.54, ptr noundef @__FUNCTION__.decode_oauth_token_gcm, i32 noundef %68), !dbg !5907
  store i32 -1, ptr %5, align 4, !dbg !5909
  br label %249, !dbg !5909

70:                                               ; preds = %38
  call void @llvm.dbg.declare(metadata ptr %14, metadata !5910, metadata !DIExpression()), !dbg !5911
  %71 = load ptr, ptr %7, align 8, !dbg !5912
  %72 = getelementptr inbounds %struct._encoded_oauth_token, ptr %71, i32 0, i32 0, !dbg !5913
  %73 = getelementptr inbounds [1024 x i8], ptr %72, i64 0, i64 0, !dbg !5912
  %74 = load i16, ptr %12, align 2, !dbg !5914
  %75 = zext i16 %74 to i32, !dbg !5914
  %76 = sext i32 %75 to i64, !dbg !5915
  %77 = getelementptr inbounds i8, ptr %73, i64 %76, !dbg !5915
  %78 = getelementptr inbounds i8, ptr %77, i64 2, !dbg !5916
  store ptr %78, ptr %14, align 8, !dbg !5911
  call void @llvm.dbg.declare(metadata ptr %15, metadata !5917, metadata !DIExpression()), !dbg !5918
  %79 = load ptr, ptr %7, align 8, !dbg !5919
  %80 = getelementptr inbounds %struct._encoded_oauth_token, ptr %79, i32 0, i32 1, !dbg !5920
  %81 = load i64, ptr %80, align 8, !dbg !5920
  %82 = trunc i64 %81 to i32, !dbg !5921
  %83 = load i16, ptr %12, align 2, !dbg !5922
  %84 = zext i16 %83 to i32, !dbg !5922
  %85 = sub i32 %82, %84, !dbg !5923
  %86 = sub i32 %85, 2, !dbg !5924
  %87 = sub i32 %86, 16, !dbg !5925
  store i32 %87, ptr %15, align 4, !dbg !5918
  call void @llvm.dbg.declare(metadata ptr %16, metadata !5926, metadata !DIExpression()), !dbg !5927
  %88 = load ptr, ptr %7, align 8, !dbg !5928
  %89 = getelementptr inbounds %struct._encoded_oauth_token, ptr %88, i32 0, i32 0, !dbg !5929
  %90 = getelementptr inbounds [1024 x i8], ptr %89, i64 0, i64 0, !dbg !5928
  %91 = getelementptr inbounds i8, ptr %90, i64 2, !dbg !5930
  store ptr %91, ptr %16, align 8, !dbg !5927
  %92 = load ptr, ptr %16, align 8, !dbg !5931
  %93 = load ptr, ptr %9, align 8, !dbg !5932
  %94 = getelementptr inbounds %struct._oauth_token, ptr %93, i32 0, i32 0, !dbg !5933
  %95 = getelementptr inbounds %struct._oauth_encrypted_block, ptr %94, i32 0, i32 1, !dbg !5934
  %96 = getelementptr inbounds [256 x i8], ptr %95, i64 0, i64 0, !dbg !5932
  %97 = load i16, ptr %12, align 2, !dbg !5935
  %98 = zext i16 %97 to i64, !dbg !5935
  call void @bcopy(ptr noundef %92, ptr noundef %96, i64 noundef %98) #9, !dbg !5936
  call void @llvm.dbg.declare(metadata ptr %17, metadata !5937, metadata !DIExpression()), !dbg !5939
  %99 = load ptr, ptr %7, align 8, !dbg !5940
  %100 = getelementptr inbounds %struct._encoded_oauth_token, ptr %99, i32 0, i32 0, !dbg !5941
  %101 = getelementptr inbounds [1024 x i8], ptr %100, i64 0, i64 0, !dbg !5940
  %102 = load i16, ptr %12, align 2, !dbg !5942
  %103 = zext i16 %102 to i32, !dbg !5942
  %104 = sext i32 %103 to i64, !dbg !5943
  %105 = getelementptr inbounds i8, ptr %101, i64 %104, !dbg !5943
  %106 = getelementptr inbounds i8, ptr %105, i64 2, !dbg !5944
  %107 = load i32, ptr %15, align 4, !dbg !5945
  %108 = zext i32 %107 to i64, !dbg !5946
  %109 = getelementptr inbounds i8, ptr %106, i64 %108, !dbg !5946
  %110 = getelementptr inbounds [16 x i8], ptr %17, i64 0, i64 0, !dbg !5947
  call void @bcopy(ptr noundef %109, ptr noundef %110, i64 noundef 16) #9, !dbg !5948
  call void @llvm.dbg.declare(metadata ptr %18, metadata !5949, metadata !DIExpression()), !dbg !5950
  call void @llvm.dbg.declare(metadata ptr %19, metadata !5951, metadata !DIExpression()), !dbg !5952
  %111 = load ptr, ptr %8, align 8, !dbg !5953
  %112 = getelementptr inbounds %struct._oauth_key, ptr %111, i32 0, i32 5, !dbg !5954
  %113 = load i32, ptr %112, align 8, !dbg !5954
  %114 = call ptr @get_cipher_type(i32 noundef %113), !dbg !5955
  store ptr %114, ptr %19, align 8, !dbg !5952
  %115 = load ptr, ptr %19, align 8, !dbg !5956
  %116 = icmp ne ptr %115, null, !dbg !5956
  br i1 %116, label %123, label %117, !dbg !5958

117:                                              ; preds = %70
  %118 = load ptr, ptr @stderr, align 8, !dbg !5959
  %119 = load ptr, ptr %8, align 8, !dbg !5959
  %120 = getelementptr inbounds %struct._oauth_key, ptr %119, i32 0, i32 5, !dbg !5959
  %121 = load i32, ptr %120, align 8, !dbg !5959
  %122 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %118, ptr noundef @.str.55, ptr noundef @__FUNCTION__.decode_oauth_token_gcm, i32 noundef %121), !dbg !5959
  store i32 -1, ptr %5, align 4, !dbg !5961
  br label %249, !dbg !5961

123:                                              ; preds = %70
  call void @llvm.dbg.declare(metadata ptr %20, metadata !5962, metadata !DIExpression()), !dbg !5963
  %124 = call ptr @EVP_CIPHER_CTX_new(), !dbg !5964
  store ptr %124, ptr %20, align 8, !dbg !5963
  %125 = load ptr, ptr %20, align 8, !dbg !5965
  %126 = call i32 @EVP_CIPHER_CTX_reset(ptr noundef %125), !dbg !5965
  %127 = load ptr, ptr %20, align 8, !dbg !5966
  %128 = load ptr, ptr %19, align 8, !dbg !5968
  %129 = call i32 @EVP_DecryptInit_ex(ptr noundef %127, ptr noundef %128, ptr noundef null, ptr noundef null, ptr noundef null), !dbg !5969
  %130 = icmp ne i32 1, %129, !dbg !5970
  br i1 %130, label %131, label %134, !dbg !5971

131:                                              ; preds = %123
  %132 = load ptr, ptr @stderr, align 8, !dbg !5972
  %133 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %132, ptr noundef @.str.56, ptr noundef @__FUNCTION__.decode_oauth_token_gcm), !dbg !5972
  store i32 -1, ptr %5, align 4, !dbg !5974
  br label %249, !dbg !5974

134:                                              ; preds = %123
  %135 = load ptr, ptr %20, align 8, !dbg !5975
  %136 = load i16, ptr %12, align 2, !dbg !5977
  %137 = zext i16 %136 to i32, !dbg !5977
  %138 = call i32 @EVP_CIPHER_CTX_ctrl(ptr noundef %135, i32 noundef 9, i32 noundef %137, ptr noundef null), !dbg !5978
  %139 = icmp ne i32 1, %138, !dbg !5979
  br i1 %139, label %140, label %143, !dbg !5980

140:                                              ; preds = %134
  %141 = load ptr, ptr @stderr, align 8, !dbg !5981
  %142 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %141, ptr noundef @.str.57, ptr noundef @__FUNCTION__.decode_oauth_token_gcm), !dbg !5981
  store i32 -1, ptr %5, align 4, !dbg !5983
  br label %249, !dbg !5983

143:                                              ; preds = %134
  %144 = load ptr, ptr %20, align 8, !dbg !5984
  %145 = load ptr, ptr %8, align 8, !dbg !5986
  %146 = getelementptr inbounds %struct._oauth_key, ptr %145, i32 0, i32 6, !dbg !5987
  %147 = getelementptr inbounds [257 x i8], ptr %146, i64 0, i64 0, !dbg !5986
  %148 = load ptr, ptr %16, align 8, !dbg !5988
  %149 = call i32 @EVP_DecryptInit_ex(ptr noundef %144, ptr noundef null, ptr noundef null, ptr noundef %147, ptr noundef %148), !dbg !5989
  %150 = icmp ne i32 1, %149, !dbg !5990
  br i1 %150, label %151, label %154, !dbg !5991

151:                                              ; preds = %143
  %152 = load ptr, ptr @stderr, align 8, !dbg !5992
  %153 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %152, ptr noundef @.str.58, ptr noundef @__FUNCTION__.decode_oauth_token_gcm), !dbg !5992
  store i32 -1, ptr %5, align 4, !dbg !5994
  br label %249, !dbg !5994

154:                                              ; preds = %143
  %155 = load ptr, ptr %20, align 8, !dbg !5995
  %156 = getelementptr inbounds [16 x i8], ptr %17, i64 0, i64 0, !dbg !5996
  %157 = call i32 @EVP_CIPHER_CTX_ctrl(ptr noundef %155, i32 noundef 17, i32 noundef 16, ptr noundef %156), !dbg !5997
  call void @llvm.dbg.declare(metadata ptr %21, metadata !5998, metadata !DIExpression()), !dbg !5999
  store i32 0, ptr %21, align 4, !dbg !5999
  call void @llvm.dbg.declare(metadata ptr %22, metadata !6000, metadata !DIExpression()), !dbg !6001
  %158 = load ptr, ptr %6, align 8, !dbg !6002
  %159 = call i64 @strlen(ptr noundef %158) #8, !dbg !6003
  store i64 %159, ptr %22, align 8, !dbg !6001
  %160 = load ptr, ptr %20, align 8, !dbg !6004
  %161 = load ptr, ptr %6, align 8, !dbg !6006
  %162 = load i64, ptr %22, align 8, !dbg !6007
  %163 = trunc i64 %162 to i32, !dbg !6008
  %164 = call i32 @my_EVP_DecryptUpdate(ptr noundef %160, ptr noundef null, ptr noundef %21, ptr noundef %161, i32 noundef %163), !dbg !6009
  %165 = icmp ne i32 1, %164, !dbg !6010
  br i1 %165, label %166, label %172, !dbg !6011

166:                                              ; preds = %154
  %167 = load ptr, ptr @stderr, align 8, !dbg !6012
  %168 = load ptr, ptr %6, align 8, !dbg !6012
  %169 = load i64, ptr %22, align 8, !dbg !6012
  %170 = trunc i64 %169 to i32, !dbg !6012
  %171 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %167, ptr noundef @.str.59, ptr noundef @__FUNCTION__.decode_oauth_token_gcm, ptr noundef %168, i32 noundef %170), !dbg !6012
  store i32 -1, ptr %5, align 4, !dbg !6014
  br label %249, !dbg !6014

172:                                              ; preds = %154
  %173 = load ptr, ptr %20, align 8, !dbg !6015
  %174 = getelementptr inbounds [1024 x i8], ptr %18, i64 0, i64 0, !dbg !6017
  %175 = load ptr, ptr %14, align 8, !dbg !6018
  %176 = load i32, ptr %15, align 4, !dbg !6019
  %177 = call i32 @my_EVP_DecryptUpdate(ptr noundef %173, ptr noundef %174, ptr noundef %21, ptr noundef %175, i32 noundef %176), !dbg !6020
  %178 = icmp ne i32 1, %177, !dbg !6021
  br i1 %178, label %179, label %182, !dbg !6022

179:                                              ; preds = %172
  %180 = load ptr, ptr @stderr, align 8, !dbg !6023
  %181 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %180, ptr noundef @.str.60, ptr noundef @__FUNCTION__.decode_oauth_token_gcm), !dbg !6023
  store i32 -1, ptr %5, align 4, !dbg !6025
  br label %249, !dbg !6025

182:                                              ; preds = %172
  call void @llvm.dbg.declare(metadata ptr %23, metadata !6026, metadata !DIExpression()), !dbg !6027
  store i32 0, ptr %23, align 4, !dbg !6027
  %183 = load ptr, ptr %20, align 8, !dbg !6028
  %184 = getelementptr inbounds [1024 x i8], ptr %18, i64 0, i64 0, !dbg !6030
  %185 = load i32, ptr %21, align 4, !dbg !6031
  %186 = sext i32 %185 to i64, !dbg !6032
  %187 = getelementptr inbounds i8, ptr %184, i64 %186, !dbg !6032
  %188 = call i32 @EVP_DecryptFinal_ex(ptr noundef %183, ptr noundef %187, ptr noundef %23), !dbg !6033
  %189 = icmp slt i32 %188, 1, !dbg !6034
  br i1 %189, label %190, label %194, !dbg !6035

190:                                              ; preds = %182
  %191 = load ptr, ptr %20, align 8, !dbg !6036
  call void @EVP_CIPHER_CTX_free(ptr noundef %191), !dbg !6038
  %192 = load ptr, ptr @stderr, align 8, !dbg !6039
  %193 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %192, ptr noundef @.str.61, ptr noundef @__FUNCTION__.decode_oauth_token_gcm), !dbg !6039
  store i32 -1, ptr %5, align 4, !dbg !6040
  br label %249, !dbg !6040

194:                                              ; preds = %182
  %195 = load i32, ptr %23, align 4, !dbg !6041
  %196 = load i32, ptr %21, align 4, !dbg !6042
  %197 = add nsw i32 %196, %195, !dbg !6042
  store i32 %197, ptr %21, align 4, !dbg !6042
  %198 = load ptr, ptr %20, align 8, !dbg !6043
  call void @EVP_CIPHER_CTX_free(ptr noundef %198), !dbg !6044
  call void @llvm.dbg.declare(metadata ptr %24, metadata !6045, metadata !DIExpression()), !dbg !6046
  store i64 0, ptr %24, align 8, !dbg !6046
  %199 = getelementptr inbounds [1024 x i8], ptr %18, i64 0, i64 0, !dbg !6047
  %200 = load i64, ptr %24, align 8, !dbg !6047
  %201 = getelementptr inbounds i8, ptr %199, i64 %200, !dbg !6047
  %202 = load i16, ptr %201, align 2, !dbg !6047
  %203 = call zeroext i16 @ntohs(i16 noundef zeroext %202) #11, !dbg !6047
  %204 = load ptr, ptr %9, align 8, !dbg !6048
  %205 = getelementptr inbounds %struct._oauth_token, ptr %204, i32 0, i32 0, !dbg !6049
  %206 = getelementptr inbounds %struct._oauth_encrypted_block, ptr %205, i32 0, i32 2, !dbg !6050
  store i16 %203, ptr %206, align 2, !dbg !6051
  %207 = load i64, ptr %24, align 8, !dbg !6052
  %208 = add i64 %207, 2, !dbg !6052
  store i64 %208, ptr %24, align 8, !dbg !6052
  %209 = getelementptr inbounds [1024 x i8], ptr %18, i64 0, i64 0, !dbg !6053
  %210 = load i64, ptr %24, align 8, !dbg !6054
  %211 = getelementptr inbounds i8, ptr %209, i64 %210, !dbg !6055
  %212 = load ptr, ptr %9, align 8, !dbg !6056
  %213 = getelementptr inbounds %struct._oauth_token, ptr %212, i32 0, i32 0, !dbg !6057
  %214 = getelementptr inbounds %struct._oauth_encrypted_block, ptr %213, i32 0, i32 3, !dbg !6058
  %215 = getelementptr inbounds [128 x i8], ptr %214, i64 0, i64 0, !dbg !6056
  %216 = load ptr, ptr %9, align 8, !dbg !6059
  %217 = getelementptr inbounds %struct._oauth_token, ptr %216, i32 0, i32 0, !dbg !6060
  %218 = getelementptr inbounds %struct._oauth_encrypted_block, ptr %217, i32 0, i32 2, !dbg !6061
  %219 = load i16, ptr %218, align 2, !dbg !6061
  %220 = zext i16 %219 to i64, !dbg !6059
  call void @bcopy(ptr noundef %211, ptr noundef %215, i64 noundef %220) #9, !dbg !6062
  %221 = load ptr, ptr %9, align 8, !dbg !6063
  %222 = getelementptr inbounds %struct._oauth_token, ptr %221, i32 0, i32 0, !dbg !6064
  %223 = getelementptr inbounds %struct._oauth_encrypted_block, ptr %222, i32 0, i32 2, !dbg !6065
  %224 = load i16, ptr %223, align 2, !dbg !6065
  %225 = zext i16 %224 to i64, !dbg !6063
  %226 = load i64, ptr %24, align 8, !dbg !6066
  %227 = add i64 %226, %225, !dbg !6066
  store i64 %227, ptr %24, align 8, !dbg !6066
  call void @llvm.dbg.declare(metadata ptr %25, metadata !6067, metadata !DIExpression()), !dbg !6068
  %228 = getelementptr inbounds [1024 x i8], ptr %18, i64 0, i64 0, !dbg !6069
  %229 = load i64, ptr %24, align 8, !dbg !6070
  %230 = getelementptr inbounds i8, ptr %228, i64 %229, !dbg !6071
  call void @bcopy(ptr noundef %230, ptr noundef %25, i64 noundef 8) #9, !dbg !6072
  %231 = load i64, ptr %25, align 8, !dbg !6073
  %232 = call i64 @_ioa_ntoh64(i64 noundef %231), !dbg !6073
  %233 = load ptr, ptr %9, align 8, !dbg !6074
  %234 = getelementptr inbounds %struct._oauth_token, ptr %233, i32 0, i32 0, !dbg !6075
  %235 = getelementptr inbounds %struct._oauth_encrypted_block, ptr %234, i32 0, i32 4, !dbg !6076
  store i64 %232, ptr %235, align 8, !dbg !6077
  %236 = load i64, ptr %24, align 8, !dbg !6078
  %237 = add i64 %236, 8, !dbg !6078
  store i64 %237, ptr %24, align 8, !dbg !6078
  call void @llvm.dbg.declare(metadata ptr %26, metadata !6079, metadata !DIExpression()), !dbg !6080
  %238 = getelementptr inbounds [1024 x i8], ptr %18, i64 0, i64 0, !dbg !6081
  %239 = load i64, ptr %24, align 8, !dbg !6082
  %240 = getelementptr inbounds i8, ptr %238, i64 %239, !dbg !6083
  call void @bcopy(ptr noundef %240, ptr noundef %26, i64 noundef 4) #9, !dbg !6084
  %241 = load i32, ptr %26, align 4, !dbg !6085
  %242 = call i32 @ntohl(i32 noundef %241) #11, !dbg !6085
  %243 = load ptr, ptr %9, align 8, !dbg !6086
  %244 = getelementptr inbounds %struct._oauth_token, ptr %243, i32 0, i32 0, !dbg !6087
  %245 = getelementptr inbounds %struct._oauth_encrypted_block, ptr %244, i32 0, i32 5, !dbg !6088
  store i32 %242, ptr %245, align 8, !dbg !6089
  %246 = load i64, ptr %24, align 8, !dbg !6090
  %247 = add i64 %246, 4, !dbg !6090
  store i64 %247, ptr %24, align 8, !dbg !6090
  store i32 0, ptr %5, align 4, !dbg !6091
  br label %249, !dbg !6091

248:                                              ; preds = %35, %32, %29, %4
  store i32 -1, ptr %5, align 4, !dbg !6092
  br label %249, !dbg !6092

249:                                              ; preds = %248, %194, %190, %179, %166, %151, %140, %131, %117, %63
  %250 = load i32, ptr %5, align 4, !dbg !6093
  ret i32 %250, !dbg !6093
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generate_random_nonce(ptr noundef %0, i64 noundef %1) #0 !dbg !6094 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !6097, metadata !DIExpression()), !dbg !6098
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !6099, metadata !DIExpression()), !dbg !6100
  %6 = load ptr, ptr %3, align 8, !dbg !6101
  %7 = load i64, ptr %4, align 8, !dbg !6103
  %8 = trunc i64 %7 to i32, !dbg !6104
  %9 = call i32 @RAND_bytes(ptr noundef %6, i32 noundef %8), !dbg !6105
  %10 = icmp ne i32 %9, 0, !dbg !6105
  br i1 %10, label %26, label %11, !dbg !6106

11:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %5, metadata !6107, metadata !DIExpression()), !dbg !6109
  store i64 0, ptr %5, align 8, !dbg !6110
  br label %12, !dbg !6112

12:                                               ; preds = %22, %11
  %13 = load i64, ptr %5, align 8, !dbg !6113
  %14 = load i64, ptr %4, align 8, !dbg !6115
  %15 = icmp ult i64 %13, %14, !dbg !6116
  br i1 %15, label %16, label %25, !dbg !6117

16:                                               ; preds = %12
  %17 = call i64 @random() #9, !dbg !6118
  %18 = trunc i64 %17 to i8, !dbg !6120
  %19 = load ptr, ptr %3, align 8, !dbg !6121
  %20 = load i64, ptr %5, align 8, !dbg !6122
  %21 = getelementptr inbounds i8, ptr %19, i64 %20, !dbg !6121
  store i8 %18, ptr %21, align 1, !dbg !6123
  br label %22, !dbg !6124

22:                                               ; preds = %16
  %23 = load i64, ptr %5, align 8, !dbg !6125
  %24 = add i64 %23, 1, !dbg !6125
  store i64 %24, ptr %5, align 8, !dbg !6125
  br label %12, !dbg !6126, !llvm.loop !6127

25:                                               ; preds = %12
  br label %26, !dbg !6129

26:                                               ; preds = %25, %2
  ret void, !dbg !6130
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @readable_string(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 !dbg !6131 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !6134, metadata !DIExpression()), !dbg !6135
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !6136, metadata !DIExpression()), !dbg !6137
  store i64 %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !6138, metadata !DIExpression()), !dbg !6139
  call void @llvm.dbg.declare(metadata ptr %7, metadata !6140, metadata !DIExpression()), !dbg !6141
  store i64 0, ptr %7, align 8, !dbg !6141
  %8 = load ptr, ptr %5, align 8, !dbg !6142
  %9 = getelementptr inbounds i8, ptr %8, i64 0, !dbg !6142
  store i8 0, ptr %9, align 1, !dbg !6143
  store i64 0, ptr %7, align 8, !dbg !6144
  br label %10, !dbg !6146

10:                                               ; preds = %25, %3
  %11 = load i64, ptr %7, align 8, !dbg !6147
  %12 = load i64, ptr %6, align 8, !dbg !6149
  %13 = icmp ult i64 %11, %12, !dbg !6150
  br i1 %13, label %14, label %28, !dbg !6151

14:                                               ; preds = %10
  %15 = load ptr, ptr %5, align 8, !dbg !6152
  %16 = load i64, ptr %7, align 8, !dbg !6154
  %17 = mul i64 %16, 2, !dbg !6155
  %18 = getelementptr inbounds i8, ptr %15, i64 %17, !dbg !6156
  %19 = load ptr, ptr %4, align 8, !dbg !6157
  %20 = load i64, ptr %7, align 8, !dbg !6158
  %21 = getelementptr inbounds i8, ptr %19, i64 %20, !dbg !6157
  %22 = load i8, ptr %21, align 1, !dbg !6157
  %23 = zext i8 %22 to i32, !dbg !6159
  %24 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %18, i64 noundef 4, ptr noundef @.str.32, i32 noundef %23) #9, !dbg !6160
  br label %25, !dbg !6161

25:                                               ; preds = %14
  %26 = load i64, ptr %7, align 8, !dbg !6162
  %27 = add i64 %26, 1, !dbg !6162
  store i64 %27, ptr %7, align 8, !dbg !6162
  br label %10, !dbg !6163, !llvm.loop !6164

28:                                               ; preds = %10
  ret void, !dbg !6166
}

; Function Attrs: nounwind
declare i64 @strtoul(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strstr(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @findstr(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3) #0 !dbg !6167 {
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !6170, metadata !DIExpression()), !dbg !6171
  store i64 %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !6172, metadata !DIExpression()), !dbg !6173
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !6174, metadata !DIExpression()), !dbg !6175
  store i32 %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !6176, metadata !DIExpression()), !dbg !6177
  call void @llvm.dbg.declare(metadata ptr %9, metadata !6178, metadata !DIExpression()), !dbg !6179
  store ptr null, ptr %9, align 8, !dbg !6179
  %14 = load ptr, ptr %5, align 8, !dbg !6180
  %15 = icmp ne ptr %14, null, !dbg !6180
  br i1 %15, label %16, label %56, !dbg !6182

16:                                               ; preds = %4
  %17 = load i64, ptr %6, align 8, !dbg !6183
  %18 = icmp ne i64 %17, 0, !dbg !6183
  br i1 %18, label %19, label %56, !dbg !6184

19:                                               ; preds = %16
  %20 = load ptr, ptr %7, align 8, !dbg !6185
  %21 = icmp ne ptr %20, null, !dbg !6185
  br i1 %21, label %22, label %56, !dbg !6186

22:                                               ; preds = %19
  call void @llvm.dbg.declare(metadata ptr %10, metadata !6187, metadata !DIExpression()), !dbg !6189
  %23 = load ptr, ptr %7, align 8, !dbg !6190
  %24 = call i64 @strlen(ptr noundef %23) #8, !dbg !6191
  store i64 %24, ptr %10, align 8, !dbg !6189
  %25 = load i64, ptr %10, align 8, !dbg !6192
  %26 = load i64, ptr %6, align 8, !dbg !6194
  %27 = icmp ule i64 %25, %26, !dbg !6195
  br i1 %27, label %28, label %55, !dbg !6196

28:                                               ; preds = %22
  call void @llvm.dbg.declare(metadata ptr %11, metadata !6197, metadata !DIExpression()), !dbg !6199
  %29 = load i64, ptr %6, align 8, !dbg !6200
  %30 = load i64, ptr %10, align 8, !dbg !6201
  %31 = sub i64 %29, %30, !dbg !6202
  %32 = add i64 %31, 1, !dbg !6203
  store i64 %32, ptr %11, align 8, !dbg !6199
  call void @llvm.dbg.declare(metadata ptr %12, metadata !6204, metadata !DIExpression()), !dbg !6205
  call void @llvm.dbg.declare(metadata ptr %13, metadata !6206, metadata !DIExpression()), !dbg !6207
  %33 = load ptr, ptr %5, align 8, !dbg !6208
  store ptr %33, ptr %13, align 8, !dbg !6207
  store i64 0, ptr %12, align 8, !dbg !6209
  br label %34, !dbg !6211

34:                                               ; preds = %51, %28
  %35 = load i64, ptr %12, align 8, !dbg !6212
  %36 = load i64, ptr %11, align 8, !dbg !6214
  %37 = icmp ult i64 %35, %36, !dbg !6215
  br i1 %37, label %38, label %54, !dbg !6216

38:                                               ; preds = %34
  %39 = load ptr, ptr %7, align 8, !dbg !6217
  %40 = load ptr, ptr %13, align 8, !dbg !6220
  %41 = load i64, ptr %12, align 8, !dbg !6221
  %42 = getelementptr inbounds i8, ptr %40, i64 %41, !dbg !6222
  %43 = load i32, ptr %8, align 4, !dbg !6223
  %44 = call i32 @sheadof(ptr noundef %39, ptr noundef %42, i32 noundef %43), !dbg !6224
  %45 = icmp ne i32 %44, 0, !dbg !6224
  br i1 %45, label %46, label %50, !dbg !6225

46:                                               ; preds = %38
  %47 = load ptr, ptr %13, align 8, !dbg !6226
  %48 = load i64, ptr %12, align 8, !dbg !6228
  %49 = getelementptr inbounds i8, ptr %47, i64 %48, !dbg !6229
  store ptr %49, ptr %9, align 8, !dbg !6230
  br label %54, !dbg !6231

50:                                               ; preds = %38
  br label %51, !dbg !6232

51:                                               ; preds = %50
  %52 = load i64, ptr %12, align 8, !dbg !6233
  %53 = add i64 %52, 1, !dbg !6233
  store i64 %53, ptr %12, align 8, !dbg !6233
  br label %34, !dbg !6234, !llvm.loop !6235

54:                                               ; preds = %46, %34
  br label %55, !dbg !6237

55:                                               ; preds = %54, %22
  br label %56, !dbg !6238

56:                                               ; preds = %55, %19, %16, %4
  %57 = load ptr, ptr %9, align 8, !dbg !6239
  ret ptr %57, !dbg !6240
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sheadof(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !6241 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !6244, metadata !DIExpression()), !dbg !6245
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !6246, metadata !DIExpression()), !dbg !6247
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !6248, metadata !DIExpression()), !dbg !6249
  br label %8, !dbg !6250

8:                                                ; preds = %36, %3
  %9 = load ptr, ptr %5, align 8, !dbg !6251
  %10 = load i8, ptr %9, align 1, !dbg !6252
  %11 = icmp ne i8 %10, 0, !dbg !6250
  br i1 %11, label %12, label %41, !dbg !6250

12:                                               ; preds = %8
  %13 = load ptr, ptr %5, align 8, !dbg !6253
  %14 = load i8, ptr %13, align 1, !dbg !6256
  %15 = sext i8 %14 to i32, !dbg !6256
  %16 = load ptr, ptr %6, align 8, !dbg !6257
  %17 = load i8, ptr %16, align 1, !dbg !6258
  %18 = sext i8 %17 to i32, !dbg !6258
  %19 = icmp ne i32 %15, %18, !dbg !6259
  br i1 %19, label %20, label %36, !dbg !6260

20:                                               ; preds = %12
  %21 = load i32, ptr %7, align 4, !dbg !6261
  %22 = icmp ne i32 %21, 0, !dbg !6261
  br i1 %22, label %23, label %34, !dbg !6264

23:                                               ; preds = %20
  %24 = load ptr, ptr %5, align 8, !dbg !6265
  %25 = load i8, ptr %24, align 1, !dbg !6266
  %26 = sext i8 %25 to i32, !dbg !6267
  %27 = call i32 @tolower(i32 noundef %26) #8, !dbg !6268
  %28 = load ptr, ptr %6, align 8, !dbg !6269
  %29 = load i8, ptr %28, align 1, !dbg !6270
  %30 = sext i8 %29 to i32, !dbg !6271
  %31 = call i32 @tolower(i32 noundef %30) #8, !dbg !6272
  %32 = icmp eq i32 %27, %31, !dbg !6273
  br i1 %32, label %33, label %34, !dbg !6274

33:                                               ; preds = %23
  br label %35, !dbg !6275

34:                                               ; preds = %23, %20
  store i32 0, ptr %4, align 4, !dbg !6277
  br label %42, !dbg !6277

35:                                               ; preds = %33
  br label %36, !dbg !6279

36:                                               ; preds = %35, %12
  %37 = load ptr, ptr %5, align 8, !dbg !6280
  %38 = getelementptr inbounds i8, ptr %37, i32 1, !dbg !6280
  store ptr %38, ptr %5, align 8, !dbg !6280
  %39 = load ptr, ptr %6, align 8, !dbg !6281
  %40 = getelementptr inbounds i8, ptr %39, i32 1, !dbg !6281
  store ptr %40, ptr %6, align 8, !dbg !6281
  br label %8, !dbg !6250, !llvm.loop !6282

41:                                               ; preds = %8
  store i32 1, ptr %4, align 4, !dbg !6284
  br label %42, !dbg !6284

42:                                               ; preds = %41, %34
  %43 = load i32, ptr %4, align 4, !dbg !6285
  ret i32 %43, !dbg !6285
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @tolower(i32 noundef) #3

declare i32 @RAND_pseudo_bytes(ptr noundef, i32 noundef) #4

declare ptr @EVP_CIPHER_CTX_new() #4

declare i32 @EVP_CIPHER_CTX_reset(ptr noundef) #4

declare i32 @EVP_EncryptInit_ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

declare i32 @EVP_CIPHER_CTX_set_padding(ptr noundef, i32 noundef) #4

declare i32 @EVP_CIPHER_CTX_ctrl(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #4

declare i32 @EVP_EncryptFinal_ex(ptr noundef, ptr noundef, ptr noundef) #4

declare void @EVP_CIPHER_CTX_free(ptr noundef) #4

declare i32 @EVP_DecryptInit_ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

declare i32 @EVP_DecryptFinal_ex(ptr noundef, ptr noundef, ptr noundef) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind willreturn memory(none) }

!llvm.dbg.cu = !{!194}
!llvm.module.flags = !{!294, !295, !296, !297, !298, !299, !300}
!llvm.ident = !{!301}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 52, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/client/ns_turn_msg.c", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "aa7c805c7897418d005a8bdede1650d5")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 8)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 56, type: !3, isLocal: true, isDefinition: true)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(scope: null, file: !2, line: 59, type: !11, isLocal: true, isDefinition: true)
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !12)
!12 = !{!13}
!13 = !DISubrange(count: 9)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(scope: null, file: !2, line: 62, type: !3, isLocal: true, isDefinition: true)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(scope: null, file: !2, line: 65, type: !18, isLocal: true, isDefinition: true)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !19)
!19 = !{!20}
!20 = !DISubrange(count: 5)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(scope: null, file: !2, line: 68, type: !18, isLocal: true, isDefinition: true)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !2, line: 71, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 18)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !2, line: 74, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 13)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !2, line: 77, type: !3, isLocal: true, isDefinition: true)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(scope: null, file: !2, line: 80, type: !37, isLocal: true, isDefinition: true)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !38)
!38 = !{!39}
!39 = !DISubrange(count: 16)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(scope: null, file: !2, line: 83, type: !42, isLocal: true, isDefinition: true)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !43)
!43 = !{!44}
!44 = !DISubrange(count: 19)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(scope: null, file: !2, line: 673, type: !47, isLocal: true, isDefinition: true)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !48)
!48 = !{!49}
!49 = !DISubrange(count: 14)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(scope: null, file: !2, line: 677, type: !47, isLocal: true, isDefinition: true)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !2, line: 680, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 12)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !2, line: 683, type: !30, isLocal: true, isDefinition: true)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(scope: null, file: !2, line: 686, type: !61, isLocal: true, isDefinition: true)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 10)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(scope: null, file: !2, line: 689, type: !61, isLocal: true, isDefinition: true)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(scope: null, file: !2, line: 692, type: !25, isLocal: true, isDefinition: true)
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(scope: null, file: !2, line: 695, type: !70, isLocal: true, isDefinition: true)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 20)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(scope: null, file: !2, line: 698, type: !54, isLocal: true, isDefinition: true)
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(scope: null, file: !2, line: 701, type: !77, isLocal: true, isDefinition: true)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 29)
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(scope: null, file: !2, line: 704, type: !25, isLocal: true, isDefinition: true)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(scope: null, file: !2, line: 707, type: !84, isLocal: true, isDefinition: true)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !85)
!85 = !{!86}
!86 = !DISubrange(count: 31)
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(scope: null, file: !2, line: 710, type: !77, isLocal: true, isDefinition: true)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(scope: null, file: !2, line: 713, type: !91, isLocal: true, isDefinition: true)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !92)
!92 = !{!93}
!93 = !DISubrange(count: 26)
!94 = !DIGlobalVariableExpression(var: !95, expr: !DIExpression())
!95 = distinct !DIGlobalVariable(scope: null, file: !2, line: 716, type: !96, isLocal: true, isDefinition: true)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 30)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(scope: null, file: !2, line: 719, type: !101, isLocal: true, isDefinition: true)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 25)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(scope: null, file: !2, line: 722, type: !47, isLocal: true, isDefinition: true)
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(scope: null, file: !2, line: 725, type: !30, isLocal: true, isDefinition: true)
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(scope: null, file: !2, line: 728, type: !110, isLocal: true, isDefinition: true)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !111)
!111 = !{!112}
!112 = !DISubrange(count: 22)
!113 = !DIGlobalVariableExpression(var: !114, expr: !DIExpression())
!114 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1010, type: !115, isLocal: true, isDefinition: true)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !116)
!116 = !{!117}
!117 = !DISubrange(count: 1)
!118 = !DIGlobalVariableExpression(var: !119, expr: !DIExpression())
!119 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1822, type: !42, isLocal: true, isDefinition: true)
!120 = !DIGlobalVariableExpression(var: !121, expr: !DIExpression())
!121 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1825, type: !18, isLocal: true, isDefinition: true)
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression())
!123 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1827, type: !124, isLocal: true, isDefinition: true)
!124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !125)
!125 = !{!126}
!126 = !DISubrange(count: 3)
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1900, type: !54, isLocal: true, isDefinition: true)
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(scope: null, file: !2, line: 2162, type: !42, isLocal: true, isDefinition: true)
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(scope: null, file: !2, line: 2174, type: !42, isLocal: true, isDefinition: true)
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(scope: null, file: !2, line: 2176, type: !70, isLocal: true, isDefinition: true)
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(scope: null, file: !2, line: 2196, type: !3, isLocal: true, isDefinition: true)
!137 = !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!138 = distinct !DIGlobalVariable(scope: null, file: !2, line: 2200, type: !3, isLocal: true, isDefinition: true)
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression())
!140 = distinct !DIGlobalVariable(scope: null, file: !2, line: 2208, type: !141, isLocal: true, isDefinition: true)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: 48)
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(scope: null, file: !2, line: 2210, type: !141, isLocal: true, isDefinition: true)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(scope: null, file: !2, line: 2246, type: !148, isLocal: true, isDefinition: true)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !149)
!149 = !{!150}
!150 = !DISubrange(count: 35)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(scope: null, file: !2, line: 2246, type: !153, isLocal: true, isDefinition: true)
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 128, elements: !38)
!154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(scope: null, file: !2, line: 2294, type: !157, isLocal: true, isDefinition: true)
!157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !158)
!158 = !{!159}
!159 = !DISubrange(count: 15)
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(scope: null, file: !2, line: 2297, type: !162, isLocal: true, isDefinition: true)
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !163)
!163 = !{!164}
!164 = !DISubrange(count: 7)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(scope: null, file: !2, line: 2299, type: !157, isLocal: true, isDefinition: true)
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(scope: null, file: !2, line: 2705, type: !169, isLocal: true, isDefinition: true)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !170)
!170 = !{!171}
!171 = !DISubrange(count: 33)
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression())
!173 = distinct !DIGlobalVariable(scope: null, file: !2, line: 900, type: !18, isLocal: true, isDefinition: true)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(scope: null, file: !2, line: 900, type: !176, isLocal: true, isDefinition: true)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !177)
!177 = !{!178}
!178 = !DISubrange(count: 6)
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(scope: null, file: !2, line: 900, type: !3, isLocal: true, isDefinition: true)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(scope: null, file: !2, line: 900, type: !18, isLocal: true, isDefinition: true)
!183 = !DIGlobalVariableExpression(var: !184, expr: !DIExpression())
!184 = distinct !DIGlobalVariable(scope: null, file: !2, line: 901, type: !162, isLocal: true, isDefinition: true)
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(scope: null, file: !2, line: 906, type: !18, isLocal: true, isDefinition: true)
!187 = !DIGlobalVariableExpression(var: !188, expr: !DIExpression())
!188 = distinct !DIGlobalVariable(scope: null, file: !2, line: 909, type: !189, isLocal: true, isDefinition: true)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !190)
!190 = !{!191}
!191 = !DISubrange(count: 17)
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(name: "crctable", scope: !194, file: !2, line: 1666, type: !291, isLocal: true, isDefinition: true)
!194 = distinct !DICompileUnit(language: DW_LANG_C11, file: !195, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !196, retainedTypes: !222, globals: !257, splitDebugInlining: false, nameTableKind: None)
!195 = !DIFile(filename: "/home/raj/coturn/src/client/ns_turn_msg.c", directory: "/home/raj/coturn/build", checksumkind: CSK_MD5, checksum: "aa7c805c7897418d005a8bdede1650d5")
!196 = !{!197, !207, !215}
!197 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_SHATYPE", file: !198, line: 160, baseType: !199, size: 32, elements: !200)
!198 = !DIFile(filename: "src/client/ns_turn_msg_defs.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "4d8c44ae9e82b7a50b86805787352690")
!199 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!200 = !{!201, !202, !203, !204, !205, !206}
!201 = !DIEnumerator(name: "SHATYPE_ERROR", value: -1)
!202 = !DIEnumerator(name: "SHATYPE_DEFAULT", value: 0)
!203 = !DIEnumerator(name: "SHATYPE_SHA1", value: 0)
!204 = !DIEnumerator(name: "SHATYPE_SHA256", value: 1)
!205 = !DIEnumerator(name: "SHATYPE_SHA384", value: 2)
!206 = !DIEnumerator(name: "SHATYPE_SHA512", value: 3)
!207 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !208, line: 54, baseType: !209, size: 32, elements: !210)
!208 = !DIFile(filename: "src/client/ns_turn_msg.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "43c56357294df21a547ee0716fe3769d")
!209 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!210 = !{!211, !212, !213, !214}
!211 = !DIEnumerator(name: "TURN_CREDENTIALS_NONE", value: 0)
!212 = !DIEnumerator(name: "TURN_CREDENTIALS_LONG_TERM", value: 1)
!213 = !DIEnumerator(name: "TURN_CREDENTIALS_SHORT_TERM", value: 2)
!214 = !DIEnumerator(name: "TURN_CREDENTIALS_UNDEFINED", value: 3)
!215 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_ENC_ALG", file: !198, line: 177, baseType: !199, size: 32, elements: !216)
!216 = !{!217, !218, !219, !220, !221}
!217 = !DIEnumerator(name: "ENC_ALG_ERROR", value: -1)
!218 = !DIEnumerator(name: "ENC_ALG_DEFAULT", value: 0)
!219 = !DIEnumerator(name: "A256GCM", value: 0)
!220 = !DIEnumerator(name: "A128GCM", value: 1)
!221 = !DIEnumerator(name: "ENC_ALG_NUM", value: 2)
!222 = !{!223, !199, !225, !226, !231, !232, !235, !237, !227, !240, !242, !244, !246, !247, !248, !250, !251, !252, !253, !209, !224, !255}
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !228, line: 24, baseType: !229)
!228 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !230, line: 38, baseType: !224)
!230 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !233, line: 46, baseType: !234)
!233 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!234 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !237)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !228, line: 25, baseType: !238)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !230, line: 40, baseType: !239)
!239 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !242)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !228, line: 26, baseType: !243)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !230, line: 42, baseType: !209)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !227)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "band_limit_t", file: !208, line: 67, baseType: !234)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "stun_attr_ref", file: !208, line: 71, baseType: !248)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_time_t", file: !254, line: 108, baseType: !242)
!254 = !DIFile(filename: "src/ns_turn_defs.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "126e9c9d0b914de7fdf6162f77453397")
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !224)
!257 = !{!0, !7, !9, !14, !16, !21, !23, !28, !33, !35, !40, !45, !50, !52, !57, !59, !64, !66, !68, !73, !75, !80, !82, !87, !89, !94, !99, !104, !106, !108, !113, !118, !120, !122, !127, !129, !131, !133, !135, !137, !139, !144, !146, !151, !155, !160, !165, !167, !172, !174, !179, !181, !183, !185, !187, !192, !258, !260, !265, !270, !275, !277, !279, !284, !289}
!258 = !DIGlobalVariableExpression(var: !259, expr: !DIExpression())
!259 = distinct !DIGlobalVariable(scope: null, file: !2, line: 2585, type: !96, isLocal: true, isDefinition: true)
!260 = !DIGlobalVariableExpression(var: !261, expr: !DIExpression())
!261 = distinct !DIGlobalVariable(scope: null, file: !2, line: 2585, type: !262, isLocal: true, isDefinition: true)
!262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 184, elements: !263)
!263 = !{!264}
!264 = !DISubrange(count: 23)
!265 = !DIGlobalVariableExpression(var: !266, expr: !DIExpression())
!266 = distinct !DIGlobalVariable(scope: null, file: !2, line: 2601, type: !267, isLocal: true, isDefinition: true)
!267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !268)
!268 = !{!269}
!269 = !DISubrange(count: 42)
!270 = !DIGlobalVariableExpression(var: !271, expr: !DIExpression())
!271 = distinct !DIGlobalVariable(scope: null, file: !2, line: 2614, type: !272, isLocal: true, isDefinition: true)
!272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !273)
!273 = !{!274}
!274 = !DISubrange(count: 34)
!275 = !DIGlobalVariableExpression(var: !276, expr: !DIExpression())
!276 = distinct !DIGlobalVariable(scope: null, file: !2, line: 2622, type: !77, isLocal: true, isDefinition: true)
!277 = !DIGlobalVariableExpression(var: !278, expr: !DIExpression())
!278 = distinct !DIGlobalVariable(scope: null, file: !2, line: 2628, type: !110, isLocal: true, isDefinition: true)
!279 = !DIGlobalVariableExpression(var: !280, expr: !DIExpression())
!280 = distinct !DIGlobalVariable(scope: null, file: !2, line: 2643, type: !281, isLocal: true, isDefinition: true)
!281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !282)
!282 = !{!283}
!283 = !DISubrange(count: 51)
!284 = !DIGlobalVariableExpression(var: !285, expr: !DIExpression())
!285 = distinct !DIGlobalVariable(scope: null, file: !2, line: 2647, type: !286, isLocal: true, isDefinition: true)
!286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !287)
!287 = !{!288}
!288 = !DISubrange(count: 27)
!289 = !DIGlobalVariableExpression(var: !290, expr: !DIExpression())
!290 = distinct !DIGlobalVariable(scope: null, file: !2, line: 2658, type: !272, isLocal: true, isDefinition: true)
!291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 8192, elements: !292)
!292 = !{!293}
!293 = !DISubrange(count: 256)
!294 = !{i32 7, !"Dwarf Version", i32 5}
!295 = !{i32 2, !"Debug Info Version", i32 3}
!296 = !{i32 1, !"wchar_size", i32 4}
!297 = !{i32 8, !"PIC Level", i32 2}
!298 = !{i32 7, !"PIE Level", i32 2}
!299 = !{i32 7, !"uwtable", i32 2}
!300 = !{i32 7, !"frame-pointer", i32 2}
!301 = !{!"clang version 16.0.0"}
!302 = distinct !DISubprogram(name: "stun_method_str", scope: !2, file: !2, line: 48, type: !303, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!303 = !DISubroutineType(types: !304)
!304 = !{!199, !237, !231}
!305 = !{}
!306 = !DILocalVariable(name: "method", arg: 1, scope: !302, file: !2, line: 48, type: !237)
!307 = !DILocation(line: 48, column: 30, scope: !302)
!308 = !DILocalVariable(name: "smethod", arg: 2, scope: !302, file: !2, line: 48, type: !231)
!309 = !DILocation(line: 48, column: 44, scope: !302)
!310 = !DILocalVariable(name: "ret", scope: !302, file: !2, line: 50, type: !199)
!311 = !DILocation(line: 50, column: 6, scope: !302)
!312 = !DILocalVariable(name: "s", scope: !302, file: !2, line: 52, type: !225)
!313 = !DILocation(line: 52, column: 14, scope: !302)
!314 = !DILocation(line: 54, column: 9, scope: !302)
!315 = !DILocation(line: 54, column: 2, scope: !302)
!316 = !DILocation(line: 56, column: 5, scope: !317)
!317 = distinct !DILexicalBlock(scope: !302, file: !2, line: 54, column: 17)
!318 = !DILocation(line: 57, column: 3, scope: !317)
!319 = !DILocation(line: 59, column: 5, scope: !317)
!320 = !DILocation(line: 60, column: 3, scope: !317)
!321 = !DILocation(line: 62, column: 5, scope: !317)
!322 = !DILocation(line: 63, column: 3, scope: !317)
!323 = !DILocation(line: 65, column: 5, scope: !317)
!324 = !DILocation(line: 66, column: 3, scope: !317)
!325 = !DILocation(line: 68, column: 5, scope: !317)
!326 = !DILocation(line: 69, column: 3, scope: !317)
!327 = !DILocation(line: 71, column: 5, scope: !317)
!328 = !DILocation(line: 72, column: 3, scope: !317)
!329 = !DILocation(line: 74, column: 5, scope: !317)
!330 = !DILocation(line: 75, column: 3, scope: !317)
!331 = !DILocation(line: 77, column: 5, scope: !317)
!332 = !DILocation(line: 78, column: 3, scope: !317)
!333 = !DILocation(line: 80, column: 5, scope: !317)
!334 = !DILocation(line: 81, column: 3, scope: !317)
!335 = !DILocation(line: 83, column: 5, scope: !317)
!336 = !DILocation(line: 84, column: 3, scope: !317)
!337 = !DILocation(line: 86, column: 7, scope: !317)
!338 = !DILocation(line: 87, column: 2, scope: !317)
!339 = !DILocation(line: 89, column: 5, scope: !340)
!340 = distinct !DILexicalBlock(scope: !302, file: !2, line: 89, column: 5)
!341 = !DILocation(line: 89, column: 5, scope: !302)
!342 = !DILocation(line: 90, column: 9, scope: !343)
!343 = distinct !DILexicalBlock(scope: !340, file: !2, line: 89, column: 14)
!344 = !DILocation(line: 90, column: 11, scope: !343)
!345 = !DILocation(line: 90, column: 26, scope: !343)
!346 = !DILocation(line: 90, column: 19, scope: !343)
!347 = !DILocation(line: 90, column: 28, scope: !343)
!348 = !DILocation(line: 90, column: 3, scope: !343)
!349 = !DILocation(line: 91, column: 2, scope: !343)
!350 = !DILocation(line: 93, column: 9, scope: !302)
!351 = !DILocation(line: 93, column: 2, scope: !302)
!352 = distinct !DISubprogram(name: "turn_random", scope: !2, file: !2, line: 96, type: !353, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!353 = !DISubroutineType(types: !354)
!354 = !{!355}
!355 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!356 = !DILocalVariable(name: "ret", scope: !352, file: !2, line: 98, type: !355)
!357 = !DILocation(line: 98, column: 7, scope: !352)
!358 = !DILocation(line: 99, column: 6, scope: !359)
!359 = distinct !DILexicalBlock(scope: !352, file: !2, line: 99, column: 5)
!360 = !DILocation(line: 99, column: 5, scope: !352)
!361 = !DILocation(line: 100, column: 9, scope: !359)
!362 = !DILocation(line: 100, column: 7, scope: !359)
!363 = !DILocation(line: 100, column: 3, scope: !359)
!364 = !DILocation(line: 101, column: 9, scope: !352)
!365 = !DILocation(line: 101, column: 2, scope: !352)
!366 = distinct !DISubprogram(name: "stun_calculate_hmac", scope: !2, file: !2, line: 115, type: !367, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!367 = !DISubroutineType(types: !368)
!368 = !{!199, !244, !232, !244, !232, !226, !369, !370}
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "SHATYPE", file: !198, line: 169, baseType: !197)
!371 = !DILocalVariable(name: "buf", arg: 1, scope: !366, file: !2, line: 115, type: !244)
!372 = !DILocation(line: 115, column: 40, scope: !366)
!373 = !DILocalVariable(name: "len", arg: 2, scope: !366, file: !2, line: 115, type: !232)
!374 = !DILocation(line: 115, column: 52, scope: !366)
!375 = !DILocalVariable(name: "key", arg: 3, scope: !366, file: !2, line: 115, type: !244)
!376 = !DILocation(line: 115, column: 72, scope: !366)
!377 = !DILocalVariable(name: "keylen", arg: 4, scope: !366, file: !2, line: 115, type: !232)
!378 = !DILocation(line: 115, column: 84, scope: !366)
!379 = !DILocalVariable(name: "hmac", arg: 5, scope: !366, file: !2, line: 115, type: !226)
!380 = !DILocation(line: 115, column: 101, scope: !366)
!381 = !DILocalVariable(name: "hmac_len", arg: 6, scope: !366, file: !2, line: 115, type: !369)
!382 = !DILocation(line: 115, column: 121, scope: !366)
!383 = !DILocalVariable(name: "shatype", arg: 7, scope: !366, file: !2, line: 115, type: !370)
!384 = !DILocation(line: 115, column: 139, scope: !366)
!385 = !DILocation(line: 117, column: 2, scope: !366)
!386 = !DILocation(line: 118, column: 2, scope: !366)
!387 = !DILocation(line: 118, column: 2, scope: !388)
!388 = distinct !DILexicalBlock(scope: !366, file: !2, line: 118, column: 2)
!389 = !DILocation(line: 120, column: 5, scope: !390)
!390 = distinct !DILexicalBlock(scope: !366, file: !2, line: 120, column: 5)
!391 = !DILocation(line: 120, column: 13, scope: !390)
!392 = !DILocation(line: 120, column: 5, scope: !366)
!393 = !DILocation(line: 122, column: 14, scope: !394)
!394 = distinct !DILexicalBlock(scope: !395, file: !2, line: 122, column: 8)
!395 = distinct !DILexicalBlock(scope: !390, file: !2, line: 120, column: 32)
!396 = !DILocation(line: 122, column: 28, scope: !394)
!397 = !DILocation(line: 122, column: 38, scope: !394)
!398 = !DILocation(line: 122, column: 33, scope: !394)
!399 = !DILocation(line: 122, column: 46, scope: !394)
!400 = !DILocation(line: 122, column: 51, scope: !394)
!401 = !DILocation(line: 122, column: 56, scope: !394)
!402 = !DILocation(line: 122, column: 62, scope: !394)
!403 = !DILocation(line: 122, column: 9, scope: !394)
!404 = !DILocation(line: 122, column: 8, scope: !395)
!405 = !DILocation(line: 123, column: 6, scope: !406)
!406 = distinct !DILexicalBlock(scope: !394, file: !2, line: 122, column: 73)
!407 = !DILocation(line: 129, column: 2, scope: !395)
!408 = !DILocation(line: 129, column: 12, scope: !409)
!409 = distinct !DILexicalBlock(scope: !390, file: !2, line: 129, column: 12)
!410 = !DILocation(line: 129, column: 20, scope: !409)
!411 = !DILocation(line: 129, column: 12, scope: !390)
!412 = !DILocation(line: 131, column: 14, scope: !413)
!413 = distinct !DILexicalBlock(scope: !414, file: !2, line: 131, column: 8)
!414 = distinct !DILexicalBlock(scope: !409, file: !2, line: 129, column: 39)
!415 = !DILocation(line: 131, column: 28, scope: !413)
!416 = !DILocation(line: 131, column: 38, scope: !413)
!417 = !DILocation(line: 131, column: 33, scope: !413)
!418 = !DILocation(line: 131, column: 46, scope: !413)
!419 = !DILocation(line: 131, column: 51, scope: !413)
!420 = !DILocation(line: 131, column: 56, scope: !413)
!421 = !DILocation(line: 131, column: 62, scope: !413)
!422 = !DILocation(line: 131, column: 9, scope: !413)
!423 = !DILocation(line: 131, column: 8, scope: !414)
!424 = !DILocation(line: 132, column: 6, scope: !425)
!425 = distinct !DILexicalBlock(scope: !413, file: !2, line: 131, column: 73)
!426 = !DILocation(line: 138, column: 2, scope: !414)
!427 = !DILocation(line: 138, column: 12, scope: !428)
!428 = distinct !DILexicalBlock(scope: !409, file: !2, line: 138, column: 12)
!429 = !DILocation(line: 138, column: 20, scope: !428)
!430 = !DILocation(line: 138, column: 12, scope: !409)
!431 = !DILocation(line: 140, column: 14, scope: !432)
!432 = distinct !DILexicalBlock(scope: !433, file: !2, line: 140, column: 8)
!433 = distinct !DILexicalBlock(scope: !428, file: !2, line: 138, column: 39)
!434 = !DILocation(line: 140, column: 28, scope: !432)
!435 = !DILocation(line: 140, column: 38, scope: !432)
!436 = !DILocation(line: 140, column: 33, scope: !432)
!437 = !DILocation(line: 140, column: 46, scope: !432)
!438 = !DILocation(line: 140, column: 51, scope: !432)
!439 = !DILocation(line: 140, column: 56, scope: !432)
!440 = !DILocation(line: 140, column: 62, scope: !432)
!441 = !DILocation(line: 140, column: 9, scope: !432)
!442 = !DILocation(line: 140, column: 8, scope: !433)
!443 = !DILocation(line: 141, column: 6, scope: !444)
!444 = distinct !DILexicalBlock(scope: !432, file: !2, line: 140, column: 73)
!445 = !DILocation(line: 147, column: 2, scope: !433)
!446 = !DILocation(line: 148, column: 14, scope: !447)
!447 = distinct !DILexicalBlock(scope: !428, file: !2, line: 148, column: 8)
!448 = !DILocation(line: 148, column: 26, scope: !447)
!449 = !DILocation(line: 148, column: 36, scope: !447)
!450 = !DILocation(line: 148, column: 31, scope: !447)
!451 = !DILocation(line: 148, column: 44, scope: !447)
!452 = !DILocation(line: 148, column: 49, scope: !447)
!453 = !DILocation(line: 148, column: 54, scope: !447)
!454 = !DILocation(line: 148, column: 60, scope: !447)
!455 = !DILocation(line: 148, column: 9, scope: !447)
!456 = !DILocation(line: 148, column: 8, scope: !428)
!457 = !DILocation(line: 149, column: 6, scope: !458)
!458 = distinct !DILexicalBlock(scope: !447, file: !2, line: 148, column: 71)
!459 = !DILocation(line: 152, column: 2, scope: !366)
!460 = !DILocation(line: 153, column: 1, scope: !366)
!461 = distinct !DISubprogram(name: "stun_produce_integrity_key_str", scope: !2, file: !2, line: 155, type: !462, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!462 = !DISubroutineType(types: !463)
!463 = !{!199, !244, !244, !244, !226, !370}
!464 = !DILocalVariable(name: "uname", arg: 1, scope: !461, file: !2, line: 155, type: !244)
!465 = !DILocation(line: 155, column: 51, scope: !461)
!466 = !DILocalVariable(name: "realm", arg: 2, scope: !461, file: !2, line: 155, type: !244)
!467 = !DILocation(line: 155, column: 73, scope: !461)
!468 = !DILocalVariable(name: "upwd", arg: 3, scope: !461, file: !2, line: 155, type: !244)
!469 = !DILocation(line: 155, column: 95, scope: !461)
!470 = !DILocalVariable(name: "key", arg: 4, scope: !461, file: !2, line: 155, type: !226)
!471 = !DILocation(line: 155, column: 111, scope: !461)
!472 = !DILocalVariable(name: "shatype", arg: 5, scope: !461, file: !2, line: 155, type: !370)
!473 = !DILocation(line: 155, column: 124, scope: !461)
!474 = !DILocalVariable(name: "ret", scope: !461, file: !2, line: 157, type: !199)
!475 = !DILocation(line: 157, column: 6, scope: !461)
!476 = !DILocation(line: 159, column: 2, scope: !461)
!477 = !DILocation(line: 160, column: 2, scope: !461)
!478 = !DILocation(line: 160, column: 2, scope: !479)
!479 = distinct !DILexicalBlock(scope: !461, file: !2, line: 160, column: 2)
!480 = !DILocalVariable(name: "ulen", scope: !461, file: !2, line: 162, type: !232)
!481 = !DILocation(line: 162, column: 9, scope: !461)
!482 = !DILocation(line: 162, column: 36, scope: !461)
!483 = !DILocation(line: 162, column: 16, scope: !461)
!484 = !DILocalVariable(name: "rlen", scope: !461, file: !2, line: 163, type: !232)
!485 = !DILocation(line: 163, column: 9, scope: !461)
!486 = !DILocation(line: 163, column: 36, scope: !461)
!487 = !DILocation(line: 163, column: 16, scope: !461)
!488 = !DILocalVariable(name: "plen", scope: !461, file: !2, line: 164, type: !232)
!489 = !DILocation(line: 164, column: 9, scope: !461)
!490 = !DILocation(line: 164, column: 36, scope: !461)
!491 = !DILocation(line: 164, column: 16, scope: !461)
!492 = !DILocalVariable(name: "sz", scope: !461, file: !2, line: 165, type: !232)
!493 = !DILocation(line: 165, column: 9, scope: !461)
!494 = !DILocation(line: 165, column: 14, scope: !461)
!495 = !DILocation(line: 165, column: 18, scope: !461)
!496 = !DILocation(line: 165, column: 21, scope: !461)
!497 = !DILocation(line: 165, column: 20, scope: !461)
!498 = !DILocation(line: 165, column: 25, scope: !461)
!499 = !DILocation(line: 165, column: 28, scope: !461)
!500 = !DILocation(line: 165, column: 27, scope: !461)
!501 = !DILocation(line: 165, column: 32, scope: !461)
!502 = !DILocation(line: 165, column: 34, scope: !461)
!503 = !DILocalVariable(name: "strl", scope: !461, file: !2, line: 166, type: !232)
!504 = !DILocation(line: 166, column: 9, scope: !461)
!505 = !DILocation(line: 166, column: 16, scope: !461)
!506 = !DILocation(line: 166, column: 20, scope: !461)
!507 = !DILocation(line: 166, column: 23, scope: !461)
!508 = !DILocation(line: 166, column: 22, scope: !461)
!509 = !DILocation(line: 166, column: 27, scope: !461)
!510 = !DILocation(line: 166, column: 30, scope: !461)
!511 = !DILocation(line: 166, column: 29, scope: !461)
!512 = !DILocalVariable(name: "str", scope: !461, file: !2, line: 167, type: !226)
!513 = !DILocation(line: 167, column: 11, scope: !461)
!514 = !DILocation(line: 167, column: 34, scope: !461)
!515 = !DILocation(line: 167, column: 36, scope: !461)
!516 = !DILocation(line: 167, column: 27, scope: !461)
!517 = !DILocation(line: 169, column: 17, scope: !461)
!518 = !DILocation(line: 169, column: 34, scope: !461)
!519 = !DILocation(line: 169, column: 40, scope: !461)
!520 = !DILocation(line: 169, column: 2, scope: !461)
!521 = !DILocation(line: 170, column: 2, scope: !461)
!522 = !DILocation(line: 170, column: 6, scope: !461)
!523 = !DILocation(line: 170, column: 11, scope: !461)
!524 = !DILocation(line: 171, column: 17, scope: !461)
!525 = !DILocation(line: 171, column: 21, scope: !461)
!526 = !DILocation(line: 171, column: 20, scope: !461)
!527 = !DILocation(line: 171, column: 25, scope: !461)
!528 = !DILocation(line: 171, column: 41, scope: !461)
!529 = !DILocation(line: 171, column: 47, scope: !461)
!530 = !DILocation(line: 171, column: 50, scope: !461)
!531 = !DILocation(line: 171, column: 49, scope: !461)
!532 = !DILocation(line: 171, column: 54, scope: !461)
!533 = !DILocation(line: 171, column: 2, scope: !461)
!534 = !DILocation(line: 172, column: 2, scope: !461)
!535 = !DILocation(line: 172, column: 6, scope: !461)
!536 = !DILocation(line: 172, column: 10, scope: !461)
!537 = !DILocation(line: 172, column: 13, scope: !461)
!538 = !DILocation(line: 172, column: 12, scope: !461)
!539 = !DILocation(line: 172, column: 18, scope: !461)
!540 = !DILocation(line: 173, column: 17, scope: !461)
!541 = !DILocation(line: 173, column: 21, scope: !461)
!542 = !DILocation(line: 173, column: 20, scope: !461)
!543 = !DILocation(line: 173, column: 25, scope: !461)
!544 = !DILocation(line: 173, column: 28, scope: !461)
!545 = !DILocation(line: 173, column: 27, scope: !461)
!546 = !DILocation(line: 173, column: 32, scope: !461)
!547 = !DILocation(line: 173, column: 48, scope: !461)
!548 = !DILocation(line: 173, column: 53, scope: !461)
!549 = !DILocation(line: 173, column: 56, scope: !461)
!550 = !DILocation(line: 173, column: 55, scope: !461)
!551 = !DILocation(line: 173, column: 60, scope: !461)
!552 = !DILocation(line: 173, column: 63, scope: !461)
!553 = !DILocation(line: 173, column: 62, scope: !461)
!554 = !DILocation(line: 173, column: 67, scope: !461)
!555 = !DILocation(line: 173, column: 2, scope: !461)
!556 = !DILocation(line: 174, column: 2, scope: !461)
!557 = !DILocation(line: 174, column: 6, scope: !461)
!558 = !DILocation(line: 174, column: 11, scope: !461)
!559 = !DILocation(line: 176, column: 5, scope: !560)
!560 = distinct !DILexicalBlock(scope: !461, file: !2, line: 176, column: 5)
!561 = !DILocation(line: 176, column: 13, scope: !560)
!562 = !DILocation(line: 176, column: 5, scope: !461)
!563 = !DILocalVariable(name: "keylen", scope: !564, file: !2, line: 186, type: !209)
!564 = distinct !DILexicalBlock(scope: !560, file: !2, line: 176, column: 32)
!565 = !DILocation(line: 186, column: 16, scope: !564)
!566 = !DILocalVariable(name: "ctx", scope: !564, file: !2, line: 187, type: !567)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_MD_CTX", file: !569, line: 104, baseType: !570)
!569 = !DIFile(filename: "/usr/include/openssl/types.h", directory: "", checksumkind: CSK_MD5, checksum: "44f1236065e4ee65cf4cd545c3e12ab9")
!570 = !DICompositeType(tag: DW_TAG_structure_type, name: "evp_md_ctx_st", file: !569, line: 104, flags: DIFlagFwdDecl)
!571 = !DILocation(line: 187, column: 15, scope: !564)
!572 = !DILocation(line: 187, column: 21, scope: !564)
!573 = !DILocation(line: 188, column: 18, scope: !564)
!574 = !DILocation(line: 188, column: 22, scope: !564)
!575 = !DILocation(line: 188, column: 3, scope: !564)
!576 = !DILocation(line: 189, column: 20, scope: !564)
!577 = !DILocation(line: 189, column: 24, scope: !564)
!578 = !DILocation(line: 189, column: 28, scope: !564)
!579 = !DILocation(line: 189, column: 3, scope: !564)
!580 = !DILocation(line: 190, column: 19, scope: !564)
!581 = !DILocation(line: 190, column: 23, scope: !564)
!582 = !DILocation(line: 190, column: 3, scope: !564)
!583 = !DILocation(line: 191, column: 19, scope: !564)
!584 = !DILocation(line: 191, column: 3, scope: !564)
!585 = !DILocation(line: 193, column: 7, scope: !564)
!586 = !DILocation(line: 198, column: 2, scope: !564)
!587 = !DILocation(line: 198, column: 12, scope: !588)
!588 = distinct !DILexicalBlock(scope: !560, file: !2, line: 198, column: 12)
!589 = !DILocation(line: 198, column: 20, scope: !588)
!590 = !DILocation(line: 198, column: 12, scope: !560)
!591 = !DILocalVariable(name: "keylen", scope: !592, file: !2, line: 208, type: !209)
!592 = distinct !DILexicalBlock(scope: !588, file: !2, line: 198, column: 39)
!593 = !DILocation(line: 208, column: 16, scope: !592)
!594 = !DILocalVariable(name: "ctx", scope: !592, file: !2, line: 209, type: !567)
!595 = !DILocation(line: 209, column: 15, scope: !592)
!596 = !DILocation(line: 209, column: 21, scope: !592)
!597 = !DILocation(line: 210, column: 18, scope: !592)
!598 = !DILocation(line: 210, column: 22, scope: !592)
!599 = !DILocation(line: 210, column: 3, scope: !592)
!600 = !DILocation(line: 211, column: 20, scope: !592)
!601 = !DILocation(line: 211, column: 24, scope: !592)
!602 = !DILocation(line: 211, column: 28, scope: !592)
!603 = !DILocation(line: 211, column: 3, scope: !592)
!604 = !DILocation(line: 212, column: 19, scope: !592)
!605 = !DILocation(line: 212, column: 23, scope: !592)
!606 = !DILocation(line: 212, column: 3, scope: !592)
!607 = !DILocation(line: 213, column: 19, scope: !592)
!608 = !DILocation(line: 213, column: 3, scope: !592)
!609 = !DILocation(line: 215, column: 7, scope: !592)
!610 = !DILocation(line: 220, column: 2, scope: !592)
!611 = !DILocation(line: 220, column: 12, scope: !612)
!612 = distinct !DILexicalBlock(scope: !588, file: !2, line: 220, column: 12)
!613 = !DILocation(line: 220, column: 20, scope: !612)
!614 = !DILocation(line: 220, column: 12, scope: !588)
!615 = !DILocalVariable(name: "keylen", scope: !616, file: !2, line: 230, type: !209)
!616 = distinct !DILexicalBlock(scope: !612, file: !2, line: 220, column: 39)
!617 = !DILocation(line: 230, column: 16, scope: !616)
!618 = !DILocalVariable(name: "ctx", scope: !616, file: !2, line: 231, type: !567)
!619 = !DILocation(line: 231, column: 15, scope: !616)
!620 = !DILocation(line: 231, column: 21, scope: !616)
!621 = !DILocation(line: 232, column: 18, scope: !616)
!622 = !DILocation(line: 232, column: 22, scope: !616)
!623 = !DILocation(line: 232, column: 3, scope: !616)
!624 = !DILocation(line: 233, column: 20, scope: !616)
!625 = !DILocation(line: 233, column: 24, scope: !616)
!626 = !DILocation(line: 233, column: 28, scope: !616)
!627 = !DILocation(line: 233, column: 3, scope: !616)
!628 = !DILocation(line: 234, column: 19, scope: !616)
!629 = !DILocation(line: 234, column: 23, scope: !616)
!630 = !DILocation(line: 234, column: 3, scope: !616)
!631 = !DILocation(line: 235, column: 19, scope: !616)
!632 = !DILocation(line: 235, column: 3, scope: !616)
!633 = !DILocation(line: 237, column: 7, scope: !616)
!634 = !DILocation(line: 242, column: 2, scope: !616)
!635 = !DILocalVariable(name: "keylen", scope: !636, file: !2, line: 257, type: !209)
!636 = distinct !DILexicalBlock(scope: !612, file: !2, line: 242, column: 9)
!637 = !DILocation(line: 257, column: 16, scope: !636)
!638 = !DILocalVariable(name: "ctx", scope: !636, file: !2, line: 258, type: !567)
!639 = !DILocation(line: 258, column: 15, scope: !636)
!640 = !DILocation(line: 258, column: 21, scope: !636)
!641 = !DILocation(line: 265, column: 21, scope: !636)
!642 = !DILocation(line: 265, column: 25, scope: !636)
!643 = !DILocation(line: 265, column: 3, scope: !636)
!644 = !DILocation(line: 266, column: 20, scope: !636)
!645 = !DILocation(line: 266, column: 24, scope: !636)
!646 = !DILocation(line: 266, column: 28, scope: !636)
!647 = !DILocation(line: 266, column: 3, scope: !636)
!648 = !DILocation(line: 267, column: 19, scope: !636)
!649 = !DILocation(line: 267, column: 23, scope: !636)
!650 = !DILocation(line: 267, column: 3, scope: !636)
!651 = !DILocation(line: 268, column: 19, scope: !636)
!652 = !DILocation(line: 268, column: 3, scope: !636)
!653 = !DILocation(line: 270, column: 7, scope: !636)
!654 = !DILocation(line: 273, column: 7, scope: !461)
!655 = !DILocation(line: 273, column: 2, scope: !461)
!656 = !DILocation(line: 275, column: 9, scope: !461)
!657 = !DILocation(line: 275, column: 2, scope: !461)
!658 = distinct !DISubprogram(name: "generate_new_enc_password", scope: !2, file: !2, line: 344, type: !659, scopeLine: 345, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!659 = !DISubroutineType(types: !660)
!660 = !{null, !225, !231}
!661 = !DILocalVariable(name: "pwd", arg: 1, scope: !658, file: !2, line: 344, type: !225)
!662 = !DILocation(line: 344, column: 44, scope: !658)
!663 = !DILocalVariable(name: "result", arg: 2, scope: !658, file: !2, line: 344, type: !231)
!664 = !DILocation(line: 344, column: 55, scope: !658)
!665 = !DILocation(line: 346, column: 24, scope: !658)
!666 = !DILocation(line: 346, column: 29, scope: !658)
!667 = !DILocation(line: 346, column: 2, scope: !658)
!668 = !DILocation(line: 347, column: 1, scope: !658)
!669 = distinct !DISubprogram(name: "generate_enc_password", scope: !2, file: !2, line: 290, type: !670, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !194, retainedNodes: !305)
!670 = !DISubroutineType(types: !671)
!671 = !{null, !225, !231, !255}
!672 = !DILocalVariable(name: "pwd", arg: 1, scope: !669, file: !2, line: 290, type: !225)
!673 = !DILocation(line: 290, column: 47, scope: !669)
!674 = !DILocalVariable(name: "result", arg: 2, scope: !669, file: !2, line: 290, type: !231)
!675 = !DILocation(line: 290, column: 58, scope: !669)
!676 = !DILocalVariable(name: "orig_salt", arg: 3, scope: !669, file: !2, line: 290, type: !255)
!677 = !DILocation(line: 290, column: 87, scope: !669)
!678 = !DILocalVariable(name: "salt", scope: !669, file: !2, line: 292, type: !679)
!679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 72, elements: !12)
!680 = !DILocation(line: 292, column: 16, scope: !669)
!681 = !DILocation(line: 293, column: 6, scope: !682)
!682 = distinct !DILexicalBlock(scope: !669, file: !2, line: 293, column: 5)
!683 = !DILocation(line: 293, column: 5, scope: !669)
!684 = !DILocation(line: 294, column: 25, scope: !685)
!685 = distinct !DILexicalBlock(scope: !682, file: !2, line: 293, column: 17)
!686 = !DILocation(line: 294, column: 3, scope: !685)
!687 = !DILocation(line: 295, column: 2, scope: !685)
!688 = !DILocation(line: 296, column: 9, scope: !689)
!689 = distinct !DILexicalBlock(scope: !682, file: !2, line: 295, column: 9)
!690 = !DILocation(line: 296, column: 19, scope: !689)
!691 = !DILocation(line: 296, column: 3, scope: !689)
!692 = !DILocation(line: 297, column: 3, scope: !689)
!693 = !DILocation(line: 297, column: 22, scope: !689)
!694 = !DILocalVariable(name: "rsalt", scope: !669, file: !2, line: 299, type: !695)
!695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 136, elements: !190)
!696 = !DILocation(line: 299, column: 16, scope: !669)
!697 = !DILocation(line: 300, column: 18, scope: !669)
!698 = !DILocation(line: 300, column: 23, scope: !669)
!699 = !DILocation(line: 300, column: 2, scope: !669)
!700 = !DILocation(line: 301, column: 2, scope: !669)
!701 = !DILocation(line: 301, column: 11, scope: !669)
!702 = !DILocation(line: 302, column: 2, scope: !669)
!703 = !DILocation(line: 302, column: 11, scope: !669)
!704 = !DILocation(line: 303, column: 2, scope: !669)
!705 = !DILocation(line: 303, column: 11, scope: !669)
!706 = !DILocation(line: 304, column: 15, scope: !669)
!707 = !DILocation(line: 304, column: 21, scope: !669)
!708 = !DILocation(line: 304, column: 27, scope: !669)
!709 = !DILocation(line: 304, column: 2, scope: !669)
!710 = !DILocation(line: 305, column: 2, scope: !669)
!711 = !DILocation(line: 305, column: 39, scope: !669)
!712 = !DILocalVariable(name: "out", scope: !669, file: !2, line: 306, type: !223)
!713 = !DILocation(line: 306, column: 17, scope: !669)
!714 = !DILocation(line: 306, column: 40, scope: !669)
!715 = !DILocation(line: 306, column: 46, scope: !669)
!716 = !DILocation(line: 306, column: 48, scope: !669)
!717 = !DILocation(line: 306, column: 62, scope: !669)
!718 = !DILocation(line: 306, column: 76, scope: !669)
!719 = !DILocalVariable(name: "ctx", scope: !720, file: !2, line: 325, type: !567)
!720 = distinct !DILexicalBlock(scope: !669, file: !2, line: 307, column: 2)
!721 = !DILocation(line: 325, column: 15, scope: !720)
!722 = !DILocation(line: 325, column: 21, scope: !720)
!723 = !DILocation(line: 327, column: 18, scope: !720)
!724 = !DILocation(line: 327, column: 22, scope: !720)
!725 = !DILocation(line: 327, column: 3, scope: !720)
!726 = !DILocation(line: 331, column: 20, scope: !720)
!727 = !DILocation(line: 331, column: 24, scope: !720)
!728 = !DILocation(line: 331, column: 3, scope: !720)
!729 = !DILocation(line: 332, column: 20, scope: !720)
!730 = !DILocation(line: 332, column: 24, scope: !720)
!731 = !DILocation(line: 332, column: 35, scope: !720)
!732 = !DILocation(line: 332, column: 28, scope: !720)
!733 = !DILocation(line: 332, column: 3, scope: !720)
!734 = !DILocalVariable(name: "hash", scope: !735, file: !2, line: 334, type: !736)
!735 = distinct !DILexicalBlock(scope: !720, file: !2, line: 333, column: 3)
!736 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 1032, elements: !737)
!737 = !{!738}
!738 = !DISubrange(count: 129)
!739 = !DILocation(line: 334, column: 18, scope: !735)
!740 = !DILocalVariable(name: "keylen", scope: !735, file: !2, line: 335, type: !209)
!741 = !DILocation(line: 335, column: 17, scope: !735)
!742 = !DILocation(line: 336, column: 20, scope: !735)
!743 = !DILocation(line: 336, column: 24, scope: !735)
!744 = !DILocation(line: 336, column: 4, scope: !735)
!745 = !DILocation(line: 337, column: 20, scope: !735)
!746 = !DILocation(line: 337, column: 25, scope: !735)
!747 = !DILocation(line: 337, column: 29, scope: !735)
!748 = !DILocation(line: 337, column: 4, scope: !735)
!749 = !DILocation(line: 339, column: 19, scope: !720)
!750 = !DILocation(line: 339, column: 3, scope: !720)
!751 = !DILocation(line: 342, column: 1, scope: !669)
!752 = distinct !DISubprogram(name: "check_password", scope: !2, file: !2, line: 369, type: !753, scopeLine: 370, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!753 = !DISubroutineType(types: !754)
!754 = !{!199, !225, !225}
!755 = !DILocalVariable(name: "pin", arg: 1, scope: !752, file: !2, line: 369, type: !225)
!756 = !DILocation(line: 369, column: 32, scope: !752)
!757 = !DILocalVariable(name: "pwd", arg: 2, scope: !752, file: !2, line: 369, type: !225)
!758 = !DILocation(line: 369, column: 49, scope: !752)
!759 = !DILocalVariable(name: "salt", scope: !752, file: !2, line: 371, type: !760)
!760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 64, elements: !5)
!761 = !DILocation(line: 371, column: 16, scope: !752)
!762 = !DILocation(line: 372, column: 25, scope: !763)
!763 = distinct !DILexicalBlock(scope: !752, file: !2, line: 372, column: 5)
!764 = !DILocation(line: 372, column: 29, scope: !763)
!765 = !DILocation(line: 372, column: 6, scope: !763)
!766 = !DILocation(line: 372, column: 5, scope: !752)
!767 = !DILocation(line: 373, column: 17, scope: !768)
!768 = distinct !DILexicalBlock(scope: !763, file: !2, line: 372, column: 36)
!769 = !DILocation(line: 373, column: 21, scope: !768)
!770 = !DILocation(line: 373, column: 10, scope: !768)
!771 = !DILocation(line: 373, column: 3, scope: !768)
!772 = !DILocalVariable(name: "enc_pin", scope: !752, file: !2, line: 375, type: !773)
!773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !774)
!774 = !{!775}
!775 = !DISubrange(count: 257)
!776 = !DILocation(line: 375, column: 7, scope: !752)
!777 = !DILocation(line: 376, column: 24, scope: !752)
!778 = !DILocation(line: 376, column: 29, scope: !752)
!779 = !DILocation(line: 376, column: 38, scope: !752)
!780 = !DILocation(line: 376, column: 2, scope: !752)
!781 = !DILocation(line: 377, column: 16, scope: !752)
!782 = !DILocation(line: 377, column: 24, scope: !752)
!783 = !DILocation(line: 377, column: 9, scope: !752)
!784 = !DILocation(line: 377, column: 2, scope: !752)
!785 = !DILocation(line: 378, column: 1, scope: !752)
!786 = distinct !DISubprogram(name: "encrypted_password", scope: !2, file: !2, line: 349, type: !787, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !194, retainedNodes: !305)
!787 = !DISubroutineType(types: !788)
!788 = !{!199, !225, !223}
!789 = !DILocalVariable(name: "pin", arg: 1, scope: !786, file: !2, line: 349, type: !225)
!790 = !DILocation(line: 349, column: 43, scope: !786)
!791 = !DILocalVariable(name: "salt", arg: 2, scope: !786, file: !2, line: 349, type: !223)
!792 = !DILocation(line: 349, column: 63, scope: !786)
!793 = !DILocalVariable(name: "min_len", scope: !786, file: !2, line: 351, type: !232)
!794 = !DILocation(line: 351, column: 9, scope: !786)
!795 = !DILocation(line: 352, column: 12, scope: !796)
!796 = distinct !DILexicalBlock(scope: !786, file: !2, line: 352, column: 5)
!797 = !DILocation(line: 352, column: 5, scope: !796)
!798 = !DILocation(line: 352, column: 18, scope: !796)
!799 = !DILocation(line: 352, column: 16, scope: !796)
!800 = !DILocation(line: 352, column: 5, scope: !786)
!801 = !DILocation(line: 353, column: 7, scope: !802)
!802 = distinct !DILexicalBlock(scope: !803, file: !2, line: 353, column: 6)
!803 = distinct !DILexicalBlock(scope: !796, file: !2, line: 352, column: 27)
!804 = !DILocation(line: 353, column: 13, scope: !802)
!805 = !DILocation(line: 353, column: 20, scope: !802)
!806 = !DILocation(line: 353, column: 24, scope: !802)
!807 = !DILocation(line: 353, column: 30, scope: !802)
!808 = !DILocation(line: 353, column: 37, scope: !802)
!809 = !DILocation(line: 353, column: 41, scope: !802)
!810 = !DILocation(line: 353, column: 47, scope: !802)
!811 = !DILocation(line: 353, column: 54, scope: !802)
!812 = !DILocation(line: 353, column: 58, scope: !802)
!813 = !DILocation(line: 353, column: 92, scope: !802)
!814 = !DILocation(line: 353, column: 6, scope: !803)
!815 = !DILocalVariable(name: "i", scope: !816, file: !2, line: 354, type: !232)
!816 = distinct !DILexicalBlock(scope: !802, file: !2, line: 353, column: 100)
!817 = !DILocation(line: 354, column: 11, scope: !816)
!818 = !DILocation(line: 355, column: 9, scope: !819)
!819 = distinct !DILexicalBlock(scope: !816, file: !2, line: 355, column: 4)
!820 = !DILocation(line: 355, column: 8, scope: !819)
!821 = !DILocation(line: 355, column: 12, scope: !822)
!822 = distinct !DILexicalBlock(scope: !819, file: !2, line: 355, column: 4)
!823 = !DILocation(line: 355, column: 13, scope: !822)
!824 = !DILocation(line: 355, column: 4, scope: !819)
!825 = !DILocalVariable(name: "c", scope: !826, file: !2, line: 356, type: !225)
!826 = distinct !DILexicalBlock(scope: !822, file: !2, line: 355, column: 33)
!827 = !DILocation(line: 356, column: 17, scope: !826)
!828 = !DILocation(line: 356, column: 21, scope: !826)
!829 = !DILocation(line: 356, column: 24, scope: !826)
!830 = !DILocation(line: 356, column: 27, scope: !826)
!831 = !DILocation(line: 356, column: 26, scope: !826)
!832 = !DILocation(line: 356, column: 29, scope: !826)
!833 = !DILocation(line: 356, column: 28, scope: !826)
!834 = !DILocalVariable(name: "sc", scope: !826, file: !2, line: 357, type: !124)
!835 = !DILocation(line: 357, column: 10, scope: !826)
!836 = !DILocation(line: 358, column: 11, scope: !826)
!837 = !DILocation(line: 358, column: 5, scope: !826)
!838 = !DILocation(line: 358, column: 10, scope: !826)
!839 = !DILocation(line: 359, column: 11, scope: !826)
!840 = !DILocation(line: 359, column: 5, scope: !826)
!841 = !DILocation(line: 359, column: 10, scope: !826)
!842 = !DILocation(line: 360, column: 5, scope: !826)
!843 = !DILocation(line: 360, column: 10, scope: !826)
!844 = !DILocation(line: 361, column: 38, scope: !826)
!845 = !DILocation(line: 361, column: 30, scope: !826)
!846 = !DILocation(line: 361, column: 15, scope: !826)
!847 = !DILocation(line: 361, column: 5, scope: !826)
!848 = !DILocation(line: 361, column: 10, scope: !826)
!849 = !DILocation(line: 361, column: 13, scope: !826)
!850 = !DILocation(line: 362, column: 4, scope: !826)
!851 = !DILocation(line: 355, column: 28, scope: !822)
!852 = !DILocation(line: 355, column: 4, scope: !822)
!853 = distinct !{!853, !824, !854, !855}
!854 = !DILocation(line: 362, column: 4, scope: !819)
!855 = !{!"llvm.loop.mustprogress"}
!856 = !DILocation(line: 363, column: 4, scope: !816)
!857 = !DILocation(line: 365, column: 2, scope: !803)
!858 = !DILocation(line: 366, column: 2, scope: !786)
!859 = !DILocation(line: 367, column: 1, scope: !786)
!860 = distinct !DISubprogram(name: "stun_get_command_message_len_str", scope: !2, file: !2, line: 388, type: !861, scopeLine: 389, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!861 = !DISubroutineType(types: !862)
!862 = !{!199, !244, !232}
!863 = !DILocalVariable(name: "buf", arg: 1, scope: !860, file: !2, line: 388, type: !244)
!864 = !DILocation(line: 388, column: 53, scope: !860)
!865 = !DILocalVariable(name: "len", arg: 2, scope: !860, file: !2, line: 388, type: !232)
!866 = !DILocation(line: 388, column: 65, scope: !860)
!867 = !DILocation(line: 390, column: 6, scope: !868)
!868 = distinct !DILexicalBlock(scope: !860, file: !2, line: 390, column: 6)
!869 = !DILocation(line: 390, column: 10, scope: !868)
!870 = !DILocation(line: 390, column: 6, scope: !860)
!871 = !DILocation(line: 391, column: 3, scope: !868)
!872 = !DILocalVariable(name: "bufLen", scope: !860, file: !2, line: 394, type: !232)
!873 = !DILocation(line: 394, column: 9, scope: !860)
!874 = !DILocation(line: 394, column: 28, scope: !860)
!875 = !DILocation(line: 394, column: 65, scope: !860)
!876 = !DILocation(line: 394, column: 18, scope: !860)
!877 = !DILocation(line: 395, column: 6, scope: !878)
!878 = distinct !DILexicalBlock(scope: !860, file: !2, line: 395, column: 6)
!879 = !DILocation(line: 395, column: 15, scope: !878)
!880 = !DILocation(line: 395, column: 13, scope: !878)
!881 = !DILocation(line: 395, column: 6, scope: !860)
!882 = !DILocation(line: 396, column: 3, scope: !883)
!883 = distinct !DILexicalBlock(scope: !878, file: !2, line: 395, column: 20)
!884 = !DILocation(line: 399, column: 9, scope: !860)
!885 = !DILocation(line: 399, column: 2, scope: !860)
!886 = !DILocation(line: 400, column: 1, scope: !860)
!887 = distinct !DISubprogram(name: "stun_make_type", scope: !2, file: !2, line: 410, type: !888, scopeLine: 410, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!888 = !DISubroutineType(types: !889)
!889 = !{!237, !237}
!890 = !DILocalVariable(name: "method", arg: 1, scope: !887, file: !2, line: 410, type: !237)
!891 = !DILocation(line: 410, column: 34, scope: !887)
!892 = !DILocation(line: 411, column: 12, scope: !887)
!893 = !DILocation(line: 411, column: 19, scope: !887)
!894 = !DILocation(line: 411, column: 10, scope: !887)
!895 = !DILocation(line: 412, column: 12, scope: !887)
!896 = !DILocation(line: 412, column: 19, scope: !887)
!897 = !DILocation(line: 412, column: 33, scope: !887)
!898 = !DILocation(line: 412, column: 40, scope: !887)
!899 = !DILocation(line: 412, column: 49, scope: !887)
!900 = !DILocation(line: 412, column: 29, scope: !887)
!901 = !DILocation(line: 413, column: 6, scope: !887)
!902 = !DILocation(line: 413, column: 13, scope: !887)
!903 = !DILocation(line: 413, column: 22, scope: !887)
!904 = !DILocation(line: 412, column: 54, scope: !887)
!905 = !DILocation(line: 413, column: 31, scope: !887)
!906 = !DILocation(line: 413, column: 38, scope: !887)
!907 = !DILocation(line: 413, column: 47, scope: !887)
!908 = !DILocation(line: 413, column: 27, scope: !887)
!909 = !DILocation(line: 412, column: 10, scope: !887)
!910 = !DILocation(line: 412, column: 3, scope: !887)
!911 = distinct !DISubprogram(name: "stun_get_method_str", scope: !2, file: !2, line: 416, type: !912, scopeLine: 416, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!912 = !DISubroutineType(types: !913)
!913 = !{!237, !244, !232}
!914 = !DILocalVariable(name: "buf", arg: 1, scope: !911, file: !2, line: 416, type: !244)
!915 = !DILocation(line: 416, column: 45, scope: !911)
!916 = !DILocalVariable(name: "len", arg: 2, scope: !911, file: !2, line: 416, type: !232)
!917 = !DILocation(line: 416, column: 57, scope: !911)
!918 = !DILocation(line: 417, column: 7, scope: !919)
!919 = distinct !DILexicalBlock(scope: !911, file: !2, line: 417, column: 6)
!920 = !DILocation(line: 417, column: 11, scope: !919)
!921 = !DILocation(line: 417, column: 14, scope: !919)
!922 = !DILocation(line: 417, column: 17, scope: !919)
!923 = !DILocation(line: 417, column: 6, scope: !911)
!924 = !DILocation(line: 417, column: 21, scope: !919)
!925 = !DILocalVariable(name: "tt", scope: !911, file: !2, line: 419, type: !237)
!926 = !DILocation(line: 419, column: 12, scope: !911)
!927 = !DILocation(line: 419, column: 17, scope: !911)
!928 = !DILocation(line: 421, column: 11, scope: !911)
!929 = !DILocation(line: 421, column: 14, scope: !911)
!930 = !DILocation(line: 421, column: 28, scope: !911)
!931 = !DILocation(line: 421, column: 31, scope: !911)
!932 = !DILocation(line: 421, column: 40, scope: !911)
!933 = !DILocation(line: 421, column: 24, scope: !911)
!934 = !DILocation(line: 422, column: 7, scope: !911)
!935 = !DILocation(line: 422, column: 10, scope: !911)
!936 = !DILocation(line: 422, column: 19, scope: !911)
!937 = !DILocation(line: 421, column: 45, scope: !911)
!938 = !DILocation(line: 422, column: 28, scope: !911)
!939 = !DILocation(line: 422, column: 31, scope: !911)
!940 = !DILocation(line: 422, column: 40, scope: !911)
!941 = !DILocation(line: 422, column: 24, scope: !911)
!942 = !DILocation(line: 421, column: 10, scope: !911)
!943 = !DILocation(line: 421, column: 3, scope: !911)
!944 = !DILocation(line: 423, column: 1, scope: !911)
!945 = distinct !DISubprogram(name: "stun_get_msg_type_str", scope: !2, file: !2, line: 425, type: !912, scopeLine: 425, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!946 = !DILocalVariable(name: "buf", arg: 1, scope: !945, file: !2, line: 425, type: !244)
!947 = !DILocation(line: 425, column: 47, scope: !945)
!948 = !DILocalVariable(name: "len", arg: 2, scope: !945, file: !2, line: 425, type: !232)
!949 = !DILocation(line: 425, column: 59, scope: !945)
!950 = !DILocation(line: 426, column: 7, scope: !951)
!951 = distinct !DILexicalBlock(scope: !945, file: !2, line: 426, column: 6)
!952 = !DILocation(line: 426, column: 11, scope: !951)
!953 = !DILocation(line: 426, column: 14, scope: !951)
!954 = !DILocation(line: 426, column: 17, scope: !951)
!955 = !DILocation(line: 426, column: 6, scope: !945)
!956 = !DILocation(line: 426, column: 21, scope: !951)
!957 = !DILocation(line: 427, column: 12, scope: !945)
!958 = !DILocation(line: 427, column: 11, scope: !945)
!959 = !DILocation(line: 427, column: 48, scope: !945)
!960 = !DILocation(line: 427, column: 10, scope: !945)
!961 = !DILocation(line: 427, column: 3, scope: !945)
!962 = !DILocation(line: 428, column: 1, scope: !945)
!963 = distinct !DISubprogram(name: "is_channel_msg_str", scope: !2, file: !2, line: 430, type: !861, scopeLine: 430, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!964 = !DILocalVariable(name: "buf", arg: 1, scope: !963, file: !2, line: 430, type: !244)
!965 = !DILocation(line: 430, column: 39, scope: !963)
!966 = !DILocalVariable(name: "blen", arg: 2, scope: !963, file: !2, line: 430, type: !232)
!967 = !DILocation(line: 430, column: 51, scope: !963)
!968 = !DILocation(line: 431, column: 11, scope: !963)
!969 = !DILocation(line: 431, column: 15, scope: !963)
!970 = !DILocation(line: 431, column: 18, scope: !963)
!971 = !DILocation(line: 431, column: 22, scope: !963)
!972 = !DILocation(line: 431, column: 26, scope: !963)
!973 = !DILocation(line: 431, column: 29, scope: !963)
!974 = !DILocation(line: 0, scope: !963)
!975 = !DILocation(line: 431, column: 3, scope: !963)
!976 = distinct !DISubprogram(name: "stun_is_command_message_str", scope: !2, file: !2, line: 436, type: !861, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!977 = !DILocalVariable(name: "buf", arg: 1, scope: !976, file: !2, line: 436, type: !244)
!978 = !DILocation(line: 436, column: 48, scope: !976)
!979 = !DILocalVariable(name: "blen", arg: 2, scope: !976, file: !2, line: 436, type: !232)
!980 = !DILocation(line: 436, column: 60, scope: !976)
!981 = !DILocation(line: 438, column: 6, scope: !982)
!982 = distinct !DILexicalBlock(scope: !976, file: !2, line: 438, column: 6)
!983 = !DILocation(line: 438, column: 10, scope: !982)
!984 = !DILocation(line: 438, column: 13, scope: !982)
!985 = !DILocation(line: 438, column: 18, scope: !982)
!986 = !DILocation(line: 438, column: 6, scope: !976)
!987 = !DILocation(line: 439, column: 8, scope: !988)
!988 = distinct !DILexicalBlock(scope: !989, file: !2, line: 439, column: 7)
!989 = distinct !DILexicalBlock(scope: !982, file: !2, line: 438, column: 41)
!990 = !DILocation(line: 439, column: 7, scope: !989)
!991 = !DILocation(line: 440, column: 20, scope: !992)
!992 = distinct !DILexicalBlock(scope: !993, file: !2, line: 440, column: 8)
!993 = distinct !DILexicalBlock(scope: !988, file: !2, line: 439, column: 64)
!994 = !DILocation(line: 440, column: 9, scope: !992)
!995 = !DILocation(line: 440, column: 28, scope: !992)
!996 = !DILocation(line: 440, column: 50, scope: !992)
!997 = !DILocation(line: 440, column: 8, scope: !993)
!998 = !DILocation(line: 441, column: 9, scope: !999)
!999 = distinct !DILexicalBlock(scope: !1000, file: !2, line: 441, column: 9)
!1000 = distinct !DILexicalBlock(scope: !992, file: !2, line: 440, column: 56)
!1001 = !DILocation(line: 442, column: 7, scope: !999)
!1002 = !DILocation(line: 441, column: 9, scope: !1000)
!1003 = !DILocalVariable(name: "len", scope: !1004, file: !2, line: 443, type: !237)
!1004 = distinct !DILexicalBlock(scope: !999, file: !2, line: 442, column: 29)
!1005 = !DILocation(line: 443, column: 15, scope: !1004)
!1006 = !DILocation(line: 443, column: 21, scope: !1004)
!1007 = !DILocation(line: 444, column: 11, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !1004, file: !2, line: 444, column: 10)
!1009 = !DILocation(line: 444, column: 15, scope: !1008)
!1010 = !DILocation(line: 444, column: 25, scope: !1008)
!1011 = !DILocation(line: 444, column: 10, scope: !1004)
!1012 = !DILocation(line: 445, column: 21, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !1014, file: !2, line: 445, column: 11)
!1014 = distinct !DILexicalBlock(scope: !1008, file: !2, line: 444, column: 31)
!1015 = !DILocation(line: 445, column: 25, scope: !1013)
!1016 = !DILocation(line: 445, column: 11, scope: !1013)
!1017 = !DILocation(line: 445, column: 50, scope: !1013)
!1018 = !DILocation(line: 445, column: 47, scope: !1013)
!1019 = !DILocation(line: 445, column: 11, scope: !1014)
!1020 = !DILocation(line: 446, column: 8, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1013, file: !2, line: 445, column: 56)
!1022 = !DILocation(line: 448, column: 6, scope: !1014)
!1023 = !DILocation(line: 449, column: 5, scope: !1004)
!1024 = !DILocation(line: 450, column: 4, scope: !1000)
!1025 = !DILocation(line: 451, column: 3, scope: !993)
!1026 = !DILocation(line: 452, column: 2, scope: !989)
!1027 = !DILocation(line: 453, column: 2, scope: !976)
!1028 = !DILocation(line: 454, column: 1, scope: !976)
!1029 = distinct !DISubprogram(name: "old_stun_is_command_message_str", scope: !2, file: !2, line: 456, type: !1030, scopeLine: 457, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!199, !244, !232, !247}
!1032 = !DILocalVariable(name: "buf", arg: 1, scope: !1029, file: !2, line: 456, type: !244)
!1033 = !DILocation(line: 456, column: 52, scope: !1029)
!1034 = !DILocalVariable(name: "blen", arg: 2, scope: !1029, file: !2, line: 456, type: !232)
!1035 = !DILocation(line: 456, column: 64, scope: !1029)
!1036 = !DILocalVariable(name: "cookie", arg: 3, scope: !1029, file: !2, line: 456, type: !247)
!1037 = !DILocation(line: 456, column: 80, scope: !1029)
!1038 = !DILocation(line: 458, column: 6, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1029, file: !2, line: 458, column: 6)
!1040 = !DILocation(line: 458, column: 10, scope: !1039)
!1041 = !DILocation(line: 458, column: 13, scope: !1039)
!1042 = !DILocation(line: 458, column: 18, scope: !1039)
!1043 = !DILocation(line: 458, column: 6, scope: !1029)
!1044 = !DILocation(line: 459, column: 8, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1046, file: !2, line: 459, column: 7)
!1046 = distinct !DILexicalBlock(scope: !1039, file: !2, line: 458, column: 41)
!1047 = !DILocation(line: 459, column: 7, scope: !1046)
!1048 = !DILocation(line: 460, column: 20, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1050, file: !2, line: 460, column: 8)
!1050 = distinct !DILexicalBlock(scope: !1045, file: !2, line: 459, column: 64)
!1051 = !DILocation(line: 460, column: 9, scope: !1049)
!1052 = !DILocation(line: 460, column: 28, scope: !1049)
!1053 = !DILocation(line: 460, column: 50, scope: !1049)
!1054 = !DILocation(line: 460, column: 8, scope: !1050)
!1055 = !DILocation(line: 461, column: 9, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1057, file: !2, line: 461, column: 9)
!1057 = distinct !DILexicalBlock(scope: !1049, file: !2, line: 460, column: 56)
!1058 = !DILocation(line: 462, column: 7, scope: !1056)
!1059 = !DILocation(line: 461, column: 9, scope: !1057)
!1060 = !DILocalVariable(name: "len", scope: !1061, file: !2, line: 463, type: !237)
!1061 = distinct !DILexicalBlock(scope: !1056, file: !2, line: 462, column: 29)
!1062 = !DILocation(line: 463, column: 15, scope: !1061)
!1063 = !DILocation(line: 463, column: 21, scope: !1061)
!1064 = !DILocation(line: 464, column: 11, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1061, file: !2, line: 464, column: 10)
!1066 = !DILocation(line: 464, column: 15, scope: !1065)
!1067 = !DILocation(line: 464, column: 25, scope: !1065)
!1068 = !DILocation(line: 464, column: 10, scope: !1061)
!1069 = !DILocation(line: 465, column: 21, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1071, file: !2, line: 465, column: 11)
!1071 = distinct !DILexicalBlock(scope: !1065, file: !2, line: 464, column: 31)
!1072 = !DILocation(line: 465, column: 25, scope: !1070)
!1073 = !DILocation(line: 465, column: 11, scope: !1070)
!1074 = !DILocation(line: 465, column: 50, scope: !1070)
!1075 = !DILocation(line: 465, column: 47, scope: !1070)
!1076 = !DILocation(line: 465, column: 11, scope: !1071)
!1077 = !DILocation(line: 466, column: 18, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1070, file: !2, line: 465, column: 56)
!1079 = !DILocation(line: 466, column: 9, scope: !1078)
!1080 = !DILocation(line: 466, column: 16, scope: !1078)
!1081 = !DILocation(line: 467, column: 8, scope: !1078)
!1082 = !DILocation(line: 469, column: 6, scope: !1071)
!1083 = !DILocation(line: 470, column: 5, scope: !1061)
!1084 = !DILocation(line: 471, column: 4, scope: !1057)
!1085 = !DILocation(line: 472, column: 3, scope: !1050)
!1086 = !DILocation(line: 473, column: 2, scope: !1046)
!1087 = !DILocation(line: 474, column: 2, scope: !1029)
!1088 = !DILocation(line: 475, column: 1, scope: !1029)
!1089 = distinct !DISubprogram(name: "stun_is_command_message_full_check_str", scope: !2, file: !2, line: 477, type: !1090, scopeLine: 477, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{!199, !244, !232, !199, !1092}
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!1093 = !DILocalVariable(name: "buf", arg: 1, scope: !1089, file: !2, line: 477, type: !244)
!1094 = !DILocation(line: 477, column: 59, scope: !1089)
!1095 = !DILocalVariable(name: "blen", arg: 2, scope: !1089, file: !2, line: 477, type: !232)
!1096 = !DILocation(line: 477, column: 71, scope: !1089)
!1097 = !DILocalVariable(name: "must_check_fingerprint", arg: 3, scope: !1089, file: !2, line: 477, type: !199)
!1098 = !DILocation(line: 477, column: 81, scope: !1089)
!1099 = !DILocalVariable(name: "fingerprint_present", arg: 4, scope: !1089, file: !2, line: 477, type: !1092)
!1100 = !DILocation(line: 477, column: 110, scope: !1089)
!1101 = !DILocation(line: 478, column: 34, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1089, file: !2, line: 478, column: 5)
!1103 = !DILocation(line: 478, column: 38, scope: !1102)
!1104 = !DILocation(line: 478, column: 6, scope: !1102)
!1105 = !DILocation(line: 478, column: 5, scope: !1089)
!1106 = !DILocation(line: 479, column: 3, scope: !1102)
!1107 = !DILocalVariable(name: "sar", scope: !1089, file: !2, line: 480, type: !252)
!1108 = !DILocation(line: 480, column: 16, scope: !1089)
!1109 = !DILocation(line: 480, column: 54, scope: !1089)
!1110 = !DILocation(line: 480, column: 59, scope: !1089)
!1111 = !DILocation(line: 480, column: 22, scope: !1089)
!1112 = !DILocation(line: 481, column: 6, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1089, file: !2, line: 481, column: 5)
!1114 = !DILocation(line: 481, column: 5, scope: !1089)
!1115 = !DILocation(line: 482, column: 6, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1117, file: !2, line: 482, column: 6)
!1117 = distinct !DILexicalBlock(scope: !1113, file: !2, line: 481, column: 11)
!1118 = !DILocation(line: 482, column: 6, scope: !1117)
!1119 = !DILocation(line: 483, column: 5, scope: !1116)
!1120 = !DILocation(line: 483, column: 25, scope: !1116)
!1121 = !DILocation(line: 483, column: 4, scope: !1116)
!1122 = !DILocation(line: 484, column: 26, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1117, file: !2, line: 484, column: 6)
!1124 = !DILocation(line: 484, column: 30, scope: !1123)
!1125 = !DILocation(line: 484, column: 6, scope: !1123)
!1126 = !DILocation(line: 484, column: 36, scope: !1123)
!1127 = !DILocation(line: 484, column: 6, scope: !1117)
!1128 = !DILocation(line: 485, column: 4, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1123, file: !2, line: 484, column: 60)
!1130 = !DILocation(line: 487, column: 11, scope: !1117)
!1131 = !DILocation(line: 487, column: 10, scope: !1117)
!1132 = !DILocation(line: 487, column: 3, scope: !1117)
!1133 = !DILocation(line: 489, column: 23, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1089, file: !2, line: 489, column: 5)
!1135 = !DILocation(line: 489, column: 5, scope: !1134)
!1136 = !DILocation(line: 489, column: 28, scope: !1134)
!1137 = !DILocation(line: 489, column: 5, scope: !1089)
!1138 = !DILocation(line: 490, column: 3, scope: !1134)
!1139 = !DILocalVariable(name: "fingerprint", scope: !1089, file: !2, line: 491, type: !240)
!1140 = !DILocation(line: 491, column: 18, scope: !1089)
!1141 = !DILocation(line: 491, column: 69, scope: !1089)
!1142 = !DILocation(line: 491, column: 49, scope: !1089)
!1143 = !DILocation(line: 492, column: 6, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1089, file: !2, line: 492, column: 5)
!1145 = !DILocation(line: 492, column: 5, scope: !1089)
!1146 = !DILocation(line: 493, column: 11, scope: !1144)
!1147 = !DILocation(line: 493, column: 10, scope: !1144)
!1148 = !DILocation(line: 493, column: 3, scope: !1144)
!1149 = !DILocalVariable(name: "crc32len", scope: !1089, file: !2, line: 494, type: !242)
!1150 = !DILocation(line: 494, column: 11, scope: !1089)
!1151 = !DILocation(line: 494, column: 51, scope: !1089)
!1152 = !DILocation(line: 494, column: 64, scope: !1089)
!1153 = !DILocation(line: 494, column: 63, scope: !1089)
!1154 = !DILocation(line: 494, column: 68, scope: !1089)
!1155 = !DILocation(line: 494, column: 22, scope: !1089)
!1156 = !DILocalVariable(name: "ret", scope: !1089, file: !2, line: 495, type: !199)
!1157 = !DILocation(line: 495, column: 6, scope: !1089)
!1158 = !DILocation(line: 495, column: 14, scope: !1089)
!1159 = !DILocation(line: 495, column: 13, scope: !1089)
!1160 = !DILocation(line: 495, column: 29, scope: !1089)
!1161 = !DILocation(line: 495, column: 26, scope: !1089)
!1162 = !DILocation(line: 496, column: 5, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1089, file: !2, line: 496, column: 5)
!1164 = !DILocation(line: 496, column: 9, scope: !1163)
!1165 = !DILocation(line: 496, column: 12, scope: !1163)
!1166 = !DILocation(line: 496, column: 5, scope: !1089)
!1167 = !DILocation(line: 497, column: 26, scope: !1163)
!1168 = !DILocation(line: 497, column: 4, scope: !1163)
!1169 = !DILocation(line: 497, column: 24, scope: !1163)
!1170 = !DILocation(line: 497, column: 3, scope: !1163)
!1171 = !DILocation(line: 498, column: 9, scope: !1089)
!1172 = !DILocation(line: 498, column: 2, scope: !1089)
!1173 = !DILocation(line: 499, column: 1, scope: !1089)
!1174 = distinct !DISubprogram(name: "stun_attr_get_first_by_type_str", scope: !2, file: !2, line: 1377, type: !1175, scopeLine: 1377, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!252, !244, !232, !237}
!1177 = !DILocalVariable(name: "buf", arg: 1, scope: !1174, file: !2, line: 1377, type: !244)
!1178 = !DILocation(line: 1377, column: 62, scope: !1174)
!1179 = !DILocalVariable(name: "len", arg: 2, scope: !1174, file: !2, line: 1377, type: !232)
!1180 = !DILocation(line: 1377, column: 74, scope: !1174)
!1181 = !DILocalVariable(name: "attr_type", arg: 3, scope: !1174, file: !2, line: 1377, type: !237)
!1182 = !DILocation(line: 1377, column: 88, scope: !1174)
!1183 = !DILocalVariable(name: "attr", scope: !1174, file: !2, line: 1379, type: !252)
!1184 = !DILocation(line: 1379, column: 17, scope: !1174)
!1185 = !DILocation(line: 1379, column: 46, scope: !1174)
!1186 = !DILocation(line: 1379, column: 50, scope: !1174)
!1187 = !DILocation(line: 1379, column: 22, scope: !1174)
!1188 = !DILocation(line: 1380, column: 3, scope: !1174)
!1189 = !DILocation(line: 1380, column: 9, scope: !1174)
!1190 = !DILocation(line: 1381, column: 27, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1192, file: !2, line: 1381, column: 8)
!1192 = distinct !DILexicalBlock(scope: !1174, file: !2, line: 1380, column: 15)
!1193 = !DILocation(line: 1381, column: 8, scope: !1191)
!1194 = !DILocation(line: 1381, column: 36, scope: !1191)
!1195 = !DILocation(line: 1381, column: 33, scope: !1191)
!1196 = !DILocation(line: 1381, column: 8, scope: !1192)
!1197 = !DILocation(line: 1382, column: 14, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1191, file: !2, line: 1381, column: 47)
!1199 = !DILocation(line: 1382, column: 7, scope: !1198)
!1200 = !DILocation(line: 1384, column: 33, scope: !1192)
!1201 = !DILocation(line: 1384, column: 37, scope: !1192)
!1202 = !DILocation(line: 1384, column: 41, scope: !1192)
!1203 = !DILocation(line: 1384, column: 10, scope: !1192)
!1204 = !DILocation(line: 1384, column: 9, scope: !1192)
!1205 = distinct !{!1205, !1188, !1206, !855}
!1206 = !DILocation(line: 1385, column: 3, scope: !1174)
!1207 = !DILocation(line: 1387, column: 3, scope: !1174)
!1208 = !DILocation(line: 1388, column: 1, scope: !1174)
!1209 = distinct !DISubprogram(name: "stun_attr_get_len", scope: !2, file: !2, line: 1275, type: !1210, scopeLine: 1275, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{!199, !252}
!1212 = !DILocalVariable(name: "attr", arg: 1, scope: !1209, file: !2, line: 1275, type: !252)
!1213 = !DILocation(line: 1275, column: 37, scope: !1209)
!1214 = !DILocation(line: 1276, column: 6, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1209, file: !2, line: 1276, column: 6)
!1216 = !DILocation(line: 1276, column: 6, scope: !1209)
!1217 = !DILocation(line: 1277, column: 18, scope: !1215)
!1218 = !DILocation(line: 1277, column: 12, scope: !1215)
!1219 = !DILocation(line: 1277, column: 5, scope: !1215)
!1220 = !DILocation(line: 1278, column: 3, scope: !1209)
!1221 = !DILocation(line: 1279, column: 1, scope: !1209)
!1222 = distinct !DISubprogram(name: "stun_attr_get_value", scope: !2, file: !2, line: 1281, type: !1223, scopeLine: 1281, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{!244, !252}
!1225 = !DILocalVariable(name: "attr", arg: 1, scope: !1222, file: !2, line: 1281, type: !252)
!1226 = !DILocation(line: 1281, column: 50, scope: !1222)
!1227 = !DILocation(line: 1282, column: 6, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1222, file: !2, line: 1282, column: 6)
!1229 = !DILocation(line: 1282, column: 6, scope: !1222)
!1230 = !DILocalVariable(name: "len", scope: !1231, file: !2, line: 1283, type: !199)
!1231 = distinct !DILexicalBlock(scope: !1228, file: !2, line: 1282, column: 12)
!1232 = !DILocation(line: 1283, column: 9, scope: !1231)
!1233 = !DILocation(line: 1283, column: 21, scope: !1231)
!1234 = !DILocation(line: 1283, column: 15, scope: !1231)
!1235 = !DILocation(line: 1284, column: 8, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1231, file: !2, line: 1284, column: 8)
!1237 = !DILocation(line: 1284, column: 11, scope: !1236)
!1238 = !DILocation(line: 1284, column: 8, scope: !1231)
!1239 = !DILocation(line: 1284, column: 15, scope: !1236)
!1240 = !DILocation(line: 1285, column: 29, scope: !1231)
!1241 = !DILocation(line: 1285, column: 34, scope: !1231)
!1242 = !DILocation(line: 1285, column: 5, scope: !1231)
!1243 = !DILocation(line: 1287, column: 3, scope: !1222)
!1244 = !DILocation(line: 1288, column: 1, scope: !1222)
!1245 = distinct !DISubprogram(name: "ns_crc32", scope: !2, file: !2, line: 1757, type: !1246, scopeLine: 1758, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !194, retainedNodes: !305)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{!242, !244, !242}
!1248 = !DILocalVariable(name: "buffer", arg: 1, scope: !1245, file: !2, line: 1757, type: !244)
!1249 = !DILocation(line: 1757, column: 41, scope: !1245)
!1250 = !DILocalVariable(name: "len", arg: 2, scope: !1245, file: !2, line: 1757, type: !242)
!1251 = !DILocation(line: 1757, column: 58, scope: !1245)
!1252 = !DILocalVariable(name: "crc", scope: !1245, file: !2, line: 1759, type: !242)
!1253 = !DILocation(line: 1759, column: 11, scope: !1245)
!1254 = !DILocation(line: 1760, column: 2, scope: !1245)
!1255 = !DILocation(line: 1760, column: 13, scope: !1245)
!1256 = !DILocation(line: 1760, column: 18, scope: !1245)
!1257 = distinct !{!1257, !1254, !1256, !855}
!1258 = !DILocation(line: 1761, column: 11, scope: !1245)
!1259 = !DILocation(line: 1761, column: 10, scope: !1245)
!1260 = !DILocation(line: 1761, column: 2, scope: !1245)
!1261 = distinct !DISubprogram(name: "stun_is_command_message_offset_str", scope: !2, file: !2, line: 501, type: !1262, scopeLine: 501, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!1262 = !DISubroutineType(types: !1263)
!1263 = !{!199, !244, !232, !199}
!1264 = !DILocalVariable(name: "buf", arg: 1, scope: !1261, file: !2, line: 501, type: !244)
!1265 = !DILocation(line: 501, column: 55, scope: !1261)
!1266 = !DILocalVariable(name: "blen", arg: 2, scope: !1261, file: !2, line: 501, type: !232)
!1267 = !DILocation(line: 501, column: 67, scope: !1261)
!1268 = !DILocalVariable(name: "offset", arg: 3, scope: !1261, file: !2, line: 501, type: !199)
!1269 = !DILocation(line: 501, column: 77, scope: !1261)
!1270 = !DILocation(line: 502, column: 38, scope: !1261)
!1271 = !DILocation(line: 502, column: 44, scope: !1261)
!1272 = !DILocation(line: 502, column: 42, scope: !1261)
!1273 = !DILocation(line: 502, column: 52, scope: !1261)
!1274 = !DILocation(line: 502, column: 10, scope: !1261)
!1275 = !DILocation(line: 502, column: 3, scope: !1261)
!1276 = distinct !DISubprogram(name: "stun_is_request_str", scope: !2, file: !2, line: 505, type: !861, scopeLine: 505, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!1277 = !DILocalVariable(name: "buf", arg: 1, scope: !1276, file: !2, line: 505, type: !244)
!1278 = !DILocation(line: 505, column: 40, scope: !1276)
!1279 = !DILocalVariable(name: "len", arg: 2, scope: !1276, file: !2, line: 505, type: !232)
!1280 = !DILocation(line: 505, column: 52, scope: !1276)
!1281 = !DILocation(line: 506, column: 25, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1276, file: !2, line: 506, column: 6)
!1283 = !DILocation(line: 506, column: 29, scope: !1282)
!1284 = !DILocation(line: 506, column: 6, scope: !1282)
!1285 = !DILocation(line: 506, column: 6, scope: !1276)
!1286 = !DILocation(line: 506, column: 35, scope: !1282)
!1287 = !DILocation(line: 507, column: 10, scope: !1276)
!1288 = !DILocation(line: 507, column: 3, scope: !1276)
!1289 = !DILocation(line: 508, column: 1, scope: !1276)
!1290 = distinct !DISubprogram(name: "stun_is_success_response_str", scope: !2, file: !2, line: 510, type: !861, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!1291 = !DILocalVariable(name: "buf", arg: 1, scope: !1290, file: !2, line: 510, type: !244)
!1292 = !DILocation(line: 510, column: 49, scope: !1290)
!1293 = !DILocalVariable(name: "len", arg: 2, scope: !1290, file: !2, line: 510, type: !232)
!1294 = !DILocation(line: 510, column: 61, scope: !1290)
!1295 = !DILocation(line: 511, column: 25, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1290, file: !2, line: 511, column: 6)
!1297 = !DILocation(line: 511, column: 29, scope: !1296)
!1298 = !DILocation(line: 511, column: 6, scope: !1296)
!1299 = !DILocation(line: 511, column: 6, scope: !1290)
!1300 = !DILocation(line: 511, column: 35, scope: !1296)
!1301 = !DILocation(line: 512, column: 10, scope: !1290)
!1302 = !DILocation(line: 512, column: 3, scope: !1290)
!1303 = !DILocation(line: 513, column: 1, scope: !1290)
!1304 = distinct !DISubprogram(name: "stun_is_error_response_str", scope: !2, file: !2, line: 515, type: !1305, scopeLine: 515, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!1305 = !DISubroutineType(types: !1306)
!1306 = !{!199, !244, !232, !1092, !226, !232}
!1307 = !DILocalVariable(name: "buf", arg: 1, scope: !1304, file: !2, line: 515, type: !244)
!1308 = !DILocation(line: 515, column: 47, scope: !1304)
!1309 = !DILocalVariable(name: "len", arg: 2, scope: !1304, file: !2, line: 515, type: !232)
!1310 = !DILocation(line: 515, column: 59, scope: !1304)
!1311 = !DILocalVariable(name: "err_code", arg: 3, scope: !1304, file: !2, line: 515, type: !1092)
!1312 = !DILocation(line: 515, column: 69, scope: !1304)
!1313 = !DILocalVariable(name: "err_msg", arg: 4, scope: !1304, file: !2, line: 515, type: !226)
!1314 = !DILocation(line: 515, column: 88, scope: !1304)
!1315 = !DILocalVariable(name: "err_msg_size", arg: 5, scope: !1304, file: !2, line: 515, type: !232)
!1316 = !DILocation(line: 515, column: 104, scope: !1304)
!1317 = !DILocation(line: 516, column: 25, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1304, file: !2, line: 516, column: 6)
!1319 = !DILocation(line: 516, column: 29, scope: !1318)
!1320 = !DILocation(line: 516, column: 6, scope: !1318)
!1321 = !DILocation(line: 516, column: 6, scope: !1304)
!1322 = !DILocation(line: 516, column: 35, scope: !1318)
!1323 = !DILocation(line: 517, column: 6, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1304, file: !2, line: 517, column: 6)
!1325 = !DILocation(line: 517, column: 6, scope: !1304)
!1326 = !DILocation(line: 518, column: 8, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1328, file: !2, line: 518, column: 8)
!1328 = distinct !DILexicalBlock(scope: !1324, file: !2, line: 517, column: 56)
!1329 = !DILocation(line: 518, column: 8, scope: !1328)
!1330 = !DILocalVariable(name: "sar", scope: !1331, file: !2, line: 519, type: !252)
!1331 = distinct !DILexicalBlock(scope: !1327, file: !2, line: 518, column: 18)
!1332 = !DILocation(line: 519, column: 21, scope: !1331)
!1333 = !DILocation(line: 519, column: 59, scope: !1331)
!1334 = !DILocation(line: 519, column: 64, scope: !1331)
!1335 = !DILocation(line: 519, column: 27, scope: !1331)
!1336 = !DILocation(line: 520, column: 10, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1331, file: !2, line: 520, column: 10)
!1338 = !DILocation(line: 520, column: 10, scope: !1331)
!1339 = !DILocation(line: 521, column: 29, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1341, file: !2, line: 521, column: 11)
!1341 = distinct !DILexicalBlock(scope: !1337, file: !2, line: 520, column: 15)
!1342 = !DILocation(line: 521, column: 11, scope: !1340)
!1343 = !DILocation(line: 521, column: 33, scope: !1340)
!1344 = !DILocation(line: 521, column: 11, scope: !1341)
!1345 = !DILocalVariable(name: "val", scope: !1346, file: !2, line: 522, type: !244)
!1346 = distinct !DILexicalBlock(scope: !1340, file: !2, line: 521, column: 38)
!1347 = !DILocation(line: 522, column: 24, scope: !1346)
!1348 = !DILocation(line: 522, column: 66, scope: !1346)
!1349 = !DILocation(line: 522, column: 46, scope: !1346)
!1350 = !DILocation(line: 523, column: 25, scope: !1346)
!1351 = !DILocation(line: 523, column: 31, scope: !1346)
!1352 = !DILocation(line: 523, column: 38, scope: !1346)
!1353 = !DILocation(line: 523, column: 36, scope: !1346)
!1354 = !DILocation(line: 523, column: 10, scope: !1346)
!1355 = !DILocation(line: 523, column: 18, scope: !1346)
!1356 = !DILocation(line: 524, column: 12, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1346, file: !2, line: 524, column: 12)
!1358 = !DILocation(line: 524, column: 20, scope: !1357)
!1359 = !DILocation(line: 524, column: 23, scope: !1357)
!1360 = !DILocation(line: 524, column: 35, scope: !1357)
!1361 = !DILocation(line: 524, column: 12, scope: !1346)
!1362 = !DILocation(line: 525, column: 10, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1357, file: !2, line: 524, column: 39)
!1364 = !DILocation(line: 525, column: 20, scope: !1363)
!1365 = !DILocation(line: 526, column: 31, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1363, file: !2, line: 526, column: 13)
!1367 = !DILocation(line: 526, column: 13, scope: !1366)
!1368 = !DILocation(line: 526, column: 35, scope: !1366)
!1369 = !DILocation(line: 526, column: 13, scope: !1363)
!1370 = !DILocalVariable(name: "msg_len", scope: !1371, file: !2, line: 527, type: !232)
!1371 = distinct !DILexicalBlock(scope: !1366, file: !2, line: 526, column: 39)
!1372 = !DILocation(line: 527, column: 18, scope: !1371)
!1373 = !DILocation(line: 527, column: 46, scope: !1371)
!1374 = !DILocation(line: 527, column: 28, scope: !1371)
!1375 = !DILocation(line: 527, column: 51, scope: !1371)
!1376 = !DILocation(line: 528, column: 14, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1371, file: !2, line: 528, column: 14)
!1378 = !DILocation(line: 528, column: 23, scope: !1377)
!1379 = !DILocation(line: 528, column: 35, scope: !1377)
!1380 = !DILocation(line: 528, column: 21, scope: !1377)
!1381 = !DILocation(line: 528, column: 14, scope: !1371)
!1382 = !DILocation(line: 529, column: 20, scope: !1377)
!1383 = !DILocation(line: 529, column: 33, scope: !1377)
!1384 = !DILocation(line: 529, column: 19, scope: !1377)
!1385 = !DILocation(line: 529, column: 12, scope: !1377)
!1386 = !DILocation(line: 530, column: 17, scope: !1371)
!1387 = !DILocation(line: 530, column: 20, scope: !1371)
!1388 = !DILocation(line: 530, column: 24, scope: !1371)
!1389 = !DILocation(line: 530, column: 33, scope: !1371)
!1390 = !DILocation(line: 530, column: 11, scope: !1371)
!1391 = !DILocation(line: 531, column: 11, scope: !1371)
!1392 = !DILocation(line: 531, column: 19, scope: !1371)
!1393 = !DILocation(line: 531, column: 27, scope: !1371)
!1394 = !DILocation(line: 532, column: 10, scope: !1371)
!1395 = !DILocation(line: 533, column: 9, scope: !1363)
!1396 = !DILocation(line: 534, column: 8, scope: !1346)
!1397 = !DILocation(line: 535, column: 7, scope: !1341)
!1398 = !DILocation(line: 536, column: 5, scope: !1331)
!1399 = !DILocation(line: 537, column: 5, scope: !1328)
!1400 = !DILocation(line: 539, column: 3, scope: !1304)
!1401 = !DILocation(line: 540, column: 1, scope: !1304)
!1402 = distinct !DISubprogram(name: "stun_is_challenge_response_str", scope: !2, file: !2, line: 542, type: !1403, scopeLine: 544, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!1403 = !DISubroutineType(types: !1404)
!1404 = !{!199, !244, !232, !1092, !226, !232, !226, !226, !226, !1092}
!1405 = !DILocalVariable(name: "buf", arg: 1, scope: !1402, file: !2, line: 542, type: !244)
!1406 = !DILocation(line: 542, column: 51, scope: !1402)
!1407 = !DILocalVariable(name: "len", arg: 2, scope: !1402, file: !2, line: 542, type: !232)
!1408 = !DILocation(line: 542, column: 63, scope: !1402)
!1409 = !DILocalVariable(name: "err_code", arg: 3, scope: !1402, file: !2, line: 542, type: !1092)
!1410 = !DILocation(line: 542, column: 73, scope: !1402)
!1411 = !DILocalVariable(name: "err_msg", arg: 4, scope: !1402, file: !2, line: 542, type: !226)
!1412 = !DILocation(line: 542, column: 92, scope: !1402)
!1413 = !DILocalVariable(name: "err_msg_size", arg: 5, scope: !1402, file: !2, line: 542, type: !232)
!1414 = !DILocation(line: 542, column: 108, scope: !1402)
!1415 = !DILocalVariable(name: "realm", arg: 6, scope: !1402, file: !2, line: 543, type: !226)
!1416 = !DILocation(line: 543, column: 14, scope: !1402)
!1417 = !DILocalVariable(name: "nonce", arg: 7, scope: !1402, file: !2, line: 543, type: !226)
!1418 = !DILocation(line: 543, column: 30, scope: !1402)
!1419 = !DILocalVariable(name: "server_name", arg: 8, scope: !1402, file: !2, line: 543, type: !226)
!1420 = !DILocation(line: 543, column: 46, scope: !1402)
!1421 = !DILocalVariable(name: "oauth", arg: 9, scope: !1402, file: !2, line: 543, type: !1092)
!1422 = !DILocation(line: 543, column: 64, scope: !1402)
!1423 = !DILocalVariable(name: "ret", scope: !1402, file: !2, line: 545, type: !199)
!1424 = !DILocation(line: 545, column: 6, scope: !1402)
!1425 = !DILocation(line: 545, column: 39, scope: !1402)
!1426 = !DILocation(line: 545, column: 44, scope: !1402)
!1427 = !DILocation(line: 545, column: 49, scope: !1402)
!1428 = !DILocation(line: 545, column: 59, scope: !1402)
!1429 = !DILocation(line: 545, column: 68, scope: !1402)
!1430 = !DILocation(line: 545, column: 12, scope: !1402)
!1431 = !DILocation(line: 547, column: 5, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1402, file: !2, line: 547, column: 5)
!1433 = !DILocation(line: 547, column: 9, scope: !1432)
!1434 = !DILocation(line: 547, column: 16, scope: !1432)
!1435 = !DILocation(line: 547, column: 15, scope: !1432)
!1436 = !DILocation(line: 547, column: 26, scope: !1432)
!1437 = !DILocation(line: 547, column: 34, scope: !1432)
!1438 = !DILocation(line: 547, column: 40, scope: !1432)
!1439 = !DILocation(line: 547, column: 39, scope: !1432)
!1440 = !DILocation(line: 547, column: 50, scope: !1432)
!1441 = !DILocation(line: 547, column: 5, scope: !1402)
!1442 = !DILocalVariable(name: "sar", scope: !1443, file: !2, line: 549, type: !252)
!1443 = distinct !DILexicalBlock(scope: !1432, file: !2, line: 547, column: 61)
!1444 = !DILocation(line: 549, column: 17, scope: !1443)
!1445 = !DILocation(line: 549, column: 55, scope: !1443)
!1446 = !DILocation(line: 549, column: 59, scope: !1443)
!1447 = !DILocation(line: 549, column: 23, scope: !1443)
!1448 = !DILocation(line: 550, column: 6, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1443, file: !2, line: 550, column: 6)
!1450 = !DILocation(line: 550, column: 6, scope: !1443)
!1451 = !DILocalVariable(name: "found_oauth", scope: !1452, file: !2, line: 552, type: !199)
!1452 = distinct !DILexicalBlock(scope: !1449, file: !2, line: 550, column: 11)
!1453 = !DILocation(line: 552, column: 8, scope: !1452)
!1454 = !DILocalVariable(name: "value", scope: !1452, file: !2, line: 554, type: !244)
!1455 = !DILocation(line: 554, column: 19, scope: !1452)
!1456 = !DILocation(line: 554, column: 47, scope: !1452)
!1457 = !DILocation(line: 554, column: 27, scope: !1452)
!1458 = !DILocation(line: 555, column: 7, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1452, file: !2, line: 555, column: 7)
!1460 = !DILocation(line: 555, column: 7, scope: !1452)
!1461 = !DILocalVariable(name: "vlen", scope: !1462, file: !2, line: 556, type: !232)
!1462 = distinct !DILexicalBlock(scope: !1459, file: !2, line: 555, column: 14)
!1463 = !DILocation(line: 556, column: 12, scope: !1462)
!1464 = !DILocation(line: 556, column: 45, scope: !1462)
!1465 = !DILocation(line: 556, column: 27, scope: !1462)
!1466 = !DILocation(line: 556, column: 19, scope: !1462)
!1467 = !DILocation(line: 557, column: 11, scope: !1462)
!1468 = !DILocation(line: 557, column: 17, scope: !1462)
!1469 = !DILocation(line: 557, column: 23, scope: !1462)
!1470 = !DILocation(line: 557, column: 5, scope: !1462)
!1471 = !DILocation(line: 558, column: 5, scope: !1462)
!1472 = !DILocation(line: 558, column: 11, scope: !1462)
!1473 = !DILocation(line: 558, column: 16, scope: !1462)
!1474 = !DILocation(line: 561, column: 44, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1462, file: !2, line: 560, column: 5)
!1476 = !DILocation(line: 561, column: 48, scope: !1475)
!1477 = !DILocation(line: 561, column: 12, scope: !1475)
!1478 = !DILocation(line: 561, column: 10, scope: !1475)
!1479 = !DILocation(line: 562, column: 9, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1475, file: !2, line: 562, column: 9)
!1481 = !DILocation(line: 562, column: 9, scope: !1475)
!1482 = !DILocation(line: 563, column: 35, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1480, file: !2, line: 562, column: 14)
!1484 = !DILocation(line: 563, column: 15, scope: !1483)
!1485 = !DILocation(line: 563, column: 13, scope: !1483)
!1486 = !DILocation(line: 564, column: 10, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1483, file: !2, line: 564, column: 10)
!1488 = !DILocation(line: 564, column: 10, scope: !1483)
!1489 = !DILocation(line: 565, column: 41, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1487, file: !2, line: 564, column: 17)
!1491 = !DILocation(line: 565, column: 23, scope: !1490)
!1492 = !DILocation(line: 565, column: 15, scope: !1490)
!1493 = !DILocation(line: 565, column: 13, scope: !1490)
!1494 = !DILocation(line: 566, column: 11, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1490, file: !2, line: 566, column: 11)
!1496 = !DILocation(line: 566, column: 15, scope: !1495)
!1497 = !DILocation(line: 566, column: 11, scope: !1490)
!1498 = !DILocation(line: 567, column: 12, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1500, file: !2, line: 567, column: 12)
!1500 = distinct !DILexicalBlock(scope: !1495, file: !2, line: 566, column: 19)
!1501 = !DILocation(line: 567, column: 12, scope: !1500)
!1502 = !DILocation(line: 568, column: 16, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1499, file: !2, line: 567, column: 25)
!1504 = !DILocation(line: 568, column: 22, scope: !1503)
!1505 = !DILocation(line: 568, column: 34, scope: !1503)
!1506 = !DILocation(line: 568, column: 10, scope: !1503)
!1507 = !DILocation(line: 569, column: 9, scope: !1503)
!1508 = !DILocation(line: 570, column: 21, scope: !1500)
!1509 = !DILocation(line: 571, column: 8, scope: !1500)
!1510 = !DILocation(line: 572, column: 7, scope: !1490)
!1511 = !DILocation(line: 573, column: 6, scope: !1483)
!1512 = !DILocation(line: 576, column: 43, scope: !1462)
!1513 = !DILocation(line: 576, column: 47, scope: !1462)
!1514 = !DILocation(line: 576, column: 11, scope: !1462)
!1515 = !DILocation(line: 576, column: 9, scope: !1462)
!1516 = !DILocation(line: 577, column: 8, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1462, file: !2, line: 577, column: 8)
!1518 = !DILocation(line: 577, column: 8, scope: !1462)
!1519 = !DILocation(line: 578, column: 34, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1517, file: !2, line: 577, column: 13)
!1521 = !DILocation(line: 578, column: 14, scope: !1520)
!1522 = !DILocation(line: 578, column: 12, scope: !1520)
!1523 = !DILocation(line: 579, column: 9, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1520, file: !2, line: 579, column: 9)
!1525 = !DILocation(line: 579, column: 9, scope: !1520)
!1526 = !DILocation(line: 580, column: 40, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1524, file: !2, line: 579, column: 16)
!1528 = !DILocation(line: 580, column: 22, scope: !1527)
!1529 = !DILocation(line: 580, column: 14, scope: !1527)
!1530 = !DILocation(line: 580, column: 12, scope: !1527)
!1531 = !DILocation(line: 581, column: 13, scope: !1527)
!1532 = !DILocation(line: 581, column: 19, scope: !1527)
!1533 = !DILocation(line: 581, column: 25, scope: !1527)
!1534 = !DILocation(line: 581, column: 7, scope: !1527)
!1535 = !DILocation(line: 582, column: 7, scope: !1527)
!1536 = !DILocation(line: 582, column: 13, scope: !1527)
!1537 = !DILocation(line: 582, column: 18, scope: !1527)
!1538 = !DILocation(line: 583, column: 10, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1527, file: !2, line: 583, column: 10)
!1540 = !DILocation(line: 583, column: 10, scope: !1527)
!1541 = !DILocation(line: 584, column: 17, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1539, file: !2, line: 583, column: 17)
!1543 = !DILocation(line: 584, column: 9, scope: !1542)
!1544 = !DILocation(line: 584, column: 15, scope: !1542)
!1545 = !DILocation(line: 585, column: 7, scope: !1542)
!1546 = !DILocation(line: 586, column: 7, scope: !1527)
!1547 = !DILocation(line: 588, column: 5, scope: !1520)
!1548 = !DILocation(line: 589, column: 4, scope: !1462)
!1549 = !DILocation(line: 590, column: 3, scope: !1452)
!1550 = !DILocation(line: 591, column: 2, scope: !1443)
!1551 = !DILocation(line: 593, column: 2, scope: !1402)
!1552 = !DILocation(line: 594, column: 1, scope: !1402)
!1553 = distinct !DISubprogram(name: "stun_is_response_str", scope: !2, file: !2, line: 596, type: !861, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!1554 = !DILocalVariable(name: "buf", arg: 1, scope: !1553, file: !2, line: 596, type: !244)
!1555 = !DILocation(line: 596, column: 41, scope: !1553)
!1556 = !DILocalVariable(name: "len", arg: 2, scope: !1553, file: !2, line: 596, type: !232)
!1557 = !DILocation(line: 596, column: 53, scope: !1553)
!1558 = !DILocation(line: 597, column: 25, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1553, file: !2, line: 597, column: 6)
!1560 = !DILocation(line: 597, column: 29, scope: !1559)
!1561 = !DILocation(line: 597, column: 6, scope: !1559)
!1562 = !DILocation(line: 597, column: 6, scope: !1553)
!1563 = !DILocation(line: 597, column: 35, scope: !1559)
!1564 = !DILocation(line: 598, column: 6, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1553, file: !2, line: 598, column: 6)
!1566 = !DILocation(line: 598, column: 6, scope: !1553)
!1567 = !DILocation(line: 598, column: 60, scope: !1565)
!1568 = !DILocation(line: 599, column: 6, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1553, file: !2, line: 599, column: 6)
!1570 = !DILocation(line: 599, column: 6, scope: !1553)
!1571 = !DILocation(line: 599, column: 56, scope: !1569)
!1572 = !DILocation(line: 600, column: 3, scope: !1553)
!1573 = !DILocation(line: 601, column: 1, scope: !1553)
!1574 = distinct !DISubprogram(name: "stun_is_indication_str", scope: !2, file: !2, line: 603, type: !861, scopeLine: 603, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!1575 = !DILocalVariable(name: "buf", arg: 1, scope: !1574, file: !2, line: 603, type: !244)
!1576 = !DILocation(line: 603, column: 43, scope: !1574)
!1577 = !DILocalVariable(name: "len", arg: 2, scope: !1574, file: !2, line: 603, type: !232)
!1578 = !DILocation(line: 603, column: 55, scope: !1574)
!1579 = !DILocation(line: 604, column: 25, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1574, file: !2, line: 604, column: 6)
!1581 = !DILocation(line: 604, column: 29, scope: !1580)
!1582 = !DILocation(line: 604, column: 6, scope: !1580)
!1583 = !DILocation(line: 604, column: 6, scope: !1574)
!1584 = !DILocation(line: 604, column: 35, scope: !1580)
!1585 = !DILocation(line: 605, column: 10, scope: !1574)
!1586 = !DILocation(line: 605, column: 3, scope: !1574)
!1587 = !DILocation(line: 606, column: 1, scope: !1574)
!1588 = distinct !DISubprogram(name: "stun_make_request", scope: !2, file: !2, line: 608, type: !888, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!1589 = !DILocalVariable(name: "method", arg: 1, scope: !1588, file: !2, line: 608, type: !237)
!1590 = !DILocation(line: 608, column: 37, scope: !1588)
!1591 = !DILocation(line: 609, column: 10, scope: !1588)
!1592 = !DILocation(line: 609, column: 3, scope: !1588)
!1593 = distinct !DISubprogram(name: "stun_make_indication", scope: !2, file: !2, line: 612, type: !888, scopeLine: 612, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!1594 = !DILocalVariable(name: "method", arg: 1, scope: !1593, file: !2, line: 612, type: !237)
!1595 = !DILocation(line: 612, column: 40, scope: !1593)
!1596 = !DILocation(line: 613, column: 10, scope: !1593)
!1597 = !DILocation(line: 613, column: 3, scope: !1593)
!1598 = distinct !DISubprogram(name: "stun_make_success_response", scope: !2, file: !2, line: 616, type: !888, scopeLine: 616, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!1599 = !DILocalVariable(name: "method", arg: 1, scope: !1598, file: !2, line: 616, type: !237)
!1600 = !DILocation(line: 616, column: 46, scope: !1598)
!1601 = !DILocation(line: 617, column: 10, scope: !1598)
!1602 = !DILocation(line: 617, column: 3, scope: !1598)
!1603 = distinct !DISubprogram(name: "stun_make_error_response", scope: !2, file: !2, line: 620, type: !888, scopeLine: 620, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!1604 = !DILocalVariable(name: "method", arg: 1, scope: !1603, file: !2, line: 620, type: !237)
!1605 = !DILocation(line: 620, column: 44, scope: !1603)
!1606 = !DILocation(line: 621, column: 10, scope: !1603)
!1607 = !DILocation(line: 621, column: 3, scope: !1603)
!1608 = distinct !DISubprogram(name: "stun_init_buffer_str", scope: !2, file: !2, line: 626, type: !1609, scopeLine: 626, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!1609 = !DISubroutineType(types: !1610)
!1610 = !{null, !226, !1611}
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!1612 = !DILocalVariable(name: "buf", arg: 1, scope: !1608, file: !2, line: 626, type: !226)
!1613 = !DILocation(line: 626, column: 36, scope: !1608)
!1614 = !DILocalVariable(name: "len", arg: 2, scope: !1608, file: !2, line: 626, type: !1611)
!1615 = !DILocation(line: 626, column: 49, scope: !1608)
!1616 = !DILocation(line: 627, column: 4, scope: !1608)
!1617 = !DILocation(line: 627, column: 7, scope: !1608)
!1618 = !DILocation(line: 628, column: 9, scope: !1608)
!1619 = !DILocation(line: 628, column: 14, scope: !1608)
!1620 = !DILocation(line: 628, column: 13, scope: !1608)
!1621 = !DILocation(line: 628, column: 3, scope: !1608)
!1622 = !DILocation(line: 629, column: 1, scope: !1608)
!1623 = distinct !DISubprogram(name: "stun_init_command_str", scope: !2, file: !2, line: 631, type: !1624, scopeLine: 631, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!1624 = !DISubroutineType(types: !1625)
!1625 = !{null, !237, !226, !1611}
!1626 = !DILocalVariable(name: "message_type", arg: 1, scope: !1623, file: !2, line: 631, type: !237)
!1627 = !DILocation(line: 631, column: 37, scope: !1623)
!1628 = !DILocalVariable(name: "buf", arg: 2, scope: !1623, file: !2, line: 631, type: !226)
!1629 = !DILocation(line: 631, column: 60, scope: !1623)
!1630 = !DILocalVariable(name: "len", arg: 3, scope: !1623, file: !2, line: 631, type: !1611)
!1631 = !DILocation(line: 631, column: 73, scope: !1623)
!1632 = !DILocation(line: 632, column: 24, scope: !1623)
!1633 = !DILocation(line: 632, column: 28, scope: !1623)
!1634 = !DILocation(line: 632, column: 3, scope: !1623)
!1635 = !DILocation(line: 633, column: 16, scope: !1623)
!1636 = !DILocation(line: 634, column: 23, scope: !1623)
!1637 = !DILocation(line: 634, column: 15, scope: !1623)
!1638 = !DILocation(line: 634, column: 3, scope: !1623)
!1639 = !DILocation(line: 634, column: 22, scope: !1623)
!1640 = !DILocation(line: 635, column: 15, scope: !1623)
!1641 = !DILocation(line: 635, column: 3, scope: !1623)
!1642 = !DILocation(line: 635, column: 22, scope: !1623)
!1643 = !DILocation(line: 636, column: 23, scope: !1623)
!1644 = !DILocation(line: 636, column: 15, scope: !1623)
!1645 = !DILocation(line: 636, column: 3, scope: !1623)
!1646 = !DILocation(line: 636, column: 22, scope: !1623)
!1647 = !DILocation(line: 637, column: 36, scope: !1623)
!1648 = !DILocation(line: 637, column: 3, scope: !1623)
!1649 = !DILocation(line: 638, column: 1, scope: !1623)
!1650 = distinct !DISubprogram(name: "stun_tid_generate_in_message_str", scope: !2, file: !2, line: 1245, type: !1651, scopeLine: 1245, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!1651 = !DISubroutineType(types: !1652)
!1652 = !{null, !226, !1653}
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_typedef, name: "stun_tid", file: !208, line: 52, baseType: !1655)
!1655 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !208, line: 47, size: 96, elements: !1656)
!1656 = !{!1657}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "tsx_id", scope: !1655, file: !208, line: 51, baseType: !1658, size: 96)
!1658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 96, elements: !55)
!1659 = !DILocalVariable(name: "buf", arg: 1, scope: !1650, file: !2, line: 1245, type: !226)
!1660 = !DILocation(line: 1245, column: 48, scope: !1650)
!1661 = !DILocalVariable(name: "id", arg: 2, scope: !1650, file: !2, line: 1245, type: !1653)
!1662 = !DILocation(line: 1245, column: 63, scope: !1650)
!1663 = !DILocalVariable(name: "tmp", scope: !1650, file: !2, line: 1246, type: !1654)
!1664 = !DILocation(line: 1246, column: 12, scope: !1650)
!1665 = !DILocation(line: 1247, column: 7, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1650, file: !2, line: 1247, column: 6)
!1667 = !DILocation(line: 1247, column: 6, scope: !1650)
!1668 = !DILocation(line: 1247, column: 13, scope: !1666)
!1669 = !DILocation(line: 1247, column: 11, scope: !1666)
!1670 = !DILocation(line: 1248, column: 21, scope: !1650)
!1671 = !DILocation(line: 1248, column: 3, scope: !1650)
!1672 = !DILocation(line: 1249, column: 24, scope: !1650)
!1673 = !DILocation(line: 1249, column: 29, scope: !1650)
!1674 = !DILocation(line: 1249, column: 3, scope: !1650)
!1675 = !DILocation(line: 1250, column: 1, scope: !1650)
!1676 = distinct !DISubprogram(name: "old_stun_init_command_str", scope: !2, file: !2, line: 640, type: !1677, scopeLine: 640, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!1677 = !DISubroutineType(types: !1678)
!1678 = !{null, !237, !226, !1611, !242}
!1679 = !DILocalVariable(name: "message_type", arg: 1, scope: !1676, file: !2, line: 640, type: !237)
!1680 = !DILocation(line: 640, column: 41, scope: !1676)
!1681 = !DILocalVariable(name: "buf", arg: 2, scope: !1676, file: !2, line: 640, type: !226)
!1682 = !DILocation(line: 640, column: 64, scope: !1676)
!1683 = !DILocalVariable(name: "len", arg: 3, scope: !1676, file: !2, line: 640, type: !1611)
!1684 = !DILocation(line: 640, column: 77, scope: !1676)
!1685 = !DILocalVariable(name: "cookie", arg: 4, scope: !1676, file: !2, line: 640, type: !242)
!1686 = !DILocation(line: 640, column: 91, scope: !1676)
!1687 = !DILocation(line: 641, column: 24, scope: !1676)
!1688 = !DILocation(line: 641, column: 28, scope: !1676)
!1689 = !DILocation(line: 641, column: 3, scope: !1676)
!1690 = !DILocation(line: 642, column: 16, scope: !1676)
!1691 = !DILocation(line: 643, column: 23, scope: !1676)
!1692 = !DILocation(line: 643, column: 15, scope: !1676)
!1693 = !DILocation(line: 643, column: 3, scope: !1676)
!1694 = !DILocation(line: 643, column: 22, scope: !1676)
!1695 = !DILocation(line: 644, column: 15, scope: !1676)
!1696 = !DILocation(line: 644, column: 3, scope: !1676)
!1697 = !DILocation(line: 644, column: 22, scope: !1676)
!1698 = !DILocation(line: 645, column: 23, scope: !1676)
!1699 = !DILocation(line: 645, column: 15, scope: !1676)
!1700 = !DILocation(line: 645, column: 3, scope: !1676)
!1701 = !DILocation(line: 645, column: 22, scope: !1676)
!1702 = !DILocation(line: 646, column: 36, scope: !1676)
!1703 = !DILocation(line: 646, column: 3, scope: !1676)
!1704 = !DILocation(line: 647, column: 1, scope: !1676)
!1705 = distinct !DISubprogram(name: "stun_init_request_str", scope: !2, file: !2, line: 649, type: !1624, scopeLine: 649, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!1706 = !DILocalVariable(name: "method", arg: 1, scope: !1705, file: !2, line: 649, type: !237)
!1707 = !DILocation(line: 649, column: 37, scope: !1705)
!1708 = !DILocalVariable(name: "buf", arg: 2, scope: !1705, file: !2, line: 649, type: !226)
!1709 = !DILocation(line: 649, column: 54, scope: !1705)
!1710 = !DILocalVariable(name: "len", arg: 3, scope: !1705, file: !2, line: 649, type: !1611)
!1711 = !DILocation(line: 649, column: 67, scope: !1705)
!1712 = !DILocation(line: 650, column: 43, scope: !1705)
!1713 = !DILocation(line: 650, column: 25, scope: !1705)
!1714 = !DILocation(line: 650, column: 52, scope: !1705)
!1715 = !DILocation(line: 650, column: 57, scope: !1705)
!1716 = !DILocation(line: 650, column: 3, scope: !1705)
!1717 = !DILocation(line: 651, column: 1, scope: !1705)
!1718 = distinct !DISubprogram(name: "stun_init_indication_str", scope: !2, file: !2, line: 653, type: !1624, scopeLine: 653, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!1719 = !DILocalVariable(name: "method", arg: 1, scope: !1718, file: !2, line: 653, type: !237)
!1720 = !DILocation(line: 653, column: 40, scope: !1718)
!1721 = !DILocalVariable(name: "buf", arg: 2, scope: !1718, file: !2, line: 653, type: !226)
!1722 = !DILocation(line: 653, column: 57, scope: !1718)
!1723 = !DILocalVariable(name: "len", arg: 3, scope: !1718, file: !2, line: 653, type: !1611)
!1724 = !DILocation(line: 653, column: 70, scope: !1718)
!1725 = !DILocation(line: 654, column: 46, scope: !1718)
!1726 = !DILocation(line: 654, column: 25, scope: !1718)
!1727 = !DILocation(line: 654, column: 55, scope: !1718)
!1728 = !DILocation(line: 654, column: 60, scope: !1718)
!1729 = !DILocation(line: 654, column: 3, scope: !1718)
!1730 = !DILocation(line: 655, column: 1, scope: !1718)
!1731 = distinct !DISubprogram(name: "stun_init_success_response_str", scope: !2, file: !2, line: 657, type: !1732, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{null, !237, !226, !1611, !1653}
!1734 = !DILocalVariable(name: "method", arg: 1, scope: !1731, file: !2, line: 657, type: !237)
!1735 = !DILocation(line: 657, column: 46, scope: !1731)
!1736 = !DILocalVariable(name: "buf", arg: 2, scope: !1731, file: !2, line: 657, type: !226)
!1737 = !DILocation(line: 657, column: 63, scope: !1731)
!1738 = !DILocalVariable(name: "len", arg: 3, scope: !1731, file: !2, line: 657, type: !1611)
!1739 = !DILocation(line: 657, column: 76, scope: !1731)
!1740 = !DILocalVariable(name: "id", arg: 4, scope: !1731, file: !2, line: 657, type: !1653)
!1741 = !DILocation(line: 657, column: 91, scope: !1731)
!1742 = !DILocation(line: 658, column: 52, scope: !1731)
!1743 = !DILocation(line: 658, column: 25, scope: !1731)
!1744 = !DILocation(line: 658, column: 61, scope: !1731)
!1745 = !DILocation(line: 658, column: 66, scope: !1731)
!1746 = !DILocation(line: 658, column: 3, scope: !1731)
!1747 = !DILocation(line: 659, column: 6, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1731, file: !2, line: 659, column: 6)
!1749 = !DILocation(line: 659, column: 6, scope: !1731)
!1750 = !DILocation(line: 660, column: 26, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1748, file: !2, line: 659, column: 10)
!1752 = !DILocation(line: 660, column: 31, scope: !1751)
!1753 = !DILocation(line: 660, column: 5, scope: !1751)
!1754 = !DILocation(line: 661, column: 3, scope: !1751)
!1755 = !DILocation(line: 662, column: 1, scope: !1731)
!1756 = distinct !DISubprogram(name: "stun_tid_message_cpy", scope: !2, file: !2, line: 1233, type: !1757, scopeLine: 1233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!1757 = !DISubroutineType(types: !1758)
!1758 = !{null, !226, !1759}
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1654)
!1761 = !DILocalVariable(name: "buf", arg: 1, scope: !1756, file: !2, line: 1233, type: !226)
!1762 = !DILocation(line: 1233, column: 36, scope: !1756)
!1763 = !DILocalVariable(name: "id", arg: 2, scope: !1756, file: !2, line: 1233, type: !1759)
!1764 = !DILocation(line: 1233, column: 57, scope: !1756)
!1765 = !DILocation(line: 1234, column: 6, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1756, file: !2, line: 1234, column: 6)
!1767 = !DILocation(line: 1234, column: 10, scope: !1766)
!1768 = !DILocation(line: 1234, column: 13, scope: !1766)
!1769 = !DILocation(line: 1234, column: 6, scope: !1756)
!1770 = !DILocation(line: 1235, column: 25, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1766, file: !2, line: 1234, column: 17)
!1772 = !DILocation(line: 1235, column: 28, scope: !1771)
!1773 = !DILocation(line: 1235, column: 32, scope: !1771)
!1774 = !DILocation(line: 1235, column: 5, scope: !1771)
!1775 = !DILocation(line: 1236, column: 3, scope: !1771)
!1776 = !DILocation(line: 1237, column: 1, scope: !1756)
!1777 = distinct !DISubprogram(name: "old_stun_init_success_response_str", scope: !2, file: !2, line: 664, type: !1778, scopeLine: 664, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!1778 = !DISubroutineType(types: !1779)
!1779 = !{null, !237, !226, !1611, !1653, !242}
!1780 = !DILocalVariable(name: "method", arg: 1, scope: !1777, file: !2, line: 664, type: !237)
!1781 = !DILocation(line: 664, column: 50, scope: !1777)
!1782 = !DILocalVariable(name: "buf", arg: 2, scope: !1777, file: !2, line: 664, type: !226)
!1783 = !DILocation(line: 664, column: 67, scope: !1777)
!1784 = !DILocalVariable(name: "len", arg: 3, scope: !1777, file: !2, line: 664, type: !1611)
!1785 = !DILocation(line: 664, column: 80, scope: !1777)
!1786 = !DILocalVariable(name: "id", arg: 4, scope: !1777, file: !2, line: 664, type: !1653)
!1787 = !DILocation(line: 664, column: 95, scope: !1777)
!1788 = !DILocalVariable(name: "cookie", arg: 5, scope: !1777, file: !2, line: 664, type: !242)
!1789 = !DILocation(line: 664, column: 108, scope: !1777)
!1790 = !DILocation(line: 665, column: 56, scope: !1777)
!1791 = !DILocation(line: 665, column: 29, scope: !1777)
!1792 = !DILocation(line: 665, column: 65, scope: !1777)
!1793 = !DILocation(line: 665, column: 70, scope: !1777)
!1794 = !DILocation(line: 665, column: 75, scope: !1777)
!1795 = !DILocation(line: 665, column: 3, scope: !1777)
!1796 = !DILocation(line: 666, column: 6, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1777, file: !2, line: 666, column: 6)
!1798 = !DILocation(line: 666, column: 6, scope: !1777)
!1799 = !DILocation(line: 667, column: 26, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1797, file: !2, line: 666, column: 10)
!1801 = !DILocation(line: 667, column: 31, scope: !1800)
!1802 = !DILocation(line: 667, column: 5, scope: !1800)
!1803 = !DILocation(line: 668, column: 3, scope: !1800)
!1804 = !DILocation(line: 669, column: 1, scope: !1777)
!1805 = distinct !DISubprogram(name: "get_default_reason", scope: !2, file: !2, line: 671, type: !1806, scopeLine: 672, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!1806 = !DISubroutineType(types: !1807)
!1807 = !{!244, !199}
!1808 = !DILocalVariable(name: "error_code", arg: 1, scope: !1805, file: !2, line: 671, type: !199)
!1809 = !DILocation(line: 671, column: 39, scope: !1805)
!1810 = !DILocalVariable(name: "reason", scope: !1805, file: !2, line: 673, type: !244)
!1811 = !DILocation(line: 673, column: 17, scope: !1805)
!1812 = !DILocation(line: 675, column: 10, scope: !1805)
!1813 = !DILocation(line: 675, column: 2, scope: !1805)
!1814 = !DILocation(line: 677, column: 10, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1805, file: !2, line: 675, column: 21)
!1816 = !DILocation(line: 678, column: 3, scope: !1815)
!1817 = !DILocation(line: 680, column: 10, scope: !1815)
!1818 = !DILocation(line: 681, column: 3, scope: !1815)
!1819 = !DILocation(line: 683, column: 10, scope: !1815)
!1820 = !DILocation(line: 684, column: 3, scope: !1815)
!1821 = !DILocation(line: 686, column: 10, scope: !1815)
!1822 = !DILocation(line: 687, column: 3, scope: !1815)
!1823 = !DILocation(line: 689, column: 10, scope: !1815)
!1824 = !DILocation(line: 690, column: 3, scope: !1815)
!1825 = !DILocation(line: 692, column: 10, scope: !1815)
!1826 = !DILocation(line: 693, column: 3, scope: !1815)
!1827 = !DILocation(line: 695, column: 10, scope: !1815)
!1828 = !DILocation(line: 696, column: 3, scope: !1815)
!1829 = !DILocation(line: 698, column: 10, scope: !1815)
!1830 = !DILocation(line: 699, column: 3, scope: !1815)
!1831 = !DILocation(line: 701, column: 10, scope: !1815)
!1832 = !DILocation(line: 702, column: 3, scope: !1815)
!1833 = !DILocation(line: 704, column: 10, scope: !1815)
!1834 = !DILocation(line: 705, column: 3, scope: !1815)
!1835 = !DILocation(line: 707, column: 10, scope: !1815)
!1836 = !DILocation(line: 708, column: 3, scope: !1815)
!1837 = !DILocation(line: 710, column: 10, scope: !1815)
!1838 = !DILocation(line: 711, column: 3, scope: !1815)
!1839 = !DILocation(line: 713, column: 10, scope: !1815)
!1840 = !DILocation(line: 714, column: 3, scope: !1815)
!1841 = !DILocation(line: 716, column: 10, scope: !1815)
!1842 = !DILocation(line: 717, column: 3, scope: !1815)
!1843 = !DILocation(line: 719, column: 10, scope: !1815)
!1844 = !DILocation(line: 720, column: 3, scope: !1815)
!1845 = !DILocation(line: 722, column: 10, scope: !1815)
!1846 = !DILocation(line: 723, column: 3, scope: !1815)
!1847 = !DILocation(line: 725, column: 10, scope: !1815)
!1848 = !DILocation(line: 726, column: 3, scope: !1815)
!1849 = !DILocation(line: 728, column: 10, scope: !1815)
!1850 = !DILocation(line: 729, column: 3, scope: !1815)
!1851 = !DILocation(line: 732, column: 2, scope: !1815)
!1852 = !DILocation(line: 734, column: 9, scope: !1805)
!1853 = !DILocation(line: 734, column: 2, scope: !1805)
!1854 = distinct !DISubprogram(name: "old_stun_init_error_response_str", scope: !2, file: !2, line: 769, type: !1855, scopeLine: 772, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!1855 = !DISubroutineType(types: !1856)
!1856 = !{null, !237, !226, !1611, !237, !244, !1653, !242}
!1857 = !DILocalVariable(name: "method", arg: 1, scope: !1854, file: !2, line: 769, type: !237)
!1858 = !DILocation(line: 769, column: 48, scope: !1854)
!1859 = !DILocalVariable(name: "buf", arg: 2, scope: !1854, file: !2, line: 769, type: !226)
!1860 = !DILocation(line: 769, column: 65, scope: !1854)
!1861 = !DILocalVariable(name: "len", arg: 3, scope: !1854, file: !2, line: 769, type: !1611)
!1862 = !DILocation(line: 769, column: 78, scope: !1854)
!1863 = !DILocalVariable(name: "error_code", arg: 4, scope: !1854, file: !2, line: 770, type: !237)
!1864 = !DILocation(line: 770, column: 14, scope: !1854)
!1865 = !DILocalVariable(name: "reason", arg: 5, scope: !1854, file: !2, line: 770, type: !244)
!1866 = !DILocation(line: 770, column: 41, scope: !1854)
!1867 = !DILocalVariable(name: "id", arg: 6, scope: !1854, file: !2, line: 771, type: !1653)
!1868 = !DILocation(line: 771, column: 15, scope: !1854)
!1869 = !DILocalVariable(name: "cookie", arg: 7, scope: !1854, file: !2, line: 771, type: !242)
!1870 = !DILocation(line: 771, column: 28, scope: !1854)
!1871 = !DILocation(line: 774, column: 53, scope: !1854)
!1872 = !DILocation(line: 774, column: 28, scope: !1854)
!1873 = !DILocation(line: 774, column: 62, scope: !1854)
!1874 = !DILocation(line: 774, column: 67, scope: !1854)
!1875 = !DILocation(line: 774, column: 72, scope: !1854)
!1876 = !DILocation(line: 774, column: 2, scope: !1854)
!1877 = !DILocation(line: 776, column: 38, scope: !1854)
!1878 = !DILocation(line: 776, column: 43, scope: !1854)
!1879 = !DILocation(line: 777, column: 6, scope: !1854)
!1880 = !DILocation(line: 777, column: 18, scope: !1854)
!1881 = !DILocation(line: 778, column: 6, scope: !1854)
!1882 = !DILocation(line: 776, column: 2, scope: !1854)
!1883 = !DILocation(line: 779, column: 1, scope: !1854)
!1884 = distinct !DISubprogram(name: "stun_init_error_response_common_str", scope: !2, file: !2, line: 737, type: !1885, scopeLine: 740, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !194, retainedNodes: !305)
!1885 = !DISubroutineType(types: !1886)
!1886 = !{null, !226, !1611, !237, !244, !1653}
!1887 = !DILocalVariable(name: "buf", arg: 1, scope: !1884, file: !2, line: 737, type: !226)
!1888 = !DILocation(line: 737, column: 58, scope: !1884)
!1889 = !DILocalVariable(name: "len", arg: 2, scope: !1884, file: !2, line: 737, type: !1611)
!1890 = !DILocation(line: 737, column: 71, scope: !1884)
!1891 = !DILocalVariable(name: "error_code", arg: 3, scope: !1884, file: !2, line: 738, type: !237)
!1892 = !DILocation(line: 738, column: 14, scope: !1884)
!1893 = !DILocalVariable(name: "reason", arg: 4, scope: !1884, file: !2, line: 738, type: !244)
!1894 = !DILocation(line: 738, column: 41, scope: !1884)
!1895 = !DILocalVariable(name: "id", arg: 5, scope: !1884, file: !2, line: 739, type: !1653)
!1896 = !DILocation(line: 739, column: 15, scope: !1884)
!1897 = !DILocation(line: 742, column: 7, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1884, file: !2, line: 742, column: 6)
!1899 = !DILocation(line: 742, column: 14, scope: !1898)
!1900 = !DILocation(line: 742, column: 38, scope: !1898)
!1901 = !DILocation(line: 742, column: 18, scope: !1898)
!1902 = !DILocation(line: 742, column: 6, scope: !1884)
!1903 = !DILocation(line: 743, column: 31, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1898, file: !2, line: 742, column: 63)
!1905 = !DILocation(line: 743, column: 12, scope: !1904)
!1906 = !DILocation(line: 743, column: 10, scope: !1904)
!1907 = !DILocation(line: 744, column: 2, scope: !1904)
!1908 = !DILocalVariable(name: "avalue", scope: !1884, file: !2, line: 746, type: !1909)
!1909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 4104, elements: !1910)
!1910 = !{!1911}
!1911 = !DISubrange(count: 513)
!1912 = !DILocation(line: 746, column: 10, scope: !1884)
!1913 = !DILocation(line: 747, column: 2, scope: !1884)
!1914 = !DILocation(line: 747, column: 12, scope: !1884)
!1915 = !DILocation(line: 748, column: 2, scope: !1884)
!1916 = !DILocation(line: 748, column: 12, scope: !1884)
!1917 = !DILocation(line: 749, column: 25, scope: !1884)
!1918 = !DILocation(line: 749, column: 36, scope: !1884)
!1919 = !DILocation(line: 749, column: 14, scope: !1884)
!1920 = !DILocation(line: 749, column: 2, scope: !1884)
!1921 = !DILocation(line: 749, column: 12, scope: !1884)
!1922 = !DILocation(line: 750, column: 25, scope: !1884)
!1923 = !DILocation(line: 750, column: 36, scope: !1884)
!1924 = !DILocation(line: 750, column: 14, scope: !1884)
!1925 = !DILocation(line: 750, column: 2, scope: !1884)
!1926 = !DILocation(line: 750, column: 12, scope: !1884)
!1927 = !DILocation(line: 751, column: 19, scope: !1884)
!1928 = !DILocation(line: 751, column: 26, scope: !1884)
!1929 = !DILocation(line: 751, column: 46, scope: !1884)
!1930 = !DILocation(line: 751, column: 2, scope: !1884)
!1931 = !DILocation(line: 752, column: 2, scope: !1884)
!1932 = !DILocation(line: 752, column: 26, scope: !1884)
!1933 = !DILocalVariable(name: "alen", scope: !1884, file: !2, line: 753, type: !199)
!1934 = !DILocation(line: 753, column: 6, scope: !1884)
!1935 = !DILocation(line: 753, column: 44, scope: !1884)
!1936 = !DILocation(line: 753, column: 50, scope: !1884)
!1937 = !DILocation(line: 753, column: 22, scope: !1884)
!1938 = !DILocation(line: 753, column: 17, scope: !1884)
!1939 = !DILocation(line: 753, column: 15, scope: !1884)
!1940 = !DILocalVariable(name: "rem", scope: !1941, file: !2, line: 757, type: !199)
!1941 = distinct !DILexicalBlock(scope: !1884, file: !2, line: 756, column: 2)
!1942 = !DILocation(line: 757, column: 7, scope: !1941)
!1943 = !DILocation(line: 757, column: 13, scope: !1941)
!1944 = !DILocation(line: 757, column: 18, scope: !1941)
!1945 = !DILocation(line: 758, column: 6, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1941, file: !2, line: 758, column: 6)
!1947 = !DILocation(line: 758, column: 6, scope: !1941)
!1948 = !DILocation(line: 759, column: 14, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1946, file: !2, line: 758, column: 11)
!1950 = !DILocation(line: 759, column: 13, scope: !1949)
!1951 = !DILocation(line: 759, column: 9, scope: !1949)
!1952 = !DILocation(line: 760, column: 3, scope: !1949)
!1953 = !DILocation(line: 763, column: 20, scope: !1884)
!1954 = !DILocation(line: 763, column: 25, scope: !1884)
!1955 = !DILocation(line: 763, column: 68, scope: !1884)
!1956 = !DILocation(line: 763, column: 76, scope: !1884)
!1957 = !DILocation(line: 763, column: 2, scope: !1884)
!1958 = !DILocation(line: 764, column: 6, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1884, file: !2, line: 764, column: 6)
!1960 = !DILocation(line: 764, column: 6, scope: !1884)
!1961 = !DILocation(line: 765, column: 24, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1959, file: !2, line: 764, column: 10)
!1963 = !DILocation(line: 765, column: 29, scope: !1962)
!1964 = !DILocation(line: 765, column: 3, scope: !1962)
!1965 = !DILocation(line: 766, column: 2, scope: !1962)
!1966 = !DILocation(line: 767, column: 1, scope: !1884)
!1967 = distinct !DISubprogram(name: "stun_init_error_response_str", scope: !2, file: !2, line: 781, type: !1968, scopeLine: 784, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!1968 = !DISubroutineType(types: !1969)
!1969 = !{null, !237, !226, !1611, !237, !244, !1653}
!1970 = !DILocalVariable(name: "method", arg: 1, scope: !1967, file: !2, line: 781, type: !237)
!1971 = !DILocation(line: 781, column: 44, scope: !1967)
!1972 = !DILocalVariable(name: "buf", arg: 2, scope: !1967, file: !2, line: 781, type: !226)
!1973 = !DILocation(line: 781, column: 61, scope: !1967)
!1974 = !DILocalVariable(name: "len", arg: 3, scope: !1967, file: !2, line: 781, type: !1611)
!1975 = !DILocation(line: 781, column: 74, scope: !1967)
!1976 = !DILocalVariable(name: "error_code", arg: 4, scope: !1967, file: !2, line: 782, type: !237)
!1977 = !DILocation(line: 782, column: 14, scope: !1967)
!1978 = !DILocalVariable(name: "reason", arg: 5, scope: !1967, file: !2, line: 782, type: !244)
!1979 = !DILocation(line: 782, column: 41, scope: !1967)
!1980 = !DILocalVariable(name: "id", arg: 6, scope: !1967, file: !2, line: 783, type: !1653)
!1981 = !DILocation(line: 783, column: 15, scope: !1967)
!1982 = !DILocation(line: 786, column: 49, scope: !1967)
!1983 = !DILocation(line: 786, column: 24, scope: !1967)
!1984 = !DILocation(line: 786, column: 58, scope: !1967)
!1985 = !DILocation(line: 786, column: 63, scope: !1967)
!1986 = !DILocation(line: 786, column: 2, scope: !1967)
!1987 = !DILocation(line: 788, column: 38, scope: !1967)
!1988 = !DILocation(line: 788, column: 43, scope: !1967)
!1989 = !DILocation(line: 789, column: 6, scope: !1967)
!1990 = !DILocation(line: 789, column: 18, scope: !1967)
!1991 = !DILocation(line: 790, column: 6, scope: !1967)
!1992 = !DILocation(line: 788, column: 2, scope: !1967)
!1993 = !DILocation(line: 791, column: 1, scope: !1967)
!1994 = distinct !DISubprogram(name: "stun_init_channel_message_str", scope: !2, file: !2, line: 795, type: !1995, scopeLine: 796, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!1995 = !DISubroutineType(types: !1996)
!1996 = !{!199, !237, !226, !1611, !199, !199}
!1997 = !DILocalVariable(name: "chnumber", arg: 1, scope: !1994, file: !2, line: 795, type: !237)
!1998 = !DILocation(line: 795, column: 44, scope: !1994)
!1999 = !DILocalVariable(name: "buf", arg: 2, scope: !1994, file: !2, line: 795, type: !226)
!2000 = !DILocation(line: 795, column: 63, scope: !1994)
!2001 = !DILocalVariable(name: "len", arg: 3, scope: !1994, file: !2, line: 795, type: !1611)
!2002 = !DILocation(line: 795, column: 76, scope: !1994)
!2003 = !DILocalVariable(name: "length", arg: 4, scope: !1994, file: !2, line: 795, type: !199)
!2004 = !DILocation(line: 795, column: 85, scope: !1994)
!2005 = !DILocalVariable(name: "do_padding", arg: 5, scope: !1994, file: !2, line: 795, type: !199)
!2006 = !DILocation(line: 795, column: 97, scope: !1994)
!2007 = !DILocalVariable(name: "rlen", scope: !1994, file: !2, line: 797, type: !237)
!2008 = !DILocation(line: 797, column: 11, scope: !1994)
!2009 = !DILocation(line: 797, column: 28, scope: !1994)
!2010 = !DILocation(line: 797, column: 18, scope: !1994)
!2011 = !DILocation(line: 799, column: 5, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !1994, file: !2, line: 799, column: 5)
!2013 = !DILocation(line: 799, column: 11, scope: !2012)
!2014 = !DILocation(line: 799, column: 14, scope: !2012)
!2015 = !DILocation(line: 799, column: 43, scope: !2012)
!2016 = !DILocation(line: 799, column: 42, scope: !2012)
!2017 = !DILocation(line: 799, column: 39, scope: !2012)
!2018 = !DILocation(line: 799, column: 5, scope: !1994)
!2019 = !DILocation(line: 799, column: 53, scope: !2012)
!2020 = !DILocation(line: 800, column: 24, scope: !1994)
!2021 = !DILocation(line: 800, column: 15, scope: !1994)
!2022 = !DILocation(line: 800, column: 2, scope: !1994)
!2023 = !DILocation(line: 800, column: 23, scope: !1994)
!2024 = !DILocation(line: 801, column: 24, scope: !1994)
!2025 = !DILocation(line: 801, column: 15, scope: !1994)
!2026 = !DILocation(line: 801, column: 2, scope: !1994)
!2027 = !DILocation(line: 801, column: 23, scope: !1994)
!2028 = !DILocation(line: 803, column: 5, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !1994, file: !2, line: 803, column: 5)
!2030 = !DILocation(line: 803, column: 16, scope: !2029)
!2031 = !DILocation(line: 803, column: 20, scope: !2029)
!2032 = !DILocation(line: 803, column: 25, scope: !2029)
!2033 = !DILocation(line: 803, column: 5, scope: !1994)
!2034 = !DILocation(line: 804, column: 12, scope: !2029)
!2035 = !DILocation(line: 804, column: 16, scope: !2029)
!2036 = !DILocation(line: 804, column: 20, scope: !2029)
!2037 = !DILocation(line: 804, column: 23, scope: !2029)
!2038 = !DILocation(line: 804, column: 10, scope: !2029)
!2039 = !DILocation(line: 804, column: 8, scope: !2029)
!2040 = !DILocation(line: 804, column: 3, scope: !2029)
!2041 = !DILocation(line: 806, column: 9, scope: !1994)
!2042 = !DILocation(line: 806, column: 8, scope: !1994)
!2043 = !DILocation(line: 806, column: 7, scope: !1994)
!2044 = !DILocation(line: 806, column: 3, scope: !1994)
!2045 = !DILocation(line: 806, column: 6, scope: !1994)
!2046 = !DILocation(line: 808, column: 2, scope: !1994)
!2047 = !DILocation(line: 809, column: 1, scope: !1994)
!2048 = distinct !DISubprogram(name: "stun_is_channel_message_str", scope: !2, file: !2, line: 811, type: !2049, scopeLine: 812, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!2049 = !DISubroutineType(types: !2050)
!2050 = !{!199, !244, !1611, !246, !199}
!2051 = !DILocalVariable(name: "buf", arg: 1, scope: !2048, file: !2, line: 811, type: !244)
!2052 = !DILocation(line: 811, column: 48, scope: !2048)
!2053 = !DILocalVariable(name: "blen", arg: 2, scope: !2048, file: !2, line: 811, type: !1611)
!2054 = !DILocation(line: 811, column: 61, scope: !2048)
!2055 = !DILocalVariable(name: "chnumber", arg: 3, scope: !2048, file: !2, line: 811, type: !246)
!2056 = !DILocation(line: 811, column: 77, scope: !2048)
!2057 = !DILocalVariable(name: "mandatory_padding", arg: 4, scope: !2048, file: !2, line: 811, type: !199)
!2058 = !DILocation(line: 811, column: 91, scope: !2048)
!2059 = !DILocalVariable(name: "datalen_header", scope: !2048, file: !2, line: 813, type: !237)
!2060 = !DILocation(line: 813, column: 11, scope: !2048)
!2061 = !DILocalVariable(name: "datalen_actual", scope: !2048, file: !2, line: 814, type: !237)
!2062 = !DILocation(line: 814, column: 11, scope: !2048)
!2063 = !DILocation(line: 816, column: 7, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !2048, file: !2, line: 816, column: 6)
!2065 = !DILocation(line: 816, column: 12, scope: !2064)
!2066 = !DILocation(line: 816, column: 17, scope: !2064)
!2067 = !DILocation(line: 816, column: 16, scope: !2064)
!2068 = !DILocation(line: 816, column: 22, scope: !2064)
!2069 = !DILocation(line: 816, column: 6, scope: !2048)
!2070 = !DILocation(line: 817, column: 3, scope: !2064)
!2071 = !DILocalVariable(name: "chn", scope: !2048, file: !2, line: 819, type: !237)
!2072 = !DILocation(line: 819, column: 11, scope: !2048)
!2073 = !DILocation(line: 819, column: 17, scope: !2048)
!2074 = !DILocation(line: 820, column: 7, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2048, file: !2, line: 820, column: 6)
!2076 = !DILocation(line: 820, column: 6, scope: !2048)
!2077 = !DILocation(line: 821, column: 3, scope: !2075)
!2078 = !DILocation(line: 823, column: 6, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2048, file: !2, line: 823, column: 5)
!2080 = !DILocation(line: 823, column: 5, scope: !2079)
!2081 = !DILocation(line: 823, column: 10, scope: !2079)
!2082 = !DILocation(line: 823, column: 5, scope: !2048)
!2083 = !DILocation(line: 824, column: 4, scope: !2079)
!2084 = !DILocation(line: 824, column: 8, scope: !2079)
!2085 = !DILocation(line: 824, column: 3, scope: !2079)
!2086 = !DILocation(line: 826, column: 31, scope: !2048)
!2087 = !DILocation(line: 826, column: 30, scope: !2048)
!2088 = !DILocation(line: 826, column: 19, scope: !2048)
!2089 = !DILocation(line: 826, column: 37, scope: !2048)
!2090 = !DILocation(line: 826, column: 17, scope: !2048)
!2091 = !DILocation(line: 827, column: 37, scope: !2048)
!2092 = !DILocation(line: 827, column: 19, scope: !2048)
!2093 = !DILocation(line: 827, column: 17, scope: !2048)
!2094 = !DILocation(line: 828, column: 19, scope: !2048)
!2095 = !DILocation(line: 828, column: 17, scope: !2048)
!2096 = !DILocation(line: 830, column: 6, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2048, file: !2, line: 830, column: 6)
!2098 = !DILocation(line: 830, column: 23, scope: !2097)
!2099 = !DILocation(line: 830, column: 21, scope: !2097)
!2100 = !DILocation(line: 830, column: 6, scope: !2048)
!2101 = !DILocation(line: 831, column: 3, scope: !2097)
!2102 = !DILocation(line: 833, column: 6, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2048, file: !2, line: 833, column: 6)
!2104 = !DILocation(line: 833, column: 24, scope: !2103)
!2105 = !DILocation(line: 833, column: 21, scope: !2103)
!2106 = !DILocation(line: 833, column: 6, scope: !2048)
!2107 = !DILocation(line: 837, column: 6, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2109, file: !2, line: 837, column: 6)
!2109 = distinct !DILexicalBlock(scope: !2103, file: !2, line: 833, column: 40)
!2110 = !DILocation(line: 837, column: 21, scope: !2108)
!2111 = !DILocation(line: 837, column: 6, scope: !2109)
!2112 = !DILocation(line: 839, column: 7, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2114, file: !2, line: 839, column: 7)
!2114 = distinct !DILexicalBlock(scope: !2108, file: !2, line: 837, column: 31)
!2115 = !DILocation(line: 839, column: 7, scope: !2114)
!2116 = !DILocation(line: 840, column: 5, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2113, file: !2, line: 839, column: 26)
!2118 = !DILocation(line: 841, column: 16, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2113, file: !2, line: 841, column: 15)
!2120 = !DILocation(line: 841, column: 33, scope: !2119)
!2121 = !DILocation(line: 841, column: 31, scope: !2119)
!2122 = !DILocation(line: 841, column: 49, scope: !2119)
!2123 = !DILocation(line: 841, column: 53, scope: !2119)
!2124 = !DILocation(line: 841, column: 68, scope: !2119)
!2125 = !DILocation(line: 841, column: 15, scope: !2113)
!2126 = !DILocation(line: 842, column: 5, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2119, file: !2, line: 841, column: 75)
!2128 = !DILocalVariable(name: "diff", scope: !2129, file: !2, line: 844, type: !237)
!2129 = distinct !DILexicalBlock(scope: !2119, file: !2, line: 843, column: 11)
!2130 = !DILocation(line: 844, column: 14, scope: !2129)
!2131 = !DILocation(line: 844, column: 21, scope: !2129)
!2132 = !DILocation(line: 844, column: 38, scope: !2129)
!2133 = !DILocation(line: 844, column: 36, scope: !2129)
!2134 = !DILocation(line: 845, column: 9, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2129, file: !2, line: 845, column: 9)
!2136 = !DILocation(line: 845, column: 14, scope: !2135)
!2137 = !DILocation(line: 845, column: 9, scope: !2129)
!2138 = !DILocation(line: 846, column: 6, scope: !2135)
!2139 = !DILocation(line: 848, column: 3, scope: !2114)
!2140 = !DILocation(line: 849, column: 2, scope: !2109)
!2141 = !DILocation(line: 851, column: 10, scope: !2048)
!2142 = !DILocation(line: 851, column: 25, scope: !2048)
!2143 = !DILocation(line: 851, column: 3, scope: !2048)
!2144 = !DILocation(line: 851, column: 8, scope: !2048)
!2145 = !DILocation(line: 853, column: 6, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2048, file: !2, line: 853, column: 6)
!2147 = !DILocation(line: 853, column: 6, scope: !2048)
!2148 = !DILocation(line: 854, column: 15, scope: !2146)
!2149 = !DILocation(line: 854, column: 4, scope: !2146)
!2150 = !DILocation(line: 854, column: 13, scope: !2146)
!2151 = !DILocation(line: 854, column: 3, scope: !2146)
!2152 = !DILocation(line: 856, column: 2, scope: !2048)
!2153 = !DILocation(line: 857, column: 1, scope: !2048)
!2154 = distinct !DISubprogram(name: "is_http", scope: !2, file: !2, line: 926, type: !2155, scopeLine: 926, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!2155 = !DISubroutineType(types: !2156)
!2156 = !{!199, !225, !232}
!2157 = !DILocalVariable(name: "s", arg: 1, scope: !2154, file: !2, line: 926, type: !225)
!2158 = !DILocation(line: 926, column: 25, scope: !2154)
!2159 = !DILocalVariable(name: "blen", arg: 2, scope: !2154, file: !2, line: 926, type: !232)
!2160 = !DILocation(line: 926, column: 35, scope: !2154)
!2161 = !DILocation(line: 927, column: 24, scope: !2154)
!2162 = !DILocation(line: 927, column: 27, scope: !2154)
!2163 = !DILocation(line: 927, column: 9, scope: !2154)
!2164 = !DILocation(line: 927, column: 2, scope: !2154)
!2165 = distinct !DISubprogram(name: "is_http_inline", scope: !2, file: !2, line: 898, type: !2155, scopeLine: 898, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !194, retainedNodes: !305)
!2166 = !DILocalVariable(name: "s", arg: 1, scope: !2165, file: !2, line: 898, type: !225)
!2167 = !DILocation(line: 898, column: 46, scope: !2165)
!2168 = !DILocalVariable(name: "blen", arg: 2, scope: !2165, file: !2, line: 898, type: !232)
!2169 = !DILocation(line: 898, column: 56, scope: !2165)
!2170 = !DILocation(line: 899, column: 5, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2165, file: !2, line: 899, column: 5)
!2172 = !DILocation(line: 899, column: 7, scope: !2171)
!2173 = !DILocation(line: 899, column: 10, scope: !2171)
!2174 = !DILocation(line: 899, column: 14, scope: !2171)
!2175 = !DILocation(line: 899, column: 5, scope: !2165)
!2176 = !DILocation(line: 900, column: 14, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2178, file: !2, line: 900, column: 6)
!2178 = distinct !DILexicalBlock(scope: !2171, file: !2, line: 899, column: 20)
!2179 = !DILocation(line: 900, column: 7, scope: !2177)
!2180 = !DILocation(line: 900, column: 25, scope: !2177)
!2181 = !DILocation(line: 900, column: 23, scope: !2177)
!2182 = !DILocation(line: 900, column: 28, scope: !2177)
!2183 = !DILocation(line: 900, column: 38, scope: !2177)
!2184 = !DILocation(line: 900, column: 31, scope: !2177)
!2185 = !DILocation(line: 900, column: 50, scope: !2177)
!2186 = !DILocation(line: 900, column: 48, scope: !2177)
!2187 = !DILocation(line: 900, column: 53, scope: !2177)
!2188 = !DILocation(line: 900, column: 64, scope: !2177)
!2189 = !DILocation(line: 900, column: 57, scope: !2177)
!2190 = !DILocation(line: 900, column: 78, scope: !2177)
!2191 = !DILocation(line: 900, column: 76, scope: !2177)
!2192 = !DILocation(line: 900, column: 81, scope: !2177)
!2193 = !DILocation(line: 900, column: 92, scope: !2177)
!2194 = !DILocation(line: 900, column: 85, scope: !2177)
!2195 = !DILocation(line: 900, column: 103, scope: !2177)
!2196 = !DILocation(line: 900, column: 101, scope: !2177)
!2197 = !DILocation(line: 900, column: 6, scope: !2178)
!2198 = !DILocalVariable(name: "sp", scope: !2199, file: !2, line: 901, type: !225)
!2199 = distinct !DILexicalBlock(scope: !2177, file: !2, line: 900, column: 107)
!2200 = !DILocation(line: 901, column: 16, scope: !2199)
!2201 = !DILocation(line: 901, column: 27, scope: !2199)
!2202 = !DILocation(line: 901, column: 28, scope: !2199)
!2203 = !DILocation(line: 901, column: 31, scope: !2199)
!2204 = !DILocation(line: 901, column: 35, scope: !2199)
!2205 = !DILocation(line: 901, column: 19, scope: !2199)
!2206 = !DILocation(line: 902, column: 7, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2199, file: !2, line: 902, column: 7)
!2208 = !DILocation(line: 902, column: 7, scope: !2199)
!2209 = !DILocation(line: 903, column: 8, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2207, file: !2, line: 902, column: 11)
!2211 = !DILocalVariable(name: "diff_blen", scope: !2210, file: !2, line: 904, type: !232)
!2212 = !DILocation(line: 904, column: 12, scope: !2210)
!2213 = !DILocation(line: 904, column: 24, scope: !2210)
!2214 = !DILocation(line: 904, column: 27, scope: !2210)
!2215 = !DILocation(line: 904, column: 26, scope: !2210)
!2216 = !DILocation(line: 905, column: 8, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2210, file: !2, line: 905, column: 8)
!2218 = !DILocation(line: 905, column: 17, scope: !2217)
!2219 = !DILocation(line: 905, column: 23, scope: !2217)
!2220 = !DILocation(line: 905, column: 20, scope: !2217)
!2221 = !DILocation(line: 905, column: 8, scope: !2210)
!2222 = !DILocation(line: 906, column: 17, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2217, file: !2, line: 905, column: 29)
!2224 = !DILocation(line: 906, column: 20, scope: !2223)
!2225 = !DILocation(line: 906, column: 25, scope: !2223)
!2226 = !DILocation(line: 906, column: 24, scope: !2223)
!2227 = !DILocation(line: 906, column: 9, scope: !2223)
!2228 = !DILocation(line: 906, column: 8, scope: !2223)
!2229 = !DILocation(line: 907, column: 9, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2223, file: !2, line: 907, column: 9)
!2231 = !DILocation(line: 907, column: 9, scope: !2223)
!2232 = !DILocalVariable(name: "ret_len", scope: !2233, file: !2, line: 908, type: !199)
!2233 = distinct !DILexicalBlock(scope: !2230, file: !2, line: 907, column: 13)
!2234 = !DILocation(line: 908, column: 11, scope: !2233)
!2235 = !DILocation(line: 908, column: 27, scope: !2233)
!2236 = !DILocation(line: 908, column: 30, scope: !2233)
!2237 = !DILocation(line: 908, column: 29, scope: !2233)
!2238 = !DILocation(line: 908, column: 31, scope: !2233)
!2239 = !DILocation(line: 908, column: 21, scope: !2233)
!2240 = !DILocalVariable(name: "clheader", scope: !2233, file: !2, line: 909, type: !225)
!2241 = !DILocation(line: 909, column: 19, scope: !2233)
!2242 = !DILocalVariable(name: "cl", scope: !2233, file: !2, line: 910, type: !225)
!2243 = !DILocation(line: 910, column: 19, scope: !2233)
!2244 = !DILocation(line: 910, column: 32, scope: !2233)
!2245 = !DILocation(line: 910, column: 34, scope: !2233)
!2246 = !DILocation(line: 910, column: 37, scope: !2233)
!2247 = !DILocation(line: 910, column: 36, scope: !2233)
!2248 = !DILocation(line: 910, column: 39, scope: !2233)
!2249 = !DILocation(line: 910, column: 24, scope: !2233)
!2250 = !DILocation(line: 911, column: 10, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2233, file: !2, line: 911, column: 10)
!2252 = !DILocation(line: 911, column: 10, scope: !2233)
!2253 = !DILocalVariable(name: "clen", scope: !2254, file: !2, line: 912, type: !234)
!2254 = distinct !DILexicalBlock(scope: !2251, file: !2, line: 911, column: 14)
!2255 = !DILocation(line: 912, column: 22, scope: !2254)
!2256 = !DILocation(line: 912, column: 37, scope: !2254)
!2257 = !DILocation(line: 912, column: 47, scope: !2254)
!2258 = !DILocation(line: 912, column: 40, scope: !2254)
!2259 = !DILocation(line: 912, column: 39, scope: !2254)
!2260 = !DILocation(line: 912, column: 29, scope: !2254)
!2261 = !DILocation(line: 913, column: 11, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2254, file: !2, line: 913, column: 11)
!2263 = !DILocation(line: 913, column: 15, scope: !2262)
!2264 = !DILocation(line: 913, column: 18, scope: !2262)
!2265 = !DILocation(line: 913, column: 21, scope: !2262)
!2266 = !DILocation(line: 913, column: 25, scope: !2262)
!2267 = !DILocation(line: 913, column: 11, scope: !2254)
!2268 = !DILocation(line: 914, column: 25, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2262, file: !2, line: 913, column: 40)
!2270 = !DILocation(line: 914, column: 20, scope: !2269)
!2271 = !DILocation(line: 914, column: 17, scope: !2269)
!2272 = !DILocation(line: 915, column: 8, scope: !2269)
!2273 = !DILocation(line: 916, column: 7, scope: !2254)
!2274 = !DILocation(line: 917, column: 14, scope: !2233)
!2275 = !DILocation(line: 917, column: 7, scope: !2233)
!2276 = !DILocation(line: 919, column: 5, scope: !2223)
!2277 = !DILocation(line: 920, column: 4, scope: !2210)
!2278 = !DILocation(line: 921, column: 3, scope: !2199)
!2279 = !DILocation(line: 922, column: 2, scope: !2178)
!2280 = !DILocation(line: 923, column: 2, scope: !2165)
!2281 = !DILocation(line: 924, column: 1, scope: !2165)
!2282 = distinct !DISubprogram(name: "stun_get_message_len_str", scope: !2, file: !2, line: 930, type: !2283, scopeLine: 930, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!2283 = !DISubroutineType(types: !2284)
!2284 = !{!199, !226, !232, !199, !1611}
!2285 = !DILocalVariable(name: "buf", arg: 1, scope: !2282, file: !2, line: 930, type: !226)
!2286 = !DILocation(line: 930, column: 39, scope: !2282)
!2287 = !DILocalVariable(name: "blen", arg: 2, scope: !2282, file: !2, line: 930, type: !232)
!2288 = !DILocation(line: 930, column: 51, scope: !2282)
!2289 = !DILocalVariable(name: "padding", arg: 3, scope: !2282, file: !2, line: 930, type: !199)
!2290 = !DILocation(line: 930, column: 61, scope: !2282)
!2291 = !DILocalVariable(name: "app_len", arg: 4, scope: !2282, file: !2, line: 930, type: !1611)
!2292 = !DILocation(line: 930, column: 78, scope: !2282)
!2293 = !DILocation(line: 931, column: 6, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2282, file: !2, line: 931, column: 6)
!2295 = !DILocation(line: 931, column: 10, scope: !2294)
!2296 = !DILocation(line: 931, column: 13, scope: !2294)
!2297 = !DILocation(line: 931, column: 6, scope: !2282)
!2298 = !DILocation(line: 933, column: 7, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2300, file: !2, line: 933, column: 7)
!2300 = distinct !DILexicalBlock(scope: !2294, file: !2, line: 931, column: 19)
!2301 = !DILocation(line: 933, column: 11, scope: !2299)
!2302 = !DILocation(line: 933, column: 14, scope: !2299)
!2303 = !DILocation(line: 933, column: 19, scope: !2299)
!2304 = !DILocation(line: 933, column: 7, scope: !2300)
!2305 = !DILocation(line: 934, column: 9, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2307, file: !2, line: 934, column: 8)
!2307 = distinct !DILexicalBlock(scope: !2299, file: !2, line: 933, column: 42)
!2308 = !DILocation(line: 934, column: 8, scope: !2307)
!2309 = !DILocation(line: 935, column: 21, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2311, file: !2, line: 935, column: 9)
!2311 = distinct !DILexicalBlock(scope: !2306, file: !2, line: 934, column: 65)
!2312 = !DILocation(line: 935, column: 10, scope: !2310)
!2313 = !DILocation(line: 935, column: 29, scope: !2310)
!2314 = !DILocation(line: 935, column: 51, scope: !2310)
!2315 = !DILocation(line: 935, column: 9, scope: !2311)
!2316 = !DILocation(line: 936, column: 10, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2318, file: !2, line: 936, column: 10)
!2318 = distinct !DILexicalBlock(scope: !2310, file: !2, line: 935, column: 57)
!2319 = !DILocation(line: 937, column: 8, scope: !2317)
!2320 = !DILocation(line: 936, column: 10, scope: !2318)
!2321 = !DILocalVariable(name: "len", scope: !2322, file: !2, line: 938, type: !237)
!2322 = distinct !DILexicalBlock(scope: !2317, file: !2, line: 937, column: 30)
!2323 = !DILocation(line: 938, column: 16, scope: !2322)
!2324 = !DILocation(line: 938, column: 22, scope: !2322)
!2325 = !DILocation(line: 939, column: 12, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2322, file: !2, line: 939, column: 11)
!2327 = !DILocation(line: 939, column: 16, scope: !2326)
!2328 = !DILocation(line: 939, column: 26, scope: !2326)
!2329 = !DILocation(line: 939, column: 11, scope: !2322)
!2330 = !DILocation(line: 940, column: 12, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2326, file: !2, line: 939, column: 32)
!2332 = !DILocation(line: 941, column: 21, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2331, file: !2, line: 941, column: 12)
!2334 = !DILocation(line: 941, column: 12, scope: !2333)
!2335 = !DILocation(line: 941, column: 28, scope: !2333)
!2336 = !DILocation(line: 941, column: 25, scope: !2333)
!2337 = !DILocation(line: 941, column: 12, scope: !2331)
!2338 = !DILocation(line: 942, column: 28, scope: !2339)
!2339 = distinct !DILexicalBlock(scope: !2333, file: !2, line: 941, column: 34)
!2340 = !DILocation(line: 942, column: 20, scope: !2339)
!2341 = !DILocation(line: 942, column: 10, scope: !2339)
!2342 = !DILocation(line: 942, column: 18, scope: !2339)
!2343 = !DILocation(line: 943, column: 21, scope: !2339)
!2344 = !DILocation(line: 943, column: 16, scope: !2339)
!2345 = !DILocation(line: 943, column: 9, scope: !2339)
!2346 = !DILocation(line: 945, column: 7, scope: !2331)
!2347 = !DILocation(line: 946, column: 6, scope: !2322)
!2348 = !DILocation(line: 947, column: 5, scope: !2318)
!2349 = !DILocation(line: 948, column: 4, scope: !2311)
!2350 = !DILocation(line: 949, column: 3, scope: !2307)
!2351 = !DILocalVariable(name: "http_len", scope: !2352, file: !2, line: 953, type: !199)
!2352 = distinct !DILexicalBlock(scope: !2300, file: !2, line: 952, column: 3)
!2353 = !DILocation(line: 953, column: 8, scope: !2352)
!2354 = !DILocation(line: 953, column: 42, scope: !2352)
!2355 = !DILocation(line: 953, column: 48, scope: !2352)
!2356 = !DILocation(line: 953, column: 19, scope: !2352)
!2357 = !DILocation(line: 954, column: 8, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2352, file: !2, line: 954, column: 7)
!2359 = !DILocation(line: 954, column: 16, scope: !2358)
!2360 = !DILocation(line: 954, column: 20, scope: !2358)
!2361 = !DILocation(line: 954, column: 32, scope: !2358)
!2362 = !DILocation(line: 954, column: 24, scope: !2358)
!2363 = !DILocation(line: 954, column: 42, scope: !2358)
!2364 = !DILocation(line: 954, column: 40, scope: !2358)
!2365 = !DILocation(line: 954, column: 7, scope: !2352)
!2366 = !DILocation(line: 955, column: 24, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2358, file: !2, line: 954, column: 49)
!2368 = !DILocation(line: 955, column: 16, scope: !2367)
!2369 = !DILocation(line: 955, column: 6, scope: !2367)
!2370 = !DILocation(line: 955, column: 14, scope: !2367)
!2371 = !DILocation(line: 956, column: 12, scope: !2367)
!2372 = !DILocation(line: 956, column: 5, scope: !2367)
!2373 = !DILocation(line: 961, column: 6, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2300, file: !2, line: 961, column: 6)
!2375 = !DILocation(line: 961, column: 10, scope: !2374)
!2376 = !DILocation(line: 961, column: 6, scope: !2300)
!2377 = !DILocalVariable(name: "chn", scope: !2378, file: !2, line: 962, type: !237)
!2378 = distinct !DILexicalBlock(scope: !2374, file: !2, line: 961, column: 15)
!2379 = !DILocation(line: 962, column: 13, scope: !2378)
!2380 = !DILocation(line: 962, column: 17, scope: !2378)
!2381 = !DILocation(line: 963, column: 7, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2378, file: !2, line: 963, column: 7)
!2383 = !DILocation(line: 963, column: 7, scope: !2378)
!2384 = !DILocalVariable(name: "bret", scope: !2385, file: !2, line: 965, type: !237)
!2385 = distinct !DILexicalBlock(scope: !2382, file: !2, line: 963, column: 32)
!2386 = !DILocation(line: 965, column: 14, scope: !2385)
!2387 = !DILocation(line: 965, column: 25, scope: !2385)
!2388 = !DILocation(line: 965, column: 24, scope: !2385)
!2389 = !DILocation(line: 965, column: 23, scope: !2385)
!2390 = !DILocation(line: 965, column: 21, scope: !2385)
!2391 = !DILocation(line: 967, column: 16, scope: !2385)
!2392 = !DILocation(line: 967, column: 6, scope: !2385)
!2393 = !DILocation(line: 967, column: 14, scope: !2385)
!2394 = !DILocation(line: 969, column: 8, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !2385, file: !2, line: 969, column: 8)
!2396 = !DILocation(line: 969, column: 16, scope: !2395)
!2397 = !DILocation(line: 969, column: 20, scope: !2395)
!2398 = !DILocation(line: 969, column: 25, scope: !2395)
!2399 = !DILocation(line: 969, column: 8, scope: !2385)
!2400 = !DILocation(line: 970, column: 15, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2395, file: !2, line: 969, column: 36)
!2402 = !DILocation(line: 970, column: 19, scope: !2401)
!2403 = !DILocation(line: 970, column: 23, scope: !2401)
!2404 = !DILocation(line: 970, column: 26, scope: !2401)
!2405 = !DILocation(line: 970, column: 13, scope: !2401)
!2406 = !DILocation(line: 970, column: 11, scope: !2401)
!2407 = !DILocation(line: 971, column: 5, scope: !2401)
!2408 = !DILocation(line: 973, column: 8, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2385, file: !2, line: 973, column: 8)
!2410 = !DILocation(line: 973, column: 14, scope: !2409)
!2411 = !DILocation(line: 973, column: 12, scope: !2409)
!2412 = !DILocation(line: 973, column: 8, scope: !2385)
!2413 = !DILocation(line: 974, column: 13, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2409, file: !2, line: 973, column: 20)
!2415 = !DILocation(line: 974, column: 6, scope: !2414)
!2416 = !DILocation(line: 976, column: 4, scope: !2385)
!2417 = !DILocation(line: 977, column: 3, scope: !2378)
!2418 = !DILocation(line: 979, column: 2, scope: !2300)
!2419 = !DILocation(line: 981, column: 2, scope: !2282)
!2420 = !DILocation(line: 982, column: 1, scope: !2282)
!2421 = distinct !DISubprogram(name: "stun_set_allocate_request_str", scope: !2, file: !2, line: 986, type: !2422, scopeLine: 987, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!2422 = !DISubroutineType(types: !2423)
!2423 = !{!199, !226, !1611, !242, !199, !199, !227, !199, !225, !199}
!2424 = !DILocalVariable(name: "buf", arg: 1, scope: !2421, file: !2, line: 986, type: !226)
!2425 = !DILocation(line: 986, column: 44, scope: !2421)
!2426 = !DILocalVariable(name: "len", arg: 2, scope: !2421, file: !2, line: 986, type: !1611)
!2427 = !DILocation(line: 986, column: 57, scope: !2421)
!2428 = !DILocalVariable(name: "lifetime", arg: 3, scope: !2421, file: !2, line: 986, type: !242)
!2429 = !DILocation(line: 986, column: 71, scope: !2421)
!2430 = !DILocalVariable(name: "af4", arg: 4, scope: !2421, file: !2, line: 986, type: !199)
!2431 = !DILocation(line: 986, column: 85, scope: !2421)
!2432 = !DILocalVariable(name: "af6", arg: 5, scope: !2421, file: !2, line: 986, type: !199)
!2433 = !DILocation(line: 986, column: 94, scope: !2421)
!2434 = !DILocalVariable(name: "transport", arg: 6, scope: !2421, file: !2, line: 987, type: !227)
!2435 = !DILocation(line: 987, column: 13, scope: !2421)
!2436 = !DILocalVariable(name: "mobile", arg: 7, scope: !2421, file: !2, line: 987, type: !199)
!2437 = !DILocation(line: 987, column: 28, scope: !2421)
!2438 = !DILocalVariable(name: "rt", arg: 8, scope: !2421, file: !2, line: 987, type: !225)
!2439 = !DILocation(line: 987, column: 48, scope: !2421)
!2440 = !DILocalVariable(name: "ep", arg: 9, scope: !2421, file: !2, line: 987, type: !199)
!2441 = !DILocation(line: 987, column: 56, scope: !2421)
!2442 = !DILocation(line: 989, column: 47, scope: !2421)
!2443 = !DILocation(line: 989, column: 52, scope: !2421)
!2444 = !DILocation(line: 989, column: 3, scope: !2421)
!2445 = !DILocalVariable(name: "field", scope: !2446, file: !2, line: 993, type: !2447)
!2446 = distinct !DILexicalBlock(scope: !2421, file: !2, line: 992, column: 3)
!2447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 32, elements: !2448)
!2448 = !{!2449}
!2449 = !DISubrange(count: 4)
!2450 = !DILocation(line: 993, column: 13, scope: !2446)
!2451 = !DILocation(line: 994, column: 14, scope: !2446)
!2452 = !DILocation(line: 994, column: 5, scope: !2446)
!2453 = !DILocation(line: 994, column: 13, scope: !2446)
!2454 = !DILocation(line: 995, column: 5, scope: !2446)
!2455 = !DILocation(line: 995, column: 13, scope: !2446)
!2456 = !DILocation(line: 996, column: 5, scope: !2446)
!2457 = !DILocation(line: 996, column: 13, scope: !2446)
!2458 = !DILocation(line: 997, column: 5, scope: !2446)
!2459 = !DILocation(line: 997, column: 13, scope: !2446)
!2460 = !DILocation(line: 998, column: 26, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2446, file: !2, line: 998, column: 8)
!2462 = !DILocation(line: 998, column: 30, scope: !2461)
!2463 = !DILocation(line: 998, column: 69, scope: !2461)
!2464 = !DILocation(line: 998, column: 8, scope: !2461)
!2465 = !DILocation(line: 998, column: 89, scope: !2461)
!2466 = !DILocation(line: 998, column: 8, scope: !2446)
!2467 = !DILocation(line: 998, column: 93, scope: !2461)
!2468 = !DILocation(line: 1003, column: 8, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !2470, file: !2, line: 1003, column: 8)
!2470 = distinct !DILexicalBlock(scope: !2421, file: !2, line: 1002, column: 3)
!2471 = !DILocation(line: 1003, column: 16, scope: !2469)
!2472 = !DILocation(line: 1003, column: 8, scope: !2470)
!2473 = !DILocation(line: 1003, column: 28, scope: !2469)
!2474 = !DILocation(line: 1003, column: 20, scope: !2469)
!2475 = !DILocalVariable(name: "field", scope: !2470, file: !2, line: 1004, type: !242)
!2476 = !DILocation(line: 1004, column: 14, scope: !2470)
!2477 = !DILocation(line: 1004, column: 20, scope: !2470)
!2478 = !DILocation(line: 1005, column: 26, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !2470, file: !2, line: 1005, column: 8)
!2480 = !DILocation(line: 1005, column: 30, scope: !2479)
!2481 = !DILocation(line: 1005, column: 8, scope: !2479)
!2482 = !DILocation(line: 1005, column: 91, scope: !2479)
!2483 = !DILocation(line: 1005, column: 8, scope: !2470)
!2484 = !DILocation(line: 1005, column: 95, scope: !2479)
!2485 = !DILocation(line: 1009, column: 6, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2421, file: !2, line: 1009, column: 6)
!2487 = !DILocation(line: 1009, column: 6, scope: !2421)
!2488 = !DILocation(line: 1010, column: 25, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2490, file: !2, line: 1010, column: 7)
!2490 = distinct !DILexicalBlock(scope: !2486, file: !2, line: 1009, column: 14)
!2491 = !DILocation(line: 1010, column: 29, scope: !2489)
!2492 = !DILocation(line: 1010, column: 7, scope: !2489)
!2493 = !DILocation(line: 1010, column: 85, scope: !2489)
!2494 = !DILocation(line: 1010, column: 7, scope: !2490)
!2495 = !DILocation(line: 1010, column: 89, scope: !2489)
!2496 = !DILocation(line: 1011, column: 3, scope: !2490)
!2497 = !DILocation(line: 1013, column: 6, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2421, file: !2, line: 1013, column: 6)
!2499 = !DILocation(line: 1013, column: 8, scope: !2498)
!2500 = !DILocation(line: 1013, column: 6, scope: !2421)
!2501 = !DILocalVariable(name: "value", scope: !2502, file: !2, line: 1014, type: !227)
!2502 = distinct !DILexicalBlock(scope: !2498, file: !2, line: 1013, column: 13)
!2503 = !DILocation(line: 1014, column: 12, scope: !2502)
!2504 = !DILocation(line: 1014, column: 20, scope: !2502)
!2505 = !DILocation(line: 1015, column: 25, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !2502, file: !2, line: 1015, column: 7)
!2507 = !DILocation(line: 1015, column: 29, scope: !2506)
!2508 = !DILocation(line: 1015, column: 7, scope: !2506)
!2509 = !DILocation(line: 1015, column: 83, scope: !2506)
!2510 = !DILocation(line: 1015, column: 7, scope: !2502)
!2511 = !DILocation(line: 1015, column: 87, scope: !2506)
!2512 = !DILocation(line: 1016, column: 3, scope: !2502)
!2513 = !DILocation(line: 1019, column: 6, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2421, file: !2, line: 1019, column: 6)
!2515 = !DILocation(line: 1019, column: 6, scope: !2421)
!2516 = !DILocation(line: 1021, column: 22, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !2514, file: !2, line: 1019, column: 10)
!2518 = !DILocation(line: 1021, column: 26, scope: !2517)
!2519 = !DILocation(line: 1021, column: 82, scope: !2517)
!2520 = !DILocation(line: 1021, column: 4, scope: !2517)
!2521 = !DILocation(line: 1023, column: 3, scope: !2517)
!2522 = !DILocation(line: 1026, column: 8, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2524, file: !2, line: 1026, column: 8)
!2524 = distinct !DILexicalBlock(scope: !2514, file: !2, line: 1023, column: 10)
!2525 = !DILocation(line: 1026, column: 12, scope: !2523)
!2526 = !DILocation(line: 1026, column: 16, scope: !2523)
!2527 = !DILocation(line: 1026, column: 8, scope: !2524)
!2528 = !DILocalVariable(name: "field", scope: !2529, file: !2, line: 1027, type: !2447)
!2529 = distinct !DILexicalBlock(scope: !2523, file: !2, line: 1026, column: 21)
!2530 = !DILocation(line: 1027, column: 13, scope: !2529)
!2531 = !DILocation(line: 1028, column: 5, scope: !2529)
!2532 = !DILocation(line: 1028, column: 14, scope: !2529)
!2533 = !DILocation(line: 1029, column: 5, scope: !2529)
!2534 = !DILocation(line: 1029, column: 13, scope: !2529)
!2535 = !DILocation(line: 1030, column: 5, scope: !2529)
!2536 = !DILocation(line: 1030, column: 13, scope: !2529)
!2537 = !DILocation(line: 1031, column: 5, scope: !2529)
!2538 = !DILocation(line: 1031, column: 13, scope: !2529)
!2539 = !DILocation(line: 1032, column: 26, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2529, file: !2, line: 1032, column: 8)
!2541 = !DILocation(line: 1032, column: 30, scope: !2540)
!2542 = !DILocation(line: 1032, column: 74, scope: !2540)
!2543 = !DILocation(line: 1032, column: 8, scope: !2540)
!2544 = !DILocation(line: 1032, column: 94, scope: !2540)
!2545 = !DILocation(line: 1032, column: 8, scope: !2529)
!2546 = !DILocation(line: 1032, column: 98, scope: !2540)
!2547 = !DILocation(line: 1033, column: 4, scope: !2529)
!2548 = !DILocation(line: 1035, column: 8, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2524, file: !2, line: 1035, column: 8)
!2550 = !DILocation(line: 1035, column: 12, scope: !2549)
!2551 = !DILocation(line: 1035, column: 16, scope: !2549)
!2552 = !DILocation(line: 1035, column: 8, scope: !2524)
!2553 = !DILocalVariable(name: "field", scope: !2554, file: !2, line: 1036, type: !2447)
!2554 = distinct !DILexicalBlock(scope: !2549, file: !2, line: 1035, column: 21)
!2555 = !DILocation(line: 1036, column: 13, scope: !2554)
!2556 = !DILocation(line: 1037, column: 5, scope: !2554)
!2557 = !DILocation(line: 1037, column: 14, scope: !2554)
!2558 = !DILocation(line: 1038, column: 5, scope: !2554)
!2559 = !DILocation(line: 1038, column: 13, scope: !2554)
!2560 = !DILocation(line: 1039, column: 5, scope: !2554)
!2561 = !DILocation(line: 1039, column: 13, scope: !2554)
!2562 = !DILocation(line: 1040, column: 5, scope: !2554)
!2563 = !DILocation(line: 1040, column: 13, scope: !2554)
!2564 = !DILocation(line: 1041, column: 26, scope: !2565)
!2565 = distinct !DILexicalBlock(scope: !2554, file: !2, line: 1041, column: 8)
!2566 = !DILocation(line: 1041, column: 30, scope: !2565)
!2567 = !DILocation(line: 1041, column: 74, scope: !2565)
!2568 = !DILocation(line: 1041, column: 8, scope: !2565)
!2569 = !DILocation(line: 1041, column: 94, scope: !2565)
!2570 = !DILocation(line: 1041, column: 8, scope: !2554)
!2571 = !DILocation(line: 1041, column: 98, scope: !2565)
!2572 = !DILocation(line: 1042, column: 4, scope: !2554)
!2573 = !DILocation(line: 1044, column: 8, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2524, file: !2, line: 1044, column: 8)
!2575 = !DILocation(line: 1044, column: 12, scope: !2574)
!2576 = !DILocation(line: 1044, column: 15, scope: !2574)
!2577 = !DILocation(line: 1044, column: 8, scope: !2524)
!2578 = !DILocalVariable(name: "field", scope: !2579, file: !2, line: 1045, type: !2447)
!2579 = distinct !DILexicalBlock(scope: !2574, file: !2, line: 1044, column: 20)
!2580 = !DILocation(line: 1045, column: 13, scope: !2579)
!2581 = !DILocation(line: 1046, column: 5, scope: !2579)
!2582 = !DILocation(line: 1046, column: 14, scope: !2579)
!2583 = !DILocation(line: 1047, column: 5, scope: !2579)
!2584 = !DILocation(line: 1047, column: 13, scope: !2579)
!2585 = !DILocation(line: 1048, column: 5, scope: !2579)
!2586 = !DILocation(line: 1048, column: 13, scope: !2579)
!2587 = !DILocation(line: 1049, column: 5, scope: !2579)
!2588 = !DILocation(line: 1049, column: 13, scope: !2579)
!2589 = !DILocation(line: 1050, column: 26, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2579, file: !2, line: 1050, column: 8)
!2591 = !DILocation(line: 1050, column: 30, scope: !2590)
!2592 = !DILocation(line: 1050, column: 75, scope: !2590)
!2593 = !DILocation(line: 1050, column: 8, scope: !2590)
!2594 = !DILocation(line: 1050, column: 95, scope: !2590)
!2595 = !DILocation(line: 1050, column: 8, scope: !2579)
!2596 = !DILocation(line: 1050, column: 99, scope: !2590)
!2597 = !DILocation(line: 1051, column: 4, scope: !2579)
!2598 = !DILocation(line: 1054, column: 3, scope: !2421)
!2599 = !DILocation(line: 1055, column: 1, scope: !2421)
!2600 = distinct !DISubprogram(name: "stun_attr_add_str", scope: !2, file: !2, line: 1442, type: !2601, scopeLine: 1442, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!2601 = !DISubroutineType(types: !2602)
!2602 = !{!199, !226, !1611, !237, !244, !199}
!2603 = !DILocalVariable(name: "buf", arg: 1, scope: !2600, file: !2, line: 1442, type: !226)
!2604 = !DILocation(line: 1442, column: 32, scope: !2600)
!2605 = !DILocalVariable(name: "len", arg: 2, scope: !2600, file: !2, line: 1442, type: !1611)
!2606 = !DILocation(line: 1442, column: 45, scope: !2600)
!2607 = !DILocalVariable(name: "attr", arg: 3, scope: !2600, file: !2, line: 1442, type: !237)
!2608 = !DILocation(line: 1442, column: 59, scope: !2600)
!2609 = !DILocalVariable(name: "avalue", arg: 4, scope: !2600, file: !2, line: 1442, type: !244)
!2610 = !DILocation(line: 1442, column: 80, scope: !2600)
!2611 = !DILocalVariable(name: "alen", arg: 5, scope: !2600, file: !2, line: 1442, type: !199)
!2612 = !DILocation(line: 1442, column: 92, scope: !2600)
!2613 = !DILocation(line: 1443, column: 6, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !2600, file: !2, line: 1443, column: 6)
!2615 = !DILocation(line: 1443, column: 10, scope: !2614)
!2616 = !DILocation(line: 1443, column: 6, scope: !2600)
!2617 = !DILocation(line: 1443, column: 18, scope: !2614)
!2618 = !DILocation(line: 1443, column: 14, scope: !2614)
!2619 = !DILocalVariable(name: "tmp", scope: !2600, file: !2, line: 1444, type: !2620)
!2620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 8, elements: !116)
!2621 = !DILocation(line: 1444, column: 11, scope: !2600)
!2622 = !DILocation(line: 1445, column: 7, scope: !2623)
!2623 = distinct !DILexicalBlock(scope: !2600, file: !2, line: 1445, column: 6)
!2624 = !DILocation(line: 1445, column: 6, scope: !2600)
!2625 = !DILocation(line: 1446, column: 9, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2623, file: !2, line: 1445, column: 15)
!2627 = !DILocation(line: 1447, column: 12, scope: !2626)
!2628 = !DILocation(line: 1447, column: 11, scope: !2626)
!2629 = !DILocation(line: 1448, column: 3, scope: !2626)
!2630 = !DILocalVariable(name: "clen", scope: !2600, file: !2, line: 1449, type: !199)
!2631 = !DILocation(line: 1449, column: 7, scope: !2600)
!2632 = !DILocation(line: 1449, column: 47, scope: !2600)
!2633 = !DILocation(line: 1449, column: 52, scope: !2600)
!2634 = !DILocation(line: 1449, column: 51, scope: !2600)
!2635 = !DILocation(line: 1449, column: 14, scope: !2600)
!2636 = !DILocalVariable(name: "newlen", scope: !2600, file: !2, line: 1450, type: !199)
!2637 = !DILocation(line: 1450, column: 7, scope: !2600)
!2638 = !DILocation(line: 1450, column: 16, scope: !2600)
!2639 = !DILocation(line: 1450, column: 21, scope: !2600)
!2640 = !DILocation(line: 1450, column: 27, scope: !2600)
!2641 = !DILocation(line: 1450, column: 25, scope: !2600)
!2642 = !DILocalVariable(name: "newlenrem4", scope: !2600, file: !2, line: 1451, type: !199)
!2643 = !DILocation(line: 1451, column: 7, scope: !2600)
!2644 = !DILocation(line: 1451, column: 18, scope: !2600)
!2645 = !DILocation(line: 1451, column: 25, scope: !2600)
!2646 = !DILocation(line: 1452, column: 6, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2600, file: !2, line: 1452, column: 6)
!2648 = !DILocation(line: 1452, column: 6, scope: !2600)
!2649 = !DILocation(line: 1453, column: 12, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2647, file: !2, line: 1452, column: 18)
!2651 = !DILocation(line: 1453, column: 22, scope: !2650)
!2652 = !DILocation(line: 1453, column: 21, scope: !2650)
!2653 = !DILocation(line: 1453, column: 18, scope: !2650)
!2654 = !DILocation(line: 1453, column: 11, scope: !2650)
!2655 = !DILocation(line: 1454, column: 3, scope: !2650)
!2656 = !DILocation(line: 1455, column: 6, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2600, file: !2, line: 1455, column: 6)
!2658 = !DILocation(line: 1455, column: 12, scope: !2657)
!2659 = !DILocation(line: 1455, column: 6, scope: !2600)
!2660 = !DILocation(line: 1455, column: 37, scope: !2657)
!2661 = !DILocalVariable(name: "attr_start", scope: !2662, file: !2, line: 1457, type: !226)
!2662 = distinct !DILexicalBlock(scope: !2657, file: !2, line: 1456, column: 8)
!2663 = !DILocation(line: 1457, column: 14, scope: !2662)
!2664 = !DILocation(line: 1457, column: 25, scope: !2662)
!2665 = !DILocation(line: 1457, column: 29, scope: !2662)
!2666 = !DILocation(line: 1457, column: 28, scope: !2662)
!2667 = !DILocalVariable(name: "attr_start_16t", scope: !2662, file: !2, line: 1459, type: !246)
!2668 = !DILocation(line: 1459, column: 15, scope: !2662)
!2669 = !DILocation(line: 1459, column: 41, scope: !2662)
!2670 = !DILocation(line: 1461, column: 38, scope: !2662)
!2671 = !DILocation(line: 1461, column: 42, scope: !2662)
!2672 = !DILocation(line: 1461, column: 5, scope: !2662)
!2673 = !DILocation(line: 1462, column: 12, scope: !2662)
!2674 = !DILocation(line: 1462, column: 6, scope: !2662)
!2675 = !DILocation(line: 1462, column: 10, scope: !2662)
!2676 = !DILocation(line: 1464, column: 23, scope: !2662)
!2677 = !DILocation(line: 1464, column: 5, scope: !2662)
!2678 = !DILocation(line: 1464, column: 22, scope: !2662)
!2679 = !DILocation(line: 1465, column: 23, scope: !2662)
!2680 = !DILocation(line: 1465, column: 5, scope: !2662)
!2681 = !DILocation(line: 1465, column: 22, scope: !2662)
!2682 = !DILocation(line: 1466, column: 8, scope: !2683)
!2683 = distinct !DILexicalBlock(scope: !2662, file: !2, line: 1466, column: 8)
!2684 = !DILocation(line: 1466, column: 12, scope: !2683)
!2685 = !DILocation(line: 1466, column: 8, scope: !2662)
!2686 = !DILocation(line: 1466, column: 22, scope: !2683)
!2687 = !DILocation(line: 1466, column: 29, scope: !2683)
!2688 = !DILocation(line: 1466, column: 39, scope: !2683)
!2689 = !DILocation(line: 1466, column: 42, scope: !2683)
!2690 = !DILocation(line: 1466, column: 16, scope: !2683)
!2691 = !DILocation(line: 1467, column: 5, scope: !2662)
!2692 = !DILocation(line: 1469, column: 1, scope: !2600)
!2693 = distinct !DISubprogram(name: "stun_set_allocate_response_str", scope: !2, file: !2, line: 1057, type: !2694, scopeLine: 1061, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!2694 = !DISubroutineType(types: !2695)
!2695 = !{!199, !226, !1611, !1653, !2696, !2696, !2696, !242, !242, !199, !244, !2742, !231}
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2697 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2698)
!2698 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_addr", file: !2699, line: 48, baseType: !2700)
!2699 = !DIFile(filename: "src/client/ns_turn_ioaddr.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "6bb7c107d1e7937049c12f6d0dffd94c")
!2700 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !2699, line: 44, size: 224, elements: !2701)
!2701 = !{!2702, !2710, !2723}
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2700, file: !2699, line: 45, baseType: !2703, size: 128)
!2703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !2704, line: 180, size: 128, elements: !2705)
!2704 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "e3826be048699664d9ef7b080f62f2e0")
!2705 = !{!2706, !2709}
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !2703, file: !2704, line: 182, baseType: !2707, size: 16)
!2707 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !2708, line: 28, baseType: !239)
!2708 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "dd7f1d9dd6e26f88d1726905ed5d9ff5")
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !2703, file: !2704, line: 183, baseType: !47, size: 112, offset: 16)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "s4", scope: !2700, file: !2699, line: 46, baseType: !2711, size: 128)
!2711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !2712, line: 245, size: 128, elements: !2713)
!2712 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "eb6560f10d4cfe9f30fea2c92b9da0fd")
!2713 = !{!2714, !2715, !2717, !2722}
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !2711, file: !2712, line: 247, baseType: !2707, size: 16)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !2711, file: !2712, line: 248, baseType: !2716, size: 16, offset: 16)
!2716 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !2712, line: 123, baseType: !237)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !2711, file: !2712, line: 249, baseType: !2718, size: 32, offset: 32)
!2718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !2712, line: 31, size: 32, elements: !2719)
!2719 = !{!2720}
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !2718, file: !2712, line: 33, baseType: !2721, size: 32)
!2721 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !2712, line: 30, baseType: !242)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !2711, file: !2712, line: 252, baseType: !760, size: 64, offset: 64)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "s6", scope: !2700, file: !2699, line: 47, baseType: !2724, size: 224)
!2724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !2712, line: 260, size: 224, elements: !2725)
!2725 = !{!2726, !2727, !2728, !2729, !2741}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_family", scope: !2724, file: !2712, line: 262, baseType: !2707, size: 16)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_port", scope: !2724, file: !2712, line: 263, baseType: !2716, size: 16, offset: 16)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_flowinfo", scope: !2724, file: !2712, line: 264, baseType: !242, size: 32, offset: 32)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !2724, file: !2712, line: 265, baseType: !2730, size: 128, offset: 64)
!2730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !2712, line: 219, size: 128, elements: !2731)
!2731 = !{!2732}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !2730, file: !2712, line: 226, baseType: !2733, size: 128)
!2733 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2730, file: !2712, line: 221, size: 128, elements: !2734)
!2734 = !{!2735, !2737, !2739}
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !2733, file: !2712, line: 223, baseType: !2736, size: 128)
!2736 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 128, elements: !38)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !2733, file: !2712, line: 224, baseType: !2738, size: 128)
!2738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 128, elements: !5)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !2733, file: !2712, line: 225, baseType: !2740, size: 128)
!2740 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 128, elements: !2448)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_scope_id", scope: !2724, file: !2712, line: 266, baseType: !242, size: 32, offset: 192)
!2742 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !228, line: 27, baseType: !2743)
!2743 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !230, line: 45, baseType: !234)
!2744 = !DILocalVariable(name: "buf", arg: 1, scope: !2693, file: !2, line: 1057, type: !226)
!2745 = !DILocation(line: 1057, column: 45, scope: !2693)
!2746 = !DILocalVariable(name: "len", arg: 2, scope: !2693, file: !2, line: 1057, type: !1611)
!2747 = !DILocation(line: 1057, column: 58, scope: !2693)
!2748 = !DILocalVariable(name: "tid", arg: 3, scope: !2693, file: !2, line: 1057, type: !1653)
!2749 = !DILocation(line: 1057, column: 73, scope: !2693)
!2750 = !DILocalVariable(name: "relayed_addr1", arg: 4, scope: !2693, file: !2, line: 1058, type: !2696)
!2751 = !DILocation(line: 1058, column: 24, scope: !2693)
!2752 = !DILocalVariable(name: "relayed_addr2", arg: 5, scope: !2693, file: !2, line: 1058, type: !2696)
!2753 = !DILocation(line: 1058, column: 55, scope: !2693)
!2754 = !DILocalVariable(name: "reflexive_addr", arg: 6, scope: !2693, file: !2, line: 1059, type: !2696)
!2755 = !DILocation(line: 1059, column: 24, scope: !2693)
!2756 = !DILocalVariable(name: "lifetime", arg: 7, scope: !2693, file: !2, line: 1060, type: !242)
!2757 = !DILocation(line: 1060, column: 17, scope: !2693)
!2758 = !DILocalVariable(name: "max_lifetime", arg: 8, scope: !2693, file: !2, line: 1060, type: !242)
!2759 = !DILocation(line: 1060, column: 36, scope: !2693)
!2760 = !DILocalVariable(name: "error_code", arg: 9, scope: !2693, file: !2, line: 1060, type: !199)
!2761 = !DILocation(line: 1060, column: 54, scope: !2693)
!2762 = !DILocalVariable(name: "reason", arg: 10, scope: !2693, file: !2, line: 1060, type: !244)
!2763 = !DILocation(line: 1060, column: 81, scope: !2693)
!2764 = !DILocalVariable(name: "reservation_token", arg: 11, scope: !2693, file: !2, line: 1061, type: !2742)
!2765 = !DILocation(line: 1061, column: 17, scope: !2693)
!2766 = !DILocalVariable(name: "mobile_id", arg: 12, scope: !2693, file: !2, line: 1061, type: !231)
!2767 = !DILocation(line: 1061, column: 42, scope: !2693)
!2768 = !DILocation(line: 1063, column: 7, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2693, file: !2, line: 1063, column: 6)
!2770 = !DILocation(line: 1063, column: 6, scope: !2693)
!2771 = !DILocation(line: 1065, column: 58, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2769, file: !2, line: 1063, column: 19)
!2773 = !DILocation(line: 1065, column: 63, scope: !2772)
!2774 = !DILocation(line: 1065, column: 68, scope: !2772)
!2775 = !DILocation(line: 1065, column: 5, scope: !2772)
!2776 = !DILocation(line: 1067, column: 8, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2772, file: !2, line: 1067, column: 8)
!2778 = !DILocation(line: 1067, column: 8, scope: !2772)
!2779 = !DILocation(line: 1068, column: 33, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2781, file: !2, line: 1068, column: 10)
!2781 = distinct !DILexicalBlock(scope: !2777, file: !2, line: 1067, column: 23)
!2782 = !DILocation(line: 1068, column: 37, scope: !2780)
!2783 = !DILocation(line: 1068, column: 76, scope: !2780)
!2784 = !DILocation(line: 1068, column: 10, scope: !2780)
!2785 = !DILocation(line: 1068, column: 90, scope: !2780)
!2786 = !DILocation(line: 1068, column: 10, scope: !2781)
!2787 = !DILocation(line: 1068, column: 94, scope: !2780)
!2788 = !DILocation(line: 1069, column: 5, scope: !2781)
!2789 = !DILocation(line: 1071, column: 8, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2772, file: !2, line: 1071, column: 8)
!2791 = !DILocation(line: 1071, column: 8, scope: !2772)
!2792 = !DILocation(line: 1072, column: 33, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2794, file: !2, line: 1072, column: 10)
!2794 = distinct !DILexicalBlock(scope: !2790, file: !2, line: 1071, column: 23)
!2795 = !DILocation(line: 1072, column: 37, scope: !2793)
!2796 = !DILocation(line: 1072, column: 76, scope: !2793)
!2797 = !DILocation(line: 1072, column: 10, scope: !2793)
!2798 = !DILocation(line: 1072, column: 90, scope: !2793)
!2799 = !DILocation(line: 1072, column: 10, scope: !2794)
!2800 = !DILocation(line: 1072, column: 94, scope: !2793)
!2801 = !DILocation(line: 1073, column: 5, scope: !2794)
!2802 = !DILocation(line: 1075, column: 8, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2772, file: !2, line: 1075, column: 8)
!2804 = !DILocation(line: 1075, column: 8, scope: !2772)
!2805 = !DILocation(line: 1076, column: 33, scope: !2806)
!2806 = distinct !DILexicalBlock(scope: !2807, file: !2, line: 1076, column: 10)
!2807 = distinct !DILexicalBlock(scope: !2803, file: !2, line: 1075, column: 24)
!2808 = !DILocation(line: 1076, column: 37, scope: !2806)
!2809 = !DILocation(line: 1076, column: 75, scope: !2806)
!2810 = !DILocation(line: 1076, column: 10, scope: !2806)
!2811 = !DILocation(line: 1076, column: 90, scope: !2806)
!2812 = !DILocation(line: 1076, column: 10, scope: !2807)
!2813 = !DILocation(line: 1076, column: 94, scope: !2806)
!2814 = !DILocation(line: 1077, column: 5, scope: !2807)
!2815 = !DILocation(line: 1079, column: 8, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2772, file: !2, line: 1079, column: 8)
!2817 = !DILocation(line: 1079, column: 8, scope: !2772)
!2818 = !DILocation(line: 1080, column: 25, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2816, file: !2, line: 1079, column: 27)
!2820 = !DILocation(line: 1080, column: 24, scope: !2819)
!2821 = !DILocation(line: 1081, column: 25, scope: !2819)
!2822 = !DILocation(line: 1081, column: 29, scope: !2819)
!2823 = !DILocation(line: 1081, column: 7, scope: !2819)
!2824 = !DILocation(line: 1082, column: 5, scope: !2819)
!2825 = !DILocation(line: 1085, column: 10, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2827, file: !2, line: 1085, column: 10)
!2827 = distinct !DILexicalBlock(scope: !2772, file: !2, line: 1084, column: 5)
!2828 = !DILocation(line: 1085, column: 18, scope: !2826)
!2829 = !DILocation(line: 1085, column: 10, scope: !2827)
!2830 = !DILocation(line: 1085, column: 30, scope: !2826)
!2831 = !DILocation(line: 1085, column: 22, scope: !2826)
!2832 = !DILocation(line: 1086, column: 15, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2826, file: !2, line: 1086, column: 15)
!2834 = !DILocation(line: 1086, column: 24, scope: !2833)
!2835 = !DILocation(line: 1086, column: 23, scope: !2833)
!2836 = !DILocation(line: 1086, column: 15, scope: !2826)
!2837 = !DILocation(line: 1086, column: 49, scope: !2833)
!2838 = !DILocation(line: 1086, column: 47, scope: !2833)
!2839 = !DILocation(line: 1086, column: 38, scope: !2833)
!2840 = !DILocalVariable(name: "field", scope: !2827, file: !2, line: 1088, type: !242)
!2841 = !DILocation(line: 1088, column: 16, scope: !2827)
!2842 = !DILocation(line: 1088, column: 22, scope: !2827)
!2843 = !DILocation(line: 1089, column: 28, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2827, file: !2, line: 1089, column: 10)
!2845 = !DILocation(line: 1089, column: 32, scope: !2844)
!2846 = !DILocation(line: 1089, column: 10, scope: !2844)
!2847 = !DILocation(line: 1089, column: 93, scope: !2844)
!2848 = !DILocation(line: 1089, column: 10, scope: !2827)
!2849 = !DILocation(line: 1089, column: 97, scope: !2844)
!2850 = !DILocation(line: 1092, column: 8, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2772, file: !2, line: 1092, column: 8)
!2852 = !DILocation(line: 1092, column: 18, scope: !2851)
!2853 = !DILocation(line: 1092, column: 22, scope: !2851)
!2854 = !DILocation(line: 1092, column: 21, scope: !2851)
!2855 = !DILocation(line: 1092, column: 8, scope: !2772)
!2856 = !DILocation(line: 1093, column: 27, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2858, file: !2, line: 1093, column: 9)
!2858 = distinct !DILexicalBlock(scope: !2851, file: !2, line: 1092, column: 33)
!2859 = !DILocation(line: 1093, column: 31, scope: !2857)
!2860 = !DILocation(line: 1093, column: 76, scope: !2857)
!2861 = !DILocation(line: 1093, column: 98, scope: !2857)
!2862 = !DILocation(line: 1093, column: 91, scope: !2857)
!2863 = !DILocation(line: 1093, column: 86, scope: !2857)
!2864 = !DILocation(line: 1093, column: 9, scope: !2857)
!2865 = !DILocation(line: 1093, column: 109, scope: !2857)
!2866 = !DILocation(line: 1093, column: 9, scope: !2858)
!2867 = !DILocation(line: 1093, column: 113, scope: !2857)
!2868 = !DILocation(line: 1094, column: 5, scope: !2858)
!2869 = !DILocation(line: 1096, column: 3, scope: !2772)
!2870 = !DILocation(line: 1097, column: 56, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2769, file: !2, line: 1096, column: 10)
!2872 = !DILocation(line: 1097, column: 61, scope: !2871)
!2873 = !DILocation(line: 1097, column: 66, scope: !2871)
!2874 = !DILocation(line: 1097, column: 78, scope: !2871)
!2875 = !DILocation(line: 1097, column: 86, scope: !2871)
!2876 = !DILocation(line: 1097, column: 5, scope: !2871)
!2877 = !DILocation(line: 1100, column: 3, scope: !2693)
!2878 = !DILocation(line: 1101, column: 1, scope: !2693)
!2879 = distinct !DISubprogram(name: "stun_attr_add_addr_str", scope: !2, file: !2, line: 1471, type: !2880, scopeLine: 1471, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!2880 = !DISubroutineType(types: !2881)
!2881 = !{!199, !226, !1611, !237, !2696}
!2882 = !DILocalVariable(name: "buf", arg: 1, scope: !2879, file: !2, line: 1471, type: !226)
!2883 = !DILocation(line: 1471, column: 37, scope: !2879)
!2884 = !DILocalVariable(name: "len", arg: 2, scope: !2879, file: !2, line: 1471, type: !1611)
!2885 = !DILocation(line: 1471, column: 50, scope: !2879)
!2886 = !DILocalVariable(name: "attr_type", arg: 3, scope: !2879, file: !2, line: 1471, type: !237)
!2887 = !DILocation(line: 1471, column: 64, scope: !2879)
!2888 = !DILocalVariable(name: "ca", arg: 4, scope: !2879, file: !2, line: 1471, type: !2696)
!2889 = !DILocation(line: 1471, column: 91, scope: !2879)
!2890 = !DILocalVariable(name: "tid", scope: !2879, file: !2, line: 1473, type: !1654)
!2891 = !DILocation(line: 1473, column: 12, scope: !2879)
!2892 = !DILocation(line: 1474, column: 29, scope: !2879)
!2893 = !DILocation(line: 1474, column: 35, scope: !2879)
!2894 = !DILocation(line: 1474, column: 34, scope: !2879)
!2895 = !DILocation(line: 1474, column: 3, scope: !2879)
!2896 = !DILocalVariable(name: "xor_ed", scope: !2879, file: !2, line: 1476, type: !199)
!2897 = !DILocation(line: 1476, column: 7, scope: !2879)
!2898 = !DILocation(line: 1477, column: 10, scope: !2879)
!2899 = !DILocation(line: 1477, column: 3, scope: !2879)
!2900 = !DILocation(line: 1481, column: 11, scope: !2901)
!2901 = distinct !DILexicalBlock(scope: !2879, file: !2, line: 1477, column: 21)
!2902 = !DILocation(line: 1482, column: 5, scope: !2901)
!2903 = !DILocation(line: 1485, column: 3, scope: !2901)
!2904 = !DILocalVariable(name: "public_addr", scope: !2879, file: !2, line: 1487, type: !2698)
!2905 = !DILocation(line: 1487, column: 12, scope: !2879)
!2906 = !DILocation(line: 1488, column: 35, scope: !2879)
!2907 = !DILocation(line: 1488, column: 3, scope: !2879)
!2908 = !DILocalVariable(name: "cfield", scope: !2879, file: !2, line: 1490, type: !2909)
!2909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 512, elements: !2910)
!2910 = !{!2911}
!2911 = !DISubrange(count: 64)
!2912 = !DILocation(line: 1490, column: 11, scope: !2879)
!2913 = !DILocalVariable(name: "clen", scope: !2879, file: !2, line: 1491, type: !199)
!2914 = !DILocation(line: 1491, column: 7, scope: !2879)
!2915 = !DILocation(line: 1492, column: 37, scope: !2916)
!2916 = distinct !DILexicalBlock(scope: !2879, file: !2, line: 1492, column: 6)
!2917 = !DILocation(line: 1492, column: 52, scope: !2916)
!2918 = !DILocation(line: 1492, column: 83, scope: !2916)
!2919 = !DILocation(line: 1492, column: 79, scope: !2916)
!2920 = !DILocation(line: 1492, column: 6, scope: !2916)
!2921 = !DILocation(line: 1492, column: 90, scope: !2916)
!2922 = !DILocation(line: 1492, column: 6, scope: !2879)
!2923 = !DILocation(line: 1493, column: 5, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2916, file: !2, line: 1492, column: 94)
!2925 = !DILocation(line: 1496, column: 24, scope: !2926)
!2926 = distinct !DILexicalBlock(scope: !2879, file: !2, line: 1496, column: 6)
!2927 = !DILocation(line: 1496, column: 28, scope: !2926)
!2928 = !DILocation(line: 1496, column: 32, scope: !2926)
!2929 = !DILocation(line: 1496, column: 62, scope: !2926)
!2930 = !DILocation(line: 1496, column: 6, scope: !2926)
!2931 = !DILocation(line: 1496, column: 67, scope: !2926)
!2932 = !DILocation(line: 1496, column: 6, scope: !2879)
!2933 = !DILocation(line: 1496, column: 71, scope: !2926)
!2934 = !DILocation(line: 1498, column: 3, scope: !2879)
!2935 = !DILocation(line: 1499, column: 1, scope: !2879)
!2936 = distinct !DISubprogram(name: "_ioa_ntoh64", scope: !254, file: !254, line: 72, type: !2937, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !194, retainedNodes: !305)
!2937 = !DISubroutineType(types: !2938)
!2938 = !{!2742, !2742}
!2939 = !DILocalVariable(name: "v", arg: 1, scope: !2936, file: !254, line: 72, type: !2742)
!2940 = !DILocation(line: 72, column: 45, scope: !2936)
!2941 = !DILocalVariable(name: "src", scope: !2936, file: !254, line: 75, type: !226)
!2942 = !DILocation(line: 75, column: 11, scope: !2936)
!2943 = !DILocalVariable(name: "dst", scope: !2936, file: !254, line: 76, type: !226)
!2944 = !DILocation(line: 76, column: 11, scope: !2936)
!2945 = !DILocation(line: 76, column: 17, scope: !2936)
!2946 = !DILocation(line: 76, column: 21, scope: !2936)
!2947 = !DILocation(line: 77, column: 2, scope: !2936)
!2948 = !DILocation(line: 77, column: 9, scope: !2936)
!2949 = !DILocation(line: 77, column: 15, scope: !2936)
!2950 = !DILocation(line: 77, column: 13, scope: !2936)
!2951 = !DILocalVariable(name: "vdst", scope: !2952, file: !254, line: 78, type: !227)
!2952 = distinct !DILexicalBlock(scope: !2936, file: !254, line: 77, column: 20)
!2953 = !DILocation(line: 78, column: 11, scope: !2952)
!2954 = !DILocation(line: 78, column: 19, scope: !2952)
!2955 = !DILocation(line: 78, column: 18, scope: !2952)
!2956 = !DILocation(line: 79, column: 15, scope: !2952)
!2957 = !DILocation(line: 79, column: 14, scope: !2952)
!2958 = !DILocation(line: 79, column: 8, scope: !2952)
!2959 = !DILocation(line: 79, column: 12, scope: !2952)
!2960 = !DILocation(line: 80, column: 14, scope: !2952)
!2961 = !DILocation(line: 80, column: 8, scope: !2952)
!2962 = !DILocation(line: 80, column: 12, scope: !2952)
!2963 = distinct !{!2963, !2947, !2964, !855}
!2964 = !DILocation(line: 81, column: 2, scope: !2936)
!2965 = !DILocation(line: 87, column: 9, scope: !2936)
!2966 = !DILocation(line: 87, column: 2, scope: !2936)
!2967 = distinct !DISubprogram(name: "stun_set_channel_bind_request_str", scope: !2, file: !2, line: 1105, type: !2968, scopeLine: 1106, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!2968 = !DISubroutineType(types: !2969)
!2969 = !{!237, !226, !1611, !2696, !237}
!2970 = !DILocalVariable(name: "buf", arg: 1, scope: !2967, file: !2, line: 1105, type: !226)
!2971 = !DILocation(line: 1105, column: 53, scope: !2967)
!2972 = !DILocalVariable(name: "len", arg: 2, scope: !2967, file: !2, line: 1105, type: !1611)
!2973 = !DILocation(line: 1105, column: 66, scope: !2967)
!2974 = !DILocalVariable(name: "peer_addr", arg: 3, scope: !2967, file: !2, line: 1106, type: !2696)
!2975 = !DILocation(line: 1106, column: 25, scope: !2967)
!2976 = !DILocalVariable(name: "channel_number", arg: 4, scope: !2967, file: !2, line: 1106, type: !237)
!2977 = !DILocation(line: 1106, column: 45, scope: !2967)
!2978 = !DILocation(line: 1108, column: 7, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2967, file: !2, line: 1108, column: 6)
!2980 = !DILocation(line: 1108, column: 6, scope: !2967)
!2981 = !DILocation(line: 1109, column: 54, scope: !2982)
!2982 = distinct !DILexicalBlock(scope: !2979, file: !2, line: 1108, column: 43)
!2983 = !DILocation(line: 1109, column: 44, scope: !2982)
!2984 = !DILocation(line: 1109, column: 68, scope: !2982)
!2985 = !DILocation(line: 1109, column: 32, scope: !2982)
!2986 = !DILocation(line: 1109, column: 31, scope: !2982)
!2987 = !DILocation(line: 1109, column: 29, scope: !2982)
!2988 = !DILocation(line: 1109, column: 22, scope: !2982)
!2989 = !DILocation(line: 1109, column: 20, scope: !2982)
!2990 = !DILocation(line: 1110, column: 3, scope: !2982)
!2991 = !DILocation(line: 1112, column: 51, scope: !2967)
!2992 = !DILocation(line: 1112, column: 56, scope: !2967)
!2993 = !DILocation(line: 1112, column: 3, scope: !2967)
!2994 = !DILocation(line: 1114, column: 39, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !2967, file: !2, line: 1114, column: 6)
!2996 = !DILocation(line: 1114, column: 44, scope: !2995)
!2997 = !DILocation(line: 1114, column: 49, scope: !2995)
!2998 = !DILocation(line: 1114, column: 6, scope: !2995)
!2999 = !DILocation(line: 1114, column: 64, scope: !2995)
!3000 = !DILocation(line: 1114, column: 6, scope: !2967)
!3001 = !DILocation(line: 1114, column: 68, scope: !2995)
!3002 = !DILocation(line: 1116, column: 7, scope: !3003)
!3003 = distinct !DILexicalBlock(scope: !2967, file: !2, line: 1116, column: 6)
!3004 = !DILocation(line: 1116, column: 6, scope: !2967)
!3005 = !DILocalVariable(name: "ca", scope: !3006, file: !2, line: 1117, type: !2698)
!3006 = distinct !DILexicalBlock(scope: !3003, file: !2, line: 1116, column: 18)
!3007 = !DILocation(line: 1117, column: 14, scope: !3006)
!3008 = !DILocation(line: 1118, column: 5, scope: !3006)
!3009 = !DILocation(line: 1120, column: 31, scope: !3010)
!3010 = distinct !DILexicalBlock(scope: !3006, file: !2, line: 1120, column: 8)
!3011 = !DILocation(line: 1120, column: 35, scope: !3010)
!3012 = !DILocation(line: 1120, column: 8, scope: !3010)
!3013 = !DILocation(line: 1120, column: 76, scope: !3010)
!3014 = !DILocation(line: 1120, column: 8, scope: !3006)
!3015 = !DILocation(line: 1120, column: 80, scope: !3010)
!3016 = !DILocation(line: 1121, column: 3, scope: !3006)
!3017 = !DILocation(line: 1122, column: 31, scope: !3018)
!3018 = distinct !DILexicalBlock(scope: !3019, file: !2, line: 1122, column: 8)
!3019 = distinct !DILexicalBlock(scope: !3003, file: !2, line: 1121, column: 10)
!3020 = !DILocation(line: 1122, column: 35, scope: !3018)
!3021 = !DILocation(line: 1122, column: 72, scope: !3018)
!3022 = !DILocation(line: 1122, column: 8, scope: !3018)
!3023 = !DILocation(line: 1122, column: 82, scope: !3018)
!3024 = !DILocation(line: 1122, column: 8, scope: !3019)
!3025 = !DILocation(line: 1122, column: 86, scope: !3018)
!3026 = !DILocation(line: 1125, column: 10, scope: !2967)
!3027 = !DILocation(line: 1125, column: 3, scope: !2967)
!3028 = !DILocation(line: 1126, column: 1, scope: !2967)
!3029 = distinct !DISubprogram(name: "stun_attr_add_channel_number_str", scope: !2, file: !2, line: 1558, type: !3030, scopeLine: 1558, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!3030 = !DISubroutineType(types: !3031)
!3031 = !{!199, !226, !1611, !237}
!3032 = !DILocalVariable(name: "buf", arg: 1, scope: !3029, file: !2, line: 1558, type: !226)
!3033 = !DILocation(line: 1558, column: 47, scope: !3029)
!3034 = !DILocalVariable(name: "len", arg: 2, scope: !3029, file: !2, line: 1558, type: !1611)
!3035 = !DILocation(line: 1558, column: 60, scope: !3029)
!3036 = !DILocalVariable(name: "chnumber", arg: 3, scope: !3029, file: !2, line: 1558, type: !237)
!3037 = !DILocation(line: 1558, column: 74, scope: !3029)
!3038 = !DILocalVariable(name: "field", scope: !3029, file: !2, line: 1560, type: !3039)
!3039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 32, elements: !3040)
!3040 = !{!3041}
!3041 = !DISubrange(count: 2)
!3042 = !DILocation(line: 1560, column: 12, scope: !3029)
!3043 = !DILocation(line: 1561, column: 12, scope: !3029)
!3044 = !DILocation(line: 1561, column: 3, scope: !3029)
!3045 = !DILocation(line: 1561, column: 11, scope: !3029)
!3046 = !DILocation(line: 1562, column: 3, scope: !3029)
!3047 = !DILocation(line: 1562, column: 11, scope: !3029)
!3048 = !DILocation(line: 1564, column: 28, scope: !3029)
!3049 = !DILocation(line: 1564, column: 32, scope: !3029)
!3050 = !DILocation(line: 1564, column: 76, scope: !3029)
!3051 = !DILocation(line: 1564, column: 10, scope: !3029)
!3052 = !DILocation(line: 1564, column: 3, scope: !3029)
!3053 = distinct !DISubprogram(name: "stun_set_channel_bind_response_str", scope: !2, file: !2, line: 1128, type: !3054, scopeLine: 1128, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!3054 = !DISubroutineType(types: !3055)
!3055 = !{null, !226, !1611, !1653, !199, !244}
!3056 = !DILocalVariable(name: "buf", arg: 1, scope: !3053, file: !2, line: 1128, type: !226)
!3057 = !DILocation(line: 1128, column: 50, scope: !3053)
!3058 = !DILocalVariable(name: "len", arg: 2, scope: !3053, file: !2, line: 1128, type: !1611)
!3059 = !DILocation(line: 1128, column: 63, scope: !3053)
!3060 = !DILocalVariable(name: "tid", arg: 3, scope: !3053, file: !2, line: 1128, type: !1653)
!3061 = !DILocation(line: 1128, column: 78, scope: !3053)
!3062 = !DILocalVariable(name: "error_code", arg: 4, scope: !3053, file: !2, line: 1128, type: !199)
!3063 = !DILocation(line: 1128, column: 87, scope: !3053)
!3064 = !DILocalVariable(name: "reason", arg: 5, scope: !3053, file: !2, line: 1128, type: !244)
!3065 = !DILocation(line: 1128, column: 114, scope: !3053)
!3066 = !DILocation(line: 1129, column: 7, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !3053, file: !2, line: 1129, column: 6)
!3068 = !DILocation(line: 1129, column: 6, scope: !3053)
!3069 = !DILocation(line: 1130, column: 62, scope: !3070)
!3070 = distinct !DILexicalBlock(scope: !3067, file: !2, line: 1129, column: 19)
!3071 = !DILocation(line: 1130, column: 67, scope: !3070)
!3072 = !DILocation(line: 1130, column: 72, scope: !3070)
!3073 = !DILocation(line: 1130, column: 5, scope: !3070)
!3074 = !DILocation(line: 1131, column: 3, scope: !3070)
!3075 = !DILocation(line: 1132, column: 60, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !3067, file: !2, line: 1131, column: 10)
!3077 = !DILocation(line: 1132, column: 65, scope: !3076)
!3078 = !DILocation(line: 1132, column: 70, scope: !3076)
!3079 = !DILocation(line: 1132, column: 82, scope: !3076)
!3080 = !DILocation(line: 1132, column: 90, scope: !3076)
!3081 = !DILocation(line: 1132, column: 5, scope: !3076)
!3082 = !DILocation(line: 1134, column: 1, scope: !3053)
!3083 = distinct !DISubprogram(name: "stun_set_binding_request_str", scope: !2, file: !2, line: 1138, type: !1609, scopeLine: 1138, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!3084 = !DILocalVariable(name: "buf", arg: 1, scope: !3083, file: !2, line: 1138, type: !226)
!3085 = !DILocation(line: 1138, column: 44, scope: !3083)
!3086 = !DILocalVariable(name: "len", arg: 2, scope: !3083, file: !2, line: 1138, type: !1611)
!3087 = !DILocation(line: 1138, column: 57, scope: !3083)
!3088 = !DILocation(line: 1139, column: 46, scope: !3083)
!3089 = !DILocation(line: 1139, column: 51, scope: !3083)
!3090 = !DILocation(line: 1139, column: 3, scope: !3083)
!3091 = !DILocation(line: 1140, column: 1, scope: !3083)
!3092 = distinct !DISubprogram(name: "stun_set_binding_response_str", scope: !2, file: !2, line: 1142, type: !3093, scopeLine: 1146, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!3093 = !DISubroutineType(types: !3094)
!3094 = !{!199, !226, !1611, !1653, !2696, !199, !244, !242, !199}
!3095 = !DILocalVariable(name: "buf", arg: 1, scope: !3092, file: !2, line: 1142, type: !226)
!3096 = !DILocation(line: 1142, column: 44, scope: !3092)
!3097 = !DILocalVariable(name: "len", arg: 2, scope: !3092, file: !2, line: 1142, type: !1611)
!3098 = !DILocation(line: 1142, column: 57, scope: !3092)
!3099 = !DILocalVariable(name: "tid", arg: 3, scope: !3092, file: !2, line: 1142, type: !1653)
!3100 = !DILocation(line: 1142, column: 72, scope: !3092)
!3101 = !DILocalVariable(name: "reflexive_addr", arg: 4, scope: !3092, file: !2, line: 1143, type: !2696)
!3102 = !DILocation(line: 1143, column: 23, scope: !3092)
!3103 = !DILocalVariable(name: "error_code", arg: 5, scope: !3092, file: !2, line: 1143, type: !199)
!3104 = !DILocation(line: 1143, column: 43, scope: !3092)
!3105 = !DILocalVariable(name: "reason", arg: 6, scope: !3092, file: !2, line: 1143, type: !244)
!3106 = !DILocation(line: 1143, column: 70, scope: !3092)
!3107 = !DILocalVariable(name: "cookie", arg: 7, scope: !3092, file: !2, line: 1144, type: !242)
!3108 = !DILocation(line: 1144, column: 16, scope: !3092)
!3109 = !DILocalVariable(name: "old_stun", arg: 8, scope: !3092, file: !2, line: 1144, type: !199)
!3110 = !DILocation(line: 1144, column: 28, scope: !3092)
!3111 = !DILocation(line: 1147, column: 7, scope: !3112)
!3112 = distinct !DILexicalBlock(scope: !3092, file: !2, line: 1147, column: 6)
!3113 = !DILocation(line: 1147, column: 6, scope: !3092)
!3114 = !DILocation(line: 1148, column: 8, scope: !3115)
!3115 = distinct !DILexicalBlock(scope: !3116, file: !2, line: 1148, column: 7)
!3116 = distinct !DILexicalBlock(scope: !3112, file: !2, line: 1147, column: 19)
!3117 = !DILocation(line: 1148, column: 7, scope: !3116)
!3118 = !DILocation(line: 1149, column: 56, scope: !3119)
!3119 = distinct !DILexicalBlock(scope: !3115, file: !2, line: 1148, column: 18)
!3120 = !DILocation(line: 1149, column: 61, scope: !3119)
!3121 = !DILocation(line: 1149, column: 66, scope: !3119)
!3122 = !DILocation(line: 1149, column: 4, scope: !3119)
!3123 = !DILocation(line: 1150, column: 3, scope: !3119)
!3124 = !DILocation(line: 1151, column: 60, scope: !3125)
!3125 = distinct !DILexicalBlock(scope: !3115, file: !2, line: 1150, column: 10)
!3126 = !DILocation(line: 1151, column: 65, scope: !3125)
!3127 = !DILocation(line: 1151, column: 70, scope: !3125)
!3128 = !DILocation(line: 1151, column: 75, scope: !3125)
!3129 = !DILocation(line: 1151, column: 4, scope: !3125)
!3130 = !DILocation(line: 1153, column: 7, scope: !3131)
!3131 = distinct !DILexicalBlock(scope: !3116, file: !2, line: 1153, column: 6)
!3132 = !DILocation(line: 1153, column: 16, scope: !3131)
!3133 = !DILocation(line: 1153, column: 19, scope: !3131)
!3134 = !DILocation(line: 1153, column: 6, scope: !3116)
!3135 = !DILocation(line: 1154, column: 31, scope: !3136)
!3136 = distinct !DILexicalBlock(scope: !3137, file: !2, line: 1154, column: 8)
!3137 = distinct !DILexicalBlock(scope: !3131, file: !2, line: 1153, column: 35)
!3138 = !DILocation(line: 1154, column: 36, scope: !3136)
!3139 = !DILocation(line: 1154, column: 76, scope: !3136)
!3140 = !DILocation(line: 1154, column: 8, scope: !3136)
!3141 = !DILocation(line: 1154, column: 92, scope: !3136)
!3142 = !DILocation(line: 1154, column: 8, scope: !3137)
!3143 = !DILocation(line: 1155, column: 5, scope: !3136)
!3144 = !DILocation(line: 1156, column: 3, scope: !3137)
!3145 = !DILocation(line: 1157, column: 6, scope: !3146)
!3146 = distinct !DILexicalBlock(scope: !3116, file: !2, line: 1157, column: 6)
!3147 = !DILocation(line: 1157, column: 6, scope: !3116)
!3148 = !DILocation(line: 1158, column: 31, scope: !3149)
!3149 = distinct !DILexicalBlock(scope: !3150, file: !2, line: 1158, column: 8)
!3150 = distinct !DILexicalBlock(scope: !3146, file: !2, line: 1157, column: 22)
!3151 = !DILocation(line: 1158, column: 36, scope: !3149)
!3152 = !DILocation(line: 1158, column: 72, scope: !3149)
!3153 = !DILocation(line: 1158, column: 8, scope: !3149)
!3154 = !DILocation(line: 1158, column: 88, scope: !3149)
!3155 = !DILocation(line: 1158, column: 8, scope: !3150)
!3156 = !DILocation(line: 1159, column: 5, scope: !3149)
!3157 = !DILocation(line: 1160, column: 3, scope: !3150)
!3158 = !DILocation(line: 1161, column: 2, scope: !3116)
!3159 = !DILocation(line: 1161, column: 14, scope: !3160)
!3160 = distinct !DILexicalBlock(scope: !3112, file: !2, line: 1161, column: 13)
!3161 = !DILocation(line: 1161, column: 13, scope: !3112)
!3162 = !DILocation(line: 1162, column: 53, scope: !3163)
!3163 = distinct !DILexicalBlock(scope: !3160, file: !2, line: 1161, column: 24)
!3164 = !DILocation(line: 1162, column: 58, scope: !3163)
!3165 = !DILocation(line: 1162, column: 63, scope: !3163)
!3166 = !DILocation(line: 1162, column: 75, scope: !3163)
!3167 = !DILocation(line: 1162, column: 83, scope: !3163)
!3168 = !DILocation(line: 1162, column: 3, scope: !3163)
!3169 = !DILocation(line: 1163, column: 2, scope: !3163)
!3170 = !DILocation(line: 1164, column: 57, scope: !3171)
!3171 = distinct !DILexicalBlock(scope: !3160, file: !2, line: 1163, column: 9)
!3172 = !DILocation(line: 1164, column: 62, scope: !3171)
!3173 = !DILocation(line: 1164, column: 67, scope: !3171)
!3174 = !DILocation(line: 1164, column: 79, scope: !3171)
!3175 = !DILocation(line: 1164, column: 87, scope: !3171)
!3176 = !DILocation(line: 1164, column: 92, scope: !3171)
!3177 = !DILocation(line: 1164, column: 3, scope: !3171)
!3178 = !DILocation(line: 1167, column: 2, scope: !3092)
!3179 = !DILocation(line: 1168, column: 1, scope: !3092)
!3180 = distinct !DISubprogram(name: "stun_is_binding_request_str", scope: !2, file: !2, line: 1170, type: !3181, scopeLine: 1171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!3181 = !DISubroutineType(types: !3182)
!3182 = !{!199, !244, !232, !232}
!3183 = !DILocalVariable(name: "buf", arg: 1, scope: !3180, file: !2, line: 1170, type: !244)
!3184 = !DILocation(line: 1170, column: 48, scope: !3180)
!3185 = !DILocalVariable(name: "len", arg: 2, scope: !3180, file: !2, line: 1170, type: !232)
!3186 = !DILocation(line: 1170, column: 60, scope: !3180)
!3187 = !DILocalVariable(name: "offset", arg: 3, scope: !3180, file: !2, line: 1170, type: !232)
!3188 = !DILocation(line: 1170, column: 72, scope: !3180)
!3189 = !DILocation(line: 1172, column: 6, scope: !3190)
!3190 = distinct !DILexicalBlock(scope: !3180, file: !2, line: 1172, column: 6)
!3191 = !DILocation(line: 1172, column: 15, scope: !3190)
!3192 = !DILocation(line: 1172, column: 13, scope: !3190)
!3193 = !DILocation(line: 1172, column: 6, scope: !3180)
!3194 = !DILocation(line: 1173, column: 12, scope: !3195)
!3195 = distinct !DILexicalBlock(scope: !3190, file: !2, line: 1172, column: 20)
!3196 = !DILocation(line: 1173, column: 9, scope: !3195)
!3197 = !DILocation(line: 1174, column: 12, scope: !3195)
!3198 = !DILocation(line: 1174, column: 9, scope: !3195)
!3199 = !DILocation(line: 1175, column: 37, scope: !3200)
!3200 = distinct !DILexicalBlock(scope: !3195, file: !2, line: 1175, column: 9)
!3201 = !DILocation(line: 1175, column: 42, scope: !3200)
!3202 = !DILocation(line: 1175, column: 9, scope: !3200)
!3203 = !DILocation(line: 1175, column: 9, scope: !3195)
!3204 = !DILocation(line: 1176, column: 31, scope: !3205)
!3205 = distinct !DILexicalBlock(scope: !3206, file: !2, line: 1176, column: 11)
!3206 = distinct !DILexicalBlock(scope: !3200, file: !2, line: 1175, column: 48)
!3207 = !DILocation(line: 1176, column: 36, scope: !3205)
!3208 = !DILocation(line: 1176, column: 11, scope: !3205)
!3209 = !DILocation(line: 1176, column: 41, scope: !3205)
!3210 = !DILocation(line: 1176, column: 65, scope: !3205)
!3211 = !DILocation(line: 1176, column: 70, scope: !3205)
!3212 = !DILocation(line: 1176, column: 45, scope: !3205)
!3213 = !DILocation(line: 1176, column: 75, scope: !3205)
!3214 = !DILocation(line: 1176, column: 11, scope: !3206)
!3215 = !DILocation(line: 1177, column: 2, scope: !3216)
!3216 = distinct !DILexicalBlock(scope: !3205, file: !2, line: 1176, column: 100)
!3217 = !DILocation(line: 1179, column: 5, scope: !3206)
!3218 = !DILocation(line: 1180, column: 3, scope: !3195)
!3219 = !DILocation(line: 1181, column: 3, scope: !3180)
!3220 = !DILocation(line: 1182, column: 1, scope: !3180)
!3221 = distinct !DISubprogram(name: "stun_is_binding_response_str", scope: !2, file: !2, line: 1184, type: !861, scopeLine: 1184, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!3222 = !DILocalVariable(name: "buf", arg: 1, scope: !3221, file: !2, line: 1184, type: !244)
!3223 = !DILocation(line: 1184, column: 49, scope: !3221)
!3224 = !DILocalVariable(name: "len", arg: 2, scope: !3221, file: !2, line: 1184, type: !232)
!3225 = !DILocation(line: 1184, column: 61, scope: !3221)
!3226 = !DILocation(line: 1185, column: 34, scope: !3227)
!3227 = distinct !DILexicalBlock(scope: !3221, file: !2, line: 1185, column: 6)
!3228 = !DILocation(line: 1185, column: 38, scope: !3227)
!3229 = !DILocation(line: 1185, column: 6, scope: !3227)
!3230 = !DILocation(line: 1185, column: 43, scope: !3227)
!3231 = !DILocation(line: 1186, column: 27, scope: !3227)
!3232 = !DILocation(line: 1186, column: 31, scope: !3227)
!3233 = !DILocation(line: 1186, column: 7, scope: !3227)
!3234 = !DILocation(line: 1186, column: 35, scope: !3227)
!3235 = !DILocation(line: 1185, column: 6, scope: !3221)
!3236 = !DILocation(line: 1187, column: 29, scope: !3237)
!3237 = distinct !DILexicalBlock(scope: !3238, file: !2, line: 1187, column: 8)
!3238 = distinct !DILexicalBlock(scope: !3227, file: !2, line: 1186, column: 59)
!3239 = !DILocation(line: 1187, column: 33, scope: !3237)
!3240 = !DILocation(line: 1187, column: 8, scope: !3237)
!3241 = !DILocation(line: 1187, column: 8, scope: !3238)
!3242 = !DILocation(line: 1188, column: 7, scope: !3243)
!3243 = distinct !DILexicalBlock(scope: !3237, file: !2, line: 1187, column: 39)
!3244 = !DILocation(line: 1190, column: 3, scope: !3238)
!3245 = !DILocation(line: 1191, column: 3, scope: !3221)
!3246 = !DILocation(line: 1192, column: 1, scope: !3221)
!3247 = distinct !DISubprogram(name: "stun_tid_equals", scope: !2, file: !2, line: 1197, type: !3248, scopeLine: 1197, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!3248 = !DISubroutineType(types: !3249)
!3249 = !{!199, !1759, !1759}
!3250 = !DILocalVariable(name: "id1", arg: 1, scope: !3247, file: !2, line: 1197, type: !1759)
!3251 = !DILocation(line: 1197, column: 37, scope: !3247)
!3252 = !DILocalVariable(name: "id2", arg: 2, scope: !3247, file: !2, line: 1197, type: !1759)
!3253 = !DILocation(line: 1197, column: 58, scope: !3247)
!3254 = !DILocation(line: 1198, column: 6, scope: !3255)
!3255 = distinct !DILexicalBlock(scope: !3247, file: !2, line: 1198, column: 6)
!3256 = !DILocation(line: 1198, column: 11, scope: !3255)
!3257 = !DILocation(line: 1198, column: 9, scope: !3255)
!3258 = !DILocation(line: 1198, column: 6, scope: !3247)
!3259 = !DILocation(line: 1198, column: 16, scope: !3255)
!3260 = !DILocation(line: 1199, column: 7, scope: !3261)
!3261 = distinct !DILexicalBlock(scope: !3247, file: !2, line: 1199, column: 6)
!3262 = !DILocation(line: 1199, column: 6, scope: !3247)
!3263 = !DILocation(line: 1199, column: 12, scope: !3261)
!3264 = !DILocation(line: 1200, column: 7, scope: !3265)
!3265 = distinct !DILexicalBlock(scope: !3247, file: !2, line: 1200, column: 6)
!3266 = !DILocation(line: 1200, column: 6, scope: !3247)
!3267 = !DILocation(line: 1200, column: 12, scope: !3265)
!3268 = !DILocalVariable(name: "i", scope: !3269, file: !2, line: 1202, type: !209)
!3269 = distinct !DILexicalBlock(scope: !3247, file: !2, line: 1201, column: 3)
!3270 = !DILocation(line: 1202, column: 18, scope: !3269)
!3271 = !DILocation(line: 1203, column: 10, scope: !3272)
!3272 = distinct !DILexicalBlock(scope: !3269, file: !2, line: 1203, column: 5)
!3273 = !DILocation(line: 1203, column: 9, scope: !3272)
!3274 = !DILocation(line: 1203, column: 13, scope: !3275)
!3275 = distinct !DILexicalBlock(scope: !3272, file: !2, line: 1203, column: 5)
!3276 = !DILocation(line: 1203, column: 14, scope: !3275)
!3277 = !DILocation(line: 1203, column: 5, scope: !3272)
!3278 = !DILocation(line: 1204, column: 10, scope: !3279)
!3279 = distinct !DILexicalBlock(scope: !3280, file: !2, line: 1204, column: 10)
!3280 = distinct !DILexicalBlock(scope: !3275, file: !2, line: 1203, column: 34)
!3281 = !DILocation(line: 1204, column: 15, scope: !3279)
!3282 = !DILocation(line: 1204, column: 22, scope: !3279)
!3283 = !DILocation(line: 1204, column: 26, scope: !3279)
!3284 = !DILocation(line: 1204, column: 31, scope: !3279)
!3285 = !DILocation(line: 1204, column: 38, scope: !3279)
!3286 = !DILocation(line: 1204, column: 24, scope: !3279)
!3287 = !DILocation(line: 1204, column: 10, scope: !3280)
!3288 = !DILocation(line: 1204, column: 42, scope: !3279)
!3289 = !DILocation(line: 1205, column: 5, scope: !3280)
!3290 = !DILocation(line: 1203, column: 29, scope: !3275)
!3291 = !DILocation(line: 1203, column: 5, scope: !3275)
!3292 = distinct !{!3292, !3277, !3293, !855}
!3293 = !DILocation(line: 1205, column: 5, scope: !3272)
!3294 = !DILocation(line: 1207, column: 3, scope: !3247)
!3295 = !DILocation(line: 1208, column: 1, scope: !3247)
!3296 = distinct !DISubprogram(name: "stun_tid_cpy", scope: !2, file: !2, line: 1210, type: !3297, scopeLine: 1210, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!3297 = !DISubroutineType(types: !3298)
!3298 = !{null, !1653, !1759}
!3299 = !DILocalVariable(name: "id1", arg: 1, scope: !3296, file: !2, line: 1210, type: !1653)
!3300 = !DILocation(line: 1210, column: 29, scope: !3296)
!3301 = !DILocalVariable(name: "id2", arg: 2, scope: !3296, file: !2, line: 1210, type: !1759)
!3302 = !DILocation(line: 1210, column: 50, scope: !3296)
!3303 = !DILocation(line: 1211, column: 7, scope: !3304)
!3304 = distinct !DILexicalBlock(scope: !3296, file: !2, line: 1211, column: 6)
!3305 = !DILocation(line: 1211, column: 6, scope: !3296)
!3306 = !DILocation(line: 1211, column: 12, scope: !3304)
!3307 = !DILocation(line: 1212, column: 7, scope: !3308)
!3308 = distinct !DILexicalBlock(scope: !3296, file: !2, line: 1212, column: 6)
!3309 = !DILocation(line: 1212, column: 6, scope: !3296)
!3310 = !DILocation(line: 1212, column: 12, scope: !3308)
!3311 = !DILocation(line: 1213, column: 23, scope: !3296)
!3312 = !DILocation(line: 1213, column: 28, scope: !3296)
!3313 = !DILocation(line: 1213, column: 22, scope: !3296)
!3314 = !DILocation(line: 1213, column: 44, scope: !3296)
!3315 = !DILocation(line: 1213, column: 49, scope: !3296)
!3316 = !DILocation(line: 1213, column: 43, scope: !3296)
!3317 = !DILocation(line: 1213, column: 3, scope: !3296)
!3318 = !DILocation(line: 1214, column: 1, scope: !3296)
!3319 = distinct !DISubprogram(name: "stun_tid_from_message_str", scope: !2, file: !2, line: 1228, type: !3320, scopeLine: 1228, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!3320 = !DISubroutineType(types: !3321)
!3321 = !{null, !244, !232, !1653}
!3322 = !DILocalVariable(name: "buf", arg: 1, scope: !3319, file: !2, line: 1228, type: !244)
!3323 = !DILocation(line: 1228, column: 47, scope: !3319)
!3324 = !DILocalVariable(name: "len", arg: 2, scope: !3319, file: !2, line: 1228, type: !232)
!3325 = !DILocation(line: 1228, column: 59, scope: !3319)
!3326 = !DILocalVariable(name: "id", arg: 3, scope: !3319, file: !2, line: 1228, type: !1653)
!3327 = !DILocation(line: 1228, column: 74, scope: !3319)
!3328 = !DILocation(line: 1229, column: 2, scope: !3319)
!3329 = !DILocation(line: 1229, column: 2, scope: !3330)
!3330 = distinct !DILexicalBlock(scope: !3319, file: !2, line: 1229, column: 2)
!3331 = !DILocation(line: 1230, column: 23, scope: !3319)
!3332 = !DILocation(line: 1230, column: 26, scope: !3319)
!3333 = !DILocation(line: 1230, column: 30, scope: !3319)
!3334 = !DILocation(line: 1230, column: 2, scope: !3319)
!3335 = !DILocation(line: 1231, column: 1, scope: !3319)
!3336 = distinct !DISubprogram(name: "stun_tid_from_string", scope: !2, file: !2, line: 1222, type: !3337, scopeLine: 1222, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !194, retainedNodes: !305)
!3337 = !DISubroutineType(types: !3338)
!3338 = !{null, !244, !1653}
!3339 = !DILocalVariable(name: "s", arg: 1, scope: !3336, file: !2, line: 1222, type: !244)
!3340 = !DILocation(line: 1222, column: 49, scope: !3336)
!3341 = !DILocalVariable(name: "id", arg: 2, scope: !3336, file: !2, line: 1222, type: !1653)
!3342 = !DILocation(line: 1222, column: 62, scope: !3336)
!3343 = !DILocation(line: 1223, column: 6, scope: !3344)
!3344 = distinct !DILexicalBlock(scope: !3336, file: !2, line: 1223, column: 6)
!3345 = !DILocation(line: 1223, column: 8, scope: !3344)
!3346 = !DILocation(line: 1223, column: 11, scope: !3344)
!3347 = !DILocation(line: 1223, column: 6, scope: !3336)
!3348 = !DILocation(line: 1224, column: 11, scope: !3349)
!3349 = distinct !DILexicalBlock(scope: !3344, file: !2, line: 1223, column: 15)
!3350 = !DILocation(line: 1224, column: 21, scope: !3349)
!3351 = !DILocation(line: 1224, column: 25, scope: !3349)
!3352 = !DILocation(line: 1224, column: 20, scope: !3349)
!3353 = !DILocation(line: 1224, column: 5, scope: !3349)
!3354 = !DILocation(line: 1225, column: 3, scope: !3349)
!3355 = !DILocation(line: 1226, column: 1, scope: !3336)
!3356 = distinct !DISubprogram(name: "stun_tid_string_cpy", scope: !2, file: !2, line: 1216, type: !1757, scopeLine: 1216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !194, retainedNodes: !305)
!3357 = !DILocalVariable(name: "s", arg: 1, scope: !3356, file: !2, line: 1216, type: !226)
!3358 = !DILocation(line: 1216, column: 42, scope: !3356)
!3359 = !DILocalVariable(name: "id", arg: 2, scope: !3356, file: !2, line: 1216, type: !1759)
!3360 = !DILocation(line: 1216, column: 61, scope: !3356)
!3361 = !DILocation(line: 1217, column: 6, scope: !3362)
!3362 = distinct !DILexicalBlock(scope: !3356, file: !2, line: 1217, column: 6)
!3363 = !DILocation(line: 1217, column: 8, scope: !3362)
!3364 = !DILocation(line: 1217, column: 11, scope: !3362)
!3365 = !DILocation(line: 1217, column: 6, scope: !3356)
!3366 = !DILocation(line: 1218, column: 25, scope: !3367)
!3367 = distinct !DILexicalBlock(scope: !3362, file: !2, line: 1217, column: 15)
!3368 = !DILocation(line: 1218, column: 29, scope: !3367)
!3369 = !DILocation(line: 1218, column: 24, scope: !3367)
!3370 = !DILocation(line: 1218, column: 37, scope: !3367)
!3371 = !DILocation(line: 1218, column: 5, scope: !3367)
!3372 = !DILocation(line: 1219, column: 3, scope: !3367)
!3373 = !DILocation(line: 1220, column: 1, scope: !3356)
!3374 = distinct !DISubprogram(name: "stun_tid_generate", scope: !2, file: !2, line: 1239, type: !3375, scopeLine: 1239, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!3375 = !DISubroutineType(types: !3376)
!3376 = !{null, !1653}
!3377 = !DILocalVariable(name: "id", arg: 1, scope: !3374, file: !2, line: 1239, type: !1653)
!3378 = !DILocation(line: 1239, column: 34, scope: !3374)
!3379 = !DILocation(line: 1240, column: 6, scope: !3380)
!3380 = distinct !DILexicalBlock(scope: !3374, file: !2, line: 1240, column: 6)
!3381 = !DILocation(line: 1240, column: 6, scope: !3374)
!3382 = !DILocation(line: 1241, column: 26, scope: !3383)
!3383 = distinct !DILexicalBlock(scope: !3380, file: !2, line: 1240, column: 10)
!3384 = !DILocation(line: 1241, column: 30, scope: !3383)
!3385 = !DILocation(line: 1241, column: 5, scope: !3383)
!3386 = !DILocation(line: 1242, column: 3, scope: !3383)
!3387 = !DILocation(line: 1243, column: 1, scope: !3374)
!3388 = distinct !DISubprogram(name: "turn_random_tid_size", scope: !2, file: !2, line: 104, type: !3389, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !194, retainedNodes: !305)
!3389 = !DISubroutineType(types: !3390)
!3390 = !{null, !250}
!3391 = !DILocalVariable(name: "id", arg: 1, scope: !3388, file: !2, line: 104, type: !250)
!3392 = !DILocation(line: 104, column: 40, scope: !3388)
!3393 = !DILocalVariable(name: "ar", scope: !3388, file: !2, line: 106, type: !247)
!3394 = !DILocation(line: 106, column: 12, scope: !3388)
!3395 = !DILocation(line: 106, column: 26, scope: !3388)
!3396 = !DILocation(line: 107, column: 41, scope: !3397)
!3397 = distinct !DILexicalBlock(scope: !3388, file: !2, line: 107, column: 5)
!3398 = !DILocation(line: 107, column: 6, scope: !3397)
!3399 = !DILocation(line: 107, column: 5, scope: !3388)
!3400 = !DILocalVariable(name: "i", scope: !3401, file: !2, line: 108, type: !232)
!3401 = distinct !DILexicalBlock(scope: !3397, file: !2, line: 107, column: 49)
!3402 = !DILocation(line: 108, column: 10, scope: !3401)
!3403 = !DILocation(line: 109, column: 8, scope: !3404)
!3404 = distinct !DILexicalBlock(scope: !3401, file: !2, line: 109, column: 3)
!3405 = !DILocation(line: 109, column: 7, scope: !3404)
!3406 = !DILocation(line: 109, column: 11, scope: !3407)
!3407 = distinct !DILexicalBlock(scope: !3404, file: !2, line: 109, column: 3)
!3408 = !DILocation(line: 109, column: 12, scope: !3407)
!3409 = !DILocation(line: 109, column: 3, scope: !3404)
!3410 = !DILocation(line: 110, column: 22, scope: !3411)
!3411 = distinct !DILexicalBlock(scope: !3407, file: !2, line: 109, column: 20)
!3412 = !DILocation(line: 110, column: 12, scope: !3411)
!3413 = !DILocation(line: 110, column: 4, scope: !3411)
!3414 = !DILocation(line: 110, column: 7, scope: !3411)
!3415 = !DILocation(line: 110, column: 10, scope: !3411)
!3416 = !DILocation(line: 111, column: 3, scope: !3411)
!3417 = !DILocation(line: 109, column: 15, scope: !3407)
!3418 = !DILocation(line: 109, column: 3, scope: !3407)
!3419 = distinct !{!3419, !3409, !3420, !855}
!3420 = !DILocation(line: 111, column: 3, scope: !3404)
!3421 = !DILocation(line: 112, column: 2, scope: !3401)
!3422 = !DILocation(line: 113, column: 1, scope: !3388)
!3423 = distinct !DISubprogram(name: "stun_adjust_allocate_lifetime", scope: !2, file: !2, line: 1254, type: !3424, scopeLine: 1254, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!3424 = !DISubroutineType(types: !3425)
!3425 = !{!253, !253, !253, !253}
!3426 = !DILocalVariable(name: "lifetime", arg: 1, scope: !3423, file: !2, line: 1254, type: !253)
!3427 = !DILocation(line: 1254, column: 55, scope: !3423)
!3428 = !DILocalVariable(name: "max_allowed_lifetime", arg: 2, scope: !3423, file: !2, line: 1254, type: !253)
!3429 = !DILocation(line: 1254, column: 77, scope: !3423)
!3430 = !DILocalVariable(name: "max_lifetime", arg: 3, scope: !3423, file: !2, line: 1254, type: !253)
!3431 = !DILocation(line: 1254, column: 111, scope: !3423)
!3432 = !DILocation(line: 1256, column: 7, scope: !3433)
!3433 = distinct !DILexicalBlock(scope: !3423, file: !2, line: 1256, column: 6)
!3434 = !DILocation(line: 1256, column: 6, scope: !3423)
!3435 = !DILocation(line: 1256, column: 26, scope: !3433)
!3436 = !DILocation(line: 1256, column: 17, scope: !3433)
!3437 = !DILocation(line: 1257, column: 11, scope: !3438)
!3438 = distinct !DILexicalBlock(scope: !3433, file: !2, line: 1257, column: 11)
!3439 = !DILocation(line: 1257, column: 19, scope: !3438)
!3440 = !DILocation(line: 1257, column: 11, scope: !3433)
!3441 = !DILocation(line: 1257, column: 57, scope: !3438)
!3442 = !DILocation(line: 1257, column: 48, scope: !3438)
!3443 = !DILocation(line: 1258, column: 11, scope: !3444)
!3444 = distinct !DILexicalBlock(scope: !3438, file: !2, line: 1258, column: 11)
!3445 = !DILocation(line: 1258, column: 20, scope: !3444)
!3446 = !DILocation(line: 1258, column: 19, scope: !3444)
!3447 = !DILocation(line: 1258, column: 11, scope: !3438)
!3448 = !DILocation(line: 1258, column: 53, scope: !3444)
!3449 = !DILocation(line: 1258, column: 51, scope: !3444)
!3450 = !DILocation(line: 1258, column: 42, scope: !3444)
!3451 = !DILocation(line: 1260, column: 6, scope: !3452)
!3452 = distinct !DILexicalBlock(scope: !3423, file: !2, line: 1260, column: 6)
!3453 = !DILocation(line: 1260, column: 19, scope: !3452)
!3454 = !DILocation(line: 1260, column: 23, scope: !3452)
!3455 = !DILocation(line: 1260, column: 38, scope: !3452)
!3456 = !DILocation(line: 1260, column: 36, scope: !3452)
!3457 = !DILocation(line: 1260, column: 6, scope: !3423)
!3458 = !DILocation(line: 1261, column: 15, scope: !3459)
!3459 = distinct !DILexicalBlock(scope: !3452, file: !2, line: 1260, column: 49)
!3460 = !DILocation(line: 1261, column: 13, scope: !3459)
!3461 = !DILocation(line: 1262, column: 3, scope: !3459)
!3462 = !DILocation(line: 1264, column: 10, scope: !3423)
!3463 = !DILocation(line: 1264, column: 3, scope: !3423)
!3464 = distinct !DISubprogram(name: "stun_attr_get_type", scope: !2, file: !2, line: 1269, type: !1210, scopeLine: 1269, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!3465 = !DILocalVariable(name: "attr", arg: 1, scope: !3464, file: !2, line: 1269, type: !252)
!3466 = !DILocation(line: 1269, column: 38, scope: !3464)
!3467 = !DILocation(line: 1270, column: 6, scope: !3468)
!3468 = distinct !DILexicalBlock(scope: !3464, file: !2, line: 1270, column: 6)
!3469 = !DILocation(line: 1270, column: 6, scope: !3464)
!3470 = !DILocation(line: 1271, column: 18, scope: !3468)
!3471 = !DILocation(line: 1271, column: 12, scope: !3468)
!3472 = !DILocation(line: 1271, column: 5, scope: !3468)
!3473 = !DILocation(line: 1272, column: 3, scope: !3464)
!3474 = !DILocation(line: 1273, column: 1, scope: !3464)
!3475 = distinct !DISubprogram(name: "stun_get_requested_address_family", scope: !2, file: !2, line: 1290, type: !1210, scopeLine: 1291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!3476 = !DILocalVariable(name: "attr", arg: 1, scope: !3475, file: !2, line: 1290, type: !252)
!3477 = !DILocation(line: 1290, column: 53, scope: !3475)
!3478 = !DILocation(line: 1292, column: 6, scope: !3479)
!3479 = distinct !DILexicalBlock(scope: !3475, file: !2, line: 1292, column: 6)
!3480 = !DILocation(line: 1292, column: 6, scope: !3475)
!3481 = !DILocalVariable(name: "len", scope: !3482, file: !2, line: 1293, type: !199)
!3482 = distinct !DILexicalBlock(scope: !3479, file: !2, line: 1292, column: 12)
!3483 = !DILocation(line: 1293, column: 7, scope: !3482)
!3484 = !DILocation(line: 1293, column: 20, scope: !3482)
!3485 = !DILocation(line: 1293, column: 13, scope: !3482)
!3486 = !DILocation(line: 1294, column: 7, scope: !3487)
!3487 = distinct !DILexicalBlock(scope: !3482, file: !2, line: 1294, column: 7)
!3488 = !DILocation(line: 1294, column: 11, scope: !3487)
!3489 = !DILocation(line: 1294, column: 7, scope: !3482)
!3490 = !DILocation(line: 1295, column: 4, scope: !3487)
!3491 = !DILocalVariable(name: "val", scope: !3482, file: !2, line: 1296, type: !199)
!3492 = !DILocation(line: 1296, column: 7, scope: !3482)
!3493 = !DILocation(line: 1296, column: 31, scope: !3482)
!3494 = !DILocation(line: 1296, column: 13, scope: !3482)
!3495 = !DILocation(line: 1297, column: 11, scope: !3482)
!3496 = !DILocation(line: 1297, column: 3, scope: !3482)
!3497 = !DILocation(line: 1299, column: 11, scope: !3498)
!3498 = distinct !DILexicalBlock(scope: !3482, file: !2, line: 1297, column: 15)
!3499 = !DILocation(line: 1299, column: 4, scope: !3498)
!3500 = !DILocation(line: 1301, column: 11, scope: !3498)
!3501 = !DILocation(line: 1301, column: 4, scope: !3498)
!3502 = !DILocation(line: 1303, column: 4, scope: !3498)
!3503 = !DILocation(line: 1306, column: 2, scope: !3475)
!3504 = !DILocation(line: 1307, column: 1, scope: !3475)
!3505 = distinct !DISubprogram(name: "stun_attr_get_channel_number", scope: !2, file: !2, line: 1309, type: !3506, scopeLine: 1309, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!3506 = !DISubroutineType(types: !3507)
!3507 = !{!237, !252}
!3508 = !DILocalVariable(name: "attr", arg: 1, scope: !3505, file: !2, line: 1309, type: !252)
!3509 = !DILocation(line: 1309, column: 53, scope: !3505)
!3510 = !DILocation(line: 1310, column: 6, scope: !3511)
!3511 = distinct !DILexicalBlock(scope: !3505, file: !2, line: 1310, column: 6)
!3512 = !DILocation(line: 1310, column: 6, scope: !3505)
!3513 = !DILocalVariable(name: "value", scope: !3514, file: !2, line: 1311, type: !244)
!3514 = distinct !DILexicalBlock(scope: !3511, file: !2, line: 1310, column: 12)
!3515 = !DILocation(line: 1311, column: 20, scope: !3514)
!3516 = !DILocation(line: 1311, column: 48, scope: !3514)
!3517 = !DILocation(line: 1311, column: 28, scope: !3514)
!3518 = !DILocation(line: 1312, column: 8, scope: !3519)
!3519 = distinct !DILexicalBlock(scope: !3514, file: !2, line: 1312, column: 8)
!3520 = !DILocation(line: 1312, column: 14, scope: !3519)
!3521 = !DILocation(line: 1312, column: 36, scope: !3519)
!3522 = !DILocation(line: 1312, column: 18, scope: !3519)
!3523 = !DILocation(line: 1312, column: 42, scope: !3519)
!3524 = !DILocation(line: 1312, column: 8, scope: !3514)
!3525 = !DILocalVariable(name: "cn", scope: !3526, file: !2, line: 1313, type: !237)
!3526 = distinct !DILexicalBlock(scope: !3519, file: !2, line: 1312, column: 49)
!3527 = !DILocation(line: 1313, column: 16, scope: !3526)
!3528 = !DILocation(line: 1313, column: 19, scope: !3526)
!3529 = !DILocation(line: 1314, column: 10, scope: !3530)
!3530 = distinct !DILexicalBlock(scope: !3526, file: !2, line: 1314, column: 10)
!3531 = !DILocation(line: 1314, column: 10, scope: !3526)
!3532 = !DILocation(line: 1314, column: 41, scope: !3530)
!3533 = !DILocation(line: 1314, column: 34, scope: !3530)
!3534 = !DILocation(line: 1315, column: 5, scope: !3526)
!3535 = !DILocation(line: 1316, column: 3, scope: !3514)
!3536 = !DILocation(line: 1317, column: 3, scope: !3505)
!3537 = !DILocation(line: 1318, column: 1, scope: !3505)
!3538 = distinct !DISubprogram(name: "stun_attr_get_bandwidth", scope: !2, file: !2, line: 1320, type: !3539, scopeLine: 1320, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!3539 = !DISubroutineType(types: !3540)
!3540 = !{!251, !252}
!3541 = !DILocalVariable(name: "attr", arg: 1, scope: !3538, file: !2, line: 1320, type: !252)
!3542 = !DILocation(line: 1320, column: 52, scope: !3538)
!3543 = !DILocation(line: 1321, column: 6, scope: !3544)
!3544 = distinct !DILexicalBlock(scope: !3538, file: !2, line: 1321, column: 6)
!3545 = !DILocation(line: 1321, column: 6, scope: !3538)
!3546 = !DILocalVariable(name: "value", scope: !3547, file: !2, line: 1322, type: !244)
!3547 = distinct !DILexicalBlock(scope: !3544, file: !2, line: 1321, column: 12)
!3548 = !DILocation(line: 1322, column: 20, scope: !3547)
!3549 = !DILocation(line: 1322, column: 48, scope: !3547)
!3550 = !DILocation(line: 1322, column: 28, scope: !3547)
!3551 = !DILocation(line: 1323, column: 8, scope: !3552)
!3552 = distinct !DILexicalBlock(scope: !3547, file: !2, line: 1323, column: 8)
!3553 = !DILocation(line: 1323, column: 14, scope: !3552)
!3554 = !DILocation(line: 1323, column: 36, scope: !3552)
!3555 = !DILocation(line: 1323, column: 18, scope: !3552)
!3556 = !DILocation(line: 1323, column: 42, scope: !3552)
!3557 = !DILocation(line: 1323, column: 8, scope: !3547)
!3558 = !DILocalVariable(name: "bps", scope: !3559, file: !2, line: 1324, type: !242)
!3559 = distinct !DILexicalBlock(scope: !3552, file: !2, line: 1323, column: 49)
!3560 = !DILocation(line: 1324, column: 16, scope: !3559)
!3561 = !DILocation(line: 1324, column: 20, scope: !3559)
!3562 = !DILocation(line: 1325, column: 29, scope: !3559)
!3563 = !DILocation(line: 1325, column: 33, scope: !3559)
!3564 = !DILocation(line: 1325, column: 14, scope: !3559)
!3565 = !DILocation(line: 1325, column: 7, scope: !3559)
!3566 = !DILocation(line: 1327, column: 3, scope: !3547)
!3567 = !DILocation(line: 1328, column: 3, scope: !3538)
!3568 = !DILocation(line: 1329, column: 1, scope: !3538)
!3569 = distinct !DISubprogram(name: "stun_attr_get_reservation_token_value", scope: !2, file: !2, line: 1331, type: !3570, scopeLine: 1331, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!3570 = !DISubroutineType(types: !3571)
!3571 = !{!2742, !252}
!3572 = !DILocalVariable(name: "attr", arg: 1, scope: !3569, file: !2, line: 1331, type: !252)
!3573 = !DILocation(line: 1331, column: 62, scope: !3569)
!3574 = !DILocation(line: 1332, column: 6, scope: !3575)
!3575 = distinct !DILexicalBlock(scope: !3569, file: !2, line: 1332, column: 6)
!3576 = !DILocation(line: 1332, column: 6, scope: !3569)
!3577 = !DILocalVariable(name: "value", scope: !3578, file: !2, line: 1333, type: !244)
!3578 = distinct !DILexicalBlock(scope: !3575, file: !2, line: 1332, column: 12)
!3579 = !DILocation(line: 1333, column: 20, scope: !3578)
!3580 = !DILocation(line: 1333, column: 48, scope: !3578)
!3581 = !DILocation(line: 1333, column: 28, scope: !3578)
!3582 = !DILocation(line: 1334, column: 8, scope: !3583)
!3583 = distinct !DILexicalBlock(scope: !3578, file: !2, line: 1334, column: 8)
!3584 = !DILocation(line: 1334, column: 14, scope: !3583)
!3585 = !DILocation(line: 1334, column: 36, scope: !3583)
!3586 = !DILocation(line: 1334, column: 18, scope: !3583)
!3587 = !DILocation(line: 1334, column: 42, scope: !3583)
!3588 = !DILocation(line: 1334, column: 8, scope: !3578)
!3589 = !DILocalVariable(name: "token", scope: !3590, file: !2, line: 1335, type: !2742)
!3590 = distinct !DILexicalBlock(scope: !3583, file: !2, line: 1334, column: 49)
!3591 = !DILocation(line: 1335, column: 16, scope: !3590)
!3592 = !DILocation(line: 1336, column: 13, scope: !3590)
!3593 = !DILocation(line: 1336, column: 7, scope: !3590)
!3594 = !DILocation(line: 1337, column: 14, scope: !3590)
!3595 = !DILocation(line: 1337, column: 7, scope: !3590)
!3596 = !DILocation(line: 1339, column: 3, scope: !3578)
!3597 = !DILocation(line: 1340, column: 3, scope: !3569)
!3598 = !DILocation(line: 1341, column: 1, scope: !3569)
!3599 = distinct !DISubprogram(name: "stun_attr_is_addr", scope: !2, file: !2, line: 1343, type: !1210, scopeLine: 1343, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!3600 = !DILocalVariable(name: "attr", arg: 1, scope: !3599, file: !2, line: 1343, type: !252)
!3601 = !DILocation(line: 1343, column: 37, scope: !3599)
!3602 = !DILocation(line: 1345, column: 6, scope: !3603)
!3603 = distinct !DILexicalBlock(scope: !3599, file: !2, line: 1345, column: 6)
!3604 = !DILocation(line: 1345, column: 6, scope: !3599)
!3605 = !DILocation(line: 1346, column: 31, scope: !3606)
!3606 = distinct !DILexicalBlock(scope: !3603, file: !2, line: 1345, column: 12)
!3607 = !DILocation(line: 1346, column: 12, scope: !3606)
!3608 = !DILocation(line: 1346, column: 5, scope: !3606)
!3609 = !DILocation(line: 1358, column: 7, scope: !3610)
!3610 = distinct !DILexicalBlock(scope: !3606, file: !2, line: 1346, column: 38)
!3611 = !DILocation(line: 1362, column: 5, scope: !3610)
!3612 = !DILocation(line: 1363, column: 3, scope: !3606)
!3613 = !DILocation(line: 1364, column: 3, scope: !3599)
!3614 = !DILocation(line: 1365, column: 1, scope: !3599)
!3615 = distinct !DISubprogram(name: "stun_attr_get_even_port", scope: !2, file: !2, line: 1367, type: !3616, scopeLine: 1367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!3616 = !DISubroutineType(types: !3617)
!3617 = !{!227, !252}
!3618 = !DILocalVariable(name: "attr", arg: 1, scope: !3615, file: !2, line: 1367, type: !252)
!3619 = !DILocation(line: 1367, column: 47, scope: !3615)
!3620 = !DILocation(line: 1368, column: 6, scope: !3621)
!3621 = distinct !DILexicalBlock(scope: !3615, file: !2, line: 1368, column: 6)
!3622 = !DILocation(line: 1368, column: 6, scope: !3615)
!3623 = !DILocalVariable(name: "value", scope: !3624, file: !2, line: 1369, type: !244)
!3624 = distinct !DILexicalBlock(scope: !3621, file: !2, line: 1368, column: 12)
!3625 = !DILocation(line: 1369, column: 20, scope: !3624)
!3626 = !DILocation(line: 1369, column: 46, scope: !3624)
!3627 = !DILocation(line: 1369, column: 26, scope: !3624)
!3628 = !DILocation(line: 1370, column: 8, scope: !3629)
!3629 = distinct !DILexicalBlock(scope: !3624, file: !2, line: 1370, column: 8)
!3630 = !DILocation(line: 1370, column: 8, scope: !3624)
!3631 = !DILocation(line: 1371, column: 20, scope: !3632)
!3632 = distinct !DILexicalBlock(scope: !3633, file: !2, line: 1371, column: 10)
!3633 = distinct !DILexicalBlock(scope: !3629, file: !2, line: 1370, column: 15)
!3634 = !DILocation(line: 1371, column: 10, scope: !3632)
!3635 = !DILocation(line: 1371, column: 30, scope: !3632)
!3636 = !DILocation(line: 1371, column: 10, scope: !3633)
!3637 = !DILocation(line: 1371, column: 38, scope: !3632)
!3638 = !DILocation(line: 1372, column: 5, scope: !3633)
!3639 = !DILocation(line: 1373, column: 3, scope: !3624)
!3640 = !DILocation(line: 1374, column: 3, scope: !3615)
!3641 = !DILocation(line: 1375, column: 1, scope: !3615)
!3642 = distinct !DISubprogram(name: "stun_attr_get_first_str", scope: !2, file: !2, line: 1412, type: !3643, scopeLine: 1412, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!3643 = !DISubroutineType(types: !3644)
!3644 = !{!252, !244, !232}
!3645 = !DILocalVariable(name: "buf", arg: 1, scope: !3642, file: !2, line: 1412, type: !244)
!3646 = !DILocation(line: 1412, column: 54, scope: !3642)
!3647 = !DILocalVariable(name: "len", arg: 2, scope: !3642, file: !2, line: 1412, type: !232)
!3648 = !DILocation(line: 1412, column: 66, scope: !3642)
!3649 = !DILocalVariable(name: "bufLen", scope: !3642, file: !2, line: 1414, type: !199)
!3650 = !DILocation(line: 1414, column: 7, scope: !3642)
!3651 = !DILocation(line: 1414, column: 49, scope: !3642)
!3652 = !DILocation(line: 1414, column: 53, scope: !3642)
!3653 = !DILocation(line: 1414, column: 16, scope: !3642)
!3654 = !DILocation(line: 1415, column: 6, scope: !3655)
!3655 = distinct !DILexicalBlock(scope: !3642, file: !2, line: 1415, column: 6)
!3656 = !DILocation(line: 1415, column: 13, scope: !3655)
!3657 = !DILocation(line: 1415, column: 6, scope: !3642)
!3658 = !DILocalVariable(name: "attr", scope: !3659, file: !2, line: 1416, type: !252)
!3659 = distinct !DILexicalBlock(scope: !3655, file: !2, line: 1415, column: 35)
!3660 = !DILocation(line: 1416, column: 19, scope: !3659)
!3661 = !DILocation(line: 1416, column: 42, scope: !3659)
!3662 = !DILocation(line: 1416, column: 45, scope: !3659)
!3663 = !DILocation(line: 1417, column: 34, scope: !3659)
!3664 = !DILocation(line: 1417, column: 40, scope: !3659)
!3665 = !DILocation(line: 1417, column: 47, scope: !3659)
!3666 = !DILocation(line: 1417, column: 12, scope: !3659)
!3667 = !DILocation(line: 1417, column: 5, scope: !3659)
!3668 = !DILocation(line: 1420, column: 3, scope: !3642)
!3669 = !DILocation(line: 1421, column: 1, scope: !3642)
!3670 = distinct !DISubprogram(name: "stun_attr_get_next_str", scope: !2, file: !2, line: 1423, type: !3671, scopeLine: 1423, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!3671 = !DISubroutineType(types: !3672)
!3672 = !{!252, !244, !232, !252}
!3673 = !DILocalVariable(name: "buf", arg: 1, scope: !3670, file: !2, line: 1423, type: !244)
!3674 = !DILocation(line: 1423, column: 53, scope: !3670)
!3675 = !DILocalVariable(name: "len", arg: 2, scope: !3670, file: !2, line: 1423, type: !232)
!3676 = !DILocation(line: 1423, column: 65, scope: !3670)
!3677 = !DILocalVariable(name: "prev", arg: 3, scope: !3670, file: !2, line: 1423, type: !252)
!3678 = !DILocation(line: 1423, column: 84, scope: !3670)
!3679 = !DILocation(line: 1425, column: 7, scope: !3680)
!3680 = distinct !DILexicalBlock(scope: !3670, file: !2, line: 1425, column: 6)
!3681 = !DILocation(line: 1425, column: 6, scope: !3670)
!3682 = !DILocation(line: 1425, column: 44, scope: !3680)
!3683 = !DILocation(line: 1425, column: 48, scope: !3680)
!3684 = !DILocation(line: 1425, column: 20, scope: !3680)
!3685 = !DILocation(line: 1425, column: 13, scope: !3680)
!3686 = !DILocalVariable(name: "end", scope: !3687, file: !2, line: 1427, type: !244)
!3687 = distinct !DILexicalBlock(scope: !3680, file: !2, line: 1426, column: 8)
!3688 = !DILocation(line: 1427, column: 20, scope: !3687)
!3689 = !DILocation(line: 1427, column: 26, scope: !3687)
!3690 = !DILocation(line: 1427, column: 65, scope: !3687)
!3691 = !DILocation(line: 1427, column: 69, scope: !3687)
!3692 = !DILocation(line: 1427, column: 32, scope: !3687)
!3693 = !DILocation(line: 1427, column: 30, scope: !3687)
!3694 = !DILocalVariable(name: "attrlen", scope: !3687, file: !2, line: 1428, type: !199)
!3695 = !DILocation(line: 1428, column: 9, scope: !3687)
!3696 = !DILocation(line: 1428, column: 35, scope: !3687)
!3697 = !DILocation(line: 1428, column: 17, scope: !3687)
!3698 = !DILocalVariable(name: "rem4", scope: !3687, file: !2, line: 1429, type: !237)
!3699 = !DILocation(line: 1429, column: 14, scope: !3687)
!3700 = !DILocation(line: 1429, column: 32, scope: !3687)
!3701 = !DILocation(line: 1429, column: 22, scope: !3687)
!3702 = !DILocation(line: 1429, column: 21, scope: !3687)
!3703 = !DILocation(line: 1429, column: 41, scope: !3687)
!3704 = !DILocation(line: 1430, column: 8, scope: !3705)
!3705 = distinct !DILexicalBlock(scope: !3687, file: !2, line: 1430, column: 8)
!3706 = !DILocation(line: 1430, column: 8, scope: !3687)
!3707 = !DILocation(line: 1431, column: 17, scope: !3708)
!3708 = distinct !DILexicalBlock(scope: !3705, file: !2, line: 1430, column: 14)
!3709 = !DILocation(line: 1431, column: 24, scope: !3708)
!3710 = !DILocation(line: 1431, column: 32, scope: !3708)
!3711 = !DILocation(line: 1431, column: 27, scope: !3708)
!3712 = !DILocation(line: 1431, column: 26, scope: !3708)
!3713 = !DILocation(line: 1431, column: 15, scope: !3708)
!3714 = !DILocation(line: 1432, column: 5, scope: !3708)
!3715 = !DILocation(line: 1434, column: 8, scope: !3716)
!3716 = distinct !DILexicalBlock(scope: !3687, file: !2, line: 1434, column: 8)
!3717 = !DILocation(line: 1434, column: 18, scope: !3716)
!3718 = !DILocation(line: 1434, column: 40, scope: !3716)
!3719 = !DILocation(line: 1434, column: 22, scope: !3716)
!3720 = !DILocation(line: 1434, column: 45, scope: !3716)
!3721 = !DILocation(line: 1434, column: 16, scope: !3716)
!3722 = !DILocation(line: 1434, column: 8, scope: !3687)
!3723 = !DILocalVariable(name: "attr_end", scope: !3724, file: !2, line: 1435, type: !244)
!3724 = distinct !DILexicalBlock(scope: !3716, file: !2, line: 1434, column: 50)
!3725 = !DILocation(line: 1435, column: 22, scope: !3724)
!3726 = !DILocation(line: 1435, column: 47, scope: !3724)
!3727 = !DILocation(line: 1435, column: 51, scope: !3724)
!3728 = !DILocation(line: 1435, column: 54, scope: !3724)
!3729 = !DILocation(line: 1435, column: 53, scope: !3724)
!3730 = !DILocation(line: 1436, column: 36, scope: !3724)
!3731 = !DILocation(line: 1436, column: 46, scope: !3724)
!3732 = !DILocation(line: 1436, column: 52, scope: !3724)
!3733 = !DILocation(line: 1436, column: 50, scope: !3724)
!3734 = !DILocation(line: 1436, column: 14, scope: !3724)
!3735 = !DILocation(line: 1436, column: 7, scope: !3724)
!3736 = !DILocation(line: 1438, column: 5, scope: !3687)
!3737 = !DILocation(line: 1440, column: 1, scope: !3670)
!3738 = distinct !DISubprogram(name: "stun_attr_check_valid", scope: !2, file: !2, line: 1390, type: !3739, scopeLine: 1390, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !194, retainedNodes: !305)
!3739 = !DISubroutineType(types: !3740)
!3740 = !{!252, !252, !232}
!3741 = !DILocalVariable(name: "attr", arg: 1, scope: !3738, file: !2, line: 1390, type: !252)
!3742 = !DILocation(line: 1390, column: 58, scope: !3738)
!3743 = !DILocalVariable(name: "remaining", arg: 2, scope: !3738, file: !2, line: 1390, type: !232)
!3744 = !DILocation(line: 1390, column: 71, scope: !3738)
!3745 = !DILocation(line: 1392, column: 6, scope: !3746)
!3746 = distinct !DILexicalBlock(scope: !3738, file: !2, line: 1392, column: 6)
!3747 = !DILocation(line: 1392, column: 16, scope: !3746)
!3748 = !DILocation(line: 1392, column: 6, scope: !3738)
!3749 = !DILocalVariable(name: "attrlen", scope: !3750, file: !2, line: 1394, type: !232)
!3750 = distinct !DILexicalBlock(scope: !3746, file: !2, line: 1392, column: 22)
!3751 = !DILocation(line: 1394, column: 12, scope: !3750)
!3752 = !DILocation(line: 1394, column: 40, scope: !3750)
!3753 = !DILocation(line: 1394, column: 22, scope: !3750)
!3754 = !DILocation(line: 1395, column: 15, scope: !3750)
!3755 = !DILocalVariable(name: "rem4", scope: !3750, file: !2, line: 1398, type: !237)
!3756 = !DILocation(line: 1398, column: 14, scope: !3750)
!3757 = !DILocation(line: 1398, column: 32, scope: !3750)
!3758 = !DILocation(line: 1398, column: 22, scope: !3750)
!3759 = !DILocation(line: 1398, column: 21, scope: !3750)
!3760 = !DILocation(line: 1398, column: 41, scope: !3750)
!3761 = !DILocation(line: 1399, column: 8, scope: !3762)
!3762 = distinct !DILexicalBlock(scope: !3750, file: !2, line: 1399, column: 8)
!3763 = !DILocation(line: 1399, column: 8, scope: !3750)
!3764 = !DILocation(line: 1400, column: 17, scope: !3765)
!3765 = distinct !DILexicalBlock(scope: !3762, file: !2, line: 1399, column: 14)
!3766 = !DILocation(line: 1400, column: 24, scope: !3765)
!3767 = !DILocation(line: 1400, column: 32, scope: !3765)
!3768 = !DILocation(line: 1400, column: 27, scope: !3765)
!3769 = !DILocation(line: 1400, column: 26, scope: !3765)
!3770 = !DILocation(line: 1400, column: 15, scope: !3765)
!3771 = !DILocation(line: 1401, column: 5, scope: !3765)
!3772 = !DILocation(line: 1404, column: 8, scope: !3773)
!3773 = distinct !DILexicalBlock(scope: !3750, file: !2, line: 1404, column: 8)
!3774 = !DILocation(line: 1404, column: 19, scope: !3773)
!3775 = !DILocation(line: 1404, column: 16, scope: !3773)
!3776 = !DILocation(line: 1404, column: 8, scope: !3750)
!3777 = !DILocation(line: 1405, column: 14, scope: !3778)
!3778 = distinct !DILexicalBlock(scope: !3773, file: !2, line: 1404, column: 30)
!3779 = !DILocation(line: 1405, column: 7, scope: !3778)
!3780 = !DILocation(line: 1407, column: 3, scope: !3750)
!3781 = !DILocation(line: 1409, column: 3, scope: !3738)
!3782 = !DILocation(line: 1410, column: 1, scope: !3738)
!3783 = distinct !DISubprogram(name: "stun_set_command_message_len_str", scope: !2, file: !2, line: 402, type: !3784, scopeLine: 402, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !194, retainedNodes: !305)
!3784 = !DISubroutineType(types: !3785)
!3785 = !{!199, !226, !199}
!3786 = !DILocalVariable(name: "buf", arg: 1, scope: !3783, file: !2, line: 402, type: !226)
!3787 = !DILocation(line: 402, column: 54, scope: !3783)
!3788 = !DILocalVariable(name: "len", arg: 2, scope: !3783, file: !2, line: 402, type: !199)
!3789 = !DILocation(line: 402, column: 63, scope: !3783)
!3790 = !DILocation(line: 403, column: 6, scope: !3791)
!3791 = distinct !DILexicalBlock(scope: !3783, file: !2, line: 403, column: 6)
!3792 = !DILocation(line: 403, column: 9, scope: !3791)
!3793 = !DILocation(line: 403, column: 6, scope: !3783)
!3794 = !DILocation(line: 403, column: 30, scope: !3791)
!3795 = !DILocation(line: 404, column: 23, scope: !3783)
!3796 = !DILocation(line: 404, column: 15, scope: !3783)
!3797 = !DILocation(line: 404, column: 3, scope: !3783)
!3798 = !DILocation(line: 404, column: 22, scope: !3783)
!3799 = !DILocation(line: 405, column: 3, scope: !3783)
!3800 = !DILocation(line: 406, column: 1, scope: !3783)
!3801 = distinct !DISubprogram(name: "stun_attr_get_addr_str", scope: !2, file: !2, line: 1501, type: !3802, scopeLine: 1501, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!3802 = !DISubroutineType(types: !3803)
!3803 = !{!199, !244, !232, !252, !3804, !2696}
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!3805 = !DILocalVariable(name: "buf", arg: 1, scope: !3801, file: !2, line: 1501, type: !244)
!3806 = !DILocation(line: 1501, column: 43, scope: !3801)
!3807 = !DILocalVariable(name: "len", arg: 2, scope: !3801, file: !2, line: 1501, type: !232)
!3808 = !DILocation(line: 1501, column: 55, scope: !3801)
!3809 = !DILocalVariable(name: "attr", arg: 3, scope: !3801, file: !2, line: 1501, type: !252)
!3810 = !DILocation(line: 1501, column: 74, scope: !3801)
!3811 = !DILocalVariable(name: "ca", arg: 4, scope: !3801, file: !2, line: 1501, type: !3804)
!3812 = !DILocation(line: 1501, column: 90, scope: !3801)
!3813 = !DILocalVariable(name: "default_addr", arg: 5, scope: !3801, file: !2, line: 1501, type: !2696)
!3814 = !DILocation(line: 1501, column: 110, scope: !3801)
!3815 = !DILocalVariable(name: "tid", scope: !3801, file: !2, line: 1503, type: !1654)
!3816 = !DILocation(line: 1503, column: 12, scope: !3801)
!3817 = !DILocation(line: 1504, column: 29, scope: !3801)
!3818 = !DILocation(line: 1504, column: 34, scope: !3801)
!3819 = !DILocation(line: 1504, column: 3, scope: !3801)
!3820 = !DILocalVariable(name: "public_addr", scope: !3801, file: !2, line: 1505, type: !2698)
!3821 = !DILocation(line: 1505, column: 12, scope: !3801)
!3822 = !DILocation(line: 1507, column: 16, scope: !3801)
!3823 = !DILocation(line: 1507, column: 3, scope: !3801)
!3824 = !DILocation(line: 1508, column: 3, scope: !3801)
!3825 = !DILocalVariable(name: "attr_type", scope: !3801, file: !2, line: 1510, type: !199)
!3826 = !DILocation(line: 1510, column: 7, scope: !3801)
!3827 = !DILocation(line: 1510, column: 38, scope: !3801)
!3828 = !DILocation(line: 1510, column: 19, scope: !3801)
!3829 = !DILocation(line: 1511, column: 6, scope: !3830)
!3830 = distinct !DILexicalBlock(scope: !3801, file: !2, line: 1511, column: 6)
!3831 = !DILocation(line: 1511, column: 15, scope: !3830)
!3832 = !DILocation(line: 1511, column: 6, scope: !3801)
!3833 = !DILocation(line: 1511, column: 19, scope: !3830)
!3834 = !DILocalVariable(name: "xor_ed", scope: !3801, file: !2, line: 1513, type: !199)
!3835 = !DILocation(line: 1513, column: 7, scope: !3801)
!3836 = !DILocation(line: 1514, column: 10, scope: !3801)
!3837 = !DILocation(line: 1514, column: 3, scope: !3801)
!3838 = !DILocation(line: 1518, column: 11, scope: !3839)
!3839 = distinct !DILexicalBlock(scope: !3801, file: !2, line: 1514, column: 21)
!3840 = !DILocation(line: 1519, column: 5, scope: !3839)
!3841 = !DILocation(line: 1522, column: 3, scope: !3839)
!3842 = !DILocalVariable(name: "cfield", scope: !3801, file: !2, line: 1524, type: !244)
!3843 = !DILocation(line: 1524, column: 18, scope: !3801)
!3844 = !DILocation(line: 1524, column: 45, scope: !3801)
!3845 = !DILocation(line: 1524, column: 25, scope: !3801)
!3846 = !DILocation(line: 1525, column: 7, scope: !3847)
!3847 = distinct !DILexicalBlock(scope: !3801, file: !2, line: 1525, column: 6)
!3848 = !DILocation(line: 1525, column: 6, scope: !3801)
!3849 = !DILocation(line: 1525, column: 15, scope: !3847)
!3850 = !DILocation(line: 1527, column: 37, scope: !3851)
!3851 = distinct !DILexicalBlock(scope: !3801, file: !2, line: 1527, column: 6)
!3852 = !DILocation(line: 1527, column: 63, scope: !3851)
!3853 = !DILocation(line: 1527, column: 45, scope: !3851)
!3854 = !DILocation(line: 1527, column: 70, scope: !3851)
!3855 = !DILocation(line: 1527, column: 101, scope: !3851)
!3856 = !DILocation(line: 1527, column: 97, scope: !3851)
!3857 = !DILocation(line: 1527, column: 6, scope: !3851)
!3858 = !DILocation(line: 1527, column: 108, scope: !3851)
!3859 = !DILocation(line: 1527, column: 6, scope: !3801)
!3860 = !DILocation(line: 1528, column: 5, scope: !3861)
!3861 = distinct !DILexicalBlock(scope: !3851, file: !2, line: 1527, column: 112)
!3862 = !DILocation(line: 1531, column: 49, scope: !3801)
!3863 = !DILocation(line: 1531, column: 3, scope: !3801)
!3864 = !DILocation(line: 1533, column: 6, scope: !3865)
!3865 = distinct !DILexicalBlock(scope: !3801, file: !2, line: 1533, column: 6)
!3866 = !DILocation(line: 1533, column: 19, scope: !3865)
!3867 = !DILocation(line: 1533, column: 39, scope: !3865)
!3868 = !DILocation(line: 1533, column: 22, scope: !3865)
!3869 = !DILocation(line: 1533, column: 43, scope: !3865)
!3870 = !DILocation(line: 1533, column: 64, scope: !3865)
!3871 = !DILocation(line: 1533, column: 47, scope: !3865)
!3872 = !DILocation(line: 1533, column: 6, scope: !3801)
!3873 = !DILocalVariable(name: "port", scope: !3874, file: !2, line: 1534, type: !199)
!3874 = distinct !DILexicalBlock(scope: !3865, file: !2, line: 1533, column: 79)
!3875 = !DILocation(line: 1534, column: 9, scope: !3874)
!3876 = !DILocation(line: 1534, column: 30, scope: !3874)
!3877 = !DILocation(line: 1534, column: 16, scope: !3874)
!3878 = !DILocation(line: 1535, column: 14, scope: !3874)
!3879 = !DILocation(line: 1535, column: 17, scope: !3874)
!3880 = !DILocation(line: 1535, column: 5, scope: !3874)
!3881 = !DILocation(line: 1536, column: 19, scope: !3874)
!3882 = !DILocation(line: 1536, column: 22, scope: !3874)
!3883 = !DILocation(line: 1536, column: 5, scope: !3874)
!3884 = !DILocation(line: 1537, column: 3, scope: !3874)
!3885 = !DILocation(line: 1539, column: 3, scope: !3801)
!3886 = !DILocation(line: 1540, column: 1, scope: !3801)
!3887 = distinct !DISubprogram(name: "stun_attr_get_first_addr_str", scope: !2, file: !2, line: 1542, type: !3888, scopeLine: 1542, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!3888 = !DISubroutineType(types: !3889)
!3889 = !{!199, !244, !232, !237, !3804, !2696}
!3890 = !DILocalVariable(name: "buf", arg: 1, scope: !3887, file: !2, line: 1542, type: !244)
!3891 = !DILocation(line: 1542, column: 49, scope: !3887)
!3892 = !DILocalVariable(name: "len", arg: 2, scope: !3887, file: !2, line: 1542, type: !232)
!3893 = !DILocation(line: 1542, column: 61, scope: !3887)
!3894 = !DILocalVariable(name: "attr_type", arg: 3, scope: !3887, file: !2, line: 1542, type: !237)
!3895 = !DILocation(line: 1542, column: 75, scope: !3887)
!3896 = !DILocalVariable(name: "ca", arg: 4, scope: !3887, file: !2, line: 1542, type: !3804)
!3897 = !DILocation(line: 1542, column: 96, scope: !3887)
!3898 = !DILocalVariable(name: "default_addr", arg: 5, scope: !3887, file: !2, line: 1542, type: !2696)
!3899 = !DILocation(line: 1542, column: 116, scope: !3887)
!3900 = !DILocalVariable(name: "attr", scope: !3887, file: !2, line: 1544, type: !252)
!3901 = !DILocation(line: 1544, column: 17, scope: !3887)
!3902 = !DILocation(line: 1544, column: 46, scope: !3887)
!3903 = !DILocation(line: 1544, column: 50, scope: !3887)
!3904 = !DILocation(line: 1544, column: 22, scope: !3887)
!3905 = !DILocation(line: 1546, column: 3, scope: !3887)
!3906 = !DILocation(line: 1546, column: 9, scope: !3887)
!3907 = !DILocation(line: 1547, column: 26, scope: !3908)
!3908 = distinct !DILexicalBlock(scope: !3909, file: !2, line: 1547, column: 8)
!3909 = distinct !DILexicalBlock(scope: !3887, file: !2, line: 1546, column: 15)
!3910 = !DILocation(line: 1547, column: 8, scope: !3908)
!3911 = !DILocation(line: 1547, column: 32, scope: !3908)
!3912 = !DILocation(line: 1547, column: 36, scope: !3908)
!3913 = !DILocation(line: 1547, column: 68, scope: !3908)
!3914 = !DILocation(line: 1547, column: 49, scope: !3908)
!3915 = !DILocation(line: 1547, column: 46, scope: !3908)
!3916 = !DILocation(line: 1547, column: 8, scope: !3909)
!3917 = !DILocation(line: 1548, column: 33, scope: !3918)
!3918 = distinct !DILexicalBlock(scope: !3919, file: !2, line: 1548, column: 10)
!3919 = distinct !DILexicalBlock(scope: !3908, file: !2, line: 1547, column: 76)
!3920 = !DILocation(line: 1548, column: 37, scope: !3918)
!3921 = !DILocation(line: 1548, column: 41, scope: !3918)
!3922 = !DILocation(line: 1548, column: 46, scope: !3918)
!3923 = !DILocation(line: 1548, column: 49, scope: !3918)
!3924 = !DILocation(line: 1548, column: 10, scope: !3918)
!3925 = !DILocation(line: 1548, column: 62, scope: !3918)
!3926 = !DILocation(line: 1548, column: 10, scope: !3919)
!3927 = !DILocation(line: 1549, column: 8, scope: !3928)
!3928 = distinct !DILexicalBlock(scope: !3918, file: !2, line: 1548, column: 67)
!3929 = !DILocation(line: 1551, column: 5, scope: !3919)
!3930 = !DILocation(line: 1552, column: 33, scope: !3909)
!3931 = !DILocation(line: 1552, column: 37, scope: !3909)
!3932 = !DILocation(line: 1552, column: 41, scope: !3909)
!3933 = !DILocation(line: 1552, column: 10, scope: !3909)
!3934 = !DILocation(line: 1552, column: 9, scope: !3909)
!3935 = distinct !{!3935, !3905, !3936, !855}
!3936 = !DILocation(line: 1553, column: 3, scope: !3887)
!3937 = !DILocation(line: 1555, column: 3, scope: !3887)
!3938 = !DILocation(line: 1556, column: 1, scope: !3887)
!3939 = distinct !DISubprogram(name: "stun_attr_add_bandwidth_str", scope: !2, file: !2, line: 1567, type: !3940, scopeLine: 1567, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!3940 = !DISubroutineType(types: !3941)
!3941 = !{!199, !226, !1611, !251}
!3942 = !DILocalVariable(name: "buf", arg: 1, scope: !3939, file: !2, line: 1567, type: !226)
!3943 = !DILocation(line: 1567, column: 42, scope: !3939)
!3944 = !DILocalVariable(name: "len", arg: 2, scope: !3939, file: !2, line: 1567, type: !1611)
!3945 = !DILocation(line: 1567, column: 55, scope: !3939)
!3946 = !DILocalVariable(name: "bps0", arg: 3, scope: !3939, file: !2, line: 1567, type: !251)
!3947 = !DILocation(line: 1567, column: 73, scope: !3939)
!3948 = !DILocalVariable(name: "bps", scope: !3939, file: !2, line: 1569, type: !242)
!3949 = !DILocation(line: 1569, column: 11, scope: !3939)
!3950 = !DILocation(line: 1569, column: 42, scope: !3939)
!3951 = !DILocation(line: 1569, column: 47, scope: !3939)
!3952 = !DILocation(line: 1569, column: 17, scope: !3939)
!3953 = !DILocalVariable(name: "field", scope: !3939, file: !2, line: 1571, type: !242)
!3954 = !DILocation(line: 1571, column: 11, scope: !3939)
!3955 = !DILocation(line: 1571, column: 17, scope: !3939)
!3956 = !DILocation(line: 1573, column: 27, scope: !3939)
!3957 = !DILocation(line: 1573, column: 31, scope: !3939)
!3958 = !DILocation(line: 1573, column: 9, scope: !3939)
!3959 = !DILocation(line: 1573, column: 2, scope: !3939)
!3960 = distinct !DISubprogram(name: "stun_attr_add_address_error_code", scope: !2, file: !2, line: 1576, type: !3961, scopeLine: 1577, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!3961 = !DISubroutineType(types: !3962)
!3962 = !{!199, !226, !1611, !199, !199}
!3963 = !DILocalVariable(name: "buf", arg: 1, scope: !3960, file: !2, line: 1576, type: !226)
!3964 = !DILocation(line: 1576, column: 47, scope: !3960)
!3965 = !DILocalVariable(name: "len", arg: 2, scope: !3960, file: !2, line: 1576, type: !1611)
!3966 = !DILocation(line: 1576, column: 60, scope: !3960)
!3967 = !DILocalVariable(name: "requested_address_family", arg: 3, scope: !3960, file: !2, line: 1576, type: !199)
!3968 = !DILocation(line: 1576, column: 69, scope: !3960)
!3969 = !DILocalVariable(name: "error_code", arg: 4, scope: !3960, file: !2, line: 1576, type: !199)
!3970 = !DILocation(line: 1576, column: 99, scope: !3960)
!3971 = !DILocalVariable(name: "reason", scope: !3960, file: !2, line: 1578, type: !244)
!3972 = !DILocation(line: 1578, column: 17, scope: !3960)
!3973 = !DILocation(line: 1578, column: 45, scope: !3960)
!3974 = !DILocation(line: 1578, column: 26, scope: !3960)
!3975 = !DILocalVariable(name: "avalue", scope: !3960, file: !2, line: 1580, type: !1909)
!3976 = !DILocation(line: 1580, column: 10, scope: !3960)
!3977 = !DILocation(line: 1581, column: 23, scope: !3960)
!3978 = !DILocation(line: 1581, column: 14, scope: !3960)
!3979 = !DILocation(line: 1581, column: 2, scope: !3960)
!3980 = !DILocation(line: 1581, column: 12, scope: !3960)
!3981 = !DILocation(line: 1582, column: 2, scope: !3960)
!3982 = !DILocation(line: 1582, column: 12, scope: !3960)
!3983 = !DILocation(line: 1583, column: 25, scope: !3960)
!3984 = !DILocation(line: 1583, column: 36, scope: !3960)
!3985 = !DILocation(line: 1583, column: 14, scope: !3960)
!3986 = !DILocation(line: 1583, column: 2, scope: !3960)
!3987 = !DILocation(line: 1583, column: 12, scope: !3960)
!3988 = !DILocation(line: 1584, column: 25, scope: !3960)
!3989 = !DILocation(line: 1584, column: 36, scope: !3960)
!3990 = !DILocation(line: 1584, column: 14, scope: !3960)
!3991 = !DILocation(line: 1584, column: 2, scope: !3960)
!3992 = !DILocation(line: 1584, column: 12, scope: !3960)
!3993 = !DILocation(line: 1585, column: 19, scope: !3960)
!3994 = !DILocation(line: 1585, column: 26, scope: !3960)
!3995 = !DILocation(line: 1585, column: 46, scope: !3960)
!3996 = !DILocation(line: 1585, column: 2, scope: !3960)
!3997 = !DILocation(line: 1586, column: 2, scope: !3960)
!3998 = !DILocation(line: 1586, column: 26, scope: !3960)
!3999 = !DILocalVariable(name: "alen", scope: !3960, file: !2, line: 1587, type: !199)
!4000 = !DILocation(line: 1587, column: 6, scope: !3960)
!4001 = !DILocation(line: 1587, column: 44, scope: !3960)
!4002 = !DILocation(line: 1587, column: 50, scope: !3960)
!4003 = !DILocation(line: 1587, column: 22, scope: !3960)
!4004 = !DILocation(line: 1587, column: 17, scope: !3960)
!4005 = !DILocation(line: 1587, column: 15, scope: !3960)
!4006 = !DILocalVariable(name: "rem", scope: !4007, file: !2, line: 1591, type: !199)
!4007 = distinct !DILexicalBlock(scope: !3960, file: !2, line: 1590, column: 2)
!4008 = !DILocation(line: 1591, column: 7, scope: !4007)
!4009 = !DILocation(line: 1591, column: 13, scope: !4007)
!4010 = !DILocation(line: 1591, column: 18, scope: !4007)
!4011 = !DILocation(line: 1592, column: 6, scope: !4012)
!4012 = distinct !DILexicalBlock(scope: !4007, file: !2, line: 1592, column: 6)
!4013 = !DILocation(line: 1592, column: 6, scope: !4007)
!4014 = !DILocation(line: 1593, column: 14, scope: !4015)
!4015 = distinct !DILexicalBlock(scope: !4012, file: !2, line: 1592, column: 11)
!4016 = !DILocation(line: 1593, column: 13, scope: !4015)
!4017 = !DILocation(line: 1593, column: 9, scope: !4015)
!4018 = !DILocation(line: 1594, column: 3, scope: !4015)
!4019 = !DILocation(line: 1597, column: 20, scope: !3960)
!4020 = !DILocation(line: 1597, column: 25, scope: !3960)
!4021 = !DILocation(line: 1597, column: 76, scope: !3960)
!4022 = !DILocation(line: 1597, column: 84, scope: !3960)
!4023 = !DILocation(line: 1597, column: 2, scope: !3960)
!4024 = !DILocation(line: 1599, column: 2, scope: !3960)
!4025 = distinct !DISubprogram(name: "stun_attr_get_address_error_code", scope: !2, file: !2, line: 1602, type: !4026, scopeLine: 1603, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!4026 = !DISubroutineType(types: !4027)
!4027 = !{!199, !226, !232, !1092, !1092}
!4028 = !DILocalVariable(name: "buf", arg: 1, scope: !4025, file: !2, line: 1602, type: !226)
!4029 = !DILocation(line: 1602, column: 47, scope: !4025)
!4030 = !DILocalVariable(name: "len", arg: 2, scope: !4025, file: !2, line: 1602, type: !232)
!4031 = !DILocation(line: 1602, column: 59, scope: !4025)
!4032 = !DILocalVariable(name: "requested_address_family", arg: 3, scope: !4025, file: !2, line: 1602, type: !1092)
!4033 = !DILocation(line: 1602, column: 69, scope: !4025)
!4034 = !DILocalVariable(name: "error_code", arg: 4, scope: !4025, file: !2, line: 1602, type: !1092)
!4035 = !DILocation(line: 1602, column: 100, scope: !4025)
!4036 = !DILocation(line: 1604, column: 5, scope: !4037)
!4037 = distinct !DILexicalBlock(scope: !4025, file: !2, line: 1604, column: 5)
!4038 = !DILocation(line: 1604, column: 5, scope: !4025)
!4039 = !DILocation(line: 1605, column: 4, scope: !4040)
!4040 = distinct !DILexicalBlock(scope: !4037, file: !2, line: 1604, column: 31)
!4041 = !DILocation(line: 1605, column: 29, scope: !4040)
!4042 = !DILocation(line: 1606, column: 2, scope: !4040)
!4043 = !DILocation(line: 1607, column: 5, scope: !4044)
!4044 = distinct !DILexicalBlock(scope: !4025, file: !2, line: 1607, column: 5)
!4045 = !DILocation(line: 1607, column: 5, scope: !4025)
!4046 = !DILocation(line: 1608, column: 4, scope: !4047)
!4047 = distinct !DILexicalBlock(scope: !4044, file: !2, line: 1607, column: 17)
!4048 = !DILocation(line: 1608, column: 15, scope: !4047)
!4049 = !DILocation(line: 1609, column: 2, scope: !4047)
!4050 = !DILocation(line: 1610, column: 5, scope: !4051)
!4051 = distinct !DILexicalBlock(scope: !4025, file: !2, line: 1610, column: 5)
!4052 = !DILocation(line: 1610, column: 9, scope: !4051)
!4053 = !DILocation(line: 1610, column: 12, scope: !4051)
!4054 = !DILocation(line: 1610, column: 5, scope: !4025)
!4055 = !DILocalVariable(name: "sar", scope: !4056, file: !2, line: 1611, type: !252)
!4056 = distinct !DILexicalBlock(scope: !4051, file: !2, line: 1610, column: 17)
!4057 = !DILocation(line: 1611, column: 17, scope: !4056)
!4058 = !DILocation(line: 1611, column: 55, scope: !4056)
!4059 = !DILocation(line: 1611, column: 60, scope: !4056)
!4060 = !DILocation(line: 1611, column: 23, scope: !4056)
!4061 = !DILocation(line: 1612, column: 6, scope: !4062)
!4062 = distinct !DILexicalBlock(scope: !4056, file: !2, line: 1612, column: 6)
!4063 = !DILocation(line: 1612, column: 6, scope: !4056)
!4064 = !DILocalVariable(name: "value", scope: !4065, file: !2, line: 1613, type: !244)
!4065 = distinct !DILexicalBlock(scope: !4062, file: !2, line: 1612, column: 11)
!4066 = !DILocation(line: 1613, column: 19, scope: !4065)
!4067 = !DILocation(line: 1613, column: 47, scope: !4065)
!4068 = !DILocation(line: 1613, column: 27, scope: !4065)
!4069 = !DILocation(line: 1614, column: 8, scope: !4070)
!4070 = distinct !DILexicalBlock(scope: !4065, file: !2, line: 1614, column: 7)
!4071 = !DILocation(line: 1614, column: 7, scope: !4065)
!4072 = !DILocation(line: 1615, column: 5, scope: !4073)
!4073 = distinct !DILexicalBlock(scope: !4070, file: !2, line: 1614, column: 15)
!4074 = !DILocalVariable(name: "alen", scope: !4075, file: !2, line: 1617, type: !199)
!4075 = distinct !DILexicalBlock(scope: !4070, file: !2, line: 1616, column: 11)
!4076 = !DILocation(line: 1617, column: 9, scope: !4075)
!4077 = !DILocation(line: 1617, column: 34, scope: !4075)
!4078 = !DILocation(line: 1617, column: 16, scope: !4075)
!4079 = !DILocation(line: 1618, column: 8, scope: !4080)
!4080 = distinct !DILexicalBlock(scope: !4075, file: !2, line: 1618, column: 8)
!4081 = !DILocation(line: 1618, column: 13, scope: !4080)
!4082 = !DILocation(line: 1618, column: 8, scope: !4075)
!4083 = !DILocation(line: 1619, column: 6, scope: !4084)
!4084 = distinct !DILexicalBlock(scope: !4080, file: !2, line: 1618, column: 19)
!4085 = !DILocation(line: 1621, column: 8, scope: !4086)
!4086 = distinct !DILexicalBlock(scope: !4075, file: !2, line: 1621, column: 8)
!4087 = !DILocation(line: 1621, column: 8, scope: !4075)
!4088 = !DILocation(line: 1622, column: 34, scope: !4089)
!4089 = distinct !DILexicalBlock(scope: !4086, file: !2, line: 1621, column: 34)
!4090 = !DILocation(line: 1622, column: 7, scope: !4089)
!4091 = !DILocation(line: 1622, column: 32, scope: !4089)
!4092 = !DILocation(line: 1623, column: 5, scope: !4089)
!4093 = !DILocation(line: 1624, column: 8, scope: !4094)
!4094 = distinct !DILexicalBlock(scope: !4075, file: !2, line: 1624, column: 8)
!4095 = !DILocation(line: 1624, column: 8, scope: !4075)
!4096 = !DILocation(line: 1625, column: 26, scope: !4097)
!4097 = distinct !DILexicalBlock(scope: !4094, file: !2, line: 1624, column: 20)
!4098 = !DILocation(line: 1625, column: 34, scope: !4097)
!4099 = !DILocation(line: 1625, column: 39, scope: !4097)
!4100 = !DILocation(line: 1625, column: 38, scope: !4097)
!4101 = !DILocation(line: 1625, column: 7, scope: !4097)
!4102 = !DILocation(line: 1625, column: 18, scope: !4097)
!4103 = !DILocation(line: 1626, column: 5, scope: !4097)
!4104 = !DILocation(line: 1627, column: 5, scope: !4075)
!4105 = !DILocation(line: 1630, column: 2, scope: !4056)
!4106 = !DILocation(line: 1631, column: 2, scope: !4025)
!4107 = !DILocation(line: 1632, column: 1, scope: !4025)
!4108 = distinct !DISubprogram(name: "stun_attr_get_first_channel_number_str", scope: !2, file: !2, line: 1634, type: !912, scopeLine: 1634, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!4109 = !DILocalVariable(name: "buf", arg: 1, scope: !4108, file: !2, line: 1634, type: !244)
!4110 = !DILocation(line: 1634, column: 64, scope: !4108)
!4111 = !DILocalVariable(name: "len", arg: 2, scope: !4108, file: !2, line: 1634, type: !232)
!4112 = !DILocation(line: 1634, column: 76, scope: !4108)
!4113 = !DILocalVariable(name: "attr", scope: !4108, file: !2, line: 1636, type: !252)
!4114 = !DILocation(line: 1636, column: 17, scope: !4108)
!4115 = !DILocation(line: 1636, column: 46, scope: !4108)
!4116 = !DILocation(line: 1636, column: 50, scope: !4108)
!4117 = !DILocation(line: 1636, column: 22, scope: !4108)
!4118 = !DILocation(line: 1637, column: 3, scope: !4108)
!4119 = !DILocation(line: 1637, column: 9, scope: !4108)
!4120 = !DILocation(line: 1638, column: 27, scope: !4121)
!4121 = distinct !DILexicalBlock(scope: !4122, file: !2, line: 1638, column: 8)
!4122 = distinct !DILexicalBlock(scope: !4108, file: !2, line: 1637, column: 15)
!4123 = !DILocation(line: 1638, column: 8, scope: !4121)
!4124 = !DILocation(line: 1638, column: 33, scope: !4121)
!4125 = !DILocation(line: 1638, column: 8, scope: !4122)
!4126 = !DILocalVariable(name: "ret", scope: !4127, file: !2, line: 1639, type: !237)
!4127 = distinct !DILexicalBlock(scope: !4121, file: !2, line: 1638, column: 67)
!4128 = !DILocation(line: 1639, column: 16, scope: !4127)
!4129 = !DILocation(line: 1639, column: 51, scope: !4127)
!4130 = !DILocation(line: 1639, column: 22, scope: !4127)
!4131 = !DILocation(line: 1640, column: 10, scope: !4132)
!4132 = distinct !DILexicalBlock(scope: !4127, file: !2, line: 1640, column: 10)
!4133 = !DILocation(line: 1640, column: 10, scope: !4127)
!4134 = !DILocation(line: 1641, column: 15, scope: !4135)
!4135 = distinct !DILexicalBlock(scope: !4132, file: !2, line: 1640, column: 35)
!4136 = !DILocation(line: 1641, column: 8, scope: !4135)
!4137 = !DILocation(line: 1643, column: 5, scope: !4127)
!4138 = !DILocation(line: 1644, column: 33, scope: !4122)
!4139 = !DILocation(line: 1644, column: 37, scope: !4122)
!4140 = !DILocation(line: 1644, column: 41, scope: !4122)
!4141 = !DILocation(line: 1644, column: 10, scope: !4122)
!4142 = !DILocation(line: 1644, column: 9, scope: !4122)
!4143 = distinct !{!4143, !4118, !4144, !855}
!4144 = !DILocation(line: 1645, column: 3, scope: !4108)
!4145 = !DILocation(line: 1647, column: 3, scope: !4108)
!4146 = !DILocation(line: 1648, column: 1, scope: !4108)
!4147 = distinct !DISubprogram(name: "stun_attr_add_fingerprint_str", scope: !2, file: !2, line: 1652, type: !4148, scopeLine: 1653, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!4148 = !DISubroutineType(types: !4149)
!4149 = !{!199, !226, !1611}
!4150 = !DILocalVariable(name: "buf", arg: 1, scope: !4147, file: !2, line: 1652, type: !226)
!4151 = !DILocation(line: 1652, column: 44, scope: !4147)
!4152 = !DILocalVariable(name: "len", arg: 2, scope: !4147, file: !2, line: 1652, type: !1611)
!4153 = !DILocation(line: 1652, column: 57, scope: !4147)
!4154 = !DILocalVariable(name: "crc32", scope: !4147, file: !2, line: 1654, type: !242)
!4155 = !DILocation(line: 1654, column: 11, scope: !4147)
!4156 = !DILocation(line: 1655, column: 20, scope: !4147)
!4157 = !DILocation(line: 1655, column: 25, scope: !4147)
!4158 = !DILocation(line: 1655, column: 2, scope: !4147)
!4159 = !DILocation(line: 1656, column: 19, scope: !4147)
!4160 = !DILocation(line: 1656, column: 29, scope: !4147)
!4161 = !DILocation(line: 1656, column: 28, scope: !4147)
!4162 = !DILocation(line: 1656, column: 23, scope: !4147)
!4163 = !DILocation(line: 1656, column: 32, scope: !4147)
!4164 = !DILocation(line: 1656, column: 10, scope: !4147)
!4165 = !DILocation(line: 1656, column: 8, scope: !4147)
!4166 = !DILocation(line: 1657, column: 31, scope: !4147)
!4167 = !DILocation(line: 1657, column: 16, scope: !4147)
!4168 = !DILocation(line: 1657, column: 21, scope: !4147)
!4169 = !DILocation(line: 1657, column: 20, scope: !4147)
!4170 = !DILocation(line: 1657, column: 19, scope: !4147)
!4171 = !DILocation(line: 1657, column: 24, scope: !4147)
!4172 = !DILocation(line: 1657, column: 29, scope: !4147)
!4173 = !DILocation(line: 1658, column: 2, scope: !4147)
!4174 = distinct !DISubprogram(name: "SASLprep", scope: !2, file: !2, line: 1768, type: !4175, scopeLine: 1769, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!4175 = !DISubroutineType(types: !4176)
!4176 = !{!199, !226}
!4177 = !DILocalVariable(name: "s", arg: 1, scope: !4174, file: !2, line: 1768, type: !226)
!4178 = !DILocation(line: 1768, column: 23, scope: !4174)
!4179 = !DILocation(line: 1770, column: 5, scope: !4180)
!4180 = distinct !DILexicalBlock(scope: !4174, file: !2, line: 1770, column: 5)
!4181 = !DILocation(line: 1770, column: 5, scope: !4174)
!4182 = !DILocalVariable(name: "strin", scope: !4183, file: !2, line: 1771, type: !226)
!4183 = distinct !DILexicalBlock(scope: !4180, file: !2, line: 1770, column: 8)
!4184 = !DILocation(line: 1771, column: 12, scope: !4183)
!4185 = !DILocation(line: 1771, column: 20, scope: !4183)
!4186 = !DILocalVariable(name: "strout", scope: !4183, file: !2, line: 1772, type: !226)
!4187 = !DILocation(line: 1772, column: 12, scope: !4183)
!4188 = !DILocation(line: 1772, column: 21, scope: !4183)
!4189 = !DILocation(line: 1773, column: 3, scope: !4183)
!4190 = !DILocalVariable(name: "c", scope: !4191, file: !2, line: 1774, type: !227)
!4191 = distinct !DILexicalBlock(scope: !4192, file: !2, line: 1773, column: 11)
!4192 = distinct !DILexicalBlock(scope: !4193, file: !2, line: 1773, column: 3)
!4193 = distinct !DILexicalBlock(scope: !4183, file: !2, line: 1773, column: 3)
!4194 = !DILocation(line: 1774, column: 12, scope: !4191)
!4195 = !DILocation(line: 1774, column: 17, scope: !4191)
!4196 = !DILocation(line: 1774, column: 16, scope: !4191)
!4197 = !DILocation(line: 1775, column: 8, scope: !4198)
!4198 = distinct !DILexicalBlock(scope: !4191, file: !2, line: 1775, column: 7)
!4199 = !DILocation(line: 1775, column: 7, scope: !4191)
!4200 = !DILocation(line: 1776, column: 6, scope: !4201)
!4201 = distinct !DILexicalBlock(scope: !4198, file: !2, line: 1775, column: 11)
!4202 = !DILocation(line: 1776, column: 12, scope: !4201)
!4203 = !DILocation(line: 1777, column: 5, scope: !4201)
!4204 = !DILocation(line: 1780, column: 11, scope: !4191)
!4205 = !DILocation(line: 1780, column: 4, scope: !4191)
!4206 = !DILocation(line: 1782, column: 5, scope: !4207)
!4207 = distinct !DILexicalBlock(scope: !4191, file: !2, line: 1780, column: 14)
!4208 = !DILocation(line: 1783, column: 5, scope: !4207)
!4209 = !DILocation(line: 1786, column: 6, scope: !4207)
!4210 = !DILocation(line: 1786, column: 12, scope: !4207)
!4211 = !DILocation(line: 1787, column: 5, scope: !4207)
!4212 = !DILocation(line: 1788, column: 5, scope: !4207)
!4213 = !DILocation(line: 1789, column: 5, scope: !4207)
!4214 = !DILocation(line: 1791, column: 5, scope: !4207)
!4215 = !DILocation(line: 1793, column: 8, scope: !4216)
!4216 = distinct !DILexicalBlock(scope: !4207, file: !2, line: 1793, column: 8)
!4217 = !DILocation(line: 1793, column: 9, scope: !4216)
!4218 = !DILocation(line: 1793, column: 8, scope: !4207)
!4219 = !DILocation(line: 1794, column: 6, scope: !4216)
!4220 = !DILocation(line: 1795, column: 8, scope: !4221)
!4221 = distinct !DILexicalBlock(scope: !4207, file: !2, line: 1795, column: 8)
!4222 = !DILocation(line: 1795, column: 9, scope: !4221)
!4223 = !DILocation(line: 1795, column: 16, scope: !4221)
!4224 = !DILocation(line: 1795, column: 19, scope: !4221)
!4225 = !DILocation(line: 1795, column: 20, scope: !4221)
!4226 = !DILocation(line: 1795, column: 8, scope: !4207)
!4227 = !DILocation(line: 1796, column: 6, scope: !4221)
!4228 = !DILocation(line: 1797, column: 13, scope: !4207)
!4229 = !DILocation(line: 1797, column: 6, scope: !4207)
!4230 = !DILocation(line: 1797, column: 12, scope: !4207)
!4231 = !DILocation(line: 1798, column: 5, scope: !4207)
!4232 = !DILocation(line: 1799, column: 5, scope: !4207)
!4233 = !DILocation(line: 1800, column: 4, scope: !4207)
!4234 = !DILocation(line: 1773, column: 3, scope: !4192)
!4235 = distinct !{!4235, !4236, !4237}
!4236 = !DILocation(line: 1773, column: 3, scope: !4193)
!4237 = !DILocation(line: 1801, column: 3, scope: !4193)
!4238 = !DILocation(line: 1802, column: 2, scope: !4183)
!4239 = !DILocation(line: 1804, column: 2, scope: !4174)
!4240 = !DILocation(line: 1805, column: 1, scope: !4174)
!4241 = distinct !DISubprogram(name: "get_hmackey_size", scope: !2, file: !2, line: 1809, type: !4242, scopeLine: 1810, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!4242 = !DISubroutineType(types: !4243)
!4243 = !{!232, !370}
!4244 = !DILocalVariable(name: "shatype", arg: 1, scope: !4241, file: !2, line: 1809, type: !370)
!4245 = !DILocation(line: 1809, column: 33, scope: !4241)
!4246 = !DILocation(line: 1811, column: 5, scope: !4247)
!4247 = distinct !DILexicalBlock(scope: !4241, file: !2, line: 1811, column: 5)
!4248 = !DILocation(line: 1811, column: 13, scope: !4247)
!4249 = !DILocation(line: 1811, column: 5, scope: !4241)
!4250 = !DILocation(line: 1812, column: 3, scope: !4247)
!4251 = !DILocation(line: 1813, column: 5, scope: !4252)
!4252 = distinct !DILexicalBlock(scope: !4241, file: !2, line: 1813, column: 5)
!4253 = !DILocation(line: 1813, column: 13, scope: !4252)
!4254 = !DILocation(line: 1813, column: 5, scope: !4241)
!4255 = !DILocation(line: 1814, column: 3, scope: !4252)
!4256 = !DILocation(line: 1815, column: 5, scope: !4257)
!4257 = distinct !DILexicalBlock(scope: !4241, file: !2, line: 1815, column: 5)
!4258 = !DILocation(line: 1815, column: 13, scope: !4257)
!4259 = !DILocation(line: 1815, column: 5, scope: !4241)
!4260 = !DILocation(line: 1816, column: 3, scope: !4257)
!4261 = !DILocation(line: 1817, column: 2, scope: !4241)
!4262 = !DILocation(line: 1818, column: 1, scope: !4241)
!4263 = distinct !DISubprogram(name: "print_bin_func", scope: !2, file: !2, line: 1820, type: !4264, scopeLine: 1821, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!4264 = !DISubroutineType(types: !4265)
!4265 = !{null, !225, !232, !248, !225}
!4266 = !DILocalVariable(name: "name", arg: 1, scope: !4263, file: !2, line: 1820, type: !225)
!4267 = !DILocation(line: 1820, column: 33, scope: !4263)
!4268 = !DILocalVariable(name: "len", arg: 2, scope: !4263, file: !2, line: 1820, type: !232)
!4269 = !DILocation(line: 1820, column: 46, scope: !4263)
!4270 = !DILocalVariable(name: "s", arg: 3, scope: !4263, file: !2, line: 1820, type: !248)
!4271 = !DILocation(line: 1820, column: 63, scope: !4263)
!4272 = !DILocalVariable(name: "func", arg: 4, scope: !4263, file: !2, line: 1820, type: !225)
!4273 = !DILocation(line: 1820, column: 78, scope: !4263)
!4274 = !DILocation(line: 1822, column: 30, scope: !4263)
!4275 = !DILocation(line: 1822, column: 35, scope: !4263)
!4276 = !DILocation(line: 1822, column: 45, scope: !4263)
!4277 = !DILocation(line: 1822, column: 40, scope: !4263)
!4278 = !DILocation(line: 1822, column: 2, scope: !4263)
!4279 = !DILocalVariable(name: "i", scope: !4263, file: !2, line: 1823, type: !232)
!4280 = !DILocation(line: 1823, column: 9, scope: !4263)
!4281 = !DILocation(line: 1824, column: 7, scope: !4282)
!4282 = distinct !DILexicalBlock(scope: !4263, file: !2, line: 1824, column: 2)
!4283 = !DILocation(line: 1824, column: 6, scope: !4282)
!4284 = !DILocation(line: 1824, column: 10, scope: !4285)
!4285 = distinct !DILexicalBlock(scope: !4282, file: !2, line: 1824, column: 2)
!4286 = !DILocation(line: 1824, column: 12, scope: !4285)
!4287 = !DILocation(line: 1824, column: 11, scope: !4285)
!4288 = !DILocation(line: 1824, column: 2, scope: !4282)
!4289 = !DILocation(line: 1825, column: 39, scope: !4290)
!4290 = distinct !DILexicalBlock(scope: !4285, file: !2, line: 1824, column: 21)
!4291 = !DILocation(line: 1825, column: 42, scope: !4290)
!4292 = !DILocation(line: 1825, column: 22, scope: !4290)
!4293 = !DILocation(line: 1825, column: 17, scope: !4290)
!4294 = !DILocation(line: 1825, column: 3, scope: !4290)
!4295 = !DILocation(line: 1826, column: 2, scope: !4290)
!4296 = !DILocation(line: 1824, column: 17, scope: !4285)
!4297 = !DILocation(line: 1824, column: 2, scope: !4285)
!4298 = distinct !{!4298, !4288, !4299, !855}
!4299 = !DILocation(line: 1826, column: 2, scope: !4282)
!4300 = !DILocation(line: 1827, column: 2, scope: !4263)
!4301 = !DILocation(line: 1828, column: 1, scope: !4263)
!4302 = distinct !DISubprogram(name: "stun_attr_add_integrity_str", scope: !2, file: !2, line: 1830, type: !4303, scopeLine: 1831, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!4303 = !DISubroutineType(types: !4304)
!4304 = !{!199, !4305, !226, !1611, !226, !226, !370}
!4305 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_credential_type", file: !208, line: 59, baseType: !207)
!4306 = !DILocalVariable(name: "ct", arg: 1, scope: !4302, file: !2, line: 1830, type: !4305)
!4307 = !DILocation(line: 1830, column: 54, scope: !4302)
!4308 = !DILocalVariable(name: "buf", arg: 2, scope: !4302, file: !2, line: 1830, type: !226)
!4309 = !DILocation(line: 1830, column: 67, scope: !4302)
!4310 = !DILocalVariable(name: "len", arg: 3, scope: !4302, file: !2, line: 1830, type: !1611)
!4311 = !DILocation(line: 1830, column: 80, scope: !4302)
!4312 = !DILocalVariable(name: "key", arg: 4, scope: !4302, file: !2, line: 1830, type: !226)
!4313 = !DILocation(line: 1830, column: 95, scope: !4302)
!4314 = !DILocalVariable(name: "pwd", arg: 5, scope: !4302, file: !2, line: 1830, type: !226)
!4315 = !DILocation(line: 1830, column: 111, scope: !4302)
!4316 = !DILocalVariable(name: "shatype", arg: 6, scope: !4302, file: !2, line: 1830, type: !370)
!4317 = !DILocation(line: 1830, column: 124, scope: !4302)
!4318 = !DILocalVariable(name: "hmac", scope: !4302, file: !2, line: 1832, type: !4319)
!4319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 1024, elements: !4320)
!4320 = !{!4321}
!4321 = !DISubrange(count: 128)
!4322 = !DILocation(line: 1832, column: 10, scope: !4302)
!4323 = !DILocalVariable(name: "shasize", scope: !4302, file: !2, line: 1834, type: !209)
!4324 = !DILocation(line: 1834, column: 15, scope: !4302)
!4325 = !DILocation(line: 1836, column: 9, scope: !4302)
!4326 = !DILocation(line: 1836, column: 2, scope: !4302)
!4327 = !DILocation(line: 1838, column: 11, scope: !4328)
!4328 = distinct !DILexicalBlock(scope: !4302, file: !2, line: 1836, column: 18)
!4329 = !DILocation(line: 1839, column: 3, scope: !4328)
!4330 = !DILocation(line: 1841, column: 11, scope: !4328)
!4331 = !DILocation(line: 1842, column: 3, scope: !4328)
!4332 = !DILocation(line: 1844, column: 11, scope: !4328)
!4333 = !DILocation(line: 1845, column: 3, scope: !4328)
!4334 = !DILocation(line: 1847, column: 11, scope: !4328)
!4335 = !DILocation(line: 1848, column: 2, scope: !4328)
!4336 = !DILocation(line: 1850, column: 23, scope: !4337)
!4337 = distinct !DILexicalBlock(scope: !4302, file: !2, line: 1850, column: 5)
!4338 = !DILocation(line: 1850, column: 28, scope: !4337)
!4339 = !DILocation(line: 1850, column: 67, scope: !4337)
!4340 = !DILocation(line: 1850, column: 73, scope: !4337)
!4341 = !DILocation(line: 1850, column: 5, scope: !4337)
!4342 = !DILocation(line: 1850, column: 81, scope: !4337)
!4343 = !DILocation(line: 1850, column: 5, scope: !4302)
!4344 = !DILocation(line: 1851, column: 3, scope: !4337)
!4345 = !DILocation(line: 1853, column: 5, scope: !4346)
!4346 = distinct !DILexicalBlock(scope: !4302, file: !2, line: 1853, column: 5)
!4347 = !DILocation(line: 1853, column: 8, scope: !4346)
!4348 = !DILocation(line: 1853, column: 5, scope: !4302)
!4349 = !DILocation(line: 1854, column: 26, scope: !4350)
!4350 = distinct !DILexicalBlock(scope: !4351, file: !2, line: 1854, column: 6)
!4351 = distinct !DILexicalBlock(scope: !4346, file: !2, line: 1853, column: 40)
!4352 = !DILocation(line: 1854, column: 32, scope: !4350)
!4353 = !DILocation(line: 1854, column: 31, scope: !4350)
!4354 = !DILocation(line: 1854, column: 35, scope: !4350)
!4355 = !DILocation(line: 1854, column: 38, scope: !4350)
!4356 = !DILocation(line: 1854, column: 37, scope: !4350)
!4357 = !DILocation(line: 1854, column: 47, scope: !4350)
!4358 = !DILocation(line: 1854, column: 66, scope: !4350)
!4359 = !DILocation(line: 1854, column: 52, scope: !4350)
!4360 = !DILocation(line: 1854, column: 72, scope: !4350)
!4361 = !DILocation(line: 1854, column: 77, scope: !4350)
!4362 = !DILocation(line: 1854, column: 76, scope: !4350)
!4363 = !DILocation(line: 1854, column: 75, scope: !4350)
!4364 = !DILocation(line: 1854, column: 81, scope: !4350)
!4365 = !DILocation(line: 1854, column: 80, scope: !4350)
!4366 = !DILocation(line: 1854, column: 100, scope: !4350)
!4367 = !DILocation(line: 1854, column: 6, scope: !4350)
!4368 = !DILocation(line: 1854, column: 108, scope: !4350)
!4369 = !DILocation(line: 1854, column: 6, scope: !4351)
!4370 = !DILocation(line: 1855, column: 5, scope: !4350)
!4371 = !DILocation(line: 1856, column: 2, scope: !4351)
!4372 = !DILocation(line: 1857, column: 26, scope: !4373)
!4373 = distinct !DILexicalBlock(scope: !4374, file: !2, line: 1857, column: 6)
!4374 = distinct !DILexicalBlock(scope: !4346, file: !2, line: 1856, column: 9)
!4375 = !DILocation(line: 1857, column: 32, scope: !4373)
!4376 = !DILocation(line: 1857, column: 31, scope: !4373)
!4377 = !DILocation(line: 1857, column: 35, scope: !4373)
!4378 = !DILocation(line: 1857, column: 38, scope: !4373)
!4379 = !DILocation(line: 1857, column: 37, scope: !4373)
!4380 = !DILocation(line: 1857, column: 47, scope: !4373)
!4381 = !DILocation(line: 1857, column: 69, scope: !4373)
!4382 = !DILocation(line: 1857, column: 52, scope: !4373)
!4383 = !DILocation(line: 1857, column: 79, scope: !4373)
!4384 = !DILocation(line: 1857, column: 84, scope: !4373)
!4385 = !DILocation(line: 1857, column: 83, scope: !4373)
!4386 = !DILocation(line: 1857, column: 82, scope: !4373)
!4387 = !DILocation(line: 1857, column: 88, scope: !4373)
!4388 = !DILocation(line: 1857, column: 87, scope: !4373)
!4389 = !DILocation(line: 1857, column: 107, scope: !4373)
!4390 = !DILocation(line: 1857, column: 6, scope: !4373)
!4391 = !DILocation(line: 1857, column: 115, scope: !4373)
!4392 = !DILocation(line: 1857, column: 6, scope: !4374)
!4393 = !DILocation(line: 1858, column: 4, scope: !4373)
!4394 = !DILocation(line: 1861, column: 2, scope: !4302)
!4395 = !DILocation(line: 1862, column: 1, scope: !4302)
!4396 = distinct !DISubprogram(name: "stun_attr_add_integrity_by_key_str", scope: !2, file: !2, line: 1864, type: !4397, scopeLine: 1865, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!4397 = !DISubroutineType(types: !4398)
!4398 = !{!199, !226, !1611, !244, !244, !226, !244, !370}
!4399 = !DILocalVariable(name: "buf", arg: 1, scope: !4396, file: !2, line: 1864, type: !226)
!4400 = !DILocation(line: 1864, column: 49, scope: !4396)
!4401 = !DILocalVariable(name: "len", arg: 2, scope: !4396, file: !2, line: 1864, type: !1611)
!4402 = !DILocation(line: 1864, column: 62, scope: !4396)
!4403 = !DILocalVariable(name: "uname", arg: 3, scope: !4396, file: !2, line: 1864, type: !244)
!4404 = !DILocation(line: 1864, column: 82, scope: !4396)
!4405 = !DILocalVariable(name: "realm", arg: 4, scope: !4396, file: !2, line: 1864, type: !244)
!4406 = !DILocation(line: 1864, column: 104, scope: !4396)
!4407 = !DILocalVariable(name: "key", arg: 5, scope: !4396, file: !2, line: 1864, type: !226)
!4408 = !DILocation(line: 1864, column: 121, scope: !4396)
!4409 = !DILocalVariable(name: "nonce", arg: 6, scope: !4396, file: !2, line: 1864, type: !244)
!4410 = !DILocation(line: 1864, column: 141, scope: !4396)
!4411 = !DILocalVariable(name: "shatype", arg: 7, scope: !4396, file: !2, line: 1864, type: !370)
!4412 = !DILocation(line: 1864, column: 156, scope: !4396)
!4413 = !DILocation(line: 1866, column: 23, scope: !4414)
!4414 = distinct !DILexicalBlock(scope: !4396, file: !2, line: 1866, column: 5)
!4415 = !DILocation(line: 1866, column: 28, scope: !4414)
!4416 = !DILocation(line: 1866, column: 58, scope: !4414)
!4417 = !DILocation(line: 1866, column: 90, scope: !4414)
!4418 = !DILocation(line: 1866, column: 70, scope: !4414)
!4419 = !DILocation(line: 1866, column: 65, scope: !4414)
!4420 = !DILocation(line: 1866, column: 5, scope: !4414)
!4421 = !DILocation(line: 1866, column: 97, scope: !4414)
!4422 = !DILocation(line: 1866, column: 5, scope: !4396)
!4423 = !DILocation(line: 1867, column: 4, scope: !4414)
!4424 = !DILocation(line: 1869, column: 23, scope: !4425)
!4425 = distinct !DILexicalBlock(scope: !4396, file: !2, line: 1869, column: 5)
!4426 = !DILocation(line: 1869, column: 28, scope: !4425)
!4427 = !DILocation(line: 1869, column: 55, scope: !4425)
!4428 = !DILocation(line: 1869, column: 87, scope: !4425)
!4429 = !DILocation(line: 1869, column: 67, scope: !4425)
!4430 = !DILocation(line: 1869, column: 62, scope: !4425)
!4431 = !DILocation(line: 1869, column: 5, scope: !4425)
!4432 = !DILocation(line: 1869, column: 94, scope: !4425)
!4433 = !DILocation(line: 1869, column: 5, scope: !4396)
!4434 = !DILocation(line: 1870, column: 3, scope: !4425)
!4435 = !DILocation(line: 1872, column: 23, scope: !4436)
!4436 = distinct !DILexicalBlock(scope: !4396, file: !2, line: 1872, column: 5)
!4437 = !DILocation(line: 1872, column: 28, scope: !4436)
!4438 = !DILocation(line: 1872, column: 55, scope: !4436)
!4439 = !DILocation(line: 1872, column: 87, scope: !4436)
!4440 = !DILocation(line: 1872, column: 67, scope: !4436)
!4441 = !DILocation(line: 1872, column: 62, scope: !4436)
!4442 = !DILocation(line: 1872, column: 5, scope: !4436)
!4443 = !DILocation(line: 1872, column: 94, scope: !4436)
!4444 = !DILocation(line: 1872, column: 5, scope: !4396)
!4445 = !DILocation(line: 1873, column: 4, scope: !4436)
!4446 = !DILocalVariable(name: "p", scope: !4396, file: !2, line: 1875, type: !4447)
!4447 = !DIDerivedType(tag: DW_TAG_typedef, name: "password_t", file: !208, line: 66, baseType: !4448)
!4448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 2056, elements: !774)
!4449 = !DILocation(line: 1875, column: 13, scope: !4396)
!4450 = !DILocation(line: 1876, column: 65, scope: !4396)
!4451 = !DILocation(line: 1876, column: 70, scope: !4396)
!4452 = !DILocation(line: 1876, column: 75, scope: !4396)
!4453 = !DILocation(line: 1876, column: 80, scope: !4396)
!4454 = !DILocation(line: 1876, column: 83, scope: !4396)
!4455 = !DILocation(line: 1876, column: 9, scope: !4396)
!4456 = !DILocation(line: 1876, column: 2, scope: !4396)
!4457 = !DILocation(line: 1877, column: 1, scope: !4396)
!4458 = distinct !DISubprogram(name: "stun_attr_add_integrity_by_user_str", scope: !2, file: !2, line: 1879, type: !4459, scopeLine: 1880, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!4459 = !DISubroutineType(types: !4460)
!4460 = !{!199, !226, !1611, !244, !244, !244, !244, !370}
!4461 = !DILocalVariable(name: "buf", arg: 1, scope: !4458, file: !2, line: 1879, type: !226)
!4462 = !DILocation(line: 1879, column: 50, scope: !4458)
!4463 = !DILocalVariable(name: "len", arg: 2, scope: !4458, file: !2, line: 1879, type: !1611)
!4464 = !DILocation(line: 1879, column: 63, scope: !4458)
!4465 = !DILocalVariable(name: "uname", arg: 3, scope: !4458, file: !2, line: 1879, type: !244)
!4466 = !DILocation(line: 1879, column: 83, scope: !4458)
!4467 = !DILocalVariable(name: "realm", arg: 4, scope: !4458, file: !2, line: 1879, type: !244)
!4468 = !DILocation(line: 1879, column: 105, scope: !4458)
!4469 = !DILocalVariable(name: "upwd", arg: 5, scope: !4458, file: !2, line: 1879, type: !244)
!4470 = !DILocation(line: 1879, column: 127, scope: !4458)
!4471 = !DILocalVariable(name: "nonce", arg: 6, scope: !4458, file: !2, line: 1879, type: !244)
!4472 = !DILocation(line: 1879, column: 148, scope: !4458)
!4473 = !DILocalVariable(name: "shatype", arg: 7, scope: !4458, file: !2, line: 1879, type: !370)
!4474 = !DILocation(line: 1879, column: 163, scope: !4458)
!4475 = !DILocalVariable(name: "key", scope: !4458, file: !2, line: 1881, type: !4476)
!4476 = !DIDerivedType(tag: DW_TAG_typedef, name: "hmackey_t", file: !208, line: 64, baseType: !2909)
!4477 = !DILocation(line: 1881, column: 12, scope: !4458)
!4478 = !DILocation(line: 1883, column: 36, scope: !4479)
!4479 = distinct !DILexicalBlock(scope: !4458, file: !2, line: 1883, column: 5)
!4480 = !DILocation(line: 1883, column: 43, scope: !4479)
!4481 = !DILocation(line: 1883, column: 50, scope: !4479)
!4482 = !DILocation(line: 1883, column: 56, scope: !4479)
!4483 = !DILocation(line: 1883, column: 61, scope: !4479)
!4484 = !DILocation(line: 1883, column: 5, scope: !4479)
!4485 = !DILocation(line: 1883, column: 69, scope: !4479)
!4486 = !DILocation(line: 1883, column: 5, scope: !4458)
!4487 = !DILocation(line: 1884, column: 3, scope: !4479)
!4488 = !DILocation(line: 1886, column: 44, scope: !4458)
!4489 = !DILocation(line: 1886, column: 49, scope: !4458)
!4490 = !DILocation(line: 1886, column: 54, scope: !4458)
!4491 = !DILocation(line: 1886, column: 61, scope: !4458)
!4492 = !DILocation(line: 1886, column: 68, scope: !4458)
!4493 = !DILocation(line: 1886, column: 73, scope: !4458)
!4494 = !DILocation(line: 1886, column: 80, scope: !4458)
!4495 = !DILocation(line: 1886, column: 9, scope: !4458)
!4496 = !DILocation(line: 1886, column: 2, scope: !4458)
!4497 = !DILocation(line: 1887, column: 1, scope: !4458)
!4498 = distinct !DISubprogram(name: "stun_attr_add_integrity_by_user_short_term_str", scope: !2, file: !2, line: 1889, type: !4499, scopeLine: 1890, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!4499 = !DISubroutineType(types: !4500)
!4500 = !{!199, !226, !1611, !244, !226, !370}
!4501 = !DILocalVariable(name: "buf", arg: 1, scope: !4498, file: !2, line: 1889, type: !226)
!4502 = !DILocation(line: 1889, column: 61, scope: !4498)
!4503 = !DILocalVariable(name: "len", arg: 2, scope: !4498, file: !2, line: 1889, type: !1611)
!4504 = !DILocation(line: 1889, column: 74, scope: !4498)
!4505 = !DILocalVariable(name: "uname", arg: 3, scope: !4498, file: !2, line: 1889, type: !244)
!4506 = !DILocation(line: 1889, column: 94, scope: !4498)
!4507 = !DILocalVariable(name: "pwd", arg: 4, scope: !4498, file: !2, line: 1889, type: !226)
!4508 = !DILocation(line: 1889, column: 112, scope: !4498)
!4509 = !DILocalVariable(name: "shatype", arg: 5, scope: !4498, file: !2, line: 1889, type: !370)
!4510 = !DILocation(line: 1889, column: 125, scope: !4498)
!4511 = !DILocation(line: 1891, column: 23, scope: !4512)
!4512 = distinct !DILexicalBlock(scope: !4498, file: !2, line: 1891, column: 5)
!4513 = !DILocation(line: 1891, column: 28, scope: !4512)
!4514 = !DILocation(line: 1891, column: 58, scope: !4512)
!4515 = !DILocation(line: 1891, column: 90, scope: !4512)
!4516 = !DILocation(line: 1891, column: 70, scope: !4512)
!4517 = !DILocation(line: 1891, column: 65, scope: !4512)
!4518 = !DILocation(line: 1891, column: 5, scope: !4512)
!4519 = !DILocation(line: 1891, column: 97, scope: !4512)
!4520 = !DILocation(line: 1891, column: 5, scope: !4498)
!4521 = !DILocation(line: 1892, column: 4, scope: !4512)
!4522 = !DILocalVariable(name: "key", scope: !4498, file: !2, line: 1894, type: !4476)
!4523 = !DILocation(line: 1894, column: 12, scope: !4498)
!4524 = !DILocation(line: 1895, column: 66, scope: !4498)
!4525 = !DILocation(line: 1895, column: 71, scope: !4498)
!4526 = !DILocation(line: 1895, column: 76, scope: !4498)
!4527 = !DILocation(line: 1895, column: 81, scope: !4498)
!4528 = !DILocation(line: 1895, column: 86, scope: !4498)
!4529 = !DILocation(line: 1895, column: 9, scope: !4498)
!4530 = !DILocation(line: 1895, column: 2, scope: !4498)
!4531 = !DILocation(line: 1896, column: 1, scope: !4498)
!4532 = distinct !DISubprogram(name: "print_hmac", scope: !2, file: !2, line: 1898, type: !4533, scopeLine: 1899, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!4533 = !DISubroutineType(types: !4534)
!4534 = !{null, !225, !248, !232}
!4535 = !DILocalVariable(name: "name", arg: 1, scope: !4532, file: !2, line: 1898, type: !225)
!4536 = !DILocation(line: 1898, column: 29, scope: !4532)
!4537 = !DILocalVariable(name: "s", arg: 2, scope: !4532, file: !2, line: 1898, type: !248)
!4538 = !DILocation(line: 1898, column: 47, scope: !4532)
!4539 = !DILocalVariable(name: "len", arg: 3, scope: !4532, file: !2, line: 1898, type: !232)
!4540 = !DILocation(line: 1898, column: 57, scope: !4532)
!4541 = !DILocation(line: 1900, column: 23, scope: !4532)
!4542 = !DILocation(line: 1900, column: 33, scope: !4532)
!4543 = !DILocation(line: 1900, column: 28, scope: !4532)
!4544 = !DILocation(line: 1900, column: 2, scope: !4532)
!4545 = !DILocalVariable(name: "i", scope: !4532, file: !2, line: 1901, type: !232)
!4546 = !DILocation(line: 1901, column: 9, scope: !4532)
!4547 = !DILocation(line: 1902, column: 7, scope: !4548)
!4548 = distinct !DILexicalBlock(scope: !4532, file: !2, line: 1902, column: 2)
!4549 = !DILocation(line: 1902, column: 6, scope: !4548)
!4550 = !DILocation(line: 1902, column: 10, scope: !4551)
!4551 = distinct !DILexicalBlock(scope: !4548, file: !2, line: 1902, column: 2)
!4552 = !DILocation(line: 1902, column: 12, scope: !4551)
!4553 = !DILocation(line: 1902, column: 11, scope: !4551)
!4554 = !DILocation(line: 1902, column: 2, scope: !4548)
!4555 = !DILocation(line: 1903, column: 39, scope: !4556)
!4556 = distinct !DILexicalBlock(scope: !4551, file: !2, line: 1902, column: 21)
!4557 = !DILocation(line: 1903, column: 42, scope: !4556)
!4558 = !DILocation(line: 1903, column: 22, scope: !4556)
!4559 = !DILocation(line: 1903, column: 17, scope: !4556)
!4560 = !DILocation(line: 1903, column: 3, scope: !4556)
!4561 = !DILocation(line: 1904, column: 2, scope: !4556)
!4562 = !DILocation(line: 1902, column: 17, scope: !4551)
!4563 = !DILocation(line: 1902, column: 2, scope: !4551)
!4564 = distinct !{!4564, !4554, !4565, !855}
!4565 = !DILocation(line: 1904, column: 2, scope: !4548)
!4566 = !DILocation(line: 1905, column: 2, scope: !4532)
!4567 = !DILocation(line: 1906, column: 1, scope: !4532)
!4568 = distinct !DISubprogram(name: "stun_check_message_integrity_by_key_str", scope: !2, file: !2, line: 1911, type: !4569, scopeLine: 1912, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!4569 = !DISubroutineType(types: !4570)
!4570 = !{!199, !4305, !226, !232, !226, !226, !370}
!4571 = !DILocalVariable(name: "ct", arg: 1, scope: !4568, file: !2, line: 1911, type: !4305)
!4572 = !DILocation(line: 1911, column: 66, scope: !4568)
!4573 = !DILocalVariable(name: "buf", arg: 2, scope: !4568, file: !2, line: 1911, type: !226)
!4574 = !DILocation(line: 1911, column: 79, scope: !4568)
!4575 = !DILocalVariable(name: "len", arg: 3, scope: !4568, file: !2, line: 1911, type: !232)
!4576 = !DILocation(line: 1911, column: 91, scope: !4568)
!4577 = !DILocalVariable(name: "key", arg: 4, scope: !4568, file: !2, line: 1911, type: !226)
!4578 = !DILocation(line: 1911, column: 106, scope: !4568)
!4579 = !DILocalVariable(name: "pwd", arg: 5, scope: !4568, file: !2, line: 1911, type: !226)
!4580 = !DILocation(line: 1911, column: 122, scope: !4568)
!4581 = !DILocalVariable(name: "shatype", arg: 6, scope: !4568, file: !2, line: 1911, type: !370)
!4582 = !DILocation(line: 1911, column: 135, scope: !4568)
!4583 = !DILocalVariable(name: "res", scope: !4568, file: !2, line: 1913, type: !199)
!4584 = !DILocation(line: 1913, column: 6, scope: !4568)
!4585 = !DILocalVariable(name: "new_hmac", scope: !4568, file: !2, line: 1914, type: !4319)
!4586 = !DILocation(line: 1914, column: 10, scope: !4568)
!4587 = !DILocalVariable(name: "shasize", scope: !4568, file: !2, line: 1915, type: !209)
!4588 = !DILocation(line: 1915, column: 15, scope: !4568)
!4589 = !DILocalVariable(name: "old_hmac", scope: !4568, file: !2, line: 1916, type: !244)
!4590 = !DILocation(line: 1916, column: 17, scope: !4568)
!4591 = !DILocalVariable(name: "sar", scope: !4568, file: !2, line: 1918, type: !252)
!4592 = !DILocation(line: 1918, column: 16, scope: !4568)
!4593 = !DILocation(line: 1918, column: 54, scope: !4568)
!4594 = !DILocation(line: 1918, column: 59, scope: !4568)
!4595 = !DILocation(line: 1918, column: 22, scope: !4568)
!4596 = !DILocation(line: 1919, column: 7, scope: !4597)
!4597 = distinct !DILexicalBlock(scope: !4568, file: !2, line: 1919, column: 6)
!4598 = !DILocation(line: 1919, column: 6, scope: !4568)
!4599 = !DILocation(line: 1920, column: 3, scope: !4597)
!4600 = !DILocalVariable(name: "sarlen", scope: !4568, file: !2, line: 1922, type: !199)
!4601 = !DILocation(line: 1922, column: 6, scope: !4568)
!4602 = !DILocation(line: 1922, column: 33, scope: !4568)
!4603 = !DILocation(line: 1922, column: 15, scope: !4568)
!4604 = !DILocation(line: 1924, column: 9, scope: !4568)
!4605 = !DILocation(line: 1924, column: 2, scope: !4568)
!4606 = !DILocation(line: 1926, column: 11, scope: !4607)
!4607 = distinct !DILexicalBlock(scope: !4568, file: !2, line: 1924, column: 17)
!4608 = !DILocation(line: 1927, column: 6, scope: !4609)
!4609 = distinct !DILexicalBlock(scope: !4607, file: !2, line: 1927, column: 6)
!4610 = !DILocation(line: 1927, column: 14, scope: !4609)
!4611 = !DILocation(line: 1927, column: 6, scope: !4607)
!4612 = !DILocation(line: 1928, column: 4, scope: !4609)
!4613 = !DILocation(line: 1929, column: 3, scope: !4607)
!4614 = !DILocation(line: 1931, column: 11, scope: !4607)
!4615 = !DILocation(line: 1932, column: 6, scope: !4616)
!4616 = distinct !DILexicalBlock(scope: !4607, file: !2, line: 1932, column: 6)
!4617 = !DILocation(line: 1932, column: 14, scope: !4616)
!4618 = !DILocation(line: 1932, column: 6, scope: !4607)
!4619 = !DILocation(line: 1933, column: 4, scope: !4616)
!4620 = !DILocation(line: 1934, column: 3, scope: !4607)
!4621 = !DILocation(line: 1936, column: 11, scope: !4607)
!4622 = !DILocation(line: 1937, column: 6, scope: !4623)
!4623 = distinct !DILexicalBlock(scope: !4607, file: !2, line: 1937, column: 6)
!4624 = !DILocation(line: 1937, column: 14, scope: !4623)
!4625 = !DILocation(line: 1937, column: 6, scope: !4607)
!4626 = !DILocation(line: 1938, column: 4, scope: !4623)
!4627 = !DILocation(line: 1939, column: 3, scope: !4607)
!4628 = !DILocation(line: 1941, column: 11, scope: !4607)
!4629 = !DILocation(line: 1942, column: 6, scope: !4630)
!4630 = distinct !DILexicalBlock(scope: !4607, file: !2, line: 1942, column: 6)
!4631 = !DILocation(line: 1942, column: 14, scope: !4630)
!4632 = !DILocation(line: 1942, column: 6, scope: !4607)
!4633 = !DILocation(line: 1943, column: 4, scope: !4630)
!4634 = !DILocation(line: 1944, column: 3, scope: !4607)
!4635 = !DILocation(line: 1946, column: 3, scope: !4607)
!4636 = !DILocalVariable(name: "orig_len", scope: !4568, file: !2, line: 1949, type: !199)
!4637 = !DILocation(line: 1949, column: 6, scope: !4568)
!4638 = !DILocation(line: 1949, column: 50, scope: !4568)
!4639 = !DILocation(line: 1949, column: 55, scope: !4568)
!4640 = !DILocation(line: 1949, column: 17, scope: !4568)
!4641 = !DILocation(line: 1950, column: 6, scope: !4642)
!4642 = distinct !DILexicalBlock(scope: !4568, file: !2, line: 1950, column: 6)
!4643 = !DILocation(line: 1950, column: 15, scope: !4642)
!4644 = !DILocation(line: 1950, column: 6, scope: !4568)
!4645 = !DILocation(line: 1951, column: 3, scope: !4642)
!4646 = !DILocalVariable(name: "new_len", scope: !4568, file: !2, line: 1953, type: !199)
!4647 = !DILocation(line: 1953, column: 6, scope: !4568)
!4648 = !DILocation(line: 1953, column: 39, scope: !4568)
!4649 = !DILocation(line: 1953, column: 45, scope: !4568)
!4650 = !DILocation(line: 1953, column: 43, scope: !4568)
!4651 = !DILocation(line: 1953, column: 16, scope: !4568)
!4652 = !DILocation(line: 1953, column: 50, scope: !4568)
!4653 = !DILocation(line: 1953, column: 56, scope: !4568)
!4654 = !DILocation(line: 1953, column: 54, scope: !4568)
!4655 = !DILocation(line: 1954, column: 6, scope: !4656)
!4656 = distinct !DILexicalBlock(scope: !4568, file: !2, line: 1954, column: 6)
!4657 = !DILocation(line: 1954, column: 16, scope: !4656)
!4658 = !DILocation(line: 1954, column: 14, scope: !4656)
!4659 = !DILocation(line: 1954, column: 6, scope: !4568)
!4660 = !DILocation(line: 1955, column: 3, scope: !4656)
!4661 = !DILocation(line: 1957, column: 39, scope: !4662)
!4662 = distinct !DILexicalBlock(scope: !4568, file: !2, line: 1957, column: 6)
!4663 = !DILocation(line: 1957, column: 44, scope: !4662)
!4664 = !DILocation(line: 1957, column: 6, scope: !4662)
!4665 = !DILocation(line: 1957, column: 53, scope: !4662)
!4666 = !DILocation(line: 1957, column: 6, scope: !4568)
!4667 = !DILocation(line: 1958, column: 3, scope: !4662)
!4668 = !DILocation(line: 1960, column: 5, scope: !4669)
!4669 = distinct !DILexicalBlock(scope: !4568, file: !2, line: 1960, column: 5)
!4670 = !DILocation(line: 1960, column: 8, scope: !4669)
!4671 = !DILocation(line: 1960, column: 5, scope: !4568)
!4672 = !DILocation(line: 1961, column: 29, scope: !4673)
!4673 = distinct !DILexicalBlock(scope: !4669, file: !2, line: 1960, column: 40)
!4674 = !DILocation(line: 1961, column: 43, scope: !4673)
!4675 = !DILocation(line: 1961, column: 34, scope: !4673)
!4676 = !DILocation(line: 1961, column: 51, scope: !4673)
!4677 = !DILocation(line: 1961, column: 57, scope: !4673)
!4678 = !DILocation(line: 1961, column: 55, scope: !4673)
!4679 = !DILocation(line: 1961, column: 66, scope: !4673)
!4680 = !DILocation(line: 1961, column: 85, scope: !4673)
!4681 = !DILocation(line: 1961, column: 71, scope: !4673)
!4682 = !DILocation(line: 1961, column: 91, scope: !4673)
!4683 = !DILocation(line: 1961, column: 111, scope: !4673)
!4684 = !DILocation(line: 1961, column: 9, scope: !4673)
!4685 = !DILocation(line: 1961, column: 7, scope: !4673)
!4686 = !DILocation(line: 1962, column: 2, scope: !4673)
!4687 = !DILocation(line: 1963, column: 29, scope: !4688)
!4688 = distinct !DILexicalBlock(scope: !4669, file: !2, line: 1962, column: 9)
!4689 = !DILocation(line: 1963, column: 43, scope: !4688)
!4690 = !DILocation(line: 1963, column: 34, scope: !4688)
!4691 = !DILocation(line: 1963, column: 51, scope: !4688)
!4692 = !DILocation(line: 1963, column: 57, scope: !4688)
!4693 = !DILocation(line: 1963, column: 55, scope: !4688)
!4694 = !DILocation(line: 1963, column: 66, scope: !4688)
!4695 = !DILocation(line: 1963, column: 88, scope: !4688)
!4696 = !DILocation(line: 1963, column: 71, scope: !4688)
!4697 = !DILocation(line: 1963, column: 98, scope: !4688)
!4698 = !DILocation(line: 1963, column: 118, scope: !4688)
!4699 = !DILocation(line: 1963, column: 9, scope: !4688)
!4700 = !DILocation(line: 1963, column: 7, scope: !4688)
!4701 = !DILocation(line: 1966, column: 35, scope: !4568)
!4702 = !DILocation(line: 1966, column: 40, scope: !4568)
!4703 = !DILocation(line: 1966, column: 2, scope: !4568)
!4704 = !DILocation(line: 1967, column: 5, scope: !4705)
!4705 = distinct !DILexicalBlock(scope: !4568, file: !2, line: 1967, column: 5)
!4706 = !DILocation(line: 1967, column: 8, scope: !4705)
!4707 = !DILocation(line: 1967, column: 5, scope: !4568)
!4708 = !DILocation(line: 1968, column: 3, scope: !4705)
!4709 = !DILocation(line: 1970, column: 33, scope: !4568)
!4710 = !DILocation(line: 1970, column: 13, scope: !4568)
!4711 = !DILocation(line: 1970, column: 11, scope: !4568)
!4712 = !DILocation(line: 1971, column: 6, scope: !4713)
!4713 = distinct !DILexicalBlock(scope: !4568, file: !2, line: 1971, column: 5)
!4714 = !DILocation(line: 1971, column: 5, scope: !4568)
!4715 = !DILocation(line: 1972, column: 3, scope: !4713)
!4716 = !DILocation(line: 1974, column: 10, scope: !4717)
!4717 = distinct !DILexicalBlock(scope: !4568, file: !2, line: 1974, column: 5)
!4718 = !DILocation(line: 1974, column: 19, scope: !4717)
!4719 = !DILocation(line: 1974, column: 28, scope: !4717)
!4720 = !DILocation(line: 1974, column: 5, scope: !4717)
!4721 = !DILocation(line: 1974, column: 5, scope: !4568)
!4722 = !DILocation(line: 1975, column: 3, scope: !4717)
!4723 = !DILocation(line: 1977, column: 2, scope: !4568)
!4724 = !DILocation(line: 1978, column: 1, scope: !4568)
!4725 = distinct !DISubprogram(name: "stun_check_message_integrity_str", scope: !2, file: !2, line: 1983, type: !4726, scopeLine: 1984, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!4726 = !DISubroutineType(types: !4727)
!4727 = !{!199, !4305, !226, !232, !244, !244, !244, !370}
!4728 = !DILocalVariable(name: "ct", arg: 1, scope: !4725, file: !2, line: 1983, type: !4305)
!4729 = !DILocation(line: 1983, column: 59, scope: !4725)
!4730 = !DILocalVariable(name: "buf", arg: 2, scope: !4725, file: !2, line: 1983, type: !226)
!4731 = !DILocation(line: 1983, column: 72, scope: !4725)
!4732 = !DILocalVariable(name: "len", arg: 3, scope: !4725, file: !2, line: 1983, type: !232)
!4733 = !DILocation(line: 1983, column: 84, scope: !4725)
!4734 = !DILocalVariable(name: "uname", arg: 4, scope: !4725, file: !2, line: 1983, type: !244)
!4735 = !DILocation(line: 1983, column: 104, scope: !4725)
!4736 = !DILocalVariable(name: "realm", arg: 5, scope: !4725, file: !2, line: 1983, type: !244)
!4737 = !DILocation(line: 1983, column: 126, scope: !4725)
!4738 = !DILocalVariable(name: "upwd", arg: 6, scope: !4725, file: !2, line: 1983, type: !244)
!4739 = !DILocation(line: 1983, column: 148, scope: !4725)
!4740 = !DILocalVariable(name: "shatype", arg: 7, scope: !4725, file: !2, line: 1983, type: !370)
!4741 = !DILocation(line: 1983, column: 162, scope: !4725)
!4742 = !DILocalVariable(name: "key", scope: !4725, file: !2, line: 1985, type: !4476)
!4743 = !DILocation(line: 1985, column: 12, scope: !4725)
!4744 = !DILocalVariable(name: "pwd", scope: !4725, file: !2, line: 1986, type: !4447)
!4745 = !DILocation(line: 1986, column: 13, scope: !4725)
!4746 = !DILocation(line: 1988, column: 5, scope: !4747)
!4747 = distinct !DILexicalBlock(scope: !4725, file: !2, line: 1988, column: 5)
!4748 = !DILocation(line: 1988, column: 8, scope: !4747)
!4749 = !DILocation(line: 1988, column: 5, scope: !4725)
!4750 = !DILocation(line: 1989, column: 18, scope: !4747)
!4751 = !DILocation(line: 1989, column: 35, scope: !4747)
!4752 = !DILocation(line: 1989, column: 3, scope: !4747)
!4753 = !DILocation(line: 1990, column: 42, scope: !4754)
!4754 = distinct !DILexicalBlock(scope: !4747, file: !2, line: 1990, column: 11)
!4755 = !DILocation(line: 1990, column: 49, scope: !4754)
!4756 = !DILocation(line: 1990, column: 56, scope: !4754)
!4757 = !DILocation(line: 1990, column: 62, scope: !4754)
!4758 = !DILocation(line: 1990, column: 67, scope: !4754)
!4759 = !DILocation(line: 1990, column: 11, scope: !4754)
!4760 = !DILocation(line: 1990, column: 76, scope: !4754)
!4761 = !DILocation(line: 1990, column: 11, scope: !4747)
!4762 = !DILocation(line: 1991, column: 3, scope: !4754)
!4763 = !DILocation(line: 1993, column: 49, scope: !4725)
!4764 = !DILocation(line: 1993, column: 53, scope: !4725)
!4765 = !DILocation(line: 1993, column: 58, scope: !4725)
!4766 = !DILocation(line: 1993, column: 63, scope: !4725)
!4767 = !DILocation(line: 1993, column: 68, scope: !4725)
!4768 = !DILocation(line: 1993, column: 73, scope: !4725)
!4769 = !DILocation(line: 1993, column: 9, scope: !4725)
!4770 = !DILocation(line: 1993, column: 2, scope: !4725)
!4771 = !DILocation(line: 1994, column: 1, scope: !4725)
!4772 = distinct !DISubprogram(name: "stun_attr_get_change_request_str", scope: !2, file: !2, line: 1998, type: !4773, scopeLine: 1999, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!4773 = !DISubroutineType(types: !4774)
!4774 = !{!199, !252, !1092, !1092}
!4775 = !DILocalVariable(name: "attr", arg: 1, scope: !4772, file: !2, line: 1998, type: !252)
!4776 = !DILocation(line: 1998, column: 52, scope: !4772)
!4777 = !DILocalVariable(name: "change_ip", arg: 2, scope: !4772, file: !2, line: 1998, type: !1092)
!4778 = !DILocation(line: 1998, column: 63, scope: !4772)
!4779 = !DILocalVariable(name: "change_port", arg: 3, scope: !4772, file: !2, line: 1998, type: !1092)
!4780 = !DILocation(line: 1998, column: 79, scope: !4772)
!4781 = !DILocation(line: 2000, column: 23, scope: !4782)
!4782 = distinct !DILexicalBlock(scope: !4772, file: !2, line: 2000, column: 5)
!4783 = !DILocation(line: 2000, column: 5, scope: !4782)
!4784 = !DILocation(line: 2000, column: 29, scope: !4782)
!4785 = !DILocation(line: 2000, column: 5, scope: !4772)
!4786 = !DILocalVariable(name: "value", scope: !4787, file: !2, line: 2001, type: !244)
!4787 = distinct !DILexicalBlock(scope: !4782, file: !2, line: 2000, column: 35)
!4788 = !DILocation(line: 2001, column: 18, scope: !4787)
!4789 = !DILocation(line: 2001, column: 46, scope: !4787)
!4790 = !DILocation(line: 2001, column: 26, scope: !4787)
!4791 = !DILocation(line: 2002, column: 6, scope: !4792)
!4792 = distinct !DILexicalBlock(scope: !4787, file: !2, line: 2002, column: 6)
!4793 = !DILocation(line: 2002, column: 6, scope: !4787)
!4794 = !DILocation(line: 2003, column: 18, scope: !4795)
!4795 = distinct !DILexicalBlock(scope: !4792, file: !2, line: 2002, column: 13)
!4796 = !DILocation(line: 2003, column: 27, scope: !4795)
!4797 = !DILocation(line: 2003, column: 5, scope: !4795)
!4798 = !DILocation(line: 2003, column: 15, scope: !4795)
!4799 = !DILocation(line: 2004, column: 20, scope: !4795)
!4800 = !DILocation(line: 2004, column: 29, scope: !4795)
!4801 = !DILocation(line: 2004, column: 5, scope: !4795)
!4802 = !DILocation(line: 2004, column: 17, scope: !4795)
!4803 = !DILocation(line: 2005, column: 4, scope: !4795)
!4804 = !DILocation(line: 2007, column: 2, scope: !4787)
!4805 = !DILocation(line: 2008, column: 2, scope: !4772)
!4806 = !DILocation(line: 2009, column: 1, scope: !4772)
!4807 = distinct !DISubprogram(name: "stun_attr_add_change_request_str", scope: !2, file: !2, line: 2011, type: !3961, scopeLine: 2012, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!4808 = !DILocalVariable(name: "buf", arg: 1, scope: !4807, file: !2, line: 2011, type: !226)
!4809 = !DILocation(line: 2011, column: 47, scope: !4807)
!4810 = !DILocalVariable(name: "len", arg: 2, scope: !4807, file: !2, line: 2011, type: !1611)
!4811 = !DILocation(line: 2011, column: 60, scope: !4807)
!4812 = !DILocalVariable(name: "change_ip", arg: 3, scope: !4807, file: !2, line: 2011, type: !199)
!4813 = !DILocation(line: 2011, column: 69, scope: !4807)
!4814 = !DILocalVariable(name: "change_port", arg: 4, scope: !4807, file: !2, line: 2011, type: !199)
!4815 = !DILocation(line: 2011, column: 84, scope: !4807)
!4816 = !DILocalVariable(name: "avalue", scope: !4807, file: !2, line: 2013, type: !2447)
!4817 = !DILocation(line: 2013, column: 10, scope: !4807)
!4818 = !DILocation(line: 2015, column: 5, scope: !4819)
!4819 = distinct !DILexicalBlock(scope: !4807, file: !2, line: 2015, column: 5)
!4820 = !DILocation(line: 2015, column: 5, scope: !4807)
!4821 = !DILocation(line: 2016, column: 6, scope: !4822)
!4822 = distinct !DILexicalBlock(scope: !4823, file: !2, line: 2016, column: 6)
!4823 = distinct !DILexicalBlock(scope: !4819, file: !2, line: 2015, column: 16)
!4824 = !DILocation(line: 2016, column: 6, scope: !4823)
!4825 = !DILocation(line: 2017, column: 4, scope: !4826)
!4826 = distinct !DILexicalBlock(scope: !4822, file: !2, line: 2016, column: 19)
!4827 = !DILocation(line: 2017, column: 14, scope: !4826)
!4828 = !DILocation(line: 2018, column: 3, scope: !4826)
!4829 = !DILocation(line: 2019, column: 4, scope: !4830)
!4830 = distinct !DILexicalBlock(scope: !4822, file: !2, line: 2018, column: 10)
!4831 = !DILocation(line: 2019, column: 14, scope: !4830)
!4832 = !DILocation(line: 2021, column: 2, scope: !4823)
!4833 = !DILocation(line: 2021, column: 12, scope: !4834)
!4834 = distinct !DILexicalBlock(scope: !4819, file: !2, line: 2021, column: 12)
!4835 = !DILocation(line: 2021, column: 12, scope: !4819)
!4836 = !DILocation(line: 2022, column: 3, scope: !4837)
!4837 = distinct !DILexicalBlock(scope: !4834, file: !2, line: 2021, column: 25)
!4838 = !DILocation(line: 2022, column: 12, scope: !4837)
!4839 = !DILocation(line: 2023, column: 2, scope: !4837)
!4840 = !DILocation(line: 2025, column: 27, scope: !4807)
!4841 = !DILocation(line: 2025, column: 32, scope: !4807)
!4842 = !DILocation(line: 2025, column: 68, scope: !4807)
!4843 = !DILocation(line: 2025, column: 9, scope: !4807)
!4844 = !DILocation(line: 2025, column: 2, scope: !4807)
!4845 = distinct !DISubprogram(name: "stun_attr_get_response_port_str", scope: !2, file: !2, line: 2028, type: !1210, scopeLine: 2029, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!4846 = !DILocalVariable(name: "attr", arg: 1, scope: !4845, file: !2, line: 2028, type: !252)
!4847 = !DILocation(line: 2028, column: 51, scope: !4845)
!4848 = !DILocation(line: 2030, column: 23, scope: !4849)
!4849 = distinct !DILexicalBlock(scope: !4845, file: !2, line: 2030, column: 5)
!4850 = !DILocation(line: 2030, column: 5, scope: !4849)
!4851 = !DILocation(line: 2030, column: 29, scope: !4849)
!4852 = !DILocation(line: 2030, column: 5, scope: !4845)
!4853 = !DILocalVariable(name: "value", scope: !4854, file: !2, line: 2031, type: !244)
!4854 = distinct !DILexicalBlock(scope: !4849, file: !2, line: 2030, column: 35)
!4855 = !DILocation(line: 2031, column: 18, scope: !4854)
!4856 = !DILocation(line: 2031, column: 46, scope: !4854)
!4857 = !DILocation(line: 2031, column: 26, scope: !4854)
!4858 = !DILocation(line: 2032, column: 6, scope: !4859)
!4859 = distinct !DILexicalBlock(scope: !4854, file: !2, line: 2032, column: 6)
!4860 = !DILocation(line: 2032, column: 6, scope: !4854)
!4861 = !DILocation(line: 2033, column: 11, scope: !4862)
!4862 = distinct !DILexicalBlock(scope: !4859, file: !2, line: 2032, column: 13)
!4863 = !DILocation(line: 2033, column: 4, scope: !4862)
!4864 = !DILocation(line: 2035, column: 2, scope: !4854)
!4865 = !DILocation(line: 2036, column: 2, scope: !4845)
!4866 = !DILocation(line: 2037, column: 1, scope: !4845)
!4867 = distinct !DISubprogram(name: "stun_attr_add_response_port_str", scope: !2, file: !2, line: 2039, type: !3030, scopeLine: 2040, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!4868 = !DILocalVariable(name: "buf", arg: 1, scope: !4867, file: !2, line: 2039, type: !226)
!4869 = !DILocation(line: 2039, column: 46, scope: !4867)
!4870 = !DILocalVariable(name: "len", arg: 2, scope: !4867, file: !2, line: 2039, type: !1611)
!4871 = !DILocation(line: 2039, column: 59, scope: !4867)
!4872 = !DILocalVariable(name: "port", arg: 3, scope: !4867, file: !2, line: 2039, type: !237)
!4873 = !DILocation(line: 2039, column: 73, scope: !4867)
!4874 = !DILocalVariable(name: "avalue", scope: !4867, file: !2, line: 2041, type: !2447)
!4875 = !DILocation(line: 2041, column: 10, scope: !4867)
!4876 = !DILocalVariable(name: "port_ptr", scope: !4867, file: !2, line: 2042, type: !246)
!4877 = !DILocation(line: 2042, column: 12, scope: !4867)
!4878 = !DILocation(line: 2042, column: 34, scope: !4867)
!4879 = !DILocation(line: 2044, column: 14, scope: !4867)
!4880 = !DILocation(line: 2044, column: 3, scope: !4867)
!4881 = !DILocation(line: 2044, column: 12, scope: !4867)
!4882 = !DILocation(line: 2046, column: 27, scope: !4867)
!4883 = !DILocation(line: 2046, column: 32, scope: !4867)
!4884 = !DILocation(line: 2046, column: 67, scope: !4867)
!4885 = !DILocation(line: 2046, column: 9, scope: !4867)
!4886 = !DILocation(line: 2046, column: 2, scope: !4867)
!4887 = distinct !DISubprogram(name: "stun_attr_get_padding_len_str", scope: !2, file: !2, line: 2049, type: !1210, scopeLine: 2049, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!4888 = !DILocalVariable(name: "attr", arg: 1, scope: !4887, file: !2, line: 2049, type: !252)
!4889 = !DILocation(line: 2049, column: 49, scope: !4887)
!4890 = !DILocalVariable(name: "len", scope: !4887, file: !2, line: 2050, type: !199)
!4891 = !DILocation(line: 2050, column: 6, scope: !4887)
!4892 = !DILocation(line: 2050, column: 30, scope: !4887)
!4893 = !DILocation(line: 2050, column: 12, scope: !4887)
!4894 = !DILocation(line: 2051, column: 5, scope: !4895)
!4895 = distinct !DILexicalBlock(scope: !4887, file: !2, line: 2051, column: 5)
!4896 = !DILocation(line: 2051, column: 8, scope: !4895)
!4897 = !DILocation(line: 2051, column: 5, scope: !4887)
!4898 = !DILocation(line: 2052, column: 3, scope: !4895)
!4899 = !DILocation(line: 2053, column: 19, scope: !4887)
!4900 = !DILocation(line: 2053, column: 9, scope: !4887)
!4901 = !DILocation(line: 2053, column: 2, scope: !4887)
!4902 = !DILocation(line: 2054, column: 1, scope: !4887)
!4903 = distinct !DISubprogram(name: "stun_attr_add_padding_str", scope: !2, file: !2, line: 2056, type: !3030, scopeLine: 2057, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!4904 = !DILocalVariable(name: "buf", arg: 1, scope: !4903, file: !2, line: 2056, type: !226)
!4905 = !DILocation(line: 2056, column: 40, scope: !4903)
!4906 = !DILocalVariable(name: "len", arg: 2, scope: !4903, file: !2, line: 2056, type: !1611)
!4907 = !DILocation(line: 2056, column: 53, scope: !4903)
!4908 = !DILocalVariable(name: "padding_len", arg: 3, scope: !4903, file: !2, line: 2056, type: !237)
!4909 = !DILocation(line: 2056, column: 67, scope: !4903)
!4910 = !DILocalVariable(name: "avalue", scope: !4903, file: !2, line: 2058, type: !4911)
!4911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 524280, elements: !4912)
!4912 = !{!4913}
!4913 = !DISubrange(count: 65535)
!4914 = !DILocation(line: 2058, column: 10, scope: !4903)
!4915 = !DILocation(line: 2059, column: 2, scope: !4903)
!4916 = !DILocation(line: 2059, column: 15, scope: !4903)
!4917 = !DILocation(line: 2061, column: 27, scope: !4903)
!4918 = !DILocation(line: 2061, column: 32, scope: !4903)
!4919 = !DILocation(line: 2061, column: 61, scope: !4903)
!4920 = !DILocation(line: 2061, column: 69, scope: !4903)
!4921 = !DILocation(line: 2061, column: 9, scope: !4903)
!4922 = !DILocation(line: 2061, column: 2, scope: !4903)
!4923 = distinct !DISubprogram(name: "calculate_enc_key_length", scope: !2, file: !2, line: 2110, type: !4924, scopeLine: 2111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!4924 = !DISubroutineType(types: !4925)
!4925 = !{!232, !4926}
!4926 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENC_ALG", file: !198, line: 187, baseType: !215)
!4927 = !DILocalVariable(name: "a", arg: 1, scope: !4923, file: !2, line: 2110, type: !4926)
!4928 = !DILocation(line: 2110, column: 41, scope: !4923)
!4929 = !DILocation(line: 2112, column: 9, scope: !4923)
!4930 = !DILocation(line: 2112, column: 2, scope: !4923)
!4931 = !DILocation(line: 2115, column: 3, scope: !4932)
!4932 = distinct !DILexicalBlock(scope: !4923, file: !2, line: 2112, column: 12)
!4933 = !DILocation(line: 2118, column: 3, scope: !4932)
!4934 = !DILocation(line: 2121, column: 2, scope: !4923)
!4935 = !DILocation(line: 2122, column: 1, scope: !4923)
!4936 = distinct !DISubprogram(name: "calculate_auth_key_length", scope: !2, file: !2, line: 2125, type: !4924, scopeLine: 2126, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!4937 = !DILocalVariable(name: "a", arg: 1, scope: !4936, file: !2, line: 2125, type: !4926)
!4938 = !DILocation(line: 2125, column: 42, scope: !4936)
!4939 = !DILocation(line: 2127, column: 9, scope: !4936)
!4940 = !DILocation(line: 2127, column: 2, scope: !4936)
!4941 = !DILocation(line: 2131, column: 3, scope: !4942)
!4942 = distinct !DILexicalBlock(scope: !4936, file: !2, line: 2127, column: 12)
!4943 = !DILocation(line: 2134, column: 3, scope: !4942)
!4944 = !DILocation(line: 2137, column: 2, scope: !4936)
!4945 = !DILocation(line: 2138, column: 1, scope: !4936)
!4946 = distinct !DISubprogram(name: "calculate_key", scope: !2, file: !2, line: 2142, type: !4947, scopeLine: 2144, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!4947 = !DISubroutineType(types: !4948)
!4948 = !{!199, !231, !232, !231, !232}
!4949 = !DILocalVariable(name: "key", arg: 1, scope: !4946, file: !2, line: 2142, type: !231)
!4950 = !DILocation(line: 2142, column: 25, scope: !4946)
!4951 = !DILocalVariable(name: "key_size", arg: 2, scope: !4946, file: !2, line: 2142, type: !232)
!4952 = !DILocation(line: 2142, column: 37, scope: !4946)
!4953 = !DILocalVariable(name: "new_key", arg: 3, scope: !4946, file: !2, line: 2143, type: !231)
!4954 = !DILocation(line: 2143, column: 9, scope: !4946)
!4955 = !DILocalVariable(name: "new_key_size", arg: 4, scope: !4946, file: !2, line: 2143, type: !232)
!4956 = !DILocation(line: 2143, column: 25, scope: !4946)
!4957 = !DILocation(line: 2145, column: 2, scope: !4946)
!4958 = !DILocation(line: 2145, column: 2, scope: !4959)
!4959 = distinct !DILexicalBlock(scope: !4946, file: !2, line: 2145, column: 2)
!4960 = !DILocation(line: 2147, column: 8, scope: !4946)
!4961 = !DILocation(line: 2147, column: 12, scope: !4946)
!4962 = !DILocation(line: 2147, column: 20, scope: !4946)
!4963 = !DILocation(line: 2147, column: 2, scope: !4946)
!4964 = !DILocation(line: 2149, column: 2, scope: !4946)
!4965 = distinct !DISubprogram(name: "convert_oauth_key_data", scope: !2, file: !2, line: 2152, type: !4966, scopeLine: 2153, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!4966 = !DISubroutineType(types: !4967)
!4967 = !{!199, !4968, !4983, !231, !232}
!4968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4969, size: 64)
!4969 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4970)
!4970 = !DIDerivedType(tag: DW_TAG_typedef, name: "oauth_key_data", file: !198, line: 221, baseType: !4971)
!4971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_oauth_key_data", file: !198, line: 212, size: 3840, elements: !4972)
!4972 = !{!4973, !4975, !4976, !4977, !4978, !4979}
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "kid", scope: !4971, file: !198, line: 213, baseType: !4974, size: 1032)
!4974 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1032, elements: !737)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "ikm_key", scope: !4971, file: !198, line: 214, baseType: !773, size: 2056, offset: 1032)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "ikm_key_size", scope: !4971, file: !198, line: 215, baseType: !232, size: 64, offset: 3136)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !4971, file: !198, line: 216, baseType: !253, size: 32, offset: 3200)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "lifetime", scope: !4971, file: !198, line: 217, baseType: !253, size: 32, offset: 3232)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "as_rs_alg", scope: !4971, file: !198, line: 218, baseType: !4980, size: 520, offset: 3264)
!4980 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 520, elements: !4981)
!4981 = !{!4982}
!4982 = !DISubrange(count: 65)
!4983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4984, size: 64)
!4984 = !DIDerivedType(tag: DW_TAG_typedef, name: "oauth_key", file: !198, line: 236, baseType: !4985)
!4985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_oauth_key", file: !198, line: 223, size: 7616, elements: !4986)
!4986 = !{!4987, !4988, !4989, !4990, !4991, !4992, !4993, !4994, !4995, !4996}
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "kid", scope: !4985, file: !198, line: 224, baseType: !4974, size: 1032)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "ikm_key", scope: !4985, file: !198, line: 225, baseType: !773, size: 2056, offset: 1032)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "ikm_key_size", scope: !4985, file: !198, line: 226, baseType: !232, size: 64, offset: 3136)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !4985, file: !198, line: 227, baseType: !253, size: 32, offset: 3200)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "lifetime", scope: !4985, file: !198, line: 228, baseType: !253, size: 32, offset: 3232)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "as_rs_alg", scope: !4985, file: !198, line: 229, baseType: !4926, size: 32, offset: 3264)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "as_rs_key", scope: !4985, file: !198, line: 230, baseType: !773, size: 2056, offset: 3296)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "as_rs_key_size", scope: !4985, file: !198, line: 231, baseType: !232, size: 64, offset: 5376)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "auth_key", scope: !4985, file: !198, line: 232, baseType: !773, size: 2056, offset: 5440)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "auth_key_size", scope: !4985, file: !198, line: 233, baseType: !232, size: 64, offset: 7552)
!4997 = !DILocalVariable(name: "oakd0", arg: 1, scope: !4965, file: !2, line: 2152, type: !4968)
!4998 = !DILocation(line: 2152, column: 50, scope: !4965)
!4999 = !DILocalVariable(name: "key", arg: 2, scope: !4965, file: !2, line: 2152, type: !4983)
!5000 = !DILocation(line: 2152, column: 68, scope: !4965)
!5001 = !DILocalVariable(name: "err_msg", arg: 3, scope: !4965, file: !2, line: 2152, type: !231)
!5002 = !DILocation(line: 2152, column: 79, scope: !4965)
!5003 = !DILocalVariable(name: "err_msg_size", arg: 4, scope: !4965, file: !2, line: 2152, type: !232)
!5004 = !DILocation(line: 2152, column: 95, scope: !4965)
!5005 = !DILocation(line: 2154, column: 5, scope: !5006)
!5006 = distinct !DILexicalBlock(scope: !4965, file: !2, line: 2154, column: 5)
!5007 = !DILocation(line: 2154, column: 11, scope: !5006)
!5008 = !DILocation(line: 2154, column: 14, scope: !5006)
!5009 = !DILocation(line: 2154, column: 5, scope: !4965)
!5010 = !DILocalVariable(name: "oakd_obj", scope: !5011, file: !2, line: 2156, type: !4970)
!5011 = distinct !DILexicalBlock(scope: !5006, file: !2, line: 2154, column: 19)
!5012 = !DILocation(line: 2156, column: 18, scope: !5011)
!5013 = !DILocation(line: 2157, column: 9, scope: !5011)
!5014 = !DILocation(line: 2157, column: 3, scope: !5011)
!5015 = !DILocalVariable(name: "oakd", scope: !5011, file: !2, line: 2158, type: !5016)
!5016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4970, size: 64)
!5017 = !DILocation(line: 2158, column: 19, scope: !5011)
!5018 = !DILocation(line: 2160, column: 8, scope: !5019)
!5019 = distinct !DILexicalBlock(scope: !5011, file: !2, line: 2160, column: 6)
!5020 = !DILocation(line: 2160, column: 14, scope: !5019)
!5021 = !DILocation(line: 2160, column: 7, scope: !5019)
!5022 = !DILocation(line: 2160, column: 6, scope: !5011)
!5023 = !DILocation(line: 2161, column: 7, scope: !5024)
!5024 = distinct !DILexicalBlock(scope: !5025, file: !2, line: 2161, column: 7)
!5025 = distinct !DILexicalBlock(scope: !5019, file: !2, line: 2160, column: 29)
!5026 = !DILocation(line: 2161, column: 7, scope: !5025)
!5027 = !DILocation(line: 2162, column: 14, scope: !5028)
!5028 = distinct !DILexicalBlock(scope: !5024, file: !2, line: 2161, column: 16)
!5029 = !DILocation(line: 2162, column: 22, scope: !5028)
!5030 = !DILocation(line: 2162, column: 5, scope: !5028)
!5031 = !DILocation(line: 2163, column: 4, scope: !5028)
!5032 = !DILocation(line: 2164, column: 3, scope: !5025)
!5033 = !DILocation(line: 2166, column: 17, scope: !5011)
!5034 = !DILocation(line: 2166, column: 23, scope: !5011)
!5035 = !DILocation(line: 2166, column: 3, scope: !5011)
!5036 = !DILocation(line: 2168, column: 17, scope: !5011)
!5037 = !DILocation(line: 2168, column: 23, scope: !5011)
!5038 = !DILocation(line: 2168, column: 3, scope: !5011)
!5039 = !DILocation(line: 2170, column: 23, scope: !5011)
!5040 = !DILocation(line: 2170, column: 29, scope: !5011)
!5041 = !DILocation(line: 2170, column: 3, scope: !5011)
!5042 = !DILocation(line: 2172, column: 8, scope: !5043)
!5043 = distinct !DILexicalBlock(scope: !5011, file: !2, line: 2172, column: 6)
!5044 = !DILocation(line: 2172, column: 14, scope: !5043)
!5045 = !DILocation(line: 2172, column: 7, scope: !5043)
!5046 = !DILocation(line: 2172, column: 6, scope: !5011)
!5047 = !DILocation(line: 2173, column: 7, scope: !5048)
!5048 = distinct !DILexicalBlock(scope: !5049, file: !2, line: 2173, column: 7)
!5049 = distinct !DILexicalBlock(scope: !5043, file: !2, line: 2172, column: 23)
!5050 = !DILocation(line: 2173, column: 7, scope: !5049)
!5051 = !DILocation(line: 2174, column: 14, scope: !5052)
!5052 = distinct !DILexicalBlock(scope: !5048, file: !2, line: 2173, column: 16)
!5053 = !DILocation(line: 2174, column: 22, scope: !5052)
!5054 = !DILocation(line: 2174, column: 5, scope: !5052)
!5055 = !DILocation(line: 2175, column: 4, scope: !5052)
!5056 = !DILocation(line: 2176, column: 4, scope: !5049)
!5057 = !DILocation(line: 2177, column: 4, scope: !5049)
!5058 = !DILocation(line: 2180, column: 9, scope: !5011)
!5059 = !DILocation(line: 2180, column: 3, scope: !5011)
!5060 = !DILocation(line: 2182, column: 3, scope: !5011)
!5061 = !DILocation(line: 2182, column: 3, scope: !5062)
!5062 = distinct !DILexicalBlock(scope: !5063, file: !2, line: 2182, column: 3)
!5063 = distinct !DILexicalBlock(scope: !5011, file: !2, line: 2182, column: 3)
!5064 = !DILocation(line: 2182, column: 3, scope: !5063)
!5065 = !DILocalVariable(name: "szdst", scope: !5066, file: !2, line: 2182, type: !232)
!5066 = distinct !DILexicalBlock(scope: !5067, file: !2, line: 2182, column: 3)
!5067 = distinct !DILexicalBlock(scope: !5068, file: !2, line: 2182, column: 3)
!5068 = distinct !DILexicalBlock(scope: !5062, file: !2, line: 2182, column: 3)
!5069 = !DILocation(line: 2182, column: 3, scope: !5066)
!5070 = !DILocation(line: 2182, column: 3, scope: !5068)
!5071 = !DILocation(line: 2184, column: 9, scope: !5011)
!5072 = !DILocation(line: 2184, column: 15, scope: !5011)
!5073 = !DILocation(line: 2184, column: 23, scope: !5011)
!5074 = !DILocation(line: 2184, column: 28, scope: !5011)
!5075 = !DILocation(line: 2184, column: 3, scope: !5011)
!5076 = !DILocation(line: 2185, column: 23, scope: !5011)
!5077 = !DILocation(line: 2185, column: 29, scope: !5011)
!5078 = !DILocation(line: 2185, column: 3, scope: !5011)
!5079 = !DILocation(line: 2185, column: 8, scope: !5011)
!5080 = !DILocation(line: 2185, column: 21, scope: !5011)
!5081 = !DILocation(line: 2187, column: 20, scope: !5011)
!5082 = !DILocation(line: 2187, column: 26, scope: !5011)
!5083 = !DILocation(line: 2187, column: 3, scope: !5011)
!5084 = !DILocation(line: 2187, column: 8, scope: !5011)
!5085 = !DILocation(line: 2187, column: 18, scope: !5011)
!5086 = !DILocation(line: 2188, column: 19, scope: !5011)
!5087 = !DILocation(line: 2188, column: 25, scope: !5011)
!5088 = !DILocation(line: 2188, column: 3, scope: !5011)
!5089 = !DILocation(line: 2188, column: 8, scope: !5011)
!5090 = !DILocation(line: 2188, column: 17, scope: !5011)
!5091 = !DILocation(line: 2190, column: 8, scope: !5092)
!5092 = distinct !DILexicalBlock(scope: !5011, file: !2, line: 2190, column: 6)
!5093 = !DILocation(line: 2190, column: 13, scope: !5092)
!5094 = !DILocation(line: 2190, column: 7, scope: !5092)
!5095 = !DILocation(line: 2190, column: 6, scope: !5011)
!5096 = !DILocation(line: 2190, column: 42, scope: !5092)
!5097 = !DILocation(line: 2190, column: 25, scope: !5092)
!5098 = !DILocation(line: 2190, column: 30, scope: !5092)
!5099 = !DILocation(line: 2190, column: 40, scope: !5092)
!5100 = !DILocation(line: 2191, column: 8, scope: !5101)
!5101 = distinct !DILexicalBlock(scope: !5011, file: !2, line: 2191, column: 6)
!5102 = !DILocation(line: 2191, column: 13, scope: !5101)
!5103 = !DILocation(line: 2191, column: 7, scope: !5101)
!5104 = !DILocation(line: 2191, column: 6, scope: !5011)
!5105 = !DILocation(line: 2191, column: 24, scope: !5101)
!5106 = !DILocation(line: 2191, column: 29, scope: !5101)
!5107 = !DILocation(line: 2191, column: 38, scope: !5101)
!5108 = !DILocation(line: 2193, column: 3, scope: !5011)
!5109 = !DILocation(line: 2193, column: 8, scope: !5011)
!5110 = !DILocation(line: 2193, column: 18, scope: !5011)
!5111 = !DILocation(line: 2195, column: 3, scope: !5011)
!5112 = !DILocation(line: 2195, column: 8, scope: !5011)
!5113 = !DILocation(line: 2195, column: 18, scope: !5011)
!5114 = !DILocation(line: 2196, column: 14, scope: !5115)
!5115 = distinct !DILexicalBlock(scope: !5011, file: !2, line: 2196, column: 6)
!5116 = !DILocation(line: 2196, column: 20, scope: !5115)
!5117 = !DILocation(line: 2196, column: 7, scope: !5115)
!5118 = !DILocation(line: 2196, column: 6, scope: !5011)
!5119 = !DILocation(line: 2197, column: 4, scope: !5120)
!5120 = distinct !DILexicalBlock(scope: !5115, file: !2, line: 2196, column: 42)
!5121 = !DILocation(line: 2197, column: 9, scope: !5120)
!5122 = !DILocation(line: 2197, column: 19, scope: !5120)
!5123 = !DILocation(line: 2198, column: 4, scope: !5120)
!5124 = !DILocation(line: 2198, column: 9, scope: !5120)
!5125 = !DILocation(line: 2198, column: 23, scope: !5120)
!5126 = !DILocation(line: 2199, column: 4, scope: !5120)
!5127 = !DILocation(line: 2199, column: 9, scope: !5120)
!5128 = !DILocation(line: 2199, column: 21, scope: !5120)
!5129 = !DILocation(line: 2200, column: 3, scope: !5120)
!5130 = !DILocation(line: 2200, column: 21, scope: !5131)
!5131 = distinct !DILexicalBlock(scope: !5115, file: !2, line: 2200, column: 13)
!5132 = !DILocation(line: 2200, column: 27, scope: !5131)
!5133 = !DILocation(line: 2200, column: 14, scope: !5131)
!5134 = !DILocation(line: 2200, column: 13, scope: !5115)
!5135 = !DILocation(line: 2201, column: 4, scope: !5136)
!5136 = distinct !DILexicalBlock(scope: !5131, file: !2, line: 2200, column: 49)
!5137 = !DILocation(line: 2201, column: 9, scope: !5136)
!5138 = !DILocation(line: 2201, column: 19, scope: !5136)
!5139 = !DILocation(line: 2202, column: 4, scope: !5136)
!5140 = !DILocation(line: 2202, column: 9, scope: !5136)
!5141 = !DILocation(line: 2202, column: 23, scope: !5136)
!5142 = !DILocation(line: 2203, column: 4, scope: !5136)
!5143 = !DILocation(line: 2203, column: 9, scope: !5136)
!5144 = !DILocation(line: 2203, column: 21, scope: !5136)
!5145 = !DILocation(line: 2204, column: 3, scope: !5136)
!5146 = !DILocation(line: 2207, column: 7, scope: !5147)
!5147 = distinct !DILexicalBlock(scope: !5148, file: !2, line: 2207, column: 7)
!5148 = distinct !DILexicalBlock(scope: !5131, file: !2, line: 2206, column: 3)
!5149 = !DILocation(line: 2207, column: 7, scope: !5148)
!5150 = !DILocation(line: 2208, column: 14, scope: !5151)
!5151 = distinct !DILexicalBlock(scope: !5147, file: !2, line: 2207, column: 16)
!5152 = !DILocation(line: 2208, column: 22, scope: !5151)
!5153 = !DILocation(line: 2208, column: 86, scope: !5151)
!5154 = !DILocation(line: 2208, column: 92, scope: !5151)
!5155 = !DILocation(line: 2208, column: 5, scope: !5151)
!5156 = !DILocation(line: 2209, column: 4, scope: !5151)
!5157 = !DILocation(line: 2210, column: 4, scope: !5148)
!5158 = !DILocation(line: 2211, column: 4, scope: !5148)
!5159 = !DILocation(line: 2216, column: 50, scope: !5011)
!5160 = !DILocation(line: 2216, column: 55, scope: !5011)
!5161 = !DILocation(line: 2216, column: 24, scope: !5011)
!5162 = !DILocation(line: 2216, column: 3, scope: !5011)
!5163 = !DILocation(line: 2216, column: 8, scope: !5011)
!5164 = !DILocation(line: 2216, column: 22, scope: !5011)
!5165 = !DILocation(line: 2217, column: 6, scope: !5166)
!5166 = distinct !DILexicalBlock(scope: !5011, file: !2, line: 2217, column: 6)
!5167 = !DILocation(line: 2217, column: 11, scope: !5166)
!5168 = !DILocation(line: 2217, column: 6, scope: !5011)
!5169 = !DILocation(line: 2218, column: 21, scope: !5170)
!5170 = distinct !DILexicalBlock(scope: !5171, file: !2, line: 2218, column: 7)
!5171 = distinct !DILexicalBlock(scope: !5166, file: !2, line: 2217, column: 26)
!5172 = !DILocation(line: 2218, column: 26, scope: !5170)
!5173 = !DILocation(line: 2218, column: 34, scope: !5170)
!5174 = !DILocation(line: 2218, column: 39, scope: !5170)
!5175 = !DILocation(line: 2218, column: 52, scope: !5170)
!5176 = !DILocation(line: 2218, column: 57, scope: !5170)
!5177 = !DILocation(line: 2218, column: 66, scope: !5170)
!5178 = !DILocation(line: 2218, column: 71, scope: !5170)
!5179 = !DILocation(line: 2218, column: 7, scope: !5170)
!5180 = !DILocation(line: 2218, column: 85, scope: !5170)
!5181 = !DILocation(line: 2218, column: 7, scope: !5171)
!5182 = !DILocation(line: 2219, column: 5, scope: !5183)
!5183 = distinct !DILexicalBlock(scope: !5170, file: !2, line: 2218, column: 89)
!5184 = !DILocation(line: 2221, column: 3, scope: !5171)
!5185 = !DILocation(line: 2223, column: 50, scope: !5011)
!5186 = !DILocation(line: 2223, column: 55, scope: !5011)
!5187 = !DILocation(line: 2223, column: 25, scope: !5011)
!5188 = !DILocation(line: 2223, column: 3, scope: !5011)
!5189 = !DILocation(line: 2223, column: 8, scope: !5011)
!5190 = !DILocation(line: 2223, column: 23, scope: !5011)
!5191 = !DILocation(line: 2224, column: 20, scope: !5192)
!5192 = distinct !DILexicalBlock(scope: !5011, file: !2, line: 2224, column: 6)
!5193 = !DILocation(line: 2224, column: 25, scope: !5192)
!5194 = !DILocation(line: 2224, column: 33, scope: !5192)
!5195 = !DILocation(line: 2224, column: 38, scope: !5192)
!5196 = !DILocation(line: 2224, column: 51, scope: !5192)
!5197 = !DILocation(line: 2224, column: 56, scope: !5192)
!5198 = !DILocation(line: 2224, column: 66, scope: !5192)
!5199 = !DILocation(line: 2224, column: 71, scope: !5192)
!5200 = !DILocation(line: 2224, column: 6, scope: !5192)
!5201 = !DILocation(line: 2224, column: 86, scope: !5192)
!5202 = !DILocation(line: 2224, column: 6, scope: !5011)
!5203 = !DILocation(line: 2225, column: 4, scope: !5204)
!5204 = distinct !DILexicalBlock(scope: !5192, file: !2, line: 2224, column: 90)
!5205 = !DILocation(line: 2228, column: 2, scope: !5011)
!5206 = !DILocation(line: 2230, column: 2, scope: !4965)
!5207 = !DILocation(line: 2231, column: 1, scope: !4965)
!5208 = distinct !DISubprogram(name: "remove_spaces", scope: !2, file: !2, line: 2068, type: !5209, scopeLine: 2069, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !194, retainedNodes: !305)
!5209 = !DISubroutineType(types: !5210)
!5210 = !{null, !231}
!5211 = !DILocalVariable(name: "s", arg: 1, scope: !5208, file: !2, line: 2068, type: !231)
!5212 = !DILocation(line: 2068, column: 33, scope: !5208)
!5213 = !DILocalVariable(name: "sfns", scope: !5208, file: !2, line: 2070, type: !231)
!5214 = !DILocation(line: 2070, column: 8, scope: !5208)
!5215 = !DILocation(line: 2070, column: 15, scope: !5208)
!5216 = !DILocation(line: 2071, column: 2, scope: !5208)
!5217 = !DILocation(line: 2071, column: 9, scope: !5208)
!5218 = !DILocation(line: 2071, column: 8, scope: !5208)
!5219 = !DILocation(line: 2072, column: 7, scope: !5220)
!5220 = distinct !DILexicalBlock(scope: !5221, file: !2, line: 2072, column: 6)
!5221 = distinct !DILexicalBlock(scope: !5208, file: !2, line: 2071, column: 15)
!5222 = !DILocation(line: 2072, column: 6, scope: !5220)
!5223 = !DILocation(line: 2072, column: 12, scope: !5220)
!5224 = !DILocation(line: 2072, column: 6, scope: !5221)
!5225 = !DILocation(line: 2073, column: 4, scope: !5220)
!5226 = !DILocation(line: 2074, column: 3, scope: !5221)
!5227 = distinct !{!5227, !5216, !5228, !855}
!5228 = !DILocation(line: 2075, column: 2, scope: !5208)
!5229 = !DILocation(line: 2076, column: 6, scope: !5230)
!5230 = distinct !DILexicalBlock(scope: !5208, file: !2, line: 2076, column: 5)
!5231 = !DILocation(line: 2076, column: 5, scope: !5230)
!5232 = !DILocation(line: 2076, column: 5, scope: !5208)
!5233 = !DILocation(line: 2077, column: 6, scope: !5234)
!5234 = distinct !DILexicalBlock(scope: !5235, file: !2, line: 2077, column: 6)
!5235 = distinct !DILexicalBlock(scope: !5230, file: !2, line: 2076, column: 12)
!5236 = !DILocation(line: 2077, column: 14, scope: !5234)
!5237 = !DILocation(line: 2077, column: 11, scope: !5234)
!5238 = !DILocation(line: 2077, column: 6, scope: !5235)
!5239 = !DILocation(line: 2078, column: 4, scope: !5240)
!5240 = distinct !DILexicalBlock(scope: !5234, file: !2, line: 2077, column: 17)
!5241 = !DILocation(line: 2078, column: 11, scope: !5240)
!5242 = !DILocation(line: 2078, column: 10, scope: !5240)
!5243 = !DILocation(line: 2078, column: 16, scope: !5240)
!5244 = !DILocation(line: 2078, column: 21, scope: !5240)
!5245 = !DILocation(line: 2078, column: 20, scope: !5240)
!5246 = !DILocation(line: 2078, column: 26, scope: !5240)
!5247 = !DILocation(line: 0, scope: !5240)
!5248 = !DILocation(line: 2079, column: 11, scope: !5249)
!5249 = distinct !DILexicalBlock(scope: !5240, file: !2, line: 2078, column: 35)
!5250 = !DILocation(line: 2079, column: 10, scope: !5249)
!5251 = !DILocation(line: 2079, column: 6, scope: !5249)
!5252 = !DILocation(line: 2079, column: 8, scope: !5249)
!5253 = !DILocation(line: 2080, column: 5, scope: !5249)
!5254 = !DILocation(line: 2081, column: 5, scope: !5249)
!5255 = distinct !{!5255, !5239, !5256, !855}
!5256 = !DILocation(line: 2082, column: 4, scope: !5240)
!5257 = !DILocation(line: 2083, column: 5, scope: !5240)
!5258 = !DILocation(line: 2083, column: 7, scope: !5240)
!5259 = !DILocation(line: 2084, column: 3, scope: !5240)
!5260 = !DILocation(line: 2085, column: 4, scope: !5261)
!5261 = distinct !DILexicalBlock(scope: !5234, file: !2, line: 2084, column: 10)
!5262 = !DILocation(line: 2085, column: 11, scope: !5261)
!5263 = !DILocation(line: 2085, column: 10, scope: !5261)
!5264 = !DILocation(line: 2086, column: 9, scope: !5265)
!5265 = distinct !DILexicalBlock(scope: !5266, file: !2, line: 2086, column: 8)
!5266 = distinct !DILexicalBlock(scope: !5261, file: !2, line: 2085, column: 14)
!5267 = !DILocation(line: 2086, column: 8, scope: !5265)
!5268 = !DILocation(line: 2086, column: 11, scope: !5265)
!5269 = !DILocation(line: 2086, column: 8, scope: !5266)
!5270 = !DILocation(line: 2087, column: 7, scope: !5271)
!5271 = distinct !DILexicalBlock(scope: !5265, file: !2, line: 2086, column: 19)
!5272 = !DILocation(line: 2087, column: 9, scope: !5271)
!5273 = !DILocation(line: 2088, column: 6, scope: !5271)
!5274 = !DILocation(line: 2090, column: 5, scope: !5266)
!5275 = distinct !{!5275, !5260, !5276, !855}
!5276 = !DILocation(line: 2091, column: 4, scope: !5261)
!5277 = !DILocation(line: 2093, column: 2, scope: !5235)
!5278 = !DILocation(line: 2094, column: 1, scope: !5208)
!5279 = distinct !DISubprogram(name: "normalize_algorithm", scope: !2, file: !2, line: 2096, type: !5209, scopeLine: 2097, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !194, retainedNodes: !305)
!5280 = !DILocalVariable(name: "s", arg: 1, scope: !5279, file: !2, line: 2096, type: !231)
!5281 = !DILocation(line: 2096, column: 39, scope: !5279)
!5282 = !DILocalVariable(name: "c", scope: !5279, file: !2, line: 2098, type: !4)
!5283 = !DILocation(line: 2098, column: 7, scope: !5279)
!5284 = !DILocation(line: 2098, column: 12, scope: !5279)
!5285 = !DILocation(line: 2098, column: 11, scope: !5279)
!5286 = !DILocation(line: 2099, column: 2, scope: !5279)
!5287 = !DILocation(line: 2099, column: 8, scope: !5279)
!5288 = !DILocation(line: 2100, column: 6, scope: !5289)
!5289 = distinct !DILexicalBlock(scope: !5290, file: !2, line: 2100, column: 6)
!5290 = distinct !DILexicalBlock(scope: !5279, file: !2, line: 2099, column: 11)
!5291 = !DILocation(line: 2100, column: 7, scope: !5289)
!5292 = !DILocation(line: 2100, column: 6, scope: !5290)
!5293 = !DILocation(line: 2100, column: 15, scope: !5289)
!5294 = !DILocation(line: 2100, column: 16, scope: !5289)
!5295 = !DILocation(line: 2100, column: 14, scope: !5289)
!5296 = !DILocation(line: 2101, column: 12, scope: !5297)
!5297 = distinct !DILexicalBlock(scope: !5289, file: !2, line: 2101, column: 11)
!5298 = !DILocation(line: 2101, column: 13, scope: !5297)
!5299 = !DILocation(line: 2101, column: 19, scope: !5297)
!5300 = !DILocation(line: 2101, column: 22, scope: !5297)
!5301 = !DILocation(line: 2101, column: 23, scope: !5297)
!5302 = !DILocation(line: 2101, column: 11, scope: !5289)
!5303 = !DILocation(line: 2102, column: 9, scope: !5304)
!5304 = distinct !DILexicalBlock(scope: !5297, file: !2, line: 2101, column: 31)
!5305 = !DILocation(line: 2102, column: 11, scope: !5304)
!5306 = !DILocation(line: 2102, column: 17, scope: !5304)
!5307 = !DILocation(line: 2102, column: 5, scope: !5304)
!5308 = !DILocation(line: 2102, column: 7, scope: !5304)
!5309 = !DILocation(line: 2103, column: 3, scope: !5304)
!5310 = !DILocation(line: 2104, column: 3, scope: !5290)
!5311 = !DILocation(line: 2105, column: 8, scope: !5290)
!5312 = !DILocation(line: 2105, column: 7, scope: !5290)
!5313 = !DILocation(line: 2105, column: 5, scope: !5290)
!5314 = distinct !{!5314, !5286, !5315, !855}
!5315 = !DILocation(line: 2106, column: 2, scope: !5279)
!5316 = !DILocation(line: 2107, column: 1, scope: !5279)
!5317 = distinct !DISubprogram(name: "get_cipher_type", scope: !2, file: !2, line: 2234, type: !5318, scopeLine: 2235, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!5318 = !DISubroutineType(types: !5319)
!5319 = !{!5320, !4926}
!5320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5321, size: 64)
!5321 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5322)
!5322 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_CIPHER", file: !569, line: 101, baseType: !5323)
!5323 = !DICompositeType(tag: DW_TAG_structure_type, name: "evp_cipher_st", file: !569, line: 101, flags: DIFlagFwdDecl)
!5324 = !DILocalVariable(name: "enc_alg", arg: 1, scope: !5317, file: !2, line: 2234, type: !4926)
!5325 = !DILocation(line: 2234, column: 43, scope: !5317)
!5326 = !DILocation(line: 2236, column: 9, scope: !5317)
!5327 = !DILocation(line: 2236, column: 2, scope: !5317)
!5328 = !DILocation(line: 2239, column: 10, scope: !5329)
!5329 = distinct !DILexicalBlock(scope: !5317, file: !2, line: 2236, column: 18)
!5330 = !DILocation(line: 2239, column: 3, scope: !5329)
!5331 = !DILocation(line: 2241, column: 10, scope: !5329)
!5332 = !DILocation(line: 2241, column: 3, scope: !5329)
!5333 = !DILocation(line: 2244, column: 3, scope: !5329)
!5334 = !DILocation(line: 2246, column: 2, scope: !5317)
!5335 = !DILocation(line: 2247, column: 2, scope: !5317)
!5336 = !DILocation(line: 2248, column: 1, scope: !5317)
!5337 = distinct !DISubprogram(name: "my_EVP_EncryptUpdate", scope: !2, file: !2, line: 2252, type: !5338, scopeLine: 2254, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!5338 = !DISubroutineType(types: !5339)
!5339 = !{!199, !5340, !223, !1092, !255, !199}
!5340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5341, size: 64)
!5341 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_CIPHER_CTX", file: !569, line: 102, baseType: !5342)
!5342 = !DICompositeType(tag: DW_TAG_structure_type, name: "evp_cipher_ctx_st", file: !569, line: 102, flags: DIFlagFwdDecl)
!5343 = !DILocalVariable(name: "ctx", arg: 1, scope: !5337, file: !2, line: 2252, type: !5340)
!5344 = !DILocation(line: 2252, column: 42, scope: !5337)
!5345 = !DILocalVariable(name: "out", arg: 2, scope: !5337, file: !2, line: 2252, type: !223)
!5346 = !DILocation(line: 2252, column: 62, scope: !5337)
!5347 = !DILocalVariable(name: "outl", arg: 3, scope: !5337, file: !2, line: 2253, type: !1092)
!5348 = !DILocation(line: 2253, column: 8, scope: !5337)
!5349 = !DILocalVariable(name: "in", arg: 4, scope: !5337, file: !2, line: 2253, type: !255)
!5350 = !DILocation(line: 2253, column: 35, scope: !5337)
!5351 = !DILocalVariable(name: "inl", arg: 5, scope: !5337, file: !2, line: 2253, type: !199)
!5352 = !DILocation(line: 2253, column: 43, scope: !5337)
!5353 = !DILocalVariable(name: "cycle", scope: !5337, file: !2, line: 2255, type: !199)
!5354 = !DILocation(line: 2255, column: 6, scope: !5337)
!5355 = !DILocalVariable(name: "out_len", scope: !5337, file: !2, line: 2256, type: !199)
!5356 = !DILocation(line: 2256, column: 6, scope: !5337)
!5357 = !DILocation(line: 2257, column: 2, scope: !5337)
!5358 = !DILocation(line: 2257, column: 9, scope: !5337)
!5359 = !DILocation(line: 2257, column: 17, scope: !5337)
!5360 = !DILocation(line: 2257, column: 16, scope: !5337)
!5361 = !DILocation(line: 2257, column: 21, scope: !5337)
!5362 = !DILocation(line: 2257, column: 24, scope: !5337)
!5363 = !DILocation(line: 2257, column: 31, scope: !5337)
!5364 = !DILocation(line: 0, scope: !5337)
!5365 = !DILocalVariable(name: "tmp_outl", scope: !5366, file: !2, line: 2258, type: !199)
!5366 = distinct !DILexicalBlock(scope: !5337, file: !2, line: 2257, column: 38)
!5367 = !DILocation(line: 2258, column: 7, scope: !5366)
!5368 = !DILocalVariable(name: "ptr", scope: !5366, file: !2, line: 2259, type: !223)
!5369 = !DILocation(line: 2259, column: 18, scope: !5366)
!5370 = !DILocation(line: 2260, column: 6, scope: !5371)
!5371 = distinct !DILexicalBlock(scope: !5366, file: !2, line: 2260, column: 6)
!5372 = !DILocation(line: 2260, column: 6, scope: !5366)
!5373 = !DILocation(line: 2261, column: 10, scope: !5371)
!5374 = !DILocation(line: 2261, column: 14, scope: !5371)
!5375 = !DILocation(line: 2261, column: 13, scope: !5371)
!5376 = !DILocation(line: 2261, column: 8, scope: !5371)
!5377 = !DILocation(line: 2261, column: 4, scope: !5371)
!5378 = !DILocalVariable(name: "ret", scope: !5366, file: !2, line: 2262, type: !199)
!5379 = !DILocation(line: 2262, column: 7, scope: !5366)
!5380 = !DILocation(line: 2262, column: 31, scope: !5366)
!5381 = !DILocation(line: 2262, column: 36, scope: !5366)
!5382 = !DILocation(line: 2262, column: 52, scope: !5366)
!5383 = !DILocation(line: 2262, column: 55, scope: !5366)
!5384 = !DILocation(line: 2262, column: 54, scope: !5366)
!5385 = !DILocation(line: 2262, column: 64, scope: !5366)
!5386 = !DILocation(line: 2262, column: 68, scope: !5366)
!5387 = !DILocation(line: 2262, column: 67, scope: !5366)
!5388 = !DILocation(line: 2262, column: 13, scope: !5366)
!5389 = !DILocation(line: 2263, column: 14, scope: !5366)
!5390 = !DILocation(line: 2263, column: 11, scope: !5366)
!5391 = !DILocation(line: 2264, column: 6, scope: !5392)
!5392 = distinct !DILexicalBlock(scope: !5366, file: !2, line: 2264, column: 6)
!5393 = !DILocation(line: 2264, column: 9, scope: !5392)
!5394 = !DILocation(line: 2264, column: 6, scope: !5366)
!5395 = !DILocation(line: 2265, column: 11, scope: !5392)
!5396 = !DILocation(line: 2265, column: 4, scope: !5392)
!5397 = distinct !{!5397, !5357, !5398, !855}
!5398 = !DILocation(line: 2266, column: 2, scope: !5337)
!5399 = !DILocation(line: 2267, column: 10, scope: !5337)
!5400 = !DILocation(line: 2267, column: 3, scope: !5337)
!5401 = !DILocation(line: 2267, column: 8, scope: !5337)
!5402 = !DILocation(line: 2268, column: 2, scope: !5337)
!5403 = !DILocation(line: 2269, column: 1, scope: !5337)
!5404 = distinct !DISubprogram(name: "my_EVP_DecryptUpdate", scope: !2, file: !2, line: 2273, type: !5338, scopeLine: 2275, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!5405 = !DILocalVariable(name: "ctx", arg: 1, scope: !5404, file: !2, line: 2273, type: !5340)
!5406 = !DILocation(line: 2273, column: 42, scope: !5404)
!5407 = !DILocalVariable(name: "out", arg: 2, scope: !5404, file: !2, line: 2273, type: !223)
!5408 = !DILocation(line: 2273, column: 62, scope: !5404)
!5409 = !DILocalVariable(name: "outl", arg: 3, scope: !5404, file: !2, line: 2274, type: !1092)
!5410 = !DILocation(line: 2274, column: 8, scope: !5404)
!5411 = !DILocalVariable(name: "in", arg: 4, scope: !5404, file: !2, line: 2274, type: !255)
!5412 = !DILocation(line: 2274, column: 35, scope: !5404)
!5413 = !DILocalVariable(name: "inl", arg: 5, scope: !5404, file: !2, line: 2274, type: !199)
!5414 = !DILocation(line: 2274, column: 43, scope: !5404)
!5415 = !DILocalVariable(name: "cycle", scope: !5404, file: !2, line: 2276, type: !199)
!5416 = !DILocation(line: 2276, column: 6, scope: !5404)
!5417 = !DILocalVariable(name: "out_len", scope: !5404, file: !2, line: 2277, type: !199)
!5418 = !DILocation(line: 2277, column: 6, scope: !5404)
!5419 = !DILocation(line: 2278, column: 2, scope: !5404)
!5420 = !DILocation(line: 2278, column: 9, scope: !5404)
!5421 = !DILocation(line: 2278, column: 17, scope: !5404)
!5422 = !DILocation(line: 2278, column: 16, scope: !5404)
!5423 = !DILocation(line: 2278, column: 21, scope: !5404)
!5424 = !DILocation(line: 2278, column: 24, scope: !5404)
!5425 = !DILocation(line: 2278, column: 31, scope: !5404)
!5426 = !DILocation(line: 0, scope: !5404)
!5427 = !DILocalVariable(name: "tmp_outl", scope: !5428, file: !2, line: 2279, type: !199)
!5428 = distinct !DILexicalBlock(scope: !5404, file: !2, line: 2278, column: 38)
!5429 = !DILocation(line: 2279, column: 7, scope: !5428)
!5430 = !DILocalVariable(name: "ptr", scope: !5428, file: !2, line: 2280, type: !223)
!5431 = !DILocation(line: 2280, column: 18, scope: !5428)
!5432 = !DILocation(line: 2281, column: 6, scope: !5433)
!5433 = distinct !DILexicalBlock(scope: !5428, file: !2, line: 2281, column: 6)
!5434 = !DILocation(line: 2281, column: 6, scope: !5428)
!5435 = !DILocation(line: 2282, column: 10, scope: !5433)
!5436 = !DILocation(line: 2282, column: 14, scope: !5433)
!5437 = !DILocation(line: 2282, column: 13, scope: !5433)
!5438 = !DILocation(line: 2282, column: 8, scope: !5433)
!5439 = !DILocation(line: 2282, column: 4, scope: !5433)
!5440 = !DILocalVariable(name: "ret", scope: !5428, file: !2, line: 2283, type: !199)
!5441 = !DILocation(line: 2283, column: 7, scope: !5428)
!5442 = !DILocation(line: 2283, column: 31, scope: !5428)
!5443 = !DILocation(line: 2283, column: 36, scope: !5428)
!5444 = !DILocation(line: 2283, column: 52, scope: !5428)
!5445 = !DILocation(line: 2283, column: 55, scope: !5428)
!5446 = !DILocation(line: 2283, column: 54, scope: !5428)
!5447 = !DILocation(line: 2283, column: 64, scope: !5428)
!5448 = !DILocation(line: 2283, column: 68, scope: !5428)
!5449 = !DILocation(line: 2283, column: 67, scope: !5428)
!5450 = !DILocation(line: 2283, column: 13, scope: !5428)
!5451 = !DILocation(line: 2284, column: 14, scope: !5428)
!5452 = !DILocation(line: 2284, column: 11, scope: !5428)
!5453 = !DILocation(line: 2285, column: 6, scope: !5454)
!5454 = distinct !DILexicalBlock(scope: !5428, file: !2, line: 2285, column: 6)
!5455 = !DILocation(line: 2285, column: 9, scope: !5454)
!5456 = !DILocation(line: 2285, column: 6, scope: !5428)
!5457 = !DILocation(line: 2286, column: 11, scope: !5454)
!5458 = !DILocation(line: 2286, column: 4, scope: !5454)
!5459 = distinct !{!5459, !5419, !5460, !855}
!5460 = !DILocation(line: 2287, column: 2, scope: !5404)
!5461 = !DILocation(line: 2288, column: 10, scope: !5404)
!5462 = !DILocation(line: 2288, column: 3, scope: !5404)
!5463 = !DILocation(line: 2288, column: 8, scope: !5404)
!5464 = !DILocation(line: 2289, column: 2, scope: !5404)
!5465 = !DILocation(line: 2290, column: 1, scope: !5404)
!5466 = distinct !DISubprogram(name: "print_field", scope: !2, file: !2, line: 2293, type: !5467, scopeLine: 2293, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!5467 = !DISubroutineType(types: !5468)
!5468 = !{null, !225, !255, !232}
!5469 = !DILocalVariable(name: "name", arg: 1, scope: !5466, file: !2, line: 2293, type: !225)
!5470 = !DILocation(line: 2293, column: 30, scope: !5466)
!5471 = !DILocalVariable(name: "f", arg: 2, scope: !5466, file: !2, line: 2293, type: !255)
!5472 = !DILocation(line: 2293, column: 57, scope: !5466)
!5473 = !DILocalVariable(name: "len", arg: 3, scope: !5466, file: !2, line: 2293, type: !232)
!5474 = !DILocation(line: 2293, column: 67, scope: !5466)
!5475 = !DILocation(line: 2294, column: 28, scope: !5466)
!5476 = !DILocation(line: 2294, column: 2, scope: !5466)
!5477 = !DILocalVariable(name: "i", scope: !5466, file: !2, line: 2295, type: !232)
!5478 = !DILocation(line: 2295, column: 9, scope: !5466)
!5479 = !DILocation(line: 2296, column: 8, scope: !5480)
!5480 = distinct !DILexicalBlock(scope: !5466, file: !2, line: 2296, column: 2)
!5481 = !DILocation(line: 2296, column: 6, scope: !5480)
!5482 = !DILocation(line: 2296, column: 12, scope: !5483)
!5483 = distinct !DILexicalBlock(scope: !5480, file: !2, line: 2296, column: 2)
!5484 = !DILocation(line: 2296, column: 14, scope: !5483)
!5485 = !DILocation(line: 2296, column: 13, scope: !5483)
!5486 = !DILocation(line: 2296, column: 2, scope: !5480)
!5487 = !DILocation(line: 2297, column: 33, scope: !5488)
!5488 = distinct !DILexicalBlock(scope: !5483, file: !2, line: 2296, column: 23)
!5489 = !DILocation(line: 2297, column: 35, scope: !5488)
!5490 = !DILocation(line: 2297, column: 19, scope: !5488)
!5491 = !DILocation(line: 2297, column: 3, scope: !5488)
!5492 = !DILocation(line: 2298, column: 2, scope: !5488)
!5493 = !DILocation(line: 2296, column: 18, scope: !5483)
!5494 = !DILocation(line: 2296, column: 2, scope: !5483)
!5495 = distinct !{!5495, !5486, !5496, !855}
!5496 = !DILocation(line: 2298, column: 2, scope: !5480)
!5497 = !DILocation(line: 2299, column: 28, scope: !5466)
!5498 = !DILocation(line: 2299, column: 2, scope: !5466)
!5499 = !DILocation(line: 2300, column: 1, scope: !5466)
!5500 = distinct !DISubprogram(name: "encode_oauth_token_normal", scope: !2, file: !2, line: 2303, type: !5501, scopeLine: 2304, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!5501 = !DISubroutineType(types: !5502)
!5502 = !{!199, !244, !5503, !5512, !5514}
!5503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5504, size: 64)
!5504 = !DIDerivedType(tag: DW_TAG_typedef, name: "encoded_oauth_token", file: !198, line: 262, baseType: !5505)
!5505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_encoded_oauth_token", file: !198, line: 257, size: 8256, elements: !5506)
!5506 = !{!5507, !5511}
!5507 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !5505, file: !198, line: 258, baseType: !5508, size: 8192)
!5508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !5509)
!5509 = !{!5510}
!5510 = !DISubrange(count: 1024)
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5505, file: !198, line: 259, baseType: !232, size: 64, offset: 8192)
!5512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5513, size: 64)
!5513 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4984)
!5514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5515, size: 64)
!5515 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5516)
!5516 = !DIDerivedType(tag: DW_TAG_typedef, name: "oauth_token", file: !198, line: 253, baseType: !5517)
!5517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_oauth_token", file: !198, line: 249, size: 3264, elements: !5518)
!5518 = !{!5519}
!5519 = !DIDerivedType(tag: DW_TAG_member, name: "enc_block", scope: !5517, file: !198, line: 250, baseType: !5520, size: 3264)
!5520 = !DIDerivedType(tag: DW_TAG_typedef, name: "oauth_encrypted_block", file: !198, line: 247, baseType: !5521)
!5521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_oauth_encrypted_block", file: !198, line: 238, size: 3264, elements: !5522)
!5522 = !{!5523, !5524, !5526, !5527, !5528, !5529}
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "nonce_length", scope: !5521, file: !198, line: 239, baseType: !237, size: 16)
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "nonce", scope: !5521, file: !198, line: 240, baseType: !5525, size: 2048, offset: 16)
!5525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 2048, elements: !292)
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "key_length", scope: !5521, file: !198, line: 241, baseType: !237, size: 16, offset: 2064)
!5527 = !DIDerivedType(tag: DW_TAG_member, name: "mac_key", scope: !5521, file: !198, line: 242, baseType: !4319, size: 1024, offset: 2080)
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !5521, file: !198, line: 243, baseType: !2742, size: 64, offset: 3136)
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "lifetime", scope: !5521, file: !198, line: 244, baseType: !242, size: 32, offset: 3200)
!5530 = !DILocalVariable(name: "server_name", arg: 1, scope: !5500, file: !2, line: 2303, type: !244)
!5531 = !DILocation(line: 2303, column: 46, scope: !5500)
!5532 = !DILocalVariable(name: "etoken", arg: 2, scope: !5500, file: !2, line: 2303, type: !5503)
!5533 = !DILocation(line: 2303, column: 80, scope: !5500)
!5534 = !DILocalVariable(name: "key", arg: 3, scope: !5500, file: !2, line: 2303, type: !5512)
!5535 = !DILocation(line: 2303, column: 105, scope: !5500)
!5536 = !DILocalVariable(name: "dtoken", arg: 4, scope: !5500, file: !2, line: 2303, type: !5514)
!5537 = !DILocation(line: 2303, column: 129, scope: !5500)
!5538 = !DILocation(line: 2305, column: 2, scope: !5500)
!5539 = !DILocation(line: 2305, column: 2, scope: !5540)
!5540 = distinct !DILexicalBlock(scope: !5500, file: !2, line: 2305, column: 2)
!5541 = !DILocation(line: 2306, column: 2, scope: !5500)
!5542 = !DILocation(line: 2306, column: 2, scope: !5543)
!5543 = distinct !DILexicalBlock(scope: !5500, file: !2, line: 2306, column: 2)
!5544 = !DILocation(line: 2307, column: 2, scope: !5500)
!5545 = !DILocation(line: 2307, column: 2, scope: !5546)
!5546 = distinct !DILexicalBlock(scope: !5500, file: !2, line: 2307, column: 2)
!5547 = !DILocation(line: 2308, column: 2, scope: !5500)
!5548 = !DILocation(line: 2308, column: 2, scope: !5549)
!5549 = distinct !DILexicalBlock(scope: !5500, file: !2, line: 2308, column: 2)
!5550 = !DILocation(line: 2373, column: 2, scope: !5500)
!5551 = distinct !DISubprogram(name: "decode_oauth_token_normal", scope: !2, file: !2, line: 2377, type: !5552, scopeLine: 2378, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!5552 = !DISubroutineType(types: !5553)
!5553 = !{!199, !244, !5554, !5512, !5556}
!5554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5555, size: 64)
!5555 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5504)
!5556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5516, size: 64)
!5557 = !DILocalVariable(name: "server_name", arg: 1, scope: !5551, file: !2, line: 2377, type: !244)
!5558 = !DILocation(line: 2377, column: 46, scope: !5551)
!5559 = !DILocalVariable(name: "etoken", arg: 2, scope: !5551, file: !2, line: 2377, type: !5554)
!5560 = !DILocation(line: 2377, column: 86, scope: !5551)
!5561 = !DILocalVariable(name: "key", arg: 3, scope: !5551, file: !2, line: 2377, type: !5512)
!5562 = !DILocation(line: 2377, column: 111, scope: !5551)
!5563 = !DILocalVariable(name: "dtoken", arg: 4, scope: !5551, file: !2, line: 2377, type: !5556)
!5564 = !DILocation(line: 2377, column: 129, scope: !5551)
!5565 = !DILocation(line: 2379, column: 2, scope: !5551)
!5566 = !DILocation(line: 2379, column: 2, scope: !5567)
!5567 = distinct !DILexicalBlock(scope: !5551, file: !2, line: 2379, column: 2)
!5568 = !DILocation(line: 2380, column: 2, scope: !5551)
!5569 = !DILocation(line: 2380, column: 2, scope: !5570)
!5570 = distinct !DILexicalBlock(scope: !5551, file: !2, line: 2380, column: 2)
!5571 = !DILocation(line: 2381, column: 2, scope: !5551)
!5572 = !DILocation(line: 2381, column: 2, scope: !5573)
!5573 = distinct !DILexicalBlock(scope: !5551, file: !2, line: 2381, column: 2)
!5574 = !DILocation(line: 2382, column: 2, scope: !5551)
!5575 = !DILocation(line: 2382, column: 2, scope: !5576)
!5576 = distinct !DILexicalBlock(scope: !5551, file: !2, line: 2382, column: 2)
!5577 = !DILocation(line: 2459, column: 2, scope: !5551)
!5578 = distinct !DISubprogram(name: "encode_oauth_token", scope: !2, file: !2, line: 2694, type: !5579, scopeLine: 2695, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!5579 = !DISubroutineType(types: !5580)
!5580 = !{!199, !244, !5503, !5512, !5514, !244}
!5581 = !DILocalVariable(name: "server_name", arg: 1, scope: !5578, file: !2, line: 2694, type: !244)
!5582 = !DILocation(line: 2694, column: 39, scope: !5578)
!5583 = !DILocalVariable(name: "etoken", arg: 2, scope: !5578, file: !2, line: 2694, type: !5503)
!5584 = !DILocation(line: 2694, column: 73, scope: !5578)
!5585 = !DILocalVariable(name: "key", arg: 3, scope: !5578, file: !2, line: 2694, type: !5512)
!5586 = !DILocation(line: 2694, column: 98, scope: !5578)
!5587 = !DILocalVariable(name: "dtoken", arg: 4, scope: !5578, file: !2, line: 2694, type: !5514)
!5588 = !DILocation(line: 2694, column: 122, scope: !5578)
!5589 = !DILocalVariable(name: "nonce", arg: 5, scope: !5578, file: !2, line: 2694, type: !244)
!5590 = !DILocation(line: 2694, column: 145, scope: !5578)
!5591 = !DILocation(line: 2696, column: 2, scope: !5578)
!5592 = !DILocation(line: 2696, column: 2, scope: !5593)
!5593 = distinct !DILexicalBlock(scope: !5578, file: !2, line: 2696, column: 2)
!5594 = !DILocation(line: 2697, column: 5, scope: !5595)
!5595 = distinct !DILexicalBlock(scope: !5578, file: !2, line: 2697, column: 5)
!5596 = !DILocation(line: 2697, column: 17, scope: !5595)
!5597 = !DILocation(line: 2697, column: 20, scope: !5595)
!5598 = !DILocation(line: 2697, column: 27, scope: !5595)
!5599 = !DILocation(line: 2697, column: 30, scope: !5595)
!5600 = !DILocation(line: 2697, column: 34, scope: !5595)
!5601 = !DILocation(line: 2697, column: 37, scope: !5595)
!5602 = !DILocation(line: 2697, column: 5, scope: !5578)
!5603 = !DILocation(line: 2698, column: 10, scope: !5604)
!5604 = distinct !DILexicalBlock(scope: !5595, file: !2, line: 2697, column: 45)
!5605 = !DILocation(line: 2698, column: 15, scope: !5604)
!5606 = !DILocation(line: 2698, column: 3, scope: !5604)
!5607 = !DILocation(line: 2702, column: 34, scope: !5608)
!5608 = distinct !DILexicalBlock(scope: !5604, file: !2, line: 2698, column: 26)
!5609 = !DILocation(line: 2702, column: 47, scope: !5608)
!5610 = !DILocation(line: 2702, column: 54, scope: !5608)
!5611 = !DILocation(line: 2702, column: 58, scope: !5608)
!5612 = !DILocation(line: 2702, column: 65, scope: !5608)
!5613 = !DILocation(line: 2702, column: 11, scope: !5608)
!5614 = !DILocation(line: 2702, column: 4, scope: !5608)
!5615 = !DILocation(line: 2705, column: 12, scope: !5608)
!5616 = !DILocation(line: 2705, column: 60, scope: !5608)
!5617 = !DILocation(line: 2705, column: 65, scope: !5608)
!5618 = !DILocation(line: 2705, column: 4, scope: !5608)
!5619 = !DILocation(line: 2706, column: 4, scope: !5608)
!5620 = !DILocation(line: 2708, column: 2, scope: !5604)
!5621 = !DILocation(line: 2709, column: 2, scope: !5578)
!5622 = !DILocation(line: 2710, column: 1, scope: !5578)
!5623 = distinct !DISubprogram(name: "encode_oauth_token_gcm", scope: !2, file: !2, line: 2473, type: !5579, scopeLine: 2473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !194, retainedNodes: !305)
!5624 = !DILocalVariable(name: "server_name", arg: 1, scope: !5623, file: !2, line: 2473, type: !244)
!5625 = !DILocation(line: 2473, column: 50, scope: !5623)
!5626 = !DILocalVariable(name: "etoken", arg: 2, scope: !5623, file: !2, line: 2473, type: !5503)
!5627 = !DILocation(line: 2473, column: 84, scope: !5623)
!5628 = !DILocalVariable(name: "key", arg: 3, scope: !5623, file: !2, line: 2473, type: !5512)
!5629 = !DILocation(line: 2473, column: 109, scope: !5623)
!5630 = !DILocalVariable(name: "dtoken", arg: 4, scope: !5623, file: !2, line: 2473, type: !5514)
!5631 = !DILocation(line: 2473, column: 133, scope: !5623)
!5632 = !DILocalVariable(name: "nonce0", arg: 5, scope: !5623, file: !2, line: 2473, type: !244)
!5633 = !DILocation(line: 2473, column: 156, scope: !5623)
!5634 = !DILocation(line: 2474, column: 5, scope: !5635)
!5635 = distinct !DILexicalBlock(scope: !5623, file: !2, line: 2474, column: 5)
!5636 = !DILocation(line: 2474, column: 17, scope: !5635)
!5637 = !DILocation(line: 2474, column: 20, scope: !5635)
!5638 = !DILocation(line: 2474, column: 27, scope: !5635)
!5639 = !DILocation(line: 2474, column: 30, scope: !5635)
!5640 = !DILocation(line: 2474, column: 34, scope: !5635)
!5641 = !DILocation(line: 2474, column: 37, scope: !5635)
!5642 = !DILocation(line: 2474, column: 44, scope: !5635)
!5643 = !DILocation(line: 2474, column: 48, scope: !5635)
!5644 = !DILocation(line: 2474, column: 56, scope: !5635)
!5645 = !DILocation(line: 2474, column: 66, scope: !5635)
!5646 = !DILocation(line: 2474, column: 76, scope: !5635)
!5647 = !DILocation(line: 2474, column: 5, scope: !5623)
!5648 = !DILocalVariable(name: "orig_field", scope: !5649, file: !2, line: 2476, type: !5650)
!5649 = distinct !DILexicalBlock(scope: !5635, file: !2, line: 2474, column: 91)
!5650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 8192, elements: !5509)
!5651 = !DILocation(line: 2476, column: 17, scope: !5649)
!5652 = !DILocation(line: 2477, column: 3, scope: !5649)
!5653 = !DILocalVariable(name: "nonce", scope: !5649, file: !2, line: 2479, type: !5654)
!5654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 96, elements: !55)
!5655 = !DILocation(line: 2479, column: 17, scope: !5649)
!5656 = !DILocation(line: 2480, column: 6, scope: !5657)
!5657 = distinct !DILexicalBlock(scope: !5649, file: !2, line: 2480, column: 6)
!5658 = !DILocation(line: 2480, column: 6, scope: !5649)
!5659 = !DILocation(line: 2481, column: 10, scope: !5660)
!5660 = distinct !DILexicalBlock(scope: !5657, file: !2, line: 2480, column: 14)
!5661 = !DILocation(line: 2481, column: 17, scope: !5660)
!5662 = !DILocation(line: 2481, column: 4, scope: !5660)
!5663 = !DILocation(line: 2482, column: 3, scope: !5660)
!5664 = !DILocation(line: 2483, column: 26, scope: !5665)
!5665 = distinct !DILexicalBlock(scope: !5657, file: !2, line: 2482, column: 10)
!5666 = !DILocation(line: 2483, column: 4, scope: !5665)
!5667 = !DILocalVariable(name: "len", scope: !5649, file: !2, line: 2486, type: !232)
!5668 = !DILocation(line: 2486, column: 10, scope: !5649)
!5669 = !DILocation(line: 2488, column: 36, scope: !5649)
!5670 = !DILocation(line: 2488, column: 17, scope: !5649)
!5671 = !DILocation(line: 2488, column: 28, scope: !5649)
!5672 = !DILocation(line: 2488, column: 27, scope: !5649)
!5673 = !DILocation(line: 2488, column: 34, scope: !5649)
!5674 = !DILocation(line: 2489, column: 7, scope: !5649)
!5675 = !DILocation(line: 2491, column: 9, scope: !5649)
!5676 = !DILocation(line: 2491, column: 15, scope: !5649)
!5677 = !DILocation(line: 2491, column: 26, scope: !5649)
!5678 = !DILocation(line: 2491, column: 25, scope: !5649)
!5679 = !DILocation(line: 2491, column: 3, scope: !5649)
!5680 = !DILocation(line: 2492, column: 7, scope: !5649)
!5681 = !DILocation(line: 2494, column: 36, scope: !5649)
!5682 = !DILocation(line: 2494, column: 17, scope: !5649)
!5683 = !DILocation(line: 2494, column: 28, scope: !5649)
!5684 = !DILocation(line: 2494, column: 27, scope: !5649)
!5685 = !DILocation(line: 2494, column: 34, scope: !5649)
!5686 = !DILocation(line: 2495, column: 7, scope: !5649)
!5687 = !DILocation(line: 2497, column: 9, scope: !5649)
!5688 = !DILocation(line: 2497, column: 17, scope: !5649)
!5689 = !DILocation(line: 2497, column: 27, scope: !5649)
!5690 = !DILocation(line: 2497, column: 35, scope: !5649)
!5691 = !DILocation(line: 2497, column: 46, scope: !5649)
!5692 = !DILocation(line: 2497, column: 45, scope: !5649)
!5693 = !DILocation(line: 2497, column: 50, scope: !5649)
!5694 = !DILocation(line: 2497, column: 58, scope: !5649)
!5695 = !DILocation(line: 2497, column: 68, scope: !5649)
!5696 = !DILocation(line: 2497, column: 3, scope: !5649)
!5697 = !DILocation(line: 2498, column: 10, scope: !5649)
!5698 = !DILocation(line: 2498, column: 18, scope: !5649)
!5699 = !DILocation(line: 2498, column: 28, scope: !5649)
!5700 = !DILocation(line: 2498, column: 7, scope: !5649)
!5701 = !DILocalVariable(name: "ts", scope: !5649, file: !2, line: 2500, type: !2742)
!5702 = !DILocation(line: 2500, column: 12, scope: !5649)
!5703 = !DILocation(line: 2500, column: 17, scope: !5649)
!5704 = !DILocation(line: 2501, column: 16, scope: !5649)
!5705 = !DILocation(line: 2501, column: 27, scope: !5649)
!5706 = !DILocation(line: 2501, column: 26, scope: !5649)
!5707 = !DILocation(line: 2501, column: 3, scope: !5649)
!5708 = !DILocation(line: 2502, column: 7, scope: !5649)
!5709 = !DILocation(line: 2504, column: 36, scope: !5649)
!5710 = !DILocation(line: 2504, column: 17, scope: !5649)
!5711 = !DILocation(line: 2504, column: 28, scope: !5649)
!5712 = !DILocation(line: 2504, column: 27, scope: !5649)
!5713 = !DILocation(line: 2504, column: 34, scope: !5649)
!5714 = !DILocation(line: 2505, column: 7, scope: !5649)
!5715 = !DILocalVariable(name: "cipher", scope: !5649, file: !2, line: 2507, type: !5320)
!5716 = !DILocation(line: 2507, column: 22, scope: !5649)
!5717 = !DILocation(line: 2507, column: 47, scope: !5649)
!5718 = !DILocation(line: 2507, column: 52, scope: !5649)
!5719 = !DILocation(line: 2507, column: 31, scope: !5649)
!5720 = !DILocation(line: 2508, column: 7, scope: !5721)
!5721 = distinct !DILexicalBlock(scope: !5649, file: !2, line: 2508, column: 6)
!5722 = !DILocation(line: 2508, column: 6, scope: !5649)
!5723 = !DILocation(line: 2509, column: 4, scope: !5721)
!5724 = !DILocalVariable(name: "ctxp", scope: !5649, file: !2, line: 2515, type: !5340)
!5725 = !DILocation(line: 2515, column: 19, scope: !5649)
!5726 = !DILocation(line: 2515, column: 26, scope: !5649)
!5727 = !DILocation(line: 2517, column: 3, scope: !5649)
!5728 = !DILocation(line: 2520, column: 30, scope: !5729)
!5729 = distinct !DILexicalBlock(scope: !5649, file: !2, line: 2520, column: 6)
!5730 = !DILocation(line: 2520, column: 36, scope: !5729)
!5731 = !DILocation(line: 2520, column: 11, scope: !5729)
!5732 = !DILocation(line: 2520, column: 8, scope: !5729)
!5733 = !DILocation(line: 2520, column: 6, scope: !5649)
!5734 = !DILocation(line: 2521, column: 4, scope: !5729)
!5735 = !DILocation(line: 2523, column: 30, scope: !5649)
!5736 = !DILocation(line: 2523, column: 3, scope: !5649)
!5737 = !DILocation(line: 2526, column: 31, scope: !5738)
!5738 = distinct !DILexicalBlock(scope: !5649, file: !2, line: 2526, column: 6)
!5739 = !DILocation(line: 2526, column: 11, scope: !5738)
!5740 = !DILocation(line: 2526, column: 8, scope: !5738)
!5741 = !DILocation(line: 2526, column: 6, scope: !5649)
!5742 = !DILocation(line: 2527, column: 4, scope: !5738)
!5743 = !DILocation(line: 2530, column: 30, scope: !5744)
!5744 = distinct !DILexicalBlock(scope: !5649, file: !2, line: 2530, column: 6)
!5745 = !DILocation(line: 2530, column: 71, scope: !5744)
!5746 = !DILocation(line: 2530, column: 76, scope: !5744)
!5747 = !DILocation(line: 2530, column: 87, scope: !5744)
!5748 = !DILocation(line: 2530, column: 11, scope: !5744)
!5749 = !DILocation(line: 2530, column: 8, scope: !5744)
!5750 = !DILocation(line: 2530, column: 6, scope: !5649)
!5751 = !DILocation(line: 2531, column: 4, scope: !5744)
!5752 = !DILocalVariable(name: "outl", scope: !5649, file: !2, line: 2533, type: !199)
!5753 = !DILocation(line: 2533, column: 7, scope: !5649)
!5754 = !DILocalVariable(name: "sn_len", scope: !5649, file: !2, line: 2534, type: !232)
!5755 = !DILocation(line: 2534, column: 10, scope: !5649)
!5756 = !DILocation(line: 2534, column: 39, scope: !5649)
!5757 = !DILocation(line: 2534, column: 19, scope: !5649)
!5758 = !DILocation(line: 2539, column: 32, scope: !5759)
!5759 = distinct !DILexicalBlock(scope: !5649, file: !2, line: 2539, column: 6)
!5760 = !DILocation(line: 2539, column: 51, scope: !5759)
!5761 = !DILocation(line: 2539, column: 69, scope: !5759)
!5762 = !DILocation(line: 2539, column: 64, scope: !5759)
!5763 = !DILocation(line: 2539, column: 11, scope: !5759)
!5764 = !DILocation(line: 2539, column: 8, scope: !5759)
!5765 = !DILocation(line: 2539, column: 6, scope: !5649)
!5766 = !DILocation(line: 2540, column: 4, scope: !5759)
!5767 = !DILocation(line: 2542, column: 7, scope: !5649)
!5768 = !DILocalVariable(name: "encoded_field", scope: !5649, file: !2, line: 2543, type: !223)
!5769 = !DILocation(line: 2543, column: 18, scope: !5649)
!5770 = !DILocation(line: 2543, column: 50, scope: !5649)
!5771 = !DILocation(line: 2543, column: 58, scope: !5649)
!5772 = !DILocation(line: 2544, column: 9, scope: !5649)
!5773 = !DILocation(line: 2544, column: 20, scope: !5649)
!5774 = !DILocation(line: 2544, column: 3, scope: !5649)
!5775 = !DILocation(line: 2545, column: 17, scope: !5649)
!5776 = !DILocalVariable(name: "start_field", scope: !5649, file: !2, line: 2546, type: !223)
!5777 = !DILocation(line: 2546, column: 18, scope: !5649)
!5778 = !DILocation(line: 2546, column: 32, scope: !5649)
!5779 = !DILocation(line: 2546, column: 43, scope: !5649)
!5780 = !DILocation(line: 2546, column: 66, scope: !5649)
!5781 = !DILocation(line: 2547, column: 7, scope: !5649)
!5782 = !DILocation(line: 2549, column: 32, scope: !5783)
!5783 = distinct !DILexicalBlock(scope: !5649, file: !2, line: 2549, column: 6)
!5784 = !DILocation(line: 2549, column: 38, scope: !5783)
!5785 = !DILocation(line: 2549, column: 60, scope: !5783)
!5786 = !DILocation(line: 2549, column: 78, scope: !5783)
!5787 = !DILocation(line: 2549, column: 73, scope: !5783)
!5788 = !DILocation(line: 2549, column: 11, scope: !5783)
!5789 = !DILocation(line: 2549, column: 8, scope: !5783)
!5790 = !DILocation(line: 2549, column: 6, scope: !5649)
!5791 = !DILocation(line: 2550, column: 4, scope: !5783)
!5792 = !DILocalVariable(name: "tmp_outl", scope: !5649, file: !2, line: 2552, type: !199)
!5793 = !DILocation(line: 2552, column: 7, scope: !5649)
!5794 = !DILocation(line: 2553, column: 23, scope: !5649)
!5795 = !DILocation(line: 2553, column: 29, scope: !5649)
!5796 = !DILocation(line: 2553, column: 45, scope: !5649)
!5797 = !DILocation(line: 2553, column: 43, scope: !5649)
!5798 = !DILocation(line: 2553, column: 3, scope: !5649)
!5799 = !DILocation(line: 2554, column: 11, scope: !5649)
!5800 = !DILocation(line: 2554, column: 8, scope: !5649)
!5801 = !DILocation(line: 2556, column: 23, scope: !5649)
!5802 = !DILocation(line: 2556, column: 71, scope: !5649)
!5803 = !DILocation(line: 2556, column: 87, scope: !5649)
!5804 = !DILocation(line: 2556, column: 85, scope: !5649)
!5805 = !DILocation(line: 2556, column: 3, scope: !5649)
!5806 = !DILocation(line: 2557, column: 8, scope: !5649)
!5807 = !DILocation(line: 2559, column: 45, scope: !5649)
!5808 = !DILocation(line: 2559, column: 43, scope: !5649)
!5809 = !DILocation(line: 2559, column: 18, scope: !5649)
!5810 = !DILocation(line: 2559, column: 3, scope: !5649)
!5811 = !DILocation(line: 2559, column: 11, scope: !5649)
!5812 = !DILocation(line: 2559, column: 16, scope: !5649)
!5813 = !DILocation(line: 2564, column: 23, scope: !5649)
!5814 = !DILocation(line: 2564, column: 3, scope: !5649)
!5815 = !DILocation(line: 2567, column: 3, scope: !5649)
!5816 = !DILocation(line: 2569, column: 2, scope: !5623)
!5817 = !DILocation(line: 2570, column: 1, scope: !5623)
!5818 = distinct !DISubprogram(name: "decode_oauth_token", scope: !2, file: !2, line: 2712, type: !5552, scopeLine: 2713, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !194, retainedNodes: !305)
!5819 = !DILocalVariable(name: "server_name", arg: 1, scope: !5818, file: !2, line: 2712, type: !244)
!5820 = !DILocation(line: 2712, column: 39, scope: !5818)
!5821 = !DILocalVariable(name: "etoken", arg: 2, scope: !5818, file: !2, line: 2712, type: !5554)
!5822 = !DILocation(line: 2712, column: 79, scope: !5818)
!5823 = !DILocalVariable(name: "key", arg: 3, scope: !5818, file: !2, line: 2712, type: !5512)
!5824 = !DILocation(line: 2712, column: 104, scope: !5818)
!5825 = !DILocalVariable(name: "dtoken", arg: 4, scope: !5818, file: !2, line: 2712, type: !5556)
!5826 = !DILocation(line: 2712, column: 122, scope: !5818)
!5827 = !DILocation(line: 2714, column: 5, scope: !5828)
!5828 = distinct !DILexicalBlock(scope: !5818, file: !2, line: 2714, column: 5)
!5829 = !DILocation(line: 2714, column: 17, scope: !5828)
!5830 = !DILocation(line: 2714, column: 20, scope: !5828)
!5831 = !DILocation(line: 2714, column: 27, scope: !5828)
!5832 = !DILocation(line: 2714, column: 30, scope: !5828)
!5833 = !DILocation(line: 2714, column: 34, scope: !5828)
!5834 = !DILocation(line: 2714, column: 37, scope: !5828)
!5835 = !DILocation(line: 2714, column: 5, scope: !5818)
!5836 = !DILocation(line: 2715, column: 10, scope: !5837)
!5837 = distinct !DILexicalBlock(scope: !5828, file: !2, line: 2714, column: 45)
!5838 = !DILocation(line: 2715, column: 15, scope: !5837)
!5839 = !DILocation(line: 2715, column: 3, scope: !5837)
!5840 = !DILocation(line: 2719, column: 34, scope: !5841)
!5841 = distinct !DILexicalBlock(scope: !5837, file: !2, line: 2715, column: 26)
!5842 = !DILocation(line: 2719, column: 47, scope: !5841)
!5843 = !DILocation(line: 2719, column: 54, scope: !5841)
!5844 = !DILocation(line: 2719, column: 58, scope: !5841)
!5845 = !DILocation(line: 2719, column: 11, scope: !5841)
!5846 = !DILocation(line: 2719, column: 4, scope: !5841)
!5847 = !DILocation(line: 2722, column: 12, scope: !5841)
!5848 = !DILocation(line: 2722, column: 60, scope: !5841)
!5849 = !DILocation(line: 2722, column: 65, scope: !5841)
!5850 = !DILocation(line: 2722, column: 4, scope: !5841)
!5851 = !DILocation(line: 2723, column: 4, scope: !5841)
!5852 = !DILocation(line: 2725, column: 2, scope: !5837)
!5853 = !DILocation(line: 2726, column: 2, scope: !5818)
!5854 = !DILocation(line: 2727, column: 1, scope: !5818)
!5855 = distinct !DISubprogram(name: "decode_oauth_token_gcm", scope: !2, file: !2, line: 2572, type: !5552, scopeLine: 2573, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !194, retainedNodes: !305)
!5856 = !DILocalVariable(name: "server_name", arg: 1, scope: !5855, file: !2, line: 2572, type: !244)
!5857 = !DILocation(line: 2572, column: 50, scope: !5855)
!5858 = !DILocalVariable(name: "etoken", arg: 2, scope: !5855, file: !2, line: 2572, type: !5554)
!5859 = !DILocation(line: 2572, column: 90, scope: !5855)
!5860 = !DILocalVariable(name: "key", arg: 3, scope: !5855, file: !2, line: 2572, type: !5512)
!5861 = !DILocation(line: 2572, column: 115, scope: !5855)
!5862 = !DILocalVariable(name: "dtoken", arg: 4, scope: !5855, file: !2, line: 2572, type: !5556)
!5863 = !DILocation(line: 2572, column: 133, scope: !5855)
!5864 = !DILocation(line: 2574, column: 5, scope: !5865)
!5865 = distinct !DILexicalBlock(scope: !5855, file: !2, line: 2574, column: 5)
!5866 = !DILocation(line: 2574, column: 17, scope: !5865)
!5867 = !DILocation(line: 2574, column: 20, scope: !5865)
!5868 = !DILocation(line: 2574, column: 27, scope: !5865)
!5869 = !DILocation(line: 2574, column: 30, scope: !5865)
!5870 = !DILocation(line: 2574, column: 34, scope: !5865)
!5871 = !DILocation(line: 2574, column: 37, scope: !5865)
!5872 = !DILocation(line: 2574, column: 5, scope: !5855)
!5873 = !DILocalVariable(name: "snl", scope: !5874, file: !2, line: 2576, type: !5875)
!5874 = distinct !DILexicalBlock(scope: !5865, file: !2, line: 2574, column: 45)
!5875 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 16, elements: !3040)
!5876 = !DILocation(line: 2576, column: 17, scope: !5874)
!5877 = !DILocation(line: 2577, column: 32, scope: !5874)
!5878 = !DILocation(line: 2577, column: 40, scope: !5874)
!5879 = !DILocation(line: 2577, column: 31, scope: !5874)
!5880 = !DILocation(line: 2577, column: 47, scope: !5874)
!5881 = !DILocation(line: 2577, column: 3, scope: !5874)
!5882 = !DILocalVariable(name: "csnl", scope: !5874, file: !2, line: 2578, type: !255)
!5883 = !DILocation(line: 2578, column: 24, scope: !5874)
!5884 = !DILocation(line: 2578, column: 31, scope: !5874)
!5885 = !DILocalVariable(name: "nonce_len", scope: !5874, file: !2, line: 2580, type: !237)
!5886 = !DILocation(line: 2580, column: 12, scope: !5874)
!5887 = !DILocation(line: 2580, column: 24, scope: !5874)
!5888 = !DILocation(line: 2581, column: 50, scope: !5874)
!5889 = !DILocation(line: 2581, column: 17, scope: !5874)
!5890 = !DILocation(line: 2581, column: 25, scope: !5874)
!5891 = !DILocation(line: 2581, column: 35, scope: !5874)
!5892 = !DILocation(line: 2581, column: 48, scope: !5874)
!5893 = !DILocalVariable(name: "min_encoded_field_size", scope: !5874, file: !2, line: 2583, type: !232)
!5894 = !DILocation(line: 2583, column: 10, scope: !5874)
!5895 = !DILocation(line: 2583, column: 41, scope: !5874)
!5896 = !DILocation(line: 2583, column: 40, scope: !5874)
!5897 = !DILocation(line: 2583, column: 50, scope: !5874)
!5898 = !DILocation(line: 2583, column: 52, scope: !5874)
!5899 = !DILocation(line: 2583, column: 71, scope: !5874)
!5900 = !DILocation(line: 2583, column: 35, scope: !5874)
!5901 = !DILocation(line: 2584, column: 6, scope: !5902)
!5902 = distinct !DILexicalBlock(scope: !5874, file: !2, line: 2584, column: 6)
!5903 = !DILocation(line: 2584, column: 14, scope: !5902)
!5904 = !DILocation(line: 2584, column: 21, scope: !5902)
!5905 = !DILocation(line: 2584, column: 19, scope: !5902)
!5906 = !DILocation(line: 2584, column: 6, scope: !5874)
!5907 = !DILocation(line: 2585, column: 4, scope: !5908)
!5908 = distinct !DILexicalBlock(scope: !5902, file: !2, line: 2584, column: 45)
!5909 = !DILocation(line: 2586, column: 4, scope: !5908)
!5910 = !DILocalVariable(name: "encoded_field", scope: !5874, file: !2, line: 2589, type: !255)
!5911 = !DILocation(line: 2589, column: 24, scope: !5874)
!5912 = !DILocation(line: 2589, column: 63, scope: !5874)
!5913 = !DILocation(line: 2589, column: 71, scope: !5874)
!5914 = !DILocation(line: 2589, column: 79, scope: !5874)
!5915 = !DILocation(line: 2589, column: 77, scope: !5874)
!5916 = !DILocation(line: 2589, column: 89, scope: !5874)
!5917 = !DILocalVariable(name: "encoded_field_size", scope: !5874, file: !2, line: 2590, type: !209)
!5918 = !DILocation(line: 2590, column: 16, scope: !5874)
!5919 = !DILocation(line: 2590, column: 51, scope: !5874)
!5920 = !DILocation(line: 2590, column: 59, scope: !5874)
!5921 = !DILocation(line: 2590, column: 37, scope: !5874)
!5922 = !DILocation(line: 2590, column: 66, scope: !5874)
!5923 = !DILocation(line: 2590, column: 64, scope: !5874)
!5924 = !DILocation(line: 2590, column: 76, scope: !5874)
!5925 = !DILocation(line: 2590, column: 80, scope: !5874)
!5926 = !DILocalVariable(name: "nonce", scope: !5874, file: !2, line: 2591, type: !255)
!5927 = !DILocation(line: 2591, column: 24, scope: !5874)
!5928 = !DILocation(line: 2591, column: 55, scope: !5874)
!5929 = !DILocation(line: 2591, column: 63, scope: !5874)
!5930 = !DILocation(line: 2591, column: 69, scope: !5874)
!5931 = !DILocation(line: 2592, column: 23, scope: !5874)
!5932 = !DILocation(line: 2592, column: 29, scope: !5874)
!5933 = !DILocation(line: 2592, column: 37, scope: !5874)
!5934 = !DILocation(line: 2592, column: 47, scope: !5874)
!5935 = !DILocation(line: 2592, column: 53, scope: !5874)
!5936 = !DILocation(line: 2592, column: 17, scope: !5874)
!5937 = !DILocalVariable(name: "tag", scope: !5874, file: !2, line: 2594, type: !5938)
!5938 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 128, elements: !38)
!5939 = !DILocation(line: 2594, column: 17, scope: !5874)
!5940 = !DILocation(line: 2595, column: 32, scope: !5874)
!5941 = !DILocation(line: 2595, column: 40, scope: !5874)
!5942 = !DILocation(line: 2595, column: 49, scope: !5874)
!5943 = !DILocation(line: 2595, column: 47, scope: !5874)
!5944 = !DILocation(line: 2595, column: 59, scope: !5874)
!5945 = !DILocation(line: 2595, column: 65, scope: !5874)
!5946 = !DILocation(line: 2595, column: 63, scope: !5874)
!5947 = !DILocation(line: 2595, column: 85, scope: !5874)
!5948 = !DILocation(line: 2595, column: 3, scope: !5874)
!5949 = !DILocalVariable(name: "decoded_field", scope: !5874, file: !2, line: 2597, type: !5650)
!5950 = !DILocation(line: 2597, column: 17, scope: !5874)
!5951 = !DILocalVariable(name: "cipher", scope: !5874, file: !2, line: 2599, type: !5320)
!5952 = !DILocation(line: 2599, column: 22, scope: !5874)
!5953 = !DILocation(line: 2599, column: 47, scope: !5874)
!5954 = !DILocation(line: 2599, column: 52, scope: !5874)
!5955 = !DILocation(line: 2599, column: 31, scope: !5874)
!5956 = !DILocation(line: 2600, column: 7, scope: !5957)
!5957 = distinct !DILexicalBlock(scope: !5874, file: !2, line: 2600, column: 6)
!5958 = !DILocation(line: 2600, column: 6, scope: !5874)
!5959 = !DILocation(line: 2601, column: 4, scope: !5960)
!5960 = distinct !DILexicalBlock(scope: !5957, file: !2, line: 2600, column: 15)
!5961 = !DILocation(line: 2602, column: 4, scope: !5960)
!5962 = !DILocalVariable(name: "ctxp", scope: !5874, file: !2, line: 2609, type: !5340)
!5963 = !DILocation(line: 2609, column: 19, scope: !5874)
!5964 = !DILocation(line: 2609, column: 26, scope: !5874)
!5965 = !DILocation(line: 2611, column: 3, scope: !5874)
!5966 = !DILocation(line: 2613, column: 30, scope: !5967)
!5967 = distinct !DILexicalBlock(scope: !5874, file: !2, line: 2613, column: 6)
!5968 = !DILocation(line: 2613, column: 36, scope: !5967)
!5969 = !DILocation(line: 2613, column: 11, scope: !5967)
!5970 = !DILocation(line: 2613, column: 8, scope: !5967)
!5971 = !DILocation(line: 2613, column: 6, scope: !5874)
!5972 = !DILocation(line: 2614, column: 4, scope: !5973)
!5973 = distinct !DILexicalBlock(scope: !5967, file: !2, line: 2613, column: 63)
!5974 = !DILocation(line: 2615, column: 4, scope: !5973)
!5975 = !DILocation(line: 2621, column: 31, scope: !5976)
!5976 = distinct !DILexicalBlock(scope: !5874, file: !2, line: 2621, column: 6)
!5977 = !DILocation(line: 2621, column: 61, scope: !5976)
!5978 = !DILocation(line: 2621, column: 11, scope: !5976)
!5979 = !DILocation(line: 2621, column: 8, scope: !5976)
!5980 = !DILocation(line: 2621, column: 6, scope: !5874)
!5981 = !DILocation(line: 2622, column: 4, scope: !5982)
!5982 = distinct !DILexicalBlock(scope: !5976, file: !2, line: 2621, column: 79)
!5983 = !DILocation(line: 2623, column: 4, scope: !5982)
!5984 = !DILocation(line: 2627, column: 30, scope: !5985)
!5985 = distinct !DILexicalBlock(scope: !5874, file: !2, line: 2627, column: 6)
!5986 = !DILocation(line: 2627, column: 71, scope: !5985)
!5987 = !DILocation(line: 2627, column: 76, scope: !5985)
!5988 = !DILocation(line: 2627, column: 87, scope: !5985)
!5989 = !DILocation(line: 2627, column: 11, scope: !5985)
!5990 = !DILocation(line: 2627, column: 8, scope: !5985)
!5991 = !DILocation(line: 2627, column: 6, scope: !5874)
!5992 = !DILocation(line: 2628, column: 4, scope: !5993)
!5993 = distinct !DILexicalBlock(scope: !5985, file: !2, line: 2627, column: 95)
!5994 = !DILocation(line: 2629, column: 4, scope: !5993)
!5995 = !DILocation(line: 2634, column: 24, scope: !5874)
!5996 = !DILocation(line: 2634, column: 72, scope: !5874)
!5997 = !DILocation(line: 2634, column: 3, scope: !5874)
!5998 = !DILocalVariable(name: "outl", scope: !5874, file: !2, line: 2636, type: !199)
!5999 = !DILocation(line: 2636, column: 7, scope: !5874)
!6000 = !DILocalVariable(name: "sn_len", scope: !5874, file: !2, line: 2637, type: !232)
!6001 = !DILocation(line: 2637, column: 10, scope: !5874)
!6002 = !DILocation(line: 2637, column: 39, scope: !5874)
!6003 = !DILocation(line: 2637, column: 19, scope: !5874)
!6004 = !DILocation(line: 2642, column: 32, scope: !6005)
!6005 = distinct !DILexicalBlock(scope: !5874, file: !2, line: 2642, column: 6)
!6006 = !DILocation(line: 2642, column: 51, scope: !6005)
!6007 = !DILocation(line: 2642, column: 69, scope: !6005)
!6008 = !DILocation(line: 2642, column: 64, scope: !6005)
!6009 = !DILocation(line: 2642, column: 11, scope: !6005)
!6010 = !DILocation(line: 2642, column: 8, scope: !6005)
!6011 = !DILocation(line: 2642, column: 6, scope: !5874)
!6012 = !DILocation(line: 2643, column: 4, scope: !6013)
!6013 = distinct !DILexicalBlock(scope: !6005, file: !2, line: 2642, column: 78)
!6014 = !DILocation(line: 2644, column: 4, scope: !6013)
!6015 = !DILocation(line: 2646, column: 32, scope: !6016)
!6016 = distinct !DILexicalBlock(scope: !5874, file: !2, line: 2646, column: 6)
!6017 = !DILocation(line: 2646, column: 38, scope: !6016)
!6018 = !DILocation(line: 2646, column: 60, scope: !6016)
!6019 = !DILocation(line: 2646, column: 80, scope: !6016)
!6020 = !DILocation(line: 2646, column: 11, scope: !6016)
!6021 = !DILocation(line: 2646, column: 8, scope: !6016)
!6022 = !DILocation(line: 2646, column: 6, scope: !5874)
!6023 = !DILocation(line: 2647, column: 4, scope: !6024)
!6024 = distinct !DILexicalBlock(scope: !6016, file: !2, line: 2646, column: 101)
!6025 = !DILocation(line: 2648, column: 4, scope: !6024)
!6026 = !DILocalVariable(name: "tmp_outl", scope: !5874, file: !2, line: 2651, type: !199)
!6027 = !DILocation(line: 2651, column: 7, scope: !5874)
!6028 = !DILocation(line: 2652, column: 26, scope: !6029)
!6029 = distinct !DILexicalBlock(scope: !5874, file: !2, line: 2652, column: 6)
!6030 = !DILocation(line: 2652, column: 32, scope: !6029)
!6031 = !DILocation(line: 2652, column: 48, scope: !6029)
!6032 = !DILocation(line: 2652, column: 46, scope: !6029)
!6033 = !DILocation(line: 2652, column: 6, scope: !6029)
!6034 = !DILocation(line: 2652, column: 64, scope: !6029)
!6035 = !DILocation(line: 2652, column: 6, scope: !5874)
!6036 = !DILocation(line: 2656, column: 24, scope: !6037)
!6037 = distinct !DILexicalBlock(scope: !6029, file: !2, line: 2652, column: 68)
!6038 = !DILocation(line: 2656, column: 4, scope: !6037)
!6039 = !DILocation(line: 2658, column: 4, scope: !6037)
!6040 = !DILocation(line: 2659, column: 4, scope: !6037)
!6041 = !DILocation(line: 2661, column: 11, scope: !5874)
!6042 = !DILocation(line: 2661, column: 8, scope: !5874)
!6043 = !DILocation(line: 2666, column: 24, scope: !5874)
!6044 = !DILocation(line: 2666, column: 4, scope: !5874)
!6045 = !DILocalVariable(name: "len", scope: !5874, file: !2, line: 2669, type: !232)
!6046 = !DILocation(line: 2669, column: 10, scope: !5874)
!6047 = !DILocation(line: 2671, column: 34, scope: !5874)
!6048 = !DILocation(line: 2671, column: 3, scope: !5874)
!6049 = !DILocation(line: 2671, column: 11, scope: !5874)
!6050 = !DILocation(line: 2671, column: 21, scope: !5874)
!6051 = !DILocation(line: 2671, column: 32, scope: !5874)
!6052 = !DILocation(line: 2672, column: 7, scope: !5874)
!6053 = !DILocation(line: 2674, column: 9, scope: !5874)
!6054 = !DILocation(line: 2674, column: 23, scope: !5874)
!6055 = !DILocation(line: 2674, column: 22, scope: !5874)
!6056 = !DILocation(line: 2674, column: 27, scope: !5874)
!6057 = !DILocation(line: 2674, column: 35, scope: !5874)
!6058 = !DILocation(line: 2674, column: 45, scope: !5874)
!6059 = !DILocation(line: 2674, column: 53, scope: !5874)
!6060 = !DILocation(line: 2674, column: 61, scope: !5874)
!6061 = !DILocation(line: 2674, column: 71, scope: !5874)
!6062 = !DILocation(line: 2674, column: 3, scope: !5874)
!6063 = !DILocation(line: 2675, column: 10, scope: !5874)
!6064 = !DILocation(line: 2675, column: 18, scope: !5874)
!6065 = !DILocation(line: 2675, column: 28, scope: !5874)
!6066 = !DILocation(line: 2675, column: 7, scope: !5874)
!6067 = !DILocalVariable(name: "ts", scope: !5874, file: !2, line: 2677, type: !2742)
!6068 = !DILocation(line: 2677, column: 12, scope: !5874)
!6069 = !DILocation(line: 2678, column: 10, scope: !5874)
!6070 = !DILocation(line: 2678, column: 24, scope: !5874)
!6071 = !DILocation(line: 2678, column: 23, scope: !5874)
!6072 = !DILocation(line: 2678, column: 3, scope: !5874)
!6073 = !DILocation(line: 2679, column: 33, scope: !5874)
!6074 = !DILocation(line: 2679, column: 3, scope: !5874)
!6075 = !DILocation(line: 2679, column: 11, scope: !5874)
!6076 = !DILocation(line: 2679, column: 21, scope: !5874)
!6077 = !DILocation(line: 2679, column: 31, scope: !5874)
!6078 = !DILocation(line: 2680, column: 7, scope: !5874)
!6079 = !DILocalVariable(name: "lt", scope: !5874, file: !2, line: 2682, type: !242)
!6080 = !DILocation(line: 2682, column: 12, scope: !5874)
!6081 = !DILocation(line: 2683, column: 10, scope: !5874)
!6082 = !DILocation(line: 2683, column: 24, scope: !5874)
!6083 = !DILocation(line: 2683, column: 23, scope: !5874)
!6084 = !DILocation(line: 2683, column: 3, scope: !5874)
!6085 = !DILocation(line: 2684, column: 32, scope: !5874)
!6086 = !DILocation(line: 2684, column: 3, scope: !5874)
!6087 = !DILocation(line: 2684, column: 11, scope: !5874)
!6088 = !DILocation(line: 2684, column: 21, scope: !5874)
!6089 = !DILocation(line: 2684, column: 30, scope: !5874)
!6090 = !DILocation(line: 2685, column: 7, scope: !5874)
!6091 = !DILocation(line: 2687, column: 3, scope: !5874)
!6092 = !DILocation(line: 2689, column: 2, scope: !5855)
!6093 = !DILocation(line: 2690, column: 1, scope: !5855)
!6094 = distinct !DISubprogram(name: "generate_random_nonce", scope: !2, file: !2, line: 2462, type: !6095, scopeLine: 2462, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !194, retainedNodes: !305)
!6095 = !DISubroutineType(types: !6096)
!6096 = !{null, !223, !232}
!6097 = !DILocalVariable(name: "nonce", arg: 1, scope: !6094, file: !2, line: 2462, type: !223)
!6098 = !DILocation(line: 2462, column: 50, scope: !6094)
!6099 = !DILocalVariable(name: "sz", arg: 2, scope: !6094, file: !2, line: 2462, type: !232)
!6100 = !DILocation(line: 2462, column: 64, scope: !6094)
!6101 = !DILocation(line: 2463, column: 17, scope: !6102)
!6102 = distinct !DILexicalBlock(scope: !6094, file: !2, line: 2463, column: 5)
!6103 = !DILocation(line: 2463, column: 29, scope: !6102)
!6104 = !DILocation(line: 2463, column: 24, scope: !6102)
!6105 = !DILocation(line: 2463, column: 6, scope: !6102)
!6106 = !DILocation(line: 2463, column: 5, scope: !6094)
!6107 = !DILocalVariable(name: "i", scope: !6108, file: !2, line: 2464, type: !232)
!6108 = distinct !DILexicalBlock(scope: !6102, file: !2, line: 2463, column: 34)
!6109 = !DILocation(line: 2464, column: 10, scope: !6108)
!6110 = !DILocation(line: 2465, column: 8, scope: !6111)
!6111 = distinct !DILexicalBlock(scope: !6108, file: !2, line: 2465, column: 3)
!6112 = !DILocation(line: 2465, column: 7, scope: !6111)
!6113 = !DILocation(line: 2465, column: 11, scope: !6114)
!6114 = distinct !DILexicalBlock(scope: !6111, file: !2, line: 2465, column: 3)
!6115 = !DILocation(line: 2465, column: 13, scope: !6114)
!6116 = !DILocation(line: 2465, column: 12, scope: !6114)
!6117 = !DILocation(line: 2465, column: 3, scope: !6111)
!6118 = !DILocation(line: 2466, column: 30, scope: !6119)
!6119 = distinct !DILexicalBlock(scope: !6114, file: !2, line: 2465, column: 21)
!6120 = !DILocation(line: 2466, column: 15, scope: !6119)
!6121 = !DILocation(line: 2466, column: 4, scope: !6119)
!6122 = !DILocation(line: 2466, column: 10, scope: !6119)
!6123 = !DILocation(line: 2466, column: 13, scope: !6119)
!6124 = !DILocation(line: 2467, column: 3, scope: !6119)
!6125 = !DILocation(line: 2465, column: 16, scope: !6114)
!6126 = !DILocation(line: 2465, column: 3, scope: !6114)
!6127 = distinct !{!6127, !6117, !6128, !855}
!6128 = !DILocation(line: 2467, column: 3, scope: !6111)
!6129 = !DILocation(line: 2468, column: 2, scope: !6108)
!6130 = !DILocation(line: 2469, column: 1, scope: !6094)
!6131 = distinct !DISubprogram(name: "readable_string", scope: !2, file: !2, line: 280, type: !6132, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !194, retainedNodes: !305)
!6132 = !DISubroutineType(types: !6133)
!6133 = !{null, !223, !223, !232}
!6134 = !DILocalVariable(name: "orig", arg: 1, scope: !6131, file: !2, line: 280, type: !223)
!6135 = !DILocation(line: 280, column: 44, scope: !6131)
!6136 = !DILocalVariable(name: "out", arg: 2, scope: !6131, file: !2, line: 280, type: !223)
!6137 = !DILocation(line: 280, column: 65, scope: !6131)
!6138 = !DILocalVariable(name: "sz", arg: 3, scope: !6131, file: !2, line: 280, type: !232)
!6139 = !DILocation(line: 280, column: 77, scope: !6131)
!6140 = !DILocalVariable(name: "i", scope: !6131, file: !2, line: 282, type: !232)
!6141 = !DILocation(line: 282, column: 12, scope: !6131)
!6142 = !DILocation(line: 283, column: 5, scope: !6131)
!6143 = !DILocation(line: 283, column: 11, scope: !6131)
!6144 = !DILocation(line: 285, column: 11, scope: !6145)
!6145 = distinct !DILexicalBlock(scope: !6131, file: !2, line: 285, column: 5)
!6146 = !DILocation(line: 285, column: 9, scope: !6145)
!6147 = !DILocation(line: 285, column: 16, scope: !6148)
!6148 = distinct !DILexicalBlock(scope: !6145, file: !2, line: 285, column: 5)
!6149 = !DILocation(line: 285, column: 20, scope: !6148)
!6150 = !DILocation(line: 285, column: 18, scope: !6148)
!6151 = !DILocation(line: 285, column: 5, scope: !6145)
!6152 = !DILocation(line: 286, column: 24, scope: !6153)
!6153 = distinct !DILexicalBlock(scope: !6148, file: !2, line: 285, column: 29)
!6154 = !DILocation(line: 286, column: 31, scope: !6153)
!6155 = !DILocation(line: 286, column: 33, scope: !6153)
!6156 = !DILocation(line: 286, column: 28, scope: !6153)
!6157 = !DILocation(line: 286, column: 65, scope: !6153)
!6158 = !DILocation(line: 286, column: 70, scope: !6153)
!6159 = !DILocation(line: 286, column: 51, scope: !6153)
!6160 = !DILocation(line: 286, column: 7, scope: !6153)
!6161 = !DILocation(line: 287, column: 5, scope: !6153)
!6162 = !DILocation(line: 285, column: 24, scope: !6148)
!6163 = !DILocation(line: 285, column: 5, scope: !6148)
!6164 = distinct !{!6164, !6151, !6165, !855}
!6165 = !DILocation(line: 287, column: 5, scope: !6145)
!6166 = !DILocation(line: 288, column: 1, scope: !6131)
!6167 = distinct !DISubprogram(name: "findstr", scope: !2, file: !2, line: 876, type: !6168, scopeLine: 877, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !194, retainedNodes: !305)
!6168 = !DISubroutineType(types: !6169)
!6169 = !{!225, !225, !232, !225, !199}
!6170 = !DILocalVariable(name: "hay", arg: 1, scope: !6167, file: !2, line: 876, type: !225)
!6171 = !DILocation(line: 876, column: 47, scope: !6167)
!6172 = !DILocalVariable(name: "slen", arg: 2, scope: !6167, file: !2, line: 876, type: !232)
!6173 = !DILocation(line: 876, column: 59, scope: !6167)
!6174 = !DILocalVariable(name: "needle", arg: 3, scope: !6167, file: !2, line: 876, type: !225)
!6175 = !DILocation(line: 876, column: 77, scope: !6167)
!6176 = !DILocalVariable(name: "ignore_case", arg: 4, scope: !6167, file: !2, line: 876, type: !199)
!6177 = !DILocation(line: 876, column: 89, scope: !6167)
!6178 = !DILocalVariable(name: "ret", scope: !6167, file: !2, line: 878, type: !225)
!6179 = !DILocation(line: 878, column: 14, scope: !6167)
!6180 = !DILocation(line: 880, column: 5, scope: !6181)
!6181 = distinct !DILexicalBlock(scope: !6167, file: !2, line: 880, column: 5)
!6182 = !DILocation(line: 880, column: 9, scope: !6181)
!6183 = !DILocation(line: 880, column: 12, scope: !6181)
!6184 = !DILocation(line: 880, column: 17, scope: !6181)
!6185 = !DILocation(line: 880, column: 20, scope: !6181)
!6186 = !DILocation(line: 880, column: 5, scope: !6167)
!6187 = !DILocalVariable(name: "nlen", scope: !6188, file: !2, line: 881, type: !232)
!6188 = distinct !DILexicalBlock(scope: !6181, file: !2, line: 880, column: 28)
!6189 = !DILocation(line: 881, column: 10, scope: !6188)
!6190 = !DILocation(line: 881, column: 22, scope: !6188)
!6191 = !DILocation(line: 881, column: 15, scope: !6188)
!6192 = !DILocation(line: 882, column: 6, scope: !6193)
!6193 = distinct !DILexicalBlock(scope: !6188, file: !2, line: 882, column: 6)
!6194 = !DILocation(line: 882, column: 12, scope: !6193)
!6195 = !DILocation(line: 882, column: 10, scope: !6193)
!6196 = !DILocation(line: 882, column: 6, scope: !6188)
!6197 = !DILocalVariable(name: "smax", scope: !6198, file: !2, line: 883, type: !232)
!6198 = distinct !DILexicalBlock(scope: !6193, file: !2, line: 882, column: 18)
!6199 = !DILocation(line: 883, column: 11, scope: !6198)
!6200 = !DILocation(line: 883, column: 18, scope: !6198)
!6201 = !DILocation(line: 883, column: 23, scope: !6198)
!6202 = !DILocation(line: 883, column: 22, scope: !6198)
!6203 = !DILocation(line: 883, column: 27, scope: !6198)
!6204 = !DILocalVariable(name: "i", scope: !6198, file: !2, line: 884, type: !232)
!6205 = !DILocation(line: 884, column: 11, scope: !6198)
!6206 = !DILocalVariable(name: "sp", scope: !6198, file: !2, line: 885, type: !225)
!6207 = !DILocation(line: 885, column: 16, scope: !6198)
!6208 = !DILocation(line: 885, column: 21, scope: !6198)
!6209 = !DILocation(line: 886, column: 9, scope: !6210)
!6210 = distinct !DILexicalBlock(scope: !6198, file: !2, line: 886, column: 4)
!6211 = !DILocation(line: 886, column: 8, scope: !6210)
!6212 = !DILocation(line: 886, column: 12, scope: !6213)
!6213 = distinct !DILexicalBlock(scope: !6210, file: !2, line: 886, column: 4)
!6214 = !DILocation(line: 886, column: 14, scope: !6213)
!6215 = !DILocation(line: 886, column: 13, scope: !6213)
!6216 = !DILocation(line: 886, column: 4, scope: !6210)
!6217 = !DILocation(line: 887, column: 16, scope: !6218)
!6218 = distinct !DILexicalBlock(scope: !6219, file: !2, line: 887, column: 8)
!6219 = distinct !DILexicalBlock(scope: !6213, file: !2, line: 886, column: 24)
!6220 = !DILocation(line: 887, column: 23, scope: !6218)
!6221 = !DILocation(line: 887, column: 26, scope: !6218)
!6222 = !DILocation(line: 887, column: 25, scope: !6218)
!6223 = !DILocation(line: 887, column: 28, scope: !6218)
!6224 = !DILocation(line: 887, column: 8, scope: !6218)
!6225 = !DILocation(line: 887, column: 8, scope: !6219)
!6226 = !DILocation(line: 888, column: 12, scope: !6227)
!6227 = distinct !DILexicalBlock(scope: !6218, file: !2, line: 887, column: 42)
!6228 = !DILocation(line: 888, column: 15, scope: !6227)
!6229 = !DILocation(line: 888, column: 14, scope: !6227)
!6230 = !DILocation(line: 888, column: 10, scope: !6227)
!6231 = !DILocation(line: 889, column: 6, scope: !6227)
!6232 = !DILocation(line: 891, column: 4, scope: !6219)
!6233 = !DILocation(line: 886, column: 19, scope: !6213)
!6234 = !DILocation(line: 886, column: 4, scope: !6213)
!6235 = distinct !{!6235, !6216, !6236, !855}
!6236 = !DILocation(line: 891, column: 4, scope: !6210)
!6237 = !DILocation(line: 892, column: 3, scope: !6198)
!6238 = !DILocation(line: 893, column: 2, scope: !6188)
!6239 = !DILocation(line: 895, column: 9, scope: !6167)
!6240 = !DILocation(line: 895, column: 2, scope: !6167)
!6241 = distinct !DISubprogram(name: "sheadof", scope: !2, file: !2, line: 861, type: !6242, scopeLine: 862, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !194, retainedNodes: !305)
!6242 = !DISubroutineType(types: !6243)
!6243 = !{!199, !225, !225, !199}
!6244 = !DILocalVariable(name: "head", arg: 1, scope: !6241, file: !2, line: 861, type: !225)
!6245 = !DILocation(line: 861, column: 39, scope: !6241)
!6246 = !DILocalVariable(name: "full", arg: 2, scope: !6241, file: !2, line: 861, type: !225)
!6247 = !DILocation(line: 861, column: 57, scope: !6241)
!6248 = !DILocalVariable(name: "ignore_case", arg: 3, scope: !6241, file: !2, line: 861, type: !199)
!6249 = !DILocation(line: 861, column: 67, scope: !6241)
!6250 = !DILocation(line: 863, column: 2, scope: !6241)
!6251 = !DILocation(line: 863, column: 9, scope: !6241)
!6252 = !DILocation(line: 863, column: 8, scope: !6241)
!6253 = !DILocation(line: 864, column: 7, scope: !6254)
!6254 = distinct !DILexicalBlock(scope: !6255, file: !2, line: 864, column: 6)
!6255 = distinct !DILexicalBlock(scope: !6241, file: !2, line: 863, column: 15)
!6256 = !DILocation(line: 864, column: 6, scope: !6254)
!6257 = !DILocation(line: 864, column: 16, scope: !6254)
!6258 = !DILocation(line: 864, column: 15, scope: !6254)
!6259 = !DILocation(line: 864, column: 12, scope: !6254)
!6260 = !DILocation(line: 864, column: 6, scope: !6255)
!6261 = !DILocation(line: 865, column: 8, scope: !6262)
!6262 = distinct !DILexicalBlock(scope: !6263, file: !2, line: 865, column: 8)
!6263 = distinct !DILexicalBlock(scope: !6254, file: !2, line: 864, column: 22)
!6264 = !DILocation(line: 865, column: 20, scope: !6262)
!6265 = !DILocation(line: 865, column: 38, scope: !6262)
!6266 = !DILocation(line: 865, column: 37, scope: !6262)
!6267 = !DILocation(line: 865, column: 32, scope: !6262)
!6268 = !DILocation(line: 865, column: 24, scope: !6262)
!6269 = !DILocation(line: 865, column: 59, scope: !6262)
!6270 = !DILocation(line: 865, column: 58, scope: !6262)
!6271 = !DILocation(line: 865, column: 53, scope: !6262)
!6272 = !DILocation(line: 865, column: 45, scope: !6262)
!6273 = !DILocation(line: 865, column: 43, scope: !6262)
!6274 = !DILocation(line: 865, column: 8, scope: !6263)
!6275 = !DILocation(line: 867, column: 4, scope: !6276)
!6276 = distinct !DILexicalBlock(scope: !6262, file: !2, line: 865, column: 67)
!6277 = !DILocation(line: 868, column: 5, scope: !6278)
!6278 = distinct !DILexicalBlock(scope: !6262, file: !2, line: 867, column: 11)
!6279 = !DILocation(line: 870, column: 3, scope: !6263)
!6280 = !DILocation(line: 871, column: 3, scope: !6255)
!6281 = !DILocation(line: 871, column: 10, scope: !6255)
!6282 = distinct !{!6282, !6250, !6283, !855}
!6283 = !DILocation(line: 872, column: 2, scope: !6241)
!6284 = !DILocation(line: 873, column: 2, scope: !6241)
!6285 = !DILocation(line: 874, column: 1, scope: !6241)
