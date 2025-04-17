; ModuleID = '/home/raj/coturn/src/apps/natdiscovery/natdiscovery.c'
source_filename = "/home/raj/coturn/src/apps/natdiscovery/natdiscovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ioa_addr = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct._stun_buffer = type { [4 x i8], [65507 x i8], i64, i16, i8 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.timeval = type { i64, i64 }

@.str = private unnamed_addr constant [7 x i8] c"stdout\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [17 x i8] c"mftcPHp:L:l:A:T:\00", align 1, !dbg !7
@optarg = external global ptr, align 8
@stderr = external global ptr, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1, !dbg !12
@Usage = internal global [884 x i8] c"Usage: natdiscovery [options] address\0AOptions:\0A        -m      NAT mapping behavior discovery\0A        -f      NAT filtering behavior discovery\0A        -t      NAT mapping lifetime behavior discovery\0A                Requires a timer (-T)\0A        -c      NAT collision behavior discovery\0A                Requires an alternative IP address (-A)\0A        -H      NAT hairpinning behavior discovery\0A        -P      Add 1500 byte Padding to the behavior discovery\0A                Applicable with all except NAT mapping Lifetime discovery\0A        -p      STUN server port (Default: 3478)\0A        -L      Local address to use (optional)\0A        -l      Local port to use (use with -L)\0A        -A      Local alrernative address to use\0A                Used by collision behavior discovery\0A        -T      Mapping lifetime timer (sec)\0A                Used by mapping lifetime behavior discovery\0A\00", align 16, !dbg !17
@optind = external global i32, align 4
@.str.3 = private unnamed_addr constant [2 x i8] zeroinitializer, align 1, !dbg !113
@.str.4 = private unnamed_addr constant [50 x i8] c"Use \22-A\22 to add an Alternative local IP address.\0A\00", align 1, !dbg !118
@.str.5 = private unnamed_addr constant [58 x i8] c"It is mandatory with \22-c\22 collision behavior detection..\0A\00", align 1, !dbg !123
@.str.6 = private unnamed_addr constant [41 x i8] c"Use \22-T\22 to add a timer value (in sec).\0A\00", align 1, !dbg !128
@.str.7 = private unnamed_addr constant [65 x i8] c"It is mandatory with \22-b\22 mapping lifetime behavior detection..\0A\00", align 1, !dbg !133
@.str.8 = private unnamed_addr constant [54 x i8] c"To use local port please specify local address \22-L\22!\0A\00", align 1, !dbg !138
@.str.9 = private unnamed_addr constant [54 x i8] c"We need to know the address familly to set the port.\0A\00", align 1, !dbg !143
@.str.10 = private unnamed_addr constant [44 x i8] c"\0A-= Mapping Lifetime Behavior Discovery =-\0A\00", align 1, !dbg !145
@.str.11 = private unnamed_addr constant [39 x i8] c"\0A-= Hairpinning Behavior Discovery =-\0A\00", align 1, !dbg !150
@.str.12 = private unnamed_addr constant [35 x i8] c"\0A-= Mapping Behavior Discovery =-\0A\00", align 1, !dbg !155
@.str.13 = private unnamed_addr constant [39 x i8] c"No NAT! (Endpoint Independent Mapping)\00", align 1, !dbg !160
@.str.14 = private unnamed_addr constant [39 x i8] c"NAT with Endpoint Independent Mapping!\00", align 1, !dbg !162
@.str.15 = private unnamed_addr constant [36 x i8] c"NAT with Address Dependent Mapping!\00", align 1, !dbg !164
@.str.16 = private unnamed_addr constant [45 x i8] c"NAT with Address and Port Dependent Mapping!\00", align 1, !dbg !169
@.str.17 = private unnamed_addr constant [37 x i8] c"\0A-= Filtering Behavior Discovery =-\0A\00", align 1, !dbg !174
@.str.18 = private unnamed_addr constant [41 x i8] c"NAT with Endpoint Independent Filtering!\00", align 1, !dbg !179
@.str.19 = private unnamed_addr constant [38 x i8] c"NAT with Address Dependent Filtering!\00", align 1, !dbg !181
@.str.20 = private unnamed_addr constant [47 x i8] c"NAT with Address and Port Dependent Filtering!\00", align 1, !dbg !186
@.str.21 = private unnamed_addr constant [37 x i8] c"\0A-= Collision Behavior Discovery =-\0A\00", align 1, !dbg !191
@.str.22 = private unnamed_addr constant [101 x i8] c"Please use either -f or -m or -c or -t or -H parameter for Filtering or Mapping behavior discovery.\0A\00", align 1, !dbg !193
@udp_fd = internal global i32 -1, align 4, !dbg !293
@udp_fd2 = internal global i32 -1, align 4, !dbg !295
@.str.23 = private unnamed_addr constant [31 x i8] c"%s: ERROR: Cannot add padding\0A\00", align 1, !dbg !198
@__FUNCTION__.stunclient_send = private unnamed_addr constant [16 x i8] c"stunclient_send\00", align 1, !dbg !203
@.str.24 = private unnamed_addr constant [42 x i8] c"%s: Cannot get address from local socket\0A\00", align 1, !dbg !208
@.str.25 = private unnamed_addr constant [43 x i8] c"\0A========================================\0A\00", align 1, !dbg !213
@.str.26 = private unnamed_addr constant [22 x i8] c"RFC 5780 response %d\0A\00", align 1, !dbg !218
@counter = internal global i32 0, align 4, !dbg !285
@.str.27 = private unnamed_addr constant [51 x i8] c"-= ALG detected! Mapped and XOR-Mapped differ! =-\0A\00", align 1, !dbg !223
@.str.28 = private unnamed_addr constant [17 x i8] c"Mapped Address: \00", align 1, !dbg !228
@.str.29 = private unnamed_addr constant [30 x i8] c"No ALG: Mapped == XOR-Mapped\0A\00", align 1, !dbg !230
@.str.30 = private unnamed_addr constant [40 x i8] c"Not received mapped address attribute.\0A\00", align 1, !dbg !235
@.str.31 = private unnamed_addr constant [18 x i8] c"Response origin: \00", align 1, !dbg !240
@.str.32 = private unnamed_addr constant [13 x i8] c"Other addr: \00", align 1, !dbg !245
@.str.33 = private unnamed_addr constant [19 x i8] c"UDP reflexive addr\00", align 1, !dbg !250
@.str.34 = private unnamed_addr constant [13 x i8] c"Local addr: \00", align 1, !dbg !255
@.str.35 = private unnamed_addr constant [26 x i8] c"Cannot read the response\0A\00", align 1, !dbg !257
@.str.36 = private unnamed_addr constant [24 x i8] c"Wrong type of response\0A\00", align 1, !dbg !262
@.str.37 = private unnamed_addr constant [34 x i8] c"The response is an error %d (%s)\0A\00", align 1, !dbg !267
@.str.38 = private unnamed_addr constant [39 x i8] c"The response is an unrecognized error\0A\00", align 1, !dbg !272
@.str.39 = private unnamed_addr constant [53 x i8] c"Received a request (maybe a successful hairpinning)\0A\00", align 1, !dbg !274
@.str.40 = private unnamed_addr constant [40 x i8] c"The response is not a response message\0A\00", align 1, !dbg !279
@.str.41 = private unnamed_addr constant [24 x i8] c"STUN receive timeout..\0A\00", align 1, !dbg !281
@.str.42 = private unnamed_addr constant [36 x i8] c"The response is not a STUN message\0A\00", align 1, !dbg !283
@.str.43 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !288

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 !dbg !308 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca [256 x i8], align 16
  %8 = alloca [256 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %union.ioa_addr, align 4
  %21 = alloca %union.ioa_addr, align 4
  %22 = alloca %union.ioa_addr, align 4
  %23 = alloca %union.ioa_addr, align 4
  %24 = alloca %union.ioa_addr, align 4
  %25 = alloca %union.ioa_addr, align 4
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !313, metadata !DIExpression()), !dbg !314
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !315, metadata !DIExpression()), !dbg !316
  call void @llvm.dbg.declare(metadata ptr %6, metadata !317, metadata !DIExpression()), !dbg !318
  store i32 3478, ptr %6, align 4, !dbg !318
  call void @llvm.dbg.declare(metadata ptr %7, metadata !319, metadata !DIExpression()), !dbg !323
  call void @llvm.memset.p0.i64(ptr align 16 %7, i8 0, i64 256, i1 false), !dbg !323
  call void @llvm.dbg.declare(metadata ptr %8, metadata !324, metadata !DIExpression()), !dbg !325
  call void @llvm.memset.p0.i64(ptr align 16 %8, i8 0, i64 256, i1 false), !dbg !325
  call void @llvm.dbg.declare(metadata ptr %9, metadata !326, metadata !DIExpression()), !dbg !327
  store i32 0, ptr %9, align 4, !dbg !327
  call void @llvm.dbg.declare(metadata ptr %10, metadata !328, metadata !DIExpression()), !dbg !329
  store i32 0, ptr %10, align 4, !dbg !329
  call void @llvm.dbg.declare(metadata ptr %11, metadata !330, metadata !DIExpression()), !dbg !331
  store i32 0, ptr %11, align 4, !dbg !331
  call void @llvm.dbg.declare(metadata ptr %12, metadata !332, metadata !DIExpression()), !dbg !333
  store i32 0, ptr %12, align 4, !dbg !333
  call void @llvm.dbg.declare(metadata ptr %13, metadata !334, metadata !DIExpression()), !dbg !335
  store i32 -1, ptr %13, align 4, !dbg !335
  call void @llvm.dbg.declare(metadata ptr %14, metadata !336, metadata !DIExpression()), !dbg !337
  store i32 0, ptr %14, align 4, !dbg !337
  call void @llvm.dbg.declare(metadata ptr %15, metadata !338, metadata !DIExpression()), !dbg !339
  store i32 0, ptr %15, align 4, !dbg !339
  call void @llvm.dbg.declare(metadata ptr %16, metadata !340, metadata !DIExpression()), !dbg !341
  store i32 0, ptr %16, align 4, !dbg !341
  call void @llvm.dbg.declare(metadata ptr %17, metadata !342, metadata !DIExpression()), !dbg !343
  store i32 -1, ptr %17, align 4, !dbg !343
  call void @llvm.dbg.declare(metadata ptr %18, metadata !344, metadata !DIExpression()), !dbg !345
  call void @llvm.dbg.declare(metadata ptr %19, metadata !346, metadata !DIExpression()), !dbg !347
  store i32 1, ptr %19, align 4, !dbg !347
  call void @llvm.dbg.declare(metadata ptr %20, metadata !348, metadata !DIExpression()), !dbg !390
  call void @llvm.dbg.declare(metadata ptr %21, metadata !391, metadata !DIExpression()), !dbg !392
  call void @llvm.dbg.declare(metadata ptr %22, metadata !393, metadata !DIExpression()), !dbg !394
  call void @llvm.dbg.declare(metadata ptr %23, metadata !395, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.declare(metadata ptr %24, metadata !397, metadata !DIExpression()), !dbg !398
  call void @llvm.dbg.declare(metadata ptr %25, metadata !399, metadata !DIExpression()), !dbg !400
  call void @set_logfile(ptr noundef @.str), !dbg !401
  %29 = call i64 @set_system_parameters(i32 noundef 0), !dbg !402
  %30 = getelementptr inbounds [256 x i8], ptr %7, i64 0, i64 0, !dbg !403
  call void @llvm.memset.p0.i64(ptr align 16 %30, i8 0, i64 256, i1 false), !dbg !403
  %31 = getelementptr inbounds [256 x i8], ptr %8, i64 0, i64 0, !dbg !404
  call void @llvm.memset.p0.i64(ptr align 16 %31, i8 0, i64 256, i1 false), !dbg !404
  call void @addr_set_any(ptr noundef %23), !dbg !405
  call void @addr_set_any(ptr noundef %20), !dbg !406
  call void @addr_set_any(ptr noundef %21), !dbg !407
  call void @addr_set_any(ptr noundef %22), !dbg !408
  br label %32, !dbg !409

32:                                               ; preds = %89, %2
  %33 = load i32, ptr %4, align 4, !dbg !410
  %34 = load ptr, ptr %5, align 8, !dbg !411
  %35 = call i32 @getopt(i32 noundef %33, ptr noundef %34, ptr noundef @.str.1) #9, !dbg !412
  store i32 %35, ptr %9, align 4, !dbg !413
  %36 = icmp ne i32 %35, -1, !dbg !414
  br i1 %36, label %37, label %90, !dbg !409

37:                                               ; preds = %32
  %38 = load i32, ptr %9, align 4, !dbg !415
  switch i32 %38, label %86 [
    i32 109, label %39
    i32 102, label %40
    i32 116, label %41
    i32 99, label %42
    i32 72, label %43
    i32 80, label %44
    i32 112, label %45
    i32 76, label %48
    i32 108, label %64
    i32 65, label %67
    i32 84, label %83
  ], !dbg !417

39:                                               ; preds = %37
  store i32 1, ptr %10, align 4, !dbg !418
  br label %89, !dbg !420

40:                                               ; preds = %37
  store i32 1, ptr %11, align 4, !dbg !421
  br label %89, !dbg !422

41:                                               ; preds = %37
  store i32 1, ptr %12, align 4, !dbg !423
  br label %89, !dbg !424

42:                                               ; preds = %37
  store i32 1, ptr %14, align 4, !dbg !425
  br label %89, !dbg !426

43:                                               ; preds = %37
  store i32 1, ptr %16, align 4, !dbg !427
  br label %89, !dbg !428

44:                                               ; preds = %37
  store i32 1, ptr %15, align 4, !dbg !429
  br label %89, !dbg !430

45:                                               ; preds = %37
  %46 = load ptr, ptr @optarg, align 8, !dbg !431
  %47 = call i32 @atoi(ptr noundef %46) #10, !dbg !432
  store i32 %47, ptr %6, align 4, !dbg !433
  br label %89, !dbg !434

48:                                               ; preds = %37
  br label %49, !dbg !435

49:                                               ; preds = %48
  %50 = getelementptr inbounds [256 x i8], ptr %7, i64 0, i64 0, !dbg !436
  %51 = load ptr, ptr @optarg, align 8, !dbg !436
  %52 = icmp ne ptr %50, %51, !dbg !436
  br i1 %52, label %53, label %62, !dbg !439

53:                                               ; preds = %49
  call void @llvm.dbg.declare(metadata ptr %26, metadata !440, metadata !DIExpression()), !dbg !444
  store i64 256, ptr %26, align 8, !dbg !444
  %54 = getelementptr inbounds [256 x i8], ptr %7, i64 0, i64 0, !dbg !444
  %55 = load ptr, ptr @optarg, align 8, !dbg !444
  %56 = load i64, ptr %26, align 8, !dbg !444
  %57 = call ptr @strncpy(ptr noundef %54, ptr noundef %55, i64 noundef %56) #9, !dbg !444
  %58 = getelementptr inbounds [256 x i8], ptr %7, i64 0, i64 0, !dbg !444
  %59 = load i64, ptr %26, align 8, !dbg !444
  %60 = sub i64 %59, 1, !dbg !444
  %61 = getelementptr inbounds i8, ptr %58, i64 %60, !dbg !444
  store i8 0, ptr %61, align 1, !dbg !444
  br label %62, !dbg !445

62:                                               ; preds = %53, %49
  br label %63, !dbg !439

63:                                               ; preds = %62
  br label %89, !dbg !446

64:                                               ; preds = %37
  %65 = load ptr, ptr @optarg, align 8, !dbg !447
  %66 = call i32 @atoi(ptr noundef %65) #10, !dbg !448
  store i32 %66, ptr %17, align 4, !dbg !449
  br label %89, !dbg !450

67:                                               ; preds = %37
  br label %68, !dbg !451

68:                                               ; preds = %67
  %69 = getelementptr inbounds [256 x i8], ptr %8, i64 0, i64 0, !dbg !452
  %70 = load ptr, ptr @optarg, align 8, !dbg !452
  %71 = icmp ne ptr %69, %70, !dbg !452
  br i1 %71, label %72, label %81, !dbg !455

72:                                               ; preds = %68
  call void @llvm.dbg.declare(metadata ptr %27, metadata !456, metadata !DIExpression()), !dbg !460
  store i64 256, ptr %27, align 8, !dbg !460
  %73 = getelementptr inbounds [256 x i8], ptr %8, i64 0, i64 0, !dbg !460
  %74 = load ptr, ptr @optarg, align 8, !dbg !460
  %75 = load i64, ptr %27, align 8, !dbg !460
  %76 = call ptr @strncpy(ptr noundef %73, ptr noundef %74, i64 noundef %75) #9, !dbg !460
  %77 = getelementptr inbounds [256 x i8], ptr %8, i64 0, i64 0, !dbg !460
  %78 = load i64, ptr %27, align 8, !dbg !460
  %79 = sub i64 %78, 1, !dbg !460
  %80 = getelementptr inbounds i8, ptr %77, i64 %79, !dbg !460
  store i8 0, ptr %80, align 1, !dbg !460
  br label %81, !dbg !461

81:                                               ; preds = %72, %68
  br label %82, !dbg !455

82:                                               ; preds = %81
  br label %89, !dbg !462

83:                                               ; preds = %37
  %84 = load ptr, ptr @optarg, align 8, !dbg !463
  %85 = call i32 @atoi(ptr noundef %84) #10, !dbg !464
  store i32 %85, ptr %13, align 4, !dbg !465
  br label %89, !dbg !466

86:                                               ; preds = %37
  %87 = load ptr, ptr @stderr, align 8, !dbg !467
  %88 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %87, ptr noundef @.str.2, ptr noundef @Usage), !dbg !468
  call void @exit(i32 noundef 1) #11, !dbg !469
  unreachable, !dbg !469

89:                                               ; preds = %83, %82, %64, %63, %45, %44, %43, %42, %41, %40, %39
  br label %32, !dbg !409, !llvm.loop !470

90:                                               ; preds = %32
  %91 = load i32, ptr @optind, align 4, !dbg !473
  %92 = load i32, ptr %4, align 4, !dbg !475
  %93 = icmp sge i32 %91, %92, !dbg !476
  br i1 %93, label %94, label %97, !dbg !477

94:                                               ; preds = %90
  %95 = load ptr, ptr @stderr, align 8, !dbg !478
  %96 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %95, ptr noundef @.str.2, ptr noundef @Usage), !dbg !480
  call void @exit(i32 noundef -1) #11, !dbg !481
  unreachable, !dbg !481

97:                                               ; preds = %90
  %98 = load i32, ptr %14, align 4, !dbg !482
  %99 = icmp ne i32 %98, 0, !dbg !482
  br i1 %99, label %100, label %109, !dbg !484

100:                                              ; preds = %97
  %101 = getelementptr inbounds [256 x i8], ptr %8, i64 0, i64 0, !dbg !485
  %102 = call i32 @strcmp(ptr noundef %101, ptr noundef @.str.3) #10, !dbg !486
  %103 = icmp ne i32 %102, 0, !dbg !486
  br i1 %103, label %109, label %104, !dbg !487

104:                                              ; preds = %100
  %105 = load ptr, ptr @stderr, align 8, !dbg !488
  %106 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %105, ptr noundef @.str.4), !dbg !490
  %107 = load ptr, ptr @stderr, align 8, !dbg !491
  %108 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %107, ptr noundef @.str.5), !dbg !492
  call void @exit(i32 noundef -1) #11, !dbg !493
  unreachable, !dbg !493

109:                                              ; preds = %100, %97
  %110 = load i32, ptr %12, align 4, !dbg !494
  %111 = icmp ne i32 %110, 0, !dbg !494
  br i1 %111, label %112, label %120, !dbg !496

112:                                              ; preds = %109
  %113 = load i32, ptr %13, align 4, !dbg !497
  %114 = icmp eq i32 %113, -1, !dbg !498
  br i1 %114, label %115, label %120, !dbg !499

115:                                              ; preds = %112
  %116 = load ptr, ptr @stderr, align 8, !dbg !500
  %117 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %116, ptr noundef @.str.6), !dbg !502
  %118 = load ptr, ptr @stderr, align 8, !dbg !503
  %119 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %118, ptr noundef @.str.7), !dbg !504
  call void @exit(i32 noundef -1) #11, !dbg !505
  unreachable, !dbg !505

120:                                              ; preds = %112, %109
  %121 = load i32, ptr %17, align 4, !dbg !506
  %122 = icmp sge i32 %121, 0, !dbg !508
  br i1 %122, label %123, label %132, !dbg !509

123:                                              ; preds = %120
  %124 = getelementptr inbounds [256 x i8], ptr %7, i64 0, i64 0, !dbg !510
  %125 = call i32 @strcmp(ptr noundef %124, ptr noundef @.str.3) #10, !dbg !511
  %126 = icmp ne i32 %125, 0, !dbg !511
  br i1 %126, label %132, label %127, !dbg !512

127:                                              ; preds = %123
  %128 = load ptr, ptr @stderr, align 8, !dbg !513
  %129 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %128, ptr noundef @.str.8), !dbg !515
  %130 = load ptr, ptr @stderr, align 8, !dbg !516
  %131 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %130, ptr noundef @.str.9), !dbg !517
  call void @exit(i32 noundef -1) #11, !dbg !518
  unreachable, !dbg !518

132:                                              ; preds = %123, %120
  %133 = load i32, ptr %12, align 4, !dbg !519
  %134 = icmp ne i32 %133, 0, !dbg !519
  br i1 %134, label %135, label %148, !dbg !521

135:                                              ; preds = %132
  %136 = call i32 (ptr, ...) @printf(ptr noundef @.str.10), !dbg !522
  %137 = load i32, ptr %19, align 4, !dbg !524
  %138 = load i32, ptr %6, align 4, !dbg !525
  %139 = getelementptr inbounds [256 x i8], ptr %7, i64 0, i64 0, !dbg !526
  %140 = load ptr, ptr %5, align 8, !dbg !527
  %141 = load i32, ptr @optind, align 4, !dbg !528
  %142 = sext i32 %141 to i64, !dbg !527
  %143 = getelementptr inbounds ptr, ptr %140, i64 %142, !dbg !527
  %144 = load ptr, ptr %143, align 8, !dbg !527
  call void @init(i32 noundef %137, ptr noundef %24, ptr noundef %23, ptr noundef %17, i32 noundef %138, ptr noundef %18, ptr noundef %139, ptr noundef %144), !dbg !529
  store i32 0, ptr %19, align 4, !dbg !530
  %145 = load i32, ptr %13, align 4, !dbg !531
  %146 = load i32, ptr %15, align 4, !dbg !532
  %147 = call i32 @run_stunclient_lifetime(i32 noundef %145, ptr noundef %24, ptr noundef %23, ptr noundef %21, ptr noundef %20, ptr noundef %17, ptr noundef %18, i32 noundef 0, i32 noundef 0, i32 noundef %146), !dbg !533
  br label %148, !dbg !534

148:                                              ; preds = %135, %132
  %149 = load i32, ptr %16, align 4, !dbg !535
  %150 = icmp ne i32 %149, 0, !dbg !535
  br i1 %150, label %151, label %163, !dbg !537

