; ModuleID = '/home/raj/coturn/src/apps/relay/tls_listener.c'
source_filename = "/home/raj/coturn/src/apps/relay/tls_listener.c"
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
%struct.tls_listener_relay_server_info = type { [1025 x i8], %union.ioa_addr, ptr, i32, ptr, ptr, %struct.message_to_relay, ptr, ptr }
%union.ioa_addr = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct.message_to_relay = type { i32, ptr, %union.anon.0 }
%union.anon.0 = type { %struct.cb_socket_message }
%struct.cb_socket_message = type { i8, i32, %struct.stun_tid, ptr, i32, %struct._ioa_net_data, i32 }
%struct.stun_tid = type { [12 x i8] }
%struct._ioa_net_data = type { %union.ioa_addr, ptr, i32, i32 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct._ioa_engine = type { ptr, ptr, i32, i32, ptr, ptr, %struct._stun_buffer_list, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, [65537 x i8], [14 x i32], [14 x %struct.timeval], [1025 x i8], i32, i64, i64, ptr, ptr }
%struct._stun_buffer_list = type { ptr, i64 }
%struct.timeval = type { i64, i64 }
%struct.socket_message = type { ptr, %struct._ioa_net_data, i32 }

@.str = private unnamed_addr constant [47 x i8] c"/home/raj/coturn/src/apps/relay/tls_listener.c\00", align 1, !dbg !0
@__FUNCTION__.create_tls_listener_server = private unnamed_addr constant [27 x i8] c"create_tls_listener_server\00", align 1, !dbg !7
@.str.1 = private unnamed_addr constant [50 x i8] c"Cannot create a TCP/TLS listener for address: %s\0A\00", align 1, !dbg !13
@.str.2 = private unnamed_addr constant [13 x i8] c"%s:%d:start\0A\00", align 1, !dbg !18
@__FUNCTION__.sctp_create_server_listener = private unnamed_addr constant [28 x i8] c"sctp_create_server_listener\00", align 1, !dbg !23
@.str.3 = private unnamed_addr constant [7 x i8] c"socket\00", align 1, !dbg !28
@.str.4 = private unnamed_addr constant [42 x i8] c"Cannot bind listener socket to device %s\0A\00", align 1, !dbg !33
@turn_params = external global %struct._turn_params_, align 8
@.str.5 = private unnamed_addr constant [29 x i8] c"TLS/SCTP listener opened on \00", align 1, !dbg !38
@.str.6 = private unnamed_addr constant [25 x i8] c"SCTP listener opened on \00", align 1, !dbg !43
@.str.7 = private unnamed_addr constant [11 x i8] c"%s:%d:end\0A\00", align 1, !dbg !48
@__FUNCTION__.sctp_server_input_handler = private unnamed_addr constant [26 x i8] c"sctp_server_input_handler\00", align 1, !dbg !53
@.str.8 = private unnamed_addr constant [30 x i8] c"sctp or tls/sctp connected to\00", align 1, !dbg !58
@.str.9 = private unnamed_addr constant [40 x i8] c"Cannot create sctp or tls/sctp session\0A\00", align 1, !dbg !63
@.str.10 = private unnamed_addr constant [34 x i8] c"Cannot create ioa_socket from FD\0A\00", align 1, !dbg !68
@__FUNCTION__.create_server_listener = private unnamed_addr constant [23 x i8] c"create_server_listener\00", align 1, !dbg !73
@.str.11 = private unnamed_addr constant [33 x i8] c"Cannot bind local socket to addr\00", align 1, !dbg !78
@.str.12 = private unnamed_addr constant [48 x i8] c"Cannot bind TLS/TCP listener socket to addr %s\0A\00", align 1, !dbg !83
@.str.13 = private unnamed_addr constant [61 x i8] c"Trying to bind TLS/TCP listener socket to addr %s, again...\0A\00", align 1, !dbg !88
@.str.14 = private unnamed_addr constant [69 x i8] c"Fatal final failure: cannot bind TLS/TCP listener socket to addr %s\0A\00", align 1, !dbg !93
@.str.15 = private unnamed_addr constant [28 x i8] c"Cannot create TLS listener\0A\00", align 1, !dbg !98
@.str.16 = private unnamed_addr constant [28 x i8] c"TLS/TCP listener opened on \00", align 1, !dbg !101
@.str.17 = private unnamed_addr constant [24 x i8] c"TLS listener opened on \00", align 1, !dbg !103
@.str.18 = private unnamed_addr constant [24 x i8] c"TCP listener opened on \00", align 1, !dbg !108
@__FUNCTION__.server_input_handler = private unnamed_addr constant [21 x i8] c"server_input_handler\00", align 1, !dbg !110
@.str.19 = private unnamed_addr constant [24 x i8] c"tcp or tls connected to\00", align 1, !dbg !115
@.str.20 = private unnamed_addr constant [34 x i8] c"Cannot create tcp or tls session\0A\00", align 1, !dbg !117

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @create_tls_listener_server(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #0 !dbg !1005 {
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  store ptr %0, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1009, metadata !DIExpression()), !dbg !1010
  store ptr %1, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1011, metadata !DIExpression()), !dbg !1012
  store i32 %2, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1013, metadata !DIExpression()), !dbg !1014
  store i32 %3, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1015, metadata !DIExpression()), !dbg !1016
  store ptr %4, ptr %13, align 8
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1017, metadata !DIExpression()), !dbg !1018
  store ptr %5, ptr %14, align 8
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1019, metadata !DIExpression()), !dbg !1020
  store ptr %6, ptr %15, align 8
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1021, metadata !DIExpression()), !dbg !1022
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1023, metadata !DIExpression()), !dbg !1024
  %17 = load ptr, ptr %13, align 8, !dbg !1025
  %18 = call ptr @allocate_super_memory_engine_func(ptr noundef %17, i64 noundef 1216, ptr noundef @.str, ptr noundef @__FUNCTION__.create_tls_listener_server, i32 noundef 354), !dbg !1025
  store ptr %18, ptr %16, align 8, !dbg !1024
  %19 = load ptr, ptr %16, align 8, !dbg !1026
  %20 = load ptr, ptr %9, align 8, !dbg !1028
  %21 = load ptr, ptr %10, align 8, !dbg !1029
  %22 = load i32, ptr %11, align 4, !dbg !1030
  %23 = load i32, ptr %12, align 4, !dbg !1031
  %24 = load ptr, ptr %13, align 8, !dbg !1032
  %25 = load ptr, ptr %14, align 8, !dbg !1033
  %26 = load ptr, ptr %15, align 8, !dbg !1034
  %27 = call i32 @init_server(ptr noundef %19, ptr noundef %20, ptr noundef %21, i32 noundef %22, i32 noundef %23, ptr noundef %24, ptr noundef %25, ptr noundef %26), !dbg !1035
  %28 = icmp slt i32 %27, 0, !dbg !1036
  br i1 %28, label %29, label %30, !dbg !1037

29:                                               ; preds = %7
  store ptr null, ptr %8, align 8, !dbg !1038
  br label %32, !dbg !1038

30:                                               ; preds = %7
  %31 = load ptr, ptr %16, align 8, !dbg !1040
  store ptr %31, ptr %8, align 8, !dbg !1042
  br label %32, !dbg !1042

32:                                               ; preds = %30, %29
  %33 = load ptr, ptr %8, align 8, !dbg !1043
  ret ptr %33, !dbg !1043
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare ptr @allocate_super_memory_engine_func(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_server(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #0 !dbg !1044 {
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca i64, align 8
  store ptr %0, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1047, metadata !DIExpression()), !dbg !1048
  store ptr %1, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1049, metadata !DIExpression()), !dbg !1050
  store ptr %2, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1051, metadata !DIExpression()), !dbg !1052
  store i32 %3, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1053, metadata !DIExpression()), !dbg !1054
  store i32 %4, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1055, metadata !DIExpression()), !dbg !1056
  store ptr %5, ptr %15, align 8
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1057, metadata !DIExpression()), !dbg !1058
  store ptr %6, ptr %16, align 8
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1059, metadata !DIExpression()), !dbg !1060
  store ptr %7, ptr %17, align 8
  call void @llvm.dbg.declare(metadata ptr %17, metadata !1061, metadata !DIExpression()), !dbg !1062
  %19 = load ptr, ptr %10, align 8, !dbg !1063
  %20 = icmp ne ptr %19, null, !dbg !1063
  br i1 %20, label %22, label %21, !dbg !1065

21:                                               ; preds = %8
  store i32 -1, ptr %9, align 4, !dbg !1066
  br label %73, !dbg !1066

22:                                               ; preds = %8
  %23 = load ptr, ptr %16, align 8, !dbg !1067
  %24 = load ptr, ptr %10, align 8, !dbg !1068
  %25 = getelementptr inbounds %struct.tls_listener_relay_server_info, ptr %24, i32 0, i32 7, !dbg !1069
  store ptr %23, ptr %25, align 8, !dbg !1070
  %26 = load ptr, ptr %17, align 8, !dbg !1071
  %27 = load ptr, ptr %10, align 8, !dbg !1072
  %28 = getelementptr inbounds %struct.tls_listener_relay_server_info, ptr %27, i32 0, i32 8, !dbg !1073
  store ptr %26, ptr %28, align 8, !dbg !1074
  %29 = load ptr, ptr %11, align 8, !dbg !1075
  %30 = icmp ne ptr %29, null, !dbg !1075
  br i1 %30, label %31, label %53, !dbg !1077

31:                                               ; preds = %22
  br label %32, !dbg !1078

32:                                               ; preds = %31
  %33 = load ptr, ptr %10, align 8, !dbg !1079
  %34 = getelementptr inbounds %struct.tls_listener_relay_server_info, ptr %33, i32 0, i32 0, !dbg !1079
  %35 = getelementptr inbounds [1025 x i8], ptr %34, i64 0, i64 0, !dbg !1079
  %36 = load ptr, ptr %11, align 8, !dbg !1079
  %37 = icmp ne ptr %35, %36, !dbg !1079
  br i1 %37, label %38, label %51, !dbg !1082

38:                                               ; preds = %32
  call void @llvm.dbg.declare(metadata ptr %18, metadata !1083, metadata !DIExpression()), !dbg !1087
  store i64 1025, ptr %18, align 8, !dbg !1087
  %39 = load ptr, ptr %10, align 8, !dbg !1087
  %40 = getelementptr inbounds %struct.tls_listener_relay_server_info, ptr %39, i32 0, i32 0, !dbg !1087
  %41 = getelementptr inbounds [1025 x i8], ptr %40, i64 0, i64 0, !dbg !1087
  %42 = load ptr, ptr %11, align 8, !dbg !1087
  %43 = load i64, ptr %18, align 8, !dbg !1087
  %44 = call ptr @strncpy(ptr noundef %41, ptr noundef %42, i64 noundef %43) #5, !dbg !1087
  %45 = load ptr, ptr %10, align 8, !dbg !1087
  %46 = getelementptr inbounds %struct.tls_listener_relay_server_info, ptr %45, i32 0, i32 0, !dbg !1087
  %47 = getelementptr inbounds [1025 x i8], ptr %46, i64 0, i64 0, !dbg !1087
  %48 = load i64, ptr %18, align 8, !dbg !1087
  %49 = sub i64 %48, 1, !dbg !1087
  %50 = getelementptr inbounds i8, ptr %47, i64 %49, !dbg !1087
  store i8 0, ptr %50, align 1, !dbg !1087
  br label %51, !dbg !1088

51:                                               ; preds = %38, %32
  br label %52, !dbg !1082

52:                                               ; preds = %51
  br label %53, !dbg !1082

53:                                               ; preds = %52, %22
  %54 = load ptr, ptr %12, align 8, !dbg !1089
  %55 = load i32, ptr %13, align 4, !dbg !1091
  %56 = load ptr, ptr %10, align 8, !dbg !1092
  %57 = getelementptr inbounds %struct.tls_listener_relay_server_info, ptr %56, i32 0, i32 1, !dbg !1093
  %58 = call i32 @make_ioa_addr(ptr noundef %54, i32 noundef %55, ptr noundef %57), !dbg !1094
  %59 = icmp slt i32 %58, 0, !dbg !1095
  br i1 %59, label %60, label %62, !dbg !1096

60:                                               ; preds = %53
  %61 = load ptr, ptr %12, align 8, !dbg !1097
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.1, ptr noundef %61), !dbg !1099
  store i32 -1, ptr %9, align 4, !dbg !1100
  br label %73, !dbg !1100

62:                                               ; preds = %53
  %63 = load i32, ptr %14, align 4, !dbg !1101
  %64 = load ptr, ptr %10, align 8, !dbg !1102
  %65 = getelementptr inbounds %struct.tls_listener_relay_server_info, ptr %64, i32 0, i32 3, !dbg !1103
  store i32 %63, ptr %65, align 8, !dbg !1104
  %66 = load ptr, ptr %15, align 8, !dbg !1105
  %67 = load ptr, ptr %10, align 8, !dbg !1106
  %68 = getelementptr inbounds %struct.tls_listener_relay_server_info, ptr %67, i32 0, i32 2, !dbg !1107
  store ptr %66, ptr %68, align 8, !dbg !1108
  %69 = load ptr, ptr %10, align 8, !dbg !1109
  %70 = call i32 @sctp_create_server_listener(ptr noundef %69), !dbg !1110
  %71 = load ptr, ptr %10, align 8, !dbg !1111
  %72 = call i32 @create_server_listener(ptr noundef %71), !dbg !1112
  store i32 %72, ptr %9, align 4, !dbg !1113
  br label %73, !dbg !1113

73:                                               ; preds = %62, %60, %21
  %74 = load i32, ptr %9, align 4, !dbg !1114
  ret i32 %74, !dbg !1114
}

; Function Attrs: nounwind
declare ptr @strncpy(ptr noundef, ptr noundef, i64 noundef) #3

declare i32 @make_ioa_addr(ptr noundef, i32 noundef, ptr noundef) #2

declare void @turn_log_func_default(i32 noundef, ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_create_server_listener(ptr noundef %0) #0 !dbg !1115 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1118, metadata !DIExpression()), !dbg !1119
  %5 = load ptr, ptr %3, align 8, !dbg !1120
  %6 = icmp ne ptr %5, null, !dbg !1120
  br i1 %6, label %7, label %13, !dbg !1120

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8, !dbg !1120
  %9 = getelementptr inbounds %struct.tls_listener_relay_server_info, ptr %8, i32 0, i32 3, !dbg !1120
  %10 = load i32, ptr %9, align 8, !dbg !1120
  %11 = icmp eq i32 %10, 2, !dbg !1120
  br i1 %11, label %12, label %13, !dbg !1122

12:                                               ; preds = %7
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.2, ptr noundef @__FUNCTION__.sctp_create_server_listener, i32 noundef 264), !dbg !1120
  br label %13, !dbg !1120

13:                                               ; preds = %12, %7, %1
  %14 = load ptr, ptr %3, align 8, !dbg !1123
  %15 = icmp ne ptr %14, null, !dbg !1123
  br i1 %15, label %17, label %16, !dbg !1125

16:                                               ; preds = %13
  store i32 -1, ptr %2, align 4, !dbg !1126
  br label %94, !dbg !1126

17:                                               ; preds = %13
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1127, metadata !DIExpression()), !dbg !1128
  store i32 -1, ptr %4, align 4, !dbg !1128
  %18 = load ptr, ptr %3, align 8, !dbg !1129
  %19 = getelementptr inbounds %struct.tls_listener_relay_server_info, ptr %18, i32 0, i32 1, !dbg !1130
  %20 = getelementptr inbounds %struct.sockaddr, ptr %19, i32 0, i32 0, !dbg !1131
  %21 = load i16, ptr %20, align 4, !dbg !1131
  %22 = zext i16 %21 to i32, !dbg !1129
  %23 = call i32 @socket(i32 noundef %22, i32 noundef 1, i32 noundef 132) #5, !dbg !1132
  store i32 %23, ptr %4, align 4, !dbg !1133
  %24 = load i32, ptr %4, align 4, !dbg !1134
  %25 = icmp slt i32 %24, 0, !dbg !1136
  br i1 %25, label %26, label %27, !dbg !1137

26:                                               ; preds = %17
  call void @perror(ptr noundef @.str.3), !dbg !1138
  store i32 -1, ptr %2, align 4, !dbg !1140
  br label %94, !dbg !1140

27:                                               ; preds = %17
  %28 = load i32, ptr %4, align 4, !dbg !1141
  %29 = load ptr, ptr %3, align 8, !dbg !1143
  %30 = getelementptr inbounds %struct.tls_listener_relay_server_info, ptr %29, i32 0, i32 0, !dbg !1144
  %31 = getelementptr inbounds [1025 x i8], ptr %30, i64 0, i64 0, !dbg !1143
  %32 = call i32 @sock_bind_to_device(i32 noundef %28, ptr noundef %31), !dbg !1145
  %33 = icmp slt i32 %32, 0, !dbg !1146
  br i1 %33, label %34, label %38, !dbg !1147

34:                                               ; preds = %27
  %35 = load ptr, ptr %3, align 8, !dbg !1148
  %36 = getelementptr inbounds %struct.tls_listener_relay_server_info, ptr %35, i32 0, i32 0, !dbg !1150
  %37 = getelementptr inbounds [1025 x i8], ptr %36, i64 0, i64 0, !dbg !1148
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.4, ptr noundef %37), !dbg !1151
  br label %38, !dbg !1152

38:                                               ; preds = %34, %27
  %39 = load i32, ptr %4, align 4, !dbg !1153
  %40 = load ptr, ptr %3, align 8, !dbg !1155
  %41 = getelementptr inbounds %struct.tls_listener_relay_server_info, ptr %40, i32 0, i32 1, !dbg !1156
  %42 = call i32 @addr_bind(i32 noundef %39, ptr noundef %41, i32 noundef 1, i32 noundef 0, i32 noundef 132), !dbg !1157
  %43 = icmp slt i32 %42, 0, !dbg !1158
  br i1 %43, label %44, label %47, !dbg !1159

44:                                               ; preds = %38
  %45 = load i32, ptr %4, align 4, !dbg !1160
  %46 = call i32 @close(i32 noundef %45), !dbg !1162
  store i32 -1, ptr %2, align 4, !dbg !1163
  br label %94, !dbg !1163

47:                                               ; preds = %38
  %48 = load i32, ptr %4, align 4, !dbg !1164
  %49 = call i32 @socket_tcp_set_keepalive(i32 noundef %48, i32 noundef 132), !dbg !1165
  %50 = load i32, ptr %4, align 4, !dbg !1166
  %51 = call i32 @socket_set_nonblocking(i32 noundef %50), !dbg !1167
  %52 = load ptr, ptr %3, align 8, !dbg !1168
  %53 = getelementptr inbounds %struct.tls_listener_relay_server_info, ptr %52, i32 0, i32 2, !dbg !1169
  %54 = load ptr, ptr %53, align 8, !dbg !1169
  %55 = getelementptr inbounds %struct._ioa_engine, ptr %54, i32 0, i32 1, !dbg !1170
  %56 = load ptr, ptr %55, align 8, !dbg !1170
  %57 = load ptr, ptr %3, align 8, !dbg !1171
  %58 = load i32, ptr %4, align 4, !dbg !1172
  %59 = call ptr @evconnlistener_new(ptr noundef %56, ptr noundef @sctp_server_input_handler, ptr noundef %57, i32 noundef 10, i32 noundef 1024, i32 noundef %58), !dbg !1173
  %60 = load ptr, ptr %3, align 8, !dbg !1174
  %61 = getelementptr inbounds %struct.tls_listener_relay_server_info, ptr %60, i32 0, i32 5, !dbg !1175
  store ptr %59, ptr %61, align 8, !dbg !1176
  %62 = load ptr, ptr %3, align 8, !dbg !1177
  %63 = getelementptr inbounds %struct.tls_listener_relay_server_info, ptr %62, i32 0, i32 5, !dbg !1179
  %64 = load ptr, ptr %63, align 8, !dbg !1179
  %65 = icmp ne ptr %64, null, !dbg !1180
  br i1 %65, label %69, label %66, !dbg !1181

66:                                               ; preds = %47
  %67 = load i32, ptr %4, align 4, !dbg !1182
  %68 = call i32 @close(i32 noundef %67), !dbg !1182
  store i32 -1, ptr %2, align 4, !dbg !1184
  br label %94, !dbg !1184

69:                                               ; preds = %47
  %70 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 17), align 8, !dbg !1185
  %71 = icmp ne i32 %70, 0, !dbg !1187
  br i1 %71, label %78, label %72, !dbg !1188

72:                                               ; preds = %69
  %73 = load ptr, ptr %3, align 8, !dbg !1189
  %74 = getelementptr inbounds %struct.tls_listener_relay_server_info, ptr %73, i32 0, i32 3, !dbg !1190
  %75 = load i32, ptr %74, align 8, !dbg !1190
  %76 = load ptr, ptr %3, align 8, !dbg !1191
  %77 = getelementptr inbounds %struct.tls_listener_relay_server_info, ptr %76, i32 0, i32 1, !dbg !1192
  call void @addr_debug_print(i32 noundef %75, ptr noundef %77, ptr noundef @.str.5), !dbg !1193
  br label %84, !dbg !1193

78:                                               ; preds = %69
  %79 = load ptr, ptr %3, align 8, !dbg !1194
  %80 = getelementptr inbounds %struct.tls_listener_relay_server_info, ptr %79, i32 0, i32 3, !dbg !1195
  %81 = load i32, ptr %80, align 8, !dbg !1195
  %82 = load ptr, ptr %3, align 8, !dbg !1196
  %83 = getelementptr inbounds %struct.tls_listener_relay_server_info, ptr %82, i32 0, i32 1, !dbg !1197
  call void @addr_debug_print(i32 noundef %81, ptr noundef %83, ptr noundef @.str.6), !dbg !1198
  br label %84

