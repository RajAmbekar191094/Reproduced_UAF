; ModuleID = '/home/raj/coturn/src/apps/relay/netengine.c'
source_filename = "/home/raj/coturn/src/apps/relay/netengine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct._turn_params_ = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, [1025 x i8], [33 x i8], [1025 x i8], [1025 x i8], [1025 x i8], [513 x i8], [1025 x i8], i32, i32, i32, i32, i32, ptr, %union.pthread_mutex_t, i32, i32, i32, i32, i32, [1025 x i8], [1025 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1025 x i8], [1025 x i8], i32, %struct.listener_server, %struct._ip_range_list, %struct._ip_range_list, i32, [4 x ptr], i16, i16, i32, i32, i32, [1025 x i8], i64, ptr, i32, ptr, i8, i8, [1025 x i8], [1025 x i8], i32, %struct._turn_server_addrs_list, i32, %struct._turn_server_addrs_list, %struct._turn_server_addrs_list, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, %struct._default_users_db_t, i64, [1025 x i8], [1025 x i8], i32, i32, i32, i32, i32 }
%struct.listener_server = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, ptr }
%struct._ip_range_list = type { ptr, i64 }
%struct._turn_server_addrs_list = type { ptr, i64, %struct._turn_mutex }
%struct._turn_mutex = type { i32, ptr }
%struct._default_users_db_t = type { i32, %struct._persistent_users_db_t, %struct._ram_users_db_t }
%struct._persistent_users_db_t = type { [1025 x i8] }
%struct._ram_users_db_t = type { i64, ptr, %struct._secrets_list }
%struct._secrets_list = type { ptr, i64 }
%struct.auth_server = type { i8, ptr, ptr, ptr, i64, ptr }
%union.pthread_barrier_t = type { i64, [24 x i8] }
%struct.admin_server = type { i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%union.ioa_addr = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct.update_ssl_ctx_cb_args = type { ptr, ptr, ptr }
%struct._ioa_engine = type { ptr, ptr, i32, i32, ptr, ptr, %struct._stun_buffer_list, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, [65537 x i8], [14 x i32], [14 x %struct.timeval], [1025 x i8], i32, i64, i64, ptr, ptr }
%struct._stun_buffer_list = type { ptr, i64 }
%struct.timeval = type { i64, i64 }
%struct.message_to_relay = type { i32, ptr, %union.anon.0 }
%union.anon.0 = type { %struct.cb_socket_message }
%struct.cb_socket_message = type { i8, i32, %struct.stun_tid, ptr, i32, %struct._ioa_net_data, i32 }
%struct.stun_tid = type { [12 x i8] }
%struct._ioa_net_data = type { %union.ioa_addr, ptr, i32, i32 }
%struct.cancelled_session_message = type { i64 }
%struct.relay_server = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct._turn_turnserver, i64 }
%struct._turn_turnserver = type { i8, i64, ptr, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, %union.ioa_addr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, i64, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, i32, ptr }
%union.pthread_attr_t = type { i64, [48 x i8] }
%struct.message_to_listener = type { i32, %union.anon.1 }
%union.anon.1 = type { %struct.message_to_listener_to_client }
%struct.message_to_listener_to_client = type { %union.ioa_addr, %union.ioa_addr, ptr }
%struct.auth_message = type { i8, i32, i32, i32, i32, [513 x i8], [128 x i8], [64 x i8], [257 x i8], ptr, %struct._ioa_net_data, i64, i32 }
%struct.socket_message = type { ptr, %struct._ioa_net_data, i32 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct._ioa_socket = type { i32, ptr, i32, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, %union.ioa_addr, i32, %union.ioa_addr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct._stun_buffer_list, i32, %struct.traffic_bytes, %struct.traffic_bytes, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.traffic_bytes = type { i64, i64 }

@mutex_bps = internal global %union.pthread_mutex_t zeroinitializer, align 8, !dbg !0
@turn_params = external global %struct._turn_params_, align 8
@.str = private unnamed_addr constant [35 x i8] c"Cannot add a listener address: %s\0A\00", align 1, !dbg !1042
@.str.1 = private unnamed_addr constant [29 x i8] c"Listener address to use: %s\0A\00", align 1, !dbg !1047
@.str.2 = private unnamed_addr constant [32 x i8] c"Cannot add a relay address: %s\0A\00", align 1, !dbg !1052
@.str.3 = private unnamed_addr constant [26 x i8] c"Relay address to use: %s\0A\00", align 1, !dbg !1057
@auth_message_counter_mutex = internal global %union.pthread_mutex_t zeroinitializer, align 8, !dbg !1157
@auth_message_counter = internal global i8 1, align 1, !dbg !1159
@authserver_number = internal global i8 3, align 1, !dbg !1161
@authserver = internal global [256 x %struct.auth_server] zeroinitializer, align 16, !dbg !1127
@stderr = external global ptr, align 8
@.str.4 = private unnamed_addr constant [24 x i8] c"%s: Weird buffer error\0A\00", align 1, !dbg !1062
@__FUNCTION__.send_auth_message_to_auth_server = private unnamed_addr constant [33 x i8] c"send_auth_message_to_auth_server\00", align 1, !dbg !1067
@.str.5 = private unnamed_addr constant [46 x i8] c"%s: Too large UDP relay number: %d, total=%d\0A\00", align 1, !dbg !1070
@__FUNCTION__.send_session_cancellation_to_relay = private unnamed_addr constant [35 x i8] c"send_session_cancellation_to_relay\00", align 1, !dbg !1075
@udp_relay_servers = internal global [256 x ptr] zeroinitializer, align 16, !dbg !1135
@.str.6 = private unnamed_addr constant [42 x i8] c"%s: Wrong UDP relay number: %d, total=%d\0A\00", align 1, !dbg !1078
@.str.7 = private unnamed_addr constant [50 x i8] c"%s: Too large general relay number: %d, total=%d\0A\00", align 1, !dbg !1083
@general_relay_servers = internal global [256 x ptr] zeroinitializer, align 16, !dbg !1132
@.str.8 = private unnamed_addr constant [46 x i8] c"%s: Wrong general relay number: %d, total=%d\0A\00", align 1, !dbg !1088
@.str.9 = private unnamed_addr constant [25 x i8] c"%s: Empty output buffer\0A\00", align 1, !dbg !1090
@.str.10 = private unnamed_addr constant [8 x i8] c"READY=1\00", align 1, !dbg !1095
@.str.11 = private unnamed_addr constant [14 x i8] c"%s: cycle=%u\0A\00", align 1, !dbg !1098
@__FUNCTION__.run_listener_server = private unnamed_addr constant [20 x i8] c"run_listener_server\00", align 1, !dbg !1100
@.str.12 = private unnamed_addr constant [11 x i8] c"STOPPING=1\00", align 1, !dbg !1105
@barrier_count = internal global i32 0, align 4, !dbg !1169
@.str.13 = private unnamed_addr constant [23 x i8] c"Total UDP servers: %d\0A\00", align 1, !dbg !1110
@.str.14 = private unnamed_addr constant [27 x i8] c"Total General servers: %d\0A\00", align 1, !dbg !1115
@.str.15 = private unnamed_addr constant [40 x i8] c"General server %d is not initialized !\0A\00", align 1, !dbg !1120
@__FUNCTION__.setup_server = private unnamed_addr constant [13 x i8] c"setup_server\00", align 1, !dbg !1122
@.str.16 = private unnamed_addr constant [31 x i8] c"Wrong full address format: %s\0A\00", align 1, !dbg !1137
@.str.17 = private unnamed_addr constant [16 x i8] c"Aux server: %s\0A\00", align 1, !dbg !1142
@.str.18 = private unnamed_addr constant [29 x i8] c"Wrong IP address format: %s\0A\00", align 1, !dbg !1145
@.str.19 = private unnamed_addr constant [28 x i8] c"Alternate server added: %s\0A\00", align 1, !dbg !1147
@.str.20 = private unnamed_addr constant [30 x i8] c"Alternate server removed: %s\0A\00", align 1, !dbg !1152
@.str.21 = private unnamed_addr constant [8 x i8] c"publish\00", align 1, !dbg !1163
@.str.22 = private unnamed_addr constant [8 x i8] c"__XXX__\00", align 1, !dbg !1165
@.str.23 = private unnamed_addr constant [8 x i8] c"__YYY__\00", align 1, !dbg !1167
@.str.24 = private unnamed_addr constant [38 x i8] c"IO method (main listener thread): %s\0A\00", align 1, !dbg !1171
@.str.25 = private unnamed_addr constant [101 x i8] c"WARNING: I cannot support STUN CHANGE_REQUEST functionality because only one IP address is provided\0A\00", align 1, !dbg !1176
@.str.26 = private unnamed_addr constant [44 x i8] c"/home/raj/coturn/src/apps/relay/netengine.c\00", align 1, !dbg !1181
@__FUNCTION__.setup_listener = private unnamed_addr constant [15 x i8] c"setup_listener\00", align 1, !dbg !1186
@.str.27 = private unnamed_addr constant [20 x i8] c"Weird buffer error\0A\00", align 1, !dbg !1191
@.str.28 = private unnamed_addr constant [19 x i8] c"Weird buffer type\0A\00", align 1, !dbg !1194
@.str.29 = private unnamed_addr constant [46 x i8] c"%s: Wrong general relay number: %d, total %d\0A\00", align 1, !dbg !1199
@__FUNCTION__.listener_receive_message = private unnamed_addr constant [25 x i8] c"listener_receive_message\00", align 1, !dbg !1201
@.str.30 = private unnamed_addr constant [30 x i8] c"%s: Wrong origin port(1): %d\0A\00", align 1, !dbg !1204
@.str.31 = private unnamed_addr constant [30 x i8] c"%s: Wrong origin port(2): %d\0A\00", align 1, !dbg !1206
@.str.32 = private unnamed_addr constant [26 x i8] c"%s: Wrong listener setup\0A\00", align 1, !dbg !1208
@.str.33 = private unnamed_addr constant [33 x i8] c"%s: Cannot find local source %s\0A\00", align 1, !dbg !1210
@.str.34 = private unnamed_addr constant [40 x i8] c"Wait for relay ports initialization...\0A\00", align 1, !dbg !1212
@.str.35 = private unnamed_addr constant [30 x i8] c"  relay %s initialization...\0A\00", align 1, !dbg !1214
@.str.36 = private unnamed_addr constant [32 x i8] c"  relay %s initialization done\0A\00", align 1, !dbg !1216
@.str.37 = private unnamed_addr constant [33 x i8] c"Relay ports initialization done\0A\00", align 1, !dbg !1218
@barrier = internal global %union.pthread_barrier_t zeroinitializer, align 8, !dbg !1223
@.str.38 = private unnamed_addr constant [13 x i8] c"barrier init\00", align 1, !dbg !1220
@__FUNCTION__.setup_general_relay_servers = private unnamed_addr constant [28 x i8] c"setup_general_relay_servers\00", align 1, !dbg !1230
@.str.39 = private unnamed_addr constant [28 x i8] c"Cannot create relay thread\0A\00", align 1, !dbg !1233
@.str.40 = private unnamed_addr constant [38 x i8] c"IO method (general relay thread): %s\0A\00", align 1, !dbg !1235
@.str.41 = private unnamed_addr constant [18 x i8] c"%s: socket EMPTY\0A\00", align 1, !dbg !1237
@__FUNCTION__.handle_relay_message = private unnamed_addr constant [21 x i8] c"handle_relay_message\00", align 1, !dbg !1242
@.str.42 = private unnamed_addr constant [42 x i8] c"%s: socket wrongly preset: 0x%lx : 0x%lx\0A\00", align 1, !dbg !1247
@.str.43 = private unnamed_addr constant [25 x i8] c"%s: mobile socket EMPTY\0A\00", align 1, !dbg !1249
@.str.44 = private unnamed_addr constant [49 x i8] c"%s: mobile socket wrongly preset: 0x%lx : 0x%lx\0A\00", align 1, !dbg !1251
@.str.45 = private unnamed_addr constant [25 x i8] c"Weird auth_buffer error\0A\00", align 1, !dbg !1256
@.str.46 = private unnamed_addr constant [54 x i8] c"%s: Too large UDP relay number: %d, rmt=%d, total=%d\0A\00", align 1, !dbg !1258
@__FUNCTION__.send_socket_to_relay = private unnamed_addr constant [21 x i8] c"send_socket_to_relay\00", align 1, !dbg !1263
@.str.47 = private unnamed_addr constant [50 x i8] c"%s: Wrong UDP relay number: %d, rmt=%d, total=%d\0A\00", align 1, !dbg !1265
@.str.48 = private unnamed_addr constant [58 x i8] c"%s: Too large general relay number: %d, rmt=%d, total=%d\0A\00", align 1, !dbg !1267
@.str.49 = private unnamed_addr constant [54 x i8] c"%s: Wrong general relay number: %d, rmt=%d, total=%d\0A\00", align 1, !dbg !1272
@.str.50 = private unnamed_addr constant [37 x i8] c"%s: Empty buffer with mobile socket\0A\00", align 1, !dbg !1274
@.str.51 = private unnamed_addr constant [29 x i8] c"%s: UNKNOWN RMT message: %d\0A\00", align 1, !dbg !1279
@run_general_relay_thread.always_true = internal global i32 1, align 4, !dbg !1281
@__FUNCTION__.run_general_relay_thread = private unnamed_addr constant [25 x i8] c"run_general_relay_thread\00", align 1, !dbg !1287
@__FUNCTION__.setup_socket_per_thread_udp_listener_servers = private unnamed_addr constant [45 x i8] c"setup_socket_per_thread_udp_listener_servers\00", align 1, !dbg !1289
@__FUNCTION__.setup_socket_per_endpoint_udp_listener_servers = private unnamed_addr constant [47 x i8] c"setup_socket_per_endpoint_udp_listener_servers\00", align 1, !dbg !1294
@.str.52 = private unnamed_addr constant [35 x i8] c"Cannot create aux listener thread\0A\00", align 1, !dbg !1299
@.str.53 = private unnamed_addr constant [31 x i8] c"Cannot create listener thread\0A\00", align 1, !dbg !1301
@.str.54 = private unnamed_addr constant [43 x i8] c"IO method (udp listener/relay thread): %s\0A\00", align 1, !dbg !1303
@run_udp_listener_thread.always_true = internal global i32 1, align 4, !dbg !1308
@__FUNCTION__.run_udp_listener_thread = private unnamed_addr constant [24 x i8] c"run_udp_listener_thread\00", align 1, !dbg !1311
@__FUNCTION__.setup_socket_per_session_udp_listener_servers = private unnamed_addr constant [46 x i8] c"setup_socket_per_session_udp_listener_servers\00", align 1, !dbg !1314
@.str.55 = private unnamed_addr constant [47 x i8] c"%s: Cannot add message to relay output buffer\0A\00", align 1, !dbg !1317
@__FUNCTION__.send_socket_to_general_relay = private unnamed_addr constant [29 x i8] c"send_socket_to_general_relay\00", align 1, !dbg !1320
@__FUNCTION__.setup_tcp_listener_servers = private unnamed_addr constant [27 x i8] c"setup_tcp_listener_servers\00", align 1, !dbg !1323
@.str.56 = private unnamed_addr constant [27 x i8] c"Cannot create auth thread\0A\00", align 1, !dbg !1326
@__FUNCTION__.run_auth_server_thread = private unnamed_addr constant [23 x i8] c"run_auth_server_thread\00", align 1, !dbg !1328
@run_auth_server_flag = internal global i32 1, align 4, !dbg !1333
@.str.57 = private unnamed_addr constant [29 x i8] c"IO method (auth thread): %s\0A\00", align 1, !dbg !1331
@.str.58 = private unnamed_addr constant [33 x i8] c"%s: Weird buffer error: size=%d\0A\00", align 1, !dbg !1335
@__FUNCTION__.auth_server_receive_message = private unnamed_addr constant [28 x i8] c"auth_server_receive_message\00", align 1, !dbg !1337
@.str.59 = private unnamed_addr constant [36 x i8] c"%s: Too large UDP relay number: %d\0A\00", align 1, !dbg !1339
@.str.60 = private unnamed_addr constant [42 x i8] c"%s: Wrong UDP relay number: %d, total %d\0A\00", align 1, !dbg !1344
@.str.61 = private unnamed_addr constant [50 x i8] c"%s: Too large general relay number: %d, total %d\0A\00", align 1, !dbg !1346
@adminserver = external global %struct.admin_server, align 8
@.str.62 = private unnamed_addr constant [26 x i8] c"Cannot create cli thread\0A\00", align 1, !dbg !1348
@__FUNCTION__.run_admin_server_thread = private unnamed_addr constant [24 x i8] c"run_admin_server_thread\00", align 1, !dbg !1350
@.str.63 = private unnamed_addr constant [13 x i8] c"barrier wait\00", align 1, !dbg !1352
@.str.64 = private unnamed_addr constant [14 x i8] c"%s:%s:%d: %d\0A\00", align 1, !dbg !1354
@__FUNCTION__.barrier_wait_func = private unnamed_addr constant [18 x i8] c"barrier_wait_func\00", align 1, !dbg !1356

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_bps_capacity_allocated() #0 !dbg !1367 {
  %1 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata ptr %1, metadata !1370, metadata !DIExpression()), !dbg !1371
  store i64 0, ptr %1, align 8, !dbg !1371
  %2 = call i32 @pthread_mutex_lock(ptr noundef @mutex_bps) #10, !dbg !1372
  %3 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 82), align 8, !dbg !1373
  store i64 %3, ptr %1, align 8, !dbg !1374
  %4 = call i32 @pthread_mutex_unlock(ptr noundef @mutex_bps) #10, !dbg !1375
  %5 = load i64, ptr %1, align 8, !dbg !1376
  ret i64 %5, !dbg !1377
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_bps_capacity() #0 !dbg !1378 {
  %1 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata ptr %1, metadata !1379, metadata !DIExpression()), !dbg !1380
  store i64 0, ptr %1, align 8, !dbg !1380
  %2 = call i32 @pthread_mutex_lock(ptr noundef @mutex_bps) #10, !dbg !1381
  %3 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 81), align 8, !dbg !1382
  store i64 %3, ptr %1, align 8, !dbg !1383
  %4 = call i32 @pthread_mutex_unlock(ptr noundef @mutex_bps) #10, !dbg !1384
  %5 = load i64, ptr %1, align 8, !dbg !1385
  ret i64 %5, !dbg !1386
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_bps_capacity(i64 noundef %0) #0 !dbg !1387 {
  %2 = alloca i64, align 8
  store i64 %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1390, metadata !DIExpression()), !dbg !1391
  %3 = call i32 @pthread_mutex_lock(ptr noundef @mutex_bps) #10, !dbg !1392
  %4 = load i64, ptr %2, align 8, !dbg !1393
  store i64 %4, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 81), align 8, !dbg !1394
  %5 = call i32 @pthread_mutex_unlock(ptr noundef @mutex_bps) #10, !dbg !1395
  ret void, !dbg !1396
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_max_bps() #0 !dbg !1397 {
  %1 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata ptr %1, metadata !1398, metadata !DIExpression()), !dbg !1399
  store i64 0, ptr %1, align 8, !dbg !1399
  %2 = call i32 @pthread_mutex_lock(ptr noundef @mutex_bps) #10, !dbg !1400
  %3 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 80), align 8, !dbg !1401
  store i64 %3, ptr %1, align 8, !dbg !1402
  %4 = call i32 @pthread_mutex_unlock(ptr noundef @mutex_bps) #10, !dbg !1403
  %5 = load i64, ptr %1, align 8, !dbg !1404
  ret i64 %5, !dbg !1405
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_max_bps(i64 noundef %0) #0 !dbg !1406 {
  %2 = alloca i64, align 8
  store i64 %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1407, metadata !DIExpression()), !dbg !1408
  %3 = call i32 @pthread_mutex_lock(ptr noundef @mutex_bps) #10, !dbg !1409
  %4 = load i64, ptr %2, align 8, !dbg !1410
  store i64 %4, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 80), align 8, !dbg !1411
  %5 = call i32 @pthread_mutex_unlock(ptr noundef @mutex_bps) #10, !dbg !1412
  ret void, !dbg !1413
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_aux_server(ptr noundef %0) #0 !dbg !1414 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1417, metadata !DIExpression()), !dbg !1418
  %3 = load ptr, ptr %2, align 8, !dbg !1419
  call void @add_aux_server_list(ptr noundef %3, ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 62)), !dbg !1420
  ret void, !dbg !1421
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_aux_server_list(ptr noundef %0, ptr noundef %1) #0 !dbg !1422 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %union.ioa_addr, align 4
  %6 = alloca [1025 x i8], align 16
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1425, metadata !DIExpression()), !dbg !1426
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1427, metadata !DIExpression()), !dbg !1428
  %7 = load ptr, ptr %3, align 8, !dbg !1429
  %8 = icmp ne ptr %7, null, !dbg !1429
  br i1 %8, label %9, label %42, !dbg !1431

9:                                                ; preds = %2
  %10 = load ptr, ptr %4, align 8, !dbg !1432
  %11 = icmp ne ptr %10, null, !dbg !1432
  br i1 %11, label %12, label %42, !dbg !1433

12:                                               ; preds = %9
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1434, metadata !DIExpression()), !dbg !1436
  %13 = load ptr, ptr %3, align 8, !dbg !1437
  %14 = call i32 @make_ioa_addr_from_full_string(ptr noundef %13, i32 noundef 0, ptr noundef %5), !dbg !1439
  %15 = icmp ne i32 %14, 0, !dbg !1440
  br i1 %15, label %16, label %18, !dbg !1441

16:                                               ; preds = %12
  %17 = load ptr, ptr %3, align 8, !dbg !1442
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.16, ptr noundef %17), !dbg !1444
  br label %41, !dbg !1445

18:                                               ; preds = %12
  %19 = load ptr, ptr %4, align 8, !dbg !1446
  %20 = getelementptr inbounds %struct._turn_server_addrs_list, ptr %19, i32 0, i32 0, !dbg !1448
  %21 = load ptr, ptr %20, align 8, !dbg !1448
  %22 = load ptr, ptr %4, align 8, !dbg !1449
  %23 = getelementptr inbounds %struct._turn_server_addrs_list, ptr %22, i32 0, i32 1, !dbg !1450
  %24 = load volatile i64, ptr %23, align 8, !dbg !1450
  %25 = add i64 %24, 1, !dbg !1451
  %26 = mul i64 28, %25, !dbg !1452
  %27 = call ptr @realloc(ptr noundef %21, i64 noundef %26) #11, !dbg !1453
  %28 = load ptr, ptr %4, align 8, !dbg !1454
  %29 = getelementptr inbounds %struct._turn_server_addrs_list, ptr %28, i32 0, i32 0, !dbg !1455
  store ptr %27, ptr %29, align 8, !dbg !1456
  %30 = load ptr, ptr %4, align 8, !dbg !1457
  %31 = getelementptr inbounds %struct._turn_server_addrs_list, ptr %30, i32 0, i32 0, !dbg !1458
  %32 = load ptr, ptr %31, align 8, !dbg !1458
  %33 = load ptr, ptr %4, align 8, !dbg !1459
  %34 = getelementptr inbounds %struct._turn_server_addrs_list, ptr %33, i32 0, i32 1, !dbg !1460
  %35 = load volatile i64, ptr %34, align 8, !dbg !1461
  %36 = add i64 %35, 1, !dbg !1461
  store volatile i64 %36, ptr %34, align 8, !dbg !1461
  %37 = getelementptr inbounds %union.ioa_addr, ptr %32, i64 %35, !dbg !1457
  call void @addr_cpy(ptr noundef %37, ptr noundef %5), !dbg !1462
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1463, metadata !DIExpression()), !dbg !1466
  %38 = getelementptr inbounds [1025 x i8], ptr %6, i64 0, i64 0, !dbg !1467
  %39 = call i32 @addr_to_string(ptr noundef %5, ptr noundef %38), !dbg !1468
  %40 = getelementptr inbounds [1025 x i8], ptr %6, i64 0, i64 0, !dbg !1469
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.17, ptr noundef %40), !dbg !1470
  br label %41

41:                                               ; preds = %18, %16
  br label %42, !dbg !1471

42:                                               ; preds = %41, %9, %2
  ret void, !dbg !1472
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_alternate_server(ptr noundef %0) #0 !dbg !1473 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1474, metadata !DIExpression()), !dbg !1475
  %3 = load ptr, ptr %2, align 8, !dbg !1476
  call void @add_alt_server(ptr noundef %3, i32 noundef 3478, ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 64)), !dbg !1477
  ret void, !dbg !1478
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_alt_server(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 !dbg !1479 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca %union.ioa_addr, align 4
  %8 = alloca [1025 x i8], align 16
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1482, metadata !DIExpression()), !dbg !1483
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1484, metadata !DIExpression()), !dbg !1485
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1486, metadata !DIExpression()), !dbg !1487
  %9 = load ptr, ptr %4, align 8, !dbg !1488
  %10 = icmp ne ptr %9, null, !dbg !1488
  br i1 %10, label %11, label %51, !dbg !1490

11:                                               ; preds = %3
  %12 = load ptr, ptr %6, align 8, !dbg !1491
  %13 = icmp ne ptr %12, null, !dbg !1491
  br i1 %13, label %14, label %51, !dbg !1492

14:                                               ; preds = %11
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1493, metadata !DIExpression()), !dbg !1495
  %15 = load ptr, ptr %6, align 8, !dbg !1496
  %16 = getelementptr inbounds %struct._turn_server_addrs_list, ptr %15, i32 0, i32 2, !dbg !1497
  %17 = call i32 @turn_mutex_lock(ptr noundef %16), !dbg !1498
  %18 = load ptr, ptr %4, align 8, !dbg !1499
  %19 = load i32, ptr %5, align 4, !dbg !1501
  %20 = call i32 @make_ioa_addr_from_full_string(ptr noundef %18, i32 noundef %19, ptr noundef %7), !dbg !1502
  %21 = icmp ne i32 %20, 0, !dbg !1503
  br i1 %21, label %22, label %24, !dbg !1504

22:                                               ; preds = %14
  %23 = load ptr, ptr %4, align 8, !dbg !1505
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.18, ptr noundef %23), !dbg !1507
  br label %47, !dbg !1508

24:                                               ; preds = %14
  %25 = load ptr, ptr %6, align 8, !dbg !1509
  %26 = getelementptr inbounds %struct._turn_server_addrs_list, ptr %25, i32 0, i32 0, !dbg !1511
  %27 = load ptr, ptr %26, align 8, !dbg !1511
  %28 = load ptr, ptr %6, align 8, !dbg !1512
  %29 = getelementptr inbounds %struct._turn_server_addrs_list, ptr %28, i32 0, i32 1, !dbg !1513
  %30 = load volatile i64, ptr %29, align 8, !dbg !1513
  %31 = add i64 %30, 1, !dbg !1514
  %32 = mul i64 28, %31, !dbg !1515
  %33 = call ptr @realloc(ptr noundef %27, i64 noundef %32) #11, !dbg !1516
  %34 = load ptr, ptr %6, align 8, !dbg !1517
  %35 = getelementptr inbounds %struct._turn_server_addrs_list, ptr %34, i32 0, i32 0, !dbg !1518
  store ptr %33, ptr %35, align 8, !dbg !1519
  %36 = load ptr, ptr %6, align 8, !dbg !1520
  %37 = getelementptr inbounds %struct._turn_server_addrs_list, ptr %36, i32 0, i32 0, !dbg !1521
  %38 = load ptr, ptr %37, align 8, !dbg !1521
  %39 = load ptr, ptr %6, align 8, !dbg !1522
  %40 = getelementptr inbounds %struct._turn_server_addrs_list, ptr %39, i32 0, i32 1, !dbg !1523
  %41 = load volatile i64, ptr %40, align 8, !dbg !1524
  %42 = add i64 %41, 1, !dbg !1524
  store volatile i64 %42, ptr %40, align 8, !dbg !1524
  %43 = getelementptr inbounds %union.ioa_addr, ptr %38, i64 %41, !dbg !1520
  call void @addr_cpy(ptr noundef %43, ptr noundef %7), !dbg !1525
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1526, metadata !DIExpression()), !dbg !1528
  %44 = getelementptr inbounds [1025 x i8], ptr %8, i64 0, i64 0, !dbg !1529
  %45 = call i32 @addr_to_string(ptr noundef %7, ptr noundef %44), !dbg !1530
  %46 = getelementptr inbounds [1025 x i8], ptr %8, i64 0, i64 0, !dbg !1531
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.19, ptr noundef %46), !dbg !1532
  br label %47

47:                                               ; preds = %24, %22
  %48 = load ptr, ptr %6, align 8, !dbg !1533
  %49 = getelementptr inbounds %struct._turn_server_addrs_list, ptr %48, i32 0, i32 2, !dbg !1534
  %50 = call i32 @turn_mutex_unlock(ptr noundef %49), !dbg !1535
  br label %51, !dbg !1536

51:                                               ; preds = %47, %11, %3
  ret void, !dbg !1537
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @del_alternate_server(ptr noundef %0) #0 !dbg !1538 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1539, metadata !DIExpression()), !dbg !1540
  %3 = load ptr, ptr %2, align 8, !dbg !1541
  call void @del_alt_server(ptr noundef %3, i32 noundef 3478, ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 64)), !dbg !1542
  ret void, !dbg !1543
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @del_alt_server(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 !dbg !1544 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca %union.ioa_addr, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  %12 = alloca [1025 x i8], align 16
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1545, metadata !DIExpression()), !dbg !1546
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1547, metadata !DIExpression()), !dbg !1548
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1549, metadata !DIExpression()), !dbg !1550
  %13 = load ptr, ptr %4, align 8, !dbg !1551
  %14 = icmp ne ptr %13, null, !dbg !1551
  br i1 %14, label %15, label %128, !dbg !1553

15:                                               ; preds = %3
  %16 = load ptr, ptr %6, align 8, !dbg !1554
  %17 = icmp ne ptr %16, null, !dbg !1554
  br i1 %17, label %18, label %128, !dbg !1555

18:                                               ; preds = %15
  %19 = load ptr, ptr %6, align 8, !dbg !1556
  %20 = getelementptr inbounds %struct._turn_server_addrs_list, ptr %19, i32 0, i32 1, !dbg !1557
  %21 = load volatile i64, ptr %20, align 8, !dbg !1557
  %22 = icmp ne i64 %21, 0, !dbg !1556
  br i1 %22, label %23, label %128, !dbg !1558

23:                                               ; preds = %18
  %24 = load ptr, ptr %6, align 8, !dbg !1559
  %25 = getelementptr inbounds %struct._turn_server_addrs_list, ptr %24, i32 0, i32 0, !dbg !1560
  %26 = load ptr, ptr %25, align 8, !dbg !1560
  %27 = icmp ne ptr %26, null, !dbg !1559
  br i1 %27, label %28, label %128, !dbg !1561

28:                                               ; preds = %23
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1562, metadata !DIExpression()), !dbg !1564
  %29 = load ptr, ptr %6, align 8, !dbg !1565
  %30 = getelementptr inbounds %struct._turn_server_addrs_list, ptr %29, i32 0, i32 2, !dbg !1566
  %31 = call i32 @turn_mutex_lock(ptr noundef %30), !dbg !1567
  %32 = load ptr, ptr %4, align 8, !dbg !1568
  %33 = load i32, ptr %5, align 4, !dbg !1570
  %34 = call i32 @make_ioa_addr_from_full_string(ptr noundef %32, i32 noundef %33, ptr noundef %7), !dbg !1571
  %35 = icmp ne i32 %34, 0, !dbg !1572
  br i1 %35, label %36, label %38, !dbg !1573

36:                                               ; preds = %28
  %37 = load ptr, ptr %4, align 8, !dbg !1574
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.18, ptr noundef %37), !dbg !1576
  br label %124, !dbg !1577

38:                                               ; preds = %28
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1578, metadata !DIExpression()), !dbg !1580
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1581, metadata !DIExpression()), !dbg !1582
  store i32 0, ptr %9, align 4, !dbg !1582
  store i64 0, ptr %8, align 8, !dbg !1583
  br label %39, !dbg !1585

39:                                               ; preds = %55, %38
  %40 = load i64, ptr %8, align 8, !dbg !1586
  %41 = load ptr, ptr %6, align 8, !dbg !1588
  %42 = getelementptr inbounds %struct._turn_server_addrs_list, ptr %41, i32 0, i32 1, !dbg !1589
  %43 = load volatile i64, ptr %42, align 8, !dbg !1589
  %44 = icmp ult i64 %40, %43, !dbg !1590
  br i1 %44, label %45, label %58, !dbg !1591

45:                                               ; preds = %39
  %46 = load ptr, ptr %6, align 8, !dbg !1592
  %47 = getelementptr inbounds %struct._turn_server_addrs_list, ptr %46, i32 0, i32 0, !dbg !1595
  %48 = load ptr, ptr %47, align 8, !dbg !1595
  %49 = load i64, ptr %8, align 8, !dbg !1596
  %50 = getelementptr inbounds %union.ioa_addr, ptr %48, i64 %49, !dbg !1592
  %51 = call i32 @addr_eq(ptr noundef %50, ptr noundef %7), !dbg !1597
  %52 = icmp ne i32 %51, 0, !dbg !1597
  br i1 %52, label %53, label %54, !dbg !1598

53:                                               ; preds = %45
  store i32 1, ptr %9, align 4, !dbg !1599
  br label %58, !dbg !1601

54:                                               ; preds = %45
  br label %55, !dbg !1602

55:                                               ; preds = %54
  %56 = load i64, ptr %8, align 8, !dbg !1603
  %57 = add i64 %56, 1, !dbg !1603
  store i64 %57, ptr %8, align 8, !dbg !1603
  br label %39, !dbg !1604, !llvm.loop !1605

58:                                               ; preds = %53, %39
  %59 = load i32, ptr %9, align 4, !dbg !1608
  %60 = icmp ne i32 %59, 0, !dbg !1608
  br i1 %60, label %61, label %123, !dbg !1610

61:                                               ; preds = %58
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1611, metadata !DIExpression()), !dbg !1613
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1614, metadata !DIExpression()), !dbg !1615
  %62 = load ptr, ptr %6, align 8, !dbg !1616
  %63 = getelementptr inbounds %struct._turn_server_addrs_list, ptr %62, i32 0, i32 1, !dbg !1617
  %64 = load volatile i64, ptr %63, align 8, !dbg !1617
  %65 = sub i64 %64, 1, !dbg !1618
  %66 = mul i64 28, %65, !dbg !1619
  %67 = call noalias ptr @malloc(i64 noundef %66) #12, !dbg !1620
  store ptr %67, ptr %11, align 8, !dbg !1615
  store i64 0, ptr %10, align 8, !dbg !1621
  br label %68, !dbg !1623

68:                                               ; preds = %81, %61
  %69 = load i64, ptr %10, align 8, !dbg !1624
  %70 = load i64, ptr %8, align 8, !dbg !1626
  %71 = icmp ult i64 %69, %70, !dbg !1627
  br i1 %71, label %72, label %84, !dbg !1628

72:                                               ; preds = %68
  %73 = load ptr, ptr %11, align 8, !dbg !1629
  %74 = load i64, ptr %10, align 8, !dbg !1631
  %75 = getelementptr inbounds %union.ioa_addr, ptr %73, i64 %74, !dbg !1629
  %76 = load ptr, ptr %6, align 8, !dbg !1632
  %77 = getelementptr inbounds %struct._turn_server_addrs_list, ptr %76, i32 0, i32 0, !dbg !1633
  %78 = load ptr, ptr %77, align 8, !dbg !1633
  %79 = load i64, ptr %10, align 8, !dbg !1634
  %80 = getelementptr inbounds %union.ioa_addr, ptr %78, i64 %79, !dbg !1632
  call void @addr_cpy(ptr noundef %75, ptr noundef %80), !dbg !1635
  br label %81, !dbg !1636

81:                                               ; preds = %72
  %82 = load i64, ptr %10, align 8, !dbg !1637
  %83 = add i64 %82, 1, !dbg !1637
  store i64 %83, ptr %10, align 8, !dbg !1637
  br label %68, !dbg !1638, !llvm.loop !1639

84:                                               ; preds = %68
  %85 = load i64, ptr %8, align 8, !dbg !1641
  store i64 %85, ptr %10, align 8, !dbg !1643
  br label %86, !dbg !1644

86:                                               ; preds = %103, %84
  %87 = load i64, ptr %10, align 8, !dbg !1645
  %88 = load ptr, ptr %6, align 8, !dbg !1647
  %89 = getelementptr inbounds %struct._turn_server_addrs_list, ptr %88, i32 0, i32 1, !dbg !1648
  %90 = load volatile i64, ptr %89, align 8, !dbg !1648
  %91 = sub i64 %90, 1, !dbg !1649
  %92 = icmp ult i64 %87, %91, !dbg !1650
  br i1 %92, label %93, label %106, !dbg !1651

93:                                               ; preds = %86
  %94 = load ptr, ptr %11, align 8, !dbg !1652
  %95 = load i64, ptr %10, align 8, !dbg !1654
  %96 = getelementptr inbounds %union.ioa_addr, ptr %94, i64 %95, !dbg !1652
  %97 = load ptr, ptr %6, align 8, !dbg !1655
  %98 = getelementptr inbounds %struct._turn_server_addrs_list, ptr %97, i32 0, i32 0, !dbg !1656
  %99 = load ptr, ptr %98, align 8, !dbg !1656
  %100 = load i64, ptr %10, align 8, !dbg !1657
  %101 = add i64 %100, 1, !dbg !1658
  %102 = getelementptr inbounds %union.ioa_addr, ptr %99, i64 %101, !dbg !1655
  call void @addr_cpy(ptr noundef %96, ptr noundef %102), !dbg !1659
  br label %103, !dbg !1660

103:                                              ; preds = %93
  %104 = load i64, ptr %10, align 8, !dbg !1661
  %105 = add i64 %104, 1, !dbg !1661
  store i64 %105, ptr %10, align 8, !dbg !1661
  br label %86, !dbg !1662, !llvm.loop !1663

106:                                              ; preds = %86
  %107 = load ptr, ptr %6, align 8, !dbg !1665
  %108 = getelementptr inbounds %struct._turn_server_addrs_list, ptr %107, i32 0, i32 0, !dbg !1666
  %109 = load ptr, ptr %108, align 8, !dbg !1666
  call void @free(ptr noundef %109) #10, !dbg !1667
  %110 = load ptr, ptr %11, align 8, !dbg !1668
  %111 = load ptr, ptr %6, align 8, !dbg !1669
  %112 = getelementptr inbounds %struct._turn_server_addrs_list, ptr %111, i32 0, i32 0, !dbg !1670
  store ptr %110, ptr %112, align 8, !dbg !1671
  %113 = load ptr, ptr %6, align 8, !dbg !1672
  %114 = getelementptr inbounds %struct._turn_server_addrs_list, ptr %113, i32 0, i32 1, !dbg !1673
  %115 = load volatile i64, ptr %114, align 8, !dbg !1674
  %116 = sub i64 %115, 1, !dbg !1674
  store volatile i64 %116, ptr %114, align 8, !dbg !1674
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1675, metadata !DIExpression()), !dbg !1677
  %117 = getelementptr inbounds [1025 x i8], ptr %12, i64 0, i64 0, !dbg !1678
  %118 = call i32 @addr_to_string(ptr noundef %7, ptr noundef %117), !dbg !1679
  %119 = getelementptr inbounds [1025 x i8], ptr %12, i64 0, i64 0, !dbg !1680
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.20, ptr noundef %119), !dbg !1681
  %120 = load ptr, ptr %4, align 8, !dbg !1682
  %121 = load i32, ptr %5, align 4, !dbg !1683
  %122 = load ptr, ptr %6, align 8, !dbg !1684
  call void @del_alt_server(ptr noundef %120, i32 noundef %121, ptr noundef %122), !dbg !1685
  br label %123, !dbg !1686

123:                                              ; preds = %106, %58
  br label %124

124:                                              ; preds = %123, %36
  %125 = load ptr, ptr %6, align 8, !dbg !1687
  %126 = getelementptr inbounds %struct._turn_server_addrs_list, ptr %125, i32 0, i32 2, !dbg !1688
  %127 = call i32 @turn_mutex_unlock(ptr noundef %126), !dbg !1689
  br label %128, !dbg !1690

128:                                              ; preds = %124, %23, %18, %15, %3
  ret void, !dbg !1691
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_tls_alternate_server(ptr noundef %0) #0 !dbg !1692 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1693, metadata !DIExpression()), !dbg !1694
  %3 = load ptr, ptr %2, align 8, !dbg !1695
  call void @add_alt_server(ptr noundef %3, i32 noundef 5349, ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 65)), !dbg !1696
  ret void, !dbg !1697
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @del_tls_alternate_server(ptr noundef %0) #0 !dbg !1698 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1699, metadata !DIExpression()), !dbg !1700
  %3 = load ptr, ptr %2, align 8, !dbg !1701
  call void @del_alt_server(ptr noundef %3, i32 noundef 5349, ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 65)), !dbg !1702
  ret void, !dbg !1703
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_ssl_ctx(ptr noundef %0, ptr noundef %1) #0 !dbg !1704 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1707, metadata !DIExpression()), !dbg !1708
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1709, metadata !DIExpression()), !dbg !1710
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1711, metadata !DIExpression()), !dbg !1712
  %8 = call noalias ptr @malloc(i64 noundef 24) #12, !dbg !1713
  store ptr %8, ptr %5, align 8, !dbg !1712
  %9 = load ptr, ptr %3, align 8, !dbg !1714
  %10 = load ptr, ptr %5, align 8, !dbg !1715
  %11 = getelementptr inbounds %struct.update_ssl_ctx_cb_args, ptr %10, i32 0, i32 0, !dbg !1716
  store ptr %9, ptr %11, align 8, !dbg !1717
  %12 = load ptr, ptr %4, align 8, !dbg !1718
  %13 = load ptr, ptr %5, align 8, !dbg !1719
  %14 = getelementptr inbounds %struct.update_ssl_ctx_cb_args, ptr %13, i32 0, i32 1, !dbg !1720
  store ptr %12, ptr %14, align 8, !dbg !1721
  %15 = load ptr, ptr %5, align 8, !dbg !1722
  %16 = getelementptr inbounds %struct.update_ssl_ctx_cb_args, ptr %15, i32 0, i32 2, !dbg !1723
  store ptr null, ptr %16, align 8, !dbg !1724
  %17 = load ptr, ptr %5, align 8, !dbg !1725
  call void @update_ssl_ctx(i32 noundef -1, i16 noundef signext 0, ptr noundef %17), !dbg !1726
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1727, metadata !DIExpression()), !dbg !1728
  %18 = load ptr, ptr %3, align 8, !dbg !1729
  %19 = getelementptr inbounds %struct._ioa_engine, ptr %18, i32 0, i32 1, !dbg !1730
  %20 = load ptr, ptr %19, align 8, !dbg !1730
  store ptr %20, ptr %6, align 8, !dbg !1728
  %21 = load ptr, ptr %6, align 8, !dbg !1731
  %22 = icmp ne ptr %21, null, !dbg !1733
  br i1 %22, label %23, label %37, !dbg !1734

23:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1735, metadata !DIExpression()), !dbg !1737
  %24 = load ptr, ptr %6, align 8, !dbg !1738
  %25 = load ptr, ptr %5, align 8, !dbg !1739
  %26 = call ptr @event_new(ptr noundef %24, i32 noundef -1, i16 noundef signext 16, ptr noundef @update_ssl_ctx, ptr noundef %25), !dbg !1740
  store ptr %26, ptr %7, align 8, !dbg !1737
  %27 = call i32 @pthread_mutex_lock(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 20)) #10, !dbg !1741
  %28 = load ptr, ptr %4, align 8, !dbg !1742
  %29 = getelementptr inbounds %struct._turn_params_, ptr %28, i32 0, i32 19, !dbg !1743
  %30 = load ptr, ptr %29, align 8, !dbg !1743
  %31 = load ptr, ptr %5, align 8, !dbg !1744
  %32 = getelementptr inbounds %struct.update_ssl_ctx_cb_args, ptr %31, i32 0, i32 2, !dbg !1745
  store ptr %30, ptr %32, align 8, !dbg !1746
  %33 = load ptr, ptr %7, align 8, !dbg !1747
  %34 = load ptr, ptr %4, align 8, !dbg !1748
  %35 = getelementptr inbounds %struct._turn_params_, ptr %34, i32 0, i32 19, !dbg !1749
  store ptr %33, ptr %35, align 8, !dbg !1750
  %36 = call i32 @pthread_mutex_unlock(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 20)) #10, !dbg !1751
  br label %37, !dbg !1752

37:                                               ; preds = %23, %2
  ret void, !dbg !1753
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_ssl_ctx(i32 noundef %0, i16 noundef signext %1, ptr noundef %2) #0 !dbg !1754 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1757, metadata !DIExpression()), !dbg !1758
  store i16 %1, ptr %5, align 2
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1759, metadata !DIExpression()), !dbg !1760
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1761, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1763, metadata !DIExpression()), !dbg !1764
  %10 = load ptr, ptr %6, align 8, !dbg !1765
  %11 = getelementptr inbounds %struct.update_ssl_ctx_cb_args, ptr %10, i32 0, i32 0, !dbg !1766
  %12 = load ptr, ptr %11, align 8, !dbg !1766
  store ptr %12, ptr %7, align 8, !dbg !1764
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1767, metadata !DIExpression()), !dbg !1768
  %13 = load ptr, ptr %6, align 8, !dbg !1769
  %14 = getelementptr inbounds %struct.update_ssl_ctx_cb_args, ptr %13, i32 0, i32 1, !dbg !1770
  %15 = load ptr, ptr %14, align 8, !dbg !1770
  store ptr %15, ptr %8, align 8, !dbg !1768
  %16 = call i32 @pthread_mutex_lock(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 20)) #10, !dbg !1771
  %17 = load ptr, ptr %8, align 8, !dbg !1772
  %18 = getelementptr inbounds %struct._turn_params_, ptr %17, i32 0, i32 0, !dbg !1773
  %19 = load ptr, ptr %18, align 8, !dbg !1773
  %20 = load ptr, ptr %7, align 8, !dbg !1774
  %21 = getelementptr inbounds %struct._ioa_engine, ptr %20, i32 0, i32 7, !dbg !1775
  store ptr %19, ptr %21, align 8, !dbg !1776
  %22 = load ptr, ptr %8, align 8, !dbg !1777
  %23 = getelementptr inbounds %struct._turn_params_, ptr %22, i32 0, i32 1, !dbg !1778
  %24 = load ptr, ptr %23, align 8, !dbg !1778
  %25 = load ptr, ptr %7, align 8, !dbg !1779
  %26 = getelementptr inbounds %struct._ioa_engine, ptr %25, i32 0, i32 8, !dbg !1780
  store ptr %24, ptr %26, align 8, !dbg !1781
  %27 = load ptr, ptr %8, align 8, !dbg !1782
  %28 = getelementptr inbounds %struct._turn_params_, ptr %27, i32 0, i32 2, !dbg !1783
  %29 = load ptr, ptr %28, align 8, !dbg !1783
  %30 = load ptr, ptr %7, align 8, !dbg !1784
  %31 = getelementptr inbounds %struct._ioa_engine, ptr %30, i32 0, i32 9, !dbg !1785
  store ptr %29, ptr %31, align 8, !dbg !1786
  %32 = load ptr, ptr %8, align 8, !dbg !1787
  %33 = getelementptr inbounds %struct._turn_params_, ptr %32, i32 0, i32 3, !dbg !1788
  %34 = load ptr, ptr %33, align 8, !dbg !1788
  %35 = load ptr, ptr %7, align 8, !dbg !1789
  %36 = getelementptr inbounds %struct._ioa_engine, ptr %35, i32 0, i32 10, !dbg !1790
  store ptr %34, ptr %36, align 8, !dbg !1791
  %37 = load ptr, ptr %8, align 8, !dbg !1792
  %38 = getelementptr inbounds %struct._turn_params_, ptr %37, i32 0, i32 4, !dbg !1793
  %39 = load ptr, ptr %38, align 8, !dbg !1793
  %40 = load ptr, ptr %7, align 8, !dbg !1794
  %41 = getelementptr inbounds %struct._ioa_engine, ptr %40, i32 0, i32 11, !dbg !1795
  store ptr %39, ptr %41, align 8, !dbg !1796
  %42 = load ptr, ptr %8, align 8, !dbg !1797
  %43 = getelementptr inbounds %struct._turn_params_, ptr %42, i32 0, i32 5, !dbg !1798
  %44 = load ptr, ptr %43, align 8, !dbg !1798
  %45 = load ptr, ptr %7, align 8, !dbg !1799
  %46 = getelementptr inbounds %struct._ioa_engine, ptr %45, i32 0, i32 12, !dbg !1800
  store ptr %44, ptr %46, align 8, !dbg !1801
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1802, metadata !DIExpression()), !dbg !1803
  %47 = load ptr, ptr %6, align 8, !dbg !1804
  %48 = getelementptr inbounds %struct.update_ssl_ctx_cb_args, ptr %47, i32 0, i32 2, !dbg !1805
  %49 = load ptr, ptr %48, align 8, !dbg !1805
  store ptr %49, ptr %9, align 8, !dbg !1803
  %50 = call i32 @pthread_mutex_unlock(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 20)) #10, !dbg !1806
  %51 = load ptr, ptr %9, align 8, !dbg !1807
  %52 = icmp ne ptr %51, null, !dbg !1809
  br i1 %52, label %53, label %55, !dbg !1810

53:                                               ; preds = %3
  %54 = load ptr, ptr %9, align 8, !dbg !1811
  call void @event_active(ptr noundef %54, i32 noundef 2, i16 noundef signext 0), !dbg !1812
  br label %55, !dbg !1812

55:                                               ; preds = %53, %3
  br label %56, !dbg !1813

56:                                               ; preds = %55
  %57 = load i32, ptr %4, align 4, !dbg !1814
  store i32 %57, ptr %4, align 4, !dbg !1814
  br label %58, !dbg !1814

58:                                               ; preds = %56
  br label %59, !dbg !1816

59:                                               ; preds = %58
  %60 = load i16, ptr %5, align 2, !dbg !1817
  store i16 %60, ptr %5, align 2, !dbg !1817
  br label %61, !dbg !1817

61:                                               ; preds = %59
  ret void, !dbg !1819
}

declare ptr @event_new(ptr noundef, i32 noundef, i16 noundef signext, ptr noundef, ptr noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_listener_addr(ptr noundef %0) #0 !dbg !1820 {
  %2 = alloca ptr, align 8
  %3 = alloca %union.ioa_addr, align 4
  %4 = alloca [129 x i8], align 16
  %5 = alloca i64, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1821, metadata !DIExpression()), !dbg !1822
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1823, metadata !DIExpression()), !dbg !1824
  %6 = load ptr, ptr %2, align 8, !dbg !1825
  %7 = call i32 @make_ioa_addr(ptr noundef %6, i32 noundef 0, ptr noundef %3), !dbg !1827
  %8 = icmp slt i32 %7, 0, !dbg !1828
  br i1 %8, label %9, label %11, !dbg !1829

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 8, !dbg !1830
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str, ptr noundef %10), !dbg !1832
  br label %60, !dbg !1833

11:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1834, metadata !DIExpression()), !dbg !1839
  %12 = getelementptr inbounds [129 x i8], ptr %4, i64 0, i64 0, !dbg !1840
  %13 = call i32 @addr_to_string_no_port(ptr noundef %3, ptr noundef %12), !dbg !1841
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1842, metadata !DIExpression()), !dbg !1843
  store i64 0, ptr %5, align 8, !dbg !1843
  store i64 0, ptr %5, align 8, !dbg !1844
  br label %14, !dbg !1846

14:                                               ; preds = %27, %11
  %15 = load i64, ptr %5, align 8, !dbg !1847
  %16 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 8), align 8, !dbg !1849
  %17 = icmp ult i64 %15, %16, !dbg !1850
  br i1 %17, label %18, label %30, !dbg !1851

18:                                               ; preds = %14
  %19 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 7), align 8, !dbg !1852
  %20 = load i64, ptr %5, align 8, !dbg !1855
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20, !dbg !1856
  %22 = load ptr, ptr %21, align 8, !dbg !1856
  %23 = call i32 @addr_eq(ptr noundef %22, ptr noundef %3), !dbg !1857
  %24 = icmp ne i32 %23, 0, !dbg !1857
  br i1 %24, label %25, label %26, !dbg !1858

25:                                               ; preds = %18
  br label %60, !dbg !1859

26:                                               ; preds = %18
  br label %27, !dbg !1861

27:                                               ; preds = %26
  %28 = load i64, ptr %5, align 8, !dbg !1862
  %29 = add i64 %28, 1, !dbg !1862
  store i64 %29, ptr %5, align 8, !dbg !1862
  br label %14, !dbg !1863, !llvm.loop !1864

30:                                               ; preds = %14
  %31 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 8), align 8, !dbg !1866
  %32 = add i64 %31, 1, !dbg !1866
  store i64 %32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 8), align 8, !dbg !1866
  %33 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 9), align 8, !dbg !1867
  %34 = add i64 %33, 1, !dbg !1867
  store i64 %34, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 9), align 8, !dbg !1867
  %35 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 6), align 8, !dbg !1868
  %36 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 8), align 8, !dbg !1869
  %37 = mul i64 8, %36, !dbg !1870
  %38 = call ptr @realloc(ptr noundef %35, i64 noundef %37) #11, !dbg !1871
  store ptr %38, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 6), align 8, !dbg !1872
  %39 = getelementptr inbounds [129 x i8], ptr %4, i64 0, i64 0, !dbg !1873
  %40 = call noalias ptr @strdup(ptr noundef %39) #10, !dbg !1874
  %41 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 6), align 8, !dbg !1875
  %42 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 8), align 8, !dbg !1876
  %43 = sub i64 %42, 1, !dbg !1877
  %44 = getelementptr inbounds ptr, ptr %41, i64 %43, !dbg !1878
  store ptr %40, ptr %44, align 8, !dbg !1879
  %45 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 7), align 8, !dbg !1880
  %46 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 8), align 8, !dbg !1881
  %47 = mul i64 8, %46, !dbg !1882
  %48 = call ptr @realloc(ptr noundef %45, i64 noundef %47) #11, !dbg !1883
  store ptr %48, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 7), align 8, !dbg !1884
  %49 = call noalias ptr @malloc(i64 noundef 28) #12, !dbg !1885
  %50 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 7), align 8, !dbg !1886
  %51 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 8), align 8, !dbg !1887
  %52 = sub i64 %51, 1, !dbg !1888
  %53 = getelementptr inbounds ptr, ptr %50, i64 %52, !dbg !1889
  store ptr %49, ptr %53, align 8, !dbg !1890
  %54 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 7), align 8, !dbg !1891
  %55 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 8), align 8, !dbg !1892
  %56 = sub i64 %55, 1, !dbg !1893
  %57 = getelementptr inbounds ptr, ptr %54, i64 %56, !dbg !1894
  %58 = load ptr, ptr %57, align 8, !dbg !1894
  call void @addr_cpy(ptr noundef %58, ptr noundef %3), !dbg !1895
  %59 = getelementptr inbounds [129 x i8], ptr %4, i64 0, i64 0, !dbg !1896
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.1, ptr noundef %59), !dbg !1897
  br label %60

60:                                               ; preds = %25, %30, %9
  ret void, !dbg !1898
}

declare i32 @make_ioa_addr(ptr noundef, i32 noundef, ptr noundef) #4

declare void @turn_log_func_default(i32 noundef, ptr noundef, ...) #4

declare i32 @addr_to_string_no_port(ptr noundef, ptr noundef) #4

declare i32 @addr_eq(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind allocsize(1)
declare ptr @realloc(ptr noundef, i64 noundef) #5

; Function Attrs: nounwind
declare noalias ptr @strdup(ptr noundef) #2

declare void @addr_cpy(ptr noundef, ptr noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add_relay_addr(ptr noundef %0) #0 !dbg !1899 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca %union.ioa_addr, align 4
  %5 = alloca [129 x i8], align 16
  %6 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1902, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1904, metadata !DIExpression()), !dbg !1905
  %7 = load ptr, ptr %3, align 8, !dbg !1906
  %8 = call i32 @make_ioa_addr(ptr noundef %7, i32 noundef 0, ptr noundef %4), !dbg !1908
  %9 = icmp slt i32 %8, 0, !dbg !1909
  br i1 %9, label %10, label %12, !dbg !1910

10:                                               ; preds = %1
  %11 = load ptr, ptr %3, align 8, !dbg !1911
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.2, ptr noundef %11), !dbg !1913
  store i32 -1, ptr %2, align 4, !dbg !1914
  br label %46, !dbg !1914

12:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1915, metadata !DIExpression()), !dbg !1917
  %13 = getelementptr inbounds [129 x i8], ptr %5, i64 0, i64 0, !dbg !1918
  %14 = call i32 @addr_to_string_no_port(ptr noundef %4, ptr noundef %13), !dbg !1919
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1920, metadata !DIExpression()), !dbg !1921
  store i64 0, ptr %6, align 8, !dbg !1921
  store i64 0, ptr %6, align 8, !dbg !1922
  br label %15, !dbg !1924

15:                                               ; preds = %29, %12
  %16 = load i64, ptr %6, align 8, !dbg !1925
  %17 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 53), align 8, !dbg !1927
  %18 = icmp ult i64 %16, %17, !dbg !1928
  br i1 %18, label %19, label %32, !dbg !1929

19:                                               ; preds = %15
  %20 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 54), align 8, !dbg !1930
  %21 = load i64, ptr %6, align 8, !dbg !1933
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21, !dbg !1934
  %23 = load ptr, ptr %22, align 8, !dbg !1934
  %24 = getelementptr inbounds [129 x i8], ptr %5, i64 0, i64 0, !dbg !1935
  %25 = call i32 @strcmp(ptr noundef %23, ptr noundef %24) #13, !dbg !1936
  %26 = icmp ne i32 %25, 0, !dbg !1936
  br i1 %26, label %28, label %27, !dbg !1937

27:                                               ; preds = %19
  store i32 0, ptr %2, align 4, !dbg !1938
  br label %46, !dbg !1938

28:                                               ; preds = %19
  br label %29, !dbg !1940

29:                                               ; preds = %28
  %30 = load i64, ptr %6, align 8, !dbg !1941
  %31 = add i64 %30, 1, !dbg !1941
  store i64 %31, ptr %6, align 8, !dbg !1941
  br label %15, !dbg !1942, !llvm.loop !1943

32:                                               ; preds = %15
  %33 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 53), align 8, !dbg !1945
  %34 = add i64 %33, 1, !dbg !1945
  store i64 %34, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 53), align 8, !dbg !1945
  %35 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 54), align 8, !dbg !1946
  %36 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 53), align 8, !dbg !1947
  %37 = mul i64 8, %36, !dbg !1948
  %38 = call ptr @realloc(ptr noundef %35, i64 noundef %37) #11, !dbg !1949
  store ptr %38, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 54), align 8, !dbg !1950
  %39 = getelementptr inbounds [129 x i8], ptr %5, i64 0, i64 0, !dbg !1951
  %40 = call noalias ptr @strdup(ptr noundef %39) #10, !dbg !1952
  %41 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 54), align 8, !dbg !1953
  %42 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 53), align 8, !dbg !1954
  %43 = sub i64 %42, 1, !dbg !1955
  %44 = getelementptr inbounds ptr, ptr %41, i64 %43, !dbg !1956
  store ptr %40, ptr %44, align 8, !dbg !1957
  %45 = getelementptr inbounds [129 x i8], ptr %5, i64 0, i64 0, !dbg !1958
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.3, ptr noundef %45), !dbg !1959
  store i32 1, ptr %2, align 4, !dbg !1960
  br label %46, !dbg !1960

46:                                               ; preds = %32, %27, %10
  %47 = load i32, ptr %2, align 4, !dbg !1961
  ret i32 %47, !dbg !1961
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @send_auth_message_to_auth_server(ptr noundef %0) #0 !dbg !1962 {
  %2 = alloca ptr, align 8
  %3 = alloca i8, align 1
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1982, metadata !DIExpression()), !dbg !1983
  %5 = call i32 @pthread_mutex_lock(ptr noundef @auth_message_counter_mutex) #10, !dbg !1984
  %6 = load i8, ptr @auth_message_counter, align 1, !dbg !1985
  %7 = zext i8 %6 to i32, !dbg !1985
  %8 = load i8, ptr @authserver_number, align 1, !dbg !1987
  %9 = zext i8 %8 to i32, !dbg !1987
  %10 = icmp sge i32 %7, %9, !dbg !1988
  br i1 %10, label %11, label %12, !dbg !1989

11:                                               ; preds = %1
  store i8 1, ptr @auth_message_counter, align 1, !dbg !1990
  br label %18, !dbg !1991

12:                                               ; preds = %1
  %13 = load i8, ptr @auth_message_counter, align 1, !dbg !1992
  %14 = zext i8 %13 to i32, !dbg !1992
  %15 = icmp slt i32 %14, 1, !dbg !1994
  br i1 %15, label %16, label %17, !dbg !1995

16:                                               ; preds = %12
  store i8 1, ptr @auth_message_counter, align 1, !dbg !1996
  br label %17, !dbg !1997

17:                                               ; preds = %16, %12
  br label %18

18:                                               ; preds = %17, %11
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1998, metadata !DIExpression()), !dbg !1999
  %19 = load i8, ptr @auth_message_counter, align 1, !dbg !2000
  %20 = add i8 %19, 1, !dbg !2000
  store i8 %20, ptr @auth_message_counter, align 1, !dbg !2000
  store i8 %19, ptr %3, align 1, !dbg !1999
  %21 = call i32 @pthread_mutex_unlock(ptr noundef @auth_message_counter_mutex) #10, !dbg !2001
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2002, metadata !DIExpression()), !dbg !2005
  %22 = load i8, ptr %3, align 1, !dbg !2006
  %23 = zext i8 %22 to i64, !dbg !2007
  %24 = getelementptr inbounds [256 x %struct.auth_server], ptr @authserver, i64 0, i64 %23, !dbg !2007
  %25 = getelementptr inbounds %struct.auth_server, ptr %24, i32 0, i32 3, !dbg !2008
  %26 = load ptr, ptr %25, align 8, !dbg !2008
  %27 = call ptr @bufferevent_get_output(ptr noundef %26), !dbg !2009
  store ptr %27, ptr %4, align 8, !dbg !2005
  %28 = load ptr, ptr %4, align 8, !dbg !2010
  %29 = load ptr, ptr %2, align 8, !dbg !2012
  %30 = call i32 @evbuffer_add(ptr noundef %28, ptr noundef %29, i64 noundef 1056), !dbg !2013
  %31 = icmp slt i32 %30, 0, !dbg !2014
  br i1 %31, label %32, label %35, !dbg !2015

32:                                               ; preds = %18
  %33 = load ptr, ptr @stderr, align 8, !dbg !2016
  %34 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef @.str.4, ptr noundef @__FUNCTION__.send_auth_message_to_auth_server), !dbg !2018
  br label %35, !dbg !2019

35:                                               ; preds = %32, %18
  ret void, !dbg !2020
}

declare ptr @bufferevent_get_output(ptr noundef) #4

declare i32 @evbuffer_add(ptr noundef, ptr noundef, i64 noundef) #4

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @send_session_cancellation_to_relay(i64 noundef %0) #0 !dbg !2021 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.message_to_relay, align 8
  %5 = alloca i8, align 1
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  store i64 %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2024, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2026, metadata !DIExpression()), !dbg !2027
  store i32 0, ptr %3, align 4, !dbg !2027
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2028, metadata !DIExpression()), !dbg !2056
  call void @llvm.memset.p0.i64(ptr align 8 %4, i8 0, i64 112, i1 false), !dbg !2057
  %10 = getelementptr inbounds %struct.message_to_relay, ptr %4, i32 0, i32 0, !dbg !2058
  store i32 4, ptr %10, align 8, !dbg !2059
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2060, metadata !DIExpression()), !dbg !2061
  %11 = load i64, ptr %2, align 8, !dbg !2062
  %12 = udiv i64 %11, 1000000000000000, !dbg !2063
  %13 = trunc i64 %12 to i8, !dbg !2064
  store i8 %13, ptr %5, align 1, !dbg !2061
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2065, metadata !DIExpression()), !dbg !2066
  store ptr null, ptr %6, align 8, !dbg !2066
  %14 = load i8, ptr %5, align 1, !dbg !2067
  %15 = zext i8 %14 to i32, !dbg !2067
  %16 = icmp sge i32 %15, 128, !dbg !2069
  br i1 %16, label %17, label %65, !dbg !2070

17:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2071, metadata !DIExpression()), !dbg !2073
  %18 = load i8, ptr %5, align 1, !dbg !2074
  %19 = zext i8 %18 to i32, !dbg !2074
  %20 = sub nsw i32 %19, 128, !dbg !2075
  %21 = sext i32 %20 to i64, !dbg !2074
  store i64 %21, ptr %7, align 8, !dbg !2073
  %22 = load i64, ptr %7, align 8, !dbg !2076
  %23 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 58), align 1, !dbg !2078
  %24 = zext i8 %23 to i32, !dbg !2078
  %25 = icmp sgt i32 %24, 1, !dbg !2078
  br i1 %25, label %26, label %29, !dbg !2078

26:                                               ; preds = %17
  %27 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 58), align 1, !dbg !2078
  %28 = zext i8 %27 to i32, !dbg !2078
  br label %30, !dbg !2078

29:                                               ; preds = %17
  br label %30, !dbg !2078

30:                                               ; preds = %29, %26
  %31 = phi i32 [ %28, %26 ], [ 1, %29 ], !dbg !2078
  %32 = sext i32 %31 to i64, !dbg !2078
  %33 = icmp uge i64 %22, %32, !dbg !2079
  br i1 %33, label %34, label %46, !dbg !2080

34:                                               ; preds = %30
  %35 = load i64, ptr %7, align 8, !dbg !2081
  %36 = trunc i64 %35 to i32, !dbg !2083
  %37 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 58), align 1, !dbg !2084
  %38 = zext i8 %37 to i32, !dbg !2084
  %39 = icmp sgt i32 %38, 1, !dbg !2084
  br i1 %39, label %40, label %43, !dbg !2084

40:                                               ; preds = %34
  %41 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 58), align 1, !dbg !2084
  %42 = zext i8 %41 to i32, !dbg !2084
  br label %44, !dbg !2084

43:                                               ; preds = %34
  br label %44, !dbg !2084

44:                                               ; preds = %43, %40
  %45 = phi i32 [ %42, %40 ], [ 1, %43 ], !dbg !2084
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.5, ptr noundef @__FUNCTION__.send_session_cancellation_to_relay, i32 noundef %36, i32 noundef %45), !dbg !2085
  store i32 -1, ptr %3, align 4, !dbg !2086
  br label %128, !dbg !2087

46:                                               ; preds = %30
  %47 = load i64, ptr %7, align 8, !dbg !2088
  %48 = getelementptr inbounds [256 x ptr], ptr @udp_relay_servers, i64 0, i64 %47, !dbg !2089
  %49 = load ptr, ptr %48, align 8, !dbg !2089
  store ptr %49, ptr %6, align 8, !dbg !2090
  %50 = load ptr, ptr %6, align 8, !dbg !2091
  %51 = icmp ne ptr %50, null, !dbg !2091
  br i1 %51, label %64, label %52, !dbg !2093

52:                                               ; preds = %46
  %53 = load i64, ptr %7, align 8, !dbg !2094
  %54 = trunc i64 %53 to i32, !dbg !2096
  %55 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 58), align 1, !dbg !2097
  %56 = zext i8 %55 to i32, !dbg !2097
  %57 = icmp sgt i32 %56, 1, !dbg !2097
  br i1 %57, label %58, label %61, !dbg !2097

58:                                               ; preds = %52
  %59 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 58), align 1, !dbg !2097
  %60 = zext i8 %59 to i32, !dbg !2097
  br label %62, !dbg !2097

61:                                               ; preds = %52
  br label %62, !dbg !2097

62:                                               ; preds = %61, %58
  %63 = phi i32 [ %60, %58 ], [ 1, %61 ], !dbg !2097
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.6, ptr noundef @__FUNCTION__.send_session_cancellation_to_relay, i32 noundef %54, i32 noundef %63), !dbg !2098
  store i32 -1, ptr %3, align 4, !dbg !2099
  br label %128, !dbg !2100

64:                                               ; preds = %46
  br label %111, !dbg !2101

65:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2102, metadata !DIExpression()), !dbg !2104
  %66 = load i8, ptr %5, align 1, !dbg !2105
  %67 = zext i8 %66 to i64, !dbg !2105
  store i64 %67, ptr %8, align 8, !dbg !2104
  %68 = load i64, ptr %8, align 8, !dbg !2106
  %69 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 57), align 8, !dbg !2108
  %70 = zext i8 %69 to i32, !dbg !2108
  %71 = icmp sgt i32 %70, 1, !dbg !2108
  br i1 %71, label %72, label %75, !dbg !2108

72:                                               ; preds = %65
  %73 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 57), align 8, !dbg !2108
  %74 = zext i8 %73 to i32, !dbg !2108
  br label %76, !dbg !2108

75:                                               ; preds = %65
  br label %76, !dbg !2108

76:                                               ; preds = %75, %72
  %77 = phi i32 [ %74, %72 ], [ 1, %75 ], !dbg !2108
  %78 = sext i32 %77 to i64, !dbg !2108
  %79 = icmp uge i64 %68, %78, !dbg !2109
  br i1 %79, label %80, label %92, !dbg !2110

80:                                               ; preds = %76
  %81 = load i64, ptr %8, align 8, !dbg !2111
  %82 = trunc i64 %81 to i32, !dbg !2113
  %83 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 57), align 8, !dbg !2114
  %84 = zext i8 %83 to i32, !dbg !2114
  %85 = icmp sgt i32 %84, 1, !dbg !2114
  br i1 %85, label %86, label %89, !dbg !2114

86:                                               ; preds = %80
  %87 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 57), align 8, !dbg !2114
  %88 = zext i8 %87 to i32, !dbg !2114
  br label %90, !dbg !2114

89:                                               ; preds = %80
  br label %90, !dbg !2114

90:                                               ; preds = %89, %86
  %91 = phi i32 [ %88, %86 ], [ 1, %89 ], !dbg !2114
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.7, ptr noundef @__FUNCTION__.send_session_cancellation_to_relay, i32 noundef %82, i32 noundef %91), !dbg !2115
  store i32 -1, ptr %3, align 4, !dbg !2116
  br label %128, !dbg !2117

92:                                               ; preds = %76
  %93 = load i64, ptr %8, align 8, !dbg !2118
  %94 = getelementptr inbounds [256 x ptr], ptr @general_relay_servers, i64 0, i64 %93, !dbg !2119
  %95 = load ptr, ptr %94, align 8, !dbg !2119
  store ptr %95, ptr %6, align 8, !dbg !2120
  %96 = load ptr, ptr %6, align 8, !dbg !2121
  %97 = icmp ne ptr %96, null, !dbg !2121
  br i1 %97, label %110, label %98, !dbg !2123

98:                                               ; preds = %92
  %99 = load i64, ptr %8, align 8, !dbg !2124
  %100 = trunc i64 %99 to i32, !dbg !2126
  %101 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 57), align 8, !dbg !2127
  %102 = zext i8 %101 to i32, !dbg !2127
  %103 = icmp sgt i32 %102, 1, !dbg !2127
  br i1 %103, label %104, label %107, !dbg !2127

104:                                              ; preds = %98
  %105 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 57), align 8, !dbg !2127
  %106 = zext i8 %105 to i32, !dbg !2127
  br label %108, !dbg !2127

107:                                              ; preds = %98
  br label %108, !dbg !2127

108:                                              ; preds = %107, %104
  %109 = phi i32 [ %106, %104 ], [ 1, %107 ], !dbg !2127
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.8, ptr noundef @__FUNCTION__.send_session_cancellation_to_relay, i32 noundef %100, i32 noundef %109), !dbg !2128
  store i32 -1, ptr %3, align 4, !dbg !2129
  br label %128, !dbg !2130

110:                                              ; preds = %92
  br label %111

111:                                              ; preds = %110, %64
  %112 = load ptr, ptr %6, align 8, !dbg !2131
  %113 = getelementptr inbounds %struct.message_to_relay, ptr %4, i32 0, i32 1, !dbg !2132
  store ptr %112, ptr %113, align 8, !dbg !2133
  %114 = load i64, ptr %2, align 8, !dbg !2134
  %115 = getelementptr inbounds %struct.message_to_relay, ptr %4, i32 0, i32 2, !dbg !2135
  %116 = getelementptr inbounds %struct.cancelled_session_message, ptr %115, i32 0, i32 0, !dbg !2136
  store i64 %114, ptr %116, align 8, !dbg !2137
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2138, metadata !DIExpression()), !dbg !2140
  %117 = load ptr, ptr %6, align 8, !dbg !2141
  %118 = getelementptr inbounds %struct.relay_server, ptr %117, i32 0, i32 4, !dbg !2142
  %119 = load ptr, ptr %118, align 8, !dbg !2142
  %120 = call ptr @bufferevent_get_output(ptr noundef %119), !dbg !2143
  store ptr %120, ptr %9, align 8, !dbg !2140
  %121 = load ptr, ptr %9, align 8, !dbg !2144
  %122 = icmp ne ptr %121, null, !dbg !2144
  br i1 %122, label %123, label %126, !dbg !2146

123:                                              ; preds = %111
  %124 = load ptr, ptr %9, align 8, !dbg !2147
  %125 = call i32 @evbuffer_add(ptr noundef %124, ptr noundef %4, i64 noundef 112), !dbg !2149
  br label %127, !dbg !2150

126:                                              ; preds = %111
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.9, ptr noundef @__FUNCTION__.send_session_cancellation_to_relay), !dbg !2151
  store i32 -1, ptr %3, align 4, !dbg !2153
  br label %127

127:                                              ; preds = %126, %123
  br label %128, !dbg !2154

128:                                              ; preds = %127, %108, %90, %62, %44
  call void @llvm.dbg.label(metadata !2155), !dbg !2156
  %129 = load i32, ptr %3, align 4, !dbg !2157
  ret i32 %129, !dbg !2158
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @run_listener_server(ptr noundef %0) #0 !dbg !2159 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2163, metadata !DIExpression()), !dbg !2164
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2165, metadata !DIExpression()), !dbg !2166
  store i32 0, ptr %3, align 4, !dbg !2166
  br label %4, !dbg !2167

4:                                                ; preds = %20, %1
  %5 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 66), align 8, !dbg !2168
  %6 = icmp ne i32 %5, 0, !dbg !2169
  %7 = xor i1 %6, true, !dbg !2169
  br i1 %7, label %8, label %27, !dbg !2167

8:                                                ; preds = %4
  %9 = call i32 @sd_notify(i32 noundef 0, ptr noundef @.str.10), !dbg !2170
  %10 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 21), align 8, !dbg !2172
  %11 = icmp eq i32 %10, 2, !dbg !2172
  br i1 %11, label %12, label %20, !dbg !2174

12:                                               ; preds = %8
  %13 = load i32, ptr %3, align 4, !dbg !2175
  %14 = add i32 %13, 1, !dbg !2175
  store i32 %14, ptr %3, align 4, !dbg !2175
  %15 = and i32 %13, 15, !dbg !2178
  %16 = icmp eq i32 %15, 0, !dbg !2179
  br i1 %16, label %17, label %19, !dbg !2180

17:                                               ; preds = %12
  %18 = load i32, ptr %3, align 4, !dbg !2181
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.11, ptr noundef @__FUNCTION__.run_listener_server, i32 noundef %18), !dbg !2183
  br label %19, !dbg !2184

19:                                               ; preds = %17, %12
  br label %20, !dbg !2185

20:                                               ; preds = %19, %8
  %21 = load ptr, ptr %2, align 8, !dbg !2186
  %22 = getelementptr inbounds %struct.listener_server, ptr %21, i32 0, i32 2, !dbg !2187
  %23 = load ptr, ptr %22, align 8, !dbg !2187
  %24 = load ptr, ptr %2, align 8, !dbg !2188
  %25 = getelementptr inbounds %struct.listener_server, ptr %24, i32 0, i32 3, !dbg !2189
  %26 = load ptr, ptr %25, align 8, !dbg !2189
  call void @run_events(ptr noundef %23, ptr noundef %26), !dbg !2190
  call void @rollover_logfile(), !dbg !2191
  br label %4, !dbg !2167, !llvm.loop !2192

27:                                               ; preds = %4
  %28 = call i32 @sd_notify(i32 noundef 0, ptr noundef @.str.12), !dbg !2194
  ret void, !dbg !2195
}

declare i32 @sd_notify(i32 noundef, ptr noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_events(ptr noundef %0, ptr noundef %1) #0 !dbg !2196 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.timeval, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2199, metadata !DIExpression()), !dbg !2200
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2201, metadata !DIExpression()), !dbg !2202
  %6 = load ptr, ptr %3, align 8, !dbg !2203
  %7 = icmp ne ptr %6, null, !dbg !2203
  br i1 %7, label %15, label %8, !dbg !2205

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 8, !dbg !2206
  %10 = icmp ne ptr %9, null, !dbg !2206
  br i1 %10, label %11, label %15, !dbg !2207

11:                                               ; preds = %8
  %12 = load ptr, ptr %4, align 8, !dbg !2208
  %13 = getelementptr inbounds %struct._ioa_engine, ptr %12, i32 0, i32 1, !dbg !2209
  %14 = load ptr, ptr %13, align 8, !dbg !2209
  store ptr %14, ptr %3, align 8, !dbg !2210
  br label %15, !dbg !2211

15:                                               ; preds = %11, %8, %2
  %16 = load ptr, ptr %3, align 8, !dbg !2212
  %17 = icmp ne ptr %16, null, !dbg !2212
  br i1 %17, label %19, label %18, !dbg !2214

18:                                               ; preds = %15
  br label %32, !dbg !2215

19:                                               ; preds = %15
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2216, metadata !DIExpression()), !dbg !2217
  %20 = getelementptr inbounds %struct.timeval, ptr %5, i32 0, i32 0, !dbg !2218
  store i64 5, ptr %20, align 8, !dbg !2219
  %21 = getelementptr inbounds %struct.timeval, ptr %5, i32 0, i32 1, !dbg !2220
  store i64 0, ptr %21, align 8, !dbg !2221
  %22 = load ptr, ptr %3, align 8, !dbg !2222
  %23 = call i32 @event_base_loopexit(ptr noundef %22, ptr noundef %5), !dbg !2223
  %24 = load ptr, ptr %3, align 8, !dbg !2224
  %25 = call i32 @event_base_dispatch(ptr noundef %24), !dbg !2225
  %26 = load ptr, ptr %4, align 8, !dbg !2226
  %27 = icmp ne ptr %26, null, !dbg !2226
  br i1 %27, label %28, label %32, !dbg !2228

28:                                               ; preds = %19
  %29 = load ptr, ptr %4, align 8, !dbg !2229
  %30 = getelementptr inbounds %struct._ioa_engine, ptr %29, i32 0, i32 23, !dbg !2230
  %31 = load ptr, ptr %30, align 8, !dbg !2230
  call void (ptr, ptr, ptr, ptr, ...) @send_message_to_redis(ptr noundef %31, ptr noundef @.str.21, ptr noundef @.str.22, ptr noundef @.str.23), !dbg !2231
  br label %32, !dbg !2231

32:                                               ; preds = %18, %28, %19
  ret void, !dbg !2232
}

declare void @rollover_logfile() #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setup_server() #0 !dbg !2233 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = call i32 @evthread_use_pthreads(), !dbg !2236
  %6 = call i32 @pthread_mutex_init(ptr noundef @mutex_bps, ptr noundef null) #10, !dbg !2237
  %7 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 87), align 8, !dbg !2238
  %8 = udiv i64 %7, 2, !dbg !2239
  %9 = trunc i64 %8 to i8, !dbg !2240
  %10 = zext i8 %9 to i32, !dbg !2240
  %11 = add nsw i32 1, %10, !dbg !2241
  %12 = trunc i32 %11 to i8, !dbg !2242
  store i8 %12, ptr @authserver_number, align 1, !dbg !2243
  %13 = load i8, ptr @authserver_number, align 1, !dbg !2244
  %14 = zext i8 %13 to i32, !dbg !2244
  %15 = icmp slt i32 %14, 3, !dbg !2246
  br i1 %15, label %16, label %17, !dbg !2247

16:                                               ; preds = %0
  store i8 3, ptr @authserver_number, align 1, !dbg !2248
  br label %17, !dbg !2249

17:                                               ; preds = %16, %0
  %18 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 57), align 8, !dbg !2250
  %19 = zext i8 %18 to i32, !dbg !2251
  %20 = load i8, ptr @authserver_number, align 1, !dbg !2252
  %21 = zext i8 %20 to i32, !dbg !2252
  %22 = add nsw i32 %19, %21, !dbg !2253
  %23 = add nsw i32 %22, 1, !dbg !2254
  %24 = add nsw i32 %23, 1, !dbg !2255
  store i32 %24, ptr @barrier_count, align 4, !dbg !2256
  call void @setup_listener(), !dbg !2257
  call void @allocate_relay_addrs_ports(), !dbg !2258
  call void @setup_barriers(), !dbg !2259
  call void @setup_general_relay_servers(), !dbg !2260
  %25 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 45), align 8, !dbg !2261
  %26 = icmp eq i32 %25, 3, !dbg !2263
  br i1 %26, label %27, label %28, !dbg !2264

27:                                               ; preds = %17
  call void @setup_socket_per_thread_udp_listener_servers(), !dbg !2265
  br label %38, !dbg !2265

28:                                               ; preds = %17
  %29 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 45), align 8, !dbg !2266
  %30 = icmp eq i32 %29, 2, !dbg !2268
  br i1 %30, label %31, label %32, !dbg !2269

31:                                               ; preds = %28
  call void @setup_socket_per_endpoint_udp_listener_servers(), !dbg !2270
  br label %37, !dbg !2270

32:                                               ; preds = %28
  %33 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 45), align 8, !dbg !2271
  %34 = icmp eq i32 %33, 1, !dbg !2273
  br i1 %34, label %35, label %36, !dbg !2274

35:                                               ; preds = %32
  call void @setup_socket_per_session_udp_listener_servers(), !dbg !2275
  br label %36, !dbg !2275

36:                                               ; preds = %35, %32
  br label %37

37:                                               ; preds = %36, %31
  br label %38

38:                                               ; preds = %37, %27
  %39 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 45), align 8, !dbg !2276
  %40 = icmp ne i32 %39, 3, !dbg !2278
  br i1 %40, label %41, label %43, !dbg !2279

41:                                               ; preds = %38
  %42 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 3), align 8, !dbg !2280
  call void @setup_tcp_listener_servers(ptr noundef %42, ptr noundef null), !dbg !2282
  br label %43, !dbg !2283

43:                                               ; preds = %41, %38
  call void @llvm.dbg.declare(metadata ptr %1, metadata !2284, metadata !DIExpression()), !dbg !2286
  store i32 0, ptr %1, align 4, !dbg !2286
  %44 = load ptr, ptr @udp_relay_servers, align 16, !dbg !2287
  %45 = icmp ne ptr %44, null, !dbg !2287
  br i1 %45, label %46, label %56, !dbg !2289

46:                                               ; preds = %43
  %47 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 58), align 1, !dbg !2290
  %48 = zext i8 %47 to i32, !dbg !2290
  %49 = icmp sgt i32 %48, 1, !dbg !2290
  br i1 %49, label %50, label %53, !dbg !2290

50:                                               ; preds = %46
  %51 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 58), align 1, !dbg !2290
  %52 = zext i8 %51 to i32, !dbg !2290
  br label %54, !dbg !2290

53:                                               ; preds = %46
  br label %54, !dbg !2290

54:                                               ; preds = %53, %50
  %55 = phi i32 [ %52, %50 ], [ 1, %53 ], !dbg !2290
  store i32 %55, ptr %1, align 4, !dbg !2292
  br label %56, !dbg !2293

56:                                               ; preds = %54, %43
  %57 = load i32, ptr %1, align 4, !dbg !2294
  %58 = icmp ne i32 %57, 0, !dbg !2294
  br i1 %58, label %59, label %61, !dbg !2296

59:                                               ; preds = %56
  %60 = load i32, ptr %1, align 4, !dbg !2297
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.13, i32 noundef %60), !dbg !2299
  br label %61, !dbg !2300

61:                                               ; preds = %59, %56
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2301, metadata !DIExpression()), !dbg !2303
  %62 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 57), align 8, !dbg !2304
  %63 = zext i8 %62 to i32, !dbg !2304
  %64 = icmp sgt i32 %63, 1, !dbg !2304
  br i1 %64, label %65, label %68, !dbg !2304

65:                                               ; preds = %61
  %66 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 57), align 8, !dbg !2304
  %67 = zext i8 %66 to i32, !dbg !2304
  br label %69, !dbg !2304

68:                                               ; preds = %61
  br label %69, !dbg !2304

69:                                               ; preds = %68, %65
  %70 = phi i32 [ %67, %65 ], [ 1, %68 ], !dbg !2304
  store i32 %70, ptr %2, align 4, !dbg !2303
  %71 = load i32, ptr %2, align 4, !dbg !2305
  %72 = icmp ne i32 %71, 0, !dbg !2305
  br i1 %72, label %73, label %92, !dbg !2307

73:                                               ; preds = %69
  %74 = load i32, ptr %2, align 4, !dbg !2308
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.14, i32 noundef %74), !dbg !2310
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2311, metadata !DIExpression()), !dbg !2312
  store i32 0, ptr %3, align 4, !dbg !2313
  br label %75, !dbg !2315

75:                                               ; preds = %88, %73
  %76 = load i32, ptr %3, align 4, !dbg !2316
  %77 = load i32, ptr %2, align 4, !dbg !2318
  %78 = icmp slt i32 %76, %77, !dbg !2319
  br i1 %78, label %79, label %91, !dbg !2320

79:                                               ; preds = %75
  %80 = load i32, ptr %3, align 4, !dbg !2321
  %81 = sext i32 %80 to i64, !dbg !2324
  %82 = getelementptr inbounds [256 x ptr], ptr @general_relay_servers, i64 0, i64 %81, !dbg !2324
  %83 = load ptr, ptr %82, align 8, !dbg !2324
  %84 = icmp ne ptr %83, null, !dbg !2325
  br i1 %84, label %87, label %85, !dbg !2326

85:                                               ; preds = %79
  %86 = load i32, ptr %3, align 4, !dbg !2327
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.15, i32 noundef %86), !dbg !2329
  br label %87, !dbg !2330

87:                                               ; preds = %85, %79
  br label %88, !dbg !2331

88:                                               ; preds = %87
  %89 = load i32, ptr %3, align 4, !dbg !2332
  %90 = add nsw i32 %89, 1, !dbg !2332
  store i32 %90, ptr %3, align 4, !dbg !2332
  br label %75, !dbg !2333, !llvm.loop !2334

91:                                               ; preds = %75
  br label %92, !dbg !2336

92:                                               ; preds = %91, %69
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2337, metadata !DIExpression()), !dbg !2339
  store i8 0, ptr %4, align 1, !dbg !2339
  store i8 0, ptr %4, align 1, !dbg !2340
  br label %93, !dbg !2342

93:                                               ; preds = %108, %92
  %94 = load i8, ptr %4, align 1, !dbg !2343
  %95 = zext i8 %94 to i32, !dbg !2343
  %96 = load i8, ptr @authserver_number, align 1, !dbg !2345
  %97 = zext i8 %96 to i32, !dbg !2345
  %98 = icmp slt i32 %95, %97, !dbg !2346
  br i1 %98, label %99, label %111, !dbg !2347

99:                                               ; preds = %93
  %100 = load i8, ptr %4, align 1, !dbg !2348
  %101 = load i8, ptr %4, align 1, !dbg !2350
  %102 = zext i8 %101 to i64, !dbg !2351
  %103 = getelementptr inbounds [256 x %struct.auth_server], ptr @authserver, i64 0, i64 %102, !dbg !2351
  %104 = getelementptr inbounds %struct.auth_server, ptr %103, i32 0, i32 0, !dbg !2352
  store i8 %100, ptr %104, align 16, !dbg !2353
  %105 = load i8, ptr %4, align 1, !dbg !2354
  %106 = zext i8 %105 to i64, !dbg !2355
  %107 = getelementptr inbounds [256 x %struct.auth_server], ptr @authserver, i64 0, i64 %106, !dbg !2355
  call void @setup_auth_server(ptr noundef %107), !dbg !2356
  br label %108, !dbg !2357

108:                                              ; preds = %99
  %109 = load i8, ptr %4, align 1, !dbg !2358
  %110 = add i8 %109, 1, !dbg !2358
  store i8 %110, ptr %4, align 1, !dbg !2358
  br label %93, !dbg !2359, !llvm.loop !2360

111:                                              ; preds = %93
  call void @setup_admin_server(), !dbg !2362
  call void @barrier_wait_func(ptr noundef @__FUNCTION__.setup_server, i32 noundef 1908), !dbg !2363
  ret void, !dbg !2364
}

declare i32 @evthread_use_pthreads() #4

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_listener() #0 !dbg !2365 {
  %1 = alloca ptr, align 8
  %2 = alloca [2 x ptr], align 16
  call void @llvm.dbg.declare(metadata ptr %1, metadata !2366, metadata !DIExpression()), !dbg !2367
  %3 = call ptr @new_super_memory_region(), !dbg !2368
  store ptr %3, ptr %1, align 8, !dbg !2367
  %4 = load ptr, ptr %1, align 8, !dbg !2369
  %5 = load i16, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 47), align 8, !dbg !2370
  %6 = load i16, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 48), align 2, !dbg !2371
  %7 = call ptr @turnipports_create(ptr noundef %4, i16 noundef zeroext %5, i16 noundef zeroext %6), !dbg !2372
  store ptr %7, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 1), align 8, !dbg !2373
  %8 = call ptr @turn_event_base_new(), !dbg !2374
  store ptr %8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 2), align 8, !dbg !2375
  %9 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 2), align 8, !dbg !2376
  %10 = call ptr @event_base_get_method(ptr noundef %9), !dbg !2377
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.24, ptr noundef %10), !dbg !2378
  %11 = load ptr, ptr %1, align 8, !dbg !2379
  %12 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 2), align 8, !dbg !2380
  %13 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 1), align 8, !dbg !2381
  %14 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 53), align 8, !dbg !2382
  %15 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 54), align 8, !dbg !2383
  %16 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 55), align 8, !dbg !2384
  %17 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 21), align 8, !dbg !2385
  %18 = call ptr @create_ioa_engine(ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 52), i64 noundef %14, ptr noundef %15, i32 noundef %16, i32 noundef %17, ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 40)), !dbg !2386
  store ptr %18, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 3), align 8, !dbg !2387
  %19 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 3), align 8, !dbg !2388
  %20 = icmp ne ptr %19, null, !dbg !2390
  br i1 %20, label %22, label %21, !dbg !2391

21:                                               ; preds = %0
  call void @exit(i32 noundef -1) #14, !dbg !2392
  unreachable, !dbg !2392

22:                                               ; preds = %0
  %23 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 3), align 8, !dbg !2393
  call void @set_ssl_ctx(ptr noundef %23, ptr noundef @turn_params), !dbg !2394
  %24 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 3), align 8, !dbg !2395
  %25 = call ptr @rtcp_map_create(ptr noundef %24), !dbg !2396
  store ptr %25, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42), align 8, !dbg !2397
  %26 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 3), align 8, !dbg !2398
  %27 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42), align 8, !dbg !2399
  call void @ioa_engine_set_rtcp_map(ptr noundef %26, ptr noundef %27), !dbg !2400
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2401, metadata !DIExpression()), !dbg !2404
  %28 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 2), align 8, !dbg !2405
  %29 = getelementptr inbounds [2 x ptr], ptr %2, i64 0, i64 0, !dbg !2406
  %30 = call i32 @bufferevent_pair_new(ptr noundef %28, i32 noundef 14, ptr noundef %29), !dbg !2407
  %31 = getelementptr inbounds [2 x ptr], ptr %2, i64 0, i64 0, !dbg !2408
  %32 = load ptr, ptr %31, align 16, !dbg !2408
  store ptr %32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 4), align 8, !dbg !2409
  %33 = getelementptr inbounds [2 x ptr], ptr %2, i64 0, i64 1, !dbg !2410
  %34 = load ptr, ptr %33, align 8, !dbg !2410
  store ptr %34, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 5), align 8, !dbg !2411
  %35 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 4), align 8, !dbg !2412
  call void @bufferevent_setcb(ptr noundef %35, ptr noundef @listener_receive_message, ptr noundef null, ptr noundef null, ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42)), !dbg !2413
  %36 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 4), align 8, !dbg !2414
  %37 = call i32 @bufferevent_enable(ptr noundef %36, i16 noundef signext 2), !dbg !2415
  %38 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 8), align 8, !dbg !2416
  %39 = icmp ult i64 %38, 2, !dbg !2418
  br i1 %39, label %43, label %40, !dbg !2419

40:                                               ; preds = %22
  %41 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 56), align 8, !dbg !2420
  %42 = icmp ne ptr %41, null, !dbg !2421
  br i1 %42, label %43, label %44, !dbg !2422

43:                                               ; preds = %40, %22
  store i32 0, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 33), align 4, !dbg !2423
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 2, ptr noundef @.str.25), !dbg !2425
  br label %47, !dbg !2426

44:                                               ; preds = %40
  %45 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 9), align 8, !dbg !2427
  %46 = mul i64 %45, 2, !dbg !2429
  store i64 %46, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 9), align 8, !dbg !2430
  br label %47

47:                                               ; preds = %44, %43
  %48 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 3), align 8, !dbg !2431
  %49 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 9), align 8, !dbg !2431
  %50 = mul i64 8, %49, !dbg !2431
  %51 = call ptr @allocate_super_memory_engine_func(ptr noundef %48, i64 noundef %50, ptr noundef @.str.26, ptr noundef @__FUNCTION__.setup_listener, i32 noundef 1086), !dbg !2431
  store ptr %51, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 10), align 8, !dbg !2432
  %52 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 3), align 8, !dbg !2433
  %53 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 9), align 8, !dbg !2433
  %54 = mul i64 8, %53, !dbg !2433
  %55 = call ptr @allocate_super_memory_engine_func(ptr noundef %52, i64 noundef %54, ptr noundef @.str.26, ptr noundef @__FUNCTION__.setup_listener, i32 noundef 1087), !dbg !2433
  store ptr %55, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 11), align 8, !dbg !2434
  %56 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 3), align 8, !dbg !2435
  %57 = load volatile i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 62, i32 1), align 8, !dbg !2435
  %58 = mul i64 8, %57, !dbg !2435
  %59 = add i64 %58, 8, !dbg !2435
  %60 = call ptr @allocate_super_memory_engine_func(ptr noundef %56, i64 noundef %59, ptr noundef @.str.26, ptr noundef @__FUNCTION__.setup_listener, i32 noundef 1089), !dbg !2435
  store ptr %60, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 12), align 8, !dbg !2436
  ret void, !dbg !2437
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @allocate_relay_addrs_ports() #0 !dbg !2438 {
  %1 = alloca i32, align 4
  %2 = alloca %union.ioa_addr, align 4
  call void @llvm.dbg.declare(metadata ptr %1, metadata !2439, metadata !DIExpression()), !dbg !2440
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.34), !dbg !2441
  store i32 0, ptr %1, align 4, !dbg !2442
  br label %3, !dbg !2444

3:                                                ; preds = %28, %0
  %4 = load i32, ptr %1, align 4, !dbg !2445
  %5 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 53), align 8, !dbg !2447
  %6 = trunc i64 %5 to i32, !dbg !2448
  %7 = icmp slt i32 %4, %6, !dbg !2449
  br i1 %7, label %8, label %31, !dbg !2450

8:                                                ; preds = %3
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2451, metadata !DIExpression()), !dbg !2453
  %9 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 54), align 8, !dbg !2454
  %10 = load i32, ptr %1, align 4, !dbg !2456
  %11 = sext i32 %10 to i64, !dbg !2457
  %12 = getelementptr inbounds ptr, ptr %9, i64 %11, !dbg !2457
  %13 = load ptr, ptr %12, align 8, !dbg !2457
  %14 = call i32 @make_ioa_addr(ptr noundef %13, i32 noundef 0, ptr noundef %2), !dbg !2458
  %15 = icmp sge i32 %14, 0, !dbg !2459
  br i1 %15, label %16, label %27, !dbg !2460

16:                                               ; preds = %8
  %17 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 54), align 8, !dbg !2461
  %18 = load i32, ptr %1, align 4, !dbg !2463
  %19 = sext i32 %18 to i64, !dbg !2464
  %20 = getelementptr inbounds ptr, ptr %17, i64 %19, !dbg !2464
  %21 = load ptr, ptr %20, align 8, !dbg !2464
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.35, ptr noundef %21), !dbg !2465
  call void @turnipports_add_ip(i8 noundef zeroext 17, ptr noundef %2), !dbg !2466
  call void @turnipports_add_ip(i8 noundef zeroext 6, ptr noundef %2), !dbg !2467
  %22 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 54), align 8, !dbg !2468
  %23 = load i32, ptr %1, align 4, !dbg !2469
  %24 = sext i32 %23 to i64, !dbg !2470
  %25 = getelementptr inbounds ptr, ptr %22, i64 %24, !dbg !2470
  %26 = load ptr, ptr %25, align 8, !dbg !2470
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.36, ptr noundef %26), !dbg !2471
  br label %27, !dbg !2472

27:                                               ; preds = %16, %8
  br label %28, !dbg !2473

28:                                               ; preds = %27
  %29 = load i32, ptr %1, align 4, !dbg !2474
  %30 = add nsw i32 %29, 1, !dbg !2474
  store i32 %30, ptr %1, align 4, !dbg !2474
  br label %3, !dbg !2475, !llvm.loop !2476

31:                                               ; preds = %3
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.37), !dbg !2478
  ret void, !dbg !2479
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_barriers() #0 !dbg !2480 {
  %1 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 45), align 8, !dbg !2481
  %2 = icmp eq i32 %1, 2, !dbg !2483
  br i1 %2, label %3, label %62, !dbg !2484

3:                                                ; preds = %0
  %4 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 57), align 8, !dbg !2485
  %5 = zext i8 %4 to i32, !dbg !2486
  %6 = icmp sgt i32 %5, 1, !dbg !2487
  br i1 %6, label %7, label %62, !dbg !2488

7:                                                ; preds = %3
  %8 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 34), align 8, !dbg !2489
  %9 = icmp ne i32 %8, 0, !dbg !2492
  br i1 %9, label %25, label %10, !dbg !2493

10:                                               ; preds = %7
  %11 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 8), align 8, !dbg !2494
  %12 = load i32, ptr @barrier_count, align 4, !dbg !2496
  %13 = zext i32 %12 to i64, !dbg !2496
  %14 = add i64 %13, %11, !dbg !2496
  %15 = trunc i64 %14 to i32, !dbg !2496
  store i32 %15, ptr @barrier_count, align 4, !dbg !2496
  %16 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 33), align 4, !dbg !2497
  %17 = icmp ne i32 %16, 0, !dbg !2499
  br i1 %17, label %18, label %24, !dbg !2500

18:                                               ; preds = %10
  %19 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 8), align 8, !dbg !2501
  %20 = load i32, ptr @barrier_count, align 4, !dbg !2503
  %21 = zext i32 %20 to i64, !dbg !2503
  %22 = add i64 %21, %19, !dbg !2503
  %23 = trunc i64 %22 to i32, !dbg !2503
  store i32 %23, ptr @barrier_count, align 4, !dbg !2503
  br label %24, !dbg !2504

24:                                               ; preds = %18, %10
  br label %25, !dbg !2505

25:                                               ; preds = %24, %7
  %26 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 18), align 4, !dbg !2506
  %27 = icmp ne i32 %26, 0, !dbg !2508
  br i1 %27, label %50, label %28, !dbg !2509

28:                                               ; preds = %25
  %29 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 34), align 8, !dbg !2510
  %30 = icmp ne i32 %29, 0, !dbg !2511
  br i1 %30, label %35, label %31, !dbg !2512

31:                                               ; preds = %28
  %32 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 28), align 8, !dbg !2513
  %33 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 29), align 4, !dbg !2514
  %34 = icmp ne i32 %32, %33, !dbg !2515
  br i1 %34, label %35, label %50, !dbg !2516

35:                                               ; preds = %31, %28
  %36 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 8), align 8, !dbg !2517
  %37 = load i32, ptr @barrier_count, align 4, !dbg !2519
  %38 = zext i32 %37 to i64, !dbg !2519
  %39 = add i64 %38, %36, !dbg !2519
  %40 = trunc i64 %39 to i32, !dbg !2519
  store i32 %40, ptr @barrier_count, align 4, !dbg !2519
  %41 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 33), align 4, !dbg !2520
  %42 = icmp ne i32 %41, 0, !dbg !2522
  br i1 %42, label %43, label %49, !dbg !2523

43:                                               ; preds = %35
  %44 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 8), align 8, !dbg !2524
  %45 = load i32, ptr @barrier_count, align 4, !dbg !2526
  %46 = zext i32 %45 to i64, !dbg !2526
  %47 = add i64 %46, %44, !dbg !2526
  %48 = trunc i64 %47 to i32, !dbg !2526
  store i32 %48, ptr @barrier_count, align 4, !dbg !2526
  br label %49, !dbg !2527

49:                                               ; preds = %43, %35
  br label %50, !dbg !2528

50:                                               ; preds = %49, %31, %25
  %51 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 34), align 8, !dbg !2529
  %52 = icmp ne i32 %51, 0, !dbg !2531
  br i1 %52, label %53, label %56, !dbg !2532

53:                                               ; preds = %50
  %54 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 18), align 4, !dbg !2533
  %55 = icmp ne i32 %54, 0, !dbg !2534
  br i1 %55, label %61, label %56, !dbg !2535

56:                                               ; preds = %53, %50
  %57 = load volatile i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 62, i32 1), align 8, !dbg !2536
  %58 = trunc i64 %57 to i32, !dbg !2538
  %59 = load i32, ptr @barrier_count, align 4, !dbg !2539
  %60 = add i32 %59, %58, !dbg !2539
  store i32 %60, ptr @barrier_count, align 4, !dbg !2539
  br label %61, !dbg !2540

61:                                               ; preds = %56, %53
  br label %62, !dbg !2541

62:                                               ; preds = %61, %3, %0
  %63 = load i32, ptr @barrier_count, align 4, !dbg !2542
  %64 = call i32 @pthread_barrier_init(ptr noundef @barrier, ptr noundef null, i32 noundef %63) #10, !dbg !2545
  %65 = icmp slt i32 %64, 0, !dbg !2546
  br i1 %65, label %66, label %67, !dbg !2547

66:                                               ; preds = %62
  call void @perror(ptr noundef @.str.38), !dbg !2548
  br label %67, !dbg !2548

67:                                               ; preds = %66, %62
  ret void, !dbg !2549
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_general_relay_servers() #0 !dbg !2550 {
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  call void @llvm.dbg.declare(metadata ptr %1, metadata !2551, metadata !DIExpression()), !dbg !2552
  store i64 0, ptr %1, align 8, !dbg !2552
  store i64 0, ptr %1, align 8, !dbg !2553
  br label %3, !dbg !2555

3:                                                ; preds = %90, %0
  %4 = load i64, ptr %1, align 8, !dbg !2556
  %5 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 57), align 8, !dbg !2558
  %6 = zext i8 %5 to i32, !dbg !2558
  %7 = icmp sgt i32 %6, 1, !dbg !2558
  br i1 %7, label %8, label %11, !dbg !2558

8:                                                ; preds = %3
  %9 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 57), align 8, !dbg !2558
  %10 = zext i8 %9 to i32, !dbg !2558
  br label %12, !dbg !2558

11:                                               ; preds = %3
  br label %12, !dbg !2558

12:                                               ; preds = %11, %8
  %13 = phi i32 [ %10, %8 ], [ 1, %11 ], !dbg !2558
  %14 = sext i32 %13 to i64, !dbg !2558
  %15 = icmp ult i64 %4, %14, !dbg !2559
  br i1 %15, label %16, label %93, !dbg !2560

16:                                               ; preds = %12
  %17 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 57), align 8, !dbg !2561
  %18 = zext i8 %17 to i32, !dbg !2564
  %19 = icmp eq i32 %18, 0, !dbg !2565
  br i1 %19, label %20, label %55, !dbg !2566

20:                                               ; preds = %16
  %21 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 3), align 8, !dbg !2567
  %22 = call ptr @allocate_super_memory_engine_func(ptr noundef %21, i64 noundef 504, ptr noundef @.str.26, ptr noundef @__FUNCTION__.setup_general_relay_servers, i32 noundef 1720), !dbg !2567
  %23 = load i64, ptr %1, align 8, !dbg !2569
  %24 = getelementptr inbounds [256 x ptr], ptr @general_relay_servers, i64 0, i64 %23, !dbg !2570
  store ptr %22, ptr %24, align 8, !dbg !2571
  %25 = load i64, ptr %1, align 8, !dbg !2572
  %26 = trunc i64 %25 to i8, !dbg !2573
  %27 = load i64, ptr %1, align 8, !dbg !2574
  %28 = getelementptr inbounds [256 x ptr], ptr @general_relay_servers, i64 0, i64 %27, !dbg !2575
  %29 = load ptr, ptr %28, align 8, !dbg !2575
  %30 = getelementptr inbounds %struct.relay_server, ptr %29, i32 0, i32 0, !dbg !2576
  store i8 %26, ptr %30, align 8, !dbg !2577
  %31 = load i64, ptr %1, align 8, !dbg !2578
  %32 = getelementptr inbounds [256 x ptr], ptr @general_relay_servers, i64 0, i64 %31, !dbg !2579
  %33 = load ptr, ptr %32, align 8, !dbg !2579
  %34 = getelementptr inbounds %struct.relay_server, ptr %33, i32 0, i32 1, !dbg !2580
  store ptr null, ptr %34, align 8, !dbg !2581
  %35 = load i64, ptr %1, align 8, !dbg !2582
  %36 = getelementptr inbounds [256 x ptr], ptr @general_relay_servers, i64 0, i64 %35, !dbg !2583
  %37 = load ptr, ptr %36, align 8, !dbg !2583
  %38 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 3), align 8, !dbg !2584
  %39 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 45), align 8, !dbg !2585
  %40 = icmp eq i32 %39, 3, !dbg !2586
  br i1 %40, label %44, label %41, !dbg !2587

41:                                               ; preds = %20
  %42 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 45), align 8, !dbg !2588
  %43 = icmp eq i32 %42, 1, !dbg !2589
  br i1 %43, label %44, label %47, !dbg !2590

44:                                               ; preds = %41, %20
  %45 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 33), align 4, !dbg !2591
  %46 = icmp ne i32 %45, 0, !dbg !2590
  br label %47

47:                                               ; preds = %44, %41
  %48 = phi i1 [ false, %41 ], [ %46, %44 ], !dbg !2592
  %49 = zext i1 %48 to i32, !dbg !2590
  call void @setup_relay_server(ptr noundef %37, ptr noundef %38, i32 noundef %49), !dbg !2593
  %50 = call i64 @pthread_self() #15, !dbg !2594
  %51 = load i64, ptr %1, align 8, !dbg !2595
  %52 = getelementptr inbounds [256 x ptr], ptr @general_relay_servers, i64 0, i64 %51, !dbg !2596
  %53 = load ptr, ptr %52, align 8, !dbg !2596
  %54 = getelementptr inbounds %struct.relay_server, ptr %53, i32 0, i32 9, !dbg !2597
  store i64 %50, ptr %54, align 8, !dbg !2598
  br label %89, !dbg !2599

55:                                               ; preds = %16
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2600, metadata !DIExpression()), !dbg !2602
  %56 = call ptr @new_super_memory_region(), !dbg !2603
  store ptr %56, ptr %2, align 8, !dbg !2602
  %57 = load ptr, ptr %2, align 8, !dbg !2604
  %58 = call ptr @allocate_super_memory_region_func(ptr noundef %57, i64 noundef 504, ptr noundef @.str.26, ptr noundef @__FUNCTION__.setup_general_relay_servers, i32 noundef 1727), !dbg !2604
  %59 = load i64, ptr %1, align 8, !dbg !2605
  %60 = getelementptr inbounds [256 x ptr], ptr @general_relay_servers, i64 0, i64 %59, !dbg !2606
  store ptr %58, ptr %60, align 8, !dbg !2607
  %61 = load i64, ptr %1, align 8, !dbg !2608
  %62 = trunc i64 %61 to i8, !dbg !2609
  %63 = load i64, ptr %1, align 8, !dbg !2610
  %64 = getelementptr inbounds [256 x ptr], ptr @general_relay_servers, i64 0, i64 %63, !dbg !2611
  %65 = load ptr, ptr %64, align 8, !dbg !2611
  %66 = getelementptr inbounds %struct.relay_server, ptr %65, i32 0, i32 0, !dbg !2612
  store i8 %62, ptr %66, align 8, !dbg !2613
  %67 = load ptr, ptr %2, align 8, !dbg !2614
  %68 = load i64, ptr %1, align 8, !dbg !2615
  %69 = getelementptr inbounds [256 x ptr], ptr @general_relay_servers, i64 0, i64 %68, !dbg !2616
  %70 = load ptr, ptr %69, align 8, !dbg !2616
  %71 = getelementptr inbounds %struct.relay_server, ptr %70, i32 0, i32 1, !dbg !2617
  store ptr %67, ptr %71, align 8, !dbg !2618
  %72 = load i64, ptr %1, align 8, !dbg !2619
  %73 = getelementptr inbounds [256 x ptr], ptr @general_relay_servers, i64 0, i64 %72, !dbg !2621
  %74 = load ptr, ptr %73, align 8, !dbg !2621
  %75 = getelementptr inbounds %struct.relay_server, ptr %74, i32 0, i32 9, !dbg !2622
  %76 = load i64, ptr %1, align 8, !dbg !2623
  %77 = getelementptr inbounds [256 x ptr], ptr @general_relay_servers, i64 0, i64 %76, !dbg !2624
  %78 = load ptr, ptr %77, align 8, !dbg !2624
  %79 = call i32 @pthread_create(ptr noundef %75, ptr noundef null, ptr noundef @run_general_relay_thread, ptr noundef %78) #10, !dbg !2625
  %80 = icmp ne i32 %79, 0, !dbg !2625
  br i1 %80, label %81, label %82, !dbg !2626

81:                                               ; preds = %55
  call void @perror(ptr noundef @.str.39), !dbg !2627
  call void @exit(i32 noundef -1) #14, !dbg !2629
  unreachable, !dbg !2629

82:                                               ; preds = %55
  %83 = load i64, ptr %1, align 8, !dbg !2630
  %84 = getelementptr inbounds [256 x ptr], ptr @general_relay_servers, i64 0, i64 %83, !dbg !2631
  %85 = load ptr, ptr %84, align 8, !dbg !2631
  %86 = getelementptr inbounds %struct.relay_server, ptr %85, i32 0, i32 9, !dbg !2632
  %87 = load i64, ptr %86, align 8, !dbg !2632
  %88 = call i32 @pthread_detach(i64 noundef %87) #10, !dbg !2633
  br label %89

89:                                               ; preds = %82, %47
  br label %90, !dbg !2634

90:                                               ; preds = %89
  %91 = load i64, ptr %1, align 8, !dbg !2635
  %92 = add i64 %91, 1, !dbg !2635
  store i64 %92, ptr %1, align 8, !dbg !2635
  br label %3, !dbg !2636, !llvm.loop !2637

93:                                               ; preds = %12
  ret void, !dbg !2639
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_socket_per_thread_udp_listener_servers() #0 !dbg !2640 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca %union.ioa_addr, align 4
  %5 = alloca [129 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata ptr %1, metadata !2641, metadata !DIExpression()), !dbg !2642
  store i64 0, ptr %1, align 8, !dbg !2642
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2643, metadata !DIExpression()), !dbg !2644
  store i64 0, ptr %2, align 8, !dbg !2644
  store i64 0, ptr %2, align 8, !dbg !2645
  br label %8, !dbg !2647

8:                                                ; preds = %43, %0
  %9 = load i64, ptr %2, align 8, !dbg !2648
  %10 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 57), align 8, !dbg !2650
  %11 = zext i8 %10 to i32, !dbg !2650
  %12 = icmp sgt i32 %11, 1, !dbg !2650
  br i1 %12, label %13, label %16, !dbg !2650

13:                                               ; preds = %8
  %14 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 57), align 8, !dbg !2650
  %15 = zext i8 %14 to i32, !dbg !2650
  br label %17, !dbg !2650

16:                                               ; preds = %8
  br label %17, !dbg !2650

17:                                               ; preds = %16, %13
  %18 = phi i32 [ %15, %13 ], [ 1, %16 ], !dbg !2650
  %19 = sext i32 %18 to i64, !dbg !2650
  %20 = icmp ult i64 %9, %19, !dbg !2651
  br i1 %20, label %21, label %46, !dbg !2652

21:                                               ; preds = %17
  br label %22, !dbg !2653

22:                                               ; preds = %40, %21
  %23 = load i64, ptr %2, align 8, !dbg !2655
  %24 = getelementptr inbounds [256 x ptr], ptr @general_relay_servers, i64 0, i64 %23, !dbg !2656
  %25 = load ptr, ptr %24, align 8, !dbg !2656
  %26 = getelementptr inbounds %struct.relay_server, ptr %25, i32 0, i32 7, !dbg !2657
  %27 = load ptr, ptr %26, align 8, !dbg !2657
  %28 = icmp ne ptr %27, null, !dbg !2658
  br i1 %28, label %29, label %38, !dbg !2659

29:                                               ; preds = %22
  %30 = load i64, ptr %2, align 8, !dbg !2660
  %31 = getelementptr inbounds [256 x ptr], ptr @general_relay_servers, i64 0, i64 %30, !dbg !2661
  %32 = load ptr, ptr %31, align 8, !dbg !2661
  %33 = getelementptr inbounds %struct.relay_server, ptr %32, i32 0, i32 8, !dbg !2662
  %34 = getelementptr inbounds %struct._turn_turnserver, ptr %33, i32 0, i32 4, !dbg !2663
  %35 = load ptr, ptr %34, align 8, !dbg !2663
  %36 = icmp ne ptr %35, null, !dbg !2664
  %37 = xor i1 %36, true, !dbg !2664
  br label %38, !dbg !2659

38:                                               ; preds = %29, %22
  %39 = phi i1 [ true, %22 ], [ %37, %29 ]
  br i1 %39, label %40, label %42, !dbg !2653

40:                                               ; preds = %38
  %41 = call i32 @sched_yield() #10, !dbg !2665
  br label %22, !dbg !2653, !llvm.loop !2666

42:                                               ; preds = %38
  br label %43, !dbg !2668

43:                                               ; preds = %42
  %44 = load i64, ptr %2, align 8, !dbg !2669
  %45 = add i64 %44, 1, !dbg !2669
  store i64 %45, ptr %2, align 8, !dbg !2669
  br label %8, !dbg !2670, !llvm.loop !2671

46:                                               ; preds = %17
  store i64 0, ptr %1, align 8, !dbg !2673
  br label %47, !dbg !2675

47:                                               ; preds = %126, %46
  %48 = load i64, ptr %1, align 8, !dbg !2676
  %49 = load volatile i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 62, i32 1), align 8, !dbg !2678
  %50 = icmp ult i64 %48, %49, !dbg !2679
  br i1 %50, label %51, label %129, !dbg !2680

51:                                               ; preds = %47
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2681, metadata !DIExpression()), !dbg !2683
  %52 = load i64, ptr %1, align 8, !dbg !2684
  %53 = trunc i64 %52 to i32, !dbg !2684
  store i32 %53, ptr %3, align 4, !dbg !2683
  %54 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 34), align 8, !dbg !2685
  %55 = icmp ne i32 %54, 0, !dbg !2687
  br i1 %55, label %56, label %59, !dbg !2688

56:                                               ; preds = %51
  %57 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 18), align 4, !dbg !2689
  %58 = icmp ne i32 %57, 0, !dbg !2690
  br i1 %58, label %125, label %59, !dbg !2691

59:                                               ; preds = %56, %51
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2692, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2695, metadata !DIExpression()), !dbg !2696
  %60 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 62), align 8, !dbg !2697
  %61 = load i64, ptr %1, align 8, !dbg !2698
  %62 = getelementptr inbounds %union.ioa_addr, ptr %60, i64 %61, !dbg !2699
  call void @addr_cpy(ptr noundef %4, ptr noundef %62), !dbg !2700
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2701, metadata !DIExpression()), !dbg !2702
  %63 = call i32 @addr_get_port(ptr noundef %4), !dbg !2703
  store i32 %63, ptr %6, align 4, !dbg !2702
  %64 = getelementptr inbounds [129 x i8], ptr %5, i64 0, i64 0, !dbg !2704
  %65 = call i32 @addr_to_string_no_port(ptr noundef %4, ptr noundef %64), !dbg !2705
  %66 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 3), align 8, !dbg !2706
  %67 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 57), align 8, !dbg !2706
  %68 = zext i8 %67 to i32, !dbg !2706
  %69 = icmp sgt i32 %68, 1, !dbg !2706
  br i1 %69, label %70, label %73, !dbg !2706

70:                                               ; preds = %59
  %71 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 57), align 8, !dbg !2706
  %72 = zext i8 %71 to i32, !dbg !2706
  br label %74, !dbg !2706

73:                                               ; preds = %59
  br label %74, !dbg !2706

74:                                               ; preds = %73, %70
  %75 = phi i32 [ %72, %70 ], [ 1, %73 ], !dbg !2706
  %76 = sext i32 %75 to i64, !dbg !2706
  %77 = mul i64 8, %76, !dbg !2706
  %78 = call ptr @allocate_super_memory_engine_func(ptr noundef %66, i64 noundef %77, ptr noundef @.str.26, ptr noundef @__FUNCTION__.setup_socket_per_thread_udp_listener_servers, i32 noundef 1329), !dbg !2706
  %79 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 12), align 8, !dbg !2707
  %80 = load i32, ptr %3, align 4, !dbg !2708
  %81 = sext i32 %80 to i64, !dbg !2709
  %82 = getelementptr inbounds ptr, ptr %79, i64 %81, !dbg !2709
  store ptr %78, ptr %82, align 8, !dbg !2710
  store i64 0, ptr %2, align 8, !dbg !2711
  br label %83, !dbg !2713

83:                                               ; preds = %121, %74
  %84 = load i64, ptr %2, align 8, !dbg !2714
  %85 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 57), align 8, !dbg !2716
  %86 = zext i8 %85 to i32, !dbg !2716
  %87 = icmp sgt i32 %86, 1, !dbg !2716
  br i1 %87, label %88, label %91, !dbg !2716

88:                                               ; preds = %83
  %89 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 57), align 8, !dbg !2716
  %90 = zext i8 %89 to i32, !dbg !2716
  br label %92, !dbg !2716

91:                                               ; preds = %83
  br label %92, !dbg !2716

92:                                               ; preds = %91, %88
  %93 = phi i32 [ %90, %88 ], [ 1, %91 ], !dbg !2716
  %94 = sext i32 %93 to i64, !dbg !2716
  %95 = icmp ult i64 %84, %94, !dbg !2717
  br i1 %95, label %96, label %124, !dbg !2718

96:                                               ; preds = %92
  %97 = getelementptr inbounds [129 x i8], ptr %5, i64 0, i64 0, !dbg !2719
  %98 = load i32, ptr %6, align 4, !dbg !2721
  %99 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 21), align 8, !dbg !2722
  %100 = load i64, ptr %2, align 8, !dbg !2723
  %101 = getelementptr inbounds [256 x ptr], ptr @general_relay_servers, i64 0, i64 %100, !dbg !2724
  %102 = load ptr, ptr %101, align 8, !dbg !2724
  %103 = getelementptr inbounds %struct.relay_server, ptr %102, i32 0, i32 7, !dbg !2725
  %104 = load ptr, ptr %103, align 8, !dbg !2725
  %105 = load i64, ptr %2, align 8, !dbg !2726
  %106 = getelementptr inbounds [256 x ptr], ptr @general_relay_servers, i64 0, i64 %105, !dbg !2727
  %107 = load ptr, ptr %106, align 8, !dbg !2727
  %108 = getelementptr inbounds %struct.relay_server, ptr %107, i32 0, i32 8, !dbg !2728
  %109 = load i64, ptr %2, align 8, !dbg !2729
  %110 = icmp ne i64 %109, 0, !dbg !2730
  %111 = xor i1 %110, true, !dbg !2730
  %112 = zext i1 %111 to i32, !dbg !2730
  %113 = call ptr @create_dtls_listener_server(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 39), ptr noundef %97, i32 noundef %98, i32 noundef %99, ptr noundef %104, ptr noundef %108, i32 noundef %112, ptr noundef null), !dbg !2731
  %114 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 12), align 8, !dbg !2732
  %115 = load i32, ptr %3, align 4, !dbg !2733
  %116 = sext i32 %115 to i64, !dbg !2734
  %117 = getelementptr inbounds ptr, ptr %114, i64 %116, !dbg !2734
  %118 = load ptr, ptr %117, align 8, !dbg !2734
  %119 = load i64, ptr %2, align 8, !dbg !2735
  %120 = getelementptr inbounds ptr, ptr %118, i64 %119, !dbg !2734
  store ptr %113, ptr %120, align 8, !dbg !2736
  br label %121, !dbg !2737

121:                                              ; preds = %96
  %122 = load i64, ptr %2, align 8, !dbg !2738
  %123 = add i64 %122, 1, !dbg !2738
  store i64 %123, ptr %2, align 8, !dbg !2738
  br label %83, !dbg !2739, !llvm.loop !2740

124:                                              ; preds = %92
  br label %125, !dbg !2742

125:                                              ; preds = %124, %56
  br label %126, !dbg !2743

126:                                              ; preds = %125
  %127 = load i64, ptr %1, align 8, !dbg !2744
  %128 = add i64 %127, 1, !dbg !2744
  store i64 %128, ptr %1, align 8, !dbg !2744
  br label %47, !dbg !2745, !llvm.loop !2746

129:                                              ; preds = %47
  store i64 0, ptr %1, align 8, !dbg !2748
  br label %130, !dbg !2750

130:                                              ; preds = %448, %129
  %131 = load i64, ptr %1, align 8, !dbg !2751
  %132 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 8), align 8, !dbg !2753
  %133 = icmp ult i64 %131, %132, !dbg !2754
  br i1 %133, label %134, label %451, !dbg !2755

134:                                              ; preds = %130
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2756, metadata !DIExpression()), !dbg !2758
  %135 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 33), align 4, !dbg !2759
  %136 = icmp ne i32 %135, 0, !dbg !2760
  br i1 %136, label %137, label %140, !dbg !2760

137:                                              ; preds = %134
  %138 = load i64, ptr %1, align 8, !dbg !2761
  %139 = mul i64 %138, 2, !dbg !2762
  br label %142, !dbg !2760

140:                                              ; preds = %134
  %141 = load i64, ptr %1, align 8, !dbg !2763
  br label %142, !dbg !2760

142:                                              ; preds = %140, %137
  %143 = phi i64 [ %139, %137 ], [ %141, %140 ], !dbg !2760
  %144 = trunc i64 %143 to i32, !dbg !2760
  store i32 %144, ptr %7, align 4, !dbg !2758
  %145 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 34), align 8, !dbg !2764
  %146 = icmp ne i32 %145, 0, !dbg !2766
  br i1 %146, label %278, label %147, !dbg !2767

147:                                              ; preds = %142
  %148 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 3), align 8, !dbg !2768
  %149 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 57), align 8, !dbg !2768
  %150 = zext i8 %149 to i32, !dbg !2768
  %151 = icmp sgt i32 %150, 1, !dbg !2768
  br i1 %151, label %152, label %155, !dbg !2768

152:                                              ; preds = %147
  %153 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 57), align 8, !dbg !2768
  %154 = zext i8 %153 to i32, !dbg !2768
  br label %156, !dbg !2768

155:                                              ; preds = %147
  br label %156, !dbg !2768

156:                                              ; preds = %155, %152
  %157 = phi i32 [ %154, %152 ], [ 1, %155 ], !dbg !2768
  %158 = sext i32 %157 to i64, !dbg !2768
  %159 = mul i64 8, %158, !dbg !2768
  %160 = call ptr @allocate_super_memory_engine_func(ptr noundef %148, i64 noundef %159, ptr noundef @.str.26, ptr noundef @__FUNCTION__.setup_socket_per_thread_udp_listener_servers, i32 noundef 1346), !dbg !2768
  %161 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 10), align 8, !dbg !2770
  %162 = load i32, ptr %7, align 4, !dbg !2771
  %163 = sext i32 %162 to i64, !dbg !2772
  %164 = getelementptr inbounds ptr, ptr %161, i64 %163, !dbg !2772
  store ptr %160, ptr %164, align 8, !dbg !2773
  store i64 0, ptr %2, align 8, !dbg !2774
  br label %165, !dbg !2776

165:                                              ; preds = %206, %156
  %166 = load i64, ptr %2, align 8, !dbg !2777
  %167 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 57), align 8, !dbg !2779
  %168 = zext i8 %167 to i32, !dbg !2779
  %169 = icmp sgt i32 %168, 1, !dbg !2779
  br i1 %169, label %170, label %173, !dbg !2779

170:                                              ; preds = %165
  %171 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 57), align 8, !dbg !2779
  %172 = zext i8 %171 to i32, !dbg !2779
  br label %174, !dbg !2779

173:                                              ; preds = %165
  br label %174, !dbg !2779

174:                                              ; preds = %173, %170
  %175 = phi i32 [ %172, %170 ], [ 1, %173 ], !dbg !2779
  %176 = sext i32 %175 to i64, !dbg !2779
  %177 = icmp ult i64 %166, %176, !dbg !2780
  br i1 %177, label %178, label %209, !dbg !2781

178:                                              ; preds = %174
  %179 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 6), align 8, !dbg !2782
  %180 = load i64, ptr %1, align 8, !dbg !2784
  %181 = getelementptr inbounds ptr, ptr %179, i64 %180, !dbg !2785
  %182 = load ptr, ptr %181, align 8, !dbg !2785
  %183 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 28), align 8, !dbg !2786
  %184 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 21), align 8, !dbg !2787
  %185 = load i64, ptr %2, align 8, !dbg !2788
  %186 = getelementptr inbounds [256 x ptr], ptr @general_relay_servers, i64 0, i64 %185, !dbg !2789
  %187 = load ptr, ptr %186, align 8, !dbg !2789
  %188 = getelementptr inbounds %struct.relay_server, ptr %187, i32 0, i32 7, !dbg !2790
  %189 = load ptr, ptr %188, align 8, !dbg !2790
  %190 = load i64, ptr %2, align 8, !dbg !2791
  %191 = getelementptr inbounds [256 x ptr], ptr @general_relay_servers, i64 0, i64 %190, !dbg !2792
  %192 = load ptr, ptr %191, align 8, !dbg !2792
  %193 = getelementptr inbounds %struct.relay_server, ptr %192, i32 0, i32 8, !dbg !2793
  %194 = load i64, ptr %2, align 8, !dbg !2794
  %195 = icmp ne i64 %194, 0, !dbg !2795
  %196 = xor i1 %195, true, !dbg !2795
  %197 = zext i1 %196 to i32, !dbg !2795
  %198 = call ptr @create_dtls_listener_server(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 39), ptr noundef %182, i32 noundef %183, i32 noundef %184, ptr noundef %189, ptr noundef %193, i32 noundef %197, ptr noundef null), !dbg !2796
  %199 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 10), align 8, !dbg !2797
  %200 = load i32, ptr %7, align 4, !dbg !2798
  %201 = sext i32 %200 to i64, !dbg !2799
  %202 = getelementptr inbounds ptr, ptr %199, i64 %201, !dbg !2799
  %203 = load ptr, ptr %202, align 8, !dbg !2799
  %204 = load i64, ptr %2, align 8, !dbg !2800
  %205 = getelementptr inbounds ptr, ptr %203, i64 %204, !dbg !2799
  store ptr %198, ptr %205, align 8, !dbg !2801
  br label %206, !dbg !2802

206:                                              ; preds = %178
  %207 = load i64, ptr %2, align 8, !dbg !2803
  %208 = add i64 %207, 1, !dbg !2803
  store i64 %208, ptr %2, align 8, !dbg !2803
  br label %165, !dbg !2804, !llvm.loop !2805

209:                                              ; preds = %174
  %210 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 33), align 4, !dbg !2807
  %211 = icmp ne i32 %210, 0, !dbg !2809
  br i1 %211, label %212, label %277, !dbg !2810

212:                                              ; preds = %209
  %213 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 3), align 8, !dbg !2811
  %214 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 57), align 8, !dbg !2811
  %215 = zext i8 %214 to i32, !dbg !2811
  %216 = icmp sgt i32 %215, 1, !dbg !2811
  br i1 %216, label %217, label %220, !dbg !2811

217:                                              ; preds = %212
  %218 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 57), align 8, !dbg !2811
  %219 = zext i8 %218 to i32, !dbg !2811
  br label %221, !dbg !2811

220:                                              ; preds = %212
  br label %221, !dbg !2811

221:                                              ; preds = %220, %217
  %222 = phi i32 [ %219, %217 ], [ 1, %220 ], !dbg !2811
  %223 = sext i32 %222 to i64, !dbg !2811
  %224 = mul i64 8, %223, !dbg !2811
  %225 = call ptr @allocate_super_memory_engine_func(ptr noundef %213, i64 noundef %224, ptr noundef @.str.26, ptr noundef @__FUNCTION__.setup_socket_per_thread_udp_listener_servers, i32 noundef 1355), !dbg !2811
  %226 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 10), align 8, !dbg !2813
  %227 = load i32, ptr %7, align 4, !dbg !2814
  %228 = add nsw i32 %227, 1, !dbg !2815
  %229 = sext i32 %228 to i64, !dbg !2816
  %230 = getelementptr inbounds ptr, ptr %226, i64 %229, !dbg !2816
  store ptr %225, ptr %230, align 8, !dbg !2817
  store i64 0, ptr %2, align 8, !dbg !2818
  br label %231, !dbg !2820

231:                                              ; preds = %273, %221
  %232 = load i64, ptr %2, align 8, !dbg !2821
  %233 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 57), align 8, !dbg !2823
  %234 = zext i8 %233 to i32, !dbg !2823
  %235 = icmp sgt i32 %234, 1, !dbg !2823
  br i1 %235, label %236, label %239, !dbg !2823

236:                                              ; preds = %231
  %237 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 57), align 8, !dbg !2823
  %238 = zext i8 %237 to i32, !dbg !2823
  br label %240, !dbg !2823

239:                                              ; preds = %231
  br label %240, !dbg !2823

240:                                              ; preds = %239, %236
  %241 = phi i32 [ %238, %236 ], [ 1, %239 ], !dbg !2823
  %242 = sext i32 %241 to i64, !dbg !2823
  %243 = icmp ult i64 %232, %242, !dbg !2824
  br i1 %243, label %244, label %276, !dbg !2825

244:                                              ; preds = %240
  %245 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 6), align 8, !dbg !2826
  %246 = load i64, ptr %1, align 8, !dbg !2828
  %247 = getelementptr inbounds ptr, ptr %245, i64 %246, !dbg !2829
  %248 = load ptr, ptr %247, align 8, !dbg !2829
  %249 = call i32 @get_alt_listener_port(), !dbg !2830
  %250 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 21), align 8, !dbg !2831
  %251 = load i64, ptr %2, align 8, !dbg !2832
  %252 = getelementptr inbounds [256 x ptr], ptr @general_relay_servers, i64 0, i64 %251, !dbg !2833
  %253 = load ptr, ptr %252, align 8, !dbg !2833
  %254 = getelementptr inbounds %struct.relay_server, ptr %253, i32 0, i32 7, !dbg !2834
  %255 = load ptr, ptr %254, align 8, !dbg !2834
  %256 = load i64, ptr %2, align 8, !dbg !2835
  %257 = getelementptr inbounds [256 x ptr], ptr @general_relay_servers, i64 0, i64 %256, !dbg !2836
  %258 = load ptr, ptr %257, align 8, !dbg !2836
  %259 = getelementptr inbounds %struct.relay_server, ptr %258, i32 0, i32 8, !dbg !2837
  %260 = load i64, ptr %2, align 8, !dbg !2838
  %261 = icmp ne i64 %260, 0, !dbg !2839
  %262 = xor i1 %261, true, !dbg !2839
  %263 = zext i1 %262 to i32, !dbg !2839
  %264 = call ptr @create_dtls_listener_server(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 39), ptr noundef %248, i32 noundef %249, i32 noundef %250, ptr noundef %255, ptr noundef %259, i32 noundef %263, ptr noundef null), !dbg !2840
  %265 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 10), align 8, !dbg !2841
  %266 = load i32, ptr %7, align 4, !dbg !2842
  %267 = add nsw i32 %266, 1, !dbg !2843
  %268 = sext i32 %267 to i64, !dbg !2844
  %269 = getelementptr inbounds ptr, ptr %265, i64 %268, !dbg !2844
  %270 = load ptr, ptr %269, align 8, !dbg !2844
  %271 = load i64, ptr %2, align 8, !dbg !2845
  %272 = getelementptr inbounds ptr, ptr %270, i64 %271, !dbg !2844
  store ptr %264, ptr %272, align 8, !dbg !2846
  br label %273, !dbg !2847

273:                                              ; preds = %244
  %274 = load i64, ptr %2, align 8, !dbg !2848
  %275 = add i64 %274, 1, !dbg !2848
  store i64 %275, ptr %2, align 8, !dbg !2848
  br label %231, !dbg !2849, !llvm.loop !2850

276:                                              ; preds = %240
  br label %277, !dbg !2852

277:                                              ; preds = %276, %209
  br label %292, !dbg !2853

278:                                              ; preds = %142
  %279 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 10), align 8, !dbg !2854
  %280 = load i32, ptr %7, align 4, !dbg !2856
  %281 = sext i32 %280 to i64, !dbg !2857
  %282 = getelementptr inbounds ptr, ptr %279, i64 %281, !dbg !2857
  store ptr null, ptr %282, align 8, !dbg !2858
  %283 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 33), align 4, !dbg !2859
  %284 = icmp ne i32 %283, 0, !dbg !2861
  br i1 %284, label %285, label %291, !dbg !2862

285:                                              ; preds = %278
  %286 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 10), align 8, !dbg !2863
  %287 = load i32, ptr %7, align 4, !dbg !2864
  %288 = add nsw i32 %287, 1, !dbg !2865
  %289 = sext i32 %288 to i64, !dbg !2866
  %290 = getelementptr inbounds ptr, ptr %286, i64 %289, !dbg !2866
  store ptr null, ptr %290, align 8, !dbg !2867
  br label %291, !dbg !2866

291:                                              ; preds = %285, %278
  br label %292

292:                                              ; preds = %291, %277
  %293 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 18), align 4, !dbg !2868
  %294 = icmp ne i32 %293, 0, !dbg !2870
  br i1 %294, label %433, label %295, !dbg !2871

295:                                              ; preds = %292
  %296 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 34), align 8, !dbg !2872
  %297 = icmp ne i32 %296, 0, !dbg !2873
  br i1 %297, label %302, label %298, !dbg !2874

298:                                              ; preds = %295
  %299 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 28), align 8, !dbg !2875
  %300 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 29), align 4, !dbg !2876
  %301 = icmp ne i32 %299, %300, !dbg !2877
  br i1 %301, label %302, label %433, !dbg !2878

302:                                              ; preds = %298, %295
  %303 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 3), align 8, !dbg !2879
  %304 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 57), align 8, !dbg !2879
  %305 = zext i8 %304 to i32, !dbg !2879
  %306 = icmp sgt i32 %305, 1, !dbg !2879
  br i1 %306, label %307, label %310, !dbg !2879

307:                                              ; preds = %302
  %308 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 57), align 8, !dbg !2879
  %309 = zext i8 %308 to i32, !dbg !2879
  br label %311, !dbg !2879

310:                                              ; preds = %302
  br label %311, !dbg !2879

311:                                              ; preds = %310, %307
  %312 = phi i32 [ %309, %307 ], [ 1, %310 ], !dbg !2879
  %313 = sext i32 %312 to i64, !dbg !2879
  %314 = mul i64 8, %313, !dbg !2879
  %315 = call ptr @allocate_super_memory_engine_func(ptr noundef %303, i64 noundef %314, ptr noundef @.str.26, ptr noundef @__FUNCTION__.setup_socket_per_thread_udp_listener_servers, i32 noundef 1369), !dbg !2879
  %316 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 11), align 8, !dbg !2881
  %317 = load i32, ptr %7, align 4, !dbg !2882
  %318 = sext i32 %317 to i64, !dbg !2883
  %319 = getelementptr inbounds ptr, ptr %316, i64 %318, !dbg !2883
  store ptr %315, ptr %319, align 8, !dbg !2884
  store i64 0, ptr %2, align 8, !dbg !2885
  br label %320, !dbg !2887

320:                                              ; preds = %361, %311
  %321 = load i64, ptr %2, align 8, !dbg !2888
  %322 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 57), align 8, !dbg !2890
  %323 = zext i8 %322 to i32, !dbg !2890
  %324 = icmp sgt i32 %323, 1, !dbg !2890
  br i1 %324, label %325, label %328, !dbg !2890

325:                                              ; preds = %320
  %326 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 57), align 8, !dbg !2890
  %327 = zext i8 %326 to i32, !dbg !2890
  br label %329, !dbg !2890

328:                                              ; preds = %320
  br label %329, !dbg !2890

329:                                              ; preds = %328, %325
  %330 = phi i32 [ %327, %325 ], [ 1, %328 ], !dbg !2890
  %331 = sext i32 %330 to i64, !dbg !2890
  %332 = icmp ult i64 %321, %331, !dbg !2891
  br i1 %332, label %333, label %364, !dbg !2892

333:                                              ; preds = %329
  %334 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 6), align 8, !dbg !2893
  %335 = load i64, ptr %1, align 8, !dbg !2895
  %336 = getelementptr inbounds ptr, ptr %334, i64 %335, !dbg !2896
  %337 = load ptr, ptr %336, align 8, !dbg !2896
  %338 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 29), align 4, !dbg !2897
  %339 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 21), align 8, !dbg !2898
  %340 = load i64, ptr %2, align 8, !dbg !2899
  %341 = getelementptr inbounds [256 x ptr], ptr @general_relay_servers, i64 0, i64 %340, !dbg !2900
  %342 = load ptr, ptr %341, align 8, !dbg !2900
  %343 = getelementptr inbounds %struct.relay_server, ptr %342, i32 0, i32 7, !dbg !2901
  %344 = load ptr, ptr %343, align 8, !dbg !2901
  %345 = load i64, ptr %2, align 8, !dbg !2902
  %346 = getelementptr inbounds [256 x ptr], ptr @general_relay_servers, i64 0, i64 %345, !dbg !2903
  %347 = load ptr, ptr %346, align 8, !dbg !2903
  %348 = getelementptr inbounds %struct.relay_server, ptr %347, i32 0, i32 8, !dbg !2904
  %349 = load i64, ptr %2, align 8, !dbg !2905
  %350 = icmp ne i64 %349, 0, !dbg !2906
  %351 = xor i1 %350, true, !dbg !2906
  %352 = zext i1 %351 to i32, !dbg !2906
  %353 = call ptr @create_dtls_listener_server(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 39), ptr noundef %337, i32 noundef %338, i32 noundef %339, ptr noundef %344, ptr noundef %348, i32 noundef %352, ptr noundef null), !dbg !2907
  %354 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 11), align 8, !dbg !2908
  %355 = load i32, ptr %7, align 4, !dbg !2909
  %356 = sext i32 %355 to i64, !dbg !2910
  %357 = getelementptr inbounds ptr, ptr %354, i64 %356, !dbg !2910
  %358 = load ptr, ptr %357, align 8, !dbg !2910
  %359 = load i64, ptr %2, align 8, !dbg !2911
  %360 = getelementptr inbounds ptr, ptr %358, i64 %359, !dbg !2910
  store ptr %353, ptr %360, align 8, !dbg !2912
  br label %361, !dbg !2913

361:                                              ; preds = %333
  %362 = load i64, ptr %2, align 8, !dbg !2914
  %363 = add i64 %362, 1, !dbg !2914
  store i64 %363, ptr %2, align 8, !dbg !2914
  br label %320, !dbg !2915, !llvm.loop !2916

364:                                              ; preds = %329
  %365 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 33), align 4, !dbg !2918
  %366 = icmp ne i32 %365, 0, !dbg !2920
  br i1 %366, label %367, label %432, !dbg !2921

367:                                              ; preds = %364
  %368 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 3), align 8, !dbg !2922
  %369 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 57), align 8, !dbg !2922
  %370 = zext i8 %369 to i32, !dbg !2922
  %371 = icmp sgt i32 %370, 1, !dbg !2922
  br i1 %371, label %372, label %375, !dbg !2922

372:                                              ; preds = %367
  %373 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 57), align 8, !dbg !2922
  %374 = zext i8 %373 to i32, !dbg !2922
  br label %376, !dbg !2922

375:                                              ; preds = %367
  br label %376, !dbg !2922

376:                                              ; preds = %375, %372
  %377 = phi i32 [ %374, %372 ], [ 1, %375 ], !dbg !2922
  %378 = sext i32 %377 to i64, !dbg !2922
  %379 = mul i64 8, %378, !dbg !2922
  %380 = call ptr @allocate_super_memory_engine_func(ptr noundef %368, i64 noundef %379, ptr noundef @.str.26, ptr noundef @__FUNCTION__.setup_socket_per_thread_udp_listener_servers, i32 noundef 1378), !dbg !2922
  %381 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 11), align 8, !dbg !2924
  %382 = load i32, ptr %7, align 4, !dbg !2925
  %383 = add nsw i32 %382, 1, !dbg !2926
  %384 = sext i32 %383 to i64, !dbg !2927
  %385 = getelementptr inbounds ptr, ptr %381, i64 %384, !dbg !2927
  store ptr %380, ptr %385, align 8, !dbg !2928
  store i64 0, ptr %2, align 8, !dbg !2929
  br label %386, !dbg !2931

386:                                              ; preds = %428, %376
  %387 = load i64, ptr %2, align 8, !dbg !2932
  %388 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 57), align 8, !dbg !2934
  %389 = zext i8 %388 to i32, !dbg !2934
  %390 = icmp sgt i32 %389, 1, !dbg !2934
  br i1 %390, label %391, label %394, !dbg !2934

391:                                              ; preds = %386
  %392 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 57), align 8, !dbg !2934
  %393 = zext i8 %392 to i32, !dbg !2934
  br label %395, !dbg !2934

394:                                              ; preds = %386
  br label %395, !dbg !2934

395:                                              ; preds = %394, %391
  %396 = phi i32 [ %393, %391 ], [ 1, %394 ], !dbg !2934
  %397 = sext i32 %396 to i64, !dbg !2934
  %398 = icmp ult i64 %387, %397, !dbg !2935
  br i1 %398, label %399, label %431, !dbg !2936

399:                                              ; preds = %395
  %400 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 6), align 8, !dbg !2937
  %401 = load i64, ptr %1, align 8, !dbg !2939
  %402 = getelementptr inbounds ptr, ptr %400, i64 %401, !dbg !2940
  %403 = load ptr, ptr %402, align 8, !dbg !2940
  %404 = call i32 @get_alt_tls_listener_port(), !dbg !2941
  %405 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 21), align 8, !dbg !2942
  %406 = load i64, ptr %2, align 8, !dbg !2943
  %407 = getelementptr inbounds [256 x ptr], ptr @general_relay_servers, i64 0, i64 %406, !dbg !2944
  %408 = load ptr, ptr %407, align 8, !dbg !2944
  %409 = getelementptr inbounds %struct.relay_server, ptr %408, i32 0, i32 7, !dbg !2945
  %410 = load ptr, ptr %409, align 8, !dbg !2945
  %411 = load i64, ptr %2, align 8, !dbg !2946
  %412 = getelementptr inbounds [256 x ptr], ptr @general_relay_servers, i64 0, i64 %411, !dbg !2947
  %413 = load ptr, ptr %412, align 8, !dbg !2947
  %414 = getelementptr inbounds %struct.relay_server, ptr %413, i32 0, i32 8, !dbg !2948
  %415 = load i64, ptr %2, align 8, !dbg !2949
  %416 = icmp ne i64 %415, 0, !dbg !2950
  %417 = xor i1 %416, true, !dbg !2950
  %418 = zext i1 %417 to i32, !dbg !2950
  %419 = call ptr @create_dtls_listener_server(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 39), ptr noundef %403, i32 noundef %404, i32 noundef %405, ptr noundef %410, ptr noundef %414, i32 noundef %418, ptr noundef null), !dbg !2951
  %420 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 11), align 8, !dbg !2952
  %421 = load i32, ptr %7, align 4, !dbg !2953
  %422 = add nsw i32 %421, 1, !dbg !2954
  %423 = sext i32 %422 to i64, !dbg !2955
  %424 = getelementptr inbounds ptr, ptr %420, i64 %423, !dbg !2955
  %425 = load ptr, ptr %424, align 8, !dbg !2955
  %426 = load i64, ptr %2, align 8, !dbg !2956
  %427 = getelementptr inbounds ptr, ptr %425, i64 %426, !dbg !2955
  store ptr %419, ptr %427, align 8, !dbg !2957
  br label %428, !dbg !2958

428:                                              ; preds = %399
  %429 = load i64, ptr %2, align 8, !dbg !2959
  %430 = add i64 %429, 1, !dbg !2959
  store i64 %430, ptr %2, align 8, !dbg !2959
  br label %386, !dbg !2960, !llvm.loop !2961

431:                                              ; preds = %395
  br label %432, !dbg !2963

432:                                              ; preds = %431, %364
  br label %447, !dbg !2964

433:                                              ; preds = %298, %292
  %434 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 11), align 8, !dbg !2965
  %435 = load i32, ptr %7, align 4, !dbg !2967
  %436 = sext i32 %435 to i64, !dbg !2968
  %437 = getelementptr inbounds ptr, ptr %434, i64 %436, !dbg !2968
  store ptr null, ptr %437, align 8, !dbg !2969
  %438 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 33), align 4, !dbg !2970
  %439 = icmp ne i32 %438, 0, !dbg !2972
  br i1 %439, label %440, label %446, !dbg !2973

440:                                              ; preds = %433
  %441 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 11), align 8, !dbg !2974
  %442 = load i32, ptr %7, align 4, !dbg !2975
  %443 = add nsw i32 %442, 1, !dbg !2976
  %444 = sext i32 %443 to i64, !dbg !2977
  %445 = getelementptr inbounds ptr, ptr %441, i64 %444, !dbg !2977
  store ptr null, ptr %445, align 8, !dbg !2978
  br label %446, !dbg !2977

446:                                              ; preds = %440, %433
  br label %447

447:                                              ; preds = %446, %432
  br label %448, !dbg !2979

448:                                              ; preds = %447
  %449 = load i64, ptr %1, align 8, !dbg !2980
  %450 = add i64 %449, 1, !dbg !2980
  store i64 %450, ptr %1, align 8, !dbg !2980
  br label %130, !dbg !2981, !llvm.loop !2982

451:                                              ; preds = %130
  ret void, !dbg !2984
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_socket_per_endpoint_udp_listener_servers() #0 !dbg !2985 {
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %union.ioa_addr, align 4
  %9 = alloca [129 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata ptr %1, metadata !2986, metadata !DIExpression()), !dbg !2987
  store i64 0, ptr %1, align 8, !dbg !2987
  %17 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 57), align 8, !dbg !2988
  %18 = zext i8 %17 to i32, !dbg !2990
  %19 = icmp sgt i32 %18, 1, !dbg !2991
  br i1 %19, label %20, label %77, !dbg !2992

20:                                               ; preds = %0
  %21 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 34), align 8, !dbg !2993
  %22 = icmp ne i32 %21, 0, !dbg !2996
  br i1 %22, label %38, label %23, !dbg !2997

23:                                               ; preds = %20
  %24 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 8), align 8, !dbg !2998
  %25 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 58), align 1, !dbg !3000
  %26 = zext i8 %25 to i64, !dbg !3000
  %27 = add i64 %26, %24, !dbg !3000
  %28 = trunc i64 %27 to i8, !dbg !3000
  store i8 %28, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 58), align 1, !dbg !3000
  %29 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 33), align 4, !dbg !3001
  %30 = icmp ne i32 %29, 0, !dbg !3003
  br i1 %30, label %31, label %37, !dbg !3004

31:                                               ; preds = %23
  %32 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 8), align 8, !dbg !3005
  %33 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 58), align 1, !dbg !3007
  %34 = zext i8 %33 to i64, !dbg !3007
  %35 = add i64 %34, %32, !dbg !3007
  %36 = trunc i64 %35 to i8, !dbg !3007
  store i8 %36, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 58), align 1, !dbg !3007
  br label %37, !dbg !3008

37:                                               ; preds = %31, %23
  br label %38, !dbg !3009

38:                                               ; preds = %37, %20
  %39 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 18), align 4, !dbg !3010
  %40 = icmp ne i32 %39, 0, !dbg !3012
  br i1 %40, label %63, label %41, !dbg !3013

41:                                               ; preds = %38
  %42 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 34), align 8, !dbg !3014
  %43 = icmp ne i32 %42, 0, !dbg !3015
  br i1 %43, label %48, label %44, !dbg !3016

44:                                               ; preds = %41
  %45 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 28), align 8, !dbg !3017
  %46 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 29), align 4, !dbg !3018
  %47 = icmp ne i32 %45, %46, !dbg !3019
  br i1 %47, label %48, label %63, !dbg !3020

48:                                               ; preds = %44, %41
  %49 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 8), align 8, !dbg !3021
  %50 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 58), align 1, !dbg !3023
  %51 = zext i8 %50 to i64, !dbg !3023
  %52 = add i64 %51, %49, !dbg !3023
  %53 = trunc i64 %52 to i8, !dbg !3023
  store i8 %53, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 58), align 1, !dbg !3023
  %54 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 33), align 4, !dbg !3024
  %55 = icmp ne i32 %54, 0, !dbg !3026
  br i1 %55, label %56, label %62, !dbg !3027

56:                                               ; preds = %48
  %57 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 8), align 8, !dbg !3028
  %58 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 58), align 1, !dbg !3030
  %59 = zext i8 %58 to i64, !dbg !3030
  %60 = add i64 %59, %57, !dbg !3030
  %61 = trunc i64 %60 to i8, !dbg !3030
  store i8 %61, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 58), align 1, !dbg !3030
  br label %62, !dbg !3031

62:                                               ; preds = %56, %48
  br label %63, !dbg !3032

63:                                               ; preds = %62, %44, %38
  %64 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 34), align 8, !dbg !3033
  %65 = icmp ne i32 %64, 0, !dbg !3035
  br i1 %65, label %66, label %69, !dbg !3036

66:                                               ; preds = %63
  %67 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 18), align 4, !dbg !3037
  %68 = icmp ne i32 %67, 0, !dbg !3038
  br i1 %68, label %76, label %69, !dbg !3039

69:                                               ; preds = %66, %63
  %70 = load volatile i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 62, i32 1), align 8, !dbg !3040
  %71 = trunc i64 %70 to i32, !dbg !3042
  %72 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 58), align 1, !dbg !3043
  %73 = zext i8 %72 to i32, !dbg !3043
  %74 = add i32 %73, %71, !dbg !3043
  %75 = trunc i32 %74 to i8, !dbg !3043
  store i8 %75, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 58), align 1, !dbg !3043
  br label %76, !dbg !3044

76:                                               ; preds = %69, %66
  br label %77, !dbg !3045

77:                                               ; preds = %76, %0
  %78 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 34), align 8, !dbg !3046
  %79 = icmp ne i32 %78, 0, !dbg !3049
  br i1 %79, label %80, label %83, !dbg !3050

80:                                               ; preds = %77
  %81 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 18), align 4, !dbg !3051
  %82 = icmp ne i32 %81, 0, !dbg !3052
  br i1 %82, label %156, label %83, !dbg !3053

83:                                               ; preds = %80, %77
  store i64 0, ptr %1, align 8, !dbg !3054
  br label %84, !dbg !3057

84:                                               ; preds = %152, %83
  %85 = load i64, ptr %1, align 8, !dbg !3058
  %86 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 58), align 1, !dbg !3060
  %87 = zext i8 %86 to i32, !dbg !3060
  %88 = icmp sgt i32 %87, 1, !dbg !3060
  br i1 %88, label %89, label %92, !dbg !3060

89:                                               ; preds = %84
  %90 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 58), align 1, !dbg !3060
  %91 = zext i8 %90 to i32, !dbg !3060
  br label %93, !dbg !3060

92:                                               ; preds = %84
  br label %93, !dbg !3060

93:                                               ; preds = %92, %89
  %94 = phi i32 [ %91, %89 ], [ 1, %92 ], !dbg !3060
  %95 = sext i32 %94 to i64, !dbg !3060
  %96 = icmp ult i64 %85, %95, !dbg !3061
  br i1 %96, label %97, label %155, !dbg !3062

97:                                               ; preds = %93
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3063, metadata !DIExpression()), !dbg !3065
  %98 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 3), align 8, !dbg !3066
  store ptr %98, ptr %2, align 8, !dbg !3065
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3067, metadata !DIExpression()), !dbg !3068
  %99 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 33), align 4, !dbg !3069
  store i32 %99, ptr %3, align 4, !dbg !3068
  %100 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 57), align 8, !dbg !3070
  %101 = zext i8 %100 to i32, !dbg !3072
  %102 = icmp sle i32 %101, 1, !dbg !3073
  br i1 %102, label %103, label %116, !dbg !3074

103:                                              ; preds = %97
  br label %104, !dbg !3075

104:                                              ; preds = %110, %103
  %105 = load ptr, ptr @general_relay_servers, align 16, !dbg !3077
  %106 = getelementptr inbounds %struct.relay_server, ptr %105, i32 0, i32 7, !dbg !3078
  %107 = load ptr, ptr %106, align 8, !dbg !3078
  %108 = icmp ne ptr %107, null, !dbg !3079
  %109 = xor i1 %108, true, !dbg !3079
  br i1 %109, label %110, label %112, !dbg !3075

110:                                              ; preds = %104
  %111 = call i32 @sched_yield() #10, !dbg !3080
  br label %104, !dbg !3075, !llvm.loop !3081

112:                                              ; preds = %104
  %113 = load ptr, ptr @general_relay_servers, align 16, !dbg !3083
  %114 = load i64, ptr %1, align 8, !dbg !3084
  %115 = getelementptr inbounds [256 x ptr], ptr @udp_relay_servers, i64 0, i64 %114, !dbg !3085
  store ptr %113, ptr %115, align 8, !dbg !3086
  br label %152, !dbg !3087

116:                                              ; preds = %97
  %117 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 57), align 8, !dbg !3088
  %118 = zext i8 %117 to i32, !dbg !3090
  %119 = icmp sgt i32 %118, 1, !dbg !3091
  br i1 %119, label %120, label %131, !dbg !3092

120:                                              ; preds = %116
  %121 = call ptr @create_new_listener_engine(), !dbg !3093
  store ptr %121, ptr %2, align 8, !dbg !3095
  %122 = load i32, ptr %3, align 4, !dbg !3096
  %123 = icmp ne i32 %122, 0, !dbg !3096
  br i1 %123, label %124, label %128, !dbg !3097

124:                                              ; preds = %120
  %125 = load i64, ptr %1, align 8, !dbg !3098
  %126 = load volatile i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 62, i32 1), align 8, !dbg !3099
  %127 = icmp uge i64 %125, %126, !dbg !3100
  br label %128

128:                                              ; preds = %124, %120
  %129 = phi i1 [ false, %120 ], [ %127, %124 ], !dbg !3101
  %130 = zext i1 %129 to i32, !dbg !3097
  store i32 %130, ptr %3, align 4, !dbg !3102
  br label %131, !dbg !3103

131:                                              ; preds = %128, %116
  br label %132

132:                                              ; preds = %131
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3104, metadata !DIExpression()), !dbg !3105
  %133 = call ptr @new_super_memory_region(), !dbg !3106
  store ptr %133, ptr %4, align 8, !dbg !3105
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3107, metadata !DIExpression()), !dbg !3108
  %134 = load ptr, ptr %4, align 8, !dbg !3109
  %135 = call ptr @allocate_super_memory_region_func(ptr noundef %134, i64 noundef 504, ptr noundef @.str.26, ptr noundef @__FUNCTION__.setup_socket_per_endpoint_udp_listener_servers, i32 noundef 1184), !dbg !3109
  store ptr %135, ptr %5, align 8, !dbg !3108
  %136 = load i64, ptr %1, align 8, !dbg !3110
  %137 = trunc i64 %136 to i8, !dbg !3111
  %138 = zext i8 %137 to i32, !dbg !3111
  %139 = add nsw i32 %138, 128, !dbg !3112
  %140 = trunc i32 %139 to i8, !dbg !3111
  %141 = load ptr, ptr %5, align 8, !dbg !3113
  %142 = getelementptr inbounds %struct.relay_server, ptr %141, i32 0, i32 0, !dbg !3114
  store i8 %140, ptr %142, align 8, !dbg !3115
  %143 = load ptr, ptr %4, align 8, !dbg !3116
  %144 = load ptr, ptr %5, align 8, !dbg !3117
  %145 = getelementptr inbounds %struct.relay_server, ptr %144, i32 0, i32 1, !dbg !3118
  store ptr %143, ptr %145, align 8, !dbg !3119
  %146 = load ptr, ptr %5, align 8, !dbg !3120
  %147 = load ptr, ptr %2, align 8, !dbg !3121
  %148 = load i32, ptr %3, align 4, !dbg !3122
  call void @setup_relay_server(ptr noundef %146, ptr noundef %147, i32 noundef %148), !dbg !3123
  %149 = load ptr, ptr %5, align 8, !dbg !3124
  %150 = load i64, ptr %1, align 8, !dbg !3125
  %151 = getelementptr inbounds [256 x ptr], ptr @udp_relay_servers, i64 0, i64 %150, !dbg !3126
  store ptr %149, ptr %151, align 8, !dbg !3127
  br label %152, !dbg !3128

152:                                              ; preds = %132, %112
  %153 = load i64, ptr %1, align 8, !dbg !3129
  %154 = add i64 %153, 1, !dbg !3129
  store i64 %154, ptr %1, align 8, !dbg !3129
  br label %84, !dbg !3130, !llvm.loop !3131

155:                                              ; preds = %93
  br label %156, !dbg !3133

156:                                              ; preds = %155, %80
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3134, metadata !DIExpression()), !dbg !3135
  store i32 0, ptr %6, align 4, !dbg !3135
  store i64 0, ptr %1, align 8, !dbg !3136
  br label %157, !dbg !3138

157:                                              ; preds = %229, %156
  %158 = load i64, ptr %1, align 8, !dbg !3139
  %159 = load volatile i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 62, i32 1), align 8, !dbg !3141
  %160 = icmp ult i64 %158, %159, !dbg !3142
  br i1 %160, label %161, label %232, !dbg !3143

161:                                              ; preds = %157
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3144, metadata !DIExpression()), !dbg !3146
  %162 = load i64, ptr %1, align 8, !dbg !3147
  %163 = trunc i64 %162 to i32, !dbg !3147
  store i32 %163, ptr %7, align 4, !dbg !3146
  %164 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 34), align 8, !dbg !3148
  %165 = icmp ne i32 %164, 0, !dbg !3150
  br i1 %165, label %166, label %169, !dbg !3151

166:                                              ; preds = %161
  %167 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 18), align 4, !dbg !3152
  %168 = icmp ne i32 %167, 0, !dbg !3153
  br i1 %168, label %228, label %169, !dbg !3154

169:                                              ; preds = %166, %161
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3155, metadata !DIExpression()), !dbg !3157
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3158, metadata !DIExpression()), !dbg !3159
  %170 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 62), align 8, !dbg !3160
  %171 = load i64, ptr %1, align 8, !dbg !3161
  %172 = getelementptr inbounds %union.ioa_addr, ptr %170, i64 %171, !dbg !3162
  call void @addr_cpy(ptr noundef %8, ptr noundef %172), !dbg !3163
  call void @llvm.dbg.declare(metadata ptr %10, metadata !3164, metadata !DIExpression()), !dbg !3165
  %173 = call i32 @addr_get_port(ptr noundef %8), !dbg !3166
  store i32 %173, ptr %10, align 4, !dbg !3165
  %174 = getelementptr inbounds [129 x i8], ptr %9, i64 0, i64 0, !dbg !3167
  %175 = call i32 @addr_to_string_no_port(ptr noundef %8, ptr noundef %174), !dbg !3168
  %176 = load i32, ptr %6, align 4, !dbg !3169
  %177 = sext i32 %176 to i64, !dbg !3169
  %178 = getelementptr inbounds [256 x ptr], ptr @udp_relay_servers, i64 0, i64 %177, !dbg !3169
  %179 = load ptr, ptr %178, align 8, !dbg !3169
  %180 = getelementptr inbounds %struct.relay_server, ptr %179, i32 0, i32 7, !dbg !3169
  %181 = load ptr, ptr %180, align 8, !dbg !3169
  %182 = call ptr @allocate_super_memory_engine_func(ptr noundef %181, i64 noundef 8, ptr noundef @.str.26, ptr noundef @__FUNCTION__.setup_socket_per_endpoint_udp_listener_servers, i32 noundef 1210), !dbg !3169
  %183 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 12), align 8, !dbg !3170
  %184 = load i32, ptr %7, align 4, !dbg !3171
  %185 = sext i32 %184 to i64, !dbg !3172
  %186 = getelementptr inbounds ptr, ptr %183, i64 %185, !dbg !3172
  store ptr %182, ptr %186, align 8, !dbg !3173
  %187 = getelementptr inbounds [129 x i8], ptr %9, i64 0, i64 0, !dbg !3174
  %188 = load i32, ptr %10, align 4, !dbg !3175
  %189 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 21), align 8, !dbg !3176
  %190 = load i32, ptr %6, align 4, !dbg !3177
  %191 = sext i32 %190 to i64, !dbg !3178
  %192 = getelementptr inbounds [256 x ptr], ptr @udp_relay_servers, i64 0, i64 %191, !dbg !3178
  %193 = load ptr, ptr %192, align 8, !dbg !3178
  %194 = getelementptr inbounds %struct.relay_server, ptr %193, i32 0, i32 7, !dbg !3179
  %195 = load ptr, ptr %194, align 8, !dbg !3179
  %196 = load i32, ptr %6, align 4, !dbg !3180
  %197 = sext i32 %196 to i64, !dbg !3181
  %198 = getelementptr inbounds [256 x ptr], ptr @udp_relay_servers, i64 0, i64 %197, !dbg !3181
  %199 = load ptr, ptr %198, align 8, !dbg !3181
  %200 = getelementptr inbounds %struct.relay_server, ptr %199, i32 0, i32 8, !dbg !3182
  %201 = call ptr @create_dtls_listener_server(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 39), ptr noundef %187, i32 noundef %188, i32 noundef %189, ptr noundef %195, ptr noundef %200, i32 noundef 1, ptr noundef null), !dbg !3183
  %202 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 12), align 8, !dbg !3184
  %203 = load i32, ptr %7, align 4, !dbg !3185
  %204 = sext i32 %203 to i64, !dbg !3186
  %205 = getelementptr inbounds ptr, ptr %202, i64 %204, !dbg !3186
  %206 = load ptr, ptr %205, align 8, !dbg !3186
  %207 = getelementptr inbounds ptr, ptr %206, i64 0, !dbg !3186
  store ptr %201, ptr %207, align 8, !dbg !3187
  %208 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 57), align 8, !dbg !3188
  %209 = zext i8 %208 to i32, !dbg !3190
  %210 = icmp sgt i32 %209, 1, !dbg !3191
  br i1 %210, label %211, label %227, !dbg !3192

211:                                              ; preds = %169
  %212 = load i32, ptr %6, align 4, !dbg !3193
  %213 = add nsw i32 %212, 1, !dbg !3193
  store i32 %213, ptr %6, align 4, !dbg !3193
  call void @llvm.dbg.declare(metadata ptr %11, metadata !3195, metadata !DIExpression()), !dbg !3196
  %214 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 12), align 8, !dbg !3197
  %215 = load i32, ptr %7, align 4, !dbg !3199
  %216 = sext i32 %215 to i64, !dbg !3200
  %217 = getelementptr inbounds ptr, ptr %214, i64 %216, !dbg !3200
  %218 = load ptr, ptr %217, align 8, !dbg !3200
  %219 = getelementptr inbounds ptr, ptr %218, i64 0, !dbg !3200
  %220 = load ptr, ptr %219, align 8, !dbg !3200
  %221 = call i32 @pthread_create(ptr noundef %11, ptr noundef null, ptr noundef @run_udp_listener_thread, ptr noundef %220) #10, !dbg !3201
  %222 = icmp ne i32 %221, 0, !dbg !3201
  br i1 %222, label %223, label %224, !dbg !3202

223:                                              ; preds = %211
  call void @perror(ptr noundef @.str.52), !dbg !3203
  call void @exit(i32 noundef -1) #14, !dbg !3205
  unreachable, !dbg !3205

224:                                              ; preds = %211
  %225 = load i64, ptr %11, align 8, !dbg !3206
  %226 = call i32 @pthread_detach(i64 noundef %225) #10, !dbg !3207
  br label %227, !dbg !3208

227:                                              ; preds = %224, %169
  br label %228, !dbg !3209

228:                                              ; preds = %227, %166
  br label %229, !dbg !3210

229:                                              ; preds = %228
  %230 = load i64, ptr %1, align 8, !dbg !3211
  %231 = add i64 %230, 1, !dbg !3211
  store i64 %231, ptr %1, align 8, !dbg !3211
  br label %157, !dbg !3212, !llvm.loop !3213

232:                                              ; preds = %157
  store i64 0, ptr %1, align 8, !dbg !3215
  br label %233, !dbg !3217

233:                                              ; preds = %525, %232
  %234 = load i64, ptr %1, align 8, !dbg !3218
  %235 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 8), align 8, !dbg !3220
  %236 = icmp ult i64 %234, %235, !dbg !3221
  br i1 %236, label %237, label %528, !dbg !3222

237:                                              ; preds = %233
  call void @llvm.dbg.declare(metadata ptr %12, metadata !3223, metadata !DIExpression()), !dbg !3225
  %238 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 33), align 4, !dbg !3226
  %239 = icmp ne i32 %238, 0, !dbg !3227
  br i1 %239, label %240, label %243, !dbg !3227

240:                                              ; preds = %237
  %241 = load i64, ptr %1, align 8, !dbg !3228
  %242 = mul i64 %241, 2, !dbg !3229
  br label %245, !dbg !3227

243:                                              ; preds = %237
  %244 = load i64, ptr %1, align 8, !dbg !3230
  br label %245, !dbg !3227

245:                                              ; preds = %243, %240
  %246 = phi i64 [ %242, %240 ], [ %244, %243 ], !dbg !3227
  %247 = trunc i64 %246 to i32, !dbg !3227
  store i32 %247, ptr %12, align 4, !dbg !3225
  %248 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 34), align 8, !dbg !3231
  %249 = icmp ne i32 %248, 0, !dbg !3233
  br i1 %249, label %368, label %250, !dbg !3234

250:                                              ; preds = %245
  %251 = load i32, ptr %6, align 4, !dbg !3235
  %252 = sext i32 %251 to i64, !dbg !3235
  %253 = getelementptr inbounds [256 x ptr], ptr @udp_relay_servers, i64 0, i64 %252, !dbg !3235
  %254 = load ptr, ptr %253, align 8, !dbg !3235
  %255 = getelementptr inbounds %struct.relay_server, ptr %254, i32 0, i32 7, !dbg !3235
  %256 = load ptr, ptr %255, align 8, !dbg !3235
  %257 = call ptr @allocate_super_memory_engine_func(ptr noundef %256, i64 noundef 8, ptr noundef @.str.26, ptr noundef @__FUNCTION__.setup_socket_per_endpoint_udp_listener_servers, i32 noundef 1233), !dbg !3235
  %258 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 10), align 8, !dbg !3237
  %259 = load i32, ptr %12, align 4, !dbg !3238
  %260 = sext i32 %259 to i64, !dbg !3239
  %261 = getelementptr inbounds ptr, ptr %258, i64 %260, !dbg !3239
  store ptr %257, ptr %261, align 8, !dbg !3240
  %262 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 6), align 8, !dbg !3241
  %263 = load i64, ptr %1, align 8, !dbg !3242
  %264 = getelementptr inbounds ptr, ptr %262, i64 %263, !dbg !3243
  %265 = load ptr, ptr %264, align 8, !dbg !3243
  %266 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 28), align 8, !dbg !3244
  %267 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 21), align 8, !dbg !3245
  %268 = load i32, ptr %6, align 4, !dbg !3246
  %269 = sext i32 %268 to i64, !dbg !3247
  %270 = getelementptr inbounds [256 x ptr], ptr @udp_relay_servers, i64 0, i64 %269, !dbg !3247
  %271 = load ptr, ptr %270, align 8, !dbg !3247
  %272 = getelementptr inbounds %struct.relay_server, ptr %271, i32 0, i32 7, !dbg !3248
  %273 = load ptr, ptr %272, align 8, !dbg !3248
  %274 = load i32, ptr %6, align 4, !dbg !3249
  %275 = sext i32 %274 to i64, !dbg !3250
  %276 = getelementptr inbounds [256 x ptr], ptr @udp_relay_servers, i64 0, i64 %275, !dbg !3250
  %277 = load ptr, ptr %276, align 8, !dbg !3250
  %278 = getelementptr inbounds %struct.relay_server, ptr %277, i32 0, i32 8, !dbg !3251
  %279 = call ptr @create_dtls_listener_server(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 39), ptr noundef %265, i32 noundef %266, i32 noundef %267, ptr noundef %273, ptr noundef %278, i32 noundef 1, ptr noundef null), !dbg !3252
  %280 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 10), align 8, !dbg !3253
  %281 = load i32, ptr %12, align 4, !dbg !3254
  %282 = sext i32 %281 to i64, !dbg !3255
  %283 = getelementptr inbounds ptr, ptr %280, i64 %282, !dbg !3255
  %284 = load ptr, ptr %283, align 8, !dbg !3255
  %285 = getelementptr inbounds ptr, ptr %284, i64 0, !dbg !3255
  store ptr %279, ptr %285, align 8, !dbg !3256
  %286 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 57), align 8, !dbg !3257
  %287 = zext i8 %286 to i32, !dbg !3259
  %288 = icmp sgt i32 %287, 1, !dbg !3260
  br i1 %288, label %289, label %305, !dbg !3261

289:                                              ; preds = %250
  %290 = load i32, ptr %6, align 4, !dbg !3262
  %291 = add nsw i32 %290, 1, !dbg !3262
  store i32 %291, ptr %6, align 4, !dbg !3262
  call void @llvm.dbg.declare(metadata ptr %13, metadata !3264, metadata !DIExpression()), !dbg !3265
  %292 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 10), align 8, !dbg !3266
  %293 = load i32, ptr %12, align 4, !dbg !3268
  %294 = sext i32 %293 to i64, !dbg !3269
  %295 = getelementptr inbounds ptr, ptr %292, i64 %294, !dbg !3269
  %296 = load ptr, ptr %295, align 8, !dbg !3269
  %297 = getelementptr inbounds ptr, ptr %296, i64 0, !dbg !3269
  %298 = load ptr, ptr %297, align 8, !dbg !3269
  %299 = call i32 @pthread_create(ptr noundef %13, ptr noundef null, ptr noundef @run_udp_listener_thread, ptr noundef %298) #10, !dbg !3270
  %300 = icmp ne i32 %299, 0, !dbg !3270
  br i1 %300, label %301, label %302, !dbg !3271

301:                                              ; preds = %289
  call void @perror(ptr noundef @.str.53), !dbg !3272
  call void @exit(i32 noundef -1) #14, !dbg !3274
  unreachable, !dbg !3274

302:                                              ; preds = %289
  %303 = load i64, ptr %13, align 8, !dbg !3275
  %304 = call i32 @pthread_detach(i64 noundef %303) #10, !dbg !3276
  br label %305, !dbg !3277

305:                                              ; preds = %302, %250
  %306 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 33), align 4, !dbg !3278
  %307 = icmp ne i32 %306, 0, !dbg !3280
  br i1 %307, label %308, label %367, !dbg !3281

308:                                              ; preds = %305
  %309 = load i32, ptr %6, align 4, !dbg !3282
  %310 = sext i32 %309 to i64, !dbg !3282
  %311 = getelementptr inbounds [256 x ptr], ptr @udp_relay_servers, i64 0, i64 %310, !dbg !3282
  %312 = load ptr, ptr %311, align 8, !dbg !3282
  %313 = getelementptr inbounds %struct.relay_server, ptr %312, i32 0, i32 7, !dbg !3282
  %314 = load ptr, ptr %313, align 8, !dbg !3282
  %315 = call ptr @allocate_super_memory_engine_func(ptr noundef %314, i64 noundef 8, ptr noundef @.str.26, ptr noundef @__FUNCTION__.setup_socket_per_endpoint_udp_listener_servers, i32 noundef 1248), !dbg !3282
  %316 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 10), align 8, !dbg !3284
  %317 = load i32, ptr %12, align 4, !dbg !3285
  %318 = add nsw i32 %317, 1, !dbg !3286
  %319 = sext i32 %318 to i64, !dbg !3287
  %320 = getelementptr inbounds ptr, ptr %316, i64 %319, !dbg !3287
  store ptr %315, ptr %320, align 8, !dbg !3288
  %321 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 6), align 8, !dbg !3289
  %322 = load i64, ptr %1, align 8, !dbg !3290
  %323 = getelementptr inbounds ptr, ptr %321, i64 %322, !dbg !3291
  %324 = load ptr, ptr %323, align 8, !dbg !3291
  %325 = call i32 @get_alt_listener_port(), !dbg !3292
  %326 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 21), align 8, !dbg !3293
  %327 = load i32, ptr %6, align 4, !dbg !3294
  %328 = sext i32 %327 to i64, !dbg !3295
  %329 = getelementptr inbounds [256 x ptr], ptr @udp_relay_servers, i64 0, i64 %328, !dbg !3295
  %330 = load ptr, ptr %329, align 8, !dbg !3295
  %331 = getelementptr inbounds %struct.relay_server, ptr %330, i32 0, i32 7, !dbg !3296
  %332 = load ptr, ptr %331, align 8, !dbg !3296
  %333 = load i32, ptr %6, align 4, !dbg !3297
  %334 = sext i32 %333 to i64, !dbg !3298
  %335 = getelementptr inbounds [256 x ptr], ptr @udp_relay_servers, i64 0, i64 %334, !dbg !3298
  %336 = load ptr, ptr %335, align 8, !dbg !3298
  %337 = getelementptr inbounds %struct.relay_server, ptr %336, i32 0, i32 8, !dbg !3299
  %338 = call ptr @create_dtls_listener_server(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 39), ptr noundef %324, i32 noundef %325, i32 noundef %326, ptr noundef %332, ptr noundef %337, i32 noundef 1, ptr noundef null), !dbg !3300
  %339 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 10), align 8, !dbg !3301
  %340 = load i32, ptr %12, align 4, !dbg !3302
  %341 = add nsw i32 %340, 1, !dbg !3303
  %342 = sext i32 %341 to i64, !dbg !3304
  %343 = getelementptr inbounds ptr, ptr %339, i64 %342, !dbg !3304
  %344 = load ptr, ptr %343, align 8, !dbg !3304
  %345 = getelementptr inbounds ptr, ptr %344, i64 0, !dbg !3304
  store ptr %338, ptr %345, align 8, !dbg !3305
  %346 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 57), align 8, !dbg !3306
  %347 = zext i8 %346 to i32, !dbg !3308
  %348 = icmp sgt i32 %347, 1, !dbg !3309
  br i1 %348, label %349, label %366, !dbg !3310

349:                                              ; preds = %308
  %350 = load i32, ptr %6, align 4, !dbg !3311
  %351 = add nsw i32 %350, 1, !dbg !3311
  store i32 %351, ptr %6, align 4, !dbg !3311
  call void @llvm.dbg.declare(metadata ptr %14, metadata !3313, metadata !DIExpression()), !dbg !3314
  %352 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 10), align 8, !dbg !3315
  %353 = load i32, ptr %12, align 4, !dbg !3317
  %354 = add nsw i32 %353, 1, !dbg !3318
  %355 = sext i32 %354 to i64, !dbg !3319
  %356 = getelementptr inbounds ptr, ptr %352, i64 %355, !dbg !3319
  %357 = load ptr, ptr %356, align 8, !dbg !3319
  %358 = getelementptr inbounds ptr, ptr %357, i64 0, !dbg !3319
  %359 = load ptr, ptr %358, align 8, !dbg !3319
  %360 = call i32 @pthread_create(ptr noundef %14, ptr noundef null, ptr noundef @run_udp_listener_thread, ptr noundef %359) #10, !dbg !3320
  %361 = icmp ne i32 %360, 0, !dbg !3320
  br i1 %361, label %362, label %363, !dbg !3321

362:                                              ; preds = %349
  call void @perror(ptr noundef @.str.53), !dbg !3322
  call void @exit(i32 noundef -1) #14, !dbg !3324
  unreachable, !dbg !3324

363:                                              ; preds = %349
  %364 = load i64, ptr %14, align 8, !dbg !3325
  %365 = call i32 @pthread_detach(i64 noundef %364) #10, !dbg !3326
  br label %366, !dbg !3327

366:                                              ; preds = %363, %308
  br label %367, !dbg !3328

367:                                              ; preds = %366, %305
  br label %382, !dbg !3329

368:                                              ; preds = %245
  %369 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 10), align 8, !dbg !3330
  %370 = load i32, ptr %12, align 4, !dbg !3332
  %371 = sext i32 %370 to i64, !dbg !3333
  %372 = getelementptr inbounds ptr, ptr %369, i64 %371, !dbg !3333
  store ptr null, ptr %372, align 8, !dbg !3334
  %373 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 33), align 4, !dbg !3335
  %374 = icmp ne i32 %373, 0, !dbg !3337
  br i1 %374, label %375, label %381, !dbg !3338

375:                                              ; preds = %368
  %376 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 10), align 8, !dbg !3339
  %377 = load i32, ptr %12, align 4, !dbg !3340
  %378 = add nsw i32 %377, 1, !dbg !3341
  %379 = sext i32 %378 to i64, !dbg !3342
  %380 = getelementptr inbounds ptr, ptr %376, i64 %379, !dbg !3342
  store ptr null, ptr %380, align 8, !dbg !3343
  br label %381, !dbg !3342

381:                                              ; preds = %375, %368
  br label %382

382:                                              ; preds = %381, %367
  %383 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 18), align 4, !dbg !3344
  %384 = icmp ne i32 %383, 0, !dbg !3346
  br i1 %384, label %510, label %385, !dbg !3347

385:                                              ; preds = %382
  %386 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 34), align 8, !dbg !3348
  %387 = icmp ne i32 %386, 0, !dbg !3349
  br i1 %387, label %392, label %388, !dbg !3350

388:                                              ; preds = %385
  %389 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 28), align 8, !dbg !3351
  %390 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 29), align 4, !dbg !3352
  %391 = icmp ne i32 %389, %390, !dbg !3353
  br i1 %391, label %392, label %510, !dbg !3354

392:                                              ; preds = %388, %385
  %393 = load i32, ptr %6, align 4, !dbg !3355
  %394 = sext i32 %393 to i64, !dbg !3355
  %395 = getelementptr inbounds [256 x ptr], ptr @udp_relay_servers, i64 0, i64 %394, !dbg !3355
  %396 = load ptr, ptr %395, align 8, !dbg !3355
  %397 = getelementptr inbounds %struct.relay_server, ptr %396, i32 0, i32 7, !dbg !3355
  %398 = load ptr, ptr %397, align 8, !dbg !3355
  %399 = call ptr @allocate_super_memory_engine_func(ptr noundef %398, i64 noundef 8, ptr noundef @.str.26, ptr noundef @__FUNCTION__.setup_socket_per_endpoint_udp_listener_servers, i32 noundef 1268), !dbg !3355
  %400 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 11), align 8, !dbg !3357
  %401 = load i32, ptr %12, align 4, !dbg !3358
  %402 = sext i32 %401 to i64, !dbg !3359
  %403 = getelementptr inbounds ptr, ptr %400, i64 %402, !dbg !3359
  store ptr %399, ptr %403, align 8, !dbg !3360
  %404 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 6), align 8, !dbg !3361
  %405 = load i64, ptr %1, align 8, !dbg !3362
  %406 = getelementptr inbounds ptr, ptr %404, i64 %405, !dbg !3363
  %407 = load ptr, ptr %406, align 8, !dbg !3363
  %408 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 29), align 4, !dbg !3364
  %409 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 21), align 8, !dbg !3365
  %410 = load i32, ptr %6, align 4, !dbg !3366
  %411 = sext i32 %410 to i64, !dbg !3367
  %412 = getelementptr inbounds [256 x ptr], ptr @udp_relay_servers, i64 0, i64 %411, !dbg !3367
  %413 = load ptr, ptr %412, align 8, !dbg !3367
  %414 = getelementptr inbounds %struct.relay_server, ptr %413, i32 0, i32 7, !dbg !3368
  %415 = load ptr, ptr %414, align 8, !dbg !3368
  %416 = load i32, ptr %6, align 4, !dbg !3369
  %417 = sext i32 %416 to i64, !dbg !3370
  %418 = getelementptr inbounds [256 x ptr], ptr @udp_relay_servers, i64 0, i64 %417, !dbg !3370
  %419 = load ptr, ptr %418, align 8, !dbg !3370
  %420 = getelementptr inbounds %struct.relay_server, ptr %419, i32 0, i32 8, !dbg !3371
  %421 = call ptr @create_dtls_listener_server(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 39), ptr noundef %407, i32 noundef %408, i32 noundef %409, ptr noundef %415, ptr noundef %420, i32 noundef 1, ptr noundef null), !dbg !3372
  %422 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 11), align 8, !dbg !3373
  %423 = load i32, ptr %12, align 4, !dbg !3374
  %424 = sext i32 %423 to i64, !dbg !3375
  %425 = getelementptr inbounds ptr, ptr %422, i64 %424, !dbg !3375
  %426 = load ptr, ptr %425, align 8, !dbg !3375
  %427 = getelementptr inbounds ptr, ptr %426, i64 0, !dbg !3375
  store ptr %421, ptr %427, align 8, !dbg !3376
  %428 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 57), align 8, !dbg !3377
  %429 = zext i8 %428 to i32, !dbg !3379
  %430 = icmp sgt i32 %429, 1, !dbg !3380
  br i1 %430, label %431, label %447, !dbg !3381

431:                                              ; preds = %392
  %432 = load i32, ptr %6, align 4, !dbg !3382
  %433 = add nsw i32 %432, 1, !dbg !3382
  store i32 %433, ptr %6, align 4, !dbg !3382
  call void @llvm.dbg.declare(metadata ptr %15, metadata !3384, metadata !DIExpression()), !dbg !3385
  %434 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 11), align 8, !dbg !3386
  %435 = load i32, ptr %12, align 4, !dbg !3388
  %436 = sext i32 %435 to i64, !dbg !3389
  %437 = getelementptr inbounds ptr, ptr %434, i64 %436, !dbg !3389
  %438 = load ptr, ptr %437, align 8, !dbg !3389
  %439 = getelementptr inbounds ptr, ptr %438, i64 0, !dbg !3389
  %440 = load ptr, ptr %439, align 8, !dbg !3389
  %441 = call i32 @pthread_create(ptr noundef %15, ptr noundef null, ptr noundef @run_udp_listener_thread, ptr noundef %440) #10, !dbg !3390
  %442 = icmp ne i32 %441, 0, !dbg !3390
  br i1 %442, label %443, label %444, !dbg !3391

443:                                              ; preds = %431
  call void @perror(ptr noundef @.str.53), !dbg !3392
  call void @exit(i32 noundef -1) #14, !dbg !3394
  unreachable, !dbg !3394

444:                                              ; preds = %431
  %445 = load i64, ptr %15, align 8, !dbg !3395
  %446 = call i32 @pthread_detach(i64 noundef %445) #10, !dbg !3396
  br label %447, !dbg !3397

447:                                              ; preds = %444, %392
  %448 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 33), align 4, !dbg !3398
  %449 = icmp ne i32 %448, 0, !dbg !3400
  br i1 %449, label %450, label %509, !dbg !3401

450:                                              ; preds = %447
  %451 = load i32, ptr %6, align 4, !dbg !3402
  %452 = sext i32 %451 to i64, !dbg !3402
  %453 = getelementptr inbounds [256 x ptr], ptr @udp_relay_servers, i64 0, i64 %452, !dbg !3402
  %454 = load ptr, ptr %453, align 8, !dbg !3402
  %455 = getelementptr inbounds %struct.relay_server, ptr %454, i32 0, i32 7, !dbg !3402
  %456 = load ptr, ptr %455, align 8, !dbg !3402
  %457 = call ptr @allocate_super_memory_engine_func(ptr noundef %456, i64 noundef 8, ptr noundef @.str.26, ptr noundef @__FUNCTION__.setup_socket_per_endpoint_udp_listener_servers, i32 noundef 1283), !dbg !3402
  %458 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 11), align 8, !dbg !3404
  %459 = load i32, ptr %12, align 4, !dbg !3405
  %460 = add nsw i32 %459, 1, !dbg !3406
  %461 = sext i32 %460 to i64, !dbg !3407
  %462 = getelementptr inbounds ptr, ptr %458, i64 %461, !dbg !3407
  store ptr %457, ptr %462, align 8, !dbg !3408
  %463 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 6), align 8, !dbg !3409
  %464 = load i64, ptr %1, align 8, !dbg !3410
  %465 = getelementptr inbounds ptr, ptr %463, i64 %464, !dbg !3411
  %466 = load ptr, ptr %465, align 8, !dbg !3411
  %467 = call i32 @get_alt_tls_listener_port(), !dbg !3412
  %468 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 21), align 8, !dbg !3413
  %469 = load i32, ptr %6, align 4, !dbg !3414
  %470 = sext i32 %469 to i64, !dbg !3415
  %471 = getelementptr inbounds [256 x ptr], ptr @udp_relay_servers, i64 0, i64 %470, !dbg !3415
  %472 = load ptr, ptr %471, align 8, !dbg !3415
  %473 = getelementptr inbounds %struct.relay_server, ptr %472, i32 0, i32 7, !dbg !3416
  %474 = load ptr, ptr %473, align 8, !dbg !3416
  %475 = load i32, ptr %6, align 4, !dbg !3417
  %476 = sext i32 %475 to i64, !dbg !3418
  %477 = getelementptr inbounds [256 x ptr], ptr @udp_relay_servers, i64 0, i64 %476, !dbg !3418
  %478 = load ptr, ptr %477, align 8, !dbg !3418
  %479 = getelementptr inbounds %struct.relay_server, ptr %478, i32 0, i32 8, !dbg !3419
  %480 = call ptr @create_dtls_listener_server(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 39), ptr noundef %466, i32 noundef %467, i32 noundef %468, ptr noundef %474, ptr noundef %479, i32 noundef 1, ptr noundef null), !dbg !3420
  %481 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 11), align 8, !dbg !3421
  %482 = load i32, ptr %12, align 4, !dbg !3422
  %483 = add nsw i32 %482, 1, !dbg !3423
  %484 = sext i32 %483 to i64, !dbg !3424
  %485 = getelementptr inbounds ptr, ptr %481, i64 %484, !dbg !3424
  %486 = load ptr, ptr %485, align 8, !dbg !3424
  %487 = getelementptr inbounds ptr, ptr %486, i64 0, !dbg !3424
  store ptr %480, ptr %487, align 8, !dbg !3425
  %488 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 57), align 8, !dbg !3426
  %489 = zext i8 %488 to i32, !dbg !3428
  %490 = icmp sgt i32 %489, 1, !dbg !3429
  br i1 %490, label %491, label %508, !dbg !3430

491:                                              ; preds = %450
  %492 = load i32, ptr %6, align 4, !dbg !3431
  %493 = add nsw i32 %492, 1, !dbg !3431
  store i32 %493, ptr %6, align 4, !dbg !3431
  call void @llvm.dbg.declare(metadata ptr %16, metadata !3433, metadata !DIExpression()), !dbg !3434
  %494 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 11), align 8, !dbg !3435
  %495 = load i32, ptr %12, align 4, !dbg !3437
  %496 = add nsw i32 %495, 1, !dbg !3438
  %497 = sext i32 %496 to i64, !dbg !3439
  %498 = getelementptr inbounds ptr, ptr %494, i64 %497, !dbg !3439
  %499 = load ptr, ptr %498, align 8, !dbg !3439
  %500 = getelementptr inbounds ptr, ptr %499, i64 0, !dbg !3439
  %501 = load ptr, ptr %500, align 8, !dbg !3439
  %502 = call i32 @pthread_create(ptr noundef %16, ptr noundef null, ptr noundef @run_udp_listener_thread, ptr noundef %501) #10, !dbg !3440
  %503 = icmp ne i32 %502, 0, !dbg !3440
  br i1 %503, label %504, label %505, !dbg !3441

504:                                              ; preds = %491
  call void @perror(ptr noundef @.str.53), !dbg !3442
  call void @exit(i32 noundef -1) #14, !dbg !3444
  unreachable, !dbg !3444

505:                                              ; preds = %491
  %506 = load i64, ptr %16, align 8, !dbg !3445
  %507 = call i32 @pthread_detach(i64 noundef %506) #10, !dbg !3446
  br label %508, !dbg !3447

508:                                              ; preds = %505, %450
  br label %509, !dbg !3448

509:                                              ; preds = %508, %447
  br label %524, !dbg !3449

510:                                              ; preds = %388, %382
  %511 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 11), align 8, !dbg !3450
  %512 = load i32, ptr %12, align 4, !dbg !3452
  %513 = sext i32 %512 to i64, !dbg !3453
  %514 = getelementptr inbounds ptr, ptr %511, i64 %513, !dbg !3453
  store ptr null, ptr %514, align 8, !dbg !3454
  %515 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 33), align 4, !dbg !3455
  %516 = icmp ne i32 %515, 0, !dbg !3457
  br i1 %516, label %517, label %523, !dbg !3458

517:                                              ; preds = %510
  %518 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 11), align 8, !dbg !3459
  %519 = load i32, ptr %12, align 4, !dbg !3460
  %520 = add nsw i32 %519, 1, !dbg !3461
  %521 = sext i32 %520 to i64, !dbg !3462
  %522 = getelementptr inbounds ptr, ptr %518, i64 %521, !dbg !3462
  store ptr null, ptr %522, align 8, !dbg !3463
  br label %523, !dbg !3462

523:                                              ; preds = %517, %510
  br label %524

524:                                              ; preds = %523, %509
  br label %525, !dbg !3464

525:                                              ; preds = %524
  %526 = load i64, ptr %1, align 8, !dbg !3465
  %527 = add i64 %526, 1, !dbg !3465
  store i64 %527, ptr %1, align 8, !dbg !3465
  br label %233, !dbg !3466, !llvm.loop !3467

528:                                              ; preds = %233
  ret void, !dbg !3469
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_socket_per_session_udp_listener_servers() #0 !dbg !3470 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca %union.ioa_addr, align 4
  %4 = alloca [129 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata ptr %1, metadata !3471, metadata !DIExpression()), !dbg !3472
  store i64 0, ptr %1, align 8, !dbg !3472
  store i64 0, ptr %1, align 8, !dbg !3473
  br label %7, !dbg !3475

7:                                                ; preds = %44, %0
  %8 = load i64, ptr %1, align 8, !dbg !3476
  %9 = load volatile i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 62, i32 1), align 8, !dbg !3478
  %10 = icmp ult i64 %8, %9, !dbg !3479
  br i1 %10, label %11, label %47, !dbg !3480

11:                                               ; preds = %7
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3481, metadata !DIExpression()), !dbg !3483
  %12 = load i64, ptr %1, align 8, !dbg !3484
  %13 = trunc i64 %12 to i32, !dbg !3484
  store i32 %13, ptr %2, align 4, !dbg !3483
  %14 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 34), align 8, !dbg !3485
  %15 = icmp ne i32 %14, 0, !dbg !3487
  br i1 %15, label %16, label %19, !dbg !3488

16:                                               ; preds = %11
  %17 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 18), align 4, !dbg !3489
  %18 = icmp ne i32 %17, 0, !dbg !3490
  br i1 %18, label %43, label %19, !dbg !3491

19:                                               ; preds = %16, %11
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3492, metadata !DIExpression()), !dbg !3494
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3495, metadata !DIExpression()), !dbg !3496
  %20 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 62), align 8, !dbg !3497
  %21 = load i64, ptr %1, align 8, !dbg !3498
  %22 = getelementptr inbounds %union.ioa_addr, ptr %20, i64 %21, !dbg !3499
  call void @addr_cpy(ptr noundef %3, ptr noundef %22), !dbg !3500
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3501, metadata !DIExpression()), !dbg !3502
  %23 = call i32 @addr_get_port(ptr noundef %3), !dbg !3503
  store i32 %23, ptr %5, align 4, !dbg !3502
  %24 = getelementptr inbounds [129 x i8], ptr %4, i64 0, i64 0, !dbg !3504
  %25 = call i32 @addr_to_string_no_port(ptr noundef %3, ptr noundef %24), !dbg !3505
  %26 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 3), align 8, !dbg !3506
  %27 = call ptr @allocate_super_memory_engine_func(ptr noundef %26, i64 noundef 8, ptr noundef @.str.26, ptr noundef @__FUNCTION__.setup_socket_per_session_udp_listener_servers, i32 noundef 1410), !dbg !3506
  %28 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 12), align 8, !dbg !3507
  %29 = load i32, ptr %2, align 4, !dbg !3508
  %30 = sext i32 %29 to i64, !dbg !3509
  %31 = getelementptr inbounds ptr, ptr %28, i64 %30, !dbg !3509
  store ptr %27, ptr %31, align 8, !dbg !3510
  %32 = getelementptr inbounds [129 x i8], ptr %4, i64 0, i64 0, !dbg !3511
  %33 = load i32, ptr %5, align 4, !dbg !3512
  %34 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 21), align 8, !dbg !3513
  %35 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 3), align 8, !dbg !3514
  %36 = call ptr @create_dtls_listener_server(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 39), ptr noundef %32, i32 noundef %33, i32 noundef %34, ptr noundef %35, ptr noundef null, i32 noundef 1, ptr noundef @send_socket_to_general_relay), !dbg !3515
  %37 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 12), align 8, !dbg !3516
  %38 = load i32, ptr %2, align 4, !dbg !3517
  %39 = sext i32 %38 to i64, !dbg !3518
  %40 = getelementptr inbounds ptr, ptr %37, i64 %39, !dbg !3518
  %41 = load ptr, ptr %40, align 8, !dbg !3518
  %42 = getelementptr inbounds ptr, ptr %41, i64 0, !dbg !3518
  store ptr %36, ptr %42, align 8, !dbg !3519
  br label %43, !dbg !3520

43:                                               ; preds = %19, %16
  br label %44, !dbg !3521

44:                                               ; preds = %43
  %45 = load i64, ptr %1, align 8, !dbg !3522
  %46 = add i64 %45, 1, !dbg !3522
  store i64 %46, ptr %1, align 8, !dbg !3522
  br label %7, !dbg !3523, !llvm.loop !3524

47:                                               ; preds = %7
  store i64 0, ptr %1, align 8, !dbg !3526
  br label %48, !dbg !3528

48:                                               ; preds = %198, %47
  %49 = load i64, ptr %1, align 8, !dbg !3529
  %50 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 8), align 8, !dbg !3531
  %51 = icmp ult i64 %49, %50, !dbg !3532
  br i1 %51, label %52, label %201, !dbg !3533

52:                                               ; preds = %48
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3534, metadata !DIExpression()), !dbg !3536
  %53 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 33), align 4, !dbg !3537
  %54 = icmp ne i32 %53, 0, !dbg !3538
  br i1 %54, label %55, label %58, !dbg !3538

55:                                               ; preds = %52
  %56 = load i64, ptr %1, align 8, !dbg !3539
  %57 = mul i64 %56, 2, !dbg !3540
  br label %60, !dbg !3538

58:                                               ; preds = %52
  %59 = load i64, ptr %1, align 8, !dbg !3541
  br label %60, !dbg !3538

60:                                               ; preds = %58, %55
  %61 = phi i64 [ %57, %55 ], [ %59, %58 ], !dbg !3538
  %62 = trunc i64 %61 to i32, !dbg !3538
  store i32 %62, ptr %6, align 4, !dbg !3536
  %63 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 34), align 8, !dbg !3542
  %64 = icmp ne i32 %63, 0, !dbg !3544
  br i1 %64, label %112, label %65, !dbg !3545

65:                                               ; preds = %60
  %66 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 3), align 8, !dbg !3546
  %67 = call ptr @allocate_super_memory_engine_func(ptr noundef %66, i64 noundef 8, ptr noundef @.str.26, ptr noundef @__FUNCTION__.setup_socket_per_session_udp_listener_servers, i32 noundef 1425), !dbg !3546
  %68 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 10), align 8, !dbg !3548
  %69 = load i32, ptr %6, align 4, !dbg !3549
  %70 = sext i32 %69 to i64, !dbg !3550
  %71 = getelementptr inbounds ptr, ptr %68, i64 %70, !dbg !3550
  store ptr %67, ptr %71, align 8, !dbg !3551
  %72 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 6), align 8, !dbg !3552
  %73 = load i64, ptr %1, align 8, !dbg !3553
  %74 = getelementptr inbounds ptr, ptr %72, i64 %73, !dbg !3554
  %75 = load ptr, ptr %74, align 8, !dbg !3554
  %76 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 28), align 8, !dbg !3555
  %77 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 21), align 8, !dbg !3556
  %78 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 3), align 8, !dbg !3557
  %79 = call ptr @create_dtls_listener_server(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 39), ptr noundef %75, i32 noundef %76, i32 noundef %77, ptr noundef %78, ptr noundef null, i32 noundef 1, ptr noundef @send_socket_to_general_relay), !dbg !3558
  %80 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 10), align 8, !dbg !3559
  %81 = load i32, ptr %6, align 4, !dbg !3560
  %82 = sext i32 %81 to i64, !dbg !3561
  %83 = getelementptr inbounds ptr, ptr %80, i64 %82, !dbg !3561
  %84 = load ptr, ptr %83, align 8, !dbg !3561
  %85 = getelementptr inbounds ptr, ptr %84, i64 0, !dbg !3561
  store ptr %79, ptr %85, align 8, !dbg !3562
  %86 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 33), align 4, !dbg !3563
  %87 = icmp ne i32 %86, 0, !dbg !3565
  br i1 %87, label %88, label %111, !dbg !3566

88:                                               ; preds = %65
  %89 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 3), align 8, !dbg !3567
  %90 = call ptr @allocate_super_memory_engine_func(ptr noundef %89, i64 noundef 8, ptr noundef @.str.26, ptr noundef @__FUNCTION__.setup_socket_per_session_udp_listener_servers, i32 noundef 1432), !dbg !3567
  %91 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 10), align 8, !dbg !3569
  %92 = load i32, ptr %6, align 4, !dbg !3570
  %93 = add nsw i32 %92, 1, !dbg !3571
  %94 = sext i32 %93 to i64, !dbg !3572
  %95 = getelementptr inbounds ptr, ptr %91, i64 %94, !dbg !3572
  store ptr %90, ptr %95, align 8, !dbg !3573
  %96 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 6), align 8, !dbg !3574
  %97 = load i64, ptr %1, align 8, !dbg !3575
  %98 = getelementptr inbounds ptr, ptr %96, i64 %97, !dbg !3576
  %99 = load ptr, ptr %98, align 8, !dbg !3576
  %100 = call i32 @get_alt_listener_port(), !dbg !3577
  %101 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 21), align 8, !dbg !3578
  %102 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 3), align 8, !dbg !3579
  %103 = call ptr @create_dtls_listener_server(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 39), ptr noundef %99, i32 noundef %100, i32 noundef %101, ptr noundef %102, ptr noundef null, i32 noundef 1, ptr noundef @send_socket_to_general_relay), !dbg !3580
  %104 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 10), align 8, !dbg !3581
  %105 = load i32, ptr %6, align 4, !dbg !3582
  %106 = add nsw i32 %105, 1, !dbg !3583
  %107 = sext i32 %106 to i64, !dbg !3584
  %108 = getelementptr inbounds ptr, ptr %104, i64 %107, !dbg !3584
  %109 = load ptr, ptr %108, align 8, !dbg !3584
  %110 = getelementptr inbounds ptr, ptr %109, i64 0, !dbg !3584
  store ptr %103, ptr %110, align 8, !dbg !3585
  br label %111, !dbg !3586

111:                                              ; preds = %88, %65
  br label %126, !dbg !3587

112:                                              ; preds = %60
  %113 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 10), align 8, !dbg !3588
  %114 = load i32, ptr %6, align 4, !dbg !3590
  %115 = sext i32 %114 to i64, !dbg !3591
  %116 = getelementptr inbounds ptr, ptr %113, i64 %115, !dbg !3591
  store ptr null, ptr %116, align 8, !dbg !3592
  %117 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 33), align 4, !dbg !3593
  %118 = icmp ne i32 %117, 0, !dbg !3595
  br i1 %118, label %119, label %125, !dbg !3596

119:                                              ; preds = %112
  %120 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 10), align 8, !dbg !3597
  %121 = load i32, ptr %6, align 4, !dbg !3598
  %122 = add nsw i32 %121, 1, !dbg !3599
  %123 = sext i32 %122 to i64, !dbg !3600
  %124 = getelementptr inbounds ptr, ptr %120, i64 %123, !dbg !3600
  store ptr null, ptr %124, align 8, !dbg !3601
  br label %125, !dbg !3600

125:                                              ; preds = %119, %112
  br label %126

126:                                              ; preds = %125, %111
  %127 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 18), align 4, !dbg !3602
  %128 = icmp ne i32 %127, 0, !dbg !3604
  br i1 %128, label %183, label %129, !dbg !3605

129:                                              ; preds = %126
  %130 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 34), align 8, !dbg !3606
  %131 = icmp ne i32 %130, 0, !dbg !3607
  br i1 %131, label %136, label %132, !dbg !3608

132:                                              ; preds = %129
  %133 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 28), align 8, !dbg !3609
  %134 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 29), align 4, !dbg !3610
  %135 = icmp ne i32 %133, %134, !dbg !3611
  br i1 %135, label %136, label %183, !dbg !3612

136:                                              ; preds = %132, %129
  %137 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 3), align 8, !dbg !3613
  %138 = call ptr @allocate_super_memory_engine_func(ptr noundef %137, i64 noundef 8, ptr noundef @.str.26, ptr noundef @__FUNCTION__.setup_socket_per_session_udp_listener_servers, i32 noundef 1444), !dbg !3613
  %139 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 11), align 8, !dbg !3615
  %140 = load i32, ptr %6, align 4, !dbg !3616
  %141 = sext i32 %140 to i64, !dbg !3617
  %142 = getelementptr inbounds ptr, ptr %139, i64 %141, !dbg !3617
  store ptr %138, ptr %142, align 8, !dbg !3618
  %143 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 6), align 8, !dbg !3619
  %144 = load i64, ptr %1, align 8, !dbg !3620
  %145 = getelementptr inbounds ptr, ptr %143, i64 %144, !dbg !3621
  %146 = load ptr, ptr %145, align 8, !dbg !3621
  %147 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 29), align 4, !dbg !3622
  %148 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 21), align 8, !dbg !3623
  %149 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 3), align 8, !dbg !3624
  %150 = call ptr @create_dtls_listener_server(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 39), ptr noundef %146, i32 noundef %147, i32 noundef %148, ptr noundef %149, ptr noundef null, i32 noundef 1, ptr noundef @send_socket_to_general_relay), !dbg !3625
  %151 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 11), align 8, !dbg !3626
  %152 = load i32, ptr %6, align 4, !dbg !3627
  %153 = sext i32 %152 to i64, !dbg !3628
  %154 = getelementptr inbounds ptr, ptr %151, i64 %153, !dbg !3628
  %155 = load ptr, ptr %154, align 8, !dbg !3628
  %156 = getelementptr inbounds ptr, ptr %155, i64 0, !dbg !3628
  store ptr %150, ptr %156, align 8, !dbg !3629
  %157 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 33), align 4, !dbg !3630
  %158 = icmp ne i32 %157, 0, !dbg !3632
  br i1 %158, label %159, label %182, !dbg !3633

159:                                              ; preds = %136
  %160 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 3), align 8, !dbg !3634
  %161 = call ptr @allocate_super_memory_engine_func(ptr noundef %160, i64 noundef 8, ptr noundef @.str.26, ptr noundef @__FUNCTION__.setup_socket_per_session_udp_listener_servers, i32 noundef 1451), !dbg !3634
  %162 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 11), align 8, !dbg !3636
  %163 = load i32, ptr %6, align 4, !dbg !3637
  %164 = add nsw i32 %163, 1, !dbg !3638
  %165 = sext i32 %164 to i64, !dbg !3639
  %166 = getelementptr inbounds ptr, ptr %162, i64 %165, !dbg !3639
  store ptr %161, ptr %166, align 8, !dbg !3640
  %167 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 6), align 8, !dbg !3641
  %168 = load i64, ptr %1, align 8, !dbg !3642
  %169 = getelementptr inbounds ptr, ptr %167, i64 %168, !dbg !3643
  %170 = load ptr, ptr %169, align 8, !dbg !3643
  %171 = call i32 @get_alt_tls_listener_port(), !dbg !3644
  %172 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 21), align 8, !dbg !3645
  %173 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 3), align 8, !dbg !3646
  %174 = call ptr @create_dtls_listener_server(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 39), ptr noundef %170, i32 noundef %171, i32 noundef %172, ptr noundef %173, ptr noundef null, i32 noundef 1, ptr noundef @send_socket_to_general_relay), !dbg !3647
  %175 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 11), align 8, !dbg !3648
  %176 = load i32, ptr %6, align 4, !dbg !3649
  %177 = add nsw i32 %176, 1, !dbg !3650
  %178 = sext i32 %177 to i64, !dbg !3651
  %179 = getelementptr inbounds ptr, ptr %175, i64 %178, !dbg !3651
  %180 = load ptr, ptr %179, align 8, !dbg !3651
  %181 = getelementptr inbounds ptr, ptr %180, i64 0, !dbg !3651
  store ptr %174, ptr %181, align 8, !dbg !3652
  br label %182, !dbg !3653

182:                                              ; preds = %159, %136
  br label %197, !dbg !3654

183:                                              ; preds = %132, %126
  %184 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 11), align 8, !dbg !3655
  %185 = load i32, ptr %6, align 4, !dbg !3657
  %186 = sext i32 %185 to i64, !dbg !3658
  %187 = getelementptr inbounds ptr, ptr %184, i64 %186, !dbg !3658
  store ptr null, ptr %187, align 8, !dbg !3659
  %188 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 33), align 4, !dbg !3660
  %189 = icmp ne i32 %188, 0, !dbg !3662
  br i1 %189, label %190, label %196, !dbg !3663

190:                                              ; preds = %183
  %191 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 11), align 8, !dbg !3664
  %192 = load i32, ptr %6, align 4, !dbg !3665
  %193 = add nsw i32 %192, 1, !dbg !3666
  %194 = sext i32 %193 to i64, !dbg !3667
  %195 = getelementptr inbounds ptr, ptr %191, i64 %194, !dbg !3667
  store ptr null, ptr %195, align 8, !dbg !3668
  br label %196, !dbg !3667

196:                                              ; preds = %190, %183
  br label %197

197:                                              ; preds = %196, %182
  br label %198, !dbg !3669

198:                                              ; preds = %197
  %199 = load i64, ptr %1, align 8, !dbg !3670
  %200 = add i64 %199, 1, !dbg !3670
  store i64 %200, ptr %1, align 8, !dbg !3670
  br label %48, !dbg !3671, !llvm.loop !3672

201:                                              ; preds = %48
  ret void, !dbg !3674
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_tcp_listener_servers(ptr noundef %0, ptr noundef %1) #0 !dbg !3675 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %union.ioa_addr, align 4
  %10 = alloca [129 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3678, metadata !DIExpression()), !dbg !3679
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3680, metadata !DIExpression()), !dbg !3681
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3682, metadata !DIExpression()), !dbg !3683
  store i64 0, ptr %5, align 8, !dbg !3683
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3684, metadata !DIExpression()), !dbg !3685
  %13 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 3), align 8, !dbg !3686
  %14 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 9), align 8, !dbg !3686
  %15 = mul i64 8, %14, !dbg !3686
  %16 = call ptr @allocate_super_memory_engine_func(ptr noundef %13, i64 noundef %15, ptr noundef @.str.26, ptr noundef @__FUNCTION__.setup_tcp_listener_servers, i32 noundef 1468), !dbg !3686
  store ptr %16, ptr %6, align 8, !dbg !3685
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3687, metadata !DIExpression()), !dbg !3688
  %17 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 3), align 8, !dbg !3689
  %18 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 9), align 8, !dbg !3689
  %19 = mul i64 8, %18, !dbg !3689
  %20 = call ptr @allocate_super_memory_engine_func(ptr noundef %17, i64 noundef %19, ptr noundef @.str.26, ptr noundef @__FUNCTION__.setup_tcp_listener_servers, i32 noundef 1469), !dbg !3689
  store ptr %20, ptr %7, align 8, !dbg !3688
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3690, metadata !DIExpression()), !dbg !3691
  %21 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 3), align 8, !dbg !3692
  %22 = load volatile i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 62, i32 1), align 8, !dbg !3692
  %23 = mul i64 8, %22, !dbg !3692
  %24 = add i64 %23, 1, !dbg !3692
  %25 = call ptr @allocate_super_memory_engine_func(ptr noundef %21, i64 noundef %24, ptr noundef @.str.26, ptr noundef @__FUNCTION__.setup_tcp_listener_servers, i32 noundef 1471), !dbg !3692
  store ptr %25, ptr %8, align 8, !dbg !3691
  %26 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 36), align 8, !dbg !3693
  %27 = icmp ne i32 %26, 0, !dbg !3695
  br i1 %27, label %59, label %28, !dbg !3696

28:                                               ; preds = %2
  %29 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 17), align 8, !dbg !3697
  %30 = icmp ne i32 %29, 0, !dbg !3698
  br i1 %30, label %31, label %34, !dbg !3699

31:                                               ; preds = %28
  %32 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 35), align 4, !dbg !3700
  %33 = icmp ne i32 %32, 0, !dbg !3701
  br i1 %33, label %59, label %34, !dbg !3702

34:                                               ; preds = %31, %28
  store i64 0, ptr %5, align 8, !dbg !3703
  br label %35, !dbg !3706

35:                                               ; preds = %55, %34
  %36 = load i64, ptr %5, align 8, !dbg !3707
  %37 = load volatile i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 62, i32 1), align 8, !dbg !3709
  %38 = icmp ult i64 %36, %37, !dbg !3710
  br i1 %38, label %39, label %58, !dbg !3711

39:                                               ; preds = %35
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3712, metadata !DIExpression()), !dbg !3714
  call void @llvm.dbg.declare(metadata ptr %10, metadata !3715, metadata !DIExpression()), !dbg !3716
  %40 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 62), align 8, !dbg !3717
  %41 = load i64, ptr %5, align 8, !dbg !3718
  %42 = getelementptr inbounds %union.ioa_addr, ptr %40, i64 %41, !dbg !3719
  call void @addr_cpy(ptr noundef %9, ptr noundef %42), !dbg !3720
  call void @llvm.dbg.declare(metadata ptr %11, metadata !3721, metadata !DIExpression()), !dbg !3722
  %43 = call i32 @addr_get_port(ptr noundef %9), !dbg !3723
  store i32 %43, ptr %11, align 4, !dbg !3722
  %44 = getelementptr inbounds [129 x i8], ptr %10, i64 0, i64 0, !dbg !3724
  %45 = call i32 @addr_to_string_no_port(ptr noundef %9, ptr noundef %44), !dbg !3725
  %46 = getelementptr inbounds [129 x i8], ptr %10, i64 0, i64 0, !dbg !3726
  %47 = load i32, ptr %11, align 4, !dbg !3727
  %48 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 21), align 8, !dbg !3728
  %49 = load ptr, ptr %3, align 8, !dbg !3729
  %50 = load ptr, ptr %4, align 8, !dbg !3730
  %51 = call ptr @create_tls_listener_server(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 39), ptr noundef %46, i32 noundef %47, i32 noundef %48, ptr noundef %49, ptr noundef @send_socket_to_general_relay, ptr noundef %50), !dbg !3731
  %52 = load ptr, ptr %8, align 8, !dbg !3732
  %53 = load i64, ptr %5, align 8, !dbg !3733
  %54 = getelementptr inbounds ptr, ptr %52, i64 %53, !dbg !3732
  store ptr %51, ptr %54, align 8, !dbg !3734
  br label %55, !dbg !3735

55:                                               ; preds = %39
  %56 = load i64, ptr %5, align 8, !dbg !3736
  %57 = add i64 %56, 1, !dbg !3736
  store i64 %57, ptr %5, align 8, !dbg !3736
  br label %35, !dbg !3737, !llvm.loop !3738

58:                                               ; preds = %35
  br label %59, !dbg !3740

59:                                               ; preds = %58, %31, %2
  store i64 0, ptr %5, align 8, !dbg !3741
  br label %60, !dbg !3743

60:                                               ; preds = %196, %59
  %61 = load i64, ptr %5, align 8, !dbg !3744
  %62 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 8), align 8, !dbg !3746
  %63 = icmp ult i64 %61, %62, !dbg !3747
  br i1 %63, label %64, label %199, !dbg !3748

64:                                               ; preds = %60
  call void @llvm.dbg.declare(metadata ptr %12, metadata !3749, metadata !DIExpression()), !dbg !3751
  %65 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 33), align 4, !dbg !3752
  %66 = icmp ne i32 %65, 0, !dbg !3753
  br i1 %66, label %67, label %70, !dbg !3753

67:                                               ; preds = %64
  %68 = load i64, ptr %5, align 8, !dbg !3754
  %69 = mul i64 %68, 2, !dbg !3755
  br label %72, !dbg !3753

70:                                               ; preds = %64
  %71 = load i64, ptr %5, align 8, !dbg !3756
  br label %72, !dbg !3753

72:                                               ; preds = %70, %67
  %73 = phi i64 [ %69, %67 ], [ %71, %70 ], !dbg !3753
  %74 = trunc i64 %73 to i32, !dbg !3753
  store i32 %74, ptr %12, align 4, !dbg !3751
  %75 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 35), align 4, !dbg !3757
  %76 = icmp ne i32 %75, 0, !dbg !3759
  br i1 %76, label %122, label %77, !dbg !3760

77:                                               ; preds = %72
  %78 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 6), align 8, !dbg !3761
  %79 = load i64, ptr %5, align 8, !dbg !3763
  %80 = getelementptr inbounds ptr, ptr %78, i64 %79, !dbg !3764
  %81 = load ptr, ptr %80, align 8, !dbg !3764
  %82 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 36), align 8, !dbg !3765
  %83 = icmp ne i32 %82, 0, !dbg !3766
  br i1 %83, label %84, label %86, !dbg !3766

84:                                               ; preds = %77
  %85 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 32), align 8, !dbg !3767
  br label %88, !dbg !3766

86:                                               ; preds = %77
  %87 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 28), align 8, !dbg !3768
  br label %88, !dbg !3766

88:                                               ; preds = %86, %84
  %89 = phi i32 [ %85, %84 ], [ %87, %86 ], !dbg !3766
  %90 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 21), align 8, !dbg !3769
  %91 = load ptr, ptr %3, align 8, !dbg !3770
  %92 = load ptr, ptr %4, align 8, !dbg !3771
  %93 = call ptr @create_tls_listener_server(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 39), ptr noundef %81, i32 noundef %89, i32 noundef %90, ptr noundef %91, ptr noundef @send_socket_to_general_relay, ptr noundef %92), !dbg !3772
  %94 = load ptr, ptr %6, align 8, !dbg !3773
  %95 = load i32, ptr %12, align 4, !dbg !3774
  %96 = sext i32 %95 to i64, !dbg !3773
  %97 = getelementptr inbounds ptr, ptr %94, i64 %96, !dbg !3773
  store ptr %93, ptr %97, align 8, !dbg !3775
  %98 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 33), align 4, !dbg !3776
  %99 = icmp ne i32 %98, 0, !dbg !3778
  br i1 %99, label %100, label %121, !dbg !3779

100:                                              ; preds = %88
  %101 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 36), align 8, !dbg !3780
  %102 = icmp ne i32 %101, 0, !dbg !3781
  br i1 %102, label %103, label %104, !dbg !3781

103:                                              ; preds = %100
  br label %114, !dbg !3781

104:                                              ; preds = %100
  %105 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 6), align 8, !dbg !3782
  %106 = load i64, ptr %5, align 8, !dbg !3783
  %107 = getelementptr inbounds ptr, ptr %105, i64 %106, !dbg !3784
  %108 = load ptr, ptr %107, align 8, !dbg !3784
  %109 = call i32 @get_alt_listener_port(), !dbg !3785
  %110 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 21), align 8, !dbg !3786
  %111 = load ptr, ptr %3, align 8, !dbg !3787
  %112 = load ptr, ptr %4, align 8, !dbg !3788
  %113 = call ptr @create_tls_listener_server(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 39), ptr noundef %108, i32 noundef %109, i32 noundef %110, ptr noundef %111, ptr noundef @send_socket_to_general_relay, ptr noundef %112), !dbg !3789
  br label %114, !dbg !3781

114:                                              ; preds = %104, %103
  %115 = phi ptr [ null, %103 ], [ %113, %104 ], !dbg !3781
  %116 = load ptr, ptr %6, align 8, !dbg !3790
  %117 = load i32, ptr %12, align 4, !dbg !3791
  %118 = add nsw i32 %117, 1, !dbg !3792
  %119 = sext i32 %118 to i64, !dbg !3790
  %120 = getelementptr inbounds ptr, ptr %116, i64 %119, !dbg !3790
  store ptr %115, ptr %120, align 8, !dbg !3793
  br label %121, !dbg !3790

121:                                              ; preds = %114, %88
  br label %136, !dbg !3794

122:                                              ; preds = %72
  %123 = load ptr, ptr %6, align 8, !dbg !3795
  %124 = load i32, ptr %12, align 4, !dbg !3797
  %125 = sext i32 %124 to i64, !dbg !3795
  %126 = getelementptr inbounds ptr, ptr %123, i64 %125, !dbg !3795
  store ptr null, ptr %126, align 8, !dbg !3798
  %127 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 33), align 4, !dbg !3799
  %128 = icmp ne i32 %127, 0, !dbg !3801
  br i1 %128, label %129, label %135, !dbg !3802

129:                                              ; preds = %122
  %130 = load ptr, ptr %6, align 8, !dbg !3803
  %131 = load i32, ptr %12, align 4, !dbg !3804
  %132 = add nsw i32 %131, 1, !dbg !3805
  %133 = sext i32 %132 to i64, !dbg !3803
  %134 = getelementptr inbounds ptr, ptr %130, i64 %133, !dbg !3803
  store ptr null, ptr %134, align 8, !dbg !3806
  br label %135, !dbg !3803

135:                                              ; preds = %129, %122
  br label %136

136:                                              ; preds = %135, %121
  %137 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 17), align 8, !dbg !3807
  %138 = icmp ne i32 %137, 0, !dbg !3809
  br i1 %138, label %181, label %139, !dbg !3810

139:                                              ; preds = %136
  %140 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 36), align 8, !dbg !3811
  %141 = icmp ne i32 %140, 0, !dbg !3812
  br i1 %141, label %181, label %142, !dbg !3813

142:                                              ; preds = %139
  %143 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 35), align 4, !dbg !3814
  %144 = icmp ne i32 %143, 0, !dbg !3815
  br i1 %144, label %149, label %145, !dbg !3816

145:                                              ; preds = %142
  %146 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 28), align 8, !dbg !3817
  %147 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 29), align 4, !dbg !3818
  %148 = icmp ne i32 %146, %147, !dbg !3819
  br i1 %148, label %149, label %181, !dbg !3820

149:                                              ; preds = %145, %142
  %150 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 6), align 8, !dbg !3821
  %151 = load i64, ptr %5, align 8, !dbg !3823
  %152 = getelementptr inbounds ptr, ptr %150, i64 %151, !dbg !3824
  %153 = load ptr, ptr %152, align 8, !dbg !3824
  %154 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 29), align 4, !dbg !3825
  %155 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 21), align 8, !dbg !3826
  %156 = load ptr, ptr %3, align 8, !dbg !3827
  %157 = load ptr, ptr %4, align 8, !dbg !3828
  %158 = call ptr @create_tls_listener_server(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 39), ptr noundef %153, i32 noundef %154, i32 noundef %155, ptr noundef %156, ptr noundef @send_socket_to_general_relay, ptr noundef %157), !dbg !3829
  %159 = load ptr, ptr %7, align 8, !dbg !3830
  %160 = load i32, ptr %12, align 4, !dbg !3831
  %161 = sext i32 %160 to i64, !dbg !3830
  %162 = getelementptr inbounds ptr, ptr %159, i64 %161, !dbg !3830
  store ptr %158, ptr %162, align 8, !dbg !3832
  %163 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 33), align 4, !dbg !3833
  %164 = icmp ne i32 %163, 0, !dbg !3835
  br i1 %164, label %165, label %180, !dbg !3836

165:                                              ; preds = %149
  %166 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 6), align 8, !dbg !3837
  %167 = load i64, ptr %5, align 8, !dbg !3838
  %168 = getelementptr inbounds ptr, ptr %166, i64 %167, !dbg !3839
  %169 = load ptr, ptr %168, align 8, !dbg !3839
  %170 = call i32 @get_alt_tls_listener_port(), !dbg !3840
  %171 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 21), align 8, !dbg !3841
  %172 = load ptr, ptr %3, align 8, !dbg !3842
  %173 = load ptr, ptr %4, align 8, !dbg !3843
  %174 = call ptr @create_tls_listener_server(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 39), ptr noundef %169, i32 noundef %170, i32 noundef %171, ptr noundef %172, ptr noundef @send_socket_to_general_relay, ptr noundef %173), !dbg !3844
  %175 = load ptr, ptr %7, align 8, !dbg !3845
  %176 = load i32, ptr %12, align 4, !dbg !3846
  %177 = add nsw i32 %176, 1, !dbg !3847
  %178 = sext i32 %177 to i64, !dbg !3845
  %179 = getelementptr inbounds ptr, ptr %175, i64 %178, !dbg !3845
  store ptr %174, ptr %179, align 8, !dbg !3848
  br label %180, !dbg !3845

180:                                              ; preds = %165, %149
  br label %195, !dbg !3849

181:                                              ; preds = %145, %139, %136
  %182 = load ptr, ptr %7, align 8, !dbg !3850
  %183 = load i32, ptr %12, align 4, !dbg !3852
  %184 = sext i32 %183 to i64, !dbg !3850
  %185 = getelementptr inbounds ptr, ptr %182, i64 %184, !dbg !3850
  store ptr null, ptr %185, align 8, !dbg !3853
  %186 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 33), align 4, !dbg !3854
  %187 = icmp ne i32 %186, 0, !dbg !3856
  br i1 %187, label %188, label %194, !dbg !3857

188:                                              ; preds = %181
  %189 = load ptr, ptr %7, align 8, !dbg !3858
  %190 = load i32, ptr %12, align 4, !dbg !3859
  %191 = add nsw i32 %190, 1, !dbg !3860
  %192 = sext i32 %191 to i64, !dbg !3858
  %193 = getelementptr inbounds ptr, ptr %189, i64 %192, !dbg !3858
  store ptr null, ptr %193, align 8, !dbg !3861
  br label %194, !dbg !3858

194:                                              ; preds = %188, %181
  br label %195

195:                                              ; preds = %194, %180
  br label %196, !dbg !3862

196:                                              ; preds = %195
  %197 = load i64, ptr %5, align 8, !dbg !3863
  %198 = add i64 %197, 1, !dbg !3863
  store i64 %198, ptr %5, align 8, !dbg !3863
  br label %60, !dbg !3864, !llvm.loop !3865

199:                                              ; preds = %60
  ret void, !dbg !3867
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_auth_server(ptr noundef %0) #0 !dbg !3868 {
  %2 = alloca ptr, align 8
  %3 = alloca %union.pthread_attr_t, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3871, metadata !DIExpression()), !dbg !3872
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3873, metadata !DIExpression()), !dbg !3882
  %4 = call i32 @pthread_attr_init(ptr noundef %3) #10, !dbg !3883
  %5 = icmp ne i32 %4, 0, !dbg !3883
  br i1 %5, label %15, label %6, !dbg !3885

6:                                                ; preds = %1
  %7 = call i32 @pthread_attr_setdetachstate(ptr noundef %3, i32 noundef 1) #10, !dbg !3886
  %8 = icmp ne i32 %7, 0, !dbg !3886
  br i1 %8, label %15, label %9, !dbg !3887

9:                                                ; preds = %6
  %10 = load ptr, ptr %2, align 8, !dbg !3888
  %11 = getelementptr inbounds %struct.auth_server, ptr %10, i32 0, i32 4, !dbg !3889
  %12 = load ptr, ptr %2, align 8, !dbg !3890
  %13 = call i32 @pthread_create(ptr noundef %11, ptr noundef %3, ptr noundef @run_auth_server_thread, ptr noundef %12) #10, !dbg !3891
  %14 = icmp ne i32 %13, 0, !dbg !3891
  br i1 %14, label %15, label %16, !dbg !3892

15:                                               ; preds = %9, %6, %1
  call void @perror(ptr noundef @.str.56), !dbg !3893
  call void @exit(i32 noundef -1) #14, !dbg !3895
  unreachable, !dbg !3895

16:                                               ; preds = %9
  ret void, !dbg !3896
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_admin_server() #0 !dbg !3897 {
  call void @llvm.memset.p0.i64(ptr align 8 @adminserver, i8 0, i64 88, i1 false), !dbg !3898
  store i32 -1, ptr @adminserver, align 8, !dbg !3899
  %1 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 21), align 8, !dbg !3900
  store i32 %1, ptr getelementptr inbounds (%struct.admin_server, ptr @adminserver, i32 0, i32 3), align 8, !dbg !3901
  %2 = call i32 @pthread_create(ptr noundef getelementptr inbounds (%struct.admin_server, ptr @adminserver, i32 0, i32 10), ptr noundef null, ptr noundef @run_admin_server_thread, ptr noundef @adminserver) #10, !dbg !3902
  %3 = icmp ne i32 %2, 0, !dbg !3902
  br i1 %3, label %4, label %5, !dbg !3904

4:                                                ; preds = %0
  call void @perror(ptr noundef @.str.62), !dbg !3905
  call void @exit(i32 noundef -1) #14, !dbg !3907
  unreachable, !dbg !3907

5:                                                ; preds = %0
  %6 = load i64, ptr getelementptr inbounds (%struct.admin_server, ptr @adminserver, i32 0, i32 10), align 8, !dbg !3908
  %7 = call i32 @pthread_detach(i64 noundef %6) #10, !dbg !3909
  ret void, !dbg !3910
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @barrier_wait_func(ptr noundef %0, i32 noundef %1) #0 !dbg !3911 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3914, metadata !DIExpression()), !dbg !3915
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3916, metadata !DIExpression()), !dbg !3917
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3918, metadata !DIExpression()), !dbg !3919
  store i32 0, ptr %5, align 4, !dbg !3919
  br label %7, !dbg !3920

7:                                                ; preds = %32, %2
  %8 = call i32 @pthread_barrier_wait(ptr noundef @barrier) #10, !dbg !3921
  store i32 %8, ptr %5, align 4, !dbg !3923
  %9 = load i32, ptr %5, align 4, !dbg !3924
  %10 = icmp slt i32 %9, 0, !dbg !3926
  br i1 %10, label %11, label %21, !dbg !3927

11:                                               ; preds = %7
  %12 = load i32, ptr %5, align 4, !dbg !3928
  %13 = icmp ne i32 %12, -1, !dbg !3929
  br i1 %13, label %14, label %21, !dbg !3930

14:                                               ; preds = %11
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3931, metadata !DIExpression()), !dbg !3933
  %15 = call ptr @__errno_location() #15, !dbg !3934
  %16 = load i32, ptr %15, align 4, !dbg !3934
  store i32 %16, ptr %6, align 4, !dbg !3933
  call void @perror(ptr noundef @.str.63), !dbg !3935
  %17 = load ptr, ptr %3, align 8, !dbg !3936
  %18 = load i32, ptr %4, align 4, !dbg !3937
  %19 = load i32, ptr %6, align 4, !dbg !3938
  %20 = call i32 (ptr, ...) @printf(ptr noundef @.str.64, ptr noundef @__FUNCTION__.barrier_wait_func, ptr noundef %17, i32 noundef %18, i32 noundef %19), !dbg !3939
  br label %21, !dbg !3940

21:                                               ; preds = %14, %11, %7
  br label %22, !dbg !3941

22:                                               ; preds = %21
  %23 = load i32, ptr %5, align 4, !dbg !3942
  %24 = icmp slt i32 %23, 0, !dbg !3943
  br i1 %24, label %25, label %32, !dbg !3944

25:                                               ; preds = %22
  %26 = load i32, ptr %5, align 4, !dbg !3945
  %27 = icmp ne i32 %26, -1, !dbg !3946
  br i1 %27, label %28, label %32, !dbg !3947

28:                                               ; preds = %25
  %29 = call ptr @__errno_location() #15, !dbg !3948
  %30 = load i32, ptr %29, align 4, !dbg !3948
  %31 = icmp eq i32 %30, 4, !dbg !3949
  br label %32

32:                                               ; preds = %28, %25, %22
  %33 = phi i1 [ false, %25 ], [ false, %22 ], [ %31, %28 ], !dbg !3950
  br i1 %33, label %7, label %34, !dbg !3941, !llvm.loop !3951

34:                                               ; preds = %32
  ret void, !dbg !3953
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_listener() #0 !dbg !3954 {
  call void @llvm.memset.p0.i64(ptr align 8 getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42), i8 0, i64 104, i1 false), !dbg !3955
  ret void, !dbg !3956
}

declare i32 @make_ioa_addr_from_full_string(ptr noundef, i32 noundef, ptr noundef) #4

declare i32 @addr_to_string(ptr noundef, ptr noundef) #4

declare i32 @turn_mutex_lock(ptr noundef) #4

declare i32 @turn_mutex_unlock(ptr noundef) #4

; Function Attrs: nounwind
declare void @free(ptr noundef) #2

declare void @event_active(ptr noundef, i32 noundef, i16 noundef signext) #4

declare i32 @event_base_loopexit(ptr noundef, ptr noundef) #4

declare i32 @event_base_dispatch(ptr noundef) #4

declare void @send_message_to_redis(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) #4

declare ptr @new_super_memory_region() #4

declare ptr @turnipports_create(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) #4

declare ptr @turn_event_base_new() #4

declare ptr @event_base_get_method(ptr noundef) #4

declare ptr @create_ioa_engine(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #4

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #8

declare ptr @rtcp_map_create(ptr noundef) #4

declare void @ioa_engine_set_rtcp_map(ptr noundef, ptr noundef) #4

declare i32 @bufferevent_pair_new(ptr noundef, i32 noundef, ptr noundef) #4

declare void @bufferevent_setcb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @listener_receive_message(ptr noundef %0, ptr noundef %1) #0 !dbg !3957 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.message_to_listener, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [129 x i8], align 16
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3960, metadata !DIExpression()), !dbg !3961
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3962, metadata !DIExpression()), !dbg !3963
  br label %14, !dbg !3964

14:                                               ; preds = %2
  %15 = load ptr, ptr %4, align 8, !dbg !3965
  store ptr %15, ptr %4, align 8, !dbg !3965
  br label %16, !dbg !3965

16:                                               ; preds = %14
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3967, metadata !DIExpression()), !dbg !3981
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3982, metadata !DIExpression()), !dbg !3983
  store i32 0, ptr %6, align 4, !dbg !3983
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3984, metadata !DIExpression()), !dbg !3985
  %17 = load ptr, ptr %3, align 8, !dbg !3986
  %18 = call ptr @bufferevent_get_input(ptr noundef %17), !dbg !3987
  store ptr %18, ptr %7, align 8, !dbg !3985
  br label %19, !dbg !3988

19:                                               ; preds = %249, %32, %27, %16
  %20 = load ptr, ptr %7, align 8, !dbg !3989
  %21 = call i32 @evbuffer_remove(ptr noundef %20, ptr noundef %5, i64 noundef 72), !dbg !3990
  store i32 %21, ptr %6, align 4, !dbg !3991
  %22 = icmp sgt i32 %21, 0, !dbg !3992
  br i1 %22, label %23, label %256, !dbg !3988

23:                                               ; preds = %19
  %24 = load i32, ptr %6, align 4, !dbg !3993
  %25 = sext i32 %24 to i64, !dbg !3993
  %26 = icmp ne i64 %25, 72, !dbg !3996
  br i1 %26, label %27, label %28, !dbg !3997

27:                                               ; preds = %23
  call void @perror(ptr noundef @.str.27), !dbg !3998
  br label %19, !dbg !4000, !llvm.loop !4001

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.message_to_listener, ptr %5, i32 0, i32 0, !dbg !4003
  %30 = load i32, ptr %29, align 8, !dbg !4003
  %31 = icmp ne i32 %30, 1, !dbg !4005
  br i1 %31, label %32, label %33, !dbg !4006

32:                                               ; preds = %28
  call void @perror(ptr noundef @.str.28), !dbg !4007
  br label %19, !dbg !4009, !llvm.loop !4001

33:                                               ; preds = %28
  call void @llvm.dbg.declare(metadata ptr %8, metadata !4010, metadata !DIExpression()), !dbg !4011
  store i64 0, ptr %8, align 8, !dbg !4011
  %34 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 45), align 8, !dbg !4012
  %35 = icmp eq i32 %34, 3, !dbg !4014
  br i1 %35, label %36, label %83, !dbg !4015

36:                                               ; preds = %33
  call void @llvm.dbg.declare(metadata ptr %9, metadata !4016, metadata !DIExpression()), !dbg !4018
  store i64 0, ptr %9, align 8, !dbg !4019
  br label %37, !dbg !4021

37:                                               ; preds = %79, %36
  %38 = load i64, ptr %9, align 8, !dbg !4022
  %39 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 57), align 8, !dbg !4024
  %40 = zext i8 %39 to i32, !dbg !4024
  %41 = icmp sgt i32 %40, 1, !dbg !4024
  br i1 %41, label %42, label %45, !dbg !4024

42:                                               ; preds = %37
  %43 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 57), align 8, !dbg !4024
  %44 = zext i8 %43 to i32, !dbg !4024
  br label %46, !dbg !4024

45:                                               ; preds = %37
  br label %46, !dbg !4024

46:                                               ; preds = %45, %42
  %47 = phi i32 [ %44, %42 ], [ 1, %45 ], !dbg !4024
  %48 = sext i32 %47 to i64, !dbg !4024
  %49 = icmp ult i64 %38, %48, !dbg !4025
  br i1 %49, label %50, label %82, !dbg !4026

50:                                               ; preds = %46
  %51 = load i64, ptr %9, align 8, !dbg !4027
  %52 = getelementptr inbounds [256 x ptr], ptr @general_relay_servers, i64 0, i64 %51, !dbg !4030
  %53 = load ptr, ptr %52, align 8, !dbg !4030
  %54 = icmp ne ptr %53, null, !dbg !4031
  br i1 %54, label %67, label %55, !dbg !4032

55:                                               ; preds = %50
  %56 = load i64, ptr %9, align 8, !dbg !4033
  %57 = trunc i64 %56 to i32, !dbg !4035
  %58 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 57), align 8, !dbg !4036
  %59 = zext i8 %58 to i32, !dbg !4036
  %60 = icmp sgt i32 %59, 1, !dbg !4036
  br i1 %60, label %61, label %64, !dbg !4036

61:                                               ; preds = %55
  %62 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 57), align 8, !dbg !4036
  %63 = zext i8 %62 to i32, !dbg !4036
  br label %65, !dbg !4036

64:                                               ; preds = %55
  br label %65, !dbg !4036

65:                                               ; preds = %64, %61
  %66 = phi i32 [ %63, %61 ], [ 1, %64 ], !dbg !4036
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.29, ptr noundef @__FUNCTION__.listener_receive_message, i32 noundef %57, i32 noundef %66), !dbg !4037
  br label %78, !dbg !4038

67:                                               ; preds = %50
  %68 = load i64, ptr %9, align 8, !dbg !4039
  %69 = getelementptr inbounds [256 x ptr], ptr @general_relay_servers, i64 0, i64 %68, !dbg !4041
  %70 = load ptr, ptr %69, align 8, !dbg !4041
  %71 = getelementptr inbounds %struct.relay_server, ptr %70, i32 0, i32 9, !dbg !4042
  %72 = load i64, ptr %71, align 8, !dbg !4042
  %73 = call i64 @pthread_self() #15, !dbg !4043
  %74 = icmp eq i64 %72, %73, !dbg !4044
  br i1 %74, label %75, label %77, !dbg !4045

75:                                               ; preds = %67
  %76 = load i64, ptr %9, align 8, !dbg !4046
  store i64 %76, ptr %8, align 8, !dbg !4048
  br label %82, !dbg !4049

77:                                               ; preds = %67
  br label %78

78:                                               ; preds = %77, %65
  br label %79, !dbg !4050

79:                                               ; preds = %78
  %80 = load i64, ptr %9, align 8, !dbg !4051
  %81 = add i64 %80, 1, !dbg !4051
  store i64 %81, ptr %9, align 8, !dbg !4051
  br label %37, !dbg !4052, !llvm.loop !4053

82:                                               ; preds = %75, %46
  br label %83, !dbg !4055

83:                                               ; preds = %82, %33
  call void @llvm.dbg.declare(metadata ptr %10, metadata !4056, metadata !DIExpression()), !dbg !4057
  call void @llvm.dbg.declare(metadata ptr %11, metadata !4058, metadata !DIExpression()), !dbg !4059
  store i32 0, ptr %11, align 4, !dbg !4059
  store i64 0, ptr %10, align 8, !dbg !4060
  br label %84, !dbg !4062

84:                                               ; preds = %237, %83
  %85 = load i64, ptr %10, align 8, !dbg !4063
  %86 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 8), align 8, !dbg !4065
  %87 = icmp ult i64 %85, %86, !dbg !4066
  br i1 %87, label %88, label %240, !dbg !4067

88:                                               ; preds = %84
  %89 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 7), align 8, !dbg !4068
  %90 = load i64, ptr %10, align 8, !dbg !4071
  %91 = getelementptr inbounds ptr, ptr %89, i64 %90, !dbg !4072
  %92 = load ptr, ptr %91, align 8, !dbg !4072
  %93 = getelementptr inbounds %struct.message_to_listener, ptr %5, i32 0, i32 1, !dbg !4073
  %94 = getelementptr inbounds %struct.message_to_listener_to_client, ptr %93, i32 0, i32 0, !dbg !4074
  %95 = call i32 @addr_eq_no_port(ptr noundef %92, ptr noundef %94), !dbg !4075
  %96 = icmp ne i32 %95, 0, !dbg !4075
  br i1 %96, label %97, label %236, !dbg !4076

97:                                               ; preds = %88
  call void @llvm.dbg.declare(metadata ptr %12, metadata !4077, metadata !DIExpression()), !dbg !4079
  %98 = getelementptr inbounds %struct.message_to_listener, ptr %5, i32 0, i32 1, !dbg !4080
  %99 = getelementptr inbounds %struct.message_to_listener_to_client, ptr %98, i32 0, i32 0, !dbg !4081
  %100 = call i32 @addr_get_port(ptr noundef %99), !dbg !4082
  store i32 %100, ptr %12, align 4, !dbg !4079
  %101 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 8), align 8, !dbg !4083
  %102 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 9), align 8, !dbg !4085
  %103 = icmp eq i64 %101, %102, !dbg !4086
  br i1 %103, label %104, label %143, !dbg !4087

104:                                              ; preds = %97
  %105 = load i32, ptr %12, align 4, !dbg !4088
  %106 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 28), align 8, !dbg !4091
  %107 = icmp eq i32 %105, %106, !dbg !4092
  br i1 %107, label %108, label %140, !dbg !4093

108:                                              ; preds = %104
  %109 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 10), align 8, !dbg !4094
  %110 = icmp ne ptr %109, null, !dbg !4097
  br i1 %110, label %111, label %139, !dbg !4098

111:                                              ; preds = %108
  %112 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 10), align 8, !dbg !4099
  %113 = load i64, ptr %10, align 8, !dbg !4100
  %114 = getelementptr inbounds ptr, ptr %112, i64 %113, !dbg !4101
  %115 = load ptr, ptr %114, align 8, !dbg !4101
  %116 = icmp ne ptr %115, null, !dbg !4101
  br i1 %116, label %117, label %139, !dbg !4102

117:                                              ; preds = %111
  %118 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 10), align 8, !dbg !4103
  %119 = load i64, ptr %10, align 8, !dbg !4104
  %120 = getelementptr inbounds ptr, ptr %118, i64 %119, !dbg !4105
  %121 = load ptr, ptr %120, align 8, !dbg !4105
  %122 = load i64, ptr %8, align 8, !dbg !4106
  %123 = getelementptr inbounds ptr, ptr %121, i64 %122, !dbg !4105
  %124 = load ptr, ptr %123, align 8, !dbg !4105
  %125 = icmp ne ptr %124, null, !dbg !4105
  br i1 %125, label %126, label %139, !dbg !4107

126:                                              ; preds = %117
  store i32 1, ptr %11, align 4, !dbg !4108
  %127 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 10), align 8, !dbg !4110
  %128 = load i64, ptr %10, align 8, !dbg !4111
  %129 = getelementptr inbounds ptr, ptr %127, i64 %128, !dbg !4112
  %130 = load ptr, ptr %129, align 8, !dbg !4112
  %131 = load i64, ptr %8, align 8, !dbg !4113
  %132 = getelementptr inbounds ptr, ptr %130, i64 %131, !dbg !4112
  %133 = load ptr, ptr %132, align 8, !dbg !4112
  %134 = getelementptr inbounds %struct.message_to_listener, ptr %5, i32 0, i32 1, !dbg !4114
  %135 = getelementptr inbounds %struct.message_to_listener_to_client, ptr %134, i32 0, i32 2, !dbg !4115
  %136 = load ptr, ptr %135, align 8, !dbg !4115
  %137 = getelementptr inbounds %struct.message_to_listener, ptr %5, i32 0, i32 1, !dbg !4116
  %138 = getelementptr inbounds %struct.message_to_listener_to_client, ptr %137, i32 0, i32 1, !dbg !4117
  call void @udp_send_message(ptr noundef %133, ptr noundef %136, ptr noundef %138), !dbg !4118
  br label %139, !dbg !4119

139:                                              ; preds = %126, %117, %111, %108
  br label %142, !dbg !4120

140:                                              ; preds = %104
  %141 = load i32, ptr %12, align 4, !dbg !4121
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.30, ptr noundef @__FUNCTION__.listener_receive_message, i32 noundef %141), !dbg !4123
  br label %142

142:                                              ; preds = %140, %139
  br label %235, !dbg !4124

143:                                              ; preds = %97
  %144 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 8), align 8, !dbg !4125
  %145 = mul i64 %144, 2, !dbg !4127
  %146 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 9), align 8, !dbg !4128
  %147 = icmp eq i64 %145, %146, !dbg !4129
  br i1 %147, label %148, label %233, !dbg !4130

148:                                              ; preds = %143
  %149 = load i32, ptr %12, align 4, !dbg !4131
  %150 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 28), align 8, !dbg !4134
  %151 = icmp eq i32 %149, %150, !dbg !4135
  br i1 %151, label %152, label %187, !dbg !4136

152:                                              ; preds = %148
  %153 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 10), align 8, !dbg !4137
  %154 = icmp ne ptr %153, null, !dbg !4140
  br i1 %154, label %155, label %186, !dbg !4141

155:                                              ; preds = %152
  %156 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 10), align 8, !dbg !4142
  %157 = load i64, ptr %10, align 8, !dbg !4143
  %158 = mul i64 %157, 2, !dbg !4144
  %159 = getelementptr inbounds ptr, ptr %156, i64 %158, !dbg !4145
  %160 = load ptr, ptr %159, align 8, !dbg !4145
  %161 = icmp ne ptr %160, null, !dbg !4145
  br i1 %161, label %162, label %186, !dbg !4146

162:                                              ; preds = %155
  %163 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 10), align 8, !dbg !4147
  %164 = load i64, ptr %10, align 8, !dbg !4148
  %165 = mul i64 %164, 2, !dbg !4149
  %166 = getelementptr inbounds ptr, ptr %163, i64 %165, !dbg !4150
  %167 = load ptr, ptr %166, align 8, !dbg !4150
  %168 = load i64, ptr %8, align 8, !dbg !4151
  %169 = getelementptr inbounds ptr, ptr %167, i64 %168, !dbg !4150
  %170 = load ptr, ptr %169, align 8, !dbg !4150
  %171 = icmp ne ptr %170, null, !dbg !4150
  br i1 %171, label %172, label %186, !dbg !4152

172:                                              ; preds = %162
  store i32 1, ptr %11, align 4, !dbg !4153
  %173 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 10), align 8, !dbg !4155
  %174 = load i64, ptr %10, align 8, !dbg !4156
  %175 = mul i64 %174, 2, !dbg !4157
  %176 = getelementptr inbounds ptr, ptr %173, i64 %175, !dbg !4158
  %177 = load ptr, ptr %176, align 8, !dbg !4158
  %178 = load i64, ptr %8, align 8, !dbg !4159
  %179 = getelementptr inbounds ptr, ptr %177, i64 %178, !dbg !4158
  %180 = load ptr, ptr %179, align 8, !dbg !4158
  %181 = getelementptr inbounds %struct.message_to_listener, ptr %5, i32 0, i32 1, !dbg !4160
  %182 = getelementptr inbounds %struct.message_to_listener_to_client, ptr %181, i32 0, i32 2, !dbg !4161
  %183 = load ptr, ptr %182, align 8, !dbg !4161
  %184 = getelementptr inbounds %struct.message_to_listener, ptr %5, i32 0, i32 1, !dbg !4162
  %185 = getelementptr inbounds %struct.message_to_listener_to_client, ptr %184, i32 0, i32 1, !dbg !4163
  call void @udp_send_message(ptr noundef %180, ptr noundef %183, ptr noundef %185), !dbg !4164
  br label %186, !dbg !4165

186:                                              ; preds = %172, %162, %155, %152
  br label %232, !dbg !4166

187:                                              ; preds = %148
  %188 = load i32, ptr %12, align 4, !dbg !4167
  %189 = call i32 @get_alt_listener_port(), !dbg !4169
  %190 = icmp eq i32 %188, %189, !dbg !4170
  br i1 %190, label %191, label %229, !dbg !4171

191:                                              ; preds = %187
  %192 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 10), align 8, !dbg !4172
  %193 = icmp ne ptr %192, null, !dbg !4175
  br i1 %193, label %194, label %228, !dbg !4176

194:                                              ; preds = %191
  %195 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 10), align 8, !dbg !4177
  %196 = load i64, ptr %10, align 8, !dbg !4178
  %197 = mul i64 %196, 2, !dbg !4179
  %198 = add i64 %197, 1, !dbg !4180
  %199 = getelementptr inbounds ptr, ptr %195, i64 %198, !dbg !4181
  %200 = load ptr, ptr %199, align 8, !dbg !4181
  %201 = icmp ne ptr %200, null, !dbg !4181
  br i1 %201, label %202, label %228, !dbg !4182

202:                                              ; preds = %194
  %203 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 10), align 8, !dbg !4183
  %204 = load i64, ptr %10, align 8, !dbg !4184
  %205 = mul i64 %204, 2, !dbg !4185
  %206 = add i64 %205, 1, !dbg !4186
  %207 = getelementptr inbounds ptr, ptr %203, i64 %206, !dbg !4187
  %208 = load ptr, ptr %207, align 8, !dbg !4187
  %209 = load i64, ptr %8, align 8, !dbg !4188
  %210 = getelementptr inbounds ptr, ptr %208, i64 %209, !dbg !4187
  %211 = load ptr, ptr %210, align 8, !dbg !4187
  %212 = icmp ne ptr %211, null, !dbg !4187
  br i1 %212, label %213, label %228, !dbg !4189

213:                                              ; preds = %202
  store i32 1, ptr %11, align 4, !dbg !4190
  %214 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 10), align 8, !dbg !4192
  %215 = load i64, ptr %10, align 8, !dbg !4193
  %216 = mul i64 %215, 2, !dbg !4194
  %217 = add i64 %216, 1, !dbg !4195
  %218 = getelementptr inbounds ptr, ptr %214, i64 %217, !dbg !4196
  %219 = load ptr, ptr %218, align 8, !dbg !4196
  %220 = load i64, ptr %8, align 8, !dbg !4197
  %221 = getelementptr inbounds ptr, ptr %219, i64 %220, !dbg !4196
  %222 = load ptr, ptr %221, align 8, !dbg !4196
  %223 = getelementptr inbounds %struct.message_to_listener, ptr %5, i32 0, i32 1, !dbg !4198
  %224 = getelementptr inbounds %struct.message_to_listener_to_client, ptr %223, i32 0, i32 2, !dbg !4199
  %225 = load ptr, ptr %224, align 8, !dbg !4199
  %226 = getelementptr inbounds %struct.message_to_listener, ptr %5, i32 0, i32 1, !dbg !4200
  %227 = getelementptr inbounds %struct.message_to_listener_to_client, ptr %226, i32 0, i32 1, !dbg !4201
  call void @udp_send_message(ptr noundef %222, ptr noundef %225, ptr noundef %227), !dbg !4202
  br label %228, !dbg !4203

228:                                              ; preds = %213, %202, %194, %191
  br label %231, !dbg !4204

229:                                              ; preds = %187
  %230 = load i32, ptr %12, align 4, !dbg !4205
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.31, ptr noundef @__FUNCTION__.listener_receive_message, i32 noundef %230), !dbg !4207
  br label %231

231:                                              ; preds = %229, %228
  br label %232

232:                                              ; preds = %231, %186
  br label %234, !dbg !4208

233:                                              ; preds = %143
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.32, ptr noundef @__FUNCTION__.listener_receive_message), !dbg !4209
  br label %234

234:                                              ; preds = %233, %232
  br label %235

235:                                              ; preds = %234, %142
  br label %240, !dbg !4211

236:                                              ; preds = %88
  br label %237, !dbg !4212

237:                                              ; preds = %236
  %238 = load i64, ptr %10, align 8, !dbg !4213
  %239 = add i64 %238, 1, !dbg !4213
  store i64 %239, ptr %10, align 8, !dbg !4213
  br label %84, !dbg !4214, !llvm.loop !4215

240:                                              ; preds = %235, %84
  %241 = load i32, ptr %11, align 4, !dbg !4217
  %242 = icmp ne i32 %241, 0, !dbg !4217
  br i1 %242, label %249, label %243, !dbg !4219

243:                                              ; preds = %240
  call void @llvm.dbg.declare(metadata ptr %13, metadata !4220, metadata !DIExpression()), !dbg !4223
  %244 = getelementptr inbounds %struct.message_to_listener, ptr %5, i32 0, i32 1, !dbg !4224
  %245 = getelementptr inbounds %struct.message_to_listener_to_client, ptr %244, i32 0, i32 0, !dbg !4225
  %246 = getelementptr inbounds [129 x i8], ptr %13, i64 0, i64 0, !dbg !4226
  %247 = call i32 @addr_to_string(ptr noundef %245, ptr noundef %246), !dbg !4227
  %248 = getelementptr inbounds [129 x i8], ptr %13, i64 0, i64 0, !dbg !4228
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.33, ptr noundef @__FUNCTION__.listener_receive_message, ptr noundef %248), !dbg !4229
  br label %249, !dbg !4230

249:                                              ; preds = %243, %240
  %250 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 3), align 8, !dbg !4231
  %251 = getelementptr inbounds %struct.message_to_listener, ptr %5, i32 0, i32 1, !dbg !4232
  %252 = getelementptr inbounds %struct.message_to_listener_to_client, ptr %251, i32 0, i32 2, !dbg !4233
  %253 = load ptr, ptr %252, align 8, !dbg !4233
  call void @ioa_network_buffer_delete(ptr noundef %250, ptr noundef %253), !dbg !4234
  %254 = getelementptr inbounds %struct.message_to_listener, ptr %5, i32 0, i32 1, !dbg !4235
  %255 = getelementptr inbounds %struct.message_to_listener_to_client, ptr %254, i32 0, i32 2, !dbg !4236
  store ptr null, ptr %255, align 8, !dbg !4237
  br label %19, !dbg !3988, !llvm.loop !4001

256:                                              ; preds = %19
  ret void, !dbg !4238
}

declare i32 @bufferevent_enable(ptr noundef, i16 noundef signext) #4

declare ptr @allocate_super_memory_engine_func(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) #4

declare ptr @bufferevent_get_input(ptr noundef) #4

declare i32 @evbuffer_remove(ptr noundef, ptr noundef, i64 noundef) #4

declare void @perror(ptr noundef) #4

; Function Attrs: nounwind willreturn memory(none)
declare i64 @pthread_self() #9

declare i32 @addr_eq_no_port(ptr noundef, ptr noundef) #4

declare i32 @addr_get_port(ptr noundef) #4

declare void @udp_send_message(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_alt_listener_port() #0 !dbg !4239 {
  %1 = alloca i32, align 4
  %2 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 30), align 8, !dbg !4242
  %3 = icmp slt i32 %2, 1, !dbg !4244
  br i1 %3, label %4, label %7, !dbg !4245

4:                                                ; preds = %0
  %5 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 28), align 8, !dbg !4246
  %6 = add nsw i32 %5, 1, !dbg !4247
  store i32 %6, ptr %1, align 4, !dbg !4248
  br label %9, !dbg !4248

7:                                                ; preds = %0
  %8 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 30), align 8, !dbg !4249
  store i32 %8, ptr %1, align 4, !dbg !4250
  br label %9, !dbg !4250

9:                                                ; preds = %7, %4
  %10 = load i32, ptr %1, align 4, !dbg !4251
  ret i32 %10, !dbg !4251
}

declare void @ioa_network_buffer_delete(ptr noundef, ptr noundef) #4

declare void @turnipports_add_ip(i8 noundef zeroext, ptr noundef) #4

; Function Attrs: nounwind
declare i32 @pthread_barrier_init(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_relay_server(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !4252 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca [2 x ptr], align 16
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4255, metadata !DIExpression()), !dbg !4256
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4257, metadata !DIExpression()), !dbg !4258
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4259, metadata !DIExpression()), !dbg !4260
  call void @llvm.dbg.declare(metadata ptr %7, metadata !4261, metadata !DIExpression()), !dbg !4262
  %8 = load ptr, ptr %5, align 8, !dbg !4263
  %9 = icmp ne ptr %8, null, !dbg !4263
  br i1 %9, label %10, label %19, !dbg !4265

10:                                               ; preds = %3
  %11 = load ptr, ptr %5, align 8, !dbg !4266
  %12 = getelementptr inbounds %struct._ioa_engine, ptr %11, i32 0, i32 1, !dbg !4268
  %13 = load ptr, ptr %12, align 8, !dbg !4268
  %14 = load ptr, ptr %4, align 8, !dbg !4269
  %15 = getelementptr inbounds %struct.relay_server, ptr %14, i32 0, i32 2, !dbg !4270
  store ptr %13, ptr %15, align 8, !dbg !4271
  %16 = load ptr, ptr %5, align 8, !dbg !4272
  %17 = load ptr, ptr %4, align 8, !dbg !4273
  %18 = getelementptr inbounds %struct.relay_server, ptr %17, i32 0, i32 7, !dbg !4274
  store ptr %16, ptr %18, align 8, !dbg !4275
  br label %48, !dbg !4276

19:                                               ; preds = %3
  %20 = call ptr @turn_event_base_new(), !dbg !4277
  %21 = load ptr, ptr %4, align 8, !dbg !4279
  %22 = getelementptr inbounds %struct.relay_server, ptr %21, i32 0, i32 2, !dbg !4280
  store ptr %20, ptr %22, align 8, !dbg !4281
  %23 = load ptr, ptr %4, align 8, !dbg !4282
  %24 = getelementptr inbounds %struct.relay_server, ptr %23, i32 0, i32 2, !dbg !4283
  %25 = load ptr, ptr %24, align 8, !dbg !4283
  %26 = call ptr @event_base_get_method(ptr noundef %25), !dbg !4284
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.40, ptr noundef %26), !dbg !4285
  %27 = load ptr, ptr %4, align 8, !dbg !4286
  %28 = getelementptr inbounds %struct.relay_server, ptr %27, i32 0, i32 1, !dbg !4287
  %29 = load ptr, ptr %28, align 8, !dbg !4287
  %30 = load ptr, ptr %4, align 8, !dbg !4288
  %31 = getelementptr inbounds %struct.relay_server, ptr %30, i32 0, i32 2, !dbg !4289
  %32 = load ptr, ptr %31, align 8, !dbg !4289
  %33 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 1), align 8, !dbg !4290
  %34 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 53), align 8, !dbg !4291
  %35 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 54), align 8, !dbg !4292
  %36 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 55), align 8, !dbg !4293
  %37 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 21), align 8, !dbg !4294
  %38 = call ptr @create_ioa_engine(ptr noundef %29, ptr noundef %32, ptr noundef %33, ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 52), i64 noundef %34, ptr noundef %35, i32 noundef %36, i32 noundef %37, ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 40)), !dbg !4295
  %39 = load ptr, ptr %4, align 8, !dbg !4296
  %40 = getelementptr inbounds %struct.relay_server, ptr %39, i32 0, i32 7, !dbg !4297
  store ptr %38, ptr %40, align 8, !dbg !4298
  %41 = load ptr, ptr %4, align 8, !dbg !4299
  %42 = getelementptr inbounds %struct.relay_server, ptr %41, i32 0, i32 7, !dbg !4300
  %43 = load ptr, ptr %42, align 8, !dbg !4300
  call void @set_ssl_ctx(ptr noundef %43, ptr noundef @turn_params), !dbg !4301
  %44 = load ptr, ptr %4, align 8, !dbg !4302
  %45 = getelementptr inbounds %struct.relay_server, ptr %44, i32 0, i32 7, !dbg !4303
  %46 = load ptr, ptr %45, align 8, !dbg !4303
  %47 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42), align 8, !dbg !4304
  call void @ioa_engine_set_rtcp_map(ptr noundef %46, ptr noundef %47), !dbg !4305
  br label %48

48:                                               ; preds = %19, %10
  %49 = load ptr, ptr %4, align 8, !dbg !4306
  %50 = getelementptr inbounds %struct.relay_server, ptr %49, i32 0, i32 2, !dbg !4307
  %51 = load ptr, ptr %50, align 8, !dbg !4307
  %52 = getelementptr inbounds [2 x ptr], ptr %7, i64 0, i64 0, !dbg !4308
  %53 = call i32 @bufferevent_pair_new(ptr noundef %51, i32 noundef 14, ptr noundef %52), !dbg !4309
  %54 = getelementptr inbounds [2 x ptr], ptr %7, i64 0, i64 0, !dbg !4310
  %55 = load ptr, ptr %54, align 16, !dbg !4310
  %56 = load ptr, ptr %4, align 8, !dbg !4311
  %57 = getelementptr inbounds %struct.relay_server, ptr %56, i32 0, i32 3, !dbg !4312
  store ptr %55, ptr %57, align 8, !dbg !4313
  %58 = getelementptr inbounds [2 x ptr], ptr %7, i64 0, i64 1, !dbg !4314
  %59 = load ptr, ptr %58, align 8, !dbg !4314
  %60 = load ptr, ptr %4, align 8, !dbg !4315
  %61 = getelementptr inbounds %struct.relay_server, ptr %60, i32 0, i32 4, !dbg !4316
  store ptr %59, ptr %61, align 8, !dbg !4317
  %62 = load ptr, ptr %4, align 8, !dbg !4318
  %63 = getelementptr inbounds %struct.relay_server, ptr %62, i32 0, i32 3, !dbg !4319
  %64 = load ptr, ptr %63, align 8, !dbg !4319
  %65 = load ptr, ptr %4, align 8, !dbg !4320
  call void @bufferevent_setcb(ptr noundef %64, ptr noundef @relay_receive_message, ptr noundef null, ptr noundef null, ptr noundef %65), !dbg !4321
  %66 = load ptr, ptr %4, align 8, !dbg !4322
  %67 = getelementptr inbounds %struct.relay_server, ptr %66, i32 0, i32 3, !dbg !4323
  %68 = load ptr, ptr %67, align 8, !dbg !4323
  %69 = call i32 @bufferevent_enable(ptr noundef %68, i16 noundef signext 2), !dbg !4324
  %70 = load ptr, ptr %4, align 8, !dbg !4325
  %71 = getelementptr inbounds %struct.relay_server, ptr %70, i32 0, i32 2, !dbg !4326
  %72 = load ptr, ptr %71, align 8, !dbg !4326
  %73 = getelementptr inbounds [2 x ptr], ptr %7, i64 0, i64 0, !dbg !4327
  %74 = call i32 @bufferevent_pair_new(ptr noundef %72, i32 noundef 14, ptr noundef %73), !dbg !4328
  %75 = getelementptr inbounds [2 x ptr], ptr %7, i64 0, i64 0, !dbg !4329
  %76 = load ptr, ptr %75, align 16, !dbg !4329
  %77 = load ptr, ptr %4, align 8, !dbg !4330
  %78 = getelementptr inbounds %struct.relay_server, ptr %77, i32 0, i32 5, !dbg !4331
  store ptr %76, ptr %78, align 8, !dbg !4332
  %79 = getelementptr inbounds [2 x ptr], ptr %7, i64 0, i64 1, !dbg !4333
  %80 = load ptr, ptr %79, align 8, !dbg !4333
  %81 = load ptr, ptr %4, align 8, !dbg !4334
  %82 = getelementptr inbounds %struct.relay_server, ptr %81, i32 0, i32 6, !dbg !4335
  store ptr %80, ptr %82, align 8, !dbg !4336
  %83 = load ptr, ptr %4, align 8, !dbg !4337
  %84 = getelementptr inbounds %struct.relay_server, ptr %83, i32 0, i32 5, !dbg !4338
  %85 = load ptr, ptr %84, align 8, !dbg !4338
  %86 = load ptr, ptr %4, align 8, !dbg !4339
  call void @bufferevent_setcb(ptr noundef %85, ptr noundef @relay_receive_auth_message, ptr noundef null, ptr noundef null, ptr noundef %86), !dbg !4340
  %87 = load ptr, ptr %4, align 8, !dbg !4341
  %88 = getelementptr inbounds %struct.relay_server, ptr %87, i32 0, i32 5, !dbg !4342
  %89 = load ptr, ptr %88, align 8, !dbg !4342
  %90 = call i32 @bufferevent_enable(ptr noundef %89, i16 noundef signext 2), !dbg !4343
  %91 = load ptr, ptr %4, align 8, !dbg !4344
  %92 = getelementptr inbounds %struct.relay_server, ptr %91, i32 0, i32 8, !dbg !4345
  %93 = load ptr, ptr %4, align 8, !dbg !4346
  %94 = getelementptr inbounds %struct.relay_server, ptr %93, i32 0, i32 0, !dbg !4347
  %95 = load i8, ptr %94, align 8, !dbg !4347
  %96 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 21), align 8, !dbg !4348
  %97 = load ptr, ptr %4, align 8, !dbg !4349
  %98 = getelementptr inbounds %struct.relay_server, ptr %97, i32 0, i32 7, !dbg !4350
  %99 = load ptr, ptr %98, align 8, !dbg !4350
  %100 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 78), align 8, !dbg !4351
  %101 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 71), align 4, !dbg !4352
  %102 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 56), align 8, !dbg !4353
  %103 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 63), align 8, !dbg !4354
  %104 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 70), align 8, !dbg !4355
  %105 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 61), align 4, !dbg !4356
  %106 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 90), align 4, !dbg !4357
  call void @init_turn_server(ptr noundef %92, i8 noundef zeroext %95, i32 noundef %96, ptr noundef %99, i32 noundef %100, i32 noundef 0, i32 noundef %101, i32 noundef 1, ptr noundef @start_user_check, ptr noundef @check_new_allocation_quota, ptr noundef @release_allocation_quota, ptr noundef %102, ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 49), ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 37), ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 38), ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 73), ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 74), ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 75), ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 76), ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 67), ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 68), ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 23), ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 24), ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 64), ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 65), ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 62), i32 noundef %103, ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 50), ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 51), ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 43), ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 44), ptr noundef @send_socket_to_relay, ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 69), ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 77), i32 noundef %104, ptr noundef @send_turn_session_info, ptr noundef @send_https_socket, ptr noundef @allocate_bps, i32 noundef %105, ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 59), ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 27), i32 noundef %106, ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 94)), !dbg !4358
  %107 = load i32, ptr %6, align 4, !dbg !4359
  %108 = icmp ne i32 %107, 0, !dbg !4359
  br i1 %108, label %109, label %112, !dbg !4361

109:                                              ; preds = %48
  %110 = load ptr, ptr %4, align 8, !dbg !4362
  %111 = getelementptr inbounds %struct.relay_server, ptr %110, i32 0, i32 8, !dbg !4364
  call void @set_rfc5780(ptr noundef %111, ptr noundef @get_alt_addr, ptr noundef @send_message_from_listener_to_client), !dbg !4365
  br label %112, !dbg !4366

112:                                              ; preds = %109, %48
  %113 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 45), align 8, !dbg !4367
  %114 = icmp eq i32 %113, 3, !dbg !4369
  br i1 %114, label %115, label %120, !dbg !4370

115:                                              ; preds = %112
  %116 = load ptr, ptr %4, align 8, !dbg !4371
  %117 = getelementptr inbounds %struct.relay_server, ptr %116, i32 0, i32 7, !dbg !4373
  %118 = load ptr, ptr %117, align 8, !dbg !4373
  %119 = load ptr, ptr %4, align 8, !dbg !4374
  call void @setup_tcp_listener_servers(ptr noundef %118, ptr noundef %119), !dbg !4375
  br label %120, !dbg !4376

120:                                              ; preds = %115, %112
  ret void, !dbg !4377
}

declare ptr @allocate_super_memory_region_func(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: nounwind
declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @run_general_relay_thread(ptr noundef %0) #0 !dbg !1283 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4378, metadata !DIExpression()), !dbg !4379
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4380, metadata !DIExpression()), !dbg !4381
  %6 = load ptr, ptr %2, align 8, !dbg !4382
  store ptr %6, ptr %3, align 8, !dbg !4381
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4383, metadata !DIExpression()), !dbg !4384
  %7 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 57), align 8, !dbg !4385
  %8 = zext i8 %7 to i32, !dbg !4386
  %9 = icmp sle i32 %8, 1, !dbg !4387
  br i1 %9, label %16, label %10, !dbg !4388

10:                                               ; preds = %1
  %11 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 45), align 8, !dbg !4389
  %12 = icmp eq i32 %11, 3, !dbg !4390
  br i1 %12, label %16, label %13, !dbg !4391

13:                                               ; preds = %10
  %14 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 45), align 8, !dbg !4392
  %15 = icmp eq i32 %14, 1, !dbg !4393
  br label %16, !dbg !4391

16:                                               ; preds = %13, %10, %1
  %17 = phi i1 [ true, %10 ], [ true, %1 ], [ %15, %13 ]
  %18 = zext i1 %17 to i32, !dbg !4391
  store i32 %18, ptr %4, align 4, !dbg !4384
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4394, metadata !DIExpression()), !dbg !4395
  %19 = load i32, ptr %4, align 4, !dbg !4396
  %20 = icmp ne i32 %19, 0, !dbg !4396
  br i1 %20, label %21, label %24, !dbg !4397

21:                                               ; preds = %16
  %22 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 33), align 4, !dbg !4398
  %23 = icmp ne i32 %22, 0, !dbg !4397
  br label %24

24:                                               ; preds = %21, %16
  %25 = phi i1 [ false, %16 ], [ %23, %21 ], !dbg !4399
  %26 = zext i1 %25 to i32, !dbg !4397
  store i32 %26, ptr %5, align 4, !dbg !4395
  call void @ignore_sigpipe(), !dbg !4400
  %27 = load ptr, ptr %3, align 8, !dbg !4401
  %28 = load i32, ptr %5, align 4, !dbg !4402
  call void @setup_relay_server(ptr noundef %27, ptr noundef null, i32 noundef %28), !dbg !4403
  call void @barrier_wait_func(ptr noundef @__FUNCTION__.run_general_relay_thread, i32 noundef 1704), !dbg !4404
  br label %29, !dbg !4405

29:                                               ; preds = %32, %24
  %30 = load i32, ptr @run_general_relay_thread.always_true, align 4, !dbg !4406
  %31 = icmp ne i32 %30, 0, !dbg !4405
  br i1 %31, label %32, label %39, !dbg !4405

32:                                               ; preds = %29
  %33 = load ptr, ptr %3, align 8, !dbg !4407
  %34 = getelementptr inbounds %struct.relay_server, ptr %33, i32 0, i32 2, !dbg !4409
  %35 = load ptr, ptr %34, align 8, !dbg !4409
  %36 = load ptr, ptr %3, align 8, !dbg !4410
  %37 = getelementptr inbounds %struct.relay_server, ptr %36, i32 0, i32 7, !dbg !4411
  %38 = load ptr, ptr %37, align 8, !dbg !4411
  call void @run_events(ptr noundef %35, ptr noundef %38), !dbg !4412
  br label %29, !dbg !4405, !llvm.loop !4413

39:                                               ; preds = %29
  %40 = load ptr, ptr %2, align 8, !dbg !4415
  ret ptr %40, !dbg !4416
}

; Function Attrs: nounwind
declare i32 @pthread_detach(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @relay_receive_message(ptr noundef %0, ptr noundef %1) #0 !dbg !4417 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.message_to_relay, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4418, metadata !DIExpression()), !dbg !4419
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4420, metadata !DIExpression()), !dbg !4421
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4422, metadata !DIExpression()), !dbg !4423
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4424, metadata !DIExpression()), !dbg !4425
  store i32 0, ptr %6, align 4, !dbg !4425
  call void @llvm.dbg.declare(metadata ptr %7, metadata !4426, metadata !DIExpression()), !dbg !4427
  %9 = load ptr, ptr %3, align 8, !dbg !4428
  %10 = call ptr @bufferevent_get_input(ptr noundef %9), !dbg !4429
  store ptr %10, ptr %7, align 8, !dbg !4427
  call void @llvm.dbg.declare(metadata ptr %8, metadata !4430, metadata !DIExpression()), !dbg !4431
  %11 = load ptr, ptr %4, align 8, !dbg !4432
  store ptr %11, ptr %8, align 8, !dbg !4431
  br label %12, !dbg !4433

12:                                               ; preds = %21, %20, %2
  %13 = load ptr, ptr %7, align 8, !dbg !4434
  %14 = call i32 @evbuffer_remove(ptr noundef %13, ptr noundef %5, i64 noundef 112), !dbg !4435
  store i32 %14, ptr %6, align 4, !dbg !4436
  %15 = icmp sgt i32 %14, 0, !dbg !4437
  br i1 %15, label %16, label %24, !dbg !4433

16:                                               ; preds = %12
  %17 = load i32, ptr %6, align 4, !dbg !4438
  %18 = sext i32 %17 to i64, !dbg !4438
  %19 = icmp ne i64 %18, 112, !dbg !4441
  br i1 %19, label %20, label %21, !dbg !4442

20:                                               ; preds = %16
  call void @perror(ptr noundef @.str.27), !dbg !4443
  br label %12, !dbg !4445, !llvm.loop !4446

21:                                               ; preds = %16
  %22 = load ptr, ptr %8, align 8, !dbg !4448
  %23 = call i32 @handle_relay_message(ptr noundef %22, ptr noundef %5), !dbg !4449
  br label %12, !dbg !4433, !llvm.loop !4446

24:                                               ; preds = %12
  ret void, !dbg !4450
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @relay_receive_auth_message(ptr noundef %0, ptr noundef %1) #0 !dbg !4451 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.auth_message, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4452, metadata !DIExpression()), !dbg !4453
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4454, metadata !DIExpression()), !dbg !4455
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4456, metadata !DIExpression()), !dbg !4457
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4458, metadata !DIExpression()), !dbg !4459
  store i32 0, ptr %6, align 4, !dbg !4459
  call void @llvm.dbg.declare(metadata ptr %7, metadata !4460, metadata !DIExpression()), !dbg !4461
  %9 = load ptr, ptr %3, align 8, !dbg !4462
  %10 = call ptr @bufferevent_get_input(ptr noundef %9), !dbg !4463
  store ptr %10, ptr %7, align 8, !dbg !4461
  call void @llvm.dbg.declare(metadata ptr %8, metadata !4464, metadata !DIExpression()), !dbg !4465
  %11 = load ptr, ptr %4, align 8, !dbg !4466
  store ptr %11, ptr %8, align 8, !dbg !4465
  br label %12, !dbg !4467

12:                                               ; preds = %21, %20, %2
  %13 = load ptr, ptr %7, align 8, !dbg !4468
  %14 = call i32 @evbuffer_remove(ptr noundef %13, ptr noundef %5, i64 noundef 1056), !dbg !4469
  store i32 %14, ptr %6, align 4, !dbg !4470
  %15 = icmp sgt i32 %14, 0, !dbg !4471
  br i1 %15, label %16, label %23, !dbg !4467

16:                                               ; preds = %12
  %17 = load i32, ptr %6, align 4, !dbg !4472
  %18 = sext i32 %17 to i64, !dbg !4472
  %19 = icmp ne i64 %18, 1056, !dbg !4475
  br i1 %19, label %20, label %21, !dbg !4476

20:                                               ; preds = %16
  call void @perror(ptr noundef @.str.45), !dbg !4477
  br label %12, !dbg !4479, !llvm.loop !4480

21:                                               ; preds = %16
  %22 = load ptr, ptr %8, align 8, !dbg !4482
  call void @handle_relay_auth_message(ptr noundef %22, ptr noundef %5), !dbg !4483
  br label %12, !dbg !4467, !llvm.loop !4480

23:                                               ; preds = %12
  ret void, !dbg !4484
}

declare void @init_turn_server(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #4

declare ptr @start_user_check(i8 noundef zeroext, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) #4

declare i32 @check_new_allocation_quota(ptr noundef, i32 noundef, ptr noundef) #4

declare void @release_allocation_quota(ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_socket_to_relay(i8 noundef zeroext %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7) #0 !dbg !4485 {
  %9 = alloca i8, align 1
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca ptr, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.message_to_relay, align 8
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca ptr, align 8
  store i8 %0, ptr %9, align 1
  call void @llvm.dbg.declare(metadata ptr %9, metadata !4486, metadata !DIExpression()), !dbg !4487
  store i64 %1, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !4488, metadata !DIExpression()), !dbg !4489
  store ptr %2, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !4490, metadata !DIExpression()), !dbg !4491
  store ptr %3, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !4492, metadata !DIExpression()), !dbg !4493
  store i32 %4, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !4494, metadata !DIExpression()), !dbg !4495
  store i32 %5, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !4496, metadata !DIExpression()), !dbg !4497
  store ptr %6, ptr %15, align 8
  call void @llvm.dbg.declare(metadata ptr %15, metadata !4498, metadata !DIExpression()), !dbg !4499
  store i32 %7, ptr %16, align 4
  call void @llvm.dbg.declare(metadata ptr %16, metadata !4500, metadata !DIExpression()), !dbg !4501
  call void @llvm.dbg.declare(metadata ptr %17, metadata !4502, metadata !DIExpression()), !dbg !4503
  store i32 -1, ptr %17, align 4, !dbg !4503
  call void @llvm.dbg.declare(metadata ptr %18, metadata !4504, metadata !DIExpression()), !dbg !4505
  call void @llvm.memset.p0.i64(ptr align 8 %18, i8 0, i64 112, i1 false), !dbg !4506
  %24 = load i32, ptr %14, align 4, !dbg !4507
  %25 = getelementptr inbounds %struct.message_to_relay, ptr %18, i32 0, i32 0, !dbg !4508
  store i32 %24, ptr %25, align 8, !dbg !4509
  call void @llvm.dbg.declare(metadata ptr %19, metadata !4510, metadata !DIExpression()), !dbg !4511
  %26 = load ptr, ptr %12, align 8, !dbg !4512
  store ptr %26, ptr %19, align 8, !dbg !4511
  call void @llvm.dbg.declare(metadata ptr %20, metadata !4513, metadata !DIExpression()), !dbg !4514
  store ptr null, ptr %20, align 8, !dbg !4514
  %27 = load i8, ptr %9, align 1, !dbg !4515
  %28 = zext i8 %27 to i32, !dbg !4515
  %29 = icmp sge i32 %28, 128, !dbg !4517
  br i1 %29, label %30, label %80, !dbg !4518

30:                                               ; preds = %8
  call void @llvm.dbg.declare(metadata ptr %21, metadata !4519, metadata !DIExpression()), !dbg !4521
  %31 = load i8, ptr %9, align 1, !dbg !4522
  %32 = zext i8 %31 to i32, !dbg !4522
  %33 = sub nsw i32 %32, 128, !dbg !4523
  %34 = sext i32 %33 to i64, !dbg !4522
  store i64 %34, ptr %21, align 8, !dbg !4521
  %35 = load i64, ptr %21, align 8, !dbg !4524
  %36 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 58), align 1, !dbg !4526
  %37 = zext i8 %36 to i32, !dbg !4526
  %38 = icmp sgt i32 %37, 1, !dbg !4526
  br i1 %38, label %39, label %42, !dbg !4526

39:                                               ; preds = %30
  %40 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 58), align 1, !dbg !4526
  %41 = zext i8 %40 to i32, !dbg !4526
  br label %43, !dbg !4526

42:                                               ; preds = %30
  br label %43, !dbg !4526

43:                                               ; preds = %42, %39
  %44 = phi i32 [ %41, %39 ], [ 1, %42 ], !dbg !4526
  %45 = sext i32 %44 to i64, !dbg !4526
  %46 = icmp uge i64 %35, %45, !dbg !4527
  br i1 %46, label %47, label %60, !dbg !4528

47:                                               ; preds = %43
  %48 = load i64, ptr %21, align 8, !dbg !4529
  %49 = trunc i64 %48 to i32, !dbg !4531
  %50 = load i32, ptr %14, align 4, !dbg !4532
  %51 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 58), align 1, !dbg !4533
  %52 = zext i8 %51 to i32, !dbg !4533
  %53 = icmp sgt i32 %52, 1, !dbg !4533
  br i1 %53, label %54, label %57, !dbg !4533

54:                                               ; preds = %47
  %55 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 58), align 1, !dbg !4533
  %56 = zext i8 %55 to i32, !dbg !4533
  br label %58, !dbg !4533

57:                                               ; preds = %47
  br label %58, !dbg !4533

58:                                               ; preds = %57, %54
  %59 = phi i32 [ %56, %54 ], [ 1, %57 ], !dbg !4533
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.46, ptr noundef @__FUNCTION__.send_socket_to_relay, i32 noundef %49, i32 noundef %50, i32 noundef %59), !dbg !4534
  br label %245, !dbg !4535

60:                                               ; preds = %43
  %61 = load i64, ptr %21, align 8, !dbg !4536
  %62 = getelementptr inbounds [256 x ptr], ptr @udp_relay_servers, i64 0, i64 %61, !dbg !4537
  %63 = load ptr, ptr %62, align 8, !dbg !4537
  store ptr %63, ptr %20, align 8, !dbg !4538
  %64 = load ptr, ptr %20, align 8, !dbg !4539
  %65 = icmp ne ptr %64, null, !dbg !4539
  br i1 %65, label %79, label %66, !dbg !4541

66:                                               ; preds = %60
  %67 = load i64, ptr %21, align 8, !dbg !4542
  %68 = trunc i64 %67 to i32, !dbg !4544
  %69 = load i32, ptr %14, align 4, !dbg !4545
  %70 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 58), align 1, !dbg !4546
  %71 = zext i8 %70 to i32, !dbg !4546
  %72 = icmp sgt i32 %71, 1, !dbg !4546
  br i1 %72, label %73, label %76, !dbg !4546

73:                                               ; preds = %66
  %74 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 58), align 1, !dbg !4546
  %75 = zext i8 %74 to i32, !dbg !4546
  br label %77, !dbg !4546

76:                                               ; preds = %66
  br label %77, !dbg !4546

77:                                               ; preds = %76, %73
  %78 = phi i32 [ %75, %73 ], [ 1, %76 ], !dbg !4546
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.47, ptr noundef @__FUNCTION__.send_socket_to_relay, i32 noundef %68, i32 noundef %69, i32 noundef %78), !dbg !4547
  br label %245, !dbg !4548

79:                                               ; preds = %60
  br label %128, !dbg !4549

80:                                               ; preds = %8
  call void @llvm.dbg.declare(metadata ptr %22, metadata !4550, metadata !DIExpression()), !dbg !4552
  %81 = load i8, ptr %9, align 1, !dbg !4553
  %82 = zext i8 %81 to i64, !dbg !4553
  store i64 %82, ptr %22, align 8, !dbg !4552
  %83 = load i64, ptr %22, align 8, !dbg !4554
  %84 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 57), align 8, !dbg !4556
  %85 = zext i8 %84 to i32, !dbg !4556
  %86 = icmp sgt i32 %85, 1, !dbg !4556
  br i1 %86, label %87, label %90, !dbg !4556

87:                                               ; preds = %80
  %88 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 57), align 8, !dbg !4556
  %89 = zext i8 %88 to i32, !dbg !4556
  br label %91, !dbg !4556

90:                                               ; preds = %80
  br label %91, !dbg !4556

91:                                               ; preds = %90, %87
  %92 = phi i32 [ %89, %87 ], [ 1, %90 ], !dbg !4556
  %93 = sext i32 %92 to i64, !dbg !4556
  %94 = icmp uge i64 %83, %93, !dbg !4557
  br i1 %94, label %95, label %108, !dbg !4558

95:                                               ; preds = %91
  %96 = load i64, ptr %22, align 8, !dbg !4559
  %97 = trunc i64 %96 to i32, !dbg !4561
  %98 = load i32, ptr %14, align 4, !dbg !4562
  %99 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 57), align 8, !dbg !4563
  %100 = zext i8 %99 to i32, !dbg !4563
  %101 = icmp sgt i32 %100, 1, !dbg !4563
  br i1 %101, label %102, label %105, !dbg !4563

102:                                              ; preds = %95
  %103 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 57), align 8, !dbg !4563
  %104 = zext i8 %103 to i32, !dbg !4563
  br label %106, !dbg !4563

105:                                              ; preds = %95
  br label %106, !dbg !4563

106:                                              ; preds = %105, %102
  %107 = phi i32 [ %104, %102 ], [ 1, %105 ], !dbg !4563
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.48, ptr noundef @__FUNCTION__.send_socket_to_relay, i32 noundef %97, i32 noundef %98, i32 noundef %107), !dbg !4564
  br label %245, !dbg !4565

108:                                              ; preds = %91
  %109 = load i64, ptr %22, align 8, !dbg !4566
  %110 = getelementptr inbounds [256 x ptr], ptr @general_relay_servers, i64 0, i64 %109, !dbg !4567
  %111 = load ptr, ptr %110, align 8, !dbg !4567
  store ptr %111, ptr %20, align 8, !dbg !4568
  %112 = load ptr, ptr %20, align 8, !dbg !4569
  %113 = icmp ne ptr %112, null, !dbg !4569
  br i1 %113, label %127, label %114, !dbg !4571

114:                                              ; preds = %108
  %115 = load i64, ptr %22, align 8, !dbg !4572
  %116 = trunc i64 %115 to i32, !dbg !4574
  %117 = load i32, ptr %14, align 4, !dbg !4575
  %118 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 57), align 8, !dbg !4576
  %119 = zext i8 %118 to i32, !dbg !4576
  %120 = icmp sgt i32 %119, 1, !dbg !4576
  br i1 %120, label %121, label %124, !dbg !4576

121:                                              ; preds = %114
  %122 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 57), align 8, !dbg !4576
  %123 = zext i8 %122 to i32, !dbg !4576
  br label %125, !dbg !4576

124:                                              ; preds = %114
  br label %125, !dbg !4576

125:                                              ; preds = %124, %121
  %126 = phi i32 [ %123, %121 ], [ 1, %124 ], !dbg !4576
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.49, ptr noundef @__FUNCTION__.send_socket_to_relay, i32 noundef %116, i32 noundef %117, i32 noundef %126), !dbg !4577
  br label %245, !dbg !4578

127:                                              ; preds = %108
  br label %128

128:                                              ; preds = %127, %79
  %129 = load i32, ptr %14, align 4, !dbg !4579
  switch i32 %129, label %226 [
    i32 2, label %130
    i32 3, label %184
  ], !dbg !4580

130:                                              ; preds = %128
  %131 = load ptr, ptr %15, align 8, !dbg !4581
  %132 = icmp ne ptr %131, null, !dbg !4581
  br i1 %132, label %133, label %183, !dbg !4585

133:                                              ; preds = %130
  %134 = load ptr, ptr %15, align 8, !dbg !4586
  %135 = getelementptr inbounds %struct._ioa_net_data, ptr %134, i32 0, i32 1, !dbg !4587
  %136 = load ptr, ptr %135, align 8, !dbg !4587
  %137 = icmp ne ptr %136, null, !dbg !4586
  br i1 %137, label %138, label %183, !dbg !4588

138:                                              ; preds = %133
  %139 = load i8, ptr %9, align 1, !dbg !4589
  %140 = getelementptr inbounds %struct.message_to_relay, ptr %18, i32 0, i32 2, !dbg !4591
  %141 = getelementptr inbounds %struct.cb_socket_message, ptr %140, i32 0, i32 0, !dbg !4592
  store i8 %139, ptr %141, align 8, !dbg !4593
  %142 = load i64, ptr %10, align 8, !dbg !4594
  %143 = trunc i64 %142 to i32, !dbg !4595
  %144 = getelementptr inbounds %struct.message_to_relay, ptr %18, i32 0, i32 2, !dbg !4596
  %145 = getelementptr inbounds %struct.cb_socket_message, ptr %144, i32 0, i32 1, !dbg !4597
  store i32 %143, ptr %145, align 4, !dbg !4598
  %146 = getelementptr inbounds %struct.message_to_relay, ptr %18, i32 0, i32 2, !dbg !4599
  %147 = getelementptr inbounds %struct.cb_socket_message, ptr %146, i32 0, i32 2, !dbg !4600
  %148 = load ptr, ptr %11, align 8, !dbg !4601
  call void @stun_tid_cpy(ptr noundef %147, ptr noundef %148), !dbg !4602
  %149 = load ptr, ptr %12, align 8, !dbg !4603
  %150 = getelementptr inbounds %struct.message_to_relay, ptr %18, i32 0, i32 2, !dbg !4604
  %151 = getelementptr inbounds %struct.cb_socket_message, ptr %150, i32 0, i32 3, !dbg !4605
  store ptr %149, ptr %151, align 8, !dbg !4606
  %152 = load i32, ptr %13, align 4, !dbg !4607
  %153 = getelementptr inbounds %struct.message_to_relay, ptr %18, i32 0, i32 2, !dbg !4608
  %154 = getelementptr inbounds %struct.cb_socket_message, ptr %153, i32 0, i32 4, !dbg !4609
  store i32 %152, ptr %154, align 8, !dbg !4610
  %155 = getelementptr inbounds %struct.message_to_relay, ptr %18, i32 0, i32 2, !dbg !4611
  %156 = getelementptr inbounds %struct.cb_socket_message, ptr %155, i32 0, i32 5, !dbg !4612
  %157 = getelementptr inbounds %struct._ioa_net_data, ptr %156, i32 0, i32 0, !dbg !4613
  %158 = load ptr, ptr %15, align 8, !dbg !4614
  %159 = getelementptr inbounds %struct._ioa_net_data, ptr %158, i32 0, i32 0, !dbg !4615
  call void @addr_cpy(ptr noundef %157, ptr noundef %159), !dbg !4616
  %160 = load ptr, ptr %15, align 8, !dbg !4617
  %161 = getelementptr inbounds %struct._ioa_net_data, ptr %160, i32 0, i32 3, !dbg !4618
  %162 = load i32, ptr %161, align 4, !dbg !4618
  %163 = getelementptr inbounds %struct.message_to_relay, ptr %18, i32 0, i32 2, !dbg !4619
  %164 = getelementptr inbounds %struct.cb_socket_message, ptr %163, i32 0, i32 5, !dbg !4620
  %165 = getelementptr inbounds %struct._ioa_net_data, ptr %164, i32 0, i32 3, !dbg !4621
  store i32 %162, ptr %165, align 4, !dbg !4622
  %166 = load ptr, ptr %15, align 8, !dbg !4623
  %167 = getelementptr inbounds %struct._ioa_net_data, ptr %166, i32 0, i32 2, !dbg !4624
  %168 = load i32, ptr %167, align 8, !dbg !4624
  %169 = getelementptr inbounds %struct.message_to_relay, ptr %18, i32 0, i32 2, !dbg !4625
  %170 = getelementptr inbounds %struct.cb_socket_message, ptr %169, i32 0, i32 5, !dbg !4626
  %171 = getelementptr inbounds %struct._ioa_net_data, ptr %170, i32 0, i32 2, !dbg !4627
  store i32 %168, ptr %171, align 8, !dbg !4628
  %172 = load ptr, ptr %15, align 8, !dbg !4629
  %173 = getelementptr inbounds %struct._ioa_net_data, ptr %172, i32 0, i32 1, !dbg !4630
  %174 = load ptr, ptr %173, align 8, !dbg !4630
  %175 = getelementptr inbounds %struct.message_to_relay, ptr %18, i32 0, i32 2, !dbg !4631
  %176 = getelementptr inbounds %struct.cb_socket_message, ptr %175, i32 0, i32 5, !dbg !4632
  %177 = getelementptr inbounds %struct._ioa_net_data, ptr %176, i32 0, i32 1, !dbg !4633
  store ptr %174, ptr %177, align 8, !dbg !4634
  %178 = load i32, ptr %16, align 4, !dbg !4635
  %179 = getelementptr inbounds %struct.message_to_relay, ptr %18, i32 0, i32 2, !dbg !4636
  %180 = getelementptr inbounds %struct.cb_socket_message, ptr %179, i32 0, i32 6, !dbg !4637
  store i32 %178, ptr %180, align 8, !dbg !4638
  %181 = load ptr, ptr %15, align 8, !dbg !4639
  %182 = getelementptr inbounds %struct._ioa_net_data, ptr %181, i32 0, i32 1, !dbg !4640
  store ptr null, ptr %182, align 8, !dbg !4641
  store ptr null, ptr %19, align 8, !dbg !4642
  store i32 0, ptr %17, align 4, !dbg !4643
  br label %183, !dbg !4644

183:                                              ; preds = %138, %133, %130
  br label %228, !dbg !4645

184:                                              ; preds = %128
  %185 = load ptr, ptr %15, align 8, !dbg !4646
  %186 = icmp ne ptr %185, null, !dbg !4646
  br i1 %186, label %187, label %224, !dbg !4649

187:                                              ; preds = %184
  %188 = load ptr, ptr %15, align 8, !dbg !4650
  %189 = getelementptr inbounds %struct._ioa_net_data, ptr %188, i32 0, i32 1, !dbg !4651
  %190 = load ptr, ptr %189, align 8, !dbg !4651
  %191 = icmp ne ptr %190, null, !dbg !4650
  br i1 %191, label %192, label %224, !dbg !4652

192:                                              ; preds = %187
  %193 = load ptr, ptr %12, align 8, !dbg !4653
  %194 = getelementptr inbounds %struct.message_to_relay, ptr %18, i32 0, i32 2, !dbg !4655
  %195 = getelementptr inbounds %struct.socket_message, ptr %194, i32 0, i32 0, !dbg !4656
  store ptr %193, ptr %195, align 8, !dbg !4657
  %196 = getelementptr inbounds %struct.message_to_relay, ptr %18, i32 0, i32 2, !dbg !4658
  %197 = getelementptr inbounds %struct.socket_message, ptr %196, i32 0, i32 1, !dbg !4659
  %198 = getelementptr inbounds %struct._ioa_net_data, ptr %197, i32 0, i32 0, !dbg !4660
  %199 = load ptr, ptr %15, align 8, !dbg !4661
  %200 = getelementptr inbounds %struct._ioa_net_data, ptr %199, i32 0, i32 0, !dbg !4662
  call void @addr_cpy(ptr noundef %198, ptr noundef %200), !dbg !4663
  %201 = load ptr, ptr %15, align 8, !dbg !4664
  %202 = getelementptr inbounds %struct._ioa_net_data, ptr %201, i32 0, i32 3, !dbg !4665
  %203 = load i32, ptr %202, align 4, !dbg !4665
  %204 = getelementptr inbounds %struct.message_to_relay, ptr %18, i32 0, i32 2, !dbg !4666
  %205 = getelementptr inbounds %struct.socket_message, ptr %204, i32 0, i32 1, !dbg !4667
  %206 = getelementptr inbounds %struct._ioa_net_data, ptr %205, i32 0, i32 3, !dbg !4668
  store i32 %203, ptr %206, align 4, !dbg !4669
  %207 = load ptr, ptr %15, align 8, !dbg !4670
  %208 = getelementptr inbounds %struct._ioa_net_data, ptr %207, i32 0, i32 2, !dbg !4671
  %209 = load i32, ptr %208, align 8, !dbg !4671
  %210 = getelementptr inbounds %struct.message_to_relay, ptr %18, i32 0, i32 2, !dbg !4672
  %211 = getelementptr inbounds %struct.socket_message, ptr %210, i32 0, i32 1, !dbg !4673
  %212 = getelementptr inbounds %struct._ioa_net_data, ptr %211, i32 0, i32 2, !dbg !4674
  store i32 %209, ptr %212, align 8, !dbg !4675
  %213 = load ptr, ptr %15, align 8, !dbg !4676
  %214 = getelementptr inbounds %struct._ioa_net_data, ptr %213, i32 0, i32 1, !dbg !4677
  %215 = load ptr, ptr %214, align 8, !dbg !4677
  %216 = getelementptr inbounds %struct.message_to_relay, ptr %18, i32 0, i32 2, !dbg !4678
  %217 = getelementptr inbounds %struct.socket_message, ptr %216, i32 0, i32 1, !dbg !4679
  %218 = getelementptr inbounds %struct._ioa_net_data, ptr %217, i32 0, i32 1, !dbg !4680
  store ptr %215, ptr %218, align 8, !dbg !4681
  %219 = load i32, ptr %16, align 4, !dbg !4682
  %220 = getelementptr inbounds %struct.message_to_relay, ptr %18, i32 0, i32 2, !dbg !4683
  %221 = getelementptr inbounds %struct.socket_message, ptr %220, i32 0, i32 2, !dbg !4684
  store i32 %219, ptr %221, align 8, !dbg !4685
  %222 = load ptr, ptr %15, align 8, !dbg !4686
  %223 = getelementptr inbounds %struct._ioa_net_data, ptr %222, i32 0, i32 1, !dbg !4687
  store ptr null, ptr %223, align 8, !dbg !4688
  store ptr null, ptr %19, align 8, !dbg !4689
  store i32 0, ptr %17, align 4, !dbg !4690
  br label %225, !dbg !4691

224:                                              ; preds = %187, %184
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.50, ptr noundef @__FUNCTION__.send_socket_to_relay), !dbg !4692
  br label %225

225:                                              ; preds = %224, %192
  br label %228, !dbg !4694

226:                                              ; preds = %128
  %227 = load i32, ptr %14, align 4, !dbg !4695
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.51, ptr noundef @__FUNCTION__.send_socket_to_relay, i32 noundef %227), !dbg !4697
  br label %228, !dbg !4698

228:                                              ; preds = %226, %225, %183
  %229 = load i32, ptr %17, align 4, !dbg !4699
  %230 = icmp eq i32 %229, 0, !dbg !4701
  br i1 %230, label %231, label %244, !dbg !4702

231:                                              ; preds = %228
  call void @llvm.dbg.declare(metadata ptr %23, metadata !4703, metadata !DIExpression()), !dbg !4705
  %232 = load ptr, ptr %20, align 8, !dbg !4706
  %233 = getelementptr inbounds %struct.relay_server, ptr %232, i32 0, i32 4, !dbg !4707
  %234 = load ptr, ptr %233, align 8, !dbg !4707
  %235 = call ptr @bufferevent_get_output(ptr noundef %234), !dbg !4708
  store ptr %235, ptr %23, align 8, !dbg !4705
  %236 = load ptr, ptr %23, align 8, !dbg !4709
  %237 = icmp ne ptr %236, null, !dbg !4709
  br i1 %237, label %238, label %241, !dbg !4711

238:                                              ; preds = %231
  %239 = load ptr, ptr %23, align 8, !dbg !4712
  %240 = call i32 @evbuffer_add(ptr noundef %239, ptr noundef %18, i64 noundef 112), !dbg !4714
  br label %243, !dbg !4715

241:                                              ; preds = %231
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.9, ptr noundef @__FUNCTION__.send_socket_to_relay), !dbg !4716
  store i32 -1, ptr %17, align 4, !dbg !4718
  %242 = load ptr, ptr %12, align 8, !dbg !4719
  store ptr %242, ptr %19, align 8, !dbg !4720
  br label %243

243:                                              ; preds = %241, %238
  br label %244, !dbg !4721

244:                                              ; preds = %243, %228
  br label %245, !dbg !4722

245:                                              ; preds = %244, %125, %106, %77, %58
  call void @llvm.dbg.label(metadata !4723), !dbg !4724
  br label %246, !dbg !4725

246:                                              ; preds = %245
  %247 = load ptr, ptr %19, align 8, !dbg !4726
  %248 = icmp ne ptr %247, null, !dbg !4726
  br i1 %248, label %249, label %251, !dbg !4729

249:                                              ; preds = %246
  %250 = load ptr, ptr %19, align 8, !dbg !4730
  call void @close_ioa_socket(ptr noundef %250), !dbg !4730
  store ptr null, ptr %19, align 8, !dbg !4730
  br label %251, !dbg !4730

251:                                              ; preds = %249, %246
  br label %252, !dbg !4729

252:                                              ; preds = %251
  %253 = load ptr, ptr %15, align 8, !dbg !4732
  %254 = icmp ne ptr %253, null, !dbg !4732
  br i1 %254, label %255, label %266, !dbg !4734

255:                                              ; preds = %252
  %256 = load ptr, ptr %15, align 8, !dbg !4735
  %257 = getelementptr inbounds %struct._ioa_net_data, ptr %256, i32 0, i32 1, !dbg !4736
  %258 = load ptr, ptr %257, align 8, !dbg !4736
  %259 = icmp ne ptr %258, null, !dbg !4735
  br i1 %259, label %260, label %266, !dbg !4737

260:                                              ; preds = %255
  %261 = load ptr, ptr %15, align 8, !dbg !4738
  %262 = getelementptr inbounds %struct._ioa_net_data, ptr %261, i32 0, i32 1, !dbg !4740
  %263 = load ptr, ptr %262, align 8, !dbg !4740
  call void @ioa_network_buffer_delete(ptr noundef null, ptr noundef %263), !dbg !4741
  %264 = load ptr, ptr %15, align 8, !dbg !4742
  %265 = getelementptr inbounds %struct._ioa_net_data, ptr %264, i32 0, i32 1, !dbg !4743
  store ptr null, ptr %265, align 8, !dbg !4744
  br label %266, !dbg !4745

266:                                              ; preds = %260, %255, %252
  %267 = load i32, ptr %17, align 4, !dbg !4746
  %268 = icmp slt i32 %267, 0, !dbg !4748
  br i1 %268, label %269, label %293, !dbg !4749

269:                                              ; preds = %266
  %270 = load i32, ptr %14, align 4, !dbg !4750
  %271 = icmp eq i32 %270, 3, !dbg !4753
  br i1 %271, label %272, label %280, !dbg !4754

272:                                              ; preds = %269
  %273 = getelementptr inbounds %struct.message_to_relay, ptr %18, i32 0, i32 2, !dbg !4755
  %274 = getelementptr inbounds %struct.socket_message, ptr %273, i32 0, i32 1, !dbg !4757
  %275 = getelementptr inbounds %struct._ioa_net_data, ptr %274, i32 0, i32 1, !dbg !4758
  %276 = load ptr, ptr %275, align 8, !dbg !4758
  call void @ioa_network_buffer_delete(ptr noundef null, ptr noundef %276), !dbg !4759
  %277 = getelementptr inbounds %struct.message_to_relay, ptr %18, i32 0, i32 2, !dbg !4760
  %278 = getelementptr inbounds %struct.socket_message, ptr %277, i32 0, i32 1, !dbg !4761
  %279 = getelementptr inbounds %struct._ioa_net_data, ptr %278, i32 0, i32 1, !dbg !4762
  store ptr null, ptr %279, align 8, !dbg !4763
  br label %292, !dbg !4764

280:                                              ; preds = %269
  %281 = load i32, ptr %14, align 4, !dbg !4765
  %282 = icmp eq i32 %281, 2, !dbg !4767
  br i1 %282, label %283, label %291, !dbg !4768

283:                                              ; preds = %280
  %284 = getelementptr inbounds %struct.message_to_relay, ptr %18, i32 0, i32 2, !dbg !4769
  %285 = getelementptr inbounds %struct.cb_socket_message, ptr %284, i32 0, i32 5, !dbg !4771
  %286 = getelementptr inbounds %struct._ioa_net_data, ptr %285, i32 0, i32 1, !dbg !4772
  %287 = load ptr, ptr %286, align 8, !dbg !4772
  call void @ioa_network_buffer_delete(ptr noundef null, ptr noundef %287), !dbg !4773
  %288 = getelementptr inbounds %struct.message_to_relay, ptr %18, i32 0, i32 2, !dbg !4774
  %289 = getelementptr inbounds %struct.cb_socket_message, ptr %288, i32 0, i32 5, !dbg !4775
  %290 = getelementptr inbounds %struct._ioa_net_data, ptr %289, i32 0, i32 1, !dbg !4776
  store ptr null, ptr %290, align 8, !dbg !4777
  br label %291, !dbg !4778

291:                                              ; preds = %283, %280
  br label %292

292:                                              ; preds = %291, %272
  br label %293, !dbg !4779

293:                                              ; preds = %292, %266
  %294 = load i32, ptr %17, align 4, !dbg !4780
  ret i32 %294, !dbg !4781
}

declare i32 @send_turn_session_info(ptr noundef) #4

declare void @send_https_socket(ptr noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @allocate_bps(i64 noundef %0, i32 noundef %1) #0 !dbg !4782 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4783, metadata !DIExpression()), !dbg !4784
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4785, metadata !DIExpression()), !dbg !4786
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4787, metadata !DIExpression()), !dbg !4788
  store i64 0, ptr %5, align 8, !dbg !4788
  %7 = load i64, ptr %3, align 8, !dbg !4789
  %8 = icmp ugt i64 %7, 0, !dbg !4791
  br i1 %8, label %9, label %55, !dbg !4792

9:                                                ; preds = %2
  %10 = call i32 @pthread_mutex_lock(ptr noundef @mutex_bps) #10, !dbg !4793
  %11 = load i32, ptr %4, align 4, !dbg !4795
  %12 = icmp ne i32 %11, 0, !dbg !4795
  br i1 %12, label %13, label %43, !dbg !4797

13:                                               ; preds = %9
  %14 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 81), align 8, !dbg !4798
  %15 = icmp ne i64 %14, 0, !dbg !4801
  br i1 %15, label %21, label %16, !dbg !4802

16:                                               ; preds = %13
  %17 = load i64, ptr %3, align 8, !dbg !4803
  store i64 %17, ptr %5, align 8, !dbg !4805
  %18 = load i64, ptr %5, align 8, !dbg !4806
  %19 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 82), align 8, !dbg !4807
  %20 = add i64 %19, %18, !dbg !4807
  store i64 %20, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 82), align 8, !dbg !4807
  br label %42, !dbg !4808

21:                                               ; preds = %13
  %22 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 82), align 8, !dbg !4809
  %23 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 81), align 8, !dbg !4811
  %24 = icmp ult i64 %22, %23, !dbg !4812
  br i1 %24, label %25, label %41, !dbg !4813

25:                                               ; preds = %21
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4814, metadata !DIExpression()), !dbg !4816
  %26 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 81), align 8, !dbg !4817
  %27 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 82), align 8, !dbg !4818
  %28 = sub i64 %26, %27, !dbg !4819
  store i64 %28, ptr %6, align 8, !dbg !4816
  %29 = load i64, ptr %6, align 8, !dbg !4820
  %30 = load i64, ptr %3, align 8, !dbg !4822
  %31 = icmp ule i64 %29, %30, !dbg !4823
  br i1 %31, label %32, label %35, !dbg !4824

32:                                               ; preds = %25
  %33 = load i64, ptr %6, align 8, !dbg !4825
  store i64 %33, ptr %5, align 8, !dbg !4827
  %34 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 81), align 8, !dbg !4828
  store i64 %34, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 82), align 8, !dbg !4829
  br label %40, !dbg !4830

35:                                               ; preds = %25
  %36 = load i64, ptr %3, align 8, !dbg !4831
  store i64 %36, ptr %5, align 8, !dbg !4833
  %37 = load i64, ptr %5, align 8, !dbg !4834
  %38 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 82), align 8, !dbg !4835
  %39 = add i64 %38, %37, !dbg !4835
  store i64 %39, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 82), align 8, !dbg !4835
  br label %40

40:                                               ; preds = %35, %32
  br label %41, !dbg !4836

41:                                               ; preds = %40, %21
  br label %42

42:                                               ; preds = %41, %16
  br label %53, !dbg !4837

43:                                               ; preds = %9
  %44 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 82), align 8, !dbg !4838
  %45 = load i64, ptr %3, align 8, !dbg !4841
  %46 = icmp uge i64 %44, %45, !dbg !4842
  br i1 %46, label %47, label %51, !dbg !4843

47:                                               ; preds = %43
  %48 = load i64, ptr %3, align 8, !dbg !4844
  %49 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 82), align 8, !dbg !4846
  %50 = sub i64 %49, %48, !dbg !4846
  store i64 %50, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 82), align 8, !dbg !4846
  br label %52, !dbg !4847

51:                                               ; preds = %43
  store i64 0, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 82), align 8, !dbg !4848
  br label %52

52:                                               ; preds = %51, %47
  br label %53

53:                                               ; preds = %52, %42
  %54 = call i32 @pthread_mutex_unlock(ptr noundef @mutex_bps) #10, !dbg !4850
  br label %55, !dbg !4851

55:                                               ; preds = %53, %2
  %56 = load i64, ptr %5, align 8, !dbg !4852
  ret i64 %56, !dbg !4853
}

declare void @set_rfc5780(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_alt_addr(ptr noundef %0, ptr noundef %1) #0 !dbg !4854 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4855, metadata !DIExpression()), !dbg !4856
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4857, metadata !DIExpression()), !dbg !4858
  %12 = load ptr, ptr %4, align 8, !dbg !4859
  %13 = icmp ne ptr %12, null, !dbg !4859
  br i1 %13, label %14, label %20, !dbg !4861

14:                                               ; preds = %2
  %15 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 33), align 4, !dbg !4862
  %16 = icmp ne i32 %15, 0, !dbg !4863
  br i1 %16, label %17, label %20, !dbg !4864

17:                                               ; preds = %14
  %18 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 8), align 8, !dbg !4865
  %19 = icmp ult i64 %18, 2, !dbg !4866
  br i1 %19, label %20, label %21, !dbg !4867

20:                                               ; preds = %17, %14, %2
  br label %134, !dbg !4867

21:                                               ; preds = %17
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4868, metadata !DIExpression()), !dbg !4870
  store i64 65535, ptr %6, align 8, !dbg !4870
  call void @llvm.dbg.declare(metadata ptr %7, metadata !4871, metadata !DIExpression()), !dbg !4872
  store i64 0, ptr %7, align 8, !dbg !4872
  call void @llvm.dbg.declare(metadata ptr %8, metadata !4873, metadata !DIExpression()), !dbg !4874
  store i32 -1, ptr %8, align 4, !dbg !4874
  call void @llvm.dbg.declare(metadata ptr %9, metadata !4875, metadata !DIExpression()), !dbg !4876
  %22 = load ptr, ptr %4, align 8, !dbg !4877
  %23 = call i32 @addr_get_port(ptr noundef %22), !dbg !4878
  store i32 %23, ptr %9, align 4, !dbg !4876
  %24 = load i32, ptr %9, align 4, !dbg !4879
  %25 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 28), align 8, !dbg !4881
  %26 = icmp eq i32 %24, %25, !dbg !4882
  br i1 %26, label %27, label %29, !dbg !4883

27:                                               ; preds = %21
  %28 = call i32 @get_alt_listener_port(), !dbg !4884
  store i32 %28, ptr %8, align 4, !dbg !4885
  br label %51, !dbg !4886

29:                                               ; preds = %21
  %30 = load i32, ptr %9, align 4, !dbg !4887
  %31 = call i32 @get_alt_listener_port(), !dbg !4889
  %32 = icmp eq i32 %30, %31, !dbg !4890
  br i1 %32, label %33, label %35, !dbg !4891

33:                                               ; preds = %29
  %34 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 28), align 8, !dbg !4892
  store i32 %34, ptr %8, align 4, !dbg !4893
  br label %50, !dbg !4894

35:                                               ; preds = %29
  %36 = load i32, ptr %9, align 4, !dbg !4895
  %37 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 29), align 4, !dbg !4897
  %38 = icmp eq i32 %36, %37, !dbg !4898
  br i1 %38, label %39, label %41, !dbg !4899

39:                                               ; preds = %35
  %40 = call i32 @get_alt_tls_listener_port(), !dbg !4900
  store i32 %40, ptr %8, align 4, !dbg !4901
  br label %49, !dbg !4902

41:                                               ; preds = %35
  %42 = load i32, ptr %9, align 4, !dbg !4903
  %43 = call i32 @get_alt_tls_listener_port(), !dbg !4905
  %44 = icmp eq i32 %42, %43, !dbg !4906
  br i1 %44, label %45, label %47, !dbg !4907

45:                                               ; preds = %41
  %46 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 29), align 4, !dbg !4908
  store i32 %46, ptr %8, align 4, !dbg !4909
  br label %48, !dbg !4910

47:                                               ; preds = %41
  store i32 -1, ptr %3, align 4, !dbg !4911
  br label %135, !dbg !4911

48:                                               ; preds = %45
  br label %49

49:                                               ; preds = %48, %39
  br label %50

50:                                               ; preds = %49, %33
  br label %51

51:                                               ; preds = %50, %27
  store i64 0, ptr %7, align 8, !dbg !4912
  br label %52, !dbg !4914

52:                                               ; preds = %82, %51
  %53 = load i64, ptr %7, align 8, !dbg !4915
  %54 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 8), align 8, !dbg !4917
  %55 = icmp ult i64 %53, %54, !dbg !4918
  br i1 %55, label %56, label %85, !dbg !4919

56:                                               ; preds = %52
  %57 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 7), align 8, !dbg !4920
  %58 = icmp ne ptr %57, null, !dbg !4923
  br i1 %58, label %59, label %81, !dbg !4924

59:                                               ; preds = %56
  %60 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 7), align 8, !dbg !4925
  %61 = load i64, ptr %7, align 8, !dbg !4926
  %62 = getelementptr inbounds ptr, ptr %60, i64 %61, !dbg !4927
  %63 = load ptr, ptr %62, align 8, !dbg !4927
  %64 = icmp ne ptr %63, null, !dbg !4927
  br i1 %64, label %65, label %81, !dbg !4928

65:                                               ; preds = %59
  %66 = load ptr, ptr %4, align 8, !dbg !4929
  %67 = getelementptr inbounds %struct.sockaddr, ptr %66, i32 0, i32 0, !dbg !4932
  %68 = load i16, ptr %67, align 4, !dbg !4932
  %69 = zext i16 %68 to i32, !dbg !4929
  %70 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 7), align 8, !dbg !4933
  %71 = load i64, ptr %7, align 8, !dbg !4934
  %72 = getelementptr inbounds ptr, ptr %70, i64 %71, !dbg !4935
  %73 = load ptr, ptr %72, align 8, !dbg !4935
  %74 = getelementptr inbounds %struct.sockaddr, ptr %73, i32 0, i32 0, !dbg !4936
  %75 = load i16, ptr %74, align 4, !dbg !4936
  %76 = zext i16 %75 to i32, !dbg !4935
  %77 = icmp eq i32 %69, %76, !dbg !4937
  br i1 %77, label %78, label %80, !dbg !4938

78:                                               ; preds = %65
  %79 = load i64, ptr %7, align 8, !dbg !4939
  store i64 %79, ptr %6, align 8, !dbg !4941
  br label %85, !dbg !4942

80:                                               ; preds = %65
  br label %81, !dbg !4943

81:                                               ; preds = %80, %59, %56
  br label %82, !dbg !4944

82:                                               ; preds = %81
  %83 = load i64, ptr %7, align 8, !dbg !4945
  %84 = add i64 %83, 1, !dbg !4945
  store i64 %84, ptr %7, align 8, !dbg !4945
  br label %52, !dbg !4946, !llvm.loop !4947

85:                                               ; preds = %78, %52
  %86 = load i64, ptr %6, align 8, !dbg !4949
  %87 = icmp ne i64 %86, 65535, !dbg !4951
  br i1 %87, label %88, label %133, !dbg !4952

88:                                               ; preds = %85
  store i64 0, ptr %7, align 8, !dbg !4953
  br label %89, !dbg !4956

89:                                               ; preds = %129, %88
  %90 = load i64, ptr %7, align 8, !dbg !4957
  %91 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 8), align 8, !dbg !4959
  %92 = icmp ult i64 %90, %91, !dbg !4960
  br i1 %92, label %93, label %132, !dbg !4961

93:                                               ; preds = %89
  call void @llvm.dbg.declare(metadata ptr %10, metadata !4962, metadata !DIExpression()), !dbg !4964
  %94 = load i64, ptr %6, align 8, !dbg !4965
  %95 = load i64, ptr %7, align 8, !dbg !4966
  %96 = add i64 %94, %95, !dbg !4967
  %97 = add i64 %96, 1, !dbg !4968
  %98 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 8), align 8, !dbg !4969
  %99 = urem i64 %97, %98, !dbg !4970
  store i64 %99, ptr %10, align 8, !dbg !4964
  %100 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 7), align 8, !dbg !4971
  %101 = icmp ne ptr %100, null, !dbg !4973
  br i1 %101, label %102, label %128, !dbg !4974

102:                                              ; preds = %93
  %103 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 7), align 8, !dbg !4975
  %104 = load i64, ptr %10, align 8, !dbg !4976
  %105 = getelementptr inbounds ptr, ptr %103, i64 %104, !dbg !4977
  %106 = load ptr, ptr %105, align 8, !dbg !4977
  %107 = icmp ne ptr %106, null, !dbg !4977
  br i1 %107, label %108, label %128, !dbg !4978

108:                                              ; preds = %102
  call void @llvm.dbg.declare(metadata ptr %11, metadata !4979, metadata !DIExpression()), !dbg !4981
  %109 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 7), align 8, !dbg !4982
  %110 = load i64, ptr %10, align 8, !dbg !4983
  %111 = getelementptr inbounds ptr, ptr %109, i64 %110, !dbg !4984
  %112 = load ptr, ptr %111, align 8, !dbg !4984
  store ptr %112, ptr %11, align 8, !dbg !4981
  %113 = load ptr, ptr %11, align 8, !dbg !4985
  %114 = getelementptr inbounds %struct.sockaddr, ptr %113, i32 0, i32 0, !dbg !4987
  %115 = load i16, ptr %114, align 4, !dbg !4987
  %116 = zext i16 %115 to i32, !dbg !4985
  %117 = load ptr, ptr %4, align 8, !dbg !4988
  %118 = getelementptr inbounds %struct.sockaddr, ptr %117, i32 0, i32 0, !dbg !4989
  %119 = load i16, ptr %118, align 4, !dbg !4989
  %120 = zext i16 %119 to i32, !dbg !4988
  %121 = icmp eq i32 %116, %120, !dbg !4990
  br i1 %121, label %122, label %127, !dbg !4991

122:                                              ; preds = %108
  %123 = load ptr, ptr %5, align 8, !dbg !4992
  %124 = load ptr, ptr %11, align 8, !dbg !4994
  call void @addr_cpy(ptr noundef %123, ptr noundef %124), !dbg !4995
  %125 = load ptr, ptr %5, align 8, !dbg !4996
  %126 = load i32, ptr %8, align 4, !dbg !4997
  call void @addr_set_port(ptr noundef %125, i32 noundef %126), !dbg !4998
  store i32 0, ptr %3, align 4, !dbg !4999
  br label %135, !dbg !4999

127:                                              ; preds = %108
  br label %128, !dbg !5000

128:                                              ; preds = %127, %102, %93
  br label %129, !dbg !5001

129:                                              ; preds = %128
  %130 = load i64, ptr %7, align 8, !dbg !5002
  %131 = add i64 %130, 1, !dbg !5002
  store i64 %131, ptr %7, align 8, !dbg !5002
  br label %89, !dbg !5003, !llvm.loop !5004

132:                                              ; preds = %89
  br label %133, !dbg !5006

133:                                              ; preds = %132, %85
  br label %134

134:                                              ; preds = %133, %20
  store i32 -1, ptr %3, align 4, !dbg !5007
  br label %135, !dbg !5007

135:                                              ; preds = %134, %122, %47
  %136 = load i32, ptr %3, align 4, !dbg !5008
  ret i32 %136, !dbg !5008
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_message_from_listener_to_client(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !5009 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %struct.message_to_listener, align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !5010, metadata !DIExpression()), !dbg !5011
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !5012, metadata !DIExpression()), !dbg !5013
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !5014, metadata !DIExpression()), !dbg !5015
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !5016, metadata !DIExpression()), !dbg !5017
  call void @llvm.dbg.declare(metadata ptr %9, metadata !5018, metadata !DIExpression()), !dbg !5019
  %11 = getelementptr inbounds %struct.message_to_listener, ptr %9, i32 0, i32 0, !dbg !5020
  store i32 1, ptr %11, align 8, !dbg !5021
  %12 = getelementptr inbounds %struct.message_to_listener, ptr %9, i32 0, i32 1, !dbg !5022
  %13 = getelementptr inbounds %struct.message_to_listener_to_client, ptr %12, i32 0, i32 0, !dbg !5023
  %14 = load ptr, ptr %7, align 8, !dbg !5024
  call void @addr_cpy(ptr noundef %13, ptr noundef %14), !dbg !5025
  %15 = getelementptr inbounds %struct.message_to_listener, ptr %9, i32 0, i32 1, !dbg !5026
  %16 = getelementptr inbounds %struct.message_to_listener_to_client, ptr %15, i32 0, i32 1, !dbg !5027
  %17 = load ptr, ptr %8, align 8, !dbg !5028
  call void @addr_cpy(ptr noundef %16, ptr noundef %17), !dbg !5029
  %18 = load ptr, ptr %5, align 8, !dbg !5030
  %19 = call ptr @ioa_network_buffer_allocate(ptr noundef %18), !dbg !5031
  %20 = getelementptr inbounds %struct.message_to_listener, ptr %9, i32 0, i32 1, !dbg !5032
  %21 = getelementptr inbounds %struct.message_to_listener_to_client, ptr %20, i32 0, i32 2, !dbg !5033
  store ptr %19, ptr %21, align 8, !dbg !5034
  %22 = getelementptr inbounds %struct.message_to_listener, ptr %9, i32 0, i32 1, !dbg !5035
  %23 = getelementptr inbounds %struct.message_to_listener_to_client, ptr %22, i32 0, i32 2, !dbg !5036
  %24 = load ptr, ptr %23, align 8, !dbg !5036
  call void @ioa_network_buffer_header_init(ptr noundef %24), !dbg !5037
  %25 = load ptr, ptr %6, align 8, !dbg !5038
  %26 = call ptr @ioa_network_buffer_data(ptr noundef %25), !dbg !5039
  %27 = getelementptr inbounds %struct.message_to_listener, ptr %9, i32 0, i32 1, !dbg !5040
  %28 = getelementptr inbounds %struct.message_to_listener_to_client, ptr %27, i32 0, i32 2, !dbg !5041
  %29 = load ptr, ptr %28, align 8, !dbg !5041
  %30 = call ptr @ioa_network_buffer_data(ptr noundef %29), !dbg !5042
  %31 = load ptr, ptr %6, align 8, !dbg !5043
  %32 = call i64 @ioa_network_buffer_get_size(ptr noundef %31), !dbg !5044
  call void @bcopy(ptr noundef %26, ptr noundef %30, i64 noundef %32) #10, !dbg !5045
  %33 = getelementptr inbounds %struct.message_to_listener, ptr %9, i32 0, i32 1, !dbg !5046
  %34 = getelementptr inbounds %struct.message_to_listener_to_client, ptr %33, i32 0, i32 2, !dbg !5047
  %35 = load ptr, ptr %34, align 8, !dbg !5047
  %36 = load ptr, ptr %6, align 8, !dbg !5048
  %37 = call i64 @ioa_network_buffer_get_size(ptr noundef %36), !dbg !5049
  call void @ioa_network_buffer_set_size(ptr noundef %35, i64 noundef %37), !dbg !5050
  call void @llvm.dbg.declare(metadata ptr %10, metadata !5051, metadata !DIExpression()), !dbg !5052
  %38 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 5), align 8, !dbg !5053
  %39 = call ptr @bufferevent_get_output(ptr noundef %38), !dbg !5054
  store ptr %39, ptr %10, align 8, !dbg !5052
  %40 = load ptr, ptr %10, align 8, !dbg !5055
  %41 = call i32 @evbuffer_add(ptr noundef %40, ptr noundef %9, i64 noundef 72), !dbg !5056
  ret i32 0, !dbg !5057
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_relay_message(ptr noundef %0, ptr noundef %1) #0 !dbg !5058 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !5063, metadata !DIExpression()), !dbg !5064
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !5065, metadata !DIExpression()), !dbg !5066
  %7 = load ptr, ptr %3, align 8, !dbg !5067
  %8 = icmp ne ptr %7, null, !dbg !5067
  br i1 %8, label %9, label %256, !dbg !5069

9:                                                ; preds = %2
  %10 = load ptr, ptr %4, align 8, !dbg !5070
  %11 = icmp ne ptr %10, null, !dbg !5070
  br i1 %11, label %12, label %256, !dbg !5071

12:                                               ; preds = %9
  %13 = load ptr, ptr %4, align 8, !dbg !5072
  %14 = getelementptr inbounds %struct.message_to_relay, ptr %13, i32 0, i32 0, !dbg !5074
  %15 = load i32, ptr %14, align 8, !dbg !5074
  switch i32 %15, label %254 [
    i32 4, label %16
    i32 1, label %23
    i32 2, label %145
    i32 3, label %179
  ], !dbg !5075

16:                                               ; preds = %12
  %17 = load ptr, ptr %3, align 8, !dbg !5076
  %18 = getelementptr inbounds %struct.relay_server, ptr %17, i32 0, i32 8, !dbg !5079
  %19 = load ptr, ptr %4, align 8, !dbg !5080
  %20 = getelementptr inbounds %struct.message_to_relay, ptr %19, i32 0, i32 2, !dbg !5081
  %21 = getelementptr inbounds %struct.cancelled_session_message, ptr %20, i32 0, i32 0, !dbg !5082
  %22 = load i64, ptr %21, align 8, !dbg !5082
  call void @turn_cancel_session(ptr noundef %18, i64 noundef %22), !dbg !5083
  br label %255, !dbg !5084

23:                                               ; preds = %12
  %24 = load ptr, ptr %4, align 8, !dbg !5085
  %25 = getelementptr inbounds %struct.message_to_relay, ptr %24, i32 0, i32 2, !dbg !5088
  %26 = getelementptr inbounds %struct.socket_message, ptr %25, i32 0, i32 0, !dbg !5089
  %27 = load ptr, ptr %26, align 8, !dbg !5089
  %28 = getelementptr inbounds %struct._ioa_socket, ptr %27, i32 0, i32 5, !dbg !5090
  %29 = load ptr, ptr %28, align 8, !dbg !5090
  %30 = icmp ne ptr %29, null, !dbg !5085
  br i1 %30, label %31, label %70, !dbg !5091

31:                                               ; preds = %23
  %32 = load ptr, ptr %4, align 8, !dbg !5092
  %33 = getelementptr inbounds %struct.message_to_relay, ptr %32, i32 0, i32 2, !dbg !5095
  %34 = getelementptr inbounds %struct.socket_message, ptr %33, i32 0, i32 1, !dbg !5096
  %35 = getelementptr inbounds %struct._ioa_net_data, ptr %34, i32 0, i32 1, !dbg !5097
  %36 = load ptr, ptr %35, align 8, !dbg !5097
  %37 = icmp ne ptr %36, null, !dbg !5092
  br i1 %37, label %54, label %38, !dbg !5098

38:                                               ; preds = %31
  %39 = load ptr, ptr %4, align 8, !dbg !5099
  %40 = getelementptr inbounds %struct.message_to_relay, ptr %39, i32 0, i32 2, !dbg !5101
  %41 = getelementptr inbounds %struct.socket_message, ptr %40, i32 0, i32 0, !dbg !5102
  %42 = load ptr, ptr %41, align 8, !dbg !5102
  %43 = getelementptr inbounds %struct._ioa_socket, ptr %42, i32 0, i32 5, !dbg !5103
  %44 = load ptr, ptr %43, align 8, !dbg !5103
  %45 = load ptr, ptr %4, align 8, !dbg !5104
  %46 = getelementptr inbounds %struct.message_to_relay, ptr %45, i32 0, i32 2, !dbg !5105
  %47 = getelementptr inbounds %struct.socket_message, ptr %46, i32 0, i32 1, !dbg !5106
  %48 = getelementptr inbounds %struct._ioa_net_data, ptr %47, i32 0, i32 1, !dbg !5107
  store ptr %44, ptr %48, align 8, !dbg !5108
  %49 = load ptr, ptr %4, align 8, !dbg !5109
  %50 = getelementptr inbounds %struct.message_to_relay, ptr %49, i32 0, i32 2, !dbg !5110
  %51 = getelementptr inbounds %struct.socket_message, ptr %50, i32 0, i32 0, !dbg !5111
  %52 = load ptr, ptr %51, align 8, !dbg !5111
  %53 = getelementptr inbounds %struct._ioa_socket, ptr %52, i32 0, i32 5, !dbg !5112
  store ptr null, ptr %53, align 8, !dbg !5113
  br label %69, !dbg !5114

54:                                               ; preds = %31
  %55 = load ptr, ptr %3, align 8, !dbg !5115
  %56 = getelementptr inbounds %struct.relay_server, ptr %55, i32 0, i32 7, !dbg !5117
  %57 = load ptr, ptr %56, align 8, !dbg !5117
  %58 = load ptr, ptr %4, align 8, !dbg !5118
  %59 = getelementptr inbounds %struct.message_to_relay, ptr %58, i32 0, i32 2, !dbg !5119
  %60 = getelementptr inbounds %struct.socket_message, ptr %59, i32 0, i32 0, !dbg !5120
  %61 = load ptr, ptr %60, align 8, !dbg !5120
  %62 = getelementptr inbounds %struct._ioa_socket, ptr %61, i32 0, i32 5, !dbg !5121
  %63 = load ptr, ptr %62, align 8, !dbg !5121
  call void @ioa_network_buffer_delete(ptr noundef %57, ptr noundef %63), !dbg !5122
  %64 = load ptr, ptr %4, align 8, !dbg !5123
  %65 = getelementptr inbounds %struct.message_to_relay, ptr %64, i32 0, i32 2, !dbg !5124
  %66 = getelementptr inbounds %struct.socket_message, ptr %65, i32 0, i32 0, !dbg !5125
  %67 = load ptr, ptr %66, align 8, !dbg !5125
  %68 = getelementptr inbounds %struct._ioa_socket, ptr %67, i32 0, i32 5, !dbg !5126
  store ptr null, ptr %68, align 8, !dbg !5127
  br label %69

69:                                               ; preds = %54, %38
  br label %70, !dbg !5128

70:                                               ; preds = %69, %23
  call void @llvm.dbg.declare(metadata ptr %5, metadata !5129, metadata !DIExpression()), !dbg !5130
  %71 = load ptr, ptr %4, align 8, !dbg !5131
  %72 = getelementptr inbounds %struct.message_to_relay, ptr %71, i32 0, i32 2, !dbg !5132
  %73 = getelementptr inbounds %struct.socket_message, ptr %72, i32 0, i32 0, !dbg !5133
  %74 = load ptr, ptr %73, align 8, !dbg !5133
  store ptr %74, ptr %5, align 8, !dbg !5130
  %75 = load ptr, ptr %5, align 8, !dbg !5134
  %76 = icmp ne ptr %75, null, !dbg !5134
  br i1 %76, label %78, label %77, !dbg !5136

77:                                               ; preds = %70
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.41, ptr noundef @__FUNCTION__.handle_relay_message), !dbg !5137
  br label %132, !dbg !5139

78:                                               ; preds = %70
  %79 = load ptr, ptr %5, align 8, !dbg !5140
  %80 = getelementptr inbounds %struct._ioa_socket, ptr %79, i32 0, i32 18, !dbg !5142
  %81 = load ptr, ptr %80, align 8, !dbg !5142
  %82 = icmp ne ptr %81, null, !dbg !5140
  br i1 %82, label %88, label %83, !dbg !5143

83:                                               ; preds = %78
  %84 = load ptr, ptr %5, align 8, !dbg !5144
  %85 = getelementptr inbounds %struct._ioa_socket, ptr %84, i32 0, i32 4, !dbg !5145
  %86 = load ptr, ptr %85, align 8, !dbg !5145
  %87 = icmp ne ptr %86, null, !dbg !5144
  br i1 %87, label %88, label %107, !dbg !5146

88:                                               ; preds = %83, %78
  %89 = load ptr, ptr %5, align 8, !dbg !5147
  %90 = getelementptr inbounds %struct._ioa_socket, ptr %89, i32 0, i32 18, !dbg !5149
  %91 = load ptr, ptr %90, align 8, !dbg !5149
  %92 = ptrtoint ptr %91 to i64, !dbg !5150
  %93 = load ptr, ptr %5, align 8, !dbg !5151
  %94 = getelementptr inbounds %struct._ioa_socket, ptr %93, i32 0, i32 4, !dbg !5152
  %95 = load ptr, ptr %94, align 8, !dbg !5152
  %96 = ptrtoint ptr %95 to i64, !dbg !5153
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.42, ptr noundef @__FUNCTION__.handle_relay_message, i64 noundef %92, i64 noundef %96), !dbg !5154
  br label %97, !dbg !5155

97:                                               ; preds = %88
  %98 = load ptr, ptr %5, align 8, !dbg !5156
  %99 = icmp ne ptr %98, null, !dbg !5156
  br i1 %99, label %100, label %102, !dbg !5159

100:                                              ; preds = %97
  %101 = load ptr, ptr %5, align 8, !dbg !5160
  call void @close_ioa_socket(ptr noundef %101), !dbg !5160
  store ptr null, ptr %5, align 8, !dbg !5160
  br label %102, !dbg !5160

102:                                              ; preds = %100, %97
  br label %103, !dbg !5159

103:                                              ; preds = %102
  %104 = load ptr, ptr %4, align 8, !dbg !5162
  %105 = getelementptr inbounds %struct.message_to_relay, ptr %104, i32 0, i32 2, !dbg !5163
  %106 = getelementptr inbounds %struct.socket_message, ptr %105, i32 0, i32 0, !dbg !5164
  store ptr null, ptr %106, align 8, !dbg !5165
  br label %131, !dbg !5166

107:                                              ; preds = %83
  %108 = load ptr, ptr %3, align 8, !dbg !5167
  %109 = getelementptr inbounds %struct.relay_server, ptr %108, i32 0, i32 7, !dbg !5169
  %110 = load ptr, ptr %109, align 8, !dbg !5169
  %111 = load ptr, ptr %5, align 8, !dbg !5170
  %112 = getelementptr inbounds %struct._ioa_socket, ptr %111, i32 0, i32 17, !dbg !5171
  store ptr %110, ptr %112, align 8, !dbg !5172
  %113 = load ptr, ptr %3, align 8, !dbg !5173
  %114 = getelementptr inbounds %struct.relay_server, ptr %113, i32 0, i32 8, !dbg !5175
  %115 = load ptr, ptr %4, align 8, !dbg !5176
  %116 = getelementptr inbounds %struct.message_to_relay, ptr %115, i32 0, i32 2, !dbg !5177
  %117 = call i32 @open_client_connection_session(ptr noundef %114, ptr noundef %116), !dbg !5178
  %118 = icmp slt i32 %117, 0, !dbg !5179
  br i1 %118, label %119, label %130, !dbg !5180

119:                                              ; preds = %107
  br label %120, !dbg !5181

120:                                              ; preds = %119
  %121 = load ptr, ptr %5, align 8, !dbg !5183
  %122 = icmp ne ptr %121, null, !dbg !5183
  br i1 %122, label %123, label %125, !dbg !5186

123:                                              ; preds = %120
  %124 = load ptr, ptr %5, align 8, !dbg !5187
  call void @close_ioa_socket(ptr noundef %124), !dbg !5187
  store ptr null, ptr %5, align 8, !dbg !5187
  br label %125, !dbg !5187

125:                                              ; preds = %123, %120
  br label %126, !dbg !5186

126:                                              ; preds = %125
  %127 = load ptr, ptr %4, align 8, !dbg !5189
  %128 = getelementptr inbounds %struct.message_to_relay, ptr %127, i32 0, i32 2, !dbg !5190
  %129 = getelementptr inbounds %struct.socket_message, ptr %128, i32 0, i32 0, !dbg !5191
  store ptr null, ptr %129, align 8, !dbg !5192
  br label %130, !dbg !5193

130:                                              ; preds = %126, %107
  br label %131

131:                                              ; preds = %130, %103
  br label %132

132:                                              ; preds = %131, %77
  %133 = load ptr, ptr %3, align 8, !dbg !5194
  %134 = getelementptr inbounds %struct.relay_server, ptr %133, i32 0, i32 7, !dbg !5195
  %135 = load ptr, ptr %134, align 8, !dbg !5195
  %136 = load ptr, ptr %4, align 8, !dbg !5196
  %137 = getelementptr inbounds %struct.message_to_relay, ptr %136, i32 0, i32 2, !dbg !5197
  %138 = getelementptr inbounds %struct.socket_message, ptr %137, i32 0, i32 1, !dbg !5198
  %139 = getelementptr inbounds %struct._ioa_net_data, ptr %138, i32 0, i32 1, !dbg !5199
  %140 = load ptr, ptr %139, align 8, !dbg !5199
  call void @ioa_network_buffer_delete(ptr noundef %135, ptr noundef %140), !dbg !5200
  %141 = load ptr, ptr %4, align 8, !dbg !5201
  %142 = getelementptr inbounds %struct.message_to_relay, ptr %141, i32 0, i32 2, !dbg !5202
  %143 = getelementptr inbounds %struct.socket_message, ptr %142, i32 0, i32 1, !dbg !5203
  %144 = getelementptr inbounds %struct._ioa_net_data, ptr %143, i32 0, i32 1, !dbg !5204
  store ptr null, ptr %144, align 8, !dbg !5205
  br label %255, !dbg !5206

145:                                              ; preds = %12
  %146 = load ptr, ptr %3, align 8, !dbg !5207
  %147 = getelementptr inbounds %struct.relay_server, ptr %146, i32 0, i32 8, !dbg !5208
  %148 = load ptr, ptr %4, align 8, !dbg !5209
  %149 = getelementptr inbounds %struct.message_to_relay, ptr %148, i32 0, i32 2, !dbg !5210
  %150 = getelementptr inbounds %struct.cb_socket_message, ptr %149, i32 0, i32 1, !dbg !5211
  %151 = load i32, ptr %150, align 4, !dbg !5211
  %152 = load ptr, ptr %4, align 8, !dbg !5212
  %153 = getelementptr inbounds %struct.message_to_relay, ptr %152, i32 0, i32 2, !dbg !5213
  %154 = getelementptr inbounds %struct.cb_socket_message, ptr %153, i32 0, i32 2, !dbg !5214
  %155 = load ptr, ptr %4, align 8, !dbg !5215
  %156 = getelementptr inbounds %struct.message_to_relay, ptr %155, i32 0, i32 2, !dbg !5216
  %157 = getelementptr inbounds %struct.cb_socket_message, ptr %156, i32 0, i32 3, !dbg !5217
  %158 = load ptr, ptr %157, align 8, !dbg !5217
  %159 = load ptr, ptr %4, align 8, !dbg !5218
  %160 = getelementptr inbounds %struct.message_to_relay, ptr %159, i32 0, i32 2, !dbg !5219
  %161 = getelementptr inbounds %struct.cb_socket_message, ptr %160, i32 0, i32 4, !dbg !5220
  %162 = load i32, ptr %161, align 8, !dbg !5220
  %163 = load ptr, ptr %4, align 8, !dbg !5221
  %164 = getelementptr inbounds %struct.message_to_relay, ptr %163, i32 0, i32 2, !dbg !5222
  %165 = getelementptr inbounds %struct.cb_socket_message, ptr %164, i32 0, i32 5, !dbg !5223
  %166 = call i32 @turnserver_accept_tcp_client_data_connection(ptr noundef %147, i32 noundef %151, ptr noundef %154, ptr noundef %158, i32 noundef %162, ptr noundef %165, i32 noundef 0), !dbg !5224
  %167 = load ptr, ptr %3, align 8, !dbg !5225
  %168 = getelementptr inbounds %struct.relay_server, ptr %167, i32 0, i32 7, !dbg !5226
  %169 = load ptr, ptr %168, align 8, !dbg !5226
  %170 = load ptr, ptr %4, align 8, !dbg !5227
  %171 = getelementptr inbounds %struct.message_to_relay, ptr %170, i32 0, i32 2, !dbg !5228
  %172 = getelementptr inbounds %struct.cb_socket_message, ptr %171, i32 0, i32 5, !dbg !5229
  %173 = getelementptr inbounds %struct._ioa_net_data, ptr %172, i32 0, i32 1, !dbg !5230
  %174 = load ptr, ptr %173, align 8, !dbg !5230
  call void @ioa_network_buffer_delete(ptr noundef %169, ptr noundef %174), !dbg !5231
  %175 = load ptr, ptr %4, align 8, !dbg !5232
  %176 = getelementptr inbounds %struct.message_to_relay, ptr %175, i32 0, i32 2, !dbg !5233
  %177 = getelementptr inbounds %struct.cb_socket_message, ptr %176, i32 0, i32 5, !dbg !5234
  %178 = getelementptr inbounds %struct._ioa_net_data, ptr %177, i32 0, i32 1, !dbg !5235
  store ptr null, ptr %178, align 8, !dbg !5236
  br label %255, !dbg !5237

179:                                              ; preds = %12
  call void @llvm.dbg.declare(metadata ptr %6, metadata !5238, metadata !DIExpression()), !dbg !5240
  %180 = load ptr, ptr %4, align 8, !dbg !5241
  %181 = getelementptr inbounds %struct.message_to_relay, ptr %180, i32 0, i32 2, !dbg !5242
  %182 = getelementptr inbounds %struct.socket_message, ptr %181, i32 0, i32 0, !dbg !5243
  %183 = load ptr, ptr %182, align 8, !dbg !5243
  store ptr %183, ptr %6, align 8, !dbg !5240
  %184 = load ptr, ptr %6, align 8, !dbg !5244
  %185 = icmp ne ptr %184, null, !dbg !5244
  br i1 %185, label %187, label %186, !dbg !5246

186:                                              ; preds = %179
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.43, ptr noundef @__FUNCTION__.handle_relay_message), !dbg !5247
  br label %241, !dbg !5249

187:                                              ; preds = %179
  %188 = load ptr, ptr %6, align 8, !dbg !5250
  %189 = getelementptr inbounds %struct._ioa_socket, ptr %188, i32 0, i32 18, !dbg !5252
  %190 = load ptr, ptr %189, align 8, !dbg !5252
  %191 = icmp ne ptr %190, null, !dbg !5250
  br i1 %191, label %197, label %192, !dbg !5253

192:                                              ; preds = %187
  %193 = load ptr, ptr %6, align 8, !dbg !5254
  %194 = getelementptr inbounds %struct._ioa_socket, ptr %193, i32 0, i32 4, !dbg !5255
  %195 = load ptr, ptr %194, align 8, !dbg !5255
  %196 = icmp ne ptr %195, null, !dbg !5254
  br i1 %196, label %197, label %216, !dbg !5256

197:                                              ; preds = %192, %187
  %198 = load ptr, ptr %6, align 8, !dbg !5257
  %199 = getelementptr inbounds %struct._ioa_socket, ptr %198, i32 0, i32 18, !dbg !5259
  %200 = load ptr, ptr %199, align 8, !dbg !5259
  %201 = ptrtoint ptr %200 to i64, !dbg !5260
  %202 = load ptr, ptr %6, align 8, !dbg !5261
  %203 = getelementptr inbounds %struct._ioa_socket, ptr %202, i32 0, i32 4, !dbg !5262
  %204 = load ptr, ptr %203, align 8, !dbg !5262
  %205 = ptrtoint ptr %204 to i64, !dbg !5263
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.44, ptr noundef @__FUNCTION__.handle_relay_message, i64 noundef %201, i64 noundef %205), !dbg !5264
  br label %206, !dbg !5265

206:                                              ; preds = %197
  %207 = load ptr, ptr %6, align 8, !dbg !5266
  %208 = icmp ne ptr %207, null, !dbg !5266
  br i1 %208, label %209, label %211, !dbg !5269

209:                                              ; preds = %206
  %210 = load ptr, ptr %6, align 8, !dbg !5270
  call void @close_ioa_socket(ptr noundef %210), !dbg !5270
  store ptr null, ptr %6, align 8, !dbg !5270
  br label %211, !dbg !5270

211:                                              ; preds = %209, %206
  br label %212, !dbg !5269

212:                                              ; preds = %211
  %213 = load ptr, ptr %4, align 8, !dbg !5272
  %214 = getelementptr inbounds %struct.message_to_relay, ptr %213, i32 0, i32 2, !dbg !5273
  %215 = getelementptr inbounds %struct.socket_message, ptr %214, i32 0, i32 0, !dbg !5274
  store ptr null, ptr %215, align 8, !dbg !5275
  br label %240, !dbg !5276

216:                                              ; preds = %192
  %217 = load ptr, ptr %3, align 8, !dbg !5277
  %218 = getelementptr inbounds %struct.relay_server, ptr %217, i32 0, i32 7, !dbg !5279
  %219 = load ptr, ptr %218, align 8, !dbg !5279
  %220 = load ptr, ptr %6, align 8, !dbg !5280
  %221 = getelementptr inbounds %struct._ioa_socket, ptr %220, i32 0, i32 17, !dbg !5281
  store ptr %219, ptr %221, align 8, !dbg !5282
  %222 = load ptr, ptr %3, align 8, !dbg !5283
  %223 = getelementptr inbounds %struct.relay_server, ptr %222, i32 0, i32 8, !dbg !5285
  %224 = load ptr, ptr %4, align 8, !dbg !5286
  %225 = getelementptr inbounds %struct.message_to_relay, ptr %224, i32 0, i32 2, !dbg !5287
  %226 = call i32 @open_client_connection_session(ptr noundef %223, ptr noundef %225), !dbg !5288
  %227 = icmp slt i32 %226, 0, !dbg !5289
  br i1 %227, label %228, label %239, !dbg !5290

228:                                              ; preds = %216
  br label %229, !dbg !5291

229:                                              ; preds = %228
  %230 = load ptr, ptr %6, align 8, !dbg !5293
  %231 = icmp ne ptr %230, null, !dbg !5293
  br i1 %231, label %232, label %234, !dbg !5296

232:                                              ; preds = %229
  %233 = load ptr, ptr %6, align 8, !dbg !5297
  call void @close_ioa_socket(ptr noundef %233), !dbg !5297
  store ptr null, ptr %6, align 8, !dbg !5297
  br label %234, !dbg !5297

234:                                              ; preds = %232, %229
  br label %235, !dbg !5296

235:                                              ; preds = %234
  %236 = load ptr, ptr %4, align 8, !dbg !5299
  %237 = getelementptr inbounds %struct.message_to_relay, ptr %236, i32 0, i32 2, !dbg !5300
  %238 = getelementptr inbounds %struct.socket_message, ptr %237, i32 0, i32 0, !dbg !5301
  store ptr null, ptr %238, align 8, !dbg !5302
  br label %239, !dbg !5303

239:                                              ; preds = %235, %216
  br label %240

240:                                              ; preds = %239, %212
  br label %241

241:                                              ; preds = %240, %186
  %242 = load ptr, ptr %3, align 8, !dbg !5304
  %243 = getelementptr inbounds %struct.relay_server, ptr %242, i32 0, i32 7, !dbg !5305
  %244 = load ptr, ptr %243, align 8, !dbg !5305
  %245 = load ptr, ptr %4, align 8, !dbg !5306
  %246 = getelementptr inbounds %struct.message_to_relay, ptr %245, i32 0, i32 2, !dbg !5307
  %247 = getelementptr inbounds %struct.socket_message, ptr %246, i32 0, i32 1, !dbg !5308
  %248 = getelementptr inbounds %struct._ioa_net_data, ptr %247, i32 0, i32 1, !dbg !5309
  %249 = load ptr, ptr %248, align 8, !dbg !5309
  call void @ioa_network_buffer_delete(ptr noundef %244, ptr noundef %249), !dbg !5310
  %250 = load ptr, ptr %4, align 8, !dbg !5311
  %251 = getelementptr inbounds %struct.message_to_relay, ptr %250, i32 0, i32 2, !dbg !5312
  %252 = getelementptr inbounds %struct.socket_message, ptr %251, i32 0, i32 1, !dbg !5313
  %253 = getelementptr inbounds %struct._ioa_net_data, ptr %252, i32 0, i32 1, !dbg !5314
  store ptr null, ptr %253, align 8, !dbg !5315
  br label %255, !dbg !5316

254:                                              ; preds = %12
  call void @perror(ptr noundef @.str.28), !dbg !5317
  br label %255, !dbg !5319

255:                                              ; preds = %254, %241, %145, %132, %16
  br label %256, !dbg !5320

256:                                              ; preds = %255, %9, %2
  ret i32 0, !dbg !5321
}

declare void @turn_cancel_session(ptr noundef, i64 noundef) #4

declare void @close_ioa_socket(ptr noundef) #4

declare i32 @open_client_connection_session(ptr noundef, ptr noundef) #4

declare i32 @turnserver_accept_tcp_client_data_connection(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_relay_auth_message(ptr noundef %0, ptr noundef %1) #0 !dbg !5322 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !5325, metadata !DIExpression()), !dbg !5326
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !5327, metadata !DIExpression()), !dbg !5328
  %5 = load ptr, ptr %4, align 8, !dbg !5329
  %6 = getelementptr inbounds %struct.auth_message, ptr %5, i32 0, i32 9, !dbg !5330
  %7 = load ptr, ptr %6, align 8, !dbg !5330
  %8 = load ptr, ptr %4, align 8, !dbg !5331
  %9 = getelementptr inbounds %struct.auth_message, ptr %8, i32 0, i32 12, !dbg !5332
  %10 = load i32, ptr %9, align 8, !dbg !5332
  %11 = load ptr, ptr %4, align 8, !dbg !5333
  %12 = getelementptr inbounds %struct.auth_message, ptr %11, i32 0, i32 3, !dbg !5334
  %13 = load i32, ptr %12, align 4, !dbg !5334
  %14 = load ptr, ptr %4, align 8, !dbg !5335
  %15 = getelementptr inbounds %struct.auth_message, ptr %14, i32 0, i32 4, !dbg !5336
  %16 = load i32, ptr %15, align 8, !dbg !5336
  %17 = load ptr, ptr %4, align 8, !dbg !5337
  %18 = getelementptr inbounds %struct.auth_message, ptr %17, i32 0, i32 7, !dbg !5338
  %19 = getelementptr inbounds [64 x i8], ptr %18, i64 0, i64 0, !dbg !5337
  %20 = load ptr, ptr %4, align 8, !dbg !5339
  %21 = getelementptr inbounds %struct.auth_message, ptr %20, i32 0, i32 8, !dbg !5340
  %22 = getelementptr inbounds [257 x i8], ptr %21, i64 0, i64 0, !dbg !5339
  %23 = load ptr, ptr %3, align 8, !dbg !5341
  %24 = getelementptr inbounds %struct.relay_server, ptr %23, i32 0, i32 8, !dbg !5342
  %25 = load ptr, ptr %4, align 8, !dbg !5343
  %26 = getelementptr inbounds %struct.auth_message, ptr %25, i32 0, i32 11, !dbg !5344
  %27 = load i64, ptr %26, align 8, !dbg !5344
  %28 = load ptr, ptr %4, align 8, !dbg !5345
  %29 = getelementptr inbounds %struct.auth_message, ptr %28, i32 0, i32 10, !dbg !5346
  %30 = load ptr, ptr %4, align 8, !dbg !5347
  %31 = getelementptr inbounds %struct.auth_message, ptr %30, i32 0, i32 6, !dbg !5348
  %32 = getelementptr inbounds [128 x i8], ptr %31, i64 0, i64 0, !dbg !5347
  call void %7(i32 noundef %10, i32 noundef %13, i32 noundef %16, ptr noundef %19, ptr noundef %22, ptr noundef %24, i64 noundef %27, ptr noundef %29, ptr noundef %32), !dbg !5329
  %33 = load ptr, ptr %4, align 8, !dbg !5349
  %34 = getelementptr inbounds %struct.auth_message, ptr %33, i32 0, i32 10, !dbg !5351
  %35 = getelementptr inbounds %struct._ioa_net_data, ptr %34, i32 0, i32 1, !dbg !5352
  %36 = load ptr, ptr %35, align 8, !dbg !5352
  %37 = icmp ne ptr %36, null, !dbg !5349
  br i1 %37, label %38, label %49, !dbg !5353

38:                                               ; preds = %2
  %39 = load ptr, ptr %3, align 8, !dbg !5354
  %40 = getelementptr inbounds %struct.relay_server, ptr %39, i32 0, i32 7, !dbg !5356
  %41 = load ptr, ptr %40, align 8, !dbg !5356
  %42 = load ptr, ptr %4, align 8, !dbg !5357
  %43 = getelementptr inbounds %struct.auth_message, ptr %42, i32 0, i32 10, !dbg !5358
  %44 = getelementptr inbounds %struct._ioa_net_data, ptr %43, i32 0, i32 1, !dbg !5359
  %45 = load ptr, ptr %44, align 8, !dbg !5359
  call void @ioa_network_buffer_delete(ptr noundef %41, ptr noundef %45), !dbg !5360
  %46 = load ptr, ptr %4, align 8, !dbg !5361
  %47 = getelementptr inbounds %struct.auth_message, ptr %46, i32 0, i32 10, !dbg !5362
  %48 = getelementptr inbounds %struct._ioa_net_data, ptr %47, i32 0, i32 1, !dbg !5363
  store ptr null, ptr %48, align 8, !dbg !5364
  br label %49, !dbg !5365

49:                                               ; preds = %38, %2
  ret void, !dbg !5366
}

declare void @stun_tid_cpy(ptr noundef, ptr noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_alt_tls_listener_port() #0 !dbg !5367 {
  %1 = alloca i32, align 4
  %2 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 31), align 4, !dbg !5368
  %3 = icmp slt i32 %2, 1, !dbg !5370
  br i1 %3, label %4, label %7, !dbg !5371

4:                                                ; preds = %0
  %5 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 29), align 4, !dbg !5372
  %6 = add nsw i32 %5, 1, !dbg !5373
  store i32 %6, ptr %1, align 4, !dbg !5374
  br label %9, !dbg !5374

7:                                                ; preds = %0
  %8 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 31), align 4, !dbg !5375
  store i32 %8, ptr %1, align 4, !dbg !5376
  br label %9, !dbg !5376

9:                                                ; preds = %7, %4
  %10 = load i32, ptr %1, align 4, !dbg !5377
  ret i32 %10, !dbg !5377
}

declare void @addr_set_port(ptr noundef, i32 noundef) #4

declare ptr @ioa_network_buffer_allocate(ptr noundef) #4

declare void @ioa_network_buffer_header_init(ptr noundef) #4

; Function Attrs: nounwind
declare void @bcopy(ptr noundef, ptr noundef, i64 noundef) #2

declare ptr @ioa_network_buffer_data(ptr noundef) #4

declare i64 @ioa_network_buffer_get_size(ptr noundef) #4

declare void @ioa_network_buffer_set_size(ptr noundef, i64 noundef) #4

declare void @ignore_sigpipe() #4

; Function Attrs: nounwind
declare i32 @sched_yield() #2

declare ptr @create_dtls_listener_server(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @create_new_listener_engine() #0 !dbg !5378 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  call void @llvm.dbg.declare(metadata ptr %1, metadata !5381, metadata !DIExpression()), !dbg !5382
  %4 = call ptr @turn_event_base_new(), !dbg !5383
  store ptr %4, ptr %1, align 8, !dbg !5382
  %5 = load ptr, ptr %1, align 8, !dbg !5384
  %6 = call ptr @event_base_get_method(ptr noundef %5), !dbg !5385
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.54, ptr noundef %6), !dbg !5386
  call void @llvm.dbg.declare(metadata ptr %2, metadata !5387, metadata !DIExpression()), !dbg !5388
  %7 = call ptr @new_super_memory_region(), !dbg !5389
  store ptr %7, ptr %2, align 8, !dbg !5388
  call void @llvm.dbg.declare(metadata ptr %3, metadata !5390, metadata !DIExpression()), !dbg !5391
  %8 = load ptr, ptr %2, align 8, !dbg !5392
  %9 = load ptr, ptr %1, align 8, !dbg !5393
  %10 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 1), align 8, !dbg !5394
  %11 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 53), align 8, !dbg !5395
  %12 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 54), align 8, !dbg !5396
  %13 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 55), align 8, !dbg !5397
  %14 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 21), align 8, !dbg !5398
  %15 = call ptr @create_ioa_engine(ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 52), i64 noundef %11, ptr noundef %12, i32 noundef %13, i32 noundef %14, ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 40)), !dbg !5399
  store ptr %15, ptr %3, align 8, !dbg !5391
  %16 = load ptr, ptr %3, align 8, !dbg !5400
  call void @set_ssl_ctx(ptr noundef %16, ptr noundef @turn_params), !dbg !5401
  %17 = load ptr, ptr %3, align 8, !dbg !5402
  %18 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42), align 8, !dbg !5403
  call void @ioa_engine_set_rtcp_map(ptr noundef %17, ptr noundef %18), !dbg !5404
  %19 = load ptr, ptr %3, align 8, !dbg !5405
  ret ptr %19, !dbg !5406
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @run_udp_listener_thread(ptr noundef %0) #0 !dbg !1310 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !5407, metadata !DIExpression()), !dbg !5408
  call void @ignore_sigpipe(), !dbg !5409
  call void @barrier_wait_func(ptr noundef @__FUNCTION__.run_udp_listener_thread, i32 noundef 1033), !dbg !5410
  call void @llvm.dbg.declare(metadata ptr %3, metadata !5411, metadata !DIExpression()), !dbg !5412
  %4 = load ptr, ptr %2, align 8, !dbg !5413
  store ptr %4, ptr %3, align 8, !dbg !5412
  br label %5, !dbg !5414

5:                                                ; preds = %13, %1
  %6 = load i32, ptr @run_udp_listener_thread.always_true, align 4, !dbg !5415
  %7 = icmp ne i32 %6, 0, !dbg !5415
  br i1 %7, label %8, label %11, !dbg !5416

8:                                                ; preds = %5
  %9 = load ptr, ptr %3, align 8, !dbg !5417
  %10 = icmp ne ptr %9, null, !dbg !5416
  br label %11

11:                                               ; preds = %8, %5
  %12 = phi i1 [ false, %5 ], [ %10, %8 ], !dbg !5418
  br i1 %12, label %13, label %16, !dbg !5414

13:                                               ; preds = %11
  %14 = load ptr, ptr %3, align 8, !dbg !5419
  %15 = call ptr @get_engine(ptr noundef %14), !dbg !5421
  call void @run_events(ptr noundef null, ptr noundef %15), !dbg !5422
  br label %5, !dbg !5414, !llvm.loop !5423

16:                                               ; preds = %11
  %17 = load ptr, ptr %2, align 8, !dbg !5425
  ret ptr %17, !dbg !5426
}

declare ptr @get_engine(ptr noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_socket_to_general_relay(ptr noundef %0, ptr noundef %1) #0 !dbg !5427 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !5430, metadata !DIExpression()), !dbg !5431
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !5432, metadata !DIExpression()), !dbg !5433
  call void @llvm.dbg.declare(metadata ptr %6, metadata !5434, metadata !DIExpression()), !dbg !5435
  %11 = load ptr, ptr %5, align 8, !dbg !5436
  %12 = getelementptr inbounds %struct.message_to_relay, ptr %11, i32 0, i32 1, !dbg !5437
  %13 = load ptr, ptr %12, align 8, !dbg !5437
  store ptr %13, ptr %6, align 8, !dbg !5435
  %14 = load ptr, ptr %6, align 8, !dbg !5438
  %15 = icmp ne ptr %14, null, !dbg !5438
  br i1 %15, label %37, label %16, !dbg !5440

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %7, metadata !5441, metadata !DIExpression()), !dbg !5443
  %17 = load ptr, ptr %5, align 8, !dbg !5444
  %18 = getelementptr inbounds %struct.message_to_relay, ptr %17, i32 0, i32 2, !dbg !5445
  %19 = getelementptr inbounds %struct.socket_message, ptr %18, i32 0, i32 1, !dbg !5446
  %20 = getelementptr inbounds %struct._ioa_net_data, ptr %19, i32 0, i32 0, !dbg !5447
  %21 = call i32 @addr_get_port(ptr noundef %20), !dbg !5448
  %22 = call i32 @hash_int32(i32 noundef %21), !dbg !5449
  %23 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 57), align 8, !dbg !5450
  %24 = zext i8 %23 to i32, !dbg !5450
  %25 = icmp sgt i32 %24, 1, !dbg !5450
  br i1 %25, label %26, label %29, !dbg !5450

26:                                               ; preds = %16
  %27 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 57), align 8, !dbg !5450
  %28 = zext i8 %27 to i32, !dbg !5450
  br label %30, !dbg !5450

29:                                               ; preds = %16
  br label %30, !dbg !5450

30:                                               ; preds = %29, %26
  %31 = phi i32 [ %28, %26 ], [ 1, %29 ], !dbg !5450
  %32 = urem i32 %22, %31, !dbg !5451
  %33 = zext i32 %32 to i64, !dbg !5452
  store i64 %33, ptr %7, align 8, !dbg !5443
  %34 = load i64, ptr %7, align 8, !dbg !5453
  %35 = getelementptr inbounds [256 x ptr], ptr @general_relay_servers, i64 0, i64 %34, !dbg !5454
  %36 = load ptr, ptr %35, align 8, !dbg !5454
  store ptr %36, ptr %6, align 8, !dbg !5455
  br label %37, !dbg !5456

37:                                               ; preds = %30, %2
  call void @llvm.dbg.declare(metadata ptr %8, metadata !5457, metadata !DIExpression()), !dbg !5458
  %38 = load ptr, ptr %5, align 8, !dbg !5459
  store ptr %38, ptr %8, align 8, !dbg !5458
  %39 = load ptr, ptr %8, align 8, !dbg !5460
  %40 = getelementptr inbounds %struct.message_to_relay, ptr %39, i32 0, i32 0, !dbg !5461
  store i32 1, ptr %40, align 8, !dbg !5462
  call void @llvm.dbg.declare(metadata ptr %9, metadata !5463, metadata !DIExpression()), !dbg !5464
  store ptr null, ptr %9, align 8, !dbg !5464
  call void @llvm.dbg.declare(metadata ptr %10, metadata !5465, metadata !DIExpression()), !dbg !5466
  store i32 0, ptr %10, align 4, !dbg !5466
  %41 = load ptr, ptr %6, align 8, !dbg !5467
  %42 = icmp ne ptr %41, null, !dbg !5467
  br i1 %42, label %44, label %43, !dbg !5469

43:                                               ; preds = %37
  br label %64, !dbg !5470

44:                                               ; preds = %37
  %45 = load ptr, ptr %6, align 8, !dbg !5472
  %46 = getelementptr inbounds %struct.relay_server, ptr %45, i32 0, i32 4, !dbg !5473
  %47 = load ptr, ptr %46, align 8, !dbg !5473
  %48 = call ptr @bufferevent_get_output(ptr noundef %47), !dbg !5474
  store ptr %48, ptr %9, align 8, !dbg !5475
  %49 = load ptr, ptr %9, align 8, !dbg !5476
  %50 = icmp ne ptr %49, null, !dbg !5476
  br i1 %50, label %51, label %63, !dbg !5478

51:                                               ; preds = %44
  %52 = load ptr, ptr %9, align 8, !dbg !5479
  %53 = load ptr, ptr %8, align 8, !dbg !5482
  %54 = call i32 @evbuffer_add(ptr noundef %52, ptr noundef %53, i64 noundef 112), !dbg !5483
  %55 = icmp slt i32 %54, 0, !dbg !5484
  br i1 %55, label %56, label %57, !dbg !5485

56:                                               ; preds = %51
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.55, ptr noundef @__FUNCTION__.send_socket_to_general_relay), !dbg !5486
  br label %62, !dbg !5488

57:                                               ; preds = %51
  store i32 1, ptr %10, align 4, !dbg !5489
  %58 = load ptr, ptr %8, align 8, !dbg !5491
  %59 = getelementptr inbounds %struct.message_to_relay, ptr %58, i32 0, i32 2, !dbg !5492
  %60 = getelementptr inbounds %struct.socket_message, ptr %59, i32 0, i32 1, !dbg !5493
  %61 = getelementptr inbounds %struct._ioa_net_data, ptr %60, i32 0, i32 1, !dbg !5494
  store ptr null, ptr %61, align 8, !dbg !5495
  br label %62

62:                                               ; preds = %57, %56
  br label %63, !dbg !5496

63:                                               ; preds = %62, %44
  br label %64, !dbg !5476

64:                                               ; preds = %63, %43
  call void @llvm.dbg.label(metadata !5497), !dbg !5498
  %65 = load i32, ptr %10, align 4, !dbg !5499
  %66 = icmp ne i32 %65, 0, !dbg !5499
  br i1 %66, label %94, label %67, !dbg !5501

67:                                               ; preds = %64
  %68 = load ptr, ptr %4, align 8, !dbg !5502
  %69 = load ptr, ptr %8, align 8, !dbg !5504
  %70 = getelementptr inbounds %struct.message_to_relay, ptr %69, i32 0, i32 2, !dbg !5505
  %71 = getelementptr inbounds %struct.socket_message, ptr %70, i32 0, i32 1, !dbg !5506
  %72 = getelementptr inbounds %struct._ioa_net_data, ptr %71, i32 0, i32 1, !dbg !5507
  %73 = load ptr, ptr %72, align 8, !dbg !5507
  call void @ioa_network_buffer_delete(ptr noundef %68, ptr noundef %73), !dbg !5508
  %74 = load ptr, ptr %8, align 8, !dbg !5509
  %75 = getelementptr inbounds %struct.message_to_relay, ptr %74, i32 0, i32 2, !dbg !5510
  %76 = getelementptr inbounds %struct.socket_message, ptr %75, i32 0, i32 1, !dbg !5511
  %77 = getelementptr inbounds %struct._ioa_net_data, ptr %76, i32 0, i32 1, !dbg !5512
  store ptr null, ptr %77, align 8, !dbg !5513
  br label %78, !dbg !5514

78:                                               ; preds = %67
  %79 = load ptr, ptr %8, align 8, !dbg !5515
  %80 = getelementptr inbounds %struct.message_to_relay, ptr %79, i32 0, i32 2, !dbg !5515
  %81 = getelementptr inbounds %struct.socket_message, ptr %80, i32 0, i32 0, !dbg !5515
  %82 = load ptr, ptr %81, align 8, !dbg !5515
  %83 = icmp ne ptr %82, null, !dbg !5515
  br i1 %83, label %84, label %92, !dbg !5518

84:                                               ; preds = %78
  %85 = load ptr, ptr %8, align 8, !dbg !5519
  %86 = getelementptr inbounds %struct.message_to_relay, ptr %85, i32 0, i32 2, !dbg !5519
  %87 = getelementptr inbounds %struct.socket_message, ptr %86, i32 0, i32 0, !dbg !5519
  %88 = load ptr, ptr %87, align 8, !dbg !5519
  call void @close_ioa_socket(ptr noundef %88), !dbg !5519
  %89 = load ptr, ptr %8, align 8, !dbg !5519
  %90 = getelementptr inbounds %struct.message_to_relay, ptr %89, i32 0, i32 2, !dbg !5519
  %91 = getelementptr inbounds %struct.socket_message, ptr %90, i32 0, i32 0, !dbg !5519
  store ptr null, ptr %91, align 8, !dbg !5519
  br label %92, !dbg !5519

92:                                               ; preds = %84, %78
  br label %93, !dbg !5518

93:                                               ; preds = %92
  store i32 -1, ptr %3, align 4, !dbg !5521
  br label %95, !dbg !5521

94:                                               ; preds = %64
  store i32 0, ptr %3, align 4, !dbg !5522
  br label %95, !dbg !5522

95:                                               ; preds = %94, %93
  %96 = load i32, ptr %3, align 4, !dbg !5523
  ret i32 %96, !dbg !5523
}

declare i32 @hash_int32(i32 noundef) #4

declare ptr @create_tls_listener_server(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nounwind
declare i32 @pthread_attr_init(ptr noundef) #2

; Function Attrs: nounwind
declare i32 @pthread_attr_setdetachstate(ptr noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @run_auth_server_thread(ptr noundef %0) #0 !dbg !5524 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i8, align 1
  %5 = alloca [2 x ptr], align 16
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !5525, metadata !DIExpression()), !dbg !5526
  call void @ignore_sigpipe(), !dbg !5527
  call void @llvm.dbg.declare(metadata ptr %3, metadata !5528, metadata !DIExpression()), !dbg !5529
  %6 = load ptr, ptr %2, align 8, !dbg !5530
  store ptr %6, ptr %3, align 8, !dbg !5529
  call void @llvm.dbg.declare(metadata ptr %4, metadata !5531, metadata !DIExpression()), !dbg !5532
  %7 = load ptr, ptr %3, align 8, !dbg !5533
  %8 = getelementptr inbounds %struct.auth_server, ptr %7, i32 0, i32 0, !dbg !5534
  %9 = load i8, ptr %8, align 8, !dbg !5534
  store i8 %9, ptr %4, align 1, !dbg !5532
  %10 = load i8, ptr %4, align 1, !dbg !5535
  %11 = zext i8 %10 to i32, !dbg !5535
  %12 = icmp eq i32 %11, 0, !dbg !5537
  br i1 %12, label %13, label %20, !dbg !5538

13:                                               ; preds = %1
  call void @reread_realms(), !dbg !5539
  call void @update_white_and_black_lists(), !dbg !5541
  call void @barrier_wait_func(ptr noundef @__FUNCTION__.run_auth_server_thread, i32 noundef 1754), !dbg !5542
  br label %14, !dbg !5543

14:                                               ; preds = %17, %13
  %15 = load i32, ptr @run_auth_server_flag, align 4, !dbg !5544
  %16 = icmp ne i32 %15, 0, !dbg !5543
  br i1 %16, label %17, label %19, !dbg !5543

17:                                               ; preds = %14
  %18 = call i32 @sleep(i32 noundef 5), !dbg !5545
  call void @reread_realms(), !dbg !5547
  call void @update_white_and_black_lists(), !dbg !5548
  br label %14, !dbg !5543, !llvm.loop !5549

19:                                               ; preds = %14
  br label %74, !dbg !5551

20:                                               ; preds = %1
  %21 = load ptr, ptr %3, align 8, !dbg !5552
  call void @llvm.memset.p0.i64(ptr align 8 %21, i8 0, i64 48, i1 false), !dbg !5554
  %22 = load i8, ptr %4, align 1, !dbg !5555
  %23 = load ptr, ptr %3, align 8, !dbg !5556
  %24 = getelementptr inbounds %struct.auth_server, ptr %23, i32 0, i32 0, !dbg !5557
  store i8 %22, ptr %24, align 8, !dbg !5558
  %25 = call ptr @turn_event_base_new(), !dbg !5559
  %26 = load ptr, ptr %3, align 8, !dbg !5560
  %27 = getelementptr inbounds %struct.auth_server, ptr %26, i32 0, i32 1, !dbg !5561
  store ptr %25, ptr %27, align 8, !dbg !5562
  %28 = load ptr, ptr %3, align 8, !dbg !5563
  %29 = getelementptr inbounds %struct.auth_server, ptr %28, i32 0, i32 1, !dbg !5564
  %30 = load ptr, ptr %29, align 8, !dbg !5564
  %31 = call ptr @event_base_get_method(ptr noundef %30), !dbg !5565
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.57, ptr noundef %31), !dbg !5566
  call void @llvm.dbg.declare(metadata ptr %5, metadata !5567, metadata !DIExpression()), !dbg !5568
  %32 = load ptr, ptr %3, align 8, !dbg !5569
  %33 = getelementptr inbounds %struct.auth_server, ptr %32, i32 0, i32 1, !dbg !5570
  %34 = load ptr, ptr %33, align 8, !dbg !5570
  %35 = getelementptr inbounds [2 x ptr], ptr %5, i64 0, i64 0, !dbg !5571
  %36 = call i32 @bufferevent_pair_new(ptr noundef %34, i32 noundef 14, ptr noundef %35), !dbg !5572
  %37 = getelementptr inbounds [2 x ptr], ptr %5, i64 0, i64 0, !dbg !5573
  %38 = load ptr, ptr %37, align 16, !dbg !5573
  %39 = load ptr, ptr %3, align 8, !dbg !5574
  %40 = getelementptr inbounds %struct.auth_server, ptr %39, i32 0, i32 2, !dbg !5575
  store ptr %38, ptr %40, align 8, !dbg !5576
  %41 = getelementptr inbounds [2 x ptr], ptr %5, i64 0, i64 1, !dbg !5577
  %42 = load ptr, ptr %41, align 8, !dbg !5577
  %43 = load ptr, ptr %3, align 8, !dbg !5578
  %44 = getelementptr inbounds %struct.auth_server, ptr %43, i32 0, i32 3, !dbg !5579
  store ptr %42, ptr %44, align 8, !dbg !5580
  %45 = load ptr, ptr %3, align 8, !dbg !5581
  %46 = getelementptr inbounds %struct.auth_server, ptr %45, i32 0, i32 2, !dbg !5582
  %47 = load ptr, ptr %46, align 8, !dbg !5582
  %48 = load ptr, ptr %3, align 8, !dbg !5583
  call void @bufferevent_setcb(ptr noundef %47, ptr noundef @auth_server_receive_message, ptr noundef null, ptr noundef null, ptr noundef %48), !dbg !5584
  %49 = load ptr, ptr %3, align 8, !dbg !5585
  %50 = getelementptr inbounds %struct.auth_server, ptr %49, i32 0, i32 2, !dbg !5586
  %51 = load ptr, ptr %50, align 8, !dbg !5586
  %52 = call i32 @bufferevent_enable(ptr noundef %51, i16 noundef signext 2), !dbg !5587
  %53 = load ptr, ptr %3, align 8, !dbg !5588
  %54 = getelementptr inbounds %struct.auth_server, ptr %53, i32 0, i32 1, !dbg !5589
  %55 = load ptr, ptr %54, align 8, !dbg !5589
  %56 = call ptr @get_redis_async_connection(ptr noundef %55, ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 40), i32 noundef 1), !dbg !5590
  %57 = load ptr, ptr %3, align 8, !dbg !5591
  %58 = getelementptr inbounds %struct.auth_server, ptr %57, i32 0, i32 5, !dbg !5592
  store ptr %56, ptr %58, align 8, !dbg !5593
  call void @barrier_wait_func(ptr noundef @__FUNCTION__.run_auth_server_thread, i32 noundef 1786), !dbg !5594
  br label %59, !dbg !5595

59:                                               ; preds = %69, %20
  %60 = load i32, ptr @run_auth_server_flag, align 4, !dbg !5596
  %61 = icmp ne i32 %60, 0, !dbg !5595
  br i1 %61, label %62, label %73, !dbg !5595

62:                                               ; preds = %59
  %63 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 91), align 8, !dbg !5597
  %64 = icmp ne i32 %63, 0, !dbg !5600
  br i1 %64, label %69, label %65, !dbg !5601

65:                                               ; preds = %62
  %66 = load ptr, ptr %3, align 8, !dbg !5602
  %67 = getelementptr inbounds %struct.auth_server, ptr %66, i32 0, i32 5, !dbg !5604
  %68 = load ptr, ptr %67, align 8, !dbg !5604
  call void @auth_ping(ptr noundef %68), !dbg !5605
  br label %69, !dbg !5606

69:                                               ; preds = %65, %62
  %70 = load ptr, ptr %3, align 8, !dbg !5607
  %71 = getelementptr inbounds %struct.auth_server, ptr %70, i32 0, i32 1, !dbg !5608
  %72 = load ptr, ptr %71, align 8, !dbg !5608
  call void @run_events(ptr noundef %72, ptr noundef null), !dbg !5609
  br label %59, !dbg !5595, !llvm.loop !5610

73:                                               ; preds = %59
  br label %74

74:                                               ; preds = %73, %19
  %75 = load ptr, ptr %2, align 8, !dbg !5612
  ret ptr %75, !dbg !5613
}

declare void @reread_realms() #4

declare void @update_white_and_black_lists() #4

declare i32 @sleep(i32 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @auth_server_receive_message(ptr noundef %0, ptr noundef %1) #0 !dbg !5614 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.auth_message, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca [64 x i8], align 16
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !5615, metadata !DIExpression()), !dbg !5616
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !5617, metadata !DIExpression()), !dbg !5618
  br label %11, !dbg !5619

11:                                               ; preds = %2
  %12 = load ptr, ptr %4, align 8, !dbg !5620
  store ptr %12, ptr %4, align 8, !dbg !5620
  br label %13, !dbg !5620

13:                                               ; preds = %11
  call void @llvm.dbg.declare(metadata ptr %5, metadata !5622, metadata !DIExpression()), !dbg !5623
  call void @llvm.dbg.declare(metadata ptr %6, metadata !5624, metadata !DIExpression()), !dbg !5625
  store i32 0, ptr %6, align 4, !dbg !5625
  call void @llvm.dbg.declare(metadata ptr %7, metadata !5626, metadata !DIExpression()), !dbg !5627
  %14 = load ptr, ptr %3, align 8, !dbg !5628
  %15 = call ptr @bufferevent_get_input(ptr noundef %14), !dbg !5629
  store ptr %15, ptr %7, align 8, !dbg !5627
  br label %16, !dbg !5630

16:                                               ; preds = %163, %24, %13
  %17 = load ptr, ptr %7, align 8, !dbg !5631
  %18 = call i32 @evbuffer_remove(ptr noundef %17, ptr noundef %5, i64 noundef 1056), !dbg !5632
  store i32 %18, ptr %6, align 4, !dbg !5633
  %19 = icmp sgt i32 %18, 0, !dbg !5634
  br i1 %19, label %20, label %164, !dbg !5630

20:                                               ; preds = %16
  %21 = load i32, ptr %6, align 4, !dbg !5635
  %22 = sext i32 %21 to i64, !dbg !5635
  %23 = icmp ne i64 %22, 1056, !dbg !5638
  br i1 %23, label %24, label %28, !dbg !5639

24:                                               ; preds = %20
  %25 = load ptr, ptr @stderr, align 8, !dbg !5640
  %26 = load i32, ptr %6, align 4, !dbg !5642
  %27 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef @.str.58, ptr noundef @__FUNCTION__.auth_server_receive_message, i32 noundef %26), !dbg !5643
  br label %16, !dbg !5644, !llvm.loop !5645

28:                                               ; preds = %20
  call void @llvm.dbg.declare(metadata ptr %8, metadata !5647, metadata !DIExpression()), !dbg !5649
  %29 = getelementptr inbounds %struct.auth_message, ptr %5, i32 0, i32 2, !dbg !5650
  %30 = load i32, ptr %29, align 8, !dbg !5650
  %31 = getelementptr inbounds %struct.auth_message, ptr %5, i32 0, i32 3, !dbg !5652
  %32 = getelementptr inbounds %struct.auth_message, ptr %5, i32 0, i32 4, !dbg !5653
  %33 = getelementptr inbounds %struct.auth_message, ptr %5, i32 0, i32 5, !dbg !5654
  %34 = getelementptr inbounds [513 x i8], ptr %33, i64 0, i64 0, !dbg !5655
  %35 = getelementptr inbounds %struct.auth_message, ptr %5, i32 0, i32 6, !dbg !5656
  %36 = getelementptr inbounds [128 x i8], ptr %35, i64 0, i64 0, !dbg !5657
  %37 = getelementptr inbounds [64 x i8], ptr %8, i64 0, i64 0, !dbg !5658
  %38 = getelementptr inbounds %struct.auth_message, ptr %5, i32 0, i32 10, !dbg !5659
  %39 = getelementptr inbounds %struct._ioa_net_data, ptr %38, i32 0, i32 1, !dbg !5660
  %40 = load ptr, ptr %39, align 8, !dbg !5660
  %41 = call i32 @get_user_key(i32 noundef %30, ptr noundef %31, ptr noundef %32, ptr noundef %34, ptr noundef %36, ptr noundef %37, ptr noundef %40), !dbg !5661
  %42 = icmp slt i32 %41, 0, !dbg !5662
  br i1 %42, label %43, label %45, !dbg !5663

43:                                               ; preds = %28
  %44 = getelementptr inbounds %struct.auth_message, ptr %5, i32 0, i32 12, !dbg !5664
  store i32 0, ptr %44, align 8, !dbg !5666
  br label %50, !dbg !5667

45:                                               ; preds = %28
  %46 = getelementptr inbounds [64 x i8], ptr %8, i64 0, i64 0, !dbg !5668
  %47 = getelementptr inbounds %struct.auth_message, ptr %5, i32 0, i32 7, !dbg !5670
  %48 = getelementptr inbounds [64 x i8], ptr %47, i64 0, i64 0, !dbg !5671
  call void @bcopy(ptr noundef %46, ptr noundef %48, i64 noundef 64) #10, !dbg !5672
  %49 = getelementptr inbounds %struct.auth_message, ptr %5, i32 0, i32 12, !dbg !5673
  store i32 1, ptr %49, align 8, !dbg !5674
  br label %50

50:                                               ; preds = %45, %43
  call void @llvm.dbg.declare(metadata ptr %9, metadata !5675, metadata !DIExpression()), !dbg !5676
  %51 = getelementptr inbounds %struct.auth_message, ptr %5, i32 0, i32 0, !dbg !5677
  %52 = load i8, ptr %51, align 8, !dbg !5677
  %53 = zext i8 %52 to i64, !dbg !5678
  store i64 %53, ptr %9, align 8, !dbg !5676
  call void @llvm.dbg.declare(metadata ptr %10, metadata !5679, metadata !DIExpression()), !dbg !5680
  store ptr null, ptr %10, align 8, !dbg !5680
  %54 = load i64, ptr %9, align 8, !dbg !5681
  %55 = icmp uge i64 %54, 128, !dbg !5683
  br i1 %55, label %56, label %100, !dbg !5684

56:                                               ; preds = %50
  %57 = load i64, ptr %9, align 8, !dbg !5685
  %58 = sub i64 %57, 128, !dbg !5685
  store i64 %58, ptr %9, align 8, !dbg !5685
  %59 = load i64, ptr %9, align 8, !dbg !5687
  %60 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 58), align 1, !dbg !5689
  %61 = zext i8 %60 to i32, !dbg !5689
  %62 = icmp sgt i32 %61, 1, !dbg !5689
  br i1 %62, label %63, label %66, !dbg !5689

63:                                               ; preds = %56
  %64 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 58), align 1, !dbg !5689
  %65 = zext i8 %64 to i32, !dbg !5689
  br label %67, !dbg !5689

66:                                               ; preds = %56
  br label %67, !dbg !5689

67:                                               ; preds = %66, %63
  %68 = phi i32 [ %65, %63 ], [ 1, %66 ], !dbg !5689
  %69 = sext i32 %68 to i64, !dbg !5689
  %70 = icmp uge i64 %59, %69, !dbg !5690
  br i1 %70, label %71, label %74, !dbg !5691

71:                                               ; preds = %67
  %72 = load i64, ptr %9, align 8, !dbg !5692
  %73 = trunc i64 %72 to i32, !dbg !5694
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.59, ptr noundef @__FUNCTION__.auth_server_receive_message, i32 noundef %73), !dbg !5695
  br label %99, !dbg !5696

74:                                               ; preds = %67
  %75 = load i64, ptr %9, align 8, !dbg !5697
  %76 = getelementptr inbounds [256 x ptr], ptr @udp_relay_servers, i64 0, i64 %75, !dbg !5699
  %77 = load ptr, ptr %76, align 8, !dbg !5699
  %78 = icmp ne ptr %77, null, !dbg !5700
  br i1 %78, label %91, label %79, !dbg !5701

79:                                               ; preds = %74
  %80 = load i64, ptr %9, align 8, !dbg !5702
  %81 = trunc i64 %80 to i32, !dbg !5704
  %82 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 58), align 1, !dbg !5705
  %83 = zext i8 %82 to i32, !dbg !5705
  %84 = icmp sgt i32 %83, 1, !dbg !5705
  br i1 %84, label %85, label %88, !dbg !5705

85:                                               ; preds = %79
  %86 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 58), align 1, !dbg !5705
  %87 = zext i8 %86 to i32, !dbg !5705
  br label %89, !dbg !5705

88:                                               ; preds = %79
  br label %89, !dbg !5705

89:                                               ; preds = %88, %85
  %90 = phi i32 [ %87, %85 ], [ 1, %88 ], !dbg !5705
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.60, ptr noundef @__FUNCTION__.auth_server_receive_message, i32 noundef %81, i32 noundef %90), !dbg !5706
  br label %98, !dbg !5707

91:                                               ; preds = %74
  %92 = load i64, ptr %9, align 8, !dbg !5708
  %93 = getelementptr inbounds [256 x ptr], ptr @udp_relay_servers, i64 0, i64 %92, !dbg !5710
  %94 = load ptr, ptr %93, align 8, !dbg !5710
  %95 = getelementptr inbounds %struct.relay_server, ptr %94, i32 0, i32 6, !dbg !5711
  %96 = load ptr, ptr %95, align 8, !dbg !5711
  %97 = call ptr @bufferevent_get_output(ptr noundef %96), !dbg !5712
  store ptr %97, ptr %10, align 8, !dbg !5713
  br label %98

98:                                               ; preds = %91, %89
  br label %99

99:                                               ; preds = %98, %71
  br label %151, !dbg !5714

100:                                              ; preds = %50
  %101 = load i64, ptr %9, align 8, !dbg !5715
  %102 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 57), align 8, !dbg !5718
  %103 = zext i8 %102 to i32, !dbg !5718
  %104 = icmp sgt i32 %103, 1, !dbg !5718
  br i1 %104, label %105, label %108, !dbg !5718

105:                                              ; preds = %100
  %106 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 57), align 8, !dbg !5718
  %107 = zext i8 %106 to i32, !dbg !5718
  br label %109, !dbg !5718

108:                                              ; preds = %100
  br label %109, !dbg !5718

109:                                              ; preds = %108, %105
  %110 = phi i32 [ %107, %105 ], [ 1, %108 ], !dbg !5718
  %111 = sext i32 %110 to i64, !dbg !5718
  %112 = icmp uge i64 %101, %111, !dbg !5719
  br i1 %112, label %113, label %125, !dbg !5720

113:                                              ; preds = %109
  %114 = load i64, ptr %9, align 8, !dbg !5721
  %115 = trunc i64 %114 to i32, !dbg !5723
  %116 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 57), align 8, !dbg !5724
  %117 = zext i8 %116 to i32, !dbg !5724
  %118 = icmp sgt i32 %117, 1, !dbg !5724
  br i1 %118, label %119, label %122, !dbg !5724

119:                                              ; preds = %113
  %120 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 57), align 8, !dbg !5724
  %121 = zext i8 %120 to i32, !dbg !5724
  br label %123, !dbg !5724

122:                                              ; preds = %113
  br label %123, !dbg !5724

123:                                              ; preds = %122, %119
  %124 = phi i32 [ %121, %119 ], [ 1, %122 ], !dbg !5724
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.61, ptr noundef @__FUNCTION__.auth_server_receive_message, i32 noundef %115, i32 noundef %124), !dbg !5725
  br label %150, !dbg !5726

125:                                              ; preds = %109
  %126 = load i64, ptr %9, align 8, !dbg !5727
  %127 = getelementptr inbounds [256 x ptr], ptr @general_relay_servers, i64 0, i64 %126, !dbg !5729
  %128 = load ptr, ptr %127, align 8, !dbg !5729
  %129 = icmp ne ptr %128, null, !dbg !5730
  br i1 %129, label %142, label %130, !dbg !5731

130:                                              ; preds = %125
  %131 = load i64, ptr %9, align 8, !dbg !5732
  %132 = trunc i64 %131 to i32, !dbg !5734
  %133 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 57), align 8, !dbg !5735
  %134 = zext i8 %133 to i32, !dbg !5735
  %135 = icmp sgt i32 %134, 1, !dbg !5735
  br i1 %135, label %136, label %139, !dbg !5735

136:                                              ; preds = %130
  %137 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 57), align 8, !dbg !5735
  %138 = zext i8 %137 to i32, !dbg !5735
  br label %140, !dbg !5735

139:                                              ; preds = %130
  br label %140, !dbg !5735

140:                                              ; preds = %139, %136
  %141 = phi i32 [ %138, %136 ], [ 1, %139 ], !dbg !5735
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.29, ptr noundef @__FUNCTION__.auth_server_receive_message, i32 noundef %132, i32 noundef %141), !dbg !5736
  br label %149, !dbg !5737

142:                                              ; preds = %125
  %143 = load i64, ptr %9, align 8, !dbg !5738
  %144 = getelementptr inbounds [256 x ptr], ptr @general_relay_servers, i64 0, i64 %143, !dbg !5740
  %145 = load ptr, ptr %144, align 8, !dbg !5740
  %146 = getelementptr inbounds %struct.relay_server, ptr %145, i32 0, i32 6, !dbg !5741
  %147 = load ptr, ptr %146, align 8, !dbg !5741
  %148 = call ptr @bufferevent_get_output(ptr noundef %147), !dbg !5742
  store ptr %148, ptr %10, align 8, !dbg !5743
  br label %149

149:                                              ; preds = %142, %140
  br label %150

150:                                              ; preds = %149, %123
  br label %151

151:                                              ; preds = %150, %99
  %152 = load ptr, ptr %10, align 8, !dbg !5744
  %153 = icmp ne ptr %152, null, !dbg !5744
  br i1 %153, label %154, label %157, !dbg !5746

154:                                              ; preds = %151
  %155 = load ptr, ptr %10, align 8, !dbg !5747
  %156 = call i32 @evbuffer_add(ptr noundef %155, ptr noundef %5, i64 noundef 1056), !dbg !5748
  br label %163, !dbg !5748

157:                                              ; preds = %151
  %158 = getelementptr inbounds %struct.auth_message, ptr %5, i32 0, i32 10, !dbg !5749
  %159 = getelementptr inbounds %struct._ioa_net_data, ptr %158, i32 0, i32 1, !dbg !5751
  %160 = load ptr, ptr %159, align 8, !dbg !5751
  call void @ioa_network_buffer_delete(ptr noundef null, ptr noundef %160), !dbg !5752
  %161 = getelementptr inbounds %struct.auth_message, ptr %5, i32 0, i32 10, !dbg !5753
  %162 = getelementptr inbounds %struct._ioa_net_data, ptr %161, i32 0, i32 1, !dbg !5754
  store ptr null, ptr %162, align 8, !dbg !5755
  br label %163

163:                                              ; preds = %157, %154
  br label %16, !dbg !5630, !llvm.loop !5645

164:                                              ; preds = %16
  ret void, !dbg !5756
}

declare ptr @get_redis_async_connection(ptr noundef, ptr noundef, i32 noundef) #4

declare void @auth_ping(ptr noundef) #4

declare i32 @get_user_key(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @run_admin_server_thread(ptr noundef %0) #0 !dbg !5757 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !5758, metadata !DIExpression()), !dbg !5759
  call void @ignore_sigpipe(), !dbg !5760
  call void @setup_admin_thread(), !dbg !5761
  call void @barrier_wait_func(ptr noundef @__FUNCTION__.run_admin_server_thread, i32 noundef 1817), !dbg !5762
  br label %3, !dbg !5763

3:                                                ; preds = %6, %1
  %4 = load ptr, ptr getelementptr inbounds (%struct.admin_server, ptr @adminserver, i32 0, i32 1), align 8, !dbg !5764
  %5 = icmp ne ptr %4, null, !dbg !5763
  br i1 %5, label %6, label %8, !dbg !5763

6:                                                ; preds = %3
  %7 = load ptr, ptr getelementptr inbounds (%struct.admin_server, ptr @adminserver, i32 0, i32 1), align 8, !dbg !5765
  call void @run_events(ptr noundef %7, ptr noundef null), !dbg !5767
  br label %3, !dbg !5763, !llvm.loop !5768

8:                                                ; preds = %3
  %9 = load ptr, ptr %2, align 8, !dbg !5770
  ret ptr %9, !dbg !5771
}

declare void @setup_admin_thread() #4

; Function Attrs: nounwind
declare i32 @pthread_barrier_wait(ptr noundef) #2

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #9

declare i32 @printf(ptr noundef, ...) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(1) }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind willreturn memory(read) }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind willreturn memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1359, !1360, !1361, !1362, !1363, !1364, !1365}
!llvm.ident = !{!1366}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "mutex_bps", scope: !2, file: !116, line: 99, type: !320, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !113, globals: !1041, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/raj/coturn/src/apps/relay/netengine.c", directory: "/home/raj/coturn/build", checksumkind: CSK_MD5, checksum: "1547e26a6cbd9138a782ea8bcf937c15")
!4 = !{!5, !13, !22, !29, !39, !45, !52, !57, !70, !81, !90, !97, !104, !108}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_DH_KEY_SIZE", file: !6, line: 114, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "src/apps/relay/mainrelay.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "1acca21bed3a1df5ba7170d81a649a58")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "DH_566", value: 0)
!10 = !DIEnumerator(name: "DH_1066", value: 1)
!11 = !DIEnumerator(name: "DH_2066", value: 2)
!12 = !DIEnumerator(name: "DH_CUSTOM", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_NET_ENG_VERSION", file: !6, line: 160, baseType: !7, size: 32, elements: !14)
!14 = !{!15, !16, !17, !18, !19, !20, !21}
!15 = !DIEnumerator(name: "NEV_UNKNOWN", value: 0)
!16 = !DIEnumerator(name: "NEV_MIN", value: 1)
!17 = !DIEnumerator(name: "NEV_UDP_SOCKET_PER_SESSION", value: 1)
!18 = !DIEnumerator(name: "NEV_UDP_SOCKET_PER_ENDPOINT", value: 2)
!19 = !DIEnumerator(name: "NEV_UDP_SOCKET_PER_THREAD", value: 3)
!20 = !DIEnumerator(name: "NEV_MAX", value: 3)
!21 = !DIEnumerator(name: "NEV_TOTAL", value: 4)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !23, line: 54, baseType: !7, size: 32, elements: !24)
!23 = !DIFile(filename: "src/client/ns_turn_msg.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "43c56357294df21a547ee0716fe3769d")
!24 = !{!25, !26, !27, !28}
!25 = !DIEnumerator(name: "TURN_CREDENTIALS_NONE", value: 0)
!26 = !DIEnumerator(name: "TURN_CREDENTIALS_LONG_TERM", value: 1)
!27 = !DIEnumerator(name: "TURN_CREDENTIALS_SHORT_TERM", value: 2)
!28 = !DIEnumerator(name: "TURN_CREDENTIALS_UNDEFINED", value: 3)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_TURN_USERDB_TYPE", file: !30, line: 96, baseType: !31, size: 32, elements: !32)
!30 = !DIFile(filename: "src/apps/relay/userdb.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "ef7aa3b34af7515d3cf1275f8bfd0947")
!31 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!32 = !{!33, !34, !35, !36, !37, !38}
!33 = !DIEnumerator(name: "TURN_USERDB_TYPE_UNKNOWN", value: -1)
!34 = !DIEnumerator(name: "TURN_USERDB_TYPE_SQLITE", value: 0)
!35 = !DIEnumerator(name: "TURN_USERDB_TYPE_PQ", value: 1)
!36 = !DIEnumerator(name: "TURN_USERDB_TYPE_MYSQL", value: 2)
!37 = !DIEnumerator(name: "TURN_USERDB_TYPE_MONGO", value: 3)
!38 = !DIEnumerator(name: "TURN_USERDB_TYPE_REDIS", value: 4)
!39 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_ALLOCATION_DEFAULT_ADDRESS_FAMILY", file: !40, line: 79, baseType: !7, size: 32, elements: !41)
!40 = !DIFile(filename: "src/server/ns_turn_server.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "6e53554bfe42393e23ac816233e245b8")
!41 = !{!42, !43, !44}
!42 = !DIEnumerator(name: "ALLOCATION_DEFAULT_ADDRESS_FAMILY_IPV4", value: 0)
!43 = !DIEnumerator(name: "ALLOCATION_DEFAULT_ADDRESS_FAMILY_IPV6", value: 1)
!44 = !DIEnumerator(name: "ALLOCATION_DEFAULT_ADDRESS_FAMILY_KEEP", value: 2)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !46, line: 47, baseType: !7, size: 32, elements: !47)
!46 = !DIFile(filename: "src/apps/common/ns_turn_utils.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "74cb4019b1eb9d8e2b879df518b15a25")
!47 = !{!48, !49, !50, !51}
!48 = !DIEnumerator(name: "TURN_LOG_LEVEL_INFO", value: 0)
!49 = !DIEnumerator(name: "TURN_LOG_LEVEL_CONTROL", value: 1)
!50 = !DIEnumerator(name: "TURN_LOG_LEVEL_WARNING", value: 2)
!51 = !DIEnumerator(name: "TURN_LOG_LEVEL_ERROR", value: 3)
!52 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !40, line: 92, baseType: !7, size: 32, elements: !53)
!53 = !{!54, !55, !56}
!54 = !DIEnumerator(name: "DONT_FRAGMENT_UNSUPPORTED", value: 0)
!55 = !DIEnumerator(name: "DONT_FRAGMENT_SUPPORTED", value: 1)
!56 = !DIEnumerator(name: "DONT_FRAGMENT_SUPPORT_EMULATED", value: 2)
!57 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_SOCKET_TYPE", file: !58, line: 85, baseType: !7, size: 32, elements: !59)
!58 = !DIFile(filename: "src/server/ns_turn_ioalib.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "c6bb568b11ce41f25b29a4464aa685c5")
!59 = !{!60, !61, !62, !63, !64, !65, !66, !67, !68, !69}
!60 = !DIEnumerator(name: "UNKNOWN_SOCKET", value: 0)
!61 = !DIEnumerator(name: "TCP_SOCKET", value: 6)
!62 = !DIEnumerator(name: "UDP_SOCKET", value: 17)
!63 = !DIEnumerator(name: "TLS_SOCKET", value: 56)
!64 = !DIEnumerator(name: "SCTP_SOCKET", value: 132)
!65 = !DIEnumerator(name: "TLS_SCTP_SOCKET", value: 133)
!66 = !DIEnumerator(name: "DTLS_SOCKET", value: 250)
!67 = !DIEnumerator(name: "TCP_SOCKET_PROXY", value: 253)
!68 = !DIEnumerator(name: "TENTATIVE_SCTP_SOCKET", value: 254)
!69 = !DIEnumerator(name: "TENTATIVE_TCP_SOCKET", value: 255)
!70 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_SOCKET_APP_TYPE", file: !58, line: 100, baseType: !7, size: 32, elements: !71)
!71 = !{!72, !73, !74, !75, !76, !77, !78, !79, !80}
!72 = !DIEnumerator(name: "UNKNOWN_APP_SOCKET", value: 0)
!73 = !DIEnumerator(name: "CLIENT_SOCKET", value: 1)
!74 = !DIEnumerator(name: "HTTP_CLIENT_SOCKET", value: 2)
!75 = !DIEnumerator(name: "HTTPS_CLIENT_SOCKET", value: 3)
!76 = !DIEnumerator(name: "RELAY_SOCKET", value: 4)
!77 = !DIEnumerator(name: "RELAY_RTCP_SOCKET", value: 5)
!78 = !DIEnumerator(name: "TCP_CLIENT_DATA_SOCKET", value: 6)
!79 = !DIEnumerator(name: "TCP_RELAY_DATA_SOCKET", value: 7)
!80 = !DIEnumerator(name: "LISTENER_SOCKET", value: 8)
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_TC_STATE", file: !82, line: 67, baseType: !7, size: 32, elements: !83)
!82 = !DIFile(filename: "src/server/ns_turn_allocation.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "0cb2cf61c9ec5dd3030a6e5a6f8d4af1")
!83 = !{!84, !85, !86, !87, !88, !89}
!84 = !DIEnumerator(name: "TC_STATE_UNKNOWN", value: 0)
!85 = !DIEnumerator(name: "TC_STATE_CLIENT_TO_PEER_CONNECTING", value: 1)
!86 = !DIEnumerator(name: "TC_STATE_PEER_CONNECTING", value: 2)
!87 = !DIEnumerator(name: "TC_STATE_PEER_CONNECTED", value: 3)
!88 = !DIEnumerator(name: "TC_STATE_READY", value: 4)
!89 = !DIEnumerator(name: "TC_STATE_FAILED", value: 5)
!90 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_MESSAGE_TO_RELAY_TYPE", file: !40, line: 69, baseType: !7, size: 32, elements: !91)
!91 = !{!92, !93, !94, !95, !96}
!92 = !DIEnumerator(name: "RMT_UNKNOWN", value: 0)
!93 = !DIEnumerator(name: "RMT_SOCKET", value: 1)
!94 = !DIEnumerator(name: "RMT_CB_SOCKET", value: 2)
!95 = !DIEnumerator(name: "RMT_MOBILE_SOCKET", value: 3)
!96 = !DIEnumerator(name: "RMT_CANCEL_SESSION", value: 4)
!97 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "bufferevent_options", file: !98, line: 157, baseType: !7, size: 32, elements: !99)
!98 = !DIFile(filename: "/usr/include/event2/bufferevent.h", directory: "", checksumkind: CSK_MD5, checksum: "15bb43c26b2c9058b6c64d44779c7263")
!99 = !{!100, !101, !102, !103}
!100 = !DIEnumerator(name: "BEV_OPT_CLOSE_ON_FREE", value: 1)
!101 = !DIEnumerator(name: "BEV_OPT_THREADSAFE", value: 2)
!102 = !DIEnumerator(name: "BEV_OPT_DEFER_CALLBACKS", value: 4)
!103 = !DIEnumerator(name: "BEV_OPT_UNLOCK_CALLBACKS", value: 8)
!104 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_MESSAGE_TO_LISTENER_TYPE", file: !6, line: 131, baseType: !7, size: 32, elements: !105)
!105 = !{!106, !107}
!106 = !DIEnumerator(name: "LMT_UNKNOWN", value: 0)
!107 = !DIEnumerator(name: "LMT_TO_CLIENT", value: 1)
!108 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !109, line: 37, baseType: !7, size: 32, elements: !110)
!109 = !DIFile(filename: "/usr/include/pthread.h", directory: "", checksumkind: CSK_MD5, checksum: "5205981c6f80cc3dc1e81231df63d8ef")
!110 = !{!111, !112}
!111 = !DIEnumerator(name: "PTHREAD_CREATE_JOINABLE", value: 0)
!112 = !DIEnumerator(name: "PTHREAD_CREATE_DETACHED", value: 1)
!113 = !{!114, !202, !518, !522, !524, !383, !386, !230, !437, !164, !31, !525, !390, !7, !526, !219, !687, !391, !176, !392, !1027, !1032}
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "update_ssl_ctx_cb_args_t", file: !116, line: 305, baseType: !117)
!116 = !DIFile(filename: "src/apps/relay/netengine.c", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "1547e26a6cbd9138a782ea8bcf937c15")
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "update_ssl_ctx_cb_args", file: !116, line: 301, size: 192, elements: !118)
!118 = !{!119, !284, !517}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !117, file: !116, line: 302, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_engine_handle", file: !58, line: 120, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_engine", file: !58, line: 119, baseType: !123)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ioa_engine", file: !124, line: 135, size: 536064, elements: !125)
!124 = !DIFile(filename: "src/apps/relay/ns_ioalib_impl.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "39ae1828625a6763b6269ecb34869b6c")
!125 = !{!126, !131, !134, !135, !136, !141, !146, !185, !190, !191, !192, !193, !194, !195, !200, !203, !208, !212, !222, !226, !227, !228, !229, !281}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "sm", scope: !123, file: !124, line: 137, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "super_memory_t", file: !129, line: 49, baseType: !130)
!129 = !DIFile(filename: "src/apps/relay/ns_sm.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "9025fd46a533d33a213551fd581f5b89")
!130 = !DICompositeType(tag: DW_TAG_structure_type, name: "_super_memory", file: !129, line: 48, flags: DIFlagFwdDecl)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "event_base", scope: !123, file: !124, line: 138, baseType: !132, size: 64, offset: 64)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DICompositeType(tag: DW_TAG_structure_type, name: "event_base", file: !98, line: 118, flags: DIFlagFwdDecl)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "deallocate_eb", scope: !123, file: !124, line: 139, baseType: !31, size: 32, offset: 128)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "verbose", scope: !123, file: !124, line: 140, baseType: !31, size: 32, offset: 160)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "tp", scope: !123, file: !124, line: 141, baseType: !137, size: 64, offset: 192)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "turnipports", file: !139, line: 50, baseType: !140)
!139 = !DIFile(filename: "src/apps/relay/turn_ports.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "11983eef23ed630198ed333562550552")
!140 = !DICompositeType(tag: DW_TAG_structure_type, name: "_turnipports", file: !139, line: 49, flags: DIFlagFwdDecl)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "map_rtcp", scope: !123, file: !124, line: 142, baseType: !142, size: 64, offset: 256)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtcp_map", file: !144, line: 46, baseType: !145)
!144 = !DIFile(filename: "src/server/ns_turn_maps_rtcp.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "8bedcc1443244c8ca394e26ac35053c7")
!145 = !DICompositeType(tag: DW_TAG_structure_type, name: "_rtcp_map", file: !144, line: 45, flags: DIFlagFwdDecl)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "bufs", scope: !123, file: !124, line: 143, baseType: !147, size: 128, offset: 320)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "stun_buffer_list", file: !124, line: 81, baseType: !148)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_stun_buffer_list", file: !124, line: 78, size: 128, elements: !149)
!149 = !{!150, !184}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !148, file: !124, line: 79, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "stun_buffer_list_elem", file: !124, line: 76, baseType: !153)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_stun_buffer_list_elem", file: !124, line: 73, size: 524288, elements: !154)
!154 = !{!155, !157}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !153, file: !124, line: 74, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !153, file: !124, line: 75, baseType: !158, size: 524224, offset: 64)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "stun_buffer", file: !159, line: 48, baseType: !160)
!159 = !DIFile(filename: "src/apps/common/stun_buffer.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "cc7948905c033a0fb654060699acf9e2")
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_stun_buffer", file: !159, line: 42, size: 524224, elements: !161)
!161 = !{!162, !171, !175, !179, !183}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !160, file: !159, line: 43, baseType: !163, size: 32)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 32, elements: !169)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !165, line: 24, baseType: !166)
!165 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !167, line: 38, baseType: !168)
!167 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!168 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!169 = !{!170}
!170 = !DISubrange(count: 4)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !160, file: !159, line: 44, baseType: !172, size: 524056, offset: 32)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 524056, elements: !173)
!173 = !{!174}
!174 = !DISubrange(count: 65507)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !160, file: !159, line: 45, baseType: !176, size: 64, offset: 524096)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !177, line: 46, baseType: !178)
!177 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!178 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !160, file: !159, line: 46, baseType: !180, size: 16, offset: 524160)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !165, line: 25, baseType: !181)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !167, line: 40, baseType: !182)
!182 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "coffset", scope: !160, file: !159, line: 47, baseType: !164, size: 8, offset: 524176)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "tsz", scope: !148, file: !124, line: 80, baseType: !176, size: 64, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ctx_ssl23", scope: !123, file: !124, line: 144, baseType: !186, size: 64, offset: 448)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_CTX", file: !188, line: 185, baseType: !189)
!188 = !DIFile(filename: "/usr/include/openssl/types.h", directory: "", checksumkind: CSK_MD5, checksum: "44f1236065e4ee65cf4cd545c3e12ab9")
!189 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_ctx_st", file: !188, line: 185, flags: DIFlagFwdDecl)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ctx_v1_0", scope: !123, file: !124, line: 145, baseType: !186, size: 64, offset: 512)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ctx_v1_1", scope: !123, file: !124, line: 147, baseType: !186, size: 64, offset: 576)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ctx_v1_2", scope: !123, file: !124, line: 149, baseType: !186, size: 64, offset: 640)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "dtls_ctx", scope: !123, file: !124, line: 153, baseType: !186, size: 64, offset: 704)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "dtls_ctx_v1_2", scope: !123, file: !124, line: 156, baseType: !186, size: 64, offset: 768)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "jiffie", scope: !123, file: !124, line: 158, baseType: !196, size: 32, offset: 832)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_time_t", file: !197, line: 108, baseType: !198)
!197 = !DIFile(filename: "src/ns_turn_defs.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "126e9c9d0b914de7fdf6162f77453397")
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !165, line: 26, baseType: !199)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !167, line: 42, baseType: !7)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "timer_ev", scope: !123, file: !124, line: 159, baseType: !201, size: 64, offset: 896)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_timer_handle", file: !58, line: 122, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "cmsg", scope: !123, file: !124, line: 160, baseType: !204, size: 524296, offset: 960)
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 524296, elements: !206)
!205 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!206 = !{!207}
!207 = !DISubrange(count: 65537)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "predef_timer_intervals", scope: !123, file: !124, line: 161, baseType: !209, size: 448, offset: 525280)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 448, elements: !210)
!210 = !{!211}
!211 = !DISubrange(count: 14)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "predef_timers", scope: !123, file: !124, line: 162, baseType: !213, size: 1792, offset: 525760)
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 1792, elements: !210)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !215, line: 8, size: 128, elements: !216)
!215 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h", directory: "", checksumkind: CSK_MD5, checksum: "9b45d950050c215f216850b27bd1e8f3")
!216 = !{!217, !220}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !214, file: !215, line: 14, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !167, line: 160, baseType: !219)
!219 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !214, file: !215, line: 15, baseType: !221, size: 64, offset: 64)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !167, line: 162, baseType: !219)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "relay_ifname", scope: !123, file: !124, line: 164, baseType: !223, size: 8200, offset: 527552)
!223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 8200, elements: !224)
!224 = !{!225}
!225 = !DISubrange(count: 1025)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "default_relays", scope: !123, file: !124, line: 165, baseType: !31, size: 32, offset: 535776)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "relays_number", scope: !123, file: !124, line: 166, baseType: !176, size: 64, offset: 535808)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "relay_addr_counter", scope: !123, file: !124, line: 167, baseType: !176, size: 64, offset: 535872)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "relay_addrs", scope: !123, file: !124, line: 168, baseType: !230, size: 64, offset: 535936)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_addr", file: !232, line: 48, baseType: !233)
!232 = !DIFile(filename: "src/client/ns_turn_ioaddr.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "6bb7c107d1e7937049c12f6d0dffd94c")
!233 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !232, line: 44, size: 224, elements: !234)
!234 = !{!235, !244, !260}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !233, file: !232, line: 45, baseType: !236, size: 128)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !237, line: 180, size: 128, elements: !238)
!237 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "e3826be048699664d9ef7b080f62f2e0")
!238 = !{!239, !242}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !236, file: !237, line: 182, baseType: !240, size: 16)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !241, line: 28, baseType: !182)
!241 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "dd7f1d9dd6e26f88d1726905ed5d9ff5")
!242 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !236, file: !237, line: 183, baseType: !243, size: 112, offset: 16)
!243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 112, elements: !210)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "s4", scope: !233, file: !232, line: 46, baseType: !245, size: 128)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !246, line: 245, size: 128, elements: !247)
!246 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "eb6560f10d4cfe9f30fea2c92b9da0fd")
!247 = !{!248, !249, !251, !256}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !245, file: !246, line: 247, baseType: !240, size: 16)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !245, file: !246, line: 248, baseType: !250, size: 16, offset: 16)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !246, line: 123, baseType: !180)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !245, file: !246, line: 249, baseType: !252, size: 32, offset: 32)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !246, line: 31, size: 32, elements: !253)
!253 = !{!254}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !252, file: !246, line: 33, baseType: !255, size: 32)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !246, line: 30, baseType: !198)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !245, file: !246, line: 252, baseType: !257, size: 64, offset: 64)
!257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 64, elements: !258)
!258 = !{!259}
!259 = !DISubrange(count: 8)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "s6", scope: !233, file: !232, line: 47, baseType: !261, size: 224)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !246, line: 260, size: 224, elements: !262)
!262 = !{!263, !264, !265, !266, !280}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_family", scope: !261, file: !246, line: 262, baseType: !240, size: 16)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_port", scope: !261, file: !246, line: 263, baseType: !250, size: 16, offset: 16)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_flowinfo", scope: !261, file: !246, line: 264, baseType: !198, size: 32, offset: 32)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !261, file: !246, line: 265, baseType: !267, size: 128, offset: 64)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !246, line: 219, size: 128, elements: !268)
!268 = !{!269}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !267, file: !246, line: 226, baseType: !270, size: 128)
!270 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !267, file: !246, line: 221, size: 128, elements: !271)
!271 = !{!272, !276, !278}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !270, file: !246, line: 223, baseType: !273, size: 128)
!273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 128, elements: !274)
!274 = !{!275}
!275 = !DISubrange(count: 16)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !270, file: !246, line: 224, baseType: !277, size: 128)
!277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 128, elements: !258)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !270, file: !246, line: 225, baseType: !279, size: 128)
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 128, elements: !169)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_scope_id", scope: !261, file: !246, line: 266, baseType: !198, size: 32, offset: 192)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "rch", scope: !123, file: !124, line: 169, baseType: !282, size: 64, offset: 536000)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "redis_context_handle", file: !283, line: 45, baseType: !202)
!283 = !DIFile(filename: "src/apps/common/hiredis_libevent2.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "8bcf7d75479c12c7a6031a30f30ef1f7")
!284 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !117, file: !116, line: 303, baseType: !285, size: 64, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_params_t", file: !6, line: 341, baseType: !287)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_turn_params_", file: !6, line: 174, size: 132992, elements: !288)
!288 = !{!289, !290, !291, !292, !293, !294, !295, !297, !298, !302, !303, !304, !305, !309, !310, !311, !312, !313, !314, !315, !319, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !367, !368, !369, !370, !371, !398, !419, !420, !422, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !438, !439, !440, !441, !442, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !472, !473, !475, !476, !477, !478, !479, !480, !507, !508, !509, !511, !513, !514, !515, !516}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ctx_ssl23", scope: !287, file: !6, line: 178, baseType: !186, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ctx_v1_0", scope: !287, file: !6, line: 180, baseType: !186, size: 64, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ctx_v1_1", scope: !287, file: !6, line: 183, baseType: !186, size: 64, offset: 128)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ctx_v1_2", scope: !287, file: !6, line: 185, baseType: !186, size: 64, offset: 192)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "dtls_ctx", scope: !287, file: !6, line: 190, baseType: !186, size: 64, offset: 256)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "dtls_ctx_v1_2", scope: !287, file: !6, line: 192, baseType: !186, size: 64, offset: 320)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "dh_key_size", scope: !287, file: !6, line: 196, baseType: !296, size: 32, offset: 384)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "DH_KEY_SIZE", file: !6, line: 121, baseType: !5)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "cipher_list", scope: !287, file: !6, line: 198, baseType: !223, size: 8200, offset: 416)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "ec_curve_name", scope: !287, file: !6, line: 199, baseType: !299, size: 264, offset: 8616)
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 264, elements: !300)
!300 = !{!301}
!301 = !DISubrange(count: 33)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "ca_cert_file", scope: !287, file: !6, line: 201, baseType: !223, size: 8200, offset: 8880)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "cert_file", scope: !287, file: !6, line: 202, baseType: !223, size: 8200, offset: 17080)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_file", scope: !287, file: !6, line: 203, baseType: !223, size: 8200, offset: 25280)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "tls_password", scope: !287, file: !6, line: 204, baseType: !306, size: 4104, offset: 33480)
!306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 4104, elements: !307)
!307 = !{!308}
!308 = !DISubrange(count: 513)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "dh_file", scope: !287, file: !6, line: 205, baseType: !223, size: 8200, offset: 37584)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "no_tlsv1", scope: !287, file: !6, line: 207, baseType: !31, size: 32, offset: 45792)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "no_tlsv1_1", scope: !287, file: !6, line: 208, baseType: !31, size: 32, offset: 45824)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "no_tlsv1_2", scope: !287, file: !6, line: 209, baseType: !31, size: 32, offset: 45856)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "no_tls", scope: !287, file: !6, line: 210, baseType: !31, size: 32, offset: 45888)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "no_dtls", scope: !287, file: !6, line: 211, baseType: !31, size: 32, offset: 45920)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ctx_update_ev", scope: !287, file: !6, line: 213, baseType: !316, size: 64, offset: 45952)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DICompositeType(tag: DW_TAG_structure_type, name: "event", file: !318, line: 276, flags: DIFlagFwdDecl)
!318 = !DIFile(filename: "/usr/include/event2/event.h", directory: "", checksumkind: CSK_MD5, checksum: "90db4fa73456052afa8984291985dfd5")
!319 = !DIDerivedType(tag: DW_TAG_member, name: "tls_mutex", scope: !287, file: !6, line: 214, baseType: !320, size: 320, offset: 46016)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !321, line: 72, baseType: !322)
!321 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!322 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !321, line: 67, size: 320, elements: !323)
!323 = !{!324, !344, !348}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !322, file: !321, line: 69, baseType: !325, size: 320)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !326, line: 22, size: 320, elements: !327)
!326 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "584baedd80e6041b81caae7f496091c0")
!327 = !{!328, !329, !330, !331, !332, !333, !335, !336}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !325, file: !326, line: 24, baseType: !31, size: 32)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !325, file: !326, line: 25, baseType: !7, size: 32, offset: 32)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !325, file: !326, line: 26, baseType: !31, size: 32, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !325, file: !326, line: 28, baseType: !7, size: 32, offset: 96)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !325, file: !326, line: 32, baseType: !31, size: 32, offset: 128)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !325, file: !326, line: 34, baseType: !334, size: 16, offset: 160)
!334 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !325, file: !326, line: 35, baseType: !334, size: 16, offset: 176)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !325, file: !326, line: 36, baseType: !337, size: 128, offset: 192)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !338, line: 55, baseType: !339)
!338 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "04c81e86d34dad9c99ad006d32e47a0d")
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !338, line: 51, size: 128, elements: !340)
!340 = !{!341, !343}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !339, file: !338, line: 53, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !339, file: !338, line: 54, baseType: !342, size: 64, offset: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !322, file: !321, line: 70, baseType: !345, size: 320)
!345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 320, elements: !346)
!346 = !{!347}
!347 = !DISubrange(count: 40)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !322, file: !321, line: 71, baseType: !219, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "verbose", scope: !287, file: !6, line: 218, baseType: !31, size: 32, offset: 46336)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "turn_daemon", scope: !287, file: !6, line: 219, baseType: !31, size: 32, offset: 46368)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "no_software_attribute", scope: !287, file: !6, line: 220, baseType: !31, size: 32, offset: 46400)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "web_admin_listen_on_workers", scope: !287, file: !6, line: 221, baseType: !31, size: 32, offset: 46432)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "do_not_use_config_file", scope: !287, file: !6, line: 223, baseType: !31, size: 32, offset: 46464)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "pidfile", scope: !287, file: !6, line: 225, baseType: !223, size: 8200, offset: 46496)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "acme_redirect", scope: !287, file: !6, line: 226, baseType: !223, size: 8200, offset: 54696)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "listener_port", scope: !287, file: !6, line: 230, baseType: !31, size: 32, offset: 62912)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "tls_listener_port", scope: !287, file: !6, line: 231, baseType: !31, size: 32, offset: 62944)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "alt_listener_port", scope: !287, file: !6, line: 232, baseType: !31, size: 32, offset: 62976)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "alt_tls_listener_port", scope: !287, file: !6, line: 233, baseType: !31, size: 32, offset: 63008)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_proxy_port", scope: !287, file: !6, line: 234, baseType: !31, size: 32, offset: 63040)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "rfc5780", scope: !287, file: !6, line: 235, baseType: !31, size: 32, offset: 63072)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "no_udp", scope: !287, file: !6, line: 237, baseType: !31, size: 32, offset: 63104)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "no_tcp", scope: !287, file: !6, line: 238, baseType: !31, size: 32, offset: 63136)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_use_proxy", scope: !287, file: !6, line: 239, baseType: !31, size: 32, offset: 63168)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "no_tcp_relay", scope: !287, file: !6, line: 241, baseType: !366, size: 32, offset: 63200)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "vint", file: !197, line: 105, baseType: !31)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "no_udp_relay", scope: !287, file: !6, line: 242, baseType: !366, size: 32, offset: 63232)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "listener_ifname", scope: !287, file: !6, line: 244, baseType: !223, size: 8200, offset: 63264)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "redis_statsdb", scope: !287, file: !6, line: 246, baseType: !223, size: 8200, offset: 71464)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "use_redis_statsdb", scope: !287, file: !6, line: 247, baseType: !31, size: 32, offset: 79680)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "listener", scope: !287, file: !6, line: 249, baseType: !372, size: 832, offset: 79744)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listener_server", file: !6, line: 144, size: 832, elements: !373)
!373 = !{!374, !375, !376, !377, !378, !381, !382, !385, !387, !388, !389, !396, !397}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "rtcpmap", scope: !372, file: !6, line: 145, baseType: !142, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "tp", scope: !372, file: !6, line: 146, baseType: !137, size: 64, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "event_base", scope: !372, file: !6, line: 147, baseType: !132, size: 64, offset: 128)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "ioa_eng", scope: !372, file: !6, line: 148, baseType: !120, size: 64, offset: 192)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "in_buf", scope: !372, file: !6, line: 149, baseType: !379, size: 64, offset: 256)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferevent", file: !98, line: 113, flags: DIFlagFwdDecl)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "out_buf", scope: !372, file: !6, line: 150, baseType: !379, size: 64, offset: 320)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !372, file: !6, line: 151, baseType: !383, size: 64, offset: 384)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "encaddrs", scope: !372, file: !6, line: 152, baseType: !386, size: 64, offset: 448)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "addrs_number", scope: !372, file: !6, line: 153, baseType: !176, size: 64, offset: 512)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "services_number", scope: !372, file: !6, line: 154, baseType: !176, size: 64, offset: 576)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "udp_services", scope: !372, file: !6, line: 155, baseType: !390, size: 64, offset: 640)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "dtls_listener_relay_server_type", file: !394, line: 49, baseType: !395)
!394 = !DIFile(filename: "src/apps/relay/dtls_listener.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "0781c076e4412130d98f5f3bddf10861")
!395 = !DICompositeType(tag: DW_TAG_structure_type, name: "dtls_listener_relay_server_info", file: !394, line: 48, flags: DIFlagFwdDecl)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "dtls_services", scope: !372, file: !6, line: 156, baseType: !390, size: 64, offset: 704)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "aux_udp_services", scope: !372, file: !6, line: 157, baseType: !390, size: 64, offset: 768)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "ip_whitelist", scope: !287, file: !6, line: 251, baseType: !399, size: 128, offset: 80576)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip_range_list_t", file: !58, line: 159, baseType: !400)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ip_range_list", file: !58, line: 154, size: 128, elements: !401)
!401 = !{!402, !418}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "rs", scope: !400, file: !58, line: 155, baseType: !403, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip_range_t", file: !58, line: 152, baseType: !405)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ip_range", file: !58, line: 146, size: 6624, elements: !406)
!406 = !{!407, !411, !412}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !405, file: !58, line: 147, baseType: !408, size: 2056)
!408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 2056, elements: !409)
!409 = !{!410}
!410 = !DISubrange(count: 257)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "realm", scope: !405, file: !58, line: 148, baseType: !306, size: 4104, offset: 2056)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "enc", scope: !405, file: !58, line: 149, baseType: !413, size: 448, offset: 6176)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_addr_range", file: !232, line: 53, baseType: !414)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !232, line: 50, size: 448, elements: !415)
!415 = !{!416, !417}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !414, file: !232, line: 51, baseType: !231, size: 224)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !414, file: !232, line: 52, baseType: !231, size: 224, offset: 224)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "ranges_number", scope: !400, file: !58, line: 156, baseType: !176, size: 64, offset: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "ip_blacklist", scope: !287, file: !6, line: 252, baseType: !399, size: 128, offset: 80704)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "net_engine_version", scope: !287, file: !6, line: 254, baseType: !421, size: 32, offset: 80832)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_ENG_VERSION", file: !6, line: 170, baseType: !13)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "net_engine_version_txt", scope: !287, file: !6, line: 255, baseType: !423, size: 256, offset: 80896)
!423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !424, size: 256, elements: !169)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !205)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "min_port", scope: !287, file: !6, line: 259, baseType: !180, size: 16, offset: 81152)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "max_port", scope: !287, file: !6, line: 260, baseType: !180, size: 16, offset: 81168)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "check_origin", scope: !287, file: !6, line: 262, baseType: !366, size: 32, offset: 81184)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "no_multicast_peers", scope: !287, file: !6, line: 264, baseType: !366, size: 32, offset: 81216)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "allow_loopback_peers", scope: !287, file: !6, line: 265, baseType: !366, size: 32, offset: 81248)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "relay_ifname", scope: !287, file: !6, line: 267, baseType: !223, size: 8200, offset: 81280)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "relays_number", scope: !287, file: !6, line: 269, baseType: !176, size: 64, offset: 89536)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "relay_addrs", scope: !287, file: !6, line: 270, baseType: !383, size: 64, offset: 89600)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "default_relays", scope: !287, file: !6, line: 271, baseType: !31, size: 32, offset: 89664)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "external_ip", scope: !287, file: !6, line: 276, baseType: !230, size: 64, offset: 89728)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "general_relay_servers_number", scope: !287, file: !6, line: 278, baseType: !437, size: 8, offset: 89792)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "turnserver_id", file: !40, line: 67, baseType: !164)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "udp_relay_servers_number", scope: !287, file: !6, line: 279, baseType: !437, size: 8, offset: 89800)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "oauth_server_name", scope: !287, file: !6, line: 283, baseType: !223, size: 8200, offset: 89808)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !287, file: !6, line: 284, baseType: !223, size: 8200, offset: 98008)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "oauth", scope: !287, file: !6, line: 285, baseType: !31, size: 32, offset: 106208)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "aux_servers_list", scope: !287, file: !6, line: 289, baseType: !443, size: 256, offset: 106240)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_server_addrs_list_t", file: !40, line: 53, baseType: !444)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_turn_server_addrs_list", file: !40, line: 47, size: 256, elements: !445)
!445 = !{!446, !447, !449}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !444, file: !40, line: 48, baseType: !230, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !444, file: !40, line: 49, baseType: !448, size: 64, offset: 64)
!448 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !176)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !444, file: !40, line: 50, baseType: !450, size: 128, offset: 128)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_mutex", file: !58, line: 60, baseType: !451)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_turn_mutex", file: !58, line: 55, size: 128, elements: !452)
!452 = !{!453, !454}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !451, file: !58, line: 56, baseType: !198, size: 32)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !451, file: !58, line: 57, baseType: !202, size: 64, offset: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "udp_self_balance", scope: !287, file: !6, line: 290, baseType: !31, size: 32, offset: 106496)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "alternate_servers_list", scope: !287, file: !6, line: 294, baseType: !443, size: 256, offset: 106560)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "tls_alternate_servers_list", scope: !287, file: !6, line: 295, baseType: !443, size: 256, offset: 106816)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "stop_turn_server", scope: !287, file: !6, line: 297, baseType: !31, size: 32, offset: 107072)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "stun_only", scope: !287, file: !6, line: 301, baseType: !366, size: 32, offset: 107104)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "no_stun", scope: !287, file: !6, line: 302, baseType: !366, size: 32, offset: 107136)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "secure_stun", scope: !287, file: !6, line: 303, baseType: !366, size: 32, offset: 107168)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "server_relay", scope: !287, file: !6, line: 304, baseType: !31, size: 32, offset: 107200)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "fingerprint", scope: !287, file: !6, line: 305, baseType: !31, size: 32, offset: 107232)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "rest_api_separator", scope: !287, file: !6, line: 306, baseType: !205, size: 8, offset: 107264)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "stale_nonce", scope: !287, file: !6, line: 307, baseType: !366, size: 32, offset: 107296)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "max_allocate_lifetime", scope: !287, file: !6, line: 308, baseType: !366, size: 32, offset: 107328)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "channel_lifetime", scope: !287, file: !6, line: 309, baseType: !366, size: 32, offset: 107360)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "permission_lifetime", scope: !287, file: !6, line: 310, baseType: !366, size: 32, offset: 107392)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "mobility", scope: !287, file: !6, line: 311, baseType: !366, size: 32, offset: 107424)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "ct", scope: !287, file: !6, line: 312, baseType: !471, size: 32, offset: 107456)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_credential_type", file: !23, line: 59, baseType: !22)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "use_auth_secret_with_timestamp", scope: !287, file: !6, line: 313, baseType: !31, size: 32, offset: 107488)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "max_bps", scope: !287, file: !6, line: 314, baseType: !474, size: 64, offset: 107520)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "band_limit_t", file: !23, line: 67, baseType: !178)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "bps_capacity", scope: !287, file: !6, line: 315, baseType: !474, size: 64, offset: 107584)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "bps_capacity_allocated", scope: !287, file: !6, line: 316, baseType: !474, size: 64, offset: 107648)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "total_quota", scope: !287, file: !6, line: 317, baseType: !366, size: 32, offset: 107712)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "user_quota", scope: !287, file: !6, line: 318, baseType: !366, size: 32, offset: 107744)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "prometheus", scope: !287, file: !6, line: 320, baseType: !31, size: 32, offset: 107776)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "default_users_db", scope: !287, file: !6, line: 326, baseType: !481, size: 8512, offset: 107840)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "default_users_db_t", file: !30, line: 167, baseType: !482)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_default_users_db_t", file: !30, line: 159, size: 8512, elements: !483)
!483 = !{!484, !486, !491}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "userdb_type", scope: !482, file: !30, line: 161, baseType: !485, size: 32)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "TURN_USERDB_TYPE", file: !30, line: 117, baseType: !29)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "persistent_users_db", scope: !482, file: !30, line: 163, baseType: !487, size: 8200, offset: 32)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "persistent_users_db_t", file: !30, line: 157, baseType: !488)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_persistent_users_db_t", file: !30, line: 155, size: 8200, elements: !489)
!489 = !{!490}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "userdb", scope: !488, file: !30, line: 156, baseType: !223, size: 8200)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "ram_db", scope: !482, file: !30, line: 165, baseType: !492, size: 256, offset: 8256)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "ram_users_db_t", file: !30, line: 153, baseType: !493)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ram_users_db_t", file: !30, line: 149, size: 256, elements: !494)
!494 = !{!495, !496, !501}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "users_number", scope: !493, file: !30, line: 150, baseType: !176, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "static_accounts", scope: !493, file: !30, line: 151, baseType: !497, size: 64, offset: 64)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "ur_string_map", file: !499, line: 227, baseType: !500)
!499 = !DIFile(filename: "src/server/ns_turn_maps.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "1d968a8e0fbb011891961d10535e1104")
!500 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ur_string_map", file: !499, line: 226, flags: DIFlagFwdDecl)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "static_auth_secrets", scope: !493, file: !30, line: 152, baseType: !502, size: 128, offset: 128)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "secrets_list_t", file: !30, line: 143, baseType: !503)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_secrets_list", file: !30, line: 139, size: 128, elements: !504)
!504 = !{!505, !506}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "secrets", scope: !503, file: !30, line: 140, baseType: !383, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "sz", scope: !503, file: !30, line: 141, baseType: !176, size: 64, offset: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "cpus", scope: !287, file: !6, line: 330, baseType: !178, size: 64, offset: 116352)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "secret_key_file", scope: !287, file: !6, line: 333, baseType: !223, size: 8200, offset: 116416)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "secret_key", scope: !287, file: !6, line: 334, baseType: !510, size: 8200, offset: 124616)
!510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 8200, elements: !224)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "allocation_default_address_family", scope: !287, file: !6, line: 335, baseType: !512, size: 32, offset: 132832)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "ALLOCATION_DEFAULT_ADDRESS_FAMILY", file: !40, line: 84, baseType: !39)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "no_auth_pings", scope: !287, file: !6, line: 336, baseType: !31, size: 32, offset: 132864)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "no_dynamic_ip_list", scope: !287, file: !6, line: 337, baseType: !31, size: 32, offset: 132896)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "no_dynamic_realms", scope: !287, file: !6, line: 338, baseType: !31, size: 32, offset: 132928)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "log_binding", scope: !287, file: !6, line: 340, baseType: !366, size: 32, offset: 132960)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !117, file: !116, line: 304, baseType: !316, size: 64, offset: 128)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "event_callback_fn", file: !318, line: 1014, baseType: !519)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DISubroutineType(types: !521)
!521 = !{null, !31, !334, !202}
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !164)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "authserver_id", file: !116, line: 42, baseType: !168)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "relay_server", file: !124, line: 101, size: 4032, elements: !528)
!528 = !{!529, !530, !531, !532, !533, !534, !535, !536, !537, !1025}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !527, file: !124, line: 102, baseType: !437, size: 8)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "sm", scope: !527, file: !124, line: 103, baseType: !127, size: 64, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "event_base", scope: !527, file: !124, line: 104, baseType: !132, size: 64, offset: 128)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "in_buf", scope: !527, file: !124, line: 105, baseType: !379, size: 64, offset: 192)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "out_buf", scope: !527, file: !124, line: 106, baseType: !379, size: 64, offset: 256)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "auth_in_buf", scope: !527, file: !124, line: 107, baseType: !379, size: 64, offset: 320)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "auth_out_buf", scope: !527, file: !124, line: 108, baseType: !379, size: 64, offset: 384)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "ioa_eng", scope: !527, file: !124, line: 109, baseType: !120, size: 64, offset: 448)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !527, file: !124, line: 110, baseType: !538, size: 3456, offset: 512)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_turnserver", file: !40, line: 99, baseType: !539)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_turn_turnserver", file: !40, line: 111, size: 3456, elements: !540)
!540 = !{!541, !542, !547, !551, !552, !553, !554, !555, !556, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !574, !580, !582, !905, !916, !921, !926, !927, !928, !929, !930, !987, !992, !993, !994, !995, !1002, !1004, !1005, !1006, !1007, !1008, !1009, !1011, !1012, !1013, !1014, !1015, !1020, !1021, !1022, !1023, !1024}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !539, file: !40, line: 113, baseType: !437, size: 8)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "session_id_counter", scope: !539, file: !40, line: 115, baseType: !543, size: 64, offset: 64)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "turnsession_id", file: !544, line: 62, baseType: !545)
!544 = !DIFile(filename: "src/server/ns_turn_session.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "0d3b1381a7fca7a8f35b6ee419f25609")
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !165, line: 27, baseType: !546)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !167, line: 45, baseType: !178)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "sessions_map", scope: !539, file: !40, line: 116, baseType: !548, size: 64, offset: 128)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "ur_map", file: !499, line: 43, baseType: !550)
!550 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ur_map", file: !499, line: 42, flags: DIFlagFwdDecl)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !539, file: !40, line: 118, baseType: !196, size: 32, offset: 192)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !539, file: !40, line: 120, baseType: !120, size: 64, offset: 256)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "verbose", scope: !539, file: !40, line: 121, baseType: !31, size: 32, offset: 320)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "fingerprint", scope: !539, file: !40, line: 122, baseType: !31, size: 32, offset: 352)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "rfc5780", scope: !539, file: !40, line: 123, baseType: !31, size: 32, offset: 384)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "check_origin", scope: !539, file: !40, line: 124, baseType: !557, size: 64, offset: 448)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "vintp", file: !197, line: 106, baseType: !558)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "stale_nonce", scope: !539, file: !40, line: 125, baseType: !557, size: 64, offset: 512)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "max_allocate_lifetime", scope: !539, file: !40, line: 126, baseType: !557, size: 64, offset: 576)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "channel_lifetime", scope: !539, file: !40, line: 127, baseType: !557, size: 64, offset: 640)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "permission_lifetime", scope: !539, file: !40, line: 128, baseType: !557, size: 64, offset: 704)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "stun_only", scope: !539, file: !40, line: 129, baseType: !557, size: 64, offset: 768)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "no_stun", scope: !539, file: !40, line: 130, baseType: !557, size: 64, offset: 832)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "no_software_attribute", scope: !539, file: !40, line: 131, baseType: !557, size: 64, offset: 896)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "web_admin_listen_on_workers", scope: !539, file: !40, line: 132, baseType: !557, size: 64, offset: 960)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "secure_stun", scope: !539, file: !40, line: 133, baseType: !557, size: 64, offset: 1024)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "ct", scope: !539, file: !40, line: 134, baseType: !471, size: 32, offset: 1088)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "alt_addr_cb", scope: !539, file: !40, line: 135, baseType: !570, size: 64, offset: 1152)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "get_alt_addr_cb", file: !40, line: 59, baseType: !571)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DISubroutineType(types: !573)
!573 = !{!31, !230, !230}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "sm_cb", scope: !539, file: !40, line: 136, baseType: !575, size: 64, offset: 1216)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "send_message_cb", file: !40, line: 60, baseType: !576)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DISubroutineType(types: !578)
!578 = !{!31, !120, !579, !230, !230}
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_network_buffer_handle", file: !58, line: 124, baseType: !202)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "dont_fragment", scope: !539, file: !40, line: 137, baseType: !581, size: 32, offset: 1280)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "dont_fragment_option_t", file: !40, line: 96, baseType: !52)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !539, file: !40, line: 138, baseType: !583, size: 64, offset: 1344)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DISubroutineType(types: !585)
!585 = !{!31, !586}
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "ts_ur_super_session", file: !58, line: 47, baseType: !588)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ts_ur_super_session", file: !544, line: 68, size: 152448, elements: !589)
!589 = !{!590, !591, !592, !593, !729, !836, !837, !838, !839, !840, !844, !845, !847, !852, !853, !856, !857, !858, !859, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !902, !903, !904}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !588, file: !544, line: 69, baseType: !202, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !588, file: !544, line: 70, baseType: !543, size: 64, offset: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !588, file: !544, line: 71, baseType: !196, size: 32, offset: 128)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "client_socket", scope: !588, file: !544, line: 72, baseType: !594, size: 64, offset: 192)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_socket_handle", file: !58, line: 116, baseType: !595)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_socket", file: !58, line: 115, baseType: !597)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ioa_socket", file: !124, line: 179, size: 2880, elements: !598)
!598 = !{!599, !600, !602, !603, !627, !628, !629, !630, !632, !634, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !678, !679, !710, !711, !716, !717, !721, !726, !727, !728}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !597, file: !124, line: 181, baseType: !31, size: 32)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "parent_s", scope: !597, file: !124, line: 182, baseType: !601, size: 64, offset: 64)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !597, file: !124, line: 183, baseType: !198, size: 32, offset: 128)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "sockets_container", scope: !597, file: !124, line: 184, baseType: !604, size: 64, offset: 192)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "ur_addr_map", file: !499, line: 183, baseType: !606)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ur_addr_map", file: !499, line: 177, size: 1441856, elements: !607)
!607 = !{!608, !626}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "lists", scope: !606, file: !499, line: 178, baseType: !609, size: 1441792)
!609 = !DICompositeType(tag: DW_TAG_array_type, baseType: !610, size: 1441792, elements: !624)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_list_header", file: !499, line: 175, baseType: !611)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_addr_list_header", file: !499, line: 171, size: 1408, elements: !612)
!612 = !{!613, !621, !623}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "main_list", scope: !611, file: !499, line: 172, baseType: !614, size: 1280)
!614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !615, size: 1280, elements: !169)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_elem", file: !499, line: 169, baseType: !616)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_addr_elem", file: !499, line: 166, size: 320, elements: !617)
!617 = !{!618, !619}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !616, file: !499, line: 167, baseType: !231, size: 224)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !616, file: !499, line: 168, baseType: !620, size: 64, offset: 256)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "ur_addr_map_value_type", file: !499, line: 161, baseType: !178)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "extra_list", scope: !611, file: !499, line: 173, baseType: !622, size: 64, offset: 1280)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "extra_sz", scope: !611, file: !499, line: 174, baseType: !176, size: 64, offset: 1344)
!624 = !{!625}
!625 = !DISubrange(count: 1024)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !606, file: !499, line: 179, baseType: !545, size: 64, offset: 1441792)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "bev", scope: !597, file: !124, line: 185, baseType: !379, size: 64, offset: 256)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "defer_nbh", scope: !597, file: !124, line: 186, baseType: !579, size: 64, offset: 320)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !597, file: !124, line: 187, baseType: !31, size: 32, offset: 384)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "st", scope: !597, file: !124, line: 188, baseType: !631, size: 32, offset: 416)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "SOCKET_TYPE", file: !58, line: 98, baseType: !57)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "sat", scope: !597, file: !124, line: 189, baseType: !633, size: 32, offset: 448)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "SOCKET_APP_TYPE", file: !58, line: 112, baseType: !70)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "ssl", scope: !597, file: !124, line: 190, baseType: !635, size: 64, offset: 512)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL", file: !188, line: 184, baseType: !637)
!637 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_st", file: !188, line: 184, flags: DIFlagFwdDecl)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_renegs", scope: !597, file: !124, line: 191, baseType: !198, size: 32, offset: 576)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "in_write", scope: !597, file: !124, line: 192, baseType: !31, size: 32, offset: 608)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "bound", scope: !597, file: !124, line: 193, baseType: !31, size: 32, offset: 640)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "local_addr_known", scope: !597, file: !124, line: 194, baseType: !31, size: 32, offset: 672)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "local_addr", scope: !597, file: !124, line: 195, baseType: !231, size: 224, offset: 704)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !597, file: !124, line: 196, baseType: !31, size: 32, offset: 928)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "remote_addr", scope: !597, file: !124, line: 197, baseType: !231, size: 224, offset: 960)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !597, file: !124, line: 198, baseType: !120, size: 64, offset: 1216)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "read_event", scope: !597, file: !124, line: 199, baseType: !316, size: 64, offset: 1280)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "read_cb", scope: !597, file: !124, line: 200, baseType: !648, size: 64, offset: 1344)
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_net_event_handler", file: !58, line: 199, baseType: !649)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DISubroutineType(types: !651)
!651 = !{null, !594, !31, !652, !202, !31}
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_net_data", file: !58, line: 132, baseType: !654)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ioa_net_data", file: !58, line: 127, size: 384, elements: !655)
!655 = !{!656, !657, !658, !659}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "src_addr", scope: !654, file: !58, line: 128, baseType: !231, size: 224)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "nbh", scope: !654, file: !58, line: 129, baseType: !579, size: 64, offset: 256)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "recv_ttl", scope: !654, file: !58, line: 130, baseType: !31, size: 32, offset: 320)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "recv_tos", scope: !654, file: !58, line: 131, baseType: !31, size: 32, offset: 352)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "read_ctx", scope: !597, file: !124, line: 201, baseType: !202, size: 64, offset: 1408)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !597, file: !124, line: 202, baseType: !31, size: 32, offset: 1472)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !597, file: !124, line: 203, baseType: !586, size: 64, offset: 1536)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "current_df_relay_flag", scope: !597, file: !124, line: 204, baseType: !31, size: 32, offset: 1600)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "do_not_use_df", scope: !597, file: !124, line: 206, baseType: !31, size: 32, offset: 1632)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "tobeclosed", scope: !597, file: !124, line: 207, baseType: !31, size: 32, offset: 1664)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "broken", scope: !597, file: !124, line: 208, baseType: !31, size: 32, offset: 1696)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "default_ttl", scope: !597, file: !124, line: 209, baseType: !31, size: 32, offset: 1728)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "current_ttl", scope: !597, file: !124, line: 210, baseType: !31, size: 32, offset: 1760)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "default_tos", scope: !597, file: !124, line: 211, baseType: !31, size: 32, offset: 1792)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "current_tos", scope: !597, file: !124, line: 212, baseType: !31, size: 32, offset: 1824)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "bufs", scope: !597, file: !124, line: 213, baseType: !147, size: 128, offset: 1856)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "jiffie", scope: !597, file: !124, line: 214, baseType: !196, size: 32, offset: 1984)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "data_traffic", scope: !597, file: !124, line: 215, baseType: !674, size: 128, offset: 2048)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "traffic_bytes", file: !124, line: 174, size: 128, elements: !675)
!675 = !{!676, !677}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "jiffie_bytes_read", scope: !674, file: !124, line: 175, baseType: !474, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "jiffie_bytes_write", scope: !674, file: !124, line: 176, baseType: !474, size: 64, offset: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "control_traffic", scope: !597, file: !124, line: 216, baseType: !674, size: 128, offset: 2176)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "sub_session", scope: !597, file: !124, line: 219, baseType: !680, size: 64, offset: 2304)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_connection", file: !58, line: 50, baseType: !682)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_tcp_connection", file: !82, line: 85, size: 960, elements: !683)
!683 = !{!684, !686, !688, !689, !690, !691, !692, !693, !701, !702, !703}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !682, file: !82, line: 87, baseType: !685, size: 32)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "TC_STATE", file: !82, line: 76, baseType: !81)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !682, file: !82, line: 88, baseType: !687, size: 32, offset: 32)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_connection_id", file: !82, line: 78, baseType: !198)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "peer_addr", scope: !682, file: !82, line: 89, baseType: !231, size: 224, offset: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "client_s", scope: !682, file: !82, line: 90, baseType: !594, size: 64, offset: 320)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "peer_s", scope: !682, file: !82, line: 91, baseType: !594, size: 64, offset: 384)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "peer_conn_timeout", scope: !682, file: !82, line: 92, baseType: !201, size: 64, offset: 448)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "conn_bind_timeout", scope: !682, file: !82, line: 93, baseType: !201, size: 64, offset: 512)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !682, file: !82, line: 94, baseType: !694, size: 96, offset: 576)
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "stun_tid", file: !23, line: 52, baseType: !695)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !23, line: 47, size: 96, elements: !696)
!696 = !{!697}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "tsx_id", scope: !695, file: !23, line: 51, baseType: !698, size: 96)
!698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 96, elements: !699)
!699 = !{!700}
!700 = !DISubrange(count: 12)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !682, file: !82, line: 95, baseType: !202, size: 64, offset: 704)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !682, file: !82, line: 96, baseType: !31, size: 32, offset: 768)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "ub_to_client", scope: !682, file: !82, line: 97, baseType: !704, size: 128, offset: 832)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "unsent_buffer", file: !82, line: 83, baseType: !705)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !82, line: 80, size: 128, elements: !706)
!706 = !{!707, !708}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "sz", scope: !705, file: !82, line: 81, baseType: !176, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "bufs", scope: !705, file: !82, line: 82, baseType: !709, size: 64, offset: 64)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "conn_bev", scope: !597, file: !124, line: 221, baseType: !379, size: 64, offset: 2368)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "conn_cb", scope: !597, file: !124, line: 222, baseType: !712, size: 64, offset: 2432)
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "connect_cb", file: !58, line: 135, baseType: !713)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DISubroutineType(types: !715)
!715 = !{null, !31, !202}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "conn_arg", scope: !597, file: !124, line: 223, baseType: !202, size: 64, offset: 2496)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "list_ev", scope: !597, file: !124, line: 225, baseType: !718, size: 64, offset: 2560)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DICompositeType(tag: DW_TAG_structure_type, name: "evconnlistener", file: !720, line: 69, flags: DIFlagFwdDecl)
!720 = !DIFile(filename: "src/apps/relay/turn_admin_server.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "72080e29702b34b58984e3ea957f1f4c")
!721 = !DIDerivedType(tag: DW_TAG_member, name: "acb", scope: !597, file: !124, line: 226, baseType: !722, size: 64, offset: 2624)
!722 = !DIDerivedType(tag: DW_TAG_typedef, name: "accept_cb", file: !58, line: 137, baseType: !723)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DISubroutineType(types: !725)
!725 = !{null, !594, !202}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "acbarg", scope: !597, file: !124, line: 227, baseType: !202, size: 64, offset: 2688)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "special_session", scope: !597, file: !124, line: 229, baseType: !202, size: 64, offset: 2752)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "special_session_size", scope: !597, file: !124, line: 230, baseType: !176, size: 64, offset: 2816)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !588, file: !544, line: 73, baseType: !730, size: 141120, offset: 256)
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocation", file: !82, line: 186, baseType: !731)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_allocation", file: !82, line: 176, size: 141120, elements: !732)
!732 = !{!733, !734, !735, !789, !799, !801, !827, !828, !829}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "is_valid", scope: !731, file: !82, line: 177, baseType: !31, size: 32)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !731, file: !82, line: 178, baseType: !694, size: 96, offset: 32)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "addr_to_perm", scope: !731, file: !82, line: 179, baseType: !736, size: 125440, offset: 128)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_permission_hashtable", file: !82, line: 166, baseType: !737)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_turn_permission_hashtable", file: !82, line: 164, size: 125440, elements: !738)
!738 = !{!739}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !737, file: !82, line: 165, baseType: !740, size: 125440)
!740 = !DICompositeType(tag: DW_TAG_array_type, baseType: !741, size: 125440, elements: !258)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_permission_array", file: !82, line: 162, baseType: !742)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_turn_permission_array", file: !82, line: 158, size: 15680, elements: !743)
!743 = !{!744, !785, !786}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "main_slots", scope: !742, file: !82, line: 159, baseType: !745, size: 15552)
!745 = !DICompositeType(tag: DW_TAG_array_type, baseType: !746, size: 15552, elements: !766)
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_permission_slot", file: !82, line: 156, baseType: !747)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_turn_permission_slot", file: !82, line: 154, size: 5184, elements: !748)
!748 = !{!749}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !747, file: !82, line: 155, baseType: !750, size: 5184)
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_permission_info", file: !82, line: 152, baseType: !751)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_turn_permission_info", file: !82, line: 143, size: 5184, elements: !752)
!752 = !{!753, !754, !778, !779, !780, !781, !782, !783}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !751, file: !82, line: 144, baseType: !31, size: 32)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "chns", scope: !751, file: !82, line: 145, baseType: !755, size: 4608, offset: 64)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "lm_map", file: !499, line: 117, baseType: !756)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_lm_map", file: !499, line: 115, size: 4608, elements: !757)
!757 = !{!758}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !756, file: !499, line: 116, baseType: !759, size: 4608)
!759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !760, size: 4608, elements: !258)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "lm_map_array", file: !499, line: 113, baseType: !761)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_lm_map_array", file: !499, line: 107, size: 576, elements: !762)
!762 = !{!763, !768, !771, !772, !775}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "main_keys", scope: !761, file: !499, line: 108, baseType: !764, size: 192)
!764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !765, size: 192, elements: !766)
!765 = !DIDerivedType(tag: DW_TAG_typedef, name: "ur_map_key_type", file: !499, line: 47, baseType: !545)
!766 = !{!767}
!767 = !DISubrange(count: 3)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "main_values", scope: !761, file: !499, line: 109, baseType: !769, size: 192, offset: 192)
!769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !770, size: 192, elements: !766)
!770 = !DIDerivedType(tag: DW_TAG_typedef, name: "ur_map_value_type", file: !499, line: 48, baseType: !178)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "extra_sz", scope: !761, file: !499, line: 110, baseType: !176, size: 64, offset: 384)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "extra_keys", scope: !761, file: !499, line: 111, baseType: !773, size: 64, offset: 448)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "extra_values", scope: !761, file: !499, line: 112, baseType: !776, size: 64, offset: 512)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !751, file: !82, line: 146, baseType: !231, size: 224, offset: 4672)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "expiration_time", scope: !751, file: !82, line: 147, baseType: !196, size: 32, offset: 4896)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "lifetime_ev", scope: !751, file: !82, line: 148, baseType: !201, size: 64, offset: 4928)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !751, file: !82, line: 149, baseType: !202, size: 64, offset: 4992)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "verbose", scope: !751, file: !82, line: 150, baseType: !31, size: 32, offset: 5056)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "session_id", scope: !751, file: !82, line: 151, baseType: !784, size: 64, offset: 5120)
!784 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "extra_sz", scope: !742, file: !82, line: 160, baseType: !176, size: 64, offset: 15552)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "extra_slots", scope: !742, file: !82, line: 161, baseType: !787, size: 64, offset: 15616)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "relay_sessions", scope: !731, file: !82, line: 180, baseType: !790, size: 384, offset: 125568)
!790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !791, size: 384, elements: !797)
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "relay_endpoint_session", file: !82, line: 55, baseType: !792)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !82, line: 50, size: 192, elements: !793)
!793 = !{!794, !795, !796}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !792, file: !82, line: 52, baseType: !594, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "expiration_time", scope: !792, file: !82, line: 53, baseType: !196, size: 32, offset: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "lifetime_ev", scope: !792, file: !82, line: 54, baseType: !201, size: 64, offset: 128)
!797 = !{!798}
!798 = !DISubrange(count: 2)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "relay_sessions_failure", scope: !731, file: !82, line: 181, baseType: !800, size: 64, offset: 125952)
!800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 64, elements: !797)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "chns", scope: !731, file: !82, line: 182, baseType: !802, size: 14848, offset: 126016)
!802 = !DIDerivedType(tag: DW_TAG_typedef, name: "ch_map", file: !82, line: 136, baseType: !803)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ch_map", file: !82, line: 134, size: 14848, elements: !804)
!804 = !{!805}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !803, file: !82, line: 135, baseType: !806, size: 14848)
!806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !807, size: 14848, elements: !258)
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "ch_map_array", file: !82, line: 132, baseType: !808)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_chn_map_array", file: !82, line: 128, size: 1856, elements: !809)
!809 = !{!810, !823, !824}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "main_chns", scope: !808, file: !82, line: 129, baseType: !811, size: 1728)
!811 = !DICompositeType(tag: DW_TAG_array_type, baseType: !812, size: 1728, elements: !766)
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "ch_info", file: !82, line: 121, baseType: !813)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ch_info", file: !82, line: 112, size: 576, elements: !814)
!814 = !{!815, !816, !817, !818, !819, !820, !821, !822}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "chnum", scope: !813, file: !82, line: 113, baseType: !180, size: 16)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !813, file: !82, line: 114, baseType: !31, size: 32, offset: 32)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !813, file: !82, line: 115, baseType: !180, size: 16, offset: 64)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "peer_addr", scope: !813, file: !82, line: 116, baseType: !231, size: 224, offset: 96)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "expiration_time", scope: !813, file: !82, line: 117, baseType: !196, size: 32, offset: 320)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "lifetime_ev", scope: !813, file: !82, line: 118, baseType: !201, size: 64, offset: 384)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !813, file: !82, line: 119, baseType: !202, size: 64, offset: 448)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_channel", scope: !813, file: !82, line: 120, baseType: !202, size: 64, offset: 512)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "extra_sz", scope: !808, file: !82, line: 130, baseType: !176, size: 64, offset: 1728)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "extra_chns", scope: !808, file: !82, line: 131, baseType: !825, size: 64, offset: 1792)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !731, file: !82, line: 183, baseType: !202, size: 64, offset: 140864)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_connections", scope: !731, file: !82, line: 184, baseType: !548, size: 64, offset: 140928)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "tcs", scope: !731, file: !82, line: 185, baseType: !830, size: 128, offset: 140992)
!830 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_connection_list", file: !82, line: 103, baseType: !831)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_tcp_connection_list", file: !82, line: 100, size: 128, elements: !832)
!832 = !{!833, !834}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "sz", scope: !831, file: !82, line: 101, baseType: !176, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !831, file: !82, line: 102, baseType: !835, size: 64, offset: 64)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "to_be_allocated_timeout_ev", scope: !588, file: !544, line: 74, baseType: !201, size: 64, offset: 141376)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "enforce_fingerprints", scope: !588, file: !544, line: 75, baseType: !31, size: 32, offset: 141440)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "is_tcp_relay", scope: !588, file: !544, line: 76, baseType: !31, size: 32, offset: 141472)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "to_be_closed", scope: !588, file: !544, line: 77, baseType: !31, size: 32, offset: 141504)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "nonce", scope: !588, file: !544, line: 79, baseType: !841, size: 136, offset: 141536)
!841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 136, elements: !842)
!842 = !{!843}
!843 = !DISubrange(count: 17)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "nonce_expiration_time", scope: !588, file: !544, line: 80, baseType: !196, size: 32, offset: 141696)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !588, file: !544, line: 81, baseType: !846, size: 4104, offset: 141728)
!846 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 4104, elements: !307)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "hmackey", scope: !588, file: !544, line: 82, baseType: !848, size: 512, offset: 145832)
!848 = !DIDerivedType(tag: DW_TAG_typedef, name: "hmackey_t", file: !23, line: 64, baseType: !849)
!849 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 512, elements: !850)
!850 = !{!851}
!851 = !DISubrange(count: 64)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "hmackey_set", scope: !588, file: !544, line: 83, baseType: !31, size: 32, offset: 146368)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "pwd", scope: !588, file: !544, line: 84, baseType: !854, size: 2056, offset: 146400)
!854 = !DIDerivedType(tag: DW_TAG_typedef, name: "password_t", file: !23, line: 66, baseType: !855)
!855 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 2056, elements: !409)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "quota_used", scope: !588, file: !544, line: 85, baseType: !31, size: 32, offset: 148480)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "oauth", scope: !588, file: !544, line: 86, baseType: !31, size: 32, offset: 148512)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "max_session_time_auth", scope: !588, file: !544, line: 87, baseType: !196, size: 32, offset: 148544)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "realm_options", scope: !588, file: !544, line: 89, baseType: !860, size: 1152, offset: 148608)
!860 = !DIDerivedType(tag: DW_TAG_typedef, name: "realm_options_t", file: !58, line: 142, baseType: !861)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_realm_options_t", file: !544, line: 53, size: 1152, elements: !862)
!862 = !{!863, !867}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !861, file: !544, line: 55, baseType: !864, size: 1024)
!864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 1024, elements: !865)
!865 = !{!866}
!866 = !DISubrange(count: 128)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "perf_options", scope: !861, file: !544, line: 57, baseType: !868, size: 128, offset: 1024)
!868 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_options_t", file: !544, line: 51, baseType: !869)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_perf_options_t", file: !544, line: 45, size: 128, elements: !870)
!870 = !{!871, !873, !874}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "max_bps", scope: !869, file: !544, line: 47, baseType: !872, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !474)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "total_quota", scope: !869, file: !544, line: 48, baseType: !366, size: 32, offset: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "user_quota", scope: !869, file: !544, line: 49, baseType: !366, size: 32, offset: 96)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "origin_set", scope: !588, file: !544, line: 90, baseType: !31, size: 32, offset: 149760)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !588, file: !544, line: 91, baseType: !864, size: 1024, offset: 149792)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "received_packets", scope: !588, file: !544, line: 93, baseType: !198, size: 32, offset: 150816)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "sent_packets", scope: !588, file: !544, line: 94, baseType: !198, size: 32, offset: 150848)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "received_bytes", scope: !588, file: !544, line: 95, baseType: !198, size: 32, offset: 150880)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "sent_bytes", scope: !588, file: !544, line: 96, baseType: !198, size: 32, offset: 150912)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "t_received_packets", scope: !588, file: !544, line: 97, baseType: !545, size: 64, offset: 150976)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "t_sent_packets", scope: !588, file: !544, line: 98, baseType: !545, size: 64, offset: 151040)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "t_received_bytes", scope: !588, file: !544, line: 99, baseType: !545, size: 64, offset: 151104)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "t_sent_bytes", scope: !588, file: !544, line: 100, baseType: !545, size: 64, offset: 151168)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "received_rate", scope: !588, file: !544, line: 101, baseType: !545, size: 64, offset: 151232)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "sent_rate", scope: !588, file: !544, line: 102, baseType: !176, size: 64, offset: 151296)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "total_rate", scope: !588, file: !544, line: 103, baseType: !176, size: 64, offset: 151360)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "peer_received_packets", scope: !588, file: !544, line: 104, baseType: !198, size: 32, offset: 151424)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "peer_sent_packets", scope: !588, file: !544, line: 105, baseType: !198, size: 32, offset: 151456)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "peer_received_bytes", scope: !588, file: !544, line: 106, baseType: !198, size: 32, offset: 151488)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "peer_sent_bytes", scope: !588, file: !544, line: 107, baseType: !198, size: 32, offset: 151520)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "t_peer_received_packets", scope: !588, file: !544, line: 108, baseType: !198, size: 32, offset: 151552)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "t_peer_sent_packets", scope: !588, file: !544, line: 109, baseType: !198, size: 32, offset: 151584)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "t_peer_received_bytes", scope: !588, file: !544, line: 110, baseType: !198, size: 32, offset: 151616)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "t_peer_sent_bytes", scope: !588, file: !544, line: 111, baseType: !198, size: 32, offset: 151648)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "peer_received_rate", scope: !588, file: !544, line: 112, baseType: !545, size: 64, offset: 151680)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "peer_sent_rate", scope: !588, file: !544, line: 113, baseType: !176, size: 64, offset: 151744)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "peer_total_rate", scope: !588, file: !544, line: 114, baseType: !176, size: 64, offset: 151808)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "is_mobile", scope: !588, file: !544, line: 116, baseType: !31, size: 32, offset: 151872)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "mobile_id", scope: !588, file: !544, line: 117, baseType: !901, size: 64, offset: 151936)
!901 = !DIDerivedType(tag: DW_TAG_typedef, name: "mobile_id_t", file: !544, line: 66, baseType: !545)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "old_mobile_id", scope: !588, file: !544, line: 118, baseType: !901, size: 64, offset: 152000)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "s_mobile_id", scope: !588, file: !544, line: 119, baseType: !299, size: 264, offset: 152064)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "bps", scope: !588, file: !544, line: 121, baseType: !474, size: 64, offset: 152384)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "userkeycb", scope: !539, file: !40, line: 139, baseType: !906, size: 64, offset: 1408)
!906 = !DIDerivedType(tag: DW_TAG_typedef, name: "get_user_key_cb", file: !40, line: 102, baseType: !907)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DISubroutineType(types: !909)
!909 = !{!524, !437, !471, !31, !910, !524, !524, !911, !652, !545, !910}
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_typedef, name: "get_username_resume_cb", file: !40, line: 101, baseType: !912)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DISubroutineType(types: !914)
!914 = !{null, !31, !31, !31, !524, !524, !915, !545, !652, !524}
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "chquotacb", scope: !539, file: !40, line: 140, baseType: !917, size: 64, offset: 1472)
!917 = !DIDerivedType(tag: DW_TAG_typedef, name: "check_new_allocation_quota_cb", file: !40, line: 103, baseType: !918)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DISubroutineType(types: !920)
!920 = !{!31, !524, !31, !524}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "raqcb", scope: !539, file: !40, line: 141, baseType: !922, size: 64, offset: 1536)
!922 = !DIDerivedType(tag: DW_TAG_typedef, name: "release_allocation_quota_cb", file: !40, line: 104, baseType: !923)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DISubroutineType(types: !925)
!925 = !{null, !524, !31, !524}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "external_ip_set", scope: !539, file: !40, line: 142, baseType: !31, size: 32, offset: 1600)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "external_ip", scope: !539, file: !40, line: 143, baseType: !231, size: 224, offset: 1632)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "allow_loopback_peers", scope: !539, file: !40, line: 144, baseType: !557, size: 64, offset: 1856)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "no_multicast_peers", scope: !539, file: !40, line: 145, baseType: !557, size: 64, offset: 1920)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "send_turn_session_info", scope: !539, file: !40, line: 146, baseType: !931, size: 64, offset: 1984)
!931 = !DIDerivedType(tag: DW_TAG_typedef, name: "send_turn_session_info_cb", file: !40, line: 106, baseType: !932)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DISubroutineType(types: !934)
!934 = !{!31, !935}
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "turn_session_info", file: !544, line: 134, size: 15040, elements: !937)
!937 = !{!938, !939, !940, !941, !942, !943, !944, !946, !950, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !980, !981, !983, !984, !985, !986}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !936, file: !544, line: 135, baseType: !543, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !936, file: !544, line: 136, baseType: !31, size: 32, offset: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !936, file: !544, line: 137, baseType: !196, size: 32, offset: 96)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "expiration_time", scope: !936, file: !544, line: 138, baseType: !196, size: 32, offset: 128)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "client_protocol", scope: !936, file: !544, line: 139, baseType: !631, size: 32, offset: 160)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "peer_protocol", scope: !936, file: !544, line: 140, baseType: !631, size: 32, offset: 192)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "tls_method", scope: !936, file: !544, line: 141, baseType: !945, size: 136, offset: 224)
!945 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 136, elements: !842)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cipher", scope: !936, file: !544, line: 142, baseType: !947, size: 520, offset: 360)
!947 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 520, elements: !948)
!948 = !{!949}
!949 = !DISubrange(count: 65)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "local_addr_data", scope: !936, file: !544, line: 143, baseType: !951, size: 768, offset: 896)
!951 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_data", file: !544, line: 132, baseType: !952)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_addr_data", file: !544, line: 129, size: 768, elements: !953)
!953 = !{!954, !955}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !952, file: !544, line: 130, baseType: !231, size: 224)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "saddr", scope: !952, file: !544, line: 131, baseType: !947, size: 520, offset: 224)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "remote_addr_data", scope: !936, file: !544, line: 144, baseType: !951, size: 768, offset: 1664)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "relay_addr_data_ipv4", scope: !936, file: !544, line: 145, baseType: !951, size: 768, offset: 2432)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "relay_addr_data_ipv6", scope: !936, file: !544, line: 146, baseType: !951, size: 768, offset: 3200)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !936, file: !544, line: 147, baseType: !846, size: 4104, offset: 3968)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "enforce_fingerprints", scope: !936, file: !544, line: 148, baseType: !31, size: 32, offset: 8096)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "received_packets", scope: !936, file: !544, line: 150, baseType: !545, size: 64, offset: 8128)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "sent_packets", scope: !936, file: !544, line: 151, baseType: !545, size: 64, offset: 8192)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "received_bytes", scope: !936, file: !544, line: 152, baseType: !545, size: 64, offset: 8256)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "sent_bytes", scope: !936, file: !544, line: 153, baseType: !545, size: 64, offset: 8320)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "received_rate", scope: !936, file: !544, line: 154, baseType: !198, size: 32, offset: 8384)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "sent_rate", scope: !936, file: !544, line: 155, baseType: !198, size: 32, offset: 8416)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "total_rate", scope: !936, file: !544, line: 156, baseType: !198, size: 32, offset: 8448)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "peer_received_packets", scope: !936, file: !544, line: 157, baseType: !545, size: 64, offset: 8512)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "peer_sent_packets", scope: !936, file: !544, line: 158, baseType: !545, size: 64, offset: 8576)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "peer_received_bytes", scope: !936, file: !544, line: 159, baseType: !545, size: 64, offset: 8640)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "peer_sent_bytes", scope: !936, file: !544, line: 160, baseType: !545, size: 64, offset: 8704)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "peer_received_rate", scope: !936, file: !544, line: 161, baseType: !198, size: 32, offset: 8768)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "peer_sent_rate", scope: !936, file: !544, line: 162, baseType: !198, size: 32, offset: 8800)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "peer_total_rate", scope: !936, file: !544, line: 163, baseType: !198, size: 32, offset: 8832)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "is_mobile", scope: !936, file: !544, line: 165, baseType: !31, size: 32, offset: 8864)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "main_peers_data", scope: !936, file: !544, line: 167, baseType: !977, size: 3840, offset: 8896)
!977 = !DICompositeType(tag: DW_TAG_array_type, baseType: !951, size: 3840, elements: !978)
!978 = !{!979}
!979 = !DISubrange(count: 5)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "main_peers_size", scope: !936, file: !544, line: 168, baseType: !176, size: 64, offset: 12736)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "extra_peers_data", scope: !936, file: !544, line: 169, baseType: !982, size: 64, offset: 12800)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "extra_peers_size", scope: !936, file: !544, line: 170, baseType: !176, size: 64, offset: 12864)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "realm", scope: !936, file: !544, line: 172, baseType: !864, size: 1024, offset: 12928)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !936, file: !544, line: 173, baseType: !864, size: 1024, offset: 13952)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "bps", scope: !936, file: !544, line: 175, baseType: !474, size: 64, offset: 14976)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "send_https_socket", scope: !539, file: !40, line: 147, baseType: !988, size: 64, offset: 2048)
!988 = !DIDerivedType(tag: DW_TAG_typedef, name: "send_https_socket_cb", file: !40, line: 107, baseType: !989)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = !DISubroutineType(types: !991)
!991 = !{null, !594}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "no_udp_relay", scope: !539, file: !40, line: 150, baseType: !557, size: 64, offset: 2112)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "no_tcp_relay", scope: !539, file: !40, line: 151, baseType: !557, size: 64, offset: 2176)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_relay_connections", scope: !539, file: !40, line: 152, baseType: !548, size: 64, offset: 2240)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "send_socket_to_relay", scope: !539, file: !40, line: 153, baseType: !996, size: 64, offset: 2304)
!996 = !DIDerivedType(tag: DW_TAG_typedef, name: "send_socket_to_relay_cb", file: !40, line: 105, baseType: !997)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = !DISubroutineType(types: !999)
!999 = !{!31, !437, !545, !1000, !594, !31, !1001, !652, !31}
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_typedef, name: "MESSAGE_TO_RELAY_TYPE", file: !40, line: 76, baseType: !90)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "alternate_servers_list", scope: !539, file: !40, line: 157, baseType: !1003, size: 64, offset: 2368)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "as_counter", scope: !539, file: !40, line: 158, baseType: !176, size: 64, offset: 2432)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "tls_alternate_servers_list", scope: !539, file: !40, line: 159, baseType: !1003, size: 64, offset: 2496)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "tls_as_counter", scope: !539, file: !40, line: 160, baseType: !176, size: 64, offset: 2560)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "aux_servers_list", scope: !539, file: !40, line: 161, baseType: !1003, size: 64, offset: 2624)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "self_udp_balance", scope: !539, file: !40, line: 162, baseType: !31, size: 32, offset: 2688)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "ip_whitelist", scope: !539, file: !40, line: 165, baseType: !1010, size: 64, offset: 2752)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "ip_blacklist", scope: !539, file: !40, line: 166, baseType: !1010, size: 64, offset: 2816)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "mobility", scope: !539, file: !40, line: 169, baseType: !557, size: 64, offset: 2880)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "mobile_connections_map", scope: !539, file: !40, line: 170, baseType: !548, size: 64, offset: 2944)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "server_relay", scope: !539, file: !40, line: 173, baseType: !31, size: 32, offset: 3008)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "allocate_bps_func", scope: !539, file: !40, line: 176, baseType: !1016, size: 64, offset: 3072)
!1016 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocate_bps_cb", file: !40, line: 109, baseType: !1017)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{!474, !474, !31}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "oauth", scope: !539, file: !40, line: 179, baseType: !31, size: 32, offset: 3136)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "oauth_server_name", scope: !539, file: !40, line: 180, baseType: !424, size: 64, offset: 3200)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "acme_redirect", scope: !539, file: !40, line: 183, baseType: !424, size: 64, offset: 3264)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "allocation_default_address_family", scope: !539, file: !40, line: 186, baseType: !512, size: 32, offset: 3328)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "log_binding", scope: !539, file: !40, line: 189, baseType: !557, size: 64, offset: 3392)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "thr", scope: !527, file: !124, line: 111, baseType: !1026, size: 64, offset: 3968)
!1026 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !321, line: 27, baseType: !178)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_typedef, name: "tls_listener_relay_server_type", file: !1030, line: 47, baseType: !1031)
!1030 = !DIFile(filename: "src/apps/relay/tls_listener.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "600378d89e7e6850884a9f7c884c23e9")
!1031 = !DICompositeType(tag: DW_TAG_structure_type, name: "tls_listener_relay_server_info", file: !1030, line: 46, flags: DIFlagFwdDecl)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "auth_server", file: !116, line: 44, size: 384, elements: !1034)
!1034 = !{!1035, !1036, !1037, !1038, !1039, !1040}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1033, file: !116, line: 45, baseType: !525, size: 8)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "event_base", scope: !1033, file: !116, line: 46, baseType: !132, size: 64, offset: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "in_buf", scope: !1033, file: !116, line: 47, baseType: !379, size: 64, offset: 128)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "out_buf", scope: !1033, file: !116, line: 48, baseType: !379, size: 64, offset: 192)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "thr", scope: !1033, file: !116, line: 49, baseType: !1026, size: 64, offset: 256)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "rch", scope: !1033, file: !116, line: 50, baseType: !282, size: 64, offset: 320)
!1041 = !{!1042, !1047, !1052, !1057, !1062, !1067, !1070, !1075, !1078, !1083, !1088, !1090, !1095, !1098, !1100, !1105, !1110, !1115, !1120, !1122, !1127, !1132, !1135, !0, !1137, !1142, !1145, !1147, !1152, !1157, !1159, !1161, !1163, !1165, !1167, !1169, !1171, !1176, !1181, !1186, !1191, !1194, !1199, !1201, !1204, !1206, !1208, !1210, !1212, !1214, !1216, !1218, !1220, !1223, !1230, !1233, !1235, !1237, !1242, !1247, !1249, !1251, !1256, !1258, !1263, !1265, !1267, !1272, !1274, !1279, !1281, !1287, !1289, !1294, !1299, !1301, !1303, !1308, !1311, !1314, !1317, !1320, !1323, !1326, !1328, !1331, !1333, !1335, !1337, !1339, !1344, !1346, !1348, !1350, !1352, !1354, !1356}
!1042 = !DIGlobalVariableExpression(var: !1043, expr: !DIExpression())
!1043 = distinct !DIGlobalVariable(scope: null, file: !116, line: 361, type: !1044, isLocal: true, isDefinition: true)
!1044 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 280, elements: !1045)
!1045 = !{!1046}
!1046 = !DISubrange(count: 35)
!1047 = !DIGlobalVariableExpression(var: !1048, expr: !DIExpression())
!1048 = distinct !DIGlobalVariable(scope: null, file: !116, line: 380, type: !1049, isLocal: true, isDefinition: true)
!1049 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 232, elements: !1050)
!1050 = !{!1051}
!1051 = !DISubrange(count: 29)
!1052 = !DIGlobalVariableExpression(var: !1053, expr: !DIExpression())
!1053 = distinct !DIGlobalVariable(scope: null, file: !116, line: 387, type: !1054, isLocal: true, isDefinition: true)
!1054 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 256, elements: !1055)
!1055 = !{!1056}
!1056 = !DISubrange(count: 32)
!1057 = !DIGlobalVariableExpression(var: !1058, expr: !DIExpression())
!1058 = distinct !DIGlobalVariable(scope: null, file: !116, line: 405, type: !1059, isLocal: true, isDefinition: true)
!1059 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 208, elements: !1060)
!1060 = !{!1061}
!1061 = !DISubrange(count: 26)
!1062 = !DIGlobalVariableExpression(var: !1063, expr: !DIExpression())
!1063 = distinct !DIGlobalVariable(scope: null, file: !116, line: 444, type: !1064, isLocal: true, isDefinition: true)
!1064 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 192, elements: !1065)
!1065 = !{!1066}
!1066 = !DISubrange(count: 24)
!1067 = !DIGlobalVariableExpression(var: !1068, expr: !DIExpression())
!1068 = distinct !DIGlobalVariable(scope: null, file: !116, line: 444, type: !1069, isLocal: true, isDefinition: true)
!1069 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 264, elements: !300)
!1070 = !DIGlobalVariableExpression(var: !1071, expr: !DIExpression())
!1071 = distinct !DIGlobalVariable(scope: null, file: !116, line: 712, type: !1072, isLocal: true, isDefinition: true)
!1072 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 368, elements: !1073)
!1073 = !{!1074}
!1074 = !DISubrange(count: 46)
!1075 = !DIGlobalVariableExpression(var: !1076, expr: !DIExpression())
!1076 = distinct !DIGlobalVariable(scope: null, file: !116, line: 713, type: !1077, isLocal: true, isDefinition: true)
!1077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 280, elements: !1045)
!1078 = !DIGlobalVariableExpression(var: !1079, expr: !DIExpression())
!1079 = distinct !DIGlobalVariable(scope: null, file: !116, line: 721, type: !1080, isLocal: true, isDefinition: true)
!1080 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 336, elements: !1081)
!1081 = !{!1082}
!1082 = !DISubrange(count: 42)
!1083 = !DIGlobalVariableExpression(var: !1084, expr: !DIExpression())
!1084 = distinct !DIGlobalVariable(scope: null, file: !116, line: 731, type: !1085, isLocal: true, isDefinition: true)
!1085 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 400, elements: !1086)
!1086 = !{!1087}
!1087 = !DISubrange(count: 50)
!1088 = !DIGlobalVariableExpression(var: !1089, expr: !DIExpression())
!1089 = distinct !DIGlobalVariable(scope: null, file: !116, line: 740, type: !1072, isLocal: true, isDefinition: true)
!1090 = !DIGlobalVariableExpression(var: !1091, expr: !DIExpression())
!1091 = distinct !DIGlobalVariable(scope: null, file: !116, line: 757, type: !1092, isLocal: true, isDefinition: true)
!1092 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 200, elements: !1093)
!1093 = !{!1094}
!1094 = !DISubrange(count: 25)
!1095 = !DIGlobalVariableExpression(var: !1096, expr: !DIExpression())
!1096 = distinct !DIGlobalVariable(scope: null, file: !116, line: 1594, type: !1097, isLocal: true, isDefinition: true)
!1097 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 64, elements: !258)
!1098 = !DIGlobalVariableExpression(var: !1099, expr: !DIExpression())
!1099 = distinct !DIGlobalVariable(scope: null, file: !116, line: 1599, type: !243, isLocal: true, isDefinition: true)
!1100 = !DIGlobalVariableExpression(var: !1101, expr: !DIExpression())
!1101 = distinct !DIGlobalVariable(scope: null, file: !116, line: 1599, type: !1102, isLocal: true, isDefinition: true)
!1102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 160, elements: !1103)
!1103 = !{!1104}
!1104 = !DISubrange(count: 20)
!1105 = !DIGlobalVariableExpression(var: !1106, expr: !DIExpression())
!1106 = distinct !DIGlobalVariable(scope: null, file: !116, line: 1609, type: !1107, isLocal: true, isDefinition: true)
!1107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 88, elements: !1108)
!1108 = !{!1109}
!1109 = !DISubrange(count: 11)
!1110 = !DIGlobalVariableExpression(var: !1111, expr: !DIExpression())
!1111 = distinct !DIGlobalVariable(scope: null, file: !116, line: 1881, type: !1112, isLocal: true, isDefinition: true)
!1112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 184, elements: !1113)
!1113 = !{!1114}
!1114 = !DISubrange(count: 23)
!1115 = !DIGlobalVariableExpression(var: !1116, expr: !DIExpression())
!1116 = distinct !DIGlobalVariable(scope: null, file: !116, line: 1888, type: !1117, isLocal: true, isDefinition: true)
!1117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 216, elements: !1118)
!1118 = !{!1119}
!1119 = !DISubrange(count: 27)
!1120 = !DIGlobalVariableExpression(var: !1121, expr: !DIExpression())
!1121 = distinct !DIGlobalVariable(scope: null, file: !116, line: 1892, type: !345, isLocal: true, isDefinition: true)
!1122 = !DIGlobalVariableExpression(var: !1123, expr: !DIExpression())
!1123 = distinct !DIGlobalVariable(scope: null, file: !116, line: 1908, type: !1124, isLocal: true, isDefinition: true)
!1124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 104, elements: !1125)
!1125 = !{!1126}
!1126 = !DISubrange(count: 13)
!1127 = !DIGlobalVariableExpression(var: !1128, expr: !DIExpression())
!1128 = distinct !DIGlobalVariable(name: "authserver", scope: !2, file: !116, line: 55, type: !1129, isLocal: true, isDefinition: true)
!1129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1033, size: 98304, elements: !1130)
!1130 = !{!1131}
!1131 = !DISubrange(count: 256)
!1132 = !DIGlobalVariableExpression(var: !1133, expr: !DIExpression())
!1133 = distinct !DIGlobalVariable(name: "general_relay_servers", scope: !2, file: !116, line: 62, type: !1134, isLocal: true, isDefinition: true)
!1134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !526, size: 16384, elements: !1130)
!1135 = !DIGlobalVariableExpression(var: !1136, expr: !DIExpression())
!1136 = distinct !DIGlobalVariable(name: "udp_relay_servers", scope: !2, file: !116, line: 63, type: !1134, isLocal: true, isDefinition: true)
!1137 = !DIGlobalVariableExpression(var: !1138, expr: !DIExpression())
!1138 = distinct !DIGlobalVariable(scope: null, file: !116, line: 186, type: !1139, isLocal: true, isDefinition: true)
!1139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 248, elements: !1140)
!1140 = !{!1141}
!1141 = !DISubrange(count: 31)
!1142 = !DIGlobalVariableExpression(var: !1143, expr: !DIExpression())
!1143 = distinct !DIGlobalVariable(scope: null, file: !116, line: 193, type: !1144, isLocal: true, isDefinition: true)
!1144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 128, elements: !274)
!1145 = !DIGlobalVariableExpression(var: !1146, expr: !DIExpression())
!1146 = distinct !DIGlobalVariable(scope: null, file: !116, line: 214, type: !1049, isLocal: true, isDefinition: true)
!1147 = !DIGlobalVariableExpression(var: !1148, expr: !DIExpression())
!1148 = distinct !DIGlobalVariable(scope: null, file: !116, line: 221, type: !1149, isLocal: true, isDefinition: true)
!1149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 224, elements: !1150)
!1150 = !{!1151}
!1151 = !DISubrange(count: 28)
!1152 = !DIGlobalVariableExpression(var: !1153, expr: !DIExpression())
!1153 = distinct !DIGlobalVariable(scope: null, file: !116, line: 268, type: !1154, isLocal: true, isDefinition: true)
!1154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 240, elements: !1155)
!1155 = !{!1156}
!1156 = !DISubrange(count: 30)
!1157 = !DIGlobalVariableExpression(var: !1158, expr: !DIExpression())
!1158 = distinct !DIGlobalVariable(name: "auth_message_counter_mutex", scope: !2, file: !116, line: 431, type: !320, isLocal: true, isDefinition: true)
!1159 = !DIGlobalVariableExpression(var: !1160, expr: !DIExpression())
!1160 = distinct !DIGlobalVariable(name: "auth_message_counter", scope: !2, file: !116, line: 432, type: !525, isLocal: true, isDefinition: true)
!1161 = !DIGlobalVariableExpression(var: !1162, expr: !DIExpression())
!1162 = distinct !DIGlobalVariable(name: "authserver_number", scope: !2, file: !116, line: 54, type: !525, isLocal: true, isDefinition: true)
!1163 = !DIGlobalVariableExpression(var: !1164, expr: !DIExpression())
!1164 = distinct !DIGlobalVariable(scope: null, file: !116, line: 1584, type: !1097, isLocal: true, isDefinition: true)
!1165 = !DIGlobalVariableExpression(var: !1166, expr: !DIExpression())
!1166 = distinct !DIGlobalVariable(scope: null, file: !116, line: 1584, type: !1097, isLocal: true, isDefinition: true)
!1167 = !DIGlobalVariableExpression(var: !1168, expr: !DIExpression())
!1168 = distinct !DIGlobalVariable(scope: null, file: !116, line: 1584, type: !1097, isLocal: true, isDefinition: true)
!1169 = !DIGlobalVariableExpression(var: !1170, expr: !DIExpression())
!1170 = distinct !DIGlobalVariable(name: "barrier_count", scope: !2, file: !116, line: 36, type: !7, isLocal: true, isDefinition: true)
!1171 = !DIGlobalVariableExpression(var: !1172, expr: !DIExpression())
!1172 = distinct !DIGlobalVariable(scope: null, file: !116, line: 1052, type: !1173, isLocal: true, isDefinition: true)
!1173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 304, elements: !1174)
!1174 = !{!1175}
!1175 = !DISubrange(count: 38)
!1176 = !DIGlobalVariableExpression(var: !1177, expr: !DIExpression())
!1177 = distinct !DIGlobalVariable(scope: null, file: !116, line: 1081, type: !1178, isLocal: true, isDefinition: true)
!1178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 808, elements: !1179)
!1179 = !{!1180}
!1180 = !DISubrange(count: 101)
!1181 = !DIGlobalVariableExpression(var: !1182, expr: !DIExpression())
!1182 = distinct !DIGlobalVariable(scope: null, file: !116, line: 1086, type: !1183, isLocal: true, isDefinition: true)
!1183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 352, elements: !1184)
!1184 = !{!1185}
!1185 = !DISubrange(count: 44)
!1186 = !DIGlobalVariableExpression(var: !1187, expr: !DIExpression())
!1187 = distinct !DIGlobalVariable(scope: null, file: !116, line: 1086, type: !1188, isLocal: true, isDefinition: true)
!1188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 120, elements: !1189)
!1189 = !{!1190}
!1190 = !DISubrange(count: 15)
!1191 = !DIGlobalVariableExpression(var: !1192, expr: !DIExpression())
!1192 = distinct !DIGlobalVariable(scope: null, file: !116, line: 937, type: !1193, isLocal: true, isDefinition: true)
!1193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 160, elements: !1103)
!1194 = !DIGlobalVariableExpression(var: !1195, expr: !DIExpression())
!1195 = distinct !DIGlobalVariable(scope: null, file: !116, line: 942, type: !1196, isLocal: true, isDefinition: true)
!1196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 152, elements: !1197)
!1197 = !{!1198}
!1198 = !DISubrange(count: 19)
!1199 = !DIGlobalVariableExpression(var: !1200, expr: !DIExpression())
!1200 = distinct !DIGlobalVariable(scope: null, file: !116, line: 954, type: !1072, isLocal: true, isDefinition: true)
!1201 = !DIGlobalVariableExpression(var: !1202, expr: !DIExpression())
!1202 = distinct !DIGlobalVariable(scope: null, file: !116, line: 955, type: !1203, isLocal: true, isDefinition: true)
!1203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 200, elements: !1093)
!1204 = !DIGlobalVariableExpression(var: !1205, expr: !DIExpression())
!1205 = distinct !DIGlobalVariable(scope: null, file: !116, line: 975, type: !1154, isLocal: true, isDefinition: true)
!1206 = !DIGlobalVariableExpression(var: !1207, expr: !DIExpression())
!1207 = distinct !DIGlobalVariable(scope: null, file: !116, line: 989, type: !1154, isLocal: true, isDefinition: true)
!1208 = !DIGlobalVariableExpression(var: !1209, expr: !DIExpression())
!1209 = distinct !DIGlobalVariable(scope: null, file: !116, line: 992, type: !1059, isLocal: true, isDefinition: true)
!1210 = !DIGlobalVariableExpression(var: !1211, expr: !DIExpression())
!1211 = distinct !DIGlobalVariable(scope: null, file: !116, line: 1001, type: !299, isLocal: true, isDefinition: true)
!1212 = !DIGlobalVariableExpression(var: !1213, expr: !DIExpression())
!1213 = distinct !DIGlobalVariable(scope: null, file: !116, line: 412, type: !345, isLocal: true, isDefinition: true)
!1214 = !DIGlobalVariableExpression(var: !1215, expr: !DIExpression())
!1215 = distinct !DIGlobalVariable(scope: null, file: !116, line: 416, type: !1154, isLocal: true, isDefinition: true)
!1216 = !DIGlobalVariableExpression(var: !1217, expr: !DIExpression())
!1217 = distinct !DIGlobalVariable(scope: null, file: !116, line: 419, type: !1054, isLocal: true, isDefinition: true)
!1218 = !DIGlobalVariableExpression(var: !1219, expr: !DIExpression())
!1219 = distinct !DIGlobalVariable(scope: null, file: !116, line: 422, type: !299, isLocal: true, isDefinition: true)
!1220 = !DIGlobalVariableExpression(var: !1221, expr: !DIExpression())
!1221 = distinct !DIGlobalVariable(scope: null, file: !116, line: 1128, type: !1222, isLocal: true, isDefinition: true)
!1222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 104, elements: !1125)
!1223 = !DIGlobalVariableExpression(var: !1224, expr: !DIExpression())
!1224 = distinct !DIGlobalVariable(name: "barrier", scope: !2, file: !116, line: 37, type: !1225, isLocal: true, isDefinition: true)
!1225 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_barrier_t", file: !321, line: 112, baseType: !1226)
!1226 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !321, line: 108, size: 256, elements: !1227)
!1227 = !{!1228, !1229}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !1226, file: !321, line: 110, baseType: !1054, size: 256)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !1226, file: !321, line: 111, baseType: !219, size: 64)
!1230 = !DIGlobalVariableExpression(var: !1231, expr: !DIExpression())
!1231 = distinct !DIGlobalVariable(scope: null, file: !116, line: 1720, type: !1232, isLocal: true, isDefinition: true)
!1232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 224, elements: !1150)
!1233 = !DIGlobalVariableExpression(var: !1234, expr: !DIExpression())
!1234 = distinct !DIGlobalVariable(scope: null, file: !116, line: 1731, type: !1149, isLocal: true, isDefinition: true)
!1235 = !DIGlobalVariableExpression(var: !1236, expr: !DIExpression())
!1236 = distinct !DIGlobalVariable(scope: null, file: !116, line: 1622, type: !1173, isLocal: true, isDefinition: true)
!1237 = !DIGlobalVariableExpression(var: !1238, expr: !DIExpression())
!1238 = distinct !DIGlobalVariable(scope: null, file: !116, line: 793, type: !1239, isLocal: true, isDefinition: true)
!1239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 144, elements: !1240)
!1240 = !{!1241}
!1241 = !DISubrange(count: 18)
!1242 = !DIGlobalVariableExpression(var: !1243, expr: !DIExpression())
!1243 = distinct !DIGlobalVariable(scope: null, file: !116, line: 793, type: !1244, isLocal: true, isDefinition: true)
!1244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 168, elements: !1245)
!1245 = !{!1246}
!1246 = !DISubrange(count: 21)
!1247 = !DIGlobalVariableExpression(var: !1248, expr: !DIExpression())
!1248 = distinct !DIGlobalVariable(scope: null, file: !116, line: 796, type: !1080, isLocal: true, isDefinition: true)
!1249 = !DIGlobalVariableExpression(var: !1250, expr: !DIExpression())
!1250 = distinct !DIGlobalVariable(scope: null, file: !116, line: 834, type: !1092, isLocal: true, isDefinition: true)
!1251 = !DIGlobalVariableExpression(var: !1252, expr: !DIExpression())
!1252 = distinct !DIGlobalVariable(scope: null, file: !116, line: 837, type: !1253, isLocal: true, isDefinition: true)
!1253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 392, elements: !1254)
!1254 = !{!1255}
!1255 = !DISubrange(count: 49)
!1256 = !DIGlobalVariableExpression(var: !1257, expr: !DIExpression())
!1257 = distinct !DIGlobalVariable(scope: null, file: !116, line: 900, type: !1092, isLocal: true, isDefinition: true)
!1258 = !DIGlobalVariableExpression(var: !1259, expr: !DIExpression())
!1259 = distinct !DIGlobalVariable(scope: null, file: !116, line: 581, type: !1260, isLocal: true, isDefinition: true)
!1260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 432, elements: !1261)
!1261 = !{!1262}
!1262 = !DISubrange(count: 54)
!1263 = !DIGlobalVariableExpression(var: !1264, expr: !DIExpression())
!1264 = distinct !DIGlobalVariable(scope: null, file: !116, line: 582, type: !1244, isLocal: true, isDefinition: true)
!1265 = !DIGlobalVariableExpression(var: !1266, expr: !DIExpression())
!1266 = distinct !DIGlobalVariable(scope: null, file: !116, line: 589, type: !1085, isLocal: true, isDefinition: true)
!1267 = !DIGlobalVariableExpression(var: !1268, expr: !DIExpression())
!1268 = distinct !DIGlobalVariable(scope: null, file: !116, line: 598, type: !1269, isLocal: true, isDefinition: true)
!1269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 464, elements: !1270)
!1270 = !{!1271}
!1271 = !DISubrange(count: 58)
!1272 = !DIGlobalVariableExpression(var: !1273, expr: !DIExpression())
!1273 = distinct !DIGlobalVariable(scope: null, file: !116, line: 606, type: !1260, isLocal: true, isDefinition: true)
!1274 = !DIGlobalVariableExpression(var: !1275, expr: !DIExpression())
!1275 = distinct !DIGlobalVariable(scope: null, file: !116, line: 650, type: !1276, isLocal: true, isDefinition: true)
!1276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 296, elements: !1277)
!1277 = !{!1278}
!1278 = !DISubrange(count: 37)
!1279 = !DIGlobalVariableExpression(var: !1280, expr: !DIExpression())
!1280 = distinct !DIGlobalVariable(scope: null, file: !116, line: 656, type: !1049, isLocal: true, isDefinition: true)
!1281 = !DIGlobalVariableExpression(var: !1282, expr: !DIExpression())
!1282 = distinct !DIGlobalVariable(name: "always_true", scope: !1283, file: !116, line: 1693, type: !31, isLocal: true, isDefinition: true)
!1283 = distinct !DISubprogram(name: "run_general_relay_thread", scope: !116, file: !116, line: 1691, type: !1284, scopeLine: 1692, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !1286)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{!202, !202}
!1286 = !{}
!1287 = !DIGlobalVariableExpression(var: !1288, expr: !DIExpression())
!1288 = distinct !DIGlobalVariable(scope: null, file: !116, line: 1704, type: !1203, isLocal: true, isDefinition: true)
!1289 = !DIGlobalVariableExpression(var: !1290, expr: !DIExpression())
!1290 = distinct !DIGlobalVariable(scope: null, file: !116, line: 1329, type: !1291, isLocal: true, isDefinition: true)
!1291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 360, elements: !1292)
!1292 = !{!1293}
!1293 = !DISubrange(count: 45)
!1294 = !DIGlobalVariableExpression(var: !1295, expr: !DIExpression())
!1295 = distinct !DIGlobalVariable(scope: null, file: !116, line: 1184, type: !1296, isLocal: true, isDefinition: true)
!1296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 376, elements: !1297)
!1297 = !{!1298}
!1298 = !DISubrange(count: 47)
!1299 = !DIGlobalVariableExpression(var: !1300, expr: !DIExpression())
!1300 = distinct !DIGlobalVariable(scope: null, file: !116, line: 1217, type: !1044, isLocal: true, isDefinition: true)
!1301 = !DIGlobalVariableExpression(var: !1302, expr: !DIExpression())
!1302 = distinct !DIGlobalVariable(scope: null, file: !116, line: 1240, type: !1139, isLocal: true, isDefinition: true)
!1303 = !DIGlobalVariableExpression(var: !1304, expr: !DIExpression())
!1304 = distinct !DIGlobalVariable(scope: null, file: !116, line: 1014, type: !1305, isLocal: true, isDefinition: true)
!1305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 344, elements: !1306)
!1306 = !{!1307}
!1307 = !DISubrange(count: 43)
!1308 = !DIGlobalVariableExpression(var: !1309, expr: !DIExpression())
!1309 = distinct !DIGlobalVariable(name: "always_true", scope: !1310, file: !116, line: 1029, type: !31, isLocal: true, isDefinition: true)
!1310 = distinct !DISubprogram(name: "run_udp_listener_thread", scope: !116, file: !116, line: 1027, type: !1284, scopeLine: 1028, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !1286)
!1311 = !DIGlobalVariableExpression(var: !1312, expr: !DIExpression())
!1312 = distinct !DIGlobalVariable(scope: null, file: !116, line: 1033, type: !1313, isLocal: true, isDefinition: true)
!1313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 192, elements: !1065)
!1314 = !DIGlobalVariableExpression(var: !1315, expr: !DIExpression())
!1315 = distinct !DIGlobalVariable(scope: null, file: !116, line: 1410, type: !1316, isLocal: true, isDefinition: true)
!1316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 368, elements: !1073)
!1317 = !DIGlobalVariableExpression(var: !1318, expr: !DIExpression())
!1318 = distinct !DIGlobalVariable(scope: null, file: !116, line: 543, type: !1319, isLocal: true, isDefinition: true)
!1319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 376, elements: !1297)
!1320 = !DIGlobalVariableExpression(var: !1321, expr: !DIExpression())
!1321 = distinct !DIGlobalVariable(scope: null, file: !116, line: 544, type: !1322, isLocal: true, isDefinition: true)
!1322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 232, elements: !1050)
!1323 = !DIGlobalVariableExpression(var: !1324, expr: !DIExpression())
!1324 = distinct !DIGlobalVariable(scope: null, file: !116, line: 1468, type: !1325, isLocal: true, isDefinition: true)
!1325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 216, elements: !1118)
!1326 = !DIGlobalVariableExpression(var: !1327, expr: !DIExpression())
!1327 = distinct !DIGlobalVariable(scope: null, file: !116, line: 1806, type: !1117, isLocal: true, isDefinition: true)
!1328 = !DIGlobalVariableExpression(var: !1329, expr: !DIExpression())
!1329 = distinct !DIGlobalVariable(scope: null, file: !116, line: 1754, type: !1330, isLocal: true, isDefinition: true)
!1330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 184, elements: !1113)
!1331 = !DIGlobalVariableExpression(var: !1332, expr: !DIExpression())
!1332 = distinct !DIGlobalVariable(scope: null, file: !116, line: 1772, type: !1049, isLocal: true, isDefinition: true)
!1333 = !DIGlobalVariableExpression(var: !1334, expr: !DIExpression())
!1334 = distinct !DIGlobalVariable(name: "run_auth_server_flag", scope: !2, file: !116, line: 1739, type: !31, isLocal: true, isDefinition: true)
!1335 = !DIGlobalVariableExpression(var: !1336, expr: !DIExpression())
!1336 = distinct !DIGlobalVariable(scope: null, file: !116, line: 458, type: !299, isLocal: true, isDefinition: true)
!1337 = !DIGlobalVariableExpression(var: !1338, expr: !DIExpression())
!1338 = distinct !DIGlobalVariable(scope: null, file: !116, line: 458, type: !1232, isLocal: true, isDefinition: true)
!1339 = !DIGlobalVariableExpression(var: !1340, expr: !DIExpression())
!1340 = distinct !DIGlobalVariable(scope: null, file: !116, line: 481, type: !1341, isLocal: true, isDefinition: true)
!1341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 288, elements: !1342)
!1342 = !{!1343}
!1343 = !DISubrange(count: 36)
!1344 = !DIGlobalVariableExpression(var: !1345, expr: !DIExpression())
!1345 = distinct !DIGlobalVariable(scope: null, file: !116, line: 486, type: !1080, isLocal: true, isDefinition: true)
!1346 = !DIGlobalVariableExpression(var: !1347, expr: !DIExpression())
!1347 = distinct !DIGlobalVariable(scope: null, file: !116, line: 495, type: !1085, isLocal: true, isDefinition: true)
!1348 = !DIGlobalVariableExpression(var: !1349, expr: !DIExpression())
!1349 = distinct !DIGlobalVariable(scope: null, file: !116, line: 1833, type: !1059, isLocal: true, isDefinition: true)
!1350 = !DIGlobalVariableExpression(var: !1351, expr: !DIExpression())
!1351 = distinct !DIGlobalVariable(scope: null, file: !116, line: 1817, type: !1313, isLocal: true, isDefinition: true)
!1352 = !DIGlobalVariableExpression(var: !1353, expr: !DIExpression())
!1353 = distinct !DIGlobalVariable(scope: null, file: !116, line: 84, type: !1222, isLocal: true, isDefinition: true)
!1354 = !DIGlobalVariableExpression(var: !1355, expr: !DIExpression())
!1355 = distinct !DIGlobalVariable(scope: null, file: !116, line: 85, type: !243, isLocal: true, isDefinition: true)
!1356 = !DIGlobalVariableExpression(var: !1357, expr: !DIExpression())
!1357 = distinct !DIGlobalVariable(scope: null, file: !116, line: 85, type: !1358, isLocal: true, isDefinition: true)
!1358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 144, elements: !1240)
!1359 = !{i32 7, !"Dwarf Version", i32 5}
!1360 = !{i32 2, !"Debug Info Version", i32 3}
!1361 = !{i32 1, !"wchar_size", i32 4}
!1362 = !{i32 8, !"PIC Level", i32 2}
!1363 = !{i32 7, !"PIE Level", i32 2}
!1364 = !{i32 7, !"uwtable", i32 2}
!1365 = !{i32 7, !"frame-pointer", i32 2}
!1366 = !{!"clang version 16.0.0"}
!1367 = distinct !DISubprogram(name: "get_bps_capacity_allocated", scope: !116, file: !116, line: 138, type: !1368, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !1286)
!1368 = !DISubroutineType(types: !1369)
!1369 = !{!474}
!1370 = !DILocalVariable(name: "ret", scope: !1367, file: !116, line: 140, type: !474)
!1371 = !DILocation(line: 140, column: 15, scope: !1367)
!1372 = !DILocation(line: 141, column: 2, scope: !1367)
!1373 = !DILocation(line: 142, column: 20, scope: !1367)
!1374 = !DILocation(line: 142, column: 6, scope: !1367)
!1375 = !DILocation(line: 143, column: 2, scope: !1367)
!1376 = !DILocation(line: 144, column: 9, scope: !1367)
!1377 = !DILocation(line: 144, column: 2, scope: !1367)
!1378 = distinct !DISubprogram(name: "get_bps_capacity", scope: !116, file: !116, line: 147, type: !1368, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !1286)
!1379 = !DILocalVariable(name: "ret", scope: !1378, file: !116, line: 149, type: !474)
!1380 = !DILocation(line: 149, column: 15, scope: !1378)
!1381 = !DILocation(line: 150, column: 2, scope: !1378)
!1382 = !DILocation(line: 151, column: 20, scope: !1378)
!1383 = !DILocation(line: 151, column: 6, scope: !1378)
!1384 = !DILocation(line: 152, column: 2, scope: !1378)
!1385 = !DILocation(line: 153, column: 9, scope: !1378)
!1386 = !DILocation(line: 153, column: 2, scope: !1378)
!1387 = distinct !DISubprogram(name: "set_bps_capacity", scope: !116, file: !116, line: 156, type: !1388, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !1286)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{null, !474}
!1390 = !DILocalVariable(name: "value", arg: 1, scope: !1387, file: !116, line: 156, type: !474)
!1391 = !DILocation(line: 156, column: 36, scope: !1387)
!1392 = !DILocation(line: 158, column: 2, scope: !1387)
!1393 = !DILocation(line: 159, column: 29, scope: !1387)
!1394 = !DILocation(line: 159, column: 27, scope: !1387)
!1395 = !DILocation(line: 160, column: 2, scope: !1387)
!1396 = !DILocation(line: 161, column: 1, scope: !1387)
!1397 = distinct !DISubprogram(name: "get_max_bps", scope: !116, file: !116, line: 163, type: !1368, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !1286)
!1398 = !DILocalVariable(name: "ret", scope: !1397, file: !116, line: 165, type: !474)
!1399 = !DILocation(line: 165, column: 15, scope: !1397)
!1400 = !DILocation(line: 166, column: 2, scope: !1397)
!1401 = !DILocation(line: 167, column: 20, scope: !1397)
!1402 = !DILocation(line: 167, column: 6, scope: !1397)
!1403 = !DILocation(line: 168, column: 2, scope: !1397)
!1404 = !DILocation(line: 169, column: 9, scope: !1397)
!1405 = !DILocation(line: 169, column: 2, scope: !1397)
!1406 = distinct !DISubprogram(name: "set_max_bps", scope: !116, file: !116, line: 172, type: !1388, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !1286)
!1407 = !DILocalVariable(name: "value", arg: 1, scope: !1406, file: !116, line: 172, type: !474)
!1408 = !DILocation(line: 172, column: 31, scope: !1406)
!1409 = !DILocation(line: 174, column: 2, scope: !1406)
!1410 = !DILocation(line: 175, column: 24, scope: !1406)
!1411 = !DILocation(line: 175, column: 22, scope: !1406)
!1412 = !DILocation(line: 176, column: 2, scope: !1406)
!1413 = !DILocation(line: 177, column: 1, scope: !1406)
!1414 = distinct !DISubprogram(name: "add_aux_server", scope: !116, file: !116, line: 199, type: !1415, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !1286)
!1415 = !DISubroutineType(types: !1416)
!1416 = !{null, !424}
!1417 = !DILocalVariable(name: "saddr", arg: 1, scope: !1414, file: !116, line: 199, type: !424)
!1418 = !DILocation(line: 199, column: 33, scope: !1414)
!1419 = !DILocation(line: 201, column: 22, scope: !1414)
!1420 = !DILocation(line: 201, column: 2, scope: !1414)
!1421 = !DILocation(line: 202, column: 1, scope: !1414)
!1422 = distinct !DISubprogram(name: "add_aux_server_list", scope: !116, file: !116, line: 181, type: !1423, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !1286)
!1423 = !DISubroutineType(types: !1424)
!1424 = !{null, !424, !1003}
!1425 = !DILocalVariable(name: "saddr", arg: 1, scope: !1422, file: !116, line: 181, type: !424)
!1426 = !DILocation(line: 181, column: 45, scope: !1422)
!1427 = !DILocalVariable(name: "list", arg: 2, scope: !1422, file: !116, line: 181, type: !1003)
!1428 = !DILocation(line: 181, column: 78, scope: !1422)
!1429 = !DILocation(line: 183, column: 5, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1422, file: !116, line: 183, column: 5)
!1431 = !DILocation(line: 183, column: 11, scope: !1430)
!1432 = !DILocation(line: 183, column: 14, scope: !1430)
!1433 = !DILocation(line: 183, column: 5, scope: !1422)
!1434 = !DILocalVariable(name: "addr", scope: !1435, file: !116, line: 184, type: !231)
!1435 = distinct !DILexicalBlock(scope: !1430, file: !116, line: 183, column: 20)
!1436 = !DILocation(line: 184, column: 12, scope: !1435)
!1437 = !DILocation(line: 185, column: 53, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1435, file: !116, line: 185, column: 6)
!1439 = !DILocation(line: 185, column: 6, scope: !1438)
!1440 = !DILocation(line: 185, column: 69, scope: !1438)
!1441 = !DILocation(line: 185, column: 6, scope: !1435)
!1442 = !DILocation(line: 186, column: 74, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1438, file: !116, line: 185, column: 74)
!1444 = !DILocation(line: 186, column: 4, scope: !1443)
!1445 = !DILocation(line: 187, column: 3, scope: !1443)
!1446 = !DILocation(line: 188, column: 38, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1438, file: !116, line: 187, column: 10)
!1448 = !DILocation(line: 188, column: 44, scope: !1447)
!1449 = !DILocation(line: 188, column: 68, scope: !1447)
!1450 = !DILocation(line: 188, column: 74, scope: !1447)
!1451 = !DILocation(line: 188, column: 78, scope: !1447)
!1452 = !DILocation(line: 188, column: 66, scope: !1447)
!1453 = !DILocation(line: 188, column: 30, scope: !1447)
!1454 = !DILocation(line: 188, column: 5, scope: !1447)
!1455 = !DILocation(line: 188, column: 11, scope: !1447)
!1456 = !DILocation(line: 188, column: 17, scope: !1447)
!1457 = !DILocation(line: 189, column: 15, scope: !1447)
!1458 = !DILocation(line: 189, column: 21, scope: !1447)
!1459 = !DILocation(line: 189, column: 28, scope: !1447)
!1460 = !DILocation(line: 189, column: 34, scope: !1447)
!1461 = !DILocation(line: 189, column: 39, scope: !1447)
!1462 = !DILocation(line: 189, column: 4, scope: !1447)
!1463 = !DILocalVariable(name: "s", scope: !1464, file: !116, line: 191, type: !1465)
!1464 = distinct !DILexicalBlock(scope: !1447, file: !116, line: 190, column: 4)
!1465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 8200, elements: !224)
!1466 = !DILocation(line: 191, column: 13, scope: !1464)
!1467 = !DILocation(line: 192, column: 27, scope: !1464)
!1468 = !DILocation(line: 192, column: 5, scope: !1464)
!1469 = !DILocation(line: 193, column: 59, scope: !1464)
!1470 = !DILocation(line: 193, column: 5, scope: !1464)
!1471 = !DILocation(line: 196, column: 2, scope: !1435)
!1472 = !DILocation(line: 197, column: 1, scope: !1422)
!1473 = distinct !DISubprogram(name: "add_alternate_server", scope: !116, file: !116, line: 279, type: !1415, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !1286)
!1474 = !DILocalVariable(name: "saddr", arg: 1, scope: !1473, file: !116, line: 279, type: !424)
!1475 = !DILocation(line: 279, column: 39, scope: !1473)
!1476 = !DILocation(line: 281, column: 17, scope: !1473)
!1477 = !DILocation(line: 281, column: 2, scope: !1473)
!1478 = !DILocation(line: 282, column: 1, scope: !1473)
!1479 = distinct !DISubprogram(name: "add_alt_server", scope: !116, file: !116, line: 206, type: !1480, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !1286)
!1480 = !DISubroutineType(types: !1481)
!1481 = !{null, !424, !31, !1003}
!1482 = !DILocalVariable(name: "saddr", arg: 1, scope: !1479, file: !116, line: 206, type: !424)
!1483 = !DILocation(line: 206, column: 40, scope: !1479)
!1484 = !DILocalVariable(name: "default_port", arg: 2, scope: !1479, file: !116, line: 206, type: !31)
!1485 = !DILocation(line: 206, column: 51, scope: !1479)
!1486 = !DILocalVariable(name: "list", arg: 3, scope: !1479, file: !116, line: 206, type: !1003)
!1487 = !DILocation(line: 206, column: 91, scope: !1479)
!1488 = !DILocation(line: 208, column: 5, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1479, file: !116, line: 208, column: 5)
!1490 = !DILocation(line: 208, column: 11, scope: !1489)
!1491 = !DILocation(line: 208, column: 14, scope: !1489)
!1492 = !DILocation(line: 208, column: 5, scope: !1479)
!1493 = !DILocalVariable(name: "addr", scope: !1494, file: !116, line: 209, type: !231)
!1494 = distinct !DILexicalBlock(scope: !1489, file: !116, line: 208, column: 20)
!1495 = !DILocation(line: 209, column: 12, scope: !1494)
!1496 = !DILocation(line: 211, column: 21, scope: !1494)
!1497 = !DILocation(line: 211, column: 27, scope: !1494)
!1498 = !DILocation(line: 211, column: 3, scope: !1494)
!1499 = !DILocation(line: 213, column: 53, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1494, file: !116, line: 213, column: 6)
!1501 = !DILocation(line: 213, column: 60, scope: !1500)
!1502 = !DILocation(line: 213, column: 6, scope: !1500)
!1503 = !DILocation(line: 213, column: 80, scope: !1500)
!1504 = !DILocation(line: 213, column: 6, scope: !1494)
!1505 = !DILocation(line: 214, column: 72, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1500, file: !116, line: 213, column: 85)
!1507 = !DILocation(line: 214, column: 4, scope: !1506)
!1508 = !DILocation(line: 215, column: 3, scope: !1506)
!1509 = !DILocation(line: 216, column: 38, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1500, file: !116, line: 215, column: 10)
!1511 = !DILocation(line: 216, column: 44, scope: !1510)
!1512 = !DILocation(line: 216, column: 68, scope: !1510)
!1513 = !DILocation(line: 216, column: 74, scope: !1510)
!1514 = !DILocation(line: 216, column: 78, scope: !1510)
!1515 = !DILocation(line: 216, column: 66, scope: !1510)
!1516 = !DILocation(line: 216, column: 30, scope: !1510)
!1517 = !DILocation(line: 216, column: 5, scope: !1510)
!1518 = !DILocation(line: 216, column: 11, scope: !1510)
!1519 = !DILocation(line: 216, column: 17, scope: !1510)
!1520 = !DILocation(line: 217, column: 15, scope: !1510)
!1521 = !DILocation(line: 217, column: 21, scope: !1510)
!1522 = !DILocation(line: 217, column: 28, scope: !1510)
!1523 = !DILocation(line: 217, column: 34, scope: !1510)
!1524 = !DILocation(line: 217, column: 39, scope: !1510)
!1525 = !DILocation(line: 217, column: 4, scope: !1510)
!1526 = !DILocalVariable(name: "s", scope: !1527, file: !116, line: 219, type: !1465)
!1527 = distinct !DILexicalBlock(scope: !1510, file: !116, line: 218, column: 4)
!1528 = !DILocation(line: 219, column: 13, scope: !1527)
!1529 = !DILocation(line: 220, column: 27, scope: !1527)
!1530 = !DILocation(line: 220, column: 5, scope: !1527)
!1531 = !DILocation(line: 221, column: 71, scope: !1527)
!1532 = !DILocation(line: 221, column: 5, scope: !1527)
!1533 = !DILocation(line: 225, column: 23, scope: !1494)
!1534 = !DILocation(line: 225, column: 29, scope: !1494)
!1535 = !DILocation(line: 225, column: 3, scope: !1494)
!1536 = !DILocation(line: 226, column: 2, scope: !1494)
!1537 = !DILocation(line: 227, column: 1, scope: !1479)
!1538 = distinct !DISubprogram(name: "del_alternate_server", scope: !116, file: !116, line: 284, type: !1415, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !1286)
!1539 = !DILocalVariable(name: "saddr", arg: 1, scope: !1538, file: !116, line: 284, type: !424)
!1540 = !DILocation(line: 284, column: 39, scope: !1538)
!1541 = !DILocation(line: 286, column: 17, scope: !1538)
!1542 = !DILocation(line: 286, column: 2, scope: !1538)
!1543 = !DILocation(line: 287, column: 1, scope: !1538)
!1544 = distinct !DISubprogram(name: "del_alt_server", scope: !116, file: !116, line: 229, type: !1480, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !1286)
!1545 = !DILocalVariable(name: "saddr", arg: 1, scope: !1544, file: !116, line: 229, type: !424)
!1546 = !DILocation(line: 229, column: 40, scope: !1544)
!1547 = !DILocalVariable(name: "default_port", arg: 2, scope: !1544, file: !116, line: 229, type: !31)
!1548 = !DILocation(line: 229, column: 51, scope: !1544)
!1549 = !DILocalVariable(name: "list", arg: 3, scope: !1544, file: !116, line: 229, type: !1003)
!1550 = !DILocation(line: 229, column: 91, scope: !1544)
!1551 = !DILocation(line: 231, column: 5, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1544, file: !116, line: 231, column: 5)
!1553 = !DILocation(line: 231, column: 11, scope: !1552)
!1554 = !DILocation(line: 231, column: 14, scope: !1552)
!1555 = !DILocation(line: 231, column: 19, scope: !1552)
!1556 = !DILocation(line: 231, column: 22, scope: !1552)
!1557 = !DILocation(line: 231, column: 28, scope: !1552)
!1558 = !DILocation(line: 231, column: 33, scope: !1552)
!1559 = !DILocation(line: 231, column: 36, scope: !1552)
!1560 = !DILocation(line: 231, column: 42, scope: !1552)
!1561 = !DILocation(line: 231, column: 5, scope: !1544)
!1562 = !DILocalVariable(name: "addr", scope: !1563, file: !116, line: 233, type: !231)
!1563 = distinct !DILexicalBlock(scope: !1552, file: !116, line: 231, column: 49)
!1564 = !DILocation(line: 233, column: 12, scope: !1563)
!1565 = !DILocation(line: 235, column: 21, scope: !1563)
!1566 = !DILocation(line: 235, column: 27, scope: !1563)
!1567 = !DILocation(line: 235, column: 3, scope: !1563)
!1568 = !DILocation(line: 237, column: 53, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1563, file: !116, line: 237, column: 6)
!1570 = !DILocation(line: 237, column: 60, scope: !1569)
!1571 = !DILocation(line: 237, column: 6, scope: !1569)
!1572 = !DILocation(line: 237, column: 80, scope: !1569)
!1573 = !DILocation(line: 237, column: 6, scope: !1563)
!1574 = !DILocation(line: 238, column: 72, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1569, file: !116, line: 237, column: 85)
!1576 = !DILocation(line: 238, column: 4, scope: !1575)
!1577 = !DILocation(line: 239, column: 3, scope: !1575)
!1578 = !DILocalVariable(name: "i", scope: !1579, file: !116, line: 241, type: !176)
!1579 = distinct !DILexicalBlock(scope: !1569, file: !116, line: 239, column: 10)
!1580 = !DILocation(line: 241, column: 11, scope: !1579)
!1581 = !DILocalVariable(name: "found", scope: !1579, file: !116, line: 242, type: !31)
!1582 = !DILocation(line: 242, column: 8, scope: !1579)
!1583 = !DILocation(line: 243, column: 9, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1579, file: !116, line: 243, column: 4)
!1585 = !DILocation(line: 243, column: 8, scope: !1584)
!1586 = !DILocation(line: 243, column: 12, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1584, file: !116, line: 243, column: 4)
!1588 = !DILocation(line: 243, column: 14, scope: !1587)
!1589 = !DILocation(line: 243, column: 20, scope: !1587)
!1590 = !DILocation(line: 243, column: 13, scope: !1587)
!1591 = !DILocation(line: 243, column: 4, scope: !1584)
!1592 = !DILocation(line: 244, column: 18, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1594, file: !116, line: 244, column: 8)
!1594 = distinct !DILexicalBlock(scope: !1587, file: !116, line: 243, column: 30)
!1595 = !DILocation(line: 244, column: 24, scope: !1593)
!1596 = !DILocation(line: 244, column: 30, scope: !1593)
!1597 = !DILocation(line: 244, column: 8, scope: !1593)
!1598 = !DILocation(line: 244, column: 8, scope: !1594)
!1599 = !DILocation(line: 245, column: 12, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1593, file: !116, line: 244, column: 42)
!1601 = !DILocation(line: 246, column: 6, scope: !1600)
!1602 = !DILocation(line: 248, column: 4, scope: !1594)
!1603 = !DILocation(line: 243, column: 25, scope: !1587)
!1604 = !DILocation(line: 243, column: 4, scope: !1587)
!1605 = distinct !{!1605, !1591, !1606, !1607}
!1606 = !DILocation(line: 248, column: 4, scope: !1584)
!1607 = !{!"llvm.loop.mustprogress"}
!1608 = !DILocation(line: 250, column: 7, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1579, file: !116, line: 250, column: 7)
!1610 = !DILocation(line: 250, column: 7, scope: !1579)
!1611 = !DILocalVariable(name: "j", scope: !1612, file: !116, line: 252, type: !176)
!1612 = distinct !DILexicalBlock(scope: !1609, file: !116, line: 250, column: 14)
!1613 = !DILocation(line: 252, column: 12, scope: !1612)
!1614 = !DILocalVariable(name: "new_addrs", scope: !1612, file: !116, line: 253, type: !230)
!1615 = !DILocation(line: 253, column: 15, scope: !1612)
!1616 = !DILocation(line: 253, column: 63, scope: !1612)
!1617 = !DILocation(line: 253, column: 69, scope: !1612)
!1618 = !DILocation(line: 253, column: 73, scope: !1612)
!1619 = !DILocation(line: 253, column: 61, scope: !1612)
!1620 = !DILocation(line: 253, column: 38, scope: !1612)
!1621 = !DILocation(line: 254, column: 10, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1612, file: !116, line: 254, column: 5)
!1623 = !DILocation(line: 254, column: 9, scope: !1622)
!1624 = !DILocation(line: 254, column: 13, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1622, file: !116, line: 254, column: 5)
!1626 = !DILocation(line: 254, column: 15, scope: !1625)
!1627 = !DILocation(line: 254, column: 14, scope: !1625)
!1628 = !DILocation(line: 254, column: 5, scope: !1622)
!1629 = !DILocation(line: 255, column: 17, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1625, file: !116, line: 254, column: 22)
!1631 = !DILocation(line: 255, column: 27, scope: !1630)
!1632 = !DILocation(line: 255, column: 33, scope: !1630)
!1633 = !DILocation(line: 255, column: 39, scope: !1630)
!1634 = !DILocation(line: 255, column: 45, scope: !1630)
!1635 = !DILocation(line: 255, column: 6, scope: !1630)
!1636 = !DILocation(line: 256, column: 5, scope: !1630)
!1637 = !DILocation(line: 254, column: 17, scope: !1625)
!1638 = !DILocation(line: 254, column: 5, scope: !1625)
!1639 = distinct !{!1639, !1628, !1640, !1607}
!1640 = !DILocation(line: 256, column: 5, scope: !1622)
!1641 = !DILocation(line: 257, column: 11, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1612, file: !116, line: 257, column: 5)
!1643 = !DILocation(line: 257, column: 10, scope: !1642)
!1644 = !DILocation(line: 257, column: 9, scope: !1642)
!1645 = !DILocation(line: 257, column: 13, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1642, file: !116, line: 257, column: 5)
!1647 = !DILocation(line: 257, column: 15, scope: !1646)
!1648 = !DILocation(line: 257, column: 21, scope: !1646)
!1649 = !DILocation(line: 257, column: 25, scope: !1646)
!1650 = !DILocation(line: 257, column: 14, scope: !1646)
!1651 = !DILocation(line: 257, column: 5, scope: !1642)
!1652 = !DILocation(line: 258, column: 17, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1646, file: !116, line: 257, column: 33)
!1654 = !DILocation(line: 258, column: 27, scope: !1653)
!1655 = !DILocation(line: 258, column: 33, scope: !1653)
!1656 = !DILocation(line: 258, column: 39, scope: !1653)
!1657 = !DILocation(line: 258, column: 45, scope: !1653)
!1658 = !DILocation(line: 258, column: 46, scope: !1653)
!1659 = !DILocation(line: 258, column: 6, scope: !1653)
!1660 = !DILocation(line: 259, column: 5, scope: !1653)
!1661 = !DILocation(line: 257, column: 28, scope: !1646)
!1662 = !DILocation(line: 257, column: 5, scope: !1646)
!1663 = distinct !{!1663, !1651, !1664, !1607}
!1664 = !DILocation(line: 259, column: 5, scope: !1642)
!1665 = !DILocation(line: 261, column: 10, scope: !1612)
!1666 = !DILocation(line: 261, column: 16, scope: !1612)
!1667 = !DILocation(line: 261, column: 5, scope: !1612)
!1668 = !DILocation(line: 262, column: 19, scope: !1612)
!1669 = !DILocation(line: 262, column: 5, scope: !1612)
!1670 = !DILocation(line: 262, column: 11, scope: !1612)
!1671 = !DILocation(line: 262, column: 17, scope: !1612)
!1672 = !DILocation(line: 263, column: 5, scope: !1612)
!1673 = !DILocation(line: 263, column: 11, scope: !1612)
!1674 = !DILocation(line: 263, column: 16, scope: !1612)
!1675 = !DILocalVariable(name: "s", scope: !1676, file: !116, line: 266, type: !1465)
!1676 = distinct !DILexicalBlock(scope: !1612, file: !116, line: 265, column: 5)
!1677 = !DILocation(line: 266, column: 14, scope: !1676)
!1678 = !DILocation(line: 267, column: 28, scope: !1676)
!1679 = !DILocation(line: 267, column: 6, scope: !1676)
!1680 = !DILocation(line: 268, column: 74, scope: !1676)
!1681 = !DILocation(line: 268, column: 6, scope: !1676)
!1682 = !DILocation(line: 271, column: 20, scope: !1612)
!1683 = !DILocation(line: 271, column: 27, scope: !1612)
!1684 = !DILocation(line: 271, column: 41, scope: !1612)
!1685 = !DILocation(line: 271, column: 5, scope: !1612)
!1686 = !DILocation(line: 272, column: 4, scope: !1612)
!1687 = !DILocation(line: 275, column: 23, scope: !1563)
!1688 = !DILocation(line: 275, column: 29, scope: !1563)
!1689 = !DILocation(line: 275, column: 3, scope: !1563)
!1690 = !DILocation(line: 276, column: 2, scope: !1563)
!1691 = !DILocation(line: 277, column: 1, scope: !1544)
!1692 = distinct !DISubprogram(name: "add_tls_alternate_server", scope: !116, file: !116, line: 289, type: !1415, scopeLine: 290, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !1286)
!1693 = !DILocalVariable(name: "saddr", arg: 1, scope: !1692, file: !116, line: 289, type: !424)
!1694 = !DILocation(line: 289, column: 43, scope: !1692)
!1695 = !DILocation(line: 291, column: 17, scope: !1692)
!1696 = !DILocation(line: 291, column: 2, scope: !1692)
!1697 = !DILocation(line: 292, column: 1, scope: !1692)
!1698 = distinct !DISubprogram(name: "del_tls_alternate_server", scope: !116, file: !116, line: 294, type: !1415, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !1286)
!1699 = !DILocalVariable(name: "saddr", arg: 1, scope: !1698, file: !116, line: 294, type: !424)
!1700 = !DILocation(line: 294, column: 43, scope: !1698)
!1701 = !DILocation(line: 296, column: 17, scope: !1698)
!1702 = !DILocation(line: 296, column: 2, scope: !1698)
!1703 = !DILocation(line: 297, column: 1, scope: !1698)
!1704 = distinct !DISubprogram(name: "set_ssl_ctx", scope: !116, file: !116, line: 337, type: !1705, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !1286)
!1705 = !DISubroutineType(types: !1706)
!1706 = !{null, !120, !285}
!1707 = !DILocalVariable(name: "e", arg: 1, scope: !1704, file: !116, line: 337, type: !120)
!1708 = !DILocation(line: 337, column: 36, scope: !1704)
!1709 = !DILocalVariable(name: "params", arg: 2, scope: !1704, file: !116, line: 337, type: !285)
!1710 = !DILocation(line: 337, column: 54, scope: !1704)
!1711 = !DILocalVariable(name: "args", scope: !1704, file: !116, line: 339, type: !114)
!1712 = !DILocation(line: 339, column: 28, scope: !1704)
!1713 = !DILocation(line: 339, column: 63, scope: !1704)
!1714 = !DILocation(line: 340, column: 17, scope: !1704)
!1715 = !DILocation(line: 340, column: 2, scope: !1704)
!1716 = !DILocation(line: 340, column: 8, scope: !1704)
!1717 = !DILocation(line: 340, column: 15, scope: !1704)
!1718 = !DILocation(line: 341, column: 17, scope: !1704)
!1719 = !DILocation(line: 341, column: 2, scope: !1704)
!1720 = !DILocation(line: 341, column: 8, scope: !1704)
!1721 = !DILocation(line: 341, column: 15, scope: !1704)
!1722 = !DILocation(line: 342, column: 2, scope: !1704)
!1723 = !DILocation(line: 342, column: 8, scope: !1704)
!1724 = !DILocation(line: 342, column: 13, scope: !1704)
!1725 = !DILocation(line: 344, column: 24, scope: !1704)
!1726 = !DILocation(line: 344, column: 2, scope: !1704)
!1727 = !DILocalVariable(name: "base", scope: !1704, file: !116, line: 346, type: !132)
!1728 = !DILocation(line: 346, column: 21, scope: !1704)
!1729 = !DILocation(line: 346, column: 28, scope: !1704)
!1730 = !DILocation(line: 346, column: 31, scope: !1704)
!1731 = !DILocation(line: 347, column: 6, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1704, file: !116, line: 347, column: 6)
!1733 = !DILocation(line: 347, column: 11, scope: !1732)
!1734 = !DILocation(line: 347, column: 6, scope: !1704)
!1735 = !DILocalVariable(name: "ev", scope: !1736, file: !116, line: 348, type: !316)
!1736 = distinct !DILexicalBlock(scope: !1732, file: !116, line: 347, column: 20)
!1737 = !DILocation(line: 348, column: 17, scope: !1736)
!1738 = !DILocation(line: 348, column: 32, scope: !1736)
!1739 = !DILocation(line: 348, column: 97, scope: !1736)
!1740 = !DILocation(line: 348, column: 22, scope: !1736)
!1741 = !DILocation(line: 349, column: 3, scope: !1736)
!1742 = !DILocation(line: 350, column: 16, scope: !1736)
!1743 = !DILocation(line: 350, column: 24, scope: !1736)
!1744 = !DILocation(line: 350, column: 3, scope: !1736)
!1745 = !DILocation(line: 350, column: 9, scope: !1736)
!1746 = !DILocation(line: 350, column: 14, scope: !1736)
!1747 = !DILocation(line: 351, column: 31, scope: !1736)
!1748 = !DILocation(line: 351, column: 3, scope: !1736)
!1749 = !DILocation(line: 351, column: 11, scope: !1736)
!1750 = !DILocation(line: 351, column: 29, scope: !1736)
!1751 = !DILocation(line: 352, column: 3, scope: !1736)
!1752 = !DILocation(line: 353, column: 2, scope: !1736)
!1753 = !DILocation(line: 354, column: 1, scope: !1704)
!1754 = distinct !DISubprogram(name: "update_ssl_ctx", scope: !116, file: !116, line: 307, type: !1755, scopeLine: 308, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !1286)
!1755 = !DISubroutineType(types: !1756)
!1756 = !{null, !31, !334, !114}
!1757 = !DILocalVariable(name: "sock", arg: 1, scope: !1754, file: !116, line: 307, type: !31)
!1758 = !DILocation(line: 307, column: 44, scope: !1754)
!1759 = !DILocalVariable(name: "events", arg: 2, scope: !1754, file: !116, line: 307, type: !334)
!1760 = !DILocation(line: 307, column: 56, scope: !1754)
!1761 = !DILocalVariable(name: "args", arg: 3, scope: !1754, file: !116, line: 307, type: !114)
!1762 = !DILocation(line: 307, column: 90, scope: !1754)
!1763 = !DILocalVariable(name: "e", scope: !1754, file: !116, line: 309, type: !120)
!1764 = !DILocation(line: 309, column: 20, scope: !1754)
!1765 = !DILocation(line: 309, column: 24, scope: !1754)
!1766 = !DILocation(line: 309, column: 30, scope: !1754)
!1767 = !DILocalVariable(name: "params", scope: !1754, file: !116, line: 310, type: !285)
!1768 = !DILocation(line: 310, column: 17, scope: !1754)
!1769 = !DILocation(line: 310, column: 26, scope: !1754)
!1770 = !DILocation(line: 310, column: 32, scope: !1754)
!1771 = !DILocation(line: 312, column: 2, scope: !1754)
!1772 = !DILocation(line: 313, column: 21, scope: !1754)
!1773 = !DILocation(line: 313, column: 29, scope: !1754)
!1774 = !DILocation(line: 313, column: 2, scope: !1754)
!1775 = !DILocation(line: 313, column: 5, scope: !1754)
!1776 = !DILocation(line: 313, column: 19, scope: !1754)
!1777 = !DILocation(line: 314, column: 20, scope: !1754)
!1778 = !DILocation(line: 314, column: 28, scope: !1754)
!1779 = !DILocation(line: 314, column: 2, scope: !1754)
!1780 = !DILocation(line: 314, column: 5, scope: !1754)
!1781 = !DILocation(line: 314, column: 18, scope: !1754)
!1782 = !DILocation(line: 316, column: 20, scope: !1754)
!1783 = !DILocation(line: 316, column: 28, scope: !1754)
!1784 = !DILocation(line: 316, column: 2, scope: !1754)
!1785 = !DILocation(line: 316, column: 5, scope: !1754)
!1786 = !DILocation(line: 316, column: 18, scope: !1754)
!1787 = !DILocation(line: 318, column: 20, scope: !1754)
!1788 = !DILocation(line: 318, column: 28, scope: !1754)
!1789 = !DILocation(line: 318, column: 2, scope: !1754)
!1790 = !DILocation(line: 318, column: 5, scope: !1754)
!1791 = !DILocation(line: 318, column: 18, scope: !1754)
!1792 = !DILocation(line: 322, column: 16, scope: !1754)
!1793 = !DILocation(line: 322, column: 24, scope: !1754)
!1794 = !DILocation(line: 322, column: 2, scope: !1754)
!1795 = !DILocation(line: 322, column: 5, scope: !1754)
!1796 = !DILocation(line: 322, column: 14, scope: !1754)
!1797 = !DILocation(line: 325, column: 21, scope: !1754)
!1798 = !DILocation(line: 325, column: 29, scope: !1754)
!1799 = !DILocation(line: 325, column: 2, scope: !1754)
!1800 = !DILocation(line: 325, column: 5, scope: !1754)
!1801 = !DILocation(line: 325, column: 19, scope: !1754)
!1802 = !DILocalVariable(name: "next", scope: !1754, file: !116, line: 327, type: !316)
!1803 = !DILocation(line: 327, column: 16, scope: !1754)
!1804 = !DILocation(line: 327, column: 23, scope: !1754)
!1805 = !DILocation(line: 327, column: 29, scope: !1754)
!1806 = !DILocation(line: 328, column: 2, scope: !1754)
!1807 = !DILocation(line: 330, column: 6, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1754, file: !116, line: 330, column: 6)
!1809 = !DILocation(line: 330, column: 11, scope: !1808)
!1810 = !DILocation(line: 330, column: 6, scope: !1754)
!1811 = !DILocation(line: 331, column: 16, scope: !1808)
!1812 = !DILocation(line: 331, column: 3, scope: !1808)
!1813 = !DILocation(line: 333, column: 2, scope: !1754)
!1814 = !DILocation(line: 333, column: 2, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1754, file: !116, line: 333, column: 2)
!1816 = !DILocation(line: 334, column: 2, scope: !1754)
!1817 = !DILocation(line: 334, column: 2, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1754, file: !116, line: 334, column: 2)
!1819 = !DILocation(line: 335, column: 1, scope: !1754)
!1820 = distinct !DISubprogram(name: "add_listener_addr", scope: !116, file: !116, line: 358, type: !1415, scopeLine: 358, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !1286)
!1821 = !DILocalVariable(name: "addr", arg: 1, scope: !1820, file: !116, line: 358, type: !424)
!1822 = !DILocation(line: 358, column: 36, scope: !1820)
!1823 = !DILocalVariable(name: "baddr", scope: !1820, file: !116, line: 359, type: !231)
!1824 = !DILocation(line: 359, column: 11, scope: !1820)
!1825 = !DILocation(line: 360, column: 35, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1820, file: !116, line: 360, column: 5)
!1827 = !DILocation(line: 360, column: 5, scope: !1826)
!1828 = !DILocation(line: 360, column: 49, scope: !1826)
!1829 = !DILocation(line: 360, column: 5, scope: !1820)
!1830 = !DILocation(line: 361, column: 76, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1826, file: !116, line: 360, column: 53)
!1832 = !DILocation(line: 361, column: 3, scope: !1831)
!1833 = !DILocation(line: 362, column: 2, scope: !1831)
!1834 = !DILocalVariable(name: "sbaddr", scope: !1835, file: !116, line: 364, type: !1836)
!1835 = distinct !DILexicalBlock(scope: !1826, file: !116, line: 362, column: 9)
!1836 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 1032, elements: !1837)
!1837 = !{!1838}
!1838 = !DISubrange(count: 129)
!1839 = !DILocation(line: 364, column: 9, scope: !1835)
!1840 = !DILocation(line: 365, column: 44, scope: !1835)
!1841 = !DILocation(line: 365, column: 4, scope: !1835)
!1842 = !DILocalVariable(name: "i", scope: !1835, file: !116, line: 367, type: !176)
!1843 = !DILocation(line: 367, column: 10, scope: !1835)
!1844 = !DILocation(line: 368, column: 8, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1835, file: !116, line: 368, column: 3)
!1846 = !DILocation(line: 368, column: 7, scope: !1845)
!1847 = !DILocation(line: 368, column: 11, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1845, file: !116, line: 368, column: 3)
!1849 = !DILocation(line: 368, column: 34, scope: !1848)
!1850 = !DILocation(line: 368, column: 12, scope: !1848)
!1851 = !DILocation(line: 368, column: 3, scope: !1845)
!1852 = !DILocation(line: 369, column: 36, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1854, file: !116, line: 369, column: 7)
!1854 = distinct !DILexicalBlock(scope: !1848, file: !116, line: 368, column: 52)
!1855 = !DILocation(line: 369, column: 45, scope: !1853)
!1856 = !DILocation(line: 369, column: 15, scope: !1853)
!1857 = !DILocation(line: 369, column: 7, scope: !1853)
!1858 = !DILocation(line: 369, column: 7, scope: !1854)
!1859 = !DILocation(line: 370, column: 5, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1853, file: !116, line: 369, column: 57)
!1861 = !DILocation(line: 372, column: 3, scope: !1854)
!1862 = !DILocation(line: 368, column: 47, scope: !1848)
!1863 = !DILocation(line: 368, column: 3, scope: !1848)
!1864 = distinct !{!1864, !1851, !1865, !1607}
!1865 = !DILocation(line: 372, column: 3, scope: !1845)
!1866 = !DILocation(line: 373, column: 3, scope: !1835)
!1867 = !DILocation(line: 374, column: 3, scope: !1835)
!1868 = !DILocation(line: 375, column: 69, scope: !1835)
!1869 = !DILocation(line: 375, column: 111, scope: !1835)
!1870 = !DILocation(line: 375, column: 89, scope: !1835)
!1871 = !DILocation(line: 375, column: 40, scope: !1835)
!1872 = !DILocation(line: 375, column: 30, scope: !1835)
!1873 = !DILocation(line: 376, column: 74, scope: !1835)
!1874 = !DILocation(line: 376, column: 67, scope: !1835)
!1875 = !DILocation(line: 376, column: 24, scope: !1835)
!1876 = !DILocation(line: 376, column: 51, scope: !1835)
!1877 = !DILocation(line: 376, column: 63, scope: !1835)
!1878 = !DILocation(line: 376, column: 3, scope: !1835)
!1879 = !DILocation(line: 376, column: 66, scope: !1835)
!1880 = !DILocation(line: 377, column: 76, scope: !1835)
!1881 = !DILocation(line: 377, column: 125, scope: !1835)
!1882 = !DILocation(line: 377, column: 103, scope: !1835)
!1883 = !DILocation(line: 377, column: 47, scope: !1835)
!1884 = !DILocation(line: 377, column: 33, scope: !1835)
!1885 = !DILocation(line: 378, column: 81, scope: !1835)
!1886 = !DILocation(line: 378, column: 24, scope: !1835)
!1887 = !DILocation(line: 378, column: 54, scope: !1835)
!1888 = !DILocation(line: 378, column: 66, scope: !1835)
!1889 = !DILocation(line: 378, column: 3, scope: !1835)
!1890 = !DILocation(line: 378, column: 69, scope: !1835)
!1891 = !DILocation(line: 379, column: 33, scope: !1835)
!1892 = !DILocation(line: 379, column: 63, scope: !1835)
!1893 = !DILocation(line: 379, column: 75, scope: !1835)
!1894 = !DILocation(line: 379, column: 12, scope: !1835)
!1895 = !DILocation(line: 379, column: 3, scope: !1835)
!1896 = !DILocation(line: 380, column: 70, scope: !1835)
!1897 = !DILocation(line: 380, column: 3, scope: !1835)
!1898 = !DILocation(line: 382, column: 1, scope: !1820)
!1899 = distinct !DISubprogram(name: "add_relay_addr", scope: !116, file: !116, line: 384, type: !1900, scopeLine: 384, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !1286)
!1900 = !DISubroutineType(types: !1901)
!1901 = !{!31, !424}
!1902 = !DILocalVariable(name: "addr", arg: 1, scope: !1899, file: !116, line: 384, type: !424)
!1903 = !DILocation(line: 384, column: 32, scope: !1899)
!1904 = !DILocalVariable(name: "baddr", scope: !1899, file: !116, line: 385, type: !231)
!1905 = !DILocation(line: 385, column: 11, scope: !1899)
!1906 = !DILocation(line: 386, column: 35, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1899, file: !116, line: 386, column: 5)
!1908 = !DILocation(line: 386, column: 5, scope: !1907)
!1909 = !DILocation(line: 386, column: 49, scope: !1907)
!1910 = !DILocation(line: 386, column: 5, scope: !1899)
!1911 = !DILocation(line: 387, column: 73, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1907, file: !116, line: 386, column: 53)
!1913 = !DILocation(line: 387, column: 3, scope: !1912)
!1914 = !DILocation(line: 388, column: 3, scope: !1912)
!1915 = !DILocalVariable(name: "sbaddr", scope: !1916, file: !116, line: 391, type: !1836)
!1916 = distinct !DILexicalBlock(scope: !1907, file: !116, line: 389, column: 9)
!1917 = !DILocation(line: 391, column: 8, scope: !1916)
!1918 = !DILocation(line: 392, column: 43, scope: !1916)
!1919 = !DILocation(line: 392, column: 3, scope: !1916)
!1920 = !DILocalVariable(name: "i", scope: !1916, file: !116, line: 394, type: !176)
!1921 = !DILocation(line: 394, column: 10, scope: !1916)
!1922 = !DILocation(line: 395, column: 8, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1916, file: !116, line: 395, column: 3)
!1924 = !DILocation(line: 395, column: 7, scope: !1923)
!1925 = !DILocation(line: 395, column: 11, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1923, file: !116, line: 395, column: 3)
!1927 = !DILocation(line: 395, column: 25, scope: !1926)
!1928 = !DILocation(line: 395, column: 12, scope: !1926)
!1929 = !DILocation(line: 395, column: 3, scope: !1923)
!1930 = !DILocation(line: 396, column: 27, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1932, file: !116, line: 396, column: 7)
!1932 = distinct !DILexicalBlock(scope: !1926, file: !116, line: 395, column: 44)
!1933 = !DILocation(line: 396, column: 39, scope: !1931)
!1934 = !DILocation(line: 396, column: 15, scope: !1931)
!1935 = !DILocation(line: 396, column: 42, scope: !1931)
!1936 = !DILocation(line: 396, column: 8, scope: !1931)
!1937 = !DILocation(line: 396, column: 7, scope: !1932)
!1938 = !DILocation(line: 397, column: 5, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1931, file: !116, line: 396, column: 51)
!1940 = !DILocation(line: 399, column: 3, scope: !1932)
!1941 = !DILocation(line: 395, column: 39, scope: !1926)
!1942 = !DILocation(line: 395, column: 3, scope: !1926)
!1943 = distinct !{!1943, !1929, !1944, !1607}
!1944 = !DILocation(line: 399, column: 3, scope: !1923)
!1945 = !DILocation(line: 401, column: 3, scope: !1916)
!1946 = !DILocation(line: 402, column: 57, scope: !1916)
!1947 = !DILocation(line: 402, column: 96, scope: !1916)
!1948 = !DILocation(line: 402, column: 83, scope: !1916)
!1949 = !DILocation(line: 402, column: 37, scope: !1916)
!1950 = !DILocation(line: 402, column: 27, scope: !1916)
!1951 = !DILocation(line: 403, column: 63, scope: !1916)
!1952 = !DILocation(line: 403, column: 56, scope: !1916)
!1953 = !DILocation(line: 403, column: 15, scope: !1916)
!1954 = !DILocation(line: 403, column: 39, scope: !1916)
!1955 = !DILocation(line: 403, column: 52, scope: !1916)
!1956 = !DILocation(line: 403, column: 3, scope: !1916)
!1957 = !DILocation(line: 403, column: 55, scope: !1916)
!1958 = !DILocation(line: 405, column: 67, scope: !1916)
!1959 = !DILocation(line: 405, column: 3, scope: !1916)
!1960 = !DILocation(line: 406, column: 3, scope: !1916)
!1961 = !DILocation(line: 408, column: 1, scope: !1899)
!1962 = distinct !DISubprogram(name: "send_auth_message_to_auth_server", scope: !116, file: !116, line: 434, type: !1963, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !1286)
!1963 = !DISubroutineType(types: !1964)
!1964 = !{null, !1965}
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "auth_message", file: !30, line: 80, size: 8448, elements: !1967)
!1967 = !{!1968, !1969, !1970, !1971, !1972, !1973, !1974, !1976, !1977, !1978, !1979, !1980, !1981}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1966, file: !30, line: 81, baseType: !437, size: 8)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "ct", scope: !1966, file: !30, line: 82, baseType: !471, size: 32, offset: 32)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "in_oauth", scope: !1966, file: !30, line: 83, baseType: !31, size: 32, offset: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "out_oauth", scope: !1966, file: !30, line: 84, baseType: !31, size: 32, offset: 96)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "max_session_time", scope: !1966, file: !30, line: 85, baseType: !31, size: 32, offset: 128)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !1966, file: !30, line: 86, baseType: !846, size: 4104, offset: 160)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "realm", scope: !1966, file: !30, line: 87, baseType: !1975, size: 1024, offset: 4264)
!1975 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 1024, elements: !865)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1966, file: !30, line: 88, baseType: !848, size: 512, offset: 5288)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "pwd", scope: !1966, file: !30, line: 89, baseType: !854, size: 2056, offset: 5800)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "resume_func", scope: !1966, file: !30, line: 90, baseType: !911, size: 64, offset: 7872)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "in_buffer", scope: !1966, file: !30, line: 91, baseType: !653, size: 384, offset: 7936)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "ctxkey", scope: !1966, file: !30, line: 92, baseType: !545, size: 64, offset: 8320)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "success", scope: !1966, file: !30, line: 93, baseType: !31, size: 32, offset: 8384)
!1982 = !DILocalVariable(name: "am", arg: 1, scope: !1962, file: !116, line: 434, type: !1965)
!1983 = !DILocation(line: 434, column: 60, scope: !1962)
!1984 = !DILocation(line: 436, column: 2, scope: !1962)
!1985 = !DILocation(line: 437, column: 5, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1962, file: !116, line: 437, column: 5)
!1987 = !DILocation(line: 437, column: 27, scope: !1986)
!1988 = !DILocation(line: 437, column: 25, scope: !1986)
!1989 = !DILocation(line: 437, column: 5, scope: !1962)
!1990 = !DILocation(line: 437, column: 67, scope: !1986)
!1991 = !DILocation(line: 437, column: 46, scope: !1986)
!1992 = !DILocation(line: 438, column: 10, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1986, file: !116, line: 438, column: 10)
!1994 = !DILocation(line: 438, column: 30, scope: !1993)
!1995 = !DILocation(line: 438, column: 10, scope: !1986)
!1996 = !DILocation(line: 438, column: 55, scope: !1993)
!1997 = !DILocation(line: 438, column: 34, scope: !1993)
!1998 = !DILocalVariable(name: "sn", scope: !1962, file: !116, line: 439, type: !525)
!1999 = !DILocation(line: 439, column: 16, scope: !1962)
!2000 = !DILocation(line: 439, column: 41, scope: !1962)
!2001 = !DILocation(line: 440, column: 2, scope: !1962)
!2002 = !DILocalVariable(name: "output", scope: !1962, file: !116, line: 442, type: !2003)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = !DICompositeType(tag: DW_TAG_structure_type, name: "evbuffer", file: !98, line: 119, flags: DIFlagFwdDecl)
!2005 = !DILocation(line: 442, column: 19, scope: !1962)
!2006 = !DILocation(line: 442, column: 62, scope: !1962)
!2007 = !DILocation(line: 442, column: 51, scope: !1962)
!2008 = !DILocation(line: 442, column: 66, scope: !1962)
!2009 = !DILocation(line: 442, column: 28, scope: !1962)
!2010 = !DILocation(line: 443, column: 18, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !1962, file: !116, line: 443, column: 5)
!2012 = !DILocation(line: 443, column: 25, scope: !2011)
!2013 = !DILocation(line: 443, column: 5, scope: !2011)
!2014 = !DILocation(line: 443, column: 56, scope: !2011)
!2015 = !DILocation(line: 443, column: 5, scope: !1962)
!2016 = !DILocation(line: 444, column: 11, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !2011, file: !116, line: 443, column: 60)
!2018 = !DILocation(line: 444, column: 3, scope: !2017)
!2019 = !DILocation(line: 445, column: 2, scope: !2017)
!2020 = !DILocation(line: 446, column: 1, scope: !1962)
!2021 = distinct !DISubprogram(name: "send_session_cancellation_to_relay", scope: !116, file: !116, line: 696, type: !2022, scopeLine: 697, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !1286)
!2022 = !DISubroutineType(types: !2023)
!2023 = !{!31, !543}
!2024 = !DILocalVariable(name: "sid", arg: 1, scope: !2021, file: !116, line: 696, type: !543)
!2025 = !DILocation(line: 696, column: 55, scope: !2021)
!2026 = !DILocalVariable(name: "ret", scope: !2021, file: !116, line: 698, type: !31)
!2027 = !DILocation(line: 698, column: 6, scope: !2021)
!2028 = !DILocalVariable(name: "sm", scope: !2021, file: !116, line: 700, type: !2029)
!2029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "message_to_relay", file: !124, line: 114, size: 896, elements: !2030)
!2030 = !{!2031, !2032, !2033}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "t", scope: !2029, file: !124, line: 115, baseType: !1001, size: 32)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "relay_server", scope: !2029, file: !124, line: 116, baseType: !526, size: 64, offset: 64)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !2029, file: !124, line: 121, baseType: !2034, size: 768, offset: 128)
!2034 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2029, file: !124, line: 117, size: 768, elements: !2035)
!2035 = !{!2036, !2042, !2052}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "sm", scope: !2034, file: !124, line: 118, baseType: !2037, size: 512)
!2037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "socket_message", file: !40, line: 86, size: 512, elements: !2038)
!2038 = !{!2039, !2040, !2041}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2037, file: !40, line: 87, baseType: !594, size: 64)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "nd", scope: !2037, file: !40, line: 88, baseType: !653, size: 384, offset: 64)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "can_resume", scope: !2037, file: !40, line: 89, baseType: !31, size: 32, offset: 448)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "cb_sm", scope: !2034, file: !124, line: 119, baseType: !2043, size: 768)
!2043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cb_socket_message", file: !124, line: 87, size: 768, elements: !2044)
!2044 = !{!2045, !2046, !2047, !2048, !2049, !2050, !2051}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2043, file: !124, line: 88, baseType: !437, size: 8)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "connection_id", scope: !2043, file: !124, line: 89, baseType: !687, size: 32, offset: 32)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !2043, file: !124, line: 90, baseType: !694, size: 96, offset: 64)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2043, file: !124, line: 91, baseType: !594, size: 64, offset: 192)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "message_integrity", scope: !2043, file: !124, line: 92, baseType: !31, size: 32, offset: 256)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "nd", scope: !2043, file: !124, line: 93, baseType: !653, size: 384, offset: 320)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "can_resume", scope: !2043, file: !124, line: 94, baseType: !31, size: 32, offset: 704)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "csm", scope: !2034, file: !124, line: 120, baseType: !2053, size: 64)
!2053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cancelled_session_message", file: !124, line: 97, size: 64, elements: !2054)
!2054 = !{!2055}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2053, file: !124, line: 98, baseType: !543, size: 64)
!2056 = !DILocation(line: 700, column: 26, scope: !2021)
!2057 = !DILocation(line: 701, column: 2, scope: !2021)
!2058 = !DILocation(line: 702, column: 5, scope: !2021)
!2059 = !DILocation(line: 702, column: 7, scope: !2021)
!2060 = !DILocalVariable(name: "id", scope: !2021, file: !116, line: 704, type: !437)
!2061 = !DILocation(line: 704, column: 16, scope: !2021)
!2062 = !DILocation(line: 704, column: 37, scope: !2021)
!2063 = !DILocation(line: 704, column: 41, scope: !2021)
!2064 = !DILocation(line: 704, column: 21, scope: !2021)
!2065 = !DILocalVariable(name: "rs", scope: !2021, file: !116, line: 706, type: !526)
!2066 = !DILocation(line: 706, column: 23, scope: !2021)
!2067 = !DILocation(line: 707, column: 5, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2021, file: !116, line: 707, column: 5)
!2069 = !DILocation(line: 707, column: 7, scope: !2068)
!2070 = !DILocation(line: 707, column: 5, scope: !2021)
!2071 = !DILocalVariable(name: "dest", scope: !2072, file: !116, line: 708, type: !176)
!2072 = distinct !DILexicalBlock(scope: !2068, file: !116, line: 707, column: 53)
!2073 = !DILocation(line: 708, column: 10, scope: !2072)
!2074 = !DILocation(line: 708, column: 17, scope: !2072)
!2075 = !DILocation(line: 708, column: 19, scope: !2072)
!2076 = !DILocation(line: 709, column: 6, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !2072, file: !116, line: 709, column: 6)
!2078 = !DILocation(line: 709, column: 14, scope: !2077)
!2079 = !DILocation(line: 709, column: 11, scope: !2077)
!2080 = !DILocation(line: 709, column: 6, scope: !2072)
!2081 = !DILocation(line: 713, column: 24, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2077, file: !116, line: 709, column: 51)
!2083 = !DILocation(line: 713, column: 19, scope: !2082)
!2084 = !DILocation(line: 713, column: 34, scope: !2082)
!2085 = !DILocation(line: 710, column: 4, scope: !2082)
!2086 = !DILocation(line: 714, column: 8, scope: !2082)
!2087 = !DILocation(line: 715, column: 4, scope: !2082)
!2088 = !DILocation(line: 717, column: 26, scope: !2072)
!2089 = !DILocation(line: 717, column: 8, scope: !2072)
!2090 = !DILocation(line: 717, column: 6, scope: !2072)
!2091 = !DILocation(line: 718, column: 7, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2072, file: !116, line: 718, column: 6)
!2093 = !DILocation(line: 718, column: 6, scope: !2072)
!2094 = !DILocation(line: 722, column: 24, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !2092, file: !116, line: 718, column: 11)
!2096 = !DILocation(line: 722, column: 19, scope: !2095)
!2097 = !DILocation(line: 722, column: 34, scope: !2095)
!2098 = !DILocation(line: 719, column: 4, scope: !2095)
!2099 = !DILocation(line: 723, column: 8, scope: !2095)
!2100 = !DILocation(line: 724, column: 4, scope: !2095)
!2101 = !DILocation(line: 726, column: 2, scope: !2072)
!2102 = !DILocalVariable(name: "dest", scope: !2103, file: !116, line: 727, type: !176)
!2103 = distinct !DILexicalBlock(scope: !2068, file: !116, line: 726, column: 9)
!2104 = !DILocation(line: 727, column: 10, scope: !2103)
!2105 = !DILocation(line: 727, column: 17, scope: !2103)
!2106 = !DILocation(line: 728, column: 6, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2103, file: !116, line: 728, column: 6)
!2108 = !DILocation(line: 728, column: 14, scope: !2107)
!2109 = !DILocation(line: 728, column: 11, scope: !2107)
!2110 = !DILocation(line: 728, column: 6, scope: !2103)
!2111 = !DILocation(line: 732, column: 24, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2107, file: !116, line: 728, column: 55)
!2113 = !DILocation(line: 732, column: 19, scope: !2112)
!2114 = !DILocation(line: 732, column: 34, scope: !2112)
!2115 = !DILocation(line: 729, column: 4, scope: !2112)
!2116 = !DILocation(line: 733, column: 8, scope: !2112)
!2117 = !DILocation(line: 734, column: 4, scope: !2112)
!2118 = !DILocation(line: 736, column: 30, scope: !2103)
!2119 = !DILocation(line: 736, column: 8, scope: !2103)
!2120 = !DILocation(line: 736, column: 6, scope: !2103)
!2121 = !DILocation(line: 737, column: 7, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2103, file: !116, line: 737, column: 6)
!2123 = !DILocation(line: 737, column: 6, scope: !2103)
!2124 = !DILocation(line: 741, column: 23, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2122, file: !116, line: 737, column: 11)
!2126 = !DILocation(line: 741, column: 18, scope: !2125)
!2127 = !DILocation(line: 741, column: 33, scope: !2125)
!2128 = !DILocation(line: 738, column: 4, scope: !2125)
!2129 = !DILocation(line: 742, column: 8, scope: !2125)
!2130 = !DILocation(line: 743, column: 4, scope: !2125)
!2131 = !DILocation(line: 747, column: 20, scope: !2021)
!2132 = !DILocation(line: 747, column: 5, scope: !2021)
!2133 = !DILocation(line: 747, column: 18, scope: !2021)
!2134 = !DILocation(line: 748, column: 16, scope: !2021)
!2135 = !DILocation(line: 748, column: 5, scope: !2021)
!2136 = !DILocation(line: 748, column: 11, scope: !2021)
!2137 = !DILocation(line: 748, column: 14, scope: !2021)
!2138 = !DILocalVariable(name: "output", scope: !2139, file: !116, line: 751, type: !2003)
!2139 = distinct !DILexicalBlock(scope: !2021, file: !116, line: 750, column: 2)
!2140 = !DILocation(line: 751, column: 20, scope: !2139)
!2141 = !DILocation(line: 751, column: 52, scope: !2139)
!2142 = !DILocation(line: 751, column: 56, scope: !2139)
!2143 = !DILocation(line: 751, column: 29, scope: !2139)
!2144 = !DILocation(line: 752, column: 6, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2139, file: !116, line: 752, column: 6)
!2146 = !DILocation(line: 752, column: 6, scope: !2139)
!2147 = !DILocation(line: 753, column: 17, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2145, file: !116, line: 752, column: 14)
!2149 = !DILocation(line: 753, column: 4, scope: !2148)
!2150 = !DILocation(line: 754, column: 3, scope: !2148)
!2151 = !DILocation(line: 755, column: 4, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2145, file: !116, line: 754, column: 10)
!2153 = !DILocation(line: 759, column: 8, scope: !2152)
!2154 = !DILocation(line: 761, column: 2, scope: !2139)
!2155 = !DILabel(scope: !2021, name: "err", file: !116, line: 763)
!2156 = !DILocation(line: 763, column: 2, scope: !2021)
!2157 = !DILocation(line: 764, column: 9, scope: !2021)
!2158 = !DILocation(line: 764, column: 2, scope: !2021)
!2159 = distinct !DISubprogram(name: "run_listener_server", scope: !116, file: !116, line: 1588, type: !2160, scopeLine: 1589, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !1286)
!2160 = !DISubroutineType(types: !2161)
!2161 = !{null, !2162}
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!2163 = !DILocalVariable(name: "ls", arg: 1, scope: !2159, file: !116, line: 1588, type: !2162)
!2164 = !DILocation(line: 1588, column: 50, scope: !2159)
!2165 = !DILocalVariable(name: "cycle", scope: !2159, file: !116, line: 1590, type: !7)
!2166 = !DILocation(line: 1590, column: 15, scope: !2159)
!2167 = !DILocation(line: 1591, column: 2, scope: !2159)
!2168 = !DILocation(line: 1591, column: 22, scope: !2159)
!2169 = !DILocation(line: 1591, column: 9, scope: !2159)
!2170 = !DILocation(line: 1594, column: 4, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2159, file: !116, line: 1591, column: 40)
!2172 = !DILocation(line: 1597, column: 7, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2171, file: !116, line: 1597, column: 7)
!2174 = !DILocation(line: 1597, column: 7, scope: !2171)
!2175 = !DILocation(line: 1598, column: 14, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2177, file: !116, line: 1598, column: 8)
!2177 = distinct !DILexicalBlock(scope: !2173, file: !116, line: 1597, column: 33)
!2178 = !DILocation(line: 1598, column: 17, scope: !2176)
!2179 = !DILocation(line: 1598, column: 23, scope: !2176)
!2180 = !DILocation(line: 1598, column: 8, scope: !2177)
!2181 = !DILocation(line: 1599, column: 72, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2176, file: !116, line: 1598, column: 29)
!2183 = !DILocation(line: 1599, column: 5, scope: !2182)
!2184 = !DILocation(line: 1600, column: 4, scope: !2182)
!2185 = !DILocation(line: 1601, column: 3, scope: !2177)
!2186 = !DILocation(line: 1603, column: 14, scope: !2171)
!2187 = !DILocation(line: 1603, column: 18, scope: !2171)
!2188 = !DILocation(line: 1603, column: 30, scope: !2171)
!2189 = !DILocation(line: 1603, column: 34, scope: !2171)
!2190 = !DILocation(line: 1603, column: 3, scope: !2171)
!2191 = !DILocation(line: 1605, column: 3, scope: !2171)
!2192 = distinct !{!2192, !2167, !2193, !1607}
!2193 = !DILocation(line: 1606, column: 2, scope: !2159)
!2194 = !DILocation(line: 1609, column: 3, scope: !2159)
!2195 = !DILocation(line: 1611, column: 1, scope: !2159)
!2196 = distinct !DISubprogram(name: "run_events", scope: !116, file: !116, line: 1564, type: !2197, scopeLine: 1565, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !1286)
!2197 = !DISubroutineType(types: !2198)
!2198 = !{null, !132, !120}
!2199 = !DILocalVariable(name: "eb", arg: 1, scope: !2196, file: !116, line: 1564, type: !132)
!2200 = !DILocation(line: 1564, column: 43, scope: !2196)
!2201 = !DILocalVariable(name: "e", arg: 2, scope: !2196, file: !116, line: 1564, type: !120)
!2202 = !DILocation(line: 1564, column: 65, scope: !2196)
!2203 = !DILocation(line: 1566, column: 6, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2196, file: !116, line: 1566, column: 5)
!2205 = !DILocation(line: 1566, column: 9, scope: !2204)
!2206 = !DILocation(line: 1566, column: 12, scope: !2204)
!2207 = !DILocation(line: 1566, column: 5, scope: !2196)
!2208 = !DILocation(line: 1567, column: 8, scope: !2204)
!2209 = !DILocation(line: 1567, column: 11, scope: !2204)
!2210 = !DILocation(line: 1567, column: 6, scope: !2204)
!2211 = !DILocation(line: 1567, column: 3, scope: !2204)
!2212 = !DILocation(line: 1569, column: 7, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2196, file: !116, line: 1569, column: 6)
!2214 = !DILocation(line: 1569, column: 6, scope: !2196)
!2215 = !DILocation(line: 1570, column: 3, scope: !2213)
!2216 = !DILocalVariable(name: "timeout", scope: !2196, file: !116, line: 1572, type: !214)
!2217 = !DILocation(line: 1572, column: 17, scope: !2196)
!2218 = !DILocation(line: 1574, column: 10, scope: !2196)
!2219 = !DILocation(line: 1574, column: 17, scope: !2196)
!2220 = !DILocation(line: 1575, column: 10, scope: !2196)
!2221 = !DILocation(line: 1575, column: 18, scope: !2196)
!2222 = !DILocation(line: 1577, column: 22, scope: !2196)
!2223 = !DILocation(line: 1577, column: 2, scope: !2196)
!2224 = !DILocation(line: 1579, column: 22, scope: !2196)
!2225 = !DILocation(line: 1579, column: 2, scope: !2196)
!2226 = !DILocation(line: 1583, column: 5, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2196, file: !116, line: 1583, column: 5)
!2228 = !DILocation(line: 1583, column: 5, scope: !2196)
!2229 = !DILocation(line: 1584, column: 25, scope: !2227)
!2230 = !DILocation(line: 1584, column: 28, scope: !2227)
!2231 = !DILocation(line: 1584, column: 3, scope: !2227)
!2232 = !DILocation(line: 1586, column: 1, scope: !2196)
!2233 = distinct !DISubprogram(name: "setup_server", scope: !116, file: !116, line: 1840, type: !2234, scopeLine: 1841, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !1286)
!2234 = !DISubroutineType(types: !2235)
!2235 = !{null}
!2236 = !DILocation(line: 1842, column: 2, scope: !2233)
!2237 = !DILocation(line: 1844, column: 2, scope: !2233)
!2238 = !DILocation(line: 1846, column: 54, scope: !2233)
!2239 = !DILocation(line: 1846, column: 59, scope: !2233)
!2240 = !DILocation(line: 1846, column: 26, scope: !2233)
!2241 = !DILocation(line: 1846, column: 24, scope: !2233)
!2242 = !DILocation(line: 1846, column: 22, scope: !2233)
!2243 = !DILocation(line: 1846, column: 20, scope: !2233)
!2244 = !DILocation(line: 1848, column: 5, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2233, file: !116, line: 1848, column: 5)
!2246 = !DILocation(line: 1848, column: 23, scope: !2245)
!2247 = !DILocation(line: 1848, column: 5, scope: !2233)
!2248 = !DILocation(line: 1848, column: 66, scope: !2245)
!2249 = !DILocation(line: 1848, column: 48, scope: !2245)
!2250 = !DILocation(line: 1855, column: 30, scope: !2233)
!2251 = !DILocation(line: 1855, column: 18, scope: !2233)
!2252 = !DILocation(line: 1855, column: 59, scope: !2233)
!2253 = !DILocation(line: 1855, column: 58, scope: !2233)
!2254 = !DILocation(line: 1855, column: 76, scope: !2233)
!2255 = !DILocation(line: 1855, column: 78, scope: !2233)
!2256 = !DILocation(line: 1855, column: 16, scope: !2233)
!2257 = !DILocation(line: 1859, column: 2, scope: !2233)
!2258 = !DILocation(line: 1860, column: 2, scope: !2233)
!2259 = !DILocation(line: 1861, column: 2, scope: !2233)
!2260 = !DILocation(line: 1862, column: 2, scope: !2233)
!2261 = !DILocation(line: 1864, column: 17, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2233, file: !116, line: 1864, column: 5)
!2263 = !DILocation(line: 1864, column: 36, scope: !2262)
!2264 = !DILocation(line: 1864, column: 5, scope: !2233)
!2265 = !DILocation(line: 1865, column: 3, scope: !2262)
!2266 = !DILocation(line: 1866, column: 22, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2262, file: !116, line: 1866, column: 10)
!2268 = !DILocation(line: 1866, column: 41, scope: !2267)
!2269 = !DILocation(line: 1866, column: 10, scope: !2262)
!2270 = !DILocation(line: 1867, column: 3, scope: !2267)
!2271 = !DILocation(line: 1868, column: 22, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2267, file: !116, line: 1868, column: 10)
!2273 = !DILocation(line: 1868, column: 41, scope: !2272)
!2274 = !DILocation(line: 1868, column: 10, scope: !2267)
!2275 = !DILocation(line: 1869, column: 3, scope: !2272)
!2276 = !DILocation(line: 1871, column: 17, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2233, file: !116, line: 1871, column: 5)
!2278 = !DILocation(line: 1871, column: 36, scope: !2277)
!2279 = !DILocation(line: 1871, column: 5, scope: !2233)
!2280 = !DILocation(line: 1872, column: 51, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2277, file: !116, line: 1871, column: 66)
!2282 = !DILocation(line: 1872, column: 3, scope: !2281)
!2283 = !DILocation(line: 1873, column: 2, scope: !2281)
!2284 = !DILocalVariable(name: "tot", scope: !2285, file: !116, line: 1876, type: !31)
!2285 = distinct !DILexicalBlock(scope: !2233, file: !116, line: 1875, column: 2)
!2286 = !DILocation(line: 1876, column: 7, scope: !2285)
!2287 = !DILocation(line: 1877, column: 6, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2285, file: !116, line: 1877, column: 6)
!2289 = !DILocation(line: 1877, column: 6, scope: !2285)
!2290 = !DILocation(line: 1878, column: 10, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2288, file: !116, line: 1877, column: 28)
!2292 = !DILocation(line: 1878, column: 8, scope: !2291)
!2293 = !DILocation(line: 1879, column: 3, scope: !2291)
!2294 = !DILocation(line: 1880, column: 6, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2285, file: !116, line: 1880, column: 6)
!2296 = !DILocation(line: 1880, column: 6, scope: !2285)
!2297 = !DILocation(line: 1881, column: 69, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2295, file: !116, line: 1880, column: 11)
!2299 = !DILocation(line: 1881, column: 4, scope: !2298)
!2300 = !DILocation(line: 1882, column: 3, scope: !2298)
!2301 = !DILocalVariable(name: "tot", scope: !2302, file: !116, line: 1886, type: !31)
!2302 = distinct !DILexicalBlock(scope: !2233, file: !116, line: 1885, column: 2)
!2303 = !DILocation(line: 1886, column: 7, scope: !2302)
!2304 = !DILocation(line: 1886, column: 13, scope: !2302)
!2305 = !DILocation(line: 1887, column: 6, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2302, file: !116, line: 1887, column: 6)
!2307 = !DILocation(line: 1887, column: 6, scope: !2302)
!2308 = !DILocation(line: 1888, column: 73, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2306, file: !116, line: 1887, column: 11)
!2310 = !DILocation(line: 1888, column: 4, scope: !2309)
!2311 = !DILocalVariable(name: "i", scope: !2309, file: !116, line: 1889, type: !31)
!2312 = !DILocation(line: 1889, column: 8, scope: !2309)
!2313 = !DILocation(line: 1890, column: 10, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2309, file: !116, line: 1890, column: 4)
!2315 = !DILocation(line: 1890, column: 8, scope: !2314)
!2316 = !DILocation(line: 1890, column: 14, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2314, file: !116, line: 1890, column: 4)
!2318 = !DILocation(line: 1890, column: 16, scope: !2317)
!2319 = !DILocation(line: 1890, column: 15, scope: !2317)
!2320 = !DILocation(line: 1890, column: 4, scope: !2314)
!2321 = !DILocation(line: 1891, column: 32, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2323, file: !116, line: 1891, column: 8)
!2323 = distinct !DILexicalBlock(scope: !2317, file: !116, line: 1890, column: 25)
!2324 = !DILocation(line: 1891, column: 10, scope: !2322)
!2325 = !DILocation(line: 1891, column: 9, scope: !2322)
!2326 = !DILocation(line: 1891, column: 8, scope: !2323)
!2327 = !DILocation(line: 1892, column: 89, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2322, file: !116, line: 1891, column: 37)
!2329 = !DILocation(line: 1892, column: 6, scope: !2328)
!2330 = !DILocation(line: 1893, column: 5, scope: !2328)
!2331 = !DILocation(line: 1894, column: 4, scope: !2323)
!2332 = !DILocation(line: 1890, column: 21, scope: !2317)
!2333 = !DILocation(line: 1890, column: 4, scope: !2317)
!2334 = distinct !{!2334, !2320, !2335, !1607}
!2335 = !DILocation(line: 1894, column: 4, scope: !2314)
!2336 = !DILocation(line: 1895, column: 3, scope: !2309)
!2337 = !DILocalVariable(name: "sn", scope: !2338, file: !116, line: 1899, type: !525)
!2338 = distinct !DILexicalBlock(scope: !2233, file: !116, line: 1898, column: 2)
!2339 = !DILocation(line: 1899, column: 17, scope: !2338)
!2340 = !DILocation(line: 1900, column: 10, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2338, file: !116, line: 1900, column: 3)
!2342 = !DILocation(line: 1900, column: 7, scope: !2341)
!2343 = !DILocation(line: 1900, column: 15, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !2341, file: !116, line: 1900, column: 3)
!2345 = !DILocation(line: 1900, column: 20, scope: !2344)
!2346 = !DILocation(line: 1900, column: 18, scope: !2344)
!2347 = !DILocation(line: 1900, column: 3, scope: !2341)
!2348 = !DILocation(line: 1901, column: 24, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2344, file: !116, line: 1900, column: 44)
!2350 = !DILocation(line: 1901, column: 15, scope: !2349)
!2351 = !DILocation(line: 1901, column: 4, scope: !2349)
!2352 = !DILocation(line: 1901, column: 19, scope: !2349)
!2353 = !DILocation(line: 1901, column: 22, scope: !2349)
!2354 = !DILocation(line: 1902, column: 35, scope: !2349)
!2355 = !DILocation(line: 1902, column: 24, scope: !2349)
!2356 = !DILocation(line: 1902, column: 4, scope: !2349)
!2357 = !DILocation(line: 1903, column: 3, scope: !2349)
!2358 = !DILocation(line: 1900, column: 38, scope: !2344)
!2359 = !DILocation(line: 1900, column: 3, scope: !2344)
!2360 = distinct !{!2360, !2347, !2361, !1607}
!2361 = !DILocation(line: 1903, column: 3, scope: !2341)
!2362 = !DILocation(line: 1906, column: 2, scope: !2233)
!2363 = !DILocation(line: 1908, column: 2, scope: !2233)
!2364 = !DILocation(line: 1909, column: 1, scope: !2233)
!2365 = distinct !DISubprogram(name: "setup_listener", scope: !116, file: !116, line: 1044, type: !2234, scopeLine: 1045, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !1286)
!2366 = !DILocalVariable(name: "sm", scope: !2365, file: !116, line: 1046, type: !127)
!2367 = !DILocation(line: 1046, column: 18, scope: !2365)
!2368 = !DILocation(line: 1046, column: 23, scope: !2365)
!2369 = !DILocation(line: 1048, column: 47, scope: !2365)
!2370 = !DILocation(line: 1048, column: 63, scope: !2365)
!2371 = !DILocation(line: 1048, column: 85, scope: !2365)
!2372 = !DILocation(line: 1048, column: 28, scope: !2365)
!2373 = !DILocation(line: 1048, column: 26, scope: !2365)
!2374 = !DILocation(line: 1050, column: 36, scope: !2365)
!2375 = !DILocation(line: 1050, column: 34, scope: !2365)
!2376 = !DILocation(line: 1052, column: 120, scope: !2365)
!2377 = !DILocation(line: 1052, column: 77, scope: !2365)
!2378 = !DILocation(line: 1052, column: 2, scope: !2365)
!2379 = !DILocation(line: 1054, column: 51, scope: !2365)
!2380 = !DILocation(line: 1054, column: 76, scope: !2365)
!2381 = !DILocation(line: 1054, column: 109, scope: !2365)
!2382 = !DILocation(line: 1055, column: 42, scope: !2365)
!2383 = !DILocation(line: 1055, column: 69, scope: !2365)
!2384 = !DILocation(line: 1056, column: 16, scope: !2365)
!2385 = !DILocation(line: 1056, column: 44, scope: !2365)
!2386 = !DILocation(line: 1054, column: 33, scope: !2365)
!2387 = !DILocation(line: 1054, column: 31, scope: !2365)
!2388 = !DILocation(line: 1062, column: 27, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2365, file: !116, line: 1062, column: 5)
!2390 = !DILocation(line: 1062, column: 6, scope: !2389)
!2391 = !DILocation(line: 1062, column: 5, scope: !2365)
!2392 = !DILocation(line: 1063, column: 3, scope: !2389)
!2393 = !DILocation(line: 1065, column: 35, scope: !2365)
!2394 = !DILocation(line: 1065, column: 2, scope: !2365)
!2395 = !DILocation(line: 1066, column: 70, scope: !2365)
!2396 = !DILocation(line: 1066, column: 33, scope: !2365)
!2397 = !DILocation(line: 1066, column: 31, scope: !2365)
!2398 = !DILocation(line: 1067, column: 47, scope: !2365)
!2399 = !DILocation(line: 1067, column: 77, scope: !2365)
!2400 = !DILocation(line: 1067, column: 2, scope: !2365)
!2401 = !DILocalVariable(name: "pair", scope: !2402, file: !116, line: 1070, type: !2403)
!2402 = distinct !DILexicalBlock(scope: !2365, file: !116, line: 1069, column: 2)
!2403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !379, size: 128, elements: !797)
!2404 = !DILocation(line: 1070, column: 23, scope: !2402)
!2405 = !DILocation(line: 1072, column: 45, scope: !2402)
!2406 = !DILocation(line: 1072, column: 84, scope: !2402)
!2407 = !DILocation(line: 1072, column: 3, scope: !2402)
!2408 = !DILocation(line: 1073, column: 33, scope: !2402)
!2409 = !DILocation(line: 1073, column: 31, scope: !2402)
!2410 = !DILocation(line: 1074, column: 34, scope: !2402)
!2411 = !DILocation(line: 1074, column: 32, scope: !2402)
!2412 = !DILocation(line: 1075, column: 42, scope: !2402)
!2413 = !DILocation(line: 1075, column: 3, scope: !2402)
!2414 = !DILocation(line: 1076, column: 43, scope: !2402)
!2415 = !DILocation(line: 1076, column: 3, scope: !2402)
!2416 = !DILocation(line: 1079, column: 26, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2365, file: !116, line: 1079, column: 5)
!2418 = !DILocation(line: 1079, column: 38, scope: !2417)
!2419 = !DILocation(line: 1079, column: 41, scope: !2417)
!2420 = !DILocation(line: 1079, column: 56, scope: !2417)
!2421 = !DILocation(line: 1079, column: 44, scope: !2417)
!2422 = !DILocation(line: 1079, column: 5, scope: !2365)
!2423 = !DILocation(line: 1080, column: 23, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2417, file: !116, line: 1079, column: 69)
!2425 = !DILocation(line: 1081, column: 3, scope: !2424)
!2426 = !DILocation(line: 1082, column: 2, scope: !2424)
!2427 = !DILocation(line: 1083, column: 63, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2417, file: !116, line: 1082, column: 9)
!2429 = !DILocation(line: 1083, column: 79, scope: !2428)
!2430 = !DILocation(line: 1083, column: 40, scope: !2428)
!2431 = !DILocation(line: 1086, column: 74, scope: !2365)
!2432 = !DILocation(line: 1086, column: 36, scope: !2365)
!2433 = !DILocation(line: 1087, column: 75, scope: !2365)
!2434 = !DILocation(line: 1087, column: 37, scope: !2365)
!2435 = !DILocation(line: 1089, column: 78, scope: !2365)
!2436 = !DILocation(line: 1089, column: 40, scope: !2365)
!2437 = !DILocation(line: 1090, column: 1, scope: !2365)
!2438 = distinct !DISubprogram(name: "allocate_relay_addrs_ports", scope: !116, file: !116, line: 410, type: !2234, scopeLine: 410, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !1286)
!2439 = !DILocalVariable(name: "i", scope: !2438, file: !116, line: 411, type: !31)
!2440 = !DILocation(line: 411, column: 6, scope: !2438)
!2441 = !DILocation(line: 412, column: 2, scope: !2438)
!2442 = !DILocation(line: 413, column: 7, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2438, file: !116, line: 413, column: 2)
!2444 = !DILocation(line: 413, column: 6, scope: !2443)
!2445 = !DILocation(line: 413, column: 10, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2443, file: !116, line: 413, column: 2)
!2447 = !DILocation(line: 413, column: 29, scope: !2446)
!2448 = !DILocation(line: 413, column: 12, scope: !2446)
!2449 = !DILocation(line: 413, column: 11, scope: !2446)
!2450 = !DILocation(line: 413, column: 2, scope: !2443)
!2451 = !DILocalVariable(name: "baddr", scope: !2452, file: !116, line: 414, type: !231)
!2452 = distinct !DILexicalBlock(scope: !2446, file: !116, line: 413, column: 48)
!2453 = !DILocation(line: 414, column: 12, scope: !2452)
!2454 = !DILocation(line: 415, column: 48, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2452, file: !116, line: 415, column: 6)
!2456 = !DILocation(line: 415, column: 60, scope: !2455)
!2457 = !DILocation(line: 415, column: 36, scope: !2455)
!2458 = !DILocation(line: 415, column: 6, scope: !2455)
!2459 = !DILocation(line: 415, column: 72, scope: !2455)
!2460 = !DILocation(line: 415, column: 6, scope: !2452)
!2461 = !DILocation(line: 416, column: 84, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2455, file: !116, line: 415, column: 77)
!2463 = !DILocation(line: 416, column: 96, scope: !2462)
!2464 = !DILocation(line: 416, column: 72, scope: !2462)
!2465 = !DILocation(line: 416, column: 4, scope: !2462)
!2466 = !DILocation(line: 417, column: 4, scope: !2462)
!2467 = !DILocation(line: 418, column: 4, scope: !2462)
!2468 = !DILocation(line: 419, column: 86, scope: !2462)
!2469 = !DILocation(line: 419, column: 98, scope: !2462)
!2470 = !DILocation(line: 419, column: 74, scope: !2462)
!2471 = !DILocation(line: 419, column: 4, scope: !2462)
!2472 = !DILocation(line: 420, column: 3, scope: !2462)
!2473 = !DILocation(line: 421, column: 2, scope: !2452)
!2474 = !DILocation(line: 413, column: 44, scope: !2446)
!2475 = !DILocation(line: 413, column: 2, scope: !2446)
!2476 = distinct !{!2476, !2450, !2477, !1607}
!2477 = !DILocation(line: 421, column: 2, scope: !2443)
!2478 = !DILocation(line: 422, column: 2, scope: !2438)
!2479 = !DILocation(line: 423, column: 1, scope: !2438)
!2480 = distinct !DISubprogram(name: "setup_barriers", scope: !116, file: !116, line: 1092, type: !2234, scopeLine: 1093, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !1286)
!2481 = !DILocation(line: 1098, column: 18, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2480, file: !116, line: 1098, column: 5)
!2483 = !DILocation(line: 1098, column: 37, scope: !2482)
!2484 = !DILocation(line: 1098, column: 69, scope: !2482)
!2485 = !DILocation(line: 1098, column: 84, scope: !2482)
!2486 = !DILocation(line: 1098, column: 72, scope: !2482)
!2487 = !DILocation(line: 1098, column: 112, scope: !2482)
!2488 = !DILocation(line: 1098, column: 5, scope: !2480)
!2489 = !DILocation(line: 1101, column: 19, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2491, file: !116, line: 1101, column: 6)
!2491 = distinct !DILexicalBlock(scope: !2482, file: !116, line: 1098, column: 116)
!2492 = !DILocation(line: 1101, column: 7, scope: !2490)
!2493 = !DILocation(line: 1101, column: 6, scope: !2491)
!2494 = !DILocation(line: 1103, column: 42, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2490, file: !116, line: 1101, column: 27)
!2496 = !DILocation(line: 1103, column: 18, scope: !2495)
!2497 = !DILocation(line: 1105, column: 19, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2495, file: !116, line: 1105, column: 7)
!2499 = !DILocation(line: 1105, column: 7, scope: !2498)
!2500 = !DILocation(line: 1105, column: 7, scope: !2495)
!2501 = !DILocation(line: 1106, column: 43, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2498, file: !116, line: 1105, column: 28)
!2503 = !DILocation(line: 1106, column: 19, scope: !2502)
!2504 = !DILocation(line: 1107, column: 4, scope: !2502)
!2505 = !DILocation(line: 1108, column: 3, scope: !2495)
!2506 = !DILocation(line: 1110, column: 19, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2491, file: !116, line: 1110, column: 6)
!2508 = !DILocation(line: 1110, column: 7, scope: !2507)
!2509 = !DILocation(line: 1110, column: 27, scope: !2507)
!2510 = !DILocation(line: 1110, column: 43, scope: !2507)
!2511 = !DILocation(line: 1110, column: 31, scope: !2507)
!2512 = !DILocation(line: 1110, column: 50, scope: !2507)
!2513 = !DILocation(line: 1110, column: 66, scope: !2507)
!2514 = !DILocation(line: 1110, column: 95, scope: !2507)
!2515 = !DILocation(line: 1110, column: 80, scope: !2507)
!2516 = !DILocation(line: 1110, column: 6, scope: !2491)
!2517 = !DILocation(line: 1112, column: 42, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2507, file: !116, line: 1110, column: 116)
!2519 = !DILocation(line: 1112, column: 18, scope: !2518)
!2520 = !DILocation(line: 1114, column: 19, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2518, file: !116, line: 1114, column: 7)
!2522 = !DILocation(line: 1114, column: 7, scope: !2521)
!2523 = !DILocation(line: 1114, column: 7, scope: !2518)
!2524 = !DILocation(line: 1115, column: 43, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2521, file: !116, line: 1114, column: 28)
!2526 = !DILocation(line: 1115, column: 19, scope: !2525)
!2527 = !DILocation(line: 1116, column: 4, scope: !2525)
!2528 = !DILocation(line: 1117, column: 3, scope: !2518)
!2529 = !DILocation(line: 1119, column: 19, scope: !2530)
!2530 = distinct !DILexicalBlock(scope: !2491, file: !116, line: 1119, column: 6)
!2531 = !DILocation(line: 1119, column: 7, scope: !2530)
!2532 = !DILocation(line: 1119, column: 26, scope: !2530)
!2533 = !DILocation(line: 1119, column: 42, scope: !2530)
!2534 = !DILocation(line: 1119, column: 30, scope: !2530)
!2535 = !DILocation(line: 1119, column: 6, scope: !2491)
!2536 = !DILocation(line: 1120, column: 64, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2530, file: !116, line: 1119, column: 51)
!2538 = !DILocation(line: 1120, column: 21, scope: !2537)
!2539 = !DILocation(line: 1120, column: 18, scope: !2537)
!2540 = !DILocation(line: 1121, column: 3, scope: !2537)
!2541 = !DILocation(line: 1122, column: 2, scope: !2491)
!2542 = !DILocation(line: 1127, column: 41, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2544, file: !116, line: 1127, column: 6)
!2544 = distinct !DILexicalBlock(scope: !2480, file: !116, line: 1126, column: 2)
!2545 = !DILocation(line: 1127, column: 6, scope: !2543)
!2546 = !DILocation(line: 1127, column: 55, scope: !2543)
!2547 = !DILocation(line: 1127, column: 6, scope: !2544)
!2548 = !DILocation(line: 1128, column: 4, scope: !2543)
!2549 = !DILocation(line: 1132, column: 1, scope: !2480)
!2550 = distinct !DISubprogram(name: "setup_general_relay_servers", scope: !116, file: !116, line: 1713, type: !2234, scopeLine: 1714, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !1286)
!2551 = !DILocalVariable(name: "i", scope: !2550, file: !116, line: 1715, type: !176)
!2552 = !DILocation(line: 1715, column: 9, scope: !2550)
!2553 = !DILocation(line: 1717, column: 7, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2550, file: !116, line: 1717, column: 2)
!2555 = !DILocation(line: 1717, column: 6, scope: !2554)
!2556 = !DILocation(line: 1717, column: 10, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2554, file: !116, line: 1717, column: 2)
!2558 = !DILocation(line: 1717, column: 12, scope: !2557)
!2559 = !DILocation(line: 1717, column: 11, scope: !2557)
!2560 = !DILocation(line: 1717, column: 2, scope: !2554)
!2561 = !DILocation(line: 1719, column: 18, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2563, file: !116, line: 1719, column: 6)
!2563 = distinct !DILexicalBlock(scope: !2557, file: !116, line: 1717, column: 57)
!2564 = !DILocation(line: 1719, column: 6, scope: !2562)
!2565 = !DILocation(line: 1719, column: 47, scope: !2562)
!2566 = !DILocation(line: 1719, column: 6, scope: !2563)
!2567 = !DILocation(line: 1720, column: 53, scope: !2568)
!2568 = distinct !DILexicalBlock(scope: !2562, file: !116, line: 1719, column: 53)
!2569 = !DILocation(line: 1720, column: 26, scope: !2568)
!2570 = !DILocation(line: 1720, column: 4, scope: !2568)
!2571 = !DILocation(line: 1720, column: 29, scope: !2568)
!2572 = !DILocation(line: 1721, column: 50, scope: !2568)
!2573 = !DILocation(line: 1721, column: 35, scope: !2568)
!2574 = !DILocation(line: 1721, column: 26, scope: !2568)
!2575 = !DILocation(line: 1721, column: 4, scope: !2568)
!2576 = !DILocation(line: 1721, column: 30, scope: !2568)
!2577 = !DILocation(line: 1721, column: 33, scope: !2568)
!2578 = !DILocation(line: 1722, column: 26, scope: !2568)
!2579 = !DILocation(line: 1722, column: 4, scope: !2568)
!2580 = !DILocation(line: 1722, column: 30, scope: !2568)
!2581 = !DILocation(line: 1722, column: 33, scope: !2568)
!2582 = !DILocation(line: 1723, column: 45, scope: !2568)
!2583 = !DILocation(line: 1723, column: 23, scope: !2568)
!2584 = !DILocation(line: 1723, column: 70, scope: !2568)
!2585 = !DILocation(line: 1723, column: 93, scope: !2568)
!2586 = !DILocation(line: 1723, column: 112, scope: !2568)
!2587 = !DILocation(line: 1723, column: 142, scope: !2568)
!2588 = !DILocation(line: 1723, column: 158, scope: !2568)
!2589 = !DILocation(line: 1723, column: 177, scope: !2568)
!2590 = !DILocation(line: 1723, column: 209, scope: !2568)
!2591 = !DILocation(line: 1723, column: 224, scope: !2568)
!2592 = !DILocation(line: 0, scope: !2568)
!2593 = !DILocation(line: 1723, column: 4, scope: !2568)
!2594 = !DILocation(line: 1724, column: 36, scope: !2568)
!2595 = !DILocation(line: 1724, column: 26, scope: !2568)
!2596 = !DILocation(line: 1724, column: 4, scope: !2568)
!2597 = !DILocation(line: 1724, column: 30, scope: !2568)
!2598 = !DILocation(line: 1724, column: 34, scope: !2568)
!2599 = !DILocation(line: 1725, column: 3, scope: !2568)
!2600 = !DILocalVariable(name: "sm", scope: !2601, file: !116, line: 1726, type: !127)
!2601 = distinct !DILexicalBlock(scope: !2562, file: !116, line: 1725, column: 10)
!2602 = !DILocation(line: 1726, column: 20, scope: !2601)
!2603 = !DILocation(line: 1726, column: 25, scope: !2601)
!2604 = !DILocation(line: 1727, column: 53, scope: !2601)
!2605 = !DILocation(line: 1727, column: 26, scope: !2601)
!2606 = !DILocation(line: 1727, column: 4, scope: !2601)
!2607 = !DILocation(line: 1727, column: 29, scope: !2601)
!2608 = !DILocation(line: 1728, column: 50, scope: !2601)
!2609 = !DILocation(line: 1728, column: 35, scope: !2601)
!2610 = !DILocation(line: 1728, column: 26, scope: !2601)
!2611 = !DILocation(line: 1728, column: 4, scope: !2601)
!2612 = !DILocation(line: 1728, column: 30, scope: !2601)
!2613 = !DILocation(line: 1728, column: 33, scope: !2601)
!2614 = !DILocation(line: 1729, column: 35, scope: !2601)
!2615 = !DILocation(line: 1729, column: 26, scope: !2601)
!2616 = !DILocation(line: 1729, column: 4, scope: !2601)
!2617 = !DILocation(line: 1729, column: 30, scope: !2601)
!2618 = !DILocation(line: 1729, column: 33, scope: !2601)
!2619 = !DILocation(line: 1730, column: 46, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2601, file: !116, line: 1730, column: 7)
!2621 = !DILocation(line: 1730, column: 24, scope: !2620)
!2622 = !DILocation(line: 1730, column: 50, scope: !2620)
!2623 = !DILocation(line: 1730, column: 110, scope: !2620)
!2624 = !DILocation(line: 1730, column: 88, scope: !2620)
!2625 = !DILocation(line: 1730, column: 7, scope: !2620)
!2626 = !DILocation(line: 1730, column: 7, scope: !2601)
!2627 = !DILocation(line: 1731, column: 5, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2620, file: !116, line: 1730, column: 115)
!2629 = !DILocation(line: 1732, column: 5, scope: !2628)
!2630 = !DILocation(line: 1734, column: 41, scope: !2601)
!2631 = !DILocation(line: 1734, column: 19, scope: !2601)
!2632 = !DILocation(line: 1734, column: 45, scope: !2601)
!2633 = !DILocation(line: 1734, column: 4, scope: !2601)
!2634 = !DILocation(line: 1736, column: 2, scope: !2563)
!2635 = !DILocation(line: 1717, column: 53, scope: !2557)
!2636 = !DILocation(line: 1717, column: 2, scope: !2557)
!2637 = distinct !{!2637, !2560, !2638, !1607}
!2638 = !DILocation(line: 1736, column: 2, scope: !2554)
!2639 = !DILocation(line: 1737, column: 1, scope: !2550)
!2640 = distinct !DISubprogram(name: "setup_socket_per_thread_udp_listener_servers", scope: !116, file: !116, line: 1304, type: !2234, scopeLine: 1305, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !1286)
!2641 = !DILocalVariable(name: "i", scope: !2640, file: !116, line: 1306, type: !176)
!2642 = !DILocation(line: 1306, column: 9, scope: !2640)
!2643 = !DILocalVariable(name: "relayindex", scope: !2640, file: !116, line: 1307, type: !176)
!2644 = !DILocation(line: 1307, column: 9, scope: !2640)
!2645 = !DILocation(line: 1311, column: 16, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2640, file: !116, line: 1311, column: 2)
!2647 = !DILocation(line: 1311, column: 6, scope: !2646)
!2648 = !DILocation(line: 1311, column: 19, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2646, file: !116, line: 1311, column: 2)
!2650 = !DILocation(line: 1311, column: 30, scope: !2649)
!2651 = !DILocation(line: 1311, column: 29, scope: !2649)
!2652 = !DILocation(line: 1311, column: 2, scope: !2646)
!2653 = !DILocation(line: 1312, column: 3, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2649, file: !116, line: 1311, column: 84)
!2655 = !DILocation(line: 1312, column: 33, scope: !2654)
!2656 = !DILocation(line: 1312, column: 11, scope: !2654)
!2657 = !DILocation(line: 1312, column: 46, scope: !2654)
!2658 = !DILocation(line: 1312, column: 10, scope: !2654)
!2659 = !DILocation(line: 1312, column: 55, scope: !2654)
!2660 = !DILocation(line: 1312, column: 82, scope: !2654)
!2661 = !DILocation(line: 1312, column: 60, scope: !2654)
!2662 = !DILocation(line: 1312, column: 95, scope: !2654)
!2663 = !DILocation(line: 1312, column: 102, scope: !2654)
!2664 = !DILocation(line: 1312, column: 58, scope: !2654)
!2665 = !DILocation(line: 1313, column: 4, scope: !2654)
!2666 = distinct !{!2666, !2653, !2667, !1607}
!2667 = !DILocation(line: 1313, column: 16, scope: !2654)
!2668 = !DILocation(line: 1314, column: 2, scope: !2654)
!2669 = !DILocation(line: 1311, column: 80, scope: !2649)
!2670 = !DILocation(line: 1311, column: 2, scope: !2649)
!2671 = distinct !{!2671, !2652, !2672, !1607}
!2672 = !DILocation(line: 1314, column: 2, scope: !2646)
!2673 = !DILocation(line: 1317, column: 7, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2640, file: !116, line: 1317, column: 2)
!2675 = !DILocation(line: 1317, column: 6, scope: !2674)
!2676 = !DILocation(line: 1317, column: 11, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !2674, file: !116, line: 1317, column: 2)
!2678 = !DILocation(line: 1317, column: 42, scope: !2677)
!2679 = !DILocation(line: 1317, column: 12, scope: !2677)
!2680 = !DILocation(line: 1317, column: 2, scope: !2674)
!2681 = !DILocalVariable(name: "index", scope: !2682, file: !116, line: 1319, type: !31)
!2682 = distinct !DILexicalBlock(scope: !2677, file: !116, line: 1317, column: 53)
!2683 = !DILocation(line: 1319, column: 7, scope: !2682)
!2684 = !DILocation(line: 1319, column: 15, scope: !2682)
!2685 = !DILocation(line: 1321, column: 19, scope: !2686)
!2686 = distinct !DILexicalBlock(scope: !2682, file: !116, line: 1321, column: 6)
!2687 = !DILocation(line: 1321, column: 7, scope: !2686)
!2688 = !DILocation(line: 1321, column: 26, scope: !2686)
!2689 = !DILocation(line: 1321, column: 42, scope: !2686)
!2690 = !DILocation(line: 1321, column: 30, scope: !2686)
!2691 = !DILocation(line: 1321, column: 6, scope: !2682)
!2692 = !DILocalVariable(name: "addr", scope: !2693, file: !116, line: 1323, type: !231)
!2693 = distinct !DILexicalBlock(scope: !2686, file: !116, line: 1321, column: 51)
!2694 = !DILocation(line: 1323, column: 13, scope: !2693)
!2695 = !DILocalVariable(name: "saddr", scope: !2693, file: !116, line: 1324, type: !1836)
!2696 = !DILocation(line: 1324, column: 9, scope: !2693)
!2697 = !DILocation(line: 1325, column: 49, scope: !2693)
!2698 = !DILocation(line: 1325, column: 55, scope: !2693)
!2699 = !DILocation(line: 1325, column: 20, scope: !2693)
!2700 = !DILocation(line: 1325, column: 4, scope: !2693)
!2701 = !DILocalVariable(name: "port", scope: !2693, file: !116, line: 1326, type: !31)
!2702 = !DILocation(line: 1326, column: 8, scope: !2693)
!2703 = !DILocation(line: 1326, column: 20, scope: !2693)
!2704 = !DILocation(line: 1327, column: 43, scope: !2693)
!2705 = !DILocation(line: 1327, column: 4, scope: !2693)
!2706 = !DILocation(line: 1329, column: 86, scope: !2693)
!2707 = !DILocation(line: 1329, column: 25, scope: !2693)
!2708 = !DILocation(line: 1329, column: 42, scope: !2693)
!2709 = !DILocation(line: 1329, column: 4, scope: !2693)
!2710 = !DILocation(line: 1329, column: 49, scope: !2693)
!2711 = !DILocation(line: 1331, column: 18, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2693, file: !116, line: 1331, column: 4)
!2713 = !DILocation(line: 1331, column: 8, scope: !2712)
!2714 = !DILocation(line: 1331, column: 21, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2712, file: !116, line: 1331, column: 4)
!2716 = !DILocation(line: 1331, column: 32, scope: !2715)
!2717 = !DILocation(line: 1331, column: 31, scope: !2715)
!2718 = !DILocation(line: 1331, column: 4, scope: !2712)
!2719 = !DILocation(line: 1332, column: 121, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !2715, file: !116, line: 1331, column: 86)
!2721 = !DILocation(line: 1332, column: 128, scope: !2720)
!2722 = !DILocation(line: 1332, column: 146, scope: !2720)
!2723 = !DILocation(line: 1333, column: 29, scope: !2720)
!2724 = !DILocation(line: 1333, column: 7, scope: !2720)
!2725 = !DILocation(line: 1333, column: 42, scope: !2720)
!2726 = !DILocation(line: 1333, column: 75, scope: !2720)
!2727 = !DILocation(line: 1333, column: 53, scope: !2720)
!2728 = !DILocation(line: 1333, column: 88, scope: !2720)
!2729 = !DILocation(line: 1333, column: 98, scope: !2720)
!2730 = !DILocation(line: 1333, column: 97, scope: !2720)
!2731 = !DILocation(line: 1332, column: 64, scope: !2720)
!2732 = !DILocation(line: 1332, column: 26, scope: !2720)
!2733 = !DILocation(line: 1332, column: 43, scope: !2720)
!2734 = !DILocation(line: 1332, column: 5, scope: !2720)
!2735 = !DILocation(line: 1332, column: 50, scope: !2720)
!2736 = !DILocation(line: 1332, column: 62, scope: !2720)
!2737 = !DILocation(line: 1334, column: 4, scope: !2720)
!2738 = !DILocation(line: 1331, column: 82, scope: !2715)
!2739 = !DILocation(line: 1331, column: 4, scope: !2715)
!2740 = distinct !{!2740, !2718, !2741, !1607}
!2741 = !DILocation(line: 1334, column: 4, scope: !2712)
!2742 = !DILocation(line: 1335, column: 3, scope: !2693)
!2743 = !DILocation(line: 1336, column: 2, scope: !2682)
!2744 = !DILocation(line: 1317, column: 49, scope: !2677)
!2745 = !DILocation(line: 1317, column: 2, scope: !2677)
!2746 = distinct !{!2746, !2680, !2747, !1607}
!2747 = !DILocation(line: 1336, column: 2, scope: !2674)
!2748 = !DILocation(line: 1339, column: 7, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2640, file: !116, line: 1339, column: 2)
!2750 = !DILocation(line: 1339, column: 6, scope: !2749)
!2751 = !DILocation(line: 1339, column: 11, scope: !2752)
!2752 = distinct !DILexicalBlock(scope: !2749, file: !116, line: 1339, column: 2)
!2753 = !DILocation(line: 1339, column: 34, scope: !2752)
!2754 = !DILocation(line: 1339, column: 12, scope: !2752)
!2755 = !DILocation(line: 1339, column: 2, scope: !2749)
!2756 = !DILocalVariable(name: "index", scope: !2757, file: !116, line: 1341, type: !31)
!2757 = distinct !DILexicalBlock(scope: !2752, file: !116, line: 1339, column: 53)
!2758 = !DILocation(line: 1341, column: 7, scope: !2757)
!2759 = !DILocation(line: 1341, column: 27, scope: !2757)
!2760 = !DILocation(line: 1341, column: 15, scope: !2757)
!2761 = !DILocation(line: 1341, column: 37, scope: !2757)
!2762 = !DILocation(line: 1341, column: 38, scope: !2757)
!2763 = !DILocation(line: 1341, column: 43, scope: !2757)
!2764 = !DILocation(line: 1344, column: 19, scope: !2765)
!2765 = distinct !DILexicalBlock(scope: !2757, file: !116, line: 1344, column: 6)
!2766 = !DILocation(line: 1344, column: 7, scope: !2765)
!2767 = !DILocation(line: 1344, column: 6, scope: !2757)
!2768 = !DILocation(line: 1346, column: 82, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2765, file: !116, line: 1344, column: 27)
!2770 = !DILocation(line: 1346, column: 25, scope: !2769)
!2771 = !DILocation(line: 1346, column: 38, scope: !2769)
!2772 = !DILocation(line: 1346, column: 4, scope: !2769)
!2773 = !DILocation(line: 1346, column: 45, scope: !2769)
!2774 = !DILocation(line: 1348, column: 18, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2769, file: !116, line: 1348, column: 4)
!2776 = !DILocation(line: 1348, column: 8, scope: !2775)
!2777 = !DILocation(line: 1348, column: 21, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !2775, file: !116, line: 1348, column: 4)
!2779 = !DILocation(line: 1348, column: 32, scope: !2778)
!2780 = !DILocation(line: 1348, column: 31, scope: !2778)
!2781 = !DILocation(line: 1348, column: 4, scope: !2775)
!2782 = !DILocation(line: 1349, column: 138, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2778, file: !116, line: 1348, column: 86)
!2784 = !DILocation(line: 1349, column: 144, scope: !2783)
!2785 = !DILocation(line: 1349, column: 117, scope: !2783)
!2786 = !DILocation(line: 1349, column: 160, scope: !2783)
!2787 = !DILocation(line: 1349, column: 187, scope: !2783)
!2788 = !DILocation(line: 1350, column: 29, scope: !2783)
!2789 = !DILocation(line: 1350, column: 7, scope: !2783)
!2790 = !DILocation(line: 1350, column: 42, scope: !2783)
!2791 = !DILocation(line: 1350, column: 75, scope: !2783)
!2792 = !DILocation(line: 1350, column: 53, scope: !2783)
!2793 = !DILocation(line: 1350, column: 88, scope: !2783)
!2794 = !DILocation(line: 1350, column: 98, scope: !2783)
!2795 = !DILocation(line: 1350, column: 97, scope: !2783)
!2796 = !DILocation(line: 1349, column: 60, scope: !2783)
!2797 = !DILocation(line: 1349, column: 26, scope: !2783)
!2798 = !DILocation(line: 1349, column: 39, scope: !2783)
!2799 = !DILocation(line: 1349, column: 5, scope: !2783)
!2800 = !DILocation(line: 1349, column: 46, scope: !2783)
!2801 = !DILocation(line: 1349, column: 58, scope: !2783)
!2802 = !DILocation(line: 1351, column: 4, scope: !2783)
!2803 = !DILocation(line: 1348, column: 82, scope: !2778)
!2804 = !DILocation(line: 1348, column: 4, scope: !2778)
!2805 = distinct !{!2805, !2781, !2806, !1607}
!2806 = !DILocation(line: 1351, column: 4, scope: !2775)
!2807 = !DILocation(line: 1353, column: 19, scope: !2808)
!2808 = distinct !DILexicalBlock(scope: !2769, file: !116, line: 1353, column: 7)
!2809 = !DILocation(line: 1353, column: 7, scope: !2808)
!2810 = !DILocation(line: 1353, column: 7, scope: !2769)
!2811 = !DILocation(line: 1355, column: 85, scope: !2812)
!2812 = distinct !DILexicalBlock(scope: !2808, file: !116, line: 1353, column: 28)
!2813 = !DILocation(line: 1355, column: 26, scope: !2812)
!2814 = !DILocation(line: 1355, column: 39, scope: !2812)
!2815 = !DILocation(line: 1355, column: 44, scope: !2812)
!2816 = !DILocation(line: 1355, column: 5, scope: !2812)
!2817 = !DILocation(line: 1355, column: 48, scope: !2812)
!2818 = !DILocation(line: 1357, column: 19, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2812, file: !116, line: 1357, column: 5)
!2820 = !DILocation(line: 1357, column: 9, scope: !2819)
!2821 = !DILocation(line: 1357, column: 22, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2819, file: !116, line: 1357, column: 5)
!2823 = !DILocation(line: 1357, column: 33, scope: !2822)
!2824 = !DILocation(line: 1357, column: 32, scope: !2822)
!2825 = !DILocation(line: 1357, column: 5, scope: !2819)
!2826 = !DILocation(line: 1358, column: 141, scope: !2827)
!2827 = distinct !DILexicalBlock(scope: !2822, file: !116, line: 1357, column: 87)
!2828 = !DILocation(line: 1358, column: 147, scope: !2827)
!2829 = !DILocation(line: 1358, column: 120, scope: !2827)
!2830 = !DILocation(line: 1358, column: 151, scope: !2827)
!2831 = !DILocation(line: 1358, column: 188, scope: !2827)
!2832 = !DILocation(line: 1359, column: 30, scope: !2827)
!2833 = !DILocation(line: 1359, column: 8, scope: !2827)
!2834 = !DILocation(line: 1359, column: 43, scope: !2827)
!2835 = !DILocation(line: 1359, column: 76, scope: !2827)
!2836 = !DILocation(line: 1359, column: 54, scope: !2827)
!2837 = !DILocation(line: 1359, column: 89, scope: !2827)
!2838 = !DILocation(line: 1359, column: 99, scope: !2827)
!2839 = !DILocation(line: 1359, column: 98, scope: !2827)
!2840 = !DILocation(line: 1358, column: 63, scope: !2827)
!2841 = !DILocation(line: 1358, column: 27, scope: !2827)
!2842 = !DILocation(line: 1358, column: 40, scope: !2827)
!2843 = !DILocation(line: 1358, column: 45, scope: !2827)
!2844 = !DILocation(line: 1358, column: 6, scope: !2827)
!2845 = !DILocation(line: 1358, column: 49, scope: !2827)
!2846 = !DILocation(line: 1358, column: 61, scope: !2827)
!2847 = !DILocation(line: 1360, column: 5, scope: !2827)
!2848 = !DILocation(line: 1357, column: 83, scope: !2822)
!2849 = !DILocation(line: 1357, column: 5, scope: !2822)
!2850 = distinct !{!2850, !2825, !2851, !1607}
!2851 = !DILocation(line: 1360, column: 5, scope: !2819)
!2852 = !DILocation(line: 1361, column: 4, scope: !2812)
!2853 = !DILocation(line: 1362, column: 3, scope: !2769)
!2854 = !DILocation(line: 1363, column: 25, scope: !2855)
!2855 = distinct !DILexicalBlock(scope: !2765, file: !116, line: 1362, column: 10)
!2856 = !DILocation(line: 1363, column: 38, scope: !2855)
!2857 = !DILocation(line: 1363, column: 4, scope: !2855)
!2858 = !DILocation(line: 1363, column: 45, scope: !2855)
!2859 = !DILocation(line: 1364, column: 19, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2855, file: !116, line: 1364, column: 7)
!2861 = !DILocation(line: 1364, column: 7, scope: !2860)
!2862 = !DILocation(line: 1364, column: 7, scope: !2855)
!2863 = !DILocation(line: 1365, column: 26, scope: !2860)
!2864 = !DILocation(line: 1365, column: 39, scope: !2860)
!2865 = !DILocation(line: 1365, column: 44, scope: !2860)
!2866 = !DILocation(line: 1365, column: 5, scope: !2860)
!2867 = !DILocation(line: 1365, column: 48, scope: !2860)
!2868 = !DILocation(line: 1367, column: 19, scope: !2869)
!2869 = distinct !DILexicalBlock(scope: !2757, file: !116, line: 1367, column: 6)
!2870 = !DILocation(line: 1367, column: 7, scope: !2869)
!2871 = !DILocation(line: 1367, column: 27, scope: !2869)
!2872 = !DILocation(line: 1367, column: 43, scope: !2869)
!2873 = !DILocation(line: 1367, column: 31, scope: !2869)
!2874 = !DILocation(line: 1367, column: 50, scope: !2869)
!2875 = !DILocation(line: 1367, column: 66, scope: !2869)
!2876 = !DILocation(line: 1367, column: 95, scope: !2869)
!2877 = !DILocation(line: 1367, column: 80, scope: !2869)
!2878 = !DILocation(line: 1367, column: 6, scope: !2757)
!2879 = !DILocation(line: 1369, column: 83, scope: !2880)
!2880 = distinct !DILexicalBlock(scope: !2869, file: !116, line: 1367, column: 116)
!2881 = !DILocation(line: 1369, column: 25, scope: !2880)
!2882 = !DILocation(line: 1369, column: 39, scope: !2880)
!2883 = !DILocation(line: 1369, column: 4, scope: !2880)
!2884 = !DILocation(line: 1369, column: 46, scope: !2880)
!2885 = !DILocation(line: 1371, column: 18, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2880, file: !116, line: 1371, column: 4)
!2887 = !DILocation(line: 1371, column: 8, scope: !2886)
!2888 = !DILocation(line: 1371, column: 21, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2886, file: !116, line: 1371, column: 4)
!2890 = !DILocation(line: 1371, column: 32, scope: !2889)
!2891 = !DILocation(line: 1371, column: 31, scope: !2889)
!2892 = !DILocation(line: 1371, column: 4, scope: !2886)
!2893 = !DILocation(line: 1372, column: 139, scope: !2894)
!2894 = distinct !DILexicalBlock(scope: !2889, file: !116, line: 1371, column: 86)
!2895 = !DILocation(line: 1372, column: 145, scope: !2894)
!2896 = !DILocation(line: 1372, column: 118, scope: !2894)
!2897 = !DILocation(line: 1372, column: 161, scope: !2894)
!2898 = !DILocation(line: 1372, column: 192, scope: !2894)
!2899 = !DILocation(line: 1373, column: 29, scope: !2894)
!2900 = !DILocation(line: 1373, column: 7, scope: !2894)
!2901 = !DILocation(line: 1373, column: 42, scope: !2894)
!2902 = !DILocation(line: 1373, column: 75, scope: !2894)
!2903 = !DILocation(line: 1373, column: 53, scope: !2894)
!2904 = !DILocation(line: 1373, column: 88, scope: !2894)
!2905 = !DILocation(line: 1373, column: 98, scope: !2894)
!2906 = !DILocation(line: 1373, column: 97, scope: !2894)
!2907 = !DILocation(line: 1372, column: 61, scope: !2894)
!2908 = !DILocation(line: 1372, column: 26, scope: !2894)
!2909 = !DILocation(line: 1372, column: 40, scope: !2894)
!2910 = !DILocation(line: 1372, column: 5, scope: !2894)
!2911 = !DILocation(line: 1372, column: 47, scope: !2894)
!2912 = !DILocation(line: 1372, column: 59, scope: !2894)
!2913 = !DILocation(line: 1374, column: 4, scope: !2894)
!2914 = !DILocation(line: 1371, column: 82, scope: !2889)
!2915 = !DILocation(line: 1371, column: 4, scope: !2889)
!2916 = distinct !{!2916, !2892, !2917, !1607}
!2917 = !DILocation(line: 1374, column: 4, scope: !2886)
!2918 = !DILocation(line: 1376, column: 19, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2880, file: !116, line: 1376, column: 7)
!2920 = !DILocation(line: 1376, column: 7, scope: !2919)
!2921 = !DILocation(line: 1376, column: 7, scope: !2880)
!2922 = !DILocation(line: 1378, column: 86, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2919, file: !116, line: 1376, column: 28)
!2924 = !DILocation(line: 1378, column: 26, scope: !2923)
!2925 = !DILocation(line: 1378, column: 40, scope: !2923)
!2926 = !DILocation(line: 1378, column: 45, scope: !2923)
!2927 = !DILocation(line: 1378, column: 5, scope: !2923)
!2928 = !DILocation(line: 1378, column: 49, scope: !2923)
!2929 = !DILocation(line: 1380, column: 19, scope: !2930)
!2930 = distinct !DILexicalBlock(scope: !2923, file: !116, line: 1380, column: 5)
!2931 = !DILocation(line: 1380, column: 9, scope: !2930)
!2932 = !DILocation(line: 1380, column: 22, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !2930, file: !116, line: 1380, column: 5)
!2934 = !DILocation(line: 1380, column: 33, scope: !2933)
!2935 = !DILocation(line: 1380, column: 32, scope: !2933)
!2936 = !DILocation(line: 1380, column: 5, scope: !2930)
!2937 = !DILocation(line: 1381, column: 142, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2933, file: !116, line: 1380, column: 87)
!2939 = !DILocation(line: 1381, column: 148, scope: !2938)
!2940 = !DILocation(line: 1381, column: 121, scope: !2938)
!2941 = !DILocation(line: 1381, column: 152, scope: !2938)
!2942 = !DILocation(line: 1381, column: 193, scope: !2938)
!2943 = !DILocation(line: 1382, column: 30, scope: !2938)
!2944 = !DILocation(line: 1382, column: 8, scope: !2938)
!2945 = !DILocation(line: 1382, column: 43, scope: !2938)
!2946 = !DILocation(line: 1382, column: 76, scope: !2938)
!2947 = !DILocation(line: 1382, column: 54, scope: !2938)
!2948 = !DILocation(line: 1382, column: 89, scope: !2938)
!2949 = !DILocation(line: 1382, column: 99, scope: !2938)
!2950 = !DILocation(line: 1382, column: 98, scope: !2938)
!2951 = !DILocation(line: 1381, column: 64, scope: !2938)
!2952 = !DILocation(line: 1381, column: 27, scope: !2938)
!2953 = !DILocation(line: 1381, column: 41, scope: !2938)
!2954 = !DILocation(line: 1381, column: 46, scope: !2938)
!2955 = !DILocation(line: 1381, column: 6, scope: !2938)
!2956 = !DILocation(line: 1381, column: 50, scope: !2938)
!2957 = !DILocation(line: 1381, column: 62, scope: !2938)
!2958 = !DILocation(line: 1383, column: 5, scope: !2938)
!2959 = !DILocation(line: 1380, column: 83, scope: !2933)
!2960 = !DILocation(line: 1380, column: 5, scope: !2933)
!2961 = distinct !{!2961, !2936, !2962, !1607}
!2962 = !DILocation(line: 1383, column: 5, scope: !2930)
!2963 = !DILocation(line: 1384, column: 4, scope: !2923)
!2964 = !DILocation(line: 1385, column: 3, scope: !2880)
!2965 = !DILocation(line: 1386, column: 25, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2869, file: !116, line: 1385, column: 10)
!2967 = !DILocation(line: 1386, column: 39, scope: !2966)
!2968 = !DILocation(line: 1386, column: 4, scope: !2966)
!2969 = !DILocation(line: 1386, column: 46, scope: !2966)
!2970 = !DILocation(line: 1387, column: 19, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2966, file: !116, line: 1387, column: 7)
!2972 = !DILocation(line: 1387, column: 7, scope: !2971)
!2973 = !DILocation(line: 1387, column: 7, scope: !2966)
!2974 = !DILocation(line: 1388, column: 26, scope: !2971)
!2975 = !DILocation(line: 1388, column: 40, scope: !2971)
!2976 = !DILocation(line: 1388, column: 45, scope: !2971)
!2977 = !DILocation(line: 1388, column: 5, scope: !2971)
!2978 = !DILocation(line: 1388, column: 49, scope: !2971)
!2979 = !DILocation(line: 1390, column: 2, scope: !2757)
!2980 = !DILocation(line: 1339, column: 49, scope: !2752)
!2981 = !DILocation(line: 1339, column: 2, scope: !2752)
!2982 = distinct !{!2982, !2755, !2983, !1607}
!2983 = !DILocation(line: 1390, column: 2, scope: !2749)
!2984 = !DILocation(line: 1391, column: 1, scope: !2640)
!2985 = distinct !DISubprogram(name: "setup_socket_per_endpoint_udp_listener_servers", scope: !116, file: !116, line: 1134, type: !2234, scopeLine: 1135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !1286)
!2986 = !DILocalVariable(name: "i", scope: !2985, file: !116, line: 1136, type: !176)
!2987 = !DILocation(line: 1136, column: 9, scope: !2985)
!2988 = !DILocation(line: 1140, column: 17, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !2985, file: !116, line: 1140, column: 5)
!2990 = !DILocation(line: 1140, column: 5, scope: !2989)
!2991 = !DILocation(line: 1140, column: 45, scope: !2989)
!2992 = !DILocation(line: 1140, column: 5, scope: !2985)
!2993 = !DILocation(line: 1142, column: 20, scope: !2994)
!2994 = distinct !DILexicalBlock(scope: !2995, file: !116, line: 1142, column: 7)
!2995 = distinct !DILexicalBlock(scope: !2989, file: !116, line: 1140, column: 49)
!2996 = !DILocation(line: 1142, column: 8, scope: !2994)
!2997 = !DILocation(line: 1142, column: 7, scope: !2995)
!2998 = !DILocation(line: 1144, column: 65, scope: !2999)
!2999 = distinct !DILexicalBlock(scope: !2994, file: !116, line: 1142, column: 28)
!3000 = !DILocation(line: 1144, column: 41, scope: !2999)
!3001 = !DILocation(line: 1146, column: 20, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !2999, file: !116, line: 1146, column: 8)
!3003 = !DILocation(line: 1146, column: 8, scope: !3002)
!3004 = !DILocation(line: 1146, column: 8, scope: !2999)
!3005 = !DILocation(line: 1147, column: 66, scope: !3006)
!3006 = distinct !DILexicalBlock(scope: !3002, file: !116, line: 1146, column: 29)
!3007 = !DILocation(line: 1147, column: 42, scope: !3006)
!3008 = !DILocation(line: 1148, column: 4, scope: !3006)
!3009 = !DILocation(line: 1149, column: 3, scope: !2999)
!3010 = !DILocation(line: 1151, column: 20, scope: !3011)
!3011 = distinct !DILexicalBlock(scope: !2995, file: !116, line: 1151, column: 7)
!3012 = !DILocation(line: 1151, column: 8, scope: !3011)
!3013 = !DILocation(line: 1151, column: 28, scope: !3011)
!3014 = !DILocation(line: 1151, column: 44, scope: !3011)
!3015 = !DILocation(line: 1151, column: 32, scope: !3011)
!3016 = !DILocation(line: 1151, column: 51, scope: !3011)
!3017 = !DILocation(line: 1151, column: 67, scope: !3011)
!3018 = !DILocation(line: 1151, column: 96, scope: !3011)
!3019 = !DILocation(line: 1151, column: 81, scope: !3011)
!3020 = !DILocation(line: 1151, column: 7, scope: !2995)
!3021 = !DILocation(line: 1153, column: 65, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !3011, file: !116, line: 1151, column: 117)
!3023 = !DILocation(line: 1153, column: 41, scope: !3022)
!3024 = !DILocation(line: 1155, column: 20, scope: !3025)
!3025 = distinct !DILexicalBlock(scope: !3022, file: !116, line: 1155, column: 8)
!3026 = !DILocation(line: 1155, column: 8, scope: !3025)
!3027 = !DILocation(line: 1155, column: 8, scope: !3022)
!3028 = !DILocation(line: 1156, column: 66, scope: !3029)
!3029 = distinct !DILexicalBlock(scope: !3025, file: !116, line: 1155, column: 29)
!3030 = !DILocation(line: 1156, column: 42, scope: !3029)
!3031 = !DILocation(line: 1157, column: 4, scope: !3029)
!3032 = !DILocation(line: 1158, column: 3, scope: !3022)
!3033 = !DILocation(line: 1160, column: 20, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !2995, file: !116, line: 1160, column: 7)
!3035 = !DILocation(line: 1160, column: 8, scope: !3034)
!3036 = !DILocation(line: 1160, column: 27, scope: !3034)
!3037 = !DILocation(line: 1160, column: 43, scope: !3034)
!3038 = !DILocation(line: 1160, column: 31, scope: !3034)
!3039 = !DILocation(line: 1160, column: 7, scope: !2995)
!3040 = !DILocation(line: 1161, column: 88, scope: !3041)
!3041 = distinct !DILexicalBlock(scope: !3034, file: !116, line: 1160, column: 52)
!3042 = !DILocation(line: 1161, column: 44, scope: !3041)
!3043 = !DILocation(line: 1161, column: 41, scope: !3041)
!3044 = !DILocation(line: 1162, column: 3, scope: !3041)
!3045 = !DILocation(line: 1163, column: 2, scope: !2995)
!3046 = !DILocation(line: 1166, column: 20, scope: !3047)
!3047 = distinct !DILexicalBlock(scope: !3048, file: !116, line: 1166, column: 7)
!3048 = distinct !DILexicalBlock(scope: !2985, file: !116, line: 1165, column: 2)
!3049 = !DILocation(line: 1166, column: 8, scope: !3047)
!3050 = !DILocation(line: 1166, column: 27, scope: !3047)
!3051 = !DILocation(line: 1166, column: 43, scope: !3047)
!3052 = !DILocation(line: 1166, column: 31, scope: !3047)
!3053 = !DILocation(line: 1166, column: 7, scope: !3048)
!3054 = !DILocation(line: 1168, column: 11, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !3056, file: !116, line: 1168, column: 4)
!3056 = distinct !DILexicalBlock(scope: !3047, file: !116, line: 1166, column: 52)
!3057 = !DILocation(line: 1168, column: 9, scope: !3055)
!3058 = !DILocation(line: 1168, column: 16, scope: !3059)
!3059 = distinct !DILexicalBlock(scope: !3055, file: !116, line: 1168, column: 4)
!3060 = !DILocation(line: 1168, column: 20, scope: !3059)
!3061 = !DILocation(line: 1168, column: 18, scope: !3059)
!3062 = !DILocation(line: 1168, column: 4, scope: !3055)
!3063 = !DILocalVariable(name: "e", scope: !3064, file: !116, line: 1170, type: !120)
!3064 = distinct !DILexicalBlock(scope: !3059, file: !116, line: 1168, column: 62)
!3065 = !DILocation(line: 1170, column: 23, scope: !3064)
!3066 = !DILocation(line: 1170, column: 48, scope: !3064)
!3067 = !DILocalVariable(name: "is_5780", scope: !3064, file: !116, line: 1171, type: !31)
!3068 = !DILocation(line: 1171, column: 9, scope: !3064)
!3069 = !DILocation(line: 1171, column: 31, scope: !3064)
!3070 = !DILocation(line: 1173, column: 20, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !3064, file: !116, line: 1173, column: 8)
!3072 = !DILocation(line: 1173, column: 8, scope: !3071)
!3073 = !DILocation(line: 1173, column: 48, scope: !3071)
!3074 = !DILocation(line: 1173, column: 8, scope: !3064)
!3075 = !DILocation(line: 1174, column: 6, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !3071, file: !116, line: 1173, column: 53)
!3077 = !DILocation(line: 1174, column: 14, scope: !3076)
!3078 = !DILocation(line: 1174, column: 40, scope: !3076)
!3079 = !DILocation(line: 1174, column: 12, scope: !3076)
!3080 = !DILocation(line: 1175, column: 7, scope: !3076)
!3081 = distinct !{!3081, !3075, !3082, !1607}
!3082 = !DILocation(line: 1175, column: 19, scope: !3076)
!3083 = !DILocation(line: 1176, column: 29, scope: !3076)
!3084 = !DILocation(line: 1176, column: 24, scope: !3076)
!3085 = !DILocation(line: 1176, column: 6, scope: !3076)
!3086 = !DILocation(line: 1176, column: 27, scope: !3076)
!3087 = !DILocation(line: 1177, column: 6, scope: !3076)
!3088 = !DILocation(line: 1178, column: 27, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !3071, file: !116, line: 1178, column: 15)
!3090 = !DILocation(line: 1178, column: 15, scope: !3089)
!3091 = !DILocation(line: 1178, column: 55, scope: !3089)
!3092 = !DILocation(line: 1178, column: 15, scope: !3071)
!3093 = !DILocation(line: 1179, column: 10, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !3089, file: !116, line: 1178, column: 59)
!3095 = !DILocation(line: 1179, column: 8, scope: !3094)
!3096 = !DILocation(line: 1180, column: 16, scope: !3094)
!3097 = !DILocation(line: 1180, column: 24, scope: !3094)
!3098 = !DILocation(line: 1180, column: 28, scope: !3094)
!3099 = !DILocation(line: 1180, column: 72, scope: !3094)
!3100 = !DILocation(line: 1180, column: 30, scope: !3094)
!3101 = !DILocation(line: 0, scope: !3094)
!3102 = !DILocation(line: 1180, column: 14, scope: !3094)
!3103 = !DILocation(line: 1181, column: 5, scope: !3094)
!3104 = !DILocalVariable(name: "sm", scope: !3064, file: !116, line: 1183, type: !127)
!3105 = !DILocation(line: 1183, column: 21, scope: !3064)
!3106 = !DILocation(line: 1183, column: 26, scope: !3064)
!3107 = !DILocalVariable(name: "udp_rs", scope: !3064, file: !116, line: 1184, type: !526)
!3108 = !DILocation(line: 1184, column: 26, scope: !3064)
!3109 = !DILocation(line: 1184, column: 58, scope: !3064)
!3110 = !DILocation(line: 1185, column: 34, scope: !3064)
!3111 = !DILocation(line: 1185, column: 18, scope: !3064)
!3112 = !DILocation(line: 1185, column: 36, scope: !3064)
!3113 = !DILocation(line: 1185, column: 5, scope: !3064)
!3114 = !DILocation(line: 1185, column: 13, scope: !3064)
!3115 = !DILocation(line: 1185, column: 16, scope: !3064)
!3116 = !DILocation(line: 1186, column: 18, scope: !3064)
!3117 = !DILocation(line: 1186, column: 5, scope: !3064)
!3118 = !DILocation(line: 1186, column: 13, scope: !3064)
!3119 = !DILocation(line: 1186, column: 16, scope: !3064)
!3120 = !DILocation(line: 1187, column: 24, scope: !3064)
!3121 = !DILocation(line: 1187, column: 32, scope: !3064)
!3122 = !DILocation(line: 1187, column: 35, scope: !3064)
!3123 = !DILocation(line: 1187, column: 5, scope: !3064)
!3124 = !DILocation(line: 1188, column: 28, scope: !3064)
!3125 = !DILocation(line: 1188, column: 23, scope: !3064)
!3126 = !DILocation(line: 1188, column: 5, scope: !3064)
!3127 = !DILocation(line: 1188, column: 26, scope: !3064)
!3128 = !DILocation(line: 1189, column: 4, scope: !3064)
!3129 = !DILocation(line: 1168, column: 58, scope: !3059)
!3130 = !DILocation(line: 1168, column: 4, scope: !3059)
!3131 = distinct !{!3131, !3062, !3132, !1607}
!3132 = !DILocation(line: 1189, column: 4, scope: !3055)
!3133 = !DILocation(line: 1190, column: 3, scope: !3056)
!3134 = !DILocalVariable(name: "udp_relay_server_index", scope: !2985, file: !116, line: 1193, type: !31)
!3135 = !DILocation(line: 1193, column: 6, scope: !2985)
!3136 = !DILocation(line: 1198, column: 7, scope: !3137)
!3137 = distinct !DILexicalBlock(scope: !2985, file: !116, line: 1198, column: 2)
!3138 = !DILocation(line: 1198, column: 6, scope: !3137)
!3139 = !DILocation(line: 1198, column: 11, scope: !3140)
!3140 = distinct !DILexicalBlock(scope: !3137, file: !116, line: 1198, column: 2)
!3141 = !DILocation(line: 1198, column: 42, scope: !3140)
!3142 = !DILocation(line: 1198, column: 12, scope: !3140)
!3143 = !DILocation(line: 1198, column: 2, scope: !3137)
!3144 = !DILocalVariable(name: "index", scope: !3145, file: !116, line: 1200, type: !31)
!3145 = distinct !DILexicalBlock(scope: !3140, file: !116, line: 1198, column: 53)
!3146 = !DILocation(line: 1200, column: 7, scope: !3145)
!3147 = !DILocation(line: 1200, column: 15, scope: !3145)
!3148 = !DILocation(line: 1202, column: 19, scope: !3149)
!3149 = distinct !DILexicalBlock(scope: !3145, file: !116, line: 1202, column: 6)
!3150 = !DILocation(line: 1202, column: 7, scope: !3149)
!3151 = !DILocation(line: 1202, column: 26, scope: !3149)
!3152 = !DILocation(line: 1202, column: 42, scope: !3149)
!3153 = !DILocation(line: 1202, column: 30, scope: !3149)
!3154 = !DILocation(line: 1202, column: 6, scope: !3145)
!3155 = !DILocalVariable(name: "addr", scope: !3156, file: !116, line: 1204, type: !231)
!3156 = distinct !DILexicalBlock(scope: !3149, file: !116, line: 1202, column: 51)
!3157 = !DILocation(line: 1204, column: 13, scope: !3156)
!3158 = !DILocalVariable(name: "saddr", scope: !3156, file: !116, line: 1205, type: !1836)
!3159 = !DILocation(line: 1205, column: 9, scope: !3156)
!3160 = !DILocation(line: 1206, column: 49, scope: !3156)
!3161 = !DILocation(line: 1206, column: 55, scope: !3156)
!3162 = !DILocation(line: 1206, column: 20, scope: !3156)
!3163 = !DILocation(line: 1206, column: 4, scope: !3156)
!3164 = !DILocalVariable(name: "port", scope: !3156, file: !116, line: 1207, type: !31)
!3165 = !DILocation(line: 1207, column: 8, scope: !3156)
!3166 = !DILocation(line: 1207, column: 20, scope: !3156)
!3167 = !DILocation(line: 1208, column: 43, scope: !3156)
!3168 = !DILocation(line: 1208, column: 4, scope: !3156)
!3169 = !DILocation(line: 1210, column: 86, scope: !3156)
!3170 = !DILocation(line: 1210, column: 25, scope: !3156)
!3171 = !DILocation(line: 1210, column: 42, scope: !3156)
!3172 = !DILocation(line: 1210, column: 4, scope: !3156)
!3173 = !DILocation(line: 1210, column: 49, scope: !3156)
!3174 = !DILocation(line: 1211, column: 111, scope: !3156)
!3175 = !DILocation(line: 1211, column: 118, scope: !3156)
!3176 = !DILocation(line: 1211, column: 136, scope: !3156)
!3177 = !DILocation(line: 1211, column: 163, scope: !3156)
!3178 = !DILocation(line: 1211, column: 145, scope: !3156)
!3179 = !DILocation(line: 1211, column: 188, scope: !3156)
!3180 = !DILocation(line: 1211, column: 217, scope: !3156)
!3181 = !DILocation(line: 1211, column: 199, scope: !3156)
!3182 = !DILocation(line: 1211, column: 242, scope: !3156)
!3183 = !DILocation(line: 1211, column: 54, scope: !3156)
!3184 = !DILocation(line: 1211, column: 25, scope: !3156)
!3185 = !DILocation(line: 1211, column: 42, scope: !3156)
!3186 = !DILocation(line: 1211, column: 4, scope: !3156)
!3187 = !DILocation(line: 1211, column: 52, scope: !3156)
!3188 = !DILocation(line: 1213, column: 19, scope: !3189)
!3189 = distinct !DILexicalBlock(scope: !3156, file: !116, line: 1213, column: 7)
!3190 = !DILocation(line: 1213, column: 7, scope: !3189)
!3191 = !DILocation(line: 1213, column: 47, scope: !3189)
!3192 = !DILocation(line: 1213, column: 7, scope: !3156)
!3193 = !DILocation(line: 1214, column: 5, scope: !3194)
!3194 = distinct !DILexicalBlock(scope: !3189, file: !116, line: 1213, column: 51)
!3195 = !DILocalVariable(name: "thr", scope: !3194, file: !116, line: 1215, type: !1026)
!3196 = !DILocation(line: 1215, column: 15, scope: !3194)
!3197 = !DILocation(line: 1216, column: 81, scope: !3198)
!3198 = distinct !DILexicalBlock(scope: !3194, file: !116, line: 1216, column: 8)
!3199 = !DILocation(line: 1216, column: 98, scope: !3198)
!3200 = !DILocation(line: 1216, column: 60, scope: !3198)
!3201 = !DILocation(line: 1216, column: 8, scope: !3198)
!3202 = !DILocation(line: 1216, column: 8, scope: !3194)
!3203 = !DILocation(line: 1217, column: 6, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !3198, file: !116, line: 1216, column: 110)
!3205 = !DILocation(line: 1218, column: 6, scope: !3204)
!3206 = !DILocation(line: 1220, column: 20, scope: !3194)
!3207 = !DILocation(line: 1220, column: 5, scope: !3194)
!3208 = !DILocation(line: 1221, column: 4, scope: !3194)
!3209 = !DILocation(line: 1222, column: 3, scope: !3156)
!3210 = !DILocation(line: 1223, column: 2, scope: !3145)
!3211 = !DILocation(line: 1198, column: 49, scope: !3140)
!3212 = !DILocation(line: 1198, column: 2, scope: !3140)
!3213 = distinct !{!3213, !3143, !3214, !1607}
!3214 = !DILocation(line: 1223, column: 2, scope: !3137)
!3215 = !DILocation(line: 1226, column: 7, scope: !3216)
!3216 = distinct !DILexicalBlock(scope: !2985, file: !116, line: 1226, column: 2)
!3217 = !DILocation(line: 1226, column: 6, scope: !3216)
!3218 = !DILocation(line: 1226, column: 11, scope: !3219)
!3219 = distinct !DILexicalBlock(scope: !3216, file: !116, line: 1226, column: 2)
!3220 = !DILocation(line: 1226, column: 34, scope: !3219)
!3221 = !DILocation(line: 1226, column: 12, scope: !3219)
!3222 = !DILocation(line: 1226, column: 2, scope: !3216)
!3223 = !DILocalVariable(name: "index", scope: !3224, file: !116, line: 1228, type: !31)
!3224 = distinct !DILexicalBlock(scope: !3219, file: !116, line: 1226, column: 53)
!3225 = !DILocation(line: 1228, column: 7, scope: !3224)
!3226 = !DILocation(line: 1228, column: 27, scope: !3224)
!3227 = !DILocation(line: 1228, column: 15, scope: !3224)
!3228 = !DILocation(line: 1228, column: 37, scope: !3224)
!3229 = !DILocation(line: 1228, column: 38, scope: !3224)
!3230 = !DILocation(line: 1228, column: 43, scope: !3224)
!3231 = !DILocation(line: 1231, column: 19, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !3224, file: !116, line: 1231, column: 6)
!3233 = !DILocation(line: 1231, column: 7, scope: !3232)
!3234 = !DILocation(line: 1231, column: 6, scope: !3224)
!3235 = !DILocation(line: 1233, column: 82, scope: !3236)
!3236 = distinct !DILexicalBlock(scope: !3232, file: !116, line: 1231, column: 27)
!3237 = !DILocation(line: 1233, column: 25, scope: !3236)
!3238 = !DILocation(line: 1233, column: 38, scope: !3236)
!3239 = !DILocation(line: 1233, column: 4, scope: !3236)
!3240 = !DILocation(line: 1233, column: 45, scope: !3236)
!3241 = !DILocation(line: 1234, column: 128, scope: !3236)
!3242 = !DILocation(line: 1234, column: 134, scope: !3236)
!3243 = !DILocation(line: 1234, column: 107, scope: !3236)
!3244 = !DILocation(line: 1234, column: 150, scope: !3236)
!3245 = !DILocation(line: 1234, column: 177, scope: !3236)
!3246 = !DILocation(line: 1234, column: 204, scope: !3236)
!3247 = !DILocation(line: 1234, column: 186, scope: !3236)
!3248 = !DILocation(line: 1234, column: 229, scope: !3236)
!3249 = !DILocation(line: 1234, column: 258, scope: !3236)
!3250 = !DILocation(line: 1234, column: 240, scope: !3236)
!3251 = !DILocation(line: 1234, column: 283, scope: !3236)
!3252 = !DILocation(line: 1234, column: 50, scope: !3236)
!3253 = !DILocation(line: 1234, column: 25, scope: !3236)
!3254 = !DILocation(line: 1234, column: 38, scope: !3236)
!3255 = !DILocation(line: 1234, column: 4, scope: !3236)
!3256 = !DILocation(line: 1234, column: 48, scope: !3236)
!3257 = !DILocation(line: 1236, column: 19, scope: !3258)
!3258 = distinct !DILexicalBlock(scope: !3236, file: !116, line: 1236, column: 7)
!3259 = !DILocation(line: 1236, column: 7, scope: !3258)
!3260 = !DILocation(line: 1236, column: 47, scope: !3258)
!3261 = !DILocation(line: 1236, column: 7, scope: !3236)
!3262 = !DILocation(line: 1237, column: 5, scope: !3263)
!3263 = distinct !DILexicalBlock(scope: !3258, file: !116, line: 1236, column: 51)
!3264 = !DILocalVariable(name: "thr", scope: !3263, file: !116, line: 1238, type: !1026)
!3265 = !DILocation(line: 1238, column: 15, scope: !3263)
!3266 = !DILocation(line: 1239, column: 81, scope: !3267)
!3267 = distinct !DILexicalBlock(scope: !3263, file: !116, line: 1239, column: 8)
!3268 = !DILocation(line: 1239, column: 94, scope: !3267)
!3269 = !DILocation(line: 1239, column: 60, scope: !3267)
!3270 = !DILocation(line: 1239, column: 8, scope: !3267)
!3271 = !DILocation(line: 1239, column: 8, scope: !3263)
!3272 = !DILocation(line: 1240, column: 6, scope: !3273)
!3273 = distinct !DILexicalBlock(scope: !3267, file: !116, line: 1239, column: 106)
!3274 = !DILocation(line: 1241, column: 6, scope: !3273)
!3275 = !DILocation(line: 1243, column: 20, scope: !3263)
!3276 = !DILocation(line: 1243, column: 5, scope: !3263)
!3277 = !DILocation(line: 1244, column: 4, scope: !3263)
!3278 = !DILocation(line: 1246, column: 19, scope: !3279)
!3279 = distinct !DILexicalBlock(scope: !3236, file: !116, line: 1246, column: 7)
!3280 = !DILocation(line: 1246, column: 7, scope: !3279)
!3281 = !DILocation(line: 1246, column: 7, scope: !3236)
!3282 = !DILocation(line: 1248, column: 85, scope: !3283)
!3283 = distinct !DILexicalBlock(scope: !3279, file: !116, line: 1246, column: 28)
!3284 = !DILocation(line: 1248, column: 26, scope: !3283)
!3285 = !DILocation(line: 1248, column: 39, scope: !3283)
!3286 = !DILocation(line: 1248, column: 44, scope: !3283)
!3287 = !DILocation(line: 1248, column: 5, scope: !3283)
!3288 = !DILocation(line: 1248, column: 48, scope: !3283)
!3289 = !DILocation(line: 1249, column: 131, scope: !3283)
!3290 = !DILocation(line: 1249, column: 137, scope: !3283)
!3291 = !DILocation(line: 1249, column: 110, scope: !3283)
!3292 = !DILocation(line: 1249, column: 141, scope: !3283)
!3293 = !DILocation(line: 1249, column: 178, scope: !3283)
!3294 = !DILocation(line: 1249, column: 205, scope: !3283)
!3295 = !DILocation(line: 1249, column: 187, scope: !3283)
!3296 = !DILocation(line: 1249, column: 230, scope: !3283)
!3297 = !DILocation(line: 1249, column: 259, scope: !3283)
!3298 = !DILocation(line: 1249, column: 241, scope: !3283)
!3299 = !DILocation(line: 1249, column: 284, scope: !3283)
!3300 = !DILocation(line: 1249, column: 53, scope: !3283)
!3301 = !DILocation(line: 1249, column: 26, scope: !3283)
!3302 = !DILocation(line: 1249, column: 39, scope: !3283)
!3303 = !DILocation(line: 1249, column: 44, scope: !3283)
!3304 = !DILocation(line: 1249, column: 5, scope: !3283)
!3305 = !DILocation(line: 1249, column: 51, scope: !3283)
!3306 = !DILocation(line: 1251, column: 20, scope: !3307)
!3307 = distinct !DILexicalBlock(scope: !3283, file: !116, line: 1251, column: 8)
!3308 = !DILocation(line: 1251, column: 8, scope: !3307)
!3309 = !DILocation(line: 1251, column: 48, scope: !3307)
!3310 = !DILocation(line: 1251, column: 8, scope: !3283)
!3311 = !DILocation(line: 1252, column: 6, scope: !3312)
!3312 = distinct !DILexicalBlock(scope: !3307, file: !116, line: 1251, column: 52)
!3313 = !DILocalVariable(name: "thr", scope: !3312, file: !116, line: 1253, type: !1026)
!3314 = !DILocation(line: 1253, column: 16, scope: !3312)
!3315 = !DILocation(line: 1254, column: 82, scope: !3316)
!3316 = distinct !DILexicalBlock(scope: !3312, file: !116, line: 1254, column: 9)
!3317 = !DILocation(line: 1254, column: 95, scope: !3316)
!3318 = !DILocation(line: 1254, column: 100, scope: !3316)
!3319 = !DILocation(line: 1254, column: 61, scope: !3316)
!3320 = !DILocation(line: 1254, column: 9, scope: !3316)
!3321 = !DILocation(line: 1254, column: 9, scope: !3312)
!3322 = !DILocation(line: 1255, column: 7, scope: !3323)
!3323 = distinct !DILexicalBlock(scope: !3316, file: !116, line: 1254, column: 109)
!3324 = !DILocation(line: 1256, column: 7, scope: !3323)
!3325 = !DILocation(line: 1258, column: 21, scope: !3312)
!3326 = !DILocation(line: 1258, column: 6, scope: !3312)
!3327 = !DILocation(line: 1259, column: 5, scope: !3312)
!3328 = !DILocation(line: 1260, column: 4, scope: !3283)
!3329 = !DILocation(line: 1261, column: 3, scope: !3236)
!3330 = !DILocation(line: 1262, column: 25, scope: !3331)
!3331 = distinct !DILexicalBlock(scope: !3232, file: !116, line: 1261, column: 10)
!3332 = !DILocation(line: 1262, column: 38, scope: !3331)
!3333 = !DILocation(line: 1262, column: 4, scope: !3331)
!3334 = !DILocation(line: 1262, column: 45, scope: !3331)
!3335 = !DILocation(line: 1263, column: 19, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !3331, file: !116, line: 1263, column: 7)
!3337 = !DILocation(line: 1263, column: 7, scope: !3336)
!3338 = !DILocation(line: 1263, column: 7, scope: !3331)
!3339 = !DILocation(line: 1264, column: 26, scope: !3336)
!3340 = !DILocation(line: 1264, column: 39, scope: !3336)
!3341 = !DILocation(line: 1264, column: 44, scope: !3336)
!3342 = !DILocation(line: 1264, column: 5, scope: !3336)
!3343 = !DILocation(line: 1264, column: 48, scope: !3336)
!3344 = !DILocation(line: 1266, column: 19, scope: !3345)
!3345 = distinct !DILexicalBlock(scope: !3224, file: !116, line: 1266, column: 6)
!3346 = !DILocation(line: 1266, column: 7, scope: !3345)
!3347 = !DILocation(line: 1266, column: 27, scope: !3345)
!3348 = !DILocation(line: 1266, column: 43, scope: !3345)
!3349 = !DILocation(line: 1266, column: 31, scope: !3345)
!3350 = !DILocation(line: 1266, column: 50, scope: !3345)
!3351 = !DILocation(line: 1266, column: 66, scope: !3345)
!3352 = !DILocation(line: 1266, column: 95, scope: !3345)
!3353 = !DILocation(line: 1266, column: 80, scope: !3345)
!3354 = !DILocation(line: 1266, column: 6, scope: !3224)
!3355 = !DILocation(line: 1268, column: 83, scope: !3356)
!3356 = distinct !DILexicalBlock(scope: !3345, file: !116, line: 1266, column: 116)
!3357 = !DILocation(line: 1268, column: 25, scope: !3356)
!3358 = !DILocation(line: 1268, column: 39, scope: !3356)
!3359 = !DILocation(line: 1268, column: 4, scope: !3356)
!3360 = !DILocation(line: 1268, column: 46, scope: !3356)
!3361 = !DILocation(line: 1269, column: 129, scope: !3356)
!3362 = !DILocation(line: 1269, column: 135, scope: !3356)
!3363 = !DILocation(line: 1269, column: 108, scope: !3356)
!3364 = !DILocation(line: 1269, column: 151, scope: !3356)
!3365 = !DILocation(line: 1269, column: 182, scope: !3356)
!3366 = !DILocation(line: 1269, column: 209, scope: !3356)
!3367 = !DILocation(line: 1269, column: 191, scope: !3356)
!3368 = !DILocation(line: 1269, column: 234, scope: !3356)
!3369 = !DILocation(line: 1269, column: 263, scope: !3356)
!3370 = !DILocation(line: 1269, column: 245, scope: !3356)
!3371 = !DILocation(line: 1269, column: 288, scope: !3356)
!3372 = !DILocation(line: 1269, column: 51, scope: !3356)
!3373 = !DILocation(line: 1269, column: 25, scope: !3356)
!3374 = !DILocation(line: 1269, column: 39, scope: !3356)
!3375 = !DILocation(line: 1269, column: 4, scope: !3356)
!3376 = !DILocation(line: 1269, column: 49, scope: !3356)
!3377 = !DILocation(line: 1271, column: 19, scope: !3378)
!3378 = distinct !DILexicalBlock(scope: !3356, file: !116, line: 1271, column: 7)
!3379 = !DILocation(line: 1271, column: 7, scope: !3378)
!3380 = !DILocation(line: 1271, column: 47, scope: !3378)
!3381 = !DILocation(line: 1271, column: 7, scope: !3356)
!3382 = !DILocation(line: 1272, column: 5, scope: !3383)
!3383 = distinct !DILexicalBlock(scope: !3378, file: !116, line: 1271, column: 51)
!3384 = !DILocalVariable(name: "thr", scope: !3383, file: !116, line: 1273, type: !1026)
!3385 = !DILocation(line: 1273, column: 15, scope: !3383)
!3386 = !DILocation(line: 1274, column: 81, scope: !3387)
!3387 = distinct !DILexicalBlock(scope: !3383, file: !116, line: 1274, column: 8)
!3388 = !DILocation(line: 1274, column: 95, scope: !3387)
!3389 = !DILocation(line: 1274, column: 60, scope: !3387)
!3390 = !DILocation(line: 1274, column: 8, scope: !3387)
!3391 = !DILocation(line: 1274, column: 8, scope: !3383)
!3392 = !DILocation(line: 1275, column: 6, scope: !3393)
!3393 = distinct !DILexicalBlock(scope: !3387, file: !116, line: 1274, column: 107)
!3394 = !DILocation(line: 1276, column: 6, scope: !3393)
!3395 = !DILocation(line: 1278, column: 20, scope: !3383)
!3396 = !DILocation(line: 1278, column: 5, scope: !3383)
!3397 = !DILocation(line: 1279, column: 4, scope: !3383)
!3398 = !DILocation(line: 1281, column: 19, scope: !3399)
!3399 = distinct !DILexicalBlock(scope: !3356, file: !116, line: 1281, column: 7)
!3400 = !DILocation(line: 1281, column: 7, scope: !3399)
!3401 = !DILocation(line: 1281, column: 7, scope: !3356)
!3402 = !DILocation(line: 1283, column: 86, scope: !3403)
!3403 = distinct !DILexicalBlock(scope: !3399, file: !116, line: 1281, column: 28)
!3404 = !DILocation(line: 1283, column: 26, scope: !3403)
!3405 = !DILocation(line: 1283, column: 40, scope: !3403)
!3406 = !DILocation(line: 1283, column: 45, scope: !3403)
!3407 = !DILocation(line: 1283, column: 5, scope: !3403)
!3408 = !DILocation(line: 1283, column: 49, scope: !3403)
!3409 = !DILocation(line: 1284, column: 132, scope: !3403)
!3410 = !DILocation(line: 1284, column: 138, scope: !3403)
!3411 = !DILocation(line: 1284, column: 111, scope: !3403)
!3412 = !DILocation(line: 1284, column: 142, scope: !3403)
!3413 = !DILocation(line: 1284, column: 183, scope: !3403)
!3414 = !DILocation(line: 1284, column: 210, scope: !3403)
!3415 = !DILocation(line: 1284, column: 192, scope: !3403)
!3416 = !DILocation(line: 1284, column: 235, scope: !3403)
!3417 = !DILocation(line: 1284, column: 264, scope: !3403)
!3418 = !DILocation(line: 1284, column: 246, scope: !3403)
!3419 = !DILocation(line: 1284, column: 289, scope: !3403)
!3420 = !DILocation(line: 1284, column: 54, scope: !3403)
!3421 = !DILocation(line: 1284, column: 26, scope: !3403)
!3422 = !DILocation(line: 1284, column: 40, scope: !3403)
!3423 = !DILocation(line: 1284, column: 45, scope: !3403)
!3424 = !DILocation(line: 1284, column: 5, scope: !3403)
!3425 = !DILocation(line: 1284, column: 52, scope: !3403)
!3426 = !DILocation(line: 1286, column: 20, scope: !3427)
!3427 = distinct !DILexicalBlock(scope: !3403, file: !116, line: 1286, column: 8)
!3428 = !DILocation(line: 1286, column: 8, scope: !3427)
!3429 = !DILocation(line: 1286, column: 48, scope: !3427)
!3430 = !DILocation(line: 1286, column: 8, scope: !3403)
!3431 = !DILocation(line: 1287, column: 6, scope: !3432)
!3432 = distinct !DILexicalBlock(scope: !3427, file: !116, line: 1286, column: 52)
!3433 = !DILocalVariable(name: "thr", scope: !3432, file: !116, line: 1288, type: !1026)
!3434 = !DILocation(line: 1288, column: 16, scope: !3432)
!3435 = !DILocation(line: 1289, column: 82, scope: !3436)
!3436 = distinct !DILexicalBlock(scope: !3432, file: !116, line: 1289, column: 9)
!3437 = !DILocation(line: 1289, column: 96, scope: !3436)
!3438 = !DILocation(line: 1289, column: 101, scope: !3436)
!3439 = !DILocation(line: 1289, column: 61, scope: !3436)
!3440 = !DILocation(line: 1289, column: 9, scope: !3436)
!3441 = !DILocation(line: 1289, column: 9, scope: !3432)
!3442 = !DILocation(line: 1290, column: 7, scope: !3443)
!3443 = distinct !DILexicalBlock(scope: !3436, file: !116, line: 1289, column: 110)
!3444 = !DILocation(line: 1291, column: 7, scope: !3443)
!3445 = !DILocation(line: 1293, column: 21, scope: !3432)
!3446 = !DILocation(line: 1293, column: 6, scope: !3432)
!3447 = !DILocation(line: 1294, column: 5, scope: !3432)
!3448 = !DILocation(line: 1295, column: 4, scope: !3403)
!3449 = !DILocation(line: 1296, column: 3, scope: !3356)
!3450 = !DILocation(line: 1297, column: 25, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !3345, file: !116, line: 1296, column: 10)
!3452 = !DILocation(line: 1297, column: 39, scope: !3451)
!3453 = !DILocation(line: 1297, column: 4, scope: !3451)
!3454 = !DILocation(line: 1297, column: 46, scope: !3451)
!3455 = !DILocation(line: 1298, column: 19, scope: !3456)
!3456 = distinct !DILexicalBlock(scope: !3451, file: !116, line: 1298, column: 7)
!3457 = !DILocation(line: 1298, column: 7, scope: !3456)
!3458 = !DILocation(line: 1298, column: 7, scope: !3451)
!3459 = !DILocation(line: 1299, column: 26, scope: !3456)
!3460 = !DILocation(line: 1299, column: 40, scope: !3456)
!3461 = !DILocation(line: 1299, column: 45, scope: !3456)
!3462 = !DILocation(line: 1299, column: 5, scope: !3456)
!3463 = !DILocation(line: 1299, column: 49, scope: !3456)
!3464 = !DILocation(line: 1301, column: 2, scope: !3224)
!3465 = !DILocation(line: 1226, column: 49, scope: !3219)
!3466 = !DILocation(line: 1226, column: 2, scope: !3219)
!3467 = distinct !{!3467, !3222, !3468, !1607}
!3468 = !DILocation(line: 1301, column: 2, scope: !3216)
!3469 = !DILocation(line: 1302, column: 1, scope: !2985)
!3470 = distinct !DISubprogram(name: "setup_socket_per_session_udp_listener_servers", scope: !116, file: !116, line: 1393, type: !2234, scopeLine: 1394, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !1286)
!3471 = !DILocalVariable(name: "i", scope: !3470, file: !116, line: 1395, type: !176)
!3472 = !DILocation(line: 1395, column: 9, scope: !3470)
!3473 = !DILocation(line: 1398, column: 7, scope: !3474)
!3474 = distinct !DILexicalBlock(scope: !3470, file: !116, line: 1398, column: 2)
!3475 = !DILocation(line: 1398, column: 6, scope: !3474)
!3476 = !DILocation(line: 1398, column: 11, scope: !3477)
!3477 = distinct !DILexicalBlock(scope: !3474, file: !116, line: 1398, column: 2)
!3478 = !DILocation(line: 1398, column: 42, scope: !3477)
!3479 = !DILocation(line: 1398, column: 12, scope: !3477)
!3480 = !DILocation(line: 1398, column: 2, scope: !3474)
!3481 = !DILocalVariable(name: "index", scope: !3482, file: !116, line: 1400, type: !31)
!3482 = distinct !DILexicalBlock(scope: !3477, file: !116, line: 1398, column: 53)
!3483 = !DILocation(line: 1400, column: 7, scope: !3482)
!3484 = !DILocation(line: 1400, column: 15, scope: !3482)
!3485 = !DILocation(line: 1402, column: 19, scope: !3486)
!3486 = distinct !DILexicalBlock(scope: !3482, file: !116, line: 1402, column: 6)
!3487 = !DILocation(line: 1402, column: 7, scope: !3486)
!3488 = !DILocation(line: 1402, column: 26, scope: !3486)
!3489 = !DILocation(line: 1402, column: 42, scope: !3486)
!3490 = !DILocation(line: 1402, column: 30, scope: !3486)
!3491 = !DILocation(line: 1402, column: 6, scope: !3482)
!3492 = !DILocalVariable(name: "addr", scope: !3493, file: !116, line: 1404, type: !231)
!3493 = distinct !DILexicalBlock(scope: !3486, file: !116, line: 1402, column: 51)
!3494 = !DILocation(line: 1404, column: 13, scope: !3493)
!3495 = !DILocalVariable(name: "saddr", scope: !3493, file: !116, line: 1405, type: !1836)
!3496 = !DILocation(line: 1405, column: 9, scope: !3493)
!3497 = !DILocation(line: 1406, column: 49, scope: !3493)
!3498 = !DILocation(line: 1406, column: 55, scope: !3493)
!3499 = !DILocation(line: 1406, column: 20, scope: !3493)
!3500 = !DILocation(line: 1406, column: 4, scope: !3493)
!3501 = !DILocalVariable(name: "port", scope: !3493, file: !116, line: 1407, type: !31)
!3502 = !DILocation(line: 1407, column: 8, scope: !3493)
!3503 = !DILocation(line: 1407, column: 20, scope: !3493)
!3504 = !DILocation(line: 1408, column: 43, scope: !3493)
!3505 = !DILocation(line: 1408, column: 4, scope: !3493)
!3506 = !DILocation(line: 1410, column: 86, scope: !3493)
!3507 = !DILocation(line: 1410, column: 25, scope: !3493)
!3508 = !DILocation(line: 1410, column: 42, scope: !3493)
!3509 = !DILocation(line: 1410, column: 4, scope: !3493)
!3510 = !DILocation(line: 1410, column: 49, scope: !3493)
!3511 = !DILocation(line: 1412, column: 111, scope: !3493)
!3512 = !DILocation(line: 1412, column: 118, scope: !3493)
!3513 = !DILocation(line: 1412, column: 136, scope: !3493)
!3514 = !DILocation(line: 1413, column: 28, scope: !3493)
!3515 = !DILocation(line: 1412, column: 54, scope: !3493)
!3516 = !DILocation(line: 1412, column: 25, scope: !3493)
!3517 = !DILocation(line: 1412, column: 42, scope: !3493)
!3518 = !DILocation(line: 1412, column: 4, scope: !3493)
!3519 = !DILocation(line: 1412, column: 52, scope: !3493)
!3520 = !DILocation(line: 1414, column: 3, scope: !3493)
!3521 = !DILocation(line: 1415, column: 2, scope: !3482)
!3522 = !DILocation(line: 1398, column: 49, scope: !3477)
!3523 = !DILocation(line: 1398, column: 2, scope: !3477)
!3524 = distinct !{!3524, !3480, !3525, !1607}
!3525 = !DILocation(line: 1415, column: 2, scope: !3474)
!3526 = !DILocation(line: 1418, column: 7, scope: !3527)
!3527 = distinct !DILexicalBlock(scope: !3470, file: !116, line: 1418, column: 2)
!3528 = !DILocation(line: 1418, column: 6, scope: !3527)
!3529 = !DILocation(line: 1418, column: 11, scope: !3530)
!3530 = distinct !DILexicalBlock(scope: !3527, file: !116, line: 1418, column: 2)
!3531 = !DILocation(line: 1418, column: 34, scope: !3530)
!3532 = !DILocation(line: 1418, column: 12, scope: !3530)
!3533 = !DILocation(line: 1418, column: 2, scope: !3527)
!3534 = !DILocalVariable(name: "index", scope: !3535, file: !116, line: 1420, type: !31)
!3535 = distinct !DILexicalBlock(scope: !3530, file: !116, line: 1418, column: 53)
!3536 = !DILocation(line: 1420, column: 7, scope: !3535)
!3537 = !DILocation(line: 1420, column: 27, scope: !3535)
!3538 = !DILocation(line: 1420, column: 15, scope: !3535)
!3539 = !DILocation(line: 1420, column: 37, scope: !3535)
!3540 = !DILocation(line: 1420, column: 38, scope: !3535)
!3541 = !DILocation(line: 1420, column: 43, scope: !3535)
!3542 = !DILocation(line: 1423, column: 19, scope: !3543)
!3543 = distinct !DILexicalBlock(scope: !3535, file: !116, line: 1423, column: 6)
!3544 = !DILocation(line: 1423, column: 7, scope: !3543)
!3545 = !DILocation(line: 1423, column: 6, scope: !3535)
!3546 = !DILocation(line: 1425, column: 82, scope: !3547)
!3547 = distinct !DILexicalBlock(scope: !3543, file: !116, line: 1423, column: 27)
!3548 = !DILocation(line: 1425, column: 25, scope: !3547)
!3549 = !DILocation(line: 1425, column: 38, scope: !3547)
!3550 = !DILocation(line: 1425, column: 4, scope: !3547)
!3551 = !DILocation(line: 1425, column: 45, scope: !3547)
!3552 = !DILocation(line: 1427, column: 128, scope: !3547)
!3553 = !DILocation(line: 1427, column: 134, scope: !3547)
!3554 = !DILocation(line: 1427, column: 107, scope: !3547)
!3555 = !DILocation(line: 1427, column: 150, scope: !3547)
!3556 = !DILocation(line: 1427, column: 177, scope: !3547)
!3557 = !DILocation(line: 1428, column: 28, scope: !3547)
!3558 = !DILocation(line: 1427, column: 50, scope: !3547)
!3559 = !DILocation(line: 1427, column: 25, scope: !3547)
!3560 = !DILocation(line: 1427, column: 38, scope: !3547)
!3561 = !DILocation(line: 1427, column: 4, scope: !3547)
!3562 = !DILocation(line: 1427, column: 48, scope: !3547)
!3563 = !DILocation(line: 1430, column: 19, scope: !3564)
!3564 = distinct !DILexicalBlock(scope: !3547, file: !116, line: 1430, column: 7)
!3565 = !DILocation(line: 1430, column: 7, scope: !3564)
!3566 = !DILocation(line: 1430, column: 7, scope: !3547)
!3567 = !DILocation(line: 1432, column: 85, scope: !3568)
!3568 = distinct !DILexicalBlock(scope: !3564, file: !116, line: 1430, column: 28)
!3569 = !DILocation(line: 1432, column: 26, scope: !3568)
!3570 = !DILocation(line: 1432, column: 39, scope: !3568)
!3571 = !DILocation(line: 1432, column: 44, scope: !3568)
!3572 = !DILocation(line: 1432, column: 5, scope: !3568)
!3573 = !DILocation(line: 1432, column: 48, scope: !3568)
!3574 = !DILocation(line: 1434, column: 131, scope: !3568)
!3575 = !DILocation(line: 1434, column: 137, scope: !3568)
!3576 = !DILocation(line: 1434, column: 110, scope: !3568)
!3577 = !DILocation(line: 1434, column: 141, scope: !3568)
!3578 = !DILocation(line: 1434, column: 178, scope: !3568)
!3579 = !DILocation(line: 1435, column: 29, scope: !3568)
!3580 = !DILocation(line: 1434, column: 53, scope: !3568)
!3581 = !DILocation(line: 1434, column: 26, scope: !3568)
!3582 = !DILocation(line: 1434, column: 39, scope: !3568)
!3583 = !DILocation(line: 1434, column: 44, scope: !3568)
!3584 = !DILocation(line: 1434, column: 5, scope: !3568)
!3585 = !DILocation(line: 1434, column: 51, scope: !3568)
!3586 = !DILocation(line: 1436, column: 4, scope: !3568)
!3587 = !DILocation(line: 1437, column: 3, scope: !3547)
!3588 = !DILocation(line: 1438, column: 25, scope: !3589)
!3589 = distinct !DILexicalBlock(scope: !3543, file: !116, line: 1437, column: 10)
!3590 = !DILocation(line: 1438, column: 38, scope: !3589)
!3591 = !DILocation(line: 1438, column: 4, scope: !3589)
!3592 = !DILocation(line: 1438, column: 45, scope: !3589)
!3593 = !DILocation(line: 1439, column: 19, scope: !3594)
!3594 = distinct !DILexicalBlock(scope: !3589, file: !116, line: 1439, column: 7)
!3595 = !DILocation(line: 1439, column: 7, scope: !3594)
!3596 = !DILocation(line: 1439, column: 7, scope: !3589)
!3597 = !DILocation(line: 1440, column: 26, scope: !3594)
!3598 = !DILocation(line: 1440, column: 39, scope: !3594)
!3599 = !DILocation(line: 1440, column: 44, scope: !3594)
!3600 = !DILocation(line: 1440, column: 5, scope: !3594)
!3601 = !DILocation(line: 1440, column: 48, scope: !3594)
!3602 = !DILocation(line: 1442, column: 19, scope: !3603)
!3603 = distinct !DILexicalBlock(scope: !3535, file: !116, line: 1442, column: 6)
!3604 = !DILocation(line: 1442, column: 7, scope: !3603)
!3605 = !DILocation(line: 1442, column: 27, scope: !3603)
!3606 = !DILocation(line: 1442, column: 43, scope: !3603)
!3607 = !DILocation(line: 1442, column: 31, scope: !3603)
!3608 = !DILocation(line: 1442, column: 50, scope: !3603)
!3609 = !DILocation(line: 1442, column: 66, scope: !3603)
!3610 = !DILocation(line: 1442, column: 95, scope: !3603)
!3611 = !DILocation(line: 1442, column: 80, scope: !3603)
!3612 = !DILocation(line: 1442, column: 6, scope: !3535)
!3613 = !DILocation(line: 1444, column: 83, scope: !3614)
!3614 = distinct !DILexicalBlock(scope: !3603, file: !116, line: 1442, column: 116)
!3615 = !DILocation(line: 1444, column: 25, scope: !3614)
!3616 = !DILocation(line: 1444, column: 39, scope: !3614)
!3617 = !DILocation(line: 1444, column: 4, scope: !3614)
!3618 = !DILocation(line: 1444, column: 46, scope: !3614)
!3619 = !DILocation(line: 1446, column: 129, scope: !3614)
!3620 = !DILocation(line: 1446, column: 135, scope: !3614)
!3621 = !DILocation(line: 1446, column: 108, scope: !3614)
!3622 = !DILocation(line: 1446, column: 151, scope: !3614)
!3623 = !DILocation(line: 1446, column: 182, scope: !3614)
!3624 = !DILocation(line: 1447, column: 28, scope: !3614)
!3625 = !DILocation(line: 1446, column: 51, scope: !3614)
!3626 = !DILocation(line: 1446, column: 25, scope: !3614)
!3627 = !DILocation(line: 1446, column: 39, scope: !3614)
!3628 = !DILocation(line: 1446, column: 4, scope: !3614)
!3629 = !DILocation(line: 1446, column: 49, scope: !3614)
!3630 = !DILocation(line: 1449, column: 19, scope: !3631)
!3631 = distinct !DILexicalBlock(scope: !3614, file: !116, line: 1449, column: 7)
!3632 = !DILocation(line: 1449, column: 7, scope: !3631)
!3633 = !DILocation(line: 1449, column: 7, scope: !3614)
!3634 = !DILocation(line: 1451, column: 86, scope: !3635)
!3635 = distinct !DILexicalBlock(scope: !3631, file: !116, line: 1449, column: 28)
!3636 = !DILocation(line: 1451, column: 26, scope: !3635)
!3637 = !DILocation(line: 1451, column: 40, scope: !3635)
!3638 = !DILocation(line: 1451, column: 45, scope: !3635)
!3639 = !DILocation(line: 1451, column: 5, scope: !3635)
!3640 = !DILocation(line: 1451, column: 49, scope: !3635)
!3641 = !DILocation(line: 1453, column: 132, scope: !3635)
!3642 = !DILocation(line: 1453, column: 138, scope: !3635)
!3643 = !DILocation(line: 1453, column: 111, scope: !3635)
!3644 = !DILocation(line: 1453, column: 142, scope: !3635)
!3645 = !DILocation(line: 1453, column: 183, scope: !3635)
!3646 = !DILocation(line: 1454, column: 29, scope: !3635)
!3647 = !DILocation(line: 1453, column: 54, scope: !3635)
!3648 = !DILocation(line: 1453, column: 26, scope: !3635)
!3649 = !DILocation(line: 1453, column: 40, scope: !3635)
!3650 = !DILocation(line: 1453, column: 45, scope: !3635)
!3651 = !DILocation(line: 1453, column: 5, scope: !3635)
!3652 = !DILocation(line: 1453, column: 52, scope: !3635)
!3653 = !DILocation(line: 1455, column: 4, scope: !3635)
!3654 = !DILocation(line: 1456, column: 3, scope: !3614)
!3655 = !DILocation(line: 1457, column: 25, scope: !3656)
!3656 = distinct !DILexicalBlock(scope: !3603, file: !116, line: 1456, column: 10)
!3657 = !DILocation(line: 1457, column: 39, scope: !3656)
!3658 = !DILocation(line: 1457, column: 4, scope: !3656)
!3659 = !DILocation(line: 1457, column: 46, scope: !3656)
!3660 = !DILocation(line: 1458, column: 19, scope: !3661)
!3661 = distinct !DILexicalBlock(scope: !3656, file: !116, line: 1458, column: 7)
!3662 = !DILocation(line: 1458, column: 7, scope: !3661)
!3663 = !DILocation(line: 1458, column: 7, scope: !3656)
!3664 = !DILocation(line: 1459, column: 26, scope: !3661)
!3665 = !DILocation(line: 1459, column: 40, scope: !3661)
!3666 = !DILocation(line: 1459, column: 45, scope: !3661)
!3667 = !DILocation(line: 1459, column: 5, scope: !3661)
!3668 = !DILocation(line: 1459, column: 49, scope: !3661)
!3669 = !DILocation(line: 1461, column: 2, scope: !3535)
!3670 = !DILocation(line: 1418, column: 49, scope: !3530)
!3671 = !DILocation(line: 1418, column: 2, scope: !3530)
!3672 = distinct !{!3672, !3533, !3673, !1607}
!3673 = !DILocation(line: 1461, column: 2, scope: !3527)
!3674 = !DILocation(line: 1462, column: 1, scope: !3470)
!3675 = distinct !DISubprogram(name: "setup_tcp_listener_servers", scope: !116, file: !116, line: 1464, type: !3676, scopeLine: 1465, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !1286)
!3676 = !DISubroutineType(types: !3677)
!3677 = !{null, !120, !526}
!3678 = !DILocalVariable(name: "e", arg: 1, scope: !3675, file: !116, line: 1464, type: !120)
!3679 = !DILocation(line: 1464, column: 58, scope: !3675)
!3680 = !DILocalVariable(name: "relay_server", arg: 2, scope: !3675, file: !116, line: 1464, type: !526)
!3681 = !DILocation(line: 1464, column: 82, scope: !3675)
!3682 = !DILocalVariable(name: "i", scope: !3675, file: !116, line: 1466, type: !176)
!3683 = !DILocation(line: 1466, column: 9, scope: !3675)
!3684 = !DILocalVariable(name: "tcp_services", scope: !3675, file: !116, line: 1468, type: !1027)
!3685 = !DILocation(line: 1468, column: 35, scope: !3675)
!3686 = !DILocation(line: 1468, column: 84, scope: !3675)
!3687 = !DILocalVariable(name: "tls_services", scope: !3675, file: !116, line: 1469, type: !1027)
!3688 = !DILocation(line: 1469, column: 35, scope: !3675)
!3689 = !DILocation(line: 1469, column: 84, scope: !3675)
!3690 = !DILocalVariable(name: "aux_tcp_services", scope: !3675, file: !116, line: 1471, type: !1027)
!3691 = !DILocation(line: 1471, column: 35, scope: !3675)
!3692 = !DILocation(line: 1471, column: 88, scope: !3675)
!3693 = !DILocation(line: 1476, column: 18, scope: !3694)
!3694 = distinct !DILexicalBlock(scope: !3675, file: !116, line: 1476, column: 5)
!3695 = !DILocation(line: 1476, column: 6, scope: !3694)
!3696 = !DILocation(line: 1476, column: 32, scope: !3694)
!3697 = !DILocation(line: 1476, column: 49, scope: !3694)
!3698 = !DILocation(line: 1476, column: 37, scope: !3694)
!3699 = !DILocation(line: 1476, column: 56, scope: !3694)
!3700 = !DILocation(line: 1476, column: 72, scope: !3694)
!3701 = !DILocation(line: 1476, column: 60, scope: !3694)
!3702 = !DILocation(line: 1476, column: 5, scope: !3675)
!3703 = !DILocation(line: 1478, column: 8, scope: !3704)
!3704 = distinct !DILexicalBlock(scope: !3705, file: !116, line: 1478, column: 3)
!3705 = distinct !DILexicalBlock(scope: !3694, file: !116, line: 1476, column: 81)
!3706 = !DILocation(line: 1478, column: 7, scope: !3704)
!3707 = !DILocation(line: 1478, column: 12, scope: !3708)
!3708 = distinct !DILexicalBlock(scope: !3704, file: !116, line: 1478, column: 3)
!3709 = !DILocation(line: 1478, column: 43, scope: !3708)
!3710 = !DILocation(line: 1478, column: 13, scope: !3708)
!3711 = !DILocation(line: 1478, column: 3, scope: !3704)
!3712 = !DILocalVariable(name: "addr", scope: !3713, file: !116, line: 1480, type: !231)
!3713 = distinct !DILexicalBlock(scope: !3708, file: !116, line: 1478, column: 54)
!3714 = !DILocation(line: 1480, column: 13, scope: !3713)
!3715 = !DILocalVariable(name: "saddr", scope: !3713, file: !116, line: 1481, type: !1836)
!3716 = !DILocation(line: 1481, column: 9, scope: !3713)
!3717 = !DILocation(line: 1482, column: 49, scope: !3713)
!3718 = !DILocation(line: 1482, column: 55, scope: !3713)
!3719 = !DILocation(line: 1482, column: 20, scope: !3713)
!3720 = !DILocation(line: 1482, column: 4, scope: !3713)
!3721 = !DILocalVariable(name: "port", scope: !3713, file: !116, line: 1483, type: !31)
!3722 = !DILocation(line: 1483, column: 8, scope: !3713)
!3723 = !DILocation(line: 1483, column: 20, scope: !3713)
!3724 = !DILocation(line: 1484, column: 43, scope: !3713)
!3725 = !DILocation(line: 1484, column: 4, scope: !3713)
!3726 = !DILocation(line: 1486, column: 82, scope: !3713)
!3727 = !DILocation(line: 1486, column: 89, scope: !3713)
!3728 = !DILocation(line: 1486, column: 107, scope: !3713)
!3729 = !DILocation(line: 1486, column: 116, scope: !3713)
!3730 = !DILocation(line: 1486, column: 149, scope: !3713)
!3731 = !DILocation(line: 1486, column: 26, scope: !3713)
!3732 = !DILocation(line: 1486, column: 4, scope: !3713)
!3733 = !DILocation(line: 1486, column: 21, scope: !3713)
!3734 = !DILocation(line: 1486, column: 24, scope: !3713)
!3735 = !DILocation(line: 1487, column: 3, scope: !3713)
!3736 = !DILocation(line: 1478, column: 50, scope: !3708)
!3737 = !DILocation(line: 1478, column: 3, scope: !3708)
!3738 = distinct !{!3738, !3711, !3739, !1607}
!3739 = !DILocation(line: 1487, column: 3, scope: !3704)
!3740 = !DILocation(line: 1488, column: 2, scope: !3705)
!3741 = !DILocation(line: 1491, column: 7, scope: !3742)
!3742 = distinct !DILexicalBlock(scope: !3675, file: !116, line: 1491, column: 2)
!3743 = !DILocation(line: 1491, column: 6, scope: !3742)
!3744 = !DILocation(line: 1491, column: 11, scope: !3745)
!3745 = distinct !DILexicalBlock(scope: !3742, file: !116, line: 1491, column: 2)
!3746 = !DILocation(line: 1491, column: 34, scope: !3745)
!3747 = !DILocation(line: 1491, column: 12, scope: !3745)
!3748 = !DILocation(line: 1491, column: 2, scope: !3742)
!3749 = !DILocalVariable(name: "index", scope: !3750, file: !116, line: 1493, type: !31)
!3750 = distinct !DILexicalBlock(scope: !3745, file: !116, line: 1491, column: 53)
!3751 = !DILocation(line: 1493, column: 7, scope: !3750)
!3752 = !DILocation(line: 1493, column: 27, scope: !3750)
!3753 = !DILocation(line: 1493, column: 15, scope: !3750)
!3754 = !DILocation(line: 1493, column: 37, scope: !3750)
!3755 = !DILocation(line: 1493, column: 38, scope: !3750)
!3756 = !DILocation(line: 1493, column: 43, scope: !3750)
!3757 = !DILocation(line: 1496, column: 19, scope: !3758)
!3758 = distinct !DILexicalBlock(scope: !3750, file: !116, line: 1496, column: 6)
!3759 = !DILocation(line: 1496, column: 7, scope: !3758)
!3760 = !DILocation(line: 1496, column: 6, scope: !3750)
!3761 = !DILocation(line: 1497, column: 103, scope: !3762)
!3762 = distinct !DILexicalBlock(scope: !3758, file: !116, line: 1496, column: 27)
!3763 = !DILocation(line: 1497, column: 109, scope: !3762)
!3764 = !DILocation(line: 1497, column: 82, scope: !3762)
!3765 = !DILocation(line: 1497, column: 125, scope: !3762)
!3766 = !DILocation(line: 1497, column: 113, scope: !3762)
!3767 = !DILocation(line: 1497, column: 151, scope: !3762)
!3768 = !DILocation(line: 1497, column: 178, scope: !3762)
!3769 = !DILocation(line: 1497, column: 205, scope: !3762)
!3770 = !DILocation(line: 1497, column: 214, scope: !3762)
!3771 = !DILocation(line: 1497, column: 247, scope: !3762)
!3772 = !DILocation(line: 1497, column: 26, scope: !3762)
!3773 = !DILocation(line: 1497, column: 4, scope: !3762)
!3774 = !DILocation(line: 1497, column: 17, scope: !3762)
!3775 = !DILocation(line: 1497, column: 24, scope: !3762)
!3776 = !DILocation(line: 1498, column: 19, scope: !3777)
!3777 = distinct !DILexicalBlock(scope: !3762, file: !116, line: 1498, column: 7)
!3778 = !DILocation(line: 1498, column: 7, scope: !3777)
!3779 = !DILocation(line: 1498, column: 7, scope: !3762)
!3780 = !DILocation(line: 1499, column: 41, scope: !3777)
!3781 = !DILocation(line: 1499, column: 29, scope: !3777)
!3782 = !DILocation(line: 1499, column: 137, scope: !3777)
!3783 = !DILocation(line: 1499, column: 143, scope: !3777)
!3784 = !DILocation(line: 1499, column: 116, scope: !3777)
!3785 = !DILocation(line: 1499, column: 147, scope: !3777)
!3786 = !DILocation(line: 1499, column: 184, scope: !3777)
!3787 = !DILocation(line: 1499, column: 193, scope: !3777)
!3788 = !DILocation(line: 1499, column: 226, scope: !3777)
!3789 = !DILocation(line: 1499, column: 60, scope: !3777)
!3790 = !DILocation(line: 1499, column: 5, scope: !3777)
!3791 = !DILocation(line: 1499, column: 18, scope: !3777)
!3792 = !DILocation(line: 1499, column: 23, scope: !3777)
!3793 = !DILocation(line: 1499, column: 27, scope: !3777)
!3794 = !DILocation(line: 1500, column: 3, scope: !3762)
!3795 = !DILocation(line: 1501, column: 4, scope: !3796)
!3796 = distinct !DILexicalBlock(scope: !3758, file: !116, line: 1500, column: 10)
!3797 = !DILocation(line: 1501, column: 17, scope: !3796)
!3798 = !DILocation(line: 1501, column: 24, scope: !3796)
!3799 = !DILocation(line: 1502, column: 19, scope: !3800)
!3800 = distinct !DILexicalBlock(scope: !3796, file: !116, line: 1502, column: 7)
!3801 = !DILocation(line: 1502, column: 7, scope: !3800)
!3802 = !DILocation(line: 1502, column: 7, scope: !3796)
!3803 = !DILocation(line: 1503, column: 5, scope: !3800)
!3804 = !DILocation(line: 1503, column: 18, scope: !3800)
!3805 = !DILocation(line: 1503, column: 23, scope: !3800)
!3806 = !DILocation(line: 1503, column: 27, scope: !3800)
!3807 = !DILocation(line: 1505, column: 19, scope: !3808)
!3808 = distinct !DILexicalBlock(scope: !3750, file: !116, line: 1505, column: 6)
!3809 = !DILocation(line: 1505, column: 7, scope: !3808)
!3810 = !DILocation(line: 1505, column: 26, scope: !3808)
!3811 = !DILocation(line: 1505, column: 42, scope: !3808)
!3812 = !DILocation(line: 1505, column: 30, scope: !3808)
!3813 = !DILocation(line: 1505, column: 56, scope: !3808)
!3814 = !DILocation(line: 1505, column: 72, scope: !3808)
!3815 = !DILocation(line: 1505, column: 60, scope: !3808)
!3816 = !DILocation(line: 1505, column: 79, scope: !3808)
!3817 = !DILocation(line: 1505, column: 95, scope: !3808)
!3818 = !DILocation(line: 1505, column: 124, scope: !3808)
!3819 = !DILocation(line: 1505, column: 109, scope: !3808)
!3820 = !DILocation(line: 1505, column: 6, scope: !3750)
!3821 = !DILocation(line: 1506, column: 103, scope: !3822)
!3822 = distinct !DILexicalBlock(scope: !3808, file: !116, line: 1505, column: 145)
!3823 = !DILocation(line: 1506, column: 109, scope: !3822)
!3824 = !DILocation(line: 1506, column: 82, scope: !3822)
!3825 = !DILocation(line: 1506, column: 125, scope: !3822)
!3826 = !DILocation(line: 1506, column: 156, scope: !3822)
!3827 = !DILocation(line: 1506, column: 165, scope: !3822)
!3828 = !DILocation(line: 1506, column: 198, scope: !3822)
!3829 = !DILocation(line: 1506, column: 26, scope: !3822)
!3830 = !DILocation(line: 1506, column: 4, scope: !3822)
!3831 = !DILocation(line: 1506, column: 17, scope: !3822)
!3832 = !DILocation(line: 1506, column: 24, scope: !3822)
!3833 = !DILocation(line: 1507, column: 19, scope: !3834)
!3834 = distinct !DILexicalBlock(scope: !3822, file: !116, line: 1507, column: 7)
!3835 = !DILocation(line: 1507, column: 7, scope: !3834)
!3836 = !DILocation(line: 1507, column: 7, scope: !3822)
!3837 = !DILocation(line: 1508, column: 106, scope: !3834)
!3838 = !DILocation(line: 1508, column: 112, scope: !3834)
!3839 = !DILocation(line: 1508, column: 85, scope: !3834)
!3840 = !DILocation(line: 1508, column: 116, scope: !3834)
!3841 = !DILocation(line: 1508, column: 157, scope: !3834)
!3842 = !DILocation(line: 1508, column: 166, scope: !3834)
!3843 = !DILocation(line: 1508, column: 199, scope: !3834)
!3844 = !DILocation(line: 1508, column: 29, scope: !3834)
!3845 = !DILocation(line: 1508, column: 5, scope: !3834)
!3846 = !DILocation(line: 1508, column: 18, scope: !3834)
!3847 = !DILocation(line: 1508, column: 23, scope: !3834)
!3848 = !DILocation(line: 1508, column: 27, scope: !3834)
!3849 = !DILocation(line: 1509, column: 3, scope: !3822)
!3850 = !DILocation(line: 1510, column: 4, scope: !3851)
!3851 = distinct !DILexicalBlock(scope: !3808, file: !116, line: 1509, column: 10)
!3852 = !DILocation(line: 1510, column: 17, scope: !3851)
!3853 = !DILocation(line: 1510, column: 24, scope: !3851)
!3854 = !DILocation(line: 1511, column: 19, scope: !3855)
!3855 = distinct !DILexicalBlock(scope: !3851, file: !116, line: 1511, column: 7)
!3856 = !DILocation(line: 1511, column: 7, scope: !3855)
!3857 = !DILocation(line: 1511, column: 7, scope: !3851)
!3858 = !DILocation(line: 1512, column: 5, scope: !3855)
!3859 = !DILocation(line: 1512, column: 18, scope: !3855)
!3860 = !DILocation(line: 1512, column: 23, scope: !3855)
!3861 = !DILocation(line: 1512, column: 27, scope: !3855)
!3862 = !DILocation(line: 1514, column: 2, scope: !3750)
!3863 = !DILocation(line: 1491, column: 49, scope: !3745)
!3864 = !DILocation(line: 1491, column: 2, scope: !3745)
!3865 = distinct !{!3865, !3748, !3866, !1607}
!3866 = !DILocation(line: 1514, column: 2, scope: !3742)
!3867 = !DILocation(line: 1515, column: 1, scope: !3675)
!3868 = distinct !DISubprogram(name: "setup_auth_server", scope: !116, file: !116, line: 1800, type: !3869, scopeLine: 1801, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !1286)
!3869 = !DISubroutineType(types: !3870)
!3870 = !{null, !1032}
!3871 = !DILocalVariable(name: "as", arg: 1, scope: !3868, file: !116, line: 1800, type: !1032)
!3872 = !DILocation(line: 1800, column: 51, scope: !3868)
!3873 = !DILocalVariable(name: "attr", scope: !3868, file: !116, line: 1802, type: !3874)
!3874 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_attr_t", file: !321, line: 62, baseType: !3875)
!3875 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "pthread_attr_t", file: !321, line: 56, size: 448, elements: !3876)
!3876 = !{!3877, !3881}
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !3875, file: !321, line: 58, baseType: !3878, size: 448)
!3878 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 448, elements: !3879)
!3879 = !{!3880}
!3880 = !DISubrange(count: 56)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !3875, file: !321, line: 59, baseType: !219, size: 64)
!3882 = !DILocation(line: 1802, column: 17, scope: !3868)
!3883 = !DILocation(line: 1803, column: 5, scope: !3884)
!3884 = distinct !DILexicalBlock(scope: !3868, file: !116, line: 1803, column: 5)
!3885 = !DILocation(line: 1803, column: 30, scope: !3884)
!3886 = !DILocation(line: 1804, column: 5, scope: !3884)
!3887 = !DILocation(line: 1804, column: 65, scope: !3884)
!3888 = !DILocation(line: 1805, column: 22, scope: !3884)
!3889 = !DILocation(line: 1805, column: 26, scope: !3884)
!3890 = !DILocation(line: 1805, column: 63, scope: !3884)
!3891 = !DILocation(line: 1805, column: 5, scope: !3884)
!3892 = !DILocation(line: 1803, column: 5, scope: !3868)
!3893 = !DILocation(line: 1806, column: 3, scope: !3894)
!3894 = distinct !DILexicalBlock(scope: !3884, file: !116, line: 1805, column: 68)
!3895 = !DILocation(line: 1807, column: 3, scope: !3894)
!3896 = !DILocation(line: 1809, column: 1, scope: !3868)
!3897 = distinct !DISubprogram(name: "setup_admin_server", scope: !116, file: !116, line: 1826, type: !2234, scopeLine: 1827, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !1286)
!3898 = !DILocation(line: 1828, column: 2, scope: !3897)
!3899 = !DILocation(line: 1829, column: 24, scope: !3897)
!3900 = !DILocation(line: 1830, column: 36, scope: !3897)
!3901 = !DILocation(line: 1830, column: 22, scope: !3897)
!3902 = !DILocation(line: 1832, column: 5, scope: !3903)
!3903 = distinct !DILexicalBlock(scope: !3897, file: !116, line: 1832, column: 5)
!3904 = !DILocation(line: 1832, column: 5, scope: !3897)
!3905 = !DILocation(line: 1833, column: 3, scope: !3906)
!3906 = distinct !DILexicalBlock(scope: !3903, file: !116, line: 1832, column: 86)
!3907 = !DILocation(line: 1834, column: 3, scope: !3906)
!3908 = !DILocation(line: 1837, column: 29, scope: !3897)
!3909 = !DILocation(line: 1837, column: 2, scope: !3897)
!3910 = !DILocation(line: 1838, column: 1, scope: !3897)
!3911 = distinct !DISubprogram(name: "barrier_wait_func", scope: !116, file: !116, line: 76, type: !3912, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !1286)
!3912 = !DISubroutineType(types: !3913)
!3913 = !{null, !424, !31}
!3914 = !DILocalVariable(name: "func", arg: 1, scope: !3911, file: !116, line: 76, type: !424)
!3915 = !DILocation(line: 76, column: 43, scope: !3911)
!3916 = !DILocalVariable(name: "line", arg: 2, scope: !3911, file: !116, line: 76, type: !31)
!3917 = !DILocation(line: 76, column: 53, scope: !3911)
!3918 = !DILocalVariable(name: "br", scope: !3911, file: !116, line: 79, type: !31)
!3919 = !DILocation(line: 79, column: 6, scope: !3911)
!3920 = !DILocation(line: 80, column: 2, scope: !3911)
!3921 = !DILocation(line: 81, column: 8, scope: !3922)
!3922 = distinct !DILexicalBlock(scope: !3911, file: !116, line: 80, column: 5)
!3923 = !DILocation(line: 81, column: 6, scope: !3922)
!3924 = !DILocation(line: 82, column: 8, scope: !3925)
!3925 = distinct !DILexicalBlock(scope: !3922, file: !116, line: 82, column: 7)
!3926 = !DILocation(line: 82, column: 11, scope: !3925)
!3927 = !DILocation(line: 82, column: 15, scope: !3925)
!3928 = !DILocation(line: 82, column: 18, scope: !3925)
!3929 = !DILocation(line: 82, column: 21, scope: !3925)
!3930 = !DILocation(line: 82, column: 7, scope: !3922)
!3931 = !DILocalVariable(name: "err", scope: !3932, file: !116, line: 83, type: !31)
!3932 = distinct !DILexicalBlock(scope: !3925, file: !116, line: 82, column: 56)
!3933 = !DILocation(line: 83, column: 8, scope: !3932)
!3934 = !DILocation(line: 83, column: 14, scope: !3932)
!3935 = !DILocation(line: 84, column: 4, scope: !3932)
!3936 = !DILocation(line: 85, column: 43, scope: !3932)
!3937 = !DILocation(line: 85, column: 48, scope: !3932)
!3938 = !DILocation(line: 85, column: 53, scope: !3932)
!3939 = !DILocation(line: 85, column: 4, scope: !3932)
!3940 = !DILocation(line: 86, column: 3, scope: !3932)
!3941 = !DILocation(line: 87, column: 2, scope: !3922)
!3942 = !DILocation(line: 87, column: 13, scope: !3911)
!3943 = !DILocation(line: 87, column: 16, scope: !3911)
!3944 = !DILocation(line: 87, column: 20, scope: !3911)
!3945 = !DILocation(line: 87, column: 23, scope: !3911)
!3946 = !DILocation(line: 87, column: 26, scope: !3911)
!3947 = !DILocation(line: 87, column: 61, scope: !3911)
!3948 = !DILocation(line: 87, column: 65, scope: !3911)
!3949 = !DILocation(line: 87, column: 71, scope: !3911)
!3950 = !DILocation(line: 0, scope: !3911)
!3951 = distinct !{!3951, !3920, !3952, !1607}
!3952 = !DILocation(line: 87, column: 80, scope: !3911)
!3953 = !DILocation(line: 93, column: 1, scope: !3911)
!3954 = distinct !DISubprogram(name: "init_listener", scope: !116, file: !116, line: 1911, type: !2234, scopeLine: 1912, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !1286)
!3955 = !DILocation(line: 1913, column: 2, scope: !3954)
!3956 = !DILocation(line: 1914, column: 1, scope: !3954)
!3957 = distinct !DISubprogram(name: "listener_receive_message", scope: !116, file: !116, line: 927, type: !3958, scopeLine: 928, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !1286)
!3958 = !DISubroutineType(types: !3959)
!3959 = !{null, !379, !202}
!3960 = !DILocalVariable(name: "bev", arg: 1, scope: !3957, file: !116, line: 927, type: !379)
!3961 = !DILocation(line: 927, column: 58, scope: !3957)
!3962 = !DILocalVariable(name: "ptr", arg: 2, scope: !3957, file: !116, line: 927, type: !202)
!3963 = !DILocation(line: 927, column: 69, scope: !3957)
!3964 = !DILocation(line: 929, column: 2, scope: !3957)
!3965 = !DILocation(line: 929, column: 2, scope: !3966)
!3966 = distinct !DILexicalBlock(scope: !3957, file: !116, line: 929, column: 2)
!3967 = !DILocalVariable(name: "mm", scope: !3957, file: !116, line: 931, type: !3968)
!3968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "message_to_listener", file: !6, line: 137, size: 576, elements: !3969)
!3969 = !{!3970, !3972}
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "t", scope: !3968, file: !6, line: 138, baseType: !3971, size: 32)
!3971 = !DIDerivedType(tag: DW_TAG_typedef, name: "MESSAGE_TO_LISTENER_TYPE", file: !6, line: 135, baseType: !104)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !3968, file: !6, line: 141, baseType: !3973, size: 512, offset: 64)
!3973 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3968, file: !6, line: 139, size: 512, elements: !3974)
!3974 = !{!3975}
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "tc", scope: !3973, file: !6, line: 140, baseType: !3976, size: 512)
!3976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "message_to_listener_to_client", file: !6, line: 125, size: 512, elements: !3977)
!3977 = !{!3978, !3979, !3980}
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !3976, file: !6, line: 126, baseType: !231, size: 224)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "destination", scope: !3976, file: !6, line: 127, baseType: !231, size: 224, offset: 224)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "nbh", scope: !3976, file: !6, line: 128, baseType: !579, size: 64, offset: 448)
!3981 = !DILocation(line: 931, column: 29, scope: !3957)
!3982 = !DILocalVariable(name: "n", scope: !3957, file: !116, line: 932, type: !31)
!3983 = !DILocation(line: 932, column: 6, scope: !3957)
!3984 = !DILocalVariable(name: "input", scope: !3957, file: !116, line: 933, type: !2003)
!3985 = !DILocation(line: 933, column: 19, scope: !3957)
!3986 = !DILocation(line: 933, column: 49, scope: !3957)
!3987 = !DILocation(line: 933, column: 27, scope: !3957)
!3988 = !DILocation(line: 935, column: 2, scope: !3957)
!3989 = !DILocation(line: 935, column: 30, scope: !3957)
!3990 = !DILocation(line: 935, column: 14, scope: !3957)
!3991 = !DILocation(line: 935, column: 12, scope: !3957)
!3992 = !DILocation(line: 935, column: 79, scope: !3957)
!3993 = !DILocation(line: 936, column: 7, scope: !3994)
!3994 = distinct !DILexicalBlock(scope: !3995, file: !116, line: 936, column: 7)
!3995 = distinct !DILexicalBlock(scope: !3957, file: !116, line: 935, column: 84)
!3996 = !DILocation(line: 936, column: 9, scope: !3994)
!3997 = !DILocation(line: 936, column: 7, scope: !3995)
!3998 = !DILocation(line: 937, column: 4, scope: !3999)
!3999 = distinct !DILexicalBlock(scope: !3994, file: !116, line: 936, column: 48)
!4000 = !DILocation(line: 938, column: 4, scope: !3999)
!4001 = distinct !{!4001, !3988, !4002, !1607}
!4002 = !DILocation(line: 1006, column: 2, scope: !3957)
!4003 = !DILocation(line: 941, column: 10, scope: !4004)
!4004 = distinct !DILexicalBlock(scope: !3995, file: !116, line: 941, column: 7)
!4005 = !DILocation(line: 941, column: 12, scope: !4004)
!4006 = !DILocation(line: 941, column: 7, scope: !3995)
!4007 = !DILocation(line: 942, column: 4, scope: !4008)
!4008 = distinct !DILexicalBlock(scope: !4004, file: !116, line: 941, column: 30)
!4009 = !DILocation(line: 943, column: 4, scope: !4008)
!4010 = !DILocalVariable(name: "relay_thread_index", scope: !3995, file: !116, line: 946, type: !176)
!4011 = !DILocation(line: 946, column: 10, scope: !3995)
!4012 = !DILocation(line: 948, column: 18, scope: !4013)
!4013 = distinct !DILexicalBlock(scope: !3995, file: !116, line: 948, column: 6)
!4014 = !DILocation(line: 948, column: 37, scope: !4013)
!4015 = !DILocation(line: 948, column: 6, scope: !3995)
!4016 = !DILocalVariable(name: "ri", scope: !4017, file: !116, line: 949, type: !176)
!4017 = distinct !DILexicalBlock(scope: !4013, file: !116, line: 948, column: 67)
!4018 = !DILocation(line: 949, column: 11, scope: !4017)
!4019 = !DILocation(line: 950, column: 10, scope: !4020)
!4020 = distinct !DILexicalBlock(scope: !4017, file: !116, line: 950, column: 4)
!4021 = !DILocation(line: 950, column: 8, scope: !4020)
!4022 = !DILocation(line: 950, column: 13, scope: !4023)
!4023 = distinct !DILexicalBlock(scope: !4020, file: !116, line: 950, column: 4)
!4024 = !DILocation(line: 950, column: 16, scope: !4023)
!4025 = !DILocation(line: 950, column: 15, scope: !4023)
!4026 = !DILocation(line: 950, column: 4, scope: !4020)
!4027 = !DILocation(line: 951, column: 32, scope: !4028)
!4028 = distinct !DILexicalBlock(scope: !4029, file: !116, line: 951, column: 8)
!4029 = distinct !DILexicalBlock(scope: !4023, file: !116, line: 950, column: 62)
!4030 = !DILocation(line: 951, column: 10, scope: !4028)
!4031 = !DILocation(line: 951, column: 9, scope: !4028)
!4032 = !DILocation(line: 951, column: 8, scope: !4029)
!4033 = !DILocation(line: 955, column: 36, scope: !4034)
!4034 = distinct !DILexicalBlock(scope: !4028, file: !116, line: 951, column: 38)
!4035 = !DILocation(line: 955, column: 31, scope: !4034)
!4036 = !DILocation(line: 955, column: 44, scope: !4034)
!4037 = !DILocation(line: 952, column: 6, scope: !4034)
!4038 = !DILocation(line: 956, column: 5, scope: !4034)
!4039 = !DILocation(line: 956, column: 37, scope: !4040)
!4040 = distinct !DILexicalBlock(scope: !4028, file: !116, line: 956, column: 15)
!4041 = !DILocation(line: 956, column: 15, scope: !4040)
!4042 = !DILocation(line: 956, column: 42, scope: !4040)
!4043 = !DILocation(line: 956, column: 49, scope: !4040)
!4044 = !DILocation(line: 956, column: 46, scope: !4040)
!4045 = !DILocation(line: 956, column: 15, scope: !4028)
!4046 = !DILocation(line: 957, column: 25, scope: !4047)
!4047 = distinct !DILexicalBlock(scope: !4040, file: !116, line: 956, column: 65)
!4048 = !DILocation(line: 957, column: 24, scope: !4047)
!4049 = !DILocation(line: 958, column: 6, scope: !4047)
!4050 = !DILocation(line: 960, column: 4, scope: !4029)
!4051 = !DILocation(line: 950, column: 58, scope: !4023)
!4052 = !DILocation(line: 950, column: 4, scope: !4023)
!4053 = distinct !{!4053, !4026, !4054, !1607}
!4054 = !DILocation(line: 960, column: 4, scope: !4020)
!4055 = !DILocation(line: 961, column: 3, scope: !4017)
!4056 = !DILocalVariable(name: "i", scope: !3995, file: !116, line: 963, type: !176)
!4057 = !DILocation(line: 963, column: 10, scope: !3995)
!4058 = !DILocalVariable(name: "found", scope: !3995, file: !116, line: 964, type: !31)
!4059 = !DILocation(line: 964, column: 7, scope: !3995)
!4060 = !DILocation(line: 965, column: 8, scope: !4061)
!4061 = distinct !DILexicalBlock(scope: !3995, file: !116, line: 965, column: 3)
!4062 = !DILocation(line: 965, column: 7, scope: !4061)
!4063 = !DILocation(line: 965, column: 11, scope: !4064)
!4064 = distinct !DILexicalBlock(scope: !4061, file: !116, line: 965, column: 3)
!4065 = !DILocation(line: 965, column: 34, scope: !4064)
!4066 = !DILocation(line: 965, column: 12, scope: !4064)
!4067 = !DILocation(line: 965, column: 3, scope: !4061)
!4068 = !DILocation(line: 966, column: 44, scope: !4069)
!4069 = distinct !DILexicalBlock(scope: !4070, file: !116, line: 966, column: 7)
!4070 = distinct !DILexicalBlock(scope: !4064, file: !116, line: 965, column: 52)
!4071 = !DILocation(line: 966, column: 53, scope: !4069)
!4072 = !DILocation(line: 966, column: 23, scope: !4069)
!4073 = !DILocation(line: 966, column: 60, scope: !4069)
!4074 = !DILocation(line: 966, column: 65, scope: !4069)
!4075 = !DILocation(line: 966, column: 7, scope: !4069)
!4076 = !DILocation(line: 966, column: 7, scope: !4070)
!4077 = !DILocalVariable(name: "o_port", scope: !4078, file: !116, line: 967, type: !31)
!4078 = distinct !DILexicalBlock(scope: !4069, file: !116, line: 966, column: 74)
!4079 = !DILocation(line: 967, column: 9, scope: !4078)
!4080 = !DILocation(line: 967, column: 36, scope: !4078)
!4081 = !DILocation(line: 967, column: 41, scope: !4078)
!4082 = !DILocation(line: 967, column: 18, scope: !4078)
!4083 = !DILocation(line: 968, column: 29, scope: !4084)
!4084 = distinct !DILexicalBlock(scope: !4078, file: !116, line: 968, column: 8)
!4085 = !DILocation(line: 968, column: 66, scope: !4084)
!4086 = !DILocation(line: 968, column: 42, scope: !4084)
!4087 = !DILocation(line: 968, column: 8, scope: !4078)
!4088 = !DILocation(line: 969, column: 9, scope: !4089)
!4089 = distinct !DILexicalBlock(scope: !4090, file: !116, line: 969, column: 9)
!4090 = distinct !DILexicalBlock(scope: !4084, file: !116, line: 968, column: 83)
!4091 = !DILocation(line: 969, column: 31, scope: !4089)
!4092 = !DILocation(line: 969, column: 16, scope: !4089)
!4093 = !DILocation(line: 969, column: 9, scope: !4090)
!4094 = !DILocation(line: 970, column: 31, scope: !4095)
!4095 = distinct !DILexicalBlock(scope: !4096, file: !116, line: 970, column: 10)
!4096 = distinct !DILexicalBlock(scope: !4089, file: !116, line: 969, column: 46)
!4097 = !DILocation(line: 970, column: 10, scope: !4095)
!4098 = !DILocation(line: 970, column: 44, scope: !4095)
!4099 = !DILocation(line: 970, column: 68, scope: !4095)
!4100 = !DILocation(line: 970, column: 81, scope: !4095)
!4101 = !DILocation(line: 970, column: 47, scope: !4095)
!4102 = !DILocation(line: 970, column: 84, scope: !4095)
!4103 = !DILocation(line: 970, column: 108, scope: !4095)
!4104 = !DILocation(line: 970, column: 121, scope: !4095)
!4105 = !DILocation(line: 970, column: 87, scope: !4095)
!4106 = !DILocation(line: 970, column: 124, scope: !4095)
!4107 = !DILocation(line: 970, column: 10, scope: !4096)
!4108 = !DILocation(line: 971, column: 14, scope: !4109)
!4109 = distinct !DILexicalBlock(scope: !4095, file: !116, line: 970, column: 145)
!4110 = !DILocation(line: 972, column: 46, scope: !4109)
!4111 = !DILocation(line: 972, column: 59, scope: !4109)
!4112 = !DILocation(line: 972, column: 25, scope: !4109)
!4113 = !DILocation(line: 972, column: 62, scope: !4109)
!4114 = !DILocation(line: 972, column: 86, scope: !4109)
!4115 = !DILocation(line: 972, column: 91, scope: !4109)
!4116 = !DILocation(line: 972, column: 100, scope: !4109)
!4117 = !DILocation(line: 972, column: 105, scope: !4109)
!4118 = !DILocation(line: 972, column: 8, scope: !4109)
!4119 = !DILocation(line: 973, column: 7, scope: !4109)
!4120 = !DILocation(line: 974, column: 6, scope: !4096)
!4121 = !DILocation(line: 975, column: 88, scope: !4122)
!4122 = distinct !DILexicalBlock(scope: !4089, file: !116, line: 974, column: 13)
!4123 = !DILocation(line: 975, column: 7, scope: !4122)
!4124 = !DILocation(line: 977, column: 5, scope: !4090)
!4125 = !DILocation(line: 977, column: 37, scope: !4126)
!4126 = distinct !DILexicalBlock(scope: !4084, file: !116, line: 977, column: 15)
!4127 = !DILocation(line: 977, column: 50, scope: !4126)
!4128 = !DILocation(line: 977, column: 79, scope: !4126)
!4129 = !DILocation(line: 977, column: 55, scope: !4126)
!4130 = !DILocation(line: 977, column: 15, scope: !4084)
!4131 = !DILocation(line: 978, column: 9, scope: !4132)
!4132 = distinct !DILexicalBlock(scope: !4133, file: !116, line: 978, column: 9)
!4133 = distinct !DILexicalBlock(scope: !4126, file: !116, line: 977, column: 96)
!4134 = !DILocation(line: 978, column: 31, scope: !4132)
!4135 = !DILocation(line: 978, column: 16, scope: !4132)
!4136 = !DILocation(line: 978, column: 9, scope: !4133)
!4137 = !DILocation(line: 979, column: 31, scope: !4138)
!4138 = distinct !DILexicalBlock(scope: !4139, file: !116, line: 979, column: 10)
!4139 = distinct !DILexicalBlock(scope: !4132, file: !116, line: 978, column: 46)
!4140 = !DILocation(line: 979, column: 10, scope: !4138)
!4141 = !DILocation(line: 979, column: 44, scope: !4138)
!4142 = !DILocation(line: 979, column: 68, scope: !4138)
!4143 = !DILocation(line: 979, column: 81, scope: !4138)
!4144 = !DILocation(line: 979, column: 82, scope: !4138)
!4145 = !DILocation(line: 979, column: 47, scope: !4138)
!4146 = !DILocation(line: 979, column: 86, scope: !4138)
!4147 = !DILocation(line: 979, column: 110, scope: !4138)
!4148 = !DILocation(line: 979, column: 123, scope: !4138)
!4149 = !DILocation(line: 979, column: 124, scope: !4138)
!4150 = !DILocation(line: 979, column: 89, scope: !4138)
!4151 = !DILocation(line: 979, column: 128, scope: !4138)
!4152 = !DILocation(line: 979, column: 10, scope: !4139)
!4153 = !DILocation(line: 980, column: 14, scope: !4154)
!4154 = distinct !DILexicalBlock(scope: !4138, file: !116, line: 979, column: 149)
!4155 = !DILocation(line: 981, column: 46, scope: !4154)
!4156 = !DILocation(line: 981, column: 59, scope: !4154)
!4157 = !DILocation(line: 981, column: 60, scope: !4154)
!4158 = !DILocation(line: 981, column: 25, scope: !4154)
!4159 = !DILocation(line: 981, column: 64, scope: !4154)
!4160 = !DILocation(line: 981, column: 88, scope: !4154)
!4161 = !DILocation(line: 981, column: 93, scope: !4154)
!4162 = !DILocation(line: 981, column: 102, scope: !4154)
!4163 = !DILocation(line: 981, column: 107, scope: !4154)
!4164 = !DILocation(line: 981, column: 8, scope: !4154)
!4165 = !DILocation(line: 982, column: 7, scope: !4154)
!4166 = !DILocation(line: 983, column: 6, scope: !4139)
!4167 = !DILocation(line: 983, column: 16, scope: !4168)
!4168 = distinct !DILexicalBlock(scope: !4132, file: !116, line: 983, column: 16)
!4169 = !DILocation(line: 983, column: 26, scope: !4168)
!4170 = !DILocation(line: 983, column: 23, scope: !4168)
!4171 = !DILocation(line: 983, column: 16, scope: !4132)
!4172 = !DILocation(line: 984, column: 31, scope: !4173)
!4173 = distinct !DILexicalBlock(scope: !4174, file: !116, line: 984, column: 10)
!4174 = distinct !DILexicalBlock(scope: !4168, file: !116, line: 983, column: 51)
!4175 = !DILocation(line: 984, column: 10, scope: !4173)
!4176 = !DILocation(line: 984, column: 44, scope: !4173)
!4177 = !DILocation(line: 984, column: 68, scope: !4173)
!4178 = !DILocation(line: 984, column: 81, scope: !4173)
!4179 = !DILocation(line: 984, column: 82, scope: !4173)
!4180 = !DILocation(line: 984, column: 84, scope: !4173)
!4181 = !DILocation(line: 984, column: 47, scope: !4173)
!4182 = !DILocation(line: 984, column: 88, scope: !4173)
!4183 = !DILocation(line: 984, column: 112, scope: !4173)
!4184 = !DILocation(line: 984, column: 125, scope: !4173)
!4185 = !DILocation(line: 984, column: 126, scope: !4173)
!4186 = !DILocation(line: 984, column: 128, scope: !4173)
!4187 = !DILocation(line: 984, column: 91, scope: !4173)
!4188 = !DILocation(line: 984, column: 132, scope: !4173)
!4189 = !DILocation(line: 984, column: 10, scope: !4174)
!4190 = !DILocation(line: 985, column: 14, scope: !4191)
!4191 = distinct !DILexicalBlock(scope: !4173, file: !116, line: 984, column: 153)
!4192 = !DILocation(line: 986, column: 46, scope: !4191)
!4193 = !DILocation(line: 986, column: 59, scope: !4191)
!4194 = !DILocation(line: 986, column: 60, scope: !4191)
!4195 = !DILocation(line: 986, column: 62, scope: !4191)
!4196 = !DILocation(line: 986, column: 25, scope: !4191)
!4197 = !DILocation(line: 986, column: 66, scope: !4191)
!4198 = !DILocation(line: 986, column: 90, scope: !4191)
!4199 = !DILocation(line: 986, column: 95, scope: !4191)
!4200 = !DILocation(line: 986, column: 104, scope: !4191)
!4201 = !DILocation(line: 986, column: 109, scope: !4191)
!4202 = !DILocation(line: 986, column: 8, scope: !4191)
!4203 = !DILocation(line: 987, column: 7, scope: !4191)
!4204 = !DILocation(line: 988, column: 6, scope: !4174)
!4205 = !DILocation(line: 989, column: 88, scope: !4206)
!4206 = distinct !DILexicalBlock(scope: !4168, file: !116, line: 988, column: 13)
!4207 = !DILocation(line: 989, column: 7, scope: !4206)
!4208 = !DILocation(line: 991, column: 5, scope: !4133)
!4209 = !DILocation(line: 992, column: 6, scope: !4210)
!4210 = distinct !DILexicalBlock(scope: !4126, file: !116, line: 991, column: 12)
!4211 = !DILocation(line: 994, column: 5, scope: !4078)
!4212 = !DILocation(line: 996, column: 3, scope: !4070)
!4213 = !DILocation(line: 965, column: 48, scope: !4064)
!4214 = !DILocation(line: 965, column: 3, scope: !4064)
!4215 = distinct !{!4215, !4067, !4216, !1607}
!4216 = !DILocation(line: 996, column: 3, scope: !4061)
!4217 = !DILocation(line: 998, column: 7, scope: !4218)
!4218 = distinct !DILexicalBlock(scope: !3995, file: !116, line: 998, column: 6)
!4219 = !DILocation(line: 998, column: 6, scope: !3995)
!4220 = !DILocalVariable(name: "saddr", scope: !4221, file: !116, line: 999, type: !4222)
!4221 = distinct !DILexicalBlock(scope: !4218, file: !116, line: 998, column: 14)
!4222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 1032, elements: !1837)
!4223 = !DILocation(line: 999, column: 12, scope: !4221)
!4224 = !DILocation(line: 1000, column: 23, scope: !4221)
!4225 = !DILocation(line: 1000, column: 28, scope: !4221)
!4226 = !DILocation(line: 1000, column: 36, scope: !4221)
!4227 = !DILocation(line: 1000, column: 4, scope: !4221)
!4228 = !DILocation(line: 1001, column: 88, scope: !4221)
!4229 = !DILocation(line: 1001, column: 4, scope: !4221)
!4230 = !DILocation(line: 1002, column: 3, scope: !4221)
!4231 = !DILocation(line: 1004, column: 50, scope: !3995)
!4232 = !DILocation(line: 1004, column: 62, scope: !3995)
!4233 = !DILocation(line: 1004, column: 67, scope: !3995)
!4234 = !DILocation(line: 1004, column: 3, scope: !3995)
!4235 = !DILocation(line: 1005, column: 7, scope: !3995)
!4236 = !DILocation(line: 1005, column: 12, scope: !3995)
!4237 = !DILocation(line: 1005, column: 16, scope: !3995)
!4238 = !DILocation(line: 1007, column: 1, scope: !3957)
!4239 = distinct !DISubprogram(name: "get_alt_listener_port", scope: !6, file: !6, line: 347, type: !4240, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !1286)
!4240 = !DISubroutineType(types: !4241)
!4241 = !{!31}
!4242 = !DILocation(line: 348, column: 17, scope: !4243)
!4243 = distinct !DILexicalBlock(scope: !4239, file: !6, line: 348, column: 5)
!4244 = !DILocation(line: 348, column: 34, scope: !4243)
!4245 = !DILocation(line: 348, column: 5, scope: !4239)
!4246 = !DILocation(line: 349, column: 22, scope: !4243)
!4247 = !DILocation(line: 349, column: 36, scope: !4243)
!4248 = !DILocation(line: 349, column: 3, scope: !4243)
!4249 = !DILocation(line: 350, column: 21, scope: !4239)
!4250 = !DILocation(line: 350, column: 2, scope: !4239)
!4251 = !DILocation(line: 351, column: 1, scope: !4239)
!4252 = distinct !DISubprogram(name: "setup_relay_server", scope: !116, file: !116, line: 1613, type: !4253, scopeLine: 1614, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !1286)
!4253 = !DISubroutineType(types: !4254)
!4254 = !{null, !526, !120, !31}
!4255 = !DILocalVariable(name: "rs", arg: 1, scope: !4252, file: !116, line: 1613, type: !526)
!4256 = !DILocation(line: 1613, column: 53, scope: !4252)
!4257 = !DILocalVariable(name: "e", arg: 2, scope: !4252, file: !116, line: 1613, type: !120)
!4258 = !DILocation(line: 1613, column: 75, scope: !4252)
!4259 = !DILocalVariable(name: "to_set_rfc5780", arg: 3, scope: !4252, file: !116, line: 1613, type: !31)
!4260 = !DILocation(line: 1613, column: 82, scope: !4252)
!4261 = !DILocalVariable(name: "pair", scope: !4252, file: !116, line: 1615, type: !2403)
!4262 = !DILocation(line: 1615, column: 22, scope: !4252)
!4263 = !DILocation(line: 1617, column: 5, scope: !4264)
!4264 = distinct !DILexicalBlock(scope: !4252, file: !116, line: 1617, column: 5)
!4265 = !DILocation(line: 1617, column: 5, scope: !4252)
!4266 = !DILocation(line: 1618, column: 20, scope: !4267)
!4267 = distinct !DILexicalBlock(scope: !4264, file: !116, line: 1617, column: 8)
!4268 = !DILocation(line: 1618, column: 23, scope: !4267)
!4269 = !DILocation(line: 1618, column: 3, scope: !4267)
!4270 = !DILocation(line: 1618, column: 7, scope: !4267)
!4271 = !DILocation(line: 1618, column: 18, scope: !4267)
!4272 = !DILocation(line: 1619, column: 17, scope: !4267)
!4273 = !DILocation(line: 1619, column: 3, scope: !4267)
!4274 = !DILocation(line: 1619, column: 7, scope: !4267)
!4275 = !DILocation(line: 1619, column: 15, scope: !4267)
!4276 = !DILocation(line: 1620, column: 2, scope: !4267)
!4277 = !DILocation(line: 1621, column: 20, scope: !4278)
!4278 = distinct !DILexicalBlock(scope: !4264, file: !116, line: 1620, column: 9)
!4279 = !DILocation(line: 1621, column: 3, scope: !4278)
!4280 = !DILocation(line: 1621, column: 7, scope: !4278)
!4281 = !DILocation(line: 1621, column: 18, scope: !4278)
!4282 = !DILocation(line: 1622, column: 100, scope: !4278)
!4283 = !DILocation(line: 1622, column: 104, scope: !4278)
!4284 = !DILocation(line: 1622, column: 78, scope: !4278)
!4285 = !DILocation(line: 1622, column: 3, scope: !4278)
!4286 = !DILocation(line: 1623, column: 35, scope: !4278)
!4287 = !DILocation(line: 1623, column: 39, scope: !4278)
!4288 = !DILocation(line: 1623, column: 43, scope: !4278)
!4289 = !DILocation(line: 1623, column: 47, scope: !4278)
!4290 = !DILocation(line: 1623, column: 80, scope: !4278)
!4291 = !DILocation(line: 1624, column: 16, scope: !4278)
!4292 = !DILocation(line: 1624, column: 43, scope: !4278)
!4293 = !DILocation(line: 1624, column: 68, scope: !4278)
!4294 = !DILocation(line: 1624, column: 96, scope: !4278)
!4295 = !DILocation(line: 1623, column: 17, scope: !4278)
!4296 = !DILocation(line: 1623, column: 3, scope: !4278)
!4297 = !DILocation(line: 1623, column: 7, scope: !4278)
!4298 = !DILocation(line: 1623, column: 15, scope: !4278)
!4299 = !DILocation(line: 1629, column: 15, scope: !4278)
!4300 = !DILocation(line: 1629, column: 19, scope: !4278)
!4301 = !DILocation(line: 1629, column: 3, scope: !4278)
!4302 = !DILocation(line: 1630, column: 27, scope: !4278)
!4303 = !DILocation(line: 1630, column: 31, scope: !4278)
!4304 = !DILocation(line: 1630, column: 61, scope: !4278)
!4305 = !DILocation(line: 1630, column: 3, scope: !4278)
!4306 = !DILocation(line: 1633, column: 23, scope: !4252)
!4307 = !DILocation(line: 1633, column: 27, scope: !4252)
!4308 = !DILocation(line: 1633, column: 66, scope: !4252)
!4309 = !DILocation(line: 1633, column: 2, scope: !4252)
!4310 = !DILocation(line: 1634, column: 15, scope: !4252)
!4311 = !DILocation(line: 1634, column: 2, scope: !4252)
!4312 = !DILocation(line: 1634, column: 6, scope: !4252)
!4313 = !DILocation(line: 1634, column: 13, scope: !4252)
!4314 = !DILocation(line: 1635, column: 16, scope: !4252)
!4315 = !DILocation(line: 1635, column: 2, scope: !4252)
!4316 = !DILocation(line: 1635, column: 6, scope: !4252)
!4317 = !DILocation(line: 1635, column: 14, scope: !4252)
!4318 = !DILocation(line: 1636, column: 20, scope: !4252)
!4319 = !DILocation(line: 1636, column: 24, scope: !4252)
!4320 = !DILocation(line: 1636, column: 67, scope: !4252)
!4321 = !DILocation(line: 1636, column: 2, scope: !4252)
!4322 = !DILocation(line: 1637, column: 21, scope: !4252)
!4323 = !DILocation(line: 1637, column: 25, scope: !4252)
!4324 = !DILocation(line: 1637, column: 2, scope: !4252)
!4325 = !DILocation(line: 1639, column: 23, scope: !4252)
!4326 = !DILocation(line: 1639, column: 27, scope: !4252)
!4327 = !DILocation(line: 1639, column: 66, scope: !4252)
!4328 = !DILocation(line: 1639, column: 2, scope: !4252)
!4329 = !DILocation(line: 1640, column: 20, scope: !4252)
!4330 = !DILocation(line: 1640, column: 2, scope: !4252)
!4331 = !DILocation(line: 1640, column: 6, scope: !4252)
!4332 = !DILocation(line: 1640, column: 18, scope: !4252)
!4333 = !DILocation(line: 1641, column: 21, scope: !4252)
!4334 = !DILocation(line: 1641, column: 2, scope: !4252)
!4335 = !DILocation(line: 1641, column: 6, scope: !4252)
!4336 = !DILocation(line: 1641, column: 19, scope: !4252)
!4337 = !DILocation(line: 1642, column: 20, scope: !4252)
!4338 = !DILocation(line: 1642, column: 24, scope: !4252)
!4339 = !DILocation(line: 1642, column: 77, scope: !4252)
!4340 = !DILocation(line: 1642, column: 2, scope: !4252)
!4341 = !DILocation(line: 1643, column: 21, scope: !4252)
!4342 = !DILocation(line: 1643, column: 25, scope: !4252)
!4343 = !DILocation(line: 1643, column: 2, scope: !4252)
!4344 = !DILocation(line: 1645, column: 21, scope: !4252)
!4345 = !DILocation(line: 1645, column: 25, scope: !4252)
!4346 = !DILocation(line: 1646, column: 5, scope: !4252)
!4347 = !DILocation(line: 1646, column: 9, scope: !4252)
!4348 = !DILocation(line: 1646, column: 25, scope: !4252)
!4349 = !DILocation(line: 1647, column: 5, scope: !4252)
!4350 = !DILocation(line: 1647, column: 9, scope: !4252)
!4351 = !DILocation(line: 1647, column: 30, scope: !4252)
!4352 = !DILocation(line: 1648, column: 17, scope: !4252)
!4353 = !DILocation(line: 1652, column: 17, scope: !4252)
!4354 = !DILocation(line: 1667, column: 17, scope: !4252)
!4355 = !DILocation(line: 1672, column: 17, scope: !4252)
!4356 = !DILocation(line: 1676, column: 17, scope: !4252)
!4357 = !DILocation(line: 1679, column: 17, scope: !4252)
!4358 = !DILocation(line: 1645, column: 2, scope: !4252)
!4359 = !DILocation(line: 1682, column: 5, scope: !4360)
!4360 = distinct !DILexicalBlock(scope: !4252, file: !116, line: 1682, column: 5)
!4361 = !DILocation(line: 1682, column: 5, scope: !4252)
!4362 = !DILocation(line: 1683, column: 17, scope: !4363)
!4363 = distinct !DILexicalBlock(scope: !4360, file: !116, line: 1682, column: 21)
!4364 = !DILocation(line: 1683, column: 21, scope: !4363)
!4365 = !DILocation(line: 1683, column: 3, scope: !4363)
!4366 = !DILocation(line: 1684, column: 2, scope: !4363)
!4367 = !DILocation(line: 1686, column: 17, scope: !4368)
!4368 = distinct !DILexicalBlock(scope: !4252, file: !116, line: 1686, column: 5)
!4369 = !DILocation(line: 1686, column: 36, scope: !4368)
!4370 = !DILocation(line: 1686, column: 5, scope: !4252)
!4371 = !DILocation(line: 1687, column: 30, scope: !4372)
!4372 = distinct !DILexicalBlock(scope: !4368, file: !116, line: 1686, column: 66)
!4373 = !DILocation(line: 1687, column: 34, scope: !4372)
!4374 = !DILocation(line: 1687, column: 43, scope: !4372)
!4375 = !DILocation(line: 1687, column: 3, scope: !4372)
!4376 = !DILocation(line: 1688, column: 2, scope: !4372)
!4377 = !DILocation(line: 1689, column: 1, scope: !4252)
!4378 = !DILocalVariable(name: "arg", arg: 1, scope: !1283, file: !116, line: 1691, type: !202)
!4379 = !DILocation(line: 1691, column: 45, scope: !1283)
!4380 = !DILocalVariable(name: "rs", scope: !1283, file: !116, line: 1694, type: !526)
!4381 = !DILocation(line: 1694, column: 24, scope: !1283)
!4382 = !DILocation(line: 1694, column: 52, scope: !1283)
!4383 = !DILocalVariable(name: "udp_reuses_the_same_relay_server", scope: !1283, file: !116, line: 1696, type: !31)
!4384 = !DILocation(line: 1696, column: 7, scope: !1283)
!4385 = !DILocation(line: 1696, column: 55, scope: !1283)
!4386 = !DILocation(line: 1696, column: 43, scope: !1283)
!4387 = !DILocation(line: 1696, column: 83, scope: !1283)
!4388 = !DILocation(line: 1696, column: 88, scope: !1283)
!4389 = !DILocation(line: 1696, column: 104, scope: !1283)
!4390 = !DILocation(line: 1696, column: 123, scope: !1283)
!4391 = !DILocation(line: 1696, column: 153, scope: !1283)
!4392 = !DILocation(line: 1696, column: 169, scope: !1283)
!4393 = !DILocation(line: 1696, column: 188, scope: !1283)
!4394 = !DILocalVariable(name: "we_need_rfc5780", scope: !1283, file: !116, line: 1698, type: !31)
!4395 = !DILocation(line: 1698, column: 7, scope: !1283)
!4396 = !DILocation(line: 1698, column: 25, scope: !1283)
!4397 = !DILocation(line: 1698, column: 58, scope: !1283)
!4398 = !DILocation(line: 1698, column: 73, scope: !1283)
!4399 = !DILocation(line: 0, scope: !1283)
!4400 = !DILocation(line: 1700, column: 3, scope: !1283)
!4401 = !DILocation(line: 1702, column: 22, scope: !1283)
!4402 = !DILocation(line: 1702, column: 32, scope: !1283)
!4403 = !DILocation(line: 1702, column: 3, scope: !1283)
!4404 = !DILocation(line: 1704, column: 3, scope: !1283)
!4405 = !DILocation(line: 1706, column: 3, scope: !1283)
!4406 = !DILocation(line: 1706, column: 9, scope: !1283)
!4407 = !DILocation(line: 1707, column: 16, scope: !4408)
!4408 = distinct !DILexicalBlock(scope: !1283, file: !116, line: 1706, column: 22)
!4409 = !DILocation(line: 1707, column: 20, scope: !4408)
!4410 = !DILocation(line: 1707, column: 32, scope: !4408)
!4411 = !DILocation(line: 1707, column: 36, scope: !4408)
!4412 = !DILocation(line: 1707, column: 5, scope: !4408)
!4413 = distinct !{!4413, !4405, !4414, !1607}
!4414 = !DILocation(line: 1708, column: 3, scope: !1283)
!4415 = !DILocation(line: 1710, column: 10, scope: !1283)
!4416 = !DILocation(line: 1710, column: 3, scope: !1283)
!4417 = distinct !DISubprogram(name: "relay_receive_message", scope: !116, file: !116, line: 872, type: !3958, scopeLine: 873, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !1286)
!4418 = !DILocalVariable(name: "bev", arg: 1, scope: !4417, file: !116, line: 872, type: !379)
!4419 = !DILocation(line: 872, column: 55, scope: !4417)
!4420 = !DILocalVariable(name: "ptr", arg: 2, scope: !4417, file: !116, line: 872, type: !202)
!4421 = !DILocation(line: 872, column: 66, scope: !4417)
!4422 = !DILocalVariable(name: "sm", scope: !4417, file: !116, line: 874, type: !2029)
!4423 = !DILocation(line: 874, column: 26, scope: !4417)
!4424 = !DILocalVariable(name: "n", scope: !4417, file: !116, line: 875, type: !31)
!4425 = !DILocation(line: 875, column: 6, scope: !4417)
!4426 = !DILocalVariable(name: "input", scope: !4417, file: !116, line: 876, type: !2003)
!4427 = !DILocation(line: 876, column: 19, scope: !4417)
!4428 = !DILocation(line: 876, column: 49, scope: !4417)
!4429 = !DILocation(line: 876, column: 27, scope: !4417)
!4430 = !DILocalVariable(name: "rs", scope: !4417, file: !116, line: 877, type: !526)
!4431 = !DILocation(line: 877, column: 23, scope: !4417)
!4432 = !DILocation(line: 877, column: 51, scope: !4417)
!4433 = !DILocation(line: 879, column: 2, scope: !4417)
!4434 = !DILocation(line: 879, column: 30, scope: !4417)
!4435 = !DILocation(line: 879, column: 14, scope: !4417)
!4436 = !DILocation(line: 879, column: 12, scope: !4417)
!4437 = !DILocation(line: 879, column: 76, scope: !4417)
!4438 = !DILocation(line: 881, column: 7, scope: !4439)
!4439 = distinct !DILexicalBlock(scope: !4440, file: !116, line: 881, column: 7)
!4440 = distinct !DILexicalBlock(scope: !4417, file: !116, line: 879, column: 81)
!4441 = !DILocation(line: 881, column: 9, scope: !4439)
!4442 = !DILocation(line: 881, column: 7, scope: !4440)
!4443 = !DILocation(line: 882, column: 4, scope: !4444)
!4444 = distinct !DILexicalBlock(scope: !4439, file: !116, line: 881, column: 45)
!4445 = !DILocation(line: 883, column: 4, scope: !4444)
!4446 = distinct !{!4446, !4433, !4447, !1607}
!4447 = !DILocation(line: 887, column: 2, scope: !4417)
!4448 = !DILocation(line: 886, column: 24, scope: !4440)
!4449 = !DILocation(line: 886, column: 3, scope: !4440)
!4450 = !DILocation(line: 888, column: 1, scope: !4417)
!4451 = distinct !DISubprogram(name: "relay_receive_auth_message", scope: !116, file: !116, line: 890, type: !3958, scopeLine: 891, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !1286)
!4452 = !DILocalVariable(name: "bev", arg: 1, scope: !4451, file: !116, line: 890, type: !379)
!4453 = !DILocation(line: 890, column: 60, scope: !4451)
!4454 = !DILocalVariable(name: "ptr", arg: 2, scope: !4451, file: !116, line: 890, type: !202)
!4455 = !DILocation(line: 890, column: 71, scope: !4451)
!4456 = !DILocalVariable(name: "am", scope: !4451, file: !116, line: 892, type: !1966)
!4457 = !DILocation(line: 892, column: 22, scope: !4451)
!4458 = !DILocalVariable(name: "n", scope: !4451, file: !116, line: 893, type: !31)
!4459 = !DILocation(line: 893, column: 6, scope: !4451)
!4460 = !DILocalVariable(name: "input", scope: !4451, file: !116, line: 894, type: !2003)
!4461 = !DILocation(line: 894, column: 19, scope: !4451)
!4462 = !DILocation(line: 894, column: 49, scope: !4451)
!4463 = !DILocation(line: 894, column: 27, scope: !4451)
!4464 = !DILocalVariable(name: "rs", scope: !4451, file: !116, line: 895, type: !526)
!4465 = !DILocation(line: 895, column: 23, scope: !4451)
!4466 = !DILocation(line: 895, column: 51, scope: !4451)
!4467 = !DILocation(line: 897, column: 2, scope: !4451)
!4468 = !DILocation(line: 897, column: 30, scope: !4451)
!4469 = !DILocation(line: 897, column: 14, scope: !4451)
!4470 = !DILocation(line: 897, column: 12, scope: !4451)
!4471 = !DILocation(line: 897, column: 72, scope: !4451)
!4472 = !DILocation(line: 899, column: 7, scope: !4473)
!4473 = distinct !DILexicalBlock(scope: !4474, file: !116, line: 899, column: 7)
!4474 = distinct !DILexicalBlock(scope: !4451, file: !116, line: 897, column: 77)
!4475 = !DILocation(line: 899, column: 9, scope: !4473)
!4476 = !DILocation(line: 899, column: 7, scope: !4474)
!4477 = !DILocation(line: 900, column: 4, scope: !4478)
!4478 = distinct !DILexicalBlock(scope: !4473, file: !116, line: 899, column: 41)
!4479 = !DILocation(line: 901, column: 4, scope: !4478)
!4480 = distinct !{!4480, !4467, !4481, !1607}
!4481 = !DILocation(line: 905, column: 2, scope: !4451)
!4482 = !DILocation(line: 904, column: 29, scope: !4474)
!4483 = !DILocation(line: 904, column: 3, scope: !4474)
!4484 = !DILocation(line: 906, column: 1, scope: !4451)
!4485 = distinct !DISubprogram(name: "send_socket_to_relay", scope: !116, file: !116, line: 563, type: !998, scopeLine: 566, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !1286)
!4486 = !DILocalVariable(name: "id", arg: 1, scope: !4485, file: !116, line: 563, type: !437)
!4487 = !DILocation(line: 563, column: 47, scope: !4485)
!4488 = !DILocalVariable(name: "cid", arg: 2, scope: !4485, file: !116, line: 563, type: !545)
!4489 = !DILocation(line: 563, column: 60, scope: !4485)
!4490 = !DILocalVariable(name: "tid", arg: 3, scope: !4485, file: !116, line: 563, type: !1000)
!4491 = !DILocation(line: 563, column: 75, scope: !4485)
!4492 = !DILocalVariable(name: "s", arg: 4, scope: !4485, file: !116, line: 563, type: !594)
!4493 = !DILocation(line: 563, column: 98, scope: !4485)
!4494 = !DILocalVariable(name: "message_integrity", arg: 5, scope: !4485, file: !116, line: 564, type: !31)
!4495 = !DILocation(line: 564, column: 9, scope: !4485)
!4496 = !DILocalVariable(name: "rmt", arg: 6, scope: !4485, file: !116, line: 564, type: !1001)
!4497 = !DILocation(line: 564, column: 50, scope: !4485)
!4498 = !DILocalVariable(name: "nd", arg: 7, scope: !4485, file: !116, line: 564, type: !652)
!4499 = !DILocation(line: 564, column: 69, scope: !4485)
!4500 = !DILocalVariable(name: "can_resume", arg: 8, scope: !4485, file: !116, line: 565, type: !31)
!4501 = !DILocation(line: 565, column: 9, scope: !4485)
!4502 = !DILocalVariable(name: "ret", scope: !4485, file: !116, line: 567, type: !31)
!4503 = !DILocation(line: 567, column: 6, scope: !4485)
!4504 = !DILocalVariable(name: "sm", scope: !4485, file: !116, line: 569, type: !2029)
!4505 = !DILocation(line: 569, column: 26, scope: !4485)
!4506 = !DILocation(line: 570, column: 2, scope: !4485)
!4507 = !DILocation(line: 571, column: 9, scope: !4485)
!4508 = !DILocation(line: 571, column: 5, scope: !4485)
!4509 = !DILocation(line: 571, column: 7, scope: !4485)
!4510 = !DILocalVariable(name: "s_to_delete", scope: !4485, file: !116, line: 573, type: !594)
!4511 = !DILocation(line: 573, column: 20, scope: !4485)
!4512 = !DILocation(line: 573, column: 34, scope: !4485)
!4513 = !DILocalVariable(name: "rs", scope: !4485, file: !116, line: 575, type: !526)
!4514 = !DILocation(line: 575, column: 23, scope: !4485)
!4515 = !DILocation(line: 576, column: 5, scope: !4516)
!4516 = distinct !DILexicalBlock(scope: !4485, file: !116, line: 576, column: 5)
!4517 = !DILocation(line: 576, column: 7, scope: !4516)
!4518 = !DILocation(line: 576, column: 5, scope: !4485)
!4519 = !DILocalVariable(name: "dest", scope: !4520, file: !116, line: 577, type: !176)
!4520 = distinct !DILexicalBlock(scope: !4516, file: !116, line: 576, column: 53)
!4521 = !DILocation(line: 577, column: 10, scope: !4520)
!4522 = !DILocation(line: 577, column: 17, scope: !4520)
!4523 = !DILocation(line: 577, column: 19, scope: !4520)
!4524 = !DILocation(line: 578, column: 6, scope: !4525)
!4525 = distinct !DILexicalBlock(scope: !4520, file: !116, line: 578, column: 6)
!4526 = !DILocation(line: 578, column: 14, scope: !4525)
!4527 = !DILocation(line: 578, column: 11, scope: !4525)
!4528 = !DILocation(line: 578, column: 6, scope: !4520)
!4529 = !DILocation(line: 582, column: 24, scope: !4530)
!4530 = distinct !DILexicalBlock(scope: !4525, file: !116, line: 578, column: 51)
!4531 = !DILocation(line: 582, column: 19, scope: !4530)
!4532 = !DILocation(line: 582, column: 34, scope: !4530)
!4533 = !DILocation(line: 582, column: 44, scope: !4530)
!4534 = !DILocation(line: 579, column: 4, scope: !4530)
!4535 = !DILocation(line: 583, column: 4, scope: !4530)
!4536 = !DILocation(line: 585, column: 26, scope: !4520)
!4537 = !DILocation(line: 585, column: 8, scope: !4520)
!4538 = !DILocation(line: 585, column: 6, scope: !4520)
!4539 = !DILocation(line: 586, column: 7, scope: !4540)
!4540 = distinct !DILexicalBlock(scope: !4520, file: !116, line: 586, column: 6)
!4541 = !DILocation(line: 586, column: 6, scope: !4520)
!4542 = !DILocation(line: 590, column: 24, scope: !4543)
!4543 = distinct !DILexicalBlock(scope: !4540, file: !116, line: 586, column: 11)
!4544 = !DILocation(line: 590, column: 19, scope: !4543)
!4545 = !DILocation(line: 590, column: 34, scope: !4543)
!4546 = !DILocation(line: 590, column: 44, scope: !4543)
!4547 = !DILocation(line: 587, column: 4, scope: !4543)
!4548 = !DILocation(line: 591, column: 4, scope: !4543)
!4549 = !DILocation(line: 593, column: 2, scope: !4520)
!4550 = !DILocalVariable(name: "dest", scope: !4551, file: !116, line: 594, type: !176)
!4551 = distinct !DILexicalBlock(scope: !4516, file: !116, line: 593, column: 9)
!4552 = !DILocation(line: 594, column: 10, scope: !4551)
!4553 = !DILocation(line: 594, column: 17, scope: !4551)
!4554 = !DILocation(line: 595, column: 6, scope: !4555)
!4555 = distinct !DILexicalBlock(scope: !4551, file: !116, line: 595, column: 6)
!4556 = !DILocation(line: 595, column: 14, scope: !4555)
!4557 = !DILocation(line: 595, column: 11, scope: !4555)
!4558 = !DILocation(line: 595, column: 6, scope: !4551)
!4559 = !DILocation(line: 599, column: 24, scope: !4560)
!4560 = distinct !DILexicalBlock(scope: !4555, file: !116, line: 595, column: 55)
!4561 = !DILocation(line: 599, column: 19, scope: !4560)
!4562 = !DILocation(line: 599, column: 34, scope: !4560)
!4563 = !DILocation(line: 599, column: 44, scope: !4560)
!4564 = !DILocation(line: 596, column: 4, scope: !4560)
!4565 = !DILocation(line: 600, column: 4, scope: !4560)
!4566 = !DILocation(line: 602, column: 30, scope: !4551)
!4567 = !DILocation(line: 602, column: 8, scope: !4551)
!4568 = !DILocation(line: 602, column: 6, scope: !4551)
!4569 = !DILocation(line: 603, column: 7, scope: !4570)
!4570 = distinct !DILexicalBlock(scope: !4551, file: !116, line: 603, column: 6)
!4571 = !DILocation(line: 603, column: 6, scope: !4551)
!4572 = !DILocation(line: 607, column: 23, scope: !4573)
!4573 = distinct !DILexicalBlock(scope: !4570, file: !116, line: 603, column: 11)
!4574 = !DILocation(line: 607, column: 18, scope: !4573)
!4575 = !DILocation(line: 607, column: 33, scope: !4573)
!4576 = !DILocation(line: 607, column: 43, scope: !4573)
!4577 = !DILocation(line: 604, column: 4, scope: !4573)
!4578 = !DILocation(line: 608, column: 4, scope: !4573)
!4579 = !DILocation(line: 612, column: 10, scope: !4485)
!4580 = !DILocation(line: 612, column: 2, scope: !4485)
!4581 = !DILocation(line: 615, column: 6, scope: !4582)
!4582 = distinct !DILexicalBlock(scope: !4583, file: !116, line: 615, column: 6)
!4583 = distinct !DILexicalBlock(scope: !4584, file: !116, line: 613, column: 23)
!4584 = distinct !DILexicalBlock(scope: !4485, file: !116, line: 612, column: 15)
!4585 = !DILocation(line: 615, column: 9, scope: !4582)
!4586 = !DILocation(line: 615, column: 12, scope: !4582)
!4587 = !DILocation(line: 615, column: 16, scope: !4582)
!4588 = !DILocation(line: 615, column: 6, scope: !4583)
!4589 = !DILocation(line: 616, column: 20, scope: !4590)
!4590 = distinct !DILexicalBlock(scope: !4582, file: !116, line: 615, column: 21)
!4591 = !DILocation(line: 616, column: 7, scope: !4590)
!4592 = !DILocation(line: 616, column: 15, scope: !4590)
!4593 = !DILocation(line: 616, column: 18, scope: !4590)
!4594 = !DILocation(line: 617, column: 50, scope: !4590)
!4595 = !DILocation(line: 617, column: 31, scope: !4590)
!4596 = !DILocation(line: 617, column: 7, scope: !4590)
!4597 = !DILocation(line: 617, column: 15, scope: !4590)
!4598 = !DILocation(line: 617, column: 29, scope: !4590)
!4599 = !DILocation(line: 618, column: 22, scope: !4590)
!4600 = !DILocation(line: 618, column: 30, scope: !4590)
!4601 = !DILocation(line: 618, column: 35, scope: !4590)
!4602 = !DILocation(line: 618, column: 4, scope: !4590)
!4603 = !DILocation(line: 619, column: 19, scope: !4590)
!4604 = !DILocation(line: 619, column: 7, scope: !4590)
!4605 = !DILocation(line: 619, column: 15, scope: !4590)
!4606 = !DILocation(line: 619, column: 17, scope: !4590)
!4607 = !DILocation(line: 620, column: 35, scope: !4590)
!4608 = !DILocation(line: 620, column: 7, scope: !4590)
!4609 = !DILocation(line: 620, column: 15, scope: !4590)
!4610 = !DILocation(line: 620, column: 33, scope: !4590)
!4611 = !DILocation(line: 622, column: 18, scope: !4590)
!4612 = !DILocation(line: 622, column: 26, scope: !4590)
!4613 = !DILocation(line: 622, column: 29, scope: !4590)
!4614 = !DILocation(line: 622, column: 41, scope: !4590)
!4615 = !DILocation(line: 622, column: 45, scope: !4590)
!4616 = !DILocation(line: 622, column: 4, scope: !4590)
!4617 = !DILocation(line: 623, column: 29, scope: !4590)
!4618 = !DILocation(line: 623, column: 33, scope: !4590)
!4619 = !DILocation(line: 623, column: 7, scope: !4590)
!4620 = !DILocation(line: 623, column: 15, scope: !4590)
!4621 = !DILocation(line: 623, column: 18, scope: !4590)
!4622 = !DILocation(line: 623, column: 27, scope: !4590)
!4623 = !DILocation(line: 624, column: 29, scope: !4590)
!4624 = !DILocation(line: 624, column: 33, scope: !4590)
!4625 = !DILocation(line: 624, column: 7, scope: !4590)
!4626 = !DILocation(line: 624, column: 15, scope: !4590)
!4627 = !DILocation(line: 624, column: 18, scope: !4590)
!4628 = !DILocation(line: 624, column: 27, scope: !4590)
!4629 = !DILocation(line: 625, column: 24, scope: !4590)
!4630 = !DILocation(line: 625, column: 28, scope: !4590)
!4631 = !DILocation(line: 625, column: 7, scope: !4590)
!4632 = !DILocation(line: 625, column: 15, scope: !4590)
!4633 = !DILocation(line: 625, column: 18, scope: !4590)
!4634 = !DILocation(line: 625, column: 22, scope: !4590)
!4635 = !DILocation(line: 626, column: 28, scope: !4590)
!4636 = !DILocation(line: 626, column: 7, scope: !4590)
!4637 = !DILocation(line: 626, column: 15, scope: !4590)
!4638 = !DILocation(line: 626, column: 26, scope: !4590)
!4639 = !DILocation(line: 628, column: 4, scope: !4590)
!4640 = !DILocation(line: 628, column: 8, scope: !4590)
!4641 = !DILocation(line: 628, column: 12, scope: !4590)
!4642 = !DILocation(line: 629, column: 16, scope: !4590)
!4643 = !DILocation(line: 630, column: 8, scope: !4590)
!4644 = !DILocation(line: 631, column: 3, scope: !4590)
!4645 = !DILocation(line: 633, column: 3, scope: !4583)
!4646 = !DILocation(line: 637, column: 6, scope: !4647)
!4647 = distinct !DILexicalBlock(scope: !4648, file: !116, line: 637, column: 6)
!4648 = distinct !DILexicalBlock(scope: !4584, file: !116, line: 635, column: 28)
!4649 = !DILocation(line: 637, column: 9, scope: !4647)
!4650 = !DILocation(line: 637, column: 12, scope: !4647)
!4651 = !DILocation(line: 637, column: 16, scope: !4647)
!4652 = !DILocation(line: 637, column: 6, scope: !4648)
!4653 = !DILocation(line: 638, column: 16, scope: !4654)
!4654 = distinct !DILexicalBlock(scope: !4647, file: !116, line: 637, column: 21)
!4655 = !DILocation(line: 638, column: 7, scope: !4654)
!4656 = !DILocation(line: 638, column: 12, scope: !4654)
!4657 = !DILocation(line: 638, column: 14, scope: !4654)
!4658 = !DILocation(line: 639, column: 18, scope: !4654)
!4659 = !DILocation(line: 639, column: 23, scope: !4654)
!4660 = !DILocation(line: 639, column: 26, scope: !4654)
!4661 = !DILocation(line: 639, column: 38, scope: !4654)
!4662 = !DILocation(line: 639, column: 42, scope: !4654)
!4663 = !DILocation(line: 639, column: 4, scope: !4654)
!4664 = !DILocation(line: 640, column: 26, scope: !4654)
!4665 = !DILocation(line: 640, column: 30, scope: !4654)
!4666 = !DILocation(line: 640, column: 7, scope: !4654)
!4667 = !DILocation(line: 640, column: 12, scope: !4654)
!4668 = !DILocation(line: 640, column: 15, scope: !4654)
!4669 = !DILocation(line: 640, column: 24, scope: !4654)
!4670 = !DILocation(line: 641, column: 26, scope: !4654)
!4671 = !DILocation(line: 641, column: 30, scope: !4654)
!4672 = !DILocation(line: 641, column: 7, scope: !4654)
!4673 = !DILocation(line: 641, column: 12, scope: !4654)
!4674 = !DILocation(line: 641, column: 15, scope: !4654)
!4675 = !DILocation(line: 641, column: 24, scope: !4654)
!4676 = !DILocation(line: 642, column: 21, scope: !4654)
!4677 = !DILocation(line: 642, column: 25, scope: !4654)
!4678 = !DILocation(line: 642, column: 7, scope: !4654)
!4679 = !DILocation(line: 642, column: 12, scope: !4654)
!4680 = !DILocation(line: 642, column: 15, scope: !4654)
!4681 = !DILocation(line: 642, column: 19, scope: !4654)
!4682 = !DILocation(line: 643, column: 25, scope: !4654)
!4683 = !DILocation(line: 643, column: 7, scope: !4654)
!4684 = !DILocation(line: 643, column: 12, scope: !4654)
!4685 = !DILocation(line: 643, column: 23, scope: !4654)
!4686 = !DILocation(line: 645, column: 4, scope: !4654)
!4687 = !DILocation(line: 645, column: 8, scope: !4654)
!4688 = !DILocation(line: 645, column: 12, scope: !4654)
!4689 = !DILocation(line: 646, column: 16, scope: !4654)
!4690 = !DILocation(line: 647, column: 8, scope: !4654)
!4691 = !DILocation(line: 649, column: 3, scope: !4654)
!4692 = !DILocation(line: 650, column: 4, scope: !4693)
!4693 = distinct !DILexicalBlock(scope: !4647, file: !116, line: 649, column: 10)
!4694 = !DILocation(line: 653, column: 3, scope: !4648)
!4695 = !DILocation(line: 656, column: 89, scope: !4696)
!4696 = distinct !DILexicalBlock(scope: !4584, file: !116, line: 655, column: 11)
!4697 = !DILocation(line: 656, column: 3, scope: !4696)
!4698 = !DILocation(line: 658, column: 2, scope: !4584)
!4699 = !DILocation(line: 660, column: 5, scope: !4700)
!4700 = distinct !DILexicalBlock(scope: !4485, file: !116, line: 660, column: 5)
!4701 = !DILocation(line: 660, column: 9, scope: !4700)
!4702 = !DILocation(line: 660, column: 5, scope: !4485)
!4703 = !DILocalVariable(name: "output", scope: !4704, file: !116, line: 662, type: !2003)
!4704 = distinct !DILexicalBlock(scope: !4700, file: !116, line: 660, column: 15)
!4705 = !DILocation(line: 662, column: 20, scope: !4704)
!4706 = !DILocation(line: 662, column: 52, scope: !4704)
!4707 = !DILocation(line: 662, column: 56, scope: !4704)
!4708 = !DILocation(line: 662, column: 29, scope: !4704)
!4709 = !DILocation(line: 663, column: 6, scope: !4710)
!4710 = distinct !DILexicalBlock(scope: !4704, file: !116, line: 663, column: 6)
!4711 = !DILocation(line: 663, column: 6, scope: !4704)
!4712 = !DILocation(line: 664, column: 17, scope: !4713)
!4713 = distinct !DILexicalBlock(scope: !4710, file: !116, line: 663, column: 14)
!4714 = !DILocation(line: 664, column: 4, scope: !4713)
!4715 = !DILocation(line: 665, column: 3, scope: !4713)
!4716 = !DILocation(line: 666, column: 4, scope: !4717)
!4717 = distinct !DILexicalBlock(scope: !4710, file: !116, line: 665, column: 10)
!4718 = !DILocation(line: 670, column: 8, scope: !4717)
!4719 = !DILocation(line: 671, column: 18, scope: !4717)
!4720 = !DILocation(line: 671, column: 16, scope: !4717)
!4721 = !DILocation(line: 673, column: 2, scope: !4704)
!4722 = !DILocation(line: 660, column: 12, scope: !4700)
!4723 = !DILabel(scope: !4485, name: "err", file: !116, line: 675)
!4724 = !DILocation(line: 675, column: 2, scope: !4485)
!4725 = !DILocation(line: 677, column: 2, scope: !4485)
!4726 = !DILocation(line: 677, column: 2, scope: !4727)
!4727 = distinct !DILexicalBlock(scope: !4728, file: !116, line: 677, column: 2)
!4728 = distinct !DILexicalBlock(scope: !4485, file: !116, line: 677, column: 2)
!4729 = !DILocation(line: 677, column: 2, scope: !4728)
!4730 = !DILocation(line: 677, column: 2, scope: !4731)
!4731 = distinct !DILexicalBlock(scope: !4727, file: !116, line: 677, column: 2)
!4732 = !DILocation(line: 678, column: 5, scope: !4733)
!4733 = distinct !DILexicalBlock(scope: !4485, file: !116, line: 678, column: 5)
!4734 = !DILocation(line: 678, column: 8, scope: !4733)
!4735 = !DILocation(line: 678, column: 11, scope: !4733)
!4736 = !DILocation(line: 678, column: 15, scope: !4733)
!4737 = !DILocation(line: 678, column: 5, scope: !4485)
!4738 = !DILocation(line: 679, column: 36, scope: !4739)
!4739 = distinct !DILexicalBlock(scope: !4733, file: !116, line: 678, column: 20)
!4740 = !DILocation(line: 679, column: 40, scope: !4739)
!4741 = !DILocation(line: 679, column: 4, scope: !4739)
!4742 = !DILocation(line: 680, column: 4, scope: !4739)
!4743 = !DILocation(line: 680, column: 8, scope: !4739)
!4744 = !DILocation(line: 680, column: 12, scope: !4739)
!4745 = !DILocation(line: 681, column: 2, scope: !4739)
!4746 = !DILocation(line: 683, column: 5, scope: !4747)
!4747 = distinct !DILexicalBlock(scope: !4485, file: !116, line: 683, column: 5)
!4748 = !DILocation(line: 683, column: 8, scope: !4747)
!4749 = !DILocation(line: 683, column: 5, scope: !4485)
!4750 = !DILocation(line: 684, column: 7, scope: !4751)
!4751 = distinct !DILexicalBlock(scope: !4752, file: !116, line: 684, column: 7)
!4752 = distinct !DILexicalBlock(scope: !4747, file: !116, line: 683, column: 12)
!4753 = !DILocation(line: 684, column: 11, scope: !4751)
!4754 = !DILocation(line: 684, column: 7, scope: !4752)
!4755 = !DILocation(line: 685, column: 41, scope: !4756)
!4756 = distinct !DILexicalBlock(scope: !4751, file: !116, line: 684, column: 33)
!4757 = !DILocation(line: 685, column: 46, scope: !4756)
!4758 = !DILocation(line: 685, column: 49, scope: !4756)
!4759 = !DILocation(line: 685, column: 6, scope: !4756)
!4760 = !DILocation(line: 686, column: 9, scope: !4756)
!4761 = !DILocation(line: 686, column: 14, scope: !4756)
!4762 = !DILocation(line: 686, column: 17, scope: !4756)
!4763 = !DILocation(line: 686, column: 21, scope: !4756)
!4764 = !DILocation(line: 687, column: 4, scope: !4756)
!4765 = !DILocation(line: 687, column: 14, scope: !4766)
!4766 = distinct !DILexicalBlock(scope: !4751, file: !116, line: 687, column: 14)
!4767 = !DILocation(line: 687, column: 18, scope: !4766)
!4768 = !DILocation(line: 687, column: 14, scope: !4751)
!4769 = !DILocation(line: 688, column: 40, scope: !4770)
!4770 = distinct !DILexicalBlock(scope: !4766, file: !116, line: 687, column: 36)
!4771 = !DILocation(line: 688, column: 48, scope: !4770)
!4772 = !DILocation(line: 688, column: 51, scope: !4770)
!4773 = !DILocation(line: 688, column: 5, scope: !4770)
!4774 = !DILocation(line: 689, column: 8, scope: !4770)
!4775 = !DILocation(line: 689, column: 16, scope: !4770)
!4776 = !DILocation(line: 689, column: 19, scope: !4770)
!4777 = !DILocation(line: 689, column: 23, scope: !4770)
!4778 = !DILocation(line: 690, column: 4, scope: !4770)
!4779 = !DILocation(line: 691, column: 2, scope: !4752)
!4780 = !DILocation(line: 693, column: 9, scope: !4485)
!4781 = !DILocation(line: 693, column: 2, scope: !4485)
!4782 = distinct !DISubprogram(name: "allocate_bps", scope: !116, file: !116, line: 101, type: !1018, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !1286)
!4783 = !DILocalVariable(name: "bps", arg: 1, scope: !4782, file: !116, line: 101, type: !474)
!4784 = !DILocation(line: 101, column: 47, scope: !4782)
!4785 = !DILocalVariable(name: "positive", arg: 2, scope: !4782, file: !116, line: 101, type: !31)
!4786 = !DILocation(line: 101, column: 56, scope: !4782)
!4787 = !DILocalVariable(name: "ret", scope: !4782, file: !116, line: 103, type: !474)
!4788 = !DILocation(line: 103, column: 15, scope: !4782)
!4789 = !DILocation(line: 104, column: 5, scope: !4790)
!4790 = distinct !DILexicalBlock(scope: !4782, file: !116, line: 104, column: 5)
!4791 = !DILocation(line: 104, column: 8, scope: !4790)
!4792 = !DILocation(line: 104, column: 5, scope: !4782)
!4793 = !DILocation(line: 105, column: 3, scope: !4794)
!4794 = distinct !DILexicalBlock(scope: !4790, file: !116, line: 104, column: 12)
!4795 = !DILocation(line: 107, column: 6, scope: !4796)
!4796 = distinct !DILexicalBlock(scope: !4794, file: !116, line: 107, column: 6)
!4797 = !DILocation(line: 107, column: 6, scope: !4794)
!4798 = !DILocation(line: 109, column: 21, scope: !4799)
!4799 = distinct !DILexicalBlock(scope: !4800, file: !116, line: 109, column: 7)
!4800 = distinct !DILexicalBlock(scope: !4796, file: !116, line: 107, column: 16)
!4801 = !DILocation(line: 109, column: 8, scope: !4799)
!4802 = !DILocation(line: 109, column: 7, scope: !4800)
!4803 = !DILocation(line: 110, column: 11, scope: !4804)
!4804 = distinct !DILexicalBlock(scope: !4799, file: !116, line: 109, column: 36)
!4805 = !DILocation(line: 110, column: 9, scope: !4804)
!4806 = !DILocation(line: 111, column: 43, scope: !4804)
!4807 = !DILocation(line: 111, column: 40, scope: !4804)
!4808 = !DILocation(line: 112, column: 4, scope: !4804)
!4809 = !DILocation(line: 112, column: 26, scope: !4810)
!4810 = distinct !DILexicalBlock(scope: !4799, file: !116, line: 112, column: 14)
!4811 = !DILocation(line: 112, column: 63, scope: !4810)
!4812 = !DILocation(line: 112, column: 49, scope: !4810)
!4813 = !DILocation(line: 112, column: 14, scope: !4799)
!4814 = !DILocalVariable(name: "reserve", scope: !4815, file: !116, line: 113, type: !474)
!4815 = distinct !DILexicalBlock(scope: !4810, file: !116, line: 112, column: 77)
!4816 = !DILocation(line: 113, column: 18, scope: !4815)
!4817 = !DILocation(line: 113, column: 40, scope: !4815)
!4818 = !DILocation(line: 113, column: 67, scope: !4815)
!4819 = !DILocation(line: 113, column: 53, scope: !4815)
!4820 = !DILocation(line: 114, column: 8, scope: !4821)
!4821 = distinct !DILexicalBlock(scope: !4815, file: !116, line: 114, column: 8)
!4822 = !DILocation(line: 114, column: 19, scope: !4821)
!4823 = !DILocation(line: 114, column: 16, scope: !4821)
!4824 = !DILocation(line: 114, column: 8, scope: !4815)
!4825 = !DILocation(line: 115, column: 12, scope: !4826)
!4826 = distinct !DILexicalBlock(scope: !4821, file: !116, line: 114, column: 24)
!4827 = !DILocation(line: 115, column: 10, scope: !4826)
!4828 = !DILocation(line: 116, column: 55, scope: !4826)
!4829 = !DILocation(line: 116, column: 41, scope: !4826)
!4830 = !DILocation(line: 117, column: 5, scope: !4826)
!4831 = !DILocation(line: 118, column: 12, scope: !4832)
!4832 = distinct !DILexicalBlock(scope: !4821, file: !116, line: 117, column: 12)
!4833 = !DILocation(line: 118, column: 10, scope: !4832)
!4834 = !DILocation(line: 119, column: 44, scope: !4832)
!4835 = !DILocation(line: 119, column: 41, scope: !4832)
!4836 = !DILocation(line: 121, column: 4, scope: !4815)
!4837 = !DILocation(line: 123, column: 3, scope: !4800)
!4838 = !DILocation(line: 125, column: 19, scope: !4839)
!4839 = distinct !DILexicalBlock(scope: !4840, file: !116, line: 125, column: 7)
!4840 = distinct !DILexicalBlock(scope: !4796, file: !116, line: 123, column: 10)
!4841 = !DILocation(line: 125, column: 45, scope: !4839)
!4842 = !DILocation(line: 125, column: 42, scope: !4839)
!4843 = !DILocation(line: 125, column: 7, scope: !4840)
!4844 = !DILocation(line: 126, column: 43, scope: !4845)
!4845 = distinct !DILexicalBlock(scope: !4839, file: !116, line: 125, column: 50)
!4846 = !DILocation(line: 126, column: 40, scope: !4845)
!4847 = !DILocation(line: 127, column: 4, scope: !4845)
!4848 = !DILocation(line: 128, column: 40, scope: !4849)
!4849 = distinct !DILexicalBlock(scope: !4839, file: !116, line: 127, column: 11)
!4850 = !DILocation(line: 132, column: 3, scope: !4794)
!4851 = !DILocation(line: 133, column: 2, scope: !4794)
!4852 = !DILocation(line: 135, column: 9, scope: !4782)
!4853 = !DILocation(line: 135, column: 2, scope: !4782)
!4854 = distinct !DISubprogram(name: "get_alt_addr", scope: !116, file: !116, line: 1517, type: !572, scopeLine: 1518, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !1286)
!4855 = !DILocalVariable(name: "addr", arg: 1, scope: !4854, file: !116, line: 1517, type: !230)
!4856 = !DILocation(line: 1517, column: 35, scope: !4854)
!4857 = !DILocalVariable(name: "alt_addr", arg: 2, scope: !4854, file: !116, line: 1517, type: !230)
!4858 = !DILocation(line: 1517, column: 51, scope: !4854)
!4859 = !DILocation(line: 1519, column: 6, scope: !4860)
!4860 = distinct !DILexicalBlock(scope: !4854, file: !116, line: 1519, column: 5)
!4861 = !DILocation(line: 1519, column: 11, scope: !4860)
!4862 = !DILocation(line: 1519, column: 27, scope: !4860)
!4863 = !DILocation(line: 1519, column: 15, scope: !4860)
!4864 = !DILocation(line: 1519, column: 35, scope: !4860)
!4865 = !DILocation(line: 1519, column: 60, scope: !4860)
!4866 = !DILocation(line: 1519, column: 72, scope: !4860)
!4867 = !DILocation(line: 1519, column: 5, scope: !4854)
!4868 = !DILocalVariable(name: "index", scope: !4869, file: !116, line: 1522, type: !176)
!4869 = distinct !DILexicalBlock(scope: !4860, file: !116, line: 1521, column: 7)
!4870 = !DILocation(line: 1522, column: 10, scope: !4869)
!4871 = !DILocalVariable(name: "i", scope: !4869, file: !116, line: 1523, type: !176)
!4872 = !DILocation(line: 1523, column: 10, scope: !4869)
!4873 = !DILocalVariable(name: "alt_port", scope: !4869, file: !116, line: 1524, type: !31)
!4874 = !DILocation(line: 1524, column: 7, scope: !4869)
!4875 = !DILocalVariable(name: "port", scope: !4869, file: !116, line: 1525, type: !31)
!4876 = !DILocation(line: 1525, column: 7, scope: !4869)
!4877 = !DILocation(line: 1525, column: 28, scope: !4869)
!4878 = !DILocation(line: 1525, column: 14, scope: !4869)
!4879 = !DILocation(line: 1527, column: 6, scope: !4880)
!4880 = distinct !DILexicalBlock(scope: !4869, file: !116, line: 1527, column: 6)
!4881 = !DILocation(line: 1527, column: 26, scope: !4880)
!4882 = !DILocation(line: 1527, column: 11, scope: !4880)
!4883 = !DILocation(line: 1527, column: 6, scope: !4869)
!4884 = !DILocation(line: 1528, column: 15, scope: !4880)
!4885 = !DILocation(line: 1528, column: 13, scope: !4880)
!4886 = !DILocation(line: 1528, column: 4, scope: !4880)
!4887 = !DILocation(line: 1529, column: 11, scope: !4888)
!4888 = distinct !DILexicalBlock(scope: !4880, file: !116, line: 1529, column: 11)
!4889 = !DILocation(line: 1529, column: 19, scope: !4888)
!4890 = !DILocation(line: 1529, column: 16, scope: !4888)
!4891 = !DILocation(line: 1529, column: 11, scope: !4880)
!4892 = !DILocation(line: 1530, column: 27, scope: !4888)
!4893 = !DILocation(line: 1530, column: 13, scope: !4888)
!4894 = !DILocation(line: 1530, column: 4, scope: !4888)
!4895 = !DILocation(line: 1531, column: 11, scope: !4896)
!4896 = distinct !DILexicalBlock(scope: !4888, file: !116, line: 1531, column: 11)
!4897 = !DILocation(line: 1531, column: 31, scope: !4896)
!4898 = !DILocation(line: 1531, column: 16, scope: !4896)
!4899 = !DILocation(line: 1531, column: 11, scope: !4888)
!4900 = !DILocation(line: 1532, column: 15, scope: !4896)
!4901 = !DILocation(line: 1532, column: 13, scope: !4896)
!4902 = !DILocation(line: 1532, column: 4, scope: !4896)
!4903 = !DILocation(line: 1533, column: 11, scope: !4904)
!4904 = distinct !DILexicalBlock(scope: !4896, file: !116, line: 1533, column: 11)
!4905 = !DILocation(line: 1533, column: 19, scope: !4904)
!4906 = !DILocation(line: 1533, column: 16, scope: !4904)
!4907 = !DILocation(line: 1533, column: 11, scope: !4896)
!4908 = !DILocation(line: 1534, column: 27, scope: !4904)
!4909 = !DILocation(line: 1534, column: 13, scope: !4904)
!4910 = !DILocation(line: 1534, column: 4, scope: !4904)
!4911 = !DILocation(line: 1536, column: 4, scope: !4904)
!4912 = !DILocation(line: 1538, column: 8, scope: !4913)
!4913 = distinct !DILexicalBlock(scope: !4869, file: !116, line: 1538, column: 3)
!4914 = !DILocation(line: 1538, column: 7, scope: !4913)
!4915 = !DILocation(line: 1538, column: 11, scope: !4916)
!4916 = distinct !DILexicalBlock(scope: !4913, file: !116, line: 1538, column: 3)
!4917 = !DILocation(line: 1538, column: 34, scope: !4916)
!4918 = !DILocation(line: 1538, column: 12, scope: !4916)
!4919 = !DILocation(line: 1538, column: 3, scope: !4913)
!4920 = !DILocation(line: 1539, column: 28, scope: !4921)
!4921 = distinct !DILexicalBlock(scope: !4922, file: !116, line: 1539, column: 7)
!4922 = distinct !DILexicalBlock(scope: !4916, file: !116, line: 1538, column: 52)
!4923 = !DILocation(line: 1539, column: 7, scope: !4921)
!4924 = !DILocation(line: 1539, column: 37, scope: !4921)
!4925 = !DILocation(line: 1539, column: 61, scope: !4921)
!4926 = !DILocation(line: 1539, column: 70, scope: !4921)
!4927 = !DILocation(line: 1539, column: 40, scope: !4921)
!4928 = !DILocation(line: 1539, column: 7, scope: !4922)
!4929 = !DILocation(line: 1540, column: 8, scope: !4930)
!4930 = distinct !DILexicalBlock(scope: !4931, file: !116, line: 1540, column: 8)
!4931 = distinct !DILexicalBlock(scope: !4921, file: !116, line: 1539, column: 74)
!4932 = !DILocation(line: 1540, column: 17, scope: !4930)
!4933 = !DILocation(line: 1540, column: 51, scope: !4930)
!4934 = !DILocation(line: 1540, column: 60, scope: !4930)
!4935 = !DILocation(line: 1540, column: 30, scope: !4930)
!4936 = !DILocation(line: 1540, column: 67, scope: !4930)
!4937 = !DILocation(line: 1540, column: 27, scope: !4930)
!4938 = !DILocation(line: 1540, column: 8, scope: !4931)
!4939 = !DILocation(line: 1541, column: 12, scope: !4940)
!4940 = distinct !DILexicalBlock(scope: !4930, file: !116, line: 1540, column: 78)
!4941 = !DILocation(line: 1541, column: 11, scope: !4940)
!4942 = !DILocation(line: 1542, column: 6, scope: !4940)
!4943 = !DILocation(line: 1544, column: 4, scope: !4931)
!4944 = !DILocation(line: 1545, column: 3, scope: !4922)
!4945 = !DILocation(line: 1538, column: 48, scope: !4916)
!4946 = !DILocation(line: 1538, column: 3, scope: !4916)
!4947 = distinct !{!4947, !4919, !4948, !1607}
!4948 = !DILocation(line: 1545, column: 3, scope: !4913)
!4949 = !DILocation(line: 1546, column: 6, scope: !4950)
!4950 = distinct !DILexicalBlock(scope: !4869, file: !116, line: 1546, column: 6)
!4951 = !DILocation(line: 1546, column: 11, scope: !4950)
!4952 = !DILocation(line: 1546, column: 6, scope: !4869)
!4953 = !DILocation(line: 1547, column: 9, scope: !4954)
!4954 = distinct !DILexicalBlock(scope: !4955, file: !116, line: 1547, column: 4)
!4955 = distinct !DILexicalBlock(scope: !4950, file: !116, line: 1546, column: 21)
!4956 = !DILocation(line: 1547, column: 8, scope: !4954)
!4957 = !DILocation(line: 1547, column: 12, scope: !4958)
!4958 = distinct !DILexicalBlock(scope: !4954, file: !116, line: 1547, column: 4)
!4959 = !DILocation(line: 1547, column: 35, scope: !4958)
!4960 = !DILocation(line: 1547, column: 13, scope: !4958)
!4961 = !DILocation(line: 1547, column: 4, scope: !4954)
!4962 = !DILocalVariable(name: "ind", scope: !4963, file: !116, line: 1548, type: !176)
!4963 = distinct !DILexicalBlock(scope: !4958, file: !116, line: 1547, column: 53)
!4964 = !DILocation(line: 1548, column: 12, scope: !4963)
!4965 = !DILocation(line: 1548, column: 19, scope: !4963)
!4966 = !DILocation(line: 1548, column: 25, scope: !4963)
!4967 = !DILocation(line: 1548, column: 24, scope: !4963)
!4968 = !DILocation(line: 1548, column: 26, scope: !4963)
!4969 = !DILocation(line: 1548, column: 53, scope: !4963)
!4970 = !DILocation(line: 1548, column: 30, scope: !4963)
!4971 = !DILocation(line: 1549, column: 29, scope: !4972)
!4972 = distinct !DILexicalBlock(scope: !4963, file: !116, line: 1549, column: 8)
!4973 = !DILocation(line: 1549, column: 8, scope: !4972)
!4974 = !DILocation(line: 1549, column: 38, scope: !4972)
!4975 = !DILocation(line: 1549, column: 62, scope: !4972)
!4976 = !DILocation(line: 1549, column: 71, scope: !4972)
!4977 = !DILocation(line: 1549, column: 41, scope: !4972)
!4978 = !DILocation(line: 1549, column: 8, scope: !4963)
!4979 = !DILocalVariable(name: "caddr", scope: !4980, file: !116, line: 1550, type: !230)
!4980 = distinct !DILexicalBlock(scope: !4972, file: !116, line: 1549, column: 77)
!4981 = !DILocation(line: 1550, column: 16, scope: !4980)
!4982 = !DILocation(line: 1550, column: 45, scope: !4980)
!4983 = !DILocation(line: 1550, column: 54, scope: !4980)
!4984 = !DILocation(line: 1550, column: 24, scope: !4980)
!4985 = !DILocation(line: 1551, column: 9, scope: !4986)
!4986 = distinct !DILexicalBlock(scope: !4980, file: !116, line: 1551, column: 9)
!4987 = !DILocation(line: 1551, column: 19, scope: !4986)
!4988 = !DILocation(line: 1551, column: 32, scope: !4986)
!4989 = !DILocation(line: 1551, column: 41, scope: !4986)
!4990 = !DILocation(line: 1551, column: 29, scope: !4986)
!4991 = !DILocation(line: 1551, column: 9, scope: !4980)
!4992 = !DILocation(line: 1552, column: 16, scope: !4993)
!4993 = distinct !DILexicalBlock(scope: !4986, file: !116, line: 1551, column: 52)
!4994 = !DILocation(line: 1552, column: 25, scope: !4993)
!4995 = !DILocation(line: 1552, column: 7, scope: !4993)
!4996 = !DILocation(line: 1553, column: 21, scope: !4993)
!4997 = !DILocation(line: 1553, column: 31, scope: !4993)
!4998 = !DILocation(line: 1553, column: 7, scope: !4993)
!4999 = !DILocation(line: 1554, column: 7, scope: !4993)
!5000 = !DILocation(line: 1556, column: 5, scope: !4980)
!5001 = !DILocation(line: 1557, column: 4, scope: !4963)
!5002 = !DILocation(line: 1547, column: 49, scope: !4958)
!5003 = !DILocation(line: 1547, column: 4, scope: !4958)
!5004 = distinct !{!5004, !4961, !5005, !1607}
!5005 = !DILocation(line: 1557, column: 4, scope: !4954)
!5006 = !DILocation(line: 1558, column: 3, scope: !4955)
!5007 = !DILocation(line: 1561, column: 2, scope: !4854)
!5008 = !DILocation(line: 1562, column: 1, scope: !4854)
!5009 = distinct !DISubprogram(name: "send_message_from_listener_to_client", scope: !116, file: !116, line: 908, type: !577, scopeLine: 909, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !1286)
!5010 = !DILocalVariable(name: "e", arg: 1, scope: !5009, file: !116, line: 908, type: !120)
!5011 = !DILocation(line: 908, column: 67, scope: !5009)
!5012 = !DILocalVariable(name: "nbh", arg: 2, scope: !5009, file: !116, line: 908, type: !579)
!5013 = !DILocation(line: 908, column: 96, scope: !5009)
!5014 = !DILocalVariable(name: "origin", arg: 3, scope: !5009, file: !116, line: 908, type: !230)
!5015 = !DILocation(line: 908, column: 111, scope: !5009)
!5016 = !DILocalVariable(name: "destination", arg: 4, scope: !5009, file: !116, line: 908, type: !230)
!5017 = !DILocation(line: 908, column: 129, scope: !5009)
!5018 = !DILocalVariable(name: "mm", scope: !5009, file: !116, line: 911, type: !3968)
!5019 = !DILocation(line: 911, column: 29, scope: !5009)
!5020 = !DILocation(line: 912, column: 5, scope: !5009)
!5021 = !DILocation(line: 912, column: 7, scope: !5009)
!5022 = !DILocation(line: 913, column: 16, scope: !5009)
!5023 = !DILocation(line: 913, column: 21, scope: !5009)
!5024 = !DILocation(line: 913, column: 29, scope: !5009)
!5025 = !DILocation(line: 913, column: 2, scope: !5009)
!5026 = !DILocation(line: 914, column: 16, scope: !5009)
!5027 = !DILocation(line: 914, column: 21, scope: !5009)
!5028 = !DILocation(line: 914, column: 34, scope: !5009)
!5029 = !DILocation(line: 914, column: 2, scope: !5009)
!5030 = !DILocation(line: 915, column: 44, scope: !5009)
!5031 = !DILocation(line: 915, column: 16, scope: !5009)
!5032 = !DILocation(line: 915, column: 5, scope: !5009)
!5033 = !DILocation(line: 915, column: 10, scope: !5009)
!5034 = !DILocation(line: 915, column: 14, scope: !5009)
!5035 = !DILocation(line: 916, column: 36, scope: !5009)
!5036 = !DILocation(line: 916, column: 41, scope: !5009)
!5037 = !DILocation(line: 916, column: 2, scope: !5009)
!5038 = !DILocation(line: 917, column: 32, scope: !5009)
!5039 = !DILocation(line: 917, column: 8, scope: !5009)
!5040 = !DILocation(line: 917, column: 64, scope: !5009)
!5041 = !DILocation(line: 917, column: 69, scope: !5009)
!5042 = !DILocation(line: 917, column: 37, scope: !5009)
!5043 = !DILocation(line: 917, column: 102, scope: !5009)
!5044 = !DILocation(line: 917, column: 74, scope: !5009)
!5045 = !DILocation(line: 917, column: 2, scope: !5009)
!5046 = !DILocation(line: 918, column: 33, scope: !5009)
!5047 = !DILocation(line: 918, column: 38, scope: !5009)
!5048 = !DILocation(line: 918, column: 70, scope: !5009)
!5049 = !DILocation(line: 918, column: 42, scope: !5009)
!5050 = !DILocation(line: 918, column: 2, scope: !5009)
!5051 = !DILocalVariable(name: "output", scope: !5009, file: !116, line: 920, type: !2003)
!5052 = !DILocation(line: 920, column: 19, scope: !5009)
!5053 = !DILocation(line: 920, column: 72, scope: !5009)
!5054 = !DILocation(line: 920, column: 28, scope: !5009)
!5055 = !DILocation(line: 922, column: 15, scope: !5009)
!5056 = !DILocation(line: 922, column: 2, scope: !5009)
!5057 = !DILocation(line: 924, column: 2, scope: !5009)
!5058 = distinct !DISubprogram(name: "handle_relay_message", scope: !116, file: !116, line: 767, type: !5059, scopeLine: 768, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !1286)
!5059 = !DISubroutineType(types: !5060)
!5060 = !{!31, !5061, !5062}
!5061 = !DIDerivedType(tag: DW_TAG_typedef, name: "relay_server_handle", file: !124, line: 125, baseType: !526)
!5062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!5063 = !DILocalVariable(name: "rs", arg: 1, scope: !5058, file: !116, line: 767, type: !5061)
!5064 = !DILocation(line: 767, column: 53, scope: !5058)
!5065 = !DILocalVariable(name: "sm", arg: 2, scope: !5058, file: !116, line: 767, type: !5062)
!5066 = !DILocation(line: 767, column: 82, scope: !5058)
!5067 = !DILocation(line: 769, column: 5, scope: !5068)
!5068 = distinct !DILexicalBlock(scope: !5058, file: !116, line: 769, column: 5)
!5069 = !DILocation(line: 769, column: 8, scope: !5068)
!5070 = !DILocation(line: 769, column: 11, scope: !5068)
!5071 = !DILocation(line: 769, column: 5, scope: !5058)
!5072 = !DILocation(line: 771, column: 11, scope: !5073)
!5073 = distinct !DILexicalBlock(scope: !5068, file: !116, line: 769, column: 15)
!5074 = !DILocation(line: 771, column: 15, scope: !5073)
!5075 = !DILocation(line: 771, column: 3, scope: !5073)
!5076 = !DILocation(line: 774, column: 26, scope: !5077)
!5077 = distinct !DILexicalBlock(scope: !5078, file: !116, line: 773, column: 28)
!5078 = distinct !DILexicalBlock(scope: !5073, file: !116, line: 771, column: 18)
!5079 = !DILocation(line: 774, column: 30, scope: !5077)
!5080 = !DILocation(line: 774, column: 38, scope: !5077)
!5081 = !DILocation(line: 774, column: 42, scope: !5077)
!5082 = !DILocation(line: 774, column: 48, scope: !5077)
!5083 = !DILocation(line: 774, column: 4, scope: !5077)
!5084 = !DILocation(line: 776, column: 3, scope: !5078)
!5085 = !DILocation(line: 779, column: 8, scope: !5086)
!5086 = distinct !DILexicalBlock(scope: !5087, file: !116, line: 779, column: 8)
!5087 = distinct !DILexicalBlock(scope: !5078, file: !116, line: 777, column: 20)
!5088 = !DILocation(line: 779, column: 12, scope: !5086)
!5089 = !DILocation(line: 779, column: 17, scope: !5086)
!5090 = !DILocation(line: 779, column: 20, scope: !5086)
!5091 = !DILocation(line: 779, column: 8, scope: !5087)
!5092 = !DILocation(line: 780, column: 10, scope: !5093)
!5093 = distinct !DILexicalBlock(scope: !5094, file: !116, line: 780, column: 9)
!5094 = distinct !DILexicalBlock(scope: !5086, file: !116, line: 779, column: 31)
!5095 = !DILocation(line: 780, column: 14, scope: !5093)
!5096 = !DILocation(line: 780, column: 19, scope: !5093)
!5097 = !DILocation(line: 780, column: 22, scope: !5093)
!5098 = !DILocation(line: 780, column: 9, scope: !5094)
!5099 = !DILocation(line: 781, column: 24, scope: !5100)
!5100 = distinct !DILexicalBlock(scope: !5093, file: !116, line: 780, column: 27)
!5101 = !DILocation(line: 781, column: 28, scope: !5100)
!5102 = !DILocation(line: 781, column: 33, scope: !5100)
!5103 = !DILocation(line: 781, column: 36, scope: !5100)
!5104 = !DILocation(line: 781, column: 6, scope: !5100)
!5105 = !DILocation(line: 781, column: 10, scope: !5100)
!5106 = !DILocation(line: 781, column: 15, scope: !5100)
!5107 = !DILocation(line: 781, column: 18, scope: !5100)
!5108 = !DILocation(line: 781, column: 22, scope: !5100)
!5109 = !DILocation(line: 782, column: 6, scope: !5100)
!5110 = !DILocation(line: 782, column: 10, scope: !5100)
!5111 = !DILocation(line: 782, column: 15, scope: !5100)
!5112 = !DILocation(line: 782, column: 18, scope: !5100)
!5113 = !DILocation(line: 782, column: 28, scope: !5100)
!5114 = !DILocation(line: 783, column: 5, scope: !5100)
!5115 = !DILocation(line: 784, column: 32, scope: !5116)
!5116 = distinct !DILexicalBlock(scope: !5093, file: !116, line: 783, column: 12)
!5117 = !DILocation(line: 784, column: 36, scope: !5116)
!5118 = !DILocation(line: 784, column: 45, scope: !5116)
!5119 = !DILocation(line: 784, column: 49, scope: !5116)
!5120 = !DILocation(line: 784, column: 54, scope: !5116)
!5121 = !DILocation(line: 784, column: 57, scope: !5116)
!5122 = !DILocation(line: 784, column: 6, scope: !5116)
!5123 = !DILocation(line: 785, column: 6, scope: !5116)
!5124 = !DILocation(line: 785, column: 10, scope: !5116)
!5125 = !DILocation(line: 785, column: 15, scope: !5116)
!5126 = !DILocation(line: 785, column: 18, scope: !5116)
!5127 = !DILocation(line: 785, column: 28, scope: !5116)
!5128 = !DILocation(line: 787, column: 4, scope: !5094)
!5129 = !DILocalVariable(name: "s", scope: !5087, file: !116, line: 789, type: !594)
!5130 = !DILocation(line: 789, column: 22, scope: !5087)
!5131 = !DILocation(line: 789, column: 26, scope: !5087)
!5132 = !DILocation(line: 789, column: 30, scope: !5087)
!5133 = !DILocation(line: 789, column: 35, scope: !5087)
!5134 = !DILocation(line: 791, column: 9, scope: !5135)
!5135 = distinct !DILexicalBlock(scope: !5087, file: !116, line: 791, column: 8)
!5136 = !DILocation(line: 791, column: 8, scope: !5087)
!5137 = !DILocation(line: 792, column: 5, scope: !5138)
!5138 = distinct !DILexicalBlock(scope: !5135, file: !116, line: 791, column: 12)
!5139 = !DILocation(line: 794, column: 4, scope: !5138)
!5140 = !DILocation(line: 794, column: 15, scope: !5141)
!5141 = distinct !DILexicalBlock(scope: !5135, file: !116, line: 794, column: 15)
!5142 = !DILocation(line: 794, column: 18, scope: !5141)
!5143 = !DILocation(line: 794, column: 29, scope: !5141)
!5144 = !DILocation(line: 794, column: 32, scope: !5141)
!5145 = !DILocation(line: 794, column: 35, scope: !5141)
!5146 = !DILocation(line: 794, column: 15, scope: !5135)
!5147 = !DILocation(line: 797, column: 27, scope: !5148)
!5148 = distinct !DILexicalBlock(scope: !5141, file: !116, line: 794, column: 40)
!5149 = !DILocation(line: 797, column: 30, scope: !5148)
!5150 = !DILocation(line: 797, column: 20, scope: !5148)
!5151 = !DILocation(line: 797, column: 49, scope: !5148)
!5152 = !DILocation(line: 797, column: 52, scope: !5148)
!5153 = !DILocation(line: 797, column: 42, scope: !5148)
!5154 = !DILocation(line: 795, column: 5, scope: !5148)
!5155 = !DILocation(line: 798, column: 5, scope: !5148)
!5156 = !DILocation(line: 798, column: 5, scope: !5157)
!5157 = distinct !DILexicalBlock(scope: !5158, file: !116, line: 798, column: 5)
!5158 = distinct !DILexicalBlock(scope: !5148, file: !116, line: 798, column: 5)
!5159 = !DILocation(line: 798, column: 5, scope: !5158)
!5160 = !DILocation(line: 798, column: 5, scope: !5161)
!5161 = distinct !DILexicalBlock(scope: !5157, file: !116, line: 798, column: 5)
!5162 = !DILocation(line: 799, column: 5, scope: !5148)
!5163 = !DILocation(line: 799, column: 9, scope: !5148)
!5164 = !DILocation(line: 799, column: 14, scope: !5148)
!5165 = !DILocation(line: 799, column: 16, scope: !5148)
!5166 = !DILocation(line: 800, column: 4, scope: !5148)
!5167 = !DILocation(line: 801, column: 12, scope: !5168)
!5168 = distinct !DILexicalBlock(scope: !5141, file: !116, line: 800, column: 11)
!5169 = !DILocation(line: 801, column: 16, scope: !5168)
!5170 = !DILocation(line: 801, column: 5, scope: !5168)
!5171 = !DILocation(line: 801, column: 8, scope: !5168)
!5172 = !DILocation(line: 801, column: 10, scope: !5168)
!5173 = !DILocation(line: 802, column: 41, scope: !5174)
!5174 = distinct !DILexicalBlock(scope: !5168, file: !116, line: 802, column: 8)
!5175 = !DILocation(line: 802, column: 45, scope: !5174)
!5176 = !DILocation(line: 802, column: 56, scope: !5174)
!5177 = !DILocation(line: 802, column: 60, scope: !5174)
!5178 = !DILocation(line: 802, column: 8, scope: !5174)
!5179 = !DILocation(line: 802, column: 66, scope: !5174)
!5180 = !DILocation(line: 802, column: 8, scope: !5168)
!5181 = !DILocation(line: 803, column: 6, scope: !5182)
!5182 = distinct !DILexicalBlock(scope: !5174, file: !116, line: 802, column: 70)
!5183 = !DILocation(line: 803, column: 6, scope: !5184)
!5184 = distinct !DILexicalBlock(scope: !5185, file: !116, line: 803, column: 6)
!5185 = distinct !DILexicalBlock(scope: !5182, file: !116, line: 803, column: 6)
!5186 = !DILocation(line: 803, column: 6, scope: !5185)
!5187 = !DILocation(line: 803, column: 6, scope: !5188)
!5188 = distinct !DILexicalBlock(scope: !5184, file: !116, line: 803, column: 6)
!5189 = !DILocation(line: 804, column: 6, scope: !5182)
!5190 = !DILocation(line: 804, column: 10, scope: !5182)
!5191 = !DILocation(line: 804, column: 15, scope: !5182)
!5192 = !DILocation(line: 804, column: 17, scope: !5182)
!5193 = !DILocation(line: 805, column: 5, scope: !5182)
!5194 = !DILocation(line: 808, column: 30, scope: !5087)
!5195 = !DILocation(line: 808, column: 34, scope: !5087)
!5196 = !DILocation(line: 808, column: 43, scope: !5087)
!5197 = !DILocation(line: 808, column: 47, scope: !5087)
!5198 = !DILocation(line: 808, column: 52, scope: !5087)
!5199 = !DILocation(line: 808, column: 55, scope: !5087)
!5200 = !DILocation(line: 808, column: 4, scope: !5087)
!5201 = !DILocation(line: 809, column: 4, scope: !5087)
!5202 = !DILocation(line: 809, column: 8, scope: !5087)
!5203 = !DILocation(line: 809, column: 13, scope: !5087)
!5204 = !DILocation(line: 809, column: 16, scope: !5087)
!5205 = !DILocation(line: 809, column: 20, scope: !5087)
!5206 = !DILocation(line: 811, column: 4, scope: !5078)
!5207 = !DILocation(line: 814, column: 51, scope: !5078)
!5208 = !DILocation(line: 814, column: 55, scope: !5078)
!5209 = !DILocation(line: 814, column: 64, scope: !5078)
!5210 = !DILocation(line: 814, column: 68, scope: !5078)
!5211 = !DILocation(line: 814, column: 76, scope: !5078)
!5212 = !DILocation(line: 815, column: 7, scope: !5078)
!5213 = !DILocation(line: 815, column: 11, scope: !5078)
!5214 = !DILocation(line: 815, column: 19, scope: !5078)
!5215 = !DILocation(line: 815, column: 25, scope: !5078)
!5216 = !DILocation(line: 815, column: 29, scope: !5078)
!5217 = !DILocation(line: 815, column: 37, scope: !5078)
!5218 = !DILocation(line: 815, column: 40, scope: !5078)
!5219 = !DILocation(line: 815, column: 44, scope: !5078)
!5220 = !DILocation(line: 815, column: 52, scope: !5078)
!5221 = !DILocation(line: 815, column: 73, scope: !5078)
!5222 = !DILocation(line: 815, column: 77, scope: !5078)
!5223 = !DILocation(line: 815, column: 85, scope: !5078)
!5224 = !DILocation(line: 814, column: 4, scope: !5078)
!5225 = !DILocation(line: 824, column: 30, scope: !5078)
!5226 = !DILocation(line: 824, column: 34, scope: !5078)
!5227 = !DILocation(line: 824, column: 43, scope: !5078)
!5228 = !DILocation(line: 824, column: 47, scope: !5078)
!5229 = !DILocation(line: 824, column: 55, scope: !5078)
!5230 = !DILocation(line: 824, column: 58, scope: !5078)
!5231 = !DILocation(line: 824, column: 4, scope: !5078)
!5232 = !DILocation(line: 825, column: 4, scope: !5078)
!5233 = !DILocation(line: 825, column: 8, scope: !5078)
!5234 = !DILocation(line: 825, column: 16, scope: !5078)
!5235 = !DILocation(line: 825, column: 19, scope: !5078)
!5236 = !DILocation(line: 825, column: 23, scope: !5078)
!5237 = !DILocation(line: 827, column: 4, scope: !5078)
!5238 = !DILocalVariable(name: "s", scope: !5239, file: !116, line: 830, type: !594)
!5239 = distinct !DILexicalBlock(scope: !5078, file: !116, line: 828, column: 27)
!5240 = !DILocation(line: 830, column: 22, scope: !5239)
!5241 = !DILocation(line: 830, column: 26, scope: !5239)
!5242 = !DILocation(line: 830, column: 30, scope: !5239)
!5243 = !DILocation(line: 830, column: 35, scope: !5239)
!5244 = !DILocation(line: 832, column: 9, scope: !5245)
!5245 = distinct !DILexicalBlock(scope: !5239, file: !116, line: 832, column: 8)
!5246 = !DILocation(line: 832, column: 8, scope: !5239)
!5247 = !DILocation(line: 833, column: 5, scope: !5248)
!5248 = distinct !DILexicalBlock(scope: !5245, file: !116, line: 832, column: 12)
!5249 = !DILocation(line: 835, column: 4, scope: !5248)
!5250 = !DILocation(line: 835, column: 15, scope: !5251)
!5251 = distinct !DILexicalBlock(scope: !5245, file: !116, line: 835, column: 15)
!5252 = !DILocation(line: 835, column: 18, scope: !5251)
!5253 = !DILocation(line: 835, column: 29, scope: !5251)
!5254 = !DILocation(line: 835, column: 32, scope: !5251)
!5255 = !DILocation(line: 835, column: 35, scope: !5251)
!5256 = !DILocation(line: 835, column: 15, scope: !5245)
!5257 = !DILocation(line: 838, column: 31, scope: !5258)
!5258 = distinct !DILexicalBlock(scope: !5251, file: !116, line: 835, column: 40)
!5259 = !DILocation(line: 838, column: 34, scope: !5258)
!5260 = !DILocation(line: 838, column: 24, scope: !5258)
!5261 = !DILocation(line: 838, column: 53, scope: !5258)
!5262 = !DILocation(line: 838, column: 56, scope: !5258)
!5263 = !DILocation(line: 838, column: 46, scope: !5258)
!5264 = !DILocation(line: 836, column: 5, scope: !5258)
!5265 = !DILocation(line: 839, column: 5, scope: !5258)
!5266 = !DILocation(line: 839, column: 5, scope: !5267)
!5267 = distinct !DILexicalBlock(scope: !5268, file: !116, line: 839, column: 5)
!5268 = distinct !DILexicalBlock(scope: !5258, file: !116, line: 839, column: 5)
!5269 = !DILocation(line: 839, column: 5, scope: !5268)
!5270 = !DILocation(line: 839, column: 5, scope: !5271)
!5271 = distinct !DILexicalBlock(scope: !5267, file: !116, line: 839, column: 5)
!5272 = !DILocation(line: 840, column: 5, scope: !5258)
!5273 = !DILocation(line: 840, column: 9, scope: !5258)
!5274 = !DILocation(line: 840, column: 14, scope: !5258)
!5275 = !DILocation(line: 840, column: 16, scope: !5258)
!5276 = !DILocation(line: 841, column: 4, scope: !5258)
!5277 = !DILocation(line: 842, column: 12, scope: !5278)
!5278 = distinct !DILexicalBlock(scope: !5251, file: !116, line: 841, column: 11)
!5279 = !DILocation(line: 842, column: 16, scope: !5278)
!5280 = !DILocation(line: 842, column: 5, scope: !5278)
!5281 = !DILocation(line: 842, column: 8, scope: !5278)
!5282 = !DILocation(line: 842, column: 10, scope: !5278)
!5283 = !DILocation(line: 843, column: 41, scope: !5284)
!5284 = distinct !DILexicalBlock(scope: !5278, file: !116, line: 843, column: 8)
!5285 = !DILocation(line: 843, column: 45, scope: !5284)
!5286 = !DILocation(line: 843, column: 56, scope: !5284)
!5287 = !DILocation(line: 843, column: 60, scope: !5284)
!5288 = !DILocation(line: 843, column: 8, scope: !5284)
!5289 = !DILocation(line: 843, column: 66, scope: !5284)
!5290 = !DILocation(line: 843, column: 8, scope: !5278)
!5291 = !DILocation(line: 844, column: 6, scope: !5292)
!5292 = distinct !DILexicalBlock(scope: !5284, file: !116, line: 843, column: 70)
!5293 = !DILocation(line: 844, column: 6, scope: !5294)
!5294 = distinct !DILexicalBlock(scope: !5295, file: !116, line: 844, column: 6)
!5295 = distinct !DILexicalBlock(scope: !5292, file: !116, line: 844, column: 6)
!5296 = !DILocation(line: 844, column: 6, scope: !5295)
!5297 = !DILocation(line: 844, column: 6, scope: !5298)
!5298 = distinct !DILexicalBlock(scope: !5294, file: !116, line: 844, column: 6)
!5299 = !DILocation(line: 845, column: 6, scope: !5292)
!5300 = !DILocation(line: 845, column: 10, scope: !5292)
!5301 = !DILocation(line: 845, column: 15, scope: !5292)
!5302 = !DILocation(line: 845, column: 17, scope: !5292)
!5303 = !DILocation(line: 846, column: 5, scope: !5292)
!5304 = !DILocation(line: 849, column: 30, scope: !5239)
!5305 = !DILocation(line: 849, column: 34, scope: !5239)
!5306 = !DILocation(line: 849, column: 43, scope: !5239)
!5307 = !DILocation(line: 849, column: 47, scope: !5239)
!5308 = !DILocation(line: 849, column: 52, scope: !5239)
!5309 = !DILocation(line: 849, column: 55, scope: !5239)
!5310 = !DILocation(line: 849, column: 4, scope: !5239)
!5311 = !DILocation(line: 850, column: 4, scope: !5239)
!5312 = !DILocation(line: 850, column: 8, scope: !5239)
!5313 = !DILocation(line: 850, column: 13, scope: !5239)
!5314 = !DILocation(line: 850, column: 16, scope: !5239)
!5315 = !DILocation(line: 850, column: 20, scope: !5239)
!5316 = !DILocation(line: 851, column: 4, scope: !5239)
!5317 = !DILocation(line: 854, column: 4, scope: !5318)
!5318 = distinct !DILexicalBlock(scope: !5078, file: !116, line: 853, column: 12)
!5319 = !DILocation(line: 856, column: 3, scope: !5078)
!5320 = !DILocation(line: 857, column: 2, scope: !5073)
!5321 = !DILocation(line: 859, column: 2, scope: !5058)
!5322 = distinct !DISubprogram(name: "handle_relay_auth_message", scope: !116, file: !116, line: 862, type: !5323, scopeLine: 863, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !1286)
!5323 = !DISubroutineType(types: !5324)
!5324 = !{null, !526, !1965}
!5325 = !DILocalVariable(name: "rs", arg: 1, scope: !5322, file: !116, line: 862, type: !526)
!5326 = !DILocation(line: 862, column: 60, scope: !5322)
!5327 = !DILocalVariable(name: "am", arg: 2, scope: !5322, file: !116, line: 862, type: !1965)
!5328 = !DILocation(line: 862, column: 85, scope: !5322)
!5329 = !DILocation(line: 864, column: 2, scope: !5322)
!5330 = !DILocation(line: 864, column: 6, scope: !5322)
!5331 = !DILocation(line: 864, column: 18, scope: !5322)
!5332 = !DILocation(line: 864, column: 22, scope: !5322)
!5333 = !DILocation(line: 864, column: 31, scope: !5322)
!5334 = !DILocation(line: 864, column: 35, scope: !5322)
!5335 = !DILocation(line: 864, column: 46, scope: !5322)
!5336 = !DILocation(line: 864, column: 50, scope: !5322)
!5337 = !DILocation(line: 864, column: 68, scope: !5322)
!5338 = !DILocation(line: 864, column: 72, scope: !5322)
!5339 = !DILocation(line: 864, column: 77, scope: !5322)
!5340 = !DILocation(line: 864, column: 81, scope: !5322)
!5341 = !DILocation(line: 865, column: 7, scope: !5322)
!5342 = !DILocation(line: 865, column: 11, scope: !5322)
!5343 = !DILocation(line: 865, column: 20, scope: !5322)
!5344 = !DILocation(line: 865, column: 24, scope: !5322)
!5345 = !DILocation(line: 865, column: 34, scope: !5322)
!5346 = !DILocation(line: 865, column: 38, scope: !5322)
!5347 = !DILocation(line: 865, column: 50, scope: !5322)
!5348 = !DILocation(line: 865, column: 54, scope: !5322)
!5349 = !DILocation(line: 866, column: 6, scope: !5350)
!5350 = distinct !DILexicalBlock(scope: !5322, file: !116, line: 866, column: 6)
!5351 = !DILocation(line: 866, column: 10, scope: !5350)
!5352 = !DILocation(line: 866, column: 20, scope: !5350)
!5353 = !DILocation(line: 866, column: 6, scope: !5322)
!5354 = !DILocation(line: 867, column: 29, scope: !5355)
!5355 = distinct !DILexicalBlock(scope: !5350, file: !116, line: 866, column: 25)
!5356 = !DILocation(line: 867, column: 33, scope: !5355)
!5357 = !DILocation(line: 867, column: 42, scope: !5355)
!5358 = !DILocation(line: 867, column: 46, scope: !5355)
!5359 = !DILocation(line: 867, column: 56, scope: !5355)
!5360 = !DILocation(line: 867, column: 3, scope: !5355)
!5361 = !DILocation(line: 868, column: 3, scope: !5355)
!5362 = !DILocation(line: 868, column: 7, scope: !5355)
!5363 = !DILocation(line: 868, column: 17, scope: !5355)
!5364 = !DILocation(line: 868, column: 21, scope: !5355)
!5365 = !DILocation(line: 869, column: 2, scope: !5355)
!5366 = !DILocation(line: 870, column: 1, scope: !5322)
!5367 = distinct !DISubprogram(name: "get_alt_tls_listener_port", scope: !6, file: !6, line: 353, type: !4240, scopeLine: 353, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !1286)
!5368 = !DILocation(line: 354, column: 17, scope: !5369)
!5369 = distinct !DILexicalBlock(scope: !5367, file: !6, line: 354, column: 5)
!5370 = !DILocation(line: 354, column: 38, scope: !5369)
!5371 = !DILocation(line: 354, column: 5, scope: !5367)
!5372 = !DILocation(line: 355, column: 22, scope: !5369)
!5373 = !DILocation(line: 355, column: 40, scope: !5369)
!5374 = !DILocation(line: 355, column: 3, scope: !5369)
!5375 = !DILocation(line: 356, column: 21, scope: !5367)
!5376 = !DILocation(line: 356, column: 2, scope: !5367)
!5377 = !DILocation(line: 357, column: 1, scope: !5367)
!5378 = distinct !DISubprogram(name: "create_new_listener_engine", scope: !116, file: !116, line: 1011, type: !5379, scopeLine: 1012, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !1286)
!5379 = !DISubroutineType(types: !5380)
!5380 = !{!120}
!5381 = !DILocalVariable(name: "eb", scope: !5378, file: !116, line: 1013, type: !132)
!5382 = !DILocation(line: 1013, column: 21, scope: !5378)
!5383 = !DILocation(line: 1013, column: 26, scope: !5378)
!5384 = !DILocation(line: 1014, column: 104, scope: !5378)
!5385 = !DILocation(line: 1014, column: 82, scope: !5378)
!5386 = !DILocation(line: 1014, column: 2, scope: !5378)
!5387 = !DILocalVariable(name: "sm", scope: !5378, file: !116, line: 1015, type: !127)
!5388 = !DILocation(line: 1015, column: 18, scope: !5378)
!5389 = !DILocation(line: 1015, column: 23, scope: !5378)
!5390 = !DILocalVariable(name: "e", scope: !5378, file: !116, line: 1016, type: !120)
!5391 = !DILocation(line: 1016, column: 20, scope: !5378)
!5392 = !DILocation(line: 1016, column: 42, scope: !5378)
!5393 = !DILocation(line: 1016, column: 46, scope: !5378)
!5394 = !DILocation(line: 1016, column: 71, scope: !5378)
!5395 = !DILocation(line: 1016, column: 113, scope: !5378)
!5396 = !DILocation(line: 1016, column: 140, scope: !5378)
!5397 = !DILocation(line: 1017, column: 16, scope: !5378)
!5398 = !DILocation(line: 1017, column: 44, scope: !5378)
!5399 = !DILocation(line: 1016, column: 24, scope: !5378)
!5400 = !DILocation(line: 1022, column: 14, scope: !5378)
!5401 = !DILocation(line: 1022, column: 2, scope: !5378)
!5402 = !DILocation(line: 1023, column: 26, scope: !5378)
!5403 = !DILocation(line: 1023, column: 50, scope: !5378)
!5404 = !DILocation(line: 1023, column: 2, scope: !5378)
!5405 = !DILocation(line: 1024, column: 9, scope: !5378)
!5406 = !DILocation(line: 1024, column: 2, scope: !5378)
!5407 = !DILocalVariable(name: "arg", arg: 1, scope: !1310, file: !116, line: 1027, type: !202)
!5408 = !DILocation(line: 1027, column: 44, scope: !1310)
!5409 = !DILocation(line: 1031, column: 3, scope: !1310)
!5410 = !DILocation(line: 1033, column: 3, scope: !1310)
!5411 = !DILocalVariable(name: "server", scope: !1310, file: !116, line: 1035, type: !392)
!5412 = !DILocation(line: 1035, column: 36, scope: !1310)
!5413 = !DILocation(line: 1035, column: 80, scope: !1310)
!5414 = !DILocation(line: 1037, column: 3, scope: !1310)
!5415 = !DILocation(line: 1037, column: 9, scope: !1310)
!5416 = !DILocation(line: 1037, column: 21, scope: !1310)
!5417 = !DILocation(line: 1037, column: 24, scope: !1310)
!5418 = !DILocation(line: 0, scope: !1310)
!5419 = !DILocation(line: 1038, column: 33, scope: !5420)
!5420 = distinct !DILexicalBlock(scope: !1310, file: !116, line: 1037, column: 32)
!5421 = !DILocation(line: 1038, column: 22, scope: !5420)
!5422 = !DILocation(line: 1038, column: 5, scope: !5420)
!5423 = distinct !{!5423, !5414, !5424, !1607}
!5424 = !DILocation(line: 1039, column: 3, scope: !1310)
!5425 = !DILocation(line: 1041, column: 10, scope: !1310)
!5426 = !DILocation(line: 1041, column: 3, scope: !1310)
!5427 = distinct !DISubprogram(name: "send_socket_to_general_relay", scope: !116, file: !116, line: 516, type: !5428, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !1286)
!5428 = !DISubroutineType(types: !5429)
!5429 = !{!31, !120, !5062}
!5430 = !DILocalVariable(name: "e", arg: 1, scope: !5427, file: !116, line: 516, type: !120)
!5431 = !DILocation(line: 516, column: 59, scope: !5427)
!5432 = !DILocalVariable(name: "sm", arg: 2, scope: !5427, file: !116, line: 516, type: !5062)
!5433 = !DILocation(line: 516, column: 87, scope: !5427)
!5434 = !DILocalVariable(name: "rdest", scope: !5427, file: !116, line: 518, type: !526)
!5435 = !DILocation(line: 518, column: 23, scope: !5427)
!5436 = !DILocation(line: 518, column: 31, scope: !5427)
!5437 = !DILocation(line: 518, column: 35, scope: !5427)
!5438 = !DILocation(line: 520, column: 6, scope: !5439)
!5439 = distinct !DILexicalBlock(scope: !5427, file: !116, line: 520, column: 5)
!5440 = !DILocation(line: 520, column: 5, scope: !5427)
!5441 = !DILocalVariable(name: "dest", scope: !5442, file: !116, line: 521, type: !176)
!5442 = distinct !DILexicalBlock(scope: !5439, file: !116, line: 520, column: 13)
!5443 = !DILocation(line: 521, column: 10, scope: !5442)
!5444 = !DILocation(line: 521, column: 45, scope: !5442)
!5445 = !DILocation(line: 521, column: 49, scope: !5442)
!5446 = !DILocation(line: 521, column: 54, scope: !5442)
!5447 = !DILocation(line: 521, column: 57, scope: !5442)
!5448 = !DILocation(line: 521, column: 29, scope: !5442)
!5449 = !DILocation(line: 521, column: 18, scope: !5442)
!5450 = !DILocation(line: 521, column: 72, scope: !5442)
!5451 = !DILocation(line: 521, column: 70, scope: !5442)
!5452 = !DILocation(line: 521, column: 17, scope: !5442)
!5453 = !DILocation(line: 522, column: 33, scope: !5442)
!5454 = !DILocation(line: 522, column: 11, scope: !5442)
!5455 = !DILocation(line: 522, column: 9, scope: !5442)
!5456 = !DILocation(line: 523, column: 2, scope: !5442)
!5457 = !DILocalVariable(name: "smptr", scope: !5427, file: !116, line: 525, type: !5062)
!5458 = !DILocation(line: 525, column: 27, scope: !5427)
!5459 = !DILocation(line: 525, column: 35, scope: !5427)
!5460 = !DILocation(line: 527, column: 2, scope: !5427)
!5461 = !DILocation(line: 527, column: 9, scope: !5427)
!5462 = !DILocation(line: 527, column: 11, scope: !5427)
!5463 = !DILocalVariable(name: "output", scope: !5427, file: !116, line: 529, type: !2003)
!5464 = !DILocation(line: 529, column: 19, scope: !5427)
!5465 = !DILocalVariable(name: "success", scope: !5427, file: !116, line: 530, type: !31)
!5466 = !DILocation(line: 530, column: 6, scope: !5427)
!5467 = !DILocation(line: 532, column: 6, scope: !5468)
!5468 = distinct !DILexicalBlock(scope: !5427, file: !116, line: 532, column: 5)
!5469 = !DILocation(line: 532, column: 5, scope: !5427)
!5470 = !DILocation(line: 533, column: 3, scope: !5471)
!5471 = distinct !DILexicalBlock(scope: !5468, file: !116, line: 532, column: 13)
!5472 = !DILocation(line: 536, column: 34, scope: !5427)
!5473 = !DILocation(line: 536, column: 41, scope: !5427)
!5474 = !DILocation(line: 536, column: 11, scope: !5427)
!5475 = !DILocation(line: 536, column: 9, scope: !5427)
!5476 = !DILocation(line: 538, column: 5, scope: !5477)
!5477 = distinct !DILexicalBlock(scope: !5427, file: !116, line: 538, column: 5)
!5478 = !DILocation(line: 538, column: 5, scope: !5427)
!5479 = !DILocation(line: 540, column: 19, scope: !5480)
!5480 = distinct !DILexicalBlock(scope: !5481, file: !116, line: 540, column: 6)
!5481 = distinct !DILexicalBlock(scope: !5477, file: !116, line: 538, column: 13)
!5482 = !DILocation(line: 540, column: 26, scope: !5480)
!5483 = !DILocation(line: 540, column: 6, scope: !5480)
!5484 = !DILocation(line: 540, column: 64, scope: !5480)
!5485 = !DILocation(line: 540, column: 6, scope: !5481)
!5486 = !DILocation(line: 541, column: 4, scope: !5487)
!5487 = distinct !DILexicalBlock(scope: !5480, file: !116, line: 540, column: 68)
!5488 = !DILocation(line: 545, column: 3, scope: !5487)
!5489 = !DILocation(line: 546, column: 12, scope: !5490)
!5490 = distinct !DILexicalBlock(scope: !5480, file: !116, line: 545, column: 10)
!5491 = !DILocation(line: 547, column: 4, scope: !5490)
!5492 = !DILocation(line: 547, column: 11, scope: !5490)
!5493 = !DILocation(line: 547, column: 16, scope: !5490)
!5494 = !DILocation(line: 547, column: 19, scope: !5490)
!5495 = !DILocation(line: 547, column: 22, scope: !5490)
!5496 = !DILocation(line: 549, column: 2, scope: !5481)
!5497 = !DILabel(scope: !5427, name: "label_end", file: !116, line: 551)
!5498 = !DILocation(line: 551, column: 2, scope: !5427)
!5499 = !DILocation(line: 553, column: 6, scope: !5500)
!5500 = distinct !DILexicalBlock(scope: !5427, file: !116, line: 553, column: 5)
!5501 = !DILocation(line: 553, column: 5, scope: !5427)
!5502 = !DILocation(line: 554, column: 29, scope: !5503)
!5503 = distinct !DILexicalBlock(scope: !5500, file: !116, line: 553, column: 15)
!5504 = !DILocation(line: 554, column: 32, scope: !5503)
!5505 = !DILocation(line: 554, column: 39, scope: !5503)
!5506 = !DILocation(line: 554, column: 44, scope: !5503)
!5507 = !DILocation(line: 554, column: 47, scope: !5503)
!5508 = !DILocation(line: 554, column: 3, scope: !5503)
!5509 = !DILocation(line: 555, column: 3, scope: !5503)
!5510 = !DILocation(line: 555, column: 10, scope: !5503)
!5511 = !DILocation(line: 555, column: 15, scope: !5503)
!5512 = !DILocation(line: 555, column: 18, scope: !5503)
!5513 = !DILocation(line: 555, column: 21, scope: !5503)
!5514 = !DILocation(line: 556, column: 3, scope: !5503)
!5515 = !DILocation(line: 556, column: 3, scope: !5516)
!5516 = distinct !DILexicalBlock(scope: !5517, file: !116, line: 556, column: 3)
!5517 = distinct !DILexicalBlock(scope: !5503, file: !116, line: 556, column: 3)
!5518 = !DILocation(line: 556, column: 3, scope: !5517)
!5519 = !DILocation(line: 556, column: 3, scope: !5520)
!5520 = distinct !DILexicalBlock(scope: !5516, file: !116, line: 556, column: 3)
!5521 = !DILocation(line: 557, column: 3, scope: !5503)
!5522 = !DILocation(line: 560, column: 2, scope: !5427)
!5523 = !DILocation(line: 561, column: 1, scope: !5427)
!5524 = distinct !DISubprogram(name: "run_auth_server_thread", scope: !116, file: !116, line: 1741, type: !1284, scopeLine: 1742, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !1286)
!5525 = !DILocalVariable(name: "arg", arg: 1, scope: !5524, file: !116, line: 1741, type: !202)
!5526 = !DILocation(line: 1741, column: 43, scope: !5524)
!5527 = !DILocation(line: 1743, column: 2, scope: !5524)
!5528 = !DILocalVariable(name: "as", scope: !5524, file: !116, line: 1745, type: !1032)
!5529 = !DILocation(line: 1745, column: 22, scope: !5524)
!5530 = !DILocation(line: 1745, column: 48, scope: !5524)
!5531 = !DILocalVariable(name: "id", scope: !5524, file: !116, line: 1747, type: !525)
!5532 = !DILocation(line: 1747, column: 16, scope: !5524)
!5533 = !DILocation(line: 1747, column: 21, scope: !5524)
!5534 = !DILocation(line: 1747, column: 25, scope: !5524)
!5535 = !DILocation(line: 1749, column: 5, scope: !5536)
!5536 = distinct !DILexicalBlock(scope: !5524, file: !116, line: 1749, column: 5)
!5537 = !DILocation(line: 1749, column: 8, scope: !5536)
!5538 = !DILocation(line: 1749, column: 5, scope: !5524)
!5539 = !DILocation(line: 1751, column: 3, scope: !5540)
!5540 = distinct !DILexicalBlock(scope: !5536, file: !116, line: 1749, column: 14)
!5541 = !DILocation(line: 1752, column: 3, scope: !5540)
!5542 = !DILocation(line: 1754, column: 3, scope: !5540)
!5543 = !DILocation(line: 1756, column: 3, scope: !5540)
!5544 = !DILocation(line: 1756, column: 9, scope: !5540)
!5545 = !DILocation(line: 1760, column: 4, scope: !5546)
!5546 = distinct !DILexicalBlock(scope: !5540, file: !116, line: 1756, column: 31)
!5547 = !DILocation(line: 1761, column: 4, scope: !5546)
!5548 = !DILocation(line: 1762, column: 4, scope: !5546)
!5549 = distinct !{!5549, !5543, !5550, !1607}
!5550 = !DILocation(line: 1763, column: 3, scope: !5540)
!5551 = !DILocation(line: 1765, column: 2, scope: !5540)
!5552 = !DILocation(line: 1767, column: 9, scope: !5553)
!5553 = distinct !DILexicalBlock(scope: !5536, file: !116, line: 1765, column: 9)
!5554 = !DILocation(line: 1767, column: 3, scope: !5553)
!5555 = !DILocation(line: 1769, column: 12, scope: !5553)
!5556 = !DILocation(line: 1769, column: 3, scope: !5553)
!5557 = !DILocation(line: 1769, column: 7, scope: !5553)
!5558 = !DILocation(line: 1769, column: 10, scope: !5553)
!5559 = !DILocation(line: 1771, column: 20, scope: !5553)
!5560 = !DILocation(line: 1771, column: 3, scope: !5553)
!5561 = !DILocation(line: 1771, column: 7, scope: !5553)
!5562 = !DILocation(line: 1771, column: 18, scope: !5553)
!5563 = !DILocation(line: 1772, column: 91, scope: !5553)
!5564 = !DILocation(line: 1772, column: 95, scope: !5553)
!5565 = !DILocation(line: 1772, column: 69, scope: !5553)
!5566 = !DILocation(line: 1772, column: 3, scope: !5553)
!5567 = !DILocalVariable(name: "pair", scope: !5553, file: !116, line: 1774, type: !2403)
!5568 = !DILocation(line: 1774, column: 23, scope: !5553)
!5569 = !DILocation(line: 1776, column: 24, scope: !5553)
!5570 = !DILocation(line: 1776, column: 28, scope: !5553)
!5571 = !DILocation(line: 1776, column: 67, scope: !5553)
!5572 = !DILocation(line: 1776, column: 3, scope: !5553)
!5573 = !DILocation(line: 1777, column: 16, scope: !5553)
!5574 = !DILocation(line: 1777, column: 3, scope: !5553)
!5575 = !DILocation(line: 1777, column: 7, scope: !5553)
!5576 = !DILocation(line: 1777, column: 14, scope: !5553)
!5577 = !DILocation(line: 1778, column: 17, scope: !5553)
!5578 = !DILocation(line: 1778, column: 3, scope: !5553)
!5579 = !DILocation(line: 1778, column: 7, scope: !5553)
!5580 = !DILocation(line: 1778, column: 15, scope: !5553)
!5581 = !DILocation(line: 1779, column: 21, scope: !5553)
!5582 = !DILocation(line: 1779, column: 25, scope: !5553)
!5583 = !DILocation(line: 1779, column: 74, scope: !5553)
!5584 = !DILocation(line: 1779, column: 3, scope: !5553)
!5585 = !DILocation(line: 1780, column: 22, scope: !5553)
!5586 = !DILocation(line: 1780, column: 26, scope: !5553)
!5587 = !DILocation(line: 1780, column: 3, scope: !5553)
!5588 = !DILocation(line: 1783, column: 40, scope: !5553)
!5589 = !DILocation(line: 1783, column: 44, scope: !5553)
!5590 = !DILocation(line: 1783, column: 13, scope: !5553)
!5591 = !DILocation(line: 1783, column: 3, scope: !5553)
!5592 = !DILocation(line: 1783, column: 7, scope: !5553)
!5593 = !DILocation(line: 1783, column: 11, scope: !5553)
!5594 = !DILocation(line: 1786, column: 3, scope: !5553)
!5595 = !DILocation(line: 1788, column: 3, scope: !5553)
!5596 = !DILocation(line: 1788, column: 9, scope: !5553)
!5597 = !DILocation(line: 1789, column: 21, scope: !5598)
!5598 = distinct !DILexicalBlock(scope: !5599, file: !116, line: 1789, column: 8)
!5599 = distinct !DILexicalBlock(scope: !5553, file: !116, line: 1788, column: 31)
!5600 = !DILocation(line: 1789, column: 9, scope: !5598)
!5601 = !DILocation(line: 1789, column: 8, scope: !5599)
!5602 = !DILocation(line: 1790, column: 15, scope: !5603)
!5603 = distinct !DILexicalBlock(scope: !5598, file: !116, line: 1789, column: 36)
!5604 = !DILocation(line: 1790, column: 19, scope: !5603)
!5605 = !DILocation(line: 1790, column: 5, scope: !5603)
!5606 = !DILocation(line: 1791, column: 4, scope: !5603)
!5607 = !DILocation(line: 1793, column: 15, scope: !5599)
!5608 = !DILocation(line: 1793, column: 19, scope: !5599)
!5609 = !DILocation(line: 1793, column: 4, scope: !5599)
!5610 = distinct !{!5610, !5595, !5611, !1607}
!5611 = !DILocation(line: 1794, column: 3, scope: !5553)
!5612 = !DILocation(line: 1797, column: 9, scope: !5524)
!5613 = !DILocation(line: 1797, column: 2, scope: !5524)
!5614 = distinct !DISubprogram(name: "auth_server_receive_message", scope: !116, file: !116, line: 448, type: !3958, scopeLine: 449, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !1286)
!5615 = !DILocalVariable(name: "bev", arg: 1, scope: !5614, file: !116, line: 448, type: !379)
!5616 = !DILocation(line: 448, column: 61, scope: !5614)
!5617 = !DILocalVariable(name: "ptr", arg: 2, scope: !5614, file: !116, line: 448, type: !202)
!5618 = !DILocation(line: 448, column: 72, scope: !5614)
!5619 = !DILocation(line: 450, column: 3, scope: !5614)
!5620 = !DILocation(line: 450, column: 3, scope: !5621)
!5621 = distinct !DILexicalBlock(scope: !5614, file: !116, line: 450, column: 3)
!5622 = !DILocalVariable(name: "am", scope: !5614, file: !116, line: 452, type: !1966)
!5623 = !DILocation(line: 452, column: 23, scope: !5614)
!5624 = !DILocalVariable(name: "n", scope: !5614, file: !116, line: 453, type: !31)
!5625 = !DILocation(line: 453, column: 7, scope: !5614)
!5626 = !DILocalVariable(name: "input", scope: !5614, file: !116, line: 454, type: !2003)
!5627 = !DILocation(line: 454, column: 20, scope: !5614)
!5628 = !DILocation(line: 454, column: 50, scope: !5614)
!5629 = !DILocation(line: 454, column: 28, scope: !5614)
!5630 = !DILocation(line: 456, column: 3, scope: !5614)
!5631 = !DILocation(line: 456, column: 31, scope: !5614)
!5632 = !DILocation(line: 456, column: 15, scope: !5614)
!5633 = !DILocation(line: 456, column: 13, scope: !5614)
!5634 = !DILocation(line: 456, column: 73, scope: !5614)
!5635 = !DILocation(line: 457, column: 9, scope: !5636)
!5636 = distinct !DILexicalBlock(scope: !5637, file: !116, line: 457, column: 9)
!5637 = distinct !DILexicalBlock(scope: !5614, file: !116, line: 456, column: 78)
!5638 = !DILocation(line: 457, column: 11, scope: !5636)
!5639 = !DILocation(line: 457, column: 9, scope: !5637)
!5640 = !DILocation(line: 458, column: 15, scope: !5641)
!5641 = distinct !DILexicalBlock(scope: !5636, file: !116, line: 457, column: 43)
!5642 = !DILocation(line: 458, column: 71, scope: !5641)
!5643 = !DILocation(line: 458, column: 7, scope: !5641)
!5644 = !DILocation(line: 459, column: 7, scope: !5641)
!5645 = distinct !{!5645, !5630, !5646, !1607}
!5646 = !DILocation(line: 513, column: 3, scope: !5614)
!5647 = !DILocalVariable(name: "key", scope: !5648, file: !116, line: 463, type: !848)
!5648 = distinct !DILexicalBlock(scope: !5637, file: !116, line: 462, column: 5)
!5649 = !DILocation(line: 463, column: 17, scope: !5648)
!5650 = !DILocation(line: 464, column: 26, scope: !5651)
!5651 = distinct !DILexicalBlock(scope: !5648, file: !116, line: 464, column: 10)
!5652 = !DILocation(line: 464, column: 40, scope: !5651)
!5653 = !DILocation(line: 464, column: 56, scope: !5651)
!5654 = !DILocation(line: 464, column: 77, scope: !5651)
!5655 = !DILocation(line: 464, column: 74, scope: !5651)
!5656 = !DILocation(line: 464, column: 89, scope: !5651)
!5657 = !DILocation(line: 464, column: 86, scope: !5651)
!5658 = !DILocation(line: 464, column: 95, scope: !5651)
!5659 = !DILocation(line: 464, column: 102, scope: !5651)
!5660 = !DILocation(line: 464, column: 112, scope: !5651)
!5661 = !DILocation(line: 464, column: 10, scope: !5651)
!5662 = !DILocation(line: 464, column: 116, scope: !5651)
!5663 = !DILocation(line: 464, column: 10, scope: !5648)
!5664 = !DILocation(line: 465, column: 11, scope: !5665)
!5665 = distinct !DILexicalBlock(scope: !5651, file: !116, line: 464, column: 120)
!5666 = !DILocation(line: 465, column: 19, scope: !5665)
!5667 = !DILocation(line: 466, column: 7, scope: !5665)
!5668 = !DILocation(line: 467, column: 14, scope: !5669)
!5669 = distinct !DILexicalBlock(scope: !5651, file: !116, line: 466, column: 14)
!5670 = !DILocation(line: 467, column: 21, scope: !5669)
!5671 = !DILocation(line: 467, column: 18, scope: !5669)
!5672 = !DILocation(line: 467, column: 8, scope: !5669)
!5673 = !DILocation(line: 468, column: 11, scope: !5669)
!5674 = !DILocation(line: 468, column: 19, scope: !5669)
!5675 = !DILocalVariable(name: "dest", scope: !5637, file: !116, line: 472, type: !176)
!5676 = !DILocation(line: 472, column: 12, scope: !5637)
!5677 = !DILocation(line: 472, column: 22, scope: !5637)
!5678 = !DILocation(line: 472, column: 19, scope: !5637)
!5679 = !DILocalVariable(name: "output", scope: !5637, file: !116, line: 474, type: !2003)
!5680 = !DILocation(line: 474, column: 22, scope: !5637)
!5681 = !DILocation(line: 476, column: 8, scope: !5682)
!5682 = distinct !DILexicalBlock(scope: !5637, file: !116, line: 476, column: 8)
!5683 = !DILocation(line: 476, column: 12, scope: !5682)
!5684 = !DILocation(line: 476, column: 8, scope: !5637)
!5685 = !DILocation(line: 477, column: 12, scope: !5686)
!5686 = distinct !DILexicalBlock(scope: !5682, file: !116, line: 476, column: 58)
!5687 = !DILocation(line: 478, column: 10, scope: !5688)
!5688 = distinct !DILexicalBlock(scope: !5686, file: !116, line: 478, column: 10)
!5689 = !DILocation(line: 478, column: 18, scope: !5688)
!5690 = !DILocation(line: 478, column: 15, scope: !5688)
!5691 = !DILocation(line: 478, column: 10, scope: !5686)
!5692 = !DILocation(line: 482, column: 27, scope: !5693)
!5693 = distinct !DILexicalBlock(scope: !5688, file: !116, line: 478, column: 55)
!5694 = !DILocation(line: 482, column: 22, scope: !5693)
!5695 = !DILocation(line: 479, column: 8, scope: !5693)
!5696 = !DILocation(line: 483, column: 7, scope: !5693)
!5697 = !DILocation(line: 483, column: 37, scope: !5698)
!5698 = distinct !DILexicalBlock(scope: !5688, file: !116, line: 483, column: 17)
!5699 = !DILocation(line: 483, column: 19, scope: !5698)
!5700 = !DILocation(line: 483, column: 18, scope: !5698)
!5701 = !DILocation(line: 483, column: 17, scope: !5688)
!5702 = !DILocation(line: 487, column: 27, scope: !5703)
!5703 = distinct !DILexicalBlock(scope: !5698, file: !116, line: 483, column: 45)
!5704 = !DILocation(line: 487, column: 22, scope: !5703)
!5705 = !DILocation(line: 487, column: 38, scope: !5703)
!5706 = !DILocation(line: 484, column: 8, scope: !5703)
!5707 = !DILocation(line: 488, column: 7, scope: !5703)
!5708 = !DILocation(line: 489, column: 58, scope: !5709)
!5709 = distinct !DILexicalBlock(scope: !5698, file: !116, line: 488, column: 14)
!5710 = !DILocation(line: 489, column: 40, scope: !5709)
!5711 = !DILocation(line: 489, column: 65, scope: !5709)
!5712 = !DILocation(line: 489, column: 17, scope: !5709)
!5713 = !DILocation(line: 489, column: 15, scope: !5709)
!5714 = !DILocation(line: 491, column: 5, scope: !5686)
!5715 = !DILocation(line: 492, column: 10, scope: !5716)
!5716 = distinct !DILexicalBlock(scope: !5717, file: !116, line: 492, column: 10)
!5717 = distinct !DILexicalBlock(scope: !5682, file: !116, line: 491, column: 12)
!5718 = !DILocation(line: 492, column: 18, scope: !5716)
!5719 = !DILocation(line: 492, column: 15, scope: !5716)
!5720 = !DILocation(line: 492, column: 10, scope: !5717)
!5721 = !DILocation(line: 496, column: 27, scope: !5722)
!5722 = distinct !DILexicalBlock(scope: !5716, file: !116, line: 492, column: 59)
!5723 = !DILocation(line: 496, column: 22, scope: !5722)
!5724 = !DILocation(line: 496, column: 37, scope: !5722)
!5725 = !DILocation(line: 493, column: 8, scope: !5722)
!5726 = !DILocation(line: 497, column: 7, scope: !5722)
!5727 = !DILocation(line: 497, column: 41, scope: !5728)
!5728 = distinct !DILexicalBlock(scope: !5716, file: !116, line: 497, column: 17)
!5729 = !DILocation(line: 497, column: 19, scope: !5728)
!5730 = !DILocation(line: 497, column: 18, scope: !5728)
!5731 = !DILocation(line: 497, column: 17, scope: !5716)
!5732 = !DILocation(line: 501, column: 34, scope: !5733)
!5733 = distinct !DILexicalBlock(scope: !5728, file: !116, line: 497, column: 49)
!5734 = !DILocation(line: 501, column: 29, scope: !5733)
!5735 = !DILocation(line: 501, column: 44, scope: !5733)
!5736 = !DILocation(line: 498, column: 8, scope: !5733)
!5737 = !DILocation(line: 502, column: 7, scope: !5733)
!5738 = !DILocation(line: 503, column: 62, scope: !5739)
!5739 = distinct !DILexicalBlock(scope: !5728, file: !116, line: 502, column: 14)
!5740 = !DILocation(line: 503, column: 40, scope: !5739)
!5741 = !DILocation(line: 503, column: 69, scope: !5739)
!5742 = !DILocation(line: 503, column: 17, scope: !5739)
!5743 = !DILocation(line: 503, column: 15, scope: !5739)
!5744 = !DILocation(line: 507, column: 8, scope: !5745)
!5745 = distinct !DILexicalBlock(scope: !5637, file: !116, line: 507, column: 8)
!5746 = !DILocation(line: 507, column: 8, scope: !5637)
!5747 = !DILocation(line: 508, column: 20, scope: !5745)
!5748 = !DILocation(line: 508, column: 7, scope: !5745)
!5749 = !DILocation(line: 510, column: 42, scope: !5750)
!5750 = distinct !DILexicalBlock(scope: !5745, file: !116, line: 509, column: 10)
!5751 = !DILocation(line: 510, column: 52, scope: !5750)
!5752 = !DILocation(line: 510, column: 7, scope: !5750)
!5753 = !DILocation(line: 511, column: 10, scope: !5750)
!5754 = !DILocation(line: 511, column: 20, scope: !5750)
!5755 = !DILocation(line: 511, column: 24, scope: !5750)
!5756 = !DILocation(line: 514, column: 1, scope: !5614)
!5757 = distinct !DISubprogram(name: "run_admin_server_thread", scope: !116, file: !116, line: 1811, type: !1284, scopeLine: 1812, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !1286)
!5758 = !DILocalVariable(name: "arg", arg: 1, scope: !5757, file: !116, line: 1811, type: !202)
!5759 = !DILocation(line: 1811, column: 44, scope: !5757)
!5760 = !DILocation(line: 1813, column: 2, scope: !5757)
!5761 = !DILocation(line: 1815, column: 2, scope: !5757)
!5762 = !DILocation(line: 1817, column: 2, scope: !5757)
!5763 = !DILocation(line: 1819, column: 2, scope: !5757)
!5764 = !DILocation(line: 1819, column: 20, scope: !5757)
!5765 = !DILocation(line: 1820, column: 26, scope: !5766)
!5766 = distinct !DILexicalBlock(scope: !5757, file: !116, line: 1819, column: 32)
!5767 = !DILocation(line: 1820, column: 3, scope: !5766)
!5768 = distinct !{!5768, !5763, !5769, !1607}
!5769 = !DILocation(line: 1821, column: 2, scope: !5757)
!5770 = !DILocation(line: 1823, column: 9, scope: !5757)
!5771 = !DILocation(line: 1823, column: 2, scope: !5757)