151:                                              ; preds = %148
  %152 = call i32 (ptr, ...) @printf(ptr noundef @.str.11), !dbg !538
  %153 = load i32, ptr %19, align 4, !dbg !540
  %154 = load i32, ptr %6, align 4, !dbg !541
  %155 = getelementptr inbounds [256 x i8], ptr %7, i64 0, i64 0, !dbg !542
  %156 = load ptr, ptr %5, align 8, !dbg !543
  %157 = load i32, ptr @optind, align 4, !dbg !544
  %158 = sext i32 %157 to i64, !dbg !543
  %159 = getelementptr inbounds ptr, ptr %156, i64 %158, !dbg !543
  %160 = load ptr, ptr %159, align 8, !dbg !543
  call void @init(i32 noundef %153, ptr noundef %24, ptr noundef %23, ptr noundef %17, i32 noundef %154, ptr noundef %18, ptr noundef %155, ptr noundef %160), !dbg !545
  store i32 0, ptr %19, align 4, !dbg !546
  %161 = load i32, ptr %15, align 4, !dbg !547
  %162 = call i32 @run_stunclient_hairpinning(ptr noundef %24, ptr noundef %23, ptr noundef %21, ptr noundef %20, ptr noundef %17, ptr noundef %18, i32 noundef 0, i32 noundef 0, i32 noundef %161), !dbg !548
  br label %163, !dbg !549

163:                                              ; preds = %151, %148
  %164 = load i32, ptr %10, align 4, !dbg !550
  %165 = icmp ne i32 %164, 0, !dbg !550
  br i1 %165, label %166, label %205, !dbg !552

166:                                              ; preds = %163
  %167 = call i32 (ptr, ...) @printf(ptr noundef @.str.12), !dbg !553
  %168 = load i32, ptr %19, align 4, !dbg !555
  %169 = load i32, ptr %6, align 4, !dbg !556
  %170 = getelementptr inbounds [256 x i8], ptr %7, i64 0, i64 0, !dbg !557
  %171 = load ptr, ptr %5, align 8, !dbg !558
  %172 = load i32, ptr @optind, align 4, !dbg !559
  %173 = sext i32 %172 to i64, !dbg !558
  %174 = getelementptr inbounds ptr, ptr %171, i64 %173, !dbg !558
  %175 = load ptr, ptr %174, align 8, !dbg !558
  call void @init(i32 noundef %168, ptr noundef %24, ptr noundef %23, ptr noundef %17, i32 noundef %169, ptr noundef %18, ptr noundef %170, ptr noundef %175), !dbg !560
  store i32 0, ptr %19, align 4, !dbg !561
  %176 = load i32, ptr %15, align 4, !dbg !562
  %177 = call i32 @run_stunclient(ptr noundef %24, ptr noundef %23, ptr noundef %21, ptr noundef %20, ptr noundef %17, ptr noundef %18, i32 noundef 0, i32 noundef 0, i32 noundef %176), !dbg !563
  %178 = call i32 @addr_eq(ptr noundef %24, ptr noundef %21), !dbg !564
  %179 = icmp ne i32 %178, 0, !dbg !564
  br i1 %179, label %180, label %181, !dbg !566

180:                                              ; preds = %166
  call void @discoveryresult(ptr noundef @.str.13), !dbg !567
  br label %181, !dbg !569

181:                                              ; preds = %180, %166
  %182 = load i32, ptr %18, align 4, !dbg !570
  %183 = icmp ne i32 %182, 0, !dbg !570
  br i1 %183, label %184, label %204, !dbg !572

184:                                              ; preds = %181
  %185 = call i32 @addr_any(ptr noundef %20), !dbg !573
  %186 = icmp ne i32 %185, 0, !dbg !573
  br i1 %186, label %203, label %187, !dbg !576

187:                                              ; preds = %184
  call void @addr_cpy(ptr noundef %22, ptr noundef %21), !dbg !577
  call void @addr_cpy(ptr noundef %23, ptr noundef %20), !dbg !579
  %188 = load i32, ptr %6, align 4, !dbg !580
  call void @addr_set_port(ptr noundef %23, i32 noundef %188), !dbg !581
  %189 = load i32, ptr %15, align 4, !dbg !582
  %190 = call i32 @run_stunclient(ptr noundef %24, ptr noundef %23, ptr noundef %21, ptr noundef %20, ptr noundef %17, ptr noundef %18, i32 noundef 0, i32 noundef 0, i32 noundef %189), !dbg !583
  %191 = call i32 @addr_eq(ptr noundef %22, ptr noundef %21), !dbg !584
  %192 = icmp ne i32 %191, 0, !dbg !584
  br i1 %192, label %193, label %194, !dbg !586

193:                                              ; preds = %187
  call void @discoveryresult(ptr noundef @.str.14), !dbg !587
  br label %202, !dbg !589

194:                                              ; preds = %187
  call void @addr_cpy(ptr noundef %22, ptr noundef %21), !dbg !590
  call void @addr_cpy(ptr noundef %23, ptr noundef %20), !dbg !592
  %195 = load i32, ptr %15, align 4, !dbg !593
  %196 = call i32 @run_stunclient(ptr noundef %24, ptr noundef %23, ptr noundef %21, ptr noundef %20, ptr noundef %17, ptr noundef %18, i32 noundef 0, i32 noundef 0, i32 noundef %195), !dbg !594
  %197 = call i32 @addr_eq(ptr noundef %22, ptr noundef %21), !dbg !595
  %198 = icmp ne i32 %197, 0, !dbg !595
  br i1 %198, label %199, label %200, !dbg !597

199:                                              ; preds = %194
  call void @discoveryresult(ptr noundef @.str.15), !dbg !598
  br label %201, !dbg !600

200:                                              ; preds = %194
  call void @discoveryresult(ptr noundef @.str.16), !dbg !601
  br label %201

201:                                              ; preds = %200, %199
  br label %202

202:                                              ; preds = %201, %193
  br label %203, !dbg !603

203:                                              ; preds = %202, %184
  br label %204, !dbg !604

204:                                              ; preds = %203, %181
  br label %205, !dbg !605

205:                                              ; preds = %204, %163
  %206 = load i32, ptr %11, align 4, !dbg !606
  %207 = icmp ne i32 %206, 0, !dbg !606
  br i1 %207, label %208, label %246, !dbg !608

208:                                              ; preds = %205
  %209 = call i32 (ptr, ...) @printf(ptr noundef @.str.17), !dbg !609
  %210 = load i32, ptr %19, align 4, !dbg !611
  %211 = load i32, ptr %6, align 4, !dbg !612
  %212 = getelementptr inbounds [256 x i8], ptr %7, i64 0, i64 0, !dbg !613
  %213 = load ptr, ptr %5, align 8, !dbg !614
  %214 = load i32, ptr @optind, align 4, !dbg !615
  %215 = sext i32 %214 to i64, !dbg !614
  %216 = getelementptr inbounds ptr, ptr %213, i64 %215, !dbg !614
  %217 = load ptr, ptr %216, align 8, !dbg !614
  call void @init(i32 noundef %210, ptr noundef %24, ptr noundef %23, ptr noundef %17, i32 noundef %211, ptr noundef %18, ptr noundef %212, ptr noundef %217), !dbg !616
  store i32 0, ptr %19, align 4, !dbg !617
  %218 = load i32, ptr %15, align 4, !dbg !618
  %219 = call i32 @run_stunclient(ptr noundef %24, ptr noundef %23, ptr noundef %21, ptr noundef %20, ptr noundef %17, ptr noundef %18, i32 noundef 0, i32 noundef 0, i32 noundef %218), !dbg !619
  %220 = call i32 @addr_eq(ptr noundef %24, ptr noundef %21), !dbg !620
  %221 = icmp ne i32 %220, 0, !dbg !620
  br i1 %221, label %222, label %223, !dbg !622

222:                                              ; preds = %208
  call void @discoveryresult(ptr noundef @.str.13), !dbg !623
  br label %223, !dbg !625

223:                                              ; preds = %222, %208
  %224 = load i32, ptr %18, align 4, !dbg !626
  %225 = icmp ne i32 %224, 0, !dbg !626
  br i1 %225, label %226, label %245, !dbg !628

226:                                              ; preds = %223
  %227 = call i32 @addr_any(ptr noundef %20), !dbg !629
  %228 = icmp ne i32 %227, 0, !dbg !629
  br i1 %228, label %244, label %229, !dbg !632

229:                                              ; preds = %226
  call void @llvm.dbg.declare(metadata ptr %28, metadata !633, metadata !DIExpression()), !dbg !635
  store i32 0, ptr %28, align 4, !dbg !635
  %230 = load i32, ptr %15, align 4, !dbg !636
  %231 = call i32 @run_stunclient(ptr noundef %24, ptr noundef %23, ptr noundef %21, ptr noundef %20, ptr noundef %17, ptr noundef %18, i32 noundef 1, i32 noundef 1, i32 noundef %230), !dbg !637
  store i32 %231, ptr %28, align 4, !dbg !638
  %232 = load i32, ptr %28, align 4, !dbg !639
  %233 = icmp ne i32 %232, 0, !dbg !639
  br i1 %233, label %235, label %234, !dbg !641

234:                                              ; preds = %229
  call void @discoveryresult(ptr noundef @.str.18), !dbg !642
  br label %243, !dbg !644

235:                                              ; preds = %229
  store i32 0, ptr %28, align 4, !dbg !645
  %236 = load i32, ptr %15, align 4, !dbg !647
  %237 = call i32 @run_stunclient(ptr noundef %24, ptr noundef %23, ptr noundef %21, ptr noundef %20, ptr noundef %17, ptr noundef %18, i32 noundef 0, i32 noundef 1, i32 noundef %236), !dbg !648
  store i32 %237, ptr %28, align 4, !dbg !649
  %238 = load i32, ptr %28, align 4, !dbg !650
  %239 = icmp ne i32 %238, 0, !dbg !650
  br i1 %239, label %241, label %240, !dbg !652

240:                                              ; preds = %235
  call void @discoveryresult(ptr noundef @.str.19), !dbg !653
  br label %242, !dbg !655

241:                                              ; preds = %235
  call void @discoveryresult(ptr noundef @.str.20), !dbg !656
  br label %242

242:                                              ; preds = %241, %240
  br label %243

243:                                              ; preds = %242, %234
  br label %244, !dbg !658

244:                                              ; preds = %243, %226
  br label %245, !dbg !659

245:                                              ; preds = %244, %223
  br label %246, !dbg !660

246:                                              ; preds = %245, %205
  %247 = load i32, ptr %14, align 4, !dbg !661
  %248 = icmp ne i32 %247, 0, !dbg !661
  br i1 %248, label %249, label %274, !dbg !663

249:                                              ; preds = %246
  %250 = call i32 (ptr, ...) @printf(ptr noundef @.str.21), !dbg !664
  %251 = load i32, ptr %19, align 4, !dbg !666
  %252 = load i32, ptr %6, align 4, !dbg !667
  %253 = getelementptr inbounds [256 x i8], ptr %7, i64 0, i64 0, !dbg !668
  %254 = load ptr, ptr %5, align 8, !dbg !669
  %255 = load i32, ptr @optind, align 4, !dbg !670
  %256 = sext i32 %255 to i64, !dbg !669
  %257 = getelementptr inbounds ptr, ptr %254, i64 %256, !dbg !669
  %258 = load ptr, ptr %257, align 8, !dbg !669
  call void @init(i32 noundef %251, ptr noundef %24, ptr noundef %23, ptr noundef %17, i32 noundef %252, ptr noundef %18, ptr noundef %253, ptr noundef %258), !dbg !671
  store i32 0, ptr %19, align 4, !dbg !672
  call void @addr_set_any(ptr noundef %25), !dbg !673
  %259 = getelementptr inbounds [256 x i8], ptr %8, i64 0, i64 0, !dbg !674
  %260 = load i8, ptr %259, align 16, !dbg !674
  %261 = icmp ne i8 %260, 0, !dbg !674
  br i1 %261, label %262, label %268, !dbg !676

262:                                              ; preds = %249
  %263 = getelementptr inbounds [256 x i8], ptr %8, i64 0, i64 0, !dbg !677
  %264 = call i32 @make_ioa_addr(ptr noundef %263, i32 noundef 0, ptr noundef %25), !dbg !680
  %265 = icmp slt i32 %264, 0, !dbg !681
  br i1 %265, label %266, label %267, !dbg !682

266:                                              ; preds = %262
  call void (i32, ptr, ...) @err(i32 noundef -1, ptr noundef null) #12, !dbg !683
  unreachable, !dbg !683

267:                                              ; preds = %262
  br label %268, !dbg !685

268:                                              ; preds = %267, %249
  %269 = load i32, ptr %15, align 4, !dbg !686
  %270 = call i32 @run_stunclient(ptr noundef %24, ptr noundef %23, ptr noundef %21, ptr noundef %20, ptr noundef %17, ptr noundef %18, i32 noundef 0, i32 noundef 0, i32 noundef %269), !dbg !687
  %271 = call i32 @addr_get_port(ptr noundef %24), !dbg !688
  call void @addr_set_port(ptr noundef %25, i32 noundef %271), !dbg !689
  %272 = load i32, ptr %15, align 4, !dbg !690
  %273 = call i32 @run_stunclient(ptr noundef %25, ptr noundef %23, ptr noundef %21, ptr noundef %20, ptr noundef %17, ptr noundef %18, i32 noundef 0, i32 noundef 0, i32 noundef %272), !dbg !691
  br label %274, !dbg !692

274:                                              ; preds = %268, %246
  %275 = load i32, ptr %11, align 4, !dbg !693
  %276 = icmp ne i32 %275, 0, !dbg !693
  br i1 %276, label %291, label %277, !dbg !695

277:                                              ; preds = %274
  %278 = load i32, ptr %10, align 4, !dbg !696
  %279 = icmp ne i32 %278, 0, !dbg !696
  br i1 %279, label %291, label %280, !dbg !697

280:                                              ; preds = %277
  %281 = load i32, ptr %14, align 4, !dbg !698
  %282 = icmp ne i32 %281, 0, !dbg !698
  br i1 %282, label %291, label %283, !dbg !699

283:                                              ; preds = %280
  %284 = load i32, ptr %16, align 4, !dbg !700
  %285 = icmp ne i32 %284, 0, !dbg !700
  br i1 %285, label %291, label %286, !dbg !701

286:                                              ; preds = %283
  %287 = load i32, ptr %12, align 4, !dbg !702
  %288 = icmp ne i32 %287, 0, !dbg !702
  br i1 %288, label %291, label %289, !dbg !703

289:                                              ; preds = %286
  %290 = call i32 (ptr, ...) @printf(ptr noundef @.str.22), !dbg !704
  br label %291, !dbg !706

291:                                              ; preds = %289, %286, %283, %280, %277, %274
  %292 = load i32, ptr @udp_fd, align 4, !dbg !707
  %293 = call i32 @close(i32 noundef %292), !dbg !707
  %294 = load i32, ptr @udp_fd2, align 4, !dbg !708
  %295 = call i32 @close(i32 noundef %294), !dbg !708
  ret i32 0, !dbg !709
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare void @set_logfile(ptr noundef) #3

declare i64 @set_system_parameters(i32 noundef) #3

declare void @addr_set_any(ptr noundef) #3

; Function Attrs: nounwind
declare i32 @getopt(i32 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nounwind willreturn memory(read)
declare i32 @atoi(ptr noundef) #5

; Function Attrs: nounwind
declare ptr @strncpy(ptr noundef, ptr noundef, i64 noundef) #4

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #6

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #5

declare i32 @printf(ptr noundef, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #0 !dbg !710 {
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  store i32 %0, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !715, metadata !DIExpression()), !dbg !716
  store ptr %1, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !717, metadata !DIExpression()), !dbg !718
  store ptr %2, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !719, metadata !DIExpression()), !dbg !720
  store ptr %3, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !721, metadata !DIExpression()), !dbg !722
  store i32 %4, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !723, metadata !DIExpression()), !dbg !724
  store ptr %5, ptr %14, align 8
  call void @llvm.dbg.declare(metadata ptr %14, metadata !725, metadata !DIExpression()), !dbg !726
  store ptr %6, ptr %15, align 8
  call void @llvm.dbg.declare(metadata ptr %15, metadata !727, metadata !DIExpression()), !dbg !728
  store ptr %7, ptr %16, align 8
  call void @llvm.dbg.declare(metadata ptr %16, metadata !729, metadata !DIExpression()), !dbg !730
  %17 = load ptr, ptr %10, align 8, !dbg !731
  call void @addr_set_any(ptr noundef %17), !dbg !732
  %18 = load ptr, ptr %15, align 8, !dbg !733
  %19 = getelementptr inbounds i8, ptr %18, i64 0, !dbg !733
  %20 = load i8, ptr %19, align 1, !dbg !733
  %21 = icmp ne i8 %20, 0, !dbg !733
  br i1 %21, label %22, label %29, !dbg !735

22:                                               ; preds = %8
  %23 = load ptr, ptr %15, align 8, !dbg !736
  %24 = load ptr, ptr %10, align 8, !dbg !739
  %25 = call i32 @make_ioa_addr(ptr noundef %23, i32 noundef 0, ptr noundef %24), !dbg !740
  %26 = icmp slt i32 %25, 0, !dbg !741
  br i1 %26, label %27, label %28, !dbg !742

27:                                               ; preds = %22
  call void (i32, ptr, ...) @err(i32 noundef -1, ptr noundef null) #12, !dbg !743
  unreachable, !dbg !743

28:                                               ; preds = %22
  br label %29, !dbg !745

29:                                               ; preds = %28, %8
  %30 = load i32, ptr %9, align 4, !dbg !746
  %31 = icmp ne i32 %30, 0, !dbg !746
  br i1 %31, label %34, label %32, !dbg !748

32:                                               ; preds = %29
  %33 = load ptr, ptr %12, align 8, !dbg !749
  store i32 -1, ptr %33, align 4, !dbg !750
  br label %34, !dbg !751

34:                                               ; preds = %32, %29
  %35 = load ptr, ptr %14, align 8, !dbg !752
  store i32 0, ptr %35, align 4, !dbg !753
  %36 = load ptr, ptr %16, align 8, !dbg !754
  %37 = load i32, ptr %13, align 4, !dbg !756
  %38 = load ptr, ptr %11, align 8, !dbg !757
  %39 = call i32 @make_ioa_addr(ptr noundef %36, i32 noundef %37, ptr noundef %38), !dbg !758
  %40 = icmp slt i32 %39, 0, !dbg !759
  br i1 %40, label %41, label %42, !dbg !760

41:                                               ; preds = %34
  call void (i32, ptr, ...) @err(i32 noundef -1, ptr noundef null) #12, !dbg !761
  unreachable, !dbg !761

