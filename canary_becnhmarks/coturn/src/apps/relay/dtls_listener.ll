; ModuleID = '/home/raj/coturn/src/apps/relay/dtls_listener.c'
source_filename = "/home/raj/coturn/src/apps/relay/dtls_listener.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._turn_params_ = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, [1025 x i8], [33 x i8], [1025 x i8], [1025 x i8], [1025 x i8], [513 x i8], [1025 x i8], i32, i32, i32, i32, i32, ptr, %union.pthread_mutex_t, i32, i32, i32, i32, i32, [1025 x i8], [1025 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1025 x i8], [1025 x i8], i32, %struct.listener_server, %struct._ip_range_list, %struct._ip_range_list, i32, [4 x ptr], i16, i16, i32, i32, i32, [1025 x i8], i64, ptr, i32, ptr, i8, i8, [1025 x i8], [1025 x i8], i32, %struct._turn_server_addrs_list, i32, %struct._turn_server_addrs_list, %struct._turn_server_addrs_list, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, %struct._default_users_db_t, i64, [1025 x i8], [1025 x i8], i32, i32, i32, i32, i32 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.listener_server = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, ptr }
%struct._ip_range_list = type { ptr, i64 }
%struct._turn_server_addrs_list = type { ptr, i64, %struct._turn_mutex }
%struct._turn_mutex = type { i32, ptr }
%struct._default_users_db_t = type { i32, %struct._persistent_users_db_t, %struct._ram_users_db_t }
%struct._persistent_users_db_t = type { [1025 x i8] }
%struct._ram_users_db_t = type { i64, ptr, %struct._secrets_list }
%struct._secrets_list = type { ptr, i64 }
%union.ioa_addr = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.dtls_listener_relay_server_info = type { [1025 x i8], %union.ioa_addr, ptr, ptr, i32, ptr, ptr, ptr, %struct.message_to_relay, i32, ptr }
%struct.message_to_relay = type { i32, ptr, %union.anon.0 }
%union.anon.0 = type { %struct.cb_socket_message }
%struct.cb_socket_message = type { i8, i32, %struct.stun_tid, ptr, i32, %struct._ioa_net_data, i32 }
%struct.stun_tid = type { [12 x i8] }
%struct._ioa_net_data = type { %union.ioa_addr, ptr, i32, i32 }
%struct._ioa_engine = type { ptr, ptr, i32, i32, ptr, ptr, %struct._stun_buffer_list, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, [65537 x i8], [14 x i32], [14 x %struct.timeval], [1025 x i8], i32, i64, i64, ptr, ptr }
%struct._stun_buffer_list = type { ptr, i64 }
%struct.timeval = type { i64, i64 }
%union.__SOCKADDR_ARG = type { ptr }
%struct.socket_message = type { ptr, %struct._ioa_net_data, i32 }
%struct._ioa_socket = type { i32, ptr, i32, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, %union.ioa_addr, i32, %union.ioa_addr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct._stun_buffer_list, i32, %struct.traffic_bytes, %struct.traffic_bytes, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.traffic_bytes = type { i64, i64 }
%struct._ts_ur_super_session = type { ptr, i64, i32, ptr, %struct._allocation, ptr, i32, i32, i32, [17 x i8], i32, [513 x i8], [64 x i8], i32, [257 x i8], i32, i32, i32, %struct._realm_options_t, i32, [128 x i8], i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i64, i64, [33 x i8], i64 }
%struct._allocation = type { i32, %struct.stun_tid, %struct._turn_permission_hashtable, [2 x %struct.relay_endpoint_session], [2 x i32], %struct._ch_map, ptr, ptr, %struct._tcp_connection_list }
%struct._turn_permission_hashtable = type { [8 x %struct._turn_permission_array] }
%struct._turn_permission_array = type { [3 x %struct._turn_permission_slot], i64, ptr }
%struct._turn_permission_slot = type { %struct._turn_permission_info }
%struct._turn_permission_info = type { i32, %struct._lm_map, %union.ioa_addr, i32, ptr, ptr, i32, i64 }
%struct._lm_map = type { [8 x %struct._lm_map_array] }
%struct._lm_map_array = type { [3 x i64], [3 x i64], i64, ptr, ptr }
%struct.relay_endpoint_session = type { ptr, i32, ptr }
%struct._ch_map = type { [8 x %struct._chn_map_array] }
%struct._chn_map_array = type { [3 x %struct._ch_info], i64, ptr }
%struct._ch_info = type { i16, i32, i16, %union.ioa_addr, i32, ptr, ptr, ptr }
%struct._tcp_connection_list = type { i64, ptr }
%struct._realm_options_t = type { [128 x i8], %struct._perf_options_t }
%struct._perf_options_t = type { i64, i32, i32 }

@.str = private unnamed_addr constant [48 x i8] c"/home/raj/coturn/src/apps/relay/dtls_listener.c\00", align 1, !dbg !0
@__FUNCTION__.create_dtls_listener_server = private unnamed_addr constant [28 x i8] c"create_dtls_listener_server\00", align 1, !dbg !7
@.str.1 = private unnamed_addr constant [20 x i8] c"assertion failed: 0\00", align 1, !dbg !13
@.str.2 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1, !dbg !18
@.str.3 = private unnamed_addr constant [51 x i8] c"Cannot create a DTLS/UDP listener for address: %s\0A\00", align 1, !dbg !23
@.str.4 = private unnamed_addr constant [13 x i8] c"%s:%d:start\0A\00", align 1, !dbg !28
@__FUNCTION__.create_server_socket = private unnamed_addr constant [21 x i8] c"create_server_socket\00", align 1, !dbg !33
@.str.5 = private unnamed_addr constant [7 x i8] c"socket\00", align 1, !dbg !38
@.str.6 = private unnamed_addr constant [42 x i8] c"Cannot bind listener socket to device %s\0A\00", align 1, !dbg !43
@.str.7 = private unnamed_addr constant [33 x i8] c"Cannot bind local socket to addr\00", align 1, !dbg !48
@.str.8 = private unnamed_addr constant [49 x i8] c"Cannot bind DTLS/UDP listener socket to addr %s\0A\00", align 1, !dbg !53
@.str.9 = private unnamed_addr constant [62 x i8] c"Trying to bind DTLS/UDP listener socket to addr %s, again...\0A\00", align 1, !dbg !58
@.str.10 = private unnamed_addr constant [70 x i8] c"Fatal final failure: cannot bind DTLS/UDP listener socket to addr %s\0A\00", align 1, !dbg !63
@turn_params = external global %struct._turn_params_, align 8
@.str.11 = private unnamed_addr constant [28 x i8] c"DTLS/UDP listener opened on\00", align 1, !dbg !68
@.str.12 = private unnamed_addr constant [24 x i8] c"DTLS listener opened on\00", align 1, !dbg !71
@.str.13 = private unnamed_addr constant [23 x i8] c"UDP listener opened on\00", align 1, !dbg !76
@.str.14 = private unnamed_addr constant [11 x i8] c"%s:%d:end\0A\00", align 1, !dbg !81
@__FUNCTION__.udp_server_input_handler = private unnamed_addr constant [25 x i8] c"udp_server_input_handler\00", align 1, !dbg !86
@udp_server_input_handler.buffer = internal global [65535 x i8] zeroinitializer, align 16, !dbg !91
@.str.15 = private unnamed_addr constant [23 x i8] c"%s: recvfrom error %d\0A\00", align 1, !dbg !1010
@.str.16 = private unnamed_addr constant [35 x i8] c"Cannot handle UDP packet, size %d\0A\00", align 1, !dbg !1012
@.str.17 = private unnamed_addr constant [25 x i8] c"Cannot handle UDP event\0A\00", align 1, !dbg !1017
@__FUNCTION__.reopen_server_socket = private unnamed_addr constant [21 x i8] c"reopen_server_socket\00", align 1, !dbg !1020
@.str.18 = private unnamed_addr constant [40 x i8] c"Cannot bind listener socket to addr %s\0A\00", align 1, !dbg !1022
@.str.19 = private unnamed_addr constant [29 x i8] c"DTLS/UDP listener opened on \00", align 1, !dbg !1027
@.str.20 = private unnamed_addr constant [25 x i8] c"DTLS listener opened on \00", align 1, !dbg !1032
@.str.21 = private unnamed_addr constant [24 x i8] c"UDP listener opened on \00", align 1, !dbg !1034
@.str.22 = private unnamed_addr constant [32 x i8] c"%s: Cannot allocate new socket\0A\00", align 1, !dbg !1036
@__FUNCTION__.create_new_connected_udp_socket = private unnamed_addr constant [32 x i8] c"create_new_connected_udp_socket\00", align 1, !dbg !1041
@.str.23 = private unnamed_addr constant [44 x i8] c"Cannot bind udp server socket to device %s\0A\00", align 1, !dbg !1044
@.str.24 = private unnamed_addr constant [42 x i8] c"%s: Cannot allocate new socket structure\0A\00", align 1, !dbg !1049
@.str.25 = private unnamed_addr constant [58 x i8] c"Cannot bind new detached udp server socket to local addr\0A\00", align 1, !dbg !1051
@.str.26 = private unnamed_addr constant [84 x i8] c"Cannot connect new detached udp client socket from local addr %s to remote addr %s\0A\00", align 1, !dbg !1056
@.str.27 = private unnamed_addr constant [30 x i8] c"Accepted DTLS connection from\00", align 1, !dbg !1061
@__FUNCTION__.handle_udp_packet = private unnamed_addr constant [18 x i8] c"handle_udp_packet\00", align 1, !dbg !1066
@.str.28 = private unnamed_addr constant [15 x i8] c"SSL read error\00", align 1, !dbg !1071
@.str.29 = private unnamed_addr constant [28 x i8] c"UDP packet processing error\00", align 1, !dbg !1073
@.str.30 = private unnamed_addr constant [25 x i8] c"%s: socket to be closed\0A\00", align 1, !dbg !1075
@.str.31 = private unnamed_addr constant [121 x i8] c"%s: 111.111: thrid=0x%lx: Amap = 0x%lx, socket container=0x%lx, local addr %s, remote addr %s, s=0x%lx, done=%d, tbc=%d\0A\00", align 1, !dbg !1077
@.str.32 = private unnamed_addr constant [24 x i8] c"%s: wrong socket magic\0A\00", align 1, !dbg !1082
@.str.33 = private unnamed_addr constant [28 x i8] c"%s: wrong socket container\0A\00", align 1, !dbg !1084
@.str.34 = private unnamed_addr constant [136 x i8] c"%s: 111.222: thrid=0x%lx: Amap = 0x%lx, socket container=0x%lx, local addr %s, remote addr %s, s=0x%lx, done=%d, tbc=%d, st=%d, sat=%d\0A\00", align 1, !dbg !1086
@.str.35 = private unnamed_addr constant [53 x i8] c"%s: New UDP endpoint: local addr %s, remote addr %s\0A\00", align 1, !dbg !1091
@__FUNCTION__.dtls_server_input_handler = private unnamed_addr constant [26 x i8] c"dtls_server_input_handler\00", align 1, !dbg !1096
@__FUNCTION__.dtls_accept_client_connection = private unnamed_addr constant [30 x i8] c"dtls_accept_client_connection\00", align 1, !dbg !1101
@.str.36 = private unnamed_addr constant [25 x i8] c"Accepted connection from\00", align 1, !dbg !1104
@.str.37 = private unnamed_addr constant [35 x i8] c"Cannot create ioa_socket from SSL\0A\00", align 1, !dbg !1106

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_dtls_handshake_message(ptr noundef %0, i32 noundef %1) #0 !dbg !1120 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1123, metadata !DIExpression()), !dbg !1124
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1125, metadata !DIExpression()), !dbg !1126
  %5 = load ptr, ptr %3, align 8, !dbg !1127
  %6 = icmp ne ptr %5, null, !dbg !1127
  br i1 %6, label %7, label %36, !dbg !1128

7:                                                ; preds = %2
  %8 = load i32, ptr %4, align 4, !dbg !1129
  %9 = icmp sgt i32 %8, 3, !dbg !1130
  br i1 %9, label %10, label %36, !dbg !1131

10:                                               ; preds = %7
  %11 = load ptr, ptr %3, align 8, !dbg !1132
  %12 = getelementptr inbounds i8, ptr %11, i64 0, !dbg !1132
  %13 = load i8, ptr %12, align 1, !dbg !1132
  %14 = zext i8 %13 to i32, !dbg !1132
  %15 = icmp eq i32 %14, 22, !dbg !1133
  br i1 %15, label %16, label %36, !dbg !1134

16:                                               ; preds = %10
  %17 = load ptr, ptr %3, align 8, !dbg !1135
  %18 = getelementptr inbounds i8, ptr %17, i64 1, !dbg !1135
  %19 = load i8, ptr %18, align 1, !dbg !1135
  %20 = zext i8 %19 to i32, !dbg !1135
  %21 = icmp eq i32 %20, 254, !dbg !1136
  br i1 %21, label %22, label %36, !dbg !1137

22:                                               ; preds = %16
  %23 = load ptr, ptr %3, align 8, !dbg !1138
  %24 = getelementptr inbounds i8, ptr %23, i64 2, !dbg !1138
  %25 = load i8, ptr %24, align 1, !dbg !1138
  %26 = zext i8 %25 to i32, !dbg !1138
  %27 = icmp eq i32 %26, 255, !dbg !1139
  br i1 %27, label %34, label %28, !dbg !1140

28:                                               ; preds = %22
  %29 = load ptr, ptr %3, align 8, !dbg !1141
  %30 = getelementptr inbounds i8, ptr %29, i64 2, !dbg !1141
  %31 = load i8, ptr %30, align 1, !dbg !1141
  %32 = zext i8 %31 to i32, !dbg !1141
  %33 = icmp eq i32 %32, 253, !dbg !1142
  br label %34, !dbg !1140

34:                                               ; preds = %28, %22
  %35 = phi i1 [ true, %22 ], [ %33, %28 ]
  br label %36

36:                                               ; preds = %34, %16, %10, %7, %2
  %37 = phi i1 [ false, %16 ], [ false, %10 ], [ false, %7 ], [ false, %2 ], [ %35, %34 ], !dbg !1143
  %38 = zext i1 %37 to i32, !dbg !1137
  ret i32 %38, !dbg !1144
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_dtls_data_message(ptr noundef %0, i32 noundef %1) #0 !dbg !1145 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1146, metadata !DIExpression()), !dbg !1147
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1148, metadata !DIExpression()), !dbg !1149
  %5 = load ptr, ptr %3, align 8, !dbg !1150
  %6 = icmp ne ptr %5, null, !dbg !1150
  br i1 %6, label %7, label %36, !dbg !1151

7:                                                ; preds = %2
  %8 = load i32, ptr %4, align 4, !dbg !1152
  %9 = icmp sgt i32 %8, 3, !dbg !1153
  br i1 %9, label %10, label %36, !dbg !1154

10:                                               ; preds = %7
  %11 = load ptr, ptr %3, align 8, !dbg !1155
  %12 = getelementptr inbounds i8, ptr %11, i64 0, !dbg !1155
  %13 = load i8, ptr %12, align 1, !dbg !1155
  %14 = zext i8 %13 to i32, !dbg !1155
  %15 = icmp eq i32 %14, 23, !dbg !1156
  br i1 %15, label %16, label %36, !dbg !1157

16:                                               ; preds = %10
  %17 = load ptr, ptr %3, align 8, !dbg !1158
  %18 = getelementptr inbounds i8, ptr %17, i64 1, !dbg !1158
  %19 = load i8, ptr %18, align 1, !dbg !1158
  %20 = zext i8 %19 to i32, !dbg !1158
  %21 = icmp eq i32 %20, 254, !dbg !1159
  br i1 %21, label %22, label %36, !dbg !1160

22:                                               ; preds = %16
  %23 = load ptr, ptr %3, align 8, !dbg !1161
  %24 = getelementptr inbounds i8, ptr %23, i64 2, !dbg !1161
  %25 = load i8, ptr %24, align 1, !dbg !1161
  %26 = zext i8 %25 to i32, !dbg !1161
  %27 = icmp eq i32 %26, 255, !dbg !1162
  br i1 %27, label %34, label %28, !dbg !1163

28:                                               ; preds = %22
  %29 = load ptr, ptr %3, align 8, !dbg !1164
  %30 = getelementptr inbounds i8, ptr %29, i64 2, !dbg !1164
  %31 = load i8, ptr %30, align 1, !dbg !1164
  %32 = zext i8 %31 to i32, !dbg !1164
  %33 = icmp eq i32 %32, 253, !dbg !1165
  br label %34, !dbg !1163

34:                                               ; preds = %28, %22
  %35 = phi i1 [ true, %22 ], [ %33, %28 ]
  br label %36

36:                                               ; preds = %34, %16, %10, %7, %2
  %37 = phi i1 [ false, %16 ], [ false, %10 ], [ false, %7 ], [ false, %2 ], [ %35, %34 ], !dbg !1166
  %38 = zext i1 %37 to i32, !dbg !1160
  ret i32 %38, !dbg !1167
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_dtls_alert_message(ptr noundef %0, i32 noundef %1) #0 !dbg !1168 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1169, metadata !DIExpression()), !dbg !1170
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1171, metadata !DIExpression()), !dbg !1172
  %5 = load ptr, ptr %3, align 8, !dbg !1173
  %6 = icmp ne ptr %5, null, !dbg !1173
  br i1 %6, label %7, label %36, !dbg !1174

7:                                                ; preds = %2
  %8 = load i32, ptr %4, align 4, !dbg !1175
  %9 = icmp sgt i32 %8, 3, !dbg !1176
  br i1 %9, label %10, label %36, !dbg !1177

10:                                               ; preds = %7
  %11 = load ptr, ptr %3, align 8, !dbg !1178
  %12 = getelementptr inbounds i8, ptr %11, i64 0, !dbg !1178
  %13 = load i8, ptr %12, align 1, !dbg !1178
  %14 = zext i8 %13 to i32, !dbg !1178
  %15 = icmp eq i32 %14, 21, !dbg !1179
  br i1 %15, label %16, label %36, !dbg !1180

16:                                               ; preds = %10
  %17 = load ptr, ptr %3, align 8, !dbg !1181
  %18 = getelementptr inbounds i8, ptr %17, i64 1, !dbg !1181
  %19 = load i8, ptr %18, align 1, !dbg !1181
  %20 = zext i8 %19 to i32, !dbg !1181
  %21 = icmp eq i32 %20, 254, !dbg !1182
  br i1 %21, label %22, label %36, !dbg !1183

22:                                               ; preds = %16
  %23 = load ptr, ptr %3, align 8, !dbg !1184
  %24 = getelementptr inbounds i8, ptr %23, i64 2, !dbg !1184
  %25 = load i8, ptr %24, align 1, !dbg !1184
  %26 = zext i8 %25 to i32, !dbg !1184
  %27 = icmp eq i32 %26, 255, !dbg !1185
  br i1 %27, label %34, label %28, !dbg !1186

28:                                               ; preds = %22
  %29 = load ptr, ptr %3, align 8, !dbg !1187
  %30 = getelementptr inbounds i8, ptr %29, i64 2, !dbg !1187
  %31 = load i8, ptr %30, align 1, !dbg !1187
  %32 = zext i8 %31 to i32, !dbg !1187
  %33 = icmp eq i32 %32, 253, !dbg !1188
  br label %34, !dbg !1186

34:                                               ; preds = %28, %22
  %35 = phi i1 [ true, %22 ], [ %33, %28 ]
  br label %36

36:                                               ; preds = %34, %16, %10, %7, %2
  %37 = phi i1 [ false, %16 ], [ false, %10 ], [ false, %7 ], [ false, %2 ], [ %35, %34 ], !dbg !1189
  %38 = zext i1 %37 to i32, !dbg !1183
  ret i32 %38, !dbg !1190
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_dtls_cipher_change_message(ptr noundef %0, i32 noundef %1) #0 !dbg !1191 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1192, metadata !DIExpression()), !dbg !1193
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1194, metadata !DIExpression()), !dbg !1195
  %5 = load ptr, ptr %3, align 8, !dbg !1196
  %6 = icmp ne ptr %5, null, !dbg !1196
  br i1 %6, label %7, label %36, !dbg !1197

7:                                                ; preds = %2
  %8 = load i32, ptr %4, align 4, !dbg !1198
  %9 = icmp sgt i32 %8, 3, !dbg !1199
  br i1 %9, label %10, label %36, !dbg !1200

10:                                               ; preds = %7
  %11 = load ptr, ptr %3, align 8, !dbg !1201
  %12 = getelementptr inbounds i8, ptr %11, i64 0, !dbg !1201
  %13 = load i8, ptr %12, align 1, !dbg !1201
  %14 = zext i8 %13 to i32, !dbg !1201
  %15 = icmp eq i32 %14, 20, !dbg !1202
  br i1 %15, label %16, label %36, !dbg !1203

16:                                               ; preds = %10
  %17 = load ptr, ptr %3, align 8, !dbg !1204
  %18 = getelementptr inbounds i8, ptr %17, i64 1, !dbg !1204
  %19 = load i8, ptr %18, align 1, !dbg !1204
  %20 = zext i8 %19 to i32, !dbg !1204
  %21 = icmp eq i32 %20, 254, !dbg !1205
  br i1 %21, label %22, label %36, !dbg !1206

22:                                               ; preds = %16
  %23 = load ptr, ptr %3, align 8, !dbg !1207
  %24 = getelementptr inbounds i8, ptr %23, i64 2, !dbg !1207
  %25 = load i8, ptr %24, align 1, !dbg !1207
  %26 = zext i8 %25 to i32, !dbg !1207
  %27 = icmp eq i32 %26, 255, !dbg !1208
  br i1 %27, label %34, label %28, !dbg !1209

28:                                               ; preds = %22
  %29 = load ptr, ptr %3, align 8, !dbg !1210
  %30 = getelementptr inbounds i8, ptr %29, i64 2, !dbg !1210
  %31 = load i8, ptr %30, align 1, !dbg !1210
  %32 = zext i8 %31 to i32, !dbg !1210
  %33 = icmp eq i32 %32, 253, !dbg !1211
  br label %34, !dbg !1209

34:                                               ; preds = %28, %22
  %35 = phi i1 [ true, %22 ], [ %33, %28 ]
  br label %36

36:                                               ; preds = %34, %16, %10, %7, %2
  %37 = phi i1 [ false, %16 ], [ false, %10 ], [ false, %7 ], [ false, %2 ], [ %35, %34 ], !dbg !1212
  %38 = zext i1 %37 to i32, !dbg !1206
  ret i32 %38, !dbg !1213
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_dtls_message(ptr noundef %0, i32 noundef %1) #0 !dbg !1214 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1215, metadata !DIExpression()), !dbg !1216
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1217, metadata !DIExpression()), !dbg !1218
  %6 = load ptr, ptr %4, align 8, !dbg !1219
  %7 = icmp ne ptr %6, null, !dbg !1219
  br i1 %7, label %8, label %37, !dbg !1221

8:                                                ; preds = %2
  %9 = load i32, ptr %5, align 4, !dbg !1222
  %10 = icmp sgt i32 %9, 3, !dbg !1223
  br i1 %10, label %11, label %37, !dbg !1224

11:                                               ; preds = %8
  %12 = load ptr, ptr %4, align 8, !dbg !1225
  %13 = getelementptr inbounds i8, ptr %12, i64 1, !dbg !1225
  %14 = load i8, ptr %13, align 1, !dbg !1225
  %15 = zext i8 %14 to i32, !dbg !1226
  %16 = icmp eq i32 %15, 254, !dbg !1227
  br i1 %16, label %17, label %37, !dbg !1228

17:                                               ; preds = %11
  %18 = load ptr, ptr %4, align 8, !dbg !1229
  %19 = getelementptr inbounds i8, ptr %18, i64 2, !dbg !1229
  %20 = load i8, ptr %19, align 1, !dbg !1229
  %21 = zext i8 %20 to i32, !dbg !1229
  %22 = icmp eq i32 %21, 255, !dbg !1230
  br i1 %22, label %29, label %23, !dbg !1231

23:                                               ; preds = %17
  %24 = load ptr, ptr %4, align 8, !dbg !1232
  %25 = getelementptr inbounds i8, ptr %24, i64 2, !dbg !1232
  %26 = load i8, ptr %25, align 1, !dbg !1232
  %27 = zext i8 %26 to i32, !dbg !1232
  %28 = icmp eq i32 %27, 253, !dbg !1233
  br i1 %28, label %29, label %37, !dbg !1234

29:                                               ; preds = %23, %17
  %30 = load ptr, ptr %4, align 8, !dbg !1235
  %31 = getelementptr inbounds i8, ptr %30, i64 0, !dbg !1235
  %32 = load i8, ptr %31, align 1, !dbg !1235
  %33 = zext i8 %32 to i32, !dbg !1235
  switch i32 %33, label %35 [
    i32 20, label %34
    i32 21, label %34
    i32 22, label %34
    i32 23, label %34
  ], !dbg !1237

34:                                               ; preds = %29, %29, %29, %29
  store i32 1, ptr %3, align 4, !dbg !1238
  br label %38, !dbg !1238

35:                                               ; preds = %29
  br label %36, !dbg !1240

36:                                               ; preds = %35
  br label %37, !dbg !1241

37:                                               ; preds = %36, %23, %11, %8, %2
  store i32 0, ptr %3, align 4, !dbg !1242
  br label %38, !dbg !1242

38:                                               ; preds = %37, %34
  %39 = load i32, ptr %3, align 4, !dbg !1243
  ret i32 %39, !dbg !1243
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_dtls_version(ptr noundef %0, i32 noundef %1) #0 !dbg !1244 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1245, metadata !DIExpression()), !dbg !1246
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1247, metadata !DIExpression()), !dbg !1248
  %6 = load ptr, ptr %4, align 8, !dbg !1249
  %7 = icmp ne ptr %6, null, !dbg !1249
  br i1 %7, label %8, label %18, !dbg !1251

8:                                                ; preds = %2
  %9 = load i32, ptr %5, align 4, !dbg !1252
  %10 = icmp sgt i32 %9, 3, !dbg !1253
  br i1 %10, label %11, label %18, !dbg !1254

11:                                               ; preds = %8
  %12 = load ptr, ptr %4, align 8, !dbg !1255
  %13 = getelementptr inbounds i8, ptr %12, i64 2, !dbg !1255
  %14 = load i8, ptr %13, align 1, !dbg !1255
  %15 = zext i8 %14 to i32, !dbg !1255
  %16 = icmp eq i32 %15, 253, !dbg !1256
  br i1 %16, label %17, label %18, !dbg !1257

17:                                               ; preds = %11
  store i32 1, ptr %3, align 4, !dbg !1258
  br label %19, !dbg !1258

18:                                               ; preds = %11, %8, %2
  store i32 0, ptr %3, align 4, !dbg !1259
  br label %19, !dbg !1259

19:                                               ; preds = %18, %17
  %20 = load i32, ptr %3, align 4, !dbg !1260
  ret i32 %20, !dbg !1260
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setup_dtls_callbacks(ptr noundef %0) #0 !dbg !1261 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1264, metadata !DIExpression()), !dbg !1265
  %3 = load ptr, ptr %2, align 8, !dbg !1266
  %4 = icmp ne ptr %3, null, !dbg !1266
  br i1 %4, label %6, label %5, !dbg !1268

5:                                                ; preds = %1
  br label %11, !dbg !1269

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !dbg !1270
  %8 = call i64 @SSL_CTX_ctrl(ptr noundef %7, i32 noundef 41, i64 noundef 1, ptr noundef null), !dbg !1270
  %9 = load ptr, ptr %2, align 8, !dbg !1271
  call void @SSL_CTX_set_cookie_generate_cb(ptr noundef %9, ptr noundef @generate_cookie), !dbg !1272
  %10 = load ptr, ptr %2, align 8, !dbg !1273
  call void @SSL_CTX_set_cookie_verify_cb(ptr noundef %10, ptr noundef @verify_cookie), !dbg !1274
  br label %11, !dbg !1275

11:                                               ; preds = %6, %5
  ret void, !dbg !1275
}

declare i64 @SSL_CTX_ctrl(ptr noundef, i32 noundef, i64 noundef, ptr noundef) #2

declare void @SSL_CTX_set_cookie_generate_cb(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generate_cookie(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !1276 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca [64 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %union.ioa_addr, align 4
  %13 = alloca [32 x i8], align 16
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1280, metadata !DIExpression()), !dbg !1281
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1282, metadata !DIExpression()), !dbg !1283
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1284, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1286, metadata !DIExpression()), !dbg !1287
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1288, metadata !DIExpression()), !dbg !1290
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1291, metadata !DIExpression()), !dbg !1292
  store i32 0, ptr %10, align 4, !dbg !1292
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1293, metadata !DIExpression()), !dbg !1294
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1295, metadata !DIExpression()), !dbg !1296
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1297, metadata !DIExpression()), !dbg !1299
  %14 = load ptr, ptr %5, align 8, !dbg !1300
  %15 = getelementptr inbounds [32 x i8], ptr %13, i64 0, i64 0, !dbg !1301
  call void @calculate_cookie(ptr noundef %14, ptr noundef %15, i32 noundef 32), !dbg !1302
  %16 = load ptr, ptr %5, align 8, !dbg !1303
  %17 = call ptr @SSL_get_wbio(ptr noundef %16), !dbg !1303
  %18 = call i64 @BIO_ctrl(ptr noundef %17, i32 noundef 46, i64 noundef 0, ptr noundef %12), !dbg !1303
  %19 = trunc i64 %18 to i32, !dbg !1303
  store i32 0, ptr %10, align 4, !dbg !1304
  %20 = getelementptr inbounds %struct.sockaddr, ptr %12, i32 0, i32 0, !dbg !1305
  %21 = load i16, ptr %20, align 4, !dbg !1305
  %22 = zext i16 %21 to i32, !dbg !1306
  switch i32 %22, label %33 [
    i32 2, label %23
    i32 10, label %28
  ], !dbg !1307

23:                                               ; preds = %3
  %24 = load i32, ptr %10, align 4, !dbg !1308
  %25 = zext i32 %24 to i64, !dbg !1308
  %26 = add i64 %25, 4, !dbg !1308
  %27 = trunc i64 %26 to i32, !dbg !1308
  store i32 %27, ptr %10, align 4, !dbg !1308
  br label %34, !dbg !1310

28:                                               ; preds = %3
  %29 = load i32, ptr %10, align 4, !dbg !1311
  %30 = zext i32 %29 to i64, !dbg !1311
  %31 = add i64 %30, 16, !dbg !1311
  %32 = trunc i64 %31 to i32, !dbg !1311
  store i32 %32, ptr %10, align 4, !dbg !1311
  br label %34, !dbg !1312

33:                                               ; preds = %3
  call void @OPENSSL_die(ptr noundef @.str.1, ptr noundef @.str, i32 noundef 156) #11, !dbg !1313
  unreachable, !dbg !1313

34:                                               ; preds = %28, %23
  %35 = load i32, ptr %10, align 4, !dbg !1314
  %36 = zext i32 %35 to i64, !dbg !1314
  %37 = add i64 %36, 2, !dbg !1314
  %38 = trunc i64 %37 to i32, !dbg !1314
  store i32 %38, ptr %10, align 4, !dbg !1314
  %39 = load i32, ptr %10, align 4, !dbg !1315
  %40 = zext i32 %39 to i64, !dbg !1315
  %41 = call ptr @CRYPTO_malloc(i64 noundef %40, ptr noundef @.str, i32 noundef 160), !dbg !1315
  store ptr %41, ptr %8, align 8, !dbg !1316
  %42 = load ptr, ptr %8, align 8, !dbg !1317
  %43 = icmp eq ptr %42, null, !dbg !1319
  br i1 %43, label %44, label %45, !dbg !1320

44:                                               ; preds = %34
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.2), !dbg !1321
  store i32 0, ptr %4, align 4, !dbg !1323
  br label %77, !dbg !1323

45:                                               ; preds = %34
  %46 = getelementptr inbounds %struct.sockaddr, ptr %12, i32 0, i32 0, !dbg !1324
  %47 = load i16, ptr %46, align 4, !dbg !1324
  %48 = zext i16 %47 to i32, !dbg !1325
  switch i32 %48, label %61 [
    i32 2, label %49
    i32 10, label %55
  ], !dbg !1326

49:                                               ; preds = %45
  %50 = load ptr, ptr %8, align 8, !dbg !1327
  %51 = getelementptr inbounds %struct.sockaddr_in, ptr %12, i32 0, i32 1, !dbg !1329
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %50, ptr align 2 %51, i64 2, i1 false), !dbg !1330
  %52 = load ptr, ptr %8, align 8, !dbg !1331
  %53 = getelementptr inbounds i8, ptr %52, i64 2, !dbg !1332
  %54 = getelementptr inbounds %struct.sockaddr_in, ptr %12, i32 0, i32 2, !dbg !1333
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %53, ptr align 4 %54, i64 4, i1 false), !dbg !1334
  br label %62, !dbg !1335

55:                                               ; preds = %45
  %56 = load ptr, ptr %8, align 8, !dbg !1336
  %57 = getelementptr inbounds %struct.sockaddr_in6, ptr %12, i32 0, i32 1, !dbg !1337
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %56, ptr align 2 %57, i64 2, i1 false), !dbg !1338
  %58 = load ptr, ptr %8, align 8, !dbg !1339
  %59 = getelementptr inbounds i8, ptr %58, i64 2, !dbg !1340
  %60 = getelementptr inbounds %struct.sockaddr_in6, ptr %12, i32 0, i32 3, !dbg !1341
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %59, ptr align 4 %60, i64 16, i1 false), !dbg !1342
  br label %62, !dbg !1343

61:                                               ; preds = %45
  call void @OPENSSL_die(ptr noundef @.str.1, ptr noundef @.str, i32 noundef 187) #11, !dbg !1344
  unreachable, !dbg !1344

62:                                               ; preds = %55, %49
  %63 = call ptr @EVP_sha1(), !dbg !1345
  %64 = getelementptr inbounds [32 x i8], ptr %13, i64 0, i64 0, !dbg !1346
  %65 = load ptr, ptr %8, align 8, !dbg !1347
  %66 = load i32, ptr %10, align 4, !dbg !1348
  %67 = zext i32 %66 to i64, !dbg !1348
  %68 = getelementptr inbounds [64 x i8], ptr %9, i64 0, i64 0, !dbg !1349
  %69 = call ptr @HMAC(ptr noundef %63, ptr noundef %64, i32 noundef 32, ptr noundef %65, i64 noundef %67, ptr noundef %68, ptr noundef %11), !dbg !1350
  %70 = load ptr, ptr %8, align 8, !dbg !1351
  call void @CRYPTO_free(ptr noundef %70, ptr noundef @.str, i32 noundef 194), !dbg !1351
  %71 = load ptr, ptr %6, align 8, !dbg !1352
  %72 = getelementptr inbounds [64 x i8], ptr %9, i64 0, i64 0, !dbg !1353
  %73 = load i32, ptr %11, align 4, !dbg !1354
  %74 = zext i32 %73 to i64, !dbg !1354
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %71, ptr align 16 %72, i64 %74, i1 false), !dbg !1353
  %75 = load i32, ptr %11, align 4, !dbg !1355
  %76 = load ptr, ptr %7, align 8, !dbg !1356
  store i32 %75, ptr %76, align 4, !dbg !1357
  store i32 1, ptr %4, align 4, !dbg !1358
  br label %77, !dbg !1358

77:                                               ; preds = %62, %44
  %78 = load i32, ptr %4, align 4, !dbg !1359
  ret i32 %78, !dbg !1359
}

declare void @SSL_CTX_set_cookie_verify_cb(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_cookie(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !1360 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [32 x i8], align 16
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1363, metadata !DIExpression()), !dbg !1364
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1365, metadata !DIExpression()), !dbg !1366
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1367, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1369, metadata !DIExpression()), !dbg !1370
  store i32 0, ptr %8, align 4, !dbg !1370
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1371, metadata !DIExpression()), !dbg !1372
  %10 = load ptr, ptr %5, align 8, !dbg !1373
  %11 = getelementptr inbounds [32 x i8], ptr %9, i64 0, i64 0, !dbg !1374
  %12 = call i32 @generate_cookie(ptr noundef %10, ptr noundef %11, ptr noundef %8), !dbg !1375
  %13 = load i32, ptr %7, align 4, !dbg !1376
  %14 = load i32, ptr %8, align 4, !dbg !1378
  %15 = icmp eq i32 %13, %14, !dbg !1379
  br i1 %15, label %16, label %24, !dbg !1380

16:                                               ; preds = %3
  %17 = getelementptr inbounds [32 x i8], ptr %9, i64 0, i64 0, !dbg !1381
  %18 = load ptr, ptr %6, align 8, !dbg !1382
  %19 = load i32, ptr %8, align 4, !dbg !1383
  %20 = zext i32 %19 to i64, !dbg !1383
  %21 = call i32 @memcmp(ptr noundef %17, ptr noundef %18, i64 noundef %20) #12, !dbg !1384
  %22 = icmp eq i32 %21, 0, !dbg !1385
  br i1 %22, label %23, label %24, !dbg !1386

23:                                               ; preds = %16
  store i32 1, ptr %4, align 4, !dbg !1387
  br label %25, !dbg !1387

24:                                               ; preds = %16, %3
  store i32 0, ptr %4, align 4, !dbg !1389
  br label %25, !dbg !1389

25:                                               ; preds = %24, %23
  %26 = load i32, ptr %4, align 4, !dbg !1391
  ret i32 %26, !dbg !1391
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @create_dtls_listener_server(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7) #0 !dbg !1392 {
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca i32, align 4
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  store ptr %0, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1395, metadata !DIExpression()), !dbg !1396
  store ptr %1, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1397, metadata !DIExpression()), !dbg !1398
  store i32 %2, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1399, metadata !DIExpression()), !dbg !1400
  store i32 %3, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1401, metadata !DIExpression()), !dbg !1402
  store ptr %4, ptr %14, align 8
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1403, metadata !DIExpression()), !dbg !1404
  store ptr %5, ptr %15, align 8
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1405, metadata !DIExpression()), !dbg !1406
  store i32 %6, ptr %16, align 4
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1407, metadata !DIExpression()), !dbg !1408
  store ptr %7, ptr %17, align 8
  call void @llvm.dbg.declare(metadata ptr %17, metadata !1409, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.declare(metadata ptr %18, metadata !1411, metadata !DIExpression()), !dbg !1412
  %19 = load ptr, ptr %14, align 8, !dbg !1413
  %20 = call ptr @allocate_super_memory_engine_func(ptr noundef %19, i64 noundef 1232, ptr noundef @.str, ptr noundef @__FUNCTION__.create_dtls_listener_server, i32 noundef 966), !dbg !1413
  store ptr %20, ptr %18, align 8, !dbg !1412
  %21 = load ptr, ptr %18, align 8, !dbg !1414
  %22 = load ptr, ptr %10, align 8, !dbg !1416
  %23 = load ptr, ptr %11, align 8, !dbg !1417
  %24 = load i32, ptr %12, align 4, !dbg !1418
  %25 = load i32, ptr %13, align 4, !dbg !1419
  %26 = load ptr, ptr %14, align 8, !dbg !1420
  %27 = load ptr, ptr %15, align 8, !dbg !1421
  %28 = load i32, ptr %16, align 4, !dbg !1422
  %29 = load ptr, ptr %17, align 8, !dbg !1423
  %30 = call i32 @init_server(ptr noundef %21, ptr noundef %22, ptr noundef %23, i32 noundef %24, i32 noundef %25, ptr noundef %26, ptr noundef %27, i32 noundef %28, ptr noundef %29), !dbg !1424
  %31 = icmp slt i32 %30, 0, !dbg !1425
  br i1 %31, label %32, label %33, !dbg !1426

32:                                               ; preds = %8
  store ptr null, ptr %9, align 8, !dbg !1427
  br label %35, !dbg !1427

33:                                               ; preds = %8
  %34 = load ptr, ptr %18, align 8, !dbg !1429
  store ptr %34, ptr %9, align 8, !dbg !1431
  br label %35, !dbg !1431

35:                                               ; preds = %33, %32
  %36 = load ptr, ptr %9, align 8, !dbg !1432
  ret ptr %36, !dbg !1432
}

declare ptr @allocate_super_memory_engine_func(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_server(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8) #0 !dbg !1433 {
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca i32, align 4
  %19 = alloca ptr, align 8
  %20 = alloca i64, align 8
  store ptr %0, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1436, metadata !DIExpression()), !dbg !1437
  store ptr %1, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1438, metadata !DIExpression()), !dbg !1439
  store ptr %2, ptr %13, align 8
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1440, metadata !DIExpression()), !dbg !1441
  store i32 %3, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1442, metadata !DIExpression()), !dbg !1443
  store i32 %4, ptr %15, align 4
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1444, metadata !DIExpression()), !dbg !1445
  store ptr %5, ptr %16, align 8
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1446, metadata !DIExpression()), !dbg !1447
  store ptr %6, ptr %17, align 8
  call void @llvm.dbg.declare(metadata ptr %17, metadata !1448, metadata !DIExpression()), !dbg !1449
  store i32 %7, ptr %18, align 4
  call void @llvm.dbg.declare(metadata ptr %18, metadata !1450, metadata !DIExpression()), !dbg !1451
  store ptr %8, ptr %19, align 8
  call void @llvm.dbg.declare(metadata ptr %19, metadata !1452, metadata !DIExpression()), !dbg !1453
  %21 = load ptr, ptr %11, align 8, !dbg !1454
  %22 = icmp ne ptr %21, null, !dbg !1454
  br i1 %22, label %24, label %23, !dbg !1456

23:                                               ; preds = %9
  store i32 -1, ptr %10, align 4, !dbg !1457
  br label %79, !dbg !1457

24:                                               ; preds = %9
  %25 = load ptr, ptr %17, align 8, !dbg !1458
  %26 = load ptr, ptr %11, align 8, !dbg !1459
  %27 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %26, i32 0, i32 3, !dbg !1460
  store ptr %25, ptr %27, align 8, !dbg !1461
  %28 = load ptr, ptr %19, align 8, !dbg !1462
  %29 = load ptr, ptr %11, align 8, !dbg !1463
  %30 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %29, i32 0, i32 10, !dbg !1464
  store ptr %28, ptr %30, align 8, !dbg !1465
  %31 = load ptr, ptr %12, align 8, !dbg !1466
  %32 = icmp ne ptr %31, null, !dbg !1466
  br i1 %32, label %33, label %55, !dbg !1468

33:                                               ; preds = %24
  br label %34, !dbg !1469

34:                                               ; preds = %33
  %35 = load ptr, ptr %11, align 8, !dbg !1470
  %36 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %35, i32 0, i32 0, !dbg !1470
  %37 = getelementptr inbounds [1025 x i8], ptr %36, i64 0, i64 0, !dbg !1470
  %38 = load ptr, ptr %12, align 8, !dbg !1470
  %39 = icmp ne ptr %37, %38, !dbg !1470
  br i1 %39, label %40, label %53, !dbg !1473

40:                                               ; preds = %34
  call void @llvm.dbg.declare(metadata ptr %20, metadata !1474, metadata !DIExpression()), !dbg !1478
  store i64 1025, ptr %20, align 8, !dbg !1478
  %41 = load ptr, ptr %11, align 8, !dbg !1478
  %42 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %41, i32 0, i32 0, !dbg !1478
  %43 = getelementptr inbounds [1025 x i8], ptr %42, i64 0, i64 0, !dbg !1478
  %44 = load ptr, ptr %12, align 8, !dbg !1478
  %45 = load i64, ptr %20, align 8, !dbg !1478
  %46 = call ptr @strncpy(ptr noundef %43, ptr noundef %44, i64 noundef %45) #13, !dbg !1478
  %47 = load ptr, ptr %11, align 8, !dbg !1478
  %48 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %47, i32 0, i32 0, !dbg !1478
  %49 = getelementptr inbounds [1025 x i8], ptr %48, i64 0, i64 0, !dbg !1478
  %50 = load i64, ptr %20, align 8, !dbg !1478
  %51 = sub i64 %50, 1, !dbg !1478
  %52 = getelementptr inbounds i8, ptr %49, i64 %51, !dbg !1478
  store i8 0, ptr %52, align 1, !dbg !1478
  br label %53, !dbg !1479

53:                                               ; preds = %40, %34
  br label %54, !dbg !1473

54:                                               ; preds = %53
  br label %55, !dbg !1473

55:                                               ; preds = %54, %24
  %56 = load ptr, ptr %13, align 8, !dbg !1480
  %57 = load i32, ptr %14, align 4, !dbg !1482
  %58 = load ptr, ptr %11, align 8, !dbg !1483
  %59 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %58, i32 0, i32 1, !dbg !1484
  %60 = call i32 @make_ioa_addr(ptr noundef %56, i32 noundef %57, ptr noundef %59), !dbg !1485
  %61 = icmp slt i32 %60, 0, !dbg !1486
  br i1 %61, label %62, label %64, !dbg !1487

62:                                               ; preds = %55
  %63 = load ptr, ptr %13, align 8, !dbg !1488
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.3, ptr noundef %63), !dbg !1490
  store i32 -1, ptr %10, align 4, !dbg !1491
  br label %79, !dbg !1491

64:                                               ; preds = %55
  %65 = load ptr, ptr %11, align 8, !dbg !1492
  %66 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %65, i32 0, i32 1, !dbg !1493
  %67 = call i32 @get_ioa_addr_len(ptr noundef %66), !dbg !1494
  %68 = load ptr, ptr %11, align 8, !dbg !1495
  %69 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %68, i32 0, i32 9, !dbg !1496
  store i32 %67, ptr %69, align 8, !dbg !1497
  %70 = load i32, ptr %15, align 4, !dbg !1498
  %71 = load ptr, ptr %11, align 8, !dbg !1499
  %72 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %71, i32 0, i32 4, !dbg !1500
  store i32 %70, ptr %72, align 8, !dbg !1501
  %73 = load ptr, ptr %16, align 8, !dbg !1502
  %74 = load ptr, ptr %11, align 8, !dbg !1503
  %75 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %74, i32 0, i32 2, !dbg !1504
  store ptr %73, ptr %75, align 8, !dbg !1505
  %76 = load ptr, ptr %11, align 8, !dbg !1506
  %77 = load i32, ptr %18, align 4, !dbg !1507
  %78 = call i32 @create_server_socket(ptr noundef %76, i32 noundef %77), !dbg !1508
  store i32 %78, ptr %10, align 4, !dbg !1509
  br label %79, !dbg !1509

79:                                               ; preds = %64, %62, %23
  %80 = load i32, ptr %10, align 4, !dbg !1510
  ret i32 %80, !dbg !1510
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @get_engine(ptr noundef %0) #0 !dbg !1511 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1514, metadata !DIExpression()), !dbg !1515
  %4 = load ptr, ptr %3, align 8, !dbg !1516
  %5 = icmp ne ptr %4, null, !dbg !1516
  br i1 %5, label %6, label %10, !dbg !1518

6:                                                ; preds = %1
  %7 = load ptr, ptr %3, align 8, !dbg !1519
  %8 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %7, i32 0, i32 2, !dbg !1520
  %9 = load ptr, ptr %8, align 8, !dbg !1520
  store ptr %9, ptr %2, align 8, !dbg !1521
  br label %11, !dbg !1521

10:                                               ; preds = %1
  store ptr null, ptr %2, align 8, !dbg !1522
  br label %11, !dbg !1522

11:                                               ; preds = %10, %6
  %12 = load ptr, ptr %2, align 8, !dbg !1523
  ret ptr %12, !dbg !1523
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @udp_send_message(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !1524 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1527, metadata !DIExpression()), !dbg !1528
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1529, metadata !DIExpression()), !dbg !1530
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1531, metadata !DIExpression()), !dbg !1532
  %7 = load ptr, ptr %4, align 8, !dbg !1533
  %8 = icmp ne ptr %7, null, !dbg !1533
  br i1 %8, label %9, label %31, !dbg !1535

9:                                                ; preds = %3
  %10 = load ptr, ptr %6, align 8, !dbg !1536
  %11 = icmp ne ptr %10, null, !dbg !1536
  br i1 %11, label %12, label %31, !dbg !1537

12:                                               ; preds = %9
  %13 = load ptr, ptr %5, align 8, !dbg !1538
  %14 = icmp ne ptr %13, null, !dbg !1538
  br i1 %14, label %15, label %31, !dbg !1539

15:                                               ; preds = %12
  %16 = load ptr, ptr %4, align 8, !dbg !1540
  %17 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %16, i32 0, i32 6, !dbg !1541
  %18 = load ptr, ptr %17, align 8, !dbg !1541
  %19 = icmp ne ptr %18, null, !dbg !1542
  br i1 %19, label %20, label %31, !dbg !1543

20:                                               ; preds = %15
  %21 = load ptr, ptr %4, align 8, !dbg !1544
  %22 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %21, i32 0, i32 6, !dbg !1545
  %23 = load ptr, ptr %22, align 8, !dbg !1545
  %24 = load ptr, ptr %6, align 8, !dbg !1546
  %25 = load ptr, ptr %5, align 8, !dbg !1547
  %26 = call ptr @ioa_network_buffer_data(ptr noundef %25), !dbg !1548
  %27 = load ptr, ptr %5, align 8, !dbg !1549
  %28 = call i64 @ioa_network_buffer_get_size(ptr noundef %27), !dbg !1550
  %29 = trunc i64 %28 to i32, !dbg !1551
  %30 = call i32 @udp_send(ptr noundef %23, ptr noundef %24, ptr noundef %26, i32 noundef %29), !dbg !1552
  br label %31, !dbg !1552

31:                                               ; preds = %20, %15, %12, %9, %3
  ret void, !dbg !1553
}

declare i32 @udp_send(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare ptr @ioa_network_buffer_data(ptr noundef) #2

declare i64 @ioa_network_buffer_get_size(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calculate_cookie(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !1554 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1557, metadata !DIExpression()), !dbg !1558
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1559, metadata !DIExpression()), !dbg !1560
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1561, metadata !DIExpression()), !dbg !1562
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1563, metadata !DIExpression()), !dbg !1564
  %11 = load ptr, ptr %4, align 8, !dbg !1565
  %12 = ptrtoint ptr %11 to i64, !dbg !1566
  store i64 %12, ptr %7, align 8, !dbg !1564
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1567, metadata !DIExpression()), !dbg !1568
  %13 = load i32, ptr %6, align 4, !dbg !1569
  %14 = zext i32 %13 to i64, !dbg !1569
  %15 = load ptr, ptr %5, align 8, !dbg !1570
  %16 = ptrtoint ptr %15 to i64, !dbg !1571
  %17 = urem i64 %16, 8, !dbg !1572
  %18 = sub i64 %14, %17, !dbg !1573
  %19 = udiv i64 %18, 8, !dbg !1574
  store i64 %19, ptr %8, align 8, !dbg !1568
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1575, metadata !DIExpression()), !dbg !1576
  store i64 0, ptr %9, align 8, !dbg !1576
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1577, metadata !DIExpression()), !dbg !1578
  %20 = load ptr, ptr %5, align 8, !dbg !1579
  store ptr %20, ptr %10, align 8, !dbg !1578
  store i64 0, ptr %9, align 8, !dbg !1580
  br label %21, !dbg !1582

21:                                               ; preds = %28, %3
  %22 = load i64, ptr %9, align 8, !dbg !1583
  %23 = load i64, ptr %8, align 8, !dbg !1585
  %24 = icmp slt i64 %22, %23, !dbg !1586
  br i1 %24, label %25, label %33, !dbg !1587

25:                                               ; preds = %21
  %26 = load i64, ptr %7, align 8, !dbg !1588
  %27 = load ptr, ptr %10, align 8, !dbg !1589
  store i64 %26, ptr %27, align 8, !dbg !1590
  br label %28, !dbg !1591

28:                                               ; preds = %25
  %29 = load i64, ptr %9, align 8, !dbg !1592
  %30 = add nsw i64 %29, 1, !dbg !1592
  store i64 %30, ptr %9, align 8, !dbg !1592
  %31 = load ptr, ptr %10, align 8, !dbg !1593
  %32 = getelementptr inbounds i64, ptr %31, i32 1, !dbg !1593
  store ptr %32, ptr %10, align 8, !dbg !1593
  br label %21, !dbg !1594, !llvm.loop !1595

33:                                               ; preds = %21
  ret void, !dbg !1598
}

declare i64 @BIO_ctrl(ptr noundef, i32 noundef, i64 noundef, ptr noundef) #2

declare ptr @SSL_get_wbio(ptr noundef) #2

; Function Attrs: noreturn
declare void @OPENSSL_die(ptr noundef, ptr noundef, i32 noundef) #3

declare ptr @CRYPTO_malloc(i64 noundef, ptr noundef, i32 noundef) #2

declare void @turn_log_func_default(i32 noundef, ptr noundef, ...) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare ptr @HMAC(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) #2

declare ptr @EVP_sha1() #2

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #5

; Function Attrs: nounwind
declare ptr @strncpy(ptr noundef, ptr noundef, i64 noundef) #6

declare i32 @make_ioa_addr(ptr noundef, i32 noundef, ptr noundef) #2

declare i32 @get_ioa_addr_len(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_server_socket(ptr noundef %0, i32 noundef %1) #0 !dbg !1599 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [129 x i8], align 16
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1602, metadata !DIExpression()), !dbg !1603
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1604, metadata !DIExpression()), !dbg !1605
  %10 = load ptr, ptr %4, align 8, !dbg !1606
  %11 = icmp ne ptr %10, null, !dbg !1606
  br i1 %11, label %12, label %18, !dbg !1606

12:                                               ; preds = %2
  %13 = load ptr, ptr %4, align 8, !dbg !1606
  %14 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %13, i32 0, i32 4, !dbg !1606
  %15 = load i32, ptr %14, align 8, !dbg !1606
  %16 = icmp eq i32 %15, 2, !dbg !1606
  br i1 %16, label %17, label %18, !dbg !1608

17:                                               ; preds = %12
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.4, ptr noundef @__FUNCTION__.create_server_socket, i32 noundef 745), !dbg !1606
  br label %18, !dbg !1606

18:                                               ; preds = %17, %12, %2
  %19 = load ptr, ptr %4, align 8, !dbg !1609
  %20 = icmp ne ptr %19, null, !dbg !1609
  br i1 %20, label %22, label %21, !dbg !1611

21:                                               ; preds = %18
  store i32 -1, ptr %3, align 4, !dbg !1612
  br label %151, !dbg !1612

22:                                               ; preds = %18
  %23 = load ptr, ptr %4, align 8, !dbg !1613
  %24 = call i32 @clean_server(ptr noundef %23), !dbg !1614
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1615, metadata !DIExpression()), !dbg !1617
  store i32 -1, ptr %6, align 4, !dbg !1617
  %25 = load ptr, ptr %4, align 8, !dbg !1618
  %26 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %25, i32 0, i32 1, !dbg !1619
  %27 = getelementptr inbounds %struct.sockaddr, ptr %26, i32 0, i32 0, !dbg !1620
  %28 = load i16, ptr %27, align 4, !dbg !1620
  %29 = zext i16 %28 to i32, !dbg !1618
  %30 = call i32 @socket(i32 noundef %29, i32 noundef 2, i32 noundef 0) #13, !dbg !1621
  store i32 %30, ptr %6, align 4, !dbg !1622
  %31 = load i32, ptr %6, align 4, !dbg !1623
  %32 = icmp slt i32 %31, 0, !dbg !1625
  br i1 %32, label %33, label %34, !dbg !1626

33:                                               ; preds = %22
  call void @perror(ptr noundef @.str.5), !dbg !1627
  store i32 -1, ptr %3, align 4, !dbg !1629
  br label %151, !dbg !1629

34:                                               ; preds = %22
  %35 = load ptr, ptr %4, align 8, !dbg !1630
  %36 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %35, i32 0, i32 2, !dbg !1631
  %37 = load ptr, ptr %36, align 8, !dbg !1631
  %38 = load i32, ptr %6, align 4, !dbg !1632
  %39 = load ptr, ptr %4, align 8, !dbg !1633
  %40 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %39, i32 0, i32 1, !dbg !1634
  %41 = call ptr @create_ioa_socket_from_fd(ptr noundef %37, i32 noundef %38, ptr noundef null, i32 noundef 17, i32 noundef 8, ptr noundef null, ptr noundef %40), !dbg !1635
  %42 = load ptr, ptr %4, align 8, !dbg !1636
  %43 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %42, i32 0, i32 6, !dbg !1637
  store ptr %41, ptr %43, align 8, !dbg !1638
  %44 = load i32, ptr %6, align 4, !dbg !1639
  %45 = call i32 @set_sock_buf_size(i32 noundef %44, i32 noundef 2097152), !dbg !1640
  %46 = load i32, ptr %6, align 4, !dbg !1641
  %47 = load ptr, ptr %4, align 8, !dbg !1643
  %48 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %47, i32 0, i32 0, !dbg !1644
  %49 = getelementptr inbounds [1025 x i8], ptr %48, i64 0, i64 0, !dbg !1643
  %50 = call i32 @sock_bind_to_device(i32 noundef %46, ptr noundef %49), !dbg !1645
  %51 = icmp slt i32 %50, 0, !dbg !1646
  br i1 %51, label %52, label %56, !dbg !1647

52:                                               ; preds = %34
  %53 = load ptr, ptr %4, align 8, !dbg !1648
  %54 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %53, i32 0, i32 0, !dbg !1650
  %55 = getelementptr inbounds [1025 x i8], ptr %54, i64 0, i64 0, !dbg !1648
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.6, ptr noundef %55), !dbg !1651
  br label %56, !dbg !1652

56:                                               ; preds = %52, %34
  %57 = load i32, ptr %6, align 4, !dbg !1653
  %58 = load ptr, ptr %4, align 8, !dbg !1654
  %59 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %58, i32 0, i32 1, !dbg !1655
  %60 = getelementptr inbounds %struct.sockaddr, ptr %59, i32 0, i32 0, !dbg !1656
  %61 = load i16, ptr %60, align 4, !dbg !1656
  %62 = zext i16 %61 to i32, !dbg !1654
  %63 = call i32 @set_raw_socket_ttl_options(i32 noundef %57, i32 noundef %62), !dbg !1657
  %64 = load i32, ptr %6, align 4, !dbg !1658
  %65 = load ptr, ptr %4, align 8, !dbg !1659
  %66 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %65, i32 0, i32 1, !dbg !1660
  %67 = getelementptr inbounds %struct.sockaddr, ptr %66, i32 0, i32 0, !dbg !1661
  %68 = load i16, ptr %67, align 4, !dbg !1661
  %69 = zext i16 %68 to i32, !dbg !1659
  %70 = call i32 @set_raw_socket_tos_options(i32 noundef %64, i32 noundef %69), !dbg !1662
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1663, metadata !DIExpression()), !dbg !1666
  store i32 60, ptr %7, align 4, !dbg !1666
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1667, metadata !DIExpression()), !dbg !1668
  store i32 0, ptr %8, align 4, !dbg !1668
  br label %71, !dbg !1669

71:                                               ; preds = %86, %56
  call void @llvm.dbg.label(metadata !1670), !dbg !1671
  %72 = load i32, ptr %6, align 4, !dbg !1672
  %73 = load ptr, ptr %4, align 8, !dbg !1674
  %74 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %73, i32 0, i32 1, !dbg !1675
  %75 = call i32 @addr_bind(i32 noundef %72, ptr noundef %74, i32 noundef 1, i32 noundef 1, i32 noundef 17), !dbg !1676
  %76 = icmp slt i32 %75, 0, !dbg !1677
  br i1 %76, label %77, label %91, !dbg !1678

77:                                               ; preds = %71
  call void @perror(ptr noundef @.str.7), !dbg !1679
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1681, metadata !DIExpression()), !dbg !1685
  %78 = load ptr, ptr %4, align 8, !dbg !1686
  %79 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %78, i32 0, i32 1, !dbg !1687
  %80 = getelementptr inbounds [129 x i8], ptr %9, i64 0, i64 0, !dbg !1688
  %81 = call i32 @addr_to_string(ptr noundef %79, ptr noundef %80), !dbg !1689
  %82 = getelementptr inbounds [129 x i8], ptr %9, i64 0, i64 0, !dbg !1690
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 2, ptr noundef @.str.8, ptr noundef %82), !dbg !1691
  %83 = load i32, ptr %8, align 4, !dbg !1692
  %84 = add nsw i32 %83, 1, !dbg !1692
  store i32 %84, ptr %8, align 4, !dbg !1692
  %85 = icmp slt i32 %83, 60, !dbg !1694
  br i1 %85, label %86, label %89, !dbg !1695

86:                                               ; preds = %77
  %87 = getelementptr inbounds [129 x i8], ptr %9, i64 0, i64 0, !dbg !1696
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.9, ptr noundef %87), !dbg !1698
  %88 = call i32 @sleep(i32 noundef 1), !dbg !1699
  br label %71, !dbg !1700

89:                                               ; preds = %77
  %90 = getelementptr inbounds [129 x i8], ptr %9, i64 0, i64 0, !dbg !1701
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.10, ptr noundef %90), !dbg !1702
  call void @exit(i32 noundef -1) #14, !dbg !1703
  unreachable, !dbg !1703

91:                                               ; preds = %71
  %92 = load ptr, ptr %4, align 8, !dbg !1704
  %93 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %92, i32 0, i32 2, !dbg !1705
  %94 = load ptr, ptr %93, align 8, !dbg !1705
  %95 = getelementptr inbounds %struct._ioa_engine, ptr %94, i32 0, i32 1, !dbg !1706
  %96 = load ptr, ptr %95, align 8, !dbg !1706
  %97 = load i32, ptr %6, align 4, !dbg !1707
  %98 = load ptr, ptr %4, align 8, !dbg !1708
  %99 = call ptr @event_new(ptr noundef %96, i32 noundef %97, i16 noundef signext 18, ptr noundef @udp_server_input_handler, ptr noundef %98), !dbg !1709
  %100 = load ptr, ptr %4, align 8, !dbg !1710
  %101 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %100, i32 0, i32 5, !dbg !1711
  store ptr %99, ptr %101, align 8, !dbg !1712
  %102 = load ptr, ptr %4, align 8, !dbg !1713
  %103 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %102, i32 0, i32 5, !dbg !1714
  %104 = load ptr, ptr %103, align 8, !dbg !1714
  %105 = call i32 @event_add(ptr noundef %104, ptr noundef null), !dbg !1715
  %106 = load i32, ptr %5, align 4, !dbg !1716
  %107 = icmp ne i32 %106, 0, !dbg !1716
  br i1 %107, label %108, label %141, !dbg !1718

108:                                              ; preds = %91
  %109 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 34), align 8, !dbg !1719
  %110 = icmp ne i32 %109, 0, !dbg !1722
  br i1 %110, label %120, label %111, !dbg !1723

111:                                              ; preds = %108
  %112 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 18), align 4, !dbg !1724
  %113 = icmp ne i32 %112, 0, !dbg !1725
  br i1 %113, label %120, label %114, !dbg !1726

114:                                              ; preds = %111
  %115 = load ptr, ptr %4, align 8, !dbg !1727
  %116 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %115, i32 0, i32 4, !dbg !1728
  %117 = load i32, ptr %116, align 8, !dbg !1728
  %118 = load ptr, ptr %4, align 8, !dbg !1729
  %119 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %118, i32 0, i32 1, !dbg !1730
  call void @addr_debug_print(i32 noundef %117, ptr noundef %119, ptr noundef @.str.11), !dbg !1731
  br label %140, !dbg !1731

120:                                              ; preds = %111, %108
  %121 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 18), align 4, !dbg !1732
  %122 = icmp ne i32 %121, 0, !dbg !1734
  br i1 %122, label %129, label %123, !dbg !1735

123:                                              ; preds = %120
  %124 = load ptr, ptr %4, align 8, !dbg !1736
  %125 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %124, i32 0, i32 4, !dbg !1737
  %126 = load i32, ptr %125, align 8, !dbg !1737
  %127 = load ptr, ptr %4, align 8, !dbg !1738
  %128 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %127, i32 0, i32 1, !dbg !1739
  call void @addr_debug_print(i32 noundef %126, ptr noundef %128, ptr noundef @.str.12), !dbg !1740
  br label %139, !dbg !1740

129:                                              ; preds = %120
  %130 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 34), align 8, !dbg !1741
  %131 = icmp ne i32 %130, 0, !dbg !1743
  br i1 %131, label %138, label %132, !dbg !1744

132:                                              ; preds = %129
  %133 = load ptr, ptr %4, align 8, !dbg !1745
  %134 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %133, i32 0, i32 4, !dbg !1746
  %135 = load i32, ptr %134, align 8, !dbg !1746
  %136 = load ptr, ptr %4, align 8, !dbg !1747
  %137 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %136, i32 0, i32 1, !dbg !1748
  call void @addr_debug_print(i32 noundef %135, ptr noundef %137, ptr noundef @.str.13), !dbg !1749
  br label %138, !dbg !1749

138:                                              ; preds = %132, %129
  br label %139

139:                                              ; preds = %138, %123
  br label %140

140:                                              ; preds = %139, %114
  br label %141, !dbg !1750

141:                                              ; preds = %140, %91
  %142 = load ptr, ptr %4, align 8, !dbg !1751
  %143 = icmp ne ptr %142, null, !dbg !1751
  br i1 %143, label %144, label %150, !dbg !1751

144:                                              ; preds = %141
  %145 = load ptr, ptr %4, align 8, !dbg !1751
  %146 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %145, i32 0, i32 4, !dbg !1751
  %147 = load i32, ptr %146, align 8, !dbg !1751
  %148 = icmp eq i32 %147, 2, !dbg !1751
  br i1 %148, label %149, label %150, !dbg !1753

149:                                              ; preds = %144
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.14, ptr noundef @__FUNCTION__.create_server_socket, i32 noundef 807), !dbg !1751
  br label %150, !dbg !1751

150:                                              ; preds = %149, %144, %141
  store i32 0, ptr %3, align 4, !dbg !1754
  br label %151, !dbg !1754

151:                                              ; preds = %150, %33, %21
  %152 = load i32, ptr %3, align 4, !dbg !1755
  ret i32 %152, !dbg !1755
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clean_server(ptr noundef %0) #0 !dbg !1756 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1759, metadata !DIExpression()), !dbg !1760
  %3 = load ptr, ptr %2, align 8, !dbg !1761
  %4 = icmp ne ptr %3, null, !dbg !1761
  br i1 %4, label %5, label %26, !dbg !1763

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8, !dbg !1764
  %7 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %6, i32 0, i32 5, !dbg !1764
  %8 = load ptr, ptr %7, align 8, !dbg !1764
  %9 = icmp ne ptr %8, null, !dbg !1764
  br i1 %9, label %10, label %20, !dbg !1767

10:                                               ; preds = %5
  %11 = load ptr, ptr %2, align 8, !dbg !1768
  %12 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %11, i32 0, i32 5, !dbg !1768
  %13 = load ptr, ptr %12, align 8, !dbg !1768
  %14 = call i32 @event_del(ptr noundef %13), !dbg !1768
  %15 = load ptr, ptr %2, align 8, !dbg !1768
  %16 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %15, i32 0, i32 5, !dbg !1768
  %17 = load ptr, ptr %16, align 8, !dbg !1768
  call void @event_free(ptr noundef %17), !dbg !1768
  %18 = load ptr, ptr %2, align 8, !dbg !1768
  %19 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %18, i32 0, i32 5, !dbg !1768
  store ptr null, ptr %19, align 8, !dbg !1768
  br label %20, !dbg !1768

20:                                               ; preds = %10, %5
  %21 = load ptr, ptr %2, align 8, !dbg !1770
  %22 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %21, i32 0, i32 6, !dbg !1771
  %23 = load ptr, ptr %22, align 8, !dbg !1771
  call void @close_ioa_socket(ptr noundef %23), !dbg !1772
  %24 = load ptr, ptr %2, align 8, !dbg !1773
  %25 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %24, i32 0, i32 6, !dbg !1774
  store ptr null, ptr %25, align 8, !dbg !1775
  br label %26, !dbg !1776

26:                                               ; preds = %20, %1
  ret i32 0, !dbg !1777
}

; Function Attrs: nounwind
declare i32 @socket(i32 noundef, i32 noundef, i32 noundef) #6

declare void @perror(ptr noundef) #2

declare ptr @create_ioa_socket_from_fd(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #2

declare i32 @set_sock_buf_size(i32 noundef, i32 noundef) #2

declare i32 @sock_bind_to_device(i32 noundef, ptr noundef) #2

declare i32 @set_raw_socket_ttl_options(i32 noundef, i32 noundef) #2

declare i32 @set_raw_socket_tos_options(i32 noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

declare i32 @addr_bind(i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare i32 @addr_to_string(ptr noundef, ptr noundef) #2

declare i32 @sleep(i32 noundef) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #7

declare ptr @event_new(ptr noundef, i32 noundef, i16 noundef signext, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udp_server_input_handler(i32 noundef %0, i16 noundef signext %1, ptr noundef %2) #0 !dbg !93 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %union.ioa_addr, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %union.__SOCKADDR_ARG, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1778, metadata !DIExpression()), !dbg !1779
  store i16 %1, ptr %5, align 2
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1780, metadata !DIExpression()), !dbg !1781
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1782, metadata !DIExpression()), !dbg !1783
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1784, metadata !DIExpression()), !dbg !1785
  store i32 0, ptr %7, align 4, !dbg !1785
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1786, metadata !DIExpression()), !dbg !1787
  %24 = load ptr, ptr %6, align 8, !dbg !1788
  store ptr %24, ptr %8, align 8, !dbg !1787
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1789, metadata !DIExpression()), !dbg !1790
  %25 = load ptr, ptr %8, align 8, !dbg !1791
  %26 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %25, i32 0, i32 6, !dbg !1792
  %27 = load ptr, ptr %26, align 8, !dbg !1792
  store ptr %27, ptr %9, align 8, !dbg !1790
  %28 = load ptr, ptr %8, align 8, !dbg !1793
  %29 = icmp ne ptr %28, null, !dbg !1793
  br i1 %29, label %30, label %36, !dbg !1793

30:                                               ; preds = %3
  %31 = load ptr, ptr %8, align 8, !dbg !1793
  %32 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %31, i32 0, i32 4, !dbg !1793
  %33 = load i32, ptr %32, align 8, !dbg !1793
  %34 = icmp eq i32 %33, 2, !dbg !1793
  br i1 %34, label %35, label %36, !dbg !1795

35:                                               ; preds = %30
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.4, ptr noundef @__FUNCTION__.udp_server_input_handler, i32 noundef 622), !dbg !1793
  br label %36, !dbg !1793

36:                                               ; preds = %35, %30, %3
  %37 = load i16, ptr %5, align 2, !dbg !1796
  %38 = sext i16 %37 to i32, !dbg !1796
  %39 = and i32 %38, 2, !dbg !1798
  %40 = icmp ne i32 %39, 0, !dbg !1798
  br i1 %40, label %42, label %41, !dbg !1799

41:                                               ; preds = %36
  br label %321, !dbg !1800

42:                                               ; preds = %36
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1802, metadata !DIExpression()), !dbg !1803
  store ptr null, ptr %10, align 8, !dbg !1803
  br label %43, !dbg !1804

43:                                               ; preds = %311, %42
  call void @llvm.dbg.label(metadata !1805), !dbg !1806
  %44 = load ptr, ptr %8, align 8, !dbg !1807
  %45 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %44, i32 0, i32 2, !dbg !1808
  %46 = load ptr, ptr %45, align 8, !dbg !1808
  %47 = call ptr @ioa_network_buffer_allocate(ptr noundef %46), !dbg !1809
  store ptr %47, ptr %10, align 8, !dbg !1810
  %48 = load ptr, ptr %10, align 8, !dbg !1811
  %49 = load ptr, ptr %8, align 8, !dbg !1812
  %50 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %49, i32 0, i32 8, !dbg !1813
  %51 = getelementptr inbounds %struct.message_to_relay, ptr %50, i32 0, i32 2, !dbg !1814
  %52 = getelementptr inbounds %struct.socket_message, ptr %51, i32 0, i32 1, !dbg !1815
  %53 = getelementptr inbounds %struct._ioa_net_data, ptr %52, i32 0, i32 1, !dbg !1816
  store ptr %48, ptr %53, align 8, !dbg !1817
  %54 = load ptr, ptr %8, align 8, !dbg !1818
  %55 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %54, i32 0, i32 8, !dbg !1819
  %56 = getelementptr inbounds %struct.message_to_relay, ptr %55, i32 0, i32 2, !dbg !1820
  %57 = getelementptr inbounds %struct.socket_message, ptr %56, i32 0, i32 1, !dbg !1821
  %58 = getelementptr inbounds %struct._ioa_net_data, ptr %57, i32 0, i32 2, !dbg !1822
  store i32 -1, ptr %58, align 8, !dbg !1823
  %59 = load ptr, ptr %8, align 8, !dbg !1824
  %60 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %59, i32 0, i32 8, !dbg !1825
  %61 = getelementptr inbounds %struct.message_to_relay, ptr %60, i32 0, i32 2, !dbg !1826
  %62 = getelementptr inbounds %struct.socket_message, ptr %61, i32 0, i32 1, !dbg !1827
  %63 = getelementptr inbounds %struct._ioa_net_data, ptr %62, i32 0, i32 3, !dbg !1828
  store i32 -1, ptr %63, align 4, !dbg !1829
  %64 = load ptr, ptr %8, align 8, !dbg !1830
  %65 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %64, i32 0, i32 8, !dbg !1831
  %66 = getelementptr inbounds %struct.message_to_relay, ptr %65, i32 0, i32 2, !dbg !1832
  %67 = getelementptr inbounds %struct.socket_message, ptr %66, i32 0, i32 2, !dbg !1833
  store i32 1, ptr %67, align 8, !dbg !1834
  %68 = load ptr, ptr %8, align 8, !dbg !1835
  %69 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %68, i32 0, i32 8, !dbg !1836
  %70 = getelementptr inbounds %struct.message_to_relay, ptr %69, i32 0, i32 2, !dbg !1837
  %71 = getelementptr inbounds %struct.socket_message, ptr %70, i32 0, i32 1, !dbg !1838
  %72 = getelementptr inbounds %struct._ioa_net_data, ptr %71, i32 0, i32 0, !dbg !1839
  call void @addr_set_any(ptr noundef %72), !dbg !1840
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1841, metadata !DIExpression()), !dbg !1845
  store i64 0, ptr %11, align 8, !dbg !1845
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1846, metadata !DIExpression()), !dbg !1847
  store i32 64, ptr %12, align 4, !dbg !1847
  %73 = load i32, ptr %4, align 4, !dbg !1848
  %74 = load ptr, ptr %8, align 8, !dbg !1849
  %75 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %74, i32 0, i32 8, !dbg !1850
  %76 = getelementptr inbounds %struct.message_to_relay, ptr %75, i32 0, i32 2, !dbg !1851
  %77 = getelementptr inbounds %struct.socket_message, ptr %76, i32 0, i32 1, !dbg !1852
  %78 = getelementptr inbounds %struct._ioa_net_data, ptr %77, i32 0, i32 0, !dbg !1853
  %79 = load ptr, ptr %8, align 8, !dbg !1854
  %80 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %79, i32 0, i32 1, !dbg !1855
  %81 = load ptr, ptr %10, align 8, !dbg !1856
  %82 = call ptr @ioa_network_buffer_data(ptr noundef %81), !dbg !1857
  %83 = call i64 @ioa_network_buffer_get_capacity_udp(), !dbg !1858
  %84 = trunc i64 %83 to i32, !dbg !1859
  %85 = load ptr, ptr %8, align 8, !dbg !1860
  %86 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %85, i32 0, i32 8, !dbg !1861
  %87 = getelementptr inbounds %struct.message_to_relay, ptr %86, i32 0, i32 2, !dbg !1862
  %88 = getelementptr inbounds %struct.socket_message, ptr %87, i32 0, i32 1, !dbg !1863
  %89 = getelementptr inbounds %struct._ioa_net_data, ptr %88, i32 0, i32 2, !dbg !1864
  %90 = load ptr, ptr %8, align 8, !dbg !1865
  %91 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %90, i32 0, i32 8, !dbg !1866
  %92 = getelementptr inbounds %struct.message_to_relay, ptr %91, i32 0, i32 2, !dbg !1867
  %93 = getelementptr inbounds %struct.socket_message, ptr %92, i32 0, i32 1, !dbg !1868
  %94 = getelementptr inbounds %struct._ioa_net_data, ptr %93, i32 0, i32 3, !dbg !1869
  %95 = load ptr, ptr %8, align 8, !dbg !1870
  %96 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %95, i32 0, i32 2, !dbg !1871
  %97 = load ptr, ptr %96, align 8, !dbg !1871
  %98 = getelementptr inbounds %struct._ioa_engine, ptr %97, i32 0, i32 15, !dbg !1872
  %99 = getelementptr inbounds [65537 x i8], ptr %98, i64 0, i64 0, !dbg !1870
  %100 = load i32, ptr %12, align 4, !dbg !1873
  %101 = call i32 @udp_recvfrom(i32 noundef %73, ptr noundef %78, ptr noundef %80, ptr noundef %82, i32 noundef %84, ptr noundef %89, ptr noundef %94, ptr noundef %99, i32 noundef %100, ptr noundef null), !dbg !1874
  %102 = sext i32 %101 to i64, !dbg !1874
  store i64 %102, ptr %11, align 8, !dbg !1875
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1876, metadata !DIExpression()), !dbg !1877
  %103 = call i32 @is_connreset(), !dbg !1878
  store i32 %103, ptr %13, align 4, !dbg !1877
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1879, metadata !DIExpression()), !dbg !1880
  %104 = call i32 @would_block(), !dbg !1881
  store i32 %104, ptr %14, align 4, !dbg !1880
  %105 = load i64, ptr %11, align 8, !dbg !1882
  %106 = icmp slt i64 %105, 0, !dbg !1884
  br i1 %106, label %107, label %204, !dbg !1885

107:                                              ; preds = %43
  %108 = load i32, ptr %14, align 4, !dbg !1886
  %109 = icmp ne i32 %108, 0, !dbg !1886
  br i1 %109, label %110, label %134, !dbg !1889

110:                                              ; preds = %107
  %111 = load ptr, ptr %8, align 8, !dbg !1890
  %112 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %111, i32 0, i32 2, !dbg !1892
  %113 = load ptr, ptr %112, align 8, !dbg !1892
  %114 = load ptr, ptr %8, align 8, !dbg !1893
  %115 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %114, i32 0, i32 8, !dbg !1894
  %116 = getelementptr inbounds %struct.message_to_relay, ptr %115, i32 0, i32 2, !dbg !1895
  %117 = getelementptr inbounds %struct.socket_message, ptr %116, i32 0, i32 1, !dbg !1896
  %118 = getelementptr inbounds %struct._ioa_net_data, ptr %117, i32 0, i32 1, !dbg !1897
  %119 = load ptr, ptr %118, align 8, !dbg !1897
  call void @ioa_network_buffer_delete(ptr noundef %113, ptr noundef %119), !dbg !1898
  %120 = load ptr, ptr %8, align 8, !dbg !1899
  %121 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %120, i32 0, i32 8, !dbg !1900
  %122 = getelementptr inbounds %struct.message_to_relay, ptr %121, i32 0, i32 2, !dbg !1901
  %123 = getelementptr inbounds %struct.socket_message, ptr %122, i32 0, i32 1, !dbg !1902
  %124 = getelementptr inbounds %struct._ioa_net_data, ptr %123, i32 0, i32 1, !dbg !1903
  store ptr null, ptr %124, align 8, !dbg !1904
  %125 = load ptr, ptr %8, align 8, !dbg !1905
  %126 = icmp ne ptr %125, null, !dbg !1905
  br i1 %126, label %127, label %133, !dbg !1905

127:                                              ; preds = %110
  %128 = load ptr, ptr %8, align 8, !dbg !1905
  %129 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %128, i32 0, i32 4, !dbg !1905
  %130 = load i32, ptr %129, align 8, !dbg !1905
  %131 = icmp eq i32 %130, 2, !dbg !1905
  br i1 %131, label %132, label %133, !dbg !1907

132:                                              ; preds = %127
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.14, ptr noundef @__FUNCTION__.udp_server_input_handler, i32 noundef 660), !dbg !1905
  br label %133, !dbg !1905

133:                                              ; preds = %132, %127, %110
  br label %321, !dbg !1908

134:                                              ; preds = %107
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1909, metadata !DIExpression()), !dbg !1910
  store i32 8256, ptr %15, align 4, !dbg !1910
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1911, metadata !DIExpression()), !dbg !1912
  store i32 0, ptr %16, align 4, !dbg !1912
  call void @llvm.dbg.declare(metadata ptr %17, metadata !1913, metadata !DIExpression()), !dbg !1914
  call void @llvm.dbg.declare(metadata ptr %18, metadata !1915, metadata !DIExpression()), !dbg !1916
  store i32 0, ptr %18, align 4, !dbg !1916
  call void @llvm.dbg.declare(metadata ptr %19, metadata !1917, metadata !DIExpression()), !dbg !1918
  store i32 0, ptr %19, align 4, !dbg !1918
  call void @llvm.dbg.declare(metadata ptr %20, metadata !1919, metadata !DIExpression()), !dbg !1920
  %135 = load ptr, ptr %8, align 8, !dbg !1921
  %136 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %135, i32 0, i32 9, !dbg !1922
  %137 = load i32, ptr %136, align 8, !dbg !1922
  store i32 %137, ptr %20, align 4, !dbg !1920
  %138 = load i32, ptr %4, align 4, !dbg !1923
  %139 = load ptr, ptr %8, align 8, !dbg !1924
  %140 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %139, i32 0, i32 1, !dbg !1925
  %141 = load ptr, ptr %8, align 8, !dbg !1926
  %142 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %141, i32 0, i32 2, !dbg !1927
  %143 = load ptr, ptr %142, align 8, !dbg !1927
  %144 = getelementptr inbounds %struct._ioa_engine, ptr %143, i32 0, i32 15, !dbg !1928
  %145 = getelementptr inbounds [65537 x i8], ptr %144, i64 0, i64 0, !dbg !1926
  %146 = load i32, ptr %15, align 4, !dbg !1929
  %147 = call i32 @udp_recvfrom(i32 noundef %138, ptr noundef %17, ptr noundef %140, ptr noundef @udp_server_input_handler.buffer, i32 noundef 65535, ptr noundef %18, ptr noundef %19, ptr noundef %145, i32 noundef %146, ptr noundef %16), !dbg !1930
  br label %148, !dbg !1931

148:                                              ; preds = %169, %134
  %149 = load i32, ptr %4, align 4, !dbg !1932
  %150 = load ptr, ptr %10, align 8, !dbg !1934
  %151 = call ptr @ioa_network_buffer_data(ptr noundef %150), !dbg !1935
  %152 = call i64 @ioa_network_buffer_get_capacity_udp(), !dbg !1936
  %153 = load i32, ptr %12, align 4, !dbg !1937
  %154 = load ptr, ptr %8, align 8, !dbg !1938
  %155 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %154, i32 0, i32 8, !dbg !1939
  %156 = getelementptr inbounds %struct.message_to_relay, ptr %155, i32 0, i32 2, !dbg !1940
  %157 = getelementptr inbounds %struct.socket_message, ptr %156, i32 0, i32 1, !dbg !1941
  %158 = getelementptr inbounds %struct._ioa_net_data, ptr %157, i32 0, i32 0, !dbg !1942
  store ptr %158, ptr %21, align 8, !dbg !1943
  %159 = getelementptr inbounds %union.__SOCKADDR_ARG, ptr %21, i32 0, i32 0, !dbg !1944
  %160 = load ptr, ptr %159, align 8, !dbg !1944
  %161 = call i64 @recvfrom(i32 noundef %149, ptr noundef %151, i64 noundef %152, i32 noundef %153, ptr %160, ptr noundef %20), !dbg !1944
  store i64 %161, ptr %11, align 8, !dbg !1945
  br label %162, !dbg !1946

162:                                              ; preds = %148
  %163 = load i64, ptr %11, align 8, !dbg !1947
  %164 = icmp slt i64 %163, 0, !dbg !1948
  br i1 %164, label %165, label %169, !dbg !1949

165:                                              ; preds = %162
  %166 = call ptr @__errno_location() #15, !dbg !1950
  %167 = load i32, ptr %166, align 4, !dbg !1950
  %168 = icmp eq i32 %167, 4, !dbg !1951
  br label %169

169:                                              ; preds = %165, %162
  %170 = phi i1 [ false, %162 ], [ %168, %165 ], !dbg !1952
  br i1 %170, label %148, label %171, !dbg !1946, !llvm.loop !1953

171:                                              ; preds = %169
  %172 = call i32 @is_connreset(), !dbg !1955
  store i32 %172, ptr %13, align 4, !dbg !1956
  %173 = call i32 @would_block(), !dbg !1957
  store i32 %173, ptr %14, align 4, !dbg !1958
  %174 = load i32, ptr %13, align 4, !dbg !1959
  %175 = icmp ne i32 %174, 0, !dbg !1959
  br i1 %175, label %176, label %203, !dbg !1961

176:                                              ; preds = %171
  %177 = load ptr, ptr %8, align 8, !dbg !1962
  %178 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %177, i32 0, i32 2, !dbg !1964
  %179 = load ptr, ptr %178, align 8, !dbg !1964
  %180 = load ptr, ptr %8, align 8, !dbg !1965
  %181 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %180, i32 0, i32 8, !dbg !1966
  %182 = getelementptr inbounds %struct.message_to_relay, ptr %181, i32 0, i32 2, !dbg !1967
  %183 = getelementptr inbounds %struct.socket_message, ptr %182, i32 0, i32 1, !dbg !1968
  %184 = getelementptr inbounds %struct._ioa_net_data, ptr %183, i32 0, i32 1, !dbg !1969
  %185 = load ptr, ptr %184, align 8, !dbg !1969
  call void @ioa_network_buffer_delete(ptr noundef %179, ptr noundef %185), !dbg !1970
  %186 = load ptr, ptr %8, align 8, !dbg !1971
  %187 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %186, i32 0, i32 8, !dbg !1972
  %188 = getelementptr inbounds %struct.message_to_relay, ptr %187, i32 0, i32 2, !dbg !1973
  %189 = getelementptr inbounds %struct.socket_message, ptr %188, i32 0, i32 1, !dbg !1974
  %190 = getelementptr inbounds %struct._ioa_net_data, ptr %189, i32 0, i32 1, !dbg !1975
  store ptr null, ptr %190, align 8, !dbg !1976
  %191 = load ptr, ptr %8, align 8, !dbg !1977
  %192 = load i32, ptr %4, align 4, !dbg !1978
  %193 = call i32 @reopen_server_socket(ptr noundef %191, i32 noundef %192), !dbg !1979
  %194 = load ptr, ptr %8, align 8, !dbg !1980
  %195 = icmp ne ptr %194, null, !dbg !1980
  br i1 %195, label %196, label %202, !dbg !1980

196:                                              ; preds = %176
  %197 = load ptr, ptr %8, align 8, !dbg !1980
  %198 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %197, i32 0, i32 4, !dbg !1980
  %199 = load i32, ptr %198, align 8, !dbg !1980
  %200 = icmp eq i32 %199, 2, !dbg !1980
  br i1 %200, label %201, label %202, !dbg !1982

201:                                              ; preds = %196
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.14, ptr noundef @__FUNCTION__.udp_server_input_handler, i32 noundef 691), !dbg !1980
  br label %202, !dbg !1980

202:                                              ; preds = %201, %196, %176
  br label %321, !dbg !1983

203:                                              ; preds = %171
  br label %204, !dbg !1984

204:                                              ; preds = %203, %43
  %205 = load i64, ptr %11, align 8, !dbg !1985
  %206 = icmp slt i64 %205, 0, !dbg !1987
  br i1 %206, label %207, label %241, !dbg !1988

207:                                              ; preds = %204
  %208 = load i32, ptr %14, align 4, !dbg !1989
  %209 = icmp ne i32 %208, 0, !dbg !1989
  br i1 %209, label %217, label %210, !dbg !1992

210:                                              ; preds = %207
  %211 = load i32, ptr %13, align 4, !dbg !1993
  %212 = icmp ne i32 %211, 0, !dbg !1993
  br i1 %212, label %217, label %213, !dbg !1994

213:                                              ; preds = %210
  call void @llvm.dbg.declare(metadata ptr %22, metadata !1995, metadata !DIExpression()), !dbg !1997
  %214 = call ptr @__errno_location() #15, !dbg !1998
  %215 = load i32, ptr %214, align 4, !dbg !1998
  store i32 %215, ptr %22, align 4, !dbg !1997
  call void @perror(ptr noundef @__FUNCTION__.udp_server_input_handler), !dbg !1999
  %216 = load i32, ptr %22, align 4, !dbg !2000
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.15, ptr noundef @__FUNCTION__.udp_server_input_handler, i32 noundef %216), !dbg !2001
  br label %217, !dbg !2002

217:                                              ; preds = %213, %210, %207
  %218 = load ptr, ptr %8, align 8, !dbg !2003
  %219 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %218, i32 0, i32 2, !dbg !2004
  %220 = load ptr, ptr %219, align 8, !dbg !2004
  %221 = load ptr, ptr %8, align 8, !dbg !2005
  %222 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %221, i32 0, i32 8, !dbg !2006
  %223 = getelementptr inbounds %struct.message_to_relay, ptr %222, i32 0, i32 2, !dbg !2007
  %224 = getelementptr inbounds %struct.socket_message, ptr %223, i32 0, i32 1, !dbg !2008
  %225 = getelementptr inbounds %struct._ioa_net_data, ptr %224, i32 0, i32 1, !dbg !2009
  %226 = load ptr, ptr %225, align 8, !dbg !2009
  call void @ioa_network_buffer_delete(ptr noundef %220, ptr noundef %226), !dbg !2010
  %227 = load ptr, ptr %8, align 8, !dbg !2011
  %228 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %227, i32 0, i32 8, !dbg !2012
  %229 = getelementptr inbounds %struct.message_to_relay, ptr %228, i32 0, i32 2, !dbg !2013
  %230 = getelementptr inbounds %struct.socket_message, ptr %229, i32 0, i32 1, !dbg !2014
  %231 = getelementptr inbounds %struct._ioa_net_data, ptr %230, i32 0, i32 1, !dbg !2015
  store ptr null, ptr %231, align 8, !dbg !2016
  %232 = load ptr, ptr %8, align 8, !dbg !2017
  %233 = icmp ne ptr %232, null, !dbg !2017
  br i1 %233, label %234, label %240, !dbg !2017

234:                                              ; preds = %217
  %235 = load ptr, ptr %8, align 8, !dbg !2017
  %236 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %235, i32 0, i32 4, !dbg !2017
  %237 = load i32, ptr %236, align 8, !dbg !2017
  %238 = icmp eq i32 %237, 2, !dbg !2017
  br i1 %238, label %239, label %240, !dbg !2019

239:                                              ; preds = %234
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.14, ptr noundef @__FUNCTION__.udp_server_input_handler, i32 noundef 704), !dbg !2017
  br label %240, !dbg !2017

240:                                              ; preds = %239, %234, %217
  br label %321, !dbg !2020

241:                                              ; preds = %204
  %242 = load i64, ptr %11, align 8, !dbg !2021
  %243 = icmp sgt i64 %242, 0, !dbg !2023
  br i1 %243, label %244, label %290, !dbg !2024

244:                                              ; preds = %241
  call void @llvm.dbg.declare(metadata ptr %23, metadata !2025, metadata !DIExpression()), !dbg !2027
  store i32 0, ptr %23, align 4, !dbg !2027
  %245 = load ptr, ptr %10, align 8, !dbg !2028
  %246 = load i64, ptr %11, align 8, !dbg !2029
  call void @ioa_network_buffer_set_size(ptr noundef %245, i64 noundef %246), !dbg !2030
  %247 = load ptr, ptr %8, align 8, !dbg !2031
  %248 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %247, i32 0, i32 10, !dbg !2033
  %249 = load ptr, ptr %248, align 8, !dbg !2033
  %250 = icmp ne ptr %249, null, !dbg !2031
  br i1 %250, label %251, label %261, !dbg !2034

251:                                              ; preds = %244
  %252 = load ptr, ptr %8, align 8, !dbg !2035
  %253 = load ptr, ptr %9, align 8, !dbg !2037
  %254 = call i32 @create_new_connected_udp_socket(ptr noundef %252, ptr noundef %253), !dbg !2038
  store i32 %254, ptr %23, align 4, !dbg !2039
  %255 = load i32, ptr %23, align 4, !dbg !2040
  %256 = icmp slt i32 %255, 0, !dbg !2042
  br i1 %256, label %257, label %260, !dbg !2043

257:                                              ; preds = %251
  %258 = load i64, ptr %11, align 8, !dbg !2044
  %259 = trunc i64 %258 to i32, !dbg !2046
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.16, i32 noundef %259), !dbg !2047
  br label %260, !dbg !2048

260:                                              ; preds = %257, %251
  br label %277, !dbg !2049

261:                                              ; preds = %244
  %262 = load ptr, ptr %9, align 8, !dbg !2050
  %263 = load ptr, ptr %8, align 8, !dbg !2052
  %264 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %263, i32 0, i32 8, !dbg !2053
  %265 = getelementptr inbounds %struct.message_to_relay, ptr %264, i32 0, i32 2, !dbg !2054
  %266 = getelementptr inbounds %struct.socket_message, ptr %265, i32 0, i32 0, !dbg !2055
  store ptr %262, ptr %266, align 8, !dbg !2056
  %267 = load ptr, ptr %8, align 8, !dbg !2057
  %268 = load ptr, ptr %8, align 8, !dbg !2058
  %269 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %268, i32 0, i32 8, !dbg !2059
  %270 = load ptr, ptr %8, align 8, !dbg !2060
  %271 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %270, i32 0, i32 2, !dbg !2061
  %272 = load ptr, ptr %271, align 8, !dbg !2061
  %273 = load ptr, ptr %8, align 8, !dbg !2062
  %274 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %273, i32 0, i32 3, !dbg !2063
  %275 = load ptr, ptr %274, align 8, !dbg !2063
  %276 = call i32 @handle_udp_packet(ptr noundef %267, ptr noundef %269, ptr noundef %272, ptr noundef %275), !dbg !2064
  store i32 %276, ptr %23, align 4, !dbg !2065
  br label %277

277:                                              ; preds = %261, %260
  %278 = load i32, ptr %23, align 4, !dbg !2066
  %279 = icmp slt i32 %278, 0, !dbg !2068
  br i1 %279, label %280, label %289, !dbg !2069

280:                                              ; preds = %277
  %281 = load ptr, ptr %8, align 8, !dbg !2070
  %282 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %281, i32 0, i32 2, !dbg !2070
  %283 = load ptr, ptr %282, align 8, !dbg !2070
  %284 = getelementptr inbounds %struct._ioa_engine, ptr %283, i32 0, i32 3, !dbg !2070
  %285 = load i32, ptr %284, align 4, !dbg !2070
  %286 = icmp eq i32 %285, 2, !dbg !2070
  br i1 %286, label %287, label %288, !dbg !2073

287:                                              ; preds = %280
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.17), !dbg !2074
  br label %288, !dbg !2076

288:                                              ; preds = %287, %280
  br label %289, !dbg !2077

289:                                              ; preds = %288, %277
  br label %290, !dbg !2078

290:                                              ; preds = %289, %241
  %291 = load ptr, ptr %8, align 8, !dbg !2079
  %292 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %291, i32 0, i32 2, !dbg !2080
  %293 = load ptr, ptr %292, align 8, !dbg !2080
  %294 = load ptr, ptr %8, align 8, !dbg !2081
  %295 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %294, i32 0, i32 8, !dbg !2082
  %296 = getelementptr inbounds %struct.message_to_relay, ptr %295, i32 0, i32 2, !dbg !2083
  %297 = getelementptr inbounds %struct.socket_message, ptr %296, i32 0, i32 1, !dbg !2084
  %298 = getelementptr inbounds %struct._ioa_net_data, ptr %297, i32 0, i32 1, !dbg !2085
  %299 = load ptr, ptr %298, align 8, !dbg !2085
  call void @ioa_network_buffer_delete(ptr noundef %293, ptr noundef %299), !dbg !2086
  %300 = load ptr, ptr %8, align 8, !dbg !2087
  %301 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %300, i32 0, i32 8, !dbg !2088
  %302 = getelementptr inbounds %struct.message_to_relay, ptr %301, i32 0, i32 2, !dbg !2089
  %303 = getelementptr inbounds %struct.socket_message, ptr %302, i32 0, i32 1, !dbg !2090
  %304 = getelementptr inbounds %struct._ioa_net_data, ptr %303, i32 0, i32 1, !dbg !2091
  store ptr null, ptr %304, align 8, !dbg !2092
  %305 = load i64, ptr %11, align 8, !dbg !2093
  %306 = icmp sgt i64 %305, 0, !dbg !2095
  br i1 %306, label %307, label %312, !dbg !2096

307:                                              ; preds = %290
  %308 = load i32, ptr %7, align 4, !dbg !2097
  %309 = add nsw i32 %308, 1, !dbg !2097
  store i32 %309, ptr %7, align 4, !dbg !2097
  %310 = icmp slt i32 %308, 16, !dbg !2098
  br i1 %310, label %311, label %312, !dbg !2099

311:                                              ; preds = %307
  br label %43, !dbg !2100

312:                                              ; preds = %307, %290
  %313 = load ptr, ptr %8, align 8, !dbg !2101
  %314 = icmp ne ptr %313, null, !dbg !2101
  br i1 %314, label %315, label %321, !dbg !2101

315:                                              ; preds = %312
  %316 = load ptr, ptr %8, align 8, !dbg !2101
  %317 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %316, i32 0, i32 4, !dbg !2101
  %318 = load i32, ptr %317, align 8, !dbg !2101
  %319 = icmp eq i32 %318, 2, !dbg !2101
  br i1 %319, label %320, label %321, !dbg !2103

320:                                              ; preds = %315
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.14, ptr noundef @__FUNCTION__.udp_server_input_handler, i32 noundef 738), !dbg !2101
  br label %321, !dbg !2101

321:                                              ; preds = %41, %133, %202, %240, %320, %315, %312
  ret void, !dbg !2104
}

declare i32 @event_add(ptr noundef, ptr noundef) #2

declare void @addr_debug_print(i32 noundef, ptr noundef, ptr noundef) #2

declare i32 @event_del(ptr noundef) #2

declare void @event_free(ptr noundef) #2

declare void @close_ioa_socket(ptr noundef) #2

declare ptr @ioa_network_buffer_allocate(ptr noundef) #2

declare void @addr_set_any(ptr noundef) #2

declare i32 @udp_recvfrom(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

declare i64 @ioa_network_buffer_get_capacity_udp() #2

declare i32 @is_connreset() #2

declare i32 @would_block() #2

declare void @ioa_network_buffer_delete(ptr noundef, ptr noundef) #2

declare i64 @recvfrom(i32 noundef, ptr noundef, i64 noundef, i32 noundef, ptr, ptr noundef) #2

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #8

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reopen_server_socket(ptr noundef %0, i32 noundef %1) #0 !dbg !2105 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [129 x i8], align 16
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2106, metadata !DIExpression()), !dbg !2107
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2108, metadata !DIExpression()), !dbg !2109
  br label %8, !dbg !2110

8:                                                ; preds = %2
  %9 = load i32, ptr %5, align 4, !dbg !2111
  store i32 %9, ptr %5, align 4, !dbg !2111
  br label %10, !dbg !2111

10:                                               ; preds = %8
  %11 = load ptr, ptr %4, align 8, !dbg !2113
  %12 = icmp ne ptr %11, null, !dbg !2113
  br i1 %12, label %14, label %13, !dbg !2115

13:                                               ; preds = %10
  store i32 0, ptr %3, align 4, !dbg !2116
  br label %173, !dbg !2116

14:                                               ; preds = %10
  %15 = load ptr, ptr %4, align 8, !dbg !2117
  %16 = icmp ne ptr %15, null, !dbg !2117
  br i1 %16, label %17, label %23, !dbg !2117

17:                                               ; preds = %14
  %18 = load ptr, ptr %4, align 8, !dbg !2117
  %19 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %18, i32 0, i32 4, !dbg !2117
  %20 = load i32, ptr %19, align 8, !dbg !2117
  %21 = icmp eq i32 %20, 2, !dbg !2117
  br i1 %21, label %22, label %23, !dbg !2119

22:                                               ; preds = %17
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.4, ptr noundef @__FUNCTION__.reopen_server_socket, i32 noundef 819), !dbg !2117
  br label %23, !dbg !2117

23:                                               ; preds = %22, %17, %14
  %24 = load ptr, ptr %4, align 8, !dbg !2120
  %25 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %24, i32 0, i32 5, !dbg !2120
  %26 = load ptr, ptr %25, align 8, !dbg !2120
  %27 = icmp ne ptr %26, null, !dbg !2120
  br i1 %27, label %28, label %38, !dbg !2123

28:                                               ; preds = %23
  %29 = load ptr, ptr %4, align 8, !dbg !2124
  %30 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %29, i32 0, i32 5, !dbg !2124
  %31 = load ptr, ptr %30, align 8, !dbg !2124
  %32 = call i32 @event_del(ptr noundef %31), !dbg !2124
  %33 = load ptr, ptr %4, align 8, !dbg !2124
  %34 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %33, i32 0, i32 5, !dbg !2124
  %35 = load ptr, ptr %34, align 8, !dbg !2124
  call void @event_free(ptr noundef %35), !dbg !2124
  %36 = load ptr, ptr %4, align 8, !dbg !2124
  %37 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %36, i32 0, i32 5, !dbg !2124
  store ptr null, ptr %37, align 8, !dbg !2124
  br label %38, !dbg !2124

38:                                               ; preds = %28, %23
  %39 = load ptr, ptr %4, align 8, !dbg !2126
  %40 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %39, i32 0, i32 6, !dbg !2128
  %41 = load ptr, ptr %40, align 8, !dbg !2128
  %42 = getelementptr inbounds %struct._ioa_socket, ptr %41, i32 0, i32 0, !dbg !2129
  %43 = load i32, ptr %42, align 8, !dbg !2129
  %44 = icmp sge i32 %43, 0, !dbg !2130
  br i1 %44, label %45, label %56, !dbg !2131

45:                                               ; preds = %38
  %46 = load ptr, ptr %4, align 8, !dbg !2132
  %47 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %46, i32 0, i32 6, !dbg !2132
  %48 = load ptr, ptr %47, align 8, !dbg !2132
  %49 = getelementptr inbounds %struct._ioa_socket, ptr %48, i32 0, i32 0, !dbg !2132
  %50 = load i32, ptr %49, align 8, !dbg !2132
  %51 = call i32 @close(i32 noundef %50), !dbg !2132
  %52 = load ptr, ptr %4, align 8, !dbg !2134
  %53 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %52, i32 0, i32 6, !dbg !2135
  %54 = load ptr, ptr %53, align 8, !dbg !2135
  %55 = getelementptr inbounds %struct._ioa_socket, ptr %54, i32 0, i32 0, !dbg !2136
  store i32 -1, ptr %55, align 8, !dbg !2137
  br label %56, !dbg !2138

56:                                               ; preds = %45, %38
  %57 = load ptr, ptr %4, align 8, !dbg !2139
  %58 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %57, i32 0, i32 6, !dbg !2141
  %59 = load ptr, ptr %58, align 8, !dbg !2141
  %60 = icmp ne ptr %59, null, !dbg !2142
  br i1 %60, label %64, label %61, !dbg !2143

61:                                               ; preds = %56
  %62 = load ptr, ptr %4, align 8, !dbg !2144
  %63 = call i32 @create_server_socket(ptr noundef %62, i32 noundef 1), !dbg !2146
  store i32 %63, ptr %3, align 4, !dbg !2147
  br label %173, !dbg !2147

64:                                               ; preds = %56
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2148, metadata !DIExpression()), !dbg !2149
  %65 = load ptr, ptr %4, align 8, !dbg !2150
  %66 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %65, i32 0, i32 1, !dbg !2151
  %67 = getelementptr inbounds %struct.sockaddr, ptr %66, i32 0, i32 0, !dbg !2152
  %68 = load i16, ptr %67, align 4, !dbg !2152
  %69 = zext i16 %68 to i32, !dbg !2150
  %70 = call i32 @socket(i32 noundef %69, i32 noundef 2, i32 noundef 0) #13, !dbg !2153
  store i32 %70, ptr %6, align 4, !dbg !2149
  %71 = load i32, ptr %6, align 4, !dbg !2154
  %72 = icmp slt i32 %71, 0, !dbg !2156
  br i1 %72, label %73, label %83, !dbg !2157

73:                                               ; preds = %64
  call void @perror(ptr noundef @.str.5), !dbg !2158
  %74 = load ptr, ptr %4, align 8, !dbg !2160
  %75 = icmp ne ptr %74, null, !dbg !2160
  br i1 %75, label %76, label %82, !dbg !2160

76:                                               ; preds = %73
  %77 = load ptr, ptr %4, align 8, !dbg !2160
  %78 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %77, i32 0, i32 4, !dbg !2160
  %79 = load i32, ptr %78, align 8, !dbg !2160
  %80 = icmp eq i32 %79, 2, !dbg !2160
  br i1 %80, label %81, label %82, !dbg !2162

81:                                               ; preds = %76
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.14, ptr noundef @__FUNCTION__.reopen_server_socket, i32 noundef 836), !dbg !2160
  br label %82, !dbg !2160

82:                                               ; preds = %81, %76, %73
  store i32 -1, ptr %3, align 4, !dbg !2163
  br label %173, !dbg !2163

83:                                               ; preds = %64
  %84 = load i32, ptr %6, align 4, !dbg !2164
  %85 = load ptr, ptr %4, align 8, !dbg !2165
  %86 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %85, i32 0, i32 6, !dbg !2166
  %87 = load ptr, ptr %86, align 8, !dbg !2166
  %88 = getelementptr inbounds %struct._ioa_socket, ptr %87, i32 0, i32 0, !dbg !2167
  store i32 %84, ptr %88, align 8, !dbg !2168
  %89 = load ptr, ptr %4, align 8, !dbg !2169
  %90 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %89, i32 0, i32 6, !dbg !2170
  %91 = load ptr, ptr %90, align 8, !dbg !2170
  %92 = call i32 @set_socket_options(ptr noundef %91), !dbg !2171
  %93 = load i32, ptr %6, align 4, !dbg !2172
  %94 = call i32 @set_sock_buf_size(i32 noundef %93, i32 noundef 2097152), !dbg !2173
  %95 = load i32, ptr %6, align 4, !dbg !2174
  %96 = load ptr, ptr %4, align 8, !dbg !2176
  %97 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %96, i32 0, i32 0, !dbg !2177
  %98 = getelementptr inbounds [1025 x i8], ptr %97, i64 0, i64 0, !dbg !2176
  %99 = call i32 @sock_bind_to_device(i32 noundef %95, ptr noundef %98), !dbg !2178
  %100 = icmp slt i32 %99, 0, !dbg !2179
  br i1 %100, label %101, label %105, !dbg !2180

101:                                              ; preds = %83
  %102 = load ptr, ptr %4, align 8, !dbg !2181
  %103 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %102, i32 0, i32 0, !dbg !2183
  %104 = getelementptr inbounds [1025 x i8], ptr %103, i64 0, i64 0, !dbg !2181
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.6, ptr noundef %104), !dbg !2184
  br label %105, !dbg !2185

105:                                              ; preds = %101, %83
  %106 = load i32, ptr %6, align 4, !dbg !2186
  %107 = load ptr, ptr %4, align 8, !dbg !2188
  %108 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %107, i32 0, i32 1, !dbg !2189
  %109 = call i32 @addr_bind(i32 noundef %106, ptr noundef %108, i32 noundef 1, i32 noundef 1, i32 noundef 17), !dbg !2190
  %110 = icmp slt i32 %109, 0, !dbg !2191
  br i1 %110, label %111, label %117, !dbg !2192

111:                                              ; preds = %105
  call void @perror(ptr noundef @.str.7), !dbg !2193
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2195, metadata !DIExpression()), !dbg !2196
  %112 = load ptr, ptr %4, align 8, !dbg !2197
  %113 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %112, i32 0, i32 1, !dbg !2198
  %114 = getelementptr inbounds [129 x i8], ptr %7, i64 0, i64 0, !dbg !2199
  %115 = call i32 @addr_to_string(ptr noundef %113, ptr noundef %114), !dbg !2200
  %116 = getelementptr inbounds [129 x i8], ptr %7, i64 0, i64 0, !dbg !2201
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.18, ptr noundef %116), !dbg !2202
  store i32 -1, ptr %3, align 4, !dbg !2203
  br label %173, !dbg !2203

117:                                              ; preds = %105
  %118 = load ptr, ptr %4, align 8, !dbg !2204
  %119 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %118, i32 0, i32 2, !dbg !2205
  %120 = load ptr, ptr %119, align 8, !dbg !2205
  %121 = getelementptr inbounds %struct._ioa_engine, ptr %120, i32 0, i32 1, !dbg !2206
  %122 = load ptr, ptr %121, align 8, !dbg !2206
  %123 = load i32, ptr %6, align 4, !dbg !2207
  %124 = load ptr, ptr %4, align 8, !dbg !2208
  %125 = call ptr @event_new(ptr noundef %122, i32 noundef %123, i16 noundef signext 18, ptr noundef @udp_server_input_handler, ptr noundef %124), !dbg !2209
  %126 = load ptr, ptr %4, align 8, !dbg !2210
  %127 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %126, i32 0, i32 5, !dbg !2211
  store ptr %125, ptr %127, align 8, !dbg !2212
  %128 = load ptr, ptr %4, align 8, !dbg !2213
  %129 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %128, i32 0, i32 5, !dbg !2214
  %130 = load ptr, ptr %129, align 8, !dbg !2214
  %131 = call i32 @event_add(ptr noundef %130, ptr noundef null), !dbg !2215
  %132 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 34), align 8, !dbg !2216
  %133 = icmp ne i32 %132, 0, !dbg !2218
  br i1 %133, label %143, label %134, !dbg !2219

134:                                              ; preds = %117
  %135 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 18), align 4, !dbg !2220
  %136 = icmp ne i32 %135, 0, !dbg !2221
  br i1 %136, label %143, label %137, !dbg !2222

137:                                              ; preds = %134
  %138 = load ptr, ptr %4, align 8, !dbg !2223
  %139 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %138, i32 0, i32 4, !dbg !2224
  %140 = load i32, ptr %139, align 8, !dbg !2224
  %141 = load ptr, ptr %4, align 8, !dbg !2225
  %142 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %141, i32 0, i32 1, !dbg !2226
  call void @addr_debug_print(i32 noundef %140, ptr noundef %142, ptr noundef @.str.19), !dbg !2227
  br label %163, !dbg !2227

143:                                              ; preds = %134, %117
  %144 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 18), align 4, !dbg !2228
  %145 = icmp ne i32 %144, 0, !dbg !2230
  br i1 %145, label %152, label %146, !dbg !2231

146:                                              ; preds = %143
  %147 = load ptr, ptr %4, align 8, !dbg !2232
  %148 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %147, i32 0, i32 4, !dbg !2233
  %149 = load i32, ptr %148, align 8, !dbg !2233
  %150 = load ptr, ptr %4, align 8, !dbg !2234
  %151 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %150, i32 0, i32 1, !dbg !2235
  call void @addr_debug_print(i32 noundef %149, ptr noundef %151, ptr noundef @.str.20), !dbg !2236
  br label %162, !dbg !2236

152:                                              ; preds = %143
  %153 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 34), align 8, !dbg !2237
  %154 = icmp ne i32 %153, 0, !dbg !2239
  br i1 %154, label %161, label %155, !dbg !2240

155:                                              ; preds = %152
  %156 = load ptr, ptr %4, align 8, !dbg !2241
  %157 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %156, i32 0, i32 4, !dbg !2242
  %158 = load i32, ptr %157, align 8, !dbg !2242
  %159 = load ptr, ptr %4, align 8, !dbg !2243
  %160 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %159, i32 0, i32 1, !dbg !2244
  call void @addr_debug_print(i32 noundef %158, ptr noundef %160, ptr noundef @.str.21), !dbg !2245
  br label %161, !dbg !2245

161:                                              ; preds = %155, %152
  br label %162

162:                                              ; preds = %161, %146
  br label %163

163:                                              ; preds = %162, %137
  %164 = load ptr, ptr %4, align 8, !dbg !2246
  %165 = icmp ne ptr %164, null, !dbg !2246
  br i1 %165, label %166, label %172, !dbg !2246

166:                                              ; preds = %163
  %167 = load ptr, ptr %4, align 8, !dbg !2246
  %168 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %167, i32 0, i32 4, !dbg !2246
  %169 = load i32, ptr %168, align 8, !dbg !2246
  %170 = icmp eq i32 %169, 2, !dbg !2246
  br i1 %170, label %171, label %172, !dbg !2248

171:                                              ; preds = %166
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.14, ptr noundef @__FUNCTION__.reopen_server_socket, i32 noundef 879), !dbg !2246
  br label %172, !dbg !2246

172:                                              ; preds = %171, %166, %163
  store i32 0, ptr %3, align 4, !dbg !2249
  br label %173, !dbg !2249

173:                                              ; preds = %172, %111, %82, %61, %13
  %174 = load i32, ptr %3, align 4, !dbg !2250
  ret i32 %174, !dbg !2250
}

declare void @ioa_network_buffer_set_size(ptr noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_new_connected_udp_socket(ptr noundef %0, ptr noundef %1) #0 !dbg !2251 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca [129 x i8], align 16
  %10 = alloca [129 x i8], align 16
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca %struct.timeval, align 8
  %14 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2254, metadata !DIExpression()), !dbg !2255
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2256, metadata !DIExpression()), !dbg !2257
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2258, metadata !DIExpression()), !dbg !2259
  %15 = load ptr, ptr %5, align 8, !dbg !2260
  %16 = getelementptr inbounds %struct._ioa_socket, ptr %15, i32 0, i32 14, !dbg !2261
  %17 = getelementptr inbounds %struct.sockaddr, ptr %16, i32 0, i32 0, !dbg !2262
  %18 = load i16, ptr %17, align 8, !dbg !2262
  %19 = zext i16 %18 to i32, !dbg !2260
  %20 = call i32 @socket(i32 noundef %19, i32 noundef 2, i32 noundef 0) #13, !dbg !2263
  store i32 %20, ptr %6, align 4, !dbg !2259
  %21 = load i32, ptr %6, align 4, !dbg !2264
  %22 = icmp slt i32 %21, 0, !dbg !2266
  br i1 %22, label %23, label %24, !dbg !2267

23:                                               ; preds = %2
  call void @perror(ptr noundef @.str.5), !dbg !2268
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.22, ptr noundef @__FUNCTION__.create_new_connected_udp_socket), !dbg !2270
  store i32 -1, ptr %3, align 4, !dbg !2271
  br label %308, !dbg !2271

24:                                               ; preds = %2
  %25 = load i32, ptr %6, align 4, !dbg !2272
  %26 = load ptr, ptr %5, align 8, !dbg !2274
  %27 = getelementptr inbounds %struct._ioa_socket, ptr %26, i32 0, i32 17, !dbg !2275
  %28 = load ptr, ptr %27, align 8, !dbg !2275
  %29 = getelementptr inbounds %struct._ioa_engine, ptr %28, i32 0, i32 18, !dbg !2276
  %30 = getelementptr inbounds [1025 x i8], ptr %29, i64 0, i64 0, !dbg !2277
  %31 = call i32 @sock_bind_to_device(i32 noundef %25, ptr noundef %30), !dbg !2278
  %32 = icmp slt i32 %31, 0, !dbg !2279
  br i1 %32, label %33, label %39, !dbg !2280

33:                                               ; preds = %24
  %34 = load ptr, ptr %5, align 8, !dbg !2281
  %35 = getelementptr inbounds %struct._ioa_socket, ptr %34, i32 0, i32 17, !dbg !2283
  %36 = load ptr, ptr %35, align 8, !dbg !2283
  %37 = getelementptr inbounds %struct._ioa_engine, ptr %36, i32 0, i32 18, !dbg !2284
  %38 = getelementptr inbounds [1025 x i8], ptr %37, i64 0, i64 0, !dbg !2285
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.23, ptr noundef %38), !dbg !2286
  br label %39, !dbg !2287

39:                                               ; preds = %33, %24
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2288, metadata !DIExpression()), !dbg !2289
  %40 = call noalias ptr @malloc(i64 noundef 360) #16, !dbg !2290
  store ptr %40, ptr %7, align 8, !dbg !2289
  %41 = load ptr, ptr %7, align 8, !dbg !2291
  %42 = icmp ne ptr %41, null, !dbg !2291
  br i1 %42, label %46, label %43, !dbg !2293

43:                                               ; preds = %39
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.24, ptr noundef @__FUNCTION__.create_new_connected_udp_socket), !dbg !2294
  %44 = load i32, ptr %6, align 4, !dbg !2296
  %45 = call i32 @close(i32 noundef %44), !dbg !2297
  store i32 -1, ptr %3, align 4, !dbg !2298
  br label %308, !dbg !2298

46:                                               ; preds = %39
  %47 = load ptr, ptr %7, align 8, !dbg !2299
  call void @llvm.memset.p0.i64(ptr align 8 %47, i8 0, i64 360, i1 false), !dbg !2300
  %48 = load ptr, ptr %7, align 8, !dbg !2301
  %49 = getelementptr inbounds %struct._ioa_socket, ptr %48, i32 0, i32 2, !dbg !2302
  store i32 -1414746641, ptr %49, align 8, !dbg !2303
  %50 = load i32, ptr %6, align 4, !dbg !2304
  %51 = load ptr, ptr %7, align 8, !dbg !2305
  %52 = getelementptr inbounds %struct._ioa_socket, ptr %51, i32 0, i32 0, !dbg !2306
  store i32 %50, ptr %52, align 8, !dbg !2307
  %53 = load ptr, ptr %5, align 8, !dbg !2308
  %54 = getelementptr inbounds %struct._ioa_socket, ptr %53, i32 0, i32 6, !dbg !2309
  %55 = load i32, ptr %54, align 8, !dbg !2309
  %56 = load ptr, ptr %7, align 8, !dbg !2310
  %57 = getelementptr inbounds %struct._ioa_socket, ptr %56, i32 0, i32 6, !dbg !2311
  store i32 %55, ptr %57, align 8, !dbg !2312
  %58 = load ptr, ptr %5, align 8, !dbg !2313
  %59 = getelementptr inbounds %struct._ioa_socket, ptr %58, i32 0, i32 7, !dbg !2314
  %60 = load i32, ptr %59, align 4, !dbg !2314
  %61 = load ptr, ptr %7, align 8, !dbg !2315
  %62 = getelementptr inbounds %struct._ioa_socket, ptr %61, i32 0, i32 7, !dbg !2316
  store i32 %60, ptr %62, align 4, !dbg !2317
  %63 = load ptr, ptr %7, align 8, !dbg !2318
  %64 = getelementptr inbounds %struct._ioa_socket, ptr %63, i32 0, i32 8, !dbg !2319
  store i32 1, ptr %64, align 8, !dbg !2320
  %65 = load ptr, ptr %7, align 8, !dbg !2321
  %66 = getelementptr inbounds %struct._ioa_socket, ptr %65, i32 0, i32 13, !dbg !2322
  store i32 1, ptr %66, align 4, !dbg !2323
  %67 = load ptr, ptr %7, align 8, !dbg !2324
  %68 = getelementptr inbounds %struct._ioa_socket, ptr %67, i32 0, i32 14, !dbg !2325
  %69 = load ptr, ptr %5, align 8, !dbg !2326
  %70 = getelementptr inbounds %struct._ioa_socket, ptr %69, i32 0, i32 14, !dbg !2327
  call void @addr_cpy(ptr noundef %68, ptr noundef %70), !dbg !2328
  %71 = load i32, ptr %6, align 4, !dbg !2329
  %72 = load ptr, ptr %5, align 8, !dbg !2331
  %73 = getelementptr inbounds %struct._ioa_socket, ptr %72, i32 0, i32 14, !dbg !2332
  %74 = call i32 @addr_bind(i32 noundef %71, ptr noundef %73, i32 noundef 1, i32 noundef 1, i32 noundef 17), !dbg !2333
  %75 = icmp slt i32 %74, 0, !dbg !2334
  br i1 %75, label %76, label %84, !dbg !2335

76:                                               ; preds = %46
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.25), !dbg !2336
  br label %77, !dbg !2338

77:                                               ; preds = %76
  %78 = load ptr, ptr %7, align 8, !dbg !2339
  %79 = icmp ne ptr %78, null, !dbg !2339
  br i1 %79, label %80, label %82, !dbg !2342

80:                                               ; preds = %77
  %81 = load ptr, ptr %7, align 8, !dbg !2343
  call void @close_ioa_socket(ptr noundef %81), !dbg !2343
  store ptr null, ptr %7, align 8, !dbg !2343
  br label %82, !dbg !2343

82:                                               ; preds = %80, %77
  br label %83, !dbg !2342

83:                                               ; preds = %82
  store i32 -1, ptr %3, align 4, !dbg !2345
  br label %308, !dbg !2345

84:                                               ; preds = %46
  %85 = load ptr, ptr %7, align 8, !dbg !2346
  %86 = getelementptr inbounds %struct._ioa_socket, ptr %85, i32 0, i32 12, !dbg !2347
  store i32 1, ptr %86, align 8, !dbg !2348
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2349, metadata !DIExpression()), !dbg !2351
  store i32 0, ptr %8, align 4, !dbg !2351
  %87 = load i32, ptr %6, align 4, !dbg !2352
  %88 = load ptr, ptr %4, align 8, !dbg !2354
  %89 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %88, i32 0, i32 8, !dbg !2355
  %90 = getelementptr inbounds %struct.message_to_relay, ptr %89, i32 0, i32 2, !dbg !2356
  %91 = getelementptr inbounds %struct.socket_message, ptr %90, i32 0, i32 1, !dbg !2357
  %92 = getelementptr inbounds %struct._ioa_net_data, ptr %91, i32 0, i32 0, !dbg !2358
  %93 = call i32 @addr_connect(i32 noundef %87, ptr noundef %92, ptr noundef %8), !dbg !2359
  %94 = icmp slt i32 %93, 0, !dbg !2360
  br i1 %94, label %95, label %116, !dbg !2361

95:                                               ; preds = %84
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2362, metadata !DIExpression()), !dbg !2364
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2365, metadata !DIExpression()), !dbg !2366
  %96 = load ptr, ptr %7, align 8, !dbg !2367
  %97 = getelementptr inbounds %struct._ioa_socket, ptr %96, i32 0, i32 14, !dbg !2368
  %98 = getelementptr inbounds [129 x i8], ptr %9, i64 0, i64 0, !dbg !2369
  %99 = call i32 @addr_to_string(ptr noundef %97, ptr noundef %98), !dbg !2370
  %100 = load ptr, ptr %4, align 8, !dbg !2371
  %101 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %100, i32 0, i32 8, !dbg !2372
  %102 = getelementptr inbounds %struct.message_to_relay, ptr %101, i32 0, i32 2, !dbg !2373
  %103 = getelementptr inbounds %struct.socket_message, ptr %102, i32 0, i32 1, !dbg !2374
  %104 = getelementptr inbounds %struct._ioa_net_data, ptr %103, i32 0, i32 0, !dbg !2375
  %105 = getelementptr inbounds [129 x i8], ptr %10, i64 0, i64 0, !dbg !2376
  %106 = call i32 @addr_to_string(ptr noundef %104, ptr noundef %105), !dbg !2377
  %107 = getelementptr inbounds [129 x i8], ptr %9, i64 0, i64 0, !dbg !2378
  %108 = getelementptr inbounds [129 x i8], ptr %10, i64 0, i64 0, !dbg !2379
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.26, ptr noundef %107, ptr noundef %108), !dbg !2380
  br label %109, !dbg !2381

109:                                              ; preds = %95
  %110 = load ptr, ptr %7, align 8, !dbg !2382
  %111 = icmp ne ptr %110, null, !dbg !2382
  br i1 %111, label %112, label %114, !dbg !2385

112:                                              ; preds = %109
  %113 = load ptr, ptr %7, align 8, !dbg !2386
  call void @close_ioa_socket(ptr noundef %113), !dbg !2386
  store ptr null, ptr %7, align 8, !dbg !2386
  br label %114, !dbg !2386

114:                                              ; preds = %112, %109
  br label %115, !dbg !2385

115:                                              ; preds = %114
  store i32 -1, ptr %3, align 4, !dbg !2388
  br label %308, !dbg !2388

116:                                              ; preds = %84
  %117 = load ptr, ptr %7, align 8, !dbg !2389
  %118 = getelementptr inbounds %struct._ioa_socket, ptr %117, i32 0, i32 15, !dbg !2390
  store i32 1, ptr %118, align 4, !dbg !2391
  %119 = load ptr, ptr %7, align 8, !dbg !2392
  %120 = getelementptr inbounds %struct._ioa_socket, ptr %119, i32 0, i32 16, !dbg !2393
  %121 = load ptr, ptr %4, align 8, !dbg !2394
  %122 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %121, i32 0, i32 8, !dbg !2395
  %123 = getelementptr inbounds %struct.message_to_relay, ptr %122, i32 0, i32 2, !dbg !2396
  %124 = getelementptr inbounds %struct.socket_message, ptr %123, i32 0, i32 1, !dbg !2397
  %125 = getelementptr inbounds %struct._ioa_net_data, ptr %124, i32 0, i32 0, !dbg !2398
  call void @addr_cpy(ptr noundef %120, ptr noundef %125), !dbg !2399
  %126 = load ptr, ptr %7, align 8, !dbg !2400
  %127 = call i32 @set_socket_options(ptr noundef %126), !dbg !2401
  %128 = load ptr, ptr %5, align 8, !dbg !2402
  %129 = getelementptr inbounds %struct._ioa_socket, ptr %128, i32 0, i32 28, !dbg !2403
  %130 = load i32, ptr %129, align 4, !dbg !2403
  %131 = load ptr, ptr %7, align 8, !dbg !2404
  %132 = getelementptr inbounds %struct._ioa_socket, ptr %131, i32 0, i32 28, !dbg !2405
  store i32 %130, ptr %132, align 4, !dbg !2406
  %133 = load ptr, ptr %5, align 8, !dbg !2407
  %134 = getelementptr inbounds %struct._ioa_socket, ptr %133, i32 0, i32 27, !dbg !2408
  %135 = load i32, ptr %134, align 8, !dbg !2408
  %136 = load ptr, ptr %7, align 8, !dbg !2409
  %137 = getelementptr inbounds %struct._ioa_socket, ptr %136, i32 0, i32 27, !dbg !2410
  store i32 %135, ptr %137, align 8, !dbg !2411
  %138 = load ptr, ptr %5, align 8, !dbg !2412
  %139 = getelementptr inbounds %struct._ioa_socket, ptr %138, i32 0, i32 30, !dbg !2413
  %140 = load i32, ptr %139, align 4, !dbg !2413
  %141 = load ptr, ptr %7, align 8, !dbg !2414
  %142 = getelementptr inbounds %struct._ioa_socket, ptr %141, i32 0, i32 30, !dbg !2415
  store i32 %140, ptr %142, align 4, !dbg !2416
  %143 = load ptr, ptr %5, align 8, !dbg !2417
  %144 = getelementptr inbounds %struct._ioa_socket, ptr %143, i32 0, i32 29, !dbg !2418
  %145 = load i32, ptr %144, align 8, !dbg !2418
  %146 = load ptr, ptr %7, align 8, !dbg !2419
  %147 = getelementptr inbounds %struct._ioa_socket, ptr %146, i32 0, i32 29, !dbg !2420
  store i32 %145, ptr %147, align 8, !dbg !2421
  %148 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 18), align 4, !dbg !2422
  %149 = icmp ne i32 %148, 0, !dbg !2424
  br i1 %149, label %293, label %150, !dbg !2425

150:                                              ; preds = %116
  %151 = load ptr, ptr %4, align 8, !dbg !2426
  %152 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %151, i32 0, i32 8, !dbg !2427
  %153 = getelementptr inbounds %struct.message_to_relay, ptr %152, i32 0, i32 2, !dbg !2428
  %154 = getelementptr inbounds %struct.socket_message, ptr %153, i32 0, i32 1, !dbg !2429
  %155 = getelementptr inbounds %struct._ioa_net_data, ptr %154, i32 0, i32 1, !dbg !2430
  %156 = load ptr, ptr %155, align 8, !dbg !2430
  %157 = call ptr @ioa_network_buffer_data(ptr noundef %156), !dbg !2431
  %158 = load ptr, ptr %4, align 8, !dbg !2432
  %159 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %158, i32 0, i32 8, !dbg !2433
  %160 = getelementptr inbounds %struct.message_to_relay, ptr %159, i32 0, i32 2, !dbg !2434
  %161 = getelementptr inbounds %struct.socket_message, ptr %160, i32 0, i32 1, !dbg !2435
  %162 = getelementptr inbounds %struct._ioa_net_data, ptr %161, i32 0, i32 1, !dbg !2436
  %163 = load ptr, ptr %162, align 8, !dbg !2436
  %164 = call i64 @ioa_network_buffer_get_size(ptr noundef %163), !dbg !2437
  %165 = trunc i64 %164 to i32, !dbg !2438
  %166 = call i32 @is_dtls_handshake_message(ptr noundef %157, i32 noundef %165), !dbg !2439
  %167 = icmp ne i32 %166, 0, !dbg !2439
  br i1 %167, label %168, label %293, !dbg !2440

168:                                              ; preds = %150
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2441, metadata !DIExpression()), !dbg !2443
  store ptr null, ptr %11, align 8, !dbg !2443
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2444, metadata !DIExpression()), !dbg !2448
  store ptr null, ptr %12, align 8, !dbg !2448
  call void @llvm.dbg.declare(metadata ptr %13, metadata !2449, metadata !DIExpression()), !dbg !2450
  %169 = load ptr, ptr %7, align 8, !dbg !2451
  %170 = getelementptr inbounds %struct._ioa_socket, ptr %169, i32 0, i32 0, !dbg !2452
  %171 = load i32, ptr %170, align 8, !dbg !2452
  %172 = call ptr @BIO_new_dgram(i32 noundef %171, i32 noundef 0), !dbg !2453
  store ptr %172, ptr %12, align 8, !dbg !2454
  %173 = load ptr, ptr %12, align 8, !dbg !2455
  %174 = load ptr, ptr %4, align 8, !dbg !2455
  %175 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %174, i32 0, i32 8, !dbg !2455
  %176 = getelementptr inbounds %struct.message_to_relay, ptr %175, i32 0, i32 2, !dbg !2455
  %177 = getelementptr inbounds %struct.socket_message, ptr %176, i32 0, i32 1, !dbg !2455
  %178 = getelementptr inbounds %struct._ioa_net_data, ptr %177, i32 0, i32 0, !dbg !2455
  %179 = call i64 @BIO_ctrl(ptr noundef %173, i32 noundef 44, i64 noundef 0, ptr noundef %178), !dbg !2455
  %180 = trunc i64 %179 to i32, !dbg !2455
  %181 = load ptr, ptr %12, align 8, !dbg !2456
  %182 = load ptr, ptr %4, align 8, !dbg !2457
  %183 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %182, i32 0, i32 8, !dbg !2458
  %184 = getelementptr inbounds %struct.message_to_relay, ptr %183, i32 0, i32 2, !dbg !2459
  %185 = getelementptr inbounds %struct.socket_message, ptr %184, i32 0, i32 1, !dbg !2460
  %186 = getelementptr inbounds %struct._ioa_net_data, ptr %185, i32 0, i32 0, !dbg !2461
  %187 = call i64 @BIO_ctrl(ptr noundef %181, i32 noundef 32, i64 noundef 0, ptr noundef %186), !dbg !2462
  %188 = getelementptr inbounds %struct.timeval, ptr %13, i32 0, i32 0, !dbg !2463
  store i64 5, ptr %188, align 8, !dbg !2464
  %189 = getelementptr inbounds %struct.timeval, ptr %13, i32 0, i32 1, !dbg !2465
  store i64 0, ptr %189, align 8, !dbg !2466
  %190 = load ptr, ptr %12, align 8, !dbg !2467
  %191 = call i64 @BIO_ctrl(ptr noundef %190, i32 noundef 33, i64 noundef 0, ptr noundef %13), !dbg !2468
  %192 = load ptr, ptr %4, align 8, !dbg !2469
  %193 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %192, i32 0, i32 8, !dbg !2471
  %194 = getelementptr inbounds %struct.message_to_relay, ptr %193, i32 0, i32 2, !dbg !2472
  %195 = getelementptr inbounds %struct.socket_message, ptr %194, i32 0, i32 1, !dbg !2473
  %196 = getelementptr inbounds %struct._ioa_net_data, ptr %195, i32 0, i32 1, !dbg !2474
  %197 = load ptr, ptr %196, align 8, !dbg !2474
  %198 = call ptr @ioa_network_buffer_data(ptr noundef %197), !dbg !2475
  %199 = load ptr, ptr %4, align 8, !dbg !2476
  %200 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %199, i32 0, i32 8, !dbg !2477
  %201 = getelementptr inbounds %struct.message_to_relay, ptr %200, i32 0, i32 2, !dbg !2478
  %202 = getelementptr inbounds %struct.socket_message, ptr %201, i32 0, i32 1, !dbg !2479
  %203 = getelementptr inbounds %struct._ioa_net_data, ptr %202, i32 0, i32 1, !dbg !2480
  %204 = load ptr, ptr %203, align 8, !dbg !2480
  %205 = call i64 @ioa_network_buffer_get_size(ptr noundef %204), !dbg !2481
  %206 = trunc i64 %205 to i32, !dbg !2482
  %207 = call i32 @get_dtls_version(ptr noundef %198, i32 noundef %206), !dbg !2483
  %208 = icmp eq i32 %207, 1, !dbg !2484
  br i1 %208, label %209, label %216, !dbg !2485

209:                                              ; preds = %168
  %210 = load ptr, ptr %4, align 8, !dbg !2486
  %211 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %210, i32 0, i32 2, !dbg !2488
  %212 = load ptr, ptr %211, align 8, !dbg !2488
  %213 = getelementptr inbounds %struct._ioa_engine, ptr %212, i32 0, i32 12, !dbg !2489
  %214 = load ptr, ptr %213, align 8, !dbg !2489
  %215 = call ptr @SSL_new(ptr noundef %214), !dbg !2490
  store ptr %215, ptr %11, align 8, !dbg !2491
  br label %223, !dbg !2492

216:                                              ; preds = %168
  %217 = load ptr, ptr %4, align 8, !dbg !2493
  %218 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %217, i32 0, i32 2, !dbg !2495
  %219 = load ptr, ptr %218, align 8, !dbg !2495
  %220 = getelementptr inbounds %struct._ioa_engine, ptr %219, i32 0, i32 11, !dbg !2496
  %221 = load ptr, ptr %220, align 8, !dbg !2496
  %222 = call ptr @SSL_new(ptr noundef %221), !dbg !2497
  store ptr %222, ptr %11, align 8, !dbg !2498
  br label %223

223:                                              ; preds = %216, %209
  %224 = load ptr, ptr %11, align 8, !dbg !2499
  call void @SSL_set_accept_state(ptr noundef %224), !dbg !2500
  %225 = load ptr, ptr %11, align 8, !dbg !2501
  %226 = load ptr, ptr %12, align 8, !dbg !2502
  call void @SSL_set_bio(ptr noundef %225, ptr noundef null, ptr noundef %226), !dbg !2503
  %227 = load ptr, ptr %11, align 8, !dbg !2504
  %228 = call i64 @SSL_set_options(ptr noundef %227, i64 noundef 8192), !dbg !2505
  %229 = load ptr, ptr %11, align 8, !dbg !2506
  %230 = call i64 @SSL_ctrl(ptr noundef %229, i32 noundef 51, i64 noundef 655350, ptr noundef null), !dbg !2506
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2507, metadata !DIExpression()), !dbg !2508
  %231 = load ptr, ptr %7, align 8, !dbg !2509
  %232 = getelementptr inbounds %struct._ioa_socket, ptr %231, i32 0, i32 0, !dbg !2510
  %233 = load i32, ptr %232, align 8, !dbg !2510
  %234 = load ptr, ptr %11, align 8, !dbg !2511
  %235 = load ptr, ptr %4, align 8, !dbg !2512
  %236 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %235, i32 0, i32 8, !dbg !2513
  %237 = getelementptr inbounds %struct.message_to_relay, ptr %236, i32 0, i32 2, !dbg !2514
  %238 = getelementptr inbounds %struct.socket_message, ptr %237, i32 0, i32 1, !dbg !2515
  %239 = getelementptr inbounds %struct._ioa_net_data, ptr %238, i32 0, i32 1, !dbg !2516
  %240 = load ptr, ptr %239, align 8, !dbg !2516
  %241 = load ptr, ptr %4, align 8, !dbg !2517
  %242 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %241, i32 0, i32 4, !dbg !2518
  %243 = load i32, ptr %242, align 8, !dbg !2518
  %244 = call i32 @ssl_read(i32 noundef %233, ptr noundef %234, ptr noundef %240, i32 noundef %243), !dbg !2519
  store i32 %244, ptr %14, align 4, !dbg !2508
  %245 = load i32, ptr %14, align 4, !dbg !2520
  %246 = icmp slt i32 %245, 0, !dbg !2522
  br i1 %246, label %247, label %265, !dbg !2523

247:                                              ; preds = %223
  %248 = load ptr, ptr %11, align 8, !dbg !2524
  %249 = call i32 @SSL_get_shutdown(ptr noundef %248), !dbg !2527
  %250 = and i32 %249, 1, !dbg !2528
  %251 = icmp ne i32 %250, 0, !dbg !2528
  br i1 %251, label %256, label %252, !dbg !2529

252:                                              ; preds = %247
  %253 = load ptr, ptr %11, align 8, !dbg !2530
  call void @SSL_set_shutdown(ptr noundef %253, i32 noundef 2), !dbg !2532
  %254 = load ptr, ptr %11, align 8, !dbg !2533
  %255 = call i32 @SSL_shutdown(ptr noundef %254), !dbg !2534
  br label %256, !dbg !2535

256:                                              ; preds = %252, %247
  %257 = load ptr, ptr %11, align 8, !dbg !2536
  call void @SSL_free(ptr noundef %257), !dbg !2537
  br label %258, !dbg !2538

258:                                              ; preds = %256
  %259 = load ptr, ptr %7, align 8, !dbg !2539
  %260 = icmp ne ptr %259, null, !dbg !2539
  br i1 %260, label %261, label %263, !dbg !2542

261:                                              ; preds = %258
  %262 = load ptr, ptr %7, align 8, !dbg !2543
  call void @close_ioa_socket(ptr noundef %262), !dbg !2543
  store ptr null, ptr %7, align 8, !dbg !2543
  br label %263, !dbg !2543

263:                                              ; preds = %261, %258
  br label %264, !dbg !2542

264:                                              ; preds = %263
  store i32 -1, ptr %3, align 4, !dbg !2545
  br label %308, !dbg !2545

265:                                              ; preds = %223
  %266 = load ptr, ptr %4, align 8, !dbg !2546
  %267 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %266, i32 0, i32 4, !dbg !2547
  %268 = load i32, ptr %267, align 8, !dbg !2547
  %269 = load ptr, ptr %4, align 8, !dbg !2548
  %270 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %269, i32 0, i32 8, !dbg !2549
  %271 = getelementptr inbounds %struct.message_to_relay, ptr %270, i32 0, i32 2, !dbg !2550
  %272 = getelementptr inbounds %struct.socket_message, ptr %271, i32 0, i32 1, !dbg !2551
  %273 = getelementptr inbounds %struct._ioa_net_data, ptr %272, i32 0, i32 0, !dbg !2552
  call void @addr_debug_print(i32 noundef %268, ptr noundef %273, ptr noundef @.str.27), !dbg !2553
  %274 = load ptr, ptr %11, align 8, !dbg !2554
  %275 = load ptr, ptr %7, align 8, !dbg !2555
  %276 = getelementptr inbounds %struct._ioa_socket, ptr %275, i32 0, i32 9, !dbg !2556
  store ptr %274, ptr %276, align 8, !dbg !2557
  %277 = load ptr, ptr %4, align 8, !dbg !2558
  %278 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %277, i32 0, i32 2, !dbg !2559
  %279 = load ptr, ptr %278, align 8, !dbg !2559
  %280 = load ptr, ptr %4, align 8, !dbg !2560
  %281 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %280, i32 0, i32 8, !dbg !2561
  %282 = getelementptr inbounds %struct.message_to_relay, ptr %281, i32 0, i32 2, !dbg !2562
  %283 = getelementptr inbounds %struct.socket_message, ptr %282, i32 0, i32 1, !dbg !2563
  %284 = getelementptr inbounds %struct._ioa_net_data, ptr %283, i32 0, i32 1, !dbg !2564
  %285 = load ptr, ptr %284, align 8, !dbg !2564
  call void @ioa_network_buffer_delete(ptr noundef %279, ptr noundef %285), !dbg !2565
  %286 = load ptr, ptr %4, align 8, !dbg !2566
  %287 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %286, i32 0, i32 8, !dbg !2567
  %288 = getelementptr inbounds %struct.message_to_relay, ptr %287, i32 0, i32 2, !dbg !2568
  %289 = getelementptr inbounds %struct.socket_message, ptr %288, i32 0, i32 1, !dbg !2569
  %290 = getelementptr inbounds %struct._ioa_net_data, ptr %289, i32 0, i32 1, !dbg !2570
  store ptr null, ptr %290, align 8, !dbg !2571
  %291 = load ptr, ptr %7, align 8, !dbg !2572
  %292 = getelementptr inbounds %struct._ioa_socket, ptr %291, i32 0, i32 7, !dbg !2573
  store i32 250, ptr %292, align 4, !dbg !2574
  br label %293, !dbg !2575

293:                                              ; preds = %265, %150, %116
  %294 = load ptr, ptr %7, align 8, !dbg !2576
  %295 = load ptr, ptr %4, align 8, !dbg !2577
  %296 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %295, i32 0, i32 8, !dbg !2578
  %297 = getelementptr inbounds %struct.message_to_relay, ptr %296, i32 0, i32 2, !dbg !2579
  %298 = getelementptr inbounds %struct.socket_message, ptr %297, i32 0, i32 0, !dbg !2580
  store ptr %294, ptr %298, align 8, !dbg !2581
  %299 = load ptr, ptr %4, align 8, !dbg !2582
  %300 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %299, i32 0, i32 10, !dbg !2583
  %301 = load ptr, ptr %300, align 8, !dbg !2583
  %302 = load ptr, ptr %4, align 8, !dbg !2584
  %303 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %302, i32 0, i32 2, !dbg !2585
  %304 = load ptr, ptr %303, align 8, !dbg !2585
  %305 = load ptr, ptr %4, align 8, !dbg !2586
  %306 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %305, i32 0, i32 8, !dbg !2587
  %307 = call i32 %301(ptr noundef %304, ptr noundef %306), !dbg !2582
  store i32 %307, ptr %3, align 4, !dbg !2588
  br label %308, !dbg !2588

308:                                              ; preds = %293, %264, %115, %83, %43, %23
  %309 = load i32, ptr %3, align 4, !dbg !2589
  ret i32 %309, !dbg !2589
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_udp_packet(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !2590 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca i64, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca [129 x i8], align 16
  %21 = alloca [129 x i8], align 16
  %22 = alloca i64, align 8
  %23 = alloca [129 x i8], align 16
  %24 = alloca [129 x i8], align 16
  %25 = alloca i64, align 8
  %26 = alloca [129 x i8], align 16
  %27 = alloca [129 x i8], align 16
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2593, metadata !DIExpression()), !dbg !2594
  store ptr %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2595, metadata !DIExpression()), !dbg !2596
  store ptr %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2597, metadata !DIExpression()), !dbg !2598
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2599, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2601, metadata !DIExpression()), !dbg !2602
  %28 = load ptr, ptr %8, align 8, !dbg !2603
  %29 = getelementptr inbounds %struct._ioa_engine, ptr %28, i32 0, i32 3, !dbg !2604
  %30 = load i32, ptr %29, align 4, !dbg !2604
  store i32 %30, ptr %10, align 4, !dbg !2602
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2605, metadata !DIExpression()), !dbg !2606
  %31 = load ptr, ptr %7, align 8, !dbg !2607
  %32 = getelementptr inbounds %struct.message_to_relay, ptr %31, i32 0, i32 2, !dbg !2608
  %33 = getelementptr inbounds %struct.socket_message, ptr %32, i32 0, i32 0, !dbg !2609
  %34 = load ptr, ptr %33, align 8, !dbg !2609
  store ptr %34, ptr %11, align 8, !dbg !2606
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2610, metadata !DIExpression()), !dbg !2611
  store i64 0, ptr %12, align 8, !dbg !2611
  %35 = load ptr, ptr %6, align 8, !dbg !2612
  %36 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %35, i32 0, i32 7, !dbg !2614
  %37 = load ptr, ptr %36, align 8, !dbg !2614
  %38 = icmp ne ptr %37, null, !dbg !2615
  br i1 %38, label %49, label %39, !dbg !2616

39:                                               ; preds = %4
  %40 = load ptr, ptr %6, align 8, !dbg !2617
  %41 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %40, i32 0, i32 2, !dbg !2617
  %42 = load ptr, ptr %41, align 8, !dbg !2617
  %43 = call ptr @allocate_super_memory_engine_func(ptr noundef %42, i64 noundef 180232, ptr noundef @.str, ptr noundef @__FUNCTION__.handle_udp_packet, i32 noundef 329), !dbg !2617
  %44 = load ptr, ptr %6, align 8, !dbg !2619
  %45 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %44, i32 0, i32 7, !dbg !2620
  store ptr %43, ptr %45, align 8, !dbg !2621
  %46 = load ptr, ptr %6, align 8, !dbg !2622
  %47 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %46, i32 0, i32 7, !dbg !2623
  %48 = load ptr, ptr %47, align 8, !dbg !2623
  call void @ur_addr_map_init(ptr noundef %48), !dbg !2624
  br label %49, !dbg !2625

49:                                               ; preds = %39, %4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !2626, metadata !DIExpression()), !dbg !2627
  %50 = load ptr, ptr %6, align 8, !dbg !2628
  %51 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %50, i32 0, i32 7, !dbg !2629
  %52 = load ptr, ptr %51, align 8, !dbg !2629
  store ptr %52, ptr %13, align 8, !dbg !2627
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2630, metadata !DIExpression()), !dbg !2631
  store ptr null, ptr %14, align 8, !dbg !2631
  %53 = load ptr, ptr %13, align 8, !dbg !2632
  %54 = load ptr, ptr %7, align 8, !dbg !2634
  %55 = getelementptr inbounds %struct.message_to_relay, ptr %54, i32 0, i32 2, !dbg !2635
  %56 = getelementptr inbounds %struct.socket_message, ptr %55, i32 0, i32 1, !dbg !2636
  %57 = getelementptr inbounds %struct._ioa_net_data, ptr %56, i32 0, i32 0, !dbg !2637
  %58 = call i32 @ur_addr_map_get(ptr noundef %53, ptr noundef %57, ptr noundef %12), !dbg !2638
  %59 = icmp sgt i32 %58, 0, !dbg !2639
  br i1 %59, label %60, label %66, !dbg !2640

60:                                               ; preds = %49
  %61 = load i64, ptr %12, align 8, !dbg !2641
  %62 = icmp ne i64 %61, 0, !dbg !2641
  br i1 %62, label %63, label %66, !dbg !2642

63:                                               ; preds = %60
  %64 = load i64, ptr %12, align 8, !dbg !2643
  %65 = inttoptr i64 %64 to ptr, !dbg !2645
  store ptr %65, ptr %14, align 8, !dbg !2646
  br label %66, !dbg !2647

66:                                               ; preds = %63, %60, %49
  %67 = load ptr, ptr %14, align 8, !dbg !2648
  %68 = icmp ne ptr %67, null, !dbg !2648
  br i1 %68, label %69, label %246, !dbg !2650

69:                                               ; preds = %66
  %70 = load ptr, ptr %14, align 8, !dbg !2651
  %71 = call i32 @ioa_socket_tobeclosed(ptr noundef %70), !dbg !2652
  %72 = icmp ne i32 %71, 0, !dbg !2652
  br i1 %72, label %246, label %73, !dbg !2653

73:                                               ; preds = %69
  %74 = load ptr, ptr %14, align 8, !dbg !2654
  %75 = getelementptr inbounds %struct._ioa_socket, ptr %74, i32 0, i32 3, !dbg !2655
  %76 = load ptr, ptr %75, align 8, !dbg !2655
  %77 = load ptr, ptr %13, align 8, !dbg !2656
  %78 = icmp eq ptr %76, %77, !dbg !2657
  br i1 %78, label %79, label %246, !dbg !2658

79:                                               ; preds = %73
  %80 = load ptr, ptr %14, align 8, !dbg !2659
  %81 = getelementptr inbounds %struct._ioa_socket, ptr %80, i32 0, i32 2, !dbg !2660
  %82 = load i32, ptr %81, align 8, !dbg !2660
  %83 = icmp eq i32 %82, -1414746641, !dbg !2661
  br i1 %83, label %84, label %246, !dbg !2662

84:                                               ; preds = %79
  %85 = load ptr, ptr %14, align 8, !dbg !2663
  store ptr %85, ptr %11, align 8, !dbg !2665
  %86 = load ptr, ptr %11, align 8, !dbg !2666
  %87 = load ptr, ptr %7, align 8, !dbg !2667
  %88 = getelementptr inbounds %struct.message_to_relay, ptr %87, i32 0, i32 2, !dbg !2668
  %89 = getelementptr inbounds %struct.socket_message, ptr %88, i32 0, i32 0, !dbg !2669
  store ptr %86, ptr %89, align 8, !dbg !2670
  %90 = load ptr, ptr %11, align 8, !dbg !2671
  %91 = getelementptr inbounds %struct._ioa_socket, ptr %90, i32 0, i32 9, !dbg !2673
  %92 = load ptr, ptr %91, align 8, !dbg !2673
  %93 = icmp ne ptr %92, null, !dbg !2671
  br i1 %93, label %94, label %171, !dbg !2674

94:                                               ; preds = %84
  call void @llvm.dbg.declare(metadata ptr %15, metadata !2675, metadata !DIExpression()), !dbg !2677
  %95 = load ptr, ptr %11, align 8, !dbg !2678
  %96 = getelementptr inbounds %struct._ioa_socket, ptr %95, i32 0, i32 0, !dbg !2679
  %97 = load i32, ptr %96, align 8, !dbg !2679
  %98 = load ptr, ptr %11, align 8, !dbg !2680
  %99 = getelementptr inbounds %struct._ioa_socket, ptr %98, i32 0, i32 9, !dbg !2681
  %100 = load ptr, ptr %99, align 8, !dbg !2681
  %101 = load ptr, ptr %7, align 8, !dbg !2682
  %102 = getelementptr inbounds %struct.message_to_relay, ptr %101, i32 0, i32 2, !dbg !2683
  %103 = getelementptr inbounds %struct.socket_message, ptr %102, i32 0, i32 1, !dbg !2684
  %104 = getelementptr inbounds %struct._ioa_net_data, ptr %103, i32 0, i32 1, !dbg !2685
  %105 = load ptr, ptr %104, align 8, !dbg !2685
  %106 = load i32, ptr %10, align 4, !dbg !2686
  %107 = call i32 @ssl_read(i32 noundef %97, ptr noundef %100, ptr noundef %105, i32 noundef %106), !dbg !2687
  store i32 %107, ptr %15, align 4, !dbg !2677
  %108 = load i32, ptr %15, align 4, !dbg !2688
  %109 = icmp slt i32 %108, 0, !dbg !2690
  br i1 %109, label %110, label %149, !dbg !2691

110:                                              ; preds = %94
  %111 = load ptr, ptr %8, align 8, !dbg !2692
  %112 = load ptr, ptr %7, align 8, !dbg !2694
  %113 = getelementptr inbounds %struct.message_to_relay, ptr %112, i32 0, i32 2, !dbg !2695
  %114 = getelementptr inbounds %struct.socket_message, ptr %113, i32 0, i32 1, !dbg !2696
  %115 = getelementptr inbounds %struct._ioa_net_data, ptr %114, i32 0, i32 1, !dbg !2697
  %116 = load ptr, ptr %115, align 8, !dbg !2697
  call void @ioa_network_buffer_delete(ptr noundef %111, ptr noundef %116), !dbg !2698
  %117 = load ptr, ptr %7, align 8, !dbg !2699
  %118 = getelementptr inbounds %struct.message_to_relay, ptr %117, i32 0, i32 2, !dbg !2700
  %119 = getelementptr inbounds %struct.socket_message, ptr %118, i32 0, i32 1, !dbg !2701
  %120 = getelementptr inbounds %struct._ioa_net_data, ptr %119, i32 0, i32 1, !dbg !2702
  store ptr null, ptr %120, align 8, !dbg !2703
  call void @llvm.dbg.declare(metadata ptr %16, metadata !2704, metadata !DIExpression()), !dbg !2705
  %121 = load ptr, ptr %11, align 8, !dbg !2706
  %122 = getelementptr inbounds %struct._ioa_socket, ptr %121, i32 0, i32 22, !dbg !2707
  %123 = load ptr, ptr %122, align 8, !dbg !2707
  store ptr %123, ptr %16, align 8, !dbg !2705
  %124 = load ptr, ptr %16, align 8, !dbg !2708
  %125 = icmp ne ptr %124, null, !dbg !2708
  br i1 %125, label %126, label %137, !dbg !2710

126:                                              ; preds = %110
  call void @llvm.dbg.declare(metadata ptr %17, metadata !2711, metadata !DIExpression()), !dbg !2713
  %127 = load ptr, ptr %16, align 8, !dbg !2714
  %128 = getelementptr inbounds %struct._ts_ur_super_session, ptr %127, i32 0, i32 0, !dbg !2715
  %129 = load ptr, ptr %128, align 8, !dbg !2715
  store ptr %129, ptr %17, align 8, !dbg !2713
  %130 = load ptr, ptr %17, align 8, !dbg !2716
  %131 = icmp ne ptr %130, null, !dbg !2716
  br i1 %131, label %132, label %136, !dbg !2718

132:                                              ; preds = %126
  %133 = load ptr, ptr %17, align 8, !dbg !2719
  %134 = load ptr, ptr %16, align 8, !dbg !2721
  %135 = call i32 @shutdown_client_connection(ptr noundef %133, ptr noundef %134, i32 noundef 0, ptr noundef @.str.28), !dbg !2722
  br label %136, !dbg !2723

136:                                              ; preds = %132, %126
  br label %139, !dbg !2724

137:                                              ; preds = %110
  %138 = load ptr, ptr %11, align 8, !dbg !2725
  call void @close_ioa_socket(ptr noundef %138), !dbg !2727
  br label %139

139:                                              ; preds = %137, %136
  %140 = load ptr, ptr %13, align 8, !dbg !2728
  %141 = load ptr, ptr %7, align 8, !dbg !2729
  %142 = getelementptr inbounds %struct.message_to_relay, ptr %141, i32 0, i32 2, !dbg !2730
  %143 = getelementptr inbounds %struct.socket_message, ptr %142, i32 0, i32 1, !dbg !2731
  %144 = getelementptr inbounds %struct._ioa_net_data, ptr %143, i32 0, i32 0, !dbg !2732
  %145 = call i32 @ur_addr_map_del(ptr noundef %140, ptr noundef %144, ptr noundef null), !dbg !2733
  %146 = load ptr, ptr %7, align 8, !dbg !2734
  %147 = getelementptr inbounds %struct.message_to_relay, ptr %146, i32 0, i32 2, !dbg !2735
  %148 = getelementptr inbounds %struct.socket_message, ptr %147, i32 0, i32 0, !dbg !2736
  store ptr null, ptr %148, align 8, !dbg !2737
  store ptr null, ptr %11, align 8, !dbg !2738
  store ptr null, ptr %14, align 8, !dbg !2739
  br label %170, !dbg !2740

149:                                              ; preds = %94
  %150 = load ptr, ptr %7, align 8, !dbg !2741
  %151 = getelementptr inbounds %struct.message_to_relay, ptr %150, i32 0, i32 2, !dbg !2743
  %152 = getelementptr inbounds %struct.socket_message, ptr %151, i32 0, i32 1, !dbg !2744
  %153 = getelementptr inbounds %struct._ioa_net_data, ptr %152, i32 0, i32 1, !dbg !2745
  %154 = load ptr, ptr %153, align 8, !dbg !2745
  %155 = call i64 @ioa_network_buffer_get_size(ptr noundef %154), !dbg !2746
  %156 = icmp ugt i64 %155, 0, !dbg !2747
  br i1 %156, label %157, label %158, !dbg !2748

157:                                              ; preds = %149
  br label %169, !dbg !2749

158:                                              ; preds = %149
  %159 = load ptr, ptr %8, align 8, !dbg !2751
  %160 = load ptr, ptr %7, align 8, !dbg !2753
  %161 = getelementptr inbounds %struct.message_to_relay, ptr %160, i32 0, i32 2, !dbg !2754
  %162 = getelementptr inbounds %struct.socket_message, ptr %161, i32 0, i32 1, !dbg !2755
  %163 = getelementptr inbounds %struct._ioa_net_data, ptr %162, i32 0, i32 1, !dbg !2756
  %164 = load ptr, ptr %163, align 8, !dbg !2756
  call void @ioa_network_buffer_delete(ptr noundef %159, ptr noundef %164), !dbg !2757
  %165 = load ptr, ptr %7, align 8, !dbg !2758
  %166 = getelementptr inbounds %struct.message_to_relay, ptr %165, i32 0, i32 2, !dbg !2759
  %167 = getelementptr inbounds %struct.socket_message, ptr %166, i32 0, i32 1, !dbg !2760
  %168 = getelementptr inbounds %struct._ioa_net_data, ptr %167, i32 0, i32 1, !dbg !2761
  store ptr null, ptr %168, align 8, !dbg !2762
  br label %169

169:                                              ; preds = %158, %157
  br label %170

170:                                              ; preds = %169, %139
  br label %171, !dbg !2763

171:                                              ; preds = %170, %84
  %172 = load ptr, ptr %11, align 8, !dbg !2764
  %173 = icmp ne ptr %172, null, !dbg !2764
  br i1 %173, label %174, label %245, !dbg !2766

174:                                              ; preds = %171
  %175 = load ptr, ptr %11, align 8, !dbg !2767
  %176 = load ptr, ptr %7, align 8, !dbg !2768
  %177 = getelementptr inbounds %struct.message_to_relay, ptr %176, i32 0, i32 2, !dbg !2769
  %178 = getelementptr inbounds %struct.socket_message, ptr %177, i32 0, i32 1, !dbg !2770
  %179 = getelementptr inbounds %struct._ioa_net_data, ptr %178, i32 0, i32 1, !dbg !2771
  %180 = load ptr, ptr %179, align 8, !dbg !2771
  %181 = call i32 @ioa_socket_check_bandwidth(ptr noundef %175, ptr noundef %180, i32 noundef 1), !dbg !2772
  %182 = icmp ne i32 %181, 0, !dbg !2772
  br i1 %182, label %183, label %245, !dbg !2773

183:                                              ; preds = %174
  %184 = load ptr, ptr %8, align 8, !dbg !2774
  %185 = load ptr, ptr %11, align 8, !dbg !2776
  %186 = getelementptr inbounds %struct._ioa_socket, ptr %185, i32 0, i32 17, !dbg !2777
  store ptr %184, ptr %186, align 8, !dbg !2778
  %187 = load ptr, ptr %11, align 8, !dbg !2779
  %188 = icmp ne ptr %187, null, !dbg !2779
  br i1 %188, label %189, label %244, !dbg !2781

189:                                              ; preds = %183
  %190 = load ptr, ptr %11, align 8, !dbg !2782
  %191 = getelementptr inbounds %struct._ioa_socket, ptr %190, i32 0, i32 19, !dbg !2783
  %192 = load ptr, ptr %191, align 8, !dbg !2783
  %193 = icmp ne ptr %192, null, !dbg !2782
  br i1 %193, label %194, label %244, !dbg !2784

194:                                              ; preds = %189
  %195 = load ptr, ptr %7, align 8, !dbg !2785
  %196 = getelementptr inbounds %struct.message_to_relay, ptr %195, i32 0, i32 2, !dbg !2786
  %197 = getelementptr inbounds %struct.socket_message, ptr %196, i32 0, i32 1, !dbg !2787
  %198 = getelementptr inbounds %struct._ioa_net_data, ptr %197, i32 0, i32 1, !dbg !2788
  %199 = load ptr, ptr %198, align 8, !dbg !2788
  %200 = icmp ne ptr %199, null, !dbg !2785
  br i1 %200, label %201, label %244, !dbg !2789

201:                                              ; preds = %194
  %202 = load ptr, ptr %11, align 8, !dbg !2790
  %203 = getelementptr inbounds %struct._ioa_socket, ptr %202, i32 0, i32 19, !dbg !2792
  %204 = load ptr, ptr %203, align 8, !dbg !2792
  %205 = load ptr, ptr %11, align 8, !dbg !2793
  %206 = load ptr, ptr %7, align 8, !dbg !2794
  %207 = getelementptr inbounds %struct.message_to_relay, ptr %206, i32 0, i32 2, !dbg !2795
  %208 = getelementptr inbounds %struct.socket_message, ptr %207, i32 0, i32 1, !dbg !2796
  %209 = load ptr, ptr %11, align 8, !dbg !2797
  %210 = getelementptr inbounds %struct._ioa_socket, ptr %209, i32 0, i32 20, !dbg !2798
  %211 = load ptr, ptr %210, align 8, !dbg !2798
  call void %204(ptr noundef %205, i32 noundef 2, ptr noundef %208, ptr noundef %211, i32 noundef 1), !dbg !2790
  %212 = load ptr, ptr %8, align 8, !dbg !2799
  %213 = load ptr, ptr %7, align 8, !dbg !2800
  %214 = getelementptr inbounds %struct.message_to_relay, ptr %213, i32 0, i32 2, !dbg !2801
  %215 = getelementptr inbounds %struct.socket_message, ptr %214, i32 0, i32 1, !dbg !2802
  %216 = getelementptr inbounds %struct._ioa_net_data, ptr %215, i32 0, i32 1, !dbg !2803
  %217 = load ptr, ptr %216, align 8, !dbg !2803
  call void @ioa_network_buffer_delete(ptr noundef %212, ptr noundef %217), !dbg !2804
  %218 = load ptr, ptr %7, align 8, !dbg !2805
  %219 = getelementptr inbounds %struct.message_to_relay, ptr %218, i32 0, i32 2, !dbg !2806
  %220 = getelementptr inbounds %struct.socket_message, ptr %219, i32 0, i32 1, !dbg !2807
  %221 = getelementptr inbounds %struct._ioa_net_data, ptr %220, i32 0, i32 1, !dbg !2808
  store ptr null, ptr %221, align 8, !dbg !2809
  %222 = load ptr, ptr %11, align 8, !dbg !2810
  %223 = call i32 @ioa_socket_tobeclosed(ptr noundef %222), !dbg !2812
  %224 = icmp ne i32 %223, 0, !dbg !2812
  br i1 %224, label %225, label %243, !dbg !2813

225:                                              ; preds = %201
  call void @llvm.dbg.declare(metadata ptr %18, metadata !2814, metadata !DIExpression()), !dbg !2816
  %226 = load ptr, ptr %11, align 8, !dbg !2817
  %227 = getelementptr inbounds %struct._ioa_socket, ptr %226, i32 0, i32 22, !dbg !2818
  %228 = load ptr, ptr %227, align 8, !dbg !2818
  store ptr %228, ptr %18, align 8, !dbg !2816
  %229 = load ptr, ptr %18, align 8, !dbg !2819
  %230 = icmp ne ptr %229, null, !dbg !2819
  br i1 %230, label %231, label %242, !dbg !2821

231:                                              ; preds = %225
  call void @llvm.dbg.declare(metadata ptr %19, metadata !2822, metadata !DIExpression()), !dbg !2824
  %232 = load ptr, ptr %18, align 8, !dbg !2825
  %233 = getelementptr inbounds %struct._ts_ur_super_session, ptr %232, i32 0, i32 0, !dbg !2826
  %234 = load ptr, ptr %233, align 8, !dbg !2826
  store ptr %234, ptr %19, align 8, !dbg !2824
  %235 = load ptr, ptr %19, align 8, !dbg !2827
  %236 = icmp ne ptr %235, null, !dbg !2827
  br i1 %236, label %237, label %241, !dbg !2829

237:                                              ; preds = %231
  %238 = load ptr, ptr %19, align 8, !dbg !2830
  %239 = load ptr, ptr %18, align 8, !dbg !2832
  %240 = call i32 @shutdown_client_connection(ptr noundef %238, ptr noundef %239, i32 noundef 0, ptr noundef @.str.29), !dbg !2833
  br label %241, !dbg !2834

241:                                              ; preds = %237, %231
  br label %242, !dbg !2835

242:                                              ; preds = %241, %225
  br label %243, !dbg !2836

243:                                              ; preds = %242, %201
  br label %244, !dbg !2837

244:                                              ; preds = %243, %194, %189, %183
  br label %245, !dbg !2838

245:                                              ; preds = %244, %174, %171
  br label %426, !dbg !2839

246:                                              ; preds = %79, %73, %69, %66
  %247 = load ptr, ptr %14, align 8, !dbg !2840
  %248 = icmp ne ptr %247, null, !dbg !2840
  br i1 %248, label %249, label %280, !dbg !2843

249:                                              ; preds = %246
  %250 = load ptr, ptr %14, align 8, !dbg !2844
  %251 = call i32 @ioa_socket_tobeclosed(ptr noundef %250), !dbg !2845
  %252 = icmp ne i32 %251, 0, !dbg !2845
  br i1 %252, label %253, label %280, !dbg !2846

253:                                              ; preds = %249
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.30, ptr noundef @__FUNCTION__.handle_udp_packet), !dbg !2847
  call void @llvm.dbg.declare(metadata ptr %20, metadata !2849, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.declare(metadata ptr %21, metadata !2853, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.declare(metadata ptr %22, metadata !2855, metadata !DIExpression()), !dbg !2856
  %254 = call i64 @pthread_self() #15, !dbg !2857
  store i64 %254, ptr %22, align 8, !dbg !2856
  %255 = load ptr, ptr %14, align 8, !dbg !2858
  %256 = call ptr @get_local_addr_from_ioa_socket(ptr noundef %255), !dbg !2859
  %257 = getelementptr inbounds [129 x i8], ptr %20, i64 0, i64 0, !dbg !2860
  %258 = call i32 @addr_to_string(ptr noundef %256, ptr noundef %257), !dbg !2861
  %259 = load ptr, ptr %14, align 8, !dbg !2862
  %260 = call ptr @get_remote_addr_from_ioa_socket(ptr noundef %259), !dbg !2863
  %261 = getelementptr inbounds [129 x i8], ptr %21, i64 0, i64 0, !dbg !2864
  %262 = call i32 @addr_to_string(ptr noundef %260, ptr noundef %261), !dbg !2865
  %263 = load i64, ptr %22, align 8, !dbg !2866
  %264 = load ptr, ptr %13, align 8, !dbg !2867
  %265 = ptrtoint ptr %264 to i64, !dbg !2868
  %266 = load ptr, ptr %14, align 8, !dbg !2869
  %267 = getelementptr inbounds %struct._ioa_socket, ptr %266, i32 0, i32 3, !dbg !2870
  %268 = load ptr, ptr %267, align 8, !dbg !2870
  %269 = ptrtoint ptr %268 to i64, !dbg !2871
  %270 = getelementptr inbounds [129 x i8], ptr %20, i64 0, i64 0, !dbg !2872
  %271 = getelementptr inbounds [129 x i8], ptr %21, i64 0, i64 0, !dbg !2873
  %272 = load ptr, ptr %11, align 8, !dbg !2874
  %273 = ptrtoint ptr %272 to i64, !dbg !2875
  %274 = load ptr, ptr %14, align 8, !dbg !2876
  %275 = getelementptr inbounds %struct._ioa_socket, ptr %274, i32 0, i32 21, !dbg !2877
  %276 = load i32, ptr %275, align 8, !dbg !2877
  %277 = load ptr, ptr %14, align 8, !dbg !2878
  %278 = getelementptr inbounds %struct._ioa_socket, ptr %277, i32 0, i32 25, !dbg !2879
  %279 = load i32, ptr %278, align 8, !dbg !2879
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.31, ptr noundef @__FUNCTION__.handle_udp_packet, i64 noundef %263, i64 noundef %265, i64 noundef %269, ptr noundef %270, ptr noundef %271, i64 noundef %273, i32 noundef %276, i32 noundef %279), !dbg !2880
  br label %280, !dbg !2881

280:                                              ; preds = %253, %249, %246
  %281 = load ptr, ptr %14, align 8, !dbg !2882
  %282 = icmp ne ptr %281, null, !dbg !2882
  br i1 %282, label %283, label %289, !dbg !2884

283:                                              ; preds = %280
  %284 = load ptr, ptr %14, align 8, !dbg !2885
  %285 = getelementptr inbounds %struct._ioa_socket, ptr %284, i32 0, i32 2, !dbg !2886
  %286 = load i32, ptr %285, align 8, !dbg !2886
  %287 = icmp ne i32 %286, -1414746641, !dbg !2887
  br i1 %287, label %288, label %289, !dbg !2888

288:                                              ; preds = %283
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.32, ptr noundef @__FUNCTION__.handle_udp_packet), !dbg !2889
  br label %289, !dbg !2891

289:                                              ; preds = %288, %283, %280
  %290 = load ptr, ptr %14, align 8, !dbg !2892
  %291 = icmp ne ptr %290, null, !dbg !2892
  br i1 %291, label %292, label %331, !dbg !2894

292:                                              ; preds = %289
  %293 = load ptr, ptr %14, align 8, !dbg !2895
  %294 = getelementptr inbounds %struct._ioa_socket, ptr %293, i32 0, i32 3, !dbg !2896
  %295 = load ptr, ptr %294, align 8, !dbg !2896
  %296 = load ptr, ptr %13, align 8, !dbg !2897
  %297 = icmp ne ptr %295, %296, !dbg !2898
  br i1 %297, label %298, label %331, !dbg !2899

298:                                              ; preds = %292
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.33, ptr noundef @__FUNCTION__.handle_udp_packet), !dbg !2900
  call void @llvm.dbg.declare(metadata ptr %23, metadata !2902, metadata !DIExpression()), !dbg !2904
  call void @llvm.dbg.declare(metadata ptr %24, metadata !2905, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.declare(metadata ptr %25, metadata !2907, metadata !DIExpression()), !dbg !2908
  %299 = call i64 @pthread_self() #15, !dbg !2909
  store i64 %299, ptr %25, align 8, !dbg !2908
  %300 = load ptr, ptr %14, align 8, !dbg !2910
  %301 = call ptr @get_local_addr_from_ioa_socket(ptr noundef %300), !dbg !2911
  %302 = getelementptr inbounds [129 x i8], ptr %23, i64 0, i64 0, !dbg !2912
  %303 = call i32 @addr_to_string(ptr noundef %301, ptr noundef %302), !dbg !2913
  %304 = load ptr, ptr %14, align 8, !dbg !2914
  %305 = call ptr @get_remote_addr_from_ioa_socket(ptr noundef %304), !dbg !2915
  %306 = getelementptr inbounds [129 x i8], ptr %24, i64 0, i64 0, !dbg !2916
  %307 = call i32 @addr_to_string(ptr noundef %305, ptr noundef %306), !dbg !2917
  %308 = load i64, ptr %25, align 8, !dbg !2918
  %309 = load ptr, ptr %13, align 8, !dbg !2919
  %310 = ptrtoint ptr %309 to i64, !dbg !2920
  %311 = load ptr, ptr %14, align 8, !dbg !2921
  %312 = getelementptr inbounds %struct._ioa_socket, ptr %311, i32 0, i32 3, !dbg !2922
  %313 = load ptr, ptr %312, align 8, !dbg !2922
  %314 = ptrtoint ptr %313 to i64, !dbg !2923
  %315 = getelementptr inbounds [129 x i8], ptr %23, i64 0, i64 0, !dbg !2924
  %316 = getelementptr inbounds [129 x i8], ptr %24, i64 0, i64 0, !dbg !2925
  %317 = load ptr, ptr %14, align 8, !dbg !2926
  %318 = ptrtoint ptr %317 to i64, !dbg !2927
  %319 = load ptr, ptr %14, align 8, !dbg !2928
  %320 = getelementptr inbounds %struct._ioa_socket, ptr %319, i32 0, i32 21, !dbg !2929
  %321 = load i32, ptr %320, align 8, !dbg !2929
  %322 = load ptr, ptr %14, align 8, !dbg !2930
  %323 = getelementptr inbounds %struct._ioa_socket, ptr %322, i32 0, i32 25, !dbg !2931
  %324 = load i32, ptr %323, align 8, !dbg !2931
  %325 = load ptr, ptr %14, align 8, !dbg !2932
  %326 = getelementptr inbounds %struct._ioa_socket, ptr %325, i32 0, i32 7, !dbg !2933
  %327 = load i32, ptr %326, align 4, !dbg !2933
  %328 = load ptr, ptr %14, align 8, !dbg !2934
  %329 = getelementptr inbounds %struct._ioa_socket, ptr %328, i32 0, i32 8, !dbg !2935
  %330 = load i32, ptr %329, align 8, !dbg !2935
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.34, ptr noundef @__FUNCTION__.handle_udp_packet, i64 noundef %308, i64 noundef %310, i64 noundef %314, ptr noundef %315, ptr noundef %316, i64 noundef %318, i32 noundef %321, i32 noundef %324, i32 noundef %327, i32 noundef %330), !dbg !2936
  br label %331, !dbg !2937

331:                                              ; preds = %298, %292, %289
  store ptr null, ptr %14, align 8, !dbg !2938
  %332 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 18), align 4, !dbg !2939
  %333 = icmp ne i32 %332, 0, !dbg !2941
  br i1 %333, label %371, label %334, !dbg !2942

334:                                              ; preds = %331
  %335 = load ptr, ptr %7, align 8, !dbg !2943
  %336 = getelementptr inbounds %struct.message_to_relay, ptr %335, i32 0, i32 2, !dbg !2944
  %337 = getelementptr inbounds %struct.socket_message, ptr %336, i32 0, i32 1, !dbg !2945
  %338 = getelementptr inbounds %struct._ioa_net_data, ptr %337, i32 0, i32 1, !dbg !2946
  %339 = load ptr, ptr %338, align 8, !dbg !2946
  %340 = call ptr @ioa_network_buffer_data(ptr noundef %339), !dbg !2947
  %341 = load ptr, ptr %7, align 8, !dbg !2948
  %342 = getelementptr inbounds %struct.message_to_relay, ptr %341, i32 0, i32 2, !dbg !2949
  %343 = getelementptr inbounds %struct.socket_message, ptr %342, i32 0, i32 1, !dbg !2950
  %344 = getelementptr inbounds %struct._ioa_net_data, ptr %343, i32 0, i32 1, !dbg !2951
  %345 = load ptr, ptr %344, align 8, !dbg !2951
  %346 = call i64 @ioa_network_buffer_get_size(ptr noundef %345), !dbg !2952
  %347 = trunc i64 %346 to i32, !dbg !2953
  %348 = call i32 @is_dtls_handshake_message(ptr noundef %340, i32 noundef %347), !dbg !2954
  %349 = icmp ne i32 %348, 0, !dbg !2954
  br i1 %349, label %350, label %371, !dbg !2955

350:                                              ; preds = %334
  %351 = load ptr, ptr %6, align 8, !dbg !2956
  %352 = load ptr, ptr %11, align 8, !dbg !2958
  %353 = load ptr, ptr %7, align 8, !dbg !2959
  %354 = getelementptr inbounds %struct.message_to_relay, ptr %353, i32 0, i32 2, !dbg !2960
  %355 = getelementptr inbounds %struct.socket_message, ptr %354, i32 0, i32 1, !dbg !2961
  %356 = getelementptr inbounds %struct._ioa_net_data, ptr %355, i32 0, i32 1, !dbg !2962
  %357 = load ptr, ptr %356, align 8, !dbg !2962
  %358 = call ptr @dtls_server_input_handler(ptr noundef %351, ptr noundef %352, ptr noundef %357), !dbg !2963
  store ptr %358, ptr %14, align 8, !dbg !2964
  %359 = load ptr, ptr %6, align 8, !dbg !2965
  %360 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %359, i32 0, i32 2, !dbg !2966
  %361 = load ptr, ptr %360, align 8, !dbg !2966
  %362 = load ptr, ptr %7, align 8, !dbg !2967
  %363 = getelementptr inbounds %struct.message_to_relay, ptr %362, i32 0, i32 2, !dbg !2968
  %364 = getelementptr inbounds %struct.socket_message, ptr %363, i32 0, i32 1, !dbg !2969
  %365 = getelementptr inbounds %struct._ioa_net_data, ptr %364, i32 0, i32 1, !dbg !2970
  %366 = load ptr, ptr %365, align 8, !dbg !2970
  call void @ioa_network_buffer_delete(ptr noundef %361, ptr noundef %366), !dbg !2971
  %367 = load ptr, ptr %7, align 8, !dbg !2972
  %368 = getelementptr inbounds %struct.message_to_relay, ptr %367, i32 0, i32 2, !dbg !2973
  %369 = getelementptr inbounds %struct.socket_message, ptr %368, i32 0, i32 1, !dbg !2974
  %370 = getelementptr inbounds %struct._ioa_net_data, ptr %369, i32 0, i32 1, !dbg !2975
  store ptr null, ptr %370, align 8, !dbg !2976
  br label %371, !dbg !2977

371:                                              ; preds = %350, %334, %331
  %372 = load ptr, ptr %14, align 8, !dbg !2978
  %373 = icmp ne ptr %372, null, !dbg !2978
  br i1 %373, label %387, label %374, !dbg !2980

374:                                              ; preds = %371
  %375 = load ptr, ptr %8, align 8, !dbg !2981
  %376 = load ptr, ptr %11, align 8, !dbg !2983
  %377 = getelementptr inbounds %struct._ioa_socket, ptr %376, i32 0, i32 0, !dbg !2984
  %378 = load i32, ptr %377, align 8, !dbg !2984
  %379 = load ptr, ptr %11, align 8, !dbg !2985
  %380 = load ptr, ptr %7, align 8, !dbg !2986
  %381 = getelementptr inbounds %struct.message_to_relay, ptr %380, i32 0, i32 2, !dbg !2987
  %382 = getelementptr inbounds %struct.socket_message, ptr %381, i32 0, i32 1, !dbg !2988
  %383 = getelementptr inbounds %struct._ioa_net_data, ptr %382, i32 0, i32 0, !dbg !2989
  %384 = load ptr, ptr %11, align 8, !dbg !2990
  %385 = call ptr @get_local_addr_from_ioa_socket(ptr noundef %384), !dbg !2991
  %386 = call ptr @create_ioa_socket_from_fd(ptr noundef %375, i32 noundef %378, ptr noundef %379, i32 noundef 17, i32 noundef 1, ptr noundef %383, ptr noundef %385), !dbg !2992
  store ptr %386, ptr %14, align 8, !dbg !2993
  br label %387, !dbg !2994

387:                                              ; preds = %374, %371
  %388 = load ptr, ptr %14, align 8, !dbg !2995
  store ptr %388, ptr %11, align 8, !dbg !2996
  %389 = load ptr, ptr %11, align 8, !dbg !2997
  %390 = load ptr, ptr %7, align 8, !dbg !2998
  %391 = getelementptr inbounds %struct.message_to_relay, ptr %390, i32 0, i32 2, !dbg !2999
  %392 = getelementptr inbounds %struct.socket_message, ptr %391, i32 0, i32 0, !dbg !3000
  store ptr %389, ptr %392, align 8, !dbg !3001
  %393 = load ptr, ptr %11, align 8, !dbg !3002
  %394 = icmp ne ptr %393, null, !dbg !3002
  br i1 %394, label %395, label %425, !dbg !3004

395:                                              ; preds = %387
  %396 = load i32, ptr %10, align 4, !dbg !3005
  %397 = icmp ne i32 %396, 0, !dbg !3005
  br i1 %397, label %398, label %412, !dbg !3008

398:                                              ; preds = %395
  %399 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 94), align 4, !dbg !3009
  %400 = icmp ne i32 %399, 0, !dbg !3010
  br i1 %400, label %401, label %412, !dbg !3011

401:                                              ; preds = %398
  call void @llvm.dbg.declare(metadata ptr %26, metadata !3012, metadata !DIExpression()), !dbg !3014
  call void @llvm.dbg.declare(metadata ptr %27, metadata !3015, metadata !DIExpression()), !dbg !3016
  %402 = load ptr, ptr %11, align 8, !dbg !3017
  %403 = call ptr @get_local_addr_from_ioa_socket(ptr noundef %402), !dbg !3018
  %404 = getelementptr inbounds [129 x i8], ptr %26, i64 0, i64 0, !dbg !3019
  %405 = call i32 @addr_to_string(ptr noundef %403, ptr noundef %404), !dbg !3020
  %406 = load ptr, ptr %11, align 8, !dbg !3021
  %407 = call ptr @get_remote_addr_from_ioa_socket(ptr noundef %406), !dbg !3022
  %408 = getelementptr inbounds [129 x i8], ptr %27, i64 0, i64 0, !dbg !3023
  %409 = call i32 @addr_to_string(ptr noundef %407, ptr noundef %408), !dbg !3024
  %410 = getelementptr inbounds [129 x i8], ptr %26, i64 0, i64 0, !dbg !3025
  %411 = getelementptr inbounds [129 x i8], ptr %27, i64 0, i64 0, !dbg !3026
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.35, ptr noundef @__FUNCTION__.handle_udp_packet, ptr noundef %410, ptr noundef %411), !dbg !3027
  br label %412, !dbg !3028

412:                                              ; preds = %401, %398, %395
  %413 = load ptr, ptr %8, align 8, !dbg !3029
  %414 = load ptr, ptr %11, align 8, !dbg !3030
  %415 = getelementptr inbounds %struct._ioa_socket, ptr %414, i32 0, i32 17, !dbg !3031
  store ptr %413, ptr %415, align 8, !dbg !3032
  %416 = load ptr, ptr %11, align 8, !dbg !3033
  %417 = load ptr, ptr %13, align 8, !dbg !3034
  call void @add_socket_to_map(ptr noundef %416, ptr noundef %417), !dbg !3035
  %418 = load ptr, ptr %9, align 8, !dbg !3036
  %419 = load ptr, ptr %7, align 8, !dbg !3038
  %420 = getelementptr inbounds %struct.message_to_relay, ptr %419, i32 0, i32 2, !dbg !3039
  %421 = call i32 @open_client_connection_session(ptr noundef %418, ptr noundef %420), !dbg !3040
  %422 = icmp slt i32 %421, 0, !dbg !3041
  br i1 %422, label %423, label %424, !dbg !3042

423:                                              ; preds = %412
  store i32 -1, ptr %5, align 4, !dbg !3043
  br label %427, !dbg !3043

424:                                              ; preds = %412
  br label %425, !dbg !3045

425:                                              ; preds = %424, %387
  br label %426

426:                                              ; preds = %425, %245
  store i32 0, ptr %5, align 4, !dbg !3046
  br label %427, !dbg !3046

427:                                              ; preds = %426, %423
  %428 = load i32, ptr %5, align 4, !dbg !3047
  ret i32 %428, !dbg !3047
}

declare i32 @close(i32 noundef) #2

declare i32 @set_socket_options(ptr noundef) #2

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

declare void @addr_cpy(ptr noundef, ptr noundef) #2

declare i32 @addr_connect(i32 noundef, ptr noundef, ptr noundef) #2

declare ptr @BIO_new_dgram(i32 noundef, i32 noundef) #2

declare ptr @SSL_new(ptr noundef) #2

declare void @SSL_set_accept_state(ptr noundef) #2

declare void @SSL_set_bio(ptr noundef, ptr noundef, ptr noundef) #2

declare i64 @SSL_set_options(ptr noundef, i64 noundef) #2

declare i64 @SSL_ctrl(ptr noundef, i32 noundef, i64 noundef, ptr noundef) #2

declare i32 @ssl_read(i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare i32 @SSL_get_shutdown(ptr noundef) #2

declare void @SSL_set_shutdown(ptr noundef, i32 noundef) #2

declare i32 @SSL_shutdown(ptr noundef) #2

declare void @SSL_free(ptr noundef) #2

declare void @ur_addr_map_init(ptr noundef) #2

declare i32 @ur_addr_map_get(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @ioa_socket_tobeclosed(ptr noundef) #2

declare i32 @shutdown_client_connection(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

declare i32 @ur_addr_map_del(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @ioa_socket_check_bandwidth(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind willreturn memory(none)
declare i64 @pthread_self() #8

declare ptr @get_local_addr_from_ioa_socket(ptr noundef) #2

declare ptr @get_remote_addr_from_ioa_socket(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @dtls_server_input_handler(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !3048 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca %struct.timeval, align 8
  %11 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3051, metadata !DIExpression()), !dbg !3052
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3053, metadata !DIExpression()), !dbg !3054
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3055, metadata !DIExpression()), !dbg !3056
  %12 = load ptr, ptr %5, align 8, !dbg !3057
  %13 = icmp ne ptr %12, null, !dbg !3057
  br i1 %13, label %14, label %20, !dbg !3057

14:                                               ; preds = %3
  %15 = load ptr, ptr %5, align 8, !dbg !3057
  %16 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %15, i32 0, i32 4, !dbg !3057
  %17 = load i32, ptr %16, align 8, !dbg !3057
  %18 = icmp eq i32 %17, 2, !dbg !3057
  br i1 %18, label %19, label %20, !dbg !3059

19:                                               ; preds = %14
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.4, ptr noundef @__FUNCTION__.dtls_server_input_handler, i32 noundef 262), !dbg !3057
  br label %20, !dbg !3057

20:                                               ; preds = %19, %14, %3
  %21 = load ptr, ptr %5, align 8, !dbg !3060
  %22 = icmp ne ptr %21, null, !dbg !3060
  br i1 %22, label %23, label %26, !dbg !3062

23:                                               ; preds = %20
  %24 = load ptr, ptr %7, align 8, !dbg !3063
  %25 = icmp ne ptr %24, null, !dbg !3063
  br i1 %25, label %27, label %26, !dbg !3064

26:                                               ; preds = %23, %20
  store ptr null, ptr %4, align 8, !dbg !3065
  br label %100, !dbg !3065

27:                                               ; preds = %23
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3067, metadata !DIExpression()), !dbg !3068
  store ptr null, ptr %8, align 8, !dbg !3068
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3069, metadata !DIExpression()), !dbg !3070
  store ptr null, ptr %9, align 8, !dbg !3070
  call void @llvm.dbg.declare(metadata ptr %10, metadata !3071, metadata !DIExpression()), !dbg !3072
  %28 = load ptr, ptr %6, align 8, !dbg !3073
  %29 = getelementptr inbounds %struct._ioa_socket, ptr %28, i32 0, i32 0, !dbg !3074
  %30 = load i32, ptr %29, align 8, !dbg !3074
  %31 = call ptr @BIO_new_dgram(i32 noundef %30, i32 noundef 0), !dbg !3075
  store ptr %31, ptr %9, align 8, !dbg !3076
  %32 = load ptr, ptr %9, align 8, !dbg !3077
  %33 = load ptr, ptr %5, align 8, !dbg !3077
  %34 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %33, i32 0, i32 8, !dbg !3077
  %35 = getelementptr inbounds %struct.message_to_relay, ptr %34, i32 0, i32 2, !dbg !3077
  %36 = getelementptr inbounds %struct.socket_message, ptr %35, i32 0, i32 1, !dbg !3077
  %37 = getelementptr inbounds %struct._ioa_net_data, ptr %36, i32 0, i32 0, !dbg !3077
  %38 = call i64 @BIO_ctrl(ptr noundef %32, i32 noundef 44, i64 noundef 0, ptr noundef %37), !dbg !3077
  %39 = trunc i64 %38 to i32, !dbg !3077
  %40 = getelementptr inbounds %struct.timeval, ptr %10, i32 0, i32 0, !dbg !3078
  store i64 5, ptr %40, align 8, !dbg !3079
  %41 = getelementptr inbounds %struct.timeval, ptr %10, i32 0, i32 1, !dbg !3080
  store i64 0, ptr %41, align 8, !dbg !3081
  %42 = load ptr, ptr %9, align 8, !dbg !3082
  %43 = call i64 @BIO_ctrl(ptr noundef %42, i32 noundef 33, i64 noundef 0, ptr noundef %10), !dbg !3083
  %44 = load ptr, ptr %7, align 8, !dbg !3084
  %45 = call ptr @ioa_network_buffer_data(ptr noundef %44), !dbg !3086
  %46 = load ptr, ptr %7, align 8, !dbg !3087
  %47 = call i64 @ioa_network_buffer_get_size(ptr noundef %46), !dbg !3088
  %48 = trunc i64 %47 to i32, !dbg !3089
  %49 = call i32 @get_dtls_version(ptr noundef %45, i32 noundef %48), !dbg !3090
  %50 = icmp eq i32 %49, 1, !dbg !3091
  br i1 %50, label %51, label %58, !dbg !3092

51:                                               ; preds = %27
  %52 = load ptr, ptr %5, align 8, !dbg !3093
  %53 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %52, i32 0, i32 2, !dbg !3095
  %54 = load ptr, ptr %53, align 8, !dbg !3095
  %55 = getelementptr inbounds %struct._ioa_engine, ptr %54, i32 0, i32 12, !dbg !3096
  %56 = load ptr, ptr %55, align 8, !dbg !3096
  %57 = call ptr @SSL_new(ptr noundef %56), !dbg !3097
  store ptr %57, ptr %8, align 8, !dbg !3098
  br label %65, !dbg !3099

58:                                               ; preds = %27
  %59 = load ptr, ptr %5, align 8, !dbg !3100
  %60 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %59, i32 0, i32 2, !dbg !3102
  %61 = load ptr, ptr %60, align 8, !dbg !3102
  %62 = getelementptr inbounds %struct._ioa_engine, ptr %61, i32 0, i32 11, !dbg !3103
  %63 = load ptr, ptr %62, align 8, !dbg !3103
  %64 = call ptr @SSL_new(ptr noundef %63), !dbg !3104
  store ptr %64, ptr %8, align 8, !dbg !3105
  br label %65

65:                                               ; preds = %58, %51
  %66 = load ptr, ptr %8, align 8, !dbg !3106
  call void @SSL_set_accept_state(ptr noundef %66), !dbg !3107
  %67 = load ptr, ptr %8, align 8, !dbg !3108
  %68 = load ptr, ptr %9, align 8, !dbg !3109
  call void @SSL_set_bio(ptr noundef %67, ptr noundef null, ptr noundef %68), !dbg !3110
  %69 = load ptr, ptr %8, align 8, !dbg !3111
  %70 = call i64 @SSL_set_options(ptr noundef %69, i64 noundef 8192), !dbg !3112
  %71 = load ptr, ptr %8, align 8, !dbg !3113
  %72 = call i64 @SSL_ctrl(ptr noundef %71, i32 noundef 51, i64 noundef 655350, ptr noundef null), !dbg !3113
  call void @llvm.dbg.declare(metadata ptr %11, metadata !3114, metadata !DIExpression()), !dbg !3115
  %73 = load ptr, ptr %5, align 8, !dbg !3116
  %74 = load ptr, ptr %6, align 8, !dbg !3117
  %75 = load ptr, ptr %8, align 8, !dbg !3118
  %76 = load ptr, ptr %5, align 8, !dbg !3119
  %77 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %76, i32 0, i32 8, !dbg !3120
  %78 = getelementptr inbounds %struct.message_to_relay, ptr %77, i32 0, i32 2, !dbg !3121
  %79 = getelementptr inbounds %struct.socket_message, ptr %78, i32 0, i32 1, !dbg !3122
  %80 = getelementptr inbounds %struct._ioa_net_data, ptr %79, i32 0, i32 0, !dbg !3123
  %81 = load ptr, ptr %5, align 8, !dbg !3124
  %82 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %81, i32 0, i32 1, !dbg !3125
  %83 = load ptr, ptr %7, align 8, !dbg !3126
  %84 = call ptr @dtls_accept_client_connection(ptr noundef %73, ptr noundef %74, ptr noundef %75, ptr noundef %80, ptr noundef %82, ptr noundef %83), !dbg !3127
  store ptr %84, ptr %11, align 8, !dbg !3115
  %85 = load ptr, ptr %11, align 8, !dbg !3128
  %86 = icmp ne ptr %85, null, !dbg !3128
  br i1 %86, label %98, label %87, !dbg !3130

87:                                               ; preds = %65
  %88 = load ptr, ptr %8, align 8, !dbg !3131
  %89 = call i32 @SSL_get_shutdown(ptr noundef %88), !dbg !3134
  %90 = and i32 %89, 1, !dbg !3135
  %91 = icmp ne i32 %90, 0, !dbg !3135
  br i1 %91, label %96, label %92, !dbg !3136

92:                                               ; preds = %87
  %93 = load ptr, ptr %8, align 8, !dbg !3137
  call void @SSL_set_shutdown(ptr noundef %93, i32 noundef 2), !dbg !3139
  %94 = load ptr, ptr %8, align 8, !dbg !3140
  %95 = call i32 @SSL_shutdown(ptr noundef %94), !dbg !3141
  br label %96, !dbg !3142

96:                                               ; preds = %92, %87
  %97 = load ptr, ptr %8, align 8, !dbg !3143
  call void @SSL_free(ptr noundef %97), !dbg !3144
  br label %98, !dbg !3145

98:                                               ; preds = %96, %65
  %99 = load ptr, ptr %11, align 8, !dbg !3146
  store ptr %99, ptr %4, align 8, !dbg !3147
  br label %100, !dbg !3147

100:                                              ; preds = %98, %26
  %101 = load ptr, ptr %4, align 8, !dbg !3148
  ret ptr %101, !dbg !3148
}

declare void @add_socket_to_map(ptr noundef, ptr noundef) #2

declare i32 @open_client_connection_session(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @dtls_accept_client_connection(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #0 !dbg !3149 {
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  %15 = alloca ptr, align 8
  store ptr %0, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3152, metadata !DIExpression()), !dbg !3153
  store ptr %1, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3154, metadata !DIExpression()), !dbg !3155
  store ptr %2, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !3156, metadata !DIExpression()), !dbg !3157
  store ptr %3, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !3158, metadata !DIExpression()), !dbg !3159
  store ptr %4, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !3160, metadata !DIExpression()), !dbg !3161
  store ptr %5, ptr %13, align 8
  call void @llvm.dbg.declare(metadata ptr %13, metadata !3162, metadata !DIExpression()), !dbg !3163
  %16 = load ptr, ptr %8, align 8, !dbg !3164
  %17 = icmp ne ptr %16, null, !dbg !3164
  br i1 %17, label %18, label %24, !dbg !3164

18:                                               ; preds = %6
  %19 = load ptr, ptr %8, align 8, !dbg !3164
  %20 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %19, i32 0, i32 4, !dbg !3164
  %21 = load i32, ptr %20, align 8, !dbg !3164
  %22 = icmp eq i32 %21, 2, !dbg !3164
  br i1 %22, label %23, label %24, !dbg !3166

23:                                               ; preds = %18
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.4, ptr noundef @__FUNCTION__.dtls_accept_client_connection, i32 noundef 231), !dbg !3164
  br label %24, !dbg !3164

24:                                               ; preds = %23, %18, %6
  %25 = load ptr, ptr %10, align 8, !dbg !3167
  %26 = icmp ne ptr %25, null, !dbg !3167
  br i1 %26, label %28, label %27, !dbg !3169

27:                                               ; preds = %24
  store ptr null, ptr %7, align 8, !dbg !3170
  br label %90, !dbg !3170

28:                                               ; preds = %24
  call void @llvm.dbg.declare(metadata ptr %14, metadata !3171, metadata !DIExpression()), !dbg !3172
  %29 = load ptr, ptr %9, align 8, !dbg !3173
  %30 = getelementptr inbounds %struct._ioa_socket, ptr %29, i32 0, i32 0, !dbg !3174
  %31 = load i32, ptr %30, align 8, !dbg !3174
  %32 = load ptr, ptr %10, align 8, !dbg !3175
  %33 = load ptr, ptr %13, align 8, !dbg !3176
  %34 = load ptr, ptr %8, align 8, !dbg !3177
  %35 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %34, i32 0, i32 4, !dbg !3178
  %36 = load i32, ptr %35, align 8, !dbg !3178
  %37 = call i32 @ssl_read(i32 noundef %31, ptr noundef %32, ptr noundef %33, i32 noundef %36), !dbg !3179
  store i32 %37, ptr %14, align 4, !dbg !3172
  %38 = load i32, ptr %14, align 4, !dbg !3180
  %39 = icmp slt i32 %38, 0, !dbg !3182
  br i1 %39, label %40, label %41, !dbg !3183

40:                                               ; preds = %28
  store ptr null, ptr %7, align 8, !dbg !3184
  br label %90, !dbg !3184

41:                                               ; preds = %28
  %42 = load ptr, ptr %8, align 8, !dbg !3185
  %43 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %42, i32 0, i32 4, !dbg !3186
  %44 = load i32, ptr %43, align 8, !dbg !3186
  %45 = load ptr, ptr %11, align 8, !dbg !3187
  call void @addr_debug_print(i32 noundef %44, ptr noundef %45, ptr noundef @.str.36), !dbg !3188
  call void @llvm.dbg.declare(metadata ptr %15, metadata !3189, metadata !DIExpression()), !dbg !3190
  %46 = load ptr, ptr %8, align 8, !dbg !3191
  %47 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %46, i32 0, i32 2, !dbg !3192
  %48 = load ptr, ptr %47, align 8, !dbg !3192
  %49 = load ptr, ptr %9, align 8, !dbg !3193
  %50 = load ptr, ptr %10, align 8, !dbg !3194
  %51 = load ptr, ptr %11, align 8, !dbg !3195
  %52 = load ptr, ptr %12, align 8, !dbg !3196
  %53 = call ptr @create_ioa_socket_from_ssl(ptr noundef %48, ptr noundef %49, ptr noundef %50, i32 noundef 250, i32 noundef 1, ptr noundef %51, ptr noundef %52), !dbg !3197
  store ptr %53, ptr %15, align 8, !dbg !3190
  %54 = load ptr, ptr %15, align 8, !dbg !3198
  %55 = icmp ne ptr %54, null, !dbg !3198
  br i1 %55, label %56, label %78, !dbg !3200

56:                                               ; preds = %41
  %57 = load ptr, ptr %8, align 8, !dbg !3201
  %58 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %57, i32 0, i32 8, !dbg !3203
  %59 = getelementptr inbounds %struct.message_to_relay, ptr %58, i32 0, i32 2, !dbg !3204
  %60 = getelementptr inbounds %struct.socket_message, ptr %59, i32 0, i32 1, !dbg !3205
  %61 = getelementptr inbounds %struct._ioa_net_data, ptr %60, i32 0, i32 0, !dbg !3206
  %62 = load ptr, ptr %11, align 8, !dbg !3207
  call void @addr_cpy(ptr noundef %61, ptr noundef %62), !dbg !3208
  %63 = load ptr, ptr %8, align 8, !dbg !3209
  %64 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %63, i32 0, i32 8, !dbg !3210
  %65 = getelementptr inbounds %struct.message_to_relay, ptr %64, i32 0, i32 2, !dbg !3211
  %66 = getelementptr inbounds %struct.socket_message, ptr %65, i32 0, i32 1, !dbg !3212
  %67 = getelementptr inbounds %struct._ioa_net_data, ptr %66, i32 0, i32 2, !dbg !3213
  store i32 -1, ptr %67, align 8, !dbg !3214
  %68 = load ptr, ptr %8, align 8, !dbg !3215
  %69 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %68, i32 0, i32 8, !dbg !3216
  %70 = getelementptr inbounds %struct.message_to_relay, ptr %69, i32 0, i32 2, !dbg !3217
  %71 = getelementptr inbounds %struct.socket_message, ptr %70, i32 0, i32 1, !dbg !3218
  %72 = getelementptr inbounds %struct._ioa_net_data, ptr %71, i32 0, i32 3, !dbg !3219
  store i32 -1, ptr %72, align 4, !dbg !3220
  %73 = load ptr, ptr %15, align 8, !dbg !3221
  %74 = load ptr, ptr %8, align 8, !dbg !3222
  %75 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %74, i32 0, i32 8, !dbg !3223
  %76 = getelementptr inbounds %struct.message_to_relay, ptr %75, i32 0, i32 2, !dbg !3224
  %77 = getelementptr inbounds %struct.socket_message, ptr %76, i32 0, i32 0, !dbg !3225
  store ptr %73, ptr %77, align 8, !dbg !3226
  br label %79, !dbg !3227

78:                                               ; preds = %41
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.37), !dbg !3228
  br label %79

79:                                               ; preds = %78, %56
  %80 = load ptr, ptr %8, align 8, !dbg !3230
  %81 = icmp ne ptr %80, null, !dbg !3230
  br i1 %81, label %82, label %88, !dbg !3230

82:                                               ; preds = %79
  %83 = load ptr, ptr %8, align 8, !dbg !3230
  %84 = getelementptr inbounds %struct.dtls_listener_relay_server_info, ptr %83, i32 0, i32 4, !dbg !3230
  %85 = load i32, ptr %84, align 8, !dbg !3230
  %86 = icmp eq i32 %85, 2, !dbg !3230
  br i1 %86, label %87, label %88, !dbg !3232

87:                                               ; preds = %82
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.14, ptr noundef @__FUNCTION__.dtls_accept_client_connection, i32 noundef 253), !dbg !3230
  br label %88, !dbg !3230

88:                                               ; preds = %87, %82, %79
  %89 = load ptr, ptr %15, align 8, !dbg !3233
  store ptr %89, ptr %7, align 8, !dbg !3234
  br label %90, !dbg !3234

90:                                               ; preds = %88, %40, %27
  %91 = load ptr, ptr %7, align 8, !dbg !3235
  ret ptr %91, !dbg !3235
}

declare ptr @create_ioa_socket_from_ssl(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { noreturn }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind willreturn memory(none) }
attributes #16 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!99}
!llvm.module.flags = !{!1112, !1113, !1114, !1115, !1116, !1117, !1118}
!llvm.ident = !{!1119}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 966, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/apps/relay/dtls_listener.c", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "ca5c09643a16b0e8cf2a9c2e85e16fb7")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 48)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 966, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 224, elements: !11)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!11 = !{!12}
!12 = !DISubrange(count: 28)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(scope: null, file: !2, line: 156, type: !15, isLocal: true, isDefinition: true)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !16)
!16 = !{!17}
!17 = !DISubrange(count: 20)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !2, line: 163, type: !20, isLocal: true, isDefinition: true)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 15)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !2, line: 915, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 51)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !2, line: 745, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 13)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !2, line: 745, type: !35, isLocal: true, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 168, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 21)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(scope: null, file: !2, line: 756, type: !40, isLocal: true, isDefinition: true)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 7)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(scope: null, file: !2, line: 765, type: !45, isLocal: true, isDefinition: true)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 42)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(scope: null, file: !2, line: 777, type: !50, isLocal: true, isDefinition: true)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: 33)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(scope: null, file: !2, line: 780, type: !55, isLocal: true, isDefinition: true)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 392, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 49)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(scope: null, file: !2, line: 782, type: !60, isLocal: true, isDefinition: true)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 62)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(scope: null, file: !2, line: 786, type: !65, isLocal: true, isDefinition: true)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 560, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 70)
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(scope: null, file: !2, line: 800, type: !70, isLocal: true, isDefinition: true)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !11)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(scope: null, file: !2, line: 802, type: !73, isLocal: true, isDefinition: true)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !74)
!74 = !{!75}
!75 = !DISubrange(count: 24)
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(scope: null, file: !2, line: 804, type: !78, isLocal: true, isDefinition: true)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: 23)
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression())
!82 = distinct !DIGlobalVariable(scope: null, file: !2, line: 807, type: !83, isLocal: true, isDefinition: true)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !84)
!84 = !{!85}
!85 = !DISubrange(count: 11)
!86 = !DIGlobalVariableExpression(var: !87, expr: !DIExpression())
!87 = distinct !DIGlobalVariable(scope: null, file: !2, line: 622, type: !88, isLocal: true, isDefinition: true)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 200, elements: !89)
!89 = !{!90}
!90 = !DISubrange(count: 25)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(name: "buffer", scope: !93, file: !2, line: 668, type: !1109, isLocal: true, isDefinition: true)
!93 = distinct !DISubprogram(name: "udp_server_input_handler", scope: !2, file: !2, line: 615, type: !94, scopeLine: 616, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !99, retainedNodes: !1108)
!94 = !DISubroutineType(types: !95)
!95 = !{null, !96, !97, !98}
!96 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!97 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!99 = distinct !DICompileUnit(language: DW_LANG_C11, file: !100, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !101, retainedTypes: !236, globals: !1009, splitDebugInlining: false, nameTableKind: None)
!100 = !DIFile(filename: "/home/raj/coturn/src/apps/relay/dtls_listener.c", directory: "/home/raj/coturn/build", checksumkind: CSK_MD5, checksum: "ca5c09643a16b0e8cf2a9c2e85e16fb7")
!101 = !{!102, !110, !116, !129, !140, !149, !156, !161, !168, !180, !211}
!102 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !103, line: 54, baseType: !104, size: 32, elements: !105)
!103 = !DIFile(filename: "src/client/ns_turn_msg.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "43c56357294df21a547ee0716fe3769d")
!104 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!105 = !{!106, !107, !108, !109}
!106 = !DIEnumerator(name: "TURN_CREDENTIALS_NONE", value: 0)
!107 = !DIEnumerator(name: "TURN_CREDENTIALS_LONG_TERM", value: 1)
!108 = !DIEnumerator(name: "TURN_CREDENTIALS_SHORT_TERM", value: 2)
!109 = !DIEnumerator(name: "TURN_CREDENTIALS_UNDEFINED", value: 3)
!110 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !111, line: 92, baseType: !104, size: 32, elements: !112)
!111 = !DIFile(filename: "src/server/ns_turn_server.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "6e53554bfe42393e23ac816233e245b8")
!112 = !{!113, !114, !115}
!113 = !DIEnumerator(name: "DONT_FRAGMENT_UNSUPPORTED", value: 0)
!114 = !DIEnumerator(name: "DONT_FRAGMENT_SUPPORTED", value: 1)
!115 = !DIEnumerator(name: "DONT_FRAGMENT_SUPPORT_EMULATED", value: 2)
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_SOCKET_TYPE", file: !117, line: 85, baseType: !104, size: 32, elements: !118)
!117 = !DIFile(filename: "src/server/ns_turn_ioalib.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "c6bb568b11ce41f25b29a4464aa685c5")
!118 = !{!119, !120, !121, !122, !123, !124, !125, !126, !127, !128}
!119 = !DIEnumerator(name: "UNKNOWN_SOCKET", value: 0)
!120 = !DIEnumerator(name: "TCP_SOCKET", value: 6)
!121 = !DIEnumerator(name: "UDP_SOCKET", value: 17)
!122 = !DIEnumerator(name: "TLS_SOCKET", value: 56)
!123 = !DIEnumerator(name: "SCTP_SOCKET", value: 132)
!124 = !DIEnumerator(name: "TLS_SCTP_SOCKET", value: 133)
!125 = !DIEnumerator(name: "DTLS_SOCKET", value: 250)
!126 = !DIEnumerator(name: "TCP_SOCKET_PROXY", value: 253)
!127 = !DIEnumerator(name: "TENTATIVE_SCTP_SOCKET", value: 254)
!128 = !DIEnumerator(name: "TENTATIVE_TCP_SOCKET", value: 255)
!129 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_SOCKET_APP_TYPE", file: !117, line: 100, baseType: !104, size: 32, elements: !130)
!130 = !{!131, !132, !133, !134, !135, !136, !137, !138, !139}
!131 = !DIEnumerator(name: "UNKNOWN_APP_SOCKET", value: 0)
!132 = !DIEnumerator(name: "CLIENT_SOCKET", value: 1)
!133 = !DIEnumerator(name: "HTTP_CLIENT_SOCKET", value: 2)
!134 = !DIEnumerator(name: "HTTPS_CLIENT_SOCKET", value: 3)
!135 = !DIEnumerator(name: "RELAY_SOCKET", value: 4)
!136 = !DIEnumerator(name: "RELAY_RTCP_SOCKET", value: 5)
!137 = !DIEnumerator(name: "TCP_CLIENT_DATA_SOCKET", value: 6)
!138 = !DIEnumerator(name: "TCP_RELAY_DATA_SOCKET", value: 7)
!139 = !DIEnumerator(name: "LISTENER_SOCKET", value: 8)
!140 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_TC_STATE", file: !141, line: 67, baseType: !104, size: 32, elements: !142)
!141 = !DIFile(filename: "src/server/ns_turn_allocation.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "0cb2cf61c9ec5dd3030a6e5a6f8d4af1")
!142 = !{!143, !144, !145, !146, !147, !148}
!143 = !DIEnumerator(name: "TC_STATE_UNKNOWN", value: 0)
!144 = !DIEnumerator(name: "TC_STATE_CLIENT_TO_PEER_CONNECTING", value: 1)
!145 = !DIEnumerator(name: "TC_STATE_PEER_CONNECTING", value: 2)
!146 = !DIEnumerator(name: "TC_STATE_PEER_CONNECTED", value: 3)
!147 = !DIEnumerator(name: "TC_STATE_READY", value: 4)
!148 = !DIEnumerator(name: "TC_STATE_FAILED", value: 5)
!149 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_MESSAGE_TO_RELAY_TYPE", file: !111, line: 69, baseType: !104, size: 32, elements: !150)
!150 = !{!151, !152, !153, !154, !155}
!151 = !DIEnumerator(name: "RMT_UNKNOWN", value: 0)
!152 = !DIEnumerator(name: "RMT_SOCKET", value: 1)
!153 = !DIEnumerator(name: "RMT_CB_SOCKET", value: 2)
!154 = !DIEnumerator(name: "RMT_MOBILE_SOCKET", value: 3)
!155 = !DIEnumerator(name: "RMT_CANCEL_SESSION", value: 4)
!156 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_ALLOCATION_DEFAULT_ADDRESS_FAMILY", file: !111, line: 79, baseType: !104, size: 32, elements: !157)
!157 = !{!158, !159, !160}
!158 = !DIEnumerator(name: "ALLOCATION_DEFAULT_ADDRESS_FAMILY_IPV4", value: 0)
!159 = !DIEnumerator(name: "ALLOCATION_DEFAULT_ADDRESS_FAMILY_IPV6", value: 1)
!160 = !DIEnumerator(name: "ALLOCATION_DEFAULT_ADDRESS_FAMILY_KEEP", value: 2)
!161 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !162, line: 47, baseType: !104, size: 32, elements: !163)
!162 = !DIFile(filename: "src/apps/common/ns_turn_utils.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "74cb4019b1eb9d8e2b879df518b15a25")
!163 = !{!164, !165, !166, !167}
!164 = !DIEnumerator(name: "TURN_LOG_LEVEL_INFO", value: 0)
!165 = !DIEnumerator(name: "TURN_LOG_LEVEL_CONTROL", value: 1)
!166 = !DIEnumerator(name: "TURN_LOG_LEVEL_WARNING", value: 2)
!167 = !DIEnumerator(name: "TURN_LOG_LEVEL_ERROR", value: 3)
!168 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__socket_type", file: !169, line: 24, baseType: !104, size: 32, elements: !170)
!169 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket_type.h", directory: "", checksumkind: CSK_MD5, checksum: "0d4e972fdeb3da9a5bc94fa41144e9f8")
!170 = !{!171, !172, !173, !174, !175, !176, !177, !178, !179}
!171 = !DIEnumerator(name: "SOCK_STREAM", value: 1)
!172 = !DIEnumerator(name: "SOCK_DGRAM", value: 2)
!173 = !DIEnumerator(name: "SOCK_RAW", value: 3)
!174 = !DIEnumerator(name: "SOCK_RDM", value: 4)
!175 = !DIEnumerator(name: "SOCK_SEQPACKET", value: 5)
!176 = !DIEnumerator(name: "SOCK_DCCP", value: 6)
!177 = !DIEnumerator(name: "SOCK_PACKET", value: 10)
!178 = !DIEnumerator(name: "SOCK_CLOEXEC", value: 524288)
!179 = !DIEnumerator(name: "SOCK_NONBLOCK", value: 2048)
!180 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !181, line: 40, baseType: !104, size: 32, elements: !182)
!181 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "eb6560f10d4cfe9f30fea2c92b9da0fd")
!182 = !{!183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210}
!183 = !DIEnumerator(name: "IPPROTO_IP", value: 0)
!184 = !DIEnumerator(name: "IPPROTO_ICMP", value: 1)
!185 = !DIEnumerator(name: "IPPROTO_IGMP", value: 2)
!186 = !DIEnumerator(name: "IPPROTO_IPIP", value: 4)
!187 = !DIEnumerator(name: "IPPROTO_TCP", value: 6)
!188 = !DIEnumerator(name: "IPPROTO_EGP", value: 8)
!189 = !DIEnumerator(name: "IPPROTO_PUP", value: 12)
!190 = !DIEnumerator(name: "IPPROTO_UDP", value: 17)
!191 = !DIEnumerator(name: "IPPROTO_IDP", value: 22)
!192 = !DIEnumerator(name: "IPPROTO_TP", value: 29)
!193 = !DIEnumerator(name: "IPPROTO_DCCP", value: 33)
!194 = !DIEnumerator(name: "IPPROTO_IPV6", value: 41)
!195 = !DIEnumerator(name: "IPPROTO_RSVP", value: 46)
!196 = !DIEnumerator(name: "IPPROTO_GRE", value: 47)
!197 = !DIEnumerator(name: "IPPROTO_ESP", value: 50)
!198 = !DIEnumerator(name: "IPPROTO_AH", value: 51)
!199 = !DIEnumerator(name: "IPPROTO_MTP", value: 92)
!200 = !DIEnumerator(name: "IPPROTO_BEETPH", value: 94)
!201 = !DIEnumerator(name: "IPPROTO_ENCAP", value: 98)
!202 = !DIEnumerator(name: "IPPROTO_PIM", value: 103)
!203 = !DIEnumerator(name: "IPPROTO_COMP", value: 108)
!204 = !DIEnumerator(name: "IPPROTO_SCTP", value: 132)
!205 = !DIEnumerator(name: "IPPROTO_UDPLITE", value: 136)
!206 = !DIEnumerator(name: "IPPROTO_MPLS", value: 137)
!207 = !DIEnumerator(name: "IPPROTO_ETHERNET", value: 143)
!208 = !DIEnumerator(name: "IPPROTO_RAW", value: 255)
!209 = !DIEnumerator(name: "IPPROTO_MPTCP", value: 262)
!210 = !DIEnumerator(name: "IPPROTO_MAX", value: 263)
!211 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !212, line: 202, baseType: !104, size: 32, elements: !213)
!212 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "e3826be048699664d9ef7b080f62f2e0")
!213 = !{!214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235}
!214 = !DIEnumerator(name: "MSG_OOB", value: 1)
!215 = !DIEnumerator(name: "MSG_PEEK", value: 2)
!216 = !DIEnumerator(name: "MSG_DONTROUTE", value: 4)
!217 = !DIEnumerator(name: "MSG_TRYHARD", value: 4)
!218 = !DIEnumerator(name: "MSG_CTRUNC", value: 8)
!219 = !DIEnumerator(name: "MSG_PROXY", value: 16)
!220 = !DIEnumerator(name: "MSG_TRUNC", value: 32)
!221 = !DIEnumerator(name: "MSG_DONTWAIT", value: 64)
!222 = !DIEnumerator(name: "MSG_EOR", value: 128)
!223 = !DIEnumerator(name: "MSG_WAITALL", value: 256)
!224 = !DIEnumerator(name: "MSG_FIN", value: 512)
!225 = !DIEnumerator(name: "MSG_SYN", value: 1024)
!226 = !DIEnumerator(name: "MSG_CONFIRM", value: 2048)
!227 = !DIEnumerator(name: "MSG_RST", value: 4096)
!228 = !DIEnumerator(name: "MSG_ERRQUEUE", value: 8192)
!229 = !DIEnumerator(name: "MSG_NOSIGNAL", value: 16384)
!230 = !DIEnumerator(name: "MSG_MORE", value: 32768)
!231 = !DIEnumerator(name: "MSG_WAITFORONE", value: 65536)
!232 = !DIEnumerator(name: "MSG_BATCH", value: 262144)
!233 = !DIEnumerator(name: "MSG_ZEROCOPY", value: 67108864)
!234 = !DIEnumerator(name: "MSG_FASTOPEN", value: 536870912)
!235 = !DIEnumerator(name: "MSG_CMSG_CLOEXEC", value: 1073741824)
!236 = !{!98, !237, !996, !96, !997, !998, !1000, !394, !1002, !937, !1003, !794, !589, !1005, !1006, !360, !469, !416, !478, !468, !460, !407}
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "dtls_listener_relay_server_type", file: !239, line: 49, baseType: !240)
!239 = !DIFile(filename: "src/apps/relay/dtls_listener.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "0781c076e4412130d98f5f3bddf10861")
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtls_listener_relay_server_info", file: !2, line: 52, size: 9856, elements: !241)
!241 = !{!242, !246, !309, !406, !942, !943, !944, !945, !946, !989, !990}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "ifname", scope: !240, file: !2, line: 53, baseType: !243, size: 8200)
!243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8200, elements: !244)
!244 = !{!245}
!245 = !DISubrange(count: 1025)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !240, file: !2, line: 54, baseType: !247, size: 224, offset: 8224)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_addr", file: !248, line: 48, baseType: !249)
!248 = !DIFile(filename: "src/client/ns_turn_ioaddr.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "6bb7c107d1e7937049c12f6d0dffd94c")
!249 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !248, line: 44, size: 224, elements: !250)
!250 = !{!251, !262, !284}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !249, file: !248, line: 45, baseType: !252, size: 128)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !212, line: 180, size: 128, elements: !253)
!253 = !{!254, !258}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !252, file: !212, line: 182, baseType: !255, size: 16)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !256, line: 28, baseType: !257)
!256 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "dd7f1d9dd6e26f88d1726905ed5d9ff5")
!257 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !252, file: !212, line: 183, baseType: !259, size: 112, offset: 16)
!259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !260)
!260 = !{!261}
!261 = !DISubrange(count: 14)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "s4", scope: !249, file: !248, line: 46, baseType: !263, size: 128)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !181, line: 245, size: 128, elements: !264)
!264 = !{!265, !266, !272, !279}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !263, file: !181, line: 247, baseType: !255, size: 16)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !263, file: !181, line: 248, baseType: !267, size: 16, offset: 16)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !181, line: 123, baseType: !268)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !269, line: 25, baseType: !270)
!269 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !271, line: 40, baseType: !257)
!271 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!272 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !263, file: !181, line: 249, baseType: !273, size: 32, offset: 32)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !181, line: 31, size: 32, elements: !274)
!274 = !{!275}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !273, file: !181, line: 33, baseType: !276, size: 32)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !181, line: 30, baseType: !277)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !269, line: 26, baseType: !278)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !271, line: 42, baseType: !104)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !263, file: !181, line: 252, baseType: !280, size: 64, offset: 64)
!280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !281, size: 64, elements: !282)
!281 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!282 = !{!283}
!283 = !DISubrange(count: 8)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "s6", scope: !249, file: !248, line: 47, baseType: !285, size: 224)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !181, line: 260, size: 224, elements: !286)
!286 = !{!287, !288, !289, !290, !308}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_family", scope: !285, file: !181, line: 262, baseType: !255, size: 16)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_port", scope: !285, file: !181, line: 263, baseType: !267, size: 16, offset: 16)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_flowinfo", scope: !285, file: !181, line: 264, baseType: !277, size: 32, offset: 32)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !285, file: !181, line: 265, baseType: !291, size: 128, offset: 64)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !181, line: 219, size: 128, elements: !292)
!292 = !{!293}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !291, file: !181, line: 226, baseType: !294, size: 128)
!294 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !291, file: !181, line: 221, size: 128, elements: !295)
!295 = !{!296, !302, !304}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !294, file: !181, line: 223, baseType: !297, size: 128)
!297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 128, elements: !300)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !269, line: 24, baseType: !299)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !271, line: 38, baseType: !281)
!300 = !{!301}
!301 = !DISubrange(count: 16)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !294, file: !181, line: 224, baseType: !303, size: 128)
!303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !268, size: 128, elements: !282)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !294, file: !181, line: 225, baseType: !305, size: 128)
!305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !277, size: 128, elements: !306)
!306 = !{!307}
!307 = !DISubrange(count: 4)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_scope_id", scope: !285, file: !181, line: 266, baseType: !277, size: 32, offset: 192)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !240, file: !2, line: 55, baseType: !310, size: 64, offset: 8448)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_engine_handle", file: !117, line: 120, baseType: !311)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_engine", file: !117, line: 119, baseType: !313)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ioa_engine", file: !314, line: 135, size: 536064, elements: !315)
!314 = !DIFile(filename: "src/apps/relay/ns_ioalib_impl.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "39ae1828625a6763b6269ecb34869b6c")
!315 = !{!316, !321, !325, !326, !327, !332, !337, !366, !371, !372, !373, !374, !375, !376, !379, !381, !385, !387, !397, !398, !399, !400, !401, !403}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "sm", scope: !313, file: !314, line: 137, baseType: !317, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "super_memory_t", file: !319, line: 49, baseType: !320)
!319 = !DIFile(filename: "src/apps/relay/ns_sm.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "9025fd46a533d33a213551fd581f5b89")
!320 = !DICompositeType(tag: DW_TAG_structure_type, name: "_super_memory", file: !319, line: 48, flags: DIFlagFwdDecl)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "event_base", scope: !313, file: !314, line: 138, baseType: !322, size: 64, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DICompositeType(tag: DW_TAG_structure_type, name: "event_base", file: !324, line: 217, flags: DIFlagFwdDecl)
!324 = !DIFile(filename: "/usr/include/event2/event.h", directory: "", checksumkind: CSK_MD5, checksum: "90db4fa73456052afa8984291985dfd5")
!325 = !DIDerivedType(tag: DW_TAG_member, name: "deallocate_eb", scope: !313, file: !314, line: 139, baseType: !96, size: 32, offset: 128)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "verbose", scope: !313, file: !314, line: 140, baseType: !96, size: 32, offset: 160)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "tp", scope: !313, file: !314, line: 141, baseType: !328, size: 64, offset: 192)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "turnipports", file: !330, line: 50, baseType: !331)
!330 = !DIFile(filename: "src/apps/relay/turn_ports.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "11983eef23ed630198ed333562550552")
!331 = !DICompositeType(tag: DW_TAG_structure_type, name: "_turnipports", file: !330, line: 49, flags: DIFlagFwdDecl)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "map_rtcp", scope: !313, file: !314, line: 142, baseType: !333, size: 64, offset: 256)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtcp_map", file: !335, line: 46, baseType: !336)
!335 = !DIFile(filename: "src/server/ns_turn_maps_rtcp.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "8bedcc1443244c8ca394e26ac35053c7")
!336 = !DICompositeType(tag: DW_TAG_structure_type, name: "_rtcp_map", file: !335, line: 45, flags: DIFlagFwdDecl)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "bufs", scope: !313, file: !314, line: 143, baseType: !338, size: 128, offset: 320)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "stun_buffer_list", file: !314, line: 81, baseType: !339)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_stun_buffer_list", file: !314, line: 78, size: 128, elements: !340)
!340 = !{!341, !365}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !339, file: !314, line: 79, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "stun_buffer_list_elem", file: !314, line: 76, baseType: !344)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_stun_buffer_list_elem", file: !314, line: 73, size: 524288, elements: !345)
!345 = !{!346, !348}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !344, file: !314, line: 74, baseType: !347, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !344, file: !314, line: 75, baseType: !349, size: 524224, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "stun_buffer", file: !350, line: 48, baseType: !351)
!350 = !DIFile(filename: "src/apps/common/stun_buffer.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "cc7948905c033a0fb654060699acf9e2")
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_stun_buffer", file: !350, line: 42, size: 524224, elements: !352)
!352 = !{!353, !355, !359, !363, !364}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !351, file: !350, line: 43, baseType: !354, size: 32)
!354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 32, elements: !306)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !351, file: !350, line: 44, baseType: !356, size: 524056, offset: 32)
!356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 524056, elements: !357)
!357 = !{!358}
!358 = !DISubrange(count: 65507)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !351, file: !350, line: 45, baseType: !360, size: 64, offset: 524096)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !361, line: 46, baseType: !362)
!361 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!362 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !351, file: !350, line: 46, baseType: !268, size: 16, offset: 524160)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "coffset", scope: !351, file: !350, line: 47, baseType: !298, size: 8, offset: 524176)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "tsz", scope: !339, file: !314, line: 80, baseType: !360, size: 64, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ctx_ssl23", scope: !313, file: !314, line: 144, baseType: !367, size: 64, offset: 448)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_CTX", file: !369, line: 185, baseType: !370)
!369 = !DIFile(filename: "/usr/include/openssl/types.h", directory: "", checksumkind: CSK_MD5, checksum: "44f1236065e4ee65cf4cd545c3e12ab9")
!370 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_ctx_st", file: !369, line: 185, flags: DIFlagFwdDecl)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ctx_v1_0", scope: !313, file: !314, line: 145, baseType: !367, size: 64, offset: 512)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ctx_v1_1", scope: !313, file: !314, line: 147, baseType: !367, size: 64, offset: 576)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ctx_v1_2", scope: !313, file: !314, line: 149, baseType: !367, size: 64, offset: 640)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "dtls_ctx", scope: !313, file: !314, line: 153, baseType: !367, size: 64, offset: 704)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "dtls_ctx_v1_2", scope: !313, file: !314, line: 156, baseType: !367, size: 64, offset: 768)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "jiffie", scope: !313, file: !314, line: 158, baseType: !377, size: 32, offset: 832)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_time_t", file: !378, line: 108, baseType: !277)
!378 = !DIFile(filename: "src/ns_turn_defs.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "126e9c9d0b914de7fdf6162f77453397")
!379 = !DIDerivedType(tag: DW_TAG_member, name: "timer_ev", scope: !313, file: !314, line: 159, baseType: !380, size: 64, offset: 896)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_timer_handle", file: !117, line: 122, baseType: !98)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "cmsg", scope: !313, file: !314, line: 160, baseType: !382, size: 524296, offset: 960)
!382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 524296, elements: !383)
!383 = !{!384}
!384 = !DISubrange(count: 65537)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "predef_timer_intervals", scope: !313, file: !314, line: 161, baseType: !386, size: 448, offset: 525280)
!386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 448, elements: !260)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "predef_timers", scope: !313, file: !314, line: 162, baseType: !388, size: 1792, offset: 525760)
!388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !389, size: 1792, elements: !260)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !390, line: 8, size: 128, elements: !391)
!390 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h", directory: "", checksumkind: CSK_MD5, checksum: "9b45d950050c215f216850b27bd1e8f3")
!391 = !{!392, !395}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !389, file: !390, line: 14, baseType: !393, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !271, line: 160, baseType: !394)
!394 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !389, file: !390, line: 15, baseType: !396, size: 64, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !271, line: 162, baseType: !394)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "relay_ifname", scope: !313, file: !314, line: 164, baseType: !243, size: 8200, offset: 527552)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "default_relays", scope: !313, file: !314, line: 165, baseType: !96, size: 32, offset: 535776)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "relays_number", scope: !313, file: !314, line: 166, baseType: !360, size: 64, offset: 535808)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "relay_addr_counter", scope: !313, file: !314, line: 167, baseType: !360, size: 64, offset: 535872)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "relay_addrs", scope: !313, file: !314, line: 168, baseType: !402, size: 64, offset: 535936)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "rch", scope: !313, file: !314, line: 169, baseType: !404, size: 64, offset: 536000)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "redis_context_handle", file: !405, line: 45, baseType: !98)
!405 = !DIFile(filename: "src/apps/common/hiredis_libevent2.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "8bcf7d75479c12c7a6031a30f30ef1f7")
!406 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !240, file: !2, line: 56, baseType: !407, size: 64, offset: 8512)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_turnserver", file: !111, line: 99, baseType: !409)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_turn_turnserver", file: !111, line: 111, size: 3456, elements: !410)
!410 = !{!411, !413, !418, !423, !424, !425, !426, !427, !428, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !443, !448, !454, !456, !789, !800, !805, !810, !811, !812, !813, !814, !871, !876, !877, !878, !879, !886, !900, !901, !902, !903, !904, !905, !926, !927, !928, !929, !930, !935, !936, !938, !939, !941}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !409, file: !111, line: 113, baseType: !412, size: 8)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "turnserver_id", file: !111, line: 67, baseType: !298)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "session_id_counter", scope: !409, file: !111, line: 115, baseType: !414, size: 64, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "turnsession_id", file: !415, line: 62, baseType: !416)
!415 = !DIFile(filename: "src/server/ns_turn_session.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "0d3b1381a7fca7a8f35b6ee419f25609")
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !269, line: 27, baseType: !417)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !271, line: 45, baseType: !362)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "sessions_map", scope: !409, file: !111, line: 116, baseType: !419, size: 64, offset: 128)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "ur_map", file: !421, line: 43, baseType: !422)
!421 = !DIFile(filename: "src/server/ns_turn_maps.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "1d968a8e0fbb011891961d10535e1104")
!422 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ur_map", file: !421, line: 42, flags: DIFlagFwdDecl)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !409, file: !111, line: 118, baseType: !377, size: 32, offset: 192)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !409, file: !111, line: 120, baseType: !310, size: 64, offset: 256)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "verbose", scope: !409, file: !111, line: 121, baseType: !96, size: 32, offset: 320)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "fingerprint", scope: !409, file: !111, line: 122, baseType: !96, size: 32, offset: 352)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "rfc5780", scope: !409, file: !111, line: 123, baseType: !96, size: 32, offset: 384)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "check_origin", scope: !409, file: !111, line: 124, baseType: !429, size: 64, offset: 448)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "vintp", file: !378, line: 106, baseType: !430)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "vint", file: !378, line: 105, baseType: !96)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "stale_nonce", scope: !409, file: !111, line: 125, baseType: !429, size: 64, offset: 512)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "max_allocate_lifetime", scope: !409, file: !111, line: 126, baseType: !429, size: 64, offset: 576)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "channel_lifetime", scope: !409, file: !111, line: 127, baseType: !429, size: 64, offset: 640)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "permission_lifetime", scope: !409, file: !111, line: 128, baseType: !429, size: 64, offset: 704)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "stun_only", scope: !409, file: !111, line: 129, baseType: !429, size: 64, offset: 768)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "no_stun", scope: !409, file: !111, line: 130, baseType: !429, size: 64, offset: 832)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "no_software_attribute", scope: !409, file: !111, line: 131, baseType: !429, size: 64, offset: 896)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "web_admin_listen_on_workers", scope: !409, file: !111, line: 132, baseType: !429, size: 64, offset: 960)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "secure_stun", scope: !409, file: !111, line: 133, baseType: !429, size: 64, offset: 1024)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "ct", scope: !409, file: !111, line: 134, baseType: !442, size: 32, offset: 1088)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_credential_type", file: !103, line: 59, baseType: !102)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "alt_addr_cb", scope: !409, file: !111, line: 135, baseType: !444, size: 64, offset: 1152)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "get_alt_addr_cb", file: !111, line: 59, baseType: !445)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DISubroutineType(types: !447)
!447 = !{!96, !402, !402}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "sm_cb", scope: !409, file: !111, line: 136, baseType: !449, size: 64, offset: 1216)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "send_message_cb", file: !111, line: 60, baseType: !450)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DISubroutineType(types: !452)
!452 = !{!96, !310, !453, !402, !402}
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_network_buffer_handle", file: !117, line: 124, baseType: !98)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "dont_fragment", scope: !409, file: !111, line: 137, baseType: !455, size: 32, offset: 1280)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "dont_fragment_option_t", file: !111, line: 96, baseType: !110)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !409, file: !111, line: 138, baseType: !457, size: 64, offset: 1344)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DISubroutineType(types: !459)
!459 = !{!96, !460}
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "ts_ur_super_session", file: !117, line: 47, baseType: !462)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ts_ur_super_session", file: !415, line: 68, size: 152448, elements: !463)
!463 = !{!464, !465, !466, !467, !609, !716, !717, !718, !719, !720, !724, !725, !729, !734, !735, !740, !741, !742, !743, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !786, !787, !788}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !462, file: !415, line: 69, baseType: !98, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !462, file: !415, line: 70, baseType: !414, size: 64, offset: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !462, file: !415, line: 71, baseType: !377, size: 32, offset: 128)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "client_socket", scope: !462, file: !415, line: 72, baseType: !468, size: 64, offset: 192)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_socket_handle", file: !117, line: 116, baseType: !469)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_socket", file: !117, line: 115, baseType: !471)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ioa_socket", file: !314, line: 179, size: 2880, elements: !472)
!472 = !{!473, !474, !476, !477, !501, !505, !506, !507, !509, !511, !515, !516, !517, !518, !519, !520, !521, !522, !523, !526, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !558, !559, !590, !591, !596, !597, !601, !606, !607, !608}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !471, file: !314, line: 181, baseType: !96, size: 32)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "parent_s", scope: !471, file: !314, line: 182, baseType: !475, size: 64, offset: 64)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !471, file: !314, line: 183, baseType: !277, size: 32, offset: 128)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "sockets_container", scope: !471, file: !314, line: 184, baseType: !478, size: 64, offset: 192)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "ur_addr_map", file: !421, line: 183, baseType: !480)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ur_addr_map", file: !421, line: 177, size: 1441856, elements: !481)
!481 = !{!482, !500}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "lists", scope: !480, file: !421, line: 178, baseType: !483, size: 1441792)
!483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !484, size: 1441792, elements: !498)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_list_header", file: !421, line: 175, baseType: !485)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_addr_list_header", file: !421, line: 171, size: 1408, elements: !486)
!486 = !{!487, !495, !497}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "main_list", scope: !485, file: !421, line: 172, baseType: !488, size: 1280)
!488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !489, size: 1280, elements: !306)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_elem", file: !421, line: 169, baseType: !490)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_addr_elem", file: !421, line: 166, size: 320, elements: !491)
!491 = !{!492, !493}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !490, file: !421, line: 167, baseType: !247, size: 224)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !490, file: !421, line: 168, baseType: !494, size: 64, offset: 256)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "ur_addr_map_value_type", file: !421, line: 161, baseType: !362)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "extra_list", scope: !485, file: !421, line: 173, baseType: !496, size: 64, offset: 1280)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "extra_sz", scope: !485, file: !421, line: 174, baseType: !360, size: 64, offset: 1344)
!498 = !{!499}
!499 = !DISubrange(count: 1024)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !480, file: !421, line: 179, baseType: !416, size: 64, offset: 1441792)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "bev", scope: !471, file: !314, line: 185, baseType: !502, size: 64, offset: 256)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferevent", file: !504, line: 113, flags: DIFlagFwdDecl)
!504 = !DIFile(filename: "/usr/include/event2/bufferevent.h", directory: "", checksumkind: CSK_MD5, checksum: "15bb43c26b2c9058b6c64d44779c7263")
!505 = !DIDerivedType(tag: DW_TAG_member, name: "defer_nbh", scope: !471, file: !314, line: 186, baseType: !453, size: 64, offset: 320)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !471, file: !314, line: 187, baseType: !96, size: 32, offset: 384)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "st", scope: !471, file: !314, line: 188, baseType: !508, size: 32, offset: 416)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "SOCKET_TYPE", file: !117, line: 98, baseType: !116)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "sat", scope: !471, file: !314, line: 189, baseType: !510, size: 32, offset: 448)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "SOCKET_APP_TYPE", file: !117, line: 112, baseType: !129)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "ssl", scope: !471, file: !314, line: 190, baseType: !512, size: 64, offset: 512)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL", file: !369, line: 184, baseType: !514)
!514 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_st", file: !369, line: 184, flags: DIFlagFwdDecl)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_renegs", scope: !471, file: !314, line: 191, baseType: !277, size: 32, offset: 576)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "in_write", scope: !471, file: !314, line: 192, baseType: !96, size: 32, offset: 608)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "bound", scope: !471, file: !314, line: 193, baseType: !96, size: 32, offset: 640)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "local_addr_known", scope: !471, file: !314, line: 194, baseType: !96, size: 32, offset: 672)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "local_addr", scope: !471, file: !314, line: 195, baseType: !247, size: 224, offset: 704)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !471, file: !314, line: 196, baseType: !96, size: 32, offset: 928)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "remote_addr", scope: !471, file: !314, line: 197, baseType: !247, size: 224, offset: 960)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !471, file: !314, line: 198, baseType: !310, size: 64, offset: 1216)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "read_event", scope: !471, file: !314, line: 199, baseType: !524, size: 64, offset: 1280)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DICompositeType(tag: DW_TAG_structure_type, name: "event", file: !324, line: 276, flags: DIFlagFwdDecl)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "read_cb", scope: !471, file: !314, line: 200, baseType: !527, size: 64, offset: 1344)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_net_event_handler", file: !117, line: 199, baseType: !528)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DISubroutineType(types: !530)
!530 = !{null, !468, !96, !531, !98, !96}
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_net_data", file: !117, line: 132, baseType: !533)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ioa_net_data", file: !117, line: 127, size: 384, elements: !534)
!534 = !{!535, !536, !537, !538}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "src_addr", scope: !533, file: !117, line: 128, baseType: !247, size: 224)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "nbh", scope: !533, file: !117, line: 129, baseType: !453, size: 64, offset: 256)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "recv_ttl", scope: !533, file: !117, line: 130, baseType: !96, size: 32, offset: 320)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "recv_tos", scope: !533, file: !117, line: 131, baseType: !96, size: 32, offset: 352)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "read_ctx", scope: !471, file: !314, line: 201, baseType: !98, size: 64, offset: 1408)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !471, file: !314, line: 202, baseType: !96, size: 32, offset: 1472)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !471, file: !314, line: 203, baseType: !460, size: 64, offset: 1536)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "current_df_relay_flag", scope: !471, file: !314, line: 204, baseType: !96, size: 32, offset: 1600)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "do_not_use_df", scope: !471, file: !314, line: 206, baseType: !96, size: 32, offset: 1632)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "tobeclosed", scope: !471, file: !314, line: 207, baseType: !96, size: 32, offset: 1664)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "broken", scope: !471, file: !314, line: 208, baseType: !96, size: 32, offset: 1696)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "default_ttl", scope: !471, file: !314, line: 209, baseType: !96, size: 32, offset: 1728)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "current_ttl", scope: !471, file: !314, line: 210, baseType: !96, size: 32, offset: 1760)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "default_tos", scope: !471, file: !314, line: 211, baseType: !96, size: 32, offset: 1792)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "current_tos", scope: !471, file: !314, line: 212, baseType: !96, size: 32, offset: 1824)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "bufs", scope: !471, file: !314, line: 213, baseType: !338, size: 128, offset: 1856)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "jiffie", scope: !471, file: !314, line: 214, baseType: !377, size: 32, offset: 1984)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "data_traffic", scope: !471, file: !314, line: 215, baseType: !553, size: 128, offset: 2048)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "traffic_bytes", file: !314, line: 174, size: 128, elements: !554)
!554 = !{!555, !557}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "jiffie_bytes_read", scope: !553, file: !314, line: 175, baseType: !556, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "band_limit_t", file: !103, line: 67, baseType: !362)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "jiffie_bytes_write", scope: !553, file: !314, line: 176, baseType: !556, size: 64, offset: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "control_traffic", scope: !471, file: !314, line: 216, baseType: !553, size: 128, offset: 2176)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "sub_session", scope: !471, file: !314, line: 219, baseType: !560, size: 64, offset: 2304)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_connection", file: !117, line: 50, baseType: !562)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_tcp_connection", file: !141, line: 85, size: 960, elements: !563)
!563 = !{!564, !566, !568, !569, !570, !571, !572, !573, !581, !582, !583}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !562, file: !141, line: 87, baseType: !565, size: 32)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "TC_STATE", file: !141, line: 76, baseType: !140)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !562, file: !141, line: 88, baseType: !567, size: 32, offset: 32)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_connection_id", file: !141, line: 78, baseType: !277)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "peer_addr", scope: !562, file: !141, line: 89, baseType: !247, size: 224, offset: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "client_s", scope: !562, file: !141, line: 90, baseType: !468, size: 64, offset: 320)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "peer_s", scope: !562, file: !141, line: 91, baseType: !468, size: 64, offset: 384)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "peer_conn_timeout", scope: !562, file: !141, line: 92, baseType: !380, size: 64, offset: 448)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "conn_bind_timeout", scope: !562, file: !141, line: 93, baseType: !380, size: 64, offset: 512)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !562, file: !141, line: 94, baseType: !574, size: 96, offset: 576)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "stun_tid", file: !103, line: 52, baseType: !575)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !103, line: 47, size: 96, elements: !576)
!576 = !{!577}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "tsx_id", scope: !575, file: !103, line: 51, baseType: !578, size: 96)
!578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 96, elements: !579)
!579 = !{!580}
!580 = !DISubrange(count: 12)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !562, file: !141, line: 95, baseType: !98, size: 64, offset: 704)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !562, file: !141, line: 96, baseType: !96, size: 32, offset: 768)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "ub_to_client", scope: !562, file: !141, line: 97, baseType: !584, size: 128, offset: 832)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "unsent_buffer", file: !141, line: 83, baseType: !585)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !141, line: 80, size: 128, elements: !586)
!586 = !{!587, !588}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "sz", scope: !585, file: !141, line: 81, baseType: !360, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "bufs", scope: !585, file: !141, line: 82, baseType: !589, size: 64, offset: 64)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "conn_bev", scope: !471, file: !314, line: 221, baseType: !502, size: 64, offset: 2368)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "conn_cb", scope: !471, file: !314, line: 222, baseType: !592, size: 64, offset: 2432)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "connect_cb", file: !117, line: 135, baseType: !593)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DISubroutineType(types: !595)
!595 = !{null, !96, !98}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "conn_arg", scope: !471, file: !314, line: 223, baseType: !98, size: 64, offset: 2496)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "list_ev", scope: !471, file: !314, line: 225, baseType: !598, size: 64, offset: 2560)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DICompositeType(tag: DW_TAG_structure_type, name: "evconnlistener", file: !600, line: 69, flags: DIFlagFwdDecl)
!600 = !DIFile(filename: "src/apps/relay/turn_admin_server.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "72080e29702b34b58984e3ea957f1f4c")
!601 = !DIDerivedType(tag: DW_TAG_member, name: "acb", scope: !471, file: !314, line: 226, baseType: !602, size: 64, offset: 2624)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "accept_cb", file: !117, line: 137, baseType: !603)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DISubroutineType(types: !605)
!605 = !{null, !468, !98}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "acbarg", scope: !471, file: !314, line: 227, baseType: !98, size: 64, offset: 2688)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "special_session", scope: !471, file: !314, line: 229, baseType: !98, size: 64, offset: 2752)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "special_session_size", scope: !471, file: !314, line: 230, baseType: !360, size: 64, offset: 2816)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !462, file: !415, line: 73, baseType: !610, size: 141120, offset: 256)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocation", file: !141, line: 186, baseType: !611)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_allocation", file: !141, line: 176, size: 141120, elements: !612)
!612 = !{!613, !614, !615, !669, !679, !681, !707, !708, !709}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "is_valid", scope: !611, file: !141, line: 177, baseType: !96, size: 32)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !611, file: !141, line: 178, baseType: !574, size: 96, offset: 32)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "addr_to_perm", scope: !611, file: !141, line: 179, baseType: !616, size: 125440, offset: 128)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_permission_hashtable", file: !141, line: 166, baseType: !617)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_turn_permission_hashtable", file: !141, line: 164, size: 125440, elements: !618)
!618 = !{!619}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !617, file: !141, line: 165, baseType: !620, size: 125440)
!620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !621, size: 125440, elements: !282)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_permission_array", file: !141, line: 162, baseType: !622)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_turn_permission_array", file: !141, line: 158, size: 15680, elements: !623)
!623 = !{!624, !665, !666}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "main_slots", scope: !622, file: !141, line: 159, baseType: !625, size: 15552)
!625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !626, size: 15552, elements: !646)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_permission_slot", file: !141, line: 156, baseType: !627)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_turn_permission_slot", file: !141, line: 154, size: 5184, elements: !628)
!628 = !{!629}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !627, file: !141, line: 155, baseType: !630, size: 5184)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_permission_info", file: !141, line: 152, baseType: !631)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_turn_permission_info", file: !141, line: 143, size: 5184, elements: !632)
!632 = !{!633, !634, !658, !659, !660, !661, !662, !663}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !631, file: !141, line: 144, baseType: !96, size: 32)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "chns", scope: !631, file: !141, line: 145, baseType: !635, size: 4608, offset: 64)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "lm_map", file: !421, line: 117, baseType: !636)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_lm_map", file: !421, line: 115, size: 4608, elements: !637)
!637 = !{!638}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !636, file: !421, line: 116, baseType: !639, size: 4608)
!639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !640, size: 4608, elements: !282)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "lm_map_array", file: !421, line: 113, baseType: !641)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_lm_map_array", file: !421, line: 107, size: 576, elements: !642)
!642 = !{!643, !648, !651, !652, !655}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "main_keys", scope: !641, file: !421, line: 108, baseType: !644, size: 192)
!644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !645, size: 192, elements: !646)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "ur_map_key_type", file: !421, line: 47, baseType: !416)
!646 = !{!647}
!647 = !DISubrange(count: 3)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "main_values", scope: !641, file: !421, line: 109, baseType: !649, size: 192, offset: 192)
!649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !650, size: 192, elements: !646)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "ur_map_value_type", file: !421, line: 48, baseType: !362)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "extra_sz", scope: !641, file: !421, line: 110, baseType: !360, size: 64, offset: 384)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "extra_keys", scope: !641, file: !421, line: 111, baseType: !653, size: 64, offset: 448)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "extra_values", scope: !641, file: !421, line: 112, baseType: !656, size: 64, offset: 512)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !631, file: !141, line: 146, baseType: !247, size: 224, offset: 4672)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "expiration_time", scope: !631, file: !141, line: 147, baseType: !377, size: 32, offset: 4896)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "lifetime_ev", scope: !631, file: !141, line: 148, baseType: !380, size: 64, offset: 4928)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !631, file: !141, line: 149, baseType: !98, size: 64, offset: 4992)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "verbose", scope: !631, file: !141, line: 150, baseType: !96, size: 32, offset: 5056)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "session_id", scope: !631, file: !141, line: 151, baseType: !664, size: 64, offset: 5120)
!664 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "extra_sz", scope: !622, file: !141, line: 160, baseType: !360, size: 64, offset: 15552)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "extra_slots", scope: !622, file: !141, line: 161, baseType: !667, size: 64, offset: 15616)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "relay_sessions", scope: !611, file: !141, line: 180, baseType: !670, size: 384, offset: 125568)
!670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !671, size: 384, elements: !677)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "relay_endpoint_session", file: !141, line: 55, baseType: !672)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !141, line: 50, size: 192, elements: !673)
!673 = !{!674, !675, !676}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !672, file: !141, line: 52, baseType: !468, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "expiration_time", scope: !672, file: !141, line: 53, baseType: !377, size: 32, offset: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "lifetime_ev", scope: !672, file: !141, line: 54, baseType: !380, size: 64, offset: 128)
!677 = !{!678}
!678 = !DISubrange(count: 2)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "relay_sessions_failure", scope: !611, file: !141, line: 181, baseType: !680, size: 64, offset: 125952)
!680 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 64, elements: !677)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "chns", scope: !611, file: !141, line: 182, baseType: !682, size: 14848, offset: 126016)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "ch_map", file: !141, line: 136, baseType: !683)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ch_map", file: !141, line: 134, size: 14848, elements: !684)
!684 = !{!685}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !683, file: !141, line: 135, baseType: !686, size: 14848)
!686 = !DICompositeType(tag: DW_TAG_array_type, baseType: !687, size: 14848, elements: !282)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "ch_map_array", file: !141, line: 132, baseType: !688)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_chn_map_array", file: !141, line: 128, size: 1856, elements: !689)
!689 = !{!690, !703, !704}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "main_chns", scope: !688, file: !141, line: 129, baseType: !691, size: 1728)
!691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !692, size: 1728, elements: !646)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "ch_info", file: !141, line: 121, baseType: !693)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ch_info", file: !141, line: 112, size: 576, elements: !694)
!694 = !{!695, !696, !697, !698, !699, !700, !701, !702}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "chnum", scope: !693, file: !141, line: 113, baseType: !268, size: 16)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !693, file: !141, line: 114, baseType: !96, size: 32, offset: 32)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !693, file: !141, line: 115, baseType: !268, size: 16, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "peer_addr", scope: !693, file: !141, line: 116, baseType: !247, size: 224, offset: 96)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "expiration_time", scope: !693, file: !141, line: 117, baseType: !377, size: 32, offset: 320)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "lifetime_ev", scope: !693, file: !141, line: 118, baseType: !380, size: 64, offset: 384)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !693, file: !141, line: 119, baseType: !98, size: 64, offset: 448)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_channel", scope: !693, file: !141, line: 120, baseType: !98, size: 64, offset: 512)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "extra_sz", scope: !688, file: !141, line: 130, baseType: !360, size: 64, offset: 1728)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "extra_chns", scope: !688, file: !141, line: 131, baseType: !705, size: 64, offset: 1792)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !611, file: !141, line: 183, baseType: !98, size: 64, offset: 140864)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_connections", scope: !611, file: !141, line: 184, baseType: !419, size: 64, offset: 140928)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "tcs", scope: !611, file: !141, line: 185, baseType: !710, size: 128, offset: 140992)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_connection_list", file: !141, line: 103, baseType: !711)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_tcp_connection_list", file: !141, line: 100, size: 128, elements: !712)
!712 = !{!713, !714}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "sz", scope: !711, file: !141, line: 101, baseType: !360, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !711, file: !141, line: 102, baseType: !715, size: 64, offset: 64)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "to_be_allocated_timeout_ev", scope: !462, file: !415, line: 74, baseType: !380, size: 64, offset: 141376)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "enforce_fingerprints", scope: !462, file: !415, line: 75, baseType: !96, size: 32, offset: 141440)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "is_tcp_relay", scope: !462, file: !415, line: 76, baseType: !96, size: 32, offset: 141472)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "to_be_closed", scope: !462, file: !415, line: 77, baseType: !96, size: 32, offset: 141504)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "nonce", scope: !462, file: !415, line: 79, baseType: !721, size: 136, offset: 141536)
!721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 136, elements: !722)
!722 = !{!723}
!723 = !DISubrange(count: 17)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "nonce_expiration_time", scope: !462, file: !415, line: 80, baseType: !377, size: 32, offset: 141696)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !462, file: !415, line: 81, baseType: !726, size: 4104, offset: 141728)
!726 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 4104, elements: !727)
!727 = !{!728}
!728 = !DISubrange(count: 513)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "hmackey", scope: !462, file: !415, line: 82, baseType: !730, size: 512, offset: 145832)
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "hmackey_t", file: !103, line: 64, baseType: !731)
!731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 512, elements: !732)
!732 = !{!733}
!733 = !DISubrange(count: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "hmackey_set", scope: !462, file: !415, line: 83, baseType: !96, size: 32, offset: 146368)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "pwd", scope: !462, file: !415, line: 84, baseType: !736, size: 2056, offset: 146400)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "password_t", file: !103, line: 66, baseType: !737)
!737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 2056, elements: !738)
!738 = !{!739}
!739 = !DISubrange(count: 257)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "quota_used", scope: !462, file: !415, line: 85, baseType: !96, size: 32, offset: 148480)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "oauth", scope: !462, file: !415, line: 86, baseType: !96, size: 32, offset: 148512)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "max_session_time_auth", scope: !462, file: !415, line: 87, baseType: !377, size: 32, offset: 148544)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "realm_options", scope: !462, file: !415, line: 89, baseType: !744, size: 1152, offset: 148608)
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "realm_options_t", file: !117, line: 142, baseType: !745)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_realm_options_t", file: !415, line: 53, size: 1152, elements: !746)
!746 = !{!747, !751}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !745, file: !415, line: 55, baseType: !748, size: 1024)
!748 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1024, elements: !749)
!749 = !{!750}
!750 = !DISubrange(count: 128)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "perf_options", scope: !745, file: !415, line: 57, baseType: !752, size: 128, offset: 1024)
!752 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_options_t", file: !415, line: 51, baseType: !753)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_perf_options_t", file: !415, line: 45, size: 128, elements: !754)
!754 = !{!755, !757, !758}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "max_bps", scope: !753, file: !415, line: 47, baseType: !756, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !556)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "total_quota", scope: !753, file: !415, line: 48, baseType: !431, size: 32, offset: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "user_quota", scope: !753, file: !415, line: 49, baseType: !431, size: 32, offset: 96)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "origin_set", scope: !462, file: !415, line: 90, baseType: !96, size: 32, offset: 149760)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !462, file: !415, line: 91, baseType: !748, size: 1024, offset: 149792)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "received_packets", scope: !462, file: !415, line: 93, baseType: !277, size: 32, offset: 150816)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "sent_packets", scope: !462, file: !415, line: 94, baseType: !277, size: 32, offset: 150848)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "received_bytes", scope: !462, file: !415, line: 95, baseType: !277, size: 32, offset: 150880)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "sent_bytes", scope: !462, file: !415, line: 96, baseType: !277, size: 32, offset: 150912)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "t_received_packets", scope: !462, file: !415, line: 97, baseType: !416, size: 64, offset: 150976)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "t_sent_packets", scope: !462, file: !415, line: 98, baseType: !416, size: 64, offset: 151040)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "t_received_bytes", scope: !462, file: !415, line: 99, baseType: !416, size: 64, offset: 151104)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "t_sent_bytes", scope: !462, file: !415, line: 100, baseType: !416, size: 64, offset: 151168)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "received_rate", scope: !462, file: !415, line: 101, baseType: !416, size: 64, offset: 151232)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "sent_rate", scope: !462, file: !415, line: 102, baseType: !360, size: 64, offset: 151296)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "total_rate", scope: !462, file: !415, line: 103, baseType: !360, size: 64, offset: 151360)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "peer_received_packets", scope: !462, file: !415, line: 104, baseType: !277, size: 32, offset: 151424)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "peer_sent_packets", scope: !462, file: !415, line: 105, baseType: !277, size: 32, offset: 151456)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "peer_received_bytes", scope: !462, file: !415, line: 106, baseType: !277, size: 32, offset: 151488)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "peer_sent_bytes", scope: !462, file: !415, line: 107, baseType: !277, size: 32, offset: 151520)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "t_peer_received_packets", scope: !462, file: !415, line: 108, baseType: !277, size: 32, offset: 151552)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "t_peer_sent_packets", scope: !462, file: !415, line: 109, baseType: !277, size: 32, offset: 151584)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "t_peer_received_bytes", scope: !462, file: !415, line: 110, baseType: !277, size: 32, offset: 151616)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "t_peer_sent_bytes", scope: !462, file: !415, line: 111, baseType: !277, size: 32, offset: 151648)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "peer_received_rate", scope: !462, file: !415, line: 112, baseType: !416, size: 64, offset: 151680)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "peer_sent_rate", scope: !462, file: !415, line: 113, baseType: !360, size: 64, offset: 151744)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "peer_total_rate", scope: !462, file: !415, line: 114, baseType: !360, size: 64, offset: 151808)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "is_mobile", scope: !462, file: !415, line: 116, baseType: !96, size: 32, offset: 151872)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "mobile_id", scope: !462, file: !415, line: 117, baseType: !785, size: 64, offset: 151936)
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "mobile_id_t", file: !415, line: 66, baseType: !416)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "old_mobile_id", scope: !462, file: !415, line: 118, baseType: !785, size: 64, offset: 152000)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "s_mobile_id", scope: !462, file: !415, line: 119, baseType: !50, size: 264, offset: 152064)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "bps", scope: !462, file: !415, line: 121, baseType: !556, size: 64, offset: 152384)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "userkeycb", scope: !409, file: !111, line: 139, baseType: !790, size: 64, offset: 1408)
!790 = !DIDerivedType(tag: DW_TAG_typedef, name: "get_user_key_cb", file: !111, line: 102, baseType: !791)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DISubroutineType(types: !793)
!793 = !{!794, !412, !442, !96, !795, !794, !794, !796, !531, !416, !795}
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "get_username_resume_cb", file: !111, line: 101, baseType: !797)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DISubroutineType(types: !799)
!799 = !{null, !96, !96, !96, !794, !794, !407, !416, !531, !794}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "chquotacb", scope: !409, file: !111, line: 140, baseType: !801, size: 64, offset: 1472)
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "check_new_allocation_quota_cb", file: !111, line: 103, baseType: !802)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DISubroutineType(types: !804)
!804 = !{!96, !794, !96, !794}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "raqcb", scope: !409, file: !111, line: 141, baseType: !806, size: 64, offset: 1536)
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "release_allocation_quota_cb", file: !111, line: 104, baseType: !807)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DISubroutineType(types: !809)
!809 = !{null, !794, !96, !794}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "external_ip_set", scope: !409, file: !111, line: 142, baseType: !96, size: 32, offset: 1600)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "external_ip", scope: !409, file: !111, line: 143, baseType: !247, size: 224, offset: 1632)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "allow_loopback_peers", scope: !409, file: !111, line: 144, baseType: !429, size: 64, offset: 1856)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "no_multicast_peers", scope: !409, file: !111, line: 145, baseType: !429, size: 64, offset: 1920)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "send_turn_session_info", scope: !409, file: !111, line: 146, baseType: !815, size: 64, offset: 1984)
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "send_turn_session_info_cb", file: !111, line: 106, baseType: !816)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DISubroutineType(types: !818)
!818 = !{!96, !819}
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "turn_session_info", file: !415, line: 134, size: 15040, elements: !821)
!821 = !{!822, !823, !824, !825, !826, !827, !828, !830, !834, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !864, !865, !867, !868, !869, !870}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !820, file: !415, line: 135, baseType: !414, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !820, file: !415, line: 136, baseType: !96, size: 32, offset: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !820, file: !415, line: 137, baseType: !377, size: 32, offset: 96)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "expiration_time", scope: !820, file: !415, line: 138, baseType: !377, size: 32, offset: 128)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "client_protocol", scope: !820, file: !415, line: 139, baseType: !508, size: 32, offset: 160)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "peer_protocol", scope: !820, file: !415, line: 140, baseType: !508, size: 32, offset: 192)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "tls_method", scope: !820, file: !415, line: 141, baseType: !829, size: 136, offset: 224)
!829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !722)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cipher", scope: !820, file: !415, line: 142, baseType: !831, size: 520, offset: 360)
!831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 520, elements: !832)
!832 = !{!833}
!833 = !DISubrange(count: 65)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "local_addr_data", scope: !820, file: !415, line: 143, baseType: !835, size: 768, offset: 896)
!835 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_data", file: !415, line: 132, baseType: !836)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_addr_data", file: !415, line: 129, size: 768, elements: !837)
!837 = !{!838, !839}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !836, file: !415, line: 130, baseType: !247, size: 224)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "saddr", scope: !836, file: !415, line: 131, baseType: !831, size: 520, offset: 224)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "remote_addr_data", scope: !820, file: !415, line: 144, baseType: !835, size: 768, offset: 1664)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "relay_addr_data_ipv4", scope: !820, file: !415, line: 145, baseType: !835, size: 768, offset: 2432)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "relay_addr_data_ipv6", scope: !820, file: !415, line: 146, baseType: !835, size: 768, offset: 3200)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !820, file: !415, line: 147, baseType: !726, size: 4104, offset: 3968)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "enforce_fingerprints", scope: !820, file: !415, line: 148, baseType: !96, size: 32, offset: 8096)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "received_packets", scope: !820, file: !415, line: 150, baseType: !416, size: 64, offset: 8128)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "sent_packets", scope: !820, file: !415, line: 151, baseType: !416, size: 64, offset: 8192)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "received_bytes", scope: !820, file: !415, line: 152, baseType: !416, size: 64, offset: 8256)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "sent_bytes", scope: !820, file: !415, line: 153, baseType: !416, size: 64, offset: 8320)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "received_rate", scope: !820, file: !415, line: 154, baseType: !277, size: 32, offset: 8384)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "sent_rate", scope: !820, file: !415, line: 155, baseType: !277, size: 32, offset: 8416)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "total_rate", scope: !820, file: !415, line: 156, baseType: !277, size: 32, offset: 8448)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "peer_received_packets", scope: !820, file: !415, line: 157, baseType: !416, size: 64, offset: 8512)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "peer_sent_packets", scope: !820, file: !415, line: 158, baseType: !416, size: 64, offset: 8576)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "peer_received_bytes", scope: !820, file: !415, line: 159, baseType: !416, size: 64, offset: 8640)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "peer_sent_bytes", scope: !820, file: !415, line: 160, baseType: !416, size: 64, offset: 8704)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "peer_received_rate", scope: !820, file: !415, line: 161, baseType: !277, size: 32, offset: 8768)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "peer_sent_rate", scope: !820, file: !415, line: 162, baseType: !277, size: 32, offset: 8800)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "peer_total_rate", scope: !820, file: !415, line: 163, baseType: !277, size: 32, offset: 8832)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "is_mobile", scope: !820, file: !415, line: 165, baseType: !96, size: 32, offset: 8864)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "main_peers_data", scope: !820, file: !415, line: 167, baseType: !861, size: 3840, offset: 8896)
!861 = !DICompositeType(tag: DW_TAG_array_type, baseType: !835, size: 3840, elements: !862)
!862 = !{!863}
!863 = !DISubrange(count: 5)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "main_peers_size", scope: !820, file: !415, line: 168, baseType: !360, size: 64, offset: 12736)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "extra_peers_data", scope: !820, file: !415, line: 169, baseType: !866, size: 64, offset: 12800)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "extra_peers_size", scope: !820, file: !415, line: 170, baseType: !360, size: 64, offset: 12864)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "realm", scope: !820, file: !415, line: 172, baseType: !748, size: 1024, offset: 12928)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !820, file: !415, line: 173, baseType: !748, size: 1024, offset: 13952)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "bps", scope: !820, file: !415, line: 175, baseType: !556, size: 64, offset: 14976)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "send_https_socket", scope: !409, file: !111, line: 147, baseType: !872, size: 64, offset: 2048)
!872 = !DIDerivedType(tag: DW_TAG_typedef, name: "send_https_socket_cb", file: !111, line: 107, baseType: !873)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DISubroutineType(types: !875)
!875 = !{null, !468}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "no_udp_relay", scope: !409, file: !111, line: 150, baseType: !429, size: 64, offset: 2112)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "no_tcp_relay", scope: !409, file: !111, line: 151, baseType: !429, size: 64, offset: 2176)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_relay_connections", scope: !409, file: !111, line: 152, baseType: !419, size: 64, offset: 2240)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "send_socket_to_relay", scope: !409, file: !111, line: 153, baseType: !880, size: 64, offset: 2304)
!880 = !DIDerivedType(tag: DW_TAG_typedef, name: "send_socket_to_relay_cb", file: !111, line: 105, baseType: !881)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DISubroutineType(types: !883)
!883 = !{!96, !412, !416, !884, !468, !96, !885, !531, !96}
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_typedef, name: "MESSAGE_TO_RELAY_TYPE", file: !111, line: 76, baseType: !149)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "alternate_servers_list", scope: !409, file: !111, line: 157, baseType: !887, size: 64, offset: 2368)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_server_addrs_list_t", file: !111, line: 53, baseType: !889)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_turn_server_addrs_list", file: !111, line: 47, size: 256, elements: !890)
!890 = !{!891, !892, !894}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !889, file: !111, line: 48, baseType: !402, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !889, file: !111, line: 49, baseType: !893, size: 64, offset: 64)
!893 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !360)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !889, file: !111, line: 50, baseType: !895, size: 128, offset: 128)
!895 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_mutex", file: !117, line: 60, baseType: !896)
!896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_turn_mutex", file: !117, line: 55, size: 128, elements: !897)
!897 = !{!898, !899}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !896, file: !117, line: 56, baseType: !277, size: 32)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !896, file: !117, line: 57, baseType: !98, size: 64, offset: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "as_counter", scope: !409, file: !111, line: 158, baseType: !360, size: 64, offset: 2432)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "tls_alternate_servers_list", scope: !409, file: !111, line: 159, baseType: !887, size: 64, offset: 2496)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "tls_as_counter", scope: !409, file: !111, line: 160, baseType: !360, size: 64, offset: 2560)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "aux_servers_list", scope: !409, file: !111, line: 161, baseType: !887, size: 64, offset: 2624)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "self_udp_balance", scope: !409, file: !111, line: 162, baseType: !96, size: 32, offset: 2688)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "ip_whitelist", scope: !409, file: !111, line: 165, baseType: !906, size: 64, offset: 2752)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip_range_list_t", file: !117, line: 159, baseType: !908)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ip_range_list", file: !117, line: 154, size: 128, elements: !909)
!909 = !{!910, !925}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "rs", scope: !908, file: !117, line: 155, baseType: !911, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip_range_t", file: !117, line: 152, baseType: !913)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ip_range", file: !117, line: 146, size: 6624, elements: !914)
!914 = !{!915, !917, !919}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !913, file: !117, line: 147, baseType: !916, size: 2056)
!916 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !738)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "realm", scope: !913, file: !117, line: 148, baseType: !918, size: 4104, offset: 2056)
!918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 4104, elements: !727)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "enc", scope: !913, file: !117, line: 149, baseType: !920, size: 448, offset: 6176)
!920 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_addr_range", file: !248, line: 53, baseType: !921)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !248, line: 50, size: 448, elements: !922)
!922 = !{!923, !924}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !921, file: !248, line: 51, baseType: !247, size: 224)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !921, file: !248, line: 52, baseType: !247, size: 224, offset: 224)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "ranges_number", scope: !908, file: !117, line: 156, baseType: !360, size: 64, offset: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "ip_blacklist", scope: !409, file: !111, line: 166, baseType: !906, size: 64, offset: 2816)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "mobility", scope: !409, file: !111, line: 169, baseType: !429, size: 64, offset: 2880)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "mobile_connections_map", scope: !409, file: !111, line: 170, baseType: !419, size: 64, offset: 2944)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "server_relay", scope: !409, file: !111, line: 173, baseType: !96, size: 32, offset: 3008)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "allocate_bps_func", scope: !409, file: !111, line: 176, baseType: !931, size: 64, offset: 3072)
!931 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocate_bps_cb", file: !111, line: 109, baseType: !932)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DISubroutineType(types: !934)
!934 = !{!556, !556, !96}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "oauth", scope: !409, file: !111, line: 179, baseType: !96, size: 32, offset: 3136)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "oauth_server_name", scope: !409, file: !111, line: 180, baseType: !937, size: 64, offset: 3200)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "acme_redirect", scope: !409, file: !111, line: 183, baseType: !937, size: 64, offset: 3264)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "allocation_default_address_family", scope: !409, file: !111, line: 186, baseType: !940, size: 32, offset: 3328)
!940 = !DIDerivedType(tag: DW_TAG_typedef, name: "ALLOCATION_DEFAULT_ADDRESS_FAMILY", file: !111, line: 84, baseType: !156)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "log_binding", scope: !409, file: !111, line: 189, baseType: !429, size: 64, offset: 3392)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "verbose", scope: !240, file: !2, line: 57, baseType: !96, size: 32, offset: 8576)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "udp_listen_ev", scope: !240, file: !2, line: 58, baseType: !524, size: 64, offset: 8640)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "udp_listen_s", scope: !240, file: !2, line: 59, baseType: !468, size: 64, offset: 8704)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "children_ss", scope: !240, file: !2, line: 60, baseType: !478, size: 64, offset: 8768)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "sm", scope: !240, file: !2, line: 61, baseType: !947, size: 896, offset: 8832)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "message_to_relay", file: !314, line: 114, size: 896, elements: !948)
!948 = !{!949, !950, !966}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "t", scope: !947, file: !314, line: 115, baseType: !885, size: 32)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "relay_server", scope: !947, file: !314, line: 116, baseType: !951, size: 64, offset: 64)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "relay_server", file: !314, line: 101, size: 4032, elements: !953)
!953 = !{!954, !955, !956, !957, !958, !959, !960, !961, !962, !963}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !952, file: !314, line: 102, baseType: !412, size: 8)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "sm", scope: !952, file: !314, line: 103, baseType: !317, size: 64, offset: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "event_base", scope: !952, file: !314, line: 104, baseType: !322, size: 64, offset: 128)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "in_buf", scope: !952, file: !314, line: 105, baseType: !502, size: 64, offset: 192)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "out_buf", scope: !952, file: !314, line: 106, baseType: !502, size: 64, offset: 256)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "auth_in_buf", scope: !952, file: !314, line: 107, baseType: !502, size: 64, offset: 320)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "auth_out_buf", scope: !952, file: !314, line: 108, baseType: !502, size: 64, offset: 384)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "ioa_eng", scope: !952, file: !314, line: 109, baseType: !310, size: 64, offset: 448)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !952, file: !314, line: 110, baseType: !408, size: 3456, offset: 512)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "thr", scope: !952, file: !314, line: 111, baseType: !964, size: 64, offset: 3968)
!964 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !965, line: 27, baseType: !362)
!965 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!966 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !947, file: !314, line: 121, baseType: !967, size: 768, offset: 128)
!967 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !947, file: !314, line: 117, size: 768, elements: !968)
!968 = !{!969, !975, !985}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "sm", scope: !967, file: !314, line: 118, baseType: !970, size: 512)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "socket_message", file: !111, line: 86, size: 512, elements: !971)
!971 = !{!972, !973, !974}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !970, file: !111, line: 87, baseType: !468, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "nd", scope: !970, file: !111, line: 88, baseType: !532, size: 384, offset: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "can_resume", scope: !970, file: !111, line: 89, baseType: !96, size: 32, offset: 448)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "cb_sm", scope: !967, file: !314, line: 119, baseType: !976, size: 768)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cb_socket_message", file: !314, line: 87, size: 768, elements: !977)
!977 = !{!978, !979, !980, !981, !982, !983, !984}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !976, file: !314, line: 88, baseType: !412, size: 8)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "connection_id", scope: !976, file: !314, line: 89, baseType: !567, size: 32, offset: 32)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !976, file: !314, line: 90, baseType: !574, size: 96, offset: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !976, file: !314, line: 91, baseType: !468, size: 64, offset: 192)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "message_integrity", scope: !976, file: !314, line: 92, baseType: !96, size: 32, offset: 256)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "nd", scope: !976, file: !314, line: 93, baseType: !532, size: 384, offset: 320)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "can_resume", scope: !976, file: !314, line: 94, baseType: !96, size: 32, offset: 704)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "csm", scope: !967, file: !314, line: 120, baseType: !986, size: 64)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cancelled_session_message", file: !314, line: 97, size: 64, elements: !987)
!987 = !{!988}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !986, file: !314, line: 98, baseType: !414, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "slen0", scope: !240, file: !2, line: 62, baseType: !96, size: 32, offset: 9728)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "connect_cb", scope: !240, file: !2, line: 63, baseType: !991, size: 64, offset: 9792)
!991 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_engine_new_connection_event_handler", file: !314, line: 127, baseType: !992)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DISubroutineType(types: !994)
!994 = !{!96, !310, !995}
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !281)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !298)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !212, line: 33, baseType: !1008)
!1008 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !271, line: 210, baseType: !104)
!1009 = !{!0, !7, !13, !18, !23, !28, !33, !38, !43, !48, !53, !58, !63, !68, !71, !76, !81, !86, !91, !1010, !1012, !1017, !1020, !1022, !1027, !1032, !1034, !1036, !1041, !1044, !1049, !1051, !1056, !1061, !1066, !1071, !1073, !1075, !1077, !1082, !1084, !1086, !1091, !1096, !1101, !1104, !1106}
!1010 = !DIGlobalVariableExpression(var: !1011, expr: !DIExpression())
!1011 = distinct !DIGlobalVariable(scope: null, file: !2, line: 700, type: !78, isLocal: true, isDefinition: true)
!1012 = !DIGlobalVariableExpression(var: !1013, expr: !DIExpression())
!1013 = distinct !DIGlobalVariable(scope: null, file: !2, line: 717, type: !1014, isLocal: true, isDefinition: true)
!1014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !1015)
!1015 = !{!1016}
!1016 = !DISubrange(count: 35)
!1017 = !DIGlobalVariableExpression(var: !1018, expr: !DIExpression())
!1018 = distinct !DIGlobalVariable(scope: null, file: !2, line: 727, type: !1019, isLocal: true, isDefinition: true)
!1019 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !89)
!1020 = !DIGlobalVariableExpression(var: !1021, expr: !DIExpression())
!1021 = distinct !DIGlobalVariable(scope: null, file: !2, line: 819, type: !35, isLocal: true, isDefinition: true)
!1022 = !DIGlobalVariableExpression(var: !1023, expr: !DIExpression())
!1023 = distinct !DIGlobalVariable(scope: null, file: !2, line: 858, type: !1024, isLocal: true, isDefinition: true)
!1024 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !1025)
!1025 = !{!1026}
!1026 = !DISubrange(count: 40)
!1027 = !DIGlobalVariableExpression(var: !1028, expr: !DIExpression())
!1028 = distinct !DIGlobalVariable(scope: null, file: !2, line: 871, type: !1029, isLocal: true, isDefinition: true)
!1029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !1030)
!1030 = !{!1031}
!1031 = !DISubrange(count: 29)
!1032 = !DIGlobalVariableExpression(var: !1033, expr: !DIExpression())
!1033 = distinct !DIGlobalVariable(scope: null, file: !2, line: 874, type: !1019, isLocal: true, isDefinition: true)
!1034 = !DIGlobalVariableExpression(var: !1035, expr: !DIExpression())
!1035 = distinct !DIGlobalVariable(scope: null, file: !2, line: 877, type: !73, isLocal: true, isDefinition: true)
!1036 = !DIGlobalVariableExpression(var: !1037, expr: !DIExpression())
!1037 = distinct !DIGlobalVariable(scope: null, file: !2, line: 480, type: !1038, isLocal: true, isDefinition: true)
!1038 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !1039)
!1039 = !{!1040}
!1040 = !DISubrange(count: 32)
!1041 = !DIGlobalVariableExpression(var: !1042, expr: !DIExpression())
!1042 = distinct !DIGlobalVariable(scope: null, file: !2, line: 481, type: !1043, isLocal: true, isDefinition: true)
!1043 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 256, elements: !1039)
!1044 = !DIGlobalVariableExpression(var: !1045, expr: !DIExpression())
!1045 = distinct !DIGlobalVariable(scope: null, file: !2, line: 488, type: !1046, isLocal: true, isDefinition: true)
!1046 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !1047)
!1047 = !{!1048}
!1048 = !DISubrange(count: 44)
!1049 = !DIGlobalVariableExpression(var: !1050, expr: !DIExpression())
!1050 = distinct !DIGlobalVariable(scope: null, file: !2, line: 495, type: !45, isLocal: true, isDefinition: true)
!1051 = !DIGlobalVariableExpression(var: !1052, expr: !DIExpression())
!1052 = distinct !DIGlobalVariable(scope: null, file: !2, line: 514, type: !1053, isLocal: true, isDefinition: true)
!1053 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 464, elements: !1054)
!1054 = !{!1055}
!1055 = !DISubrange(count: 58)
!1056 = !DIGlobalVariableExpression(var: !1057, expr: !DIExpression())
!1057 = distinct !DIGlobalVariable(scope: null, file: !2, line: 528, type: !1058, isLocal: true, isDefinition: true)
!1058 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 672, elements: !1059)
!1059 = !{!1060}
!1060 = !DISubrange(count: 84)
!1061 = !DIGlobalVariableExpression(var: !1062, expr: !DIExpression())
!1062 = distinct !DIGlobalVariable(scope: null, file: !2, line: 600, type: !1063, isLocal: true, isDefinition: true)
!1063 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !1064)
!1064 = !{!1065}
!1065 = !DISubrange(count: 30)
!1066 = !DIGlobalVariableExpression(var: !1067, expr: !DIExpression())
!1067 = distinct !DIGlobalVariable(scope: null, file: !2, line: 329, type: !1068, isLocal: true, isDefinition: true)
!1068 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 144, elements: !1069)
!1069 = !{!1070}
!1070 = !DISubrange(count: 18)
!1071 = !DIGlobalVariableExpression(var: !1072, expr: !DIExpression())
!1072 = distinct !DIGlobalVariable(scope: null, file: !2, line: 353, type: !20, isLocal: true, isDefinition: true)
!1073 = !DIGlobalVariableExpression(var: !1074, expr: !DIExpression())
!1074 = distinct !DIGlobalVariable(scope: null, file: !2, line: 382, type: !70, isLocal: true, isDefinition: true)
!1075 = !DIGlobalVariableExpression(var: !1076, expr: !DIExpression())
!1076 = distinct !DIGlobalVariable(scope: null, file: !2, line: 391, type: !1019, isLocal: true, isDefinition: true)
!1077 = !DIGlobalVariableExpression(var: !1078, expr: !DIExpression())
!1078 = distinct !DIGlobalVariable(scope: null, file: !2, line: 399, type: !1079, isLocal: true, isDefinition: true)
!1079 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 968, elements: !1080)
!1080 = !{!1081}
!1081 = !DISubrange(count: 121)
!1082 = !DIGlobalVariableExpression(var: !1083, expr: !DIExpression())
!1083 = distinct !DIGlobalVariable(scope: null, file: !2, line: 409, type: !73, isLocal: true, isDefinition: true)
!1084 = !DIGlobalVariableExpression(var: !1085, expr: !DIExpression())
!1085 = distinct !DIGlobalVariable(scope: null, file: !2, line: 414, type: !70, isLocal: true, isDefinition: true)
!1086 = !DIGlobalVariableExpression(var: !1087, expr: !DIExpression())
!1087 = distinct !DIGlobalVariable(scope: null, file: !2, line: 422, type: !1088, isLocal: true, isDefinition: true)
!1088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1088, elements: !1089)
!1089 = !{!1090}
!1090 = !DISubrange(count: 136)
!1091 = !DIGlobalVariableExpression(var: !1092, expr: !DIExpression())
!1092 = distinct !DIGlobalVariable(scope: null, file: !2, line: 459, type: !1093, isLocal: true, isDefinition: true)
!1093 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 424, elements: !1094)
!1094 = !{!1095}
!1095 = !DISubrange(count: 53)
!1096 = !DIGlobalVariableExpression(var: !1097, expr: !DIExpression())
!1097 = distinct !DIGlobalVariable(scope: null, file: !2, line: 262, type: !1098, isLocal: true, isDefinition: true)
!1098 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 208, elements: !1099)
!1099 = !{!1100}
!1100 = !DISubrange(count: 26)
!1101 = !DIGlobalVariableExpression(var: !1102, expr: !DIExpression())
!1102 = distinct !DIGlobalVariable(scope: null, file: !2, line: 231, type: !1103, isLocal: true, isDefinition: true)
!1103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 240, elements: !1064)
!1104 = !DIGlobalVariableExpression(var: !1105, expr: !DIExpression())
!1105 = distinct !DIGlobalVariable(scope: null, file: !2, line: 241, type: !1019, isLocal: true, isDefinition: true)
!1106 = !DIGlobalVariableExpression(var: !1107, expr: !DIExpression())
!1107 = distinct !DIGlobalVariable(scope: null, file: !2, line: 250, type: !1014, isLocal: true, isDefinition: true)
!1108 = !{}
!1109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 524280, elements: !1110)
!1110 = !{!1111}
!1111 = !DISubrange(count: 65535)
!1112 = !{i32 7, !"Dwarf Version", i32 5}
!1113 = !{i32 2, !"Debug Info Version", i32 3}
!1114 = !{i32 1, !"wchar_size", i32 4}
!1115 = !{i32 8, !"PIC Level", i32 2}
!1116 = !{i32 7, !"PIE Level", i32 2}
!1117 = !{i32 7, !"uwtable", i32 2}
!1118 = !{i32 7, !"frame-pointer", i32 2}
!1119 = !{!"clang version 16.0.0"}
!1120 = distinct !DISubprogram(name: "is_dtls_handshake_message", scope: !2, file: !2, line: 82, type: !1121, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !99, retainedNodes: !1108)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{!96, !1000, !96}
!1123 = !DILocalVariable(name: "buf", arg: 1, scope: !1120, file: !2, line: 82, type: !1000)
!1124 = !DILocation(line: 82, column: 52, scope: !1120)
!1125 = !DILocalVariable(name: "len", arg: 2, scope: !1120, file: !2, line: 82, type: !96)
!1126 = !DILocation(line: 82, column: 61, scope: !1120)
!1127 = !DILocation(line: 83, column: 11, scope: !1120)
!1128 = !DILocation(line: 83, column: 15, scope: !1120)
!1129 = !DILocation(line: 83, column: 18, scope: !1120)
!1130 = !DILocation(line: 83, column: 21, scope: !1120)
!1131 = !DILocation(line: 83, column: 24, scope: !1120)
!1132 = !DILocation(line: 83, column: 27, scope: !1120)
!1133 = !DILocation(line: 83, column: 33, scope: !1120)
!1134 = !DILocation(line: 83, column: 40, scope: !1120)
!1135 = !DILocation(line: 83, column: 43, scope: !1120)
!1136 = !DILocation(line: 83, column: 49, scope: !1120)
!1137 = !DILocation(line: 83, column: 56, scope: !1120)
!1138 = !DILocation(line: 83, column: 61, scope: !1120)
!1139 = !DILocation(line: 83, column: 67, scope: !1120)
!1140 = !DILocation(line: 83, column: 74, scope: !1120)
!1141 = !DILocation(line: 83, column: 77, scope: !1120)
!1142 = !DILocation(line: 83, column: 83, scope: !1120)
!1143 = !DILocation(line: 0, scope: !1120)
!1144 = !DILocation(line: 83, column: 3, scope: !1120)
!1145 = distinct !DISubprogram(name: "is_dtls_data_message", scope: !2, file: !2, line: 86, type: !1121, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !99, retainedNodes: !1108)
!1146 = !DILocalVariable(name: "buf", arg: 1, scope: !1145, file: !2, line: 86, type: !1000)
!1147 = !DILocation(line: 86, column: 47, scope: !1145)
!1148 = !DILocalVariable(name: "len", arg: 2, scope: !1145, file: !2, line: 86, type: !96)
!1149 = !DILocation(line: 86, column: 56, scope: !1145)
!1150 = !DILocation(line: 87, column: 11, scope: !1145)
!1151 = !DILocation(line: 87, column: 15, scope: !1145)
!1152 = !DILocation(line: 87, column: 18, scope: !1145)
!1153 = !DILocation(line: 87, column: 21, scope: !1145)
!1154 = !DILocation(line: 87, column: 24, scope: !1145)
!1155 = !DILocation(line: 87, column: 27, scope: !1145)
!1156 = !DILocation(line: 87, column: 33, scope: !1145)
!1157 = !DILocation(line: 87, column: 40, scope: !1145)
!1158 = !DILocation(line: 87, column: 43, scope: !1145)
!1159 = !DILocation(line: 87, column: 49, scope: !1145)
!1160 = !DILocation(line: 87, column: 56, scope: !1145)
!1161 = !DILocation(line: 87, column: 61, scope: !1145)
!1162 = !DILocation(line: 87, column: 67, scope: !1145)
!1163 = !DILocation(line: 87, column: 74, scope: !1145)
!1164 = !DILocation(line: 87, column: 77, scope: !1145)
!1165 = !DILocation(line: 87, column: 83, scope: !1145)
!1166 = !DILocation(line: 0, scope: !1145)
!1167 = !DILocation(line: 87, column: 3, scope: !1145)
!1168 = distinct !DISubprogram(name: "is_dtls_alert_message", scope: !2, file: !2, line: 90, type: !1121, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !99, retainedNodes: !1108)
!1169 = !DILocalVariable(name: "buf", arg: 1, scope: !1168, file: !2, line: 90, type: !1000)
!1170 = !DILocation(line: 90, column: 48, scope: !1168)
!1171 = !DILocalVariable(name: "len", arg: 2, scope: !1168, file: !2, line: 90, type: !96)
!1172 = !DILocation(line: 90, column: 57, scope: !1168)
!1173 = !DILocation(line: 91, column: 11, scope: !1168)
!1174 = !DILocation(line: 91, column: 15, scope: !1168)
!1175 = !DILocation(line: 91, column: 18, scope: !1168)
!1176 = !DILocation(line: 91, column: 21, scope: !1168)
!1177 = !DILocation(line: 91, column: 24, scope: !1168)
!1178 = !DILocation(line: 91, column: 27, scope: !1168)
!1179 = !DILocation(line: 91, column: 33, scope: !1168)
!1180 = !DILocation(line: 91, column: 40, scope: !1168)
!1181 = !DILocation(line: 91, column: 43, scope: !1168)
!1182 = !DILocation(line: 91, column: 49, scope: !1168)
!1183 = !DILocation(line: 91, column: 56, scope: !1168)
!1184 = !DILocation(line: 91, column: 61, scope: !1168)
!1185 = !DILocation(line: 91, column: 67, scope: !1168)
!1186 = !DILocation(line: 91, column: 74, scope: !1168)
!1187 = !DILocation(line: 91, column: 77, scope: !1168)
!1188 = !DILocation(line: 91, column: 83, scope: !1168)
!1189 = !DILocation(line: 0, scope: !1168)
!1190 = !DILocation(line: 91, column: 3, scope: !1168)
!1191 = distinct !DISubprogram(name: "is_dtls_cipher_change_message", scope: !2, file: !2, line: 94, type: !1121, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !99, retainedNodes: !1108)
!1192 = !DILocalVariable(name: "buf", arg: 1, scope: !1191, file: !2, line: 94, type: !1000)
!1193 = !DILocation(line: 94, column: 56, scope: !1191)
!1194 = !DILocalVariable(name: "len", arg: 2, scope: !1191, file: !2, line: 94, type: !96)
!1195 = !DILocation(line: 94, column: 65, scope: !1191)
!1196 = !DILocation(line: 95, column: 11, scope: !1191)
!1197 = !DILocation(line: 95, column: 15, scope: !1191)
!1198 = !DILocation(line: 95, column: 18, scope: !1191)
!1199 = !DILocation(line: 95, column: 21, scope: !1191)
!1200 = !DILocation(line: 95, column: 24, scope: !1191)
!1201 = !DILocation(line: 95, column: 27, scope: !1191)
!1202 = !DILocation(line: 95, column: 33, scope: !1191)
!1203 = !DILocation(line: 95, column: 40, scope: !1191)
!1204 = !DILocation(line: 95, column: 43, scope: !1191)
!1205 = !DILocation(line: 95, column: 49, scope: !1191)
!1206 = !DILocation(line: 95, column: 56, scope: !1191)
!1207 = !DILocation(line: 95, column: 61, scope: !1191)
!1208 = !DILocation(line: 95, column: 67, scope: !1191)
!1209 = !DILocation(line: 95, column: 74, scope: !1191)
!1210 = !DILocation(line: 95, column: 77, scope: !1191)
!1211 = !DILocation(line: 95, column: 83, scope: !1191)
!1212 = !DILocation(line: 0, scope: !1191)
!1213 = !DILocation(line: 95, column: 3, scope: !1191)
!1214 = distinct !DISubprogram(name: "is_dtls_message", scope: !2, file: !2, line: 98, type: !1121, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !99, retainedNodes: !1108)
!1215 = !DILocalVariable(name: "buf", arg: 1, scope: !1214, file: !2, line: 98, type: !1000)
!1216 = !DILocation(line: 98, column: 42, scope: !1214)
!1217 = !DILocalVariable(name: "len", arg: 2, scope: !1214, file: !2, line: 98, type: !96)
!1218 = !DILocation(line: 98, column: 51, scope: !1214)
!1219 = !DILocation(line: 99, column: 6, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1214, file: !2, line: 99, column: 6)
!1221 = !DILocation(line: 99, column: 10, scope: !1220)
!1222 = !DILocation(line: 99, column: 14, scope: !1220)
!1223 = !DILocation(line: 99, column: 17, scope: !1220)
!1224 = !DILocation(line: 99, column: 21, scope: !1220)
!1225 = !DILocation(line: 99, column: 25, scope: !1220)
!1226 = !DILocation(line: 99, column: 24, scope: !1220)
!1227 = !DILocation(line: 99, column: 32, scope: !1220)
!1228 = !DILocation(line: 99, column: 39, scope: !1220)
!1229 = !DILocation(line: 99, column: 44, scope: !1220)
!1230 = !DILocation(line: 99, column: 50, scope: !1220)
!1231 = !DILocation(line: 99, column: 57, scope: !1220)
!1232 = !DILocation(line: 99, column: 60, scope: !1220)
!1233 = !DILocation(line: 99, column: 66, scope: !1220)
!1234 = !DILocation(line: 99, column: 6, scope: !1214)
!1235 = !DILocation(line: 100, column: 12, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1220, file: !2, line: 99, column: 76)
!1237 = !DILocation(line: 100, column: 4, scope: !1236)
!1238 = !DILocation(line: 105, column: 5, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1236, file: !2, line: 100, column: 20)
!1240 = !DILocation(line: 108, column: 4, scope: !1239)
!1241 = !DILocation(line: 109, column: 3, scope: !1236)
!1242 = !DILocation(line: 110, column: 3, scope: !1214)
!1243 = !DILocation(line: 111, column: 1, scope: !1214)
!1244 = distinct !DISubprogram(name: "get_dtls_version", scope: !2, file: !2, line: 114, type: !1121, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !99, retainedNodes: !1108)
!1245 = !DILocalVariable(name: "buf", arg: 1, scope: !1244, file: !2, line: 114, type: !1000)
!1246 = !DILocation(line: 114, column: 43, scope: !1244)
!1247 = !DILocalVariable(name: "len", arg: 2, scope: !1244, file: !2, line: 114, type: !96)
!1248 = !DILocation(line: 114, column: 52, scope: !1244)
!1249 = !DILocation(line: 115, column: 5, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1244, file: !2, line: 115, column: 5)
!1251 = !DILocation(line: 115, column: 9, scope: !1250)
!1252 = !DILocation(line: 115, column: 13, scope: !1250)
!1253 = !DILocation(line: 115, column: 16, scope: !1250)
!1254 = !DILocation(line: 115, column: 20, scope: !1250)
!1255 = !DILocation(line: 115, column: 24, scope: !1250)
!1256 = !DILocation(line: 115, column: 31, scope: !1250)
!1257 = !DILocation(line: 115, column: 5, scope: !1244)
!1258 = !DILocation(line: 116, column: 3, scope: !1250)
!1259 = !DILocation(line: 117, column: 2, scope: !1244)
!1260 = !DILocation(line: 118, column: 1, scope: !1244)
!1261 = distinct !DISubprogram(name: "setup_dtls_callbacks", scope: !2, file: !2, line: 940, type: !1262, scopeLine: 940, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !99, retainedNodes: !1108)
!1262 = !DISubroutineType(types: !1263)
!1263 = !{null, !367}
!1264 = !DILocalVariable(name: "ctx", arg: 1, scope: !1261, file: !2, line: 940, type: !367)
!1265 = !DILocation(line: 940, column: 36, scope: !1261)
!1266 = !DILocation(line: 941, column: 8, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1261, file: !2, line: 941, column: 7)
!1268 = !DILocation(line: 941, column: 7, scope: !1261)
!1269 = !DILocation(line: 942, column: 5, scope: !1267)
!1270 = !DILocation(line: 949, column: 3, scope: !1261)
!1271 = !DILocation(line: 951, column: 34, scope: !1261)
!1272 = !DILocation(line: 951, column: 3, scope: !1261)
!1273 = !DILocation(line: 952, column: 32, scope: !1261)
!1274 = !DILocation(line: 952, column: 3, scope: !1261)
!1275 = !DILocation(line: 953, column: 1, scope: !1261)
!1276 = distinct !DISubprogram(name: "generate_cookie", scope: !2, file: !2, line: 132, type: !1277, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !99, retainedNodes: !1108)
!1277 = !DISubroutineType(types: !1278)
!1278 = !{!96, !512, !997, !1279}
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!1280 = !DILocalVariable(name: "ssl", arg: 1, scope: !1276, file: !2, line: 132, type: !512)
!1281 = !DILocation(line: 132, column: 33, scope: !1276)
!1282 = !DILocalVariable(name: "cookie", arg: 2, scope: !1276, file: !2, line: 132, type: !997)
!1283 = !DILocation(line: 132, column: 53, scope: !1276)
!1284 = !DILocalVariable(name: "cookie_len", arg: 3, scope: !1276, file: !2, line: 132, type: !1279)
!1285 = !DILocation(line: 132, column: 75, scope: !1276)
!1286 = !DILocalVariable(name: "buffer", scope: !1276, file: !2, line: 134, type: !997)
!1287 = !DILocation(line: 134, column: 18, scope: !1276)
!1288 = !DILocalVariable(name: "result", scope: !1276, file: !2, line: 134, type: !1289)
!1289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !281, size: 512, elements: !732)
!1290 = !DILocation(line: 134, column: 26, scope: !1276)
!1291 = !DILocalVariable(name: "length", scope: !1276, file: !2, line: 135, type: !104)
!1292 = !DILocation(line: 135, column: 16, scope: !1276)
!1293 = !DILocalVariable(name: "resultlength", scope: !1276, file: !2, line: 135, type: !104)
!1294 = !DILocation(line: 135, column: 28, scope: !1276)
!1295 = !DILocalVariable(name: "peer", scope: !1276, file: !2, line: 136, type: !247)
!1296 = !DILocation(line: 136, column: 12, scope: !1276)
!1297 = !DILocalVariable(name: "cookie_secret", scope: !1276, file: !2, line: 138, type: !1298)
!1298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !281, size: 256, elements: !1039)
!1299 = !DILocation(line: 138, column: 17, scope: !1276)
!1300 = !DILocation(line: 139, column: 20, scope: !1276)
!1301 = !DILocation(line: 139, column: 25, scope: !1276)
!1302 = !DILocation(line: 139, column: 3, scope: !1276)
!1303 = !DILocation(line: 142, column: 10, scope: !1276)
!1304 = !DILocation(line: 147, column: 10, scope: !1276)
!1305 = !DILocation(line: 148, column: 19, scope: !1276)
!1306 = !DILocation(line: 148, column: 11, scope: !1276)
!1307 = !DILocation(line: 148, column: 3, scope: !1276)
!1308 = !DILocation(line: 150, column: 12, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1276, file: !2, line: 148, column: 30)
!1310 = !DILocation(line: 151, column: 5, scope: !1309)
!1311 = !DILocation(line: 153, column: 12, scope: !1309)
!1312 = !DILocation(line: 154, column: 5, scope: !1309)
!1313 = !DILocation(line: 156, column: 5, scope: !1309)
!1314 = !DILocation(line: 159, column: 10, scope: !1276)
!1315 = !DILocation(line: 160, column: 29, scope: !1276)
!1316 = !DILocation(line: 160, column: 10, scope: !1276)
!1317 = !DILocation(line: 162, column: 7, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1276, file: !2, line: 162, column: 7)
!1319 = !DILocation(line: 162, column: 14, scope: !1318)
!1320 = !DILocation(line: 162, column: 7, scope: !1276)
!1321 = !DILocation(line: 163, column: 5, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1318, file: !2, line: 162, column: 23)
!1323 = !DILocation(line: 164, column: 5, scope: !1322)
!1324 = !DILocation(line: 169, column: 19, scope: !1276)
!1325 = !DILocation(line: 169, column: 11, scope: !1276)
!1326 = !DILocation(line: 169, column: 3, scope: !1276)
!1327 = !DILocation(line: 171, column: 12, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1276, file: !2, line: 169, column: 30)
!1329 = !DILocation(line: 172, column: 14, scope: !1328)
!1330 = !DILocation(line: 171, column: 5, scope: !1328)
!1331 = !DILocation(line: 174, column: 12, scope: !1328)
!1332 = !DILocation(line: 174, column: 19, scope: !1328)
!1333 = !DILocation(line: 175, column: 14, scope: !1328)
!1334 = !DILocation(line: 174, column: 5, scope: !1328)
!1335 = !DILocation(line: 177, column: 5, scope: !1328)
!1336 = !DILocation(line: 179, column: 12, scope: !1328)
!1337 = !DILocation(line: 180, column: 14, scope: !1328)
!1338 = !DILocation(line: 179, column: 5, scope: !1328)
!1339 = !DILocation(line: 182, column: 12, scope: !1328)
!1340 = !DILocation(line: 182, column: 19, scope: !1328)
!1341 = !DILocation(line: 183, column: 14, scope: !1328)
!1342 = !DILocation(line: 182, column: 5, scope: !1328)
!1343 = !DILocation(line: 185, column: 5, scope: !1328)
!1344 = !DILocation(line: 187, column: 5, scope: !1328)
!1345 = !DILocation(line: 192, column: 8, scope: !1276)
!1346 = !DILocation(line: 192, column: 34, scope: !1276)
!1347 = !DILocation(line: 193, column: 31, scope: !1276)
!1348 = !DILocation(line: 193, column: 39, scope: !1276)
!1349 = !DILocation(line: 193, column: 47, scope: !1276)
!1350 = !DILocation(line: 192, column: 3, scope: !1276)
!1351 = !DILocation(line: 194, column: 3, scope: !1276)
!1352 = !DILocation(line: 196, column: 10, scope: !1276)
!1353 = !DILocation(line: 196, column: 3, scope: !1276)
!1354 = !DILocation(line: 196, column: 26, scope: !1276)
!1355 = !DILocation(line: 197, column: 17, scope: !1276)
!1356 = !DILocation(line: 197, column: 4, scope: !1276)
!1357 = !DILocation(line: 197, column: 15, scope: !1276)
!1358 = !DILocation(line: 199, column: 3, scope: !1276)
!1359 = !DILocation(line: 200, column: 1, scope: !1276)
!1360 = distinct !DISubprogram(name: "verify_cookie", scope: !2, file: !2, line: 202, type: !1361, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !99, retainedNodes: !1108)
!1361 = !DISubroutineType(types: !1362)
!1362 = !{!96, !512, !1000, !104}
!1363 = !DILocalVariable(name: "ssl", arg: 1, scope: !1360, file: !2, line: 202, type: !512)
!1364 = !DILocation(line: 202, column: 31, scope: !1360)
!1365 = !DILocalVariable(name: "cookie", arg: 2, scope: !1360, file: !2, line: 206, type: !1000)
!1366 = !DILocation(line: 206, column: 18, scope: !1360)
!1367 = !DILocalVariable(name: "cookie_len", arg: 3, scope: !1360, file: !2, line: 206, type: !104)
!1368 = !DILocation(line: 206, column: 39, scope: !1360)
!1369 = !DILocalVariable(name: "resultlength", scope: !1360, file: !2, line: 208, type: !104)
!1370 = !DILocation(line: 208, column: 16, scope: !1360)
!1371 = !DILocalVariable(name: "result", scope: !1360, file: !2, line: 209, type: !1298)
!1372 = !DILocation(line: 209, column: 17, scope: !1360)
!1373 = !DILocation(line: 211, column: 19, scope: !1360)
!1374 = !DILocation(line: 211, column: 24, scope: !1360)
!1375 = !DILocation(line: 211, column: 3, scope: !1360)
!1376 = !DILocation(line: 213, column: 7, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1360, file: !2, line: 213, column: 7)
!1378 = !DILocation(line: 213, column: 21, scope: !1377)
!1379 = !DILocation(line: 213, column: 18, scope: !1377)
!1380 = !DILocation(line: 213, column: 34, scope: !1377)
!1381 = !DILocation(line: 213, column: 44, scope: !1377)
!1382 = !DILocation(line: 213, column: 52, scope: !1377)
!1383 = !DILocation(line: 213, column: 60, scope: !1377)
!1384 = !DILocation(line: 213, column: 37, scope: !1377)
!1385 = !DILocation(line: 213, column: 74, scope: !1377)
!1386 = !DILocation(line: 213, column: 7, scope: !1360)
!1387 = !DILocation(line: 215, column: 4, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1377, file: !2, line: 213, column: 80)
!1389 = !DILocation(line: 218, column: 4, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1377, file: !2, line: 216, column: 10)
!1391 = !DILocation(line: 220, column: 1, scope: !1360)
!1392 = distinct !DISubprogram(name: "create_dtls_listener_server", scope: !2, file: !2, line: 956, type: !1393, scopeLine: 963, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !99, retainedNodes: !1108)
!1393 = !DISubroutineType(types: !1394)
!1394 = !{!237, !937, !937, !96, !96, !310, !407, !96, !991}
!1395 = !DILocalVariable(name: "ifname", arg: 1, scope: !1392, file: !2, line: 956, type: !937)
!1396 = !DILocation(line: 956, column: 74, scope: !1392)
!1397 = !DILocalVariable(name: "local_address", arg: 2, scope: !1392, file: !2, line: 957, type: !937)
!1398 = !DILocation(line: 957, column: 25, scope: !1392)
!1399 = !DILocalVariable(name: "port", arg: 3, scope: !1392, file: !2, line: 958, type: !96)
!1400 = !DILocation(line: 958, column: 17, scope: !1392)
!1401 = !DILocalVariable(name: "verbose", arg: 4, scope: !1392, file: !2, line: 959, type: !96)
!1402 = !DILocation(line: 959, column: 17, scope: !1392)
!1403 = !DILocalVariable(name: "e", arg: 5, scope: !1392, file: !2, line: 960, type: !310)
!1404 = !DILocation(line: 960, column: 31, scope: !1392)
!1405 = !DILocalVariable(name: "ts", arg: 6, scope: !1392, file: !2, line: 961, type: !407)
!1406 = !DILocation(line: 961, column: 30, scope: !1392)
!1407 = !DILocalVariable(name: "report_creation", arg: 7, scope: !1392, file: !2, line: 962, type: !96)
!1408 = !DILocation(line: 962, column: 17, scope: !1392)
!1409 = !DILocalVariable(name: "send_socket", arg: 8, scope: !1392, file: !2, line: 963, type: !991)
!1410 = !DILocation(line: 963, column: 53, scope: !1392)
!1411 = !DILocalVariable(name: "server", scope: !1392, file: !2, line: 965, type: !237)
!1412 = !DILocation(line: 965, column: 36, scope: !1392)
!1413 = !DILocation(line: 966, column: 3, scope: !1392)
!1414 = !DILocation(line: 968, column: 18, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1392, file: !2, line: 968, column: 6)
!1416 = !DILocation(line: 969, column: 4, scope: !1415)
!1417 = !DILocation(line: 969, column: 12, scope: !1415)
!1418 = !DILocation(line: 969, column: 27, scope: !1415)
!1419 = !DILocation(line: 970, column: 4, scope: !1415)
!1420 = !DILocation(line: 971, column: 4, scope: !1415)
!1421 = !DILocation(line: 971, column: 7, scope: !1415)
!1422 = !DILocation(line: 971, column: 11, scope: !1415)
!1423 = !DILocation(line: 971, column: 28, scope: !1415)
!1424 = !DILocation(line: 968, column: 6, scope: !1415)
!1425 = !DILocation(line: 971, column: 40, scope: !1415)
!1426 = !DILocation(line: 968, column: 6, scope: !1392)
!1427 = !DILocation(line: 972, column: 5, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1415, file: !2, line: 971, column: 44)
!1429 = !DILocation(line: 974, column: 12, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1415, file: !2, line: 973, column: 10)
!1431 = !DILocation(line: 974, column: 5, scope: !1430)
!1432 = !DILocation(line: 976, column: 1, scope: !1392)
!1433 = distinct !DISubprogram(name: "init_server", scope: !2, file: !2, line: 897, type: !1434, scopeLine: 905, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !99, retainedNodes: !1108)
!1434 = !DISubroutineType(types: !1435)
!1435 = !{!96, !237, !937, !937, !96, !96, !310, !407, !96, !991}
!1436 = !DILocalVariable(name: "server", arg: 1, scope: !1433, file: !2, line: 897, type: !237)
!1437 = !DILocation(line: 897, column: 57, scope: !1433)
!1438 = !DILocalVariable(name: "ifname", arg: 2, scope: !1433, file: !2, line: 898, type: !937)
!1439 = !DILocation(line: 898, column: 22, scope: !1433)
!1440 = !DILocalVariable(name: "local_address", arg: 3, scope: !1433, file: !2, line: 899, type: !937)
!1441 = !DILocation(line: 899, column: 22, scope: !1433)
!1442 = !DILocalVariable(name: "port", arg: 4, scope: !1433, file: !2, line: 900, type: !96)
!1443 = !DILocation(line: 900, column: 14, scope: !1433)
!1444 = !DILocalVariable(name: "verbose", arg: 5, scope: !1433, file: !2, line: 901, type: !96)
!1445 = !DILocation(line: 901, column: 14, scope: !1433)
!1446 = !DILocalVariable(name: "e", arg: 6, scope: !1433, file: !2, line: 902, type: !310)
!1447 = !DILocation(line: 902, column: 28, scope: !1433)
!1448 = !DILocalVariable(name: "ts", arg: 7, scope: !1433, file: !2, line: 903, type: !407)
!1449 = !DILocation(line: 903, column: 27, scope: !1433)
!1450 = !DILocalVariable(name: "report_creation", arg: 8, scope: !1433, file: !2, line: 904, type: !96)
!1451 = !DILocation(line: 904, column: 14, scope: !1433)
!1452 = !DILocalVariable(name: "send_socket", arg: 9, scope: !1433, file: !2, line: 905, type: !991)
!1453 = !DILocation(line: 905, column: 50, scope: !1433)
!1454 = !DILocation(line: 907, column: 7, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1433, file: !2, line: 907, column: 6)
!1456 = !DILocation(line: 907, column: 6, scope: !1433)
!1457 = !DILocation(line: 907, column: 15, scope: !1455)
!1458 = !DILocation(line: 909, column: 16, scope: !1433)
!1459 = !DILocation(line: 909, column: 3, scope: !1433)
!1460 = !DILocation(line: 909, column: 11, scope: !1433)
!1461 = !DILocation(line: 909, column: 14, scope: !1433)
!1462 = !DILocation(line: 910, column: 24, scope: !1433)
!1463 = !DILocation(line: 910, column: 3, scope: !1433)
!1464 = !DILocation(line: 910, column: 11, scope: !1433)
!1465 = !DILocation(line: 910, column: 22, scope: !1433)
!1466 = !DILocation(line: 912, column: 6, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1433, file: !2, line: 912, column: 6)
!1468 = !DILocation(line: 912, column: 6, scope: !1433)
!1469 = !DILocation(line: 912, column: 14, scope: !1467)
!1470 = !DILocation(line: 912, column: 14, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1472, file: !2, line: 912, column: 14)
!1472 = distinct !DILexicalBlock(scope: !1467, file: !2, line: 912, column: 14)
!1473 = !DILocation(line: 912, column: 14, scope: !1472)
!1474 = !DILocalVariable(name: "szdst", scope: !1475, file: !2, line: 912, type: !360)
!1475 = distinct !DILexicalBlock(scope: !1476, file: !2, line: 912, column: 14)
!1476 = distinct !DILexicalBlock(scope: !1477, file: !2, line: 912, column: 14)
!1477 = distinct !DILexicalBlock(scope: !1471, file: !2, line: 912, column: 14)
!1478 = !DILocation(line: 912, column: 14, scope: !1475)
!1479 = !DILocation(line: 912, column: 14, scope: !1477)
!1480 = !DILocation(line: 914, column: 36, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1433, file: !2, line: 914, column: 6)
!1482 = !DILocation(line: 914, column: 51, scope: !1481)
!1483 = !DILocation(line: 914, column: 58, scope: !1481)
!1484 = !DILocation(line: 914, column: 66, scope: !1481)
!1485 = !DILocation(line: 914, column: 6, scope: !1481)
!1486 = !DILocation(line: 914, column: 71, scope: !1481)
!1487 = !DILocation(line: 914, column: 6, scope: !1433)
!1488 = !DILocation(line: 915, column: 93, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1481, file: !2, line: 914, column: 75)
!1490 = !DILocation(line: 915, column: 4, scope: !1489)
!1491 = !DILocation(line: 916, column: 4, scope: !1489)
!1492 = !DILocation(line: 919, column: 38, scope: !1433)
!1493 = !DILocation(line: 919, column: 46, scope: !1433)
!1494 = !DILocation(line: 919, column: 19, scope: !1433)
!1495 = !DILocation(line: 919, column: 3, scope: !1433)
!1496 = !DILocation(line: 919, column: 11, scope: !1433)
!1497 = !DILocation(line: 919, column: 17, scope: !1433)
!1498 = !DILocation(line: 921, column: 19, scope: !1433)
!1499 = !DILocation(line: 921, column: 3, scope: !1433)
!1500 = !DILocation(line: 921, column: 11, scope: !1433)
!1501 = !DILocation(line: 921, column: 18, scope: !1433)
!1502 = !DILocation(line: 923, column: 15, scope: !1433)
!1503 = !DILocation(line: 923, column: 3, scope: !1433)
!1504 = !DILocation(line: 923, column: 11, scope: !1433)
!1505 = !DILocation(line: 923, column: 13, scope: !1433)
!1506 = !DILocation(line: 925, column: 31, scope: !1433)
!1507 = !DILocation(line: 925, column: 39, scope: !1433)
!1508 = !DILocation(line: 925, column: 10, scope: !1433)
!1509 = !DILocation(line: 925, column: 3, scope: !1433)
!1510 = !DILocation(line: 926, column: 1, scope: !1433)
!1511 = distinct !DISubprogram(name: "get_engine", scope: !2, file: !2, line: 978, type: !1512, scopeLine: 979, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !99, retainedNodes: !1108)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{!310, !237}
!1514 = !DILocalVariable(name: "server", arg: 1, scope: !1511, file: !2, line: 978, type: !237)
!1515 = !DILocation(line: 978, column: 63, scope: !1511)
!1516 = !DILocation(line: 980, column: 5, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1511, file: !2, line: 980, column: 5)
!1518 = !DILocation(line: 980, column: 5, scope: !1511)
!1519 = !DILocation(line: 981, column: 10, scope: !1517)
!1520 = !DILocation(line: 981, column: 18, scope: !1517)
!1521 = !DILocation(line: 981, column: 3, scope: !1517)
!1522 = !DILocation(line: 982, column: 2, scope: !1511)
!1523 = !DILocation(line: 983, column: 1, scope: !1511)
!1524 = distinct !DISubprogram(name: "udp_send_message", scope: !2, file: !2, line: 987, type: !1525, scopeLine: 988, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !99, retainedNodes: !1108)
!1525 = !DISubroutineType(types: !1526)
!1526 = !{null, !237, !453, !402}
!1527 = !DILocalVariable(name: "server", arg: 1, scope: !1524, file: !2, line: 987, type: !237)
!1528 = !DILocation(line: 987, column: 56, scope: !1524)
!1529 = !DILocalVariable(name: "nbh", arg: 2, scope: !1524, file: !2, line: 987, type: !453)
!1530 = !DILocation(line: 987, column: 90, scope: !1524)
!1531 = !DILocalVariable(name: "dest", arg: 3, scope: !1524, file: !2, line: 987, type: !402)
!1532 = !DILocation(line: 987, column: 105, scope: !1524)
!1533 = !DILocation(line: 989, column: 5, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1524, file: !2, line: 989, column: 5)
!1535 = !DILocation(line: 989, column: 12, scope: !1534)
!1536 = !DILocation(line: 989, column: 15, scope: !1534)
!1537 = !DILocation(line: 989, column: 20, scope: !1534)
!1538 = !DILocation(line: 989, column: 23, scope: !1534)
!1539 = !DILocation(line: 989, column: 27, scope: !1534)
!1540 = !DILocation(line: 989, column: 31, scope: !1534)
!1541 = !DILocation(line: 989, column: 39, scope: !1534)
!1542 = !DILocation(line: 989, column: 30, scope: !1534)
!1543 = !DILocation(line: 989, column: 5, scope: !1524)
!1544 = !DILocation(line: 990, column: 12, scope: !1534)
!1545 = !DILocation(line: 990, column: 20, scope: !1534)
!1546 = !DILocation(line: 990, column: 34, scope: !1534)
!1547 = !DILocation(line: 990, column: 71, scope: !1534)
!1548 = !DILocation(line: 990, column: 47, scope: !1534)
!1549 = !DILocation(line: 990, column: 110, scope: !1534)
!1550 = !DILocation(line: 990, column: 82, scope: !1534)
!1551 = !DILocation(line: 990, column: 77, scope: !1534)
!1552 = !DILocation(line: 990, column: 3, scope: !1534)
!1553 = !DILocation(line: 991, column: 1, scope: !1524)
!1554 = distinct !DISubprogram(name: "calculate_cookie", scope: !2, file: !2, line: 124, type: !1555, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !99, retainedNodes: !1108)
!1555 = !DISubroutineType(types: !1556)
!1556 = !{null, !512, !997, !104}
!1557 = !DILocalVariable(name: "ssl", arg: 1, scope: !1554, file: !2, line: 124, type: !512)
!1558 = !DILocation(line: 124, column: 35, scope: !1554)
!1559 = !DILocalVariable(name: "cookie_secret", arg: 2, scope: !1554, file: !2, line: 124, type: !997)
!1560 = !DILocation(line: 124, column: 55, scope: !1554)
!1561 = !DILocalVariable(name: "cookie_length", arg: 3, scope: !1554, file: !2, line: 124, type: !104)
!1562 = !DILocation(line: 124, column: 83, scope: !1554)
!1563 = !DILocalVariable(name: "rv", scope: !1554, file: !2, line: 125, type: !394)
!1564 = !DILocation(line: 125, column: 8, scope: !1554)
!1565 = !DILocation(line: 125, column: 17, scope: !1554)
!1566 = !DILocation(line: 125, column: 11, scope: !1554)
!1567 = !DILocalVariable(name: "inum", scope: !1554, file: !2, line: 126, type: !394)
!1568 = !DILocation(line: 126, column: 8, scope: !1554)
!1569 = !DILocation(line: 126, column: 14, scope: !1554)
!1570 = !DILocation(line: 126, column: 36, scope: !1554)
!1571 = !DILocation(line: 126, column: 30, scope: !1554)
!1572 = !DILocation(line: 126, column: 50, scope: !1554)
!1573 = !DILocation(line: 126, column: 27, scope: !1554)
!1574 = !DILocation(line: 126, column: 65, scope: !1554)
!1575 = !DILocalVariable(name: "i", scope: !1554, file: !2, line: 127, type: !394)
!1576 = !DILocation(line: 127, column: 8, scope: !1554)
!1577 = !DILocalVariable(name: "ip", scope: !1554, file: !2, line: 128, type: !1002)
!1578 = !DILocation(line: 128, column: 9, scope: !1554)
!1579 = !DILocation(line: 128, column: 19, scope: !1554)
!1580 = !DILocation(line: 129, column: 8, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1554, file: !2, line: 129, column: 3)
!1582 = !DILocation(line: 129, column: 7, scope: !1581)
!1583 = !DILocation(line: 129, column: 11, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1581, file: !2, line: 129, column: 3)
!1585 = !DILocation(line: 129, column: 13, scope: !1584)
!1586 = !DILocation(line: 129, column: 12, scope: !1584)
!1587 = !DILocation(line: 129, column: 3, scope: !1581)
!1588 = !DILocation(line: 129, column: 32, scope: !1584)
!1589 = !DILocation(line: 129, column: 29, scope: !1584)
!1590 = !DILocation(line: 129, column: 31, scope: !1584)
!1591 = !DILocation(line: 129, column: 28, scope: !1584)
!1592 = !DILocation(line: 129, column: 18, scope: !1584)
!1593 = !DILocation(line: 129, column: 22, scope: !1584)
!1594 = !DILocation(line: 129, column: 3, scope: !1584)
!1595 = distinct !{!1595, !1587, !1596, !1597}
!1596 = !DILocation(line: 129, column: 32, scope: !1581)
!1597 = !{!"llvm.loop.mustprogress"}
!1598 = !DILocation(line: 130, column: 1, scope: !1554)
!1599 = distinct !DISubprogram(name: "create_server_socket", scope: !2, file: !2, line: 743, type: !1600, scopeLine: 743, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !99, retainedNodes: !1108)
!1600 = !DISubroutineType(types: !1601)
!1601 = !{!96, !237, !96}
!1602 = !DILocalVariable(name: "server", arg: 1, scope: !1599, file: !2, line: 743, type: !237)
!1603 = !DILocation(line: 743, column: 66, scope: !1599)
!1604 = !DILocalVariable(name: "report_creation", arg: 2, scope: !1599, file: !2, line: 743, type: !96)
!1605 = !DILocation(line: 743, column: 78, scope: !1599)
!1606 = !DILocation(line: 745, column: 3, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1599, file: !2, line: 745, column: 3)
!1608 = !DILocation(line: 745, column: 3, scope: !1599)
!1609 = !DILocation(line: 747, column: 7, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1599, file: !2, line: 747, column: 6)
!1611 = !DILocation(line: 747, column: 6, scope: !1599)
!1612 = !DILocation(line: 747, column: 15, scope: !1610)
!1613 = !DILocation(line: 749, column: 16, scope: !1599)
!1614 = !DILocation(line: 749, column: 3, scope: !1599)
!1615 = !DILocalVariable(name: "udp_listen_fd", scope: !1616, file: !2, line: 752, type: !96)
!1616 = distinct !DILexicalBlock(scope: !1599, file: !2, line: 751, column: 3)
!1617 = !DILocation(line: 752, column: 19, scope: !1616)
!1618 = !DILocation(line: 754, column: 27, scope: !1616)
!1619 = !DILocation(line: 754, column: 35, scope: !1616)
!1620 = !DILocation(line: 754, column: 43, scope: !1616)
!1621 = !DILocation(line: 754, column: 20, scope: !1616)
!1622 = !DILocation(line: 754, column: 18, scope: !1616)
!1623 = !DILocation(line: 755, column: 8, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1616, file: !2, line: 755, column: 8)
!1625 = !DILocation(line: 755, column: 22, scope: !1624)
!1626 = !DILocation(line: 755, column: 8, scope: !1616)
!1627 = !DILocation(line: 756, column: 5, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1624, file: !2, line: 755, column: 27)
!1629 = !DILocation(line: 757, column: 5, scope: !1628)
!1630 = !DILocation(line: 760, column: 53, scope: !1616)
!1631 = !DILocation(line: 760, column: 61, scope: !1616)
!1632 = !DILocation(line: 760, column: 64, scope: !1616)
!1633 = !DILocation(line: 760, column: 122, scope: !1616)
!1634 = !DILocation(line: 760, column: 130, scope: !1616)
!1635 = !DILocation(line: 760, column: 27, scope: !1616)
!1636 = !DILocation(line: 760, column: 4, scope: !1616)
!1637 = !DILocation(line: 760, column: 12, scope: !1616)
!1638 = !DILocation(line: 760, column: 25, scope: !1616)
!1639 = !DILocation(line: 762, column: 22, scope: !1616)
!1640 = !DILocation(line: 762, column: 4, scope: !1616)
!1641 = !DILocation(line: 764, column: 27, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1616, file: !2, line: 764, column: 7)
!1643 = !DILocation(line: 764, column: 58, scope: !1642)
!1644 = !DILocation(line: 764, column: 66, scope: !1642)
!1645 = !DILocation(line: 764, column: 7, scope: !1642)
!1646 = !DILocation(line: 764, column: 73, scope: !1642)
!1647 = !DILocation(line: 764, column: 7, scope: !1616)
!1648 = !DILocation(line: 765, column: 84, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1642, file: !2, line: 764, column: 77)
!1650 = !DILocation(line: 765, column: 92, scope: !1649)
!1651 = !DILocation(line: 765, column: 5, scope: !1649)
!1652 = !DILocation(line: 766, column: 4, scope: !1649)
!1653 = !DILocation(line: 768, column: 31, scope: !1616)
!1654 = !DILocation(line: 768, column: 46, scope: !1616)
!1655 = !DILocation(line: 768, column: 54, scope: !1616)
!1656 = !DILocation(line: 768, column: 62, scope: !1616)
!1657 = !DILocation(line: 768, column: 4, scope: !1616)
!1658 = !DILocation(line: 769, column: 31, scope: !1616)
!1659 = !DILocation(line: 769, column: 46, scope: !1616)
!1660 = !DILocation(line: 769, column: 54, scope: !1616)
!1661 = !DILocation(line: 769, column: 62, scope: !1616)
!1662 = !DILocation(line: 769, column: 4, scope: !1616)
!1663 = !DILocalVariable(name: "max_binding_time", scope: !1664, file: !2, line: 772, type: !1665)
!1664 = distinct !DILexicalBlock(scope: !1616, file: !2, line: 771, column: 4)
!1665 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!1666 = !DILocation(line: 772, column: 15, scope: !1664)
!1667 = !DILocalVariable(name: "addr_bind_cycle", scope: !1664, file: !2, line: 773, type: !96)
!1668 = !DILocation(line: 773, column: 9, scope: !1664)
!1669 = !DILocation(line: 773, column: 5, scope: !1664)
!1670 = !DILabel(scope: !1664, name: "retry_addr_bind", file: !2, line: 774)
!1671 = !DILocation(line: 774, column: 5, scope: !1664)
!1672 = !DILocation(line: 776, column: 18, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1664, file: !2, line: 776, column: 8)
!1674 = !DILocation(line: 776, column: 33, scope: !1673)
!1675 = !DILocation(line: 776, column: 41, scope: !1673)
!1676 = !DILocation(line: 776, column: 8, scope: !1673)
!1677 = !DILocation(line: 776, column: 61, scope: !1673)
!1678 = !DILocation(line: 776, column: 8, scope: !1664)
!1679 = !DILocation(line: 777, column: 6, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1673, file: !2, line: 776, column: 65)
!1681 = !DILocalVariable(name: "saddr", scope: !1680, file: !2, line: 778, type: !1682)
!1682 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1032, elements: !1683)
!1683 = !{!1684}
!1684 = !DISubrange(count: 129)
!1685 = !DILocation(line: 778, column: 11, scope: !1680)
!1686 = !DILocation(line: 779, column: 22, scope: !1680)
!1687 = !DILocation(line: 779, column: 30, scope: !1680)
!1688 = !DILocation(line: 779, column: 45, scope: !1680)
!1689 = !DILocation(line: 779, column: 6, scope: !1680)
!1690 = !DILocation(line: 780, column: 95, scope: !1680)
!1691 = !DILocation(line: 780, column: 6, scope: !1680)
!1692 = !DILocation(line: 781, column: 24, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1680, file: !2, line: 781, column: 9)
!1694 = !DILocation(line: 781, column: 26, scope: !1693)
!1695 = !DILocation(line: 781, column: 9, scope: !1680)
!1696 = !DILocation(line: 782, column: 106, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1693, file: !2, line: 781, column: 45)
!1698 = !DILocation(line: 782, column: 7, scope: !1697)
!1699 = !DILocation(line: 783, column: 7, scope: !1697)
!1700 = !DILocation(line: 784, column: 7, scope: !1697)
!1701 = !DILocation(line: 786, column: 114, scope: !1680)
!1702 = !DILocation(line: 786, column: 6, scope: !1680)
!1703 = !DILocation(line: 787, column: 6, scope: !1680)
!1704 = !DILocation(line: 791, column: 38, scope: !1616)
!1705 = !DILocation(line: 791, column: 46, scope: !1616)
!1706 = !DILocation(line: 791, column: 49, scope: !1616)
!1707 = !DILocation(line: 791, column: 60, scope: !1616)
!1708 = !DILocation(line: 793, column: 9, scope: !1616)
!1709 = !DILocation(line: 791, column: 28, scope: !1616)
!1710 = !DILocation(line: 791, column: 4, scope: !1616)
!1711 = !DILocation(line: 791, column: 12, scope: !1616)
!1712 = !DILocation(line: 791, column: 26, scope: !1616)
!1713 = !DILocation(line: 795, column: 14, scope: !1616)
!1714 = !DILocation(line: 795, column: 22, scope: !1616)
!1715 = !DILocation(line: 795, column: 4, scope: !1616)
!1716 = !DILocation(line: 798, column: 6, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1599, file: !2, line: 798, column: 6)
!1718 = !DILocation(line: 798, column: 6, scope: !1599)
!1719 = !DILocation(line: 799, column: 20, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1721, file: !2, line: 799, column: 7)
!1721 = distinct !DILexicalBlock(scope: !1717, file: !2, line: 798, column: 23)
!1722 = !DILocation(line: 799, column: 8, scope: !1720)
!1723 = !DILocation(line: 799, column: 27, scope: !1720)
!1724 = !DILocation(line: 799, column: 43, scope: !1720)
!1725 = !DILocation(line: 799, column: 31, scope: !1720)
!1726 = !DILocation(line: 799, column: 7, scope: !1721)
!1727 = !DILocation(line: 800, column: 22, scope: !1720)
!1728 = !DILocation(line: 800, column: 30, scope: !1720)
!1729 = !DILocation(line: 800, column: 40, scope: !1720)
!1730 = !DILocation(line: 800, column: 48, scope: !1720)
!1731 = !DILocation(line: 800, column: 5, scope: !1720)
!1732 = !DILocation(line: 801, column: 25, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1720, file: !2, line: 801, column: 12)
!1734 = !DILocation(line: 801, column: 13, scope: !1733)
!1735 = !DILocation(line: 801, column: 12, scope: !1720)
!1736 = !DILocation(line: 802, column: 22, scope: !1733)
!1737 = !DILocation(line: 802, column: 30, scope: !1733)
!1738 = !DILocation(line: 802, column: 40, scope: !1733)
!1739 = !DILocation(line: 802, column: 48, scope: !1733)
!1740 = !DILocation(line: 802, column: 5, scope: !1733)
!1741 = !DILocation(line: 803, column: 25, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1733, file: !2, line: 803, column: 12)
!1743 = !DILocation(line: 803, column: 13, scope: !1742)
!1744 = !DILocation(line: 803, column: 12, scope: !1733)
!1745 = !DILocation(line: 804, column: 22, scope: !1742)
!1746 = !DILocation(line: 804, column: 30, scope: !1742)
!1747 = !DILocation(line: 804, column: 40, scope: !1742)
!1748 = !DILocation(line: 804, column: 48, scope: !1742)
!1749 = !DILocation(line: 804, column: 5, scope: !1742)
!1750 = !DILocation(line: 805, column: 3, scope: !1721)
!1751 = !DILocation(line: 807, column: 3, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1599, file: !2, line: 807, column: 3)
!1753 = !DILocation(line: 807, column: 3, scope: !1599)
!1754 = !DILocation(line: 809, column: 3, scope: !1599)
!1755 = !DILocation(line: 810, column: 1, scope: !1599)
!1756 = distinct !DISubprogram(name: "clean_server", scope: !2, file: !2, line: 928, type: !1757, scopeLine: 928, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !99, retainedNodes: !1108)
!1757 = !DISubroutineType(types: !1758)
!1758 = !{!96, !237}
!1759 = !DILocalVariable(name: "server", arg: 1, scope: !1756, file: !2, line: 928, type: !237)
!1760 = !DILocation(line: 928, column: 58, scope: !1756)
!1761 = !DILocation(line: 929, column: 6, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1756, file: !2, line: 929, column: 6)
!1763 = !DILocation(line: 929, column: 6, scope: !1756)
!1764 = !DILocation(line: 930, column: 4, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1766, file: !2, line: 930, column: 4)
!1766 = distinct !DILexicalBlock(scope: !1762, file: !2, line: 929, column: 14)
!1767 = !DILocation(line: 930, column: 4, scope: !1766)
!1768 = !DILocation(line: 930, column: 4, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1765, file: !2, line: 930, column: 4)
!1770 = !DILocation(line: 931, column: 21, scope: !1766)
!1771 = !DILocation(line: 931, column: 29, scope: !1766)
!1772 = !DILocation(line: 931, column: 4, scope: !1766)
!1773 = !DILocation(line: 932, column: 4, scope: !1766)
!1774 = !DILocation(line: 932, column: 12, scope: !1766)
!1775 = !DILocation(line: 932, column: 25, scope: !1766)
!1776 = !DILocation(line: 933, column: 3, scope: !1766)
!1777 = !DILocation(line: 934, column: 3, scope: !1756)
!1778 = !DILocalVariable(name: "fd", arg: 1, scope: !93, file: !2, line: 615, type: !96)
!1779 = !DILocation(line: 615, column: 54, scope: !93)
!1780 = !DILocalVariable(name: "what", arg: 2, scope: !93, file: !2, line: 615, type: !97)
!1781 = !DILocation(line: 615, column: 64, scope: !93)
!1782 = !DILocalVariable(name: "arg", arg: 3, scope: !93, file: !2, line: 615, type: !98)
!1783 = !DILocation(line: 615, column: 76, scope: !93)
!1784 = !DILocalVariable(name: "cycle", scope: !93, file: !2, line: 617, type: !96)
!1785 = !DILocation(line: 617, column: 6, scope: !93)
!1786 = !DILocalVariable(name: "server", scope: !93, file: !2, line: 619, type: !237)
!1787 = !DILocation(line: 619, column: 35, scope: !93)
!1788 = !DILocation(line: 619, column: 78, scope: !93)
!1789 = !DILocalVariable(name: "s", scope: !93, file: !2, line: 620, type: !468)
!1790 = !DILocation(line: 620, column: 20, scope: !93)
!1791 = !DILocation(line: 620, column: 24, scope: !93)
!1792 = !DILocation(line: 620, column: 32, scope: !93)
!1793 = !DILocation(line: 622, column: 2, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !93, file: !2, line: 622, column: 2)
!1795 = !DILocation(line: 622, column: 2, scope: !93)
!1796 = !DILocation(line: 624, column: 8, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !93, file: !2, line: 624, column: 6)
!1798 = !DILocation(line: 624, column: 13, scope: !1797)
!1799 = !DILocation(line: 624, column: 6, scope: !93)
!1800 = !DILocation(line: 625, column: 3, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1797, file: !2, line: 624, column: 25)
!1802 = !DILocalVariable(name: "elem", scope: !93, file: !2, line: 630, type: !589)
!1803 = !DILocation(line: 630, column: 29, scope: !93)
!1804 = !DILocation(line: 630, column: 2, scope: !93)
!1805 = !DILabel(scope: !93, name: "start_udp_cycle", file: !2, line: 632)
!1806 = !DILocation(line: 632, column: 2, scope: !93)
!1807 = !DILocation(line: 634, column: 66, scope: !93)
!1808 = !DILocation(line: 634, column: 74, scope: !93)
!1809 = !DILocation(line: 634, column: 38, scope: !93)
!1810 = !DILocation(line: 634, column: 7, scope: !93)
!1811 = !DILocation(line: 636, column: 27, scope: !93)
!1812 = !DILocation(line: 636, column: 2, scope: !93)
!1813 = !DILocation(line: 636, column: 10, scope: !93)
!1814 = !DILocation(line: 636, column: 13, scope: !93)
!1815 = !DILocation(line: 636, column: 18, scope: !93)
!1816 = !DILocation(line: 636, column: 21, scope: !93)
!1817 = !DILocation(line: 636, column: 25, scope: !93)
!1818 = !DILocation(line: 637, column: 2, scope: !93)
!1819 = !DILocation(line: 637, column: 10, scope: !93)
!1820 = !DILocation(line: 637, column: 13, scope: !93)
!1821 = !DILocation(line: 637, column: 18, scope: !93)
!1822 = !DILocation(line: 637, column: 21, scope: !93)
!1823 = !DILocation(line: 637, column: 30, scope: !93)
!1824 = !DILocation(line: 638, column: 2, scope: !93)
!1825 = !DILocation(line: 638, column: 10, scope: !93)
!1826 = !DILocation(line: 638, column: 13, scope: !93)
!1827 = !DILocation(line: 638, column: 18, scope: !93)
!1828 = !DILocation(line: 638, column: 21, scope: !93)
!1829 = !DILocation(line: 638, column: 30, scope: !93)
!1830 = !DILocation(line: 639, column: 2, scope: !93)
!1831 = !DILocation(line: 639, column: 10, scope: !93)
!1832 = !DILocation(line: 639, column: 13, scope: !93)
!1833 = !DILocation(line: 639, column: 18, scope: !93)
!1834 = !DILocation(line: 639, column: 29, scope: !93)
!1835 = !DILocation(line: 641, column: 17, scope: !93)
!1836 = !DILocation(line: 641, column: 25, scope: !93)
!1837 = !DILocation(line: 641, column: 28, scope: !93)
!1838 = !DILocation(line: 641, column: 33, scope: !93)
!1839 = !DILocation(line: 641, column: 36, scope: !93)
!1840 = !DILocation(line: 641, column: 2, scope: !93)
!1841 = !DILocalVariable(name: "bsize", scope: !93, file: !2, line: 643, type: !1842)
!1842 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !1843, line: 108, baseType: !1844)
!1843 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!1844 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !271, line: 194, baseType: !394)
!1845 = !DILocation(line: 643, column: 10, scope: !93)
!1846 = !DILocalVariable(name: "flags", scope: !93, file: !2, line: 645, type: !96)
!1847 = !DILocation(line: 645, column: 6, scope: !93)
!1848 = !DILocation(line: 647, column: 23, scope: !93)
!1849 = !DILocation(line: 647, column: 29, scope: !93)
!1850 = !DILocation(line: 647, column: 37, scope: !93)
!1851 = !DILocation(line: 647, column: 40, scope: !93)
!1852 = !DILocation(line: 647, column: 45, scope: !93)
!1853 = !DILocation(line: 647, column: 48, scope: !93)
!1854 = !DILocation(line: 647, column: 61, scope: !93)
!1855 = !DILocation(line: 647, column: 69, scope: !93)
!1856 = !DILocation(line: 648, column: 35, scope: !93)
!1857 = !DILocation(line: 648, column: 11, scope: !93)
!1858 = !DILocation(line: 648, column: 47, scope: !93)
!1859 = !DILocation(line: 648, column: 42, scope: !93)
!1860 = !DILocation(line: 649, column: 6, scope: !93)
!1861 = !DILocation(line: 649, column: 14, scope: !93)
!1862 = !DILocation(line: 649, column: 17, scope: !93)
!1863 = !DILocation(line: 649, column: 22, scope: !93)
!1864 = !DILocation(line: 649, column: 25, scope: !93)
!1865 = !DILocation(line: 649, column: 38, scope: !93)
!1866 = !DILocation(line: 649, column: 46, scope: !93)
!1867 = !DILocation(line: 649, column: 49, scope: !93)
!1868 = !DILocation(line: 649, column: 54, scope: !93)
!1869 = !DILocation(line: 649, column: 57, scope: !93)
!1870 = !DILocation(line: 650, column: 4, scope: !93)
!1871 = !DILocation(line: 650, column: 12, scope: !93)
!1872 = !DILocation(line: 650, column: 15, scope: !93)
!1873 = !DILocation(line: 650, column: 21, scope: !93)
!1874 = !DILocation(line: 647, column: 10, scope: !93)
!1875 = !DILocation(line: 647, column: 8, scope: !93)
!1876 = !DILocalVariable(name: "conn_reset", scope: !93, file: !2, line: 652, type: !96)
!1877 = !DILocation(line: 652, column: 6, scope: !93)
!1878 = !DILocation(line: 652, column: 19, scope: !93)
!1879 = !DILocalVariable(name: "to_block", scope: !93, file: !2, line: 653, type: !96)
!1880 = !DILocation(line: 653, column: 6, scope: !93)
!1881 = !DILocation(line: 653, column: 17, scope: !93)
!1882 = !DILocation(line: 655, column: 6, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !93, file: !2, line: 655, column: 6)
!1884 = !DILocation(line: 655, column: 12, scope: !1883)
!1885 = !DILocation(line: 655, column: 6, scope: !93)
!1886 = !DILocation(line: 657, column: 6, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1888, file: !2, line: 657, column: 6)
!1888 = distinct !DILexicalBlock(scope: !1883, file: !2, line: 655, column: 17)
!1889 = !DILocation(line: 657, column: 6, scope: !1888)
!1890 = !DILocation(line: 658, column: 30, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1887, file: !2, line: 657, column: 16)
!1892 = !DILocation(line: 658, column: 38, scope: !1891)
!1893 = !DILocation(line: 658, column: 41, scope: !1891)
!1894 = !DILocation(line: 658, column: 49, scope: !1891)
!1895 = !DILocation(line: 658, column: 52, scope: !1891)
!1896 = !DILocation(line: 658, column: 57, scope: !1891)
!1897 = !DILocation(line: 658, column: 60, scope: !1891)
!1898 = !DILocation(line: 658, column: 4, scope: !1891)
!1899 = !DILocation(line: 659, column: 4, scope: !1891)
!1900 = !DILocation(line: 659, column: 12, scope: !1891)
!1901 = !DILocation(line: 659, column: 15, scope: !1891)
!1902 = !DILocation(line: 659, column: 20, scope: !1891)
!1903 = !DILocation(line: 659, column: 23, scope: !1891)
!1904 = !DILocation(line: 659, column: 27, scope: !1891)
!1905 = !DILocation(line: 660, column: 4, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1891, file: !2, line: 660, column: 4)
!1907 = !DILocation(line: 660, column: 4, scope: !1891)
!1908 = !DILocation(line: 661, column: 4, scope: !1891)
!1909 = !DILocalVariable(name: "eflags", scope: !1888, file: !2, line: 667, type: !96)
!1910 = !DILocation(line: 667, column: 7, scope: !1888)
!1911 = !DILocalVariable(name: "errcode", scope: !1888, file: !2, line: 669, type: !277)
!1912 = !DILocation(line: 669, column: 12, scope: !1888)
!1913 = !DILocalVariable(name: "orig_addr", scope: !1888, file: !2, line: 670, type: !247)
!1914 = !DILocation(line: 670, column: 12, scope: !1888)
!1915 = !DILocalVariable(name: "ttl", scope: !1888, file: !2, line: 671, type: !96)
!1916 = !DILocation(line: 671, column: 7, scope: !1888)
!1917 = !DILocalVariable(name: "tos", scope: !1888, file: !2, line: 672, type: !96)
!1918 = !DILocation(line: 672, column: 7, scope: !1888)
!1919 = !DILocalVariable(name: "slen", scope: !1888, file: !2, line: 673, type: !96)
!1920 = !DILocation(line: 673, column: 7, scope: !1888)
!1921 = !DILocation(line: 673, column: 14, scope: !1888)
!1922 = !DILocation(line: 673, column: 22, scope: !1888)
!1923 = !DILocation(line: 674, column: 16, scope: !1888)
!1924 = !DILocation(line: 674, column: 34, scope: !1888)
!1925 = !DILocation(line: 674, column: 42, scope: !1888)
!1926 = !DILocation(line: 675, column: 40, scope: !1888)
!1927 = !DILocation(line: 675, column: 48, scope: !1888)
!1928 = !DILocation(line: 675, column: 51, scope: !1888)
!1929 = !DILocation(line: 675, column: 57, scope: !1888)
!1930 = !DILocation(line: 674, column: 3, scope: !1888)
!1931 = !DILocation(line: 678, column: 3, scope: !1888)
!1932 = !DILocation(line: 679, column: 21, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1888, file: !2, line: 678, column: 6)
!1934 = !DILocation(line: 679, column: 49, scope: !1933)
!1935 = !DILocation(line: 679, column: 25, scope: !1933)
!1936 = !DILocation(line: 679, column: 56, scope: !1933)
!1937 = !DILocation(line: 679, column: 95, scope: !1933)
!1938 = !DILocation(line: 679, column: 123, scope: !1933)
!1939 = !DILocation(line: 679, column: 131, scope: !1933)
!1940 = !DILocation(line: 679, column: 134, scope: !1933)
!1941 = !DILocation(line: 679, column: 139, scope: !1933)
!1942 = !DILocation(line: 679, column: 142, scope: !1933)
!1943 = !DILocation(line: 679, column: 102, scope: !1933)
!1944 = !DILocation(line: 679, column: 12, scope: !1933)
!1945 = !DILocation(line: 679, column: 10, scope: !1933)
!1946 = !DILocation(line: 680, column: 3, scope: !1933)
!1947 = !DILocation(line: 680, column: 12, scope: !1888)
!1948 = !DILocation(line: 680, column: 18, scope: !1888)
!1949 = !DILocation(line: 680, column: 22, scope: !1888)
!1950 = !DILocation(line: 680, column: 26, scope: !1888)
!1951 = !DILocation(line: 680, column: 32, scope: !1888)
!1952 = !DILocation(line: 0, scope: !1888)
!1953 = distinct !{!1953, !1931, !1954, !1597}
!1954 = !DILocation(line: 680, column: 41, scope: !1888)
!1955 = !DILocation(line: 682, column: 16, scope: !1888)
!1956 = !DILocation(line: 682, column: 14, scope: !1888)
!1957 = !DILocation(line: 683, column: 14, scope: !1888)
!1958 = !DILocation(line: 683, column: 12, scope: !1888)
!1959 = !DILocation(line: 687, column: 6, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1888, file: !2, line: 687, column: 6)
!1961 = !DILocation(line: 687, column: 6, scope: !1888)
!1962 = !DILocation(line: 688, column: 30, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1960, file: !2, line: 687, column: 18)
!1964 = !DILocation(line: 688, column: 38, scope: !1963)
!1965 = !DILocation(line: 688, column: 41, scope: !1963)
!1966 = !DILocation(line: 688, column: 49, scope: !1963)
!1967 = !DILocation(line: 688, column: 52, scope: !1963)
!1968 = !DILocation(line: 688, column: 57, scope: !1963)
!1969 = !DILocation(line: 688, column: 60, scope: !1963)
!1970 = !DILocation(line: 688, column: 4, scope: !1963)
!1971 = !DILocation(line: 689, column: 4, scope: !1963)
!1972 = !DILocation(line: 689, column: 12, scope: !1963)
!1973 = !DILocation(line: 689, column: 15, scope: !1963)
!1974 = !DILocation(line: 689, column: 20, scope: !1963)
!1975 = !DILocation(line: 689, column: 23, scope: !1963)
!1976 = !DILocation(line: 689, column: 27, scope: !1963)
!1977 = !DILocation(line: 690, column: 25, scope: !1963)
!1978 = !DILocation(line: 690, column: 32, scope: !1963)
!1979 = !DILocation(line: 690, column: 4, scope: !1963)
!1980 = !DILocation(line: 691, column: 4, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1963, file: !2, line: 691, column: 4)
!1982 = !DILocation(line: 691, column: 4, scope: !1963)
!1983 = !DILocation(line: 692, column: 4, scope: !1963)
!1984 = !DILocation(line: 694, column: 2, scope: !1888)
!1985 = !DILocation(line: 696, column: 5, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !93, file: !2, line: 696, column: 5)
!1987 = !DILocation(line: 696, column: 10, scope: !1986)
!1988 = !DILocation(line: 696, column: 5, scope: !93)
!1989 = !DILocation(line: 697, column: 7, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1991, file: !2, line: 697, column: 6)
!1991 = distinct !DILexicalBlock(scope: !1986, file: !2, line: 696, column: 14)
!1992 = !DILocation(line: 697, column: 16, scope: !1990)
!1993 = !DILocation(line: 697, column: 20, scope: !1990)
!1994 = !DILocation(line: 697, column: 6, scope: !1991)
!1995 = !DILocalVariable(name: "ern", scope: !1996, file: !2, line: 698, type: !96)
!1996 = distinct !DILexicalBlock(scope: !1990, file: !2, line: 697, column: 32)
!1997 = !DILocation(line: 698, column: 8, scope: !1996)
!1998 = !DILocation(line: 698, column: 12, scope: !1996)
!1999 = !DILocation(line: 699, column: 4, scope: !1996)
!2000 = !DILocation(line: 700, column: 79, scope: !1996)
!2001 = !DILocation(line: 700, column: 4, scope: !1996)
!2002 = !DILocation(line: 701, column: 3, scope: !1996)
!2003 = !DILocation(line: 702, column: 29, scope: !1991)
!2004 = !DILocation(line: 702, column: 37, scope: !1991)
!2005 = !DILocation(line: 702, column: 40, scope: !1991)
!2006 = !DILocation(line: 702, column: 48, scope: !1991)
!2007 = !DILocation(line: 702, column: 51, scope: !1991)
!2008 = !DILocation(line: 702, column: 56, scope: !1991)
!2009 = !DILocation(line: 702, column: 59, scope: !1991)
!2010 = !DILocation(line: 702, column: 3, scope: !1991)
!2011 = !DILocation(line: 703, column: 3, scope: !1991)
!2012 = !DILocation(line: 703, column: 11, scope: !1991)
!2013 = !DILocation(line: 703, column: 14, scope: !1991)
!2014 = !DILocation(line: 703, column: 19, scope: !1991)
!2015 = !DILocation(line: 703, column: 22, scope: !1991)
!2016 = !DILocation(line: 703, column: 26, scope: !1991)
!2017 = !DILocation(line: 704, column: 3, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !1991, file: !2, line: 704, column: 3)
!2019 = !DILocation(line: 704, column: 3, scope: !1991)
!2020 = !DILocation(line: 705, column: 3, scope: !1991)
!2021 = !DILocation(line: 708, column: 6, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !93, file: !2, line: 708, column: 6)
!2023 = !DILocation(line: 708, column: 12, scope: !2022)
!2024 = !DILocation(line: 708, column: 6, scope: !93)
!2025 = !DILocalVariable(name: "rc", scope: !2026, file: !2, line: 710, type: !96)
!2026 = distinct !DILexicalBlock(scope: !2022, file: !2, line: 708, column: 17)
!2027 = !DILocation(line: 710, column: 7, scope: !2026)
!2028 = !DILocation(line: 711, column: 31, scope: !2026)
!2029 = !DILocation(line: 711, column: 45, scope: !2026)
!2030 = !DILocation(line: 711, column: 3, scope: !2026)
!2031 = !DILocation(line: 713, column: 6, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !2026, file: !2, line: 713, column: 6)
!2033 = !DILocation(line: 713, column: 14, scope: !2032)
!2034 = !DILocation(line: 713, column: 6, scope: !2026)
!2035 = !DILocation(line: 715, column: 41, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !2032, file: !2, line: 713, column: 26)
!2037 = !DILocation(line: 715, column: 49, scope: !2036)
!2038 = !DILocation(line: 715, column: 9, scope: !2036)
!2039 = !DILocation(line: 715, column: 7, scope: !2036)
!2040 = !DILocation(line: 716, column: 7, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2036, file: !2, line: 716, column: 7)
!2042 = !DILocation(line: 716, column: 9, scope: !2041)
!2043 = !DILocation(line: 716, column: 7, scope: !2036)
!2044 = !DILocation(line: 717, column: 84, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !2041, file: !2, line: 716, column: 13)
!2046 = !DILocation(line: 717, column: 79, scope: !2045)
!2047 = !DILocation(line: 717, column: 5, scope: !2045)
!2048 = !DILocation(line: 718, column: 4, scope: !2045)
!2049 = !DILocation(line: 720, column: 3, scope: !2036)
!2050 = !DILocation(line: 721, column: 24, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2032, file: !2, line: 720, column: 10)
!2052 = !DILocation(line: 721, column: 4, scope: !2051)
!2053 = !DILocation(line: 721, column: 12, scope: !2051)
!2054 = !DILocation(line: 721, column: 15, scope: !2051)
!2055 = !DILocation(line: 721, column: 20, scope: !2051)
!2056 = !DILocation(line: 721, column: 22, scope: !2051)
!2057 = !DILocation(line: 722, column: 27, scope: !2051)
!2058 = !DILocation(line: 722, column: 37, scope: !2051)
!2059 = !DILocation(line: 722, column: 45, scope: !2051)
!2060 = !DILocation(line: 722, column: 50, scope: !2051)
!2061 = !DILocation(line: 722, column: 58, scope: !2051)
!2062 = !DILocation(line: 722, column: 61, scope: !2051)
!2063 = !DILocation(line: 722, column: 69, scope: !2051)
!2064 = !DILocation(line: 722, column: 9, scope: !2051)
!2065 = !DILocation(line: 722, column: 7, scope: !2051)
!2066 = !DILocation(line: 725, column: 6, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2026, file: !2, line: 725, column: 6)
!2068 = !DILocation(line: 725, column: 9, scope: !2067)
!2069 = !DILocation(line: 725, column: 6, scope: !2026)
!2070 = !DILocation(line: 726, column: 7, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2072, file: !2, line: 726, column: 7)
!2072 = distinct !DILexicalBlock(scope: !2067, file: !2, line: 725, column: 14)
!2073 = !DILocation(line: 726, column: 7, scope: !2072)
!2074 = !DILocation(line: 727, column: 5, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2071, file: !2, line: 726, column: 32)
!2076 = !DILocation(line: 728, column: 4, scope: !2075)
!2077 = !DILocation(line: 729, column: 3, scope: !2072)
!2078 = !DILocation(line: 730, column: 2, scope: !2026)
!2079 = !DILocation(line: 732, column: 28, scope: !93)
!2080 = !DILocation(line: 732, column: 36, scope: !93)
!2081 = !DILocation(line: 732, column: 39, scope: !93)
!2082 = !DILocation(line: 732, column: 47, scope: !93)
!2083 = !DILocation(line: 732, column: 50, scope: !93)
!2084 = !DILocation(line: 732, column: 55, scope: !93)
!2085 = !DILocation(line: 732, column: 58, scope: !93)
!2086 = !DILocation(line: 732, column: 2, scope: !93)
!2087 = !DILocation(line: 733, column: 2, scope: !93)
!2088 = !DILocation(line: 733, column: 10, scope: !93)
!2089 = !DILocation(line: 733, column: 13, scope: !93)
!2090 = !DILocation(line: 733, column: 18, scope: !93)
!2091 = !DILocation(line: 733, column: 21, scope: !93)
!2092 = !DILocation(line: 733, column: 25, scope: !93)
!2093 = !DILocation(line: 735, column: 6, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !93, file: !2, line: 735, column: 5)
!2095 = !DILocation(line: 735, column: 11, scope: !2094)
!2096 = !DILocation(line: 735, column: 15, scope: !2094)
!2097 = !DILocation(line: 735, column: 24, scope: !2094)
!2098 = !DILocation(line: 735, column: 26, scope: !2094)
!2099 = !DILocation(line: 735, column: 5, scope: !93)
!2100 = !DILocation(line: 736, column: 3, scope: !2094)
!2101 = !DILocation(line: 738, column: 2, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !93, file: !2, line: 738, column: 2)
!2103 = !DILocation(line: 738, column: 2, scope: !93)
!2104 = !DILocation(line: 739, column: 1, scope: !93)
!2105 = distinct !DISubprogram(name: "reopen_server_socket", scope: !2, file: !2, line: 812, type: !1600, scopeLine: 813, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !99, retainedNodes: !1108)
!2106 = !DILocalVariable(name: "server", arg: 1, scope: !2105, file: !2, line: 812, type: !237)
!2107 = !DILocation(line: 812, column: 66, scope: !2105)
!2108 = !DILocalVariable(name: "fd", arg: 2, scope: !2105, file: !2, line: 812, type: !96)
!2109 = !DILocation(line: 812, column: 90, scope: !2105)
!2110 = !DILocation(line: 814, column: 2, scope: !2105)
!2111 = !DILocation(line: 814, column: 2, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2105, file: !2, line: 814, column: 2)
!2113 = !DILocation(line: 816, column: 6, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2105, file: !2, line: 816, column: 5)
!2115 = !DILocation(line: 816, column: 5, scope: !2105)
!2116 = !DILocation(line: 817, column: 3, scope: !2114)
!2117 = !DILocation(line: 819, column: 2, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2105, file: !2, line: 819, column: 2)
!2119 = !DILocation(line: 819, column: 2, scope: !2105)
!2120 = !DILocation(line: 822, column: 3, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2122, file: !2, line: 822, column: 3)
!2122 = distinct !DILexicalBlock(scope: !2105, file: !2, line: 821, column: 2)
!2123 = !DILocation(line: 822, column: 3, scope: !2122)
!2124 = !DILocation(line: 822, column: 3, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2121, file: !2, line: 822, column: 3)
!2126 = !DILocation(line: 824, column: 6, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2122, file: !2, line: 824, column: 6)
!2128 = !DILocation(line: 824, column: 14, scope: !2127)
!2129 = !DILocation(line: 824, column: 28, scope: !2127)
!2130 = !DILocation(line: 824, column: 30, scope: !2127)
!2131 = !DILocation(line: 824, column: 6, scope: !2122)
!2132 = !DILocation(line: 825, column: 4, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2127, file: !2, line: 824, column: 35)
!2134 = !DILocation(line: 826, column: 4, scope: !2133)
!2135 = !DILocation(line: 826, column: 12, scope: !2133)
!2136 = !DILocation(line: 826, column: 26, scope: !2133)
!2137 = !DILocation(line: 826, column: 29, scope: !2133)
!2138 = !DILocation(line: 827, column: 3, scope: !2133)
!2139 = !DILocation(line: 829, column: 9, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2122, file: !2, line: 829, column: 7)
!2141 = !DILocation(line: 829, column: 17, scope: !2140)
!2142 = !DILocation(line: 829, column: 8, scope: !2140)
!2143 = !DILocation(line: 829, column: 7, scope: !2122)
!2144 = !DILocation(line: 830, column: 32, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2140, file: !2, line: 829, column: 32)
!2146 = !DILocation(line: 830, column: 11, scope: !2145)
!2147 = !DILocation(line: 830, column: 4, scope: !2145)
!2148 = !DILocalVariable(name: "udp_listen_fd", scope: !2122, file: !2, line: 833, type: !96)
!2149 = !DILocation(line: 833, column: 18, scope: !2122)
!2150 = !DILocation(line: 833, column: 41, scope: !2122)
!2151 = !DILocation(line: 833, column: 49, scope: !2122)
!2152 = !DILocation(line: 833, column: 57, scope: !2122)
!2153 = !DILocation(line: 833, column: 34, scope: !2122)
!2154 = !DILocation(line: 834, column: 7, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2122, file: !2, line: 834, column: 7)
!2156 = !DILocation(line: 834, column: 21, scope: !2155)
!2157 = !DILocation(line: 834, column: 7, scope: !2122)
!2158 = !DILocation(line: 835, column: 4, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2155, file: !2, line: 834, column: 26)
!2160 = !DILocation(line: 836, column: 4, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2159, file: !2, line: 836, column: 4)
!2162 = !DILocation(line: 836, column: 4, scope: !2159)
!2163 = !DILocation(line: 837, column: 4, scope: !2159)
!2164 = !DILocation(line: 840, column: 30, scope: !2122)
!2165 = !DILocation(line: 840, column: 3, scope: !2122)
!2166 = !DILocation(line: 840, column: 11, scope: !2122)
!2167 = !DILocation(line: 840, column: 25, scope: !2122)
!2168 = !DILocation(line: 840, column: 28, scope: !2122)
!2169 = !DILocation(line: 844, column: 22, scope: !2122)
!2170 = !DILocation(line: 844, column: 30, scope: !2122)
!2171 = !DILocation(line: 844, column: 3, scope: !2122)
!2172 = !DILocation(line: 846, column: 21, scope: !2122)
!2173 = !DILocation(line: 846, column: 3, scope: !2122)
!2174 = !DILocation(line: 848, column: 27, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2122, file: !2, line: 848, column: 7)
!2176 = !DILocation(line: 848, column: 59, scope: !2175)
!2177 = !DILocation(line: 848, column: 67, scope: !2175)
!2178 = !DILocation(line: 848, column: 7, scope: !2175)
!2179 = !DILocation(line: 848, column: 75, scope: !2175)
!2180 = !DILocation(line: 848, column: 7, scope: !2122)
!2181 = !DILocation(line: 851, column: 5, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2175, file: !2, line: 848, column: 80)
!2183 = !DILocation(line: 851, column: 13, scope: !2182)
!2184 = !DILocation(line: 849, column: 5, scope: !2182)
!2185 = !DILocation(line: 852, column: 3, scope: !2182)
!2186 = !DILocation(line: 854, column: 16, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2122, file: !2, line: 854, column: 6)
!2188 = !DILocation(line: 854, column: 31, scope: !2187)
!2189 = !DILocation(line: 854, column: 39, scope: !2187)
!2190 = !DILocation(line: 854, column: 6, scope: !2187)
!2191 = !DILocation(line: 854, column: 59, scope: !2187)
!2192 = !DILocation(line: 854, column: 6, scope: !2122)
!2193 = !DILocation(line: 855, column: 4, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2187, file: !2, line: 854, column: 63)
!2195 = !DILocalVariable(name: "saddr", scope: !2194, file: !2, line: 856, type: !1682)
!2196 = !DILocation(line: 856, column: 9, scope: !2194)
!2197 = !DILocation(line: 857, column: 20, scope: !2194)
!2198 = !DILocation(line: 857, column: 28, scope: !2194)
!2199 = !DILocation(line: 857, column: 43, scope: !2194)
!2200 = !DILocation(line: 857, column: 4, scope: !2194)
!2201 = !DILocation(line: 858, column: 81, scope: !2194)
!2202 = !DILocation(line: 858, column: 4, scope: !2194)
!2203 = !DILocation(line: 859, column: 4, scope: !2194)
!2204 = !DILocation(line: 862, column: 37, scope: !2122)
!2205 = !DILocation(line: 862, column: 45, scope: !2122)
!2206 = !DILocation(line: 862, column: 48, scope: !2122)
!2207 = !DILocation(line: 862, column: 60, scope: !2122)
!2208 = !DILocation(line: 864, column: 5, scope: !2122)
!2209 = !DILocation(line: 862, column: 27, scope: !2122)
!2210 = !DILocation(line: 862, column: 3, scope: !2122)
!2211 = !DILocation(line: 862, column: 11, scope: !2122)
!2212 = !DILocation(line: 862, column: 25, scope: !2122)
!2213 = !DILocation(line: 866, column: 13, scope: !2122)
!2214 = !DILocation(line: 866, column: 21, scope: !2122)
!2215 = !DILocation(line: 866, column: 3, scope: !2122)
!2216 = !DILocation(line: 869, column: 19, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2105, file: !2, line: 869, column: 6)
!2218 = !DILocation(line: 869, column: 7, scope: !2217)
!2219 = !DILocation(line: 869, column: 26, scope: !2217)
!2220 = !DILocation(line: 869, column: 42, scope: !2217)
!2221 = !DILocation(line: 869, column: 30, scope: !2217)
!2222 = !DILocation(line: 869, column: 6, scope: !2105)
!2223 = !DILocation(line: 870, column: 20, scope: !2217)
!2224 = !DILocation(line: 870, column: 28, scope: !2217)
!2225 = !DILocation(line: 870, column: 38, scope: !2217)
!2226 = !DILocation(line: 870, column: 46, scope: !2217)
!2227 = !DILocation(line: 870, column: 3, scope: !2217)
!2228 = !DILocation(line: 872, column: 24, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !2217, file: !2, line: 872, column: 11)
!2230 = !DILocation(line: 872, column: 12, scope: !2229)
!2231 = !DILocation(line: 872, column: 11, scope: !2217)
!2232 = !DILocation(line: 873, column: 20, scope: !2229)
!2233 = !DILocation(line: 873, column: 28, scope: !2229)
!2234 = !DILocation(line: 873, column: 38, scope: !2229)
!2235 = !DILocation(line: 873, column: 46, scope: !2229)
!2236 = !DILocation(line: 873, column: 3, scope: !2229)
!2237 = !DILocation(line: 875, column: 24, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2229, file: !2, line: 875, column: 11)
!2239 = !DILocation(line: 875, column: 12, scope: !2238)
!2240 = !DILocation(line: 875, column: 11, scope: !2229)
!2241 = !DILocation(line: 876, column: 20, scope: !2238)
!2242 = !DILocation(line: 876, column: 28, scope: !2238)
!2243 = !DILocation(line: 876, column: 38, scope: !2238)
!2244 = !DILocation(line: 876, column: 46, scope: !2238)
!2245 = !DILocation(line: 876, column: 3, scope: !2238)
!2246 = !DILocation(line: 879, column: 2, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2105, file: !2, line: 879, column: 2)
!2248 = !DILocation(line: 879, column: 2, scope: !2105)
!2249 = !DILocation(line: 881, column: 2, scope: !2105)
!2250 = !DILocation(line: 882, column: 1, scope: !2105)
!2251 = distinct !DISubprogram(name: "create_new_connected_udp_socket", scope: !2, file: !2, line: 473, type: !2252, scopeLine: 475, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !99, retainedNodes: !1108)
!2252 = !DISubroutineType(types: !2253)
!2253 = !{!96, !237, !468}
!2254 = !DILocalVariable(name: "server", arg: 1, scope: !2251, file: !2, line: 474, type: !237)
!2255 = !DILocation(line: 474, column: 36, scope: !2251)
!2256 = !DILocalVariable(name: "s", arg: 2, scope: !2251, file: !2, line: 474, type: !468)
!2257 = !DILocation(line: 474, column: 62, scope: !2251)
!2258 = !DILocalVariable(name: "udp_fd", scope: !2251, file: !2, line: 477, type: !96)
!2259 = !DILocation(line: 477, column: 18, scope: !2251)
!2260 = !DILocation(line: 477, column: 34, scope: !2251)
!2261 = !DILocation(line: 477, column: 37, scope: !2251)
!2262 = !DILocation(line: 477, column: 51, scope: !2251)
!2263 = !DILocation(line: 477, column: 27, scope: !2251)
!2264 = !DILocation(line: 478, column: 6, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2251, file: !2, line: 478, column: 6)
!2266 = !DILocation(line: 478, column: 13, scope: !2265)
!2267 = !DILocation(line: 478, column: 6, scope: !2251)
!2268 = !DILocation(line: 479, column: 3, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2265, file: !2, line: 478, column: 18)
!2270 = !DILocation(line: 480, column: 3, scope: !2269)
!2271 = !DILocation(line: 482, column: 3, scope: !2269)
!2272 = !DILocation(line: 485, column: 26, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2251, file: !2, line: 485, column: 6)
!2274 = !DILocation(line: 485, column: 52, scope: !2273)
!2275 = !DILocation(line: 485, column: 55, scope: !2273)
!2276 = !DILocation(line: 485, column: 58, scope: !2273)
!2277 = !DILocation(line: 485, column: 51, scope: !2273)
!2278 = !DILocation(line: 485, column: 6, scope: !2273)
!2279 = !DILocation(line: 486, column: 4, scope: !2273)
!2280 = !DILocation(line: 485, column: 6, scope: !2251)
!2281 = !DILocation(line: 489, column: 14, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2273, file: !2, line: 486, column: 9)
!2283 = !DILocation(line: 489, column: 17, scope: !2282)
!2284 = !DILocation(line: 489, column: 20, scope: !2282)
!2285 = !DILocation(line: 489, column: 13, scope: !2282)
!2286 = !DILocation(line: 487, column: 3, scope: !2282)
!2287 = !DILocation(line: 490, column: 2, scope: !2282)
!2288 = !DILocalVariable(name: "ret", scope: !2251, file: !2, line: 492, type: !468)
!2289 = !DILocation(line: 492, column: 20, scope: !2251)
!2290 = !DILocation(line: 492, column: 40, scope: !2251)
!2291 = !DILocation(line: 493, column: 7, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2251, file: !2, line: 493, column: 6)
!2293 = !DILocation(line: 493, column: 6, scope: !2251)
!2294 = !DILocation(line: 494, column: 3, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2292, file: !2, line: 493, column: 12)
!2296 = !DILocation(line: 496, column: 9, scope: !2295)
!2297 = !DILocation(line: 496, column: 3, scope: !2295)
!2298 = !DILocation(line: 497, column: 3, scope: !2295)
!2299 = !DILocation(line: 500, column: 8, scope: !2251)
!2300 = !DILocation(line: 500, column: 2, scope: !2251)
!2301 = !DILocation(line: 502, column: 2, scope: !2251)
!2302 = !DILocation(line: 502, column: 7, scope: !2251)
!2303 = !DILocation(line: 502, column: 13, scope: !2251)
!2304 = !DILocation(line: 504, column: 12, scope: !2251)
!2305 = !DILocation(line: 504, column: 2, scope: !2251)
!2306 = !DILocation(line: 504, column: 7, scope: !2251)
!2307 = !DILocation(line: 504, column: 10, scope: !2251)
!2308 = !DILocation(line: 506, column: 16, scope: !2251)
!2309 = !DILocation(line: 506, column: 19, scope: !2251)
!2310 = !DILocation(line: 506, column: 2, scope: !2251)
!2311 = !DILocation(line: 506, column: 7, scope: !2251)
!2312 = !DILocation(line: 506, column: 14, scope: !2251)
!2313 = !DILocation(line: 507, column: 12, scope: !2251)
!2314 = !DILocation(line: 507, column: 15, scope: !2251)
!2315 = !DILocation(line: 507, column: 2, scope: !2251)
!2316 = !DILocation(line: 507, column: 7, scope: !2251)
!2317 = !DILocation(line: 507, column: 10, scope: !2251)
!2318 = !DILocation(line: 508, column: 2, scope: !2251)
!2319 = !DILocation(line: 508, column: 7, scope: !2251)
!2320 = !DILocation(line: 508, column: 11, scope: !2251)
!2321 = !DILocation(line: 509, column: 2, scope: !2251)
!2322 = !DILocation(line: 509, column: 7, scope: !2251)
!2323 = !DILocation(line: 509, column: 24, scope: !2251)
!2324 = !DILocation(line: 510, column: 13, scope: !2251)
!2325 = !DILocation(line: 510, column: 18, scope: !2251)
!2326 = !DILocation(line: 510, column: 33, scope: !2251)
!2327 = !DILocation(line: 510, column: 36, scope: !2251)
!2328 = !DILocation(line: 510, column: 2, scope: !2251)
!2329 = !DILocation(line: 512, column: 16, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2251, file: !2, line: 512, column: 6)
!2331 = !DILocation(line: 512, column: 25, scope: !2330)
!2332 = !DILocation(line: 512, column: 28, scope: !2330)
!2333 = !DILocation(line: 512, column: 6, scope: !2330)
!2334 = !DILocation(line: 512, column: 56, scope: !2330)
!2335 = !DILocation(line: 512, column: 6, scope: !2251)
!2336 = !DILocation(line: 513, column: 3, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2330, file: !2, line: 512, column: 61)
!2338 = !DILocation(line: 515, column: 3, scope: !2337)
!2339 = !DILocation(line: 515, column: 3, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !2341, file: !2, line: 515, column: 3)
!2341 = distinct !DILexicalBlock(scope: !2337, file: !2, line: 515, column: 3)
!2342 = !DILocation(line: 515, column: 3, scope: !2341)
!2343 = !DILocation(line: 515, column: 3, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !2340, file: !2, line: 515, column: 3)
!2345 = !DILocation(line: 516, column: 3, scope: !2337)
!2346 = !DILocation(line: 518, column: 2, scope: !2251)
!2347 = !DILocation(line: 518, column: 7, scope: !2251)
!2348 = !DILocation(line: 518, column: 13, scope: !2251)
!2349 = !DILocalVariable(name: "connect_err", scope: !2350, file: !2, line: 521, type: !96)
!2350 = distinct !DILexicalBlock(scope: !2251, file: !2, line: 520, column: 2)
!2351 = !DILocation(line: 521, column: 7, scope: !2350)
!2352 = !DILocation(line: 522, column: 20, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2350, file: !2, line: 522, column: 7)
!2354 = !DILocation(line: 522, column: 30, scope: !2353)
!2355 = !DILocation(line: 522, column: 38, scope: !2353)
!2356 = !DILocation(line: 522, column: 41, scope: !2353)
!2357 = !DILocation(line: 522, column: 46, scope: !2353)
!2358 = !DILocation(line: 522, column: 49, scope: !2353)
!2359 = !DILocation(line: 522, column: 7, scope: !2353)
!2360 = !DILocation(line: 522, column: 74, scope: !2353)
!2361 = !DILocation(line: 522, column: 7, scope: !2350)
!2362 = !DILocalVariable(name: "sl", scope: !2363, file: !2, line: 523, type: !1682)
!2363 = distinct !DILexicalBlock(scope: !2353, file: !2, line: 522, column: 79)
!2364 = !DILocation(line: 523, column: 9, scope: !2363)
!2365 = !DILocalVariable(name: "sr", scope: !2363, file: !2, line: 524, type: !1682)
!2366 = !DILocation(line: 524, column: 9, scope: !2363)
!2367 = !DILocation(line: 525, column: 21, scope: !2363)
!2368 = !DILocation(line: 525, column: 26, scope: !2363)
!2369 = !DILocation(line: 525, column: 48, scope: !2363)
!2370 = !DILocation(line: 525, column: 4, scope: !2363)
!2371 = !DILocation(line: 526, column: 21, scope: !2363)
!2372 = !DILocation(line: 526, column: 29, scope: !2363)
!2373 = !DILocation(line: 526, column: 32, scope: !2363)
!2374 = !DILocation(line: 526, column: 37, scope: !2363)
!2375 = !DILocation(line: 526, column: 40, scope: !2363)
!2376 = !DILocation(line: 526, column: 60, scope: !2363)
!2377 = !DILocation(line: 526, column: 4, scope: !2363)
!2378 = !DILocation(line: 528, column: 93, scope: !2363)
!2379 = !DILocation(line: 528, column: 96, scope: !2363)
!2380 = !DILocation(line: 527, column: 4, scope: !2363)
!2381 = !DILocation(line: 529, column: 4, scope: !2363)
!2382 = !DILocation(line: 529, column: 4, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2384, file: !2, line: 529, column: 4)
!2384 = distinct !DILexicalBlock(scope: !2363, file: !2, line: 529, column: 4)
!2385 = !DILocation(line: 529, column: 4, scope: !2384)
!2386 = !DILocation(line: 529, column: 4, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2383, file: !2, line: 529, column: 4)
!2388 = !DILocation(line: 530, column: 4, scope: !2363)
!2389 = !DILocation(line: 533, column: 2, scope: !2251)
!2390 = !DILocation(line: 533, column: 7, scope: !2251)
!2391 = !DILocation(line: 533, column: 17, scope: !2251)
!2392 = !DILocation(line: 534, column: 13, scope: !2251)
!2393 = !DILocation(line: 534, column: 18, scope: !2251)
!2394 = !DILocation(line: 534, column: 34, scope: !2251)
!2395 = !DILocation(line: 534, column: 42, scope: !2251)
!2396 = !DILocation(line: 534, column: 45, scope: !2251)
!2397 = !DILocation(line: 534, column: 50, scope: !2251)
!2398 = !DILocation(line: 534, column: 53, scope: !2251)
!2399 = !DILocation(line: 534, column: 2, scope: !2251)
!2400 = !DILocation(line: 536, column: 21, scope: !2251)
!2401 = !DILocation(line: 536, column: 2, scope: !2251)
!2402 = !DILocation(line: 538, column: 21, scope: !2251)
!2403 = !DILocation(line: 538, column: 24, scope: !2251)
!2404 = !DILocation(line: 538, column: 2, scope: !2251)
!2405 = !DILocation(line: 538, column: 7, scope: !2251)
!2406 = !DILocation(line: 538, column: 19, scope: !2251)
!2407 = !DILocation(line: 539, column: 21, scope: !2251)
!2408 = !DILocation(line: 539, column: 24, scope: !2251)
!2409 = !DILocation(line: 539, column: 2, scope: !2251)
!2410 = !DILocation(line: 539, column: 7, scope: !2251)
!2411 = !DILocation(line: 539, column: 19, scope: !2251)
!2412 = !DILocation(line: 541, column: 21, scope: !2251)
!2413 = !DILocation(line: 541, column: 24, scope: !2251)
!2414 = !DILocation(line: 541, column: 2, scope: !2251)
!2415 = !DILocation(line: 541, column: 7, scope: !2251)
!2416 = !DILocation(line: 541, column: 19, scope: !2251)
!2417 = !DILocation(line: 542, column: 21, scope: !2251)
!2418 = !DILocation(line: 542, column: 24, scope: !2251)
!2419 = !DILocation(line: 542, column: 2, scope: !2251)
!2420 = !DILocation(line: 542, column: 7, scope: !2251)
!2421 = !DILocation(line: 542, column: 19, scope: !2251)
!2422 = !DILocation(line: 545, column: 19, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2251, file: !2, line: 545, column: 6)
!2424 = !DILocation(line: 545, column: 7, scope: !2423)
!2425 = !DILocation(line: 546, column: 4, scope: !2423)
!2426 = !DILocation(line: 547, column: 30, scope: !2423)
!2427 = !DILocation(line: 547, column: 38, scope: !2423)
!2428 = !DILocation(line: 547, column: 41, scope: !2423)
!2429 = !DILocation(line: 547, column: 46, scope: !2423)
!2430 = !DILocation(line: 547, column: 49, scope: !2423)
!2431 = !DILocation(line: 547, column: 6, scope: !2423)
!2432 = !DILocation(line: 549, column: 8, scope: !2423)
!2433 = !DILocation(line: 549, column: 16, scope: !2423)
!2434 = !DILocation(line: 549, column: 19, scope: !2423)
!2435 = !DILocation(line: 549, column: 24, scope: !2423)
!2436 = !DILocation(line: 549, column: 27, scope: !2423)
!2437 = !DILocation(line: 548, column: 12, scope: !2423)
!2438 = !DILocation(line: 548, column: 6, scope: !2423)
!2439 = !DILocation(line: 546, column: 7, scope: !2423)
!2440 = !DILocation(line: 545, column: 6, scope: !2251)
!2441 = !DILocalVariable(name: "connecting_ssl", scope: !2442, file: !2, line: 551, type: !512)
!2442 = distinct !DILexicalBlock(scope: !2423, file: !2, line: 549, column: 34)
!2443 = !DILocation(line: 551, column: 8, scope: !2442)
!2444 = !DILocalVariable(name: "wbio", scope: !2442, file: !2, line: 553, type: !2445)
!2445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2446, size: 64)
!2446 = !DIDerivedType(tag: DW_TAG_typedef, name: "BIO", file: !369, line: 86, baseType: !2447)
!2447 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_st", file: !369, line: 86, flags: DIFlagFwdDecl)
!2448 = !DILocation(line: 553, column: 8, scope: !2442)
!2449 = !DILocalVariable(name: "timeout", scope: !2442, file: !2, line: 554, type: !389)
!2450 = !DILocation(line: 554, column: 18, scope: !2442)
!2451 = !DILocation(line: 557, column: 24, scope: !2442)
!2452 = !DILocation(line: 557, column: 29, scope: !2442)
!2453 = !DILocation(line: 557, column: 10, scope: !2442)
!2454 = !DILocation(line: 557, column: 8, scope: !2442)
!2455 = !DILocation(line: 558, column: 10, scope: !2442)
!2456 = !DILocation(line: 560, column: 12, scope: !2442)
!2457 = !DILocation(line: 560, column: 53, scope: !2442)
!2458 = !DILocation(line: 560, column: 61, scope: !2442)
!2459 = !DILocation(line: 560, column: 64, scope: !2442)
!2460 = !DILocation(line: 560, column: 69, scope: !2442)
!2461 = !DILocation(line: 560, column: 72, scope: !2442)
!2462 = !DILocation(line: 560, column: 3, scope: !2442)
!2463 = !DILocation(line: 563, column: 11, scope: !2442)
!2464 = !DILocation(line: 563, column: 18, scope: !2442)
!2465 = !DILocation(line: 564, column: 11, scope: !2442)
!2466 = !DILocation(line: 564, column: 19, scope: !2442)
!2467 = !DILocation(line: 565, column: 12, scope: !2442)
!2468 = !DILocation(line: 565, column: 3, scope: !2442)
!2469 = !DILocation(line: 568, column: 47, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2442, file: !2, line: 568, column: 6)
!2471 = !DILocation(line: 568, column: 55, scope: !2470)
!2472 = !DILocation(line: 568, column: 58, scope: !2470)
!2473 = !DILocation(line: 568, column: 63, scope: !2470)
!2474 = !DILocation(line: 568, column: 66, scope: !2470)
!2475 = !DILocation(line: 568, column: 23, scope: !2470)
!2476 = !DILocation(line: 569, column: 41, scope: !2470)
!2477 = !DILocation(line: 569, column: 49, scope: !2470)
!2478 = !DILocation(line: 569, column: 52, scope: !2470)
!2479 = !DILocation(line: 569, column: 57, scope: !2470)
!2480 = !DILocation(line: 569, column: 60, scope: !2470)
!2481 = !DILocation(line: 569, column: 13, scope: !2470)
!2482 = !DILocation(line: 569, column: 8, scope: !2470)
!2483 = !DILocation(line: 568, column: 6, scope: !2470)
!2484 = !DILocation(line: 569, column: 66, scope: !2470)
!2485 = !DILocation(line: 568, column: 6, scope: !2442)
!2486 = !DILocation(line: 570, column: 29, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2470, file: !2, line: 569, column: 72)
!2488 = !DILocation(line: 570, column: 37, scope: !2487)
!2489 = !DILocation(line: 570, column: 40, scope: !2487)
!2490 = !DILocation(line: 570, column: 21, scope: !2487)
!2491 = !DILocation(line: 570, column: 19, scope: !2487)
!2492 = !DILocation(line: 571, column: 3, scope: !2487)
!2493 = !DILocation(line: 572, column: 29, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2470, file: !2, line: 571, column: 10)
!2495 = !DILocation(line: 572, column: 37, scope: !2494)
!2496 = !DILocation(line: 572, column: 40, scope: !2494)
!2497 = !DILocation(line: 572, column: 21, scope: !2494)
!2498 = !DILocation(line: 572, column: 19, scope: !2494)
!2499 = !DILocation(line: 580, column: 24, scope: !2442)
!2500 = !DILocation(line: 580, column: 3, scope: !2442)
!2501 = !DILocation(line: 582, column: 15, scope: !2442)
!2502 = !DILocation(line: 582, column: 37, scope: !2442)
!2503 = !DILocation(line: 582, column: 3, scope: !2442)
!2504 = !DILocation(line: 584, column: 19, scope: !2442)
!2505 = !DILocation(line: 584, column: 3, scope: !2442)
!2506 = !DILocation(line: 585, column: 3, scope: !2442)
!2507 = !DILocalVariable(name: "rc", scope: !2442, file: !2, line: 586, type: !96)
!2508 = !DILocation(line: 586, column: 7, scope: !2442)
!2509 = !DILocation(line: 586, column: 21, scope: !2442)
!2510 = !DILocation(line: 586, column: 26, scope: !2442)
!2511 = !DILocation(line: 586, column: 30, scope: !2442)
!2512 = !DILocation(line: 586, column: 46, scope: !2442)
!2513 = !DILocation(line: 586, column: 54, scope: !2442)
!2514 = !DILocation(line: 586, column: 57, scope: !2442)
!2515 = !DILocation(line: 586, column: 62, scope: !2442)
!2516 = !DILocation(line: 586, column: 65, scope: !2442)
!2517 = !DILocation(line: 587, column: 5, scope: !2442)
!2518 = !DILocation(line: 587, column: 13, scope: !2442)
!2519 = !DILocation(line: 586, column: 12, scope: !2442)
!2520 = !DILocation(line: 589, column: 7, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2442, file: !2, line: 589, column: 7)
!2522 = !DILocation(line: 589, column: 10, scope: !2521)
!2523 = !DILocation(line: 589, column: 7, scope: !2442)
!2524 = !DILocation(line: 590, column: 27, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2526, file: !2, line: 590, column: 8)
!2526 = distinct !DILexicalBlock(scope: !2521, file: !2, line: 589, column: 15)
!2527 = !DILocation(line: 590, column: 10, scope: !2525)
!2528 = !DILocation(line: 590, column: 43, scope: !2525)
!2529 = !DILocation(line: 590, column: 8, scope: !2526)
!2530 = !DILocation(line: 591, column: 22, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2525, file: !2, line: 590, column: 65)
!2532 = !DILocation(line: 591, column: 5, scope: !2531)
!2533 = !DILocation(line: 592, column: 18, scope: !2531)
!2534 = !DILocation(line: 592, column: 5, scope: !2531)
!2535 = !DILocation(line: 593, column: 4, scope: !2531)
!2536 = !DILocation(line: 594, column: 13, scope: !2526)
!2537 = !DILocation(line: 594, column: 4, scope: !2526)
!2538 = !DILocation(line: 595, column: 4, scope: !2526)
!2539 = !DILocation(line: 595, column: 4, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2541, file: !2, line: 595, column: 4)
!2541 = distinct !DILexicalBlock(scope: !2526, file: !2, line: 595, column: 4)
!2542 = !DILocation(line: 595, column: 4, scope: !2541)
!2543 = !DILocation(line: 595, column: 4, scope: !2544)
!2544 = distinct !DILexicalBlock(scope: !2540, file: !2, line: 595, column: 4)
!2545 = !DILocation(line: 596, column: 4, scope: !2526)
!2546 = !DILocation(line: 599, column: 20, scope: !2442)
!2547 = !DILocation(line: 599, column: 28, scope: !2442)
!2548 = !DILocation(line: 599, column: 39, scope: !2442)
!2549 = !DILocation(line: 599, column: 47, scope: !2442)
!2550 = !DILocation(line: 599, column: 50, scope: !2442)
!2551 = !DILocation(line: 599, column: 55, scope: !2442)
!2552 = !DILocation(line: 599, column: 58, scope: !2442)
!2553 = !DILocation(line: 599, column: 3, scope: !2442)
!2554 = !DILocation(line: 602, column: 14, scope: !2442)
!2555 = !DILocation(line: 602, column: 3, scope: !2442)
!2556 = !DILocation(line: 602, column: 8, scope: !2442)
!2557 = !DILocation(line: 602, column: 12, scope: !2442)
!2558 = !DILocation(line: 604, column: 29, scope: !2442)
!2559 = !DILocation(line: 604, column: 37, scope: !2442)
!2560 = !DILocation(line: 604, column: 40, scope: !2442)
!2561 = !DILocation(line: 604, column: 48, scope: !2442)
!2562 = !DILocation(line: 604, column: 51, scope: !2442)
!2563 = !DILocation(line: 604, column: 56, scope: !2442)
!2564 = !DILocation(line: 604, column: 59, scope: !2442)
!2565 = !DILocation(line: 604, column: 3, scope: !2442)
!2566 = !DILocation(line: 605, column: 3, scope: !2442)
!2567 = !DILocation(line: 605, column: 11, scope: !2442)
!2568 = !DILocation(line: 605, column: 14, scope: !2442)
!2569 = !DILocation(line: 605, column: 19, scope: !2442)
!2570 = !DILocation(line: 605, column: 22, scope: !2442)
!2571 = !DILocation(line: 605, column: 26, scope: !2442)
!2572 = !DILocation(line: 607, column: 3, scope: !2442)
!2573 = !DILocation(line: 607, column: 8, scope: !2442)
!2574 = !DILocation(line: 607, column: 11, scope: !2442)
!2575 = !DILocation(line: 608, column: 2, scope: !2442)
!2576 = !DILocation(line: 611, column: 22, scope: !2251)
!2577 = !DILocation(line: 611, column: 2, scope: !2251)
!2578 = !DILocation(line: 611, column: 10, scope: !2251)
!2579 = !DILocation(line: 611, column: 13, scope: !2251)
!2580 = !DILocation(line: 611, column: 18, scope: !2251)
!2581 = !DILocation(line: 611, column: 20, scope: !2251)
!2582 = !DILocation(line: 612, column: 9, scope: !2251)
!2583 = !DILocation(line: 612, column: 17, scope: !2251)
!2584 = !DILocation(line: 612, column: 28, scope: !2251)
!2585 = !DILocation(line: 612, column: 36, scope: !2251)
!2586 = !DILocation(line: 612, column: 41, scope: !2251)
!2587 = !DILocation(line: 612, column: 49, scope: !2251)
!2588 = !DILocation(line: 612, column: 2, scope: !2251)
!2589 = !DILocation(line: 613, column: 1, scope: !2251)
!2590 = distinct !DISubprogram(name: "handle_udp_packet", scope: !2, file: !2, line: 320, type: !2591, scopeLine: 323, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !99, retainedNodes: !1108)
!2591 = !DISubroutineType(types: !2592)
!2592 = !{!96, !237, !995, !310, !407}
!2593 = !DILocalVariable(name: "server", arg: 1, scope: !2590, file: !2, line: 320, type: !237)
!2594 = !DILocation(line: 320, column: 63, scope: !2590)
!2595 = !DILocalVariable(name: "sm", arg: 2, scope: !2590, file: !2, line: 321, type: !995)
!2596 = !DILocation(line: 321, column: 30, scope: !2590)
!2597 = !DILocalVariable(name: "ioa_eng", arg: 3, scope: !2590, file: !2, line: 322, type: !310)
!2598 = !DILocation(line: 322, column: 23, scope: !2590)
!2599 = !DILocalVariable(name: "ts", arg: 4, scope: !2590, file: !2, line: 322, type: !407)
!2600 = !DILocation(line: 322, column: 49, scope: !2590)
!2601 = !DILocalVariable(name: "verbose", scope: !2590, file: !2, line: 324, type: !96)
!2602 = !DILocation(line: 324, column: 6, scope: !2590)
!2603 = !DILocation(line: 324, column: 16, scope: !2590)
!2604 = !DILocation(line: 324, column: 25, scope: !2590)
!2605 = !DILocalVariable(name: "s", scope: !2590, file: !2, line: 325, type: !468)
!2606 = !DILocation(line: 325, column: 20, scope: !2590)
!2607 = !DILocation(line: 325, column: 24, scope: !2590)
!2608 = !DILocation(line: 325, column: 28, scope: !2590)
!2609 = !DILocation(line: 325, column: 33, scope: !2590)
!2610 = !DILocalVariable(name: "mvt", scope: !2590, file: !2, line: 327, type: !494)
!2611 = !DILocation(line: 327, column: 25, scope: !2590)
!2612 = !DILocation(line: 328, column: 7, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2590, file: !2, line: 328, column: 5)
!2614 = !DILocation(line: 328, column: 15, scope: !2613)
!2615 = !DILocation(line: 328, column: 6, scope: !2613)
!2616 = !DILocation(line: 328, column: 5, scope: !2590)
!2617 = !DILocation(line: 329, column: 39, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2613, file: !2, line: 328, column: 29)
!2619 = !DILocation(line: 329, column: 3, scope: !2618)
!2620 = !DILocation(line: 329, column: 11, scope: !2618)
!2621 = !DILocation(line: 329, column: 23, scope: !2618)
!2622 = !DILocation(line: 330, column: 20, scope: !2618)
!2623 = !DILocation(line: 330, column: 28, scope: !2618)
!2624 = !DILocation(line: 330, column: 3, scope: !2618)
!2625 = !DILocation(line: 331, column: 2, scope: !2618)
!2626 = !DILocalVariable(name: "amap", scope: !2590, file: !2, line: 332, type: !478)
!2627 = !DILocation(line: 332, column: 15, scope: !2590)
!2628 = !DILocation(line: 332, column: 22, scope: !2590)
!2629 = !DILocation(line: 332, column: 30, scope: !2590)
!2630 = !DILocalVariable(name: "chs", scope: !2590, file: !2, line: 334, type: !468)
!2631 = !DILocation(line: 334, column: 20, scope: !2590)
!2632 = !DILocation(line: 335, column: 23, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2590, file: !2, line: 335, column: 6)
!2634 = !DILocation(line: 335, column: 31, scope: !2633)
!2635 = !DILocation(line: 335, column: 35, scope: !2633)
!2636 = !DILocation(line: 335, column: 40, scope: !2633)
!2637 = !DILocation(line: 335, column: 43, scope: !2633)
!2638 = !DILocation(line: 335, column: 7, scope: !2633)
!2639 = !DILocation(line: 335, column: 60, scope: !2633)
!2640 = !DILocation(line: 335, column: 65, scope: !2633)
!2641 = !DILocation(line: 335, column: 68, scope: !2633)
!2642 = !DILocation(line: 335, column: 6, scope: !2590)
!2643 = !DILocation(line: 336, column: 29, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2633, file: !2, line: 335, column: 73)
!2645 = !DILocation(line: 336, column: 9, scope: !2644)
!2646 = !DILocation(line: 336, column: 7, scope: !2644)
!2647 = !DILocation(line: 337, column: 2, scope: !2644)
!2648 = !DILocation(line: 339, column: 6, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2590, file: !2, line: 339, column: 6)
!2650 = !DILocation(line: 339, column: 10, scope: !2649)
!2651 = !DILocation(line: 339, column: 36, scope: !2649)
!2652 = !DILocation(line: 339, column: 14, scope: !2649)
!2653 = !DILocation(line: 340, column: 4, scope: !2649)
!2654 = !DILocation(line: 340, column: 8, scope: !2649)
!2655 = !DILocation(line: 340, column: 13, scope: !2649)
!2656 = !DILocation(line: 340, column: 34, scope: !2649)
!2657 = !DILocation(line: 340, column: 31, scope: !2649)
!2658 = !DILocation(line: 341, column: 4, scope: !2649)
!2659 = !DILocation(line: 341, column: 8, scope: !2649)
!2660 = !DILocation(line: 341, column: 13, scope: !2649)
!2661 = !DILocation(line: 341, column: 19, scope: !2649)
!2662 = !DILocation(line: 339, column: 6, scope: !2590)
!2663 = !DILocation(line: 342, column: 7, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2649, file: !2, line: 341, column: 37)
!2665 = !DILocation(line: 342, column: 5, scope: !2664)
!2666 = !DILocation(line: 343, column: 16, scope: !2664)
!2667 = !DILocation(line: 343, column: 3, scope: !2664)
!2668 = !DILocation(line: 343, column: 7, scope: !2664)
!2669 = !DILocation(line: 343, column: 12, scope: !2664)
!2670 = !DILocation(line: 343, column: 14, scope: !2664)
!2671 = !DILocation(line: 344, column: 6, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2664, file: !2, line: 344, column: 6)
!2673 = !DILocation(line: 344, column: 9, scope: !2672)
!2674 = !DILocation(line: 344, column: 6, scope: !2664)
!2675 = !DILocalVariable(name: "sslret", scope: !2676, file: !2, line: 345, type: !96)
!2676 = distinct !DILexicalBlock(scope: !2672, file: !2, line: 344, column: 14)
!2677 = !DILocation(line: 345, column: 8, scope: !2676)
!2678 = !DILocation(line: 345, column: 26, scope: !2676)
!2679 = !DILocation(line: 345, column: 29, scope: !2676)
!2680 = !DILocation(line: 345, column: 33, scope: !2676)
!2681 = !DILocation(line: 345, column: 36, scope: !2676)
!2682 = !DILocation(line: 345, column: 41, scope: !2676)
!2683 = !DILocation(line: 345, column: 45, scope: !2676)
!2684 = !DILocation(line: 345, column: 50, scope: !2676)
!2685 = !DILocation(line: 345, column: 53, scope: !2676)
!2686 = !DILocation(line: 345, column: 58, scope: !2676)
!2687 = !DILocation(line: 345, column: 17, scope: !2676)
!2688 = !DILocation(line: 346, column: 7, scope: !2689)
!2689 = distinct !DILexicalBlock(scope: !2676, file: !2, line: 346, column: 7)
!2690 = !DILocation(line: 346, column: 14, scope: !2689)
!2691 = !DILocation(line: 346, column: 7, scope: !2676)
!2692 = !DILocation(line: 347, column: 31, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2689, file: !2, line: 346, column: 19)
!2694 = !DILocation(line: 347, column: 40, scope: !2693)
!2695 = !DILocation(line: 347, column: 44, scope: !2693)
!2696 = !DILocation(line: 347, column: 49, scope: !2693)
!2697 = !DILocation(line: 347, column: 52, scope: !2693)
!2698 = !DILocation(line: 347, column: 5, scope: !2693)
!2699 = !DILocation(line: 348, column: 5, scope: !2693)
!2700 = !DILocation(line: 348, column: 9, scope: !2693)
!2701 = !DILocation(line: 348, column: 14, scope: !2693)
!2702 = !DILocation(line: 348, column: 17, scope: !2693)
!2703 = !DILocation(line: 348, column: 21, scope: !2693)
!2704 = !DILocalVariable(name: "ss", scope: !2693, file: !2, line: 349, type: !460)
!2705 = !DILocation(line: 349, column: 26, scope: !2693)
!2706 = !DILocation(line: 349, column: 55, scope: !2693)
!2707 = !DILocation(line: 349, column: 58, scope: !2693)
!2708 = !DILocation(line: 350, column: 9, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2693, file: !2, line: 350, column: 9)
!2710 = !DILocation(line: 350, column: 9, scope: !2693)
!2711 = !DILocalVariable(name: "server", scope: !2712, file: !2, line: 351, type: !407)
!2712 = distinct !DILexicalBlock(scope: !2709, file: !2, line: 350, column: 13)
!2713 = !DILocation(line: 351, column: 23, scope: !2712)
!2714 = !DILocation(line: 351, column: 52, scope: !2712)
!2715 = !DILocation(line: 351, column: 56, scope: !2712)
!2716 = !DILocation(line: 352, column: 10, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2712, file: !2, line: 352, column: 10)
!2718 = !DILocation(line: 352, column: 10, scope: !2712)
!2719 = !DILocation(line: 353, column: 34, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !2717, file: !2, line: 352, column: 18)
!2721 = !DILocation(line: 353, column: 42, scope: !2720)
!2722 = !DILocation(line: 353, column: 7, scope: !2720)
!2723 = !DILocation(line: 354, column: 6, scope: !2720)
!2724 = !DILocation(line: 355, column: 5, scope: !2712)
!2725 = !DILocation(line: 356, column: 23, scope: !2726)
!2726 = distinct !DILexicalBlock(scope: !2709, file: !2, line: 355, column: 12)
!2727 = !DILocation(line: 356, column: 6, scope: !2726)
!2728 = !DILocation(line: 358, column: 21, scope: !2693)
!2729 = !DILocation(line: 358, column: 29, scope: !2693)
!2730 = !DILocation(line: 358, column: 33, scope: !2693)
!2731 = !DILocation(line: 358, column: 38, scope: !2693)
!2732 = !DILocation(line: 358, column: 41, scope: !2693)
!2733 = !DILocation(line: 358, column: 5, scope: !2693)
!2734 = !DILocation(line: 359, column: 5, scope: !2693)
!2735 = !DILocation(line: 359, column: 9, scope: !2693)
!2736 = !DILocation(line: 359, column: 14, scope: !2693)
!2737 = !DILocation(line: 359, column: 16, scope: !2693)
!2738 = !DILocation(line: 360, column: 7, scope: !2693)
!2739 = !DILocation(line: 361, column: 9, scope: !2693)
!2740 = !DILocation(line: 362, column: 4, scope: !2693)
!2741 = !DILocation(line: 362, column: 42, scope: !2742)
!2742 = distinct !DILexicalBlock(scope: !2689, file: !2, line: 362, column: 14)
!2743 = !DILocation(line: 362, column: 46, scope: !2742)
!2744 = !DILocation(line: 362, column: 51, scope: !2742)
!2745 = !DILocation(line: 362, column: 54, scope: !2742)
!2746 = !DILocation(line: 362, column: 14, scope: !2742)
!2747 = !DILocation(line: 362, column: 58, scope: !2742)
!2748 = !DILocation(line: 362, column: 14, scope: !2689)
!2749 = !DILocation(line: 364, column: 4, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2742, file: !2, line: 362, column: 62)
!2751 = !DILocation(line: 365, column: 31, scope: !2752)
!2752 = distinct !DILexicalBlock(scope: !2742, file: !2, line: 364, column: 11)
!2753 = !DILocation(line: 365, column: 40, scope: !2752)
!2754 = !DILocation(line: 365, column: 44, scope: !2752)
!2755 = !DILocation(line: 365, column: 49, scope: !2752)
!2756 = !DILocation(line: 365, column: 52, scope: !2752)
!2757 = !DILocation(line: 365, column: 5, scope: !2752)
!2758 = !DILocation(line: 366, column: 5, scope: !2752)
!2759 = !DILocation(line: 366, column: 9, scope: !2752)
!2760 = !DILocation(line: 366, column: 14, scope: !2752)
!2761 = !DILocation(line: 366, column: 17, scope: !2752)
!2762 = !DILocation(line: 366, column: 21, scope: !2752)
!2763 = !DILocation(line: 368, column: 3, scope: !2676)
!2764 = !DILocation(line: 370, column: 6, scope: !2765)
!2765 = distinct !DILexicalBlock(scope: !2664, file: !2, line: 370, column: 6)
!2766 = !DILocation(line: 370, column: 8, scope: !2765)
!2767 = !DILocation(line: 370, column: 38, scope: !2765)
!2768 = !DILocation(line: 370, column: 40, scope: !2765)
!2769 = !DILocation(line: 370, column: 44, scope: !2765)
!2770 = !DILocation(line: 370, column: 49, scope: !2765)
!2771 = !DILocation(line: 370, column: 52, scope: !2765)
!2772 = !DILocation(line: 370, column: 11, scope: !2765)
!2773 = !DILocation(line: 370, column: 6, scope: !2664)
!2774 = !DILocation(line: 371, column: 11, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2765, file: !2, line: 370, column: 60)
!2776 = !DILocation(line: 371, column: 4, scope: !2775)
!2777 = !DILocation(line: 371, column: 7, scope: !2775)
!2778 = !DILocation(line: 371, column: 9, scope: !2775)
!2779 = !DILocation(line: 372, column: 8, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2775, file: !2, line: 372, column: 8)
!2781 = !DILocation(line: 372, column: 10, scope: !2780)
!2782 = !DILocation(line: 372, column: 13, scope: !2780)
!2783 = !DILocation(line: 372, column: 16, scope: !2780)
!2784 = !DILocation(line: 372, column: 24, scope: !2780)
!2785 = !DILocation(line: 372, column: 27, scope: !2780)
!2786 = !DILocation(line: 372, column: 31, scope: !2780)
!2787 = !DILocation(line: 372, column: 36, scope: !2780)
!2788 = !DILocation(line: 372, column: 39, scope: !2780)
!2789 = !DILocation(line: 372, column: 8, scope: !2775)
!2790 = !DILocation(line: 373, column: 5, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2780, file: !2, line: 372, column: 44)
!2792 = !DILocation(line: 373, column: 8, scope: !2791)
!2793 = !DILocation(line: 373, column: 16, scope: !2791)
!2794 = !DILocation(line: 373, column: 34, scope: !2791)
!2795 = !DILocation(line: 373, column: 38, scope: !2791)
!2796 = !DILocation(line: 373, column: 43, scope: !2791)
!2797 = !DILocation(line: 373, column: 48, scope: !2791)
!2798 = !DILocation(line: 373, column: 51, scope: !2791)
!2799 = !DILocation(line: 374, column: 31, scope: !2791)
!2800 = !DILocation(line: 374, column: 40, scope: !2791)
!2801 = !DILocation(line: 374, column: 44, scope: !2791)
!2802 = !DILocation(line: 374, column: 49, scope: !2791)
!2803 = !DILocation(line: 374, column: 52, scope: !2791)
!2804 = !DILocation(line: 374, column: 5, scope: !2791)
!2805 = !DILocation(line: 375, column: 5, scope: !2791)
!2806 = !DILocation(line: 375, column: 9, scope: !2791)
!2807 = !DILocation(line: 375, column: 14, scope: !2791)
!2808 = !DILocation(line: 375, column: 17, scope: !2791)
!2809 = !DILocation(line: 375, column: 21, scope: !2791)
!2810 = !DILocation(line: 377, column: 31, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2791, file: !2, line: 377, column: 9)
!2812 = !DILocation(line: 377, column: 9, scope: !2811)
!2813 = !DILocation(line: 377, column: 9, scope: !2791)
!2814 = !DILocalVariable(name: "ss", scope: !2815, file: !2, line: 378, type: !460)
!2815 = distinct !DILexicalBlock(scope: !2811, file: !2, line: 377, column: 35)
!2816 = !DILocation(line: 378, column: 27, scope: !2815)
!2817 = !DILocation(line: 378, column: 56, scope: !2815)
!2818 = !DILocation(line: 378, column: 59, scope: !2815)
!2819 = !DILocation(line: 379, column: 10, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2815, file: !2, line: 379, column: 10)
!2821 = !DILocation(line: 379, column: 10, scope: !2815)
!2822 = !DILocalVariable(name: "server", scope: !2823, file: !2, line: 380, type: !407)
!2823 = distinct !DILexicalBlock(scope: !2820, file: !2, line: 379, column: 14)
!2824 = !DILocation(line: 380, column: 24, scope: !2823)
!2825 = !DILocation(line: 380, column: 53, scope: !2823)
!2826 = !DILocation(line: 380, column: 57, scope: !2823)
!2827 = !DILocation(line: 381, column: 11, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2823, file: !2, line: 381, column: 11)
!2829 = !DILocation(line: 381, column: 11, scope: !2823)
!2830 = !DILocation(line: 382, column: 35, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2828, file: !2, line: 381, column: 19)
!2832 = !DILocation(line: 382, column: 43, scope: !2831)
!2833 = !DILocation(line: 382, column: 8, scope: !2831)
!2834 = !DILocation(line: 383, column: 7, scope: !2831)
!2835 = !DILocation(line: 384, column: 6, scope: !2823)
!2836 = !DILocation(line: 385, column: 5, scope: !2815)
!2837 = !DILocation(line: 386, column: 4, scope: !2791)
!2838 = !DILocation(line: 387, column: 3, scope: !2775)
!2839 = !DILocation(line: 388, column: 2, scope: !2664)
!2840 = !DILocation(line: 389, column: 7, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2842, file: !2, line: 389, column: 7)
!2842 = distinct !DILexicalBlock(scope: !2649, file: !2, line: 388, column: 9)
!2843 = !DILocation(line: 389, column: 11, scope: !2841)
!2844 = !DILocation(line: 389, column: 36, scope: !2841)
!2845 = !DILocation(line: 389, column: 14, scope: !2841)
!2846 = !DILocation(line: 389, column: 7, scope: !2842)
!2847 = !DILocation(line: 390, column: 4, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !2841, file: !2, line: 389, column: 42)
!2849 = !DILocalVariable(name: "saddr", scope: !2850, file: !2, line: 393, type: !2851)
!2850 = distinct !DILexicalBlock(scope: !2848, file: !2, line: 392, column: 4)
!2851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 1032, elements: !1683)
!2852 = !DILocation(line: 393, column: 13, scope: !2850)
!2853 = !DILocalVariable(name: "rsaddr", scope: !2850, file: !2, line: 394, type: !2851)
!2854 = !DILocation(line: 394, column: 13, scope: !2850)
!2855 = !DILocalVariable(name: "thrid", scope: !2850, file: !2, line: 395, type: !394)
!2856 = !DILocation(line: 395, column: 10, scope: !2850)
!2857 = !DILocation(line: 395, column: 25, scope: !2850)
!2858 = !DILocation(line: 396, column: 51, scope: !2850)
!2859 = !DILocation(line: 396, column: 20, scope: !2850)
!2860 = !DILocation(line: 396, column: 56, scope: !2850)
!2861 = !DILocation(line: 396, column: 5, scope: !2850)
!2862 = !DILocation(line: 397, column: 52, scope: !2850)
!2863 = !DILocation(line: 397, column: 20, scope: !2850)
!2864 = !DILocation(line: 397, column: 57, scope: !2850)
!2865 = !DILocation(line: 397, column: 5, scope: !2850)
!2866 = !DILocation(line: 400, column: 20, scope: !2850)
!2867 = !DILocation(line: 400, column: 34, scope: !2850)
!2868 = !DILocation(line: 400, column: 27, scope: !2850)
!2869 = !DILocation(line: 401, column: 14, scope: !2850)
!2870 = !DILocation(line: 401, column: 19, scope: !2850)
!2871 = !DILocation(line: 401, column: 6, scope: !2850)
!2872 = !DILocation(line: 401, column: 47, scope: !2850)
!2873 = !DILocation(line: 402, column: 14, scope: !2850)
!2874 = !DILocation(line: 402, column: 29, scope: !2850)
!2875 = !DILocation(line: 402, column: 22, scope: !2850)
!2876 = !DILocation(line: 402, column: 39, scope: !2850)
!2877 = !DILocation(line: 402, column: 44, scope: !2850)
!2878 = !DILocation(line: 403, column: 13, scope: !2850)
!2879 = !DILocation(line: 403, column: 18, scope: !2850)
!2880 = !DILocation(line: 398, column: 5, scope: !2850)
!2881 = !DILocation(line: 405, column: 3, scope: !2848)
!2882 = !DILocation(line: 407, column: 7, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !2842, file: !2, line: 407, column: 7)
!2884 = !DILocation(line: 407, column: 11, scope: !2883)
!2885 = !DILocation(line: 407, column: 15, scope: !2883)
!2886 = !DILocation(line: 407, column: 20, scope: !2883)
!2887 = !DILocation(line: 407, column: 26, scope: !2883)
!2888 = !DILocation(line: 407, column: 7, scope: !2842)
!2889 = !DILocation(line: 408, column: 4, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2883, file: !2, line: 407, column: 44)
!2891 = !DILocation(line: 410, column: 3, scope: !2890)
!2892 = !DILocation(line: 412, column: 7, scope: !2893)
!2893 = distinct !DILexicalBlock(scope: !2842, file: !2, line: 412, column: 7)
!2894 = !DILocation(line: 412, column: 11, scope: !2893)
!2895 = !DILocation(line: 412, column: 15, scope: !2893)
!2896 = !DILocation(line: 412, column: 20, scope: !2893)
!2897 = !DILocation(line: 412, column: 41, scope: !2893)
!2898 = !DILocation(line: 412, column: 38, scope: !2893)
!2899 = !DILocation(line: 412, column: 7, scope: !2842)
!2900 = !DILocation(line: 413, column: 4, scope: !2901)
!2901 = distinct !DILexicalBlock(scope: !2893, file: !2, line: 412, column: 48)
!2902 = !DILocalVariable(name: "saddr", scope: !2903, file: !2, line: 416, type: !2851)
!2903 = distinct !DILexicalBlock(scope: !2901, file: !2, line: 415, column: 4)
!2904 = !DILocation(line: 416, column: 13, scope: !2903)
!2905 = !DILocalVariable(name: "rsaddr", scope: !2903, file: !2, line: 417, type: !2851)
!2906 = !DILocation(line: 417, column: 13, scope: !2903)
!2907 = !DILocalVariable(name: "thrid", scope: !2903, file: !2, line: 418, type: !394)
!2908 = !DILocation(line: 418, column: 10, scope: !2903)
!2909 = !DILocation(line: 418, column: 25, scope: !2903)
!2910 = !DILocation(line: 419, column: 51, scope: !2903)
!2911 = !DILocation(line: 419, column: 20, scope: !2903)
!2912 = !DILocation(line: 419, column: 56, scope: !2903)
!2913 = !DILocation(line: 419, column: 5, scope: !2903)
!2914 = !DILocation(line: 420, column: 52, scope: !2903)
!2915 = !DILocation(line: 420, column: 20, scope: !2903)
!2916 = !DILocation(line: 420, column: 57, scope: !2903)
!2917 = !DILocation(line: 420, column: 5, scope: !2903)
!2918 = !DILocation(line: 423, column: 20, scope: !2903)
!2919 = !DILocation(line: 423, column: 34, scope: !2903)
!2920 = !DILocation(line: 423, column: 27, scope: !2903)
!2921 = !DILocation(line: 424, column: 14, scope: !2903)
!2922 = !DILocation(line: 424, column: 19, scope: !2903)
!2923 = !DILocation(line: 424, column: 6, scope: !2903)
!2924 = !DILocation(line: 424, column: 47, scope: !2903)
!2925 = !DILocation(line: 425, column: 14, scope: !2903)
!2926 = !DILocation(line: 425, column: 29, scope: !2903)
!2927 = !DILocation(line: 425, column: 22, scope: !2903)
!2928 = !DILocation(line: 425, column: 41, scope: !2903)
!2929 = !DILocation(line: 425, column: 46, scope: !2903)
!2930 = !DILocation(line: 426, column: 13, scope: !2903)
!2931 = !DILocation(line: 426, column: 18, scope: !2903)
!2932 = !DILocation(line: 426, column: 38, scope: !2903)
!2933 = !DILocation(line: 426, column: 43, scope: !2903)
!2934 = !DILocation(line: 427, column: 13, scope: !2903)
!2935 = !DILocation(line: 427, column: 18, scope: !2903)
!2936 = !DILocation(line: 421, column: 5, scope: !2903)
!2937 = !DILocation(line: 429, column: 3, scope: !2901)
!2938 = !DILocation(line: 431, column: 7, scope: !2842)
!2939 = !DILocation(line: 434, column: 20, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2842, file: !2, line: 434, column: 7)
!2941 = !DILocation(line: 434, column: 8, scope: !2940)
!2942 = !DILocation(line: 434, column: 28, scope: !2940)
!2943 = !DILocation(line: 435, column: 54, scope: !2940)
!2944 = !DILocation(line: 435, column: 58, scope: !2940)
!2945 = !DILocation(line: 435, column: 63, scope: !2940)
!2946 = !DILocation(line: 435, column: 66, scope: !2940)
!2947 = !DILocation(line: 435, column: 30, scope: !2940)
!2948 = !DILocation(line: 436, column: 37, scope: !2940)
!2949 = !DILocation(line: 436, column: 41, scope: !2940)
!2950 = !DILocation(line: 436, column: 46, scope: !2940)
!2951 = !DILocation(line: 436, column: 49, scope: !2940)
!2952 = !DILocation(line: 436, column: 9, scope: !2940)
!2953 = !DILocation(line: 436, column: 4, scope: !2940)
!2954 = !DILocation(line: 435, column: 4, scope: !2940)
!2955 = !DILocation(line: 434, column: 7, scope: !2842)
!2956 = !DILocation(line: 437, column: 36, scope: !2957)
!2957 = distinct !DILexicalBlock(scope: !2940, file: !2, line: 436, column: 56)
!2958 = !DILocation(line: 437, column: 43, scope: !2957)
!2959 = !DILocation(line: 437, column: 46, scope: !2957)
!2960 = !DILocation(line: 437, column: 50, scope: !2957)
!2961 = !DILocation(line: 437, column: 55, scope: !2957)
!2962 = !DILocation(line: 437, column: 58, scope: !2957)
!2963 = !DILocation(line: 437, column: 10, scope: !2957)
!2964 = !DILocation(line: 437, column: 8, scope: !2957)
!2965 = !DILocation(line: 438, column: 30, scope: !2957)
!2966 = !DILocation(line: 438, column: 38, scope: !2957)
!2967 = !DILocation(line: 438, column: 41, scope: !2957)
!2968 = !DILocation(line: 438, column: 45, scope: !2957)
!2969 = !DILocation(line: 438, column: 50, scope: !2957)
!2970 = !DILocation(line: 438, column: 53, scope: !2957)
!2971 = !DILocation(line: 438, column: 4, scope: !2957)
!2972 = !DILocation(line: 439, column: 4, scope: !2957)
!2973 = !DILocation(line: 439, column: 8, scope: !2957)
!2974 = !DILocation(line: 439, column: 13, scope: !2957)
!2975 = !DILocation(line: 439, column: 16, scope: !2957)
!2976 = !DILocation(line: 439, column: 20, scope: !2957)
!2977 = !DILocation(line: 440, column: 3, scope: !2957)
!2978 = !DILocation(line: 443, column: 7, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2842, file: !2, line: 443, column: 6)
!2980 = !DILocation(line: 443, column: 6, scope: !2842)
!2981 = !DILocation(line: 444, column: 36, scope: !2982)
!2982 = distinct !DILexicalBlock(scope: !2979, file: !2, line: 443, column: 12)
!2983 = !DILocation(line: 444, column: 45, scope: !2982)
!2984 = !DILocation(line: 444, column: 48, scope: !2982)
!2985 = !DILocation(line: 444, column: 52, scope: !2982)
!2986 = !DILocation(line: 445, column: 34, scope: !2982)
!2987 = !DILocation(line: 445, column: 38, scope: !2982)
!2988 = !DILocation(line: 445, column: 43, scope: !2982)
!2989 = !DILocation(line: 445, column: 46, scope: !2982)
!2990 = !DILocation(line: 446, column: 36, scope: !2982)
!2991 = !DILocation(line: 446, column: 5, scope: !2982)
!2992 = !DILocation(line: 444, column: 10, scope: !2982)
!2993 = !DILocation(line: 444, column: 8, scope: !2982)
!2994 = !DILocation(line: 447, column: 3, scope: !2982)
!2995 = !DILocation(line: 449, column: 7, scope: !2842)
!2996 = !DILocation(line: 449, column: 5, scope: !2842)
!2997 = !DILocation(line: 450, column: 16, scope: !2842)
!2998 = !DILocation(line: 450, column: 3, scope: !2842)
!2999 = !DILocation(line: 450, column: 7, scope: !2842)
!3000 = !DILocation(line: 450, column: 12, scope: !2842)
!3001 = !DILocation(line: 450, column: 14, scope: !2842)
!3002 = !DILocation(line: 452, column: 7, scope: !3003)
!3003 = distinct !DILexicalBlock(scope: !2842, file: !2, line: 452, column: 7)
!3004 = !DILocation(line: 452, column: 7, scope: !2842)
!3005 = !DILocation(line: 453, column: 7, scope: !3006)
!3006 = distinct !DILexicalBlock(scope: !3007, file: !2, line: 453, column: 7)
!3007 = distinct !DILexicalBlock(scope: !3003, file: !2, line: 452, column: 10)
!3008 = !DILocation(line: 453, column: 15, scope: !3006)
!3009 = !DILocation(line: 453, column: 30, scope: !3006)
!3010 = !DILocation(line: 453, column: 18, scope: !3006)
!3011 = !DILocation(line: 453, column: 7, scope: !3007)
!3012 = !DILocalVariable(name: "saddr", scope: !3013, file: !2, line: 454, type: !2851)
!3013 = distinct !DILexicalBlock(scope: !3006, file: !2, line: 453, column: 43)
!3014 = !DILocation(line: 454, column: 13, scope: !3013)
!3015 = !DILocalVariable(name: "rsaddr", scope: !3013, file: !2, line: 455, type: !2851)
!3016 = !DILocation(line: 455, column: 13, scope: !3013)
!3017 = !DILocation(line: 456, column: 51, scope: !3013)
!3018 = !DILocation(line: 456, column: 20, scope: !3013)
!3019 = !DILocation(line: 456, column: 54, scope: !3013)
!3020 = !DILocation(line: 456, column: 5, scope: !3013)
!3021 = !DILocation(line: 457, column: 52, scope: !3013)
!3022 = !DILocation(line: 457, column: 20, scope: !3013)
!3023 = !DILocation(line: 457, column: 55, scope: !3013)
!3024 = !DILocation(line: 457, column: 5, scope: !3013)
!3025 = !DILocation(line: 460, column: 28, scope: !3013)
!3026 = !DILocation(line: 460, column: 42, scope: !3013)
!3027 = !DILocation(line: 458, column: 5, scope: !3013)
!3028 = !DILocation(line: 461, column: 4, scope: !3013)
!3029 = !DILocation(line: 462, column: 11, scope: !3007)
!3030 = !DILocation(line: 462, column: 4, scope: !3007)
!3031 = !DILocation(line: 462, column: 7, scope: !3007)
!3032 = !DILocation(line: 462, column: 9, scope: !3007)
!3033 = !DILocation(line: 463, column: 22, scope: !3007)
!3034 = !DILocation(line: 463, column: 25, scope: !3007)
!3035 = !DILocation(line: 463, column: 4, scope: !3007)
!3036 = !DILocation(line: 464, column: 38, scope: !3037)
!3037 = distinct !DILexicalBlock(scope: !3007, file: !2, line: 464, column: 7)
!3038 = !DILocation(line: 464, column: 44, scope: !3037)
!3039 = !DILocation(line: 464, column: 48, scope: !3037)
!3040 = !DILocation(line: 464, column: 7, scope: !3037)
!3041 = !DILocation(line: 464, column: 54, scope: !3037)
!3042 = !DILocation(line: 464, column: 7, scope: !3007)
!3043 = !DILocation(line: 465, column: 5, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !3037, file: !2, line: 464, column: 58)
!3045 = !DILocation(line: 467, column: 3, scope: !3007)
!3046 = !DILocation(line: 470, column: 2, scope: !2590)
!3047 = !DILocation(line: 471, column: 1, scope: !2590)
!3048 = distinct !DISubprogram(name: "dtls_server_input_handler", scope: !2, file: !2, line: 258, type: !3049, scopeLine: 261, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !99, retainedNodes: !1108)
!3049 = !DISubroutineType(types: !3050)
!3050 = !{!468, !237, !468, !453}
!3051 = !DILocalVariable(name: "server", arg: 1, scope: !3048, file: !2, line: 258, type: !237)
!3052 = !DILocation(line: 258, column: 85, scope: !3048)
!3053 = !DILocalVariable(name: "s", arg: 2, scope: !3048, file: !2, line: 259, type: !468)
!3054 = !DILocation(line: 259, column: 23, scope: !3048)
!3055 = !DILocalVariable(name: "nbh", arg: 3, scope: !3048, file: !2, line: 260, type: !453)
!3056 = !DILocation(line: 260, column: 31, scope: !3048)
!3057 = !DILocation(line: 262, column: 2, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !3048, file: !2, line: 262, column: 2)
!3059 = !DILocation(line: 262, column: 2, scope: !3048)
!3060 = !DILocation(line: 264, column: 7, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !3048, file: !2, line: 264, column: 6)
!3062 = !DILocation(line: 264, column: 14, scope: !3061)
!3063 = !DILocation(line: 264, column: 18, scope: !3061)
!3064 = !DILocation(line: 264, column: 6, scope: !3048)
!3065 = !DILocation(line: 265, column: 3, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !3061, file: !2, line: 264, column: 23)
!3067 = !DILocalVariable(name: "connecting_ssl", scope: !3048, file: !2, line: 268, type: !512)
!3068 = !DILocation(line: 268, column: 7, scope: !3048)
!3069 = !DILocalVariable(name: "wbio", scope: !3048, file: !2, line: 270, type: !2445)
!3070 = !DILocation(line: 270, column: 7, scope: !3048)
!3071 = !DILocalVariable(name: "timeout", scope: !3048, file: !2, line: 271, type: !389)
!3072 = !DILocation(line: 271, column: 17, scope: !3048)
!3073 = !DILocation(line: 274, column: 23, scope: !3048)
!3074 = !DILocation(line: 274, column: 26, scope: !3048)
!3075 = !DILocation(line: 274, column: 9, scope: !3048)
!3076 = !DILocation(line: 274, column: 7, scope: !3048)
!3077 = !DILocation(line: 275, column: 8, scope: !3048)
!3078 = !DILocation(line: 278, column: 10, scope: !3048)
!3079 = !DILocation(line: 278, column: 17, scope: !3048)
!3080 = !DILocation(line: 279, column: 10, scope: !3048)
!3081 = !DILocation(line: 279, column: 18, scope: !3048)
!3082 = !DILocation(line: 280, column: 11, scope: !3048)
!3083 = !DILocation(line: 280, column: 2, scope: !3048)
!3084 = !DILocation(line: 283, column: 46, scope: !3085)
!3085 = distinct !DILexicalBlock(scope: !3048, file: !2, line: 283, column: 5)
!3086 = !DILocation(line: 283, column: 22, scope: !3085)
!3087 = !DILocation(line: 284, column: 41, scope: !3085)
!3088 = !DILocation(line: 284, column: 13, scope: !3085)
!3089 = !DILocation(line: 284, column: 8, scope: !3085)
!3090 = !DILocation(line: 283, column: 5, scope: !3085)
!3091 = !DILocation(line: 284, column: 47, scope: !3085)
!3092 = !DILocation(line: 283, column: 5, scope: !3048)
!3093 = !DILocation(line: 285, column: 28, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !3085, file: !2, line: 284, column: 53)
!3095 = !DILocation(line: 285, column: 36, scope: !3094)
!3096 = !DILocation(line: 285, column: 39, scope: !3094)
!3097 = !DILocation(line: 285, column: 20, scope: !3094)
!3098 = !DILocation(line: 285, column: 18, scope: !3094)
!3099 = !DILocation(line: 286, column: 2, scope: !3094)
!3100 = !DILocation(line: 287, column: 28, scope: !3101)
!3101 = distinct !DILexicalBlock(scope: !3085, file: !2, line: 286, column: 9)
!3102 = !DILocation(line: 287, column: 36, scope: !3101)
!3103 = !DILocation(line: 287, column: 39, scope: !3101)
!3104 = !DILocation(line: 287, column: 20, scope: !3101)
!3105 = !DILocation(line: 287, column: 18, scope: !3101)
!3106 = !DILocation(line: 295, column: 23, scope: !3048)
!3107 = !DILocation(line: 295, column: 2, scope: !3048)
!3108 = !DILocation(line: 297, column: 14, scope: !3048)
!3109 = !DILocation(line: 297, column: 36, scope: !3048)
!3110 = !DILocation(line: 297, column: 2, scope: !3048)
!3111 = !DILocation(line: 298, column: 18, scope: !3048)
!3112 = !DILocation(line: 298, column: 2, scope: !3048)
!3113 = !DILocation(line: 300, column: 2, scope: !3048)
!3114 = !DILocalVariable(name: "rc", scope: !3048, file: !2, line: 302, type: !468)
!3115 = !DILocation(line: 302, column: 20, scope: !3048)
!3116 = !DILocation(line: 302, column: 55, scope: !3048)
!3117 = !DILocation(line: 302, column: 63, scope: !3048)
!3118 = !DILocation(line: 302, column: 66, scope: !3048)
!3119 = !DILocation(line: 303, column: 8, scope: !3048)
!3120 = !DILocation(line: 303, column: 16, scope: !3048)
!3121 = !DILocation(line: 303, column: 19, scope: !3048)
!3122 = !DILocation(line: 303, column: 24, scope: !3048)
!3123 = !DILocation(line: 303, column: 27, scope: !3048)
!3124 = !DILocation(line: 304, column: 8, scope: !3048)
!3125 = !DILocation(line: 304, column: 16, scope: !3048)
!3126 = !DILocation(line: 305, column: 6, scope: !3048)
!3127 = !DILocation(line: 302, column: 25, scope: !3048)
!3128 = !DILocation(line: 307, column: 7, scope: !3129)
!3129 = distinct !DILexicalBlock(scope: !3048, file: !2, line: 307, column: 6)
!3130 = !DILocation(line: 307, column: 6, scope: !3048)
!3131 = !DILocation(line: 308, column: 26, scope: !3132)
!3132 = distinct !DILexicalBlock(scope: !3133, file: !2, line: 308, column: 7)
!3133 = distinct !DILexicalBlock(scope: !3129, file: !2, line: 307, column: 11)
!3134 = !DILocation(line: 308, column: 9, scope: !3132)
!3135 = !DILocation(line: 308, column: 42, scope: !3132)
!3136 = !DILocation(line: 308, column: 7, scope: !3133)
!3137 = !DILocation(line: 309, column: 21, scope: !3138)
!3138 = distinct !DILexicalBlock(scope: !3132, file: !2, line: 308, column: 64)
!3139 = !DILocation(line: 309, column: 4, scope: !3138)
!3140 = !DILocation(line: 310, column: 17, scope: !3138)
!3141 = !DILocation(line: 310, column: 4, scope: !3138)
!3142 = !DILocation(line: 311, column: 3, scope: !3138)
!3143 = !DILocation(line: 312, column: 12, scope: !3133)
!3144 = !DILocation(line: 312, column: 3, scope: !3133)
!3145 = !DILocation(line: 313, column: 2, scope: !3133)
!3146 = !DILocation(line: 315, column: 9, scope: !3048)
!3147 = !DILocation(line: 315, column: 2, scope: !3048)
!3148 = !DILocation(line: 316, column: 1, scope: !3048)
!3149 = distinct !DISubprogram(name: "dtls_accept_client_connection", scope: !2, file: !2, line: 224, type: !3150, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !99, retainedNodes: !1108)
!3150 = !DISubroutineType(types: !3151)
!3151 = !{!468, !237, !468, !512, !402, !402, !453}
!3152 = !DILocalVariable(name: "server", arg: 1, scope: !3149, file: !2, line: 225, type: !237)
!3153 = !DILocation(line: 225, column: 38, scope: !3149)
!3154 = !DILocalVariable(name: "sock", arg: 2, scope: !3149, file: !2, line: 226, type: !468)
!3155 = !DILocation(line: 226, column: 23, scope: !3149)
!3156 = !DILocalVariable(name: "ssl", arg: 3, scope: !3149, file: !2, line: 227, type: !512)
!3157 = !DILocation(line: 227, column: 10, scope: !3149)
!3158 = !DILocalVariable(name: "remote_addr", arg: 4, scope: !3149, file: !2, line: 228, type: !402)
!3159 = !DILocation(line: 228, column: 15, scope: !3149)
!3160 = !DILocalVariable(name: "local_addr", arg: 5, scope: !3149, file: !2, line: 228, type: !402)
!3161 = !DILocation(line: 228, column: 38, scope: !3149)
!3162 = !DILocalVariable(name: "nbh", arg: 6, scope: !3149, file: !2, line: 229, type: !453)
!3163 = !DILocation(line: 229, column: 31, scope: !3149)
!3164 = !DILocation(line: 231, column: 2, scope: !3165)
!3165 = distinct !DILexicalBlock(scope: !3149, file: !2, line: 231, column: 2)
!3166 = !DILocation(line: 231, column: 2, scope: !3149)
!3167 = !DILocation(line: 233, column: 7, scope: !3168)
!3168 = distinct !DILexicalBlock(scope: !3149, file: !2, line: 233, column: 6)
!3169 = !DILocation(line: 233, column: 6, scope: !3149)
!3170 = !DILocation(line: 234, column: 3, scope: !3168)
!3171 = !DILocalVariable(name: "rc", scope: !3149, file: !2, line: 236, type: !96)
!3172 = !DILocation(line: 236, column: 6, scope: !3149)
!3173 = !DILocation(line: 236, column: 20, scope: !3149)
!3174 = !DILocation(line: 236, column: 26, scope: !3149)
!3175 = !DILocation(line: 236, column: 30, scope: !3149)
!3176 = !DILocation(line: 236, column: 35, scope: !3149)
!3177 = !DILocation(line: 236, column: 40, scope: !3149)
!3178 = !DILocation(line: 236, column: 48, scope: !3149)
!3179 = !DILocation(line: 236, column: 11, scope: !3149)
!3180 = !DILocation(line: 238, column: 6, scope: !3181)
!3181 = distinct !DILexicalBlock(scope: !3149, file: !2, line: 238, column: 6)
!3182 = !DILocation(line: 238, column: 9, scope: !3181)
!3183 = !DILocation(line: 238, column: 6, scope: !3149)
!3184 = !DILocation(line: 239, column: 3, scope: !3181)
!3185 = !DILocation(line: 241, column: 19, scope: !3149)
!3186 = !DILocation(line: 241, column: 27, scope: !3149)
!3187 = !DILocation(line: 241, column: 36, scope: !3149)
!3188 = !DILocation(line: 241, column: 2, scope: !3149)
!3189 = !DILocalVariable(name: "ioas", scope: !3149, file: !2, line: 243, type: !468)
!3190 = !DILocation(line: 243, column: 20, scope: !3149)
!3191 = !DILocation(line: 243, column: 54, scope: !3149)
!3192 = !DILocation(line: 243, column: 62, scope: !3149)
!3193 = !DILocation(line: 243, column: 65, scope: !3149)
!3194 = !DILocation(line: 243, column: 71, scope: !3149)
!3195 = !DILocation(line: 243, column: 104, scope: !3149)
!3196 = !DILocation(line: 243, column: 117, scope: !3149)
!3197 = !DILocation(line: 243, column: 27, scope: !3149)
!3198 = !DILocation(line: 244, column: 5, scope: !3199)
!3199 = distinct !DILexicalBlock(scope: !3149, file: !2, line: 244, column: 5)
!3200 = !DILocation(line: 244, column: 5, scope: !3149)
!3201 = !DILocation(line: 245, column: 14, scope: !3202)
!3202 = distinct !DILexicalBlock(scope: !3199, file: !2, line: 244, column: 11)
!3203 = !DILocation(line: 245, column: 22, scope: !3202)
!3204 = !DILocation(line: 245, column: 25, scope: !3202)
!3205 = !DILocation(line: 245, column: 30, scope: !3202)
!3206 = !DILocation(line: 245, column: 33, scope: !3202)
!3207 = !DILocation(line: 245, column: 43, scope: !3202)
!3208 = !DILocation(line: 245, column: 3, scope: !3202)
!3209 = !DILocation(line: 246, column: 3, scope: !3202)
!3210 = !DILocation(line: 246, column: 11, scope: !3202)
!3211 = !DILocation(line: 246, column: 14, scope: !3202)
!3212 = !DILocation(line: 246, column: 19, scope: !3202)
!3213 = !DILocation(line: 246, column: 22, scope: !3202)
!3214 = !DILocation(line: 246, column: 31, scope: !3202)
!3215 = !DILocation(line: 247, column: 3, scope: !3202)
!3216 = !DILocation(line: 247, column: 11, scope: !3202)
!3217 = !DILocation(line: 247, column: 14, scope: !3202)
!3218 = !DILocation(line: 247, column: 19, scope: !3202)
!3219 = !DILocation(line: 247, column: 22, scope: !3202)
!3220 = !DILocation(line: 247, column: 31, scope: !3202)
!3221 = !DILocation(line: 248, column: 23, scope: !3202)
!3222 = !DILocation(line: 248, column: 3, scope: !3202)
!3223 = !DILocation(line: 248, column: 11, scope: !3202)
!3224 = !DILocation(line: 248, column: 14, scope: !3202)
!3225 = !DILocation(line: 248, column: 19, scope: !3202)
!3226 = !DILocation(line: 248, column: 21, scope: !3202)
!3227 = !DILocation(line: 249, column: 2, scope: !3202)
!3228 = !DILocation(line: 250, column: 3, scope: !3229)
!3229 = distinct !DILexicalBlock(scope: !3199, file: !2, line: 249, column: 9)
!3230 = !DILocation(line: 253, column: 2, scope: !3231)
!3231 = distinct !DILexicalBlock(scope: !3149, file: !2, line: 253, column: 2)
!3232 = !DILocation(line: 253, column: 2, scope: !3149)
!3233 = !DILocation(line: 255, column: 9, scope: !3149)
!3234 = !DILocation(line: 255, column: 2, scope: !3149)
!3235 = !DILocation(line: 256, column: 1, scope: !3149)