84:                                               ; preds = %78, %72
  %85 = load ptr, ptr %3, align 8, !dbg !1199
  %86 = icmp ne ptr %85, null, !dbg !1199
  br i1 %86, label %87, label %93, !dbg !1199

87:                                               ; preds = %84
  %88 = load ptr, ptr %3, align 8, !dbg !1199
  %89 = getelementptr inbounds %struct.tls_listener_relay_server_info, ptr %88, i32 0, i32 3, !dbg !1199
  %90 = load i32, ptr %89, align 8, !dbg !1199
  %91 = icmp eq i32 %90, 2, !dbg !1199
  br i1 %91, label %92, label %93, !dbg !1201

92:                                               ; preds = %87
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.7, ptr noundef @__FUNCTION__.sctp_create_server_listener, i32 noundef 304), !dbg !1199
  br label %93, !dbg !1199

93:                                               ; preds = %92, %87, %84
  store i32 0, ptr %2, align 4, !dbg !1202
  br label %94, !dbg !1202

94:                                               ; preds = %93, %66, %44, %26, %16
  %95 = load i32, ptr %2, align 4, !dbg !1203
  ret i32 %95, !dbg !1203
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_server_listener(ptr noundef %0) #0 !dbg !1204 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [129 x i8], align 16
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1205, metadata !DIExpression()), !dbg !1206
  %8 = load ptr, ptr %3, align 8, !dbg !1207
  %9 = icmp ne ptr %8, null, !dbg !1207
  br i1 %9, label %10, label %16, !dbg !1207

10:                                               ; preds = %1
  %11 = load ptr, ptr %3, align 8, !dbg !1207
  %12 = getelementptr inbounds %struct.tls_listener_relay_server_info, ptr %11, i32 0, i32 3, !dbg !1207
  %13 = load i32, ptr %12, align 8, !dbg !1207
  %14 = icmp eq i32 %13, 2, !dbg !1207
  br i1 %14, label %15, label %16, !dbg !1209

15:                                               ; preds = %10
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.2, ptr noundef @__FUNCTION__.create_server_listener, i32 noundef 197), !dbg !1207
  br label %16, !dbg !1207

16:                                               ; preds = %15, %10, %1
  %17 = load ptr, ptr %3, align 8, !dbg !1210
  %18 = icmp ne ptr %17, null, !dbg !1210
  br i1 %18, label %20, label %19, !dbg !1212

19:                                               ; preds = %16
  store i32 -1, ptr %2, align 4, !dbg !1213
  br label %126, !dbg !1213

20:                                               ; preds = %16
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1214, metadata !DIExpression()), !dbg !1215
  store i32 -1, ptr %4, align 4, !dbg !1215
  %21 = load ptr, ptr %3, align 8, !dbg !1216
  %22 = getelementptr inbounds %struct.tls_listener_relay_server_info, ptr %21, i32 0, i32 1, !dbg !1217
  %23 = getelementptr inbounds %struct.sockaddr, ptr %22, i32 0, i32 0, !dbg !1218
  %24 = load i16, ptr %23, align 4, !dbg !1218
  %25 = zext i16 %24 to i32, !dbg !1216
  %26 = call i32 @socket(i32 noundef %25, i32 noundef 1, i32 noundef 0) #5, !dbg !1219
  store i32 %26, ptr %4, align 4, !dbg !1220
  %27 = load i32, ptr %4, align 4, !dbg !1221
  %28 = icmp slt i32 %27, 0, !dbg !1223
  br i1 %28, label %29, label %30, !dbg !1224

29:                                               ; preds = %20
  call void @perror(ptr noundef @.str.3), !dbg !1225
  store i32 -1, ptr %2, align 4, !dbg !1227
  br label %126, !dbg !1227

30:                                               ; preds = %20
  %31 = load i32, ptr %4, align 4, !dbg !1228
  %32 = load ptr, ptr %3, align 8, !dbg !1230
  %33 = getelementptr inbounds %struct.tls_listener_relay_server_info, ptr %32, i32 0, i32 0, !dbg !1231
  %34 = getelementptr inbounds [1025 x i8], ptr %33, i64 0, i64 0, !dbg !1230
  %35 = call i32 @sock_bind_to_device(i32 noundef %31, ptr noundef %34), !dbg !1232
  %36 = icmp slt i32 %35, 0, !dbg !1233
  br i1 %36, label %37, label %41, !dbg !1234

37:                                               ; preds = %30
  %38 = load ptr, ptr %3, align 8, !dbg !1235
  %39 = getelementptr inbounds %struct.tls_listener_relay_server_info, ptr %38, i32 0, i32 0, !dbg !1237
  %40 = getelementptr inbounds [1025 x i8], ptr %39, i64 0, i64 0, !dbg !1235
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.4, ptr noundef %40), !dbg !1238
  br label %41, !dbg !1239

41:                                               ; preds = %37, %30
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1240, metadata !DIExpression()), !dbg !1243
  store i32 60, ptr %5, align 4, !dbg !1243
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1244, metadata !DIExpression()), !dbg !1245
  store i32 0, ptr %6, align 4, !dbg !1245
  br label %42, !dbg !1246

42:                                               ; preds = %57, %41
  call void @llvm.dbg.label(metadata !1247), !dbg !1248
  %43 = load i32, ptr %4, align 4, !dbg !1249
  %44 = load ptr, ptr %3, align 8, !dbg !1251
  %45 = getelementptr inbounds %struct.tls_listener_relay_server_info, ptr %44, i32 0, i32 1, !dbg !1252
  %46 = call i32 @addr_bind(i32 noundef %43, ptr noundef %45, i32 noundef 1, i32 noundef 1, i32 noundef 6), !dbg !1253
  %47 = icmp slt i32 %46, 0, !dbg !1254
  br i1 %47, label %48, label %62, !dbg !1255

48:                                               ; preds = %42
  call void @perror(ptr noundef @.str.11), !dbg !1256
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1258, metadata !DIExpression()), !dbg !1262
  %49 = load ptr, ptr %3, align 8, !dbg !1263
  %50 = getelementptr inbounds %struct.tls_listener_relay_server_info, ptr %49, i32 0, i32 1, !dbg !1264
  %51 = getelementptr inbounds [129 x i8], ptr %7, i64 0, i64 0, !dbg !1265
  %52 = call i32 @addr_to_string(ptr noundef %50, ptr noundef %51), !dbg !1266
  %53 = getelementptr inbounds [129 x i8], ptr %7, i64 0, i64 0, !dbg !1267
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 2, ptr noundef @.str.12, ptr noundef %53), !dbg !1268
  %54 = load i32, ptr %6, align 4, !dbg !1269
  %55 = add nsw i32 %54, 1, !dbg !1269
  store i32 %55, ptr %6, align 4, !dbg !1269
  %56 = icmp slt i32 %54, 60, !dbg !1271
  br i1 %56, label %57, label %60, !dbg !1272

57:                                               ; preds = %48
  %58 = getelementptr inbounds [129 x i8], ptr %7, i64 0, i64 0, !dbg !1273
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.13, ptr noundef %58), !dbg !1275
  %59 = call i32 @sleep(i32 noundef 1), !dbg !1276
  br label %42, !dbg !1277

60:                                               ; preds = %48
  %61 = getelementptr inbounds [129 x i8], ptr %7, i64 0, i64 0, !dbg !1278
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.14, ptr noundef %61), !dbg !1279
  call void @exit(i32 noundef -1) #6, !dbg !1280
  unreachable, !dbg !1280

62:                                               ; preds = %42
  %63 = load i32, ptr %4, align 4, !dbg !1281
  %64 = call i32 @socket_tcp_set_keepalive(i32 noundef %63, i32 noundef 6), !dbg !1282
  %65 = load i32, ptr %4, align 4, !dbg !1283
  %66 = call i32 @socket_set_nonblocking(i32 noundef %65), !dbg !1284
  %67 = load ptr, ptr %3, align 8, !dbg !1285
  %68 = getelementptr inbounds %struct.tls_listener_relay_server_info, ptr %67, i32 0, i32 2, !dbg !1286
  %69 = load ptr, ptr %68, align 8, !dbg !1286
  %70 = getelementptr inbounds %struct._ioa_engine, ptr %69, i32 0, i32 1, !dbg !1287
  %71 = load ptr, ptr %70, align 8, !dbg !1287
  %72 = load ptr, ptr %3, align 8, !dbg !1288
  %73 = load i32, ptr %4, align 4, !dbg !1289
  %74 = call ptr @evconnlistener_new(ptr noundef %71, ptr noundef @server_input_handler, ptr noundef %72, i32 noundef 10, i32 noundef 1024, i32 noundef %73), !dbg !1290
  %75 = load ptr, ptr %3, align 8, !dbg !1291
  %76 = getelementptr inbounds %struct.tls_listener_relay_server_info, ptr %75, i32 0, i32 4, !dbg !1292
  store ptr %74, ptr %76, align 8, !dbg !1293
  %77 = load ptr, ptr %3, align 8, !dbg !1294
  %78 = getelementptr inbounds %struct.tls_listener_relay_server_info, ptr %77, i32 0, i32 4, !dbg !1296
  %79 = load ptr, ptr %78, align 8, !dbg !1296
  %80 = icmp ne ptr %79, null, !dbg !1297
  br i1 %80, label %84, label %81, !dbg !1298

81:                                               ; preds = %62
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.15), !dbg !1299
  %82 = load i32, ptr %4, align 4, !dbg !1301
  %83 = call i32 @close(i32 noundef %82), !dbg !1301
  store i32 -1, ptr %2, align 4, !dbg !1302
  br label %126, !dbg !1302

84:                                               ; preds = %62
  %85 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 35), align 4, !dbg !1303
  %86 = icmp ne i32 %85, 0, !dbg !1305
  br i1 %86, label %96, label %87, !dbg !1306

87:                                               ; preds = %84
  %88 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 17), align 8, !dbg !1307
  %89 = icmp ne i32 %88, 0, !dbg !1308
  br i1 %89, label %96, label %90, !dbg !1309

90:                                               ; preds = %87
  %91 = load ptr, ptr %3, align 8, !dbg !1310
  %92 = getelementptr inbounds %struct.tls_listener_relay_server_info, ptr %91, i32 0, i32 3, !dbg !1311
  %93 = load i32, ptr %92, align 8, !dbg !1311
  %94 = load ptr, ptr %3, align 8, !dbg !1312
  %95 = getelementptr inbounds %struct.tls_listener_relay_server_info, ptr %94, i32 0, i32 1, !dbg !1313
  call void @addr_debug_print(i32 noundef %93, ptr noundef %95, ptr noundef @.str.16), !dbg !1314
  br label %116, !dbg !1314

96:                                               ; preds = %87, %84
  %97 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 17), align 8, !dbg !1315
  %98 = icmp ne i32 %97, 0, !dbg !1317
  br i1 %98, label %105, label %99, !dbg !1318

99:                                               ; preds = %96
  %100 = load ptr, ptr %3, align 8, !dbg !1319
  %101 = getelementptr inbounds %struct.tls_listener_relay_server_info, ptr %100, i32 0, i32 3, !dbg !1320
  %102 = load i32, ptr %101, align 8, !dbg !1320
  %103 = load ptr, ptr %3, align 8, !dbg !1321
  %104 = getelementptr inbounds %struct.tls_listener_relay_server_info, ptr %103, i32 0, i32 1, !dbg !1322
  call void @addr_debug_print(i32 noundef %102, ptr noundef %104, ptr noundef @.str.17), !dbg !1323
  br label %115, !dbg !1323

105:                                              ; preds = %96
  %106 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 35), align 4, !dbg !1324
  %107 = icmp ne i32 %106, 0, !dbg !1326
  br i1 %107, label %114, label %108, !dbg !1327

108:                                              ; preds = %105
  %109 = load ptr, ptr %3, align 8, !dbg !1328
  %110 = getelementptr inbounds %struct.tls_listener_relay_server_info, ptr %109, i32 0, i32 3, !dbg !1329
  %111 = load i32, ptr %110, align 8, !dbg !1329
  %112 = load ptr, ptr %3, align 8, !dbg !1330
  %113 = getelementptr inbounds %struct.tls_listener_relay_server_info, ptr %112, i32 0, i32 1, !dbg !1331
  call void @addr_debug_print(i32 noundef %111, ptr noundef %113, ptr noundef @.str.18), !dbg !1332
  br label %114, !dbg !1332

114:                                              ; preds = %108, %105
  br label %115

115:                                              ; preds = %114, %99
  br label %116

116:                                              ; preds = %115, %90
  %117 = load ptr, ptr %3, align 8, !dbg !1333
  %118 = icmp ne ptr %117, null, !dbg !1333
  br i1 %118, label %119, label %125, !dbg !1333

119:                                              ; preds = %116
  %120 = load ptr, ptr %3, align 8, !dbg !1333
  %121 = getelementptr inbounds %struct.tls_listener_relay_server_info, ptr %120, i32 0, i32 3, !dbg !1333
  %122 = load i32, ptr %121, align 8, !dbg !1333
  %123 = icmp eq i32 %122, 2, !dbg !1333
  br i1 %123, label %124, label %125, !dbg !1335

124:                                              ; preds = %119
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.7, ptr noundef @__FUNCTION__.create_server_listener, i32 noundef 255), !dbg !1333
  br label %125, !dbg !1333

125:                                              ; preds = %124, %119, %116
  store i32 0, ptr %2, align 4, !dbg !1336
  br label %126, !dbg !1336

126:                                              ; preds = %125, %81, %29, %19
  %127 = load i32, ptr %2, align 4, !dbg !1337
  ret i32 %127, !dbg !1337
}

; Function Attrs: nounwind
declare i32 @socket(i32 noundef, i32 noundef, i32 noundef) #3

declare void @perror(ptr noundef) #2

declare i32 @sock_bind_to_device(i32 noundef, ptr noundef) #2

declare i32 @addr_bind(i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare i32 @close(i32 noundef) #2

declare i32 @socket_tcp_set_keepalive(i32 noundef, i32 noundef) #2

declare i32 @socket_set_nonblocking(i32 noundef) #2

declare ptr @evconnlistener_new(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_server_input_handler(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) #0 !dbg !1338 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1342, metadata !DIExpression()), !dbg !1343
  store i32 %1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1344, metadata !DIExpression()), !dbg !1345
  store ptr %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1346, metadata !DIExpression()), !dbg !1347
  store i32 %3, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1348, metadata !DIExpression()), !dbg !1349
  store ptr %4, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1350, metadata !DIExpression()), !dbg !1351
  br label %15, !dbg !1352

15:                                               ; preds = %5
  %16 = load ptr, ptr %6, align 8, !dbg !1353
  store ptr %16, ptr %6, align 8, !dbg !1353
  br label %17, !dbg !1353

17:                                               ; preds = %15
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1355, metadata !DIExpression()), !dbg !1356
  %18 = load ptr, ptr %10, align 8, !dbg !1357
  store ptr %18, ptr %11, align 8, !dbg !1356
  %19 = load ptr, ptr %11, align 8, !dbg !1358
  %20 = getelementptr inbounds %struct.tls_listener_relay_server_info, ptr %19, i32 0, i32 7, !dbg !1360
  %21 = load ptr, ptr %20, align 8, !dbg !1360
  %22 = icmp ne ptr %21, null, !dbg !1361
  br i1 %22, label %26, label %23, !dbg !1362

23:                                               ; preds = %17
  %24 = load i32, ptr %7, align 4, !dbg !1363
  %25 = call i32 @close(i32 noundef %24), !dbg !1363
  br label %136, !dbg !1365

26:                                               ; preds = %17
  %27 = load ptr, ptr %11, align 8, !dbg !1366
  %28 = icmp ne ptr %27, null, !dbg !1366
  br i1 %28, label %29, label %35, !dbg !1366

29:                                               ; preds = %26
  %30 = load ptr, ptr %11, align 8, !dbg !1366
  %31 = getelementptr inbounds %struct.tls_listener_relay_server_info, ptr %30, i32 0, i32 3, !dbg !1366
  %32 = load i32, ptr %31, align 8, !dbg !1366
  %33 = icmp eq i32 %32, 2, !dbg !1366
  br i1 %33, label %34, label %35, !dbg !1368

34:                                               ; preds = %29
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.2, ptr noundef @__FUNCTION__.sctp_server_input_handler, i32 noundef 141), !dbg !1366
  br label %35, !dbg !1366

35:                                               ; preds = %34, %29, %26
  %36 = load ptr, ptr %11, align 8, !dbg !1369
  %37 = icmp ne ptr %36, null, !dbg !1369
  br i1 %37, label %39, label %38, !dbg !1371

38:                                               ; preds = %35
  br label %136, !dbg !1372

39:                                               ; preds = %35
  %40 = load ptr, ptr %8, align 8, !dbg !1373
  %41 = load ptr, ptr %11, align 8, !dbg !1374
  %42 = getelementptr inbounds %struct.tls_listener_relay_server_info, ptr %41, i32 0, i32 6, !dbg !1375
  %43 = getelementptr inbounds %struct.message_to_relay, ptr %42, i32 0, i32 2, !dbg !1376
  %44 = getelementptr inbounds %struct.socket_message, ptr %43, i32 0, i32 1, !dbg !1377
  %45 = getelementptr inbounds %struct._ioa_net_data, ptr %44, i32 0, i32 0, !dbg !1378
  %46 = load i32, ptr %9, align 4, !dbg !1379
  %47 = sext i32 %46 to i64, !dbg !1379
  call void @bcopy(ptr noundef %40, ptr noundef %45, i64 noundef %47) #5, !dbg !1380
  %48 = load ptr, ptr %11, align 8, !dbg !1381
  %49 = getelementptr inbounds %struct.tls_listener_relay_server_info, ptr %48, i32 0, i32 3, !dbg !1382
  %50 = load i32, ptr %49, align 8, !dbg !1382
  %51 = load ptr, ptr %11, align 8, !dbg !1383
  %52 = getelementptr inbounds %struct.tls_listener_relay_server_info, ptr %51, i32 0, i32 6, !dbg !1384
  %53 = getelementptr inbounds %struct.message_to_relay, ptr %52, i32 0, i32 2, !dbg !1385
  %54 = getelementptr inbounds %struct.socket_message, ptr %53, i32 0, i32 1, !dbg !1386
  %55 = getelementptr inbounds %struct._ioa_net_data, ptr %54, i32 0, i32 0, !dbg !1387
  call void @addr_debug_print(i32 noundef %50, ptr noundef %55, ptr noundef @.str.8), !dbg !1388
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1389, metadata !DIExpression()), !dbg !1390
  store i32 254, ptr %12, align 4, !dbg !1390
  %56 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 17), align 8, !dbg !1391
  %57 = icmp ne i32 %56, 0, !dbg !1393
  br i1 %57, label %58, label %59, !dbg !1394

58:                                               ; preds = %39
  store i32 132, ptr %12, align 4, !dbg !1395
  br label %64, !dbg !1396

59:                                               ; preds = %39
  %60 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 35), align 4, !dbg !1397
  %61 = icmp ne i32 %60, 0, !dbg !1399
  br i1 %61, label %62, label %63, !dbg !1400

62:                                               ; preds = %59
  store i32 133, ptr %12, align 4, !dbg !1401
  br label %63, !dbg !1402

63:                                               ; preds = %62, %59
  br label %64

64:                                               ; preds = %63, %58
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1403, metadata !DIExpression()), !dbg !1404
  %65 = load ptr, ptr %11, align 8, !dbg !1405
  %66 = getelementptr inbounds %struct.tls_listener_relay_server_info, ptr %65, i32 0, i32 2, !dbg !1406
  %67 = load ptr, ptr %66, align 8, !dbg !1406
  %68 = load i32, ptr %7, align 4, !dbg !1407
  %69 = load i32, ptr %12, align 4, !dbg !1408
  %70 = load ptr, ptr %11, align 8, !dbg !1409
  %71 = getelementptr inbounds %struct.tls_listener_relay_server_info, ptr %70, i32 0, i32 6, !dbg !1410
  %72 = getelementptr inbounds %struct.message_to_relay, ptr %71, i32 0, i32 2, !dbg !1411
  %73 = getelementptr inbounds %struct.socket_message, ptr %72, i32 0, i32 1, !dbg !1412
  %74 = getelementptr inbounds %struct._ioa_net_data, ptr %73, i32 0, i32 0, !dbg !1413
  %75 = load ptr, ptr %11, align 8, !dbg !1414
  %76 = getelementptr inbounds %struct.tls_listener_relay_server_info, ptr %75, i32 0, i32 1, !dbg !1415
  %77 = call ptr @create_ioa_socket_from_fd(ptr noundef %67, i32 noundef %68, ptr noundef null, i32 noundef %69, i32 noundef 1, ptr noundef %74, ptr noundef %76), !dbg !1416
  store ptr %77, ptr %13, align 8, !dbg !1404
  %78 = load ptr, ptr %13, align 8, !dbg !1417
  %79 = icmp ne ptr %78, null, !dbg !1417
  br i1 %79, label %80, label %124, !dbg !1419

