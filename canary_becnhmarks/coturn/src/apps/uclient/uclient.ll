; ModuleID = '/home/raj/coturn/src/apps/uclient/uclient.c'
source_filename = "/home/raj/coturn/src/apps/uclient/uclient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._oauth_key = type { [129 x i8], [257 x i8], i64, i32, i32, i32, [257 x i8], i64, [257 x i8], i64 }
%struct._stun_buffer = type { [4 x i8], [65507 x i8], i64, i16, i8 }
%struct.app_ur_conn_info = type { %union.ioa_addr, [129 x i8], %union.ioa_addr, [129 x i8], [129 x i8], %union.ioa_addr, %union.ioa_addr, i32, ptr, i32, [128 x i8], [128 x i8], i32, [1026 x i8], [64 x i8], i32, i32, ptr, i64, i32, [33 x i8] }
%union.ioa_addr = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct.app_tcp_conn_info = type { i32, %union.ioa_addr, i32, ptr, i32 }
%struct.stun_tid = type { [12 x i8] }
%struct.fd_set = type { [16 x i64] }
%struct.timeval = type { i64, i64 }
%struct.app_ur_session = type { %struct.app_ur_conn_info, i32, i32, i16, i32, i32, i32, ptr, ptr, %struct._stun_buffer, %struct._stun_buffer, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct._message_info = type { i32, i64 }
%struct.timespec = type { i64, i64 }
%struct._oauth_token = type { %struct._oauth_encrypted_block }
%struct._oauth_encrypted_block = type { i16, [256 x i8], i16, [128 x i8], i64, i32 }
%struct._encoded_oauth_token = type { [1024 x i8], i64 }

@client_event_base = dso_local global ptr null, align 8, !dbg !0
@RTP_PACKET_INTERVAL = dso_local global i32 20, align 4, !dbg !272
@negative_protocol_test = external global i32, align 4
@relay_transport = external global i8, align 1
@.str = private unnamed_addr constant [65 x i8] c"trying to send tcp data buffer over unready connection: size=%d\0A\00", align 1, !dbg !275
@clnet_verbose = external global i32, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"buffer sent: size=%d\0A\00", align 1, !dbg !280
@.str.2 = private unnamed_addr constant [30 x i8] c"Socket write error 111.666: \0A\00", align 1, !dbg !285
@.str.3 = private unnamed_addr constant [19 x i8] c"SSL write error: \0A\00", align 1, !dbg !290
@.str.4 = private unnamed_addr constant [9 x i8] c"%s (%d)\0A\00", align 1, !dbg !295
@.str.5 = private unnamed_addr constant [33 x i8] c"Unexpected error while writing!\0A\00", align 1, !dbg !300
@tot_send_dropped = internal global i64 0, align 8, !dbg !386
@use_tcp = external global i32, align 4
@use_secure = external global i32, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"response received: size=%d\0A\00", align 1, !dbg !302
@.str.7 = private unnamed_addr constant [29 x i8] c"Socket read error 111.999: \0A\00", align 1, !dbg !307
@.str.8 = private unnamed_addr constant [50 x i8] c"Unexpected error while reading: rc=%d, sslerr=%d\0A\00", align 1, !dbg !312
@clmessage_length = external global i32, align 4
@.str.9 = private unnamed_addr constant [70 x i8] c"Received wrong response method: 0x%x, expected 0x%x; trying again...\0A\00", align 1, !dbg !317
@.str.10 = private unnamed_addr constant [46 x i8] c"Received wrong response tid; trying again...\0A\00", align 1, !dbg !322
@total_clients = internal global i32 0, align 4, !dbg !424
@c2c = external global i32, align 4
@no_rtcp = external global i32, align 4
@elems = internal global ptr null, align 8, !dbg !426
@current_time = internal global i64 0, align 8, !dbg !434
@buffer_to_send = internal global [65536 x i8] zeroinitializer, align 16, !dbg !436
@dos = external global i32, align 4
@passive_tcp = external global i32, align 4
@.str.11 = private unnamed_addr constant [26 x i8] c"Total connect time is %u\0A\00", align 1, !dbg !327
@.str.12 = private unnamed_addr constant [30 x i8] c"%d connections are completed\0A\00", align 1, !dbg !332
@.str.13 = private unnamed_addr constant [51 x i8] c"WARNING: %d connections are completed, not enough\0A\00", align 1, !dbg !334
@current_mstime = internal global i64 0, align 8, !dbg !464
@tot_messages = internal global i32 0, align 4, !dbg !466
@start_full_timer = internal global i32 0, align 4, !dbg !468
@current_clients_number = internal global i64 0, align 8, !dbg !470
@show_statistics = internal global i32 0, align 4, !dbg !472
@.str.14 = private unnamed_addr constant [96 x i8] c"%s: msz=%d, tot_send_msgs=%lu, tot_recv_msgs=%lu, tot_send_bytes ~ %llu, tot_recv_bytes ~ %llu\0A\00", align 1, !dbg !339
@__FUNCTION__.start_mclient = private unnamed_addr constant [14 x i8] c"start_mclient\00", align 1, !dbg !344
@tot_send_messages = internal global i32 0, align 4, !dbg !474
@tot_recv_messages = internal global i32 0, align 4, !dbg !476
@tot_send_bytes = internal global i64 0, align 8, !dbg !478
@tot_recv_bytes = internal global i64 0, align 8, !dbg !480
@.str.15 = private unnamed_addr constant [42 x i8] c"%s: tot_send_msgs=%lu, tot_recv_msgs=%lu\0A\00", align 1, !dbg !347
@.str.16 = private unnamed_addr constant [48 x i8] c"%s: tot_send_bytes ~ %lu, tot_recv_bytes ~ %lu\0A\00", align 1, !dbg !352
@total_loss = internal global i64 0, align 8, !dbg !482
@.str.17 = private unnamed_addr constant [27 x i8] c"Total transmit time is %u\0A\00", align 1, !dbg !357
@.str.18 = private unnamed_addr constant [64 x i8] c"Total lost packets %llu (%f%c), total send dropped %llu (%f%c)\0A\00", align 1, !dbg !362
@.str.19 = private unnamed_addr constant [60 x i8] c"Average round trip delay %f ms; min = %lu ms, max = %lu ms\0A\00", align 1, !dbg !365
@total_latency = internal global i64 0, align 8, !dbg !484
@min_latency = internal global i64 4294967295, align 8, !dbg !486
@max_latency = internal global i64 0, align 8, !dbg !488
@.str.20 = private unnamed_addr constant [50 x i8] c"Average jitter %f ms; min = %lu ms, max = %lu ms\0A\00", align 1, !dbg !370
@total_jitter = internal global i64 0, align 8, !dbg !490
@min_jitter = internal global i64 4294967295, align 8, !dbg !492
@max_jitter = internal global i64 0, align 8, !dbg !494
@oauth = external global i32, align 4
@shatype = external global i32, align 4
@okey_array = external global [3 x %struct._oauth_key], align 16
@.str.21 = private unnamed_addr constant [22 x i8] c" Cannot encode token\0A\00", align 1, !dbg !372
@.str.22 = private unnamed_addr constant [38 x i8] c" Cannot add integrity to the message\0A\00", align 1, !dbg !374
@.str.23 = private unnamed_addr constant [53 x i8] c" Self-test of integrity does not comple correctly !\0A\00", align 1, !dbg !379
@g_uname = external global [513 x i8], align 16
@g_upwd = external global [257 x i8], align 16
@.str.24 = private unnamed_addr constant [51 x i8] c"Wrong integrity in a message received from server\0A\00", align 1, !dbg !384
@use_sctp = external global i32, align 4
@verbose_packets = internal global i32 0, align 4, !dbg !422
@.str.25 = private unnamed_addr constant [17 x i8] c"before read ...\0A\00", align 1, !dbg !388
@.str.26 = private unnamed_addr constant [15 x i8] c"read %d bytes\0A\00", align 1, !dbg !393
@negative_test = external global i32, align 4
@.str.27 = private unnamed_addr constant [59 x i8] c"ERROR: received indication message has wrong method: 0x%x\0A\00", align 1, !dbg !398
@.str.28 = private unnamed_addr constant [51 x i8] c"ERROR: received DATA message has no data, size=%d\0A\00", align 1, !dbg !403
@.str.29 = private unnamed_addr constant [60 x i8] c"ERROR: received DATA message has wrong len: %d, must be %d\0A\00", align 1, !dbg !405
@.str.30 = private unnamed_addr constant [47 x i8] c"ERROR: received message has wrong channel: %d\0A\00", align 1, !dbg !407
@.str.31 = private unnamed_addr constant [66 x i8] c"ERROR: received buffer have wrong length: %d, must be %d, len=%d\0A\00", align 1, !dbg !412
@.str.32 = private unnamed_addr constant [45 x i8] c"ERROR: Unknown message received of size: %d\0A\00", align 1, !dbg !417
@dual_allocation = external global i32, align 4
@mobility = external global i32, align 4
@use_fingerprints = external global i32, align 4
@no_permissions = external global i32, align 4
@__turn_getMSTime.start_sec = internal global i64 0, align 8, !dbg !428
@random_disconnect = external global i32, align 4
@hang_on = external global i32, align 4
@.str.33 = private unnamed_addr constant [32 x i8] c"done, connection 0x%lx closed.\0A\00", align 1, !dbg !441
@.str.34 = private unnamed_addr constant [40 x i8] c"%s: Uninitialized atc: i=%d, atc=0x%lx\0A\00", align 1, !dbg !446
@__FUNCTION__.client_write = private unnamed_addr constant [13 x i8] c"client_write\00", align 1, !dbg !451
@do_not_use_channel = external global i32, align 4
@mandatory_channel_padding = external global i32, align 4
@dont_fragment = external global i32, align 4
@.str.35 = private unnamed_addr constant [18 x i8] c"before write ...\0A\00", align 1, !dbg !456
@.str.36 = private unnamed_addr constant [16 x i8] c"wrote %d bytes\0A\00", align 1, !dbg !461

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @send_buffer(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 !dbg !506 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca ptr, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [1024 x i8], align 16
  %21 = alloca i64, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !511, metadata !DIExpression()), !dbg !512
  store ptr %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !513, metadata !DIExpression()), !dbg !514
  store i32 %2, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !515, metadata !DIExpression()), !dbg !516
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !517, metadata !DIExpression()), !dbg !518
  call void @llvm.dbg.declare(metadata ptr %10, metadata !519, metadata !DIExpression()), !dbg !520
  store i32 0, ptr %10, align 4, !dbg !520
  call void @llvm.dbg.declare(metadata ptr %11, metadata !521, metadata !DIExpression()), !dbg !522
  store i32 -1, ptr %11, align 4, !dbg !522
  call void @llvm.dbg.declare(metadata ptr %12, metadata !523, metadata !DIExpression()), !dbg !524
  %22 = load ptr, ptr %7, align 8, !dbg !525
  %23 = getelementptr inbounds %struct._stun_buffer, ptr %22, i32 0, i32 1, !dbg !526
  %24 = getelementptr inbounds [65507 x i8], ptr %23, i64 0, i64 0, !dbg !527
  store ptr %24, ptr %12, align 8, !dbg !524
  %25 = load i32, ptr @negative_protocol_test, align 4, !dbg !528
  %26 = icmp ne i32 %25, 0, !dbg !528
  br i1 %26, label %27, label %63, !dbg !530

27:                                               ; preds = %4
  %28 = load ptr, ptr %7, align 8, !dbg !531
  %29 = getelementptr inbounds %struct._stun_buffer, ptr %28, i32 0, i32 2, !dbg !532
  %30 = load i64, ptr %29, align 8, !dbg !532
  %31 = icmp ugt i64 %30, 0, !dbg !533
  br i1 %31, label %32, label %63, !dbg !534

32:                                               ; preds = %27
  %33 = call i64 @random() #11, !dbg !535
  %34 = srem i64 %33, 10, !dbg !538
  %35 = icmp eq i64 %34, 0, !dbg !539
  br i1 %35, label %36, label %62, !dbg !540

36:                                               ; preds = %32
  call void @llvm.dbg.declare(metadata ptr %13, metadata !541, metadata !DIExpression()), !dbg !543
  %37 = call i64 @random() #11, !dbg !544
  %38 = urem i64 %37, 10, !dbg !545
  %39 = trunc i64 %38 to i32, !dbg !546
  store i32 %39, ptr %13, align 4, !dbg !543
  br label %40, !dbg !547

40:                                               ; preds = %44, %36
  %41 = load i32, ptr %13, align 4, !dbg !548
  %42 = add nsw i32 %41, -1, !dbg !548
  store i32 %42, ptr %13, align 4, !dbg !548
  %43 = icmp sgt i32 %41, 0, !dbg !549
  br i1 %43, label %44, label %61, !dbg !547

44:                                               ; preds = %40
  call void @llvm.dbg.declare(metadata ptr %14, metadata !550, metadata !DIExpression()), !dbg !552
  %45 = call i64 @random() #11, !dbg !553
  %46 = load ptr, ptr %7, align 8, !dbg !554
  %47 = getelementptr inbounds %struct._stun_buffer, ptr %46, i32 0, i32 2, !dbg !555
  %48 = load i64, ptr %47, align 8, !dbg !555
  %49 = urem i64 %45, %48, !dbg !556
  %50 = trunc i64 %49 to i32, !dbg !557
  store i32 %50, ptr %14, align 4, !dbg !552
  call void @llvm.dbg.declare(metadata ptr %15, metadata !558, metadata !DIExpression()), !dbg !559
  %51 = call i64 @random() #11, !dbg !560
  %52 = urem i64 %51, 256, !dbg !561
  %53 = trunc i64 %52 to i32, !dbg !562
  store i32 %53, ptr %15, align 4, !dbg !559
  %54 = load i32, ptr %15, align 4, !dbg !563
  %55 = trunc i32 %54 to i8, !dbg !564
  %56 = load ptr, ptr %7, align 8, !dbg !565
  %57 = getelementptr inbounds %struct._stun_buffer, ptr %56, i32 0, i32 1, !dbg !566
  %58 = load i32, ptr %14, align 4, !dbg !567
  %59 = sext i32 %58 to i64, !dbg !565
  %60 = getelementptr inbounds [65507 x i8], ptr %57, i64 0, i64 %59, !dbg !565
  store i8 %55, ptr %60, align 1, !dbg !568
  br label %40, !dbg !547, !llvm.loop !569

61:                                               ; preds = %40
  br label %62, !dbg !572

62:                                               ; preds = %61, %32
  br label %63, !dbg !573

63:                                               ; preds = %62, %27, %4
  call void @llvm.dbg.declare(metadata ptr %16, metadata !574, metadata !DIExpression()), !dbg !575
  %64 = load ptr, ptr %6, align 8, !dbg !576
  %65 = getelementptr inbounds %struct.app_ur_conn_info, ptr %64, i32 0, i32 8, !dbg !577
  %66 = load ptr, ptr %65, align 8, !dbg !577
  store ptr %66, ptr %16, align 8, !dbg !575
  call void @llvm.dbg.declare(metadata ptr %17, metadata !578, metadata !DIExpression()), !dbg !579
  %67 = load ptr, ptr %6, align 8, !dbg !580
  %68 = getelementptr inbounds %struct.app_ur_conn_info, ptr %67, i32 0, i32 7, !dbg !581
  %69 = load i32, ptr %68, align 8, !dbg !581
  store i32 %69, ptr %17, align 4, !dbg !579
  %70 = load i32, ptr %8, align 4, !dbg !582
  %71 = icmp ne i32 %70, 0, !dbg !582
  br i1 %71, label %72, label %93, !dbg !584

72:                                               ; preds = %63
  %73 = load ptr, ptr %9, align 8, !dbg !585
  %74 = icmp ne ptr %73, null, !dbg !585
  br i1 %74, label %75, label %82, !dbg !588

75:                                               ; preds = %72
  %76 = load ptr, ptr %9, align 8, !dbg !589
  %77 = getelementptr inbounds %struct.app_tcp_conn_info, ptr %76, i32 0, i32 3, !dbg !591
  %78 = load ptr, ptr %77, align 8, !dbg !591
  store ptr %78, ptr %16, align 8, !dbg !592
  %79 = load ptr, ptr %9, align 8, !dbg !593
  %80 = getelementptr inbounds %struct.app_tcp_conn_info, ptr %79, i32 0, i32 2, !dbg !594
  %81 = load i32, ptr %80, align 8, !dbg !594
  store i32 %81, ptr %17, align 4, !dbg !595
  br label %92, !dbg !596

82:                                               ; preds = %72
  %83 = load i8, ptr @relay_transport, align 1, !dbg !597
  %84 = zext i8 %83 to i32, !dbg !597
  %85 = icmp eq i32 %84, 6, !dbg !597
  br i1 %85, label %86, label %91, !dbg !599

86:                                               ; preds = %82
  %87 = load ptr, ptr %7, align 8, !dbg !600
  %88 = getelementptr inbounds %struct._stun_buffer, ptr %87, i32 0, i32 2, !dbg !602
  %89 = load i64, ptr %88, align 8, !dbg !602
  %90 = trunc i64 %89 to i32, !dbg !603
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str, i32 noundef %90), !dbg !604
  store i32 -1, ptr %5, align 4, !dbg !605
  br label %234, !dbg !605

91:                                               ; preds = %82
  br label %92

92:                                               ; preds = %91, %75
  br label %93, !dbg !606

93:                                               ; preds = %92, %63
  %94 = load ptr, ptr %16, align 8, !dbg !607
  %95 = icmp ne ptr %94, null, !dbg !607
  br i1 %95, label %96, label %170, !dbg !609

96:                                               ; preds = %93
  call void @llvm.dbg.declare(metadata ptr %18, metadata !610, metadata !DIExpression()), !dbg !612
  store i32 0, ptr %18, align 4, !dbg !612
  br label %97, !dbg !613

97:                                               ; preds = %168, %96
  %98 = load i32, ptr %18, align 4, !dbg !614
  %99 = icmp ne i32 %98, 0, !dbg !615
  %100 = xor i1 %99, true, !dbg !615
  br i1 %100, label %101, label %169, !dbg !613

101:                                              ; preds = %97
  %102 = load ptr, ptr %16, align 8, !dbg !616
  %103 = call i32 @SSL_get_shutdown(ptr noundef %102), !dbg !619
  %104 = icmp ne i32 %103, 0, !dbg !619
  br i1 %104, label %105, label %106, !dbg !620

105:                                              ; preds = %101
  store i32 -1, ptr %5, align 4, !dbg !621
  br label %234, !dbg !621

106:                                              ; preds = %101
  call void @llvm.dbg.declare(metadata ptr %19, metadata !623, metadata !DIExpression()), !dbg !624
  store i32 0, ptr %19, align 4, !dbg !624
  br label %107, !dbg !625

107:                                              ; preds = %128, %106
  %108 = load ptr, ptr %16, align 8, !dbg !626
  %109 = load ptr, ptr %12, align 8, !dbg !628
  %110 = load ptr, ptr %7, align 8, !dbg !629
  %111 = getelementptr inbounds %struct._stun_buffer, ptr %110, i32 0, i32 2, !dbg !630
  %112 = load i64, ptr %111, align 8, !dbg !630
  %113 = trunc i64 %112 to i32, !dbg !631
  %114 = call i32 @SSL_write(ptr noundef %108, ptr noundef %109, i32 noundef %113), !dbg !632
  store i32 %114, ptr %19, align 4, !dbg !633
  br label %115, !dbg !634

115:                                              ; preds = %107
  %116 = load i32, ptr %19, align 4, !dbg !635
  %117 = icmp slt i32 %116, 0, !dbg !636
  br i1 %117, label %118, label %128, !dbg !637

118:                                              ; preds = %115
  %119 = call ptr @__errno_location() #12, !dbg !638
  %120 = load i32, ptr %119, align 4, !dbg !638
  %121 = icmp eq i32 %120, 4, !dbg !639
  br i1 %121, label %126, label %122, !dbg !640

122:                                              ; preds = %118
  %123 = call ptr @__errno_location() #12, !dbg !641
  %124 = load i32, ptr %123, align 4, !dbg !641
  %125 = icmp eq i32 %124, 105, !dbg !642
  br label %126, !dbg !640

126:                                              ; preds = %122, %118
  %127 = phi i1 [ true, %118 ], [ %125, %122 ]
  br label %128

128:                                              ; preds = %126, %115
  %129 = phi i1 [ false, %115 ], [ %127, %126 ], !dbg !643
  br i1 %129, label %107, label %130, !dbg !634, !llvm.loop !644

130:                                              ; preds = %128
  %131 = load i32, ptr %19, align 4, !dbg !646
  %132 = load ptr, ptr %7, align 8, !dbg !648
  %133 = getelementptr inbounds %struct._stun_buffer, ptr %132, i32 0, i32 2, !dbg !649
  %134 = load i64, ptr %133, align 8, !dbg !649
  %135 = trunc i64 %134 to i32, !dbg !650
  %136 = icmp eq i32 %131, %135, !dbg !651
  br i1 %136, label %137, label %144, !dbg !652

137:                                              ; preds = %130
  %138 = load i32, ptr @clnet_verbose, align 4, !dbg !653
  %139 = icmp ne i32 %138, 0, !dbg !653
  br i1 %139, label %140, label %142, !dbg !656

140:                                              ; preds = %137
  %141 = load i32, ptr %19, align 4, !dbg !657
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.1, i32 noundef %141), !dbg !659
  br label %142, !dbg !660

142:                                              ; preds = %140, %137
  store i32 1, ptr %18, align 4, !dbg !661
  %143 = load i32, ptr %19, align 4, !dbg !662
  store i32 %143, ptr %11, align 4, !dbg !663
  br label %168, !dbg !664

144:                                              ; preds = %130
  %145 = load ptr, ptr %16, align 8, !dbg !665
  %146 = load i32, ptr %19, align 4, !dbg !667
  %147 = call i32 @SSL_get_error(ptr noundef %145, i32 noundef %146), !dbg !668
  switch i32 %147, label %164 [
    i32 0, label %148
    i32 3, label %149
    i32 2, label %150
    i32 6, label %151
    i32 5, label %152
    i32 1, label %157
  ], !dbg !669

148:                                              ; preds = %144
  br label %167, !dbg !670

149:                                              ; preds = %144
  br label %167, !dbg !672

150:                                              ; preds = %144
  br label %167, !dbg !673

151:                                              ; preds = %144
  br label %167, !dbg !674

152:                                              ; preds = %144
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.2), !dbg !675
  %153 = call i32 @handle_socket_error(), !dbg !676
  %154 = icmp ne i32 %153, 0, !dbg !676
  br i1 %154, label %155, label %156, !dbg !678

155:                                              ; preds = %152
  br label %167, !dbg !679

156:                                              ; preds = %152
  br label %157, !dbg !680

157:                                              ; preds = %144, %156
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.3), !dbg !681
  call void @llvm.dbg.declare(metadata ptr %20, metadata !683, metadata !DIExpression()), !dbg !687
  %158 = call i64 @ERR_get_error(), !dbg !688
  %159 = getelementptr inbounds [1024 x i8], ptr %20, i64 0, i64 0, !dbg !689
  %160 = call ptr @ERR_error_string(i64 noundef %158, ptr noundef %159), !dbg !690
  %161 = load ptr, ptr %16, align 8, !dbg !691
  %162 = load i32, ptr %19, align 4, !dbg !692
  %163 = call i32 @SSL_get_error(ptr noundef %161, i32 noundef %162), !dbg !693
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.4, ptr noundef %160, i32 noundef %163), !dbg !694
  br label %164, !dbg !695

164:                                              ; preds = %144, %157
  %165 = load ptr, ptr %6, align 8, !dbg !696
  %166 = getelementptr inbounds %struct.app_ur_conn_info, ptr %165, i32 0, i32 9, !dbg !697
  store i32 1, ptr %166, align 8, !dbg !698
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.5), !dbg !699
  store i32 -1, ptr %5, align 4, !dbg !700
  br label %234, !dbg !700

167:                                              ; preds = %155, %151, %150, %149, %148
  br label %168

168:                                              ; preds = %167, %142
  br label %97, !dbg !613, !llvm.loop !701

169:                                              ; preds = %97
  br label %232, !dbg !703

170:                                              ; preds = %93
  %171 = load i32, ptr %17, align 4, !dbg !704
  %172 = icmp sge i32 %171, 0, !dbg !706
  br i1 %172, label %173, label %231, !dbg !707

173:                                              ; preds = %170
  call void @llvm.dbg.declare(metadata ptr %21, metadata !708, metadata !DIExpression()), !dbg !710
  %174 = load ptr, ptr %7, align 8, !dbg !711
  %175 = getelementptr inbounds %struct._stun_buffer, ptr %174, i32 0, i32 2, !dbg !712
  %176 = load i64, ptr %175, align 8, !dbg !712
  store i64 %176, ptr %21, align 8, !dbg !710
  br label %177, !dbg !713

177:                                              ; preds = %221, %173
  %178 = load i64, ptr %21, align 8, !dbg !714
  %179 = icmp ugt i64 %178, 0, !dbg !715
  br i1 %179, label %180, label %222, !dbg !713

180:                                              ; preds = %177
  br label %181, !dbg !716

181:                                              ; preds = %204, %180
  %182 = load i32, ptr %17, align 4, !dbg !718
  %183 = load ptr, ptr %12, align 8, !dbg !720
  %184 = load i64, ptr %21, align 8, !dbg !721
  %185 = call i64 @send(i32 noundef %182, ptr noundef %183, i64 noundef %184, i32 noundef 0), !dbg !722
  %186 = trunc i64 %185 to i32, !dbg !722
  store i32 %186, ptr %10, align 4, !dbg !723
  br label %187, !dbg !724

187:                                              ; preds = %181
  %188 = load i32, ptr %10, align 4, !dbg !725
  %189 = icmp sle i32 %188, 0, !dbg !726
  br i1 %189, label %190, label %204, !dbg !727

190:                                              ; preds = %187
  %191 = call ptr @__errno_location() #12, !dbg !728
  %192 = load i32, ptr %191, align 4, !dbg !728
  %193 = icmp eq i32 %192, 4, !dbg !729
  br i1 %193, label %202, label %194, !dbg !730

194:                                              ; preds = %190
  %195 = call ptr @__errno_location() #12, !dbg !731
  %196 = load i32, ptr %195, align 4, !dbg !731
  %197 = icmp eq i32 %196, 105, !dbg !732
  br i1 %197, label %202, label %198, !dbg !733

198:                                              ; preds = %194
  %199 = call ptr @__errno_location() #12, !dbg !734
  %200 = load i32, ptr %199, align 4, !dbg !734
  %201 = icmp eq i32 %200, 11, !dbg !735
  br label %202, !dbg !733

202:                                              ; preds = %198, %194, %190
  %203 = phi i1 [ true, %194 ], [ true, %190 ], [ %201, %198 ]
  br label %204

204:                                              ; preds = %202, %187
  %205 = phi i1 [ false, %187 ], [ %203, %202 ], !dbg !736
  br i1 %205, label %181, label %206, !dbg !724, !llvm.loop !737

206:                                              ; preds = %204
  %207 = load i32, ptr %10, align 4, !dbg !739
  %208 = icmp sgt i32 %207, 0, !dbg !741
  br i1 %208, label %209, label %218, !dbg !742

209:                                              ; preds = %206
  %210 = load i32, ptr %10, align 4, !dbg !743
  %211 = sext i32 %210 to i64, !dbg !745
  %212 = load i64, ptr %21, align 8, !dbg !746
  %213 = sub i64 %212, %211, !dbg !746
  store i64 %213, ptr %21, align 8, !dbg !746
  %214 = load i32, ptr %10, align 4, !dbg !747
  %215 = load ptr, ptr %12, align 8, !dbg !748
  %216 = sext i32 %214 to i64, !dbg !748
  %217 = getelementptr inbounds i8, ptr %215, i64 %216, !dbg !748
  store ptr %217, ptr %12, align 8, !dbg !748
  br label %221, !dbg !749

218:                                              ; preds = %206
  %219 = load i64, ptr @tot_send_dropped, align 8, !dbg !750
  %220 = add i64 %219, 1, !dbg !750
  store i64 %220, ptr @tot_send_dropped, align 8, !dbg !750
  br label %222, !dbg !752

221:                                              ; preds = %209
  br label %177, !dbg !713, !llvm.loop !753

222:                                              ; preds = %218, %177
  %223 = load i64, ptr %21, align 8, !dbg !755
  %224 = icmp ugt i64 %223, 0, !dbg !757
  br i1 %224, label %225, label %226, !dbg !758

225:                                              ; preds = %222
  store i32 -1, ptr %5, align 4, !dbg !759
  br label %234, !dbg !759

226:                                              ; preds = %222
  %227 = load ptr, ptr %7, align 8, !dbg !760
  %228 = getelementptr inbounds %struct._stun_buffer, ptr %227, i32 0, i32 2, !dbg !761
  %229 = load i64, ptr %228, align 8, !dbg !761
  %230 = trunc i64 %229 to i32, !dbg !762
  store i32 %230, ptr %11, align 4, !dbg !763
  br label %231, !dbg !764

231:                                              ; preds = %226, %170
  br label %232

232:                                              ; preds = %231, %169
  %233 = load i32, ptr %11, align 4, !dbg !765
  store i32 %233, ptr %5, align 4, !dbg !766
  br label %234, !dbg !766

234:                                              ; preds = %232, %225, %164, %105, %86
  %235 = load i32, ptr %5, align 4, !dbg !767
  ret i32 %235, !dbg !767
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i64 @random() #2

declare void @turn_log_func_default(i32 noundef, ptr noundef, ...) #3

declare i32 @SSL_get_shutdown(ptr noundef) #3

declare i32 @SSL_write(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #4

declare i32 @SSL_get_error(ptr noundef, i32 noundef) #3

declare i32 @handle_socket_error() #3

declare ptr @ERR_error_string(i64 noundef, ptr noundef) #3

declare i64 @ERR_get_error() #3

declare i64 @send(i32 noundef, ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @recv_buffer(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) #0 !dbg !768 {
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.stun_tid, align 1
  %16 = alloca i16, align 2
  %17 = alloca i32, align 4
  %18 = alloca ptr, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca [1024 x i8], align 16
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca [1024 x i8], align 16
  %29 = alloca i32, align 4
  %30 = alloca i64, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca %struct.stun_tid, align 1
  %35 = alloca i16, align 2
  store ptr %0, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !771, metadata !DIExpression()), !dbg !772
  store ptr %1, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !773, metadata !DIExpression()), !dbg !774
  store i32 %2, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !775, metadata !DIExpression()), !dbg !776
  store i32 %3, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !777, metadata !DIExpression()), !dbg !778
  store ptr %4, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !779, metadata !DIExpression()), !dbg !780
  store ptr %5, ptr %13, align 8
  call void @llvm.dbg.declare(metadata ptr %13, metadata !781, metadata !DIExpression()), !dbg !782
  call void @llvm.dbg.declare(metadata ptr %14, metadata !783, metadata !DIExpression()), !dbg !784
  store i32 0, ptr %14, align 4, !dbg !784
  call void @llvm.dbg.declare(metadata ptr %15, metadata !785, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.declare(metadata ptr %16, metadata !794, metadata !DIExpression()), !dbg !795
  store i16 0, ptr %16, align 2, !dbg !795
  %36 = load ptr, ptr %13, align 8, !dbg !796
  %37 = icmp ne ptr %36, null, !dbg !796
  br i1 %37, label %38, label %42, !dbg !798

38:                                               ; preds = %6
  %39 = load ptr, ptr %13, align 8, !dbg !799
  call void @stun_tid_from_message(ptr noundef %39, ptr noundef %15), !dbg !801
  %40 = load ptr, ptr %13, align 8, !dbg !802
  %41 = call zeroext i16 @stun_get_method(ptr noundef %40), !dbg !803
  store i16 %41, ptr %16, align 2, !dbg !804
  br label %42, !dbg !805

42:                                               ; preds = %38, %6
  call void @llvm.dbg.declare(metadata ptr %17, metadata !806, metadata !DIExpression()), !dbg !807
  %43 = load ptr, ptr %8, align 8, !dbg !808
  %44 = getelementptr inbounds %struct.app_ur_conn_info, ptr %43, i32 0, i32 7, !dbg !809
  %45 = load i32, ptr %44, align 8, !dbg !809
  store i32 %45, ptr %17, align 4, !dbg !807
  %46 = load ptr, ptr %12, align 8, !dbg !810
  %47 = icmp ne ptr %46, null, !dbg !810
  br i1 %47, label %48, label %52, !dbg !812

48:                                               ; preds = %42
  %49 = load ptr, ptr %12, align 8, !dbg !813
  %50 = getelementptr inbounds %struct.app_tcp_conn_info, ptr %49, i32 0, i32 2, !dbg !814
  %51 = load i32, ptr %50, align 8, !dbg !814
  store i32 %51, ptr %17, align 4, !dbg !815
  br label %52, !dbg !816

52:                                               ; preds = %48, %42
  call void @llvm.dbg.declare(metadata ptr %18, metadata !817, metadata !DIExpression()), !dbg !818
  %53 = load ptr, ptr %8, align 8, !dbg !819
  %54 = getelementptr inbounds %struct.app_ur_conn_info, ptr %53, i32 0, i32 8, !dbg !820
  %55 = load ptr, ptr %54, align 8, !dbg !820
  store ptr %55, ptr %18, align 8, !dbg !818
  %56 = load ptr, ptr %12, align 8, !dbg !821
  %57 = icmp ne ptr %56, null, !dbg !821
  br i1 %57, label %58, label %62, !dbg !823

58:                                               ; preds = %52
  %59 = load ptr, ptr %12, align 8, !dbg !824
  %60 = getelementptr inbounds %struct.app_tcp_conn_info, ptr %59, i32 0, i32 3, !dbg !825
  %61 = load ptr, ptr %60, align 8, !dbg !825
  store ptr %61, ptr %18, align 8, !dbg !826
  br label %62, !dbg !827

62:                                               ; preds = %58, %52
  br label %63, !dbg !821

63:                                               ; preds = %540, %528, %62
  call void @llvm.dbg.label(metadata !828), !dbg !829
  %64 = load i32, ptr @use_tcp, align 4, !dbg !830
  %65 = icmp ne i32 %64, 0, !dbg !830
  br i1 %65, label %102, label %66, !dbg !832

66:                                               ; preds = %63
  %67 = load i32, ptr %10, align 4, !dbg !833
  %68 = icmp ne i32 %67, 0, !dbg !833
  br i1 %68, label %69, label %102, !dbg !834

69:                                               ; preds = %66
  %70 = load ptr, ptr %13, align 8, !dbg !835
  %71 = icmp ne ptr %70, null, !dbg !835
  br i1 %71, label %72, label %102, !dbg !836

72:                                               ; preds = %69
  %73 = load i32, ptr %17, align 4, !dbg !837
  %74 = icmp sge i32 %73, 0, !dbg !838
  br i1 %74, label %75, label %102, !dbg !839

75:                                               ; preds = %72
  call void @llvm.dbg.declare(metadata ptr %19, metadata !840, metadata !DIExpression()), !dbg !842
  store i32 0, ptr %19, align 4, !dbg !842
  br label %76, !dbg !843

76:                                               ; preds = %98, %75
  %77 = load i32, ptr %19, align 4, !dbg !844
  %78 = icmp ult i32 %77, 7, !dbg !845
  br i1 %78, label %79, label %101, !dbg !843

79:                                               ; preds = %76
  call void @llvm.dbg.declare(metadata ptr %20, metadata !846, metadata !DIExpression()), !dbg !848
  %80 = load i32, ptr %17, align 4, !dbg !849
  %81 = load i32, ptr %19, align 4, !dbg !850
  %82 = call i32 @wait_fd(i32 noundef %80, i32 noundef %81), !dbg !851
  store i32 %82, ptr %20, align 4, !dbg !848
  %83 = load i32, ptr %20, align 4, !dbg !852
  %84 = icmp sgt i32 %83, 0, !dbg !854
  br i1 %84, label %85, label %86, !dbg !855

85:                                               ; preds = %79
  br label %101, !dbg !856

86:                                               ; preds = %79
  %87 = load i32, ptr %20, align 4, !dbg !857
  %88 = icmp slt i32 %87, 0, !dbg !859
  br i1 %88, label %89, label %90, !dbg !860

89:                                               ; preds = %86
  store i32 -1, ptr %7, align 4, !dbg !861
  br label %545, !dbg !861

90:                                               ; preds = %86
  %91 = load ptr, ptr %8, align 8, !dbg !863
  %92 = load ptr, ptr %13, align 8, !dbg !865
  %93 = load i32, ptr %11, align 4, !dbg !866
  %94 = load ptr, ptr %12, align 8, !dbg !867
  %95 = call i32 @send_buffer(ptr noundef %91, ptr noundef %92, i32 noundef %93, ptr noundef %94), !dbg !868
  %96 = icmp sle i32 %95, 0, !dbg !869
  br i1 %96, label %97, label %98, !dbg !870

97:                                               ; preds = %90
  store i32 -1, ptr %7, align 4, !dbg !871
  br label %545, !dbg !871

98:                                               ; preds = %90
  %99 = load i32, ptr %19, align 4, !dbg !872
  %100 = add i32 %99, 1, !dbg !872
  store i32 %100, ptr %19, align 4, !dbg !872
  br label %76, !dbg !843, !llvm.loop !873

101:                                              ; preds = %85, %76
  br label %102, !dbg !875

102:                                              ; preds = %101, %72, %69, %66, %63
  %103 = load i32, ptr @use_secure, align 4, !dbg !876
  %104 = icmp ne i32 %103, 0, !dbg !876
  br i1 %104, label %149, label %105, !dbg !878

105:                                              ; preds = %102
  %106 = load i32, ptr @use_tcp, align 4, !dbg !879
  %107 = icmp ne i32 %106, 0, !dbg !879
  br i1 %107, label %149, label %108, !dbg !880

108:                                              ; preds = %105
  %109 = load i32, ptr %17, align 4, !dbg !881
  %110 = icmp sge i32 %109, 0, !dbg !882
  br i1 %110, label %111, label %149, !dbg !883

111:                                              ; preds = %108
  br label %112, !dbg !884

112:                                              ; preds = %138, %111
  %113 = load i32, ptr %17, align 4, !dbg !886
  %114 = load ptr, ptr %9, align 8, !dbg !888
  %115 = getelementptr inbounds %struct._stun_buffer, ptr %114, i32 0, i32 1, !dbg !889
  %116 = getelementptr inbounds [65507 x i8], ptr %115, i64 0, i64 0, !dbg !888
  %117 = call i64 @recv(i32 noundef %113, ptr noundef %116, i64 noundef 65506, i32 noundef 0), !dbg !890
  %118 = trunc i64 %117 to i32, !dbg !890
  store i32 %118, ptr %14, align 4, !dbg !891
  %119 = load i32, ptr %14, align 4, !dbg !892
  %120 = icmp slt i32 %119, 0, !dbg !894
  br i1 %120, label %121, label %130, !dbg !895

121:                                              ; preds = %112
  %122 = call ptr @__errno_location() #12, !dbg !896
  %123 = load i32, ptr %122, align 4, !dbg !896
  %124 = icmp eq i32 %123, 11, !dbg !897
  br i1 %124, label %125, label %130, !dbg !898

125:                                              ; preds = %121
  %126 = load i32, ptr %10, align 4, !dbg !899
  %127 = icmp ne i32 %126, 0, !dbg !899
  br i1 %127, label %128, label %130, !dbg !900

128:                                              ; preds = %125
  %129 = call ptr @__errno_location() #12, !dbg !901
  store i32 4, ptr %129, align 4, !dbg !902
  br label %130, !dbg !901

130:                                              ; preds = %128, %125, %121, %112
  br label %131, !dbg !903

131:                                              ; preds = %130
  %132 = load i32, ptr %14, align 4, !dbg !904
  %133 = icmp slt i32 %132, 0, !dbg !905
  br i1 %133, label %134, label %138, !dbg !906

134:                                              ; preds = %131
  %135 = call ptr @__errno_location() #12, !dbg !907
  %136 = load i32, ptr %135, align 4, !dbg !907
  %137 = icmp eq i32 %136, 4, !dbg !908
  br label %138

138:                                              ; preds = %134, %131
  %139 = phi i1 [ false, %131 ], [ %137, %134 ], !dbg !909
  br i1 %139, label %112, label %140, !dbg !903, !llvm.loop !910

140:                                              ; preds = %138
  %141 = load i32, ptr %14, align 4, !dbg !912
  %142 = icmp slt i32 %141, 0, !dbg !914
  br i1 %142, label %143, label %144, !dbg !915

143:                                              ; preds = %140
  store i32 -1, ptr %7, align 4, !dbg !916
  br label %545, !dbg !916

144:                                              ; preds = %140
  %145 = load i32, ptr %14, align 4, !dbg !918
  %146 = sext i32 %145 to i64, !dbg !918
  %147 = load ptr, ptr %9, align 8, !dbg !919
  %148 = getelementptr inbounds %struct._stun_buffer, ptr %147, i32 0, i32 2, !dbg !920
  store i64 %146, ptr %148, align 8, !dbg !921
  br label %513, !dbg !922

149:                                              ; preds = %108, %105, %102
  %150 = load i32, ptr @use_secure, align 4, !dbg !923
  %151 = icmp ne i32 %150, 0, !dbg !923
  br i1 %151, label %152, label %251, !dbg !925

152:                                              ; preds = %149
  %153 = load i32, ptr @use_tcp, align 4, !dbg !926
  %154 = icmp ne i32 %153, 0, !dbg !926
  br i1 %154, label %251, label %155, !dbg !927

155:                                              ; preds = %152
  %156 = load ptr, ptr %18, align 8, !dbg !928
  %157 = icmp ne ptr %156, null, !dbg !928
  br i1 %157, label %158, label %251, !dbg !929

158:                                              ; preds = %155
  %159 = load ptr, ptr %8, align 8, !dbg !930
  %160 = getelementptr inbounds %struct.app_ur_conn_info, ptr %159, i32 0, i32 9, !dbg !931
  %161 = load i32, ptr %160, align 8, !dbg !931
  %162 = icmp ne i32 %161, 0, !dbg !932
  br i1 %162, label %251, label %163, !dbg !933

163:                                              ; preds = %158
  call void @llvm.dbg.declare(metadata ptr %21, metadata !934, metadata !DIExpression()), !dbg !936
  store i32 0, ptr %21, align 4, !dbg !936
  call void @llvm.dbg.declare(metadata ptr %22, metadata !937, metadata !DIExpression()), !dbg !938
  store i32 0, ptr %22, align 4, !dbg !938
  br label %164, !dbg !939

164:                                              ; preds = %249, %163
  %165 = load i32, ptr %21, align 4, !dbg !940
  %166 = icmp ne i32 %165, 0, !dbg !940
  br i1 %166, label %171, label %167, !dbg !941

167:                                              ; preds = %164
  %168 = load i32, ptr %22, align 4, !dbg !942
  %169 = add nsw i32 %168, 1, !dbg !942
  store i32 %169, ptr %22, align 4, !dbg !942
  %170 = icmp slt i32 %168, 100, !dbg !943
  br label %171

171:                                              ; preds = %167, %164
  %172 = phi i1 [ false, %164 ], [ %170, %167 ], !dbg !944
  br i1 %172, label %173, label %250, !dbg !939

173:                                              ; preds = %171
  %174 = load ptr, ptr %18, align 8, !dbg !945
  %175 = call i32 @SSL_get_shutdown(ptr noundef %174), !dbg !948
  %176 = icmp ne i32 %175, 0, !dbg !948
  br i1 %176, label %177, label %178, !dbg !949

177:                                              ; preds = %173
  store i32 -1, ptr %7, align 4, !dbg !950
  br label %545, !dbg !950

178:                                              ; preds = %173
  store i32 0, ptr %14, align 4, !dbg !951
  br label %179, !dbg !952

179:                                              ; preds = %203, %178
  %180 = load ptr, ptr %18, align 8, !dbg !953
  %181 = load ptr, ptr %9, align 8, !dbg !955
  %182 = getelementptr inbounds %struct._stun_buffer, ptr %181, i32 0, i32 1, !dbg !956
  %183 = getelementptr inbounds [65507 x i8], ptr %182, i64 0, i64 0, !dbg !955
  %184 = call i32 @SSL_read(ptr noundef %180, ptr noundef %183, i32 noundef 65506), !dbg !957
  store i32 %184, ptr %14, align 4, !dbg !958
  %185 = load i32, ptr %14, align 4, !dbg !959
  %186 = icmp slt i32 %185, 0, !dbg !961
  br i1 %186, label %187, label %195, !dbg !962

187:                                              ; preds = %179
  %188 = call ptr @__errno_location() #12, !dbg !963
  %189 = load i32, ptr %188, align 4, !dbg !963
  %190 = icmp eq i32 %189, 11, !dbg !964
  br i1 %190, label %191, label %195, !dbg !965

191:                                              ; preds = %187
  %192 = load i32, ptr %10, align 4, !dbg !966
  %193 = icmp ne i32 %192, 0, !dbg !966
  br i1 %193, label %194, label %195, !dbg !967

194:                                              ; preds = %191
  br label %196, !dbg !968

195:                                              ; preds = %191, %187, %179
  br label %196, !dbg !969

196:                                              ; preds = %195, %194
  %197 = load i32, ptr %14, align 4, !dbg !970
  %198 = icmp slt i32 %197, 0, !dbg !971
  br i1 %198, label %199, label %203, !dbg !972

199:                                              ; preds = %196
  %200 = call ptr @__errno_location() #12, !dbg !973
  %201 = load i32, ptr %200, align 4, !dbg !973
  %202 = icmp eq i32 %201, 4, !dbg !974
  br label %203

203:                                              ; preds = %199, %196
  %204 = phi i1 [ false, %196 ], [ %202, %199 ], !dbg !975
  br i1 %204, label %179, label %205, !dbg !969, !llvm.loop !976

205:                                              ; preds = %203
  %206 = load i32, ptr %14, align 4, !dbg !978
  %207 = icmp sgt i32 %206, 0, !dbg !980
  br i1 %207, label %208, label %218, !dbg !981

208:                                              ; preds = %205
  %209 = load i32, ptr @clnet_verbose, align 4, !dbg !982
  %210 = icmp ne i32 %209, 0, !dbg !982
  br i1 %210, label %211, label %213, !dbg !985

211:                                              ; preds = %208
  %212 = load i32, ptr %14, align 4, !dbg !986
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.6, i32 noundef %212), !dbg !988
  br label %213, !dbg !989

213:                                              ; preds = %211, %208
  %214 = load i32, ptr %14, align 4, !dbg !990
  %215 = sext i32 %214 to i64, !dbg !990
  %216 = load ptr, ptr %9, align 8, !dbg !991
  %217 = getelementptr inbounds %struct._stun_buffer, ptr %216, i32 0, i32 2, !dbg !992
  store i64 %215, ptr %217, align 8, !dbg !993
  store i32 1, ptr %21, align 4, !dbg !994
  br label %249, !dbg !995

218:                                              ; preds = %205
  call void @llvm.dbg.declare(metadata ptr %23, metadata !996, metadata !DIExpression()), !dbg !998
  %219 = load ptr, ptr %18, align 8, !dbg !999
  %220 = load i32, ptr %14, align 4, !dbg !1000
  %221 = call i32 @SSL_get_error(ptr noundef %219, i32 noundef %220), !dbg !1001
  store i32 %221, ptr %23, align 4, !dbg !998
  %222 = load i32, ptr %23, align 4, !dbg !1002
  switch i32 %222, label %239 [
    i32 0, label %223
    i32 3, label %224
    i32 2, label %225
    i32 6, label %226
    i32 5, label %227
    i32 1, label %232
  ], !dbg !1003

223:                                              ; preds = %218
  br label %244, !dbg !1004

224:                                              ; preds = %218
  br label %244, !dbg !1006

225:                                              ; preds = %218
  br label %244, !dbg !1007

226:                                              ; preds = %218
  br label %244, !dbg !1008

227:                                              ; preds = %218
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.7), !dbg !1009
  %228 = call i32 @handle_socket_error(), !dbg !1010
  %229 = icmp ne i32 %228, 0, !dbg !1010
  br i1 %229, label %230, label %231, !dbg !1012

230:                                              ; preds = %227
  br label %244, !dbg !1013

231:                                              ; preds = %227
  br label %232, !dbg !1014

232:                                              ; preds = %218, %231
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.3), !dbg !1015
  call void @llvm.dbg.declare(metadata ptr %24, metadata !1017, metadata !DIExpression()), !dbg !1018
  %233 = call i64 @ERR_get_error(), !dbg !1019
  %234 = getelementptr inbounds [1024 x i8], ptr %24, i64 0, i64 0, !dbg !1020
  %235 = call ptr @ERR_error_string(i64 noundef %233, ptr noundef %234), !dbg !1021
  %236 = load ptr, ptr %18, align 8, !dbg !1022
  %237 = load i32, ptr %14, align 4, !dbg !1023
  %238 = call i32 @SSL_get_error(ptr noundef %236, i32 noundef %237), !dbg !1024
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.4, ptr noundef %235, i32 noundef %238), !dbg !1025
  br label %239, !dbg !1026

239:                                              ; preds = %218, %232
  %240 = load ptr, ptr %8, align 8, !dbg !1027
  %241 = getelementptr inbounds %struct.app_ur_conn_info, ptr %240, i32 0, i32 9, !dbg !1028
  store i32 1, ptr %241, align 8, !dbg !1029
  %242 = load i32, ptr %14, align 4, !dbg !1030
  %243 = load i32, ptr %23, align 4, !dbg !1031
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.8, i32 noundef %242, i32 noundef %243), !dbg !1032
  store i32 -1, ptr %7, align 4, !dbg !1033
  br label %545, !dbg !1033

244:                                              ; preds = %230, %226, %225, %224, %223
  %245 = load i32, ptr %10, align 4, !dbg !1034
  %246 = icmp ne i32 %245, 0, !dbg !1034
  br i1 %246, label %248, label %247, !dbg !1036

247:                                              ; preds = %244
  br label %250, !dbg !1037

248:                                              ; preds = %244
  br label %249

249:                                              ; preds = %248, %213
  br label %164, !dbg !939, !llvm.loop !1038

250:                                              ; preds = %247, %171
  br label %512, !dbg !1040

251:                                              ; preds = %158, %155, %152, %149
  %252 = load i32, ptr @use_secure, align 4, !dbg !1041
  %253 = icmp ne i32 %252, 0, !dbg !1041
  br i1 %253, label %254, label %353, !dbg !1043

254:                                              ; preds = %251
  %255 = load i32, ptr @use_tcp, align 4, !dbg !1044
  %256 = icmp ne i32 %255, 0, !dbg !1044
  br i1 %256, label %257, label %353, !dbg !1045

257:                                              ; preds = %254
  %258 = load ptr, ptr %18, align 8, !dbg !1046
  %259 = icmp ne ptr %258, null, !dbg !1046
  br i1 %259, label %260, label %353, !dbg !1047

260:                                              ; preds = %257
  %261 = load ptr, ptr %8, align 8, !dbg !1048
  %262 = getelementptr inbounds %struct.app_ur_conn_info, ptr %261, i32 0, i32 9, !dbg !1049
  %263 = load i32, ptr %262, align 8, !dbg !1049
  %264 = icmp ne i32 %263, 0, !dbg !1050
  br i1 %264, label %353, label %265, !dbg !1051

265:                                              ; preds = %260
  call void @llvm.dbg.declare(metadata ptr %25, metadata !1052, metadata !DIExpression()), !dbg !1054
  store i32 0, ptr %25, align 4, !dbg !1054
  call void @llvm.dbg.declare(metadata ptr %26, metadata !1055, metadata !DIExpression()), !dbg !1056
  store i32 0, ptr %26, align 4, !dbg !1056
  br label %266, !dbg !1057

266:                                              ; preds = %351, %265
  %267 = load i32, ptr %25, align 4, !dbg !1058
  %268 = icmp ne i32 %267, 0, !dbg !1058
  br i1 %268, label %273, label %269, !dbg !1059

269:                                              ; preds = %266
  %270 = load i32, ptr %26, align 4, !dbg !1060
  %271 = add nsw i32 %270, 1, !dbg !1060
  store i32 %271, ptr %26, align 4, !dbg !1060
  %272 = icmp slt i32 %270, 100, !dbg !1061
  br label %273

273:                                              ; preds = %269, %266
  %274 = phi i1 [ false, %266 ], [ %272, %269 ], !dbg !1062
  br i1 %274, label %275, label %352, !dbg !1057

275:                                              ; preds = %273
  %276 = load ptr, ptr %18, align 8, !dbg !1063
  %277 = call i32 @SSL_get_shutdown(ptr noundef %276), !dbg !1066
  %278 = icmp ne i32 %277, 0, !dbg !1066
  br i1 %278, label %279, label %280, !dbg !1067

279:                                              ; preds = %275
  store i32 -1, ptr %7, align 4, !dbg !1068
  br label %545, !dbg !1068

280:                                              ; preds = %275
  store i32 0, ptr %14, align 4, !dbg !1069
  br label %281, !dbg !1070

281:                                              ; preds = %305, %280
  %282 = load ptr, ptr %18, align 8, !dbg !1071
  %283 = load ptr, ptr %9, align 8, !dbg !1073
  %284 = getelementptr inbounds %struct._stun_buffer, ptr %283, i32 0, i32 1, !dbg !1074
  %285 = getelementptr inbounds [65507 x i8], ptr %284, i64 0, i64 0, !dbg !1073
  %286 = call i32 @SSL_read(ptr noundef %282, ptr noundef %285, i32 noundef 65506), !dbg !1075
  store i32 %286, ptr %14, align 4, !dbg !1076
  %287 = load i32, ptr %14, align 4, !dbg !1077
  %288 = icmp slt i32 %287, 0, !dbg !1079
  br i1 %288, label %289, label %297, !dbg !1080

289:                                              ; preds = %281
  %290 = call ptr @__errno_location() #12, !dbg !1081
  %291 = load i32, ptr %290, align 4, !dbg !1081
  %292 = icmp eq i32 %291, 11, !dbg !1082
  br i1 %292, label %293, label %297, !dbg !1083

293:                                              ; preds = %289
  %294 = load i32, ptr %10, align 4, !dbg !1084
  %295 = icmp ne i32 %294, 0, !dbg !1084
  br i1 %295, label %296, label %297, !dbg !1085

296:                                              ; preds = %293
  br label %298, !dbg !1086

297:                                              ; preds = %293, %289, %281
  br label %298, !dbg !1087

298:                                              ; preds = %297, %296
  %299 = load i32, ptr %14, align 4, !dbg !1088
  %300 = icmp slt i32 %299, 0, !dbg !1089
  br i1 %300, label %301, label %305, !dbg !1090

301:                                              ; preds = %298
  %302 = call ptr @__errno_location() #12, !dbg !1091
  %303 = load i32, ptr %302, align 4, !dbg !1091
  %304 = icmp eq i32 %303, 4, !dbg !1092
  br label %305

305:                                              ; preds = %301, %298
  %306 = phi i1 [ false, %298 ], [ %304, %301 ], !dbg !1093
  br i1 %306, label %281, label %307, !dbg !1087, !llvm.loop !1094

307:                                              ; preds = %305
  %308 = load i32, ptr %14, align 4, !dbg !1096
  %309 = icmp sgt i32 %308, 0, !dbg !1098
  br i1 %309, label %310, label %320, !dbg !1099

310:                                              ; preds = %307
  %311 = load i32, ptr @clnet_verbose, align 4, !dbg !1100
  %312 = icmp ne i32 %311, 0, !dbg !1100
  br i1 %312, label %313, label %315, !dbg !1103

313:                                              ; preds = %310
  %314 = load i32, ptr %14, align 4, !dbg !1104
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.6, i32 noundef %314), !dbg !1106
  br label %315, !dbg !1107

315:                                              ; preds = %313, %310
  %316 = load i32, ptr %14, align 4, !dbg !1108
  %317 = sext i32 %316 to i64, !dbg !1108
  %318 = load ptr, ptr %9, align 8, !dbg !1109
  %319 = getelementptr inbounds %struct._stun_buffer, ptr %318, i32 0, i32 2, !dbg !1110
  store i64 %317, ptr %319, align 8, !dbg !1111
  store i32 1, ptr %25, align 4, !dbg !1112
  br label %351, !dbg !1113

320:                                              ; preds = %307
  call void @llvm.dbg.declare(metadata ptr %27, metadata !1114, metadata !DIExpression()), !dbg !1116
  %321 = load ptr, ptr %18, align 8, !dbg !1117
  %322 = load i32, ptr %14, align 4, !dbg !1118
  %323 = call i32 @SSL_get_error(ptr noundef %321, i32 noundef %322), !dbg !1119
  store i32 %323, ptr %27, align 4, !dbg !1116
  %324 = load i32, ptr %27, align 4, !dbg !1120
  switch i32 %324, label %341 [
    i32 0, label %325
    i32 3, label %326
    i32 2, label %327
    i32 6, label %328
    i32 5, label %329
    i32 1, label %334
  ], !dbg !1121

325:                                              ; preds = %320
  br label %346, !dbg !1122

326:                                              ; preds = %320
  br label %346, !dbg !1124

327:                                              ; preds = %320
  br label %346, !dbg !1125

328:                                              ; preds = %320
  br label %346, !dbg !1126

329:                                              ; preds = %320
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.7), !dbg !1127
  %330 = call i32 @handle_socket_error(), !dbg !1128
  %331 = icmp ne i32 %330, 0, !dbg !1128
  br i1 %331, label %332, label %333, !dbg !1130

332:                                              ; preds = %329
  br label %346, !dbg !1131

333:                                              ; preds = %329
  br label %334, !dbg !1132

334:                                              ; preds = %320, %333
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.3), !dbg !1133
  call void @llvm.dbg.declare(metadata ptr %28, metadata !1135, metadata !DIExpression()), !dbg !1136
  %335 = call i64 @ERR_get_error(), !dbg !1137
  %336 = getelementptr inbounds [1024 x i8], ptr %28, i64 0, i64 0, !dbg !1138
  %337 = call ptr @ERR_error_string(i64 noundef %335, ptr noundef %336), !dbg !1139
  %338 = load ptr, ptr %18, align 8, !dbg !1140
  %339 = load i32, ptr %14, align 4, !dbg !1141
  %340 = call i32 @SSL_get_error(ptr noundef %338, i32 noundef %339), !dbg !1142
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.4, ptr noundef %337, i32 noundef %340), !dbg !1143
  br label %341, !dbg !1144

341:                                              ; preds = %320, %334
  %342 = load ptr, ptr %8, align 8, !dbg !1145
  %343 = getelementptr inbounds %struct.app_ur_conn_info, ptr %342, i32 0, i32 9, !dbg !1146
  store i32 1, ptr %343, align 8, !dbg !1147
  %344 = load i32, ptr %14, align 4, !dbg !1148
  %345 = load i32, ptr %27, align 4, !dbg !1149
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.8, i32 noundef %344, i32 noundef %345), !dbg !1150
  store i32 -1, ptr %7, align 4, !dbg !1151
  br label %545, !dbg !1151

346:                                              ; preds = %332, %328, %327, %326, %325
  %347 = load i32, ptr %10, align 4, !dbg !1152
  %348 = icmp ne i32 %347, 0, !dbg !1152
  br i1 %348, label %350, label %349, !dbg !1154

349:                                              ; preds = %346
  br label %352, !dbg !1155

350:                                              ; preds = %346
  br label %351

351:                                              ; preds = %350, %315
  br label %266, !dbg !1057, !llvm.loop !1156

352:                                              ; preds = %349, %273
  br label %511, !dbg !1158

353:                                              ; preds = %260, %257, %254, %251
  %354 = load i32, ptr @use_secure, align 4, !dbg !1159
  %355 = icmp ne i32 %354, 0, !dbg !1159
  br i1 %355, label %510, label %356, !dbg !1161

356:                                              ; preds = %353
  %357 = load i32, ptr @use_tcp, align 4, !dbg !1162
  %358 = icmp ne i32 %357, 0, !dbg !1162
  br i1 %358, label %359, label %510, !dbg !1163

359:                                              ; preds = %356
  %360 = load i32, ptr %17, align 4, !dbg !1164
  %361 = icmp sge i32 %360, 0, !dbg !1165
  br i1 %361, label %362, label %510, !dbg !1166

362:                                              ; preds = %359
  br label %363, !dbg !1167

363:                                              ; preds = %389, %362
  %364 = load i32, ptr %17, align 4, !dbg !1169
  %365 = load ptr, ptr %9, align 8, !dbg !1171
  %366 = getelementptr inbounds %struct._stun_buffer, ptr %365, i32 0, i32 1, !dbg !1172
  %367 = getelementptr inbounds [65507 x i8], ptr %366, i64 0, i64 0, !dbg !1171
  %368 = call i64 @recv(i32 noundef %364, ptr noundef %367, i64 noundef 65506, i32 noundef 2), !dbg !1173
  %369 = trunc i64 %368 to i32, !dbg !1173
  store i32 %369, ptr %14, align 4, !dbg !1174
  %370 = load i32, ptr %14, align 4, !dbg !1175
  %371 = icmp slt i32 %370, 0, !dbg !1177
  br i1 %371, label %372, label %381, !dbg !1178

372:                                              ; preds = %363
  %373 = call ptr @__errno_location() #12, !dbg !1179
  %374 = load i32, ptr %373, align 4, !dbg !1179
  %375 = icmp eq i32 %374, 11, !dbg !1180
  br i1 %375, label %376, label %381, !dbg !1181

376:                                              ; preds = %372
  %377 = load i32, ptr %10, align 4, !dbg !1182
  %378 = icmp ne i32 %377, 0, !dbg !1182
  br i1 %378, label %379, label %381, !dbg !1183

379:                                              ; preds = %376
  %380 = call ptr @__errno_location() #12, !dbg !1184
  store i32 4, ptr %380, align 4, !dbg !1186
  br label %381, !dbg !1187

381:                                              ; preds = %379, %376, %372, %363
  br label %382, !dbg !1188

382:                                              ; preds = %381
  %383 = load i32, ptr %14, align 4, !dbg !1189
  %384 = icmp slt i32 %383, 0, !dbg !1190
  br i1 %384, label %385, label %389, !dbg !1191

385:                                              ; preds = %382
  %386 = call ptr @__errno_location() #12, !dbg !1192
  %387 = load i32, ptr %386, align 4, !dbg !1192
  %388 = icmp eq i32 %387, 4, !dbg !1193
  br label %389

389:                                              ; preds = %385, %382
  %390 = phi i1 [ false, %382 ], [ %388, %385 ], !dbg !1194
  br i1 %390, label %363, label %391, !dbg !1188, !llvm.loop !1195

391:                                              ; preds = %389
  %392 = load i32, ptr %14, align 4, !dbg !1197
  %393 = icmp sgt i32 %392, 0, !dbg !1199
  br i1 %393, label %394, label %509, !dbg !1200

394:                                              ; preds = %391
  call void @llvm.dbg.declare(metadata ptr %29, metadata !1201, metadata !DIExpression()), !dbg !1203
  %395 = load i32, ptr %14, align 4, !dbg !1204
  store i32 %395, ptr %29, align 4, !dbg !1203
  call void @llvm.dbg.declare(metadata ptr %30, metadata !1205, metadata !DIExpression()), !dbg !1206
  %396 = load i32, ptr %14, align 4, !dbg !1207
  %397 = sext i32 %396 to i64, !dbg !1208
  store i64 %397, ptr %30, align 8, !dbg !1206
  %398 = load ptr, ptr %12, align 8, !dbg !1209
  %399 = icmp ne ptr %398, null, !dbg !1209
  br i1 %399, label %407, label %400, !dbg !1211

400:                                              ; preds = %394
  %401 = load ptr, ptr %9, align 8, !dbg !1212
  %402 = getelementptr inbounds %struct._stun_buffer, ptr %401, i32 0, i32 1, !dbg !1214
  %403 = getelementptr inbounds [65507 x i8], ptr %402, i64 0, i64 0, !dbg !1212
  %404 = load i32, ptr %14, align 4, !dbg !1215
  %405 = sext i32 %404 to i64, !dbg !1215
  %406 = call i32 @stun_get_message_len_str(ptr noundef %403, i64 noundef %405, i32 noundef 1, ptr noundef %30), !dbg !1216
  store i32 %406, ptr %29, align 4, !dbg !1217
  br label %421, !dbg !1218

407:                                              ; preds = %394
  %408 = load i32, ptr %10, align 4, !dbg !1219
  %409 = icmp ne i32 %408, 0, !dbg !1219
  br i1 %409, label %412, label %410, !dbg !1222

410:                                              ; preds = %407
  %411 = load i32, ptr @clmessage_length, align 4, !dbg !1223
  store i32 %411, ptr %29, align 4, !dbg !1224
  br label %412, !dbg !1225

412:                                              ; preds = %410, %407
  %413 = load i32, ptr %29, align 4, !dbg !1226
  %414 = load i32, ptr @clmessage_length, align 4, !dbg !1228
  %415 = icmp sgt i32 %413, %414, !dbg !1229
  br i1 %415, label %416, label %418, !dbg !1230

416:                                              ; preds = %412
  %417 = load i32, ptr @clmessage_length, align 4, !dbg !1231
  store i32 %417, ptr %29, align 4, !dbg !1232
  br label %418, !dbg !1233

418:                                              ; preds = %416, %412
  %419 = load i32, ptr %29, align 4, !dbg !1234
  %420 = sext i32 %419 to i64, !dbg !1235
  store i64 %420, ptr %30, align 8, !dbg !1236
  br label %421

421:                                              ; preds = %418, %400
  %422 = load i32, ptr %29, align 4, !dbg !1237
  %423 = icmp sgt i32 %422, 0, !dbg !1239
  br i1 %423, label %424, label %507, !dbg !1240

424:                                              ; preds = %421
  call void @llvm.dbg.declare(metadata ptr %31, metadata !1241, metadata !DIExpression()), !dbg !1243
  store i32 0, ptr %31, align 4, !dbg !1243
  call void @llvm.dbg.declare(metadata ptr %32, metadata !1244, metadata !DIExpression()), !dbg !1245
  store i32 0, ptr %32, align 4, !dbg !1245
  call void @llvm.dbg.declare(metadata ptr %33, metadata !1246, metadata !DIExpression()), !dbg !1247
  store i32 0, ptr %33, align 4, !dbg !1247
  br label %425, !dbg !1248

425:                                              ; preds = %479, %424
  %426 = load i32, ptr %32, align 4, !dbg !1249
  %427 = load i32, ptr %29, align 4, !dbg !1250
  %428 = icmp slt i32 %426, %427, !dbg !1251
  br i1 %428, label %429, label %433, !dbg !1252

429:                                              ; preds = %425
  %430 = load i32, ptr %33, align 4, !dbg !1253
  %431 = add nsw i32 %430, 1, !dbg !1253
  store i32 %431, ptr %33, align 4, !dbg !1253
  %432 = icmp slt i32 %430, 128, !dbg !1254
  br label %433

433:                                              ; preds = %429, %425
  %434 = phi i1 [ false, %425 ], [ %432, %429 ], !dbg !1255
  br i1 %434, label %435, label %480, !dbg !1248

435:                                              ; preds = %433
  br label %436, !dbg !1256

436:                                              ; preds = %470, %435
  %437 = load i32, ptr %17, align 4, !dbg !1258
  %438 = load ptr, ptr %9, align 8, !dbg !1260
  %439 = getelementptr inbounds %struct._stun_buffer, ptr %438, i32 0, i32 1, !dbg !1261
  %440 = getelementptr inbounds [65507 x i8], ptr %439, i64 0, i64 0, !dbg !1260
  %441 = load i32, ptr %32, align 4, !dbg !1262
  %442 = sext i32 %441 to i64, !dbg !1263
  %443 = getelementptr inbounds i8, ptr %440, i64 %442, !dbg !1263
  %444 = load i32, ptr %29, align 4, !dbg !1264
  %445 = sext i32 %444 to i64, !dbg !1265
  %446 = load i32, ptr %32, align 4, !dbg !1266
  %447 = sext i32 %446 to i64, !dbg !1267
  %448 = sub i64 %445, %447, !dbg !1268
  %449 = call i64 @recv(i32 noundef %437, ptr noundef %443, i64 noundef %448, i32 noundef 0), !dbg !1269
  %450 = trunc i64 %449 to i32, !dbg !1269
  store i32 %450, ptr %31, align 4, !dbg !1270
  %451 = load i32, ptr %31, align 4, !dbg !1271
  %452 = icmp slt i32 %451, 0, !dbg !1273
  br i1 %452, label %453, label %462, !dbg !1274

453:                                              ; preds = %436
  %454 = call ptr @__errno_location() #12, !dbg !1275
  %455 = load i32, ptr %454, align 4, !dbg !1275
  %456 = icmp eq i32 %455, 11, !dbg !1276
  br i1 %456, label %457, label %462, !dbg !1277

457:                                              ; preds = %453
  %458 = load i32, ptr %10, align 4, !dbg !1278
  %459 = icmp ne i32 %458, 0, !dbg !1278
  br i1 %459, label %460, label %462, !dbg !1279

460:                                              ; preds = %457
  %461 = call ptr @__errno_location() #12, !dbg !1280
  store i32 4, ptr %461, align 4, !dbg !1281
  br label %462, !dbg !1280

462:                                              ; preds = %460, %457, %453, %436
  br label %463, !dbg !1282

463:                                              ; preds = %462
  %464 = load i32, ptr %31, align 4, !dbg !1283
  %465 = icmp slt i32 %464, 0, !dbg !1284
  br i1 %465, label %466, label %470, !dbg !1285

466:                                              ; preds = %463
  %467 = call ptr @__errno_location() #12, !dbg !1286
  %468 = load i32, ptr %467, align 4, !dbg !1286
  %469 = icmp eq i32 %468, 4, !dbg !1287
  br label %470

470:                                              ; preds = %466, %463
  %471 = phi i1 [ false, %463 ], [ %469, %466 ], !dbg !1288
  br i1 %471, label %436, label %472, !dbg !1282, !llvm.loop !1289

472:                                              ; preds = %470
  %473 = load i32, ptr %31, align 4, !dbg !1291
  %474 = icmp sgt i32 %473, 0, !dbg !1293
  br i1 %474, label %475, label %479, !dbg !1294

475:                                              ; preds = %472
  %476 = load i32, ptr %31, align 4, !dbg !1295
  %477 = load i32, ptr %32, align 4, !dbg !1296
  %478 = add nsw i32 %477, %476, !dbg !1296
  store i32 %478, ptr %32, align 4, !dbg !1296
  br label %479, !dbg !1297

479:                                              ; preds = %475, %472
  br label %425, !dbg !1248, !llvm.loop !1298

480:                                              ; preds = %433
  %481 = load i32, ptr %32, align 4, !dbg !1300
  %482 = icmp slt i32 %481, 1, !dbg !1302
  br i1 %482, label %483, label %484, !dbg !1303

483:                                              ; preds = %480
  store i32 -1, ptr %7, align 4, !dbg !1304
  br label %545, !dbg !1304

484:                                              ; preds = %480
  %485 = load i32, ptr %32, align 4, !dbg !1305
  %486 = load i64, ptr %30, align 8, !dbg !1307
  %487 = trunc i64 %486 to i32, !dbg !1308
  %488 = icmp slt i32 %485, %487, !dbg !1309
  br i1 %488, label %489, label %501, !dbg !1310

489:                                              ; preds = %484
  %490 = load i64, ptr %30, align 8, !dbg !1311
  %491 = load i32, ptr %32, align 4, !dbg !1314
  %492 = sext i32 %491 to i64, !dbg !1315
  %493 = udiv i64 %490, %492, !dbg !1316
  %494 = load i32, ptr %32, align 4, !dbg !1317
  %495 = sext i32 %494 to i64, !dbg !1318
  %496 = mul i64 %493, %495, !dbg !1319
  %497 = load i64, ptr %30, align 8, !dbg !1320
  %498 = icmp ne i64 %496, %497, !dbg !1321
  br i1 %498, label %499, label %500, !dbg !1322

499:                                              ; preds = %489
  store i32 -1, ptr %7, align 4, !dbg !1323
  br label %545, !dbg !1323

500:                                              ; preds = %489
  br label %501, !dbg !1325

501:                                              ; preds = %500, %484
  %502 = load i64, ptr %30, align 8, !dbg !1326
  %503 = load ptr, ptr %9, align 8, !dbg !1327
  %504 = getelementptr inbounds %struct._stun_buffer, ptr %503, i32 0, i32 2, !dbg !1328
  store i64 %502, ptr %504, align 8, !dbg !1329
  %505 = load i64, ptr %30, align 8, !dbg !1330
  %506 = trunc i64 %505 to i32, !dbg !1330
  store i32 %506, ptr %14, align 4, !dbg !1331
  br label %508, !dbg !1332

507:                                              ; preds = %421
  store i32 0, ptr %14, align 4, !dbg !1333
  br label %508

508:                                              ; preds = %507, %501
  br label %509, !dbg !1335

509:                                              ; preds = %508, %391
  br label %510, !dbg !1336

510:                                              ; preds = %509, %359, %356, %353
  br label %511

511:                                              ; preds = %510, %352
  br label %512

512:                                              ; preds = %511, %250
  br label %513

513:                                              ; preds = %512, %144
  %514 = load i32, ptr %14, align 4, !dbg !1337
  %515 = icmp sgt i32 %514, 0, !dbg !1339
  br i1 %515, label %516, label %543, !dbg !1340

516:                                              ; preds = %513
  %517 = load ptr, ptr %13, align 8, !dbg !1341
  %518 = icmp ne ptr %517, null, !dbg !1341
  br i1 %518, label %519, label %542, !dbg !1344

519:                                              ; preds = %516
  call void @llvm.dbg.declare(metadata ptr %34, metadata !1345, metadata !DIExpression()), !dbg !1347
  call void @llvm.dbg.declare(metadata ptr %35, metadata !1348, metadata !DIExpression()), !dbg !1349
  store i16 0, ptr %35, align 2, !dbg !1349
  %520 = load ptr, ptr %9, align 8, !dbg !1350
  call void @stun_tid_from_message(ptr noundef %520, ptr noundef %34), !dbg !1351
  %521 = load ptr, ptr %9, align 8, !dbg !1352
  %522 = call zeroext i16 @stun_get_method(ptr noundef %521), !dbg !1353
  store i16 %522, ptr %35, align 2, !dbg !1354
  %523 = load i16, ptr %16, align 2, !dbg !1355
  %524 = zext i16 %523 to i32, !dbg !1355
  %525 = load i16, ptr %35, align 2, !dbg !1357
  %526 = zext i16 %525 to i32, !dbg !1357
  %527 = icmp ne i32 %524, %526, !dbg !1358
  br i1 %527, label %528, label %533, !dbg !1359

528:                                              ; preds = %519
  %529 = load i16, ptr %35, align 2, !dbg !1360
  %530 = zext i16 %529 to i32, !dbg !1362
  %531 = load i16, ptr %16, align 2, !dbg !1363
  %532 = zext i16 %531 to i32, !dbg !1364
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.9, i32 noundef %530, i32 noundef %532), !dbg !1365
  br label %63, !dbg !1366

533:                                              ; preds = %519
  %534 = getelementptr inbounds %struct.stun_tid, ptr %15, i32 0, i32 0, !dbg !1367
  %535 = getelementptr inbounds [12 x i8], ptr %534, i64 0, i64 0, !dbg !1369
  %536 = getelementptr inbounds %struct.stun_tid, ptr %34, i32 0, i32 0, !dbg !1370
  %537 = getelementptr inbounds [12 x i8], ptr %536, i64 0, i64 0, !dbg !1371
  %538 = call i32 @memcmp(ptr noundef %535, ptr noundef %537, i64 noundef 12) #13, !dbg !1372
  %539 = icmp ne i32 %538, 0, !dbg !1372
  br i1 %539, label %540, label %541, !dbg !1373

540:                                              ; preds = %533
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.10), !dbg !1374
  br label %63, !dbg !1376

541:                                              ; preds = %533
  br label %542, !dbg !1377

542:                                              ; preds = %541, %516
  br label %543, !dbg !1378

543:                                              ; preds = %542, %513
  %544 = load i32, ptr %14, align 4, !dbg !1379
  store i32 %544, ptr %7, align 4, !dbg !1380
  br label %545, !dbg !1380

545:                                              ; preds = %543, %499, %483, %341, %279, %239, %177, %143, %97, %89
  %546 = load i32, ptr %7, align 4, !dbg !1381
  ret i32 %546, !dbg !1381
}

declare void @stun_tid_from_message(ptr noundef, ptr noundef) #3

declare zeroext i16 @stun_get_method(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_fd(i32 noundef %0, i32 noundef %1) #0 !dbg !1382 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.fd_set, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca %struct.timeval, align 8
  %10 = alloca %struct.timeval, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.timeval, align 8
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1385, metadata !DIExpression()), !dbg !1386
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1387, metadata !DIExpression()), !dbg !1388
  %13 = load i32, ptr %4, align 4, !dbg !1389
  %14 = icmp sge i32 %13, 1024, !dbg !1391
  br i1 %14, label %15, label %16, !dbg !1392

15:                                               ; preds = %2
  store i32 1, ptr %3, align 4, !dbg !1393
  br label %120, !dbg !1393

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1395, metadata !DIExpression()), !dbg !1402
  br label %17, !dbg !1403

17:                                               ; preds = %16
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1404, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1407, metadata !DIExpression()), !dbg !1406
  store ptr %6, ptr %8, align 8, !dbg !1406
  store i32 0, ptr %7, align 4, !dbg !1409
  br label %18, !dbg !1409

18:                                               ; preds = %28, %17
  %19 = load i32, ptr %7, align 4, !dbg !1411
  %20 = zext i32 %19 to i64, !dbg !1411
  %21 = icmp ult i64 %20, 16, !dbg !1411
  br i1 %21, label %22, label %31, !dbg !1409

22:                                               ; preds = %18
  %23 = load ptr, ptr %8, align 8, !dbg !1411
  %24 = getelementptr inbounds %struct.fd_set, ptr %23, i32 0, i32 0, !dbg !1411
  %25 = load i32, ptr %7, align 4, !dbg !1411
  %26 = zext i32 %25 to i64, !dbg !1411
  %27 = getelementptr inbounds [16 x i64], ptr %24, i64 0, i64 %26, !dbg !1411
  store i64 0, ptr %27, align 8, !dbg !1411
  br label %28, !dbg !1411

28:                                               ; preds = %22
  %29 = load i32, ptr %7, align 4, !dbg !1411
  %30 = add i32 %29, 1, !dbg !1411
  store i32 %30, ptr %7, align 4, !dbg !1411
  br label %18, !dbg !1411, !llvm.loop !1413

31:                                               ; preds = %18
  br label %32, !dbg !1406

32:                                               ; preds = %31
  %33 = load i32, ptr %4, align 4, !dbg !1414
  %34 = srem i32 %33, 64, !dbg !1414
  %35 = zext i32 %34 to i64, !dbg !1414
  %36 = shl i64 1, %35, !dbg !1414
  %37 = getelementptr inbounds %struct.fd_set, ptr %6, i32 0, i32 0, !dbg !1414
  %38 = load i32, ptr %4, align 4, !dbg !1414
  %39 = sdiv i32 %38, 64, !dbg !1414
  %40 = sext i32 %39 to i64, !dbg !1414
  %41 = getelementptr inbounds [16 x i64], ptr %37, i64 0, i64 %40, !dbg !1414
  %42 = load i64, ptr %41, align 8, !dbg !1414
  %43 = or i64 %42, %36, !dbg !1414
  store i64 %43, ptr %41, align 8, !dbg !1414
  %44 = load i32, ptr @dos, align 4, !dbg !1415
  %45 = icmp ne i32 %44, 0, !dbg !1415
  br i1 %45, label %46, label %50, !dbg !1417

46:                                               ; preds = %32
  %47 = load i32, ptr %5, align 4, !dbg !1418
  %48 = icmp eq i32 %47, 0, !dbg !1419
  br i1 %48, label %49, label %50, !dbg !1420

49:                                               ; preds = %46
  store i32 0, ptr %3, align 4, !dbg !1421
  br label %120, !dbg !1421

50:                                               ; preds = %46, %32
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1422, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1431, metadata !DIExpression()), !dbg !1432
  %51 = call i32 @gettimeofday(ptr noundef %9, ptr noundef null) #11, !dbg !1433
  %52 = getelementptr inbounds %struct.timeval, ptr %9, i32 0, i32 0, !dbg !1434
  %53 = load i64, ptr %52, align 8, !dbg !1434
  %54 = getelementptr inbounds %struct.timeval, ptr %10, i32 0, i32 0, !dbg !1435
  store i64 %53, ptr %54, align 8, !dbg !1436
  %55 = getelementptr inbounds %struct.timeval, ptr %9, i32 0, i32 1, !dbg !1437
  %56 = load i64, ptr %55, align 8, !dbg !1437
  %57 = getelementptr inbounds %struct.timeval, ptr %10, i32 0, i32 1, !dbg !1438
  store i64 %56, ptr %57, align 8, !dbg !1439
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1440, metadata !DIExpression()), !dbg !1441
  store i32 0, ptr %11, align 4, !dbg !1441
  br label %58, !dbg !1442

58:                                               ; preds = %117, %50
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1443, metadata !DIExpression()), !dbg !1445
  call void @llvm.memset.p0.i64(ptr align 8 %12, i8 0, i64 16, i1 false), !dbg !1445
  %59 = load i32, ptr %5, align 4, !dbg !1446
  %60 = icmp eq i32 %59, 0, !dbg !1448
  br i1 %60, label %61, label %63, !dbg !1449

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.timeval, ptr %12, i32 0, i32 1, !dbg !1450
  store i64 500000, ptr %62, align 8, !dbg !1452
  br label %103, !dbg !1453

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.timeval, ptr %12, i32 0, i32 0, !dbg !1454
  store i64 1, ptr %64, align 8, !dbg !1456
  br label %65, !dbg !1457

65:                                               ; preds = %69, %63
  %66 = load i32, ptr %5, align 4, !dbg !1458
  %67 = add i32 %66, -1, !dbg !1458
  store i32 %67, ptr %5, align 4, !dbg !1458
  %68 = icmp ne i32 %67, 0, !dbg !1457
  br i1 %68, label %69, label %76, !dbg !1457

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.timeval, ptr %12, i32 0, i32 0, !dbg !1459
  %71 = load i64, ptr %70, align 8, !dbg !1459
  %72 = getelementptr inbounds %struct.timeval, ptr %12, i32 0, i32 0, !dbg !1460
  %73 = load i64, ptr %72, align 8, !dbg !1460
  %74 = add nsw i64 %71, %73, !dbg !1461
  %75 = getelementptr inbounds %struct.timeval, ptr %12, i32 0, i32 0, !dbg !1462
  store i64 %74, ptr %75, align 8, !dbg !1463
  br label %65, !dbg !1457, !llvm.loop !1464

76:                                               ; preds = %65
  %77 = getelementptr inbounds %struct.timeval, ptr %10, i32 0, i32 0, !dbg !1465
  %78 = load i64, ptr %77, align 8, !dbg !1465
  %79 = getelementptr inbounds %struct.timeval, ptr %9, i32 0, i32 0, !dbg !1467
  %80 = load i64, ptr %79, align 8, !dbg !1467
  %81 = icmp sgt i64 %78, %80, !dbg !1468
  br i1 %81, label %82, label %102, !dbg !1469

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.timeval, ptr %10, i32 0, i32 0, !dbg !1470
  %84 = load i64, ptr %83, align 8, !dbg !1470
  %85 = getelementptr inbounds %struct.timeval, ptr %9, i32 0, i32 0, !dbg !1473
  %86 = load i64, ptr %85, align 8, !dbg !1473
  %87 = getelementptr inbounds %struct.timeval, ptr %12, i32 0, i32 0, !dbg !1474
  %88 = load i64, ptr %87, align 8, !dbg !1474
  %89 = add nsw i64 %86, %88, !dbg !1475
  %90 = icmp sge i64 %84, %89, !dbg !1476
  br i1 %90, label %91, label %92, !dbg !1477

91:                                               ; preds = %82
  br label %118, !dbg !1478

92:                                               ; preds = %82
  %93 = getelementptr inbounds %struct.timeval, ptr %10, i32 0, i32 0, !dbg !1480
  %94 = load i64, ptr %93, align 8, !dbg !1480
  %95 = getelementptr inbounds %struct.timeval, ptr %9, i32 0, i32 0, !dbg !1482
  %96 = load i64, ptr %95, align 8, !dbg !1482
  %97 = sub nsw i64 %94, %96, !dbg !1483
  %98 = getelementptr inbounds %struct.timeval, ptr %12, i32 0, i32 0, !dbg !1484
  %99 = load i64, ptr %98, align 8, !dbg !1485
  %100 = sub nsw i64 %99, %97, !dbg !1485
  store i64 %100, ptr %98, align 8, !dbg !1485
  br label %101

101:                                              ; preds = %92
  br label %102, !dbg !1486

102:                                              ; preds = %101, %76
  br label %103

103:                                              ; preds = %102, %61
  %104 = load i32, ptr %4, align 4, !dbg !1487
  %105 = add nsw i32 %104, 1, !dbg !1488
  %106 = call i32 @select(i32 noundef %105, ptr noundef %6, ptr noundef null, ptr noundef null, ptr noundef %12), !dbg !1489
  store i32 %106, ptr %11, align 4, !dbg !1490
  %107 = load i32, ptr %11, align 4, !dbg !1491
  %108 = icmp slt i32 %107, 0, !dbg !1493
  br i1 %108, label %109, label %115, !dbg !1494

109:                                              ; preds = %103
  %110 = call ptr @__errno_location() #12, !dbg !1495
  %111 = load i32, ptr %110, align 4, !dbg !1495
  %112 = icmp eq i32 %111, 4, !dbg !1496
  br i1 %112, label %113, label %115, !dbg !1497

113:                                              ; preds = %109
  %114 = call i32 @gettimeofday(ptr noundef %10, ptr noundef null) #11, !dbg !1498
  br label %116, !dbg !1500

115:                                              ; preds = %109, %103
  br label %118, !dbg !1501

116:                                              ; preds = %113
  br label %117, !dbg !1503

117:                                              ; preds = %116
  br i1 true, label %58, label %118, !dbg !1503, !llvm.loop !1504

118:                                              ; preds = %117, %115, %91
  %119 = load i32, ptr %11, align 4, !dbg !1506
  store i32 %119, ptr %3, align 4, !dbg !1507
  br label %120, !dbg !1507

120:                                              ; preds = %118, %49, %15
  %121 = load i32, ptr %3, align 4, !dbg !1508
  ret i32 %121, !dbg !1508
}

declare i64 @recv(i32 noundef, ptr noundef, i64 noundef, i32 noundef) #3

declare i32 @SSL_read(ptr noundef, ptr noundef, i32 noundef) #3

declare i32 @stun_get_message_len_str(ptr noundef, i64 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind willreturn memory(read)
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @client_input_handler(i32 noundef %0, i16 noundef signext %1, ptr noundef %2) #0 !dbg !1509 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1513, metadata !DIExpression()), !dbg !1514
  store i16 %1, ptr %5, align 2
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1515, metadata !DIExpression()), !dbg !1516
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1517, metadata !DIExpression()), !dbg !1518
  %12 = load i16, ptr %5, align 2, !dbg !1519
  %13 = sext i16 %12 to i32, !dbg !1519
  %14 = and i32 %13, 2, !dbg !1521
  %15 = icmp ne i32 %14, 0, !dbg !1521
  br i1 %15, label %16, label %19, !dbg !1522

16:                                               ; preds = %3
  %17 = load ptr, ptr %6, align 8, !dbg !1523
  %18 = icmp ne ptr %17, null, !dbg !1523
  br i1 %18, label %20, label %19, !dbg !1524

19:                                               ; preds = %16, %3
  br label %110, !dbg !1525

20:                                               ; preds = %16
  br label %21, !dbg !1526

21:                                               ; preds = %20
  %22 = load i32, ptr %4, align 4, !dbg !1527
  store i32 %22, ptr %4, align 4, !dbg !1527
  br label %23, !dbg !1527

23:                                               ; preds = %21
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1529, metadata !DIExpression()), !dbg !1530
  %24 = load ptr, ptr %6, align 8, !dbg !1531
  store ptr %24, ptr %7, align 8, !dbg !1530
  %25 = load ptr, ptr %7, align 8, !dbg !1532
  %26 = icmp ne ptr %25, null, !dbg !1532
  br i1 %26, label %28, label %27, !dbg !1534

27:                                               ; preds = %23
  br label %110, !dbg !1535

28:                                               ; preds = %23
  %29 = load ptr, ptr %7, align 8, !dbg !1537
  %30 = getelementptr inbounds %struct.app_ur_session, ptr %29, i32 0, i32 1, !dbg !1538
  %31 = load i32, ptr %30, align 8, !dbg !1538
  switch i32 %31, label %109 [
    i32 1, label %32
  ], !dbg !1539

32:                                               ; preds = %28
  br label %33, !dbg !1540

33:                                               ; preds = %107, %32
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1542, metadata !DIExpression()), !dbg !1544
  store ptr null, ptr %8, align 8, !dbg !1544
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1545, metadata !DIExpression()), !dbg !1546
  store i32 0, ptr %9, align 4, !dbg !1546
  %34 = load ptr, ptr %7, align 8, !dbg !1547
  %35 = getelementptr inbounds %struct.app_ur_session, ptr %34, i32 0, i32 0, !dbg !1549
  %36 = getelementptr inbounds %struct.app_ur_conn_info, ptr %35, i32 0, i32 17, !dbg !1550
  %37 = load ptr, ptr %36, align 8, !dbg !1550
  %38 = icmp ne ptr %37, null, !dbg !1547
  br i1 %38, label %39, label %98, !dbg !1551

39:                                               ; preds = %33
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1552, metadata !DIExpression()), !dbg !1554
  store i32 0, ptr %10, align 4, !dbg !1554
  store i32 0, ptr %10, align 4, !dbg !1555
  br label %40, !dbg !1557

40:                                               ; preds = %94, %39
  %41 = load i32, ptr %10, align 4, !dbg !1558
  %42 = load ptr, ptr %7, align 8, !dbg !1560
  %43 = getelementptr inbounds %struct.app_ur_session, ptr %42, i32 0, i32 0, !dbg !1561
  %44 = getelementptr inbounds %struct.app_ur_conn_info, ptr %43, i32 0, i32 18, !dbg !1562
  %45 = load i64, ptr %44, align 8, !dbg !1562
  %46 = trunc i64 %45 to i32, !dbg !1563
  %47 = icmp slt i32 %41, %46, !dbg !1564
  br i1 %47, label %48, label %97, !dbg !1565

48:                                               ; preds = %40
  %49 = load ptr, ptr %7, align 8, !dbg !1566
  %50 = getelementptr inbounds %struct.app_ur_session, ptr %49, i32 0, i32 0, !dbg !1569
  %51 = getelementptr inbounds %struct.app_ur_conn_info, ptr %50, i32 0, i32 17, !dbg !1570
  %52 = load ptr, ptr %51, align 8, !dbg !1570
  %53 = load i32, ptr %10, align 4, !dbg !1571
  %54 = sext i32 %53 to i64, !dbg !1566
  %55 = getelementptr inbounds ptr, ptr %52, i64 %54, !dbg !1566
  %56 = load ptr, ptr %55, align 8, !dbg !1566
  %57 = icmp ne ptr %56, null, !dbg !1566
  br i1 %57, label %58, label %93, !dbg !1572

58:                                               ; preds = %48
  %59 = load i32, ptr %4, align 4, !dbg !1573
  %60 = load ptr, ptr %7, align 8, !dbg !1576
  %61 = getelementptr inbounds %struct.app_ur_session, ptr %60, i32 0, i32 0, !dbg !1577
  %62 = getelementptr inbounds %struct.app_ur_conn_info, ptr %61, i32 0, i32 17, !dbg !1578
  %63 = load ptr, ptr %62, align 8, !dbg !1578
  %64 = load i32, ptr %10, align 4, !dbg !1579
  %65 = sext i32 %64 to i64, !dbg !1576
  %66 = getelementptr inbounds ptr, ptr %63, i64 %65, !dbg !1576
  %67 = load ptr, ptr %66, align 8, !dbg !1576
  %68 = getelementptr inbounds %struct.app_tcp_conn_info, ptr %67, i32 0, i32 2, !dbg !1580
  %69 = load i32, ptr %68, align 8, !dbg !1580
  %70 = icmp eq i32 %59, %69, !dbg !1581
  br i1 %70, label %71, label %92, !dbg !1582

71:                                               ; preds = %58
  %72 = load ptr, ptr %7, align 8, !dbg !1583
  %73 = getelementptr inbounds %struct.app_ur_session, ptr %72, i32 0, i32 0, !dbg !1584
  %74 = getelementptr inbounds %struct.app_ur_conn_info, ptr %73, i32 0, i32 17, !dbg !1585
  %75 = load ptr, ptr %74, align 8, !dbg !1585
  %76 = load i32, ptr %10, align 4, !dbg !1586
  %77 = sext i32 %76 to i64, !dbg !1583
  %78 = getelementptr inbounds ptr, ptr %75, i64 %77, !dbg !1583
  %79 = load ptr, ptr %78, align 8, !dbg !1583
  %80 = getelementptr inbounds %struct.app_tcp_conn_info, ptr %79, i32 0, i32 4, !dbg !1587
  %81 = load i32, ptr %80, align 8, !dbg !1587
  %82 = icmp ne i32 %81, 0, !dbg !1588
  br i1 %82, label %83, label %92, !dbg !1589

83:                                               ; preds = %71
  store i32 1, ptr %9, align 4, !dbg !1590
  %84 = load ptr, ptr %7, align 8, !dbg !1592
  %85 = getelementptr inbounds %struct.app_ur_session, ptr %84, i32 0, i32 0, !dbg !1593
  %86 = getelementptr inbounds %struct.app_ur_conn_info, ptr %85, i32 0, i32 17, !dbg !1594
  %87 = load ptr, ptr %86, align 8, !dbg !1594
  %88 = load i32, ptr %10, align 4, !dbg !1595
  %89 = sext i32 %88 to i64, !dbg !1592
  %90 = getelementptr inbounds ptr, ptr %87, i64 %89, !dbg !1592
  %91 = load ptr, ptr %90, align 8, !dbg !1592
  store ptr %91, ptr %8, align 8, !dbg !1596
  br label %97, !dbg !1597

92:                                               ; preds = %71, %58
  br label %93, !dbg !1598

93:                                               ; preds = %92, %48
  br label %94, !dbg !1599

94:                                               ; preds = %93
  %95 = load i32, ptr %10, align 4, !dbg !1600
  %96 = add nsw i32 %95, 1, !dbg !1600
  store i32 %96, ptr %10, align 4, !dbg !1600
  br label %40, !dbg !1601, !llvm.loop !1602

97:                                               ; preds = %83, %40
  br label %98, !dbg !1604

98:                                               ; preds = %97, %33
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1605, metadata !DIExpression()), !dbg !1606
  %99 = load ptr, ptr %7, align 8, !dbg !1607
  %100 = load i32, ptr %9, align 4, !dbg !1608
  %101 = load ptr, ptr %8, align 8, !dbg !1609
  %102 = call i32 @client_read(ptr noundef %99, i32 noundef %100, ptr noundef %101), !dbg !1610
  store i32 %102, ptr %11, align 4, !dbg !1606
  %103 = load i32, ptr %11, align 4, !dbg !1611
  %104 = icmp sle i32 %103, 0, !dbg !1613
  br i1 %104, label %105, label %106, !dbg !1614

105:                                              ; preds = %98
  br label %108, !dbg !1615

106:                                              ; preds = %98
  br label %107, !dbg !1616

107:                                              ; preds = %106
  br i1 true, label %33, label %108, !dbg !1616, !llvm.loop !1617

108:                                              ; preds = %107, %105
  br label %110, !dbg !1619

109:                                              ; preds = %28
  br label %110, !dbg !1620

110:                                              ; preds = %19, %27, %109, %108
  ret void, !dbg !1621
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @client_read(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 !dbg !1622 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca [129 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i16, align 2
  %14 = alloca %struct._message_info, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i16, align 2
  %18 = alloca ptr, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca ptr, align 8
  %22 = alloca i32, align 4
  %23 = alloca ptr, align 8
  %24 = alloca ptr, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1625, metadata !DIExpression()), !dbg !1626
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1627, metadata !DIExpression()), !dbg !1628
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1629, metadata !DIExpression()), !dbg !1630
  %29 = load ptr, ptr %5, align 8, !dbg !1631
  %30 = icmp ne ptr %29, null, !dbg !1631
  br i1 %30, label %32, label %31, !dbg !1633

31:                                               ; preds = %3
  store i32 -1, ptr %4, align 4, !dbg !1634
  br label %514, !dbg !1634

32:                                               ; preds = %3
  %33 = load ptr, ptr %5, align 8, !dbg !1635
  %34 = getelementptr inbounds %struct.app_ur_session, ptr %33, i32 0, i32 1, !dbg !1637
  %35 = load i32, ptr %34, align 8, !dbg !1637
  %36 = icmp ne i32 %35, 1, !dbg !1638
  br i1 %36, label %37, label %38, !dbg !1639

37:                                               ; preds = %32
  store i32 -1, ptr %4, align 4, !dbg !1640
  br label %514, !dbg !1640

38:                                               ; preds = %32
  %39 = load i64, ptr @current_time, align 8, !dbg !1641
  %40 = trunc i64 %39 to i32, !dbg !1641
  %41 = load ptr, ptr %5, align 8, !dbg !1642
  %42 = getelementptr inbounds %struct.app_ur_session, ptr %41, i32 0, i32 2, !dbg !1643
  store i32 %40, ptr %42, align 4, !dbg !1644
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1645, metadata !DIExpression()), !dbg !1646
  %43 = load ptr, ptr %5, align 8, !dbg !1647
  %44 = getelementptr inbounds %struct.app_ur_session, ptr %43, i32 0, i32 0, !dbg !1648
  store ptr %44, ptr %8, align 8, !dbg !1646
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1649, metadata !DIExpression()), !dbg !1650
  store i32 0, ptr %9, align 4, !dbg !1650
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1651, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1654, metadata !DIExpression()), !dbg !1655
  store i32 0, ptr %11, align 4, !dbg !1655
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1656, metadata !DIExpression()), !dbg !1657
  store i32 0, ptr %12, align 4, !dbg !1657
  %45 = load i32, ptr @clnet_verbose, align 4, !dbg !1658
  %46 = icmp ne i32 %45, 0, !dbg !1658
  br i1 %46, label %47, label %51, !dbg !1660

47:                                               ; preds = %38
  %48 = load i32, ptr @verbose_packets, align 4, !dbg !1661
  %49 = icmp ne i32 %48, 0, !dbg !1661
  br i1 %49, label %50, label %51, !dbg !1662

50:                                               ; preds = %47
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.25), !dbg !1663
  br label %51, !dbg !1665

51:                                               ; preds = %50, %47, %38
  %52 = load ptr, ptr %8, align 8, !dbg !1666
  %53 = load ptr, ptr %5, align 8, !dbg !1667
  %54 = getelementptr inbounds %struct.app_ur_session, ptr %53, i32 0, i32 9, !dbg !1668
  %55 = load i32, ptr %6, align 4, !dbg !1669
  %56 = load ptr, ptr %7, align 8, !dbg !1670
  %57 = call i32 @recv_buffer(ptr noundef %52, ptr noundef %54, i32 noundef 0, i32 noundef %55, ptr noundef %56, ptr noundef null), !dbg !1671
  store i32 %57, ptr %11, align 4, !dbg !1672
  %58 = load i32, ptr @clnet_verbose, align 4, !dbg !1673
  %59 = icmp ne i32 %58, 0, !dbg !1673
  br i1 %59, label %60, label %65, !dbg !1675

60:                                               ; preds = %51
  %61 = load i32, ptr @verbose_packets, align 4, !dbg !1676
  %62 = icmp ne i32 %61, 0, !dbg !1676
  br i1 %62, label %63, label %65, !dbg !1677

63:                                               ; preds = %60
  %64 = load i32, ptr %11, align 4, !dbg !1678
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.26, i32 noundef %64), !dbg !1680
  br label %65, !dbg !1681

65:                                               ; preds = %63, %60, %51
  %66 = load i32, ptr %11, align 4, !dbg !1682
  %67 = icmp sgt i32 %66, 0, !dbg !1684
  br i1 %67, label %68, label %507, !dbg !1685

68:                                               ; preds = %65
  %69 = load i32, ptr %11, align 4, !dbg !1686
  %70 = sext i32 %69 to i64, !dbg !1686
  %71 = load ptr, ptr %5, align 8, !dbg !1688
  %72 = getelementptr inbounds %struct.app_ur_session, ptr %71, i32 0, i32 9, !dbg !1689
  %73 = getelementptr inbounds %struct._stun_buffer, ptr %72, i32 0, i32 2, !dbg !1690
  store i64 %70, ptr %73, align 8, !dbg !1691
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1692, metadata !DIExpression()), !dbg !1693
  store i16 0, ptr %13, align 2, !dbg !1693
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1694, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1696, metadata !DIExpression()), !dbg !1697
  store i32 0, ptr %15, align 4, !dbg !1697
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1698, metadata !DIExpression()), !dbg !1699
  store i64 1, ptr %16, align 8, !dbg !1699
  %74 = load i32, ptr %6, align 4, !dbg !1700
  %75 = icmp ne i32 %74, 0, !dbg !1700
  br i1 %75, label %76, label %99, !dbg !1702

76:                                               ; preds = %68
  %77 = load ptr, ptr %5, align 8, !dbg !1703
  %78 = getelementptr inbounds %struct.app_ur_session, ptr %77, i32 0, i32 9, !dbg !1706
  %79 = getelementptr inbounds %struct._stun_buffer, ptr %78, i32 0, i32 2, !dbg !1707
  %80 = load i64, ptr %79, align 8, !dbg !1707
  %81 = trunc i64 %80 to i32, !dbg !1708
  %82 = load i32, ptr @clmessage_length, align 4, !dbg !1709
  %83 = icmp eq i32 %81, %82, !dbg !1710
  br i1 %83, label %84, label %89, !dbg !1711

84:                                               ; preds = %76
  %85 = load ptr, ptr %5, align 8, !dbg !1712
  %86 = getelementptr inbounds %struct.app_ur_session, ptr %85, i32 0, i32 9, !dbg !1714
  %87 = getelementptr inbounds %struct._stun_buffer, ptr %86, i32 0, i32 1, !dbg !1715
  %88 = getelementptr inbounds [65507 x i8], ptr %87, i64 0, i64 0, !dbg !1716
  call void @bcopy(ptr noundef %88, ptr noundef %14, i64 noundef 16) #11, !dbg !1717
  store i32 1, ptr %15, align 4, !dbg !1718
  br label %98, !dbg !1719

89:                                               ; preds = %76
  %90 = load ptr, ptr %5, align 8, !dbg !1720
  %91 = getelementptr inbounds %struct.app_ur_session, ptr %90, i32 0, i32 9, !dbg !1722
  %92 = getelementptr inbounds %struct._stun_buffer, ptr %91, i32 0, i32 2, !dbg !1723
  %93 = load i64, ptr %92, align 8, !dbg !1723
  %94 = trunc i64 %93 to i32, !dbg !1724
  %95 = load i32, ptr @clmessage_length, align 4, !dbg !1725
  %96 = sdiv i32 %94, %95, !dbg !1726
  %97 = sext i32 %96 to i64, !dbg !1724
  store i64 %97, ptr %16, align 8, !dbg !1727
  br label %98

98:                                               ; preds = %89, %84
  br label %396, !dbg !1728

99:                                               ; preds = %68
  %100 = load ptr, ptr %5, align 8, !dbg !1729
  %101 = getelementptr inbounds %struct.app_ur_session, ptr %100, i32 0, i32 9, !dbg !1731
  %102 = call i32 @stun_is_indication(ptr noundef %101), !dbg !1732
  %103 = icmp ne i32 %102, 0, !dbg !1732
  br i1 %103, label %104, label %192, !dbg !1733

104:                                              ; preds = %99
  call void @llvm.dbg.declare(metadata ptr %17, metadata !1734, metadata !DIExpression()), !dbg !1736
  %105 = load ptr, ptr %5, align 8, !dbg !1737
  %106 = getelementptr inbounds %struct.app_ur_session, ptr %105, i32 0, i32 9, !dbg !1738
  %107 = call zeroext i16 @stun_get_method(ptr noundef %106), !dbg !1739
  store i16 %107, ptr %17, align 2, !dbg !1736
  %108 = load i16, ptr %17, align 2, !dbg !1740
  %109 = zext i16 %108 to i32, !dbg !1740
  %110 = icmp eq i32 %109, 12, !dbg !1742
  br i1 %110, label %111, label %154, !dbg !1743

111:                                              ; preds = %104
  %112 = load i8, ptr @relay_transport, align 1, !dbg !1744
  %113 = zext i8 %112 to i32, !dbg !1744
  %114 = icmp eq i32 %113, 6, !dbg !1744
  br i1 %114, label %115, label %154, !dbg !1745

115:                                              ; preds = %111
  call void @llvm.dbg.declare(metadata ptr %18, metadata !1746, metadata !DIExpression()), !dbg !1751
  %116 = load ptr, ptr %5, align 8, !dbg !1752
  %117 = getelementptr inbounds %struct.app_ur_session, ptr %116, i32 0, i32 9, !dbg !1753
  %118 = call ptr @stun_attr_get_first(ptr noundef %117), !dbg !1754
  store ptr %118, ptr %18, align 8, !dbg !1751
  call void @llvm.dbg.declare(metadata ptr %19, metadata !1755, metadata !DIExpression()), !dbg !1756
  store i32 0, ptr %19, align 4, !dbg !1756
  br label %119, !dbg !1757

119:                                              ; preds = %131, %115
  %120 = load ptr, ptr %18, align 8, !dbg !1758
  %121 = icmp ne ptr %120, null, !dbg !1757
  br i1 %121, label %122, label %142, !dbg !1757

122:                                              ; preds = %119
  call void @llvm.dbg.declare(metadata ptr %20, metadata !1759, metadata !DIExpression()), !dbg !1761
  %123 = load ptr, ptr %18, align 8, !dbg !1762
  %124 = call i32 @stun_attr_get_type(ptr noundef %123), !dbg !1763
  store i32 %124, ptr %20, align 4, !dbg !1761
  %125 = load i32, ptr %20, align 4, !dbg !1764
  %126 = icmp eq i32 %125, 42, !dbg !1766
  br i1 %126, label %127, label %131, !dbg !1767

127:                                              ; preds = %122
  %128 = load ptr, ptr %18, align 8, !dbg !1768
  %129 = call ptr @stun_attr_get_value(ptr noundef %128), !dbg !1770
  %130 = load i32, ptr %129, align 4, !dbg !1771
  store i32 %130, ptr %19, align 4, !dbg !1772
  br label %142, !dbg !1773

131:                                              ; preds = %122
  %132 = load ptr, ptr %5, align 8, !dbg !1774
  %133 = getelementptr inbounds %struct.app_ur_session, ptr %132, i32 0, i32 9, !dbg !1775
  %134 = getelementptr inbounds %struct._stun_buffer, ptr %133, i32 0, i32 1, !dbg !1776
  %135 = getelementptr inbounds [65507 x i8], ptr %134, i64 0, i64 0, !dbg !1774
  %136 = load ptr, ptr %5, align 8, !dbg !1777
  %137 = getelementptr inbounds %struct.app_ur_session, ptr %136, i32 0, i32 9, !dbg !1778
  %138 = getelementptr inbounds %struct._stun_buffer, ptr %137, i32 0, i32 2, !dbg !1779
  %139 = load i64, ptr %138, align 8, !dbg !1779
  %140 = load ptr, ptr %18, align 8, !dbg !1780
  %141 = call ptr @stun_attr_get_next_str(ptr noundef %135, i64 noundef %139, ptr noundef %140), !dbg !1781
  store ptr %141, ptr %18, align 8, !dbg !1782
  br label %119, !dbg !1757, !llvm.loop !1783

142:                                              ; preds = %127, %119
  %143 = load i32, ptr @negative_test, align 4, !dbg !1785
  %144 = icmp ne i32 %143, 0, !dbg !1785
  br i1 %144, label %145, label %149, !dbg !1787

145:                                              ; preds = %142
  %146 = load ptr, ptr %5, align 8, !dbg !1788
  %147 = call i64 @random() #11, !dbg !1790
  %148 = trunc i64 %147 to i32, !dbg !1791
  call void @tcp_data_connect(ptr noundef %146, i32 noundef %148), !dbg !1792
  br label %152, !dbg !1793

149:                                              ; preds = %142
  %150 = load ptr, ptr %5, align 8, !dbg !1794
  %151 = load i32, ptr %19, align 4, !dbg !1796
  call void @tcp_data_connect(ptr noundef %150, i32 noundef %151), !dbg !1797
  br label %152

152:                                              ; preds = %149, %145
  %153 = load i32, ptr %11, align 4, !dbg !1798
  store i32 %153, ptr %4, align 4, !dbg !1799
  br label %514, !dbg !1799

154:                                              ; preds = %111, %104
  %155 = load i16, ptr %17, align 2, !dbg !1800
  %156 = zext i16 %155 to i32, !dbg !1800
  %157 = icmp ne i32 %156, 7, !dbg !1802
  br i1 %157, label %158, label %162, !dbg !1803

158:                                              ; preds = %154
  %159 = load i16, ptr %17, align 2, !dbg !1804
  %160 = zext i16 %159 to i32, !dbg !1806
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.27, i32 noundef %160), !dbg !1807
  %161 = load i32, ptr %11, align 4, !dbg !1808
  store i32 %161, ptr %4, align 4, !dbg !1809
  br label %514, !dbg !1809

162:                                              ; preds = %154
  call void @llvm.dbg.declare(metadata ptr %21, metadata !1810, metadata !DIExpression()), !dbg !1812
  %163 = load ptr, ptr %5, align 8, !dbg !1813
  %164 = getelementptr inbounds %struct.app_ur_session, ptr %163, i32 0, i32 9, !dbg !1814
  %165 = call ptr @stun_attr_get_first_by_type(ptr noundef %164, i16 noundef zeroext 19), !dbg !1815
  store ptr %165, ptr %21, align 8, !dbg !1812
  %166 = load ptr, ptr %21, align 8, !dbg !1816
  %167 = icmp ne ptr %166, null, !dbg !1816
  br i1 %167, label %171, label %168, !dbg !1818

168:                                              ; preds = %162
  %169 = load i32, ptr %11, align 4, !dbg !1819
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.28, i32 noundef %169), !dbg !1821
  %170 = load i32, ptr %11, align 4, !dbg !1822
  store i32 %170, ptr %4, align 4, !dbg !1823
  br label %514, !dbg !1823

171:                                              ; preds = %162
  call void @llvm.dbg.declare(metadata ptr %22, metadata !1824, metadata !DIExpression()), !dbg !1825
  %172 = load ptr, ptr %21, align 8, !dbg !1826
  %173 = call i32 @stun_attr_get_len(ptr noundef %172), !dbg !1827
  store i32 %173, ptr %22, align 4, !dbg !1825
  %174 = load i32, ptr %22, align 4, !dbg !1828
  store i32 %174, ptr %12, align 4, !dbg !1829
  %175 = load i32, ptr %22, align 4, !dbg !1830
  %176 = load i32, ptr @clmessage_length, align 4, !dbg !1832
  %177 = icmp ne i32 %175, %176, !dbg !1833
  br i1 %177, label %178, label %186, !dbg !1834

178:                                              ; preds = %171
  %179 = load i32, ptr %22, align 4, !dbg !1835
  %180 = load i32, ptr @clmessage_length, align 4, !dbg !1837
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.29, i32 noundef %179, i32 noundef %180), !dbg !1838
  %181 = load i32, ptr %12, align 4, !dbg !1839
  %182 = sext i32 %181 to i64, !dbg !1839
  %183 = load i64, ptr @tot_recv_bytes, align 8, !dbg !1840
  %184 = add i64 %183, %182, !dbg !1840
  store i64 %184, ptr @tot_recv_bytes, align 8, !dbg !1840
  %185 = load i32, ptr %11, align 4, !dbg !1841
  store i32 %185, ptr %4, align 4, !dbg !1842
  br label %514, !dbg !1842

186:                                              ; preds = %171
  call void @llvm.dbg.declare(metadata ptr %23, metadata !1843, metadata !DIExpression()), !dbg !1844
  %187 = load ptr, ptr %21, align 8, !dbg !1845
  %188 = call ptr @stun_attr_get_value(ptr noundef %187), !dbg !1846
  store ptr %188, ptr %23, align 8, !dbg !1844
  %189 = load ptr, ptr %23, align 8, !dbg !1847
  call void @bcopy(ptr noundef %189, ptr noundef %14, i64 noundef 16) #11, !dbg !1848
  store i32 1, ptr %15, align 4, !dbg !1849
  br label %190

190:                                              ; preds = %186
  br label %191

191:                                              ; preds = %190
  br label %395, !dbg !1850

192:                                              ; preds = %99
  %193 = load ptr, ptr %5, align 8, !dbg !1851
  %194 = getelementptr inbounds %struct.app_ur_session, ptr %193, i32 0, i32 9, !dbg !1853
  %195 = call i32 @stun_is_success_response(ptr noundef %194), !dbg !1854
  %196 = icmp ne i32 %195, 0, !dbg !1854
  br i1 %196, label %197, label %255, !dbg !1855

197:                                              ; preds = %192
  %198 = load ptr, ptr %5, align 8, !dbg !1856
  %199 = getelementptr inbounds %struct.app_ur_session, ptr %198, i32 0, i32 0, !dbg !1859
  %200 = getelementptr inbounds %struct.app_ur_conn_info, ptr %199, i32 0, i32 10, !dbg !1860
  %201 = getelementptr inbounds [128 x i8], ptr %200, i64 0, i64 0, !dbg !1856
  %202 = load i8, ptr %201, align 4, !dbg !1856
  %203 = icmp ne i8 %202, 0, !dbg !1856
  br i1 %203, label %204, label %213, !dbg !1861

204:                                              ; preds = %197
  %205 = load ptr, ptr %5, align 8, !dbg !1862
  %206 = getelementptr inbounds %struct.app_ur_session, ptr %205, i32 0, i32 0, !dbg !1865
  %207 = load ptr, ptr %5, align 8, !dbg !1866
  %208 = getelementptr inbounds %struct.app_ur_session, ptr %207, i32 0, i32 9, !dbg !1867
  %209 = call i32 @check_integrity(ptr noundef %206, ptr noundef %208), !dbg !1868
  %210 = icmp slt i32 %209, 0, !dbg !1869
  br i1 %210, label %211, label %212, !dbg !1870

211:                                              ; preds = %204
  store i32 -1, ptr %4, align 4, !dbg !1871
  br label %514, !dbg !1871

212:                                              ; preds = %204
  br label %213, !dbg !1872

213:                                              ; preds = %212, %197
  %214 = load i8, ptr @relay_transport, align 1, !dbg !1873
  %215 = zext i8 %214 to i32, !dbg !1873
  %216 = icmp eq i32 %215, 6, !dbg !1873
  br i1 %216, label %217, label %253, !dbg !1875

217:                                              ; preds = %213
  %218 = load ptr, ptr %5, align 8, !dbg !1876
  %219 = getelementptr inbounds %struct.app_ur_session, ptr %218, i32 0, i32 9, !dbg !1877
  %220 = call zeroext i16 @stun_get_method(ptr noundef %219), !dbg !1878
  %221 = zext i16 %220 to i32, !dbg !1878
  %222 = icmp eq i32 %221, 10, !dbg !1879
  br i1 %222, label %223, label %253, !dbg !1880

223:                                              ; preds = %217
  call void @llvm.dbg.declare(metadata ptr %24, metadata !1881, metadata !DIExpression()), !dbg !1883
  %224 = load ptr, ptr %5, align 8, !dbg !1884
  %225 = getelementptr inbounds %struct.app_ur_session, ptr %224, i32 0, i32 9, !dbg !1885
  %226 = call ptr @stun_attr_get_first(ptr noundef %225), !dbg !1886
  store ptr %226, ptr %24, align 8, !dbg !1883
  call void @llvm.dbg.declare(metadata ptr %25, metadata !1887, metadata !DIExpression()), !dbg !1888
  store i32 0, ptr %25, align 4, !dbg !1888
  br label %227, !dbg !1889

227:                                              ; preds = %239, %223
  %228 = load ptr, ptr %24, align 8, !dbg !1890
  %229 = icmp ne ptr %228, null, !dbg !1889
  br i1 %229, label %230, label %250, !dbg !1889

230:                                              ; preds = %227
  call void @llvm.dbg.declare(metadata ptr %26, metadata !1891, metadata !DIExpression()), !dbg !1893
  %231 = load ptr, ptr %24, align 8, !dbg !1894
  %232 = call i32 @stun_attr_get_type(ptr noundef %231), !dbg !1895
  store i32 %232, ptr %26, align 4, !dbg !1893
  %233 = load i32, ptr %26, align 4, !dbg !1896
  %234 = icmp eq i32 %233, 42, !dbg !1898
  br i1 %234, label %235, label %239, !dbg !1899

235:                                              ; preds = %230
  %236 = load ptr, ptr %24, align 8, !dbg !1900
  %237 = call ptr @stun_attr_get_value(ptr noundef %236), !dbg !1902
  %238 = load i32, ptr %237, align 4, !dbg !1903
  store i32 %238, ptr %25, align 4, !dbg !1904
  br label %250, !dbg !1905

239:                                              ; preds = %230
  %240 = load ptr, ptr %5, align 8, !dbg !1906
  %241 = getelementptr inbounds %struct.app_ur_session, ptr %240, i32 0, i32 9, !dbg !1907
  %242 = getelementptr inbounds %struct._stun_buffer, ptr %241, i32 0, i32 1, !dbg !1908
  %243 = getelementptr inbounds [65507 x i8], ptr %242, i64 0, i64 0, !dbg !1906
  %244 = load ptr, ptr %5, align 8, !dbg !1909
  %245 = getelementptr inbounds %struct.app_ur_session, ptr %244, i32 0, i32 9, !dbg !1910
  %246 = getelementptr inbounds %struct._stun_buffer, ptr %245, i32 0, i32 2, !dbg !1911
  %247 = load i64, ptr %246, align 8, !dbg !1911
  %248 = load ptr, ptr %24, align 8, !dbg !1912
  %249 = call ptr @stun_attr_get_next_str(ptr noundef %243, i64 noundef %247, ptr noundef %248), !dbg !1913
  store ptr %249, ptr %24, align 8, !dbg !1914
  br label %227, !dbg !1889, !llvm.loop !1915

250:                                              ; preds = %235, %227
  %251 = load ptr, ptr %5, align 8, !dbg !1917
  %252 = load i32, ptr %25, align 4, !dbg !1918
  call void @tcp_data_connect(ptr noundef %251, i32 noundef %252), !dbg !1919
  br label %253, !dbg !1920

253:                                              ; preds = %250, %217, %213
  %254 = load i32, ptr %11, align 4, !dbg !1921
  store i32 %254, ptr %4, align 4, !dbg !1922
  br label %514, !dbg !1922

255:                                              ; preds = %192
  %256 = load ptr, ptr %5, align 8, !dbg !1923
  %257 = getelementptr inbounds %struct.app_ur_session, ptr %256, i32 0, i32 9, !dbg !1925
  %258 = getelementptr inbounds %struct._stun_buffer, ptr %257, i32 0, i32 1, !dbg !1926
  %259 = getelementptr inbounds [65507 x i8], ptr %258, i64 0, i64 0, !dbg !1923
  %260 = load ptr, ptr %5, align 8, !dbg !1927
  %261 = getelementptr inbounds %struct.app_ur_session, ptr %260, i32 0, i32 9, !dbg !1928
  %262 = getelementptr inbounds %struct._stun_buffer, ptr %261, i32 0, i32 2, !dbg !1929
  %263 = load i64, ptr %262, align 8, !dbg !1929
  %264 = getelementptr inbounds [129 x i8], ptr %10, i64 0, i64 0, !dbg !1930
  %265 = load ptr, ptr %8, align 8, !dbg !1931
  %266 = getelementptr inbounds %struct.app_ur_conn_info, ptr %265, i32 0, i32 11, !dbg !1932
  %267 = getelementptr inbounds [128 x i8], ptr %266, i64 0, i64 0, !dbg !1931
  %268 = load ptr, ptr %8, align 8, !dbg !1933
  %269 = getelementptr inbounds %struct.app_ur_conn_info, ptr %268, i32 0, i32 10, !dbg !1934
  %270 = getelementptr inbounds [128 x i8], ptr %269, i64 0, i64 0, !dbg !1933
  %271 = load ptr, ptr %8, align 8, !dbg !1935
  %272 = getelementptr inbounds %struct.app_ur_conn_info, ptr %271, i32 0, i32 13, !dbg !1936
  %273 = getelementptr inbounds [1026 x i8], ptr %272, i64 0, i64 0, !dbg !1935
  %274 = load ptr, ptr %8, align 8, !dbg !1937
  %275 = getelementptr inbounds %struct.app_ur_conn_info, ptr %274, i32 0, i32 12, !dbg !1938
  %276 = call i32 @stun_is_challenge_response_str(ptr noundef %259, i64 noundef %263, ptr noundef %9, ptr noundef %264, i64 noundef 129, ptr noundef %267, ptr noundef %270, ptr noundef %273, ptr noundef %275), !dbg !1939
  %277 = icmp ne i32 %276, 0, !dbg !1939
  br i1 %277, label %278, label %311, !dbg !1940

278:                                              ; preds = %255
  %279 = load i8, ptr @relay_transport, align 1, !dbg !1941
  %280 = zext i8 %279 to i32, !dbg !1941
  %281 = icmp eq i32 %280, 6, !dbg !1941
  br i1 %281, label %282, label %296, !dbg !1944

282:                                              ; preds = %278
  %283 = load ptr, ptr %5, align 8, !dbg !1945
  %284 = getelementptr inbounds %struct.app_ur_session, ptr %283, i32 0, i32 9, !dbg !1946
  %285 = call zeroext i16 @stun_get_method(ptr noundef %284), !dbg !1947
  %286 = zext i16 %285 to i32, !dbg !1947
  %287 = icmp eq i32 %286, 10, !dbg !1948
  br i1 %287, label %288, label %296, !dbg !1949

288:                                              ; preds = %282
  %289 = load i32, ptr @clnet_verbose, align 4, !dbg !1950
  %290 = load ptr, ptr %5, align 8, !dbg !1952
  %291 = getelementptr inbounds %struct.app_ur_session, ptr %290, i32 0, i32 0, !dbg !1953
  %292 = load ptr, ptr %5, align 8, !dbg !1954
  %293 = getelementptr inbounds %struct.app_ur_session, ptr %292, i32 0, i32 0, !dbg !1955
  %294 = getelementptr inbounds %struct.app_ur_conn_info, ptr %293, i32 0, i32 5, !dbg !1956
  %295 = call i32 @turn_tcp_connect(i32 noundef %289, ptr noundef %291, ptr noundef %294), !dbg !1957
  br label %309, !dbg !1958

296:                                              ; preds = %282, %278
  %297 = load ptr, ptr %5, align 8, !dbg !1959
  %298 = getelementptr inbounds %struct.app_ur_session, ptr %297, i32 0, i32 9, !dbg !1961
  %299 = call zeroext i16 @stun_get_method(ptr noundef %298), !dbg !1962
  %300 = zext i16 %299 to i32, !dbg !1962
  %301 = icmp eq i32 %300, 4, !dbg !1963
  br i1 %301, label %302, label %308, !dbg !1964

302:                                              ; preds = %296
  %303 = load ptr, ptr %5, align 8, !dbg !1965
  %304 = load ptr, ptr %5, align 8, !dbg !1967
  %305 = getelementptr inbounds %struct.app_ur_session, ptr %304, i32 0, i32 9, !dbg !1968
  %306 = call zeroext i16 @stun_get_method(ptr noundef %305), !dbg !1969
  %307 = call i32 @refresh_channel(ptr noundef %303, i16 noundef zeroext %306, i32 noundef 600), !dbg !1970
  br label %308, !dbg !1971

308:                                              ; preds = %302, %296
  br label %309

309:                                              ; preds = %308, %288
  %310 = load i32, ptr %11, align 4, !dbg !1972
  store i32 %310, ptr %4, align 4, !dbg !1973
  br label %514, !dbg !1973

311:                                              ; preds = %255
  %312 = load ptr, ptr %5, align 8, !dbg !1974
  %313 = getelementptr inbounds %struct.app_ur_session, ptr %312, i32 0, i32 9, !dbg !1976
  %314 = call i32 @stun_is_error_response(ptr noundef %313, ptr noundef null, ptr noundef null, i64 noundef 0), !dbg !1977
  %315 = icmp ne i32 %314, 0, !dbg !1977
  br i1 %315, label %316, label %318, !dbg !1978

316:                                              ; preds = %311
  %317 = load i32, ptr %11, align 4, !dbg !1979
  store i32 %317, ptr %4, align 4, !dbg !1981
  br label %514, !dbg !1981

318:                                              ; preds = %311
  %319 = load ptr, ptr %5, align 8, !dbg !1982
  %320 = getelementptr inbounds %struct.app_ur_session, ptr %319, i32 0, i32 9, !dbg !1984
  %321 = load i32, ptr @use_tcp, align 4, !dbg !1985
  %322 = call i32 @stun_is_channel_message(ptr noundef %320, ptr noundef %13, i32 noundef %321), !dbg !1986
  %323 = icmp ne i32 %322, 0, !dbg !1986
  br i1 %323, label %324, label %384, !dbg !1987

324:                                              ; preds = %318
  %325 = load ptr, ptr %5, align 8, !dbg !1988
  %326 = getelementptr inbounds %struct.app_ur_session, ptr %325, i32 0, i32 3, !dbg !1991
  %327 = load i16, ptr %326, align 8, !dbg !1991
  %328 = zext i16 %327 to i32, !dbg !1988
  %329 = load i16, ptr %13, align 2, !dbg !1992
  %330 = zext i16 %329 to i32, !dbg !1992
  %331 = icmp ne i32 %328, %330, !dbg !1993
  br i1 %331, label %332, label %336, !dbg !1994

332:                                              ; preds = %324
  %333 = load i16, ptr %13, align 2, !dbg !1995
  %334 = zext i16 %333 to i32, !dbg !1997
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.30, i32 noundef %334), !dbg !1998
  %335 = load i32, ptr %11, align 4, !dbg !1999
  store i32 %335, ptr %4, align 4, !dbg !2000
  br label %514, !dbg !2000

336:                                              ; preds = %324
  %337 = load ptr, ptr %5, align 8, !dbg !2001
  %338 = getelementptr inbounds %struct.app_ur_session, ptr %337, i32 0, i32 9, !dbg !2003
  %339 = getelementptr inbounds %struct._stun_buffer, ptr %338, i32 0, i32 2, !dbg !2004
  %340 = load i64, ptr %339, align 8, !dbg !2004
  %341 = icmp uge i64 %340, 4, !dbg !2005
  br i1 %341, label %342, label %383, !dbg !2006

342:                                              ; preds = %336
  %343 = load ptr, ptr %5, align 8, !dbg !2007
  %344 = getelementptr inbounds %struct.app_ur_session, ptr %343, i32 0, i32 9, !dbg !2010
  %345 = getelementptr inbounds %struct._stun_buffer, ptr %344, i32 0, i32 2, !dbg !2011
  %346 = load i64, ptr %345, align 8, !dbg !2011
  %347 = sub i64 %346, 4, !dbg !2012
  %348 = trunc i64 %347 to i32, !dbg !2013
  %349 = load i32, ptr @clmessage_length, align 4, !dbg !2014
  %350 = icmp slt i32 %348, %349, !dbg !2015
  br i1 %350, label %361, label %351, !dbg !2016

351:                                              ; preds = %342
  %352 = load ptr, ptr %5, align 8, !dbg !2017
  %353 = getelementptr inbounds %struct.app_ur_session, ptr %352, i32 0, i32 9, !dbg !2018
  %354 = getelementptr inbounds %struct._stun_buffer, ptr %353, i32 0, i32 2, !dbg !2019
  %355 = load i64, ptr %354, align 8, !dbg !2019
  %356 = sub i64 %355, 4, !dbg !2020
  %357 = trunc i64 %356 to i32, !dbg !2021
  %358 = load i32, ptr @clmessage_length, align 4, !dbg !2022
  %359 = add nsw i32 %358, 3, !dbg !2023
  %360 = icmp sgt i32 %357, %359, !dbg !2024
  br i1 %360, label %361, label %371, !dbg !2025

361:                                              ; preds = %351, %342
  %362 = load i32, ptr %11, align 4, !dbg !2026
  %363 = load i32, ptr @clmessage_length, align 4, !dbg !2028
  %364 = add nsw i32 %363, 4, !dbg !2029
  %365 = load ptr, ptr %5, align 8, !dbg !2030
  %366 = getelementptr inbounds %struct.app_ur_session, ptr %365, i32 0, i32 9, !dbg !2031
  %367 = getelementptr inbounds %struct._stun_buffer, ptr %366, i32 0, i32 2, !dbg !2032
  %368 = load i64, ptr %367, align 8, !dbg !2032
  %369 = trunc i64 %368 to i32, !dbg !2033
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.31, i32 noundef %362, i32 noundef %364, i32 noundef %369), !dbg !2034
  %370 = load i32, ptr %11, align 4, !dbg !2035
  store i32 %370, ptr %4, align 4, !dbg !2036
  br label %514, !dbg !2036

371:                                              ; preds = %351
  %372 = load ptr, ptr %5, align 8, !dbg !2037
  %373 = getelementptr inbounds %struct.app_ur_session, ptr %372, i32 0, i32 9, !dbg !2038
  %374 = getelementptr inbounds %struct._stun_buffer, ptr %373, i32 0, i32 1, !dbg !2039
  %375 = getelementptr inbounds [65507 x i8], ptr %374, i64 0, i64 0, !dbg !2037
  %376 = getelementptr inbounds i8, ptr %375, i64 4, !dbg !2040
  call void @bcopy(ptr noundef %376, ptr noundef %14, i64 noundef 16) #11, !dbg !2041
  store i32 1, ptr %15, align 4, !dbg !2042
  %377 = load ptr, ptr %5, align 8, !dbg !2043
  %378 = getelementptr inbounds %struct.app_ur_session, ptr %377, i32 0, i32 9, !dbg !2044
  %379 = getelementptr inbounds %struct._stun_buffer, ptr %378, i32 0, i32 2, !dbg !2045
  %380 = load i64, ptr %379, align 8, !dbg !2045
  %381 = sub i64 %380, 4, !dbg !2046
  %382 = trunc i64 %381 to i32, !dbg !2043
  store i32 %382, ptr %12, align 4, !dbg !2047
  br label %383, !dbg !2048

383:                                              ; preds = %371, %336
  br label %391, !dbg !2049

384:                                              ; preds = %318
  %385 = load ptr, ptr %5, align 8, !dbg !2050
  %386 = getelementptr inbounds %struct.app_ur_session, ptr %385, i32 0, i32 9, !dbg !2052
  %387 = getelementptr inbounds %struct._stun_buffer, ptr %386, i32 0, i32 2, !dbg !2053
  %388 = load i64, ptr %387, align 8, !dbg !2053
  %389 = trunc i64 %388 to i32, !dbg !2054
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.32, i32 noundef %389), !dbg !2055
  %390 = load i32, ptr %11, align 4, !dbg !2056
  store i32 %390, ptr %4, align 4, !dbg !2057
  br label %514, !dbg !2057

391:                                              ; preds = %383
  br label %392

392:                                              ; preds = %391
  br label %393

393:                                              ; preds = %392
  br label %394

394:                                              ; preds = %393
  br label %395

395:                                              ; preds = %394, %191
  br label %396

396:                                              ; preds = %395, %98
  %397 = load i32, ptr %15, align 4, !dbg !2058
  %398 = icmp ne i32 %397, 0, !dbg !2058
  br i1 %398, label %399, label %473, !dbg !2060

399:                                              ; preds = %396
  %400 = getelementptr inbounds %struct._message_info, ptr %14, i32 0, i32 0, !dbg !2061
  %401 = load i32, ptr %400, align 8, !dbg !2061
  %402 = load ptr, ptr %5, align 8, !dbg !2064
  %403 = getelementptr inbounds %struct.app_ur_session, ptr %402, i32 0, i32 16, !dbg !2065
  %404 = load i32, ptr %403, align 4, !dbg !2065
  %405 = add nsw i32 %404, 1, !dbg !2066
  %406 = icmp ne i32 %401, %405, !dbg !2067
  br i1 %406, label %407, label %412, !dbg !2068

407:                                              ; preds = %399
  %408 = load ptr, ptr %5, align 8, !dbg !2069
  %409 = getelementptr inbounds %struct.app_ur_session, ptr %408, i32 0, i32 19, !dbg !2070
  %410 = load i64, ptr %409, align 8, !dbg !2071
  %411 = add i64 %410, 1, !dbg !2071
  store i64 %411, ptr %409, align 8, !dbg !2071
  br label %468, !dbg !2071

412:                                              ; preds = %399
  call void @llvm.dbg.declare(metadata ptr %27, metadata !2072, metadata !DIExpression()), !dbg !2074
  %413 = load i64, ptr @current_mstime, align 8, !dbg !2075
  %414 = getelementptr inbounds %struct._message_info, ptr %14, i32 0, i32 1, !dbg !2076
  %415 = load i64, ptr %414, align 8, !dbg !2076
  %416 = call i64 @time_minus(i64 noundef %413, i64 noundef %415), !dbg !2077
  store i64 %416, ptr %27, align 8, !dbg !2074
  %417 = load i64, ptr %27, align 8, !dbg !2078
  %418 = load i64, ptr @max_latency, align 8, !dbg !2080
  %419 = icmp ugt i64 %417, %418, !dbg !2081
  br i1 %419, label %420, label %422, !dbg !2082

420:                                              ; preds = %412
  %421 = load i64, ptr %27, align 8, !dbg !2083
  store i64 %421, ptr @max_latency, align 8, !dbg !2084
  br label %422, !dbg !2085

422:                                              ; preds = %420, %412
  %423 = load i64, ptr %27, align 8, !dbg !2086
  %424 = load i64, ptr @min_latency, align 8, !dbg !2088
  %425 = icmp ult i64 %423, %424, !dbg !2089
  br i1 %425, label %426, label %428, !dbg !2090

426:                                              ; preds = %422
  %427 = load i64, ptr %27, align 8, !dbg !2091
  store i64 %427, ptr @min_latency, align 8, !dbg !2092
  br label %428, !dbg !2093

428:                                              ; preds = %426, %422
  %429 = load i64, ptr %27, align 8, !dbg !2094
  %430 = load ptr, ptr %5, align 8, !dbg !2095
  %431 = getelementptr inbounds %struct.app_ur_session, ptr %430, i32 0, i32 20, !dbg !2096
  %432 = load i64, ptr %431, align 8, !dbg !2097
  %433 = add i64 %432, %429, !dbg !2097
  store i64 %433, ptr %431, align 8, !dbg !2097
  %434 = load ptr, ptr %5, align 8, !dbg !2098
  %435 = getelementptr inbounds %struct.app_ur_session, ptr %434, i32 0, i32 15, !dbg !2100
  %436 = load i32, ptr %435, align 8, !dbg !2100
  %437 = icmp sgt i32 %436, 0, !dbg !2101
  br i1 %437, label %438, label %467, !dbg !2102

438:                                              ; preds = %428
  call void @llvm.dbg.declare(metadata ptr %28, metadata !2103, metadata !DIExpression()), !dbg !2105
  %439 = load i64, ptr @current_mstime, align 8, !dbg !2106
  %440 = load ptr, ptr %5, align 8, !dbg !2107
  %441 = getelementptr inbounds %struct.app_ur_session, ptr %440, i32 0, i32 17, !dbg !2108
  %442 = load i32, ptr %441, align 8, !dbg !2108
  %443 = zext i32 %442 to i64, !dbg !2107
  %444 = sub i64 %439, %443, !dbg !2109
  %445 = trunc i64 %444 to i32, !dbg !2110
  %446 = load i32, ptr @RTP_PACKET_INTERVAL, align 4, !dbg !2111
  %447 = sub nsw i32 %445, %446, !dbg !2112
  %448 = call i32 @abs(i32 noundef %447) #12, !dbg !2113
  %449 = sext i32 %448 to i64, !dbg !2113
  store i64 %449, ptr %28, align 8, !dbg !2105
  %450 = load i64, ptr %28, align 8, !dbg !2114
  %451 = load i64, ptr @max_jitter, align 8, !dbg !2116
  %452 = icmp ugt i64 %450, %451, !dbg !2117
  br i1 %452, label %453, label %455, !dbg !2118

453:                                              ; preds = %438
  %454 = load i64, ptr %28, align 8, !dbg !2119
  store i64 %454, ptr @max_jitter, align 8, !dbg !2120
  br label %455, !dbg !2121

455:                                              ; preds = %453, %438
  %456 = load i64, ptr %28, align 8, !dbg !2122
  %457 = load i64, ptr @min_jitter, align 8, !dbg !2124
  %458 = icmp ult i64 %456, %457, !dbg !2125
  br i1 %458, label %459, label %461, !dbg !2126

459:                                              ; preds = %455
  %460 = load i64, ptr %28, align 8, !dbg !2127
  store i64 %460, ptr @min_jitter, align 8, !dbg !2128
  br label %461, !dbg !2129

461:                                              ; preds = %459, %455
  %462 = load i64, ptr %28, align 8, !dbg !2130
  %463 = load ptr, ptr %5, align 8, !dbg !2131
  %464 = getelementptr inbounds %struct.app_ur_session, ptr %463, i32 0, i32 21, !dbg !2132
  %465 = load i64, ptr %464, align 8, !dbg !2133
  %466 = add i64 %465, %462, !dbg !2133
  store i64 %466, ptr %464, align 8, !dbg !2133
  br label %467, !dbg !2134

467:                                              ; preds = %461, %428
  br label %468

468:                                              ; preds = %467, %407
  %469 = getelementptr inbounds %struct._message_info, ptr %14, i32 0, i32 0, !dbg !2135
  %470 = load i32, ptr %469, align 8, !dbg !2135
  %471 = load ptr, ptr %5, align 8, !dbg !2136
  %472 = getelementptr inbounds %struct.app_ur_session, ptr %471, i32 0, i32 16, !dbg !2137
  store i32 %470, ptr %472, align 4, !dbg !2138
  br label %473, !dbg !2139

473:                                              ; preds = %468, %396
  %474 = load i64, ptr %16, align 8, !dbg !2140
  %475 = load ptr, ptr %5, align 8, !dbg !2141
  %476 = getelementptr inbounds %struct.app_ur_session, ptr %475, i32 0, i32 15, !dbg !2142
  %477 = load i32, ptr %476, align 8, !dbg !2143
  %478 = sext i32 %477 to i64, !dbg !2143
  %479 = add i64 %478, %474, !dbg !2143
  %480 = trunc i64 %479 to i32, !dbg !2143
  store i32 %480, ptr %476, align 8, !dbg !2143
  %481 = load i64, ptr %16, align 8, !dbg !2144
  %482 = load i32, ptr @tot_recv_messages, align 4, !dbg !2145
  %483 = zext i32 %482 to i64, !dbg !2145
  %484 = add i64 %483, %481, !dbg !2145
  %485 = trunc i64 %484 to i32, !dbg !2145
  store i32 %485, ptr @tot_recv_messages, align 4, !dbg !2145
  %486 = load i32, ptr %12, align 4, !dbg !2146
  %487 = icmp sgt i32 %486, 0, !dbg !2148
  br i1 %487, label %488, label %493, !dbg !2149

488:                                              ; preds = %473
  %489 = load i32, ptr %12, align 4, !dbg !2150
  %490 = sext i32 %489 to i64, !dbg !2150
  %491 = load i64, ptr @tot_recv_bytes, align 8, !dbg !2151
  %492 = add i64 %491, %490, !dbg !2151
  store i64 %492, ptr @tot_recv_bytes, align 8, !dbg !2151
  br label %500, !dbg !2152

493:                                              ; preds = %473
  %494 = load ptr, ptr %5, align 8, !dbg !2153
  %495 = getelementptr inbounds %struct.app_ur_session, ptr %494, i32 0, i32 9, !dbg !2154
  %496 = getelementptr inbounds %struct._stun_buffer, ptr %495, i32 0, i32 2, !dbg !2155
  %497 = load i64, ptr %496, align 8, !dbg !2155
  %498 = load i64, ptr @tot_recv_bytes, align 8, !dbg !2156
  %499 = add i64 %498, %497, !dbg !2156
  store i64 %499, ptr @tot_recv_bytes, align 8, !dbg !2156
  br label %500

500:                                              ; preds = %493, %488
  %501 = load i64, ptr @current_mstime, align 8, !dbg !2157
  %502 = trunc i64 %501 to i32, !dbg !2157
  %503 = load ptr, ptr %5, align 8, !dbg !2158
  %504 = getelementptr inbounds %struct.app_ur_session, ptr %503, i32 0, i32 17, !dbg !2159
  store i32 %502, ptr %504, align 8, !dbg !2160
  %505 = load ptr, ptr %5, align 8, !dbg !2161
  %506 = getelementptr inbounds %struct.app_ur_session, ptr %505, i32 0, i32 4, !dbg !2162
  store i32 0, ptr %506, align 4, !dbg !2163
  br label %512, !dbg !2164

507:                                              ; preds = %65
  %508 = load i32, ptr %11, align 4, !dbg !2165
  %509 = icmp eq i32 %508, 0, !dbg !2167
  br i1 %509, label %510, label %511, !dbg !2168

510:                                              ; preds = %507
  store i32 0, ptr %4, align 4, !dbg !2169
  br label %514, !dbg !2169

511:                                              ; preds = %507
  store i32 -1, ptr %4, align 4, !dbg !2171
  br label %514, !dbg !2171

512:                                              ; preds = %500
  %513 = load i32, ptr %11, align 4, !dbg !2173
  store i32 %513, ptr %4, align 4, !dbg !2174
  br label %514, !dbg !2174

514:                                              ; preds = %512, %511, %510, %384, %361, %332, %316, %309, %253, %211, %178, %168, %158, %152, %37, %31
  %515 = load i32, ptr %4, align 4, !dbg !2175
  ret i32 %515, !dbg !2175
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @start_mclient(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) #0 !dbg !2176 {
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca ptr, align 8
  %17 = alloca %struct.timeval, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store ptr %0, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2181, metadata !DIExpression()), !dbg !2182
  store i32 %1, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2183, metadata !DIExpression()), !dbg !2184
  store ptr %2, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2185, metadata !DIExpression()), !dbg !2186
  store ptr %3, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2187, metadata !DIExpression()), !dbg !2188
  store i32 %4, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2189, metadata !DIExpression()), !dbg !2190
  store i32 %5, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2191, metadata !DIExpression()), !dbg !2192
  %25 = load i32, ptr %12, align 4, !dbg !2193
  %26 = icmp slt i32 %25, 1, !dbg !2195
  br i1 %26, label %27, label %28, !dbg !2196

27:                                               ; preds = %6
  store i32 1, ptr %12, align 4, !dbg !2197
  br label %28, !dbg !2198

28:                                               ; preds = %27, %6
  %29 = load i32, ptr %12, align 4, !dbg !2199
  store i32 %29, ptr @total_clients, align 4, !dbg !2200
  %30 = load i32, ptr @c2c, align 4, !dbg !2201
  %31 = icmp ne i32 %30, 0, !dbg !2201
  br i1 %31, label %32, label %51, !dbg !2203

32:                                               ; preds = %28
  %33 = load i32, ptr @no_rtcp, align 4, !dbg !2204
  %34 = icmp ne i32 %33, 0, !dbg !2204
  br i1 %34, label %42, label %35, !dbg !2207

35:                                               ; preds = %32
  %36 = load i32, ptr %12, align 4, !dbg !2208
  %37 = and i32 %36, 3, !dbg !2209
  %38 = sub nsw i32 4, %37, !dbg !2210
  %39 = and i32 %38, 3, !dbg !2211
  %40 = load i32, ptr %12, align 4, !dbg !2212
  %41 = add nsw i32 %40, %39, !dbg !2212
  store i32 %41, ptr %12, align 4, !dbg !2212
  br label %50, !dbg !2213

42:                                               ; preds = %32
  %43 = load i32, ptr %12, align 4, !dbg !2214
  %44 = and i32 %43, 1, !dbg !2216
  %45 = icmp ne i32 %44, 0, !dbg !2216
  br i1 %45, label %46, label %49, !dbg !2217

46:                                               ; preds = %42
  %47 = load i32, ptr %12, align 4, !dbg !2218
  %48 = add nsw i32 %47, 1, !dbg !2218
  store i32 %48, ptr %12, align 4, !dbg !2218
  br label %49, !dbg !2218

49:                                               ; preds = %46, %42
  br label %50

50:                                               ; preds = %49, %35
  br label %63, !dbg !2219

51:                                               ; preds = %28
  %52 = load i32, ptr @no_rtcp, align 4, !dbg !2220
  %53 = icmp ne i32 %52, 0, !dbg !2220
  br i1 %53, label %62, label %54, !dbg !2223

54:                                               ; preds = %51
  %55 = load i32, ptr %12, align 4, !dbg !2224
  %56 = and i32 %55, 1, !dbg !2226
  %57 = icmp ne i32 %56, 0, !dbg !2226
  br i1 %57, label %58, label %61, !dbg !2227

58:                                               ; preds = %54
  %59 = load i32, ptr %12, align 4, !dbg !2228
  %60 = add nsw i32 %59, 1, !dbg !2228
  store i32 %60, ptr %12, align 4, !dbg !2228
  br label %61, !dbg !2228

61:                                               ; preds = %58, %54
  br label %62, !dbg !2229

62:                                               ; preds = %61, %51
  br label %63

63:                                               ; preds = %62, %50
  %64 = load i32, ptr %12, align 4, !dbg !2230
  %65 = mul nsw i32 %64, 2, !dbg !2231
  %66 = add nsw i32 %65, 1, !dbg !2232
  %67 = sext i32 %66 to i64, !dbg !2233
  %68 = mul i64 133096, %67, !dbg !2234
  %69 = add i64 %68, 8, !dbg !2235
  %70 = call noalias ptr @malloc(i64 noundef %69) #14, !dbg !2236
  store ptr %70, ptr @elems, align 8, !dbg !2237
  call void @__turn_getMSTime(), !dbg !2238
  call void @llvm.dbg.declare(metadata ptr %13, metadata !2239, metadata !DIExpression()), !dbg !2240
  %71 = load i64, ptr @current_time, align 8, !dbg !2241
  %72 = trunc i64 %71 to i32, !dbg !2241
  store i32 %72, ptr %13, align 4, !dbg !2240
  %73 = load i32, ptr @clmessage_length, align 4, !dbg !2242
  %74 = sext i32 %73 to i64, !dbg !2242
  call void @llvm.memset.p0.i64(ptr align 16 @buffer_to_send, i8 7, i64 %74, i1 false), !dbg !2243
  %75 = call ptr @turn_event_base_new(), !dbg !2244
  store ptr %75, ptr @client_event_base, align 8, !dbg !2245
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2246, metadata !DIExpression()), !dbg !2247
  store i32 0, ptr %14, align 4, !dbg !2247
  call void @llvm.dbg.declare(metadata ptr %15, metadata !2248, metadata !DIExpression()), !dbg !2249
  store i32 0, ptr %15, align 4, !dbg !2249
  %76 = load i32, ptr @c2c, align 4, !dbg !2250
  %77 = icmp ne i32 %76, 0, !dbg !2250
  br i1 %77, label %78, label %140, !dbg !2252

78:                                               ; preds = %63
  %79 = load i32, ptr @no_rtcp, align 4, !dbg !2253
  %80 = icmp ne i32 %79, 0, !dbg !2253
  br i1 %80, label %110, label %81, !dbg !2256

81:                                               ; preds = %78
  store i32 0, ptr %14, align 4, !dbg !2257
  br label %82, !dbg !2259

82:                                               ; preds = %106, %81
  %83 = load i32, ptr %14, align 4, !dbg !2260
  %84 = load i32, ptr %12, align 4, !dbg !2262
  %85 = ashr i32 %84, 2, !dbg !2263
  %86 = icmp slt i32 %83, %85, !dbg !2264
  br i1 %86, label %87, label %109, !dbg !2265

87:                                               ; preds = %82
  %88 = load i32, ptr @dos, align 4, !dbg !2266
  %89 = icmp ne i32 %88, 0, !dbg !2266
  br i1 %89, label %92, label %90, !dbg !2269

90:                                               ; preds = %87
  %91 = call i32 @usleep(i32 noundef 234), !dbg !2270
  br label %92, !dbg !2270

92:                                               ; preds = %90, %87
  %93 = load ptr, ptr %7, align 8, !dbg !2271
  %94 = load i32, ptr %8, align 4, !dbg !2273
  %95 = load ptr, ptr %9, align 8, !dbg !2274
  %96 = load ptr, ptr %10, align 8, !dbg !2275
  %97 = load i32, ptr %11, align 4, !dbg !2276
  %98 = load i32, ptr %14, align 4, !dbg !2277
  %99 = shl i32 %98, 2, !dbg !2278
  %100 = call i32 @start_c2c(ptr noundef %93, i32 noundef %94, ptr noundef %95, ptr noundef %96, i32 noundef %97, i32 noundef %99), !dbg !2279
  %101 = icmp slt i32 %100, 0, !dbg !2280
  br i1 %101, label %102, label %103, !dbg !2281

102:                                              ; preds = %92
  call void @exit(i32 noundef -1) #15, !dbg !2282
  unreachable, !dbg !2282

103:                                              ; preds = %92
  %104 = load i32, ptr %15, align 4, !dbg !2284
  %105 = add nsw i32 %104, 4, !dbg !2284
  store i32 %105, ptr %15, align 4, !dbg !2284
  br label %106, !dbg !2285

106:                                              ; preds = %103
  %107 = load i32, ptr %14, align 4, !dbg !2286
  %108 = add nsw i32 %107, 1, !dbg !2286
  store i32 %108, ptr %14, align 4, !dbg !2286
  br label %82, !dbg !2287, !llvm.loop !2288

109:                                              ; preds = %82
  br label %139, !dbg !2289

110:                                              ; preds = %78
  store i32 0, ptr %14, align 4, !dbg !2290
  br label %111, !dbg !2292

111:                                              ; preds = %135, %110
  %112 = load i32, ptr %14, align 4, !dbg !2293
  %113 = load i32, ptr %12, align 4, !dbg !2295
  %114 = ashr i32 %113, 1, !dbg !2296
  %115 = icmp slt i32 %112, %114, !dbg !2297
  br i1 %115, label %116, label %138, !dbg !2298

116:                                              ; preds = %111
  %117 = load i32, ptr @dos, align 4, !dbg !2299
  %118 = icmp ne i32 %117, 0, !dbg !2299
  br i1 %118, label %121, label %119, !dbg !2302

119:                                              ; preds = %116
  %120 = call i32 @usleep(i32 noundef 234), !dbg !2303
  br label %121, !dbg !2303

121:                                              ; preds = %119, %116
  %122 = load ptr, ptr %7, align 8, !dbg !2304
  %123 = load i32, ptr %8, align 4, !dbg !2306
  %124 = load ptr, ptr %9, align 8, !dbg !2307
  %125 = load ptr, ptr %10, align 8, !dbg !2308
  %126 = load i32, ptr %11, align 4, !dbg !2309
  %127 = load i32, ptr %14, align 4, !dbg !2310
  %128 = shl i32 %127, 1, !dbg !2311
  %129 = call i32 @start_c2c(ptr noundef %122, i32 noundef %123, ptr noundef %124, ptr noundef %125, i32 noundef %126, i32 noundef %128), !dbg !2312
  %130 = icmp slt i32 %129, 0, !dbg !2313
  br i1 %130, label %131, label %132, !dbg !2314

131:                                              ; preds = %121
  call void @exit(i32 noundef -1) #15, !dbg !2315
  unreachable, !dbg !2315

132:                                              ; preds = %121
  %133 = load i32, ptr %15, align 4, !dbg !2317
  %134 = add nsw i32 %133, 2, !dbg !2317
  store i32 %134, ptr %15, align 4, !dbg !2317
  br label %135, !dbg !2318

135:                                              ; preds = %132
  %136 = load i32, ptr %14, align 4, !dbg !2319
  %137 = add nsw i32 %136, 1, !dbg !2319
  store i32 %137, ptr %14, align 4, !dbg !2319
  br label %111, !dbg !2320, !llvm.loop !2321

138:                                              ; preds = %111
  br label %139

139:                                              ; preds = %138, %109
  br label %200, !dbg !2323

140:                                              ; preds = %63
  %141 = load i32, ptr @no_rtcp, align 4, !dbg !2324
  %142 = icmp ne i32 %141, 0, !dbg !2324
  br i1 %142, label %172, label %143, !dbg !2327

143:                                              ; preds = %140
  store i32 0, ptr %14, align 4, !dbg !2328
  br label %144, !dbg !2330

144:                                              ; preds = %168, %143
  %145 = load i32, ptr %14, align 4, !dbg !2331
  %146 = load i32, ptr %12, align 4, !dbg !2333
  %147 = ashr i32 %146, 1, !dbg !2334
  %148 = icmp slt i32 %145, %147, !dbg !2335
  br i1 %148, label %149, label %171, !dbg !2336

149:                                              ; preds = %144
  %150 = load i32, ptr @dos, align 4, !dbg !2337
  %151 = icmp ne i32 %150, 0, !dbg !2337
  br i1 %151, label %154, label %152, !dbg !2340

152:                                              ; preds = %149
  %153 = call i32 @usleep(i32 noundef 234), !dbg !2341
  br label %154, !dbg !2341

154:                                              ; preds = %152, %149
  %155 = load ptr, ptr %7, align 8, !dbg !2342
  %156 = load i32, ptr %8, align 4, !dbg !2344
  %157 = load ptr, ptr %9, align 8, !dbg !2345
  %158 = load ptr, ptr %10, align 8, !dbg !2346
  %159 = load i32, ptr %11, align 4, !dbg !2347
  %160 = load i32, ptr %14, align 4, !dbg !2348
  %161 = shl i32 %160, 1, !dbg !2349
  %162 = call i32 @start_client(ptr noundef %155, i32 noundef %156, ptr noundef %157, ptr noundef %158, i32 noundef %159, i32 noundef %161), !dbg !2350
  %163 = icmp slt i32 %162, 0, !dbg !2351
  br i1 %163, label %164, label %165, !dbg !2352

164:                                              ; preds = %154
  call void @exit(i32 noundef -1) #15, !dbg !2353
  unreachable, !dbg !2353

165:                                              ; preds = %154
  %166 = load i32, ptr %15, align 4, !dbg !2355
  %167 = add nsw i32 %166, 2, !dbg !2355
  store i32 %167, ptr %15, align 4, !dbg !2355
  br label %168, !dbg !2356

168:                                              ; preds = %165
  %169 = load i32, ptr %14, align 4, !dbg !2357
  %170 = add nsw i32 %169, 1, !dbg !2357
  store i32 %170, ptr %14, align 4, !dbg !2357
  br label %144, !dbg !2358, !llvm.loop !2359

171:                                              ; preds = %144
  br label %199, !dbg !2360

172:                                              ; preds = %140
  store i32 0, ptr %14, align 4, !dbg !2361
  br label %173, !dbg !2363

173:                                              ; preds = %195, %172
  %174 = load i32, ptr %14, align 4, !dbg !2364
  %175 = load i32, ptr %12, align 4, !dbg !2366
  %176 = icmp slt i32 %174, %175, !dbg !2367
  br i1 %176, label %177, label %198, !dbg !2368

177:                                              ; preds = %173
  %178 = load i32, ptr @dos, align 4, !dbg !2369
  %179 = icmp ne i32 %178, 0, !dbg !2369
  br i1 %179, label %182, label %180, !dbg !2372

180:                                              ; preds = %177
  %181 = call i32 @usleep(i32 noundef 234), !dbg !2373
  br label %182, !dbg !2373

182:                                              ; preds = %180, %177
  %183 = load ptr, ptr %7, align 8, !dbg !2374
  %184 = load i32, ptr %8, align 4, !dbg !2376
  %185 = load ptr, ptr %9, align 8, !dbg !2377
  %186 = load ptr, ptr %10, align 8, !dbg !2378
  %187 = load i32, ptr %11, align 4, !dbg !2379
  %188 = load i32, ptr %14, align 4, !dbg !2380
  %189 = call i32 @start_client(ptr noundef %183, i32 noundef %184, ptr noundef %185, ptr noundef %186, i32 noundef %187, i32 noundef %188), !dbg !2381
  %190 = icmp slt i32 %189, 0, !dbg !2382
  br i1 %190, label %191, label %192, !dbg !2383

191:                                              ; preds = %182
  call void @exit(i32 noundef -1) #15, !dbg !2384
  unreachable, !dbg !2384

192:                                              ; preds = %182
  %193 = load i32, ptr %15, align 4, !dbg !2386
  %194 = add nsw i32 %193, 1, !dbg !2386
  store i32 %194, ptr %15, align 4, !dbg !2386
  br label %195, !dbg !2387

195:                                              ; preds = %192
  %196 = load i32, ptr %14, align 4, !dbg !2388
  %197 = add nsw i32 %196, 1, !dbg !2388
  store i32 %197, ptr %14, align 4, !dbg !2388
  br label %173, !dbg !2389, !llvm.loop !2390

198:                                              ; preds = %173
  br label %199

199:                                              ; preds = %198, %171
  br label %200

200:                                              ; preds = %199, %139
  %201 = load i32, ptr @dos, align 4, !dbg !2392
  %202 = icmp ne i32 %201, 0, !dbg !2392
  br i1 %202, label %203, label %204, !dbg !2394

203:                                              ; preds = %200
  call void @_exit(i32 noundef 0) #16, !dbg !2395
  unreachable, !dbg !2395

204:                                              ; preds = %200
  %205 = load i32, ptr %15, align 4, !dbg !2396
  store i32 %205, ptr @total_clients, align 4, !dbg !2397
  call void @__turn_getMSTime(), !dbg !2398
  call void @llvm.dbg.declare(metadata ptr %16, metadata !2399, metadata !DIExpression()), !dbg !2400
  %206 = load ptr, ptr @client_event_base, align 8, !dbg !2401
  %207 = call ptr @event_new(ptr noundef %206, i32 noundef -1, i16 noundef signext 17, ptr noundef @timer_handler, ptr noundef null), !dbg !2402
  store ptr %207, ptr %16, align 8, !dbg !2400
  call void @llvm.dbg.declare(metadata ptr %17, metadata !2403, metadata !DIExpression()), !dbg !2404
  %208 = getelementptr inbounds %struct.timeval, ptr %17, i32 0, i32 0, !dbg !2405
  store i64 0, ptr %208, align 8, !dbg !2406
  %209 = getelementptr inbounds %struct.timeval, ptr %17, i32 0, i32 1, !dbg !2407
  store i64 1000, ptr %209, align 8, !dbg !2408
  %210 = load ptr, ptr %16, align 8, !dbg !2409
  %211 = call i32 @event_add(ptr noundef %210, ptr noundef %17), !dbg !2409
  store i32 0, ptr %14, align 4, !dbg !2410
  br label %212, !dbg !2412

212:                                              ; preds = %283, %204
  %213 = load i32, ptr %14, align 4, !dbg !2413
  %214 = load i32, ptr @total_clients, align 4, !dbg !2415
  %215 = icmp slt i32 %213, %214, !dbg !2416
  br i1 %215, label %216, label %286, !dbg !2417

216:                                              ; preds = %212
  %217 = load i8, ptr @relay_transport, align 1, !dbg !2418
  %218 = zext i8 %217 to i32, !dbg !2418
  %219 = icmp eq i32 %218, 6, !dbg !2418
  br i1 %219, label %220, label %282, !dbg !2421

220:                                              ; preds = %216
  %221 = load i32, ptr @passive_tcp, align 4, !dbg !2422
  %222 = icmp ne i32 %221, 0, !dbg !2422
  br i1 %222, label %223, label %251, !dbg !2425

223:                                              ; preds = %220
  %224 = load ptr, ptr @elems, align 8, !dbg !2426
  %225 = load i32, ptr %14, align 4, !dbg !2429
  %226 = sext i32 %225 to i64, !dbg !2426
  %227 = getelementptr inbounds ptr, ptr %224, i64 %226, !dbg !2426
  %228 = load ptr, ptr %227, align 8, !dbg !2426
  %229 = getelementptr inbounds %struct.app_ur_session, ptr %228, i32 0, i32 0, !dbg !2430
  %230 = getelementptr inbounds %struct.app_ur_conn_info, ptr %229, i32 0, i32 19, !dbg !2431
  %231 = load i32, ptr %230, align 8, !dbg !2431
  %232 = icmp ne i32 %231, 0, !dbg !2426
  br i1 %232, label %233, label %250, !dbg !2432

233:                                              ; preds = %223
  call void @llvm.dbg.declare(metadata ptr %18, metadata !2433, metadata !DIExpression()), !dbg !2435
  store i32 0, ptr %18, align 4, !dbg !2435
  %234 = load ptr, ptr @elems, align 8, !dbg !2436
  %235 = load i32, ptr %14, align 4, !dbg !2437
  %236 = sext i32 %235 to i64, !dbg !2436
  %237 = getelementptr inbounds ptr, ptr %234, i64 %236, !dbg !2436
  %238 = load ptr, ptr %237, align 8, !dbg !2436
  %239 = getelementptr inbounds %struct.app_ur_session, ptr %238, i32 0, i32 0, !dbg !2438
  %240 = getelementptr inbounds %struct.app_ur_conn_info, ptr %239, i32 0, i32 7, !dbg !2439
  %241 = load i32, ptr %240, align 8, !dbg !2439
  %242 = load ptr, ptr @elems, align 8, !dbg !2440
  %243 = load i32, ptr %14, align 4, !dbg !2441
  %244 = sext i32 %243 to i64, !dbg !2440
  %245 = getelementptr inbounds ptr, ptr %242, i64 %244, !dbg !2440
  %246 = load ptr, ptr %245, align 8, !dbg !2440
  %247 = getelementptr inbounds %struct.app_ur_session, ptr %246, i32 0, i32 0, !dbg !2442
  %248 = getelementptr inbounds %struct.app_ur_conn_info, ptr %247, i32 0, i32 2, !dbg !2443
  %249 = call i32 @socket_connect(i32 noundef %241, ptr noundef %248, ptr noundef %18), !dbg !2444
  br label %250, !dbg !2445

250:                                              ; preds = %233, %223
  br label %281, !dbg !2446

251:                                              ; preds = %220
  call void @llvm.dbg.declare(metadata ptr %19, metadata !2447, metadata !DIExpression()), !dbg !2449
  store i32 0, ptr %19, align 4, !dbg !2449
  %252 = load i32, ptr %14, align 4, !dbg !2450
  %253 = add nsw i32 %252, 1, !dbg !2452
  store i32 %253, ptr %19, align 4, !dbg !2453
  br label %254, !dbg !2454

254:                                              ; preds = %277, %251
  %255 = load i32, ptr %19, align 4, !dbg !2455
  %256 = load i32, ptr @total_clients, align 4, !dbg !2457
  %257 = icmp slt i32 %255, %256, !dbg !2458
  br i1 %257, label %258, label %280, !dbg !2459

258:                                              ; preds = %254
  %259 = load i32, ptr @clnet_verbose, align 4, !dbg !2460
  %260 = load ptr, ptr @elems, align 8, !dbg !2463
  %261 = load i32, ptr %14, align 4, !dbg !2464
  %262 = sext i32 %261 to i64, !dbg !2463
  %263 = getelementptr inbounds ptr, ptr %260, i64 %262, !dbg !2463
  %264 = load ptr, ptr %263, align 8, !dbg !2463
  %265 = getelementptr inbounds %struct.app_ur_session, ptr %264, i32 0, i32 0, !dbg !2465
  %266 = load ptr, ptr @elems, align 8, !dbg !2466
  %267 = load i32, ptr %19, align 4, !dbg !2467
  %268 = sext i32 %267 to i64, !dbg !2466
  %269 = getelementptr inbounds ptr, ptr %266, i64 %268, !dbg !2466
  %270 = load ptr, ptr %269, align 8, !dbg !2466
  %271 = getelementptr inbounds %struct.app_ur_session, ptr %270, i32 0, i32 0, !dbg !2468
  %272 = getelementptr inbounds %struct.app_ur_conn_info, ptr %271, i32 0, i32 6, !dbg !2469
  %273 = call i32 @turn_tcp_connect(i32 noundef %259, ptr noundef %265, ptr noundef %272), !dbg !2470
  %274 = icmp slt i32 %273, 0, !dbg !2471
  br i1 %274, label %275, label %276, !dbg !2472

275:                                              ; preds = %258
  call void @exit(i32 noundef -1) #15, !dbg !2473
  unreachable, !dbg !2473

276:                                              ; preds = %258
  br label %277, !dbg !2475

277:                                              ; preds = %276
  %278 = load i32, ptr %19, align 4, !dbg !2476
  %279 = add nsw i32 %278, 1, !dbg !2476
  store i32 %279, ptr %19, align 4, !dbg !2476
  br label %254, !dbg !2477, !llvm.loop !2478

280:                                              ; preds = %254
  br label %281

281:                                              ; preds = %280, %250
  br label %282, !dbg !2480

282:                                              ; preds = %281, %216
  call void @run_events(i32 noundef 1), !dbg !2481
  br label %283, !dbg !2482

283:                                              ; preds = %282
  %284 = load i32, ptr %14, align 4, !dbg !2483
  %285 = add nsw i32 %284, 1, !dbg !2483
  store i32 %285, ptr %14, align 4, !dbg !2483
  br label %212, !dbg !2484, !llvm.loop !2485

286:                                              ; preds = %212
  call void @__turn_getMSTime(), !dbg !2487
  %287 = load i64, ptr @current_time, align 8, !dbg !2488
  %288 = load i32, ptr %13, align 4, !dbg !2489
  %289 = zext i32 %288 to i64, !dbg !2489
  %290 = sub i64 %287, %289, !dbg !2490
  %291 = trunc i64 %290 to i32, !dbg !2491
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.11, i32 noundef %291), !dbg !2492
  %292 = load i64, ptr @current_time, align 8, !dbg !2493
  %293 = trunc i64 %292 to i32, !dbg !2493
  store i32 %293, ptr %13, align 4, !dbg !2494
  %294 = load i8, ptr @relay_transport, align 1, !dbg !2495
  %295 = zext i8 %294 to i32, !dbg !2495
  %296 = icmp eq i32 %295, 6, !dbg !2495
  br i1 %296, label %297, label %435, !dbg !2497

297:                                              ; preds = %286
  call void @llvm.dbg.declare(metadata ptr %20, metadata !2498, metadata !DIExpression()), !dbg !2500
  %298 = load i64, ptr @current_time, align 8, !dbg !2501
  store i64 %298, ptr %20, align 8, !dbg !2500
  br label %299, !dbg !2502

299:                                              ; preds = %297, %433
  call void @llvm.dbg.declare(metadata ptr %21, metadata !2503, metadata !DIExpression()), !dbg !2505
  store i32 0, ptr %21, align 4, !dbg !2505
  call void @llvm.dbg.declare(metadata ptr %22, metadata !2506, metadata !DIExpression()), !dbg !2507
  store i32 0, ptr %22, align 4, !dbg !2507
  %300 = load i32, ptr @passive_tcp, align 4, !dbg !2508
  %301 = icmp ne i32 %300, 0, !dbg !2508
  br i1 %301, label %302, label %368, !dbg !2510

302:                                              ; preds = %299
  store i32 0, ptr %21, align 4, !dbg !2511
  br label %303, !dbg !2514

303:                                              ; preds = %359, %302
  %304 = load i32, ptr %21, align 4, !dbg !2515
  %305 = load i32, ptr @total_clients, align 4, !dbg !2517
  %306 = icmp slt i32 %304, %305, !dbg !2518
  br i1 %306, label %307, label %362, !dbg !2519

307:                                              ; preds = %303
  %308 = load ptr, ptr @elems, align 8, !dbg !2520
  %309 = load i32, ptr %21, align 4, !dbg !2523
  %310 = sext i32 %309 to i64, !dbg !2520
  %311 = getelementptr inbounds ptr, ptr %308, i64 %310, !dbg !2520
  %312 = load ptr, ptr %311, align 8, !dbg !2520
  %313 = getelementptr inbounds %struct.app_ur_session, ptr %312, i32 0, i32 0, !dbg !2524
  %314 = getelementptr inbounds %struct.app_ur_conn_info, ptr %313, i32 0, i32 19, !dbg !2525
  %315 = load i32, ptr %314, align 8, !dbg !2525
  %316 = icmp ne i32 %315, 0, !dbg !2520
  br i1 %316, label %317, label %320, !dbg !2526

317:                                              ; preds = %307
  %318 = load i32, ptr %22, align 4, !dbg !2527
  %319 = add nsw i32 %318, 1, !dbg !2527
  store i32 %319, ptr %22, align 4, !dbg !2527
  br label %358, !dbg !2529

320:                                              ; preds = %307
  %321 = load ptr, ptr @elems, align 8, !dbg !2530
  %322 = load i32, ptr %21, align 4, !dbg !2532
  %323 = sext i32 %322 to i64, !dbg !2530
  %324 = getelementptr inbounds ptr, ptr %321, i64 %323, !dbg !2530
  %325 = load ptr, ptr %324, align 8, !dbg !2530
  %326 = getelementptr inbounds %struct.app_ur_session, ptr %325, i32 0, i32 0, !dbg !2533
  %327 = getelementptr inbounds %struct.app_ur_conn_info, ptr %326, i32 0, i32 18, !dbg !2534
  %328 = load i64, ptr %327, align 8, !dbg !2534
  %329 = icmp ugt i64 %328, 0, !dbg !2535
  br i1 %329, label %330, label %357, !dbg !2536

330:                                              ; preds = %320
  %331 = load ptr, ptr @elems, align 8, !dbg !2537
  %332 = load i32, ptr %21, align 4, !dbg !2538
  %333 = sext i32 %332 to i64, !dbg !2537
  %334 = getelementptr inbounds ptr, ptr %331, i64 %333, !dbg !2537
  %335 = load ptr, ptr %334, align 8, !dbg !2537
  %336 = getelementptr inbounds %struct.app_ur_session, ptr %335, i32 0, i32 0, !dbg !2539
  %337 = getelementptr inbounds %struct.app_ur_conn_info, ptr %336, i32 0, i32 17, !dbg !2540
  %338 = load ptr, ptr %337, align 8, !dbg !2540
  %339 = getelementptr inbounds ptr, ptr %338, i64 0, !dbg !2537
  %340 = load ptr, ptr %339, align 8, !dbg !2537
  %341 = getelementptr inbounds %struct.app_tcp_conn_info, ptr %340, i32 0, i32 4, !dbg !2541
  %342 = load i32, ptr %341, align 8, !dbg !2541
  %343 = icmp ne i32 %342, 0, !dbg !2537
  br i1 %343, label %344, label %357, !dbg !2542

344:                                              ; preds = %330
  %345 = load ptr, ptr @elems, align 8, !dbg !2543
  %346 = load i32, ptr %21, align 4, !dbg !2545
  %347 = sext i32 %346 to i64, !dbg !2543
  %348 = getelementptr inbounds ptr, ptr %345, i64 %347, !dbg !2543
  %349 = load ptr, ptr %348, align 8, !dbg !2543
  %350 = getelementptr inbounds %struct.app_ur_session, ptr %349, i32 0, i32 0, !dbg !2546
  %351 = getelementptr inbounds %struct.app_ur_conn_info, ptr %350, i32 0, i32 18, !dbg !2547
  %352 = load i64, ptr %351, align 8, !dbg !2547
  %353 = load i32, ptr %22, align 4, !dbg !2548
  %354 = sext i32 %353 to i64, !dbg !2548
  %355 = add i64 %354, %352, !dbg !2548
  %356 = trunc i64 %355 to i32, !dbg !2548
  store i32 %356, ptr %22, align 4, !dbg !2548
  br label %357, !dbg !2549

357:                                              ; preds = %344, %330, %320
  br label %358

358:                                              ; preds = %357, %317
  br label %359, !dbg !2550

359:                                              ; preds = %358
  %360 = load i32, ptr %21, align 4, !dbg !2551
  %361 = add nsw i32 %360, 1, !dbg !2551
  store i32 %361, ptr %21, align 4, !dbg !2551
  br label %303, !dbg !2552, !llvm.loop !2553

362:                                              ; preds = %303
  %363 = load i32, ptr %22, align 4, !dbg !2555
  %364 = load i32, ptr @total_clients, align 4, !dbg !2557
  %365 = icmp sge i32 %363, %364, !dbg !2558
  br i1 %365, label %366, label %367, !dbg !2559

366:                                              ; preds = %362
  br label %434, !dbg !2560

367:                                              ; preds = %362
  br label %423, !dbg !2561

368:                                              ; preds = %299
  store i32 0, ptr %21, align 4, !dbg !2562
  br label %369, !dbg !2565

369:                                              ; preds = %410, %368
  %370 = load i32, ptr %21, align 4, !dbg !2566
  %371 = load i32, ptr @total_clients, align 4, !dbg !2568
  %372 = icmp slt i32 %370, %371, !dbg !2569
  br i1 %372, label %373, label %413, !dbg !2570

373:                                              ; preds = %369
  call void @llvm.dbg.declare(metadata ptr %23, metadata !2571, metadata !DIExpression()), !dbg !2573
  store i32 0, ptr %23, align 4, !dbg !2573
  store i32 0, ptr %23, align 4, !dbg !2574
  br label %374, !dbg !2576

374:                                              ; preds = %406, %373
  %375 = load i32, ptr %23, align 4, !dbg !2577
  %376 = load ptr, ptr @elems, align 8, !dbg !2579
  %377 = load i32, ptr %21, align 4, !dbg !2580
  %378 = sext i32 %377 to i64, !dbg !2579
  %379 = getelementptr inbounds ptr, ptr %376, i64 %378, !dbg !2579
  %380 = load ptr, ptr %379, align 8, !dbg !2579
  %381 = getelementptr inbounds %struct.app_ur_session, ptr %380, i32 0, i32 0, !dbg !2581
  %382 = getelementptr inbounds %struct.app_ur_conn_info, ptr %381, i32 0, i32 18, !dbg !2582
  %383 = load i64, ptr %382, align 8, !dbg !2582
  %384 = trunc i64 %383 to i32, !dbg !2583
  %385 = icmp slt i32 %375, %384, !dbg !2584
  br i1 %385, label %386, label %409, !dbg !2585

386:                                              ; preds = %374
  %387 = load ptr, ptr @elems, align 8, !dbg !2586
  %388 = load i32, ptr %21, align 4, !dbg !2589
  %389 = sext i32 %388 to i64, !dbg !2586
  %390 = getelementptr inbounds ptr, ptr %387, i64 %389, !dbg !2586
  %391 = load ptr, ptr %390, align 8, !dbg !2586
  %392 = getelementptr inbounds %struct.app_ur_session, ptr %391, i32 0, i32 0, !dbg !2590
  %393 = getelementptr inbounds %struct.app_ur_conn_info, ptr %392, i32 0, i32 17, !dbg !2591
  %394 = load ptr, ptr %393, align 8, !dbg !2591
  %395 = load i32, ptr %23, align 4, !dbg !2592
  %396 = sext i32 %395 to i64, !dbg !2586
  %397 = getelementptr inbounds ptr, ptr %394, i64 %396, !dbg !2586
  %398 = load ptr, ptr %397, align 8, !dbg !2586
  %399 = getelementptr inbounds %struct.app_tcp_conn_info, ptr %398, i32 0, i32 4, !dbg !2593
  %400 = load i32, ptr %399, align 8, !dbg !2593
  %401 = icmp ne i32 %400, 0, !dbg !2586
  br i1 %401, label %402, label %405, !dbg !2594

402:                                              ; preds = %386
  %403 = load i32, ptr %22, align 4, !dbg !2595
  %404 = add nsw i32 %403, 1, !dbg !2595
  store i32 %404, ptr %22, align 4, !dbg !2595
  br label %405, !dbg !2597

405:                                              ; preds = %402, %386
  br label %406, !dbg !2598

406:                                              ; preds = %405
  %407 = load i32, ptr %23, align 4, !dbg !2599
  %408 = add nsw i32 %407, 1, !dbg !2599
  store i32 %408, ptr %23, align 4, !dbg !2599
  br label %374, !dbg !2600, !llvm.loop !2601

409:                                              ; preds = %374
  br label %410, !dbg !2603

410:                                              ; preds = %409
  %411 = load i32, ptr %21, align 4, !dbg !2604
  %412 = add nsw i32 %411, 1, !dbg !2604
  store i32 %412, ptr %21, align 4, !dbg !2604
  br label %369, !dbg !2605, !llvm.loop !2606

413:                                              ; preds = %369
  %414 = load i32, ptr %22, align 4, !dbg !2608
  %415 = load i32, ptr @total_clients, align 4, !dbg !2610
  %416 = load i32, ptr @total_clients, align 4, !dbg !2611
  %417 = sub nsw i32 %416, 1, !dbg !2612
  %418 = mul nsw i32 %415, %417, !dbg !2613
  %419 = icmp sge i32 %414, %418, !dbg !2614
  br i1 %419, label %420, label %422, !dbg !2615

420:                                              ; preds = %413
  %421 = load i32, ptr %22, align 4, !dbg !2616
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.12, i32 noundef %421), !dbg !2618
  br label %434, !dbg !2619

422:                                              ; preds = %413
  br label %423

423:                                              ; preds = %422, %367
  call void @run_events(i32 noundef 0), !dbg !2620
  %424 = load i64, ptr @current_time, align 8, !dbg !2621
  %425 = load i64, ptr %20, align 8, !dbg !2623
  %426 = add i64 %425, 30, !dbg !2624
  %427 = load i32, ptr @total_clients, align 4, !dbg !2625
  %428 = sext i32 %427 to i64, !dbg !2625
  %429 = add i64 %426, %428, !dbg !2626
  %430 = icmp ugt i64 %424, %429, !dbg !2627
  br i1 %430, label %431, label %433, !dbg !2628

431:                                              ; preds = %423
  %432 = load i32, ptr %22, align 4, !dbg !2629
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 2, ptr noundef @.str.13, i32 noundef %432), !dbg !2631
  br label %434, !dbg !2632

433:                                              ; preds = %423
  br label %299, !dbg !2502, !llvm.loop !2633

434:                                              ; preds = %431, %420, %366
  br label %435, !dbg !2635

435:                                              ; preds = %434, %286
  call void @__turn_getMSTime(), !dbg !2636
  %436 = load i64, ptr @current_time, align 8, !dbg !2637
  %437 = trunc i64 %436 to i32, !dbg !2637
  store i32 %437, ptr %13, align 4, !dbg !2638
  store i32 0, ptr %14, align 4, !dbg !2639
  br label %438, !dbg !2641

438:                                              ; preds = %457, %435
  %439 = load i32, ptr %14, align 4, !dbg !2642
  %440 = load i32, ptr @total_clients, align 4, !dbg !2644
  %441 = icmp slt i32 %439, %440, !dbg !2645
  br i1 %441, label %442, label %460, !dbg !2646

442:                                              ; preds = %438
  %443 = load i64, ptr @current_mstime, align 8, !dbg !2647
  %444 = add i64 %443, 1000, !dbg !2649
  %445 = call i64 @random() #11, !dbg !2650
  %446 = trunc i64 %445 to i32, !dbg !2651
  %447 = urem i32 %446, 5000, !dbg !2652
  %448 = zext i32 %447 to i64, !dbg !2653
  %449 = add i64 %444, %448, !dbg !2654
  %450 = trunc i64 %449 to i32, !dbg !2647
  %451 = load ptr, ptr @elems, align 8, !dbg !2655
  %452 = load i32, ptr %14, align 4, !dbg !2656
  %453 = sext i32 %452 to i64, !dbg !2655
  %454 = getelementptr inbounds ptr, ptr %451, i64 %453, !dbg !2655
  %455 = load ptr, ptr %454, align 8, !dbg !2655
  %456 = getelementptr inbounds %struct.app_ur_session, ptr %455, i32 0, i32 18, !dbg !2657
  store i32 %450, ptr %456, align 4, !dbg !2658
  br label %457, !dbg !2659

457:                                              ; preds = %442
  %458 = load i32, ptr %14, align 4, !dbg !2660
  %459 = add nsw i32 %458, 1, !dbg !2660
  store i32 %459, ptr %14, align 4, !dbg !2660
  br label %438, !dbg !2661, !llvm.loop !2662

460:                                              ; preds = %438
  %461 = load ptr, ptr @elems, align 8, !dbg !2664
  %462 = getelementptr inbounds ptr, ptr %461, i64 0, !dbg !2664
  %463 = load ptr, ptr %462, align 8, !dbg !2664
  %464 = getelementptr inbounds %struct.app_ur_session, ptr %463, i32 0, i32 13, !dbg !2665
  %465 = load i32, ptr %464, align 8, !dbg !2665
  %466 = load i32, ptr @total_clients, align 4, !dbg !2666
  %467 = mul nsw i32 %465, %466, !dbg !2667
  store i32 %467, ptr @tot_messages, align 4, !dbg !2668
  store i32 1, ptr @start_full_timer, align 4, !dbg !2669
  br label %468, !dbg !2670

468:                                              ; preds = %460, %485
  call void @run_events(i32 noundef 1), !dbg !2671
  call void @llvm.dbg.declare(metadata ptr %24, metadata !2673, metadata !DIExpression()), !dbg !2674
  %469 = load i64, ptr @current_clients_number, align 8, !dbg !2675
  %470 = trunc i64 %469 to i32, !dbg !2676
  store i32 %470, ptr %24, align 4, !dbg !2674
  %471 = load i32, ptr %24, align 4, !dbg !2677
  %472 = icmp slt i32 %471, 1, !dbg !2679
  br i1 %472, label %473, label %474, !dbg !2680

473:                                              ; preds = %468
  br label %486, !dbg !2681

474:                                              ; preds = %468
  %475 = load i32, ptr @show_statistics, align 4, !dbg !2683
  %476 = icmp ne i32 %475, 0, !dbg !2683
  br i1 %476, label %477, label %485, !dbg !2685

477:                                              ; preds = %474
  %478 = load i32, ptr %24, align 4, !dbg !2686
  %479 = load i32, ptr @tot_send_messages, align 4, !dbg !2688
  %480 = zext i32 %479 to i64, !dbg !2689
  %481 = load i32, ptr @tot_recv_messages, align 4, !dbg !2690
  %482 = zext i32 %481 to i64, !dbg !2691
  %483 = load i64, ptr @tot_send_bytes, align 8, !dbg !2692
  %484 = load i64, ptr @tot_recv_bytes, align 8, !dbg !2693
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.14, ptr noundef @__FUNCTION__.start_mclient, i32 noundef %478, i64 noundef %480, i64 noundef %482, i64 noundef %483, i64 noundef %484), !dbg !2694
  store i32 0, ptr @show_statistics, align 4, !dbg !2695
  br label %485, !dbg !2696

485:                                              ; preds = %477, %474
  br label %468, !dbg !2670, !llvm.loop !2697

486:                                              ; preds = %473
  %487 = load i32, ptr @tot_send_messages, align 4, !dbg !2699
  %488 = zext i32 %487 to i64, !dbg !2700
  %489 = load i32, ptr @tot_recv_messages, align 4, !dbg !2701
  %490 = zext i32 %489 to i64, !dbg !2702
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.15, ptr noundef @__FUNCTION__.start_mclient, i64 noundef %488, i64 noundef %490), !dbg !2703
  %491 = load i64, ptr @tot_send_bytes, align 8, !dbg !2704
  %492 = load i64, ptr @tot_recv_bytes, align 8, !dbg !2705
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.16, ptr noundef @__FUNCTION__.start_mclient, i64 noundef %491, i64 noundef %492), !dbg !2706
  %493 = load ptr, ptr @client_event_base, align 8, !dbg !2707
  %494 = icmp ne ptr %493, null, !dbg !2707
  br i1 %494, label %495, label %497, !dbg !2709

495:                                              ; preds = %486
  %496 = load ptr, ptr @client_event_base, align 8, !dbg !2710
  call void @event_base_free(ptr noundef %496), !dbg !2711
  br label %497, !dbg !2711

497:                                              ; preds = %495, %486
  %498 = load i32, ptr @tot_send_messages, align 4, !dbg !2712
  %499 = load i32, ptr @tot_recv_messages, align 4, !dbg !2714
  %500 = icmp ult i32 %498, %499, !dbg !2715
  br i1 %500, label %501, label %503, !dbg !2716

501:                                              ; preds = %497
  %502 = load i32, ptr @tot_send_messages, align 4, !dbg !2717
  store i32 %502, ptr @tot_recv_messages, align 4, !dbg !2718
  br label %503, !dbg !2719

503:                                              ; preds = %501, %497
  %504 = load i32, ptr @tot_send_messages, align 4, !dbg !2720
  %505 = load i32, ptr @tot_recv_messages, align 4, !dbg !2721
  %506 = sub i32 %504, %505, !dbg !2722
  %507 = zext i32 %506 to i64, !dbg !2720
  store i64 %507, ptr @total_loss, align 8, !dbg !2723
  %508 = load i64, ptr @current_time, align 8, !dbg !2724
  %509 = load i32, ptr %13, align 4, !dbg !2725
  %510 = zext i32 %509 to i64, !dbg !2725
  %511 = sub i64 %508, %510, !dbg !2726
  %512 = trunc i64 %511 to i32, !dbg !2727
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.17, i32 noundef %512), !dbg !2728
  %513 = load i64, ptr @total_loss, align 8, !dbg !2729
  %514 = load i64, ptr @total_loss, align 8, !dbg !2730
  %515 = uitofp i64 %514 to double, !dbg !2731
  %516 = load i32, ptr @tot_send_messages, align 4, !dbg !2732
  %517 = uitofp i32 %516 to double, !dbg !2733
  %518 = fdiv double %515, %517, !dbg !2734
  %519 = fmul double %518, 1.000000e+02, !dbg !2735
  %520 = load i64, ptr @tot_send_dropped, align 8, !dbg !2736
  %521 = load i64, ptr @tot_send_dropped, align 8, !dbg !2737
  %522 = uitofp i64 %521 to double, !dbg !2738
  %523 = load i32, ptr @tot_send_messages, align 4, !dbg !2739
  %524 = zext i32 %523 to i64, !dbg !2739
  %525 = load i64, ptr @tot_send_dropped, align 8, !dbg !2740
  %526 = add i64 %524, %525, !dbg !2741
  %527 = uitofp i64 %526 to double, !dbg !2742
  %528 = fdiv double %522, %527, !dbg !2743
  %529 = fmul double %528, 1.000000e+02, !dbg !2744
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.18, i64 noundef %513, double noundef %519, i32 noundef 37, i64 noundef %520, double noundef %529, i32 noundef 37), !dbg !2745
  %530 = load i64, ptr @total_latency, align 8, !dbg !2746
  %531 = uitofp i64 %530 to double, !dbg !2747
  %532 = load i32, ptr @tot_recv_messages, align 4, !dbg !2748
  %533 = icmp ult i32 %532, 1, !dbg !2749
  br i1 %533, label %534, label %535, !dbg !2750

534:                                              ; preds = %503
  br label %537, !dbg !2750

535:                                              ; preds = %503
  %536 = load i32, ptr @tot_recv_messages, align 4, !dbg !2751
  br label %537, !dbg !2750

537:                                              ; preds = %535, %534
  %538 = phi i32 [ 1, %534 ], [ %536, %535 ], !dbg !2750
  %539 = uitofp i32 %538 to double, !dbg !2752
  %540 = fdiv double %531, %539, !dbg !2753
  %541 = load i64, ptr @min_latency, align 8, !dbg !2754
  %542 = load i64, ptr @max_latency, align 8, !dbg !2755
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.19, double noundef %540, i64 noundef %541, i64 noundef %542), !dbg !2756
  %543 = load i64, ptr @total_jitter, align 8, !dbg !2757
  %544 = uitofp i64 %543 to double, !dbg !2758
  %545 = load i32, ptr @tot_recv_messages, align 4, !dbg !2759
  %546 = uitofp i32 %545 to double, !dbg !2760
  %547 = fdiv double %544, %546, !dbg !2761
  %548 = load i64, ptr @min_jitter, align 8, !dbg !2762
  %549 = load i64, ptr @max_jitter, align 8, !dbg !2763
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.20, double noundef %547, i64 noundef %548, i64 noundef %549), !dbg !2764
  %550 = load ptr, ptr @elems, align 8, !dbg !2765
  call void @free(ptr noundef %550) #11, !dbg !2766
  ret void, !dbg !2767
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #6

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__turn_getMSTime() #0 !dbg !430 {
  %1 = alloca %struct.timespec, align 8
  call void @llvm.dbg.declare(metadata ptr %1, metadata !2768, metadata !DIExpression()), !dbg !2775
  call void @llvm.memset.p0.i64(ptr align 8 %1, i8 0, i64 16, i1 false), !dbg !2775
  %2 = call i32 @clock_gettime(i32 noundef 0, ptr noundef %1) #11, !dbg !2776
  %3 = load i64, ptr @__turn_getMSTime.start_sec, align 8, !dbg !2777
  %4 = icmp ne i64 %3, 0, !dbg !2777
  br i1 %4, label %8, label %5, !dbg !2779

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.timespec, ptr %1, i32 0, i32 0, !dbg !2780
  %7 = load i64, ptr %6, align 8, !dbg !2780
  store i64 %7, ptr @__turn_getMSTime.start_sec, align 8, !dbg !2781
  br label %8, !dbg !2782

8:                                                ; preds = %5, %0
  %9 = load i64, ptr @current_time, align 8, !dbg !2783
  %10 = getelementptr inbounds %struct.timespec, ptr %1, i32 0, i32 0, !dbg !2785
  %11 = load i64, ptr %10, align 8, !dbg !2785
  %12 = load i64, ptr @__turn_getMSTime.start_sec, align 8, !dbg !2786
  %13 = sub i64 %11, %12, !dbg !2787
  %14 = icmp ne i64 %9, %13, !dbg !2788
  br i1 %14, label %15, label %16, !dbg !2789

15:                                               ; preds = %8
  store i32 1, ptr @show_statistics, align 4, !dbg !2790
  br label %16, !dbg !2791

16:                                               ; preds = %15, %8
  %17 = getelementptr inbounds %struct.timespec, ptr %1, i32 0, i32 0, !dbg !2792
  %18 = load i64, ptr %17, align 8, !dbg !2792
  %19 = load i64, ptr @__turn_getMSTime.start_sec, align 8, !dbg !2793
  %20 = sub i64 %18, %19, !dbg !2794
  store i64 %20, ptr @current_time, align 8, !dbg !2795
  %21 = load i64, ptr @current_time, align 8, !dbg !2796
  %22 = mul i64 %21, 1000, !dbg !2797
  %23 = getelementptr inbounds %struct.timespec, ptr %1, i32 0, i32 1, !dbg !2798
  %24 = load i64, ptr %23, align 8, !dbg !2798
  %25 = sdiv i64 %24, 1000000, !dbg !2799
  %26 = add i64 %22, %25, !dbg !2800
  store i64 %26, ptr @current_mstime, align 8, !dbg !2801
  ret void, !dbg !2802
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

declare ptr @turn_event_base_new() #3

declare i32 @usleep(i32 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_c2c(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) #0 !dbg !2803 {
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca %struct.app_ur_conn_info, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = alloca i16, align 2
  %23 = alloca i16, align 2
  %24 = alloca i16, align 2
  %25 = alloca i16, align 2
  %26 = alloca ptr, align 8
  %27 = alloca ptr, align 8
  %28 = alloca ptr, align 8
  %29 = alloca ptr, align 8
  store ptr %0, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2806, metadata !DIExpression()), !dbg !2807
  store i32 %1, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2808, metadata !DIExpression()), !dbg !2809
  store ptr %2, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2810, metadata !DIExpression()), !dbg !2811
  store ptr %3, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2812, metadata !DIExpression()), !dbg !2813
  store i32 %4, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2814, metadata !DIExpression()), !dbg !2815
  store i32 %5, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2816, metadata !DIExpression()), !dbg !2817
  call void @llvm.dbg.declare(metadata ptr %13, metadata !2818, metadata !DIExpression()), !dbg !2819
  %30 = call ptr @create_new_ss(), !dbg !2820
  store ptr %30, ptr %13, align 8, !dbg !2819
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2821, metadata !DIExpression()), !dbg !2822
  store ptr null, ptr %14, align 8, !dbg !2822
  %31 = load i32, ptr @no_rtcp, align 4, !dbg !2823
  %32 = icmp ne i32 %31, 0, !dbg !2823
  br i1 %32, label %35, label %33, !dbg !2825

33:                                               ; preds = %6
  %34 = call ptr @create_new_ss(), !dbg !2826
  store ptr %34, ptr %14, align 8, !dbg !2827
  br label %35, !dbg !2828

35:                                               ; preds = %33, %6
  call void @llvm.dbg.declare(metadata ptr %15, metadata !2829, metadata !DIExpression()), !dbg !2830
  %36 = call ptr @create_new_ss(), !dbg !2831
  store ptr %36, ptr %15, align 8, !dbg !2830
  call void @llvm.dbg.declare(metadata ptr %16, metadata !2832, metadata !DIExpression()), !dbg !2833
  store ptr null, ptr %16, align 8, !dbg !2833
  %37 = load i32, ptr @no_rtcp, align 4, !dbg !2834
  %38 = icmp ne i32 %37, 0, !dbg !2834
  br i1 %38, label %41, label %39, !dbg !2836

39:                                               ; preds = %35
  %40 = call ptr @create_new_ss(), !dbg !2837
  store ptr %40, ptr %16, align 8, !dbg !2838
  br label %41, !dbg !2839

41:                                               ; preds = %39, %35
  call void @llvm.dbg.declare(metadata ptr %17, metadata !2840, metadata !DIExpression()), !dbg !2841
  call void @llvm.memset.p0.i64(ptr align 8 %17, i8 0, i64 1944, i1 false), !dbg !2842
  %42 = getelementptr inbounds %struct.app_ur_conn_info, ptr %17, i32 0, i32 7, !dbg !2843
  store i32 -1, ptr %42, align 8, !dbg !2844
  call void @llvm.dbg.declare(metadata ptr %18, metadata !2845, metadata !DIExpression()), !dbg !2846
  %43 = load ptr, ptr %13, align 8, !dbg !2847
  %44 = getelementptr inbounds %struct.app_ur_session, ptr %43, i32 0, i32 0, !dbg !2848
  store ptr %44, ptr %18, align 8, !dbg !2846
  call void @llvm.dbg.declare(metadata ptr %19, metadata !2849, metadata !DIExpression()), !dbg !2850
  store ptr null, ptr %19, align 8, !dbg !2850
  %45 = load i32, ptr @no_rtcp, align 4, !dbg !2851
  %46 = icmp ne i32 %45, 0, !dbg !2851
  br i1 %46, label %50, label %47, !dbg !2853

47:                                               ; preds = %41
  %48 = load ptr, ptr %14, align 8, !dbg !2854
  %49 = getelementptr inbounds %struct.app_ur_session, ptr %48, i32 0, i32 0, !dbg !2855
  store ptr %49, ptr %19, align 8, !dbg !2856
  br label %50, !dbg !2857

50:                                               ; preds = %47, %41
  call void @llvm.dbg.declare(metadata ptr %20, metadata !2858, metadata !DIExpression()), !dbg !2859
  %51 = load ptr, ptr %15, align 8, !dbg !2860
  %52 = getelementptr inbounds %struct.app_ur_session, ptr %51, i32 0, i32 0, !dbg !2861
  store ptr %52, ptr %20, align 8, !dbg !2859
  call void @llvm.dbg.declare(metadata ptr %21, metadata !2862, metadata !DIExpression()), !dbg !2863
  store ptr null, ptr %21, align 8, !dbg !2863
  %53 = load i32, ptr @no_rtcp, align 4, !dbg !2864
  %54 = icmp ne i32 %53, 0, !dbg !2864
  br i1 %54, label %58, label %55, !dbg !2866

55:                                               ; preds = %50
  %56 = load ptr, ptr %16, align 8, !dbg !2867
  %57 = getelementptr inbounds %struct.app_ur_session, ptr %56, i32 0, i32 0, !dbg !2868
  store ptr %57, ptr %21, align 8, !dbg !2869
  br label %58, !dbg !2870

58:                                               ; preds = %55, %50
  call void @llvm.dbg.declare(metadata ptr %22, metadata !2871, metadata !DIExpression()), !dbg !2872
  store i16 0, ptr %22, align 2, !dbg !2872
  call void @llvm.dbg.declare(metadata ptr %23, metadata !2873, metadata !DIExpression()), !dbg !2874
  store i16 0, ptr %23, align 2, !dbg !2874
  call void @llvm.dbg.declare(metadata ptr %24, metadata !2875, metadata !DIExpression()), !dbg !2876
  store i16 0, ptr %24, align 2, !dbg !2876
  call void @llvm.dbg.declare(metadata ptr %25, metadata !2877, metadata !DIExpression()), !dbg !2878
  store i16 0, ptr %25, align 2, !dbg !2878
  %59 = load i32, ptr %8, align 4, !dbg !2879
  %60 = trunc i32 %59 to i16, !dbg !2879
  %61 = load ptr, ptr %7, align 8, !dbg !2880
  %62 = load ptr, ptr %9, align 8, !dbg !2881
  %63 = load ptr, ptr %10, align 8, !dbg !2882
  %64 = load i32, ptr @clnet_verbose, align 4, !dbg !2883
  %65 = load ptr, ptr %18, align 8, !dbg !2884
  %66 = load ptr, ptr %19, align 8, !dbg !2885
  %67 = load ptr, ptr %20, align 8, !dbg !2886
  %68 = load ptr, ptr %21, align 8, !dbg !2887
  %69 = call i32 @start_c2c_connection(i16 noundef zeroext %60, ptr noundef %61, ptr noundef %62, ptr noundef %63, i32 noundef %64, ptr noundef %17, ptr noundef %65, ptr noundef %22, ptr noundef %66, ptr noundef %23, ptr noundef %67, ptr noundef %24, ptr noundef %68, ptr noundef %25), !dbg !2888
  %70 = getelementptr inbounds %struct.app_ur_conn_info, ptr %17, i32 0, i32 8, !dbg !2889
  %71 = load ptr, ptr %70, align 8, !dbg !2889
  %72 = icmp ne ptr %71, null, !dbg !2891
  br i1 %72, label %73, label %77, !dbg !2892

73:                                               ; preds = %58
  %74 = getelementptr inbounds %struct.app_ur_conn_info, ptr %17, i32 0, i32 8, !dbg !2893
  %75 = load ptr, ptr %74, align 8, !dbg !2893
  call void @SSL_free(ptr noundef %75), !dbg !2895
  %76 = getelementptr inbounds %struct.app_ur_conn_info, ptr %17, i32 0, i32 7, !dbg !2896
  store i32 -1, ptr %76, align 8, !dbg !2897
  br label %87, !dbg !2898

77:                                               ; preds = %58
  %78 = getelementptr inbounds %struct.app_ur_conn_info, ptr %17, i32 0, i32 7, !dbg !2899
  %79 = load i32, ptr %78, align 8, !dbg !2899
  %80 = icmp ne i32 %79, -1, !dbg !2901
  br i1 %80, label %81, label %86, !dbg !2902

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.app_ur_conn_info, ptr %17, i32 0, i32 7, !dbg !2903
  %83 = load i32, ptr %82, align 8, !dbg !2903
  %84 = call i32 @close(i32 noundef %83), !dbg !2903
  %85 = getelementptr inbounds %struct.app_ur_conn_info, ptr %17, i32 0, i32 7, !dbg !2905
  store i32 -1, ptr %85, align 8, !dbg !2906
  br label %86, !dbg !2907

86:                                               ; preds = %81, %77
  br label %87

87:                                               ; preds = %86, %73
  %88 = load ptr, ptr %18, align 8, !dbg !2908
  %89 = getelementptr inbounds %struct.app_ur_conn_info, ptr %88, i32 0, i32 7, !dbg !2909
  %90 = load i32, ptr %89, align 8, !dbg !2909
  %91 = call i32 @socket_set_nonblocking(i32 noundef %90), !dbg !2910
  %92 = load i32, ptr @no_rtcp, align 4, !dbg !2911
  %93 = icmp ne i32 %92, 0, !dbg !2911
  br i1 %93, label %99, label %94, !dbg !2913

94:                                               ; preds = %87
  %95 = load ptr, ptr %19, align 8, !dbg !2914
  %96 = getelementptr inbounds %struct.app_ur_conn_info, ptr %95, i32 0, i32 7, !dbg !2915
  %97 = load i32, ptr %96, align 8, !dbg !2915
  %98 = call i32 @socket_set_nonblocking(i32 noundef %97), !dbg !2916
  br label %99, !dbg !2916

99:                                               ; preds = %94, %87
  %100 = load ptr, ptr %20, align 8, !dbg !2917
  %101 = getelementptr inbounds %struct.app_ur_conn_info, ptr %100, i32 0, i32 7, !dbg !2918
  %102 = load i32, ptr %101, align 8, !dbg !2918
  %103 = call i32 @socket_set_nonblocking(i32 noundef %102), !dbg !2919
  %104 = load i32, ptr @no_rtcp, align 4, !dbg !2920
  %105 = icmp ne i32 %104, 0, !dbg !2920
  br i1 %105, label %111, label %106, !dbg !2922

106:                                              ; preds = %99
  %107 = load ptr, ptr %21, align 8, !dbg !2923
  %108 = getelementptr inbounds %struct.app_ur_conn_info, ptr %107, i32 0, i32 7, !dbg !2924
  %109 = load i32, ptr %108, align 8, !dbg !2924
  %110 = call i32 @socket_set_nonblocking(i32 noundef %109), !dbg !2925
  br label %111, !dbg !2925

111:                                              ; preds = %106, %99
  call void @llvm.dbg.declare(metadata ptr %26, metadata !2926, metadata !DIExpression()), !dbg !2927
  %112 = load ptr, ptr @client_event_base, align 8, !dbg !2928
  %113 = load ptr, ptr %18, align 8, !dbg !2929
  %114 = getelementptr inbounds %struct.app_ur_conn_info, ptr %113, i32 0, i32 7, !dbg !2930
  %115 = load i32, ptr %114, align 8, !dbg !2930
  %116 = load ptr, ptr %13, align 8, !dbg !2931
  %117 = call ptr @event_new(ptr noundef %112, i32 noundef %115, i16 noundef signext 18, ptr noundef @client_input_handler, ptr noundef %116), !dbg !2932
  store ptr %117, ptr %26, align 8, !dbg !2927
  %118 = load ptr, ptr %26, align 8, !dbg !2933
  %119 = call i32 @event_add(ptr noundef %118, ptr noundef null), !dbg !2934
  call void @llvm.dbg.declare(metadata ptr %27, metadata !2935, metadata !DIExpression()), !dbg !2936
  store ptr null, ptr %27, align 8, !dbg !2936
  %120 = load i32, ptr @no_rtcp, align 4, !dbg !2937
  %121 = icmp ne i32 %120, 0, !dbg !2937
  br i1 %121, label %131, label %122, !dbg !2939

122:                                              ; preds = %111
  %123 = load ptr, ptr @client_event_base, align 8, !dbg !2940
  %124 = load ptr, ptr %19, align 8, !dbg !2942
  %125 = getelementptr inbounds %struct.app_ur_conn_info, ptr %124, i32 0, i32 7, !dbg !2943
  %126 = load i32, ptr %125, align 8, !dbg !2943
  %127 = load ptr, ptr %14, align 8, !dbg !2944
  %128 = call ptr @event_new(ptr noundef %123, i32 noundef %126, i16 noundef signext 18, ptr noundef @client_input_handler, ptr noundef %127), !dbg !2945
  store ptr %128, ptr %27, align 8, !dbg !2946
  %129 = load ptr, ptr %27, align 8, !dbg !2947
  %130 = call i32 @event_add(ptr noundef %129, ptr noundef null), !dbg !2948
  br label %131, !dbg !2949

131:                                              ; preds = %122, %111
  call void @llvm.dbg.declare(metadata ptr %28, metadata !2950, metadata !DIExpression()), !dbg !2951
  %132 = load ptr, ptr @client_event_base, align 8, !dbg !2952
  %133 = load ptr, ptr %20, align 8, !dbg !2953
  %134 = getelementptr inbounds %struct.app_ur_conn_info, ptr %133, i32 0, i32 7, !dbg !2954
  %135 = load i32, ptr %134, align 8, !dbg !2954
  %136 = load ptr, ptr %15, align 8, !dbg !2955
  %137 = call ptr @event_new(ptr noundef %132, i32 noundef %135, i16 noundef signext 18, ptr noundef @client_input_handler, ptr noundef %136), !dbg !2956
  store ptr %137, ptr %28, align 8, !dbg !2951
  %138 = load ptr, ptr %28, align 8, !dbg !2957
  %139 = call i32 @event_add(ptr noundef %138, ptr noundef null), !dbg !2958
  call void @llvm.dbg.declare(metadata ptr %29, metadata !2959, metadata !DIExpression()), !dbg !2960
  store ptr null, ptr %29, align 8, !dbg !2960
  %140 = load i32, ptr @no_rtcp, align 4, !dbg !2961
  %141 = icmp ne i32 %140, 0, !dbg !2961
  br i1 %141, label %151, label %142, !dbg !2963

142:                                              ; preds = %131
  %143 = load ptr, ptr @client_event_base, align 8, !dbg !2964
  %144 = load ptr, ptr %21, align 8, !dbg !2966
  %145 = getelementptr inbounds %struct.app_ur_conn_info, ptr %144, i32 0, i32 7, !dbg !2967
  %146 = load i32, ptr %145, align 8, !dbg !2967
  %147 = load ptr, ptr %16, align 8, !dbg !2968
  %148 = call ptr @event_new(ptr noundef %143, i32 noundef %146, i16 noundef signext 18, ptr noundef @client_input_handler, ptr noundef %147), !dbg !2969
  store ptr %148, ptr %29, align 8, !dbg !2970
  %149 = load ptr, ptr %29, align 8, !dbg !2971
  %150 = call i32 @event_add(ptr noundef %149, ptr noundef null), !dbg !2972
  br label %151, !dbg !2973

151:                                              ; preds = %142, %131
  %152 = load ptr, ptr %13, align 8, !dbg !2974
  %153 = getelementptr inbounds %struct.app_ur_session, ptr %152, i32 0, i32 1, !dbg !2975
  store i32 1, ptr %153, align 8, !dbg !2976
  %154 = load ptr, ptr %26, align 8, !dbg !2977
  %155 = load ptr, ptr %13, align 8, !dbg !2978
  %156 = getelementptr inbounds %struct.app_ur_session, ptr %155, i32 0, i32 7, !dbg !2979
  store ptr %154, ptr %156, align 8, !dbg !2980
  %157 = load i32, ptr %11, align 4, !dbg !2981
  %158 = load ptr, ptr %13, align 8, !dbg !2982
  %159 = getelementptr inbounds %struct.app_ur_session, ptr %158, i32 0, i32 13, !dbg !2983
  store i32 %157, ptr %159, align 8, !dbg !2984
  %160 = load ptr, ptr %13, align 8, !dbg !2985
  %161 = getelementptr inbounds %struct.app_ur_session, ptr %160, i32 0, i32 16, !dbg !2986
  store i32 -1, ptr %161, align 4, !dbg !2987
  %162 = load i16, ptr %22, align 2, !dbg !2988
  %163 = load ptr, ptr %13, align 8, !dbg !2989
  %164 = getelementptr inbounds %struct.app_ur_session, ptr %163, i32 0, i32 3, !dbg !2990
  store i16 %162, ptr %164, align 8, !dbg !2991
  %165 = load i32, ptr @no_rtcp, align 4, !dbg !2992
  %166 = icmp ne i32 %165, 0, !dbg !2992
  br i1 %166, label %191, label %167, !dbg !2994

167:                                              ; preds = %151
  %168 = load ptr, ptr %14, align 8, !dbg !2995
  %169 = getelementptr inbounds %struct.app_ur_session, ptr %168, i32 0, i32 1, !dbg !2997
  store i32 1, ptr %169, align 8, !dbg !2998
  %170 = load ptr, ptr %27, align 8, !dbg !2999
  %171 = load ptr, ptr %14, align 8, !dbg !3000
  %172 = getelementptr inbounds %struct.app_ur_session, ptr %171, i32 0, i32 7, !dbg !3001
  store ptr %170, ptr %172, align 8, !dbg !3002
  %173 = load ptr, ptr %13, align 8, !dbg !3003
  %174 = getelementptr inbounds %struct.app_ur_session, ptr %173, i32 0, i32 13, !dbg !3004
  %175 = load i32, ptr %174, align 8, !dbg !3004
  %176 = load ptr, ptr %14, align 8, !dbg !3005
  %177 = getelementptr inbounds %struct.app_ur_session, ptr %176, i32 0, i32 13, !dbg !3006
  store i32 %175, ptr %177, align 8, !dbg !3007
  %178 = load ptr, ptr %14, align 8, !dbg !3008
  %179 = getelementptr inbounds %struct.app_ur_session, ptr %178, i32 0, i32 13, !dbg !3010
  %180 = load i32, ptr %179, align 8, !dbg !3010
  %181 = icmp slt i32 %180, 1, !dbg !3011
  br i1 %181, label %182, label %185, !dbg !3012

182:                                              ; preds = %167
  %183 = load ptr, ptr %14, align 8, !dbg !3013
  %184 = getelementptr inbounds %struct.app_ur_session, ptr %183, i32 0, i32 13, !dbg !3014
  store i32 1, ptr %184, align 8, !dbg !3015
  br label %185, !dbg !3013

185:                                              ; preds = %182, %167
  %186 = load ptr, ptr %14, align 8, !dbg !3016
  %187 = getelementptr inbounds %struct.app_ur_session, ptr %186, i32 0, i32 16, !dbg !3017
  store i32 -1, ptr %187, align 4, !dbg !3018
  %188 = load i16, ptr %23, align 2, !dbg !3019
  %189 = load ptr, ptr %14, align 8, !dbg !3020
  %190 = getelementptr inbounds %struct.app_ur_session, ptr %189, i32 0, i32 3, !dbg !3021
  store i16 %188, ptr %190, align 8, !dbg !3022
  br label %191, !dbg !3023

191:                                              ; preds = %185, %151
  %192 = load ptr, ptr %15, align 8, !dbg !3024
  %193 = getelementptr inbounds %struct.app_ur_session, ptr %192, i32 0, i32 1, !dbg !3025
  store i32 1, ptr %193, align 8, !dbg !3026
  %194 = load ptr, ptr %28, align 8, !dbg !3027
  %195 = load ptr, ptr %15, align 8, !dbg !3028
  %196 = getelementptr inbounds %struct.app_ur_session, ptr %195, i32 0, i32 7, !dbg !3029
  store ptr %194, ptr %196, align 8, !dbg !3030
  %197 = load ptr, ptr %13, align 8, !dbg !3031
  %198 = getelementptr inbounds %struct.app_ur_session, ptr %197, i32 0, i32 13, !dbg !3032
  %199 = load i32, ptr %198, align 8, !dbg !3032
  %200 = load ptr, ptr %15, align 8, !dbg !3033
  %201 = getelementptr inbounds %struct.app_ur_session, ptr %200, i32 0, i32 13, !dbg !3034
  store i32 %199, ptr %201, align 8, !dbg !3035
  %202 = load ptr, ptr %15, align 8, !dbg !3036
  %203 = getelementptr inbounds %struct.app_ur_session, ptr %202, i32 0, i32 16, !dbg !3037
  store i32 -1, ptr %203, align 4, !dbg !3038
  %204 = load i16, ptr %24, align 2, !dbg !3039
  %205 = load ptr, ptr %15, align 8, !dbg !3040
  %206 = getelementptr inbounds %struct.app_ur_session, ptr %205, i32 0, i32 3, !dbg !3041
  store i16 %204, ptr %206, align 8, !dbg !3042
  %207 = load i32, ptr @no_rtcp, align 4, !dbg !3043
  %208 = icmp ne i32 %207, 0, !dbg !3043
  br i1 %208, label %225, label %209, !dbg !3045

209:                                              ; preds = %191
  %210 = load ptr, ptr %16, align 8, !dbg !3046
  %211 = getelementptr inbounds %struct.app_ur_session, ptr %210, i32 0, i32 1, !dbg !3048
  store i32 1, ptr %211, align 8, !dbg !3049
  %212 = load ptr, ptr %29, align 8, !dbg !3050
  %213 = load ptr, ptr %16, align 8, !dbg !3051
  %214 = getelementptr inbounds %struct.app_ur_session, ptr %213, i32 0, i32 7, !dbg !3052
  store ptr %212, ptr %214, align 8, !dbg !3053
  %215 = load ptr, ptr %14, align 8, !dbg !3054
  %216 = getelementptr inbounds %struct.app_ur_session, ptr %215, i32 0, i32 13, !dbg !3055
  %217 = load i32, ptr %216, align 8, !dbg !3055
  %218 = load ptr, ptr %16, align 8, !dbg !3056
  %219 = getelementptr inbounds %struct.app_ur_session, ptr %218, i32 0, i32 13, !dbg !3057
  store i32 %217, ptr %219, align 8, !dbg !3058
  %220 = load ptr, ptr %16, align 8, !dbg !3059
  %221 = getelementptr inbounds %struct.app_ur_session, ptr %220, i32 0, i32 16, !dbg !3060
  store i32 -1, ptr %221, align 4, !dbg !3061
  %222 = load i16, ptr %25, align 2, !dbg !3062
  %223 = load ptr, ptr %16, align 8, !dbg !3063
  %224 = getelementptr inbounds %struct.app_ur_session, ptr %223, i32 0, i32 3, !dbg !3064
  store i16 %222, ptr %224, align 8, !dbg !3065
  br label %225, !dbg !3066

225:                                              ; preds = %209, %191
  %226 = load ptr, ptr %13, align 8, !dbg !3067
  %227 = load ptr, ptr @elems, align 8, !dbg !3068
  %228 = load i32, ptr %12, align 4, !dbg !3069
  %229 = add nsw i32 %228, 1, !dbg !3069
  store i32 %229, ptr %12, align 4, !dbg !3069
  %230 = sext i32 %228 to i64, !dbg !3068
  %231 = getelementptr inbounds ptr, ptr %227, i64 %230, !dbg !3068
  store ptr %226, ptr %231, align 8, !dbg !3070
  %232 = load i32, ptr @no_rtcp, align 4, !dbg !3071
  %233 = icmp ne i32 %232, 0, !dbg !3071
  br i1 %233, label %241, label %234, !dbg !3073

234:                                              ; preds = %225
  %235 = load ptr, ptr %14, align 8, !dbg !3074
  %236 = load ptr, ptr @elems, align 8, !dbg !3075
  %237 = load i32, ptr %12, align 4, !dbg !3076
  %238 = add nsw i32 %237, 1, !dbg !3076
  store i32 %238, ptr %12, align 4, !dbg !3076
  %239 = sext i32 %237 to i64, !dbg !3075
  %240 = getelementptr inbounds ptr, ptr %236, i64 %239, !dbg !3075
  store ptr %235, ptr %240, align 8, !dbg !3077
  br label %241, !dbg !3075

241:                                              ; preds = %234, %225
  %242 = load ptr, ptr %15, align 8, !dbg !3078
  %243 = load ptr, ptr @elems, align 8, !dbg !3079
  %244 = load i32, ptr %12, align 4, !dbg !3080
  %245 = add nsw i32 %244, 1, !dbg !3080
  store i32 %245, ptr %12, align 4, !dbg !3080
  %246 = sext i32 %244 to i64, !dbg !3079
  %247 = getelementptr inbounds ptr, ptr %243, i64 %246, !dbg !3079
  store ptr %242, ptr %247, align 8, !dbg !3081
  %248 = load i32, ptr @no_rtcp, align 4, !dbg !3082
  %249 = icmp ne i32 %248, 0, !dbg !3082
  br i1 %249, label %257, label %250, !dbg !3084

250:                                              ; preds = %241
  %251 = load ptr, ptr %16, align 8, !dbg !3085
  %252 = load ptr, ptr @elems, align 8, !dbg !3086
  %253 = load i32, ptr %12, align 4, !dbg !3087
  %254 = add nsw i32 %253, 1, !dbg !3087
  store i32 %254, ptr %12, align 4, !dbg !3087
  %255 = sext i32 %253 to i64, !dbg !3086
  %256 = getelementptr inbounds ptr, ptr %252, i64 %255, !dbg !3086
  store ptr %251, ptr %256, align 8, !dbg !3088
  br label %257, !dbg !3086

257:                                              ; preds = %250, %241
  ret i32 0, !dbg !3089
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #8

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_client(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) #0 !dbg !3090 {
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca %struct.app_ur_conn_info, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca i16, align 2
  %19 = alloca i16, align 2
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  store ptr %0, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3091, metadata !DIExpression()), !dbg !3092
  store i32 %1, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3093, metadata !DIExpression()), !dbg !3094
  store ptr %2, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3095, metadata !DIExpression()), !dbg !3096
  store ptr %3, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !3097, metadata !DIExpression()), !dbg !3098
  store i32 %4, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !3099, metadata !DIExpression()), !dbg !3100
  store i32 %5, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !3101, metadata !DIExpression()), !dbg !3102
  call void @llvm.dbg.declare(metadata ptr %13, metadata !3103, metadata !DIExpression()), !dbg !3104
  %22 = call ptr @create_new_ss(), !dbg !3105
  store ptr %22, ptr %13, align 8, !dbg !3104
  call void @llvm.dbg.declare(metadata ptr %14, metadata !3106, metadata !DIExpression()), !dbg !3107
  store ptr null, ptr %14, align 8, !dbg !3107
  %23 = load i32, ptr @no_rtcp, align 4, !dbg !3108
  %24 = icmp ne i32 %23, 0, !dbg !3108
  br i1 %24, label %27, label %25, !dbg !3110

25:                                               ; preds = %6
  %26 = call ptr @create_new_ss(), !dbg !3111
  store ptr %26, ptr %14, align 8, !dbg !3112
  br label %27, !dbg !3113

27:                                               ; preds = %25, %6
  call void @llvm.dbg.declare(metadata ptr %15, metadata !3114, metadata !DIExpression()), !dbg !3115
  call void @llvm.memset.p0.i64(ptr align 8 %15, i8 0, i64 1944, i1 false), !dbg !3116
  %28 = getelementptr inbounds %struct.app_ur_conn_info, ptr %15, i32 0, i32 7, !dbg !3117
  store i32 -1, ptr %28, align 8, !dbg !3118
  call void @llvm.dbg.declare(metadata ptr %16, metadata !3119, metadata !DIExpression()), !dbg !3120
  %29 = load ptr, ptr %13, align 8, !dbg !3121
  %30 = getelementptr inbounds %struct.app_ur_session, ptr %29, i32 0, i32 0, !dbg !3122
  store ptr %30, ptr %16, align 8, !dbg !3120
  call void @llvm.dbg.declare(metadata ptr %17, metadata !3123, metadata !DIExpression()), !dbg !3124
  store ptr null, ptr %17, align 8, !dbg !3124
  %31 = load i32, ptr @no_rtcp, align 4, !dbg !3125
  %32 = icmp ne i32 %31, 0, !dbg !3125
  br i1 %32, label %36, label %33, !dbg !3127

33:                                               ; preds = %27
  %34 = load ptr, ptr %14, align 8, !dbg !3128
  %35 = getelementptr inbounds %struct.app_ur_session, ptr %34, i32 0, i32 0, !dbg !3129
  store ptr %35, ptr %17, align 8, !dbg !3130
  br label %36, !dbg !3131

36:                                               ; preds = %33, %27
  call void @llvm.dbg.declare(metadata ptr %18, metadata !3132, metadata !DIExpression()), !dbg !3133
  store i16 0, ptr %18, align 2, !dbg !3133
  call void @llvm.dbg.declare(metadata ptr %19, metadata !3134, metadata !DIExpression()), !dbg !3135
  store i16 0, ptr %19, align 2, !dbg !3135
  %37 = load i32, ptr %8, align 4, !dbg !3136
  %38 = trunc i32 %37 to i16, !dbg !3136
  %39 = load ptr, ptr %7, align 8, !dbg !3137
  %40 = load ptr, ptr %9, align 8, !dbg !3138
  %41 = load ptr, ptr %10, align 8, !dbg !3139
  %42 = load i32, ptr @clnet_verbose, align 4, !dbg !3140
  %43 = load ptr, ptr %16, align 8, !dbg !3141
  %44 = load ptr, ptr %17, align 8, !dbg !3142
  %45 = call i32 @start_connection(i16 noundef zeroext %38, ptr noundef %39, ptr noundef %40, ptr noundef %41, i32 noundef %42, ptr noundef %15, ptr noundef %43, ptr noundef %18, ptr noundef %44, ptr noundef %19), !dbg !3143
  %46 = getelementptr inbounds %struct.app_ur_conn_info, ptr %15, i32 0, i32 8, !dbg !3144
  %47 = load ptr, ptr %46, align 8, !dbg !3144
  %48 = icmp ne ptr %47, null, !dbg !3146
  br i1 %48, label %49, label %53, !dbg !3147

49:                                               ; preds = %36
  %50 = getelementptr inbounds %struct.app_ur_conn_info, ptr %15, i32 0, i32 8, !dbg !3148
  %51 = load ptr, ptr %50, align 8, !dbg !3148
  call void @SSL_free(ptr noundef %51), !dbg !3150
  %52 = getelementptr inbounds %struct.app_ur_conn_info, ptr %15, i32 0, i32 7, !dbg !3151
  store i32 -1, ptr %52, align 8, !dbg !3152
  br label %63, !dbg !3153

53:                                               ; preds = %36
  %54 = getelementptr inbounds %struct.app_ur_conn_info, ptr %15, i32 0, i32 7, !dbg !3154
  %55 = load i32, ptr %54, align 8, !dbg !3154
  %56 = icmp ne i32 %55, -1, !dbg !3156
  br i1 %56, label %57, label %62, !dbg !3157

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.app_ur_conn_info, ptr %15, i32 0, i32 7, !dbg !3158
  %59 = load i32, ptr %58, align 8, !dbg !3158
  %60 = call i32 @close(i32 noundef %59), !dbg !3158
  %61 = getelementptr inbounds %struct.app_ur_conn_info, ptr %15, i32 0, i32 7, !dbg !3160
  store i32 -1, ptr %61, align 8, !dbg !3161
  br label %62, !dbg !3162

62:                                               ; preds = %57, %53
  br label %63

63:                                               ; preds = %62, %49
  %64 = load ptr, ptr %16, align 8, !dbg !3163
  %65 = getelementptr inbounds %struct.app_ur_conn_info, ptr %64, i32 0, i32 7, !dbg !3164
  %66 = load i32, ptr %65, align 8, !dbg !3164
  %67 = call i32 @socket_set_nonblocking(i32 noundef %66), !dbg !3165
  %68 = load i32, ptr @no_rtcp, align 4, !dbg !3166
  %69 = icmp ne i32 %68, 0, !dbg !3166
  br i1 %69, label %75, label %70, !dbg !3168

70:                                               ; preds = %63
  %71 = load ptr, ptr %17, align 8, !dbg !3169
  %72 = getelementptr inbounds %struct.app_ur_conn_info, ptr %71, i32 0, i32 7, !dbg !3170
  %73 = load i32, ptr %72, align 8, !dbg !3170
  %74 = call i32 @socket_set_nonblocking(i32 noundef %73), !dbg !3171
  br label %75, !dbg !3171

75:                                               ; preds = %70, %63
  call void @llvm.dbg.declare(metadata ptr %20, metadata !3172, metadata !DIExpression()), !dbg !3173
  %76 = load ptr, ptr @client_event_base, align 8, !dbg !3174
  %77 = load ptr, ptr %16, align 8, !dbg !3175
  %78 = getelementptr inbounds %struct.app_ur_conn_info, ptr %77, i32 0, i32 7, !dbg !3176
  %79 = load i32, ptr %78, align 8, !dbg !3176
  %80 = load ptr, ptr %13, align 8, !dbg !3177
  %81 = call ptr @event_new(ptr noundef %76, i32 noundef %79, i16 noundef signext 18, ptr noundef @client_input_handler, ptr noundef %80), !dbg !3178
  store ptr %81, ptr %20, align 8, !dbg !3173
  %82 = load ptr, ptr %20, align 8, !dbg !3179
  %83 = call i32 @event_add(ptr noundef %82, ptr noundef null), !dbg !3180
  call void @llvm.dbg.declare(metadata ptr %21, metadata !3181, metadata !DIExpression()), !dbg !3182
  store ptr null, ptr %21, align 8, !dbg !3182
  %84 = load i32, ptr @no_rtcp, align 4, !dbg !3183
  %85 = icmp ne i32 %84, 0, !dbg !3183
  br i1 %85, label %95, label %86, !dbg !3185

86:                                               ; preds = %75
  %87 = load ptr, ptr @client_event_base, align 8, !dbg !3186
  %88 = load ptr, ptr %17, align 8, !dbg !3188
  %89 = getelementptr inbounds %struct.app_ur_conn_info, ptr %88, i32 0, i32 7, !dbg !3189
  %90 = load i32, ptr %89, align 8, !dbg !3189
  %91 = load ptr, ptr %14, align 8, !dbg !3190
  %92 = call ptr @event_new(ptr noundef %87, i32 noundef %90, i16 noundef signext 18, ptr noundef @client_input_handler, ptr noundef %91), !dbg !3191
  store ptr %92, ptr %21, align 8, !dbg !3192
  %93 = load ptr, ptr %21, align 8, !dbg !3193
  %94 = call i32 @event_add(ptr noundef %93, ptr noundef null), !dbg !3194
  br label %95, !dbg !3195

95:                                               ; preds = %86, %75
  %96 = load ptr, ptr %13, align 8, !dbg !3196
  %97 = getelementptr inbounds %struct.app_ur_session, ptr %96, i32 0, i32 1, !dbg !3197
  store i32 1, ptr %97, align 8, !dbg !3198
  %98 = load ptr, ptr %20, align 8, !dbg !3199
  %99 = load ptr, ptr %13, align 8, !dbg !3200
  %100 = getelementptr inbounds %struct.app_ur_session, ptr %99, i32 0, i32 7, !dbg !3201
  store ptr %98, ptr %100, align 8, !dbg !3202
  %101 = load i32, ptr %11, align 4, !dbg !3203
  %102 = load ptr, ptr %13, align 8, !dbg !3204
  %103 = getelementptr inbounds %struct.app_ur_session, ptr %102, i32 0, i32 13, !dbg !3205
  store i32 %101, ptr %103, align 8, !dbg !3206
  %104 = load ptr, ptr %13, align 8, !dbg !3207
  %105 = getelementptr inbounds %struct.app_ur_session, ptr %104, i32 0, i32 16, !dbg !3208
  store i32 -1, ptr %105, align 4, !dbg !3209
  %106 = load i16, ptr %18, align 2, !dbg !3210
  %107 = load ptr, ptr %13, align 8, !dbg !3211
  %108 = getelementptr inbounds %struct.app_ur_session, ptr %107, i32 0, i32 3, !dbg !3212
  store i16 %106, ptr %108, align 8, !dbg !3213
  %109 = load i32, ptr @no_rtcp, align 4, !dbg !3214
  %110 = icmp ne i32 %109, 0, !dbg !3214
  br i1 %110, label %135, label %111, !dbg !3216

111:                                              ; preds = %95
  %112 = load ptr, ptr %14, align 8, !dbg !3217
  %113 = getelementptr inbounds %struct.app_ur_session, ptr %112, i32 0, i32 1, !dbg !3219
  store i32 1, ptr %113, align 8, !dbg !3220
  %114 = load ptr, ptr %21, align 8, !dbg !3221
  %115 = load ptr, ptr %14, align 8, !dbg !3222
  %116 = getelementptr inbounds %struct.app_ur_session, ptr %115, i32 0, i32 7, !dbg !3223
  store ptr %114, ptr %116, align 8, !dbg !3224
  %117 = load ptr, ptr %13, align 8, !dbg !3225
  %118 = getelementptr inbounds %struct.app_ur_session, ptr %117, i32 0, i32 13, !dbg !3226
  %119 = load i32, ptr %118, align 8, !dbg !3226
  %120 = load ptr, ptr %14, align 8, !dbg !3227
  %121 = getelementptr inbounds %struct.app_ur_session, ptr %120, i32 0, i32 13, !dbg !3228
  store i32 %119, ptr %121, align 8, !dbg !3229
  %122 = load ptr, ptr %14, align 8, !dbg !3230
  %123 = getelementptr inbounds %struct.app_ur_session, ptr %122, i32 0, i32 13, !dbg !3232
  %124 = load i32, ptr %123, align 8, !dbg !3232
  %125 = icmp slt i32 %124, 1, !dbg !3233
  br i1 %125, label %126, label %129, !dbg !3234

126:                                              ; preds = %111
  %127 = load ptr, ptr %14, align 8, !dbg !3235
  %128 = getelementptr inbounds %struct.app_ur_session, ptr %127, i32 0, i32 13, !dbg !3236
  store i32 1, ptr %128, align 8, !dbg !3237
  br label %129, !dbg !3235

129:                                              ; preds = %126, %111
  %130 = load ptr, ptr %14, align 8, !dbg !3238
  %131 = getelementptr inbounds %struct.app_ur_session, ptr %130, i32 0, i32 16, !dbg !3239
  store i32 -1, ptr %131, align 4, !dbg !3240
  %132 = load i16, ptr %19, align 2, !dbg !3241
  %133 = load ptr, ptr %14, align 8, !dbg !3242
  %134 = getelementptr inbounds %struct.app_ur_session, ptr %133, i32 0, i32 3, !dbg !3243
  store i16 %132, ptr %134, align 8, !dbg !3244
  br label %135, !dbg !3245

135:                                              ; preds = %129, %95
  %136 = load ptr, ptr %13, align 8, !dbg !3246
  %137 = load ptr, ptr @elems, align 8, !dbg !3247
  %138 = load i32, ptr %12, align 4, !dbg !3248
  %139 = sext i32 %138 to i64, !dbg !3247
  %140 = getelementptr inbounds ptr, ptr %137, i64 %139, !dbg !3247
  store ptr %136, ptr %140, align 8, !dbg !3249
  %141 = load ptr, ptr %13, align 8, !dbg !3250
  %142 = call i32 @refresh_channel(ptr noundef %141, i16 noundef zeroext 0, i32 noundef 600), !dbg !3251
  %143 = load i32, ptr @no_rtcp, align 4, !dbg !3252
  %144 = icmp ne i32 %143, 0, !dbg !3252
  br i1 %144, label %152, label %145, !dbg !3254

145:                                              ; preds = %135
  %146 = load ptr, ptr %14, align 8, !dbg !3255
  %147 = load ptr, ptr @elems, align 8, !dbg !3256
  %148 = load i32, ptr %12, align 4, !dbg !3257
  %149 = add nsw i32 %148, 1, !dbg !3258
  %150 = sext i32 %149 to i64, !dbg !3256
  %151 = getelementptr inbounds ptr, ptr %147, i64 %150, !dbg !3256
  store ptr %146, ptr %151, align 8, !dbg !3259
  br label %152, !dbg !3256

152:                                              ; preds = %145, %135
  ret i32 0, !dbg !3260
}

; Function Attrs: noreturn
declare void @_exit(i32 noundef) #9

declare ptr @event_new(ptr noundef, i32 noundef, i16 noundef signext, ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timer_handler(i32 noundef %0, i16 noundef signext %1, ptr noundef %2) #0 !dbg !3261 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3262, metadata !DIExpression()), !dbg !3263
  store i16 %1, ptr %5, align 2
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3264, metadata !DIExpression()), !dbg !3265
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3266, metadata !DIExpression()), !dbg !3267
  br label %10, !dbg !3268

10:                                               ; preds = %3
  %11 = load i32, ptr %4, align 4, !dbg !3269
  store i32 %11, ptr %4, align 4, !dbg !3269
  br label %12, !dbg !3269

12:                                               ; preds = %10
  br label %13, !dbg !3271

13:                                               ; preds = %12
  %14 = load i16, ptr %5, align 2, !dbg !3272
  store i16 %14, ptr %5, align 2, !dbg !3272
  br label %15, !dbg !3272

15:                                               ; preds = %13
  br label %16, !dbg !3274

16:                                               ; preds = %15
  %17 = load ptr, ptr %6, align 8, !dbg !3275
  store ptr %17, ptr %6, align 8, !dbg !3275
  br label %18, !dbg !3275

18:                                               ; preds = %16
  call void @__turn_getMSTime(), !dbg !3277
  %19 = load i32, ptr @start_full_timer, align 4, !dbg !3278
  %20 = icmp ne i32 %19, 0, !dbg !3278
  br i1 %20, label %21, label %96, !dbg !3280

21:                                               ; preds = %18
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3281, metadata !DIExpression()), !dbg !3283
  store i32 0, ptr %7, align 4, !dbg !3283
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3284, metadata !DIExpression()), !dbg !3285
  store i32 0, ptr %8, align 4, !dbg !3285
  store i32 0, ptr %7, align 4, !dbg !3286
  br label %22, !dbg !3288

22:                                               ; preds = %49, %21
  %23 = load i32, ptr %7, align 4, !dbg !3289
  %24 = load i32, ptr @total_clients, align 4, !dbg !3291
  %25 = icmp slt i32 %23, %24, !dbg !3292
  br i1 %25, label %26, label %52, !dbg !3293

26:                                               ; preds = %22
  %27 = load ptr, ptr @elems, align 8, !dbg !3294
  %28 = load i32, ptr %7, align 4, !dbg !3297
  %29 = sext i32 %28 to i64, !dbg !3294
  %30 = getelementptr inbounds ptr, ptr %27, i64 %29, !dbg !3294
  %31 = load ptr, ptr %30, align 8, !dbg !3294
  %32 = icmp ne ptr %31, null, !dbg !3294
  br i1 %32, label %33, label %48, !dbg !3298

33:                                               ; preds = %26
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3299, metadata !DIExpression()), !dbg !3301
  %34 = load ptr, ptr @elems, align 8, !dbg !3302
  %35 = load i32, ptr %7, align 4, !dbg !3303
  %36 = sext i32 %35 to i64, !dbg !3302
  %37 = getelementptr inbounds ptr, ptr %34, i64 %36, !dbg !3302
  %38 = load ptr, ptr %37, align 8, !dbg !3302
  %39 = call i32 @client_timer_handler(ptr noundef %38, ptr noundef %8), !dbg !3304
  store i32 %39, ptr %9, align 4, !dbg !3301
  %40 = load i32, ptr %9, align 4, !dbg !3305
  %41 = icmp ne i32 %40, 0, !dbg !3305
  br i1 %41, label %42, label %47, !dbg !3307

42:                                               ; preds = %33
  %43 = load ptr, ptr @elems, align 8, !dbg !3308
  %44 = load i32, ptr %7, align 4, !dbg !3310
  %45 = sext i32 %44 to i64, !dbg !3308
  %46 = getelementptr inbounds ptr, ptr %43, i64 %45, !dbg !3308
  store ptr null, ptr %46, align 8, !dbg !3311
  br label %47, !dbg !3312

47:                                               ; preds = %42, %33
  br label %48, !dbg !3313

48:                                               ; preds = %47, %26
  br label %49, !dbg !3314

49:                                               ; preds = %48
  %50 = load i32, ptr %7, align 4, !dbg !3315
  %51 = add nsw i32 %50, 1, !dbg !3315
  store i32 %51, ptr %7, align 4, !dbg !3315
  br label %22, !dbg !3316, !llvm.loop !3317

52:                                               ; preds = %22
  %53 = load i32, ptr %8, align 4, !dbg !3319
  %54 = icmp sgt i32 %53, 5, !dbg !3321
  br i1 %54, label %55, label %95, !dbg !3322

55:                                               ; preds = %52
  %56 = load i32, ptr @dos, align 4, !dbg !3323
  %57 = icmp ne i32 %56, 0, !dbg !3323
  br i1 %57, label %61, label %58, !dbg !3324

58:                                               ; preds = %55
  %59 = load i32, ptr @random_disconnect, align 4, !dbg !3325
  %60 = icmp ne i32 %59, 0, !dbg !3325
  br i1 %60, label %61, label %95, !dbg !3326

61:                                               ; preds = %58, %55
  store i32 0, ptr %7, align 4, !dbg !3327
  br label %62, !dbg !3330

62:                                               ; preds = %91, %61
  %63 = load i32, ptr %7, align 4, !dbg !3331
  %64 = load i32, ptr @total_clients, align 4, !dbg !3333
  %65 = icmp slt i32 %63, %64, !dbg !3334
  br i1 %65, label %66, label %94, !dbg !3335

66:                                               ; preds = %62
  %67 = load ptr, ptr @elems, align 8, !dbg !3336
  %68 = load i32, ptr %7, align 4, !dbg !3339
  %69 = sext i32 %68 to i64, !dbg !3336
  %70 = getelementptr inbounds ptr, ptr %67, i64 %69, !dbg !3336
  %71 = load ptr, ptr %70, align 8, !dbg !3336
  %72 = icmp ne ptr %71, null, !dbg !3336
  br i1 %72, label %73, label %90, !dbg !3340

73:                                               ; preds = %66
  %74 = load ptr, ptr @elems, align 8, !dbg !3341
  %75 = load i32, ptr %7, align 4, !dbg !3343
  %76 = sext i32 %75 to i64, !dbg !3341
  %77 = getelementptr inbounds ptr, ptr %74, i64 %76, !dbg !3341
  %78 = load ptr, ptr %77, align 8, !dbg !3341
  %79 = getelementptr inbounds %struct.app_ur_session, ptr %78, i32 0, i32 0, !dbg !3344
  %80 = getelementptr inbounds %struct.app_ur_conn_info, ptr %79, i32 0, i32 7, !dbg !3345
  %81 = load i32, ptr %80, align 8, !dbg !3345
  %82 = call i32 @close(i32 noundef %81), !dbg !3346
  %83 = load ptr, ptr @elems, align 8, !dbg !3347
  %84 = load i32, ptr %7, align 4, !dbg !3348
  %85 = sext i32 %84 to i64, !dbg !3347
  %86 = getelementptr inbounds ptr, ptr %83, i64 %85, !dbg !3347
  %87 = load ptr, ptr %86, align 8, !dbg !3347
  %88 = getelementptr inbounds %struct.app_ur_session, ptr %87, i32 0, i32 0, !dbg !3349
  %89 = getelementptr inbounds %struct.app_ur_conn_info, ptr %88, i32 0, i32 7, !dbg !3350
  store i32 -1, ptr %89, align 8, !dbg !3351
  br label %90, !dbg !3352

90:                                               ; preds = %73, %66
  br label %91, !dbg !3353

91:                                               ; preds = %90
  %92 = load i32, ptr %7, align 4, !dbg !3354
  %93 = add nsw i32 %92, 1, !dbg !3354
  store i32 %93, ptr %7, align 4, !dbg !3354
  br label %62, !dbg !3355, !llvm.loop !3356

94:                                               ; preds = %62
  br label %95, !dbg !3358

95:                                               ; preds = %94, %58, %52
  br label %96, !dbg !3359

96:                                               ; preds = %95, %18
  ret void, !dbg !3360
}

declare i32 @event_add(ptr noundef, ptr noundef) #3

declare i32 @socket_connect(i32 noundef, ptr noundef, ptr noundef) #3

declare i32 @turn_tcp_connect(i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_events(i32 noundef %0) #0 !dbg !3361 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.timeval, align 8
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3364, metadata !DIExpression()), !dbg !3365
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3366, metadata !DIExpression()), !dbg !3367
  %4 = load i32, ptr %2, align 4, !dbg !3368
  %5 = icmp ne i32 %4, 0, !dbg !3368
  br i1 %5, label %9, label %6, !dbg !3370

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.timeval, ptr %3, i32 0, i32 0, !dbg !3371
  store i64 1, ptr %7, align 8, !dbg !3373
  %8 = getelementptr inbounds %struct.timeval, ptr %3, i32 0, i32 1, !dbg !3374
  store i64 0, ptr %8, align 8, !dbg !3375
  br label %12, !dbg !3376

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.timeval, ptr %3, i32 0, i32 0, !dbg !3377
  store i64 0, ptr %10, align 8, !dbg !3379
  %11 = getelementptr inbounds %struct.timeval, ptr %3, i32 0, i32 1, !dbg !3380
  store i64 100000, ptr %11, align 8, !dbg !3381
  br label %12

12:                                               ; preds = %9, %6
  %13 = load ptr, ptr @client_event_base, align 8, !dbg !3382
  %14 = call i32 @event_base_loopexit(ptr noundef %13, ptr noundef %3), !dbg !3383
  %15 = load ptr, ptr @client_event_base, align 8, !dbg !3384
  %16 = call i32 @event_base_dispatch(ptr noundef %15), !dbg !3385
  ret void, !dbg !3386
}

declare void @event_base_free(ptr noundef) #3

; Function Attrs: nounwind
declare void @free(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_turn_credentials_type() #0 !dbg !3387 {
  ret i32 1, !dbg !3391
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add_integrity(ptr noundef %0, ptr noundef %1) #0 !dbg !3392 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca %struct._oauth_token, align 8
  %9 = alloca %struct._encoded_oauth_token, align 8
  %10 = alloca [12 x i8], align 1
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca [257 x i8], align 16
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3395, metadata !DIExpression()), !dbg !3396
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3397, metadata !DIExpression()), !dbg !3398
  %14 = load ptr, ptr %4, align 8, !dbg !3399
  %15 = getelementptr inbounds %struct.app_ur_conn_info, ptr %14, i32 0, i32 10, !dbg !3401
  %16 = getelementptr inbounds [128 x i8], ptr %15, i64 0, i64 0, !dbg !3399
  %17 = load i8, ptr %16, align 4, !dbg !3399
  %18 = icmp ne i8 %17, 0, !dbg !3399
  br i1 %18, label %19, label %212, !dbg !3402

19:                                               ; preds = %2
  %20 = load i32, ptr @oauth, align 4, !dbg !3403
  %21 = icmp ne i32 %20, 0, !dbg !3403
  br i1 %21, label %22, label %194, !dbg !3406

22:                                               ; preds = %19
  %23 = load ptr, ptr %4, align 8, !dbg !3407
  %24 = getelementptr inbounds %struct.app_ur_conn_info, ptr %23, i32 0, i32 12, !dbg !3408
  %25 = load i32, ptr %24, align 4, !dbg !3408
  %26 = icmp ne i32 %25, 0, !dbg !3407
  br i1 %26, label %27, label %194, !dbg !3409

27:                                               ; preds = %22
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3410, metadata !DIExpression()), !dbg !3412
  %28 = load ptr, ptr %5, align 8, !dbg !3413
  %29 = getelementptr inbounds %struct._stun_buffer, ptr %28, i32 0, i32 1, !dbg !3414
  %30 = getelementptr inbounds [65507 x i8], ptr %29, i64 0, i64 0, !dbg !3413
  %31 = load ptr, ptr %5, align 8, !dbg !3415
  %32 = getelementptr inbounds %struct._stun_buffer, ptr %31, i32 0, i32 2, !dbg !3416
  %33 = load i64, ptr %32, align 8, !dbg !3416
  %34 = call zeroext i16 @stun_get_method_str(ptr noundef %30, i64 noundef %33), !dbg !3417
  store i16 %34, ptr %6, align 2, !dbg !3412
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3418, metadata !DIExpression()), !dbg !3419
  %35 = load ptr, ptr %4, align 8, !dbg !3420
  %36 = getelementptr inbounds %struct.app_ur_conn_info, ptr %35, i32 0, i32 16, !dbg !3421
  %37 = load i32, ptr %36, align 8, !dbg !3421
  store i32 %37, ptr %7, align 4, !dbg !3419
  %38 = load i16, ptr %6, align 2, !dbg !3422
  %39 = zext i16 %38 to i32, !dbg !3422
  %40 = icmp eq i32 %39, 3, !dbg !3424
  br i1 %40, label %50, label %41, !dbg !3425

41:                                               ; preds = %27
  %42 = load i16, ptr %6, align 2, !dbg !3426
  %43 = zext i16 %42 to i32, !dbg !3426
  %44 = icmp eq i32 %43, 4, !dbg !3427
  br i1 %44, label %50, label %45, !dbg !3428

45:                                               ; preds = %41
  %46 = load ptr, ptr %4, align 8, !dbg !3429
  %47 = getelementptr inbounds %struct.app_ur_conn_info, ptr %46, i32 0, i32 15, !dbg !3430
  %48 = load i32, ptr %47, align 4, !dbg !3430
  %49 = icmp ne i32 %48, 0, !dbg !3431
  br i1 %49, label %153, label %50, !dbg !3432

50:                                               ; preds = %45, %41, %27
  %51 = call i64 @random() #11, !dbg !3433
  %52 = trunc i64 %51 to i16, !dbg !3435
  %53 = zext i16 %52 to i32, !dbg !3436
  %54 = srem i32 %53, 3, !dbg !3437
  store i32 %54, ptr %7, align 4, !dbg !3438
  %55 = load i32, ptr %7, align 4, !dbg !3439
  %56 = load ptr, ptr %4, align 8, !dbg !3440
  %57 = getelementptr inbounds %struct.app_ur_conn_info, ptr %56, i32 0, i32 16, !dbg !3441
  store i32 %55, ptr %57, align 8, !dbg !3442
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3443, metadata !DIExpression()), !dbg !3460
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3461, metadata !DIExpression()), !dbg !3467
  call void @llvm.dbg.declare(metadata ptr %10, metadata !3468, metadata !DIExpression()), !dbg !3469
  %58 = getelementptr inbounds [12 x i8], ptr %10, i64 0, i64 0, !dbg !3470
  %59 = call i32 @RAND_bytes(ptr noundef %58, i32 noundef 12), !dbg !3471
  call void @llvm.dbg.declare(metadata ptr %11, metadata !3472, metadata !DIExpression()), !dbg !3473
  store i64 277, ptr %11, align 8, !dbg !3473
  call void @llvm.dbg.declare(metadata ptr %12, metadata !3474, metadata !DIExpression()), !dbg !3475
  store i64 0, ptr %12, align 8, !dbg !3475
  br label %60, !dbg !3476

60:                                               ; preds = %64, %50
  %61 = load i64, ptr %12, align 8, !dbg !3477
  %62 = icmp ne i64 %61, 0, !dbg !3478
  %63 = xor i1 %62, true, !dbg !3478
  br i1 %63, label %64, label %66, !dbg !3476

64:                                               ; preds = %60
  %65 = call i64 @random() #11, !dbg !3479
  store i64 %65, ptr %12, align 8, !dbg !3481
  br label %60, !dbg !3476, !llvm.loop !3482

66:                                               ; preds = %60
  %67 = load i64, ptr %12, align 8, !dbg !3484
  %68 = icmp slt i64 %67, 0, !dbg !3486
  br i1 %68, label %69, label %72, !dbg !3487

69:                                               ; preds = %66
  %70 = load i64, ptr %12, align 8, !dbg !3488
  %71 = sub nsw i64 0, %70, !dbg !3489
  store i64 %71, ptr %12, align 8, !dbg !3490
  br label %72, !dbg !3491

72:                                               ; preds = %69, %66
  %73 = load i64, ptr %12, align 8, !dbg !3492
  %74 = load i64, ptr %11, align 8, !dbg !3493
  %75 = srem i64 %73, %74, !dbg !3494
  store i64 %75, ptr %12, align 8, !dbg !3495
  %76 = load i64, ptr %11, align 8, !dbg !3496
  %77 = load i64, ptr %12, align 8, !dbg !3497
  %78 = add nsw i64 %76, %77, !dbg !3498
  %79 = trunc i64 %78 to i32, !dbg !3499
  %80 = getelementptr inbounds %struct._oauth_token, ptr %8, i32 0, i32 0, !dbg !3500
  %81 = getelementptr inbounds %struct._oauth_encrypted_block, ptr %80, i32 0, i32 5, !dbg !3501
  store i32 %79, ptr %81, align 8, !dbg !3502
  %82 = call i64 @time(ptr noundef null) #11, !dbg !3503
  %83 = trunc i64 %82 to i32, !dbg !3503
  %84 = zext i32 %83 to i64, !dbg !3504
  %85 = shl i64 %84, 16, !dbg !3505
  %86 = getelementptr inbounds %struct._oauth_token, ptr %8, i32 0, i32 0, !dbg !3506
  %87 = getelementptr inbounds %struct._oauth_encrypted_block, ptr %86, i32 0, i32 4, !dbg !3507
  store i64 %85, ptr %87, align 8, !dbg !3508
  %88 = load i32, ptr @shatype, align 4, !dbg !3509
  %89 = icmp eq i32 %88, 1, !dbg !3511
  br i1 %89, label %90, label %93, !dbg !3512

90:                                               ; preds = %72
  %91 = getelementptr inbounds %struct._oauth_token, ptr %8, i32 0, i32 0, !dbg !3513
  %92 = getelementptr inbounds %struct._oauth_encrypted_block, ptr %91, i32 0, i32 2, !dbg !3515
  store i16 32, ptr %92, align 2, !dbg !3516
  br label %110, !dbg !3517

93:                                               ; preds = %72
  %94 = load i32, ptr @shatype, align 4, !dbg !3518
  %95 = icmp eq i32 %94, 2, !dbg !3520
  br i1 %95, label %96, label %99, !dbg !3521

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct._oauth_token, ptr %8, i32 0, i32 0, !dbg !3522
  %98 = getelementptr inbounds %struct._oauth_encrypted_block, ptr %97, i32 0, i32 2, !dbg !3524
  store i16 48, ptr %98, align 2, !dbg !3525
  br label %109, !dbg !3526

99:                                               ; preds = %93
  %100 = load i32, ptr @shatype, align 4, !dbg !3527
  %101 = icmp eq i32 %100, 3, !dbg !3529
  br i1 %101, label %102, label %105, !dbg !3530

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct._oauth_token, ptr %8, i32 0, i32 0, !dbg !3531
  %104 = getelementptr inbounds %struct._oauth_encrypted_block, ptr %103, i32 0, i32 2, !dbg !3533
  store i16 64, ptr %104, align 2, !dbg !3534
  br label %108, !dbg !3535

105:                                              ; preds = %99
  %106 = getelementptr inbounds %struct._oauth_token, ptr %8, i32 0, i32 0, !dbg !3536
  %107 = getelementptr inbounds %struct._oauth_encrypted_block, ptr %106, i32 0, i32 2, !dbg !3538
  store i16 20, ptr %107, align 2, !dbg !3539
  br label %108

108:                                              ; preds = %105, %102
  br label %109

109:                                              ; preds = %108, %96
  br label %110

110:                                              ; preds = %109, %90
  %111 = getelementptr inbounds %struct._oauth_token, ptr %8, i32 0, i32 0, !dbg !3540
  %112 = getelementptr inbounds %struct._oauth_encrypted_block, ptr %111, i32 0, i32 3, !dbg !3541
  %113 = getelementptr inbounds [128 x i8], ptr %112, i64 0, i64 0, !dbg !3542
  %114 = getelementptr inbounds %struct._oauth_token, ptr %8, i32 0, i32 0, !dbg !3543
  %115 = getelementptr inbounds %struct._oauth_encrypted_block, ptr %114, i32 0, i32 2, !dbg !3544
  %116 = load i16, ptr %115, align 2, !dbg !3544
  %117 = zext i16 %116 to i32, !dbg !3545
  %118 = call i32 @RAND_bytes(ptr noundef %113, i32 noundef %117), !dbg !3546
  %119 = load ptr, ptr %4, align 8, !dbg !3547
  %120 = getelementptr inbounds %struct.app_ur_conn_info, ptr %119, i32 0, i32 13, !dbg !3549
  %121 = getelementptr inbounds [1026 x i8], ptr %120, i64 0, i64 0, !dbg !3547
  %122 = load i32, ptr %7, align 4, !dbg !3550
  %123 = sext i32 %122 to i64, !dbg !3551
  %124 = getelementptr inbounds [3 x %struct._oauth_key], ptr @okey_array, i64 0, i64 %123, !dbg !3551
  %125 = getelementptr inbounds [12 x i8], ptr %10, i64 0, i64 0, !dbg !3552
  %126 = call i32 @encode_oauth_token(ptr noundef %121, ptr noundef %9, ptr noundef %124, ptr noundef %8, ptr noundef %125), !dbg !3553
  %127 = icmp slt i32 %126, 0, !dbg !3554
  br i1 %127, label %128, label %129, !dbg !3555

128:                                              ; preds = %110
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.21), !dbg !3556
  store i32 -1, ptr %3, align 4, !dbg !3558
  br label %213, !dbg !3558

129:                                              ; preds = %110
  %130 = load ptr, ptr %5, align 8, !dbg !3559
  %131 = getelementptr inbounds %struct._stun_buffer, ptr %130, i32 0, i32 1, !dbg !3560
  %132 = getelementptr inbounds [65507 x i8], ptr %131, i64 0, i64 0, !dbg !3559
  %133 = load ptr, ptr %5, align 8, !dbg !3561
  %134 = getelementptr inbounds %struct._stun_buffer, ptr %133, i32 0, i32 2, !dbg !3562
  %135 = getelementptr inbounds %struct._encoded_oauth_token, ptr %9, i32 0, i32 0, !dbg !3563
  %136 = getelementptr inbounds [1024 x i8], ptr %135, i64 0, i64 0, !dbg !3564
  %137 = getelementptr inbounds %struct._encoded_oauth_token, ptr %9, i32 0, i32 1, !dbg !3565
  %138 = load i64, ptr %137, align 8, !dbg !3565
  %139 = trunc i64 %138 to i32, !dbg !3566
  %140 = call i32 @stun_attr_add_str(ptr noundef %132, ptr noundef %134, i16 noundef zeroext 27, ptr noundef %136, i32 noundef %139), !dbg !3567
  %141 = getelementptr inbounds %struct._oauth_token, ptr %8, i32 0, i32 0, !dbg !3568
  %142 = getelementptr inbounds %struct._oauth_encrypted_block, ptr %141, i32 0, i32 3, !dbg !3569
  %143 = getelementptr inbounds [128 x i8], ptr %142, i64 0, i64 0, !dbg !3570
  %144 = load ptr, ptr %4, align 8, !dbg !3571
  %145 = getelementptr inbounds %struct.app_ur_conn_info, ptr %144, i32 0, i32 14, !dbg !3572
  %146 = getelementptr inbounds [64 x i8], ptr %145, i64 0, i64 0, !dbg !3571
  %147 = getelementptr inbounds %struct._oauth_token, ptr %8, i32 0, i32 0, !dbg !3573
  %148 = getelementptr inbounds %struct._oauth_encrypted_block, ptr %147, i32 0, i32 2, !dbg !3574
  %149 = load i16, ptr %148, align 2, !dbg !3574
  %150 = zext i16 %149 to i64, !dbg !3575
  call void @bcopy(ptr noundef %143, ptr noundef %146, i64 noundef %150) #11, !dbg !3576
  %151 = load ptr, ptr %4, align 8, !dbg !3577
  %152 = getelementptr inbounds %struct.app_ur_conn_info, ptr %151, i32 0, i32 15, !dbg !3578
  store i32 1, ptr %152, align 4, !dbg !3579
  br label %153, !dbg !3580

153:                                              ; preds = %129, %45
  %154 = load ptr, ptr %5, align 8, !dbg !3581
  %155 = getelementptr inbounds %struct._stun_buffer, ptr %154, i32 0, i32 1, !dbg !3583
  %156 = getelementptr inbounds [65507 x i8], ptr %155, i64 0, i64 0, !dbg !3581
  %157 = load ptr, ptr %5, align 8, !dbg !3584
  %158 = getelementptr inbounds %struct._stun_buffer, ptr %157, i32 0, i32 2, !dbg !3585
  %159 = load i32, ptr %7, align 4, !dbg !3586
  %160 = sext i32 %159 to i64, !dbg !3587
  %161 = getelementptr inbounds [3 x %struct._oauth_key], ptr @okey_array, i64 0, i64 %160, !dbg !3587
  %162 = getelementptr inbounds %struct._oauth_key, ptr %161, i32 0, i32 0, !dbg !3588
  %163 = getelementptr inbounds [129 x i8], ptr %162, i64 0, i64 0, !dbg !3587
  %164 = load ptr, ptr %4, align 8, !dbg !3589
  %165 = getelementptr inbounds %struct.app_ur_conn_info, ptr %164, i32 0, i32 11, !dbg !3590
  %166 = getelementptr inbounds [128 x i8], ptr %165, i64 0, i64 0, !dbg !3589
  %167 = load ptr, ptr %4, align 8, !dbg !3591
  %168 = getelementptr inbounds %struct.app_ur_conn_info, ptr %167, i32 0, i32 14, !dbg !3592
  %169 = getelementptr inbounds [64 x i8], ptr %168, i64 0, i64 0, !dbg !3591
  %170 = load ptr, ptr %4, align 8, !dbg !3593
  %171 = getelementptr inbounds %struct.app_ur_conn_info, ptr %170, i32 0, i32 10, !dbg !3594
  %172 = getelementptr inbounds [128 x i8], ptr %171, i64 0, i64 0, !dbg !3593
  %173 = load i32, ptr @shatype, align 4, !dbg !3595
  %174 = call i32 @stun_attr_add_integrity_by_key_str(ptr noundef %156, ptr noundef %158, ptr noundef %163, ptr noundef %166, ptr noundef %169, ptr noundef %172, i32 noundef %173), !dbg !3596
  %175 = icmp slt i32 %174, 0, !dbg !3597
  br i1 %175, label %176, label %177, !dbg !3598

176:                                              ; preds = %153
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.22), !dbg !3599
  store i32 -1, ptr %3, align 4, !dbg !3601
  br label %213, !dbg !3601

177:                                              ; preds = %153
  call void @llvm.dbg.declare(metadata ptr %13, metadata !3602, metadata !DIExpression()), !dbg !3608
  %178 = call i32 @get_turn_credentials_type(), !dbg !3609
  %179 = load ptr, ptr %5, align 8, !dbg !3611
  %180 = getelementptr inbounds %struct._stun_buffer, ptr %179, i32 0, i32 1, !dbg !3612
  %181 = getelementptr inbounds [65507 x i8], ptr %180, i64 0, i64 0, !dbg !3611
  %182 = load ptr, ptr %5, align 8, !dbg !3613
  %183 = getelementptr inbounds %struct._stun_buffer, ptr %182, i32 0, i32 2, !dbg !3614
  %184 = load i64, ptr %183, align 8, !dbg !3614
  %185 = load ptr, ptr %4, align 8, !dbg !3615
  %186 = getelementptr inbounds %struct.app_ur_conn_info, ptr %185, i32 0, i32 14, !dbg !3616
  %187 = getelementptr inbounds [64 x i8], ptr %186, i64 0, i64 0, !dbg !3615
  %188 = getelementptr inbounds [257 x i8], ptr %13, i64 0, i64 0, !dbg !3617
  %189 = load i32, ptr @shatype, align 4, !dbg !3618
  %190 = call i32 @stun_check_message_integrity_by_key_str(i32 noundef %178, ptr noundef %181, i64 noundef %184, ptr noundef %187, ptr noundef %188, i32 noundef %189), !dbg !3619
  %191 = icmp slt i32 %190, 1, !dbg !3620
  br i1 %191, label %192, label %193, !dbg !3621

192:                                              ; preds = %177
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.23), !dbg !3622
  store i32 -1, ptr %3, align 4, !dbg !3624
  br label %213, !dbg !3624

193:                                              ; preds = %177
  br label %211, !dbg !3625

194:                                              ; preds = %22, %19
  %195 = load ptr, ptr %5, align 8, !dbg !3626
  %196 = getelementptr inbounds %struct._stun_buffer, ptr %195, i32 0, i32 1, !dbg !3629
  %197 = getelementptr inbounds [65507 x i8], ptr %196, i64 0, i64 0, !dbg !3626
  %198 = load ptr, ptr %5, align 8, !dbg !3630
  %199 = getelementptr inbounds %struct._stun_buffer, ptr %198, i32 0, i32 2, !dbg !3631
  %200 = load ptr, ptr %4, align 8, !dbg !3632
  %201 = getelementptr inbounds %struct.app_ur_conn_info, ptr %200, i32 0, i32 11, !dbg !3633
  %202 = getelementptr inbounds [128 x i8], ptr %201, i64 0, i64 0, !dbg !3632
  %203 = load ptr, ptr %4, align 8, !dbg !3634
  %204 = getelementptr inbounds %struct.app_ur_conn_info, ptr %203, i32 0, i32 10, !dbg !3635
  %205 = getelementptr inbounds [128 x i8], ptr %204, i64 0, i64 0, !dbg !3634
  %206 = load i32, ptr @shatype, align 4, !dbg !3636
  %207 = call i32 @stun_attr_add_integrity_by_user_str(ptr noundef %197, ptr noundef %199, ptr noundef @g_uname, ptr noundef %202, ptr noundef @g_upwd, ptr noundef %205, i32 noundef %206), !dbg !3637
  %208 = icmp slt i32 %207, 0, !dbg !3638
  br i1 %208, label %209, label %210, !dbg !3639

209:                                              ; preds = %194
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.22), !dbg !3640
  store i32 -1, ptr %3, align 4, !dbg !3642
  br label %213, !dbg !3642

210:                                              ; preds = %194
  br label %211

211:                                              ; preds = %210, %193
  br label %212, !dbg !3643

212:                                              ; preds = %211, %2
  store i32 0, ptr %3, align 4, !dbg !3644
  br label %213, !dbg !3644

213:                                              ; preds = %212, %209, %192, %176, %128
  %214 = load i32, ptr %3, align 4, !dbg !3645
  ret i32 %214, !dbg !3645
}

declare zeroext i16 @stun_get_method_str(ptr noundef, i64 noundef) #3

declare i32 @RAND_bytes(ptr noundef, i32 noundef) #3

; Function Attrs: nounwind
declare i64 @time(ptr noundef) #2

declare i32 @encode_oauth_token(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

declare i32 @stun_attr_add_str(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind
declare void @bcopy(ptr noundef, ptr noundef, i64 noundef) #2

declare i32 @stun_attr_add_integrity_by_key_str(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

declare i32 @stun_check_message_integrity_by_key_str(i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) #3

declare i32 @stun_attr_add_integrity_by_user_str(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_integrity(ptr noundef %0, ptr noundef %1) #0 !dbg !3646 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca [257 x i8], align 16
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3647, metadata !DIExpression()), !dbg !3648
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3649, metadata !DIExpression()), !dbg !3650
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3651, metadata !DIExpression()), !dbg !3653
  %8 = load i32, ptr @shatype, align 4, !dbg !3654
  store i32 %8, ptr %6, align 4, !dbg !3653
  %9 = load i32, ptr @oauth, align 4, !dbg !3655
  %10 = icmp ne i32 %9, 0, !dbg !3655
  br i1 %10, label %11, label %30, !dbg !3657

11:                                               ; preds = %2
  %12 = load ptr, ptr %4, align 8, !dbg !3658
  %13 = getelementptr inbounds %struct.app_ur_conn_info, ptr %12, i32 0, i32 12, !dbg !3659
  %14 = load i32, ptr %13, align 4, !dbg !3659
  %15 = icmp ne i32 %14, 0, !dbg !3658
  br i1 %15, label %16, label %30, !dbg !3660

16:                                               ; preds = %11
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3661, metadata !DIExpression()), !dbg !3663
  %17 = call i32 @get_turn_credentials_type(), !dbg !3664
  %18 = load ptr, ptr %5, align 8, !dbg !3665
  %19 = getelementptr inbounds %struct._stun_buffer, ptr %18, i32 0, i32 1, !dbg !3666
  %20 = getelementptr inbounds [65507 x i8], ptr %19, i64 0, i64 0, !dbg !3665
  %21 = load ptr, ptr %5, align 8, !dbg !3667
  %22 = getelementptr inbounds %struct._stun_buffer, ptr %21, i32 0, i32 2, !dbg !3668
  %23 = load i64, ptr %22, align 8, !dbg !3668
  %24 = load ptr, ptr %4, align 8, !dbg !3669
  %25 = getelementptr inbounds %struct.app_ur_conn_info, ptr %24, i32 0, i32 14, !dbg !3670
  %26 = getelementptr inbounds [64 x i8], ptr %25, i64 0, i64 0, !dbg !3669
  %27 = getelementptr inbounds [257 x i8], ptr %7, i64 0, i64 0, !dbg !3671
  %28 = load i32, ptr %6, align 4, !dbg !3672
  %29 = call i32 @stun_check_message_integrity_by_key_str(i32 noundef %17, ptr noundef %20, i64 noundef %23, ptr noundef %26, ptr noundef %27, i32 noundef %28), !dbg !3673
  store i32 %29, ptr %3, align 4, !dbg !3674
  br label %47, !dbg !3674

30:                                               ; preds = %11, %2
  %31 = call i32 @get_turn_credentials_type(), !dbg !3675
  %32 = load ptr, ptr %5, align 8, !dbg !3678
  %33 = getelementptr inbounds %struct._stun_buffer, ptr %32, i32 0, i32 1, !dbg !3679
  %34 = getelementptr inbounds [65507 x i8], ptr %33, i64 0, i64 0, !dbg !3678
  %35 = load ptr, ptr %5, align 8, !dbg !3680
  %36 = getelementptr inbounds %struct._stun_buffer, ptr %35, i32 0, i32 2, !dbg !3681
  %37 = load i64, ptr %36, align 8, !dbg !3681
  %38 = load ptr, ptr %4, align 8, !dbg !3682
  %39 = getelementptr inbounds %struct.app_ur_conn_info, ptr %38, i32 0, i32 11, !dbg !3683
  %40 = getelementptr inbounds [128 x i8], ptr %39, i64 0, i64 0, !dbg !3682
  %41 = load i32, ptr %6, align 4, !dbg !3684
  %42 = call i32 @stun_check_message_integrity_str(i32 noundef %31, ptr noundef %34, i64 noundef %37, ptr noundef @g_uname, ptr noundef %40, ptr noundef @g_upwd, i32 noundef %41), !dbg !3685
  %43 = icmp slt i32 %42, 1, !dbg !3686
  br i1 %43, label %44, label %45, !dbg !3687

44:                                               ; preds = %30
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.24), !dbg !3688
  store i32 -1, ptr %3, align 4, !dbg !3690
  br label %47, !dbg !3690

45:                                               ; preds = %30
  br label %46

46:                                               ; preds = %45
  store i32 0, ptr %3, align 4, !dbg !3691
  br label %47, !dbg !3691

47:                                               ; preds = %46, %44, %16
  %48 = load i32, ptr %3, align 4, !dbg !3692
  ret i32 %48, !dbg !3692
}

declare i32 @stun_check_message_integrity_str(i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_socket_type() #0 !dbg !3693 {
  %1 = alloca i32, align 4
  %2 = load i32, ptr @use_sctp, align 4, !dbg !3697
  %3 = icmp ne i32 %2, 0, !dbg !3697
  br i1 %3, label %4, label %9, !dbg !3699

4:                                                ; preds = %0
  %5 = load i32, ptr @use_secure, align 4, !dbg !3700
  %6 = icmp ne i32 %5, 0, !dbg !3700
  br i1 %6, label %7, label %8, !dbg !3703

7:                                                ; preds = %4
  store i32 133, ptr %1, align 4, !dbg !3704
  br label %22, !dbg !3704

8:                                                ; preds = %4
  store i32 132, ptr %1, align 4, !dbg !3706
  br label %22, !dbg !3706

9:                                                ; preds = %0
  %10 = load i32, ptr @use_tcp, align 4, !dbg !3708
  %11 = icmp ne i32 %10, 0, !dbg !3708
  br i1 %11, label %12, label %17, !dbg !3710

12:                                               ; preds = %9
  %13 = load i32, ptr @use_secure, align 4, !dbg !3711
  %14 = icmp ne i32 %13, 0, !dbg !3711
  br i1 %14, label %15, label %16, !dbg !3714

15:                                               ; preds = %12
  store i32 56, ptr %1, align 4, !dbg !3715
  br label %22, !dbg !3715

16:                                               ; preds = %12
  store i32 6, ptr %1, align 4, !dbg !3717
  br label %22, !dbg !3717

17:                                               ; preds = %9
  %18 = load i32, ptr @use_secure, align 4, !dbg !3719
  %19 = icmp ne i32 %18, 0, !dbg !3719
  br i1 %19, label %20, label %21, !dbg !3722

20:                                               ; preds = %17
  store i32 250, ptr %1, align 4, !dbg !3723
  br label %22, !dbg !3723

21:                                               ; preds = %17
  store i32 17, ptr %1, align 4, !dbg !3725
  br label %22, !dbg !3725

22:                                               ; preds = %21, %20, %16, %15, %8, %7
  %23 = load i32, ptr %1, align 4, !dbg !3727
  ret i32 %23, !dbg !3727
}

; Function Attrs: nounwind
declare i32 @gettimeofday(ptr noundef, ptr noundef) #2

declare i32 @select(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

declare i32 @stun_is_indication(ptr noundef) #3

declare ptr @stun_attr_get_first(ptr noundef) #3

declare i32 @stun_attr_get_type(ptr noundef) #3

declare ptr @stun_attr_get_value(ptr noundef) #3

declare ptr @stun_attr_get_next_str(ptr noundef, i64 noundef, ptr noundef) #3

declare void @tcp_data_connect(ptr noundef, i32 noundef) #3

declare ptr @stun_attr_get_first_by_type(ptr noundef, i16 noundef zeroext) #3

declare i32 @stun_attr_get_len(ptr noundef) #3

declare i32 @stun_is_success_response(ptr noundef) #3

declare i32 @stun_is_challenge_response_str(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @refresh_channel(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2) #0 !dbg !3728 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca %struct._stun_buffer, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca [4 x i8], align 1
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3731, metadata !DIExpression()), !dbg !3732
  store i16 %1, ptr %6, align 2
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3733, metadata !DIExpression()), !dbg !3734
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3735, metadata !DIExpression()), !dbg !3736
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3737, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3739, metadata !DIExpression()), !dbg !3740
  %12 = load ptr, ptr %5, align 8, !dbg !3741
  %13 = getelementptr inbounds %struct.app_ur_session, ptr %12, i32 0, i32 0, !dbg !3742
  store ptr %13, ptr %9, align 8, !dbg !3740
  %14 = load ptr, ptr %9, align 8, !dbg !3743
  %15 = getelementptr inbounds %struct.app_ur_conn_info, ptr %14, i32 0, i32 19, !dbg !3745
  %16 = load i32, ptr %15, align 8, !dbg !3745
  %17 = icmp ne i32 %16, 0, !dbg !3743
  br i1 %17, label %18, label %19, !dbg !3746

18:                                               ; preds = %3
  store i32 0, ptr %4, align 4, !dbg !3747
  br label %163, !dbg !3747

19:                                               ; preds = %3
  %20 = load i16, ptr %6, align 2, !dbg !3748
  %21 = icmp ne i16 %20, 0, !dbg !3748
  br i1 %21, label %22, label %26, !dbg !3750

22:                                               ; preds = %19
  %23 = load i16, ptr %6, align 2, !dbg !3751
  %24 = zext i16 %23 to i32, !dbg !3751
  %25 = icmp eq i32 %24, 4, !dbg !3752
  br i1 %25, label %26, label %71, !dbg !3753

26:                                               ; preds = %22, %19
  call void @stun_init_request(i16 noundef zeroext 4, ptr noundef %8), !dbg !3754
  %27 = load i32, ptr %7, align 4, !dbg !3756
  %28 = call i32 @htonl(i32 noundef %27) #12, !dbg !3757
  store i32 %28, ptr %7, align 4, !dbg !3758
  %29 = call i32 @stun_attr_add(ptr noundef %8, i16 noundef zeroext 13, ptr noundef %7, i32 noundef 4), !dbg !3759
  %30 = load i32, ptr @dual_allocation, align 4, !dbg !3760
  %31 = icmp ne i32 %30, 0, !dbg !3760
  br i1 %31, label %32, label %55, !dbg !3762

32:                                               ; preds = %26
  %33 = load i32, ptr @mobility, align 4, !dbg !3763
  %34 = icmp ne i32 %33, 0, !dbg !3763
  br i1 %34, label %55, label %35, !dbg !3764

35:                                               ; preds = %32
  call void @llvm.dbg.declare(metadata ptr %10, metadata !3765, metadata !DIExpression()), !dbg !3767
  %36 = call i64 @random() #11, !dbg !3768
  %37 = trunc i64 %36 to i8, !dbg !3769
  %38 = zext i8 %37 to i32, !dbg !3770
  %39 = srem i32 %38, 3, !dbg !3771
  store i32 %39, ptr %10, align 4, !dbg !3767
  %40 = load i32, ptr %10, align 4, !dbg !3772
  %41 = icmp ne i32 %40, 0, !dbg !3772
  br i1 %41, label %42, label %54, !dbg !3774

42:                                               ; preds = %35
  call void @llvm.dbg.declare(metadata ptr %11, metadata !3775, metadata !DIExpression()), !dbg !3777
  %43 = load i32, ptr %10, align 4, !dbg !3778
  %44 = icmp eq i32 %43, 1, !dbg !3779
  %45 = zext i1 %44 to i64, !dbg !3780
  %46 = select i1 %44, i32 1, i32 2, !dbg !3780
  %47 = trunc i32 %46 to i8, !dbg !3780
  %48 = getelementptr inbounds [4 x i8], ptr %11, i64 0, i64 0, !dbg !3781
  store i8 %47, ptr %48, align 1, !dbg !3782
  %49 = getelementptr inbounds [4 x i8], ptr %11, i64 0, i64 1, !dbg !3783
  store i8 0, ptr %49, align 1, !dbg !3784
  %50 = getelementptr inbounds [4 x i8], ptr %11, i64 0, i64 2, !dbg !3785
  store i8 0, ptr %50, align 1, !dbg !3786
  %51 = getelementptr inbounds [4 x i8], ptr %11, i64 0, i64 3, !dbg !3787
  store i8 0, ptr %51, align 1, !dbg !3788
  %52 = getelementptr inbounds [4 x i8], ptr %11, i64 0, i64 0, !dbg !3789
  %53 = call i32 @stun_attr_add(ptr noundef %8, i16 noundef zeroext 23, ptr noundef %52, i32 noundef 4), !dbg !3790
  br label %54, !dbg !3791

54:                                               ; preds = %42, %35
  br label %55, !dbg !3792

55:                                               ; preds = %54, %32, %26
  call void @add_origin(ptr noundef %8), !dbg !3793
  %56 = load ptr, ptr %9, align 8, !dbg !3794
  %57 = call i32 @add_integrity(ptr noundef %56, ptr noundef %8), !dbg !3796
  %58 = icmp slt i32 %57, 0, !dbg !3797
  br i1 %58, label %59, label %60, !dbg !3798

59:                                               ; preds = %55
  store i32 -1, ptr %4, align 4, !dbg !3799
  br label %163, !dbg !3799

60:                                               ; preds = %55
  %61 = load i32, ptr @use_fingerprints, align 4, !dbg !3800
  %62 = icmp ne i32 %61, 0, !dbg !3800
  br i1 %62, label %63, label %68, !dbg !3802

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct._stun_buffer, ptr %8, i32 0, i32 1, !dbg !3803
  %65 = getelementptr inbounds [65507 x i8], ptr %64, i64 0, i64 0, !dbg !3804
  %66 = getelementptr inbounds %struct._stun_buffer, ptr %8, i32 0, i32 2, !dbg !3805
  %67 = call i32 @stun_attr_add_fingerprint_str(ptr noundef %65, ptr noundef %66), !dbg !3806
  br label %68, !dbg !3806

68:                                               ; preds = %63, %60
  %69 = load ptr, ptr %9, align 8, !dbg !3807
  %70 = call i32 @send_buffer(ptr noundef %69, ptr noundef %8, i32 noundef 0, ptr noundef null), !dbg !3808
  br label %71, !dbg !3809

71:                                               ; preds = %68, %22
  %72 = load i32, ptr %7, align 4, !dbg !3810
  %73 = icmp ne i32 %72, 0, !dbg !3810
  br i1 %73, label %74, label %157, !dbg !3812

74:                                               ; preds = %71
  %75 = load ptr, ptr %5, align 8, !dbg !3813
  %76 = getelementptr inbounds %struct.app_ur_session, ptr %75, i32 0, i32 0, !dbg !3814
  %77 = getelementptr inbounds %struct.app_ur_conn_info, ptr %76, i32 0, i32 5, !dbg !3815
  %78 = call i32 @addr_any(ptr noundef %77), !dbg !3816
  %79 = icmp ne i32 %78, 0, !dbg !3816
  br i1 %79, label %157, label %80, !dbg !3817

80:                                               ; preds = %74
  %81 = load i32, ptr @no_permissions, align 4, !dbg !3818
  %82 = icmp ne i32 %81, 0, !dbg !3818
  br i1 %82, label %112, label %83, !dbg !3821

83:                                               ; preds = %80
  %84 = load i16, ptr %6, align 2, !dbg !3822
  %85 = icmp ne i16 %84, 0, !dbg !3822
  br i1 %85, label %86, label %90, !dbg !3825

86:                                               ; preds = %83
  %87 = load i16, ptr %6, align 2, !dbg !3826
  %88 = zext i16 %87 to i32, !dbg !3826
  %89 = icmp eq i32 %88, 8, !dbg !3827
  br i1 %89, label %90, label %111, !dbg !3828

90:                                               ; preds = %86, %83
  call void @stun_init_request(i16 noundef zeroext 8, ptr noundef %8), !dbg !3829
  %91 = load ptr, ptr %5, align 8, !dbg !3831
  %92 = getelementptr inbounds %struct.app_ur_session, ptr %91, i32 0, i32 0, !dbg !3832
  %93 = getelementptr inbounds %struct.app_ur_conn_info, ptr %92, i32 0, i32 5, !dbg !3833
  %94 = call i32 @stun_attr_add_addr(ptr noundef %8, i16 noundef zeroext 18, ptr noundef %93), !dbg !3834
  call void @add_origin(ptr noundef %8), !dbg !3835
  %95 = load ptr, ptr %9, align 8, !dbg !3836
  %96 = call i32 @add_integrity(ptr noundef %95, ptr noundef %8), !dbg !3838
  %97 = icmp slt i32 %96, 0, !dbg !3839
  br i1 %97, label %98, label %99, !dbg !3840

98:                                               ; preds = %90
  store i32 -1, ptr %4, align 4, !dbg !3841
  br label %163, !dbg !3841

99:                                               ; preds = %90
  %100 = load i32, ptr @use_fingerprints, align 4, !dbg !3842
  %101 = icmp ne i32 %100, 0, !dbg !3842
  br i1 %101, label %102, label %107, !dbg !3844

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct._stun_buffer, ptr %8, i32 0, i32 1, !dbg !3845
  %104 = getelementptr inbounds [65507 x i8], ptr %103, i64 0, i64 0, !dbg !3846
  %105 = getelementptr inbounds %struct._stun_buffer, ptr %8, i32 0, i32 2, !dbg !3847
  %106 = call i32 @stun_attr_add_fingerprint_str(ptr noundef %104, ptr noundef %105), !dbg !3848
  br label %107, !dbg !3848

107:                                              ; preds = %102, %99
  %108 = load ptr, ptr %5, align 8, !dbg !3849
  %109 = getelementptr inbounds %struct.app_ur_session, ptr %108, i32 0, i32 0, !dbg !3850
  %110 = call i32 @send_buffer(ptr noundef %109, ptr noundef %8, i32 noundef 0, ptr noundef null), !dbg !3851
  br label %111, !dbg !3852

111:                                              ; preds = %107, %86
  br label %112, !dbg !3853

112:                                              ; preds = %111, %80
  %113 = load i16, ptr %6, align 2, !dbg !3854
  %114 = icmp ne i16 %113, 0, !dbg !3854
  br i1 %114, label %115, label %119, !dbg !3856

115:                                              ; preds = %112
  %116 = load i16, ptr %6, align 2, !dbg !3857
  %117 = zext i16 %116 to i32, !dbg !3857
  %118 = icmp eq i32 %117, 9, !dbg !3858
  br i1 %118, label %119, label %156, !dbg !3859

119:                                              ; preds = %115, %112
  %120 = load ptr, ptr %5, align 8, !dbg !3860
  %121 = getelementptr inbounds %struct.app_ur_session, ptr %120, i32 0, i32 3, !dbg !3860
  %122 = load i16, ptr %121, align 8, !dbg !3860
  %123 = zext i16 %122 to i32, !dbg !3860
  %124 = icmp sge i32 %123, 16384, !dbg !3860
  br i1 %124, label %125, label %155, !dbg !3860

125:                                              ; preds = %119
  %126 = load ptr, ptr %5, align 8, !dbg !3860
  %127 = getelementptr inbounds %struct.app_ur_session, ptr %126, i32 0, i32 3, !dbg !3860
  %128 = load i16, ptr %127, align 8, !dbg !3860
  %129 = zext i16 %128 to i32, !dbg !3860
  %130 = icmp sle i32 %129, 32767, !dbg !3860
  br i1 %130, label %131, label %155, !dbg !3863

131:                                              ; preds = %125
  %132 = load ptr, ptr %5, align 8, !dbg !3864
  %133 = getelementptr inbounds %struct.app_ur_session, ptr %132, i32 0, i32 0, !dbg !3866
  %134 = getelementptr inbounds %struct.app_ur_conn_info, ptr %133, i32 0, i32 5, !dbg !3867
  %135 = load ptr, ptr %5, align 8, !dbg !3868
  %136 = getelementptr inbounds %struct.app_ur_session, ptr %135, i32 0, i32 3, !dbg !3869
  %137 = load i16, ptr %136, align 8, !dbg !3869
  %138 = call zeroext i16 @stun_set_channel_bind_request(ptr noundef %8, ptr noundef %134, i16 noundef zeroext %137), !dbg !3870
  call void @add_origin(ptr noundef %8), !dbg !3871
  %139 = load ptr, ptr %9, align 8, !dbg !3872
  %140 = call i32 @add_integrity(ptr noundef %139, ptr noundef %8), !dbg !3874
  %141 = icmp slt i32 %140, 0, !dbg !3875
  br i1 %141, label %142, label %143, !dbg !3876

142:                                              ; preds = %131
  store i32 -1, ptr %4, align 4, !dbg !3877
  br label %163, !dbg !3877

143:                                              ; preds = %131
  %144 = load i32, ptr @use_fingerprints, align 4, !dbg !3878
  %145 = icmp ne i32 %144, 0, !dbg !3878
  br i1 %145, label %146, label %151, !dbg !3880

146:                                              ; preds = %143
  %147 = getelementptr inbounds %struct._stun_buffer, ptr %8, i32 0, i32 1, !dbg !3881
  %148 = getelementptr inbounds [65507 x i8], ptr %147, i64 0, i64 0, !dbg !3882
  %149 = getelementptr inbounds %struct._stun_buffer, ptr %8, i32 0, i32 2, !dbg !3883
  %150 = call i32 @stun_attr_add_fingerprint_str(ptr noundef %148, ptr noundef %149), !dbg !3884
  br label %151, !dbg !3884

151:                                              ; preds = %146, %143
  %152 = load ptr, ptr %5, align 8, !dbg !3885
  %153 = getelementptr inbounds %struct.app_ur_session, ptr %152, i32 0, i32 0, !dbg !3886
  %154 = call i32 @send_buffer(ptr noundef %153, ptr noundef %8, i32 noundef 1, ptr noundef null), !dbg !3887
  br label %155, !dbg !3888

155:                                              ; preds = %151, %125, %119
  br label %156, !dbg !3889

156:                                              ; preds = %155, %115
  br label %157, !dbg !3890

157:                                              ; preds = %156, %74, %71
  %158 = load i64, ptr @current_mstime, align 8, !dbg !3891
  %159 = add i64 %158, 30000, !dbg !3892
  %160 = trunc i64 %159 to i32, !dbg !3891
  %161 = load ptr, ptr %5, align 8, !dbg !3893
  %162 = getelementptr inbounds %struct.app_ur_session, ptr %161, i32 0, i32 11, !dbg !3894
  store i32 %160, ptr %162, align 8, !dbg !3895
  store i32 0, ptr %4, align 4, !dbg !3896
  br label %163, !dbg !3896

163:                                              ; preds = %157, %142, %98, %59, %18
  %164 = load i32, ptr %4, align 4, !dbg !3897
  ret i32 %164, !dbg !3897
}

declare i32 @stun_is_error_response(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #3

declare i32 @stun_is_channel_message(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @time_minus(i64 noundef %0, i64 noundef %1) #0 !dbg !3898 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3901, metadata !DIExpression()), !dbg !3902
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3903, metadata !DIExpression()), !dbg !3904
  %5 = load i64, ptr %3, align 8, !dbg !3905
  %6 = load i64, ptr %4, align 8, !dbg !3906
  %7 = sub nsw i64 %5, %6, !dbg !3907
  ret i64 %7, !dbg !3908
}

; Function Attrs: nounwind willreturn memory(none)
declare i32 @abs(i32 noundef) #4

declare void @stun_init_request(i16 noundef zeroext, ptr noundef) #3

; Function Attrs: nounwind willreturn memory(none)
declare i32 @htonl(i32 noundef) #4

declare i32 @stun_attr_add(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) #3

declare void @add_origin(ptr noundef) #3

declare i32 @stun_attr_add_fingerprint_str(ptr noundef, ptr noundef) #3

declare i32 @addr_any(ptr noundef) #3

declare i32 @stun_attr_add_addr(ptr noundef, i16 noundef zeroext, ptr noundef) #3

declare zeroext i16 @stun_set_channel_bind_request(ptr noundef, ptr noundef, i16 noundef zeroext) #3

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @create_new_ss() #0 !dbg !3909 {
  %1 = load i64, ptr @current_clients_number, align 8, !dbg !3912
  %2 = add i64 %1, 1, !dbg !3912
  store i64 %2, ptr @current_clients_number, align 8, !dbg !3912
  %3 = call noalias ptr @malloc(i64 noundef 133096) #14, !dbg !3913
  %4 = call ptr @init_app_session(ptr noundef %3), !dbg !3914
  ret ptr %4, !dbg !3915
}

declare i32 @start_c2c_connection(i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

declare void @SSL_free(ptr noundef) #3

declare i32 @close(i32 noundef) #3

declare i32 @socket_set_nonblocking(i32 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @init_app_session(ptr noundef %0) #0 !dbg !3916 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3919, metadata !DIExpression()), !dbg !3920
  %3 = load ptr, ptr %2, align 8, !dbg !3921
  %4 = icmp ne ptr %3, null, !dbg !3921
  br i1 %4, label %5, label %10, !dbg !3923

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8, !dbg !3924
  call void @llvm.memset.p0.i64(ptr align 8 %6, i8 0, i64 133096, i1 false), !dbg !3926
  %7 = load ptr, ptr %2, align 8, !dbg !3927
  %8 = getelementptr inbounds %struct.app_ur_session, ptr %7, i32 0, i32 0, !dbg !3928
  %9 = getelementptr inbounds %struct.app_ur_conn_info, ptr %8, i32 0, i32 7, !dbg !3929
  store i32 -1, ptr %9, align 8, !dbg !3930
  br label %10, !dbg !3931

10:                                               ; preds = %5, %1
  %11 = load ptr, ptr %2, align 8, !dbg !3932
  ret ptr %11, !dbg !3933
}

declare i32 @start_connection(i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @client_timer_handler(ptr noundef %0, ptr noundef %1) #0 !dbg !3934 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3938, metadata !DIExpression()), !dbg !3939
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3940, metadata !DIExpression()), !dbg !3941
  %8 = load ptr, ptr %4, align 8, !dbg !3942
  %9 = icmp ne ptr %8, null, !dbg !3942
  br i1 %9, label %10, label %112, !dbg !3944

10:                                               ; preds = %2
  %11 = load i64, ptr @current_mstime, align 8, !dbg !3945
  %12 = trunc i64 %11 to i32, !dbg !3945
  %13 = load ptr, ptr %4, align 8, !dbg !3945
  %14 = getelementptr inbounds %struct.app_ur_session, ptr %13, i32 0, i32 11, !dbg !3945
  %15 = load i32, ptr %14, align 8, !dbg !3945
  %16 = sub nsw i32 %12, %15, !dbg !3945
  %17 = icmp slt i32 %16, 0, !dbg !3945
  br i1 %17, label %21, label %18, !dbg !3948

18:                                               ; preds = %10
  %19 = load ptr, ptr %4, align 8, !dbg !3949
  %20 = call i32 @refresh_channel(ptr noundef %19, i16 noundef zeroext 0, i32 noundef 600), !dbg !3951
  br label %21, !dbg !3952

21:                                               ; preds = %18, %10
  %22 = load i32, ptr @hang_on, align 4, !dbg !3953
  %23 = icmp ne i32 %22, 0, !dbg !3953
  br i1 %23, label %24, label %30, !dbg !3955

24:                                               ; preds = %21
  %25 = load ptr, ptr %4, align 8, !dbg !3956
  %26 = getelementptr inbounds %struct.app_ur_session, ptr %25, i32 0, i32 6, !dbg !3957
  %27 = load i32, ptr %26, align 4, !dbg !3957
  %28 = icmp ne i32 %27, 0, !dbg !3956
  br i1 %28, label %29, label %30, !dbg !3958

29:                                               ; preds = %24
  store i32 0, ptr %3, align 4, !dbg !3959
  br label %113, !dbg !3959

30:                                               ; preds = %24, %21
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3960, metadata !DIExpression()), !dbg !3961
  store i32 50, ptr %6, align 4, !dbg !3961
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3962, metadata !DIExpression()), !dbg !3963
  store i32 0, ptr %7, align 4, !dbg !3963
  br label %31, !dbg !3964

31:                                               ; preds = %110, %30
  %32 = load i64, ptr @current_mstime, align 8, !dbg !3965
  %33 = trunc i64 %32 to i32, !dbg !3965
  %34 = load ptr, ptr %4, align 8, !dbg !3965
  %35 = getelementptr inbounds %struct.app_ur_session, ptr %34, i32 0, i32 18, !dbg !3965
  %36 = load i32, ptr %35, align 4, !dbg !3965
  %37 = sub nsw i32 %33, %36, !dbg !3965
  %38 = icmp slt i32 %37, 0, !dbg !3965
  %39 = xor i1 %38, true, !dbg !3966
  br i1 %39, label %40, label %111, !dbg !3964

40:                                               ; preds = %31
  %41 = load i32, ptr %7, align 4, !dbg !3967
  %42 = add nsw i32 %41, 1, !dbg !3967
  store i32 %42, ptr %7, align 4, !dbg !3967
  %43 = load i32, ptr %6, align 4, !dbg !3970
  %44 = icmp sge i32 %41, %43, !dbg !3971
  br i1 %44, label %45, label %46, !dbg !3972

45:                                               ; preds = %40
  br label %111, !dbg !3973

46:                                               ; preds = %40
  %47 = load ptr, ptr %4, align 8, !dbg !3974
  %48 = getelementptr inbounds %struct.app_ur_session, ptr %47, i32 0, i32 14, !dbg !3976
  %49 = load i32, ptr %48, align 4, !dbg !3976
  %50 = load ptr, ptr %4, align 8, !dbg !3977
  %51 = getelementptr inbounds %struct.app_ur_session, ptr %50, i32 0, i32 13, !dbg !3978
  %52 = load i32, ptr %51, align 8, !dbg !3978
  %53 = icmp sge i32 %49, %52, !dbg !3979
  br i1 %53, label %54, label %99, !dbg !3980

54:                                               ; preds = %46
  %55 = load i64, ptr @current_mstime, align 8, !dbg !3981
  %56 = trunc i64 %55 to i32, !dbg !3981
  %57 = load ptr, ptr %4, align 8, !dbg !3981
  %58 = getelementptr inbounds %struct.app_ur_session, ptr %57, i32 0, i32 12, !dbg !3981
  %59 = load i32, ptr %58, align 4, !dbg !3981
  %60 = sub nsw i32 %56, %59, !dbg !3981
  %61 = icmp slt i32 %60, 0, !dbg !3981
  br i1 %61, label %62, label %66, !dbg !3984

62:                                               ; preds = %54
  %63 = load i32, ptr @tot_recv_messages, align 4, !dbg !3985
  %64 = load i32, ptr @tot_messages, align 4, !dbg !3986
  %65 = icmp uge i32 %63, %64, !dbg !3987
  br i1 %65, label %66, label %98, !dbg !3988

66:                                               ; preds = %62, %54
  %67 = load ptr, ptr %4, align 8, !dbg !3989
  %68 = getelementptr inbounds %struct.app_ur_session, ptr %67, i32 0, i32 19, !dbg !3991
  %69 = load i64, ptr %68, align 8, !dbg !3991
  %70 = load i64, ptr @total_loss, align 8, !dbg !3992
  %71 = add i64 %70, %69, !dbg !3992
  store i64 %71, ptr @total_loss, align 8, !dbg !3992
  %72 = load ptr, ptr %4, align 8, !dbg !3993
  %73 = getelementptr inbounds %struct.app_ur_session, ptr %72, i32 0, i32 19, !dbg !3994
  store i64 0, ptr %73, align 8, !dbg !3995
  %74 = load ptr, ptr %4, align 8, !dbg !3996
  %75 = getelementptr inbounds %struct.app_ur_session, ptr %74, i32 0, i32 20, !dbg !3997
  %76 = load i64, ptr %75, align 8, !dbg !3997
  %77 = load i64, ptr @total_latency, align 8, !dbg !3998
  %78 = add i64 %77, %76, !dbg !3998
  store i64 %78, ptr @total_latency, align 8, !dbg !3998
  %79 = load ptr, ptr %4, align 8, !dbg !3999
  %80 = getelementptr inbounds %struct.app_ur_session, ptr %79, i32 0, i32 20, !dbg !4000
  store i64 0, ptr %80, align 8, !dbg !4001
  %81 = load ptr, ptr %4, align 8, !dbg !4002
  %82 = getelementptr inbounds %struct.app_ur_session, ptr %81, i32 0, i32 21, !dbg !4003
  %83 = load i64, ptr %82, align 8, !dbg !4003
  %84 = load i64, ptr @total_jitter, align 8, !dbg !4004
  %85 = add i64 %84, %83, !dbg !4004
  store i64 %85, ptr @total_jitter, align 8, !dbg !4004
  %86 = load ptr, ptr %4, align 8, !dbg !4005
  %87 = getelementptr inbounds %struct.app_ur_session, ptr %86, i32 0, i32 21, !dbg !4006
  store i64 0, ptr %87, align 8, !dbg !4007
  %88 = load ptr, ptr %4, align 8, !dbg !4008
  %89 = getelementptr inbounds %struct.app_ur_session, ptr %88, i32 0, i32 6, !dbg !4009
  store i32 1, ptr %89, align 4, !dbg !4010
  %90 = load i32, ptr @hang_on, align 4, !dbg !4011
  %91 = icmp ne i32 %90, 0, !dbg !4011
  br i1 %91, label %97, label %92, !dbg !4013

92:                                               ; preds = %66
  %93 = load ptr, ptr %4, align 8, !dbg !4014
  %94 = call i32 @refresh_channel(ptr noundef %93, i16 noundef zeroext 0, i32 noundef 0), !dbg !4016
  %95 = load ptr, ptr %4, align 8, !dbg !4017
  %96 = call i32 @client_shutdown(ptr noundef %95), !dbg !4018
  store i32 1, ptr %3, align 4, !dbg !4019
  br label %113, !dbg !4019

97:                                               ; preds = %66
  store i32 0, ptr %3, align 4, !dbg !4020
  br label %113, !dbg !4020

98:                                               ; preds = %62
  br label %110, !dbg !4022

99:                                               ; preds = %46
  %100 = load ptr, ptr %5, align 8, !dbg !4023
  %101 = load i32, ptr %100, align 4, !dbg !4025
  %102 = add nsw i32 %101, 1, !dbg !4025
  store i32 %102, ptr %100, align 4, !dbg !4025
  %103 = load ptr, ptr %4, align 8, !dbg !4026
  %104 = call i32 @client_write(ptr noundef %103), !dbg !4027
  %105 = load i64, ptr @current_mstime, align 8, !dbg !4028
  %106 = add i64 %105, 10000, !dbg !4029
  %107 = trunc i64 %106 to i32, !dbg !4028
  %108 = load ptr, ptr %4, align 8, !dbg !4030
  %109 = getelementptr inbounds %struct.app_ur_session, ptr %108, i32 0, i32 12, !dbg !4031
  store i32 %107, ptr %109, align 4, !dbg !4032
  br label %110

110:                                              ; preds = %99, %98
  br label %31, !dbg !3964, !llvm.loop !4033

111:                                              ; preds = %45, %31
  br label %112, !dbg !4035

112:                                              ; preds = %111, %2
  store i32 0, ptr %3, align 4, !dbg !4036
  br label %113, !dbg !4036

113:                                              ; preds = %112, %97, %92, %29
  %114 = load i32, ptr %3, align 4, !dbg !4037
  ret i32 %114, !dbg !4037
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @client_shutdown(ptr noundef %0) #0 !dbg !4038 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4041, metadata !DIExpression()), !dbg !4042
  %4 = load ptr, ptr %3, align 8, !dbg !4043
  %5 = icmp ne ptr %4, null, !dbg !4043
  br i1 %5, label %7, label %6, !dbg !4045

6:                                                ; preds = %1
  store i32 -1, ptr %2, align 4, !dbg !4046
  br label %22, !dbg !4046

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8, !dbg !4047
  %9 = getelementptr inbounds %struct.app_ur_session, ptr %8, i32 0, i32 1, !dbg !4048
  store i32 2, ptr %9, align 8, !dbg !4049
  %10 = load i64, ptr @current_time, align 8, !dbg !4050
  %11 = trunc i64 %10 to i32, !dbg !4050
  %12 = load ptr, ptr %3, align 8, !dbg !4051
  %13 = getelementptr inbounds %struct.app_ur_session, ptr %12, i32 0, i32 2, !dbg !4052
  store i32 %11, ptr %13, align 4, !dbg !4053
  %14 = load ptr, ptr %3, align 8, !dbg !4054
  %15 = call i32 @remove_all_from_ss(ptr noundef %14), !dbg !4055
  %16 = load i32, ptr @clnet_verbose, align 4, !dbg !4056
  %17 = icmp ne i32 %16, 0, !dbg !4056
  br i1 %17, label %18, label %21, !dbg !4058

18:                                               ; preds = %7
  %19 = load ptr, ptr %3, align 8, !dbg !4059
  %20 = ptrtoint ptr %19 to i64, !dbg !4060
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.33, i64 noundef %20), !dbg !4061
  br label %21, !dbg !4061

21:                                               ; preds = %18, %7
  store i32 0, ptr %2, align 4, !dbg !4062
  br label %22, !dbg !4062

22:                                               ; preds = %21, %6
  %23 = load i32, ptr %2, align 4, !dbg !4063
  ret i32 %23, !dbg !4063
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @client_write(ptr noundef %0) #0 !dbg !4064 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4065, metadata !DIExpression()), !dbg !4066
  %8 = load ptr, ptr %3, align 8, !dbg !4067
  %9 = icmp ne ptr %8, null, !dbg !4067
  br i1 %9, label %11, label %10, !dbg !4069

10:                                               ; preds = %1
  store i32 -1, ptr %2, align 4, !dbg !4070
  br label %229, !dbg !4070

11:                                               ; preds = %1
  %12 = load ptr, ptr %3, align 8, !dbg !4071
  %13 = getelementptr inbounds %struct.app_ur_session, ptr %12, i32 0, i32 1, !dbg !4073
  %14 = load i32, ptr %13, align 8, !dbg !4073
  %15 = icmp ne i32 %14, 1, !dbg !4074
  br i1 %15, label %16, label %17, !dbg !4075

16:                                               ; preds = %11
  store i32 -1, ptr %2, align 4, !dbg !4076
  br label %229, !dbg !4076

17:                                               ; preds = %11
  %18 = load i64, ptr @current_time, align 8, !dbg !4077
  %19 = trunc i64 %18 to i32, !dbg !4077
  %20 = load ptr, ptr %3, align 8, !dbg !4078
  %21 = getelementptr inbounds %struct.app_ur_session, ptr %20, i32 0, i32 2, !dbg !4079
  store i32 %19, ptr %21, align 4, !dbg !4080
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4081, metadata !DIExpression()), !dbg !4082
  store ptr @buffer_to_send, ptr %4, align 8, !dbg !4082
  %22 = load ptr, ptr %3, align 8, !dbg !4083
  %23 = getelementptr inbounds %struct.app_ur_session, ptr %22, i32 0, i32 14, !dbg !4084
  %24 = load i32, ptr %23, align 4, !dbg !4084
  %25 = load ptr, ptr %4, align 8, !dbg !4085
  %26 = getelementptr inbounds %struct._message_info, ptr %25, i32 0, i32 0, !dbg !4086
  store i32 %24, ptr %26, align 8, !dbg !4087
  %27 = load i64, ptr @current_mstime, align 8, !dbg !4088
  %28 = load ptr, ptr %4, align 8, !dbg !4089
  %29 = getelementptr inbounds %struct._message_info, ptr %28, i32 0, i32 1, !dbg !4090
  store i64 %27, ptr %29, align 8, !dbg !4091
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4092, metadata !DIExpression()), !dbg !4093
  store ptr null, ptr %5, align 8, !dbg !4093
  %30 = load i8, ptr @relay_transport, align 1, !dbg !4094
  %31 = zext i8 %30 to i32, !dbg !4094
  %32 = icmp eq i32 %31, 6, !dbg !4094
  br i1 %32, label %33, label %121, !dbg !4096

33:                                               ; preds = %17
  %34 = load ptr, ptr %3, align 8, !dbg !4097
  %35 = getelementptr inbounds %struct.app_ur_session, ptr %34, i32 0, i32 10, !dbg !4099
  %36 = getelementptr inbounds %struct._stun_buffer, ptr %35, i32 0, i32 1, !dbg !4100
  %37 = getelementptr inbounds [65507 x i8], ptr %36, i64 0, i64 0, !dbg !4101
  %38 = load i32, ptr @clmessage_length, align 4, !dbg !4102
  %39 = sext i32 %38 to i64, !dbg !4102
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %37, ptr align 16 @buffer_to_send, i64 %39, i1 false), !dbg !4101
  %40 = load i32, ptr @clmessage_length, align 4, !dbg !4103
  %41 = sext i32 %40 to i64, !dbg !4103
  %42 = load ptr, ptr %3, align 8, !dbg !4104
  %43 = getelementptr inbounds %struct.app_ur_session, ptr %42, i32 0, i32 10, !dbg !4105
  %44 = getelementptr inbounds %struct._stun_buffer, ptr %43, i32 0, i32 2, !dbg !4106
  store i64 %41, ptr %44, align 8, !dbg !4107
  %45 = load ptr, ptr %3, align 8, !dbg !4108
  %46 = getelementptr inbounds %struct.app_ur_session, ptr %45, i32 0, i32 0, !dbg !4110
  %47 = getelementptr inbounds %struct.app_ur_conn_info, ptr %46, i32 0, i32 19, !dbg !4111
  %48 = load i32, ptr %47, align 8, !dbg !4111
  %49 = icmp ne i32 %48, 0, !dbg !4108
  br i1 %49, label %50, label %80, !dbg !4112

50:                                               ; preds = %33
  %51 = load ptr, ptr %3, align 8, !dbg !4113
  %52 = getelementptr inbounds %struct.app_ur_session, ptr %51, i32 0, i32 0, !dbg !4116
  %53 = getelementptr inbounds %struct.app_ur_conn_info, ptr %52, i32 0, i32 7, !dbg !4117
  %54 = load i32, ptr %53, align 8, !dbg !4117
  %55 = load ptr, ptr %3, align 8, !dbg !4118
  %56 = getelementptr inbounds %struct.app_ur_session, ptr %55, i32 0, i32 10, !dbg !4119
  %57 = getelementptr inbounds %struct._stun_buffer, ptr %56, i32 0, i32 1, !dbg !4120
  %58 = getelementptr inbounds [65507 x i8], ptr %57, i64 0, i64 0, !dbg !4118
  %59 = load i32, ptr @clmessage_length, align 4, !dbg !4121
  %60 = sext i32 %59 to i64, !dbg !4121
  %61 = call i64 @send(i32 noundef %54, ptr noundef %58, i64 noundef %60, i32 noundef 0), !dbg !4122
  %62 = icmp sge i64 %61, 0, !dbg !4123
  br i1 %62, label %63, label %79, !dbg !4124

63:                                               ; preds = %50
  %64 = load ptr, ptr %3, align 8, !dbg !4125
  %65 = getelementptr inbounds %struct.app_ur_session, ptr %64, i32 0, i32 14, !dbg !4127
  %66 = load i32, ptr %65, align 4, !dbg !4128
  %67 = add nsw i32 %66, 1, !dbg !4128
  store i32 %67, ptr %65, align 4, !dbg !4128
  %68 = load i32, ptr @RTP_PACKET_INTERVAL, align 4, !dbg !4129
  %69 = load ptr, ptr %3, align 8, !dbg !4130
  %70 = getelementptr inbounds %struct.app_ur_session, ptr %69, i32 0, i32 18, !dbg !4131
  %71 = load i32, ptr %70, align 4, !dbg !4132
  %72 = add i32 %71, %68, !dbg !4132
  store i32 %72, ptr %70, align 4, !dbg !4132
  %73 = load i32, ptr @tot_send_messages, align 4, !dbg !4133
  %74 = add i32 %73, 1, !dbg !4133
  store i32 %74, ptr @tot_send_messages, align 4, !dbg !4133
  %75 = load i32, ptr @clmessage_length, align 4, !dbg !4134
  %76 = sext i32 %75 to i64, !dbg !4134
  %77 = load i64, ptr @tot_send_bytes, align 8, !dbg !4135
  %78 = add i64 %77, %76, !dbg !4135
  store i64 %78, ptr @tot_send_bytes, align 8, !dbg !4135
  br label %79, !dbg !4136

79:                                               ; preds = %63, %50
  store i32 0, ptr %2, align 4, !dbg !4137
  br label %229, !dbg !4137

80:                                               ; preds = %33
  %81 = load ptr, ptr %3, align 8, !dbg !4138
  %82 = getelementptr inbounds %struct.app_ur_session, ptr %81, i32 0, i32 0, !dbg !4140
  %83 = getelementptr inbounds %struct.app_ur_conn_info, ptr %82, i32 0, i32 17, !dbg !4141
  %84 = load ptr, ptr %83, align 8, !dbg !4141
  %85 = icmp ne ptr %84, null, !dbg !4142
  br i1 %85, label %86, label %92, !dbg !4143

86:                                               ; preds = %80
  %87 = load ptr, ptr %3, align 8, !dbg !4144
  %88 = getelementptr inbounds %struct.app_ur_session, ptr %87, i32 0, i32 0, !dbg !4145
  %89 = getelementptr inbounds %struct.app_ur_conn_info, ptr %88, i32 0, i32 18, !dbg !4146
  %90 = load i64, ptr %89, align 8, !dbg !4146
  %91 = icmp ne i64 %90, 0, !dbg !4147
  br i1 %91, label %93, label %92, !dbg !4148

92:                                               ; preds = %86, %80
  store i32 -1, ptr %2, align 4, !dbg !4149
  br label %229, !dbg !4149

93:                                               ; preds = %86
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4151, metadata !DIExpression()), !dbg !4152
  %94 = call i64 @random() #11, !dbg !4153
  %95 = trunc i64 %94 to i32, !dbg !4154
  %96 = zext i32 %95 to i64, !dbg !4154
  %97 = load ptr, ptr %3, align 8, !dbg !4155
  %98 = getelementptr inbounds %struct.app_ur_session, ptr %97, i32 0, i32 0, !dbg !4156
  %99 = getelementptr inbounds %struct.app_ur_conn_info, ptr %98, i32 0, i32 18, !dbg !4157
  %100 = load i64, ptr %99, align 8, !dbg !4157
  %101 = urem i64 %96, %100, !dbg !4158
  %102 = trunc i64 %101 to i32, !dbg !4154
  store i32 %102, ptr %6, align 4, !dbg !4152
  %103 = load ptr, ptr %3, align 8, !dbg !4159
  %104 = getelementptr inbounds %struct.app_ur_session, ptr %103, i32 0, i32 0, !dbg !4160
  %105 = getelementptr inbounds %struct.app_ur_conn_info, ptr %104, i32 0, i32 17, !dbg !4161
  %106 = load ptr, ptr %105, align 8, !dbg !4161
  %107 = load i32, ptr %6, align 4, !dbg !4162
  %108 = sext i32 %107 to i64, !dbg !4159
  %109 = getelementptr inbounds ptr, ptr %106, i64 %108, !dbg !4159
  %110 = load ptr, ptr %109, align 8, !dbg !4159
  store ptr %110, ptr %5, align 8, !dbg !4163
  %111 = load ptr, ptr %5, align 8, !dbg !4164
  %112 = getelementptr inbounds %struct.app_tcp_conn_info, ptr %111, i32 0, i32 4, !dbg !4166
  %113 = load i32, ptr %112, align 8, !dbg !4166
  %114 = icmp ne i32 %113, 0, !dbg !4164
  br i1 %114, label %120, label %115, !dbg !4167

115:                                              ; preds = %93
  %116 = load i32, ptr %6, align 4, !dbg !4168
  %117 = load ptr, ptr %5, align 8, !dbg !4170
  %118 = ptrtoint ptr %117 to i64, !dbg !4171
  %119 = call i32 (ptr, ...) @printf(ptr noundef @.str.34, ptr noundef @__FUNCTION__.client_write, i32 noundef %116, i64 noundef %118), !dbg !4172
  store i32 -1, ptr %2, align 4, !dbg !4173
  br label %229, !dbg !4173

120:                                              ; preds = %93
  br label %180, !dbg !4174

121:                                              ; preds = %17
  %122 = load i32, ptr @do_not_use_channel, align 4, !dbg !4175
  %123 = icmp ne i32 %122, 0, !dbg !4175
  br i1 %123, label %147, label %124, !dbg !4177

124:                                              ; preds = %121
  %125 = load ptr, ptr %3, align 8, !dbg !4178
  %126 = getelementptr inbounds %struct.app_ur_session, ptr %125, i32 0, i32 3, !dbg !4180
  %127 = load i16, ptr %126, align 8, !dbg !4180
  %128 = load ptr, ptr %3, align 8, !dbg !4181
  %129 = getelementptr inbounds %struct.app_ur_session, ptr %128, i32 0, i32 10, !dbg !4182
  %130 = load i32, ptr @clmessage_length, align 4, !dbg !4183
  %131 = load i32, ptr @mandatory_channel_padding, align 4, !dbg !4184
  %132 = icmp ne i32 %131, 0, !dbg !4184
  br i1 %132, label %136, label %133, !dbg !4185

133:                                              ; preds = %124
  %134 = load i32, ptr @use_tcp, align 4, !dbg !4186
  %135 = icmp ne i32 %134, 0, !dbg !4185
  br label %136, !dbg !4185

136:                                              ; preds = %133, %124
  %137 = phi i1 [ true, %124 ], [ %135, %133 ]
  %138 = zext i1 %137 to i32, !dbg !4185
  %139 = call i32 @stun_init_channel_message(i16 noundef zeroext %127, ptr noundef %129, i32 noundef %130, i32 noundef %138), !dbg !4187
  %140 = load ptr, ptr %3, align 8, !dbg !4188
  %141 = getelementptr inbounds %struct.app_ur_session, ptr %140, i32 0, i32 10, !dbg !4189
  %142 = getelementptr inbounds %struct._stun_buffer, ptr %141, i32 0, i32 1, !dbg !4190
  %143 = getelementptr inbounds [65507 x i8], ptr %142, i64 0, i64 0, !dbg !4188
  %144 = getelementptr inbounds i8, ptr %143, i64 4, !dbg !4191
  %145 = load i32, ptr @clmessage_length, align 4, !dbg !4192
  %146 = sext i32 %145 to i64, !dbg !4192
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %144, ptr align 16 @buffer_to_send, i64 %146, i1 false), !dbg !4193
  br label %179, !dbg !4194

147:                                              ; preds = %121
  %148 = load ptr, ptr %3, align 8, !dbg !4195
  %149 = getelementptr inbounds %struct.app_ur_session, ptr %148, i32 0, i32 10, !dbg !4197
  call void @stun_init_indication(i16 noundef zeroext 6, ptr noundef %149), !dbg !4198
  %150 = load ptr, ptr %3, align 8, !dbg !4199
  %151 = getelementptr inbounds %struct.app_ur_session, ptr %150, i32 0, i32 10, !dbg !4200
  %152 = load i32, ptr @clmessage_length, align 4, !dbg !4201
  %153 = call i32 @stun_attr_add(ptr noundef %151, i16 noundef zeroext 19, ptr noundef @buffer_to_send, i32 noundef %152), !dbg !4202
  %154 = load ptr, ptr %3, align 8, !dbg !4203
  %155 = getelementptr inbounds %struct.app_ur_session, ptr %154, i32 0, i32 10, !dbg !4204
  %156 = load ptr, ptr %3, align 8, !dbg !4205
  %157 = getelementptr inbounds %struct.app_ur_session, ptr %156, i32 0, i32 0, !dbg !4206
  %158 = getelementptr inbounds %struct.app_ur_conn_info, ptr %157, i32 0, i32 5, !dbg !4207
  %159 = call i32 @stun_attr_add_addr(ptr noundef %155, i16 noundef zeroext 18, ptr noundef %158), !dbg !4208
  %160 = load i32, ptr @dont_fragment, align 4, !dbg !4209
  %161 = icmp ne i32 %160, 0, !dbg !4209
  br i1 %161, label %162, label %166, !dbg !4211

162:                                              ; preds = %147
  %163 = load ptr, ptr %3, align 8, !dbg !4212
  %164 = getelementptr inbounds %struct.app_ur_session, ptr %163, i32 0, i32 10, !dbg !4213
  %165 = call i32 @stun_attr_add(ptr noundef %164, i16 noundef zeroext 26, ptr noundef null, i32 noundef 0), !dbg !4214
  br label %166, !dbg !4214

166:                                              ; preds = %162, %147
  %167 = load i32, ptr @use_fingerprints, align 4, !dbg !4215
  %168 = icmp ne i32 %167, 0, !dbg !4215
  br i1 %168, label %169, label %178, !dbg !4217

169:                                              ; preds = %166
  %170 = load ptr, ptr %3, align 8, !dbg !4218
  %171 = getelementptr inbounds %struct.app_ur_session, ptr %170, i32 0, i32 10, !dbg !4219
  %172 = getelementptr inbounds %struct._stun_buffer, ptr %171, i32 0, i32 1, !dbg !4220
  %173 = getelementptr inbounds [65507 x i8], ptr %172, i64 0, i64 0, !dbg !4218
  %174 = load ptr, ptr %3, align 8, !dbg !4221
  %175 = getelementptr inbounds %struct.app_ur_session, ptr %174, i32 0, i32 10, !dbg !4222
  %176 = getelementptr inbounds %struct._stun_buffer, ptr %175, i32 0, i32 2, !dbg !4223
  %177 = call i32 @stun_attr_add_fingerprint_str(ptr noundef %173, ptr noundef %176), !dbg !4224
  br label %178, !dbg !4224

178:                                              ; preds = %169, %166
  br label %179

179:                                              ; preds = %178, %136
  br label %180

180:                                              ; preds = %179, %120
  %181 = load ptr, ptr %3, align 8, !dbg !4225
  %182 = getelementptr inbounds %struct.app_ur_session, ptr %181, i32 0, i32 10, !dbg !4227
  %183 = getelementptr inbounds %struct._stun_buffer, ptr %182, i32 0, i32 2, !dbg !4228
  %184 = load i64, ptr %183, align 8, !dbg !4228
  %185 = icmp ugt i64 %184, 0, !dbg !4229
  br i1 %185, label %186, label %228, !dbg !4230

186:                                              ; preds = %180
  %187 = load i32, ptr @clnet_verbose, align 4, !dbg !4231
  %188 = icmp ne i32 %187, 0, !dbg !4231
  br i1 %188, label %189, label %193, !dbg !4234

189:                                              ; preds = %186
  %190 = load i32, ptr @verbose_packets, align 4, !dbg !4235
  %191 = icmp ne i32 %190, 0, !dbg !4235
  br i1 %191, label %192, label %193, !dbg !4236

192:                                              ; preds = %189
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.35), !dbg !4237
  br label %193, !dbg !4239

193:                                              ; preds = %192, %189, %186
  call void @llvm.dbg.declare(metadata ptr %7, metadata !4240, metadata !DIExpression()), !dbg !4241
  %194 = load ptr, ptr %3, align 8, !dbg !4242
  %195 = getelementptr inbounds %struct.app_ur_session, ptr %194, i32 0, i32 0, !dbg !4243
  %196 = load ptr, ptr %3, align 8, !dbg !4244
  %197 = getelementptr inbounds %struct.app_ur_session, ptr %196, i32 0, i32 10, !dbg !4245
  %198 = load ptr, ptr %5, align 8, !dbg !4246
  %199 = call i32 @send_buffer(ptr noundef %195, ptr noundef %197, i32 noundef 1, ptr noundef %198), !dbg !4247
  store i32 %199, ptr %7, align 4, !dbg !4241
  %200 = load ptr, ptr %3, align 8, !dbg !4248
  %201 = getelementptr inbounds %struct.app_ur_session, ptr %200, i32 0, i32 14, !dbg !4249
  %202 = load i32, ptr %201, align 4, !dbg !4250
  %203 = add nsw i32 %202, 1, !dbg !4250
  store i32 %203, ptr %201, align 4, !dbg !4250
  %204 = load i32, ptr @RTP_PACKET_INTERVAL, align 4, !dbg !4251
  %205 = load ptr, ptr %3, align 8, !dbg !4252
  %206 = getelementptr inbounds %struct.app_ur_session, ptr %205, i32 0, i32 18, !dbg !4253
  %207 = load i32, ptr %206, align 4, !dbg !4254
  %208 = add i32 %207, %204, !dbg !4254
  store i32 %208, ptr %206, align 4, !dbg !4254
  %209 = load i32, ptr %7, align 4, !dbg !4255
  %210 = icmp sge i32 %209, 0, !dbg !4257
  br i1 %210, label %211, label %226, !dbg !4258

211:                                              ; preds = %193
  %212 = load i32, ptr @clnet_verbose, align 4, !dbg !4259
  %213 = icmp ne i32 %212, 0, !dbg !4259
  br i1 %213, label %214, label %219, !dbg !4262

214:                                              ; preds = %211
  %215 = load i32, ptr @verbose_packets, align 4, !dbg !4263
  %216 = icmp ne i32 %215, 0, !dbg !4263
  br i1 %216, label %217, label %219, !dbg !4264

217:                                              ; preds = %214
  %218 = load i32, ptr %7, align 4, !dbg !4265
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.36, i32 noundef %218), !dbg !4267
  br label %219, !dbg !4268

219:                                              ; preds = %217, %214, %211
  %220 = load i32, ptr @tot_send_messages, align 4, !dbg !4269
  %221 = add i32 %220, 1, !dbg !4269
  store i32 %221, ptr @tot_send_messages, align 4, !dbg !4269
  %222 = load i32, ptr @clmessage_length, align 4, !dbg !4270
  %223 = sext i32 %222 to i64, !dbg !4270
  %224 = load i64, ptr @tot_send_bytes, align 8, !dbg !4271
  %225 = add i64 %224, %223, !dbg !4271
  store i64 %225, ptr @tot_send_bytes, align 8, !dbg !4271
  br label %227, !dbg !4272

226:                                              ; preds = %193
  store i32 -1, ptr %2, align 4, !dbg !4273
  br label %229, !dbg !4273

227:                                              ; preds = %219
  br label %228, !dbg !4275

228:                                              ; preds = %227, %180
  store i32 0, ptr %2, align 4, !dbg !4276
  br label %229, !dbg !4276

229:                                              ; preds = %228, %226, %115, %92, %79, %16, %10
  %230 = load i32, ptr %2, align 4, !dbg !4277
  ret i32 %230, !dbg !4277
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remove_all_from_ss(ptr noundef %0) #0 !dbg !4278 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4279, metadata !DIExpression()), !dbg !4280
  %3 = load ptr, ptr %2, align 8, !dbg !4281
  %4 = icmp ne ptr %3, null, !dbg !4281
  br i1 %4, label %5, label %9, !dbg !4283

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8, !dbg !4284
  call void @uc_delete_session_elem_data(ptr noundef %6), !dbg !4286
  %7 = load i64, ptr @current_clients_number, align 8, !dbg !4287
  %8 = add i64 %7, -1, !dbg !4287
  store i64 %8, ptr @current_clients_number, align 8, !dbg !4287
  br label %9, !dbg !4288

9:                                                ; preds = %5, %1
  ret i32 0, !dbg !4289
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uc_delete_session_elem_data(ptr noundef %0) #0 !dbg !4290 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4293, metadata !DIExpression()), !dbg !4294
  %4 = load ptr, ptr %2, align 8, !dbg !4295
  %5 = icmp ne ptr %4, null, !dbg !4295
  br i1 %5, label %6, label %268, !dbg !4297

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !dbg !4298
  %8 = getelementptr inbounds %struct.app_ur_session, ptr %7, i32 0, i32 7, !dbg !4298
  %9 = load ptr, ptr %8, align 8, !dbg !4298
  %10 = icmp ne ptr %9, null, !dbg !4298
  br i1 %10, label %11, label %21, !dbg !4301

11:                                               ; preds = %6
  %12 = load ptr, ptr %2, align 8, !dbg !4302
  %13 = getelementptr inbounds %struct.app_ur_session, ptr %12, i32 0, i32 7, !dbg !4302
  %14 = load ptr, ptr %13, align 8, !dbg !4302
  %15 = call i32 @event_del(ptr noundef %14), !dbg !4302
  %16 = load ptr, ptr %2, align 8, !dbg !4302
  %17 = getelementptr inbounds %struct.app_ur_session, ptr %16, i32 0, i32 7, !dbg !4302
  %18 = load ptr, ptr %17, align 8, !dbg !4302
  call void @event_free(ptr noundef %18), !dbg !4302
  %19 = load ptr, ptr %2, align 8, !dbg !4302
  %20 = getelementptr inbounds %struct.app_ur_session, ptr %19, i32 0, i32 7, !dbg !4302
  store ptr null, ptr %20, align 8, !dbg !4302
  br label %21, !dbg !4302

21:                                               ; preds = %11, %6
  %22 = load ptr, ptr %2, align 8, !dbg !4304
  %23 = getelementptr inbounds %struct.app_ur_session, ptr %22, i32 0, i32 8, !dbg !4304
  %24 = load ptr, ptr %23, align 8, !dbg !4304
  %25 = icmp ne ptr %24, null, !dbg !4304
  br i1 %25, label %26, label %36, !dbg !4306

26:                                               ; preds = %21
  %27 = load ptr, ptr %2, align 8, !dbg !4307
  %28 = getelementptr inbounds %struct.app_ur_session, ptr %27, i32 0, i32 8, !dbg !4307
  %29 = load ptr, ptr %28, align 8, !dbg !4307
  %30 = call i32 @event_del(ptr noundef %29), !dbg !4307
  %31 = load ptr, ptr %2, align 8, !dbg !4307
  %32 = getelementptr inbounds %struct.app_ur_session, ptr %31, i32 0, i32 8, !dbg !4307
  %33 = load ptr, ptr %32, align 8, !dbg !4307
  call void @event_free(ptr noundef %33), !dbg !4307
  %34 = load ptr, ptr %2, align 8, !dbg !4307
  %35 = getelementptr inbounds %struct.app_ur_session, ptr %34, i32 0, i32 8, !dbg !4307
  store ptr null, ptr %35, align 8, !dbg !4307
  br label %36, !dbg !4307

36:                                               ; preds = %26, %21
  %37 = load ptr, ptr %2, align 8, !dbg !4309
  %38 = getelementptr inbounds %struct.app_ur_session, ptr %37, i32 0, i32 0, !dbg !4311
  %39 = getelementptr inbounds %struct.app_ur_conn_info, ptr %38, i32 0, i32 17, !dbg !4312
  %40 = load ptr, ptr %39, align 8, !dbg !4312
  %41 = icmp ne ptr %40, null, !dbg !4309
  br i1 %41, label %42, label %210, !dbg !4313

42:                                               ; preds = %36
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4314, metadata !DIExpression()), !dbg !4316
  store i32 0, ptr %3, align 4, !dbg !4316
  store i32 0, ptr %3, align 4, !dbg !4317
  br label %43, !dbg !4319

43:                                               ; preds = %189, %42
  %44 = load i32, ptr %3, align 4, !dbg !4320
  %45 = load ptr, ptr %2, align 8, !dbg !4322
  %46 = getelementptr inbounds %struct.app_ur_session, ptr %45, i32 0, i32 0, !dbg !4323
  %47 = getelementptr inbounds %struct.app_ur_conn_info, ptr %46, i32 0, i32 18, !dbg !4324
  %48 = load i64, ptr %47, align 8, !dbg !4324
  %49 = trunc i64 %48 to i32, !dbg !4325
  %50 = icmp slt i32 %44, %49, !dbg !4326
  br i1 %50, label %51, label %192, !dbg !4327

51:                                               ; preds = %43
  %52 = load ptr, ptr %2, align 8, !dbg !4328
  %53 = getelementptr inbounds %struct.app_ur_session, ptr %52, i32 0, i32 0, !dbg !4331
  %54 = getelementptr inbounds %struct.app_ur_conn_info, ptr %53, i32 0, i32 17, !dbg !4332
  %55 = load ptr, ptr %54, align 8, !dbg !4332
  %56 = load i32, ptr %3, align 4, !dbg !4333
  %57 = sext i32 %56 to i64, !dbg !4328
  %58 = getelementptr inbounds ptr, ptr %55, i64 %57, !dbg !4328
  %59 = load ptr, ptr %58, align 8, !dbg !4328
  %60 = icmp ne ptr %59, null, !dbg !4328
  br i1 %60, label %61, label %188, !dbg !4334

61:                                               ; preds = %51
  %62 = load ptr, ptr %2, align 8, !dbg !4335
  %63 = getelementptr inbounds %struct.app_ur_session, ptr %62, i32 0, i32 0, !dbg !4338
  %64 = getelementptr inbounds %struct.app_ur_conn_info, ptr %63, i32 0, i32 17, !dbg !4339
  %65 = load ptr, ptr %64, align 8, !dbg !4339
  %66 = load i32, ptr %3, align 4, !dbg !4340
  %67 = sext i32 %66 to i64, !dbg !4335
  %68 = getelementptr inbounds ptr, ptr %65, i64 %67, !dbg !4335
  %69 = load ptr, ptr %68, align 8, !dbg !4335
  %70 = getelementptr inbounds %struct.app_tcp_conn_info, ptr %69, i32 0, i32 3, !dbg !4341
  %71 = load ptr, ptr %70, align 8, !dbg !4341
  %72 = icmp ne ptr %71, null, !dbg !4335
  br i1 %72, label %73, label %187, !dbg !4342

73:                                               ; preds = %61
  %74 = load ptr, ptr %2, align 8, !dbg !4343
  %75 = getelementptr inbounds %struct.app_ur_session, ptr %74, i32 0, i32 0, !dbg !4344
  %76 = getelementptr inbounds %struct.app_ur_conn_info, ptr %75, i32 0, i32 9, !dbg !4345
  %77 = load i32, ptr %76, align 8, !dbg !4345
  %78 = icmp ne i32 %77, 0, !dbg !4346
  br i1 %78, label %187, label %79, !dbg !4347

79:                                               ; preds = %73
  %80 = load ptr, ptr %2, align 8, !dbg !4348
  %81 = getelementptr inbounds %struct.app_ur_session, ptr %80, i32 0, i32 0, !dbg !4351
  %82 = getelementptr inbounds %struct.app_ur_conn_info, ptr %81, i32 0, i32 17, !dbg !4352
  %83 = load ptr, ptr %82, align 8, !dbg !4352
  %84 = load i32, ptr %3, align 4, !dbg !4353
  %85 = sext i32 %84 to i64, !dbg !4348
  %86 = getelementptr inbounds ptr, ptr %83, i64 %85, !dbg !4348
  %87 = load ptr, ptr %86, align 8, !dbg !4348
  %88 = getelementptr inbounds %struct.app_tcp_conn_info, ptr %87, i32 0, i32 3, !dbg !4354
  %89 = load ptr, ptr %88, align 8, !dbg !4354
  %90 = call i32 @SSL_get_shutdown(ptr noundef %89), !dbg !4355
  %91 = and i32 %90, 1, !dbg !4356
  %92 = icmp ne i32 %91, 0, !dbg !4356
  br i1 %92, label %115, label %93, !dbg !4357

93:                                               ; preds = %79
  %94 = load ptr, ptr %2, align 8, !dbg !4358
  %95 = getelementptr inbounds %struct.app_ur_session, ptr %94, i32 0, i32 0, !dbg !4360
  %96 = getelementptr inbounds %struct.app_ur_conn_info, ptr %95, i32 0, i32 17, !dbg !4361
  %97 = load ptr, ptr %96, align 8, !dbg !4361
  %98 = load i32, ptr %3, align 4, !dbg !4362
  %99 = sext i32 %98 to i64, !dbg !4358
  %100 = getelementptr inbounds ptr, ptr %97, i64 %99, !dbg !4358
  %101 = load ptr, ptr %100, align 8, !dbg !4358
  %102 = getelementptr inbounds %struct.app_tcp_conn_info, ptr %101, i32 0, i32 3, !dbg !4363
  %103 = load ptr, ptr %102, align 8, !dbg !4363
  call void @SSL_set_shutdown(ptr noundef %103, i32 noundef 2), !dbg !4364
  %104 = load ptr, ptr %2, align 8, !dbg !4365
  %105 = getelementptr inbounds %struct.app_ur_session, ptr %104, i32 0, i32 0, !dbg !4366
  %106 = getelementptr inbounds %struct.app_ur_conn_info, ptr %105, i32 0, i32 17, !dbg !4367
  %107 = load ptr, ptr %106, align 8, !dbg !4367
  %108 = load i32, ptr %3, align 4, !dbg !4368
  %109 = sext i32 %108 to i64, !dbg !4365
  %110 = getelementptr inbounds ptr, ptr %107, i64 %109, !dbg !4365
  %111 = load ptr, ptr %110, align 8, !dbg !4365
  %112 = getelementptr inbounds %struct.app_tcp_conn_info, ptr %111, i32 0, i32 3, !dbg !4369
  %113 = load ptr, ptr %112, align 8, !dbg !4369
  %114 = call i32 @SSL_shutdown(ptr noundef %113), !dbg !4370
  br label %115, !dbg !4371

115:                                              ; preds = %93, %79
  %116 = load ptr, ptr %2, align 8, !dbg !4372
  %117 = getelementptr inbounds %struct.app_ur_session, ptr %116, i32 0, i32 0, !dbg !4374
  %118 = getelementptr inbounds %struct.app_ur_conn_info, ptr %117, i32 0, i32 17, !dbg !4375
  %119 = load ptr, ptr %118, align 8, !dbg !4375
  %120 = load i32, ptr %3, align 4, !dbg !4376
  %121 = sext i32 %120 to i64, !dbg !4372
  %122 = getelementptr inbounds ptr, ptr %119, i64 %121, !dbg !4372
  %123 = load ptr, ptr %122, align 8, !dbg !4372
  %124 = getelementptr inbounds %struct.app_tcp_conn_info, ptr %123, i32 0, i32 3, !dbg !4377
  %125 = load ptr, ptr %124, align 8, !dbg !4377
  %126 = icmp ne ptr %125, null, !dbg !4372
  br i1 %126, label %127, label %138, !dbg !4378

127:                                              ; preds = %115
  %128 = load ptr, ptr %2, align 8, !dbg !4379
  %129 = getelementptr inbounds %struct.app_ur_session, ptr %128, i32 0, i32 0, !dbg !4381
  %130 = getelementptr inbounds %struct.app_ur_conn_info, ptr %129, i32 0, i32 17, !dbg !4382
  %131 = load ptr, ptr %130, align 8, !dbg !4382
  %132 = load i32, ptr %3, align 4, !dbg !4383
  %133 = sext i32 %132 to i64, !dbg !4379
  %134 = getelementptr inbounds ptr, ptr %131, i64 %133, !dbg !4379
  %135 = load ptr, ptr %134, align 8, !dbg !4379
  %136 = getelementptr inbounds %struct.app_tcp_conn_info, ptr %135, i32 0, i32 3, !dbg !4384
  %137 = load ptr, ptr %136, align 8, !dbg !4384
  call void @SSL_free(ptr noundef %137), !dbg !4385
  br label %138, !dbg !4386

138:                                              ; preds = %127, %115
  %139 = load ptr, ptr %2, align 8, !dbg !4387
  %140 = getelementptr inbounds %struct.app_ur_session, ptr %139, i32 0, i32 0, !dbg !4389
  %141 = getelementptr inbounds %struct.app_ur_conn_info, ptr %140, i32 0, i32 17, !dbg !4390
  %142 = load ptr, ptr %141, align 8, !dbg !4390
  %143 = load i32, ptr %3, align 4, !dbg !4391
  %144 = sext i32 %143 to i64, !dbg !4387
  %145 = getelementptr inbounds ptr, ptr %142, i64 %144, !dbg !4387
  %146 = load ptr, ptr %145, align 8, !dbg !4387
  %147 = getelementptr inbounds %struct.app_tcp_conn_info, ptr %146, i32 0, i32 2, !dbg !4392
  %148 = load i32, ptr %147, align 8, !dbg !4392
  %149 = icmp sge i32 %148, 0, !dbg !4393
  br i1 %149, label %150, label %171, !dbg !4394

150:                                              ; preds = %138
  %151 = load ptr, ptr %2, align 8, !dbg !4395
  %152 = getelementptr inbounds %struct.app_ur_session, ptr %151, i32 0, i32 0, !dbg !4395
  %153 = getelementptr inbounds %struct.app_ur_conn_info, ptr %152, i32 0, i32 17, !dbg !4395
  %154 = load ptr, ptr %153, align 8, !dbg !4395
  %155 = load i32, ptr %3, align 4, !dbg !4395
  %156 = sext i32 %155 to i64, !dbg !4395
  %157 = getelementptr inbounds ptr, ptr %154, i64 %156, !dbg !4395
  %158 = load ptr, ptr %157, align 8, !dbg !4395
  %159 = getelementptr inbounds %struct.app_tcp_conn_info, ptr %158, i32 0, i32 2, !dbg !4395
  %160 = load i32, ptr %159, align 8, !dbg !4395
  %161 = call i32 @close(i32 noundef %160), !dbg !4395
  %162 = load ptr, ptr %2, align 8, !dbg !4397
  %163 = getelementptr inbounds %struct.app_ur_session, ptr %162, i32 0, i32 0, !dbg !4398
  %164 = getelementptr inbounds %struct.app_ur_conn_info, ptr %163, i32 0, i32 17, !dbg !4399
  %165 = load ptr, ptr %164, align 8, !dbg !4399
  %166 = load i32, ptr %3, align 4, !dbg !4400
  %167 = sext i32 %166 to i64, !dbg !4397
  %168 = getelementptr inbounds ptr, ptr %165, i64 %167, !dbg !4397
  %169 = load ptr, ptr %168, align 8, !dbg !4397
  %170 = getelementptr inbounds %struct.app_tcp_conn_info, ptr %169, i32 0, i32 2, !dbg !4401
  store i32 -1, ptr %170, align 8, !dbg !4402
  br label %171, !dbg !4403

171:                                              ; preds = %150, %138
  %172 = load ptr, ptr %2, align 8, !dbg !4404
  %173 = getelementptr inbounds %struct.app_ur_session, ptr %172, i32 0, i32 0, !dbg !4405
  %174 = getelementptr inbounds %struct.app_ur_conn_info, ptr %173, i32 0, i32 17, !dbg !4406
  %175 = load ptr, ptr %174, align 8, !dbg !4406
  %176 = load i32, ptr %3, align 4, !dbg !4407
  %177 = sext i32 %176 to i64, !dbg !4404
  %178 = getelementptr inbounds ptr, ptr %175, i64 %177, !dbg !4404
  %179 = load ptr, ptr %178, align 8, !dbg !4404
  call void @free(ptr noundef %179) #11, !dbg !4408
  %180 = load ptr, ptr %2, align 8, !dbg !4409
  %181 = getelementptr inbounds %struct.app_ur_session, ptr %180, i32 0, i32 0, !dbg !4410
  %182 = getelementptr inbounds %struct.app_ur_conn_info, ptr %181, i32 0, i32 17, !dbg !4411
  %183 = load ptr, ptr %182, align 8, !dbg !4411
  %184 = load i32, ptr %3, align 4, !dbg !4412
  %185 = sext i32 %184 to i64, !dbg !4409
  %186 = getelementptr inbounds ptr, ptr %183, i64 %185, !dbg !4409
  store ptr null, ptr %186, align 8, !dbg !4413
  br label %187, !dbg !4414

187:                                              ; preds = %171, %73, %61
  br label %188, !dbg !4415

188:                                              ; preds = %187, %51
  br label %189, !dbg !4416

189:                                              ; preds = %188
  %190 = load i32, ptr %3, align 4, !dbg !4417
  %191 = add nsw i32 %190, 1, !dbg !4417
  store i32 %191, ptr %3, align 4, !dbg !4417
  br label %43, !dbg !4418, !llvm.loop !4419

192:                                              ; preds = %43
  %193 = load ptr, ptr %2, align 8, !dbg !4421
  %194 = getelementptr inbounds %struct.app_ur_session, ptr %193, i32 0, i32 0, !dbg !4422
  %195 = getelementptr inbounds %struct.app_ur_conn_info, ptr %194, i32 0, i32 18, !dbg !4423
  store i64 0, ptr %195, align 8, !dbg !4424
  %196 = load ptr, ptr %2, align 8, !dbg !4425
  %197 = getelementptr inbounds %struct.app_ur_session, ptr %196, i32 0, i32 0, !dbg !4427
  %198 = getelementptr inbounds %struct.app_ur_conn_info, ptr %197, i32 0, i32 17, !dbg !4428
  %199 = load ptr, ptr %198, align 8, !dbg !4428
  %200 = icmp ne ptr %199, null, !dbg !4425
  br i1 %200, label %201, label %209, !dbg !4429

201:                                              ; preds = %192
  %202 = load ptr, ptr %2, align 8, !dbg !4430
  %203 = getelementptr inbounds %struct.app_ur_session, ptr %202, i32 0, i32 0, !dbg !4432
  %204 = getelementptr inbounds %struct.app_ur_conn_info, ptr %203, i32 0, i32 17, !dbg !4433
  %205 = load ptr, ptr %204, align 8, !dbg !4433
  call void @free(ptr noundef %205) #11, !dbg !4434
  %206 = load ptr, ptr %2, align 8, !dbg !4435
  %207 = getelementptr inbounds %struct.app_ur_session, ptr %206, i32 0, i32 0, !dbg !4436
  %208 = getelementptr inbounds %struct.app_ur_conn_info, ptr %207, i32 0, i32 17, !dbg !4437
  store ptr null, ptr %208, align 8, !dbg !4438
  br label %209, !dbg !4439

209:                                              ; preds = %201, %192
  br label %210, !dbg !4440

210:                                              ; preds = %209, %36
  %211 = load ptr, ptr %2, align 8, !dbg !4441
  %212 = getelementptr inbounds %struct.app_ur_session, ptr %211, i32 0, i32 0, !dbg !4443
  %213 = getelementptr inbounds %struct.app_ur_conn_info, ptr %212, i32 0, i32 8, !dbg !4444
  %214 = load ptr, ptr %213, align 8, !dbg !4444
  %215 = icmp ne ptr %214, null, !dbg !4441
  br i1 %215, label %216, label %241, !dbg !4445

216:                                              ; preds = %210
  %217 = load ptr, ptr %2, align 8, !dbg !4446
  %218 = getelementptr inbounds %struct.app_ur_session, ptr %217, i32 0, i32 0, !dbg !4447
  %219 = getelementptr inbounds %struct.app_ur_conn_info, ptr %218, i32 0, i32 9, !dbg !4448
  %220 = load i32, ptr %219, align 8, !dbg !4448
  %221 = icmp ne i32 %220, 0, !dbg !4449
  br i1 %221, label %241, label %222, !dbg !4450

222:                                              ; preds = %216
  %223 = load ptr, ptr %2, align 8, !dbg !4451
  %224 = getelementptr inbounds %struct.app_ur_session, ptr %223, i32 0, i32 0, !dbg !4454
  %225 = getelementptr inbounds %struct.app_ur_conn_info, ptr %224, i32 0, i32 8, !dbg !4455
  %226 = load ptr, ptr %225, align 8, !dbg !4455
  %227 = call i32 @SSL_get_shutdown(ptr noundef %226), !dbg !4456
  %228 = and i32 %227, 1, !dbg !4457
  %229 = icmp ne i32 %228, 0, !dbg !4457
  br i1 %229, label %240, label %230, !dbg !4458

230:                                              ; preds = %222
  %231 = load ptr, ptr %2, align 8, !dbg !4459
  %232 = getelementptr inbounds %struct.app_ur_session, ptr %231, i32 0, i32 0, !dbg !4461
  %233 = getelementptr inbounds %struct.app_ur_conn_info, ptr %232, i32 0, i32 8, !dbg !4462
  %234 = load ptr, ptr %233, align 8, !dbg !4462
  call void @SSL_set_shutdown(ptr noundef %234, i32 noundef 2), !dbg !4463
  %235 = load ptr, ptr %2, align 8, !dbg !4464
  %236 = getelementptr inbounds %struct.app_ur_session, ptr %235, i32 0, i32 0, !dbg !4465
  %237 = getelementptr inbounds %struct.app_ur_conn_info, ptr %236, i32 0, i32 8, !dbg !4466
  %238 = load ptr, ptr %237, align 8, !dbg !4466
  %239 = call i32 @SSL_shutdown(ptr noundef %238), !dbg !4467
  br label %240, !dbg !4468

240:                                              ; preds = %230, %222
  br label %241, !dbg !4469

241:                                              ; preds = %240, %216, %210
  %242 = load ptr, ptr %2, align 8, !dbg !4470
  %243 = getelementptr inbounds %struct.app_ur_session, ptr %242, i32 0, i32 0, !dbg !4472
  %244 = getelementptr inbounds %struct.app_ur_conn_info, ptr %243, i32 0, i32 8, !dbg !4473
  %245 = load ptr, ptr %244, align 8, !dbg !4473
  %246 = icmp ne ptr %245, null, !dbg !4470
  br i1 %246, label %247, label %252, !dbg !4474

247:                                              ; preds = %241
  %248 = load ptr, ptr %2, align 8, !dbg !4475
  %249 = getelementptr inbounds %struct.app_ur_session, ptr %248, i32 0, i32 0, !dbg !4477
  %250 = getelementptr inbounds %struct.app_ur_conn_info, ptr %249, i32 0, i32 8, !dbg !4478
  %251 = load ptr, ptr %250, align 8, !dbg !4478
  call void @SSL_free(ptr noundef %251), !dbg !4479
  br label %252, !dbg !4480

252:                                              ; preds = %247, %241
  %253 = load ptr, ptr %2, align 8, !dbg !4481
  %254 = getelementptr inbounds %struct.app_ur_session, ptr %253, i32 0, i32 0, !dbg !4483
  %255 = getelementptr inbounds %struct.app_ur_conn_info, ptr %254, i32 0, i32 7, !dbg !4484
  %256 = load i32, ptr %255, align 8, !dbg !4484
  %257 = icmp sge i32 %256, 0, !dbg !4485
  br i1 %257, label %258, label %264, !dbg !4486

258:                                              ; preds = %252
  %259 = load ptr, ptr %2, align 8, !dbg !4487
  %260 = getelementptr inbounds %struct.app_ur_session, ptr %259, i32 0, i32 0, !dbg !4487
  %261 = getelementptr inbounds %struct.app_ur_conn_info, ptr %260, i32 0, i32 7, !dbg !4487
  %262 = load i32, ptr %261, align 8, !dbg !4487
  %263 = call i32 @close(i32 noundef %262), !dbg !4487
  br label %264, !dbg !4489

264:                                              ; preds = %258, %252
  %265 = load ptr, ptr %2, align 8, !dbg !4490
  %266 = getelementptr inbounds %struct.app_ur_session, ptr %265, i32 0, i32 0, !dbg !4491
  %267 = getelementptr inbounds %struct.app_ur_conn_info, ptr %266, i32 0, i32 7, !dbg !4492
  store i32 -1, ptr %267, align 8, !dbg !4493
  br label %268, !dbg !4494

268:                                              ; preds = %264, %1
  ret void, !dbg !4495
}

declare i32 @event_del(ptr noundef) #3

declare void @event_free(ptr noundef) #3

declare void @SSL_set_shutdown(ptr noundef, i32 noundef) #3

declare i32 @SSL_shutdown(ptr noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

declare i32 @printf(ptr noundef, ...) #3

declare i32 @stun_init_channel_message(i16 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) #3

declare void @stun_init_indication(i16 noundef zeroext, ptr noundef) #3

declare i32 @event_base_loopexit(ptr noundef, ptr noundef) #3

declare i32 @event_base_dispatch(ptr noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(none) }
attributes #13 = { nounwind willreturn memory(read) }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!498, !499, !500, !501, !502, !503, !504}
!llvm.ident = !{!505}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "client_event_base", scope: !2, file: !274, line: 56, type: !496, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !74, globals: !271, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/raj/coturn/src/apps/uclient/uclient.c", directory: "/home/raj/coturn/build", checksumkind: CSK_MD5, checksum: "6b93a5fc9ea2c6947cb569a85ab9f0f2")
!4 = !{!5, !13, !38, !44, !51, !61}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 47, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "src/apps/common/ns_turn_utils.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "74cb4019b1eb9d8e2b879df518b15a25")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "TURN_LOG_LEVEL_INFO", value: 0)
!10 = !DIEnumerator(name: "TURN_LOG_LEVEL_CONTROL", value: 1)
!11 = !DIEnumerator(name: "TURN_LOG_LEVEL_WARNING", value: 2)
!12 = !DIEnumerator(name: "TURN_LOG_LEVEL_ERROR", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 202, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "e3826be048699664d9ef7b080f62f2e0")
!15 = !{!16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37}
!16 = !DIEnumerator(name: "MSG_OOB", value: 1)
!17 = !DIEnumerator(name: "MSG_PEEK", value: 2)
!18 = !DIEnumerator(name: "MSG_DONTROUTE", value: 4)
!19 = !DIEnumerator(name: "MSG_TRYHARD", value: 4)
!20 = !DIEnumerator(name: "MSG_CTRUNC", value: 8)
!21 = !DIEnumerator(name: "MSG_PROXY", value: 16)
!22 = !DIEnumerator(name: "MSG_TRUNC", value: 32)
!23 = !DIEnumerator(name: "MSG_DONTWAIT", value: 64)
!24 = !DIEnumerator(name: "MSG_EOR", value: 128)
!25 = !DIEnumerator(name: "MSG_WAITALL", value: 256)
!26 = !DIEnumerator(name: "MSG_FIN", value: 512)
!27 = !DIEnumerator(name: "MSG_SYN", value: 1024)
!28 = !DIEnumerator(name: "MSG_CONFIRM", value: 2048)
!29 = !DIEnumerator(name: "MSG_RST", value: 4096)
!30 = !DIEnumerator(name: "MSG_ERRQUEUE", value: 8192)
!31 = !DIEnumerator(name: "MSG_NOSIGNAL", value: 16384)
!32 = !DIEnumerator(name: "MSG_MORE", value: 32768)
!33 = !DIEnumerator(name: "MSG_WAITFORONE", value: 65536)
!34 = !DIEnumerator(name: "MSG_BATCH", value: 262144)
!35 = !DIEnumerator(name: "MSG_ZEROCOPY", value: 67108864)
!36 = !DIEnumerator(name: "MSG_FASTOPEN", value: 536870912)
!37 = !DIEnumerator(name: "MSG_CMSG_CLOEXEC", value: 1073741824)
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_UR_STATE", file: !39, line: 51, baseType: !7, size: 32, elements: !40)
!39 = !DIFile(filename: "src/apps/uclient/session.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "d70192ffc41ca1767f7b9531a33c3705")
!40 = !{!41, !42, !43}
!41 = !DIEnumerator(name: "UR_STATE_UNKNOWN", value: 0)
!42 = !DIEnumerator(name: "UR_STATE_READY", value: 1)
!43 = !DIEnumerator(name: "UR_STATE_DONE", value: 2)
!44 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !45, line: 54, baseType: !7, size: 32, elements: !46)
!45 = !DIFile(filename: "src/client/ns_turn_msg.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "43c56357294df21a547ee0716fe3769d")
!46 = !{!47, !48, !49, !50}
!47 = !DIEnumerator(name: "TURN_CREDENTIALS_NONE", value: 0)
!48 = !DIEnumerator(name: "TURN_CREDENTIALS_LONG_TERM", value: 1)
!49 = !DIEnumerator(name: "TURN_CREDENTIALS_SHORT_TERM", value: 2)
!50 = !DIEnumerator(name: "TURN_CREDENTIALS_UNDEFINED", value: 3)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_SHATYPE", file: !52, line: 160, baseType: !53, size: 32, elements: !54)
!52 = !DIFile(filename: "src/client/ns_turn_msg_defs.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "4d8c44ae9e82b7a50b86805787352690")
!53 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!54 = !{!55, !56, !57, !58, !59, !60}
!55 = !DIEnumerator(name: "SHATYPE_ERROR", value: -1)
!56 = !DIEnumerator(name: "SHATYPE_DEFAULT", value: 0)
!57 = !DIEnumerator(name: "SHATYPE_SHA1", value: 0)
!58 = !DIEnumerator(name: "SHATYPE_SHA256", value: 1)
!59 = !DIEnumerator(name: "SHATYPE_SHA384", value: 2)
!60 = !DIEnumerator(name: "SHATYPE_SHA512", value: 3)
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_SOCKET_TYPE", file: !62, line: 85, baseType: !7, size: 32, elements: !63)
!62 = !DIFile(filename: "src/server/ns_turn_ioalib.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "c6bb568b11ce41f25b29a4464aa685c5")
!63 = !{!64, !65, !66, !67, !68, !69, !70, !71, !72, !73}
!64 = !DIEnumerator(name: "UNKNOWN_SOCKET", value: 0)
!65 = !DIEnumerator(name: "TCP_SOCKET", value: 6)
!66 = !DIEnumerator(name: "UDP_SOCKET", value: 17)
!67 = !DIEnumerator(name: "TLS_SOCKET", value: 56)
!68 = !DIEnumerator(name: "SCTP_SOCKET", value: 132)
!69 = !DIEnumerator(name: "TLS_SCTP_SOCKET", value: 133)
!70 = !DIEnumerator(name: "DTLS_SOCKET", value: 250)
!71 = !DIEnumerator(name: "TCP_SOCKET_PROXY", value: 253)
!72 = !DIEnumerator(name: "TENTATIVE_SCTP_SOCKET", value: 254)
!73 = !DIEnumerator(name: "TENTATIVE_TCP_SOCKET", value: 255)
!74 = !{!75, !53, !77, !78, !83, !7, !85, !242, !243, !123, !244, !245, !104, !246, !239, !247, !249, !250, !252, !253, !256, !258, !260, !263, !255, !265}
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!77 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !79, line: 24, baseType: !80)
!79 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !81, line: 38, baseType: !82)
!81 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!82 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !84, line: 46, baseType: !77)
!84 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "app_ur_session", file: !39, line: 122, baseType: !87)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !39, line: 97, size: 1064768, elements: !88)
!88 = !{!89, !202, !204, !205, !206, !207, !208, !209, !213, !214, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !241}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "pinfo", scope: !87, file: !39, line: 98, baseType: !90, size: 15552)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "app_ur_conn_info", file: !39, line: 95, baseType: !91)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !39, line: 71, size: 15552, elements: !92)
!92 = !{!93, !152, !156, !157, !158, !159, !160, !161, !162, !167, !168, !172, !173, !174, !178, !183, !184, !185, !196, !197, !198}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "local_addr", scope: !91, file: !39, line: 72, baseType: !94, size: 224)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_addr", file: !95, line: 48, baseType: !96)
!95 = !DIFile(filename: "src/client/ns_turn_ioaddr.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "6bb7c107d1e7937049c12f6d0dffd94c")
!96 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !95, line: 44, size: 224, elements: !97)
!97 = !{!98, !109, !129}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !96, file: !95, line: 45, baseType: !99, size: 128)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !14, line: 180, size: 128, elements: !100)
!100 = !{!101, !105}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !99, file: !14, line: 182, baseType: !102, size: 16)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !103, line: 28, baseType: !104)
!103 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "dd7f1d9dd6e26f88d1726905ed5d9ff5")
!104 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !99, file: !14, line: 183, baseType: !106, size: 112, offset: 16)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 112, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 14)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "s4", scope: !96, file: !95, line: 46, baseType: !110, size: 128)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !111, line: 245, size: 128, elements: !112)
!111 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "eb6560f10d4cfe9f30fea2c92b9da0fd")
!112 = !{!113, !114, !118, !125}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !110, file: !111, line: 247, baseType: !102, size: 16)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !110, file: !111, line: 248, baseType: !115, size: 16, offset: 16)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !111, line: 123, baseType: !116)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !79, line: 25, baseType: !117)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !81, line: 40, baseType: !104)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !110, file: !111, line: 249, baseType: !119, size: 32, offset: 32)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !111, line: 31, size: 32, elements: !120)
!120 = !{!121}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !119, file: !111, line: 33, baseType: !122, size: 32)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !111, line: 30, baseType: !123)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !79, line: 26, baseType: !124)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !81, line: 42, baseType: !7)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !110, file: !111, line: 252, baseType: !126, size: 64, offset: 64)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 64, elements: !127)
!127 = !{!128}
!128 = !DISubrange(count: 8)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "s6", scope: !96, file: !95, line: 47, baseType: !130, size: 224)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !111, line: 260, size: 224, elements: !131)
!131 = !{!132, !133, !134, !135, !151}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_family", scope: !130, file: !111, line: 262, baseType: !102, size: 16)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_port", scope: !130, file: !111, line: 263, baseType: !115, size: 16, offset: 16)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_flowinfo", scope: !130, file: !111, line: 264, baseType: !123, size: 32, offset: 32)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !130, file: !111, line: 265, baseType: !136, size: 128, offset: 64)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !111, line: 219, size: 128, elements: !137)
!137 = !{!138}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !136, file: !111, line: 226, baseType: !139, size: 128)
!139 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !136, file: !111, line: 221, size: 128, elements: !140)
!140 = !{!141, !145, !147}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !139, file: !111, line: 223, baseType: !142, size: 128)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 128, elements: !143)
!143 = !{!144}
!144 = !DISubrange(count: 16)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !139, file: !111, line: 224, baseType: !146, size: 128)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 128, elements: !127)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !139, file: !111, line: 225, baseType: !148, size: 128)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 128, elements: !149)
!149 = !{!150}
!150 = !DISubrange(count: 4)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_scope_id", scope: !130, file: !111, line: 266, baseType: !123, size: 32, offset: 192)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "lsaddr", scope: !91, file: !39, line: 73, baseType: !153, size: 1032, offset: 224)
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 1032, elements: !154)
!154 = !{!155}
!155 = !DISubrange(count: 129)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "remote_addr", scope: !91, file: !39, line: 74, baseType: !94, size: 224, offset: 1280)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "rsaddr", scope: !91, file: !39, line: 75, baseType: !153, size: 1032, offset: 1504)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "ifname", scope: !91, file: !39, line: 76, baseType: !153, size: 1032, offset: 2536)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "peer_addr", scope: !91, file: !39, line: 77, baseType: !94, size: 224, offset: 3584)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "relay_addr", scope: !91, file: !39, line: 78, baseType: !94, size: 224, offset: 3808)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !91, file: !39, line: 79, baseType: !53, size: 32, offset: 4032)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "ssl", scope: !91, file: !39, line: 80, baseType: !163, size: 64, offset: 4096)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL", file: !165, line: 184, baseType: !166)
!165 = !DIFile(filename: "/usr/include/openssl/types.h", directory: "", checksumkind: CSK_MD5, checksum: "44f1236065e4ee65cf4cd545c3e12ab9")
!166 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_st", file: !165, line: 184, flags: DIFlagFwdDecl)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "broken", scope: !91, file: !39, line: 81, baseType: !53, size: 32, offset: 4160)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nonce", scope: !91, file: !39, line: 82, baseType: !169, size: 1024, offset: 4192)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 1024, elements: !170)
!170 = !{!171}
!171 = !DISubrange(count: 128)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "realm", scope: !91, file: !39, line: 83, baseType: !169, size: 1024, offset: 5216)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "oauth", scope: !91, file: !39, line: 85, baseType: !53, size: 32, offset: 6240)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "server_name", scope: !91, file: !39, line: 86, baseType: !175, size: 8208, offset: 6272)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 8208, elements: !176)
!176 = !{!177}
!177 = !DISubrange(count: 1026)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !91, file: !39, line: 87, baseType: !179, size: 512, offset: 14480)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "hmackey_t", file: !45, line: 64, baseType: !180)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 512, elements: !181)
!181 = !{!182}
!182 = !DISubrange(count: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "key_set", scope: !91, file: !39, line: 88, baseType: !53, size: 32, offset: 15008)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "cok", scope: !91, file: !39, line: 89, baseType: !53, size: 32, offset: 15040)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_conn", scope: !91, file: !39, line: 91, baseType: !186, size: 64, offset: 15104)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "app_tcp_conn_info", file: !39, line: 69, baseType: !189)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !39, line: 61, size: 448, elements: !190)
!190 = !{!191, !192, !193, !194, !195}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !189, file: !39, line: 64, baseType: !123, size: 32)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_data_local_addr", scope: !189, file: !39, line: 65, baseType: !94, size: 224, offset: 32)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_data_fd", scope: !189, file: !39, line: 66, baseType: !53, size: 32, offset: 256)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_data_ssl", scope: !189, file: !39, line: 67, baseType: !163, size: 64, offset: 320)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_data_bound", scope: !189, file: !39, line: 68, baseType: !53, size: 32, offset: 384)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_conn_number", scope: !91, file: !39, line: 92, baseType: !83, size: 64, offset: 15168)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "is_peer", scope: !91, file: !39, line: 93, baseType: !53, size: 32, offset: 15232)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "s_mobile_id", scope: !91, file: !39, line: 94, baseType: !199, size: 264, offset: 15264)
!199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 264, elements: !200)
!200 = !{!201}
!201 = !DISubrange(count: 33)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !87, file: !39, line: 99, baseType: !203, size: 32, offset: 15552)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "UR_STATE", file: !39, line: 57, baseType: !38)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !87, file: !39, line: 100, baseType: !7, size: 32, offset: 15584)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "chnum", scope: !87, file: !39, line: 101, baseType: !116, size: 16, offset: 15616)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "wait_cycles", scope: !87, file: !39, line: 102, baseType: !53, size: 32, offset: 15648)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "timer_cycle", scope: !87, file: !39, line: 103, baseType: !53, size: 32, offset: 15680)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "completed", scope: !87, file: !39, line: 104, baseType: !53, size: 32, offset: 15712)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "input_ev", scope: !87, file: !39, line: 105, baseType: !210, size: 64, offset: 15744)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DICompositeType(tag: DW_TAG_structure_type, name: "event", file: !212, line: 276, flags: DIFlagFwdDecl)
!212 = !DIFile(filename: "/usr/include/event2/event.h", directory: "", checksumkind: CSK_MD5, checksum: "90db4fa73456052afa8984291985dfd5")
!213 = !DIDerivedType(tag: DW_TAG_member, name: "input_tcp_data_ev", scope: !87, file: !39, line: 106, baseType: !210, size: 64, offset: 15808)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "in_buffer", scope: !87, file: !39, line: 107, baseType: !215, size: 524224, offset: 15872)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "stun_buffer", file: !216, line: 48, baseType: !217)
!216 = !DIFile(filename: "src/apps/common/stun_buffer.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "cc7948905c033a0fb654060699acf9e2")
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_stun_buffer", file: !216, line: 42, size: 524224, elements: !218)
!218 = !{!219, !221, !225, !226, !227}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !217, file: !216, line: 43, baseType: !220, size: 32)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 32, elements: !149)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !217, file: !216, line: 44, baseType: !222, size: 524056, offset: 32)
!222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 524056, elements: !223)
!223 = !{!224}
!224 = !DISubrange(count: 65507)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !217, file: !216, line: 45, baseType: !83, size: 64, offset: 524096)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !217, file: !216, line: 46, baseType: !116, size: 16, offset: 524160)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "coffset", scope: !217, file: !216, line: 47, baseType: !78, size: 8, offset: 524176)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "out_buffer", scope: !87, file: !39, line: 108, baseType: !215, size: 524224, offset: 540096)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "refresh_time", scope: !87, file: !39, line: 109, baseType: !123, size: 32, offset: 1064320)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "finished_time", scope: !87, file: !39, line: 110, baseType: !123, size: 32, offset: 1064352)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "tot_msgnum", scope: !87, file: !39, line: 112, baseType: !53, size: 32, offset: 1064384)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "wmsgnum", scope: !87, file: !39, line: 113, baseType: !53, size: 32, offset: 1064416)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "rmsgnum", scope: !87, file: !39, line: 114, baseType: !53, size: 32, offset: 1064448)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "recvmsgnum", scope: !87, file: !39, line: 115, baseType: !53, size: 32, offset: 1064480)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "recvtimems", scope: !87, file: !39, line: 116, baseType: !123, size: 32, offset: 1064512)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "to_send_timems", scope: !87, file: !39, line: 117, baseType: !123, size: 32, offset: 1064544)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "loss", scope: !87, file: !39, line: 119, baseType: !83, size: 64, offset: 1064576)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !87, file: !39, line: 120, baseType: !239, size: 64, offset: 1064640)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !79, line: 27, baseType: !240)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !81, line: 45, baseType: !77)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "jitter", scope: !87, file: !39, line: 121, baseType: !239, size: 64, offset: 1064704)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!244 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!245 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_time_t", file: !248, line: 108, baseType: !123)
!248 = !DIFile(filename: "src/ns_turn_defs.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "126e9c9d0b914de7fdf6162f77453397")
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fd_mask", file: !254, line: 49, baseType: !255)
!254 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/select.h", directory: "", checksumkind: CSK_MD5, checksum: "5ab727ca201ba12ae255687119da3fa7")
!255 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !123)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !261, line: 27, baseType: !262)
!261 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !81, line: 44, baseType: !255)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !261, line: 26, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !81, line: 41, baseType: !53)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "message_info", file: !39, line: 129, baseType: !267)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_message_info", file: !39, line: 126, size: 128, elements: !268)
!268 = !{!269, !270}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "msgnum", scope: !267, file: !39, line: 127, baseType: !53, size: 32)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "mstime", scope: !267, file: !39, line: 128, baseType: !239, size: 64, offset: 64)
!271 = !{!0, !272, !275, !280, !285, !290, !295, !300, !302, !307, !312, !317, !322, !327, !332, !334, !339, !344, !347, !352, !357, !362, !365, !370, !372, !374, !379, !384, !386, !388, !393, !398, !403, !405, !407, !412, !417, !422, !424, !426, !428, !434, !436, !441, !446, !451, !456, !461, !464, !466, !468, !470, !472, !474, !476, !478, !480, !482, !484, !486, !488, !490, !492, !494}
!272 = !DIGlobalVariableExpression(var: !273, expr: !DIExpression())
!273 = distinct !DIGlobalVariable(name: "RTP_PACKET_INTERVAL", scope: !2, file: !274, line: 75, type: !53, isLocal: false, isDefinition: true)
!274 = !DIFile(filename: "src/apps/uclient/uclient.c", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "6b93a5fc9ea2c6947cb569a85ab9f0f2")
!275 = !DIGlobalVariableExpression(var: !276, expr: !DIExpression())
!276 = distinct !DIGlobalVariable(scope: null, file: !274, line: 219, type: !277, isLocal: true, isDefinition: true)
!277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 520, elements: !278)
!278 = !{!279}
!279 = !DISubrange(count: 65)
!280 = !DIGlobalVariableExpression(var: !281, expr: !DIExpression())
!281 = distinct !DIGlobalVariable(scope: null, file: !274, line: 241, type: !282, isLocal: true, isDefinition: true)
!282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 176, elements: !283)
!283 = !{!284}
!284 = !DISubrange(count: 22)
!285 = !DIGlobalVariableExpression(var: !286, expr: !DIExpression())
!286 = distinct !DIGlobalVariable(scope: null, file: !274, line: 261, type: !287, isLocal: true, isDefinition: true)
!287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 240, elements: !288)
!288 = !{!289}
!289 = !DISubrange(count: 30)
!290 = !DIGlobalVariableExpression(var: !291, expr: !DIExpression())
!291 = distinct !DIGlobalVariable(scope: null, file: !274, line: 267, type: !292, isLocal: true, isDefinition: true)
!292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 152, elements: !293)
!293 = !{!294}
!294 = !DISubrange(count: 19)
!295 = !DIGlobalVariableExpression(var: !296, expr: !DIExpression())
!296 = distinct !DIGlobalVariable(scope: null, file: !274, line: 270, type: !297, isLocal: true, isDefinition: true)
!297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 72, elements: !298)
!298 = !{!299}
!299 = !DISubrange(count: 9)
!300 = !DIGlobalVariableExpression(var: !301, expr: !DIExpression())
!301 = distinct !DIGlobalVariable(scope: null, file: !274, line: 277, type: !199, isLocal: true, isDefinition: true)
!302 = !DIGlobalVariableExpression(var: !303, expr: !DIExpression())
!303 = distinct !DIGlobalVariable(scope: null, file: !274, line: 435, type: !304, isLocal: true, isDefinition: true)
!304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 224, elements: !305)
!305 = !{!306}
!306 = !DISubrange(count: 28)
!307 = !DIGlobalVariableExpression(var: !308, expr: !DIExpression())
!308 = distinct !DIGlobalVariable(scope: null, file: !274, line: 459, type: !309, isLocal: true, isDefinition: true)
!309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 232, elements: !310)
!310 = !{!311}
!311 = !DISubrange(count: 29)
!312 = !DIGlobalVariableExpression(var: !313, expr: !DIExpression())
!313 = distinct !DIGlobalVariable(scope: null, file: !274, line: 474, type: !314, isLocal: true, isDefinition: true)
!314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 400, elements: !315)
!315 = !{!316}
!316 = !DISubrange(count: 50)
!317 = !DIGlobalVariableExpression(var: !318, expr: !DIExpression())
!318 = distinct !DIGlobalVariable(scope: null, file: !274, line: 629, type: !319, isLocal: true, isDefinition: true)
!319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 560, elements: !320)
!320 = !{!321}
!321 = !DISubrange(count: 70)
!322 = !DIGlobalVariableExpression(var: !323, expr: !DIExpression())
!323 = distinct !DIGlobalVariable(scope: null, file: !274, line: 634, type: !324, isLocal: true, isDefinition: true)
!324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 368, elements: !325)
!325 = !{!326}
!326 = !DISubrange(count: 46)
!327 = !DIGlobalVariableExpression(var: !328, expr: !DIExpression())
!328 = distinct !DIGlobalVariable(scope: null, file: !274, line: 1483, type: !329, isLocal: true, isDefinition: true)
!329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 208, elements: !330)
!330 = !{!331}
!331 = !DISubrange(count: 26)
!332 = !DIGlobalVariableExpression(var: !333, expr: !DIExpression())
!333 = distinct !DIGlobalVariable(scope: null, file: !274, line: 1514, type: !287, isLocal: true, isDefinition: true)
!334 = !DIGlobalVariableExpression(var: !335, expr: !DIExpression())
!335 = distinct !DIGlobalVariable(scope: null, file: !274, line: 1520, type: !336, isLocal: true, isDefinition: true)
!336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 408, elements: !337)
!337 = !{!338}
!338 = !DISubrange(count: 51)
!339 = !DIGlobalVariableExpression(var: !340, expr: !DIExpression())
!340 = distinct !DIGlobalVariable(scope: null, file: !274, line: 1549, type: !341, isLocal: true, isDefinition: true)
!341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 768, elements: !342)
!342 = !{!343}
!343 = !DISubrange(count: 96)
!344 = !DIGlobalVariableExpression(var: !345, expr: !DIExpression())
!345 = distinct !DIGlobalVariable(scope: null, file: !274, line: 1550, type: !346, isLocal: true, isDefinition: true)
!346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !259, size: 112, elements: !107)
!347 = !DIGlobalVariableExpression(var: !348, expr: !DIExpression())
!348 = distinct !DIGlobalVariable(scope: null, file: !274, line: 1559, type: !349, isLocal: true, isDefinition: true)
!349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 336, elements: !350)
!350 = !{!351}
!351 = !DISubrange(count: 42)
!352 = !DIGlobalVariableExpression(var: !353, expr: !DIExpression())
!353 = distinct !DIGlobalVariable(scope: null, file: !274, line: 1565, type: !354, isLocal: true, isDefinition: true)
!354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 384, elements: !355)
!355 = !{!356}
!356 = !DISubrange(count: 48)
!357 = !DIGlobalVariableExpression(var: !358, expr: !DIExpression())
!358 = distinct !DIGlobalVariable(scope: null, file: !274, line: 1578, type: !359, isLocal: true, isDefinition: true)
!359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 216, elements: !360)
!360 = !{!361}
!361 = !DISubrange(count: 27)
!362 = !DIGlobalVariableExpression(var: !363, expr: !DIExpression())
!363 = distinct !DIGlobalVariable(scope: null, file: !274, line: 1580, type: !364, isLocal: true, isDefinition: true)
!364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 512, elements: !181)
!365 = !DIGlobalVariableExpression(var: !366, expr: !DIExpression())
!366 = distinct !DIGlobalVariable(scope: null, file: !274, line: 1583, type: !367, isLocal: true, isDefinition: true)
!367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 480, elements: !368)
!368 = !{!369}
!369 = !DISubrange(count: 60)
!370 = !DIGlobalVariableExpression(var: !371, expr: !DIExpression())
!371 = distinct !DIGlobalVariable(scope: null, file: !274, line: 1587, type: !314, isLocal: true, isDefinition: true)
!372 = !DIGlobalVariableExpression(var: !373, expr: !DIExpression())
!373 = distinct !DIGlobalVariable(scope: null, file: !274, line: 1641, type: !282, isLocal: true, isDefinition: true)
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(scope: null, file: !274, line: 1653, type: !376, isLocal: true, isDefinition: true)
!376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 304, elements: !377)
!377 = !{!378}
!378 = !DISubrange(count: 38)
!379 = !DIGlobalVariableExpression(var: !380, expr: !DIExpression())
!380 = distinct !DIGlobalVariable(scope: null, file: !274, line: 1662, type: !381, isLocal: true, isDefinition: true)
!381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 424, elements: !382)
!382 = !{!383}
!383 = !DISubrange(count: 53)
!384 = !DIGlobalVariableExpression(var: !385, expr: !DIExpression())
!385 = distinct !DIGlobalVariable(scope: null, file: !274, line: 1694, type: !336, isLocal: true, isDefinition: true)
!386 = !DIGlobalVariableExpression(var: !387, expr: !DIExpression())
!387 = distinct !DIGlobalVariable(name: "tot_send_dropped", scope: !2, file: !274, line: 54, type: !239, isLocal: true, isDefinition: true)
!388 = !DIGlobalVariableExpression(var: !389, expr: !DIExpression())
!389 = distinct !DIGlobalVariable(scope: null, file: !274, line: 660, type: !390, isLocal: true, isDefinition: true)
!390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 136, elements: !391)
!391 = !{!392}
!392 = !DISubrange(count: 17)
!393 = !DIGlobalVariableExpression(var: !394, expr: !DIExpression())
!394 = distinct !DIGlobalVariable(scope: null, file: !274, line: 666, type: !395, isLocal: true, isDefinition: true)
!395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 120, elements: !396)
!396 = !{!397}
!397 = !DISubrange(count: 15)
!398 = !DIGlobalVariableExpression(var: !399, expr: !DIExpression())
!399 = distinct !DIGlobalVariable(scope: null, file: !274, line: 712, type: !400, isLocal: true, isDefinition: true)
!400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 472, elements: !401)
!401 = !{!402}
!402 = !DISubrange(count: 59)
!403 = !DIGlobalVariableExpression(var: !404, expr: !DIExpression())
!404 = distinct !DIGlobalVariable(scope: null, file: !274, line: 719, type: !336, isLocal: true, isDefinition: true)
!405 = !DIGlobalVariableExpression(var: !406, expr: !DIExpression())
!406 = distinct !DIGlobalVariable(scope: null, file: !274, line: 726, type: !367, isLocal: true, isDefinition: true)
!407 = !DIGlobalVariableExpression(var: !408, expr: !DIExpression())
!408 = distinct !DIGlobalVariable(scope: null, file: !274, line: 774, type: !409, isLocal: true, isDefinition: true)
!409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 376, elements: !410)
!410 = !{!411}
!411 = !DISubrange(count: 47)
!412 = !DIGlobalVariableExpression(var: !413, expr: !DIExpression())
!413 = distinct !DIGlobalVariable(scope: null, file: !274, line: 784, type: !414, isLocal: true, isDefinition: true)
!414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 528, elements: !415)
!415 = !{!416}
!416 = !DISubrange(count: 66)
!417 = !DIGlobalVariableExpression(var: !418, expr: !DIExpression())
!418 = distinct !DIGlobalVariable(scope: null, file: !274, line: 795, type: !419, isLocal: true, isDefinition: true)
!419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 360, elements: !420)
!420 = !{!421}
!421 = !DISubrange(count: 45)
!422 = !DIGlobalVariableExpression(var: !423, expr: !DIExpression())
!423 = distinct !DIGlobalVariable(name: "verbose_packets", scope: !2, file: !274, line: 44, type: !53, isLocal: true, isDefinition: true)
!424 = !DIGlobalVariableExpression(var: !425, expr: !DIExpression())
!425 = distinct !DIGlobalVariable(name: "total_clients", scope: !2, file: !274, line: 66, type: !53, isLocal: true, isDefinition: true)
!426 = !DIGlobalVariableExpression(var: !427, expr: !DIExpression())
!427 = distinct !DIGlobalVariable(name: "elems", scope: !2, file: !274, line: 69, type: !242, isLocal: true, isDefinition: true)
!428 = !DIGlobalVariableExpression(var: !429, expr: !DIExpression())
!429 = distinct !DIGlobalVariable(name: "start_sec", scope: !430, file: !274, line: 96, type: !239, isLocal: true, isDefinition: true)
!430 = distinct !DISubprogram(name: "__turn_getMSTime", scope: !274, file: !274, line: 95, type: !431, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !433)
!431 = !DISubroutineType(types: !432)
!432 = !{null}
!433 = !{}
!434 = !DIGlobalVariableExpression(var: !435, expr: !DIExpression())
!435 = distinct !DIGlobalVariable(name: "current_time", scope: !2, file: !274, line: 61, type: !239, isLocal: true, isDefinition: true)
!436 = !DIGlobalVariableExpression(var: !437, expr: !DIExpression())
!437 = distinct !DIGlobalVariable(name: "buffer_to_send", scope: !2, file: !274, line: 64, type: !438, isLocal: true, isDefinition: true)
!438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 524288, elements: !439)
!439 = !{!440}
!440 = !DISubrange(count: 65536)
!441 = !DIGlobalVariableExpression(var: !442, expr: !DIExpression())
!442 = distinct !DIGlobalVariable(scope: null, file: !274, line: 857, type: !443, isLocal: true, isDefinition: true)
!443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 256, elements: !444)
!444 = !{!445}
!445 = !DISubrange(count: 32)
!446 = !DIGlobalVariableExpression(var: !447, expr: !DIExpression())
!447 = distinct !DIGlobalVariable(scope: null, file: !274, line: 896, type: !448, isLocal: true, isDefinition: true)
!448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 320, elements: !449)
!449 = !{!450}
!450 = !DISubrange(count: 40)
!451 = !DIGlobalVariableExpression(var: !452, expr: !DIExpression())
!452 = distinct !DIGlobalVariable(scope: null, file: !274, line: 896, type: !453, isLocal: true, isDefinition: true)
!453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !259, size: 104, elements: !454)
!454 = !{!455}
!455 = !DISubrange(count: 13)
!456 = !DIGlobalVariableExpression(var: !457, expr: !DIExpression())
!457 = distinct !DIGlobalVariable(scope: null, file: !274, line: 917, type: !458, isLocal: true, isDefinition: true)
!458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 144, elements: !459)
!459 = !{!460}
!460 = !DISubrange(count: 18)
!461 = !DIGlobalVariableExpression(var: !462, expr: !DIExpression())
!462 = distinct !DIGlobalVariable(scope: null, file: !274, line: 927, type: !463, isLocal: true, isDefinition: true)
!463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 128, elements: !143)
!464 = !DIGlobalVariableExpression(var: !465, expr: !DIExpression())
!465 = distinct !DIGlobalVariable(name: "current_mstime", scope: !2, file: !274, line: 62, type: !239, isLocal: true, isDefinition: true)
!466 = !DIGlobalVariableExpression(var: !467, expr: !DIExpression())
!467 = distinct !DIGlobalVariable(name: "tot_messages", scope: !2, file: !274, line: 49, type: !123, isLocal: true, isDefinition: true)
!468 = !DIGlobalVariableExpression(var: !469, expr: !DIExpression())
!469 = distinct !DIGlobalVariable(name: "start_full_timer", scope: !2, file: !274, line: 48, type: !53, isLocal: true, isDefinition: true)
!470 = !DIGlobalVariableExpression(var: !471, expr: !DIExpression())
!471 = distinct !DIGlobalVariable(name: "current_clients_number", scope: !2, file: !274, line: 46, type: !83, isLocal: true, isDefinition: true)
!472 = !DIGlobalVariableExpression(var: !473, expr: !DIExpression())
!473 = distinct !DIGlobalVariable(name: "show_statistics", scope: !2, file: !274, line: 91, type: !53, isLocal: true, isDefinition: true)
!474 = !DIGlobalVariableExpression(var: !475, expr: !DIExpression())
!475 = distinct !DIGlobalVariable(name: "tot_send_messages", scope: !2, file: !274, line: 50, type: !123, isLocal: true, isDefinition: true)
!476 = !DIGlobalVariableExpression(var: !477, expr: !DIExpression())
!477 = distinct !DIGlobalVariable(name: "tot_recv_messages", scope: !2, file: !274, line: 52, type: !123, isLocal: true, isDefinition: true)
!478 = !DIGlobalVariableExpression(var: !479, expr: !DIExpression())
!479 = distinct !DIGlobalVariable(name: "tot_send_bytes", scope: !2, file: !274, line: 51, type: !239, isLocal: true, isDefinition: true)
!480 = !DIGlobalVariableExpression(var: !481, expr: !DIExpression())
!481 = distinct !DIGlobalVariable(name: "tot_recv_bytes", scope: !2, file: !274, line: 53, type: !239, isLocal: true, isDefinition: true)
!482 = !DIGlobalVariableExpression(var: !483, expr: !DIExpression())
!483 = distinct !DIGlobalVariable(name: "total_loss", scope: !2, file: !274, line: 81, type: !239, isLocal: true, isDefinition: true)
!484 = !DIGlobalVariableExpression(var: !485, expr: !DIExpression())
!485 = distinct !DIGlobalVariable(name: "total_latency", scope: !2, file: !274, line: 83, type: !239, isLocal: true, isDefinition: true)
!486 = !DIGlobalVariableExpression(var: !487, expr: !DIExpression())
!487 = distinct !DIGlobalVariable(name: "min_latency", scope: !2, file: !274, line: 85, type: !239, isLocal: true, isDefinition: true)
!488 = !DIGlobalVariableExpression(var: !489, expr: !DIExpression())
!489 = distinct !DIGlobalVariable(name: "max_latency", scope: !2, file: !274, line: 86, type: !239, isLocal: true, isDefinition: true)
!490 = !DIGlobalVariableExpression(var: !491, expr: !DIExpression())
!491 = distinct !DIGlobalVariable(name: "total_jitter", scope: !2, file: !274, line: 82, type: !239, isLocal: true, isDefinition: true)
!492 = !DIGlobalVariableExpression(var: !493, expr: !DIExpression())
!493 = distinct !DIGlobalVariable(name: "min_jitter", scope: !2, file: !274, line: 87, type: !239, isLocal: true, isDefinition: true)
!494 = !DIGlobalVariableExpression(var: !495, expr: !DIExpression())
!495 = distinct !DIGlobalVariable(name: "max_jitter", scope: !2, file: !274, line: 88, type: !239, isLocal: true, isDefinition: true)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DICompositeType(tag: DW_TAG_structure_type, name: "event_base", file: !212, line: 217, flags: DIFlagFwdDecl)
!498 = !{i32 7, !"Dwarf Version", i32 5}
!499 = !{i32 2, !"Debug Info Version", i32 3}
!500 = !{i32 1, !"wchar_size", i32 4}
!501 = !{i32 8, !"PIC Level", i32 2}
!502 = !{i32 7, !"PIE Level", i32 2}
!503 = !{i32 7, !"uwtable", i32 2}
!504 = !{i32 7, !"frame-pointer", i32 2}
!505 = !{!"clang version 16.0.0"}
!506 = distinct !DISubprogram(name: "send_buffer", scope: !274, file: !274, line: 191, type: !507, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !433)
!507 = !DISubroutineType(types: !508)
!508 = !{!53, !509, !510, !53, !187}
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!511 = !DILocalVariable(name: "clnet_info", arg: 1, scope: !506, file: !274, line: 191, type: !509)
!512 = !DILocation(line: 191, column: 35, scope: !506)
!513 = !DILocalVariable(name: "message", arg: 2, scope: !506, file: !274, line: 191, type: !510)
!514 = !DILocation(line: 191, column: 60, scope: !506)
!515 = !DILocalVariable(name: "data_connection", arg: 3, scope: !506, file: !274, line: 191, type: !53)
!516 = !DILocation(line: 191, column: 73, scope: !506)
!517 = !DILocalVariable(name: "atc", arg: 4, scope: !506, file: !274, line: 191, type: !187)
!518 = !DILocation(line: 191, column: 109, scope: !506)
!519 = !DILocalVariable(name: "rc", scope: !506, file: !274, line: 194, type: !53)
!520 = !DILocation(line: 194, column: 6, scope: !506)
!521 = !DILocalVariable(name: "ret", scope: !506, file: !274, line: 195, type: !53)
!522 = !DILocation(line: 195, column: 6, scope: !506)
!523 = !DILocalVariable(name: "buffer", scope: !506, file: !274, line: 197, type: !75)
!524 = !DILocation(line: 197, column: 8, scope: !506)
!525 = !DILocation(line: 197, column: 26, scope: !506)
!526 = !DILocation(line: 197, column: 35, scope: !506)
!527 = !DILocation(line: 197, column: 25, scope: !506)
!528 = !DILocation(line: 199, column: 5, scope: !529)
!529 = distinct !DILexicalBlock(scope: !506, file: !274, line: 199, column: 5)
!530 = !DILocation(line: 199, column: 28, scope: !529)
!531 = !DILocation(line: 199, column: 32, scope: !529)
!532 = !DILocation(line: 199, column: 41, scope: !529)
!533 = !DILocation(line: 199, column: 44, scope: !529)
!534 = !DILocation(line: 199, column: 5, scope: !506)
!535 = !DILocation(line: 200, column: 6, scope: !536)
!536 = distinct !DILexicalBlock(scope: !537, file: !274, line: 200, column: 6)
!537 = distinct !DILexicalBlock(scope: !529, file: !274, line: 199, column: 49)
!538 = !DILocation(line: 200, column: 14, scope: !536)
!539 = !DILocation(line: 200, column: 18, scope: !536)
!540 = !DILocation(line: 200, column: 6, scope: !537)
!541 = !DILocalVariable(name: "np", scope: !542, file: !274, line: 201, type: !53)
!542 = distinct !DILexicalBlock(scope: !536, file: !274, line: 200, column: 24)
!543 = !DILocation(line: 201, column: 8, scope: !542)
!544 = !DILocation(line: 201, column: 34, scope: !542)
!545 = !DILocation(line: 201, column: 42, scope: !542)
!546 = !DILocation(line: 201, column: 13, scope: !542)
!547 = !DILocation(line: 202, column: 4, scope: !542)
!548 = !DILocation(line: 202, column: 12, scope: !542)
!549 = !DILocation(line: 202, column: 14, scope: !542)
!550 = !DILocalVariable(name: "pos", scope: !551, file: !274, line: 203, type: !53)
!551 = distinct !DILexicalBlock(scope: !542, file: !274, line: 202, column: 18)
!552 = !DILocation(line: 203, column: 9, scope: !551)
!553 = !DILocation(line: 203, column: 36, scope: !551)
!554 = !DILocation(line: 203, column: 60, scope: !551)
!555 = !DILocation(line: 203, column: 69, scope: !551)
!556 = !DILocation(line: 203, column: 44, scope: !551)
!557 = !DILocation(line: 203, column: 15, scope: !551)
!558 = !DILocalVariable(name: "val", scope: !551, file: !274, line: 204, type: !53)
!559 = !DILocation(line: 204, column: 9, scope: !551)
!560 = !DILocation(line: 204, column: 36, scope: !551)
!561 = !DILocation(line: 204, column: 44, scope: !551)
!562 = !DILocation(line: 204, column: 15, scope: !551)
!563 = !DILocation(line: 205, column: 32, scope: !551)
!564 = !DILocation(line: 205, column: 23, scope: !551)
!565 = !DILocation(line: 205, column: 5, scope: !551)
!566 = !DILocation(line: 205, column: 14, scope: !551)
!567 = !DILocation(line: 205, column: 18, scope: !551)
!568 = !DILocation(line: 205, column: 22, scope: !551)
!569 = distinct !{!569, !547, !570, !571}
!570 = !DILocation(line: 206, column: 4, scope: !542)
!571 = !{!"llvm.loop.mustprogress"}
!572 = !DILocation(line: 207, column: 3, scope: !542)
!573 = !DILocation(line: 208, column: 2, scope: !537)
!574 = !DILocalVariable(name: "ssl", scope: !506, file: !274, line: 210, type: !163)
!575 = !DILocation(line: 210, column: 7, scope: !506)
!576 = !DILocation(line: 210, column: 13, scope: !506)
!577 = !DILocation(line: 210, column: 25, scope: !506)
!578 = !DILocalVariable(name: "fd", scope: !506, file: !274, line: 211, type: !53)
!579 = !DILocation(line: 211, column: 17, scope: !506)
!580 = !DILocation(line: 211, column: 22, scope: !506)
!581 = !DILocation(line: 211, column: 34, scope: !506)
!582 = !DILocation(line: 213, column: 5, scope: !583)
!583 = distinct !DILexicalBlock(scope: !506, file: !274, line: 213, column: 5)
!584 = !DILocation(line: 213, column: 5, scope: !506)
!585 = !DILocation(line: 214, column: 7, scope: !586)
!586 = distinct !DILexicalBlock(scope: !587, file: !274, line: 214, column: 7)
!587 = distinct !DILexicalBlock(scope: !583, file: !274, line: 213, column: 22)
!588 = !DILocation(line: 214, column: 7, scope: !587)
!589 = !DILocation(line: 215, column: 12, scope: !590)
!590 = distinct !DILexicalBlock(scope: !586, file: !274, line: 214, column: 12)
!591 = !DILocation(line: 215, column: 17, scope: !590)
!592 = !DILocation(line: 215, column: 10, scope: !590)
!593 = !DILocation(line: 216, column: 11, scope: !590)
!594 = !DILocation(line: 216, column: 16, scope: !590)
!595 = !DILocation(line: 216, column: 9, scope: !590)
!596 = !DILocation(line: 217, column: 4, scope: !590)
!597 = !DILocation(line: 217, column: 14, scope: !598)
!598 = distinct !DILexicalBlock(scope: !586, file: !274, line: 217, column: 14)
!599 = !DILocation(line: 217, column: 14, scope: !586)
!600 = !DILocation(line: 219, column: 80, scope: !601)
!601 = distinct !DILexicalBlock(scope: !598, file: !274, line: 217, column: 29)
!602 = !DILocation(line: 219, column: 89, scope: !601)
!603 = !DILocation(line: 219, column: 74, scope: !601)
!604 = !DILocation(line: 218, column: 6, scope: !601)
!605 = !DILocation(line: 220, column: 6, scope: !601)
!606 = !DILocation(line: 222, column: 2, scope: !587)
!607 = !DILocation(line: 224, column: 6, scope: !608)
!608 = distinct !DILexicalBlock(scope: !506, file: !274, line: 224, column: 6)
!609 = !DILocation(line: 224, column: 6, scope: !506)
!610 = !DILocalVariable(name: "message_sent", scope: !611, file: !274, line: 226, type: !53)
!611 = distinct !DILexicalBlock(scope: !608, file: !274, line: 224, column: 11)
!612 = !DILocation(line: 226, column: 7, scope: !611)
!613 = !DILocation(line: 227, column: 3, scope: !611)
!614 = !DILocation(line: 227, column: 11, scope: !611)
!615 = !DILocation(line: 227, column: 10, scope: !611)
!616 = !DILocation(line: 229, column: 25, scope: !617)
!617 = distinct !DILexicalBlock(scope: !618, file: !274, line: 229, column: 8)
!618 = distinct !DILexicalBlock(scope: !611, file: !274, line: 227, column: 25)
!619 = !DILocation(line: 229, column: 8, scope: !617)
!620 = !DILocation(line: 229, column: 8, scope: !618)
!621 = !DILocation(line: 230, column: 5, scope: !622)
!622 = distinct !DILexicalBlock(scope: !617, file: !274, line: 229, column: 31)
!623 = !DILocalVariable(name: "len", scope: !618, file: !274, line: 233, type: !53)
!624 = !DILocation(line: 233, column: 8, scope: !618)
!625 = !DILocation(line: 234, column: 4, scope: !618)
!626 = !DILocation(line: 235, column: 21, scope: !627)
!627 = distinct !DILexicalBlock(scope: !618, file: !274, line: 234, column: 7)
!628 = !DILocation(line: 235, column: 26, scope: !627)
!629 = !DILocation(line: 235, column: 39, scope: !627)
!630 = !DILocation(line: 235, column: 48, scope: !627)
!631 = !DILocation(line: 235, column: 34, scope: !627)
!632 = !DILocation(line: 235, column: 11, scope: !627)
!633 = !DILocation(line: 235, column: 9, scope: !627)
!634 = !DILocation(line: 236, column: 4, scope: !627)
!635 = !DILocation(line: 236, column: 13, scope: !618)
!636 = !DILocation(line: 236, column: 17, scope: !618)
!637 = !DILocation(line: 236, column: 21, scope: !618)
!638 = !DILocation(line: 236, column: 26, scope: !618)
!639 = !DILocation(line: 236, column: 32, scope: !618)
!640 = !DILocation(line: 236, column: 42, scope: !618)
!641 = !DILocation(line: 236, column: 46, scope: !618)
!642 = !DILocation(line: 236, column: 52, scope: !618)
!643 = !DILocation(line: 0, scope: !618)
!644 = distinct !{!644, !625, !645, !571}
!645 = !DILocation(line: 236, column: 64, scope: !618)
!646 = !DILocation(line: 238, column: 7, scope: !647)
!647 = distinct !DILexicalBlock(scope: !618, file: !274, line: 238, column: 7)
!648 = !DILocation(line: 238, column: 19, scope: !647)
!649 = !DILocation(line: 238, column: 28, scope: !647)
!650 = !DILocation(line: 238, column: 14, scope: !647)
!651 = !DILocation(line: 238, column: 11, scope: !647)
!652 = !DILocation(line: 238, column: 7, scope: !618)
!653 = !DILocation(line: 239, column: 9, scope: !654)
!654 = distinct !DILexicalBlock(scope: !655, file: !274, line: 239, column: 9)
!655 = distinct !DILexicalBlock(scope: !647, file: !274, line: 238, column: 33)
!656 = !DILocation(line: 239, column: 9, scope: !655)
!657 = !DILocation(line: 241, column: 33, scope: !658)
!658 = distinct !DILexicalBlock(scope: !654, file: !274, line: 239, column: 24)
!659 = !DILocation(line: 240, column: 6, scope: !658)
!660 = !DILocation(line: 242, column: 5, scope: !658)
!661 = !DILocation(line: 244, column: 18, scope: !655)
!662 = !DILocation(line: 245, column: 11, scope: !655)
!663 = !DILocation(line: 245, column: 9, scope: !655)
!664 = !DILocation(line: 246, column: 4, scope: !655)
!665 = !DILocation(line: 247, column: 27, scope: !666)
!666 = distinct !DILexicalBlock(scope: !647, file: !274, line: 246, column: 11)
!667 = !DILocation(line: 247, column: 32, scope: !666)
!668 = !DILocation(line: 247, column: 13, scope: !666)
!669 = !DILocation(line: 247, column: 5, scope: !666)
!670 = !DILocation(line: 250, column: 6, scope: !671)
!671 = distinct !DILexicalBlock(scope: !666, file: !274, line: 247, column: 37)
!672 = !DILocation(line: 253, column: 6, scope: !671)
!673 = !DILocation(line: 256, column: 6, scope: !671)
!674 = !DILocation(line: 259, column: 6, scope: !671)
!675 = !DILocation(line: 261, column: 6, scope: !671)
!676 = !DILocation(line: 262, column: 10, scope: !677)
!677 = distinct !DILexicalBlock(scope: !671, file: !274, line: 262, column: 10)
!678 = !DILocation(line: 262, column: 10, scope: !671)
!679 = !DILocation(line: 263, column: 7, scope: !677)
!680 = !DILocation(line: 262, column: 30, scope: !677)
!681 = !DILocation(line: 267, column: 6, scope: !682)
!682 = distinct !DILexicalBlock(scope: !671, file: !274, line: 266, column: 5)
!683 = !DILocalVariable(name: "buf", scope: !682, file: !274, line: 268, type: !684)
!684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 8192, elements: !685)
!685 = !{!686}
!686 = !DISubrange(count: 1024)
!687 = !DILocation(line: 268, column: 11, scope: !682)
!688 = !DILocation(line: 271, column: 24, scope: !682)
!689 = !DILocation(line: 271, column: 40, scope: !682)
!690 = !DILocation(line: 271, column: 7, scope: !682)
!691 = !DILocation(line: 272, column: 21, scope: !682)
!692 = !DILocation(line: 272, column: 26, scope: !682)
!693 = !DILocation(line: 272, column: 7, scope: !682)
!694 = !DILocation(line: 269, column: 6, scope: !682)
!695 = !DILocation(line: 273, column: 5, scope: !682)
!696 = !DILocation(line: 276, column: 6, scope: !671)
!697 = !DILocation(line: 276, column: 18, scope: !671)
!698 = !DILocation(line: 276, column: 25, scope: !671)
!699 = !DILocation(line: 277, column: 6, scope: !671)
!700 = !DILocation(line: 278, column: 6, scope: !671)
!701 = distinct !{!701, !613, !702, !571}
!702 = !DILocation(line: 281, column: 3, scope: !611)
!703 = !DILocation(line: 283, column: 2, scope: !611)
!704 = !DILocation(line: 283, column: 13, scope: !705)
!705 = distinct !DILexicalBlock(scope: !608, file: !274, line: 283, column: 13)
!706 = !DILocation(line: 283, column: 16, scope: !705)
!707 = !DILocation(line: 283, column: 13, scope: !608)
!708 = !DILocalVariable(name: "left", scope: !709, file: !274, line: 285, type: !83)
!709 = distinct !DILexicalBlock(scope: !705, file: !274, line: 283, column: 22)
!710 = !DILocation(line: 285, column: 10, scope: !709)
!711 = !DILocation(line: 285, column: 27, scope: !709)
!712 = !DILocation(line: 285, column: 36, scope: !709)
!713 = !DILocation(line: 287, column: 3, scope: !709)
!714 = !DILocation(line: 287, column: 10, scope: !709)
!715 = !DILocation(line: 287, column: 15, scope: !709)
!716 = !DILocation(line: 288, column: 4, scope: !717)
!717 = distinct !DILexicalBlock(scope: !709, file: !274, line: 287, column: 20)
!718 = !DILocation(line: 289, column: 15, scope: !719)
!719 = distinct !DILexicalBlock(scope: !717, file: !274, line: 288, column: 7)
!720 = !DILocation(line: 289, column: 19, scope: !719)
!721 = !DILocation(line: 289, column: 27, scope: !719)
!722 = !DILocation(line: 289, column: 10, scope: !719)
!723 = !DILocation(line: 289, column: 8, scope: !719)
!724 = !DILocation(line: 290, column: 4, scope: !719)
!725 = !DILocation(line: 290, column: 13, scope: !717)
!726 = !DILocation(line: 290, column: 16, scope: !717)
!727 = !DILocation(line: 290, column: 21, scope: !717)
!728 = !DILocation(line: 290, column: 26, scope: !717)
!729 = !DILocation(line: 290, column: 32, scope: !717)
!730 = !DILocation(line: 290, column: 42, scope: !717)
!731 = !DILocation(line: 290, column: 46, scope: !717)
!732 = !DILocation(line: 290, column: 52, scope: !717)
!733 = !DILocation(line: 290, column: 64, scope: !717)
!734 = !DILocation(line: 290, column: 68, scope: !717)
!735 = !DILocation(line: 290, column: 74, scope: !717)
!736 = !DILocation(line: 0, scope: !717)
!737 = distinct !{!737, !716, !738, !571}
!738 = !DILocation(line: 290, column: 85, scope: !717)
!739 = !DILocation(line: 291, column: 8, scope: !740)
!740 = distinct !DILexicalBlock(scope: !717, file: !274, line: 291, column: 8)
!741 = !DILocation(line: 291, column: 11, scope: !740)
!742 = !DILocation(line: 291, column: 8, scope: !717)
!743 = !DILocation(line: 292, column: 22, scope: !744)
!744 = distinct !DILexicalBlock(scope: !740, file: !274, line: 291, column: 16)
!745 = !DILocation(line: 292, column: 13, scope: !744)
!746 = !DILocation(line: 292, column: 10, scope: !744)
!747 = !DILocation(line: 293, column: 15, scope: !744)
!748 = !DILocation(line: 293, column: 12, scope: !744)
!749 = !DILocation(line: 294, column: 4, scope: !744)
!750 = !DILocation(line: 295, column: 21, scope: !751)
!751 = distinct !DILexicalBlock(scope: !740, file: !274, line: 294, column: 11)
!752 = !DILocation(line: 296, column: 5, scope: !751)
!753 = distinct !{!753, !713, !754, !571}
!754 = !DILocation(line: 298, column: 3, scope: !709)
!755 = !DILocation(line: 300, column: 7, scope: !756)
!756 = distinct !DILexicalBlock(scope: !709, file: !274, line: 300, column: 7)
!757 = !DILocation(line: 300, column: 12, scope: !756)
!758 = !DILocation(line: 300, column: 7, scope: !709)
!759 = !DILocation(line: 301, column: 4, scope: !756)
!760 = !DILocation(line: 303, column: 15, scope: !709)
!761 = !DILocation(line: 303, column: 24, scope: !709)
!762 = !DILocation(line: 303, column: 9, scope: !709)
!763 = !DILocation(line: 303, column: 7, scope: !709)
!764 = !DILocation(line: 304, column: 2, scope: !709)
!765 = !DILocation(line: 306, column: 9, scope: !506)
!766 = !DILocation(line: 306, column: 2, scope: !506)
!767 = !DILocation(line: 307, column: 1, scope: !506)
!768 = distinct !DISubprogram(name: "recv_buffer", scope: !274, file: !274, line: 359, type: !769, scopeLine: 359, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !433)
!769 = !DISubroutineType(types: !770)
!770 = !{!53, !509, !510, !53, !53, !187, !510}
!771 = !DILocalVariable(name: "clnet_info", arg: 1, scope: !768, file: !274, line: 359, type: !509)
!772 = !DILocation(line: 359, column: 35, scope: !768)
!773 = !DILocalVariable(name: "message", arg: 2, scope: !768, file: !274, line: 359, type: !510)
!774 = !DILocation(line: 359, column: 60, scope: !768)
!775 = !DILocalVariable(name: "sync", arg: 3, scope: !768, file: !274, line: 359, type: !53)
!776 = !DILocation(line: 359, column: 73, scope: !768)
!777 = !DILocalVariable(name: "data_connection", arg: 4, scope: !768, file: !274, line: 359, type: !53)
!778 = !DILocation(line: 359, column: 83, scope: !768)
!779 = !DILocalVariable(name: "atc", arg: 5, scope: !768, file: !274, line: 359, type: !187)
!780 = !DILocation(line: 359, column: 119, scope: !768)
!781 = !DILocalVariable(name: "request_message", arg: 6, scope: !768, file: !274, line: 359, type: !510)
!782 = !DILocation(line: 359, column: 137, scope: !768)
!783 = !DILocalVariable(name: "rc", scope: !768, file: !274, line: 361, type: !53)
!784 = !DILocation(line: 361, column: 6, scope: !768)
!785 = !DILocalVariable(name: "tid", scope: !768, file: !274, line: 363, type: !786)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "stun_tid", file: !45, line: 52, baseType: !787)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !45, line: 47, size: 96, elements: !788)
!788 = !{!789}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "tsx_id", scope: !787, file: !45, line: 51, baseType: !790, size: 96)
!790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 96, elements: !791)
!791 = !{!792}
!792 = !DISubrange(count: 12)
!793 = !DILocation(line: 363, column: 11, scope: !768)
!794 = !DILocalVariable(name: "method", scope: !768, file: !274, line: 364, type: !116)
!795 = !DILocation(line: 364, column: 11, scope: !768)
!796 = !DILocation(line: 366, column: 5, scope: !797)
!797 = distinct !DILexicalBlock(scope: !768, file: !274, line: 366, column: 5)
!798 = !DILocation(line: 366, column: 5, scope: !768)
!799 = !DILocation(line: 367, column: 25, scope: !800)
!800 = distinct !DILexicalBlock(scope: !797, file: !274, line: 366, column: 22)
!801 = !DILocation(line: 367, column: 3, scope: !800)
!802 = !DILocation(line: 368, column: 28, scope: !800)
!803 = !DILocation(line: 368, column: 12, scope: !800)
!804 = !DILocation(line: 368, column: 10, scope: !800)
!805 = !DILocation(line: 369, column: 2, scope: !800)
!806 = !DILocalVariable(name: "fd", scope: !768, file: !274, line: 371, type: !53)
!807 = !DILocation(line: 371, column: 17, scope: !768)
!808 = !DILocation(line: 371, column: 22, scope: !768)
!809 = !DILocation(line: 371, column: 34, scope: !768)
!810 = !DILocation(line: 372, column: 6, scope: !811)
!811 = distinct !DILexicalBlock(scope: !768, file: !274, line: 372, column: 6)
!812 = !DILocation(line: 372, column: 6, scope: !768)
!813 = !DILocation(line: 373, column: 8, scope: !811)
!814 = !DILocation(line: 373, column: 13, scope: !811)
!815 = !DILocation(line: 373, column: 6, scope: !811)
!816 = !DILocation(line: 373, column: 3, scope: !811)
!817 = !DILocalVariable(name: "ssl", scope: !768, file: !274, line: 375, type: !163)
!818 = !DILocation(line: 375, column: 7, scope: !768)
!819 = !DILocation(line: 375, column: 13, scope: !768)
!820 = !DILocation(line: 375, column: 25, scope: !768)
!821 = !DILocation(line: 376, column: 6, scope: !822)
!822 = distinct !DILexicalBlock(scope: !768, file: !274, line: 376, column: 6)
!823 = !DILocation(line: 376, column: 6, scope: !768)
!824 = !DILocation(line: 377, column: 9, scope: !822)
!825 = !DILocation(line: 377, column: 14, scope: !822)
!826 = !DILocation(line: 377, column: 7, scope: !822)
!827 = !DILocation(line: 377, column: 3, scope: !822)
!828 = !DILabel(scope: !768, name: "recv_again", file: !274, line: 379)
!829 = !DILocation(line: 379, column: 2, scope: !768)
!830 = !DILocation(line: 381, column: 6, scope: !831)
!831 = distinct !DILexicalBlock(scope: !768, file: !274, line: 381, column: 5)
!832 = !DILocation(line: 381, column: 14, scope: !831)
!833 = !DILocation(line: 381, column: 17, scope: !831)
!834 = !DILocation(line: 381, column: 22, scope: !831)
!835 = !DILocation(line: 381, column: 25, scope: !831)
!836 = !DILocation(line: 381, column: 41, scope: !831)
!837 = !DILocation(line: 381, column: 45, scope: !831)
!838 = !DILocation(line: 381, column: 47, scope: !831)
!839 = !DILocation(line: 381, column: 5, scope: !768)
!840 = !DILocalVariable(name: "cycle", scope: !841, file: !274, line: 383, type: !7)
!841 = distinct !DILexicalBlock(scope: !831, file: !274, line: 381, column: 53)
!842 = !DILocation(line: 383, column: 16, scope: !841)
!843 = !DILocation(line: 384, column: 3, scope: !841)
!844 = !DILocation(line: 384, column: 9, scope: !841)
!845 = !DILocation(line: 384, column: 15, scope: !841)
!846 = !DILocalVariable(name: "serc", scope: !847, file: !274, line: 385, type: !53)
!847 = distinct !DILexicalBlock(scope: !841, file: !274, line: 384, column: 45)
!848 = !DILocation(line: 385, column: 8, scope: !847)
!849 = !DILocation(line: 385, column: 23, scope: !847)
!850 = !DILocation(line: 385, column: 26, scope: !847)
!851 = !DILocation(line: 385, column: 15, scope: !847)
!852 = !DILocation(line: 386, column: 7, scope: !853)
!853 = distinct !DILexicalBlock(scope: !847, file: !274, line: 386, column: 7)
!854 = !DILocation(line: 386, column: 11, scope: !853)
!855 = !DILocation(line: 386, column: 7, scope: !847)
!856 = !DILocation(line: 387, column: 5, scope: !853)
!857 = !DILocation(line: 388, column: 7, scope: !858)
!858 = distinct !DILexicalBlock(scope: !847, file: !274, line: 388, column: 7)
!859 = !DILocation(line: 388, column: 11, scope: !858)
!860 = !DILocation(line: 388, column: 7, scope: !847)
!861 = !DILocation(line: 389, column: 5, scope: !862)
!862 = distinct !DILexicalBlock(scope: !858, file: !274, line: 388, column: 15)
!863 = !DILocation(line: 391, column: 19, scope: !864)
!864 = distinct !DILexicalBlock(scope: !847, file: !274, line: 391, column: 7)
!865 = !DILocation(line: 391, column: 31, scope: !864)
!866 = !DILocation(line: 391, column: 48, scope: !864)
!867 = !DILocation(line: 391, column: 65, scope: !864)
!868 = !DILocation(line: 391, column: 7, scope: !864)
!869 = !DILocation(line: 391, column: 69, scope: !864)
!870 = !DILocation(line: 391, column: 7, scope: !847)
!871 = !DILocation(line: 392, column: 5, scope: !864)
!872 = !DILocation(line: 393, column: 4, scope: !847)
!873 = distinct !{!873, !843, !874, !571}
!874 = !DILocation(line: 394, column: 3, scope: !841)
!875 = !DILocation(line: 395, column: 2, scope: !841)
!876 = !DILocation(line: 397, column: 7, scope: !877)
!877 = distinct !DILexicalBlock(scope: !768, file: !274, line: 397, column: 6)
!878 = !DILocation(line: 397, column: 18, scope: !877)
!879 = !DILocation(line: 397, column: 22, scope: !877)
!880 = !DILocation(line: 397, column: 30, scope: !877)
!881 = !DILocation(line: 397, column: 33, scope: !877)
!882 = !DILocation(line: 397, column: 36, scope: !877)
!883 = !DILocation(line: 397, column: 6, scope: !768)
!884 = !DILocation(line: 401, column: 3, scope: !885)
!885 = distinct !DILexicalBlock(scope: !877, file: !274, line: 397, column: 42)
!886 = !DILocation(line: 402, column: 14, scope: !887)
!887 = distinct !DILexicalBlock(scope: !885, file: !274, line: 401, column: 6)
!888 = !DILocation(line: 402, column: 18, scope: !887)
!889 = !DILocation(line: 402, column: 27, scope: !887)
!890 = !DILocation(line: 402, column: 9, scope: !887)
!891 = !DILocation(line: 402, column: 7, scope: !887)
!892 = !DILocation(line: 403, column: 8, scope: !893)
!893 = distinct !DILexicalBlock(scope: !887, file: !274, line: 403, column: 8)
!894 = !DILocation(line: 403, column: 11, scope: !893)
!895 = !DILocation(line: 403, column: 15, scope: !893)
!896 = !DILocation(line: 403, column: 18, scope: !893)
!897 = !DILocation(line: 403, column: 24, scope: !893)
!898 = !DILocation(line: 403, column: 34, scope: !893)
!899 = !DILocation(line: 403, column: 37, scope: !893)
!900 = !DILocation(line: 403, column: 8, scope: !887)
!901 = !DILocation(line: 404, column: 5, scope: !893)
!902 = !DILocation(line: 404, column: 11, scope: !893)
!903 = !DILocation(line: 405, column: 3, scope: !887)
!904 = !DILocation(line: 405, column: 12, scope: !885)
!905 = !DILocation(line: 405, column: 15, scope: !885)
!906 = !DILocation(line: 405, column: 19, scope: !885)
!907 = !DILocation(line: 405, column: 23, scope: !885)
!908 = !DILocation(line: 405, column: 29, scope: !885)
!909 = !DILocation(line: 0, scope: !885)
!910 = distinct !{!910, !884, !911, !571}
!911 = !DILocation(line: 405, column: 38, scope: !885)
!912 = !DILocation(line: 407, column: 7, scope: !913)
!913 = distinct !DILexicalBlock(scope: !885, file: !274, line: 407, column: 7)
!914 = !DILocation(line: 407, column: 10, scope: !913)
!915 = !DILocation(line: 407, column: 7, scope: !885)
!916 = !DILocation(line: 408, column: 4, scope: !917)
!917 = distinct !DILexicalBlock(scope: !913, file: !274, line: 407, column: 15)
!918 = !DILocation(line: 411, column: 18, scope: !885)
!919 = !DILocation(line: 411, column: 3, scope: !885)
!920 = !DILocation(line: 411, column: 12, scope: !885)
!921 = !DILocation(line: 411, column: 16, scope: !885)
!922 = !DILocation(line: 413, column: 2, scope: !885)
!923 = !DILocation(line: 413, column: 13, scope: !924)
!924 = distinct !DILexicalBlock(scope: !877, file: !274, line: 413, column: 13)
!925 = !DILocation(line: 413, column: 24, scope: !924)
!926 = !DILocation(line: 413, column: 28, scope: !924)
!927 = !DILocation(line: 413, column: 36, scope: !924)
!928 = !DILocation(line: 413, column: 39, scope: !924)
!929 = !DILocation(line: 413, column: 43, scope: !924)
!930 = !DILocation(line: 413, column: 48, scope: !924)
!931 = !DILocation(line: 413, column: 60, scope: !924)
!932 = !DILocation(line: 413, column: 47, scope: !924)
!933 = !DILocation(line: 413, column: 13, scope: !877)
!934 = !DILocalVariable(name: "message_received", scope: !935, file: !274, line: 417, type: !53)
!935 = distinct !DILexicalBlock(scope: !924, file: !274, line: 413, column: 69)
!936 = !DILocation(line: 417, column: 7, scope: !935)
!937 = !DILocalVariable(name: "cycle", scope: !935, file: !274, line: 418, type: !53)
!938 = !DILocation(line: 418, column: 7, scope: !935)
!939 = !DILocation(line: 419, column: 3, scope: !935)
!940 = !DILocation(line: 419, column: 11, scope: !935)
!941 = !DILocation(line: 419, column: 28, scope: !935)
!942 = !DILocation(line: 419, column: 36, scope: !935)
!943 = !DILocation(line: 419, column: 39, scope: !935)
!944 = !DILocation(line: 0, scope: !935)
!945 = !DILocation(line: 421, column: 25, scope: !946)
!946 = distinct !DILexicalBlock(scope: !947, file: !274, line: 421, column: 8)
!947 = distinct !DILexicalBlock(scope: !935, file: !274, line: 419, column: 46)
!948 = !DILocation(line: 421, column: 8, scope: !946)
!949 = !DILocation(line: 421, column: 8, scope: !947)
!950 = !DILocation(line: 422, column: 5, scope: !946)
!951 = !DILocation(line: 424, column: 7, scope: !947)
!952 = !DILocation(line: 425, column: 4, scope: !947)
!953 = !DILocation(line: 426, column: 19, scope: !954)
!954 = distinct !DILexicalBlock(scope: !947, file: !274, line: 425, column: 7)
!955 = !DILocation(line: 426, column: 24, scope: !954)
!956 = !DILocation(line: 426, column: 33, scope: !954)
!957 = !DILocation(line: 426, column: 10, scope: !954)
!958 = !DILocation(line: 426, column: 8, scope: !954)
!959 = !DILocation(line: 427, column: 9, scope: !960)
!960 = distinct !DILexicalBlock(scope: !954, file: !274, line: 427, column: 9)
!961 = !DILocation(line: 427, column: 12, scope: !960)
!962 = !DILocation(line: 427, column: 16, scope: !960)
!963 = !DILocation(line: 427, column: 19, scope: !960)
!964 = !DILocation(line: 427, column: 25, scope: !960)
!965 = !DILocation(line: 427, column: 35, scope: !960)
!966 = !DILocation(line: 427, column: 38, scope: !960)
!967 = !DILocation(line: 427, column: 9, scope: !954)
!968 = !DILocation(line: 428, column: 6, scope: !960)
!969 = !DILocation(line: 429, column: 4, scope: !954)
!970 = !DILocation(line: 429, column: 13, scope: !947)
!971 = !DILocation(line: 429, column: 16, scope: !947)
!972 = !DILocation(line: 429, column: 20, scope: !947)
!973 = !DILocation(line: 429, column: 24, scope: !947)
!974 = !DILocation(line: 429, column: 30, scope: !947)
!975 = !DILocation(line: 0, scope: !947)
!976 = distinct !{!976, !952, !977, !571}
!977 = !DILocation(line: 429, column: 39, scope: !947)
!978 = !DILocation(line: 431, column: 8, scope: !979)
!979 = distinct !DILexicalBlock(scope: !947, file: !274, line: 431, column: 8)
!980 = !DILocation(line: 431, column: 11, scope: !979)
!981 = !DILocation(line: 431, column: 8, scope: !947)
!982 = !DILocation(line: 433, column: 9, scope: !983)
!983 = distinct !DILexicalBlock(scope: !984, file: !274, line: 433, column: 9)
!984 = distinct !DILexicalBlock(scope: !979, file: !274, line: 431, column: 16)
!985 = !DILocation(line: 433, column: 9, scope: !984)
!986 = !DILocation(line: 435, column: 40, scope: !987)
!987 = distinct !DILexicalBlock(scope: !983, file: !274, line: 433, column: 24)
!988 = !DILocation(line: 434, column: 6, scope: !987)
!989 = !DILocation(line: 436, column: 5, scope: !987)
!990 = !DILocation(line: 437, column: 20, scope: !984)
!991 = !DILocation(line: 437, column: 5, scope: !984)
!992 = !DILocation(line: 437, column: 14, scope: !984)
!993 = !DILocation(line: 437, column: 18, scope: !984)
!994 = !DILocation(line: 438, column: 22, scope: !984)
!995 = !DILocation(line: 440, column: 4, scope: !984)
!996 = !DILocalVariable(name: "sslerr", scope: !997, file: !274, line: 442, type: !53)
!997 = distinct !DILexicalBlock(scope: !979, file: !274, line: 440, column: 11)
!998 = !DILocation(line: 442, column: 9, scope: !997)
!999 = !DILocation(line: 442, column: 32, scope: !997)
!1000 = !DILocation(line: 442, column: 37, scope: !997)
!1001 = !DILocation(line: 442, column: 18, scope: !997)
!1002 = !DILocation(line: 444, column: 13, scope: !997)
!1003 = !DILocation(line: 444, column: 5, scope: !997)
!1004 = !DILocation(line: 447, column: 6, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !997, file: !274, line: 444, column: 21)
!1006 = !DILocation(line: 450, column: 6, scope: !1005)
!1007 = !DILocation(line: 453, column: 6, scope: !1005)
!1008 = !DILocation(line: 456, column: 6, scope: !1005)
!1009 = !DILocation(line: 458, column: 6, scope: !1005)
!1010 = !DILocation(line: 460, column: 10, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1005, file: !274, line: 460, column: 10)
!1012 = !DILocation(line: 460, column: 10, scope: !1005)
!1013 = !DILocation(line: 461, column: 7, scope: !1011)
!1014 = !DILocation(line: 460, column: 30, scope: !1011)
!1015 = !DILocation(line: 464, column: 6, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1005, file: !274, line: 463, column: 25)
!1017 = !DILocalVariable(name: "buf", scope: !1016, file: !274, line: 465, type: !684)
!1018 = !DILocation(line: 465, column: 11, scope: !1016)
!1019 = !DILocation(line: 467, column: 25, scope: !1016)
!1020 = !DILocation(line: 467, column: 42, scope: !1016)
!1021 = !DILocation(line: 467, column: 8, scope: !1016)
!1022 = !DILocation(line: 468, column: 22, scope: !1016)
!1023 = !DILocation(line: 468, column: 27, scope: !1016)
!1024 = !DILocation(line: 468, column: 8, scope: !1016)
!1025 = !DILocation(line: 466, column: 6, scope: !1016)
!1026 = !DILocation(line: 469, column: 5, scope: !1016)
!1027 = !DILocation(line: 472, column: 6, scope: !1005)
!1028 = !DILocation(line: 472, column: 18, scope: !1005)
!1029 = !DILocation(line: 472, column: 25, scope: !1005)
!1030 = !DILocation(line: 475, column: 8, scope: !1005)
!1031 = !DILocation(line: 475, column: 12, scope: !1005)
!1032 = !DILocation(line: 473, column: 6, scope: !1005)
!1033 = !DILocation(line: 476, column: 6, scope: !1005)
!1034 = !DILocation(line: 479, column: 10, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !997, file: !274, line: 479, column: 9)
!1036 = !DILocation(line: 479, column: 9, scope: !997)
!1037 = !DILocation(line: 480, column: 6, scope: !1035)
!1038 = distinct !{!1038, !939, !1039, !571}
!1039 = !DILocation(line: 482, column: 3, scope: !935)
!1040 = !DILocation(line: 484, column: 2, scope: !935)
!1041 = !DILocation(line: 484, column: 13, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !924, file: !274, line: 484, column: 13)
!1043 = !DILocation(line: 484, column: 24, scope: !1042)
!1044 = !DILocation(line: 484, column: 27, scope: !1042)
!1045 = !DILocation(line: 484, column: 35, scope: !1042)
!1046 = !DILocation(line: 484, column: 38, scope: !1042)
!1047 = !DILocation(line: 484, column: 42, scope: !1042)
!1048 = !DILocation(line: 484, column: 47, scope: !1042)
!1049 = !DILocation(line: 484, column: 59, scope: !1042)
!1050 = !DILocation(line: 484, column: 46, scope: !1042)
!1051 = !DILocation(line: 484, column: 13, scope: !924)
!1052 = !DILocalVariable(name: "message_received", scope: !1053, file: !274, line: 488, type: !53)
!1053 = distinct !DILexicalBlock(scope: !1042, file: !274, line: 484, column: 68)
!1054 = !DILocation(line: 488, column: 7, scope: !1053)
!1055 = !DILocalVariable(name: "cycle", scope: !1053, file: !274, line: 489, type: !53)
!1056 = !DILocation(line: 489, column: 7, scope: !1053)
!1057 = !DILocation(line: 490, column: 3, scope: !1053)
!1058 = !DILocation(line: 490, column: 11, scope: !1053)
!1059 = !DILocation(line: 490, column: 28, scope: !1053)
!1060 = !DILocation(line: 490, column: 36, scope: !1053)
!1061 = !DILocation(line: 490, column: 39, scope: !1053)
!1062 = !DILocation(line: 0, scope: !1053)
!1063 = !DILocation(line: 492, column: 25, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1065, file: !274, line: 492, column: 8)
!1065 = distinct !DILexicalBlock(scope: !1053, file: !274, line: 490, column: 46)
!1066 = !DILocation(line: 492, column: 8, scope: !1064)
!1067 = !DILocation(line: 492, column: 8, scope: !1065)
!1068 = !DILocation(line: 493, column: 5, scope: !1064)
!1069 = !DILocation(line: 494, column: 7, scope: !1065)
!1070 = !DILocation(line: 495, column: 4, scope: !1065)
!1071 = !DILocation(line: 496, column: 19, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1065, file: !274, line: 495, column: 7)
!1073 = !DILocation(line: 496, column: 24, scope: !1072)
!1074 = !DILocation(line: 496, column: 33, scope: !1072)
!1075 = !DILocation(line: 496, column: 10, scope: !1072)
!1076 = !DILocation(line: 496, column: 8, scope: !1072)
!1077 = !DILocation(line: 497, column: 9, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1072, file: !274, line: 497, column: 9)
!1079 = !DILocation(line: 497, column: 12, scope: !1078)
!1080 = !DILocation(line: 497, column: 16, scope: !1078)
!1081 = !DILocation(line: 497, column: 19, scope: !1078)
!1082 = !DILocation(line: 497, column: 25, scope: !1078)
!1083 = !DILocation(line: 497, column: 35, scope: !1078)
!1084 = !DILocation(line: 497, column: 38, scope: !1078)
!1085 = !DILocation(line: 497, column: 9, scope: !1072)
!1086 = !DILocation(line: 498, column: 6, scope: !1078)
!1087 = !DILocation(line: 499, column: 4, scope: !1072)
!1088 = !DILocation(line: 499, column: 13, scope: !1065)
!1089 = !DILocation(line: 499, column: 16, scope: !1065)
!1090 = !DILocation(line: 499, column: 20, scope: !1065)
!1091 = !DILocation(line: 499, column: 24, scope: !1065)
!1092 = !DILocation(line: 499, column: 30, scope: !1065)
!1093 = !DILocation(line: 0, scope: !1065)
!1094 = distinct !{!1094, !1070, !1095, !571}
!1095 = !DILocation(line: 499, column: 39, scope: !1065)
!1096 = !DILocation(line: 501, column: 8, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1065, file: !274, line: 501, column: 8)
!1098 = !DILocation(line: 501, column: 11, scope: !1097)
!1099 = !DILocation(line: 501, column: 8, scope: !1065)
!1100 = !DILocation(line: 503, column: 9, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1102, file: !274, line: 503, column: 9)
!1102 = distinct !DILexicalBlock(scope: !1097, file: !274, line: 501, column: 16)
!1103 = !DILocation(line: 503, column: 9, scope: !1102)
!1104 = !DILocation(line: 505, column: 40, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1101, file: !274, line: 503, column: 24)
!1106 = !DILocation(line: 504, column: 6, scope: !1105)
!1107 = !DILocation(line: 506, column: 5, scope: !1105)
!1108 = !DILocation(line: 507, column: 20, scope: !1102)
!1109 = !DILocation(line: 507, column: 5, scope: !1102)
!1110 = !DILocation(line: 507, column: 14, scope: !1102)
!1111 = !DILocation(line: 507, column: 18, scope: !1102)
!1112 = !DILocation(line: 508, column: 22, scope: !1102)
!1113 = !DILocation(line: 510, column: 4, scope: !1102)
!1114 = !DILocalVariable(name: "sslerr", scope: !1115, file: !274, line: 512, type: !53)
!1115 = distinct !DILexicalBlock(scope: !1097, file: !274, line: 510, column: 11)
!1116 = !DILocation(line: 512, column: 8, scope: !1115)
!1117 = !DILocation(line: 512, column: 31, scope: !1115)
!1118 = !DILocation(line: 512, column: 36, scope: !1115)
!1119 = !DILocation(line: 512, column: 17, scope: !1115)
!1120 = !DILocation(line: 514, column: 13, scope: !1115)
!1121 = !DILocation(line: 514, column: 5, scope: !1115)
!1122 = !DILocation(line: 517, column: 6, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1115, file: !274, line: 514, column: 21)
!1124 = !DILocation(line: 520, column: 6, scope: !1123)
!1125 = !DILocation(line: 523, column: 6, scope: !1123)
!1126 = !DILocation(line: 526, column: 6, scope: !1123)
!1127 = !DILocation(line: 528, column: 6, scope: !1123)
!1128 = !DILocation(line: 530, column: 10, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1123, file: !274, line: 530, column: 10)
!1130 = !DILocation(line: 530, column: 10, scope: !1123)
!1131 = !DILocation(line: 531, column: 7, scope: !1129)
!1132 = !DILocation(line: 530, column: 30, scope: !1129)
!1133 = !DILocation(line: 534, column: 6, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1123, file: !274, line: 533, column: 25)
!1135 = !DILocalVariable(name: "buf", scope: !1134, file: !274, line: 535, type: !684)
!1136 = !DILocation(line: 535, column: 11, scope: !1134)
!1137 = !DILocation(line: 537, column: 25, scope: !1134)
!1138 = !DILocation(line: 537, column: 42, scope: !1134)
!1139 = !DILocation(line: 537, column: 8, scope: !1134)
!1140 = !DILocation(line: 538, column: 22, scope: !1134)
!1141 = !DILocation(line: 538, column: 27, scope: !1134)
!1142 = !DILocation(line: 538, column: 8, scope: !1134)
!1143 = !DILocation(line: 536, column: 6, scope: !1134)
!1144 = !DILocation(line: 539, column: 5, scope: !1134)
!1145 = !DILocation(line: 542, column: 6, scope: !1123)
!1146 = !DILocation(line: 542, column: 18, scope: !1123)
!1147 = !DILocation(line: 542, column: 25, scope: !1123)
!1148 = !DILocation(line: 545, column: 8, scope: !1123)
!1149 = !DILocation(line: 545, column: 12, scope: !1123)
!1150 = !DILocation(line: 543, column: 6, scope: !1123)
!1151 = !DILocation(line: 546, column: 6, scope: !1123)
!1152 = !DILocation(line: 549, column: 10, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1115, file: !274, line: 549, column: 9)
!1154 = !DILocation(line: 549, column: 9, scope: !1115)
!1155 = !DILocation(line: 550, column: 6, scope: !1153)
!1156 = distinct !{!1156, !1057, !1157, !571}
!1157 = !DILocation(line: 552, column: 3, scope: !1053)
!1158 = !DILocation(line: 554, column: 2, scope: !1053)
!1159 = !DILocation(line: 554, column: 14, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1042, file: !274, line: 554, column: 13)
!1161 = !DILocation(line: 554, column: 25, scope: !1160)
!1162 = !DILocation(line: 554, column: 28, scope: !1160)
!1163 = !DILocation(line: 554, column: 36, scope: !1160)
!1164 = !DILocation(line: 554, column: 39, scope: !1160)
!1165 = !DILocation(line: 554, column: 42, scope: !1160)
!1166 = !DILocation(line: 554, column: 13, scope: !1042)
!1167 = !DILocation(line: 558, column: 3, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1160, file: !274, line: 554, column: 48)
!1169 = !DILocation(line: 559, column: 14, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1168, file: !274, line: 558, column: 6)
!1171 = !DILocation(line: 559, column: 18, scope: !1170)
!1172 = !DILocation(line: 559, column: 27, scope: !1170)
!1173 = !DILocation(line: 559, column: 9, scope: !1170)
!1174 = !DILocation(line: 559, column: 7, scope: !1170)
!1175 = !DILocation(line: 560, column: 9, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1170, file: !274, line: 560, column: 8)
!1177 = !DILocation(line: 560, column: 12, scope: !1176)
!1178 = !DILocation(line: 560, column: 17, scope: !1176)
!1179 = !DILocation(line: 560, column: 21, scope: !1176)
!1180 = !DILocation(line: 560, column: 27, scope: !1176)
!1181 = !DILocation(line: 560, column: 38, scope: !1176)
!1182 = !DILocation(line: 560, column: 41, scope: !1176)
!1183 = !DILocation(line: 560, column: 8, scope: !1170)
!1184 = !DILocation(line: 561, column: 5, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1176, file: !274, line: 560, column: 47)
!1186 = !DILocation(line: 561, column: 11, scope: !1185)
!1187 = !DILocation(line: 562, column: 4, scope: !1185)
!1188 = !DILocation(line: 563, column: 3, scope: !1170)
!1189 = !DILocation(line: 563, column: 12, scope: !1168)
!1190 = !DILocation(line: 563, column: 15, scope: !1168)
!1191 = !DILocation(line: 563, column: 19, scope: !1168)
!1192 = !DILocation(line: 563, column: 23, scope: !1168)
!1193 = !DILocation(line: 563, column: 29, scope: !1168)
!1194 = !DILocation(line: 0, scope: !1168)
!1195 = distinct !{!1195, !1167, !1196, !571}
!1196 = !DILocation(line: 563, column: 38, scope: !1168)
!1197 = !DILocation(line: 565, column: 7, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1168, file: !274, line: 565, column: 7)
!1199 = !DILocation(line: 565, column: 10, scope: !1198)
!1200 = !DILocation(line: 565, column: 7, scope: !1168)
!1201 = !DILocalVariable(name: "mlen", scope: !1202, file: !274, line: 566, type: !53)
!1202 = distinct !DILexicalBlock(scope: !1198, file: !274, line: 565, column: 15)
!1203 = !DILocation(line: 566, column: 8, scope: !1202)
!1204 = !DILocation(line: 566, column: 15, scope: !1202)
!1205 = !DILocalVariable(name: "app_msg_len", scope: !1202, file: !274, line: 567, type: !83)
!1206 = !DILocation(line: 567, column: 11, scope: !1202)
!1207 = !DILocation(line: 567, column: 34, scope: !1202)
!1208 = !DILocation(line: 567, column: 25, scope: !1202)
!1209 = !DILocation(line: 568, column: 9, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1202, file: !274, line: 568, column: 8)
!1211 = !DILocation(line: 568, column: 8, scope: !1202)
!1212 = !DILocation(line: 569, column: 37, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1210, file: !274, line: 568, column: 14)
!1214 = !DILocation(line: 569, column: 46, scope: !1213)
!1215 = !DILocation(line: 569, column: 51, scope: !1213)
!1216 = !DILocation(line: 569, column: 12, scope: !1213)
!1217 = !DILocation(line: 569, column: 10, scope: !1213)
!1218 = !DILocation(line: 571, column: 4, scope: !1213)
!1219 = !DILocation(line: 572, column: 10, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1221, file: !274, line: 572, column: 9)
!1221 = distinct !DILexicalBlock(scope: !1210, file: !274, line: 571, column: 11)
!1222 = !DILocation(line: 572, column: 9, scope: !1221)
!1223 = !DILocation(line: 573, column: 13, scope: !1220)
!1224 = !DILocation(line: 573, column: 11, scope: !1220)
!1225 = !DILocation(line: 573, column: 6, scope: !1220)
!1226 = !DILocation(line: 575, column: 9, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1221, file: !274, line: 575, column: 9)
!1228 = !DILocation(line: 575, column: 16, scope: !1227)
!1229 = !DILocation(line: 575, column: 14, scope: !1227)
!1230 = !DILocation(line: 575, column: 9, scope: !1221)
!1231 = !DILocation(line: 576, column: 13, scope: !1227)
!1232 = !DILocation(line: 576, column: 11, scope: !1227)
!1233 = !DILocation(line: 576, column: 6, scope: !1227)
!1234 = !DILocation(line: 578, column: 28, scope: !1221)
!1235 = !DILocation(line: 578, column: 19, scope: !1221)
!1236 = !DILocation(line: 578, column: 17, scope: !1221)
!1237 = !DILocation(line: 581, column: 8, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1202, file: !274, line: 581, column: 8)
!1239 = !DILocation(line: 581, column: 13, scope: !1238)
!1240 = !DILocation(line: 581, column: 8, scope: !1202)
!1241 = !DILocalVariable(name: "rcr", scope: !1242, file: !274, line: 583, type: !53)
!1242 = distinct !DILexicalBlock(scope: !1238, file: !274, line: 581, column: 18)
!1243 = !DILocation(line: 583, column: 9, scope: !1242)
!1244 = !DILocalVariable(name: "rsf", scope: !1242, file: !274, line: 584, type: !53)
!1245 = !DILocation(line: 584, column: 9, scope: !1242)
!1246 = !DILocalVariable(name: "cycle", scope: !1242, file: !274, line: 585, type: !53)
!1247 = !DILocation(line: 585, column: 9, scope: !1242)
!1248 = !DILocation(line: 586, column: 5, scope: !1242)
!1249 = !DILocation(line: 586, column: 12, scope: !1242)
!1250 = !DILocation(line: 586, column: 18, scope: !1242)
!1251 = !DILocation(line: 586, column: 16, scope: !1242)
!1252 = !DILocation(line: 586, column: 23, scope: !1242)
!1253 = !DILocation(line: 586, column: 31, scope: !1242)
!1254 = !DILocation(line: 586, column: 34, scope: !1242)
!1255 = !DILocation(line: 0, scope: !1242)
!1256 = !DILocation(line: 587, column: 6, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1242, file: !274, line: 586, column: 41)
!1258 = !DILocation(line: 588, column: 18, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1257, file: !274, line: 587, column: 9)
!1260 = !DILocation(line: 588, column: 22, scope: !1259)
!1261 = !DILocation(line: 588, column: 31, scope: !1259)
!1262 = !DILocation(line: 588, column: 37, scope: !1259)
!1263 = !DILocation(line: 588, column: 35, scope: !1259)
!1264 = !DILocation(line: 589, column: 18, scope: !1259)
!1265 = !DILocation(line: 589, column: 9, scope: !1259)
!1266 = !DILocation(line: 589, column: 34, scope: !1259)
!1267 = !DILocation(line: 589, column: 25, scope: !1259)
!1268 = !DILocation(line: 589, column: 23, scope: !1259)
!1269 = !DILocation(line: 588, column: 13, scope: !1259)
!1270 = !DILocation(line: 588, column: 11, scope: !1259)
!1271 = !DILocation(line: 590, column: 11, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1259, file: !274, line: 590, column: 11)
!1273 = !DILocation(line: 590, column: 15, scope: !1272)
!1274 = !DILocation(line: 590, column: 19, scope: !1272)
!1275 = !DILocation(line: 590, column: 22, scope: !1272)
!1276 = !DILocation(line: 590, column: 28, scope: !1272)
!1277 = !DILocation(line: 590, column: 38, scope: !1272)
!1278 = !DILocation(line: 590, column: 41, scope: !1272)
!1279 = !DILocation(line: 590, column: 11, scope: !1259)
!1280 = !DILocation(line: 591, column: 8, scope: !1272)
!1281 = !DILocation(line: 591, column: 14, scope: !1272)
!1282 = !DILocation(line: 592, column: 6, scope: !1259)
!1283 = !DILocation(line: 592, column: 15, scope: !1257)
!1284 = !DILocation(line: 592, column: 19, scope: !1257)
!1285 = !DILocation(line: 592, column: 23, scope: !1257)
!1286 = !DILocation(line: 592, column: 27, scope: !1257)
!1287 = !DILocation(line: 592, column: 33, scope: !1257)
!1288 = !DILocation(line: 0, scope: !1257)
!1289 = distinct !{!1289, !1256, !1290, !571}
!1290 = !DILocation(line: 592, column: 42, scope: !1257)
!1291 = !DILocation(line: 594, column: 10, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1257, file: !274, line: 594, column: 10)
!1293 = !DILocation(line: 594, column: 14, scope: !1292)
!1294 = !DILocation(line: 594, column: 10, scope: !1257)
!1295 = !DILocation(line: 595, column: 14, scope: !1292)
!1296 = !DILocation(line: 595, column: 11, scope: !1292)
!1297 = !DILocation(line: 595, column: 7, scope: !1292)
!1298 = distinct !{!1298, !1248, !1299, !571}
!1299 = !DILocation(line: 597, column: 5, scope: !1242)
!1300 = !DILocation(line: 599, column: 9, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1242, file: !274, line: 599, column: 9)
!1302 = !DILocation(line: 599, column: 13, scope: !1301)
!1303 = !DILocation(line: 599, column: 9, scope: !1242)
!1304 = !DILocation(line: 600, column: 6, scope: !1301)
!1305 = !DILocation(line: 602, column: 9, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1242, file: !274, line: 602, column: 9)
!1307 = !DILocation(line: 602, column: 21, scope: !1306)
!1308 = !DILocation(line: 602, column: 15, scope: !1306)
!1309 = !DILocation(line: 602, column: 13, scope: !1306)
!1310 = !DILocation(line: 602, column: 9, scope: !1242)
!1311 = !DILocation(line: 603, column: 20, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1313, file: !274, line: 603, column: 10)
!1313 = distinct !DILexicalBlock(scope: !1306, file: !274, line: 602, column: 34)
!1314 = !DILocation(line: 603, column: 43, scope: !1312)
!1315 = !DILocation(line: 603, column: 34, scope: !1312)
!1316 = !DILocation(line: 603, column: 32, scope: !1312)
!1317 = !DILocation(line: 603, column: 61, scope: !1312)
!1318 = !DILocation(line: 603, column: 51, scope: !1312)
!1319 = !DILocation(line: 603, column: 48, scope: !1312)
!1320 = !DILocation(line: 604, column: 11, scope: !1312)
!1321 = !DILocation(line: 604, column: 8, scope: !1312)
!1322 = !DILocation(line: 603, column: 10, scope: !1313)
!1323 = !DILocation(line: 605, column: 7, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1312, file: !274, line: 604, column: 24)
!1325 = !DILocation(line: 607, column: 5, scope: !1313)
!1326 = !DILocation(line: 609, column: 20, scope: !1242)
!1327 = !DILocation(line: 609, column: 5, scope: !1242)
!1328 = !DILocation(line: 609, column: 14, scope: !1242)
!1329 = !DILocation(line: 609, column: 18, scope: !1242)
!1330 = !DILocation(line: 611, column: 10, scope: !1242)
!1331 = !DILocation(line: 611, column: 8, scope: !1242)
!1332 = !DILocation(line: 613, column: 4, scope: !1242)
!1333 = !DILocation(line: 614, column: 8, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1238, file: !274, line: 613, column: 11)
!1335 = !DILocation(line: 616, column: 3, scope: !1202)
!1336 = !DILocation(line: 617, column: 2, scope: !1168)
!1337 = !DILocation(line: 619, column: 5, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !768, file: !274, line: 619, column: 5)
!1339 = !DILocation(line: 619, column: 7, scope: !1338)
!1340 = !DILocation(line: 619, column: 5, scope: !768)
!1341 = !DILocation(line: 620, column: 6, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1343, file: !274, line: 620, column: 6)
!1343 = distinct !DILexicalBlock(scope: !1338, file: !274, line: 619, column: 11)
!1344 = !DILocation(line: 620, column: 6, scope: !1343)
!1345 = !DILocalVariable(name: "recv_tid", scope: !1346, file: !274, line: 622, type: !786)
!1346 = distinct !DILexicalBlock(scope: !1342, file: !274, line: 620, column: 23)
!1347 = !DILocation(line: 622, column: 13, scope: !1346)
!1348 = !DILocalVariable(name: "recv_method", scope: !1346, file: !274, line: 623, type: !116)
!1349 = !DILocation(line: 623, column: 13, scope: !1346)
!1350 = !DILocation(line: 625, column: 26, scope: !1346)
!1351 = !DILocation(line: 625, column: 4, scope: !1346)
!1352 = !DILocation(line: 626, column: 34, scope: !1346)
!1353 = !DILocation(line: 626, column: 18, scope: !1346)
!1354 = !DILocation(line: 626, column: 16, scope: !1346)
!1355 = !DILocation(line: 628, column: 7, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1346, file: !274, line: 628, column: 7)
!1357 = !DILocation(line: 628, column: 17, scope: !1356)
!1358 = !DILocation(line: 628, column: 14, scope: !1356)
!1359 = !DILocation(line: 628, column: 7, scope: !1346)
!1360 = !DILocation(line: 629, column: 127, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1356, file: !274, line: 628, column: 30)
!1362 = !DILocation(line: 629, column: 113, scope: !1361)
!1363 = !DILocation(line: 629, column: 153, scope: !1361)
!1364 = !DILocation(line: 629, column: 139, scope: !1361)
!1365 = !DILocation(line: 629, column: 5, scope: !1361)
!1366 = !DILocation(line: 630, column: 5, scope: !1361)
!1367 = !DILocation(line: 633, column: 18, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1346, file: !274, line: 633, column: 7)
!1369 = !DILocation(line: 633, column: 14, scope: !1368)
!1370 = !DILocation(line: 633, column: 34, scope: !1368)
!1371 = !DILocation(line: 633, column: 25, scope: !1368)
!1372 = !DILocation(line: 633, column: 7, scope: !1368)
!1373 = !DILocation(line: 633, column: 7, scope: !1346)
!1374 = !DILocation(line: 634, column: 5, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1368, file: !274, line: 633, column: 57)
!1376 = !DILocation(line: 635, column: 5, scope: !1375)
!1377 = !DILocation(line: 637, column: 3, scope: !1346)
!1378 = !DILocation(line: 638, column: 2, scope: !1343)
!1379 = !DILocation(line: 640, column: 9, scope: !768)
!1380 = !DILocation(line: 640, column: 2, scope: !768)
!1381 = !DILocation(line: 641, column: 1, scope: !768)
!1382 = distinct !DISubprogram(name: "wait_fd", scope: !274, file: !274, line: 309, type: !1383, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !433)
!1383 = !DISubroutineType(types: !1384)
!1384 = !{!53, !53, !7}
!1385 = !DILocalVariable(name: "fd", arg: 1, scope: !1382, file: !274, line: 309, type: !53)
!1386 = !DILocation(line: 309, column: 24, scope: !1382)
!1387 = !DILocalVariable(name: "cycle", arg: 2, scope: !1382, file: !274, line: 309, type: !7)
!1388 = !DILocation(line: 309, column: 41, scope: !1382)
!1389 = !DILocation(line: 311, column: 5, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1382, file: !274, line: 311, column: 5)
!1391 = !DILocation(line: 311, column: 7, scope: !1390)
!1392 = !DILocation(line: 311, column: 5, scope: !1382)
!1393 = !DILocation(line: 312, column: 3, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1390, file: !274, line: 311, column: 26)
!1395 = !DILocalVariable(name: "fds", scope: !1396, file: !274, line: 314, type: !1397)
!1396 = distinct !DILexicalBlock(scope: !1390, file: !274, line: 313, column: 9)
!1397 = !DIDerivedType(tag: DW_TAG_typedef, name: "fd_set", file: !254, line: 70, baseType: !1398)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !254, line: 59, size: 1024, elements: !1399)
!1399 = !{!1400}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "fds_bits", scope: !1398, file: !254, line: 64, baseType: !1401, size: 1024)
!1401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 1024, elements: !143)
!1402 = !DILocation(line: 314, column: 10, scope: !1396)
!1403 = !DILocation(line: 315, column: 3, scope: !1396)
!1404 = !DILocalVariable(name: "__i", scope: !1405, file: !274, line: 315, type: !7)
!1405 = distinct !DILexicalBlock(scope: !1396, file: !274, line: 315, column: 3)
!1406 = !DILocation(line: 315, column: 3, scope: !1405)
!1407 = !DILocalVariable(name: "__arr", scope: !1405, file: !274, line: 315, type: !1408)
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1409 = !DILocation(line: 315, column: 3, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1405, file: !274, line: 315, column: 3)
!1411 = !DILocation(line: 315, column: 3, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1410, file: !274, line: 315, column: 3)
!1413 = distinct !{!1413, !1409, !1409, !571}
!1414 = !DILocation(line: 316, column: 3, scope: !1396)
!1415 = !DILocation(line: 318, column: 6, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1396, file: !274, line: 318, column: 6)
!1417 = !DILocation(line: 318, column: 10, scope: !1416)
!1418 = !DILocation(line: 318, column: 13, scope: !1416)
!1419 = !DILocation(line: 318, column: 18, scope: !1416)
!1420 = !DILocation(line: 318, column: 6, scope: !1396)
!1421 = !DILocation(line: 319, column: 4, scope: !1416)
!1422 = !DILocalVariable(name: "start_time", scope: !1396, file: !274, line: 321, type: !1423)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !1424, line: 8, size: 128, elements: !1425)
!1424 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h", directory: "", checksumkind: CSK_MD5, checksum: "9b45d950050c215f216850b27bd1e8f3")
!1425 = !{!1426, !1428}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1423, file: !1424, line: 14, baseType: !1427, size: 64)
!1427 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !81, line: 160, baseType: !255)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !1423, file: !1424, line: 15, baseType: !1429, size: 64, offset: 64)
!1429 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !81, line: 162, baseType: !255)
!1430 = !DILocation(line: 321, column: 18, scope: !1396)
!1431 = !DILocalVariable(name: "ctime", scope: !1396, file: !274, line: 322, type: !1423)
!1432 = !DILocation(line: 322, column: 18, scope: !1396)
!1433 = !DILocation(line: 323, column: 3, scope: !1396)
!1434 = !DILocation(line: 325, column: 29, scope: !1396)
!1435 = !DILocation(line: 325, column: 9, scope: !1396)
!1436 = !DILocation(line: 325, column: 16, scope: !1396)
!1437 = !DILocation(line: 326, column: 30, scope: !1396)
!1438 = !DILocation(line: 326, column: 9, scope: !1396)
!1439 = !DILocation(line: 326, column: 17, scope: !1396)
!1440 = !DILocalVariable(name: "rc", scope: !1396, file: !274, line: 328, type: !53)
!1441 = !DILocation(line: 328, column: 7, scope: !1396)
!1442 = !DILocation(line: 330, column: 3, scope: !1396)
!1443 = !DILocalVariable(name: "timeout", scope: !1444, file: !274, line: 331, type: !1423)
!1444 = distinct !DILexicalBlock(scope: !1396, file: !274, line: 330, column: 6)
!1445 = !DILocation(line: 331, column: 19, scope: !1444)
!1446 = !DILocation(line: 332, column: 7, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1444, file: !274, line: 332, column: 7)
!1448 = !DILocation(line: 332, column: 13, scope: !1447)
!1449 = !DILocation(line: 332, column: 7, scope: !1444)
!1450 = !DILocation(line: 333, column: 13, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1447, file: !274, line: 332, column: 19)
!1452 = !DILocation(line: 333, column: 21, scope: !1451)
!1453 = !DILocation(line: 334, column: 4, scope: !1451)
!1454 = !DILocation(line: 336, column: 13, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1447, file: !274, line: 334, column: 11)
!1456 = !DILocation(line: 336, column: 20, scope: !1455)
!1457 = !DILocation(line: 337, column: 5, scope: !1455)
!1458 = !DILocation(line: 337, column: 11, scope: !1455)
!1459 = !DILocation(line: 337, column: 45, scope: !1455)
!1460 = !DILocation(line: 337, column: 62, scope: !1455)
!1461 = !DILocation(line: 337, column: 52, scope: !1455)
!1462 = !DILocation(line: 337, column: 28, scope: !1455)
!1463 = !DILocation(line: 337, column: 35, scope: !1455)
!1464 = distinct !{!1464, !1457, !1460, !571}
!1465 = !DILocation(line: 339, column: 14, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1455, file: !274, line: 339, column: 8)
!1467 = !DILocation(line: 339, column: 34, scope: !1466)
!1468 = !DILocation(line: 339, column: 21, scope: !1466)
!1469 = !DILocation(line: 339, column: 8, scope: !1455)
!1470 = !DILocation(line: 340, column: 15, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1472, file: !274, line: 340, column: 9)
!1472 = distinct !DILexicalBlock(scope: !1466, file: !274, line: 339, column: 42)
!1473 = !DILocation(line: 340, column: 36, scope: !1471)
!1474 = !DILocation(line: 340, column: 53, scope: !1471)
!1475 = !DILocation(line: 340, column: 43, scope: !1471)
!1476 = !DILocation(line: 340, column: 22, scope: !1471)
!1477 = !DILocation(line: 340, column: 9, scope: !1472)
!1478 = !DILocation(line: 341, column: 7, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1471, file: !274, line: 340, column: 61)
!1480 = !DILocation(line: 343, column: 32, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1471, file: !274, line: 342, column: 13)
!1482 = !DILocation(line: 343, column: 52, scope: !1481)
!1483 = !DILocation(line: 343, column: 39, scope: !1481)
!1484 = !DILocation(line: 343, column: 15, scope: !1481)
!1485 = !DILocation(line: 343, column: 22, scope: !1481)
!1486 = !DILocation(line: 345, column: 5, scope: !1472)
!1487 = !DILocation(line: 347, column: 16, scope: !1444)
!1488 = !DILocation(line: 347, column: 18, scope: !1444)
!1489 = !DILocation(line: 347, column: 9, scope: !1444)
!1490 = !DILocation(line: 347, column: 7, scope: !1444)
!1491 = !DILocation(line: 348, column: 8, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1444, file: !274, line: 348, column: 7)
!1493 = !DILocation(line: 348, column: 10, scope: !1492)
!1494 = !DILocation(line: 348, column: 14, scope: !1492)
!1495 = !DILocation(line: 348, column: 18, scope: !1492)
!1496 = !DILocation(line: 348, column: 24, scope: !1492)
!1497 = !DILocation(line: 348, column: 7, scope: !1444)
!1498 = !DILocation(line: 349, column: 5, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1492, file: !274, line: 348, column: 35)
!1500 = !DILocation(line: 350, column: 4, scope: !1499)
!1501 = !DILocation(line: 351, column: 5, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1492, file: !274, line: 350, column: 11)
!1503 = !DILocation(line: 353, column: 3, scope: !1444)
!1504 = distinct !{!1504, !1442, !1505}
!1505 = !DILocation(line: 353, column: 12, scope: !1396)
!1506 = !DILocation(line: 355, column: 10, scope: !1396)
!1507 = !DILocation(line: 355, column: 3, scope: !1396)
!1508 = !DILocation(line: 357, column: 1, scope: !1382)
!1509 = distinct !DISubprogram(name: "client_input_handler", scope: !274, file: !274, line: 939, type: !1510, scopeLine: 939, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !433)
!1510 = !DISubroutineType(types: !1511)
!1511 = !{null, !53, !1512, !243}
!1512 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1513 = !DILocalVariable(name: "fd", arg: 1, scope: !1509, file: !274, line: 939, type: !53)
!1514 = !DILocation(line: 939, column: 43, scope: !1509)
!1515 = !DILocalVariable(name: "what", arg: 2, scope: !1509, file: !274, line: 939, type: !1512)
!1516 = !DILocation(line: 939, column: 53, scope: !1509)
!1517 = !DILocalVariable(name: "arg", arg: 3, scope: !1509, file: !274, line: 939, type: !243)
!1518 = !DILocation(line: 939, column: 65, scope: !1509)
!1519 = !DILocation(line: 941, column: 8, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1509, file: !274, line: 941, column: 6)
!1521 = !DILocation(line: 941, column: 12, scope: !1520)
!1522 = !DILocation(line: 941, column: 21, scope: !1520)
!1523 = !DILocation(line: 941, column: 24, scope: !1520)
!1524 = !DILocation(line: 941, column: 6, scope: !1509)
!1525 = !DILocation(line: 941, column: 29, scope: !1520)
!1526 = !DILocation(line: 943, column: 3, scope: !1509)
!1527 = !DILocation(line: 943, column: 3, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1509, file: !274, line: 943, column: 3)
!1529 = !DILocalVariable(name: "elem", scope: !1509, file: !274, line: 945, type: !85)
!1530 = !DILocation(line: 945, column: 19, scope: !1509)
!1531 = !DILocation(line: 945, column: 43, scope: !1509)
!1532 = !DILocation(line: 946, column: 7, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1509, file: !274, line: 946, column: 6)
!1534 = !DILocation(line: 946, column: 6, scope: !1509)
!1535 = !DILocation(line: 947, column: 5, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1533, file: !274, line: 946, column: 13)
!1537 = !DILocation(line: 950, column: 10, scope: !1509)
!1538 = !DILocation(line: 950, column: 16, scope: !1509)
!1539 = !DILocation(line: 950, column: 3, scope: !1509)
!1540 = !DILocation(line: 952, column: 3, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1509, file: !274, line: 950, column: 23)
!1542 = !DILocalVariable(name: "atc", scope: !1543, file: !274, line: 953, type: !187)
!1543 = distinct !DILexicalBlock(scope: !1541, file: !274, line: 952, column: 6)
!1544 = !DILocation(line: 953, column: 24, scope: !1543)
!1545 = !DILocalVariable(name: "is_tcp_data", scope: !1543, file: !274, line: 954, type: !53)
!1546 = !DILocation(line: 954, column: 9, scope: !1543)
!1547 = !DILocation(line: 955, column: 8, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1543, file: !274, line: 955, column: 8)
!1549 = !DILocation(line: 955, column: 14, scope: !1548)
!1550 = !DILocation(line: 955, column: 20, scope: !1548)
!1551 = !DILocation(line: 955, column: 8, scope: !1543)
!1552 = !DILocalVariable(name: "i", scope: !1553, file: !274, line: 956, type: !53)
!1553 = distinct !DILexicalBlock(scope: !1548, file: !274, line: 955, column: 30)
!1554 = !DILocation(line: 956, column: 11, scope: !1553)
!1555 = !DILocation(line: 957, column: 12, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1553, file: !274, line: 957, column: 7)
!1557 = !DILocation(line: 957, column: 11, scope: !1556)
!1558 = !DILocation(line: 957, column: 15, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1556, file: !274, line: 957, column: 7)
!1560 = !DILocation(line: 957, column: 23, scope: !1559)
!1561 = !DILocation(line: 957, column: 29, scope: !1559)
!1562 = !DILocation(line: 957, column: 35, scope: !1559)
!1563 = !DILocation(line: 957, column: 17, scope: !1559)
!1564 = !DILocation(line: 957, column: 16, scope: !1559)
!1565 = !DILocation(line: 957, column: 7, scope: !1556)
!1566 = !DILocation(line: 958, column: 11, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1568, file: !274, line: 958, column: 11)
!1568 = distinct !DILexicalBlock(scope: !1559, file: !274, line: 957, column: 57)
!1569 = !DILocation(line: 958, column: 17, scope: !1567)
!1570 = !DILocation(line: 958, column: 23, scope: !1567)
!1571 = !DILocation(line: 958, column: 32, scope: !1567)
!1572 = !DILocation(line: 958, column: 11, scope: !1568)
!1573 = !DILocation(line: 959, column: 13, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1575, file: !274, line: 959, column: 12)
!1575 = distinct !DILexicalBlock(scope: !1567, file: !274, line: 958, column: 36)
!1576 = !DILocation(line: 959, column: 17, scope: !1574)
!1577 = !DILocation(line: 959, column: 23, scope: !1574)
!1578 = !DILocation(line: 959, column: 29, scope: !1574)
!1579 = !DILocation(line: 959, column: 38, scope: !1574)
!1580 = !DILocation(line: 959, column: 42, scope: !1574)
!1581 = !DILocation(line: 959, column: 15, scope: !1574)
!1582 = !DILocation(line: 959, column: 55, scope: !1574)
!1583 = !DILocation(line: 959, column: 59, scope: !1574)
!1584 = !DILocation(line: 959, column: 65, scope: !1574)
!1585 = !DILocation(line: 959, column: 71, scope: !1574)
!1586 = !DILocation(line: 959, column: 80, scope: !1574)
!1587 = !DILocation(line: 959, column: 84, scope: !1574)
!1588 = !DILocation(line: 959, column: 58, scope: !1574)
!1589 = !DILocation(line: 959, column: 12, scope: !1575)
!1590 = !DILocation(line: 960, column: 22, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1574, file: !274, line: 959, column: 101)
!1592 = !DILocation(line: 961, column: 16, scope: !1591)
!1593 = !DILocation(line: 961, column: 22, scope: !1591)
!1594 = !DILocation(line: 961, column: 28, scope: !1591)
!1595 = !DILocation(line: 961, column: 37, scope: !1591)
!1596 = !DILocation(line: 961, column: 14, scope: !1591)
!1597 = !DILocation(line: 962, column: 10, scope: !1591)
!1598 = !DILocation(line: 964, column: 8, scope: !1575)
!1599 = !DILocation(line: 965, column: 7, scope: !1568)
!1600 = !DILocation(line: 957, column: 52, scope: !1559)
!1601 = !DILocation(line: 957, column: 7, scope: !1559)
!1602 = distinct !{!1602, !1565, !1603, !571}
!1603 = !DILocation(line: 965, column: 7, scope: !1556)
!1604 = !DILocation(line: 966, column: 5, scope: !1553)
!1605 = !DILocalVariable(name: "rc", scope: !1543, file: !274, line: 967, type: !53)
!1606 = !DILocation(line: 967, column: 9, scope: !1543)
!1607 = !DILocation(line: 967, column: 26, scope: !1543)
!1608 = !DILocation(line: 967, column: 32, scope: !1543)
!1609 = !DILocation(line: 967, column: 45, scope: !1543)
!1610 = !DILocation(line: 967, column: 14, scope: !1543)
!1611 = !DILocation(line: 968, column: 8, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1543, file: !274, line: 968, column: 8)
!1613 = !DILocation(line: 968, column: 10, scope: !1612)
!1614 = !DILocation(line: 968, column: 8, scope: !1543)
!1615 = !DILocation(line: 968, column: 15, scope: !1612)
!1616 = !DILocation(line: 969, column: 3, scope: !1543)
!1617 = distinct !{!1617, !1540, !1618}
!1618 = !DILocation(line: 969, column: 12, scope: !1541)
!1619 = !DILocation(line: 971, column: 5, scope: !1541)
!1620 = !DILocation(line: 974, column: 3, scope: !1541)
!1621 = !DILocation(line: 975, column: 1, scope: !1509)
!1622 = distinct !DISubprogram(name: "client_read", scope: !274, file: !274, line: 643, type: !1623, scopeLine: 643, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !433)
!1623 = !DISubroutineType(types: !1624)
!1624 = !{!53, !85, !53, !187}
!1625 = !DILocalVariable(name: "elem", arg: 1, scope: !1622, file: !274, line: 643, type: !85)
!1626 = !DILocation(line: 643, column: 40, scope: !1622)
!1627 = !DILocalVariable(name: "is_tcp_data", arg: 2, scope: !1622, file: !274, line: 643, type: !53)
!1628 = !DILocation(line: 643, column: 50, scope: !1622)
!1629 = !DILocalVariable(name: "atc", arg: 3, scope: !1622, file: !274, line: 643, type: !187)
!1630 = !DILocation(line: 643, column: 82, scope: !1622)
!1631 = !DILocation(line: 645, column: 7, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1622, file: !274, line: 645, column: 6)
!1633 = !DILocation(line: 645, column: 6, scope: !1622)
!1634 = !DILocation(line: 646, column: 3, scope: !1632)
!1635 = !DILocation(line: 648, column: 6, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1622, file: !274, line: 648, column: 6)
!1637 = !DILocation(line: 648, column: 12, scope: !1636)
!1638 = !DILocation(line: 648, column: 18, scope: !1636)
!1639 = !DILocation(line: 648, column: 6, scope: !1622)
!1640 = !DILocation(line: 649, column: 3, scope: !1636)
!1641 = !DILocation(line: 651, column: 16, scope: !1622)
!1642 = !DILocation(line: 651, column: 2, scope: !1622)
!1643 = !DILocation(line: 651, column: 8, scope: !1622)
!1644 = !DILocation(line: 651, column: 14, scope: !1622)
!1645 = !DILocalVariable(name: "clnet_info", scope: !1622, file: !274, line: 653, type: !509)
!1646 = !DILocation(line: 653, column: 20, scope: !1622)
!1647 = !DILocation(line: 653, column: 35, scope: !1622)
!1648 = !DILocation(line: 653, column: 41, scope: !1622)
!1649 = !DILocalVariable(name: "err_code", scope: !1622, file: !274, line: 654, type: !53)
!1650 = !DILocation(line: 654, column: 6, scope: !1622)
!1651 = !DILocalVariable(name: "err_msg", scope: !1622, file: !274, line: 655, type: !1652)
!1652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 1032, elements: !154)
!1653 = !DILocation(line: 655, column: 10, scope: !1622)
!1654 = !DILocalVariable(name: "rc", scope: !1622, file: !274, line: 656, type: !53)
!1655 = !DILocation(line: 656, column: 6, scope: !1622)
!1656 = !DILocalVariable(name: "applen", scope: !1622, file: !274, line: 657, type: !53)
!1657 = !DILocation(line: 657, column: 6, scope: !1622)
!1658 = !DILocation(line: 659, column: 6, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1622, file: !274, line: 659, column: 6)
!1660 = !DILocation(line: 659, column: 20, scope: !1659)
!1661 = !DILocation(line: 659, column: 23, scope: !1659)
!1662 = !DILocation(line: 659, column: 6, scope: !1622)
!1663 = !DILocation(line: 660, column: 3, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1659, file: !274, line: 659, column: 40)
!1665 = !DILocation(line: 661, column: 2, scope: !1664)
!1666 = !DILocation(line: 663, column: 19, scope: !1622)
!1667 = !DILocation(line: 663, column: 33, scope: !1622)
!1668 = !DILocation(line: 663, column: 39, scope: !1622)
!1669 = !DILocation(line: 663, column: 54, scope: !1622)
!1670 = !DILocation(line: 663, column: 67, scope: !1622)
!1671 = !DILocation(line: 663, column: 7, scope: !1622)
!1672 = !DILocation(line: 663, column: 5, scope: !1622)
!1673 = !DILocation(line: 665, column: 6, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1622, file: !274, line: 665, column: 6)
!1675 = !DILocation(line: 665, column: 20, scope: !1674)
!1676 = !DILocation(line: 665, column: 23, scope: !1674)
!1677 = !DILocation(line: 665, column: 6, scope: !1622)
!1678 = !DILocation(line: 666, column: 63, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1674, file: !274, line: 665, column: 40)
!1680 = !DILocation(line: 666, column: 3, scope: !1679)
!1681 = !DILocation(line: 667, column: 2, scope: !1679)
!1682 = !DILocation(line: 669, column: 6, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1622, file: !274, line: 669, column: 6)
!1684 = !DILocation(line: 669, column: 9, scope: !1683)
!1685 = !DILocation(line: 669, column: 6, scope: !1622)
!1686 = !DILocation(line: 671, column: 25, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1683, file: !274, line: 669, column: 14)
!1688 = !DILocation(line: 671, column: 3, scope: !1687)
!1689 = !DILocation(line: 671, column: 9, scope: !1687)
!1690 = !DILocation(line: 671, column: 19, scope: !1687)
!1691 = !DILocation(line: 671, column: 23, scope: !1687)
!1692 = !DILocalVariable(name: "chnumber", scope: !1687, file: !274, line: 673, type: !116)
!1693 = !DILocation(line: 673, column: 12, scope: !1687)
!1694 = !DILocalVariable(name: "mi", scope: !1687, file: !274, line: 675, type: !266)
!1695 = !DILocation(line: 675, column: 16, scope: !1687)
!1696 = !DILocalVariable(name: "miset", scope: !1687, file: !274, line: 676, type: !53)
!1697 = !DILocation(line: 676, column: 7, scope: !1687)
!1698 = !DILocalVariable(name: "buffers", scope: !1687, file: !274, line: 677, type: !83)
!1699 = !DILocation(line: 677, column: 10, scope: !1687)
!1700 = !DILocation(line: 679, column: 6, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1687, file: !274, line: 679, column: 6)
!1702 = !DILocation(line: 679, column: 6, scope: !1687)
!1703 = !DILocation(line: 680, column: 14, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1705, file: !274, line: 680, column: 9)
!1705 = distinct !DILexicalBlock(scope: !1701, file: !274, line: 679, column: 19)
!1706 = !DILocation(line: 680, column: 20, scope: !1704)
!1707 = !DILocation(line: 680, column: 30, scope: !1704)
!1708 = !DILocation(line: 680, column: 9, scope: !1704)
!1709 = !DILocation(line: 680, column: 37, scope: !1704)
!1710 = !DILocation(line: 680, column: 34, scope: !1704)
!1711 = !DILocation(line: 680, column: 9, scope: !1705)
!1712 = !DILocation(line: 681, column: 14, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1704, file: !274, line: 680, column: 55)
!1714 = !DILocation(line: 681, column: 20, scope: !1713)
!1715 = !DILocation(line: 681, column: 30, scope: !1713)
!1716 = !DILocation(line: 681, column: 13, scope: !1713)
!1717 = !DILocation(line: 681, column: 7, scope: !1713)
!1718 = !DILocation(line: 682, column: 12, scope: !1713)
!1719 = !DILocation(line: 683, column: 5, scope: !1713)
!1720 = !DILocation(line: 685, column: 17, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1704, file: !274, line: 683, column: 12)
!1722 = !DILocation(line: 685, column: 23, scope: !1721)
!1723 = !DILocation(line: 685, column: 33, scope: !1721)
!1724 = !DILocation(line: 685, column: 12, scope: !1721)
!1725 = !DILocation(line: 685, column: 39, scope: !1721)
!1726 = !DILocation(line: 685, column: 37, scope: !1721)
!1727 = !DILocation(line: 685, column: 11, scope: !1721)
!1728 = !DILocation(line: 687, column: 3, scope: !1705)
!1729 = !DILocation(line: 687, column: 35, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1701, file: !274, line: 687, column: 14)
!1731 = !DILocation(line: 687, column: 41, scope: !1730)
!1732 = !DILocation(line: 687, column: 14, scope: !1730)
!1733 = !DILocation(line: 687, column: 14, scope: !1701)
!1734 = !DILocalVariable(name: "method", scope: !1735, file: !274, line: 689, type: !116)
!1735 = distinct !DILexicalBlock(scope: !1730, file: !274, line: 687, column: 54)
!1736 = !DILocation(line: 689, column: 13, scope: !1735)
!1737 = !DILocation(line: 689, column: 39, scope: !1735)
!1738 = !DILocation(line: 689, column: 45, scope: !1735)
!1739 = !DILocation(line: 689, column: 22, scope: !1735)
!1740 = !DILocation(line: 691, column: 8, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1735, file: !274, line: 691, column: 7)
!1742 = !DILocation(line: 691, column: 15, scope: !1741)
!1743 = !DILocation(line: 691, column: 49, scope: !1741)
!1744 = !DILocation(line: 691, column: 52, scope: !1741)
!1745 = !DILocation(line: 691, column: 7, scope: !1735)
!1746 = !DILocalVariable(name: "sar", scope: !1747, file: !274, line: 692, type: !1748)
!1747 = distinct !DILexicalBlock(scope: !1741, file: !274, line: 691, column: 68)
!1748 = !DIDerivedType(tag: DW_TAG_typedef, name: "stun_attr_ref", file: !45, line: 71, baseType: !1749)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1751 = !DILocation(line: 692, column: 20, scope: !1747)
!1752 = !DILocation(line: 692, column: 48, scope: !1747)
!1753 = !DILocation(line: 692, column: 54, scope: !1747)
!1754 = !DILocation(line: 692, column: 26, scope: !1747)
!1755 = !DILocalVariable(name: "cid", scope: !1747, file: !274, line: 693, type: !123)
!1756 = !DILocation(line: 693, column: 15, scope: !1747)
!1757 = !DILocation(line: 694, column: 6, scope: !1747)
!1758 = !DILocation(line: 694, column: 12, scope: !1747)
!1759 = !DILocalVariable(name: "attr_type", scope: !1760, file: !274, line: 695, type: !53)
!1760 = distinct !DILexicalBlock(scope: !1747, file: !274, line: 694, column: 17)
!1761 = !DILocation(line: 695, column: 11, scope: !1760)
!1762 = !DILocation(line: 695, column: 42, scope: !1760)
!1763 = !DILocation(line: 695, column: 23, scope: !1760)
!1764 = !DILocation(line: 696, column: 10, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1760, file: !274, line: 696, column: 10)
!1766 = !DILocation(line: 696, column: 20, scope: !1765)
!1767 = !DILocation(line: 696, column: 10, scope: !1760)
!1768 = !DILocation(line: 697, column: 53, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1765, file: !274, line: 696, column: 53)
!1770 = !DILocation(line: 697, column: 33, scope: !1769)
!1771 = !DILocation(line: 697, column: 14, scope: !1769)
!1772 = !DILocation(line: 697, column: 12, scope: !1769)
!1773 = !DILocation(line: 698, column: 8, scope: !1769)
!1774 = !DILocation(line: 700, column: 36, scope: !1760)
!1775 = !DILocation(line: 700, column: 42, scope: !1760)
!1776 = !DILocation(line: 700, column: 52, scope: !1760)
!1777 = !DILocation(line: 700, column: 56, scope: !1760)
!1778 = !DILocation(line: 700, column: 62, scope: !1760)
!1779 = !DILocation(line: 700, column: 72, scope: !1760)
!1780 = !DILocation(line: 700, column: 76, scope: !1760)
!1781 = !DILocation(line: 700, column: 13, scope: !1760)
!1782 = !DILocation(line: 700, column: 11, scope: !1760)
!1783 = distinct !{!1783, !1757, !1784, !571}
!1784 = !DILocation(line: 701, column: 6, scope: !1747)
!1785 = !DILocation(line: 702, column: 9, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1747, file: !274, line: 702, column: 9)
!1787 = !DILocation(line: 702, column: 9, scope: !1747)
!1788 = !DILocation(line: 703, column: 24, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1786, file: !274, line: 702, column: 24)
!1790 = !DILocation(line: 703, column: 39, scope: !1789)
!1791 = !DILocation(line: 703, column: 29, scope: !1789)
!1792 = !DILocation(line: 703, column: 7, scope: !1789)
!1793 = !DILocation(line: 704, column: 6, scope: !1789)
!1794 = !DILocation(line: 706, column: 24, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1786, file: !274, line: 704, column: 13)
!1796 = !DILocation(line: 706, column: 29, scope: !1795)
!1797 = !DILocation(line: 706, column: 7, scope: !1795)
!1798 = !DILocation(line: 708, column: 13, scope: !1747)
!1799 = !DILocation(line: 708, column: 6, scope: !1747)
!1800 = !DILocation(line: 709, column: 15, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1741, file: !274, line: 709, column: 15)
!1802 = !DILocation(line: 709, column: 22, scope: !1801)
!1803 = !DILocation(line: 709, column: 15, scope: !1741)
!1804 = !DILocation(line: 713, column: 13, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1801, file: !274, line: 709, column: 43)
!1806 = !DILocation(line: 713, column: 7, scope: !1805)
!1807 = !DILocation(line: 710, column: 5, scope: !1805)
!1808 = !DILocation(line: 714, column: 12, scope: !1805)
!1809 = !DILocation(line: 714, column: 5, scope: !1805)
!1810 = !DILocalVariable(name: "sar", scope: !1811, file: !274, line: 717, type: !1748)
!1811 = distinct !DILexicalBlock(scope: !1801, file: !274, line: 715, column: 11)
!1812 = !DILocation(line: 717, column: 19, scope: !1811)
!1813 = !DILocation(line: 717, column: 55, scope: !1811)
!1814 = !DILocation(line: 717, column: 61, scope: !1811)
!1815 = !DILocation(line: 717, column: 25, scope: !1811)
!1816 = !DILocation(line: 718, column: 10, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1811, file: !274, line: 718, column: 9)
!1818 = !DILocation(line: 718, column: 9, scope: !1811)
!1819 = !DILocation(line: 719, column: 96, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1817, file: !274, line: 718, column: 15)
!1821 = !DILocation(line: 719, column: 6, scope: !1820)
!1822 = !DILocation(line: 720, column: 13, scope: !1820)
!1823 = !DILocation(line: 720, column: 6, scope: !1820)
!1824 = !DILocalVariable(name: "rlen", scope: !1811, file: !274, line: 723, type: !53)
!1825 = !DILocation(line: 723, column: 9, scope: !1811)
!1826 = !DILocation(line: 723, column: 34, scope: !1811)
!1827 = !DILocation(line: 723, column: 16, scope: !1811)
!1828 = !DILocation(line: 724, column: 14, scope: !1811)
!1829 = !DILocation(line: 724, column: 12, scope: !1811)
!1830 = !DILocation(line: 725, column: 9, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1811, file: !274, line: 725, column: 9)
!1832 = !DILocation(line: 725, column: 17, scope: !1831)
!1833 = !DILocation(line: 725, column: 14, scope: !1831)
!1834 = !DILocation(line: 725, column: 9, scope: !1811)
!1835 = !DILocation(line: 726, column: 105, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1831, file: !274, line: 725, column: 35)
!1837 = !DILocation(line: 726, column: 111, scope: !1836)
!1838 = !DILocation(line: 726, column: 6, scope: !1836)
!1839 = !DILocation(line: 727, column: 24, scope: !1836)
!1840 = !DILocation(line: 727, column: 21, scope: !1836)
!1841 = !DILocation(line: 728, column: 13, scope: !1836)
!1842 = !DILocation(line: 728, column: 6, scope: !1836)
!1843 = !DILocalVariable(name: "data", scope: !1811, file: !274, line: 731, type: !250)
!1844 = !DILocation(line: 731, column: 20, scope: !1811)
!1845 = !DILocation(line: 731, column: 47, scope: !1811)
!1846 = !DILocation(line: 731, column: 27, scope: !1811)
!1847 = !DILocation(line: 733, column: 11, scope: !1811)
!1848 = !DILocation(line: 733, column: 5, scope: !1811)
!1849 = !DILocation(line: 734, column: 10, scope: !1811)
!1850 = !DILocation(line: 737, column: 3, scope: !1735)
!1851 = !DILocation(line: 737, column: 41, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1730, file: !274, line: 737, column: 14)
!1853 = !DILocation(line: 737, column: 47, scope: !1852)
!1854 = !DILocation(line: 737, column: 14, scope: !1852)
!1855 = !DILocation(line: 737, column: 14, scope: !1730)
!1856 = !DILocation(line: 739, column: 7, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1858, file: !274, line: 739, column: 7)
!1858 = distinct !DILexicalBlock(scope: !1852, file: !274, line: 737, column: 60)
!1859 = !DILocation(line: 739, column: 13, scope: !1857)
!1860 = !DILocation(line: 739, column: 19, scope: !1857)
!1861 = !DILocation(line: 739, column: 7, scope: !1858)
!1862 = !DILocation(line: 740, column: 26, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1864, file: !274, line: 740, column: 8)
!1864 = distinct !DILexicalBlock(scope: !1857, file: !274, line: 739, column: 29)
!1865 = !DILocation(line: 740, column: 32, scope: !1863)
!1866 = !DILocation(line: 740, column: 42, scope: !1863)
!1867 = !DILocation(line: 740, column: 48, scope: !1863)
!1868 = !DILocation(line: 740, column: 8, scope: !1863)
!1869 = !DILocation(line: 740, column: 59, scope: !1863)
!1870 = !DILocation(line: 740, column: 8, scope: !1864)
!1871 = !DILocation(line: 741, column: 6, scope: !1863)
!1872 = !DILocation(line: 742, column: 4, scope: !1864)
!1873 = !DILocation(line: 744, column: 7, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1858, file: !274, line: 744, column: 7)
!1875 = !DILocation(line: 744, column: 22, scope: !1874)
!1876 = !DILocation(line: 744, column: 44, scope: !1874)
!1877 = !DILocation(line: 744, column: 50, scope: !1874)
!1878 = !DILocation(line: 744, column: 26, scope: !1874)
!1879 = !DILocation(line: 744, column: 62, scope: !1874)
!1880 = !DILocation(line: 744, column: 7, scope: !1858)
!1881 = !DILocalVariable(name: "sar", scope: !1882, file: !274, line: 745, type: !1748)
!1882 = distinct !DILexicalBlock(scope: !1874, file: !274, line: 744, column: 87)
!1883 = !DILocation(line: 745, column: 19, scope: !1882)
!1884 = !DILocation(line: 745, column: 47, scope: !1882)
!1885 = !DILocation(line: 745, column: 53, scope: !1882)
!1886 = !DILocation(line: 745, column: 25, scope: !1882)
!1887 = !DILocalVariable(name: "cid", scope: !1882, file: !274, line: 746, type: !123)
!1888 = !DILocation(line: 746, column: 14, scope: !1882)
!1889 = !DILocation(line: 747, column: 5, scope: !1882)
!1890 = !DILocation(line: 747, column: 11, scope: !1882)
!1891 = !DILocalVariable(name: "attr_type", scope: !1892, file: !274, line: 748, type: !53)
!1892 = distinct !DILexicalBlock(scope: !1882, file: !274, line: 747, column: 16)
!1893 = !DILocation(line: 748, column: 11, scope: !1892)
!1894 = !DILocation(line: 748, column: 42, scope: !1892)
!1895 = !DILocation(line: 748, column: 23, scope: !1892)
!1896 = !DILocation(line: 749, column: 10, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1892, file: !274, line: 749, column: 10)
!1898 = !DILocation(line: 749, column: 20, scope: !1897)
!1899 = !DILocation(line: 749, column: 10, scope: !1892)
!1900 = !DILocation(line: 750, column: 53, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1897, file: !274, line: 749, column: 53)
!1902 = !DILocation(line: 750, column: 33, scope: !1901)
!1903 = !DILocation(line: 750, column: 14, scope: !1901)
!1904 = !DILocation(line: 750, column: 12, scope: !1901)
!1905 = !DILocation(line: 751, column: 8, scope: !1901)
!1906 = !DILocation(line: 753, column: 36, scope: !1892)
!1907 = !DILocation(line: 753, column: 42, scope: !1892)
!1908 = !DILocation(line: 753, column: 52, scope: !1892)
!1909 = !DILocation(line: 753, column: 56, scope: !1892)
!1910 = !DILocation(line: 753, column: 62, scope: !1892)
!1911 = !DILocation(line: 753, column: 72, scope: !1892)
!1912 = !DILocation(line: 753, column: 76, scope: !1892)
!1913 = !DILocation(line: 753, column: 13, scope: !1892)
!1914 = !DILocation(line: 753, column: 11, scope: !1892)
!1915 = distinct !{!1915, !1889, !1916, !571}
!1916 = !DILocation(line: 754, column: 5, scope: !1882)
!1917 = !DILocation(line: 755, column: 22, scope: !1882)
!1918 = !DILocation(line: 755, column: 27, scope: !1882)
!1919 = !DILocation(line: 755, column: 5, scope: !1882)
!1920 = !DILocation(line: 756, column: 4, scope: !1882)
!1921 = !DILocation(line: 758, column: 11, scope: !1858)
!1922 = !DILocation(line: 758, column: 4, scope: !1858)
!1923 = !DILocation(line: 759, column: 45, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1852, file: !274, line: 759, column: 14)
!1925 = !DILocation(line: 759, column: 51, scope: !1924)
!1926 = !DILocation(line: 759, column: 61, scope: !1924)
!1927 = !DILocation(line: 759, column: 74, scope: !1924)
!1928 = !DILocation(line: 759, column: 80, scope: !1924)
!1929 = !DILocation(line: 759, column: 90, scope: !1924)
!1930 = !DILocation(line: 760, column: 18, scope: !1924)
!1931 = !DILocation(line: 761, column: 8, scope: !1924)
!1932 = !DILocation(line: 761, column: 20, scope: !1924)
!1933 = !DILocation(line: 761, column: 26, scope: !1924)
!1934 = !DILocation(line: 761, column: 38, scope: !1924)
!1935 = !DILocation(line: 762, column: 8, scope: !1924)
!1936 = !DILocation(line: 762, column: 20, scope: !1924)
!1937 = !DILocation(line: 762, column: 35, scope: !1924)
!1938 = !DILocation(line: 762, column: 47, scope: !1924)
!1939 = !DILocation(line: 759, column: 14, scope: !1924)
!1940 = !DILocation(line: 759, column: 14, scope: !1852)
!1941 = !DILocation(line: 763, column: 7, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1943, file: !274, line: 763, column: 7)
!1943 = distinct !DILexicalBlock(scope: !1924, file: !274, line: 762, column: 56)
!1944 = !DILocation(line: 763, column: 22, scope: !1942)
!1945 = !DILocation(line: 763, column: 44, scope: !1942)
!1946 = !DILocation(line: 763, column: 50, scope: !1942)
!1947 = !DILocation(line: 763, column: 26, scope: !1942)
!1948 = !DILocation(line: 763, column: 62, scope: !1942)
!1949 = !DILocation(line: 763, column: 7, scope: !1943)
!1950 = !DILocation(line: 764, column: 22, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1942, file: !274, line: 763, column: 87)
!1952 = !DILocation(line: 764, column: 39, scope: !1951)
!1953 = !DILocation(line: 764, column: 45, scope: !1951)
!1954 = !DILocation(line: 764, column: 55, scope: !1951)
!1955 = !DILocation(line: 764, column: 61, scope: !1951)
!1956 = !DILocation(line: 764, column: 67, scope: !1951)
!1957 = !DILocation(line: 764, column: 5, scope: !1951)
!1958 = !DILocation(line: 765, column: 4, scope: !1951)
!1959 = !DILocation(line: 765, column: 32, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1942, file: !274, line: 765, column: 14)
!1961 = !DILocation(line: 765, column: 38, scope: !1960)
!1962 = !DILocation(line: 765, column: 14, scope: !1960)
!1963 = !DILocation(line: 765, column: 50, scope: !1960)
!1964 = !DILocation(line: 765, column: 14, scope: !1942)
!1965 = !DILocation(line: 766, column: 21, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1960, file: !274, line: 765, column: 74)
!1967 = !DILocation(line: 766, column: 44, scope: !1966)
!1968 = !DILocation(line: 766, column: 50, scope: !1966)
!1969 = !DILocation(line: 766, column: 27, scope: !1966)
!1970 = !DILocation(line: 766, column: 5, scope: !1966)
!1971 = !DILocation(line: 767, column: 4, scope: !1966)
!1972 = !DILocation(line: 768, column: 11, scope: !1943)
!1973 = !DILocation(line: 768, column: 4, scope: !1943)
!1974 = !DILocation(line: 769, column: 39, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1924, file: !274, line: 769, column: 14)
!1976 = !DILocation(line: 769, column: 45, scope: !1975)
!1977 = !DILocation(line: 769, column: 14, scope: !1975)
!1978 = !DILocation(line: 769, column: 14, scope: !1924)
!1979 = !DILocation(line: 770, column: 11, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1975, file: !274, line: 769, column: 71)
!1981 = !DILocation(line: 770, column: 4, scope: !1980)
!1982 = !DILocation(line: 771, column: 40, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1975, file: !274, line: 771, column: 14)
!1984 = !DILocation(line: 771, column: 46, scope: !1983)
!1985 = !DILocation(line: 771, column: 69, scope: !1983)
!1986 = !DILocation(line: 771, column: 14, scope: !1983)
!1987 = !DILocation(line: 771, column: 14, scope: !1975)
!1988 = !DILocation(line: 772, column: 8, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1990, file: !274, line: 772, column: 8)
!1990 = distinct !DILexicalBlock(scope: !1983, file: !274, line: 771, column: 79)
!1991 = !DILocation(line: 772, column: 14, scope: !1989)
!1992 = !DILocation(line: 772, column: 23, scope: !1989)
!1993 = !DILocation(line: 772, column: 20, scope: !1989)
!1994 = !DILocation(line: 772, column: 8, scope: !1990)
!1995 = !DILocation(line: 775, column: 13, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1989, file: !274, line: 772, column: 33)
!1997 = !DILocation(line: 775, column: 7, scope: !1996)
!1998 = !DILocation(line: 773, column: 5, scope: !1996)
!1999 = !DILocation(line: 776, column: 12, scope: !1996)
!2000 = !DILocation(line: 776, column: 5, scope: !1996)
!2001 = !DILocation(line: 779, column: 8, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !1990, file: !274, line: 779, column: 8)
!2003 = !DILocation(line: 779, column: 14, scope: !2002)
!2004 = !DILocation(line: 779, column: 24, scope: !2002)
!2005 = !DILocation(line: 779, column: 28, scope: !2002)
!2006 = !DILocation(line: 779, column: 8, scope: !1990)
!2007 = !DILocation(line: 780, column: 16, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !2009, file: !274, line: 780, column: 9)
!2009 = distinct !DILexicalBlock(scope: !2002, file: !274, line: 779, column: 34)
!2010 = !DILocation(line: 780, column: 22, scope: !2008)
!2011 = !DILocation(line: 780, column: 32, scope: !2008)
!2012 = !DILocation(line: 780, column: 35, scope: !2008)
!2013 = !DILocation(line: 780, column: 10, scope: !2008)
!2014 = !DILocation(line: 780, column: 41, scope: !2008)
!2015 = !DILocation(line: 780, column: 39, scope: !2008)
!2016 = !DILocation(line: 780, column: 59, scope: !2008)
!2017 = !DILocation(line: 781, column: 13, scope: !2008)
!2018 = !DILocation(line: 781, column: 19, scope: !2008)
!2019 = !DILocation(line: 781, column: 29, scope: !2008)
!2020 = !DILocation(line: 781, column: 32, scope: !2008)
!2021 = !DILocation(line: 781, column: 7, scope: !2008)
!2022 = !DILocation(line: 781, column: 38, scope: !2008)
!2023 = !DILocation(line: 781, column: 55, scope: !2008)
!2024 = !DILocation(line: 781, column: 36, scope: !2008)
!2025 = !DILocation(line: 780, column: 9, scope: !2009)
!2026 = !DILocation(line: 785, column: 8, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !2008, file: !274, line: 781, column: 61)
!2028 = !DILocation(line: 785, column: 12, scope: !2027)
!2029 = !DILocation(line: 785, column: 29, scope: !2027)
!2030 = !DILocation(line: 785, column: 38, scope: !2027)
!2031 = !DILocation(line: 785, column: 44, scope: !2027)
!2032 = !DILocation(line: 785, column: 54, scope: !2027)
!2033 = !DILocation(line: 785, column: 33, scope: !2027)
!2034 = !DILocation(line: 782, column: 6, scope: !2027)
!2035 = !DILocation(line: 786, column: 13, scope: !2027)
!2036 = !DILocation(line: 786, column: 6, scope: !2027)
!2037 = !DILocation(line: 789, column: 11, scope: !2009)
!2038 = !DILocation(line: 789, column: 17, scope: !2009)
!2039 = !DILocation(line: 789, column: 27, scope: !2009)
!2040 = !DILocation(line: 789, column: 31, scope: !2009)
!2041 = !DILocation(line: 789, column: 5, scope: !2009)
!2042 = !DILocation(line: 790, column: 10, scope: !2009)
!2043 = !DILocation(line: 791, column: 14, scope: !2009)
!2044 = !DILocation(line: 791, column: 20, scope: !2009)
!2045 = !DILocation(line: 791, column: 30, scope: !2009)
!2046 = !DILocation(line: 791, column: 34, scope: !2009)
!2047 = !DILocation(line: 791, column: 12, scope: !2009)
!2048 = !DILocation(line: 792, column: 4, scope: !2009)
!2049 = !DILocation(line: 793, column: 3, scope: !1990)
!2050 = !DILocation(line: 795, column: 60, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !1983, file: !274, line: 793, column: 10)
!2052 = !DILocation(line: 795, column: 66, scope: !2051)
!2053 = !DILocation(line: 795, column: 76, scope: !2051)
!2054 = !DILocation(line: 795, column: 54, scope: !2051)
!2055 = !DILocation(line: 794, column: 4, scope: !2051)
!2056 = !DILocation(line: 796, column: 11, scope: !2051)
!2057 = !DILocation(line: 796, column: 4, scope: !2051)
!2058 = !DILocation(line: 799, column: 6, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !1687, file: !274, line: 799, column: 6)
!2060 = !DILocation(line: 799, column: 6, scope: !1687)
!2061 = !DILocation(line: 804, column: 10, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2063, file: !274, line: 804, column: 7)
!2063 = distinct !DILexicalBlock(scope: !2059, file: !274, line: 799, column: 13)
!2064 = !DILocation(line: 804, column: 20, scope: !2062)
!2065 = !DILocation(line: 804, column: 26, scope: !2062)
!2066 = !DILocation(line: 804, column: 36, scope: !2062)
!2067 = !DILocation(line: 804, column: 17, scope: !2062)
!2068 = !DILocation(line: 804, column: 7, scope: !2063)
!2069 = !DILocation(line: 805, column: 8, scope: !2062)
!2070 = !DILocation(line: 805, column: 14, scope: !2062)
!2071 = !DILocation(line: 805, column: 5, scope: !2062)
!2072 = !DILocalVariable(name: "clatency", scope: !2073, file: !274, line: 807, type: !239)
!2073 = distinct !DILexicalBlock(scope: !2062, file: !274, line: 806, column: 9)
!2074 = !DILocation(line: 807, column: 15, scope: !2073)
!2075 = !DILocation(line: 807, column: 47, scope: !2073)
!2076 = !DILocation(line: 807, column: 65, scope: !2073)
!2077 = !DILocation(line: 807, column: 36, scope: !2073)
!2078 = !DILocation(line: 808, column: 9, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2073, file: !274, line: 808, column: 9)
!2080 = !DILocation(line: 808, column: 18, scope: !2079)
!2081 = !DILocation(line: 808, column: 17, scope: !2079)
!2082 = !DILocation(line: 808, column: 9, scope: !2073)
!2083 = !DILocation(line: 809, column: 22, scope: !2079)
!2084 = !DILocation(line: 809, column: 20, scope: !2079)
!2085 = !DILocation(line: 809, column: 8, scope: !2079)
!2086 = !DILocation(line: 810, column: 9, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2073, file: !274, line: 810, column: 9)
!2088 = !DILocation(line: 810, column: 18, scope: !2087)
!2089 = !DILocation(line: 810, column: 17, scope: !2087)
!2090 = !DILocation(line: 810, column: 9, scope: !2073)
!2091 = !DILocation(line: 811, column: 22, scope: !2087)
!2092 = !DILocation(line: 811, column: 20, scope: !2087)
!2093 = !DILocation(line: 811, column: 8, scope: !2087)
!2094 = !DILocation(line: 812, column: 23, scope: !2073)
!2095 = !DILocation(line: 812, column: 6, scope: !2073)
!2096 = !DILocation(line: 812, column: 12, scope: !2073)
!2097 = !DILocation(line: 812, column: 20, scope: !2073)
!2098 = !DILocation(line: 813, column: 9, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2073, file: !274, line: 813, column: 9)
!2100 = !DILocation(line: 813, column: 15, scope: !2099)
!2101 = !DILocation(line: 813, column: 22, scope: !2099)
!2102 = !DILocation(line: 813, column: 9, scope: !2073)
!2103 = !DILocalVariable(name: "cjitter", scope: !2104, file: !274, line: 814, type: !239)
!2104 = distinct !DILexicalBlock(scope: !2099, file: !274, line: 813, column: 26)
!2105 = !DILocation(line: 814, column: 17, scope: !2104)
!2106 = !DILocation(line: 814, column: 37, scope: !2104)
!2107 = !DILocation(line: 814, column: 52, scope: !2104)
!2108 = !DILocation(line: 814, column: 58, scope: !2104)
!2109 = !DILocation(line: 814, column: 51, scope: !2104)
!2110 = !DILocation(line: 814, column: 31, scope: !2104)
!2111 = !DILocation(line: 814, column: 70, scope: !2104)
!2112 = !DILocation(line: 814, column: 69, scope: !2104)
!2113 = !DILocation(line: 814, column: 27, scope: !2104)
!2114 = !DILocation(line: 816, column: 11, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2104, file: !274, line: 816, column: 11)
!2116 = !DILocation(line: 816, column: 19, scope: !2115)
!2117 = !DILocation(line: 816, column: 18, scope: !2115)
!2118 = !DILocation(line: 816, column: 11, scope: !2104)
!2119 = !DILocation(line: 817, column: 23, scope: !2115)
!2120 = !DILocation(line: 817, column: 21, scope: !2115)
!2121 = !DILocation(line: 817, column: 10, scope: !2115)
!2122 = !DILocation(line: 818, column: 11, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !2104, file: !274, line: 818, column: 11)
!2124 = !DILocation(line: 818, column: 19, scope: !2123)
!2125 = !DILocation(line: 818, column: 18, scope: !2123)
!2126 = !DILocation(line: 818, column: 11, scope: !2104)
!2127 = !DILocation(line: 819, column: 23, scope: !2123)
!2128 = !DILocation(line: 819, column: 21, scope: !2123)
!2129 = !DILocation(line: 819, column: 10, scope: !2123)
!2130 = !DILocation(line: 821, column: 24, scope: !2104)
!2131 = !DILocation(line: 821, column: 8, scope: !2104)
!2132 = !DILocation(line: 821, column: 14, scope: !2104)
!2133 = !DILocation(line: 821, column: 21, scope: !2104)
!2134 = !DILocation(line: 822, column: 6, scope: !2104)
!2135 = !DILocation(line: 825, column: 26, scope: !2063)
!2136 = !DILocation(line: 825, column: 4, scope: !2063)
!2137 = !DILocation(line: 825, column: 10, scope: !2063)
!2138 = !DILocation(line: 825, column: 21, scope: !2063)
!2139 = !DILocation(line: 826, column: 3, scope: !2063)
!2140 = !DILocation(line: 828, column: 18, scope: !1687)
!2141 = !DILocation(line: 828, column: 3, scope: !1687)
!2142 = !DILocation(line: 828, column: 9, scope: !1687)
!2143 = !DILocation(line: 828, column: 16, scope: !1687)
!2144 = !DILocation(line: 829, column: 22, scope: !1687)
!2145 = !DILocation(line: 829, column: 20, scope: !1687)
!2146 = !DILocation(line: 830, column: 6, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !1687, file: !274, line: 830, column: 6)
!2148 = !DILocation(line: 830, column: 13, scope: !2147)
!2149 = !DILocation(line: 830, column: 6, scope: !1687)
!2150 = !DILocation(line: 831, column: 22, scope: !2147)
!2151 = !DILocation(line: 831, column: 19, scope: !2147)
!2152 = !DILocation(line: 831, column: 4, scope: !2147)
!2153 = !DILocation(line: 833, column: 22, scope: !2147)
!2154 = !DILocation(line: 833, column: 28, scope: !2147)
!2155 = !DILocation(line: 833, column: 38, scope: !2147)
!2156 = !DILocation(line: 833, column: 19, scope: !2147)
!2157 = !DILocation(line: 834, column: 20, scope: !1687)
!2158 = !DILocation(line: 834, column: 3, scope: !1687)
!2159 = !DILocation(line: 834, column: 9, scope: !1687)
!2160 = !DILocation(line: 834, column: 19, scope: !1687)
!2161 = !DILocation(line: 835, column: 3, scope: !1687)
!2162 = !DILocation(line: 835, column: 9, scope: !1687)
!2163 = !DILocation(line: 835, column: 21, scope: !1687)
!2164 = !DILocation(line: 837, column: 2, scope: !1687)
!2165 = !DILocation(line: 837, column: 12, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !1683, file: !274, line: 837, column: 12)
!2167 = !DILocation(line: 837, column: 15, scope: !2166)
!2168 = !DILocation(line: 837, column: 12, scope: !1683)
!2169 = !DILocation(line: 838, column: 3, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2166, file: !274, line: 837, column: 21)
!2171 = !DILocation(line: 840, column: 3, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2166, file: !274, line: 839, column: 9)
!2173 = !DILocation(line: 843, column: 9, scope: !1622)
!2174 = !DILocation(line: 843, column: 2, scope: !1622)
!2175 = !DILocation(line: 844, column: 1, scope: !1622)
!2176 = distinct !DISubprogram(name: "start_mclient", scope: !274, file: !274, line: 1373, type: !2177, scopeLine: 1375, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !433)
!2177 = !DISubroutineType(types: !2178)
!2178 = !{null, !258, !53, !2179, !258, !53, !53}
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!2181 = !DILocalVariable(name: "remote_address", arg: 1, scope: !2176, file: !274, line: 1373, type: !258)
!2182 = !DILocation(line: 1373, column: 32, scope: !2176)
!2183 = !DILocalVariable(name: "port", arg: 2, scope: !2176, file: !274, line: 1373, type: !53)
!2184 = !DILocation(line: 1373, column: 52, scope: !2176)
!2185 = !DILocalVariable(name: "ifname", arg: 3, scope: !2176, file: !274, line: 1374, type: !2179)
!2186 = !DILocation(line: 1374, column: 24, scope: !2176)
!2187 = !DILocalVariable(name: "local_address", arg: 4, scope: !2176, file: !274, line: 1374, type: !258)
!2188 = !DILocation(line: 1374, column: 44, scope: !2176)
!2189 = !DILocalVariable(name: "messagenumber", arg: 5, scope: !2176, file: !274, line: 1375, type: !53)
!2190 = !DILocation(line: 1375, column: 7, scope: !2176)
!2191 = !DILocalVariable(name: "mclient", arg: 6, scope: !2176, file: !274, line: 1375, type: !53)
!2192 = !DILocation(line: 1375, column: 26, scope: !2176)
!2193 = !DILocation(line: 1377, column: 6, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2176, file: !274, line: 1377, column: 6)
!2195 = !DILocation(line: 1377, column: 14, scope: !2194)
!2196 = !DILocation(line: 1377, column: 6, scope: !2176)
!2197 = !DILocation(line: 1378, column: 11, scope: !2194)
!2198 = !DILocation(line: 1378, column: 3, scope: !2194)
!2199 = !DILocation(line: 1380, column: 18, scope: !2176)
!2200 = !DILocation(line: 1380, column: 16, scope: !2176)
!2201 = !DILocation(line: 1382, column: 5, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2176, file: !274, line: 1382, column: 5)
!2203 = !DILocation(line: 1382, column: 5, scope: !2176)
!2204 = !DILocation(line: 1384, column: 8, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2206, file: !274, line: 1384, column: 7)
!2206 = distinct !DILexicalBlock(scope: !2202, file: !274, line: 1382, column: 10)
!2207 = !DILocation(line: 1384, column: 7, scope: !2206)
!2208 = !DILocation(line: 1385, column: 24, scope: !2205)
!2209 = !DILocation(line: 1385, column: 32, scope: !2205)
!2210 = !DILocation(line: 1385, column: 21, scope: !2205)
!2211 = !DILocation(line: 1385, column: 47, scope: !2205)
!2212 = !DILocation(line: 1385, column: 14, scope: !2205)
!2213 = !DILocation(line: 1385, column: 6, scope: !2205)
!2214 = !DILocation(line: 1386, column: 12, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2205, file: !274, line: 1386, column: 12)
!2216 = !DILocation(line: 1386, column: 20, scope: !2215)
!2217 = !DILocation(line: 1386, column: 12, scope: !2205)
!2218 = !DILocation(line: 1387, column: 6, scope: !2215)
!2219 = !DILocation(line: 1388, column: 2, scope: !2206)
!2220 = !DILocation(line: 1389, column: 8, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2222, file: !274, line: 1389, column: 7)
!2222 = distinct !DILexicalBlock(scope: !2202, file: !274, line: 1388, column: 9)
!2223 = !DILocation(line: 1389, column: 7, scope: !2222)
!2224 = !DILocation(line: 1390, column: 9, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2221, file: !274, line: 1390, column: 9)
!2226 = !DILocation(line: 1390, column: 17, scope: !2225)
!2227 = !DILocation(line: 1390, column: 9, scope: !2221)
!2228 = !DILocation(line: 1391, column: 8, scope: !2225)
!2229 = !DILocation(line: 1390, column: 19, scope: !2225)
!2230 = !DILocation(line: 1394, column: 60, scope: !2176)
!2231 = !DILocation(line: 1394, column: 67, scope: !2176)
!2232 = !DILocation(line: 1394, column: 70, scope: !2176)
!2233 = !DILocation(line: 1394, column: 58, scope: !2176)
!2234 = !DILocation(line: 1394, column: 57, scope: !2176)
!2235 = !DILocation(line: 1394, column: 73, scope: !2176)
!2236 = !DILocation(line: 1394, column: 28, scope: !2176)
!2237 = !DILocation(line: 1394, column: 8, scope: !2176)
!2238 = !DILocation(line: 1396, column: 2, scope: !2176)
!2239 = !DILocalVariable(name: "stime", scope: !2176, file: !274, line: 1397, type: !123)
!2240 = !DILocation(line: 1397, column: 11, scope: !2176)
!2241 = !DILocation(line: 1397, column: 19, scope: !2176)
!2242 = !DILocation(line: 1399, column: 28, scope: !2176)
!2243 = !DILocation(line: 1399, column: 2, scope: !2176)
!2244 = !DILocation(line: 1401, column: 22, scope: !2176)
!2245 = !DILocation(line: 1401, column: 20, scope: !2176)
!2246 = !DILocalVariable(name: "i", scope: !2176, file: !274, line: 1403, type: !53)
!2247 = !DILocation(line: 1403, column: 6, scope: !2176)
!2248 = !DILocalVariable(name: "tot_clients", scope: !2176, file: !274, line: 1404, type: !53)
!2249 = !DILocation(line: 1404, column: 6, scope: !2176)
!2250 = !DILocation(line: 1406, column: 5, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2176, file: !274, line: 1406, column: 5)
!2252 = !DILocation(line: 1406, column: 5, scope: !2176)
!2253 = !DILocation(line: 1407, column: 8, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2255, file: !274, line: 1407, column: 7)
!2255 = distinct !DILexicalBlock(scope: !2251, file: !274, line: 1406, column: 10)
!2256 = !DILocation(line: 1407, column: 7, scope: !2255)
!2257 = !DILocation(line: 1408, column: 13, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2254, file: !274, line: 1408, column: 6)
!2259 = !DILocation(line: 1408, column: 11, scope: !2258)
!2260 = !DILocation(line: 1408, column: 18, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2258, file: !274, line: 1408, column: 6)
!2262 = !DILocation(line: 1408, column: 23, scope: !2261)
!2263 = !DILocation(line: 1408, column: 31, scope: !2261)
!2264 = !DILocation(line: 1408, column: 20, scope: !2261)
!2265 = !DILocation(line: 1408, column: 6, scope: !2258)
!2266 = !DILocation(line: 1409, column: 12, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2268, file: !274, line: 1409, column: 11)
!2268 = distinct !DILexicalBlock(scope: !2261, file: !274, line: 1408, column: 43)
!2269 = !DILocation(line: 1409, column: 11, scope: !2268)
!2270 = !DILocation(line: 1409, column: 17, scope: !2267)
!2271 = !DILocation(line: 1410, column: 22, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2268, file: !274, line: 1410, column: 12)
!2273 = !DILocation(line: 1410, column: 38, scope: !2272)
!2274 = !DILocation(line: 1410, column: 44, scope: !2272)
!2275 = !DILocation(line: 1410, column: 52, scope: !2272)
!2276 = !DILocation(line: 1411, column: 8, scope: !2272)
!2277 = !DILocation(line: 1411, column: 23, scope: !2272)
!2278 = !DILocation(line: 1411, column: 25, scope: !2272)
!2279 = !DILocation(line: 1410, column: 12, scope: !2272)
!2280 = !DILocation(line: 1411, column: 31, scope: !2272)
!2281 = !DILocation(line: 1410, column: 12, scope: !2268)
!2282 = !DILocation(line: 1412, column: 9, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2272, file: !274, line: 1411, column: 36)
!2284 = !DILocation(line: 1414, column: 19, scope: !2268)
!2285 = !DILocation(line: 1415, column: 6, scope: !2268)
!2286 = !DILocation(line: 1408, column: 39, scope: !2261)
!2287 = !DILocation(line: 1408, column: 6, scope: !2261)
!2288 = distinct !{!2288, !2265, !2289, !571}
!2289 = !DILocation(line: 1415, column: 6, scope: !2258)
!2290 = !DILocation(line: 1417, column: 13, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2254, file: !274, line: 1417, column: 6)
!2292 = !DILocation(line: 1417, column: 11, scope: !2291)
!2293 = !DILocation(line: 1417, column: 18, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2291, file: !274, line: 1417, column: 6)
!2295 = !DILocation(line: 1417, column: 23, scope: !2294)
!2296 = !DILocation(line: 1417, column: 31, scope: !2294)
!2297 = !DILocation(line: 1417, column: 20, scope: !2294)
!2298 = !DILocation(line: 1417, column: 6, scope: !2291)
!2299 = !DILocation(line: 1418, column: 12, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2301, file: !274, line: 1418, column: 11)
!2301 = distinct !DILexicalBlock(scope: !2294, file: !274, line: 1417, column: 43)
!2302 = !DILocation(line: 1418, column: 11, scope: !2301)
!2303 = !DILocation(line: 1418, column: 17, scope: !2300)
!2304 = !DILocation(line: 1419, column: 22, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2301, file: !274, line: 1419, column: 12)
!2306 = !DILocation(line: 1419, column: 38, scope: !2305)
!2307 = !DILocation(line: 1419, column: 44, scope: !2305)
!2308 = !DILocation(line: 1419, column: 52, scope: !2305)
!2309 = !DILocation(line: 1420, column: 8, scope: !2305)
!2310 = !DILocation(line: 1420, column: 23, scope: !2305)
!2311 = !DILocation(line: 1420, column: 25, scope: !2305)
!2312 = !DILocation(line: 1419, column: 12, scope: !2305)
!2313 = !DILocation(line: 1420, column: 31, scope: !2305)
!2314 = !DILocation(line: 1419, column: 12, scope: !2301)
!2315 = !DILocation(line: 1421, column: 9, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !2305, file: !274, line: 1420, column: 36)
!2317 = !DILocation(line: 1423, column: 19, scope: !2301)
!2318 = !DILocation(line: 1424, column: 6, scope: !2301)
!2319 = !DILocation(line: 1417, column: 39, scope: !2294)
!2320 = !DILocation(line: 1417, column: 6, scope: !2294)
!2321 = distinct !{!2321, !2298, !2322, !571}
!2322 = !DILocation(line: 1424, column: 6, scope: !2291)
!2323 = !DILocation(line: 1425, column: 2, scope: !2255)
!2324 = !DILocation(line: 1426, column: 8, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2326, file: !274, line: 1426, column: 7)
!2326 = distinct !DILexicalBlock(scope: !2251, file: !274, line: 1425, column: 9)
!2327 = !DILocation(line: 1426, column: 7, scope: !2326)
!2328 = !DILocation(line: 1427, column: 13, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2325, file: !274, line: 1427, column: 6)
!2330 = !DILocation(line: 1427, column: 11, scope: !2329)
!2331 = !DILocation(line: 1427, column: 18, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2329, file: !274, line: 1427, column: 6)
!2333 = !DILocation(line: 1427, column: 23, scope: !2332)
!2334 = !DILocation(line: 1427, column: 31, scope: !2332)
!2335 = !DILocation(line: 1427, column: 20, scope: !2332)
!2336 = !DILocation(line: 1427, column: 6, scope: !2329)
!2337 = !DILocation(line: 1428, column: 12, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2339, file: !274, line: 1428, column: 11)
!2339 = distinct !DILexicalBlock(scope: !2332, file: !274, line: 1427, column: 43)
!2340 = !DILocation(line: 1428, column: 11, scope: !2339)
!2341 = !DILocation(line: 1428, column: 17, scope: !2338)
!2342 = !DILocation(line: 1429, column: 25, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2339, file: !274, line: 1429, column: 12)
!2344 = !DILocation(line: 1429, column: 41, scope: !2343)
!2345 = !DILocation(line: 1429, column: 47, scope: !2343)
!2346 = !DILocation(line: 1429, column: 55, scope: !2343)
!2347 = !DILocation(line: 1430, column: 11, scope: !2343)
!2348 = !DILocation(line: 1430, column: 26, scope: !2343)
!2349 = !DILocation(line: 1430, column: 28, scope: !2343)
!2350 = !DILocation(line: 1429, column: 12, scope: !2343)
!2351 = !DILocation(line: 1430, column: 34, scope: !2343)
!2352 = !DILocation(line: 1429, column: 12, scope: !2339)
!2353 = !DILocation(line: 1431, column: 9, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2343, file: !274, line: 1430, column: 39)
!2355 = !DILocation(line: 1433, column: 19, scope: !2339)
!2356 = !DILocation(line: 1434, column: 6, scope: !2339)
!2357 = !DILocation(line: 1427, column: 39, scope: !2332)
!2358 = !DILocation(line: 1427, column: 6, scope: !2332)
!2359 = distinct !{!2359, !2336, !2360, !571}
!2360 = !DILocation(line: 1434, column: 6, scope: !2329)
!2361 = !DILocation(line: 1436, column: 13, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2325, file: !274, line: 1436, column: 6)
!2363 = !DILocation(line: 1436, column: 11, scope: !2362)
!2364 = !DILocation(line: 1436, column: 18, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2362, file: !274, line: 1436, column: 6)
!2366 = !DILocation(line: 1436, column: 22, scope: !2365)
!2367 = !DILocation(line: 1436, column: 20, scope: !2365)
!2368 = !DILocation(line: 1436, column: 6, scope: !2362)
!2369 = !DILocation(line: 1437, column: 12, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !2371, file: !274, line: 1437, column: 11)
!2371 = distinct !DILexicalBlock(scope: !2365, file: !274, line: 1436, column: 36)
!2372 = !DILocation(line: 1437, column: 11, scope: !2371)
!2373 = !DILocation(line: 1437, column: 17, scope: !2370)
!2374 = !DILocation(line: 1438, column: 25, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2371, file: !274, line: 1438, column: 12)
!2376 = !DILocation(line: 1438, column: 41, scope: !2375)
!2377 = !DILocation(line: 1438, column: 47, scope: !2375)
!2378 = !DILocation(line: 1438, column: 55, scope: !2375)
!2379 = !DILocation(line: 1439, column: 11, scope: !2375)
!2380 = !DILocation(line: 1439, column: 26, scope: !2375)
!2381 = !DILocation(line: 1438, column: 12, scope: !2375)
!2382 = !DILocation(line: 1439, column: 29, scope: !2375)
!2383 = !DILocation(line: 1438, column: 12, scope: !2371)
!2384 = !DILocation(line: 1440, column: 9, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2375, file: !274, line: 1439, column: 34)
!2386 = !DILocation(line: 1442, column: 19, scope: !2371)
!2387 = !DILocation(line: 1443, column: 6, scope: !2371)
!2388 = !DILocation(line: 1436, column: 32, scope: !2365)
!2389 = !DILocation(line: 1436, column: 6, scope: !2365)
!2390 = distinct !{!2390, !2368, !2391, !571}
!2391 = !DILocation(line: 1443, column: 6, scope: !2362)
!2392 = !DILocation(line: 1446, column: 5, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2176, file: !274, line: 1446, column: 5)
!2394 = !DILocation(line: 1446, column: 5, scope: !2176)
!2395 = !DILocation(line: 1447, column: 3, scope: !2393)
!2396 = !DILocation(line: 1449, column: 18, scope: !2176)
!2397 = !DILocation(line: 1449, column: 16, scope: !2176)
!2398 = !DILocation(line: 1451, column: 2, scope: !2176)
!2399 = !DILocalVariable(name: "ev", scope: !2176, file: !274, line: 1453, type: !210)
!2400 = !DILocation(line: 1453, column: 16, scope: !2176)
!2401 = !DILocation(line: 1453, column: 31, scope: !2176)
!2402 = !DILocation(line: 1453, column: 21, scope: !2176)
!2403 = !DILocalVariable(name: "tv", scope: !2176, file: !274, line: 1454, type: !1423)
!2404 = !DILocation(line: 1454, column: 17, scope: !2176)
!2405 = !DILocation(line: 1456, column: 5, scope: !2176)
!2406 = !DILocation(line: 1456, column: 12, scope: !2176)
!2407 = !DILocation(line: 1457, column: 5, scope: !2176)
!2408 = !DILocation(line: 1457, column: 13, scope: !2176)
!2409 = !DILocation(line: 1459, column: 2, scope: !2176)
!2410 = !DILocation(line: 1461, column: 7, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2176, file: !274, line: 1461, column: 2)
!2412 = !DILocation(line: 1461, column: 6, scope: !2411)
!2413 = !DILocation(line: 1461, column: 10, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2411, file: !274, line: 1461, column: 2)
!2415 = !DILocation(line: 1461, column: 12, scope: !2414)
!2416 = !DILocation(line: 1461, column: 11, scope: !2414)
!2417 = !DILocation(line: 1461, column: 2, scope: !2411)
!2418 = !DILocation(line: 1463, column: 6, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2420, file: !274, line: 1463, column: 6)
!2420 = distinct !DILexicalBlock(scope: !2414, file: !274, line: 1461, column: 31)
!2421 = !DILocation(line: 1463, column: 6, scope: !2420)
!2422 = !DILocation(line: 1464, column: 7, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2424, file: !274, line: 1464, column: 7)
!2424 = distinct !DILexicalBlock(scope: !2419, file: !274, line: 1463, column: 22)
!2425 = !DILocation(line: 1464, column: 7, scope: !2424)
!2426 = !DILocation(line: 1465, column: 8, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2428, file: !274, line: 1465, column: 8)
!2428 = distinct !DILexicalBlock(scope: !2423, file: !274, line: 1464, column: 20)
!2429 = !DILocation(line: 1465, column: 14, scope: !2427)
!2430 = !DILocation(line: 1465, column: 18, scope: !2427)
!2431 = !DILocation(line: 1465, column: 24, scope: !2427)
!2432 = !DILocation(line: 1465, column: 8, scope: !2428)
!2433 = !DILocalVariable(name: "connect_err", scope: !2434, file: !274, line: 1466, type: !53)
!2434 = distinct !DILexicalBlock(scope: !2427, file: !274, line: 1465, column: 33)
!2435 = !DILocation(line: 1466, column: 10, scope: !2434)
!2436 = !DILocation(line: 1467, column: 21, scope: !2434)
!2437 = !DILocation(line: 1467, column: 27, scope: !2434)
!2438 = !DILocation(line: 1467, column: 31, scope: !2434)
!2439 = !DILocation(line: 1467, column: 37, scope: !2434)
!2440 = !DILocation(line: 1467, column: 43, scope: !2434)
!2441 = !DILocation(line: 1467, column: 49, scope: !2434)
!2442 = !DILocation(line: 1467, column: 53, scope: !2434)
!2443 = !DILocation(line: 1467, column: 59, scope: !2434)
!2444 = !DILocation(line: 1467, column: 6, scope: !2434)
!2445 = !DILocation(line: 1468, column: 5, scope: !2434)
!2446 = !DILocation(line: 1469, column: 4, scope: !2428)
!2447 = !DILocalVariable(name: "j", scope: !2448, file: !274, line: 1470, type: !53)
!2448 = distinct !DILexicalBlock(scope: !2423, file: !274, line: 1469, column: 11)
!2449 = !DILocation(line: 1470, column: 9, scope: !2448)
!2450 = !DILocation(line: 1471, column: 11, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2448, file: !274, line: 1471, column: 5)
!2452 = !DILocation(line: 1471, column: 12, scope: !2451)
!2453 = !DILocation(line: 1471, column: 10, scope: !2451)
!2454 = !DILocation(line: 1471, column: 9, scope: !2451)
!2455 = !DILocation(line: 1471, column: 15, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2451, file: !274, line: 1471, column: 5)
!2457 = !DILocation(line: 1471, column: 17, scope: !2456)
!2458 = !DILocation(line: 1471, column: 16, scope: !2456)
!2459 = !DILocation(line: 1471, column: 5, scope: !2451)
!2460 = !DILocation(line: 1472, column: 27, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2462, file: !274, line: 1472, column: 10)
!2462 = distinct !DILexicalBlock(scope: !2456, file: !274, line: 1471, column: 36)
!2463 = !DILocation(line: 1472, column: 44, scope: !2461)
!2464 = !DILocation(line: 1472, column: 50, scope: !2461)
!2465 = !DILocation(line: 1472, column: 54, scope: !2461)
!2466 = !DILocation(line: 1472, column: 64, scope: !2461)
!2467 = !DILocation(line: 1472, column: 70, scope: !2461)
!2468 = !DILocation(line: 1472, column: 74, scope: !2461)
!2469 = !DILocation(line: 1472, column: 80, scope: !2461)
!2470 = !DILocation(line: 1472, column: 10, scope: !2461)
!2471 = !DILocation(line: 1472, column: 93, scope: !2461)
!2472 = !DILocation(line: 1472, column: 10, scope: !2462)
!2473 = !DILocation(line: 1473, column: 7, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2461, file: !274, line: 1472, column: 98)
!2475 = !DILocation(line: 1475, column: 5, scope: !2462)
!2476 = !DILocation(line: 1471, column: 32, scope: !2456)
!2477 = !DILocation(line: 1471, column: 5, scope: !2456)
!2478 = distinct !{!2478, !2459, !2479, !571}
!2479 = !DILocation(line: 1475, column: 5, scope: !2451)
!2480 = !DILocation(line: 1477, column: 3, scope: !2424)
!2481 = !DILocation(line: 1478, column: 3, scope: !2420)
!2482 = !DILocation(line: 1479, column: 2, scope: !2420)
!2483 = !DILocation(line: 1461, column: 27, scope: !2414)
!2484 = !DILocation(line: 1461, column: 2, scope: !2414)
!2485 = distinct !{!2485, !2417, !2486, !571}
!2486 = !DILocation(line: 1479, column: 2, scope: !2411)
!2487 = !DILocation(line: 1481, column: 2, scope: !2176)
!2488 = !DILocation(line: 1484, column: 21, scope: !2176)
!2489 = !DILocation(line: 1484, column: 36, scope: !2176)
!2490 = !DILocation(line: 1484, column: 34, scope: !2176)
!2491 = !DILocation(line: 1484, column: 5, scope: !2176)
!2492 = !DILocation(line: 1483, column: 2, scope: !2176)
!2493 = !DILocation(line: 1486, column: 10, scope: !2176)
!2494 = !DILocation(line: 1486, column: 8, scope: !2176)
!2495 = !DILocation(line: 1488, column: 5, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2176, file: !274, line: 1488, column: 5)
!2497 = !DILocation(line: 1488, column: 5, scope: !2176)
!2498 = !DILocalVariable(name: "connect_wait_start_time", scope: !2499, file: !274, line: 1489, type: !239)
!2499 = distinct !DILexicalBlock(scope: !2496, file: !274, line: 1488, column: 21)
!2500 = !DILocation(line: 1489, column: 12, scope: !2499)
!2501 = !DILocation(line: 1489, column: 38, scope: !2499)
!2502 = !DILocation(line: 1490, column: 3, scope: !2499)
!2503 = !DILocalVariable(name: "i", scope: !2504, file: !274, line: 1491, type: !53)
!2504 = distinct !DILexicalBlock(scope: !2499, file: !274, line: 1490, column: 12)
!2505 = !DILocation(line: 1491, column: 8, scope: !2504)
!2506 = !DILocalVariable(name: "completed", scope: !2504, file: !274, line: 1492, type: !53)
!2507 = !DILocation(line: 1492, column: 8, scope: !2504)
!2508 = !DILocation(line: 1493, column: 7, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2504, file: !274, line: 1493, column: 7)
!2510 = !DILocation(line: 1493, column: 7, scope: !2504)
!2511 = !DILocation(line: 1494, column: 10, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2513, file: !274, line: 1494, column: 5)
!2513 = distinct !DILexicalBlock(scope: !2509, file: !274, line: 1493, column: 20)
!2514 = !DILocation(line: 1494, column: 9, scope: !2512)
!2515 = !DILocation(line: 1494, column: 13, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2512, file: !274, line: 1494, column: 5)
!2517 = !DILocation(line: 1494, column: 15, scope: !2516)
!2518 = !DILocation(line: 1494, column: 14, scope: !2516)
!2519 = !DILocation(line: 1494, column: 5, scope: !2512)
!2520 = !DILocation(line: 1495, column: 9, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2522, file: !274, line: 1495, column: 9)
!2522 = distinct !DILexicalBlock(scope: !2516, file: !274, line: 1494, column: 34)
!2523 = !DILocation(line: 1495, column: 15, scope: !2521)
!2524 = !DILocation(line: 1495, column: 19, scope: !2521)
!2525 = !DILocation(line: 1495, column: 25, scope: !2521)
!2526 = !DILocation(line: 1495, column: 9, scope: !2522)
!2527 = !DILocation(line: 1496, column: 16, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2521, file: !274, line: 1495, column: 34)
!2529 = !DILocation(line: 1497, column: 6, scope: !2528)
!2530 = !DILocation(line: 1497, column: 16, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2521, file: !274, line: 1497, column: 16)
!2532 = !DILocation(line: 1497, column: 22, scope: !2531)
!2533 = !DILocation(line: 1497, column: 26, scope: !2531)
!2534 = !DILocation(line: 1497, column: 32, scope: !2531)
!2535 = !DILocation(line: 1497, column: 47, scope: !2531)
!2536 = !DILocation(line: 1497, column: 50, scope: !2531)
!2537 = !DILocation(line: 1498, column: 8, scope: !2531)
!2538 = !DILocation(line: 1498, column: 14, scope: !2531)
!2539 = !DILocation(line: 1498, column: 18, scope: !2531)
!2540 = !DILocation(line: 1498, column: 24, scope: !2531)
!2541 = !DILocation(line: 1498, column: 37, scope: !2531)
!2542 = !DILocation(line: 1497, column: 16, scope: !2521)
!2543 = !DILocation(line: 1499, column: 20, scope: !2544)
!2544 = distinct !DILexicalBlock(scope: !2531, file: !274, line: 1498, column: 53)
!2545 = !DILocation(line: 1499, column: 26, scope: !2544)
!2546 = !DILocation(line: 1499, column: 30, scope: !2544)
!2547 = !DILocation(line: 1499, column: 36, scope: !2544)
!2548 = !DILocation(line: 1499, column: 17, scope: !2544)
!2549 = !DILocation(line: 1500, column: 6, scope: !2544)
!2550 = !DILocation(line: 1501, column: 5, scope: !2522)
!2551 = !DILocation(line: 1494, column: 29, scope: !2516)
!2552 = !DILocation(line: 1494, column: 5, scope: !2516)
!2553 = distinct !{!2553, !2519, !2554, !571}
!2554 = !DILocation(line: 1501, column: 5, scope: !2512)
!2555 = !DILocation(line: 1502, column: 8, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2513, file: !274, line: 1502, column: 8)
!2557 = !DILocation(line: 1502, column: 21, scope: !2556)
!2558 = !DILocation(line: 1502, column: 18, scope: !2556)
!2559 = !DILocation(line: 1502, column: 8, scope: !2513)
!2560 = !DILocation(line: 1503, column: 6, scope: !2556)
!2561 = !DILocation(line: 1504, column: 4, scope: !2513)
!2562 = !DILocation(line: 1505, column: 10, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2564, file: !274, line: 1505, column: 5)
!2564 = distinct !DILexicalBlock(scope: !2509, file: !274, line: 1504, column: 11)
!2565 = !DILocation(line: 1505, column: 9, scope: !2563)
!2566 = !DILocation(line: 1505, column: 13, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2563, file: !274, line: 1505, column: 5)
!2568 = !DILocation(line: 1505, column: 15, scope: !2567)
!2569 = !DILocation(line: 1505, column: 14, scope: !2567)
!2570 = !DILocation(line: 1505, column: 5, scope: !2563)
!2571 = !DILocalVariable(name: "j", scope: !2572, file: !274, line: 1506, type: !53)
!2572 = distinct !DILexicalBlock(scope: !2567, file: !274, line: 1505, column: 34)
!2573 = !DILocation(line: 1506, column: 10, scope: !2572)
!2574 = !DILocation(line: 1507, column: 11, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2572, file: !274, line: 1507, column: 6)
!2576 = !DILocation(line: 1507, column: 10, scope: !2575)
!2577 = !DILocation(line: 1507, column: 14, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2575, file: !274, line: 1507, column: 6)
!2579 = !DILocation(line: 1507, column: 21, scope: !2578)
!2580 = !DILocation(line: 1507, column: 27, scope: !2578)
!2581 = !DILocation(line: 1507, column: 31, scope: !2578)
!2582 = !DILocation(line: 1507, column: 37, scope: !2578)
!2583 = !DILocation(line: 1507, column: 16, scope: !2578)
!2584 = !DILocation(line: 1507, column: 15, scope: !2578)
!2585 = !DILocation(line: 1507, column: 6, scope: !2575)
!2586 = !DILocation(line: 1508, column: 10, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !2588, file: !274, line: 1508, column: 10)
!2588 = distinct !DILexicalBlock(scope: !2578, file: !274, line: 1507, column: 58)
!2589 = !DILocation(line: 1508, column: 16, scope: !2587)
!2590 = !DILocation(line: 1508, column: 20, scope: !2587)
!2591 = !DILocation(line: 1508, column: 26, scope: !2587)
!2592 = !DILocation(line: 1508, column: 35, scope: !2587)
!2593 = !DILocation(line: 1508, column: 39, scope: !2587)
!2594 = !DILocation(line: 1508, column: 10, scope: !2588)
!2595 = !DILocation(line: 1509, column: 17, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2587, file: !274, line: 1508, column: 55)
!2597 = !DILocation(line: 1510, column: 7, scope: !2596)
!2598 = !DILocation(line: 1511, column: 6, scope: !2588)
!2599 = !DILocation(line: 1507, column: 54, scope: !2578)
!2600 = !DILocation(line: 1507, column: 6, scope: !2578)
!2601 = distinct !{!2601, !2585, !2602, !571}
!2602 = !DILocation(line: 1511, column: 6, scope: !2575)
!2603 = !DILocation(line: 1512, column: 5, scope: !2572)
!2604 = !DILocation(line: 1505, column: 29, scope: !2567)
!2605 = !DILocation(line: 1505, column: 5, scope: !2567)
!2606 = distinct !{!2606, !2570, !2607, !571}
!2607 = !DILocation(line: 1512, column: 5, scope: !2563)
!2608 = !DILocation(line: 1513, column: 8, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2564, file: !274, line: 1513, column: 8)
!2610 = !DILocation(line: 1513, column: 21, scope: !2609)
!2611 = !DILocation(line: 1513, column: 36, scope: !2609)
!2612 = !DILocation(line: 1513, column: 49, scope: !2609)
!2613 = !DILocation(line: 1513, column: 34, scope: !2609)
!2614 = !DILocation(line: 1513, column: 18, scope: !2609)
!2615 = !DILocation(line: 1513, column: 8, scope: !2564)
!2616 = !DILocation(line: 1514, column: 80, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2609, file: !274, line: 1513, column: 54)
!2618 = !DILocation(line: 1514, column: 6, scope: !2617)
!2619 = !DILocation(line: 1515, column: 6, scope: !2617)
!2620 = !DILocation(line: 1518, column: 4, scope: !2504)
!2621 = !DILocation(line: 1519, column: 7, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !2504, file: !274, line: 1519, column: 7)
!2623 = !DILocation(line: 1519, column: 22, scope: !2622)
!2624 = !DILocation(line: 1519, column: 46, scope: !2622)
!2625 = !DILocation(line: 1519, column: 74, scope: !2622)
!2626 = !DILocation(line: 1519, column: 72, scope: !2622)
!2627 = !DILocation(line: 1519, column: 20, scope: !2622)
!2628 = !DILocation(line: 1519, column: 7, scope: !2504)
!2629 = !DILocation(line: 1521, column: 13, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2622, file: !274, line: 1519, column: 89)
!2631 = !DILocation(line: 1520, column: 5, scope: !2630)
!2632 = !DILocation(line: 1522, column: 5, scope: !2630)
!2633 = distinct !{!2633, !2502, !2634}
!2634 = !DILocation(line: 1524, column: 3, scope: !2499)
!2635 = !DILocation(line: 1525, column: 2, scope: !2499)
!2636 = !DILocation(line: 1527, column: 2, scope: !2176)
!2637 = !DILocation(line: 1528, column: 10, scope: !2176)
!2638 = !DILocation(line: 1528, column: 8, scope: !2176)
!2639 = !DILocation(line: 1530, column: 7, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2176, file: !274, line: 1530, column: 2)
!2641 = !DILocation(line: 1530, column: 6, scope: !2640)
!2642 = !DILocation(line: 1530, column: 10, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2640, file: !274, line: 1530, column: 2)
!2644 = !DILocation(line: 1530, column: 12, scope: !2643)
!2645 = !DILocation(line: 1530, column: 11, scope: !2643)
!2646 = !DILocation(line: 1530, column: 2, scope: !2640)
!2647 = !DILocation(line: 1531, column: 30, scope: !2648)
!2648 = distinct !DILexicalBlock(scope: !2643, file: !274, line: 1530, column: 31)
!2649 = !DILocation(line: 1531, column: 45, scope: !2648)
!2650 = !DILocation(line: 1531, column: 65, scope: !2648)
!2651 = !DILocation(line: 1531, column: 55, scope: !2648)
!2652 = !DILocation(line: 1531, column: 74, scope: !2648)
!2653 = !DILocation(line: 1531, column: 54, scope: !2648)
!2654 = !DILocation(line: 1531, column: 52, scope: !2648)
!2655 = !DILocation(line: 1531, column: 3, scope: !2648)
!2656 = !DILocation(line: 1531, column: 9, scope: !2648)
!2657 = !DILocation(line: 1531, column: 13, scope: !2648)
!2658 = !DILocation(line: 1531, column: 28, scope: !2648)
!2659 = !DILocation(line: 1532, column: 2, scope: !2648)
!2660 = !DILocation(line: 1530, column: 27, scope: !2643)
!2661 = !DILocation(line: 1530, column: 2, scope: !2643)
!2662 = distinct !{!2662, !2646, !2663, !571}
!2663 = !DILocation(line: 1532, column: 2, scope: !2640)
!2664 = !DILocation(line: 1534, column: 17, scope: !2176)
!2665 = !DILocation(line: 1534, column: 27, scope: !2176)
!2666 = !DILocation(line: 1534, column: 40, scope: !2176)
!2667 = !DILocation(line: 1534, column: 38, scope: !2176)
!2668 = !DILocation(line: 1534, column: 15, scope: !2176)
!2669 = !DILocation(line: 1536, column: 19, scope: !2176)
!2670 = !DILocation(line: 1538, column: 2, scope: !2176)
!2671 = !DILocation(line: 1540, column: 3, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2176, file: !274, line: 1538, column: 12)
!2673 = !DILocalVariable(name: "msz", scope: !2672, file: !274, line: 1542, type: !53)
!2674 = !DILocation(line: 1542, column: 7, scope: !2672)
!2675 = !DILocation(line: 1542, column: 18, scope: !2672)
!2676 = !DILocation(line: 1542, column: 13, scope: !2672)
!2677 = !DILocation(line: 1543, column: 7, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !2672, file: !274, line: 1543, column: 7)
!2679 = !DILocation(line: 1543, column: 11, scope: !2678)
!2680 = !DILocation(line: 1543, column: 7, scope: !2672)
!2681 = !DILocation(line: 1544, column: 4, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2678, file: !274, line: 1543, column: 16)
!2683 = !DILocation(line: 1547, column: 6, scope: !2684)
!2684 = distinct !DILexicalBlock(scope: !2672, file: !274, line: 1547, column: 6)
!2685 = !DILocation(line: 1547, column: 6, scope: !2672)
!2686 = !DILocation(line: 1550, column: 25, scope: !2687)
!2687 = distinct !DILexicalBlock(scope: !2684, file: !274, line: 1547, column: 23)
!2688 = !DILocation(line: 1550, column: 46, scope: !2687)
!2689 = !DILocation(line: 1550, column: 30, scope: !2687)
!2690 = !DILocation(line: 1551, column: 27, scope: !2687)
!2691 = !DILocation(line: 1551, column: 11, scope: !2687)
!2692 = !DILocation(line: 1552, column: 32, scope: !2687)
!2693 = !DILocation(line: 1553, column: 32, scope: !2687)
!2694 = !DILocation(line: 1548, column: 4, scope: !2687)
!2695 = !DILocation(line: 1554, column: 19, scope: !2687)
!2696 = !DILocation(line: 1555, column: 3, scope: !2687)
!2697 = distinct !{!2697, !2670, !2698}
!2698 = !DILocation(line: 1556, column: 2, scope: !2176)
!2699 = !DILocation(line: 1561, column: 25, scope: !2176)
!2700 = !DILocation(line: 1561, column: 9, scope: !2176)
!2701 = !DILocation(line: 1562, column: 25, scope: !2176)
!2702 = !DILocation(line: 1562, column: 9, scope: !2176)
!2703 = !DILocation(line: 1558, column: 2, scope: !2176)
!2704 = !DILocation(line: 1567, column: 25, scope: !2176)
!2705 = !DILocation(line: 1568, column: 25, scope: !2176)
!2706 = !DILocation(line: 1564, column: 2, scope: !2176)
!2707 = !DILocation(line: 1570, column: 6, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2176, file: !274, line: 1570, column: 6)
!2709 = !DILocation(line: 1570, column: 6, scope: !2176)
!2710 = !DILocation(line: 1571, column: 19, scope: !2708)
!2711 = !DILocation(line: 1571, column: 3, scope: !2708)
!2712 = !DILocation(line: 1573, column: 5, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !2176, file: !274, line: 1573, column: 5)
!2714 = !DILocation(line: 1573, column: 23, scope: !2713)
!2715 = !DILocation(line: 1573, column: 22, scope: !2713)
!2716 = !DILocation(line: 1573, column: 5, scope: !2176)
!2717 = !DILocation(line: 1574, column: 21, scope: !2713)
!2718 = !DILocation(line: 1574, column: 20, scope: !2713)
!2719 = !DILocation(line: 1574, column: 3, scope: !2713)
!2720 = !DILocation(line: 1576, column: 15, scope: !2176)
!2721 = !DILocation(line: 1576, column: 33, scope: !2176)
!2722 = !DILocation(line: 1576, column: 32, scope: !2176)
!2723 = !DILocation(line: 1576, column: 13, scope: !2176)
!2724 = !DILocation(line: 1579, column: 20, scope: !2176)
!2725 = !DILocation(line: 1579, column: 35, scope: !2176)
!2726 = !DILocation(line: 1579, column: 33, scope: !2176)
!2727 = !DILocation(line: 1579, column: 5, scope: !2176)
!2728 = !DILocation(line: 1578, column: 2, scope: !2176)
!2729 = !DILocation(line: 1581, column: 25, scope: !2176)
!2730 = !DILocation(line: 1581, column: 47, scope: !2176)
!2731 = !DILocation(line: 1581, column: 39, scope: !2176)
!2732 = !DILocation(line: 1581, column: 66, scope: !2176)
!2733 = !DILocation(line: 1581, column: 58, scope: !2176)
!2734 = !DILocation(line: 1581, column: 57, scope: !2176)
!2735 = !DILocation(line: 1581, column: 84, scope: !2176)
!2736 = !DILocation(line: 1582, column: 25, scope: !2176)
!2737 = !DILocation(line: 1582, column: 53, scope: !2176)
!2738 = !DILocation(line: 1582, column: 45, scope: !2176)
!2739 = !DILocation(line: 1582, column: 79, scope: !2176)
!2740 = !DILocation(line: 1582, column: 97, scope: !2176)
!2741 = !DILocation(line: 1582, column: 96, scope: !2176)
!2742 = !DILocation(line: 1582, column: 70, scope: !2176)
!2743 = !DILocation(line: 1582, column: 69, scope: !2176)
!2744 = !DILocation(line: 1582, column: 115, scope: !2176)
!2745 = !DILocation(line: 1580, column: 2, scope: !2176)
!2746 = !DILocation(line: 1584, column: 14, scope: !2176)
!2747 = !DILocation(line: 1584, column: 6, scope: !2176)
!2748 = !DILocation(line: 1584, column: 38, scope: !2176)
!2749 = !DILocation(line: 1584, column: 55, scope: !2176)
!2750 = !DILocation(line: 1584, column: 37, scope: !2176)
!2751 = !DILocation(line: 1584, column: 65, scope: !2176)
!2752 = !DILocation(line: 1584, column: 28, scope: !2176)
!2753 = !DILocation(line: 1584, column: 27, scope: !2176)
!2754 = !DILocation(line: 1585, column: 20, scope: !2176)
!2755 = !DILocation(line: 1586, column: 20, scope: !2176)
!2756 = !DILocation(line: 1583, column: 2, scope: !2176)
!2757 = !DILocation(line: 1588, column: 14, scope: !2176)
!2758 = !DILocation(line: 1588, column: 6, scope: !2176)
!2759 = !DILocation(line: 1588, column: 35, scope: !2176)
!2760 = !DILocation(line: 1588, column: 27, scope: !2176)
!2761 = !DILocation(line: 1588, column: 26, scope: !2176)
!2762 = !DILocation(line: 1589, column: 20, scope: !2176)
!2763 = !DILocation(line: 1590, column: 20, scope: !2176)
!2764 = !DILocation(line: 1587, column: 2, scope: !2176)
!2765 = !DILocation(line: 1592, column: 7, scope: !2176)
!2766 = !DILocation(line: 1592, column: 2, scope: !2176)
!2767 = !DILocation(line: 1593, column: 1, scope: !2176)
!2768 = !DILocalVariable(name: "tp", scope: !430, file: !274, line: 97, type: !2769)
!2769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2770, line: 11, size: 128, elements: !2771)
!2770 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!2771 = !{!2772, !2773}
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2769, file: !2770, line: 16, baseType: !1427, size: 64)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2769, file: !2770, line: 21, baseType: !2774, size: 64, offset: 64)
!2774 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !81, line: 197, baseType: !255)
!2775 = !DILocation(line: 97, column: 19, scope: !430)
!2776 = !DILocation(line: 99, column: 3, scope: !430)
!2777 = !DILocation(line: 103, column: 7, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !430, file: !274, line: 103, column: 6)
!2779 = !DILocation(line: 103, column: 6, scope: !430)
!2780 = !DILocation(line: 104, column: 20, scope: !2778)
!2781 = !DILocation(line: 104, column: 15, scope: !2778)
!2782 = !DILocation(line: 104, column: 5, scope: !2778)
!2783 = !DILocation(line: 105, column: 6, scope: !2784)
!2784 = distinct !DILexicalBlock(scope: !430, file: !274, line: 105, column: 6)
!2785 = !DILocation(line: 105, column: 47, scope: !2784)
!2786 = !DILocation(line: 105, column: 55, scope: !2784)
!2787 = !DILocation(line: 105, column: 54, scope: !2784)
!2788 = !DILocation(line: 105, column: 19, scope: !2784)
!2789 = !DILocation(line: 105, column: 6, scope: !430)
!2790 = !DILocation(line: 106, column: 21, scope: !2784)
!2791 = !DILocation(line: 106, column: 5, scope: !2784)
!2792 = !DILocation(line: 107, column: 43, scope: !430)
!2793 = !DILocation(line: 107, column: 51, scope: !430)
!2794 = !DILocation(line: 107, column: 50, scope: !430)
!2795 = !DILocation(line: 107, column: 16, scope: !430)
!2796 = !DILocation(line: 108, column: 32, scope: !430)
!2797 = !DILocation(line: 108, column: 45, scope: !430)
!2798 = !DILocation(line: 108, column: 59, scope: !430)
!2799 = !DILocation(line: 108, column: 66, scope: !430)
!2800 = !DILocation(line: 108, column: 53, scope: !430)
!2801 = !DILocation(line: 108, column: 18, scope: !430)
!2802 = !DILocation(line: 109, column: 1, scope: !430)
!2803 = distinct !DISubprogram(name: "start_c2c", scope: !274, file: !274, line: 1084, type: !2804, scopeLine: 1087, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !433)
!2804 = !DISubroutineType(types: !2805)
!2805 = !{!53, !258, !53, !2179, !258, !53, !53}
!2806 = !DILocalVariable(name: "remote_address", arg: 1, scope: !2803, file: !274, line: 1084, type: !258)
!2807 = !DILocation(line: 1084, column: 34, scope: !2803)
!2808 = !DILocalVariable(name: "port", arg: 2, scope: !2803, file: !274, line: 1084, type: !53)
!2809 = !DILocation(line: 1084, column: 54, scope: !2803)
!2810 = !DILocalVariable(name: "ifname", arg: 3, scope: !2803, file: !274, line: 1085, type: !2179)
!2811 = !DILocation(line: 1085, column: 29, scope: !2803)
!2812 = !DILocalVariable(name: "local_address", arg: 4, scope: !2803, file: !274, line: 1085, type: !258)
!2813 = !DILocation(line: 1085, column: 49, scope: !2803)
!2814 = !DILocalVariable(name: "messagenumber", arg: 5, scope: !2803, file: !274, line: 1086, type: !53)
!2815 = !DILocation(line: 1086, column: 12, scope: !2803)
!2816 = !DILocalVariable(name: "i", arg: 6, scope: !2803, file: !274, line: 1087, type: !53)
!2817 = !DILocation(line: 1087, column: 12, scope: !2803)
!2818 = !DILocalVariable(name: "ss1", scope: !2803, file: !274, line: 1089, type: !85)
!2819 = !DILocation(line: 1089, column: 19, scope: !2803)
!2820 = !DILocation(line: 1089, column: 23, scope: !2803)
!2821 = !DILocalVariable(name: "ss1_rtcp", scope: !2803, file: !274, line: 1090, type: !85)
!2822 = !DILocation(line: 1090, column: 19, scope: !2803)
!2823 = !DILocation(line: 1092, column: 7, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2803, file: !274, line: 1092, column: 6)
!2825 = !DILocation(line: 1092, column: 6, scope: !2803)
!2826 = !DILocation(line: 1093, column: 16, scope: !2824)
!2827 = !DILocation(line: 1093, column: 14, scope: !2824)
!2828 = !DILocation(line: 1093, column: 5, scope: !2824)
!2829 = !DILocalVariable(name: "ss2", scope: !2803, file: !274, line: 1095, type: !85)
!2830 = !DILocation(line: 1095, column: 19, scope: !2803)
!2831 = !DILocation(line: 1095, column: 23, scope: !2803)
!2832 = !DILocalVariable(name: "ss2_rtcp", scope: !2803, file: !274, line: 1096, type: !85)
!2833 = !DILocation(line: 1096, column: 19, scope: !2803)
!2834 = !DILocation(line: 1098, column: 7, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2803, file: !274, line: 1098, column: 6)
!2836 = !DILocation(line: 1098, column: 6, scope: !2803)
!2837 = !DILocation(line: 1099, column: 16, scope: !2835)
!2838 = !DILocation(line: 1099, column: 14, scope: !2835)
!2839 = !DILocation(line: 1099, column: 5, scope: !2835)
!2840 = !DILocalVariable(name: "clnet_info_probe", scope: !2803, file: !274, line: 1101, type: !90)
!2841 = !DILocation(line: 1101, column: 20, scope: !2803)
!2842 = !DILocation(line: 1102, column: 3, scope: !2803)
!2843 = !DILocation(line: 1103, column: 20, scope: !2803)
!2844 = !DILocation(line: 1103, column: 23, scope: !2803)
!2845 = !DILocalVariable(name: "clnet_info1", scope: !2803, file: !274, line: 1105, type: !509)
!2846 = !DILocation(line: 1105, column: 21, scope: !2803)
!2847 = !DILocation(line: 1105, column: 35, scope: !2803)
!2848 = !DILocation(line: 1105, column: 40, scope: !2803)
!2849 = !DILocalVariable(name: "clnet_info1_rtcp", scope: !2803, file: !274, line: 1106, type: !509)
!2850 = !DILocation(line: 1106, column: 21, scope: !2803)
!2851 = !DILocation(line: 1108, column: 7, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2803, file: !274, line: 1108, column: 6)
!2853 = !DILocation(line: 1108, column: 6, scope: !2803)
!2854 = !DILocation(line: 1109, column: 26, scope: !2852)
!2855 = !DILocation(line: 1109, column: 36, scope: !2852)
!2856 = !DILocation(line: 1109, column: 22, scope: !2852)
!2857 = !DILocation(line: 1109, column: 5, scope: !2852)
!2858 = !DILocalVariable(name: "clnet_info2", scope: !2803, file: !274, line: 1111, type: !509)
!2859 = !DILocation(line: 1111, column: 21, scope: !2803)
!2860 = !DILocation(line: 1111, column: 35, scope: !2803)
!2861 = !DILocation(line: 1111, column: 40, scope: !2803)
!2862 = !DILocalVariable(name: "clnet_info2_rtcp", scope: !2803, file: !274, line: 1112, type: !509)
!2863 = !DILocation(line: 1112, column: 21, scope: !2803)
!2864 = !DILocation(line: 1114, column: 7, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2803, file: !274, line: 1114, column: 6)
!2866 = !DILocation(line: 1114, column: 6, scope: !2803)
!2867 = !DILocation(line: 1115, column: 26, scope: !2865)
!2868 = !DILocation(line: 1115, column: 36, scope: !2865)
!2869 = !DILocation(line: 1115, column: 22, scope: !2865)
!2870 = !DILocation(line: 1115, column: 5, scope: !2865)
!2871 = !DILocalVariable(name: "chnum1", scope: !2803, file: !274, line: 1117, type: !116)
!2872 = !DILocation(line: 1117, column: 12, scope: !2803)
!2873 = !DILocalVariable(name: "chnum1_rtcp", scope: !2803, file: !274, line: 1118, type: !116)
!2874 = !DILocation(line: 1118, column: 12, scope: !2803)
!2875 = !DILocalVariable(name: "chnum2", scope: !2803, file: !274, line: 1119, type: !116)
!2876 = !DILocation(line: 1119, column: 12, scope: !2803)
!2877 = !DILocalVariable(name: "chnum2_rtcp", scope: !2803, file: !274, line: 1120, type: !116)
!2878 = !DILocation(line: 1120, column: 12, scope: !2803)
!2879 = !DILocation(line: 1122, column: 24, scope: !2803)
!2880 = !DILocation(line: 1122, column: 30, scope: !2803)
!2881 = !DILocation(line: 1123, column: 10, scope: !2803)
!2882 = !DILocation(line: 1123, column: 18, scope: !2803)
!2883 = !DILocation(line: 1124, column: 10, scope: !2803)
!2884 = !DILocation(line: 1126, column: 10, scope: !2803)
!2885 = !DILocation(line: 1127, column: 10, scope: !2803)
!2886 = !DILocation(line: 1128, column: 10, scope: !2803)
!2887 = !DILocation(line: 1129, column: 10, scope: !2803)
!2888 = !DILocation(line: 1122, column: 3, scope: !2803)
!2889 = !DILocation(line: 1131, column: 23, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2803, file: !274, line: 1131, column: 6)
!2891 = !DILocation(line: 1131, column: 6, scope: !2890)
!2892 = !DILocation(line: 1131, column: 6, scope: !2803)
!2893 = !DILocation(line: 1132, column: 28, scope: !2894)
!2894 = distinct !DILexicalBlock(scope: !2890, file: !274, line: 1131, column: 28)
!2895 = !DILocation(line: 1132, column: 2, scope: !2894)
!2896 = !DILocation(line: 1133, column: 19, scope: !2894)
!2897 = !DILocation(line: 1133, column: 22, scope: !2894)
!2898 = !DILocation(line: 1134, column: 3, scope: !2894)
!2899 = !DILocation(line: 1134, column: 30, scope: !2900)
!2900 = distinct !DILexicalBlock(scope: !2890, file: !274, line: 1134, column: 13)
!2901 = !DILocation(line: 1134, column: 33, scope: !2900)
!2902 = !DILocation(line: 1134, column: 13, scope: !2890)
!2903 = !DILocation(line: 1135, column: 4, scope: !2904)
!2904 = distinct !DILexicalBlock(scope: !2900, file: !274, line: 1134, column: 40)
!2905 = !DILocation(line: 1136, column: 21, scope: !2904)
!2906 = !DILocation(line: 1136, column: 24, scope: !2904)
!2907 = !DILocation(line: 1137, column: 3, scope: !2904)
!2908 = !DILocation(line: 1139, column: 26, scope: !2803)
!2909 = !DILocation(line: 1139, column: 39, scope: !2803)
!2910 = !DILocation(line: 1139, column: 3, scope: !2803)
!2911 = !DILocation(line: 1141, column: 7, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2803, file: !274, line: 1141, column: 6)
!2913 = !DILocation(line: 1141, column: 6, scope: !2803)
!2914 = !DILocation(line: 1142, column: 27, scope: !2912)
!2915 = !DILocation(line: 1142, column: 45, scope: !2912)
!2916 = !DILocation(line: 1142, column: 4, scope: !2912)
!2917 = !DILocation(line: 1144, column: 26, scope: !2803)
!2918 = !DILocation(line: 1144, column: 39, scope: !2803)
!2919 = !DILocation(line: 1144, column: 3, scope: !2803)
!2920 = !DILocation(line: 1146, column: 7, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !2803, file: !274, line: 1146, column: 6)
!2922 = !DILocation(line: 1146, column: 6, scope: !2803)
!2923 = !DILocation(line: 1147, column: 27, scope: !2921)
!2924 = !DILocation(line: 1147, column: 45, scope: !2921)
!2925 = !DILocation(line: 1147, column: 4, scope: !2921)
!2926 = !DILocalVariable(name: "ev1", scope: !2803, file: !274, line: 1149, type: !210)
!2927 = !DILocation(line: 1149, column: 17, scope: !2803)
!2928 = !DILocation(line: 1149, column: 33, scope: !2803)
!2929 = !DILocation(line: 1149, column: 51, scope: !2803)
!2930 = !DILocation(line: 1149, column: 64, scope: !2803)
!2931 = !DILocation(line: 1151, column: 5, scope: !2803)
!2932 = !DILocation(line: 1149, column: 23, scope: !2803)
!2933 = !DILocation(line: 1153, column: 13, scope: !2803)
!2934 = !DILocation(line: 1153, column: 3, scope: !2803)
!2935 = !DILocalVariable(name: "ev1_rtcp", scope: !2803, file: !274, line: 1155, type: !210)
!2936 = !DILocation(line: 1155, column: 17, scope: !2803)
!2937 = !DILocation(line: 1157, column: 7, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2803, file: !274, line: 1157, column: 6)
!2939 = !DILocation(line: 1157, column: 6, scope: !2803)
!2940 = !DILocation(line: 1158, column: 26, scope: !2941)
!2941 = distinct !DILexicalBlock(scope: !2938, file: !274, line: 1157, column: 16)
!2942 = !DILocation(line: 1158, column: 44, scope: !2941)
!2943 = !DILocation(line: 1158, column: 62, scope: !2941)
!2944 = !DILocation(line: 1160, column: 5, scope: !2941)
!2945 = !DILocation(line: 1158, column: 16, scope: !2941)
!2946 = !DILocation(line: 1158, column: 14, scope: !2941)
!2947 = !DILocation(line: 1162, column: 15, scope: !2941)
!2948 = !DILocation(line: 1162, column: 5, scope: !2941)
!2949 = !DILocation(line: 1163, column: 3, scope: !2941)
!2950 = !DILocalVariable(name: "ev2", scope: !2803, file: !274, line: 1165, type: !210)
!2951 = !DILocation(line: 1165, column: 17, scope: !2803)
!2952 = !DILocation(line: 1165, column: 33, scope: !2803)
!2953 = !DILocation(line: 1165, column: 51, scope: !2803)
!2954 = !DILocation(line: 1165, column: 64, scope: !2803)
!2955 = !DILocation(line: 1167, column: 5, scope: !2803)
!2956 = !DILocation(line: 1165, column: 23, scope: !2803)
!2957 = !DILocation(line: 1169, column: 13, scope: !2803)
!2958 = !DILocation(line: 1169, column: 3, scope: !2803)
!2959 = !DILocalVariable(name: "ev2_rtcp", scope: !2803, file: !274, line: 1171, type: !210)
!2960 = !DILocation(line: 1171, column: 17, scope: !2803)
!2961 = !DILocation(line: 1173, column: 7, scope: !2962)
!2962 = distinct !DILexicalBlock(scope: !2803, file: !274, line: 1173, column: 6)
!2963 = !DILocation(line: 1173, column: 6, scope: !2803)
!2964 = !DILocation(line: 1174, column: 26, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !2962, file: !274, line: 1173, column: 16)
!2966 = !DILocation(line: 1174, column: 44, scope: !2965)
!2967 = !DILocation(line: 1174, column: 62, scope: !2965)
!2968 = !DILocation(line: 1176, column: 5, scope: !2965)
!2969 = !DILocation(line: 1174, column: 16, scope: !2965)
!2970 = !DILocation(line: 1174, column: 14, scope: !2965)
!2971 = !DILocation(line: 1178, column: 15, scope: !2965)
!2972 = !DILocation(line: 1178, column: 5, scope: !2965)
!2973 = !DILocation(line: 1179, column: 3, scope: !2965)
!2974 = !DILocation(line: 1181, column: 3, scope: !2803)
!2975 = !DILocation(line: 1181, column: 8, scope: !2803)
!2976 = !DILocation(line: 1181, column: 13, scope: !2803)
!2977 = !DILocation(line: 1183, column: 17, scope: !2803)
!2978 = !DILocation(line: 1183, column: 3, scope: !2803)
!2979 = !DILocation(line: 1183, column: 8, scope: !2803)
!2980 = !DILocation(line: 1183, column: 16, scope: !2803)
!2981 = !DILocation(line: 1184, column: 19, scope: !2803)
!2982 = !DILocation(line: 1184, column: 3, scope: !2803)
!2983 = !DILocation(line: 1184, column: 8, scope: !2803)
!2984 = !DILocation(line: 1184, column: 18, scope: !2803)
!2985 = !DILocation(line: 1185, column: 3, scope: !2803)
!2986 = !DILocation(line: 1185, column: 8, scope: !2803)
!2987 = !DILocation(line: 1185, column: 18, scope: !2803)
!2988 = !DILocation(line: 1186, column: 14, scope: !2803)
!2989 = !DILocation(line: 1186, column: 3, scope: !2803)
!2990 = !DILocation(line: 1186, column: 8, scope: !2803)
!2991 = !DILocation(line: 1186, column: 13, scope: !2803)
!2992 = !DILocation(line: 1188, column: 7, scope: !2993)
!2993 = distinct !DILexicalBlock(scope: !2803, file: !274, line: 1188, column: 6)
!2994 = !DILocation(line: 1188, column: 6, scope: !2803)
!2995 = !DILocation(line: 1190, column: 5, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !2993, file: !274, line: 1188, column: 16)
!2997 = !DILocation(line: 1190, column: 15, scope: !2996)
!2998 = !DILocation(line: 1190, column: 20, scope: !2996)
!2999 = !DILocation(line: 1192, column: 24, scope: !2996)
!3000 = !DILocation(line: 1192, column: 5, scope: !2996)
!3001 = !DILocation(line: 1192, column: 15, scope: !2996)
!3002 = !DILocation(line: 1192, column: 23, scope: !2996)
!3003 = !DILocation(line: 1193, column: 26, scope: !2996)
!3004 = !DILocation(line: 1193, column: 31, scope: !2996)
!3005 = !DILocation(line: 1193, column: 5, scope: !2996)
!3006 = !DILocation(line: 1193, column: 15, scope: !2996)
!3007 = !DILocation(line: 1193, column: 25, scope: !2996)
!3008 = !DILocation(line: 1194, column: 8, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !2996, file: !274, line: 1194, column: 8)
!3010 = !DILocation(line: 1194, column: 18, scope: !3009)
!3011 = !DILocation(line: 1194, column: 28, scope: !3009)
!3012 = !DILocation(line: 1194, column: 8, scope: !2996)
!3013 = !DILocation(line: 1194, column: 32, scope: !3009)
!3014 = !DILocation(line: 1194, column: 42, scope: !3009)
!3015 = !DILocation(line: 1194, column: 52, scope: !3009)
!3016 = !DILocation(line: 1195, column: 5, scope: !2996)
!3017 = !DILocation(line: 1195, column: 15, scope: !2996)
!3018 = !DILocation(line: 1195, column: 25, scope: !2996)
!3019 = !DILocation(line: 1196, column: 21, scope: !2996)
!3020 = !DILocation(line: 1196, column: 5, scope: !2996)
!3021 = !DILocation(line: 1196, column: 15, scope: !2996)
!3022 = !DILocation(line: 1196, column: 20, scope: !2996)
!3023 = !DILocation(line: 1197, column: 3, scope: !2996)
!3024 = !DILocation(line: 1199, column: 3, scope: !2803)
!3025 = !DILocation(line: 1199, column: 8, scope: !2803)
!3026 = !DILocation(line: 1199, column: 13, scope: !2803)
!3027 = !DILocation(line: 1201, column: 17, scope: !2803)
!3028 = !DILocation(line: 1201, column: 3, scope: !2803)
!3029 = !DILocation(line: 1201, column: 8, scope: !2803)
!3030 = !DILocation(line: 1201, column: 16, scope: !2803)
!3031 = !DILocation(line: 1202, column: 19, scope: !2803)
!3032 = !DILocation(line: 1202, column: 24, scope: !2803)
!3033 = !DILocation(line: 1202, column: 3, scope: !2803)
!3034 = !DILocation(line: 1202, column: 8, scope: !2803)
!3035 = !DILocation(line: 1202, column: 18, scope: !2803)
!3036 = !DILocation(line: 1203, column: 3, scope: !2803)
!3037 = !DILocation(line: 1203, column: 8, scope: !2803)
!3038 = !DILocation(line: 1203, column: 18, scope: !2803)
!3039 = !DILocation(line: 1204, column: 14, scope: !2803)
!3040 = !DILocation(line: 1204, column: 3, scope: !2803)
!3041 = !DILocation(line: 1204, column: 8, scope: !2803)
!3042 = !DILocation(line: 1204, column: 13, scope: !2803)
!3043 = !DILocation(line: 1206, column: 7, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !2803, file: !274, line: 1206, column: 6)
!3045 = !DILocation(line: 1206, column: 6, scope: !2803)
!3046 = !DILocation(line: 1207, column: 5, scope: !3047)
!3047 = distinct !DILexicalBlock(scope: !3044, file: !274, line: 1206, column: 16)
!3048 = !DILocation(line: 1207, column: 15, scope: !3047)
!3049 = !DILocation(line: 1207, column: 20, scope: !3047)
!3050 = !DILocation(line: 1209, column: 24, scope: !3047)
!3051 = !DILocation(line: 1209, column: 5, scope: !3047)
!3052 = !DILocation(line: 1209, column: 15, scope: !3047)
!3053 = !DILocation(line: 1209, column: 23, scope: !3047)
!3054 = !DILocation(line: 1210, column: 26, scope: !3047)
!3055 = !DILocation(line: 1210, column: 36, scope: !3047)
!3056 = !DILocation(line: 1210, column: 5, scope: !3047)
!3057 = !DILocation(line: 1210, column: 15, scope: !3047)
!3058 = !DILocation(line: 1210, column: 25, scope: !3047)
!3059 = !DILocation(line: 1211, column: 5, scope: !3047)
!3060 = !DILocation(line: 1211, column: 15, scope: !3047)
!3061 = !DILocation(line: 1211, column: 25, scope: !3047)
!3062 = !DILocation(line: 1212, column: 21, scope: !3047)
!3063 = !DILocation(line: 1212, column: 5, scope: !3047)
!3064 = !DILocation(line: 1212, column: 15, scope: !3047)
!3065 = !DILocation(line: 1212, column: 20, scope: !3047)
!3066 = !DILocation(line: 1213, column: 3, scope: !3047)
!3067 = !DILocation(line: 1215, column: 14, scope: !2803)
!3068 = !DILocation(line: 1215, column: 3, scope: !2803)
!3069 = !DILocation(line: 1215, column: 10, scope: !2803)
!3070 = !DILocation(line: 1215, column: 13, scope: !2803)
!3071 = !DILocation(line: 1216, column: 7, scope: !3072)
!3072 = distinct !DILexicalBlock(scope: !2803, file: !274, line: 1216, column: 6)
!3073 = !DILocation(line: 1216, column: 6, scope: !2803)
!3074 = !DILocation(line: 1217, column: 16, scope: !3072)
!3075 = !DILocation(line: 1217, column: 5, scope: !3072)
!3076 = !DILocation(line: 1217, column: 12, scope: !3072)
!3077 = !DILocation(line: 1217, column: 15, scope: !3072)
!3078 = !DILocation(line: 1218, column: 14, scope: !2803)
!3079 = !DILocation(line: 1218, column: 3, scope: !2803)
!3080 = !DILocation(line: 1218, column: 10, scope: !2803)
!3081 = !DILocation(line: 1218, column: 13, scope: !2803)
!3082 = !DILocation(line: 1219, column: 7, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !2803, file: !274, line: 1219, column: 6)
!3084 = !DILocation(line: 1219, column: 6, scope: !2803)
!3085 = !DILocation(line: 1220, column: 16, scope: !3083)
!3086 = !DILocation(line: 1220, column: 5, scope: !3083)
!3087 = !DILocation(line: 1220, column: 12, scope: !3083)
!3088 = !DILocation(line: 1220, column: 15, scope: !3083)
!3089 = !DILocation(line: 1222, column: 3, scope: !2803)
!3090 = distinct !DISubprogram(name: "start_client", scope: !274, file: !274, line: 996, type: !2804, scopeLine: 999, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !433)
!3091 = !DILocalVariable(name: "remote_address", arg: 1, scope: !3090, file: !274, line: 996, type: !258)
!3092 = !DILocation(line: 996, column: 37, scope: !3090)
!3093 = !DILocalVariable(name: "port", arg: 2, scope: !3090, file: !274, line: 996, type: !53)
!3094 = !DILocation(line: 996, column: 57, scope: !3090)
!3095 = !DILocalVariable(name: "ifname", arg: 3, scope: !3090, file: !274, line: 997, type: !2179)
!3096 = !DILocation(line: 997, column: 25, scope: !3090)
!3097 = !DILocalVariable(name: "local_address", arg: 4, scope: !3090, file: !274, line: 997, type: !258)
!3098 = !DILocation(line: 997, column: 45, scope: !3090)
!3099 = !DILocalVariable(name: "messagenumber", arg: 5, scope: !3090, file: !274, line: 998, type: !53)
!3100 = !DILocation(line: 998, column: 8, scope: !3090)
!3101 = !DILocalVariable(name: "i", arg: 6, scope: !3090, file: !274, line: 999, type: !53)
!3102 = !DILocation(line: 999, column: 8, scope: !3090)
!3103 = !DILocalVariable(name: "ss", scope: !3090, file: !274, line: 1001, type: !85)
!3104 = !DILocation(line: 1001, column: 19, scope: !3090)
!3105 = !DILocation(line: 1001, column: 22, scope: !3090)
!3106 = !DILocalVariable(name: "ss_rtcp", scope: !3090, file: !274, line: 1002, type: !85)
!3107 = !DILocation(line: 1002, column: 19, scope: !3090)
!3108 = !DILocation(line: 1004, column: 7, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !3090, file: !274, line: 1004, column: 6)
!3110 = !DILocation(line: 1004, column: 6, scope: !3090)
!3111 = !DILocation(line: 1005, column: 15, scope: !3109)
!3112 = !DILocation(line: 1005, column: 13, scope: !3109)
!3113 = !DILocation(line: 1005, column: 5, scope: !3109)
!3114 = !DILocalVariable(name: "clnet_info_probe", scope: !3090, file: !274, line: 1007, type: !90)
!3115 = !DILocation(line: 1007, column: 20, scope: !3090)
!3116 = !DILocation(line: 1008, column: 3, scope: !3090)
!3117 = !DILocation(line: 1009, column: 20, scope: !3090)
!3118 = !DILocation(line: 1009, column: 23, scope: !3090)
!3119 = !DILocalVariable(name: "clnet_info", scope: !3090, file: !274, line: 1011, type: !509)
!3120 = !DILocation(line: 1011, column: 21, scope: !3090)
!3121 = !DILocation(line: 1011, column: 34, scope: !3090)
!3122 = !DILocation(line: 1011, column: 38, scope: !3090)
!3123 = !DILocalVariable(name: "clnet_info_rtcp", scope: !3090, file: !274, line: 1012, type: !509)
!3124 = !DILocation(line: 1012, column: 21, scope: !3090)
!3125 = !DILocation(line: 1014, column: 7, scope: !3126)
!3126 = distinct !DILexicalBlock(scope: !3090, file: !274, line: 1014, column: 6)
!3127 = !DILocation(line: 1014, column: 6, scope: !3090)
!3128 = !DILocation(line: 1015, column: 25, scope: !3126)
!3129 = !DILocation(line: 1015, column: 34, scope: !3126)
!3130 = !DILocation(line: 1015, column: 21, scope: !3126)
!3131 = !DILocation(line: 1015, column: 5, scope: !3126)
!3132 = !DILocalVariable(name: "chnum", scope: !3090, file: !274, line: 1017, type: !116)
!3133 = !DILocation(line: 1017, column: 12, scope: !3090)
!3134 = !DILocalVariable(name: "chnum_rtcp", scope: !3090, file: !274, line: 1018, type: !116)
!3135 = !DILocation(line: 1018, column: 12, scope: !3090)
!3136 = !DILocation(line: 1020, column: 20, scope: !3090)
!3137 = !DILocation(line: 1020, column: 26, scope: !3090)
!3138 = !DILocation(line: 1021, column: 6, scope: !3090)
!3139 = !DILocation(line: 1021, column: 14, scope: !3090)
!3140 = !DILocation(line: 1022, column: 6, scope: !3090)
!3141 = !DILocation(line: 1024, column: 6, scope: !3090)
!3142 = !DILocation(line: 1025, column: 6, scope: !3090)
!3143 = !DILocation(line: 1020, column: 3, scope: !3090)
!3144 = !DILocation(line: 1027, column: 23, scope: !3145)
!3145 = distinct !DILexicalBlock(scope: !3090, file: !274, line: 1027, column: 6)
!3146 = !DILocation(line: 1027, column: 6, scope: !3145)
!3147 = !DILocation(line: 1027, column: 6, scope: !3090)
!3148 = !DILocation(line: 1028, column: 30, scope: !3149)
!3149 = distinct !DILexicalBlock(scope: !3145, file: !274, line: 1027, column: 28)
!3150 = !DILocation(line: 1028, column: 4, scope: !3149)
!3151 = !DILocation(line: 1029, column: 21, scope: !3149)
!3152 = !DILocation(line: 1029, column: 24, scope: !3149)
!3153 = !DILocation(line: 1030, column: 3, scope: !3149)
!3154 = !DILocation(line: 1030, column: 30, scope: !3155)
!3155 = distinct !DILexicalBlock(scope: !3145, file: !274, line: 1030, column: 13)
!3156 = !DILocation(line: 1030, column: 33, scope: !3155)
!3157 = !DILocation(line: 1030, column: 13, scope: !3145)
!3158 = !DILocation(line: 1031, column: 4, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !3155, file: !274, line: 1030, column: 40)
!3160 = !DILocation(line: 1032, column: 21, scope: !3159)
!3161 = !DILocation(line: 1032, column: 24, scope: !3159)
!3162 = !DILocation(line: 1033, column: 3, scope: !3159)
!3163 = !DILocation(line: 1035, column: 26, scope: !3090)
!3164 = !DILocation(line: 1035, column: 38, scope: !3090)
!3165 = !DILocation(line: 1035, column: 3, scope: !3090)
!3166 = !DILocation(line: 1037, column: 7, scope: !3167)
!3167 = distinct !DILexicalBlock(scope: !3090, file: !274, line: 1037, column: 6)
!3168 = !DILocation(line: 1037, column: 6, scope: !3090)
!3169 = !DILocation(line: 1038, column: 27, scope: !3167)
!3170 = !DILocation(line: 1038, column: 44, scope: !3167)
!3171 = !DILocation(line: 1038, column: 4, scope: !3167)
!3172 = !DILocalVariable(name: "ev", scope: !3090, file: !274, line: 1040, type: !210)
!3173 = !DILocation(line: 1040, column: 17, scope: !3090)
!3174 = !DILocation(line: 1040, column: 32, scope: !3090)
!3175 = !DILocation(line: 1040, column: 50, scope: !3090)
!3176 = !DILocation(line: 1040, column: 62, scope: !3090)
!3177 = !DILocation(line: 1042, column: 5, scope: !3090)
!3178 = !DILocation(line: 1040, column: 22, scope: !3090)
!3179 = !DILocation(line: 1044, column: 13, scope: !3090)
!3180 = !DILocation(line: 1044, column: 3, scope: !3090)
!3181 = !DILocalVariable(name: "ev_rtcp", scope: !3090, file: !274, line: 1046, type: !210)
!3182 = !DILocation(line: 1046, column: 17, scope: !3090)
!3183 = !DILocation(line: 1048, column: 7, scope: !3184)
!3184 = distinct !DILexicalBlock(scope: !3090, file: !274, line: 1048, column: 6)
!3185 = !DILocation(line: 1048, column: 6, scope: !3090)
!3186 = !DILocation(line: 1049, column: 25, scope: !3187)
!3187 = distinct !DILexicalBlock(scope: !3184, file: !274, line: 1048, column: 16)
!3188 = !DILocation(line: 1049, column: 43, scope: !3187)
!3189 = !DILocation(line: 1049, column: 60, scope: !3187)
!3190 = !DILocation(line: 1051, column: 4, scope: !3187)
!3191 = !DILocation(line: 1049, column: 15, scope: !3187)
!3192 = !DILocation(line: 1049, column: 13, scope: !3187)
!3193 = !DILocation(line: 1053, column: 15, scope: !3187)
!3194 = !DILocation(line: 1053, column: 5, scope: !3187)
!3195 = !DILocation(line: 1054, column: 3, scope: !3187)
!3196 = !DILocation(line: 1056, column: 3, scope: !3090)
!3197 = !DILocation(line: 1056, column: 7, scope: !3090)
!3198 = !DILocation(line: 1056, column: 12, scope: !3090)
!3199 = !DILocation(line: 1058, column: 16, scope: !3090)
!3200 = !DILocation(line: 1058, column: 3, scope: !3090)
!3201 = !DILocation(line: 1058, column: 7, scope: !3090)
!3202 = !DILocation(line: 1058, column: 15, scope: !3090)
!3203 = !DILocation(line: 1059, column: 18, scope: !3090)
!3204 = !DILocation(line: 1059, column: 3, scope: !3090)
!3205 = !DILocation(line: 1059, column: 7, scope: !3090)
!3206 = !DILocation(line: 1059, column: 17, scope: !3090)
!3207 = !DILocation(line: 1060, column: 3, scope: !3090)
!3208 = !DILocation(line: 1060, column: 7, scope: !3090)
!3209 = !DILocation(line: 1060, column: 17, scope: !3090)
!3210 = !DILocation(line: 1061, column: 13, scope: !3090)
!3211 = !DILocation(line: 1061, column: 3, scope: !3090)
!3212 = !DILocation(line: 1061, column: 7, scope: !3090)
!3213 = !DILocation(line: 1061, column: 12, scope: !3090)
!3214 = !DILocation(line: 1063, column: 7, scope: !3215)
!3215 = distinct !DILexicalBlock(scope: !3090, file: !274, line: 1063, column: 6)
!3216 = !DILocation(line: 1063, column: 6, scope: !3090)
!3217 = !DILocation(line: 1065, column: 5, scope: !3218)
!3218 = distinct !DILexicalBlock(scope: !3215, file: !274, line: 1063, column: 16)
!3219 = !DILocation(line: 1065, column: 14, scope: !3218)
!3220 = !DILocation(line: 1065, column: 19, scope: !3218)
!3221 = !DILocation(line: 1067, column: 23, scope: !3218)
!3222 = !DILocation(line: 1067, column: 5, scope: !3218)
!3223 = !DILocation(line: 1067, column: 14, scope: !3218)
!3224 = !DILocation(line: 1067, column: 22, scope: !3218)
!3225 = !DILocation(line: 1068, column: 25, scope: !3218)
!3226 = !DILocation(line: 1068, column: 29, scope: !3218)
!3227 = !DILocation(line: 1068, column: 5, scope: !3218)
!3228 = !DILocation(line: 1068, column: 14, scope: !3218)
!3229 = !DILocation(line: 1068, column: 24, scope: !3218)
!3230 = !DILocation(line: 1069, column: 8, scope: !3231)
!3231 = distinct !DILexicalBlock(scope: !3218, file: !274, line: 1069, column: 8)
!3232 = !DILocation(line: 1069, column: 17, scope: !3231)
!3233 = !DILocation(line: 1069, column: 27, scope: !3231)
!3234 = !DILocation(line: 1069, column: 8, scope: !3218)
!3235 = !DILocation(line: 1069, column: 31, scope: !3231)
!3236 = !DILocation(line: 1069, column: 40, scope: !3231)
!3237 = !DILocation(line: 1069, column: 50, scope: !3231)
!3238 = !DILocation(line: 1070, column: 5, scope: !3218)
!3239 = !DILocation(line: 1070, column: 14, scope: !3218)
!3240 = !DILocation(line: 1070, column: 24, scope: !3218)
!3241 = !DILocation(line: 1071, column: 20, scope: !3218)
!3242 = !DILocation(line: 1071, column: 5, scope: !3218)
!3243 = !DILocation(line: 1071, column: 14, scope: !3218)
!3244 = !DILocation(line: 1071, column: 19, scope: !3218)
!3245 = !DILocation(line: 1072, column: 3, scope: !3218)
!3246 = !DILocation(line: 1074, column: 12, scope: !3090)
!3247 = !DILocation(line: 1074, column: 3, scope: !3090)
!3248 = !DILocation(line: 1074, column: 9, scope: !3090)
!3249 = !DILocation(line: 1074, column: 11, scope: !3090)
!3250 = !DILocation(line: 1076, column: 19, scope: !3090)
!3251 = !DILocation(line: 1076, column: 3, scope: !3090)
!3252 = !DILocation(line: 1078, column: 7, scope: !3253)
!3253 = distinct !DILexicalBlock(scope: !3090, file: !274, line: 1078, column: 6)
!3254 = !DILocation(line: 1078, column: 6, scope: !3090)
!3255 = !DILocation(line: 1079, column: 16, scope: !3253)
!3256 = !DILocation(line: 1079, column: 5, scope: !3253)
!3257 = !DILocation(line: 1079, column: 11, scope: !3253)
!3258 = !DILocation(line: 1079, column: 12, scope: !3253)
!3259 = !DILocation(line: 1079, column: 15, scope: !3253)
!3260 = !DILocation(line: 1081, column: 3, scope: !3090)
!3261 = distinct !DISubprogram(name: "timer_handler", scope: !274, file: !274, line: 1343, type: !1510, scopeLine: 1344, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !433)
!3262 = !DILocalVariable(name: "fd", arg: 1, scope: !3261, file: !274, line: 1343, type: !53)
!3263 = !DILocation(line: 1343, column: 43, scope: !3261)
!3264 = !DILocalVariable(name: "event", arg: 2, scope: !3261, file: !274, line: 1343, type: !1512)
!3265 = !DILocation(line: 1343, column: 53, scope: !3261)
!3266 = !DILocalVariable(name: "arg", arg: 3, scope: !3261, file: !274, line: 1343, type: !243)
!3267 = !DILocation(line: 1343, column: 66, scope: !3261)
!3268 = !DILocation(line: 1345, column: 2, scope: !3261)
!3269 = !DILocation(line: 1345, column: 2, scope: !3270)
!3270 = distinct !DILexicalBlock(scope: !3261, file: !274, line: 1345, column: 2)
!3271 = !DILocation(line: 1346, column: 2, scope: !3261)
!3272 = !DILocation(line: 1346, column: 2, scope: !3273)
!3273 = distinct !DILexicalBlock(scope: !3261, file: !274, line: 1346, column: 2)
!3274 = !DILocation(line: 1347, column: 2, scope: !3261)
!3275 = !DILocation(line: 1347, column: 2, scope: !3276)
!3276 = distinct !DILexicalBlock(scope: !3261, file: !274, line: 1347, column: 2)
!3277 = !DILocation(line: 1349, column: 2, scope: !3261)
!3278 = !DILocation(line: 1351, column: 5, scope: !3279)
!3279 = distinct !DILexicalBlock(scope: !3261, file: !274, line: 1351, column: 5)
!3280 = !DILocation(line: 1351, column: 5, scope: !3261)
!3281 = !DILocalVariable(name: "i", scope: !3282, file: !274, line: 1352, type: !53)
!3282 = distinct !DILexicalBlock(scope: !3279, file: !274, line: 1351, column: 23)
!3283 = !DILocation(line: 1352, column: 7, scope: !3282)
!3284 = !DILocalVariable(name: "done", scope: !3282, file: !274, line: 1353, type: !53)
!3285 = !DILocation(line: 1353, column: 7, scope: !3282)
!3286 = !DILocation(line: 1354, column: 10, scope: !3287)
!3287 = distinct !DILexicalBlock(scope: !3282, file: !274, line: 1354, column: 3)
!3288 = !DILocation(line: 1354, column: 8, scope: !3287)
!3289 = !DILocation(line: 1354, column: 15, scope: !3290)
!3290 = distinct !DILexicalBlock(scope: !3287, file: !274, line: 1354, column: 3)
!3291 = !DILocation(line: 1354, column: 19, scope: !3290)
!3292 = !DILocation(line: 1354, column: 17, scope: !3290)
!3293 = !DILocation(line: 1354, column: 3, scope: !3287)
!3294 = !DILocation(line: 1355, column: 8, scope: !3295)
!3295 = distinct !DILexicalBlock(scope: !3296, file: !274, line: 1355, column: 8)
!3296 = distinct !DILexicalBlock(scope: !3290, file: !274, line: 1354, column: 39)
!3297 = !DILocation(line: 1355, column: 14, scope: !3295)
!3298 = !DILocation(line: 1355, column: 8, scope: !3296)
!3299 = !DILocalVariable(name: "finished", scope: !3300, file: !274, line: 1356, type: !53)
!3300 = distinct !DILexicalBlock(scope: !3295, file: !274, line: 1355, column: 18)
!3301 = !DILocation(line: 1356, column: 9, scope: !3300)
!3302 = !DILocation(line: 1356, column: 41, scope: !3300)
!3303 = !DILocation(line: 1356, column: 47, scope: !3300)
!3304 = !DILocation(line: 1356, column: 20, scope: !3300)
!3305 = !DILocation(line: 1357, column: 9, scope: !3306)
!3306 = distinct !DILexicalBlock(scope: !3300, file: !274, line: 1357, column: 9)
!3307 = !DILocation(line: 1357, column: 9, scope: !3300)
!3308 = !DILocation(line: 1358, column: 6, scope: !3309)
!3309 = distinct !DILexicalBlock(scope: !3306, file: !274, line: 1357, column: 19)
!3310 = !DILocation(line: 1358, column: 12, scope: !3309)
!3311 = !DILocation(line: 1358, column: 15, scope: !3309)
!3312 = !DILocation(line: 1359, column: 5, scope: !3309)
!3313 = !DILocation(line: 1360, column: 4, scope: !3300)
!3314 = !DILocation(line: 1361, column: 3, scope: !3296)
!3315 = !DILocation(line: 1354, column: 34, scope: !3290)
!3316 = !DILocation(line: 1354, column: 3, scope: !3290)
!3317 = distinct !{!3317, !3293, !3318, !571}
!3318 = !DILocation(line: 1361, column: 3, scope: !3287)
!3319 = !DILocation(line: 1362, column: 6, scope: !3320)
!3320 = distinct !DILexicalBlock(scope: !3282, file: !274, line: 1362, column: 6)
!3321 = !DILocation(line: 1362, column: 10, scope: !3320)
!3322 = !DILocation(line: 1362, column: 13, scope: !3320)
!3323 = !DILocation(line: 1362, column: 17, scope: !3320)
!3324 = !DILocation(line: 1362, column: 21, scope: !3320)
!3325 = !DILocation(line: 1362, column: 24, scope: !3320)
!3326 = !DILocation(line: 1362, column: 6, scope: !3282)
!3327 = !DILocation(line: 1363, column: 11, scope: !3328)
!3328 = distinct !DILexicalBlock(scope: !3329, file: !274, line: 1363, column: 4)
!3329 = distinct !DILexicalBlock(scope: !3320, file: !274, line: 1362, column: 44)
!3330 = !DILocation(line: 1363, column: 9, scope: !3328)
!3331 = !DILocation(line: 1363, column: 16, scope: !3332)
!3332 = distinct !DILexicalBlock(scope: !3328, file: !274, line: 1363, column: 4)
!3333 = !DILocation(line: 1363, column: 20, scope: !3332)
!3334 = !DILocation(line: 1363, column: 18, scope: !3332)
!3335 = !DILocation(line: 1363, column: 4, scope: !3328)
!3336 = !DILocation(line: 1364, column: 9, scope: !3337)
!3337 = distinct !DILexicalBlock(scope: !3338, file: !274, line: 1364, column: 9)
!3338 = distinct !DILexicalBlock(scope: !3332, file: !274, line: 1363, column: 40)
!3339 = !DILocation(line: 1364, column: 15, scope: !3337)
!3340 = !DILocation(line: 1364, column: 9, scope: !3338)
!3341 = !DILocation(line: 1365, column: 12, scope: !3342)
!3342 = distinct !DILexicalBlock(scope: !3337, file: !274, line: 1364, column: 19)
!3343 = !DILocation(line: 1365, column: 18, scope: !3342)
!3344 = !DILocation(line: 1365, column: 22, scope: !3342)
!3345 = !DILocation(line: 1365, column: 28, scope: !3342)
!3346 = !DILocation(line: 1365, column: 6, scope: !3342)
!3347 = !DILocation(line: 1366, column: 6, scope: !3342)
!3348 = !DILocation(line: 1366, column: 12, scope: !3342)
!3349 = !DILocation(line: 1366, column: 16, scope: !3342)
!3350 = !DILocation(line: 1366, column: 22, scope: !3342)
!3351 = !DILocation(line: 1366, column: 25, scope: !3342)
!3352 = !DILocation(line: 1367, column: 5, scope: !3342)
!3353 = !DILocation(line: 1368, column: 4, scope: !3338)
!3354 = !DILocation(line: 1363, column: 35, scope: !3332)
!3355 = !DILocation(line: 1363, column: 4, scope: !3332)
!3356 = distinct !{!3356, !3335, !3357, !571}
!3357 = !DILocation(line: 1368, column: 4, scope: !3328)
!3358 = !DILocation(line: 1369, column: 3, scope: !3329)
!3359 = !DILocation(line: 1370, column: 2, scope: !3282)
!3360 = !DILocation(line: 1371, column: 1, scope: !3261)
!3361 = distinct !DISubprogram(name: "run_events", scope: !274, file: !274, line: 977, type: !3362, scopeLine: 978, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !433)
!3362 = !DISubroutineType(types: !3363)
!3363 = !{null, !53}
!3364 = !DILocalVariable(name: "short_burst", arg: 1, scope: !3361, file: !274, line: 977, type: !53)
!3365 = !DILocation(line: 977, column: 28, scope: !3361)
!3366 = !DILocalVariable(name: "timeout", scope: !3361, file: !274, line: 979, type: !1423)
!3367 = !DILocation(line: 979, column: 17, scope: !3361)
!3368 = !DILocation(line: 981, column: 6, scope: !3369)
!3369 = distinct !DILexicalBlock(scope: !3361, file: !274, line: 981, column: 5)
!3370 = !DILocation(line: 981, column: 5, scope: !3361)
!3371 = !DILocation(line: 982, column: 11, scope: !3372)
!3372 = distinct !DILexicalBlock(scope: !3369, file: !274, line: 981, column: 19)
!3373 = !DILocation(line: 982, column: 18, scope: !3372)
!3374 = !DILocation(line: 983, column: 11, scope: !3372)
!3375 = !DILocation(line: 983, column: 19, scope: !3372)
!3376 = !DILocation(line: 984, column: 2, scope: !3372)
!3377 = !DILocation(line: 985, column: 11, scope: !3378)
!3378 = distinct !DILexicalBlock(scope: !3369, file: !274, line: 984, column: 9)
!3379 = !DILocation(line: 985, column: 18, scope: !3378)
!3380 = !DILocation(line: 986, column: 11, scope: !3378)
!3381 = !DILocation(line: 986, column: 19, scope: !3378)
!3382 = !DILocation(line: 989, column: 22, scope: !3361)
!3383 = !DILocation(line: 989, column: 2, scope: !3361)
!3384 = !DILocation(line: 991, column: 22, scope: !3361)
!3385 = !DILocation(line: 991, column: 2, scope: !3361)
!3386 = !DILocation(line: 992, column: 1, scope: !3361)
!3387 = distinct !DISubprogram(name: "get_turn_credentials_type", scope: !274, file: !274, line: 1597, type: !3388, scopeLine: 1598, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !433)
!3388 = !DISubroutineType(types: !3389)
!3389 = !{!3390}
!3390 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_credential_type", file: !45, line: 59, baseType: !44)
!3391 = !DILocation(line: 1599, column: 2, scope: !3387)
!3392 = distinct !DISubprogram(name: "add_integrity", scope: !274, file: !274, line: 1602, type: !3393, scopeLine: 1603, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !433)
!3393 = !DISubroutineType(types: !3394)
!3394 = !{!53, !509, !510}
!3395 = !DILocalVariable(name: "clnet_info", arg: 1, scope: !3392, file: !274, line: 1602, type: !509)
!3396 = !DILocation(line: 1602, column: 37, scope: !3392)
!3397 = !DILocalVariable(name: "message", arg: 2, scope: !3392, file: !274, line: 1602, type: !510)
!3398 = !DILocation(line: 1602, column: 62, scope: !3392)
!3399 = !DILocation(line: 1604, column: 5, scope: !3400)
!3400 = distinct !DILexicalBlock(scope: !3392, file: !274, line: 1604, column: 5)
!3401 = !DILocation(line: 1604, column: 17, scope: !3400)
!3402 = !DILocation(line: 1604, column: 5, scope: !3392)
!3403 = !DILocation(line: 1606, column: 6, scope: !3404)
!3404 = distinct !DILexicalBlock(scope: !3405, file: !274, line: 1606, column: 6)
!3405 = distinct !DILexicalBlock(scope: !3400, file: !274, line: 1604, column: 27)
!3406 = !DILocation(line: 1606, column: 12, scope: !3404)
!3407 = !DILocation(line: 1606, column: 15, scope: !3404)
!3408 = !DILocation(line: 1606, column: 27, scope: !3404)
!3409 = !DILocation(line: 1606, column: 6, scope: !3405)
!3410 = !DILocalVariable(name: "method", scope: !3411, file: !274, line: 1608, type: !116)
!3411 = distinct !DILexicalBlock(scope: !3404, file: !274, line: 1606, column: 34)
!3412 = !DILocation(line: 1608, column: 13, scope: !3411)
!3413 = !DILocation(line: 1608, column: 42, scope: !3411)
!3414 = !DILocation(line: 1608, column: 51, scope: !3411)
!3415 = !DILocation(line: 1608, column: 56, scope: !3411)
!3416 = !DILocation(line: 1608, column: 65, scope: !3411)
!3417 = !DILocation(line: 1608, column: 22, scope: !3411)
!3418 = !DILocalVariable(name: "cok", scope: !3411, file: !274, line: 1610, type: !53)
!3419 = !DILocation(line: 1610, column: 8, scope: !3411)
!3420 = !DILocation(line: 1610, column: 14, scope: !3411)
!3421 = !DILocation(line: 1610, column: 26, scope: !3411)
!3422 = !DILocation(line: 1612, column: 9, scope: !3423)
!3423 = distinct !DILexicalBlock(scope: !3411, file: !274, line: 1612, column: 7)
!3424 = !DILocation(line: 1612, column: 16, scope: !3423)
!3425 = !DILocation(line: 1612, column: 41, scope: !3423)
!3426 = !DILocation(line: 1612, column: 45, scope: !3423)
!3427 = !DILocation(line: 1612, column: 52, scope: !3423)
!3428 = !DILocation(line: 1612, column: 77, scope: !3423)
!3429 = !DILocation(line: 1612, column: 82, scope: !3423)
!3430 = !DILocation(line: 1612, column: 94, scope: !3423)
!3431 = !DILocation(line: 1612, column: 81, scope: !3423)
!3432 = !DILocation(line: 1612, column: 7, scope: !3411)
!3433 = !DILocation(line: 1615, column: 26, scope: !3434)
!3434 = distinct !DILexicalBlock(scope: !3423, file: !274, line: 1613, column: 4)
!3435 = !DILocation(line: 1615, column: 10, scope: !3434)
!3436 = !DILocation(line: 1615, column: 9, scope: !3434)
!3437 = !DILocation(line: 1615, column: 35, scope: !3434)
!3438 = !DILocation(line: 1615, column: 8, scope: !3434)
!3439 = !DILocation(line: 1616, column: 23, scope: !3434)
!3440 = !DILocation(line: 1616, column: 5, scope: !3434)
!3441 = !DILocation(line: 1616, column: 17, scope: !3434)
!3442 = !DILocation(line: 1616, column: 21, scope: !3434)
!3443 = !DILocalVariable(name: "otoken", scope: !3434, file: !274, line: 1617, type: !3444)
!3444 = !DIDerivedType(tag: DW_TAG_typedef, name: "oauth_token", file: !52, line: 253, baseType: !3445)
!3445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_oauth_token", file: !52, line: 249, size: 3264, elements: !3446)
!3446 = !{!3447}
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "enc_block", scope: !3445, file: !52, line: 250, baseType: !3448, size: 3264)
!3448 = !DIDerivedType(tag: DW_TAG_typedef, name: "oauth_encrypted_block", file: !52, line: 247, baseType: !3449)
!3449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_oauth_encrypted_block", file: !52, line: 238, size: 3264, elements: !3450)
!3450 = !{!3451, !3452, !3456, !3457, !3458, !3459}
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "nonce_length", scope: !3449, file: !52, line: 239, baseType: !116, size: 16)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "nonce", scope: !3449, file: !52, line: 240, baseType: !3453, size: 2048, offset: 16)
!3453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 2048, elements: !3454)
!3454 = !{!3455}
!3455 = !DISubrange(count: 256)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "key_length", scope: !3449, file: !52, line: 241, baseType: !116, size: 16, offset: 2064)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "mac_key", scope: !3449, file: !52, line: 242, baseType: !169, size: 1024, offset: 2080)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3449, file: !52, line: 243, baseType: !239, size: 64, offset: 3136)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "lifetime", scope: !3449, file: !52, line: 244, baseType: !123, size: 32, offset: 3200)
!3460 = !DILocation(line: 1617, column: 17, scope: !3434)
!3461 = !DILocalVariable(name: "etoken", scope: !3434, file: !274, line: 1618, type: !3462)
!3462 = !DIDerivedType(tag: DW_TAG_typedef, name: "encoded_oauth_token", file: !52, line: 262, baseType: !3463)
!3463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_encoded_oauth_token", file: !52, line: 257, size: 8256, elements: !3464)
!3464 = !{!3465, !3466}
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !3463, file: !52, line: 258, baseType: !684, size: 8192)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3463, file: !52, line: 259, baseType: !83, size: 64, offset: 8192)
!3467 = !DILocation(line: 1618, column: 25, scope: !3434)
!3468 = !DILocalVariable(name: "nonce", scope: !3434, file: !274, line: 1619, type: !790)
!3469 = !DILocation(line: 1619, column: 13, scope: !3434)
!3470 = !DILocation(line: 1620, column: 32, scope: !3434)
!3471 = !DILocation(line: 1620, column: 5, scope: !3434)
!3472 = !DILocalVariable(name: "halflifetime", scope: !3434, file: !274, line: 1621, type: !255)
!3473 = !DILocation(line: 1621, column: 10, scope: !3434)
!3474 = !DILocalVariable(name: "random_lifetime", scope: !3434, file: !274, line: 1622, type: !255)
!3475 = !DILocation(line: 1622, column: 10, scope: !3434)
!3476 = !DILocation(line: 1623, column: 5, scope: !3434)
!3477 = !DILocation(line: 1623, column: 12, scope: !3434)
!3478 = !DILocation(line: 1623, column: 11, scope: !3434)
!3479 = !DILocation(line: 1624, column: 24, scope: !3480)
!3480 = distinct !DILexicalBlock(scope: !3434, file: !274, line: 1623, column: 29)
!3481 = !DILocation(line: 1624, column: 22, scope: !3480)
!3482 = distinct !{!3482, !3476, !3483, !571}
!3483 = !DILocation(line: 1625, column: 5, scope: !3434)
!3484 = !DILocation(line: 1626, column: 8, scope: !3485)
!3485 = distinct !DILexicalBlock(scope: !3434, file: !274, line: 1626, column: 8)
!3486 = !DILocation(line: 1626, column: 23, scope: !3485)
!3487 = !DILocation(line: 1626, column: 8, scope: !3434)
!3488 = !DILocation(line: 1626, column: 44, scope: !3485)
!3489 = !DILocation(line: 1626, column: 43, scope: !3485)
!3490 = !DILocation(line: 1626, column: 42, scope: !3485)
!3491 = !DILocation(line: 1626, column: 27, scope: !3485)
!3492 = !DILocation(line: 1627, column: 23, scope: !3434)
!3493 = !DILocation(line: 1627, column: 41, scope: !3434)
!3494 = !DILocation(line: 1627, column: 39, scope: !3434)
!3495 = !DILocation(line: 1627, column: 21, scope: !3434)
!3496 = !DILocation(line: 1628, column: 45, scope: !3434)
!3497 = !DILocation(line: 1628, column: 60, scope: !3434)
!3498 = !DILocation(line: 1628, column: 58, scope: !3434)
!3499 = !DILocation(line: 1628, column: 34, scope: !3434)
!3500 = !DILocation(line: 1628, column: 12, scope: !3434)
!3501 = !DILocation(line: 1628, column: 22, scope: !3434)
!3502 = !DILocation(line: 1628, column: 31, scope: !3434)
!3503 = !DILocation(line: 1629, column: 45, scope: !3434)
!3504 = !DILocation(line: 1629, column: 35, scope: !3434)
!3505 = !DILocation(line: 1629, column: 58, scope: !3434)
!3506 = !DILocation(line: 1629, column: 12, scope: !3434)
!3507 = !DILocation(line: 1629, column: 22, scope: !3434)
!3508 = !DILocation(line: 1629, column: 32, scope: !3434)
!3509 = !DILocation(line: 1630, column: 8, scope: !3510)
!3510 = distinct !DILexicalBlock(scope: !3434, file: !274, line: 1630, column: 8)
!3511 = !DILocation(line: 1630, column: 16, scope: !3510)
!3512 = !DILocation(line: 1630, column: 8, scope: !3434)
!3513 = !DILocation(line: 1631, column: 13, scope: !3514)
!3514 = distinct !DILexicalBlock(scope: !3510, file: !274, line: 1630, column: 35)
!3515 = !DILocation(line: 1631, column: 23, scope: !3514)
!3516 = !DILocation(line: 1631, column: 34, scope: !3514)
!3517 = !DILocation(line: 1632, column: 5, scope: !3514)
!3518 = !DILocation(line: 1632, column: 15, scope: !3519)
!3519 = distinct !DILexicalBlock(scope: !3510, file: !274, line: 1632, column: 15)
!3520 = !DILocation(line: 1632, column: 23, scope: !3519)
!3521 = !DILocation(line: 1632, column: 15, scope: !3510)
!3522 = !DILocation(line: 1633, column: 13, scope: !3523)
!3523 = distinct !DILexicalBlock(scope: !3519, file: !274, line: 1632, column: 42)
!3524 = !DILocation(line: 1633, column: 23, scope: !3523)
!3525 = !DILocation(line: 1633, column: 34, scope: !3523)
!3526 = !DILocation(line: 1634, column: 5, scope: !3523)
!3527 = !DILocation(line: 1634, column: 15, scope: !3528)
!3528 = distinct !DILexicalBlock(scope: !3519, file: !274, line: 1634, column: 15)
!3529 = !DILocation(line: 1634, column: 23, scope: !3528)
!3530 = !DILocation(line: 1634, column: 15, scope: !3519)
!3531 = !DILocation(line: 1635, column: 13, scope: !3532)
!3532 = distinct !DILexicalBlock(scope: !3528, file: !274, line: 1634, column: 42)
!3533 = !DILocation(line: 1635, column: 23, scope: !3532)
!3534 = !DILocation(line: 1635, column: 34, scope: !3532)
!3535 = !DILocation(line: 1636, column: 5, scope: !3532)
!3536 = !DILocation(line: 1637, column: 13, scope: !3537)
!3537 = distinct !DILexicalBlock(scope: !3528, file: !274, line: 1636, column: 12)
!3538 = !DILocation(line: 1637, column: 23, scope: !3537)
!3539 = !DILocation(line: 1637, column: 34, scope: !3537)
!3540 = !DILocation(line: 1639, column: 41, scope: !3434)
!3541 = !DILocation(line: 1639, column: 51, scope: !3434)
!3542 = !DILocation(line: 1639, column: 33, scope: !3434)
!3543 = !DILocation(line: 1639, column: 68, scope: !3434)
!3544 = !DILocation(line: 1639, column: 78, scope: !3434)
!3545 = !DILocation(line: 1639, column: 61, scope: !3434)
!3546 = !DILocation(line: 1639, column: 5, scope: !3434)
!3547 = !DILocation(line: 1640, column: 27, scope: !3548)
!3548 = distinct !DILexicalBlock(scope: !3434, file: !274, line: 1640, column: 8)
!3549 = !DILocation(line: 1640, column: 39, scope: !3548)
!3550 = !DILocation(line: 1640, column: 74, scope: !3548)
!3551 = !DILocation(line: 1640, column: 63, scope: !3548)
!3552 = !DILocation(line: 1640, column: 90, scope: !3548)
!3553 = !DILocation(line: 1640, column: 8, scope: !3548)
!3554 = !DILocation(line: 1640, column: 96, scope: !3548)
!3555 = !DILocation(line: 1640, column: 8, scope: !3434)
!3556 = !DILocation(line: 1641, column: 6, scope: !3557)
!3557 = distinct !DILexicalBlock(scope: !3548, file: !274, line: 1640, column: 100)
!3558 = !DILocation(line: 1642, column: 6, scope: !3557)
!3559 = !DILocation(line: 1644, column: 23, scope: !3434)
!3560 = !DILocation(line: 1644, column: 32, scope: !3434)
!3561 = !DILocation(line: 1644, column: 48, scope: !3434)
!3562 = !DILocation(line: 1644, column: 57, scope: !3434)
!3563 = !DILocation(line: 1645, column: 29, scope: !3434)
!3564 = !DILocation(line: 1645, column: 22, scope: !3434)
!3565 = !DILocation(line: 1645, column: 48, scope: !3434)
!3566 = !DILocation(line: 1645, column: 36, scope: !3434)
!3567 = !DILocation(line: 1644, column: 5, scope: !3434)
!3568 = !DILocation(line: 1647, column: 18, scope: !3434)
!3569 = !DILocation(line: 1647, column: 28, scope: !3434)
!3570 = !DILocation(line: 1647, column: 11, scope: !3434)
!3571 = !DILocation(line: 1647, column: 36, scope: !3434)
!3572 = !DILocation(line: 1647, column: 48, scope: !3434)
!3573 = !DILocation(line: 1647, column: 59, scope: !3434)
!3574 = !DILocation(line: 1647, column: 69, scope: !3434)
!3575 = !DILocation(line: 1647, column: 52, scope: !3434)
!3576 = !DILocation(line: 1647, column: 5, scope: !3434)
!3577 = !DILocation(line: 1648, column: 5, scope: !3434)
!3578 = !DILocation(line: 1648, column: 17, scope: !3434)
!3579 = !DILocation(line: 1648, column: 25, scope: !3434)
!3580 = !DILocation(line: 1649, column: 4, scope: !3434)
!3581 = !DILocation(line: 1651, column: 42, scope: !3582)
!3582 = distinct !DILexicalBlock(scope: !3411, file: !274, line: 1651, column: 7)
!3583 = !DILocation(line: 1651, column: 51, scope: !3582)
!3584 = !DILocation(line: 1651, column: 67, scope: !3582)
!3585 = !DILocation(line: 1651, column: 76, scope: !3582)
!3586 = !DILocation(line: 1651, column: 103, scope: !3582)
!3587 = !DILocation(line: 1651, column: 92, scope: !3582)
!3588 = !DILocation(line: 1651, column: 108, scope: !3582)
!3589 = !DILocation(line: 1652, column: 6, scope: !3582)
!3590 = !DILocation(line: 1652, column: 18, scope: !3582)
!3591 = !DILocation(line: 1652, column: 25, scope: !3582)
!3592 = !DILocation(line: 1652, column: 37, scope: !3582)
!3593 = !DILocation(line: 1652, column: 42, scope: !3582)
!3594 = !DILocation(line: 1652, column: 54, scope: !3582)
!3595 = !DILocation(line: 1652, column: 61, scope: !3582)
!3596 = !DILocation(line: 1651, column: 7, scope: !3582)
!3597 = !DILocation(line: 1652, column: 69, scope: !3582)
!3598 = !DILocation(line: 1651, column: 7, scope: !3411)
!3599 = !DILocation(line: 1653, column: 5, scope: !3600)
!3600 = distinct !DILexicalBlock(scope: !3582, file: !274, line: 1652, column: 73)
!3601 = !DILocation(line: 1654, column: 5, scope: !3600)
!3602 = !DILocalVariable(name: "pwd", scope: !3603, file: !274, line: 1659, type: !3604)
!3603 = distinct !DILexicalBlock(scope: !3411, file: !274, line: 1658, column: 4)
!3604 = !DIDerivedType(tag: DW_TAG_typedef, name: "password_t", file: !45, line: 66, baseType: !3605)
!3605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 2056, elements: !3606)
!3606 = !{!3607}
!3607 = !DISubrange(count: 257)
!3608 = !DILocation(line: 1659, column: 16, scope: !3603)
!3609 = !DILocation(line: 1660, column: 48, scope: !3610)
!3610 = distinct !DILexicalBlock(scope: !3603, file: !274, line: 1660, column: 8)
!3611 = !DILocation(line: 1661, column: 9, scope: !3610)
!3612 = !DILocation(line: 1661, column: 18, scope: !3610)
!3613 = !DILocation(line: 1661, column: 32, scope: !3610)
!3614 = !DILocation(line: 1661, column: 41, scope: !3610)
!3615 = !DILocation(line: 1661, column: 47, scope: !3610)
!3616 = !DILocation(line: 1661, column: 59, scope: !3610)
!3617 = !DILocation(line: 1661, column: 64, scope: !3610)
!3618 = !DILocation(line: 1661, column: 69, scope: !3610)
!3619 = !DILocation(line: 1660, column: 8, scope: !3610)
!3620 = !DILocation(line: 1661, column: 77, scope: !3610)
!3621 = !DILocation(line: 1660, column: 8, scope: !3603)
!3622 = !DILocation(line: 1662, column: 6, scope: !3623)
!3623 = distinct !DILexicalBlock(scope: !3610, file: !274, line: 1661, column: 81)
!3624 = !DILocation(line: 1663, column: 6, scope: !3623)
!3625 = !DILocation(line: 1666, column: 3, scope: !3411)
!3626 = !DILocation(line: 1667, column: 43, scope: !3627)
!3627 = distinct !DILexicalBlock(scope: !3628, file: !274, line: 1667, column: 7)
!3628 = distinct !DILexicalBlock(scope: !3404, file: !274, line: 1666, column: 10)
!3629 = !DILocation(line: 1667, column: 52, scope: !3627)
!3630 = !DILocation(line: 1667, column: 68, scope: !3627)
!3631 = !DILocation(line: 1667, column: 77, scope: !3627)
!3632 = !DILocation(line: 1668, column: 6, scope: !3627)
!3633 = !DILocation(line: 1668, column: 18, scope: !3627)
!3634 = !DILocation(line: 1668, column: 33, scope: !3627)
!3635 = !DILocation(line: 1668, column: 45, scope: !3627)
!3636 = !DILocation(line: 1668, column: 52, scope: !3627)
!3637 = !DILocation(line: 1667, column: 7, scope: !3627)
!3638 = !DILocation(line: 1668, column: 60, scope: !3627)
!3639 = !DILocation(line: 1667, column: 7, scope: !3628)
!3640 = !DILocation(line: 1669, column: 5, scope: !3641)
!3641 = distinct !DILexicalBlock(scope: !3627, file: !274, line: 1668, column: 64)
!3642 = !DILocation(line: 1670, column: 5, scope: !3641)
!3643 = !DILocation(line: 1673, column: 2, scope: !3405)
!3644 = !DILocation(line: 1675, column: 2, scope: !3392)
!3645 = !DILocation(line: 1676, column: 1, scope: !3392)
!3646 = distinct !DISubprogram(name: "check_integrity", scope: !274, file: !274, line: 1678, type: !3393, scopeLine: 1679, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !433)
!3647 = !DILocalVariable(name: "clnet_info", arg: 1, scope: !3646, file: !274, line: 1678, type: !509)
!3648 = !DILocation(line: 1678, column: 39, scope: !3646)
!3649 = !DILocalVariable(name: "message", arg: 2, scope: !3646, file: !274, line: 1678, type: !510)
!3650 = !DILocation(line: 1678, column: 64, scope: !3646)
!3651 = !DILocalVariable(name: "sht", scope: !3646, file: !274, line: 1680, type: !3652)
!3652 = !DIDerivedType(tag: DW_TAG_typedef, name: "SHATYPE", file: !52, line: 169, baseType: !51)
!3653 = !DILocation(line: 1680, column: 10, scope: !3646)
!3654 = !DILocation(line: 1680, column: 16, scope: !3646)
!3655 = !DILocation(line: 1682, column: 5, scope: !3656)
!3656 = distinct !DILexicalBlock(scope: !3646, file: !274, line: 1682, column: 5)
!3657 = !DILocation(line: 1682, column: 11, scope: !3656)
!3658 = !DILocation(line: 1682, column: 14, scope: !3656)
!3659 = !DILocation(line: 1682, column: 26, scope: !3656)
!3660 = !DILocation(line: 1682, column: 5, scope: !3646)
!3661 = !DILocalVariable(name: "pwd", scope: !3662, file: !274, line: 1684, type: !3604)
!3662 = distinct !DILexicalBlock(scope: !3656, file: !274, line: 1682, column: 33)
!3663 = !DILocation(line: 1684, column: 14, scope: !3662)
!3664 = !DILocation(line: 1686, column: 50, scope: !3662)
!3665 = !DILocation(line: 1687, column: 5, scope: !3662)
!3666 = !DILocation(line: 1687, column: 14, scope: !3662)
!3667 = !DILocation(line: 1687, column: 28, scope: !3662)
!3668 = !DILocation(line: 1687, column: 37, scope: !3662)
!3669 = !DILocation(line: 1687, column: 43, scope: !3662)
!3670 = !DILocation(line: 1687, column: 55, scope: !3662)
!3671 = !DILocation(line: 1687, column: 60, scope: !3662)
!3672 = !DILocation(line: 1687, column: 65, scope: !3662)
!3673 = !DILocation(line: 1686, column: 10, scope: !3662)
!3674 = !DILocation(line: 1686, column: 3, scope: !3662)
!3675 = !DILocation(line: 1691, column: 39, scope: !3676)
!3676 = distinct !DILexicalBlock(scope: !3677, file: !274, line: 1691, column: 6)
!3677 = distinct !DILexicalBlock(scope: !3656, file: !274, line: 1689, column: 9)
!3678 = !DILocation(line: 1692, column: 4, scope: !3676)
!3679 = !DILocation(line: 1692, column: 13, scope: !3676)
!3680 = !DILocation(line: 1692, column: 27, scope: !3676)
!3681 = !DILocation(line: 1692, column: 36, scope: !3676)
!3682 = !DILocation(line: 1693, column: 4, scope: !3676)
!3683 = !DILocation(line: 1693, column: 16, scope: !3676)
!3684 = !DILocation(line: 1693, column: 31, scope: !3676)
!3685 = !DILocation(line: 1691, column: 6, scope: !3676)
!3686 = !DILocation(line: 1693, column: 35, scope: !3676)
!3687 = !DILocation(line: 1691, column: 6, scope: !3677)
!3688 = !DILocation(line: 1694, column: 4, scope: !3689)
!3689 = distinct !DILexicalBlock(scope: !3676, file: !274, line: 1693, column: 39)
!3690 = !DILocation(line: 1695, column: 4, scope: !3689)
!3691 = !DILocation(line: 1699, column: 2, scope: !3646)
!3692 = !DILocation(line: 1700, column: 1, scope: !3646)
!3693 = distinct !DISubprogram(name: "get_socket_type", scope: !274, file: !274, line: 1702, type: !3694, scopeLine: 1703, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !433)
!3694 = !DISubroutineType(types: !3695)
!3695 = !{!3696}
!3696 = !DIDerivedType(tag: DW_TAG_typedef, name: "SOCKET_TYPE", file: !62, line: 98, baseType: !61)
!3697 = !DILocation(line: 1704, column: 5, scope: !3698)
!3698 = distinct !DILexicalBlock(scope: !3693, file: !274, line: 1704, column: 5)
!3699 = !DILocation(line: 1704, column: 5, scope: !3693)
!3700 = !DILocation(line: 1705, column: 6, scope: !3701)
!3701 = distinct !DILexicalBlock(scope: !3702, file: !274, line: 1705, column: 6)
!3702 = distinct !DILexicalBlock(scope: !3698, file: !274, line: 1704, column: 15)
!3703 = !DILocation(line: 1705, column: 6, scope: !3702)
!3704 = !DILocation(line: 1706, column: 4, scope: !3705)
!3705 = distinct !DILexicalBlock(scope: !3701, file: !274, line: 1705, column: 18)
!3706 = !DILocation(line: 1708, column: 4, scope: !3707)
!3707 = distinct !DILexicalBlock(scope: !3701, file: !274, line: 1707, column: 10)
!3708 = !DILocation(line: 1710, column: 12, scope: !3709)
!3709 = distinct !DILexicalBlock(scope: !3698, file: !274, line: 1710, column: 12)
!3710 = !DILocation(line: 1710, column: 12, scope: !3698)
!3711 = !DILocation(line: 1711, column: 6, scope: !3712)
!3712 = distinct !DILexicalBlock(scope: !3713, file: !274, line: 1711, column: 6)
!3713 = distinct !DILexicalBlock(scope: !3709, file: !274, line: 1710, column: 21)
!3714 = !DILocation(line: 1711, column: 6, scope: !3713)
!3715 = !DILocation(line: 1712, column: 4, scope: !3716)
!3716 = distinct !DILexicalBlock(scope: !3712, file: !274, line: 1711, column: 18)
!3717 = !DILocation(line: 1714, column: 4, scope: !3718)
!3718 = distinct !DILexicalBlock(scope: !3712, file: !274, line: 1713, column: 10)
!3719 = !DILocation(line: 1717, column: 6, scope: !3720)
!3720 = distinct !DILexicalBlock(scope: !3721, file: !274, line: 1717, column: 6)
!3721 = distinct !DILexicalBlock(scope: !3709, file: !274, line: 1716, column: 9)
!3722 = !DILocation(line: 1717, column: 6, scope: !3721)
!3723 = !DILocation(line: 1718, column: 4, scope: !3724)
!3724 = distinct !DILexicalBlock(scope: !3720, file: !274, line: 1717, column: 18)
!3725 = !DILocation(line: 1720, column: 4, scope: !3726)
!3726 = distinct !DILexicalBlock(scope: !3720, file: !274, line: 1719, column: 10)
!3727 = !DILocation(line: 1723, column: 1, scope: !3693)
!3728 = distinct !DISubprogram(name: "refresh_channel", scope: !274, file: !274, line: 1225, type: !3729, scopeLine: 1226, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !433)
!3729 = !DISubroutineType(types: !3730)
!3730 = !{!53, !85, !116, !123}
!3731 = !DILocalVariable(name: "elem", arg: 1, scope: !3728, file: !274, line: 1225, type: !85)
!3732 = !DILocation(line: 1225, column: 44, scope: !3728)
!3733 = !DILocalVariable(name: "method", arg: 2, scope: !3728, file: !274, line: 1225, type: !116)
!3734 = !DILocation(line: 1225, column: 59, scope: !3728)
!3735 = !DILocalVariable(name: "lt", arg: 3, scope: !3728, file: !274, line: 1225, type: !123)
!3736 = !DILocation(line: 1225, column: 76, scope: !3728)
!3737 = !DILocalVariable(name: "message", scope: !3728, file: !274, line: 1228, type: !215)
!3738 = !DILocation(line: 1228, column: 14, scope: !3728)
!3739 = !DILocalVariable(name: "clnet_info", scope: !3728, file: !274, line: 1229, type: !509)
!3740 = !DILocation(line: 1229, column: 20, scope: !3728)
!3741 = !DILocation(line: 1229, column: 35, scope: !3728)
!3742 = !DILocation(line: 1229, column: 41, scope: !3728)
!3743 = !DILocation(line: 1231, column: 5, scope: !3744)
!3744 = distinct !DILexicalBlock(scope: !3728, file: !274, line: 1231, column: 5)
!3745 = !DILocation(line: 1231, column: 17, scope: !3744)
!3746 = !DILocation(line: 1231, column: 5, scope: !3728)
!3747 = !DILocation(line: 1232, column: 3, scope: !3744)
!3748 = !DILocation(line: 1234, column: 7, scope: !3749)
!3749 = distinct !DILexicalBlock(scope: !3728, file: !274, line: 1234, column: 6)
!3750 = !DILocation(line: 1234, column: 14, scope: !3749)
!3751 = !DILocation(line: 1234, column: 18, scope: !3749)
!3752 = !DILocation(line: 1234, column: 25, scope: !3749)
!3753 = !DILocation(line: 1234, column: 6, scope: !3728)
!3754 = !DILocation(line: 1235, column: 3, scope: !3755)
!3755 = distinct !DILexicalBlock(scope: !3749, file: !274, line: 1234, column: 50)
!3756 = !DILocation(line: 1236, column: 14, scope: !3755)
!3757 = !DILocation(line: 1236, column: 8, scope: !3755)
!3758 = !DILocation(line: 1236, column: 6, scope: !3755)
!3759 = !DILocation(line: 1237, column: 3, scope: !3755)
!3760 = !DILocation(line: 1239, column: 6, scope: !3761)
!3761 = distinct !DILexicalBlock(scope: !3755, file: !274, line: 1239, column: 6)
!3762 = !DILocation(line: 1239, column: 22, scope: !3761)
!3763 = !DILocation(line: 1239, column: 26, scope: !3761)
!3764 = !DILocation(line: 1239, column: 6, scope: !3755)
!3765 = !DILocalVariable(name: "t", scope: !3766, file: !274, line: 1240, type: !53)
!3766 = distinct !DILexicalBlock(scope: !3761, file: !274, line: 1239, column: 36)
!3767 = !DILocation(line: 1240, column: 8, scope: !3766)
!3768 = !DILocation(line: 1240, column: 22, scope: !3766)
!3769 = !DILocation(line: 1240, column: 13, scope: !3766)
!3770 = !DILocation(line: 1240, column: 12, scope: !3766)
!3771 = !DILocation(line: 1240, column: 31, scope: !3766)
!3772 = !DILocation(line: 1241, column: 7, scope: !3773)
!3773 = distinct !DILexicalBlock(scope: !3766, file: !274, line: 1241, column: 7)
!3774 = !DILocation(line: 1241, column: 7, scope: !3766)
!3775 = !DILocalVariable(name: "field", scope: !3776, file: !274, line: 1242, type: !220)
!3776 = distinct !DILexicalBlock(scope: !3773, file: !274, line: 1241, column: 10)
!3777 = !DILocation(line: 1242, column: 13, scope: !3776)
!3778 = !DILocation(line: 1243, column: 17, scope: !3776)
!3779 = !DILocation(line: 1243, column: 18, scope: !3776)
!3780 = !DILocation(line: 1243, column: 16, scope: !3776)
!3781 = !DILocation(line: 1243, column: 5, scope: !3776)
!3782 = !DILocation(line: 1243, column: 14, scope: !3776)
!3783 = !DILocation(line: 1244, column: 5, scope: !3776)
!3784 = !DILocation(line: 1244, column: 13, scope: !3776)
!3785 = !DILocation(line: 1245, column: 5, scope: !3776)
!3786 = !DILocation(line: 1245, column: 13, scope: !3776)
!3787 = !DILocation(line: 1246, column: 5, scope: !3776)
!3788 = !DILocation(line: 1246, column: 13, scope: !3776)
!3789 = !DILocation(line: 1247, column: 84, scope: !3776)
!3790 = !DILocation(line: 1247, column: 5, scope: !3776)
!3791 = !DILocation(line: 1248, column: 4, scope: !3776)
!3792 = !DILocation(line: 1249, column: 3, scope: !3766)
!3793 = !DILocation(line: 1251, column: 3, scope: !3755)
!3794 = !DILocation(line: 1252, column: 20, scope: !3795)
!3795 = distinct !DILexicalBlock(scope: !3755, file: !274, line: 1252, column: 6)
!3796 = !DILocation(line: 1252, column: 6, scope: !3795)
!3797 = !DILocation(line: 1252, column: 41, scope: !3795)
!3798 = !DILocation(line: 1252, column: 6, scope: !3755)
!3799 = !DILocation(line: 1252, column: 45, scope: !3795)
!3800 = !DILocation(line: 1253, column: 6, scope: !3801)
!3801 = distinct !DILexicalBlock(scope: !3755, file: !274, line: 1253, column: 6)
!3802 = !DILocation(line: 1253, column: 6, scope: !3755)
!3803 = !DILocation(line: 1254, column: 46, scope: !3801)
!3804 = !DILocation(line: 1254, column: 38, scope: !3801)
!3805 = !DILocation(line: 1254, column: 71, scope: !3801)
!3806 = !DILocation(line: 1254, column: 8, scope: !3801)
!3807 = !DILocation(line: 1255, column: 15, scope: !3755)
!3808 = !DILocation(line: 1255, column: 3, scope: !3755)
!3809 = !DILocation(line: 1256, column: 2, scope: !3755)
!3810 = !DILocation(line: 1258, column: 6, scope: !3811)
!3811 = distinct !DILexicalBlock(scope: !3728, file: !274, line: 1258, column: 6)
!3812 = !DILocation(line: 1258, column: 9, scope: !3811)
!3813 = !DILocation(line: 1258, column: 24, scope: !3811)
!3814 = !DILocation(line: 1258, column: 30, scope: !3811)
!3815 = !DILocation(line: 1258, column: 36, scope: !3811)
!3816 = !DILocation(line: 1258, column: 13, scope: !3811)
!3817 = !DILocation(line: 1258, column: 6, scope: !3728)
!3818 = !DILocation(line: 1260, column: 7, scope: !3819)
!3819 = distinct !DILexicalBlock(scope: !3820, file: !274, line: 1260, column: 6)
!3820 = distinct !DILexicalBlock(scope: !3811, file: !274, line: 1258, column: 49)
!3821 = !DILocation(line: 1260, column: 6, scope: !3820)
!3822 = !DILocation(line: 1261, column: 9, scope: !3823)
!3823 = distinct !DILexicalBlock(scope: !3824, file: !274, line: 1261, column: 8)
!3824 = distinct !DILexicalBlock(scope: !3819, file: !274, line: 1260, column: 23)
!3825 = !DILocation(line: 1261, column: 16, scope: !3823)
!3826 = !DILocation(line: 1261, column: 20, scope: !3823)
!3827 = !DILocation(line: 1261, column: 27, scope: !3823)
!3828 = !DILocation(line: 1261, column: 8, scope: !3824)
!3829 = !DILocation(line: 1262, column: 5, scope: !3830)
!3830 = distinct !DILexicalBlock(scope: !3823, file: !274, line: 1261, column: 62)
!3831 = !DILocation(line: 1263, column: 69, scope: !3830)
!3832 = !DILocation(line: 1263, column: 75, scope: !3830)
!3833 = !DILocation(line: 1263, column: 81, scope: !3830)
!3834 = !DILocation(line: 1263, column: 5, scope: !3830)
!3835 = !DILocation(line: 1264, column: 5, scope: !3830)
!3836 = !DILocation(line: 1265, column: 22, scope: !3837)
!3837 = distinct !DILexicalBlock(scope: !3830, file: !274, line: 1265, column: 8)
!3838 = !DILocation(line: 1265, column: 8, scope: !3837)
!3839 = !DILocation(line: 1265, column: 43, scope: !3837)
!3840 = !DILocation(line: 1265, column: 8, scope: !3830)
!3841 = !DILocation(line: 1265, column: 47, scope: !3837)
!3842 = !DILocation(line: 1266, column: 8, scope: !3843)
!3843 = distinct !DILexicalBlock(scope: !3830, file: !274, line: 1266, column: 8)
!3844 = !DILocation(line: 1266, column: 8, scope: !3830)
!3845 = !DILocation(line: 1267, column: 47, scope: !3843)
!3846 = !DILocation(line: 1267, column: 39, scope: !3843)
!3847 = !DILocation(line: 1267, column: 72, scope: !3843)
!3848 = !DILocation(line: 1267, column: 9, scope: !3843)
!3849 = !DILocation(line: 1268, column: 19, scope: !3830)
!3850 = !DILocation(line: 1268, column: 25, scope: !3830)
!3851 = !DILocation(line: 1268, column: 5, scope: !3830)
!3852 = !DILocation(line: 1269, column: 4, scope: !3830)
!3853 = !DILocation(line: 1270, column: 3, scope: !3824)
!3854 = !DILocation(line: 1272, column: 8, scope: !3855)
!3855 = distinct !DILexicalBlock(scope: !3820, file: !274, line: 1272, column: 7)
!3856 = !DILocation(line: 1272, column: 15, scope: !3855)
!3857 = !DILocation(line: 1272, column: 19, scope: !3855)
!3858 = !DILocation(line: 1272, column: 26, scope: !3855)
!3859 = !DILocation(line: 1272, column: 7, scope: !3820)
!3860 = !DILocation(line: 1273, column: 8, scope: !3861)
!3861 = distinct !DILexicalBlock(scope: !3862, file: !274, line: 1273, column: 8)
!3862 = distinct !DILexicalBlock(scope: !3855, file: !274, line: 1272, column: 56)
!3863 = !DILocation(line: 1273, column: 8, scope: !3862)
!3864 = !DILocation(line: 1274, column: 47, scope: !3865)
!3865 = distinct !DILexicalBlock(scope: !3861, file: !274, line: 1273, column: 41)
!3866 = !DILocation(line: 1274, column: 53, scope: !3865)
!3867 = !DILocation(line: 1274, column: 59, scope: !3865)
!3868 = !DILocation(line: 1274, column: 71, scope: !3865)
!3869 = !DILocation(line: 1274, column: 77, scope: !3865)
!3870 = !DILocation(line: 1274, column: 5, scope: !3865)
!3871 = !DILocation(line: 1275, column: 5, scope: !3865)
!3872 = !DILocation(line: 1276, column: 22, scope: !3873)
!3873 = distinct !DILexicalBlock(scope: !3865, file: !274, line: 1276, column: 8)
!3874 = !DILocation(line: 1276, column: 8, scope: !3873)
!3875 = !DILocation(line: 1276, column: 43, scope: !3873)
!3876 = !DILocation(line: 1276, column: 8, scope: !3865)
!3877 = !DILocation(line: 1276, column: 47, scope: !3873)
!3878 = !DILocation(line: 1277, column: 8, scope: !3879)
!3879 = distinct !DILexicalBlock(scope: !3865, file: !274, line: 1277, column: 8)
!3880 = !DILocation(line: 1277, column: 8, scope: !3865)
!3881 = !DILocation(line: 1278, column: 48, scope: !3879)
!3882 = !DILocation(line: 1278, column: 40, scope: !3879)
!3883 = !DILocation(line: 1278, column: 73, scope: !3879)
!3884 = !DILocation(line: 1278, column: 10, scope: !3879)
!3885 = !DILocation(line: 1279, column: 19, scope: !3865)
!3886 = !DILocation(line: 1279, column: 25, scope: !3865)
!3887 = !DILocation(line: 1279, column: 5, scope: !3865)
!3888 = !DILocation(line: 1280, column: 4, scope: !3865)
!3889 = !DILocation(line: 1281, column: 3, scope: !3862)
!3890 = !DILocation(line: 1282, column: 2, scope: !3820)
!3891 = !DILocation(line: 1284, column: 23, scope: !3728)
!3892 = !DILocation(line: 1284, column: 38, scope: !3728)
!3893 = !DILocation(line: 1284, column: 2, scope: !3728)
!3894 = !DILocation(line: 1284, column: 8, scope: !3728)
!3895 = !DILocation(line: 1284, column: 21, scope: !3728)
!3896 = !DILocation(line: 1286, column: 2, scope: !3728)
!3897 = !DILocation(line: 1287, column: 1, scope: !3728)
!3898 = distinct !DISubprogram(name: "time_minus", scope: !274, file: !274, line: 77, type: !3899, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !433)
!3899 = !DISubroutineType(types: !3900)
!3900 = !{!260, !239, !239}
!3901 = !DILocalVariable(name: "t1", arg: 1, scope: !3898, file: !274, line: 77, type: !239)
!3902 = !DILocation(line: 77, column: 43, scope: !3898)
!3903 = !DILocalVariable(name: "t2", arg: 2, scope: !3898, file: !274, line: 77, type: !239)
!3904 = !DILocation(line: 77, column: 56, scope: !3898)
!3905 = !DILocation(line: 78, column: 20, scope: !3898)
!3906 = !DILocation(line: 78, column: 34, scope: !3898)
!3907 = !DILocation(line: 78, column: 23, scope: !3898)
!3908 = !DILocation(line: 78, column: 2, scope: !3898)
!3909 = distinct !DISubprogram(name: "create_new_ss", scope: !274, file: !274, line: 125, type: !3910, scopeLine: 126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !433)
!3910 = !DISubroutineType(types: !3911)
!3911 = !{!85}
!3912 = !DILocation(line: 127, column: 2, scope: !3909)
!3913 = !DILocation(line: 128, column: 44, scope: !3909)
!3914 = !DILocation(line: 128, column: 9, scope: !3909)
!3915 = !DILocation(line: 128, column: 2, scope: !3909)
!3916 = distinct !DISubprogram(name: "init_app_session", scope: !274, file: !274, line: 117, type: !3917, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !433)
!3917 = !DISubroutineType(types: !3918)
!3918 = !{!85, !85}
!3919 = !DILocalVariable(name: "ss", arg: 1, scope: !3916, file: !274, line: 117, type: !85)
!3920 = !DILocation(line: 117, column: 57, scope: !3916)
!3921 = !DILocation(line: 118, column: 6, scope: !3922)
!3922 = distinct !DILexicalBlock(scope: !3916, file: !274, line: 118, column: 6)
!3923 = !DILocation(line: 118, column: 6, scope: !3916)
!3924 = !DILocation(line: 119, column: 11, scope: !3925)
!3925 = distinct !DILexicalBlock(scope: !3922, file: !274, line: 118, column: 10)
!3926 = !DILocation(line: 119, column: 5, scope: !3925)
!3927 = !DILocation(line: 120, column: 5, scope: !3925)
!3928 = !DILocation(line: 120, column: 9, scope: !3925)
!3929 = !DILocation(line: 120, column: 15, scope: !3925)
!3930 = !DILocation(line: 120, column: 17, scope: !3925)
!3931 = !DILocation(line: 121, column: 3, scope: !3925)
!3932 = !DILocation(line: 122, column: 10, scope: !3916)
!3933 = !DILocation(line: 122, column: 3, scope: !3916)
!3934 = distinct !DISubprogram(name: "client_timer_handler", scope: !274, file: !274, line: 1289, type: !3935, scopeLine: 1290, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !433)
!3935 = !DISubroutineType(types: !3936)
!3936 = !{!53, !85, !3937}
!3937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!3938 = !DILocalVariable(name: "elem", arg: 1, scope: !3934, file: !274, line: 1289, type: !85)
!3939 = !DILocation(line: 1289, column: 56, scope: !3934)
!3940 = !DILocalVariable(name: "done", arg: 2, scope: !3934, file: !274, line: 1289, type: !3937)
!3941 = !DILocation(line: 1289, column: 67, scope: !3934)
!3942 = !DILocation(line: 1291, column: 6, scope: !3943)
!3943 = distinct !DILexicalBlock(scope: !3934, file: !274, line: 1291, column: 6)
!3944 = !DILocation(line: 1291, column: 6, scope: !3934)
!3945 = !DILocation(line: 1292, column: 8, scope: !3946)
!3946 = distinct !DILexicalBlock(scope: !3947, file: !274, line: 1292, column: 7)
!3947 = distinct !DILexicalBlock(scope: !3943, file: !274, line: 1291, column: 12)
!3948 = !DILocation(line: 1292, column: 7, scope: !3947)
!3949 = !DILocation(line: 1293, column: 20, scope: !3950)
!3950 = distinct !DILexicalBlock(scope: !3946, file: !274, line: 1292, column: 62)
!3951 = !DILocation(line: 1293, column: 4, scope: !3950)
!3952 = !DILocation(line: 1294, column: 3, scope: !3950)
!3953 = !DILocation(line: 1296, column: 6, scope: !3954)
!3954 = distinct !DILexicalBlock(scope: !3947, file: !274, line: 1296, column: 6)
!3955 = !DILocation(line: 1296, column: 14, scope: !3954)
!3956 = !DILocation(line: 1296, column: 17, scope: !3954)
!3957 = !DILocation(line: 1296, column: 23, scope: !3954)
!3958 = !DILocation(line: 1296, column: 6, scope: !3947)
!3959 = !DILocation(line: 1297, column: 4, scope: !3954)
!3960 = !DILocalVariable(name: "max_num", scope: !3947, file: !274, line: 1299, type: !53)
!3961 = !DILocation(line: 1299, column: 7, scope: !3947)
!3962 = !DILocalVariable(name: "cur_num", scope: !3947, file: !274, line: 1300, type: !53)
!3963 = !DILocation(line: 1300, column: 7, scope: !3947)
!3964 = !DILocation(line: 1302, column: 3, scope: !3947)
!3965 = !DILocation(line: 1302, column: 11, scope: !3947)
!3966 = !DILocation(line: 1302, column: 10, scope: !3947)
!3967 = !DILocation(line: 1303, column: 15, scope: !3968)
!3968 = distinct !DILexicalBlock(scope: !3969, file: !274, line: 1303, column: 8)
!3969 = distinct !DILexicalBlock(scope: !3947, file: !274, line: 1302, column: 67)
!3970 = !DILocation(line: 1303, column: 19, scope: !3968)
!3971 = !DILocation(line: 1303, column: 17, scope: !3968)
!3972 = !DILocation(line: 1303, column: 8, scope: !3969)
!3973 = !DILocation(line: 1304, column: 7, scope: !3968)
!3974 = !DILocation(line: 1305, column: 8, scope: !3975)
!3975 = distinct !DILexicalBlock(scope: !3969, file: !274, line: 1305, column: 8)
!3976 = !DILocation(line: 1305, column: 14, scope: !3975)
!3977 = !DILocation(line: 1305, column: 25, scope: !3975)
!3978 = !DILocation(line: 1305, column: 31, scope: !3975)
!3979 = !DILocation(line: 1305, column: 22, scope: !3975)
!3980 = !DILocation(line: 1305, column: 8, scope: !3969)
!3981 = !DILocation(line: 1306, column: 10, scope: !3982)
!3982 = distinct !DILexicalBlock(scope: !3983, file: !274, line: 1306, column: 9)
!3983 = distinct !DILexicalBlock(scope: !3975, file: !274, line: 1305, column: 43)
!3984 = !DILocation(line: 1306, column: 64, scope: !3982)
!3985 = !DILocation(line: 1307, column: 7, scope: !3982)
!3986 = !DILocation(line: 1307, column: 26, scope: !3982)
!3987 = !DILocation(line: 1307, column: 24, scope: !3982)
!3988 = !DILocation(line: 1306, column: 9, scope: !3983)
!3989 = !DILocation(line: 1317, column: 20, scope: !3990)
!3990 = distinct !DILexicalBlock(scope: !3982, file: !274, line: 1307, column: 41)
!3991 = !DILocation(line: 1317, column: 26, scope: !3990)
!3992 = !DILocation(line: 1317, column: 17, scope: !3990)
!3993 = !DILocation(line: 1318, column: 6, scope: !3990)
!3994 = !DILocation(line: 1318, column: 12, scope: !3990)
!3995 = !DILocation(line: 1318, column: 16, scope: !3990)
!3996 = !DILocation(line: 1319, column: 23, scope: !3990)
!3997 = !DILocation(line: 1319, column: 29, scope: !3990)
!3998 = !DILocation(line: 1319, column: 20, scope: !3990)
!3999 = !DILocation(line: 1320, column: 6, scope: !3990)
!4000 = !DILocation(line: 1320, column: 12, scope: !3990)
!4001 = !DILocation(line: 1320, column: 19, scope: !3990)
!4002 = !DILocation(line: 1321, column: 22, scope: !3990)
!4003 = !DILocation(line: 1321, column: 28, scope: !3990)
!4004 = !DILocation(line: 1321, column: 19, scope: !3990)
!4005 = !DILocation(line: 1322, column: 6, scope: !3990)
!4006 = !DILocation(line: 1322, column: 12, scope: !3990)
!4007 = !DILocation(line: 1322, column: 18, scope: !3990)
!4008 = !DILocation(line: 1323, column: 6, scope: !3990)
!4009 = !DILocation(line: 1323, column: 12, scope: !3990)
!4010 = !DILocation(line: 1323, column: 22, scope: !3990)
!4011 = !DILocation(line: 1324, column: 11, scope: !4012)
!4012 = distinct !DILexicalBlock(scope: !3990, file: !274, line: 1324, column: 10)
!4013 = !DILocation(line: 1324, column: 10, scope: !3990)
!4014 = !DILocation(line: 1325, column: 23, scope: !4015)
!4015 = distinct !DILexicalBlock(scope: !4012, file: !274, line: 1324, column: 20)
!4016 = !DILocation(line: 1325, column: 7, scope: !4015)
!4017 = !DILocation(line: 1326, column: 23, scope: !4015)
!4018 = !DILocation(line: 1326, column: 7, scope: !4015)
!4019 = !DILocation(line: 1327, column: 7, scope: !4015)
!4020 = !DILocation(line: 1329, column: 7, scope: !4021)
!4021 = distinct !DILexicalBlock(scope: !4012, file: !274, line: 1328, column: 13)
!4022 = !DILocation(line: 1332, column: 4, scope: !3983)
!4023 = !DILocation(line: 1333, column: 6, scope: !4024)
!4024 = distinct !DILexicalBlock(scope: !3975, file: !274, line: 1332, column: 11)
!4025 = !DILocation(line: 1333, column: 11, scope: !4024)
!4026 = !DILocation(line: 1334, column: 18, scope: !4024)
!4027 = !DILocation(line: 1334, column: 5, scope: !4024)
!4028 = !DILocation(line: 1335, column: 27, scope: !4024)
!4029 = !DILocation(line: 1335, column: 42, scope: !4024)
!4030 = !DILocation(line: 1335, column: 5, scope: !4024)
!4031 = !DILocation(line: 1335, column: 11, scope: !4024)
!4032 = !DILocation(line: 1335, column: 25, scope: !4024)
!4033 = distinct !{!4033, !3964, !4034, !571}
!4034 = !DILocation(line: 1337, column: 3, scope: !3947)
!4035 = !DILocation(line: 1338, column: 2, scope: !3947)
!4036 = !DILocation(line: 1340, column: 2, scope: !3934)
!4037 = !DILocation(line: 1341, column: 1, scope: !3934)
!4038 = distinct !DISubprogram(name: "client_shutdown", scope: !274, file: !274, line: 846, type: !4039, scopeLine: 846, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !433)
!4039 = !DISubroutineType(types: !4040)
!4040 = !{!53, !85}
!4041 = !DILocalVariable(name: "elem", arg: 1, scope: !4038, file: !274, line: 846, type: !85)
!4042 = !DILocation(line: 846, column: 44, scope: !4038)
!4043 = !DILocation(line: 848, column: 7, scope: !4044)
!4044 = distinct !DILexicalBlock(scope: !4038, file: !274, line: 848, column: 6)
!4045 = !DILocation(line: 848, column: 6, scope: !4038)
!4046 = !DILocation(line: 848, column: 13, scope: !4044)
!4047 = !DILocation(line: 850, column: 3, scope: !4038)
!4048 = !DILocation(line: 850, column: 9, scope: !4038)
!4049 = !DILocation(line: 850, column: 14, scope: !4038)
!4050 = !DILocation(line: 852, column: 15, scope: !4038)
!4051 = !DILocation(line: 852, column: 3, scope: !4038)
!4052 = !DILocation(line: 852, column: 9, scope: !4038)
!4053 = !DILocation(line: 852, column: 14, scope: !4038)
!4054 = !DILocation(line: 854, column: 22, scope: !4038)
!4055 = !DILocation(line: 854, column: 3, scope: !4038)
!4056 = !DILocation(line: 856, column: 7, scope: !4057)
!4057 = distinct !DILexicalBlock(scope: !4038, file: !274, line: 856, column: 7)
!4058 = !DILocation(line: 856, column: 7, scope: !4038)
!4059 = !DILocation(line: 857, column: 80, scope: !4057)
!4060 = !DILocation(line: 857, column: 74, scope: !4057)
!4061 = !DILocation(line: 857, column: 5, scope: !4057)
!4062 = !DILocation(line: 859, column: 3, scope: !4038)
!4063 = !DILocation(line: 860, column: 1, scope: !4038)
!4064 = distinct !DISubprogram(name: "client_write", scope: !274, file: !274, line: 862, type: !4039, scopeLine: 862, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !433)
!4065 = !DILocalVariable(name: "elem", arg: 1, scope: !4064, file: !274, line: 862, type: !85)
!4066 = !DILocation(line: 862, column: 41, scope: !4064)
!4067 = !DILocation(line: 864, column: 7, scope: !4068)
!4068 = distinct !DILexicalBlock(scope: !4064, file: !274, line: 864, column: 6)
!4069 = !DILocation(line: 864, column: 6, scope: !4064)
!4070 = !DILocation(line: 864, column: 13, scope: !4068)
!4071 = !DILocation(line: 866, column: 6, scope: !4072)
!4072 = distinct !DILexicalBlock(scope: !4064, file: !274, line: 866, column: 6)
!4073 = !DILocation(line: 866, column: 12, scope: !4072)
!4074 = !DILocation(line: 866, column: 17, scope: !4072)
!4075 = !DILocation(line: 866, column: 6, scope: !4064)
!4076 = !DILocation(line: 866, column: 35, scope: !4072)
!4077 = !DILocation(line: 868, column: 15, scope: !4064)
!4078 = !DILocation(line: 868, column: 3, scope: !4064)
!4079 = !DILocation(line: 868, column: 9, scope: !4064)
!4080 = !DILocation(line: 868, column: 14, scope: !4064)
!4081 = !DILocalVariable(name: "mi", scope: !4064, file: !274, line: 870, type: !265)
!4082 = !DILocation(line: 870, column: 17, scope: !4064)
!4083 = !DILocation(line: 871, column: 14, scope: !4064)
!4084 = !DILocation(line: 871, column: 20, scope: !4064)
!4085 = !DILocation(line: 871, column: 3, scope: !4064)
!4086 = !DILocation(line: 871, column: 7, scope: !4064)
!4087 = !DILocation(line: 871, column: 13, scope: !4064)
!4088 = !DILocation(line: 872, column: 14, scope: !4064)
!4089 = !DILocation(line: 872, column: 3, scope: !4064)
!4090 = !DILocation(line: 872, column: 7, scope: !4064)
!4091 = !DILocation(line: 872, column: 13, scope: !4064)
!4092 = !DILocalVariable(name: "atc", scope: !4064, file: !274, line: 873, type: !187)
!4093 = !DILocation(line: 873, column: 22, scope: !4064)
!4094 = !DILocation(line: 875, column: 7, scope: !4095)
!4095 = distinct !DILexicalBlock(scope: !4064, file: !274, line: 875, column: 7)
!4096 = !DILocation(line: 875, column: 7, scope: !4064)
!4097 = !DILocation(line: 877, column: 11, scope: !4098)
!4098 = distinct !DILexicalBlock(scope: !4095, file: !274, line: 875, column: 23)
!4099 = !DILocation(line: 877, column: 17, scope: !4098)
!4100 = !DILocation(line: 877, column: 28, scope: !4098)
!4101 = !DILocation(line: 877, column: 4, scope: !4098)
!4102 = !DILocation(line: 877, column: 49, scope: !4098)
!4103 = !DILocation(line: 878, column: 27, scope: !4098)
!4104 = !DILocation(line: 878, column: 4, scope: !4098)
!4105 = !DILocation(line: 878, column: 10, scope: !4098)
!4106 = !DILocation(line: 878, column: 21, scope: !4098)
!4107 = !DILocation(line: 878, column: 25, scope: !4098)
!4108 = !DILocation(line: 880, column: 7, scope: !4109)
!4109 = distinct !DILexicalBlock(scope: !4098, file: !274, line: 880, column: 7)
!4110 = !DILocation(line: 880, column: 13, scope: !4109)
!4111 = !DILocation(line: 880, column: 19, scope: !4109)
!4112 = !DILocation(line: 880, column: 7, scope: !4098)
!4113 = !DILocation(line: 881, column: 13, scope: !4114)
!4114 = distinct !DILexicalBlock(scope: !4115, file: !274, line: 881, column: 8)
!4115 = distinct !DILexicalBlock(scope: !4109, file: !274, line: 880, column: 28)
!4116 = !DILocation(line: 881, column: 19, scope: !4114)
!4117 = !DILocation(line: 881, column: 25, scope: !4114)
!4118 = !DILocation(line: 881, column: 29, scope: !4114)
!4119 = !DILocation(line: 881, column: 35, scope: !4114)
!4120 = !DILocation(line: 881, column: 46, scope: !4114)
!4121 = !DILocation(line: 881, column: 51, scope: !4114)
!4122 = !DILocation(line: 881, column: 8, scope: !4114)
!4123 = !DILocation(line: 881, column: 71, scope: !4114)
!4124 = !DILocation(line: 881, column: 8, scope: !4115)
!4125 = !DILocation(line: 882, column: 8, scope: !4126)
!4126 = distinct !DILexicalBlock(scope: !4114, file: !274, line: 881, column: 76)
!4127 = !DILocation(line: 882, column: 14, scope: !4126)
!4128 = !DILocation(line: 882, column: 6, scope: !4126)
!4129 = !DILocation(line: 883, column: 30, scope: !4126)
!4130 = !DILocation(line: 883, column: 6, scope: !4126)
!4131 = !DILocation(line: 883, column: 12, scope: !4126)
!4132 = !DILocation(line: 883, column: 27, scope: !4126)
!4133 = !DILocation(line: 884, column: 23, scope: !4126)
!4134 = !DILocation(line: 885, column: 24, scope: !4126)
!4135 = !DILocation(line: 885, column: 21, scope: !4126)
!4136 = !DILocation(line: 886, column: 5, scope: !4126)
!4137 = !DILocation(line: 887, column: 5, scope: !4115)
!4138 = !DILocation(line: 890, column: 8, scope: !4139)
!4139 = distinct !DILexicalBlock(scope: !4098, file: !274, line: 890, column: 6)
!4140 = !DILocation(line: 890, column: 14, scope: !4139)
!4141 = !DILocation(line: 890, column: 20, scope: !4139)
!4142 = !DILocation(line: 890, column: 7, scope: !4139)
!4143 = !DILocation(line: 890, column: 30, scope: !4139)
!4144 = !DILocation(line: 890, column: 35, scope: !4139)
!4145 = !DILocation(line: 890, column: 41, scope: !4139)
!4146 = !DILocation(line: 890, column: 47, scope: !4139)
!4147 = !DILocation(line: 890, column: 34, scope: !4139)
!4148 = !DILocation(line: 890, column: 6, scope: !4098)
!4149 = !DILocation(line: 891, column: 3, scope: !4150)
!4150 = distinct !DILexicalBlock(scope: !4139, file: !274, line: 890, column: 65)
!4151 = !DILocalVariable(name: "i", scope: !4098, file: !274, line: 893, type: !53)
!4152 = !DILocation(line: 893, column: 6, scope: !4098)
!4153 = !DILocation(line: 893, column: 25, scope: !4098)
!4154 = !DILocation(line: 893, column: 10, scope: !4098)
!4155 = !DILocation(line: 893, column: 37, scope: !4098)
!4156 = !DILocation(line: 893, column: 43, scope: !4098)
!4157 = !DILocation(line: 893, column: 49, scope: !4098)
!4158 = !DILocation(line: 893, column: 35, scope: !4098)
!4159 = !DILocation(line: 894, column: 8, scope: !4098)
!4160 = !DILocation(line: 894, column: 14, scope: !4098)
!4161 = !DILocation(line: 894, column: 20, scope: !4098)
!4162 = !DILocation(line: 894, column: 29, scope: !4098)
!4163 = !DILocation(line: 894, column: 6, scope: !4098)
!4164 = !DILocation(line: 895, column: 6, scope: !4165)
!4165 = distinct !DILexicalBlock(scope: !4098, file: !274, line: 895, column: 5)
!4166 = !DILocation(line: 895, column: 11, scope: !4165)
!4167 = !DILocation(line: 895, column: 5, scope: !4098)
!4168 = !DILocation(line: 896, column: 66, scope: !4169)
!4169 = distinct !DILexicalBlock(scope: !4165, file: !274, line: 895, column: 27)
!4170 = !DILocation(line: 896, column: 74, scope: !4169)
!4171 = !DILocation(line: 896, column: 68, scope: !4169)
!4172 = !DILocation(line: 896, column: 3, scope: !4169)
!4173 = !DILocation(line: 897, column: 3, scope: !4169)
!4174 = !DILocation(line: 899, column: 3, scope: !4098)
!4175 = !DILocation(line: 899, column: 14, scope: !4176)
!4176 = distinct !DILexicalBlock(scope: !4095, file: !274, line: 899, column: 13)
!4177 = !DILocation(line: 899, column: 13, scope: !4095)
!4178 = !DILocation(line: 901, column: 31, scope: !4179)
!4179 = distinct !DILexicalBlock(scope: !4176, file: !274, line: 899, column: 34)
!4180 = !DILocation(line: 901, column: 37, scope: !4179)
!4181 = !DILocation(line: 901, column: 46, scope: !4179)
!4182 = !DILocation(line: 901, column: 52, scope: !4179)
!4183 = !DILocation(line: 901, column: 65, scope: !4179)
!4184 = !DILocation(line: 901, column: 83, scope: !4179)
!4185 = !DILocation(line: 901, column: 109, scope: !4179)
!4186 = !DILocation(line: 901, column: 112, scope: !4179)
!4187 = !DILocation(line: 901, column: 5, scope: !4179)
!4188 = !DILocation(line: 902, column: 12, scope: !4179)
!4189 = !DILocation(line: 902, column: 18, scope: !4179)
!4190 = !DILocation(line: 902, column: 29, scope: !4179)
!4191 = !DILocation(line: 902, column: 32, scope: !4179)
!4192 = !DILocation(line: 902, column: 50, scope: !4179)
!4193 = !DILocation(line: 902, column: 5, scope: !4179)
!4194 = !DILocation(line: 903, column: 3, scope: !4179)
!4195 = !DILocation(line: 904, column: 46, scope: !4196)
!4196 = distinct !DILexicalBlock(scope: !4176, file: !274, line: 903, column: 10)
!4197 = !DILocation(line: 904, column: 52, scope: !4196)
!4198 = !DILocation(line: 904, column: 5, scope: !4196)
!4199 = !DILocation(line: 905, column: 21, scope: !4196)
!4200 = !DILocation(line: 905, column: 27, scope: !4196)
!4201 = !DILocation(line: 905, column: 77, scope: !4196)
!4202 = !DILocation(line: 905, column: 5, scope: !4196)
!4203 = !DILocation(line: 906, column: 26, scope: !4196)
!4204 = !DILocation(line: 906, column: 32, scope: !4196)
!4205 = !DILocation(line: 906, column: 79, scope: !4196)
!4206 = !DILocation(line: 906, column: 85, scope: !4196)
!4207 = !DILocation(line: 906, column: 91, scope: !4196)
!4208 = !DILocation(line: 906, column: 5, scope: !4196)
!4209 = !DILocation(line: 907, column: 8, scope: !4210)
!4210 = distinct !DILexicalBlock(scope: !4196, file: !274, line: 907, column: 8)
!4211 = !DILocation(line: 907, column: 8, scope: !4196)
!4212 = !DILocation(line: 908, column: 22, scope: !4210)
!4213 = !DILocation(line: 908, column: 28, scope: !4210)
!4214 = !DILocation(line: 908, column: 6, scope: !4210)
!4215 = !DILocation(line: 910, column: 8, scope: !4216)
!4216 = distinct !DILexicalBlock(scope: !4196, file: !274, line: 910, column: 8)
!4217 = !DILocation(line: 910, column: 8, scope: !4196)
!4218 = !DILocation(line: 911, column: 36, scope: !4216)
!4219 = !DILocation(line: 911, column: 42, scope: !4216)
!4220 = !DILocation(line: 911, column: 53, scope: !4216)
!4221 = !DILocation(line: 911, column: 68, scope: !4216)
!4222 = !DILocation(line: 911, column: 74, scope: !4216)
!4223 = !DILocation(line: 911, column: 85, scope: !4216)
!4224 = !DILocation(line: 911, column: 6, scope: !4216)
!4225 = !DILocation(line: 914, column: 7, scope: !4226)
!4226 = distinct !DILexicalBlock(scope: !4064, file: !274, line: 914, column: 7)
!4227 = !DILocation(line: 914, column: 13, scope: !4226)
!4228 = !DILocation(line: 914, column: 24, scope: !4226)
!4229 = !DILocation(line: 914, column: 28, scope: !4226)
!4230 = !DILocation(line: 914, column: 7, scope: !4064)
!4231 = !DILocation(line: 916, column: 9, scope: !4232)
!4232 = distinct !DILexicalBlock(scope: !4233, file: !274, line: 916, column: 9)
!4233 = distinct !DILexicalBlock(scope: !4226, file: !274, line: 914, column: 33)
!4234 = !DILocation(line: 916, column: 23, scope: !4232)
!4235 = !DILocation(line: 916, column: 26, scope: !4232)
!4236 = !DILocation(line: 916, column: 9, scope: !4233)
!4237 = !DILocation(line: 917, column: 3, scope: !4238)
!4238 = distinct !DILexicalBlock(scope: !4232, file: !274, line: 916, column: 43)
!4239 = !DILocation(line: 918, column: 5, scope: !4238)
!4240 = !DILocalVariable(name: "rc", scope: !4233, file: !274, line: 920, type: !53)
!4241 = !DILocation(line: 920, column: 9, scope: !4233)
!4242 = !DILocation(line: 920, column: 26, scope: !4233)
!4243 = !DILocation(line: 920, column: 32, scope: !4233)
!4244 = !DILocation(line: 920, column: 41, scope: !4233)
!4245 = !DILocation(line: 920, column: 47, scope: !4233)
!4246 = !DILocation(line: 920, column: 61, scope: !4233)
!4247 = !DILocation(line: 920, column: 12, scope: !4233)
!4248 = !DILocation(line: 922, column: 7, scope: !4233)
!4249 = !DILocation(line: 922, column: 13, scope: !4233)
!4250 = !DILocation(line: 922, column: 5, scope: !4233)
!4251 = !DILocation(line: 923, column: 29, scope: !4233)
!4252 = !DILocation(line: 923, column: 5, scope: !4233)
!4253 = !DILocation(line: 923, column: 11, scope: !4233)
!4254 = !DILocation(line: 923, column: 26, scope: !4233)
!4255 = !DILocation(line: 925, column: 8, scope: !4256)
!4256 = distinct !DILexicalBlock(scope: !4233, file: !274, line: 925, column: 8)
!4257 = !DILocation(line: 925, column: 11, scope: !4256)
!4258 = !DILocation(line: 925, column: 8, scope: !4233)
!4259 = !DILocation(line: 926, column: 11, scope: !4260)
!4260 = distinct !DILexicalBlock(scope: !4261, file: !274, line: 926, column: 11)
!4261 = distinct !DILexicalBlock(scope: !4256, file: !274, line: 925, column: 17)
!4262 = !DILocation(line: 926, column: 25, scope: !4260)
!4263 = !DILocation(line: 926, column: 28, scope: !4260)
!4264 = !DILocation(line: 926, column: 11, scope: !4261)
!4265 = !DILocation(line: 927, column: 66, scope: !4266)
!4266 = distinct !DILexicalBlock(scope: !4260, file: !274, line: 926, column: 45)
!4267 = !DILocation(line: 927, column: 5, scope: !4266)
!4268 = !DILocation(line: 928, column: 4, scope: !4266)
!4269 = !DILocation(line: 929, column: 24, scope: !4261)
!4270 = !DILocation(line: 930, column: 25, scope: !4261)
!4271 = !DILocation(line: 930, column: 22, scope: !4261)
!4272 = !DILocation(line: 931, column: 5, scope: !4261)
!4273 = !DILocation(line: 932, column: 6, scope: !4274)
!4274 = distinct !DILexicalBlock(scope: !4256, file: !274, line: 931, column: 12)
!4275 = !DILocation(line: 934, column: 3, scope: !4233)
!4276 = !DILocation(line: 936, column: 3, scope: !4064)
!4277 = !DILocation(line: 937, column: 1, scope: !4064)
!4278 = distinct !DISubprogram(name: "remove_all_from_ss", scope: !274, file: !274, line: 178, type: !4039, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !433)
!4279 = !DILocalVariable(name: "ss", arg: 1, scope: !4278, file: !274, line: 178, type: !85)
!4280 = !DILocation(line: 178, column: 47, scope: !4278)
!4281 = !DILocation(line: 180, column: 6, scope: !4282)
!4282 = distinct !DILexicalBlock(scope: !4278, file: !274, line: 180, column: 6)
!4283 = !DILocation(line: 180, column: 6, scope: !4278)
!4284 = !DILocation(line: 181, column: 31, scope: !4285)
!4285 = distinct !DILexicalBlock(scope: !4282, file: !274, line: 180, column: 10)
!4286 = !DILocation(line: 181, column: 3, scope: !4285)
!4287 = !DILocation(line: 183, column: 3, scope: !4285)
!4288 = !DILocation(line: 184, column: 2, scope: !4285)
!4289 = !DILocation(line: 186, column: 2, scope: !4278)
!4290 = distinct !DISubprogram(name: "uc_delete_session_elem_data", scope: !274, file: !274, line: 131, type: !4291, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !433)
!4291 = !DISubroutineType(types: !4292)
!4292 = !{null, !85}
!4293 = !DILocalVariable(name: "cdi", arg: 1, scope: !4290, file: !274, line: 131, type: !85)
!4294 = !DILocation(line: 131, column: 57, scope: !4290)
!4295 = !DILocation(line: 132, column: 6, scope: !4296)
!4296 = distinct !DILexicalBlock(scope: !4290, file: !274, line: 132, column: 6)
!4297 = !DILocation(line: 132, column: 6, scope: !4290)
!4298 = !DILocation(line: 133, column: 5, scope: !4299)
!4299 = distinct !DILexicalBlock(scope: !4300, file: !274, line: 133, column: 5)
!4300 = distinct !DILexicalBlock(scope: !4296, file: !274, line: 132, column: 11)
!4301 = !DILocation(line: 133, column: 5, scope: !4300)
!4302 = !DILocation(line: 133, column: 5, scope: !4303)
!4303 = distinct !DILexicalBlock(scope: !4299, file: !274, line: 133, column: 5)
!4304 = !DILocation(line: 134, column: 5, scope: !4305)
!4305 = distinct !DILexicalBlock(scope: !4300, file: !274, line: 134, column: 5)
!4306 = !DILocation(line: 134, column: 5, scope: !4300)
!4307 = !DILocation(line: 134, column: 5, scope: !4308)
!4308 = distinct !DILexicalBlock(scope: !4305, file: !274, line: 134, column: 5)
!4309 = !DILocation(line: 135, column: 8, scope: !4310)
!4310 = distinct !DILexicalBlock(scope: !4300, file: !274, line: 135, column: 8)
!4311 = !DILocation(line: 135, column: 13, scope: !4310)
!4312 = !DILocation(line: 135, column: 19, scope: !4310)
!4313 = !DILocation(line: 135, column: 8, scope: !4300)
!4314 = !DILocalVariable(name: "i", scope: !4315, file: !274, line: 136, type: !53)
!4315 = distinct !DILexicalBlock(scope: !4310, file: !274, line: 135, column: 29)
!4316 = !DILocation(line: 136, column: 11, scope: !4315)
!4317 = !DILocation(line: 137, column: 12, scope: !4318)
!4318 = distinct !DILexicalBlock(scope: !4315, file: !274, line: 137, column: 7)
!4319 = !DILocation(line: 137, column: 11, scope: !4318)
!4320 = !DILocation(line: 137, column: 15, scope: !4321)
!4321 = distinct !DILexicalBlock(scope: !4318, file: !274, line: 137, column: 7)
!4322 = !DILocation(line: 137, column: 23, scope: !4321)
!4323 = !DILocation(line: 137, column: 28, scope: !4321)
!4324 = !DILocation(line: 137, column: 34, scope: !4321)
!4325 = !DILocation(line: 137, column: 17, scope: !4321)
!4326 = !DILocation(line: 137, column: 16, scope: !4321)
!4327 = !DILocation(line: 137, column: 7, scope: !4318)
!4328 = !DILocation(line: 138, column: 5, scope: !4329)
!4329 = distinct !DILexicalBlock(scope: !4330, file: !274, line: 138, column: 5)
!4330 = distinct !DILexicalBlock(scope: !4321, file: !274, line: 137, column: 56)
!4331 = !DILocation(line: 138, column: 10, scope: !4329)
!4332 = !DILocation(line: 138, column: 16, scope: !4329)
!4333 = !DILocation(line: 138, column: 25, scope: !4329)
!4334 = !DILocation(line: 138, column: 5, scope: !4330)
!4335 = !DILocation(line: 139, column: 7, scope: !4336)
!4336 = distinct !DILexicalBlock(scope: !4337, file: !274, line: 139, column: 7)
!4337 = distinct !DILexicalBlock(scope: !4329, file: !274, line: 138, column: 29)
!4338 = !DILocation(line: 139, column: 12, scope: !4336)
!4339 = !DILocation(line: 139, column: 18, scope: !4336)
!4340 = !DILocation(line: 139, column: 27, scope: !4336)
!4341 = !DILocation(line: 139, column: 31, scope: !4336)
!4342 = !DILocation(line: 139, column: 44, scope: !4336)
!4343 = !DILocation(line: 139, column: 49, scope: !4336)
!4344 = !DILocation(line: 139, column: 54, scope: !4336)
!4345 = !DILocation(line: 139, column: 60, scope: !4336)
!4346 = !DILocation(line: 139, column: 48, scope: !4336)
!4347 = !DILocation(line: 139, column: 7, scope: !4337)
!4348 = !DILocation(line: 140, column: 28, scope: !4349)
!4349 = distinct !DILexicalBlock(scope: !4350, file: !274, line: 140, column: 9)
!4350 = distinct !DILexicalBlock(scope: !4336, file: !274, line: 139, column: 69)
!4351 = !DILocation(line: 140, column: 33, scope: !4349)
!4352 = !DILocation(line: 140, column: 39, scope: !4349)
!4353 = !DILocation(line: 140, column: 48, scope: !4349)
!4354 = !DILocation(line: 140, column: 52, scope: !4349)
!4355 = !DILocation(line: 140, column: 11, scope: !4349)
!4356 = !DILocation(line: 140, column: 66, scope: !4349)
!4357 = !DILocation(line: 140, column: 9, scope: !4350)
!4358 = !DILocation(line: 141, column: 25, scope: !4359)
!4359 = distinct !DILexicalBlock(scope: !4349, file: !274, line: 140, column: 88)
!4360 = !DILocation(line: 141, column: 30, scope: !4359)
!4361 = !DILocation(line: 141, column: 36, scope: !4359)
!4362 = !DILocation(line: 141, column: 45, scope: !4359)
!4363 = !DILocation(line: 141, column: 49, scope: !4359)
!4364 = !DILocation(line: 141, column: 8, scope: !4359)
!4365 = !DILocation(line: 142, column: 21, scope: !4359)
!4366 = !DILocation(line: 142, column: 26, scope: !4359)
!4367 = !DILocation(line: 142, column: 32, scope: !4359)
!4368 = !DILocation(line: 142, column: 41, scope: !4359)
!4369 = !DILocation(line: 142, column: 45, scope: !4359)
!4370 = !DILocation(line: 142, column: 8, scope: !4359)
!4371 = !DILocation(line: 143, column: 6, scope: !4359)
!4372 = !DILocation(line: 144, column: 9, scope: !4373)
!4373 = distinct !DILexicalBlock(scope: !4350, file: !274, line: 144, column: 9)
!4374 = !DILocation(line: 144, column: 14, scope: !4373)
!4375 = !DILocation(line: 144, column: 20, scope: !4373)
!4376 = !DILocation(line: 144, column: 29, scope: !4373)
!4377 = !DILocation(line: 144, column: 33, scope: !4373)
!4378 = !DILocation(line: 144, column: 9, scope: !4350)
!4379 = !DILocation(line: 145, column: 17, scope: !4380)
!4380 = distinct !DILexicalBlock(scope: !4373, file: !274, line: 144, column: 47)
!4381 = !DILocation(line: 145, column: 22, scope: !4380)
!4382 = !DILocation(line: 145, column: 28, scope: !4380)
!4383 = !DILocation(line: 145, column: 37, scope: !4380)
!4384 = !DILocation(line: 145, column: 41, scope: !4380)
!4385 = !DILocation(line: 145, column: 8, scope: !4380)
!4386 = !DILocation(line: 146, column: 6, scope: !4380)
!4387 = !DILocation(line: 147, column: 9, scope: !4388)
!4388 = distinct !DILexicalBlock(scope: !4350, file: !274, line: 147, column: 9)
!4389 = !DILocation(line: 147, column: 14, scope: !4388)
!4390 = !DILocation(line: 147, column: 20, scope: !4388)
!4391 = !DILocation(line: 147, column: 29, scope: !4388)
!4392 = !DILocation(line: 147, column: 33, scope: !4388)
!4393 = !DILocation(line: 147, column: 44, scope: !4388)
!4394 = !DILocation(line: 147, column: 9, scope: !4350)
!4395 = !DILocation(line: 148, column: 7, scope: !4396)
!4396 = distinct !DILexicalBlock(scope: !4388, file: !274, line: 147, column: 49)
!4397 = !DILocation(line: 149, column: 8, scope: !4396)
!4398 = !DILocation(line: 149, column: 13, scope: !4396)
!4399 = !DILocation(line: 149, column: 19, scope: !4396)
!4400 = !DILocation(line: 149, column: 28, scope: !4396)
!4401 = !DILocation(line: 149, column: 32, scope: !4396)
!4402 = !DILocation(line: 149, column: 43, scope: !4396)
!4403 = !DILocation(line: 150, column: 6, scope: !4396)
!4404 = !DILocation(line: 151, column: 11, scope: !4350)
!4405 = !DILocation(line: 151, column: 16, scope: !4350)
!4406 = !DILocation(line: 151, column: 22, scope: !4350)
!4407 = !DILocation(line: 151, column: 31, scope: !4350)
!4408 = !DILocation(line: 151, column: 6, scope: !4350)
!4409 = !DILocation(line: 152, column: 6, scope: !4350)
!4410 = !DILocation(line: 152, column: 11, scope: !4350)
!4411 = !DILocation(line: 152, column: 17, scope: !4350)
!4412 = !DILocation(line: 152, column: 26, scope: !4350)
!4413 = !DILocation(line: 152, column: 28, scope: !4350)
!4414 = !DILocation(line: 153, column: 4, scope: !4350)
!4415 = !DILocation(line: 154, column: 2, scope: !4337)
!4416 = !DILocation(line: 155, column: 7, scope: !4330)
!4417 = !DILocation(line: 137, column: 51, scope: !4321)
!4418 = !DILocation(line: 137, column: 7, scope: !4321)
!4419 = distinct !{!4419, !4327, !4420, !571}
!4420 = !DILocation(line: 155, column: 7, scope: !4318)
!4421 = !DILocation(line: 156, column: 7, scope: !4315)
!4422 = !DILocation(line: 156, column: 12, scope: !4315)
!4423 = !DILocation(line: 156, column: 18, scope: !4315)
!4424 = !DILocation(line: 156, column: 33, scope: !4315)
!4425 = !DILocation(line: 157, column: 10, scope: !4426)
!4426 = distinct !DILexicalBlock(scope: !4315, file: !274, line: 157, column: 10)
!4427 = !DILocation(line: 157, column: 15, scope: !4426)
!4428 = !DILocation(line: 157, column: 21, scope: !4426)
!4429 = !DILocation(line: 157, column: 10, scope: !4315)
!4430 = !DILocation(line: 158, column: 13, scope: !4431)
!4431 = distinct !DILexicalBlock(scope: !4426, file: !274, line: 157, column: 31)
!4432 = !DILocation(line: 158, column: 18, scope: !4431)
!4433 = !DILocation(line: 158, column: 24, scope: !4431)
!4434 = !DILocation(line: 158, column: 8, scope: !4431)
!4435 = !DILocation(line: 159, column: 8, scope: !4431)
!4436 = !DILocation(line: 159, column: 13, scope: !4431)
!4437 = !DILocation(line: 159, column: 19, scope: !4431)
!4438 = !DILocation(line: 159, column: 27, scope: !4431)
!4439 = !DILocation(line: 160, column: 7, scope: !4431)
!4440 = !DILocation(line: 161, column: 5, scope: !4315)
!4441 = !DILocation(line: 162, column: 8, scope: !4442)
!4442 = distinct !DILexicalBlock(scope: !4300, file: !274, line: 162, column: 8)
!4443 = !DILocation(line: 162, column: 13, scope: !4442)
!4444 = !DILocation(line: 162, column: 19, scope: !4442)
!4445 = !DILocation(line: 162, column: 23, scope: !4442)
!4446 = !DILocation(line: 162, column: 28, scope: !4442)
!4447 = !DILocation(line: 162, column: 33, scope: !4442)
!4448 = !DILocation(line: 162, column: 39, scope: !4442)
!4449 = !DILocation(line: 162, column: 27, scope: !4442)
!4450 = !DILocation(line: 162, column: 8, scope: !4300)
!4451 = !DILocation(line: 163, column: 28, scope: !4452)
!4452 = distinct !DILexicalBlock(scope: !4453, file: !274, line: 163, column: 9)
!4453 = distinct !DILexicalBlock(scope: !4442, file: !274, line: 162, column: 48)
!4454 = !DILocation(line: 163, column: 33, scope: !4452)
!4455 = !DILocation(line: 163, column: 39, scope: !4452)
!4456 = !DILocation(line: 163, column: 11, scope: !4452)
!4457 = !DILocation(line: 163, column: 44, scope: !4452)
!4458 = !DILocation(line: 163, column: 9, scope: !4453)
!4459 = !DILocation(line: 164, column: 24, scope: !4460)
!4460 = distinct !DILexicalBlock(scope: !4452, file: !274, line: 163, column: 66)
!4461 = !DILocation(line: 164, column: 29, scope: !4460)
!4462 = !DILocation(line: 164, column: 35, scope: !4460)
!4463 = !DILocation(line: 164, column: 7, scope: !4460)
!4464 = !DILocation(line: 165, column: 20, scope: !4460)
!4465 = !DILocation(line: 165, column: 25, scope: !4460)
!4466 = !DILocation(line: 165, column: 31, scope: !4460)
!4467 = !DILocation(line: 165, column: 7, scope: !4460)
!4468 = !DILocation(line: 166, column: 6, scope: !4460)
!4469 = !DILocation(line: 167, column: 5, scope: !4453)
!4470 = !DILocation(line: 168, column: 8, scope: !4471)
!4471 = distinct !DILexicalBlock(scope: !4300, file: !274, line: 168, column: 8)
!4472 = !DILocation(line: 168, column: 13, scope: !4471)
!4473 = !DILocation(line: 168, column: 19, scope: !4471)
!4474 = !DILocation(line: 168, column: 8, scope: !4300)
!4475 = !DILocation(line: 169, column: 15, scope: !4476)
!4476 = distinct !DILexicalBlock(scope: !4471, file: !274, line: 168, column: 24)
!4477 = !DILocation(line: 169, column: 20, scope: !4476)
!4478 = !DILocation(line: 169, column: 26, scope: !4476)
!4479 = !DILocation(line: 169, column: 6, scope: !4476)
!4480 = !DILocation(line: 170, column: 5, scope: !4476)
!4481 = !DILocation(line: 171, column: 8, scope: !4482)
!4482 = distinct !DILexicalBlock(scope: !4300, file: !274, line: 171, column: 8)
!4483 = !DILocation(line: 171, column: 13, scope: !4482)
!4484 = !DILocation(line: 171, column: 19, scope: !4482)
!4485 = !DILocation(line: 171, column: 21, scope: !4482)
!4486 = !DILocation(line: 171, column: 8, scope: !4300)
!4487 = !DILocation(line: 172, column: 6, scope: !4488)
!4488 = distinct !DILexicalBlock(scope: !4482, file: !274, line: 171, column: 26)
!4489 = !DILocation(line: 173, column: 5, scope: !4488)
!4490 = !DILocation(line: 174, column: 5, scope: !4300)
!4491 = !DILocation(line: 174, column: 10, scope: !4300)
!4492 = !DILocation(line: 174, column: 16, scope: !4300)
!4493 = !DILocation(line: 174, column: 18, scope: !4300)
!4494 = !DILocation(line: 175, column: 3, scope: !4300)
!4495 = !DILocation(line: 176, column: 1, scope: !4290)
