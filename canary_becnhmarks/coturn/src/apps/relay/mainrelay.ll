; ModuleID = '/home/raj/coturn/src/apps/relay/mainrelay.c'
source_filename = "/home/raj/coturn/src/apps/relay/mainrelay.c"
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
%struct.myoption = type { ptr, i32, ptr, i32 }
%struct._perf_options_t = type { i64, i32, i32 }
%union.ioa_addr = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct.ifaddrs = type { ptr, ptr, i32, ptr, ptr, %union.anon.0, ptr }
%union.anon.0 = type { ptr }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.ctr_state = type { [16 x i8], i32, [16 x i8] }
%struct.buf_mem_st = type { i64, ptr, i64, i64 }
%struct.aes_key_st = type { [60 x i32], i32 }
%struct.timespec = type { i64, i64 }
%struct.uoptions = type { %union.anon.1 }
%union.anon.1 = type { ptr }
%struct._realm_params_t = type { i32, %struct._realm_options_t, %struct._realm_status_t }
%struct._realm_options_t = type { [128 x i8], %struct._perf_options_t }
%struct._realm_status_t = type { i32, ptr }
%struct.passwd = type { ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.group = type { ptr, ptr, i32, ptr }
%struct._turn_dbdriver_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@STUN_ALPN = dso_local global [128 x i8] c"stun.nat-discovery\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16, !dbg !0
@TURN_ALPN = dso_local global [128 x i8] c"stun.turn\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16, !dbg !500
@HTTP_ALPN = dso_local global [128 x i8] c"http/1.1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16, !dbg !505
@.str = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1, !dbg !507
@.str.1 = private unnamed_addr constant [33 x i8] c"UDP listening socket per session\00", align 1, !dbg !510
@.str.2 = private unnamed_addr constant [32 x i8] c"UDP thread per network endpoint\00", align 1, !dbg !515
@.str.3 = private unnamed_addr constant [24 x i8] c"UDP thread per CPU core\00", align 1, !dbg !520
@turn_params = dso_local global %struct._turn_params_ { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 2, [1025 x i8] zeroinitializer, [33 x i8] zeroinitializer, [1025 x i8] zeroinitializer, [1025 x i8] c"turn_server_cert.pem\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [1025 x i8] c"turn_server_pkey.pem\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [513 x i8] zeroinitializer, [1025 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, %union.pthread_mutex_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, [1025 x i8] c"/var/run/turnserver.pid\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [1025 x i8] zeroinitializer, i32 3478, i32 5349, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, [1025 x i8] zeroinitializer, [1025 x i8] zeroinitializer, i32 0, %struct.listener_server zeroinitializer, %struct._ip_range_list zeroinitializer, %struct._ip_range_list zeroinitializer, i32 0, [4 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], i16 -16384, i16 -1, i32 0, i32 0, i32 0, [1025 x i8] zeroinitializer, i64 0, ptr null, i32 0, ptr null, i8 1, i8 0, [1025 x i8] zeroinitializer, [1025 x i8] zeroinitializer, i32 0, %struct._turn_server_addrs_list zeroinitializer, i32 0, %struct._turn_server_addrs_list zeroinitializer, %struct._turn_server_addrs_list zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 58, i32 600, i32 3600, i32 600, i32 300, i32 0, i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, i32 0, i32 0, %struct._default_users_db_t zeroinitializer, i64 2, [1025 x i8] zeroinitializer, [1025 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0 }, align 8, !dbg !525
@.str.4 = private unnamed_addr constant [9 x i8] c"169.254.\00", align 1, !dbg !844
@.str.5 = private unnamed_addr constant [8 x i8] c"0.0.0.0\00", align 1, !dbg !849
@.str.6 = private unnamed_addr constant [5 x i8] c"fe80\00", align 1, !dbg !851
@.str.7 = private unnamed_addr constant [3 x i8] c"::\00", align 1, !dbg !856
@.str.8 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1, !dbg !861
@.str.9 = private unnamed_addr constant [2 x i8] c"w\00", align 1, !dbg !864
@IS_TURN_SERVER = external global i32, align 4
@.str.10 = private unnamed_addr constant [10 x i8] c"turnadmin\00", align 1, !dbg !869
@long_options = internal constant [109 x %struct.myoption] [%struct.myoption { ptr @.str.57, i32 1, ptr null, i32 100 }, %struct.myoption { ptr @.str.58, i32 1, ptr null, i32 112 }, %struct.myoption { ptr @.str.59, i32 1, ptr null, i32 263 }, %struct.myoption { ptr @.str.60, i32 1, ptr null, i32 264 }, %struct.myoption { ptr @.str.61, i32 1, ptr null, i32 265 }, %struct.myoption { ptr @.str.62, i32 1, ptr null, i32 258 }, %struct.myoption { ptr @.str.63, i32 1, ptr null, i32 76 }, %struct.myoption { ptr @.str.64, i32 1, ptr null, i32 105 }, %struct.myoption { ptr @.str.65, i32 1, ptr null, i32 69 }, %struct.myoption { ptr @.str.66, i32 1, ptr null, i32 88 }, %struct.myoption { ptr @.str.67, i32 1, ptr null, i32 109 }, %struct.myoption { ptr @.str.68, i32 1, ptr null, i32 269 }, %struct.myoption { ptr @.str.69, i32 1, ptr null, i32 270 }, %struct.myoption { ptr @.str.70, i32 2, ptr null, i32 97 }, %struct.myoption { ptr @.str.71, i32 2, ptr null, i32 122 }, %struct.myoption { ptr @.str.72, i32 1, ptr null, i32 117 }, %struct.myoption { ptr @.str.73, i32 1, ptr null, i32 98 }, %struct.myoption { ptr @.str.74, i32 1, ptr null, i32 98 }, %struct.myoption { ptr @.str.75, i32 1, ptr null, i32 101 }, %struct.myoption { ptr @.str.76, i32 1, ptr null, i32 101 }, %struct.myoption { ptr @.str.77, i32 1, ptr null, i32 77 }, %struct.myoption { ptr @.str.78, i32 1, ptr null, i32 74 }, %struct.myoption { ptr @.str.79, i32 1, ptr null, i32 78 }, %struct.myoption { ptr @.str.80, i32 1, ptr null, i32 79 }, %struct.myoption { ptr @.str.81, i32 2, ptr null, i32 275 }, %struct.myoption { ptr @.str.82, i32 2, ptr null, i32 276 }, %struct.myoption { ptr @.str.83, i32 1, ptr null, i32 281 }, %struct.myoption { ptr @.str.84, i32 2, ptr null, i32 277 }, %struct.myoption { ptr @.str.85, i32 2, ptr null, i32 278 }, %struct.myoption { ptr @.str.86, i32 2, ptr null, i32 279 }, %struct.myoption { ptr @.str.87, i32 2, ptr null, i32 282 }, %struct.myoption { ptr @.str.88, i32 1, ptr null, i32 114 }, %struct.myoption { ptr @.str.89, i32 1, ptr null, i32 329 }, %struct.myoption { ptr @.str.90, i32 2, ptr null, i32 330 }, %struct.myoption { ptr @.str.91, i32 1, ptr null, i32 113 }, %struct.myoption { ptr @.str.92, i32 1, ptr null, i32 81 }, %struct.myoption { ptr @.str.93, i32 1, ptr null, i32 115 }, %struct.myoption { ptr @.str.94, i32 1, ptr null, i32 66 }, %struct.myoption { ptr @.str.95, i32 2, ptr null, i32 118 }, %struct.myoption { ptr @.str.96, i32 2, ptr null, i32 86 }, %struct.myoption { ptr @.str.97, i32 2, ptr null, i32 111 }, %struct.myoption { ptr @.str.98, i32 2, ptr null, i32 331 }, %struct.myoption { ptr @.str.99, i32 2, ptr null, i32 331 }, %struct.myoption { ptr @.str.100, i32 2, ptr null, i32 102 }, %struct.myoption { ptr @.str.101, i32 2, ptr null, i32 325 }, %struct.myoption { ptr @.str.102, i32 2, ptr null, i32 256 }, %struct.myoption { ptr @.str.103, i32 2, ptr null, i32 257 }, %struct.myoption { ptr @.str.104, i32 2, ptr null, i32 259 }, %struct.myoption { ptr @.str.105, i32 2, ptr null, i32 260 }, %struct.myoption { ptr @.str.106, i32 2, ptr null, i32 261 }, %struct.myoption { ptr @.str.107, i32 2, ptr null, i32 262 }, %struct.myoption { ptr @.str.108, i32 2, ptr null, i32 271 }, %struct.myoption { ptr @.str.109, i32 2, ptr null, i32 272 }, %struct.myoption { ptr @.str.110, i32 2, ptr null, i32 273 }, %struct.myoption { ptr @.str.111, i32 2, ptr null, i32 274 }, %struct.myoption { ptr @.str.112, i32 2, ptr null, i32 83 }, %struct.myoption { ptr @.str.113, i32 2, ptr null, i32 302 }, %struct.myoption { ptr @.str.114, i32 1, ptr null, i32 266 }, %struct.myoption { ptr @.str.115, i32 1, ptr null, i32 267 }, %struct.myoption { ptr @.str.116, i32 1, ptr null, i32 268 }, %struct.myoption { ptr @.str.117, i32 1, ptr null, i32 108 }, %struct.myoption { ptr @.str.118, i32 2, ptr null, i32 283 }, %struct.myoption { ptr @.str.119, i32 2, ptr null, i32 284 }, %struct.myoption { ptr @.str.120, i32 2, ptr null, i32 285 }, %struct.myoption { ptr @.str.121, i32 2, ptr null, i32 286 }, %struct.myoption { ptr @.str.122, i32 1, ptr null, i32 287 }, %struct.myoption { ptr @.str.123, i32 1, ptr null, i32 288 }, %struct.myoption { ptr @.str.124, i32 2, ptr null, i32 289 }, %struct.myoption { ptr @.str.125, i32 1, ptr null, i32 290 }, %struct.myoption { ptr @.str.126, i32 1, ptr null, i32 291 }, %struct.myoption { ptr @.str.127, i32 1, ptr null, i32 67 }, %struct.myoption { ptr @.str.128, i32 1, ptr null, i32 294 }, %struct.myoption { ptr @.str.129, i32 2, ptr null, i32 292 }, %struct.myoption { ptr @.str.130, i32 2, ptr null, i32 293 }, %struct.myoption { ptr @.str.131, i32 1, ptr null, i32 295 }, %struct.myoption { ptr @.str.132, i32 1, ptr null, i32 296 }, %struct.myoption { ptr @.str.133, i32 1, ptr null, i32 297 }, %struct.myoption { ptr @.str.134, i32 1, ptr null, i32 298 }, %struct.myoption { ptr @.str.135, i32 2, ptr null, i32 299 }, %struct.myoption { ptr @.str.136, i32 1, ptr null, i32 300 }, %struct.myoption { ptr @.str.137, i32 1, ptr null, i32 301 }, %struct.myoption { ptr @.str.138, i32 1, ptr null, i32 303 }, %struct.myoption { ptr @.str.139, i32 1, ptr null, i32 304 }, %struct.myoption { ptr @.str.140, i32 2, ptr null, i32 305 }, %struct.myoption { ptr @.str.141, i32 2, ptr null, i32 306 }, %struct.myoption { ptr @.str.142, i32 1, ptr null, i32 307 }, %struct.myoption { ptr @.str.143, i32 1, ptr null, i32 308 }, %struct.myoption { ptr @.str.144, i32 1, ptr null, i32 309 }, %struct.myoption { ptr @.str.145, i32 2, ptr null, i32 310 }, %struct.myoption { ptr @.str.146, i32 1, ptr null, i32 311 }, %struct.myoption { ptr @.str.147, i32 1, ptr null, i32 312 }, %struct.myoption { ptr @.str.148, i32 2, ptr null, i32 313 }, %struct.myoption { ptr @.str.149, i32 2, ptr null, i32 314 }, %struct.myoption { ptr @.str.150, i32 1, ptr null, i32 315 }, %struct.myoption { ptr @.str.151, i32 1, ptr null, i32 316 }, %struct.myoption { ptr @.str.152, i32 2, ptr null, i32 317 }, %struct.myoption { ptr @.str.153, i32 2, ptr null, i32 318 }, %struct.myoption { ptr @.str.154, i32 1, ptr null, i32 319 }, %struct.myoption { ptr @.str.155, i32 2, ptr null, i32 320 }, %struct.myoption { ptr @.str.156, i32 2, ptr null, i32 321 }, %struct.myoption { ptr @.str.157, i32 2, ptr null, i32 322 }, %struct.myoption { ptr @.str.158, i32 2, ptr null, i32 323 }, %struct.myoption { ptr @.str.159, i32 2, ptr null, i32 324 }, %struct.myoption { ptr @.str.160, i32 1, ptr null, i32 333 }, %struct.myoption { ptr @.str.161, i32 2, ptr null, i32 75 }, %struct.myoption { ptr @.str.162, i32 1, ptr null, i32 65 }, %struct.myoption { ptr @.str.163, i32 1, ptr null, i32 334 }, %struct.myoption { ptr @.str.164, i32 2, ptr null, i32 335 }, %struct.myoption zeroinitializer], align 16, !dbg !1314
@.str.11 = private unnamed_addr constant [58 x i8] c"c:d:p:L:E:X:i:m:l:r:u:b:B:e:M:J:N:O:q:Q:s:C:K:A:vVofhznaS\00", align 1, !dbg !874
@optarg = external global ptr, align 8
@use_new_log_timestamp_format = external global i32, align 4
@optind = external global i32, align 4
@.str.12 = private unnamed_addr constant [17 x i8] c"Domain name: %s\0A\00", align 1, !dbg !879
@.str.13 = private unnamed_addr constant [19 x i8] c"Default realm: %s\0A\00", align 1, !dbg !884
@.str.14 = private unnamed_addr constant [23 x i8] c"ACME redirect URL: %s\0A\00", align 1, !dbg !889
@.str.15 = private unnamed_addr constant [23 x i8] c"oAuth server name: %s\0A\00", align 1, !dbg !894
@.str.16 = private unnamed_addr constant [96 x i8] c"\0ACONFIG ERROR: If you set the --bps-capacity option, then you must set --max-bps options, too.\0A\00", align 1, !dbg !896
@.str.17 = private unnamed_addr constant [83 x i8] c"\0ACONFIG ERROR: --no-udp-relay and --no-tcp-relay options cannot be used together.\0A\00", align 1, !dbg !901
@.str.18 = private unnamed_addr constant [63 x i8] c"\0ACONFIG: --no-udp-relay: UDP relay endpoints are not allowed.\0A\00", align 1, !dbg !906
@.str.19 = private unnamed_addr constant [63 x i8] c"\0ACONFIG: --no-tcp-relay: TCP relay endpoints are not allowed.\0A\00", align 1, !dbg !911
@.str.20 = private unnamed_addr constant [70 x i8] c"\0ACONFIG: WARNING: --server-relay: NON-STANDARD AND DANGEROUS OPTION.\0A\00", align 1, !dbg !913
@.str.21 = private unnamed_addr constant [7 x i8] c"TURNDB\00", align 1, !dbg !918
@.str.22 = private unnamed_addr constant [44 x i8] c"\0ACONFIGURATION ALERT: Unknown argument: %s\0A\00", align 1, !dbg !923
@use_lt_credentials = internal global i32 0, align 4, !dbg !1593
@anon_credentials = internal global i32 0, align 4, !dbg !1595
@.str.23 = private unnamed_addr constant [59 x i8] c"\0ACONFIG ERROR: -a and -z options cannot be used together.\0A\00", align 1, !dbg !928
@use_ltc = internal global i32 0, align 4, !dbg !1597
@use_tltc = internal global i32 0, align 4, !dbg !1599
@.str.24 = private unnamed_addr constant [276 x i8] c"\0ACONFIGURATION ALERT: You specified --lt-cred-mech and --use-auth-secret in the same time.\0ABe aware that you could not mix the username/password and the shared secret based auth methods. \0AShared secret overrides username/password based auth method. Check your configuration!\0A\00", align 1, !dbg !933
@.str.25 = private unnamed_addr constant [106 x i8] c"CONFIG WARNING: allow_loopback_peers opens a possible security vulnerability. Do not use in production!!\0A\00", align 1, !dbg !938
@cli_password = external global [129 x i8], align 16
@use_cli = external global i32, align 4
@.str.26 = private unnamed_addr constant [85 x i8] c"\0ACONFIG ERROR: allow_loopback_peers and empty cli password cannot be used together.\0A\00", align 1, !dbg !943
@.str.27 = private unnamed_addr constant [114 x i8] c"\0ACONFIG ERROR: Empty cli-password, and so telnet cli interface is disabled! Please set a non empty cli-password!\0A\00", align 1, !dbg !948
@.str.28 = private unnamed_addr constant [244 x i8] c"\0ACONFIGURATION ALERT: you specified long-term user accounts, (-u option) \0A\09but you did not specify the long-term credentials option\0A\09(-a or --lt-cred-mech option).\0A \09I am turning --lt-cred-mech ON for you, but double-check your configuration.\0A\00", align 1, !dbg !953
@.str.29 = private unnamed_addr constant [162 x i8] c"\0ACONFIGURATION ALERT: you did specify the long-term credentials usage\0A but you did not specify the default realm option (-r option).\0A\09\09Check your configuration.\0A\00", align 1, !dbg !958
@.str.30 = private unnamed_addr constant [181 x i8] c"\0ACONFIGURATION ALERT: you specified user accounts, (-u option) \0A\09but you also specified the anonymous user access option (-z or --no-auth option).\0A \09User accounts will be ignored.\0A\00", align 1, !dbg !963
@.str.31 = private unnamed_addr constant [49 x i8] c"NO EXPLICIT LISTENER ADDRESS(ES) ARE CONFIGURED\0A\00", align 1, !dbg !968
@.str.32 = private unnamed_addr constant [54 x i8] c"===========Discovering listener addresses: =========\0A\00", align 1, !dbg !973
@.str.33 = private unnamed_addr constant [57 x i8] c"%s: Cannot configure any meaningful IP listener address\0A\00", align 1, !dbg !978
@__FUNCTION__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1, !dbg !983
@stderr = external global ptr, align 8
@.str.34 = private unnamed_addr constant [5 x i8] c"\0A%s\0A\00", align 1, !dbg !986
@Usage = internal global [20179 x i8] c"Usage: turnserver [options]\0AOptions:\0A -d, --listening-device\09<device-name>\09\09Listener interface device (NOT RECOMMENDED. Optional, Linux only).\0A -p, --listening-port\09\09<port>\09\09TURN listener port (Default: 3478).\0A\09\09\09\09\09\09Note: actually, TLS & DTLS sessions can connect to the \22plain\22 TCP & UDP port(s), too,\0A\09\09\09\09\09\09if allowed by configuration.\0A --tls-listening-port\09\09<port>\09\09TURN listener port for TLS & DTLS listeners\0A\09\09\09\09\09\09(Default: 5349).\0A\09\09\09\09\09\09Note: actually, \22plain\22 TCP & UDP sessions can connect to the TLS & DTLS port(s), too,\0A\09\09\09\09\09\09if allowed by configuration. The TURN server\0A\09\09\09\09\09\09\22automatically\22 recognizes the type of traffic. Actually, two listening\0A\09\09\09\09\09\09endpoints (the \22plain\22 one and the \22tls\22 one) are equivalent in terms of\0A\09\09\09\09\09\09functionality; but we keep both endpoints to satisfy the RFC 5766 specs.\0A\09\09\09\09\09\09For secure TCP connections, we currently support SSL version 3 and\0A\09\09\09\09\09\09TLS versions 1.0, 1.1 and 1.2. For secure UDP connections, we support\0A\09\09\09\09\09\09DTLS version 1.\0A --alt-listening-port<port>\09<port>\09\09Alternative listening port for STUN CHANGE_REQUEST (in RFC 5780 sense, \0A                                                or in old RFC 3489 sense, default is \22listening port plus one\22).\0A --alt-tls-listening-port\09<port>\09\09Alternative listening port for TLS and DTLS,\0A \09\09\09\09\09\09the default is \22TLS/DTLS port plus one\22.\0A --tcp-proxy-port\09\09<port>\09\09Support connections from TCP loadbalancer on this port. The loadbalancer should\0A\09\09\09\09\09\09use the binary proxy protocol (https://www.haproxy.org/download/1.8/doc/proxy-protocol.txt)\0A -L, --listening-ip\09\09<ip>\09\09Listener IP address of relay server. Multiple listeners can be specified.\0A --aux-server\09\09\09<ip:port>\09Auxiliary STUN/TURN server listening endpoint.\0A\09\09\09\09\09\09Auxiliary servers do not have alternative ports and\0A\09\09\09\09\09\09they do not support RFC 5780 functionality (CHANGE REQUEST).\0A\09\09\09\09\09\09Valid formats are 1.2.3.4:5555 for IPv4 and [1:2::3:4]:5555 for IPv6.\0A --udp-self-balance\09\09\09\09(recommended for older Linuxes only) Automatically balance UDP traffic\0A\09\09\09\09\09\09over auxiliary servers (if configured).\0A\09\09\09\09\09\09The load balancing is using the ALTERNATE-SERVER mechanism.\0A\09\09\09\09\09\09The TURN client must support 300 ALTERNATE-SERVER response for this functionality.\0A -i, --relay-device\09\09<device-name>\09Relay interface device for relay sockets (NOT RECOMMENDED. Optional, Linux only).\0A -E, --relay-ip\09\09<ip>\09\09\09Relay address (the local IP address that will be used to relay the\0A\09\09\09\09\09\09packets to the peer).\0A\09\09\09\09\09\09Multiple relay addresses may be used.\0A\09\09\09\09\09\09The same IP(s) can be used as both listening IP(s) and relay IP(s).\0A\09\09\09\09\09\09If no relay IP(s) specified, then the turnserver will apply the default\0A\09\09\09\09\09\09policy: it will decide itself which relay addresses to be used, and it\0A\09\09\09\09\09\09will always be using the client socket IP address as the relay IP address\0A\09\09\09\09\09\09of the TURN session (if the requested relay address family is the same\0A\09\09\09\09\09\09as the family of the client socket).\0A -X, --external-ip  <public-ip[/private-ip]>\09TURN Server public/private address mapping, if the server is behind NAT.\0A\09\09\09\09\09\09In that situation, if a -X is used in form \22-X ip\22 then that ip will be reported\0A\09\09\09\09\09\09as relay IP address of all allocations. This scenario works only in a simple case\0A\09\09\09\09\09\09when one single relay address is be used, and no STUN CHANGE_REQUEST\0A\09\09\09\09\09\09functionality is required.\0A\09\09\09\09\09\09That single relay address must be mapped by NAT to the 'external' IP.\0A\09\09\09\09\09\09For that 'external' IP, NAT must forward ports directly (relayed port 12345\0A\09\09\09\09\09\09must be always mapped to the same 'external' port 12345).\0A\09\09\09\09\09\09In more complex case when more than one IP address is involved,\0A\09\09\09\09\09\09that option must be used several times in the command line, each entry must\0A\09\09\09\09\09\09have form \22-X public-ip/private-ip\22, to map all involved addresses.\0A --allow-loopback-peers\09\09\09\09Allow peers on the loopback addresses (127.x.x.x and ::1).\0A --no-multicast-peers\09\09\09\09Disallow peers on well-known broadcast addresses (224.0.0.0 and above, and FFXX:*).\0A -m, --relay-threads\09\09<number>\09Number of relay threads to handle the established connections\0A\09\09\09\09\09\09(in addition to authentication thread and the listener thread).\0A\09\09\09\09\09\09If explicitly set to 0 then application runs in single-threaded mode.\0A\09\09\09\09\09\09If not set then a default OS-dependent optimal algorithm will be employed.\0A\09\09\09\09\09\09The default thread number is the number of CPUs.\0A\09\09\09\09\09\09In older systems (pre-Linux 3.9) the number of UDP relay threads always equals\0A\09\09\09\09\09\09the number of listening endpoints (unless -m 0 is set).\0A --min-port\09\09\09<port>\09\09Lower bound of the UDP port range for relay endpoints allocation.\0A\09\09\09\09\09\09Default value is 49152, according to RFC 5766.\0A --max-port\09\09\09<port>\09\09Upper bound of the UDP port range for relay endpoints allocation.\0A\09\09\09\09\09\09Default value is 65535, according to RFC 5766.\0A -v, --verbose\09\09\09\09\09'Moderate' verbose mode.\0A -V, --Verbose\09\09\09\09\09Extra verbose mode, very annoying (for debug purposes only).\0A -o, --daemon\09\09\09\09\09Start process as daemon (detach from current shell).\0A --no-software-attribute\09 \09\09Production mode: hide the software version (formerly --prod).\0A -f, --fingerprint\09\09\09\09Use fingerprints in the TURN messages.\0A -a, --lt-cred-mech\09\09\09\09Use the long-term credential mechanism.\0A -z, --no-auth\09\09\09\09\09Do not use any credential mechanism, allow anonymous access.\0A -u, --user\09\09\09<user:pwd>\09User account, in form 'username:password', for long-term credentials.\0A\09\09\09\09\09\09Cannot be used with TURN REST API.\0A -r, --realm\09\09\09<realm>\09\09The default realm to be used for the users when no explicit\0A\09\09\09\09\09\09origin/realm relationship was found in the database.\0A\09\09\09\09\09\09Must be used with long-term credentials \0A\09\09\09\09\09\09mechanism or with TURN REST API.\0A --check-origin-consistency\09\09\09The flag that sets the origin consistency check:\0A\09\09\09\09\09\09across the session, all requests must have the same\0A\09\09\09\09\09\09main ORIGIN attribute value (if the ORIGIN was\0A\09\09\09\09\09\09initially used by the session).\0A -q, --user-quota\09\09<number>\09Per-user allocation quota: how many concurrent allocations a user can create.\0A\09\09\09\09\09\09This option can also be set through the database, for a particular realm.\0A -Q, --total-quota\09\09<number>\09Total allocations quota: global limit on concurrent allocations.\0A\09\09\09\09\09\09This option can also be set through the database, for a particular realm.\0A -s, --max-bps\09\09\09<number>\09Default max bytes-per-second bandwidth a TURN session is allowed to handle\0A\09\09\09\09\09\09(input and output network streams are treated separately). Anything above\0A\09\09\09\09\09\09that limit will be dropped or temporary suppressed\0A\09\09\09\09\09\09(within the available buffer limits).\0A\09\09\09\09\09\09This option can also be set through the database, for a particular realm.\0A -B, --bps-capacity\09\09<number>\09Maximum server capacity.\0A\09\09\09\09\09\09Total bytes-per-second bandwidth the TURN server is allowed to allocate\0A\09\09\09\09\09\09for the sessions, combined (input and output network streams are treated separately).\0A -c\09\09\09\09<filename>\09Configuration file name (default - turnserver.conf).\0A -b, , --db, --userdb\09<filename>\09\09SQLite database file name; default - /var/db/turndb or\0A\09\09\09\09\09\09    /usr/local/var/db/turndb or /var/lib/turn/turndb.\0A -e, --psql-userdb, --sql-userdb <conn-string>\09PostgreSQL database connection string, if used (default - empty, no PostreSQL DB used).\0A\09\09                                This database can be used for long-term credentials mechanism users,\0A\09\09                                and it can store the secret value(s) for secret-based timed authentication in TURN REST API.\0A\09\09\09\09\09\09See http://www.postgresql.org/docs/8.4/static/libpq-connect.html for 8.x PostgreSQL\0A\09\09\09\09\09\09versions format, see \0A\09\09\09\09\09\09http://www.postgresql.org/docs/9.2/static/libpq-connect.html#LIBPQ-CONNSTRING\0A\09\09\09\09\09\09for 9.x and newer connection string formats.\0A -M, --mysql-userdb\09<connection-string>\09MySQL database connection string, if used (default - empty, no MySQL DB used).\0A\09                                \09This database can be used for long-term credentials mechanism users,\0A\09\09                                and it can store the secret value(s) for secret-based timed authentication in TURN REST API.\0A\09\09\09\09\09\09The connection string my be space-separated list of parameters:\0A\09        \09          \09\09\22host=<ip-addr> dbname=<database-name> user=<database-user> \\\0A\09\09\09\09\09\09\09password=<database-user-password> port=<db-port> connect_timeout=<seconds> read_timeout=<seconds>\22.\0A\0A\09\09\09\09\09\09The connection string parameters for the secure communications (SSL):\0A\09\09\09\09\09\09ca, capath, cert, key, cipher\0A\09\09\09\09\09\09(see http://dev.mysql.com/doc/refman/5.1/en/ssl-options.html for the\0A\09\09\09\09\09\09command options description).\0A\0A\09        \09          \09\09All connection-string parameters are optional.\0A\0A --secret-key-file\09<filename>\09\09This is the file path which contain secret key of aes encryption while using MySQL password encryption.\0A\09\09\09\09\09\09If you want to use in the MySQL connection string the password in encrypted format,\0A\09\09\09\09\09\09then set in this option the file path of the secret key. The key which is used to encrypt MySQL password.\0A\09\09\09\09\09\09Warning: If this option is set, then MySQL password must be set in \22mysql-userdb\22 option in encrypted format!\0A\09\09\09\09\09\09If you want to use cleartext password then do not set this option!\0A -J, --mongo-userdb\09<connection-string>\09MongoDB connection string, if used (default - empty, no MongoDB used).\0A\09                                \09This database can be used for long-term credentials mechanism users,\0A\09\09                                and it can store the secret value(s) for secret-based timed authentication in TURN REST API.\0A -N, --redis-userdb\09<connection-string>\09Redis user database connection string, if used (default - empty, no Redis DB used).\0A\09                                \09This database can be used for long-term credentials mechanism users,\0A\09\09                                and it can store the secret value(s) for secret-based timed authentication in TURN REST API.\0A\09\09\09\09\09\09The connection string my be space-separated list of parameters:\0A\09        \09          \09\09\22host=<ip-addr> dbname=<db-number> \\\0A\09\09\09\09\09\09\09\09password=<database-user-password> port=<db-port> connect_timeout=<seconds>\22.\0A\0A\09        \09          \09\09All connection-string parameters are optional.\0A\0A -O, --redis-statsdb\09<connection-string>\09Redis status and statistics database connection string, if used \0A\09\09\09\09\09\09(default - empty, no Redis stats DB used).\0A\09                                \09This database keeps allocations status information, and it can be also used for publishing\0A\09\09                                and delivering traffic and allocation event notifications.\0A\09\09\09\09\09\09The connection string has the same parameters as redis-userdb connection string.\0A --prometheus\09\09\09\09\09Enable prometheus metrics. It is disabled by default. If it is enabled it will listen on port 9641 unther the path /metrics\0A\09\09\09\09\09\09also the path / on this port can be used as a health check\0A --use-auth-secret\09\09\09\09TURN REST API flag.\0A\09\09\09\09\09\09Flag that sets a special authorization option that is based upon authentication secret\0A\09\09\09\09\09\09(TURN Server REST API, see TURNServerRESTAPI.pdf). This option is used with timestamp.\0A --static-auth-secret\09\09<secret>\09'Static' authentication secret value (a string) for TURN REST API only.\0A\09\09\09\09\09\09If not set, then the turn server will try to use the 'dynamic' value\0A\09\09\09\09\09\09in turn_secret table in user database (if present).\0A\09\09\09\09\09\09That database value can be changed on-the-fly\0A\09\09\09\09\09\09by a separate program, so this is why it is 'dynamic'.\0A\09\09\09\09\09\09Multiple shared secrets can be used (both in the database and in the \22static\22 fashion).\0A --no-auth-pings\09\09\09\09Disable periodic health checks to 'dynamic' auth secret tables.\0A --no-dynamic-ip-list\09\09\09\09Do not use dynamic allowed/denied peer ip list.\0A --no-dynamic-realms\09\09\09\09Do not use dynamic realm assignment and options.\0A --server-name\09\09\09\09\09Server name used for\0A\09\09\09\09\09\09the oAuth authentication purposes.\0A\09\09\09\09\09\09The default value is the realm name.\0A --oauth\09\09\09\09\09Support oAuth authentication.\0A -n\09\09\09\09\09\09Do not use configuration file, take all parameters from the command line only.\0A --cert\09\09\09<filename>\09\09Certificate file, PEM format. Same file search rules\0A\09\09\09\09\09\09applied as for the configuration file.\0A\09\09\09\09\09\09If both --no-tls and --no_dtls options\0A\09\09\09\09\09\09are specified, then this parameter is not needed.\0A --pkey\09\09\09<filename>\09\09Private key file, PEM format. Same file search rules\0A\09\09\09\09\09\09applied as for the configuration file.\0A\09\09\09\09\09\09If both --no-tls and --no-dtls options\0A --pkey-pwd\09\09<password>\09\09If the private key file is encrypted, then this password to be used.\0A --cipher-list\09<\22cipher-string\22>\09\09Allowed OpenSSL cipher list for TLS/DTLS connections.\0A\09\09\09\09\09\09Default value is \22DEFAULT\22.\0A --CA-file\09\09<filename>\09\09CA file in OpenSSL format.\0A\09\09\09\09\09\09Forces TURN server to verify the client SSL certificates.\0A\09\09\09\09\09\09By default, no CA is set and no client certificate check is performed.\0A --ec-curve-name\09<curve-name>\09\09Curve name for EC ciphers, if supported by OpenSSL\0A\09\09\09\09\09\09library (TLS and DTLS). The default value is prime256v1,\0A\09\09\09\09\09\09if pre-OpenSSL 1.0.2 is used. With OpenSSL 1.0.2+,\0A\09\09\09\09\09\09an optimal curve will be automatically calculated, if not defined\0A\09\09\09\09\09\09by this option.\0A --dh566\09\09\09\09\09Use 566 bits predefined DH TLS key. Default size of the predefined key is 2066.\0A --dh1066\09\09\09\09\09Use 1066 bits predefined DH TLS key. Default size of the predefined key is 2066.\0A --dh-file\09<dh-file-name>\09\09\09Use custom DH TLS key, stored in PEM format in the file.\0A\09\09\09\09\09\09Flags --dh566 and --dh1066 are ignored when the DH key is taken from a file.\0A --no-tlsv1\09\09\09\09\09Do not allow TLSv1/DTLSv1 protocol.\0A --no-tlsv1_1\09\09\09\09\09Do not allow TLSv1.1 protocol.\0A --no-tlsv1_2\09\09\09\09\09Do not allow TLSv1.2/DTLSv1.2 protocol.\0A --no-udp\09\09\09\09\09Do not start UDP client listeners.\0A --no-tcp\09\09\09\09\09Do not start TCP client listeners.\0A --no-tls\09\09\09\09\09Do not start TLS client listeners.\0A --no-dtls\09\09\09\09\09Do not start DTLS client listeners.\0A --no-udp-relay\09\09\09\09\09Do not allow UDP relay endpoints, use only TCP relay option.\0A --no-tcp-relay\09\09\09\09\09Do not allow TCP relay endpoints, use only UDP relay options.\0A -l, --log-file\09\09<filename>\09\09Option to set the full path name of the log file.\0A\09\09\09\09\09\09By default, the turnserver tries to open a log file in\0A\09\09\09\09\09\09/var/log/turnserver/, /var/log, /var/tmp, /tmp and . (current) directories\0A\09\09\09\09\09\09(which open operation succeeds first that file will be used).\0A\09\09\09\09\09\09With this option you can set the definite log file name.\0A\09\09\09\09\09\09The special names are \22stdout\22 and \22-\22 - they will force everything\0A\09\09\09\09\09\09to the stdout; and \22syslog\22 name will force all output to the syslog.\0A --no-stdout-log\09\09\09\09Flag to prevent stdout log messages.\0A\09\09\09\09\09\09By default, all log messages are going to both stdout and to\0A\09\09\09\09\09\09a log file. With this option everything will be going to the log file only\0A\09\09\09\09\09\09(unless the log file itself is stdout).\0A --syslog\09\09\09\09\09Output all log information into the system log (syslog), do not use the file output.\0A --simple-log\09\09\09\09\09This flag means that no log file rollover will be used, and the log file\0A\09\09\09\09\09\09name will be constructed as-is, without PID and date appendage.\0A\09\09\09\09\09\09This option can be used, for example, together with the logrotate tool.\0A --new-log-timestamp\09\09\09\09Enable full ISO-8601 timestamp in all logs.\0A --new-log-timestamp-format    \09<format>\09Set timestamp format (in strftime(1) format)\0A --log-binding\09\09\09\09\09Log STUN binding request. It is now disabled by default to avoid DoS attacks.\0A --stale-nonce[=<value>]\09\09\09Use extra security with nonce value having limited lifetime (default 600 secs).\0A --max-allocate-lifetime\09<value>\09\09Set the maximum value for the allocation lifetime. Default to 3600 secs.\0A --channel-lifetime\09\09<value>\09\09Set the lifetime for channel binding, default to 600 secs.\0A\09\09\09\09\09\09This value MUST not be changed for production purposes.\0A --permission-lifetime\09\09<value>\09\09Set the value for the lifetime of the permission. Default to 300 secs.\0A\09\09\09\09\09\09This MUST not be changed for production purposes.\0A -S, --stun-only\09\09\09\09Option to set standalone STUN operation only, all TURN requests will be ignored.\0A     --no-stun\09\09\09\09\09Option to suppress STUN functionality, only TURN requests will be processed.\0A --alternate-server\09\09<ip:port>\09Set the TURN server to redirect the allocate requests (UDP and TCP services).\0A\09\09\09\09\09\09Multiple alternate-server options can be set for load balancing purposes.\0A\09\09\09\09\09\09See the docs for more information.\0A --tls-alternate-server\09<ip:port>\09\09Set the TURN server to redirect the allocate requests (DTLS and TLS services).\0A\09\09\09\09\09\09Multiple alternate-server options can be set for load balancing purposes.\0A\09\09\09\09\09\09See the docs for more information.\0A -C, --rest-api-separator\09<SYMBOL>\09This is the timestamp/username separator symbol (character) in TURN REST API.\0A\09\09\09\09\09\09The default value is ':'.\0A --max-allocate-timeout=<seconds>\09\09Max time, in seconds, allowed for full allocation establishment. Default is 60.\0A --allowed-peer-ip=<ip[-ip]> \09\09\09Specifies an ip or range of ips that are explicitly allowed to connect to the \0A\09\09\09\09\09\09turn server. Multiple allowed-peer-ip can be set.\0A --denied-peer-ip=<ip[-ip]> \09\09\09Specifies an ip or range of ips that are not allowed to connect to the turn server.\0A\09\09\09\09\09\09Multiple denied-peer-ip can be set.\0A --pidfile <\22pid-file-name\22>\09\09\09File name to store the pid of the process.\0A\09\09\09\09\09\09Default is /var/run/turnserver.pid (if superuser account is used) or\0A\09\09\09\09\09\09/var/tmp/turnserver.pid .\0A --acme-redirect <URL>\09\09\09\09Redirect ACME, i.e. HTTP GET requests matching '^/.well-known/acme-challenge/(.*)' to '<URL>$1'.\0A\09\09\09\09\09\09Default is '', i.e. no special handling for such requests.\0A --secure-stun\09\09\09\09\09Require authentication of the STUN Binding request.\0A\09\09\09\09\09\09By default, the clients are allowed anonymous access to the STUN Binding functionality.\0A --proc-user <user-name>\09\09\09User name to run the turnserver process.\0A\09\09\09\09\09\09After the initialization, the turnserver process\0A\09\09\09\09\09\09will make an attempt to change the current user ID to that user.\0A --proc-group <group-name>\09\09\09Group name to run the turnserver process.\0A\09\09\09\09\09\09After the initialization, the turnserver process\0A\09\09\09\09\09\09will make an attempt to change the current group ID to that group.\0A --mobility\09\09\09\09\09Mobility with ICE (MICE) specs support.\0A -K, --keep-address-family\09\09\09Deprecated in favor of --allocation-default-address-family!!\0A\09\09\09\09\09\09TURN server allocates address family according TURN\0A\09\09\09\09\09\09Client <=> Server communication address family.\0A\09\09\09\09\09\09!! It breaks RFC6156 section-4.2 (violates default IPv4) !!\0A -A --allocation-default-address-family=<ipv4|ipv6|keep> \09\09Default is IPv4\0A\09\09\09\09\09\09TURN server allocates address family according TURN client requested address family. \0A\09\09\09\09\09\09If address family is not requested explicitly by client, then it falls back to this default.\0A\09\09\09\09\09\09The standard RFC explicitly define actually that this default must be IPv4,\0A                       so use other option values with care!\0A --no-cli\09\09\09\09\09Turn OFF the CLI support. By default it is always ON.\0A --cli-ip=<IP>\09\09\09\09\09Local system IP address to be used for CLI server endpoint. Default value\0A\09\09\09\09\09\09is 127.0.0.1.\0A --cli-port=<port>\09\09\09\09CLI server port. Default is 5766.\0A --cli-password=<password>\09\09\09CLI access password. Default is empty (no password).\0A\09\09\09\09\09\09For the security reasons, it is recommended to use the encrypted\0A\09\09\09\09\09\09for of the password (see the -P command in the turnadmin utility).\0A\09\09\09\09\09\09The dollar signs in the encrypted form must be escaped.\0A --web-admin\09\09\09\09\09Enable Turn Web-admin support. By default it is disabled.\0A --web-admin-ip=<IP>\09\09\09\09Local system IP address to be used for Web-admin server endpoint. Default value\0A\09\09\09\09\09\09is 127.0.0.1.\0A --web-admin-port=<port>\09\09\09Web-admin server port. Default is 8080.\0A --web-admin-listen-on-workers\09\09\09Enable for web-admin server to listens on STUN/TURN workers STUN/TURN ports.\0A\09\09\09\09\09\09By default it is disabled for security reasons!\0A\09\09\09\09\09\09(This behavior used to be the default behavior, and was enabled by default.)\0A --server-relay\09\09\09\09\09Server relay. NON-STANDARD AND DANGEROUS OPTION. Only for those applications\0A\09\09\09\09\09\09when we want to run server applications on the relay endpoints.\0A\09\09\09\09\09\09This option eliminates the IP permissions check on the packets\0A\09\09\09\09\09\09incoming to the relay endpoints.\0A --cli-max-output-sessions\09\09\09Maximum number of output sessions in ps CLI command.\0A\09\09\09\09\09\09This value can be changed on-the-fly in CLI. The default value is 256.\0A --ne=[1|2|3]\09\09\09\09\09Set network engine type for the process (for internal purposes).\0A -h\09\09\09\09\09\09Help\0A\0A\00", align 16, !dbg !1601
@.str.35 = private unnamed_addr constant [55 x i8] c"=====================================================\0A\00", align 1, !dbg !988
@.str.36 = private unnamed_addr constant [39 x i8] c"Total: %d 'real' addresses discovered\0A\00", align 1, !dbg !993
@.str.37 = private unnamed_addr constant [46 x i8] c"NO EXPLICIT RELAY ADDRESS(ES) ARE CONFIGURED\0A\00", align 1, !dbg !998
@.str.38 = private unnamed_addr constant [55 x i8] c"===========Discovering relay addresses: =============\0A\00", align 1, !dbg !1003
@.str.39 = private unnamed_addr constant [38 x i8] c"Total: %d relay addresses discovered\0A\00", align 1, !dbg !1005
@.str.40 = private unnamed_addr constant [44 x i8] c"%s: You must specify the relay address(es)\0A\00", align 1, !dbg !1010
@.str.41 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1, !dbg !1012
@.str.42 = private unnamed_addr constant [4 x i8] c"::1\00", align 1, !dbg !1014
@.str.43 = private unnamed_addr constant [31 x i8] c"-X : Wrong address format: %s\0A\00", align 1, !dbg !1016
@.str.44 = private unnamed_addr constant [36 x i8] c"ERROR: Cannot start daemon process\0A\00", align 1, !dbg !1021
@.str.45 = private unnamed_addr constant [27 x i8] c"Cannot create pid file: %s\00", align 1, !dbg !1026
@.str.46 = private unnamed_addr constant [24 x i8] c"/var/run/turnserver.pid\00", align 1, !dbg !1031
@.str.47 = private unnamed_addr constant [26 x i8] c"/var/spool/turnserver.pid\00", align 1, !dbg !1033
@.str.48 = private unnamed_addr constant [20 x i8] c"/var/turnserver.pid\00", align 1, !dbg !1038
@.str.49 = private unnamed_addr constant [24 x i8] c"/var/tmp/turnserver.pid\00", align 1, !dbg !1043
@.str.50 = private unnamed_addr constant [20 x i8] c"/tmp/turnserver.pid\00", align 1, !dbg !1045
@.str.51 = private unnamed_addr constant [15 x i8] c"turnserver.pid\00", align 1, !dbg !1047
@__const.main.pfs = private unnamed_addr constant [7 x ptr] [ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr null], align 16
@.str.52 = private unnamed_addr constant [5 x i8] c"%lu\0A\00", align 1, !dbg !1052
@.str.53 = private unnamed_addr constant [22 x i8] c"pid file created: %s\0A\00", align 1, !dbg !1054
@.str.54 = private unnamed_addr constant [39 x i8] c"Could not start Prometheus collector!\0A\00", align 1, !dbg !1059
@.str.55 = private unnamed_addr constant [44 x i8] c"Prometheus collector started successfully.\0A\00", align 1, !dbg !1061
@mutex_buf_initialized = internal global i32 0, align 4, !dbg !1621
@mutex_buf = internal global [256 x %union.pthread_mutex_t] zeroinitializer, align 16, !dbg !1063
@.str.56 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1, !dbg !1068
@.str.57 = private unnamed_addr constant [17 x i8] c"listening-device\00", align 1, !dbg !1070
@.str.58 = private unnamed_addr constant [15 x i8] c"listening-port\00", align 1, !dbg !1072
@.str.59 = private unnamed_addr constant [19 x i8] c"tls-listening-port\00", align 1, !dbg !1074
@.str.60 = private unnamed_addr constant [19 x i8] c"alt-listening-port\00", align 1, !dbg !1076
@.str.61 = private unnamed_addr constant [23 x i8] c"alt-tls-listening-port\00", align 1, !dbg !1078
@.str.62 = private unnamed_addr constant [15 x i8] c"tcp-proxy-port\00", align 1, !dbg !1080
@.str.63 = private unnamed_addr constant [13 x i8] c"listening-ip\00", align 1, !dbg !1082
@.str.64 = private unnamed_addr constant [13 x i8] c"relay-device\00", align 1, !dbg !1087
@.str.65 = private unnamed_addr constant [9 x i8] c"relay-ip\00", align 1, !dbg !1089
@.str.66 = private unnamed_addr constant [12 x i8] c"external-ip\00", align 1, !dbg !1091
@.str.67 = private unnamed_addr constant [14 x i8] c"relay-threads\00", align 1, !dbg !1096
@.str.68 = private unnamed_addr constant [9 x i8] c"min-port\00", align 1, !dbg !1098
@.str.69 = private unnamed_addr constant [9 x i8] c"max-port\00", align 1, !dbg !1100
@.str.70 = private unnamed_addr constant [13 x i8] c"lt-cred-mech\00", align 1, !dbg !1102
@.str.71 = private unnamed_addr constant [8 x i8] c"no-auth\00", align 1, !dbg !1104
@.str.72 = private unnamed_addr constant [5 x i8] c"user\00", align 1, !dbg !1106
@.str.73 = private unnamed_addr constant [7 x i8] c"userdb\00", align 1, !dbg !1108
@.str.74 = private unnamed_addr constant [3 x i8] c"db\00", align 1, !dbg !1110
@.str.75 = private unnamed_addr constant [12 x i8] c"psql-userdb\00", align 1, !dbg !1112
@.str.76 = private unnamed_addr constant [11 x i8] c"sql-userdb\00", align 1, !dbg !1114
@.str.77 = private unnamed_addr constant [13 x i8] c"mysql-userdb\00", align 1, !dbg !1119
@.str.78 = private unnamed_addr constant [13 x i8] c"mongo-userdb\00", align 1, !dbg !1121
@.str.79 = private unnamed_addr constant [13 x i8] c"redis-userdb\00", align 1, !dbg !1123
@.str.80 = private unnamed_addr constant [14 x i8] c"redis-statsdb\00", align 1, !dbg !1125
@.str.81 = private unnamed_addr constant [11 x i8] c"prometheus\00", align 1, !dbg !1127
@.str.82 = private unnamed_addr constant [16 x i8] c"use-auth-secret\00", align 1, !dbg !1129
@.str.83 = private unnamed_addr constant [19 x i8] c"static-auth-secret\00", align 1, !dbg !1132
@.str.84 = private unnamed_addr constant [14 x i8] c"no-auth-pings\00", align 1, !dbg !1134
@.str.85 = private unnamed_addr constant [19 x i8] c"no-dynamic-ip-list\00", align 1, !dbg !1136
@.str.86 = private unnamed_addr constant [18 x i8] c"no-dynamic-realms\00", align 1, !dbg !1138
@.str.87 = private unnamed_addr constant [19 x i8] c"secret-ts-exp-time\00", align 1, !dbg !1143
@.str.88 = private unnamed_addr constant [6 x i8] c"realm\00", align 1, !dbg !1145
@.str.89 = private unnamed_addr constant [12 x i8] c"server-name\00", align 1, !dbg !1150
@.str.90 = private unnamed_addr constant [6 x i8] c"oauth\00", align 1, !dbg !1152
@.str.91 = private unnamed_addr constant [11 x i8] c"user-quota\00", align 1, !dbg !1154
@.str.92 = private unnamed_addr constant [12 x i8] c"total-quota\00", align 1, !dbg !1156
@.str.93 = private unnamed_addr constant [8 x i8] c"max-bps\00", align 1, !dbg !1158
@.str.94 = private unnamed_addr constant [13 x i8] c"bps-capacity\00", align 1, !dbg !1160
@.str.95 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1, !dbg !1162
@.str.96 = private unnamed_addr constant [8 x i8] c"Verbose\00", align 1, !dbg !1164
@.str.97 = private unnamed_addr constant [7 x i8] c"daemon\00", align 1, !dbg !1166
@.str.98 = private unnamed_addr constant [5 x i8] c"prod\00", align 1, !dbg !1168
@.str.99 = private unnamed_addr constant [22 x i8] c"no-software-attribute\00", align 1, !dbg !1170
@.str.100 = private unnamed_addr constant [12 x i8] c"fingerprint\00", align 1, !dbg !1172
@.str.101 = private unnamed_addr constant [25 x i8] c"check-origin-consistency\00", align 1, !dbg !1174
@.str.102 = private unnamed_addr constant [7 x i8] c"no-udp\00", align 1, !dbg !1179
@.str.103 = private unnamed_addr constant [7 x i8] c"no-tcp\00", align 1, !dbg !1181
@.str.104 = private unnamed_addr constant [7 x i8] c"no-tls\00", align 1, !dbg !1183
@.str.105 = private unnamed_addr constant [8 x i8] c"no-dtls\00", align 1, !dbg !1185
@.str.106 = private unnamed_addr constant [13 x i8] c"no-udp-relay\00", align 1, !dbg !1187
@.str.107 = private unnamed_addr constant [13 x i8] c"no-tcp-relay\00", align 1, !dbg !1189
@.str.108 = private unnamed_addr constant [12 x i8] c"stale-nonce\00", align 1, !dbg !1191
@.str.109 = private unnamed_addr constant [22 x i8] c"max-allocate-lifetime\00", align 1, !dbg !1193
@.str.110 = private unnamed_addr constant [17 x i8] c"channel-lifetime\00", align 1, !dbg !1195
@.str.111 = private unnamed_addr constant [20 x i8] c"permission-lifetime\00", align 1, !dbg !1197
@.str.112 = private unnamed_addr constant [10 x i8] c"stun-only\00", align 1, !dbg !1199
@.str.113 = private unnamed_addr constant [8 x i8] c"no-stun\00", align 1, !dbg !1201
@.str.114 = private unnamed_addr constant [5 x i8] c"cert\00", align 1, !dbg !1203
@.str.115 = private unnamed_addr constant [5 x i8] c"pkey\00", align 1, !dbg !1205
@.str.116 = private unnamed_addr constant [9 x i8] c"pkey-pwd\00", align 1, !dbg !1207
@.str.117 = private unnamed_addr constant [9 x i8] c"log-file\00", align 1, !dbg !1209
@.str.118 = private unnamed_addr constant [14 x i8] c"no-stdout-log\00", align 1, !dbg !1211
@.str.119 = private unnamed_addr constant [7 x i8] c"syslog\00", align 1, !dbg !1213
@.str.120 = private unnamed_addr constant [11 x i8] c"simple-log\00", align 1, !dbg !1215
@.str.121 = private unnamed_addr constant [18 x i8] c"new-log-timestamp\00", align 1, !dbg !1217
@.str.122 = private unnamed_addr constant [25 x i8] c"new-log-timestamp-format\00", align 1, !dbg !1219
@.str.123 = private unnamed_addr constant [11 x i8] c"aux-server\00", align 1, !dbg !1221
@.str.124 = private unnamed_addr constant [17 x i8] c"udp-self-balance\00", align 1, !dbg !1223
@.str.125 = private unnamed_addr constant [17 x i8] c"alternate-server\00", align 1, !dbg !1225
@.str.126 = private unnamed_addr constant [21 x i8] c"tls-alternate-server\00", align 1, !dbg !1227
@.str.127 = private unnamed_addr constant [19 x i8] c"rest-api-separator\00", align 1, !dbg !1232
@.str.128 = private unnamed_addr constant [21 x i8] c"max-allocate-timeout\00", align 1, !dbg !1234
@.str.129 = private unnamed_addr constant [19 x i8] c"no-multicast-peers\00", align 1, !dbg !1236
@.str.130 = private unnamed_addr constant [21 x i8] c"allow-loopback-peers\00", align 1, !dbg !1238
@.str.131 = private unnamed_addr constant [16 x i8] c"allowed-peer-ip\00", align 1, !dbg !1240
@.str.132 = private unnamed_addr constant [15 x i8] c"denied-peer-ip\00", align 1, !dbg !1242
@.str.133 = private unnamed_addr constant [12 x i8] c"cipher-list\00", align 1, !dbg !1244
@.str.134 = private unnamed_addr constant [8 x i8] c"pidfile\00", align 1, !dbg !1246
@.str.135 = private unnamed_addr constant [12 x i8] c"secure-stun\00", align 1, !dbg !1248
@.str.136 = private unnamed_addr constant [8 x i8] c"CA-file\00", align 1, !dbg !1250
@.str.137 = private unnamed_addr constant [8 x i8] c"dh-file\00", align 1, !dbg !1252
@.str.138 = private unnamed_addr constant [10 x i8] c"proc-user\00", align 1, !dbg !1254
@.str.139 = private unnamed_addr constant [11 x i8] c"proc-group\00", align 1, !dbg !1256
@.str.140 = private unnamed_addr constant [9 x i8] c"mobility\00", align 1, !dbg !1258
@.str.141 = private unnamed_addr constant [7 x i8] c"no-cli\00", align 1, !dbg !1260
@.str.142 = private unnamed_addr constant [7 x i8] c"cli-ip\00", align 1, !dbg !1262
@.str.143 = private unnamed_addr constant [9 x i8] c"cli-port\00", align 1, !dbg !1264
@.str.144 = private unnamed_addr constant [13 x i8] c"cli-password\00", align 1, !dbg !1266
@.str.145 = private unnamed_addr constant [10 x i8] c"web-admin\00", align 1, !dbg !1268
@.str.146 = private unnamed_addr constant [13 x i8] c"web-admin-ip\00", align 1, !dbg !1270
@.str.147 = private unnamed_addr constant [15 x i8] c"web-admin-port\00", align 1, !dbg !1272
@.str.148 = private unnamed_addr constant [28 x i8] c"web-admin-listen-on-workers\00", align 1, !dbg !1274
@.str.149 = private unnamed_addr constant [13 x i8] c"server-relay\00", align 1, !dbg !1279
@.str.150 = private unnamed_addr constant [24 x i8] c"cli-max-output-sessions\00", align 1, !dbg !1281
@.str.151 = private unnamed_addr constant [14 x i8] c"ec-curve-name\00", align 1, !dbg !1283
@.str.152 = private unnamed_addr constant [6 x i8] c"dh566\00", align 1, !dbg !1285
@.str.153 = private unnamed_addr constant [7 x i8] c"dh1066\00", align 1, !dbg !1287
@.str.154 = private unnamed_addr constant [3 x i8] c"ne\00", align 1, !dbg !1289
@.str.155 = private unnamed_addr constant [9 x i8] c"no-sslv2\00", align 1, !dbg !1291
@.str.156 = private unnamed_addr constant [9 x i8] c"no-sslv3\00", align 1, !dbg !1293
@.str.157 = private unnamed_addr constant [9 x i8] c"no-tlsv1\00", align 1, !dbg !1295
@.str.158 = private unnamed_addr constant [11 x i8] c"no-tlsv1_1\00", align 1, !dbg !1297
@.str.159 = private unnamed_addr constant [11 x i8] c"no-tlsv1_2\00", align 1, !dbg !1299
@.str.160 = private unnamed_addr constant [16 x i8] c"secret-key-file\00", align 1, !dbg !1301
@.str.161 = private unnamed_addr constant [20 x i8] c"keep-address-family\00", align 1, !dbg !1303
@.str.162 = private unnamed_addr constant [34 x i8] c"allocation-default-address-family\00", align 1, !dbg !1305
@.str.163 = private unnamed_addr constant [14 x i8] c"acme-redirect\00", align 1, !dbg !1310
@.str.164 = private unnamed_addr constant [12 x i8] c"log-binding\00", align 1, !dbg !1312
@.str.165 = private unnamed_addr constant [4 x i8] c"off\00", align 1, !dbg !1327
@.str.166 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1, !dbg !1329
@.str.167 = private unnamed_addr constant [4 x i8] c"Off\00", align 1, !dbg !1331
@.str.168 = private unnamed_addr constant [3 x i8] c"on\00", align 1, !dbg !1333
@.str.169 = private unnamed_addr constant [3 x i8] c"ON\00", align 1, !dbg !1335
@.str.170 = private unnamed_addr constant [3 x i8] c"On\00", align 1, !dbg !1337
@.str.171 = private unnamed_addr constant [73 x i8] c"Unknown boolean value: %s. You can use on/off, yes/no, 1/0, true/false.\0A\00", align 1, !dbg !1339
@__const.adminmain.po = private unnamed_addr constant %struct._perf_options_t { i64 -1, i32 -1, i32 -1 }, align 8
@admin_long_options = internal constant [37 x %struct.myoption] [%struct.myoption { ptr @.str.181, i32 0, ptr null, i32 80 }, %struct.myoption { ptr @.str.182, i32 0, ptr null, i32 69 }, %struct.myoption { ptr @.str.183, i32 0, ptr null, i32 107 }, %struct.myoption { ptr @.str.184, i32 0, ptr null, i32 97 }, %struct.myoption { ptr @.str.185, i32 0, ptr null, i32 100 }, %struct.myoption { ptr @.str.186, i32 0, ptr null, i32 108 }, %struct.myoption { ptr @.str.187, i32 0, ptr null, i32 76 }, %struct.myoption { ptr @.str.188, i32 1, ptr null, i32 115 }, %struct.myoption { ptr @.str.189, i32 0, ptr null, i32 83 }, %struct.myoption { ptr @.str.190, i32 1, ptr null, i32 88 }, %struct.myoption { ptr @.str.191, i32 0, ptr null, i32 280 }, %struct.myoption { ptr @.str.192, i32 0, ptr null, i32 65 }, %struct.myoption { ptr @.str.193, i32 0, ptr null, i32 68 }, %struct.myoption { ptr @.str.73, i32 1, ptr null, i32 98 }, %struct.myoption { ptr @.str.74, i32 1, ptr null, i32 98 }, %struct.myoption { ptr @.str.75, i32 1, ptr null, i32 101 }, %struct.myoption { ptr @.str.76, i32 1, ptr null, i32 101 }, %struct.myoption { ptr @.str.77, i32 1, ptr null, i32 77 }, %struct.myoption { ptr @.str.78, i32 1, ptr null, i32 74 }, %struct.myoption { ptr @.str.79, i32 1, ptr null, i32 78 }, %struct.myoption { ptr @.str.72, i32 1, ptr null, i32 117 }, %struct.myoption { ptr @.str.88, i32 1, ptr null, i32 114 }, %struct.myoption { ptr @.str.194, i32 1, ptr null, i32 112 }, %struct.myoption { ptr @.str.195, i32 1, ptr null, i32 102 }, %struct.myoption { ptr @.str.196, i32 1, ptr null, i32 118 }, %struct.myoption { ptr @.str.197, i32 1, ptr null, i32 120 }, %struct.myoption { ptr @.str.198, i32 0, ptr null, i32 79 }, %struct.myoption { ptr @.str.199, i32 0, ptr null, i32 82 }, %struct.myoption { ptr @.str.200, i32 1, ptr null, i32 73 }, %struct.myoption { ptr @.str.201, i32 1, ptr null, i32 111 }, %struct.myoption { ptr @.str.202, i32 0, ptr null, i32 103 }, %struct.myoption { ptr @.str.203, i32 0, ptr null, i32 71 }, %struct.myoption { ptr @.str.91, i32 1, ptr null, i32 328 }, %struct.myoption { ptr @.str.92, i32 1, ptr null, i32 327 }, %struct.myoption { ptr @.str.93, i32 1, ptr null, i32 326 }, %struct.myoption { ptr @.str.204, i32 0, ptr null, i32 104 }, %struct.myoption zeroinitializer], align 16, !dbg !1416
@.str.172 = private unnamed_addr constant [49 x i8] c"PEgGORIHKYlLkaADSdb:e:M:J:N:u:r:p:s:X:o:h:x:v:f:\00", align 1, !dbg !1344
@.str.173 = private unnamed_addr constant [63 x i8] c"Wrong user name structure or symbols, choose another name: %s\0A\00", align 1, !dbg !1346
@.str.174 = private unnamed_addr constant [21 x i8] c"Wrong user name: %s\0A\00", align 1, !dbg !1348
@.str.175 = private unnamed_addr constant [17 x i8] c"Wrong realm: %s\0A\00", align 1, !dbg !1350
@.str.176 = private unnamed_addr constant [20 x i8] c"Wrong password: %s\0A\00", align 1, !dbg !1352
@.str.177 = private unnamed_addr constant [2 x i8] c"r\00", align 1, !dbg !1354
@.str.178 = private unnamed_addr constant [22 x i8] c"No such file like %s\0A\00", align 1, !dbg !1356
@.str.179 = private unnamed_addr constant [37 x i8] c"%s: ERROR: Secret-Key file is empty\0A\00", align 1, !dbg !1358
@__FUNCTION__.adminmain = private unnamed_addr constant [10 x i8] c"adminmain\00", align 1, !dbg !1363
@.str.180 = private unnamed_addr constant [44 x i8] c"%s: ERROR: Secret-Key length is not enough\0A\00", align 1, !dbg !1366
@AdminUsage = internal global [2419 x i8] c"Usage: turnadmin [command] [options]\0A\0ACommands:\0A\0A\09-P, --generate-encrypted-password\09Generate and print to the standard\0A\09\09\09\09\09output an encrypted form of a password\0A\09\09\09\09\09(for web admin user or CLI). See wiki, README or man\0A\09\09\09\09\09pages for more detailed description.\0A\09-k, --key\09\09\09generate long-term credential mechanism key for a user\0A\09-a, --add\09\09\09add/update a long-term mechanism user\0A\09-A, --add-admin\09\09\09add/update a web admin user\0A\09-d, --delete\09\09\09delete a long-term mechanism user\0A\09-D, --delete-admin\09\09delete an admin user\0A\09-l, --list\09\09\09list all long-term mechanism users\0A\09-L, --list-admin\09\09list all admin users\0A\09-s, --set-secret=<value>\09Add shared secret for TURN REST API\0A\09-S, --show-secret\09\09Show stored shared secrets for TURN REST API\0A\09-X, --delete-secret=<value>\09Delete a shared secret\0A\09    --delete-all-secrets\09Delete all shared secrets for REST API\0A\09-O, --add-origin\09\09Add origin-to-realm relation.\0A\09-R, --del-origin\09\09Delete origin-to-realm relation.\0A\09-I, --list-origins\09\09List origin-to-realm relations.\0A\09-g, --set-realm-option\09\09Set realm params: max-bps, total-quota, user-quota.\0A\09-G, --list-realm-options\09List realm params.\0A\09-E, --generate-encrypted-password-aes\09Generate and print to the standard\0A\09\09\09\09\09output an encrypted form of password with AES-128\0A\0AOptions with mandatory values:\0A\0A\09-b, --db, --userdb\09\09SQLite database file, default value is /var/db/turndb or\0A\09\09\09\09\09  /usr/local/var/db/turndb or /var/lib/turn/turndb.\0A\09-e, --psql-userdb, --sql-userdb\09PostgreSQL user database connection string, if PostgreSQL DB is used.\0A\09-M, --mysql-userdb\09\09MySQL user database connection string, if MySQL DB is used.\0A\09-J, --mongo-userdb\09\09MongoDB user database connection string, if MongoDB is used.\0A\09-N, --redis-userdb\09\09Redis user database connection string, if Redis DB is used.\0A\09-u, --user\09\09\09Username\0A\09-r, --realm\09\09\09Realm\0A\09-p, --password\09\09\09Password\0A\09-x, --key-path\09\09\09Generates a 128 bit key into the given path.\0A\09-f, --file-key-path\09\09Contains a 128 bit key in the given path.\0A\09-v, --verify\09\09\09Verify a given base64 encrypted type password.\0A\09-o, --origin\09\09\09Origin\0A\09--max-bps\09\09\09Set value of realm's max-bps parameter.\0A\09\09\09\09\09Setting to zero value means removal of the option.\0A\09--total-quota\09\09\09Set value of realm's total-quota parameter.\0A\09\09\09\09\09Setting to zero value means removal of the option.\0A\09--user-quota\09\09\09Set value of realm's user-quota parameter.\0A\09\09\09\09\09Setting to zero value means removal of the option.\0A\09-h, --help\09\09\09Help\0A\00", align 16, !dbg !1419
@.str.181 = private unnamed_addr constant [28 x i8] c"generate-encrypted-password\00", align 1, !dbg !1368
@.str.182 = private unnamed_addr constant [32 x i8] c"generate-encrypted-password-aes\00", align 1, !dbg !1370
@.str.183 = private unnamed_addr constant [4 x i8] c"key\00", align 1, !dbg !1372
@.str.184 = private unnamed_addr constant [4 x i8] c"add\00", align 1, !dbg !1374
@.str.185 = private unnamed_addr constant [7 x i8] c"delete\00", align 1, !dbg !1376
@.str.186 = private unnamed_addr constant [5 x i8] c"list\00", align 1, !dbg !1378
@.str.187 = private unnamed_addr constant [11 x i8] c"list-admin\00", align 1, !dbg !1380
@.str.188 = private unnamed_addr constant [11 x i8] c"set-secret\00", align 1, !dbg !1382
@.str.189 = private unnamed_addr constant [12 x i8] c"show-secret\00", align 1, !dbg !1384
@.str.190 = private unnamed_addr constant [14 x i8] c"delete-secret\00", align 1, !dbg !1386
@.str.191 = private unnamed_addr constant [19 x i8] c"delete-all-secrets\00", align 1, !dbg !1388
@.str.192 = private unnamed_addr constant [10 x i8] c"add-admin\00", align 1, !dbg !1390
@.str.193 = private unnamed_addr constant [13 x i8] c"delete-admin\00", align 1, !dbg !1392
@.str.194 = private unnamed_addr constant [9 x i8] c"password\00", align 1, !dbg !1394
@.str.195 = private unnamed_addr constant [14 x i8] c"file-key-path\00", align 1, !dbg !1396
@.str.196 = private unnamed_addr constant [7 x i8] c"verify\00", align 1, !dbg !1398
@.str.197 = private unnamed_addr constant [9 x i8] c"key-path\00", align 1, !dbg !1400
@.str.198 = private unnamed_addr constant [11 x i8] c"add-origin\00", align 1, !dbg !1402
@.str.199 = private unnamed_addr constant [11 x i8] c"del-origin\00", align 1, !dbg !1404
@.str.200 = private unnamed_addr constant [13 x i8] c"list-origins\00", align 1, !dbg !1406
@.str.201 = private unnamed_addr constant [7 x i8] c"origin\00", align 1, !dbg !1408
@.str.202 = private unnamed_addr constant [17 x i8] c"set-realm-option\00", align 1, !dbg !1410
@.str.203 = private unnamed_addr constant [18 x i8] c"list-realm-option\00", align 1, !dbg !1412
@.str.204 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !1414
@read_config_file.config_file = internal global [1025 x i8] c"turnserver.conf\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16, !dbg !1424
@.str.205 = private unnamed_addr constant [3 x i8] c"-c\00", align 1, !dbg !1430
@.str.206 = private unnamed_addr constant [26 x i8] c"Wrong usage of -c option\0A\00", align 1, !dbg !1432
@.str.207 = private unnamed_addr constant [3 x i8] c"-n\00", align 1, !dbg !1434
@.str.208 = private unnamed_addr constant [3 x i8] c"-h\00", align 1, !dbg !1436
@.str.209 = private unnamed_addr constant [30 x i8] c"Bad configuration format: %s\0A\00", align 1, !dbg !1438
@.str.210 = private unnamed_addr constant [61 x i8] c"Check config! The following line ends with semicolon: \22%s\22 \0A\00", align 1, !dbg !1443
@.str.211 = private unnamed_addr constant [87 x i8] c"WARNING: Cannot find config file: %s. Default and command-line settings will be used.\0A\00", align 1, !dbg !1448
@.str.212 = private unnamed_addr constant [217 x i8] c"WARNING: option -%c is possibly used incorrectly. The short form of the option must be used as this: -%c <value>, no 'equals' sign may be used, that sign is used only with long form options (like --user=<username>).\0A\00", align 1, !dbg !1453
@.str.213 = private unnamed_addr constant [5 x i8] c"ipv6\00", align 1, !dbg !1458
@.str.214 = private unnamed_addr constant [5 x i8] c"keep\00", align 1, !dbg !1460
@.str.215 = private unnamed_addr constant [5 x i8] c"ipv4\00", align 1, !dbg !1462
@.str.216 = private unnamed_addr constant [60 x i8] c"ERROR: invalid allocation_default_address_family parameter\0A\00", align 1, !dbg !1464
@.str.217 = private unnamed_addr constant [48 x i8] c"ERROR: wrong version of the network engine: %d\0A\00", align 1, !dbg !1469
@cli_max_output_sessions = external global i32, align 4
@cli_addr = external global %union.ioa_addr, align 4
@.str.218 = private unnamed_addr constant [28 x i8] c"Cannot set cli address: %s\0A\00", align 1, !dbg !1474
@cli_addr_set = external global i32, align 4
@cli_port = external global i32, align 4
@use_web_admin = external global i32, align 4
@web_admin_addr = external global %union.ioa_addr, align 4
@.str.219 = private unnamed_addr constant [34 x i8] c"Cannot set web-admin address: %s\0A\00", align 1, !dbg !1476
@web_admin_addr_set = external global i32, align 4
@web_admin_port = external global i32, align 4
@.str.220 = private unnamed_addr constant [23 x i8] c"Unknown user name: %s\0A\00", align 1, !dbg !1478
@procuserid = internal global i32 0, align 4, !dbg !1518
@procuserid_set = internal global i32 0, align 4, !dbg !1523
@procusername = internal global [1025 x i8] zeroinitializer, align 16, !dbg !1525
@.str.221 = private unnamed_addr constant [24 x i8] c"Unknown group name: %s\0A\00", align 1, !dbg !1480
@procgroupid = internal global i32 0, align 4, !dbg !1527
@procgroupid_set = internal global i32 0, align 4, !dbg !1531
@procgroupname = internal global [1025 x i8] zeroinitializer, align 16, !dbg !1533
@.str.222 = private unnamed_addr constant [46 x i8] c"WARNING: max number of relay threads is 128.\0A\00", align 1, !dbg !1482
@TURN_MAX_ALLOCATE_TIMEOUT = external global i32, align 4
@TURN_MAX_ALLOCATE_TIMEOUT_STUN_ONLY = external global i32, align 4
@.str.223 = private unnamed_addr constant [43 x i8] c"Whitelisting external-ip private part: %s\0A\00", align 1, !dbg !1484
@.str.224 = private unnamed_addr constant [67 x i8] c"You cannot define external IP more than once in the configuration\0A\00", align 1, !dbg !1489
@.str.225 = private unnamed_addr constant [44 x i8] c"/home/raj/coturn/src/apps/relay/mainrelay.c\00", align 1, !dbg !1494
@__FUNCTION__.set_option = private unnamed_addr constant [11 x i8] c"set_option\00", align 1, !dbg !1496
@.str.226 = private unnamed_addr constant [68 x i8] c"WARNING: Option --secret-ts-exp-time deprecated and has no effect.\0A\00", align 1, !dbg !1499
@.str.227 = private unnamed_addr constant [42 x i8] c"%lu bytes per second allowed per session\0A\00", align 1, !dbg !1504
@.str.228 = private unnamed_addr constant [56 x i8] c"%lu bytes per second allowed, combined server capacity\0A\00", align 1, !dbg !1509
@.str.229 = private unnamed_addr constant [19 x i8] c"White listing: %s\0A\00", align 1, !dbg !1514
@.str.230 = private unnamed_addr constant [19 x i8] c"Black listing: %s\0A\00", align 1, !dbg !1516
@.str.231 = private unnamed_addr constant [64 x i8] c"\0ARFC 3489/5389/5766/5780/6062/6156 STUN/TURN Server\0AVersion %s\0A\00", align 1, !dbg !1535
@.str.232 = private unnamed_addr constant [25 x i8] c"Coturn-4.5.2 'dan Eider'\00", align 1, !dbg !1540
@.str.233 = private unnamed_addr constant [65 x i8] c"\0AMax number of open files/sockets allowed for this process: %lu\0A\00", align 1, !dbg !1542
@.str.234 = private unnamed_addr constant [115 x i8] c"\0ADue to the open files/sockets limitation,\0Amax supported number of TURN Sessions possible is: %lu (approximately)\0A\00", align 1, !dbg !1547
@.str.235 = private unnamed_addr constant [57 x i8] c"\0A\0A==== Show him the instruments, Practical Frost: ====\0A\0A\00", align 1, !dbg !1552
@.str.236 = private unnamed_addr constant [15 x i8] c"TLS supported\0A\00", align 1, !dbg !1554
@.str.237 = private unnamed_addr constant [16 x i8] c"DTLS supported\0A\00", align 1, !dbg !1556
@.str.238 = private unnamed_addr constant [20 x i8] c"DTLS 1.2 supported\0A\00", align 1, !dbg !1558
@.str.239 = private unnamed_addr constant [26 x i8] c"TURN/STUN ALPN supported\0A\00", align 1, !dbg !1560
@.str.240 = private unnamed_addr constant [45 x i8] c"Third-party authorization (oAuth) supported\0A\00", align 1, !dbg !1562
@.str.241 = private unnamed_addr constant [22 x i8] c"GCM (AEAD) supported\0A\00", align 1, !dbg !1567
@.str.242 = private unnamed_addr constant [42 x i8] c"OpenSSL compile-time version: %s (0x%lx)\0A\00", align 1, !dbg !1569
@.str.243 = private unnamed_addr constant [26 x i8] c"OpenSSL 3.0.2 15 Mar 2022\00", align 1, !dbg !1571
@.str.244 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !1573
@.str.245 = private unnamed_addr constant [51 x i8] c"SQLite supported, default database location is %s\0A\00", align 1, !dbg !1575
@.str.246 = private unnamed_addr constant [17 x i8] c"Redis supported\0A\00", align 1, !dbg !1580
@.str.247 = private unnamed_addr constant [22 x i8] c"PostgreSQL supported\0A\00", align 1, !dbg !1582
@.str.248 = private unnamed_addr constant [17 x i8] c"MySQL supported\0A\00", align 1, !dbg !1584
@.str.249 = private unnamed_addr constant [19 x i8] c"MongoDB supported\0A\00", align 1, !dbg !1586
@.str.250 = private unnamed_addr constant [93 x i8] c"Default Net Engine version: %d (%s)\0A\0A=====================================================\0A\0A\00", align 1, !dbg !1588
@.str.251 = private unnamed_addr constant [42 x i8] c"setgid: Unable to change group privileges\00", align 1, !dbg !1606
@.str.252 = private unnamed_addr constant [18 x i8] c"New GID: %s(%lu)\0A\00", align 1, !dbg !1608
@.str.253 = private unnamed_addr constant [19 x i8] c"Keep GID: %s(%lu)\0A\00", align 1, !dbg !1610
@.str.254 = private unnamed_addr constant [41 x i8] c"setuid: Unable to change user privileges\00", align 1, !dbg !1612
@.str.255 = private unnamed_addr constant [18 x i8] c"New UID: %s(%lu)\0A\00", align 1, !dbg !1617
@.str.256 = private unnamed_addr constant [19 x i8] c"Keep UID: %s(%lu)\0A\00", align 1, !dbg !1619
@.str.257 = private unnamed_addr constant [127 x i8] c"\0AWARNING: certificate file is not specified, I cannot start TLS/DTLS services.\0AOnly 'plain' UDP/TCP listeners can be started.\0A\00", align 1, !dbg !1623
@.str.258 = private unnamed_addr constant [127 x i8] c"\0AWARNING: private key file is not specified, I cannot start TLS/DTLS services.\0AOnly 'plain' UDP/TCP listeners can be started.\0A\00", align 1, !dbg !1628
@some_buffer = internal global [65536 x i8] zeroinitializer, align 16, !dbg !1630
@.str.259 = private unnamed_addr constant [3 x i8] c"CA\00", align 1, !dbg !1635
@.str.260 = private unnamed_addr constant [12 x i8] c"certificate\00", align 1, !dbg !1637
@.str.261 = private unnamed_addr constant [12 x i8] c"private key\00", align 1, !dbg !1639
@.str.262 = private unnamed_addr constant [7 x i8] c"DH key\00", align 1, !dbg !1641
@.str.263 = private unnamed_addr constant [44 x i8] c"\0AERROR: you must set the %s file parameter\0A\00", align 1, !dbg !1643
@.str.264 = private unnamed_addr constant [38 x i8] c"WARNING: cannot find %s file: %s (1)\0A\00", align 1, !dbg !1645
@.str.265 = private unnamed_addr constant [38 x i8] c"WARNING: cannot find %s file: %s (2)\0A\00", align 1, !dbg !1647
@.str.266 = private unnamed_addr constant [82 x i8] c"WARNING: cannot start TLS and DTLS listeners because %s file is not set properly\0A\00", align 1, !dbg !1649
@.str.267 = private unnamed_addr constant [6 x i8] c"SSL23\00", align 1, !dbg !1654
@.str.268 = private unnamed_addr constant [7 x i8] c"TLS1.0\00", align 1, !dbg !1656
@.str.269 = private unnamed_addr constant [7 x i8] c"TLS1.1\00", align 1, !dbg !1658
@.str.270 = private unnamed_addr constant [7 x i8] c"TLS1.2\00", align 1, !dbg !1660
@.str.271 = private unnamed_addr constant [22 x i8] c"TLS cipher suite: %s\0A\00", align 1, !dbg !1662
@.str.272 = private unnamed_addr constant [5 x i8] c"DTLS\00", align 1, !dbg !1664
@.str.273 = private unnamed_addr constant [8 x i8] c"DTLS1.2\00", align 1, !dbg !1666
@.str.274 = private unnamed_addr constant [23 x i8] c"DTLS cipher suite: %s\0A\00", align 1, !dbg !1668
@.str.275 = private unnamed_addr constant [8 x i8] c"DEFAULT\00", align 1, !dbg !1670
@.str.276 = private unnamed_addr constant [33 x i8] c"%s: ERROR: no certificate found\0A\00", align 1, !dbg !1672
@.str.277 = private unnamed_addr constant [14 x i8] c": Certificate\00", align 1, !dbg !1674
@.str.278 = private unnamed_addr constant [81 x i8] c"%s: ERROR: no valid private key found, or invalid private key password provided\0A\00", align 1, !dbg !1676
@.str.279 = private unnamed_addr constant [18 x i8] c": Private RSA key\00", align 1, !dbg !1681
@.str.280 = private unnamed_addr constant [14 x i8] c": Private key\00", align 1, !dbg !1683
@.str.281 = private unnamed_addr constant [32 x i8] c"%s: ERROR: invalid private key\0A\00", align 1, !dbg !1685
@.str.282 = private unnamed_addr constant [30 x i8] c"Cannot load CA from file: %s\0A\00", align 1, !dbg !1687
@.str.283 = private unnamed_addr constant [24 x i8] c"unknown curve name: %s\0A\00", align 1, !dbg !1689
@.str.284 = private unnamed_addr constant [11 x i8] c"prime256v1\00", align 1, !dbg !1691
@.str.285 = private unnamed_addr constant [30 x i8] c"%s: ERROR: allocate EC suite\0A\00", align 1, !dbg !1693
@__FUNCTION__.set_ctx = private unnamed_addr constant [8 x i8] c"set_ctx\00", align 1, !dbg !1695
@.str.286 = private unnamed_addr constant [20 x i8] c"Cannot open DH file\00", align 1, !dbg !1698
@.str.287 = private unnamed_addr constant [37 x i8] c"%s: ERROR: cannot allocate DH suite\0A\00", align 1, !dbg !1700
@.str.288 = private unnamed_addr constant [26 x i8] c"%s: ERROR: cannot set DH\0A\00", align 1, !dbg !1702
@.str.289 = private unnamed_addr constant [28 x i8] c"Cannot open Secret-Key file\00", align 1, !dbg !1704
@__const.get_dh566.dh566_p = private unnamed_addr constant [71 x i8] c"6S\A8\9C<\F1\D1\1B-\A2d\DEY;\E3\8C't\C2\BE\9BmV\E7\DF\FFgj\D2\0C\E8\9ER\00\05\B3S\F7\1CA\B2\AC8\162:\8E\90l~\D1D\CB\F9-\1EJ\9A2\81X\E1\E1\17\C1\9C\F1\1E\96-_", align 16
@__const.get_dh566.dh566_g = private unnamed_addr constant [1 x i8] c"\05", align 1
@__const.get_dh1066.dh1066_p = private unnamed_addr constant [134 x i8] c"\02\0E&o\AA\9F\A8\E5?p\88\F1\A9)\AE\1A+\A8/\E8\E5\0E\81x\D7\12A\DC\E2\D5\10o\8A5#\CEf\93g\14\EA\0Aa\D4Cc\\\DF\DE\F5\B9\C6\B4\8C\BA\1A%\9Fs\0F\1E\1A\97B.`\9EL<pj\FB\DD\AAzH\A5\1E\87\C8\A3^&@\1B\DE\08^\A2\B8\E8vC\E8\F1K5L8\92\B9\FFa\E6l\BA\F9\166<i-W\90b\8A\D0\D4\FB\B2Za\99\A9\E8\93\80\A2\B7\DC\B1j\AF\E3", align 16
@__const.get_dh1066.dh1066_g = private unnamed_addr constant [1 x i8] c"\02", align 1
@__const.get_dh2066.dh2066_p = private unnamed_addr constant [259 x i8] c"\031w X\A6i\A3\9D-^\E0\\F\82\0F\9E\80\F0\00*\F9\0Fb\1F\89\CE}*\FD\C5\9A|j`,\F1\DD\D4Mk\CD\E9\95\DBB\97\BA\E4\AFA8\8FW1\A49\DD1\C3o\98\0E\E3\B1C\D16\B0\01(Bq\D3\B06\A0G\99%\9B2\F5\86\B1\13\\$\8D\8D\7F\E2\7F\9A\C1RX\C0c\AA\00|\1F\11\BD\ACL-\E0\A2\9DN!\E4\0B\CD$\92\D27'\84Y\90F/\D5\B9'\93\18\88\BD\91[\87UV\D8\1B\E4\CF\1C\AA\BC\CF\80\1E5-\B1\BC51\92b<\91\8Db\DA\CF\83c\12K0\80\EE\82<,\D2\17\13\1F\F9b3\\c\D8u[\AA\16Z6I\17w\B7t\BD>?\98 Y^\C7r\E8\A3\89!\B4<%\F4\F4!\96Z\A6w\FF,:\FC\98_\C1\BF*\CF\B8bg#\E8/\CC{2\1Bk3g\0A\CB\D0\1Fe\D7\84T\F6\F1\88\B5\BB\0Cce4\E4fK", align 16
@__const.get_dh2066.dh2066_g = private unnamed_addr constant [1 x i8] c"\05", align 1
@.str.290 = private unnamed_addr constant [37 x i8] c"Reloading TLS certificates and keys\0A\00", align 1, !dbg !1706

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_a_local_relay(i32 noundef %0, ptr noundef %1) #0 !dbg !1716 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [46 x i8], align 16
  %9 = alloca ptr, align 8
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1719, metadata !DIExpression()), !dbg !1720
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1721, metadata !DIExpression()), !dbg !1722
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1723, metadata !DIExpression()), !dbg !1740
  store ptr null, ptr %5, align 8, !dbg !1740
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1741, metadata !DIExpression()), !dbg !1742
  store i32 0, ptr %6, align 4, !dbg !1742
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1743, metadata !DIExpression()), !dbg !1744
  store i32 -1, ptr %7, align 4, !dbg !1744
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1745, metadata !DIExpression()), !dbg !1746
  call void @llvm.memset.p0.i64(ptr align 16 %8, i8 0, i64 46, i1 false), !dbg !1746
  %10 = call i32 @getifaddrs(ptr noundef %5) #10, !dbg !1747
  %11 = load ptr, ptr %5, align 8, !dbg !1748
  %12 = icmp ne ptr %11, null, !dbg !1748
  br i1 %12, label %13, label %136, !dbg !1750

13:                                               ; preds = %2
  br label %14, !dbg !1751

14:                                               ; preds = %133, %13
  call void @llvm.dbg.label(metadata !1752), !dbg !1754
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1755, metadata !DIExpression()), !dbg !1757
  store ptr null, ptr %9, align 8, !dbg !1757
  %15 = load ptr, ptr %5, align 8, !dbg !1758
  store ptr %15, ptr %9, align 8, !dbg !1760
  br label %16, !dbg !1761

16:                                               ; preds = %123, %14
  %17 = load ptr, ptr %9, align 8, !dbg !1762
  %18 = icmp ne ptr %17, null, !dbg !1764
  br i1 %18, label %19, label %127, !dbg !1765

19:                                               ; preds = %16
  %20 = load ptr, ptr %9, align 8, !dbg !1766
  %21 = getelementptr inbounds %struct.ifaddrs, ptr %20, i32 0, i32 2, !dbg !1769
  %22 = load i32, ptr %21, align 8, !dbg !1769
  %23 = and i32 %22, 1, !dbg !1770
  %24 = icmp ne i32 %23, 0, !dbg !1770
  br i1 %24, label %26, label %25, !dbg !1771

25:                                               ; preds = %19
  br label %123, !dbg !1772

26:                                               ; preds = %19
  %27 = load ptr, ptr %9, align 8, !dbg !1773
  %28 = getelementptr inbounds %struct.ifaddrs, ptr %27, i32 0, i32 1, !dbg !1775
  %29 = load ptr, ptr %28, align 8, !dbg !1775
  %30 = icmp ne ptr %29, null, !dbg !1776
  br i1 %30, label %32, label %31, !dbg !1777

31:                                               ; preds = %26
  br label %123, !dbg !1778

32:                                               ; preds = %26
  %33 = load ptr, ptr %9, align 8, !dbg !1779
  %34 = getelementptr inbounds %struct.ifaddrs, ptr %33, i32 0, i32 3, !dbg !1781
  %35 = load ptr, ptr %34, align 8, !dbg !1781
  %36 = icmp ne ptr %35, null, !dbg !1782
  br i1 %36, label %38, label %37, !dbg !1783

37:                                               ; preds = %32
  br label %123, !dbg !1784

38:                                               ; preds = %32
  %39 = load i32, ptr %6, align 4, !dbg !1785
  %40 = icmp ne i32 %39, 0, !dbg !1785
  br i1 %40, label %48, label %41, !dbg !1787

41:                                               ; preds = %38
  %42 = load ptr, ptr %9, align 8, !dbg !1788
  %43 = getelementptr inbounds %struct.ifaddrs, ptr %42, i32 0, i32 2, !dbg !1789
  %44 = load i32, ptr %43, align 8, !dbg !1789
  %45 = and i32 %44, 8, !dbg !1790
  %46 = icmp ne i32 %45, 0, !dbg !1790
  br i1 %46, label %47, label %48, !dbg !1791

47:                                               ; preds = %41
  br label %123, !dbg !1792

48:                                               ; preds = %41, %38
  %49 = load ptr, ptr %9, align 8, !dbg !1793
  %50 = getelementptr inbounds %struct.ifaddrs, ptr %49, i32 0, i32 3, !dbg !1795
  %51 = load ptr, ptr %50, align 8, !dbg !1795
  %52 = getelementptr inbounds %struct.sockaddr, ptr %51, i32 0, i32 0, !dbg !1796
  %53 = load i16, ptr %52, align 2, !dbg !1796
  %54 = zext i16 %53 to i32, !dbg !1793
  %55 = icmp eq i32 %54, 2, !dbg !1797
  br i1 %55, label %56, label %81, !dbg !1798

56:                                               ; preds = %48
  %57 = load i32, ptr %3, align 4, !dbg !1799
  %58 = icmp ne i32 %57, 2, !dbg !1802
  br i1 %58, label %59, label %60, !dbg !1803

59:                                               ; preds = %56
  br label %123, !dbg !1804

60:                                               ; preds = %56
  %61 = load ptr, ptr %9, align 8, !dbg !1805
  %62 = getelementptr inbounds %struct.ifaddrs, ptr %61, i32 0, i32 3, !dbg !1807
  %63 = load ptr, ptr %62, align 8, !dbg !1807
  %64 = getelementptr inbounds %struct.sockaddr_in, ptr %63, i32 0, i32 2, !dbg !1808
  %65 = getelementptr inbounds [46 x i8], ptr %8, i64 0, i64 0, !dbg !1809
  %66 = call ptr @inet_ntop(i32 noundef 2, ptr noundef %64, ptr noundef %65, i32 noundef 16) #10, !dbg !1810
  %67 = icmp ne ptr %66, null, !dbg !1810
  br i1 %67, label %69, label %68, !dbg !1811

68:                                               ; preds = %60
  br label %123, !dbg !1812

69:                                               ; preds = %60
  %70 = getelementptr inbounds [46 x i8], ptr %8, i64 0, i64 0, !dbg !1813
  %71 = call ptr @strstr(ptr noundef %70, ptr noundef @.str.4) #11, !dbg !1815
  %72 = getelementptr inbounds [46 x i8], ptr %8, i64 0, i64 0, !dbg !1816
  %73 = icmp eq ptr %71, %72, !dbg !1817
  br i1 %73, label %74, label %75, !dbg !1818

74:                                               ; preds = %69
  br label %123, !dbg !1819

75:                                               ; preds = %69
  %76 = getelementptr inbounds [46 x i8], ptr %8, i64 0, i64 0, !dbg !1820
  %77 = call i32 @strcmp(ptr noundef %76, ptr noundef @.str.5) #11, !dbg !1822
  %78 = icmp ne i32 %77, 0, !dbg !1822
  br i1 %78, label %80, label %79, !dbg !1823

79:                                               ; preds = %75
  br label %123, !dbg !1824

80:                                               ; preds = %75
  br label %116, !dbg !1825

81:                                               ; preds = %48
  %82 = load ptr, ptr %9, align 8, !dbg !1826
  %83 = getelementptr inbounds %struct.ifaddrs, ptr %82, i32 0, i32 3, !dbg !1828
  %84 = load ptr, ptr %83, align 8, !dbg !1828
  %85 = getelementptr inbounds %struct.sockaddr, ptr %84, i32 0, i32 0, !dbg !1829
  %86 = load i16, ptr %85, align 2, !dbg !1829
  %87 = zext i16 %86 to i32, !dbg !1826
  %88 = icmp eq i32 %87, 10, !dbg !1830
  br i1 %88, label %89, label %114, !dbg !1831

89:                                               ; preds = %81
  %90 = load i32, ptr %3, align 4, !dbg !1832
  %91 = icmp ne i32 %90, 10, !dbg !1835
  br i1 %91, label %92, label %93, !dbg !1836

92:                                               ; preds = %89
  br label %123, !dbg !1837

93:                                               ; preds = %89
  %94 = load ptr, ptr %9, align 8, !dbg !1838
  %95 = getelementptr inbounds %struct.ifaddrs, ptr %94, i32 0, i32 3, !dbg !1840
  %96 = load ptr, ptr %95, align 8, !dbg !1840
  %97 = getelementptr inbounds %struct.sockaddr_in6, ptr %96, i32 0, i32 3, !dbg !1841
  %98 = getelementptr inbounds [46 x i8], ptr %8, i64 0, i64 0, !dbg !1842
  %99 = call ptr @inet_ntop(i32 noundef 10, ptr noundef %97, ptr noundef %98, i32 noundef 46) #10, !dbg !1843
  %100 = icmp ne ptr %99, null, !dbg !1843
  br i1 %100, label %102, label %101, !dbg !1844

101:                                              ; preds = %93
  br label %123, !dbg !1845

102:                                              ; preds = %93
  %103 = getelementptr inbounds [46 x i8], ptr %8, i64 0, i64 0, !dbg !1846
  %104 = call ptr @strstr(ptr noundef %103, ptr noundef @.str.6) #11, !dbg !1848
  %105 = getelementptr inbounds [46 x i8], ptr %8, i64 0, i64 0, !dbg !1849
  %106 = icmp eq ptr %104, %105, !dbg !1850
  br i1 %106, label %107, label %108, !dbg !1851

107:                                              ; preds = %102
  br label %123, !dbg !1852

108:                                              ; preds = %102
  %109 = getelementptr inbounds [46 x i8], ptr %8, i64 0, i64 0, !dbg !1853
  %110 = call i32 @strcmp(ptr noundef %109, ptr noundef @.str.7) #11, !dbg !1855
  %111 = icmp ne i32 %110, 0, !dbg !1855
  br i1 %111, label %113, label %112, !dbg !1856

112:                                              ; preds = %108
  br label %123, !dbg !1857

113:                                              ; preds = %108
  br label %115, !dbg !1858

114:                                              ; preds = %81
  br label %123, !dbg !1859

115:                                              ; preds = %113
  br label %116

116:                                              ; preds = %115, %80
  %117 = getelementptr inbounds [46 x i8], ptr %8, i64 0, i64 0, !dbg !1860
  %118 = load ptr, ptr %4, align 8, !dbg !1862
  %119 = call i32 @make_ioa_addr(ptr noundef %117, i32 noundef 0, ptr noundef %118), !dbg !1863
  %120 = icmp slt i32 %119, 0, !dbg !1864
  br i1 %120, label %121, label %122, !dbg !1865

121:                                              ; preds = %116
  br label %123, !dbg !1866

122:                                              ; preds = %116
  store i32 0, ptr %7, align 4, !dbg !1868
  br label %127, !dbg !1870

123:                                              ; preds = %121, %114, %112, %107, %101, %92, %79, %74, %68, %59, %47, %37, %31, %25
  %124 = load ptr, ptr %9, align 8, !dbg !1871
  %125 = getelementptr inbounds %struct.ifaddrs, ptr %124, i32 0, i32 0, !dbg !1872
  %126 = load ptr, ptr %125, align 8, !dbg !1872
  store ptr %126, ptr %9, align 8, !dbg !1873
  br label %16, !dbg !1874, !llvm.loop !1875

127:                                              ; preds = %122, %16
  %128 = load i32, ptr %7, align 4, !dbg !1878
  %129 = icmp slt i32 %128, 0, !dbg !1880
  br i1 %129, label %130, label %134, !dbg !1881

130:                                              ; preds = %127
  %131 = load i32, ptr %6, align 4, !dbg !1882
  %132 = icmp ne i32 %131, 0, !dbg !1882
  br i1 %132, label %134, label %133, !dbg !1883

133:                                              ; preds = %130
  store i32 1, ptr %6, align 4, !dbg !1884
  br label %14, !dbg !1886

134:                                              ; preds = %130, %127
  %135 = load ptr, ptr %5, align 8, !dbg !1887
  call void @freeifaddrs(ptr noundef %135) #10, !dbg !1888
  br label %136, !dbg !1889

136:                                              ; preds = %134, %2
  ret i32 -1, !dbg !1890
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind
declare i32 @getifaddrs(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare ptr @inet_ntop(i32 noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strstr(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #4

declare i32 @make_ioa_addr(ptr noundef, i32 noundef, ptr noundef) #5

; Function Attrs: nounwind
declare void @freeifaddrs(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_ctr(ptr noundef %0, ptr noundef %1) #0 !dbg !1891 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1901, metadata !DIExpression()), !dbg !1902
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1903, metadata !DIExpression()), !dbg !1904
  %5 = load ptr, ptr %3, align 8, !dbg !1905
  %6 = getelementptr inbounds %struct.ctr_state, ptr %5, i32 0, i32 1, !dbg !1906
  store i32 0, ptr %6, align 4, !dbg !1907
  %7 = load ptr, ptr %3, align 8, !dbg !1908
  %8 = getelementptr inbounds %struct.ctr_state, ptr %7, i32 0, i32 2, !dbg !1909
  %9 = getelementptr inbounds [16 x i8], ptr %8, i64 0, i64 0, !dbg !1910
  call void @llvm.memset.p0.i64(ptr align 4 %9, i8 0, i64 16, i1 false), !dbg !1910
  %10 = load ptr, ptr %3, align 8, !dbg !1911
  %11 = getelementptr inbounds %struct.ctr_state, ptr %10, i32 0, i32 0, !dbg !1912
  %12 = getelementptr inbounds [16 x i8], ptr %11, i64 0, i64 0, !dbg !1911
  %13 = getelementptr inbounds i8, ptr %12, i64 8, !dbg !1913
  call void @llvm.memset.p0.i64(ptr align 1 %13, i8 0, i64 8, i1 false), !dbg !1914
  %14 = load ptr, ptr %3, align 8, !dbg !1915
  %15 = getelementptr inbounds %struct.ctr_state, ptr %14, i32 0, i32 0, !dbg !1916
  %16 = getelementptr inbounds [16 x i8], ptr %15, i64 0, i64 0, !dbg !1917
  %17 = load ptr, ptr %4, align 8, !dbg !1918
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %16, ptr align 1 %17, i64 8, i1 false), !dbg !1917
  ret i32 1, !dbg !1919
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @base64encode(ptr noundef %0, i32 noundef %1) #0 !dbg !1920 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1923, metadata !DIExpression()), !dbg !1924
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1925, metadata !DIExpression()), !dbg !1926
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1927, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1932, metadata !DIExpression()), !dbg !1933
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1934, metadata !DIExpression()), !dbg !1944
  %8 = call ptr @BIO_f_base64(), !dbg !1945
  %9 = call ptr @BIO_new(ptr noundef %8), !dbg !1946
  store ptr %9, ptr %5, align 8, !dbg !1947
  %10 = call ptr @BIO_s_mem(), !dbg !1948
  %11 = call ptr @BIO_new(ptr noundef %10), !dbg !1949
  store ptr %11, ptr %6, align 8, !dbg !1950
  %12 = load ptr, ptr %5, align 8, !dbg !1951
  %13 = load ptr, ptr %6, align 8, !dbg !1952
  %14 = call ptr @BIO_push(ptr noundef %12, ptr noundef %13), !dbg !1953
  %15 = load ptr, ptr %5, align 8, !dbg !1954
  call void @BIO_set_flags(ptr noundef %15, i32 noundef 256), !dbg !1955
  %16 = load ptr, ptr %5, align 8, !dbg !1956
  %17 = load ptr, ptr %3, align 8, !dbg !1957
  %18 = load i32, ptr %4, align 4, !dbg !1958
  %19 = call i32 @BIO_write(ptr noundef %16, ptr noundef %17, i32 noundef %18), !dbg !1959
  %20 = load ptr, ptr %5, align 8, !dbg !1960
  %21 = call i64 @BIO_ctrl(ptr noundef %20, i32 noundef 11, i64 noundef 0, ptr noundef null), !dbg !1960
  %22 = trunc i64 %21 to i32, !dbg !1960
  %23 = load ptr, ptr %6, align 8, !dbg !1961
  %24 = call i64 @BIO_ctrl(ptr noundef %23, i32 noundef 115, i64 noundef 0, ptr noundef %7), !dbg !1961
  %25 = load ptr, ptr %6, align 8, !dbg !1962
  %26 = call i64 @BIO_ctrl(ptr noundef %25, i32 noundef 9, i64 noundef 0, ptr noundef null), !dbg !1962
  %27 = trunc i64 %26 to i32, !dbg !1962
  %28 = load ptr, ptr %5, align 8, !dbg !1963
  call void @BIO_free_all(ptr noundef %28), !dbg !1964
  %29 = load ptr, ptr %7, align 8, !dbg !1965
  %30 = load ptr, ptr %7, align 8, !dbg !1966
  %31 = getelementptr inbounds %struct.buf_mem_st, ptr %30, i32 0, i32 0, !dbg !1967
  %32 = load i64, ptr %31, align 8, !dbg !1967
  %33 = add i64 %32, 1, !dbg !1968
  %34 = call i64 @BUF_MEM_grow(ptr noundef %29, i64 noundef %33), !dbg !1969
  %35 = load ptr, ptr %7, align 8, !dbg !1970
  %36 = getelementptr inbounds %struct.buf_mem_st, ptr %35, i32 0, i32 1, !dbg !1971
  %37 = load ptr, ptr %36, align 8, !dbg !1971
  %38 = load ptr, ptr %7, align 8, !dbg !1972
  %39 = getelementptr inbounds %struct.buf_mem_st, ptr %38, i32 0, i32 0, !dbg !1973
  %40 = load i64, ptr %39, align 8, !dbg !1973
  %41 = getelementptr inbounds i8, ptr %37, i64 %40, !dbg !1974
  store i8 0, ptr %41, align 1, !dbg !1975
  %42 = load ptr, ptr %7, align 8, !dbg !1976
  %43 = getelementptr inbounds %struct.buf_mem_st, ptr %42, i32 0, i32 1, !dbg !1977
  %44 = load ptr, ptr %43, align 8, !dbg !1977
  ret ptr %44, !dbg !1978
}

declare ptr @BIO_new(ptr noundef) #5

declare ptr @BIO_f_base64() #5

declare ptr @BIO_s_mem() #5

declare ptr @BIO_push(ptr noundef, ptr noundef) #5

declare void @BIO_set_flags(ptr noundef, i32 noundef) #5

declare i32 @BIO_write(ptr noundef, ptr noundef, i32 noundef) #5

declare i64 @BIO_ctrl(ptr noundef, i32 noundef, i64 noundef, ptr noundef) #5

declare void @BIO_free_all(ptr noundef) #5

declare i64 @BUF_MEM_grow(ptr noundef, i64 noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @encrypt_aes_128(ptr noundef %0, ptr noundef %1) #0 !dbg !1979 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.aes_key_st, align 4
  %9 = alloca [8 x i8], align 1
  %10 = alloca [1024 x i8], align 16
  %11 = alloca [256 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca %struct.ctr_state, align 4
  %14 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1982, metadata !DIExpression()), !dbg !1983
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1984, metadata !DIExpression()), !dbg !1985
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1986, metadata !DIExpression()), !dbg !1987
  store i32 0, ptr %5, align 4, !dbg !1987
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1988, metadata !DIExpression()), !dbg !1989
  store i32 0, ptr %6, align 4, !dbg !1989
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1990, metadata !DIExpression()), !dbg !1991
  store i32 0, ptr %7, align 4, !dbg !1991
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1992, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2001, metadata !DIExpression()), !dbg !2002
  call void @llvm.memset.p0.i64(ptr align 1 %9, i8 0, i64 8, i1 false), !dbg !2002
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2003, metadata !DIExpression()), !dbg !2007
  %15 = load ptr, ptr %4, align 8, !dbg !2008
  %16 = call i32 @AES_set_encrypt_key(ptr noundef %15, i32 noundef 128, ptr noundef %8), !dbg !2009
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2010, metadata !DIExpression()), !dbg !2012
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2013, metadata !DIExpression()), !dbg !2014
  store i32 0, ptr %12, align 4, !dbg !2014
  call void @llvm.dbg.declare(metadata ptr %13, metadata !2015, metadata !DIExpression()), !dbg !2016
  %17 = getelementptr inbounds [8 x i8], ptr %9, i64 0, i64 0, !dbg !2017
  %18 = call i32 @init_ctr(ptr noundef %13, ptr noundef %17), !dbg !2018
  %19 = load ptr, ptr %3, align 8, !dbg !2019
  %20 = getelementptr inbounds [1024 x i8], ptr %10, i64 0, i64 0, !dbg !2020
  %21 = load ptr, ptr %3, align 8, !dbg !2021
  %22 = call i64 @strlen(ptr noundef %21) #11, !dbg !2022
  %23 = getelementptr inbounds %struct.ctr_state, ptr %13, i32 0, i32 0, !dbg !2023
  %24 = getelementptr inbounds [16 x i8], ptr %23, i64 0, i64 0, !dbg !2024
  %25 = getelementptr inbounds %struct.ctr_state, ptr %13, i32 0, i32 2, !dbg !2025
  %26 = getelementptr inbounds [16 x i8], ptr %25, i64 0, i64 0, !dbg !2026
  %27 = getelementptr inbounds %struct.ctr_state, ptr %13, i32 0, i32 1, !dbg !2027
  call void @CRYPTO_ctr128_encrypt(ptr noundef %19, ptr noundef %20, i64 noundef %22, ptr noundef %8, ptr noundef %24, ptr noundef %26, ptr noundef %27, ptr noundef @AES_encrypt), !dbg !2028
  %28 = load ptr, ptr %3, align 8, !dbg !2029
  %29 = call i64 @strlen(ptr noundef %28) #11, !dbg !2030
  %30 = load i32, ptr %7, align 4, !dbg !2031
  %31 = sext i32 %30 to i64, !dbg !2031
  %32 = add i64 %31, %29, !dbg !2031
  %33 = trunc i64 %32 to i32, !dbg !2031
  store i32 %33, ptr %7, align 4, !dbg !2031
  %34 = load ptr, ptr %3, align 8, !dbg !2032
  %35 = call i64 @strlen(ptr noundef %34) #11, !dbg !2033
  %36 = trunc i64 %35 to i32, !dbg !2033
  store i32 %36, ptr %12, align 4, !dbg !2034
  store i32 0, ptr %5, align 4, !dbg !2035
  br label %37, !dbg !2037

37:                                               ; preds = %50, %2
  %38 = load i32, ptr %5, align 4, !dbg !2038
  %39 = load i32, ptr %12, align 4, !dbg !2040
  %40 = icmp slt i32 %38, %39, !dbg !2041
  br i1 %40, label %41, label %53, !dbg !2042

41:                                               ; preds = %37
  %42 = load i32, ptr %5, align 4, !dbg !2043
  %43 = sext i32 %42 to i64, !dbg !2045
  %44 = getelementptr inbounds [1024 x i8], ptr %10, i64 0, i64 %43, !dbg !2045
  %45 = load i8, ptr %44, align 1, !dbg !2045
  %46 = load i32, ptr %6, align 4, !dbg !2046
  %47 = add nsw i32 %46, 1, !dbg !2046
  store i32 %47, ptr %6, align 4, !dbg !2046
  %48 = sext i32 %46 to i64, !dbg !2047
  %49 = getelementptr inbounds [256 x i8], ptr %11, i64 0, i64 %48, !dbg !2047
  store i8 %45, ptr %49, align 1, !dbg !2048
  br label %50, !dbg !2049

50:                                               ; preds = %41
  %51 = load i32, ptr %5, align 4, !dbg !2050
  %52 = add nsw i32 %51, 1, !dbg !2050
  store i32 %52, ptr %5, align 4, !dbg !2050
  br label %37, !dbg !2051, !llvm.loop !2052

53:                                               ; preds = %37
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2054, metadata !DIExpression()), !dbg !2055
  %54 = getelementptr inbounds [256 x i8], ptr %11, i64 0, i64 0, !dbg !2056
  %55 = load i32, ptr %7, align 4, !dbg !2057
  %56 = call ptr @base64encode(ptr noundef %54, i32 noundef %55), !dbg !2058
  store ptr %56, ptr %14, align 8, !dbg !2055
  %57 = load ptr, ptr %14, align 8, !dbg !2059
  %58 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, ptr noundef %57), !dbg !2060
  ret void, !dbg !2061
}

declare i32 @AES_set_encrypt_key(ptr noundef, i32 noundef, ptr noundef) #5

declare void @CRYPTO_ctr128_encrypt(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #4

declare void @AES_encrypt(ptr noundef, ptr noundef, ptr noundef) #5

declare i32 @printf(ptr noundef, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @generate_aes_128_key(ptr noundef %0, ptr noundef %1) #0 !dbg !2062 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca [16 x i8], align 16
  %9 = alloca %struct.timespec, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2065, metadata !DIExpression()), !dbg !2066
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2067, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2069, metadata !DIExpression()), !dbg !2070
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2071, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2073, metadata !DIExpression()), !dbg !2124
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2125, metadata !DIExpression()), !dbg !2126
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2127, metadata !DIExpression()), !dbg !2134
  %10 = call i32 @clock_gettime(i32 noundef 0, ptr noundef %9) #10, !dbg !2135
  %11 = getelementptr inbounds %struct.timespec, ptr %9, i32 0, i32 1, !dbg !2136
  %12 = load i64, ptr %11, align 8, !dbg !2136
  %13 = trunc i64 %12 to i32, !dbg !2137
  call void @srand(i32 noundef %13) #10, !dbg !2138
  store i32 0, ptr %5, align 4, !dbg !2139
  br label %14, !dbg !2141

14:                                               ; preds = %55, %2
  %15 = load i32, ptr %5, align 4, !dbg !2142
  %16 = icmp slt i32 %15, 16, !dbg !2144
  br i1 %16, label %17, label %58, !dbg !2145

17:                                               ; preds = %14
  %18 = call i32 @rand() #10, !dbg !2146
  %19 = srem i32 %18, 3, !dbg !2148
  store i32 %19, ptr %6, align 4, !dbg !2149
  %20 = load i32, ptr %6, align 4, !dbg !2150
  %21 = icmp eq i32 %20, 0, !dbg !2152
  br i1 %21, label %22, label %30, !dbg !2153

22:                                               ; preds = %17
  %23 = call i32 @rand() #10, !dbg !2154
  %24 = srem i32 %23, 10, !dbg !2156
  %25 = add nsw i32 %24, 48, !dbg !2157
  %26 = trunc i32 %25 to i8, !dbg !2158
  %27 = load i32, ptr %5, align 4, !dbg !2159
  %28 = sext i32 %27 to i64, !dbg !2160
  %29 = getelementptr inbounds [16 x i8], ptr %8, i64 0, i64 %28, !dbg !2160
  store i8 %26, ptr %29, align 1, !dbg !2161
  br label %54, !dbg !2162

30:                                               ; preds = %17
  %31 = load i32, ptr %6, align 4, !dbg !2163
  %32 = icmp eq i32 %31, 1, !dbg !2165
  br i1 %32, label %33, label %41, !dbg !2166

33:                                               ; preds = %30
  %34 = call i32 @rand() #10, !dbg !2167
  %35 = srem i32 %34, 26, !dbg !2169
  %36 = add nsw i32 %35, 65, !dbg !2170
  %37 = trunc i32 %36 to i8, !dbg !2171
  %38 = load i32, ptr %5, align 4, !dbg !2172
  %39 = sext i32 %38 to i64, !dbg !2173
  %40 = getelementptr inbounds [16 x i8], ptr %8, i64 0, i64 %39, !dbg !2173
  store i8 %37, ptr %40, align 1, !dbg !2174
  br label %53, !dbg !2175

41:                                               ; preds = %30
  %42 = load i32, ptr %6, align 4, !dbg !2176
  %43 = icmp eq i32 %42, 2, !dbg !2178
  br i1 %43, label %44, label %52, !dbg !2179

44:                                               ; preds = %41
  %45 = call i32 @rand() #10, !dbg !2180
  %46 = srem i32 %45, 26, !dbg !2182
  %47 = add nsw i32 %46, 97, !dbg !2183
  %48 = trunc i32 %47 to i8, !dbg !2184
  %49 = load i32, ptr %5, align 4, !dbg !2185
  %50 = sext i32 %49 to i64, !dbg !2186
  %51 = getelementptr inbounds [16 x i8], ptr %8, i64 0, i64 %50, !dbg !2186
  store i8 %48, ptr %51, align 1, !dbg !2187
  br label %52, !dbg !2188

52:                                               ; preds = %44, %41
  br label %53

53:                                               ; preds = %52, %33
  br label %54

54:                                               ; preds = %53, %22
  br label %55, !dbg !2189

55:                                               ; preds = %54
  %56 = load i32, ptr %5, align 4, !dbg !2190
  %57 = add nsw i32 %56, 1, !dbg !2190
  store i32 %57, ptr %5, align 4, !dbg !2190
  br label %14, !dbg !2191, !llvm.loop !2192

58:                                               ; preds = %14
  %59 = load ptr, ptr %3, align 8, !dbg !2194
  %60 = call noalias ptr @fopen(ptr noundef %59, ptr noundef @.str.9), !dbg !2195
  store ptr %60, ptr %7, align 8, !dbg !2196
  store i32 0, ptr %5, align 4, !dbg !2197
  br label %61, !dbg !2199

61:                                               ; preds = %72, %58
  %62 = load i32, ptr %5, align 4, !dbg !2200
  %63 = icmp slt i32 %62, 16, !dbg !2202
  br i1 %63, label %64, label %75, !dbg !2203

64:                                               ; preds = %61
  %65 = load i32, ptr %5, align 4, !dbg !2204
  %66 = sext i32 %65 to i64, !dbg !2206
  %67 = getelementptr inbounds [16 x i8], ptr %8, i64 0, i64 %66, !dbg !2206
  %68 = load i8, ptr %67, align 1, !dbg !2206
  %69 = sext i8 %68 to i32, !dbg !2206
  %70 = load ptr, ptr %7, align 8, !dbg !2207
  %71 = call i32 @fputc(i32 noundef %69, ptr noundef %70), !dbg !2208
  br label %72, !dbg !2209

72:                                               ; preds = %64
  %73 = load i32, ptr %5, align 4, !dbg !2210
  %74 = add nsw i32 %73, 1, !dbg !2210
  store i32 %74, ptr %5, align 4, !dbg !2210
  br label %61, !dbg !2211, !llvm.loop !2212

75:                                               ; preds = %61
  %76 = load ptr, ptr %4, align 8, !dbg !2214
  %77 = getelementptr inbounds [16 x i8], ptr %8, i64 0, i64 0, !dbg !2215
  %78 = call ptr @strcpy(ptr noundef %76, ptr noundef %77) #10, !dbg !2216
  %79 = load ptr, ptr %7, align 8, !dbg !2217
  %80 = call i32 @fclose(ptr noundef %79), !dbg !2218
  ret void, !dbg !2219
}

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) #3

; Function Attrs: nounwind
declare void @srand(i32 noundef) #3

; Function Attrs: nounwind
declare i32 @rand() #3

declare noalias ptr @fopen(ptr noundef, ptr noundef) #5

declare i32 @fputc(i32 noundef, ptr noundef) #5

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #3

declare i32 @fclose(ptr noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @base64decode(ptr noundef %0, i32 noundef %1) #0 !dbg !2220 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2221, metadata !DIExpression()), !dbg !2222
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2223, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2225, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2227, metadata !DIExpression()), !dbg !2228
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2229, metadata !DIExpression()), !dbg !2230
  %9 = load i32, ptr %4, align 4, !dbg !2231
  %10 = mul nsw i32 %9, 3, !dbg !2232
  %11 = sdiv i32 %10, 4, !dbg !2233
  %12 = add nsw i32 %11, 1, !dbg !2234
  %13 = sext i32 %12 to i64, !dbg !2235
  %14 = call noalias ptr @calloc(i64 noundef %13, i64 noundef 1) #12, !dbg !2236
  store ptr %14, ptr %7, align 8, !dbg !2230
  %15 = call ptr @BIO_f_base64(), !dbg !2237
  %16 = call ptr @BIO_new(ptr noundef %15), !dbg !2238
  store ptr %16, ptr %5, align 8, !dbg !2239
  %17 = call ptr @BIO_s_mem(), !dbg !2240
  %18 = call ptr @BIO_new(ptr noundef %17), !dbg !2241
  store ptr %18, ptr %6, align 8, !dbg !2242
  %19 = load ptr, ptr %6, align 8, !dbg !2243
  %20 = load ptr, ptr %3, align 8, !dbg !2244
  %21 = load i32, ptr %4, align 4, !dbg !2245
  %22 = call i32 @BIO_write(ptr noundef %19, ptr noundef %20, i32 noundef %21), !dbg !2246
  %23 = load ptr, ptr %5, align 8, !dbg !2247
  %24 = load ptr, ptr %6, align 8, !dbg !2248
  %25 = call ptr @BIO_push(ptr noundef %23, ptr noundef %24), !dbg !2249
  %26 = load ptr, ptr %5, align 8, !dbg !2250
  call void @BIO_set_flags(ptr noundef %26, i32 noundef 256), !dbg !2251
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2252, metadata !DIExpression()), !dbg !2253
  store i32 0, ptr %8, align 4, !dbg !2253
  br label %27, !dbg !2254

27:                                               ; preds = %35, %2
  %28 = load ptr, ptr %5, align 8, !dbg !2255
  %29 = load ptr, ptr %7, align 8, !dbg !2256
  %30 = load i32, ptr %8, align 4, !dbg !2257
  %31 = sext i32 %30 to i64, !dbg !2258
  %32 = getelementptr inbounds i8, ptr %29, i64 %31, !dbg !2258
  %33 = call i32 @BIO_read(ptr noundef %28, ptr noundef %32, i32 noundef 1), !dbg !2259
  %34 = icmp slt i32 0, %33, !dbg !2260
  br i1 %34, label %35, label %38, !dbg !2254

35:                                               ; preds = %27
  %36 = load i32, ptr %8, align 4, !dbg !2261
  %37 = add nsw i32 %36, 1, !dbg !2261
  store i32 %37, ptr %8, align 4, !dbg !2261
  br label %27, !dbg !2254, !llvm.loop !2263

38:                                               ; preds = %27
  %39 = load ptr, ptr %5, align 8, !dbg !2265
  call void @BIO_free_all(ptr noundef %39), !dbg !2266
  %40 = load ptr, ptr %7, align 8, !dbg !2267
  ret ptr %40, !dbg !2268
}

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #7

declare i32 @BIO_read(ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @decodedTextSize(ptr noundef %0) #0 !dbg !2269 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2272, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2274, metadata !DIExpression()), !dbg !2275
  store i32 0, ptr %3, align 4, !dbg !2275
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2276, metadata !DIExpression()), !dbg !2277
  store i32 0, ptr %4, align 4, !dbg !2277
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2278, metadata !DIExpression()), !dbg !2279
  store i32 0, ptr %5, align 4, !dbg !2279
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2280, metadata !DIExpression()), !dbg !2281
  %7 = load ptr, ptr %2, align 8, !dbg !2282
  %8 = call i64 @strlen(ptr noundef %7) #11, !dbg !2283
  %9 = trunc i64 %8 to i32, !dbg !2283
  store i32 %9, ptr %6, align 4, !dbg !2281
  store i32 0, ptr %3, align 4, !dbg !2284
  br label %10, !dbg !2286

10:                                               ; preds = %26, %1
  %11 = load i32, ptr %3, align 4, !dbg !2287
  %12 = load i32, ptr %6, align 4, !dbg !2289
  %13 = icmp slt i32 %11, %12, !dbg !2290
  br i1 %13, label %14, label %29, !dbg !2291

14:                                               ; preds = %10
  %15 = load ptr, ptr %2, align 8, !dbg !2292
  %16 = load i32, ptr %3, align 4, !dbg !2295
  %17 = sext i32 %16 to i64, !dbg !2292
  %18 = getelementptr inbounds i8, ptr %15, i64 %17, !dbg !2292
  %19 = load i8, ptr %18, align 1, !dbg !2292
  %20 = sext i8 %19 to i32, !dbg !2292
  %21 = icmp eq i32 %20, 61, !dbg !2296
  br i1 %21, label %22, label %25, !dbg !2297

22:                                               ; preds = %14
  %23 = load i32, ptr %5, align 4, !dbg !2298
  %24 = add nsw i32 %23, 1, !dbg !2298
  store i32 %24, ptr %5, align 4, !dbg !2298
  br label %25, !dbg !2300

25:                                               ; preds = %22, %14
  br label %26, !dbg !2301

26:                                               ; preds = %25
  %27 = load i32, ptr %3, align 4, !dbg !2302
  %28 = add nsw i32 %27, 1, !dbg !2302
  store i32 %28, ptr %3, align 4, !dbg !2302
  br label %10, !dbg !2303, !llvm.loop !2304

29:                                               ; preds = %10
  %30 = load ptr, ptr %2, align 8, !dbg !2306
  %31 = call i64 @strlen(ptr noundef %30) #11, !dbg !2307
  %32 = udiv i64 %31, 4, !dbg !2308
  %33 = mul i64 %32, 3, !dbg !2309
  %34 = load i32, ptr %5, align 4, !dbg !2310
  %35 = sext i32 %34 to i64, !dbg !2310
  %36 = sub i64 %33, %35, !dbg !2311
  %37 = trunc i64 %36 to i32, !dbg !2312
  store i32 %37, ptr %4, align 4, !dbg !2313
  %38 = load i32, ptr %4, align 4, !dbg !2314
  ret i32 %38, !dbg !2315
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @decrypt_aes_128(ptr noundef %0, ptr noundef %1) #0 !dbg !2316 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca [8 x i8], align 1
  %6 = alloca %struct.aes_key_st, align 4
  %7 = alloca [256 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca [1024 x i8], align 16
  %12 = alloca %struct.ctr_state, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2319, metadata !DIExpression()), !dbg !2320
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2321, metadata !DIExpression()), !dbg !2322
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2323, metadata !DIExpression()), !dbg !2324
  call void @llvm.memset.p0.i64(ptr align 1 %5, i8 0, i64 8, i1 false), !dbg !2324
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2325, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2327, metadata !DIExpression()), !dbg !2329
  %13 = load ptr, ptr %4, align 8, !dbg !2330
  %14 = call i32 @AES_set_encrypt_key(ptr noundef %13, i32 noundef 128, ptr noundef %6), !dbg !2331
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2332, metadata !DIExpression()), !dbg !2333
  %15 = load ptr, ptr %3, align 8, !dbg !2334
  %16 = call i32 @decodedTextSize(ptr noundef %15), !dbg !2335
  store i32 %16, ptr %8, align 4, !dbg !2333
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2336, metadata !DIExpression()), !dbg !2337
  %17 = load ptr, ptr %3, align 8, !dbg !2338
  %18 = call i64 @strlen(ptr noundef %17) #11, !dbg !2339
  %19 = trunc i64 %18 to i32, !dbg !2339
  store i32 %19, ptr %9, align 4, !dbg !2337
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2340, metadata !DIExpression()), !dbg !2341
  %20 = load ptr, ptr %3, align 8, !dbg !2342
  %21 = load i32, ptr %9, align 4, !dbg !2343
  %22 = call ptr @base64decode(ptr noundef %20, i32 noundef %21), !dbg !2344
  store ptr %22, ptr %10, align 8, !dbg !2341
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2345, metadata !DIExpression()), !dbg !2347
  call void @llvm.memset.p0.i64(ptr align 16 %11, i8 0, i64 1024, i1 false), !dbg !2347
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2348, metadata !DIExpression()), !dbg !2349
  %23 = getelementptr inbounds [8 x i8], ptr %5, i64 0, i64 0, !dbg !2350
  %24 = call i32 @init_ctr(ptr noundef %12, ptr noundef %23), !dbg !2351
  %25 = getelementptr inbounds [256 x i8], ptr %7, i64 0, i64 0, !dbg !2352
  call void @llvm.memset.p0.i64(ptr align 16 %25, i8 0, i64 256, i1 false), !dbg !2352
  %26 = load ptr, ptr %10, align 8, !dbg !2353
  %27 = getelementptr inbounds [256 x i8], ptr %7, i64 0, i64 0, !dbg !2354
  %28 = load i32, ptr %8, align 4, !dbg !2355
  %29 = sext i32 %28 to i64, !dbg !2355
  %30 = getelementptr inbounds %struct.ctr_state, ptr %12, i32 0, i32 0, !dbg !2356
  %31 = getelementptr inbounds [16 x i8], ptr %30, i64 0, i64 0, !dbg !2357
  %32 = getelementptr inbounds %struct.ctr_state, ptr %12, i32 0, i32 2, !dbg !2358
  %33 = getelementptr inbounds [16 x i8], ptr %32, i64 0, i64 0, !dbg !2359
  %34 = getelementptr inbounds %struct.ctr_state, ptr %12, i32 0, i32 1, !dbg !2360
  call void @CRYPTO_ctr128_encrypt(ptr noundef %26, ptr noundef %27, i64 noundef %29, ptr noundef %6, ptr noundef %31, ptr noundef %33, ptr noundef %34, ptr noundef @AES_encrypt), !dbg !2361
  %35 = getelementptr inbounds [1024 x i8], ptr %11, i64 0, i64 0, !dbg !2362
  %36 = getelementptr inbounds [256 x i8], ptr %7, i64 0, i64 0, !dbg !2363
  %37 = call ptr @strcat(ptr noundef %35, ptr noundef %36) #10, !dbg !2364
  %38 = getelementptr inbounds [1024 x i8], ptr %11, i64 0, i64 0, !dbg !2365
  %39 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, ptr noundef %38), !dbg !2366
  ret void, !dbg !2367
}

; Function Attrs: nounwind
declare ptr @strcat(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 !dbg !2368 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.uoptions, align 8
  %8 = alloca %struct.uoptions, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca ptr, align 8
  %17 = alloca %union.ioa_addr, align 4
  %18 = alloca i32, align 4
  %19 = alloca [2049 x i8], align 16
  %20 = alloca ptr, align 8
  %21 = alloca i64, align 8
  %22 = alloca [7 x ptr], align 16
  %23 = alloca ptr, align 8
  %24 = alloca i64, align 8
  %25 = alloca ptr, align 8
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2371, metadata !DIExpression()), !dbg !2372
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2373, metadata !DIExpression()), !dbg !2374
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2375, metadata !DIExpression()), !dbg !2376
  store i32 0, ptr %6, align 4, !dbg !2376
  store i32 1, ptr @IS_TURN_SERVER, align 4, !dbg !2377
  call void @set_execdir(), !dbg !2378
  call void @init_super_memory(), !dbg !2379
  call void @redis_async_init(), !dbg !2380
  call void @init_domain(), !dbg !2381
  call void @create_default_realm(), !dbg !2382
  call void @init_turn_server_addrs_list(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 64)), !dbg !2383
  call void @init_turn_server_addrs_list(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 65)), !dbg !2384
  call void @init_turn_server_addrs_list(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 62)), !dbg !2385
  call void @set_network_engine(), !dbg !2386
  call void @init_listener(), !dbg !2387
  call void @init_secrets_list(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 86, i32 2, i32 2)), !dbg !2388
  call void @init_dynamic_ip_lists(), !dbg !2389
  %26 = load ptr, ptr %5, align 8, !dbg !2390
  %27 = getelementptr inbounds ptr, ptr %26, i64 0, !dbg !2390
  %28 = load ptr, ptr %27, align 8, !dbg !2390
  %29 = call ptr @strstr(ptr noundef %28, ptr noundef @.str.10) #11, !dbg !2392
  %30 = icmp ne ptr %29, null, !dbg !2392
  br i1 %30, label %59, label %31, !dbg !2393

31:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2394, metadata !DIExpression()), !dbg !2413
  %32 = getelementptr inbounds %struct.uoptions, ptr %7, i32 0, i32 0, !dbg !2414
  store ptr @long_options, ptr %32, align 8, !dbg !2415
  br label %33, !dbg !2416

33:                                               ; preds = %57, %31
  %34 = load i32, ptr %4, align 4, !dbg !2417
  %35 = load ptr, ptr %5, align 8, !dbg !2418
  %36 = getelementptr inbounds %struct.uoptions, ptr %7, i32 0, i32 0, !dbg !2419
  %37 = load ptr, ptr %36, align 8, !dbg !2420
  %38 = call i32 @getopt_long(i32 noundef %34, ptr noundef %35, ptr noundef @.str.11, ptr noundef %37, ptr noundef null) #10, !dbg !2421
  store i32 %38, ptr %6, align 4, !dbg !2422
  %39 = icmp ne i32 %38, -1, !dbg !2423
  br i1 %39, label %40, label %58, !dbg !2416

40:                                               ; preds = %33
  %41 = load i32, ptr %6, align 4, !dbg !2424
  switch i32 %41, label %56 [
    i32 108, label %42
    i32 283, label %44
    i32 284, label %47
    i32 285, label %50
    i32 286, label %53
    i32 287, label %54
  ], !dbg !2426

42:                                               ; preds = %40
  %43 = load ptr, ptr @optarg, align 8, !dbg !2427
  call void @set_logfile(ptr noundef %43), !dbg !2429
  br label %57, !dbg !2430

44:                                               ; preds = %40
  %45 = load ptr, ptr @optarg, align 8, !dbg !2431
  %46 = call i32 @get_bool_value(ptr noundef %45), !dbg !2432
  call void @set_no_stdout_log(i32 noundef %46), !dbg !2433
  br label %57, !dbg !2434

47:                                               ; preds = %40
  %48 = load ptr, ptr @optarg, align 8, !dbg !2435
  %49 = call i32 @get_bool_value(ptr noundef %48), !dbg !2436
  call void @set_log_to_syslog(i32 noundef %49), !dbg !2437
  br label %57, !dbg !2438

50:                                               ; preds = %40
  %51 = load ptr, ptr @optarg, align 8, !dbg !2439
  %52 = call i32 @get_bool_value(ptr noundef %51), !dbg !2440
  call void @set_simple_log(i32 noundef %52), !dbg !2441
  br label %57, !dbg !2442

53:                                               ; preds = %40
  store i32 1, ptr @use_new_log_timestamp_format, align 4, !dbg !2443
  br label %57, !dbg !2444

54:                                               ; preds = %40
  %55 = load ptr, ptr @optarg, align 8, !dbg !2445
  call void @set_turn_log_timestamp_format(ptr noundef %55), !dbg !2446
  br label %57, !dbg !2447

56:                                               ; preds = %40
  br label %57, !dbg !2448

57:                                               ; preds = %56, %54, %53, %50, %47, %44, %42
  br label %33, !dbg !2416, !llvm.loop !2449

58:                                               ; preds = %33
  br label %59, !dbg !2451

59:                                               ; preds = %58, %2
  store i32 0, ptr @optind, align 4, !dbg !2452
  %60 = call i64 @sysconf(i32 noundef 83) #10, !dbg !2453
  store i64 %60, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 87), align 8, !dbg !2455
  %61 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 87), align 8, !dbg !2456
  %62 = icmp ult i64 %61, 2, !dbg !2458
  br i1 %62, label %63, label %64, !dbg !2459

63:                                               ; preds = %59
  store i64 2, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 87), align 8, !dbg !2460
  br label %69, !dbg !2461

64:                                               ; preds = %59
  %65 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 87), align 8, !dbg !2462
  %66 = icmp ugt i64 %65, 128, !dbg !2464
  br i1 %66, label %67, label %68, !dbg !2465

67:                                               ; preds = %64
  store i64 128, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 87), align 8, !dbg !2466
  br label %68, !dbg !2467

68:                                               ; preds = %67, %64
  br label %69

69:                                               ; preds = %68, %63
  %70 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 87), align 8, !dbg !2468
  %71 = trunc i64 %70 to i8, !dbg !2469
  store i8 %71, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 57), align 8, !dbg !2470
  call void @llvm.memset.p0.i64(ptr align 8 getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 86), i8 0, i64 1064, i1 false), !dbg !2471
  %72 = call ptr @ur_string_map_create(ptr noundef @free), !dbg !2472
  store ptr %72, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 86, i32 2, i32 1), align 8, !dbg !2473
  %73 = load ptr, ptr %5, align 8, !dbg !2474
  %74 = getelementptr inbounds ptr, ptr %73, i64 0, !dbg !2474
  %75 = load ptr, ptr %74, align 8, !dbg !2474
  %76 = call ptr @strstr(ptr noundef %75, ptr noundef @.str.10) #11, !dbg !2476
  %77 = icmp ne ptr %76, null, !dbg !2476
  br i1 %77, label %78, label %82, !dbg !2477

78:                                               ; preds = %69
  %79 = load i32, ptr %4, align 4, !dbg !2478
  %80 = load ptr, ptr %5, align 8, !dbg !2479
  %81 = call i32 @adminmain(i32 noundef %79, ptr noundef %80), !dbg !2480
  store i32 %81, ptr %3, align 4, !dbg !2481
  br label %515, !dbg !2481

82:                                               ; preds = %69
  %83 = load i32, ptr %4, align 4, !dbg !2482
  %84 = load ptr, ptr %5, align 8, !dbg !2483
  call void @read_config_file(i32 noundef %83, ptr noundef %84, i32 noundef 0), !dbg !2484
  %85 = load i32, ptr %4, align 4, !dbg !2485
  %86 = load ptr, ptr %5, align 8, !dbg !2486
  call void @read_config_file(i32 noundef %85, ptr noundef %86, i32 noundef 1), !dbg !2487
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2488, metadata !DIExpression()), !dbg !2489
  %87 = getelementptr inbounds %struct.uoptions, ptr %8, i32 0, i32 0, !dbg !2490
  store ptr @long_options, ptr %87, align 8, !dbg !2491
  br label %88, !dbg !2492

88:                                               ; preds = %101, %82
  %89 = load i32, ptr %4, align 4, !dbg !2493
  %90 = load ptr, ptr %5, align 8, !dbg !2494
  %91 = getelementptr inbounds %struct.uoptions, ptr %8, i32 0, i32 0, !dbg !2495
  %92 = load ptr, ptr %91, align 8, !dbg !2496
  %93 = call i32 @getopt_long(i32 noundef %89, ptr noundef %90, ptr noundef @.str.11, ptr noundef %92, ptr noundef null) #10, !dbg !2497
  store i32 %93, ptr %6, align 4, !dbg !2498
  %94 = icmp ne i32 %93, -1, !dbg !2499
  br i1 %94, label %95, label %102, !dbg !2492

95:                                               ; preds = %88
  %96 = load i32, ptr %6, align 4, !dbg !2500
  %97 = icmp ne i32 %96, 117, !dbg !2503
  br i1 %97, label %98, label %101, !dbg !2504

98:                                               ; preds = %95
  %99 = load i32, ptr %6, align 4, !dbg !2505
  %100 = load ptr, ptr @optarg, align 8, !dbg !2506
  call void @set_option(i32 noundef %99, ptr noundef %100), !dbg !2507
  br label %101, !dbg !2507

101:                                              ; preds = %98, %95
  br label %88, !dbg !2492, !llvm.loop !2508

102:                                              ; preds = %88
  %103 = load i32, ptr %4, align 4, !dbg !2510
  %104 = load ptr, ptr %5, align 8, !dbg !2511
  call void @read_config_file(i32 noundef %103, ptr noundef %104, i32 noundef 2), !dbg !2512
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2513, metadata !DIExpression()), !dbg !2515
  %105 = call i64 @set_system_parameters(i32 noundef 1), !dbg !2516
  store i64 %105, ptr %9, align 8, !dbg !2515
  %106 = load i64, ptr %9, align 8, !dbg !2517
  call void @print_features(i64 noundef %106), !dbg !2518
  %107 = call ptr @get_realm(ptr noundef null), !dbg !2519
  %108 = getelementptr inbounds %struct._realm_params_t, ptr %107, i32 0, i32 1, !dbg !2521
  %109 = getelementptr inbounds %struct._realm_options_t, ptr %108, i32 0, i32 0, !dbg !2522
  %110 = getelementptr inbounds [128 x i8], ptr %109, i64 0, i64 0, !dbg !2519
  %111 = load i8, ptr %110, align 8, !dbg !2519
  %112 = icmp ne i8 %111, 0, !dbg !2519
  br i1 %112, label %136, label %113, !dbg !2523

113:                                              ; preds = %102
  br label %114, !dbg !2524

114:                                              ; preds = %113
  %115 = call ptr @get_realm(ptr noundef null), !dbg !2526
  %116 = getelementptr inbounds %struct._realm_params_t, ptr %115, i32 0, i32 1, !dbg !2526
  %117 = getelementptr inbounds %struct._realm_options_t, ptr %116, i32 0, i32 0, !dbg !2526
  %118 = getelementptr inbounds [128 x i8], ptr %117, i64 0, i64 0, !dbg !2526
  %119 = icmp ne ptr %118, getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 60), !dbg !2526
  br i1 %119, label %120, label %134, !dbg !2529

120:                                              ; preds = %114
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2530, metadata !DIExpression()), !dbg !2534
  store i64 128, ptr %10, align 8, !dbg !2534
  %121 = call ptr @get_realm(ptr noundef null), !dbg !2534
  %122 = getelementptr inbounds %struct._realm_params_t, ptr %121, i32 0, i32 1, !dbg !2534
  %123 = getelementptr inbounds %struct._realm_options_t, ptr %122, i32 0, i32 0, !dbg !2534
  %124 = getelementptr inbounds [128 x i8], ptr %123, i64 0, i64 0, !dbg !2534
  %125 = load i64, ptr %10, align 8, !dbg !2534
  %126 = call ptr @strncpy(ptr noundef %124, ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 60), i64 noundef %125) #10, !dbg !2534
  %127 = call ptr @get_realm(ptr noundef null), !dbg !2534
  %128 = getelementptr inbounds %struct._realm_params_t, ptr %127, i32 0, i32 1, !dbg !2534
  %129 = getelementptr inbounds %struct._realm_options_t, ptr %128, i32 0, i32 0, !dbg !2534
  %130 = getelementptr inbounds [128 x i8], ptr %129, i64 0, i64 0, !dbg !2534
  %131 = load i64, ptr %10, align 8, !dbg !2534
  %132 = sub i64 %131, 1, !dbg !2534
  %133 = getelementptr inbounds i8, ptr %130, i64 %132, !dbg !2534
  store i8 0, ptr %133, align 1, !dbg !2534
  br label %134, !dbg !2535

134:                                              ; preds = %120, %114
  br label %135, !dbg !2529

135:                                              ; preds = %134
  br label %136, !dbg !2536

136:                                              ; preds = %135, %102
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.12, ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 60)), !dbg !2537
  %137 = call ptr @get_realm(ptr noundef null), !dbg !2538
  %138 = getelementptr inbounds %struct._realm_params_t, ptr %137, i32 0, i32 1, !dbg !2539
  %139 = getelementptr inbounds %struct._realm_options_t, ptr %138, i32 0, i32 0, !dbg !2540
  %140 = getelementptr inbounds [128 x i8], ptr %139, i64 0, i64 0, !dbg !2538
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.13, ptr noundef %140), !dbg !2541
  %141 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 27), align 1, !dbg !2542
  %142 = icmp ne i8 %141, 0, !dbg !2542
  br i1 %142, label %143, label %144, !dbg !2544

143:                                              ; preds = %136
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.14, ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 27)), !dbg !2545
  br label %144, !dbg !2547

144:                                              ; preds = %143, %136
  %145 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 61), align 4, !dbg !2548
  %146 = icmp ne i32 %145, 0, !dbg !2550
  br i1 %146, label %147, label %152, !dbg !2551

147:                                              ; preds = %144
  %148 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 59), align 2, !dbg !2552
  %149 = sext i8 %148 to i32, !dbg !2552
  %150 = icmp ne i32 %149, 0, !dbg !2552
  br i1 %150, label %151, label %152, !dbg !2553

151:                                              ; preds = %147
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.15, ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 59)), !dbg !2554
  br label %152, !dbg !2556

152:                                              ; preds = %151, %147, %144
  store i32 0, ptr @optind, align 4, !dbg !2557
  br label %153, !dbg !2558

153:                                              ; preds = %166, %152
  %154 = load i32, ptr %4, align 4, !dbg !2559
  %155 = load ptr, ptr %5, align 8, !dbg !2560
  %156 = getelementptr inbounds %struct.uoptions, ptr %8, i32 0, i32 0, !dbg !2561
  %157 = load ptr, ptr %156, align 8, !dbg !2562
  %158 = call i32 @getopt_long(i32 noundef %154, ptr noundef %155, ptr noundef @.str.11, ptr noundef %157, ptr noundef null) #10, !dbg !2563
  store i32 %158, ptr %6, align 4, !dbg !2564
  %159 = icmp ne i32 %158, -1, !dbg !2565
  br i1 %159, label %160, label %167, !dbg !2558

160:                                              ; preds = %153
  %161 = load i32, ptr %6, align 4, !dbg !2566
  %162 = icmp eq i32 %161, 117, !dbg !2569
  br i1 %162, label %163, label %166, !dbg !2570

163:                                              ; preds = %160
  %164 = load i32, ptr %6, align 4, !dbg !2571
  %165 = load ptr, ptr @optarg, align 8, !dbg !2573
  call void @set_option(i32 noundef %164, ptr noundef %165), !dbg !2574
  br label %166, !dbg !2575

166:                                              ; preds = %163, %160
  br label %153, !dbg !2558, !llvm.loop !2576

167:                                              ; preds = %153
  %168 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 81), align 8, !dbg !2578
  %169 = icmp ne i64 %168, 0, !dbg !2580
  br i1 %169, label %170, label %174, !dbg !2581

170:                                              ; preds = %167
  %171 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 80), align 8, !dbg !2582
  %172 = icmp ne i64 %171, 0, !dbg !2583
  br i1 %172, label %174, label %173, !dbg !2584

173:                                              ; preds = %170
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.16), !dbg !2585
  call void @exit(i32 noundef -1) #13, !dbg !2587
  unreachable, !dbg !2587

174:                                              ; preds = %170, %167
  %175 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 38), align 8, !dbg !2588
  %176 = icmp ne i32 %175, 0, !dbg !2590
  br i1 %176, label %177, label %181, !dbg !2591

177:                                              ; preds = %174
  %178 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 37), align 4, !dbg !2592
  %179 = icmp ne i32 %178, 0, !dbg !2593
  br i1 %179, label %180, label %181, !dbg !2594

180:                                              ; preds = %177
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.17), !dbg !2595
  call void @exit(i32 noundef -1) #13, !dbg !2597
  unreachable, !dbg !2597

181:                                              ; preds = %177, %174
  %182 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 38), align 8, !dbg !2598
  %183 = icmp ne i32 %182, 0, !dbg !2600
  br i1 %183, label %184, label %185, !dbg !2601

184:                                              ; preds = %181
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.18), !dbg !2602
  br label %185, !dbg !2604

185:                                              ; preds = %184, %181
  %186 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 37), align 4, !dbg !2605
  %187 = icmp ne i32 %186, 0, !dbg !2607
  br i1 %187, label %188, label %189, !dbg !2608

188:                                              ; preds = %185
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.19), !dbg !2609
  br label %189, !dbg !2611

189:                                              ; preds = %188, %185
  %190 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 70), align 8, !dbg !2612
  %191 = icmp ne i32 %190, 0, !dbg !2614
  br i1 %191, label %192, label %193, !dbg !2615

192:                                              ; preds = %189
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 2, ptr noundef @.str.20), !dbg !2616
  br label %193, !dbg !2618

193:                                              ; preds = %192, %189
  %194 = call i64 @strlen(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 86, i32 1)) #11, !dbg !2619
  %195 = icmp ne i64 %194, 0, !dbg !2619
  br i1 %195, label %209, label %196, !dbg !2621

196:                                              ; preds = %193
  %197 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 86), align 8, !dbg !2622
  %198 = icmp eq i32 %197, 0, !dbg !2623
  br i1 %198, label %199, label %209, !dbg !2624

199:                                              ; preds = %196
  br label %200, !dbg !2625

200:                                              ; preds = %199
  br i1 icmp ne (ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 86, i32 1), ptr @.str.21), label %201, label %207, !dbg !2626

201:                                              ; preds = %200
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2628, metadata !DIExpression()), !dbg !2633
  store i64 1025, ptr %11, align 8, !dbg !2633
  %202 = load i64, ptr %11, align 8, !dbg !2633
  %203 = call ptr @strncpy(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 86, i32 1), ptr noundef @.str.21, i64 noundef %202) #10, !dbg !2633
  %204 = load i64, ptr %11, align 8, !dbg !2633
  %205 = sub i64 %204, 1, !dbg !2633
  %206 = getelementptr inbounds i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 86, i32 1), i64 %205, !dbg !2633
  store i8 0, ptr %206, align 1, !dbg !2633
  br label %207, !dbg !2634

207:                                              ; preds = %201, %200
  br label %208, !dbg !2626

208:                                              ; preds = %207
  br label %209, !dbg !2626

209:                                              ; preds = %208, %196, %193
  %210 = load i32, ptr @optind, align 4, !dbg !2635
  %211 = load i32, ptr %4, align 4, !dbg !2636
  %212 = sub nsw i32 %211, %210, !dbg !2636
  store i32 %212, ptr %4, align 4, !dbg !2636
  %213 = load i32, ptr @optind, align 4, !dbg !2637
  %214 = load ptr, ptr %5, align 8, !dbg !2638
  %215 = sext i32 %213 to i64, !dbg !2638
  %216 = getelementptr inbounds ptr, ptr %214, i64 %215, !dbg !2638
  store ptr %216, ptr %5, align 8, !dbg !2638
  %217 = load i32, ptr %4, align 4, !dbg !2639
  %218 = icmp sgt i32 %217, 0, !dbg !2641
  br i1 %218, label %219, label %226, !dbg !2642

219:                                              ; preds = %209
  %220 = load ptr, ptr %5, align 8, !dbg !2643
  %221 = load i32, ptr %4, align 4, !dbg !2645
  %222 = sub nsw i32 %221, 1, !dbg !2646
  %223 = sext i32 %222 to i64, !dbg !2643
  %224 = getelementptr inbounds ptr, ptr %220, i64 %223, !dbg !2643
  %225 = load ptr, ptr %224, align 8, !dbg !2643
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.22, ptr noundef %225), !dbg !2647
  br label %226, !dbg !2648

226:                                              ; preds = %219, %209
  %227 = load i32, ptr @use_lt_credentials, align 4, !dbg !2649
  %228 = icmp ne i32 %227, 0, !dbg !2649
  br i1 %228, label %229, label %233, !dbg !2651

229:                                              ; preds = %226
  %230 = load i32, ptr @anon_credentials, align 4, !dbg !2652
  %231 = icmp ne i32 %230, 0, !dbg !2652
  br i1 %231, label %232, label %233, !dbg !2653

232:                                              ; preds = %229
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.23), !dbg !2654
  call void @exit(i32 noundef -1) #13, !dbg !2656
  unreachable, !dbg !2656

233:                                              ; preds = %229, %226
  %234 = load i32, ptr @use_ltc, align 4, !dbg !2657
  %235 = icmp ne i32 %234, 0, !dbg !2657
  br i1 %235, label %236, label %240, !dbg !2659

236:                                              ; preds = %233
  %237 = load i32, ptr @use_tltc, align 4, !dbg !2660
  %238 = icmp ne i32 %237, 0, !dbg !2660
  br i1 %238, label %239, label %240, !dbg !2661

239:                                              ; preds = %236
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 2, ptr noundef @.str.24), !dbg !2662
  br label %240, !dbg !2664

240:                                              ; preds = %239, %236, %233
  %241 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 51), align 4, !dbg !2665
  %242 = icmp ne i32 %241, 0, !dbg !2667
  br i1 %242, label %243, label %252, !dbg !2668

243:                                              ; preds = %240
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 2, ptr noundef @.str.25), !dbg !2669
  %244 = load i8, ptr @cli_password, align 16, !dbg !2671
  %245 = sext i8 %244 to i32, !dbg !2671
  %246 = icmp eq i32 %245, 0, !dbg !2673
  br i1 %246, label %247, label %251, !dbg !2674

247:                                              ; preds = %243
  %248 = load i32, ptr @use_cli, align 4, !dbg !2675
  %249 = icmp ne i32 %248, 0, !dbg !2675
  br i1 %249, label %250, label %251, !dbg !2676

250:                                              ; preds = %247
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.26), !dbg !2677
  call void @exit(i32 noundef -1) #13, !dbg !2679
  unreachable, !dbg !2679

251:                                              ; preds = %247, %243
  br label %252, !dbg !2680

252:                                              ; preds = %251, %240
  %253 = load i32, ptr @use_cli, align 4, !dbg !2681
  %254 = icmp ne i32 %253, 0, !dbg !2681
  br i1 %254, label %255, label %263, !dbg !2683

255:                                              ; preds = %252
  %256 = load i8, ptr @cli_password, align 16, !dbg !2684
  %257 = sext i8 %256 to i32, !dbg !2684
  %258 = icmp eq i32 %257, 0, !dbg !2685
  br i1 %258, label %259, label %263, !dbg !2686

259:                                              ; preds = %255
  %260 = load i32, ptr @use_cli, align 4, !dbg !2687
  %261 = icmp ne i32 %260, 0, !dbg !2687
  br i1 %261, label %262, label %263, !dbg !2688

262:                                              ; preds = %259
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.27), !dbg !2689
  store i32 0, ptr @use_cli, align 4, !dbg !2691
  br label %263, !dbg !2692

263:                                              ; preds = %262, %259, %255, %252
  %264 = load i32, ptr @use_lt_credentials, align 4, !dbg !2693
  %265 = icmp ne i32 %264, 0, !dbg !2693
  br i1 %265, label %275, label %266, !dbg !2695

266:                                              ; preds = %263
  %267 = load i32, ptr @anon_credentials, align 4, !dbg !2696
  %268 = icmp ne i32 %267, 0, !dbg !2696
  br i1 %268, label %275, label %269, !dbg !2697

269:                                              ; preds = %266
  %270 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 86, i32 2), align 8, !dbg !2698
  %271 = icmp ne i64 %270, 0, !dbg !2701
  br i1 %271, label %272, label %273, !dbg !2702

272:                                              ; preds = %269
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 2, ptr noundef @.str.28), !dbg !2703
  store i32 1, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 78), align 8, !dbg !2705
  store i32 1, ptr @use_lt_credentials, align 4, !dbg !2706
  br label %274, !dbg !2707

273:                                              ; preds = %269
  store i32 0, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 78), align 8, !dbg !2708
  store i32 0, ptr @use_lt_credentials, align 4, !dbg !2710
  br label %274

274:                                              ; preds = %273, %272
  br label %275, !dbg !2711

275:                                              ; preds = %274, %266, %263
  %276 = load i32, ptr @use_lt_credentials, align 4, !dbg !2712
  %277 = icmp ne i32 %276, 0, !dbg !2712
  br i1 %277, label %278, label %287, !dbg !2714

278:                                              ; preds = %275
  %279 = call ptr @get_realm(ptr noundef null), !dbg !2715
  %280 = getelementptr inbounds %struct._realm_params_t, ptr %279, i32 0, i32 1, !dbg !2718
  %281 = getelementptr inbounds %struct._realm_options_t, ptr %280, i32 0, i32 0, !dbg !2719
  %282 = getelementptr inbounds [128 x i8], ptr %281, i64 0, i64 0, !dbg !2715
  %283 = load i8, ptr %282, align 8, !dbg !2715
  %284 = icmp ne i8 %283, 0, !dbg !2715
  br i1 %284, label %286, label %285, !dbg !2720

285:                                              ; preds = %278
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 2, ptr noundef @.str.29), !dbg !2721
  br label %286, !dbg !2723

286:                                              ; preds = %285, %278
  br label %287, !dbg !2724

287:                                              ; preds = %286, %275
  %288 = load i32, ptr @anon_credentials, align 4, !dbg !2725
  %289 = icmp ne i32 %288, 0, !dbg !2725
  br i1 %289, label %290, label %295, !dbg !2727

290:                                              ; preds = %287
  %291 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 86, i32 2), align 8, !dbg !2728
  %292 = icmp ne i64 %291, 0, !dbg !2731
  br i1 %292, label %293, label %294, !dbg !2732

293:                                              ; preds = %290
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 2, ptr noundef @.str.30), !dbg !2733
  store i32 0, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 78), align 8, !dbg !2735
  store i32 0, ptr @use_lt_credentials, align 4, !dbg !2736
  br label %294, !dbg !2737

294:                                              ; preds = %293, %290
  br label %295, !dbg !2738

295:                                              ; preds = %294, %287
  call void @openssl_setup(), !dbg !2739
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2740, metadata !DIExpression()), !dbg !2741
  store i32 0, ptr %12, align 4, !dbg !2741
  %296 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 8), align 8, !dbg !2742
  %297 = icmp ne i64 %296, 0, !dbg !2744
  br i1 %297, label %310, label %298, !dbg !2745

298:                                              ; preds = %295
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 2, ptr noundef @.str.31), !dbg !2746
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.32), !dbg !2748
  call void @llvm.dbg.declare(metadata ptr %13, metadata !2749, metadata !DIExpression()), !dbg !2750
  %299 = call i32 @make_local_listeners_list(), !dbg !2751
  store i32 %299, ptr %13, align 4, !dbg !2750
  %300 = load i32, ptr %13, align 4, !dbg !2752
  %301 = icmp slt i32 %300, 1, !dbg !2754
  br i1 %301, label %305, label %302, !dbg !2755

302:                                              ; preds = %298
  %303 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 8), align 8, !dbg !2756
  %304 = icmp ne i64 %303, 0, !dbg !2757
  br i1 %304, label %308, label %305, !dbg !2758

305:                                              ; preds = %302, %298
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.33, ptr noundef @__FUNCTION__.main), !dbg !2759
  %306 = load ptr, ptr @stderr, align 8, !dbg !2761
  %307 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %306, ptr noundef @.str.34, ptr noundef @Usage), !dbg !2762
  call void @exit(i32 noundef -1) #13, !dbg !2763
  unreachable, !dbg !2763

308:                                              ; preds = %302
  store i32 1, ptr %12, align 4, !dbg !2764
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.35), !dbg !2765
  %309 = load i32, ptr %13, align 4, !dbg !2766
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.36, i32 noundef %309), !dbg !2767
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.35), !dbg !2768
  br label %310, !dbg !2769

310:                                              ; preds = %308, %295
  %311 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 53), align 8, !dbg !2770
  %312 = icmp ne i64 %311, 0, !dbg !2772
  br i1 %312, label %367, label %313, !dbg !2773

313:                                              ; preds = %310
  %314 = load i32, ptr %12, align 4, !dbg !2774
  %315 = icmp ne i32 %314, 0, !dbg !2774
  br i1 %315, label %344, label %316, !dbg !2777

316:                                              ; preds = %313
  %317 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 8), align 8, !dbg !2778
  %318 = icmp ne i64 %317, 0, !dbg !2779
  br i1 %318, label %319, label %344, !dbg !2780

319:                                              ; preds = %316
  %320 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 6), align 8, !dbg !2781
  %321 = icmp ne ptr %320, null, !dbg !2782
  br i1 %321, label %322, label %344, !dbg !2783

322:                                              ; preds = %319
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2784, metadata !DIExpression()), !dbg !2786
  store i64 0, ptr %14, align 8, !dbg !2786
  store i64 0, ptr %14, align 8, !dbg !2787
  br label %323, !dbg !2789

323:                                              ; preds = %340, %322
  %324 = load i64, ptr %14, align 8, !dbg !2790
  %325 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 8), align 8, !dbg !2792
  %326 = icmp ult i64 %324, %325, !dbg !2793
  br i1 %326, label %327, label %343, !dbg !2794

327:                                              ; preds = %323
  %328 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 6), align 8, !dbg !2795
  %329 = load i64, ptr %14, align 8, !dbg !2798
  %330 = getelementptr inbounds ptr, ptr %328, i64 %329, !dbg !2799
  %331 = load ptr, ptr %330, align 8, !dbg !2799
  %332 = icmp ne ptr %331, null, !dbg !2799
  br i1 %332, label %333, label %339, !dbg !2800

333:                                              ; preds = %327
  %334 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 6), align 8, !dbg !2801
  %335 = load i64, ptr %14, align 8, !dbg !2803
  %336 = getelementptr inbounds ptr, ptr %334, i64 %335, !dbg !2804
  %337 = load ptr, ptr %336, align 8, !dbg !2804
  %338 = call i32 @add_relay_addr(ptr noundef %337), !dbg !2805
  br label %339, !dbg !2806

339:                                              ; preds = %333, %327
  br label %340, !dbg !2807

340:                                              ; preds = %339
  %341 = load i64, ptr %14, align 8, !dbg !2808
  %342 = add i64 %341, 1, !dbg !2808
  store i64 %342, ptr %14, align 8, !dbg !2808
  br label %323, !dbg !2809, !llvm.loop !2810

343:                                              ; preds = %323
  br label %344, !dbg !2812

344:                                              ; preds = %343, %319, %316, %313
  %345 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 53), align 8, !dbg !2813
  %346 = icmp ne i64 %345, 0, !dbg !2815
  br i1 %346, label %360, label %347, !dbg !2816

347:                                              ; preds = %344
  store i32 1, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 55), align 8, !dbg !2817
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 2, ptr noundef @.str.37), !dbg !2819
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.38), !dbg !2820
  %348 = call i32 @make_local_relays_list(i32 noundef 0, i32 noundef 2), !dbg !2821
  %349 = icmp slt i32 %348, 1, !dbg !2823
  br i1 %349, label %350, label %352, !dbg !2824

350:                                              ; preds = %347
  %351 = call i32 @make_local_relays_list(i32 noundef 1, i32 noundef 2), !dbg !2825
  br label %352, !dbg !2827

352:                                              ; preds = %350, %347
  %353 = call i32 @make_local_relays_list(i32 noundef 0, i32 noundef 10), !dbg !2828
  %354 = icmp slt i32 %353, 1, !dbg !2830
  br i1 %354, label %355, label %357, !dbg !2831

355:                                              ; preds = %352
  %356 = call i32 @make_local_relays_list(i32 noundef 1, i32 noundef 10), !dbg !2832
  br label %357, !dbg !2834

357:                                              ; preds = %355, %352
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.35), !dbg !2835
  %358 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 53), align 8, !dbg !2836
  %359 = trunc i64 %358 to i32, !dbg !2837
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.39, i32 noundef %359), !dbg !2838
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.35), !dbg !2839
  br label %360, !dbg !2840

360:                                              ; preds = %357, %344
  %361 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 53), align 8, !dbg !2841
  %362 = icmp ne i64 %361, 0, !dbg !2843
  br i1 %362, label %366, label %363, !dbg !2844

363:                                              ; preds = %360
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.40, ptr noundef @__FUNCTION__.main), !dbg !2845
  %364 = load ptr, ptr @stderr, align 8, !dbg !2847
  %365 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %364, ptr noundef @.str.34, ptr noundef @Usage), !dbg !2848
  call void @exit(i32 noundef -1) #13, !dbg !2849
  unreachable, !dbg !2849

366:                                              ; preds = %360
  br label %367, !dbg !2850

367:                                              ; preds = %366, %310
  %368 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 56), align 8, !dbg !2851
  %369 = icmp ne ptr %368, null, !dbg !2853
  br i1 %369, label %370, label %423, !dbg !2854

370:                                              ; preds = %367
  %371 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 54), align 8, !dbg !2855
  %372 = icmp ne ptr %371, null, !dbg !2856
  br i1 %372, label %373, label %423, !dbg !2857

373:                                              ; preds = %370
  call void @llvm.dbg.declare(metadata ptr %15, metadata !2858, metadata !DIExpression()), !dbg !2860
  store i64 0, ptr %15, align 8, !dbg !2860
  store i64 0, ptr %15, align 8, !dbg !2861
  br label %374, !dbg !2863

374:                                              ; preds = %419, %373
  %375 = load i64, ptr %15, align 8, !dbg !2864
  %376 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 53), align 8, !dbg !2866
  %377 = icmp ult i64 %375, %376, !dbg !2867
  br i1 %377, label %378, label %422, !dbg !2868

378:                                              ; preds = %374
  %379 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 54), align 8, !dbg !2869
  %380 = load i64, ptr %15, align 8, !dbg !2872
  %381 = getelementptr inbounds ptr, ptr %379, i64 %380, !dbg !2873
  %382 = load ptr, ptr %381, align 8, !dbg !2873
  %383 = icmp ne ptr %382, null, !dbg !2873
  br i1 %383, label %384, label %418, !dbg !2874

384:                                              ; preds = %378
  call void @llvm.dbg.declare(metadata ptr %16, metadata !2875, metadata !DIExpression()), !dbg !2877
  %385 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 54), align 8, !dbg !2878
  %386 = load i64, ptr %15, align 8, !dbg !2879
  %387 = getelementptr inbounds ptr, ptr %385, i64 %386, !dbg !2880
  %388 = load ptr, ptr %387, align 8, !dbg !2880
  store ptr %388, ptr %16, align 8, !dbg !2877
  %389 = load ptr, ptr %16, align 8, !dbg !2881
  %390 = call ptr @strstr(ptr noundef %389, ptr noundef @.str.41) #11, !dbg !2883
  %391 = load ptr, ptr %16, align 8, !dbg !2884
  %392 = icmp ne ptr %390, %391, !dbg !2885
  br i1 %392, label %393, label %417, !dbg !2886

393:                                              ; preds = %384
  %394 = load ptr, ptr %16, align 8, !dbg !2887
  %395 = call ptr @strstr(ptr noundef %394, ptr noundef @.str.42) #11, !dbg !2888
  %396 = load ptr, ptr %16, align 8, !dbg !2889
  %397 = icmp ne ptr %395, %396, !dbg !2890
  br i1 %397, label %398, label %417, !dbg !2891

398:                                              ; preds = %393
  call void @llvm.dbg.declare(metadata ptr %17, metadata !2892, metadata !DIExpression()), !dbg !2894
  %399 = load ptr, ptr %16, align 8, !dbg !2895
  %400 = call i32 @make_ioa_addr(ptr noundef %399, i32 noundef 0, ptr noundef %17), !dbg !2897
  %401 = icmp slt i32 %400, 0, !dbg !2898
  br i1 %401, label %402, label %404, !dbg !2899

402:                                              ; preds = %398
  %403 = load ptr, ptr %16, align 8, !dbg !2900
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.43, ptr noundef %403), !dbg !2902
  br label %416, !dbg !2903

404:                                              ; preds = %398
  %405 = getelementptr inbounds %struct.sockaddr, ptr %17, i32 0, i32 0, !dbg !2904
  %406 = load i16, ptr %405, align 4, !dbg !2904
  %407 = zext i16 %406 to i32, !dbg !2906
  %408 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 56), align 8, !dbg !2907
  %409 = getelementptr inbounds %struct.sockaddr, ptr %408, i32 0, i32 0, !dbg !2908
  %410 = load i16, ptr %409, align 4, !dbg !2908
  %411 = zext i16 %410 to i32, !dbg !2909
  %412 = icmp eq i32 %407, %411, !dbg !2910
  br i1 %412, label %413, label %415, !dbg !2911

413:                                              ; preds = %404
  %414 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 56), align 8, !dbg !2912
  call void @ioa_addr_add_mapping(ptr noundef %414, ptr noundef %17), !dbg !2914
  br label %415, !dbg !2915

415:                                              ; preds = %413, %404
  br label %416

416:                                              ; preds = %415, %402
  br label %417, !dbg !2916

417:                                              ; preds = %416, %393, %384
  br label %418, !dbg !2917

418:                                              ; preds = %417, %378
  br label %419, !dbg !2918

419:                                              ; preds = %418
  %420 = load i64, ptr %15, align 8, !dbg !2919
  %421 = add i64 %420, 1, !dbg !2919
  store i64 %421, ptr %15, align 8, !dbg !2919
  br label %374, !dbg !2920, !llvm.loop !2921

422:                                              ; preds = %374
  br label %423, !dbg !2923

423:                                              ; preds = %422, %370, %367
  %424 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 22), align 4, !dbg !2924
  %425 = icmp ne i32 %424, 0, !dbg !2926
  br i1 %425, label %426, label %436, !dbg !2927

426:                                              ; preds = %423
  call void @llvm.dbg.declare(metadata ptr %18, metadata !2928, metadata !DIExpression()), !dbg !2932
  %427 = call i32 @fork() #10, !dbg !2933
  store i32 %427, ptr %18, align 4, !dbg !2932
  %428 = load i32, ptr %18, align 4, !dbg !2934
  %429 = icmp sgt i32 %428, 0, !dbg !2936
  br i1 %429, label %430, label %431, !dbg !2937

430:                                              ; preds = %426
  call void @exit(i32 noundef 0) #13, !dbg !2938
  unreachable, !dbg !2938

431:                                              ; preds = %426
  %432 = load i32, ptr %18, align 4, !dbg !2939
  %433 = icmp slt i32 %432, 0, !dbg !2941
  br i1 %433, label %434, label %435, !dbg !2942

434:                                              ; preds = %431
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.44), !dbg !2943
  call void @exit(i32 noundef -1) #13, !dbg !2945
  unreachable, !dbg !2945

435:                                              ; preds = %431
  br label %436, !dbg !2946

436:                                              ; preds = %435, %423
  %437 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 26), align 4, !dbg !2947
  %438 = icmp ne i8 %437, 0, !dbg !2947
  br i1 %438, label %439, label %504, !dbg !2949

439:                                              ; preds = %436
  call void @llvm.dbg.declare(metadata ptr %19, metadata !2950, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.declare(metadata ptr %20, metadata !2956, metadata !DIExpression()), !dbg !2957
  %440 = call noalias ptr @fopen(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 26), ptr noundef @.str.9), !dbg !2958
  store ptr %440, ptr %20, align 8, !dbg !2957
  %441 = load ptr, ptr %20, align 8, !dbg !2959
  %442 = icmp ne ptr %441, null, !dbg !2959
  br i1 %442, label %443, label %453, !dbg !2961

443:                                              ; preds = %439
  br label %444, !dbg !2962

444:                                              ; preds = %443
  call void @llvm.dbg.declare(metadata ptr %21, metadata !2964, metadata !DIExpression()), !dbg !2970
  store i64 2049, ptr %21, align 8, !dbg !2970
  %445 = getelementptr inbounds [2049 x i8], ptr %19, i64 0, i64 0, !dbg !2970
  %446 = load i64, ptr %21, align 8, !dbg !2970
  %447 = call ptr @strncpy(ptr noundef %445, ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 26), i64 noundef %446) #10, !dbg !2970
  %448 = getelementptr inbounds [2049 x i8], ptr %19, i64 0, i64 0, !dbg !2970
  %449 = load i64, ptr %21, align 8, !dbg !2970
  %450 = sub i64 %449, 1, !dbg !2970
  %451 = getelementptr inbounds i8, ptr %448, i64 %450, !dbg !2970
  store i8 0, ptr %451, align 1, !dbg !2970
  br label %452, !dbg !2971

452:                                              ; preds = %444
  br label %492, !dbg !2972

453:                                              ; preds = %439
  %454 = getelementptr inbounds [2049 x i8], ptr %19, i64 0, i64 0, !dbg !2973
  %455 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %454, i64 noundef 2049, ptr noundef @.str.45, ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 26)) #10, !dbg !2975
  %456 = getelementptr inbounds [2049 x i8], ptr %19, i64 0, i64 0, !dbg !2976
  call void @perror(ptr noundef %456), !dbg !2977
  %457 = getelementptr inbounds [2049 x i8], ptr %19, i64 0, i64 0, !dbg !2978
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 2, ptr noundef @.str.8, ptr noundef %457), !dbg !2979
  call void @llvm.dbg.declare(metadata ptr %22, metadata !2980, metadata !DIExpression()), !dbg !2983
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %22, ptr align 16 @__const.main.pfs, i64 56, i1 false), !dbg !2983
  call void @llvm.dbg.declare(metadata ptr %23, metadata !2984, metadata !DIExpression()), !dbg !2986
  %458 = getelementptr inbounds [7 x ptr], ptr %22, i64 0, i64 0, !dbg !2987
  store ptr %458, ptr %23, align 8, !dbg !2986
  br label %459, !dbg !2988

459:                                              ; preds = %490, %453
  %460 = load ptr, ptr %23, align 8, !dbg !2989
  %461 = load ptr, ptr %460, align 8, !dbg !2990
  %462 = icmp ne ptr %461, null, !dbg !2988
  br i1 %462, label %463, label %491, !dbg !2988

463:                                              ; preds = %459
  %464 = load ptr, ptr %23, align 8, !dbg !2991
  %465 = load ptr, ptr %464, align 8, !dbg !2993
  %466 = call noalias ptr @fopen(ptr noundef %465, ptr noundef @.str.9), !dbg !2994
  store ptr %466, ptr %20, align 8, !dbg !2995
  %467 = load ptr, ptr %20, align 8, !dbg !2996
  %468 = icmp ne ptr %467, null, !dbg !2996
  br i1 %468, label %469, label %487, !dbg !2998

469:                                              ; preds = %463
  br label %470, !dbg !2999

470:                                              ; preds = %469
  %471 = getelementptr inbounds [2049 x i8], ptr %19, i64 0, i64 0, !dbg !3001
  %472 = load ptr, ptr %23, align 8, !dbg !3001
  %473 = load ptr, ptr %472, align 8, !dbg !3001
  %474 = icmp ne ptr %471, %473, !dbg !3001
  br i1 %474, label %475, label %485, !dbg !3004

475:                                              ; preds = %470
  call void @llvm.dbg.declare(metadata ptr %24, metadata !3005, metadata !DIExpression()), !dbg !3009
  store i64 2049, ptr %24, align 8, !dbg !3009
  %476 = getelementptr inbounds [2049 x i8], ptr %19, i64 0, i64 0, !dbg !3009
  %477 = load ptr, ptr %23, align 8, !dbg !3009
  %478 = load ptr, ptr %477, align 8, !dbg !3009
  %479 = load i64, ptr %24, align 8, !dbg !3009
  %480 = call ptr @strncpy(ptr noundef %476, ptr noundef %478, i64 noundef %479) #10, !dbg !3009
  %481 = getelementptr inbounds [2049 x i8], ptr %19, i64 0, i64 0, !dbg !3009
  %482 = load i64, ptr %24, align 8, !dbg !3009
  %483 = sub i64 %482, 1, !dbg !3009
  %484 = getelementptr inbounds i8, ptr %481, i64 %483, !dbg !3009
  store i8 0, ptr %484, align 1, !dbg !3009
  br label %485, !dbg !3010

485:                                              ; preds = %475, %470
  br label %486, !dbg !3004

486:                                              ; preds = %485
  br label %491, !dbg !3011

487:                                              ; preds = %463
  %488 = load ptr, ptr %23, align 8, !dbg !3012
  %489 = getelementptr inbounds ptr, ptr %488, i32 1, !dbg !3012
  store ptr %489, ptr %23, align 8, !dbg !3012
  br label %490

490:                                              ; preds = %487
  br label %459, !dbg !2988, !llvm.loop !3014

491:                                              ; preds = %486, %459
  br label %492

492:                                              ; preds = %491, %452
  %493 = load ptr, ptr %20, align 8, !dbg !3016
  %494 = icmp ne ptr %493, null, !dbg !3016
  br i1 %494, label %495, label %503, !dbg !3018

495:                                              ; preds = %492
  %496 = load ptr, ptr %20, align 8, !dbg !3019
  %497 = call i32 @getpid() #10, !dbg !3021
  %498 = sext i32 %497 to i64, !dbg !3022
  %499 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %496, ptr noundef @.str.52, i64 noundef %498), !dbg !3023
  %500 = load ptr, ptr %20, align 8, !dbg !3024
  %501 = call i32 @fclose(ptr noundef %500), !dbg !3025
  %502 = getelementptr inbounds [2049 x i8], ptr %19, i64 0, i64 0, !dbg !3026
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.53, ptr noundef %502), !dbg !3027
  br label %503, !dbg !3028

503:                                              ; preds = %495, %492
  br label %504, !dbg !3029

504:                                              ; preds = %503, %436
  call void @setup_server(), !dbg !3030
  call void @llvm.dbg.declare(metadata ptr %25, metadata !3031, metadata !DIExpression()), !dbg !3032
  %505 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 2), align 8, !dbg !3033
  %506 = call ptr @event_new(ptr noundef %505, i32 noundef 12, i16 noundef signext 24, ptr noundef @reload_ssl_certs, ptr noundef null), !dbg !3033
  store ptr %506, ptr %25, align 8, !dbg !3032
  %507 = load ptr, ptr %25, align 8, !dbg !3034
  %508 = call i32 @event_add(ptr noundef %507, ptr noundef null), !dbg !3035
  call void @drop_privileges(), !dbg !3036
  %509 = call i32 @start_prometheus_server(), !dbg !3037
  %510 = icmp ne i32 %509, 0, !dbg !3037
  br i1 %510, label %511, label %512, !dbg !3039

511:                                              ; preds = %504
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.54), !dbg !3040
  br label %513, !dbg !3042

512:                                              ; preds = %504
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.55), !dbg !3043
  br label %513

513:                                              ; preds = %512, %511
  call void @run_listener_server(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42)), !dbg !3045
  %514 = call i32 @disconnect_database(), !dbg !3046
  store i32 0, ptr %3, align 4, !dbg !3047
  br label %515, !dbg !3047

515:                                              ; preds = %513, %78
  %516 = load i32, ptr %3, align 4, !dbg !3048
  ret i32 %516, !dbg !3048
}

declare void @set_execdir() #5

declare void @init_super_memory() #5

declare void @redis_async_init() #5

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_domain() #0 !dbg !3049 {
  %1 = call i32 @getdomainname(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 60), i64 noundef 1024) #10, !dbg !3052
  %2 = icmp slt i32 %1, 0, !dbg !3054
  br i1 %2, label %3, label %4, !dbg !3055

3:                                                ; preds = %0
  store i8 0, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 60), align 1, !dbg !3056
  br label %9, !dbg !3058

4:                                                ; preds = %0
  %5 = call i32 @strcmp(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 60), ptr noundef @.str.56) #11, !dbg !3059
  %6 = icmp ne i32 %5, 0, !dbg !3059
  br i1 %6, label %8, label %7, !dbg !3061

7:                                                ; preds = %4
  store i8 0, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 60), align 1, !dbg !3062
  br label %8, !dbg !3064

8:                                                ; preds = %7, %4
  br label %9

9:                                                ; preds = %8, %3
  ret void, !dbg !3065
}

declare void @create_default_realm() #5

declare void @init_turn_server_addrs_list(ptr noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_network_engine() #0 !dbg !3066 {
  %1 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 45), align 8, !dbg !3067
  %2 = icmp ne i32 %1, 0, !dbg !3069
  br i1 %2, label %3, label %4, !dbg !3070

3:                                                ; preds = %0
  br label %5, !dbg !3071

4:                                                ; preds = %0
  store i32 2, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 45), align 8, !dbg !3072
  store i32 3, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 45), align 8, !dbg !3073
  br label %5, !dbg !3074

5:                                                ; preds = %4, %3
  ret void, !dbg !3074
}

declare void @init_listener() #5

declare void @init_secrets_list(ptr noundef) #5

declare void @init_dynamic_ip_lists() #5

; Function Attrs: nounwind
declare i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

declare void @set_logfile(ptr noundef) #5

declare void @set_no_stdout_log(i32 noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_bool_value(ptr noundef %0) #0 !dbg !3075 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3078, metadata !DIExpression()), !dbg !3079
  %4 = load ptr, ptr %3, align 8, !dbg !3080
  %5 = icmp ne ptr %4, null, !dbg !3080
  br i1 %5, label %6, label %11, !dbg !3082

6:                                                ; preds = %1
  %7 = load ptr, ptr %3, align 8, !dbg !3083
  %8 = getelementptr inbounds i8, ptr %7, i64 0, !dbg !3083
  %9 = load i8, ptr %8, align 1, !dbg !3083
  %10 = icmp ne i8 %9, 0, !dbg !3084
  br i1 %10, label %12, label %11, !dbg !3085

11:                                               ; preds = %6, %1
  store i32 1, ptr %2, align 4, !dbg !3086
  br label %109, !dbg !3086

12:                                               ; preds = %6
  %13 = load ptr, ptr %3, align 8, !dbg !3087
  %14 = getelementptr inbounds i8, ptr %13, i64 0, !dbg !3087
  %15 = load i8, ptr %14, align 1, !dbg !3087
  %16 = sext i8 %15 to i32, !dbg !3087
  %17 = icmp eq i32 %16, 48, !dbg !3089
  br i1 %17, label %42, label %18, !dbg !3090

18:                                               ; preds = %12
  %19 = load ptr, ptr %3, align 8, !dbg !3091
  %20 = getelementptr inbounds i8, ptr %19, i64 0, !dbg !3091
  %21 = load i8, ptr %20, align 1, !dbg !3091
  %22 = sext i8 %21 to i32, !dbg !3091
  %23 = icmp eq i32 %22, 110, !dbg !3092
  br i1 %23, label %42, label %24, !dbg !3093

24:                                               ; preds = %18
  %25 = load ptr, ptr %3, align 8, !dbg !3094
  %26 = getelementptr inbounds i8, ptr %25, i64 0, !dbg !3094
  %27 = load i8, ptr %26, align 1, !dbg !3094
  %28 = sext i8 %27 to i32, !dbg !3094
  %29 = icmp eq i32 %28, 78, !dbg !3095
  br i1 %29, label %42, label %30, !dbg !3096

30:                                               ; preds = %24
  %31 = load ptr, ptr %3, align 8, !dbg !3097
  %32 = getelementptr inbounds i8, ptr %31, i64 0, !dbg !3097
  %33 = load i8, ptr %32, align 1, !dbg !3097
  %34 = sext i8 %33 to i32, !dbg !3097
  %35 = icmp eq i32 %34, 102, !dbg !3098
  br i1 %35, label %42, label %36, !dbg !3099

36:                                               ; preds = %30
  %37 = load ptr, ptr %3, align 8, !dbg !3100
  %38 = getelementptr inbounds i8, ptr %37, i64 0, !dbg !3100
  %39 = load i8, ptr %38, align 1, !dbg !3100
  %40 = sext i8 %39 to i32, !dbg !3100
  %41 = icmp eq i32 %40, 70, !dbg !3101
  br i1 %41, label %42, label %43, !dbg !3102

42:                                               ; preds = %36, %30, %24, %18, %12
  store i32 0, ptr %2, align 4, !dbg !3103
  br label %109, !dbg !3103

43:                                               ; preds = %36
  %44 = load ptr, ptr %3, align 8, !dbg !3104
  %45 = getelementptr inbounds i8, ptr %44, i64 0, !dbg !3104
  %46 = load i8, ptr %45, align 1, !dbg !3104
  %47 = sext i8 %46 to i32, !dbg !3104
  %48 = icmp eq i32 %47, 121, !dbg !3106
  br i1 %48, label %67, label %49, !dbg !3107

49:                                               ; preds = %43
  %50 = load ptr, ptr %3, align 8, !dbg !3108
  %51 = getelementptr inbounds i8, ptr %50, i64 0, !dbg !3108
  %52 = load i8, ptr %51, align 1, !dbg !3108
  %53 = sext i8 %52 to i32, !dbg !3108
  %54 = icmp eq i32 %53, 89, !dbg !3109
  br i1 %54, label %67, label %55, !dbg !3110

55:                                               ; preds = %49
  %56 = load ptr, ptr %3, align 8, !dbg !3111
  %57 = getelementptr inbounds i8, ptr %56, i64 0, !dbg !3111
  %58 = load i8, ptr %57, align 1, !dbg !3111
  %59 = sext i8 %58 to i32, !dbg !3111
  %60 = icmp eq i32 %59, 116, !dbg !3112
  br i1 %60, label %67, label %61, !dbg !3113

61:                                               ; preds = %55
  %62 = load ptr, ptr %3, align 8, !dbg !3114
  %63 = getelementptr inbounds i8, ptr %62, i64 0, !dbg !3114
  %64 = load i8, ptr %63, align 1, !dbg !3114
  %65 = sext i8 %64 to i32, !dbg !3114
  %66 = icmp eq i32 %65, 84, !dbg !3115
  br i1 %66, label %67, label %68, !dbg !3116

67:                                               ; preds = %61, %55, %49, %43
  store i32 1, ptr %2, align 4, !dbg !3117
  br label %109, !dbg !3117

68:                                               ; preds = %61
  %69 = load ptr, ptr %3, align 8, !dbg !3118
  %70 = getelementptr inbounds i8, ptr %69, i64 0, !dbg !3118
  %71 = load i8, ptr %70, align 1, !dbg !3118
  %72 = sext i8 %71 to i32, !dbg !3118
  %73 = icmp sgt i32 %72, 48, !dbg !3120
  br i1 %73, label %74, label %81, !dbg !3121

74:                                               ; preds = %68
  %75 = load ptr, ptr %3, align 8, !dbg !3122
  %76 = getelementptr inbounds i8, ptr %75, i64 0, !dbg !3122
  %77 = load i8, ptr %76, align 1, !dbg !3122
  %78 = sext i8 %77 to i32, !dbg !3122
  %79 = icmp sle i32 %78, 57, !dbg !3123
  br i1 %79, label %80, label %81, !dbg !3124

80:                                               ; preds = %74
  store i32 1, ptr %2, align 4, !dbg !3125
  br label %109, !dbg !3125

81:                                               ; preds = %74, %68
  %82 = load ptr, ptr %3, align 8, !dbg !3126
  %83 = call i32 @strcmp(ptr noundef %82, ptr noundef @.str.165) #11, !dbg !3128
  %84 = icmp ne i32 %83, 0, !dbg !3128
  br i1 %84, label %85, label %93, !dbg !3129

85:                                               ; preds = %81
  %86 = load ptr, ptr %3, align 8, !dbg !3130
  %87 = call i32 @strcmp(ptr noundef %86, ptr noundef @.str.166) #11, !dbg !3131
  %88 = icmp ne i32 %87, 0, !dbg !3131
  br i1 %88, label %89, label %93, !dbg !3132

89:                                               ; preds = %85
  %90 = load ptr, ptr %3, align 8, !dbg !3133
  %91 = call i32 @strcmp(ptr noundef %90, ptr noundef @.str.167) #11, !dbg !3134
  %92 = icmp ne i32 %91, 0, !dbg !3134
  br i1 %92, label %94, label %93, !dbg !3135

93:                                               ; preds = %89, %85, %81
  store i32 0, ptr %2, align 4, !dbg !3136
  br label %109, !dbg !3136

94:                                               ; preds = %89
  %95 = load ptr, ptr %3, align 8, !dbg !3137
  %96 = call i32 @strcmp(ptr noundef %95, ptr noundef @.str.168) #11, !dbg !3139
  %97 = icmp ne i32 %96, 0, !dbg !3139
  br i1 %97, label %98, label %106, !dbg !3140

98:                                               ; preds = %94
  %99 = load ptr, ptr %3, align 8, !dbg !3141
  %100 = call i32 @strcmp(ptr noundef %99, ptr noundef @.str.169) #11, !dbg !3142
  %101 = icmp ne i32 %100, 0, !dbg !3142
  br i1 %101, label %102, label %106, !dbg !3143

102:                                              ; preds = %98
  %103 = load ptr, ptr %3, align 8, !dbg !3144
  %104 = call i32 @strcmp(ptr noundef %103, ptr noundef @.str.170) #11, !dbg !3145
  %105 = icmp ne i32 %104, 0, !dbg !3145
  br i1 %105, label %107, label %106, !dbg !3146

106:                                              ; preds = %102, %98, %94
  store i32 1, ptr %2, align 4, !dbg !3147
  br label %109, !dbg !3147

107:                                              ; preds = %102
  %108 = load ptr, ptr %3, align 8, !dbg !3148
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.171, ptr noundef %108), !dbg !3149
  call void @exit(i32 noundef -1) #13, !dbg !3150
  unreachable, !dbg !3150

109:                                              ; preds = %106, %93, %80, %67, %42, %11
  %110 = load i32, ptr %2, align 4, !dbg !3151
  ret i32 %110, !dbg !3151
}

declare void @set_log_to_syslog(i32 noundef) #5

declare void @set_simple_log(i32 noundef) #5

declare void @set_turn_log_timestamp_format(ptr noundef) #5

; Function Attrs: nounwind
declare i64 @sysconf(i32 noundef) #3

declare ptr @ur_string_map_create(ptr noundef) #5

; Function Attrs: nounwind
declare void @free(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adminmain(i32 noundef %0, ptr noundef %1) #0 !dbg !3152 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca [16 x i8], align 16
  %11 = alloca [513 x i8], align 16
  %12 = alloca [128 x i8], align 16
  %13 = alloca [257 x i8], align 16
  %14 = alloca [257 x i8], align 16
  %15 = alloca [128 x i8], align 16
  %16 = alloca %struct._perf_options_t, align 8
  %17 = alloca %struct.uoptions, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [257 x i8], align 16
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca [257 x i8], align 16
  %33 = alloca i64, align 8
  %34 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3153, metadata !DIExpression()), !dbg !3154
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3155, metadata !DIExpression()), !dbg !3156
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3157, metadata !DIExpression()), !dbg !3158
  store i32 0, ptr %5, align 4, !dbg !3158
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3159, metadata !DIExpression()), !dbg !3160
  store i32 0, ptr %6, align 4, !dbg !3160
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3161, metadata !DIExpression()), !dbg !3163
  store i32 0, ptr %7, align 4, !dbg !3163
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3164, metadata !DIExpression()), !dbg !3165
  store i32 0, ptr %8, align 4, !dbg !3165
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3166, metadata !DIExpression()), !dbg !3167
  call void @llvm.dbg.declare(metadata ptr %10, metadata !3168, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.declare(metadata ptr %11, metadata !3170, metadata !DIExpression()), !dbg !3172
  call void @llvm.memset.p0.i64(ptr align 16 %11, i8 0, i64 513, i1 false), !dbg !3172
  call void @llvm.dbg.declare(metadata ptr %12, metadata !3173, metadata !DIExpression()), !dbg !3175
  call void @llvm.memset.p0.i64(ptr align 16 %12, i8 0, i64 128, i1 false), !dbg !3175
  call void @llvm.dbg.declare(metadata ptr %13, metadata !3176, metadata !DIExpression()), !dbg !3178
  call void @llvm.memset.p0.i64(ptr align 16 %13, i8 0, i64 257, i1 false), !dbg !3178
  call void @llvm.dbg.declare(metadata ptr %14, metadata !3179, metadata !DIExpression()), !dbg !3180
  call void @llvm.memset.p0.i64(ptr align 16 %14, i8 0, i64 257, i1 false), !dbg !3180
  call void @llvm.dbg.declare(metadata ptr %15, metadata !3181, metadata !DIExpression()), !dbg !3182
  call void @llvm.memset.p0.i64(ptr align 16 %15, i8 0, i64 128, i1 false), !dbg !3182
  call void @llvm.dbg.declare(metadata ptr %16, metadata !3183, metadata !DIExpression()), !dbg !3192
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %16, ptr align 8 @__const.adminmain.po, i64 16, i1 false), !dbg !3192
  call void @llvm.dbg.declare(metadata ptr %17, metadata !3193, metadata !DIExpression()), !dbg !3194
  %35 = getelementptr inbounds %struct.uoptions, ptr %17, i32 0, i32 0, !dbg !3195
  store ptr @admin_long_options, ptr %35, align 8, !dbg !3196
  call void @llvm.dbg.declare(metadata ptr %18, metadata !3197, metadata !DIExpression()), !dbg !3198
  store i32 0, ptr %18, align 4, !dbg !3198
  call void @llvm.dbg.declare(metadata ptr %19, metadata !3199, metadata !DIExpression()), !dbg !3200
  store i32 0, ptr %19, align 4, !dbg !3200
  br label %36, !dbg !3201

36:                                               ; preds = %325, %2
  %37 = load i32, ptr %3, align 4, !dbg !3202
  %38 = load ptr, ptr %4, align 8, !dbg !3203
  %39 = getelementptr inbounds %struct.uoptions, ptr %17, i32 0, i32 0, !dbg !3204
  %40 = load ptr, ptr %39, align 8, !dbg !3205
  %41 = call i32 @getopt_long(i32 noundef %37, ptr noundef %38, ptr noundef @.str.172, ptr noundef %40, ptr noundef null) #10, !dbg !3206
  store i32 %41, ptr %5, align 4, !dbg !3207
  %42 = icmp ne i32 %41, -1, !dbg !3208
  br i1 %42, label %43, label %326, !dbg !3201

43:                                               ; preds = %36
  %44 = load i32, ptr %5, align 4, !dbg !3209
  switch i32 %44, label %322 [
    i32 80, label %45
    i32 69, label %55
    i32 103, label %56
    i32 71, label %57
    i32 328, label %58
    i32 327, label %62
    i32 326, label %66
    i32 79, label %71
    i32 82, label %72
    i32 73, label %73
    i32 111, label %74
    i32 107, label %90
    i32 97, label %91
    i32 100, label %92
    i32 65, label %93
    i32 68, label %94
    i32 108, label %95
    i32 76, label %96
    i32 115, label %97
    i32 83, label %113
    i32 88, label %114
    i32 280, label %134
    i32 98, label %135
    i32 101, label %148
    i32 77, label %161
    i32 74, label %174
    i32 78, label %187
    i32 117, label %200
    i32 114, label %228
    i32 112, label %251
    i32 120, label %287
    i32 102, label %290
    i32 118, label %317
    i32 104, label %320
  ], !dbg !3211

45:                                               ; preds = %43
  %46 = getelementptr inbounds [257 x i8], ptr %13, i64 0, i64 0, !dbg !3212
  %47 = load i8, ptr %46, align 16, !dbg !3212
  %48 = icmp ne i8 %47, 0, !dbg !3212
  br i1 %48, label %49, label %54, !dbg !3215

49:                                               ; preds = %45
  call void @llvm.dbg.declare(metadata ptr %20, metadata !3216, metadata !DIExpression()), !dbg !3218
  %50 = getelementptr inbounds [257 x i8], ptr %13, i64 0, i64 0, !dbg !3219
  %51 = getelementptr inbounds [257 x i8], ptr %20, i64 0, i64 0, !dbg !3220
  call void @generate_new_enc_password(ptr noundef %50, ptr noundef %51), !dbg !3221
  %52 = getelementptr inbounds [257 x i8], ptr %20, i64 0, i64 0, !dbg !3222
  %53 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, ptr noundef %52), !dbg !3223
  call void @exit(i32 noundef 0) #13, !dbg !3224
  unreachable, !dbg !3224

54:                                               ; preds = %45
  store i32 1, ptr %18, align 4, !dbg !3225
  br label %325, !dbg !3226

55:                                               ; preds = %43
  store i32 1, ptr %19, align 4, !dbg !3227
  br label %325, !dbg !3228

56:                                               ; preds = %43
  store i32 11, ptr %7, align 4, !dbg !3229
  br label %325, !dbg !3230

57:                                               ; preds = %43
  store i32 12, ptr %7, align 4, !dbg !3231
  br label %325, !dbg !3232

58:                                               ; preds = %43
  %59 = load ptr, ptr @optarg, align 8, !dbg !3233
  %60 = call i32 @atoi(ptr noundef %59) #11, !dbg !3234
  %61 = getelementptr inbounds %struct._perf_options_t, ptr %16, i32 0, i32 2, !dbg !3235
  store i32 %60, ptr %61, align 4, !dbg !3236
  br label %325, !dbg !3237

62:                                               ; preds = %43
  %63 = load ptr, ptr @optarg, align 8, !dbg !3238
  %64 = call i32 @atoi(ptr noundef %63) #11, !dbg !3239
  %65 = getelementptr inbounds %struct._perf_options_t, ptr %16, i32 0, i32 1, !dbg !3240
  store i32 %64, ptr %65, align 8, !dbg !3241
  br label %325, !dbg !3242

66:                                               ; preds = %43
  %67 = load ptr, ptr @optarg, align 8, !dbg !3243
  %68 = call i32 @atoi(ptr noundef %67) #11, !dbg !3244
  %69 = sext i32 %68 to i64, !dbg !3245
  %70 = getelementptr inbounds %struct._perf_options_t, ptr %16, i32 0, i32 0, !dbg !3246
  store volatile i64 %69, ptr %70, align 8, !dbg !3247
  br label %325, !dbg !3248

71:                                               ; preds = %43
  store i32 8, ptr %7, align 4, !dbg !3249
  br label %325, !dbg !3250

72:                                               ; preds = %43
  store i32 9, ptr %7, align 4, !dbg !3251
  br label %325, !dbg !3252

73:                                               ; preds = %43
  store i32 10, ptr %7, align 4, !dbg !3253
  br label %325, !dbg !3254

74:                                               ; preds = %43
  br label %75, !dbg !3255

75:                                               ; preds = %74
  %76 = getelementptr inbounds [128 x i8], ptr %15, i64 0, i64 0, !dbg !3256
  %77 = load ptr, ptr @optarg, align 8, !dbg !3256
  %78 = icmp ne ptr %76, %77, !dbg !3256
  br i1 %78, label %79, label %88, !dbg !3259

79:                                               ; preds = %75
  call void @llvm.dbg.declare(metadata ptr %21, metadata !3260, metadata !DIExpression()), !dbg !3264
  store i64 128, ptr %21, align 8, !dbg !3264
  %80 = getelementptr inbounds [128 x i8], ptr %15, i64 0, i64 0, !dbg !3264
  %81 = load ptr, ptr @optarg, align 8, !dbg !3264
  %82 = load i64, ptr %21, align 8, !dbg !3264
  %83 = call ptr @strncpy(ptr noundef %80, ptr noundef %81, i64 noundef %82) #10, !dbg !3264
  %84 = getelementptr inbounds [128 x i8], ptr %15, i64 0, i64 0, !dbg !3264
  %85 = load i64, ptr %21, align 8, !dbg !3264
  %86 = sub i64 %85, 1, !dbg !3264
  %87 = getelementptr inbounds i8, ptr %84, i64 %86, !dbg !3264
  store i8 0, ptr %87, align 1, !dbg !3264
  br label %88, !dbg !3265

88:                                               ; preds = %79, %75
  br label %89, !dbg !3259

89:                                               ; preds = %88
  br label %325, !dbg !3266

90:                                               ; preds = %43
  store i32 1, ptr %7, align 4, !dbg !3267
  br label %325, !dbg !3268

91:                                               ; preds = %43
  store i32 2, ptr %7, align 4, !dbg !3269
  br label %325, !dbg !3270

92:                                               ; preds = %43
  store i32 3, ptr %7, align 4, !dbg !3271
  br label %325, !dbg !3272

93:                                               ; preds = %43
  store i32 2, ptr %7, align 4, !dbg !3273
  store i32 1, ptr %8, align 4, !dbg !3274
  br label %325, !dbg !3275

94:                                               ; preds = %43
  store i32 3, ptr %7, align 4, !dbg !3276
  store i32 1, ptr %8, align 4, !dbg !3277
  br label %325, !dbg !3278

95:                                               ; preds = %43
  store i32 4, ptr %7, align 4, !dbg !3279
  br label %325, !dbg !3280

96:                                               ; preds = %43
  store i32 4, ptr %7, align 4, !dbg !3281
  store i32 1, ptr %8, align 4, !dbg !3282
  br label %325, !dbg !3283

97:                                               ; preds = %43
  store i32 5, ptr %7, align 4, !dbg !3284
  br label %98, !dbg !3285

98:                                               ; preds = %97
  %99 = getelementptr inbounds [257 x i8], ptr %14, i64 0, i64 0, !dbg !3286
  %100 = load ptr, ptr @optarg, align 8, !dbg !3286
  %101 = icmp ne ptr %99, %100, !dbg !3286
  br i1 %101, label %102, label %111, !dbg !3289

102:                                              ; preds = %98
  call void @llvm.dbg.declare(metadata ptr %22, metadata !3290, metadata !DIExpression()), !dbg !3294
  store i64 257, ptr %22, align 8, !dbg !3294
  %103 = getelementptr inbounds [257 x i8], ptr %14, i64 0, i64 0, !dbg !3294
  %104 = load ptr, ptr @optarg, align 8, !dbg !3294
  %105 = load i64, ptr %22, align 8, !dbg !3294
  %106 = call ptr @strncpy(ptr noundef %103, ptr noundef %104, i64 noundef %105) #10, !dbg !3294
  %107 = getelementptr inbounds [257 x i8], ptr %14, i64 0, i64 0, !dbg !3294
  %108 = load i64, ptr %22, align 8, !dbg !3294
  %109 = sub i64 %108, 1, !dbg !3294
  %110 = getelementptr inbounds i8, ptr %107, i64 %109, !dbg !3294
  store i8 0, ptr %110, align 1, !dbg !3294
  br label %111, !dbg !3295

111:                                              ; preds = %102, %98
  br label %112, !dbg !3289

112:                                              ; preds = %111
  br label %325, !dbg !3296

113:                                              ; preds = %43
  store i32 6, ptr %7, align 4, !dbg !3297
  br label %325, !dbg !3298

114:                                              ; preds = %43
  store i32 7, ptr %7, align 4, !dbg !3299
  %115 = load ptr, ptr @optarg, align 8, !dbg !3300
  %116 = icmp ne ptr %115, null, !dbg !3300
  br i1 %116, label %117, label %133, !dbg !3302

117:                                              ; preds = %114
  br label %118, !dbg !3303

118:                                              ; preds = %117
  %119 = getelementptr inbounds [257 x i8], ptr %14, i64 0, i64 0, !dbg !3304
  %120 = load ptr, ptr @optarg, align 8, !dbg !3304
  %121 = icmp ne ptr %119, %120, !dbg !3304
  br i1 %121, label %122, label %131, !dbg !3307

122:                                              ; preds = %118
  call void @llvm.dbg.declare(metadata ptr %23, metadata !3308, metadata !DIExpression()), !dbg !3312
  store i64 257, ptr %23, align 8, !dbg !3312
  %123 = getelementptr inbounds [257 x i8], ptr %14, i64 0, i64 0, !dbg !3312
  %124 = load ptr, ptr @optarg, align 8, !dbg !3312
  %125 = load i64, ptr %23, align 8, !dbg !3312
  %126 = call ptr @strncpy(ptr noundef %123, ptr noundef %124, i64 noundef %125) #10, !dbg !3312
  %127 = getelementptr inbounds [257 x i8], ptr %14, i64 0, i64 0, !dbg !3312
  %128 = load i64, ptr %23, align 8, !dbg !3312
  %129 = sub i64 %128, 1, !dbg !3312
  %130 = getelementptr inbounds i8, ptr %127, i64 %129, !dbg !3312
  store i8 0, ptr %130, align 1, !dbg !3312
  br label %131, !dbg !3313

131:                                              ; preds = %122, %118
  br label %132, !dbg !3307

132:                                              ; preds = %131
  br label %133, !dbg !3307

133:                                              ; preds = %132, %114
  br label %325, !dbg !3314

134:                                              ; preds = %43
  store i32 7, ptr %7, align 4, !dbg !3315
  br label %325, !dbg !3316

135:                                              ; preds = %43
  br label %136, !dbg !3317

136:                                              ; preds = %135
  %137 = load ptr, ptr @optarg, align 8, !dbg !3318
  %138 = icmp ne ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 86, i32 1), %137, !dbg !3318
  br i1 %138, label %139, label %146, !dbg !3321

139:                                              ; preds = %136
  call void @llvm.dbg.declare(metadata ptr %24, metadata !3322, metadata !DIExpression()), !dbg !3326
  store i64 1025, ptr %24, align 8, !dbg !3326
  %140 = load ptr, ptr @optarg, align 8, !dbg !3326
  %141 = load i64, ptr %24, align 8, !dbg !3326
  %142 = call ptr @strncpy(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 86, i32 1), ptr noundef %140, i64 noundef %141) #10, !dbg !3326
  %143 = load i64, ptr %24, align 8, !dbg !3326
  %144 = sub i64 %143, 1, !dbg !3326
  %145 = getelementptr inbounds i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 86, i32 1), i64 %144, !dbg !3326
  store i8 0, ptr %145, align 1, !dbg !3326
  br label %146, !dbg !3327

146:                                              ; preds = %139, %136
  br label %147, !dbg !3321

147:                                              ; preds = %146
  store i32 0, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 86), align 8, !dbg !3328
  br label %325, !dbg !3329

148:                                              ; preds = %43
  br label %149, !dbg !3330

149:                                              ; preds = %148
  %150 = load ptr, ptr @optarg, align 8, !dbg !3331
  %151 = icmp ne ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 86, i32 1), %150, !dbg !3331
  br i1 %151, label %152, label %159, !dbg !3334

152:                                              ; preds = %149
  call void @llvm.dbg.declare(metadata ptr %25, metadata !3335, metadata !DIExpression()), !dbg !3339
  store i64 1025, ptr %25, align 8, !dbg !3339
  %153 = load ptr, ptr @optarg, align 8, !dbg !3339
  %154 = load i64, ptr %25, align 8, !dbg !3339
  %155 = call ptr @strncpy(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 86, i32 1), ptr noundef %153, i64 noundef %154) #10, !dbg !3339
  %156 = load i64, ptr %25, align 8, !dbg !3339
  %157 = sub i64 %156, 1, !dbg !3339
  %158 = getelementptr inbounds i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 86, i32 1), i64 %157, !dbg !3339
  store i8 0, ptr %158, align 1, !dbg !3339
  br label %159, !dbg !3340

159:                                              ; preds = %152, %149
  br label %160, !dbg !3334

160:                                              ; preds = %159
  store i32 1, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 86), align 8, !dbg !3341
  br label %325, !dbg !3342

161:                                              ; preds = %43
  br label %162, !dbg !3343

162:                                              ; preds = %161
  %163 = load ptr, ptr @optarg, align 8, !dbg !3344
  %164 = icmp ne ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 86, i32 1), %163, !dbg !3344
  br i1 %164, label %165, label %172, !dbg !3347

165:                                              ; preds = %162
  call void @llvm.dbg.declare(metadata ptr %26, metadata !3348, metadata !DIExpression()), !dbg !3352
  store i64 1025, ptr %26, align 8, !dbg !3352
  %166 = load ptr, ptr @optarg, align 8, !dbg !3352
  %167 = load i64, ptr %26, align 8, !dbg !3352
  %168 = call ptr @strncpy(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 86, i32 1), ptr noundef %166, i64 noundef %167) #10, !dbg !3352
  %169 = load i64, ptr %26, align 8, !dbg !3352
  %170 = sub i64 %169, 1, !dbg !3352
  %171 = getelementptr inbounds i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 86, i32 1), i64 %170, !dbg !3352
  store i8 0, ptr %171, align 1, !dbg !3352
  br label %172, !dbg !3353

172:                                              ; preds = %165, %162
  br label %173, !dbg !3347

173:                                              ; preds = %172
  store i32 2, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 86), align 8, !dbg !3354
  br label %325, !dbg !3355

174:                                              ; preds = %43
  br label %175, !dbg !3356

175:                                              ; preds = %174
  %176 = load ptr, ptr @optarg, align 8, !dbg !3357
  %177 = icmp ne ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 86, i32 1), %176, !dbg !3357
  br i1 %177, label %178, label %185, !dbg !3360

178:                                              ; preds = %175
  call void @llvm.dbg.declare(metadata ptr %27, metadata !3361, metadata !DIExpression()), !dbg !3365
  store i64 1025, ptr %27, align 8, !dbg !3365
  %179 = load ptr, ptr @optarg, align 8, !dbg !3365
  %180 = load i64, ptr %27, align 8, !dbg !3365
  %181 = call ptr @strncpy(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 86, i32 1), ptr noundef %179, i64 noundef %180) #10, !dbg !3365
  %182 = load i64, ptr %27, align 8, !dbg !3365
  %183 = sub i64 %182, 1, !dbg !3365
  %184 = getelementptr inbounds i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 86, i32 1), i64 %183, !dbg !3365
  store i8 0, ptr %184, align 1, !dbg !3365
  br label %185, !dbg !3366

185:                                              ; preds = %178, %175
  br label %186, !dbg !3360

186:                                              ; preds = %185
  store i32 3, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 86), align 8, !dbg !3367
  br label %325, !dbg !3368

187:                                              ; preds = %43
  br label %188, !dbg !3369

188:                                              ; preds = %187
  %189 = load ptr, ptr @optarg, align 8, !dbg !3370
  %190 = icmp ne ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 86, i32 1), %189, !dbg !3370
  br i1 %190, label %191, label %198, !dbg !3373

191:                                              ; preds = %188
  call void @llvm.dbg.declare(metadata ptr %28, metadata !3374, metadata !DIExpression()), !dbg !3378
  store i64 1025, ptr %28, align 8, !dbg !3378
  %192 = load ptr, ptr @optarg, align 8, !dbg !3378
  %193 = load i64, ptr %28, align 8, !dbg !3378
  %194 = call ptr @strncpy(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 86, i32 1), ptr noundef %192, i64 noundef %193) #10, !dbg !3378
  %195 = load i64, ptr %28, align 8, !dbg !3378
  %196 = sub i64 %195, 1, !dbg !3378
  %197 = getelementptr inbounds i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 86, i32 1), i64 %196, !dbg !3378
  store i8 0, ptr %197, align 1, !dbg !3378
  br label %198, !dbg !3379

198:                                              ; preds = %191, %188
  br label %199, !dbg !3373

199:                                              ; preds = %198
  store i32 4, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 86), align 8, !dbg !3380
  br label %325, !dbg !3381

200:                                              ; preds = %43
  br label %201, !dbg !3382

201:                                              ; preds = %200
  %202 = getelementptr inbounds [513 x i8], ptr %11, i64 0, i64 0, !dbg !3383
  %203 = load ptr, ptr @optarg, align 8, !dbg !3383
  %204 = icmp ne ptr %202, %203, !dbg !3383
  br i1 %204, label %205, label %214, !dbg !3386

205:                                              ; preds = %201
  call void @llvm.dbg.declare(metadata ptr %29, metadata !3387, metadata !DIExpression()), !dbg !3391
  store i64 513, ptr %29, align 8, !dbg !3391
  %206 = getelementptr inbounds [513 x i8], ptr %11, i64 0, i64 0, !dbg !3391
  %207 = load ptr, ptr @optarg, align 8, !dbg !3391
  %208 = load i64, ptr %29, align 8, !dbg !3391
  %209 = call ptr @strncpy(ptr noundef %206, ptr noundef %207, i64 noundef %208) #10, !dbg !3391
  %210 = getelementptr inbounds [513 x i8], ptr %11, i64 0, i64 0, !dbg !3391
  %211 = load i64, ptr %29, align 8, !dbg !3391
  %212 = sub i64 %211, 1, !dbg !3391
  %213 = getelementptr inbounds i8, ptr %210, i64 %212, !dbg !3391
  store i8 0, ptr %213, align 1, !dbg !3391
  br label %214, !dbg !3392

214:                                              ; preds = %205, %201
  br label %215, !dbg !3386

215:                                              ; preds = %214
  %216 = getelementptr inbounds [513 x i8], ptr %11, i64 0, i64 0, !dbg !3393
  %217 = call i32 @is_secure_string(ptr noundef %216, i32 noundef 1), !dbg !3395
  %218 = icmp ne i32 %217, 0, !dbg !3395
  br i1 %218, label %221, label %219, !dbg !3396

219:                                              ; preds = %215
  %220 = getelementptr inbounds [513 x i8], ptr %11, i64 0, i64 0, !dbg !3397
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.173, ptr noundef %220), !dbg !3399
  call void @exit(i32 noundef -1) #13, !dbg !3400
  unreachable, !dbg !3400

221:                                              ; preds = %215
  %222 = getelementptr inbounds [513 x i8], ptr %11, i64 0, i64 0, !dbg !3401
  %223 = call i32 @SASLprep(ptr noundef %222), !dbg !3403
  %224 = icmp slt i32 %223, 0, !dbg !3404
  br i1 %224, label %225, label %227, !dbg !3405

225:                                              ; preds = %221
  %226 = getelementptr inbounds [513 x i8], ptr %11, i64 0, i64 0, !dbg !3406
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.174, ptr noundef %226), !dbg !3408
  call void @exit(i32 noundef -1) #13, !dbg !3409
  unreachable, !dbg !3409

227:                                              ; preds = %221
  br label %325, !dbg !3410

228:                                              ; preds = %43
  %229 = load ptr, ptr @optarg, align 8, !dbg !3411
  call void @set_default_realm_name(ptr noundef %229), !dbg !3412
  br label %230, !dbg !3413

230:                                              ; preds = %228
  %231 = getelementptr inbounds [128 x i8], ptr %12, i64 0, i64 0, !dbg !3414
  %232 = load ptr, ptr @optarg, align 8, !dbg !3414
  %233 = icmp ne ptr %231, %232, !dbg !3414
  br i1 %233, label %234, label %243, !dbg !3417

234:                                              ; preds = %230
  call void @llvm.dbg.declare(metadata ptr %30, metadata !3418, metadata !DIExpression()), !dbg !3422
  store i64 128, ptr %30, align 8, !dbg !3422
  %235 = getelementptr inbounds [128 x i8], ptr %12, i64 0, i64 0, !dbg !3422
  %236 = load ptr, ptr @optarg, align 8, !dbg !3422
  %237 = load i64, ptr %30, align 8, !dbg !3422
  %238 = call ptr @strncpy(ptr noundef %235, ptr noundef %236, i64 noundef %237) #10, !dbg !3422
  %239 = getelementptr inbounds [128 x i8], ptr %12, i64 0, i64 0, !dbg !3422
  %240 = load i64, ptr %30, align 8, !dbg !3422
  %241 = sub i64 %240, 1, !dbg !3422
  %242 = getelementptr inbounds i8, ptr %239, i64 %241, !dbg !3422
  store i8 0, ptr %242, align 1, !dbg !3422
  br label %243, !dbg !3423

243:                                              ; preds = %234, %230
  br label %244, !dbg !3417

244:                                              ; preds = %243
  %245 = getelementptr inbounds [128 x i8], ptr %12, i64 0, i64 0, !dbg !3424
  %246 = call i32 @SASLprep(ptr noundef %245), !dbg !3426
  %247 = icmp slt i32 %246, 0, !dbg !3427
  br i1 %247, label %248, label %250, !dbg !3428

248:                                              ; preds = %244
  %249 = getelementptr inbounds [128 x i8], ptr %12, i64 0, i64 0, !dbg !3429
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.175, ptr noundef %249), !dbg !3431
  call void @exit(i32 noundef -1) #13, !dbg !3432
  unreachable, !dbg !3432

250:                                              ; preds = %244
  br label %325, !dbg !3433

251:                                              ; preds = %43
  br label %252, !dbg !3434

252:                                              ; preds = %251
  %253 = getelementptr inbounds [257 x i8], ptr %13, i64 0, i64 0, !dbg !3435
  %254 = load ptr, ptr @optarg, align 8, !dbg !3435
  %255 = icmp ne ptr %253, %254, !dbg !3435
  br i1 %255, label %256, label %265, !dbg !3438

256:                                              ; preds = %252
  call void @llvm.dbg.declare(metadata ptr %31, metadata !3439, metadata !DIExpression()), !dbg !3443
  store i64 257, ptr %31, align 8, !dbg !3443
  %257 = getelementptr inbounds [257 x i8], ptr %13, i64 0, i64 0, !dbg !3443
  %258 = load ptr, ptr @optarg, align 8, !dbg !3443
  %259 = load i64, ptr %31, align 8, !dbg !3443
  %260 = call ptr @strncpy(ptr noundef %257, ptr noundef %258, i64 noundef %259) #10, !dbg !3443
  %261 = getelementptr inbounds [257 x i8], ptr %13, i64 0, i64 0, !dbg !3443
  %262 = load i64, ptr %31, align 8, !dbg !3443
  %263 = sub i64 %262, 1, !dbg !3443
  %264 = getelementptr inbounds i8, ptr %261, i64 %263, !dbg !3443
  store i8 0, ptr %264, align 1, !dbg !3443
  br label %265, !dbg !3444

265:                                              ; preds = %256, %252
  br label %266, !dbg !3438

266:                                              ; preds = %265
  %267 = getelementptr inbounds [257 x i8], ptr %13, i64 0, i64 0, !dbg !3445
  %268 = call i32 @SASLprep(ptr noundef %267), !dbg !3447
  %269 = icmp slt i32 %268, 0, !dbg !3448
  br i1 %269, label %270, label %272, !dbg !3449

270:                                              ; preds = %266
  %271 = getelementptr inbounds [257 x i8], ptr %13, i64 0, i64 0, !dbg !3450
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.176, ptr noundef %271), !dbg !3452
  call void @exit(i32 noundef -1) #13, !dbg !3453
  unreachable, !dbg !3453

272:                                              ; preds = %266
  %273 = load i32, ptr %18, align 4, !dbg !3454
  %274 = icmp ne i32 %273, 0, !dbg !3454
  br i1 %274, label %275, label %280, !dbg !3456

275:                                              ; preds = %272
  call void @llvm.dbg.declare(metadata ptr %32, metadata !3457, metadata !DIExpression()), !dbg !3459
  %276 = getelementptr inbounds [257 x i8], ptr %13, i64 0, i64 0, !dbg !3460
  %277 = getelementptr inbounds [257 x i8], ptr %32, i64 0, i64 0, !dbg !3461
  call void @generate_new_enc_password(ptr noundef %276, ptr noundef %277), !dbg !3462
  %278 = getelementptr inbounds [257 x i8], ptr %32, i64 0, i64 0, !dbg !3463
  %279 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, ptr noundef %278), !dbg !3464
  call void @exit(i32 noundef 0) #13, !dbg !3465
  unreachable, !dbg !3465

280:                                              ; preds = %272
  %281 = load i32, ptr %19, align 4, !dbg !3466
  %282 = icmp ne i32 %281, 0, !dbg !3466
  br i1 %282, label %283, label %286, !dbg !3468

283:                                              ; preds = %280
  %284 = getelementptr inbounds [257 x i8], ptr %13, i64 0, i64 0, !dbg !3469
  %285 = getelementptr inbounds [16 x i8], ptr %10, i64 0, i64 0, !dbg !3471
  call void @encrypt_aes_128(ptr noundef %284, ptr noundef %285), !dbg !3472
  call void @exit(i32 noundef 0) #13, !dbg !3473
  unreachable, !dbg !3473

286:                                              ; preds = %280
  br label %325, !dbg !3474

287:                                              ; preds = %43
  %288 = load ptr, ptr @optarg, align 8, !dbg !3475
  %289 = getelementptr inbounds [16 x i8], ptr %10, i64 0, i64 0, !dbg !3476
  call void @generate_aes_128_key(ptr noundef %288, ptr noundef %289), !dbg !3477
  call void @exit(i32 noundef 0) #13, !dbg !3478
  unreachable, !dbg !3478

290:                                              ; preds = %43
  %291 = load ptr, ptr @optarg, align 8, !dbg !3479
  %292 = call noalias ptr @fopen(ptr noundef %291, ptr noundef @.str.177), !dbg !3480
  store ptr %292, ptr %9, align 8, !dbg !3481
  %293 = load ptr, ptr %9, align 8, !dbg !3482
  %294 = icmp eq ptr %293, null, !dbg !3484
  br i1 %294, label %295, label %298, !dbg !3485

295:                                              ; preds = %290
  %296 = load ptr, ptr @optarg, align 8, !dbg !3486
  %297 = call i32 (ptr, ...) @printf(ptr noundef @.str.178, ptr noundef %296), !dbg !3488
  br label %316, !dbg !3489

298:                                              ; preds = %290
  %299 = load ptr, ptr %9, align 8, !dbg !3490
  %300 = call i32 @fseek(ptr noundef %299, i64 noundef 0, i32 noundef 0), !dbg !3492
  %301 = getelementptr inbounds [16 x i8], ptr %10, i64 0, i64 0, !dbg !3493
  %302 = load ptr, ptr %9, align 8, !dbg !3494
  %303 = call i64 @fread(ptr noundef %301, i64 noundef 1, i64 noundef 16, ptr noundef %302), !dbg !3495
  %304 = trunc i64 %303 to i32, !dbg !3495
  store i32 %304, ptr %6, align 4, !dbg !3496
  %305 = load i32, ptr %6, align 4, !dbg !3497
  %306 = icmp eq i32 %305, 0, !dbg !3499
  br i1 %306, label %307, label %308, !dbg !3500

307:                                              ; preds = %298
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.179, ptr noundef @__FUNCTION__.adminmain), !dbg !3501
  br label %313, !dbg !3503

308:                                              ; preds = %298
  %309 = load i32, ptr %6, align 4, !dbg !3504
  %310 = icmp ne i32 %309, 16, !dbg !3507
  br i1 %310, label %311, label %312, !dbg !3508

311:                                              ; preds = %308
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.180, ptr noundef @__FUNCTION__.adminmain), !dbg !3509
  br label %312, !dbg !3511

312:                                              ; preds = %311, %308
  br label %313

313:                                              ; preds = %312, %307
  %314 = load ptr, ptr %9, align 8, !dbg !3512
  %315 = call i32 @fclose(ptr noundef %314), !dbg !3513
  br label %316

316:                                              ; preds = %313, %295
  br label %325, !dbg !3514

317:                                              ; preds = %43
  %318 = load ptr, ptr @optarg, align 8, !dbg !3515
  %319 = getelementptr inbounds [16 x i8], ptr %10, i64 0, i64 0, !dbg !3516
  call void @decrypt_aes_128(ptr noundef %318, ptr noundef %319), !dbg !3517
  call void @exit(i32 noundef 0) #13, !dbg !3518
  unreachable, !dbg !3518

320:                                              ; preds = %43
  %321 = call i32 (ptr, ...) @printf(ptr noundef @.str.34, ptr noundef @AdminUsage), !dbg !3519
  call void @exit(i32 noundef 0) #13, !dbg !3520
  unreachable, !dbg !3520

322:                                              ; preds = %43
  %323 = load ptr, ptr @stderr, align 8, !dbg !3521
  %324 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %323, ptr noundef @.str.34, ptr noundef @AdminUsage), !dbg !3522
  call void @exit(i32 noundef -1) #13, !dbg !3523
  unreachable, !dbg !3523

325:                                              ; preds = %316, %286, %250, %227, %199, %186, %173, %160, %147, %134, %133, %113, %112, %96, %95, %94, %93, %92, %91, %90, %89, %73, %72, %71, %66, %62, %58, %57, %56, %55, %54
  br label %36, !dbg !3201, !llvm.loop !3524

326:                                              ; preds = %36
  %327 = call i64 @strlen(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 86, i32 1)) #11, !dbg !3526
  %328 = icmp ne i64 %327, 0, !dbg !3526
  br i1 %328, label %342, label %329, !dbg !3528

329:                                              ; preds = %326
  %330 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 86), align 8, !dbg !3529
  %331 = icmp eq i32 %330, 0, !dbg !3530
  br i1 %331, label %332, label %342, !dbg !3531

332:                                              ; preds = %329
  br label %333, !dbg !3532

333:                                              ; preds = %332
  br i1 icmp ne (ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 86, i32 1), ptr @.str.21), label %334, label %340, !dbg !3533

334:                                              ; preds = %333
  call void @llvm.dbg.declare(metadata ptr %33, metadata !3535, metadata !DIExpression()), !dbg !3540
  store i64 1025, ptr %33, align 8, !dbg !3540
  %335 = load i64, ptr %33, align 8, !dbg !3540
  %336 = call ptr @strncpy(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 86, i32 1), ptr noundef @.str.21, i64 noundef %335) #10, !dbg !3540
  %337 = load i64, ptr %33, align 8, !dbg !3540
  %338 = sub i64 %337, 1, !dbg !3540
  %339 = getelementptr inbounds i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 86, i32 1), i64 %338, !dbg !3540
  store i8 0, ptr %339, align 1, !dbg !3540
  br label %340, !dbg !3541

340:                                              ; preds = %334, %333
  br label %341, !dbg !3533

341:                                              ; preds = %340
  br label %342, !dbg !3533

342:                                              ; preds = %341, %329, %326
  %343 = load i32, ptr %7, align 4, !dbg !3542
  %344 = icmp eq i32 %343, 0, !dbg !3544
  br i1 %344, label %345, label %348, !dbg !3545

345:                                              ; preds = %342
  %346 = load ptr, ptr @stderr, align 8, !dbg !3546
  %347 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %346, ptr noundef @.str.34, ptr noundef @AdminUsage), !dbg !3548
  call void @exit(i32 noundef -1) #13, !dbg !3549
  unreachable, !dbg !3549

348:                                              ; preds = %342
  %349 = load i32, ptr @optind, align 4, !dbg !3550
  %350 = load i32, ptr %3, align 4, !dbg !3551
  %351 = sub nsw i32 %350, %349, !dbg !3551
  store i32 %351, ptr %3, align 4, !dbg !3551
  %352 = load i32, ptr @optind, align 4, !dbg !3552
  %353 = load ptr, ptr %4, align 8, !dbg !3553
  %354 = sext i32 %352 to i64, !dbg !3553
  %355 = getelementptr inbounds ptr, ptr %353, i64 %354, !dbg !3553
  store ptr %355, ptr %4, align 8, !dbg !3553
  %356 = load i32, ptr %3, align 4, !dbg !3554
  %357 = icmp ne i32 %356, 0, !dbg !3556
  br i1 %357, label %358, label %361, !dbg !3557

358:                                              ; preds = %348
  %359 = load ptr, ptr @stderr, align 8, !dbg !3558
  %360 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %359, ptr noundef @.str.34, ptr noundef @AdminUsage), !dbg !3560
  call void @exit(i32 noundef -1) #13, !dbg !3561
  unreachable, !dbg !3561

361:                                              ; preds = %348
  call void @llvm.dbg.declare(metadata ptr %34, metadata !3562, metadata !DIExpression()), !dbg !3563
  %362 = getelementptr inbounds [513 x i8], ptr %11, i64 0, i64 0, !dbg !3564
  %363 = getelementptr inbounds [128 x i8], ptr %12, i64 0, i64 0, !dbg !3565
  %364 = getelementptr inbounds [257 x i8], ptr %13, i64 0, i64 0, !dbg !3566
  %365 = getelementptr inbounds [257 x i8], ptr %14, i64 0, i64 0, !dbg !3567
  %366 = getelementptr inbounds [128 x i8], ptr %15, i64 0, i64 0, !dbg !3568
  %367 = load i32, ptr %7, align 4, !dbg !3569
  %368 = load i32, ptr %8, align 4, !dbg !3570
  %369 = call i32 @adminuser(ptr noundef %362, ptr noundef %363, ptr noundef %364, ptr noundef %365, ptr noundef %366, i32 noundef %367, ptr noundef %16, i32 noundef %368), !dbg !3571
  store i32 %369, ptr %34, align 4, !dbg !3563
  %370 = call i32 @disconnect_database(), !dbg !3572
  %371 = load i32, ptr %34, align 4, !dbg !3573
  ret i32 %371, !dbg !3574
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_config_file(i32 noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !1426 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca [1025 x i8], align 16
  %12 = alloca [1035 x i8], align 16
  %13 = alloca ptr, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca ptr, align 8
  %17 = alloca i64, align 8
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3575, metadata !DIExpression()), !dbg !3576
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3577, metadata !DIExpression()), !dbg !3578
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3579, metadata !DIExpression()), !dbg !3580
  %18 = load i32, ptr %6, align 4, !dbg !3581
  %19 = icmp eq i32 %18, 0, !dbg !3583
  br i1 %19, label %20, label %93, !dbg !3584

20:                                               ; preds = %3
  %21 = load ptr, ptr %5, align 8, !dbg !3585
  %22 = icmp ne ptr %21, null, !dbg !3585
  br i1 %22, label %23, label %92, !dbg !3588

23:                                               ; preds = %20
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3589, metadata !DIExpression()), !dbg !3591
  store i32 0, ptr %7, align 4, !dbg !3591
  store i32 0, ptr %7, align 4, !dbg !3592
  br label %24, !dbg !3594

24:                                               ; preds = %88, %23
  %25 = load i32, ptr %7, align 4, !dbg !3595
  %26 = load i32, ptr %4, align 4, !dbg !3597
  %27 = icmp slt i32 %25, %26, !dbg !3598
  br i1 %27, label %28, label %91, !dbg !3599

28:                                               ; preds = %24
  %29 = load ptr, ptr %5, align 8, !dbg !3600
  %30 = load i32, ptr %7, align 4, !dbg !3603
  %31 = sext i32 %30 to i64, !dbg !3600
  %32 = getelementptr inbounds ptr, ptr %29, i64 %31, !dbg !3600
  %33 = load ptr, ptr %32, align 8, !dbg !3600
  %34 = call i32 @strcmp(ptr noundef %33, ptr noundef @.str.205) #11, !dbg !3604
  %35 = icmp ne i32 %34, 0, !dbg !3604
  br i1 %35, label %66, label %36, !dbg !3605

36:                                               ; preds = %28
  %37 = load i32, ptr %7, align 4, !dbg !3606
  %38 = load i32, ptr %4, align 4, !dbg !3609
  %39 = sub nsw i32 %38, 1, !dbg !3610
  %40 = icmp slt i32 %37, %39, !dbg !3611
  br i1 %40, label %41, label %64, !dbg !3612

41:                                               ; preds = %36
  br label %42, !dbg !3613

42:                                               ; preds = %41
  %43 = load ptr, ptr %5, align 8, !dbg !3615
  %44 = load i32, ptr %7, align 4, !dbg !3615
  %45 = add nsw i32 %44, 1, !dbg !3615
  %46 = sext i32 %45 to i64, !dbg !3615
  %47 = getelementptr inbounds ptr, ptr %43, i64 %46, !dbg !3615
  %48 = load ptr, ptr %47, align 8, !dbg !3615
  %49 = icmp ne ptr @read_config_file.config_file, %48, !dbg !3615
  br i1 %49, label %50, label %62, !dbg !3618

50:                                               ; preds = %42
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3619, metadata !DIExpression()), !dbg !3623
  store i64 1025, ptr %8, align 8, !dbg !3623
  %51 = load ptr, ptr %5, align 8, !dbg !3623
  %52 = load i32, ptr %7, align 4, !dbg !3623
  %53 = add nsw i32 %52, 1, !dbg !3623
  %54 = sext i32 %53 to i64, !dbg !3623
  %55 = getelementptr inbounds ptr, ptr %51, i64 %54, !dbg !3623
  %56 = load ptr, ptr %55, align 8, !dbg !3623
  %57 = load i64, ptr %8, align 8, !dbg !3623
  %58 = call ptr @strncpy(ptr noundef @read_config_file.config_file, ptr noundef %56, i64 noundef %57) #10, !dbg !3623
  %59 = load i64, ptr %8, align 8, !dbg !3623
  %60 = sub i64 %59, 1, !dbg !3623
  %61 = getelementptr inbounds i8, ptr @read_config_file.config_file, i64 %60, !dbg !3623
  store i8 0, ptr %61, align 1, !dbg !3623
  br label %62, !dbg !3624

62:                                               ; preds = %50, %42
  br label %63, !dbg !3618

63:                                               ; preds = %62
  br label %65, !dbg !3625

64:                                               ; preds = %36
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 2, ptr noundef @.str.206), !dbg !3626
  br label %65

65:                                               ; preds = %64, %63
  br label %87, !dbg !3628

66:                                               ; preds = %28
  %67 = load ptr, ptr %5, align 8, !dbg !3629
  %68 = load i32, ptr %7, align 4, !dbg !3631
  %69 = sext i32 %68 to i64, !dbg !3629
  %70 = getelementptr inbounds ptr, ptr %67, i64 %69, !dbg !3629
  %71 = load ptr, ptr %70, align 8, !dbg !3629
  %72 = call i32 @strcmp(ptr noundef %71, ptr noundef @.str.207) #11, !dbg !3632
  %73 = icmp ne i32 %72, 0, !dbg !3632
  br i1 %73, label %75, label %74, !dbg !3633

74:                                               ; preds = %66
  store i32 1, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 25), align 8, !dbg !3634
  store i8 0, ptr @read_config_file.config_file, align 16, !dbg !3636
  br label %284, !dbg !3637

75:                                               ; preds = %66
  %76 = load ptr, ptr %5, align 8, !dbg !3638
  %77 = load i32, ptr %7, align 4, !dbg !3640
  %78 = sext i32 %77 to i64, !dbg !3638
  %79 = getelementptr inbounds ptr, ptr %76, i64 %78, !dbg !3638
  %80 = load ptr, ptr %79, align 8, !dbg !3638
  %81 = call i32 @strcmp(ptr noundef %80, ptr noundef @.str.208) #11, !dbg !3641
  %82 = icmp ne i32 %81, 0, !dbg !3641
  br i1 %82, label %85, label %83, !dbg !3642

83:                                               ; preds = %75
  %84 = call i32 (ptr, ...) @printf(ptr noundef @.str.34, ptr noundef @Usage), !dbg !3643
  call void @exit(i32 noundef 0) #13, !dbg !3645
  unreachable, !dbg !3645

85:                                               ; preds = %75
  br label %86

86:                                               ; preds = %85
  br label %87

87:                                               ; preds = %86, %65
  br label %88, !dbg !3646

88:                                               ; preds = %87
  %89 = load i32, ptr %7, align 4, !dbg !3647
  %90 = add nsw i32 %89, 1, !dbg !3647
  store i32 %90, ptr %7, align 4, !dbg !3647
  br label %24, !dbg !3648, !llvm.loop !3649

91:                                               ; preds = %24
  br label %92, !dbg !3651

92:                                               ; preds = %91, %20
  br label %93, !dbg !3652

93:                                               ; preds = %92, %3
  %94 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 25), align 8, !dbg !3653
  %95 = icmp ne i32 %94, 0, !dbg !3655
  br i1 %95, label %284, label %96, !dbg !3656

96:                                               ; preds = %93
  %97 = load i8, ptr @read_config_file.config_file, align 16, !dbg !3657
  %98 = sext i8 %97 to i32, !dbg !3657
  %99 = icmp ne i32 %98, 0, !dbg !3657
  br i1 %99, label %100, label %284, !dbg !3658

100:                                              ; preds = %96
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3659, metadata !DIExpression()), !dbg !3661
  store ptr null, ptr %9, align 8, !dbg !3661
  call void @llvm.dbg.declare(metadata ptr %10, metadata !3662, metadata !DIExpression()), !dbg !3663
  store ptr null, ptr %10, align 8, !dbg !3663
  %101 = load i32, ptr %6, align 4, !dbg !3664
  %102 = call ptr @find_config_file(ptr noundef @read_config_file.config_file, i32 noundef %101), !dbg !3665
  store ptr %102, ptr %10, align 8, !dbg !3666
  %103 = load ptr, ptr %10, align 8, !dbg !3667
  %104 = icmp ne ptr %103, null, !dbg !3667
  br i1 %104, label %105, label %108, !dbg !3669

105:                                              ; preds = %100
  %106 = load ptr, ptr %10, align 8, !dbg !3670
  %107 = call noalias ptr @fopen(ptr noundef %106, ptr noundef @.str.177), !dbg !3671
  store ptr %107, ptr %9, align 8, !dbg !3672
  br label %108, !dbg !3673

108:                                              ; preds = %105, %100
  %109 = load ptr, ptr %9, align 8, !dbg !3674
  %110 = icmp ne ptr %109, null, !dbg !3674
  br i1 %110, label %111, label %277, !dbg !3676

111:                                              ; preds = %108
  call void @llvm.dbg.declare(metadata ptr %11, metadata !3677, metadata !DIExpression()), !dbg !3679
  call void @llvm.dbg.declare(metadata ptr %12, metadata !3680, metadata !DIExpression()), !dbg !3684
  br label %112, !dbg !3685

112:                                              ; preds = %273, %133, %127, %111
  call void @llvm.dbg.declare(metadata ptr %13, metadata !3686, metadata !DIExpression()), !dbg !3690
  %113 = getelementptr inbounds [1025 x i8], ptr %11, i64 0, i64 0, !dbg !3691
  %114 = load ptr, ptr %9, align 8, !dbg !3692
  %115 = call ptr @fgets(ptr noundef %113, i32 noundef 1024, ptr noundef %114), !dbg !3693
  store ptr %115, ptr %13, align 8, !dbg !3690
  %116 = load ptr, ptr %13, align 8, !dbg !3694
  %117 = icmp ne ptr %116, null, !dbg !3694
  br i1 %117, label %119, label %118, !dbg !3696

118:                                              ; preds = %112
  br label %274, !dbg !3697

119:                                              ; preds = %112
  %120 = load ptr, ptr %13, align 8, !dbg !3698
  %121 = call ptr @skip_blanks(ptr noundef %120), !dbg !3699
  store ptr %121, ptr %13, align 8, !dbg !3700
  %122 = load ptr, ptr %13, align 8, !dbg !3701
  %123 = getelementptr inbounds i8, ptr %122, i64 0, !dbg !3701
  %124 = load i8, ptr %123, align 1, !dbg !3701
  %125 = sext i8 %124 to i32, !dbg !3701
  %126 = icmp eq i32 %125, 35, !dbg !3703
  br i1 %126, label %127, label %128, !dbg !3704

127:                                              ; preds = %119
  br label %112, !dbg !3705, !llvm.loop !3706

128:                                              ; preds = %119
  %129 = load ptr, ptr %13, align 8, !dbg !3709
  %130 = getelementptr inbounds i8, ptr %129, i64 0, !dbg !3709
  %131 = load i8, ptr %130, align 1, !dbg !3709
  %132 = icmp ne i8 %131, 0, !dbg !3709
  br i1 %132, label %134, label %133, !dbg !3711

133:                                              ; preds = %128
  br label %112, !dbg !3712, !llvm.loop !3706

134:                                              ; preds = %128
  call void @llvm.dbg.declare(metadata ptr %14, metadata !3713, metadata !DIExpression()), !dbg !3714
  %135 = load ptr, ptr %13, align 8, !dbg !3715
  %136 = call i64 @strlen(ptr noundef %135) #11, !dbg !3716
  store i64 %136, ptr %14, align 8, !dbg !3714
  br label %137, !dbg !3717

137:                                              ; preds = %157, %134
  %138 = load i64, ptr %14, align 8, !dbg !3718
  %139 = icmp ne i64 %138, 0, !dbg !3718
  br i1 %139, label %140, label %155, !dbg !3719

140:                                              ; preds = %137
  %141 = call ptr @__ctype_b_loc() #14, !dbg !3720
  %142 = load ptr, ptr %141, align 8, !dbg !3720
  %143 = load ptr, ptr %13, align 8, !dbg !3720
  %144 = load i64, ptr %14, align 8, !dbg !3720
  %145 = sub i64 %144, 1, !dbg !3720
  %146 = getelementptr inbounds i8, ptr %143, i64 %145, !dbg !3720
  %147 = load i8, ptr %146, align 1, !dbg !3720
  %148 = sext i8 %147 to i32, !dbg !3720
  %149 = sext i32 %148 to i64, !dbg !3720
  %150 = getelementptr inbounds i16, ptr %142, i64 %149, !dbg !3720
  %151 = load i16, ptr %150, align 2, !dbg !3720
  %152 = zext i16 %151 to i32, !dbg !3720
  %153 = and i32 %152, 8192, !dbg !3720
  %154 = icmp ne i32 %153, 0, !dbg !3719
  br label %155

155:                                              ; preds = %140, %137
  %156 = phi i1 [ false, %137 ], [ %154, %140 ], !dbg !3721
  br i1 %156, label %157, label %162, !dbg !3717

157:                                              ; preds = %155
  %158 = load ptr, ptr %13, align 8, !dbg !3722
  %159 = load i64, ptr %14, align 8, !dbg !3723
  %160 = add i64 %159, -1, !dbg !3723
  store i64 %160, ptr %14, align 8, !dbg !3723
  %161 = getelementptr inbounds i8, ptr %158, i64 %160, !dbg !3722
  store i8 0, ptr %161, align 1, !dbg !3724
  br label %137, !dbg !3717, !llvm.loop !3725

162:                                              ; preds = %155
  %163 = load i64, ptr %14, align 8, !dbg !3727
  %164 = icmp ne i64 %163, 0, !dbg !3727
  br i1 %164, label %165, label %273, !dbg !3729

165:                                              ; preds = %162
  call void @llvm.dbg.declare(metadata ptr %15, metadata !3730, metadata !DIExpression()), !dbg !3732
  store i32 0, ptr %15, align 4, !dbg !3732
  call void @llvm.dbg.declare(metadata ptr %16, metadata !3733, metadata !DIExpression()), !dbg !3734
  store ptr null, ptr %16, align 8, !dbg !3734
  br label %166, !dbg !3735

166:                                              ; preds = %165
  %167 = getelementptr inbounds [1035 x i8], ptr %12, i64 0, i64 0, !dbg !3736
  %168 = load ptr, ptr %13, align 8, !dbg !3736
  %169 = icmp ne ptr %167, %168, !dbg !3736
  br i1 %169, label %170, label %179, !dbg !3739

170:                                              ; preds = %166
  call void @llvm.dbg.declare(metadata ptr %17, metadata !3740, metadata !DIExpression()), !dbg !3744
  store i64 1035, ptr %17, align 8, !dbg !3744
  %171 = getelementptr inbounds [1035 x i8], ptr %12, i64 0, i64 0, !dbg !3744
  %172 = load ptr, ptr %13, align 8, !dbg !3744
  %173 = load i64, ptr %17, align 8, !dbg !3744
  %174 = call ptr @strncpy(ptr noundef %171, ptr noundef %172, i64 noundef %173) #10, !dbg !3744
  %175 = getelementptr inbounds [1035 x i8], ptr %12, i64 0, i64 0, !dbg !3744
  %176 = load i64, ptr %17, align 8, !dbg !3744
  %177 = sub i64 %176, 1, !dbg !3744
  %178 = getelementptr inbounds i8, ptr %175, i64 %177, !dbg !3744
  store i8 0, ptr %178, align 1, !dbg !3744
  br label %179, !dbg !3745

179:                                              ; preds = %170, %166
  br label %180, !dbg !3739

180:                                              ; preds = %179
  %181 = getelementptr inbounds [1035 x i8], ptr %12, i64 0, i64 0, !dbg !3746
  %182 = call i32 @parse_arg_string(ptr noundef %181, ptr noundef %15, ptr noundef %16), !dbg !3748
  %183 = icmp slt i32 %182, 0, !dbg !3749
  br i1 %183, label %184, label %186, !dbg !3750

184:                                              ; preds = %180
  %185 = getelementptr inbounds [1035 x i8], ptr %12, i64 0, i64 0, !dbg !3751
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 2, ptr noundef @.str.209, ptr noundef %185), !dbg !3753
  br label %262, !dbg !3754

186:                                              ; preds = %180
  %187 = load i32, ptr %6, align 4, !dbg !3755
  %188 = icmp eq i32 %187, 0, !dbg !3757
  br i1 %188, label %189, label %194, !dbg !3758

189:                                              ; preds = %186
  %190 = load i32, ptr %15, align 4, !dbg !3759
  %191 = icmp eq i32 %190, 108, !dbg !3760
  br i1 %191, label %192, label %194, !dbg !3761

192:                                              ; preds = %189
  %193 = load ptr, ptr %16, align 8, !dbg !3762
  call void @set_logfile(ptr noundef %193), !dbg !3764
  br label %261, !dbg !3765

194:                                              ; preds = %189, %186
  %195 = load i32, ptr %6, align 4, !dbg !3766
  %196 = icmp eq i32 %195, 0, !dbg !3768
  br i1 %196, label %197, label %203, !dbg !3769

197:                                              ; preds = %194
  %198 = load i32, ptr %15, align 4, !dbg !3770
  %199 = icmp eq i32 %198, 283, !dbg !3771
  br i1 %199, label %200, label %203, !dbg !3772

200:                                              ; preds = %197
  %201 = load ptr, ptr %16, align 8, !dbg !3773
  %202 = call i32 @get_bool_value(ptr noundef %201), !dbg !3775
  call void @set_no_stdout_log(i32 noundef %202), !dbg !3776
  br label %260, !dbg !3777

203:                                              ; preds = %197, %194
  %204 = load i32, ptr %6, align 4, !dbg !3778
  %205 = icmp eq i32 %204, 0, !dbg !3780
  br i1 %205, label %206, label %212, !dbg !3781

206:                                              ; preds = %203
  %207 = load i32, ptr %15, align 4, !dbg !3782
  %208 = icmp eq i32 %207, 284, !dbg !3783
  br i1 %208, label %209, label %212, !dbg !3784

209:                                              ; preds = %206
  %210 = load ptr, ptr %16, align 8, !dbg !3785
  %211 = call i32 @get_bool_value(ptr noundef %210), !dbg !3787
  call void @set_log_to_syslog(i32 noundef %211), !dbg !3788
  br label %259, !dbg !3789

212:                                              ; preds = %206, %203
  %213 = load i32, ptr %6, align 4, !dbg !3790
  %214 = icmp eq i32 %213, 0, !dbg !3792
  br i1 %214, label %215, label %221, !dbg !3793

215:                                              ; preds = %212
  %216 = load i32, ptr %15, align 4, !dbg !3794
  %217 = icmp eq i32 %216, 285, !dbg !3795
  br i1 %217, label %218, label %221, !dbg !3796

218:                                              ; preds = %215
  %219 = load ptr, ptr %16, align 8, !dbg !3797
  %220 = call i32 @get_bool_value(ptr noundef %219), !dbg !3799
  call void @set_simple_log(i32 noundef %220), !dbg !3800
  br label %258, !dbg !3801

221:                                              ; preds = %215, %212
  %222 = load i32, ptr %6, align 4, !dbg !3802
  %223 = icmp eq i32 %222, 0, !dbg !3804
  br i1 %223, label %224, label %228, !dbg !3805

224:                                              ; preds = %221
  %225 = load i32, ptr %15, align 4, !dbg !3806
  %226 = icmp eq i32 %225, 286, !dbg !3807
  br i1 %226, label %227, label %228, !dbg !3808

227:                                              ; preds = %224
  store i32 1, ptr @use_new_log_timestamp_format, align 4, !dbg !3809
  br label %257, !dbg !3811

228:                                              ; preds = %224, %221
  %229 = load i32, ptr %6, align 4, !dbg !3812
  %230 = icmp eq i32 %229, 0, !dbg !3814
  br i1 %230, label %231, label %236, !dbg !3815

231:                                              ; preds = %228
  %232 = load i32, ptr %15, align 4, !dbg !3816
  %233 = icmp eq i32 %232, 287, !dbg !3817
  br i1 %233, label %234, label %236, !dbg !3818

234:                                              ; preds = %231
  %235 = load ptr, ptr %16, align 8, !dbg !3819
  call void @set_turn_log_timestamp_format(ptr noundef %235), !dbg !3821
  br label %256, !dbg !3822

236:                                              ; preds = %231, %228
  %237 = load i32, ptr %6, align 4, !dbg !3823
  %238 = icmp eq i32 %237, 1, !dbg !3825
  br i1 %238, label %239, label %245, !dbg !3826

239:                                              ; preds = %236
  %240 = load i32, ptr %15, align 4, !dbg !3827
  %241 = icmp ne i32 %240, 117, !dbg !3828
  br i1 %241, label %242, label %245, !dbg !3829

242:                                              ; preds = %239
  %243 = load i32, ptr %15, align 4, !dbg !3830
  %244 = load ptr, ptr %16, align 8, !dbg !3832
  call void @set_option(i32 noundef %243, ptr noundef %244), !dbg !3833
  br label %255, !dbg !3834

245:                                              ; preds = %239, %236
  %246 = load i32, ptr %6, align 4, !dbg !3835
  %247 = icmp eq i32 %246, 2, !dbg !3837
  br i1 %247, label %248, label %254, !dbg !3838

248:                                              ; preds = %245
  %249 = load i32, ptr %15, align 4, !dbg !3839
  %250 = icmp eq i32 %249, 117, !dbg !3840
  br i1 %250, label %251, label %254, !dbg !3841

251:                                              ; preds = %248
  %252 = load i32, ptr %15, align 4, !dbg !3842
  %253 = load ptr, ptr %16, align 8, !dbg !3844
  call void @set_option(i32 noundef %252, ptr noundef %253), !dbg !3845
  br label %254, !dbg !3846

254:                                              ; preds = %251, %248, %245
  br label %255

255:                                              ; preds = %254, %242
  br label %256

256:                                              ; preds = %255, %234
  br label %257

257:                                              ; preds = %256, %227
  br label %258

258:                                              ; preds = %257, %218
  br label %259

259:                                              ; preds = %258, %209
  br label %260

260:                                              ; preds = %259, %200
  br label %261

261:                                              ; preds = %260, %192
  br label %262

262:                                              ; preds = %261, %184
  %263 = load ptr, ptr %13, align 8, !dbg !3847
  %264 = load i64, ptr %14, align 8, !dbg !3849
  %265 = sub i64 %264, 1, !dbg !3850
  %266 = getelementptr inbounds i8, ptr %263, i64 %265, !dbg !3847
  %267 = load i8, ptr %266, align 1, !dbg !3847
  %268 = sext i8 %267 to i32, !dbg !3847
  %269 = icmp eq i32 %268, 59, !dbg !3851
  br i1 %269, label %270, label %272, !dbg !3852

270:                                              ; preds = %262
  %271 = load ptr, ptr %13, align 8, !dbg !3853
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 2, ptr noundef @.str.210, ptr noundef %271), !dbg !3855
  br label %272, !dbg !3856

272:                                              ; preds = %270, %262
  br label %273, !dbg !3857

273:                                              ; preds = %272, %162
  br label %112, !dbg !3858, !llvm.loop !3706

274:                                              ; preds = %118
  %275 = load ptr, ptr %9, align 8, !dbg !3859
  %276 = call i32 @fclose(ptr noundef %275), !dbg !3860
  br label %278, !dbg !3861

277:                                              ; preds = %108
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 2, ptr noundef @.str.211, ptr noundef @read_config_file.config_file), !dbg !3862
  br label %278

278:                                              ; preds = %277, %274
  %279 = load ptr, ptr %10, align 8, !dbg !3863
  %280 = icmp ne ptr %279, null, !dbg !3863
  br i1 %280, label %281, label %283, !dbg !3865

281:                                              ; preds = %278
  %282 = load ptr, ptr %10, align 8, !dbg !3866
  call void @free(ptr noundef %282) #10, !dbg !3868
  store ptr null, ptr %10, align 8, !dbg !3869
  br label %283, !dbg !3870

283:                                              ; preds = %281, %278
  br label %284, !dbg !3871

284:                                              ; preds = %74, %283, %96, %93
  ret void, !dbg !3872
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_option(i32 noundef %0, ptr noundef %1) #0 !dbg !3873 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca %union.ioa_addr, align 4
  %18 = alloca %union.ioa_addr, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3876, metadata !DIExpression()), !dbg !3877
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3878, metadata !DIExpression()), !dbg !3879
  %34 = load ptr, ptr %4, align 8, !dbg !3880
  %35 = icmp ne ptr %34, null, !dbg !3880
  br i1 %35, label %36, label %49, !dbg !3882

36:                                               ; preds = %2
  %37 = load ptr, ptr %4, align 8, !dbg !3883
  %38 = getelementptr inbounds i8, ptr %37, i64 0, !dbg !3883
  %39 = load i8, ptr %38, align 1, !dbg !3883
  %40 = sext i8 %39 to i32, !dbg !3883
  %41 = icmp eq i32 %40, 61, !dbg !3884
  br i1 %41, label %42, label %49, !dbg !3885

42:                                               ; preds = %36
  %43 = load i32, ptr %3, align 4, !dbg !3886
  %44 = trunc i32 %43 to i8, !dbg !3888
  %45 = sext i8 %44 to i32, !dbg !3888
  %46 = load i32, ptr %3, align 4, !dbg !3889
  %47 = trunc i32 %46 to i8, !dbg !3890
  %48 = sext i8 %47 to i32, !dbg !3890
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 2, ptr noundef @.str.212, i32 noundef %45, i32 noundef %48), !dbg !3891
  br label %49, !dbg !3892

49:                                               ; preds = %42, %36, %2
  %50 = load i32, ptr %3, align 4, !dbg !3893
  switch i32 %50, label %759 [
    i32 75, label %51
    i32 65, label %57
    i32 329, label %93
    i32 330, label %106
    i32 320, label %109
    i32 321, label %110
    i32 322, label %111
    i32 323, label %114
    i32 324, label %117
    i32 319, label %120
    i32 317, label %132
    i32 318, label %138
    i32 316, label %144
    i32 315, label %157
    i32 314, label %160
    i32 305, label %163
    i32 306, label %166
    i32 307, label %172
    i32 308, label %180
    i32 309, label %183
    i32 310, label %196
    i32 311, label %199
    i32 312, label %207
    i32 313, label %210
    i32 303, label %213
    i32 304, label %237
    i32 105, label %261
    i32 109, label %274
    i32 100, label %290
    i32 112, label %303
    i32 263, label %306
    i32 264, label %309
    i32 265, label %312
    i32 258, label %315
    i32 269, label %318
    i32 270, label %322
    i32 299, label %326
    i32 292, label %329
    i32 293, label %332
    i32 271, label %335
    i32 272, label %338
    i32 273, label %341
    i32 274, label %344
    i32 294, label %347
    i32 83, label %352
    i32 302, label %355
    i32 76, label %358
    i32 69, label %360
    i32 88, label %363
    i32 118, label %419
    i32 86, label %430
    i32 111, label %436
    i32 97, label %439
    i32 122, label %446
    i32 331, label %453
    i32 102, label %456
    i32 117, label %459
    i32 98, label %462
    i32 101, label %475
    i32 77, label %488
    i32 74, label %501
    i32 78, label %514
    i32 79, label %527
    i32 275, label %540
    i32 276, label %541
    i32 277, label %542
    i32 278, label %543
    i32 279, label %544
    i32 281, label %545
    i32 282, label %547
    i32 114, label %548
    i32 113, label %550
    i32 81, label %559
    i32 115, label %568
    i32 66, label %578
    i32 325, label %582
    i32 256, label %585
    i32 257, label %588
    i32 261, label %591
    i32 262, label %594
    i32 259, label %597
    i32 260, label %600
    i32 266, label %603
    i32 300, label %616
    i32 301, label %629
    i32 333, label %642
    i32 267, label %655
    i32 268, label %668
    i32 290, label %681
    i32 288, label %683
    i32 289, label %685
    i32 291, label %688
    i32 295, label %690
    i32 296, label %697
    i32 297, label %704
    i32 298, label %717
    i32 334, label %730
    i32 67, label %743
    i32 335, label %755
    i32 108, label %758
    i32 283, label %758
    i32 284, label %758
    i32 285, label %758
    i32 286, label %758
    i32 287, label %758
    i32 99, label %758
    i32 110, label %758
    i32 104, label %758
  ], !dbg !3894

51:                                               ; preds = %49
  %52 = load ptr, ptr %4, align 8, !dbg !3895
  %53 = call i32 @get_bool_value(ptr noundef %52), !dbg !3898
  %54 = icmp ne i32 %53, 0, !dbg !3898
  br i1 %54, label %55, label %56, !dbg !3899

55:                                               ; preds = %51
  store i32 2, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 90), align 4, !dbg !3900
  br label %56, !dbg !3901

56:                                               ; preds = %55, %51
  br label %762, !dbg !3902

57:                                               ; preds = %49
  %58 = load ptr, ptr %4, align 8, !dbg !3903
  %59 = icmp ne ptr %58, null, !dbg !3903
  br i1 %59, label %60, label %91, !dbg !3905

60:                                               ; preds = %57
  %61 = load ptr, ptr %4, align 8, !dbg !3906
  %62 = call i64 @strlen(ptr noundef %61) #11, !dbg !3907
  %63 = icmp ugt i64 %62, 0, !dbg !3908
  br i1 %63, label %64, label %91, !dbg !3909

64:                                               ; preds = %60
  %65 = load ptr, ptr %4, align 8, !dbg !3910
  %66 = load i8, ptr %65, align 1, !dbg !3913
  %67 = sext i8 %66 to i32, !dbg !3913
  %68 = icmp eq i32 %67, 61, !dbg !3914
  br i1 %68, label %69, label %72, !dbg !3915

69:                                               ; preds = %64
  %70 = load ptr, ptr %4, align 8, !dbg !3916
  %71 = getelementptr inbounds i8, ptr %70, i32 1, !dbg !3916
  store ptr %71, ptr %4, align 8, !dbg !3916
  br label %72, !dbg !3916

72:                                               ; preds = %69, %64
  %73 = load ptr, ptr %4, align 8, !dbg !3917
  %74 = call i32 @strcmp(ptr noundef %73, ptr noundef @.str.213) #11, !dbg !3919
  %75 = icmp ne i32 %74, 0, !dbg !3919
  br i1 %75, label %77, label %76, !dbg !3920

76:                                               ; preds = %72
  store i32 1, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 90), align 4, !dbg !3921
  br label %90, !dbg !3923

77:                                               ; preds = %72
  %78 = load ptr, ptr %4, align 8, !dbg !3924
  %79 = call i32 @strcmp(ptr noundef %78, ptr noundef @.str.214) #11, !dbg !3926
  %80 = icmp ne i32 %79, 0, !dbg !3926
  br i1 %80, label %82, label %81, !dbg !3927

81:                                               ; preds = %77
  store i32 2, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 90), align 4, !dbg !3928
  br label %89, !dbg !3930

82:                                               ; preds = %77
  %83 = load ptr, ptr %4, align 8, !dbg !3931
  %84 = call i32 @strcmp(ptr noundef %83, ptr noundef @.str.215) #11, !dbg !3933
  %85 = icmp ne i32 %84, 0, !dbg !3933
  br i1 %85, label %87, label %86, !dbg !3934

86:                                               ; preds = %82
  store i32 0, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 90), align 4, !dbg !3935
  br label %88, !dbg !3937

87:                                               ; preds = %82
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.216), !dbg !3938
  br label %88

88:                                               ; preds = %87, %86
  br label %89

89:                                               ; preds = %88, %81
  br label %90

90:                                               ; preds = %89, %76
  br label %92, !dbg !3940

91:                                               ; preds = %60, %57
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.216), !dbg !3941
  br label %92

92:                                               ; preds = %91, %90
  br label %762, !dbg !3943

93:                                               ; preds = %49
  br label %94, !dbg !3944

94:                                               ; preds = %93
  %95 = load ptr, ptr %4, align 8, !dbg !3945
  %96 = icmp ne ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 59), %95, !dbg !3945
  br i1 %96, label %97, label %104, !dbg !3948

97:                                               ; preds = %94
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3949, metadata !DIExpression()), !dbg !3953
  store i64 1025, ptr %5, align 8, !dbg !3953
  %98 = load ptr, ptr %4, align 8, !dbg !3953
  %99 = load i64, ptr %5, align 8, !dbg !3953
  %100 = call ptr @strncpy(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 59), ptr noundef %98, i64 noundef %99) #10, !dbg !3953
  %101 = load i64, ptr %5, align 8, !dbg !3953
  %102 = sub i64 %101, 1, !dbg !3953
  %103 = getelementptr inbounds i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 59), i64 %102, !dbg !3953
  store i8 0, ptr %103, align 1, !dbg !3953
  br label %104, !dbg !3954

104:                                              ; preds = %97, %94
  br label %105, !dbg !3948

105:                                              ; preds = %104
  br label %762, !dbg !3955

106:                                              ; preds = %49
  %107 = load ptr, ptr %4, align 8, !dbg !3956
  %108 = call i32 @get_bool_value(ptr noundef %107), !dbg !3959
  store i32 %108, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 61), align 4, !dbg !3960
  br label %762, !dbg !3961

109:                                              ; preds = %49
  br label %762, !dbg !3962

110:                                              ; preds = %49
  br label %762, !dbg !3963

111:                                              ; preds = %49
  %112 = load ptr, ptr %4, align 8, !dbg !3964
  %113 = call i32 @get_bool_value(ptr noundef %112), !dbg !3965
  store i32 %113, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 14), align 4, !dbg !3966
  br label %762, !dbg !3967

114:                                              ; preds = %49
  %115 = load ptr, ptr %4, align 8, !dbg !3968
  %116 = call i32 @get_bool_value(ptr noundef %115), !dbg !3969
  store i32 %116, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 15), align 8, !dbg !3970
  br label %762, !dbg !3971

117:                                              ; preds = %49
  %118 = load ptr, ptr %4, align 8, !dbg !3972
  %119 = call i32 @get_bool_value(ptr noundef %118), !dbg !3973
  store i32 %119, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 16), align 4, !dbg !3974
  br label %762, !dbg !3975

120:                                              ; preds = %49
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3976, metadata !DIExpression()), !dbg !3978
  %121 = load ptr, ptr %4, align 8, !dbg !3979
  %122 = call i32 @atoi(ptr noundef %121) #11, !dbg !3980
  store i32 %122, ptr %6, align 4, !dbg !3978
  %123 = load i32, ptr %6, align 4, !dbg !3981
  %124 = icmp slt i32 %123, 1, !dbg !3983
  br i1 %124, label %128, label %125, !dbg !3984

125:                                              ; preds = %120
  %126 = load i32, ptr %6, align 4, !dbg !3985
  %127 = icmp sgt i32 %126, 3, !dbg !3986
  br i1 %127, label %128, label %130, !dbg !3987

128:                                              ; preds = %125, %120
  %129 = load i32, ptr %6, align 4, !dbg !3988
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.217, i32 noundef %129), !dbg !3990
  br label %130, !dbg !3991

130:                                              ; preds = %128, %125
  %131 = load i32, ptr %6, align 4, !dbg !3992
  store i32 %131, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 45), align 8, !dbg !3993
  br label %762, !dbg !3994

132:                                              ; preds = %49
  %133 = load ptr, ptr %4, align 8, !dbg !3995
  %134 = call i32 @get_bool_value(ptr noundef %133), !dbg !3997
  %135 = icmp ne i32 %134, 0, !dbg !3997
  br i1 %135, label %136, label %137, !dbg !3998

136:                                              ; preds = %132
  store i32 0, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 6), align 8, !dbg !3999
  br label %137, !dbg !4000

137:                                              ; preds = %136, %132
  br label %762, !dbg !4001

138:                                              ; preds = %49
  %139 = load ptr, ptr %4, align 8, !dbg !4002
  %140 = call i32 @get_bool_value(ptr noundef %139), !dbg !4004
  %141 = icmp ne i32 %140, 0, !dbg !4004
  br i1 %141, label %142, label %143, !dbg !4005

142:                                              ; preds = %138
  store i32 1, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 6), align 8, !dbg !4006
  br label %143, !dbg !4007

143:                                              ; preds = %142, %138
  br label %762, !dbg !4008

144:                                              ; preds = %49
  br label %145, !dbg !4009

145:                                              ; preds = %144
  %146 = load ptr, ptr %4, align 8, !dbg !4010
  %147 = icmp ne ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 8), %146, !dbg !4010
  br i1 %147, label %148, label %155, !dbg !4013

148:                                              ; preds = %145
  call void @llvm.dbg.declare(metadata ptr %7, metadata !4014, metadata !DIExpression()), !dbg !4018
  store i64 33, ptr %7, align 8, !dbg !4018
  %149 = load ptr, ptr %4, align 8, !dbg !4018
  %150 = load i64, ptr %7, align 8, !dbg !4018
  %151 = call ptr @strncpy(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 8), ptr noundef %149, i64 noundef %150) #10, !dbg !4018
  %152 = load i64, ptr %7, align 8, !dbg !4018
  %153 = sub i64 %152, 1, !dbg !4018
  %154 = getelementptr inbounds i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 8), i64 %153, !dbg !4018
  store i8 0, ptr %154, align 1, !dbg !4018
  br label %155, !dbg !4019

155:                                              ; preds = %148, %145
  br label %156, !dbg !4013

156:                                              ; preds = %155
  br label %762, !dbg !4020

157:                                              ; preds = %49
  %158 = load ptr, ptr %4, align 8, !dbg !4021
  %159 = call i32 @atoi(ptr noundef %158) #11, !dbg !4022
  store i32 %159, ptr @cli_max_output_sessions, align 4, !dbg !4023
  br label %762, !dbg !4024

160:                                              ; preds = %49
  %161 = load ptr, ptr %4, align 8, !dbg !4025
  %162 = call i32 @get_bool_value(ptr noundef %161), !dbg !4026
  store i32 %162, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 70), align 8, !dbg !4027
  br label %762, !dbg !4028

163:                                              ; preds = %49
  %164 = load ptr, ptr %4, align 8, !dbg !4029
  %165 = call i32 @get_bool_value(ptr noundef %164), !dbg !4030
  store i32 %165, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 77), align 4, !dbg !4031
  br label %762, !dbg !4032

166:                                              ; preds = %49
  %167 = load ptr, ptr %4, align 8, !dbg !4033
  %168 = call i32 @get_bool_value(ptr noundef %167), !dbg !4034
  %169 = icmp ne i32 %168, 0, !dbg !4035
  %170 = xor i1 %169, true, !dbg !4035
  %171 = zext i1 %170 to i32, !dbg !4035
  store i32 %171, ptr @use_cli, align 4, !dbg !4036
  br label %762, !dbg !4037

172:                                              ; preds = %49
  %173 = load ptr, ptr %4, align 8, !dbg !4038
  %174 = call i32 @make_ioa_addr(ptr noundef %173, i32 noundef 0, ptr noundef @cli_addr), !dbg !4040
  %175 = icmp slt i32 %174, 0, !dbg !4041
  br i1 %175, label %176, label %178, !dbg !4042

176:                                              ; preds = %172
  %177 = load ptr, ptr %4, align 8, !dbg !4043
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.218, ptr noundef %177), !dbg !4045
  br label %179, !dbg !4046

178:                                              ; preds = %172
  store i32 1, ptr @cli_addr_set, align 4, !dbg !4047
  br label %179

179:                                              ; preds = %178, %176
  br label %762, !dbg !4049

180:                                              ; preds = %49
  %181 = load ptr, ptr %4, align 8, !dbg !4050
  %182 = call i32 @atoi(ptr noundef %181) #11, !dbg !4051
  store i32 %182, ptr @cli_port, align 4, !dbg !4052
  br label %762, !dbg !4053

183:                                              ; preds = %49
  br label %184, !dbg !4054

184:                                              ; preds = %183
  %185 = load ptr, ptr %4, align 8, !dbg !4055
  %186 = icmp ne ptr @cli_password, %185, !dbg !4055
  br i1 %186, label %187, label %194, !dbg !4058

187:                                              ; preds = %184
  call void @llvm.dbg.declare(metadata ptr %8, metadata !4059, metadata !DIExpression()), !dbg !4063
  store i64 129, ptr %8, align 8, !dbg !4063
  %188 = load ptr, ptr %4, align 8, !dbg !4063
  %189 = load i64, ptr %8, align 8, !dbg !4063
  %190 = call ptr @strncpy(ptr noundef @cli_password, ptr noundef %188, i64 noundef %189) #10, !dbg !4063
  %191 = load i64, ptr %8, align 8, !dbg !4063
  %192 = sub i64 %191, 1, !dbg !4063
  %193 = getelementptr inbounds i8, ptr @cli_password, i64 %192, !dbg !4063
  store i8 0, ptr %193, align 1, !dbg !4063
  br label %194, !dbg !4064

194:                                              ; preds = %187, %184
  br label %195, !dbg !4058

195:                                              ; preds = %194
  br label %762, !dbg !4065

196:                                              ; preds = %49
  %197 = load ptr, ptr %4, align 8, !dbg !4066
  %198 = call i32 @get_bool_value(ptr noundef %197), !dbg !4067
  store i32 %198, ptr @use_web_admin, align 4, !dbg !4068
  br label %762, !dbg !4069

199:                                              ; preds = %49
  %200 = load ptr, ptr %4, align 8, !dbg !4070
  %201 = call i32 @make_ioa_addr(ptr noundef %200, i32 noundef 0, ptr noundef @web_admin_addr), !dbg !4072
  %202 = icmp slt i32 %201, 0, !dbg !4073
  br i1 %202, label %203, label %205, !dbg !4074

203:                                              ; preds = %199
  %204 = load ptr, ptr %4, align 8, !dbg !4075
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.219, ptr noundef %204), !dbg !4077
  br label %206, !dbg !4078

205:                                              ; preds = %199
  store i32 1, ptr @web_admin_addr_set, align 4, !dbg !4079
  br label %206

206:                                              ; preds = %205, %203
  br label %762, !dbg !4081

207:                                              ; preds = %49
  %208 = load ptr, ptr %4, align 8, !dbg !4082
  %209 = call i32 @atoi(ptr noundef %208) #11, !dbg !4083
  store i32 %209, ptr @web_admin_port, align 4, !dbg !4084
  br label %762, !dbg !4085

210:                                              ; preds = %49
  %211 = load ptr, ptr %4, align 8, !dbg !4086
  %212 = call i32 @get_bool_value(ptr noundef %211), !dbg !4087
  store i32 %212, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 24), align 4, !dbg !4088
  br label %762, !dbg !4089

213:                                              ; preds = %49
  call void @llvm.dbg.declare(metadata ptr %9, metadata !4090, metadata !DIExpression()), !dbg !4103
  %214 = load ptr, ptr %4, align 8, !dbg !4104
  %215 = call ptr @getpwnam(ptr noundef %214), !dbg !4105
  store ptr %215, ptr %9, align 8, !dbg !4103
  %216 = load ptr, ptr %9, align 8, !dbg !4106
  %217 = icmp ne ptr %216, null, !dbg !4106
  br i1 %217, label %220, label %218, !dbg !4108

218:                                              ; preds = %213
  %219 = load ptr, ptr %4, align 8, !dbg !4109
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.220, ptr noundef %219), !dbg !4111
  call void @exit(i32 noundef -1) #13, !dbg !4112
  unreachable, !dbg !4112

220:                                              ; preds = %213
  %221 = load ptr, ptr %9, align 8, !dbg !4113
  %222 = getelementptr inbounds %struct.passwd, ptr %221, i32 0, i32 2, !dbg !4115
  %223 = load i32, ptr %222, align 8, !dbg !4115
  store i32 %223, ptr @procuserid, align 4, !dbg !4116
  store i32 1, ptr @procuserid_set, align 4, !dbg !4117
  br label %224, !dbg !4118

224:                                              ; preds = %220
  %225 = load ptr, ptr %4, align 8, !dbg !4119
  %226 = icmp ne ptr @procusername, %225, !dbg !4119
  br i1 %226, label %227, label %234, !dbg !4122

227:                                              ; preds = %224
  call void @llvm.dbg.declare(metadata ptr %10, metadata !4123, metadata !DIExpression()), !dbg !4127
  store i64 1025, ptr %10, align 8, !dbg !4127
  %228 = load ptr, ptr %4, align 8, !dbg !4127
  %229 = load i64, ptr %10, align 8, !dbg !4127
  %230 = call ptr @strncpy(ptr noundef @procusername, ptr noundef %228, i64 noundef %229) #10, !dbg !4127
  %231 = load i64, ptr %10, align 8, !dbg !4127
  %232 = sub i64 %231, 1, !dbg !4127
  %233 = getelementptr inbounds i8, ptr @procusername, i64 %232, !dbg !4127
  store i8 0, ptr %233, align 1, !dbg !4127
  br label %234, !dbg !4128

234:                                              ; preds = %227, %224
  br label %235, !dbg !4122

235:                                              ; preds = %234
  br label %236

236:                                              ; preds = %235
  br label %762, !dbg !4129

237:                                              ; preds = %49
  call void @llvm.dbg.declare(metadata ptr %11, metadata !4130, metadata !DIExpression()), !dbg !4140
  %238 = load ptr, ptr %4, align 8, !dbg !4141
  %239 = call ptr @getgrnam(ptr noundef %238), !dbg !4142
  store ptr %239, ptr %11, align 8, !dbg !4140
  %240 = load ptr, ptr %11, align 8, !dbg !4143
  %241 = icmp ne ptr %240, null, !dbg !4143
  br i1 %241, label %244, label %242, !dbg !4145

242:                                              ; preds = %237
  %243 = load ptr, ptr %4, align 8, !dbg !4146
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.221, ptr noundef %243), !dbg !4148
  call void @exit(i32 noundef -1) #13, !dbg !4149
  unreachable, !dbg !4149

244:                                              ; preds = %237
  %245 = load ptr, ptr %11, align 8, !dbg !4150
  %246 = getelementptr inbounds %struct.group, ptr %245, i32 0, i32 2, !dbg !4152
  %247 = load i32, ptr %246, align 8, !dbg !4152
  store i32 %247, ptr @procgroupid, align 4, !dbg !4153
  store i32 1, ptr @procgroupid_set, align 4, !dbg !4154
  br label %248, !dbg !4155

248:                                              ; preds = %244
  %249 = load ptr, ptr %4, align 8, !dbg !4156
  %250 = icmp ne ptr @procgroupname, %249, !dbg !4156
  br i1 %250, label %251, label %258, !dbg !4159

251:                                              ; preds = %248
  call void @llvm.dbg.declare(metadata ptr %12, metadata !4160, metadata !DIExpression()), !dbg !4164
  store i64 1025, ptr %12, align 8, !dbg !4164
  %252 = load ptr, ptr %4, align 8, !dbg !4164
  %253 = load i64, ptr %12, align 8, !dbg !4164
  %254 = call ptr @strncpy(ptr noundef @procgroupname, ptr noundef %252, i64 noundef %253) #10, !dbg !4164
  %255 = load i64, ptr %12, align 8, !dbg !4164
  %256 = sub i64 %255, 1, !dbg !4164
  %257 = getelementptr inbounds i8, ptr @procgroupname, i64 %256, !dbg !4164
  store i8 0, ptr %257, align 1, !dbg !4164
  br label %258, !dbg !4165

258:                                              ; preds = %251, %248
  br label %259, !dbg !4159

259:                                              ; preds = %258
  br label %260

260:                                              ; preds = %259
  br label %762, !dbg !4166

261:                                              ; preds = %49
  br label %262, !dbg !4167

262:                                              ; preds = %261
  %263 = load ptr, ptr %4, align 8, !dbg !4168
  %264 = icmp ne ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 52), %263, !dbg !4168
  br i1 %264, label %265, label %272, !dbg !4171

265:                                              ; preds = %262
  call void @llvm.dbg.declare(metadata ptr %13, metadata !4172, metadata !DIExpression()), !dbg !4176
  store i64 1025, ptr %13, align 8, !dbg !4176
  %266 = load ptr, ptr %4, align 8, !dbg !4176
  %267 = load i64, ptr %13, align 8, !dbg !4176
  %268 = call ptr @strncpy(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 52), ptr noundef %266, i64 noundef %267) #10, !dbg !4176
  %269 = load i64, ptr %13, align 8, !dbg !4176
  %270 = sub i64 %269, 1, !dbg !4176
  %271 = getelementptr inbounds i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 52), i64 %270, !dbg !4176
  store i8 0, ptr %271, align 1, !dbg !4176
  br label %272, !dbg !4177

272:                                              ; preds = %265, %262
  br label %273, !dbg !4171

273:                                              ; preds = %272
  br label %762, !dbg !4178

274:                                              ; preds = %49
  %275 = load ptr, ptr %4, align 8, !dbg !4179
  %276 = call i32 @atoi(ptr noundef %275) #11, !dbg !4181
  %277 = icmp sgt i32 %276, 128, !dbg !4182
  br i1 %277, label %278, label %279, !dbg !4183

278:                                              ; preds = %274
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 2, ptr noundef @.str.222), !dbg !4184
  store i8 -128, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 57), align 8, !dbg !4186
  br label %289, !dbg !4187

279:                                              ; preds = %274
  %280 = load ptr, ptr %4, align 8, !dbg !4188
  %281 = call i32 @atoi(ptr noundef %280) #11, !dbg !4190
  %282 = icmp sle i32 %281, 0, !dbg !4191
  br i1 %282, label %283, label %284, !dbg !4192

283:                                              ; preds = %279
  store i8 0, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 57), align 8, !dbg !4193
  br label %288, !dbg !4195

284:                                              ; preds = %279
  %285 = load ptr, ptr %4, align 8, !dbg !4196
  %286 = call i32 @atoi(ptr noundef %285) #11, !dbg !4198
  %287 = trunc i32 %286 to i8, !dbg !4198
  store i8 %287, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 57), align 8, !dbg !4199
  br label %288

288:                                              ; preds = %284, %283
  br label %289

289:                                              ; preds = %288, %278
  br label %762, !dbg !4200

290:                                              ; preds = %49
  br label %291, !dbg !4201

291:                                              ; preds = %290
  %292 = load ptr, ptr %4, align 8, !dbg !4202
  %293 = icmp ne ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 39), %292, !dbg !4202
  br i1 %293, label %294, label %301, !dbg !4205

294:                                              ; preds = %291
  call void @llvm.dbg.declare(metadata ptr %14, metadata !4206, metadata !DIExpression()), !dbg !4210
  store i64 1025, ptr %14, align 8, !dbg !4210
  %295 = load ptr, ptr %4, align 8, !dbg !4210
  %296 = load i64, ptr %14, align 8, !dbg !4210
  %297 = call ptr @strncpy(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 39), ptr noundef %295, i64 noundef %296) #10, !dbg !4210
  %298 = load i64, ptr %14, align 8, !dbg !4210
  %299 = sub i64 %298, 1, !dbg !4210
  %300 = getelementptr inbounds i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 39), i64 %299, !dbg !4210
  store i8 0, ptr %300, align 1, !dbg !4210
  br label %301, !dbg !4211

301:                                              ; preds = %294, %291
  br label %302, !dbg !4205

302:                                              ; preds = %301
  br label %762, !dbg !4212

303:                                              ; preds = %49
  %304 = load ptr, ptr %4, align 8, !dbg !4213
  %305 = call i32 @atoi(ptr noundef %304) #11, !dbg !4214
  store i32 %305, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 28), align 8, !dbg !4215
  br label %762, !dbg !4216

306:                                              ; preds = %49
  %307 = load ptr, ptr %4, align 8, !dbg !4217
  %308 = call i32 @atoi(ptr noundef %307) #11, !dbg !4218
  store i32 %308, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 29), align 4, !dbg !4219
  br label %762, !dbg !4220

309:                                              ; preds = %49
  %310 = load ptr, ptr %4, align 8, !dbg !4221
  %311 = call i32 @atoi(ptr noundef %310) #11, !dbg !4222
  store i32 %311, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 30), align 8, !dbg !4223
  br label %762, !dbg !4224

312:                                              ; preds = %49
  %313 = load ptr, ptr %4, align 8, !dbg !4225
  %314 = call i32 @atoi(ptr noundef %313) #11, !dbg !4226
  store i32 %314, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 31), align 4, !dbg !4227
  br label %762, !dbg !4228

315:                                              ; preds = %49
  %316 = load ptr, ptr %4, align 8, !dbg !4229
  %317 = call i32 @atoi(ptr noundef %316) #11, !dbg !4230
  store i32 %317, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 32), align 8, !dbg !4231
  store i32 1, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 36), align 8, !dbg !4232
  br label %762, !dbg !4233

318:                                              ; preds = %49
  %319 = load ptr, ptr %4, align 8, !dbg !4234
  %320 = call i32 @atoi(ptr noundef %319) #11, !dbg !4235
  %321 = trunc i32 %320 to i16, !dbg !4235
  store i16 %321, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 47), align 8, !dbg !4236
  br label %762, !dbg !4237

322:                                              ; preds = %49
  %323 = load ptr, ptr %4, align 8, !dbg !4238
  %324 = call i32 @atoi(ptr noundef %323) #11, !dbg !4239
  %325 = trunc i32 %324 to i16, !dbg !4239
  store i16 %325, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 48), align 2, !dbg !4240
  br label %762, !dbg !4241

326:                                              ; preds = %49
  %327 = load ptr, ptr %4, align 8, !dbg !4242
  %328 = call i32 @get_bool_value(ptr noundef %327), !dbg !4243
  store i32 %328, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 69), align 4, !dbg !4244
  br label %762, !dbg !4245

329:                                              ; preds = %49
  %330 = load ptr, ptr %4, align 8, !dbg !4246
  %331 = call i32 @get_bool_value(ptr noundef %330), !dbg !4247
  store i32 %331, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 50), align 8, !dbg !4248
  br label %762, !dbg !4249

332:                                              ; preds = %49
  %333 = load ptr, ptr %4, align 8, !dbg !4250
  %334 = call i32 @get_bool_value(ptr noundef %333), !dbg !4251
  store i32 %334, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 51), align 4, !dbg !4252
  br label %762, !dbg !4253

335:                                              ; preds = %49
  %336 = load ptr, ptr %4, align 8, !dbg !4254
  %337 = call i32 @get_int_value(ptr noundef %336, i32 noundef 600), !dbg !4255
  store i32 %337, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 73), align 4, !dbg !4256
  br label %762, !dbg !4257

338:                                              ; preds = %49
  %339 = load ptr, ptr %4, align 8, !dbg !4258
  %340 = call i32 @get_int_value(ptr noundef %339, i32 noundef 3600), !dbg !4259
  store i32 %340, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 74), align 8, !dbg !4260
  br label %762, !dbg !4261

341:                                              ; preds = %49
  %342 = load ptr, ptr %4, align 8, !dbg !4262
  %343 = call i32 @get_int_value(ptr noundef %342, i32 noundef 600), !dbg !4263
  store i32 %343, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 75), align 4, !dbg !4264
  br label %762, !dbg !4265

344:                                              ; preds = %49
  %345 = load ptr, ptr %4, align 8, !dbg !4266
  %346 = call i32 @get_int_value(ptr noundef %345, i32 noundef 300), !dbg !4267
  store i32 %346, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 76), align 8, !dbg !4268
  br label %762, !dbg !4269

347:                                              ; preds = %49
  %348 = load ptr, ptr %4, align 8, !dbg !4270
  %349 = call i32 @atoi(ptr noundef %348) #11, !dbg !4271
  store i32 %349, ptr @TURN_MAX_ALLOCATE_TIMEOUT, align 4, !dbg !4272
  %350 = load ptr, ptr %4, align 8, !dbg !4273
  %351 = call i32 @atoi(ptr noundef %350) #11, !dbg !4274
  store i32 %351, ptr @TURN_MAX_ALLOCATE_TIMEOUT_STUN_ONLY, align 4, !dbg !4275
  br label %762, !dbg !4276

352:                                              ; preds = %49
  %353 = load ptr, ptr %4, align 8, !dbg !4277
  %354 = call i32 @get_bool_value(ptr noundef %353), !dbg !4278
  store i32 %354, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 67), align 4, !dbg !4279
  br label %762, !dbg !4280

355:                                              ; preds = %49
  %356 = load ptr, ptr %4, align 8, !dbg !4281
  %357 = call i32 @get_bool_value(ptr noundef %356), !dbg !4282
  store i32 %357, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 68), align 8, !dbg !4283
  br label %762, !dbg !4284

358:                                              ; preds = %49
  %359 = load ptr, ptr %4, align 8, !dbg !4285
  call void @add_listener_addr(ptr noundef %359), !dbg !4286
  br label %762, !dbg !4287

360:                                              ; preds = %49
  %361 = load ptr, ptr %4, align 8, !dbg !4288
  %362 = call i32 @add_relay_addr(ptr noundef %361), !dbg !4289
  br label %762, !dbg !4290

363:                                              ; preds = %49
  %364 = load ptr, ptr %4, align 8, !dbg !4291
  %365 = icmp ne ptr %364, null, !dbg !4291
  br i1 %365, label %366, label %418, !dbg !4293

366:                                              ; preds = %363
  call void @llvm.dbg.declare(metadata ptr %15, metadata !4294, metadata !DIExpression()), !dbg !4296
  %367 = load ptr, ptr %4, align 8, !dbg !4297
  %368 = call ptr @strchr(ptr noundef %367, i32 noundef 47) #11, !dbg !4298
  store ptr %368, ptr %15, align 8, !dbg !4296
  %369 = load ptr, ptr %15, align 8, !dbg !4299
  %370 = icmp ne ptr %369, null, !dbg !4299
  br i1 %370, label %371, label %401, !dbg !4301

371:                                              ; preds = %366
  call void @llvm.dbg.declare(metadata ptr %16, metadata !4302, metadata !DIExpression()), !dbg !4304
  %372 = load ptr, ptr %4, align 8, !dbg !4305
  %373 = call noalias ptr @strdup(ptr noundef %372) #10, !dbg !4306
  store ptr %373, ptr %16, align 8, !dbg !4304
  %374 = load ptr, ptr %16, align 8, !dbg !4307
  %375 = call ptr @strchr(ptr noundef %374, i32 noundef 47) #11, !dbg !4308
  store ptr %375, ptr %15, align 8, !dbg !4309
  %376 = load ptr, ptr %15, align 8, !dbg !4310
  %377 = getelementptr inbounds i8, ptr %376, i64 0, !dbg !4310
  store i8 0, ptr %377, align 1, !dbg !4311
  %378 = load ptr, ptr %15, align 8, !dbg !4312
  %379 = getelementptr inbounds i8, ptr %378, i32 1, !dbg !4312
  store ptr %379, ptr %15, align 8, !dbg !4312
  call void @llvm.dbg.declare(metadata ptr %17, metadata !4313, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.declare(metadata ptr %18, metadata !4315, metadata !DIExpression()), !dbg !4316
  %380 = load ptr, ptr %16, align 8, !dbg !4317
  %381 = call i32 @make_ioa_addr(ptr noundef %380, i32 noundef 0, ptr noundef %17), !dbg !4319
  %382 = icmp slt i32 %381, 0, !dbg !4320
  br i1 %382, label %383, label %385, !dbg !4321

383:                                              ; preds = %371
  %384 = load ptr, ptr %16, align 8, !dbg !4322
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.43, ptr noundef %384), !dbg !4324
  br label %399, !dbg !4325

385:                                              ; preds = %371
  %386 = load ptr, ptr %15, align 8, !dbg !4326
  %387 = call i32 @make_ioa_addr(ptr noundef %386, i32 noundef 0, ptr noundef %18), !dbg !4329
  %388 = icmp slt i32 %387, 0, !dbg !4330
  br i1 %388, label %389, label %391, !dbg !4331

389:                                              ; preds = %385
  %390 = load ptr, ptr %15, align 8, !dbg !4332
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.43, ptr noundef %390), !dbg !4334
  br label %398, !dbg !4335

391:                                              ; preds = %385
  call void @ioa_addr_add_mapping(ptr noundef %17, ptr noundef %18), !dbg !4336
  %392 = load ptr, ptr %15, align 8, !dbg !4338
  %393 = call i32 @add_ip_list_range(ptr noundef %392, ptr noundef null, ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 43)), !dbg !4340
  %394 = icmp eq i32 %393, 0, !dbg !4341
  br i1 %394, label %395, label %397, !dbg !4342

395:                                              ; preds = %391
  %396 = load ptr, ptr %15, align 8, !dbg !4343
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.223, ptr noundef %396), !dbg !4344
  br label %397, !dbg !4344

397:                                              ; preds = %395, %391
  br label %398

398:                                              ; preds = %397, %389
  br label %399

399:                                              ; preds = %398, %383
  %400 = load ptr, ptr %16, align 8, !dbg !4345
  call void @free(ptr noundef %400) #10, !dbg !4346
  br label %417, !dbg !4347

401:                                              ; preds = %366
  %402 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 56), align 8, !dbg !4348
  %403 = icmp ne ptr %402, null, !dbg !4351
  br i1 %403, label %404, label %405, !dbg !4352

404:                                              ; preds = %401
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.224), !dbg !4353
  br label %416, !dbg !4355

405:                                              ; preds = %401
  %406 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 42, i32 3), align 8, !dbg !4356
  %407 = call ptr @allocate_super_memory_engine_func(ptr noundef %406, i64 noundef 28, ptr noundef @.str.225, ptr noundef @__FUNCTION__.set_option, i32 noundef 1412), !dbg !4356
  store ptr %407, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 56), align 8, !dbg !4358
  %408 = load ptr, ptr %4, align 8, !dbg !4359
  %409 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 56), align 8, !dbg !4361
  %410 = call i32 @make_ioa_addr(ptr noundef %408, i32 noundef 0, ptr noundef %409), !dbg !4362
  %411 = icmp slt i32 %410, 0, !dbg !4363
  br i1 %411, label %412, label %415, !dbg !4364

412:                                              ; preds = %405
  %413 = load ptr, ptr %4, align 8, !dbg !4365
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.43, ptr noundef %413), !dbg !4367
  %414 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 56), align 8, !dbg !4368
  call void @free(ptr noundef %414) #10, !dbg !4369
  store ptr null, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 56), align 8, !dbg !4370
  br label %415, !dbg !4371

415:                                              ; preds = %412, %405
  br label %416

416:                                              ; preds = %415, %404
  br label %417

417:                                              ; preds = %416, %399
  br label %418, !dbg !4372

418:                                              ; preds = %417, %363
  br label %762, !dbg !4373

419:                                              ; preds = %49
  %420 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 21), align 8, !dbg !4374
  %421 = icmp ne i32 %420, 2, !dbg !4376
  br i1 %421, label %422, label %429, !dbg !4377

422:                                              ; preds = %419
  %423 = load ptr, ptr %4, align 8, !dbg !4378
  %424 = call i32 @get_bool_value(ptr noundef %423), !dbg !4381
  %425 = icmp ne i32 %424, 0, !dbg !4381
  br i1 %425, label %426, label %427, !dbg !4382

426:                                              ; preds = %422
  store i32 1, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 21), align 8, !dbg !4383
  br label %428, !dbg !4385

427:                                              ; preds = %422
  store i32 0, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 21), align 8, !dbg !4386
  br label %428

428:                                              ; preds = %427, %426
  br label %429, !dbg !4388

429:                                              ; preds = %428, %419
  br label %762, !dbg !4389

430:                                              ; preds = %49
  %431 = load ptr, ptr %4, align 8, !dbg !4390
  %432 = call i32 @get_bool_value(ptr noundef %431), !dbg !4392
  %433 = icmp ne i32 %432, 0, !dbg !4392
  br i1 %433, label %434, label %435, !dbg !4393

434:                                              ; preds = %430
  store i32 2, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 21), align 8, !dbg !4394
  br label %435, !dbg !4396

435:                                              ; preds = %434, %430
  br label %762, !dbg !4397

436:                                              ; preds = %49
  %437 = load ptr, ptr %4, align 8, !dbg !4398
  %438 = call i32 @get_bool_value(ptr noundef %437), !dbg !4399
  store i32 %438, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 22), align 4, !dbg !4400
  br label %762, !dbg !4401

439:                                              ; preds = %49
  %440 = load ptr, ptr %4, align 8, !dbg !4402
  %441 = call i32 @get_bool_value(ptr noundef %440), !dbg !4404
  %442 = icmp ne i32 %441, 0, !dbg !4404
  br i1 %442, label %443, label %444, !dbg !4405

443:                                              ; preds = %439
  store i32 1, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 78), align 8, !dbg !4406
  store i32 1, ptr @use_lt_credentials, align 4, !dbg !4408
  store i32 1, ptr @use_ltc, align 4, !dbg !4409
  br label %445, !dbg !4410

444:                                              ; preds = %439
  store i32 3, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 78), align 8, !dbg !4411
  store i32 0, ptr @use_lt_credentials, align 4, !dbg !4413
  br label %445

445:                                              ; preds = %444, %443
  br label %762, !dbg !4414

446:                                              ; preds = %49
  %447 = load ptr, ptr %4, align 8, !dbg !4415
  %448 = call i32 @get_bool_value(ptr noundef %447), !dbg !4417
  %449 = icmp ne i32 %448, 0, !dbg !4417
  br i1 %449, label %451, label %450, !dbg !4418

450:                                              ; preds = %446
  store i32 3, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 78), align 8, !dbg !4419
  store i32 0, ptr @anon_credentials, align 4, !dbg !4421
  br label %452, !dbg !4422

451:                                              ; preds = %446
  store i32 0, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 78), align 8, !dbg !4423
  store i32 1, ptr @anon_credentials, align 4, !dbg !4425
  br label %452

452:                                              ; preds = %451, %450
  br label %762, !dbg !4426

453:                                              ; preds = %49
  %454 = load ptr, ptr %4, align 8, !dbg !4427
  %455 = call i32 @get_bool_value(ptr noundef %454), !dbg !4428
  store i32 %455, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 23), align 8, !dbg !4429
  br label %762, !dbg !4430

456:                                              ; preds = %49
  %457 = load ptr, ptr %4, align 8, !dbg !4431
  %458 = call i32 @get_bool_value(ptr noundef %457), !dbg !4432
  store i32 %458, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 71), align 4, !dbg !4433
  br label %762, !dbg !4434

459:                                              ; preds = %49
  %460 = load ptr, ptr %4, align 8, !dbg !4435
  %461 = call i32 @add_static_user_account(ptr noundef %460), !dbg !4436
  br label %762, !dbg !4437

462:                                              ; preds = %49
  br label %463, !dbg !4438

463:                                              ; preds = %462
  %464 = load ptr, ptr %4, align 8, !dbg !4439
  %465 = icmp ne ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 86, i32 1), %464, !dbg !4439
  br i1 %465, label %466, label %473, !dbg !4442

466:                                              ; preds = %463
  call void @llvm.dbg.declare(metadata ptr %19, metadata !4443, metadata !DIExpression()), !dbg !4447
  store i64 1025, ptr %19, align 8, !dbg !4447
  %467 = load ptr, ptr %4, align 8, !dbg !4447
  %468 = load i64, ptr %19, align 8, !dbg !4447
  %469 = call ptr @strncpy(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 86, i32 1), ptr noundef %467, i64 noundef %468) #10, !dbg !4447
  %470 = load i64, ptr %19, align 8, !dbg !4447
  %471 = sub i64 %470, 1, !dbg !4447
  %472 = getelementptr inbounds i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 86, i32 1), i64 %471, !dbg !4447
  store i8 0, ptr %472, align 1, !dbg !4447
  br label %473, !dbg !4448

473:                                              ; preds = %466, %463
  br label %474, !dbg !4442

474:                                              ; preds = %473
  store i32 0, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 86), align 8, !dbg !4449
  br label %762, !dbg !4450

475:                                              ; preds = %49
  br label %476, !dbg !4451

476:                                              ; preds = %475
  %477 = load ptr, ptr %4, align 8, !dbg !4452
  %478 = icmp ne ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 86, i32 1), %477, !dbg !4452
  br i1 %478, label %479, label %486, !dbg !4455

479:                                              ; preds = %476
  call void @llvm.dbg.declare(metadata ptr %20, metadata !4456, metadata !DIExpression()), !dbg !4460
  store i64 1025, ptr %20, align 8, !dbg !4460
  %480 = load ptr, ptr %4, align 8, !dbg !4460
  %481 = load i64, ptr %20, align 8, !dbg !4460
  %482 = call ptr @strncpy(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 86, i32 1), ptr noundef %480, i64 noundef %481) #10, !dbg !4460
  %483 = load i64, ptr %20, align 8, !dbg !4460
  %484 = sub i64 %483, 1, !dbg !4460
  %485 = getelementptr inbounds i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 86, i32 1), i64 %484, !dbg !4460
  store i8 0, ptr %485, align 1, !dbg !4460
  br label %486, !dbg !4461

486:                                              ; preds = %479, %476
  br label %487, !dbg !4455

487:                                              ; preds = %486
  store i32 1, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 86), align 8, !dbg !4462
  br label %762, !dbg !4463

488:                                              ; preds = %49
  br label %489, !dbg !4464

489:                                              ; preds = %488
  %490 = load ptr, ptr %4, align 8, !dbg !4465
  %491 = icmp ne ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 86, i32 1), %490, !dbg !4465
  br i1 %491, label %492, label %499, !dbg !4468

492:                                              ; preds = %489
  call void @llvm.dbg.declare(metadata ptr %21, metadata !4469, metadata !DIExpression()), !dbg !4473
  store i64 1025, ptr %21, align 8, !dbg !4473
  %493 = load ptr, ptr %4, align 8, !dbg !4473
  %494 = load i64, ptr %21, align 8, !dbg !4473
  %495 = call ptr @strncpy(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 86, i32 1), ptr noundef %493, i64 noundef %494) #10, !dbg !4473
  %496 = load i64, ptr %21, align 8, !dbg !4473
  %497 = sub i64 %496, 1, !dbg !4473
  %498 = getelementptr inbounds i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 86, i32 1), i64 %497, !dbg !4473
  store i8 0, ptr %498, align 1, !dbg !4473
  br label %499, !dbg !4474

499:                                              ; preds = %492, %489
  br label %500, !dbg !4468

500:                                              ; preds = %499
  store i32 2, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 86), align 8, !dbg !4475
  br label %762, !dbg !4476

501:                                              ; preds = %49
  br label %502, !dbg !4477

502:                                              ; preds = %501
  %503 = load ptr, ptr %4, align 8, !dbg !4478
  %504 = icmp ne ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 86, i32 1), %503, !dbg !4478
  br i1 %504, label %505, label %512, !dbg !4481

505:                                              ; preds = %502
  call void @llvm.dbg.declare(metadata ptr %22, metadata !4482, metadata !DIExpression()), !dbg !4486
  store i64 1025, ptr %22, align 8, !dbg !4486
  %506 = load ptr, ptr %4, align 8, !dbg !4486
  %507 = load i64, ptr %22, align 8, !dbg !4486
  %508 = call ptr @strncpy(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 86, i32 1), ptr noundef %506, i64 noundef %507) #10, !dbg !4486
  %509 = load i64, ptr %22, align 8, !dbg !4486
  %510 = sub i64 %509, 1, !dbg !4486
  %511 = getelementptr inbounds i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 86, i32 1), i64 %510, !dbg !4486
  store i8 0, ptr %511, align 1, !dbg !4486
  br label %512, !dbg !4487

512:                                              ; preds = %505, %502
  br label %513, !dbg !4481

513:                                              ; preds = %512
  store i32 3, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 86), align 8, !dbg !4488
  br label %762, !dbg !4489

514:                                              ; preds = %49
  br label %515, !dbg !4490

515:                                              ; preds = %514
  %516 = load ptr, ptr %4, align 8, !dbg !4491
  %517 = icmp ne ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 86, i32 1), %516, !dbg !4491
  br i1 %517, label %518, label %525, !dbg !4494

518:                                              ; preds = %515
  call void @llvm.dbg.declare(metadata ptr %23, metadata !4495, metadata !DIExpression()), !dbg !4499
  store i64 1025, ptr %23, align 8, !dbg !4499
  %519 = load ptr, ptr %4, align 8, !dbg !4499
  %520 = load i64, ptr %23, align 8, !dbg !4499
  %521 = call ptr @strncpy(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 86, i32 1), ptr noundef %519, i64 noundef %520) #10, !dbg !4499
  %522 = load i64, ptr %23, align 8, !dbg !4499
  %523 = sub i64 %522, 1, !dbg !4499
  %524 = getelementptr inbounds i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 86, i32 1), i64 %523, !dbg !4499
  store i8 0, ptr %524, align 1, !dbg !4499
  br label %525, !dbg !4500

525:                                              ; preds = %518, %515
  br label %526, !dbg !4494

526:                                              ; preds = %525
  store i32 4, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 86), align 8, !dbg !4501
  br label %762, !dbg !4502

527:                                              ; preds = %49
  br label %528, !dbg !4503

528:                                              ; preds = %527
  %529 = load ptr, ptr %4, align 8, !dbg !4504
  %530 = icmp ne ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 40), %529, !dbg !4504
  br i1 %530, label %531, label %538, !dbg !4507

531:                                              ; preds = %528
  call void @llvm.dbg.declare(metadata ptr %24, metadata !4508, metadata !DIExpression()), !dbg !4512
  store i64 1025, ptr %24, align 8, !dbg !4512
  %532 = load ptr, ptr %4, align 8, !dbg !4512
  %533 = load i64, ptr %24, align 8, !dbg !4512
  %534 = call ptr @strncpy(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 40), ptr noundef %532, i64 noundef %533) #10, !dbg !4512
  %535 = load i64, ptr %24, align 8, !dbg !4512
  %536 = sub i64 %535, 1, !dbg !4512
  %537 = getelementptr inbounds i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 40), i64 %536, !dbg !4512
  store i8 0, ptr %537, align 1, !dbg !4512
  br label %538, !dbg !4513

538:                                              ; preds = %531, %528
  br label %539, !dbg !4507

539:                                              ; preds = %538
  store i32 1, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 41), align 8, !dbg !4514
  br label %762, !dbg !4515

540:                                              ; preds = %49
  store i32 1, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 85), align 8, !dbg !4516
  br label %762, !dbg !4517

541:                                              ; preds = %49
  store i32 1, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 79), align 4, !dbg !4518
  store i32 1, ptr @use_tltc, align 4, !dbg !4519
  store i32 1, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 78), align 8, !dbg !4520
  store i32 1, ptr @use_lt_credentials, align 4, !dbg !4521
  br label %762, !dbg !4522

542:                                              ; preds = %49
  store i32 1, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 91), align 8, !dbg !4523
  br label %762, !dbg !4524

543:                                              ; preds = %49
  store i32 1, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 92), align 4, !dbg !4525
  br label %762, !dbg !4526

544:                                              ; preds = %49
  store i32 1, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 93), align 8, !dbg !4527
  br label %762, !dbg !4528

545:                                              ; preds = %49
  %546 = load ptr, ptr %4, align 8, !dbg !4529
  call void @add_to_secrets_list(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 86, i32 2, i32 2), ptr noundef %546), !dbg !4530
  store i32 1, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 79), align 4, !dbg !4531
  store i32 1, ptr @use_tltc, align 4, !dbg !4532
  store i32 1, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 78), align 8, !dbg !4533
  store i32 1, ptr @use_lt_credentials, align 4, !dbg !4534
  br label %762, !dbg !4535

547:                                              ; preds = %49
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 2, ptr noundef @.str.226), !dbg !4536
  br label %762, !dbg !4537

548:                                              ; preds = %49
  %549 = load ptr, ptr %4, align 8, !dbg !4538
  call void @set_default_realm_name(ptr noundef %549), !dbg !4539
  br label %762, !dbg !4540

550:                                              ; preds = %49
  %551 = load ptr, ptr %4, align 8, !dbg !4541
  %552 = call i32 @atoi(ptr noundef %551) #11, !dbg !4542
  store i32 %552, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 84), align 4, !dbg !4543
  %553 = load ptr, ptr %4, align 8, !dbg !4544
  %554 = call i32 @atoi(ptr noundef %553) #11, !dbg !4545
  %555 = call ptr @get_realm(ptr noundef null), !dbg !4546
  %556 = getelementptr inbounds %struct._realm_params_t, ptr %555, i32 0, i32 1, !dbg !4547
  %557 = getelementptr inbounds %struct._realm_options_t, ptr %556, i32 0, i32 1, !dbg !4548
  %558 = getelementptr inbounds %struct._perf_options_t, ptr %557, i32 0, i32 2, !dbg !4549
  store i32 %554, ptr %558, align 4, !dbg !4550
  br label %762, !dbg !4551

559:                                              ; preds = %49
  %560 = load ptr, ptr %4, align 8, !dbg !4552
  %561 = call i32 @atoi(ptr noundef %560) #11, !dbg !4553
  store i32 %561, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 83), align 8, !dbg !4554
  %562 = load ptr, ptr %4, align 8, !dbg !4555
  %563 = call i32 @atoi(ptr noundef %562) #11, !dbg !4556
  %564 = call ptr @get_realm(ptr noundef null), !dbg !4557
  %565 = getelementptr inbounds %struct._realm_params_t, ptr %564, i32 0, i32 1, !dbg !4558
  %566 = getelementptr inbounds %struct._realm_options_t, ptr %565, i32 0, i32 1, !dbg !4559
  %567 = getelementptr inbounds %struct._perf_options_t, ptr %566, i32 0, i32 1, !dbg !4560
  store i32 %563, ptr %567, align 8, !dbg !4561
  br label %762, !dbg !4562

568:                                              ; preds = %49
  %569 = load ptr, ptr %4, align 8, !dbg !4563
  %570 = call i64 @strtoul(ptr noundef %569, ptr noundef null, i32 noundef 10) #10, !dbg !4564
  store i64 %570, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 80), align 8, !dbg !4565
  %571 = load ptr, ptr %4, align 8, !dbg !4566
  %572 = call i64 @strtoul(ptr noundef %571, ptr noundef null, i32 noundef 10) #10, !dbg !4567
  %573 = call ptr @get_realm(ptr noundef null), !dbg !4568
  %574 = getelementptr inbounds %struct._realm_params_t, ptr %573, i32 0, i32 1, !dbg !4569
  %575 = getelementptr inbounds %struct._realm_options_t, ptr %574, i32 0, i32 1, !dbg !4570
  %576 = getelementptr inbounds %struct._perf_options_t, ptr %575, i32 0, i32 0, !dbg !4571
  store volatile i64 %572, ptr %576, align 8, !dbg !4572
  %577 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 80), align 8, !dbg !4573
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.227, i64 noundef %577), !dbg !4574
  br label %762, !dbg !4575

578:                                              ; preds = %49
  %579 = load ptr, ptr %4, align 8, !dbg !4576
  %580 = call i64 @strtoul(ptr noundef %579, ptr noundef null, i32 noundef 10) #10, !dbg !4577
  store i64 %580, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 81), align 8, !dbg !4578
  %581 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 81), align 8, !dbg !4579
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.228, i64 noundef %581), !dbg !4580
  br label %762, !dbg !4581

582:                                              ; preds = %49
  %583 = load ptr, ptr %4, align 8, !dbg !4582
  %584 = call i32 @get_bool_value(ptr noundef %583), !dbg !4583
  store i32 %584, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 49), align 4, !dbg !4584
  br label %762, !dbg !4585

585:                                              ; preds = %49
  %586 = load ptr, ptr %4, align 8, !dbg !4586
  %587 = call i32 @get_bool_value(ptr noundef %586), !dbg !4587
  store i32 %587, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 34), align 8, !dbg !4588
  br label %762, !dbg !4589

588:                                              ; preds = %49
  %589 = load ptr, ptr %4, align 8, !dbg !4590
  %590 = call i32 @get_bool_value(ptr noundef %589), !dbg !4591
  store i32 %590, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 35), align 4, !dbg !4592
  br label %762, !dbg !4593

591:                                              ; preds = %49
  %592 = load ptr, ptr %4, align 8, !dbg !4594
  %593 = call i32 @get_bool_value(ptr noundef %592), !dbg !4595
  store i32 %593, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 38), align 8, !dbg !4596
  br label %762, !dbg !4597

594:                                              ; preds = %49
  %595 = load ptr, ptr %4, align 8, !dbg !4598
  %596 = call i32 @get_bool_value(ptr noundef %595), !dbg !4599
  store i32 %596, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 37), align 4, !dbg !4600
  br label %762, !dbg !4601

597:                                              ; preds = %49
  %598 = load ptr, ptr %4, align 8, !dbg !4602
  %599 = call i32 @get_bool_value(ptr noundef %598), !dbg !4603
  store i32 %599, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 17), align 8, !dbg !4604
  br label %762, !dbg !4605

600:                                              ; preds = %49
  %601 = load ptr, ptr %4, align 8, !dbg !4606
  %602 = call i32 @get_bool_value(ptr noundef %601), !dbg !4607
  store i32 %602, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 18), align 4, !dbg !4608
  br label %762, !dbg !4609

603:                                              ; preds = %49
  br label %604, !dbg !4610

604:                                              ; preds = %603
  %605 = load ptr, ptr %4, align 8, !dbg !4611
  %606 = icmp ne ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 10), %605, !dbg !4611
  br i1 %606, label %607, label %614, !dbg !4614

607:                                              ; preds = %604
  call void @llvm.dbg.declare(metadata ptr %25, metadata !4615, metadata !DIExpression()), !dbg !4619
  store i64 1025, ptr %25, align 8, !dbg !4619
  %608 = load ptr, ptr %4, align 8, !dbg !4619
  %609 = load i64, ptr %25, align 8, !dbg !4619
  %610 = call ptr @strncpy(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 10), ptr noundef %608, i64 noundef %609) #10, !dbg !4619
  %611 = load i64, ptr %25, align 8, !dbg !4619
  %612 = sub i64 %611, 1, !dbg !4619
  %613 = getelementptr inbounds i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 10), i64 %612, !dbg !4619
  store i8 0, ptr %613, align 1, !dbg !4619
  br label %614, !dbg !4620

614:                                              ; preds = %607, %604
  br label %615, !dbg !4614

615:                                              ; preds = %614
  br label %762, !dbg !4621

616:                                              ; preds = %49
  br label %617, !dbg !4622

617:                                              ; preds = %616
  %618 = load ptr, ptr %4, align 8, !dbg !4623
  %619 = icmp ne ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 9), %618, !dbg !4623
  br i1 %619, label %620, label %627, !dbg !4626

620:                                              ; preds = %617
  call void @llvm.dbg.declare(metadata ptr %26, metadata !4627, metadata !DIExpression()), !dbg !4631
  store i64 1025, ptr %26, align 8, !dbg !4631
  %621 = load ptr, ptr %4, align 8, !dbg !4631
  %622 = load i64, ptr %26, align 8, !dbg !4631
  %623 = call ptr @strncpy(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 9), ptr noundef %621, i64 noundef %622) #10, !dbg !4631
  %624 = load i64, ptr %26, align 8, !dbg !4631
  %625 = sub i64 %624, 1, !dbg !4631
  %626 = getelementptr inbounds i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 9), i64 %625, !dbg !4631
  store i8 0, ptr %626, align 1, !dbg !4631
  br label %627, !dbg !4632

627:                                              ; preds = %620, %617
  br label %628, !dbg !4626

628:                                              ; preds = %627
  br label %762, !dbg !4633

629:                                              ; preds = %49
  br label %630, !dbg !4634

630:                                              ; preds = %629
  %631 = load ptr, ptr %4, align 8, !dbg !4635
  %632 = icmp ne ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 13), %631, !dbg !4635
  br i1 %632, label %633, label %640, !dbg !4638

633:                                              ; preds = %630
  call void @llvm.dbg.declare(metadata ptr %27, metadata !4639, metadata !DIExpression()), !dbg !4643
  store i64 1025, ptr %27, align 8, !dbg !4643
  %634 = load ptr, ptr %4, align 8, !dbg !4643
  %635 = load i64, ptr %27, align 8, !dbg !4643
  %636 = call ptr @strncpy(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 13), ptr noundef %634, i64 noundef %635) #10, !dbg !4643
  %637 = load i64, ptr %27, align 8, !dbg !4643
  %638 = sub i64 %637, 1, !dbg !4643
  %639 = getelementptr inbounds i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 13), i64 %638, !dbg !4643
  store i8 0, ptr %639, align 1, !dbg !4643
  br label %640, !dbg !4644

640:                                              ; preds = %633, %630
  br label %641, !dbg !4638

641:                                              ; preds = %640
  br label %762, !dbg !4645

642:                                              ; preds = %49
  br label %643, !dbg !4646

643:                                              ; preds = %642
  %644 = load ptr, ptr %4, align 8, !dbg !4647
  %645 = icmp ne ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 88), %644, !dbg !4647
  br i1 %645, label %646, label %653, !dbg !4650

646:                                              ; preds = %643
  call void @llvm.dbg.declare(metadata ptr %28, metadata !4651, metadata !DIExpression()), !dbg !4655
  store i64 1025, ptr %28, align 8, !dbg !4655
  %647 = load ptr, ptr %4, align 8, !dbg !4655
  %648 = load i64, ptr %28, align 8, !dbg !4655
  %649 = call ptr @strncpy(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 88), ptr noundef %647, i64 noundef %648) #10, !dbg !4655
  %650 = load i64, ptr %28, align 8, !dbg !4655
  %651 = sub i64 %650, 1, !dbg !4655
  %652 = getelementptr inbounds i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 88), i64 %651, !dbg !4655
  store i8 0, ptr %652, align 1, !dbg !4655
  br label %653, !dbg !4656

653:                                              ; preds = %646, %643
  br label %654, !dbg !4650

654:                                              ; preds = %653
  br label %762, !dbg !4657

655:                                              ; preds = %49
  br label %656, !dbg !4658

656:                                              ; preds = %655
  %657 = load ptr, ptr %4, align 8, !dbg !4659
  %658 = icmp ne ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 11), %657, !dbg !4659
  br i1 %658, label %659, label %666, !dbg !4662

659:                                              ; preds = %656
  call void @llvm.dbg.declare(metadata ptr %29, metadata !4663, metadata !DIExpression()), !dbg !4667
  store i64 1025, ptr %29, align 8, !dbg !4667
  %660 = load ptr, ptr %4, align 8, !dbg !4667
  %661 = load i64, ptr %29, align 8, !dbg !4667
  %662 = call ptr @strncpy(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 11), ptr noundef %660, i64 noundef %661) #10, !dbg !4667
  %663 = load i64, ptr %29, align 8, !dbg !4667
  %664 = sub i64 %663, 1, !dbg !4667
  %665 = getelementptr inbounds i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 11), i64 %664, !dbg !4667
  store i8 0, ptr %665, align 1, !dbg !4667
  br label %666, !dbg !4668

666:                                              ; preds = %659, %656
  br label %667, !dbg !4662

667:                                              ; preds = %666
  br label %762, !dbg !4669

668:                                              ; preds = %49
  br label %669, !dbg !4670

669:                                              ; preds = %668
  %670 = load ptr, ptr %4, align 8, !dbg !4671
  %671 = icmp ne ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 12), %670, !dbg !4671
  br i1 %671, label %672, label %679, !dbg !4674

672:                                              ; preds = %669
  call void @llvm.dbg.declare(metadata ptr %30, metadata !4675, metadata !DIExpression()), !dbg !4679
  store i64 513, ptr %30, align 8, !dbg !4679
  %673 = load ptr, ptr %4, align 8, !dbg !4679
  %674 = load i64, ptr %30, align 8, !dbg !4679
  %675 = call ptr @strncpy(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 12), ptr noundef %673, i64 noundef %674) #10, !dbg !4679
  %676 = load i64, ptr %30, align 8, !dbg !4679
  %677 = sub i64 %676, 1, !dbg !4679
  %678 = getelementptr inbounds i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 12), i64 %677, !dbg !4679
  store i8 0, ptr %678, align 1, !dbg !4679
  br label %679, !dbg !4680

679:                                              ; preds = %672, %669
  br label %680, !dbg !4674

680:                                              ; preds = %679
  br label %762, !dbg !4681

681:                                              ; preds = %49
  %682 = load ptr, ptr %4, align 8, !dbg !4682
  call void @add_alternate_server(ptr noundef %682), !dbg !4683
  br label %762, !dbg !4684

683:                                              ; preds = %49
  %684 = load ptr, ptr %4, align 8, !dbg !4685
  call void @add_aux_server(ptr noundef %684), !dbg !4686
  br label %762, !dbg !4687

685:                                              ; preds = %49
  %686 = load ptr, ptr %4, align 8, !dbg !4688
  %687 = call i32 @get_bool_value(ptr noundef %686), !dbg !4689
  store i32 %687, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 63), align 8, !dbg !4690
  br label %762, !dbg !4691

688:                                              ; preds = %49
  %689 = load ptr, ptr %4, align 8, !dbg !4692
  call void @add_tls_alternate_server(ptr noundef %689), !dbg !4693
  br label %762, !dbg !4694

690:                                              ; preds = %49
  %691 = load ptr, ptr %4, align 8, !dbg !4695
  %692 = call i32 @add_ip_list_range(ptr noundef %691, ptr noundef null, ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 43)), !dbg !4697
  %693 = icmp eq i32 %692, 0, !dbg !4698
  br i1 %693, label %694, label %696, !dbg !4699

694:                                              ; preds = %690
  %695 = load ptr, ptr %4, align 8, !dbg !4700
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.229, ptr noundef %695), !dbg !4701
  br label %696, !dbg !4701

696:                                              ; preds = %694, %690
  br label %762, !dbg !4702

697:                                              ; preds = %49
  %698 = load ptr, ptr %4, align 8, !dbg !4703
  %699 = call i32 @add_ip_list_range(ptr noundef %698, ptr noundef null, ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 44)), !dbg !4705
  %700 = icmp eq i32 %699, 0, !dbg !4706
  br i1 %700, label %701, label %703, !dbg !4707

701:                                              ; preds = %697
  %702 = load ptr, ptr %4, align 8, !dbg !4708
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.230, ptr noundef %702), !dbg !4709
  br label %703, !dbg !4709

703:                                              ; preds = %701, %697
  br label %762, !dbg !4710

704:                                              ; preds = %49
  br label %705, !dbg !4711

705:                                              ; preds = %704
  %706 = load ptr, ptr %4, align 8, !dbg !4712
  %707 = icmp ne ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 7), %706, !dbg !4712
  br i1 %707, label %708, label %715, !dbg !4715

708:                                              ; preds = %705
  call void @llvm.dbg.declare(metadata ptr %31, metadata !4716, metadata !DIExpression()), !dbg !4720
  store i64 1025, ptr %31, align 8, !dbg !4720
  %709 = load ptr, ptr %4, align 8, !dbg !4720
  %710 = load i64, ptr %31, align 8, !dbg !4720
  %711 = call ptr @strncpy(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 7), ptr noundef %709, i64 noundef %710) #10, !dbg !4720
  %712 = load i64, ptr %31, align 8, !dbg !4720
  %713 = sub i64 %712, 1, !dbg !4720
  %714 = getelementptr inbounds i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 7), i64 %713, !dbg !4720
  store i8 0, ptr %714, align 1, !dbg !4720
  br label %715, !dbg !4721

715:                                              ; preds = %708, %705
  br label %716, !dbg !4715

716:                                              ; preds = %715
  br label %762, !dbg !4722

717:                                              ; preds = %49
  br label %718, !dbg !4723

718:                                              ; preds = %717
  %719 = load ptr, ptr %4, align 8, !dbg !4724
  %720 = icmp ne ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 26), %719, !dbg !4724
  br i1 %720, label %721, label %728, !dbg !4727

721:                                              ; preds = %718
  call void @llvm.dbg.declare(metadata ptr %32, metadata !4728, metadata !DIExpression()), !dbg !4732
  store i64 1025, ptr %32, align 8, !dbg !4732
  %722 = load ptr, ptr %4, align 8, !dbg !4732
  %723 = load i64, ptr %32, align 8, !dbg !4732
  %724 = call ptr @strncpy(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 26), ptr noundef %722, i64 noundef %723) #10, !dbg !4732
  %725 = load i64, ptr %32, align 8, !dbg !4732
  %726 = sub i64 %725, 1, !dbg !4732
  %727 = getelementptr inbounds i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 26), i64 %726, !dbg !4732
  store i8 0, ptr %727, align 1, !dbg !4732
  br label %728, !dbg !4733

728:                                              ; preds = %721, %718
  br label %729, !dbg !4727

729:                                              ; preds = %728
  br label %762, !dbg !4734

730:                                              ; preds = %49
  br label %731, !dbg !4735

731:                                              ; preds = %730
  %732 = load ptr, ptr %4, align 8, !dbg !4736
  %733 = icmp ne ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 27), %732, !dbg !4736
  br i1 %733, label %734, label %741, !dbg !4739

734:                                              ; preds = %731
  call void @llvm.dbg.declare(metadata ptr %33, metadata !4740, metadata !DIExpression()), !dbg !4744
  store i64 1025, ptr %33, align 8, !dbg !4744
  %735 = load ptr, ptr %4, align 8, !dbg !4744
  %736 = load i64, ptr %33, align 8, !dbg !4744
  %737 = call ptr @strncpy(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 27), ptr noundef %735, i64 noundef %736) #10, !dbg !4744
  %738 = load i64, ptr %33, align 8, !dbg !4744
  %739 = sub i64 %738, 1, !dbg !4744
  %740 = getelementptr inbounds i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 27), i64 %739, !dbg !4744
  store i8 0, ptr %740, align 1, !dbg !4744
  br label %741, !dbg !4745

741:                                              ; preds = %734, %731
  br label %742, !dbg !4739

742:                                              ; preds = %741
  br label %762, !dbg !4746

743:                                              ; preds = %49
  %744 = load ptr, ptr %4, align 8, !dbg !4747
  %745 = icmp ne ptr %744, null, !dbg !4747
  br i1 %745, label %746, label %754, !dbg !4749

746:                                              ; preds = %743
  %747 = load ptr, ptr %4, align 8, !dbg !4750
  %748 = load i8, ptr %747, align 1, !dbg !4751
  %749 = sext i8 %748 to i32, !dbg !4751
  %750 = icmp ne i32 %749, 0, !dbg !4751
  br i1 %750, label %751, label %754, !dbg !4752

751:                                              ; preds = %746
  %752 = load ptr, ptr %4, align 8, !dbg !4753
  %753 = load i8, ptr %752, align 1, !dbg !4755
  store i8 %753, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 72), align 8, !dbg !4756
  br label %754, !dbg !4757

754:                                              ; preds = %751, %746, %743
  br label %762, !dbg !4758

755:                                              ; preds = %49
  %756 = load ptr, ptr %4, align 8, !dbg !4759
  %757 = call i32 @get_bool_value(ptr noundef %756), !dbg !4760
  store i32 %757, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 94), align 4, !dbg !4761
  br label %762, !dbg !4762

758:                                              ; preds = %49, %49, %49, %49, %49, %49, %49, %49, %49
  br label %762, !dbg !4763

759:                                              ; preds = %49
  %760 = load ptr, ptr @stderr, align 8, !dbg !4764
  %761 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %760, ptr noundef @.str.34, ptr noundef @Usage), !dbg !4765
  call void @exit(i32 noundef -1) #13, !dbg !4766
  unreachable, !dbg !4766

762:                                              ; preds = %758, %755, %754, %742, %729, %716, %703, %696, %688, %685, %683, %681, %680, %667, %654, %641, %628, %615, %600, %597, %594, %591, %588, %585, %582, %578, %568, %559, %550, %548, %547, %545, %544, %543, %542, %541, %540, %539, %526, %513, %500, %487, %474, %459, %456, %453, %452, %445, %436, %435, %429, %418, %360, %358, %355, %352, %347, %344, %341, %338, %335, %332, %329, %326, %322, %318, %315, %312, %309, %306, %303, %302, %289, %273, %260, %236, %210, %207, %206, %196, %195, %180, %179, %166, %163, %160, %157, %156, %143, %137, %130, %117, %114, %111, %110, %109, %106, %105, %92, %56
  ret void, !dbg !4767
}

declare i64 @set_system_parameters(i32 noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_features(i64 noundef %0) #0 !dbg !4768 {
  %2 = alloca i64, align 8
  store i64 %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4771, metadata !DIExpression()), !dbg !4772
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.231, ptr noundef @.str.232), !dbg !4773
  %3 = load i64, ptr %2, align 8, !dbg !4774
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.233, i64 noundef %3), !dbg !4775
  %4 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 45), align 8, !dbg !4776
  %5 = icmp eq i32 %4, 2, !dbg !4778
  br i1 %5, label %6, label %9, !dbg !4779

6:                                                ; preds = %1
  %7 = load i64, ptr %2, align 8, !dbg !4780
  %8 = udiv i64 %7, 3, !dbg !4781
  store i64 %8, ptr %2, align 8, !dbg !4782
  br label %12, !dbg !4783

9:                                                ; preds = %1
  %10 = load i64, ptr %2, align 8, !dbg !4784
  %11 = udiv i64 %10, 2, !dbg !4785
  store i64 %11, ptr %2, align 8, !dbg !4786
  br label %12

12:                                               ; preds = %9, %6
  %13 = load i64, ptr %2, align 8, !dbg !4787
  %14 = udiv i64 %13, 500, !dbg !4788
  %15 = mul i64 %14, 500, !dbg !4789
  store i64 %15, ptr %2, align 8, !dbg !4790
  %16 = load i64, ptr %2, align 8, !dbg !4791
  %17 = icmp ult i64 %16, 500, !dbg !4793
  br i1 %17, label %18, label %19, !dbg !4794

18:                                               ; preds = %12
  store i64 500, ptr %2, align 8, !dbg !4795
  br label %19, !dbg !4796

19:                                               ; preds = %18, %12
  %20 = load i64, ptr %2, align 8, !dbg !4797
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.234, i64 noundef %20), !dbg !4798
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.235), !dbg !4799
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.236), !dbg !4800
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.237), !dbg !4801
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.238), !dbg !4802
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.239), !dbg !4803
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.240), !dbg !4804
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.241), !dbg !4807
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.242, ptr noundef @.str.243, i64 noundef 805306400), !dbg !4808
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.244), !dbg !4809
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.245, ptr noundef @.str.21), !dbg !4810
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.246), !dbg !4811
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.247), !dbg !4812
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.248), !dbg !4813
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.249), !dbg !4814
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.244), !dbg !4815
  %21 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 45), align 8, !dbg !4816
  %22 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 45), align 8, !dbg !4817
  %23 = sext i32 %22 to i64, !dbg !4818
  %24 = getelementptr inbounds [4 x ptr], ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 46), i64 0, i64 %23, !dbg !4818
  %25 = load ptr, ptr %24, align 8, !dbg !4818
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.250, i32 noundef %21, ptr noundef %25), !dbg !4819
  ret void, !dbg !4820
}

declare ptr @get_realm(ptr noundef) #5

; Function Attrs: nounwind
declare ptr @strncpy(ptr noundef, ptr noundef, i64 noundef) #3

declare void @turn_log_func_default(i32 noundef, ptr noundef, ...) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #8

; Function Attrs: noinline nounwind optnone uwtable
define internal void @openssl_setup() #0 !dbg !4821 {
  %1 = call i32 @THREAD_setup(), !dbg !4822
  %2 = call i32 @OPENSSL_init_ssl(i64 noundef 2097154, ptr noundef null), !dbg !4823
  %3 = call i32 @OPENSSL_init_ssl(i64 noundef 0, ptr noundef null), !dbg !4824
  %4 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 17), align 8, !dbg !4825
  %5 = icmp ne i32 %4, 0, !dbg !4827
  br i1 %5, label %6, label %9, !dbg !4828

6:                                                ; preds = %0
  %7 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 18), align 4, !dbg !4829
  %8 = icmp ne i32 %7, 0, !dbg !4830
  br i1 %8, label %13, label %9, !dbg !4831

9:                                                ; preds = %6, %0
  %10 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 10), align 1, !dbg !4832
  %11 = icmp ne i8 %10, 0, !dbg !4832
  br i1 %11, label %13, label %12, !dbg !4833

12:                                               ; preds = %9
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 2, ptr noundef @.str.257), !dbg !4834
  store i32 1, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 17), align 8, !dbg !4836
  store i32 1, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 18), align 4, !dbg !4837
  br label %13, !dbg !4838

13:                                               ; preds = %12, %9, %6
  %14 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 17), align 8, !dbg !4839
  %15 = icmp ne i32 %14, 0, !dbg !4841
  br i1 %15, label %16, label %19, !dbg !4842

16:                                               ; preds = %13
  %17 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 18), align 4, !dbg !4843
  %18 = icmp ne i32 %17, 0, !dbg !4844
  br i1 %18, label %23, label %19, !dbg !4845

19:                                               ; preds = %16, %13
  %20 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 11), align 8, !dbg !4846
  %21 = icmp ne i8 %20, 0, !dbg !4846
  br i1 %21, label %23, label %22, !dbg !4847

22:                                               ; preds = %19
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 2, ptr noundef @.str.258), !dbg !4848
  store i32 1, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 17), align 8, !dbg !4850
  store i32 1, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 18), align 4, !dbg !4851
  br label %23, !dbg !4852

23:                                               ; preds = %22, %19, %16
  %24 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 17), align 8, !dbg !4853
  %25 = icmp ne i32 %24, 0, !dbg !4855
  br i1 %25, label %26, label %29, !dbg !4856

26:                                               ; preds = %23
  %27 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 18), align 4, !dbg !4857
  %28 = icmp ne i32 %27, 0, !dbg !4858
  br i1 %28, label %30, label %29, !dbg !4859

29:                                               ; preds = %26, %23
  call void @adjust_key_file_names(), !dbg !4860
  br label %30, !dbg !4862

30:                                               ; preds = %29, %26
  call void @openssl_load_certificates(), !dbg !4863
  ret void, !dbg !4864
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_local_listeners_list() #0 !dbg !4865 {
  %1 = alloca i32, align 4
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca [46 x i8], align 16
  call void @llvm.dbg.declare(metadata ptr %1, metadata !4868, metadata !DIExpression()), !dbg !4869
  store i32 0, ptr %1, align 4, !dbg !4869
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4870, metadata !DIExpression()), !dbg !4871
  store ptr null, ptr %2, align 8, !dbg !4871
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4872, metadata !DIExpression()), !dbg !4873
  store ptr null, ptr %3, align 8, !dbg !4873
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4874, metadata !DIExpression()), !dbg !4875
  call void @llvm.memset.p0.i64(ptr align 16 %4, i8 0, i64 46, i1 false), !dbg !4875
  %5 = call i32 @getifaddrs(ptr noundef %2) #10, !dbg !4876
  %6 = icmp eq i32 %5, 0, !dbg !4878
  br i1 %6, label %7, label %105, !dbg !4879

7:                                                ; preds = %0
  %8 = load ptr, ptr %2, align 8, !dbg !4880
  %9 = icmp ne ptr %8, null, !dbg !4880
  br i1 %9, label %10, label %105, !dbg !4881

10:                                               ; preds = %7
  %11 = load ptr, ptr %2, align 8, !dbg !4882
  store ptr %11, ptr %3, align 8, !dbg !4885
  br label %12, !dbg !4886

12:                                               ; preds = %99, %10
  %13 = load ptr, ptr %3, align 8, !dbg !4887
  %14 = icmp ne ptr %13, null, !dbg !4889
  br i1 %14, label %15, label %103, !dbg !4890

15:                                               ; preds = %12
  %16 = load ptr, ptr %3, align 8, !dbg !4891
  %17 = getelementptr inbounds %struct.ifaddrs, ptr %16, i32 0, i32 2, !dbg !4894
  %18 = load i32, ptr %17, align 8, !dbg !4894
  %19 = and i32 %18, 1, !dbg !4895
  %20 = icmp ne i32 %19, 0, !dbg !4895
  br i1 %20, label %22, label %21, !dbg !4896

21:                                               ; preds = %15
  br label %99, !dbg !4897

22:                                               ; preds = %15
  %23 = load ptr, ptr %3, align 8, !dbg !4898
  %24 = getelementptr inbounds %struct.ifaddrs, ptr %23, i32 0, i32 3, !dbg !4900
  %25 = load ptr, ptr %24, align 8, !dbg !4900
  %26 = icmp ne ptr %25, null, !dbg !4901
  br i1 %26, label %28, label %27, !dbg !4902

27:                                               ; preds = %22
  br label %99, !dbg !4903

28:                                               ; preds = %22
  %29 = load ptr, ptr %3, align 8, !dbg !4904
  %30 = getelementptr inbounds %struct.ifaddrs, ptr %29, i32 0, i32 3, !dbg !4906
  %31 = load ptr, ptr %30, align 8, !dbg !4906
  %32 = getelementptr inbounds %struct.sockaddr, ptr %31, i32 0, i32 0, !dbg !4907
  %33 = load i16, ptr %32, align 2, !dbg !4907
  %34 = zext i16 %33 to i32, !dbg !4904
  %35 = icmp eq i32 %34, 2, !dbg !4908
  br i1 %35, label %36, label %57, !dbg !4909

36:                                               ; preds = %28
  %37 = load ptr, ptr %3, align 8, !dbg !4910
  %38 = getelementptr inbounds %struct.ifaddrs, ptr %37, i32 0, i32 3, !dbg !4913
  %39 = load ptr, ptr %38, align 8, !dbg !4913
  %40 = getelementptr inbounds %struct.sockaddr_in, ptr %39, i32 0, i32 2, !dbg !4914
  %41 = getelementptr inbounds [46 x i8], ptr %4, i64 0, i64 0, !dbg !4915
  %42 = call ptr @inet_ntop(i32 noundef 2, ptr noundef %40, ptr noundef %41, i32 noundef 16) #10, !dbg !4916
  %43 = icmp ne ptr %42, null, !dbg !4916
  br i1 %43, label %45, label %44, !dbg !4917

44:                                               ; preds = %36
  br label %99, !dbg !4918

45:                                               ; preds = %36
  %46 = getelementptr inbounds [46 x i8], ptr %4, i64 0, i64 0, !dbg !4919
  %47 = call ptr @strstr(ptr noundef %46, ptr noundef @.str.4) #11, !dbg !4921
  %48 = getelementptr inbounds [46 x i8], ptr %4, i64 0, i64 0, !dbg !4922
  %49 = icmp eq ptr %47, %48, !dbg !4923
  br i1 %49, label %50, label %51, !dbg !4924

50:                                               ; preds = %45
  br label %99, !dbg !4925

51:                                               ; preds = %45
  %52 = getelementptr inbounds [46 x i8], ptr %4, i64 0, i64 0, !dbg !4926
  %53 = call i32 @strcmp(ptr noundef %52, ptr noundef @.str.5) #11, !dbg !4928
  %54 = icmp ne i32 %53, 0, !dbg !4928
  br i1 %54, label %56, label %55, !dbg !4929

55:                                               ; preds = %51
  br label %99, !dbg !4930

56:                                               ; preds = %51
  br label %88, !dbg !4931

57:                                               ; preds = %28
  %58 = load ptr, ptr %3, align 8, !dbg !4932
  %59 = getelementptr inbounds %struct.ifaddrs, ptr %58, i32 0, i32 3, !dbg !4934
  %60 = load ptr, ptr %59, align 8, !dbg !4934
  %61 = getelementptr inbounds %struct.sockaddr, ptr %60, i32 0, i32 0, !dbg !4935
  %62 = load i16, ptr %61, align 2, !dbg !4935
  %63 = zext i16 %62 to i32, !dbg !4932
  %64 = icmp eq i32 %63, 10, !dbg !4936
  br i1 %64, label %65, label %86, !dbg !4937

65:                                               ; preds = %57
  %66 = load ptr, ptr %3, align 8, !dbg !4938
  %67 = getelementptr inbounds %struct.ifaddrs, ptr %66, i32 0, i32 3, !dbg !4941
  %68 = load ptr, ptr %67, align 8, !dbg !4941
  %69 = getelementptr inbounds %struct.sockaddr_in6, ptr %68, i32 0, i32 3, !dbg !4942
  %70 = getelementptr inbounds [46 x i8], ptr %4, i64 0, i64 0, !dbg !4943
  %71 = call ptr @inet_ntop(i32 noundef 10, ptr noundef %69, ptr noundef %70, i32 noundef 46) #10, !dbg !4944
  %72 = icmp ne ptr %71, null, !dbg !4944
  br i1 %72, label %74, label %73, !dbg !4945

73:                                               ; preds = %65
  br label %99, !dbg !4946

74:                                               ; preds = %65
  %75 = getelementptr inbounds [46 x i8], ptr %4, i64 0, i64 0, !dbg !4947
  %76 = call ptr @strstr(ptr noundef %75, ptr noundef @.str.6) #11, !dbg !4949
  %77 = getelementptr inbounds [46 x i8], ptr %4, i64 0, i64 0, !dbg !4950
  %78 = icmp eq ptr %76, %77, !dbg !4951
  br i1 %78, label %79, label %80, !dbg !4952

79:                                               ; preds = %74
  br label %99, !dbg !4953

80:                                               ; preds = %74
  %81 = getelementptr inbounds [46 x i8], ptr %4, i64 0, i64 0, !dbg !4954
  %82 = call i32 @strcmp(ptr noundef %81, ptr noundef @.str.7) #11, !dbg !4956
  %83 = icmp ne i32 %82, 0, !dbg !4956
  br i1 %83, label %85, label %84, !dbg !4957

84:                                               ; preds = %80
  br label %99, !dbg !4958

85:                                               ; preds = %80
  br label %87, !dbg !4959

86:                                               ; preds = %57
  br label %99, !dbg !4960

87:                                               ; preds = %85
  br label %88

88:                                               ; preds = %87, %56
  %89 = getelementptr inbounds [46 x i8], ptr %4, i64 0, i64 0, !dbg !4962
  call void @add_listener_addr(ptr noundef %89), !dbg !4963
  %90 = load ptr, ptr %3, align 8, !dbg !4964
  %91 = getelementptr inbounds %struct.ifaddrs, ptr %90, i32 0, i32 2, !dbg !4966
  %92 = load i32, ptr %91, align 8, !dbg !4966
  %93 = and i32 %92, 8, !dbg !4967
  %94 = icmp ne i32 %93, 0, !dbg !4967
  br i1 %94, label %98, label %95, !dbg !4968

95:                                               ; preds = %88
  %96 = load i32, ptr %1, align 4, !dbg !4969
  %97 = add nsw i32 %96, 1, !dbg !4969
  store i32 %97, ptr %1, align 4, !dbg !4969
  br label %98, !dbg !4970

98:                                               ; preds = %95, %88
  br label %99, !dbg !4971

99:                                               ; preds = %98, %86, %84, %79, %73, %55, %50, %44, %27, %21
  %100 = load ptr, ptr %3, align 8, !dbg !4972
  %101 = getelementptr inbounds %struct.ifaddrs, ptr %100, i32 0, i32 0, !dbg !4973
  %102 = load ptr, ptr %101, align 8, !dbg !4973
  store ptr %102, ptr %3, align 8, !dbg !4974
  br label %12, !dbg !4975, !llvm.loop !4976

103:                                              ; preds = %12
  %104 = load ptr, ptr %2, align 8, !dbg !4978
  call void @freeifaddrs(ptr noundef %104) #10, !dbg !4979
  br label %105, !dbg !4980

105:                                              ; preds = %103, %7, %0
  %106 = load i32, ptr %1, align 4, !dbg !4981
  ret i32 %106, !dbg !4982
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #5

declare i32 @add_relay_addr(ptr noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_local_relays_list(i32 noundef %0, i32 noundef %1) #0 !dbg !4983 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca [46 x i8], align 16
  %8 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4986, metadata !DIExpression()), !dbg !4987
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4988, metadata !DIExpression()), !dbg !4989
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4990, metadata !DIExpression()), !dbg !4991
  store ptr null, ptr %5, align 8, !dbg !4991
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4992, metadata !DIExpression()), !dbg !4993
  store ptr null, ptr %6, align 8, !dbg !4993
  call void @llvm.dbg.declare(metadata ptr %7, metadata !4994, metadata !DIExpression()), !dbg !4995
  call void @llvm.memset.p0.i64(ptr align 16 %7, i8 0, i64 46, i1 false), !dbg !4995
  %9 = call i32 @getifaddrs(ptr noundef %5) #10, !dbg !4996
  call void @llvm.dbg.declare(metadata ptr %8, metadata !4997, metadata !DIExpression()), !dbg !4998
  store i32 0, ptr %8, align 4, !dbg !4998
  %10 = load ptr, ptr %5, align 8, !dbg !4999
  %11 = icmp ne ptr %10, null, !dbg !4999
  br i1 %11, label %12, label %128, !dbg !5001

12:                                               ; preds = %2
  %13 = load ptr, ptr %5, align 8, !dbg !5002
  store ptr %13, ptr %6, align 8, !dbg !5005
  br label %14, !dbg !5006

14:                                               ; preds = %122, %12
  %15 = load ptr, ptr %6, align 8, !dbg !5007
  %16 = icmp ne ptr %15, null, !dbg !5009
  br i1 %16, label %17, label %126, !dbg !5010

17:                                               ; preds = %14
  %18 = load ptr, ptr %6, align 8, !dbg !5011
  %19 = getelementptr inbounds %struct.ifaddrs, ptr %18, i32 0, i32 2, !dbg !5014
  %20 = load i32, ptr %19, align 8, !dbg !5014
  %21 = and i32 %20, 1, !dbg !5015
  %22 = icmp ne i32 %21, 0, !dbg !5015
  br i1 %22, label %24, label %23, !dbg !5016

23:                                               ; preds = %17
  br label %122, !dbg !5017

24:                                               ; preds = %17
  %25 = load ptr, ptr %6, align 8, !dbg !5018
  %26 = getelementptr inbounds %struct.ifaddrs, ptr %25, i32 0, i32 1, !dbg !5020
  %27 = load ptr, ptr %26, align 8, !dbg !5020
  %28 = icmp ne ptr %27, null, !dbg !5021
  br i1 %28, label %30, label %29, !dbg !5022

29:                                               ; preds = %24
  br label %122, !dbg !5023

30:                                               ; preds = %24
  %31 = load ptr, ptr %6, align 8, !dbg !5024
  %32 = getelementptr inbounds %struct.ifaddrs, ptr %31, i32 0, i32 3, !dbg !5026
  %33 = load ptr, ptr %32, align 8, !dbg !5026
  %34 = icmp ne ptr %33, null, !dbg !5027
  br i1 %34, label %36, label %35, !dbg !5028

35:                                               ; preds = %30
  br label %122, !dbg !5029

36:                                               ; preds = %30
  %37 = load i32, ptr %3, align 4, !dbg !5030
  %38 = icmp ne i32 %37, 0, !dbg !5030
  br i1 %38, label %46, label %39, !dbg !5032

39:                                               ; preds = %36
  %40 = load ptr, ptr %6, align 8, !dbg !5033
  %41 = getelementptr inbounds %struct.ifaddrs, ptr %40, i32 0, i32 2, !dbg !5034
  %42 = load i32, ptr %41, align 8, !dbg !5034
  %43 = and i32 %42, 8, !dbg !5035
  %44 = icmp ne i32 %43, 0, !dbg !5035
  br i1 %44, label %45, label %46, !dbg !5036

45:                                               ; preds = %39
  br label %122, !dbg !5037

46:                                               ; preds = %39, %36
  %47 = load ptr, ptr %6, align 8, !dbg !5038
  %48 = getelementptr inbounds %struct.ifaddrs, ptr %47, i32 0, i32 3, !dbg !5040
  %49 = load ptr, ptr %48, align 8, !dbg !5040
  %50 = getelementptr inbounds %struct.sockaddr, ptr %49, i32 0, i32 0, !dbg !5041
  %51 = load i16, ptr %50, align 2, !dbg !5041
  %52 = zext i16 %51 to i32, !dbg !5038
  %53 = icmp eq i32 %52, 2, !dbg !5042
  br i1 %53, label %54, label %79, !dbg !5043

54:                                               ; preds = %46
  %55 = load i32, ptr %4, align 4, !dbg !5044
  %56 = icmp ne i32 %55, 2, !dbg !5047
  br i1 %56, label %57, label %58, !dbg !5048

57:                                               ; preds = %54
  br label %122, !dbg !5049

58:                                               ; preds = %54
  %59 = load ptr, ptr %6, align 8, !dbg !5050
  %60 = getelementptr inbounds %struct.ifaddrs, ptr %59, i32 0, i32 3, !dbg !5052
  %61 = load ptr, ptr %60, align 8, !dbg !5052
  %62 = getelementptr inbounds %struct.sockaddr_in, ptr %61, i32 0, i32 2, !dbg !5053
  %63 = getelementptr inbounds [46 x i8], ptr %7, i64 0, i64 0, !dbg !5054
  %64 = call ptr @inet_ntop(i32 noundef 2, ptr noundef %62, ptr noundef %63, i32 noundef 16) #10, !dbg !5055
  %65 = icmp ne ptr %64, null, !dbg !5055
  br i1 %65, label %67, label %66, !dbg !5056

66:                                               ; preds = %58
  br label %122, !dbg !5057

67:                                               ; preds = %58
  %68 = getelementptr inbounds [46 x i8], ptr %7, i64 0, i64 0, !dbg !5058
  %69 = call ptr @strstr(ptr noundef %68, ptr noundef @.str.4) #11, !dbg !5060
  %70 = getelementptr inbounds [46 x i8], ptr %7, i64 0, i64 0, !dbg !5061
  %71 = icmp eq ptr %69, %70, !dbg !5062
  br i1 %71, label %72, label %73, !dbg !5063

72:                                               ; preds = %67
  br label %122, !dbg !5064

73:                                               ; preds = %67
  %74 = getelementptr inbounds [46 x i8], ptr %7, i64 0, i64 0, !dbg !5065
  %75 = call i32 @strcmp(ptr noundef %74, ptr noundef @.str.5) #11, !dbg !5067
  %76 = icmp ne i32 %75, 0, !dbg !5067
  br i1 %76, label %78, label %77, !dbg !5068

77:                                               ; preds = %73
  br label %122, !dbg !5069

78:                                               ; preds = %73
  br label %114, !dbg !5070

79:                                               ; preds = %46
  %80 = load ptr, ptr %6, align 8, !dbg !5071
  %81 = getelementptr inbounds %struct.ifaddrs, ptr %80, i32 0, i32 3, !dbg !5073
  %82 = load ptr, ptr %81, align 8, !dbg !5073
  %83 = getelementptr inbounds %struct.sockaddr, ptr %82, i32 0, i32 0, !dbg !5074
  %84 = load i16, ptr %83, align 2, !dbg !5074
  %85 = zext i16 %84 to i32, !dbg !5071
  %86 = icmp eq i32 %85, 10, !dbg !5075
  br i1 %86, label %87, label %112, !dbg !5076

87:                                               ; preds = %79
  %88 = load i32, ptr %4, align 4, !dbg !5077
  %89 = icmp ne i32 %88, 10, !dbg !5080
  br i1 %89, label %90, label %91, !dbg !5081

90:                                               ; preds = %87
  br label %122, !dbg !5082

91:                                               ; preds = %87
  %92 = load ptr, ptr %6, align 8, !dbg !5083
  %93 = getelementptr inbounds %struct.ifaddrs, ptr %92, i32 0, i32 3, !dbg !5085
  %94 = load ptr, ptr %93, align 8, !dbg !5085
  %95 = getelementptr inbounds %struct.sockaddr_in6, ptr %94, i32 0, i32 3, !dbg !5086
  %96 = getelementptr inbounds [46 x i8], ptr %7, i64 0, i64 0, !dbg !5087
  %97 = call ptr @inet_ntop(i32 noundef 10, ptr noundef %95, ptr noundef %96, i32 noundef 46) #10, !dbg !5088
  %98 = icmp ne ptr %97, null, !dbg !5088
  br i1 %98, label %100, label %99, !dbg !5089

99:                                               ; preds = %91
  br label %122, !dbg !5090

100:                                              ; preds = %91
  %101 = getelementptr inbounds [46 x i8], ptr %7, i64 0, i64 0, !dbg !5091
  %102 = call ptr @strstr(ptr noundef %101, ptr noundef @.str.6) #11, !dbg !5093
  %103 = getelementptr inbounds [46 x i8], ptr %7, i64 0, i64 0, !dbg !5094
  %104 = icmp eq ptr %102, %103, !dbg !5095
  br i1 %104, label %105, label %106, !dbg !5096

105:                                              ; preds = %100
  br label %122, !dbg !5097

106:                                              ; preds = %100
  %107 = getelementptr inbounds [46 x i8], ptr %7, i64 0, i64 0, !dbg !5098
  %108 = call i32 @strcmp(ptr noundef %107, ptr noundef @.str.7) #11, !dbg !5100
  %109 = icmp ne i32 %108, 0, !dbg !5100
  br i1 %109, label %111, label %110, !dbg !5101

110:                                              ; preds = %106
  br label %122, !dbg !5102

111:                                              ; preds = %106
  br label %113, !dbg !5103

112:                                              ; preds = %79
  br label %122, !dbg !5104

113:                                              ; preds = %111
  br label %114

114:                                              ; preds = %113, %78
  %115 = getelementptr inbounds [46 x i8], ptr %7, i64 0, i64 0, !dbg !5105
  %116 = call i32 @add_relay_addr(ptr noundef %115), !dbg !5107
  %117 = icmp sgt i32 %116, 0, !dbg !5108
  br i1 %117, label %118, label %121, !dbg !5109

118:                                              ; preds = %114
  %119 = load i32, ptr %8, align 4, !dbg !5110
  %120 = add nsw i32 %119, 1, !dbg !5110
  store i32 %120, ptr %8, align 4, !dbg !5110
  br label %121, !dbg !5112

121:                                              ; preds = %118, %114
  br label %122, !dbg !5113

122:                                              ; preds = %121, %112, %110, %105, %99, %90, %77, %72, %66, %57, %45, %35, %29, %23
  %123 = load ptr, ptr %6, align 8, !dbg !5114
  %124 = getelementptr inbounds %struct.ifaddrs, ptr %123, i32 0, i32 0, !dbg !5115
  %125 = load ptr, ptr %124, align 8, !dbg !5115
  store ptr %125, ptr %6, align 8, !dbg !5116
  br label %14, !dbg !5117, !llvm.loop !5118

126:                                              ; preds = %14
  %127 = load ptr, ptr %5, align 8, !dbg !5120
  call void @freeifaddrs(ptr noundef %127) #10, !dbg !5121
  br label %128, !dbg !5122

128:                                              ; preds = %126, %2
  %129 = load i32, ptr %8, align 4, !dbg !5123
  ret i32 %129, !dbg !5124
}

declare void @ioa_addr_add_mapping(ptr noundef, ptr noundef) #5

; Function Attrs: nounwind
declare i32 @fork() #3

; Function Attrs: nounwind
declare i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #3

declare void @perror(ptr noundef) #5

; Function Attrs: nounwind
declare i32 @getpid() #3

declare void @setup_server() #5

declare ptr @event_new(ptr noundef, i32 noundef, i16 noundef signext, ptr noundef, ptr noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reload_ssl_certs(i32 noundef %0, i16 noundef signext %1, ptr noundef %2) #0 !dbg !5125 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca ptr, align 8
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !5128, metadata !DIExpression()), !dbg !5129
  store i16 %1, ptr %5, align 2
  call void @llvm.dbg.declare(metadata ptr %5, metadata !5130, metadata !DIExpression()), !dbg !5131
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !5132, metadata !DIExpression()), !dbg !5133
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.290), !dbg !5134
  call void @openssl_load_certificates(), !dbg !5135
  %7 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 19), align 8, !dbg !5136
  %8 = icmp ne ptr %7, null, !dbg !5138
  br i1 %8, label %9, label %11, !dbg !5139

9:                                                ; preds = %3
  %10 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 19), align 8, !dbg !5140
  call void @event_active(ptr noundef %10, i32 noundef 2, i16 noundef signext 0), !dbg !5141
  br label %11, !dbg !5141

11:                                               ; preds = %9, %3
  br label %12, !dbg !5142

12:                                               ; preds = %11
  %13 = load i32, ptr %4, align 4, !dbg !5143
  store i32 %13, ptr %4, align 4, !dbg !5143
  br label %14, !dbg !5143

14:                                               ; preds = %12
  br label %15, !dbg !5145

15:                                               ; preds = %14
  %16 = load i16, ptr %5, align 2, !dbg !5146
  store i16 %16, ptr %5, align 2, !dbg !5146
  br label %17, !dbg !5146

17:                                               ; preds = %15
  br label %18, !dbg !5148

18:                                               ; preds = %17
  %19 = load ptr, ptr %6, align 8, !dbg !5149
  store ptr %19, ptr %6, align 8, !dbg !5149
  br label %20, !dbg !5149

20:                                               ; preds = %18
  ret void, !dbg !5151
}

declare i32 @event_add(ptr noundef, ptr noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drop_privileges() #0 !dbg !5152 {
  %1 = call i32 @setgroups(i64 noundef 0, ptr noundef null) #10, !dbg !5153
  %2 = load i32, ptr @procgroupid_set, align 4, !dbg !5154
  %3 = icmp ne i32 %2, 0, !dbg !5154
  br i1 %3, label %4, label %21, !dbg !5156

4:                                                ; preds = %0
  %5 = call i32 @getgid() #10, !dbg !5157
  %6 = load i32, ptr @procgroupid, align 4, !dbg !5160
  %7 = icmp ne i32 %5, %6, !dbg !5161
  br i1 %7, label %8, label %17, !dbg !5162

8:                                                ; preds = %4
  %9 = load i32, ptr @procgroupid, align 4, !dbg !5163
  %10 = call i32 @setgid(i32 noundef %9) #10, !dbg !5166
  %11 = icmp ne i32 %10, 0, !dbg !5167
  br i1 %11, label %12, label %13, !dbg !5168

12:                                               ; preds = %8
  call void @perror(ptr noundef @.str.251), !dbg !5169
  call void @exit(i32 noundef -1) #13, !dbg !5171
  unreachable, !dbg !5171

13:                                               ; preds = %8
  %14 = load i32, ptr @procgroupid, align 4, !dbg !5172
  %15 = zext i32 %14 to i64, !dbg !5174
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.252, ptr noundef @procgroupname, i64 noundef %15), !dbg !5175
  br label %16

16:                                               ; preds = %13
  br label %20, !dbg !5176

17:                                               ; preds = %4
  %18 = load i32, ptr @procgroupid, align 4, !dbg !5177
  %19 = zext i32 %18 to i64, !dbg !5179
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.253, ptr noundef @procgroupname, i64 noundef %19), !dbg !5180
  br label %20

20:                                               ; preds = %17, %16
  br label %21, !dbg !5181

21:                                               ; preds = %20, %0
  %22 = load i32, ptr @procuserid_set, align 4, !dbg !5182
  %23 = icmp ne i32 %22, 0, !dbg !5182
  br i1 %23, label %24, label %41, !dbg !5184

24:                                               ; preds = %21
  %25 = load i32, ptr @procuserid, align 4, !dbg !5185
  %26 = call i32 @getuid() #10, !dbg !5188
  %27 = icmp ne i32 %25, %26, !dbg !5189
  br i1 %27, label %28, label %37, !dbg !5190

28:                                               ; preds = %24
  %29 = load i32, ptr @procuserid, align 4, !dbg !5191
  %30 = call i32 @setuid(i32 noundef %29) #10, !dbg !5194
  %31 = icmp ne i32 %30, 0, !dbg !5195
  br i1 %31, label %32, label %33, !dbg !5196

32:                                               ; preds = %28
  call void @perror(ptr noundef @.str.254), !dbg !5197
  call void @exit(i32 noundef -1) #13, !dbg !5199
  unreachable, !dbg !5199

33:                                               ; preds = %28
  %34 = load i32, ptr @procuserid, align 4, !dbg !5200
  %35 = zext i32 %34 to i64, !dbg !5202
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.255, ptr noundef @procusername, i64 noundef %35), !dbg !5203
  br label %36

36:                                               ; preds = %33
  br label %40, !dbg !5204

37:                                               ; preds = %24
  %38 = load i32, ptr @procuserid, align 4, !dbg !5205
  %39 = zext i32 %38 to i64, !dbg !5207
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.256, ptr noundef @procusername, i64 noundef %39), !dbg !5208
  br label %40

40:                                               ; preds = %37, %36
  br label %41, !dbg !5209

41:                                               ; preds = %40, %21
  ret void, !dbg !5210
}

declare i32 @start_prometheus_server() #5

declare void @run_listener_server(ptr noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @disconnect_database() #0 !dbg !5211 {
  %1 = alloca ptr, align 8
  call void @llvm.dbg.declare(metadata ptr %1, metadata !5212, metadata !DIExpression()), !dbg !5316
  %2 = call ptr @get_dbdriver(), !dbg !5317
  store ptr %2, ptr %1, align 8, !dbg !5316
  %3 = load ptr, ptr %1, align 8, !dbg !5318
  %4 = icmp ne ptr %3, null, !dbg !5318
  br i1 %4, label %5, label %14, !dbg !5320

5:                                                ; preds = %0
  %6 = load ptr, ptr %1, align 8, !dbg !5321
  %7 = getelementptr inbounds %struct._turn_dbdriver_t, ptr %6, i32 0, i32 25, !dbg !5322
  %8 = load ptr, ptr %7, align 8, !dbg !5322
  %9 = icmp ne ptr %8, null, !dbg !5321
  br i1 %9, label %10, label %14, !dbg !5323

10:                                               ; preds = %5
  %11 = load ptr, ptr %1, align 8, !dbg !5324
  %12 = getelementptr inbounds %struct._turn_dbdriver_t, ptr %11, i32 0, i32 25, !dbg !5326
  %13 = load ptr, ptr %12, align 8, !dbg !5326
  call void %13(), !dbg !5324
  br label %14, !dbg !5327

14:                                               ; preds = %10, %5, %0
  ret i32 0, !dbg !5328
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @coturn_locking_function(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 !dbg !5329 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store i32 %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !5332, metadata !DIExpression()), !dbg !5333
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !5334, metadata !DIExpression()), !dbg !5335
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !5336, metadata !DIExpression()), !dbg !5337
  store i32 %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !5338, metadata !DIExpression()), !dbg !5339
  br label %9, !dbg !5340

9:                                                ; preds = %4
  %10 = load ptr, ptr %7, align 8, !dbg !5341
  store ptr %10, ptr %7, align 8, !dbg !5341
  br label %11, !dbg !5341

11:                                               ; preds = %9
  br label %12, !dbg !5343

12:                                               ; preds = %11
  %13 = load i32, ptr %8, align 4, !dbg !5344
  store i32 %13, ptr %8, align 4, !dbg !5344
  br label %14, !dbg !5344

14:                                               ; preds = %12
  %15 = load i32, ptr @mutex_buf_initialized, align 4, !dbg !5346
  %16 = icmp ne i32 %15, 0, !dbg !5346
  br i1 %16, label %17, label %35, !dbg !5348

17:                                               ; preds = %14
  %18 = load i32, ptr %6, align 4, !dbg !5349
  %19 = icmp slt i32 %18, 1, !dbg !5350
  br i1 %19, label %20, label %35, !dbg !5351

20:                                               ; preds = %17
  %21 = load i32, ptr %5, align 4, !dbg !5352
  %22 = and i32 %21, 1, !dbg !5355
  %23 = icmp ne i32 %22, 0, !dbg !5355
  br i1 %23, label %24, label %29, !dbg !5356

24:                                               ; preds = %20
  %25 = load i32, ptr %6, align 4, !dbg !5357
  %26 = sext i32 %25 to i64, !dbg !5358
  %27 = getelementptr inbounds [256 x %union.pthread_mutex_t], ptr @mutex_buf, i64 0, i64 %26, !dbg !5358
  %28 = call i32 @pthread_mutex_lock(ptr noundef %27) #10, !dbg !5359
  br label %34, !dbg !5359

29:                                               ; preds = %20
  %30 = load i32, ptr %6, align 4, !dbg !5360
  %31 = sext i32 %30 to i64, !dbg !5361
  %32 = getelementptr inbounds [256 x %union.pthread_mutex_t], ptr @mutex_buf, i64 0, i64 %31, !dbg !5361
  %33 = call i32 @pthread_mutex_unlock(ptr noundef %32) #10, !dbg !5362
  br label %34

34:                                               ; preds = %29, %24
  br label %35, !dbg !5363

35:                                               ; preds = %34, %17, %14
  ret void, !dbg !5364
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) #3

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @coturn_id_function(ptr noundef %0) #0 !dbg !5365 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !5374, metadata !DIExpression()), !dbg !5375
  br label %3, !dbg !5376

3:                                                ; preds = %1
  %4 = load ptr, ptr %2, align 8, !dbg !5377
  store ptr %4, ptr %2, align 8, !dbg !5377
  br label %5, !dbg !5377

5:                                                ; preds = %3
  ret void, !dbg !5379
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @THREAD_cleanup() #0 !dbg !5380 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !5381, metadata !DIExpression()), !dbg !5382
  %3 = load i32, ptr @mutex_buf_initialized, align 4, !dbg !5383
  %4 = icmp ne i32 %3, 0, !dbg !5383
  br i1 %4, label %6, label %5, !dbg !5385

5:                                                ; preds = %0
  store i32 0, ptr %1, align 4, !dbg !5386
  br label %19, !dbg !5386

6:                                                ; preds = %0
  store i32 0, ptr %2, align 4, !dbg !5387
  br label %7, !dbg !5389

7:                                                ; preds = %15, %6
  %8 = load i32, ptr %2, align 4, !dbg !5390
  %9 = icmp slt i32 %8, 1, !dbg !5392
  br i1 %9, label %10, label %18, !dbg !5393

10:                                               ; preds = %7
  %11 = load i32, ptr %2, align 4, !dbg !5394
  %12 = sext i32 %11 to i64, !dbg !5396
  %13 = getelementptr inbounds [256 x %union.pthread_mutex_t], ptr @mutex_buf, i64 0, i64 %12, !dbg !5396
  %14 = call i32 @pthread_mutex_destroy(ptr noundef %13) #10, !dbg !5397
  br label %15, !dbg !5398

15:                                               ; preds = %10
  %16 = load i32, ptr %2, align 4, !dbg !5399
  %17 = add nsw i32 %16, 1, !dbg !5399
  store i32 %17, ptr %2, align 4, !dbg !5399
  br label %7, !dbg !5400, !llvm.loop !5401

18:                                               ; preds = %7
  store i32 0, ptr @mutex_buf_initialized, align 4, !dbg !5403
  store i32 1, ptr %1, align 4, !dbg !5404
  br label %19, !dbg !5404

19:                                               ; preds = %18, %5
  %20 = load i32, ptr %1, align 4, !dbg !5405
  ret i32 %20, !dbg !5405
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(ptr noundef) #3

; Function Attrs: nounwind
declare i32 @getdomainname(ptr noundef, i64 noundef) #3

declare void @generate_new_enc_password(ptr noundef, ptr noundef) #5

; Function Attrs: nounwind willreturn memory(read)
declare i32 @atoi(ptr noundef) #4

declare i32 @is_secure_string(ptr noundef, i32 noundef) #5

declare i32 @SASLprep(ptr noundef) #5

declare void @set_default_realm_name(ptr noundef) #5

declare i32 @fseek(ptr noundef, i64 noundef, i32 noundef) #5

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #5

declare i32 @adminuser(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #5

declare ptr @find_config_file(ptr noundef, i32 noundef) #5

declare ptr @fgets(ptr noundef, i32 noundef, ptr noundef) #5

declare ptr @skip_blanks(ptr noundef) #5

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #9

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_arg_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !5406 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !5409, metadata !DIExpression()), !dbg !5410
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !5411, metadata !DIExpression()), !dbg !5412
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !5413, metadata !DIExpression()), !dbg !5414
  call void @llvm.dbg.declare(metadata ptr %8, metadata !5415, metadata !DIExpression()), !dbg !5416
  store i32 0, ptr %8, align 4, !dbg !5416
  call void @llvm.dbg.declare(metadata ptr %9, metadata !5417, metadata !DIExpression()), !dbg !5418
  %11 = load ptr, ptr %5, align 8, !dbg !5419
  store ptr %11, ptr %9, align 8, !dbg !5418
  br label %12, !dbg !5420

12:                                               ; preds = %56, %3
  %13 = load ptr, ptr %5, align 8, !dbg !5421
  %14 = load i8, ptr %13, align 1, !dbg !5422
  %15 = icmp ne i8 %14, 0, !dbg !5420
  br i1 %15, label %16, label %61, !dbg !5420

16:                                               ; preds = %12
  %17 = load ptr, ptr %5, align 8, !dbg !5423
  %18 = load i8, ptr %17, align 1, !dbg !5426
  %19 = sext i8 %18 to i32, !dbg !5426
  %20 = icmp eq i32 %19, 32, !dbg !5427
  br i1 %20, label %31, label %21, !dbg !5428

21:                                               ; preds = %16
  %22 = load ptr, ptr %5, align 8, !dbg !5429
  %23 = load i8, ptr %22, align 1, !dbg !5430
  %24 = sext i8 %23 to i32, !dbg !5430
  %25 = icmp eq i32 %24, 61, !dbg !5431
  br i1 %25, label %31, label %26, !dbg !5432

26:                                               ; preds = %21
  %27 = load ptr, ptr %5, align 8, !dbg !5433
  %28 = load i8, ptr %27, align 1, !dbg !5434
  %29 = sext i8 %28 to i32, !dbg !5434
  %30 = icmp eq i32 %29, 9, !dbg !5435
  br i1 %30, label %31, label %56, !dbg !5436

31:                                               ; preds = %26, %21, %16
  %32 = load ptr, ptr %5, align 8, !dbg !5437
  store i8 0, ptr %32, align 1, !dbg !5439
  br label %33, !dbg !5440

33:                                               ; preds = %51, %31
  %34 = load ptr, ptr %5, align 8, !dbg !5441
  %35 = getelementptr inbounds i8, ptr %34, i32 1, !dbg !5441
  store ptr %35, ptr %5, align 8, !dbg !5441
  br label %36, !dbg !5443

36:                                               ; preds = %33
  %37 = load ptr, ptr %5, align 8, !dbg !5444
  %38 = load i8, ptr %37, align 1, !dbg !5445
  %39 = sext i8 %38 to i32, !dbg !5445
  %40 = icmp eq i32 %39, 32, !dbg !5446
  br i1 %40, label %51, label %41, !dbg !5447

41:                                               ; preds = %36
  %42 = load ptr, ptr %5, align 8, !dbg !5448
  %43 = load i8, ptr %42, align 1, !dbg !5449
  %44 = sext i8 %43 to i32, !dbg !5449
  %45 = icmp eq i32 %44, 61, !dbg !5450
  br i1 %45, label %51, label %46, !dbg !5451

46:                                               ; preds = %41
  %47 = load ptr, ptr %5, align 8, !dbg !5452
  %48 = load i8, ptr %47, align 1, !dbg !5453
  %49 = sext i8 %48 to i32, !dbg !5453
  %50 = icmp eq i32 %49, 9, !dbg !5454
  br label %51, !dbg !5451

51:                                               ; preds = %46, %41, %36
  %52 = phi i1 [ true, %41 ], [ true, %36 ], [ %50, %46 ]
  br i1 %52, label %33, label %53, !dbg !5443, !llvm.loop !5455

53:                                               ; preds = %51
  %54 = load ptr, ptr %5, align 8, !dbg !5457
  %55 = load ptr, ptr %7, align 8, !dbg !5458
  store ptr %54, ptr %55, align 8, !dbg !5459
  br label %61, !dbg !5460

56:                                               ; preds = %26
  %57 = load ptr, ptr %5, align 8, !dbg !5461
  %58 = getelementptr inbounds i8, ptr %57, i32 1, !dbg !5461
  store ptr %58, ptr %5, align 8, !dbg !5461
  %59 = load ptr, ptr %5, align 8, !dbg !5462
  %60 = load ptr, ptr %7, align 8, !dbg !5463
  store ptr %59, ptr %60, align 8, !dbg !5464
  br label %12, !dbg !5420, !llvm.loop !5465

61:                                               ; preds = %53, %12
  %62 = load ptr, ptr %7, align 8, !dbg !5467
  %63 = icmp ne ptr %62, null, !dbg !5467
  br i1 %63, label %64, label %149, !dbg !5469

64:                                               ; preds = %61
  %65 = load ptr, ptr %7, align 8, !dbg !5470
  %66 = load ptr, ptr %65, align 8, !dbg !5471
  %67 = icmp ne ptr %66, null, !dbg !5471
  br i1 %67, label %68, label %149, !dbg !5472

68:                                               ; preds = %64
  %69 = load ptr, ptr %7, align 8, !dbg !5473
  %70 = load ptr, ptr %69, align 8, !dbg !5474
  %71 = load i8, ptr %70, align 1, !dbg !5475
  %72 = sext i8 %71 to i32, !dbg !5475
  %73 = icmp eq i32 %72, 34, !dbg !5476
  br i1 %73, label %74, label %149, !dbg !5477

74:                                               ; preds = %68
  %75 = load ptr, ptr %7, align 8, !dbg !5478
  %76 = load ptr, ptr %75, align 8, !dbg !5480
  %77 = getelementptr inbounds i8, ptr %76, i64 1, !dbg !5480
  store ptr %77, ptr %75, align 8, !dbg !5480
  call void @llvm.dbg.declare(metadata ptr %10, metadata !5481, metadata !DIExpression()), !dbg !5482
  %78 = load ptr, ptr %7, align 8, !dbg !5483
  %79 = load ptr, ptr %78, align 8, !dbg !5484
  %80 = call i64 @strlen(ptr noundef %79) #11, !dbg !5485
  store i64 %80, ptr %10, align 8, !dbg !5482
  br label %81, !dbg !5486

81:                                               ; preds = %124, %74
  %82 = load i64, ptr %10, align 8, !dbg !5487
  %83 = icmp ugt i64 %82, 0, !dbg !5488
  br i1 %83, label %84, label %122, !dbg !5489

84:                                               ; preds = %81
  %85 = load ptr, ptr %7, align 8, !dbg !5490
  %86 = load ptr, ptr %85, align 8, !dbg !5491
  %87 = load i64, ptr %10, align 8, !dbg !5492
  %88 = sub i64 %87, 1, !dbg !5493
  %89 = getelementptr inbounds i8, ptr %86, i64 %88, !dbg !5494
  %90 = load i8, ptr %89, align 1, !dbg !5494
  %91 = sext i8 %90 to i32, !dbg !5494
  %92 = icmp eq i32 %91, 10, !dbg !5495
  br i1 %92, label %120, label %93, !dbg !5496

93:                                               ; preds = %84
  %94 = load ptr, ptr %7, align 8, !dbg !5497
  %95 = load ptr, ptr %94, align 8, !dbg !5498
  %96 = load i64, ptr %10, align 8, !dbg !5499
  %97 = sub i64 %96, 1, !dbg !5500
  %98 = getelementptr inbounds i8, ptr %95, i64 %97, !dbg !5501
  %99 = load i8, ptr %98, align 1, !dbg !5501
  %100 = sext i8 %99 to i32, !dbg !5501
  %101 = icmp eq i32 %100, 13, !dbg !5502
  br i1 %101, label %120, label %102, !dbg !5503

102:                                              ; preds = %93
  %103 = load ptr, ptr %7, align 8, !dbg !5504
  %104 = load ptr, ptr %103, align 8, !dbg !5505
  %105 = load i64, ptr %10, align 8, !dbg !5506
  %106 = sub i64 %105, 1, !dbg !5507
  %107 = getelementptr inbounds i8, ptr %104, i64 %106, !dbg !5508
  %108 = load i8, ptr %107, align 1, !dbg !5508
  %109 = sext i8 %108 to i32, !dbg !5508
  %110 = icmp eq i32 %109, 32, !dbg !5509
  br i1 %110, label %120, label %111, !dbg !5510

111:                                              ; preds = %102
  %112 = load ptr, ptr %7, align 8, !dbg !5511
  %113 = load ptr, ptr %112, align 8, !dbg !5512
  %114 = load i64, ptr %10, align 8, !dbg !5513
  %115 = sub i64 %114, 1, !dbg !5514
  %116 = getelementptr inbounds i8, ptr %113, i64 %115, !dbg !5515
  %117 = load i8, ptr %116, align 1, !dbg !5515
  %118 = sext i8 %117 to i32, !dbg !5515
  %119 = icmp eq i32 %118, 9, !dbg !5516
  br label %120, !dbg !5510

120:                                              ; preds = %111, %102, %93, %84
  %121 = phi i1 [ true, %102 ], [ true, %93 ], [ true, %84 ], [ %119, %111 ]
  br label %122

122:                                              ; preds = %120, %81
  %123 = phi i1 [ false, %81 ], [ %121, %120 ], !dbg !5517
  br i1 %123, label %124, label %130, !dbg !5486

124:                                              ; preds = %122
  %125 = load ptr, ptr %7, align 8, !dbg !5518
  %126 = load ptr, ptr %125, align 8, !dbg !5520
  %127 = load i64, ptr %10, align 8, !dbg !5521
  %128 = add i64 %127, -1, !dbg !5521
  store i64 %128, ptr %10, align 8, !dbg !5521
  %129 = getelementptr inbounds i8, ptr %126, i64 %128, !dbg !5522
  store i8 0, ptr %129, align 1, !dbg !5523
  br label %81, !dbg !5486, !llvm.loop !5524

130:                                              ; preds = %122
  %131 = load i64, ptr %10, align 8, !dbg !5526
  %132 = icmp ugt i64 %131, 0, !dbg !5528
  br i1 %132, label %133, label %148, !dbg !5529

133:                                              ; preds = %130
  %134 = load ptr, ptr %7, align 8, !dbg !5530
  %135 = load ptr, ptr %134, align 8, !dbg !5531
  %136 = load i64, ptr %10, align 8, !dbg !5532
  %137 = sub i64 %136, 1, !dbg !5533
  %138 = getelementptr inbounds i8, ptr %135, i64 %137, !dbg !5534
  %139 = load i8, ptr %138, align 1, !dbg !5534
  %140 = sext i8 %139 to i32, !dbg !5534
  %141 = icmp eq i32 %140, 34, !dbg !5535
  br i1 %141, label %142, label %148, !dbg !5536

142:                                              ; preds = %133
  %143 = load ptr, ptr %7, align 8, !dbg !5537
  %144 = load ptr, ptr %143, align 8, !dbg !5539
  %145 = load i64, ptr %10, align 8, !dbg !5540
  %146 = add i64 %145, -1, !dbg !5540
  store i64 %146, ptr %10, align 8, !dbg !5540
  %147 = getelementptr inbounds i8, ptr %144, i64 %146, !dbg !5541
  store i8 0, ptr %147, align 1, !dbg !5542
  br label %148, !dbg !5543

148:                                              ; preds = %142, %133, %130
  br label %149, !dbg !5544

149:                                              ; preds = %148, %68, %64, %61
  br label %150, !dbg !5545

150:                                              ; preds = %166, %149
  %151 = load i32, ptr %8, align 4, !dbg !5546
  %152 = sext i32 %151 to i64, !dbg !5547
  %153 = getelementptr inbounds [109 x %struct.myoption], ptr @long_options, i64 0, i64 %152, !dbg !5547
  %154 = getelementptr inbounds %struct.myoption, ptr %153, i32 0, i32 0, !dbg !5548
  %155 = load ptr, ptr %154, align 16, !dbg !5548
  %156 = icmp ne ptr %155, null, !dbg !5545
  br i1 %156, label %157, label %176, !dbg !5545

157:                                              ; preds = %150
  %158 = load i32, ptr %8, align 4, !dbg !5549
  %159 = sext i32 %158 to i64, !dbg !5552
  %160 = getelementptr inbounds [109 x %struct.myoption], ptr @long_options, i64 0, i64 %159, !dbg !5552
  %161 = getelementptr inbounds %struct.myoption, ptr %160, i32 0, i32 0, !dbg !5553
  %162 = load ptr, ptr %161, align 16, !dbg !5553
  %163 = load ptr, ptr %9, align 8, !dbg !5554
  %164 = call i32 @strcmp(ptr noundef %162, ptr noundef %163) #11, !dbg !5555
  %165 = icmp ne i32 %164, 0, !dbg !5555
  br i1 %165, label %166, label %169, !dbg !5556

166:                                              ; preds = %157
  %167 = load i32, ptr %8, align 4, !dbg !5557
  %168 = add nsw i32 %167, 1, !dbg !5557
  store i32 %168, ptr %8, align 4, !dbg !5557
  br label %150, !dbg !5559, !llvm.loop !5560

169:                                              ; preds = %157
  %170 = load i32, ptr %8, align 4, !dbg !5562
  %171 = sext i32 %170 to i64, !dbg !5563
  %172 = getelementptr inbounds [109 x %struct.myoption], ptr @long_options, i64 0, i64 %171, !dbg !5563
  %173 = getelementptr inbounds %struct.myoption, ptr %172, i32 0, i32 3, !dbg !5564
  %174 = load i32, ptr %173, align 8, !dbg !5564
  %175 = load ptr, ptr %6, align 8, !dbg !5565
  store i32 %174, ptr %175, align 4, !dbg !5566
  store i32 0, ptr %4, align 4, !dbg !5567
  br label %177, !dbg !5567

176:                                              ; preds = %150
  store i32 -1, ptr %4, align 4, !dbg !5568
  br label %177, !dbg !5568

177:                                              ; preds = %176, %169
  %178 = load i32, ptr %4, align 4, !dbg !5569
  ret i32 %178, !dbg !5569
}

declare ptr @getpwnam(ptr noundef) #5

declare ptr @getgrnam(ptr noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_int_value(ptr noundef %0, i32 noundef %1) #0 !dbg !5570 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !5573, metadata !DIExpression()), !dbg !5574
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !5575, metadata !DIExpression()), !dbg !5576
  %6 = load ptr, ptr %4, align 8, !dbg !5577
  %7 = icmp ne ptr %6, null, !dbg !5577
  br i1 %7, label %8, label %13, !dbg !5579

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 8, !dbg !5580
  %10 = getelementptr inbounds i8, ptr %9, i64 0, !dbg !5580
  %11 = load i8, ptr %10, align 1, !dbg !5580
  %12 = icmp ne i8 %11, 0, !dbg !5581
  br i1 %12, label %15, label %13, !dbg !5582

13:                                               ; preds = %8, %2
  %14 = load i32, ptr %5, align 4, !dbg !5583
  store i32 %14, ptr %3, align 4, !dbg !5584
  br label %18, !dbg !5584

15:                                               ; preds = %8
  %16 = load ptr, ptr %4, align 8, !dbg !5585
  %17 = call i32 @atoi(ptr noundef %16) #11, !dbg !5586
  store i32 %17, ptr %3, align 4, !dbg !5587
  br label %18, !dbg !5587

18:                                               ; preds = %15, %13
  %19 = load i32, ptr %3, align 4, !dbg !5588
  ret i32 %19, !dbg !5588
}

declare void @add_listener_addr(ptr noundef) #5

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strchr(ptr noundef, i32 noundef) #4

; Function Attrs: nounwind
declare noalias ptr @strdup(ptr noundef) #3

declare i32 @add_ip_list_range(ptr noundef, ptr noundef, ptr noundef) #5

declare ptr @allocate_super_memory_engine_func(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) #5

declare i32 @add_static_user_account(ptr noundef) #5

declare void @add_to_secrets_list(ptr noundef, ptr noundef) #5

; Function Attrs: nounwind
declare i64 @strtoul(ptr noundef, ptr noundef, i32 noundef) #3

declare void @add_alternate_server(ptr noundef) #5

declare void @add_aux_server(ptr noundef) #5

declare void @add_tls_alternate_server(ptr noundef) #5

; Function Attrs: nounwind
declare i32 @setgroups(i64 noundef, ptr noundef) #3

; Function Attrs: nounwind
declare i32 @getgid() #3

; Function Attrs: nounwind
declare i32 @setgid(i32 noundef) #3

; Function Attrs: nounwind
declare i32 @getuid() #3

; Function Attrs: nounwind
declare i32 @setuid(i32 noundef) #3

declare ptr @get_dbdriver() #5

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @THREAD_setup() #0 !dbg !5589 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata ptr %1, metadata !5590, metadata !DIExpression()), !dbg !5591
  store i8 0, ptr @some_buffer, align 16, !dbg !5592
  store i32 0, ptr %1, align 4, !dbg !5593
  br label %2, !dbg !5595

2:                                                ; preds = %10, %0
  %3 = load i32, ptr %1, align 4, !dbg !5596
  %4 = icmp slt i32 %3, 1, !dbg !5598
  br i1 %4, label %5, label %13, !dbg !5599

5:                                                ; preds = %2
  %6 = load i32, ptr %1, align 4, !dbg !5600
  %7 = sext i32 %6 to i64, !dbg !5602
  %8 = getelementptr inbounds [256 x %union.pthread_mutex_t], ptr @mutex_buf, i64 0, i64 %7, !dbg !5602
  %9 = call i32 @pthread_mutex_init(ptr noundef %8, ptr noundef null) #10, !dbg !5603
  br label %10, !dbg !5604

10:                                               ; preds = %5
  %11 = load i32, ptr %1, align 4, !dbg !5605
  %12 = add nsw i32 %11, 1, !dbg !5605
  store i32 %12, ptr %1, align 4, !dbg !5605
  br label %2, !dbg !5606, !llvm.loop !5607

13:                                               ; preds = %2
  store i32 1, ptr @mutex_buf_initialized, align 4, !dbg !5609
  ret i32 1, !dbg !5610
}

declare i32 @OPENSSL_init_ssl(i64 noundef, ptr noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adjust_key_file_names() #0 !dbg !5611 {
  %1 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 9), align 2, !dbg !5612
  %2 = icmp ne i8 %1, 0, !dbg !5612
  br i1 %2, label %3, label %4, !dbg !5614

3:                                                ; preds = %0
  call void @adjust_key_file_name(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 9), ptr noundef @.str.259, i32 noundef 1), !dbg !5615
  br label %4, !dbg !5615

4:                                                ; preds = %3, %0
  call void @adjust_key_file_name(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 10), ptr noundef @.str.260, i32 noundef 1), !dbg !5616
  call void @adjust_key_file_name(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 11), ptr noundef @.str.261, i32 noundef 1), !dbg !5617
  %5 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 13), align 2, !dbg !5618
  %6 = icmp ne i8 %5, 0, !dbg !5618
  br i1 %6, label %7, label %8, !dbg !5620

7:                                                ; preds = %4
  call void @adjust_key_file_name(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 13), ptr noundef @.str.262, i32 noundef 0), !dbg !5621
  br label %8, !dbg !5621

8:                                                ; preds = %7, %4
  ret void, !dbg !5622
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @openssl_load_certificates() #0 !dbg !5623 {
  %1 = call i32 @pthread_mutex_lock(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 20)) #10, !dbg !5624
  %2 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 17), align 8, !dbg !5625
  %3 = icmp ne i32 %2, 0, !dbg !5627
  br i1 %3, label %21, label %4, !dbg !5628

4:                                                ; preds = %0
  %5 = call ptr @TLS_server_method(), !dbg !5629
  call void @set_ctx(ptr noundef @turn_params, ptr noundef @.str.267, ptr noundef %5), !dbg !5631
  %6 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 14), align 4, !dbg !5632
  %7 = icmp ne i32 %6, 0, !dbg !5634
  br i1 %7, label %10, label %8, !dbg !5635

8:                                                ; preds = %4
  %9 = call ptr @TLSv1_server_method(), !dbg !5636
  call void @set_ctx(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 1), ptr noundef @.str.268, ptr noundef %9), !dbg !5638
  br label %10, !dbg !5639

10:                                               ; preds = %8, %4
  %11 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 15), align 8, !dbg !5640
  %12 = icmp ne i32 %11, 0, !dbg !5642
  br i1 %12, label %15, label %13, !dbg !5643

13:                                               ; preds = %10
  %14 = call ptr @TLSv1_1_server_method(), !dbg !5644
  call void @set_ctx(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 2), ptr noundef @.str.269, ptr noundef %14), !dbg !5646
  br label %15, !dbg !5647

15:                                               ; preds = %13, %10
  %16 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 16), align 4, !dbg !5648
  %17 = icmp ne i32 %16, 0, !dbg !5650
  br i1 %17, label %20, label %18, !dbg !5651

18:                                               ; preds = %15
  %19 = call ptr @TLSv1_2_server_method(), !dbg !5652
  call void @set_ctx(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 3), ptr noundef @.str.270, ptr noundef %19), !dbg !5654
  br label %20, !dbg !5655

20:                                               ; preds = %18, %15
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.271, ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 7)), !dbg !5656
  br label %21, !dbg !5657

21:                                               ; preds = %20, %0
  %22 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 18), align 4, !dbg !5658
  %23 = icmp ne i32 %22, 0, !dbg !5660
  br i1 %23, label %33, label %24, !dbg !5661

24:                                               ; preds = %21
  %25 = call ptr @DTLS_server_method(), !dbg !5662
  call void @set_ctx(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 4), ptr noundef @.str.272, ptr noundef %25), !dbg !5664
  %26 = call ptr @DTLSv1_2_server_method(), !dbg !5665
  call void @set_ctx(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 5), ptr noundef @.str.273, ptr noundef %26), !dbg !5666
  %27 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 5), align 8, !dbg !5667
  %28 = call i64 @SSL_CTX_ctrl(ptr noundef %27, i32 noundef 41, i64 noundef 1, ptr noundef null), !dbg !5667
  %29 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 5), align 8, !dbg !5668
  call void @setup_dtls_callbacks(ptr noundef %29), !dbg !5669
  %30 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 4), align 8, !dbg !5670
  %31 = call i64 @SSL_CTX_ctrl(ptr noundef %30, i32 noundef 41, i64 noundef 1, ptr noundef null), !dbg !5670
  %32 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 4), align 8, !dbg !5671
  call void @setup_dtls_callbacks(ptr noundef %32), !dbg !5672
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.274, ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 7)), !dbg !5673
  br label %33, !dbg !5674

33:                                               ; preds = %24, %21
  %34 = call i32 @pthread_mutex_unlock(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 20)) #10, !dbg !5675
  ret void, !dbg !5676
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adjust_key_file_name(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !5677 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !5680, metadata !DIExpression()), !dbg !5681
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !5682, metadata !DIExpression()), !dbg !5683
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !5684, metadata !DIExpression()), !dbg !5685
  call void @llvm.dbg.declare(metadata ptr %7, metadata !5686, metadata !DIExpression()), !dbg !5687
  store ptr null, ptr %7, align 8, !dbg !5687
  %9 = load ptr, ptr %4, align 8, !dbg !5688
  %10 = getelementptr inbounds i8, ptr %9, i64 0, !dbg !5688
  %11 = load i8, ptr %10, align 1, !dbg !5688
  %12 = icmp ne i8 %11, 0, !dbg !5688
  br i1 %12, label %15, label %13, !dbg !5690

13:                                               ; preds = %3
  %14 = load ptr, ptr %5, align 8, !dbg !5691
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.263, ptr noundef %14), !dbg !5693
  br label %51, !dbg !5694

15:                                               ; preds = %3
  %16 = load ptr, ptr %4, align 8, !dbg !5695
  %17 = call ptr @find_config_file(ptr noundef %16, i32 noundef 1), !dbg !5697
  store ptr %17, ptr %7, align 8, !dbg !5698
  call void @llvm.dbg.declare(metadata ptr %8, metadata !5699, metadata !DIExpression()), !dbg !5701
  %18 = load ptr, ptr %7, align 8, !dbg !5702
  %19 = icmp ne ptr %18, null, !dbg !5702
  br i1 %19, label %20, label %23, !dbg !5702

20:                                               ; preds = %15
  %21 = load ptr, ptr %7, align 8, !dbg !5703
  %22 = call noalias ptr @fopen(ptr noundef %21, ptr noundef @.str.177), !dbg !5704
  br label %24, !dbg !5702

23:                                               ; preds = %15
  br label %24, !dbg !5702

24:                                               ; preds = %23, %20
  %25 = phi ptr [ %22, %20 ], [ null, %23 ], !dbg !5702
  store ptr %25, ptr %8, align 8, !dbg !5701
  %26 = load ptr, ptr %8, align 8, !dbg !5705
  %27 = icmp ne ptr %26, null, !dbg !5705
  br i1 %27, label %31, label %28, !dbg !5707

28:                                               ; preds = %24
  %29 = load ptr, ptr %5, align 8, !dbg !5708
  %30 = load ptr, ptr %4, align 8, !dbg !5710
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 2, ptr noundef @.str.264, ptr noundef %29, ptr noundef %30), !dbg !5711
  br label %51, !dbg !5712

31:                                               ; preds = %24
  %32 = load ptr, ptr %8, align 8, !dbg !5713
  %33 = call i32 @fclose(ptr noundef %32), !dbg !5715
  br label %34

34:                                               ; preds = %31
  %35 = load ptr, ptr %7, align 8, !dbg !5716
  %36 = icmp ne ptr %35, null, !dbg !5716
  br i1 %36, label %40, label %37, !dbg !5718

37:                                               ; preds = %34
  %38 = load ptr, ptr %5, align 8, !dbg !5719
  %39 = load ptr, ptr %4, align 8, !dbg !5721
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 2, ptr noundef @.str.265, ptr noundef %38, ptr noundef %39), !dbg !5722
  br label %51, !dbg !5723

40:                                               ; preds = %34
  %41 = load ptr, ptr %4, align 8, !dbg !5724
  %42 = load ptr, ptr %7, align 8, !dbg !5725
  %43 = call ptr @strncpy(ptr noundef %41, ptr noundef %42, i64 noundef 1024) #10, !dbg !5726
  %44 = load ptr, ptr %4, align 8, !dbg !5727
  %45 = getelementptr inbounds i8, ptr %44, i64 1024, !dbg !5727
  store i8 0, ptr %45, align 1, !dbg !5728
  %46 = load ptr, ptr %7, align 8, !dbg !5729
  %47 = icmp ne ptr %46, null, !dbg !5729
  br i1 %47, label %48, label %50, !dbg !5731

48:                                               ; preds = %40
  %49 = load ptr, ptr %7, align 8, !dbg !5732
  call void @free(ptr noundef %49) #10, !dbg !5733
  br label %50, !dbg !5733

50:                                               ; preds = %48, %40
  br label %62, !dbg !5734

51:                                               ; preds = %37, %28, %13
  call void @llvm.dbg.label(metadata !5735), !dbg !5736
  %52 = load i32, ptr %6, align 4, !dbg !5737
  %53 = icmp ne i32 %52, 0, !dbg !5737
  br i1 %53, label %54, label %56, !dbg !5740

54:                                               ; preds = %51
  store i32 1, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 17), align 8, !dbg !5741
  store i32 1, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 18), align 4, !dbg !5743
  %55 = load ptr, ptr %5, align 8, !dbg !5744
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 2, ptr noundef @.str.266, ptr noundef %55), !dbg !5745
  br label %56, !dbg !5746

56:                                               ; preds = %54, %51
  %57 = load ptr, ptr %7, align 8, !dbg !5747
  %58 = icmp ne ptr %57, null, !dbg !5747
  br i1 %58, label %59, label %61, !dbg !5749

59:                                               ; preds = %56
  %60 = load ptr, ptr %7, align 8, !dbg !5750
  call void @free(ptr noundef %60) #10, !dbg !5751
  br label %61, !dbg !5751

61:                                               ; preds = %59, %56
  br label %62, !dbg !5752

62:                                               ; preds = %61, %50
  ret void, !dbg !5753
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_ctx(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !5754 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !5763, metadata !DIExpression()), !dbg !5764
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !5765, metadata !DIExpression()), !dbg !5766
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !5767, metadata !DIExpression()), !dbg !5768
  call void @llvm.dbg.declare(metadata ptr %7, metadata !5769, metadata !DIExpression()), !dbg !5770
  %19 = load ptr, ptr %6, align 8, !dbg !5771
  %20 = call ptr @SSL_CTX_new(ptr noundef %19), !dbg !5772
  store ptr %20, ptr %7, align 8, !dbg !5770
  call void @llvm.dbg.declare(metadata ptr %8, metadata !5773, metadata !DIExpression()), !dbg !5774
  store i32 0, ptr %8, align 4, !dbg !5774
  call void @llvm.dbg.declare(metadata ptr %9, metadata !5775, metadata !DIExpression()), !dbg !5776
  store i32 0, ptr %9, align 4, !dbg !5776
  %21 = load ptr, ptr %7, align 8, !dbg !5777
  call void @SSL_CTX_set_alpn_select_cb(ptr noundef %21, ptr noundef @ServerALPNCallback, ptr noundef null), !dbg !5778
  %22 = load ptr, ptr %7, align 8, !dbg !5779
  call void @SSL_CTX_set_default_passwd_cb_userdata(ptr noundef %22, ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 12)), !dbg !5780
  %23 = load ptr, ptr %7, align 8, !dbg !5781
  call void @SSL_CTX_set_default_passwd_cb(ptr noundef %23, ptr noundef @pem_password_func), !dbg !5782
  %24 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 7), align 4, !dbg !5783
  %25 = icmp ne i8 %24, 0, !dbg !5785
  br i1 %25, label %36, label %26, !dbg !5786

26:                                               ; preds = %3
  br label %27, !dbg !5787

27:                                               ; preds = %26
  br i1 icmp ne (ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 7), ptr @.str.275), label %28, label %34, !dbg !5788

28:                                               ; preds = %27
  call void @llvm.dbg.declare(metadata ptr %10, metadata !5790, metadata !DIExpression()), !dbg !5795
  store i64 1025, ptr %10, align 8, !dbg !5795
  %29 = load i64, ptr %10, align 8, !dbg !5795
  %30 = call ptr @strncpy(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 7), ptr noundef @.str.275, i64 noundef %29) #10, !dbg !5795
  %31 = load i64, ptr %10, align 8, !dbg !5795
  %32 = sub i64 %31, 1, !dbg !5795
  %33 = getelementptr inbounds i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 7), i64 %32, !dbg !5795
  store i8 0, ptr %33, align 1, !dbg !5795
  br label %34, !dbg !5796

34:                                               ; preds = %28, %27
  br label %35, !dbg !5788

35:                                               ; preds = %34
  br label %36, !dbg !5788

36:                                               ; preds = %35, %3
  %37 = load ptr, ptr %7, align 8, !dbg !5797
  %38 = call i32 @SSL_CTX_set_cipher_list(ptr noundef %37, ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 7)), !dbg !5798
  %39 = load ptr, ptr %7, align 8, !dbg !5799
  %40 = call i64 @SSL_CTX_ctrl(ptr noundef %39, i32 noundef 44, i64 noundef 0, ptr noundef null), !dbg !5799
  %41 = load ptr, ptr %7, align 8, !dbg !5800
  %42 = call i32 @SSL_CTX_use_certificate_chain_file(ptr noundef %41, ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 10)), !dbg !5802
  %43 = icmp ne i32 %42, 0, !dbg !5802
  br i1 %43, label %46, label %44, !dbg !5803

44:                                               ; preds = %36
  %45 = load ptr, ptr %5, align 8, !dbg !5804
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.276, ptr noundef %45), !dbg !5806
  store i32 1, ptr %8, align 4, !dbg !5807
  br label %48, !dbg !5808

46:                                               ; preds = %36
  %47 = load ptr, ptr %5, align 8, !dbg !5809
  call void @print_abs_file_name(ptr noundef %47, ptr noundef @.str.277, ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 10)), !dbg !5811
  br label %48

48:                                               ; preds = %46, %44
  %49 = load ptr, ptr %7, align 8, !dbg !5812
  %50 = call i32 @SSL_CTX_use_PrivateKey_file(ptr noundef %49, ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 11), i32 noundef 1), !dbg !5814
  %51 = icmp ne i32 %50, 0, !dbg !5814
  br i1 %51, label %61, label %52, !dbg !5815

52:                                               ; preds = %48
  %53 = load ptr, ptr %7, align 8, !dbg !5816
  %54 = call i32 @SSL_CTX_use_RSAPrivateKey_file(ptr noundef %53, ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 11), i32 noundef 1), !dbg !5819
  %55 = icmp ne i32 %54, 0, !dbg !5819
  br i1 %55, label %58, label %56, !dbg !5820

56:                                               ; preds = %52
  %57 = load ptr, ptr %5, align 8, !dbg !5821
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.278, ptr noundef %57), !dbg !5823
  store i32 1, ptr %8, align 4, !dbg !5824
  br label %60, !dbg !5825

58:                                               ; preds = %52
  %59 = load ptr, ptr %5, align 8, !dbg !5826
  call void @print_abs_file_name(ptr noundef %59, ptr noundef @.str.279, ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 11)), !dbg !5828
  br label %60

60:                                               ; preds = %58, %56
  br label %63, !dbg !5829

61:                                               ; preds = %48
  %62 = load ptr, ptr %5, align 8, !dbg !5830
  call void @print_abs_file_name(ptr noundef %62, ptr noundef @.str.280, ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 11)), !dbg !5832
  br label %63

63:                                               ; preds = %61, %60
  %64 = load ptr, ptr %7, align 8, !dbg !5833
  %65 = call i32 @SSL_CTX_check_private_key(ptr noundef %64), !dbg !5835
  %66 = icmp ne i32 %65, 0, !dbg !5835
  br i1 %66, label %69, label %67, !dbg !5836

67:                                               ; preds = %63
  %68 = load ptr, ptr %5, align 8, !dbg !5837
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.281, ptr noundef %68), !dbg !5839
  store i32 1, ptr %8, align 4, !dbg !5840
  br label %69, !dbg !5841

69:                                               ; preds = %67, %63
  %70 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 9), align 2, !dbg !5842
  %71 = icmp ne i8 %70, 0, !dbg !5842
  br i1 %71, label %72, label %82, !dbg !5844

72:                                               ; preds = %69
  %73 = load ptr, ptr %7, align 8, !dbg !5845
  %74 = call i32 @SSL_CTX_load_verify_locations(ptr noundef %73, ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 9), ptr noundef null), !dbg !5848
  %75 = icmp ne i32 %74, 0, !dbg !5848
  br i1 %75, label %77, label %76, !dbg !5849

76:                                               ; preds = %72
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.282, ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 9)), !dbg !5850
  store i32 1, ptr %8, align 4, !dbg !5852
  br label %77, !dbg !5853

77:                                               ; preds = %76, %72
  %78 = load ptr, ptr %7, align 8, !dbg !5854
  %79 = call ptr @SSL_load_client_CA_file(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 9)), !dbg !5855
  call void @SSL_CTX_set_client_CA_list(ptr noundef %78, ptr noundef %79), !dbg !5856
  %80 = load ptr, ptr %7, align 8, !dbg !5857
  call void @SSL_CTX_set_verify(ptr noundef %80, i32 noundef 7, ptr noundef null), !dbg !5858
  %81 = load ptr, ptr %7, align 8, !dbg !5859
  call void @SSL_CTX_set_verify_depth(ptr noundef %81, i32 noundef 9), !dbg !5860
  br label %84, !dbg !5861

82:                                               ; preds = %69
  %83 = load ptr, ptr %7, align 8, !dbg !5862
  call void @SSL_CTX_set_verify(ptr noundef %83, i32 noundef 0, ptr noundef null), !dbg !5864
  br label %84

84:                                               ; preds = %82, %77
  call void @llvm.dbg.declare(metadata ptr %11, metadata !5865, metadata !DIExpression()), !dbg !5867
  store i32 0, ptr %11, align 4, !dbg !5867
  call void @llvm.dbg.declare(metadata ptr %12, metadata !5868, metadata !DIExpression()), !dbg !5869
  store i32 0, ptr %12, align 4, !dbg !5869
  call void @llvm.dbg.declare(metadata ptr %13, metadata !5870, metadata !DIExpression()), !dbg !5871
  store ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 8), ptr %13, align 8, !dbg !5871
  %85 = load ptr, ptr %13, align 8, !dbg !5872
  %86 = getelementptr inbounds i8, ptr %85, i64 0, !dbg !5872
  %87 = load i8, ptr %86, align 1, !dbg !5872
  %88 = icmp ne i8 %87, 0, !dbg !5874
  br i1 %88, label %90, label %89, !dbg !5875

89:                                               ; preds = %84
  store i32 1, ptr %12, align 4, !dbg !5876
  br label %90, !dbg !5878

90:                                               ; preds = %89, %84
  %91 = load ptr, ptr %13, align 8, !dbg !5879
  %92 = getelementptr inbounds i8, ptr %91, i64 0, !dbg !5879
  %93 = load i8, ptr %92, align 1, !dbg !5879
  %94 = icmp ne i8 %93, 0, !dbg !5879
  br i1 %94, label %95, label %116, !dbg !5881

95:                                               ; preds = %90
  %96 = load ptr, ptr %13, align 8, !dbg !5882
  %97 = call i32 @OBJ_sn2nid(ptr noundef %96), !dbg !5885
  store i32 %97, ptr %11, align 4, !dbg !5886
  %98 = load i32, ptr %11, align 4, !dbg !5887
  %99 = icmp eq i32 %98, 0, !dbg !5889
  br i1 %99, label %100, label %104, !dbg !5890

100:                                              ; preds = %95
  %101 = load ptr, ptr %13, align 8, !dbg !5891
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.283, ptr noundef %101), !dbg !5893
  store ptr @.str.284, ptr %13, align 8, !dbg !5894
  %102 = load ptr, ptr %13, align 8, !dbg !5895
  %103 = call i32 @OBJ_sn2nid(ptr noundef %102), !dbg !5896
  store i32 %103, ptr %11, align 4, !dbg !5897
  store i32 1, ptr %12, align 4, !dbg !5898
  br label %104, !dbg !5899

104:                                              ; preds = %100, %95
  call void @llvm.dbg.declare(metadata ptr %14, metadata !5900, metadata !DIExpression()), !dbg !5905
  %105 = load i32, ptr %11, align 4, !dbg !5906
  %106 = call ptr @EC_KEY_new_by_curve_name(i32 noundef %105), !dbg !5907
  store ptr %106, ptr %14, align 8, !dbg !5905
  %107 = load ptr, ptr %14, align 8, !dbg !5908
  %108 = icmp ne ptr %107, null, !dbg !5908
  br i1 %108, label %110, label %109, !dbg !5910

109:                                              ; preds = %104
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.285, ptr noundef @__FUNCTION__.set_ctx), !dbg !5911
  store i32 1, ptr %12, align 4, !dbg !5913
  br label %115, !dbg !5914

110:                                              ; preds = %104
  %111 = load ptr, ptr %7, align 8, !dbg !5915
  %112 = load ptr, ptr %14, align 8, !dbg !5915
  %113 = call i64 @SSL_CTX_ctrl(ptr noundef %111, i32 noundef 4, i64 noundef 0, ptr noundef %112), !dbg !5915
  %114 = load ptr, ptr %14, align 8, !dbg !5917
  call void @EC_KEY_free(ptr noundef %114), !dbg !5918
  br label %115

115:                                              ; preds = %110, %109
  br label %116, !dbg !5919

116:                                              ; preds = %115, %90
  %117 = load i32, ptr %12, align 4, !dbg !5920
  %118 = icmp ne i32 %117, 0, !dbg !5920
  br i1 %118, label %119, label %120, !dbg !5922

119:                                              ; preds = %116
  store i32 0, ptr %12, align 4, !dbg !5923
  br label %120, !dbg !5925

120:                                              ; preds = %119, %116
  call void @llvm.dbg.declare(metadata ptr %15, metadata !5926, metadata !DIExpression()), !dbg !5931
  store ptr null, ptr %15, align 8, !dbg !5931
  %121 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 13), align 2, !dbg !5932
  %122 = icmp ne i8 %121, 0, !dbg !5932
  br i1 %122, label %123, label %138, !dbg !5934

123:                                              ; preds = %120
  call void @llvm.dbg.declare(metadata ptr %16, metadata !5935, metadata !DIExpression()), !dbg !5937
  %124 = call noalias ptr @fopen(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 13), ptr noundef @.str.177), !dbg !5938
  store ptr %124, ptr %16, align 8, !dbg !5937
  %125 = load ptr, ptr %16, align 8, !dbg !5939
  %126 = icmp ne ptr %125, null, !dbg !5939
  br i1 %126, label %128, label %127, !dbg !5941

127:                                              ; preds = %123
  call void @perror(ptr noundef @.str.286), !dbg !5942
  br label %137, !dbg !5944

128:                                              ; preds = %123
  %129 = load ptr, ptr %16, align 8, !dbg !5945
  %130 = call ptr @PEM_read_DHparams(ptr noundef %129, ptr noundef null, ptr noundef null, ptr noundef null), !dbg !5947
  store ptr %130, ptr %15, align 8, !dbg !5948
  %131 = load ptr, ptr %16, align 8, !dbg !5949
  %132 = call i32 @fclose(ptr noundef %131), !dbg !5950
  %133 = load ptr, ptr %15, align 8, !dbg !5951
  %134 = icmp ne ptr %133, null, !dbg !5951
  br i1 %134, label %135, label %136, !dbg !5953

135:                                              ; preds = %128
  store i32 3, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 6), align 8, !dbg !5954
  br label %136, !dbg !5956

136:                                              ; preds = %135, %128
  br label %137

137:                                              ; preds = %136, %127
  br label %138, !dbg !5957

138:                                              ; preds = %137, %120
  %139 = load ptr, ptr %15, align 8, !dbg !5958
  %140 = icmp ne ptr %139, null, !dbg !5958
  br i1 %140, label %155, label %141, !dbg !5960

141:                                              ; preds = %138
  %142 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 6), align 8, !dbg !5961
  %143 = icmp eq i32 %142, 0, !dbg !5964
  br i1 %143, label %144, label %146, !dbg !5965

144:                                              ; preds = %141
  %145 = call ptr @get_dh566(), !dbg !5966
  store ptr %145, ptr %15, align 8, !dbg !5967
  br label %154, !dbg !5968

146:                                              ; preds = %141
  %147 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 6), align 8, !dbg !5969
  %148 = icmp eq i32 %147, 1, !dbg !5971
  br i1 %148, label %149, label %151, !dbg !5972

149:                                              ; preds = %146
  %150 = call ptr @get_dh1066(), !dbg !5973
  store ptr %150, ptr %15, align 8, !dbg !5974
  br label %153, !dbg !5975

151:                                              ; preds = %146
  %152 = call ptr @get_dh2066(), !dbg !5976
  store ptr %152, ptr %15, align 8, !dbg !5977
  br label %153

153:                                              ; preds = %151, %149
  br label %154

154:                                              ; preds = %153, %144
  br label %155, !dbg !5978

155:                                              ; preds = %154, %138
  %156 = load ptr, ptr %15, align 8, !dbg !5979
  %157 = icmp ne ptr %156, null, !dbg !5979
  br i1 %157, label %159, label %158, !dbg !5981

158:                                              ; preds = %155
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.287, ptr noundef @__FUNCTION__.set_ctx), !dbg !5982
  store i32 1, ptr %8, align 4, !dbg !5984
  br label %167, !dbg !5985

159:                                              ; preds = %155
  %160 = load ptr, ptr %7, align 8, !dbg !5986
  %161 = load ptr, ptr %15, align 8, !dbg !5986
  %162 = call i64 @SSL_CTX_ctrl(ptr noundef %160, i32 noundef 3, i64 noundef 0, ptr noundef %161), !dbg !5986
  %163 = icmp ne i64 1, %162, !dbg !5989
  br i1 %163, label %164, label %165, !dbg !5990

164:                                              ; preds = %159
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.288, ptr noundef @__FUNCTION__.set_ctx), !dbg !5991
  store i32 1, ptr %8, align 4, !dbg !5993
  br label %165, !dbg !5994

165:                                              ; preds = %164, %159
  %166 = load ptr, ptr %15, align 8, !dbg !5995
  call void @DH_free(ptr noundef %166), !dbg !5996
  br label %167

167:                                              ; preds = %165, %158
  %168 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 88), align 8, !dbg !5997
  %169 = icmp ne i8 %168, 0, !dbg !5997
  br i1 %169, label %170, label %193, !dbg !6000

170:                                              ; preds = %167
  call void @llvm.dbg.declare(metadata ptr %17, metadata !6001, metadata !DIExpression()), !dbg !6003
  %171 = call noalias ptr @fopen(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 88), ptr noundef @.str.177), !dbg !6004
  store ptr %171, ptr %17, align 8, !dbg !6003
  %172 = load ptr, ptr %17, align 8, !dbg !6005
  %173 = icmp ne ptr %172, null, !dbg !6005
  br i1 %173, label %175, label %174, !dbg !6007

174:                                              ; preds = %170
  call void @perror(ptr noundef @.str.289), !dbg !6008
  br label %192, !dbg !6010

175:                                              ; preds = %170
  %176 = load ptr, ptr %17, align 8, !dbg !6011
  %177 = call i32 @fseek(ptr noundef %176, i64 noundef 0, i32 noundef 0), !dbg !6013
  %178 = load ptr, ptr %17, align 8, !dbg !6014
  %179 = call i64 @fread(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 89), i64 noundef 1, i64 noundef 16, ptr noundef %178), !dbg !6015
  %180 = trunc i64 %179 to i32, !dbg !6015
  store i32 %180, ptr %9, align 4, !dbg !6016
  %181 = load i32, ptr %9, align 4, !dbg !6017
  %182 = icmp eq i32 %181, 0, !dbg !6019
  br i1 %182, label %183, label %184, !dbg !6020

183:                                              ; preds = %175
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.179, ptr noundef @__FUNCTION__.set_ctx), !dbg !6021
  br label %189, !dbg !6023

184:                                              ; preds = %175
  %185 = load i32, ptr %9, align 4, !dbg !6024
  %186 = icmp ne i32 %185, 16, !dbg !6027
  br i1 %186, label %187, label %188, !dbg !6028

187:                                              ; preds = %184
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.180, ptr noundef @__FUNCTION__.set_ctx), !dbg !6029
  br label %188, !dbg !6031

188:                                              ; preds = %187, %184
  br label %189

189:                                              ; preds = %188, %183
  %190 = load ptr, ptr %17, align 8, !dbg !6032
  %191 = call i32 @fclose(ptr noundef %190), !dbg !6033
  br label %192

192:                                              ; preds = %189, %174
  br label %193, !dbg !6034

193:                                              ; preds = %192, %167
  call void @llvm.dbg.declare(metadata ptr %18, metadata !6035, metadata !DIExpression()), !dbg !6037
  store i32 0, ptr %18, align 4, !dbg !6037
  %194 = load i32, ptr %18, align 4, !dbg !6038
  %195 = or i32 %194, 0, !dbg !6038
  store i32 %195, ptr %18, align 4, !dbg !6038
  %196 = load i32, ptr %18, align 4, !dbg !6039
  %197 = sext i32 %196 to i64, !dbg !6039
  %198 = or i64 %197, 33554432, !dbg !6039
  %199 = trunc i64 %198 to i32, !dbg !6039
  store i32 %199, ptr %18, align 4, !dbg !6039
  %200 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 14), align 4, !dbg !6040
  %201 = icmp ne i32 %200, 0, !dbg !6042
  br i1 %201, label %202, label %207, !dbg !6043

202:                                              ; preds = %193
  %203 = load i32, ptr %18, align 4, !dbg !6044
  %204 = sext i32 %203 to i64, !dbg !6044
  %205 = or i64 %204, 67108864, !dbg !6044
  %206 = trunc i64 %205 to i32, !dbg !6044
  store i32 %206, ptr %18, align 4, !dbg !6044
  br label %207, !dbg !6045

207:                                              ; preds = %202, %193
  %208 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 15), align 8, !dbg !6046
  %209 = icmp ne i32 %208, 0, !dbg !6048
  br i1 %209, label %210, label %215, !dbg !6049

210:                                              ; preds = %207
  %211 = load i32, ptr %18, align 4, !dbg !6050
  %212 = sext i32 %211 to i64, !dbg !6050
  %213 = or i64 %212, 268435456, !dbg !6050
  %214 = trunc i64 %213 to i32, !dbg !6050
  store i32 %214, ptr %18, align 4, !dbg !6050
  br label %215, !dbg !6051

215:                                              ; preds = %210, %207
  %216 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 16), align 4, !dbg !6052
  %217 = icmp ne i32 %216, 0, !dbg !6054
  br i1 %217, label %218, label %223, !dbg !6055

218:                                              ; preds = %215
  %219 = load i32, ptr %18, align 4, !dbg !6056
  %220 = sext i32 %219 to i64, !dbg !6056
  %221 = or i64 %220, 134217728, !dbg !6056
  %222 = trunc i64 %221 to i32, !dbg !6056
  store i32 %222, ptr %18, align 4, !dbg !6056
  br label %223, !dbg !6057

223:                                              ; preds = %218, %215
  %224 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 14), align 4, !dbg !6058
  %225 = icmp ne i32 %224, 0, !dbg !6060
  br i1 %225, label %226, label %231, !dbg !6061

226:                                              ; preds = %223
  %227 = load i32, ptr %18, align 4, !dbg !6062
  %228 = sext i32 %227 to i64, !dbg !6062
  %229 = or i64 %228, 67108864, !dbg !6062
  %230 = trunc i64 %229 to i32, !dbg !6062
  store i32 %230, ptr %18, align 4, !dbg !6062
  br label %231, !dbg !6063

231:                                              ; preds = %226, %223
  %232 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 16), align 4, !dbg !6064
  %233 = icmp ne i32 %232, 0, !dbg !6066
  br i1 %233, label %234, label %239, !dbg !6067

234:                                              ; preds = %231
  %235 = load i32, ptr %18, align 4, !dbg !6068
  %236 = sext i32 %235 to i64, !dbg !6068
  %237 = or i64 %236, 134217728, !dbg !6068
  %238 = trunc i64 %237 to i32, !dbg !6068
  store i32 %238, ptr %18, align 4, !dbg !6068
  br label %239, !dbg !6069

239:                                              ; preds = %234, %231
  %240 = load i32, ptr %18, align 4, !dbg !6070
  %241 = sext i32 %240 to i64, !dbg !6070
  %242 = or i64 %241, 4194304, !dbg !6070
  %243 = trunc i64 %242 to i32, !dbg !6070
  store i32 %243, ptr %18, align 4, !dbg !6070
  %244 = load i32, ptr %18, align 4, !dbg !6071
  %245 = or i32 %244, 0, !dbg !6071
  store i32 %245, ptr %18, align 4, !dbg !6071
  %246 = load i32, ptr %18, align 4, !dbg !6072
  %247 = or i32 %246, 0, !dbg !6072
  store i32 %247, ptr %18, align 4, !dbg !6072
  %248 = load ptr, ptr %7, align 8, !dbg !6073
  %249 = load i32, ptr %18, align 4, !dbg !6074
  %250 = sext i32 %249 to i64, !dbg !6074
  %251 = call i64 @SSL_CTX_set_options(ptr noundef %248, i64 noundef %250), !dbg !6075
  %252 = load ptr, ptr %4, align 8, !dbg !6076
  %253 = load ptr, ptr %252, align 8, !dbg !6078
  %254 = icmp eq ptr %253, null, !dbg !6079
  br i1 %254, label %255, label %258, !dbg !6080

255:                                              ; preds = %239
  %256 = load ptr, ptr %7, align 8, !dbg !6081
  %257 = load ptr, ptr %4, align 8, !dbg !6083
  store ptr %256, ptr %257, align 8, !dbg !6084
  br label %267, !dbg !6085

258:                                              ; preds = %239
  %259 = load i32, ptr %8, align 4, !dbg !6086
  %260 = icmp ne i32 %259, 0, !dbg !6086
  br i1 %260, label %266, label %261, !dbg !6088

261:                                              ; preds = %258
  %262 = load ptr, ptr %4, align 8, !dbg !6089
  %263 = load ptr, ptr %262, align 8, !dbg !6091
  call void @SSL_CTX_free(ptr noundef %263), !dbg !6092
  %264 = load ptr, ptr %7, align 8, !dbg !6093
  %265 = load ptr, ptr %4, align 8, !dbg !6094
  store ptr %264, ptr %265, align 8, !dbg !6095
  br label %266, !dbg !6096

266:                                              ; preds = %261, %258
  br label %267

267:                                              ; preds = %266, %255
  ret void, !dbg !6097
}

declare ptr @TLS_server_method() #5

declare ptr @TLSv1_server_method() #5

declare ptr @TLSv1_1_server_method() #5

declare ptr @TLSv1_2_server_method() #5

declare ptr @DTLS_server_method() #5

declare ptr @DTLSv1_2_server_method() #5

declare i64 @SSL_CTX_ctrl(ptr noundef, i32 noundef, i64 noundef, ptr noundef) #5

declare void @setup_dtls_callbacks(ptr noundef) #5

declare ptr @SSL_CTX_new(ptr noundef) #5

declare void @SSL_CTX_set_alpn_select_cb(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ServerALPNCallback(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) #0 !dbg !6098 {
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  %18 = alloca ptr, align 8
  %19 = alloca i8, align 1
  store ptr %0, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !6105, metadata !DIExpression()), !dbg !6106
  store ptr %1, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !6107, metadata !DIExpression()), !dbg !6108
  store ptr %2, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !6109, metadata !DIExpression()), !dbg !6110
  store ptr %3, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !6111, metadata !DIExpression()), !dbg !6112
  store i32 %4, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !6113, metadata !DIExpression()), !dbg !6114
  store ptr %5, ptr %13, align 8
  call void @llvm.dbg.declare(metadata ptr %13, metadata !6115, metadata !DIExpression()), !dbg !6116
  br label %20, !dbg !6117

20:                                               ; preds = %6
  %21 = load ptr, ptr %8, align 8, !dbg !6118
  store ptr %21, ptr %8, align 8, !dbg !6118
  br label %22, !dbg !6118

22:                                               ; preds = %20
  br label %23, !dbg !6120

23:                                               ; preds = %22
  %24 = load ptr, ptr %13, align 8, !dbg !6121
  store ptr %24, ptr %13, align 8, !dbg !6121
  br label %25, !dbg !6121

25:                                               ; preds = %23
  call void @llvm.dbg.declare(metadata ptr %14, metadata !6123, metadata !DIExpression()), !dbg !6124
  %26 = call i64 @strlen(ptr noundef @STUN_ALPN) #11, !dbg !6125
  %27 = trunc i64 %26 to i8, !dbg !6126
  store i8 %27, ptr %14, align 1, !dbg !6124
  call void @llvm.dbg.declare(metadata ptr %15, metadata !6127, metadata !DIExpression()), !dbg !6128
  %28 = call i64 @strlen(ptr noundef @TURN_ALPN) #11, !dbg !6129
  %29 = trunc i64 %28 to i8, !dbg !6130
  store i8 %29, ptr %15, align 1, !dbg !6128
  call void @llvm.dbg.declare(metadata ptr %16, metadata !6131, metadata !DIExpression()), !dbg !6132
  %30 = call i64 @strlen(ptr noundef @HTTP_ALPN) #11, !dbg !6133
  %31 = trunc i64 %30 to i8, !dbg !6134
  store i8 %31, ptr %16, align 1, !dbg !6132
  call void @llvm.dbg.declare(metadata ptr %17, metadata !6135, metadata !DIExpression()), !dbg !6136
  store i32 0, ptr %17, align 4, !dbg !6136
  call void @llvm.dbg.declare(metadata ptr %18, metadata !6137, metadata !DIExpression()), !dbg !6138
  %32 = load ptr, ptr %11, align 8, !dbg !6139
  store ptr %32, ptr %18, align 8, !dbg !6138
  br label %33, !dbg !6140

33:                                               ; preds = %124, %25
  %34 = load ptr, ptr %18, align 8, !dbg !6141
  %35 = load ptr, ptr %11, align 8, !dbg !6142
  %36 = load i32, ptr %12, align 4, !dbg !6143
  %37 = zext i32 %36 to i64, !dbg !6144
  %38 = getelementptr inbounds i8, ptr %35, i64 %37, !dbg !6144
  %39 = icmp ult ptr %34, %38, !dbg !6145
  br i1 %39, label %40, label %131, !dbg !6140

40:                                               ; preds = %33
  call void @llvm.dbg.declare(metadata ptr %19, metadata !6146, metadata !DIExpression()), !dbg !6148
  %41 = load ptr, ptr %18, align 8, !dbg !6149
  %42 = load i8, ptr %41, align 1, !dbg !6150
  store i8 %42, ptr %19, align 1, !dbg !6148
  %43 = load ptr, ptr %18, align 8, !dbg !6151
  %44 = getelementptr inbounds i8, ptr %43, i64 1, !dbg !6153
  %45 = load i8, ptr %19, align 1, !dbg !6154
  %46 = zext i8 %45 to i32, !dbg !6154
  %47 = sext i32 %46 to i64, !dbg !6155
  %48 = getelementptr inbounds i8, ptr %44, i64 %47, !dbg !6155
  %49 = load ptr, ptr %11, align 8, !dbg !6156
  %50 = load i32, ptr %12, align 4, !dbg !6157
  %51 = zext i32 %50 to i64, !dbg !6158
  %52 = getelementptr inbounds i8, ptr %49, i64 %51, !dbg !6158
  %53 = icmp ugt ptr %48, %52, !dbg !6159
  br i1 %53, label %54, label %55, !dbg !6160

54:                                               ; preds = %40
  br label %131, !dbg !6161

55:                                               ; preds = %40
  %56 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 68), align 8, !dbg !6162
  %57 = icmp ne i32 %56, 0, !dbg !6164
  br i1 %57, label %79, label %58, !dbg !6165

58:                                               ; preds = %55
  %59 = load i8, ptr %19, align 1, !dbg !6166
  %60 = zext i8 %59 to i32, !dbg !6166
  %61 = load i8, ptr %14, align 1, !dbg !6167
  %62 = zext i8 %61 to i32, !dbg !6167
  %63 = icmp eq i32 %60, %62, !dbg !6168
  br i1 %63, label %64, label %79, !dbg !6169

64:                                               ; preds = %58
  %65 = load ptr, ptr %18, align 8, !dbg !6170
  %66 = getelementptr inbounds i8, ptr %65, i64 1, !dbg !6171
  %67 = load i8, ptr %14, align 1, !dbg !6172
  %68 = zext i8 %67 to i64, !dbg !6172
  %69 = call i32 @memcmp(ptr noundef %66, ptr noundef @STUN_ALPN, i64 noundef %68) #11, !dbg !6173
  %70 = icmp eq i32 %69, 0, !dbg !6174
  br i1 %70, label %71, label %79, !dbg !6175

71:                                               ; preds = %64
  %72 = load ptr, ptr %18, align 8, !dbg !6176
  %73 = getelementptr inbounds i8, ptr %72, i64 1, !dbg !6178
  %74 = load ptr, ptr %9, align 8, !dbg !6179
  store ptr %73, ptr %74, align 8, !dbg !6180
  %75 = load i8, ptr %14, align 1, !dbg !6181
  %76 = load ptr, ptr %10, align 8, !dbg !6182
  store i8 %75, ptr %76, align 1, !dbg !6183
  %77 = load ptr, ptr %8, align 8, !dbg !6184
  %78 = call i32 @SSL_set_ex_data(ptr noundef %77, i32 noundef 0, ptr noundef @STUN_ALPN), !dbg !6184
  store i32 0, ptr %7, align 4, !dbg !6185
  br label %136, !dbg !6185

79:                                               ; preds = %64, %58, %55
  %80 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 67), align 4, !dbg !6186
  %81 = icmp ne i32 %80, 0, !dbg !6188
  br i1 %81, label %103, label %82, !dbg !6189

82:                                               ; preds = %79
  %83 = load i8, ptr %19, align 1, !dbg !6190
  %84 = zext i8 %83 to i32, !dbg !6190
  %85 = load i8, ptr %15, align 1, !dbg !6191
  %86 = zext i8 %85 to i32, !dbg !6191
  %87 = icmp eq i32 %84, %86, !dbg !6192
  br i1 %87, label %88, label %103, !dbg !6193

88:                                               ; preds = %82
  %89 = load ptr, ptr %18, align 8, !dbg !6194
  %90 = getelementptr inbounds i8, ptr %89, i64 1, !dbg !6195
  %91 = load i8, ptr %15, align 1, !dbg !6196
  %92 = zext i8 %91 to i64, !dbg !6196
  %93 = call i32 @memcmp(ptr noundef %90, ptr noundef @TURN_ALPN, i64 noundef %92) #11, !dbg !6197
  %94 = icmp eq i32 %93, 0, !dbg !6198
  br i1 %94, label %95, label %103, !dbg !6199

95:                                               ; preds = %88
  %96 = load ptr, ptr %18, align 8, !dbg !6200
  %97 = getelementptr inbounds i8, ptr %96, i64 1, !dbg !6202
  %98 = load ptr, ptr %9, align 8, !dbg !6203
  store ptr %97, ptr %98, align 8, !dbg !6204
  %99 = load i8, ptr %15, align 1, !dbg !6205
  %100 = load ptr, ptr %10, align 8, !dbg !6206
  store i8 %99, ptr %100, align 1, !dbg !6207
  %101 = load ptr, ptr %8, align 8, !dbg !6208
  %102 = call i32 @SSL_set_ex_data(ptr noundef %101, i32 noundef 0, ptr noundef @TURN_ALPN), !dbg !6208
  store i32 0, ptr %7, align 4, !dbg !6209
  br label %136, !dbg !6209

103:                                              ; preds = %88, %82, %79
  %104 = load i8, ptr %19, align 1, !dbg !6210
  %105 = zext i8 %104 to i32, !dbg !6210
  %106 = load i8, ptr %16, align 1, !dbg !6212
  %107 = zext i8 %106 to i32, !dbg !6212
  %108 = icmp eq i32 %105, %107, !dbg !6213
  br i1 %108, label %109, label %124, !dbg !6214

109:                                              ; preds = %103
  %110 = load ptr, ptr %18, align 8, !dbg !6215
  %111 = getelementptr inbounds i8, ptr %110, i64 1, !dbg !6216
  %112 = load i8, ptr %16, align 1, !dbg !6217
  %113 = zext i8 %112 to i64, !dbg !6217
  %114 = call i32 @memcmp(ptr noundef %111, ptr noundef @HTTP_ALPN, i64 noundef %113) #11, !dbg !6218
  %115 = icmp eq i32 %114, 0, !dbg !6219
  br i1 %115, label %116, label %124, !dbg !6220

116:                                              ; preds = %109
  %117 = load ptr, ptr %18, align 8, !dbg !6221
  %118 = getelementptr inbounds i8, ptr %117, i64 1, !dbg !6223
  %119 = load ptr, ptr %9, align 8, !dbg !6224
  store ptr %118, ptr %119, align 8, !dbg !6225
  %120 = load i8, ptr %16, align 1, !dbg !6226
  %121 = load ptr, ptr %10, align 8, !dbg !6227
  store i8 %120, ptr %121, align 1, !dbg !6228
  %122 = load ptr, ptr %8, align 8, !dbg !6229
  %123 = call i32 @SSL_set_ex_data(ptr noundef %122, i32 noundef 0, ptr noundef @HTTP_ALPN), !dbg !6229
  store i32 1, ptr %17, align 4, !dbg !6230
  br label %124, !dbg !6231

124:                                              ; preds = %116, %109, %103
  %125 = load i8, ptr %19, align 1, !dbg !6232
  %126 = zext i8 %125 to i32, !dbg !6232
  %127 = add nsw i32 1, %126, !dbg !6233
  %128 = load ptr, ptr %18, align 8, !dbg !6234
  %129 = sext i32 %127 to i64, !dbg !6234
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !6234
  store ptr %130, ptr %18, align 8, !dbg !6234
  br label %33, !dbg !6140, !llvm.loop !6235

131:                                              ; preds = %54, %33
  %132 = load i32, ptr %17, align 4, !dbg !6237
  %133 = icmp ne i32 %132, 0, !dbg !6237
  br i1 %133, label %134, label %135, !dbg !6239

134:                                              ; preds = %131
  store i32 0, ptr %7, align 4, !dbg !6240
  br label %136, !dbg !6240

135:                                              ; preds = %131
  store i32 3, ptr %7, align 4, !dbg !6241
  br label %136, !dbg !6241

136:                                              ; preds = %135, %134, %95, %71
  %137 = load i32, ptr %7, align 4, !dbg !6242
  ret i32 %137, !dbg !6242
}

declare void @SSL_CTX_set_default_passwd_cb_userdata(ptr noundef, ptr noundef) #5

declare void @SSL_CTX_set_default_passwd_cb(ptr noundef, ptr noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pem_password_func(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 !dbg !6243 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !6246, metadata !DIExpression()), !dbg !6247
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !6248, metadata !DIExpression()), !dbg !6249
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !6250, metadata !DIExpression()), !dbg !6251
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !6252, metadata !DIExpression()), !dbg !6253
  br label %9, !dbg !6254

9:                                                ; preds = %4
  %10 = load i32, ptr %7, align 4, !dbg !6255
  store i32 %10, ptr %7, align 4, !dbg !6255
  br label %11, !dbg !6255

11:                                               ; preds = %9
  %12 = load ptr, ptr %5, align 8, !dbg !6257
  %13 = load ptr, ptr %8, align 8, !dbg !6258
  %14 = load i32, ptr %6, align 4, !dbg !6259
  %15 = sext i32 %14 to i64, !dbg !6259
  %16 = call ptr @strncpy(ptr noundef %12, ptr noundef %13, i64 noundef %15) #10, !dbg !6260
  %17 = load ptr, ptr %5, align 8, !dbg !6261
  %18 = load i32, ptr %6, align 4, !dbg !6262
  %19 = sub nsw i32 %18, 1, !dbg !6263
  %20 = sext i32 %19 to i64, !dbg !6261
  %21 = getelementptr inbounds i8, ptr %17, i64 %20, !dbg !6261
  store i8 0, ptr %21, align 1, !dbg !6264
  %22 = load ptr, ptr %5, align 8, !dbg !6265
  %23 = call i64 @strlen(ptr noundef %22) #11, !dbg !6266
  %24 = trunc i64 %23 to i32, !dbg !6267
  ret i32 %24, !dbg !6268
}

declare i32 @SSL_CTX_set_cipher_list(ptr noundef, ptr noundef) #5

declare i32 @SSL_CTX_use_certificate_chain_file(ptr noundef, ptr noundef) #5

declare void @print_abs_file_name(ptr noundef, ptr noundef, ptr noundef) #5

declare i32 @SSL_CTX_use_PrivateKey_file(ptr noundef, ptr noundef, i32 noundef) #5

declare i32 @SSL_CTX_use_RSAPrivateKey_file(ptr noundef, ptr noundef, i32 noundef) #5

declare i32 @SSL_CTX_check_private_key(ptr noundef) #5

declare i32 @SSL_CTX_load_verify_locations(ptr noundef, ptr noundef, ptr noundef) #5

declare void @SSL_CTX_set_client_CA_list(ptr noundef, ptr noundef) #5

declare ptr @SSL_load_client_CA_file(ptr noundef) #5

declare void @SSL_CTX_set_verify(ptr noundef, i32 noundef, ptr noundef) #5

declare void @SSL_CTX_set_verify_depth(ptr noundef, i32 noundef) #5

declare i32 @OBJ_sn2nid(ptr noundef) #5

declare ptr @EC_KEY_new_by_curve_name(i32 noundef) #5

declare void @EC_KEY_free(ptr noundef) #5

declare ptr @PEM_read_DHparams(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @get_dh566() #0 !dbg !6269 {
  %1 = alloca ptr, align 8
  %2 = alloca [71 x i8], align 16
  %3 = alloca [1 x i8], align 1
  %4 = alloca ptr, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !6272, metadata !DIExpression()), !dbg !6276
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %2, ptr align 16 @__const.get_dh566.dh566_p, i64 71, i1 false), !dbg !6276
  call void @llvm.dbg.declare(metadata ptr %3, metadata !6277, metadata !DIExpression()), !dbg !6279
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr align 1 @__const.get_dh566.dh566_g, i64 1, i1 false), !dbg !6279
  call void @llvm.dbg.declare(metadata ptr %4, metadata !6280, metadata !DIExpression()), !dbg !6281
  %5 = call ptr @DH_new(), !dbg !6282
  store ptr %5, ptr %4, align 8, !dbg !6284
  %6 = icmp eq ptr %5, null, !dbg !6285
  br i1 %6, label %7, label %8, !dbg !6286

7:                                                ; preds = %0
  store ptr null, ptr %1, align 8, !dbg !6287
  br label %16, !dbg !6287

8:                                                ; preds = %0
  %9 = load ptr, ptr %4, align 8, !dbg !6288
  %10 = getelementptr inbounds [71 x i8], ptr %2, i64 0, i64 0, !dbg !6289
  %11 = call ptr @BN_bin2bn(ptr noundef %10, i32 noundef 71, ptr noundef null), !dbg !6290
  %12 = getelementptr inbounds [1 x i8], ptr %3, i64 0, i64 0, !dbg !6291
  %13 = call ptr @BN_bin2bn(ptr noundef %12, i32 noundef 1, ptr noundef null), !dbg !6292
  %14 = call i32 @DH_set0_pqg(ptr noundef %9, ptr noundef %11, ptr noundef null, ptr noundef %13), !dbg !6293
  %15 = load ptr, ptr %4, align 8, !dbg !6294
  store ptr %15, ptr %1, align 8, !dbg !6295
  br label %16, !dbg !6295

16:                                               ; preds = %8, %7
  %17 = load ptr, ptr %1, align 8, !dbg !6296
  ret ptr %17, !dbg !6296
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @get_dh1066() #0 !dbg !6297 {
  %1 = alloca ptr, align 8
  %2 = alloca [134 x i8], align 16
  %3 = alloca [1 x i8], align 1
  %4 = alloca ptr, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !6298, metadata !DIExpression()), !dbg !6302
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %2, ptr align 16 @__const.get_dh1066.dh1066_p, i64 134, i1 false), !dbg !6302
  call void @llvm.dbg.declare(metadata ptr %3, metadata !6303, metadata !DIExpression()), !dbg !6304
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr align 1 @__const.get_dh1066.dh1066_g, i64 1, i1 false), !dbg !6304
  call void @llvm.dbg.declare(metadata ptr %4, metadata !6305, metadata !DIExpression()), !dbg !6306
  %5 = call ptr @DH_new(), !dbg !6307
  store ptr %5, ptr %4, align 8, !dbg !6309
  %6 = icmp eq ptr %5, null, !dbg !6310
  br i1 %6, label %7, label %8, !dbg !6311

7:                                                ; preds = %0
  store ptr null, ptr %1, align 8, !dbg !6312
  br label %16, !dbg !6312

8:                                                ; preds = %0
  %9 = load ptr, ptr %4, align 8, !dbg !6313
  %10 = getelementptr inbounds [134 x i8], ptr %2, i64 0, i64 0, !dbg !6314
  %11 = call ptr @BN_bin2bn(ptr noundef %10, i32 noundef 134, ptr noundef null), !dbg !6315
  %12 = getelementptr inbounds [1 x i8], ptr %3, i64 0, i64 0, !dbg !6316
  %13 = call ptr @BN_bin2bn(ptr noundef %12, i32 noundef 1, ptr noundef null), !dbg !6317
  %14 = call i32 @DH_set0_pqg(ptr noundef %9, ptr noundef %11, ptr noundef null, ptr noundef %13), !dbg !6318
  %15 = load ptr, ptr %4, align 8, !dbg !6319
  store ptr %15, ptr %1, align 8, !dbg !6320
  br label %16, !dbg !6320

16:                                               ; preds = %8, %7
  %17 = load ptr, ptr %1, align 8, !dbg !6321
  ret ptr %17, !dbg !6321
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @get_dh2066() #0 !dbg !6322 {
  %1 = alloca ptr, align 8
  %2 = alloca [259 x i8], align 16
  %3 = alloca [1 x i8], align 1
  %4 = alloca ptr, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !6323, metadata !DIExpression()), !dbg !6327
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %2, ptr align 16 @__const.get_dh2066.dh2066_p, i64 259, i1 false), !dbg !6327
  call void @llvm.dbg.declare(metadata ptr %3, metadata !6328, metadata !DIExpression()), !dbg !6329
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr align 1 @__const.get_dh2066.dh2066_g, i64 1, i1 false), !dbg !6329
  call void @llvm.dbg.declare(metadata ptr %4, metadata !6330, metadata !DIExpression()), !dbg !6331
  %5 = call ptr @DH_new(), !dbg !6332
  store ptr %5, ptr %4, align 8, !dbg !6334
  %6 = icmp eq ptr %5, null, !dbg !6335
  br i1 %6, label %7, label %8, !dbg !6336

7:                                                ; preds = %0
  store ptr null, ptr %1, align 8, !dbg !6337
  br label %16, !dbg !6337

8:                                                ; preds = %0
  %9 = load ptr, ptr %4, align 8, !dbg !6338
  %10 = getelementptr inbounds [259 x i8], ptr %2, i64 0, i64 0, !dbg !6339
  %11 = call ptr @BN_bin2bn(ptr noundef %10, i32 noundef 259, ptr noundef null), !dbg !6340
  %12 = getelementptr inbounds [1 x i8], ptr %3, i64 0, i64 0, !dbg !6341
  %13 = call ptr @BN_bin2bn(ptr noundef %12, i32 noundef 1, ptr noundef null), !dbg !6342
  %14 = call i32 @DH_set0_pqg(ptr noundef %9, ptr noundef %11, ptr noundef null, ptr noundef %13), !dbg !6343
  %15 = load ptr, ptr %4, align 8, !dbg !6344
  store ptr %15, ptr %1, align 8, !dbg !6345
  br label %16, !dbg !6345

16:                                               ; preds = %8, %7
  %17 = load ptr, ptr %1, align 8, !dbg !6346
  ret ptr %17, !dbg !6346
}

declare void @DH_free(ptr noundef) #5

declare i64 @SSL_CTX_set_options(ptr noundef, i64 noundef) #5

declare void @SSL_CTX_free(ptr noundef) #5

; Function Attrs: nounwind willreturn memory(read)
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #4

declare i32 @SSL_set_ex_data(ptr noundef, i32 noundef, ptr noundef) #5

declare ptr @DH_new() #5

declare i32 @DH_set0_pqg(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #5

declare ptr @BN_bin2bn(ptr noundef, i32 noundef, ptr noundef) #5

declare void @event_active(ptr noundef, i32 noundef, i16 noundef signext) #5

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }
attributes #12 = { nounwind allocsize(0,1) }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind willreturn memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1708, !1709, !1710, !1711, !1712, !1713, !1714}
!llvm.ident = !{!1715}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "STUN_ALPN", scope: !2, file: !65, line: 59, type: !502, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !404, globals: !499, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/raj/coturn/src/apps/relay/mainrelay.c", directory: "/home/raj/coturn/build", checksumkind: CSK_MD5, checksum: "a3ed6324c29b87640f7099dde6bc2813")
!4 = !{!5, !13, !22, !29, !39, !45, !64, !147, !367, !374, !389}
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
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !46, line: 42, baseType: !7, size: 32, elements: !47)
!46 = !DIFile(filename: "/usr/include/net/if.h", directory: "", checksumkind: CSK_MD5, checksum: "ef0f4d1e9791a3fdd927ef15876d20ed")
!47 = !{!48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63}
!48 = !DIEnumerator(name: "IFF_UP", value: 1)
!49 = !DIEnumerator(name: "IFF_BROADCAST", value: 2)
!50 = !DIEnumerator(name: "IFF_DEBUG", value: 4)
!51 = !DIEnumerator(name: "IFF_LOOPBACK", value: 8)
!52 = !DIEnumerator(name: "IFF_POINTOPOINT", value: 16)
!53 = !DIEnumerator(name: "IFF_NOTRAILERS", value: 32)
!54 = !DIEnumerator(name: "IFF_RUNNING", value: 64)
!55 = !DIEnumerator(name: "IFF_NOARP", value: 128)
!56 = !DIEnumerator(name: "IFF_PROMISC", value: 256)
!57 = !DIEnumerator(name: "IFF_ALLMULTI", value: 512)
!58 = !DIEnumerator(name: "IFF_MASTER", value: 1024)
!59 = !DIEnumerator(name: "IFF_SLAVE", value: 2048)
!60 = !DIEnumerator(name: "IFF_MULTICAST", value: 4096)
!61 = !DIEnumerator(name: "IFF_PORTSEL", value: 8192)
!62 = !DIEnumerator(name: "IFF_AUTOMEDIA", value: 16384)
!63 = !DIEnumerator(name: "IFF_DYNAMIC", value: 32768)
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "EXTRA_OPTS", file: !65, line: 744, baseType: !7, size: 32, elements: !66)
!65 = !DIFile(filename: "src/apps/relay/mainrelay.c", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "a3ed6324c29b87640f7099dde6bc2813")
!66 = !{!67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146}
!67 = !DIEnumerator(name: "NO_UDP_OPT", value: 256)
!68 = !DIEnumerator(name: "NO_TCP_OPT", value: 257)
!69 = !DIEnumerator(name: "TCP_PROXY_PORT_OPT", value: 258)
!70 = !DIEnumerator(name: "NO_TLS_OPT", value: 259)
!71 = !DIEnumerator(name: "NO_DTLS_OPT", value: 260)
!72 = !DIEnumerator(name: "NO_UDP_RELAY_OPT", value: 261)
!73 = !DIEnumerator(name: "NO_TCP_RELAY_OPT", value: 262)
!74 = !DIEnumerator(name: "TLS_PORT_OPT", value: 263)
!75 = !DIEnumerator(name: "ALT_PORT_OPT", value: 264)
!76 = !DIEnumerator(name: "ALT_TLS_PORT_OPT", value: 265)
!77 = !DIEnumerator(name: "CERT_FILE_OPT", value: 266)
!78 = !DIEnumerator(name: "PKEY_FILE_OPT", value: 267)
!79 = !DIEnumerator(name: "PKEY_PWD_OPT", value: 268)
!80 = !DIEnumerator(name: "MIN_PORT_OPT", value: 269)
!81 = !DIEnumerator(name: "MAX_PORT_OPT", value: 270)
!82 = !DIEnumerator(name: "STALE_NONCE_OPT", value: 271)
!83 = !DIEnumerator(name: "MAX_ALLOCATE_LIFETIME_OPT", value: 272)
!84 = !DIEnumerator(name: "CHANNEL_LIFETIME_OPT", value: 273)
!85 = !DIEnumerator(name: "PERMISSION_LIFETIME_OPT", value: 274)
!86 = !DIEnumerator(name: "PROMETHEUS_OPT", value: 275)
!87 = !DIEnumerator(name: "AUTH_SECRET_OPT", value: 276)
!88 = !DIEnumerator(name: "NO_AUTH_PINGS_OPT", value: 277)
!89 = !DIEnumerator(name: "NO_DYNAMIC_IP_LIST_OPT", value: 278)
!90 = !DIEnumerator(name: "NO_DYNAMIC_REALMS_OPT", value: 279)
!91 = !DIEnumerator(name: "DEL_ALL_AUTH_SECRETS_OPT", value: 280)
!92 = !DIEnumerator(name: "STATIC_AUTH_SECRET_VAL_OPT", value: 281)
!93 = !DIEnumerator(name: "AUTH_SECRET_TS_EXP", value: 282)
!94 = !DIEnumerator(name: "NO_STDOUT_LOG_OPT", value: 283)
!95 = !DIEnumerator(name: "SYSLOG_OPT", value: 284)
!96 = !DIEnumerator(name: "SIMPLE_LOG_OPT", value: 285)
!97 = !DIEnumerator(name: "NEW_LOG_TIMESTAMP_OPT", value: 286)
!98 = !DIEnumerator(name: "NEW_LOG_TIMESTAMP_FORMAT_OPT", value: 287)
!99 = !DIEnumerator(name: "AUX_SERVER_OPT", value: 288)
!100 = !DIEnumerator(name: "UDP_SELF_BALANCE_OPT", value: 289)
!101 = !DIEnumerator(name: "ALTERNATE_SERVER_OPT", value: 290)
!102 = !DIEnumerator(name: "TLS_ALTERNATE_SERVER_OPT", value: 291)
!103 = !DIEnumerator(name: "NO_MULTICAST_PEERS_OPT", value: 292)
!104 = !DIEnumerator(name: "ALLOW_LOOPBACK_PEERS_OPT", value: 293)
!105 = !DIEnumerator(name: "MAX_ALLOCATE_TIMEOUT_OPT", value: 294)
!106 = !DIEnumerator(name: "ALLOWED_PEER_IPS", value: 295)
!107 = !DIEnumerator(name: "DENIED_PEER_IPS", value: 296)
!108 = !DIEnumerator(name: "CIPHER_LIST_OPT", value: 297)
!109 = !DIEnumerator(name: "PIDFILE_OPT", value: 298)
!110 = !DIEnumerator(name: "SECURE_STUN_OPT", value: 299)
!111 = !DIEnumerator(name: "CA_FILE_OPT", value: 300)
!112 = !DIEnumerator(name: "DH_FILE_OPT", value: 301)
!113 = !DIEnumerator(name: "NO_STUN_OPT", value: 302)
!114 = !DIEnumerator(name: "PROC_USER_OPT", value: 303)
!115 = !DIEnumerator(name: "PROC_GROUP_OPT", value: 304)
!116 = !DIEnumerator(name: "MOBILITY_OPT", value: 305)
!117 = !DIEnumerator(name: "NO_CLI_OPT", value: 306)
!118 = !DIEnumerator(name: "CLI_IP_OPT", value: 307)
!119 = !DIEnumerator(name: "CLI_PORT_OPT", value: 308)
!120 = !DIEnumerator(name: "CLI_PASSWORD_OPT", value: 309)
!121 = !DIEnumerator(name: "WEB_ADMIN_OPT", value: 310)
!122 = !DIEnumerator(name: "WEB_ADMIN_IP_OPT", value: 311)
!123 = !DIEnumerator(name: "WEB_ADMIN_PORT_OPT", value: 312)
!124 = !DIEnumerator(name: "WEB_ADMIN_LISTEN_ON_WORKERS_OPT", value: 313)
!125 = !DIEnumerator(name: "SERVER_RELAY_OPT", value: 314)
!126 = !DIEnumerator(name: "CLI_MAX_SESSIONS_OPT", value: 315)
!127 = !DIEnumerator(name: "EC_CURVE_NAME_OPT", value: 316)
!128 = !DIEnumerator(name: "DH566_OPT", value: 317)
!129 = !DIEnumerator(name: "DH1066_OPT", value: 318)
!130 = !DIEnumerator(name: "NE_TYPE_OPT", value: 319)
!131 = !DIEnumerator(name: "NO_SSLV2_OPT", value: 320)
!132 = !DIEnumerator(name: "NO_SSLV3_OPT", value: 321)
!133 = !DIEnumerator(name: "NO_TLSV1_OPT", value: 322)
!134 = !DIEnumerator(name: "NO_TLSV1_1_OPT", value: 323)
!135 = !DIEnumerator(name: "NO_TLSV1_2_OPT", value: 324)
!136 = !DIEnumerator(name: "CHECK_ORIGIN_CONSISTENCY_OPT", value: 325)
!137 = !DIEnumerator(name: "ADMIN_MAX_BPS_OPT", value: 326)
!138 = !DIEnumerator(name: "ADMIN_TOTAL_QUOTA_OPT", value: 327)
!139 = !DIEnumerator(name: "ADMIN_USER_QUOTA_OPT", value: 328)
!140 = !DIEnumerator(name: "SERVER_NAME_OPT", value: 329)
!141 = !DIEnumerator(name: "OAUTH_OPT", value: 330)
!142 = !DIEnumerator(name: "NO_SOFTWARE_ATTRIBUTE_OPT", value: 331)
!143 = !DIEnumerator(name: "NO_HTTP_OPT", value: 332)
!144 = !DIEnumerator(name: "SECRET_KEY_OPT", value: 333)
!145 = !DIEnumerator(name: "ACME_REDIRECT_OPT", value: 334)
!146 = !DIEnumerator(name: "LOG_BINDING_OPT", value: 335)
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !148, line: 71, baseType: !7, size: 32, elements: !149)
!148 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/confname.h", directory: "", checksumkind: CSK_MD5, checksum: "78b98c9476f9b4c41f6f4ea6bcb3195f")
!149 = !{!150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366}
!150 = !DIEnumerator(name: "_SC_ARG_MAX", value: 0)
!151 = !DIEnumerator(name: "_SC_CHILD_MAX", value: 1)
!152 = !DIEnumerator(name: "_SC_CLK_TCK", value: 2)
!153 = !DIEnumerator(name: "_SC_NGROUPS_MAX", value: 3)
!154 = !DIEnumerator(name: "_SC_OPEN_MAX", value: 4)
!155 = !DIEnumerator(name: "_SC_STREAM_MAX", value: 5)
!156 = !DIEnumerator(name: "_SC_TZNAME_MAX", value: 6)
!157 = !DIEnumerator(name: "_SC_JOB_CONTROL", value: 7)
!158 = !DIEnumerator(name: "_SC_SAVED_IDS", value: 8)
!159 = !DIEnumerator(name: "_SC_REALTIME_SIGNALS", value: 9)
!160 = !DIEnumerator(name: "_SC_PRIORITY_SCHEDULING", value: 10)
!161 = !DIEnumerator(name: "_SC_TIMERS", value: 11)
!162 = !DIEnumerator(name: "_SC_ASYNCHRONOUS_IO", value: 12)
!163 = !DIEnumerator(name: "_SC_PRIORITIZED_IO", value: 13)
!164 = !DIEnumerator(name: "_SC_SYNCHRONIZED_IO", value: 14)
!165 = !DIEnumerator(name: "_SC_FSYNC", value: 15)
!166 = !DIEnumerator(name: "_SC_MAPPED_FILES", value: 16)
!167 = !DIEnumerator(name: "_SC_MEMLOCK", value: 17)
!168 = !DIEnumerator(name: "_SC_MEMLOCK_RANGE", value: 18)
!169 = !DIEnumerator(name: "_SC_MEMORY_PROTECTION", value: 19)
!170 = !DIEnumerator(name: "_SC_MESSAGE_PASSING", value: 20)
!171 = !DIEnumerator(name: "_SC_SEMAPHORES", value: 21)
!172 = !DIEnumerator(name: "_SC_SHARED_MEMORY_OBJECTS", value: 22)
!173 = !DIEnumerator(name: "_SC_AIO_LISTIO_MAX", value: 23)
!174 = !DIEnumerator(name: "_SC_AIO_MAX", value: 24)
!175 = !DIEnumerator(name: "_SC_AIO_PRIO_DELTA_MAX", value: 25)
!176 = !DIEnumerator(name: "_SC_DELAYTIMER_MAX", value: 26)
!177 = !DIEnumerator(name: "_SC_MQ_OPEN_MAX", value: 27)
!178 = !DIEnumerator(name: "_SC_MQ_PRIO_MAX", value: 28)
!179 = !DIEnumerator(name: "_SC_VERSION", value: 29)
!180 = !DIEnumerator(name: "_SC_PAGESIZE", value: 30)
!181 = !DIEnumerator(name: "_SC_RTSIG_MAX", value: 31)
!182 = !DIEnumerator(name: "_SC_SEM_NSEMS_MAX", value: 32)
!183 = !DIEnumerator(name: "_SC_SEM_VALUE_MAX", value: 33)
!184 = !DIEnumerator(name: "_SC_SIGQUEUE_MAX", value: 34)
!185 = !DIEnumerator(name: "_SC_TIMER_MAX", value: 35)
!186 = !DIEnumerator(name: "_SC_BC_BASE_MAX", value: 36)
!187 = !DIEnumerator(name: "_SC_BC_DIM_MAX", value: 37)
!188 = !DIEnumerator(name: "_SC_BC_SCALE_MAX", value: 38)
!189 = !DIEnumerator(name: "_SC_BC_STRING_MAX", value: 39)
!190 = !DIEnumerator(name: "_SC_COLL_WEIGHTS_MAX", value: 40)
!191 = !DIEnumerator(name: "_SC_EQUIV_CLASS_MAX", value: 41)
!192 = !DIEnumerator(name: "_SC_EXPR_NEST_MAX", value: 42)
!193 = !DIEnumerator(name: "_SC_LINE_MAX", value: 43)
!194 = !DIEnumerator(name: "_SC_RE_DUP_MAX", value: 44)
!195 = !DIEnumerator(name: "_SC_CHARCLASS_NAME_MAX", value: 45)
!196 = !DIEnumerator(name: "_SC_2_VERSION", value: 46)
!197 = !DIEnumerator(name: "_SC_2_C_BIND", value: 47)
!198 = !DIEnumerator(name: "_SC_2_C_DEV", value: 48)
!199 = !DIEnumerator(name: "_SC_2_FORT_DEV", value: 49)
!200 = !DIEnumerator(name: "_SC_2_FORT_RUN", value: 50)
!201 = !DIEnumerator(name: "_SC_2_SW_DEV", value: 51)
!202 = !DIEnumerator(name: "_SC_2_LOCALEDEF", value: 52)
!203 = !DIEnumerator(name: "_SC_PII", value: 53)
!204 = !DIEnumerator(name: "_SC_PII_XTI", value: 54)
!205 = !DIEnumerator(name: "_SC_PII_SOCKET", value: 55)
!206 = !DIEnumerator(name: "_SC_PII_INTERNET", value: 56)
!207 = !DIEnumerator(name: "_SC_PII_OSI", value: 57)
!208 = !DIEnumerator(name: "_SC_POLL", value: 58)
!209 = !DIEnumerator(name: "_SC_SELECT", value: 59)
!210 = !DIEnumerator(name: "_SC_UIO_MAXIOV", value: 60)
!211 = !DIEnumerator(name: "_SC_IOV_MAX", value: 60)
!212 = !DIEnumerator(name: "_SC_PII_INTERNET_STREAM", value: 61)
!213 = !DIEnumerator(name: "_SC_PII_INTERNET_DGRAM", value: 62)
!214 = !DIEnumerator(name: "_SC_PII_OSI_COTS", value: 63)
!215 = !DIEnumerator(name: "_SC_PII_OSI_CLTS", value: 64)
!216 = !DIEnumerator(name: "_SC_PII_OSI_M", value: 65)
!217 = !DIEnumerator(name: "_SC_T_IOV_MAX", value: 66)
!218 = !DIEnumerator(name: "_SC_THREADS", value: 67)
!219 = !DIEnumerator(name: "_SC_THREAD_SAFE_FUNCTIONS", value: 68)
!220 = !DIEnumerator(name: "_SC_GETGR_R_SIZE_MAX", value: 69)
!221 = !DIEnumerator(name: "_SC_GETPW_R_SIZE_MAX", value: 70)
!222 = !DIEnumerator(name: "_SC_LOGIN_NAME_MAX", value: 71)
!223 = !DIEnumerator(name: "_SC_TTY_NAME_MAX", value: 72)
!224 = !DIEnumerator(name: "_SC_THREAD_DESTRUCTOR_ITERATIONS", value: 73)
!225 = !DIEnumerator(name: "_SC_THREAD_KEYS_MAX", value: 74)
!226 = !DIEnumerator(name: "_SC_THREAD_STACK_MIN", value: 75)
!227 = !DIEnumerator(name: "_SC_THREAD_THREADS_MAX", value: 76)
!228 = !DIEnumerator(name: "_SC_THREAD_ATTR_STACKADDR", value: 77)
!229 = !DIEnumerator(name: "_SC_THREAD_ATTR_STACKSIZE", value: 78)
!230 = !DIEnumerator(name: "_SC_THREAD_PRIORITY_SCHEDULING", value: 79)
!231 = !DIEnumerator(name: "_SC_THREAD_PRIO_INHERIT", value: 80)
!232 = !DIEnumerator(name: "_SC_THREAD_PRIO_PROTECT", value: 81)
!233 = !DIEnumerator(name: "_SC_THREAD_PROCESS_SHARED", value: 82)
!234 = !DIEnumerator(name: "_SC_NPROCESSORS_CONF", value: 83)
!235 = !DIEnumerator(name: "_SC_NPROCESSORS_ONLN", value: 84)
!236 = !DIEnumerator(name: "_SC_PHYS_PAGES", value: 85)
!237 = !DIEnumerator(name: "_SC_AVPHYS_PAGES", value: 86)
!238 = !DIEnumerator(name: "_SC_ATEXIT_MAX", value: 87)
!239 = !DIEnumerator(name: "_SC_PASS_MAX", value: 88)
!240 = !DIEnumerator(name: "_SC_XOPEN_VERSION", value: 89)
!241 = !DIEnumerator(name: "_SC_XOPEN_XCU_VERSION", value: 90)
!242 = !DIEnumerator(name: "_SC_XOPEN_UNIX", value: 91)
!243 = !DIEnumerator(name: "_SC_XOPEN_CRYPT", value: 92)
!244 = !DIEnumerator(name: "_SC_XOPEN_ENH_I18N", value: 93)
!245 = !DIEnumerator(name: "_SC_XOPEN_SHM", value: 94)
!246 = !DIEnumerator(name: "_SC_2_CHAR_TERM", value: 95)
!247 = !DIEnumerator(name: "_SC_2_C_VERSION", value: 96)
!248 = !DIEnumerator(name: "_SC_2_UPE", value: 97)
!249 = !DIEnumerator(name: "_SC_XOPEN_XPG2", value: 98)
!250 = !DIEnumerator(name: "_SC_XOPEN_XPG3", value: 99)
!251 = !DIEnumerator(name: "_SC_XOPEN_XPG4", value: 100)
!252 = !DIEnumerator(name: "_SC_CHAR_BIT", value: 101)
!253 = !DIEnumerator(name: "_SC_CHAR_MAX", value: 102)
!254 = !DIEnumerator(name: "_SC_CHAR_MIN", value: 103)
!255 = !DIEnumerator(name: "_SC_INT_MAX", value: 104)
!256 = !DIEnumerator(name: "_SC_INT_MIN", value: 105)
!257 = !DIEnumerator(name: "_SC_LONG_BIT", value: 106)
!258 = !DIEnumerator(name: "_SC_WORD_BIT", value: 107)
!259 = !DIEnumerator(name: "_SC_MB_LEN_MAX", value: 108)
!260 = !DIEnumerator(name: "_SC_NZERO", value: 109)
!261 = !DIEnumerator(name: "_SC_SSIZE_MAX", value: 110)
!262 = !DIEnumerator(name: "_SC_SCHAR_MAX", value: 111)
!263 = !DIEnumerator(name: "_SC_SCHAR_MIN", value: 112)
!264 = !DIEnumerator(name: "_SC_SHRT_MAX", value: 113)
!265 = !DIEnumerator(name: "_SC_SHRT_MIN", value: 114)
!266 = !DIEnumerator(name: "_SC_UCHAR_MAX", value: 115)
!267 = !DIEnumerator(name: "_SC_UINT_MAX", value: 116)
!268 = !DIEnumerator(name: "_SC_ULONG_MAX", value: 117)
!269 = !DIEnumerator(name: "_SC_USHRT_MAX", value: 118)
!270 = !DIEnumerator(name: "_SC_NL_ARGMAX", value: 119)
!271 = !DIEnumerator(name: "_SC_NL_LANGMAX", value: 120)
!272 = !DIEnumerator(name: "_SC_NL_MSGMAX", value: 121)
!273 = !DIEnumerator(name: "_SC_NL_NMAX", value: 122)
!274 = !DIEnumerator(name: "_SC_NL_SETMAX", value: 123)
!275 = !DIEnumerator(name: "_SC_NL_TEXTMAX", value: 124)
!276 = !DIEnumerator(name: "_SC_XBS5_ILP32_OFF32", value: 125)
!277 = !DIEnumerator(name: "_SC_XBS5_ILP32_OFFBIG", value: 126)
!278 = !DIEnumerator(name: "_SC_XBS5_LP64_OFF64", value: 127)
!279 = !DIEnumerator(name: "_SC_XBS5_LPBIG_OFFBIG", value: 128)
!280 = !DIEnumerator(name: "_SC_XOPEN_LEGACY", value: 129)
!281 = !DIEnumerator(name: "_SC_XOPEN_REALTIME", value: 130)
!282 = !DIEnumerator(name: "_SC_XOPEN_REALTIME_THREADS", value: 131)
!283 = !DIEnumerator(name: "_SC_ADVISORY_INFO", value: 132)
!284 = !DIEnumerator(name: "_SC_BARRIERS", value: 133)
!285 = !DIEnumerator(name: "_SC_BASE", value: 134)
!286 = !DIEnumerator(name: "_SC_C_LANG_SUPPORT", value: 135)
!287 = !DIEnumerator(name: "_SC_C_LANG_SUPPORT_R", value: 136)
!288 = !DIEnumerator(name: "_SC_CLOCK_SELECTION", value: 137)
!289 = !DIEnumerator(name: "_SC_CPUTIME", value: 138)
!290 = !DIEnumerator(name: "_SC_THREAD_CPUTIME", value: 139)
!291 = !DIEnumerator(name: "_SC_DEVICE_IO", value: 140)
!292 = !DIEnumerator(name: "_SC_DEVICE_SPECIFIC", value: 141)
!293 = !DIEnumerator(name: "_SC_DEVICE_SPECIFIC_R", value: 142)
!294 = !DIEnumerator(name: "_SC_FD_MGMT", value: 143)
!295 = !DIEnumerator(name: "_SC_FIFO", value: 144)
!296 = !DIEnumerator(name: "_SC_PIPE", value: 145)
!297 = !DIEnumerator(name: "_SC_FILE_ATTRIBUTES", value: 146)
!298 = !DIEnumerator(name: "_SC_FILE_LOCKING", value: 147)
!299 = !DIEnumerator(name: "_SC_FILE_SYSTEM", value: 148)
!300 = !DIEnumerator(name: "_SC_MONOTONIC_CLOCK", value: 149)
!301 = !DIEnumerator(name: "_SC_MULTI_PROCESS", value: 150)
!302 = !DIEnumerator(name: "_SC_SINGLE_PROCESS", value: 151)
!303 = !DIEnumerator(name: "_SC_NETWORKING", value: 152)
!304 = !DIEnumerator(name: "_SC_READER_WRITER_LOCKS", value: 153)
!305 = !DIEnumerator(name: "_SC_SPIN_LOCKS", value: 154)
!306 = !DIEnumerator(name: "_SC_REGEXP", value: 155)
!307 = !DIEnumerator(name: "_SC_REGEX_VERSION", value: 156)
!308 = !DIEnumerator(name: "_SC_SHELL", value: 157)
!309 = !DIEnumerator(name: "_SC_SIGNALS", value: 158)
!310 = !DIEnumerator(name: "_SC_SPAWN", value: 159)
!311 = !DIEnumerator(name: "_SC_SPORADIC_SERVER", value: 160)
!312 = !DIEnumerator(name: "_SC_THREAD_SPORADIC_SERVER", value: 161)
!313 = !DIEnumerator(name: "_SC_SYSTEM_DATABASE", value: 162)
!314 = !DIEnumerator(name: "_SC_SYSTEM_DATABASE_R", value: 163)
!315 = !DIEnumerator(name: "_SC_TIMEOUTS", value: 164)
!316 = !DIEnumerator(name: "_SC_TYPED_MEMORY_OBJECTS", value: 165)
!317 = !DIEnumerator(name: "_SC_USER_GROUPS", value: 166)
!318 = !DIEnumerator(name: "_SC_USER_GROUPS_R", value: 167)
!319 = !DIEnumerator(name: "_SC_2_PBS", value: 168)
!320 = !DIEnumerator(name: "_SC_2_PBS_ACCOUNTING", value: 169)
!321 = !DIEnumerator(name: "_SC_2_PBS_LOCATE", value: 170)
!322 = !DIEnumerator(name: "_SC_2_PBS_MESSAGE", value: 171)
!323 = !DIEnumerator(name: "_SC_2_PBS_TRACK", value: 172)
!324 = !DIEnumerator(name: "_SC_SYMLOOP_MAX", value: 173)
!325 = !DIEnumerator(name: "_SC_STREAMS", value: 174)
!326 = !DIEnumerator(name: "_SC_2_PBS_CHECKPOINT", value: 175)
!327 = !DIEnumerator(name: "_SC_V6_ILP32_OFF32", value: 176)
!328 = !DIEnumerator(name: "_SC_V6_ILP32_OFFBIG", value: 177)
!329 = !DIEnumerator(name: "_SC_V6_LP64_OFF64", value: 178)
!330 = !DIEnumerator(name: "_SC_V6_LPBIG_OFFBIG", value: 179)
!331 = !DIEnumerator(name: "_SC_HOST_NAME_MAX", value: 180)
!332 = !DIEnumerator(name: "_SC_TRACE", value: 181)
!333 = !DIEnumerator(name: "_SC_TRACE_EVENT_FILTER", value: 182)
!334 = !DIEnumerator(name: "_SC_TRACE_INHERIT", value: 183)
!335 = !DIEnumerator(name: "_SC_TRACE_LOG", value: 184)
!336 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_SIZE", value: 185)
!337 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_ASSOC", value: 186)
!338 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_LINESIZE", value: 187)
!339 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_SIZE", value: 188)
!340 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_ASSOC", value: 189)
!341 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_LINESIZE", value: 190)
!342 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_SIZE", value: 191)
!343 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_ASSOC", value: 192)
!344 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_LINESIZE", value: 193)
!345 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_SIZE", value: 194)
!346 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_ASSOC", value: 195)
!347 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_LINESIZE", value: 196)
!348 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_SIZE", value: 197)
!349 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_ASSOC", value: 198)
!350 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_LINESIZE", value: 199)
!351 = !DIEnumerator(name: "_SC_IPV6", value: 235)
!352 = !DIEnumerator(name: "_SC_RAW_SOCKETS", value: 236)
!353 = !DIEnumerator(name: "_SC_V7_ILP32_OFF32", value: 237)
!354 = !DIEnumerator(name: "_SC_V7_ILP32_OFFBIG", value: 238)
!355 = !DIEnumerator(name: "_SC_V7_LP64_OFF64", value: 239)
!356 = !DIEnumerator(name: "_SC_V7_LPBIG_OFFBIG", value: 240)
!357 = !DIEnumerator(name: "_SC_SS_REPL_MAX", value: 241)
!358 = !DIEnumerator(name: "_SC_TRACE_EVENT_NAME_MAX", value: 242)
!359 = !DIEnumerator(name: "_SC_TRACE_NAME_MAX", value: 243)
!360 = !DIEnumerator(name: "_SC_TRACE_SYS_MAX", value: 244)
!361 = !DIEnumerator(name: "_SC_TRACE_USER_EVENT_MAX", value: 245)
!362 = !DIEnumerator(name: "_SC_XOPEN_STREAMS", value: 246)
!363 = !DIEnumerator(name: "_SC_THREAD_ROBUST_PRIO_INHERIT", value: 247)
!364 = !DIEnumerator(name: "_SC_THREAD_ROBUST_PRIO_PROTECT", value: 248)
!365 = !DIEnumerator(name: "_SC_MINSIGSTKSZ", value: 249)
!366 = !DIEnumerator(name: "_SC_SIGSTKSZ", value: 250)
!367 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !368, line: 47, baseType: !7, size: 32, elements: !369)
!368 = !DIFile(filename: "src/apps/common/ns_turn_utils.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "74cb4019b1eb9d8e2b879df518b15a25")
!369 = !{!370, !371, !372, !373}
!370 = !DIEnumerator(name: "TURN_LOG_LEVEL_INFO", value: 0)
!371 = !DIEnumerator(name: "TURN_LOG_LEVEL_CONTROL", value: 1)
!372 = !DIEnumerator(name: "TURN_LOG_LEVEL_WARNING", value: 2)
!373 = !DIEnumerator(name: "TURN_LOG_LEVEL_ERROR", value: 3)
!374 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_TURNADMIN_COMMAND_TYPE", file: !30, line: 119, baseType: !7, size: 32, elements: !375)
!375 = !{!376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388}
!376 = !DIEnumerator(name: "TA_COMMAND_UNKNOWN", value: 0)
!377 = !DIEnumerator(name: "TA_PRINT_KEY", value: 1)
!378 = !DIEnumerator(name: "TA_UPDATE_USER", value: 2)
!379 = !DIEnumerator(name: "TA_DELETE_USER", value: 3)
!380 = !DIEnumerator(name: "TA_LIST_USERS", value: 4)
!381 = !DIEnumerator(name: "TA_SET_SECRET", value: 5)
!382 = !DIEnumerator(name: "TA_SHOW_SECRET", value: 6)
!383 = !DIEnumerator(name: "TA_DEL_SECRET", value: 7)
!384 = !DIEnumerator(name: "TA_ADD_ORIGIN", value: 8)
!385 = !DIEnumerator(name: "TA_DEL_ORIGIN", value: 9)
!386 = !DIEnumerator(name: "TA_LIST_ORIGINS", value: 10)
!387 = !DIEnumerator(name: "TA_SET_REALM_OPTION", value: 11)
!388 = !DIEnumerator(name: "TA_LIST_REALM_OPTIONS", value: 12)
!389 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !390, line: 46, baseType: !7, size: 32, elements: !391)
!390 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!391 = !{!392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403}
!392 = !DIEnumerator(name: "_ISupper", value: 256)
!393 = !DIEnumerator(name: "_ISlower", value: 512)
!394 = !DIEnumerator(name: "_ISalpha", value: 1024)
!395 = !DIEnumerator(name: "_ISdigit", value: 2048)
!396 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!397 = !DIEnumerator(name: "_ISspace", value: 8192)
!398 = !DIEnumerator(name: "_ISprint", value: 16384)
!399 = !DIEnumerator(name: "_ISgraph", value: 32768)
!400 = !DIEnumerator(name: "_ISblank", value: 1)
!401 = !DIEnumerator(name: "_IScntrl", value: 2)
!402 = !DIEnumerator(name: "_ISpunct", value: 4)
!403 = !DIEnumerator(name: "_ISalnum", value: 8)
!404 = !{!405, !406, !432, !457, !31, !459, !461, !462, !471, !446, !472, !473, !475, !476, !478, !413, !460, !479, !480, !496, !497, !429}
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !408, line: 245, size: 128, elements: !409)
!408 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "eb6560f10d4cfe9f30fea2c92b9da0fd")
!409 = !{!410, !414, !420, !427}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !407, file: !408, line: 247, baseType: !411, size: 16)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !412, line: 28, baseType: !413)
!412 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "dd7f1d9dd6e26f88d1726905ed5d9ff5")
!413 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !407, file: !408, line: 248, baseType: !415, size: 16, offset: 16)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !408, line: 123, baseType: !416)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !417, line: 25, baseType: !418)
!417 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !419, line: 40, baseType: !413)
!419 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!420 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !407, file: !408, line: 249, baseType: !421, size: 32, offset: 32)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !408, line: 31, size: 32, elements: !422)
!422 = !{!423}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !421, file: !408, line: 33, baseType: !424, size: 32)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !408, line: 30, baseType: !425)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !417, line: 26, baseType: !426)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !419, line: 42, baseType: !7)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !407, file: !408, line: 252, baseType: !428, size: 64, offset: 64)
!428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !429, size: 64, elements: !430)
!429 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!430 = !{!431}
!431 = !DISubrange(count: 8)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !408, line: 260, size: 224, elements: !434)
!434 = !{!435, !436, !437, !438, !456}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_family", scope: !433, file: !408, line: 262, baseType: !411, size: 16)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_port", scope: !433, file: !408, line: 263, baseType: !415, size: 16, offset: 16)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_flowinfo", scope: !433, file: !408, line: 264, baseType: !425, size: 32, offset: 32)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !433, file: !408, line: 265, baseType: !439, size: 128, offset: 64)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !408, line: 219, size: 128, elements: !440)
!440 = !{!441}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !439, file: !408, line: 226, baseType: !442, size: 128)
!442 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !439, file: !408, line: 221, size: 128, elements: !443)
!443 = !{!444, !450, !452}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !442, file: !408, line: 223, baseType: !445, size: 128)
!445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !446, size: 128, elements: !448)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !417, line: 24, baseType: !447)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !419, line: 38, baseType: !429)
!448 = !{!449}
!449 = !DISubrange(count: 16)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !442, file: !408, line: 224, baseType: !451, size: 128)
!451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !416, size: 128, elements: !430)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !442, file: !408, line: 225, baseType: !453, size: 128)
!453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 128, elements: !454)
!454 = !{!455}
!455 = !DISubrange(count: 4)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_scope_id", scope: !433, file: !408, line: 266, baseType: !425, size: 32, offset: 192)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !446)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "block128_f", file: !463, line: 25, baseType: !464)
!463 = !DIFile(filename: "/usr/include/openssl/modes.h", directory: "", checksumkind: CSK_MD5, checksum: "4d7254b8c0e88f21372dfaf8e30599a1")
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DISubroutineType(types: !466)
!466 = !{null, !467, !461, !469}
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !429)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!471 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "turnserver_id", file: !40, line: 67, baseType: !446)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !460)
!475 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "vint", file: !477, line: 105, baseType: !31)
!477 = !DIFile(filename: "src/ns_turn_defs.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "126e9c9d0b914de7fdf6162f77453397")
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_ENG_VERSION", file: !6, line: 170, baseType: !13)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_addr", file: !482, line: 48, baseType: !483)
!482 = !DIFile(filename: "src/client/ns_turn_ioaddr.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "6bb7c107d1e7937049c12f6d0dffd94c")
!483 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !482, line: 44, size: 224, elements: !484)
!484 = !{!485, !494, !495}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !483, file: !482, line: 45, baseType: !486, size: 128)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !487, line: 180, size: 128, elements: !488)
!487 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "e3826be048699664d9ef7b080f62f2e0")
!488 = !{!489, !490}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !486, file: !487, line: 182, baseType: !411, size: 16)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !486, file: !487, line: 183, baseType: !491, size: 112, offset: 16)
!491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 112, elements: !492)
!492 = !{!493}
!493 = !DISubrange(count: 14)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "s4", scope: !483, file: !482, line: 46, baseType: !407, size: 128)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "s6", scope: !483, file: !482, line: 47, baseType: !433, size: 224)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "band_limit_t", file: !23, line: 67, baseType: !475)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !417, line: 27, baseType: !498)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !419, line: 45, baseType: !475)
!499 = !{!0, !500, !505, !507, !510, !515, !520, !525, !844, !849, !851, !856, !861, !864, !869, !874, !879, !884, !889, !894, !896, !901, !906, !911, !913, !918, !923, !928, !933, !938, !943, !948, !953, !958, !963, !968, !973, !978, !983, !986, !988, !993, !998, !1003, !1005, !1010, !1012, !1014, !1016, !1021, !1026, !1031, !1033, !1038, !1043, !1045, !1047, !1052, !1054, !1059, !1061, !1063, !1068, !1070, !1072, !1074, !1076, !1078, !1080, !1082, !1087, !1089, !1091, !1096, !1098, !1100, !1102, !1104, !1106, !1108, !1110, !1112, !1114, !1119, !1121, !1123, !1125, !1127, !1129, !1132, !1134, !1136, !1138, !1143, !1145, !1150, !1152, !1154, !1156, !1158, !1160, !1162, !1164, !1166, !1168, !1170, !1172, !1174, !1179, !1181, !1183, !1185, !1187, !1189, !1191, !1193, !1195, !1197, !1199, !1201, !1203, !1205, !1207, !1209, !1211, !1213, !1215, !1217, !1219, !1221, !1223, !1225, !1227, !1232, !1234, !1236, !1238, !1240, !1242, !1244, !1246, !1248, !1250, !1252, !1254, !1256, !1258, !1260, !1262, !1264, !1266, !1268, !1270, !1272, !1274, !1279, !1281, !1283, !1285, !1287, !1289, !1291, !1293, !1295, !1297, !1299, !1301, !1303, !1305, !1310, !1312, !1314, !1327, !1329, !1331, !1333, !1335, !1337, !1339, !1344, !1346, !1348, !1350, !1352, !1354, !1356, !1358, !1363, !1366, !1368, !1370, !1372, !1374, !1376, !1378, !1380, !1382, !1384, !1386, !1388, !1390, !1392, !1394, !1396, !1398, !1400, !1402, !1404, !1406, !1408, !1410, !1412, !1414, !1416, !1419, !1424, !1430, !1432, !1434, !1436, !1438, !1443, !1448, !1453, !1458, !1460, !1462, !1464, !1469, !1474, !1476, !1478, !1480, !1482, !1484, !1489, !1494, !1496, !1499, !1504, !1509, !1514, !1516, !1518, !1523, !1525, !1527, !1531, !1533, !1535, !1540, !1542, !1547, !1552, !1554, !1556, !1558, !1560, !1562, !1567, !1569, !1571, !1573, !1575, !1580, !1582, !1584, !1586, !1588, !1593, !1595, !1597, !1599, !1601, !1606, !1608, !1610, !1612, !1617, !1619, !1621, !1623, !1628, !1630, !1635, !1637, !1639, !1641, !1643, !1645, !1647, !1649, !1654, !1656, !1658, !1660, !1662, !1664, !1666, !1668, !1670, !1672, !1674, !1676, !1681, !1683, !1685, !1687, !1689, !1691, !1693, !1695, !1698, !1700, !1702, !1704, !1706}
!500 = !DIGlobalVariableExpression(var: !501, expr: !DIExpression())
!501 = distinct !DIGlobalVariable(name: "TURN_ALPN", scope: !2, file: !65, line: 60, type: !502, isLocal: false, isDefinition: true)
!502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 1024, elements: !503)
!503 = !{!504}
!504 = !DISubrange(count: 128)
!505 = !DIGlobalVariableExpression(var: !506, expr: !DIExpression())
!506 = distinct !DIGlobalVariable(name: "HTTP_ALPN", scope: !2, file: !65, line: 61, type: !502, isLocal: false, isDefinition: true)
!507 = !DIGlobalVariableExpression(var: !508, expr: !DIExpression())
!508 = distinct !DIGlobalVariable(scope: null, file: !65, line: 129, type: !509, isLocal: true, isDefinition: true)
!509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 64, elements: !430)
!510 = !DIGlobalVariableExpression(var: !511, expr: !DIExpression())
!511 = distinct !DIGlobalVariable(scope: null, file: !65, line: 129, type: !512, isLocal: true, isDefinition: true)
!512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 264, elements: !513)
!513 = !{!514}
!514 = !DISubrange(count: 33)
!515 = !DIGlobalVariableExpression(var: !516, expr: !DIExpression())
!516 = distinct !DIGlobalVariable(scope: null, file: !65, line: 129, type: !517, isLocal: true, isDefinition: true)
!517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 256, elements: !518)
!518 = !{!519}
!519 = !DISubrange(count: 32)
!520 = !DIGlobalVariableExpression(var: !521, expr: !DIExpression())
!521 = distinct !DIGlobalVariable(scope: null, file: !65, line: 129, type: !522, isLocal: true, isDefinition: true)
!522 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 192, elements: !523)
!523 = !{!524}
!524 = !DISubrange(count: 24)
!525 = !DIGlobalVariableExpression(var: !526, expr: !DIExpression())
!526 = distinct !DIGlobalVariable(name: "turn_params", scope: !2, file: !65, line: 85, type: !527, isLocal: false, isDefinition: true)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_params_t", file: !6, line: 341, baseType: !528)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_turn_params_", file: !6, line: 174, size: 132992, elements: !529)
!529 = !{!530, !535, !536, !537, !538, !539, !540, !542, !546, !547, !548, !549, !550, !554, !555, !556, !557, !558, !559, !560, !564, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !730, !751, !752, !753, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !800, !801, !802, !803, !804, !805, !806, !807, !834, !835, !836, !838, !840, !841, !842, !843}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ctx_ssl23", scope: !528, file: !6, line: 178, baseType: !531, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_CTX", file: !533, line: 185, baseType: !534)
!533 = !DIFile(filename: "/usr/include/openssl/types.h", directory: "", checksumkind: CSK_MD5, checksum: "44f1236065e4ee65cf4cd545c3e12ab9")
!534 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_ctx_st", file: !533, line: 185, flags: DIFlagFwdDecl)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ctx_v1_0", scope: !528, file: !6, line: 180, baseType: !531, size: 64, offset: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ctx_v1_1", scope: !528, file: !6, line: 183, baseType: !531, size: 64, offset: 128)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ctx_v1_2", scope: !528, file: !6, line: 185, baseType: !531, size: 64, offset: 192)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "dtls_ctx", scope: !528, file: !6, line: 190, baseType: !531, size: 64, offset: 256)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "dtls_ctx_v1_2", scope: !528, file: !6, line: 192, baseType: !531, size: 64, offset: 320)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "dh_key_size", scope: !528, file: !6, line: 196, baseType: !541, size: 32, offset: 384)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "DH_KEY_SIZE", file: !6, line: 121, baseType: !5)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "cipher_list", scope: !528, file: !6, line: 198, baseType: !543, size: 8200, offset: 416)
!543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 8200, elements: !544)
!544 = !{!545}
!545 = !DISubrange(count: 1025)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "ec_curve_name", scope: !528, file: !6, line: 199, baseType: !512, size: 264, offset: 8616)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "ca_cert_file", scope: !528, file: !6, line: 201, baseType: !543, size: 8200, offset: 8880)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "cert_file", scope: !528, file: !6, line: 202, baseType: !543, size: 8200, offset: 17080)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_file", scope: !528, file: !6, line: 203, baseType: !543, size: 8200, offset: 25280)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "tls_password", scope: !528, file: !6, line: 204, baseType: !551, size: 4104, offset: 33480)
!551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 4104, elements: !552)
!552 = !{!553}
!553 = !DISubrange(count: 513)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "dh_file", scope: !528, file: !6, line: 205, baseType: !543, size: 8200, offset: 37584)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "no_tlsv1", scope: !528, file: !6, line: 207, baseType: !31, size: 32, offset: 45792)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "no_tlsv1_1", scope: !528, file: !6, line: 208, baseType: !31, size: 32, offset: 45824)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "no_tlsv1_2", scope: !528, file: !6, line: 209, baseType: !31, size: 32, offset: 45856)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "no_tls", scope: !528, file: !6, line: 210, baseType: !31, size: 32, offset: 45888)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "no_dtls", scope: !528, file: !6, line: 211, baseType: !31, size: 32, offset: 45920)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ctx_update_ev", scope: !528, file: !6, line: 213, baseType: !561, size: 64, offset: 45952)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DICompositeType(tag: DW_TAG_structure_type, name: "event", file: !563, line: 276, flags: DIFlagFwdDecl)
!563 = !DIFile(filename: "/usr/include/event2/event.h", directory: "", checksumkind: CSK_MD5, checksum: "90db4fa73456052afa8984291985dfd5")
!564 = !DIDerivedType(tag: DW_TAG_member, name: "tls_mutex", scope: !528, file: !6, line: 214, baseType: !565, size: 320, offset: 46016)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !566, line: 72, baseType: !567)
!566 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!567 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !566, line: 67, size: 320, elements: !568)
!568 = !{!569, !589, !593}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !567, file: !566, line: 69, baseType: !570, size: 320)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !571, line: 22, size: 320, elements: !572)
!571 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "584baedd80e6041b81caae7f496091c0")
!572 = !{!573, !574, !575, !576, !577, !578, !580, !581}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !570, file: !571, line: 24, baseType: !31, size: 32)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !570, file: !571, line: 25, baseType: !7, size: 32, offset: 32)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !570, file: !571, line: 26, baseType: !31, size: 32, offset: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !570, file: !571, line: 28, baseType: !7, size: 32, offset: 96)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !570, file: !571, line: 32, baseType: !31, size: 32, offset: 128)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !570, file: !571, line: 34, baseType: !579, size: 16, offset: 160)
!579 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !570, file: !571, line: 35, baseType: !579, size: 16, offset: 176)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !570, file: !571, line: 36, baseType: !582, size: 128, offset: 192)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !583, line: 55, baseType: !584)
!583 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "04c81e86d34dad9c99ad006d32e47a0d")
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !583, line: 51, size: 128, elements: !585)
!585 = !{!586, !588}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !584, file: !583, line: 53, baseType: !587, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !584, file: !583, line: 54, baseType: !587, size: 64, offset: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !567, file: !566, line: 70, baseType: !590, size: 320)
!590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 320, elements: !591)
!591 = !{!592}
!592 = !DISubrange(count: 40)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !567, file: !566, line: 71, baseType: !471, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "verbose", scope: !528, file: !6, line: 218, baseType: !31, size: 32, offset: 46336)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "turn_daemon", scope: !528, file: !6, line: 219, baseType: !31, size: 32, offset: 46368)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "no_software_attribute", scope: !528, file: !6, line: 220, baseType: !31, size: 32, offset: 46400)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "web_admin_listen_on_workers", scope: !528, file: !6, line: 221, baseType: !31, size: 32, offset: 46432)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "do_not_use_config_file", scope: !528, file: !6, line: 223, baseType: !31, size: 32, offset: 46464)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "pidfile", scope: !528, file: !6, line: 225, baseType: !543, size: 8200, offset: 46496)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "acme_redirect", scope: !528, file: !6, line: 226, baseType: !543, size: 8200, offset: 54696)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "listener_port", scope: !528, file: !6, line: 230, baseType: !31, size: 32, offset: 62912)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "tls_listener_port", scope: !528, file: !6, line: 231, baseType: !31, size: 32, offset: 62944)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "alt_listener_port", scope: !528, file: !6, line: 232, baseType: !31, size: 32, offset: 62976)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "alt_tls_listener_port", scope: !528, file: !6, line: 233, baseType: !31, size: 32, offset: 63008)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_proxy_port", scope: !528, file: !6, line: 234, baseType: !31, size: 32, offset: 63040)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "rfc5780", scope: !528, file: !6, line: 235, baseType: !31, size: 32, offset: 63072)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "no_udp", scope: !528, file: !6, line: 237, baseType: !31, size: 32, offset: 63104)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "no_tcp", scope: !528, file: !6, line: 238, baseType: !31, size: 32, offset: 63136)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_use_proxy", scope: !528, file: !6, line: 239, baseType: !31, size: 32, offset: 63168)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "no_tcp_relay", scope: !528, file: !6, line: 241, baseType: !476, size: 32, offset: 63200)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "no_udp_relay", scope: !528, file: !6, line: 242, baseType: !476, size: 32, offset: 63232)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "listener_ifname", scope: !528, file: !6, line: 244, baseType: !543, size: 8200, offset: 63264)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "redis_statsdb", scope: !528, file: !6, line: 246, baseType: !543, size: 8200, offset: 71464)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "use_redis_statsdb", scope: !528, file: !6, line: 247, baseType: !31, size: 32, offset: 79680)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "listener", scope: !528, file: !6, line: 249, baseType: !616, size: 832, offset: 79744)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listener_server", file: !6, line: 144, size: 832, elements: !617)
!617 = !{!618, !623, !628, !632, !711, !714, !715, !717, !719, !720, !721, !728, !729}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "rtcpmap", scope: !616, file: !6, line: 145, baseType: !619, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtcp_map", file: !621, line: 46, baseType: !622)
!621 = !DIFile(filename: "src/server/ns_turn_maps_rtcp.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "8bedcc1443244c8ca394e26ac35053c7")
!622 = !DICompositeType(tag: DW_TAG_structure_type, name: "_rtcp_map", file: !621, line: 45, flags: DIFlagFwdDecl)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "tp", scope: !616, file: !6, line: 146, baseType: !624, size: 64, offset: 64)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "turnipports", file: !626, line: 50, baseType: !627)
!626 = !DIFile(filename: "src/apps/relay/turn_ports.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "11983eef23ed630198ed333562550552")
!627 = !DICompositeType(tag: DW_TAG_structure_type, name: "_turnipports", file: !626, line: 49, flags: DIFlagFwdDecl)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "event_base", scope: !616, file: !6, line: 147, baseType: !629, size: 64, offset: 128)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DICompositeType(tag: DW_TAG_structure_type, name: "event_base", file: !631, line: 118, flags: DIFlagFwdDecl)
!631 = !DIFile(filename: "/usr/include/event2/bufferevent.h", directory: "", checksumkind: CSK_MD5, checksum: "15bb43c26b2c9058b6c64d44779c7263")
!632 = !DIDerivedType(tag: DW_TAG_member, name: "ioa_eng", scope: !616, file: !6, line: 148, baseType: !633, size: 64, offset: 192)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_engine_handle", file: !634, line: 120, baseType: !635)
!634 = !DIFile(filename: "src/server/ns_turn_ioalib.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "c6bb568b11ce41f25b29a4464aa685c5")
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_engine", file: !634, line: 119, baseType: !637)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ioa_engine", file: !638, line: 135, size: 536064, elements: !639)
!638 = !DIFile(filename: "src/apps/relay/ns_ioalib_impl.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "39ae1828625a6763b6269ecb34869b6c")
!639 = !{!640, !645, !646, !647, !648, !649, !650, !678, !679, !680, !681, !682, !683, !684, !686, !688, !692, !694, !703, !704, !705, !706, !707, !708}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "sm", scope: !637, file: !638, line: 137, baseType: !641, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "super_memory_t", file: !643, line: 49, baseType: !644)
!643 = !DIFile(filename: "src/apps/relay/ns_sm.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "9025fd46a533d33a213551fd581f5b89")
!644 = !DICompositeType(tag: DW_TAG_structure_type, name: "_super_memory", file: !643, line: 48, flags: DIFlagFwdDecl)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "event_base", scope: !637, file: !638, line: 138, baseType: !629, size: 64, offset: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "deallocate_eb", scope: !637, file: !638, line: 139, baseType: !31, size: 32, offset: 128)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "verbose", scope: !637, file: !638, line: 140, baseType: !31, size: 32, offset: 160)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "tp", scope: !637, file: !638, line: 141, baseType: !624, size: 64, offset: 192)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "map_rtcp", scope: !637, file: !638, line: 142, baseType: !619, size: 64, offset: 256)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "bufs", scope: !637, file: !638, line: 143, baseType: !651, size: 128, offset: 320)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "stun_buffer_list", file: !638, line: 81, baseType: !652)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_stun_buffer_list", file: !638, line: 78, size: 128, elements: !653)
!653 = !{!654, !677}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !652, file: !638, line: 79, baseType: !655, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "stun_buffer_list_elem", file: !638, line: 76, baseType: !657)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_stun_buffer_list_elem", file: !638, line: 73, size: 524288, elements: !658)
!658 = !{!659, !661}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !657, file: !638, line: 74, baseType: !660, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !657, file: !638, line: 75, baseType: !662, size: 524224, offset: 64)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "stun_buffer", file: !663, line: 48, baseType: !664)
!663 = !DIFile(filename: "src/apps/common/stun_buffer.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "cc7948905c033a0fb654060699acf9e2")
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_stun_buffer", file: !663, line: 42, size: 524224, elements: !665)
!665 = !{!666, !668, !672, !675, !676}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !664, file: !663, line: 43, baseType: !667, size: 32)
!667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !446, size: 32, elements: !454)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !664, file: !663, line: 44, baseType: !669, size: 524056, offset: 32)
!669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !446, size: 524056, elements: !670)
!670 = !{!671}
!671 = !DISubrange(count: 65507)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !664, file: !663, line: 45, baseType: !673, size: 64, offset: 524096)
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !674, line: 46, baseType: !475)
!674 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!675 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !664, file: !663, line: 46, baseType: !416, size: 16, offset: 524160)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "coffset", scope: !664, file: !663, line: 47, baseType: !446, size: 8, offset: 524176)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "tsz", scope: !652, file: !638, line: 80, baseType: !673, size: 64, offset: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ctx_ssl23", scope: !637, file: !638, line: 144, baseType: !531, size: 64, offset: 448)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ctx_v1_0", scope: !637, file: !638, line: 145, baseType: !531, size: 64, offset: 512)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ctx_v1_1", scope: !637, file: !638, line: 147, baseType: !531, size: 64, offset: 576)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ctx_v1_2", scope: !637, file: !638, line: 149, baseType: !531, size: 64, offset: 640)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "dtls_ctx", scope: !637, file: !638, line: 153, baseType: !531, size: 64, offset: 704)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "dtls_ctx_v1_2", scope: !637, file: !638, line: 156, baseType: !531, size: 64, offset: 768)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "jiffie", scope: !637, file: !638, line: 158, baseType: !685, size: 32, offset: 832)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_time_t", file: !477, line: 108, baseType: !425)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "timer_ev", scope: !637, file: !638, line: 159, baseType: !687, size: 64, offset: 896)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_timer_handle", file: !634, line: 122, baseType: !405)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "cmsg", scope: !637, file: !638, line: 160, baseType: !689, size: 524296, offset: 960)
!689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 524296, elements: !690)
!690 = !{!691}
!691 = !DISubrange(count: 65537)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "predef_timer_intervals", scope: !637, file: !638, line: 161, baseType: !693, size: 448, offset: 525280)
!693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 448, elements: !492)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "predef_timers", scope: !637, file: !638, line: 162, baseType: !695, size: 1792, offset: 525760)
!695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !696, size: 1792, elements: !492)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !697, line: 8, size: 128, elements: !698)
!697 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h", directory: "", checksumkind: CSK_MD5, checksum: "9b45d950050c215f216850b27bd1e8f3")
!698 = !{!699, !701}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !696, file: !697, line: 14, baseType: !700, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !419, line: 160, baseType: !471)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !696, file: !697, line: 15, baseType: !702, size: 64, offset: 64)
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !419, line: 162, baseType: !471)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "relay_ifname", scope: !637, file: !638, line: 164, baseType: !543, size: 8200, offset: 527552)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "default_relays", scope: !637, file: !638, line: 165, baseType: !31, size: 32, offset: 535776)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "relays_number", scope: !637, file: !638, line: 166, baseType: !673, size: 64, offset: 535808)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "relay_addr_counter", scope: !637, file: !638, line: 167, baseType: !673, size: 64, offset: 535872)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "relay_addrs", scope: !637, file: !638, line: 168, baseType: !480, size: 64, offset: 535936)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "rch", scope: !637, file: !638, line: 169, baseType: !709, size: 64, offset: 536000)
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "redis_context_handle", file: !710, line: 45, baseType: !405)
!710 = !DIFile(filename: "src/apps/common/hiredis_libevent2.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "8bcf7d75479c12c7a6031a30f30ef1f7")
!711 = !DIDerivedType(tag: DW_TAG_member, name: "in_buf", scope: !616, file: !6, line: 149, baseType: !712, size: 64, offset: 256)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferevent", file: !631, line: 113, flags: DIFlagFwdDecl)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "out_buf", scope: !616, file: !6, line: 150, baseType: !712, size: 64, offset: 320)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !616, file: !6, line: 151, baseType: !716, size: 64, offset: 384)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "encaddrs", scope: !616, file: !6, line: 152, baseType: !718, size: 64, offset: 448)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "addrs_number", scope: !616, file: !6, line: 153, baseType: !673, size: 64, offset: 512)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "services_number", scope: !616, file: !6, line: 154, baseType: !673, size: 64, offset: 576)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "udp_services", scope: !616, file: !6, line: 155, baseType: !722, size: 64, offset: 640)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "dtls_listener_relay_server_type", file: !726, line: 49, baseType: !727)
!726 = !DIFile(filename: "src/apps/relay/dtls_listener.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "0781c076e4412130d98f5f3bddf10861")
!727 = !DICompositeType(tag: DW_TAG_structure_type, name: "dtls_listener_relay_server_info", file: !726, line: 48, flags: DIFlagFwdDecl)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "dtls_services", scope: !616, file: !6, line: 156, baseType: !722, size: 64, offset: 704)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "aux_udp_services", scope: !616, file: !6, line: 157, baseType: !722, size: 64, offset: 768)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "ip_whitelist", scope: !528, file: !6, line: 251, baseType: !731, size: 128, offset: 80576)
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip_range_list_t", file: !634, line: 159, baseType: !732)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ip_range_list", file: !634, line: 154, size: 128, elements: !733)
!733 = !{!734, !750}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "rs", scope: !732, file: !634, line: 155, baseType: !735, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip_range_t", file: !634, line: 152, baseType: !737)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ip_range", file: !634, line: 146, size: 6624, elements: !738)
!738 = !{!739, !743, !744}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !737, file: !634, line: 147, baseType: !740, size: 2056)
!740 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 2056, elements: !741)
!741 = !{!742}
!742 = !DISubrange(count: 257)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "realm", scope: !737, file: !634, line: 148, baseType: !551, size: 4104, offset: 2056)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "enc", scope: !737, file: !634, line: 149, baseType: !745, size: 448, offset: 6176)
!745 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_addr_range", file: !482, line: 53, baseType: !746)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !482, line: 50, size: 448, elements: !747)
!747 = !{!748, !749}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !746, file: !482, line: 51, baseType: !481, size: 224)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !746, file: !482, line: 52, baseType: !481, size: 224, offset: 224)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "ranges_number", scope: !732, file: !634, line: 156, baseType: !673, size: 64, offset: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "ip_blacklist", scope: !528, file: !6, line: 252, baseType: !731, size: 128, offset: 80704)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "net_engine_version", scope: !528, file: !6, line: 254, baseType: !479, size: 32, offset: 80832)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "net_engine_version_txt", scope: !528, file: !6, line: 255, baseType: !754, size: 256, offset: 80896)
!754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !473, size: 256, elements: !454)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "min_port", scope: !528, file: !6, line: 259, baseType: !416, size: 16, offset: 81152)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "max_port", scope: !528, file: !6, line: 260, baseType: !416, size: 16, offset: 81168)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "check_origin", scope: !528, file: !6, line: 262, baseType: !476, size: 32, offset: 81184)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "no_multicast_peers", scope: !528, file: !6, line: 264, baseType: !476, size: 32, offset: 81216)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "allow_loopback_peers", scope: !528, file: !6, line: 265, baseType: !476, size: 32, offset: 81248)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "relay_ifname", scope: !528, file: !6, line: 267, baseType: !543, size: 8200, offset: 81280)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "relays_number", scope: !528, file: !6, line: 269, baseType: !673, size: 64, offset: 89536)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "relay_addrs", scope: !528, file: !6, line: 270, baseType: !716, size: 64, offset: 89600)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "default_relays", scope: !528, file: !6, line: 271, baseType: !31, size: 32, offset: 89664)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "external_ip", scope: !528, file: !6, line: 276, baseType: !480, size: 64, offset: 89728)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "general_relay_servers_number", scope: !528, file: !6, line: 278, baseType: !472, size: 8, offset: 89792)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "udp_relay_servers_number", scope: !528, file: !6, line: 279, baseType: !472, size: 8, offset: 89800)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "oauth_server_name", scope: !528, file: !6, line: 283, baseType: !543, size: 8200, offset: 89808)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !528, file: !6, line: 284, baseType: !543, size: 8200, offset: 98008)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "oauth", scope: !528, file: !6, line: 285, baseType: !31, size: 32, offset: 106208)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "aux_servers_list", scope: !528, file: !6, line: 289, baseType: !771, size: 256, offset: 106240)
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_server_addrs_list_t", file: !40, line: 53, baseType: !772)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_turn_server_addrs_list", file: !40, line: 47, size: 256, elements: !773)
!773 = !{!774, !775, !777}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !772, file: !40, line: 48, baseType: !480, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !772, file: !40, line: 49, baseType: !776, size: 64, offset: 64)
!776 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !673)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !772, file: !40, line: 50, baseType: !778, size: 128, offset: 128)
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_mutex", file: !634, line: 60, baseType: !779)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_turn_mutex", file: !634, line: 55, size: 128, elements: !780)
!780 = !{!781, !782}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !779, file: !634, line: 56, baseType: !425, size: 32)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !779, file: !634, line: 57, baseType: !405, size: 64, offset: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "udp_self_balance", scope: !528, file: !6, line: 290, baseType: !31, size: 32, offset: 106496)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "alternate_servers_list", scope: !528, file: !6, line: 294, baseType: !771, size: 256, offset: 106560)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "tls_alternate_servers_list", scope: !528, file: !6, line: 295, baseType: !771, size: 256, offset: 106816)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "stop_turn_server", scope: !528, file: !6, line: 297, baseType: !31, size: 32, offset: 107072)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "stun_only", scope: !528, file: !6, line: 301, baseType: !476, size: 32, offset: 107104)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "no_stun", scope: !528, file: !6, line: 302, baseType: !476, size: 32, offset: 107136)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "secure_stun", scope: !528, file: !6, line: 303, baseType: !476, size: 32, offset: 107168)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "server_relay", scope: !528, file: !6, line: 304, baseType: !31, size: 32, offset: 107200)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "fingerprint", scope: !528, file: !6, line: 305, baseType: !31, size: 32, offset: 107232)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "rest_api_separator", scope: !528, file: !6, line: 306, baseType: !460, size: 8, offset: 107264)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "stale_nonce", scope: !528, file: !6, line: 307, baseType: !476, size: 32, offset: 107296)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "max_allocate_lifetime", scope: !528, file: !6, line: 308, baseType: !476, size: 32, offset: 107328)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "channel_lifetime", scope: !528, file: !6, line: 309, baseType: !476, size: 32, offset: 107360)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "permission_lifetime", scope: !528, file: !6, line: 310, baseType: !476, size: 32, offset: 107392)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "mobility", scope: !528, file: !6, line: 311, baseType: !476, size: 32, offset: 107424)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "ct", scope: !528, file: !6, line: 312, baseType: !799, size: 32, offset: 107456)
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_credential_type", file: !23, line: 59, baseType: !22)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "use_auth_secret_with_timestamp", scope: !528, file: !6, line: 313, baseType: !31, size: 32, offset: 107488)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "max_bps", scope: !528, file: !6, line: 314, baseType: !496, size: 64, offset: 107520)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "bps_capacity", scope: !528, file: !6, line: 315, baseType: !496, size: 64, offset: 107584)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "bps_capacity_allocated", scope: !528, file: !6, line: 316, baseType: !496, size: 64, offset: 107648)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "total_quota", scope: !528, file: !6, line: 317, baseType: !476, size: 32, offset: 107712)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "user_quota", scope: !528, file: !6, line: 318, baseType: !476, size: 32, offset: 107744)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "prometheus", scope: !528, file: !6, line: 320, baseType: !31, size: 32, offset: 107776)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "default_users_db", scope: !528, file: !6, line: 326, baseType: !808, size: 8512, offset: 107840)
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "default_users_db_t", file: !30, line: 167, baseType: !809)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_default_users_db_t", file: !30, line: 159, size: 8512, elements: !810)
!810 = !{!811, !813, !818}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "userdb_type", scope: !809, file: !30, line: 161, baseType: !812, size: 32)
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "TURN_USERDB_TYPE", file: !30, line: 117, baseType: !29)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "persistent_users_db", scope: !809, file: !30, line: 163, baseType: !814, size: 8200, offset: 32)
!814 = !DIDerivedType(tag: DW_TAG_typedef, name: "persistent_users_db_t", file: !30, line: 157, baseType: !815)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_persistent_users_db_t", file: !30, line: 155, size: 8200, elements: !816)
!816 = !{!817}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "userdb", scope: !815, file: !30, line: 156, baseType: !543, size: 8200)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "ram_db", scope: !809, file: !30, line: 165, baseType: !819, size: 256, offset: 8256)
!819 = !DIDerivedType(tag: DW_TAG_typedef, name: "ram_users_db_t", file: !30, line: 153, baseType: !820)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ram_users_db_t", file: !30, line: 149, size: 256, elements: !821)
!821 = !{!822, !823, !828}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "users_number", scope: !820, file: !30, line: 150, baseType: !673, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "static_accounts", scope: !820, file: !30, line: 151, baseType: !824, size: 64, offset: 64)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_typedef, name: "ur_string_map", file: !826, line: 227, baseType: !827)
!826 = !DIFile(filename: "src/server/ns_turn_maps.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "1d968a8e0fbb011891961d10535e1104")
!827 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ur_string_map", file: !826, line: 226, flags: DIFlagFwdDecl)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "static_auth_secrets", scope: !820, file: !30, line: 152, baseType: !829, size: 128, offset: 128)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "secrets_list_t", file: !30, line: 143, baseType: !830)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_secrets_list", file: !30, line: 139, size: 128, elements: !831)
!831 = !{!832, !833}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "secrets", scope: !830, file: !30, line: 140, baseType: !716, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "sz", scope: !830, file: !30, line: 141, baseType: !673, size: 64, offset: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "cpus", scope: !528, file: !6, line: 330, baseType: !475, size: 64, offset: 116352)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "secret_key_file", scope: !528, file: !6, line: 333, baseType: !543, size: 8200, offset: 116416)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "secret_key", scope: !528, file: !6, line: 334, baseType: !837, size: 8200, offset: 124616)
!837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !429, size: 8200, elements: !544)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "allocation_default_address_family", scope: !528, file: !6, line: 335, baseType: !839, size: 32, offset: 132832)
!839 = !DIDerivedType(tag: DW_TAG_typedef, name: "ALLOCATION_DEFAULT_ADDRESS_FAMILY", file: !40, line: 84, baseType: !39)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "no_auth_pings", scope: !528, file: !6, line: 336, baseType: !31, size: 32, offset: 132864)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "no_dynamic_ip_list", scope: !528, file: !6, line: 337, baseType: !31, size: 32, offset: 132896)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "no_dynamic_realms", scope: !528, file: !6, line: 338, baseType: !31, size: 32, offset: 132928)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "log_binding", scope: !528, file: !6, line: 340, baseType: !476, size: 32, offset: 132960)
!844 = !DIGlobalVariableExpression(var: !845, expr: !DIExpression())
!845 = distinct !DIGlobalVariable(scope: null, file: !65, line: 358, type: !846, isLocal: true, isDefinition: true)
!846 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 72, elements: !847)
!847 = !{!848}
!848 = !DISubrange(count: 9)
!849 = !DIGlobalVariableExpression(var: !850, expr: !DIExpression())
!850 = distinct !DIGlobalVariable(scope: null, file: !65, line: 360, type: !509, isLocal: true, isDefinition: true)
!851 = !DIGlobalVariableExpression(var: !852, expr: !DIExpression())
!852 = distinct !DIGlobalVariable(scope: null, file: !65, line: 371, type: !853, isLocal: true, isDefinition: true)
!853 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 40, elements: !854)
!854 = !{!855}
!855 = !DISubrange(count: 5)
!856 = !DIGlobalVariableExpression(var: !857, expr: !DIExpression())
!857 = distinct !DIGlobalVariable(scope: null, file: !65, line: 373, type: !858, isLocal: true, isDefinition: true)
!858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 24, elements: !859)
!859 = !{!860}
!860 = !DISubrange(count: 3)
!861 = !DIGlobalVariableExpression(var: !862, expr: !DIExpression())
!862 = distinct !DIGlobalVariable(scope: null, file: !65, line: 1065, type: !863, isLocal: true, isDefinition: true)
!863 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 32, elements: !454)
!864 = !DIGlobalVariableExpression(var: !865, expr: !DIExpression())
!865 = distinct !DIGlobalVariable(scope: null, file: !65, line: 1091, type: !866, isLocal: true, isDefinition: true)
!866 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 16, elements: !867)
!867 = !{!868}
!868 = !DISubrange(count: 2)
!869 = !DIGlobalVariableExpression(var: !870, expr: !DIExpression())
!870 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2234, type: !871, isLocal: true, isDefinition: true)
!871 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 80, elements: !872)
!872 = !{!873}
!873 = !DISubrange(count: 10)
!874 = !DIGlobalVariableExpression(var: !875, expr: !DIExpression())
!875 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2239, type: !876, isLocal: true, isDefinition: true)
!876 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 464, elements: !877)
!877 = !{!878}
!878 = !DISubrange(count: 58)
!879 = !DIGlobalVariableExpression(var: !880, expr: !DIExpression())
!880 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2321, type: !881, isLocal: true, isDefinition: true)
!881 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 136, elements: !882)
!882 = !{!883}
!883 = !DISubrange(count: 17)
!884 = !DIGlobalVariableExpression(var: !885, expr: !DIExpression())
!885 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2322, type: !886, isLocal: true, isDefinition: true)
!886 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 152, elements: !887)
!887 = !{!888}
!888 = !DISubrange(count: 19)
!889 = !DIGlobalVariableExpression(var: !890, expr: !DIExpression())
!890 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2325, type: !891, isLocal: true, isDefinition: true)
!891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 184, elements: !892)
!892 = !{!893}
!893 = !DISubrange(count: 23)
!894 = !DIGlobalVariableExpression(var: !895, expr: !DIExpression())
!895 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2328, type: !891, isLocal: true, isDefinition: true)
!896 = !DIGlobalVariableExpression(var: !897, expr: !DIExpression())
!897 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2340, type: !898, isLocal: true, isDefinition: true)
!898 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 768, elements: !899)
!899 = !{!900}
!900 = !DISubrange(count: 96)
!901 = !DIGlobalVariableExpression(var: !902, expr: !DIExpression())
!902 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2345, type: !903, isLocal: true, isDefinition: true)
!903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 664, elements: !904)
!904 = !{!905}
!905 = !DISubrange(count: 83)
!906 = !DIGlobalVariableExpression(var: !907, expr: !DIExpression())
!907 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2350, type: !908, isLocal: true, isDefinition: true)
!908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 504, elements: !909)
!909 = !{!910}
!910 = !DISubrange(count: 63)
!911 = !DIGlobalVariableExpression(var: !912, expr: !DIExpression())
!912 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2354, type: !908, isLocal: true, isDefinition: true)
!913 = !DIGlobalVariableExpression(var: !914, expr: !DIExpression())
!914 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2358, type: !915, isLocal: true, isDefinition: true)
!915 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 560, elements: !916)
!916 = !{!917}
!917 = !DISubrange(count: 70)
!918 = !DIGlobalVariableExpression(var: !919, expr: !DIExpression())
!919 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2363, type: !920, isLocal: true, isDefinition: true)
!920 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 56, elements: !921)
!921 = !{!922}
!922 = !DISubrange(count: 7)
!923 = !DIGlobalVariableExpression(var: !924, expr: !DIExpression())
!924 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2370, type: !925, isLocal: true, isDefinition: true)
!925 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 352, elements: !926)
!926 = !{!927}
!927 = !DISubrange(count: 44)
!928 = !DIGlobalVariableExpression(var: !929, expr: !DIExpression())
!929 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2374, type: !930, isLocal: true, isDefinition: true)
!930 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 472, elements: !931)
!931 = !{!932}
!932 = !DISubrange(count: 59)
!933 = !DIGlobalVariableExpression(var: !934, expr: !DIExpression())
!934 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2379, type: !935, isLocal: true, isDefinition: true)
!935 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 2208, elements: !936)
!936 = !{!937}
!937 = !DISubrange(count: 276)
!938 = !DIGlobalVariableExpression(var: !939, expr: !DIExpression())
!939 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2385, type: !940, isLocal: true, isDefinition: true)
!940 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 848, elements: !941)
!941 = !{!942}
!942 = !DISubrange(count: 106)
!943 = !DIGlobalVariableExpression(var: !944, expr: !DIExpression())
!944 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2387, type: !945, isLocal: true, isDefinition: true)
!945 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 680, elements: !946)
!946 = !{!947}
!947 = !DISubrange(count: 85)
!948 = !DIGlobalVariableExpression(var: !949, expr: !DIExpression())
!949 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2393, type: !950, isLocal: true, isDefinition: true)
!950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 912, elements: !951)
!951 = !{!952}
!952 = !DISubrange(count: 114)
!953 = !DIGlobalVariableExpression(var: !954, expr: !DIExpression())
!954 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2399, type: !955, isLocal: true, isDefinition: true)
!955 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 1952, elements: !956)
!956 = !{!957}
!957 = !DISubrange(count: 244)
!958 = !DIGlobalVariableExpression(var: !959, expr: !DIExpression())
!959 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2410, type: !960, isLocal: true, isDefinition: true)
!960 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 1296, elements: !961)
!961 = !{!962}
!962 = !DISubrange(count: 162)
!963 = !DIGlobalVariableExpression(var: !964, expr: !DIExpression())
!964 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2416, type: !965, isLocal: true, isDefinition: true)
!965 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 1448, elements: !966)
!966 = !{!967}
!967 = !DISubrange(count: 181)
!968 = !DIGlobalVariableExpression(var: !969, expr: !DIExpression())
!969 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2426, type: !970, isLocal: true, isDefinition: true)
!970 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 392, elements: !971)
!971 = !{!972}
!972 = !DISubrange(count: 49)
!973 = !DIGlobalVariableExpression(var: !974, expr: !DIExpression())
!974 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2427, type: !975, isLocal: true, isDefinition: true)
!975 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 432, elements: !976)
!976 = !{!977}
!977 = !DISubrange(count: 54)
!978 = !DIGlobalVariableExpression(var: !979, expr: !DIExpression())
!979 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2430, type: !980, isLocal: true, isDefinition: true)
!980 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 456, elements: !981)
!981 = !{!982}
!982 = !DISubrange(count: 57)
!983 = !DIGlobalVariableExpression(var: !984, expr: !DIExpression())
!984 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2430, type: !985, isLocal: true, isDefinition: true)
!985 = !DICompositeType(tag: DW_TAG_array_type, baseType: !474, size: 40, elements: !854)
!986 = !DIGlobalVariableExpression(var: !987, expr: !DIExpression())
!987 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2431, type: !853, isLocal: true, isDefinition: true)
!988 = !DIGlobalVariableExpression(var: !989, expr: !DIExpression())
!989 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2435, type: !990, isLocal: true, isDefinition: true)
!990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 440, elements: !991)
!991 = !{!992}
!992 = !DISubrange(count: 55)
!993 = !DIGlobalVariableExpression(var: !994, expr: !DIExpression())
!994 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2436, type: !995, isLocal: true, isDefinition: true)
!995 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 312, elements: !996)
!996 = !{!997}
!997 = !DISubrange(count: 39)
!998 = !DIGlobalVariableExpression(var: !999, expr: !DIExpression())
!999 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2451, type: !1000, isLocal: true, isDefinition: true)
!1000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 368, elements: !1001)
!1001 = !{!1002}
!1002 = !DISubrange(count: 46)
!1003 = !DIGlobalVariableExpression(var: !1004, expr: !DIExpression())
!1004 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2452, type: !990, isLocal: true, isDefinition: true)
!1005 = !DIGlobalVariableExpression(var: !1006, expr: !DIExpression())
!1006 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2460, type: !1007, isLocal: true, isDefinition: true)
!1007 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 304, elements: !1008)
!1008 = !{!1009}
!1009 = !DISubrange(count: 38)
!1010 = !DIGlobalVariableExpression(var: !1011, expr: !DIExpression())
!1011 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2465, type: !925, isLocal: true, isDefinition: true)
!1012 = !DIGlobalVariableExpression(var: !1013, expr: !DIExpression())
!1013 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2477, type: !871, isLocal: true, isDefinition: true)
!1014 = !DIGlobalVariableExpression(var: !1015, expr: !DIExpression())
!1015 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2477, type: !863, isLocal: true, isDefinition: true)
!1016 = !DIGlobalVariableExpression(var: !1017, expr: !DIExpression())
!1017 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2480, type: !1018, isLocal: true, isDefinition: true)
!1018 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 248, elements: !1019)
!1019 = !{!1020}
!1020 = !DISubrange(count: 31)
!1021 = !DIGlobalVariableExpression(var: !1022, expr: !DIExpression())
!1022 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2495, type: !1023, isLocal: true, isDefinition: true)
!1023 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 288, elements: !1024)
!1024 = !{!1025}
!1025 = !DISubrange(count: 36)
!1026 = !DIGlobalVariableExpression(var: !1027, expr: !DIExpression())
!1027 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2514, type: !1028, isLocal: true, isDefinition: true)
!1028 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 216, elements: !1029)
!1029 = !{!1030}
!1030 = !DISubrange(count: 27)
!1031 = !DIGlobalVariableExpression(var: !1032, expr: !DIExpression())
!1032 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2519, type: !522, isLocal: true, isDefinition: true)
!1033 = !DIGlobalVariableExpression(var: !1034, expr: !DIExpression())
!1034 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2520, type: !1035, isLocal: true, isDefinition: true)
!1035 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 208, elements: !1036)
!1036 = !{!1037}
!1037 = !DISubrange(count: 26)
!1038 = !DIGlobalVariableExpression(var: !1039, expr: !DIExpression())
!1039 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2521, type: !1040, isLocal: true, isDefinition: true)
!1040 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 160, elements: !1041)
!1041 = !{!1042}
!1042 = !DISubrange(count: 20)
!1043 = !DIGlobalVariableExpression(var: !1044, expr: !DIExpression())
!1044 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2522, type: !522, isLocal: true, isDefinition: true)
!1045 = !DIGlobalVariableExpression(var: !1046, expr: !DIExpression())
!1046 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2523, type: !1040, isLocal: true, isDefinition: true)
!1047 = !DIGlobalVariableExpression(var: !1048, expr: !DIExpression())
!1048 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2524, type: !1049, isLocal: true, isDefinition: true)
!1049 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 120, elements: !1050)
!1050 = !{!1051}
!1051 = !DISubrange(count: 15)
!1052 = !DIGlobalVariableExpression(var: !1053, expr: !DIExpression())
!1053 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2540, type: !853, isLocal: true, isDefinition: true)
!1054 = !DIGlobalVariableExpression(var: !1055, expr: !DIExpression())
!1055 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2542, type: !1056, isLocal: true, isDefinition: true)
!1056 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 176, elements: !1057)
!1057 = !{!1058}
!1058 = !DISubrange(count: 22)
!1059 = !DIGlobalVariableExpression(var: !1060, expr: !DIExpression())
!1060 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2554, type: !995, isLocal: true, isDefinition: true)
!1061 = !DIGlobalVariableExpression(var: !1062, expr: !DIExpression())
!1062 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2557, type: !925, isLocal: true, isDefinition: true)
!1063 = !DIGlobalVariableExpression(var: !1064, expr: !DIExpression())
!1064 = distinct !DIGlobalVariable(name: "mutex_buf", scope: !2, file: !65, line: 2576, type: !1065, isLocal: true, isDefinition: true)
!1065 = !DICompositeType(tag: DW_TAG_array_type, baseType: !565, size: 81920, elements: !1066)
!1066 = !{!1067}
!1067 = !DISubrange(count: 256)
!1068 = !DIGlobalVariableExpression(var: !1069, expr: !DIExpression())
!1069 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2201, type: !920, isLocal: true, isDefinition: true)
!1070 = !DIGlobalVariableExpression(var: !1071, expr: !DIExpression())
!1071 = distinct !DIGlobalVariable(scope: null, file: !65, line: 843, type: !881, isLocal: true, isDefinition: true)
!1072 = !DIGlobalVariableExpression(var: !1073, expr: !DIExpression())
!1073 = distinct !DIGlobalVariable(scope: null, file: !65, line: 844, type: !1049, isLocal: true, isDefinition: true)
!1074 = !DIGlobalVariableExpression(var: !1075, expr: !DIExpression())
!1075 = distinct !DIGlobalVariable(scope: null, file: !65, line: 845, type: !886, isLocal: true, isDefinition: true)
!1076 = !DIGlobalVariableExpression(var: !1077, expr: !DIExpression())
!1077 = distinct !DIGlobalVariable(scope: null, file: !65, line: 846, type: !886, isLocal: true, isDefinition: true)
!1078 = !DIGlobalVariableExpression(var: !1079, expr: !DIExpression())
!1079 = distinct !DIGlobalVariable(scope: null, file: !65, line: 847, type: !891, isLocal: true, isDefinition: true)
!1080 = !DIGlobalVariableExpression(var: !1081, expr: !DIExpression())
!1081 = distinct !DIGlobalVariable(scope: null, file: !65, line: 848, type: !1049, isLocal: true, isDefinition: true)
!1082 = !DIGlobalVariableExpression(var: !1083, expr: !DIExpression())
!1083 = distinct !DIGlobalVariable(scope: null, file: !65, line: 849, type: !1084, isLocal: true, isDefinition: true)
!1084 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 104, elements: !1085)
!1085 = !{!1086}
!1086 = !DISubrange(count: 13)
!1087 = !DIGlobalVariableExpression(var: !1088, expr: !DIExpression())
!1088 = distinct !DIGlobalVariable(scope: null, file: !65, line: 850, type: !1084, isLocal: true, isDefinition: true)
!1089 = !DIGlobalVariableExpression(var: !1090, expr: !DIExpression())
!1090 = distinct !DIGlobalVariable(scope: null, file: !65, line: 851, type: !846, isLocal: true, isDefinition: true)
!1091 = !DIGlobalVariableExpression(var: !1092, expr: !DIExpression())
!1092 = distinct !DIGlobalVariable(scope: null, file: !65, line: 852, type: !1093, isLocal: true, isDefinition: true)
!1093 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 96, elements: !1094)
!1094 = !{!1095}
!1095 = !DISubrange(count: 12)
!1096 = !DIGlobalVariableExpression(var: !1097, expr: !DIExpression())
!1097 = distinct !DIGlobalVariable(scope: null, file: !65, line: 853, type: !491, isLocal: true, isDefinition: true)
!1098 = !DIGlobalVariableExpression(var: !1099, expr: !DIExpression())
!1099 = distinct !DIGlobalVariable(scope: null, file: !65, line: 854, type: !846, isLocal: true, isDefinition: true)
!1100 = !DIGlobalVariableExpression(var: !1101, expr: !DIExpression())
!1101 = distinct !DIGlobalVariable(scope: null, file: !65, line: 855, type: !846, isLocal: true, isDefinition: true)
!1102 = !DIGlobalVariableExpression(var: !1103, expr: !DIExpression())
!1103 = distinct !DIGlobalVariable(scope: null, file: !65, line: 856, type: !1084, isLocal: true, isDefinition: true)
!1104 = !DIGlobalVariableExpression(var: !1105, expr: !DIExpression())
!1105 = distinct !DIGlobalVariable(scope: null, file: !65, line: 857, type: !509, isLocal: true, isDefinition: true)
!1106 = !DIGlobalVariableExpression(var: !1107, expr: !DIExpression())
!1107 = distinct !DIGlobalVariable(scope: null, file: !65, line: 858, type: !853, isLocal: true, isDefinition: true)
!1108 = !DIGlobalVariableExpression(var: !1109, expr: !DIExpression())
!1109 = distinct !DIGlobalVariable(scope: null, file: !65, line: 859, type: !920, isLocal: true, isDefinition: true)
!1110 = !DIGlobalVariableExpression(var: !1111, expr: !DIExpression())
!1111 = distinct !DIGlobalVariable(scope: null, file: !65, line: 860, type: !858, isLocal: true, isDefinition: true)
!1112 = !DIGlobalVariableExpression(var: !1113, expr: !DIExpression())
!1113 = distinct !DIGlobalVariable(scope: null, file: !65, line: 862, type: !1093, isLocal: true, isDefinition: true)
!1114 = !DIGlobalVariableExpression(var: !1115, expr: !DIExpression())
!1115 = distinct !DIGlobalVariable(scope: null, file: !65, line: 863, type: !1116, isLocal: true, isDefinition: true)
!1116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 88, elements: !1117)
!1117 = !{!1118}
!1118 = !DISubrange(count: 11)
!1119 = !DIGlobalVariableExpression(var: !1120, expr: !DIExpression())
!1120 = distinct !DIGlobalVariable(scope: null, file: !65, line: 866, type: !1084, isLocal: true, isDefinition: true)
!1121 = !DIGlobalVariableExpression(var: !1122, expr: !DIExpression())
!1122 = distinct !DIGlobalVariable(scope: null, file: !65, line: 869, type: !1084, isLocal: true, isDefinition: true)
!1123 = !DIGlobalVariableExpression(var: !1124, expr: !DIExpression())
!1124 = distinct !DIGlobalVariable(scope: null, file: !65, line: 872, type: !1084, isLocal: true, isDefinition: true)
!1125 = !DIGlobalVariableExpression(var: !1126, expr: !DIExpression())
!1126 = distinct !DIGlobalVariable(scope: null, file: !65, line: 873, type: !491, isLocal: true, isDefinition: true)
!1127 = !DIGlobalVariableExpression(var: !1128, expr: !DIExpression())
!1128 = distinct !DIGlobalVariable(scope: null, file: !65, line: 876, type: !1116, isLocal: true, isDefinition: true)
!1129 = !DIGlobalVariableExpression(var: !1130, expr: !DIExpression())
!1130 = distinct !DIGlobalVariable(scope: null, file: !65, line: 878, type: !1131, isLocal: true, isDefinition: true)
!1131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 128, elements: !448)
!1132 = !DIGlobalVariableExpression(var: !1133, expr: !DIExpression())
!1133 = distinct !DIGlobalVariable(scope: null, file: !65, line: 879, type: !886, isLocal: true, isDefinition: true)
!1134 = !DIGlobalVariableExpression(var: !1135, expr: !DIExpression())
!1135 = distinct !DIGlobalVariable(scope: null, file: !65, line: 880, type: !491, isLocal: true, isDefinition: true)
!1136 = !DIGlobalVariableExpression(var: !1137, expr: !DIExpression())
!1137 = distinct !DIGlobalVariable(scope: null, file: !65, line: 881, type: !886, isLocal: true, isDefinition: true)
!1138 = !DIGlobalVariableExpression(var: !1139, expr: !DIExpression())
!1139 = distinct !DIGlobalVariable(scope: null, file: !65, line: 882, type: !1140, isLocal: true, isDefinition: true)
!1140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 144, elements: !1141)
!1141 = !{!1142}
!1142 = !DISubrange(count: 18)
!1143 = !DIGlobalVariableExpression(var: !1144, expr: !DIExpression())
!1144 = distinct !DIGlobalVariable(scope: null, file: !65, line: 883, type: !886, isLocal: true, isDefinition: true)
!1145 = !DIGlobalVariableExpression(var: !1146, expr: !DIExpression())
!1146 = distinct !DIGlobalVariable(scope: null, file: !65, line: 884, type: !1147, isLocal: true, isDefinition: true)
!1147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 48, elements: !1148)
!1148 = !{!1149}
!1149 = !DISubrange(count: 6)
!1150 = !DIGlobalVariableExpression(var: !1151, expr: !DIExpression())
!1151 = distinct !DIGlobalVariable(scope: null, file: !65, line: 885, type: !1093, isLocal: true, isDefinition: true)
!1152 = !DIGlobalVariableExpression(var: !1153, expr: !DIExpression())
!1153 = distinct !DIGlobalVariable(scope: null, file: !65, line: 886, type: !1147, isLocal: true, isDefinition: true)
!1154 = !DIGlobalVariableExpression(var: !1155, expr: !DIExpression())
!1155 = distinct !DIGlobalVariable(scope: null, file: !65, line: 887, type: !1116, isLocal: true, isDefinition: true)
!1156 = !DIGlobalVariableExpression(var: !1157, expr: !DIExpression())
!1157 = distinct !DIGlobalVariable(scope: null, file: !65, line: 888, type: !1093, isLocal: true, isDefinition: true)
!1158 = !DIGlobalVariableExpression(var: !1159, expr: !DIExpression())
!1159 = distinct !DIGlobalVariable(scope: null, file: !65, line: 889, type: !509, isLocal: true, isDefinition: true)
!1160 = !DIGlobalVariableExpression(var: !1161, expr: !DIExpression())
!1161 = distinct !DIGlobalVariable(scope: null, file: !65, line: 890, type: !1084, isLocal: true, isDefinition: true)
!1162 = !DIGlobalVariableExpression(var: !1163, expr: !DIExpression())
!1163 = distinct !DIGlobalVariable(scope: null, file: !65, line: 891, type: !509, isLocal: true, isDefinition: true)
!1164 = !DIGlobalVariableExpression(var: !1165, expr: !DIExpression())
!1165 = distinct !DIGlobalVariable(scope: null, file: !65, line: 892, type: !509, isLocal: true, isDefinition: true)
!1166 = !DIGlobalVariableExpression(var: !1167, expr: !DIExpression())
!1167 = distinct !DIGlobalVariable(scope: null, file: !65, line: 893, type: !920, isLocal: true, isDefinition: true)
!1168 = !DIGlobalVariableExpression(var: !1169, expr: !DIExpression())
!1169 = distinct !DIGlobalVariable(scope: null, file: !65, line: 894, type: !853, isLocal: true, isDefinition: true)
!1170 = !DIGlobalVariableExpression(var: !1171, expr: !DIExpression())
!1171 = distinct !DIGlobalVariable(scope: null, file: !65, line: 895, type: !1056, isLocal: true, isDefinition: true)
!1172 = !DIGlobalVariableExpression(var: !1173, expr: !DIExpression())
!1173 = distinct !DIGlobalVariable(scope: null, file: !65, line: 896, type: !1093, isLocal: true, isDefinition: true)
!1174 = !DIGlobalVariableExpression(var: !1175, expr: !DIExpression())
!1175 = distinct !DIGlobalVariable(scope: null, file: !65, line: 897, type: !1176, isLocal: true, isDefinition: true)
!1176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 200, elements: !1177)
!1177 = !{!1178}
!1178 = !DISubrange(count: 25)
!1179 = !DIGlobalVariableExpression(var: !1180, expr: !DIExpression())
!1180 = distinct !DIGlobalVariable(scope: null, file: !65, line: 898, type: !920, isLocal: true, isDefinition: true)
!1181 = !DIGlobalVariableExpression(var: !1182, expr: !DIExpression())
!1182 = distinct !DIGlobalVariable(scope: null, file: !65, line: 899, type: !920, isLocal: true, isDefinition: true)
!1183 = !DIGlobalVariableExpression(var: !1184, expr: !DIExpression())
!1184 = distinct !DIGlobalVariable(scope: null, file: !65, line: 900, type: !920, isLocal: true, isDefinition: true)
!1185 = !DIGlobalVariableExpression(var: !1186, expr: !DIExpression())
!1186 = distinct !DIGlobalVariable(scope: null, file: !65, line: 901, type: !509, isLocal: true, isDefinition: true)
!1187 = !DIGlobalVariableExpression(var: !1188, expr: !DIExpression())
!1188 = distinct !DIGlobalVariable(scope: null, file: !65, line: 902, type: !1084, isLocal: true, isDefinition: true)
!1189 = !DIGlobalVariableExpression(var: !1190, expr: !DIExpression())
!1190 = distinct !DIGlobalVariable(scope: null, file: !65, line: 903, type: !1084, isLocal: true, isDefinition: true)
!1191 = !DIGlobalVariableExpression(var: !1192, expr: !DIExpression())
!1192 = distinct !DIGlobalVariable(scope: null, file: !65, line: 904, type: !1093, isLocal: true, isDefinition: true)
!1193 = !DIGlobalVariableExpression(var: !1194, expr: !DIExpression())
!1194 = distinct !DIGlobalVariable(scope: null, file: !65, line: 905, type: !1056, isLocal: true, isDefinition: true)
!1195 = !DIGlobalVariableExpression(var: !1196, expr: !DIExpression())
!1196 = distinct !DIGlobalVariable(scope: null, file: !65, line: 906, type: !881, isLocal: true, isDefinition: true)
!1197 = !DIGlobalVariableExpression(var: !1198, expr: !DIExpression())
!1198 = distinct !DIGlobalVariable(scope: null, file: !65, line: 907, type: !1040, isLocal: true, isDefinition: true)
!1199 = !DIGlobalVariableExpression(var: !1200, expr: !DIExpression())
!1200 = distinct !DIGlobalVariable(scope: null, file: !65, line: 908, type: !871, isLocal: true, isDefinition: true)
!1201 = !DIGlobalVariableExpression(var: !1202, expr: !DIExpression())
!1202 = distinct !DIGlobalVariable(scope: null, file: !65, line: 909, type: !509, isLocal: true, isDefinition: true)
!1203 = !DIGlobalVariableExpression(var: !1204, expr: !DIExpression())
!1204 = distinct !DIGlobalVariable(scope: null, file: !65, line: 910, type: !853, isLocal: true, isDefinition: true)
!1205 = !DIGlobalVariableExpression(var: !1206, expr: !DIExpression())
!1206 = distinct !DIGlobalVariable(scope: null, file: !65, line: 911, type: !853, isLocal: true, isDefinition: true)
!1207 = !DIGlobalVariableExpression(var: !1208, expr: !DIExpression())
!1208 = distinct !DIGlobalVariable(scope: null, file: !65, line: 912, type: !846, isLocal: true, isDefinition: true)
!1209 = !DIGlobalVariableExpression(var: !1210, expr: !DIExpression())
!1210 = distinct !DIGlobalVariable(scope: null, file: !65, line: 913, type: !846, isLocal: true, isDefinition: true)
!1211 = !DIGlobalVariableExpression(var: !1212, expr: !DIExpression())
!1212 = distinct !DIGlobalVariable(scope: null, file: !65, line: 914, type: !491, isLocal: true, isDefinition: true)
!1213 = !DIGlobalVariableExpression(var: !1214, expr: !DIExpression())
!1214 = distinct !DIGlobalVariable(scope: null, file: !65, line: 915, type: !920, isLocal: true, isDefinition: true)
!1215 = !DIGlobalVariableExpression(var: !1216, expr: !DIExpression())
!1216 = distinct !DIGlobalVariable(scope: null, file: !65, line: 916, type: !1116, isLocal: true, isDefinition: true)
!1217 = !DIGlobalVariableExpression(var: !1218, expr: !DIExpression())
!1218 = distinct !DIGlobalVariable(scope: null, file: !65, line: 917, type: !1140, isLocal: true, isDefinition: true)
!1219 = !DIGlobalVariableExpression(var: !1220, expr: !DIExpression())
!1220 = distinct !DIGlobalVariable(scope: null, file: !65, line: 918, type: !1176, isLocal: true, isDefinition: true)
!1221 = !DIGlobalVariableExpression(var: !1222, expr: !DIExpression())
!1222 = distinct !DIGlobalVariable(scope: null, file: !65, line: 919, type: !1116, isLocal: true, isDefinition: true)
!1223 = !DIGlobalVariableExpression(var: !1224, expr: !DIExpression())
!1224 = distinct !DIGlobalVariable(scope: null, file: !65, line: 920, type: !881, isLocal: true, isDefinition: true)
!1225 = !DIGlobalVariableExpression(var: !1226, expr: !DIExpression())
!1226 = distinct !DIGlobalVariable(scope: null, file: !65, line: 921, type: !881, isLocal: true, isDefinition: true)
!1227 = !DIGlobalVariableExpression(var: !1228, expr: !DIExpression())
!1228 = distinct !DIGlobalVariable(scope: null, file: !65, line: 922, type: !1229, isLocal: true, isDefinition: true)
!1229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 168, elements: !1230)
!1230 = !{!1231}
!1231 = !DISubrange(count: 21)
!1232 = !DIGlobalVariableExpression(var: !1233, expr: !DIExpression())
!1233 = distinct !DIGlobalVariable(scope: null, file: !65, line: 923, type: !886, isLocal: true, isDefinition: true)
!1234 = !DIGlobalVariableExpression(var: !1235, expr: !DIExpression())
!1235 = distinct !DIGlobalVariable(scope: null, file: !65, line: 924, type: !1229, isLocal: true, isDefinition: true)
!1236 = !DIGlobalVariableExpression(var: !1237, expr: !DIExpression())
!1237 = distinct !DIGlobalVariable(scope: null, file: !65, line: 925, type: !886, isLocal: true, isDefinition: true)
!1238 = !DIGlobalVariableExpression(var: !1239, expr: !DIExpression())
!1239 = distinct !DIGlobalVariable(scope: null, file: !65, line: 926, type: !1229, isLocal: true, isDefinition: true)
!1240 = !DIGlobalVariableExpression(var: !1241, expr: !DIExpression())
!1241 = distinct !DIGlobalVariable(scope: null, file: !65, line: 927, type: !1131, isLocal: true, isDefinition: true)
!1242 = !DIGlobalVariableExpression(var: !1243, expr: !DIExpression())
!1243 = distinct !DIGlobalVariable(scope: null, file: !65, line: 928, type: !1049, isLocal: true, isDefinition: true)
!1244 = !DIGlobalVariableExpression(var: !1245, expr: !DIExpression())
!1245 = distinct !DIGlobalVariable(scope: null, file: !65, line: 929, type: !1093, isLocal: true, isDefinition: true)
!1246 = !DIGlobalVariableExpression(var: !1247, expr: !DIExpression())
!1247 = distinct !DIGlobalVariable(scope: null, file: !65, line: 930, type: !509, isLocal: true, isDefinition: true)
!1248 = !DIGlobalVariableExpression(var: !1249, expr: !DIExpression())
!1249 = distinct !DIGlobalVariable(scope: null, file: !65, line: 931, type: !1093, isLocal: true, isDefinition: true)
!1250 = !DIGlobalVariableExpression(var: !1251, expr: !DIExpression())
!1251 = distinct !DIGlobalVariable(scope: null, file: !65, line: 932, type: !509, isLocal: true, isDefinition: true)
!1252 = !DIGlobalVariableExpression(var: !1253, expr: !DIExpression())
!1253 = distinct !DIGlobalVariable(scope: null, file: !65, line: 933, type: !509, isLocal: true, isDefinition: true)
!1254 = !DIGlobalVariableExpression(var: !1255, expr: !DIExpression())
!1255 = distinct !DIGlobalVariable(scope: null, file: !65, line: 934, type: !871, isLocal: true, isDefinition: true)
!1256 = !DIGlobalVariableExpression(var: !1257, expr: !DIExpression())
!1257 = distinct !DIGlobalVariable(scope: null, file: !65, line: 935, type: !1116, isLocal: true, isDefinition: true)
!1258 = !DIGlobalVariableExpression(var: !1259, expr: !DIExpression())
!1259 = distinct !DIGlobalVariable(scope: null, file: !65, line: 936, type: !846, isLocal: true, isDefinition: true)
!1260 = !DIGlobalVariableExpression(var: !1261, expr: !DIExpression())
!1261 = distinct !DIGlobalVariable(scope: null, file: !65, line: 937, type: !920, isLocal: true, isDefinition: true)
!1262 = !DIGlobalVariableExpression(var: !1263, expr: !DIExpression())
!1263 = distinct !DIGlobalVariable(scope: null, file: !65, line: 938, type: !920, isLocal: true, isDefinition: true)
!1264 = !DIGlobalVariableExpression(var: !1265, expr: !DIExpression())
!1265 = distinct !DIGlobalVariable(scope: null, file: !65, line: 939, type: !846, isLocal: true, isDefinition: true)
!1266 = !DIGlobalVariableExpression(var: !1267, expr: !DIExpression())
!1267 = distinct !DIGlobalVariable(scope: null, file: !65, line: 940, type: !1084, isLocal: true, isDefinition: true)
!1268 = !DIGlobalVariableExpression(var: !1269, expr: !DIExpression())
!1269 = distinct !DIGlobalVariable(scope: null, file: !65, line: 941, type: !871, isLocal: true, isDefinition: true)
!1270 = !DIGlobalVariableExpression(var: !1271, expr: !DIExpression())
!1271 = distinct !DIGlobalVariable(scope: null, file: !65, line: 942, type: !1084, isLocal: true, isDefinition: true)
!1272 = !DIGlobalVariableExpression(var: !1273, expr: !DIExpression())
!1273 = distinct !DIGlobalVariable(scope: null, file: !65, line: 943, type: !1049, isLocal: true, isDefinition: true)
!1274 = !DIGlobalVariableExpression(var: !1275, expr: !DIExpression())
!1275 = distinct !DIGlobalVariable(scope: null, file: !65, line: 944, type: !1276, isLocal: true, isDefinition: true)
!1276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 224, elements: !1277)
!1277 = !{!1278}
!1278 = !DISubrange(count: 28)
!1279 = !DIGlobalVariableExpression(var: !1280, expr: !DIExpression())
!1280 = distinct !DIGlobalVariable(scope: null, file: !65, line: 945, type: !1084, isLocal: true, isDefinition: true)
!1281 = !DIGlobalVariableExpression(var: !1282, expr: !DIExpression())
!1282 = distinct !DIGlobalVariable(scope: null, file: !65, line: 946, type: !522, isLocal: true, isDefinition: true)
!1283 = !DIGlobalVariableExpression(var: !1284, expr: !DIExpression())
!1284 = distinct !DIGlobalVariable(scope: null, file: !65, line: 947, type: !491, isLocal: true, isDefinition: true)
!1285 = !DIGlobalVariableExpression(var: !1286, expr: !DIExpression())
!1286 = distinct !DIGlobalVariable(scope: null, file: !65, line: 948, type: !1147, isLocal: true, isDefinition: true)
!1287 = !DIGlobalVariableExpression(var: !1288, expr: !DIExpression())
!1288 = distinct !DIGlobalVariable(scope: null, file: !65, line: 949, type: !920, isLocal: true, isDefinition: true)
!1289 = !DIGlobalVariableExpression(var: !1290, expr: !DIExpression())
!1290 = distinct !DIGlobalVariable(scope: null, file: !65, line: 950, type: !858, isLocal: true, isDefinition: true)
!1291 = !DIGlobalVariableExpression(var: !1292, expr: !DIExpression())
!1292 = distinct !DIGlobalVariable(scope: null, file: !65, line: 951, type: !846, isLocal: true, isDefinition: true)
!1293 = !DIGlobalVariableExpression(var: !1294, expr: !DIExpression())
!1294 = distinct !DIGlobalVariable(scope: null, file: !65, line: 952, type: !846, isLocal: true, isDefinition: true)
!1295 = !DIGlobalVariableExpression(var: !1296, expr: !DIExpression())
!1296 = distinct !DIGlobalVariable(scope: null, file: !65, line: 953, type: !846, isLocal: true, isDefinition: true)
!1297 = !DIGlobalVariableExpression(var: !1298, expr: !DIExpression())
!1298 = distinct !DIGlobalVariable(scope: null, file: !65, line: 954, type: !1116, isLocal: true, isDefinition: true)
!1299 = !DIGlobalVariableExpression(var: !1300, expr: !DIExpression())
!1300 = distinct !DIGlobalVariable(scope: null, file: !65, line: 955, type: !1116, isLocal: true, isDefinition: true)
!1301 = !DIGlobalVariableExpression(var: !1302, expr: !DIExpression())
!1302 = distinct !DIGlobalVariable(scope: null, file: !65, line: 956, type: !1131, isLocal: true, isDefinition: true)
!1303 = !DIGlobalVariableExpression(var: !1304, expr: !DIExpression())
!1304 = distinct !DIGlobalVariable(scope: null, file: !65, line: 957, type: !1040, isLocal: true, isDefinition: true)
!1305 = !DIGlobalVariableExpression(var: !1306, expr: !DIExpression())
!1306 = distinct !DIGlobalVariable(scope: null, file: !65, line: 958, type: !1307, isLocal: true, isDefinition: true)
!1307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 272, elements: !1308)
!1308 = !{!1309}
!1309 = !DISubrange(count: 34)
!1310 = !DIGlobalVariableExpression(var: !1311, expr: !DIExpression())
!1311 = distinct !DIGlobalVariable(scope: null, file: !65, line: 959, type: !491, isLocal: true, isDefinition: true)
!1312 = !DIGlobalVariableExpression(var: !1313, expr: !DIExpression())
!1313 = distinct !DIGlobalVariable(scope: null, file: !65, line: 960, type: !1093, isLocal: true, isDefinition: true)
!1314 = !DIGlobalVariableExpression(var: !1315, expr: !DIExpression())
!1315 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !65, line: 842, type: !1316, isLocal: true, isDefinition: true)
!1316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1317, size: 27904, elements: !1325)
!1317 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1318)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "myoption", file: !65, line: 827, size: 256, elements: !1319)
!1319 = !{!1320, !1321, !1322, !1324}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1318, file: !65, line: 828, baseType: !473, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !1318, file: !65, line: 829, baseType: !31, size: 32, offset: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !1318, file: !65, line: 830, baseType: !1323, size: 64, offset: 128)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1318, file: !65, line: 831, baseType: !31, size: 32, offset: 192)
!1325 = !{!1326}
!1326 = !DISubrange(count: 109)
!1327 = !DIGlobalVariableExpression(var: !1328, expr: !DIExpression())
!1328 = distinct !DIGlobalVariable(scope: null, file: !65, line: 1165, type: !863, isLocal: true, isDefinition: true)
!1329 = !DIGlobalVariableExpression(var: !1330, expr: !DIExpression())
!1330 = distinct !DIGlobalVariable(scope: null, file: !65, line: 1165, type: !863, isLocal: true, isDefinition: true)
!1331 = !DIGlobalVariableExpression(var: !1332, expr: !DIExpression())
!1332 = distinct !DIGlobalVariable(scope: null, file: !65, line: 1165, type: !863, isLocal: true, isDefinition: true)
!1333 = !DIGlobalVariableExpression(var: !1334, expr: !DIExpression())
!1334 = distinct !DIGlobalVariable(scope: null, file: !65, line: 1166, type: !858, isLocal: true, isDefinition: true)
!1335 = !DIGlobalVariableExpression(var: !1336, expr: !DIExpression())
!1336 = distinct !DIGlobalVariable(scope: null, file: !65, line: 1166, type: !858, isLocal: true, isDefinition: true)
!1337 = !DIGlobalVariableExpression(var: !1338, expr: !DIExpression())
!1338 = distinct !DIGlobalVariable(scope: null, file: !65, line: 1166, type: !858, isLocal: true, isDefinition: true)
!1339 = !DIGlobalVariableExpression(var: !1340, expr: !DIExpression())
!1340 = distinct !DIGlobalVariable(scope: null, file: !65, line: 1167, type: !1341, isLocal: true, isDefinition: true)
!1341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 584, elements: !1342)
!1342 = !{!1343}
!1343 = !DISubrange(count: 73)
!1344 = !DIGlobalVariableExpression(var: !1345, expr: !DIExpression())
!1345 = distinct !DIGlobalVariable(scope: null, file: !65, line: 1831, type: !970, isLocal: true, isDefinition: true)
!1346 = !DIGlobalVariableExpression(var: !1347, expr: !DIExpression())
!1347 = distinct !DIGlobalVariable(scope: null, file: !65, line: 1944, type: !908, isLocal: true, isDefinition: true)
!1348 = !DIGlobalVariableExpression(var: !1349, expr: !DIExpression())
!1349 = distinct !DIGlobalVariable(scope: null, file: !65, line: 1948, type: !1229, isLocal: true, isDefinition: true)
!1350 = !DIGlobalVariableExpression(var: !1351, expr: !DIExpression())
!1351 = distinct !DIGlobalVariable(scope: null, file: !65, line: 1956, type: !881, isLocal: true, isDefinition: true)
!1352 = !DIGlobalVariableExpression(var: !1353, expr: !DIExpression())
!1353 = distinct !DIGlobalVariable(scope: null, file: !65, line: 1963, type: !1040, isLocal: true, isDefinition: true)
!1354 = !DIGlobalVariableExpression(var: !1355, expr: !DIExpression())
!1355 = distinct !DIGlobalVariable(scope: null, file: !65, line: 1982, type: !866, isLocal: true, isDefinition: true)
!1356 = !DIGlobalVariableExpression(var: !1357, expr: !DIExpression())
!1357 = distinct !DIGlobalVariable(scope: null, file: !65, line: 1984, type: !1056, isLocal: true, isDefinition: true)
!1358 = !DIGlobalVariableExpression(var: !1359, expr: !DIExpression())
!1359 = distinct !DIGlobalVariable(scope: null, file: !65, line: 1990, type: !1360, isLocal: true, isDefinition: true)
!1360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 296, elements: !1361)
!1361 = !{!1362}
!1362 = !DISubrange(count: 37)
!1363 = !DIGlobalVariableExpression(var: !1364, expr: !DIExpression())
!1364 = distinct !DIGlobalVariable(scope: null, file: !65, line: 1990, type: !1365, isLocal: true, isDefinition: true)
!1365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !474, size: 80, elements: !872)
!1366 = !DIGlobalVariableExpression(var: !1367, expr: !DIExpression())
!1367 = distinct !DIGlobalVariable(scope: null, file: !65, line: 1994, type: !925, isLocal: true, isDefinition: true)
!1368 = !DIGlobalVariableExpression(var: !1369, expr: !DIExpression())
!1369 = distinct !DIGlobalVariable(scope: null, file: !65, line: 966, type: !1276, isLocal: true, isDefinition: true)
!1370 = !DIGlobalVariableExpression(var: !1371, expr: !DIExpression())
!1371 = distinct !DIGlobalVariable(scope: null, file: !65, line: 967, type: !517, isLocal: true, isDefinition: true)
!1372 = !DIGlobalVariableExpression(var: !1373, expr: !DIExpression())
!1373 = distinct !DIGlobalVariable(scope: null, file: !65, line: 968, type: !863, isLocal: true, isDefinition: true)
!1374 = !DIGlobalVariableExpression(var: !1375, expr: !DIExpression())
!1375 = distinct !DIGlobalVariable(scope: null, file: !65, line: 969, type: !863, isLocal: true, isDefinition: true)
!1376 = !DIGlobalVariableExpression(var: !1377, expr: !DIExpression())
!1377 = distinct !DIGlobalVariable(scope: null, file: !65, line: 970, type: !920, isLocal: true, isDefinition: true)
!1378 = !DIGlobalVariableExpression(var: !1379, expr: !DIExpression())
!1379 = distinct !DIGlobalVariable(scope: null, file: !65, line: 971, type: !853, isLocal: true, isDefinition: true)
!1380 = !DIGlobalVariableExpression(var: !1381, expr: !DIExpression())
!1381 = distinct !DIGlobalVariable(scope: null, file: !65, line: 972, type: !1116, isLocal: true, isDefinition: true)
!1382 = !DIGlobalVariableExpression(var: !1383, expr: !DIExpression())
!1383 = distinct !DIGlobalVariable(scope: null, file: !65, line: 973, type: !1116, isLocal: true, isDefinition: true)
!1384 = !DIGlobalVariableExpression(var: !1385, expr: !DIExpression())
!1385 = distinct !DIGlobalVariable(scope: null, file: !65, line: 974, type: !1093, isLocal: true, isDefinition: true)
!1386 = !DIGlobalVariableExpression(var: !1387, expr: !DIExpression())
!1387 = distinct !DIGlobalVariable(scope: null, file: !65, line: 975, type: !491, isLocal: true, isDefinition: true)
!1388 = !DIGlobalVariableExpression(var: !1389, expr: !DIExpression())
!1389 = distinct !DIGlobalVariable(scope: null, file: !65, line: 976, type: !886, isLocal: true, isDefinition: true)
!1390 = !DIGlobalVariableExpression(var: !1391, expr: !DIExpression())
!1391 = distinct !DIGlobalVariable(scope: null, file: !65, line: 977, type: !871, isLocal: true, isDefinition: true)
!1392 = !DIGlobalVariableExpression(var: !1393, expr: !DIExpression())
!1393 = distinct !DIGlobalVariable(scope: null, file: !65, line: 978, type: !1084, isLocal: true, isDefinition: true)
!1394 = !DIGlobalVariableExpression(var: !1395, expr: !DIExpression())
!1395 = distinct !DIGlobalVariable(scope: null, file: !65, line: 998, type: !846, isLocal: true, isDefinition: true)
!1396 = !DIGlobalVariableExpression(var: !1397, expr: !DIExpression())
!1397 = distinct !DIGlobalVariable(scope: null, file: !65, line: 999, type: !491, isLocal: true, isDefinition: true)
!1398 = !DIGlobalVariableExpression(var: !1399, expr: !DIExpression())
!1399 = distinct !DIGlobalVariable(scope: null, file: !65, line: 1000, type: !920, isLocal: true, isDefinition: true)
!1400 = !DIGlobalVariableExpression(var: !1401, expr: !DIExpression())
!1401 = distinct !DIGlobalVariable(scope: null, file: !65, line: 1001, type: !846, isLocal: true, isDefinition: true)
!1402 = !DIGlobalVariableExpression(var: !1403, expr: !DIExpression())
!1403 = distinct !DIGlobalVariable(scope: null, file: !65, line: 1002, type: !1116, isLocal: true, isDefinition: true)
!1404 = !DIGlobalVariableExpression(var: !1405, expr: !DIExpression())
!1405 = distinct !DIGlobalVariable(scope: null, file: !65, line: 1003, type: !1116, isLocal: true, isDefinition: true)
!1406 = !DIGlobalVariableExpression(var: !1407, expr: !DIExpression())
!1407 = distinct !DIGlobalVariable(scope: null, file: !65, line: 1004, type: !1084, isLocal: true, isDefinition: true)
!1408 = !DIGlobalVariableExpression(var: !1409, expr: !DIExpression())
!1409 = distinct !DIGlobalVariable(scope: null, file: !65, line: 1005, type: !920, isLocal: true, isDefinition: true)
!1410 = !DIGlobalVariableExpression(var: !1411, expr: !DIExpression())
!1411 = distinct !DIGlobalVariable(scope: null, file: !65, line: 1006, type: !881, isLocal: true, isDefinition: true)
!1412 = !DIGlobalVariableExpression(var: !1413, expr: !DIExpression())
!1413 = distinct !DIGlobalVariable(scope: null, file: !65, line: 1007, type: !1140, isLocal: true, isDefinition: true)
!1414 = !DIGlobalVariableExpression(var: !1415, expr: !DIExpression())
!1415 = distinct !DIGlobalVariable(scope: null, file: !65, line: 1011, type: !853, isLocal: true, isDefinition: true)
!1416 = !DIGlobalVariableExpression(var: !1417, expr: !DIExpression())
!1417 = distinct !DIGlobalVariable(name: "admin_long_options", scope: !2, file: !65, line: 965, type: !1418, isLocal: true, isDefinition: true)
!1418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1317, size: 9472, elements: !1361)
!1419 = !DIGlobalVariableExpression(var: !1420, expr: !DIExpression())
!1420 = distinct !DIGlobalVariable(name: "AdminUsage", scope: !2, file: !65, line: 682, type: !1421, isLocal: true, isDefinition: true)
!1421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 19352, elements: !1422)
!1422 = !{!1423}
!1423 = !DISubrange(count: 2419)
!1424 = !DIGlobalVariableExpression(var: !1425, expr: !DIExpression())
!1425 = distinct !DIGlobalVariable(name: "config_file", scope: !1426, file: !65, line: 1701, type: !543, isLocal: true, isDefinition: true)
!1426 = distinct !DISubprogram(name: "read_config_file", scope: !65, file: !65, line: 1699, type: !1427, scopeLine: 1700, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !1429)
!1427 = !DISubroutineType(types: !1428)
!1428 = !{null, !31, !716, !31}
!1429 = !{}
!1430 = !DIGlobalVariableExpression(var: !1431, expr: !DIExpression())
!1431 = distinct !DIGlobalVariable(scope: null, file: !65, line: 1708, type: !858, isLocal: true, isDefinition: true)
!1432 = !DIGlobalVariableExpression(var: !1433, expr: !DIExpression())
!1433 = distinct !DIGlobalVariable(scope: null, file: !65, line: 1712, type: !1035, isLocal: true, isDefinition: true)
!1434 = !DIGlobalVariableExpression(var: !1435, expr: !DIExpression())
!1435 = distinct !DIGlobalVariable(scope: null, file: !65, line: 1714, type: !858, isLocal: true, isDefinition: true)
!1436 = !DIGlobalVariableExpression(var: !1437, expr: !DIExpression())
!1437 = distinct !DIGlobalVariable(scope: null, file: !65, line: 1718, type: !858, isLocal: true, isDefinition: true)
!1438 = !DIGlobalVariableExpression(var: !1439, expr: !DIExpression())
!1439 = distinct !DIGlobalVariable(scope: null, file: !65, line: 1759, type: !1440, isLocal: true, isDefinition: true)
!1440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 240, elements: !1441)
!1441 = !{!1442}
!1442 = !DISubrange(count: 30)
!1443 = !DIGlobalVariableExpression(var: !1444, expr: !DIExpression())
!1444 = distinct !DIGlobalVariable(scope: null, file: !65, line: 1779, type: !1445, isLocal: true, isDefinition: true)
!1445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 488, elements: !1446)
!1446 = !{!1447}
!1447 = !DISubrange(count: 61)
!1448 = !DIGlobalVariableExpression(var: !1449, expr: !DIExpression())
!1449 = distinct !DIGlobalVariable(scope: null, file: !65, line: 1788, type: !1450, isLocal: true, isDefinition: true)
!1450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 696, elements: !1451)
!1451 = !{!1452}
!1452 = !DISubrange(count: 87)
!1453 = !DIGlobalVariableExpression(var: !1454, expr: !DIExpression())
!1454 = distinct !DIGlobalVariable(scope: null, file: !65, line: 1174, type: !1455, isLocal: true, isDefinition: true)
!1455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 1736, elements: !1456)
!1456 = !{!1457}
!1457 = !DISubrange(count: 217)
!1458 = !DIGlobalVariableExpression(var: !1459, expr: !DIExpression())
!1459 = distinct !DIGlobalVariable(scope: null, file: !65, line: 1185, type: !853, isLocal: true, isDefinition: true)
!1460 = !DIGlobalVariableExpression(var: !1461, expr: !DIExpression())
!1461 = distinct !DIGlobalVariable(scope: null, file: !65, line: 1187, type: !853, isLocal: true, isDefinition: true)
!1462 = !DIGlobalVariableExpression(var: !1463, expr: !DIExpression())
!1463 = distinct !DIGlobalVariable(scope: null, file: !65, line: 1189, type: !853, isLocal: true, isDefinition: true)
!1464 = !DIGlobalVariableExpression(var: !1465, expr: !DIExpression())
!1465 = distinct !DIGlobalVariable(scope: null, file: !65, line: 1192, type: !1466, isLocal: true, isDefinition: true)
!1466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 480, elements: !1467)
!1467 = !{!1468}
!1468 = !DISubrange(count: 60)
!1469 = !DIGlobalVariableExpression(var: !1470, expr: !DIExpression())
!1470 = distinct !DIGlobalVariable(scope: null, file: !65, line: 1227, type: !1471, isLocal: true, isDefinition: true)
!1471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 384, elements: !1472)
!1472 = !{!1473}
!1473 = !DISubrange(count: 48)
!1474 = !DIGlobalVariableExpression(var: !1475, expr: !DIExpression())
!1475 = distinct !DIGlobalVariable(scope: null, file: !65, line: 1257, type: !1276, isLocal: true, isDefinition: true)
!1476 = !DIGlobalVariableExpression(var: !1477, expr: !DIExpression())
!1477 = distinct !DIGlobalVariable(scope: null, file: !65, line: 1273, type: !1307, isLocal: true, isDefinition: true)
!1478 = !DIGlobalVariableExpression(var: !1479, expr: !DIExpression())
!1479 = distinct !DIGlobalVariable(scope: null, file: !65, line: 1287, type: !891, isLocal: true, isDefinition: true)
!1480 = !DIGlobalVariableExpression(var: !1481, expr: !DIExpression())
!1481 = distinct !DIGlobalVariable(scope: null, file: !65, line: 1299, type: !522, isLocal: true, isDefinition: true)
!1482 = !DIGlobalVariableExpression(var: !1483, expr: !DIExpression())
!1483 = distinct !DIGlobalVariable(scope: null, file: !65, line: 1314, type: !1000, isLocal: true, isDefinition: true)
!1484 = !DIGlobalVariableExpression(var: !1485, expr: !DIExpression())
!1485 = distinct !DIGlobalVariable(scope: null, file: !65, line: 1404, type: !1486, isLocal: true, isDefinition: true)
!1486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 344, elements: !1487)
!1487 = !{!1488}
!1488 = !DISubrange(count: 43)
!1489 = !DIGlobalVariableExpression(var: !1490, expr: !DIExpression())
!1490 = distinct !DIGlobalVariable(scope: null, file: !65, line: 1410, type: !1491, isLocal: true, isDefinition: true)
!1491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 536, elements: !1492)
!1492 = !{!1493}
!1493 = !DISubrange(count: 67)
!1494 = !DIGlobalVariableExpression(var: !1495, expr: !DIExpression())
!1495 = distinct !DIGlobalVariable(scope: null, file: !65, line: 1412, type: !925, isLocal: true, isDefinition: true)
!1496 = !DIGlobalVariableExpression(var: !1497, expr: !DIExpression())
!1497 = distinct !DIGlobalVariable(scope: null, file: !65, line: 1412, type: !1498, isLocal: true, isDefinition: true)
!1498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !474, size: 88, elements: !1117)
!1499 = !DIGlobalVariableExpression(var: !1500, expr: !DIExpression())
!1500 = distinct !DIGlobalVariable(scope: null, file: !65, line: 1531, type: !1501, isLocal: true, isDefinition: true)
!1501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 544, elements: !1502)
!1502 = !{!1503}
!1503 = !DISubrange(count: 68)
!1504 = !DIGlobalVariableExpression(var: !1505, expr: !DIExpression())
!1505 = distinct !DIGlobalVariable(scope: null, file: !65, line: 1547, type: !1506, isLocal: true, isDefinition: true)
!1506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 336, elements: !1507)
!1507 = !{!1508}
!1508 = !DISubrange(count: 42)
!1509 = !DIGlobalVariableExpression(var: !1510, expr: !DIExpression())
!1510 = distinct !DIGlobalVariable(scope: null, file: !65, line: 1551, type: !1511, isLocal: true, isDefinition: true)
!1511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 448, elements: !1512)
!1512 = !{!1513}
!1513 = !DISubrange(count: 56)
!1514 = !DIGlobalVariableExpression(var: !1515, expr: !DIExpression())
!1515 = distinct !DIGlobalVariable(scope: null, file: !65, line: 1613, type: !886, isLocal: true, isDefinition: true)
!1516 = !DIGlobalVariableExpression(var: !1517, expr: !DIExpression())
!1517 = distinct !DIGlobalVariable(scope: null, file: !65, line: 1616, type: !886, isLocal: true, isDefinition: true)
!1518 = !DIGlobalVariableExpression(var: !1519, expr: !DIExpression())
!1519 = distinct !DIGlobalVariable(name: "procuserid", scope: !2, file: !65, line: 192, type: !1520, isLocal: true, isDefinition: true)
!1520 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !1521, line: 79, baseType: !1522)
!1521 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!1522 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !419, line: 146, baseType: !7)
!1523 = !DIGlobalVariableExpression(var: !1524, expr: !DIExpression())
!1524 = distinct !DIGlobalVariable(name: "procuserid_set", scope: !2, file: !65, line: 194, type: !1520, isLocal: true, isDefinition: true)
!1525 = !DIGlobalVariableExpression(var: !1526, expr: !DIExpression())
!1526 = distinct !DIGlobalVariable(name: "procusername", scope: !2, file: !65, line: 195, type: !543, isLocal: true, isDefinition: true)
!1527 = !DIGlobalVariableExpression(var: !1528, expr: !DIExpression())
!1528 = distinct !DIGlobalVariable(name: "procgroupid", scope: !2, file: !65, line: 191, type: !1529, isLocal: true, isDefinition: true)
!1529 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !1521, line: 64, baseType: !1530)
!1530 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !419, line: 147, baseType: !7)
!1531 = !DIGlobalVariableExpression(var: !1532, expr: !DIExpression())
!1532 = distinct !DIGlobalVariable(name: "procgroupid_set", scope: !2, file: !65, line: 193, type: !1529, isLocal: true, isDefinition: true)
!1533 = !DIGlobalVariableExpression(var: !1534, expr: !DIExpression())
!1534 = distinct !DIGlobalVariable(name: "procgroupname", scope: !2, file: !65, line: 196, type: !543, isLocal: true, isDefinition: true)
!1535 = !DIGlobalVariableExpression(var: !1536, expr: !DIExpression())
!1536 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2040, type: !1537, isLocal: true, isDefinition: true)
!1537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 512, elements: !1538)
!1538 = !{!1539}
!1539 = !DISubrange(count: 64)
!1540 = !DIGlobalVariableExpression(var: !1541, expr: !DIExpression())
!1541 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2040, type: !1176, isLocal: true, isDefinition: true)
!1542 = !DIGlobalVariableExpression(var: !1543, expr: !DIExpression())
!1543 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2041, type: !1544, isLocal: true, isDefinition: true)
!1544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 520, elements: !1545)
!1545 = !{!1546}
!1546 = !DISubrange(count: 65)
!1547 = !DIGlobalVariableExpression(var: !1548, expr: !DIExpression())
!1548 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2049, type: !1549, isLocal: true, isDefinition: true)
!1549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 920, elements: !1550)
!1550 = !{!1551}
!1551 = !DISubrange(count: 115)
!1552 = !DIGlobalVariableExpression(var: !1553, expr: !DIExpression())
!1553 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2051, type: !980, isLocal: true, isDefinition: true)
!1554 = !DIGlobalVariableExpression(var: !1555, expr: !DIExpression())
!1555 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2067, type: !1049, isLocal: true, isDefinition: true)
!1556 = !DIGlobalVariableExpression(var: !1557, expr: !DIExpression())
!1557 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2073, type: !1131, isLocal: true, isDefinition: true)
!1558 = !DIGlobalVariableExpression(var: !1559, expr: !DIExpression())
!1559 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2075, type: !1040, isLocal: true, isDefinition: true)
!1560 = !DIGlobalVariableExpression(var: !1561, expr: !DIExpression())
!1561 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2082, type: !1035, isLocal: true, isDefinition: true)
!1562 = !DIGlobalVariableExpression(var: !1563, expr: !DIExpression())
!1563 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2090, type: !1564, isLocal: true, isDefinition: true)
!1564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 360, elements: !1565)
!1565 = !{!1566}
!1566 = !DISubrange(count: 45)
!1567 = !DIGlobalVariableExpression(var: !1568, expr: !DIExpression())
!1568 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2094, type: !1056, isLocal: true, isDefinition: true)
!1569 = !DIGlobalVariableExpression(var: !1570, expr: !DIExpression())
!1570 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2098, type: !1506, isLocal: true, isDefinition: true)
!1571 = !DIGlobalVariableExpression(var: !1572, expr: !DIExpression())
!1572 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2098, type: !1035, isLocal: true, isDefinition: true)
!1573 = !DIGlobalVariableExpression(var: !1574, expr: !DIExpression())
!1574 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2100, type: !866, isLocal: true, isDefinition: true)
!1575 = !DIGlobalVariableExpression(var: !1576, expr: !DIExpression())
!1576 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2103, type: !1577, isLocal: true, isDefinition: true)
!1577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 408, elements: !1578)
!1578 = !{!1579}
!1579 = !DISubrange(count: 51)
!1580 = !DIGlobalVariableExpression(var: !1581, expr: !DIExpression())
!1581 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2109, type: !881, isLocal: true, isDefinition: true)
!1582 = !DIGlobalVariableExpression(var: !1583, expr: !DIExpression())
!1583 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2115, type: !1056, isLocal: true, isDefinition: true)
!1584 = !DIGlobalVariableExpression(var: !1585, expr: !DIExpression())
!1585 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2121, type: !881, isLocal: true, isDefinition: true)
!1586 = !DIGlobalVariableExpression(var: !1587, expr: !DIExpression())
!1587 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2127, type: !886, isLocal: true, isDefinition: true)
!1588 = !DIGlobalVariableExpression(var: !1589, expr: !DIExpression())
!1589 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2134, type: !1590, isLocal: true, isDefinition: true)
!1590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 744, elements: !1591)
!1591 = !{!1592}
!1592 = !DISubrange(count: 93)
!1593 = !DIGlobalVariableExpression(var: !1594, expr: !DIExpression())
!1594 = distinct !DIGlobalVariable(name: "use_lt_credentials", scope: !2, file: !65, line: 48, type: !31, isLocal: true, isDefinition: true)
!1595 = !DIGlobalVariableExpression(var: !1596, expr: !DIExpression())
!1596 = distinct !DIGlobalVariable(name: "anon_credentials", scope: !2, file: !65, line: 49, type: !31, isLocal: true, isDefinition: true)
!1597 = !DIGlobalVariableExpression(var: !1598, expr: !DIExpression())
!1598 = distinct !DIGlobalVariable(name: "use_ltc", scope: !2, file: !65, line: 51, type: !31, isLocal: true, isDefinition: true)
!1599 = !DIGlobalVariableExpression(var: !1600, expr: !DIExpression())
!1600 = distinct !DIGlobalVariable(name: "use_tltc", scope: !2, file: !65, line: 53, type: !31, isLocal: true, isDefinition: true)
!1601 = !DIGlobalVariableExpression(var: !1602, expr: !DIExpression())
!1602 = distinct !DIGlobalVariable(name: "Usage", scope: !2, file: !65, line: 400, type: !1603, isLocal: true, isDefinition: true)
!1603 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 161432, elements: !1604)
!1604 = !{!1605}
!1605 = !DISubrange(count: 20179)
!1606 = !DIGlobalVariableExpression(var: !1607, expr: !DIExpression())
!1607 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2172, type: !1506, isLocal: true, isDefinition: true)
!1608 = !DIGlobalVariableExpression(var: !1609, expr: !DIExpression())
!1609 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2175, type: !1140, isLocal: true, isDefinition: true)
!1610 = !DIGlobalVariableExpression(var: !1611, expr: !DIExpression())
!1611 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2178, type: !886, isLocal: true, isDefinition: true)
!1612 = !DIGlobalVariableExpression(var: !1613, expr: !DIExpression())
!1613 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2185, type: !1614, isLocal: true, isDefinition: true)
!1614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 328, elements: !1615)
!1615 = !{!1616}
!1616 = !DISubrange(count: 41)
!1617 = !DIGlobalVariableExpression(var: !1618, expr: !DIExpression())
!1618 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2188, type: !1140, isLocal: true, isDefinition: true)
!1619 = !DIGlobalVariableExpression(var: !1620, expr: !DIExpression())
!1620 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2191, type: !886, isLocal: true, isDefinition: true)
!1621 = !DIGlobalVariableExpression(var: !1622, expr: !DIExpression())
!1622 = distinct !DIGlobalVariable(name: "mutex_buf_initialized", scope: !2, file: !65, line: 2577, type: !31, isLocal: true, isDefinition: true)
!1623 = !DIGlobalVariableExpression(var: !1624, expr: !DIExpression())
!1624 = distinct !DIGlobalVariable(scope: null, file: !65, line: 3150, type: !1625, isLocal: true, isDefinition: true)
!1625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 1016, elements: !1626)
!1626 = !{!1627}
!1627 = !DISubrange(count: 127)
!1628 = !DIGlobalVariableExpression(var: !1629, expr: !DIExpression())
!1629 = distinct !DIGlobalVariable(scope: null, file: !65, line: 3156, type: !1625, isLocal: true, isDefinition: true)
!1630 = !DIGlobalVariableExpression(var: !1631, expr: !DIExpression())
!1631 = distinct !DIGlobalVariable(name: "some_buffer", scope: !2, file: !65, line: 2573, type: !1632, isLocal: true, isDefinition: true)
!1632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 524288, elements: !1633)
!1633 = !{!1634}
!1634 = !DISubrange(count: 65536)
!1635 = !DIGlobalVariableExpression(var: !1636, expr: !DIExpression())
!1636 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2711, type: !858, isLocal: true, isDefinition: true)
!1637 = !DIGlobalVariableExpression(var: !1638, expr: !DIExpression())
!1638 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2712, type: !1093, isLocal: true, isDefinition: true)
!1639 = !DIGlobalVariableExpression(var: !1640, expr: !DIExpression())
!1640 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2713, type: !1093, isLocal: true, isDefinition: true)
!1641 = !DIGlobalVariableExpression(var: !1642, expr: !DIExpression())
!1642 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2715, type: !920, isLocal: true, isDefinition: true)
!1643 = !DIGlobalVariableExpression(var: !1644, expr: !DIExpression())
!1644 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2667, type: !925, isLocal: true, isDefinition: true)
!1645 = !DIGlobalVariableExpression(var: !1646, expr: !DIExpression())
!1646 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2675, type: !1007, isLocal: true, isDefinition: true)
!1647 = !DIGlobalVariableExpression(var: !1648, expr: !DIExpression())
!1648 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2683, type: !1007, isLocal: true, isDefinition: true)
!1649 = !DIGlobalVariableExpression(var: !1650, expr: !DIExpression())
!1650 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2700, type: !1651, isLocal: true, isDefinition: true)
!1651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 656, elements: !1652)
!1652 = !{!1653}
!1653 = !DISubrange(count: 82)
!1654 = !DIGlobalVariableExpression(var: !1655, expr: !DIExpression())
!1655 = distinct !DIGlobalVariable(scope: null, file: !65, line: 3172, type: !1147, isLocal: true, isDefinition: true)
!1656 = !DIGlobalVariableExpression(var: !1657, expr: !DIExpression())
!1657 = distinct !DIGlobalVariable(scope: null, file: !65, line: 3174, type: !920, isLocal: true, isDefinition: true)
!1658 = !DIGlobalVariableExpression(var: !1659, expr: !DIExpression())
!1659 = distinct !DIGlobalVariable(scope: null, file: !65, line: 3178, type: !920, isLocal: true, isDefinition: true)
!1660 = !DIGlobalVariableExpression(var: !1661, expr: !DIExpression())
!1661 = distinct !DIGlobalVariable(scope: null, file: !65, line: 3182, type: !920, isLocal: true, isDefinition: true)
!1662 = !DIGlobalVariableExpression(var: !1663, expr: !DIExpression())
!1663 = distinct !DIGlobalVariable(scope: null, file: !65, line: 3186, type: !1056, isLocal: true, isDefinition: true)
!1664 = !DIGlobalVariableExpression(var: !1665, expr: !DIExpression())
!1665 = distinct !DIGlobalVariable(scope: null, file: !65, line: 3198, type: !853, isLocal: true, isDefinition: true)
!1666 = !DIGlobalVariableExpression(var: !1667, expr: !DIExpression())
!1667 = distinct !DIGlobalVariable(scope: null, file: !65, line: 3199, type: !509, isLocal: true, isDefinition: true)
!1668 = !DIGlobalVariableExpression(var: !1669, expr: !DIExpression())
!1669 = distinct !DIGlobalVariable(scope: null, file: !65, line: 3208, type: !891, isLocal: true, isDefinition: true)
!1670 = !DIGlobalVariableExpression(var: !1671, expr: !DIExpression())
!1671 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2913, type: !509, isLocal: true, isDefinition: true)
!1672 = !DIGlobalVariableExpression(var: !1673, expr: !DIExpression())
!1673 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2919, type: !512, isLocal: true, isDefinition: true)
!1674 = !DIGlobalVariableExpression(var: !1675, expr: !DIExpression())
!1675 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2922, type: !491, isLocal: true, isDefinition: true)
!1676 = !DIGlobalVariableExpression(var: !1677, expr: !DIExpression())
!1677 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2927, type: !1678, isLocal: true, isDefinition: true)
!1678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 648, elements: !1679)
!1679 = !{!1680}
!1680 = !DISubrange(count: 81)
!1681 = !DIGlobalVariableExpression(var: !1682, expr: !DIExpression())
!1682 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2930, type: !1140, isLocal: true, isDefinition: true)
!1683 = !DIGlobalVariableExpression(var: !1684, expr: !DIExpression())
!1684 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2933, type: !491, isLocal: true, isDefinition: true)
!1685 = !DIGlobalVariableExpression(var: !1686, expr: !DIExpression())
!1686 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2937, type: !517, isLocal: true, isDefinition: true)
!1687 = !DIGlobalVariableExpression(var: !1688, expr: !DIExpression())
!1688 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2944, type: !1440, isLocal: true, isDefinition: true)
!1689 = !DIGlobalVariableExpression(var: !1690, expr: !DIExpression())
!1690 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2978, type: !522, isLocal: true, isDefinition: true)
!1691 = !DIGlobalVariableExpression(var: !1692, expr: !DIExpression())
!1692 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2979, type: !1116, isLocal: true, isDefinition: true)
!1693 = !DIGlobalVariableExpression(var: !1694, expr: !DIExpression())
!1694 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2989, type: !1440, isLocal: true, isDefinition: true)
!1695 = !DIGlobalVariableExpression(var: !1696, expr: !DIExpression())
!1696 = distinct !DIGlobalVariable(scope: null, file: !65, line: 2989, type: !1697, isLocal: true, isDefinition: true)
!1697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !474, size: 64, elements: !430)
!1698 = !DIGlobalVariableExpression(var: !1699, expr: !DIExpression())
!1699 = distinct !DIGlobalVariable(scope: null, file: !65, line: 3015, type: !1040, isLocal: true, isDefinition: true)
!1700 = !DIGlobalVariableExpression(var: !1701, expr: !DIExpression())
!1701 = distinct !DIGlobalVariable(scope: null, file: !65, line: 3043, type: !1360, isLocal: true, isDefinition: true)
!1702 = !DIGlobalVariableExpression(var: !1703, expr: !DIExpression())
!1703 = distinct !DIGlobalVariable(scope: null, file: !65, line: 3047, type: !1035, isLocal: true, isDefinition: true)
!1704 = !DIGlobalVariableExpression(var: !1705, expr: !DIExpression())
!1705 = distinct !DIGlobalVariable(scope: null, file: !65, line: 3060, type: !1276, isLocal: true, isDefinition: true)
!1706 = !DIGlobalVariableExpression(var: !1707, expr: !DIExpression())
!1707 = distinct !DIGlobalVariable(scope: null, file: !65, line: 3217, type: !1360, isLocal: true, isDefinition: true)
!1708 = !{i32 7, !"Dwarf Version", i32 5}
!1709 = !{i32 2, !"Debug Info Version", i32 3}
!1710 = !{i32 1, !"wchar_size", i32 4}
!1711 = !{i32 8, !"PIC Level", i32 2}
!1712 = !{i32 7, !"PIE Level", i32 2}
!1713 = !{i32 7, !"uwtable", i32 2}
!1714 = !{i32 7, !"frame-pointer", i32 2}
!1715 = !{!"clang version 16.0.0"}
!1716 = distinct !DISubprogram(name: "get_a_local_relay", scope: !65, file: !65, line: 317, type: !1717, scopeLine: 318, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !1429)
!1717 = !DISubroutineType(types: !1718)
!1718 = !{!31, !31, !480}
!1719 = !DILocalVariable(name: "family", arg: 1, scope: !1716, file: !65, line: 317, type: !31)
!1720 = !DILocation(line: 317, column: 27, scope: !1716)
!1721 = !DILocalVariable(name: "relay_addr", arg: 2, scope: !1716, file: !65, line: 317, type: !480)
!1722 = !DILocation(line: 317, column: 45, scope: !1716)
!1723 = !DILocalVariable(name: "ifs", scope: !1716, file: !65, line: 319, type: !1724)
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ifaddrs", file: !1726, line: 29, size: 448, elements: !1727)
!1726 = !DIFile(filename: "/usr/include/ifaddrs.h", directory: "", checksumkind: CSK_MD5, checksum: "e0f7c1d16e098351610cc7c6b356dae7")
!1727 = !{!1728, !1729, !1730, !1731, !1733, !1734, !1739}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_next", scope: !1725, file: !1726, line: 31, baseType: !1724, size: 64)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_name", scope: !1725, file: !1726, line: 33, baseType: !459, size: 64, offset: 64)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_flags", scope: !1725, file: !1726, line: 34, baseType: !7, size: 32, offset: 128)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_addr", scope: !1725, file: !1726, line: 36, baseType: !1732, size: 64, offset: 192)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_netmask", scope: !1725, file: !1726, line: 37, baseType: !1732, size: 64, offset: 256)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_ifu", scope: !1725, file: !1726, line: 46, baseType: !1735, size: 64, offset: 320)
!1735 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1725, file: !1726, line: 38, size: 64, elements: !1736)
!1736 = !{!1737, !1738}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "ifu_broadaddr", scope: !1735, file: !1726, line: 44, baseType: !1732, size: 64)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "ifu_dstaddr", scope: !1735, file: !1726, line: 45, baseType: !1732, size: 64)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_data", scope: !1725, file: !1726, line: 56, baseType: !405, size: 64, offset: 384)
!1740 = !DILocation(line: 319, column: 19, scope: !1716)
!1741 = !DILocalVariable(name: "allow_local", scope: !1716, file: !65, line: 321, type: !31)
!1742 = !DILocation(line: 321, column: 6, scope: !1716)
!1743 = !DILocalVariable(name: "ret", scope: !1716, file: !65, line: 323, type: !31)
!1744 = !DILocation(line: 323, column: 6, scope: !1716)
!1745 = !DILocalVariable(name: "saddr", scope: !1716, file: !65, line: 325, type: !1000)
!1746 = !DILocation(line: 325, column: 7, scope: !1716)
!1747 = !DILocation(line: 327, column: 2, scope: !1716)
!1748 = !DILocation(line: 329, column: 6, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1716, file: !65, line: 329, column: 6)
!1750 = !DILocation(line: 329, column: 6, scope: !1716)
!1751 = !DILocation(line: 329, column: 11, scope: !1749)
!1752 = !DILabel(scope: !1753, name: "galr_start", file: !65, line: 331)
!1753 = distinct !DILexicalBlock(scope: !1749, file: !65, line: 329, column: 11)
!1754 = !DILocation(line: 331, column: 3, scope: !1753)
!1755 = !DILocalVariable(name: "ifa", scope: !1756, file: !65, line: 334, type: !1724)
!1756 = distinct !DILexicalBlock(scope: !1753, file: !65, line: 333, column: 3)
!1757 = !DILocation(line: 334, column: 20, scope: !1756)
!1758 = !DILocation(line: 336, column: 15, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1756, file: !65, line: 336, column: 4)
!1760 = !DILocation(line: 336, column: 13, scope: !1759)
!1761 = !DILocation(line: 336, column: 9, scope: !1759)
!1762 = !DILocation(line: 336, column: 20, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1759, file: !65, line: 336, column: 4)
!1764 = !DILocation(line: 336, column: 24, scope: !1763)
!1765 = !DILocation(line: 336, column: 4, scope: !1759)
!1766 = !DILocation(line: 338, column: 11, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1768, file: !65, line: 338, column: 9)
!1768 = distinct !DILexicalBlock(scope: !1763, file: !65, line: 336, column: 55)
!1769 = !DILocation(line: 338, column: 16, scope: !1767)
!1770 = !DILocation(line: 338, column: 26, scope: !1767)
!1771 = !DILocation(line: 338, column: 9, scope: !1768)
!1772 = !DILocation(line: 339, column: 6, scope: !1767)
!1773 = !DILocation(line: 341, column: 11, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1768, file: !65, line: 341, column: 9)
!1775 = !DILocation(line: 341, column: 16, scope: !1774)
!1776 = !DILocation(line: 341, column: 10, scope: !1774)
!1777 = !DILocation(line: 341, column: 9, scope: !1768)
!1778 = !DILocation(line: 342, column: 6, scope: !1774)
!1779 = !DILocation(line: 343, column: 11, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1768, file: !65, line: 343, column: 9)
!1781 = !DILocation(line: 343, column: 16, scope: !1780)
!1782 = !DILocation(line: 343, column: 10, scope: !1780)
!1783 = !DILocation(line: 343, column: 9, scope: !1768)
!1784 = !DILocation(line: 344, column: 6, scope: !1780)
!1785 = !DILocation(line: 346, column: 10, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1768, file: !65, line: 346, column: 9)
!1787 = !DILocation(line: 346, column: 22, scope: !1786)
!1788 = !DILocation(line: 346, column: 26, scope: !1786)
!1789 = !DILocation(line: 346, column: 31, scope: !1786)
!1790 = !DILocation(line: 346, column: 41, scope: !1786)
!1791 = !DILocation(line: 346, column: 9, scope: !1768)
!1792 = !DILocation(line: 347, column: 6, scope: !1786)
!1793 = !DILocation(line: 349, column: 9, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1768, file: !65, line: 349, column: 9)
!1795 = !DILocation(line: 349, column: 14, scope: !1794)
!1796 = !DILocation(line: 349, column: 24, scope: !1794)
!1797 = !DILocation(line: 349, column: 34, scope: !1794)
!1798 = !DILocation(line: 349, column: 9, scope: !1768)
!1799 = !DILocation(line: 351, column: 10, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1801, file: !65, line: 351, column: 10)
!1801 = distinct !DILexicalBlock(scope: !1794, file: !65, line: 349, column: 46)
!1802 = !DILocation(line: 351, column: 17, scope: !1800)
!1803 = !DILocation(line: 351, column: 10, scope: !1801)
!1804 = !DILocation(line: 352, column: 7, scope: !1800)
!1805 = !DILocation(line: 355, column: 33, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1801, file: !65, line: 354, column: 10)
!1807 = !DILocation(line: 355, column: 38, scope: !1806)
!1808 = !DILocation(line: 355, column: 49, scope: !1806)
!1809 = !DILocation(line: 356, column: 8, scope: !1806)
!1810 = !DILocation(line: 354, column: 11, scope: !1806)
!1811 = !DILocation(line: 354, column: 10, scope: !1801)
!1812 = !DILocation(line: 357, column: 7, scope: !1806)
!1813 = !DILocation(line: 358, column: 17, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1801, file: !65, line: 358, column: 10)
!1815 = !DILocation(line: 358, column: 10, scope: !1814)
!1816 = !DILocation(line: 358, column: 39, scope: !1814)
!1817 = !DILocation(line: 358, column: 36, scope: !1814)
!1818 = !DILocation(line: 358, column: 10, scope: !1801)
!1819 = !DILocation(line: 359, column: 7, scope: !1814)
!1820 = !DILocation(line: 360, column: 18, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1801, file: !65, line: 360, column: 10)
!1822 = !DILocation(line: 360, column: 11, scope: !1821)
!1823 = !DILocation(line: 360, column: 10, scope: !1801)
!1824 = !DILocation(line: 361, column: 7, scope: !1821)
!1825 = !DILocation(line: 362, column: 5, scope: !1801)
!1826 = !DILocation(line: 362, column: 16, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1794, file: !65, line: 362, column: 16)
!1828 = !DILocation(line: 362, column: 21, scope: !1827)
!1829 = !DILocation(line: 362, column: 31, scope: !1827)
!1830 = !DILocation(line: 362, column: 41, scope: !1827)
!1831 = !DILocation(line: 362, column: 16, scope: !1794)
!1832 = !DILocation(line: 364, column: 10, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1834, file: !65, line: 364, column: 10)
!1834 = distinct !DILexicalBlock(scope: !1827, file: !65, line: 362, column: 54)
!1835 = !DILocation(line: 364, column: 17, scope: !1833)
!1836 = !DILocation(line: 364, column: 10, scope: !1834)
!1837 = !DILocation(line: 365, column: 7, scope: !1833)
!1838 = !DILocation(line: 368, column: 34, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1834, file: !65, line: 367, column: 10)
!1840 = !DILocation(line: 368, column: 39, scope: !1839)
!1841 = !DILocation(line: 368, column: 50, scope: !1839)
!1842 = !DILocation(line: 369, column: 8, scope: !1839)
!1843 = !DILocation(line: 367, column: 11, scope: !1839)
!1844 = !DILocation(line: 367, column: 10, scope: !1834)
!1845 = !DILocation(line: 370, column: 7, scope: !1839)
!1846 = !DILocation(line: 371, column: 17, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1834, file: !65, line: 371, column: 10)
!1848 = !DILocation(line: 371, column: 10, scope: !1847)
!1849 = !DILocation(line: 371, column: 35, scope: !1847)
!1850 = !DILocation(line: 371, column: 32, scope: !1847)
!1851 = !DILocation(line: 371, column: 10, scope: !1834)
!1852 = !DILocation(line: 372, column: 7, scope: !1847)
!1853 = !DILocation(line: 373, column: 18, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1834, file: !65, line: 373, column: 10)
!1855 = !DILocation(line: 373, column: 11, scope: !1854)
!1856 = !DILocation(line: 373, column: 10, scope: !1834)
!1857 = !DILocation(line: 374, column: 7, scope: !1854)
!1858 = !DILocation(line: 375, column: 5, scope: !1834)
!1859 = !DILocation(line: 376, column: 6, scope: !1827)
!1860 = !DILocation(line: 378, column: 40, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1768, file: !65, line: 378, column: 9)
!1862 = !DILocation(line: 378, column: 50, scope: !1861)
!1863 = !DILocation(line: 378, column: 9, scope: !1861)
!1864 = !DILocation(line: 378, column: 62, scope: !1861)
!1865 = !DILocation(line: 378, column: 9, scope: !1768)
!1866 = !DILocation(line: 379, column: 6, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1861, file: !65, line: 378, column: 67)
!1868 = !DILocation(line: 381, column: 10, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1861, file: !65, line: 380, column: 12)
!1870 = !DILocation(line: 382, column: 6, scope: !1869)
!1871 = !DILocation(line: 336, column: 40, scope: !1763)
!1872 = !DILocation(line: 336, column: 45, scope: !1763)
!1873 = !DILocation(line: 336, column: 38, scope: !1763)
!1874 = !DILocation(line: 336, column: 4, scope: !1763)
!1875 = distinct !{!1875, !1765, !1876, !1877}
!1876 = !DILocation(line: 384, column: 4, scope: !1759)
!1877 = !{!"llvm.loop.mustprogress"}
!1878 = !DILocation(line: 387, column: 6, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1753, file: !65, line: 387, column: 6)
!1880 = !DILocation(line: 387, column: 9, scope: !1879)
!1881 = !DILocation(line: 387, column: 12, scope: !1879)
!1882 = !DILocation(line: 387, column: 16, scope: !1879)
!1883 = !DILocation(line: 387, column: 6, scope: !1753)
!1884 = !DILocation(line: 388, column: 16, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1879, file: !65, line: 387, column: 29)
!1886 = !DILocation(line: 389, column: 4, scope: !1885)
!1887 = !DILocation(line: 392, column: 15, scope: !1753)
!1888 = !DILocation(line: 392, column: 3, scope: !1753)
!1889 = !DILocation(line: 393, column: 2, scope: !1753)
!1890 = !DILocation(line: 395, column: 2, scope: !1716)
!1891 = distinct !DISubprogram(name: "init_ctr", scope: !65, file: !65, line: 1015, type: !1892, scopeLine: 1015, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !1429)
!1892 = !DISubroutineType(types: !1893)
!1893 = !{!31, !1894, !467}
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctr_state", file: !6, line: 394, size: 288, elements: !1896)
!1896 = !{!1897, !1899, !1900}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "ivec", scope: !1895, file: !6, line: 395, baseType: !1898, size: 128)
!1898 = !DICompositeType(tag: DW_TAG_array_type, baseType: !429, size: 128, elements: !448)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1895, file: !6, line: 396, baseType: !7, size: 32, offset: 128)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "ecount", scope: !1895, file: !6, line: 397, baseType: !1898, size: 128, offset: 160)
!1901 = !DILocalVariable(name: "state", arg: 1, scope: !1891, file: !65, line: 1015, type: !1894)
!1902 = !DILocation(line: 1015, column: 32, scope: !1891)
!1903 = !DILocalVariable(name: "iv", arg: 2, scope: !1891, file: !65, line: 1015, type: !467)
!1904 = !DILocation(line: 1015, column: 59, scope: !1891)
!1905 = !DILocation(line: 1016, column: 2, scope: !1891)
!1906 = !DILocation(line: 1016, column: 9, scope: !1891)
!1907 = !DILocation(line: 1016, column: 13, scope: !1891)
!1908 = !DILocation(line: 1017, column: 9, scope: !1891)
!1909 = !DILocation(line: 1017, column: 16, scope: !1891)
!1910 = !DILocation(line: 1017, column: 2, scope: !1891)
!1911 = !DILocation(line: 1018, column: 9, scope: !1891)
!1912 = !DILocation(line: 1018, column: 16, scope: !1891)
!1913 = !DILocation(line: 1018, column: 21, scope: !1891)
!1914 = !DILocation(line: 1018, column: 2, scope: !1891)
!1915 = !DILocation(line: 1019, column: 9, scope: !1891)
!1916 = !DILocation(line: 1019, column: 16, scope: !1891)
!1917 = !DILocation(line: 1019, column: 2, scope: !1891)
!1918 = !DILocation(line: 1019, column: 22, scope: !1891)
!1919 = !DILocation(line: 1020, column: 2, scope: !1891)
!1920 = distinct !DISubprogram(name: "base64encode", scope: !65, file: !65, line: 1023, type: !1921, scopeLine: 1023, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !1429)
!1921 = !DISubroutineType(types: !1922)
!1922 = !{!461, !469, !31}
!1923 = !DILocalVariable(name: "b64_encode_this", arg: 1, scope: !1920, file: !65, line: 1023, type: !469)
!1924 = !DILocation(line: 1023, column: 42, scope: !1920)
!1925 = !DILocalVariable(name: "encode_this_many_bytes", arg: 2, scope: !1920, file: !65, line: 1023, type: !31)
!1926 = !DILocation(line: 1023, column: 63, scope: !1920)
!1927 = !DILocalVariable(name: "b64_bio", scope: !1920, file: !65, line: 1024, type: !1928)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DIDerivedType(tag: DW_TAG_typedef, name: "BIO", file: !533, line: 86, baseType: !1930)
!1930 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_st", file: !533, line: 86, flags: DIFlagFwdDecl)
!1931 = !DILocation(line: 1024, column: 7, scope: !1920)
!1932 = !DILocalVariable(name: "mem_bio", scope: !1920, file: !65, line: 1024, type: !1928)
!1933 = !DILocation(line: 1024, column: 17, scope: !1920)
!1934 = !DILocalVariable(name: "mem_bio_mem_ptr", scope: !1920, file: !65, line: 1025, type: !1935)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DIDerivedType(tag: DW_TAG_typedef, name: "BUF_MEM", file: !533, line: 94, baseType: !1937)
!1937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "buf_mem_st", file: !1938, line: 42, size: 256, elements: !1939)
!1938 = !DIFile(filename: "/usr/include/openssl/buffer.h", directory: "", checksumkind: CSK_MD5, checksum: "999d542304c0cdb3ba41ee72ed3f11c5")
!1939 = !{!1940, !1941, !1942, !1943}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1937, file: !1938, line: 43, baseType: !673, size: 64)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1937, file: !1938, line: 44, baseType: !459, size: 64, offset: 64)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1937, file: !1938, line: 45, baseType: !673, size: 64, offset: 128)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1937, file: !1938, line: 46, baseType: !475, size: 64, offset: 192)
!1944 = !DILocation(line: 1025, column: 11, scope: !1920)
!1945 = !DILocation(line: 1026, column: 20, scope: !1920)
!1946 = !DILocation(line: 1026, column: 12, scope: !1920)
!1947 = !DILocation(line: 1026, column: 10, scope: !1920)
!1948 = !DILocation(line: 1027, column: 20, scope: !1920)
!1949 = !DILocation(line: 1027, column: 12, scope: !1920)
!1950 = !DILocation(line: 1027, column: 10, scope: !1920)
!1951 = !DILocation(line: 1028, column: 11, scope: !1920)
!1952 = !DILocation(line: 1028, column: 20, scope: !1920)
!1953 = !DILocation(line: 1028, column: 2, scope: !1920)
!1954 = !DILocation(line: 1029, column: 16, scope: !1920)
!1955 = !DILocation(line: 1029, column: 2, scope: !1920)
!1956 = !DILocation(line: 1030, column: 12, scope: !1920)
!1957 = !DILocation(line: 1030, column: 21, scope: !1920)
!1958 = !DILocation(line: 1030, column: 38, scope: !1920)
!1959 = !DILocation(line: 1030, column: 2, scope: !1920)
!1960 = !DILocation(line: 1031, column: 8, scope: !1920)
!1961 = !DILocation(line: 1032, column: 2, scope: !1920)
!1962 = !DILocation(line: 1033, column: 8, scope: !1920)
!1963 = !DILocation(line: 1034, column: 15, scope: !1920)
!1964 = !DILocation(line: 1034, column: 2, scope: !1920)
!1965 = !DILocation(line: 1035, column: 15, scope: !1920)
!1966 = !DILocation(line: 1035, column: 34, scope: !1920)
!1967 = !DILocation(line: 1035, column: 51, scope: !1920)
!1968 = !DILocation(line: 1035, column: 58, scope: !1920)
!1969 = !DILocation(line: 1035, column: 2, scope: !1920)
!1970 = !DILocation(line: 1036, column: 4, scope: !1920)
!1971 = !DILocation(line: 1036, column: 21, scope: !1920)
!1972 = !DILocation(line: 1036, column: 28, scope: !1920)
!1973 = !DILocation(line: 1036, column: 45, scope: !1920)
!1974 = !DILocation(line: 1036, column: 2, scope: !1920)
!1975 = !DILocation(line: 1036, column: 53, scope: !1920)
!1976 = !DILocation(line: 1037, column: 27, scope: !1920)
!1977 = !DILocation(line: 1037, column: 44, scope: !1920)
!1978 = !DILocation(line: 1037, column: 2, scope: !1920)
!1979 = distinct !DISubprogram(name: "encrypt_aes_128", scope: !65, file: !65, line: 1039, type: !1980, scopeLine: 1039, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !1429)
!1980 = !DISubroutineType(types: !1981)
!1981 = !{null, !461, !467}
!1982 = !DILocalVariable(name: "in", arg: 1, scope: !1979, file: !65, line: 1039, type: !461)
!1983 = !DILocation(line: 1039, column: 38, scope: !1979)
!1984 = !DILocalVariable(name: "mykey", arg: 2, scope: !1979, file: !65, line: 1039, type: !467)
!1985 = !DILocation(line: 1039, column: 63, scope: !1979)
!1986 = !DILocalVariable(name: "j", scope: !1979, file: !65, line: 1041, type: !31)
!1987 = !DILocation(line: 1041, column: 9, scope: !1979)
!1988 = !DILocalVariable(name: "k", scope: !1979, file: !65, line: 1041, type: !31)
!1989 = !DILocation(line: 1041, column: 13, scope: !1979)
!1990 = !DILocalVariable(name: "totalSize", scope: !1979, file: !65, line: 1042, type: !31)
!1991 = !DILocation(line: 1042, column: 9, scope: !1979)
!1992 = !DILocalVariable(name: "key", scope: !1979, file: !65, line: 1043, type: !1993)
!1993 = !DIDerivedType(tag: DW_TAG_typedef, name: "AES_KEY", file: !1994, line: 45, baseType: !1995)
!1994 = !DIFile(filename: "/usr/include/openssl/aes.h", directory: "", checksumkind: CSK_MD5, checksum: "c985bf41b08156ada84e9c536811221a")
!1995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aes_key_st", file: !1994, line: 37, size: 1952, elements: !1996)
!1996 = !{!1997, !1999}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "rd_key", scope: !1995, file: !1994, line: 41, baseType: !1998, size: 1920)
!1998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 1920, elements: !1467)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "rounds", scope: !1995, file: !1994, line: 43, baseType: !31, size: 32, offset: 1920)
!2000 = !DILocation(line: 1043, column: 10, scope: !1979)
!2001 = !DILocalVariable(name: "iv", scope: !1979, file: !65, line: 1044, type: !428)
!2002 = !DILocation(line: 1044, column: 16, scope: !1979)
!2003 = !DILocalVariable(name: "out", scope: !1979, file: !65, line: 1045, type: !2004)
!2004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !429, size: 8192, elements: !2005)
!2005 = !{!2006}
!2006 = !DISubrange(count: 1024)
!2007 = !DILocation(line: 1045, column: 16, scope: !1979)
!2008 = !DILocation(line: 1046, column: 22, scope: !1979)
!2009 = !DILocation(line: 1046, column: 2, scope: !1979)
!2010 = !DILocalVariable(name: "total", scope: !1979, file: !65, line: 1047, type: !2011)
!2011 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 2048, elements: !1066)
!2012 = !DILocation(line: 1047, column: 7, scope: !1979)
!2013 = !DILocalVariable(name: "size", scope: !1979, file: !65, line: 1048, type: !31)
!2014 = !DILocation(line: 1048, column: 9, scope: !1979)
!2015 = !DILocalVariable(name: "state", scope: !1979, file: !65, line: 1049, type: !1895)
!2016 = !DILocation(line: 1049, column: 22, scope: !1979)
!2017 = !DILocation(line: 1050, column: 22, scope: !1979)
!2018 = !DILocation(line: 1050, column: 5, scope: !1979)
!2019 = !DILocation(line: 1053, column: 27, scope: !1979)
!2020 = !DILocation(line: 1053, column: 31, scope: !1979)
!2021 = !DILocation(line: 1053, column: 50, scope: !1979)
!2022 = !DILocation(line: 1053, column: 36, scope: !1979)
!2023 = !DILocation(line: 1053, column: 67, scope: !1979)
!2024 = !DILocation(line: 1053, column: 61, scope: !1979)
!2025 = !DILocation(line: 1053, column: 79, scope: !1979)
!2026 = !DILocation(line: 1053, column: 73, scope: !1979)
!2027 = !DILocation(line: 1053, column: 94, scope: !1979)
!2028 = !DILocation(line: 1053, column: 5, scope: !1979)
!2029 = !DILocation(line: 1058, column: 32, scope: !1979)
!2030 = !DILocation(line: 1058, column: 18, scope: !1979)
!2031 = !DILocation(line: 1058, column: 15, scope: !1979)
!2032 = !DILocation(line: 1059, column: 26, scope: !1979)
!2033 = !DILocation(line: 1059, column: 12, scope: !1979)
!2034 = !DILocation(line: 1059, column: 10, scope: !1979)
!2035 = !DILocation(line: 1060, column: 12, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !1979, file: !65, line: 1060, column: 5)
!2037 = !DILocation(line: 1060, column: 10, scope: !2036)
!2038 = !DILocation(line: 1060, column: 18, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !2036, file: !65, line: 1060, column: 5)
!2040 = !DILocation(line: 1060, column: 21, scope: !2039)
!2041 = !DILocation(line: 1060, column: 19, scope: !2039)
!2042 = !DILocation(line: 1060, column: 5, scope: !2036)
!2043 = !DILocation(line: 1061, column: 24, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2039, file: !65, line: 1060, column: 32)
!2045 = !DILocation(line: 1061, column: 20, scope: !2044)
!2046 = !DILocation(line: 1061, column: 16, scope: !2044)
!2047 = !DILocation(line: 1061, column: 9, scope: !2044)
!2048 = !DILocation(line: 1061, column: 19, scope: !2044)
!2049 = !DILocation(line: 1062, column: 5, scope: !2044)
!2050 = !DILocation(line: 1060, column: 28, scope: !2039)
!2051 = !DILocation(line: 1060, column: 5, scope: !2039)
!2052 = distinct !{!2052, !2042, !2053, !1877}
!2053 = !DILocation(line: 1062, column: 5, scope: !2036)
!2054 = !DILocalVariable(name: "base64_encoded", scope: !1979, file: !65, line: 1064, type: !461)
!2055 = !DILocation(line: 1064, column: 17, scope: !1979)
!2056 = !DILocation(line: 1064, column: 47, scope: !1979)
!2057 = !DILocation(line: 1064, column: 54, scope: !1979)
!2058 = !DILocation(line: 1064, column: 34, scope: !1979)
!2059 = !DILocation(line: 1065, column: 16, scope: !1979)
!2060 = !DILocation(line: 1065, column: 2, scope: !1979)
!2061 = !DILocation(line: 1067, column: 1, scope: !1979)
!2062 = distinct !DISubprogram(name: "generate_aes_128_key", scope: !65, file: !65, line: 1068, type: !2063, scopeLine: 1068, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !1429)
!2063 = !DISubroutineType(types: !2064)
!2064 = !{null, !459, !461}
!2065 = !DILocalVariable(name: "filePath", arg: 1, scope: !2062, file: !65, line: 1068, type: !459)
!2066 = !DILocation(line: 1068, column: 33, scope: !2062)
!2067 = !DILocalVariable(name: "returnedKey", arg: 2, scope: !2062, file: !65, line: 1068, type: !461)
!2068 = !DILocation(line: 1068, column: 58, scope: !2062)
!2069 = !DILocalVariable(name: "i", scope: !2062, file: !65, line: 1069, type: !31)
!2070 = !DILocation(line: 1069, column: 6, scope: !2062)
!2071 = !DILocalVariable(name: "part", scope: !2062, file: !65, line: 1070, type: !31)
!2072 = !DILocation(line: 1070, column: 6, scope: !2062)
!2073 = !DILocalVariable(name: "fptr", scope: !2062, file: !65, line: 1071, type: !2074)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2076, line: 7, baseType: !2077)
!2076 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!2077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2078, line: 49, size: 1728, elements: !2079)
!2078 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!2079 = !{!2080, !2081, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2095, !2097, !2098, !2099, !2101, !2102, !2104, !2108, !2111, !2113, !2116, !2119, !2120, !2121, !2122, !2123}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2077, file: !2078, line: 51, baseType: !31, size: 32)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2077, file: !2078, line: 54, baseType: !459, size: 64, offset: 64)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2077, file: !2078, line: 55, baseType: !459, size: 64, offset: 128)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2077, file: !2078, line: 56, baseType: !459, size: 64, offset: 192)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2077, file: !2078, line: 57, baseType: !459, size: 64, offset: 256)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2077, file: !2078, line: 58, baseType: !459, size: 64, offset: 320)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2077, file: !2078, line: 59, baseType: !459, size: 64, offset: 384)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2077, file: !2078, line: 60, baseType: !459, size: 64, offset: 448)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2077, file: !2078, line: 61, baseType: !459, size: 64, offset: 512)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2077, file: !2078, line: 64, baseType: !459, size: 64, offset: 576)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2077, file: !2078, line: 65, baseType: !459, size: 64, offset: 640)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2077, file: !2078, line: 66, baseType: !459, size: 64, offset: 704)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2077, file: !2078, line: 68, baseType: !2093, size: 64, offset: 768)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2078, line: 36, flags: DIFlagFwdDecl)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2077, file: !2078, line: 70, baseType: !2096, size: 64, offset: 832)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2077, file: !2078, line: 72, baseType: !31, size: 32, offset: 896)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2077, file: !2078, line: 73, baseType: !31, size: 32, offset: 928)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2077, file: !2078, line: 74, baseType: !2100, size: 64, offset: 960)
!2100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !419, line: 152, baseType: !471)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2077, file: !2078, line: 77, baseType: !413, size: 16, offset: 1024)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2077, file: !2078, line: 78, baseType: !2103, size: 8, offset: 1040)
!2103 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2077, file: !2078, line: 79, baseType: !2105, size: 8, offset: 1048)
!2105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 8, elements: !2106)
!2106 = !{!2107}
!2107 = !DISubrange(count: 1)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2077, file: !2078, line: 81, baseType: !2109, size: 64, offset: 1088)
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2110 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2078, line: 43, baseType: null)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2077, file: !2078, line: 89, baseType: !2112, size: 64, offset: 1152)
!2112 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !419, line: 153, baseType: !471)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2077, file: !2078, line: 91, baseType: !2114, size: 64, offset: 1216)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2078, line: 37, flags: DIFlagFwdDecl)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2077, file: !2078, line: 92, baseType: !2117, size: 64, offset: 1280)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2078, line: 38, flags: DIFlagFwdDecl)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2077, file: !2078, line: 93, baseType: !2096, size: 64, offset: 1344)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2077, file: !2078, line: 94, baseType: !405, size: 64, offset: 1408)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2077, file: !2078, line: 95, baseType: !673, size: 64, offset: 1472)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2077, file: !2078, line: 96, baseType: !31, size: 32, offset: 1536)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2077, file: !2078, line: 98, baseType: !1040, size: 160, offset: 1568)
!2124 = !DILocation(line: 1071, column: 8, scope: !2062)
!2125 = !DILocalVariable(name: "key", scope: !2062, file: !65, line: 1072, type: !1131)
!2126 = !DILocation(line: 1072, column: 7, scope: !2062)
!2127 = !DILocalVariable(name: "times", scope: !2062, file: !65, line: 1073, type: !2128)
!2128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2129, line: 11, size: 128, elements: !2130)
!2129 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!2130 = !{!2131, !2132}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2128, file: !2129, line: 16, baseType: !700, size: 64)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2128, file: !2129, line: 21, baseType: !2133, size: 64, offset: 64)
!2133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !419, line: 197, baseType: !471)
!2134 = !DILocation(line: 1073, column: 18, scope: !2062)
!2135 = !DILocation(line: 1074, column: 2, scope: !2062)
!2136 = !DILocation(line: 1075, column: 14, scope: !2062)
!2137 = !DILocation(line: 1075, column: 8, scope: !2062)
!2138 = !DILocation(line: 1075, column: 2, scope: !2062)
!2139 = !DILocation(line: 1077, column: 9, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2062, file: !65, line: 1077, column: 2)
!2141 = !DILocation(line: 1077, column: 7, scope: !2140)
!2142 = !DILocation(line: 1077, column: 14, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2140, file: !65, line: 1077, column: 2)
!2144 = !DILocation(line: 1077, column: 16, scope: !2143)
!2145 = !DILocation(line: 1077, column: 2, scope: !2140)
!2146 = !DILocation(line: 1078, column: 11, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2143, file: !65, line: 1077, column: 27)
!2148 = !DILocation(line: 1078, column: 18, scope: !2147)
!2149 = !DILocation(line: 1078, column: 8, scope: !2147)
!2150 = !DILocation(line: 1079, column: 6, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2147, file: !65, line: 1079, column: 6)
!2152 = !DILocation(line: 1079, column: 11, scope: !2151)
!2153 = !DILocation(line: 1079, column: 6, scope: !2147)
!2154 = !DILocation(line: 1080, column: 14, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2151, file: !65, line: 1079, column: 16)
!2156 = !DILocation(line: 1080, column: 21, scope: !2155)
!2157 = !DILocation(line: 1080, column: 27, scope: !2155)
!2158 = !DILocation(line: 1080, column: 13, scope: !2155)
!2159 = !DILocation(line: 1080, column: 8, scope: !2155)
!2160 = !DILocation(line: 1080, column: 4, scope: !2155)
!2161 = !DILocation(line: 1080, column: 11, scope: !2155)
!2162 = !DILocation(line: 1081, column: 3, scope: !2155)
!2163 = !DILocation(line: 1083, column: 11, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2151, file: !65, line: 1083, column: 11)
!2165 = !DILocation(line: 1083, column: 16, scope: !2164)
!2166 = !DILocation(line: 1083, column: 11, scope: !2151)
!2167 = !DILocation(line: 1084, column: 14, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2164, file: !65, line: 1083, column: 21)
!2169 = !DILocation(line: 1084, column: 21, scope: !2168)
!2170 = !DILocation(line: 1084, column: 27, scope: !2168)
!2171 = !DILocation(line: 1084, column: 13, scope: !2168)
!2172 = !DILocation(line: 1084, column: 8, scope: !2168)
!2173 = !DILocation(line: 1084, column: 4, scope: !2168)
!2174 = !DILocation(line: 1084, column: 11, scope: !2168)
!2175 = !DILocation(line: 1085, column: 3, scope: !2168)
!2176 = !DILocation(line: 1087, column: 11, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2164, file: !65, line: 1087, column: 11)
!2178 = !DILocation(line: 1087, column: 16, scope: !2177)
!2179 = !DILocation(line: 1087, column: 11, scope: !2164)
!2180 = !DILocation(line: 1088, column: 14, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2177, file: !65, line: 1087, column: 21)
!2182 = !DILocation(line: 1088, column: 21, scope: !2181)
!2183 = !DILocation(line: 1088, column: 27, scope: !2181)
!2184 = !DILocation(line: 1088, column: 13, scope: !2181)
!2185 = !DILocation(line: 1088, column: 8, scope: !2181)
!2186 = !DILocation(line: 1088, column: 4, scope: !2181)
!2187 = !DILocation(line: 1088, column: 11, scope: !2181)
!2188 = !DILocation(line: 1089, column: 3, scope: !2181)
!2189 = !DILocation(line: 1090, column: 2, scope: !2147)
!2190 = !DILocation(line: 1077, column: 23, scope: !2143)
!2191 = !DILocation(line: 1077, column: 2, scope: !2143)
!2192 = distinct !{!2192, !2145, !2193, !1877}
!2193 = !DILocation(line: 1090, column: 2, scope: !2140)
!2194 = !DILocation(line: 1091, column: 15, scope: !2062)
!2195 = !DILocation(line: 1091, column: 9, scope: !2062)
!2196 = !DILocation(line: 1091, column: 7, scope: !2062)
!2197 = !DILocation(line: 1092, column: 8, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2062, file: !65, line: 1092, column: 2)
!2199 = !DILocation(line: 1092, column: 6, scope: !2198)
!2200 = !DILocation(line: 1092, column: 13, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2198, file: !65, line: 1092, column: 2)
!2202 = !DILocation(line: 1092, column: 15, scope: !2201)
!2203 = !DILocation(line: 1092, column: 2, scope: !2198)
!2204 = !DILocation(line: 1093, column: 13, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2201, file: !65, line: 1092, column: 25)
!2206 = !DILocation(line: 1093, column: 9, scope: !2205)
!2207 = !DILocation(line: 1093, column: 17, scope: !2205)
!2208 = !DILocation(line: 1093, column: 3, scope: !2205)
!2209 = !DILocation(line: 1094, column: 2, scope: !2205)
!2210 = !DILocation(line: 1092, column: 22, scope: !2201)
!2211 = !DILocation(line: 1092, column: 2, scope: !2201)
!2212 = distinct !{!2212, !2203, !2213, !1877}
!2213 = !DILocation(line: 1094, column: 2, scope: !2198)
!2214 = !DILocation(line: 1095, column: 16, scope: !2062)
!2215 = !DILocation(line: 1095, column: 29, scope: !2062)
!2216 = !DILocation(line: 1095, column: 2, scope: !2062)
!2217 = !DILocation(line: 1096, column: 9, scope: !2062)
!2218 = !DILocation(line: 1096, column: 2, scope: !2062)
!2219 = !DILocation(line: 1099, column: 1, scope: !2062)
!2220 = distinct !DISubprogram(name: "base64decode", scope: !65, file: !65, line: 1101, type: !1921, scopeLine: 1101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !1429)
!2221 = !DILocalVariable(name: "b64_decode_this", arg: 1, scope: !2220, file: !65, line: 1101, type: !469)
!2222 = !DILocation(line: 1101, column: 42, scope: !2220)
!2223 = !DILocalVariable(name: "decode_this_many_bytes", arg: 2, scope: !2220, file: !65, line: 1101, type: !31)
!2224 = !DILocation(line: 1101, column: 63, scope: !2220)
!2225 = !DILocalVariable(name: "b64_bio", scope: !2220, file: !65, line: 1102, type: !1928)
!2226 = !DILocation(line: 1102, column: 7, scope: !2220)
!2227 = !DILocalVariable(name: "mem_bio", scope: !2220, file: !65, line: 1102, type: !1928)
!2228 = !DILocation(line: 1102, column: 17, scope: !2220)
!2229 = !DILocalVariable(name: "base64_decoded", scope: !2220, file: !65, line: 1103, type: !461)
!2230 = !DILocation(line: 1103, column: 17, scope: !2220)
!2231 = !DILocation(line: 1103, column: 59, scope: !2220)
!2232 = !DILocation(line: 1103, column: 81, scope: !2220)
!2233 = !DILocation(line: 1103, column: 84, scope: !2220)
!2234 = !DILocation(line: 1103, column: 86, scope: !2220)
!2235 = !DILocation(line: 1103, column: 58, scope: !2220)
!2236 = !DILocation(line: 1103, column: 50, scope: !2220)
!2237 = !DILocation(line: 1104, column: 20, scope: !2220)
!2238 = !DILocation(line: 1104, column: 12, scope: !2220)
!2239 = !DILocation(line: 1104, column: 10, scope: !2220)
!2240 = !DILocation(line: 1105, column: 20, scope: !2220)
!2241 = !DILocation(line: 1105, column: 12, scope: !2220)
!2242 = !DILocation(line: 1105, column: 10, scope: !2220)
!2243 = !DILocation(line: 1106, column: 12, scope: !2220)
!2244 = !DILocation(line: 1106, column: 21, scope: !2220)
!2245 = !DILocation(line: 1106, column: 38, scope: !2220)
!2246 = !DILocation(line: 1106, column: 2, scope: !2220)
!2247 = !DILocation(line: 1107, column: 11, scope: !2220)
!2248 = !DILocation(line: 1107, column: 20, scope: !2220)
!2249 = !DILocation(line: 1107, column: 2, scope: !2220)
!2250 = !DILocation(line: 1108, column: 16, scope: !2220)
!2251 = !DILocation(line: 1108, column: 2, scope: !2220)
!2252 = !DILocalVariable(name: "decoded_byte_index", scope: !2220, file: !65, line: 1109, type: !31)
!2253 = !DILocation(line: 1109, column: 6, scope: !2220)
!2254 = !DILocation(line: 1110, column: 2, scope: !2220)
!2255 = !DILocation(line: 1110, column: 23, scope: !2220)
!2256 = !DILocation(line: 1110, column: 32, scope: !2220)
!2257 = !DILocation(line: 1110, column: 47, scope: !2220)
!2258 = !DILocation(line: 1110, column: 46, scope: !2220)
!2259 = !DILocation(line: 1110, column: 14, scope: !2220)
!2260 = !DILocation(line: 1110, column: 12, scope: !2220)
!2261 = !DILocation(line: 1111, column: 21, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2220, file: !65, line: 1110, column: 71)
!2263 = distinct !{!2263, !2254, !2264, !1877}
!2264 = !DILocation(line: 1112, column: 2, scope: !2220)
!2265 = !DILocation(line: 1113, column: 15, scope: !2220)
!2266 = !DILocation(line: 1113, column: 2, scope: !2220)
!2267 = !DILocation(line: 1114, column: 9, scope: !2220)
!2268 = !DILocation(line: 1114, column: 2, scope: !2220)
!2269 = distinct !DISubprogram(name: "decodedTextSize", scope: !65, file: !65, line: 1116, type: !2270, scopeLine: 1116, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !1429)
!2270 = !DISubroutineType(types: !2271)
!2271 = !{!31, !459}
!2272 = !DILocalVariable(name: "input", arg: 1, scope: !2269, file: !65, line: 1116, type: !459)
!2273 = !DILocation(line: 1116, column: 27, scope: !2269)
!2274 = !DILocalVariable(name: "i", scope: !2269, file: !65, line: 1117, type: !31)
!2275 = !DILocation(line: 1117, column: 9, scope: !2269)
!2276 = !DILocalVariable(name: "result", scope: !2269, file: !65, line: 1118, type: !31)
!2277 = !DILocation(line: 1118, column: 9, scope: !2269)
!2278 = !DILocalVariable(name: "padding", scope: !2269, file: !65, line: 1118, type: !31)
!2279 = !DILocation(line: 1118, column: 18, scope: !2269)
!2280 = !DILocalVariable(name: "size", scope: !2269, file: !65, line: 1119, type: !31)
!2281 = !DILocation(line: 1119, column: 9, scope: !2269)
!2282 = !DILocation(line: 1119, column: 21, scope: !2269)
!2283 = !DILocation(line: 1119, column: 14, scope: !2269)
!2284 = !DILocation(line: 1120, column: 12, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2269, file: !65, line: 1120, column: 5)
!2286 = !DILocation(line: 1120, column: 10, scope: !2285)
!2287 = !DILocation(line: 1120, column: 17, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2285, file: !65, line: 1120, column: 5)
!2289 = !DILocation(line: 1120, column: 21, scope: !2288)
!2290 = !DILocation(line: 1120, column: 19, scope: !2288)
!2291 = !DILocation(line: 1120, column: 5, scope: !2285)
!2292 = !DILocation(line: 1121, column: 12, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2294, file: !65, line: 1121, column: 12)
!2294 = distinct !DILexicalBlock(scope: !2288, file: !65, line: 1120, column: 32)
!2295 = !DILocation(line: 1121, column: 18, scope: !2293)
!2296 = !DILocation(line: 1121, column: 20, scope: !2293)
!2297 = !DILocation(line: 1121, column: 12, scope: !2294)
!2298 = !DILocation(line: 1122, column: 20, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2293, file: !65, line: 1121, column: 26)
!2300 = !DILocation(line: 1123, column: 9, scope: !2299)
!2301 = !DILocation(line: 1124, column: 5, scope: !2294)
!2302 = !DILocation(line: 1120, column: 27, scope: !2288)
!2303 = !DILocation(line: 1120, column: 5, scope: !2288)
!2304 = distinct !{!2304, !2291, !2305, !1877}
!2305 = !DILocation(line: 1124, column: 5, scope: !2285)
!2306 = !DILocation(line: 1125, column: 20, scope: !2269)
!2307 = !DILocation(line: 1125, column: 13, scope: !2269)
!2308 = !DILocation(line: 1125, column: 26, scope: !2269)
!2309 = !DILocation(line: 1125, column: 28, scope: !2269)
!2310 = !DILocation(line: 1125, column: 32, scope: !2269)
!2311 = !DILocation(line: 1125, column: 31, scope: !2269)
!2312 = !DILocation(line: 1125, column: 12, scope: !2269)
!2313 = !DILocation(line: 1125, column: 11, scope: !2269)
!2314 = !DILocation(line: 1126, column: 12, scope: !2269)
!2315 = !DILocation(line: 1126, column: 5, scope: !2269)
!2316 = distinct !DISubprogram(name: "decrypt_aes_128", scope: !65, file: !65, line: 1128, type: !2317, scopeLine: 1128, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !1429)
!2317 = !DISubroutineType(types: !2318)
!2318 = !{null, !459, !467}
!2319 = !DILocalVariable(name: "in", arg: 1, scope: !2316, file: !65, line: 1128, type: !459)
!2320 = !DILocation(line: 1128, column: 28, scope: !2316)
!2321 = !DILocalVariable(name: "mykey", arg: 2, scope: !2316, file: !65, line: 1128, type: !467)
!2322 = !DILocation(line: 1128, column: 53, scope: !2316)
!2323 = !DILocalVariable(name: "iv", scope: !2316, file: !65, line: 1130, type: !428)
!2324 = !DILocation(line: 1130, column: 19, scope: !2316)
!2325 = !DILocalVariable(name: "key", scope: !2316, file: !65, line: 1131, type: !1993)
!2326 = !DILocation(line: 1131, column: 13, scope: !2316)
!2327 = !DILocalVariable(name: "outdata", scope: !2316, file: !65, line: 1132, type: !2328)
!2328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !429, size: 2048, elements: !1066)
!2329 = !DILocation(line: 1132, column: 19, scope: !2316)
!2330 = !DILocation(line: 1133, column: 25, scope: !2316)
!2331 = !DILocation(line: 1133, column: 5, scope: !2316)
!2332 = !DILocalVariable(name: "newTotalSize", scope: !2316, file: !65, line: 1134, type: !31)
!2333 = !DILocation(line: 1134, column: 9, scope: !2316)
!2334 = !DILocation(line: 1134, column: 38, scope: !2316)
!2335 = !DILocation(line: 1134, column: 22, scope: !2316)
!2336 = !DILocalVariable(name: "bytes_to_decode", scope: !2316, file: !65, line: 1135, type: !31)
!2337 = !DILocation(line: 1135, column: 9, scope: !2316)
!2338 = !DILocation(line: 1135, column: 34, scope: !2316)
!2339 = !DILocation(line: 1135, column: 27, scope: !2316)
!2340 = !DILocalVariable(name: "encryptedText", scope: !2316, file: !65, line: 1136, type: !461)
!2341 = !DILocation(line: 1136, column: 20, scope: !2316)
!2342 = !DILocation(line: 1136, column: 49, scope: !2316)
!2343 = !DILocation(line: 1136, column: 53, scope: !2316)
!2344 = !DILocation(line: 1136, column: 36, scope: !2316)
!2345 = !DILocalVariable(name: "last", scope: !2316, file: !65, line: 1137, type: !2346)
!2346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 8192, elements: !2005)
!2347 = !DILocation(line: 1137, column: 10, scope: !2316)
!2348 = !DILocalVariable(name: "state", scope: !2316, file: !65, line: 1138, type: !1895)
!2349 = !DILocation(line: 1138, column: 22, scope: !2316)
!2350 = !DILocation(line: 1139, column: 22, scope: !2316)
!2351 = !DILocation(line: 1139, column: 5, scope: !2316)
!2352 = !DILocation(line: 1140, column: 5, scope: !2316)
!2353 = !DILocation(line: 1143, column: 27, scope: !2316)
!2354 = !DILocation(line: 1143, column: 41, scope: !2316)
!2355 = !DILocation(line: 1143, column: 49, scope: !2316)
!2356 = !DILocation(line: 1143, column: 74, scope: !2316)
!2357 = !DILocation(line: 1143, column: 68, scope: !2316)
!2358 = !DILocation(line: 1143, column: 86, scope: !2316)
!2359 = !DILocation(line: 1143, column: 80, scope: !2316)
!2360 = !DILocation(line: 1143, column: 101, scope: !2316)
!2361 = !DILocation(line: 1143, column: 5, scope: !2316)
!2362 = !DILocation(line: 1148, column: 12, scope: !2316)
!2363 = !DILocation(line: 1148, column: 24, scope: !2316)
!2364 = !DILocation(line: 1148, column: 5, scope: !2316)
!2365 = !DILocation(line: 1149, column: 19, scope: !2316)
!2366 = !DILocation(line: 1149, column: 5, scope: !2316)
!2367 = !DILocation(line: 1150, column: 1, scope: !2316)
!2368 = distinct !DISubprogram(name: "main", scope: !65, file: !65, line: 2207, type: !2369, scopeLine: 2208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !1429)
!2369 = !DISubroutineType(types: !2370)
!2370 = !{!31, !31, !716}
!2371 = !DILocalVariable(name: "argc", arg: 1, scope: !2368, file: !65, line: 2207, type: !31)
!2372 = !DILocation(line: 2207, column: 14, scope: !2368)
!2373 = !DILocalVariable(name: "argv", arg: 2, scope: !2368, file: !65, line: 2207, type: !716)
!2374 = !DILocation(line: 2207, column: 27, scope: !2368)
!2375 = !DILocalVariable(name: "c", scope: !2368, file: !65, line: 2209, type: !31)
!2376 = !DILocation(line: 2209, column: 6, scope: !2368)
!2377 = !DILocation(line: 2211, column: 17, scope: !2368)
!2378 = !DILocation(line: 2213, column: 2, scope: !2368)
!2379 = !DILocation(line: 2215, column: 2, scope: !2368)
!2380 = !DILocation(line: 2218, column: 2, scope: !2368)
!2381 = !DILocation(line: 2221, column: 2, scope: !2368)
!2382 = !DILocation(line: 2222, column: 2, scope: !2368)
!2383 = !DILocation(line: 2224, column: 2, scope: !2368)
!2384 = !DILocation(line: 2225, column: 2, scope: !2368)
!2385 = !DILocation(line: 2226, column: 2, scope: !2368)
!2386 = !DILocation(line: 2228, column: 2, scope: !2368)
!2387 = !DILocation(line: 2230, column: 2, scope: !2368)
!2388 = !DILocation(line: 2231, column: 2, scope: !2368)
!2389 = !DILocation(line: 2232, column: 2, scope: !2368)
!2390 = !DILocation(line: 2234, column: 14, scope: !2391)
!2391 = distinct !DILexicalBlock(scope: !2368, file: !65, line: 2234, column: 6)
!2392 = !DILocation(line: 2234, column: 7, scope: !2391)
!2393 = !DILocation(line: 2234, column: 6, scope: !2368)
!2394 = !DILocalVariable(name: "uo", scope: !2395, file: !65, line: 2236, type: !2396)
!2395 = distinct !DILexicalBlock(scope: !2391, file: !65, line: 2234, column: 37)
!2396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uoptions", file: !65, line: 835, size: 64, elements: !2397)
!2397 = !{!2398}
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !2396, file: !65, line: 839, baseType: !2399, size: 64)
!2399 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2396, file: !65, line: 836, size: 64, elements: !2400)
!2400 = !{!2401, !2403}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !2399, file: !65, line: 837, baseType: !2402, size: 64)
!2402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "o", scope: !2399, file: !65, line: 838, baseType: !2404, size: 64)
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2405 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2406)
!2406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !2407, line: 50, size: 256, elements: !2408)
!2407 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!2408 = !{!2409, !2410, !2411, !2412}
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2406, file: !2407, line: 52, baseType: !473, size: 64)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !2406, file: !2407, line: 55, baseType: !31, size: 32, offset: 64)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !2406, file: !2407, line: 56, baseType: !1323, size: 64, offset: 128)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2406, file: !2407, line: 57, baseType: !31, size: 32, offset: 192)
!2413 = !DILocation(line: 2236, column: 19, scope: !2395)
!2414 = !DILocation(line: 2237, column: 6, scope: !2395)
!2415 = !DILocation(line: 2237, column: 10, scope: !2395)
!2416 = !DILocation(line: 2239, column: 3, scope: !2395)
!2417 = !DILocation(line: 2239, column: 28, scope: !2395)
!2418 = !DILocation(line: 2239, column: 34, scope: !2395)
!2419 = !DILocation(line: 2239, column: 52, scope: !2395)
!2420 = !DILocation(line: 2239, column: 54, scope: !2395)
!2421 = !DILocation(line: 2239, column: 16, scope: !2395)
!2422 = !DILocation(line: 2239, column: 14, scope: !2395)
!2423 = !DILocation(line: 2239, column: 64, scope: !2395)
!2424 = !DILocation(line: 2240, column: 12, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2395, file: !65, line: 2239, column: 72)
!2426 = !DILocation(line: 2240, column: 4, scope: !2425)
!2427 = !DILocation(line: 2242, column: 17, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2425, file: !65, line: 2240, column: 14)
!2429 = !DILocation(line: 2242, column: 5, scope: !2428)
!2430 = !DILocation(line: 2243, column: 5, scope: !2428)
!2431 = !DILocation(line: 2245, column: 38, scope: !2428)
!2432 = !DILocation(line: 2245, column: 23, scope: !2428)
!2433 = !DILocation(line: 2245, column: 5, scope: !2428)
!2434 = !DILocation(line: 2246, column: 5, scope: !2428)
!2435 = !DILocation(line: 2248, column: 38, scope: !2428)
!2436 = !DILocation(line: 2248, column: 23, scope: !2428)
!2437 = !DILocation(line: 2248, column: 5, scope: !2428)
!2438 = !DILocation(line: 2249, column: 5, scope: !2428)
!2439 = !DILocation(line: 2251, column: 35, scope: !2428)
!2440 = !DILocation(line: 2251, column: 20, scope: !2428)
!2441 = !DILocation(line: 2251, column: 5, scope: !2428)
!2442 = !DILocation(line: 2252, column: 5, scope: !2428)
!2443 = !DILocation(line: 2254, column: 33, scope: !2428)
!2444 = !DILocation(line: 2255, column: 5, scope: !2428)
!2445 = !DILocation(line: 2257, column: 35, scope: !2428)
!2446 = !DILocation(line: 2257, column: 5, scope: !2428)
!2447 = !DILocation(line: 2258, column: 5, scope: !2428)
!2448 = !DILocation(line: 2261, column: 4, scope: !2428)
!2449 = distinct !{!2449, !2416, !2450, !1877}
!2450 = !DILocation(line: 2262, column: 3, scope: !2395)
!2451 = !DILocation(line: 2263, column: 2, scope: !2395)
!2452 = !DILocation(line: 2265, column: 9, scope: !2368)
!2453 = !DILocation(line: 2278, column: 29, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2368, file: !65, line: 2277, column: 2)
!2455 = !DILocation(line: 2278, column: 21, scope: !2454)
!2456 = !DILocation(line: 2280, column: 19, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2454, file: !65, line: 2280, column: 7)
!2458 = !DILocation(line: 2280, column: 23, scope: !2457)
!2459 = !DILocation(line: 2280, column: 7, scope: !2454)
!2460 = !DILocation(line: 2281, column: 22, scope: !2457)
!2461 = !DILocation(line: 2281, column: 5, scope: !2457)
!2462 = !DILocation(line: 2282, column: 24, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2457, file: !65, line: 2282, column: 12)
!2464 = !DILocation(line: 2282, column: 28, scope: !2463)
!2465 = !DILocation(line: 2282, column: 12, scope: !2457)
!2466 = !DILocation(line: 2283, column: 22, scope: !2463)
!2467 = !DILocation(line: 2283, column: 5, scope: !2463)
!2468 = !DILocation(line: 2285, column: 74, scope: !2454)
!2469 = !DILocation(line: 2285, column: 47, scope: !2454)
!2470 = !DILocation(line: 2285, column: 45, scope: !2454)
!2471 = !DILocation(line: 2290, column: 2, scope: !2368)
!2472 = !DILocation(line: 2291, column: 56, scope: !2368)
!2473 = !DILocation(line: 2291, column: 54, scope: !2368)
!2474 = !DILocation(line: 2293, column: 12, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !2368, file: !65, line: 2293, column: 5)
!2476 = !DILocation(line: 2293, column: 5, scope: !2475)
!2477 = !DILocation(line: 2293, column: 5, scope: !2368)
!2478 = !DILocation(line: 2294, column: 20, scope: !2475)
!2479 = !DILocation(line: 2294, column: 25, scope: !2475)
!2480 = !DILocation(line: 2294, column: 10, scope: !2475)
!2481 = !DILocation(line: 2294, column: 3, scope: !2475)
!2482 = !DILocation(line: 2296, column: 19, scope: !2368)
!2483 = !DILocation(line: 2296, column: 24, scope: !2368)
!2484 = !DILocation(line: 2296, column: 2, scope: !2368)
!2485 = !DILocation(line: 2298, column: 19, scope: !2368)
!2486 = !DILocation(line: 2298, column: 24, scope: !2368)
!2487 = !DILocation(line: 2298, column: 2, scope: !2368)
!2488 = !DILocalVariable(name: "uo", scope: !2368, file: !65, line: 2300, type: !2396)
!2489 = !DILocation(line: 2300, column: 18, scope: !2368)
!2490 = !DILocation(line: 2301, column: 5, scope: !2368)
!2491 = !DILocation(line: 2301, column: 9, scope: !2368)
!2492 = !DILocation(line: 2303, column: 2, scope: !2368)
!2493 = !DILocation(line: 2303, column: 27, scope: !2368)
!2494 = !DILocation(line: 2303, column: 33, scope: !2368)
!2495 = !DILocation(line: 2303, column: 51, scope: !2368)
!2496 = !DILocation(line: 2303, column: 53, scope: !2368)
!2497 = !DILocation(line: 2303, column: 15, scope: !2368)
!2498 = !DILocation(line: 2303, column: 13, scope: !2368)
!2499 = !DILocation(line: 2303, column: 63, scope: !2368)
!2500 = !DILocation(line: 2304, column: 6, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !2502, file: !65, line: 2304, column: 6)
!2502 = distinct !DILexicalBlock(scope: !2368, file: !65, line: 2303, column: 71)
!2503 = !DILocation(line: 2304, column: 8, scope: !2501)
!2504 = !DILocation(line: 2304, column: 6, scope: !2502)
!2505 = !DILocation(line: 2305, column: 15, scope: !2501)
!2506 = !DILocation(line: 2305, column: 17, scope: !2501)
!2507 = !DILocation(line: 2305, column: 4, scope: !2501)
!2508 = distinct !{!2508, !2492, !2509, !1877}
!2509 = !DILocation(line: 2306, column: 2, scope: !2368)
!2510 = !DILocation(line: 2309, column: 19, scope: !2368)
!2511 = !DILocation(line: 2309, column: 24, scope: !2368)
!2512 = !DILocation(line: 2309, column: 2, scope: !2368)
!2513 = !DILocalVariable(name: "mfn", scope: !2514, file: !65, line: 2312, type: !475)
!2514 = distinct !DILexicalBlock(scope: !2368, file: !65, line: 2311, column: 2)
!2515 = !DILocation(line: 2312, column: 17, scope: !2514)
!2516 = !DILocation(line: 2312, column: 23, scope: !2514)
!2517 = !DILocation(line: 2314, column: 18, scope: !2514)
!2518 = !DILocation(line: 2314, column: 3, scope: !2514)
!2519 = !DILocation(line: 2317, column: 6, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2368, file: !65, line: 2317, column: 5)
!2521 = !DILocation(line: 2317, column: 23, scope: !2520)
!2522 = !DILocation(line: 2317, column: 31, scope: !2520)
!2523 = !DILocation(line: 2317, column: 5, scope: !2368)
!2524 = !DILocation(line: 2318, column: 3, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2520, file: !65, line: 2317, column: 40)
!2526 = !DILocation(line: 2318, column: 3, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2528, file: !65, line: 2318, column: 3)
!2528 = distinct !DILexicalBlock(scope: !2525, file: !65, line: 2318, column: 3)
!2529 = !DILocation(line: 2318, column: 3, scope: !2528)
!2530 = !DILocalVariable(name: "szdst", scope: !2531, file: !65, line: 2318, type: !673)
!2531 = distinct !DILexicalBlock(scope: !2532, file: !65, line: 2318, column: 3)
!2532 = distinct !DILexicalBlock(scope: !2533, file: !65, line: 2318, column: 3)
!2533 = distinct !DILexicalBlock(scope: !2527, file: !65, line: 2318, column: 3)
!2534 = !DILocation(line: 2318, column: 3, scope: !2531)
!2535 = !DILocation(line: 2318, column: 3, scope: !2533)
!2536 = !DILocation(line: 2319, column: 2, scope: !2525)
!2537 = !DILocation(line: 2321, column: 2, scope: !2368)
!2538 = !DILocation(line: 2322, column: 59, scope: !2368)
!2539 = !DILocation(line: 2322, column: 76, scope: !2368)
!2540 = !DILocation(line: 2322, column: 84, scope: !2368)
!2541 = !DILocation(line: 2322, column: 2, scope: !2368)
!2542 = !DILocation(line: 2324, column: 5, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2368, file: !65, line: 2324, column: 5)
!2544 = !DILocation(line: 2324, column: 5, scope: !2368)
!2545 = !DILocation(line: 2325, column: 3, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2543, file: !65, line: 2324, column: 35)
!2547 = !DILocation(line: 2326, column: 2, scope: !2546)
!2548 = !DILocation(line: 2327, column: 17, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2368, file: !65, line: 2327, column: 5)
!2550 = !DILocation(line: 2327, column: 5, scope: !2549)
!2551 = !DILocation(line: 2327, column: 23, scope: !2549)
!2552 = !DILocation(line: 2327, column: 26, scope: !2549)
!2553 = !DILocation(line: 2327, column: 5, scope: !2368)
!2554 = !DILocation(line: 2328, column: 3, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2549, file: !65, line: 2327, column: 60)
!2556 = !DILocation(line: 2329, column: 2, scope: !2555)
!2557 = !DILocation(line: 2331, column: 9, scope: !2368)
!2558 = !DILocation(line: 2333, column: 2, scope: !2368)
!2559 = !DILocation(line: 2333, column: 27, scope: !2368)
!2560 = !DILocation(line: 2333, column: 33, scope: !2368)
!2561 = !DILocation(line: 2333, column: 51, scope: !2368)
!2562 = !DILocation(line: 2333, column: 53, scope: !2368)
!2563 = !DILocation(line: 2333, column: 15, scope: !2368)
!2564 = !DILocation(line: 2333, column: 13, scope: !2368)
!2565 = !DILocation(line: 2333, column: 63, scope: !2368)
!2566 = !DILocation(line: 2334, column: 7, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2568, file: !65, line: 2334, column: 7)
!2568 = distinct !DILexicalBlock(scope: !2368, file: !65, line: 2333, column: 71)
!2569 = !DILocation(line: 2334, column: 9, scope: !2567)
!2570 = !DILocation(line: 2334, column: 7, scope: !2568)
!2571 = !DILocation(line: 2335, column: 17, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2567, file: !65, line: 2334, column: 17)
!2573 = !DILocation(line: 2335, column: 19, scope: !2572)
!2574 = !DILocation(line: 2335, column: 6, scope: !2572)
!2575 = !DILocation(line: 2336, column: 4, scope: !2572)
!2576 = distinct !{!2576, !2558, !2577, !1877}
!2577 = !DILocation(line: 2337, column: 2, scope: !2368)
!2578 = !DILocation(line: 2339, column: 17, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2368, file: !65, line: 2339, column: 5)
!2580 = !DILocation(line: 2339, column: 5, scope: !2579)
!2581 = !DILocation(line: 2339, column: 30, scope: !2579)
!2582 = !DILocation(line: 2339, column: 47, scope: !2579)
!2583 = !DILocation(line: 2339, column: 34, scope: !2579)
!2584 = !DILocation(line: 2339, column: 5, scope: !2368)
!2585 = !DILocation(line: 2340, column: 3, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2579, file: !65, line: 2339, column: 57)
!2587 = !DILocation(line: 2341, column: 3, scope: !2586)
!2588 = !DILocation(line: 2344, column: 17, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2368, file: !65, line: 2344, column: 5)
!2590 = !DILocation(line: 2344, column: 5, scope: !2589)
!2591 = !DILocation(line: 2344, column: 30, scope: !2589)
!2592 = !DILocation(line: 2344, column: 45, scope: !2589)
!2593 = !DILocation(line: 2344, column: 33, scope: !2589)
!2594 = !DILocation(line: 2344, column: 5, scope: !2368)
!2595 = !DILocation(line: 2345, column: 3, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2589, file: !65, line: 2344, column: 59)
!2597 = !DILocation(line: 2346, column: 3, scope: !2596)
!2598 = !DILocation(line: 2349, column: 17, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !2368, file: !65, line: 2349, column: 5)
!2600 = !DILocation(line: 2349, column: 5, scope: !2599)
!2601 = !DILocation(line: 2349, column: 5, scope: !2368)
!2602 = !DILocation(line: 2350, column: 3, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2599, file: !65, line: 2349, column: 31)
!2604 = !DILocation(line: 2351, column: 2, scope: !2603)
!2605 = !DILocation(line: 2353, column: 17, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2368, file: !65, line: 2353, column: 5)
!2607 = !DILocation(line: 2353, column: 5, scope: !2606)
!2608 = !DILocation(line: 2353, column: 5, scope: !2368)
!2609 = !DILocation(line: 2354, column: 3, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2606, file: !65, line: 2353, column: 31)
!2611 = !DILocation(line: 2355, column: 2, scope: !2610)
!2612 = !DILocation(line: 2357, column: 17, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2368, file: !65, line: 2357, column: 5)
!2614 = !DILocation(line: 2357, column: 5, scope: !2613)
!2615 = !DILocation(line: 2357, column: 5, scope: !2368)
!2616 = !DILocation(line: 2358, column: 3, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2613, file: !65, line: 2357, column: 31)
!2618 = !DILocation(line: 2359, column: 2, scope: !2617)
!2619 = !DILocation(line: 2362, column: 6, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2368, file: !65, line: 2362, column: 5)
!2621 = !DILocation(line: 2362, column: 70, scope: !2620)
!2622 = !DILocation(line: 2362, column: 103, scope: !2620)
!2623 = !DILocation(line: 2362, column: 115, scope: !2620)
!2624 = !DILocation(line: 2362, column: 5, scope: !2368)
!2625 = !DILocation(line: 2363, column: 4, scope: !2620)
!2626 = !DILocation(line: 2363, column: 4, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2620, file: !65, line: 2363, column: 4)
!2628 = !DILocalVariable(name: "szdst", scope: !2629, file: !65, line: 2363, type: !673)
!2629 = distinct !DILexicalBlock(scope: !2630, file: !65, line: 2363, column: 4)
!2630 = distinct !DILexicalBlock(scope: !2631, file: !65, line: 2363, column: 4)
!2631 = distinct !DILexicalBlock(scope: !2632, file: !65, line: 2363, column: 4)
!2632 = distinct !DILexicalBlock(scope: !2627, file: !65, line: 2363, column: 4)
!2633 = !DILocation(line: 2363, column: 4, scope: !2629)
!2634 = !DILocation(line: 2363, column: 4, scope: !2631)
!2635 = !DILocation(line: 2366, column: 10, scope: !2368)
!2636 = !DILocation(line: 2366, column: 7, scope: !2368)
!2637 = !DILocation(line: 2367, column: 10, scope: !2368)
!2638 = !DILocation(line: 2367, column: 7, scope: !2368)
!2639 = !DILocation(line: 2369, column: 5, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2368, file: !65, line: 2369, column: 5)
!2641 = !DILocation(line: 2369, column: 9, scope: !2640)
!2642 = !DILocation(line: 2369, column: 5, scope: !2368)
!2643 = !DILocation(line: 2370, column: 87, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2640, file: !65, line: 2369, column: 13)
!2645 = !DILocation(line: 2370, column: 92, scope: !2644)
!2646 = !DILocation(line: 2370, column: 96, scope: !2644)
!2647 = !DILocation(line: 2370, column: 3, scope: !2644)
!2648 = !DILocation(line: 2371, column: 2, scope: !2644)
!2649 = !DILocation(line: 2373, column: 5, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2368, file: !65, line: 2373, column: 5)
!2651 = !DILocation(line: 2373, column: 24, scope: !2650)
!2652 = !DILocation(line: 2373, column: 27, scope: !2650)
!2653 = !DILocation(line: 2373, column: 5, scope: !2368)
!2654 = !DILocation(line: 2374, column: 3, scope: !2655)
!2655 = distinct !DILexicalBlock(scope: !2650, file: !65, line: 2373, column: 45)
!2656 = !DILocation(line: 2375, column: 3, scope: !2655)
!2657 = !DILocation(line: 2378, column: 5, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2368, file: !65, line: 2378, column: 5)
!2659 = !DILocation(line: 2378, column: 13, scope: !2658)
!2660 = !DILocation(line: 2378, column: 16, scope: !2658)
!2661 = !DILocation(line: 2378, column: 5, scope: !2368)
!2662 = !DILocation(line: 2379, column: 3, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2658, file: !65, line: 2378, column: 26)
!2664 = !DILocation(line: 2382, column: 2, scope: !2663)
!2665 = !DILocation(line: 2384, column: 17, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2368, file: !65, line: 2384, column: 5)
!2667 = !DILocation(line: 2384, column: 5, scope: !2666)
!2668 = !DILocation(line: 2384, column: 5, scope: !2368)
!2669 = !DILocation(line: 2385, column: 3, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2666, file: !65, line: 2384, column: 39)
!2671 = !DILocation(line: 2386, column: 6, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2670, file: !65, line: 2386, column: 6)
!2673 = !DILocation(line: 2386, column: 21, scope: !2672)
!2674 = !DILocation(line: 2386, column: 25, scope: !2672)
!2675 = !DILocation(line: 2386, column: 28, scope: !2672)
!2676 = !DILocation(line: 2386, column: 6, scope: !2670)
!2677 = !DILocation(line: 2387, column: 4, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !2672, file: !65, line: 2386, column: 37)
!2679 = !DILocation(line: 2388, column: 4, scope: !2678)
!2680 = !DILocation(line: 2390, column: 9, scope: !2670)
!2681 = !DILocation(line: 2392, column: 5, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2368, file: !65, line: 2392, column: 5)
!2683 = !DILocation(line: 2392, column: 13, scope: !2682)
!2684 = !DILocation(line: 2392, column: 16, scope: !2682)
!2685 = !DILocation(line: 2392, column: 31, scope: !2682)
!2686 = !DILocation(line: 2392, column: 35, scope: !2682)
!2687 = !DILocation(line: 2392, column: 38, scope: !2682)
!2688 = !DILocation(line: 2392, column: 5, scope: !2368)
!2689 = !DILocation(line: 2393, column: 3, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !2682, file: !65, line: 2392, column: 47)
!2691 = !DILocation(line: 2394, column: 11, scope: !2690)
!2692 = !DILocation(line: 2395, column: 2, scope: !2690)
!2693 = !DILocation(line: 2397, column: 6, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2368, file: !65, line: 2397, column: 5)
!2695 = !DILocation(line: 2397, column: 25, scope: !2694)
!2696 = !DILocation(line: 2397, column: 29, scope: !2694)
!2697 = !DILocation(line: 2397, column: 5, scope: !2368)
!2698 = !DILocation(line: 2398, column: 42, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !2700, file: !65, line: 2398, column: 6)
!2700 = distinct !DILexicalBlock(scope: !2694, file: !65, line: 2397, column: 47)
!2701 = !DILocation(line: 2398, column: 6, scope: !2699)
!2702 = !DILocation(line: 2398, column: 6, scope: !2700)
!2703 = !DILocation(line: 2399, column: 4, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !2699, file: !65, line: 2398, column: 56)
!2705 = !DILocation(line: 2400, column: 19, scope: !2704)
!2706 = !DILocation(line: 2401, column: 22, scope: !2704)
!2707 = !DILocation(line: 2402, column: 3, scope: !2704)
!2708 = !DILocation(line: 2403, column: 19, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2699, file: !65, line: 2402, column: 10)
!2710 = !DILocation(line: 2404, column: 22, scope: !2709)
!2711 = !DILocation(line: 2406, column: 2, scope: !2700)
!2712 = !DILocation(line: 2408, column: 5, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !2368, file: !65, line: 2408, column: 5)
!2714 = !DILocation(line: 2408, column: 5, scope: !2368)
!2715 = !DILocation(line: 2409, column: 7, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2717, file: !65, line: 2409, column: 6)
!2717 = distinct !DILexicalBlock(scope: !2713, file: !65, line: 2408, column: 25)
!2718 = !DILocation(line: 2409, column: 24, scope: !2716)
!2719 = !DILocation(line: 2409, column: 32, scope: !2716)
!2720 = !DILocation(line: 2409, column: 6, scope: !2717)
!2721 = !DILocation(line: 2410, column: 4, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2716, file: !65, line: 2409, column: 41)
!2723 = !DILocation(line: 2411, column: 3, scope: !2722)
!2724 = !DILocation(line: 2412, column: 2, scope: !2717)
!2725 = !DILocation(line: 2414, column: 5, scope: !2726)
!2726 = distinct !DILexicalBlock(scope: !2368, file: !65, line: 2414, column: 5)
!2727 = !DILocation(line: 2414, column: 5, scope: !2368)
!2728 = !DILocation(line: 2415, column: 42, scope: !2729)
!2729 = distinct !DILexicalBlock(scope: !2730, file: !65, line: 2415, column: 6)
!2730 = distinct !DILexicalBlock(scope: !2726, file: !65, line: 2414, column: 23)
!2731 = !DILocation(line: 2415, column: 6, scope: !2729)
!2732 = !DILocation(line: 2415, column: 6, scope: !2730)
!2733 = !DILocation(line: 2416, column: 4, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2729, file: !65, line: 2415, column: 56)
!2735 = !DILocation(line: 2417, column: 19, scope: !2734)
!2736 = !DILocation(line: 2418, column: 22, scope: !2734)
!2737 = !DILocation(line: 2419, column: 3, scope: !2734)
!2738 = !DILocation(line: 2420, column: 2, scope: !2730)
!2739 = !DILocation(line: 2422, column: 2, scope: !2368)
!2740 = !DILocalVariable(name: "local_listeners", scope: !2368, file: !65, line: 2424, type: !31)
!2741 = !DILocation(line: 2424, column: 6, scope: !2368)
!2742 = !DILocation(line: 2425, column: 28, scope: !2743)
!2743 = distinct !DILexicalBlock(scope: !2368, file: !65, line: 2425, column: 6)
!2744 = !DILocation(line: 2425, column: 7, scope: !2743)
!2745 = !DILocation(line: 2425, column: 6, scope: !2368)
!2746 = !DILocation(line: 2426, column: 3, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2743, file: !65, line: 2425, column: 42)
!2748 = !DILocation(line: 2427, column: 3, scope: !2747)
!2749 = !DILocalVariable(name: "maddrs", scope: !2747, file: !65, line: 2428, type: !31)
!2750 = !DILocation(line: 2428, column: 7, scope: !2747)
!2751 = !DILocation(line: 2428, column: 16, scope: !2747)
!2752 = !DILocation(line: 2429, column: 7, scope: !2753)
!2753 = distinct !DILexicalBlock(scope: !2747, file: !65, line: 2429, column: 6)
!2754 = !DILocation(line: 2429, column: 13, scope: !2753)
!2755 = !DILocation(line: 2429, column: 17, scope: !2753)
!2756 = !DILocation(line: 2429, column: 42, scope: !2753)
!2757 = !DILocation(line: 2429, column: 21, scope: !2753)
!2758 = !DILocation(line: 2429, column: 6, scope: !2747)
!2759 = !DILocation(line: 2430, column: 4, scope: !2760)
!2760 = distinct !DILexicalBlock(scope: !2753, file: !65, line: 2429, column: 56)
!2761 = !DILocation(line: 2431, column: 12, scope: !2760)
!2762 = !DILocation(line: 2431, column: 4, scope: !2760)
!2763 = !DILocation(line: 2432, column: 4, scope: !2760)
!2764 = !DILocation(line: 2434, column: 19, scope: !2747)
!2765 = !DILocation(line: 2435, column: 3, scope: !2747)
!2766 = !DILocation(line: 2436, column: 80, scope: !2747)
!2767 = !DILocation(line: 2436, column: 3, scope: !2747)
!2768 = !DILocation(line: 2437, column: 3, scope: !2747)
!2769 = !DILocation(line: 2438, column: 2, scope: !2747)
!2770 = !DILocation(line: 2440, column: 19, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !2368, file: !65, line: 2440, column: 6)
!2772 = !DILocation(line: 2440, column: 7, scope: !2771)
!2773 = !DILocation(line: 2440, column: 6, scope: !2368)
!2774 = !DILocation(line: 2441, column: 7, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2776, file: !65, line: 2441, column: 6)
!2776 = distinct !DILexicalBlock(scope: !2771, file: !65, line: 2440, column: 34)
!2777 = !DILocation(line: 2441, column: 23, scope: !2775)
!2778 = !DILocation(line: 2441, column: 47, scope: !2775)
!2779 = !DILocation(line: 2441, column: 26, scope: !2775)
!2780 = !DILocation(line: 2441, column: 60, scope: !2775)
!2781 = !DILocation(line: 2441, column: 84, scope: !2775)
!2782 = !DILocation(line: 2441, column: 63, scope: !2775)
!2783 = !DILocation(line: 2441, column: 6, scope: !2776)
!2784 = !DILocalVariable(name: "la", scope: !2785, file: !65, line: 2442, type: !673)
!2785 = distinct !DILexicalBlock(scope: !2775, file: !65, line: 2441, column: 91)
!2786 = !DILocation(line: 2442, column: 11, scope: !2785)
!2787 = !DILocation(line: 2443, column: 10, scope: !2788)
!2788 = distinct !DILexicalBlock(scope: !2785, file: !65, line: 2443, column: 4)
!2789 = !DILocation(line: 2443, column: 8, scope: !2788)
!2790 = !DILocation(line: 2443, column: 13, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2788, file: !65, line: 2443, column: 4)
!2792 = !DILocation(line: 2443, column: 37, scope: !2791)
!2793 = !DILocation(line: 2443, column: 15, scope: !2791)
!2794 = !DILocation(line: 2443, column: 4, scope: !2788)
!2795 = !DILocation(line: 2444, column: 29, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2797, file: !65, line: 2444, column: 8)
!2797 = distinct !DILexicalBlock(scope: !2791, file: !65, line: 2443, column: 56)
!2798 = !DILocation(line: 2444, column: 35, scope: !2796)
!2799 = !DILocation(line: 2444, column: 8, scope: !2796)
!2800 = !DILocation(line: 2444, column: 8, scope: !2797)
!2801 = !DILocation(line: 2445, column: 42, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !2796, file: !65, line: 2444, column: 40)
!2803 = !DILocation(line: 2445, column: 48, scope: !2802)
!2804 = !DILocation(line: 2445, column: 21, scope: !2802)
!2805 = !DILocation(line: 2445, column: 6, scope: !2802)
!2806 = !DILocation(line: 2446, column: 5, scope: !2802)
!2807 = !DILocation(line: 2447, column: 4, scope: !2797)
!2808 = !DILocation(line: 2443, column: 52, scope: !2791)
!2809 = !DILocation(line: 2443, column: 4, scope: !2791)
!2810 = distinct !{!2810, !2794, !2811, !1877}
!2811 = !DILocation(line: 2447, column: 4, scope: !2788)
!2812 = !DILocation(line: 2448, column: 3, scope: !2785)
!2813 = !DILocation(line: 2449, column: 20, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2776, file: !65, line: 2449, column: 7)
!2815 = !DILocation(line: 2449, column: 8, scope: !2814)
!2816 = !DILocation(line: 2449, column: 7, scope: !2776)
!2817 = !DILocation(line: 2450, column: 31, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2814, file: !65, line: 2449, column: 35)
!2819 = !DILocation(line: 2451, column: 4, scope: !2818)
!2820 = !DILocation(line: 2452, column: 4, scope: !2818)
!2821 = !DILocation(line: 2453, column: 7, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2818, file: !65, line: 2453, column: 7)
!2823 = !DILocation(line: 2453, column: 40, scope: !2822)
!2824 = !DILocation(line: 2453, column: 7, scope: !2818)
!2825 = !DILocation(line: 2454, column: 5, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2822, file: !65, line: 2453, column: 44)
!2827 = !DILocation(line: 2455, column: 4, scope: !2826)
!2828 = !DILocation(line: 2456, column: 7, scope: !2829)
!2829 = distinct !DILexicalBlock(scope: !2818, file: !65, line: 2456, column: 7)
!2830 = !DILocation(line: 2456, column: 41, scope: !2829)
!2831 = !DILocation(line: 2456, column: 7, scope: !2818)
!2832 = !DILocation(line: 2457, column: 5, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2829, file: !65, line: 2456, column: 45)
!2834 = !DILocation(line: 2458, column: 4, scope: !2833)
!2835 = !DILocation(line: 2459, column: 4, scope: !2818)
!2836 = !DILocation(line: 2460, column: 97, scope: !2818)
!2837 = !DILocation(line: 2460, column: 80, scope: !2818)
!2838 = !DILocation(line: 2460, column: 4, scope: !2818)
!2839 = !DILocation(line: 2461, column: 4, scope: !2818)
!2840 = !DILocation(line: 2462, column: 3, scope: !2818)
!2841 = !DILocation(line: 2464, column: 20, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2776, file: !65, line: 2464, column: 7)
!2843 = !DILocation(line: 2464, column: 8, scope: !2842)
!2844 = !DILocation(line: 2464, column: 7, scope: !2776)
!2845 = !DILocation(line: 2465, column: 4, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2842, file: !65, line: 2464, column: 35)
!2847 = !DILocation(line: 2467, column: 12, scope: !2846)
!2848 = !DILocation(line: 2467, column: 4, scope: !2846)
!2849 = !DILocation(line: 2468, column: 4, scope: !2846)
!2850 = !DILocation(line: 2470, column: 2, scope: !2776)
!2851 = !DILocation(line: 2472, column: 17, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2368, file: !65, line: 2472, column: 5)
!2853 = !DILocation(line: 2472, column: 5, scope: !2852)
!2854 = !DILocation(line: 2472, column: 29, scope: !2852)
!2855 = !DILocation(line: 2472, column: 44, scope: !2852)
!2856 = !DILocation(line: 2472, column: 32, scope: !2852)
!2857 = !DILocation(line: 2472, column: 5, scope: !2368)
!2858 = !DILocalVariable(name: "ir", scope: !2859, file: !65, line: 2473, type: !673)
!2859 = distinct !DILexicalBlock(scope: !2852, file: !65, line: 2472, column: 57)
!2860 = !DILocation(line: 2473, column: 10, scope: !2859)
!2861 = !DILocation(line: 2474, column: 10, scope: !2862)
!2862 = distinct !DILexicalBlock(scope: !2859, file: !65, line: 2474, column: 3)
!2863 = !DILocation(line: 2474, column: 7, scope: !2862)
!2864 = !DILocation(line: 2474, column: 15, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2862, file: !65, line: 2474, column: 3)
!2866 = !DILocation(line: 2474, column: 32, scope: !2865)
!2867 = !DILocation(line: 2474, column: 18, scope: !2865)
!2868 = !DILocation(line: 2474, column: 3, scope: !2862)
!2869 = !DILocation(line: 2475, column: 19, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2871, file: !65, line: 2475, column: 7)
!2871 = distinct !DILexicalBlock(scope: !2865, file: !65, line: 2474, column: 53)
!2872 = !DILocation(line: 2475, column: 31, scope: !2870)
!2873 = !DILocation(line: 2475, column: 7, scope: !2870)
!2874 = !DILocation(line: 2475, column: 7, scope: !2871)
!2875 = !DILocalVariable(name: "sra", scope: !2876, file: !65, line: 2476, type: !473)
!2876 = distinct !DILexicalBlock(scope: !2870, file: !65, line: 2475, column: 36)
!2877 = !DILocation(line: 2476, column: 17, scope: !2876)
!2878 = !DILocation(line: 2476, column: 48, scope: !2876)
!2879 = !DILocation(line: 2476, column: 60, scope: !2876)
!2880 = !DILocation(line: 2476, column: 36, scope: !2876)
!2881 = !DILocation(line: 2477, column: 16, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2876, file: !65, line: 2477, column: 8)
!2883 = !DILocation(line: 2477, column: 9, scope: !2882)
!2884 = !DILocation(line: 2477, column: 36, scope: !2882)
!2885 = !DILocation(line: 2477, column: 33, scope: !2882)
!2886 = !DILocation(line: 2477, column: 40, scope: !2882)
!2887 = !DILocation(line: 2477, column: 50, scope: !2882)
!2888 = !DILocation(line: 2477, column: 43, scope: !2882)
!2889 = !DILocation(line: 2477, column: 62, scope: !2882)
!2890 = !DILocation(line: 2477, column: 60, scope: !2882)
!2891 = !DILocation(line: 2477, column: 8, scope: !2876)
!2892 = !DILocalVariable(name: "ra", scope: !2893, file: !65, line: 2478, type: !481)
!2893 = distinct !DILexicalBlock(scope: !2882, file: !65, line: 2477, column: 68)
!2894 = !DILocation(line: 2478, column: 15, scope: !2893)
!2895 = !DILocation(line: 2479, column: 39, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2893, file: !65, line: 2479, column: 9)
!2897 = !DILocation(line: 2479, column: 9, scope: !2896)
!2898 = !DILocation(line: 2479, column: 49, scope: !2896)
!2899 = !DILocation(line: 2479, column: 9, scope: !2893)
!2900 = !DILocation(line: 2480, column: 76, scope: !2901)
!2901 = distinct !DILexicalBlock(scope: !2896, file: !65, line: 2479, column: 53)
!2902 = !DILocation(line: 2480, column: 7, scope: !2901)
!2903 = !DILocation(line: 2481, column: 6, scope: !2901)
!2904 = !DILocation(line: 2481, column: 22, scope: !2905)
!2905 = distinct !DILexicalBlock(scope: !2896, file: !65, line: 2481, column: 16)
!2906 = !DILocation(line: 2481, column: 16, scope: !2905)
!2907 = !DILocation(line: 2481, column: 47, scope: !2905)
!2908 = !DILocation(line: 2481, column: 63, scope: !2905)
!2909 = !DILocation(line: 2481, column: 35, scope: !2905)
!2910 = !DILocation(line: 2481, column: 32, scope: !2905)
!2911 = !DILocation(line: 2481, column: 16, scope: !2896)
!2912 = !DILocation(line: 2482, column: 40, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !2905, file: !65, line: 2481, column: 74)
!2914 = !DILocation(line: 2482, column: 7, scope: !2913)
!2915 = !DILocation(line: 2483, column: 6, scope: !2913)
!2916 = !DILocation(line: 2484, column: 5, scope: !2893)
!2917 = !DILocation(line: 2485, column: 4, scope: !2876)
!2918 = !DILocation(line: 2486, column: 3, scope: !2871)
!2919 = !DILocation(line: 2474, column: 47, scope: !2865)
!2920 = !DILocation(line: 2474, column: 3, scope: !2865)
!2921 = distinct !{!2921, !2868, !2922, !1877}
!2922 = !DILocation(line: 2486, column: 3, scope: !2862)
!2923 = !DILocation(line: 2487, column: 2, scope: !2859)
!2924 = !DILocation(line: 2489, column: 17, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2368, file: !65, line: 2489, column: 5)
!2926 = !DILocation(line: 2489, column: 5, scope: !2925)
!2927 = !DILocation(line: 2489, column: 5, scope: !2368)
!2928 = !DILocalVariable(name: "pid", scope: !2929, file: !65, line: 2491, type: !2930)
!2929 = distinct !DILexicalBlock(scope: !2925, file: !65, line: 2489, column: 30)
!2930 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !1521, line: 97, baseType: !2931)
!2931 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !419, line: 154, baseType: !31)
!2932 = !DILocation(line: 2491, column: 9, scope: !2929)
!2933 = !DILocation(line: 2491, column: 15, scope: !2929)
!2934 = !DILocation(line: 2492, column: 6, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2929, file: !65, line: 2492, column: 6)
!2936 = !DILocation(line: 2492, column: 9, scope: !2935)
!2937 = !DILocation(line: 2492, column: 6, scope: !2929)
!2938 = !DILocation(line: 2493, column: 4, scope: !2935)
!2939 = !DILocation(line: 2494, column: 6, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2929, file: !65, line: 2494, column: 6)
!2941 = !DILocation(line: 2494, column: 9, scope: !2940)
!2942 = !DILocation(line: 2494, column: 6, scope: !2929)
!2943 = !DILocation(line: 2495, column: 4, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !2940, file: !65, line: 2494, column: 13)
!2945 = !DILocation(line: 2496, column: 4, scope: !2944)
!2946 = !DILocation(line: 2505, column: 2, scope: !2929)
!2947 = !DILocation(line: 2507, column: 5, scope: !2948)
!2948 = distinct !DILexicalBlock(scope: !2368, file: !65, line: 2507, column: 5)
!2949 = !DILocation(line: 2507, column: 5, scope: !2368)
!2950 = !DILocalVariable(name: "s", scope: !2951, file: !65, line: 2509, type: !2952)
!2951 = distinct !DILexicalBlock(scope: !2948, file: !65, line: 2507, column: 29)
!2952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 16392, elements: !2953)
!2953 = !{!2954}
!2954 = !DISubrange(count: 2049)
!2955 = !DILocation(line: 2509, column: 8, scope: !2951)
!2956 = !DILocalVariable(name: "f", scope: !2951, file: !65, line: 2510, type: !2074)
!2957 = !DILocation(line: 2510, column: 9, scope: !2951)
!2958 = !DILocation(line: 2510, column: 13, scope: !2951)
!2959 = !DILocation(line: 2511, column: 6, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !2951, file: !65, line: 2511, column: 6)
!2961 = !DILocation(line: 2511, column: 6, scope: !2951)
!2962 = !DILocation(line: 2512, column: 4, scope: !2963)
!2963 = distinct !DILexicalBlock(scope: !2960, file: !65, line: 2511, column: 9)
!2964 = !DILocalVariable(name: "szdst", scope: !2965, file: !65, line: 2512, type: !673)
!2965 = distinct !DILexicalBlock(scope: !2966, file: !65, line: 2512, column: 4)
!2966 = distinct !DILexicalBlock(scope: !2967, file: !65, line: 2512, column: 4)
!2967 = distinct !DILexicalBlock(scope: !2968, file: !65, line: 2512, column: 4)
!2968 = distinct !DILexicalBlock(scope: !2969, file: !65, line: 2512, column: 4)
!2969 = distinct !DILexicalBlock(scope: !2963, file: !65, line: 2512, column: 4)
!2970 = !DILocation(line: 2512, column: 4, scope: !2965)
!2971 = !DILocation(line: 2512, column: 4, scope: !2969)
!2972 = !DILocation(line: 2513, column: 3, scope: !2963)
!2973 = !DILocation(line: 2514, column: 14, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2960, file: !65, line: 2513, column: 10)
!2975 = !DILocation(line: 2514, column: 5, scope: !2974)
!2976 = !DILocation(line: 2515, column: 11, scope: !2974)
!2977 = !DILocation(line: 2515, column: 4, scope: !2974)
!2978 = !DILocation(line: 2516, column: 50, scope: !2974)
!2979 = !DILocation(line: 2516, column: 4, scope: !2974)
!2980 = !DILocalVariable(name: "pfs", scope: !2981, file: !65, line: 2519, type: !2982)
!2981 = distinct !DILexicalBlock(scope: !2974, file: !65, line: 2518, column: 4)
!2982 = !DICompositeType(tag: DW_TAG_array_type, baseType: !473, size: 448, elements: !921)
!2983 = !DILocation(line: 2519, column: 17, scope: !2981)
!2984 = !DILocalVariable(name: "ppfs", scope: !2981, file: !65, line: 2526, type: !2985)
!2985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!2986 = !DILocation(line: 2526, column: 18, scope: !2981)
!2987 = !DILocation(line: 2526, column: 25, scope: !2981)
!2988 = !DILocation(line: 2527, column: 5, scope: !2981)
!2989 = !DILocation(line: 2527, column: 12, scope: !2981)
!2990 = !DILocation(line: 2527, column: 11, scope: !2981)
!2991 = !DILocation(line: 2528, column: 17, scope: !2992)
!2992 = distinct !DILexicalBlock(scope: !2981, file: !65, line: 2527, column: 18)
!2993 = !DILocation(line: 2528, column: 16, scope: !2992)
!2994 = !DILocation(line: 2528, column: 10, scope: !2992)
!2995 = !DILocation(line: 2528, column: 8, scope: !2992)
!2996 = !DILocation(line: 2529, column: 9, scope: !2997)
!2997 = distinct !DILexicalBlock(scope: !2992, file: !65, line: 2529, column: 9)
!2998 = !DILocation(line: 2529, column: 9, scope: !2992)
!2999 = !DILocation(line: 2530, column: 7, scope: !3000)
!3000 = distinct !DILexicalBlock(scope: !2997, file: !65, line: 2529, column: 12)
!3001 = !DILocation(line: 2530, column: 7, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !3003, file: !65, line: 2530, column: 7)
!3003 = distinct !DILexicalBlock(scope: !3000, file: !65, line: 2530, column: 7)
!3004 = !DILocation(line: 2530, column: 7, scope: !3003)
!3005 = !DILocalVariable(name: "szdst", scope: !3006, file: !65, line: 2530, type: !673)
!3006 = distinct !DILexicalBlock(scope: !3007, file: !65, line: 2530, column: 7)
!3007 = distinct !DILexicalBlock(scope: !3008, file: !65, line: 2530, column: 7)
!3008 = distinct !DILexicalBlock(scope: !3002, file: !65, line: 2530, column: 7)
!3009 = !DILocation(line: 2530, column: 7, scope: !3006)
!3010 = !DILocation(line: 2530, column: 7, scope: !3008)
!3011 = !DILocation(line: 2531, column: 7, scope: !3000)
!3012 = !DILocation(line: 2533, column: 7, scope: !3013)
!3013 = distinct !DILexicalBlock(scope: !2997, file: !65, line: 2532, column: 13)
!3014 = distinct !{!3014, !2988, !3015, !1877}
!3015 = !DILocation(line: 2535, column: 5, scope: !2981)
!3016 = !DILocation(line: 2539, column: 6, scope: !3017)
!3017 = distinct !DILexicalBlock(scope: !2951, file: !65, line: 2539, column: 6)
!3018 = !DILocation(line: 2539, column: 6, scope: !2951)
!3019 = !DILocation(line: 2540, column: 12, scope: !3020)
!3020 = distinct !DILexicalBlock(scope: !3017, file: !65, line: 2539, column: 9)
!3021 = !DILocation(line: 2540, column: 37, scope: !3020)
!3022 = !DILocation(line: 2540, column: 22, scope: !3020)
!3023 = !DILocation(line: 2540, column: 4, scope: !3020)
!3024 = !DILocation(line: 2541, column: 11, scope: !3020)
!3025 = !DILocation(line: 2541, column: 4, scope: !3020)
!3026 = !DILocation(line: 2542, column: 65, scope: !3020)
!3027 = !DILocation(line: 2542, column: 4, scope: !3020)
!3028 = !DILocation(line: 2543, column: 3, scope: !3020)
!3029 = !DILocation(line: 2544, column: 2, scope: !2951)
!3030 = !DILocation(line: 2546, column: 2, scope: !2368)
!3031 = !DILocalVariable(name: "ev", scope: !2368, file: !65, line: 2548, type: !561)
!3032 = !DILocation(line: 2548, column: 16, scope: !2368)
!3033 = !DILocation(line: 2548, column: 21, scope: !2368)
!3034 = !DILocation(line: 2549, column: 12, scope: !2368)
!3035 = !DILocation(line: 2549, column: 2, scope: !2368)
!3036 = !DILocation(line: 2551, column: 2, scope: !2368)
!3037 = !DILocation(line: 2553, column: 6, scope: !3038)
!3038 = distinct !DILexicalBlock(scope: !2368, file: !65, line: 2553, column: 6)
!3039 = !DILocation(line: 2553, column: 6, scope: !2368)
!3040 = !DILocation(line: 2554, column: 4, scope: !3041)
!3041 = distinct !DILexicalBlock(scope: !3038, file: !65, line: 2553, column: 32)
!3042 = !DILocation(line: 2555, column: 2, scope: !3041)
!3043 = !DILocation(line: 2557, column: 4, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !3038, file: !65, line: 2556, column: 7)
!3045 = !DILocation(line: 2562, column: 2, scope: !2368)
!3046 = !DILocation(line: 2564, column: 2, scope: !2368)
!3047 = !DILocation(line: 2566, column: 2, scope: !2368)
!3048 = !DILocation(line: 2567, column: 1, scope: !2368)
!3049 = distinct !DISubprogram(name: "init_domain", scope: !65, file: !65, line: 2196, type: !3050, scopeLine: 2197, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !1429)
!3050 = !DISubroutineType(types: !3051)
!3051 = !{null}
!3052 = !DILocation(line: 2199, column: 5, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !3049, file: !65, line: 2199, column: 5)
!3054 = !DILocation(line: 2199, column: 67, scope: !3053)
!3055 = !DILocation(line: 2199, column: 5, scope: !3049)
!3056 = !DILocation(line: 2200, column: 24, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !3053, file: !65, line: 2199, column: 71)
!3058 = !DILocation(line: 2201, column: 2, scope: !3057)
!3059 = !DILocation(line: 2201, column: 13, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !3053, file: !65, line: 2201, column: 12)
!3061 = !DILocation(line: 2201, column: 12, scope: !3053)
!3062 = !DILocation(line: 2202, column: 24, scope: !3063)
!3063 = distinct !DILexicalBlock(scope: !3060, file: !65, line: 2201, column: 50)
!3064 = !DILocation(line: 2203, column: 2, scope: !3063)
!3065 = !DILocation(line: 2205, column: 1, scope: !3049)
!3066 = distinct !DISubprogram(name: "set_network_engine", scope: !65, file: !65, line: 2142, type: !3050, scopeLine: 2143, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !1429)
!3067 = !DILocation(line: 2144, column: 17, scope: !3068)
!3068 = distinct !DILexicalBlock(scope: !3066, file: !65, line: 2144, column: 5)
!3069 = !DILocation(line: 2144, column: 36, scope: !3068)
!3070 = !DILocation(line: 2144, column: 5, scope: !3066)
!3071 = !DILocation(line: 2145, column: 3, scope: !3068)
!3072 = !DILocation(line: 2146, column: 33, scope: !3066)
!3073 = !DILocation(line: 2149, column: 33, scope: !3066)
!3074 = !DILocation(line: 2164, column: 1, scope: !3066)
!3075 = distinct !DISubprogram(name: "get_bool_value", scope: !65, file: !65, line: 1159, type: !3076, scopeLine: 1160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !1429)
!3076 = !DISubroutineType(types: !3077)
!3077 = !{!31, !473}
!3078 = !DILocalVariable(name: "s", arg: 1, scope: !3075, file: !65, line: 1159, type: !473)
!3079 = !DILocation(line: 1159, column: 39, scope: !3075)
!3080 = !DILocation(line: 1161, column: 6, scope: !3081)
!3081 = distinct !DILexicalBlock(scope: !3075, file: !65, line: 1161, column: 5)
!3082 = !DILocation(line: 1161, column: 8, scope: !3081)
!3083 = !DILocation(line: 1161, column: 13, scope: !3081)
!3084 = !DILocation(line: 1161, column: 12, scope: !3081)
!3085 = !DILocation(line: 1161, column: 5, scope: !3075)
!3086 = !DILocation(line: 1161, column: 20, scope: !3081)
!3087 = !DILocation(line: 1162, column: 5, scope: !3088)
!3088 = distinct !DILexicalBlock(scope: !3075, file: !65, line: 1162, column: 5)
!3089 = !DILocation(line: 1162, column: 9, scope: !3088)
!3090 = !DILocation(line: 1162, column: 15, scope: !3088)
!3091 = !DILocation(line: 1162, column: 18, scope: !3088)
!3092 = !DILocation(line: 1162, column: 22, scope: !3088)
!3093 = !DILocation(line: 1162, column: 28, scope: !3088)
!3094 = !DILocation(line: 1162, column: 31, scope: !3088)
!3095 = !DILocation(line: 1162, column: 35, scope: !3088)
!3096 = !DILocation(line: 1162, column: 41, scope: !3088)
!3097 = !DILocation(line: 1162, column: 44, scope: !3088)
!3098 = !DILocation(line: 1162, column: 48, scope: !3088)
!3099 = !DILocation(line: 1162, column: 54, scope: !3088)
!3100 = !DILocation(line: 1162, column: 57, scope: !3088)
!3101 = !DILocation(line: 1162, column: 61, scope: !3088)
!3102 = !DILocation(line: 1162, column: 5, scope: !3075)
!3103 = !DILocation(line: 1162, column: 68, scope: !3088)
!3104 = !DILocation(line: 1163, column: 5, scope: !3105)
!3105 = distinct !DILexicalBlock(scope: !3075, file: !65, line: 1163, column: 5)
!3106 = !DILocation(line: 1163, column: 9, scope: !3105)
!3107 = !DILocation(line: 1163, column: 15, scope: !3105)
!3108 = !DILocation(line: 1163, column: 18, scope: !3105)
!3109 = !DILocation(line: 1163, column: 22, scope: !3105)
!3110 = !DILocation(line: 1163, column: 28, scope: !3105)
!3111 = !DILocation(line: 1163, column: 31, scope: !3105)
!3112 = !DILocation(line: 1163, column: 35, scope: !3105)
!3113 = !DILocation(line: 1163, column: 41, scope: !3105)
!3114 = !DILocation(line: 1163, column: 44, scope: !3105)
!3115 = !DILocation(line: 1163, column: 48, scope: !3105)
!3116 = !DILocation(line: 1163, column: 5, scope: !3075)
!3117 = !DILocation(line: 1163, column: 55, scope: !3105)
!3118 = !DILocation(line: 1164, column: 5, scope: !3119)
!3119 = distinct !DILexicalBlock(scope: !3075, file: !65, line: 1164, column: 5)
!3120 = !DILocation(line: 1164, column: 9, scope: !3119)
!3121 = !DILocation(line: 1164, column: 14, scope: !3119)
!3122 = !DILocation(line: 1164, column: 17, scope: !3119)
!3123 = !DILocation(line: 1164, column: 21, scope: !3119)
!3124 = !DILocation(line: 1164, column: 5, scope: !3075)
!3125 = !DILocation(line: 1164, column: 28, scope: !3119)
!3126 = !DILocation(line: 1165, column: 13, scope: !3127)
!3127 = distinct !DILexicalBlock(scope: !3075, file: !65, line: 1165, column: 5)
!3128 = !DILocation(line: 1165, column: 6, scope: !3127)
!3129 = !DILocation(line: 1165, column: 22, scope: !3127)
!3130 = !DILocation(line: 1165, column: 33, scope: !3127)
!3131 = !DILocation(line: 1165, column: 26, scope: !3127)
!3132 = !DILocation(line: 1165, column: 42, scope: !3127)
!3133 = !DILocation(line: 1165, column: 53, scope: !3127)
!3134 = !DILocation(line: 1165, column: 46, scope: !3127)
!3135 = !DILocation(line: 1165, column: 5, scope: !3075)
!3136 = !DILocation(line: 1165, column: 63, scope: !3127)
!3137 = !DILocation(line: 1166, column: 13, scope: !3138)
!3138 = distinct !DILexicalBlock(scope: !3075, file: !65, line: 1166, column: 5)
!3139 = !DILocation(line: 1166, column: 6, scope: !3138)
!3140 = !DILocation(line: 1166, column: 21, scope: !3138)
!3141 = !DILocation(line: 1166, column: 32, scope: !3138)
!3142 = !DILocation(line: 1166, column: 25, scope: !3138)
!3143 = !DILocation(line: 1166, column: 40, scope: !3138)
!3144 = !DILocation(line: 1166, column: 51, scope: !3138)
!3145 = !DILocation(line: 1166, column: 44, scope: !3138)
!3146 = !DILocation(line: 1166, column: 5, scope: !3075)
!3147 = !DILocation(line: 1166, column: 60, scope: !3138)
!3148 = !DILocation(line: 1167, column: 114, scope: !3075)
!3149 = !DILocation(line: 1167, column: 2, scope: !3075)
!3150 = !DILocation(line: 1168, column: 2, scope: !3075)
!3151 = !DILocation(line: 1169, column: 1, scope: !3075)
!3152 = distinct !DISubprogram(name: "adminmain", scope: !65, file: !65, line: 1807, type: !2369, scopeLine: 1808, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !1429)
!3153 = !DILocalVariable(name: "argc", arg: 1, scope: !3152, file: !65, line: 1807, type: !31)
!3154 = !DILocation(line: 1807, column: 26, scope: !3152)
!3155 = !DILocalVariable(name: "argv", arg: 2, scope: !3152, file: !65, line: 1807, type: !716)
!3156 = !DILocation(line: 1807, column: 39, scope: !3152)
!3157 = !DILocalVariable(name: "c", scope: !3152, file: !65, line: 1809, type: !31)
!3158 = !DILocation(line: 1809, column: 6, scope: !3152)
!3159 = !DILocalVariable(name: "rc", scope: !3152, file: !65, line: 1810, type: !31)
!3160 = !DILocation(line: 1810, column: 6, scope: !3152)
!3161 = !DILocalVariable(name: "ct", scope: !3152, file: !65, line: 1812, type: !3162)
!3162 = !DIDerivedType(tag: DW_TAG_typedef, name: "TURNADMIN_COMMAND_TYPE", file: !30, line: 135, baseType: !374)
!3163 = !DILocation(line: 1812, column: 25, scope: !3152)
!3164 = !DILocalVariable(name: "is_admin", scope: !3152, file: !65, line: 1814, type: !31)
!3165 = !DILocation(line: 1814, column: 6, scope: !3152)
!3166 = !DILocalVariable(name: "fptr", scope: !3152, file: !65, line: 1815, type: !2074)
!3167 = !DILocation(line: 1815, column: 8, scope: !3152)
!3168 = !DILocalVariable(name: "generated_key", scope: !3152, file: !65, line: 1816, type: !1898)
!3169 = !DILocation(line: 1816, column: 16, scope: !3152)
!3170 = !DILocalVariable(name: "user", scope: !3152, file: !65, line: 1818, type: !3171)
!3171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !446, size: 4104, elements: !552)
!3172 = !DILocation(line: 1818, column: 10, scope: !3152)
!3173 = !DILocalVariable(name: "realm", scope: !3152, file: !65, line: 1819, type: !3174)
!3174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !446, size: 1024, elements: !503)
!3175 = !DILocation(line: 1819, column: 10, scope: !3152)
!3176 = !DILocalVariable(name: "pwd", scope: !3152, file: !65, line: 1820, type: !3177)
!3177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !446, size: 2056, elements: !741)
!3178 = !DILocation(line: 1820, column: 10, scope: !3152)
!3179 = !DILocalVariable(name: "secret", scope: !3152, file: !65, line: 1821, type: !3177)
!3180 = !DILocation(line: 1821, column: 10, scope: !3152)
!3181 = !DILocalVariable(name: "origin", scope: !3152, file: !65, line: 1822, type: !3174)
!3182 = !DILocation(line: 1822, column: 10, scope: !3152)
!3183 = !DILocalVariable(name: "po", scope: !3152, file: !65, line: 1823, type: !3184)
!3184 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_options_t", file: !3185, line: 51, baseType: !3186)
!3185 = !DIFile(filename: "src/server/ns_turn_session.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "0d3b1381a7fca7a8f35b6ee419f25609")
!3186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_perf_options_t", file: !3185, line: 45, size: 128, elements: !3187)
!3187 = !{!3188, !3190, !3191}
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "max_bps", scope: !3186, file: !3185, line: 47, baseType: !3189, size: 64)
!3189 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !496)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "total_quota", scope: !3186, file: !3185, line: 48, baseType: !476, size: 32, offset: 64)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "user_quota", scope: !3186, file: !3185, line: 49, baseType: !476, size: 32, offset: 96)
!3192 = !DILocation(line: 1823, column: 17, scope: !3152)
!3193 = !DILocalVariable(name: "uo", scope: !3152, file: !65, line: 1825, type: !2396)
!3194 = !DILocation(line: 1825, column: 18, scope: !3152)
!3195 = !DILocation(line: 1826, column: 5, scope: !3152)
!3196 = !DILocation(line: 1826, column: 9, scope: !3152)
!3197 = !DILocalVariable(name: "print_enc_password", scope: !3152, file: !65, line: 1828, type: !31)
!3198 = !DILocation(line: 1828, column: 6, scope: !3152)
!3199 = !DILocalVariable(name: "print_enc_aes_password", scope: !3152, file: !65, line: 1829, type: !31)
!3200 = !DILocation(line: 1829, column: 6, scope: !3152)
!3201 = !DILocation(line: 1831, column: 2, scope: !3152)
!3202 = !DILocation(line: 1831, column: 27, scope: !3152)
!3203 = !DILocation(line: 1831, column: 33, scope: !3152)
!3204 = !DILocation(line: 1831, column: 57, scope: !3152)
!3205 = !DILocation(line: 1831, column: 59, scope: !3152)
!3206 = !DILocation(line: 1831, column: 15, scope: !3152)
!3207 = !DILocation(line: 1831, column: 13, scope: !3152)
!3208 = !DILocation(line: 1831, column: 69, scope: !3152)
!3209 = !DILocation(line: 1832, column: 11, scope: !3210)
!3210 = distinct !DILexicalBlock(scope: !3152, file: !65, line: 1831, column: 77)
!3211 = !DILocation(line: 1832, column: 3, scope: !3210)
!3212 = !DILocation(line: 1834, column: 8, scope: !3213)
!3213 = distinct !DILexicalBlock(scope: !3214, file: !65, line: 1834, column: 8)
!3214 = distinct !DILexicalBlock(scope: !3210, file: !65, line: 1832, column: 13)
!3215 = !DILocation(line: 1834, column: 8, scope: !3214)
!3216 = !DILocalVariable(name: "result", scope: !3217, file: !65, line: 1835, type: !740)
!3217 = distinct !DILexicalBlock(scope: !3213, file: !65, line: 1834, column: 16)
!3218 = !DILocation(line: 1835, column: 11, scope: !3217)
!3219 = !DILocation(line: 1836, column: 39, scope: !3217)
!3220 = !DILocation(line: 1836, column: 44, scope: !3217)
!3221 = !DILocation(line: 1836, column: 6, scope: !3217)
!3222 = !DILocation(line: 1837, column: 20, scope: !3217)
!3223 = !DILocation(line: 1837, column: 6, scope: !3217)
!3224 = !DILocation(line: 1838, column: 6, scope: !3217)
!3225 = !DILocation(line: 1840, column: 24, scope: !3214)
!3226 = !DILocation(line: 1841, column: 5, scope: !3214)
!3227 = !DILocation(line: 1843, column: 28, scope: !3214)
!3228 = !DILocation(line: 1844, column: 5, scope: !3214)
!3229 = !DILocation(line: 1846, column: 8, scope: !3214)
!3230 = !DILocation(line: 1847, column: 5, scope: !3214)
!3231 = !DILocation(line: 1849, column: 8, scope: !3214)
!3232 = !DILocation(line: 1850, column: 5, scope: !3214)
!3233 = !DILocation(line: 1852, column: 32, scope: !3214)
!3234 = !DILocation(line: 1852, column: 27, scope: !3214)
!3235 = !DILocation(line: 1852, column: 8, scope: !3214)
!3236 = !DILocation(line: 1852, column: 19, scope: !3214)
!3237 = !DILocation(line: 1853, column: 5, scope: !3214)
!3238 = !DILocation(line: 1855, column: 33, scope: !3214)
!3239 = !DILocation(line: 1855, column: 28, scope: !3214)
!3240 = !DILocation(line: 1855, column: 8, scope: !3214)
!3241 = !DILocation(line: 1855, column: 20, scope: !3214)
!3242 = !DILocation(line: 1856, column: 5, scope: !3214)
!3243 = !DILocation(line: 1858, column: 29, scope: !3214)
!3244 = !DILocation(line: 1858, column: 24, scope: !3214)
!3245 = !DILocation(line: 1858, column: 18, scope: !3214)
!3246 = !DILocation(line: 1858, column: 8, scope: !3214)
!3247 = !DILocation(line: 1858, column: 16, scope: !3214)
!3248 = !DILocation(line: 1859, column: 5, scope: !3214)
!3249 = !DILocation(line: 1861, column: 8, scope: !3214)
!3250 = !DILocation(line: 1862, column: 5, scope: !3214)
!3251 = !DILocation(line: 1864, column: 8, scope: !3214)
!3252 = !DILocation(line: 1865, column: 5, scope: !3214)
!3253 = !DILocation(line: 1867, column: 8, scope: !3214)
!3254 = !DILocation(line: 1868, column: 5, scope: !3214)
!3255 = !DILocation(line: 1870, column: 5, scope: !3214)
!3256 = !DILocation(line: 1870, column: 5, scope: !3257)
!3257 = distinct !DILexicalBlock(scope: !3258, file: !65, line: 1870, column: 5)
!3258 = distinct !DILexicalBlock(scope: !3214, file: !65, line: 1870, column: 5)
!3259 = !DILocation(line: 1870, column: 5, scope: !3258)
!3260 = !DILocalVariable(name: "szdst", scope: !3261, file: !65, line: 1870, type: !673)
!3261 = distinct !DILexicalBlock(scope: !3262, file: !65, line: 1870, column: 5)
!3262 = distinct !DILexicalBlock(scope: !3263, file: !65, line: 1870, column: 5)
!3263 = distinct !DILexicalBlock(scope: !3257, file: !65, line: 1870, column: 5)
!3264 = !DILocation(line: 1870, column: 5, scope: !3261)
!3265 = !DILocation(line: 1870, column: 5, scope: !3263)
!3266 = !DILocation(line: 1871, column: 5, scope: !3214)
!3267 = !DILocation(line: 1873, column: 8, scope: !3214)
!3268 = !DILocation(line: 1874, column: 5, scope: !3214)
!3269 = !DILocation(line: 1876, column: 8, scope: !3214)
!3270 = !DILocation(line: 1877, column: 5, scope: !3214)
!3271 = !DILocation(line: 1879, column: 8, scope: !3214)
!3272 = !DILocation(line: 1880, column: 5, scope: !3214)
!3273 = !DILocation(line: 1882, column: 8, scope: !3214)
!3274 = !DILocation(line: 1883, column: 14, scope: !3214)
!3275 = !DILocation(line: 1884, column: 5, scope: !3214)
!3276 = !DILocation(line: 1886, column: 8, scope: !3214)
!3277 = !DILocation(line: 1887, column: 14, scope: !3214)
!3278 = !DILocation(line: 1888, column: 5, scope: !3214)
!3279 = !DILocation(line: 1890, column: 8, scope: !3214)
!3280 = !DILocation(line: 1891, column: 5, scope: !3214)
!3281 = !DILocation(line: 1893, column: 8, scope: !3214)
!3282 = !DILocation(line: 1894, column: 14, scope: !3214)
!3283 = !DILocation(line: 1895, column: 5, scope: !3214)
!3284 = !DILocation(line: 1897, column: 8, scope: !3214)
!3285 = !DILocation(line: 1898, column: 5, scope: !3214)
!3286 = !DILocation(line: 1898, column: 5, scope: !3287)
!3287 = distinct !DILexicalBlock(scope: !3288, file: !65, line: 1898, column: 5)
!3288 = distinct !DILexicalBlock(scope: !3214, file: !65, line: 1898, column: 5)
!3289 = !DILocation(line: 1898, column: 5, scope: !3288)
!3290 = !DILocalVariable(name: "szdst", scope: !3291, file: !65, line: 1898, type: !673)
!3291 = distinct !DILexicalBlock(scope: !3292, file: !65, line: 1898, column: 5)
!3292 = distinct !DILexicalBlock(scope: !3293, file: !65, line: 1898, column: 5)
!3293 = distinct !DILexicalBlock(scope: !3287, file: !65, line: 1898, column: 5)
!3294 = !DILocation(line: 1898, column: 5, scope: !3291)
!3295 = !DILocation(line: 1898, column: 5, scope: !3293)
!3296 = !DILocation(line: 1899, column: 5, scope: !3214)
!3297 = !DILocation(line: 1901, column: 8, scope: !3214)
!3298 = !DILocation(line: 1902, column: 5, scope: !3214)
!3299 = !DILocation(line: 1904, column: 8, scope: !3214)
!3300 = !DILocation(line: 1905, column: 8, scope: !3301)
!3301 = distinct !DILexicalBlock(scope: !3214, file: !65, line: 1905, column: 8)
!3302 = !DILocation(line: 1905, column: 8, scope: !3214)
!3303 = !DILocation(line: 1906, column: 6, scope: !3301)
!3304 = !DILocation(line: 1906, column: 6, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !3306, file: !65, line: 1906, column: 6)
!3306 = distinct !DILexicalBlock(scope: !3301, file: !65, line: 1906, column: 6)
!3307 = !DILocation(line: 1906, column: 6, scope: !3306)
!3308 = !DILocalVariable(name: "szdst", scope: !3309, file: !65, line: 1906, type: !673)
!3309 = distinct !DILexicalBlock(scope: !3310, file: !65, line: 1906, column: 6)
!3310 = distinct !DILexicalBlock(scope: !3311, file: !65, line: 1906, column: 6)
!3311 = distinct !DILexicalBlock(scope: !3305, file: !65, line: 1906, column: 6)
!3312 = !DILocation(line: 1906, column: 6, scope: !3309)
!3313 = !DILocation(line: 1906, column: 6, scope: !3311)
!3314 = !DILocation(line: 1907, column: 5, scope: !3214)
!3315 = !DILocation(line: 1909, column: 8, scope: !3214)
!3316 = !DILocation(line: 1910, column: 5, scope: !3214)
!3317 = !DILocation(line: 1913, column: 5, scope: !3214)
!3318 = !DILocation(line: 1913, column: 5, scope: !3319)
!3319 = distinct !DILexicalBlock(scope: !3320, file: !65, line: 1913, column: 5)
!3320 = distinct !DILexicalBlock(scope: !3214, file: !65, line: 1913, column: 5)
!3321 = !DILocation(line: 1913, column: 5, scope: !3320)
!3322 = !DILocalVariable(name: "szdst", scope: !3323, file: !65, line: 1913, type: !673)
!3323 = distinct !DILexicalBlock(scope: !3324, file: !65, line: 1913, column: 5)
!3324 = distinct !DILexicalBlock(scope: !3325, file: !65, line: 1913, column: 5)
!3325 = distinct !DILexicalBlock(scope: !3319, file: !65, line: 1913, column: 5)
!3326 = !DILocation(line: 1913, column: 5, scope: !3323)
!3327 = !DILocation(line: 1913, column: 5, scope: !3325)
!3328 = !DILocation(line: 1914, column: 46, scope: !3214)
!3329 = !DILocation(line: 1915, column: 5, scope: !3214)
!3330 = !DILocation(line: 1919, column: 5, scope: !3214)
!3331 = !DILocation(line: 1919, column: 5, scope: !3332)
!3332 = distinct !DILexicalBlock(scope: !3333, file: !65, line: 1919, column: 5)
!3333 = distinct !DILexicalBlock(scope: !3214, file: !65, line: 1919, column: 5)
!3334 = !DILocation(line: 1919, column: 5, scope: !3333)
!3335 = !DILocalVariable(name: "szdst", scope: !3336, file: !65, line: 1919, type: !673)
!3336 = distinct !DILexicalBlock(scope: !3337, file: !65, line: 1919, column: 5)
!3337 = distinct !DILexicalBlock(scope: !3338, file: !65, line: 1919, column: 5)
!3338 = distinct !DILexicalBlock(scope: !3332, file: !65, line: 1919, column: 5)
!3339 = !DILocation(line: 1919, column: 5, scope: !3336)
!3340 = !DILocation(line: 1919, column: 5, scope: !3338)
!3341 = !DILocation(line: 1920, column: 46, scope: !3214)
!3342 = !DILocation(line: 1921, column: 5, scope: !3214)
!3343 = !DILocation(line: 1925, column: 5, scope: !3214)
!3344 = !DILocation(line: 1925, column: 5, scope: !3345)
!3345 = distinct !DILexicalBlock(scope: !3346, file: !65, line: 1925, column: 5)
!3346 = distinct !DILexicalBlock(scope: !3214, file: !65, line: 1925, column: 5)
!3347 = !DILocation(line: 1925, column: 5, scope: !3346)
!3348 = !DILocalVariable(name: "szdst", scope: !3349, file: !65, line: 1925, type: !673)
!3349 = distinct !DILexicalBlock(scope: !3350, file: !65, line: 1925, column: 5)
!3350 = distinct !DILexicalBlock(scope: !3351, file: !65, line: 1925, column: 5)
!3351 = distinct !DILexicalBlock(scope: !3345, file: !65, line: 1925, column: 5)
!3352 = !DILocation(line: 1925, column: 5, scope: !3349)
!3353 = !DILocation(line: 1925, column: 5, scope: !3351)
!3354 = !DILocation(line: 1926, column: 46, scope: !3214)
!3355 = !DILocation(line: 1927, column: 5, scope: !3214)
!3356 = !DILocation(line: 1931, column: 5, scope: !3214)
!3357 = !DILocation(line: 1931, column: 5, scope: !3358)
!3358 = distinct !DILexicalBlock(scope: !3359, file: !65, line: 1931, column: 5)
!3359 = distinct !DILexicalBlock(scope: !3214, file: !65, line: 1931, column: 5)
!3360 = !DILocation(line: 1931, column: 5, scope: !3359)
!3361 = !DILocalVariable(name: "szdst", scope: !3362, file: !65, line: 1931, type: !673)
!3362 = distinct !DILexicalBlock(scope: !3363, file: !65, line: 1931, column: 5)
!3363 = distinct !DILexicalBlock(scope: !3364, file: !65, line: 1931, column: 5)
!3364 = distinct !DILexicalBlock(scope: !3358, file: !65, line: 1931, column: 5)
!3365 = !DILocation(line: 1931, column: 5, scope: !3362)
!3366 = !DILocation(line: 1931, column: 5, scope: !3364)
!3367 = !DILocation(line: 1932, column: 46, scope: !3214)
!3368 = !DILocation(line: 1933, column: 5, scope: !3214)
!3369 = !DILocation(line: 1937, column: 5, scope: !3214)
!3370 = !DILocation(line: 1937, column: 5, scope: !3371)
!3371 = distinct !DILexicalBlock(scope: !3372, file: !65, line: 1937, column: 5)
!3372 = distinct !DILexicalBlock(scope: !3214, file: !65, line: 1937, column: 5)
!3373 = !DILocation(line: 1937, column: 5, scope: !3372)
!3374 = !DILocalVariable(name: "szdst", scope: !3375, file: !65, line: 1937, type: !673)
!3375 = distinct !DILexicalBlock(scope: !3376, file: !65, line: 1937, column: 5)
!3376 = distinct !DILexicalBlock(scope: !3377, file: !65, line: 1937, column: 5)
!3377 = distinct !DILexicalBlock(scope: !3371, file: !65, line: 1937, column: 5)
!3378 = !DILocation(line: 1937, column: 5, scope: !3375)
!3379 = !DILocation(line: 1937, column: 5, scope: !3377)
!3380 = !DILocation(line: 1938, column: 46, scope: !3214)
!3381 = !DILocation(line: 1939, column: 5, scope: !3214)
!3382 = !DILocation(line: 1942, column: 5, scope: !3214)
!3383 = !DILocation(line: 1942, column: 5, scope: !3384)
!3384 = distinct !DILexicalBlock(scope: !3385, file: !65, line: 1942, column: 5)
!3385 = distinct !DILexicalBlock(scope: !3214, file: !65, line: 1942, column: 5)
!3386 = !DILocation(line: 1942, column: 5, scope: !3385)
!3387 = !DILocalVariable(name: "szdst", scope: !3388, file: !65, line: 1942, type: !673)
!3388 = distinct !DILexicalBlock(scope: !3389, file: !65, line: 1942, column: 5)
!3389 = distinct !DILexicalBlock(scope: !3390, file: !65, line: 1942, column: 5)
!3390 = distinct !DILexicalBlock(scope: !3384, file: !65, line: 1942, column: 5)
!3391 = !DILocation(line: 1942, column: 5, scope: !3388)
!3392 = !DILocation(line: 1942, column: 5, scope: !3390)
!3393 = !DILocation(line: 1943, column: 36, scope: !3394)
!3394 = distinct !DILexicalBlock(scope: !3214, file: !65, line: 1943, column: 8)
!3395 = !DILocation(line: 1943, column: 9, scope: !3394)
!3396 = !DILocation(line: 1943, column: 8, scope: !3214)
!3397 = !DILocation(line: 1944, column: 108, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !3394, file: !65, line: 1943, column: 45)
!3399 = !DILocation(line: 1944, column: 6, scope: !3398)
!3400 = !DILocation(line: 1945, column: 6, scope: !3398)
!3401 = !DILocation(line: 1947, column: 27, scope: !3402)
!3402 = distinct !DILexicalBlock(scope: !3214, file: !65, line: 1947, column: 8)
!3403 = !DILocation(line: 1947, column: 8, scope: !3402)
!3404 = !DILocation(line: 1947, column: 32, scope: !3402)
!3405 = !DILocation(line: 1947, column: 8, scope: !3214)
!3406 = !DILocation(line: 1948, column: 66, scope: !3407)
!3407 = distinct !DILexicalBlock(scope: !3402, file: !65, line: 1947, column: 36)
!3408 = !DILocation(line: 1948, column: 6, scope: !3407)
!3409 = !DILocation(line: 1949, column: 6, scope: !3407)
!3410 = !DILocation(line: 1951, column: 5, scope: !3214)
!3411 = !DILocation(line: 1953, column: 28, scope: !3214)
!3412 = !DILocation(line: 1953, column: 5, scope: !3214)
!3413 = !DILocation(line: 1954, column: 5, scope: !3214)
!3414 = !DILocation(line: 1954, column: 5, scope: !3415)
!3415 = distinct !DILexicalBlock(scope: !3416, file: !65, line: 1954, column: 5)
!3416 = distinct !DILexicalBlock(scope: !3214, file: !65, line: 1954, column: 5)
!3417 = !DILocation(line: 1954, column: 5, scope: !3416)
!3418 = !DILocalVariable(name: "szdst", scope: !3419, file: !65, line: 1954, type: !673)
!3419 = distinct !DILexicalBlock(scope: !3420, file: !65, line: 1954, column: 5)
!3420 = distinct !DILexicalBlock(scope: !3421, file: !65, line: 1954, column: 5)
!3421 = distinct !DILexicalBlock(scope: !3415, file: !65, line: 1954, column: 5)
!3422 = !DILocation(line: 1954, column: 5, scope: !3419)
!3423 = !DILocation(line: 1954, column: 5, scope: !3421)
!3424 = !DILocation(line: 1955, column: 27, scope: !3425)
!3425 = distinct !DILexicalBlock(scope: !3214, file: !65, line: 1955, column: 8)
!3426 = !DILocation(line: 1955, column: 8, scope: !3425)
!3427 = !DILocation(line: 1955, column: 33, scope: !3425)
!3428 = !DILocation(line: 1955, column: 8, scope: !3214)
!3429 = !DILocation(line: 1956, column: 62, scope: !3430)
!3430 = distinct !DILexicalBlock(scope: !3425, file: !65, line: 1955, column: 37)
!3431 = !DILocation(line: 1956, column: 6, scope: !3430)
!3432 = !DILocation(line: 1957, column: 6, scope: !3430)
!3433 = !DILocation(line: 1959, column: 5, scope: !3214)
!3434 = !DILocation(line: 1961, column: 5, scope: !3214)
!3435 = !DILocation(line: 1961, column: 5, scope: !3436)
!3436 = distinct !DILexicalBlock(scope: !3437, file: !65, line: 1961, column: 5)
!3437 = distinct !DILexicalBlock(scope: !3214, file: !65, line: 1961, column: 5)
!3438 = !DILocation(line: 1961, column: 5, scope: !3437)
!3439 = !DILocalVariable(name: "szdst", scope: !3440, file: !65, line: 1961, type: !673)
!3440 = distinct !DILexicalBlock(scope: !3441, file: !65, line: 1961, column: 5)
!3441 = distinct !DILexicalBlock(scope: !3442, file: !65, line: 1961, column: 5)
!3442 = distinct !DILexicalBlock(scope: !3436, file: !65, line: 1961, column: 5)
!3443 = !DILocation(line: 1961, column: 5, scope: !3440)
!3444 = !DILocation(line: 1961, column: 5, scope: !3442)
!3445 = !DILocation(line: 1962, column: 27, scope: !3446)
!3446 = distinct !DILexicalBlock(scope: !3214, file: !65, line: 1962, column: 8)
!3447 = !DILocation(line: 1962, column: 8, scope: !3446)
!3448 = !DILocation(line: 1962, column: 31, scope: !3446)
!3449 = !DILocation(line: 1962, column: 8, scope: !3214)
!3450 = !DILocation(line: 1963, column: 65, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !3446, file: !65, line: 1962, column: 35)
!3452 = !DILocation(line: 1963, column: 6, scope: !3451)
!3453 = !DILocation(line: 1964, column: 6, scope: !3451)
!3454 = !DILocation(line: 1966, column: 8, scope: !3455)
!3455 = distinct !DILexicalBlock(scope: !3214, file: !65, line: 1966, column: 8)
!3456 = !DILocation(line: 1966, column: 8, scope: !3214)
!3457 = !DILocalVariable(name: "result", scope: !3458, file: !65, line: 1967, type: !740)
!3458 = distinct !DILexicalBlock(scope: !3455, file: !65, line: 1966, column: 28)
!3459 = !DILocation(line: 1967, column: 11, scope: !3458)
!3460 = !DILocation(line: 1968, column: 39, scope: !3458)
!3461 = !DILocation(line: 1968, column: 44, scope: !3458)
!3462 = !DILocation(line: 1968, column: 6, scope: !3458)
!3463 = !DILocation(line: 1969, column: 20, scope: !3458)
!3464 = !DILocation(line: 1969, column: 6, scope: !3458)
!3465 = !DILocation(line: 1970, column: 6, scope: !3458)
!3466 = !DILocation(line: 1972, column: 8, scope: !3467)
!3467 = distinct !DILexicalBlock(scope: !3214, file: !65, line: 1972, column: 8)
!3468 = !DILocation(line: 1972, column: 8, scope: !3214)
!3469 = !DILocation(line: 1973, column: 22, scope: !3470)
!3470 = distinct !DILexicalBlock(scope: !3467, file: !65, line: 1972, column: 31)
!3471 = !DILocation(line: 1973, column: 27, scope: !3470)
!3472 = !DILocation(line: 1973, column: 6, scope: !3470)
!3473 = !DILocation(line: 1974, column: 6, scope: !3470)
!3474 = !DILocation(line: 1976, column: 5, scope: !3214)
!3475 = !DILocation(line: 1978, column: 26, scope: !3214)
!3476 = !DILocation(line: 1978, column: 34, scope: !3214)
!3477 = !DILocation(line: 1978, column: 5, scope: !3214)
!3478 = !DILocation(line: 1979, column: 5, scope: !3214)
!3479 = !DILocation(line: 1982, column: 25, scope: !3214)
!3480 = !DILocation(line: 1982, column: 12, scope: !3214)
!3481 = !DILocation(line: 1982, column: 10, scope: !3214)
!3482 = !DILocation(line: 1983, column: 8, scope: !3483)
!3483 = distinct !DILexicalBlock(scope: !3214, file: !65, line: 1983, column: 8)
!3484 = !DILocation(line: 1983, column: 13, scope: !3483)
!3485 = !DILocation(line: 1983, column: 8, scope: !3214)
!3486 = !DILocation(line: 1984, column: 46, scope: !3487)
!3487 = distinct !DILexicalBlock(scope: !3483, file: !65, line: 1983, column: 21)
!3488 = !DILocation(line: 1984, column: 6, scope: !3487)
!3489 = !DILocation(line: 1985, column: 5, scope: !3487)
!3490 = !DILocation(line: 1987, column: 13, scope: !3491)
!3491 = distinct !DILexicalBlock(scope: !3483, file: !65, line: 1986, column: 9)
!3492 = !DILocation(line: 1987, column: 6, scope: !3491)
!3493 = !DILocation(line: 1988, column: 17, scope: !3491)
!3494 = !DILocation(line: 1988, column: 50, scope: !3491)
!3495 = !DILocation(line: 1988, column: 11, scope: !3491)
!3496 = !DILocation(line: 1988, column: 9, scope: !3491)
!3497 = !DILocation(line: 1989, column: 10, scope: !3498)
!3498 = distinct !DILexicalBlock(scope: !3491, file: !65, line: 1989, column: 10)
!3499 = !DILocation(line: 1989, column: 13, scope: !3498)
!3500 = !DILocation(line: 1989, column: 10, scope: !3491)
!3501 = !DILocation(line: 1990, column: 7, scope: !3502)
!3502 = distinct !DILexicalBlock(scope: !3498, file: !65, line: 1989, column: 19)
!3503 = !DILocation(line: 1991, column: 6, scope: !3502)
!3504 = !DILocation(line: 1993, column: 11, scope: !3505)
!3505 = distinct !DILexicalBlock(scope: !3506, file: !65, line: 1993, column: 11)
!3506 = distinct !DILexicalBlock(scope: !3498, file: !65, line: 1992, column: 10)
!3507 = !DILocation(line: 1993, column: 14, scope: !3505)
!3508 = !DILocation(line: 1993, column: 11, scope: !3506)
!3509 = !DILocation(line: 1994, column: 8, scope: !3510)
!3510 = distinct !DILexicalBlock(scope: !3505, file: !65, line: 1993, column: 21)
!3511 = !DILocation(line: 1995, column: 7, scope: !3510)
!3512 = !DILocation(line: 1997, column: 14, scope: !3491)
!3513 = !DILocation(line: 1997, column: 6, scope: !3491)
!3514 = !DILocation(line: 1999, column: 5, scope: !3214)
!3515 = !DILocation(line: 2001, column: 28, scope: !3214)
!3516 = !DILocation(line: 2001, column: 36, scope: !3214)
!3517 = !DILocation(line: 2001, column: 5, scope: !3214)
!3518 = !DILocation(line: 2002, column: 5, scope: !3214)
!3519 = !DILocation(line: 2004, column: 5, scope: !3214)
!3520 = !DILocation(line: 2005, column: 5, scope: !3214)
!3521 = !DILocation(line: 2008, column: 13, scope: !3214)
!3522 = !DILocation(line: 2008, column: 5, scope: !3214)
!3523 = !DILocation(line: 2009, column: 5, scope: !3214)
!3524 = distinct !{!3524, !3201, !3525, !1877}
!3525 = !DILocation(line: 2011, column: 2, scope: !3152)
!3526 = !DILocation(line: 2014, column: 6, scope: !3527)
!3527 = distinct !DILexicalBlock(scope: !3152, file: !65, line: 2014, column: 5)
!3528 = !DILocation(line: 2014, column: 70, scope: !3527)
!3529 = !DILocation(line: 2014, column: 103, scope: !3527)
!3530 = !DILocation(line: 2014, column: 115, scope: !3527)
!3531 = !DILocation(line: 2014, column: 5, scope: !3152)
!3532 = !DILocation(line: 2015, column: 3, scope: !3527)
!3533 = !DILocation(line: 2015, column: 3, scope: !3534)
!3534 = distinct !DILexicalBlock(scope: !3527, file: !65, line: 2015, column: 3)
!3535 = !DILocalVariable(name: "szdst", scope: !3536, file: !65, line: 2015, type: !673)
!3536 = distinct !DILexicalBlock(scope: !3537, file: !65, line: 2015, column: 3)
!3537 = distinct !DILexicalBlock(scope: !3538, file: !65, line: 2015, column: 3)
!3538 = distinct !DILexicalBlock(scope: !3539, file: !65, line: 2015, column: 3)
!3539 = distinct !DILexicalBlock(scope: !3534, file: !65, line: 2015, column: 3)
!3540 = !DILocation(line: 2015, column: 3, scope: !3536)
!3541 = !DILocation(line: 2015, column: 3, scope: !3538)
!3542 = !DILocation(line: 2018, column: 5, scope: !3543)
!3543 = distinct !DILexicalBlock(scope: !3152, file: !65, line: 2018, column: 5)
!3544 = !DILocation(line: 2018, column: 8, scope: !3543)
!3545 = !DILocation(line: 2018, column: 5, scope: !3152)
!3546 = !DILocation(line: 2019, column: 11, scope: !3547)
!3547 = distinct !DILexicalBlock(scope: !3543, file: !65, line: 2018, column: 31)
!3548 = !DILocation(line: 2019, column: 3, scope: !3547)
!3549 = !DILocation(line: 2020, column: 3, scope: !3547)
!3550 = !DILocation(line: 2023, column: 10, scope: !3152)
!3551 = !DILocation(line: 2023, column: 7, scope: !3152)
!3552 = !DILocation(line: 2024, column: 10, scope: !3152)
!3553 = !DILocation(line: 2024, column: 7, scope: !3152)
!3554 = !DILocation(line: 2026, column: 5, scope: !3555)
!3555 = distinct !DILexicalBlock(scope: !3152, file: !65, line: 2026, column: 5)
!3556 = !DILocation(line: 2026, column: 10, scope: !3555)
!3557 = !DILocation(line: 2026, column: 5, scope: !3152)
!3558 = !DILocation(line: 2027, column: 11, scope: !3559)
!3559 = distinct !DILexicalBlock(scope: !3555, file: !65, line: 2026, column: 16)
!3560 = !DILocation(line: 2027, column: 3, scope: !3559)
!3561 = !DILocation(line: 2028, column: 3, scope: !3559)
!3562 = !DILocalVariable(name: "result", scope: !3152, file: !65, line: 2031, type: !31)
!3563 = !DILocation(line: 2031, column: 6, scope: !3152)
!3564 = !DILocation(line: 2031, column: 25, scope: !3152)
!3565 = !DILocation(line: 2031, column: 31, scope: !3152)
!3566 = !DILocation(line: 2031, column: 38, scope: !3152)
!3567 = !DILocation(line: 2031, column: 43, scope: !3152)
!3568 = !DILocation(line: 2031, column: 51, scope: !3152)
!3569 = !DILocation(line: 2031, column: 59, scope: !3152)
!3570 = !DILocation(line: 2031, column: 68, scope: !3152)
!3571 = !DILocation(line: 2031, column: 15, scope: !3152)
!3572 = !DILocation(line: 2033, column: 2, scope: !3152)
!3573 = !DILocation(line: 2035, column: 9, scope: !3152)
!3574 = !DILocation(line: 2035, column: 2, scope: !3152)
!3575 = !DILocalVariable(name: "argc", arg: 1, scope: !1426, file: !65, line: 1699, type: !31)
!3576 = !DILocation(line: 1699, column: 34, scope: !1426)
!3577 = !DILocalVariable(name: "argv", arg: 2, scope: !1426, file: !65, line: 1699, type: !716)
!3578 = !DILocation(line: 1699, column: 47, scope: !1426)
!3579 = !DILocalVariable(name: "pass", arg: 3, scope: !1426, file: !65, line: 1699, type: !31)
!3580 = !DILocation(line: 1699, column: 57, scope: !1426)
!3581 = !DILocation(line: 1703, column: 5, scope: !3582)
!3582 = distinct !DILexicalBlock(scope: !1426, file: !65, line: 1703, column: 5)
!3583 = !DILocation(line: 1703, column: 10, scope: !3582)
!3584 = !DILocation(line: 1703, column: 5, scope: !1426)
!3585 = !DILocation(line: 1705, column: 7, scope: !3586)
!3586 = distinct !DILexicalBlock(scope: !3587, file: !65, line: 1705, column: 7)
!3587 = distinct !DILexicalBlock(scope: !3582, file: !65, line: 1703, column: 16)
!3588 = !DILocation(line: 1705, column: 7, scope: !3587)
!3589 = !DILocalVariable(name: "i", scope: !3590, file: !65, line: 1706, type: !31)
!3590 = distinct !DILexicalBlock(scope: !3586, file: !65, line: 1705, column: 13)
!3591 = !DILocation(line: 1706, column: 8, scope: !3590)
!3592 = !DILocation(line: 1707, column: 11, scope: !3593)
!3593 = distinct !DILexicalBlock(scope: !3590, file: !65, line: 1707, column: 4)
!3594 = !DILocation(line: 1707, column: 9, scope: !3593)
!3595 = !DILocation(line: 1707, column: 16, scope: !3596)
!3596 = distinct !DILexicalBlock(scope: !3593, file: !65, line: 1707, column: 4)
!3597 = !DILocation(line: 1707, column: 20, scope: !3596)
!3598 = !DILocation(line: 1707, column: 18, scope: !3596)
!3599 = !DILocation(line: 1707, column: 4, scope: !3593)
!3600 = !DILocation(line: 1708, column: 17, scope: !3601)
!3601 = distinct !DILexicalBlock(scope: !3602, file: !65, line: 1708, column: 9)
!3602 = distinct !DILexicalBlock(scope: !3596, file: !65, line: 1707, column: 31)
!3603 = !DILocation(line: 1708, column: 22, scope: !3601)
!3604 = !DILocation(line: 1708, column: 10, scope: !3601)
!3605 = !DILocation(line: 1708, column: 9, scope: !3602)
!3606 = !DILocation(line: 1709, column: 10, scope: !3607)
!3607 = distinct !DILexicalBlock(scope: !3608, file: !65, line: 1709, column: 10)
!3608 = distinct !DILexicalBlock(scope: !3601, file: !65, line: 1708, column: 33)
!3609 = !DILocation(line: 1709, column: 14, scope: !3607)
!3610 = !DILocation(line: 1709, column: 19, scope: !3607)
!3611 = !DILocation(line: 1709, column: 12, scope: !3607)
!3612 = !DILocation(line: 1709, column: 10, scope: !3608)
!3613 = !DILocation(line: 1710, column: 7, scope: !3614)
!3614 = distinct !DILexicalBlock(scope: !3607, file: !65, line: 1709, column: 24)
!3615 = !DILocation(line: 1710, column: 7, scope: !3616)
!3616 = distinct !DILexicalBlock(scope: !3617, file: !65, line: 1710, column: 7)
!3617 = distinct !DILexicalBlock(scope: !3614, file: !65, line: 1710, column: 7)
!3618 = !DILocation(line: 1710, column: 7, scope: !3617)
!3619 = !DILocalVariable(name: "szdst", scope: !3620, file: !65, line: 1710, type: !673)
!3620 = distinct !DILexicalBlock(scope: !3621, file: !65, line: 1710, column: 7)
!3621 = distinct !DILexicalBlock(scope: !3622, file: !65, line: 1710, column: 7)
!3622 = distinct !DILexicalBlock(scope: !3616, file: !65, line: 1710, column: 7)
!3623 = !DILocation(line: 1710, column: 7, scope: !3620)
!3624 = !DILocation(line: 1710, column: 7, scope: !3622)
!3625 = !DILocation(line: 1711, column: 6, scope: !3614)
!3626 = !DILocation(line: 1712, column: 7, scope: !3627)
!3627 = distinct !DILexicalBlock(scope: !3607, file: !65, line: 1711, column: 13)
!3628 = !DILocation(line: 1714, column: 5, scope: !3608)
!3629 = !DILocation(line: 1714, column: 24, scope: !3630)
!3630 = distinct !DILexicalBlock(scope: !3601, file: !65, line: 1714, column: 16)
!3631 = !DILocation(line: 1714, column: 29, scope: !3630)
!3632 = !DILocation(line: 1714, column: 17, scope: !3630)
!3633 = !DILocation(line: 1714, column: 16, scope: !3601)
!3634 = !DILocation(line: 1715, column: 41, scope: !3635)
!3635 = distinct !DILexicalBlock(scope: !3630, file: !65, line: 1714, column: 40)
!3636 = !DILocation(line: 1716, column: 20, scope: !3635)
!3637 = !DILocation(line: 1717, column: 6, scope: !3635)
!3638 = !DILocation(line: 1718, column: 24, scope: !3639)
!3639 = distinct !DILexicalBlock(scope: !3630, file: !65, line: 1718, column: 16)
!3640 = !DILocation(line: 1718, column: 29, scope: !3639)
!3641 = !DILocation(line: 1718, column: 17, scope: !3639)
!3642 = !DILocation(line: 1718, column: 16, scope: !3630)
!3643 = !DILocation(line: 1719, column: 6, scope: !3644)
!3644 = distinct !DILexicalBlock(scope: !3639, file: !65, line: 1718, column: 40)
!3645 = !DILocation(line: 1720, column: 6, scope: !3644)
!3646 = !DILocation(line: 1722, column: 4, scope: !3602)
!3647 = !DILocation(line: 1707, column: 27, scope: !3596)
!3648 = !DILocation(line: 1707, column: 4, scope: !3596)
!3649 = distinct !{!3649, !3599, !3650, !1877}
!3650 = !DILocation(line: 1722, column: 4, scope: !3593)
!3651 = !DILocation(line: 1723, column: 3, scope: !3590)
!3652 = !DILocation(line: 1724, column: 2, scope: !3587)
!3653 = !DILocation(line: 1726, column: 19, scope: !3654)
!3654 = distinct !DILexicalBlock(scope: !1426, file: !65, line: 1726, column: 6)
!3655 = !DILocation(line: 1726, column: 7, scope: !3654)
!3656 = !DILocation(line: 1726, column: 42, scope: !3654)
!3657 = !DILocation(line: 1726, column: 45, scope: !3654)
!3658 = !DILocation(line: 1726, column: 6, scope: !1426)
!3659 = !DILocalVariable(name: "f", scope: !3660, file: !65, line: 1728, type: !2074)
!3660 = distinct !DILexicalBlock(scope: !3654, file: !65, line: 1726, column: 61)
!3661 = !DILocation(line: 1728, column: 9, scope: !3660)
!3662 = !DILocalVariable(name: "full_path_to_config_file", scope: !3660, file: !65, line: 1729, type: !459)
!3663 = !DILocation(line: 1729, column: 9, scope: !3660)
!3664 = !DILocation(line: 1731, column: 60, scope: !3660)
!3665 = !DILocation(line: 1731, column: 30, scope: !3660)
!3666 = !DILocation(line: 1731, column: 28, scope: !3660)
!3667 = !DILocation(line: 1732, column: 7, scope: !3668)
!3668 = distinct !DILexicalBlock(scope: !3660, file: !65, line: 1732, column: 7)
!3669 = !DILocation(line: 1732, column: 7, scope: !3660)
!3670 = !DILocation(line: 1733, column: 14, scope: !3668)
!3671 = !DILocation(line: 1733, column: 8, scope: !3668)
!3672 = !DILocation(line: 1733, column: 6, scope: !3668)
!3673 = !DILocation(line: 1733, column: 4, scope: !3668)
!3674 = !DILocation(line: 1735, column: 7, scope: !3675)
!3675 = distinct !DILexicalBlock(scope: !3660, file: !65, line: 1735, column: 7)
!3676 = !DILocation(line: 1735, column: 7, scope: !3660)
!3677 = !DILocalVariable(name: "sbuf", scope: !3678, file: !65, line: 1737, type: !543)
!3678 = distinct !DILexicalBlock(scope: !3675, file: !65, line: 1735, column: 10)
!3679 = !DILocation(line: 1737, column: 9, scope: !3678)
!3680 = !DILocalVariable(name: "sarg", scope: !3678, file: !65, line: 1738, type: !3681)
!3681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 8280, elements: !3682)
!3682 = !{!3683}
!3683 = !DISubrange(count: 1035)
!3684 = !DILocation(line: 1738, column: 9, scope: !3678)
!3685 = !DILocation(line: 1740, column: 4, scope: !3678)
!3686 = !DILocalVariable(name: "s", scope: !3687, file: !65, line: 1741, type: !459)
!3687 = distinct !DILexicalBlock(scope: !3688, file: !65, line: 1740, column: 13)
!3688 = distinct !DILexicalBlock(scope: !3689, file: !65, line: 1740, column: 4)
!3689 = distinct !DILexicalBlock(scope: !3678, file: !65, line: 1740, column: 4)
!3690 = !DILocation(line: 1741, column: 11, scope: !3687)
!3691 = !DILocation(line: 1741, column: 21, scope: !3687)
!3692 = !DILocation(line: 1741, column: 45, scope: !3687)
!3693 = !DILocation(line: 1741, column: 15, scope: !3687)
!3694 = !DILocation(line: 1742, column: 10, scope: !3695)
!3695 = distinct !DILexicalBlock(scope: !3687, file: !65, line: 1742, column: 9)
!3696 = !DILocation(line: 1742, column: 9, scope: !3687)
!3697 = !DILocation(line: 1743, column: 6, scope: !3695)
!3698 = !DILocation(line: 1744, column: 21, scope: !3687)
!3699 = !DILocation(line: 1744, column: 9, scope: !3687)
!3700 = !DILocation(line: 1744, column: 7, scope: !3687)
!3701 = !DILocation(line: 1745, column: 9, scope: !3702)
!3702 = distinct !DILexicalBlock(scope: !3687, file: !65, line: 1745, column: 9)
!3703 = !DILocation(line: 1745, column: 14, scope: !3702)
!3704 = !DILocation(line: 1745, column: 9, scope: !3687)
!3705 = !DILocation(line: 1746, column: 6, scope: !3702)
!3706 = distinct !{!3706, !3707, !3708}
!3707 = !DILocation(line: 1740, column: 4, scope: !3689)
!3708 = !DILocation(line: 1783, column: 4, scope: !3689)
!3709 = !DILocation(line: 1747, column: 10, scope: !3710)
!3710 = distinct !DILexicalBlock(scope: !3687, file: !65, line: 1747, column: 9)
!3711 = !DILocation(line: 1747, column: 9, scope: !3687)
!3712 = !DILocation(line: 1748, column: 6, scope: !3710)
!3713 = !DILocalVariable(name: "slen", scope: !3687, file: !65, line: 1749, type: !673)
!3714 = !DILocation(line: 1749, column: 12, scope: !3687)
!3715 = !DILocation(line: 1749, column: 26, scope: !3687)
!3716 = !DILocation(line: 1749, column: 19, scope: !3687)
!3717 = !DILocation(line: 1752, column: 5, scope: !3687)
!3718 = !DILocation(line: 1752, column: 12, scope: !3687)
!3719 = !DILocation(line: 1752, column: 17, scope: !3687)
!3720 = !DILocation(line: 1752, column: 20, scope: !3687)
!3721 = !DILocation(line: 0, scope: !3687)
!3722 = !DILocation(line: 1753, column: 6, scope: !3687)
!3723 = !DILocation(line: 1753, column: 8, scope: !3687)
!3724 = !DILocation(line: 1753, column: 16, scope: !3687)
!3725 = distinct !{!3725, !3717, !3726, !1877}
!3726 = !DILocation(line: 1753, column: 18, scope: !3687)
!3727 = !DILocation(line: 1754, column: 9, scope: !3728)
!3728 = distinct !DILexicalBlock(scope: !3687, file: !65, line: 1754, column: 9)
!3729 = !DILocation(line: 1754, column: 9, scope: !3687)
!3730 = !DILocalVariable(name: "c", scope: !3731, file: !65, line: 1755, type: !31)
!3731 = distinct !DILexicalBlock(scope: !3728, file: !65, line: 1754, column: 15)
!3732 = !DILocation(line: 1755, column: 10, scope: !3731)
!3733 = !DILocalVariable(name: "value", scope: !3731, file: !65, line: 1756, type: !459)
!3734 = !DILocation(line: 1756, column: 12, scope: !3731)
!3735 = !DILocation(line: 1757, column: 6, scope: !3731)
!3736 = !DILocation(line: 1757, column: 6, scope: !3737)
!3737 = distinct !DILexicalBlock(scope: !3738, file: !65, line: 1757, column: 6)
!3738 = distinct !DILexicalBlock(scope: !3731, file: !65, line: 1757, column: 6)
!3739 = !DILocation(line: 1757, column: 6, scope: !3738)
!3740 = !DILocalVariable(name: "szdst", scope: !3741, file: !65, line: 1757, type: !673)
!3741 = distinct !DILexicalBlock(scope: !3742, file: !65, line: 1757, column: 6)
!3742 = distinct !DILexicalBlock(scope: !3743, file: !65, line: 1757, column: 6)
!3743 = distinct !DILexicalBlock(scope: !3737, file: !65, line: 1757, column: 6)
!3744 = !DILocation(line: 1757, column: 6, scope: !3741)
!3745 = !DILocation(line: 1757, column: 6, scope: !3743)
!3746 = !DILocation(line: 1758, column: 27, scope: !3747)
!3747 = distinct !DILexicalBlock(scope: !3731, file: !65, line: 1758, column: 10)
!3748 = !DILocation(line: 1758, column: 10, scope: !3747)
!3749 = !DILocation(line: 1758, column: 45, scope: !3747)
!3750 = !DILocation(line: 1758, column: 10, scope: !3731)
!3751 = !DILocation(line: 1760, column: 9, scope: !3752)
!3752 = distinct !DILexicalBlock(scope: !3747, file: !65, line: 1758, column: 50)
!3753 = !DILocation(line: 1759, column: 7, scope: !3752)
!3754 = !DILocation(line: 1761, column: 6, scope: !3752)
!3755 = !DILocation(line: 1761, column: 17, scope: !3756)
!3756 = distinct !DILexicalBlock(scope: !3747, file: !65, line: 1761, column: 16)
!3757 = !DILocation(line: 1761, column: 22, scope: !3756)
!3758 = !DILocation(line: 1761, column: 28, scope: !3756)
!3759 = !DILocation(line: 1761, column: 32, scope: !3756)
!3760 = !DILocation(line: 1761, column: 34, scope: !3756)
!3761 = !DILocation(line: 1761, column: 16, scope: !3747)
!3762 = !DILocation(line: 1762, column: 19, scope: !3763)
!3763 = distinct !DILexicalBlock(scope: !3756, file: !65, line: 1761, column: 43)
!3764 = !DILocation(line: 1762, column: 7, scope: !3763)
!3765 = !DILocation(line: 1763, column: 6, scope: !3763)
!3766 = !DILocation(line: 1763, column: 17, scope: !3767)
!3767 = distinct !DILexicalBlock(scope: !3756, file: !65, line: 1763, column: 16)
!3768 = !DILocation(line: 1763, column: 21, scope: !3767)
!3769 = !DILocation(line: 1763, column: 26, scope: !3767)
!3770 = !DILocation(line: 1763, column: 30, scope: !3767)
!3771 = !DILocation(line: 1763, column: 31, scope: !3767)
!3772 = !DILocation(line: 1763, column: 16, scope: !3756)
!3773 = !DILocation(line: 1764, column: 40, scope: !3774)
!3774 = distinct !DILexicalBlock(scope: !3767, file: !65, line: 1763, column: 53)
!3775 = !DILocation(line: 1764, column: 25, scope: !3774)
!3776 = !DILocation(line: 1764, column: 7, scope: !3774)
!3777 = !DILocation(line: 1765, column: 6, scope: !3774)
!3778 = !DILocation(line: 1765, column: 17, scope: !3779)
!3779 = distinct !DILexicalBlock(scope: !3767, file: !65, line: 1765, column: 16)
!3780 = !DILocation(line: 1765, column: 21, scope: !3779)
!3781 = !DILocation(line: 1765, column: 26, scope: !3779)
!3782 = !DILocation(line: 1765, column: 30, scope: !3779)
!3783 = !DILocation(line: 1765, column: 31, scope: !3779)
!3784 = !DILocation(line: 1765, column: 16, scope: !3767)
!3785 = !DILocation(line: 1766, column: 40, scope: !3786)
!3786 = distinct !DILexicalBlock(scope: !3779, file: !65, line: 1765, column: 46)
!3787 = !DILocation(line: 1766, column: 25, scope: !3786)
!3788 = !DILocation(line: 1766, column: 7, scope: !3786)
!3789 = !DILocation(line: 1767, column: 6, scope: !3786)
!3790 = !DILocation(line: 1767, column: 17, scope: !3791)
!3791 = distinct !DILexicalBlock(scope: !3779, file: !65, line: 1767, column: 16)
!3792 = !DILocation(line: 1767, column: 21, scope: !3791)
!3793 = !DILocation(line: 1767, column: 26, scope: !3791)
!3794 = !DILocation(line: 1767, column: 30, scope: !3791)
!3795 = !DILocation(line: 1767, column: 31, scope: !3791)
!3796 = !DILocation(line: 1767, column: 16, scope: !3779)
!3797 = !DILocation(line: 1768, column: 37, scope: !3798)
!3798 = distinct !DILexicalBlock(scope: !3791, file: !65, line: 1767, column: 50)
!3799 = !DILocation(line: 1768, column: 22, scope: !3798)
!3800 = !DILocation(line: 1768, column: 7, scope: !3798)
!3801 = !DILocation(line: 1769, column: 6, scope: !3798)
!3802 = !DILocation(line: 1769, column: 18, scope: !3803)
!3803 = distinct !DILexicalBlock(scope: !3791, file: !65, line: 1769, column: 17)
!3804 = !DILocation(line: 1769, column: 22, scope: !3803)
!3805 = !DILocation(line: 1769, column: 27, scope: !3803)
!3806 = !DILocation(line: 1769, column: 31, scope: !3803)
!3807 = !DILocation(line: 1769, column: 32, scope: !3803)
!3808 = !DILocation(line: 1769, column: 17, scope: !3791)
!3809 = !DILocation(line: 1770, column: 35, scope: !3810)
!3810 = distinct !DILexicalBlock(scope: !3803, file: !65, line: 1769, column: 58)
!3811 = !DILocation(line: 1771, column: 6, scope: !3810)
!3812 = !DILocation(line: 1771, column: 18, scope: !3813)
!3813 = distinct !DILexicalBlock(scope: !3803, file: !65, line: 1771, column: 17)
!3814 = !DILocation(line: 1771, column: 22, scope: !3813)
!3815 = !DILocation(line: 1771, column: 27, scope: !3813)
!3816 = !DILocation(line: 1771, column: 31, scope: !3813)
!3817 = !DILocation(line: 1771, column: 32, scope: !3813)
!3818 = !DILocation(line: 1771, column: 17, scope: !3803)
!3819 = !DILocation(line: 1772, column: 37, scope: !3820)
!3820 = distinct !DILexicalBlock(scope: !3813, file: !65, line: 1771, column: 65)
!3821 = !DILocation(line: 1772, column: 7, scope: !3820)
!3822 = !DILocation(line: 1773, column: 6, scope: !3820)
!3823 = !DILocation(line: 1773, column: 17, scope: !3824)
!3824 = distinct !DILexicalBlock(scope: !3813, file: !65, line: 1773, column: 16)
!3825 = !DILocation(line: 1773, column: 22, scope: !3824)
!3826 = !DILocation(line: 1773, column: 28, scope: !3824)
!3827 = !DILocation(line: 1773, column: 32, scope: !3824)
!3828 = !DILocation(line: 1773, column: 34, scope: !3824)
!3829 = !DILocation(line: 1773, column: 16, scope: !3813)
!3830 = !DILocation(line: 1774, column: 18, scope: !3831)
!3831 = distinct !DILexicalBlock(scope: !3824, file: !65, line: 1773, column: 43)
!3832 = !DILocation(line: 1774, column: 21, scope: !3831)
!3833 = !DILocation(line: 1774, column: 7, scope: !3831)
!3834 = !DILocation(line: 1775, column: 6, scope: !3831)
!3835 = !DILocation(line: 1775, column: 17, scope: !3836)
!3836 = distinct !DILexicalBlock(scope: !3824, file: !65, line: 1775, column: 16)
!3837 = !DILocation(line: 1775, column: 22, scope: !3836)
!3838 = !DILocation(line: 1775, column: 28, scope: !3836)
!3839 = !DILocation(line: 1775, column: 32, scope: !3836)
!3840 = !DILocation(line: 1775, column: 34, scope: !3836)
!3841 = !DILocation(line: 1775, column: 16, scope: !3824)
!3842 = !DILocation(line: 1776, column: 18, scope: !3843)
!3843 = distinct !DILexicalBlock(scope: !3836, file: !65, line: 1775, column: 43)
!3844 = !DILocation(line: 1776, column: 21, scope: !3843)
!3845 = !DILocation(line: 1776, column: 7, scope: !3843)
!3846 = !DILocation(line: 1777, column: 6, scope: !3843)
!3847 = !DILocation(line: 1778, column: 10, scope: !3848)
!3848 = distinct !DILexicalBlock(scope: !3731, file: !65, line: 1778, column: 10)
!3849 = !DILocation(line: 1778, column: 12, scope: !3848)
!3850 = !DILocation(line: 1778, column: 17, scope: !3848)
!3851 = !DILocation(line: 1778, column: 22, scope: !3848)
!3852 = !DILocation(line: 1778, column: 10, scope: !3731)
!3853 = !DILocation(line: 1779, column: 111, scope: !3854)
!3854 = distinct !DILexicalBlock(scope: !3848, file: !65, line: 1778, column: 29)
!3855 = !DILocation(line: 1779, column: 7, scope: !3854)
!3856 = !DILocation(line: 1780, column: 6, scope: !3854)
!3857 = !DILocation(line: 1782, column: 5, scope: !3731)
!3858 = !DILocation(line: 1740, column: 4, scope: !3688)
!3859 = !DILocation(line: 1785, column: 11, scope: !3678)
!3860 = !DILocation(line: 1785, column: 4, scope: !3678)
!3861 = !DILocation(line: 1787, column: 3, scope: !3678)
!3862 = !DILocation(line: 1788, column: 4, scope: !3675)
!3863 = !DILocation(line: 1791, column: 7, scope: !3864)
!3864 = distinct !DILexicalBlock(scope: !3660, file: !65, line: 1791, column: 7)
!3865 = !DILocation(line: 1791, column: 7, scope: !3660)
!3866 = !DILocation(line: 1792, column: 9, scope: !3867)
!3867 = distinct !DILexicalBlock(scope: !3864, file: !65, line: 1791, column: 33)
!3868 = !DILocation(line: 1792, column: 4, scope: !3867)
!3869 = !DILocation(line: 1793, column: 29, scope: !3867)
!3870 = !DILocation(line: 1794, column: 3, scope: !3867)
!3871 = !DILocation(line: 1795, column: 2, scope: !3660)
!3872 = !DILocation(line: 1796, column: 1, scope: !1426)
!3873 = distinct !DISubprogram(name: "set_option", scope: !65, file: !65, line: 1171, type: !3874, scopeLine: 1172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !1429)
!3874 = !DISubroutineType(types: !3875)
!3875 = !{null, !31, !459}
!3876 = !DILocalVariable(name: "c", arg: 1, scope: !3873, file: !65, line: 1171, type: !31)
!3877 = !DILocation(line: 1171, column: 28, scope: !3873)
!3878 = !DILocalVariable(name: "value", arg: 2, scope: !3873, file: !65, line: 1171, type: !459)
!3879 = !DILocation(line: 1171, column: 37, scope: !3873)
!3880 = !DILocation(line: 1173, column: 6, scope: !3881)
!3881 = distinct !DILexicalBlock(scope: !3873, file: !65, line: 1173, column: 6)
!3882 = !DILocation(line: 1173, column: 12, scope: !3881)
!3883 = !DILocation(line: 1173, column: 15, scope: !3881)
!3884 = !DILocation(line: 1173, column: 23, scope: !3881)
!3885 = !DILocation(line: 1173, column: 6, scope: !3873)
!3886 = !DILocation(line: 1174, column: 271, scope: !3887)
!3887 = distinct !DILexicalBlock(scope: !3881, file: !65, line: 1173, column: 30)
!3888 = !DILocation(line: 1174, column: 265, scope: !3887)
!3889 = !DILocation(line: 1174, column: 279, scope: !3887)
!3890 = !DILocation(line: 1174, column: 273, scope: !3887)
!3891 = !DILocation(line: 1174, column: 5, scope: !3887)
!3892 = !DILocation(line: 1175, column: 3, scope: !3887)
!3893 = !DILocation(line: 1177, column: 11, scope: !3873)
!3894 = !DILocation(line: 1177, column: 3, scope: !3873)
!3895 = !DILocation(line: 1179, column: 22, scope: !3896)
!3896 = distinct !DILexicalBlock(scope: !3897, file: !65, line: 1179, column: 7)
!3897 = distinct !DILexicalBlock(scope: !3873, file: !65, line: 1177, column: 14)
!3898 = !DILocation(line: 1179, column: 7, scope: !3896)
!3899 = !DILocation(line: 1179, column: 7, scope: !3897)
!3900 = !DILocation(line: 1180, column: 50, scope: !3896)
!3901 = !DILocation(line: 1180, column: 4, scope: !3896)
!3902 = !DILocation(line: 1181, column: 3, scope: !3897)
!3903 = !DILocation(line: 1183, column: 7, scope: !3904)
!3904 = distinct !DILexicalBlock(scope: !3897, file: !65, line: 1183, column: 7)
!3905 = !DILocation(line: 1183, column: 13, scope: !3904)
!3906 = !DILocation(line: 1183, column: 23, scope: !3904)
!3907 = !DILocation(line: 1183, column: 16, scope: !3904)
!3908 = !DILocation(line: 1183, column: 30, scope: !3904)
!3909 = !DILocation(line: 1183, column: 7, scope: !3897)
!3910 = !DILocation(line: 1184, column: 8, scope: !3911)
!3911 = distinct !DILexicalBlock(scope: !3912, file: !65, line: 1184, column: 7)
!3912 = distinct !DILexicalBlock(scope: !3904, file: !65, line: 1183, column: 35)
!3913 = !DILocation(line: 1184, column: 7, scope: !3911)
!3914 = !DILocation(line: 1184, column: 14, scope: !3911)
!3915 = !DILocation(line: 1184, column: 7, scope: !3912)
!3916 = !DILocation(line: 1184, column: 22, scope: !3911)
!3917 = !DILocation(line: 1185, column: 16, scope: !3918)
!3918 = distinct !DILexicalBlock(scope: !3912, file: !65, line: 1185, column: 8)
!3919 = !DILocation(line: 1185, column: 9, scope: !3918)
!3920 = !DILocation(line: 1185, column: 8, scope: !3912)
!3921 = !DILocation(line: 1186, column: 51, scope: !3922)
!3922 = distinct !DILexicalBlock(scope: !3918, file: !65, line: 1185, column: 32)
!3923 = !DILocation(line: 1187, column: 4, scope: !3922)
!3924 = !DILocation(line: 1187, column: 23, scope: !3925)
!3925 = distinct !DILexicalBlock(scope: !3918, file: !65, line: 1187, column: 15)
!3926 = !DILocation(line: 1187, column: 16, scope: !3925)
!3927 = !DILocation(line: 1187, column: 15, scope: !3918)
!3928 = !DILocation(line: 1188, column: 51, scope: !3929)
!3929 = distinct !DILexicalBlock(scope: !3925, file: !65, line: 1187, column: 38)
!3930 = !DILocation(line: 1189, column: 4, scope: !3929)
!3931 = !DILocation(line: 1189, column: 23, scope: !3932)
!3932 = distinct !DILexicalBlock(scope: !3925, file: !65, line: 1189, column: 15)
!3933 = !DILocation(line: 1189, column: 16, scope: !3932)
!3934 = !DILocation(line: 1189, column: 15, scope: !3925)
!3935 = !DILocation(line: 1190, column: 51, scope: !3936)
!3936 = distinct !DILexicalBlock(scope: !3932, file: !65, line: 1189, column: 39)
!3937 = !DILocation(line: 1191, column: 4, scope: !3936)
!3938 = !DILocation(line: 1192, column: 5, scope: !3939)
!3939 = distinct !DILexicalBlock(scope: !3932, file: !65, line: 1191, column: 11)
!3940 = !DILocation(line: 1194, column: 3, scope: !3912)
!3941 = !DILocation(line: 1195, column: 4, scope: !3942)
!3942 = distinct !DILexicalBlock(scope: !3904, file: !65, line: 1194, column: 10)
!3943 = !DILocation(line: 1197, column: 3, scope: !3897)
!3944 = !DILocation(line: 1199, column: 4, scope: !3897)
!3945 = !DILocation(line: 1199, column: 4, scope: !3946)
!3946 = distinct !DILexicalBlock(scope: !3947, file: !65, line: 1199, column: 4)
!3947 = distinct !DILexicalBlock(scope: !3897, file: !65, line: 1199, column: 4)
!3948 = !DILocation(line: 1199, column: 4, scope: !3947)
!3949 = !DILocalVariable(name: "szdst", scope: !3950, file: !65, line: 1199, type: !673)
!3950 = distinct !DILexicalBlock(scope: !3951, file: !65, line: 1199, column: 4)
!3951 = distinct !DILexicalBlock(scope: !3952, file: !65, line: 1199, column: 4)
!3952 = distinct !DILexicalBlock(scope: !3946, file: !65, line: 1199, column: 4)
!3953 = !DILocation(line: 1199, column: 4, scope: !3950)
!3954 = !DILocation(line: 1199, column: 4, scope: !3952)
!3955 = !DILocation(line: 1200, column: 4, scope: !3897)
!3956 = !DILocation(line: 1205, column: 40, scope: !3957)
!3957 = distinct !DILexicalBlock(scope: !3958, file: !65, line: 1204, column: 11)
!3958 = distinct !DILexicalBlock(scope: !3897, file: !65, line: 1202, column: 8)
!3959 = !DILocation(line: 1205, column: 25, scope: !3957)
!3960 = !DILocation(line: 1205, column: 23, scope: !3957)
!3961 = !DILocation(line: 1207, column: 4, scope: !3897)
!3962 = !DILocation(line: 1210, column: 4, scope: !3897)
!3963 = !DILocation(line: 1213, column: 4, scope: !3897)
!3964 = !DILocation(line: 1215, column: 42, scope: !3897)
!3965 = !DILocation(line: 1215, column: 27, scope: !3897)
!3966 = !DILocation(line: 1215, column: 25, scope: !3897)
!3967 = !DILocation(line: 1216, column: 4, scope: !3897)
!3968 = !DILocation(line: 1218, column: 44, scope: !3897)
!3969 = !DILocation(line: 1218, column: 29, scope: !3897)
!3970 = !DILocation(line: 1218, column: 27, scope: !3897)
!3971 = !DILocation(line: 1219, column: 4, scope: !3897)
!3972 = !DILocation(line: 1221, column: 44, scope: !3897)
!3973 = !DILocation(line: 1221, column: 29, scope: !3897)
!3974 = !DILocation(line: 1221, column: 27, scope: !3897)
!3975 = !DILocation(line: 1222, column: 4, scope: !3897)
!3976 = !DILocalVariable(name: "ne", scope: !3977, file: !65, line: 1225, type: !31)
!3977 = distinct !DILexicalBlock(scope: !3897, file: !65, line: 1224, column: 3)
!3978 = !DILocation(line: 1225, column: 8, scope: !3977)
!3979 = !DILocation(line: 1225, column: 18, scope: !3977)
!3980 = !DILocation(line: 1225, column: 13, scope: !3977)
!3981 = !DILocation(line: 1226, column: 8, scope: !3982)
!3982 = distinct !DILexicalBlock(scope: !3977, file: !65, line: 1226, column: 7)
!3983 = !DILocation(line: 1226, column: 10, scope: !3982)
!3984 = !DILocation(line: 1226, column: 24, scope: !3982)
!3985 = !DILocation(line: 1226, column: 27, scope: !3982)
!3986 = !DILocation(line: 1226, column: 29, scope: !3982)
!3987 = !DILocation(line: 1226, column: 7, scope: !3977)
!3988 = !DILocation(line: 1227, column: 92, scope: !3989)
!3989 = distinct !DILexicalBlock(scope: !3982, file: !65, line: 1226, column: 45)
!3990 = !DILocation(line: 1227, column: 5, scope: !3989)
!3991 = !DILocation(line: 1228, column: 4, scope: !3989)
!3992 = !DILocation(line: 1229, column: 54, scope: !3977)
!3993 = !DILocation(line: 1229, column: 35, scope: !3977)
!3994 = !DILocation(line: 1231, column: 4, scope: !3897)
!3995 = !DILocation(line: 1233, column: 22, scope: !3996)
!3996 = distinct !DILexicalBlock(scope: !3897, file: !65, line: 1233, column: 7)
!3997 = !DILocation(line: 1233, column: 7, scope: !3996)
!3998 = !DILocation(line: 1233, column: 7, scope: !3897)
!3999 = !DILocation(line: 1234, column: 29, scope: !3996)
!4000 = !DILocation(line: 1234, column: 5, scope: !3996)
!4001 = !DILocation(line: 1235, column: 4, scope: !3897)
!4002 = !DILocation(line: 1237, column: 22, scope: !4003)
!4003 = distinct !DILexicalBlock(scope: !3897, file: !65, line: 1237, column: 7)
!4004 = !DILocation(line: 1237, column: 7, scope: !4003)
!4005 = !DILocation(line: 1237, column: 7, scope: !3897)
!4006 = !DILocation(line: 1238, column: 29, scope: !4003)
!4007 = !DILocation(line: 1238, column: 5, scope: !4003)
!4008 = !DILocation(line: 1239, column: 4, scope: !3897)
!4009 = !DILocation(line: 1241, column: 4, scope: !3897)
!4010 = !DILocation(line: 1241, column: 4, scope: !4011)
!4011 = distinct !DILexicalBlock(scope: !4012, file: !65, line: 1241, column: 4)
!4012 = distinct !DILexicalBlock(scope: !3897, file: !65, line: 1241, column: 4)
!4013 = !DILocation(line: 1241, column: 4, scope: !4012)
!4014 = !DILocalVariable(name: "szdst", scope: !4015, file: !65, line: 1241, type: !673)
!4015 = distinct !DILexicalBlock(scope: !4016, file: !65, line: 1241, column: 4)
!4016 = distinct !DILexicalBlock(scope: !4017, file: !65, line: 1241, column: 4)
!4017 = distinct !DILexicalBlock(scope: !4011, file: !65, line: 1241, column: 4)
!4018 = !DILocation(line: 1241, column: 4, scope: !4015)
!4019 = !DILocation(line: 1241, column: 4, scope: !4017)
!4020 = !DILocation(line: 1242, column: 4, scope: !3897)
!4021 = !DILocation(line: 1244, column: 35, scope: !3897)
!4022 = !DILocation(line: 1244, column: 30, scope: !3897)
!4023 = !DILocation(line: 1244, column: 28, scope: !3897)
!4024 = !DILocation(line: 1245, column: 4, scope: !3897)
!4025 = !DILocation(line: 1247, column: 46, scope: !3897)
!4026 = !DILocation(line: 1247, column: 31, scope: !3897)
!4027 = !DILocation(line: 1247, column: 29, scope: !3897)
!4028 = !DILocation(line: 1248, column: 4, scope: !3897)
!4029 = !DILocation(line: 1250, column: 42, scope: !3897)
!4030 = !DILocation(line: 1250, column: 27, scope: !3897)
!4031 = !DILocation(line: 1250, column: 25, scope: !3897)
!4032 = !DILocation(line: 1251, column: 4, scope: !3897)
!4033 = !DILocation(line: 1253, column: 30, scope: !3897)
!4034 = !DILocation(line: 1253, column: 15, scope: !3897)
!4035 = !DILocation(line: 1253, column: 14, scope: !3897)
!4036 = !DILocation(line: 1253, column: 12, scope: !3897)
!4037 = !DILocation(line: 1254, column: 4, scope: !3897)
!4038 = !DILocation(line: 1256, column: 37, scope: !4039)
!4039 = distinct !DILexicalBlock(scope: !3897, file: !65, line: 1256, column: 7)
!4040 = !DILocation(line: 1256, column: 7, scope: !4039)
!4041 = !DILocation(line: 1256, column: 55, scope: !4039)
!4042 = !DILocation(line: 1256, column: 7, scope: !3897)
!4043 = !DILocation(line: 1257, column: 71, scope: !4044)
!4044 = distinct !DILexicalBlock(scope: !4039, file: !65, line: 1256, column: 59)
!4045 = !DILocation(line: 1257, column: 5, scope: !4044)
!4046 = !DILocation(line: 1258, column: 4, scope: !4044)
!4047 = !DILocation(line: 1259, column: 18, scope: !4048)
!4048 = distinct !DILexicalBlock(scope: !4039, file: !65, line: 1258, column: 10)
!4049 = !DILocation(line: 1261, column: 4, scope: !3897)
!4050 = !DILocation(line: 1263, column: 20, scope: !3897)
!4051 = !DILocation(line: 1263, column: 15, scope: !3897)
!4052 = !DILocation(line: 1263, column: 13, scope: !3897)
!4053 = !DILocation(line: 1264, column: 4, scope: !3897)
!4054 = !DILocation(line: 1266, column: 4, scope: !3897)
!4055 = !DILocation(line: 1266, column: 4, scope: !4056)
!4056 = distinct !DILexicalBlock(scope: !4057, file: !65, line: 1266, column: 4)
!4057 = distinct !DILexicalBlock(scope: !3897, file: !65, line: 1266, column: 4)
!4058 = !DILocation(line: 1266, column: 4, scope: !4057)
!4059 = !DILocalVariable(name: "szdst", scope: !4060, file: !65, line: 1266, type: !673)
!4060 = distinct !DILexicalBlock(scope: !4061, file: !65, line: 1266, column: 4)
!4061 = distinct !DILexicalBlock(scope: !4062, file: !65, line: 1266, column: 4)
!4062 = distinct !DILexicalBlock(scope: !4056, file: !65, line: 1266, column: 4)
!4063 = !DILocation(line: 1266, column: 4, scope: !4060)
!4064 = !DILocation(line: 1266, column: 4, scope: !4062)
!4065 = !DILocation(line: 1267, column: 4, scope: !3897)
!4066 = !DILocation(line: 1269, column: 35, scope: !3897)
!4067 = !DILocation(line: 1269, column: 20, scope: !3897)
!4068 = !DILocation(line: 1269, column: 18, scope: !3897)
!4069 = !DILocation(line: 1270, column: 4, scope: !3897)
!4070 = !DILocation(line: 1272, column: 37, scope: !4071)
!4071 = distinct !DILexicalBlock(scope: !3897, file: !65, line: 1272, column: 7)
!4072 = !DILocation(line: 1272, column: 7, scope: !4071)
!4073 = !DILocation(line: 1272, column: 64, scope: !4071)
!4074 = !DILocation(line: 1272, column: 7, scope: !3897)
!4075 = !DILocation(line: 1273, column: 79, scope: !4076)
!4076 = distinct !DILexicalBlock(scope: !4071, file: !65, line: 1272, column: 69)
!4077 = !DILocation(line: 1273, column: 5, scope: !4076)
!4078 = !DILocation(line: 1274, column: 4, scope: !4076)
!4079 = !DILocation(line: 1275, column: 24, scope: !4080)
!4080 = distinct !DILexicalBlock(scope: !4071, file: !65, line: 1274, column: 11)
!4081 = !DILocation(line: 1277, column: 4, scope: !3897)
!4082 = !DILocation(line: 1279, column: 26, scope: !3897)
!4083 = !DILocation(line: 1279, column: 21, scope: !3897)
!4084 = !DILocation(line: 1279, column: 19, scope: !3897)
!4085 = !DILocation(line: 1280, column: 4, scope: !3897)
!4086 = !DILocation(line: 1282, column: 61, scope: !3897)
!4087 = !DILocation(line: 1282, column: 46, scope: !3897)
!4088 = !DILocation(line: 1282, column: 44, scope: !3897)
!4089 = !DILocation(line: 1283, column: 4, scope: !3897)
!4090 = !DILocalVariable(name: "pwd", scope: !4091, file: !65, line: 1285, type: !4092)
!4091 = distinct !DILexicalBlock(scope: !3897, file: !65, line: 1284, column: 23)
!4092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4093, size: 64)
!4093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !4094, line: 49, size: 384, elements: !4095)
!4094 = !DIFile(filename: "/usr/include/pwd.h", directory: "", checksumkind: CSK_MD5, checksum: "6682d47abdfe13134f841d46e0eadc7b")
!4095 = !{!4096, !4097, !4098, !4099, !4100, !4101, !4102}
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !4093, file: !4094, line: 51, baseType: !459, size: 64)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !4093, file: !4094, line: 52, baseType: !459, size: 64, offset: 64)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !4093, file: !4094, line: 54, baseType: !1522, size: 32, offset: 128)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !4093, file: !4094, line: 55, baseType: !1530, size: 32, offset: 160)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !4093, file: !4094, line: 56, baseType: !459, size: 64, offset: 192)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !4093, file: !4094, line: 57, baseType: !459, size: 64, offset: 256)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !4093, file: !4094, line: 58, baseType: !459, size: 64, offset: 320)
!4103 = !DILocation(line: 1285, column: 19, scope: !4091)
!4104 = !DILocation(line: 1285, column: 34, scope: !4091)
!4105 = !DILocation(line: 1285, column: 25, scope: !4091)
!4106 = !DILocation(line: 1286, column: 8, scope: !4107)
!4107 = distinct !DILexicalBlock(scope: !4091, file: !65, line: 1286, column: 7)
!4108 = !DILocation(line: 1286, column: 7, scope: !4091)
!4109 = !DILocation(line: 1287, column: 67, scope: !4110)
!4110 = distinct !DILexicalBlock(scope: !4107, file: !65, line: 1286, column: 13)
!4111 = !DILocation(line: 1287, column: 5, scope: !4110)
!4112 = !DILocation(line: 1288, column: 5, scope: !4110)
!4113 = !DILocation(line: 1290, column: 18, scope: !4114)
!4114 = distinct !DILexicalBlock(scope: !4107, file: !65, line: 1289, column: 11)
!4115 = !DILocation(line: 1290, column: 23, scope: !4114)
!4116 = !DILocation(line: 1290, column: 16, scope: !4114)
!4117 = !DILocation(line: 1291, column: 20, scope: !4114)
!4118 = !DILocation(line: 1292, column: 5, scope: !4114)
!4119 = !DILocation(line: 1292, column: 5, scope: !4120)
!4120 = distinct !DILexicalBlock(scope: !4121, file: !65, line: 1292, column: 5)
!4121 = distinct !DILexicalBlock(scope: !4114, file: !65, line: 1292, column: 5)
!4122 = !DILocation(line: 1292, column: 5, scope: !4121)
!4123 = !DILocalVariable(name: "szdst", scope: !4124, file: !65, line: 1292, type: !673)
!4124 = distinct !DILexicalBlock(scope: !4125, file: !65, line: 1292, column: 5)
!4125 = distinct !DILexicalBlock(scope: !4126, file: !65, line: 1292, column: 5)
!4126 = distinct !DILexicalBlock(scope: !4120, file: !65, line: 1292, column: 5)
!4127 = !DILocation(line: 1292, column: 5, scope: !4124)
!4128 = !DILocation(line: 1292, column: 5, scope: !4126)
!4129 = !DILocation(line: 1295, column: 3, scope: !3897)
!4130 = !DILocalVariable(name: "gr", scope: !4131, file: !65, line: 1297, type: !4132)
!4131 = distinct !DILexicalBlock(scope: !3897, file: !65, line: 1296, column: 23)
!4132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4133, size: 64)
!4133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group", file: !4134, line: 42, size: 256, elements: !4135)
!4134 = !DIFile(filename: "/usr/include/grp.h", directory: "", checksumkind: CSK_MD5, checksum: "17838c4acd24e08e5bed6821e9e2c084")
!4135 = !{!4136, !4137, !4138, !4139}
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "gr_name", scope: !4133, file: !4134, line: 44, baseType: !459, size: 64)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "gr_passwd", scope: !4133, file: !4134, line: 45, baseType: !459, size: 64, offset: 64)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "gr_gid", scope: !4133, file: !4134, line: 46, baseType: !1530, size: 32, offset: 128)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "gr_mem", scope: !4133, file: !4134, line: 47, baseType: !716, size: 64, offset: 192)
!4140 = !DILocation(line: 1297, column: 17, scope: !4131)
!4141 = !DILocation(line: 1297, column: 31, scope: !4131)
!4142 = !DILocation(line: 1297, column: 22, scope: !4131)
!4143 = !DILocation(line: 1298, column: 7, scope: !4144)
!4144 = distinct !DILexicalBlock(scope: !4131, file: !65, line: 1298, column: 6)
!4145 = !DILocation(line: 1298, column: 6, scope: !4131)
!4146 = !DILocation(line: 1299, column: 67, scope: !4147)
!4147 = distinct !DILexicalBlock(scope: !4144, file: !65, line: 1298, column: 11)
!4148 = !DILocation(line: 1299, column: 4, scope: !4147)
!4149 = !DILocation(line: 1300, column: 4, scope: !4147)
!4150 = !DILocation(line: 1302, column: 18, scope: !4151)
!4151 = distinct !DILexicalBlock(scope: !4144, file: !65, line: 1301, column: 10)
!4152 = !DILocation(line: 1302, column: 22, scope: !4151)
!4153 = !DILocation(line: 1302, column: 16, scope: !4151)
!4154 = !DILocation(line: 1303, column: 20, scope: !4151)
!4155 = !DILocation(line: 1304, column: 4, scope: !4151)
!4156 = !DILocation(line: 1304, column: 4, scope: !4157)
!4157 = distinct !DILexicalBlock(scope: !4158, file: !65, line: 1304, column: 4)
!4158 = distinct !DILexicalBlock(scope: !4151, file: !65, line: 1304, column: 4)
!4159 = !DILocation(line: 1304, column: 4, scope: !4158)
!4160 = !DILocalVariable(name: "szdst", scope: !4161, file: !65, line: 1304, type: !673)
!4161 = distinct !DILexicalBlock(scope: !4162, file: !65, line: 1304, column: 4)
!4162 = distinct !DILexicalBlock(scope: !4163, file: !65, line: 1304, column: 4)
!4163 = distinct !DILexicalBlock(scope: !4157, file: !65, line: 1304, column: 4)
!4164 = !DILocation(line: 1304, column: 4, scope: !4161)
!4165 = !DILocation(line: 1304, column: 4, scope: !4163)
!4166 = !DILocation(line: 1307, column: 2, scope: !3897)
!4167 = !DILocation(line: 1309, column: 3, scope: !3897)
!4168 = !DILocation(line: 1309, column: 3, scope: !4169)
!4169 = distinct !DILexicalBlock(scope: !4170, file: !65, line: 1309, column: 3)
!4170 = distinct !DILexicalBlock(scope: !3897, file: !65, line: 1309, column: 3)
!4171 = !DILocation(line: 1309, column: 3, scope: !4170)
!4172 = !DILocalVariable(name: "szdst", scope: !4173, file: !65, line: 1309, type: !673)
!4173 = distinct !DILexicalBlock(scope: !4174, file: !65, line: 1309, column: 3)
!4174 = distinct !DILexicalBlock(scope: !4175, file: !65, line: 1309, column: 3)
!4175 = distinct !DILexicalBlock(scope: !4169, file: !65, line: 1309, column: 3)
!4176 = !DILocation(line: 1309, column: 3, scope: !4173)
!4177 = !DILocation(line: 1309, column: 3, scope: !4175)
!4178 = !DILocation(line: 1310, column: 3, scope: !3897)
!4179 = !DILocation(line: 1313, column: 11, scope: !4180)
!4180 = distinct !DILexicalBlock(scope: !3897, file: !65, line: 1313, column: 6)
!4181 = !DILocation(line: 1313, column: 6, scope: !4180)
!4182 = !DILocation(line: 1313, column: 17, scope: !4180)
!4183 = !DILocation(line: 1313, column: 6, scope: !3897)
!4184 = !DILocation(line: 1314, column: 4, scope: !4185)
!4185 = distinct !DILexicalBlock(scope: !4180, file: !65, line: 1313, column: 55)
!4186 = !DILocation(line: 1315, column: 45, scope: !4185)
!4187 = !DILocation(line: 1316, column: 3, scope: !4185)
!4188 = !DILocation(line: 1316, column: 18, scope: !4189)
!4189 = distinct !DILexicalBlock(scope: !4180, file: !65, line: 1316, column: 13)
!4190 = !DILocation(line: 1316, column: 13, scope: !4189)
!4191 = !DILocation(line: 1316, column: 24, scope: !4189)
!4192 = !DILocation(line: 1316, column: 13, scope: !4180)
!4193 = !DILocation(line: 1317, column: 45, scope: !4194)
!4194 = distinct !DILexicalBlock(scope: !4189, file: !65, line: 1316, column: 29)
!4195 = !DILocation(line: 1318, column: 3, scope: !4194)
!4196 = !DILocation(line: 1319, column: 52, scope: !4197)
!4197 = distinct !DILexicalBlock(scope: !4189, file: !65, line: 1318, column: 10)
!4198 = !DILocation(line: 1319, column: 47, scope: !4197)
!4199 = !DILocation(line: 1319, column: 45, scope: !4197)
!4200 = !DILocation(line: 1324, column: 3, scope: !3897)
!4201 = !DILocation(line: 1326, column: 3, scope: !3897)
!4202 = !DILocation(line: 1326, column: 3, scope: !4203)
!4203 = distinct !DILexicalBlock(scope: !4204, file: !65, line: 1326, column: 3)
!4204 = distinct !DILexicalBlock(scope: !3897, file: !65, line: 1326, column: 3)
!4205 = !DILocation(line: 1326, column: 3, scope: !4204)
!4206 = !DILocalVariable(name: "szdst", scope: !4207, file: !65, line: 1326, type: !673)
!4207 = distinct !DILexicalBlock(scope: !4208, file: !65, line: 1326, column: 3)
!4208 = distinct !DILexicalBlock(scope: !4209, file: !65, line: 1326, column: 3)
!4209 = distinct !DILexicalBlock(scope: !4203, file: !65, line: 1326, column: 3)
!4210 = !DILocation(line: 1326, column: 3, scope: !4207)
!4211 = !DILocation(line: 1326, column: 3, scope: !4209)
!4212 = !DILocation(line: 1327, column: 3, scope: !3897)
!4213 = !DILocation(line: 1329, column: 36, scope: !3897)
!4214 = !DILocation(line: 1329, column: 31, scope: !3897)
!4215 = !DILocation(line: 1329, column: 29, scope: !3897)
!4216 = !DILocation(line: 1330, column: 3, scope: !3897)
!4217 = !DILocation(line: 1332, column: 40, scope: !3897)
!4218 = !DILocation(line: 1332, column: 35, scope: !3897)
!4219 = !DILocation(line: 1332, column: 33, scope: !3897)
!4220 = !DILocation(line: 1333, column: 3, scope: !3897)
!4221 = !DILocation(line: 1335, column: 40, scope: !3897)
!4222 = !DILocation(line: 1335, column: 35, scope: !3897)
!4223 = !DILocation(line: 1335, column: 33, scope: !3897)
!4224 = !DILocation(line: 1336, column: 3, scope: !3897)
!4225 = !DILocation(line: 1338, column: 44, scope: !3897)
!4226 = !DILocation(line: 1338, column: 39, scope: !3897)
!4227 = !DILocation(line: 1338, column: 37, scope: !3897)
!4228 = !DILocation(line: 1339, column: 3, scope: !3897)
!4229 = !DILocation(line: 1341, column: 37, scope: !3897)
!4230 = !DILocation(line: 1341, column: 32, scope: !3897)
!4231 = !DILocation(line: 1341, column: 30, scope: !3897)
!4232 = !DILocation(line: 1342, column: 29, scope: !3897)
!4233 = !DILocation(line: 1343, column: 3, scope: !3897)
!4234 = !DILocation(line: 1345, column: 31, scope: !3897)
!4235 = !DILocation(line: 1345, column: 26, scope: !3897)
!4236 = !DILocation(line: 1345, column: 24, scope: !3897)
!4237 = !DILocation(line: 1346, column: 3, scope: !3897)
!4238 = !DILocation(line: 1348, column: 31, scope: !3897)
!4239 = !DILocation(line: 1348, column: 26, scope: !3897)
!4240 = !DILocation(line: 1348, column: 24, scope: !3897)
!4241 = !DILocation(line: 1349, column: 3, scope: !3897)
!4242 = !DILocation(line: 1351, column: 44, scope: !3897)
!4243 = !DILocation(line: 1351, column: 29, scope: !3897)
!4244 = !DILocation(line: 1351, column: 27, scope: !3897)
!4245 = !DILocation(line: 1352, column: 3, scope: !3897)
!4246 = !DILocation(line: 1354, column: 51, scope: !3897)
!4247 = !DILocation(line: 1354, column: 36, scope: !3897)
!4248 = !DILocation(line: 1354, column: 34, scope: !3897)
!4249 = !DILocation(line: 1355, column: 3, scope: !3897)
!4250 = !DILocation(line: 1357, column: 53, scope: !3897)
!4251 = !DILocation(line: 1357, column: 38, scope: !3897)
!4252 = !DILocation(line: 1357, column: 36, scope: !3897)
!4253 = !DILocation(line: 1358, column: 3, scope: !3897)
!4254 = !DILocation(line: 1360, column: 43, scope: !3897)
!4255 = !DILocation(line: 1360, column: 29, scope: !3897)
!4256 = !DILocation(line: 1360, column: 27, scope: !3897)
!4257 = !DILocation(line: 1361, column: 3, scope: !3897)
!4258 = !DILocation(line: 1363, column: 53, scope: !3897)
!4259 = !DILocation(line: 1363, column: 39, scope: !3897)
!4260 = !DILocation(line: 1363, column: 37, scope: !3897)
!4261 = !DILocation(line: 1364, column: 3, scope: !3897)
!4262 = !DILocation(line: 1366, column: 48, scope: !3897)
!4263 = !DILocation(line: 1366, column: 34, scope: !3897)
!4264 = !DILocation(line: 1366, column: 32, scope: !3897)
!4265 = !DILocation(line: 1367, column: 3, scope: !3897)
!4266 = !DILocation(line: 1369, column: 51, scope: !3897)
!4267 = !DILocation(line: 1369, column: 37, scope: !3897)
!4268 = !DILocation(line: 1369, column: 35, scope: !3897)
!4269 = !DILocation(line: 1370, column: 3, scope: !3897)
!4270 = !DILocation(line: 1372, column: 36, scope: !3897)
!4271 = !DILocation(line: 1372, column: 31, scope: !3897)
!4272 = !DILocation(line: 1372, column: 29, scope: !3897)
!4273 = !DILocation(line: 1373, column: 46, scope: !3897)
!4274 = !DILocation(line: 1373, column: 41, scope: !3897)
!4275 = !DILocation(line: 1373, column: 39, scope: !3897)
!4276 = !DILocation(line: 1374, column: 3, scope: !3897)
!4277 = !DILocation(line: 1376, column: 42, scope: !3897)
!4278 = !DILocation(line: 1376, column: 27, scope: !3897)
!4279 = !DILocation(line: 1376, column: 25, scope: !3897)
!4280 = !DILocation(line: 1377, column: 3, scope: !3897)
!4281 = !DILocation(line: 1379, column: 40, scope: !3897)
!4282 = !DILocation(line: 1379, column: 25, scope: !3897)
!4283 = !DILocation(line: 1379, column: 23, scope: !3897)
!4284 = !DILocation(line: 1380, column: 3, scope: !3897)
!4285 = !DILocation(line: 1382, column: 21, scope: !3897)
!4286 = !DILocation(line: 1382, column: 3, scope: !3897)
!4287 = !DILocation(line: 1383, column: 3, scope: !3897)
!4288 = !DILocation(line: 1385, column: 18, scope: !3897)
!4289 = !DILocation(line: 1385, column: 3, scope: !3897)
!4290 = !DILocation(line: 1386, column: 3, scope: !3897)
!4291 = !DILocation(line: 1388, column: 6, scope: !4292)
!4292 = distinct !DILexicalBlock(scope: !3897, file: !65, line: 1388, column: 6)
!4293 = !DILocation(line: 1388, column: 6, scope: !3897)
!4294 = !DILocalVariable(name: "div", scope: !4295, file: !65, line: 1389, type: !459)
!4295 = distinct !DILexicalBlock(scope: !4292, file: !65, line: 1388, column: 13)
!4296 = !DILocation(line: 1389, column: 10, scope: !4295)
!4297 = !DILocation(line: 1389, column: 23, scope: !4295)
!4298 = !DILocation(line: 1389, column: 16, scope: !4295)
!4299 = !DILocation(line: 1390, column: 7, scope: !4300)
!4300 = distinct !DILexicalBlock(scope: !4295, file: !65, line: 1390, column: 7)
!4301 = !DILocation(line: 1390, column: 7, scope: !4295)
!4302 = !DILocalVariable(name: "nval", scope: !4303, file: !65, line: 1391, type: !459)
!4303 = distinct !DILexicalBlock(scope: !4300, file: !65, line: 1390, column: 12)
!4304 = !DILocation(line: 1391, column: 11, scope: !4303)
!4305 = !DILocation(line: 1391, column: 23, scope: !4303)
!4306 = !DILocation(line: 1391, column: 16, scope: !4303)
!4307 = !DILocation(line: 1392, column: 18, scope: !4303)
!4308 = !DILocation(line: 1392, column: 11, scope: !4303)
!4309 = !DILocation(line: 1392, column: 9, scope: !4303)
!4310 = !DILocation(line: 1393, column: 5, scope: !4303)
!4311 = !DILocation(line: 1393, column: 11, scope: !4303)
!4312 = !DILocation(line: 1394, column: 5, scope: !4303)
!4313 = !DILocalVariable(name: "apub", scope: !4303, file: !65, line: 1395, type: !481)
!4314 = !DILocation(line: 1395, column: 14, scope: !4303)
!4315 = !DILocalVariable(name: "apriv", scope: !4303, file: !65, line: 1395, type: !481)
!4316 = !DILocation(line: 1395, column: 19, scope: !4303)
!4317 = !DILocation(line: 1396, column: 38, scope: !4318)
!4318 = distinct !DILexicalBlock(scope: !4303, file: !65, line: 1396, column: 8)
!4319 = !DILocation(line: 1396, column: 8, scope: !4318)
!4320 = !DILocation(line: 1396, column: 51, scope: !4318)
!4321 = !DILocation(line: 1396, column: 8, scope: !4303)
!4322 = !DILocation(line: 1397, column: 75, scope: !4323)
!4323 = distinct !DILexicalBlock(scope: !4318, file: !65, line: 1396, column: 55)
!4324 = !DILocation(line: 1397, column: 6, scope: !4323)
!4325 = !DILocation(line: 1398, column: 5, scope: !4323)
!4326 = !DILocation(line: 1399, column: 39, scope: !4327)
!4327 = distinct !DILexicalBlock(scope: !4328, file: !65, line: 1399, column: 9)
!4328 = distinct !DILexicalBlock(scope: !4318, file: !65, line: 1398, column: 12)
!4329 = !DILocation(line: 1399, column: 9, scope: !4327)
!4330 = !DILocation(line: 1399, column: 52, scope: !4327)
!4331 = !DILocation(line: 1399, column: 9, scope: !4328)
!4332 = !DILocation(line: 1400, column: 76, scope: !4333)
!4333 = distinct !DILexicalBlock(scope: !4327, file: !65, line: 1399, column: 56)
!4334 = !DILocation(line: 1400, column: 7, scope: !4333)
!4335 = !DILocation(line: 1401, column: 6, scope: !4333)
!4336 = !DILocation(line: 1402, column: 7, scope: !4337)
!4337 = distinct !DILexicalBlock(scope: !4327, file: !65, line: 1401, column: 13)
!4338 = !DILocation(line: 1403, column: 43, scope: !4339)
!4339 = distinct !DILexicalBlock(scope: !4337, file: !65, line: 1403, column: 11)
!4340 = !DILocation(line: 1403, column: 11, scope: !4339)
!4341 = !DILocation(line: 1403, column: 81, scope: !4339)
!4342 = !DILocation(line: 1403, column: 11, scope: !4337)
!4343 = !DILocation(line: 1404, column: 90, scope: !4339)
!4344 = !DILocation(line: 1404, column: 8, scope: !4339)
!4345 = !DILocation(line: 1407, column: 10, scope: !4303)
!4346 = !DILocation(line: 1407, column: 5, scope: !4303)
!4347 = !DILocation(line: 1408, column: 4, scope: !4303)
!4348 = !DILocation(line: 1409, column: 20, scope: !4349)
!4349 = distinct !DILexicalBlock(scope: !4350, file: !65, line: 1409, column: 8)
!4350 = distinct !DILexicalBlock(scope: !4300, file: !65, line: 1408, column: 11)
!4351 = !DILocation(line: 1409, column: 8, scope: !4349)
!4352 = !DILocation(line: 1409, column: 8, scope: !4350)
!4353 = !DILocation(line: 1410, column: 6, scope: !4354)
!4354 = distinct !DILexicalBlock(scope: !4349, file: !65, line: 1409, column: 33)
!4355 = !DILocation(line: 1411, column: 5, scope: !4354)
!4356 = !DILocation(line: 1412, column: 43, scope: !4357)
!4357 = distinct !DILexicalBlock(scope: !4349, file: !65, line: 1411, column: 12)
!4358 = !DILocation(line: 1412, column: 30, scope: !4357)
!4359 = !DILocation(line: 1413, column: 39, scope: !4360)
!4360 = distinct !DILexicalBlock(scope: !4357, file: !65, line: 1413, column: 9)
!4361 = !DILocation(line: 1413, column: 59, scope: !4360)
!4362 = !DILocation(line: 1413, column: 9, scope: !4360)
!4363 = !DILocation(line: 1413, column: 71, scope: !4360)
!4364 = !DILocation(line: 1413, column: 9, scope: !4357)
!4365 = !DILocation(line: 1414, column: 76, scope: !4366)
!4366 = distinct !DILexicalBlock(scope: !4360, file: !65, line: 1413, column: 75)
!4367 = !DILocation(line: 1414, column: 7, scope: !4366)
!4368 = !DILocation(line: 1415, column: 24, scope: !4366)
!4369 = !DILocation(line: 1415, column: 7, scope: !4366)
!4370 = !DILocation(line: 1416, column: 31, scope: !4366)
!4371 = !DILocation(line: 1417, column: 6, scope: !4366)
!4372 = !DILocation(line: 1420, column: 3, scope: !4295)
!4373 = !DILocation(line: 1421, column: 3, scope: !3897)
!4374 = !DILocation(line: 1423, column: 18, scope: !4375)
!4375 = distinct !DILexicalBlock(scope: !3897, file: !65, line: 1423, column: 6)
!4376 = !DILocation(line: 1423, column: 26, scope: !4375)
!4377 = !DILocation(line: 1423, column: 6, scope: !3897)
!4378 = !DILocation(line: 1424, column: 22, scope: !4379)
!4379 = distinct !DILexicalBlock(scope: !4380, file: !65, line: 1424, column: 7)
!4380 = distinct !DILexicalBlock(scope: !4375, file: !65, line: 1423, column: 48)
!4381 = !DILocation(line: 1424, column: 7, scope: !4379)
!4382 = !DILocation(line: 1424, column: 7, scope: !4380)
!4383 = !DILocation(line: 1425, column: 25, scope: !4384)
!4384 = distinct !DILexicalBlock(scope: !4379, file: !65, line: 1424, column: 30)
!4385 = !DILocation(line: 1426, column: 4, scope: !4384)
!4386 = !DILocation(line: 1427, column: 25, scope: !4387)
!4387 = distinct !DILexicalBlock(scope: !4379, file: !65, line: 1426, column: 11)
!4388 = !DILocation(line: 1429, column: 3, scope: !4380)
!4389 = !DILocation(line: 1430, column: 3, scope: !3897)
!4390 = !DILocation(line: 1432, column: 21, scope: !4391)
!4391 = distinct !DILexicalBlock(scope: !3897, file: !65, line: 1432, column: 6)
!4392 = !DILocation(line: 1432, column: 6, scope: !4391)
!4393 = !DILocation(line: 1432, column: 6, scope: !3897)
!4394 = !DILocation(line: 1433, column: 24, scope: !4395)
!4395 = distinct !DILexicalBlock(scope: !4391, file: !65, line: 1432, column: 29)
!4396 = !DILocation(line: 1434, column: 3, scope: !4395)
!4397 = !DILocation(line: 1435, column: 3, scope: !3897)
!4398 = !DILocation(line: 1437, column: 44, scope: !3897)
!4399 = !DILocation(line: 1437, column: 29, scope: !3897)
!4400 = !DILocation(line: 1437, column: 27, scope: !3897)
!4401 = !DILocation(line: 1438, column: 3, scope: !3897)
!4402 = !DILocation(line: 1440, column: 22, scope: !4403)
!4403 = distinct !DILexicalBlock(scope: !3897, file: !65, line: 1440, column: 7)
!4404 = !DILocation(line: 1440, column: 7, scope: !4403)
!4405 = !DILocation(line: 1440, column: 7, scope: !3897)
!4406 = !DILocation(line: 1441, column: 19, scope: !4407)
!4407 = distinct !DILexicalBlock(scope: !4403, file: !65, line: 1440, column: 30)
!4408 = !DILocation(line: 1442, column: 22, scope: !4407)
!4409 = !DILocation(line: 1443, column: 20, scope: !4407)
!4410 = !DILocation(line: 1444, column: 3, scope: !4407)
!4411 = !DILocation(line: 1445, column: 19, scope: !4412)
!4412 = distinct !DILexicalBlock(scope: !4403, file: !65, line: 1444, column: 10)
!4413 = !DILocation(line: 1446, column: 22, scope: !4412)
!4414 = !DILocation(line: 1448, column: 3, scope: !3897)
!4415 = !DILocation(line: 1450, column: 23, scope: !4416)
!4416 = distinct !DILexicalBlock(scope: !3897, file: !65, line: 1450, column: 7)
!4417 = !DILocation(line: 1450, column: 8, scope: !4416)
!4418 = !DILocation(line: 1450, column: 7, scope: !3897)
!4419 = !DILocation(line: 1451, column: 19, scope: !4420)
!4420 = distinct !DILexicalBlock(scope: !4416, file: !65, line: 1450, column: 31)
!4421 = !DILocation(line: 1452, column: 21, scope: !4420)
!4422 = !DILocation(line: 1453, column: 3, scope: !4420)
!4423 = !DILocation(line: 1454, column: 19, scope: !4424)
!4424 = distinct !DILexicalBlock(scope: !4416, file: !65, line: 1453, column: 10)
!4425 = !DILocation(line: 1455, column: 21, scope: !4424)
!4426 = !DILocation(line: 1457, column: 3, scope: !3897)
!4427 = !DILocation(line: 1459, column: 54, scope: !3897)
!4428 = !DILocation(line: 1459, column: 39, scope: !3897)
!4429 = !DILocation(line: 1459, column: 37, scope: !3897)
!4430 = !DILocation(line: 1460, column: 3, scope: !3897)
!4431 = !DILocation(line: 1462, column: 44, scope: !3897)
!4432 = !DILocation(line: 1462, column: 29, scope: !3897)
!4433 = !DILocation(line: 1462, column: 27, scope: !3897)
!4434 = !DILocation(line: 1463, column: 3, scope: !3897)
!4435 = !DILocation(line: 1465, column: 27, scope: !3897)
!4436 = !DILocation(line: 1465, column: 3, scope: !3897)
!4437 = !DILocation(line: 1466, column: 3, scope: !3897)
!4438 = !DILocation(line: 1471, column: 3, scope: !3897)
!4439 = !DILocation(line: 1471, column: 3, scope: !4440)
!4440 = distinct !DILexicalBlock(scope: !4441, file: !65, line: 1471, column: 3)
!4441 = distinct !DILexicalBlock(scope: !3897, file: !65, line: 1471, column: 3)
!4442 = !DILocation(line: 1471, column: 3, scope: !4441)
!4443 = !DILocalVariable(name: "szdst", scope: !4444, file: !65, line: 1471, type: !673)
!4444 = distinct !DILexicalBlock(scope: !4445, file: !65, line: 1471, column: 3)
!4445 = distinct !DILexicalBlock(scope: !4446, file: !65, line: 1471, column: 3)
!4446 = distinct !DILexicalBlock(scope: !4440, file: !65, line: 1471, column: 3)
!4447 = !DILocation(line: 1471, column: 3, scope: !4444)
!4448 = !DILocation(line: 1471, column: 3, scope: !4446)
!4449 = !DILocation(line: 1472, column: 44, scope: !3897)
!4450 = !DILocation(line: 1474, column: 3, scope: !3897)
!4451 = !DILocation(line: 1477, column: 3, scope: !3897)
!4452 = !DILocation(line: 1477, column: 3, scope: !4453)
!4453 = distinct !DILexicalBlock(scope: !4454, file: !65, line: 1477, column: 3)
!4454 = distinct !DILexicalBlock(scope: !3897, file: !65, line: 1477, column: 3)
!4455 = !DILocation(line: 1477, column: 3, scope: !4454)
!4456 = !DILocalVariable(name: "szdst", scope: !4457, file: !65, line: 1477, type: !673)
!4457 = distinct !DILexicalBlock(scope: !4458, file: !65, line: 1477, column: 3)
!4458 = distinct !DILexicalBlock(scope: !4459, file: !65, line: 1477, column: 3)
!4459 = distinct !DILexicalBlock(scope: !4453, file: !65, line: 1477, column: 3)
!4460 = !DILocation(line: 1477, column: 3, scope: !4457)
!4461 = !DILocation(line: 1477, column: 3, scope: !4459)
!4462 = !DILocation(line: 1478, column: 44, scope: !3897)
!4463 = !DILocation(line: 1479, column: 3, scope: !3897)
!4464 = !DILocation(line: 1483, column: 3, scope: !3897)
!4465 = !DILocation(line: 1483, column: 3, scope: !4466)
!4466 = distinct !DILexicalBlock(scope: !4467, file: !65, line: 1483, column: 3)
!4467 = distinct !DILexicalBlock(scope: !3897, file: !65, line: 1483, column: 3)
!4468 = !DILocation(line: 1483, column: 3, scope: !4467)
!4469 = !DILocalVariable(name: "szdst", scope: !4470, file: !65, line: 1483, type: !673)
!4470 = distinct !DILexicalBlock(scope: !4471, file: !65, line: 1483, column: 3)
!4471 = distinct !DILexicalBlock(scope: !4472, file: !65, line: 1483, column: 3)
!4472 = distinct !DILexicalBlock(scope: !4466, file: !65, line: 1483, column: 3)
!4473 = !DILocation(line: 1483, column: 3, scope: !4470)
!4474 = !DILocation(line: 1483, column: 3, scope: !4472)
!4475 = !DILocation(line: 1484, column: 44, scope: !3897)
!4476 = !DILocation(line: 1485, column: 3, scope: !3897)
!4477 = !DILocation(line: 1489, column: 3, scope: !3897)
!4478 = !DILocation(line: 1489, column: 3, scope: !4479)
!4479 = distinct !DILexicalBlock(scope: !4480, file: !65, line: 1489, column: 3)
!4480 = distinct !DILexicalBlock(scope: !3897, file: !65, line: 1489, column: 3)
!4481 = !DILocation(line: 1489, column: 3, scope: !4480)
!4482 = !DILocalVariable(name: "szdst", scope: !4483, file: !65, line: 1489, type: !673)
!4483 = distinct !DILexicalBlock(scope: !4484, file: !65, line: 1489, column: 3)
!4484 = distinct !DILexicalBlock(scope: !4485, file: !65, line: 1489, column: 3)
!4485 = distinct !DILexicalBlock(scope: !4479, file: !65, line: 1489, column: 3)
!4486 = !DILocation(line: 1489, column: 3, scope: !4483)
!4487 = !DILocation(line: 1489, column: 3, scope: !4485)
!4488 = !DILocation(line: 1490, column: 44, scope: !3897)
!4489 = !DILocation(line: 1491, column: 3, scope: !3897)
!4490 = !DILocation(line: 1495, column: 3, scope: !3897)
!4491 = !DILocation(line: 1495, column: 3, scope: !4492)
!4492 = distinct !DILexicalBlock(scope: !4493, file: !65, line: 1495, column: 3)
!4493 = distinct !DILexicalBlock(scope: !3897, file: !65, line: 1495, column: 3)
!4494 = !DILocation(line: 1495, column: 3, scope: !4493)
!4495 = !DILocalVariable(name: "szdst", scope: !4496, file: !65, line: 1495, type: !673)
!4496 = distinct !DILexicalBlock(scope: !4497, file: !65, line: 1495, column: 3)
!4497 = distinct !DILexicalBlock(scope: !4498, file: !65, line: 1495, column: 3)
!4498 = distinct !DILexicalBlock(scope: !4492, file: !65, line: 1495, column: 3)
!4499 = !DILocation(line: 1495, column: 3, scope: !4496)
!4500 = !DILocation(line: 1495, column: 3, scope: !4498)
!4501 = !DILocation(line: 1496, column: 44, scope: !3897)
!4502 = !DILocation(line: 1497, column: 3, scope: !3897)
!4503 = !DILocation(line: 1499, column: 3, scope: !3897)
!4504 = !DILocation(line: 1499, column: 3, scope: !4505)
!4505 = distinct !DILexicalBlock(scope: !4506, file: !65, line: 1499, column: 3)
!4506 = distinct !DILexicalBlock(scope: !3897, file: !65, line: 1499, column: 3)
!4507 = !DILocation(line: 1499, column: 3, scope: !4506)
!4508 = !DILocalVariable(name: "szdst", scope: !4509, file: !65, line: 1499, type: !673)
!4509 = distinct !DILexicalBlock(scope: !4510, file: !65, line: 1499, column: 3)
!4510 = distinct !DILexicalBlock(scope: !4511, file: !65, line: 1499, column: 3)
!4511 = distinct !DILexicalBlock(scope: !4505, file: !65, line: 1499, column: 3)
!4512 = !DILocation(line: 1499, column: 3, scope: !4509)
!4513 = !DILocation(line: 1499, column: 3, scope: !4511)
!4514 = !DILocation(line: 1500, column: 33, scope: !3897)
!4515 = !DILocation(line: 1501, column: 3, scope: !3897)
!4516 = !DILocation(line: 1505, column: 26, scope: !3897)
!4517 = !DILocation(line: 1506, column: 3, scope: !3897)
!4518 = !DILocation(line: 1509, column: 46, scope: !3897)
!4519 = !DILocation(line: 1510, column: 18, scope: !3897)
!4520 = !DILocation(line: 1511, column: 18, scope: !3897)
!4521 = !DILocation(line: 1512, column: 22, scope: !3897)
!4522 = !DILocation(line: 1513, column: 3, scope: !3897)
!4523 = !DILocation(line: 1515, column: 29, scope: !3897)
!4524 = !DILocation(line: 1516, column: 3, scope: !3897)
!4525 = !DILocation(line: 1518, column: 34, scope: !3897)
!4526 = !DILocation(line: 1519, column: 3, scope: !3897)
!4527 = !DILocation(line: 1521, column: 33, scope: !3897)
!4528 = !DILocation(line: 1522, column: 3, scope: !3897)
!4529 = !DILocation(line: 1524, column: 80, scope: !3897)
!4530 = !DILocation(line: 1524, column: 3, scope: !3897)
!4531 = !DILocation(line: 1525, column: 46, scope: !3897)
!4532 = !DILocation(line: 1526, column: 18, scope: !3897)
!4533 = !DILocation(line: 1527, column: 18, scope: !3897)
!4534 = !DILocation(line: 1528, column: 22, scope: !3897)
!4535 = !DILocation(line: 1529, column: 3, scope: !3897)
!4536 = !DILocation(line: 1531, column: 3, scope: !3897)
!4537 = !DILocation(line: 1532, column: 3, scope: !3897)
!4538 = !DILocation(line: 1534, column: 26, scope: !3897)
!4539 = !DILocation(line: 1534, column: 3, scope: !3897)
!4540 = !DILocation(line: 1535, column: 3, scope: !3897)
!4541 = !DILocation(line: 1537, column: 39, scope: !3897)
!4542 = !DILocation(line: 1537, column: 34, scope: !3897)
!4543 = !DILocation(line: 1537, column: 26, scope: !3897)
!4544 = !DILocation(line: 1538, column: 59, scope: !3897)
!4545 = !DILocation(line: 1538, column: 54, scope: !3897)
!4546 = !DILocation(line: 1538, column: 3, scope: !3897)
!4547 = !DILocation(line: 1538, column: 20, scope: !3897)
!4548 = !DILocation(line: 1538, column: 28, scope: !3897)
!4549 = !DILocation(line: 1538, column: 41, scope: !3897)
!4550 = !DILocation(line: 1538, column: 52, scope: !3897)
!4551 = !DILocation(line: 1539, column: 3, scope: !3897)
!4552 = !DILocation(line: 1541, column: 40, scope: !3897)
!4553 = !DILocation(line: 1541, column: 35, scope: !3897)
!4554 = !DILocation(line: 1541, column: 27, scope: !3897)
!4555 = !DILocation(line: 1542, column: 60, scope: !3897)
!4556 = !DILocation(line: 1542, column: 55, scope: !3897)
!4557 = !DILocation(line: 1542, column: 3, scope: !3897)
!4558 = !DILocation(line: 1542, column: 20, scope: !3897)
!4559 = !DILocation(line: 1542, column: 28, scope: !3897)
!4560 = !DILocation(line: 1542, column: 41, scope: !3897)
!4561 = !DILocation(line: 1542, column: 53, scope: !3897)
!4562 = !DILocation(line: 1543, column: 3, scope: !3897)
!4563 = !DILocation(line: 1545, column: 47, scope: !3897)
!4564 = !DILocation(line: 1545, column: 39, scope: !3897)
!4565 = !DILocation(line: 1545, column: 23, scope: !3897)
!4566 = !DILocation(line: 1546, column: 73, scope: !3897)
!4567 = !DILocation(line: 1546, column: 65, scope: !3897)
!4568 = !DILocation(line: 1546, column: 3, scope: !3897)
!4569 = !DILocation(line: 1546, column: 20, scope: !3897)
!4570 = !DILocation(line: 1546, column: 28, scope: !3897)
!4571 = !DILocation(line: 1546, column: 41, scope: !3897)
!4572 = !DILocation(line: 1546, column: 49, scope: !3897)
!4573 = !DILocation(line: 1547, column: 110, scope: !3897)
!4574 = !DILocation(line: 1547, column: 3, scope: !3897)
!4575 = !DILocation(line: 1548, column: 3, scope: !3897)
!4576 = !DILocation(line: 1550, column: 52, scope: !3897)
!4577 = !DILocation(line: 1550, column: 44, scope: !3897)
!4578 = !DILocation(line: 1550, column: 28, scope: !3897)
!4579 = !DILocation(line: 1551, column: 124, scope: !3897)
!4580 = !DILocation(line: 1551, column: 3, scope: !3897)
!4581 = !DILocation(line: 1552, column: 3, scope: !3897)
!4582 = !DILocation(line: 1554, column: 45, scope: !3897)
!4583 = !DILocation(line: 1554, column: 30, scope: !3897)
!4584 = !DILocation(line: 1554, column: 28, scope: !3897)
!4585 = !DILocation(line: 1555, column: 3, scope: !3897)
!4586 = !DILocation(line: 1557, column: 39, scope: !3897)
!4587 = !DILocation(line: 1557, column: 24, scope: !3897)
!4588 = !DILocation(line: 1557, column: 22, scope: !3897)
!4589 = !DILocation(line: 1558, column: 3, scope: !3897)
!4590 = !DILocation(line: 1560, column: 39, scope: !3897)
!4591 = !DILocation(line: 1560, column: 24, scope: !3897)
!4592 = !DILocation(line: 1560, column: 22, scope: !3897)
!4593 = !DILocation(line: 1561, column: 3, scope: !3897)
!4594 = !DILocation(line: 1563, column: 45, scope: !3897)
!4595 = !DILocation(line: 1563, column: 30, scope: !3897)
!4596 = !DILocation(line: 1563, column: 28, scope: !3897)
!4597 = !DILocation(line: 1564, column: 3, scope: !3897)
!4598 = !DILocation(line: 1566, column: 45, scope: !3897)
!4599 = !DILocation(line: 1566, column: 30, scope: !3897)
!4600 = !DILocation(line: 1566, column: 28, scope: !3897)
!4601 = !DILocation(line: 1567, column: 3, scope: !3897)
!4602 = !DILocation(line: 1572, column: 39, scope: !3897)
!4603 = !DILocation(line: 1572, column: 24, scope: !3897)
!4604 = !DILocation(line: 1572, column: 22, scope: !3897)
!4605 = !DILocation(line: 1574, column: 3, scope: !3897)
!4606 = !DILocation(line: 1577, column: 40, scope: !3897)
!4607 = !DILocation(line: 1577, column: 25, scope: !3897)
!4608 = !DILocation(line: 1577, column: 23, scope: !3897)
!4609 = !DILocation(line: 1581, column: 3, scope: !3897)
!4610 = !DILocation(line: 1583, column: 3, scope: !3897)
!4611 = !DILocation(line: 1583, column: 3, scope: !4612)
!4612 = distinct !DILexicalBlock(scope: !4613, file: !65, line: 1583, column: 3)
!4613 = distinct !DILexicalBlock(scope: !3897, file: !65, line: 1583, column: 3)
!4614 = !DILocation(line: 1583, column: 3, scope: !4613)
!4615 = !DILocalVariable(name: "szdst", scope: !4616, file: !65, line: 1583, type: !673)
!4616 = distinct !DILexicalBlock(scope: !4617, file: !65, line: 1583, column: 3)
!4617 = distinct !DILexicalBlock(scope: !4618, file: !65, line: 1583, column: 3)
!4618 = distinct !DILexicalBlock(scope: !4612, file: !65, line: 1583, column: 3)
!4619 = !DILocation(line: 1583, column: 3, scope: !4616)
!4620 = !DILocation(line: 1583, column: 3, scope: !4618)
!4621 = !DILocation(line: 1584, column: 3, scope: !3897)
!4622 = !DILocation(line: 1586, column: 3, scope: !3897)
!4623 = !DILocation(line: 1586, column: 3, scope: !4624)
!4624 = distinct !DILexicalBlock(scope: !4625, file: !65, line: 1586, column: 3)
!4625 = distinct !DILexicalBlock(scope: !3897, file: !65, line: 1586, column: 3)
!4626 = !DILocation(line: 1586, column: 3, scope: !4625)
!4627 = !DILocalVariable(name: "szdst", scope: !4628, file: !65, line: 1586, type: !673)
!4628 = distinct !DILexicalBlock(scope: !4629, file: !65, line: 1586, column: 3)
!4629 = distinct !DILexicalBlock(scope: !4630, file: !65, line: 1586, column: 3)
!4630 = distinct !DILexicalBlock(scope: !4624, file: !65, line: 1586, column: 3)
!4631 = !DILocation(line: 1586, column: 3, scope: !4628)
!4632 = !DILocation(line: 1586, column: 3, scope: !4630)
!4633 = !DILocation(line: 1587, column: 3, scope: !3897)
!4634 = !DILocation(line: 1589, column: 3, scope: !3897)
!4635 = !DILocation(line: 1589, column: 3, scope: !4636)
!4636 = distinct !DILexicalBlock(scope: !4637, file: !65, line: 1589, column: 3)
!4637 = distinct !DILexicalBlock(scope: !3897, file: !65, line: 1589, column: 3)
!4638 = !DILocation(line: 1589, column: 3, scope: !4637)
!4639 = !DILocalVariable(name: "szdst", scope: !4640, file: !65, line: 1589, type: !673)
!4640 = distinct !DILexicalBlock(scope: !4641, file: !65, line: 1589, column: 3)
!4641 = distinct !DILexicalBlock(scope: !4642, file: !65, line: 1589, column: 3)
!4642 = distinct !DILexicalBlock(scope: !4636, file: !65, line: 1589, column: 3)
!4643 = !DILocation(line: 1589, column: 3, scope: !4640)
!4644 = !DILocation(line: 1589, column: 3, scope: !4642)
!4645 = !DILocation(line: 1590, column: 3, scope: !3897)
!4646 = !DILocation(line: 1592, column: 4, scope: !3897)
!4647 = !DILocation(line: 1592, column: 4, scope: !4648)
!4648 = distinct !DILexicalBlock(scope: !4649, file: !65, line: 1592, column: 4)
!4649 = distinct !DILexicalBlock(scope: !3897, file: !65, line: 1592, column: 4)
!4650 = !DILocation(line: 1592, column: 4, scope: !4649)
!4651 = !DILocalVariable(name: "szdst", scope: !4652, file: !65, line: 1592, type: !673)
!4652 = distinct !DILexicalBlock(scope: !4653, file: !65, line: 1592, column: 4)
!4653 = distinct !DILexicalBlock(scope: !4654, file: !65, line: 1592, column: 4)
!4654 = distinct !DILexicalBlock(scope: !4648, file: !65, line: 1592, column: 4)
!4655 = !DILocation(line: 1592, column: 4, scope: !4652)
!4656 = !DILocation(line: 1592, column: 4, scope: !4654)
!4657 = !DILocation(line: 1593, column: 4, scope: !3897)
!4658 = !DILocation(line: 1595, column: 3, scope: !3897)
!4659 = !DILocation(line: 1595, column: 3, scope: !4660)
!4660 = distinct !DILexicalBlock(scope: !4661, file: !65, line: 1595, column: 3)
!4661 = distinct !DILexicalBlock(scope: !3897, file: !65, line: 1595, column: 3)
!4662 = !DILocation(line: 1595, column: 3, scope: !4661)
!4663 = !DILocalVariable(name: "szdst", scope: !4664, file: !65, line: 1595, type: !673)
!4664 = distinct !DILexicalBlock(scope: !4665, file: !65, line: 1595, column: 3)
!4665 = distinct !DILexicalBlock(scope: !4666, file: !65, line: 1595, column: 3)
!4666 = distinct !DILexicalBlock(scope: !4660, file: !65, line: 1595, column: 3)
!4667 = !DILocation(line: 1595, column: 3, scope: !4664)
!4668 = !DILocation(line: 1595, column: 3, scope: !4666)
!4669 = !DILocation(line: 1596, column: 3, scope: !3897)
!4670 = !DILocation(line: 1598, column: 3, scope: !3897)
!4671 = !DILocation(line: 1598, column: 3, scope: !4672)
!4672 = distinct !DILexicalBlock(scope: !4673, file: !65, line: 1598, column: 3)
!4673 = distinct !DILexicalBlock(scope: !3897, file: !65, line: 1598, column: 3)
!4674 = !DILocation(line: 1598, column: 3, scope: !4673)
!4675 = !DILocalVariable(name: "szdst", scope: !4676, file: !65, line: 1598, type: !673)
!4676 = distinct !DILexicalBlock(scope: !4677, file: !65, line: 1598, column: 3)
!4677 = distinct !DILexicalBlock(scope: !4678, file: !65, line: 1598, column: 3)
!4678 = distinct !DILexicalBlock(scope: !4672, file: !65, line: 1598, column: 3)
!4679 = !DILocation(line: 1598, column: 3, scope: !4676)
!4680 = !DILocation(line: 1598, column: 3, scope: !4678)
!4681 = !DILocation(line: 1599, column: 3, scope: !3897)
!4682 = !DILocation(line: 1601, column: 24, scope: !3897)
!4683 = !DILocation(line: 1601, column: 3, scope: !3897)
!4684 = !DILocation(line: 1602, column: 3, scope: !3897)
!4685 = !DILocation(line: 1604, column: 18, scope: !3897)
!4686 = !DILocation(line: 1604, column: 3, scope: !3897)
!4687 = !DILocation(line: 1605, column: 3, scope: !3897)
!4688 = !DILocation(line: 1607, column: 49, scope: !3897)
!4689 = !DILocation(line: 1607, column: 34, scope: !3897)
!4690 = !DILocation(line: 1607, column: 32, scope: !3897)
!4691 = !DILocation(line: 1608, column: 3, scope: !3897)
!4692 = !DILocation(line: 1610, column: 28, scope: !3897)
!4693 = !DILocation(line: 1610, column: 3, scope: !3897)
!4694 = !DILocation(line: 1611, column: 3, scope: !3897)
!4695 = !DILocation(line: 1613, column: 25, scope: !4696)
!4696 = distinct !DILexicalBlock(scope: !3897, file: !65, line: 1613, column: 7)
!4697 = !DILocation(line: 1613, column: 7, scope: !4696)
!4698 = !DILocation(line: 1613, column: 65, scope: !4696)
!4699 = !DILocation(line: 1613, column: 7, scope: !3897)
!4700 = !DILocation(line: 1613, column: 129, scope: !4696)
!4701 = !DILocation(line: 1613, column: 71, scope: !4696)
!4702 = !DILocation(line: 1614, column: 3, scope: !3897)
!4703 = !DILocation(line: 1616, column: 25, scope: !4704)
!4704 = distinct !DILexicalBlock(scope: !3897, file: !65, line: 1616, column: 7)
!4705 = !DILocation(line: 1616, column: 7, scope: !4704)
!4706 = !DILocation(line: 1616, column: 65, scope: !4704)
!4707 = !DILocation(line: 1616, column: 7, scope: !3897)
!4708 = !DILocation(line: 1616, column: 129, scope: !4704)
!4709 = !DILocation(line: 1616, column: 71, scope: !4704)
!4710 = !DILocation(line: 1617, column: 3, scope: !3897)
!4711 = !DILocation(line: 1619, column: 3, scope: !3897)
!4712 = !DILocation(line: 1619, column: 3, scope: !4713)
!4713 = distinct !DILexicalBlock(scope: !4714, file: !65, line: 1619, column: 3)
!4714 = distinct !DILexicalBlock(scope: !3897, file: !65, line: 1619, column: 3)
!4715 = !DILocation(line: 1619, column: 3, scope: !4714)
!4716 = !DILocalVariable(name: "szdst", scope: !4717, file: !65, line: 1619, type: !673)
!4717 = distinct !DILexicalBlock(scope: !4718, file: !65, line: 1619, column: 3)
!4718 = distinct !DILexicalBlock(scope: !4719, file: !65, line: 1619, column: 3)
!4719 = distinct !DILexicalBlock(scope: !4713, file: !65, line: 1619, column: 3)
!4720 = !DILocation(line: 1619, column: 3, scope: !4717)
!4721 = !DILocation(line: 1619, column: 3, scope: !4719)
!4722 = !DILocation(line: 1620, column: 3, scope: !3897)
!4723 = !DILocation(line: 1622, column: 3, scope: !3897)
!4724 = !DILocation(line: 1622, column: 3, scope: !4725)
!4725 = distinct !DILexicalBlock(scope: !4726, file: !65, line: 1622, column: 3)
!4726 = distinct !DILexicalBlock(scope: !3897, file: !65, line: 1622, column: 3)
!4727 = !DILocation(line: 1622, column: 3, scope: !4726)
!4728 = !DILocalVariable(name: "szdst", scope: !4729, file: !65, line: 1622, type: !673)
!4729 = distinct !DILexicalBlock(scope: !4730, file: !65, line: 1622, column: 3)
!4730 = distinct !DILexicalBlock(scope: !4731, file: !65, line: 1622, column: 3)
!4731 = distinct !DILexicalBlock(scope: !4725, file: !65, line: 1622, column: 3)
!4732 = !DILocation(line: 1622, column: 3, scope: !4729)
!4733 = !DILocation(line: 1622, column: 3, scope: !4731)
!4734 = !DILocation(line: 1623, column: 3, scope: !3897)
!4735 = !DILocation(line: 1625, column: 3, scope: !3897)
!4736 = !DILocation(line: 1625, column: 3, scope: !4737)
!4737 = distinct !DILexicalBlock(scope: !4738, file: !65, line: 1625, column: 3)
!4738 = distinct !DILexicalBlock(scope: !3897, file: !65, line: 1625, column: 3)
!4739 = !DILocation(line: 1625, column: 3, scope: !4738)
!4740 = !DILocalVariable(name: "szdst", scope: !4741, file: !65, line: 1625, type: !673)
!4741 = distinct !DILexicalBlock(scope: !4742, file: !65, line: 1625, column: 3)
!4742 = distinct !DILexicalBlock(scope: !4743, file: !65, line: 1625, column: 3)
!4743 = distinct !DILexicalBlock(scope: !4737, file: !65, line: 1625, column: 3)
!4744 = !DILocation(line: 1625, column: 3, scope: !4741)
!4745 = !DILocation(line: 1625, column: 3, scope: !4743)
!4746 = !DILocation(line: 1626, column: 3, scope: !3897)
!4747 = !DILocation(line: 1628, column: 6, scope: !4748)
!4748 = distinct !DILexicalBlock(scope: !3897, file: !65, line: 1628, column: 6)
!4749 = !DILocation(line: 1628, column: 12, scope: !4748)
!4750 = !DILocation(line: 1628, column: 16, scope: !4748)
!4751 = !DILocation(line: 1628, column: 15, scope: !4748)
!4752 = !DILocation(line: 1628, column: 6, scope: !3897)
!4753 = !DILocation(line: 1629, column: 36, scope: !4754)
!4754 = distinct !DILexicalBlock(scope: !4748, file: !65, line: 1628, column: 23)
!4755 = !DILocation(line: 1629, column: 35, scope: !4754)
!4756 = !DILocation(line: 1629, column: 34, scope: !4754)
!4757 = !DILocation(line: 1630, column: 3, scope: !4754)
!4758 = !DILocation(line: 1631, column: 3, scope: !3897)
!4759 = !DILocation(line: 1633, column: 44, scope: !3897)
!4760 = !DILocation(line: 1633, column: 29, scope: !3897)
!4761 = !DILocation(line: 1633, column: 27, scope: !3897)
!4762 = !DILocation(line: 1634, column: 3, scope: !3897)
!4763 = !DILocation(line: 1646, column: 3, scope: !3897)
!4764 = !DILocation(line: 1648, column: 11, scope: !3897)
!4765 = !DILocation(line: 1648, column: 3, scope: !3897)
!4766 = !DILocation(line: 1649, column: 3, scope: !3897)
!4767 = !DILocation(line: 1651, column: 1, scope: !3873)
!4768 = distinct !DISubprogram(name: "print_features", scope: !65, file: !65, line: 2038, type: !4769, scopeLine: 2039, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !1429)
!4769 = !DISubroutineType(types: !4770)
!4770 = !{null, !475}
!4771 = !DILocalVariable(name: "mfn", arg: 1, scope: !4768, file: !65, line: 2038, type: !475)
!4772 = !DILocation(line: 2038, column: 42, scope: !4768)
!4773 = !DILocation(line: 2040, column: 2, scope: !4768)
!4774 = !DILocation(line: 2041, column: 106, scope: !4768)
!4775 = !DILocation(line: 2041, column: 2, scope: !4768)
!4776 = !DILocation(line: 2042, column: 17, scope: !4777)
!4777 = distinct !DILexicalBlock(scope: !4768, file: !65, line: 2042, column: 5)
!4778 = !DILocation(line: 2042, column: 36, scope: !4777)
!4779 = !DILocation(line: 2042, column: 5, scope: !4768)
!4780 = !DILocation(line: 2043, column: 9, scope: !4777)
!4781 = !DILocation(line: 2043, column: 12, scope: !4777)
!4782 = !DILocation(line: 2043, column: 7, scope: !4777)
!4783 = !DILocation(line: 2043, column: 3, scope: !4777)
!4784 = !DILocation(line: 2045, column: 9, scope: !4777)
!4785 = !DILocation(line: 2045, column: 12, scope: !4777)
!4786 = !DILocation(line: 2045, column: 7, scope: !4777)
!4787 = !DILocation(line: 2046, column: 25, scope: !4768)
!4788 = !DILocation(line: 2046, column: 28, scope: !4768)
!4789 = !DILocation(line: 2046, column: 34, scope: !4768)
!4790 = !DILocation(line: 2046, column: 6, scope: !4768)
!4791 = !DILocation(line: 2047, column: 5, scope: !4792)
!4792 = distinct !DILexicalBlock(scope: !4768, file: !65, line: 2047, column: 5)
!4793 = !DILocation(line: 2047, column: 8, scope: !4792)
!4794 = !DILocation(line: 2047, column: 5, scope: !4768)
!4795 = !DILocation(line: 2048, column: 7, scope: !4792)
!4796 = !DILocation(line: 2048, column: 3, scope: !4792)
!4797 = !DILocation(line: 2049, column: 157, scope: !4768)
!4798 = !DILocation(line: 2049, column: 2, scope: !4768)
!4799 = !DILocation(line: 2051, column: 2, scope: !4768)
!4800 = !DILocation(line: 2067, column: 2, scope: !4768)
!4801 = !DILocation(line: 2073, column: 2, scope: !4768)
!4802 = !DILocation(line: 2075, column: 2, scope: !4768)
!4803 = !DILocation(line: 2082, column: 2, scope: !4768)
!4804 = !DILocation(line: 2090, column: 3, scope: !4805)
!4805 = distinct !DILexicalBlock(scope: !4806, file: !65, line: 2089, column: 9)
!4806 = distinct !DILexicalBlock(scope: !4768, file: !65, line: 2087, column: 5)
!4807 = !DILocation(line: 2094, column: 3, scope: !4805)
!4808 = !DILocation(line: 2098, column: 2, scope: !4768)
!4809 = !DILocation(line: 2100, column: 2, scope: !4768)
!4810 = !DILocation(line: 2103, column: 2, scope: !4768)
!4811 = !DILocation(line: 2109, column: 2, scope: !4768)
!4812 = !DILocation(line: 2115, column: 2, scope: !4768)
!4813 = !DILocation(line: 2121, column: 2, scope: !4768)
!4814 = !DILocation(line: 2127, column: 2, scope: !4768)
!4815 = !DILocation(line: 2132, column: 2, scope: !4768)
!4816 = !DILocation(line: 2134, column: 154, scope: !4768)
!4817 = !DILocation(line: 2134, column: 226, scope: !4768)
!4818 = !DILocation(line: 2134, column: 174, scope: !4768)
!4819 = !DILocation(line: 2134, column: 2, scope: !4768)
!4820 = !DILocation(line: 2136, column: 1, scope: !4768)
!4821 = distinct !DISubprogram(name: "openssl_setup", scope: !65, file: !65, line: 3136, type: !3050, scopeLine: 3137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !1429)
!4822 = !DILocation(line: 3138, column: 2, scope: !4821)
!4823 = !DILocation(line: 3139, column: 2, scope: !4821)
!4824 = !DILocation(line: 3140, column: 2, scope: !4821)
!4825 = !DILocation(line: 3149, column: 19, scope: !4826)
!4826 = distinct !DILexicalBlock(scope: !4821, file: !65, line: 3149, column: 5)
!4827 = !DILocation(line: 3149, column: 7, scope: !4826)
!4828 = !DILocation(line: 3149, column: 26, scope: !4826)
!4829 = !DILocation(line: 3149, column: 41, scope: !4826)
!4830 = !DILocation(line: 3149, column: 29, scope: !4826)
!4831 = !DILocation(line: 3149, column: 50, scope: !4826)
!4832 = !DILocation(line: 3149, column: 54, scope: !4826)
!4833 = !DILocation(line: 3149, column: 5, scope: !4821)
!4834 = !DILocation(line: 3150, column: 3, scope: !4835)
!4835 = distinct !DILexicalBlock(scope: !4826, file: !65, line: 3149, column: 80)
!4836 = !DILocation(line: 3151, column: 22, scope: !4835)
!4837 = !DILocation(line: 3152, column: 23, scope: !4835)
!4838 = !DILocation(line: 3153, column: 2, scope: !4835)
!4839 = !DILocation(line: 3155, column: 19, scope: !4840)
!4840 = distinct !DILexicalBlock(scope: !4821, file: !65, line: 3155, column: 5)
!4841 = !DILocation(line: 3155, column: 7, scope: !4840)
!4842 = !DILocation(line: 3155, column: 26, scope: !4840)
!4843 = !DILocation(line: 3155, column: 41, scope: !4840)
!4844 = !DILocation(line: 3155, column: 29, scope: !4840)
!4845 = !DILocation(line: 3155, column: 50, scope: !4840)
!4846 = !DILocation(line: 3155, column: 54, scope: !4840)
!4847 = !DILocation(line: 3155, column: 5, scope: !4821)
!4848 = !DILocation(line: 3156, column: 3, scope: !4849)
!4849 = distinct !DILexicalBlock(scope: !4840, file: !65, line: 3155, column: 80)
!4850 = !DILocation(line: 3157, column: 22, scope: !4849)
!4851 = !DILocation(line: 3158, column: 23, scope: !4849)
!4852 = !DILocation(line: 3159, column: 2, scope: !4849)
!4853 = !DILocation(line: 3161, column: 19, scope: !4854)
!4854 = distinct !DILexicalBlock(scope: !4821, file: !65, line: 3161, column: 5)
!4855 = !DILocation(line: 3161, column: 7, scope: !4854)
!4856 = !DILocation(line: 3161, column: 26, scope: !4854)
!4857 = !DILocation(line: 3161, column: 41, scope: !4854)
!4858 = !DILocation(line: 3161, column: 29, scope: !4854)
!4859 = !DILocation(line: 3161, column: 5, scope: !4821)
!4860 = !DILocation(line: 3162, column: 3, scope: !4861)
!4861 = distinct !DILexicalBlock(scope: !4854, file: !65, line: 3161, column: 51)
!4862 = !DILocation(line: 3163, column: 2, scope: !4861)
!4863 = !DILocation(line: 3165, column: 2, scope: !4821)
!4864 = !DILocation(line: 3166, column: 1, scope: !4821)
!4865 = distinct !DISubprogram(name: "make_local_listeners_list", scope: !65, file: !65, line: 205, type: !4866, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !1429)
!4866 = !DISubroutineType(types: !4867)
!4867 = !{!31}
!4868 = !DILocalVariable(name: "ret", scope: !4865, file: !65, line: 207, type: !31)
!4869 = !DILocation(line: 207, column: 6, scope: !4865)
!4870 = !DILocalVariable(name: "ifs", scope: !4865, file: !65, line: 209, type: !1724)
!4871 = !DILocation(line: 209, column: 19, scope: !4865)
!4872 = !DILocalVariable(name: "ifa", scope: !4865, file: !65, line: 210, type: !1724)
!4873 = !DILocation(line: 210, column: 19, scope: !4865)
!4874 = !DILocalVariable(name: "saddr", scope: !4865, file: !65, line: 212, type: !1000)
!4875 = !DILocation(line: 212, column: 7, scope: !4865)
!4876 = !DILocation(line: 214, column: 6, scope: !4877)
!4877 = distinct !DILexicalBlock(scope: !4865, file: !65, line: 214, column: 5)
!4878 = !DILocation(line: 214, column: 23, scope: !4877)
!4879 = !DILocation(line: 214, column: 29, scope: !4877)
!4880 = !DILocation(line: 214, column: 32, scope: !4877)
!4881 = !DILocation(line: 214, column: 5, scope: !4865)
!4882 = !DILocation(line: 216, column: 14, scope: !4883)
!4883 = distinct !DILexicalBlock(scope: !4884, file: !65, line: 216, column: 3)
!4884 = distinct !DILexicalBlock(scope: !4877, file: !65, line: 214, column: 37)
!4885 = !DILocation(line: 216, column: 12, scope: !4883)
!4886 = !DILocation(line: 216, column: 8, scope: !4883)
!4887 = !DILocation(line: 216, column: 19, scope: !4888)
!4888 = distinct !DILexicalBlock(scope: !4883, file: !65, line: 216, column: 3)
!4889 = !DILocation(line: 216, column: 23, scope: !4888)
!4890 = !DILocation(line: 216, column: 3, scope: !4883)
!4891 = !DILocation(line: 218, column: 9, scope: !4892)
!4892 = distinct !DILexicalBlock(scope: !4893, file: !65, line: 218, column: 7)
!4893 = distinct !DILexicalBlock(scope: !4888, file: !65, line: 216, column: 53)
!4894 = !DILocation(line: 218, column: 14, scope: !4892)
!4895 = !DILocation(line: 218, column: 24, scope: !4892)
!4896 = !DILocation(line: 218, column: 7, scope: !4893)
!4897 = !DILocation(line: 219, column: 5, scope: !4892)
!4898 = !DILocation(line: 221, column: 9, scope: !4899)
!4899 = distinct !DILexicalBlock(scope: !4893, file: !65, line: 221, column: 7)
!4900 = !DILocation(line: 221, column: 14, scope: !4899)
!4901 = !DILocation(line: 221, column: 8, scope: !4899)
!4902 = !DILocation(line: 221, column: 7, scope: !4893)
!4903 = !DILocation(line: 222, column: 5, scope: !4899)
!4904 = !DILocation(line: 224, column: 8, scope: !4905)
!4905 = distinct !DILexicalBlock(scope: !4893, file: !65, line: 224, column: 8)
!4906 = !DILocation(line: 224, column: 14, scope: !4905)
!4907 = !DILocation(line: 224, column: 24, scope: !4905)
!4908 = !DILocation(line: 224, column: 34, scope: !4905)
!4909 = !DILocation(line: 224, column: 8, scope: !4893)
!4910 = !DILocation(line: 225, column: 53, scope: !4911)
!4911 = distinct !DILexicalBlock(scope: !4912, file: !65, line: 225, column: 8)
!4912 = distinct !DILexicalBlock(scope: !4905, file: !65, line: 224, column: 46)
!4913 = !DILocation(line: 225, column: 58, scope: !4911)
!4914 = !DILocation(line: 225, column: 69, scope: !4911)
!4915 = !DILocation(line: 225, column: 79, scope: !4911)
!4916 = !DILocation(line: 225, column: 9, scope: !4911)
!4917 = !DILocation(line: 225, column: 8, scope: !4912)
!4918 = !DILocation(line: 227, column: 6, scope: !4911)
!4919 = !DILocation(line: 228, column: 15, scope: !4920)
!4920 = distinct !DILexicalBlock(scope: !4912, file: !65, line: 228, column: 8)
!4921 = !DILocation(line: 228, column: 8, scope: !4920)
!4922 = !DILocation(line: 228, column: 36, scope: !4920)
!4923 = !DILocation(line: 228, column: 33, scope: !4920)
!4924 = !DILocation(line: 228, column: 8, scope: !4912)
!4925 = !DILocation(line: 229, column: 6, scope: !4920)
!4926 = !DILocation(line: 230, column: 16, scope: !4927)
!4927 = distinct !DILexicalBlock(scope: !4912, file: !65, line: 230, column: 8)
!4928 = !DILocation(line: 230, column: 9, scope: !4927)
!4929 = !DILocation(line: 230, column: 8, scope: !4912)
!4930 = !DILocation(line: 231, column: 7, scope: !4927)
!4931 = !DILocation(line: 232, column: 4, scope: !4912)
!4932 = !DILocation(line: 232, column: 15, scope: !4933)
!4933 = distinct !DILexicalBlock(scope: !4905, file: !65, line: 232, column: 15)
!4934 = !DILocation(line: 232, column: 20, scope: !4933)
!4935 = !DILocation(line: 232, column: 30, scope: !4933)
!4936 = !DILocation(line: 232, column: 40, scope: !4933)
!4937 = !DILocation(line: 232, column: 15, scope: !4905)
!4938 = !DILocation(line: 233, column: 55, scope: !4939)
!4939 = distinct !DILexicalBlock(scope: !4940, file: !65, line: 233, column: 8)
!4940 = distinct !DILexicalBlock(scope: !4933, file: !65, line: 232, column: 53)
!4941 = !DILocation(line: 233, column: 60, scope: !4939)
!4942 = !DILocation(line: 233, column: 71, scope: !4939)
!4943 = !DILocation(line: 233, column: 82, scope: !4939)
!4944 = !DILocation(line: 233, column: 9, scope: !4939)
!4945 = !DILocation(line: 233, column: 8, scope: !4940)
!4946 = !DILocation(line: 235, column: 6, scope: !4939)
!4947 = !DILocation(line: 236, column: 15, scope: !4948)
!4948 = distinct !DILexicalBlock(scope: !4940, file: !65, line: 236, column: 8)
!4949 = !DILocation(line: 236, column: 8, scope: !4948)
!4950 = !DILocation(line: 236, column: 32, scope: !4948)
!4951 = !DILocation(line: 236, column: 29, scope: !4948)
!4952 = !DILocation(line: 236, column: 8, scope: !4940)
!4953 = !DILocation(line: 237, column: 6, scope: !4948)
!4954 = !DILocation(line: 238, column: 16, scope: !4955)
!4955 = distinct !DILexicalBlock(scope: !4940, file: !65, line: 238, column: 8)
!4956 = !DILocation(line: 238, column: 9, scope: !4955)
!4957 = !DILocation(line: 238, column: 8, scope: !4940)
!4958 = !DILocation(line: 239, column: 7, scope: !4955)
!4959 = !DILocation(line: 240, column: 4, scope: !4940)
!4960 = !DILocation(line: 241, column: 5, scope: !4961)
!4961 = distinct !DILexicalBlock(scope: !4933, file: !65, line: 240, column: 11)
!4962 = !DILocation(line: 244, column: 22, scope: !4893)
!4963 = !DILocation(line: 244, column: 4, scope: !4893)
!4964 = !DILocation(line: 246, column: 9, scope: !4965)
!4965 = distinct !DILexicalBlock(scope: !4893, file: !65, line: 246, column: 7)
!4966 = !DILocation(line: 246, column: 14, scope: !4965)
!4967 = !DILocation(line: 246, column: 24, scope: !4965)
!4968 = !DILocation(line: 246, column: 7, scope: !4893)
!4969 = !DILocation(line: 247, column: 8, scope: !4965)
!4970 = !DILocation(line: 247, column: 5, scope: !4965)
!4971 = !DILocation(line: 248, column: 3, scope: !4893)
!4972 = !DILocation(line: 216, column: 38, scope: !4888)
!4973 = !DILocation(line: 216, column: 43, scope: !4888)
!4974 = !DILocation(line: 216, column: 36, scope: !4888)
!4975 = !DILocation(line: 216, column: 3, scope: !4888)
!4976 = distinct !{!4976, !4890, !4977, !1877}
!4977 = !DILocation(line: 248, column: 3, scope: !4883)
!4978 = !DILocation(line: 249, column: 15, scope: !4884)
!4979 = !DILocation(line: 249, column: 3, scope: !4884)
!4980 = !DILocation(line: 250, column: 2, scope: !4884)
!4981 = !DILocation(line: 252, column: 9, scope: !4865)
!4982 = !DILocation(line: 252, column: 2, scope: !4865)
!4983 = distinct !DISubprogram(name: "make_local_relays_list", scope: !65, file: !65, line: 255, type: !4984, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !1429)
!4984 = !DISubroutineType(types: !4985)
!4985 = !{!31, !31, !31}
!4986 = !DILocalVariable(name: "allow_local", arg: 1, scope: !4983, file: !65, line: 255, type: !31)
!4987 = !DILocation(line: 255, column: 39, scope: !4983)
!4988 = !DILocalVariable(name: "family", arg: 2, scope: !4983, file: !65, line: 255, type: !31)
!4989 = !DILocation(line: 255, column: 56, scope: !4983)
!4990 = !DILocalVariable(name: "ifs", scope: !4983, file: !65, line: 257, type: !1724)
!4991 = !DILocation(line: 257, column: 19, scope: !4983)
!4992 = !DILocalVariable(name: "ifa", scope: !4983, file: !65, line: 258, type: !1724)
!4993 = !DILocation(line: 258, column: 19, scope: !4983)
!4994 = !DILocalVariable(name: "saddr", scope: !4983, file: !65, line: 260, type: !1000)
!4995 = !DILocation(line: 260, column: 7, scope: !4983)
!4996 = !DILocation(line: 262, column: 2, scope: !4983)
!4997 = !DILocalVariable(name: "counter", scope: !4983, file: !65, line: 264, type: !31)
!4998 = !DILocation(line: 264, column: 6, scope: !4983)
!4999 = !DILocation(line: 266, column: 6, scope: !5000)
!5000 = distinct !DILexicalBlock(scope: !4983, file: !65, line: 266, column: 6)
!5001 = !DILocation(line: 266, column: 6, scope: !4983)
!5002 = !DILocation(line: 267, column: 14, scope: !5003)
!5003 = distinct !DILexicalBlock(scope: !5004, file: !65, line: 267, column: 3)
!5004 = distinct !DILexicalBlock(scope: !5000, file: !65, line: 266, column: 11)
!5005 = !DILocation(line: 267, column: 12, scope: !5003)
!5006 = !DILocation(line: 267, column: 8, scope: !5003)
!5007 = !DILocation(line: 267, column: 19, scope: !5008)
!5008 = distinct !DILexicalBlock(scope: !5003, file: !65, line: 267, column: 3)
!5009 = !DILocation(line: 267, column: 23, scope: !5008)
!5010 = !DILocation(line: 267, column: 3, scope: !5003)
!5011 = !DILocation(line: 269, column: 9, scope: !5012)
!5012 = distinct !DILexicalBlock(scope: !5013, file: !65, line: 269, column: 7)
!5013 = distinct !DILexicalBlock(scope: !5008, file: !65, line: 267, column: 53)
!5014 = !DILocation(line: 269, column: 14, scope: !5012)
!5015 = !DILocation(line: 269, column: 24, scope: !5012)
!5016 = !DILocation(line: 269, column: 7, scope: !5013)
!5017 = !DILocation(line: 270, column: 5, scope: !5012)
!5018 = !DILocation(line: 272, column: 9, scope: !5019)
!5019 = distinct !DILexicalBlock(scope: !5013, file: !65, line: 272, column: 7)
!5020 = !DILocation(line: 272, column: 14, scope: !5019)
!5021 = !DILocation(line: 272, column: 8, scope: !5019)
!5022 = !DILocation(line: 272, column: 7, scope: !5013)
!5023 = !DILocation(line: 273, column: 5, scope: !5019)
!5024 = !DILocation(line: 274, column: 9, scope: !5025)
!5025 = distinct !DILexicalBlock(scope: !5013, file: !65, line: 274, column: 7)
!5026 = !DILocation(line: 274, column: 15, scope: !5025)
!5027 = !DILocation(line: 274, column: 8, scope: !5025)
!5028 = !DILocation(line: 274, column: 7, scope: !5013)
!5029 = !DILocation(line: 275, column: 5, scope: !5025)
!5030 = !DILocation(line: 277, column: 8, scope: !5031)
!5031 = distinct !DILexicalBlock(scope: !5013, file: !65, line: 277, column: 7)
!5032 = !DILocation(line: 277, column: 20, scope: !5031)
!5033 = !DILocation(line: 277, column: 24, scope: !5031)
!5034 = !DILocation(line: 277, column: 29, scope: !5031)
!5035 = !DILocation(line: 277, column: 39, scope: !5031)
!5036 = !DILocation(line: 277, column: 7, scope: !5013)
!5037 = !DILocation(line: 278, column: 5, scope: !5031)
!5038 = !DILocation(line: 280, column: 8, scope: !5039)
!5039 = distinct !DILexicalBlock(scope: !5013, file: !65, line: 280, column: 8)
!5040 = !DILocation(line: 280, column: 14, scope: !5039)
!5041 = !DILocation(line: 280, column: 24, scope: !5039)
!5042 = !DILocation(line: 280, column: 34, scope: !5039)
!5043 = !DILocation(line: 280, column: 8, scope: !5013)
!5044 = !DILocation(line: 282, column: 8, scope: !5045)
!5045 = distinct !DILexicalBlock(scope: !5046, file: !65, line: 282, column: 8)
!5046 = distinct !DILexicalBlock(scope: !5039, file: !65, line: 280, column: 46)
!5047 = !DILocation(line: 282, column: 15, scope: !5045)
!5048 = !DILocation(line: 282, column: 8, scope: !5046)
!5049 = !DILocation(line: 283, column: 6, scope: !5045)
!5050 = !DILocation(line: 285, column: 53, scope: !5051)
!5051 = distinct !DILexicalBlock(scope: !5046, file: !65, line: 285, column: 8)
!5052 = !DILocation(line: 285, column: 58, scope: !5051)
!5053 = !DILocation(line: 285, column: 69, scope: !5051)
!5054 = !DILocation(line: 285, column: 79, scope: !5051)
!5055 = !DILocation(line: 285, column: 9, scope: !5051)
!5056 = !DILocation(line: 285, column: 8, scope: !5046)
!5057 = !DILocation(line: 287, column: 6, scope: !5051)
!5058 = !DILocation(line: 288, column: 15, scope: !5059)
!5059 = distinct !DILexicalBlock(scope: !5046, file: !65, line: 288, column: 8)
!5060 = !DILocation(line: 288, column: 8, scope: !5059)
!5061 = !DILocation(line: 288, column: 36, scope: !5059)
!5062 = !DILocation(line: 288, column: 33, scope: !5059)
!5063 = !DILocation(line: 288, column: 8, scope: !5046)
!5064 = !DILocation(line: 289, column: 6, scope: !5059)
!5065 = !DILocation(line: 290, column: 16, scope: !5066)
!5066 = distinct !DILexicalBlock(scope: !5046, file: !65, line: 290, column: 8)
!5067 = !DILocation(line: 290, column: 9, scope: !5066)
!5068 = !DILocation(line: 290, column: 8, scope: !5046)
!5069 = !DILocation(line: 291, column: 7, scope: !5066)
!5070 = !DILocation(line: 292, column: 4, scope: !5046)
!5071 = !DILocation(line: 292, column: 15, scope: !5072)
!5072 = distinct !DILexicalBlock(scope: !5039, file: !65, line: 292, column: 15)
!5073 = !DILocation(line: 292, column: 20, scope: !5072)
!5074 = !DILocation(line: 292, column: 30, scope: !5072)
!5075 = !DILocation(line: 292, column: 40, scope: !5072)
!5076 = !DILocation(line: 292, column: 15, scope: !5039)
!5077 = !DILocation(line: 294, column: 8, scope: !5078)
!5078 = distinct !DILexicalBlock(scope: !5079, file: !65, line: 294, column: 8)
!5079 = distinct !DILexicalBlock(scope: !5072, file: !65, line: 292, column: 53)
!5080 = !DILocation(line: 294, column: 15, scope: !5078)
!5081 = !DILocation(line: 294, column: 8, scope: !5079)
!5082 = !DILocation(line: 295, column: 6, scope: !5078)
!5083 = !DILocation(line: 297, column: 55, scope: !5084)
!5084 = distinct !DILexicalBlock(scope: !5079, file: !65, line: 297, column: 8)
!5085 = !DILocation(line: 297, column: 60, scope: !5084)
!5086 = !DILocation(line: 297, column: 71, scope: !5084)
!5087 = !DILocation(line: 297, column: 82, scope: !5084)
!5088 = !DILocation(line: 297, column: 9, scope: !5084)
!5089 = !DILocation(line: 297, column: 8, scope: !5079)
!5090 = !DILocation(line: 299, column: 6, scope: !5084)
!5091 = !DILocation(line: 300, column: 15, scope: !5092)
!5092 = distinct !DILexicalBlock(scope: !5079, file: !65, line: 300, column: 8)
!5093 = !DILocation(line: 300, column: 8, scope: !5092)
!5094 = !DILocation(line: 300, column: 32, scope: !5092)
!5095 = !DILocation(line: 300, column: 29, scope: !5092)
!5096 = !DILocation(line: 300, column: 8, scope: !5079)
!5097 = !DILocation(line: 301, column: 6, scope: !5092)
!5098 = !DILocation(line: 302, column: 16, scope: !5099)
!5099 = distinct !DILexicalBlock(scope: !5079, file: !65, line: 302, column: 8)
!5100 = !DILocation(line: 302, column: 9, scope: !5099)
!5101 = !DILocation(line: 302, column: 8, scope: !5079)
!5102 = !DILocation(line: 303, column: 7, scope: !5099)
!5103 = !DILocation(line: 304, column: 4, scope: !5079)
!5104 = !DILocation(line: 305, column: 5, scope: !5072)
!5105 = !DILocation(line: 307, column: 22, scope: !5106)
!5106 = distinct !DILexicalBlock(scope: !5013, file: !65, line: 307, column: 7)
!5107 = !DILocation(line: 307, column: 7, scope: !5106)
!5108 = !DILocation(line: 307, column: 28, scope: !5106)
!5109 = !DILocation(line: 307, column: 7, scope: !5013)
!5110 = !DILocation(line: 308, column: 13, scope: !5111)
!5111 = distinct !DILexicalBlock(scope: !5106, file: !65, line: 307, column: 32)
!5112 = !DILocation(line: 309, column: 4, scope: !5111)
!5113 = !DILocation(line: 310, column: 3, scope: !5013)
!5114 = !DILocation(line: 267, column: 38, scope: !5008)
!5115 = !DILocation(line: 267, column: 43, scope: !5008)
!5116 = !DILocation(line: 267, column: 36, scope: !5008)
!5117 = !DILocation(line: 267, column: 3, scope: !5008)
!5118 = distinct !{!5118, !5010, !5119, !1877}
!5119 = !DILocation(line: 310, column: 3, scope: !5003)
!5120 = !DILocation(line: 311, column: 15, scope: !5004)
!5121 = !DILocation(line: 311, column: 3, scope: !5004)
!5122 = !DILocation(line: 312, column: 2, scope: !5004)
!5123 = !DILocation(line: 314, column: 9, scope: !4983)
!5124 = !DILocation(line: 314, column: 2, scope: !4983)
!5125 = distinct !DISubprogram(name: "reload_ssl_certs", scope: !65, file: !65, line: 3215, type: !5126, scopeLine: 3216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !1429)
!5126 = !DISubroutineType(types: !5127)
!5127 = !{null, !31, !579, !405}
!5128 = !DILocalVariable(name: "sock", arg: 1, scope: !5125, file: !65, line: 3215, type: !31)
!5129 = !DILocation(line: 3215, column: 46, scope: !5125)
!5130 = !DILocalVariable(name: "events", arg: 2, scope: !5125, file: !65, line: 3215, type: !579)
!5131 = !DILocation(line: 3215, column: 58, scope: !5125)
!5132 = !DILocalVariable(name: "args", arg: 3, scope: !5125, file: !65, line: 3215, type: !405)
!5133 = !DILocation(line: 3215, column: 72, scope: !5125)
!5134 = !DILocation(line: 3217, column: 2, scope: !5125)
!5135 = !DILocation(line: 3218, column: 2, scope: !5125)
!5136 = !DILocation(line: 3219, column: 18, scope: !5137)
!5137 = distinct !DILexicalBlock(scope: !5125, file: !65, line: 3219, column: 6)
!5138 = !DILocation(line: 3219, column: 36, scope: !5137)
!5139 = !DILocation(line: 3219, column: 6, scope: !5125)
!5140 = !DILocation(line: 3220, column: 28, scope: !5137)
!5141 = !DILocation(line: 3220, column: 3, scope: !5137)
!5142 = !DILocation(line: 3222, column: 2, scope: !5125)
!5143 = !DILocation(line: 3222, column: 2, scope: !5144)
!5144 = distinct !DILexicalBlock(scope: !5125, file: !65, line: 3222, column: 2)
!5145 = !DILocation(line: 3223, column: 2, scope: !5125)
!5146 = !DILocation(line: 3223, column: 2, scope: !5147)
!5147 = distinct !DILexicalBlock(scope: !5125, file: !65, line: 3223, column: 2)
!5148 = !DILocation(line: 3224, column: 2, scope: !5125)
!5149 = !DILocation(line: 3224, column: 2, scope: !5150)
!5150 = distinct !DILexicalBlock(scope: !5125, file: !65, line: 3224, column: 2)
!5151 = !DILocation(line: 3225, column: 1, scope: !5125)
!5152 = distinct !DISubprogram(name: "drop_privileges", scope: !65, file: !65, line: 2166, type: !3050, scopeLine: 2167, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !1429)
!5153 = !DILocation(line: 2168, column: 2, scope: !5152)
!5154 = !DILocation(line: 2169, column: 5, scope: !5155)
!5155 = distinct !DILexicalBlock(scope: !5152, file: !65, line: 2169, column: 5)
!5156 = !DILocation(line: 2169, column: 5, scope: !5152)
!5157 = !DILocation(line: 2170, column: 6, scope: !5158)
!5158 = distinct !DILexicalBlock(scope: !5159, file: !65, line: 2170, column: 6)
!5159 = distinct !DILexicalBlock(scope: !5155, file: !65, line: 2169, column: 22)
!5160 = !DILocation(line: 2170, column: 18, scope: !5158)
!5161 = !DILocation(line: 2170, column: 15, scope: !5158)
!5162 = !DILocation(line: 2170, column: 6, scope: !5159)
!5163 = !DILocation(line: 2171, column: 15, scope: !5164)
!5164 = distinct !DILexicalBlock(scope: !5165, file: !65, line: 2171, column: 8)
!5165 = distinct !DILexicalBlock(scope: !5158, file: !65, line: 2170, column: 31)
!5166 = !DILocation(line: 2171, column: 8, scope: !5164)
!5167 = !DILocation(line: 2171, column: 28, scope: !5164)
!5168 = !DILocation(line: 2171, column: 8, scope: !5165)
!5169 = !DILocation(line: 2172, column: 5, scope: !5170)
!5170 = distinct !DILexicalBlock(scope: !5164, file: !65, line: 2171, column: 34)
!5171 = !DILocation(line: 2173, column: 5, scope: !5170)
!5172 = !DILocation(line: 2175, column: 92, scope: !5173)
!5173 = distinct !DILexicalBlock(scope: !5164, file: !65, line: 2174, column: 11)
!5174 = !DILocation(line: 2175, column: 77, scope: !5173)
!5175 = !DILocation(line: 2175, column: 5, scope: !5173)
!5176 = !DILocation(line: 2177, column: 3, scope: !5165)
!5177 = !DILocation(line: 2178, column: 92, scope: !5178)
!5178 = distinct !DILexicalBlock(scope: !5158, file: !65, line: 2177, column: 10)
!5179 = !DILocation(line: 2178, column: 77, scope: !5178)
!5180 = !DILocation(line: 2178, column: 4, scope: !5178)
!5181 = !DILocation(line: 2180, column: 2, scope: !5159)
!5182 = !DILocation(line: 2182, column: 5, scope: !5183)
!5183 = distinct !DILexicalBlock(scope: !5152, file: !65, line: 2182, column: 5)
!5184 = !DILocation(line: 2182, column: 5, scope: !5152)
!5185 = !DILocation(line: 2183, column: 6, scope: !5186)
!5186 = distinct !DILexicalBlock(scope: !5187, file: !65, line: 2183, column: 6)
!5187 = distinct !DILexicalBlock(scope: !5183, file: !65, line: 2182, column: 21)
!5188 = !DILocation(line: 2183, column: 20, scope: !5186)
!5189 = !DILocation(line: 2183, column: 17, scope: !5186)
!5190 = !DILocation(line: 2183, column: 6, scope: !5187)
!5191 = !DILocation(line: 2184, column: 15, scope: !5192)
!5192 = distinct !DILexicalBlock(scope: !5193, file: !65, line: 2184, column: 8)
!5193 = distinct !DILexicalBlock(scope: !5186, file: !65, line: 2183, column: 30)
!5194 = !DILocation(line: 2184, column: 8, scope: !5192)
!5195 = !DILocation(line: 2184, column: 27, scope: !5192)
!5196 = !DILocation(line: 2184, column: 8, scope: !5193)
!5197 = !DILocation(line: 2185, column: 5, scope: !5198)
!5198 = distinct !DILexicalBlock(scope: !5192, file: !65, line: 2184, column: 33)
!5199 = !DILocation(line: 2186, column: 5, scope: !5198)
!5200 = !DILocation(line: 2188, column: 91, scope: !5201)
!5201 = distinct !DILexicalBlock(scope: !5192, file: !65, line: 2187, column: 11)
!5202 = !DILocation(line: 2188, column: 76, scope: !5201)
!5203 = !DILocation(line: 2188, column: 5, scope: !5201)
!5204 = !DILocation(line: 2190, column: 3, scope: !5193)
!5205 = !DILocation(line: 2191, column: 91, scope: !5206)
!5206 = distinct !DILexicalBlock(scope: !5186, file: !65, line: 2190, column: 10)
!5207 = !DILocation(line: 2191, column: 76, scope: !5206)
!5208 = !DILocation(line: 2191, column: 4, scope: !5206)
!5209 = !DILocation(line: 2193, column: 2, scope: !5187)
!5210 = !DILocation(line: 2194, column: 1, scope: !5152)
!5211 = distinct !DISubprogram(name: "disconnect_database", scope: !65, file: !65, line: 1798, type: !4866, scopeLine: 1799, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !1429)
!5212 = !DILocalVariable(name: "dbd", scope: !5211, file: !65, line: 1800, type: !5213)
!5213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5214, size: 64)
!5214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5215)
!5215 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_dbdriver_t", file: !5216, line: 77, baseType: !5217)
!5216 = !DIFile(filename: "src/apps/relay/dbdrivers/dbdriver.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "00319dc97026a2c0105cbae0fcb396b3")
!5217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_turn_dbdriver_t", file: !5216, line: 50, size: 1664, elements: !5218)
!5218 = !{!5219, !5224, !5228, !5232, !5236, !5240, !5241, !5242, !5243, !5244, !5248, !5249, !5253, !5254, !5258, !5263, !5267, !5271, !5289, !5293, !5297, !5301, !5305, !5309, !5310, !5314}
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "get_auth_secrets", scope: !5217, file: !5216, line: 51, baseType: !5220, size: 64)
!5220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5221, size: 64)
!5221 = !DISubroutineType(types: !5222)
!5222 = !{!31, !5223, !478}
!5223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "get_user_key", scope: !5217, file: !5216, line: 52, baseType: !5225, size: 64, offset: 64)
!5225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5226, size: 64)
!5226 = !DISubroutineType(types: !5227)
!5227 = !{!31, !478, !478, !478}
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "set_user_key", scope: !5217, file: !5216, line: 53, baseType: !5229, size: 64, offset: 128)
!5229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5230, size: 64)
!5230 = !DISubroutineType(types: !5231)
!5231 = !{!31, !478, !478, !473}
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "del_user", scope: !5217, file: !5216, line: 54, baseType: !5233, size: 64, offset: 192)
!5233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5234, size: 64)
!5234 = !DISubroutineType(types: !5235)
!5235 = !{!31, !478, !478}
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "list_users", scope: !5217, file: !5216, line: 55, baseType: !5237, size: 64, offset: 256)
!5237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5238, size: 64)
!5238 = !DISubroutineType(types: !5239)
!5239 = !{!31, !478, !5223, !5223}
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "list_secrets", scope: !5217, file: !5216, line: 56, baseType: !5237, size: 64, offset: 320)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "del_secret", scope: !5217, file: !5216, line: 57, baseType: !5233, size: 64, offset: 384)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "set_secret", scope: !5217, file: !5216, line: 58, baseType: !5233, size: 64, offset: 448)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "add_origin", scope: !5217, file: !5216, line: 59, baseType: !5233, size: 64, offset: 512)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "del_origin", scope: !5217, file: !5216, line: 60, baseType: !5245, size: 64, offset: 576)
!5245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5246, size: 64)
!5246 = !DISubroutineType(types: !5247)
!5247 = !{!31, !478}
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "list_origins", scope: !5217, file: !5216, line: 61, baseType: !5237, size: 64, offset: 640)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "set_realm_option_one", scope: !5217, file: !5216, line: 62, baseType: !5250, size: 64, offset: 704)
!5250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5251, size: 64)
!5251 = !DISubroutineType(types: !5252)
!5252 = !{!31, !478, !475, !473}
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "list_realm_options", scope: !5217, file: !5216, line: 63, baseType: !5245, size: 64, offset: 768)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "auth_ping", scope: !5217, file: !5216, line: 64, baseType: !5255, size: 64, offset: 832)
!5255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5256, size: 64)
!5256 = !DISubroutineType(types: !5257)
!5257 = !{null, !405}
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "get_ip_list", scope: !5217, file: !5216, line: 65, baseType: !5259, size: 64, offset: 896)
!5259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5260, size: 64)
!5260 = !DISubroutineType(types: !5261)
!5261 = !{!31, !473, !5262}
!5262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "set_permission_ip", scope: !5217, file: !5216, line: 66, baseType: !5264, size: 64, offset: 960)
!5264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5265, size: 64)
!5265 = !DISubroutineType(types: !5266)
!5266 = !{!31, !473, !478, !473, !31}
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "reread_realms", scope: !5217, file: !5216, line: 67, baseType: !5268, size: 64, offset: 1024)
!5268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5269, size: 64)
!5269 = !DISubroutineType(types: !5270)
!5270 = !{null, !5223}
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "set_oauth_key", scope: !5217, file: !5216, line: 68, baseType: !5272, size: 64, offset: 1088)
!5272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5273, size: 64)
!5273 = !DISubroutineType(types: !5274)
!5274 = !{!31, !5275}
!5275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5276, size: 64)
!5276 = !DIDerivedType(tag: DW_TAG_typedef, name: "oauth_key_data_raw", file: !5277, line: 144, baseType: !5278)
!5277 = !DIFile(filename: "src/apps/common/apputils.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "5f4d9112d5c1617ebc273618c0760b4a")
!5278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_oauth_key_data_raw", file: !5277, line: 135, size: 4800, elements: !5279)
!5279 = !{!5280, !5284, !5285, !5286, !5287, !5288}
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "kid", scope: !5278, file: !5277, line: 136, baseType: !5281, size: 1032)
!5281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 1032, elements: !5282)
!5282 = !{!5283}
!5283 = !DISubrange(count: 129)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "ikm_key", scope: !5278, file: !5277, line: 137, baseType: !740, size: 2056, offset: 1032)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !5278, file: !5277, line: 138, baseType: !497, size: 64, offset: 3136)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "lifetime", scope: !5278, file: !5277, line: 139, baseType: !425, size: 32, offset: 3200)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "as_rs_alg", scope: !5278, file: !5277, line: 140, baseType: !1544, size: 520, offset: 3232)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "realm", scope: !5278, file: !5277, line: 141, baseType: !502, size: 1024, offset: 3752)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "get_oauth_key", scope: !5217, file: !5216, line: 69, baseType: !5290, size: 64, offset: 1152)
!5290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5291, size: 64)
!5291 = !DISubroutineType(types: !5292)
!5292 = !{!31, !457, !5275}
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "del_oauth_key", scope: !5217, file: !5216, line: 70, baseType: !5294, size: 64, offset: 1216)
!5294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5295, size: 64)
!5295 = !DISubroutineType(types: !5296)
!5296 = !{!31, !457}
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "list_oauth_keys", scope: !5217, file: !5216, line: 71, baseType: !5298, size: 64, offset: 1280)
!5298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5299, size: 64)
!5299 = !DISubroutineType(types: !5300)
!5300 = !{!31, !5223, !5223, !5223, !5223, !5223}
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "get_admin_user", scope: !5217, file: !5216, line: 72, baseType: !5302, size: 64, offset: 1344)
!5302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5303, size: 64)
!5303 = !DISubroutineType(types: !5304)
!5304 = !{!31, !457, !478, !478}
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "set_admin_user", scope: !5217, file: !5216, line: 73, baseType: !5306, size: 64, offset: 1408)
!5306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5307, size: 64)
!5307 = !DISubroutineType(types: !5308)
!5308 = !{!31, !457, !457, !457}
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "del_admin_user", scope: !5217, file: !5216, line: 74, baseType: !5294, size: 64, offset: 1472)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "list_admin_users", scope: !5217, file: !5216, line: 75, baseType: !5311, size: 64, offset: 1536)
!5311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5312, size: 64)
!5312 = !DISubroutineType(types: !5313)
!5313 = !{!31, !31}
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !5217, file: !5216, line: 76, baseType: !5315, size: 64, offset: 1600)
!5315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3050, size: 64)
!5316 = !DILocation(line: 1800, column: 26, scope: !5211)
!5317 = !DILocation(line: 1800, column: 32, scope: !5211)
!5318 = !DILocation(line: 1801, column: 6, scope: !5319)
!5319 = distinct !DILexicalBlock(scope: !5211, file: !65, line: 1801, column: 6)
!5320 = !DILocation(line: 1801, column: 10, scope: !5319)
!5321 = !DILocation(line: 1801, column: 13, scope: !5319)
!5322 = !DILocation(line: 1801, column: 18, scope: !5319)
!5323 = !DILocation(line: 1801, column: 6, scope: !5211)
!5324 = !DILocation(line: 1802, column: 3, scope: !5325)
!5325 = distinct !DILexicalBlock(scope: !5319, file: !65, line: 1801, column: 30)
!5326 = !DILocation(line: 1802, column: 8, scope: !5325)
!5327 = !DILocation(line: 1803, column: 2, scope: !5325)
!5328 = !DILocation(line: 1804, column: 2, scope: !5211)
!5329 = distinct !DISubprogram(name: "coturn_locking_function", scope: !65, file: !65, line: 2580, type: !5330, scopeLine: 2580, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !1429)
!5330 = !DISubroutineType(types: !5331)
!5331 = !{null, !31, !31, !473, !31}
!5332 = !DILocalVariable(name: "mode", arg: 1, scope: !5329, file: !65, line: 2580, type: !31)
!5333 = !DILocation(line: 2580, column: 34, scope: !5329)
!5334 = !DILocalVariable(name: "n", arg: 2, scope: !5329, file: !65, line: 2580, type: !31)
!5335 = !DILocation(line: 2580, column: 44, scope: !5329)
!5336 = !DILocalVariable(name: "file", arg: 3, scope: !5329, file: !65, line: 2580, type: !473)
!5337 = !DILocation(line: 2580, column: 59, scope: !5329)
!5338 = !DILocalVariable(name: "line", arg: 4, scope: !5329, file: !65, line: 2580, type: !31)
!5339 = !DILocation(line: 2580, column: 69, scope: !5329)
!5340 = !DILocation(line: 2581, column: 3, scope: !5329)
!5341 = !DILocation(line: 2581, column: 3, scope: !5342)
!5342 = distinct !DILexicalBlock(scope: !5329, file: !65, line: 2581, column: 3)
!5343 = !DILocation(line: 2582, column: 3, scope: !5329)
!5344 = !DILocation(line: 2582, column: 3, scope: !5345)
!5345 = distinct !DILexicalBlock(scope: !5329, file: !65, line: 2582, column: 3)
!5346 = !DILocation(line: 2583, column: 6, scope: !5347)
!5347 = distinct !DILexicalBlock(scope: !5329, file: !65, line: 2583, column: 6)
!5348 = !DILocation(line: 2583, column: 28, scope: !5347)
!5349 = !DILocation(line: 2583, column: 32, scope: !5347)
!5350 = !DILocation(line: 2583, column: 34, scope: !5347)
!5351 = !DILocation(line: 2583, column: 6, scope: !5329)
!5352 = !DILocation(line: 2584, column: 8, scope: !5353)
!5353 = distinct !DILexicalBlock(scope: !5354, file: !65, line: 2584, column: 8)
!5354 = distinct !DILexicalBlock(scope: !5347, file: !65, line: 2583, column: 57)
!5355 = !DILocation(line: 2584, column: 13, scope: !5353)
!5356 = !DILocation(line: 2584, column: 8, scope: !5354)
!5357 = !DILocation(line: 2585, column: 36, scope: !5353)
!5358 = !DILocation(line: 2585, column: 26, scope: !5353)
!5359 = !DILocation(line: 2585, column: 5, scope: !5353)
!5360 = !DILocation(line: 2587, column: 38, scope: !5353)
!5361 = !DILocation(line: 2587, column: 28, scope: !5353)
!5362 = !DILocation(line: 2587, column: 5, scope: !5353)
!5363 = !DILocation(line: 2588, column: 3, scope: !5354)
!5364 = !DILocation(line: 2589, column: 1, scope: !5329)
!5365 = distinct !DISubprogram(name: "coturn_id_function", scope: !65, file: !65, line: 2593, type: !5366, scopeLine: 2594, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !1429)
!5366 = !DISubroutineType(types: !5367)
!5367 = !{null, !5368}
!5368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5369, size: 64)
!5369 = !DIDerivedType(tag: DW_TAG_typedef, name: "CRYPTO_THREADID", file: !5370, line: 308, baseType: !5371)
!5370 = !DIFile(filename: "/usr/include/openssl/crypto.h", directory: "", checksumkind: CSK_MD5, checksum: "87be24832dcac0048db871b8f75a3306")
!5371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_threadid_st", file: !5370, line: 306, size: 32, elements: !5372)
!5372 = !{!5373}
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !5371, file: !5370, line: 307, baseType: !31, size: 32)
!5374 = !DILocalVariable(name: "ctid", arg: 1, scope: !5365, file: !65, line: 2593, type: !5368)
!5375 = !DILocation(line: 2593, column: 42, scope: !5365)
!5376 = !DILocation(line: 2595, column: 2, scope: !5365)
!5377 = !DILocation(line: 2595, column: 2, scope: !5378)
!5378 = distinct !DILexicalBlock(scope: !5365, file: !65, line: 2595, column: 2)
!5379 = !DILocation(line: 2597, column: 1, scope: !5365)
!5380 = distinct !DISubprogram(name: "THREAD_cleanup", scope: !65, file: !65, line: 2635, type: !4866, scopeLine: 2635, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !1429)
!5381 = !DILocalVariable(name: "i", scope: !5380, file: !65, line: 2639, type: !31)
!5382 = !DILocation(line: 2639, column: 7, scope: !5380)
!5383 = !DILocation(line: 2641, column: 8, scope: !5384)
!5384 = distinct !DILexicalBlock(scope: !5380, file: !65, line: 2641, column: 7)
!5385 = !DILocation(line: 2641, column: 7, scope: !5380)
!5386 = !DILocation(line: 2642, column: 5, scope: !5384)
!5387 = !DILocation(line: 2651, column: 10, scope: !5388)
!5388 = distinct !DILexicalBlock(scope: !5380, file: !65, line: 2651, column: 3)
!5389 = !DILocation(line: 2651, column: 8, scope: !5388)
!5390 = !DILocation(line: 2651, column: 15, scope: !5391)
!5391 = distinct !DILexicalBlock(scope: !5388, file: !65, line: 2651, column: 3)
!5392 = !DILocation(line: 2651, column: 17, scope: !5391)
!5393 = !DILocation(line: 2651, column: 3, scope: !5388)
!5394 = !DILocation(line: 2652, column: 38, scope: !5395)
!5395 = distinct !DILexicalBlock(scope: !5391, file: !65, line: 2651, column: 44)
!5396 = !DILocation(line: 2652, column: 28, scope: !5395)
!5397 = !DILocation(line: 2652, column: 4, scope: !5395)
!5398 = !DILocation(line: 2653, column: 3, scope: !5395)
!5399 = !DILocation(line: 2651, column: 40, scope: !5391)
!5400 = !DILocation(line: 2651, column: 3, scope: !5391)
!5401 = distinct !{!5401, !5393, !5402, !1877}
!5402 = !DILocation(line: 2653, column: 3, scope: !5388)
!5403 = !DILocation(line: 2655, column: 25, scope: !5380)
!5404 = !DILocation(line: 2659, column: 3, scope: !5380)
!5405 = !DILocation(line: 2660, column: 1, scope: !5380)
!5406 = distinct !DISubprogram(name: "parse_arg_string", scope: !65, file: !65, line: 1653, type: !5407, scopeLine: 1654, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !1429)
!5407 = !DISubroutineType(types: !5408)
!5408 = !{!31, !459, !1323, !716}
!5409 = !DILocalVariable(name: "sarg", arg: 1, scope: !5406, file: !65, line: 1653, type: !459)
!5410 = !DILocation(line: 1653, column: 35, scope: !5406)
!5411 = !DILocalVariable(name: "c", arg: 2, scope: !5406, file: !65, line: 1653, type: !1323)
!5412 = !DILocation(line: 1653, column: 46, scope: !5406)
!5413 = !DILocalVariable(name: "value", arg: 3, scope: !5406, file: !65, line: 1653, type: !716)
!5414 = !DILocation(line: 1653, column: 56, scope: !5406)
!5415 = !DILocalVariable(name: "i", scope: !5406, file: !65, line: 1655, type: !31)
!5416 = !DILocation(line: 1655, column: 6, scope: !5406)
!5417 = !DILocalVariable(name: "name", scope: !5406, file: !65, line: 1656, type: !459)
!5418 = !DILocation(line: 1656, column: 8, scope: !5406)
!5419 = !DILocation(line: 1656, column: 15, scope: !5406)
!5420 = !DILocation(line: 1657, column: 2, scope: !5406)
!5421 = !DILocation(line: 1657, column: 9, scope: !5406)
!5422 = !DILocation(line: 1657, column: 8, scope: !5406)
!5423 = !DILocation(line: 1658, column: 8, scope: !5424)
!5424 = distinct !DILexicalBlock(scope: !5425, file: !65, line: 1658, column: 6)
!5425 = distinct !DILexicalBlock(scope: !5406, file: !65, line: 1657, column: 15)
!5426 = !DILocation(line: 1658, column: 7, scope: !5424)
!5427 = !DILocation(line: 1658, column: 12, scope: !5424)
!5428 = !DILocation(line: 1658, column: 19, scope: !5424)
!5429 = !DILocation(line: 1658, column: 24, scope: !5424)
!5430 = !DILocation(line: 1658, column: 23, scope: !5424)
!5431 = !DILocation(line: 1658, column: 28, scope: !5424)
!5432 = !DILocation(line: 1658, column: 35, scope: !5424)
!5433 = !DILocation(line: 1658, column: 40, scope: !5424)
!5434 = !DILocation(line: 1658, column: 39, scope: !5424)
!5435 = !DILocation(line: 1658, column: 44, scope: !5424)
!5436 = !DILocation(line: 1658, column: 6, scope: !5425)
!5437 = !DILocation(line: 1659, column: 5, scope: !5438)
!5438 = distinct !DILexicalBlock(scope: !5424, file: !65, line: 1658, column: 53)
!5439 = !DILocation(line: 1659, column: 9, scope: !5438)
!5440 = !DILocation(line: 1660, column: 4, scope: !5438)
!5441 = !DILocation(line: 1661, column: 5, scope: !5442)
!5442 = distinct !DILexicalBlock(scope: !5438, file: !65, line: 1660, column: 7)
!5443 = !DILocation(line: 1662, column: 4, scope: !5442)
!5444 = !DILocation(line: 1662, column: 14, scope: !5438)
!5445 = !DILocation(line: 1662, column: 13, scope: !5438)
!5446 = !DILocation(line: 1662, column: 18, scope: !5438)
!5447 = !DILocation(line: 1662, column: 25, scope: !5438)
!5448 = !DILocation(line: 1662, column: 30, scope: !5438)
!5449 = !DILocation(line: 1662, column: 29, scope: !5438)
!5450 = !DILocation(line: 1662, column: 34, scope: !5438)
!5451 = !DILocation(line: 1662, column: 41, scope: !5438)
!5452 = !DILocation(line: 1662, column: 46, scope: !5438)
!5453 = !DILocation(line: 1662, column: 45, scope: !5438)
!5454 = !DILocation(line: 1662, column: 50, scope: !5438)
!5455 = distinct !{!5455, !5440, !5456, !1877}
!5456 = !DILocation(line: 1662, column: 57, scope: !5438)
!5457 = !DILocation(line: 1663, column: 13, scope: !5438)
!5458 = !DILocation(line: 1663, column: 5, scope: !5438)
!5459 = !DILocation(line: 1663, column: 11, scope: !5438)
!5460 = !DILocation(line: 1664, column: 4, scope: !5438)
!5461 = !DILocation(line: 1666, column: 3, scope: !5425)
!5462 = !DILocation(line: 1667, column: 10, scope: !5425)
!5463 = !DILocation(line: 1667, column: 4, scope: !5425)
!5464 = !DILocation(line: 1667, column: 9, scope: !5425)
!5465 = distinct !{!5465, !5420, !5466, !1877}
!5466 = !DILocation(line: 1668, column: 2, scope: !5406)
!5467 = !DILocation(line: 1671, column: 5, scope: !5468)
!5468 = distinct !DILexicalBlock(scope: !5406, file: !65, line: 1671, column: 5)
!5469 = !DILocation(line: 1671, column: 11, scope: !5468)
!5470 = !DILocation(line: 1671, column: 15, scope: !5468)
!5471 = !DILocation(line: 1671, column: 14, scope: !5468)
!5472 = !DILocation(line: 1671, column: 21, scope: !5468)
!5473 = !DILocation(line: 1671, column: 26, scope: !5468)
!5474 = !DILocation(line: 1671, column: 25, scope: !5468)
!5475 = !DILocation(line: 1671, column: 24, scope: !5468)
!5476 = !DILocation(line: 1671, column: 31, scope: !5468)
!5477 = !DILocation(line: 1671, column: 5, scope: !5406)
!5478 = !DILocation(line: 1672, column: 4, scope: !5479)
!5479 = distinct !DILexicalBlock(scope: !5468, file: !65, line: 1671, column: 39)
!5480 = !DILocation(line: 1672, column: 10, scope: !5479)
!5481 = !DILocalVariable(name: "len", scope: !5479, file: !65, line: 1673, type: !673)
!5482 = !DILocation(line: 1673, column: 10, scope: !5479)
!5483 = !DILocation(line: 1673, column: 24, scope: !5479)
!5484 = !DILocation(line: 1673, column: 23, scope: !5479)
!5485 = !DILocation(line: 1673, column: 16, scope: !5479)
!5486 = !DILocation(line: 1674, column: 3, scope: !5479)
!5487 = !DILocation(line: 1674, column: 9, scope: !5479)
!5488 = !DILocation(line: 1674, column: 12, scope: !5479)
!5489 = !DILocation(line: 1674, column: 15, scope: !5479)
!5490 = !DILocation(line: 1675, column: 8, scope: !5479)
!5491 = !DILocation(line: 1675, column: 7, scope: !5479)
!5492 = !DILocation(line: 1675, column: 15, scope: !5479)
!5493 = !DILocation(line: 1675, column: 18, scope: !5479)
!5494 = !DILocation(line: 1675, column: 6, scope: !5479)
!5495 = !DILocation(line: 1675, column: 21, scope: !5479)
!5496 = !DILocation(line: 1675, column: 29, scope: !5479)
!5497 = !DILocation(line: 1676, column: 8, scope: !5479)
!5498 = !DILocation(line: 1676, column: 7, scope: !5479)
!5499 = !DILocation(line: 1676, column: 15, scope: !5479)
!5500 = !DILocation(line: 1676, column: 18, scope: !5479)
!5501 = !DILocation(line: 1676, column: 6, scope: !5479)
!5502 = !DILocation(line: 1676, column: 21, scope: !5479)
!5503 = !DILocation(line: 1676, column: 29, scope: !5479)
!5504 = !DILocation(line: 1677, column: 8, scope: !5479)
!5505 = !DILocation(line: 1677, column: 7, scope: !5479)
!5506 = !DILocation(line: 1677, column: 15, scope: !5479)
!5507 = !DILocation(line: 1677, column: 18, scope: !5479)
!5508 = !DILocation(line: 1677, column: 6, scope: !5479)
!5509 = !DILocation(line: 1677, column: 21, scope: !5479)
!5510 = !DILocation(line: 1677, column: 28, scope: !5479)
!5511 = !DILocation(line: 1678, column: 8, scope: !5479)
!5512 = !DILocation(line: 1678, column: 7, scope: !5479)
!5513 = !DILocation(line: 1678, column: 15, scope: !5479)
!5514 = !DILocation(line: 1678, column: 18, scope: !5479)
!5515 = !DILocation(line: 1678, column: 6, scope: !5479)
!5516 = !DILocation(line: 1678, column: 21, scope: !5479)
!5517 = !DILocation(line: 0, scope: !5479)
!5518 = !DILocation(line: 1680, column: 6, scope: !5519)
!5519 = distinct !DILexicalBlock(scope: !5479, file: !65, line: 1679, column: 9)
!5520 = !DILocation(line: 1680, column: 5, scope: !5519)
!5521 = !DILocation(line: 1680, column: 13, scope: !5519)
!5522 = !DILocation(line: 1680, column: 4, scope: !5519)
!5523 = !DILocation(line: 1680, column: 19, scope: !5519)
!5524 = distinct !{!5524, !5486, !5525, !1877}
!5525 = !DILocation(line: 1681, column: 3, scope: !5479)
!5526 = !DILocation(line: 1682, column: 6, scope: !5527)
!5527 = distinct !DILexicalBlock(scope: !5479, file: !65, line: 1682, column: 6)
!5528 = !DILocation(line: 1682, column: 9, scope: !5527)
!5529 = !DILocation(line: 1682, column: 12, scope: !5527)
!5530 = !DILocation(line: 1682, column: 17, scope: !5527)
!5531 = !DILocation(line: 1682, column: 16, scope: !5527)
!5532 = !DILocation(line: 1682, column: 24, scope: !5527)
!5533 = !DILocation(line: 1682, column: 27, scope: !5527)
!5534 = !DILocation(line: 1682, column: 15, scope: !5527)
!5535 = !DILocation(line: 1682, column: 30, scope: !5527)
!5536 = !DILocation(line: 1682, column: 6, scope: !5479)
!5537 = !DILocation(line: 1683, column: 6, scope: !5538)
!5538 = distinct !DILexicalBlock(scope: !5527, file: !65, line: 1682, column: 38)
!5539 = !DILocation(line: 1683, column: 5, scope: !5538)
!5540 = !DILocation(line: 1683, column: 13, scope: !5538)
!5541 = !DILocation(line: 1683, column: 4, scope: !5538)
!5542 = !DILocation(line: 1683, column: 19, scope: !5538)
!5543 = !DILocation(line: 1684, column: 3, scope: !5538)
!5544 = !DILocation(line: 1685, column: 2, scope: !5479)
!5545 = !DILocation(line: 1687, column: 2, scope: !5406)
!5546 = !DILocation(line: 1687, column: 21, scope: !5406)
!5547 = !DILocation(line: 1687, column: 8, scope: !5406)
!5548 = !DILocation(line: 1687, column: 24, scope: !5406)
!5549 = !DILocation(line: 1688, column: 26, scope: !5550)
!5550 = distinct !DILexicalBlock(scope: !5551, file: !65, line: 1688, column: 6)
!5551 = distinct !DILexicalBlock(scope: !5406, file: !65, line: 1687, column: 30)
!5552 = !DILocation(line: 1688, column: 13, scope: !5550)
!5553 = !DILocation(line: 1688, column: 29, scope: !5550)
!5554 = !DILocation(line: 1688, column: 34, scope: !5550)
!5555 = !DILocation(line: 1688, column: 6, scope: !5550)
!5556 = !DILocation(line: 1688, column: 6, scope: !5551)
!5557 = !DILocation(line: 1689, column: 4, scope: !5558)
!5558 = distinct !DILexicalBlock(scope: !5550, file: !65, line: 1688, column: 41)
!5559 = !DILocation(line: 1690, column: 4, scope: !5558)
!5560 = distinct !{!5560, !5545, !5561, !1877}
!5561 = !DILocation(line: 1694, column: 2, scope: !5406)
!5562 = !DILocation(line: 1692, column: 19, scope: !5551)
!5563 = !DILocation(line: 1692, column: 6, scope: !5551)
!5564 = !DILocation(line: 1692, column: 22, scope: !5551)
!5565 = !DILocation(line: 1692, column: 4, scope: !5551)
!5566 = !DILocation(line: 1692, column: 5, scope: !5551)
!5567 = !DILocation(line: 1693, column: 3, scope: !5551)
!5568 = !DILocation(line: 1696, column: 2, scope: !5406)
!5569 = !DILocation(line: 1697, column: 1, scope: !5406)
!5570 = distinct !DISubprogram(name: "get_int_value", scope: !65, file: !65, line: 1152, type: !5571, scopeLine: 1153, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !1429)
!5571 = !DISubroutineType(types: !5572)
!5572 = !{!31, !473, !31}
!5573 = !DILocalVariable(name: "s", arg: 1, scope: !5570, file: !65, line: 1152, type: !473)
!5574 = !DILocation(line: 1152, column: 38, scope: !5570)
!5575 = !DILocalVariable(name: "default_value", arg: 2, scope: !5570, file: !65, line: 1152, type: !31)
!5576 = !DILocation(line: 1152, column: 45, scope: !5570)
!5577 = !DILocation(line: 1154, column: 7, scope: !5578)
!5578 = distinct !DILexicalBlock(scope: !5570, file: !65, line: 1154, column: 6)
!5579 = !DILocation(line: 1154, column: 9, scope: !5578)
!5580 = !DILocation(line: 1154, column: 14, scope: !5578)
!5581 = !DILocation(line: 1154, column: 13, scope: !5578)
!5582 = !DILocation(line: 1154, column: 6, scope: !5570)
!5583 = !DILocation(line: 1155, column: 10, scope: !5578)
!5584 = !DILocation(line: 1155, column: 3, scope: !5578)
!5585 = !DILocation(line: 1156, column: 14, scope: !5570)
!5586 = !DILocation(line: 1156, column: 9, scope: !5570)
!5587 = !DILocation(line: 1156, column: 2, scope: !5570)
!5588 = !DILocation(line: 1157, column: 1, scope: !5570)
!5589 = distinct !DISubprogram(name: "THREAD_setup", scope: !65, file: !65, line: 2608, type: !4866, scopeLine: 2608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !1429)
!5590 = !DILocalVariable(name: "i", scope: !5589, file: !65, line: 2612, type: !31)
!5591 = !DILocation(line: 2612, column: 6, scope: !5589)
!5592 = !DILocation(line: 2614, column: 17, scope: !5589)
!5593 = !DILocation(line: 2616, column: 9, scope: !5594)
!5594 = distinct !DILexicalBlock(scope: !5589, file: !65, line: 2616, column: 2)
!5595 = !DILocation(line: 2616, column: 7, scope: !5594)
!5596 = !DILocation(line: 2616, column: 14, scope: !5597)
!5597 = distinct !DILexicalBlock(scope: !5594, file: !65, line: 2616, column: 2)
!5598 = !DILocation(line: 2616, column: 16, scope: !5597)
!5599 = !DILocation(line: 2616, column: 2, scope: !5594)
!5600 = !DILocation(line: 2617, column: 34, scope: !5601)
!5601 = distinct !DILexicalBlock(scope: !5597, file: !65, line: 2616, column: 43)
!5602 = !DILocation(line: 2617, column: 24, scope: !5601)
!5603 = !DILocation(line: 2617, column: 3, scope: !5601)
!5604 = !DILocation(line: 2618, column: 2, scope: !5601)
!5605 = !DILocation(line: 2616, column: 39, scope: !5597)
!5606 = !DILocation(line: 2616, column: 2, scope: !5597)
!5607 = distinct !{!5607, !5599, !5608, !1877}
!5608 = !DILocation(line: 2618, column: 2, scope: !5594)
!5609 = !DILocation(line: 2620, column: 24, scope: !5589)
!5610 = !DILocation(line: 2631, column: 2, scope: !5589)
!5611 = distinct !DISubprogram(name: "adjust_key_file_names", scope: !65, file: !65, line: 2708, type: !3050, scopeLine: 2709, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !1429)
!5612 = !DILocation(line: 2710, column: 5, scope: !5613)
!5613 = distinct !DILexicalBlock(scope: !5611, file: !65, line: 2710, column: 5)
!5614 = !DILocation(line: 2710, column: 5, scope: !5611)
!5615 = !DILocation(line: 2711, column: 3, scope: !5613)
!5616 = !DILocation(line: 2712, column: 2, scope: !5611)
!5617 = !DILocation(line: 2713, column: 2, scope: !5611)
!5618 = !DILocation(line: 2714, column: 5, scope: !5619)
!5619 = distinct !DILexicalBlock(scope: !5611, file: !65, line: 2714, column: 5)
!5620 = !DILocation(line: 2714, column: 5, scope: !5611)
!5621 = !DILocation(line: 2715, column: 3, scope: !5619)
!5622 = !DILocation(line: 2716, column: 1, scope: !5611)
!5623 = distinct !DISubprogram(name: "openssl_load_certificates", scope: !65, file: !65, line: 3168, type: !3050, scopeLine: 3169, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !1429)
!5624 = !DILocation(line: 3170, column: 2, scope: !5623)
!5625 = !DILocation(line: 3171, column: 18, scope: !5626)
!5626 = distinct !DILexicalBlock(scope: !5623, file: !65, line: 3171, column: 5)
!5627 = !DILocation(line: 3171, column: 6, scope: !5626)
!5628 = !DILocation(line: 3171, column: 5, scope: !5623)
!5629 = !DILocation(line: 3172, column: 46, scope: !5630)
!5630 = distinct !DILexicalBlock(scope: !5626, file: !65, line: 3171, column: 26)
!5631 = !DILocation(line: 3172, column: 3, scope: !5630)
!5632 = !DILocation(line: 3173, column: 19, scope: !5633)
!5633 = distinct !DILexicalBlock(scope: !5630, file: !65, line: 3173, column: 6)
!5634 = !DILocation(line: 3173, column: 7, scope: !5633)
!5635 = !DILocation(line: 3173, column: 6, scope: !5630)
!5636 = !DILocation(line: 3174, column: 47, scope: !5637)
!5637 = distinct !DILexicalBlock(scope: !5633, file: !65, line: 3173, column: 29)
!5638 = !DILocation(line: 3174, column: 4, scope: !5637)
!5639 = !DILocation(line: 3175, column: 3, scope: !5637)
!5640 = !DILocation(line: 3177, column: 19, scope: !5641)
!5641 = distinct !DILexicalBlock(scope: !5630, file: !65, line: 3177, column: 6)
!5642 = !DILocation(line: 3177, column: 7, scope: !5641)
!5643 = !DILocation(line: 3177, column: 6, scope: !5630)
!5644 = !DILocation(line: 3178, column: 47, scope: !5645)
!5645 = distinct !DILexicalBlock(scope: !5641, file: !65, line: 3177, column: 31)
!5646 = !DILocation(line: 3178, column: 4, scope: !5645)
!5647 = !DILocation(line: 3179, column: 3, scope: !5645)
!5648 = !DILocation(line: 3181, column: 19, scope: !5649)
!5649 = distinct !DILexicalBlock(scope: !5630, file: !65, line: 3181, column: 6)
!5650 = !DILocation(line: 3181, column: 7, scope: !5649)
!5651 = !DILocation(line: 3181, column: 6, scope: !5630)
!5652 = !DILocation(line: 3182, column: 47, scope: !5653)
!5653 = distinct !DILexicalBlock(scope: !5649, file: !65, line: 3181, column: 31)
!5654 = !DILocation(line: 3182, column: 4, scope: !5653)
!5655 = !DILocation(line: 3183, column: 3, scope: !5653)
!5656 = !DILocation(line: 3186, column: 3, scope: !5630)
!5657 = !DILocation(line: 3187, column: 2, scope: !5630)
!5658 = !DILocation(line: 3189, column: 18, scope: !5659)
!5659 = distinct !DILexicalBlock(scope: !5623, file: !65, line: 3189, column: 5)
!5660 = !DILocation(line: 3189, column: 6, scope: !5659)
!5661 = !DILocation(line: 3189, column: 5, scope: !5623)
!5662 = !DILocation(line: 3198, column: 40, scope: !5663)
!5663 = distinct !DILexicalBlock(scope: !5659, file: !65, line: 3189, column: 27)
!5664 = !DILocation(line: 3198, column: 3, scope: !5663)
!5665 = !DILocation(line: 3199, column: 48, scope: !5663)
!5666 = !DILocation(line: 3199, column: 3, scope: !5663)
!5667 = !DILocation(line: 3200, column: 3, scope: !5663)
!5668 = !DILocation(line: 3201, column: 36, scope: !5663)
!5669 = !DILocation(line: 3201, column: 3, scope: !5663)
!5670 = !DILocation(line: 3205, column: 3, scope: !5663)
!5671 = !DILocation(line: 3206, column: 36, scope: !5663)
!5672 = !DILocation(line: 3206, column: 3, scope: !5663)
!5673 = !DILocation(line: 3208, column: 3, scope: !5663)
!5674 = !DILocation(line: 3211, column: 2, scope: !5663)
!5675 = !DILocation(line: 3212, column: 2, scope: !5623)
!5676 = !DILocation(line: 3213, column: 1, scope: !5623)
!5677 = distinct !DISubprogram(name: "adjust_key_file_name", scope: !65, file: !65, line: 2662, type: !5678, scopeLine: 2663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !1429)
!5678 = !DISubroutineType(types: !5679)
!5679 = !{null, !459, !473, !31}
!5680 = !DILocalVariable(name: "fn", arg: 1, scope: !5677, file: !65, line: 2662, type: !459)
!5681 = !DILocation(line: 2662, column: 40, scope: !5677)
!5682 = !DILocalVariable(name: "file_title", arg: 2, scope: !5677, file: !65, line: 2662, type: !473)
!5683 = !DILocation(line: 2662, column: 56, scope: !5677)
!5684 = !DILocalVariable(name: "critical", arg: 3, scope: !5677, file: !65, line: 2662, type: !31)
!5685 = !DILocation(line: 2662, column: 72, scope: !5677)
!5686 = !DILocalVariable(name: "full_path_to_file", scope: !5677, file: !65, line: 2664, type: !459)
!5687 = !DILocation(line: 2664, column: 8, scope: !5677)
!5688 = !DILocation(line: 2666, column: 6, scope: !5689)
!5689 = distinct !DILexicalBlock(scope: !5677, file: !65, line: 2666, column: 5)
!5690 = !DILocation(line: 2666, column: 5, scope: !5677)
!5691 = !DILocation(line: 2667, column: 87, scope: !5692)
!5692 = distinct !DILexicalBlock(scope: !5689, file: !65, line: 2666, column: 13)
!5693 = !DILocation(line: 2667, column: 4, scope: !5692)
!5694 = !DILocation(line: 2668, column: 4, scope: !5692)
!5695 = !DILocation(line: 2671, column: 41, scope: !5696)
!5696 = distinct !DILexicalBlock(scope: !5689, file: !65, line: 2669, column: 9)
!5697 = !DILocation(line: 2671, column: 24, scope: !5696)
!5698 = !DILocation(line: 2671, column: 22, scope: !5696)
!5699 = !DILocalVariable(name: "f", scope: !5700, file: !65, line: 2673, type: !2074)
!5700 = distinct !DILexicalBlock(scope: !5696, file: !65, line: 2672, column: 4)
!5701 = !DILocation(line: 2673, column: 11, scope: !5700)
!5702 = !DILocation(line: 2673, column: 15, scope: !5700)
!5703 = !DILocation(line: 2673, column: 41, scope: !5700)
!5704 = !DILocation(line: 2673, column: 35, scope: !5700)
!5705 = !DILocation(line: 2674, column: 9, scope: !5706)
!5706 = distinct !DILexicalBlock(scope: !5700, file: !65, line: 2674, column: 8)
!5707 = !DILocation(line: 2674, column: 8, scope: !5700)
!5708 = !DILocation(line: 2675, column: 84, scope: !5709)
!5709 = distinct !DILexicalBlock(scope: !5706, file: !65, line: 2674, column: 12)
!5710 = !DILocation(line: 2675, column: 95, scope: !5709)
!5711 = !DILocation(line: 2675, column: 6, scope: !5709)
!5712 = !DILocation(line: 2676, column: 6, scope: !5709)
!5713 = !DILocation(line: 2678, column: 13, scope: !5714)
!5714 = distinct !DILexicalBlock(scope: !5706, file: !65, line: 2677, column: 12)
!5715 = !DILocation(line: 2678, column: 6, scope: !5714)
!5716 = !DILocation(line: 2682, column: 8, scope: !5717)
!5717 = distinct !DILexicalBlock(scope: !5696, file: !65, line: 2682, column: 7)
!5718 = !DILocation(line: 2682, column: 7, scope: !5696)
!5719 = !DILocation(line: 2683, column: 84, scope: !5720)
!5720 = distinct !DILexicalBlock(scope: !5717, file: !65, line: 2682, column: 27)
!5721 = !DILocation(line: 2683, column: 95, scope: !5720)
!5722 = !DILocation(line: 2683, column: 6, scope: !5720)
!5723 = !DILocation(line: 2684, column: 6, scope: !5720)
!5724 = !DILocation(line: 2687, column: 12, scope: !5696)
!5725 = !DILocation(line: 2687, column: 15, scope: !5696)
!5726 = !DILocation(line: 2687, column: 4, scope: !5696)
!5727 = !DILocation(line: 2688, column: 4, scope: !5696)
!5728 = !DILocation(line: 2688, column: 39, scope: !5696)
!5729 = !DILocation(line: 2690, column: 7, scope: !5730)
!5730 = distinct !DILexicalBlock(scope: !5696, file: !65, line: 2690, column: 7)
!5731 = !DILocation(line: 2690, column: 7, scope: !5696)
!5732 = !DILocation(line: 2691, column: 11, scope: !5730)
!5733 = !DILocation(line: 2691, column: 6, scope: !5730)
!5734 = !DILocation(line: 2692, column: 4, scope: !5696)
!5735 = !DILabel(scope: !5677, name: "keyerr", file: !65, line: 2695)
!5736 = !DILocation(line: 2695, column: 2, scope: !5677)
!5737 = !DILocation(line: 2697, column: 6, scope: !5738)
!5738 = distinct !DILexicalBlock(scope: !5739, file: !65, line: 2697, column: 6)
!5739 = distinct !DILexicalBlock(scope: !5677, file: !65, line: 2696, column: 2)
!5740 = !DILocation(line: 2697, column: 6, scope: !5739)
!5741 = !DILocation(line: 2698, column: 23, scope: !5742)
!5742 = distinct !DILexicalBlock(scope: !5738, file: !65, line: 2697, column: 16)
!5743 = !DILocation(line: 2699, column: 24, scope: !5742)
!5744 = !DILocation(line: 2700, column: 128, scope: !5742)
!5745 = !DILocation(line: 2700, column: 6, scope: !5742)
!5746 = !DILocation(line: 2701, column: 3, scope: !5742)
!5747 = !DILocation(line: 2702, column: 6, scope: !5748)
!5748 = distinct !DILexicalBlock(scope: !5739, file: !65, line: 2702, column: 6)
!5749 = !DILocation(line: 2702, column: 6, scope: !5739)
!5750 = !DILocation(line: 2703, column: 9, scope: !5748)
!5751 = !DILocation(line: 2703, column: 4, scope: !5748)
!5752 = !DILocation(line: 2704, column: 3, scope: !5739)
!5753 = !DILocation(line: 2706, column: 1, scope: !5677)
!5754 = distinct !DISubprogram(name: "set_ctx", scope: !65, file: !65, line: 2899, type: !5755, scopeLine: 2900, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !1429)
!5755 = !DISubroutineType(types: !5756)
!5756 = !{null, !5757, !473, !5758}
!5757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!5758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5759, size: 64)
!5759 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5760)
!5760 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_METHOD", file: !5761, line: 229, baseType: !5762)
!5761 = !DIFile(filename: "/usr/include/openssl/ssl.h", directory: "", checksumkind: CSK_MD5, checksum: "848d42aedd0da44ffda19088217823c7")
!5762 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_method_st", file: !5761, line: 229, flags: DIFlagFwdDecl)
!5763 = !DILocalVariable(name: "out", arg: 1, scope: !5754, file: !65, line: 2899, type: !5757)
!5764 = !DILocation(line: 2899, column: 31, scope: !5754)
!5765 = !DILocalVariable(name: "protocol", arg: 2, scope: !5754, file: !65, line: 2899, type: !473)
!5766 = !DILocation(line: 2899, column: 48, scope: !5754)
!5767 = !DILocalVariable(name: "method", arg: 3, scope: !5754, file: !65, line: 2899, type: !5758)
!5768 = !DILocation(line: 2899, column: 76, scope: !5754)
!5769 = !DILocalVariable(name: "ctx", scope: !5754, file: !65, line: 2901, type: !531)
!5770 = !DILocation(line: 2901, column: 11, scope: !5754)
!5771 = !DILocation(line: 2901, column: 29, scope: !5754)
!5772 = !DILocation(line: 2901, column: 17, scope: !5754)
!5773 = !DILocalVariable(name: "err", scope: !5754, file: !65, line: 2902, type: !31)
!5774 = !DILocation(line: 2902, column: 6, scope: !5754)
!5775 = !DILocalVariable(name: "rc", scope: !5754, file: !65, line: 2903, type: !31)
!5776 = !DILocation(line: 2903, column: 6, scope: !5754)
!5777 = !DILocation(line: 2905, column: 29, scope: !5754)
!5778 = !DILocation(line: 2905, column: 2, scope: !5754)
!5779 = !DILocation(line: 2908, column: 41, scope: !5754)
!5780 = !DILocation(line: 2908, column: 2, scope: !5754)
!5781 = !DILocation(line: 2910, column: 32, scope: !5754)
!5782 = !DILocation(line: 2910, column: 2, scope: !5754)
!5783 = !DILocation(line: 2912, column: 7, scope: !5784)
!5784 = distinct !DILexicalBlock(scope: !5754, file: !65, line: 2912, column: 5)
!5785 = !DILocation(line: 2912, column: 6, scope: !5784)
!5786 = !DILocation(line: 2912, column: 5, scope: !5754)
!5787 = !DILocation(line: 2913, column: 3, scope: !5784)
!5788 = !DILocation(line: 2913, column: 3, scope: !5789)
!5789 = distinct !DILexicalBlock(scope: !5784, file: !65, line: 2913, column: 3)
!5790 = !DILocalVariable(name: "szdst", scope: !5791, file: !65, line: 2913, type: !673)
!5791 = distinct !DILexicalBlock(scope: !5792, file: !65, line: 2913, column: 3)
!5792 = distinct !DILexicalBlock(scope: !5793, file: !65, line: 2913, column: 3)
!5793 = distinct !DILexicalBlock(scope: !5794, file: !65, line: 2913, column: 3)
!5794 = distinct !DILexicalBlock(scope: !5789, file: !65, line: 2913, column: 3)
!5795 = !DILocation(line: 2913, column: 3, scope: !5791)
!5796 = !DILocation(line: 2913, column: 3, scope: !5793)
!5797 = !DILocation(line: 2915, column: 26, scope: !5754)
!5798 = !DILocation(line: 2915, column: 2, scope: !5754)
!5799 = !DILocation(line: 2916, column: 2, scope: !5754)
!5800 = !DILocation(line: 2918, column: 42, scope: !5801)
!5801 = distinct !DILexicalBlock(scope: !5754, file: !65, line: 2918, column: 6)
!5802 = !DILocation(line: 2918, column: 7, scope: !5801)
!5803 = !DILocation(line: 2918, column: 6, scope: !5754)
!5804 = !DILocation(line: 2919, column: 76, scope: !5805)
!5805 = distinct !DILexicalBlock(scope: !5801, file: !65, line: 2918, column: 71)
!5806 = !DILocation(line: 2919, column: 3, scope: !5805)
!5807 = !DILocation(line: 2920, column: 7, scope: !5805)
!5808 = !DILocation(line: 2921, column: 2, scope: !5805)
!5809 = !DILocation(line: 2922, column: 23, scope: !5810)
!5810 = distinct !DILexicalBlock(scope: !5801, file: !65, line: 2921, column: 9)
!5811 = !DILocation(line: 2922, column: 3, scope: !5810)
!5812 = !DILocation(line: 2925, column: 35, scope: !5813)
!5813 = distinct !DILexicalBlock(scope: !5754, file: !65, line: 2925, column: 6)
!5814 = !DILocation(line: 2925, column: 7, scope: !5813)
!5815 = !DILocation(line: 2925, column: 6, scope: !5754)
!5816 = !DILocation(line: 2926, column: 39, scope: !5817)
!5817 = distinct !DILexicalBlock(scope: !5818, file: !65, line: 2926, column: 7)
!5818 = distinct !DILexicalBlock(scope: !5813, file: !65, line: 2925, column: 82)
!5819 = !DILocation(line: 2926, column: 8, scope: !5817)
!5820 = !DILocation(line: 2926, column: 7, scope: !5818)
!5821 = !DILocation(line: 2927, column: 125, scope: !5822)
!5822 = distinct !DILexicalBlock(scope: !5817, file: !65, line: 2926, column: 86)
!5823 = !DILocation(line: 2927, column: 4, scope: !5822)
!5824 = !DILocation(line: 2928, column: 8, scope: !5822)
!5825 = !DILocation(line: 2929, column: 3, scope: !5822)
!5826 = !DILocation(line: 2930, column: 24, scope: !5827)
!5827 = distinct !DILexicalBlock(scope: !5817, file: !65, line: 2929, column: 10)
!5828 = !DILocation(line: 2930, column: 4, scope: !5827)
!5829 = !DILocation(line: 2932, column: 2, scope: !5818)
!5830 = !DILocation(line: 2933, column: 23, scope: !5831)
!5831 = distinct !DILexicalBlock(scope: !5813, file: !65, line: 2932, column: 9)
!5832 = !DILocation(line: 2933, column: 3, scope: !5831)
!5833 = !DILocation(line: 2936, column: 33, scope: !5834)
!5834 = distinct !DILexicalBlock(scope: !5754, file: !65, line: 2936, column: 6)
!5835 = !DILocation(line: 2936, column: 7, scope: !5834)
!5836 = !DILocation(line: 2936, column: 6, scope: !5754)
!5837 = !DILocation(line: 2937, column: 75, scope: !5838)
!5838 = distinct !DILexicalBlock(scope: !5834, file: !65, line: 2936, column: 39)
!5839 = !DILocation(line: 2937, column: 3, scope: !5838)
!5840 = !DILocation(line: 2938, column: 7, scope: !5838)
!5841 = !DILocation(line: 2939, column: 2, scope: !5838)
!5842 = !DILocation(line: 2941, column: 5, scope: !5843)
!5843 = distinct !DILexicalBlock(scope: !5754, file: !65, line: 2941, column: 5)
!5844 = !DILocation(line: 2941, column: 5, scope: !5754)
!5845 = !DILocation(line: 2943, column: 38, scope: !5846)
!5846 = distinct !DILexicalBlock(scope: !5847, file: !65, line: 2943, column: 7)
!5847 = distinct !DILexicalBlock(scope: !5843, file: !65, line: 2941, column: 34)
!5848 = !DILocation(line: 2943, column: 8, scope: !5846)
!5849 = !DILocation(line: 2943, column: 7, scope: !5847)
!5850 = !DILocation(line: 2944, column: 4, scope: !5851)
!5851 = distinct !DILexicalBlock(scope: !5846, file: !65, line: 2943, column: 77)
!5852 = !DILocation(line: 2945, column: 8, scope: !5851)
!5853 = !DILocation(line: 2946, column: 3, scope: !5851)
!5854 = !DILocation(line: 2948, column: 30, scope: !5847)
!5855 = !DILocation(line: 2948, column: 34, scope: !5847)
!5856 = !DILocation(line: 2948, column: 3, scope: !5847)
!5857 = !DILocation(line: 2951, column: 22, scope: !5847)
!5858 = !DILocation(line: 2951, column: 3, scope: !5847)
!5859 = !DILocation(line: 2954, column: 28, scope: !5847)
!5860 = !DILocation(line: 2954, column: 3, scope: !5847)
!5861 = !DILocation(line: 2956, column: 2, scope: !5847)
!5862 = !DILocation(line: 2957, column: 22, scope: !5863)
!5863 = distinct !DILexicalBlock(scope: !5843, file: !65, line: 2956, column: 9)
!5864 = !DILocation(line: 2957, column: 3, scope: !5863)
!5865 = !DILocalVariable(name: "nid", scope: !5866, file: !65, line: 2962, type: !31)
!5866 = distinct !DILexicalBlock(scope: !5754, file: !65, line: 2961, column: 2)
!5867 = !DILocation(line: 2962, column: 7, scope: !5866)
!5868 = !DILocalVariable(name: "set_auto_curve", scope: !5866, file: !65, line: 2963, type: !31)
!5869 = !DILocation(line: 2963, column: 7, scope: !5866)
!5870 = !DILocalVariable(name: "curve_name", scope: !5866, file: !65, line: 2965, type: !473)
!5871 = !DILocation(line: 2965, column: 15, scope: !5866)
!5872 = !DILocation(line: 2967, column: 9, scope: !5873)
!5873 = distinct !DILexicalBlock(scope: !5866, file: !65, line: 2967, column: 7)
!5874 = !DILocation(line: 2967, column: 8, scope: !5873)
!5875 = !DILocation(line: 2967, column: 7, scope: !5866)
!5876 = !DILocation(line: 2971, column: 19, scope: !5877)
!5877 = distinct !DILexicalBlock(scope: !5873, file: !65, line: 2967, column: 25)
!5878 = !DILocation(line: 2972, column: 3, scope: !5877)
!5879 = !DILocation(line: 2974, column: 6, scope: !5880)
!5880 = distinct !DILexicalBlock(scope: !5866, file: !65, line: 2974, column: 6)
!5881 = !DILocation(line: 2974, column: 6, scope: !5866)
!5882 = !DILocation(line: 2976, column: 22, scope: !5883)
!5883 = distinct !DILexicalBlock(scope: !5884, file: !65, line: 2975, column: 4)
!5884 = distinct !DILexicalBlock(scope: !5880, file: !65, line: 2974, column: 21)
!5885 = !DILocation(line: 2976, column: 11, scope: !5883)
!5886 = !DILocation(line: 2976, column: 9, scope: !5883)
!5887 = !DILocation(line: 2977, column: 9, scope: !5888)
!5888 = distinct !DILexicalBlock(scope: !5883, file: !65, line: 2977, column: 9)
!5889 = !DILocation(line: 2977, column: 13, scope: !5888)
!5890 = !DILocation(line: 2977, column: 9, scope: !5883)
!5891 = !DILocation(line: 2978, column: 68, scope: !5892)
!5892 = distinct !DILexicalBlock(scope: !5888, file: !65, line: 2977, column: 19)
!5893 = !DILocation(line: 2978, column: 6, scope: !5892)
!5894 = !DILocation(line: 2979, column: 17, scope: !5892)
!5895 = !DILocation(line: 2980, column: 23, scope: !5892)
!5896 = !DILocation(line: 2980, column: 12, scope: !5892)
!5897 = !DILocation(line: 2980, column: 10, scope: !5892)
!5898 = !DILocation(line: 2981, column: 21, scope: !5892)
!5899 = !DILocation(line: 2982, column: 5, scope: !5892)
!5900 = !DILocalVariable(name: "ecdh", scope: !5901, file: !65, line: 2986, type: !5902)
!5901 = distinct !DILexicalBlock(scope: !5884, file: !65, line: 2985, column: 4)
!5902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5903, size: 64)
!5903 = !DIDerivedType(tag: DW_TAG_typedef, name: "EC_KEY", file: !533, line: 149, baseType: !5904)
!5904 = !DICompositeType(tag: DW_TAG_structure_type, name: "ec_key_st", file: !533, line: 149, flags: DIFlagFwdDecl)
!5905 = !DILocation(line: 2986, column: 13, scope: !5901)
!5906 = !DILocation(line: 2986, column: 45, scope: !5901)
!5907 = !DILocation(line: 2986, column: 20, scope: !5901)
!5908 = !DILocation(line: 2987, column: 10, scope: !5909)
!5909 = distinct !DILexicalBlock(scope: !5901, file: !65, line: 2987, column: 9)
!5910 = !DILocation(line: 2987, column: 9, scope: !5901)
!5911 = !DILocation(line: 2988, column: 6, scope: !5912)
!5912 = distinct !DILexicalBlock(scope: !5909, file: !65, line: 2987, column: 16)
!5913 = !DILocation(line: 2990, column: 21, scope: !5912)
!5914 = !DILocation(line: 2991, column: 5, scope: !5912)
!5915 = !DILocation(line: 2992, column: 6, scope: !5916)
!5916 = distinct !DILexicalBlock(scope: !5909, file: !65, line: 2991, column: 12)
!5917 = !DILocation(line: 2993, column: 18, scope: !5916)
!5918 = !DILocation(line: 2993, column: 6, scope: !5916)
!5919 = !DILocation(line: 2996, column: 3, scope: !5884)
!5920 = !DILocation(line: 2998, column: 6, scope: !5921)
!5921 = distinct !DILexicalBlock(scope: !5866, file: !65, line: 2998, column: 6)
!5922 = !DILocation(line: 2998, column: 6, scope: !5866)
!5923 = !DILocation(line: 3004, column: 19, scope: !5924)
!5924 = distinct !DILexicalBlock(scope: !5921, file: !65, line: 2998, column: 22)
!5925 = !DILocation(line: 3005, column: 3, scope: !5924)
!5926 = !DILocalVariable(name: "dh", scope: !5927, file: !65, line: 3011, type: !5928)
!5927 = distinct !DILexicalBlock(scope: !5754, file: !65, line: 3009, column: 2)
!5928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5929, size: 64)
!5929 = !DIDerivedType(tag: DW_TAG_typedef, name: "DH", file: !533, line: 134, baseType: !5930)
!5930 = !DICompositeType(tag: DW_TAG_structure_type, name: "dh_st", file: !533, line: 134, flags: DIFlagFwdDecl)
!5931 = !DILocation(line: 3011, column: 7, scope: !5927)
!5932 = !DILocation(line: 3012, column: 6, scope: !5933)
!5933 = distinct !DILexicalBlock(scope: !5927, file: !65, line: 3012, column: 6)
!5934 = !DILocation(line: 3012, column: 6, scope: !5927)
!5935 = !DILocalVariable(name: "paramfile", scope: !5936, file: !65, line: 3013, type: !2074)
!5936 = distinct !DILexicalBlock(scope: !5933, file: !65, line: 3012, column: 30)
!5937 = !DILocation(line: 3013, column: 10, scope: !5936)
!5938 = !DILocation(line: 3013, column: 22, scope: !5936)
!5939 = !DILocation(line: 3014, column: 10, scope: !5940)
!5940 = distinct !DILexicalBlock(scope: !5936, file: !65, line: 3014, column: 9)
!5941 = !DILocation(line: 3014, column: 9, scope: !5936)
!5942 = !DILocation(line: 3015, column: 6, scope: !5943)
!5943 = distinct !DILexicalBlock(scope: !5940, file: !65, line: 3014, column: 21)
!5944 = !DILocation(line: 3016, column: 5, scope: !5943)
!5945 = !DILocation(line: 3017, column: 30, scope: !5946)
!5946 = distinct !DILexicalBlock(scope: !5940, file: !65, line: 3016, column: 12)
!5947 = !DILocation(line: 3017, column: 12, scope: !5946)
!5948 = !DILocation(line: 3017, column: 10, scope: !5946)
!5949 = !DILocation(line: 3018, column: 14, scope: !5946)
!5950 = !DILocation(line: 3018, column: 7, scope: !5946)
!5951 = !DILocation(line: 3019, column: 10, scope: !5952)
!5952 = distinct !DILexicalBlock(scope: !5946, file: !65, line: 3019, column: 10)
!5953 = !DILocation(line: 3019, column: 10, scope: !5946)
!5954 = !DILocation(line: 3020, column: 32, scope: !5955)
!5955 = distinct !DILexicalBlock(scope: !5952, file: !65, line: 3019, column: 14)
!5956 = !DILocation(line: 3021, column: 7, scope: !5955)
!5957 = !DILocation(line: 3023, column: 3, scope: !5936)
!5958 = !DILocation(line: 3025, column: 7, scope: !5959)
!5959 = distinct !DILexicalBlock(scope: !5927, file: !65, line: 3025, column: 6)
!5960 = !DILocation(line: 3025, column: 6, scope: !5927)
!5961 = !DILocation(line: 3026, column: 19, scope: !5962)
!5962 = distinct !DILexicalBlock(scope: !5963, file: !65, line: 3026, column: 7)
!5963 = distinct !DILexicalBlock(scope: !5959, file: !65, line: 3025, column: 11)
!5964 = !DILocation(line: 3026, column: 31, scope: !5962)
!5965 = !DILocation(line: 3026, column: 7, scope: !5963)
!5966 = !DILocation(line: 3027, column: 10, scope: !5962)
!5967 = !DILocation(line: 3027, column: 8, scope: !5962)
!5968 = !DILocation(line: 3027, column: 5, scope: !5962)
!5969 = !DILocation(line: 3028, column: 24, scope: !5970)
!5970 = distinct !DILexicalBlock(scope: !5962, file: !65, line: 3028, column: 12)
!5971 = !DILocation(line: 3028, column: 36, scope: !5970)
!5972 = !DILocation(line: 3028, column: 12, scope: !5962)
!5973 = !DILocation(line: 3029, column: 10, scope: !5970)
!5974 = !DILocation(line: 3029, column: 8, scope: !5970)
!5975 = !DILocation(line: 3029, column: 5, scope: !5970)
!5976 = !DILocation(line: 3031, column: 10, scope: !5970)
!5977 = !DILocation(line: 3031, column: 8, scope: !5970)
!5978 = !DILocation(line: 3032, column: 3, scope: !5963)
!5979 = !DILocation(line: 3042, column: 7, scope: !5980)
!5980 = distinct !DILexicalBlock(scope: !5927, file: !65, line: 3042, column: 6)
!5981 = !DILocation(line: 3042, column: 6, scope: !5927)
!5982 = !DILocation(line: 3043, column: 4, scope: !5983)
!5983 = distinct !DILexicalBlock(scope: !5980, file: !65, line: 3042, column: 11)
!5984 = !DILocation(line: 3044, column: 8, scope: !5983)
!5985 = !DILocation(line: 3045, column: 3, scope: !5983)
!5986 = !DILocation(line: 3046, column: 13, scope: !5987)
!5987 = distinct !DILexicalBlock(scope: !5988, file: !65, line: 3046, column: 8)
!5988 = distinct !DILexicalBlock(scope: !5980, file: !65, line: 3045, column: 10)
!5989 = !DILocation(line: 3046, column: 10, scope: !5987)
!5990 = !DILocation(line: 3046, column: 8, scope: !5988)
!5991 = !DILocation(line: 3047, column: 5, scope: !5992)
!5992 = distinct !DILexicalBlock(scope: !5987, file: !65, line: 3046, column: 43)
!5993 = !DILocation(line: 3048, column: 9, scope: !5992)
!5994 = !DILocation(line: 3049, column: 4, scope: !5992)
!5995 = !DILocation(line: 3050, column: 13, scope: !5988)
!5996 = !DILocation(line: 3050, column: 4, scope: !5988)
!5997 = !DILocation(line: 3056, column: 6, scope: !5998)
!5998 = distinct !DILexicalBlock(scope: !5999, file: !65, line: 3056, column: 6)
!5999 = distinct !DILexicalBlock(scope: !5754, file: !65, line: 3054, column: 2)
!6000 = !DILocation(line: 3056, column: 6, scope: !5999)
!6001 = !DILocalVariable(name: "f", scope: !6002, file: !65, line: 3057, type: !2074)
!6002 = distinct !DILexicalBlock(scope: !5998, file: !65, line: 3056, column: 38)
!6003 = !DILocation(line: 3057, column: 10, scope: !6002)
!6004 = !DILocation(line: 3057, column: 14, scope: !6002)
!6005 = !DILocation(line: 3059, column: 9, scope: !6006)
!6006 = distinct !DILexicalBlock(scope: !6002, file: !65, line: 3059, column: 8)
!6007 = !DILocation(line: 3059, column: 8, scope: !6002)
!6008 = !DILocation(line: 3060, column: 5, scope: !6009)
!6009 = distinct !DILexicalBlock(scope: !6006, file: !65, line: 3059, column: 12)
!6010 = !DILocation(line: 3061, column: 4, scope: !6009)
!6011 = !DILocation(line: 3062, column: 12, scope: !6012)
!6012 = distinct !DILexicalBlock(scope: !6006, file: !65, line: 3061, column: 11)
!6013 = !DILocation(line: 3062, column: 5, scope: !6012)
!6014 = !DILocation(line: 3063, column: 58, scope: !6012)
!6015 = !DILocation(line: 3063, column: 10, scope: !6012)
!6016 = !DILocation(line: 3063, column: 8, scope: !6012)
!6017 = !DILocation(line: 3064, column: 9, scope: !6018)
!6018 = distinct !DILexicalBlock(scope: !6012, file: !65, line: 3064, column: 9)
!6019 = !DILocation(line: 3064, column: 12, scope: !6018)
!6020 = !DILocation(line: 3064, column: 9, scope: !6012)
!6021 = !DILocation(line: 3065, column: 6, scope: !6022)
!6022 = distinct !DILexicalBlock(scope: !6018, file: !65, line: 3064, column: 18)
!6023 = !DILocation(line: 3066, column: 5, scope: !6022)
!6024 = !DILocation(line: 3068, column: 10, scope: !6025)
!6025 = distinct !DILexicalBlock(scope: !6026, file: !65, line: 3068, column: 10)
!6026 = distinct !DILexicalBlock(scope: !6018, file: !65, line: 3067, column: 9)
!6027 = !DILocation(line: 3068, column: 13, scope: !6025)
!6028 = !DILocation(line: 3068, column: 10, scope: !6026)
!6029 = !DILocation(line: 3069, column: 7, scope: !6030)
!6030 = distinct !DILexicalBlock(scope: !6025, file: !65, line: 3068, column: 20)
!6031 = !DILocation(line: 3070, column: 6, scope: !6030)
!6032 = !DILocation(line: 3072, column: 13, scope: !6012)
!6033 = !DILocation(line: 3072, column: 5, scope: !6012)
!6034 = !DILocation(line: 3074, column: 3, scope: !6002)
!6035 = !DILocalVariable(name: "op", scope: !6036, file: !65, line: 3078, type: !31)
!6036 = distinct !DILexicalBlock(scope: !5754, file: !65, line: 3077, column: 2)
!6037 = !DILocation(line: 3078, column: 7, scope: !6036)
!6038 = !DILocation(line: 3081, column: 6, scope: !6036)
!6039 = !DILocation(line: 3085, column: 7, scope: !6036)
!6040 = !DILocation(line: 3088, column: 18, scope: !6041)
!6041 = distinct !DILexicalBlock(scope: !6036, file: !65, line: 3088, column: 6)
!6042 = !DILocation(line: 3088, column: 6, scope: !6041)
!6043 = !DILocation(line: 3088, column: 6, scope: !6036)
!6044 = !DILocation(line: 3089, column: 7, scope: !6041)
!6045 = !DILocation(line: 3089, column: 4, scope: !6041)
!6046 = !DILocation(line: 3092, column: 18, scope: !6047)
!6047 = distinct !DILexicalBlock(scope: !6036, file: !65, line: 3092, column: 6)
!6048 = !DILocation(line: 3092, column: 6, scope: !6047)
!6049 = !DILocation(line: 3092, column: 6, scope: !6036)
!6050 = !DILocation(line: 3093, column: 7, scope: !6047)
!6051 = !DILocation(line: 3093, column: 4, scope: !6047)
!6052 = !DILocation(line: 3097, column: 18, scope: !6053)
!6053 = distinct !DILexicalBlock(scope: !6036, file: !65, line: 3097, column: 6)
!6054 = !DILocation(line: 3097, column: 6, scope: !6053)
!6055 = !DILocation(line: 3097, column: 6, scope: !6036)
!6056 = !DILocation(line: 3098, column: 7, scope: !6053)
!6057 = !DILocation(line: 3098, column: 4, scope: !6053)
!6058 = !DILocation(line: 3102, column: 18, scope: !6059)
!6059 = distinct !DILexicalBlock(scope: !6036, file: !65, line: 3102, column: 6)
!6060 = !DILocation(line: 3102, column: 6, scope: !6059)
!6061 = !DILocation(line: 3102, column: 6, scope: !6036)
!6062 = !DILocation(line: 3103, column: 7, scope: !6059)
!6063 = !DILocation(line: 3103, column: 4, scope: !6059)
!6064 = !DILocation(line: 3107, column: 18, scope: !6065)
!6065 = distinct !DILexicalBlock(scope: !6036, file: !65, line: 3107, column: 6)
!6066 = !DILocation(line: 3107, column: 6, scope: !6065)
!6067 = !DILocation(line: 3107, column: 6, scope: !6036)
!6068 = !DILocation(line: 3108, column: 7, scope: !6065)
!6069 = !DILocation(line: 3108, column: 4, scope: !6065)
!6070 = !DILocation(line: 3112, column: 6, scope: !6036)
!6071 = !DILocation(line: 3116, column: 6, scope: !6036)
!6072 = !DILocation(line: 3120, column: 6, scope: !6036)
!6073 = !DILocation(line: 3123, column: 23, scope: !6036)
!6074 = !DILocation(line: 3123, column: 28, scope: !6036)
!6075 = !DILocation(line: 3123, column: 3, scope: !6036)
!6076 = !DILocation(line: 3126, column: 7, scope: !6077)
!6077 = distinct !DILexicalBlock(scope: !5754, file: !65, line: 3126, column: 6)
!6078 = !DILocation(line: 3126, column: 6, scope: !6077)
!6079 = !DILocation(line: 3126, column: 11, scope: !6077)
!6080 = !DILocation(line: 3126, column: 6, scope: !5754)
!6081 = !DILocation(line: 3128, column: 10, scope: !6082)
!6082 = distinct !DILexicalBlock(scope: !6077, file: !65, line: 3126, column: 20)
!6083 = !DILocation(line: 3128, column: 4, scope: !6082)
!6084 = !DILocation(line: 3128, column: 8, scope: !6082)
!6085 = !DILocation(line: 3129, column: 2, scope: !6082)
!6086 = !DILocation(line: 3129, column: 14, scope: !6087)
!6087 = distinct !DILexicalBlock(scope: !6077, file: !65, line: 3129, column: 13)
!6088 = !DILocation(line: 3129, column: 13, scope: !6077)
!6089 = !DILocation(line: 3130, column: 17, scope: !6090)
!6090 = distinct !DILexicalBlock(scope: !6087, file: !65, line: 3129, column: 19)
!6091 = !DILocation(line: 3130, column: 16, scope: !6090)
!6092 = !DILocation(line: 3130, column: 3, scope: !6090)
!6093 = !DILocation(line: 3131, column: 10, scope: !6090)
!6094 = !DILocation(line: 3131, column: 4, scope: !6090)
!6095 = !DILocation(line: 3131, column: 8, scope: !6090)
!6096 = !DILocation(line: 3132, column: 2, scope: !6090)
!6097 = !DILocation(line: 3133, column: 1, scope: !5754)
!6098 = distinct !DISubprogram(name: "ServerALPNCallback", scope: !65, file: !65, line: 2849, type: !6099, scopeLine: 2854, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !1429)
!6099 = !DISubroutineType(types: !6100)
!6100 = !{!31, !6101, !6104, !461, !467, !7, !405}
!6101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6102, size: 64)
!6102 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL", file: !533, line: 184, baseType: !6103)
!6103 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_st", file: !533, line: 184, flags: DIFlagFwdDecl)
!6104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!6105 = !DILocalVariable(name: "ssl", arg: 1, scope: !6098, file: !65, line: 2849, type: !6101)
!6106 = !DILocation(line: 2849, column: 36, scope: !6098)
!6107 = !DILocalVariable(name: "out", arg: 2, scope: !6098, file: !65, line: 2850, type: !6104)
!6108 = !DILocation(line: 2850, column: 27, scope: !6098)
!6109 = !DILocalVariable(name: "outlen", arg: 3, scope: !6098, file: !65, line: 2851, type: !461)
!6110 = !DILocation(line: 2851, column: 20, scope: !6098)
!6111 = !DILocalVariable(name: "in", arg: 4, scope: !6098, file: !65, line: 2852, type: !467)
!6112 = !DILocation(line: 2852, column: 26, scope: !6098)
!6113 = !DILocalVariable(name: "inlen", arg: 5, scope: !6098, file: !65, line: 2853, type: !7)
!6114 = !DILocation(line: 2853, column: 18, scope: !6098)
!6115 = !DILocalVariable(name: "arg", arg: 6, scope: !6098, file: !65, line: 2854, type: !405)
!6116 = !DILocation(line: 2854, column: 11, scope: !6098)
!6117 = !DILocation(line: 2856, column: 2, scope: !6098)
!6118 = !DILocation(line: 2856, column: 2, scope: !6119)
!6119 = distinct !DILexicalBlock(scope: !6098, file: !65, line: 2856, column: 2)
!6120 = !DILocation(line: 2857, column: 2, scope: !6098)
!6121 = !DILocation(line: 2857, column: 2, scope: !6122)
!6122 = distinct !DILexicalBlock(scope: !6098, file: !65, line: 2857, column: 2)
!6123 = !DILocalVariable(name: "sa_len", scope: !6098, file: !65, line: 2859, type: !429)
!6124 = !DILocation(line: 2859, column: 16, scope: !6098)
!6125 = !DILocation(line: 2859, column: 40, scope: !6098)
!6126 = !DILocation(line: 2859, column: 25, scope: !6098)
!6127 = !DILocalVariable(name: "ta_len", scope: !6098, file: !65, line: 2860, type: !429)
!6128 = !DILocation(line: 2860, column: 16, scope: !6098)
!6129 = !DILocation(line: 2860, column: 40, scope: !6098)
!6130 = !DILocation(line: 2860, column: 25, scope: !6098)
!6131 = !DILocalVariable(name: "ha_len", scope: !6098, file: !65, line: 2861, type: !429)
!6132 = !DILocation(line: 2861, column: 16, scope: !6098)
!6133 = !DILocation(line: 2861, column: 40, scope: !6098)
!6134 = !DILocation(line: 2861, column: 25, scope: !6098)
!6135 = !DILocalVariable(name: "found_http", scope: !6098, file: !65, line: 2863, type: !31)
!6136 = !DILocation(line: 2863, column: 6, scope: !6098)
!6137 = !DILocalVariable(name: "ptr", scope: !6098, file: !65, line: 2865, type: !467)
!6138 = !DILocation(line: 2865, column: 23, scope: !6098)
!6139 = !DILocation(line: 2865, column: 29, scope: !6098)
!6140 = !DILocation(line: 2866, column: 2, scope: !6098)
!6141 = !DILocation(line: 2866, column: 8, scope: !6098)
!6142 = !DILocation(line: 2866, column: 15, scope: !6098)
!6143 = !DILocation(line: 2866, column: 18, scope: !6098)
!6144 = !DILocation(line: 2866, column: 17, scope: !6098)
!6145 = !DILocation(line: 2866, column: 12, scope: !6098)
!6146 = !DILocalVariable(name: "current_len", scope: !6147, file: !65, line: 2867, type: !429)
!6147 = distinct !DILexicalBlock(scope: !6098, file: !65, line: 2866, column: 26)
!6148 = !DILocation(line: 2867, column: 17, scope: !6147)
!6149 = !DILocation(line: 2867, column: 32, scope: !6147)
!6150 = !DILocation(line: 2867, column: 31, scope: !6147)
!6151 = !DILocation(line: 2868, column: 6, scope: !6152)
!6152 = distinct !DILexicalBlock(scope: !6147, file: !65, line: 2868, column: 6)
!6153 = !DILocation(line: 2868, column: 9, scope: !6152)
!6154 = !DILocation(line: 2868, column: 12, scope: !6152)
!6155 = !DILocation(line: 2868, column: 11, scope: !6152)
!6156 = !DILocation(line: 2868, column: 26, scope: !6152)
!6157 = !DILocation(line: 2868, column: 29, scope: !6152)
!6158 = !DILocation(line: 2868, column: 28, scope: !6152)
!6159 = !DILocation(line: 2868, column: 24, scope: !6152)
!6160 = !DILocation(line: 2868, column: 6, scope: !6147)
!6161 = !DILocation(line: 2869, column: 4, scope: !6152)
!6162 = !DILocation(line: 2870, column: 20, scope: !6163)
!6163 = distinct !DILexicalBlock(scope: !6147, file: !65, line: 2870, column: 6)
!6164 = !DILocation(line: 2870, column: 8, scope: !6163)
!6165 = !DILocation(line: 2870, column: 29, scope: !6163)
!6166 = !DILocation(line: 2870, column: 33, scope: !6163)
!6167 = !DILocation(line: 2870, column: 48, scope: !6163)
!6168 = !DILocation(line: 2870, column: 45, scope: !6163)
!6169 = !DILocation(line: 2870, column: 56, scope: !6163)
!6170 = !DILocation(line: 2870, column: 67, scope: !6163)
!6171 = !DILocation(line: 2870, column: 70, scope: !6163)
!6172 = !DILocation(line: 2870, column: 83, scope: !6163)
!6173 = !DILocation(line: 2870, column: 60, scope: !6163)
!6174 = !DILocation(line: 2870, column: 90, scope: !6163)
!6175 = !DILocation(line: 2870, column: 6, scope: !6147)
!6176 = !DILocation(line: 2871, column: 11, scope: !6177)
!6177 = distinct !DILexicalBlock(scope: !6163, file: !65, line: 2870, column: 96)
!6178 = !DILocation(line: 2871, column: 14, scope: !6177)
!6179 = !DILocation(line: 2871, column: 5, scope: !6177)
!6180 = !DILocation(line: 2871, column: 9, scope: !6177)
!6181 = !DILocation(line: 2872, column: 14, scope: !6177)
!6182 = !DILocation(line: 2872, column: 5, scope: !6177)
!6183 = !DILocation(line: 2872, column: 12, scope: !6177)
!6184 = !DILocation(line: 2873, column: 4, scope: !6177)
!6185 = !DILocation(line: 2874, column: 4, scope: !6177)
!6186 = !DILocation(line: 2876, column: 20, scope: !6187)
!6187 = distinct !DILexicalBlock(scope: !6147, file: !65, line: 2876, column: 6)
!6188 = !DILocation(line: 2876, column: 8, scope: !6187)
!6189 = !DILocation(line: 2876, column: 31, scope: !6187)
!6190 = !DILocation(line: 2876, column: 35, scope: !6187)
!6191 = !DILocation(line: 2876, column: 50, scope: !6187)
!6192 = !DILocation(line: 2876, column: 47, scope: !6187)
!6193 = !DILocation(line: 2876, column: 58, scope: !6187)
!6194 = !DILocation(line: 2876, column: 69, scope: !6187)
!6195 = !DILocation(line: 2876, column: 72, scope: !6187)
!6196 = !DILocation(line: 2876, column: 85, scope: !6187)
!6197 = !DILocation(line: 2876, column: 62, scope: !6187)
!6198 = !DILocation(line: 2876, column: 92, scope: !6187)
!6199 = !DILocation(line: 2876, column: 6, scope: !6147)
!6200 = !DILocation(line: 2877, column: 11, scope: !6201)
!6201 = distinct !DILexicalBlock(scope: !6187, file: !65, line: 2876, column: 98)
!6202 = !DILocation(line: 2877, column: 14, scope: !6201)
!6203 = !DILocation(line: 2877, column: 5, scope: !6201)
!6204 = !DILocation(line: 2877, column: 9, scope: !6201)
!6205 = !DILocation(line: 2878, column: 14, scope: !6201)
!6206 = !DILocation(line: 2878, column: 5, scope: !6201)
!6207 = !DILocation(line: 2878, column: 12, scope: !6201)
!6208 = !DILocation(line: 2879, column: 4, scope: !6201)
!6209 = !DILocation(line: 2880, column: 4, scope: !6201)
!6210 = !DILocation(line: 2882, column: 7, scope: !6211)
!6211 = distinct !DILexicalBlock(scope: !6147, file: !65, line: 2882, column: 6)
!6212 = !DILocation(line: 2882, column: 22, scope: !6211)
!6213 = !DILocation(line: 2882, column: 19, scope: !6211)
!6214 = !DILocation(line: 2882, column: 30, scope: !6211)
!6215 = !DILocation(line: 2882, column: 41, scope: !6211)
!6216 = !DILocation(line: 2882, column: 44, scope: !6211)
!6217 = !DILocation(line: 2882, column: 57, scope: !6211)
!6218 = !DILocation(line: 2882, column: 34, scope: !6211)
!6219 = !DILocation(line: 2882, column: 64, scope: !6211)
!6220 = !DILocation(line: 2882, column: 6, scope: !6147)
!6221 = !DILocation(line: 2883, column: 11, scope: !6222)
!6222 = distinct !DILexicalBlock(scope: !6211, file: !65, line: 2882, column: 70)
!6223 = !DILocation(line: 2883, column: 14, scope: !6222)
!6224 = !DILocation(line: 2883, column: 5, scope: !6222)
!6225 = !DILocation(line: 2883, column: 9, scope: !6222)
!6226 = !DILocation(line: 2884, column: 14, scope: !6222)
!6227 = !DILocation(line: 2884, column: 5, scope: !6222)
!6228 = !DILocation(line: 2884, column: 12, scope: !6222)
!6229 = !DILocation(line: 2885, column: 4, scope: !6222)
!6230 = !DILocation(line: 2886, column: 15, scope: !6222)
!6231 = !DILocation(line: 2887, column: 3, scope: !6222)
!6232 = !DILocation(line: 2888, column: 14, scope: !6147)
!6233 = !DILocation(line: 2888, column: 12, scope: !6147)
!6234 = !DILocation(line: 2888, column: 7, scope: !6147)
!6235 = distinct !{!6235, !6140, !6236, !1877}
!6236 = !DILocation(line: 2889, column: 2, scope: !6098)
!6237 = !DILocation(line: 2891, column: 5, scope: !6238)
!6238 = distinct !DILexicalBlock(scope: !6098, file: !65, line: 2891, column: 5)
!6239 = !DILocation(line: 2891, column: 5, scope: !6098)
!6240 = !DILocation(line: 2892, column: 3, scope: !6238)
!6241 = !DILocation(line: 2894, column: 2, scope: !6098)
!6242 = !DILocation(line: 2895, column: 1, scope: !6098)
!6243 = distinct !DISubprogram(name: "pem_password_func", scope: !65, file: !65, line: 2838, type: !6244, scopeLine: 2839, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !1429)
!6244 = !DISubroutineType(types: !6245)
!6245 = !{!31, !459, !31, !31, !405}
!6246 = !DILocalVariable(name: "buf", arg: 1, scope: !6243, file: !65, line: 2838, type: !459)
!6247 = !DILocation(line: 2838, column: 36, scope: !6243)
!6248 = !DILocalVariable(name: "size", arg: 2, scope: !6243, file: !65, line: 2838, type: !31)
!6249 = !DILocation(line: 2838, column: 45, scope: !6243)
!6250 = !DILocalVariable(name: "rwflag", arg: 3, scope: !6243, file: !65, line: 2838, type: !31)
!6251 = !DILocation(line: 2838, column: 55, scope: !6243)
!6252 = !DILocalVariable(name: "password", arg: 4, scope: !6243, file: !65, line: 2838, type: !405)
!6253 = !DILocation(line: 2838, column: 69, scope: !6243)
!6254 = !DILocation(line: 2840, column: 2, scope: !6243)
!6255 = !DILocation(line: 2840, column: 2, scope: !6256)
!6256 = distinct !DILexicalBlock(scope: !6243, file: !65, line: 2840, column: 2)
!6257 = !DILocation(line: 2842, column: 10, scope: !6243)
!6258 = !DILocation(line: 2842, column: 25, scope: !6243)
!6259 = !DILocation(line: 2842, column: 36, scope: !6243)
!6260 = !DILocation(line: 2842, column: 2, scope: !6243)
!6261 = !DILocation(line: 2843, column: 2, scope: !6243)
!6262 = !DILocation(line: 2843, column: 6, scope: !6243)
!6263 = !DILocation(line: 2843, column: 11, scope: !6243)
!6264 = !DILocation(line: 2843, column: 16, scope: !6243)
!6265 = !DILocation(line: 2844, column: 17, scope: !6243)
!6266 = !DILocation(line: 2844, column: 10, scope: !6243)
!6267 = !DILocation(line: 2844, column: 9, scope: !6243)
!6268 = !DILocation(line: 2844, column: 2, scope: !6243)
!6269 = distinct !DISubprogram(name: "get_dh566", scope: !65, file: !65, line: 2717, type: !6270, scopeLine: 2717, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !1429)
!6270 = !DISubroutineType(types: !6271)
!6271 = !{!5928}
!6272 = !DILocalVariable(name: "dh566_p", scope: !6269, file: !65, line: 2720, type: !6273)
!6273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !429, size: 568, elements: !6274)
!6274 = !{!6275}
!6275 = !DISubrange(count: 71)
!6276 = !DILocation(line: 2720, column: 16, scope: !6269)
!6277 = !DILocalVariable(name: "dh566_g", scope: !6269, file: !65, line: 2734, type: !6278)
!6278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !429, size: 8, elements: !2106)
!6279 = !DILocation(line: 2734, column: 16, scope: !6269)
!6280 = !DILocalVariable(name: "dh", scope: !6269, file: !65, line: 2735, type: !5928)
!6281 = !DILocation(line: 2735, column: 6, scope: !6269)
!6282 = !DILocation(line: 2737, column: 12, scope: !6283)
!6283 = distinct !DILexicalBlock(scope: !6269, file: !65, line: 2737, column: 6)
!6284 = !DILocation(line: 2737, column: 10, scope: !6283)
!6285 = !DILocation(line: 2737, column: 22, scope: !6283)
!6286 = !DILocation(line: 2737, column: 6, scope: !6269)
!6287 = !DILocation(line: 2738, column: 3, scope: !6283)
!6288 = !DILocation(line: 2744, column: 14, scope: !6269)
!6289 = !DILocation(line: 2744, column: 28, scope: !6269)
!6290 = !DILocation(line: 2744, column: 18, scope: !6269)
!6291 = !DILocation(line: 2744, column: 78, scope: !6269)
!6292 = !DILocation(line: 2744, column: 68, scope: !6269)
!6293 = !DILocation(line: 2744, column: 2, scope: !6269)
!6294 = !DILocation(line: 2746, column: 10, scope: !6269)
!6295 = !DILocation(line: 2746, column: 2, scope: !6269)
!6296 = !DILocation(line: 2747, column: 1, scope: !6269)
!6297 = distinct !DISubprogram(name: "get_dh1066", scope: !65, file: !65, line: 2749, type: !6270, scopeLine: 2749, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !1429)
!6298 = !DILocalVariable(name: "dh1066_p", scope: !6297, file: !65, line: 2751, type: !6299)
!6299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !429, size: 1072, elements: !6300)
!6300 = !{!6301}
!6301 = !DISubrange(count: 134)
!6302 = !DILocation(line: 2751, column: 16, scope: !6297)
!6303 = !DILocalVariable(name: "dh1066_g", scope: !6297, file: !65, line: 2772, type: !6278)
!6304 = !DILocation(line: 2772, column: 16, scope: !6297)
!6305 = !DILocalVariable(name: "dh", scope: !6297, file: !65, line: 2773, type: !5928)
!6306 = !DILocation(line: 2773, column: 6, scope: !6297)
!6307 = !DILocation(line: 2775, column: 12, scope: !6308)
!6308 = distinct !DILexicalBlock(scope: !6297, file: !65, line: 2775, column: 6)
!6309 = !DILocation(line: 2775, column: 10, scope: !6308)
!6310 = !DILocation(line: 2775, column: 22, scope: !6308)
!6311 = !DILocation(line: 2775, column: 6, scope: !6297)
!6312 = !DILocation(line: 2776, column: 3, scope: !6308)
!6313 = !DILocation(line: 2782, column: 14, scope: !6297)
!6314 = !DILocation(line: 2782, column: 28, scope: !6297)
!6315 = !DILocation(line: 2782, column: 18, scope: !6297)
!6316 = !DILocation(line: 2782, column: 80, scope: !6297)
!6317 = !DILocation(line: 2782, column: 70, scope: !6297)
!6318 = !DILocation(line: 2782, column: 2, scope: !6297)
!6319 = !DILocation(line: 2784, column: 10, scope: !6297)
!6320 = !DILocation(line: 2784, column: 2, scope: !6297)
!6321 = !DILocation(line: 2785, column: 1, scope: !6297)
!6322 = distinct !DISubprogram(name: "get_dh2066", scope: !65, file: !65, line: 2787, type: !6270, scopeLine: 2787, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !1429)
!6323 = !DILocalVariable(name: "dh2066_p", scope: !6322, file: !65, line: 2789, type: !6324)
!6324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !429, size: 2072, elements: !6325)
!6325 = !{!6326}
!6326 = !DISubrange(count: 259)
!6327 = !DILocation(line: 2789, column: 16, scope: !6322)
!6328 = !DILocalVariable(name: "dh2066_g", scope: !6322, file: !65, line: 2823, type: !6278)
!6329 = !DILocation(line: 2823, column: 16, scope: !6322)
!6330 = !DILocalVariable(name: "dh", scope: !6322, file: !65, line: 2824, type: !5928)
!6331 = !DILocation(line: 2824, column: 6, scope: !6322)
!6332 = !DILocation(line: 2826, column: 12, scope: !6333)
!6333 = distinct !DILexicalBlock(scope: !6322, file: !65, line: 2826, column: 6)
!6334 = !DILocation(line: 2826, column: 10, scope: !6333)
!6335 = !DILocation(line: 2826, column: 22, scope: !6333)
!6336 = !DILocation(line: 2826, column: 6, scope: !6322)
!6337 = !DILocation(line: 2827, column: 3, scope: !6333)
!6338 = !DILocation(line: 2833, column: 14, scope: !6322)
!6339 = !DILocation(line: 2833, column: 28, scope: !6322)
!6340 = !DILocation(line: 2833, column: 18, scope: !6322)
!6341 = !DILocation(line: 2833, column: 80, scope: !6322)
!6342 = !DILocation(line: 2833, column: 70, scope: !6322)
!6343 = !DILocation(line: 2833, column: 2, scope: !6322)
!6344 = !DILocation(line: 2835, column: 10, scope: !6322)
!6345 = !DILocation(line: 2835, column: 2, scope: !6322)
!6346 = !DILocation(line: 2836, column: 1, scope: !6322)