80:                                               ; preds = %64
  %81 = load ptr, ptr %11, align 8, !dbg !1420
  %82 = getelementptr inbounds %struct.tls_listener_relay_server_info, ptr %81, i32 0, i32 6, !dbg !1422
  %83 = getelementptr inbounds %struct.message_to_relay, ptr %82, i32 0, i32 2, !dbg !1423
  %84 = getelementptr inbounds %struct.socket_message, ptr %83, i32 0, i32 1, !dbg !1424
  %85 = getelementptr inbounds %struct._ioa_net_data, ptr %84, i32 0, i32 2, !dbg !1425
  store i32 -1, ptr %85, align 8, !dbg !1426
  %86 = load ptr, ptr %11, align 8, !dbg !1427
  %87 = getelementptr inbounds %struct.tls_listener_relay_server_info, ptr %86, i32 0, i32 6, !dbg !1428
  %88 = getelementptr inbounds %struct.message_to_relay, ptr %87, i32 0, i32 2, !dbg !1429
  %89 = getelementptr inbounds %struct.socket_message, ptr %88, i32 0, i32 1, !dbg !1430
  %90 = getelementptr inbounds %struct._ioa_net_data, ptr %89, i32 0, i32 3, !dbg !1431
  store i32 -1, ptr %90, align 4, !dbg !1432
  %91 = load ptr, ptr %11, align 8, !dbg !1433
  %92 = getelementptr inbounds %struct.tls_listener_relay_server_info, ptr %91, i32 0, i32 6, !dbg !1434
  %93 = getelementptr inbounds %struct.message_to_relay, ptr %92, i32 0, i32 2, !dbg !1435
  %94 = getelementptr inbounds %struct.socket_message, ptr %93, i32 0, i32 1, !dbg !1436
  %95 = getelementptr inbounds %struct._ioa_net_data, ptr %94, i32 0, i32 1, !dbg !1437
  store ptr null, ptr %95, align 8, !dbg !1438
  %96 = load ptr, ptr %13, align 8, !dbg !1439
  %97 = load ptr, ptr %11, align 8, !dbg !1440
  %98 = getelementptr inbounds %struct.tls_listener_relay_server_info, ptr %97, i32 0, i32 6, !dbg !1441
  %99 = getelementptr inbounds %struct.message_to_relay, ptr %98, i32 0, i32 2, !dbg !1442
  %100 = getelementptr inbounds %struct.socket_message, ptr %99, i32 0, i32 0, !dbg !1443
  store ptr %96, ptr %100, align 8, !dbg !1444
  %101 = load ptr, ptr %11, align 8, !dbg !1445
  %102 = getelementptr inbounds %struct.tls_listener_relay_server_info, ptr %101, i32 0, i32 6, !dbg !1446
  %103 = getelementptr inbounds %struct.message_to_relay, ptr %102, i32 0, i32 2, !dbg !1447
  %104 = getelementptr inbounds %struct.socket_message, ptr %103, i32 0, i32 2, !dbg !1448
  store i32 1, ptr %104, align 8, !dbg !1449
  %105 = load ptr, ptr %11, align 8, !dbg !1450
  %106 = getelementptr inbounds %struct.tls_listener_relay_server_info, ptr %105, i32 0, i32 8, !dbg !1451
  %107 = load ptr, ptr %106, align 8, !dbg !1451
  %108 = load ptr, ptr %11, align 8, !dbg !1452
  %109 = getelementptr inbounds %struct.tls_listener_relay_server_info, ptr %108, i32 0, i32 6, !dbg !1453
  %110 = getelementptr inbounds %struct.message_to_relay, ptr %109, i32 0, i32 1, !dbg !1454
  store ptr %107, ptr %110, align 8, !dbg !1455
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1456, metadata !DIExpression()), !dbg !1457
  %111 = load ptr, ptr %11, align 8, !dbg !1458
  %112 = getelementptr inbounds %struct.tls_listener_relay_server_info, ptr %111, i32 0, i32 7, !dbg !1459
  %113 = load ptr, ptr %112, align 8, !dbg !1459
  %114 = load ptr, ptr %11, align 8, !dbg !1460
  %115 = getelementptr inbounds %struct.tls_listener_relay_server_info, ptr %114, i32 0, i32 2, !dbg !1461
  %116 = load ptr, ptr %115, align 8, !dbg !1461
  %117 = load ptr, ptr %11, align 8, !dbg !1462
  %118 = getelementptr inbounds %struct.tls_listener_relay_server_info, ptr %117, i32 0, i32 6, !dbg !1463
  %119 = call i32 %113(ptr noundef %116, ptr noundef %118), !dbg !1458
  store i32 %119, ptr %14, align 4, !dbg !1457
  %120 = load i32, ptr %14, align 4, !dbg !1464
  %121 = icmp slt i32 %120, 0, !dbg !1466
  br i1 %121, label %122, label %123, !dbg !1467

122:                                              ; preds = %80
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.9), !dbg !1468
  br label %123, !dbg !1470

123:                                              ; preds = %122, %80
  br label %127, !dbg !1471

124:                                              ; preds = %64
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.10), !dbg !1472
  %125 = load i32, ptr %7, align 4, !dbg !1474
  %126 = call i32 @close(i32 noundef %125), !dbg !1474
  br label %127

127:                                              ; preds = %124, %123
  %128 = load ptr, ptr %11, align 8, !dbg !1475
  %129 = icmp ne ptr %128, null, !dbg !1475
  br i1 %129, label %130, label %136, !dbg !1475

130:                                              ; preds = %127
  %131 = load ptr, ptr %11, align 8, !dbg !1475
  %132 = getelementptr inbounds %struct.tls_listener_relay_server_info, ptr %131, i32 0, i32 3, !dbg !1475
  %133 = load i32, ptr %132, align 8, !dbg !1475
  %134 = icmp eq i32 %133, 2, !dbg !1475
  br i1 %134, label %135, label %136, !dbg !1477

135:                                              ; preds = %130
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.7, ptr noundef @__FUNCTION__.sctp_server_input_handler, i32 noundef 188), !dbg !1475
  br label %136, !dbg !1475

136:                                              ; preds = %23, %38, %135, %130, %127
  ret void, !dbg !1478
}

declare void @addr_debug_print(i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare void @bcopy(ptr noundef, ptr noundef, i64 noundef) #3

declare ptr @create_ioa_socket_from_fd(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

declare i32 @addr_to_string(ptr noundef, ptr noundef) #2

declare i32 @sleep(i32 noundef) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @server_input_handler(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) #0 !dbg !1479 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1480, metadata !DIExpression()), !dbg !1481
  store i32 %1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1482, metadata !DIExpression()), !dbg !1483
  store ptr %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1484, metadata !DIExpression()), !dbg !1485
  store i32 %3, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1486, metadata !DIExpression()), !dbg !1487
  store ptr %4, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1488, metadata !DIExpression()), !dbg !1489
  br label %15, !dbg !1490

15:                                               ; preds = %5
  %16 = load ptr, ptr %6, align 8, !dbg !1491
  store ptr %16, ptr %6, align 8, !dbg !1491
  br label %17, !dbg !1491

17:                                               ; preds = %15
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1493, metadata !DIExpression()), !dbg !1494
  %18 = load ptr, ptr %10, align 8, !dbg !1495
  store ptr %18, ptr %11, align 8, !dbg !1494
  %19 = load ptr, ptr %11, align 8, !dbg !1496
  %20 = getelementptr inbounds %struct.tls_listener_relay_server_info, ptr %19, i32 0, i32 7, !dbg !1498
  %21 = load ptr, ptr %20, align 8, !dbg !1498
  %22 = icmp ne ptr %21, null, !dbg !1499
  br i1 %22, label %26, label %23, !dbg !1500

23:                                               ; preds = %17
  %24 = load i32, ptr %7, align 4, !dbg !1501
  %25 = call i32 @close(i32 noundef %24), !dbg !1501
  br label %141, !dbg !1503

26:                                               ; preds = %17
  %27 = load ptr, ptr %11, align 8, !dbg !1504
  %28 = icmp ne ptr %27, null, !dbg !1504
  br i1 %28, label %29, label %35, !dbg !1504

29:                                               ; preds = %26
  %30 = load ptr, ptr %11, align 8, !dbg !1504
  %31 = getelementptr inbounds %struct.tls_listener_relay_server_info, ptr %30, i32 0, i32 3, !dbg !1504
  %32 = load i32, ptr %31, align 8, !dbg !1504
  %33 = icmp eq i32 %32, 2, !dbg !1504
  br i1 %33, label %34, label %35, !dbg !1506

34:                                               ; preds = %29
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.2, ptr noundef @__FUNCTION__.server_input_handler, i32 noundef 74), !dbg !1504
  br label %35, !dbg !1504

35:                                               ; preds = %34, %29, %26
  %36 = load ptr, ptr %11, align 8, !dbg !1507
  %37 = icmp ne ptr %36, null, !dbg !1507
  br i1 %37, label %39, label %38, !dbg !1509

38:                                               ; preds = %35
  br label %141, !dbg !1510

39:                                               ; preds = %35
  %40 = load ptr, ptr %8, align 8, !dbg !1511
  %41 = load ptr, ptr %11, align 8, !dbg !1512
  %42 = getelementptr inbounds %struct.tls_listener_relay_server_info, ptr %41, i32 0, i32 6, !dbg !1513
  %43 = getelementptr inbounds %struct.message_to_relay, ptr %42, i32 0, i32 2, !dbg !1514
  %44 = getelementptr inbounds %struct.socket_message, ptr %43, i32 0, i32 1, !dbg !1515
  %45 = getelementptr inbounds %struct._ioa_net_data, ptr %44, i32 0, i32 0, !dbg !1516
  %46 = load i32, ptr %9, align 4, !dbg !1517
  %47 = sext i32 %46 to i64, !dbg !1517
  call void @bcopy(ptr noundef %40, ptr noundef %45, i64 noundef %47) #5, !dbg !1518
  %48 = load ptr, ptr %11, align 8, !dbg !1519
  %49 = getelementptr inbounds %struct.tls_listener_relay_server_info, ptr %48, i32 0, i32 3, !dbg !1520
  %50 = load i32, ptr %49, align 8, !dbg !1520
  %51 = load ptr, ptr %11, align 8, !dbg !1521
  %52 = getelementptr inbounds %struct.tls_listener_relay_server_info, ptr %51, i32 0, i32 6, !dbg !1522
  %53 = getelementptr inbounds %struct.message_to_relay, ptr %52, i32 0, i32 2, !dbg !1523
  %54 = getelementptr inbounds %struct.socket_message, ptr %53, i32 0, i32 1, !dbg !1524
  %55 = getelementptr inbounds %struct._ioa_net_data, ptr %54, i32 0, i32 0, !dbg !1525
  call void @addr_debug_print(i32 noundef %50, ptr noundef %55, ptr noundef @.str.19), !dbg !1526
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1527, metadata !DIExpression()), !dbg !1528
  store i32 255, ptr %12, align 4, !dbg !1528
  %56 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 36), align 8, !dbg !1529
  %57 = icmp ne i32 %56, 0, !dbg !1531
  br i1 %57, label %58, label %59, !dbg !1532

58:                                               ; preds = %39
  store i32 253, ptr %12, align 4, !dbg !1533
  br label %69, !dbg !1534

59:                                               ; preds = %39
  %60 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 17), align 8, !dbg !1535
  %61 = icmp ne i32 %60, 0, !dbg !1537
  br i1 %61, label %62, label %63, !dbg !1538

62:                                               ; preds = %59
  store i32 6, ptr %12, align 4, !dbg !1539
  br label %68, !dbg !1540

63:                                               ; preds = %59
  %64 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 35), align 4, !dbg !1541
  %65 = icmp ne i32 %64, 0, !dbg !1543
  br i1 %65, label %66, label %67, !dbg !1544

66:                                               ; preds = %63
  store i32 56, ptr %12, align 4, !dbg !1545
  br label %67, !dbg !1546

67:                                               ; preds = %66, %63
  br label %68

68:                                               ; preds = %67, %62
  br label %69

69:                                               ; preds = %68, %58
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1547, metadata !DIExpression()), !dbg !1548
  %70 = load ptr, ptr %11, align 8, !dbg !1549
  %71 = getelementptr inbounds %struct.tls_listener_relay_server_info, ptr %70, i32 0, i32 2, !dbg !1550
  %72 = load ptr, ptr %71, align 8, !dbg !1550
  %73 = load i32, ptr %7, align 4, !dbg !1551
  %74 = load i32, ptr %12, align 4, !dbg !1552
  %75 = load ptr, ptr %11, align 8, !dbg !1553
  %76 = getelementptr inbounds %struct.tls_listener_relay_server_info, ptr %75, i32 0, i32 6, !dbg !1554
  %77 = getelementptr inbounds %struct.message_to_relay, ptr %76, i32 0, i32 2, !dbg !1555
  %78 = getelementptr inbounds %struct.socket_message, ptr %77, i32 0, i32 1, !dbg !1556
  %79 = getelementptr inbounds %struct._ioa_net_data, ptr %78, i32 0, i32 0, !dbg !1557
  %80 = load ptr, ptr %11, align 8, !dbg !1558
  %81 = getelementptr inbounds %struct.tls_listener_relay_server_info, ptr %80, i32 0, i32 1, !dbg !1559
  %82 = call ptr @create_ioa_socket_from_fd(ptr noundef %72, i32 noundef %73, ptr noundef null, i32 noundef %74, i32 noundef 1, ptr noundef %79, ptr noundef %81), !dbg !1560
  store ptr %82, ptr %13, align 8, !dbg !1548
  %83 = load ptr, ptr %13, align 8, !dbg !1561
  %84 = icmp ne ptr %83, null, !dbg !1561
  br i1 %84, label %85, label %129, !dbg !1563

85:                                               ; preds = %69
  %86 = load ptr, ptr %11, align 8, !dbg !1564
  %87 = getelementptr inbounds %struct.tls_listener_relay_server_info, ptr %86, i32 0, i32 6, !dbg !1566
  %88 = getelementptr inbounds %struct.message_to_relay, ptr %87, i32 0, i32 2, !dbg !1567
  %89 = getelementptr inbounds %struct.socket_message, ptr %88, i32 0, i32 1, !dbg !1568
  %90 = getelementptr inbounds %struct._ioa_net_data, ptr %89, i32 0, i32 2, !dbg !1569
  store i32 -1, ptr %90, align 8, !dbg !1570
  %91 = load ptr, ptr %11, align 8, !dbg !1571
  %92 = getelementptr inbounds %struct.tls_listener_relay_server_info, ptr %91, i32 0, i32 6, !dbg !1572
  %93 = getelementptr inbounds %struct.message_to_relay, ptr %92, i32 0, i32 2, !dbg !1573
  %94 = getelementptr inbounds %struct.socket_message, ptr %93, i32 0, i32 1, !dbg !1574
  %95 = getelementptr inbounds %struct._ioa_net_data, ptr %94, i32 0, i32 3, !dbg !1575
  store i32 -1, ptr %95, align 4, !dbg !1576
  %96 = load ptr, ptr %11, align 8, !dbg !1577
  %97 = getelementptr inbounds %struct.tls_listener_relay_server_info, ptr %96, i32 0, i32 6, !dbg !1578
  %98 = getelementptr inbounds %struct.message_to_relay, ptr %97, i32 0, i32 2, !dbg !1579
  %99 = getelementptr inbounds %struct.socket_message, ptr %98, i32 0, i32 1, !dbg !1580
  %100 = getelementptr inbounds %struct._ioa_net_data, ptr %99, i32 0, i32 1, !dbg !1581
  store ptr null, ptr %100, align 8, !dbg !1582
  %101 = load ptr, ptr %13, align 8, !dbg !1583
  %102 = load ptr, ptr %11, align 8, !dbg !1584
  %103 = getelementptr inbounds %struct.tls_listener_relay_server_info, ptr %102, i32 0, i32 6, !dbg !1585
  %104 = getelementptr inbounds %struct.message_to_relay, ptr %103, i32 0, i32 2, !dbg !1586
  %105 = getelementptr inbounds %struct.socket_message, ptr %104, i32 0, i32 0, !dbg !1587
  store ptr %101, ptr %105, align 8, !dbg !1588
  %106 = load ptr, ptr %11, align 8, !dbg !1589
  %107 = getelementptr inbounds %struct.tls_listener_relay_server_info, ptr %106, i32 0, i32 6, !dbg !1590
  %108 = getelementptr inbounds %struct.message_to_relay, ptr %107, i32 0, i32 2, !dbg !1591
  %109 = getelementptr inbounds %struct.socket_message, ptr %108, i32 0, i32 2, !dbg !1592
  store i32 1, ptr %109, align 8, !dbg !1593
  %110 = load ptr, ptr %11, align 8, !dbg !1594
  %111 = getelementptr inbounds %struct.tls_listener_relay_server_info, ptr %110, i32 0, i32 8, !dbg !1595
  %112 = load ptr, ptr %111, align 8, !dbg !1595
  %113 = load ptr, ptr %11, align 8, !dbg !1596
  %114 = getelementptr inbounds %struct.tls_listener_relay_server_info, ptr %113, i32 0, i32 6, !dbg !1597
  %115 = getelementptr inbounds %struct.message_to_relay, ptr %114, i32 0, i32 1, !dbg !1598
  store ptr %112, ptr %115, align 8, !dbg !1599
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1600, metadata !DIExpression()), !dbg !1601
  %116 = load ptr, ptr %11, align 8, !dbg !1602
  %117 = getelementptr inbounds %struct.tls_listener_relay_server_info, ptr %116, i32 0, i32 7, !dbg !1603
  %118 = load ptr, ptr %117, align 8, !dbg !1603
  %119 = load ptr, ptr %11, align 8, !dbg !1604
  %120 = getelementptr inbounds %struct.tls_listener_relay_server_info, ptr %119, i32 0, i32 2, !dbg !1605
  %121 = load ptr, ptr %120, align 8, !dbg !1605
  %122 = load ptr, ptr %11, align 8, !dbg !1606
  %123 = getelementptr inbounds %struct.tls_listener_relay_server_info, ptr %122, i32 0, i32 6, !dbg !1607
  %124 = call i32 %118(ptr noundef %121, ptr noundef %123), !dbg !1602
  store i32 %124, ptr %14, align 4, !dbg !1601
  %125 = load i32, ptr %14, align 4, !dbg !1608
  %126 = icmp slt i32 %125, 0, !dbg !1610
  br i1 %126, label %127, label %128, !dbg !1611

127:                                              ; preds = %85
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.20), !dbg !1612
  br label %128, !dbg !1614

128:                                              ; preds = %127, %85
  br label %132, !dbg !1615

129:                                              ; preds = %69
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.10), !dbg !1616
  %130 = load i32, ptr %7, align 4, !dbg !1618
  %131 = call i32 @close(i32 noundef %130), !dbg !1618
  br label %132

132:                                              ; preds = %129, %128
  %133 = load ptr, ptr %11, align 8, !dbg !1619
  %134 = icmp ne ptr %133, null, !dbg !1619
  br i1 %134, label %135, label %141, !dbg !1619

135:                                              ; preds = %132
  %136 = load ptr, ptr %11, align 8, !dbg !1619
  %137 = getelementptr inbounds %struct.tls_listener_relay_server_info, ptr %136, i32 0, i32 3, !dbg !1619
  %138 = load i32, ptr %137, align 8, !dbg !1619
  %139 = icmp eq i32 %138, 2, !dbg !1619
  br i1 %139, label %140, label %141, !dbg !1621

140:                                              ; preds = %135
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.7, ptr noundef @__FUNCTION__.server_input_handler, i32 noundef 123), !dbg !1619
  br label %141, !dbg !1619