42:                                               ; preds = %34
  ret void, !dbg !762
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_stunclient_lifetime(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) #0 !dbg !763 {
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct._stun_buffer, align 8
  %23 = alloca %struct._stun_buffer, align 8
  %24 = alloca i32, align 4
  store i32 %0, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !766, metadata !DIExpression()), !dbg !767
  store ptr %1, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !768, metadata !DIExpression()), !dbg !769
  store ptr %2, ptr %13, align 8
  call void @llvm.dbg.declare(metadata ptr %13, metadata !770, metadata !DIExpression()), !dbg !771
  store ptr %3, ptr %14, align 8
  call void @llvm.dbg.declare(metadata ptr %14, metadata !772, metadata !DIExpression()), !dbg !773
  store ptr %4, ptr %15, align 8
  call void @llvm.dbg.declare(metadata ptr %15, metadata !774, metadata !DIExpression()), !dbg !775
  store ptr %5, ptr %16, align 8
  call void @llvm.dbg.declare(metadata ptr %16, metadata !776, metadata !DIExpression()), !dbg !777
  store ptr %6, ptr %17, align 8
  call void @llvm.dbg.declare(metadata ptr %17, metadata !778, metadata !DIExpression()), !dbg !779
  store i32 %7, ptr %18, align 4
  call void @llvm.dbg.declare(metadata ptr %18, metadata !780, metadata !DIExpression()), !dbg !781
  store i32 %8, ptr %19, align 4
  call void @llvm.dbg.declare(metadata ptr %19, metadata !782, metadata !DIExpression()), !dbg !783
  store i32 %9, ptr %20, align 4
  call void @llvm.dbg.declare(metadata ptr %20, metadata !784, metadata !DIExpression()), !dbg !785
  call void @llvm.dbg.declare(metadata ptr %21, metadata !786, metadata !DIExpression()), !dbg !787
  store i32 0, ptr %21, align 4, !dbg !787
  call void @llvm.dbg.declare(metadata ptr %22, metadata !788, metadata !DIExpression()), !dbg !802
  call void @llvm.dbg.declare(metadata ptr %23, metadata !803, metadata !DIExpression()), !dbg !804
  call void @llvm.dbg.declare(metadata ptr %24, metadata !805, metadata !DIExpression()), !dbg !806
  %25 = load ptr, ptr %12, align 8, !dbg !807
  %26 = load ptr, ptr %16, align 8, !dbg !808
  %27 = load i32, ptr %26, align 4, !dbg !809
  %28 = load ptr, ptr %13, align 8, !dbg !810
  %29 = call i32 @init_socket(ptr noundef @udp_fd, ptr noundef %25, i32 noundef %27, ptr noundef %28), !dbg !811
  %30 = load i32, ptr @udp_fd, align 4, !dbg !812
  %31 = load ptr, ptr %12, align 8, !dbg !813
  %32 = load ptr, ptr %16, align 8, !dbg !814
  %33 = load ptr, ptr %13, align 8, !dbg !815
  %34 = load i32, ptr %18, align 4, !dbg !816
  %35 = load i32, ptr %19, align 4, !dbg !817
  %36 = load i32, ptr %20, align 4, !dbg !818
  %37 = call i32 @stunclient_send(ptr noundef %22, i32 noundef %30, ptr noundef %31, ptr noundef %32, ptr noundef %33, i32 noundef %34, i32 noundef %35, i32 noundef %36, i32 noundef -1), !dbg !819
  store i32 %37, ptr %21, align 4, !dbg !820
  %38 = load i32, ptr @udp_fd, align 4, !dbg !821
  %39 = load ptr, ptr %12, align 8, !dbg !822
  %40 = load ptr, ptr %14, align 8, !dbg !823
  %41 = load ptr, ptr %15, align 8, !dbg !824
  %42 = load ptr, ptr %17, align 8, !dbg !825
  %43 = call i32 @stunclient_receive(ptr noundef %22, i32 noundef %38, ptr noundef %39, ptr noundef %40, ptr noundef %41, ptr noundef %42), !dbg !826
  store i32 %43, ptr %21, align 4, !dbg !827
  %44 = load ptr, ptr %12, align 8, !dbg !828
  call void @addr_set_port(ptr noundef %44, i32 noundef 0), !dbg !829
  %45 = load i32, ptr %11, align 4, !dbg !830
  %46 = call i32 @sleep(i32 noundef %45), !dbg !831
  %47 = load ptr, ptr %12, align 8, !dbg !832
  %48 = load ptr, ptr %13, align 8, !dbg !833
  %49 = call i32 @init_socket(ptr noundef @udp_fd2, ptr noundef %47, i32 noundef 0, ptr noundef %48), !dbg !834
  %50 = load ptr, ptr %14, align 8, !dbg !835
  %51 = call i32 @addr_get_port(ptr noundef %50), !dbg !836
  store i32 %51, ptr %24, align 4, !dbg !837
  %52 = load i32, ptr @udp_fd2, align 4, !dbg !838
  %53 = load ptr, ptr %12, align 8, !dbg !839
  %54 = load ptr, ptr %16, align 8, !dbg !840
  %55 = load ptr, ptr %13, align 8, !dbg !841
  %56 = load i32, ptr %18, align 4, !dbg !842
  %57 = load i32, ptr %19, align 4, !dbg !843
  %58 = load i32, ptr %20, align 4, !dbg !844
  %59 = load i32, ptr %24, align 4, !dbg !845
  %60 = call i32 @stunclient_send(ptr noundef %23, i32 noundef %52, ptr noundef %53, ptr noundef %54, ptr noundef %55, i32 noundef %56, i32 noundef %57, i32 noundef %58, i32 noundef %59), !dbg !846
  store i32 %60, ptr %21, align 4, !dbg !847
  %61 = load i32, ptr @udp_fd, align 4, !dbg !848
  %62 = load ptr, ptr %12, align 8, !dbg !849
  %63 = load ptr, ptr %14, align 8, !dbg !850
  %64 = load ptr, ptr %15, align 8, !dbg !851
  %65 = load ptr, ptr %17, align 8, !dbg !852
  %66 = call i32 @stunclient_receive(ptr noundef %22, i32 noundef %61, ptr noundef %62, ptr noundef %63, ptr noundef %64, ptr noundef %65), !dbg !853
  store i32 %66, ptr %21, align 4, !dbg !854
  %67 = load i32, ptr @udp_fd, align 4, !dbg !855
  %68 = call i32 @close(i32 noundef %67), !dbg !855
  %69 = load i32, ptr @udp_fd2, align 4, !dbg !856
  %70 = call i32 @close(i32 noundef %69), !dbg !856
  %71 = load i32, ptr %21, align 4, !dbg !857
  ret i32 %71, !dbg !858
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_stunclient_hairpinning(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #0 !dbg !859 {
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct._stun_buffer, align 8
  %21 = alloca %struct._stun_buffer, align 8
  store ptr %0, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !862, metadata !DIExpression()), !dbg !863
  store ptr %1, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !864, metadata !DIExpression()), !dbg !865
  store ptr %2, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !866, metadata !DIExpression()), !dbg !867
  store ptr %3, ptr %13, align 8
  call void @llvm.dbg.declare(metadata ptr %13, metadata !868, metadata !DIExpression()), !dbg !869
  store ptr %4, ptr %14, align 8
  call void @llvm.dbg.declare(metadata ptr %14, metadata !870, metadata !DIExpression()), !dbg !871
  store ptr %5, ptr %15, align 8
  call void @llvm.dbg.declare(metadata ptr %15, metadata !872, metadata !DIExpression()), !dbg !873
  store i32 %6, ptr %16, align 4
  call void @llvm.dbg.declare(metadata ptr %16, metadata !874, metadata !DIExpression()), !dbg !875
  store i32 %7, ptr %17, align 4
  call void @llvm.dbg.declare(metadata ptr %17, metadata !876, metadata !DIExpression()), !dbg !877
  store i32 %8, ptr %18, align 4
  call void @llvm.dbg.declare(metadata ptr %18, metadata !878, metadata !DIExpression()), !dbg !879
  call void @llvm.dbg.declare(metadata ptr %19, metadata !880, metadata !DIExpression()), !dbg !881
  store i32 0, ptr %19, align 4, !dbg !881
  call void @llvm.dbg.declare(metadata ptr %20, metadata !882, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.declare(metadata ptr %21, metadata !884, metadata !DIExpression()), !dbg !885
  %22 = load ptr, ptr %10, align 8, !dbg !886
  %23 = load ptr, ptr %14, align 8, !dbg !887
  %24 = load i32, ptr %23, align 4, !dbg !888
  %25 = load ptr, ptr %11, align 8, !dbg !889
  %26 = call i32 @init_socket(ptr noundef @udp_fd, ptr noundef %22, i32 noundef %24, ptr noundef %25), !dbg !890
  %27 = load i32, ptr @udp_fd, align 4, !dbg !891
  %28 = load ptr, ptr %10, align 8, !dbg !892
  %29 = load ptr, ptr %14, align 8, !dbg !893
  %30 = load ptr, ptr %11, align 8, !dbg !894
  %31 = load i32, ptr %16, align 4, !dbg !895
  %32 = load i32, ptr %17, align 4, !dbg !896
  %33 = load i32, ptr %18, align 4, !dbg !897
  %34 = call i32 @stunclient_send(ptr noundef %20, i32 noundef %27, ptr noundef %28, ptr noundef %29, ptr noundef %30, i32 noundef %31, i32 noundef %32, i32 noundef %33, i32 noundef -1), !dbg !898
  store i32 %34, ptr %19, align 4, !dbg !899
  %35 = load i32, ptr @udp_fd, align 4, !dbg !900
  %36 = load ptr, ptr %10, align 8, !dbg !901
  %37 = load ptr, ptr %12, align 8, !dbg !902
  %38 = load ptr, ptr %13, align 8, !dbg !903
  %39 = load ptr, ptr %15, align 8, !dbg !904
  %40 = call i32 @stunclient_receive(ptr noundef %20, i32 noundef %35, ptr noundef %36, ptr noundef %37, ptr noundef %38, ptr noundef %39), !dbg !905
  store i32 %40, ptr %19, align 4, !dbg !906
  %41 = load ptr, ptr %11, align 8, !dbg !907
  %42 = load ptr, ptr %12, align 8, !dbg !908
  call void @addr_cpy(ptr noundef %41, ptr noundef %42), !dbg !909
  %43 = load ptr, ptr %10, align 8, !dbg !910
  call void @addr_set_port(ptr noundef %43, i32 noundef 0), !dbg !911
  %44 = load ptr, ptr %10, align 8, !dbg !912
  %45 = load ptr, ptr %11, align 8, !dbg !913
  %46 = call i32 @init_socket(ptr noundef @udp_fd2, ptr noundef %44, i32 noundef 0, ptr noundef %45), !dbg !914
  %47 = load i32, ptr @udp_fd2, align 4, !dbg !915
  %48 = load ptr, ptr %10, align 8, !dbg !916
  %49 = load ptr, ptr %14, align 8, !dbg !917
  %50 = load ptr, ptr %11, align 8, !dbg !918
  %51 = load i32, ptr %16, align 4, !dbg !919
  %52 = load i32, ptr %17, align 4, !dbg !920
  %53 = load i32, ptr %18, align 4, !dbg !921
  %54 = call i32 @stunclient_send(ptr noundef %21, i32 noundef %47, ptr noundef %48, ptr noundef %49, ptr noundef %50, i32 noundef %51, i32 noundef %52, i32 noundef %53, i32 noundef -1), !dbg !922
  store i32 %54, ptr %19, align 4, !dbg !923
  %55 = load i32, ptr @udp_fd, align 4, !dbg !924
  %56 = load ptr, ptr %10, align 8, !dbg !925
  %57 = load ptr, ptr %12, align 8, !dbg !926
  %58 = load ptr, ptr %13, align 8, !dbg !927
  %59 = load ptr, ptr %15, align 8, !dbg !928
  %60 = call i32 @stunclient_receive(ptr noundef %20, i32 noundef %55, ptr noundef %56, ptr noundef %57, ptr noundef %58, ptr noundef %59), !dbg !929
  store i32 %60, ptr %19, align 4, !dbg !930
  %61 = load i32, ptr %19, align 4, !dbg !931
  %62 = icmp ne i32 %61, 0, !dbg !931
  br i1 %62, label %63, label %70, !dbg !933

63:                                               ; preds = %9
  %64 = load i32, ptr @udp_fd2, align 4, !dbg !934
  %65 = load ptr, ptr %10, align 8, !dbg !936
  %66 = load ptr, ptr %12, align 8, !dbg !937
  %67 = load ptr, ptr %13, align 8, !dbg !938
  %68 = load ptr, ptr %15, align 8, !dbg !939
  %69 = call i32 @stunclient_receive(ptr noundef %21, i32 noundef %64, ptr noundef %65, ptr noundef %66, ptr noundef %67, ptr noundef %68), !dbg !940
  store i32 %69, ptr %19, align 4, !dbg !941
  br label %70, !dbg !942

70:                                               ; preds = %63, %9
  %71 = load i32, ptr @udp_fd, align 4, !dbg !943
  %72 = call i32 @close(i32 noundef %71), !dbg !943
  %73 = load i32, ptr @udp_fd2, align 4, !dbg !944
  %74 = call i32 @close(i32 noundef %73), !dbg !944
  %75 = load i32, ptr %19, align 4, !dbg !945
  ret i32 %75, !dbg !946
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_stunclient(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #0 !dbg !947 {
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct._stun_buffer, align 8
  store ptr %0, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !948, metadata !DIExpression()), !dbg !949
  store ptr %1, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !950, metadata !DIExpression()), !dbg !951
  store ptr %2, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !952, metadata !DIExpression()), !dbg !953
  store ptr %3, ptr %13, align 8
  call void @llvm.dbg.declare(metadata ptr %13, metadata !954, metadata !DIExpression()), !dbg !955
  store ptr %4, ptr %14, align 8
  call void @llvm.dbg.declare(metadata ptr %14, metadata !956, metadata !DIExpression()), !dbg !957
  store ptr %5, ptr %15, align 8
  call void @llvm.dbg.declare(metadata ptr %15, metadata !958, metadata !DIExpression()), !dbg !959
  store i32 %6, ptr %16, align 4
  call void @llvm.dbg.declare(metadata ptr %16, metadata !960, metadata !DIExpression()), !dbg !961
  store i32 %7, ptr %17, align 4
  call void @llvm.dbg.declare(metadata ptr %17, metadata !962, metadata !DIExpression()), !dbg !963
  store i32 %8, ptr %18, align 4
  call void @llvm.dbg.declare(metadata ptr %18, metadata !964, metadata !DIExpression()), !dbg !965
  call void @llvm.dbg.declare(metadata ptr %19, metadata !966, metadata !DIExpression()), !dbg !967
  store i32 0, ptr %19, align 4, !dbg !967
  call void @llvm.dbg.declare(metadata ptr %20, metadata !968, metadata !DIExpression()), !dbg !969
  %21 = load ptr, ptr %10, align 8, !dbg !970
  %22 = load ptr, ptr %14, align 8, !dbg !971
  %23 = load i32, ptr %22, align 4, !dbg !972
  %24 = load ptr, ptr %11, align 8, !dbg !973
  %25 = call i32 @init_socket(ptr noundef @udp_fd, ptr noundef %21, i32 noundef %23, ptr noundef %24), !dbg !974
  %26 = load i32, ptr @udp_fd, align 4, !dbg !975
  %27 = load ptr, ptr %10, align 8, !dbg !976
  %28 = load ptr, ptr %14, align 8, !dbg !977
  %29 = load ptr, ptr %11, align 8, !dbg !978
  %30 = load i32, ptr %16, align 4, !dbg !979
  %31 = load i32, ptr %17, align 4, !dbg !980
  %32 = load i32, ptr %18, align 4, !dbg !981
  %33 = call i32 @stunclient_send(ptr noundef %20, i32 noundef %26, ptr noundef %27, ptr noundef %28, ptr noundef %29, i32 noundef %30, i32 noundef %31, i32 noundef %32, i32 noundef -1), !dbg !982
  store i32 %33, ptr %19, align 4, !dbg !983
  %34 = load i32, ptr @udp_fd, align 4, !dbg !984
  %35 = load ptr, ptr %10, align 8, !dbg !985
  %36 = load ptr, ptr %12, align 8, !dbg !986
  %37 = load ptr, ptr %13, align 8, !dbg !987
  %38 = load ptr, ptr %15, align 8, !dbg !988
  %39 = call i32 @stunclient_receive(ptr noundef %20, i32 noundef %34, ptr noundef %35, ptr noundef %36, ptr noundef %37, ptr noundef %38), !dbg !989
  store i32 %39, ptr %19, align 4, !dbg !990
  %40 = load i32, ptr @udp_fd, align 4, !dbg !991
  %41 = call i32 @close(i32 noundef %40), !dbg !991
  %42 = load i32, ptr %19, align 4, !dbg !992
  ret i32 %42, !dbg !993
}

declare i32 @addr_eq(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @discoveryresult(ptr noundef %0) #0 !dbg !994 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !997, metadata !DIExpression()), !dbg !998
  %3 = call i32 (ptr, ...) @printf(ptr noundef @.str.25), !dbg !999
  %4 = load ptr, ptr %2, align 8, !dbg !1000
  %5 = call i32 (ptr, ...) @printf(ptr noundef @.str.43, ptr noundef %4), !dbg !1001
  %6 = call i32 (ptr, ...) @printf(ptr noundef @.str.25), !dbg !1002
  ret void, !dbg !1003
}

declare i32 @addr_any(ptr noundef) #3

declare void @addr_cpy(ptr noundef, ptr noundef) #3

declare void @addr_set_port(ptr noundef, i32 noundef) #3

declare i32 @make_ioa_addr(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noreturn
declare void @err(i32 noundef, ptr noundef, ...) #7

declare i32 @addr_get_port(ptr noundef) #3

declare i32 @close(i32 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_socket(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 !dbg !1004 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1007, metadata !DIExpression()), !dbg !1008
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1009, metadata !DIExpression()), !dbg !1010
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1011, metadata !DIExpression()), !dbg !1012
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1013, metadata !DIExpression()), !dbg !1014
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1015, metadata !DIExpression()), !dbg !1016
  store i32 0, ptr %9, align 4, !dbg !1016
  %10 = load ptr, ptr %8, align 8, !dbg !1017
  %11 = getelementptr inbounds %struct.sockaddr, ptr %10, i32 0, i32 0, !dbg !1018
  %12 = load i16, ptr %11, align 4, !dbg !1018
  %13 = zext i16 %12 to i32, !dbg !1017
  %14 = call i32 @socket(i32 noundef %13, i32 noundef 2, i32 noundef 0) #9, !dbg !1019
  %15 = load ptr, ptr %5, align 8, !dbg !1020
  store i32 %14, ptr %15, align 4, !dbg !1021
  %16 = load i32, ptr @udp_fd, align 4, !dbg !1022
  %17 = icmp slt i32 %16, 0, !dbg !1024
  br i1 %17, label %18, label %19, !dbg !1025

18:                                               ; preds = %4
  call void (i32, ptr, ...) @err(i32 noundef -1, ptr noundef null) #12, !dbg !1026
  unreachable, !dbg !1026

19:                                               ; preds = %4
  %20 = load i32, ptr %7, align 4, !dbg !1027
  %21 = icmp sge i32 %20, 0, !dbg !1029
  br i1 %21, label %22, label %25, !dbg !1030

22:                                               ; preds = %19
  %23 = load ptr, ptr %6, align 8, !dbg !1031
  %24 = load i32, ptr %7, align 4, !dbg !1033
  call void @addr_set_port(ptr noundef %23, i32 noundef %24), !dbg !1034
  br label %25, !dbg !1035

25:                                               ; preds = %22, %19
  %26 = load ptr, ptr %6, align 8, !dbg !1036
  %27 = call i32 @addr_any(ptr noundef %26), !dbg !1038
  %28 = icmp ne i32 %27, 0, !dbg !1038
  br i1 %28, label %37, label %29, !dbg !1039

29:                                               ; preds = %25
  %30 = load ptr, ptr %5, align 8, !dbg !1040
  %31 = load i32, ptr %30, align 4, !dbg !1043
  %32 = load ptr, ptr %6, align 8, !dbg !1044
  %33 = call i32 @addr_bind(i32 noundef %31, ptr noundef %32, i32 noundef 0, i32 noundef 1, i32 noundef 17), !dbg !1045
  %34 = icmp slt i32 %33, 0, !dbg !1046
  br i1 %34, label %35, label %36, !dbg !1047

35:                                               ; preds = %29
  call void (i32, ptr, ...) @err(i32 noundef -1, ptr noundef null) #12, !dbg !1048
  unreachable, !dbg !1048

36:                                               ; preds = %29
  br label %37, !dbg !1050

37:                                               ; preds = %36, %25
  %38 = load i32, ptr %9, align 4, !dbg !1051
  ret i32 %38, !dbg !1052
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stunclient_send(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #0 !dbg !1053 {
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store ptr %0, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1057, metadata !DIExpression()), !dbg !1058
  store i32 %1, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1059, metadata !DIExpression()), !dbg !1060
  store ptr %2, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1061, metadata !DIExpression()), !dbg !1062
  store ptr %3, ptr %13, align 8
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1063, metadata !DIExpression()), !dbg !1064
  store ptr %4, ptr %14, align 8
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1065, metadata !DIExpression()), !dbg !1066
  store i32 %5, ptr %15, align 4
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1067, metadata !DIExpression()), !dbg !1068
  store i32 %6, ptr %16, align 4
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1069, metadata !DIExpression()), !dbg !1070
  store i32 %7, ptr %17, align 4
  call void @llvm.dbg.declare(metadata ptr %17, metadata !1071, metadata !DIExpression()), !dbg !1072
  store i32 %8, ptr %18, align 4
  call void @llvm.dbg.declare(metadata ptr %18, metadata !1073, metadata !DIExpression()), !dbg !1074
  call void @llvm.dbg.declare(metadata ptr %19, metadata !1075, metadata !DIExpression()), !dbg !1076
  store i32 0, ptr %19, align 4, !dbg !1076
  %22 = load ptr, ptr %10, align 8, !dbg !1077
  call void @stun_prepare_binding_request(ptr noundef %22), !dbg !1078
  %23 = load i32, ptr %18, align 4, !dbg !1079
  %24 = icmp sge i32 %23, 0, !dbg !1081
  br i1 %24, label %25, label %34, !dbg !1082

25:                                               ; preds = %9
  %26 = load ptr, ptr %10, align 8, !dbg !1083
  %27 = getelementptr inbounds %struct._stun_buffer, ptr %26, i32 0, i32 1, !dbg !1085
  %28 = getelementptr inbounds [65507 x i8], ptr %27, i64 0, i64 0, !dbg !1086
  %29 = load ptr, ptr %10, align 8, !dbg !1087
  %30 = getelementptr inbounds %struct._stun_buffer, ptr %29, i32 0, i32 2, !dbg !1088
  %31 = load i32, ptr %18, align 4, !dbg !1089
  %32 = trunc i32 %31 to i16, !dbg !1090
  %33 = call i32 @stun_attr_add_response_port_str(ptr noundef %28, ptr noundef %30, i16 noundef zeroext %32), !dbg !1091
  br label %34, !dbg !1092

34:                                               ; preds = %25, %9
  %35 = load i32, ptr %15, align 4, !dbg !1093
  %36 = icmp ne i32 %35, 0, !dbg !1093
  br i1 %36, label %40, label %37, !dbg !1095

37:                                               ; preds = %34
  %38 = load i32, ptr %16, align 4, !dbg !1096
  %39 = icmp ne i32 %38, 0, !dbg !1096
  br i1 %39, label %40, label %49, !dbg !1097

40:                                               ; preds = %37, %34
  %41 = load ptr, ptr %10, align 8, !dbg !1098
  %42 = getelementptr inbounds %struct._stun_buffer, ptr %41, i32 0, i32 1, !dbg !1100
  %43 = getelementptr inbounds [65507 x i8], ptr %42, i64 0, i64 0, !dbg !1098
  %44 = load ptr, ptr %10, align 8, !dbg !1101
  %45 = getelementptr inbounds %struct._stun_buffer, ptr %44, i32 0, i32 2, !dbg !1102
  %46 = load i32, ptr %15, align 4, !dbg !1103
  %47 = load i32, ptr %16, align 4, !dbg !1104
  %48 = call i32 @stun_attr_add_change_request_str(ptr noundef %43, ptr noundef %45, i32 noundef %46, i32 noundef %47), !dbg !1105
  br label %49, !dbg !1106

49:                                               ; preds = %40, %37
  %50 = load i32, ptr %17, align 4, !dbg !1107
  %51 = icmp ne i32 %50, 0, !dbg !1107
  br i1 %51, label %52, label %63, !dbg !1109

52:                                               ; preds = %49
  %53 = load ptr, ptr %10, align 8, !dbg !1110
  %54 = getelementptr inbounds %struct._stun_buffer, ptr %53, i32 0, i32 1, !dbg !1113
  %55 = getelementptr inbounds [65507 x i8], ptr %54, i64 0, i64 0, !dbg !1110
  %56 = load ptr, ptr %10, align 8, !dbg !1114
  %57 = getelementptr inbounds %struct._stun_buffer, ptr %56, i32 0, i32 2, !dbg !1115
  %58 = call i32 @stun_attr_add_padding_str(ptr noundef %55, ptr noundef %57, i16 noundef zeroext 1500), !dbg !1116
  %59 = icmp slt i32 %58, 0, !dbg !1117
  br i1 %59, label %60, label %62, !dbg !1118

60:                                               ; preds = %52
  %61 = call i32 (ptr, ...) @printf(ptr noundef @.str.23, ptr noundef @__FUNCTION__.stunclient_send), !dbg !1119
  br label %62, !dbg !1121

62:                                               ; preds = %60, %52
  br label %63, !dbg !1122

63:                                               ; preds = %62, %49
  call void @llvm.dbg.declare(metadata ptr %20, metadata !1123, metadata !DIExpression()), !dbg !1125
  store i32 0, ptr %20, align 4, !dbg !1125
  call void @llvm.dbg.declare(metadata ptr %21, metadata !1126, metadata !DIExpression()), !dbg !1127
  %64 = load ptr, ptr %14, align 8, !dbg !1128
  %65 = call i32 @get_ioa_addr_len(ptr noundef %64), !dbg !1129
  store i32 %65, ptr %21, align 4, !dbg !1127
  br label %66, !dbg !1130

66:                                               ; preds = %95, %63
  %67 = load i32, ptr %11, align 4, !dbg !1131
  %68 = load ptr, ptr %10, align 8, !dbg !1133
  %69 = getelementptr inbounds %struct._stun_buffer, ptr %68, i32 0, i32 1, !dbg !1134
  %70 = getelementptr inbounds [65507 x i8], ptr %69, i64 0, i64 0, !dbg !1133
  %71 = load ptr, ptr %10, align 8, !dbg !1135
  %72 = getelementptr inbounds %struct._stun_buffer, ptr %71, i32 0, i32 2, !dbg !1136
  %73 = load i64, ptr %72, align 8, !dbg !1136
  %74 = load ptr, ptr %14, align 8, !dbg !1137
  %75 = load i32, ptr %21, align 4, !dbg !1138
  %76 = call i64 @sendto(i32 noundef %67, ptr noundef %70, i64 noundef %73, i32 noundef 0, ptr noundef %74, i32 noundef %75), !dbg !1139
  %77 = trunc i64 %76 to i32, !dbg !1139
  store i32 %77, ptr %20, align 4, !dbg !1140
  br label %78, !dbg !1141

78:                                               ; preds = %66
  %79 = load i32, ptr %20, align 4, !dbg !1142
  %80 = icmp slt i32 %79, 0, !dbg !1143
  br i1 %80, label %81, label %95, !dbg !1144

81:                                               ; preds = %78
  %82 = call ptr @__errno_location() #13, !dbg !1145
  %83 = load i32, ptr %82, align 4, !dbg !1145
  %84 = icmp eq i32 %83, 4, !dbg !1146
  br i1 %84, label %93, label %85, !dbg !1147

85:                                               ; preds = %81
  %86 = call ptr @__errno_location() #13, !dbg !1148
  %87 = load i32, ptr %86, align 4, !dbg !1148
  %88 = icmp eq i32 %87, 105, !dbg !1149
  br i1 %88, label %93, label %89, !dbg !1150

89:                                               ; preds = %85
  %90 = call ptr @__errno_location() #13, !dbg !1151
  %91 = load i32, ptr %90, align 4, !dbg !1151
  %92 = icmp eq i32 %91, 11, !dbg !1152
  br label %93, !dbg !1150

93:                                               ; preds = %89, %85, %81
  %94 = phi i1 [ true, %85 ], [ true, %81 ], [ %92, %89 ]
  br label %95

95:                                               ; preds = %93, %78
  %96 = phi i1 [ false, %78 ], [ %94, %93 ], !dbg !1153
  br i1 %96, label %66, label %97, !dbg !1141, !llvm.loop !1154

97:                                               ; preds = %95
  %98 = load i32, ptr %20, align 4, !dbg !1156
  %99 = icmp slt i32 %98, 0, !dbg !1158
  br i1 %99, label %100, label %101, !dbg !1159

100:                                              ; preds = %97
  call void (i32, ptr, ...) @err(i32 noundef -1, ptr noundef null) #12, !dbg !1160
  unreachable, !dbg !1160