141:                                              ; preds = %23, %38, %140, %135, %132
  ret void, !dbg !1622
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.dbg.cu = !{!119}
!llvm.module.flags = !{!997, !998, !999, !1000, !1001, !1002, !1003}
!llvm.ident = !{!1004}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 354, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/apps/relay/tls_listener.c", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "6e23025f72057c1f9a6e12dca85f94c9")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 376, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 47)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 354, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 216, elements: !11)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!11 = !{!12}
!12 = !DISubrange(count: 27)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(scope: null, file: !2, line: 328, type: !15, isLocal: true, isDefinition: true)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !16)
!16 = !{!17}
!17 = !DISubrange(count: 50)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !2, line: 264, type: !20, isLocal: true, isDefinition: true)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 13)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !2, line: 264, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 224, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 28)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !2, line: 272, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 7)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !2, line: 277, type: !35, isLocal: true, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 42)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(scope: null, file: !2, line: 300, type: !40, isLocal: true, isDefinition: true)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 29)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(scope: null, file: !2, line: 302, type: !45, isLocal: true, isDefinition: true)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 25)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(scope: null, file: !2, line: 304, type: !50, isLocal: true, isDefinition: true)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: 11)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(scope: null, file: !2, line: 141, type: !55, isLocal: true, isDefinition: true)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 208, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 26)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(scope: null, file: !2, line: 148, type: !60, isLocal: true, isDefinition: true)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 30)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(scope: null, file: !2, line: 180, type: !65, isLocal: true, isDefinition: true)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 40)
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(scope: null, file: !2, line: 184, type: !70, isLocal: true, isDefinition: true)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 34)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(scope: null, file: !2, line: 197, type: !75, isLocal: true, isDefinition: true)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 184, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 23)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(scope: null, file: !2, line: 219, type: !80, isLocal: true, isDefinition: true)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 33)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(scope: null, file: !2, line: 222, type: !85, isLocal: true, isDefinition: true)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !86)
!86 = !{!87}
!87 = !DISubrange(count: 48)
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(scope: null, file: !2, line: 224, type: !90, isLocal: true, isDefinition: true)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 61)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(scope: null, file: !2, line: 228, type: !95, isLocal: true, isDefinition: true)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 552, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 69)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(scope: null, file: !2, line: 243, type: !100, isLocal: true, isDefinition: true)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !26)
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(scope: null, file: !2, line: 249, type: !100, isLocal: true, isDefinition: true)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(scope: null, file: !2, line: 251, type: !105, isLocal: true, isDefinition: true)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 24)
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(scope: null, file: !2, line: 253, type: !105, isLocal: true, isDefinition: true)
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(scope: null, file: !2, line: 74, type: !112, isLocal: true, isDefinition: true)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 168, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 21)
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(scope: null, file: !2, line: 81, type: !105, isLocal: true, isDefinition: true)
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(scope: null, file: !2, line: 115, type: !70, isLocal: true, isDefinition: true)
!119 = distinct !DICompileUnit(language: DW_LANG_C11, file: !120, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !121, retainedTypes: !231, globals: !996, splitDebugInlining: false, nameTableKind: None)
!120 = !DIFile(filename: "/home/raj/coturn/src/apps/relay/tls_listener.c", directory: "/home/raj/coturn/build", checksumkind: CSK_MD5, checksum: "6e23025f72057c1f9a6e12dca85f94c9")
!121 = !{!122, !131, !138, !143, !156, !167, !176, !181, !188, !200}
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_MESSAGE_TO_RELAY_TYPE", file: !123, line: 69, baseType: !124, size: 32, elements: !125)
!123 = !DIFile(filename: "src/server/ns_turn_server.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "6e53554bfe42393e23ac816233e245b8")
!124 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!125 = !{!126, !127, !128, !129, !130}
!126 = !DIEnumerator(name: "RMT_UNKNOWN", value: 0)
!127 = !DIEnumerator(name: "RMT_SOCKET", value: 1)
!128 = !DIEnumerator(name: "RMT_CB_SOCKET", value: 2)
!129 = !DIEnumerator(name: "RMT_MOBILE_SOCKET", value: 3)
!130 = !DIEnumerator(name: "RMT_CANCEL_SESSION", value: 4)
!131 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !132, line: 54, baseType: !124, size: 32, elements: !133)
!132 = !DIFile(filename: "src/client/ns_turn_msg.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "43c56357294df21a547ee0716fe3769d")
!133 = !{!134, !135, !136, !137}
!134 = !DIEnumerator(name: "TURN_CREDENTIALS_NONE", value: 0)
!135 = !DIEnumerator(name: "TURN_CREDENTIALS_LONG_TERM", value: 1)
!136 = !DIEnumerator(name: "TURN_CREDENTIALS_SHORT_TERM", value: 2)
!137 = !DIEnumerator(name: "TURN_CREDENTIALS_UNDEFINED", value: 3)
!138 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !123, line: 92, baseType: !124, size: 32, elements: !139)
!139 = !{!140, !141, !142}
!140 = !DIEnumerator(name: "DONT_FRAGMENT_UNSUPPORTED", value: 0)
!141 = !DIEnumerator(name: "DONT_FRAGMENT_SUPPORTED", value: 1)
!142 = !DIEnumerator(name: "DONT_FRAGMENT_SUPPORT_EMULATED", value: 2)
!143 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_SOCKET_TYPE", file: !144, line: 85, baseType: !124, size: 32, elements: !145)
!144 = !DIFile(filename: "src/server/ns_turn_ioalib.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "c6bb568b11ce41f25b29a4464aa685c5")
!145 = !{!146, !147, !148, !149, !150, !151, !152, !153, !154, !155}
!146 = !DIEnumerator(name: "UNKNOWN_SOCKET", value: 0)
!147 = !DIEnumerator(name: "TCP_SOCKET", value: 6)
!148 = !DIEnumerator(name: "UDP_SOCKET", value: 17)
!149 = !DIEnumerator(name: "TLS_SOCKET", value: 56)
!150 = !DIEnumerator(name: "SCTP_SOCKET", value: 132)
!151 = !DIEnumerator(name: "TLS_SCTP_SOCKET", value: 133)
!152 = !DIEnumerator(name: "DTLS_SOCKET", value: 250)
!153 = !DIEnumerator(name: "TCP_SOCKET_PROXY", value: 253)
!154 = !DIEnumerator(name: "TENTATIVE_SCTP_SOCKET", value: 254)
!155 = !DIEnumerator(name: "TENTATIVE_TCP_SOCKET", value: 255)
!156 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_SOCKET_APP_TYPE", file: !144, line: 100, baseType: !124, size: 32, elements: !157)
!157 = !{!158, !159, !160, !161, !162, !163, !164, !165, !166}
!158 = !DIEnumerator(name: "UNKNOWN_APP_SOCKET", value: 0)
!159 = !DIEnumerator(name: "CLIENT_SOCKET", value: 1)
!160 = !DIEnumerator(name: "HTTP_CLIENT_SOCKET", value: 2)
!161 = !DIEnumerator(name: "HTTPS_CLIENT_SOCKET", value: 3)
!162 = !DIEnumerator(name: "RELAY_SOCKET", value: 4)
!163 = !DIEnumerator(name: "RELAY_RTCP_SOCKET", value: 5)
!164 = !DIEnumerator(name: "TCP_CLIENT_DATA_SOCKET", value: 6)
!165 = !DIEnumerator(name: "TCP_RELAY_DATA_SOCKET", value: 7)
!166 = !DIEnumerator(name: "LISTENER_SOCKET", value: 8)
!167 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_TC_STATE", file: !168, line: 67, baseType: !124, size: 32, elements: !169)
!168 = !DIFile(filename: "src/server/ns_turn_allocation.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "0cb2cf61c9ec5dd3030a6e5a6f8d4af1")
!169 = !{!170, !171, !172, !173, !174, !175}
!170 = !DIEnumerator(name: "TC_STATE_UNKNOWN", value: 0)
!171 = !DIEnumerator(name: "TC_STATE_CLIENT_TO_PEER_CONNECTING", value: 1)
!172 = !DIEnumerator(name: "TC_STATE_PEER_CONNECTING", value: 2)
!173 = !DIEnumerator(name: "TC_STATE_PEER_CONNECTED", value: 3)
!174 = !DIEnumerator(name: "TC_STATE_READY", value: 4)
!175 = !DIEnumerator(name: "TC_STATE_FAILED", value: 5)
!176 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_ALLOCATION_DEFAULT_ADDRESS_FAMILY", file: !123, line: 79, baseType: !124, size: 32, elements: !177)
!177 = !{!178, !179, !180}
!178 = !DIEnumerator(name: "ALLOCATION_DEFAULT_ADDRESS_FAMILY_IPV4", value: 0)
!179 = !DIEnumerator(name: "ALLOCATION_DEFAULT_ADDRESS_FAMILY_IPV6", value: 1)
!180 = !DIEnumerator(name: "ALLOCATION_DEFAULT_ADDRESS_FAMILY_KEEP", value: 2)
!181 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !182, line: 47, baseType: !124, size: 32, elements: !183)
!182 = !DIFile(filename: "src/apps/common/ns_turn_utils.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "74cb4019b1eb9d8e2b879df518b15a25")
!183 = !{!184, !185, !186, !187}
!184 = !DIEnumerator(name: "TURN_LOG_LEVEL_INFO", value: 0)
!185 = !DIEnumerator(name: "TURN_LOG_LEVEL_CONTROL", value: 1)
!186 = !DIEnumerator(name: "TURN_LOG_LEVEL_WARNING", value: 2)
!187 = !DIEnumerator(name: "TURN_LOG_LEVEL_ERROR", value: 3)
!188 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__socket_type", file: !189, line: 24, baseType: !124, size: 32, elements: !190)
!189 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket_type.h", directory: "", checksumkind: CSK_MD5, checksum: "0d4e972fdeb3da9a5bc94fa41144e9f8")
!190 = !{!191, !192, !193, !194, !195, !196, !197, !198, !199}
!191 = !DIEnumerator(name: "SOCK_STREAM", value: 1)
!192 = !DIEnumerator(name: "SOCK_DGRAM", value: 2)
!193 = !DIEnumerator(name: "SOCK_RAW", value: 3)
!194 = !DIEnumerator(name: "SOCK_RDM", value: 4)
!195 = !DIEnumerator(name: "SOCK_SEQPACKET", value: 5)
!196 = !DIEnumerator(name: "SOCK_DCCP", value: 6)
!197 = !DIEnumerator(name: "SOCK_PACKET", value: 10)
!198 = !DIEnumerator(name: "SOCK_CLOEXEC", value: 524288)
!199 = !DIEnumerator(name: "SOCK_NONBLOCK", value: 2048)
!200 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !201, line: 40, baseType: !124, size: 32, elements: !202)
!201 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "eb6560f10d4cfe9f30fea2c92b9da0fd")
!202 = !{!203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230}
!203 = !DIEnumerator(name: "IPPROTO_IP", value: 0)
!204 = !DIEnumerator(name: "IPPROTO_ICMP", value: 1)
!205 = !DIEnumerator(name: "IPPROTO_IGMP", value: 2)
!206 = !DIEnumerator(name: "IPPROTO_IPIP", value: 4)
!207 = !DIEnumerator(name: "IPPROTO_TCP", value: 6)
!208 = !DIEnumerator(name: "IPPROTO_EGP", value: 8)
!209 = !DIEnumerator(name: "IPPROTO_PUP", value: 12)
!210 = !DIEnumerator(name: "IPPROTO_UDP", value: 17)
!211 = !DIEnumerator(name: "IPPROTO_IDP", value: 22)
!212 = !DIEnumerator(name: "IPPROTO_TP", value: 29)
!213 = !DIEnumerator(name: "IPPROTO_DCCP", value: 33)
!214 = !DIEnumerator(name: "IPPROTO_IPV6", value: 41)
!215 = !DIEnumerator(name: "IPPROTO_RSVP", value: 46)
!216 = !DIEnumerator(name: "IPPROTO_GRE", value: 47)
!217 = !DIEnumerator(name: "IPPROTO_ESP", value: 50)
!218 = !DIEnumerator(name: "IPPROTO_AH", value: 51)
!219 = !DIEnumerator(name: "IPPROTO_MTP", value: 92)
!220 = !DIEnumerator(name: "IPPROTO_BEETPH", value: 94)
!221 = !DIEnumerator(name: "IPPROTO_ENCAP", value: 98)
!222 = !DIEnumerator(name: "IPPROTO_PIM", value: 103)
!223 = !DIEnumerator(name: "IPPROTO_COMP", value: 108)
!224 = !DIEnumerator(name: "IPPROTO_SCTP", value: 132)
!225 = !DIEnumerator(name: "IPPROTO_UDPLITE", value: 136)
!226 = !DIEnumerator(name: "IPPROTO_MPLS", value: 137)
!227 = !DIEnumerator(name: "IPPROTO_ETHERNET", value: 143)
!228 = !DIEnumerator(name: "IPPROTO_RAW", value: 255)
!229 = !DIEnumerator(name: "IPPROTO_MPTCP", value: 262)
!230 = !DIEnumerator(name: "IPPROTO_MAX", value: 263)
!231 = !{!232, !954, !992, !993, !995, !322, !378, !811}
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "tls_listener_relay_server_type", file: !234, line: 47, baseType: !235)
!234 = !DIFile(filename: "src/apps/relay/tls_listener.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "600378d89e7e6850884a9f7c884c23e9")
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tls_listener_relay_server_info", file: !2, line: 46, size: 9728, elements: !236)
!236 = !{!237, !241, !305, !404, !405, !409, !410, !985, !991}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "ifname", scope: !235, file: !2, line: 48, baseType: !238, size: 8200)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8200, elements: !239)
!239 = !{!240}
!240 = !DISubrange(count: 1025)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !235, file: !2, line: 49, baseType: !242, size: 224, offset: 8224)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_addr", file: !243, line: 48, baseType: !244)
!243 = !DIFile(filename: "src/client/ns_turn_ioaddr.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "6bb7c107d1e7937049c12f6d0dffd94c")
!244 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !243, line: 44, size: 224, elements: !245)
!245 = !{!246, !258, !280}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !244, file: !243, line: 45, baseType: !247, size: 128)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !248, line: 180, size: 128, elements: !249)
!248 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "e3826be048699664d9ef7b080f62f2e0")
!249 = !{!250, !254}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !247, file: !248, line: 182, baseType: !251, size: 16)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !252, line: 28, baseType: !253)
!252 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "dd7f1d9dd6e26f88d1726905ed5d9ff5")
!253 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !247, file: !248, line: 183, baseType: !255, size: 112, offset: 16)
!255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !256)
!256 = !{!257}
!257 = !DISubrange(count: 14)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "s4", scope: !244, file: !243, line: 46, baseType: !259, size: 128)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !201, line: 245, size: 128, elements: !260)
!260 = !{!261, !262, !268, !275}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !259, file: !201, line: 247, baseType: !251, size: 16)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !259, file: !201, line: 248, baseType: !263, size: 16, offset: 16)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !201, line: 123, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !265, line: 25, baseType: !266)
!265 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !267, line: 40, baseType: !253)
!267 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!268 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !259, file: !201, line: 249, baseType: !269, size: 32, offset: 32)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !201, line: 31, size: 32, elements: !270)
!270 = !{!271}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !269, file: !201, line: 33, baseType: !272, size: 32)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !201, line: 30, baseType: !273)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !265, line: 26, baseType: !274)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !267, line: 42, baseType: !124)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !259, file: !201, line: 252, baseType: !276, size: 64, offset: 64)
!276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !277, size: 64, elements: !278)
!277 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!278 = !{!279}
!279 = !DISubrange(count: 8)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "s6", scope: !244, file: !243, line: 47, baseType: !281, size: 224)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !201, line: 260, size: 224, elements: !282)
!282 = !{!283, !284, !285, !286, !304}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_family", scope: !281, file: !201, line: 262, baseType: !251, size: 16)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_port", scope: !281, file: !201, line: 263, baseType: !263, size: 16, offset: 16)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_flowinfo", scope: !281, file: !201, line: 264, baseType: !273, size: 32, offset: 32)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !281, file: !201, line: 265, baseType: !287, size: 128, offset: 64)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !201, line: 219, size: 128, elements: !288)
!288 = !{!289}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !287, file: !201, line: 226, baseType: !290, size: 128)
!290 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !287, file: !201, line: 221, size: 128, elements: !291)
!291 = !{!292, !298, !300}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !290, file: !201, line: 223, baseType: !293, size: 128)
!293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !294, size: 128, elements: !296)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !265, line: 24, baseType: !295)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !267, line: 38, baseType: !277)
!296 = !{!297}
!297 = !DISubrange(count: 16)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !290, file: !201, line: 224, baseType: !299, size: 128)
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !264, size: 128, elements: !278)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !290, file: !201, line: 225, baseType: !301, size: 128)
!301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !273, size: 128, elements: !302)
!302 = !{!303}
!303 = !DISubrange(count: 4)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_scope_id", scope: !281, file: !201, line: 266, baseType: !273, size: 32, offset: 192)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !235, file: !2, line: 50, baseType: !306, size: 64, offset: 8448)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_engine_handle", file: !144, line: 120, baseType: !307)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_engine", file: !144, line: 119, baseType: !309)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ioa_engine", file: !310, line: 135, size: 536064, elements: !311)
!310 = !DIFile(filename: "src/apps/relay/ns_ioalib_impl.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "39ae1828625a6763b6269ecb34869b6c")
!311 = !{!312, !317, !321, !323, !324, !329, !334, !363, !368, !369, !370, !371, !372, !373, !376, !379, !383, !385, !395, !396, !397, !398, !399, !401}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "sm", scope: !309, file: !310, line: 137, baseType: !313, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "super_memory_t", file: !315, line: 49, baseType: !316)
!315 = !DIFile(filename: "src/apps/relay/ns_sm.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "9025fd46a533d33a213551fd581f5b89")
!316 = !DICompositeType(tag: DW_TAG_structure_type, name: "_super_memory", file: !315, line: 48, flags: DIFlagFwdDecl)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "event_base", scope: !309, file: !310, line: 138, baseType: !318, size: 64, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DICompositeType(tag: DW_TAG_structure_type, name: "event_base", file: !320, line: 217, flags: DIFlagFwdDecl)
!320 = !DIFile(filename: "/usr/include/event2/event.h", directory: "", checksumkind: CSK_MD5, checksum: "90db4fa73456052afa8984291985dfd5")
!321 = !DIDerivedType(tag: DW_TAG_member, name: "deallocate_eb", scope: !309, file: !310, line: 139, baseType: !322, size: 32, offset: 128)
!322 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "verbose", scope: !309, file: !310, line: 140, baseType: !322, size: 32, offset: 160)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "tp", scope: !309, file: !310, line: 141, baseType: !325, size: 64, offset: 192)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "turnipports", file: !327, line: 50, baseType: !328)
!327 = !DIFile(filename: "src/apps/relay/turn_ports.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "11983eef23ed630198ed333562550552")
!328 = !DICompositeType(tag: DW_TAG_structure_type, name: "_turnipports", file: !327, line: 49, flags: DIFlagFwdDecl)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "map_rtcp", scope: !309, file: !310, line: 142, baseType: !330, size: 64, offset: 256)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtcp_map", file: !332, line: 46, baseType: !333)
!332 = !DIFile(filename: "src/server/ns_turn_maps_rtcp.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "8bedcc1443244c8ca394e26ac35053c7")
!333 = !DICompositeType(tag: DW_TAG_structure_type, name: "_rtcp_map", file: !332, line: 45, flags: DIFlagFwdDecl)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "bufs", scope: !309, file: !310, line: 143, baseType: !335, size: 128, offset: 320)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "stun_buffer_list", file: !310, line: 81, baseType: !336)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_stun_buffer_list", file: !310, line: 78, size: 128, elements: !337)
!337 = !{!338, !362}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !336, file: !310, line: 79, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "stun_buffer_list_elem", file: !310, line: 76, baseType: !341)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_stun_buffer_list_elem", file: !310, line: 73, size: 524288, elements: !342)
!342 = !{!343, !345}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !341, file: !310, line: 74, baseType: !344, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !341, file: !310, line: 75, baseType: !346, size: 524224, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "stun_buffer", file: !347, line: 48, baseType: !348)
!347 = !DIFile(filename: "src/apps/common/stun_buffer.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "cc7948905c033a0fb654060699acf9e2")
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_stun_buffer", file: !347, line: 42, size: 524224, elements: !349)
!349 = !{!350, !352, !356, !360, !361}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !348, file: !347, line: 43, baseType: !351, size: 32)
!351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !294, size: 32, elements: !302)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !348, file: !347, line: 44, baseType: !353, size: 524056, offset: 32)
!353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !294, size: 524056, elements: !354)
!354 = !{!355}
!355 = !DISubrange(count: 65507)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !348, file: !347, line: 45, baseType: !357, size: 64, offset: 524096)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !358, line: 46, baseType: !359)
!358 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!359 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !348, file: !347, line: 46, baseType: !264, size: 16, offset: 524160)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "coffset", scope: !348, file: !347, line: 47, baseType: !294, size: 8, offset: 524176)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "tsz", scope: !336, file: !310, line: 80, baseType: !357, size: 64, offset: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ctx_ssl23", scope: !309, file: !310, line: 144, baseType: !364, size: 64, offset: 448)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_CTX", file: !366, line: 185, baseType: !367)
!366 = !DIFile(filename: "/usr/include/openssl/types.h", directory: "", checksumkind: CSK_MD5, checksum: "44f1236065e4ee65cf4cd545c3e12ab9")
!367 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_ctx_st", file: !366, line: 185, flags: DIFlagFwdDecl)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ctx_v1_0", scope: !309, file: !310, line: 145, baseType: !364, size: 64, offset: 512)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ctx_v1_1", scope: !309, file: !310, line: 147, baseType: !364, size: 64, offset: 576)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ctx_v1_2", scope: !309, file: !310, line: 149, baseType: !364, size: 64, offset: 640)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "dtls_ctx", scope: !309, file: !310, line: 153, baseType: !364, size: 64, offset: 704)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "dtls_ctx_v1_2", scope: !309, file: !310, line: 156, baseType: !364, size: 64, offset: 768)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "jiffie", scope: !309, file: !310, line: 158, baseType: !374, size: 32, offset: 832)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_time_t", file: !375, line: 108, baseType: !273)
!375 = !DIFile(filename: "src/ns_turn_defs.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "126e9c9d0b914de7fdf6162f77453397")
!376 = !DIDerivedType(tag: DW_TAG_member, name: "timer_ev", scope: !309, file: !310, line: 159, baseType: !377, size: 64, offset: 896)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_timer_handle", file: !144, line: 122, baseType: !378)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "cmsg", scope: !309, file: !310, line: 160, baseType: !380, size: 524296, offset: 960)
!380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 524296, elements: !381)
!381 = !{!382}
!382 = !DISubrange(count: 65537)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "predef_timer_intervals", scope: !309, file: !310, line: 161, baseType: !384, size: 448, offset: 525280)
!384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !322, size: 448, elements: !256)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "predef_timers", scope: !309, file: !310, line: 162, baseType: !386, size: 1792, offset: 525760)
!386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 1792, elements: !256)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !388, line: 8, size: 128, elements: !389)
!388 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h", directory: "", checksumkind: CSK_MD5, checksum: "9b45d950050c215f216850b27bd1e8f3")
!389 = !{!390, !393}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !387, file: !388, line: 14, baseType: !391, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !267, line: 160, baseType: !392)
!392 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !387, file: !388, line: 15, baseType: !394, size: 64, offset: 64)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !267, line: 162, baseType: !392)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "relay_ifname", scope: !309, file: !310, line: 164, baseType: !238, size: 8200, offset: 527552)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "default_relays", scope: !309, file: !310, line: 165, baseType: !322, size: 32, offset: 535776)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "relays_number", scope: !309, file: !310, line: 166, baseType: !357, size: 64, offset: 535808)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "relay_addr_counter", scope: !309, file: !310, line: 167, baseType: !357, size: 64, offset: 535872)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "relay_addrs", scope: !309, file: !310, line: 168, baseType: !400, size: 64, offset: 535936)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "rch", scope: !309, file: !310, line: 169, baseType: !402, size: 64, offset: 536000)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "redis_context_handle", file: !403, line: 45, baseType: !378)
!403 = !DIFile(filename: "src/apps/common/hiredis_libevent2.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "8bcf7d75479c12c7a6031a30f30ef1f7")
!404 = !DIDerivedType(tag: DW_TAG_member, name: "verbose", scope: !235, file: !2, line: 51, baseType: !322, size: 32, offset: 8512)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !235, file: !2, line: 52, baseType: !406, size: 64, offset: 8576)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DICompositeType(tag: DW_TAG_structure_type, name: "evconnlistener", file: !408, line: 69, flags: DIFlagFwdDecl)
!408 = !DIFile(filename: "src/apps/relay/turn_admin_server.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "72080e29702b34b58984e3ea957f1f4c")
!409 = !DIDerivedType(tag: DW_TAG_member, name: "sctp_l", scope: !235, file: !2, line: 53, baseType: !406, size: 64, offset: 8640)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "sm", scope: !235, file: !2, line: 54, baseType: !411, size: 896, offset: 8704)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "message_to_relay", file: !310, line: 114, size: 896, elements: !412)
!412 = !{!413, !415, !962}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "t", scope: !411, file: !310, line: 115, baseType: !414, size: 32)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "MESSAGE_TO_RELAY_TYPE", file: !123, line: 76, baseType: !122)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "relay_server", scope: !411, file: !310, line: 116, baseType: !416, size: 64, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "relay_server", file: !310, line: 101, size: 4032, elements: !418)
!418 = !{!419, !421, !422, !423, !427, !428, !429, !430, !431, !959}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !417, file: !310, line: 102, baseType: !420, size: 8)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "turnserver_id", file: !123, line: 67, baseType: !294)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "sm", scope: !417, file: !310, line: 103, baseType: !313, size: 64, offset: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "event_base", scope: !417, file: !310, line: 104, baseType: !318, size: 64, offset: 128)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "in_buf", scope: !417, file: !310, line: 105, baseType: !424, size: 64, offset: 192)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferevent", file: !426, line: 113, flags: DIFlagFwdDecl)
!426 = !DIFile(filename: "/usr/include/event2/bufferevent.h", directory: "", checksumkind: CSK_MD5, checksum: "15bb43c26b2c9058b6c64d44779c7263")
!427 = !DIDerivedType(tag: DW_TAG_member, name: "out_buf", scope: !417, file: !310, line: 106, baseType: !424, size: 64, offset: 256)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "auth_in_buf", scope: !417, file: !310, line: 107, baseType: !424, size: 64, offset: 320)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "auth_out_buf", scope: !417, file: !310, line: 108, baseType: !424, size: 64, offset: 384)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "ioa_eng", scope: !417, file: !310, line: 109, baseType: !306, size: 64, offset: 448)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !417, file: !310, line: 110, baseType: !432, size: 3456, offset: 512)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_turnserver", file: !123, line: 99, baseType: !433)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_turn_turnserver", file: !123, line: 111, size: 3456, elements: !434)
!434 = !{!435, !436, !441, !446, !447, !448, !449, !450, !451, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !466, !471, !477, !479, !806, !818, !823, !828, !829, !830, !831, !832, !889, !894, !895, !896, !897, !903, !917, !918, !919, !920, !921, !922, !943, !944, !945, !946, !947, !952, !953, !955, !956, !958}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !433, file: !123, line: 113, baseType: !420, size: 8)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "session_id_counter", scope: !433, file: !123, line: 115, baseType: !437, size: 64, offset: 64)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "turnsession_id", file: !438, line: 62, baseType: !439)
!438 = !DIFile(filename: "src/server/ns_turn_session.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "0d3b1381a7fca7a8f35b6ee419f25609")
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !265, line: 27, baseType: !440)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !267, line: 45, baseType: !359)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "sessions_map", scope: !433, file: !123, line: 116, baseType: !442, size: 64, offset: 128)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "ur_map", file: !444, line: 43, baseType: !445)
!444 = !DIFile(filename: "src/server/ns_turn_maps.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "1d968a8e0fbb011891961d10535e1104")
!445 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ur_map", file: !444, line: 42, flags: DIFlagFwdDecl)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !433, file: !123, line: 118, baseType: !374, size: 32, offset: 192)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !433, file: !123, line: 120, baseType: !306, size: 64, offset: 256)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "verbose", scope: !433, file: !123, line: 121, baseType: !322, size: 32, offset: 320)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "fingerprint", scope: !433, file: !123, line: 122, baseType: !322, size: 32, offset: 352)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "rfc5780", scope: !433, file: !123, line: 123, baseType: !322, size: 32, offset: 384)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "check_origin", scope: !433, file: !123, line: 124, baseType: !452, size: 64, offset: 448)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "vintp", file: !375, line: 106, baseType: !453)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "vint", file: !375, line: 105, baseType: !322)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "stale_nonce", scope: !433, file: !123, line: 125, baseType: !452, size: 64, offset: 512)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "max_allocate_lifetime", scope: !433, file: !123, line: 126, baseType: !452, size: 64, offset: 576)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "channel_lifetime", scope: !433, file: !123, line: 127, baseType: !452, size: 64, offset: 640)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "permission_lifetime", scope: !433, file: !123, line: 128, baseType: !452, size: 64, offset: 704)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "stun_only", scope: !433, file: !123, line: 129, baseType: !452, size: 64, offset: 768)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "no_stun", scope: !433, file: !123, line: 130, baseType: !452, size: 64, offset: 832)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "no_software_attribute", scope: !433, file: !123, line: 131, baseType: !452, size: 64, offset: 896)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "web_admin_listen_on_workers", scope: !433, file: !123, line: 132, baseType: !452, size: 64, offset: 960)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "secure_stun", scope: !433, file: !123, line: 133, baseType: !452, size: 64, offset: 1024)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "ct", scope: !433, file: !123, line: 134, baseType: !465, size: 32, offset: 1088)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_credential_type", file: !132, line: 59, baseType: !131)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "alt_addr_cb", scope: !433, file: !123, line: 135, baseType: !467, size: 64, offset: 1152)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "get_alt_addr_cb", file: !123, line: 59, baseType: !468)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DISubroutineType(types: !470)
!470 = !{!322, !400, !400}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "sm_cb", scope: !433, file: !123, line: 136, baseType: !472, size: 64, offset: 1216)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "send_message_cb", file: !123, line: 60, baseType: !473)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DISubroutineType(types: !475)
!475 = !{!322, !306, !476, !400, !400}
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_network_buffer_handle", file: !144, line: 124, baseType: !378)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "dont_fragment", scope: !433, file: !123, line: 137, baseType: !478, size: 32, offset: 1280)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "dont_fragment_option_t", file: !123, line: 96, baseType: !138)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !433, file: !123, line: 138, baseType: !480, size: 64, offset: 1344)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DISubroutineType(types: !482)
!482 = !{!322, !483}
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "ts_ur_super_session", file: !144, line: 47, baseType: !485)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ts_ur_super_session", file: !438, line: 68, size: 152448, elements: !486)
!486 = !{!487, !488, !489, !490, !626, !733, !734, !735, !736, !737, !741, !742, !746, !751, !752, !757, !758, !759, !760, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !803, !804, !805}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !485, file: !438, line: 69, baseType: !378, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !485, file: !438, line: 70, baseType: !437, size: 64, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !485, file: !438, line: 71, baseType: !374, size: 32, offset: 128)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "client_socket", scope: !485, file: !438, line: 72, baseType: !491, size: 64, offset: 192)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_socket_handle", file: !144, line: 116, baseType: !492)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_socket", file: !144, line: 115, baseType: !494)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ioa_socket", file: !310, line: 179, size: 2880, elements: !495)
!495 = !{!496, !497, !499, !500, !524, !525, !526, !527, !529, !531, !535, !536, !537, !538, !539, !540, !541, !542, !543, !546, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !578, !579, !610, !611, !616, !617, !618, !623, !624, !625}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !494, file: !310, line: 181, baseType: !322, size: 32)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "parent_s", scope: !494, file: !310, line: 182, baseType: !498, size: 64, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !494, file: !310, line: 183, baseType: !273, size: 32, offset: 128)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "sockets_container", scope: !494, file: !310, line: 184, baseType: !501, size: 64, offset: 192)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "ur_addr_map", file: !444, line: 183, baseType: !503)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ur_addr_map", file: !444, line: 177, size: 1441856, elements: !504)
!504 = !{!505, !523}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "lists", scope: !503, file: !444, line: 178, baseType: !506, size: 1441792)
!506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !507, size: 1441792, elements: !521)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_list_header", file: !444, line: 175, baseType: !508)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_addr_list_header", file: !444, line: 171, size: 1408, elements: !509)
!509 = !{!510, !518, !520}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "main_list", scope: !508, file: !444, line: 172, baseType: !511, size: 1280)
!511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !512, size: 1280, elements: !302)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_elem", file: !444, line: 169, baseType: !513)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_addr_elem", file: !444, line: 166, size: 320, elements: !514)
!514 = !{!515, !516}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !513, file: !444, line: 167, baseType: !242, size: 224)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !513, file: !444, line: 168, baseType: !517, size: 64, offset: 256)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "ur_addr_map_value_type", file: !444, line: 161, baseType: !359)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "extra_list", scope: !508, file: !444, line: 173, baseType: !519, size: 64, offset: 1280)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "extra_sz", scope: !508, file: !444, line: 174, baseType: !357, size: 64, offset: 1344)
!521 = !{!522}
!522 = !DISubrange(count: 1024)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !503, file: !444, line: 179, baseType: !439, size: 64, offset: 1441792)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "bev", scope: !494, file: !310, line: 185, baseType: !424, size: 64, offset: 256)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "defer_nbh", scope: !494, file: !310, line: 186, baseType: !476, size: 64, offset: 320)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !494, file: !310, line: 187, baseType: !322, size: 32, offset: 384)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "st", scope: !494, file: !310, line: 188, baseType: !528, size: 32, offset: 416)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "SOCKET_TYPE", file: !144, line: 98, baseType: !143)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "sat", scope: !494, file: !310, line: 189, baseType: !530, size: 32, offset: 448)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "SOCKET_APP_TYPE", file: !144, line: 112, baseType: !156)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "ssl", scope: !494, file: !310, line: 190, baseType: !532, size: 64, offset: 512)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL", file: !366, line: 184, baseType: !534)
!534 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_st", file: !366, line: 184, flags: DIFlagFwdDecl)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_renegs", scope: !494, file: !310, line: 191, baseType: !273, size: 32, offset: 576)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "in_write", scope: !494, file: !310, line: 192, baseType: !322, size: 32, offset: 608)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "bound", scope: !494, file: !310, line: 193, baseType: !322, size: 32, offset: 640)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "local_addr_known", scope: !494, file: !310, line: 194, baseType: !322, size: 32, offset: 672)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "local_addr", scope: !494, file: !310, line: 195, baseType: !242, size: 224, offset: 704)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !494, file: !310, line: 196, baseType: !322, size: 32, offset: 928)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "remote_addr", scope: !494, file: !310, line: 197, baseType: !242, size: 224, offset: 960)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !494, file: !310, line: 198, baseType: !306, size: 64, offset: 1216)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "read_event", scope: !494, file: !310, line: 199, baseType: !544, size: 64, offset: 1280)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DICompositeType(tag: DW_TAG_structure_type, name: "event", file: !320, line: 276, flags: DIFlagFwdDecl)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "read_cb", scope: !494, file: !310, line: 200, baseType: !547, size: 64, offset: 1344)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_net_event_handler", file: !144, line: 199, baseType: !548)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DISubroutineType(types: !550)
!550 = !{null, !491, !322, !551, !378, !322}
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_net_data", file: !144, line: 132, baseType: !553)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ioa_net_data", file: !144, line: 127, size: 384, elements: !554)
!554 = !{!555, !556, !557, !558}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "src_addr", scope: !553, file: !144, line: 128, baseType: !242, size: 224)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "nbh", scope: !553, file: !144, line: 129, baseType: !476, size: 64, offset: 256)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "recv_ttl", scope: !553, file: !144, line: 130, baseType: !322, size: 32, offset: 320)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "recv_tos", scope: !553, file: !144, line: 131, baseType: !322, size: 32, offset: 352)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "read_ctx", scope: !494, file: !310, line: 201, baseType: !378, size: 64, offset: 1408)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !494, file: !310, line: 202, baseType: !322, size: 32, offset: 1472)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !494, file: !310, line: 203, baseType: !483, size: 64, offset: 1536)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "current_df_relay_flag", scope: !494, file: !310, line: 204, baseType: !322, size: 32, offset: 1600)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "do_not_use_df", scope: !494, file: !310, line: 206, baseType: !322, size: 32, offset: 1632)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "tobeclosed", scope: !494, file: !310, line: 207, baseType: !322, size: 32, offset: 1664)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "broken", scope: !494, file: !310, line: 208, baseType: !322, size: 32, offset: 1696)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "default_ttl", scope: !494, file: !310, line: 209, baseType: !322, size: 32, offset: 1728)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "current_ttl", scope: !494, file: !310, line: 210, baseType: !322, size: 32, offset: 1760)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "default_tos", scope: !494, file: !310, line: 211, baseType: !322, size: 32, offset: 1792)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "current_tos", scope: !494, file: !310, line: 212, baseType: !322, size: 32, offset: 1824)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "bufs", scope: !494, file: !310, line: 213, baseType: !335, size: 128, offset: 1856)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "jiffie", scope: !494, file: !310, line: 214, baseType: !374, size: 32, offset: 1984)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "data_traffic", scope: !494, file: !310, line: 215, baseType: !573, size: 128, offset: 2048)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "traffic_bytes", file: !310, line: 174, size: 128, elements: !574)
!574 = !{!575, !577}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "jiffie_bytes_read", scope: !573, file: !310, line: 175, baseType: !576, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "band_limit_t", file: !132, line: 67, baseType: !359)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "jiffie_bytes_write", scope: !573, file: !310, line: 176, baseType: !576, size: 64, offset: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "control_traffic", scope: !494, file: !310, line: 216, baseType: !573, size: 128, offset: 2176)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "sub_session", scope: !494, file: !310, line: 219, baseType: !580, size: 64, offset: 2304)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_connection", file: !144, line: 50, baseType: !582)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_tcp_connection", file: !168, line: 85, size: 960, elements: !583)
!583 = !{!584, !586, !588, !589, !590, !591, !592, !593, !601, !602, !603}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !582, file: !168, line: 87, baseType: !585, size: 32)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "TC_STATE", file: !168, line: 76, baseType: !167)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !582, file: !168, line: 88, baseType: !587, size: 32, offset: 32)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_connection_id", file: !168, line: 78, baseType: !273)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "peer_addr", scope: !582, file: !168, line: 89, baseType: !242, size: 224, offset: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "client_s", scope: !582, file: !168, line: 90, baseType: !491, size: 64, offset: 320)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "peer_s", scope: !582, file: !168, line: 91, baseType: !491, size: 64, offset: 384)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "peer_conn_timeout", scope: !582, file: !168, line: 92, baseType: !377, size: 64, offset: 448)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "conn_bind_timeout", scope: !582, file: !168, line: 93, baseType: !377, size: 64, offset: 512)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !582, file: !168, line: 94, baseType: !594, size: 96, offset: 576)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "stun_tid", file: !132, line: 52, baseType: !595)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !132, line: 47, size: 96, elements: !596)
!596 = !{!597}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "tsx_id", scope: !595, file: !132, line: 51, baseType: !598, size: 96)
!598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !294, size: 96, elements: !599)
!599 = !{!600}
!600 = !DISubrange(count: 12)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !582, file: !168, line: 95, baseType: !378, size: 64, offset: 704)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !582, file: !168, line: 96, baseType: !322, size: 32, offset: 768)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "ub_to_client", scope: !582, file: !168, line: 97, baseType: !604, size: 128, offset: 832)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "unsent_buffer", file: !168, line: 83, baseType: !605)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !168, line: 80, size: 128, elements: !606)
!606 = !{!607, !608}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "sz", scope: !605, file: !168, line: 81, baseType: !357, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "bufs", scope: !605, file: !168, line: 82, baseType: !609, size: 64, offset: 64)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "conn_bev", scope: !494, file: !310, line: 221, baseType: !424, size: 64, offset: 2368)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "conn_cb", scope: !494, file: !310, line: 222, baseType: !612, size: 64, offset: 2432)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "connect_cb", file: !144, line: 135, baseType: !613)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DISubroutineType(types: !615)
!615 = !{null, !322, !378}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "conn_arg", scope: !494, file: !310, line: 223, baseType: !378, size: 64, offset: 2496)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "list_ev", scope: !494, file: !310, line: 225, baseType: !406, size: 64, offset: 2560)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "acb", scope: !494, file: !310, line: 226, baseType: !619, size: 64, offset: 2624)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "accept_cb", file: !144, line: 137, baseType: !620)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DISubroutineType(types: !622)
!622 = !{null, !491, !378}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "acbarg", scope: !494, file: !310, line: 227, baseType: !378, size: 64, offset: 2688)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "special_session", scope: !494, file: !310, line: 229, baseType: !378, size: 64, offset: 2752)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "special_session_size", scope: !494, file: !310, line: 230, baseType: !357, size: 64, offset: 2816)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !485, file: !438, line: 73, baseType: !627, size: 141120, offset: 256)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocation", file: !168, line: 186, baseType: !628)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_allocation", file: !168, line: 176, size: 141120, elements: !629)
!629 = !{!630, !631, !632, !686, !696, !698, !724, !725, !726}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "is_valid", scope: !628, file: !168, line: 177, baseType: !322, size: 32)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !628, file: !168, line: 178, baseType: !594, size: 96, offset: 32)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "addr_to_perm", scope: !628, file: !168, line: 179, baseType: !633, size: 125440, offset: 128)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_permission_hashtable", file: !168, line: 166, baseType: !634)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_turn_permission_hashtable", file: !168, line: 164, size: 125440, elements: !635)
!635 = !{!636}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !634, file: !168, line: 165, baseType: !637, size: 125440)
!637 = !DICompositeType(tag: DW_TAG_array_type, baseType: !638, size: 125440, elements: !278)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_permission_array", file: !168, line: 162, baseType: !639)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_turn_permission_array", file: !168, line: 158, size: 15680, elements: !640)
!640 = !{!641, !682, !683}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "main_slots", scope: !639, file: !168, line: 159, baseType: !642, size: 15552)
!642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !643, size: 15552, elements: !663)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_permission_slot", file: !168, line: 156, baseType: !644)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_turn_permission_slot", file: !168, line: 154, size: 5184, elements: !645)
!645 = !{!646}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !644, file: !168, line: 155, baseType: !647, size: 5184)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_permission_info", file: !168, line: 152, baseType: !648)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_turn_permission_info", file: !168, line: 143, size: 5184, elements: !649)
!649 = !{!650, !651, !675, !676, !677, !678, !679, !680}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !648, file: !168, line: 144, baseType: !322, size: 32)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "chns", scope: !648, file: !168, line: 145, baseType: !652, size: 4608, offset: 64)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "lm_map", file: !444, line: 117, baseType: !653)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_lm_map", file: !444, line: 115, size: 4608, elements: !654)
!654 = !{!655}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !653, file: !444, line: 116, baseType: !656, size: 4608)
!656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !657, size: 4608, elements: !278)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "lm_map_array", file: !444, line: 113, baseType: !658)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_lm_map_array", file: !444, line: 107, size: 576, elements: !659)
!659 = !{!660, !665, !668, !669, !672}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "main_keys", scope: !658, file: !444, line: 108, baseType: !661, size: 192)
!661 = !DICompositeType(tag: DW_TAG_array_type, baseType: !662, size: 192, elements: !663)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "ur_map_key_type", file: !444, line: 47, baseType: !439)
!663 = !{!664}
!664 = !DISubrange(count: 3)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "main_values", scope: !658, file: !444, line: 109, baseType: !666, size: 192, offset: 192)
!666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !667, size: 192, elements: !663)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "ur_map_value_type", file: !444, line: 48, baseType: !359)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "extra_sz", scope: !658, file: !444, line: 110, baseType: !357, size: 64, offset: 384)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "extra_keys", scope: !658, file: !444, line: 111, baseType: !670, size: 64, offset: 448)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "extra_values", scope: !658, file: !444, line: 112, baseType: !673, size: 64, offset: 512)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !648, file: !168, line: 146, baseType: !242, size: 224, offset: 4672)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "expiration_time", scope: !648, file: !168, line: 147, baseType: !374, size: 32, offset: 4896)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "lifetime_ev", scope: !648, file: !168, line: 148, baseType: !377, size: 64, offset: 4928)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !648, file: !168, line: 149, baseType: !378, size: 64, offset: 4992)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "verbose", scope: !648, file: !168, line: 150, baseType: !322, size: 32, offset: 5056)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "session_id", scope: !648, file: !168, line: 151, baseType: !681, size: 64, offset: 5120)
!681 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "extra_sz", scope: !639, file: !168, line: 160, baseType: !357, size: 64, offset: 15552)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "extra_slots", scope: !639, file: !168, line: 161, baseType: !684, size: 64, offset: 15616)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "relay_sessions", scope: !628, file: !168, line: 180, baseType: !687, size: 384, offset: 125568)
!687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !688, size: 384, elements: !694)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "relay_endpoint_session", file: !168, line: 55, baseType: !689)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !168, line: 50, size: 192, elements: !690)
!690 = !{!691, !692, !693}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !689, file: !168, line: 52, baseType: !491, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "expiration_time", scope: !689, file: !168, line: 53, baseType: !374, size: 32, offset: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "lifetime_ev", scope: !689, file: !168, line: 54, baseType: !377, size: 64, offset: 128)
!694 = !{!695}
!695 = !DISubrange(count: 2)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "relay_sessions_failure", scope: !628, file: !168, line: 181, baseType: !697, size: 64, offset: 125952)
!697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !322, size: 64, elements: !694)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "chns", scope: !628, file: !168, line: 182, baseType: !699, size: 14848, offset: 126016)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "ch_map", file: !168, line: 136, baseType: !700)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ch_map", file: !168, line: 134, size: 14848, elements: !701)
!701 = !{!702}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !700, file: !168, line: 135, baseType: !703, size: 14848)
!703 = !DICompositeType(tag: DW_TAG_array_type, baseType: !704, size: 14848, elements: !278)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "ch_map_array", file: !168, line: 132, baseType: !705)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_chn_map_array", file: !168, line: 128, size: 1856, elements: !706)
!706 = !{!707, !720, !721}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "main_chns", scope: !705, file: !168, line: 129, baseType: !708, size: 1728)
!708 = !DICompositeType(tag: DW_TAG_array_type, baseType: !709, size: 1728, elements: !663)
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "ch_info", file: !168, line: 121, baseType: !710)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ch_info", file: !168, line: 112, size: 576, elements: !711)
!711 = !{!712, !713, !714, !715, !716, !717, !718, !719}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "chnum", scope: !710, file: !168, line: 113, baseType: !264, size: 16)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !710, file: !168, line: 114, baseType: !322, size: 32, offset: 32)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !710, file: !168, line: 115, baseType: !264, size: 16, offset: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "peer_addr", scope: !710, file: !168, line: 116, baseType: !242, size: 224, offset: 96)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "expiration_time", scope: !710, file: !168, line: 117, baseType: !374, size: 32, offset: 320)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "lifetime_ev", scope: !710, file: !168, line: 118, baseType: !377, size: 64, offset: 384)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !710, file: !168, line: 119, baseType: !378, size: 64, offset: 448)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_channel", scope: !710, file: !168, line: 120, baseType: !378, size: 64, offset: 512)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "extra_sz", scope: !705, file: !168, line: 130, baseType: !357, size: 64, offset: 1728)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "extra_chns", scope: !705, file: !168, line: 131, baseType: !722, size: 64, offset: 1792)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !628, file: !168, line: 183, baseType: !378, size: 64, offset: 140864)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_connections", scope: !628, file: !168, line: 184, baseType: !442, size: 64, offset: 140928)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "tcs", scope: !628, file: !168, line: 185, baseType: !727, size: 128, offset: 140992)
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_connection_list", file: !168, line: 103, baseType: !728)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_tcp_connection_list", file: !168, line: 100, size: 128, elements: !729)
!729 = !{!730, !731}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "sz", scope: !728, file: !168, line: 101, baseType: !357, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !728, file: !168, line: 102, baseType: !732, size: 64, offset: 64)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "to_be_allocated_timeout_ev", scope: !485, file: !438, line: 74, baseType: !377, size: 64, offset: 141376)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "enforce_fingerprints", scope: !485, file: !438, line: 75, baseType: !322, size: 32, offset: 141440)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "is_tcp_relay", scope: !485, file: !438, line: 76, baseType: !322, size: 32, offset: 141472)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "to_be_closed", scope: !485, file: !438, line: 77, baseType: !322, size: 32, offset: 141504)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "nonce", scope: !485, file: !438, line: 79, baseType: !738, size: 136, offset: 141536)
!738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !294, size: 136, elements: !739)
!739 = !{!740}
!740 = !DISubrange(count: 17)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "nonce_expiration_time", scope: !485, file: !438, line: 80, baseType: !374, size: 32, offset: 141696)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !485, file: !438, line: 81, baseType: !743, size: 4104, offset: 141728)
!743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !294, size: 4104, elements: !744)
!744 = !{!745}
!745 = !DISubrange(count: 513)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "hmackey", scope: !485, file: !438, line: 82, baseType: !747, size: 512, offset: 145832)
!747 = !DIDerivedType(tag: DW_TAG_typedef, name: "hmackey_t", file: !132, line: 64, baseType: !748)
!748 = !DICompositeType(tag: DW_TAG_array_type, baseType: !294, size: 512, elements: !749)
!749 = !{!750}
!750 = !DISubrange(count: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "hmackey_set", scope: !485, file: !438, line: 83, baseType: !322, size: 32, offset: 146368)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "pwd", scope: !485, file: !438, line: 84, baseType: !753, size: 2056, offset: 146400)
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "password_t", file: !132, line: 66, baseType: !754)
!754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !294, size: 2056, elements: !755)
!755 = !{!756}
!756 = !DISubrange(count: 257)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "quota_used", scope: !485, file: !438, line: 85, baseType: !322, size: 32, offset: 148480)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "oauth", scope: !485, file: !438, line: 86, baseType: !322, size: 32, offset: 148512)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "max_session_time_auth", scope: !485, file: !438, line: 87, baseType: !374, size: 32, offset: 148544)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "realm_options", scope: !485, file: !438, line: 89, baseType: !761, size: 1152, offset: 148608)
!761 = !DIDerivedType(tag: DW_TAG_typedef, name: "realm_options_t", file: !144, line: 142, baseType: !762)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_realm_options_t", file: !438, line: 53, size: 1152, elements: !763)
!763 = !{!764, !768}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !762, file: !438, line: 55, baseType: !765, size: 1024)
!765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1024, elements: !766)
!766 = !{!767}
!767 = !DISubrange(count: 128)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "perf_options", scope: !762, file: !438, line: 57, baseType: !769, size: 128, offset: 1024)
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_options_t", file: !438, line: 51, baseType: !770)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_perf_options_t", file: !438, line: 45, size: 128, elements: !771)
!771 = !{!772, !774, !775}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "max_bps", scope: !770, file: !438, line: 47, baseType: !773, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !576)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "total_quota", scope: !770, file: !438, line: 48, baseType: !454, size: 32, offset: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "user_quota", scope: !770, file: !438, line: 49, baseType: !454, size: 32, offset: 96)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "origin_set", scope: !485, file: !438, line: 90, baseType: !322, size: 32, offset: 149760)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !485, file: !438, line: 91, baseType: !765, size: 1024, offset: 149792)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "received_packets", scope: !485, file: !438, line: 93, baseType: !273, size: 32, offset: 150816)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "sent_packets", scope: !485, file: !438, line: 94, baseType: !273, size: 32, offset: 150848)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "received_bytes", scope: !485, file: !438, line: 95, baseType: !273, size: 32, offset: 150880)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "sent_bytes", scope: !485, file: !438, line: 96, baseType: !273, size: 32, offset: 150912)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "t_received_packets", scope: !485, file: !438, line: 97, baseType: !439, size: 64, offset: 150976)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "t_sent_packets", scope: !485, file: !438, line: 98, baseType: !439, size: 64, offset: 151040)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "t_received_bytes", scope: !485, file: !438, line: 99, baseType: !439, size: 64, offset: 151104)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "t_sent_bytes", scope: !485, file: !438, line: 100, baseType: !439, size: 64, offset: 151168)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "received_rate", scope: !485, file: !438, line: 101, baseType: !439, size: 64, offset: 151232)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "sent_rate", scope: !485, file: !438, line: 102, baseType: !357, size: 64, offset: 151296)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "total_rate", scope: !485, file: !438, line: 103, baseType: !357, size: 64, offset: 151360)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "peer_received_packets", scope: !485, file: !438, line: 104, baseType: !273, size: 32, offset: 151424)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "peer_sent_packets", scope: !485, file: !438, line: 105, baseType: !273, size: 32, offset: 151456)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "peer_received_bytes", scope: !485, file: !438, line: 106, baseType: !273, size: 32, offset: 151488)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "peer_sent_bytes", scope: !485, file: !438, line: 107, baseType: !273, size: 32, offset: 151520)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "t_peer_received_packets", scope: !485, file: !438, line: 108, baseType: !273, size: 32, offset: 151552)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "t_peer_sent_packets", scope: !485, file: !438, line: 109, baseType: !273, size: 32, offset: 151584)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "t_peer_received_bytes", scope: !485, file: !438, line: 110, baseType: !273, size: 32, offset: 151616)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "t_peer_sent_bytes", scope: !485, file: !438, line: 111, baseType: !273, size: 32, offset: 151648)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "peer_received_rate", scope: !485, file: !438, line: 112, baseType: !439, size: 64, offset: 151680)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "peer_sent_rate", scope: !485, file: !438, line: 113, baseType: !357, size: 64, offset: 151744)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "peer_total_rate", scope: !485, file: !438, line: 114, baseType: !357, size: 64, offset: 151808)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "is_mobile", scope: !485, file: !438, line: 116, baseType: !322, size: 32, offset: 151872)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "mobile_id", scope: !485, file: !438, line: 117, baseType: !802, size: 64, offset: 151936)
!802 = !DIDerivedType(tag: DW_TAG_typedef, name: "mobile_id_t", file: !438, line: 66, baseType: !439)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "old_mobile_id", scope: !485, file: !438, line: 118, baseType: !802, size: 64, offset: 152000)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "s_mobile_id", scope: !485, file: !438, line: 119, baseType: !80, size: 264, offset: 152064)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "bps", scope: !485, file: !438, line: 121, baseType: !576, size: 64, offset: 152384)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "userkeycb", scope: !433, file: !123, line: 139, baseType: !807, size: 64, offset: 1408)
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "get_user_key_cb", file: !123, line: 102, baseType: !808)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DISubroutineType(types: !810)
!810 = !{!811, !420, !465, !322, !812, !811, !811, !813, !551, !439, !812}
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "get_username_resume_cb", file: !123, line: 101, baseType: !814)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DISubroutineType(types: !816)
!816 = !{null, !322, !322, !322, !811, !811, !817, !439, !551, !811}
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "chquotacb", scope: !433, file: !123, line: 140, baseType: !819, size: 64, offset: 1472)
!819 = !DIDerivedType(tag: DW_TAG_typedef, name: "check_new_allocation_quota_cb", file: !123, line: 103, baseType: !820)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DISubroutineType(types: !822)
!822 = !{!322, !811, !322, !811}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "raqcb", scope: !433, file: !123, line: 141, baseType: !824, size: 64, offset: 1536)
!824 = !DIDerivedType(tag: DW_TAG_typedef, name: "release_allocation_quota_cb", file: !123, line: 104, baseType: !825)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DISubroutineType(types: !827)
!827 = !{null, !811, !322, !811}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "external_ip_set", scope: !433, file: !123, line: 142, baseType: !322, size: 32, offset: 1600)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "external_ip", scope: !433, file: !123, line: 143, baseType: !242, size: 224, offset: 1632)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "allow_loopback_peers", scope: !433, file: !123, line: 144, baseType: !452, size: 64, offset: 1856)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "no_multicast_peers", scope: !433, file: !123, line: 145, baseType: !452, size: 64, offset: 1920)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "send_turn_session_info", scope: !433, file: !123, line: 146, baseType: !833, size: 64, offset: 1984)
!833 = !DIDerivedType(tag: DW_TAG_typedef, name: "send_turn_session_info_cb", file: !123, line: 106, baseType: !834)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DISubroutineType(types: !836)
!836 = !{!322, !837}
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "turn_session_info", file: !438, line: 134, size: 15040, elements: !839)
!839 = !{!840, !841, !842, !843, !844, !845, !846, !848, !852, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !882, !883, !885, !886, !887, !888}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !838, file: !438, line: 135, baseType: !437, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !838, file: !438, line: 136, baseType: !322, size: 32, offset: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !838, file: !438, line: 137, baseType: !374, size: 32, offset: 96)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "expiration_time", scope: !838, file: !438, line: 138, baseType: !374, size: 32, offset: 128)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "client_protocol", scope: !838, file: !438, line: 139, baseType: !528, size: 32, offset: 160)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "peer_protocol", scope: !838, file: !438, line: 140, baseType: !528, size: 32, offset: 192)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "tls_method", scope: !838, file: !438, line: 141, baseType: !847, size: 136, offset: 224)
!847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !739)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cipher", scope: !838, file: !438, line: 142, baseType: !849, size: 520, offset: 360)
!849 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 520, elements: !850)
!850 = !{!851}
!851 = !DISubrange(count: 65)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "local_addr_data", scope: !838, file: !438, line: 143, baseType: !853, size: 768, offset: 896)
!853 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_data", file: !438, line: 132, baseType: !854)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_addr_data", file: !438, line: 129, size: 768, elements: !855)
!855 = !{!856, !857}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !854, file: !438, line: 130, baseType: !242, size: 224)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "saddr", scope: !854, file: !438, line: 131, baseType: !849, size: 520, offset: 224)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "remote_addr_data", scope: !838, file: !438, line: 144, baseType: !853, size: 768, offset: 1664)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "relay_addr_data_ipv4", scope: !838, file: !438, line: 145, baseType: !853, size: 768, offset: 2432)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "relay_addr_data_ipv6", scope: !838, file: !438, line: 146, baseType: !853, size: 768, offset: 3200)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !838, file: !438, line: 147, baseType: !743, size: 4104, offset: 3968)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "enforce_fingerprints", scope: !838, file: !438, line: 148, baseType: !322, size: 32, offset: 8096)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "received_packets", scope: !838, file: !438, line: 150, baseType: !439, size: 64, offset: 8128)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "sent_packets", scope: !838, file: !438, line: 151, baseType: !439, size: 64, offset: 8192)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "received_bytes", scope: !838, file: !438, line: 152, baseType: !439, size: 64, offset: 8256)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "sent_bytes", scope: !838, file: !438, line: 153, baseType: !439, size: 64, offset: 8320)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "received_rate", scope: !838, file: !438, line: 154, baseType: !273, size: 32, offset: 8384)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "sent_rate", scope: !838, file: !438, line: 155, baseType: !273, size: 32, offset: 8416)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "total_rate", scope: !838, file: !438, line: 156, baseType: !273, size: 32, offset: 8448)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "peer_received_packets", scope: !838, file: !438, line: 157, baseType: !439, size: 64, offset: 8512)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "peer_sent_packets", scope: !838, file: !438, line: 158, baseType: !439, size: 64, offset: 8576)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "peer_received_bytes", scope: !838, file: !438, line: 159, baseType: !439, size: 64, offset: 8640)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "peer_sent_bytes", scope: !838, file: !438, line: 160, baseType: !439, size: 64, offset: 8704)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "peer_received_rate", scope: !838, file: !438, line: 161, baseType: !273, size: 32, offset: 8768)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "peer_sent_rate", scope: !838, file: !438, line: 162, baseType: !273, size: 32, offset: 8800)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "peer_total_rate", scope: !838, file: !438, line: 163, baseType: !273, size: 32, offset: 8832)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "is_mobile", scope: !838, file: !438, line: 165, baseType: !322, size: 32, offset: 8864)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "main_peers_data", scope: !838, file: !438, line: 167, baseType: !879, size: 3840, offset: 8896)
!879 = !DICompositeType(tag: DW_TAG_array_type, baseType: !853, size: 3840, elements: !880)
!880 = !{!881}
!881 = !DISubrange(count: 5)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "main_peers_size", scope: !838, file: !438, line: 168, baseType: !357, size: 64, offset: 12736)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "extra_peers_data", scope: !838, file: !438, line: 169, baseType: !884, size: 64, offset: 12800)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "extra_peers_size", scope: !838, file: !438, line: 170, baseType: !357, size: 64, offset: 12864)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "realm", scope: !838, file: !438, line: 172, baseType: !765, size: 1024, offset: 12928)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !838, file: !438, line: 173, baseType: !765, size: 1024, offset: 13952)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "bps", scope: !838, file: !438, line: 175, baseType: !576, size: 64, offset: 14976)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "send_https_socket", scope: !433, file: !123, line: 147, baseType: !890, size: 64, offset: 2048)
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "send_https_socket_cb", file: !123, line: 107, baseType: !891)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DISubroutineType(types: !893)
!893 = !{null, !491}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "no_udp_relay", scope: !433, file: !123, line: 150, baseType: !452, size: 64, offset: 2112)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "no_tcp_relay", scope: !433, file: !123, line: 151, baseType: !452, size: 64, offset: 2176)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_relay_connections", scope: !433, file: !123, line: 152, baseType: !442, size: 64, offset: 2240)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "send_socket_to_relay", scope: !433, file: !123, line: 153, baseType: !898, size: 64, offset: 2304)
!898 = !DIDerivedType(tag: DW_TAG_typedef, name: "send_socket_to_relay_cb", file: !123, line: 105, baseType: !899)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DISubroutineType(types: !901)
!901 = !{!322, !420, !439, !902, !491, !322, !414, !551, !322}
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "alternate_servers_list", scope: !433, file: !123, line: 157, baseType: !904, size: 64, offset: 2368)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_server_addrs_list_t", file: !123, line: 53, baseType: !906)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_turn_server_addrs_list", file: !123, line: 47, size: 256, elements: !907)
!907 = !{!908, !909, !911}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !906, file: !123, line: 48, baseType: !400, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !906, file: !123, line: 49, baseType: !910, size: 64, offset: 64)
!910 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !357)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !906, file: !123, line: 50, baseType: !912, size: 128, offset: 128)
!912 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_mutex", file: !144, line: 60, baseType: !913)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_turn_mutex", file: !144, line: 55, size: 128, elements: !914)
!914 = !{!915, !916}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !913, file: !144, line: 56, baseType: !273, size: 32)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !913, file: !144, line: 57, baseType: !378, size: 64, offset: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "as_counter", scope: !433, file: !123, line: 158, baseType: !357, size: 64, offset: 2432)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "tls_alternate_servers_list", scope: !433, file: !123, line: 159, baseType: !904, size: 64, offset: 2496)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "tls_as_counter", scope: !433, file: !123, line: 160, baseType: !357, size: 64, offset: 2560)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "aux_servers_list", scope: !433, file: !123, line: 161, baseType: !904, size: 64, offset: 2624)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "self_udp_balance", scope: !433, file: !123, line: 162, baseType: !322, size: 32, offset: 2688)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "ip_whitelist", scope: !433, file: !123, line: 165, baseType: !923, size: 64, offset: 2752)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip_range_list_t", file: !144, line: 159, baseType: !925)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ip_range_list", file: !144, line: 154, size: 128, elements: !926)
!926 = !{!927, !942}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "rs", scope: !925, file: !144, line: 155, baseType: !928, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip_range_t", file: !144, line: 152, baseType: !930)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ip_range", file: !144, line: 146, size: 6624, elements: !931)
!931 = !{!932, !934, !936}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !930, file: !144, line: 147, baseType: !933, size: 2056)
!933 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !755)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "realm", scope: !930, file: !144, line: 148, baseType: !935, size: 4104, offset: 2056)
!935 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 4104, elements: !744)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "enc", scope: !930, file: !144, line: 149, baseType: !937, size: 448, offset: 6176)
!937 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_addr_range", file: !243, line: 53, baseType: !938)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !243, line: 50, size: 448, elements: !939)
!939 = !{!940, !941}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !938, file: !243, line: 51, baseType: !242, size: 224)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !938, file: !243, line: 52, baseType: !242, size: 224, offset: 224)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "ranges_number", scope: !925, file: !144, line: 156, baseType: !357, size: 64, offset: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "ip_blacklist", scope: !433, file: !123, line: 166, baseType: !923, size: 64, offset: 2816)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "mobility", scope: !433, file: !123, line: 169, baseType: !452, size: 64, offset: 2880)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "mobile_connections_map", scope: !433, file: !123, line: 170, baseType: !442, size: 64, offset: 2944)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "server_relay", scope: !433, file: !123, line: 173, baseType: !322, size: 32, offset: 3008)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "allocate_bps_func", scope: !433, file: !123, line: 176, baseType: !948, size: 64, offset: 3072)
!948 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocate_bps_cb", file: !123, line: 109, baseType: !949)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = !DISubroutineType(types: !951)
!951 = !{!576, !576, !322}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "oauth", scope: !433, file: !123, line: 179, baseType: !322, size: 32, offset: 3136)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "oauth_server_name", scope: !433, file: !123, line: 180, baseType: !954, size: 64, offset: 3200)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "acme_redirect", scope: !433, file: !123, line: 183, baseType: !954, size: 64, offset: 3264)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "allocation_default_address_family", scope: !433, file: !123, line: 186, baseType: !957, size: 32, offset: 3328)
!957 = !DIDerivedType(tag: DW_TAG_typedef, name: "ALLOCATION_DEFAULT_ADDRESS_FAMILY", file: !123, line: 84, baseType: !176)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "log_binding", scope: !433, file: !123, line: 189, baseType: !452, size: 64, offset: 3392)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "thr", scope: !417, file: !310, line: 111, baseType: !960, size: 64, offset: 3968)
!960 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !961, line: 27, baseType: !359)
!961 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!962 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !411, file: !310, line: 121, baseType: !963, size: 768, offset: 128)
!963 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !411, file: !310, line: 117, size: 768, elements: !964)
!964 = !{!965, !971, !981}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "sm", scope: !963, file: !310, line: 118, baseType: !966, size: 512)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "socket_message", file: !123, line: 86, size: 512, elements: !967)
!967 = !{!968, !969, !970}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !966, file: !123, line: 87, baseType: !491, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "nd", scope: !966, file: !123, line: 88, baseType: !552, size: 384, offset: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "can_resume", scope: !966, file: !123, line: 89, baseType: !322, size: 32, offset: 448)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "cb_sm", scope: !963, file: !310, line: 119, baseType: !972, size: 768)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cb_socket_message", file: !310, line: 87, size: 768, elements: !973)
!973 = !{!974, !975, !976, !977, !978, !979, !980}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !972, file: !310, line: 88, baseType: !420, size: 8)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "connection_id", scope: !972, file: !310, line: 89, baseType: !587, size: 32, offset: 32)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !972, file: !310, line: 90, baseType: !594, size: 96, offset: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !972, file: !310, line: 91, baseType: !491, size: 64, offset: 192)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "message_integrity", scope: !972, file: !310, line: 92, baseType: !322, size: 32, offset: 256)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "nd", scope: !972, file: !310, line: 93, baseType: !552, size: 384, offset: 320)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "can_resume", scope: !972, file: !310, line: 94, baseType: !322, size: 32, offset: 704)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "csm", scope: !963, file: !310, line: 120, baseType: !982, size: 64)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cancelled_session_message", file: !310, line: 97, size: 64, elements: !983)
!983 = !{!984}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !982, file: !310, line: 98, baseType: !437, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "connect_cb", scope: !235, file: !2, line: 55, baseType: !986, size: 64, offset: 9600)
!986 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_engine_new_connection_event_handler", file: !310, line: 127, baseType: !987)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DISubroutineType(types: !989)
!989 = !{!322, !306, !990}
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "relay_server", scope: !235, file: !2, line: 56, baseType: !416, size: 64, offset: 9664)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !294)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!996 = !{!0, !7, !13, !18, !23, !28, !33, !38, !43, !48, !53, !58, !63, !68, !73, !78, !83, !88, !93, !98, !101, !103, !108, !110, !115, !117}
!997 = !{i32 7, !"Dwarf Version", i32 5}
!998 = !{i32 2, !"Debug Info Version", i32 3}
!999 = !{i32 1, !"wchar_size", i32 4}
!1000 = !{i32 8, !"PIC Level", i32 2}
!1001 = !{i32 7, !"PIE Level", i32 2}
!1002 = !{i32 7, !"uwtable", i32 2}
!1003 = !{i32 7, !"frame-pointer", i32 2}
!1004 = !{!"clang version 16.0.0"}
!1005 = distinct !DISubprogram(name: "create_tls_listener_server", scope: !2, file: !2, line: 346, type: !1006, scopeLine: 351, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !119, retainedNodes: !1008)
!1006 = !DISubroutineType(types: !1007)
!1007 = !{!232, !954, !954, !322, !322, !306, !986, !416}
!1008 = !{}
!1009 = !DILocalVariable(name: "ifname", arg: 1, scope: !1005, file: !2, line: 346, type: !954)
!1010 = !DILocation(line: 346, column: 72, scope: !1005)
!1011 = !DILocalVariable(name: "local_address", arg: 2, scope: !1005, file: !2, line: 347, type: !954)
!1012 = !DILocation(line: 347, column: 17, scope: !1005)
!1013 = !DILocalVariable(name: "port", arg: 3, scope: !1005, file: !2, line: 347, type: !322)
!1014 = !DILocation(line: 347, column: 36, scope: !1005)
!1015 = !DILocalVariable(name: "verbose", arg: 4, scope: !1005, file: !2, line: 347, type: !322)
!1016 = !DILocation(line: 347, column: 46, scope: !1005)
!1017 = !DILocalVariable(name: "e", arg: 5, scope: !1005, file: !2, line: 348, type: !306)
!1018 = !DILocation(line: 348, column: 23, scope: !1005)
!1019 = !DILocalVariable(name: "send_socket", arg: 6, scope: !1005, file: !2, line: 349, type: !986)
!1020 = !DILocation(line: 349, column: 45, scope: !1005)
!1021 = !DILocalVariable(name: "relay_server", arg: 7, scope: !1005, file: !2, line: 350, type: !416)
!1022 = !DILocation(line: 350, column: 26, scope: !1005)
!1023 = !DILocalVariable(name: "server", scope: !1005, file: !2, line: 353, type: !232)
!1024 = !DILocation(line: 353, column: 34, scope: !1005)
!1025 = !DILocation(line: 354, column: 38, scope: !1005)
!1026 = !DILocation(line: 356, column: 18, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1005, file: !2, line: 356, column: 6)
!1028 = !DILocation(line: 356, column: 26, scope: !1027)
!1029 = !DILocation(line: 356, column: 34, scope: !1027)
!1030 = !DILocation(line: 356, column: 49, scope: !1027)
!1031 = !DILocation(line: 356, column: 55, scope: !1027)
!1032 = !DILocation(line: 356, column: 64, scope: !1027)
!1033 = !DILocation(line: 357, column: 4, scope: !1027)
!1034 = !DILocation(line: 357, column: 17, scope: !1027)
!1035 = !DILocation(line: 356, column: 6, scope: !1027)
!1036 = !DILocation(line: 357, column: 31, scope: !1027)
!1037 = !DILocation(line: 356, column: 6, scope: !1005)
!1038 = !DILocation(line: 358, column: 3, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1027, file: !2, line: 357, column: 36)
!1040 = !DILocation(line: 360, column: 10, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1027, file: !2, line: 359, column: 9)
!1042 = !DILocation(line: 360, column: 3, scope: !1041)
!1043 = !DILocation(line: 362, column: 1, scope: !1005)
!1044 = distinct !DISubprogram(name: "init_server", scope: !2, file: !2, line: 311, type: !1045, scopeLine: 318, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !119, retainedNodes: !1008)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!322, !232, !954, !954, !322, !322, !306, !986, !416}
!1047 = !DILocalVariable(name: "server", arg: 1, scope: !1044, file: !2, line: 311, type: !232)
!1048 = !DILocation(line: 311, column: 56, scope: !1044)
!1049 = !DILocalVariable(name: "ifname", arg: 2, scope: !1044, file: !2, line: 312, type: !954)
!1050 = !DILocation(line: 312, column: 22, scope: !1044)
!1051 = !DILocalVariable(name: "local_address", arg: 3, scope: !1044, file: !2, line: 313, type: !954)
!1052 = !DILocation(line: 313, column: 22, scope: !1044)
!1053 = !DILocalVariable(name: "port", arg: 4, scope: !1044, file: !2, line: 314, type: !322)
!1054 = !DILocation(line: 314, column: 14, scope: !1044)
!1055 = !DILocalVariable(name: "verbose", arg: 5, scope: !1044, file: !2, line: 315, type: !322)
!1056 = !DILocation(line: 315, column: 14, scope: !1044)
!1057 = !DILocalVariable(name: "e", arg: 6, scope: !1044, file: !2, line: 316, type: !306)
!1058 = !DILocation(line: 316, column: 28, scope: !1044)
!1059 = !DILocalVariable(name: "send_socket", arg: 7, scope: !1044, file: !2, line: 317, type: !986)
!1060 = !DILocation(line: 317, column: 50, scope: !1044)
!1061 = !DILocalVariable(name: "relay_server", arg: 8, scope: !1044, file: !2, line: 318, type: !416)
!1062 = !DILocation(line: 318, column: 31, scope: !1044)
!1063 = !DILocation(line: 320, column: 7, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1044, file: !2, line: 320, column: 6)
!1065 = !DILocation(line: 320, column: 6, scope: !1044)
!1066 = !DILocation(line: 320, column: 15, scope: !1064)
!1067 = !DILocation(line: 322, column: 24, scope: !1044)
!1068 = !DILocation(line: 322, column: 3, scope: !1044)
!1069 = !DILocation(line: 322, column: 11, scope: !1044)
!1070 = !DILocation(line: 322, column: 22, scope: !1044)
!1071 = !DILocation(line: 323, column: 26, scope: !1044)
!1072 = !DILocation(line: 323, column: 3, scope: !1044)
!1073 = !DILocation(line: 323, column: 11, scope: !1044)
!1074 = !DILocation(line: 323, column: 24, scope: !1044)
!1075 = !DILocation(line: 325, column: 6, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1044, file: !2, line: 325, column: 6)
!1077 = !DILocation(line: 325, column: 6, scope: !1044)
!1078 = !DILocation(line: 325, column: 14, scope: !1076)
!1079 = !DILocation(line: 325, column: 14, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1081, file: !2, line: 325, column: 14)
!1081 = distinct !DILexicalBlock(scope: !1076, file: !2, line: 325, column: 14)
!1082 = !DILocation(line: 325, column: 14, scope: !1081)
!1083 = !DILocalVariable(name: "szdst", scope: !1084, file: !2, line: 325, type: !357)
!1084 = distinct !DILexicalBlock(scope: !1085, file: !2, line: 325, column: 14)
!1085 = distinct !DILexicalBlock(scope: !1086, file: !2, line: 325, column: 14)
!1086 = distinct !DILexicalBlock(scope: !1080, file: !2, line: 325, column: 14)
!1087 = !DILocation(line: 325, column: 14, scope: !1084)
!1088 = !DILocation(line: 325, column: 14, scope: !1086)
!1089 = !DILocation(line: 327, column: 36, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1044, file: !2, line: 327, column: 6)
!1091 = !DILocation(line: 327, column: 51, scope: !1090)
!1092 = !DILocation(line: 327, column: 58, scope: !1090)
!1093 = !DILocation(line: 327, column: 66, scope: !1090)
!1094 = !DILocation(line: 327, column: 6, scope: !1090)
!1095 = !DILocation(line: 327, column: 71, scope: !1090)
!1096 = !DILocation(line: 327, column: 6, scope: !1044)
!1097 = !DILocation(line: 328, column: 92, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1090, file: !2, line: 327, column: 75)
!1099 = !DILocation(line: 328, column: 4, scope: !1098)
!1100 = !DILocation(line: 329, column: 4, scope: !1098)
!1101 = !DILocation(line: 332, column: 19, scope: !1044)
!1102 = !DILocation(line: 332, column: 3, scope: !1044)
!1103 = !DILocation(line: 332, column: 11, scope: !1044)
!1104 = !DILocation(line: 332, column: 18, scope: !1044)
!1105 = !DILocation(line: 334, column: 15, scope: !1044)
!1106 = !DILocation(line: 334, column: 3, scope: !1044)
!1107 = !DILocation(line: 334, column: 11, scope: !1044)
!1108 = !DILocation(line: 334, column: 13, scope: !1044)
!1109 = !DILocation(line: 337, column: 31, scope: !1044)
!1110 = !DILocation(line: 337, column: 3, scope: !1044)
!1111 = !DILocation(line: 340, column: 33, scope: !1044)
!1112 = !DILocation(line: 340, column: 10, scope: !1044)
!1113 = !DILocation(line: 340, column: 3, scope: !1044)
!1114 = !DILocation(line: 341, column: 1, scope: !1044)
!1115 = distinct !DISubprogram(name: "sctp_create_server_listener", scope: !2, file: !2, line: 262, type: !1116, scopeLine: 262, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !119, retainedNodes: !1008)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!322, !232}
!1118 = !DILocalVariable(name: "server", arg: 1, scope: !1115, file: !2, line: 262, type: !232)
!1119 = !DILocation(line: 262, column: 72, scope: !1115)
!1120 = !DILocation(line: 264, column: 3, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1115, file: !2, line: 264, column: 3)
!1122 = !DILocation(line: 264, column: 3, scope: !1115)
!1123 = !DILocation(line: 266, column: 7, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1115, file: !2, line: 266, column: 6)
!1125 = !DILocation(line: 266, column: 6, scope: !1115)
!1126 = !DILocation(line: 266, column: 15, scope: !1124)
!1127 = !DILocalVariable(name: "tls_listen_fd", scope: !1115, file: !2, line: 268, type: !322)
!1128 = !DILocation(line: 268, column: 19, scope: !1115)
!1129 = !DILocation(line: 270, column: 26, scope: !1115)
!1130 = !DILocation(line: 270, column: 34, scope: !1115)
!1131 = !DILocation(line: 270, column: 42, scope: !1115)
!1132 = !DILocation(line: 270, column: 19, scope: !1115)
!1133 = !DILocation(line: 270, column: 17, scope: !1115)
!1134 = !DILocation(line: 271, column: 7, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1115, file: !2, line: 271, column: 7)
!1136 = !DILocation(line: 271, column: 21, scope: !1135)
!1137 = !DILocation(line: 271, column: 7, scope: !1115)
!1138 = !DILocation(line: 272, column: 5, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1135, file: !2, line: 271, column: 26)
!1140 = !DILocation(line: 273, column: 5, scope: !1139)
!1141 = !DILocation(line: 276, column: 26, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1115, file: !2, line: 276, column: 6)
!1143 = !DILocation(line: 276, column: 57, scope: !1142)
!1144 = !DILocation(line: 276, column: 65, scope: !1142)
!1145 = !DILocation(line: 276, column: 6, scope: !1142)
!1146 = !DILocation(line: 276, column: 72, scope: !1142)
!1147 = !DILocation(line: 276, column: 6, scope: !1115)
!1148 = !DILocation(line: 277, column: 84, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1142, file: !2, line: 276, column: 76)
!1150 = !DILocation(line: 277, column: 92, scope: !1149)
!1151 = !DILocation(line: 277, column: 5, scope: !1149)
!1152 = !DILocation(line: 278, column: 3, scope: !1149)
!1153 = !DILocation(line: 280, column: 16, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1115, file: !2, line: 280, column: 6)
!1155 = !DILocation(line: 280, column: 31, scope: !1154)
!1156 = !DILocation(line: 280, column: 39, scope: !1154)
!1157 = !DILocation(line: 280, column: 6, scope: !1154)
!1158 = !DILocation(line: 280, column: 60, scope: !1154)
!1159 = !DILocation(line: 280, column: 6, scope: !1115)
!1160 = !DILocation(line: 281, column: 10, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1154, file: !2, line: 280, column: 64)
!1162 = !DILocation(line: 281, column: 4, scope: !1161)
!1163 = !DILocation(line: 282, column: 4, scope: !1161)
!1164 = !DILocation(line: 285, column: 28, scope: !1115)
!1165 = !DILocation(line: 285, column: 3, scope: !1115)
!1166 = !DILocation(line: 287, column: 26, scope: !1115)
!1167 = !DILocation(line: 287, column: 3, scope: !1115)
!1168 = !DILocation(line: 289, column: 39, scope: !1115)
!1169 = !DILocation(line: 289, column: 47, scope: !1115)
!1170 = !DILocation(line: 289, column: 50, scope: !1115)
!1171 = !DILocation(line: 290, column: 32, scope: !1115)
!1172 = !DILocation(line: 292, column: 11, scope: !1115)
!1173 = !DILocation(line: 289, column: 20, scope: !1115)
!1174 = !DILocation(line: 289, column: 3, scope: !1115)
!1175 = !DILocation(line: 289, column: 11, scope: !1115)
!1176 = !DILocation(line: 289, column: 18, scope: !1115)
!1177 = !DILocation(line: 294, column: 8, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1115, file: !2, line: 294, column: 6)
!1179 = !DILocation(line: 294, column: 16, scope: !1178)
!1180 = !DILocation(line: 294, column: 7, scope: !1178)
!1181 = !DILocation(line: 294, column: 6, scope: !1115)
!1182 = !DILocation(line: 295, column: 4, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1178, file: !2, line: 294, column: 25)
!1184 = !DILocation(line: 296, column: 4, scope: !1183)
!1185 = !DILocation(line: 299, column: 20, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1115, file: !2, line: 299, column: 7)
!1187 = !DILocation(line: 299, column: 8, scope: !1186)
!1188 = !DILocation(line: 299, column: 7, scope: !1115)
!1189 = !DILocation(line: 300, column: 19, scope: !1186)
!1190 = !DILocation(line: 300, column: 27, scope: !1186)
!1191 = !DILocation(line: 300, column: 37, scope: !1186)
!1192 = !DILocation(line: 300, column: 45, scope: !1186)
!1193 = !DILocation(line: 300, column: 2, scope: !1186)
!1194 = !DILocation(line: 302, column: 19, scope: !1186)
!1195 = !DILocation(line: 302, column: 27, scope: !1186)
!1196 = !DILocation(line: 302, column: 37, scope: !1186)
!1197 = !DILocation(line: 302, column: 45, scope: !1186)
!1198 = !DILocation(line: 302, column: 2, scope: !1186)
!1199 = !DILocation(line: 304, column: 3, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1115, file: !2, line: 304, column: 3)
!1201 = !DILocation(line: 304, column: 3, scope: !1115)
!1202 = !DILocation(line: 306, column: 3, scope: !1115)
!1203 = !DILocation(line: 307, column: 1, scope: !1115)
!1204 = distinct !DISubprogram(name: "create_server_listener", scope: !2, file: !2, line: 195, type: !1116, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !119, retainedNodes: !1008)
!1205 = !DILocalVariable(name: "server", arg: 1, scope: !1204, file: !2, line: 195, type: !232)
!1206 = !DILocation(line: 195, column: 67, scope: !1204)
!1207 = !DILocation(line: 197, column: 3, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1204, file: !2, line: 197, column: 3)
!1209 = !DILocation(line: 197, column: 3, scope: !1204)
!1210 = !DILocation(line: 199, column: 7, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1204, file: !2, line: 199, column: 6)
!1212 = !DILocation(line: 199, column: 6, scope: !1204)
!1213 = !DILocation(line: 199, column: 15, scope: !1211)
!1214 = !DILocalVariable(name: "tls_listen_fd", scope: !1204, file: !2, line: 201, type: !322)
!1215 = !DILocation(line: 201, column: 19, scope: !1204)
!1216 = !DILocation(line: 203, column: 26, scope: !1204)
!1217 = !DILocation(line: 203, column: 34, scope: !1204)
!1218 = !DILocation(line: 203, column: 42, scope: !1204)
!1219 = !DILocation(line: 203, column: 19, scope: !1204)
!1220 = !DILocation(line: 203, column: 17, scope: !1204)
!1221 = !DILocation(line: 204, column: 7, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1204, file: !2, line: 204, column: 7)
!1223 = !DILocation(line: 204, column: 21, scope: !1222)
!1224 = !DILocation(line: 204, column: 7, scope: !1204)
!1225 = !DILocation(line: 205, column: 7, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1222, file: !2, line: 204, column: 26)
!1227 = !DILocation(line: 206, column: 7, scope: !1226)
!1228 = !DILocation(line: 209, column: 26, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1204, file: !2, line: 209, column: 6)
!1230 = !DILocation(line: 209, column: 57, scope: !1229)
!1231 = !DILocation(line: 209, column: 65, scope: !1229)
!1232 = !DILocation(line: 209, column: 6, scope: !1229)
!1233 = !DILocation(line: 209, column: 72, scope: !1229)
!1234 = !DILocation(line: 209, column: 6, scope: !1204)
!1235 = !DILocation(line: 210, column: 84, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1229, file: !2, line: 209, column: 76)
!1237 = !DILocation(line: 210, column: 92, scope: !1236)
!1238 = !DILocation(line: 210, column: 5, scope: !1236)
!1239 = !DILocation(line: 211, column: 3, scope: !1236)
!1240 = !DILocalVariable(name: "max_binding_time", scope: !1241, file: !2, line: 214, type: !1242)
!1241 = distinct !DILexicalBlock(scope: !1204, file: !2, line: 213, column: 3)
!1242 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !322)
!1243 = !DILocation(line: 214, column: 15, scope: !1241)
!1244 = !DILocalVariable(name: "addr_bind_cycle", scope: !1241, file: !2, line: 215, type: !322)
!1245 = !DILocation(line: 215, column: 9, scope: !1241)
!1246 = !DILocation(line: 215, column: 5, scope: !1241)
!1247 = !DILabel(scope: !1241, name: "retry_addr_bind", file: !2, line: 216)
!1248 = !DILocation(line: 216, column: 5, scope: !1241)
!1249 = !DILocation(line: 218, column: 18, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1241, file: !2, line: 218, column: 8)
!1251 = !DILocation(line: 218, column: 33, scope: !1250)
!1252 = !DILocation(line: 218, column: 41, scope: !1250)
!1253 = !DILocation(line: 218, column: 8, scope: !1250)
!1254 = !DILocation(line: 218, column: 61, scope: !1250)
!1255 = !DILocation(line: 218, column: 8, scope: !1241)
!1256 = !DILocation(line: 219, column: 5, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1250, file: !2, line: 218, column: 65)
!1258 = !DILocalVariable(name: "saddr", scope: !1257, file: !2, line: 220, type: !1259)
!1259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1032, elements: !1260)
!1260 = !{!1261}
!1261 = !DISubrange(count: 129)
!1262 = !DILocation(line: 220, column: 10, scope: !1257)
!1263 = !DILocation(line: 221, column: 21, scope: !1257)
!1264 = !DILocation(line: 221, column: 29, scope: !1257)
!1265 = !DILocation(line: 221, column: 44, scope: !1257)
!1266 = !DILocation(line: 221, column: 5, scope: !1257)
!1267 = !DILocation(line: 222, column: 93, scope: !1257)
!1268 = !DILocation(line: 222, column: 5, scope: !1257)
!1269 = !DILocation(line: 223, column: 23, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1257, file: !2, line: 223, column: 8)
!1271 = !DILocation(line: 223, column: 25, scope: !1270)
!1272 = !DILocation(line: 223, column: 8, scope: !1257)
!1273 = !DILocation(line: 224, column: 105, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1270, file: !2, line: 223, column: 44)
!1275 = !DILocation(line: 224, column: 7, scope: !1274)
!1276 = !DILocation(line: 225, column: 7, scope: !1274)
!1277 = !DILocation(line: 226, column: 7, scope: !1274)
!1278 = !DILocation(line: 228, column: 112, scope: !1257)
!1279 = !DILocation(line: 228, column: 5, scope: !1257)
!1280 = !DILocation(line: 229, column: 5, scope: !1257)
!1281 = !DILocation(line: 233, column: 28, scope: !1204)
!1282 = !DILocation(line: 233, column: 3, scope: !1204)
!1283 = !DILocation(line: 235, column: 26, scope: !1204)
!1284 = !DILocation(line: 235, column: 3, scope: !1204)
!1285 = !DILocation(line: 237, column: 34, scope: !1204)
!1286 = !DILocation(line: 237, column: 42, scope: !1204)
!1287 = !DILocation(line: 237, column: 45, scope: !1204)
!1288 = !DILocation(line: 238, column: 27, scope: !1204)
!1289 = !DILocation(line: 240, column: 11, scope: !1204)
!1290 = !DILocation(line: 237, column: 15, scope: !1204)
!1291 = !DILocation(line: 237, column: 3, scope: !1204)
!1292 = !DILocation(line: 237, column: 11, scope: !1204)
!1293 = !DILocation(line: 237, column: 13, scope: !1204)
!1294 = !DILocation(line: 242, column: 8, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1204, file: !2, line: 242, column: 6)
!1296 = !DILocation(line: 242, column: 16, scope: !1295)
!1297 = !DILocation(line: 242, column: 7, scope: !1295)
!1298 = !DILocation(line: 242, column: 6, scope: !1204)
!1299 = !DILocation(line: 243, column: 4, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1295, file: !2, line: 242, column: 20)
!1301 = !DILocation(line: 244, column: 4, scope: !1300)
!1302 = !DILocation(line: 245, column: 4, scope: !1300)
!1303 = !DILocation(line: 248, column: 19, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1204, file: !2, line: 248, column: 6)
!1305 = !DILocation(line: 248, column: 7, scope: !1304)
!1306 = !DILocation(line: 248, column: 26, scope: !1304)
!1307 = !DILocation(line: 248, column: 42, scope: !1304)
!1308 = !DILocation(line: 248, column: 30, scope: !1304)
!1309 = !DILocation(line: 248, column: 6, scope: !1204)
!1310 = !DILocation(line: 249, column: 21, scope: !1304)
!1311 = !DILocation(line: 249, column: 29, scope: !1304)
!1312 = !DILocation(line: 249, column: 39, scope: !1304)
!1313 = !DILocation(line: 249, column: 47, scope: !1304)
!1314 = !DILocation(line: 249, column: 4, scope: !1304)
!1315 = !DILocation(line: 250, column: 24, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1304, file: !2, line: 250, column: 11)
!1317 = !DILocation(line: 250, column: 12, scope: !1316)
!1318 = !DILocation(line: 250, column: 11, scope: !1304)
!1319 = !DILocation(line: 251, column: 21, scope: !1316)
!1320 = !DILocation(line: 251, column: 29, scope: !1316)
!1321 = !DILocation(line: 251, column: 39, scope: !1316)
!1322 = !DILocation(line: 251, column: 47, scope: !1316)
!1323 = !DILocation(line: 251, column: 4, scope: !1316)
!1324 = !DILocation(line: 252, column: 24, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1316, file: !2, line: 252, column: 11)
!1326 = !DILocation(line: 252, column: 12, scope: !1325)
!1327 = !DILocation(line: 252, column: 11, scope: !1316)
!1328 = !DILocation(line: 253, column: 21, scope: !1325)
!1329 = !DILocation(line: 253, column: 29, scope: !1325)
!1330 = !DILocation(line: 253, column: 39, scope: !1325)
!1331 = !DILocation(line: 253, column: 47, scope: !1325)
!1332 = !DILocation(line: 253, column: 4, scope: !1325)
!1333 = !DILocation(line: 255, column: 3, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1204, file: !2, line: 255, column: 3)
!1335 = !DILocation(line: 255, column: 3, scope: !1204)
!1336 = !DILocation(line: 257, column: 3, scope: !1204)
!1337 = !DILocation(line: 258, column: 1, scope: !1204)
!1338 = distinct !DISubprogram(name: "sctp_server_input_handler", scope: !2, file: !2, line: 128, type: !1339, scopeLine: 130, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !119, retainedNodes: !1008)
!1339 = !DISubroutineType(types: !1340)
!1340 = !{null, !406, !322, !1341, !322, !378}
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!1342 = !DILocalVariable(name: "l", arg: 1, scope: !1338, file: !2, line: 128, type: !406)
!1343 = !DILocation(line: 128, column: 62, scope: !1338)
!1344 = !DILocalVariable(name: "fd", arg: 2, scope: !1338, file: !2, line: 128, type: !322)
!1345 = !DILocation(line: 128, column: 81, scope: !1338)
!1346 = !DILocalVariable(name: "sa", arg: 3, scope: !1338, file: !2, line: 129, type: !1341)
!1347 = !DILocation(line: 129, column: 22, scope: !1338)
!1348 = !DILocalVariable(name: "socklen", arg: 4, scope: !1338, file: !2, line: 129, type: !322)
!1349 = !DILocation(line: 129, column: 30, scope: !1338)
!1350 = !DILocalVariable(name: "arg", arg: 5, scope: !1338, file: !2, line: 129, type: !378)
!1351 = !DILocation(line: 129, column: 45, scope: !1338)
!1352 = !DILocation(line: 132, column: 2, scope: !1338)
!1353 = !DILocation(line: 132, column: 2, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1338, file: !2, line: 132, column: 2)
!1355 = !DILocalVariable(name: "server", scope: !1338, file: !2, line: 134, type: !232)
!1356 = !DILocation(line: 134, column: 35, scope: !1338)
!1357 = !DILocation(line: 134, column: 78, scope: !1338)
!1358 = !DILocation(line: 136, column: 7, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1338, file: !2, line: 136, column: 5)
!1360 = !DILocation(line: 136, column: 15, scope: !1359)
!1361 = !DILocation(line: 136, column: 6, scope: !1359)
!1362 = !DILocation(line: 136, column: 5, scope: !1338)
!1363 = !DILocation(line: 137, column: 3, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1359, file: !2, line: 136, column: 28)
!1365 = !DILocation(line: 138, column: 3, scope: !1364)
!1366 = !DILocation(line: 141, column: 2, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1338, file: !2, line: 141, column: 2)
!1368 = !DILocation(line: 141, column: 2, scope: !1338)
!1369 = !DILocation(line: 143, column: 7, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1338, file: !2, line: 143, column: 6)
!1371 = !DILocation(line: 143, column: 6, scope: !1338)
!1372 = !DILocation(line: 144, column: 3, scope: !1370)
!1373 = !DILocation(line: 146, column: 8, scope: !1338)
!1374 = !DILocation(line: 146, column: 13, scope: !1338)
!1375 = !DILocation(line: 146, column: 21, scope: !1338)
!1376 = !DILocation(line: 146, column: 24, scope: !1338)
!1377 = !DILocation(line: 146, column: 29, scope: !1338)
!1378 = !DILocation(line: 146, column: 32, scope: !1338)
!1379 = !DILocation(line: 146, column: 42, scope: !1338)
!1380 = !DILocation(line: 146, column: 2, scope: !1338)
!1381 = !DILocation(line: 148, column: 19, scope: !1338)
!1382 = !DILocation(line: 148, column: 27, scope: !1338)
!1383 = !DILocation(line: 148, column: 38, scope: !1338)
!1384 = !DILocation(line: 148, column: 46, scope: !1338)
!1385 = !DILocation(line: 148, column: 49, scope: !1338)
!1386 = !DILocation(line: 148, column: 54, scope: !1338)
!1387 = !DILocation(line: 148, column: 57, scope: !1338)
!1388 = !DILocation(line: 148, column: 2, scope: !1338)
!1389 = !DILocalVariable(name: "st", scope: !1338, file: !2, line: 150, type: !528)
!1390 = !DILocation(line: 150, column: 14, scope: !1338)
!1391 = !DILocation(line: 152, column: 17, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1338, file: !2, line: 152, column: 5)
!1393 = !DILocation(line: 152, column: 5, scope: !1392)
!1394 = !DILocation(line: 152, column: 5, scope: !1338)
!1395 = !DILocation(line: 153, column: 6, scope: !1392)
!1396 = !DILocation(line: 153, column: 3, scope: !1392)
!1397 = !DILocation(line: 154, column: 22, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1392, file: !2, line: 154, column: 10)
!1399 = !DILocation(line: 154, column: 10, scope: !1398)
!1400 = !DILocation(line: 154, column: 10, scope: !1392)
!1401 = !DILocation(line: 155, column: 6, scope: !1398)
!1402 = !DILocation(line: 155, column: 3, scope: !1398)
!1403 = !DILocalVariable(name: "ioas", scope: !1338, file: !2, line: 157, type: !491)
!1404 = !DILocation(line: 157, column: 20, scope: !1338)
!1405 = !DILocation(line: 159, column: 8, scope: !1338)
!1406 = !DILocation(line: 159, column: 16, scope: !1338)
!1407 = !DILocation(line: 160, column: 8, scope: !1338)
!1408 = !DILocation(line: 162, column: 8, scope: !1338)
!1409 = !DILocation(line: 164, column: 10, scope: !1338)
!1410 = !DILocation(line: 164, column: 18, scope: !1338)
!1411 = !DILocation(line: 164, column: 21, scope: !1338)
!1412 = !DILocation(line: 164, column: 26, scope: !1338)
!1413 = !DILocation(line: 164, column: 29, scope: !1338)
!1414 = !DILocation(line: 165, column: 10, scope: !1338)
!1415 = !DILocation(line: 165, column: 18, scope: !1338)
!1416 = !DILocation(line: 158, column: 5, scope: !1338)
!1417 = !DILocation(line: 167, column: 6, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1338, file: !2, line: 167, column: 6)
!1419 = !DILocation(line: 167, column: 6, scope: !1338)
!1420 = !DILocation(line: 169, column: 3, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1418, file: !2, line: 167, column: 12)
!1422 = !DILocation(line: 169, column: 11, scope: !1421)
!1423 = !DILocation(line: 169, column: 14, scope: !1421)
!1424 = !DILocation(line: 169, column: 19, scope: !1421)
!1425 = !DILocation(line: 169, column: 22, scope: !1421)
!1426 = !DILocation(line: 169, column: 31, scope: !1421)
!1427 = !DILocation(line: 170, column: 3, scope: !1421)
!1428 = !DILocation(line: 170, column: 11, scope: !1421)
!1429 = !DILocation(line: 170, column: 14, scope: !1421)
!1430 = !DILocation(line: 170, column: 19, scope: !1421)
!1431 = !DILocation(line: 170, column: 22, scope: !1421)
!1432 = !DILocation(line: 170, column: 31, scope: !1421)
!1433 = !DILocation(line: 171, column: 3, scope: !1421)
!1434 = !DILocation(line: 171, column: 11, scope: !1421)
!1435 = !DILocation(line: 171, column: 14, scope: !1421)
!1436 = !DILocation(line: 171, column: 19, scope: !1421)
!1437 = !DILocation(line: 171, column: 22, scope: !1421)
!1438 = !DILocation(line: 171, column: 26, scope: !1421)
!1439 = !DILocation(line: 172, column: 23, scope: !1421)
!1440 = !DILocation(line: 172, column: 3, scope: !1421)
!1441 = !DILocation(line: 172, column: 11, scope: !1421)
!1442 = !DILocation(line: 172, column: 14, scope: !1421)
!1443 = !DILocation(line: 172, column: 19, scope: !1421)
!1444 = !DILocation(line: 172, column: 21, scope: !1421)
!1445 = !DILocation(line: 173, column: 3, scope: !1421)
!1446 = !DILocation(line: 173, column: 11, scope: !1421)
!1447 = !DILocation(line: 173, column: 14, scope: !1421)
!1448 = !DILocation(line: 173, column: 19, scope: !1421)
!1449 = !DILocation(line: 173, column: 30, scope: !1421)
!1450 = !DILocation(line: 174, column: 29, scope: !1421)
!1451 = !DILocation(line: 174, column: 37, scope: !1421)
!1452 = !DILocation(line: 174, column: 3, scope: !1421)
!1453 = !DILocation(line: 174, column: 11, scope: !1421)
!1454 = !DILocation(line: 174, column: 14, scope: !1421)
!1455 = !DILocation(line: 174, column: 27, scope: !1421)
!1456 = !DILocalVariable(name: "rc", scope: !1421, file: !2, line: 176, type: !322)
!1457 = !DILocation(line: 176, column: 7, scope: !1421)
!1458 = !DILocation(line: 176, column: 12, scope: !1421)
!1459 = !DILocation(line: 176, column: 20, scope: !1421)
!1460 = !DILocation(line: 176, column: 31, scope: !1421)
!1461 = !DILocation(line: 176, column: 39, scope: !1421)
!1462 = !DILocation(line: 176, column: 44, scope: !1421)
!1463 = !DILocation(line: 176, column: 52, scope: !1421)
!1464 = !DILocation(line: 178, column: 7, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1421, file: !2, line: 178, column: 7)
!1466 = !DILocation(line: 178, column: 10, scope: !1465)
!1467 = !DILocation(line: 178, column: 7, scope: !1421)
!1468 = !DILocation(line: 179, column: 4, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1465, file: !2, line: 178, column: 15)
!1470 = !DILocation(line: 181, column: 3, scope: !1469)
!1471 = !DILocation(line: 182, column: 2, scope: !1421)
!1472 = !DILocation(line: 183, column: 3, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1418, file: !2, line: 182, column: 9)
!1474 = !DILocation(line: 185, column: 3, scope: !1473)
!1475 = !DILocation(line: 188, column: 2, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1338, file: !2, line: 188, column: 2)
!1477 = !DILocation(line: 188, column: 2, scope: !1338)
!1478 = !DILocation(line: 189, column: 1, scope: !1338)
!1479 = distinct !DISubprogram(name: "server_input_handler", scope: !2, file: !2, line: 61, type: !1339, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !119, retainedNodes: !1008)
!1480 = !DILocalVariable(name: "l", arg: 1, scope: !1479, file: !2, line: 61, type: !406)
!1481 = !DILocation(line: 61, column: 57, scope: !1479)
!1482 = !DILocalVariable(name: "fd", arg: 2, scope: !1479, file: !2, line: 61, type: !322)
!1483 = !DILocation(line: 61, column: 76, scope: !1479)
!1484 = !DILocalVariable(name: "sa", arg: 3, scope: !1479, file: !2, line: 62, type: !1341)
!1485 = !DILocation(line: 62, column: 22, scope: !1479)
!1486 = !DILocalVariable(name: "socklen", arg: 4, scope: !1479, file: !2, line: 62, type: !322)
!1487 = !DILocation(line: 62, column: 30, scope: !1479)
!1488 = !DILocalVariable(name: "arg", arg: 5, scope: !1479, file: !2, line: 62, type: !378)
!1489 = !DILocation(line: 62, column: 45, scope: !1479)
!1490 = !DILocation(line: 65, column: 2, scope: !1479)
!1491 = !DILocation(line: 65, column: 2, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1479, file: !2, line: 65, column: 2)
!1493 = !DILocalVariable(name: "server", scope: !1479, file: !2, line: 67, type: !232)
!1494 = !DILocation(line: 67, column: 35, scope: !1479)
!1495 = !DILocation(line: 67, column: 78, scope: !1479)
!1496 = !DILocation(line: 69, column: 7, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1479, file: !2, line: 69, column: 5)
!1498 = !DILocation(line: 69, column: 15, scope: !1497)
!1499 = !DILocation(line: 69, column: 6, scope: !1497)
!1500 = !DILocation(line: 69, column: 5, scope: !1479)
!1501 = !DILocation(line: 70, column: 3, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1497, file: !2, line: 69, column: 28)
!1503 = !DILocation(line: 71, column: 3, scope: !1502)
!1504 = !DILocation(line: 74, column: 2, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1479, file: !2, line: 74, column: 2)
!1506 = !DILocation(line: 74, column: 2, scope: !1479)
!1507 = !DILocation(line: 76, column: 7, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1479, file: !2, line: 76, column: 6)
!1509 = !DILocation(line: 76, column: 6, scope: !1479)
!1510 = !DILocation(line: 77, column: 3, scope: !1508)
!1511 = !DILocation(line: 79, column: 8, scope: !1479)
!1512 = !DILocation(line: 79, column: 13, scope: !1479)
!1513 = !DILocation(line: 79, column: 21, scope: !1479)
!1514 = !DILocation(line: 79, column: 24, scope: !1479)
!1515 = !DILocation(line: 79, column: 29, scope: !1479)
!1516 = !DILocation(line: 79, column: 32, scope: !1479)
!1517 = !DILocation(line: 79, column: 42, scope: !1479)
!1518 = !DILocation(line: 79, column: 2, scope: !1479)
!1519 = !DILocation(line: 81, column: 19, scope: !1479)
!1520 = !DILocation(line: 81, column: 27, scope: !1479)
!1521 = !DILocation(line: 81, column: 38, scope: !1479)
!1522 = !DILocation(line: 81, column: 46, scope: !1479)
!1523 = !DILocation(line: 81, column: 49, scope: !1479)
!1524 = !DILocation(line: 81, column: 54, scope: !1479)
!1525 = !DILocation(line: 81, column: 57, scope: !1479)
!1526 = !DILocation(line: 81, column: 2, scope: !1479)
!1527 = !DILocalVariable(name: "st", scope: !1479, file: !2, line: 83, type: !528)
!1528 = !DILocation(line: 83, column: 14, scope: !1479)
!1529 = !DILocation(line: 85, column: 17, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1479, file: !2, line: 85, column: 5)
!1531 = !DILocation(line: 85, column: 5, scope: !1530)
!1532 = !DILocation(line: 85, column: 5, scope: !1479)
!1533 = !DILocation(line: 86, column: 6, scope: !1530)
!1534 = !DILocation(line: 86, column: 3, scope: !1530)
!1535 = !DILocation(line: 87, column: 22, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1530, file: !2, line: 87, column: 10)
!1537 = !DILocation(line: 87, column: 10, scope: !1536)
!1538 = !DILocation(line: 87, column: 10, scope: !1530)
!1539 = !DILocation(line: 88, column: 6, scope: !1536)
!1540 = !DILocation(line: 88, column: 3, scope: !1536)
!1541 = !DILocation(line: 89, column: 22, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1536, file: !2, line: 89, column: 10)
!1543 = !DILocation(line: 89, column: 10, scope: !1542)
!1544 = !DILocation(line: 89, column: 10, scope: !1536)
!1545 = !DILocation(line: 90, column: 6, scope: !1542)
!1546 = !DILocation(line: 90, column: 3, scope: !1542)
!1547 = !DILocalVariable(name: "ioas", scope: !1479, file: !2, line: 92, type: !491)
!1548 = !DILocation(line: 92, column: 20, scope: !1479)
!1549 = !DILocation(line: 94, column: 8, scope: !1479)
!1550 = !DILocation(line: 94, column: 16, scope: !1479)
!1551 = !DILocation(line: 95, column: 8, scope: !1479)
!1552 = !DILocation(line: 97, column: 8, scope: !1479)
!1553 = !DILocation(line: 99, column: 10, scope: !1479)
!1554 = !DILocation(line: 99, column: 18, scope: !1479)
!1555 = !DILocation(line: 99, column: 21, scope: !1479)
!1556 = !DILocation(line: 99, column: 26, scope: !1479)
!1557 = !DILocation(line: 99, column: 29, scope: !1479)
!1558 = !DILocation(line: 100, column: 10, scope: !1479)
!1559 = !DILocation(line: 100, column: 18, scope: !1479)
!1560 = !DILocation(line: 93, column: 5, scope: !1479)
!1561 = !DILocation(line: 102, column: 6, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1479, file: !2, line: 102, column: 6)
!1563 = !DILocation(line: 102, column: 6, scope: !1479)
!1564 = !DILocation(line: 104, column: 3, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1562, file: !2, line: 102, column: 12)
!1566 = !DILocation(line: 104, column: 11, scope: !1565)
!1567 = !DILocation(line: 104, column: 14, scope: !1565)
!1568 = !DILocation(line: 104, column: 19, scope: !1565)
!1569 = !DILocation(line: 104, column: 22, scope: !1565)
!1570 = !DILocation(line: 104, column: 31, scope: !1565)
!1571 = !DILocation(line: 105, column: 3, scope: !1565)
!1572 = !DILocation(line: 105, column: 11, scope: !1565)
!1573 = !DILocation(line: 105, column: 14, scope: !1565)
!1574 = !DILocation(line: 105, column: 19, scope: !1565)
!1575 = !DILocation(line: 105, column: 22, scope: !1565)
!1576 = !DILocation(line: 105, column: 31, scope: !1565)
!1577 = !DILocation(line: 106, column: 3, scope: !1565)
!1578 = !DILocation(line: 106, column: 11, scope: !1565)
!1579 = !DILocation(line: 106, column: 14, scope: !1565)
!1580 = !DILocation(line: 106, column: 19, scope: !1565)
!1581 = !DILocation(line: 106, column: 22, scope: !1565)
!1582 = !DILocation(line: 106, column: 26, scope: !1565)
!1583 = !DILocation(line: 107, column: 23, scope: !1565)
!1584 = !DILocation(line: 107, column: 3, scope: !1565)
!1585 = !DILocation(line: 107, column: 11, scope: !1565)
!1586 = !DILocation(line: 107, column: 14, scope: !1565)
!1587 = !DILocation(line: 107, column: 19, scope: !1565)
!1588 = !DILocation(line: 107, column: 21, scope: !1565)
!1589 = !DILocation(line: 108, column: 3, scope: !1565)
!1590 = !DILocation(line: 108, column: 11, scope: !1565)
!1591 = !DILocation(line: 108, column: 14, scope: !1565)
!1592 = !DILocation(line: 108, column: 19, scope: !1565)
!1593 = !DILocation(line: 108, column: 30, scope: !1565)
!1594 = !DILocation(line: 109, column: 29, scope: !1565)
!1595 = !DILocation(line: 109, column: 37, scope: !1565)
!1596 = !DILocation(line: 109, column: 3, scope: !1565)
!1597 = !DILocation(line: 109, column: 11, scope: !1565)
!1598 = !DILocation(line: 109, column: 14, scope: !1565)
!1599 = !DILocation(line: 109, column: 27, scope: !1565)
!1600 = !DILocalVariable(name: "rc", scope: !1565, file: !2, line: 111, type: !322)
!1601 = !DILocation(line: 111, column: 7, scope: !1565)
!1602 = !DILocation(line: 111, column: 12, scope: !1565)
!1603 = !DILocation(line: 111, column: 20, scope: !1565)
!1604 = !DILocation(line: 111, column: 31, scope: !1565)
!1605 = !DILocation(line: 111, column: 39, scope: !1565)
!1606 = !DILocation(line: 111, column: 44, scope: !1565)
!1607 = !DILocation(line: 111, column: 52, scope: !1565)
!1608 = !DILocation(line: 113, column: 7, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1565, file: !2, line: 113, column: 7)
!1610 = !DILocation(line: 113, column: 10, scope: !1609)
!1611 = !DILocation(line: 113, column: 7, scope: !1565)
!1612 = !DILocation(line: 114, column: 4, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1609, file: !2, line: 113, column: 15)
!1614 = !DILocation(line: 116, column: 3, scope: !1613)
!1615 = !DILocation(line: 117, column: 2, scope: !1565)
!1616 = !DILocation(line: 118, column: 3, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1562, file: !2, line: 117, column: 9)
!1618 = !DILocation(line: 120, column: 3, scope: !1617)
!1619 = !DILocation(line: 123, column: 2, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1479, file: !2, line: 123, column: 2)
!1621 = !DILocation(line: 123, column: 2, scope: !1479)
!1622 = !DILocation(line: 124, column: 1, scope: !1479)