101:                                              ; preds = %97
  %102 = load i32, ptr %11, align 4, !dbg !1161
  %103 = load ptr, ptr %12, align 8, !dbg !1163
  %104 = call i32 @addr_get_from_sock(i32 noundef %102, ptr noundef %103), !dbg !1164
  %105 = icmp slt i32 %104, 0, !dbg !1165
  br i1 %105, label %106, label %108, !dbg !1166

106:                                              ; preds = %101
  %107 = call i32 (ptr, ...) @printf(ptr noundef @.str.24, ptr noundef @__FUNCTION__.stunclient_send), !dbg !1167
  br label %112, !dbg !1169

108:                                              ; preds = %101
  %109 = load ptr, ptr %12, align 8, !dbg !1170
  %110 = call i32 @addr_get_port(ptr noundef %109), !dbg !1172
  %111 = load ptr, ptr %13, align 8, !dbg !1173
  store i32 %110, ptr %111, align 4, !dbg !1174
  br label %112

112:                                              ; preds = %108, %106
  %113 = load i32, ptr %19, align 4, !dbg !1175
  ret i32 %113, !dbg !1176
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stunclient_receive(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #0 !dbg !1177 {
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca ptr, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.timeval, align 8
  %19 = alloca ptr, align 8
  %20 = alloca %union.ioa_addr, align 4
  %21 = alloca %union.ioa_addr, align 4
  %22 = alloca i32, align 4
  %23 = alloca [1025 x i8], align 16
  %24 = alloca i64, align 8
  store ptr %0, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1180, metadata !DIExpression()), !dbg !1181
  store i32 %1, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1182, metadata !DIExpression()), !dbg !1183
  store ptr %2, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1184, metadata !DIExpression()), !dbg !1185
  store ptr %3, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1186, metadata !DIExpression()), !dbg !1187
  store ptr %4, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1188, metadata !DIExpression()), !dbg !1189
  store ptr %5, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1190, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1192, metadata !DIExpression()), !dbg !1193
  store i32 0, ptr %13, align 4, !dbg !1193
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1194, metadata !DIExpression()), !dbg !1196
  store i32 0, ptr %14, align 4, !dbg !1196
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1197, metadata !DIExpression()), !dbg !1198
  %25 = load ptr, ptr %7, align 8, !dbg !1199
  %26 = getelementptr inbounds %struct._stun_buffer, ptr %25, i32 0, i32 1, !dbg !1200
  %27 = getelementptr inbounds [65507 x i8], ptr %26, i64 0, i64 0, !dbg !1199
  store ptr %27, ptr %15, align 8, !dbg !1198
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1201, metadata !DIExpression()), !dbg !1202
  store i32 0, ptr %16, align 4, !dbg !1202
  call void @llvm.dbg.declare(metadata ptr %17, metadata !1203, metadata !DIExpression()), !dbg !1205
  store i32 65507, ptr %17, align 4, !dbg !1205
  call void @llvm.dbg.declare(metadata ptr %18, metadata !1206, metadata !DIExpression()), !dbg !1215
  %28 = getelementptr inbounds %struct.timeval, ptr %18, i32 0, i32 0, !dbg !1216
  store i64 3, ptr %28, align 8, !dbg !1217
  %29 = getelementptr inbounds %struct.timeval, ptr %18, i32 0, i32 1, !dbg !1218
  store i64 0, ptr %29, align 8, !dbg !1219
  %30 = load i32, ptr %8, align 4, !dbg !1220
  %31 = call i32 @setsockopt(i32 noundef %30, i32 noundef 1, i32 noundef 20, ptr noundef %18, i32 noundef 16) #9, !dbg !1221
  br label %32, !dbg !1222

32:                                               ; preds = %58, %6
  %33 = load i32, ptr %8, align 4, !dbg !1223
  %34 = load ptr, ptr %15, align 8, !dbg !1225
  %35 = load i32, ptr %16, align 4, !dbg !1226
  %36 = sub nsw i32 65507, %35, !dbg !1227
  %37 = sext i32 %36 to i64, !dbg !1228
  %38 = call i64 @recv(i32 noundef %33, ptr noundef %34, i64 noundef %37, i32 noundef 0), !dbg !1229
  %39 = trunc i64 %38 to i32, !dbg !1229
  store i32 %39, ptr %14, align 4, !dbg !1230
  %40 = load i32, ptr %14, align 4, !dbg !1231
  %41 = icmp sgt i32 %40, 0, !dbg !1233
  br i1 %41, label %42, label %50, !dbg !1234

42:                                               ; preds = %32
  %43 = load i32, ptr %14, align 4, !dbg !1235
  %44 = load i32, ptr %16, align 4, !dbg !1237
  %45 = add nsw i32 %44, %43, !dbg !1237
  store i32 %45, ptr %16, align 4, !dbg !1237
  %46 = load i32, ptr %14, align 4, !dbg !1238
  %47 = load ptr, ptr %15, align 8, !dbg !1239
  %48 = sext i32 %46 to i64, !dbg !1239
  %49 = getelementptr inbounds i8, ptr %47, i64 %48, !dbg !1239
  store ptr %49, ptr %15, align 8, !dbg !1239
  br label %60, !dbg !1240

50:                                               ; preds = %32
  br label %51, !dbg !1241

51:                                               ; preds = %50
  %52 = load i32, ptr %14, align 4, !dbg !1242
  %53 = icmp slt i32 %52, 0, !dbg !1243
  br i1 %53, label %54, label %58, !dbg !1244

54:                                               ; preds = %51
  %55 = call ptr @__errno_location() #13, !dbg !1245
  %56 = load i32, ptr %55, align 4, !dbg !1245
  %57 = icmp eq i32 %56, 4, !dbg !1246
  br label %58

58:                                               ; preds = %54, %51
  %59 = phi i1 [ false, %51 ], [ %57, %54 ], !dbg !1247
  br i1 %59, label %32, label %60, !dbg !1241, !llvm.loop !1248

60:                                               ; preds = %58, %42
  %61 = load i32, ptr %16, align 4, !dbg !1250
  %62 = icmp sgt i32 %61, 0, !dbg !1252
  br i1 %62, label %63, label %65, !dbg !1253

63:                                               ; preds = %60
  %64 = load i32, ptr %16, align 4, !dbg !1254
  store i32 %64, ptr %14, align 4, !dbg !1255
  br label %65, !dbg !1256

65:                                               ; preds = %63, %60
  %66 = load i32, ptr %14, align 4, !dbg !1257
  %67 = sext i32 %66 to i64, !dbg !1257
  %68 = load ptr, ptr %7, align 8, !dbg !1258
  %69 = getelementptr inbounds %struct._stun_buffer, ptr %68, i32 0, i32 2, !dbg !1259
  store i64 %67, ptr %69, align 8, !dbg !1260
  %70 = load ptr, ptr %7, align 8, !dbg !1261
  %71 = call i32 @stun_is_command_message(ptr noundef %70), !dbg !1263
  %72 = icmp ne i32 %71, 0, !dbg !1263
  br i1 %72, label %73, label %184, !dbg !1264

73:                                               ; preds = %65
  %74 = load ptr, ptr %7, align 8, !dbg !1265
  %75 = call i32 @stun_is_response(ptr noundef %74), !dbg !1268
  %76 = icmp ne i32 %75, 0, !dbg !1268
  br i1 %76, label %77, label %174, !dbg !1269

77:                                               ; preds = %73
  %78 = load ptr, ptr %7, align 8, !dbg !1270
  %79 = call i32 @stun_is_success_response(ptr noundef %78), !dbg !1273
  %80 = icmp ne i32 %79, 0, !dbg !1273
  br i1 %80, label %81, label %160, !dbg !1274

81:                                               ; preds = %77
  %82 = load ptr, ptr %7, align 8, !dbg !1275
  %83 = call i32 @stun_is_binding_response(ptr noundef %82), !dbg !1278
  %84 = icmp ne i32 %83, 0, !dbg !1278
  br i1 %84, label %85, label %157, !dbg !1279

85:                                               ; preds = %81
  %86 = load ptr, ptr %10, align 8, !dbg !1280
  call void @addr_set_any(ptr noundef %86), !dbg !1282
  %87 = load ptr, ptr %7, align 8, !dbg !1283
  %88 = load ptr, ptr %10, align 8, !dbg !1285
  %89 = call i32 @stun_attr_get_first_addr(ptr noundef %87, i16 noundef zeroext 32, ptr noundef %88, ptr noundef null), !dbg !1286
  %90 = icmp sge i32 %89, 0, !dbg !1287
  br i1 %90, label %91, label %154, !dbg !1288

91:                                               ; preds = %85
  call void @llvm.dbg.declare(metadata ptr %19, metadata !1289, metadata !DIExpression()), !dbg !1295
  %92 = load ptr, ptr %7, align 8, !dbg !1296
  %93 = getelementptr inbounds %struct._stun_buffer, ptr %92, i32 0, i32 1, !dbg !1297
  %94 = getelementptr inbounds [65507 x i8], ptr %93, i64 0, i64 0, !dbg !1296
  %95 = load ptr, ptr %7, align 8, !dbg !1298
  %96 = getelementptr inbounds %struct._stun_buffer, ptr %95, i32 0, i32 2, !dbg !1299
  %97 = load i64, ptr %96, align 8, !dbg !1299
  %98 = call ptr @stun_attr_get_first_by_type_str(ptr noundef %94, i64 noundef %97, i16 noundef zeroext -32724), !dbg !1300
  store ptr %98, ptr %19, align 8, !dbg !1295
  %99 = load ptr, ptr %19, align 8, !dbg !1301
  %100 = icmp ne ptr %99, null, !dbg !1301
  br i1 %100, label %101, label %151, !dbg !1303

101:                                              ; preds = %91
  %102 = load ptr, ptr %12, align 8, !dbg !1304
  store i32 1, ptr %102, align 4, !dbg !1306
  %103 = call i32 (ptr, ...) @printf(ptr noundef @.str.25), !dbg !1307
  %104 = load i32, ptr @counter, align 4, !dbg !1308
  %105 = add nsw i32 %104, 1, !dbg !1308
  store i32 %105, ptr @counter, align 4, !dbg !1308
  %106 = call i32 (ptr, ...) @printf(ptr noundef @.str.26, i32 noundef %105), !dbg !1309
  call void @llvm.dbg.declare(metadata ptr %20, metadata !1310, metadata !DIExpression()), !dbg !1311
  call void @addr_set_any(ptr noundef %20), !dbg !1312
  %107 = load ptr, ptr %7, align 8, !dbg !1313
  %108 = call i32 @stun_attr_get_first_addr(ptr noundef %107, i16 noundef zeroext 1, ptr noundef %20, ptr noundef null), !dbg !1315
  %109 = icmp sge i32 %108, 0, !dbg !1316
  br i1 %109, label %110, label %119, !dbg !1317

110:                                              ; preds = %101
  %111 = load ptr, ptr %10, align 8, !dbg !1318
  %112 = call i32 @addr_eq(ptr noundef %20, ptr noundef %111), !dbg !1321
  %113 = icmp ne i32 %112, 0, !dbg !1321
  br i1 %113, label %116, label %114, !dbg !1322

114:                                              ; preds = %110
  %115 = call i32 (ptr, ...) @printf(ptr noundef @.str.27), !dbg !1323
  call void @addr_debug_print(i32 noundef 1, ptr noundef %20, ptr noundef @.str.28), !dbg !1325
  br label %118, !dbg !1326

116:                                              ; preds = %110
  %117 = call i32 (ptr, ...) @printf(ptr noundef @.str.29), !dbg !1327
  br label %118

118:                                              ; preds = %116, %114
  br label %121, !dbg !1329

119:                                              ; preds = %101
  %120 = call i32 (ptr, ...) @printf(ptr noundef @.str.30), !dbg !1330
  br label %121

121:                                              ; preds = %119, %118
  %122 = load ptr, ptr %7, align 8, !dbg !1332
  %123 = getelementptr inbounds %struct._stun_buffer, ptr %122, i32 0, i32 1, !dbg !1333
  %124 = getelementptr inbounds [65507 x i8], ptr %123, i64 0, i64 0, !dbg !1332
  %125 = load ptr, ptr %7, align 8, !dbg !1334
  %126 = getelementptr inbounds %struct._stun_buffer, ptr %125, i32 0, i32 2, !dbg !1335
  %127 = load i64, ptr %126, align 8, !dbg !1335
  %128 = load ptr, ptr %19, align 8, !dbg !1336
  %129 = load ptr, ptr %11, align 8, !dbg !1337
  %130 = call i32 @stun_attr_get_addr_str(ptr noundef %124, i64 noundef %127, ptr noundef %128, ptr noundef %129, ptr noundef null), !dbg !1338
  %131 = load ptr, ptr %7, align 8, !dbg !1339
  %132 = getelementptr inbounds %struct._stun_buffer, ptr %131, i32 0, i32 1, !dbg !1340
  %133 = getelementptr inbounds [65507 x i8], ptr %132, i64 0, i64 0, !dbg !1339
  %134 = load ptr, ptr %7, align 8, !dbg !1341
  %135 = getelementptr inbounds %struct._stun_buffer, ptr %134, i32 0, i32 2, !dbg !1342
  %136 = load i64, ptr %135, align 8, !dbg !1342
  %137 = call ptr @stun_attr_get_first_by_type_str(ptr noundef %133, i64 noundef %136, i16 noundef zeroext -32725), !dbg !1343
  store ptr %137, ptr %19, align 8, !dbg !1344
  %138 = load ptr, ptr %19, align 8, !dbg !1345
  %139 = icmp ne ptr %138, null, !dbg !1345
  br i1 %139, label %140, label %149, !dbg !1347

140:                                              ; preds = %121
  call void @llvm.dbg.declare(metadata ptr %21, metadata !1348, metadata !DIExpression()), !dbg !1350
  %141 = load ptr, ptr %7, align 8, !dbg !1351
  %142 = getelementptr inbounds %struct._stun_buffer, ptr %141, i32 0, i32 1, !dbg !1352
  %143 = getelementptr inbounds [65507 x i8], ptr %142, i64 0, i64 0, !dbg !1351
  %144 = load ptr, ptr %7, align 8, !dbg !1353
  %145 = getelementptr inbounds %struct._stun_buffer, ptr %144, i32 0, i32 2, !dbg !1354
  %146 = load i64, ptr %145, align 8, !dbg !1354
  %147 = load ptr, ptr %19, align 8, !dbg !1355
  %148 = call i32 @stun_attr_get_addr_str(ptr noundef %143, i64 noundef %146, ptr noundef %147, ptr noundef %21, ptr noundef null), !dbg !1356
  call void @addr_debug_print(i32 noundef 1, ptr noundef %21, ptr noundef @.str.31), !dbg !1357
  br label %149, !dbg !1358

149:                                              ; preds = %140, %121
  %150 = load ptr, ptr %11, align 8, !dbg !1359
  call void @addr_debug_print(i32 noundef 1, ptr noundef %150, ptr noundef @.str.32), !dbg !1360
  br label %151, !dbg !1361

151:                                              ; preds = %149, %91
  %152 = load ptr, ptr %10, align 8, !dbg !1362
  call void @addr_debug_print(i32 noundef 1, ptr noundef %152, ptr noundef @.str.33), !dbg !1363
  %153 = load ptr, ptr %9, align 8, !dbg !1364
  call void @addr_debug_print(i32 noundef 1, ptr noundef %153, ptr noundef @.str.34), !dbg !1365
  br label %156, !dbg !1366

154:                                              ; preds = %85
  %155 = call i32 (ptr, ...) @printf(ptr noundef @.str.35), !dbg !1367
  br label %156

156:                                              ; preds = %154, %151
  br label %159, !dbg !1369

157:                                              ; preds = %81
  %158 = call i32 (ptr, ...) @printf(ptr noundef @.str.36), !dbg !1370
  br label %159

159:                                              ; preds = %157, %156
  br label %173, !dbg !1372

160:                                              ; preds = %77
  call void @llvm.dbg.declare(metadata ptr %22, metadata !1373, metadata !DIExpression()), !dbg !1375
  store i32 0, ptr %22, align 4, !dbg !1375
  call void @llvm.dbg.declare(metadata ptr %23, metadata !1376, metadata !DIExpression()), !dbg !1380
  call void @llvm.memset.p0.i64(ptr align 16 %23, i8 0, i64 1025, i1 false), !dbg !1380
  call void @llvm.dbg.declare(metadata ptr %24, metadata !1381, metadata !DIExpression()), !dbg !1382
  store i64 1025, ptr %24, align 8, !dbg !1382
  %161 = load ptr, ptr %7, align 8, !dbg !1383
  %162 = getelementptr inbounds [1025 x i8], ptr %23, i64 0, i64 0, !dbg !1385
  %163 = load i64, ptr %24, align 8, !dbg !1386
  %164 = call i32 @stun_is_error_response(ptr noundef %161, ptr noundef %22, ptr noundef %162, i64 noundef %163), !dbg !1387
  %165 = icmp ne i32 %164, 0, !dbg !1387
  br i1 %165, label %166, label %170, !dbg !1388

166:                                              ; preds = %160
  %167 = load i32, ptr %22, align 4, !dbg !1389
  %168 = getelementptr inbounds [1025 x i8], ptr %23, i64 0, i64 0, !dbg !1391
  %169 = call i32 (ptr, ...) @printf(ptr noundef @.str.37, i32 noundef %167, ptr noundef %168), !dbg !1392
  br label %172, !dbg !1393

170:                                              ; preds = %160
  %171 = call i32 (ptr, ...) @printf(ptr noundef @.str.38), !dbg !1394
  br label %172

172:                                              ; preds = %170, %166
  br label %173

173:                                              ; preds = %172, %159
  br label %183, !dbg !1396

174:                                              ; preds = %73
  %175 = load ptr, ptr %7, align 8, !dbg !1397
  %176 = call i32 @stun_is_request(ptr noundef %175), !dbg !1399
  %177 = icmp ne i32 %176, 0, !dbg !1399
  br i1 %177, label %178, label %180, !dbg !1400

178:                                              ; preds = %174
  %179 = call i32 (ptr, ...) @printf(ptr noundef @.str.39), !dbg !1401
  br label %182, !dbg !1403

180:                                              ; preds = %174
  %181 = call i32 (ptr, ...) @printf(ptr noundef @.str.40), !dbg !1404
  store i32 1, ptr %13, align 4, !dbg !1406
  br label %182

182:                                              ; preds = %180, %178
  br label %183

183:                                              ; preds = %182, %173
  br label %197, !dbg !1407

184:                                              ; preds = %65
  %185 = call ptr @__errno_location() #13, !dbg !1408
  %186 = load i32, ptr %185, align 4, !dbg !1408
  %187 = icmp eq i32 %186, 11, !dbg !1411
  br i1 %187, label %192, label %188, !dbg !1412

188:                                              ; preds = %184
  %189 = call ptr @__errno_location() #13, !dbg !1413
  %190 = load i32, ptr %189, align 4, !dbg !1413
  %191 = icmp eq i32 %190, 11, !dbg !1414
  br i1 %191, label %192, label %194, !dbg !1415

192:                                              ; preds = %188, %184
  %193 = call i32 (ptr, ...) @printf(ptr noundef @.str.41), !dbg !1416
  br label %196, !dbg !1418

194:                                              ; preds = %188
  %195 = call i32 (ptr, ...) @printf(ptr noundef @.str.42), !dbg !1419
  br label %196

196:                                              ; preds = %194, %192
  store i32 1, ptr %13, align 4, !dbg !1421
  br label %197

197:                                              ; preds = %196, %183
  %198 = load i32, ptr %13, align 4, !dbg !1422
  ret i32 %198, !dbg !1423
}

declare i32 @sleep(i32 noundef) #3

; Function Attrs: nounwind
declare i32 @socket(i32 noundef, i32 noundef, i32 noundef) #4

declare i32 @addr_bind(i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #3

declare void @stun_prepare_binding_request(ptr noundef) #3

declare i32 @stun_attr_add_response_port_str(ptr noundef, ptr noundef, i16 noundef zeroext) #3

declare i32 @stun_attr_add_change_request_str(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

declare i32 @stun_attr_add_padding_str(ptr noundef, ptr noundef, i16 noundef zeroext) #3

declare i32 @get_ioa_addr_len(ptr noundef) #3

declare i64 @sendto(i32 noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #8

declare i32 @addr_get_from_sock(i32 noundef, ptr noundef) #3

; Function Attrs: nounwind
declare i32 @setsockopt(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #4

declare i64 @recv(i32 noundef, ptr noundef, i64 noundef, i32 noundef) #3

declare i32 @stun_is_command_message(ptr noundef) #3

declare i32 @stun_is_response(ptr noundef) #3

declare i32 @stun_is_success_response(ptr noundef) #3

declare i32 @stun_is_binding_response(ptr noundef) #3

declare i32 @stun_attr_get_first_addr(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) #3

declare ptr @stun_attr_get_first_by_type_str(ptr noundef, i64 noundef, i16 noundef zeroext) #3

declare void @addr_debug_print(i32 noundef, ptr noundef, ptr noundef) #3

declare i32 @stun_attr_get_addr_str(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) #3

declare i32 @stun_is_error_response(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #3

declare i32 @stun_is_request(ptr noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }
attributes #11 = { noreturn nounwind }
attributes #12 = { noreturn }
attributes #13 = { nounwind willreturn memory(none) }

!llvm.dbg.cu = !{!19}
!llvm.module.flags = !{!300, !301, !302, !303, !304, !305, !306}
!llvm.ident = !{!307}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 631, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/apps/natdiscovery/natdiscovery.c", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "40b8f5122bf6ebe78ece405cdbf476f3")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 7)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 641, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 17)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 677, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 4)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "Usage", scope: !19, file: !2, line: 568, type: !297, isLocal: true, isDefinition: true)
!19 = distinct !DICompileUnit(language: DW_LANG_C11, file: !20, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !21, retainedTypes: !79, globals: !112, splitDebugInlining: false, nameTableKind: None)
!20 = !DIFile(filename: "/home/raj/coturn/src/apps/natdiscovery/natdiscovery.c", directory: "/home/raj/coturn/build", checksumkind: CSK_MD5, checksum: "40b8f5122bf6ebe78ece405cdbf476f3")
!21 = !{!22, !35, !66}
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__socket_type", file: !23, line: 24, baseType: !24, size: 32, elements: !25)
!23 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket_type.h", directory: "", checksumkind: CSK_MD5, checksum: "0d4e972fdeb3da9a5bc94fa41144e9f8")
!24 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!25 = !{!26, !27, !28, !29, !30, !31, !32, !33, !34}
!26 = !DIEnumerator(name: "SOCK_STREAM", value: 1)
!27 = !DIEnumerator(name: "SOCK_DGRAM", value: 2)
!28 = !DIEnumerator(name: "SOCK_RAW", value: 3)
!29 = !DIEnumerator(name: "SOCK_RDM", value: 4)
!30 = !DIEnumerator(name: "SOCK_SEQPACKET", value: 5)
!31 = !DIEnumerator(name: "SOCK_DCCP", value: 6)
!32 = !DIEnumerator(name: "SOCK_PACKET", value: 10)
!33 = !DIEnumerator(name: "SOCK_CLOEXEC", value: 524288)
!34 = !DIEnumerator(name: "SOCK_NONBLOCK", value: 2048)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !36, line: 40, baseType: !24, size: 32, elements: !37)
!36 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "eb6560f10d4cfe9f30fea2c92b9da0fd")
!37 = !{!38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65}
!38 = !DIEnumerator(name: "IPPROTO_IP", value: 0)
!39 = !DIEnumerator(name: "IPPROTO_ICMP", value: 1)
!40 = !DIEnumerator(name: "IPPROTO_IGMP", value: 2)
!41 = !DIEnumerator(name: "IPPROTO_IPIP", value: 4)
!42 = !DIEnumerator(name: "IPPROTO_TCP", value: 6)
!43 = !DIEnumerator(name: "IPPROTO_EGP", value: 8)
!44 = !DIEnumerator(name: "IPPROTO_PUP", value: 12)
!45 = !DIEnumerator(name: "IPPROTO_UDP", value: 17)
!46 = !DIEnumerator(name: "IPPROTO_IDP", value: 22)
!47 = !DIEnumerator(name: "IPPROTO_TP", value: 29)
!48 = !DIEnumerator(name: "IPPROTO_DCCP", value: 33)
!49 = !DIEnumerator(name: "IPPROTO_IPV6", value: 41)
!50 = !DIEnumerator(name: "IPPROTO_RSVP", value: 46)
!51 = !DIEnumerator(name: "IPPROTO_GRE", value: 47)
!52 = !DIEnumerator(name: "IPPROTO_ESP", value: 50)
!53 = !DIEnumerator(name: "IPPROTO_AH", value: 51)
!54 = !DIEnumerator(name: "IPPROTO_MTP", value: 92)
!55 = !DIEnumerator(name: "IPPROTO_BEETPH", value: 94)
!56 = !DIEnumerator(name: "IPPROTO_ENCAP", value: 98)
!57 = !DIEnumerator(name: "IPPROTO_PIM", value: 103)
!58 = !DIEnumerator(name: "IPPROTO_COMP", value: 108)
!59 = !DIEnumerator(name: "IPPROTO_SCTP", value: 132)
!60 = !DIEnumerator(name: "IPPROTO_UDPLITE", value: 136)
!61 = !DIEnumerator(name: "IPPROTO_MPLS", value: 137)
!62 = !DIEnumerator(name: "IPPROTO_ETHERNET", value: 143)
!63 = !DIEnumerator(name: "IPPROTO_RAW", value: 255)
!64 = !DIEnumerator(name: "IPPROTO_MPTCP", value: 262)
!65 = !DIEnumerator(name: "IPPROTO_MAX", value: 263)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_SOCKET_TYPE", file: !67, line: 85, baseType: !24, size: 32, elements: !68)
!67 = !DIFile(filename: "src/server/ns_turn_ioalib.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "c6bb568b11ce41f25b29a4464aa685c5")
!68 = !{!69, !70, !71, !72, !73, !74, !75, !76, !77, !78}
!69 = !DIEnumerator(name: "UNKNOWN_SOCKET", value: 0)
!70 = !DIEnumerator(name: "TCP_SOCKET", value: 6)
!71 = !DIEnumerator(name: "UDP_SOCKET", value: 17)
!72 = !DIEnumerator(name: "TLS_SOCKET", value: 56)
!73 = !DIEnumerator(name: "SCTP_SOCKET", value: 132)
!74 = !DIEnumerator(name: "TLS_SCTP_SOCKET", value: 133)
!75 = !DIEnumerator(name: "DTLS_SOCKET", value: 250)
!76 = !DIEnumerator(name: "TCP_SOCKET_PROXY", value: 253)
!77 = !DIEnumerator(name: "TENTATIVE_SCTP_SOCKET", value: 254)
!78 = !DIEnumerator(name: "TENTATIVE_TCP_SOCKET", value: 255)
!79 = !{!80, !82, !83, !90, !91, !95, !98, !109, !92}
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !86, line: 24, baseType: !87)
!86 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !88, line: 38, baseType: !89)
!88 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!89 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !93, line: 46, baseType: !94)
!93 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!94 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !86, line: 25, baseType: !96)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !88, line: 40, baseType: !97)
!97 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !100, line: 180, size: 128, elements: !101)
!100 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "e3826be048699664d9ef7b080f62f2e0")
!101 = !{!102, !105}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !99, file: !100, line: 182, baseType: !103, size: 16)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !104, line: 28, baseType: !97)
!104 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "dd7f1d9dd6e26f88d1726905ed5d9ff5")
!105 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !99, file: !100, line: 183, baseType: !106, size: 112, offset: 16)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 14)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !110, line: 274, baseType: !111)
!110 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !88, line: 210, baseType: !24)
!112 = !{!0, !7, !12, !113, !118, !123, !128, !133, !138, !143, !145, !150, !155, !160, !162, !164, !169, !174, !179, !181, !186, !191, !193, !17, !198, !203, !208, !213, !218, !223, !228, !230, !235, !240, !245, !250, !255, !257, !262, !267, !272, !274, !279, !281, !283, !285, !288, !293, !295}
!113 = !DIGlobalVariableExpression(var: !114, expr: !DIExpression())
!114 = distinct !DIGlobalVariable(scope: null, file: !2, line: 687, type: !115, isLocal: true, isDefinition: true)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !116)
!116 = !{!117}
!117 = !DISubrange(count: 2)
!118 = !DIGlobalVariableExpression(var: !119, expr: !DIExpression())
!119 = distinct !DIGlobalVariable(scope: null, file: !2, line: 688, type: !120, isLocal: true, isDefinition: true)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !121)
!121 = !{!122}
!122 = !DISubrange(count: 50)
!123 = !DIGlobalVariableExpression(var: !124, expr: !DIExpression())
!124 = distinct !DIGlobalVariable(scope: null, file: !2, line: 689, type: !125, isLocal: true, isDefinition: true)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 464, elements: !126)
!126 = !{!127}
!127 = !DISubrange(count: 58)
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(scope: null, file: !2, line: 694, type: !130, isLocal: true, isDefinition: true)
!130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !131)
!131 = !{!132}
!132 = !DISubrange(count: 41)
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(scope: null, file: !2, line: 695, type: !135, isLocal: true, isDefinition: true)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 520, elements: !136)
!136 = !{!137}
!137 = !DISubrange(count: 65)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(scope: null, file: !2, line: 700, type: !140, isLocal: true, isDefinition: true)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 432, elements: !141)
!141 = !{!142}
!142 = !DISubrange(count: 54)
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(scope: null, file: !2, line: 701, type: !140, isLocal: true, isDefinition: true)
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(scope: null, file: !2, line: 707, type: !147, isLocal: true, isDefinition: true)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !148)
!148 = !{!149}
!149 = !DISubrange(count: 44)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(scope: null, file: !2, line: 714, type: !152, isLocal: true, isDefinition: true)
!152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !153)
!153 = !{!154}
!154 = !DISubrange(count: 39)
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(scope: null, file: !2, line: 722, type: !157, isLocal: true, isDefinition: true)
!157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !158)
!158 = !{!159}
!159 = !DISubrange(count: 35)
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(scope: null, file: !2, line: 728, type: !152, isLocal: true, isDefinition: true)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(scope: null, file: !2, line: 740, type: !152, isLocal: true, isDefinition: true)
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(scope: null, file: !2, line: 746, type: !166, isLocal: true, isDefinition: true)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !167)
!167 = !{!168}
!168 = !DISubrange(count: 36)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(scope: null, file: !2, line: 748, type: !171, isLocal: true, isDefinition: true)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 360, elements: !172)
!172 = !{!173}
!173 = !DISubrange(count: 45)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(scope: null, file: !2, line: 757, type: !176, isLocal: true, isDefinition: true)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !177)
!177 = !{!178}
!178 = !DISubrange(count: 37)
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(scope: null, file: !2, line: 770, type: !130, isLocal: true, isDefinition: true)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(scope: null, file: !2, line: 775, type: !183, isLocal: true, isDefinition: true)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !184)
!184 = !{!185}
!185 = !DISubrange(count: 38)
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(scope: null, file: !2, line: 777, type: !188, isLocal: true, isDefinition: true)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 376, elements: !189)
!189 = !{!190}
!190 = !DISubrange(count: 47)
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(scope: null, file: !2, line: 787, type: !176, isLocal: true, isDefinition: true)
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(scope: null, file: !2, line: 805, type: !195, isLocal: true, isDefinition: true)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 808, elements: !196)
!196 = !{!197}
!197 = !DISubrange(count: 101)
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(scope: null, file: !2, line: 363, type: !200, isLocal: true, isDefinition: true)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !201)
!201 = !{!202}
!202 = !DISubrange(count: 31)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(scope: null, file: !2, line: 363, type: !205, isLocal: true, isDefinition: true)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 128, elements: !206)
!206 = !{!207}
!207 = !DISubrange(count: 16)
!208 = !DIGlobalVariableExpression(var: !209, expr: !DIExpression())
!209 = distinct !DIGlobalVariable(scope: null, file: !2, line: 381, type: !210, isLocal: true, isDefinition: true)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !211)
!211 = !{!212}
!212 = !DISubrange(count: 42)
!213 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression())
!214 = distinct !DIGlobalVariable(scope: null, file: !2, line: 433, type: !215, isLocal: true, isDefinition: true)
!215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !216)
!216 = !{!217}
!217 = !DISubrange(count: 43)
!218 = !DIGlobalVariableExpression(var: !219, expr: !DIExpression())
!219 = distinct !DIGlobalVariable(scope: null, file: !2, line: 434, type: !220, isLocal: true, isDefinition: true)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !221)
!221 = !{!222}
!222 = !DISubrange(count: 22)
!223 = !DIGlobalVariableExpression(var: !224, expr: !DIExpression())
!224 = distinct !DIGlobalVariable(scope: null, file: !2, line: 439, type: !225, isLocal: true, isDefinition: true)
!225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !226)
!226 = !{!227}
!227 = !DISubrange(count: 51)
!228 = !DIGlobalVariableExpression(var: !229, expr: !DIExpression())
!229 = distinct !DIGlobalVariable(scope: null, file: !2, line: 440, type: !9, isLocal: true, isDefinition: true)
!230 = !DIGlobalVariableExpression(var: !231, expr: !DIExpression())
!231 = distinct !DIGlobalVariable(scope: null, file: !2, line: 442, type: !232, isLocal: true, isDefinition: true)
!232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !233)
!233 = !{!234}
!234 = !DISubrange(count: 30)
!235 = !DIGlobalVariableExpression(var: !236, expr: !DIExpression())
!236 = distinct !DIGlobalVariable(scope: null, file: !2, line: 445, type: !237, isLocal: true, isDefinition: true)
!237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !238)
!238 = !{!239}
!239 = !DISubrange(count: 40)
!240 = !DIGlobalVariableExpression(var: !241, expr: !DIExpression())
!241 = distinct !DIGlobalVariable(scope: null, file: !2, line: 452, type: !242, isLocal: true, isDefinition: true)
!242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !243)
!243 = !{!244}
!244 = !DISubrange(count: 18)
!245 = !DIGlobalVariableExpression(var: !246, expr: !DIExpression())
!246 = distinct !DIGlobalVariable(scope: null, file: !2, line: 454, type: !247, isLocal: true, isDefinition: true)
!247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !248)
!248 = !{!249}
!249 = !DISubrange(count: 13)
!250 = !DIGlobalVariableExpression(var: !251, expr: !DIExpression())
!251 = distinct !DIGlobalVariable(scope: null, file: !2, line: 456, type: !252, isLocal: true, isDefinition: true)
!252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !253)
!253 = !{!254}
!254 = !DISubrange(count: 19)
!255 = !DIGlobalVariableExpression(var: !256, expr: !DIExpression())
!256 = distinct !DIGlobalVariable(scope: null, file: !2, line: 457, type: !247, isLocal: true, isDefinition: true)
!257 = !DIGlobalVariableExpression(var: !258, expr: !DIExpression())
!258 = distinct !DIGlobalVariable(scope: null, file: !2, line: 459, type: !259, isLocal: true, isDefinition: true)
!259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !260)
!260 = !{!261}
!261 = !DISubrange(count: 26)
!262 = !DIGlobalVariableExpression(var: !263, expr: !DIExpression())
!263 = distinct !DIGlobalVariable(scope: null, file: !2, line: 462, type: !264, isLocal: true, isDefinition: true)
!264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !265)
!265 = !{!266}
!266 = !DISubrange(count: 24)
!267 = !DIGlobalVariableExpression(var: !268, expr: !DIExpression())
!268 = distinct !DIGlobalVariable(scope: null, file: !2, line: 469, type: !269, isLocal: true, isDefinition: true)
!269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !270)
!270 = !{!271}
!271 = !DISubrange(count: 34)
!272 = !DIGlobalVariableExpression(var: !273, expr: !DIExpression())
!273 = distinct !DIGlobalVariable(scope: null, file: !2, line: 471, type: !152, isLocal: true, isDefinition: true)
!274 = !DIGlobalVariableExpression(var: !275, expr: !DIExpression())
!275 = distinct !DIGlobalVariable(scope: null, file: !2, line: 475, type: !276, isLocal: true, isDefinition: true)
!276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 424, elements: !277)
!277 = !{!278}
!278 = !DISubrange(count: 53)
!279 = !DIGlobalVariableExpression(var: !280, expr: !DIExpression())
!280 = distinct !DIGlobalVariable(scope: null, file: !2, line: 477, type: !237, isLocal: true, isDefinition: true)
!281 = !DIGlobalVariableExpression(var: !282, expr: !DIExpression())
!282 = distinct !DIGlobalVariable(scope: null, file: !2, line: 482, type: !264, isLocal: true, isDefinition: true)
!283 = !DIGlobalVariableExpression(var: !284, expr: !DIExpression())
!284 = distinct !DIGlobalVariable(scope: null, file: !2, line: 484, type: !166, isLocal: true, isDefinition: true)
!285 = !DIGlobalVariableExpression(var: !286, expr: !DIExpression())
!286 = distinct !DIGlobalVariable(name: "counter", scope: !19, file: !2, line: 50, type: !287, isLocal: true, isDefinition: true)
!287 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!288 = !DIGlobalVariableExpression(var: !289, expr: !DIExpression())
!289 = distinct !DIGlobalVariable(scope: null, file: !2, line: 608, type: !290, isLocal: true, isDefinition: true)
!290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !291)
!291 = !{!292}
!292 = !DISubrange(count: 3)
!293 = !DIGlobalVariableExpression(var: !294, expr: !DIExpression())
!294 = distinct !DIGlobalVariable(name: "udp_fd", scope: !19, file: !2, line: 47, type: !287, isLocal: true, isDefinition: true)
!295 = !DIGlobalVariableExpression(var: !296, expr: !DIExpression())
!296 = distinct !DIGlobalVariable(name: "udp_fd2", scope: !19, file: !2, line: 48, type: !287, isLocal: true, isDefinition: true)
!297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 7072, elements: !298)
!298 = !{!299}
!299 = !DISubrange(count: 884)
!300 = !{i32 7, !"Dwarf Version", i32 5}
!301 = !{i32 2, !"Debug Info Version", i32 3}
!302 = !{i32 1, !"wchar_size", i32 4}
!303 = !{i32 8, !"PIC Level", i32 2}
!304 = !{i32 7, !"PIE Level", i32 2}
!305 = !{i32 7, !"uwtable", i32 2}
!306 = !{i32 7, !"frame-pointer", i32 2}
!307 = !{!"clang version 16.0.0"}
!308 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 612, type: !309, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !312)
!309 = !DISubroutineType(types: !310)
!310 = !{!287, !287, !311}
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!312 = !{}
!313 = !DILocalVariable(name: "argc", arg: 1, scope: !308, file: !2, line: 612, type: !287)
!314 = !DILocation(line: 612, column: 14, scope: !308)
!315 = !DILocalVariable(name: "argv", arg: 2, scope: !308, file: !2, line: 612, type: !311)
!316 = !DILocation(line: 612, column: 27, scope: !308)
!317 = !DILocalVariable(name: "remote_port", scope: !308, file: !2, line: 614, type: !287)
!318 = !DILocation(line: 614, column: 6, scope: !308)
!319 = !DILocalVariable(name: "local_addr_string", scope: !308, file: !2, line: 615, type: !320)
!320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !321)
!321 = !{!322}
!322 = !DISubrange(count: 256)
!323 = !DILocation(line: 615, column: 7, scope: !308)
!324 = !DILocalVariable(name: "local2_addr_string", scope: !308, file: !2, line: 616, type: !320)
!325 = !DILocation(line: 616, column: 7, scope: !308)
!326 = !DILocalVariable(name: "c", scope: !308, file: !2, line: 617, type: !287)
!327 = !DILocation(line: 617, column: 6, scope: !308)
!328 = !DILocalVariable(name: "mapping", scope: !308, file: !2, line: 618, type: !287)
!329 = !DILocation(line: 618, column: 6, scope: !308)
!330 = !DILocalVariable(name: "filtering", scope: !308, file: !2, line: 619, type: !287)
!331 = !DILocation(line: 619, column: 6, scope: !308)
!332 = !DILocalVariable(name: "lifetime", scope: !308, file: !2, line: 620, type: !287)
!333 = !DILocation(line: 620, column: 6, scope: !308)
!334 = !DILocalVariable(name: "timer", scope: !308, file: !2, line: 621, type: !287)
!335 = !DILocation(line: 621, column: 6, scope: !308)
!336 = !DILocalVariable(name: "collision", scope: !308, file: !2, line: 622, type: !287)
!337 = !DILocation(line: 622, column: 6, scope: !308)
!338 = !DILocalVariable(name: "padding", scope: !308, file: !2, line: 623, type: !287)
!339 = !DILocation(line: 623, column: 6, scope: !308)
!340 = !DILocalVariable(name: "hairpinning", scope: !308, file: !2, line: 624, type: !287)
!341 = !DILocation(line: 624, column: 6, scope: !308)
!342 = !DILocalVariable(name: "local_port", scope: !308, file: !2, line: 625, type: !287)
!343 = !DILocation(line: 625, column: 6, scope: !308)
!344 = !DILocalVariable(name: "rfc5780", scope: !308, file: !2, line: 626, type: !287)
!345 = !DILocation(line: 626, column: 6, scope: !308)
!346 = !DILocalVariable(name: "first", scope: !308, file: !2, line: 627, type: !287)
!347 = !DILocation(line: 627, column: 6, scope: !308)
!348 = !DILocalVariable(name: "other_addr", scope: !308, file: !2, line: 628, type: !349)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_addr", file: !350, line: 48, baseType: !351)
!350 = !DIFile(filename: "src/client/ns_turn_ioaddr.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "6bb7c107d1e7937049c12f6d0dffd94c")
!351 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !350, line: 44, size: 224, elements: !352)
!352 = !{!353, !354, !371}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !351, file: !350, line: 45, baseType: !99, size: 128)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "s4", scope: !351, file: !350, line: 46, baseType: !355, size: 128)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !36, line: 245, size: 128, elements: !356)
!356 = !{!357, !358, !360, !367}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !355, file: !36, line: 247, baseType: !103, size: 16)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !355, file: !36, line: 248, baseType: !359, size: 16, offset: 16)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !36, line: 123, baseType: !95)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !355, file: !36, line: 249, baseType: !361, size: 32, offset: 32)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !36, line: 31, size: 32, elements: !362)
!362 = !{!363}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !361, file: !36, line: 33, baseType: !364, size: 32)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !36, line: 30, baseType: !365)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !86, line: 26, baseType: !366)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !88, line: 42, baseType: !24)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !355, file: !36, line: 252, baseType: !368, size: 64, offset: 64)
!368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 64, elements: !369)
!369 = !{!370}
!370 = !DISubrange(count: 8)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "s6", scope: !351, file: !350, line: 47, baseType: !372, size: 224)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !36, line: 260, size: 224, elements: !373)
!373 = !{!374, !375, !376, !377, !389}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_family", scope: !372, file: !36, line: 262, baseType: !103, size: 16)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_port", scope: !372, file: !36, line: 263, baseType: !359, size: 16, offset: 16)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_flowinfo", scope: !372, file: !36, line: 264, baseType: !365, size: 32, offset: 32)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !372, file: !36, line: 265, baseType: !378, size: 128, offset: 64)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !36, line: 219, size: 128, elements: !379)
!379 = !{!380}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !378, file: !36, line: 226, baseType: !381, size: 128)
!381 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !378, file: !36, line: 221, size: 128, elements: !382)
!382 = !{!383, !385, !387}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !381, file: !36, line: 223, baseType: !384, size: 128)
!384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 128, elements: !206)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !381, file: !36, line: 224, baseType: !386, size: 128)
!386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 128, elements: !369)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !381, file: !36, line: 225, baseType: !388, size: 128)
!388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !365, size: 128, elements: !15)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_scope_id", scope: !372, file: !36, line: 266, baseType: !365, size: 32, offset: 192)
!390 = !DILocation(line: 628, column: 11, scope: !308)
!391 = !DILocalVariable(name: "reflexive_addr", scope: !308, file: !2, line: 628, type: !349)
!392 = !DILocation(line: 628, column: 23, scope: !308)
!393 = !DILocalVariable(name: "tmp_addr", scope: !308, file: !2, line: 628, type: !349)
!394 = !DILocation(line: 628, column: 39, scope: !308)
!395 = !DILocalVariable(name: "remote_addr", scope: !308, file: !2, line: 628, type: !349)
!396 = !DILocation(line: 628, column: 49, scope: !308)
!397 = !DILocalVariable(name: "local_addr", scope: !308, file: !2, line: 628, type: !349)
!398 = !DILocation(line: 628, column: 62, scope: !308)
!399 = !DILocalVariable(name: "local2_addr", scope: !308, file: !2, line: 628, type: !349)
!400 = !DILocation(line: 628, column: 74, scope: !308)
!401 = !DILocation(line: 631, column: 2, scope: !308)
!402 = !DILocation(line: 632, column: 2, scope: !308)
!403 = !DILocation(line: 634, column: 2, scope: !308)
!404 = !DILocation(line: 635, column: 2, scope: !308)
!405 = !DILocation(line: 636, column: 2, scope: !308)
!406 = !DILocation(line: 637, column: 2, scope: !308)
!407 = !DILocation(line: 638, column: 2, scope: !308)
!408 = !DILocation(line: 639, column: 2, scope: !308)
!409 = !DILocation(line: 641, column: 2, scope: !308)
!410 = !DILocation(line: 641, column: 21, scope: !308)
!411 = !DILocation(line: 641, column: 27, scope: !308)
!412 = !DILocation(line: 641, column: 14, scope: !308)
!413 = !DILocation(line: 641, column: 12, scope: !308)
!414 = !DILocation(line: 641, column: 54, scope: !308)
!415 = !DILocation(line: 642, column: 10, scope: !416)
!416 = distinct !DILexicalBlock(scope: !308, file: !2, line: 641, column: 61)
!417 = !DILocation(line: 642, column: 3, scope: !416)
!418 = !DILocation(line: 644, column: 11, scope: !419)
!419 = distinct !DILexicalBlock(scope: !416, file: !2, line: 642, column: 13)
!420 = !DILocation(line: 645, column: 4, scope: !419)
!421 = !DILocation(line: 647, column: 13, scope: !419)
!422 = !DILocation(line: 648, column: 4, scope: !419)
!423 = !DILocation(line: 650, column: 12, scope: !419)
!424 = !DILocation(line: 651, column: 4, scope: !419)
!425 = !DILocation(line: 653, column: 13, scope: !419)
!426 = !DILocation(line: 654, column: 4, scope: !419)
!427 = !DILocation(line: 656, column: 15, scope: !419)
!428 = !DILocation(line: 657, column: 4, scope: !419)
!429 = !DILocation(line: 659, column: 11, scope: !419)
!430 = !DILocation(line: 660, column: 4, scope: !419)
!431 = !DILocation(line: 662, column: 23, scope: !419)
!432 = !DILocation(line: 662, column: 18, scope: !419)
!433 = !DILocation(line: 662, column: 16, scope: !419)
!434 = !DILocation(line: 663, column: 4, scope: !419)
!435 = !DILocation(line: 665, column: 4, scope: !419)
!436 = !DILocation(line: 665, column: 4, scope: !437)
!437 = distinct !DILexicalBlock(scope: !438, file: !2, line: 665, column: 4)
!438 = distinct !DILexicalBlock(scope: !419, file: !2, line: 665, column: 4)
!439 = !DILocation(line: 665, column: 4, scope: !438)
!440 = !DILocalVariable(name: "szdst", scope: !441, file: !2, line: 665, type: !92)
!441 = distinct !DILexicalBlock(scope: !442, file: !2, line: 665, column: 4)
!442 = distinct !DILexicalBlock(scope: !443, file: !2, line: 665, column: 4)
!443 = distinct !DILexicalBlock(scope: !437, file: !2, line: 665, column: 4)
!444 = !DILocation(line: 665, column: 4, scope: !441)
!445 = !DILocation(line: 665, column: 4, scope: !443)
!446 = !DILocation(line: 666, column: 4, scope: !419)
!447 = !DILocation(line: 668, column: 22, scope: !419)
!448 = !DILocation(line: 668, column: 17, scope: !419)
!449 = !DILocation(line: 668, column: 15, scope: !419)
!450 = !DILocation(line: 669, column: 4, scope: !419)
!451 = !DILocation(line: 671, column: 4, scope: !419)
!452 = !DILocation(line: 671, column: 4, scope: !453)
!453 = distinct !DILexicalBlock(scope: !454, file: !2, line: 671, column: 4)
!454 = distinct !DILexicalBlock(scope: !419, file: !2, line: 671, column: 4)
!455 = !DILocation(line: 671, column: 4, scope: !454)
!456 = !DILocalVariable(name: "szdst", scope: !457, file: !2, line: 671, type: !92)
!457 = distinct !DILexicalBlock(scope: !458, file: !2, line: 671, column: 4)
!458 = distinct !DILexicalBlock(scope: !459, file: !2, line: 671, column: 4)
!459 = distinct !DILexicalBlock(scope: !453, file: !2, line: 671, column: 4)
!460 = !DILocation(line: 671, column: 4, scope: !457)
!461 = !DILocation(line: 671, column: 4, scope: !459)
!462 = !DILocation(line: 672, column: 4, scope: !419)
!463 = !DILocation(line: 674, column: 17, scope: !419)
!464 = !DILocation(line: 674, column: 12, scope: !419)
!465 = !DILocation(line: 674, column: 10, scope: !419)
!466 = !DILocation(line: 675, column: 4, scope: !419)
!467 = !DILocation(line: 677, column: 12, scope: !419)
!468 = !DILocation(line: 677, column: 4, scope: !419)
!469 = !DILocation(line: 678, column: 4, scope: !419)
!470 = distinct !{!470, !409, !471, !472}
!471 = !DILocation(line: 680, column: 2, scope: !308)
!472 = !{!"llvm.loop.mustprogress"}
!473 = !DILocation(line: 682, column: 5, scope: !474)
!474 = distinct !DILexicalBlock(scope: !308, file: !2, line: 682, column: 5)
!475 = !DILocation(line: 682, column: 13, scope: !474)
!476 = !DILocation(line: 682, column: 11, scope: !474)
!477 = !DILocation(line: 682, column: 5, scope: !308)
!478 = !DILocation(line: 683, column: 11, scope: !479)
!479 = distinct !DILexicalBlock(scope: !474, file: !2, line: 682, column: 19)
!480 = !DILocation(line: 683, column: 3, scope: !479)
!481 = !DILocation(line: 684, column: 3, scope: !479)
!482 = !DILocation(line: 687, column: 5, scope: !483)
!483 = distinct !DILexicalBlock(scope: !308, file: !2, line: 687, column: 5)
!484 = !DILocation(line: 687, column: 15, scope: !483)
!485 = !DILocation(line: 687, column: 26, scope: !483)
!486 = !DILocation(line: 687, column: 19, scope: !483)
!487 = !DILocation(line: 687, column: 5, scope: !308)
!488 = !DILocation(line: 688, column: 11, scope: !489)
!489 = distinct !DILexicalBlock(scope: !483, file: !2, line: 687, column: 51)
!490 = !DILocation(line: 688, column: 3, scope: !489)
!491 = !DILocation(line: 689, column: 11, scope: !489)
!492 = !DILocation(line: 689, column: 3, scope: !489)
!493 = !DILocation(line: 690, column: 3, scope: !489)
!494 = !DILocation(line: 693, column: 5, scope: !495)
!495 = distinct !DILexicalBlock(scope: !308, file: !2, line: 693, column: 5)
!496 = !DILocation(line: 693, column: 14, scope: !495)
!497 = !DILocation(line: 693, column: 17, scope: !495)
!498 = !DILocation(line: 693, column: 22, scope: !495)
!499 = !DILocation(line: 693, column: 5, scope: !308)
!500 = !DILocation(line: 694, column: 11, scope: !501)
!501 = distinct !DILexicalBlock(scope: !495, file: !2, line: 693, column: 27)
!502 = !DILocation(line: 694, column: 3, scope: !501)
!503 = !DILocation(line: 695, column: 11, scope: !501)
!504 = !DILocation(line: 695, column: 3, scope: !501)
!505 = !DILocation(line: 696, column: 3, scope: !501)
!506 = !DILocation(line: 699, column: 5, scope: !507)
!507 = distinct !DILexicalBlock(scope: !308, file: !2, line: 699, column: 5)
!508 = !DILocation(line: 699, column: 15, scope: !507)
!509 = !DILocation(line: 699, column: 19, scope: !507)
!510 = !DILocation(line: 699, column: 30, scope: !507)
!511 = !DILocation(line: 699, column: 23, scope: !507)
!512 = !DILocation(line: 699, column: 5, scope: !308)
!513 = !DILocation(line: 700, column: 11, scope: !514)
!514 = distinct !DILexicalBlock(scope: !507, file: !2, line: 699, column: 54)
!515 = !DILocation(line: 700, column: 3, scope: !514)
!516 = !DILocation(line: 701, column: 11, scope: !514)
!517 = !DILocation(line: 701, column: 3, scope: !514)
!518 = !DILocation(line: 702, column: 3, scope: !514)
!519 = !DILocation(line: 706, column: 5, scope: !520)
!520 = distinct !DILexicalBlock(scope: !308, file: !2, line: 706, column: 5)
!521 = !DILocation(line: 706, column: 5, scope: !308)
!522 = !DILocation(line: 707, column: 3, scope: !523)
!523 = distinct !DILexicalBlock(scope: !520, file: !2, line: 706, column: 15)
!524 = !DILocation(line: 708, column: 8, scope: !523)
!525 = !DILocation(line: 708, column: 55, scope: !523)
!526 = !DILocation(line: 708, column: 78, scope: !523)
!527 = !DILocation(line: 708, column: 97, scope: !523)
!528 = !DILocation(line: 708, column: 102, scope: !523)
!529 = !DILocation(line: 708, column: 3, scope: !523)
!530 = !DILocation(line: 709, column: 8, scope: !523)
!531 = !DILocation(line: 710, column: 27, scope: !523)
!532 = !DILocation(line: 710, column: 117, scope: !523)
!533 = !DILocation(line: 710, column: 3, scope: !523)
!534 = !DILocation(line: 711, column: 2, scope: !523)
!535 = !DILocation(line: 713, column: 5, scope: !536)
!536 = distinct !DILexicalBlock(scope: !308, file: !2, line: 713, column: 5)
!537 = !DILocation(line: 713, column: 5, scope: !308)
!538 = !DILocation(line: 714, column: 3, scope: !539)
!539 = distinct !DILexicalBlock(scope: !536, file: !2, line: 713, column: 18)
!540 = !DILocation(line: 715, column: 8, scope: !539)
!541 = !DILocation(line: 715, column: 55, scope: !539)
!542 = !DILocation(line: 715, column: 78, scope: !539)
!543 = !DILocation(line: 715, column: 97, scope: !539)
!544 = !DILocation(line: 715, column: 102, scope: !539)
!545 = !DILocation(line: 715, column: 3, scope: !539)
!546 = !DILocation(line: 716, column: 8, scope: !539)
!547 = !DILocation(line: 717, column: 113, scope: !539)
!548 = !DILocation(line: 717, column: 3, scope: !539)
!549 = !DILocation(line: 718, column: 2, scope: !539)
!550 = !DILocation(line: 721, column: 5, scope: !551)
!551 = distinct !DILexicalBlock(scope: !308, file: !2, line: 721, column: 5)
!552 = !DILocation(line: 721, column: 5, scope: !308)
!553 = !DILocation(line: 722, column: 3, scope: !554)
!554 = distinct !DILexicalBlock(scope: !551, file: !2, line: 721, column: 14)
!555 = !DILocation(line: 723, column: 8, scope: !554)
!556 = !DILocation(line: 723, column: 54, scope: !554)
!557 = !DILocation(line: 723, column: 77, scope: !554)
!558 = !DILocation(line: 723, column: 96, scope: !554)
!559 = !DILocation(line: 723, column: 101, scope: !554)
!560 = !DILocation(line: 723, column: 3, scope: !554)
!561 = !DILocation(line: 724, column: 8, scope: !554)
!562 = !DILocation(line: 726, column: 101, scope: !554)
!563 = !DILocation(line: 726, column: 3, scope: !554)
!564 = !DILocation(line: 727, column: 7, scope: !565)
!565 = distinct !DILexicalBlock(scope: !554, file: !2, line: 727, column: 7)
!566 = !DILocation(line: 727, column: 7, scope: !554)
!567 = !DILocation(line: 728, column: 4, scope: !568)
!568 = distinct !DILexicalBlock(scope: !565, file: !2, line: 727, column: 44)
!569 = !DILocation(line: 729, column: 3, scope: !568)
!570 = !DILocation(line: 730, column: 6, scope: !571)
!571 = distinct !DILexicalBlock(scope: !554, file: !2, line: 730, column: 6)
!572 = !DILocation(line: 730, column: 6, scope: !554)
!573 = !DILocation(line: 731, column: 8, scope: !574)
!574 = distinct !DILexicalBlock(scope: !575, file: !2, line: 731, column: 7)
!575 = distinct !DILexicalBlock(scope: !571, file: !2, line: 730, column: 15)
!576 = !DILocation(line: 731, column: 7, scope: !575)
!577 = !DILocation(line: 732, column: 5, scope: !578)
!578 = distinct !DILexicalBlock(scope: !574, file: !2, line: 731, column: 30)
!579 = !DILocation(line: 734, column: 5, scope: !578)
!580 = !DILocation(line: 735, column: 33, scope: !578)
!581 = !DILocation(line: 735, column: 5, scope: !578)
!582 = !DILocation(line: 737, column: 103, scope: !578)
!583 = !DILocation(line: 737, column: 5, scope: !578)
!584 = !DILocation(line: 739, column: 8, scope: !585)
!585 = distinct !DILexicalBlock(scope: !578, file: !2, line: 739, column: 8)
!586 = !DILocation(line: 739, column: 8, scope: !578)
!587 = !DILocation(line: 740, column: 6, scope: !588)
!588 = distinct !DILexicalBlock(scope: !585, file: !2, line: 739, column: 43)
!589 = !DILocation(line: 741, column: 5, scope: !588)
!590 = !DILocation(line: 742, column: 6, scope: !591)
!591 = distinct !DILexicalBlock(scope: !585, file: !2, line: 741, column: 12)
!592 = !DILocation(line: 743, column: 6, scope: !591)
!593 = !DILocation(line: 744, column: 104, scope: !591)
!594 = !DILocation(line: 744, column: 6, scope: !591)
!595 = !DILocation(line: 745, column: 9, scope: !596)
!596 = distinct !DILexicalBlock(scope: !591, file: !2, line: 745, column: 9)
!597 = !DILocation(line: 745, column: 9, scope: !591)
!598 = !DILocation(line: 746, column: 7, scope: !599)
!599 = distinct !DILexicalBlock(scope: !596, file: !2, line: 745, column: 44)
!600 = !DILocation(line: 747, column: 6, scope: !599)
!601 = !DILocation(line: 748, column: 7, scope: !602)
!602 = distinct !DILexicalBlock(scope: !596, file: !2, line: 747, column: 13)
!603 = !DILocation(line: 751, column: 4, scope: !578)
!604 = !DILocation(line: 752, column: 3, scope: !575)
!605 = !DILocation(line: 753, column: 2, scope: !554)
!606 = !DILocation(line: 756, column: 5, scope: !607)
!607 = distinct !DILexicalBlock(scope: !308, file: !2, line: 756, column: 5)
!608 = !DILocation(line: 756, column: 5, scope: !308)
!609 = !DILocation(line: 757, column: 3, scope: !610)
!610 = distinct !DILexicalBlock(scope: !607, file: !2, line: 756, column: 16)
!611 = !DILocation(line: 758, column: 8, scope: !610)
!612 = !DILocation(line: 758, column: 54, scope: !610)
!613 = !DILocation(line: 758, column: 77, scope: !610)
!614 = !DILocation(line: 758, column: 96, scope: !610)
!615 = !DILocation(line: 758, column: 101, scope: !610)
!616 = !DILocation(line: 758, column: 3, scope: !610)
!617 = !DILocation(line: 759, column: 8, scope: !610)
!618 = !DILocation(line: 761, column: 101, scope: !610)
!619 = !DILocation(line: 761, column: 3, scope: !610)
!620 = !DILocation(line: 762, column: 6, scope: !621)
!621 = distinct !DILexicalBlock(scope: !610, file: !2, line: 762, column: 6)
!622 = !DILocation(line: 762, column: 6, scope: !610)
!623 = !DILocation(line: 763, column: 4, scope: !624)
!624 = distinct !DILexicalBlock(scope: !621, file: !2, line: 762, column: 44)
!625 = !DILocation(line: 764, column: 3, scope: !624)
!626 = !DILocation(line: 765, column: 6, scope: !627)
!627 = distinct !DILexicalBlock(scope: !610, file: !2, line: 765, column: 6)
!628 = !DILocation(line: 765, column: 6, scope: !610)
!629 = !DILocation(line: 766, column: 8, scope: !630)
!630 = distinct !DILexicalBlock(scope: !631, file: !2, line: 766, column: 7)
!631 = distinct !DILexicalBlock(scope: !627, file: !2, line: 765, column: 15)
!632 = !DILocation(line: 766, column: 7, scope: !631)
!633 = !DILocalVariable(name: "res", scope: !634, file: !2, line: 767, type: !287)
!634 = distinct !DILexicalBlock(scope: !630, file: !2, line: 766, column: 30)
!635 = !DILocation(line: 767, column: 9, scope: !634)
!636 = !DILocation(line: 768, column: 107, scope: !634)
!637 = !DILocation(line: 768, column: 9, scope: !634)
!638 = !DILocation(line: 768, column: 8, scope: !634)
!639 = !DILocation(line: 769, column: 10, scope: !640)
!640 = distinct !DILexicalBlock(scope: !634, file: !2, line: 769, column: 9)
!641 = !DILocation(line: 769, column: 9, scope: !634)
!642 = !DILocation(line: 770, column: 6, scope: !643)
!643 = distinct !DILexicalBlock(scope: !640, file: !2, line: 769, column: 15)
!644 = !DILocation(line: 771, column: 5, scope: !643)
!645 = !DILocation(line: 772, column: 9, scope: !646)
!646 = distinct !DILexicalBlock(scope: !640, file: !2, line: 771, column: 12)
!647 = !DILocation(line: 773, column: 108, scope: !646)
!648 = !DILocation(line: 773, column: 10, scope: !646)
!649 = !DILocation(line: 773, column: 9, scope: !646)
!650 = !DILocation(line: 774, column: 10, scope: !651)
!651 = distinct !DILexicalBlock(scope: !646, file: !2, line: 774, column: 9)
!652 = !DILocation(line: 774, column: 9, scope: !646)
!653 = !DILocation(line: 775, column: 7, scope: !654)
!654 = distinct !DILexicalBlock(scope: !651, file: !2, line: 774, column: 14)
!655 = !DILocation(line: 776, column: 6, scope: !654)
!656 = !DILocation(line: 777, column: 7, scope: !657)
!657 = distinct !DILexicalBlock(scope: !651, file: !2, line: 776, column: 13)
!658 = !DILocation(line: 780, column: 4, scope: !634)
!659 = !DILocation(line: 781, column: 3, scope: !631)
!660 = !DILocation(line: 782, column: 2, scope: !610)
!661 = !DILocation(line: 786, column: 5, scope: !662)
!662 = distinct !DILexicalBlock(scope: !308, file: !2, line: 786, column: 5)
!663 = !DILocation(line: 786, column: 5, scope: !308)
!664 = !DILocation(line: 787, column: 3, scope: !665)
!665 = distinct !DILexicalBlock(scope: !662, file: !2, line: 786, column: 16)
!666 = !DILocation(line: 788, column: 8, scope: !665)
!667 = !DILocation(line: 788, column: 54, scope: !665)
!668 = !DILocation(line: 788, column: 77, scope: !665)
!669 = !DILocation(line: 788, column: 96, scope: !665)
!670 = !DILocation(line: 788, column: 101, scope: !665)
!671 = !DILocation(line: 788, column: 3, scope: !665)
!672 = !DILocation(line: 789, column: 8, scope: !665)
!673 = !DILocation(line: 791, column: 3, scope: !665)
!674 = !DILocation(line: 793, column: 6, scope: !675)
!675 = distinct !DILexicalBlock(scope: !665, file: !2, line: 793, column: 6)
!676 = !DILocation(line: 793, column: 6, scope: !665)
!677 = !DILocation(line: 794, column: 37, scope: !678)
!678 = distinct !DILexicalBlock(scope: !679, file: !2, line: 794, column: 7)
!679 = distinct !DILexicalBlock(scope: !675, file: !2, line: 793, column: 29)
!680 = !DILocation(line: 794, column: 7, scope: !678)
!681 = !DILocation(line: 794, column: 73, scope: !678)
!682 = !DILocation(line: 794, column: 7, scope: !679)
!683 = !DILocation(line: 795, column: 5, scope: !684)
!684 = distinct !DILexicalBlock(scope: !678, file: !2, line: 794, column: 77)
!685 = !DILocation(line: 797, column: 3, scope: !679)
!686 = !DILocation(line: 799, column: 101, scope: !665)
!687 = !DILocation(line: 799, column: 3, scope: !665)
!688 = !DILocation(line: 800, column: 30, scope: !665)
!689 = !DILocation(line: 800, column: 3, scope: !665)
!690 = !DILocation(line: 801, column: 102, scope: !665)
!691 = !DILocation(line: 801, column: 3, scope: !665)
!692 = !DILocation(line: 802, column: 2, scope: !665)
!693 = !DILocation(line: 804, column: 7, scope: !694)
!694 = distinct !DILexicalBlock(scope: !308, file: !2, line: 804, column: 6)
!695 = !DILocation(line: 804, column: 17, scope: !694)
!696 = !DILocation(line: 804, column: 21, scope: !694)
!697 = !DILocation(line: 804, column: 29, scope: !694)
!698 = !DILocation(line: 804, column: 33, scope: !694)
!699 = !DILocation(line: 804, column: 43, scope: !694)
!700 = !DILocation(line: 804, column: 47, scope: !694)
!701 = !DILocation(line: 804, column: 59, scope: !694)
!702 = !DILocation(line: 804, column: 63, scope: !694)
!703 = !DILocation(line: 804, column: 6, scope: !308)
!704 = !DILocation(line: 805, column: 3, scope: !705)
!705 = distinct !DILexicalBlock(scope: !694, file: !2, line: 804, column: 73)
!706 = !DILocation(line: 806, column: 2, scope: !705)
!707 = !DILocation(line: 807, column: 2, scope: !308)
!708 = !DILocation(line: 808, column: 2, scope: !308)
!709 = !DILocation(line: 810, column: 2, scope: !308)
!710 = distinct !DISubprogram(name: "init", scope: !2, file: !2, line: 590, type: !711, scopeLine: 591, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !19, retainedNodes: !312)
!711 = !DISubroutineType(types: !712)
!712 = !{null, !287, !713, !713, !714, !287, !714, !82, !82}
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!715 = !DILocalVariable(name: "first", arg: 1, scope: !710, file: !2, line: 590, type: !287)
!716 = !DILocation(line: 590, column: 22, scope: !710)
!717 = !DILocalVariable(name: "local_addr", arg: 2, scope: !710, file: !2, line: 590, type: !713)
!718 = !DILocation(line: 590, column: 39, scope: !710)
!719 = !DILocalVariable(name: "remote_addr", arg: 3, scope: !710, file: !2, line: 590, type: !713)
!720 = !DILocation(line: 590, column: 61, scope: !710)
!721 = !DILocalVariable(name: "local_port", arg: 4, scope: !710, file: !2, line: 590, type: !714)
!722 = !DILocation(line: 590, column: 79, scope: !710)
!723 = !DILocalVariable(name: "port", arg: 5, scope: !710, file: !2, line: 590, type: !287)
!724 = !DILocation(line: 590, column: 95, scope: !710)
!725 = !DILocalVariable(name: "rfc5780", arg: 6, scope: !710, file: !2, line: 590, type: !714)
!726 = !DILocation(line: 590, column: 106, scope: !710)
!727 = !DILocalVariable(name: "local_addr_string", arg: 7, scope: !710, file: !2, line: 590, type: !82)
!728 = !DILocation(line: 590, column: 121, scope: !710)
!729 = !DILocalVariable(name: "remote_param", arg: 8, scope: !710, file: !2, line: 590, type: !82)
!730 = !DILocation(line: 590, column: 146, scope: !710)
!731 = !DILocation(line: 592, column: 15, scope: !710)
!732 = !DILocation(line: 592, column: 2, scope: !710)
!733 = !DILocation(line: 594, column: 5, scope: !734)
!734 = distinct !DILexicalBlock(scope: !710, file: !2, line: 594, column: 5)
!735 = !DILocation(line: 594, column: 5, scope: !710)
!736 = !DILocation(line: 595, column: 36, scope: !737)
!737 = distinct !DILexicalBlock(scope: !738, file: !2, line: 595, column: 6)
!738 = distinct !DILexicalBlock(scope: !734, file: !2, line: 594, column: 27)
!739 = !DILocation(line: 595, column: 58, scope: !737)
!740 = !DILocation(line: 595, column: 6, scope: !737)
!741 = !DILocation(line: 595, column: 69, scope: !737)
!742 = !DILocation(line: 595, column: 6, scope: !738)
!743 = !DILocation(line: 596, column: 4, scope: !744)
!744 = distinct !DILexicalBlock(scope: !737, file: !2, line: 595, column: 73)
!745 = !DILocation(line: 598, column: 2, scope: !738)
!746 = !DILocation(line: 599, column: 7, scope: !747)
!747 = distinct !DILexicalBlock(scope: !710, file: !2, line: 599, column: 6)
!748 = !DILocation(line: 599, column: 6, scope: !710)
!749 = !DILocation(line: 599, column: 15, scope: !747)
!750 = !DILocation(line: 599, column: 25, scope: !747)
!751 = !DILocation(line: 599, column: 14, scope: !747)
!752 = !DILocation(line: 600, column: 3, scope: !710)
!753 = !DILocation(line: 600, column: 11, scope: !710)
!754 = !DILocation(line: 602, column: 36, scope: !755)
!755 = distinct !DILexicalBlock(scope: !710, file: !2, line: 602, column: 6)
!756 = !DILocation(line: 602, column: 50, scope: !755)
!757 = !DILocation(line: 602, column: 56, scope: !755)
!758 = !DILocation(line: 602, column: 6, scope: !755)
!759 = !DILocation(line: 602, column: 69, scope: !755)
!760 = !DILocation(line: 602, column: 6, scope: !710)
!761 = !DILocation(line: 603, column: 2, scope: !755)
!762 = !DILocation(line: 604, column: 1, scope: !710)
!763 = distinct !DISubprogram(name: "run_stunclient_lifetime", scope: !2, file: !2, line: 538, type: !764, scopeLine: 538, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !19, retainedNodes: !312)
!764 = !DISubroutineType(types: !765)
!765 = !{!287, !287, !713, !713, !713, !713, !714, !714, !287, !287, !287}
!766 = !DILocalVariable(name: "timer", arg: 1, scope: !763, file: !2, line: 538, type: !287)
!767 = !DILocation(line: 538, column: 40, scope: !763)
!768 = !DILocalVariable(name: "local_addr", arg: 2, scope: !763, file: !2, line: 538, type: !713)
!769 = !DILocation(line: 538, column: 56, scope: !763)
!770 = !DILocalVariable(name: "remote_addr", arg: 3, scope: !763, file: !2, line: 538, type: !713)
!771 = !DILocation(line: 538, column: 78, scope: !763)
!772 = !DILocalVariable(name: "reflexive_addr", arg: 4, scope: !763, file: !2, line: 538, type: !713)
!773 = !DILocation(line: 538, column: 101, scope: !763)
!774 = !DILocalVariable(name: "other_addr", arg: 5, scope: !763, file: !2, line: 538, type: !713)
!775 = !DILocation(line: 538, column: 127, scope: !763)
!776 = !DILocalVariable(name: "local_port", arg: 6, scope: !763, file: !2, line: 538, type: !714)
!777 = !DILocation(line: 538, column: 144, scope: !763)
!778 = !DILocalVariable(name: "rfc5780", arg: 7, scope: !763, file: !2, line: 538, type: !714)
!779 = !DILocation(line: 538, column: 161, scope: !763)
!780 = !DILocalVariable(name: "change_ip", arg: 8, scope: !763, file: !2, line: 538, type: !287)
!781 = !DILocation(line: 538, column: 174, scope: !763)
!782 = !DILocalVariable(name: "change_port", arg: 9, scope: !763, file: !2, line: 538, type: !287)
!783 = !DILocation(line: 538, column: 189, scope: !763)
!784 = !DILocalVariable(name: "padding", arg: 10, scope: !763, file: !2, line: 538, type: !287)
!785 = !DILocation(line: 538, column: 206, scope: !763)
!786 = !DILocalVariable(name: "ret", scope: !763, file: !2, line: 539, type: !287)
!787 = !DILocation(line: 539, column: 6, scope: !763)
!788 = !DILocalVariable(name: "buf", scope: !763, file: !2, line: 540, type: !789)
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "stun_buffer", file: !790, line: 48, baseType: !791)
!790 = !DIFile(filename: "src/apps/common/stun_buffer.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "cc7948905c033a0fb654060699acf9e2")
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_stun_buffer", file: !790, line: 42, size: 524224, elements: !792)
!792 = !{!793, !795, !799, !800, !801}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !791, file: !790, line: 43, baseType: !794, size: 32)
!794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 32, elements: !15)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !791, file: !790, line: 44, baseType: !796, size: 524056, offset: 32)
!796 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 524056, elements: !797)
!797 = !{!798}
!798 = !DISubrange(count: 65507)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !791, file: !790, line: 45, baseType: !92, size: 64, offset: 524096)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !791, file: !790, line: 46, baseType: !95, size: 16, offset: 524160)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "coffset", scope: !791, file: !790, line: 47, baseType: !85, size: 8, offset: 524176)
!802 = !DILocation(line: 540, column: 14, scope: !763)
!803 = !DILocalVariable(name: "buf2", scope: !763, file: !2, line: 541, type: !789)
!804 = !DILocation(line: 541, column: 14, scope: !763)
!805 = !DILocalVariable(name: "response_port", scope: !763, file: !2, line: 542, type: !287)
!806 = !DILocation(line: 542, column: 6, scope: !763)
!807 = !DILocation(line: 544, column: 23, scope: !763)
!808 = !DILocation(line: 544, column: 36, scope: !763)
!809 = !DILocation(line: 544, column: 35, scope: !763)
!810 = !DILocation(line: 544, column: 48, scope: !763)
!811 = !DILocation(line: 544, column: 2, scope: !763)
!812 = !DILocation(line: 546, column: 28, scope: !763)
!813 = !DILocation(line: 546, column: 36, scope: !763)
!814 = !DILocation(line: 546, column: 48, scope: !763)
!815 = !DILocation(line: 546, column: 60, scope: !763)
!816 = !DILocation(line: 546, column: 73, scope: !763)
!817 = !DILocation(line: 546, column: 84, scope: !763)
!818 = !DILocation(line: 546, column: 97, scope: !763)
!819 = !DILocation(line: 546, column: 6, scope: !763)
!820 = !DILocation(line: 546, column: 5, scope: !763)
!821 = !DILocation(line: 547, column: 31, scope: !763)
!822 = !DILocation(line: 547, column: 39, scope: !763)
!823 = !DILocation(line: 547, column: 51, scope: !763)
!824 = !DILocation(line: 547, column: 67, scope: !763)
!825 = !DILocation(line: 547, column: 79, scope: !763)
!826 = !DILocation(line: 547, column: 6, scope: !763)
!827 = !DILocation(line: 547, column: 5, scope: !763)
!828 = !DILocation(line: 549, column: 16, scope: !763)
!829 = !DILocation(line: 549, column: 2, scope: !763)
!830 = !DILocation(line: 550, column: 8, scope: !763)
!831 = !DILocation(line: 550, column: 2, scope: !763)
!832 = !DILocation(line: 552, column: 23, scope: !763)
!833 = !DILocation(line: 552, column: 36, scope: !763)
!834 = !DILocation(line: 552, column: 2, scope: !763)
!835 = !DILocation(line: 553, column: 30, scope: !763)
!836 = !DILocation(line: 553, column: 16, scope: !763)
!837 = !DILocation(line: 553, column: 15, scope: !763)
!838 = !DILocation(line: 555, column: 29, scope: !763)
!839 = !DILocation(line: 555, column: 38, scope: !763)
!840 = !DILocation(line: 555, column: 50, scope: !763)
!841 = !DILocation(line: 555, column: 62, scope: !763)
!842 = !DILocation(line: 555, column: 75, scope: !763)
!843 = !DILocation(line: 555, column: 86, scope: !763)
!844 = !DILocation(line: 555, column: 99, scope: !763)
!845 = !DILocation(line: 555, column: 108, scope: !763)
!846 = !DILocation(line: 555, column: 6, scope: !763)
!847 = !DILocation(line: 555, column: 5, scope: !763)
!848 = !DILocation(line: 556, column: 31, scope: !763)
!849 = !DILocation(line: 556, column: 39, scope: !763)
!850 = !DILocation(line: 556, column: 51, scope: !763)
!851 = !DILocation(line: 556, column: 67, scope: !763)
!852 = !DILocation(line: 556, column: 79, scope: !763)
!853 = !DILocation(line: 556, column: 6, scope: !763)
!854 = !DILocation(line: 556, column: 5, scope: !763)
!855 = !DILocation(line: 558, column: 2, scope: !763)
!856 = !DILocation(line: 559, column: 2, scope: !763)
!857 = !DILocation(line: 561, column: 9, scope: !763)
!858 = !DILocation(line: 561, column: 2, scope: !763)
!859 = distinct !DISubprogram(name: "run_stunclient_hairpinning", scope: !2, file: !2, line: 508, type: !860, scopeLine: 508, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !19, retainedNodes: !312)
!860 = !DISubroutineType(types: !861)
!861 = !{!287, !713, !713, !713, !713, !714, !714, !287, !287, !287}
!862 = !DILocalVariable(name: "local_addr", arg: 1, scope: !859, file: !2, line: 508, type: !713)
!863 = !DILocation(line: 508, column: 49, scope: !859)
!864 = !DILocalVariable(name: "remote_addr", arg: 2, scope: !859, file: !2, line: 508, type: !713)
!865 = !DILocation(line: 508, column: 71, scope: !859)
!866 = !DILocalVariable(name: "reflexive_addr", arg: 3, scope: !859, file: !2, line: 508, type: !713)
!867 = !DILocation(line: 508, column: 94, scope: !859)
!868 = !DILocalVariable(name: "other_addr", arg: 4, scope: !859, file: !2, line: 508, type: !713)
!869 = !DILocation(line: 508, column: 120, scope: !859)
!870 = !DILocalVariable(name: "local_port", arg: 5, scope: !859, file: !2, line: 508, type: !714)
!871 = !DILocation(line: 508, column: 137, scope: !859)
!872 = !DILocalVariable(name: "rfc5780", arg: 6, scope: !859, file: !2, line: 508, type: !714)
!873 = !DILocation(line: 508, column: 154, scope: !859)
!874 = !DILocalVariable(name: "change_ip", arg: 7, scope: !859, file: !2, line: 508, type: !287)
!875 = !DILocation(line: 508, column: 167, scope: !859)
!876 = !DILocalVariable(name: "change_port", arg: 8, scope: !859, file: !2, line: 508, type: !287)
!877 = !DILocation(line: 508, column: 182, scope: !859)
!878 = !DILocalVariable(name: "padding", arg: 9, scope: !859, file: !2, line: 508, type: !287)
!879 = !DILocation(line: 508, column: 199, scope: !859)
!880 = !DILocalVariable(name: "ret", scope: !859, file: !2, line: 509, type: !287)
!881 = !DILocation(line: 509, column: 6, scope: !859)
!882 = !DILocalVariable(name: "buf", scope: !859, file: !2, line: 510, type: !789)
!883 = !DILocation(line: 510, column: 14, scope: !859)
!884 = !DILocalVariable(name: "buf2", scope: !859, file: !2, line: 511, type: !789)
!885 = !DILocation(line: 511, column: 14, scope: !859)
!886 = !DILocation(line: 513, column: 23, scope: !859)
!887 = !DILocation(line: 513, column: 36, scope: !859)
!888 = !DILocation(line: 513, column: 35, scope: !859)
!889 = !DILocation(line: 513, column: 48, scope: !859)
!890 = !DILocation(line: 513, column: 2, scope: !859)
!891 = !DILocation(line: 515, column: 28, scope: !859)
!892 = !DILocation(line: 515, column: 36, scope: !859)
!893 = !DILocation(line: 515, column: 48, scope: !859)
!894 = !DILocation(line: 515, column: 60, scope: !859)
!895 = !DILocation(line: 515, column: 73, scope: !859)
!896 = !DILocation(line: 515, column: 84, scope: !859)
!897 = !DILocation(line: 515, column: 97, scope: !859)
!898 = !DILocation(line: 515, column: 6, scope: !859)
!899 = !DILocation(line: 515, column: 5, scope: !859)
!900 = !DILocation(line: 516, column: 31, scope: !859)
!901 = !DILocation(line: 516, column: 39, scope: !859)
!902 = !DILocation(line: 516, column: 51, scope: !859)
!903 = !DILocation(line: 516, column: 67, scope: !859)
!904 = !DILocation(line: 516, column: 79, scope: !859)
!905 = !DILocation(line: 516, column: 6, scope: !859)
!906 = !DILocation(line: 516, column: 5, scope: !859)
!907 = !DILocation(line: 519, column: 11, scope: !859)
!908 = !DILocation(line: 519, column: 23, scope: !859)
!909 = !DILocation(line: 519, column: 2, scope: !859)
!910 = !DILocation(line: 520, column: 16, scope: !859)
!911 = !DILocation(line: 520, column: 2, scope: !859)
!912 = !DILocation(line: 522, column: 23, scope: !859)
!913 = !DILocation(line: 522, column: 36, scope: !859)
!914 = !DILocation(line: 522, column: 2, scope: !859)
!915 = !DILocation(line: 524, column: 29, scope: !859)
!916 = !DILocation(line: 524, column: 38, scope: !859)
!917 = !DILocation(line: 524, column: 50, scope: !859)
!918 = !DILocation(line: 524, column: 62, scope: !859)
!919 = !DILocation(line: 524, column: 75, scope: !859)
!920 = !DILocation(line: 524, column: 86, scope: !859)
!921 = !DILocation(line: 524, column: 99, scope: !859)
!922 = !DILocation(line: 524, column: 6, scope: !859)
!923 = !DILocation(line: 524, column: 5, scope: !859)
!924 = !DILocation(line: 525, column: 31, scope: !859)
!925 = !DILocation(line: 525, column: 39, scope: !859)
!926 = !DILocation(line: 525, column: 51, scope: !859)
!927 = !DILocation(line: 525, column: 67, scope: !859)
!928 = !DILocation(line: 525, column: 79, scope: !859)
!929 = !DILocation(line: 525, column: 6, scope: !859)
!930 = !DILocation(line: 525, column: 5, scope: !859)
!931 = !DILocation(line: 527, column: 5, scope: !932)
!932 = distinct !DILexicalBlock(scope: !859, file: !2, line: 527, column: 5)
!933 = !DILocation(line: 527, column: 5, scope: !859)
!934 = !DILocation(line: 528, column: 33, scope: !935)
!935 = distinct !DILexicalBlock(scope: !932, file: !2, line: 527, column: 9)
!936 = !DILocation(line: 528, column: 42, scope: !935)
!937 = !DILocation(line: 528, column: 54, scope: !935)
!938 = !DILocation(line: 528, column: 70, scope: !935)
!939 = !DILocation(line: 528, column: 82, scope: !935)
!940 = !DILocation(line: 528, column: 7, scope: !935)
!941 = !DILocation(line: 528, column: 6, scope: !935)
!942 = !DILocation(line: 529, column: 2, scope: !935)
!943 = !DILocation(line: 531, column: 2, scope: !859)
!944 = !DILocation(line: 532, column: 2, scope: !859)
!945 = !DILocation(line: 534, column: 9, scope: !859)
!946 = !DILocation(line: 534, column: 2, scope: !859)
!947 = distinct !DISubprogram(name: "run_stunclient", scope: !2, file: !2, line: 494, type: !860, scopeLine: 494, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !19, retainedNodes: !312)
!948 = !DILocalVariable(name: "local_addr", arg: 1, scope: !947, file: !2, line: 494, type: !713)
!949 = !DILocation(line: 494, column: 37, scope: !947)
!950 = !DILocalVariable(name: "remote_addr", arg: 2, scope: !947, file: !2, line: 494, type: !713)
!951 = !DILocation(line: 494, column: 59, scope: !947)
!952 = !DILocalVariable(name: "reflexive_addr", arg: 3, scope: !947, file: !2, line: 494, type: !713)
!953 = !DILocation(line: 494, column: 82, scope: !947)
!954 = !DILocalVariable(name: "other_addr", arg: 4, scope: !947, file: !2, line: 494, type: !713)
!955 = !DILocation(line: 494, column: 108, scope: !947)
!956 = !DILocalVariable(name: "local_port", arg: 5, scope: !947, file: !2, line: 494, type: !714)
!957 = !DILocation(line: 494, column: 125, scope: !947)
!958 = !DILocalVariable(name: "rfc5780", arg: 6, scope: !947, file: !2, line: 494, type: !714)
!959 = !DILocation(line: 494, column: 142, scope: !947)
!960 = !DILocalVariable(name: "change_ip", arg: 7, scope: !947, file: !2, line: 494, type: !287)
!961 = !DILocation(line: 494, column: 155, scope: !947)
!962 = !DILocalVariable(name: "change_port", arg: 8, scope: !947, file: !2, line: 494, type: !287)
!963 = !DILocation(line: 494, column: 170, scope: !947)
!964 = !DILocalVariable(name: "padding", arg: 9, scope: !947, file: !2, line: 494, type: !287)
!965 = !DILocation(line: 494, column: 187, scope: !947)
!966 = !DILocalVariable(name: "ret", scope: !947, file: !2, line: 495, type: !287)
!967 = !DILocation(line: 495, column: 6, scope: !947)
!968 = !DILocalVariable(name: "buf", scope: !947, file: !2, line: 496, type: !789)
!969 = !DILocation(line: 496, column: 14, scope: !947)
!970 = !DILocation(line: 498, column: 23, scope: !947)
!971 = !DILocation(line: 498, column: 36, scope: !947)
!972 = !DILocation(line: 498, column: 35, scope: !947)
!973 = !DILocation(line: 498, column: 48, scope: !947)
!974 = !DILocation(line: 498, column: 2, scope: !947)
!975 = !DILocation(line: 500, column: 28, scope: !947)
!976 = !DILocation(line: 500, column: 36, scope: !947)
!977 = !DILocation(line: 500, column: 48, scope: !947)
!978 = !DILocation(line: 500, column: 60, scope: !947)
!979 = !DILocation(line: 500, column: 73, scope: !947)
!980 = !DILocation(line: 500, column: 84, scope: !947)
!981 = !DILocation(line: 500, column: 97, scope: !947)
!982 = !DILocation(line: 500, column: 6, scope: !947)
!983 = !DILocation(line: 500, column: 5, scope: !947)
!984 = !DILocation(line: 501, column: 31, scope: !947)
!985 = !DILocation(line: 501, column: 39, scope: !947)
!986 = !DILocation(line: 501, column: 51, scope: !947)
!987 = !DILocation(line: 501, column: 67, scope: !947)
!988 = !DILocation(line: 501, column: 79, scope: !947)
!989 = !DILocation(line: 501, column: 6, scope: !947)
!990 = !DILocation(line: 501, column: 5, scope: !947)
!991 = !DILocation(line: 503, column: 2, scope: !947)
!992 = !DILocation(line: 505, column: 9, scope: !947)
!993 = !DILocation(line: 505, column: 2, scope: !947)
!994 = distinct !DISubprogram(name: "discoveryresult", scope: !2, file: !2, line: 606, type: !995, scopeLine: 606, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !19, retainedNodes: !312)
!995 = !DISubroutineType(types: !996)
!996 = !{null, !80}
!997 = !DILocalVariable(name: "decision", arg: 1, scope: !994, file: !2, line: 606, type: !80)
!998 = !DILocation(line: 606, column: 41, scope: !994)
!999 = !DILocation(line: 607, column: 2, scope: !994)
!1000 = !DILocation(line: 608, column: 14, scope: !994)
!1001 = !DILocation(line: 608, column: 2, scope: !994)
!1002 = !DILocation(line: 609, column: 2, scope: !994)
!1003 = !DILocation(line: 610, column: 1, scope: !994)
!1004 = distinct !DISubprogram(name: "init_socket", scope: !2, file: !2, line: 331, type: !1005, scopeLine: 331, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !19, retainedNodes: !312)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{!287, !714, !713, !287, !713}
!1007 = !DILocalVariable(name: "socketfd", arg: 1, scope: !1004, file: !2, line: 331, type: !714)
!1008 = !DILocation(line: 331, column: 29, scope: !1004)
!1009 = !DILocalVariable(name: "local_addr", arg: 2, scope: !1004, file: !2, line: 331, type: !713)
!1010 = !DILocation(line: 331, column: 49, scope: !1004)
!1011 = !DILocalVariable(name: "local_port", arg: 3, scope: !1004, file: !2, line: 331, type: !287)
!1012 = !DILocation(line: 331, column: 65, scope: !1004)
!1013 = !DILocalVariable(name: "remote_addr", arg: 4, scope: !1004, file: !2, line: 331, type: !713)
!1014 = !DILocation(line: 331, column: 87, scope: !1004)
!1015 = !DILocalVariable(name: "ret", scope: !1004, file: !2, line: 332, type: !287)
!1016 = !DILocation(line: 332, column: 6, scope: !1004)
!1017 = !DILocation(line: 334, column: 21, scope: !1004)
!1018 = !DILocation(line: 334, column: 37, scope: !1004)
!1019 = !DILocation(line: 334, column: 14, scope: !1004)
!1020 = !DILocation(line: 334, column: 3, scope: !1004)
!1021 = !DILocation(line: 334, column: 12, scope: !1004)
!1022 = !DILocation(line: 335, column: 6, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1004, file: !2, line: 335, column: 6)
!1024 = !DILocation(line: 335, column: 13, scope: !1023)
!1025 = !DILocation(line: 335, column: 6, scope: !1004)
!1026 = !DILocation(line: 336, column: 2, scope: !1023)
!1027 = !DILocation(line: 338, column: 6, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1004, file: !2, line: 338, column: 6)
!1029 = !DILocation(line: 338, column: 17, scope: !1028)
!1030 = !DILocation(line: 338, column: 6, scope: !1004)
!1031 = !DILocation(line: 339, column: 17, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1028, file: !2, line: 338, column: 23)
!1033 = !DILocation(line: 339, column: 29, scope: !1032)
!1034 = !DILocation(line: 339, column: 3, scope: !1032)
!1035 = !DILocation(line: 340, column: 2, scope: !1032)
!1036 = !DILocation(line: 341, column: 16, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1004, file: !2, line: 341, column: 6)
!1038 = !DILocation(line: 341, column: 7, scope: !1037)
!1039 = !DILocation(line: 341, column: 6, scope: !1004)
!1040 = !DILocation(line: 342, column: 18, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1042, file: !2, line: 342, column: 7)
!1042 = distinct !DILexicalBlock(scope: !1037, file: !2, line: 341, column: 29)
!1043 = !DILocation(line: 342, column: 17, scope: !1041)
!1044 = !DILocation(line: 342, column: 28, scope: !1041)
!1045 = !DILocation(line: 342, column: 7, scope: !1041)
!1046 = !DILocation(line: 342, column: 55, scope: !1041)
!1047 = !DILocation(line: 342, column: 7, scope: !1042)
!1048 = !DILocation(line: 343, column: 4, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1041, file: !2, line: 342, column: 60)
!1050 = !DILocation(line: 345, column: 2, scope: !1042)
!1051 = !DILocation(line: 347, column: 9, scope: !1004)
!1052 = !DILocation(line: 347, column: 2, scope: !1004)
!1053 = distinct !DISubprogram(name: "stunclient_send", scope: !2, file: !2, line: 350, type: !1054, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !19, retainedNodes: !312)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{!287, !1056, !287, !713, !714, !713, !287, !287, !287, !287}
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!1057 = !DILocalVariable(name: "buf", arg: 1, scope: !1053, file: !2, line: 350, type: !1056)
!1058 = !DILocation(line: 350, column: 41, scope: !1053)
!1059 = !DILocalVariable(name: "sockfd", arg: 2, scope: !1053, file: !2, line: 350, type: !287)
!1060 = !DILocation(line: 350, column: 50, scope: !1053)
!1061 = !DILocalVariable(name: "local_addr", arg: 3, scope: !1053, file: !2, line: 350, type: !713)
!1062 = !DILocation(line: 350, column: 68, scope: !1053)
!1063 = !DILocalVariable(name: "local_port", arg: 4, scope: !1053, file: !2, line: 350, type: !714)
!1064 = !DILocation(line: 350, column: 85, scope: !1053)
!1065 = !DILocalVariable(name: "remote_addr", arg: 5, scope: !1053, file: !2, line: 350, type: !713)
!1066 = !DILocation(line: 350, column: 107, scope: !1053)
!1067 = !DILocalVariable(name: "change_ip", arg: 6, scope: !1053, file: !2, line: 350, type: !287)
!1068 = !DILocation(line: 350, column: 124, scope: !1053)
!1069 = !DILocalVariable(name: "change_port", arg: 7, scope: !1053, file: !2, line: 350, type: !287)
!1070 = !DILocation(line: 350, column: 139, scope: !1053)
!1071 = !DILocalVariable(name: "padding", arg: 8, scope: !1053, file: !2, line: 350, type: !287)
!1072 = !DILocation(line: 350, column: 156, scope: !1053)
!1073 = !DILocalVariable(name: "response_port", arg: 9, scope: !1053, file: !2, line: 350, type: !287)
!1074 = !DILocation(line: 350, column: 169, scope: !1053)
!1075 = !DILocalVariable(name: "ret", scope: !1053, file: !2, line: 351, type: !287)
!1076 = !DILocation(line: 351, column: 6, scope: !1053)
!1077 = !DILocation(line: 353, column: 31, scope: !1053)
!1078 = !DILocation(line: 353, column: 2, scope: !1053)
!1079 = !DILocation(line: 355, column: 6, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1053, file: !2, line: 355, column: 6)
!1081 = !DILocation(line: 355, column: 20, scope: !1080)
!1082 = !DILocation(line: 355, column: 6, scope: !1053)
!1083 = !DILocation(line: 356, column: 47, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1080, file: !2, line: 355, column: 26)
!1085 = !DILocation(line: 356, column: 52, scope: !1084)
!1086 = !DILocation(line: 356, column: 46, scope: !1084)
!1087 = !DILocation(line: 356, column: 70, scope: !1084)
!1088 = !DILocation(line: 356, column: 75, scope: !1084)
!1089 = !DILocation(line: 356, column: 92, scope: !1084)
!1090 = !DILocation(line: 356, column: 81, scope: !1084)
!1091 = !DILocation(line: 356, column: 3, scope: !1084)
!1092 = !DILocation(line: 357, column: 2, scope: !1084)
!1093 = !DILocation(line: 358, column: 6, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1053, file: !2, line: 358, column: 6)
!1095 = !DILocation(line: 358, column: 16, scope: !1094)
!1096 = !DILocation(line: 358, column: 19, scope: !1094)
!1097 = !DILocation(line: 358, column: 6, scope: !1053)
!1098 = !DILocation(line: 359, column: 47, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1094, file: !2, line: 358, column: 32)
!1100 = !DILocation(line: 359, column: 52, scope: !1099)
!1101 = !DILocation(line: 359, column: 69, scope: !1099)
!1102 = !DILocation(line: 359, column: 74, scope: !1099)
!1103 = !DILocation(line: 359, column: 80, scope: !1099)
!1104 = !DILocation(line: 359, column: 91, scope: !1099)
!1105 = !DILocation(line: 359, column: 3, scope: !1099)
!1106 = !DILocation(line: 360, column: 2, scope: !1099)
!1107 = !DILocation(line: 361, column: 6, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1053, file: !2, line: 361, column: 6)
!1109 = !DILocation(line: 361, column: 6, scope: !1053)
!1110 = !DILocation(line: 362, column: 43, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1112, file: !2, line: 362, column: 6)
!1112 = distinct !DILexicalBlock(scope: !1108, file: !2, line: 361, column: 15)
!1113 = !DILocation(line: 362, column: 48, scope: !1111)
!1114 = !DILocation(line: 362, column: 65, scope: !1111)
!1115 = !DILocation(line: 362, column: 70, scope: !1111)
!1116 = !DILocation(line: 362, column: 6, scope: !1111)
!1117 = !DILocation(line: 362, column: 81, scope: !1111)
!1118 = !DILocation(line: 362, column: 6, scope: !1112)
!1119 = !DILocation(line: 363, column: 4, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1111, file: !2, line: 362, column: 85)
!1121 = !DILocation(line: 364, column: 3, scope: !1120)
!1122 = !DILocation(line: 365, column: 2, scope: !1112)
!1123 = !DILocalVariable(name: "len", scope: !1124, file: !2, line: 368, type: !287)
!1124 = distinct !DILexicalBlock(scope: !1053, file: !2, line: 367, column: 2)
!1125 = !DILocation(line: 368, column: 7, scope: !1124)
!1126 = !DILocalVariable(name: "slen", scope: !1124, file: !2, line: 369, type: !287)
!1127 = !DILocation(line: 369, column: 7, scope: !1124)
!1128 = !DILocation(line: 369, column: 31, scope: !1124)
!1129 = !DILocation(line: 369, column: 14, scope: !1124)
!1130 = !DILocation(line: 371, column: 3, scope: !1124)
!1131 = !DILocation(line: 372, column: 17, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1124, file: !2, line: 371, column: 6)
!1133 = !DILocation(line: 372, column: 25, scope: !1132)
!1134 = !DILocation(line: 372, column: 30, scope: !1132)
!1135 = !DILocation(line: 372, column: 35, scope: !1132)
!1136 = !DILocation(line: 372, column: 40, scope: !1132)
!1137 = !DILocation(line: 372, column: 67, scope: !1132)
!1138 = !DILocation(line: 372, column: 92, scope: !1132)
!1139 = !DILocation(line: 372, column: 10, scope: !1132)
!1140 = !DILocation(line: 372, column: 8, scope: !1132)
!1141 = !DILocation(line: 373, column: 3, scope: !1132)
!1142 = !DILocation(line: 373, column: 12, scope: !1124)
!1143 = !DILocation(line: 373, column: 16, scope: !1124)
!1144 = !DILocation(line: 373, column: 20, scope: !1124)
!1145 = !DILocation(line: 373, column: 25, scope: !1124)
!1146 = !DILocation(line: 373, column: 31, scope: !1124)
!1147 = !DILocation(line: 373, column: 41, scope: !1124)
!1148 = !DILocation(line: 373, column: 45, scope: !1124)
!1149 = !DILocation(line: 373, column: 51, scope: !1124)
!1150 = !DILocation(line: 373, column: 63, scope: !1124)
!1151 = !DILocation(line: 373, column: 67, scope: !1124)
!1152 = !DILocation(line: 373, column: 73, scope: !1124)
!1153 = !DILocation(line: 0, scope: !1124)
!1154 = distinct !{!1154, !1130, !1155, !472}
!1155 = !DILocation(line: 373, column: 84, scope: !1124)
!1156 = !DILocation(line: 375, column: 7, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1124, file: !2, line: 375, column: 7)
!1158 = !DILocation(line: 375, column: 11, scope: !1157)
!1159 = !DILocation(line: 375, column: 7, scope: !1124)
!1160 = !DILocation(line: 376, column: 3, scope: !1157)
!1161 = !DILocation(line: 380, column: 25, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1053, file: !2, line: 380, column: 6)
!1163 = !DILocation(line: 380, column: 33, scope: !1162)
!1164 = !DILocation(line: 380, column: 6, scope: !1162)
!1165 = !DILocation(line: 380, column: 45, scope: !1162)
!1166 = !DILocation(line: 380, column: 6, scope: !1053)
!1167 = !DILocation(line: 381, column: 3, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1162, file: !2, line: 380, column: 50)
!1169 = !DILocation(line: 382, column: 2, scope: !1168)
!1170 = !DILocation(line: 383, column: 31, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1162, file: !2, line: 382, column: 9)
!1172 = !DILocation(line: 383, column: 17, scope: !1171)
!1173 = !DILocation(line: 383, column: 4, scope: !1171)
!1174 = !DILocation(line: 383, column: 15, scope: !1171)
!1175 = !DILocation(line: 386, column: 9, scope: !1053)
!1176 = !DILocation(line: 386, column: 2, scope: !1053)
!1177 = distinct !DISubprogram(name: "stunclient_receive", scope: !2, file: !2, line: 390, type: !1178, scopeLine: 390, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !19, retainedNodes: !312)
!1178 = !DISubroutineType(types: !1179)
!1179 = !{!287, !1056, !287, !713, !713, !713, !714}
!1180 = !DILocalVariable(name: "buf", arg: 1, scope: !1177, file: !2, line: 390, type: !1056)
!1181 = !DILocation(line: 390, column: 44, scope: !1177)
!1182 = !DILocalVariable(name: "sockfd", arg: 2, scope: !1177, file: !2, line: 390, type: !287)
!1183 = !DILocation(line: 390, column: 53, scope: !1177)
!1184 = !DILocalVariable(name: "local_addr", arg: 3, scope: !1177, file: !2, line: 390, type: !713)
!1185 = !DILocation(line: 390, column: 71, scope: !1177)
!1186 = !DILocalVariable(name: "reflexive_addr", arg: 4, scope: !1177, file: !2, line: 390, type: !713)
!1187 = !DILocation(line: 390, column: 93, scope: !1177)
!1188 = !DILocalVariable(name: "other_addr", arg: 5, scope: !1177, file: !2, line: 390, type: !713)
!1189 = !DILocation(line: 390, column: 119, scope: !1177)
!1190 = !DILocalVariable(name: "rfc5780", arg: 6, scope: !1177, file: !2, line: 390, type: !714)
!1191 = !DILocation(line: 390, column: 136, scope: !1177)
!1192 = !DILocalVariable(name: "ret", scope: !1177, file: !2, line: 391, type: !287)
!1193 = !DILocation(line: 391, column: 6, scope: !1177)
!1194 = !DILocalVariable(name: "len", scope: !1195, file: !2, line: 395, type: !287)
!1195 = distinct !DILexicalBlock(scope: !1177, file: !2, line: 394, column: 2)
!1196 = !DILocation(line: 395, column: 7, scope: !1195)
!1197 = !DILocalVariable(name: "ptr", scope: !1195, file: !2, line: 396, type: !90)
!1198 = !DILocation(line: 396, column: 12, scope: !1195)
!1199 = !DILocation(line: 396, column: 18, scope: !1195)
!1200 = !DILocation(line: 396, column: 23, scope: !1195)
!1201 = !DILocalVariable(name: "recvd", scope: !1195, file: !2, line: 397, type: !287)
!1202 = !DILocation(line: 397, column: 7, scope: !1195)
!1203 = !DILocalVariable(name: "to_recv", scope: !1195, file: !2, line: 398, type: !1204)
!1204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !287)
!1205 = !DILocation(line: 398, column: 13, scope: !1195)
!1206 = !DILocalVariable(name: "tv", scope: !1195, file: !2, line: 399, type: !1207)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !1208, line: 8, size: 128, elements: !1209)
!1208 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h", directory: "", checksumkind: CSK_MD5, checksum: "9b45d950050c215f216850b27bd1e8f3")
!1209 = !{!1210, !1213}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1207, file: !1208, line: 14, baseType: !1211, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !88, line: 160, baseType: !1212)
!1212 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !1207, file: !1208, line: 15, baseType: !1214, size: 64, offset: 64)
!1214 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !88, line: 162, baseType: !1212)
!1215 = !DILocation(line: 399, column: 18, scope: !1195)
!1216 = !DILocation(line: 401, column: 6, scope: !1195)
!1217 = !DILocation(line: 401, column: 13, scope: !1195)
!1218 = !DILocation(line: 402, column: 6, scope: !1195)
!1219 = !DILocation(line: 402, column: 14, scope: !1195)
!1220 = !DILocation(line: 404, column: 14, scope: !1195)
!1221 = !DILocation(line: 404, column: 3, scope: !1195)
!1222 = !DILocation(line: 406, column: 3, scope: !1195)
!1223 = !DILocation(line: 407, column: 15, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1195, file: !2, line: 406, column: 6)
!1225 = !DILocation(line: 407, column: 23, scope: !1224)
!1226 = !DILocation(line: 407, column: 38, scope: !1224)
!1227 = !DILocation(line: 407, column: 36, scope: !1224)
!1228 = !DILocation(line: 407, column: 28, scope: !1224)
!1229 = !DILocation(line: 407, column: 10, scope: !1224)
!1230 = !DILocation(line: 407, column: 8, scope: !1224)
!1231 = !DILocation(line: 408, column: 8, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1224, file: !2, line: 408, column: 8)
!1233 = !DILocation(line: 408, column: 12, scope: !1232)
!1234 = !DILocation(line: 408, column: 8, scope: !1224)
!1235 = !DILocation(line: 409, column: 14, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1232, file: !2, line: 408, column: 17)
!1237 = !DILocation(line: 409, column: 11, scope: !1236)
!1238 = !DILocation(line: 410, column: 12, scope: !1236)
!1239 = !DILocation(line: 410, column: 9, scope: !1236)
!1240 = !DILocation(line: 411, column: 5, scope: !1236)
!1241 = !DILocation(line: 413, column: 3, scope: !1224)
!1242 = !DILocation(line: 413, column: 12, scope: !1195)
!1243 = !DILocation(line: 413, column: 16, scope: !1195)
!1244 = !DILocation(line: 413, column: 20, scope: !1195)
!1245 = !DILocation(line: 413, column: 24, scope: !1195)
!1246 = !DILocation(line: 413, column: 30, scope: !1195)
!1247 = !DILocation(line: 0, scope: !1195)
!1248 = distinct !{!1248, !1222, !1249, !472}
!1249 = !DILocation(line: 413, column: 39, scope: !1195)
!1250 = !DILocation(line: 415, column: 7, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1195, file: !2, line: 415, column: 7)
!1252 = !DILocation(line: 415, column: 13, scope: !1251)
!1253 = !DILocation(line: 415, column: 7, scope: !1195)
!1254 = !DILocation(line: 416, column: 9, scope: !1251)
!1255 = !DILocation(line: 416, column: 7, scope: !1251)
!1256 = !DILocation(line: 416, column: 3, scope: !1251)
!1257 = !DILocation(line: 417, column: 14, scope: !1195)
!1258 = !DILocation(line: 417, column: 3, scope: !1195)
!1259 = !DILocation(line: 417, column: 8, scope: !1195)
!1260 = !DILocation(line: 417, column: 12, scope: !1195)
!1261 = !DILocation(line: 419, column: 31, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1195, file: !2, line: 419, column: 7)
!1263 = !DILocation(line: 419, column: 7, scope: !1262)
!1264 = !DILocation(line: 419, column: 7, scope: !1195)
!1265 = !DILocation(line: 421, column: 25, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1267, file: !2, line: 421, column: 8)
!1267 = distinct !DILexicalBlock(scope: !1262, file: !2, line: 419, column: 37)
!1268 = !DILocation(line: 421, column: 8, scope: !1266)
!1269 = !DILocation(line: 421, column: 8, scope: !1267)
!1270 = !DILocation(line: 423, column: 34, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1272, file: !2, line: 423, column: 9)
!1272 = distinct !DILexicalBlock(scope: !1266, file: !2, line: 421, column: 31)
!1273 = !DILocation(line: 423, column: 9, scope: !1271)
!1274 = !DILocation(line: 423, column: 9, scope: !1272)
!1275 = !DILocation(line: 425, column: 35, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1277, file: !2, line: 425, column: 10)
!1277 = distinct !DILexicalBlock(scope: !1271, file: !2, line: 423, column: 40)
!1278 = !DILocation(line: 425, column: 10, scope: !1276)
!1279 = !DILocation(line: 425, column: 10, scope: !1277)
!1280 = !DILocation(line: 427, column: 20, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1276, file: !2, line: 425, column: 41)
!1282 = !DILocation(line: 427, column: 7, scope: !1281)
!1283 = !DILocation(line: 428, column: 36, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1281, file: !2, line: 428, column: 11)
!1285 = !DILocation(line: 428, column: 76, scope: !1284)
!1286 = !DILocation(line: 428, column: 11, scope: !1284)
!1287 = !DILocation(line: 428, column: 98, scope: !1284)
!1288 = !DILocation(line: 428, column: 11, scope: !1281)
!1289 = !DILocalVariable(name: "sar", scope: !1290, file: !2, line: 430, type: !1291)
!1290 = distinct !DILexicalBlock(scope: !1284, file: !2, line: 428, column: 104)
!1291 = !DIDerivedType(tag: DW_TAG_typedef, name: "stun_attr_ref", file: !1292, line: 71, baseType: !1293)
!1292 = !DIFile(filename: "src/client/ns_turn_msg.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "43c56357294df21a547ee0716fe3769d")
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1295 = !DILocation(line: 430, column: 22, scope: !1290)
!1296 = !DILocation(line: 430, column: 60, scope: !1290)
!1297 = !DILocation(line: 430, column: 65, scope: !1290)
!1298 = !DILocation(line: 430, column: 70, scope: !1290)
!1299 = !DILocation(line: 430, column: 75, scope: !1290)
!1300 = !DILocation(line: 430, column: 28, scope: !1290)
!1301 = !DILocation(line: 431, column: 12, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1290, file: !2, line: 431, column: 12)
!1303 = !DILocation(line: 431, column: 12, scope: !1290)
!1304 = !DILocation(line: 432, column: 10, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1302, file: !2, line: 431, column: 17)
!1306 = !DILocation(line: 432, column: 18, scope: !1305)
!1307 = !DILocation(line: 433, column: 9, scope: !1305)
!1308 = !DILocation(line: 434, column: 41, scope: !1305)
!1309 = !DILocation(line: 434, column: 9, scope: !1305)
!1310 = !DILocalVariable(name: "mapped_addr", scope: !1305, file: !2, line: 435, type: !349)
!1311 = !DILocation(line: 435, column: 18, scope: !1305)
!1312 = !DILocation(line: 436, column: 9, scope: !1305)
!1313 = !DILocation(line: 437, column: 38, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1305, file: !2, line: 437, column: 13)
!1315 = !DILocation(line: 437, column: 13, scope: !1314)
!1316 = !DILocation(line: 437, column: 94, scope: !1314)
!1317 = !DILocation(line: 437, column: 13, scope: !1305)
!1318 = !DILocation(line: 438, column: 36, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1320, file: !2, line: 438, column: 14)
!1320 = distinct !DILexicalBlock(scope: !1314, file: !2, line: 437, column: 100)
!1321 = !DILocation(line: 438, column: 15, scope: !1319)
!1322 = !DILocation(line: 438, column: 14, scope: !1320)
!1323 = !DILocation(line: 439, column: 11, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1319, file: !2, line: 438, column: 52)
!1325 = !DILocation(line: 440, column: 11, scope: !1324)
!1326 = !DILocation(line: 441, column: 10, scope: !1324)
!1327 = !DILocation(line: 442, column: 11, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1319, file: !2, line: 441, column: 16)
!1329 = !DILocation(line: 444, column: 9, scope: !1320)
!1330 = !DILocation(line: 445, column: 10, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1314, file: !2, line: 444, column: 16)
!1332 = !DILocation(line: 447, column: 44, scope: !1305)
!1333 = !DILocation(line: 447, column: 49, scope: !1305)
!1334 = !DILocation(line: 447, column: 63, scope: !1305)
!1335 = !DILocation(line: 447, column: 68, scope: !1305)
!1336 = !DILocation(line: 447, column: 73, scope: !1305)
!1337 = !DILocation(line: 447, column: 78, scope: !1305)
!1338 = !DILocation(line: 447, column: 9, scope: !1305)
!1339 = !DILocation(line: 448, column: 47, scope: !1305)
!1340 = !DILocation(line: 448, column: 52, scope: !1305)
!1341 = !DILocation(line: 448, column: 57, scope: !1305)
!1342 = !DILocation(line: 448, column: 62, scope: !1305)
!1343 = !DILocation(line: 448, column: 15, scope: !1305)
!1344 = !DILocation(line: 448, column: 13, scope: !1305)
!1345 = !DILocation(line: 449, column: 13, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1305, file: !2, line: 449, column: 13)
!1347 = !DILocation(line: 449, column: 13, scope: !1305)
!1348 = !DILocalVariable(name: "response_origin", scope: !1349, file: !2, line: 450, type: !349)
!1349 = distinct !DILexicalBlock(scope: !1346, file: !2, line: 449, column: 18)
!1350 = !DILocation(line: 450, column: 19, scope: !1349)
!1351 = !DILocation(line: 451, column: 45, scope: !1349)
!1352 = !DILocation(line: 451, column: 50, scope: !1349)
!1353 = !DILocation(line: 451, column: 64, scope: !1349)
!1354 = !DILocation(line: 451, column: 69, scope: !1349)
!1355 = !DILocation(line: 451, column: 74, scope: !1349)
!1356 = !DILocation(line: 451, column: 10, scope: !1349)
!1357 = !DILocation(line: 452, column: 10, scope: !1349)
!1358 = !DILocation(line: 453, column: 9, scope: !1349)
!1359 = !DILocation(line: 454, column: 29, scope: !1305)
!1360 = !DILocation(line: 454, column: 9, scope: !1305)
!1361 = !DILocation(line: 455, column: 8, scope: !1305)
!1362 = !DILocation(line: 456, column: 28, scope: !1290)
!1363 = !DILocation(line: 456, column: 8, scope: !1290)
!1364 = !DILocation(line: 457, column: 28, scope: !1290)
!1365 = !DILocation(line: 457, column: 8, scope: !1290)
!1366 = !DILocation(line: 458, column: 7, scope: !1290)
!1367 = !DILocation(line: 459, column: 8, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1284, file: !2, line: 458, column: 14)
!1369 = !DILocation(line: 461, column: 6, scope: !1281)
!1370 = !DILocation(line: 462, column: 7, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1276, file: !2, line: 461, column: 13)
!1372 = !DILocation(line: 464, column: 5, scope: !1277)
!1373 = !DILocalVariable(name: "err_code", scope: !1374, file: !2, line: 465, type: !287)
!1374 = distinct !DILexicalBlock(scope: !1271, file: !2, line: 464, column: 12)
!1375 = !DILocation(line: 465, column: 10, scope: !1374)
!1376 = !DILocalVariable(name: "err_msg", scope: !1374, file: !2, line: 466, type: !1377)
!1377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 8200, elements: !1378)
!1378 = !{!1379}
!1379 = !DISubrange(count: 1025)
!1380 = !DILocation(line: 466, column: 14, scope: !1374)
!1381 = !DILocalVariable(name: "err_msg_size", scope: !1374, file: !2, line: 467, type: !92)
!1382 = !DILocation(line: 467, column: 13, scope: !1374)
!1383 = !DILocation(line: 468, column: 33, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1374, file: !2, line: 468, column: 10)
!1385 = !DILocation(line: 468, column: 49, scope: !1384)
!1386 = !DILocation(line: 468, column: 58, scope: !1384)
!1387 = !DILocation(line: 468, column: 10, scope: !1384)
!1388 = !DILocation(line: 468, column: 10, scope: !1374)
!1389 = !DILocation(line: 469, column: 52, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1384, file: !2, line: 468, column: 73)
!1391 = !DILocation(line: 469, column: 70, scope: !1390)
!1392 = !DILocation(line: 469, column: 7, scope: !1390)
!1393 = !DILocation(line: 470, column: 6, scope: !1390)
!1394 = !DILocation(line: 471, column: 7, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1384, file: !2, line: 470, column: 13)
!1396 = !DILocation(line: 474, column: 4, scope: !1272)
!1397 = !DILocation(line: 474, column: 31, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1266, file: !2, line: 474, column: 15)
!1399 = !DILocation(line: 474, column: 15, scope: !1398)
!1400 = !DILocation(line: 474, column: 15, scope: !1266)
!1401 = !DILocation(line: 475, column: 5, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1398, file: !2, line: 474, column: 37)
!1403 = !DILocation(line: 476, column: 4, scope: !1402)
!1404 = !DILocation(line: 477, column: 5, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1398, file: !2, line: 476, column: 11)
!1406 = !DILocation(line: 478, column: 8, scope: !1405)
!1407 = !DILocation(line: 480, column: 3, scope: !1267)
!1408 = !DILocation(line: 481, column: 9, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1410, file: !2, line: 481, column: 8)
!1410 = distinct !DILexicalBlock(scope: !1262, file: !2, line: 480, column: 10)
!1411 = !DILocation(line: 481, column: 15, scope: !1409)
!1412 = !DILocation(line: 481, column: 26, scope: !1409)
!1413 = !DILocation(line: 481, column: 30, scope: !1409)
!1414 = !DILocation(line: 481, column: 36, scope: !1409)
!1415 = !DILocation(line: 481, column: 8, scope: !1410)
!1416 = !DILocation(line: 482, column: 5, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1409, file: !2, line: 481, column: 53)
!1418 = !DILocation(line: 483, column: 4, scope: !1417)
!1419 = !DILocation(line: 484, column: 5, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1409, file: !2, line: 483, column: 9)
!1421 = !DILocation(line: 486, column: 7, scope: !1410)
!1422 = !DILocation(line: 490, column: 9, scope: !1177)
!1423 = !DILocation(line: 490, column: 2, scope: !1177)
