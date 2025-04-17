; ModuleID = '/home/raj/coturn/src/apps/relay/dbdrivers/dbd_redis.c'
source_filename = "/home/raj/coturn/src/apps/relay/dbdrivers/dbd_redis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._turn_dbdriver_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.timeval = type { i64, i64 }
%struct._Ryconninfo = type { ptr, ptr, ptr, i32, i32 }
%struct.redisReply = type { i32, i64, i64, ptr, i64, ptr }
%struct._realm_params_t = type { i32, %struct._realm_options_t, %struct._realm_status_t }
%struct._realm_options_t = type { [128 x i8], %struct._perf_options_t }
%struct._perf_options_t = type { i64, i32, i32 }
%struct._realm_status_t = type { i32, ptr }
%struct._oauth_key_data_raw = type { [129 x i8], [257 x i8], i64, i32, [65 x i8], [128 x i8] }
%struct.redisContext = type { i32, [128 x i8], i32, i32, ptr, ptr, i32, ptr, %struct.anon, %struct.anon.0 }
%struct.anon = type { ptr, ptr, i32 }
%struct.anon.0 = type { ptr }

@.str = private unnamed_addr constant [74 x i8] c"Cannot open Redis DB connection <%s>, connection string format error: %s\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [70 x i8] c"Cannot open Redis DB connection <%s>, connection string format error\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [45 x i8] c"Cannot initialize Redis DB async connection\0A\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [8 x i8] c"AUTH %s\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [10 x i8] c"select %s\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [32 x i8] c"keys turn/*/allocation/*/status\00", align 1, !dbg !29
@.str.7 = private unnamed_addr constant [11 x i8] c"Error: %s\0A\00", align 1, !dbg !34
@.str.8 = private unnamed_addr constant [21 x i8] c"Unexpected type: %d\0A\00", align 1, !dbg !39
@.str.9 = private unnamed_addr constant [7 x i8] c"del %s\00", align 1, !dbg !44
@.str.10 = private unnamed_addr constant [39 x i8] c"Cannot initialize Redis DB connection\0A\00", align 1, !dbg !49
@donot_print_connection_success = internal global i32 0, align 4, !dbg !54
@.str.11 = private unnamed_addr constant [42 x i8] c"Redis DB async connection to be used: %s\0A\00", align 1, !dbg !224
@driver = internal constant %struct._turn_dbdriver_t { ptr @redis_get_auth_secrets, ptr @redis_get_user_key, ptr @redis_set_user_key, ptr @redis_del_user, ptr @redis_list_users, ptr @redis_list_secrets, ptr @redis_del_secret, ptr @redis_set_secret, ptr @redis_add_origin, ptr @redis_del_origin, ptr @redis_list_origins, ptr @redis_set_realm_option_one, ptr @redis_list_realm_options, ptr @redis_auth_ping, ptr @redis_get_ip_list, ptr @redis_set_permission_ip, ptr @redis_reread_realms, ptr @redis_set_oauth_key, ptr @redis_get_oauth_key, ptr @redis_del_oauth_key, ptr @redis_list_oauth_keys, ptr @redis_get_admin_user, ptr @redis_set_admin_user, ptr @redis_del_admin_user, ptr @redis_list_admin_users, ptr @redis_disconnect }, align 8, !dbg !299
@.str.12 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !229
@.str.13 = private unnamed_addr constant [2 x i8] c"=\00", align 1, !dbg !234
@.str.14 = private unnamed_addr constant [5 x i8] c"host\00", align 1, !dbg !236
@.str.15 = private unnamed_addr constant [3 x i8] c"ip\00", align 1, !dbg !241
@.str.16 = private unnamed_addr constant [5 x i8] c"addr\00", align 1, !dbg !246
@.str.17 = private unnamed_addr constant [7 x i8] c"ipaddr\00", align 1, !dbg !248
@.str.18 = private unnamed_addr constant [9 x i8] c"hostaddr\00", align 1, !dbg !250
@.str.19 = private unnamed_addr constant [7 x i8] c"dbname\00", align 1, !dbg !253
@.str.20 = private unnamed_addr constant [3 x i8] c"db\00", align 1, !dbg !255
@.str.21 = private unnamed_addr constant [9 x i8] c"database\00", align 1, !dbg !257
@.str.22 = private unnamed_addr constant [5 x i8] c"user\00", align 1, !dbg !259
@.str.23 = private unnamed_addr constant [6 x i8] c"uname\00", align 1, !dbg !261
@.str.24 = private unnamed_addr constant [5 x i8] c"name\00", align 1, !dbg !266
@.str.25 = private unnamed_addr constant [9 x i8] c"username\00", align 1, !dbg !268
@.str.26 = private unnamed_addr constant [9 x i8] c"password\00", align 1, !dbg !270
@.str.27 = private unnamed_addr constant [4 x i8] c"pwd\00", align 1, !dbg !272
@.str.28 = private unnamed_addr constant [7 x i8] c"passwd\00", align 1, !dbg !277
@.str.29 = private unnamed_addr constant [7 x i8] c"secret\00", align 1, !dbg !279
@.str.30 = private unnamed_addr constant [5 x i8] c"port\00", align 1, !dbg !281
@.str.31 = private unnamed_addr constant [2 x i8] c"p\00", align 1, !dbg !283
@.str.32 = private unnamed_addr constant [16 x i8] c"connect_timeout\00", align 1, !dbg !285
@.str.33 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1, !dbg !290
@.str.34 = private unnamed_addr constant [2 x i8] c"0\00", align 1, !dbg !292
@.str.35 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !294
@.str.36 = private unnamed_addr constant [30 x i8] c"smembers turn/realm/%s/secret\00", align 1, !dbg !488
@connection_key = external global i32, align 4
@.str.37 = private unnamed_addr constant [50 x i8] c"%s: Cannot connect to redis, err=%d, flags=0x%lx\0A\00", align 1, !dbg !493
@__FUNCTION__.get_redis_connection = private unnamed_addr constant [21 x i8] c"get_redis_connection\00", align 1, !dbg !498
@.str.38 = private unnamed_addr constant [11 x i8] c"Redis: %s\0A\00", align 1, !dbg !501
@.str.39 = private unnamed_addr constant [38 x i8] c"Redis DB sync connection success: %s\0A\00", align 1, !dbg !503
@.str.40 = private unnamed_addr constant [30 x i8] c"get turn/realm/%s/user/%s/key\00", align 1, !dbg !508
@.str.41 = private unnamed_addr constant [31 x i8] c"Wrong key format: %s, user %s\0A\00", align 1, !dbg !510
@.str.42 = private unnamed_addr constant [24 x i8] c"Wrong key: %s, user %s\0A\00", align 1, !dbg !515
@.str.43 = private unnamed_addr constant [33 x i8] c"set turn/realm/%s/user/%s/key %s\00", align 1, !dbg !520
@.str.44 = private unnamed_addr constant [5 x i8] c"save\00", align 1, !dbg !525
@.str.45 = private unnamed_addr constant [30 x i8] c"del turn/realm/%s/user/%s/key\00", align 1, !dbg !527
@.str.46 = private unnamed_addr constant [30 x i8] c"keys turn/realm/%s/user/*/key\00", align 1, !dbg !529
@.str.47 = private unnamed_addr constant [29 x i8] c"keys turn/realm/*/user/*/key\00", align 1, !dbg !531
@.str.48 = private unnamed_addr constant [12 x i8] c"turn/realm/\00", align 1, !dbg !536
@.str.49 = private unnamed_addr constant [6 x i8] c"user/\00", align 1, !dbg !541
@.str.50 = private unnamed_addr constant [8 x i8] c"%s[%s]\0A\00", align 1, !dbg !543
@.str.51 = private unnamed_addr constant [26 x i8] c"keys turn/realm/%s/secret\00", align 1, !dbg !545
@.str.52 = private unnamed_addr constant [25 x i8] c"keys turn/realm/*/secret\00", align 1, !dbg !550
@.str.53 = private unnamed_addr constant [12 x i8] c"smembers %s\00", align 1, !dbg !555
@.str.54 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1, !dbg !557
@.str.55 = private unnamed_addr constant [29 x i8] c"srem turn/realm/%s/secret %s\00", align 1, !dbg !559
@.str.56 = private unnamed_addr constant [29 x i8] c"sadd turn/realm/%s/secret %s\00", align 1, !dbg !561
@.str.57 = private unnamed_addr constant [22 x i8] c"set turn/origin/%s %s\00", align 1, !dbg !563
@.str.58 = private unnamed_addr constant [19 x i8] c"del turn/origin/%s\00", align 1, !dbg !568
@.str.59 = private unnamed_addr constant [19 x i8] c"keys turn/origin/*\00", align 1, !dbg !573
@.str.60 = private unnamed_addr constant [19 x i8] c"get turn/origin/%s\00", align 1, !dbg !575
@.str.61 = private unnamed_addr constant [12 x i8] c"%s ==>> %s\0A\00", align 1, !dbg !577
@.str.62 = private unnamed_addr constant [25 x i8] c"set turn/realm/%s/%s %lu\00", align 1, !dbg !579
@.str.63 = private unnamed_addr constant [21 x i8] c"del turn/realm/%s/%s\00", align 1, !dbg !581
@.str.64 = private unnamed_addr constant [21 x i8] c"keys turn/realm/%s/*\00", align 1, !dbg !583
@.str.65 = private unnamed_addr constant [18 x i8] c"keys turn/realm/*\00", align 1, !dbg !585
@.str.66 = private unnamed_addr constant [9 x i8] c"/max-bps\00", align 1, !dbg !590
@.str.67 = private unnamed_addr constant [13 x i8] c"/total-quota\00", align 1, !dbg !592
@.str.68 = private unnamed_addr constant [12 x i8] c"/user-quota\00", align 1, !dbg !597
@.str.69 = private unnamed_addr constant [7 x i8] c"get %s\00", align 1, !dbg !599
@.str.70 = private unnamed_addr constant [9 x i8] c"%s = %s\0A\00", align 1, !dbg !601
@.str.71 = private unnamed_addr constant [8 x i8] c"publish\00", align 1, !dbg !603
@.str.72 = private unnamed_addr constant [8 x i8] c"__XXX__\00", align 1, !dbg !605
@.str.73 = private unnamed_addr constant [8 x i8] c"__YYY__\00", align 1, !dbg !607
@.str.74 = private unnamed_addr constant [20 x i8] c"keys %s*/%s-peer-ip\00", align 1, !dbg !609
@.str.75 = private unnamed_addr constant [2 x i8] c"/\00", align 1, !dbg !614
@.str.76 = private unnamed_addr constant [33 x i8] c"srem turn/realm/%s/%s-peer-ip %s\00", align 1, !dbg !616
@.str.77 = private unnamed_addr constant [33 x i8] c"sadd turn/realm/%s/%s-peer-ip %s\00", align 1, !dbg !618
@.str.78 = private unnamed_addr constant [8 x i8] c"max-bps\00", align 1, !dbg !620
@turn_params = external global %struct._turn_params_, align 8
@.str.79 = private unnamed_addr constant [12 x i8] c"total-quota\00", align 1, !dbg !622
@.str.80 = private unnamed_addr constant [11 x i8] c"user-quota\00", align 1, !dbg !624
@.str.81 = private unnamed_addr constant [21 x i8] c"get turn/realm/%s/%s\00", align 1, !dbg !626
@.str.82 = private unnamed_addr constant [85 x i8] c"hmset turn/oauth/kid/%s ikm_key %s as_rs_alg %s timestamp %llu lifetime %lu realm %s\00", align 1, !dbg !628
@.str.83 = private unnamed_addr constant [26 x i8] c"hgetall turn/oauth/kid/%s\00", align 1, !dbg !633
@.str.84 = private unnamed_addr constant [10 x i8] c"as_rs_alg\00", align 1, !dbg !635
@.str.85 = private unnamed_addr constant [6 x i8] c"realm\00", align 1, !dbg !637
@.str.86 = private unnamed_addr constant [8 x i8] c"ikm_key\00", align 1, !dbg !639
@.str.87 = private unnamed_addr constant [10 x i8] c"timestamp\00", align 1, !dbg !641
@.str.88 = private unnamed_addr constant [9 x i8] c"lifetime\00", align 1, !dbg !643
@.str.89 = private unnamed_addr constant [22 x i8] c"del turn/oauth/kid/%s\00", align 1, !dbg !645
@.str.90 = private unnamed_addr constant [22 x i8] c"keys turn/oauth/kid/*\00", align 1, !dbg !647
@.str.91 = private unnamed_addr constant [5 x i8] c"%llu\00", align 1, !dbg !649
@.str.92 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1, !dbg !651
@.str.93 = private unnamed_addr constant [76 x i8] c"  kid=%s, ikm_key=%s, timestamp=%llu, lifetime=%lu, as_rs_alg=%s, realm=%s\0A\00", align 1, !dbg !653
@.str.94 = private unnamed_addr constant [27 x i8] c"hgetall turn/admin_user/%s\00", align 1, !dbg !658
@.str.95 = private unnamed_addr constant [46 x i8] c"hmset turn/admin_user/%s realm %s password %s\00", align 1, !dbg !663
@.str.96 = private unnamed_addr constant [37 x i8] c"hmset turn/admin_user/%s password %s\00", align 1, !dbg !668
@.str.97 = private unnamed_addr constant [23 x i8] c"del turn/admin_user/%s\00", align 1, !dbg !673
@.str.98 = private unnamed_addr constant [23 x i8] c"keys turn/admin_user/*\00", align 1, !dbg !678
@.str.99 = private unnamed_addr constant [30 x i8] c"Redis connection was closed.\0A\00", align 1, !dbg !680

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @get_redis_async_connection(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !690 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca [256 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.timeval, align 8
  %16 = alloca ptr, align 8
  %17 = alloca %struct._secrets_list, align 8
  %18 = alloca i64, align 8
  %19 = alloca [513 x i8], align 16
  %20 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !697, metadata !DIExpression()), !dbg !698
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !699, metadata !DIExpression()), !dbg !700
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !701, metadata !DIExpression()), !dbg !702
  call void @llvm.dbg.declare(metadata ptr %7, metadata !703, metadata !DIExpression()), !dbg !704
  store ptr null, ptr %7, align 8, !dbg !704
  call void @llvm.dbg.declare(metadata ptr %8, metadata !705, metadata !DIExpression()), !dbg !706
  store ptr null, ptr %8, align 8, !dbg !706
  %21 = load ptr, ptr %4, align 8, !dbg !707
  %22 = icmp ne ptr %21, null, !dbg !707
  br i1 %22, label %23, label %267, !dbg !709

23:                                               ; preds = %3
  %24 = load ptr, ptr %5, align 8, !dbg !710
  %25 = icmp ne ptr %24, null, !dbg !710
  br i1 %25, label %26, label %267, !dbg !711

26:                                               ; preds = %23
  %27 = load ptr, ptr %5, align 8, !dbg !712
  %28 = getelementptr inbounds i8, ptr %27, i64 0, !dbg !712
  %29 = load i8, ptr %28, align 1, !dbg !712
  %30 = sext i8 %29 to i32, !dbg !712
  %31 = icmp ne i32 %30, 0, !dbg !712
  br i1 %31, label %32, label %267, !dbg !713

32:                                               ; preds = %26
  call void @llvm.dbg.declare(metadata ptr %9, metadata !714, metadata !DIExpression()), !dbg !716
  %33 = load ptr, ptr %5, align 8, !dbg !717
  %34 = call ptr @RyconninfoParse(ptr noundef %33, ptr noundef %8), !dbg !718
  store ptr %34, ptr %9, align 8, !dbg !716
  %35 = load ptr, ptr %9, align 8, !dbg !719
  %36 = icmp ne ptr %35, null, !dbg !719
  br i1 %36, label %47, label %37, !dbg !721

37:                                               ; preds = %32
  %38 = load ptr, ptr %8, align 8, !dbg !722
  %39 = icmp ne ptr %38, null, !dbg !722
  br i1 %39, label %40, label %44, !dbg !725

40:                                               ; preds = %37
  %41 = load ptr, ptr %5, align 8, !dbg !726
  %42 = load ptr, ptr %8, align 8, !dbg !728
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str, ptr noundef %41, ptr noundef %42), !dbg !729
  %43 = load ptr, ptr %8, align 8, !dbg !730
  call void @free(ptr noundef %43) #7, !dbg !731
  br label %46, !dbg !732

44:                                               ; preds = %37
  %45 = load ptr, ptr %5, align 8, !dbg !733
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.1, ptr noundef %45), !dbg !735
  br label %46

46:                                               ; preds = %44, %40
  br label %266, !dbg !736

47:                                               ; preds = %32
  %48 = load ptr, ptr %8, align 8, !dbg !737
  %49 = icmp ne ptr %48, null, !dbg !737
  br i1 %49, label %50, label %55, !dbg !739

50:                                               ; preds = %47
  %51 = load ptr, ptr %5, align 8, !dbg !740
  %52 = load ptr, ptr %8, align 8, !dbg !742
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str, ptr noundef %51, ptr noundef %52), !dbg !743
  %53 = load ptr, ptr %8, align 8, !dbg !744
  call void @free(ptr noundef %53) #7, !dbg !745
  %54 = load ptr, ptr %9, align 8, !dbg !746
  call void @RyconninfoFree(ptr noundef %54), !dbg !747
  br label %265, !dbg !748

55:                                               ; preds = %47
  %56 = load i32, ptr %6, align 4, !dbg !749
  %57 = icmp ne i32 %56, 0, !dbg !749
  br i1 %57, label %58, label %234, !dbg !752

58:                                               ; preds = %55
  call void @llvm.dbg.declare(metadata ptr %10, metadata !753, metadata !DIExpression()), !dbg !755
  store ptr null, ptr %10, align 8, !dbg !755
  call void @llvm.dbg.declare(metadata ptr %11, metadata !756, metadata !DIExpression()), !dbg !760
  call void @llvm.memset.p0.i64(ptr align 16 %11, i8 0, i64 256, i1 false), !dbg !760
  call void @llvm.dbg.declare(metadata ptr %12, metadata !761, metadata !DIExpression()), !dbg !762
  store i32 6379, ptr %12, align 4, !dbg !762
  %59 = load ptr, ptr %9, align 8, !dbg !763
  %60 = getelementptr inbounds %struct._Ryconninfo, ptr %59, i32 0, i32 0, !dbg !765
  %61 = load ptr, ptr %60, align 8, !dbg !765
  %62 = icmp ne ptr %61, null, !dbg !763
  br i1 %62, label %63, label %83, !dbg !766

63:                                               ; preds = %58
  br label %64, !dbg !767

64:                                               ; preds = %63
  %65 = getelementptr inbounds [256 x i8], ptr %11, i64 0, i64 0, !dbg !768
  %66 = load ptr, ptr %9, align 8, !dbg !768
  %67 = getelementptr inbounds %struct._Ryconninfo, ptr %66, i32 0, i32 0, !dbg !768
  %68 = load ptr, ptr %67, align 8, !dbg !768
  %69 = icmp ne ptr %65, %68, !dbg !768
  br i1 %69, label %70, label %81, !dbg !771

70:                                               ; preds = %64
  call void @llvm.dbg.declare(metadata ptr %13, metadata !772, metadata !DIExpression()), !dbg !776
  store i64 256, ptr %13, align 8, !dbg !776
  %71 = getelementptr inbounds [256 x i8], ptr %11, i64 0, i64 0, !dbg !776
  %72 = load ptr, ptr %9, align 8, !dbg !776
  %73 = getelementptr inbounds %struct._Ryconninfo, ptr %72, i32 0, i32 0, !dbg !776
  %74 = load ptr, ptr %73, align 8, !dbg !776
  %75 = load i64, ptr %13, align 8, !dbg !776
  %76 = call ptr @strncpy(ptr noundef %71, ptr noundef %74, i64 noundef %75) #7, !dbg !776
  %77 = getelementptr inbounds [256 x i8], ptr %11, i64 0, i64 0, !dbg !776
  %78 = load i64, ptr %13, align 8, !dbg !776
  %79 = sub i64 %78, 1, !dbg !776
  %80 = getelementptr inbounds i8, ptr %77, i64 %79, !dbg !776
  store i8 0, ptr %80, align 1, !dbg !776
  br label %81, !dbg !777

81:                                               ; preds = %70, %64
  br label %82, !dbg !771

82:                                               ; preds = %81
  br label %83, !dbg !771

83:                                               ; preds = %82, %58
  %84 = getelementptr inbounds [256 x i8], ptr %11, i64 0, i64 0, !dbg !778
  %85 = load i8, ptr %84, align 16, !dbg !778
  %86 = icmp ne i8 %85, 0, !dbg !778
  br i1 %86, label %101, label %87, !dbg !780

87:                                               ; preds = %83
  br label %88, !dbg !781

88:                                               ; preds = %87
  %89 = getelementptr inbounds [256 x i8], ptr %11, i64 0, i64 0, !dbg !782
  %90 = icmp ne ptr %89, @.str.2, !dbg !782
  br i1 %90, label %91, label %99, !dbg !785

91:                                               ; preds = %88
  call void @llvm.dbg.declare(metadata ptr %14, metadata !786, metadata !DIExpression()), !dbg !790
  store i64 256, ptr %14, align 8, !dbg !790
  %92 = getelementptr inbounds [256 x i8], ptr %11, i64 0, i64 0, !dbg !790
  %93 = load i64, ptr %14, align 8, !dbg !790
  %94 = call ptr @strncpy(ptr noundef %92, ptr noundef @.str.2, i64 noundef %93) #7, !dbg !790
  %95 = getelementptr inbounds [256 x i8], ptr %11, i64 0, i64 0, !dbg !790
  %96 = load i64, ptr %14, align 8, !dbg !790
  %97 = sub i64 %96, 1, !dbg !790
  %98 = getelementptr inbounds i8, ptr %95, i64 %97, !dbg !790
  store i8 0, ptr %98, align 1, !dbg !790
  br label %99, !dbg !791

99:                                               ; preds = %91, %88
  br label %100, !dbg !785

100:                                              ; preds = %99
  br label %101, !dbg !785

101:                                              ; preds = %100, %83
  %102 = load ptr, ptr %9, align 8, !dbg !792
  %103 = getelementptr inbounds %struct._Ryconninfo, ptr %102, i32 0, i32 4, !dbg !794
  %104 = load i32, ptr %103, align 4, !dbg !794
  %105 = icmp ne i32 %104, 0, !dbg !792
  br i1 %105, label %106, label %110, !dbg !795

106:                                              ; preds = %101
  %107 = load ptr, ptr %9, align 8, !dbg !796
  %108 = getelementptr inbounds %struct._Ryconninfo, ptr %107, i32 0, i32 4, !dbg !797
  %109 = load i32, ptr %108, align 4, !dbg !797
  store i32 %109, ptr %12, align 4, !dbg !798
  br label %110, !dbg !799

110:                                              ; preds = %106, %101
  %111 = load ptr, ptr %9, align 8, !dbg !800
  %112 = getelementptr inbounds %struct._Ryconninfo, ptr %111, i32 0, i32 3, !dbg !802
  %113 = load i32, ptr %112, align 8, !dbg !802
  %114 = icmp ne i32 %113, 0, !dbg !800
  br i1 %114, label %115, label %129, !dbg !803

115:                                              ; preds = %110
  call void @llvm.dbg.declare(metadata ptr %15, metadata !804, metadata !DIExpression()), !dbg !806
  %116 = getelementptr inbounds %struct.timeval, ptr %15, i32 0, i32 1, !dbg !807
  store i64 0, ptr %116, align 8, !dbg !808
  %117 = load ptr, ptr %9, align 8, !dbg !809
  %118 = getelementptr inbounds %struct._Ryconninfo, ptr %117, i32 0, i32 3, !dbg !810
  %119 = load i32, ptr %118, align 8, !dbg !810
  %120 = zext i32 %119 to i64, !dbg !811
  %121 = getelementptr inbounds %struct.timeval, ptr %15, i32 0, i32 0, !dbg !812
  store i64 %120, ptr %121, align 8, !dbg !813
  %122 = getelementptr inbounds [256 x i8], ptr %11, i64 0, i64 0, !dbg !814
  %123 = load i32, ptr %12, align 4, !dbg !815
  %124 = getelementptr inbounds { i64, i64 }, ptr %15, i32 0, i32 0, !dbg !816
  %125 = load i64, ptr %124, align 8, !dbg !816
  %126 = getelementptr inbounds { i64, i64 }, ptr %15, i32 0, i32 1, !dbg !816
  %127 = load i64, ptr %126, align 8, !dbg !816
  %128 = call ptr @redisConnectWithTimeout(ptr noundef %122, i32 noundef %123, i64 %125, i64 %127), !dbg !816
  store ptr %128, ptr %10, align 8, !dbg !817
  br label %133, !dbg !818

129:                                              ; preds = %110
  %130 = getelementptr inbounds [256 x i8], ptr %11, i64 0, i64 0, !dbg !819
  %131 = load i32, ptr %12, align 4, !dbg !821
  %132 = call ptr @redisConnect(ptr noundef %130, i32 noundef %131), !dbg !822
  store ptr %132, ptr %10, align 8, !dbg !823
  br label %133

133:                                              ; preds = %129, %115
  %134 = load ptr, ptr %10, align 8, !dbg !824
  %135 = icmp ne ptr %134, null, !dbg !824
  br i1 %135, label %137, label %136, !dbg !826

136:                                              ; preds = %133
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.3), !dbg !827
  br label %233, !dbg !829

137:                                              ; preds = %133
  %138 = load ptr, ptr %9, align 8, !dbg !830
  %139 = getelementptr inbounds %struct._Ryconninfo, ptr %138, i32 0, i32 2, !dbg !833
  %140 = load ptr, ptr %139, align 8, !dbg !833
  %141 = icmp ne ptr %140, null, !dbg !830
  br i1 %141, label %142, label %148, !dbg !834

142:                                              ; preds = %137
  %143 = load ptr, ptr %10, align 8, !dbg !835
  %144 = load ptr, ptr %9, align 8, !dbg !837
  %145 = getelementptr inbounds %struct._Ryconninfo, ptr %144, i32 0, i32 2, !dbg !838
  %146 = load ptr, ptr %145, align 8, !dbg !838
  %147 = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %143, ptr noundef @.str.4, ptr noundef %146), !dbg !839
  call void @turnFreeRedisReply(ptr noundef %147), !dbg !840
  br label %148, !dbg !841

148:                                              ; preds = %142, %137
  %149 = load ptr, ptr %9, align 8, !dbg !842
  %150 = getelementptr inbounds %struct._Ryconninfo, ptr %149, i32 0, i32 1, !dbg !844
  %151 = load ptr, ptr %150, align 8, !dbg !844
  %152 = icmp ne ptr %151, null, !dbg !842
  br i1 %152, label %153, label %159, !dbg !845

153:                                              ; preds = %148
  %154 = load ptr, ptr %10, align 8, !dbg !846
  %155 = load ptr, ptr %9, align 8, !dbg !848
  %156 = getelementptr inbounds %struct._Ryconninfo, ptr %155, i32 0, i32 1, !dbg !849
  %157 = load ptr, ptr %156, align 8, !dbg !849
  %158 = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %154, ptr noundef @.str.5, ptr noundef %157), !dbg !850
  call void @turnFreeRedisReply(ptr noundef %158), !dbg !851
  br label %159, !dbg !852

159:                                              ; preds = %153, %148
  call void @llvm.dbg.declare(metadata ptr %16, metadata !853, metadata !DIExpression()), !dbg !855
  %160 = load ptr, ptr %10, align 8, !dbg !856
  %161 = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %160, ptr noundef @.str.6), !dbg !857
  store ptr %161, ptr %16, align 8, !dbg !855
  %162 = load ptr, ptr %16, align 8, !dbg !858
  %163 = icmp ne ptr %162, null, !dbg !858
  br i1 %163, label %164, label %231, !dbg !860

164:                                              ; preds = %159
  call void @llvm.dbg.declare(metadata ptr %17, metadata !861, metadata !DIExpression()), !dbg !863
  call void @llvm.dbg.declare(metadata ptr %18, metadata !864, metadata !DIExpression()), !dbg !865
  store i64 0, ptr %18, align 8, !dbg !865
  call void @llvm.dbg.declare(metadata ptr %19, metadata !866, metadata !DIExpression()), !dbg !867
  call void @init_secrets_list(ptr noundef %17), !dbg !868
  %165 = load ptr, ptr %16, align 8, !dbg !869
  %166 = getelementptr inbounds %struct.redisReply, ptr %165, i32 0, i32 0, !dbg !871
  %167 = load i32, ptr %166, align 8, !dbg !871
  %168 = icmp eq i32 %167, 6, !dbg !872
  br i1 %168, label %169, label %173, !dbg !873

169:                                              ; preds = %164
  %170 = load ptr, ptr %16, align 8, !dbg !874
  %171 = getelementptr inbounds %struct.redisReply, ptr %170, i32 0, i32 3, !dbg !876
  %172 = load ptr, ptr %171, align 8, !dbg !876
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.7, ptr noundef %172), !dbg !877
  br label %209, !dbg !878

173:                                              ; preds = %164
  %174 = load ptr, ptr %16, align 8, !dbg !879
  %175 = getelementptr inbounds %struct.redisReply, ptr %174, i32 0, i32 0, !dbg !881
  %176 = load i32, ptr %175, align 8, !dbg !881
  %177 = icmp ne i32 %176, 2, !dbg !882
  br i1 %177, label %178, label %188, !dbg !883

178:                                              ; preds = %173
  %179 = load ptr, ptr %16, align 8, !dbg !884
  %180 = getelementptr inbounds %struct.redisReply, ptr %179, i32 0, i32 0, !dbg !887
  %181 = load i32, ptr %180, align 8, !dbg !887
  %182 = icmp ne i32 %181, 4, !dbg !888
  br i1 %182, label %183, label %187, !dbg !889

183:                                              ; preds = %178
  %184 = load ptr, ptr %16, align 8, !dbg !890
  %185 = getelementptr inbounds %struct.redisReply, ptr %184, i32 0, i32 0, !dbg !891
  %186 = load i32, ptr %185, align 8, !dbg !891
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.8, i32 noundef %186), !dbg !892
  br label %187, !dbg !892

187:                                              ; preds = %183, %178
  br label %208, !dbg !893

188:                                              ; preds = %173
  call void @llvm.dbg.declare(metadata ptr %20, metadata !894, metadata !DIExpression()), !dbg !896
  store i64 0, ptr %20, align 8, !dbg !897
  br label %189, !dbg !899

189:                                              ; preds = %204, %188
  %190 = load i64, ptr %20, align 8, !dbg !900
  %191 = load ptr, ptr %16, align 8, !dbg !902
  %192 = getelementptr inbounds %struct.redisReply, ptr %191, i32 0, i32 4, !dbg !903
  %193 = load i64, ptr %192, align 8, !dbg !903
  %194 = icmp ult i64 %190, %193, !dbg !904
  br i1 %194, label %195, label %207, !dbg !905

195:                                              ; preds = %189
  %196 = load ptr, ptr %16, align 8, !dbg !906
  %197 = getelementptr inbounds %struct.redisReply, ptr %196, i32 0, i32 5, !dbg !908
  %198 = load ptr, ptr %197, align 8, !dbg !908
  %199 = load i64, ptr %20, align 8, !dbg !909
  %200 = getelementptr inbounds ptr, ptr %198, i64 %199, !dbg !906
  %201 = load ptr, ptr %200, align 8, !dbg !906
  %202 = getelementptr inbounds %struct.redisReply, ptr %201, i32 0, i32 3, !dbg !910
  %203 = load ptr, ptr %202, align 8, !dbg !910
  call void @add_to_secrets_list(ptr noundef %17, ptr noundef %203), !dbg !911
  br label %204, !dbg !912

204:                                              ; preds = %195
  %205 = load i64, ptr %20, align 8, !dbg !913
  %206 = add i64 %205, 1, !dbg !913
  store i64 %206, ptr %20, align 8, !dbg !913
  br label %189, !dbg !914, !llvm.loop !915

207:                                              ; preds = %189
  br label %208

208:                                              ; preds = %207, %187
  br label %209

209:                                              ; preds = %208, %169
  store i64 0, ptr %18, align 8, !dbg !918
  br label %210, !dbg !920

210:                                              ; preds = %226, %209
  %211 = load i64, ptr %18, align 8, !dbg !921
  %212 = getelementptr inbounds %struct._secrets_list, ptr %17, i32 0, i32 1, !dbg !923
  %213 = load i64, ptr %212, align 8, !dbg !923
  %214 = icmp ult i64 %211, %213, !dbg !924
  br i1 %214, label %215, label %229, !dbg !925

215:                                              ; preds = %210
  %216 = getelementptr inbounds [513 x i8], ptr %19, i64 0, i64 0, !dbg !926
  %217 = getelementptr inbounds %struct._secrets_list, ptr %17, i32 0, i32 0, !dbg !928
  %218 = load ptr, ptr %217, align 8, !dbg !928
  %219 = load i64, ptr %18, align 8, !dbg !929
  %220 = getelementptr inbounds ptr, ptr %218, i64 %219, !dbg !930
  %221 = load ptr, ptr %220, align 8, !dbg !930
  %222 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %216, i64 noundef 513, ptr noundef @.str.9, ptr noundef %221) #7, !dbg !931
  %223 = load ptr, ptr %10, align 8, !dbg !932
  %224 = getelementptr inbounds [513 x i8], ptr %19, i64 0, i64 0, !dbg !933
  %225 = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %223, ptr noundef %224), !dbg !934
  call void @turnFreeRedisReply(ptr noundef %225), !dbg !935
  br label %226, !dbg !936

226:                                              ; preds = %215
  %227 = load i64, ptr %18, align 8, !dbg !937
  %228 = add i64 %227, 1, !dbg !937
  store i64 %228, ptr %18, align 8, !dbg !937
  br label %210, !dbg !938, !llvm.loop !939

229:                                              ; preds = %210
  call void @clean_secrets_list(ptr noundef %17), !dbg !941
  %230 = load ptr, ptr %16, align 8, !dbg !942
  call void @turnFreeRedisReply(ptr noundef %230), !dbg !943
  br label %231, !dbg !944

231:                                              ; preds = %229, %159
  %232 = load ptr, ptr %10, align 8, !dbg !945
  call void @redisFree(ptr noundef %232), !dbg !946
  br label %233

233:                                              ; preds = %231, %136
  br label %234, !dbg !947

234:                                              ; preds = %233, %55
  %235 = load ptr, ptr %4, align 8, !dbg !948
  %236 = load ptr, ptr %9, align 8, !dbg !949
  %237 = getelementptr inbounds %struct._Ryconninfo, ptr %236, i32 0, i32 0, !dbg !950
  %238 = load ptr, ptr %237, align 8, !dbg !950
  %239 = load ptr, ptr %9, align 8, !dbg !951
  %240 = getelementptr inbounds %struct._Ryconninfo, ptr %239, i32 0, i32 4, !dbg !952
  %241 = load i32, ptr %240, align 4, !dbg !952
  %242 = load ptr, ptr %9, align 8, !dbg !953
  %243 = getelementptr inbounds %struct._Ryconninfo, ptr %242, i32 0, i32 2, !dbg !954
  %244 = load ptr, ptr %243, align 8, !dbg !954
  %245 = load ptr, ptr %9, align 8, !dbg !955
  %246 = getelementptr inbounds %struct._Ryconninfo, ptr %245, i32 0, i32 1, !dbg !956
  %247 = load ptr, ptr %246, align 8, !dbg !956
  %248 = call i32 @atoi(ptr noundef %247) #8, !dbg !957
  %249 = call ptr @redisLibeventAttach(ptr noundef %235, ptr noundef %238, i32 noundef %241, ptr noundef %244, i32 noundef %248), !dbg !958
  store ptr %249, ptr %7, align 8, !dbg !959
  %250 = load ptr, ptr %7, align 8, !dbg !960
  %251 = icmp ne ptr %250, null, !dbg !960
  br i1 %251, label %253, label %252, !dbg !962

252:                                              ; preds = %234
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.10), !dbg !963
  br label %263, !dbg !965

253:                                              ; preds = %234
  %254 = load ptr, ptr %7, align 8, !dbg !966
  %255 = call i32 @is_redis_asyncconn_good(ptr noundef %254), !dbg !968
  %256 = icmp ne i32 %255, 0, !dbg !968
  br i1 %256, label %257, label %262, !dbg !969

257:                                              ; preds = %253
  %258 = load i32, ptr @donot_print_connection_success, align 4, !dbg !970
  %259 = icmp ne i32 %258, 0, !dbg !970
  br i1 %259, label %262, label %260, !dbg !971

260:                                              ; preds = %257
  %261 = load ptr, ptr %5, align 8, !dbg !972
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.11, ptr noundef %261), !dbg !974
  store i32 1, ptr @donot_print_connection_success, align 4, !dbg !975
  br label %262, !dbg !976

262:                                              ; preds = %260, %257, %253
  br label %263

263:                                              ; preds = %262, %252
  %264 = load ptr, ptr %9, align 8, !dbg !977
  call void @RyconninfoFree(ptr noundef %264), !dbg !978
  br label %265

265:                                              ; preds = %263, %50
  br label %266

266:                                              ; preds = %265, %46
  br label %267, !dbg !979

267:                                              ; preds = %266, %26, %23, %3
  %268 = load ptr, ptr %7, align 8, !dbg !980
  ret ptr %268, !dbg !981
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @RyconninfoParse(ptr noundef %0, ptr noundef %1) #0 !dbg !982 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !985, metadata !DIExpression()), !dbg !986
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !987, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.declare(metadata ptr %5, metadata !989, metadata !DIExpression()), !dbg !990
  %10 = call noalias ptr @malloc(i64 noundef 32) #9, !dbg !991
  store ptr %10, ptr %5, align 8, !dbg !990
  %11 = load ptr, ptr %5, align 8, !dbg !992
  call void @llvm.memset.p0.i64(ptr align 8 %11, i8 0, i64 32, i1 false), !dbg !993
  %12 = load ptr, ptr %3, align 8, !dbg !994
  %13 = icmp ne ptr %12, null, !dbg !994
  br i1 %13, label %14, label %280, !dbg !996

14:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %6, metadata !997, metadata !DIExpression()), !dbg !999
  %15 = load ptr, ptr %3, align 8, !dbg !1000
  %16 = call noalias ptr @strdup(ptr noundef %15) #7, !dbg !1001
  store ptr %16, ptr %6, align 8, !dbg !999
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1002, metadata !DIExpression()), !dbg !1003
  %17 = load ptr, ptr %6, align 8, !dbg !1004
  store ptr %17, ptr %7, align 8, !dbg !1003
  br label %18, !dbg !1005

18:                                               ; preds = %276, %14
  %19 = load ptr, ptr %7, align 8, !dbg !1006
  %20 = icmp ne ptr %19, null, !dbg !1006
  br i1 %20, label %21, label %26, !dbg !1007

21:                                               ; preds = %18
  %22 = load ptr, ptr %7, align 8, !dbg !1008
  %23 = load i8, ptr %22, align 1, !dbg !1009
  %24 = sext i8 %23 to i32, !dbg !1009
  %25 = icmp ne i32 %24, 0, !dbg !1007
  br label %26

26:                                               ; preds = %21, %18
  %27 = phi i1 [ false, %18 ], [ %25, %21 ], !dbg !1010
  br i1 %27, label %28, label %278, !dbg !1005

28:                                               ; preds = %26
  br label %29, !dbg !1011

29:                                               ; preds = %41, %28
  %30 = load ptr, ptr %7, align 8, !dbg !1013
  %31 = load i8, ptr %30, align 1, !dbg !1014
  %32 = sext i8 %31 to i32, !dbg !1014
  %33 = icmp ne i32 %32, 0, !dbg !1014
  br i1 %33, label %34, label %39, !dbg !1015

34:                                               ; preds = %29
  %35 = load ptr, ptr %7, align 8, !dbg !1016
  %36 = load i8, ptr %35, align 1, !dbg !1017
  %37 = sext i8 %36 to i32, !dbg !1017
  %38 = icmp eq i32 %37, 32, !dbg !1018
  br label %39

39:                                               ; preds = %34, %29
  %40 = phi i1 [ false, %29 ], [ %38, %34 ], !dbg !1019
  br i1 %40, label %41, label %44, !dbg !1011

41:                                               ; preds = %39
  %42 = load ptr, ptr %7, align 8, !dbg !1020
  %43 = getelementptr inbounds i8, ptr %42, i32 1, !dbg !1020
  store ptr %43, ptr %7, align 8, !dbg !1020
  br label %29, !dbg !1011, !llvm.loop !1021

44:                                               ; preds = %39
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1023, metadata !DIExpression()), !dbg !1024
  %45 = load ptr, ptr %7, align 8, !dbg !1025
  %46 = call ptr @strstr(ptr noundef %45, ptr noundef @.str.12) #8, !dbg !1026
  store ptr %46, ptr %8, align 8, !dbg !1024
  %47 = load ptr, ptr %8, align 8, !dbg !1027
  %48 = icmp ne ptr %47, null, !dbg !1027
  br i1 %48, label %49, label %53, !dbg !1029

49:                                               ; preds = %44
  %50 = load ptr, ptr %8, align 8, !dbg !1030
  store i8 0, ptr %50, align 1, !dbg !1032
  %51 = load ptr, ptr %8, align 8, !dbg !1033
  %52 = getelementptr inbounds i8, ptr %51, i32 1, !dbg !1033
  store ptr %52, ptr %8, align 8, !dbg !1033
  br label %53, !dbg !1034

53:                                               ; preds = %49, %44
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1035, metadata !DIExpression()), !dbg !1036
  %54 = load ptr, ptr %7, align 8, !dbg !1037
  %55 = call ptr @strstr(ptr noundef %54, ptr noundef @.str.13) #8, !dbg !1038
  store ptr %55, ptr %9, align 8, !dbg !1036
  %56 = load ptr, ptr %9, align 8, !dbg !1039
  %57 = icmp ne ptr %56, null, !dbg !1039
  br i1 %57, label %67, label %58, !dbg !1041

58:                                               ; preds = %53
  %59 = load ptr, ptr %5, align 8, !dbg !1042
  call void @RyconninfoFree(ptr noundef %59), !dbg !1044
  store ptr null, ptr %5, align 8, !dbg !1045
  %60 = load ptr, ptr %4, align 8, !dbg !1046
  %61 = icmp ne ptr %60, null, !dbg !1046
  br i1 %61, label %62, label %66, !dbg !1048

62:                                               ; preds = %58
  %63 = load ptr, ptr %7, align 8, !dbg !1049
  %64 = call noalias ptr @strdup(ptr noundef %63) #7, !dbg !1051
  %65 = load ptr, ptr %4, align 8, !dbg !1052
  store ptr %64, ptr %65, align 8, !dbg !1053
  br label %66, !dbg !1054

66:                                               ; preds = %62, %58
  br label %278, !dbg !1055

67:                                               ; preds = %53
  %68 = load ptr, ptr %9, align 8, !dbg !1056
  store i8 0, ptr %68, align 1, !dbg !1057
  %69 = load ptr, ptr %7, align 8, !dbg !1058
  %70 = call i32 @strcmp(ptr noundef %69, ptr noundef @.str.14) #8, !dbg !1060
  %71 = icmp ne i32 %70, 0, !dbg !1060
  br i1 %71, label %78, label %72, !dbg !1061

72:                                               ; preds = %67
  %73 = load ptr, ptr %9, align 8, !dbg !1062
  %74 = getelementptr inbounds i8, ptr %73, i64 1, !dbg !1063
  %75 = call noalias ptr @strdup(ptr noundef %74) #7, !dbg !1064
  %76 = load ptr, ptr %5, align 8, !dbg !1065
  %77 = getelementptr inbounds %struct._Ryconninfo, ptr %76, i32 0, i32 0, !dbg !1066
  store ptr %75, ptr %77, align 8, !dbg !1067
  br label %276, !dbg !1065

78:                                               ; preds = %67
  %79 = load ptr, ptr %7, align 8, !dbg !1068
  %80 = call i32 @strcmp(ptr noundef %79, ptr noundef @.str.15) #8, !dbg !1070
  %81 = icmp ne i32 %80, 0, !dbg !1070
  br i1 %81, label %88, label %82, !dbg !1071

82:                                               ; preds = %78
  %83 = load ptr, ptr %9, align 8, !dbg !1072
  %84 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !1073
  %85 = call noalias ptr @strdup(ptr noundef %84) #7, !dbg !1074
  %86 = load ptr, ptr %5, align 8, !dbg !1075
  %87 = getelementptr inbounds %struct._Ryconninfo, ptr %86, i32 0, i32 0, !dbg !1076
  store ptr %85, ptr %87, align 8, !dbg !1077
  br label %275, !dbg !1075

88:                                               ; preds = %78
  %89 = load ptr, ptr %7, align 8, !dbg !1078
  %90 = call i32 @strcmp(ptr noundef %89, ptr noundef @.str.16) #8, !dbg !1080
  %91 = icmp ne i32 %90, 0, !dbg !1080
  br i1 %91, label %98, label %92, !dbg !1081

92:                                               ; preds = %88
  %93 = load ptr, ptr %9, align 8, !dbg !1082
  %94 = getelementptr inbounds i8, ptr %93, i64 1, !dbg !1083
  %95 = call noalias ptr @strdup(ptr noundef %94) #7, !dbg !1084
  %96 = load ptr, ptr %5, align 8, !dbg !1085
  %97 = getelementptr inbounds %struct._Ryconninfo, ptr %96, i32 0, i32 0, !dbg !1086
  store ptr %95, ptr %97, align 8, !dbg !1087
  br label %274, !dbg !1085

98:                                               ; preds = %88
  %99 = load ptr, ptr %7, align 8, !dbg !1088
  %100 = call i32 @strcmp(ptr noundef %99, ptr noundef @.str.17) #8, !dbg !1090
  %101 = icmp ne i32 %100, 0, !dbg !1090
  br i1 %101, label %108, label %102, !dbg !1091

102:                                              ; preds = %98
  %103 = load ptr, ptr %9, align 8, !dbg !1092
  %104 = getelementptr inbounds i8, ptr %103, i64 1, !dbg !1093
  %105 = call noalias ptr @strdup(ptr noundef %104) #7, !dbg !1094
  %106 = load ptr, ptr %5, align 8, !dbg !1095
  %107 = getelementptr inbounds %struct._Ryconninfo, ptr %106, i32 0, i32 0, !dbg !1096
  store ptr %105, ptr %107, align 8, !dbg !1097
  br label %273, !dbg !1095

108:                                              ; preds = %98
  %109 = load ptr, ptr %7, align 8, !dbg !1098
  %110 = call i32 @strcmp(ptr noundef %109, ptr noundef @.str.18) #8, !dbg !1100
  %111 = icmp ne i32 %110, 0, !dbg !1100
  br i1 %111, label %118, label %112, !dbg !1101

112:                                              ; preds = %108
  %113 = load ptr, ptr %9, align 8, !dbg !1102
  %114 = getelementptr inbounds i8, ptr %113, i64 1, !dbg !1103
  %115 = call noalias ptr @strdup(ptr noundef %114) #7, !dbg !1104
  %116 = load ptr, ptr %5, align 8, !dbg !1105
  %117 = getelementptr inbounds %struct._Ryconninfo, ptr %116, i32 0, i32 0, !dbg !1106
  store ptr %115, ptr %117, align 8, !dbg !1107
  br label %272, !dbg !1105

118:                                              ; preds = %108
  %119 = load ptr, ptr %7, align 8, !dbg !1108
  %120 = call i32 @strcmp(ptr noundef %119, ptr noundef @.str.19) #8, !dbg !1110
  %121 = icmp ne i32 %120, 0, !dbg !1110
  br i1 %121, label %128, label %122, !dbg !1111

122:                                              ; preds = %118
  %123 = load ptr, ptr %9, align 8, !dbg !1112
  %124 = getelementptr inbounds i8, ptr %123, i64 1, !dbg !1113
  %125 = call noalias ptr @strdup(ptr noundef %124) #7, !dbg !1114
  %126 = load ptr, ptr %5, align 8, !dbg !1115
  %127 = getelementptr inbounds %struct._Ryconninfo, ptr %126, i32 0, i32 1, !dbg !1116
  store ptr %125, ptr %127, align 8, !dbg !1117
  br label %271, !dbg !1115

128:                                              ; preds = %118
  %129 = load ptr, ptr %7, align 8, !dbg !1118
  %130 = call i32 @strcmp(ptr noundef %129, ptr noundef @.str.20) #8, !dbg !1120
  %131 = icmp ne i32 %130, 0, !dbg !1120
  br i1 %131, label %138, label %132, !dbg !1121

132:                                              ; preds = %128
  %133 = load ptr, ptr %9, align 8, !dbg !1122
  %134 = getelementptr inbounds i8, ptr %133, i64 1, !dbg !1123
  %135 = call noalias ptr @strdup(ptr noundef %134) #7, !dbg !1124
  %136 = load ptr, ptr %5, align 8, !dbg !1125
  %137 = getelementptr inbounds %struct._Ryconninfo, ptr %136, i32 0, i32 1, !dbg !1126
  store ptr %135, ptr %137, align 8, !dbg !1127
  br label %270, !dbg !1125

138:                                              ; preds = %128
  %139 = load ptr, ptr %7, align 8, !dbg !1128
  %140 = call i32 @strcmp(ptr noundef %139, ptr noundef @.str.21) #8, !dbg !1130
  %141 = icmp ne i32 %140, 0, !dbg !1130
  br i1 %141, label %148, label %142, !dbg !1131

142:                                              ; preds = %138
  %143 = load ptr, ptr %9, align 8, !dbg !1132
  %144 = getelementptr inbounds i8, ptr %143, i64 1, !dbg !1133
  %145 = call noalias ptr @strdup(ptr noundef %144) #7, !dbg !1134
  %146 = load ptr, ptr %5, align 8, !dbg !1135
  %147 = getelementptr inbounds %struct._Ryconninfo, ptr %146, i32 0, i32 1, !dbg !1136
  store ptr %145, ptr %147, align 8, !dbg !1137
  br label %269, !dbg !1135

148:                                              ; preds = %138
  %149 = load ptr, ptr %7, align 8, !dbg !1138
  %150 = call i32 @strcmp(ptr noundef %149, ptr noundef @.str.22) #8, !dbg !1140
  %151 = icmp ne i32 %150, 0, !dbg !1140
  br i1 %151, label %153, label %152, !dbg !1141

152:                                              ; preds = %148
  br label %268, !dbg !1141

153:                                              ; preds = %148
  %154 = load ptr, ptr %7, align 8, !dbg !1142
  %155 = call i32 @strcmp(ptr noundef %154, ptr noundef @.str.23) #8, !dbg !1144
  %156 = icmp ne i32 %155, 0, !dbg !1144
  br i1 %156, label %158, label %157, !dbg !1145

157:                                              ; preds = %153
  br label %267, !dbg !1145

158:                                              ; preds = %153
  %159 = load ptr, ptr %7, align 8, !dbg !1146
  %160 = call i32 @strcmp(ptr noundef %159, ptr noundef @.str.24) #8, !dbg !1148
  %161 = icmp ne i32 %160, 0, !dbg !1148
  br i1 %161, label %163, label %162, !dbg !1149

162:                                              ; preds = %158
  br label %266, !dbg !1149

163:                                              ; preds = %158
  %164 = load ptr, ptr %7, align 8, !dbg !1150
  %165 = call i32 @strcmp(ptr noundef %164, ptr noundef @.str.25) #8, !dbg !1152
  %166 = icmp ne i32 %165, 0, !dbg !1152
  br i1 %166, label %168, label %167, !dbg !1153

167:                                              ; preds = %163
  br label %265, !dbg !1153

168:                                              ; preds = %163
  %169 = load ptr, ptr %7, align 8, !dbg !1154
  %170 = call i32 @strcmp(ptr noundef %169, ptr noundef @.str.26) #8, !dbg !1156
  %171 = icmp ne i32 %170, 0, !dbg !1156
  br i1 %171, label %178, label %172, !dbg !1157

172:                                              ; preds = %168
  %173 = load ptr, ptr %9, align 8, !dbg !1158
  %174 = getelementptr inbounds i8, ptr %173, i64 1, !dbg !1159
  %175 = call noalias ptr @strdup(ptr noundef %174) #7, !dbg !1160
  %176 = load ptr, ptr %5, align 8, !dbg !1161
  %177 = getelementptr inbounds %struct._Ryconninfo, ptr %176, i32 0, i32 2, !dbg !1162
  store ptr %175, ptr %177, align 8, !dbg !1163
  br label %264, !dbg !1161

178:                                              ; preds = %168
  %179 = load ptr, ptr %7, align 8, !dbg !1164
  %180 = call i32 @strcmp(ptr noundef %179, ptr noundef @.str.27) #8, !dbg !1166
  %181 = icmp ne i32 %180, 0, !dbg !1166
  br i1 %181, label %188, label %182, !dbg !1167

182:                                              ; preds = %178
  %183 = load ptr, ptr %9, align 8, !dbg !1168
  %184 = getelementptr inbounds i8, ptr %183, i64 1, !dbg !1169
  %185 = call noalias ptr @strdup(ptr noundef %184) #7, !dbg !1170
  %186 = load ptr, ptr %5, align 8, !dbg !1171
  %187 = getelementptr inbounds %struct._Ryconninfo, ptr %186, i32 0, i32 2, !dbg !1172
  store ptr %185, ptr %187, align 8, !dbg !1173
  br label %263, !dbg !1171

188:                                              ; preds = %178
  %189 = load ptr, ptr %7, align 8, !dbg !1174
  %190 = call i32 @strcmp(ptr noundef %189, ptr noundef @.str.28) #8, !dbg !1176
  %191 = icmp ne i32 %190, 0, !dbg !1176
  br i1 %191, label %198, label %192, !dbg !1177

192:                                              ; preds = %188
  %193 = load ptr, ptr %9, align 8, !dbg !1178
  %194 = getelementptr inbounds i8, ptr %193, i64 1, !dbg !1179
  %195 = call noalias ptr @strdup(ptr noundef %194) #7, !dbg !1180
  %196 = load ptr, ptr %5, align 8, !dbg !1181
  %197 = getelementptr inbounds %struct._Ryconninfo, ptr %196, i32 0, i32 2, !dbg !1182
  store ptr %195, ptr %197, align 8, !dbg !1183
  br label %262, !dbg !1181

198:                                              ; preds = %188
  %199 = load ptr, ptr %7, align 8, !dbg !1184
  %200 = call i32 @strcmp(ptr noundef %199, ptr noundef @.str.29) #8, !dbg !1186
  %201 = icmp ne i32 %200, 0, !dbg !1186
  br i1 %201, label %208, label %202, !dbg !1187

202:                                              ; preds = %198
  %203 = load ptr, ptr %9, align 8, !dbg !1188
  %204 = getelementptr inbounds i8, ptr %203, i64 1, !dbg !1189
  %205 = call noalias ptr @strdup(ptr noundef %204) #7, !dbg !1190
  %206 = load ptr, ptr %5, align 8, !dbg !1191
  %207 = getelementptr inbounds %struct._Ryconninfo, ptr %206, i32 0, i32 2, !dbg !1192
  store ptr %205, ptr %207, align 8, !dbg !1193
  br label %261, !dbg !1191

208:                                              ; preds = %198
  %209 = load ptr, ptr %7, align 8, !dbg !1194
  %210 = call i32 @strcmp(ptr noundef %209, ptr noundef @.str.30) #8, !dbg !1196
  %211 = icmp ne i32 %210, 0, !dbg !1196
  br i1 %211, label %218, label %212, !dbg !1197

212:                                              ; preds = %208
  %213 = load ptr, ptr %9, align 8, !dbg !1198
  %214 = getelementptr inbounds i8, ptr %213, i64 1, !dbg !1199
  %215 = call i32 @atoi(ptr noundef %214) #8, !dbg !1200
  %216 = load ptr, ptr %5, align 8, !dbg !1201
  %217 = getelementptr inbounds %struct._Ryconninfo, ptr %216, i32 0, i32 4, !dbg !1202
  store i32 %215, ptr %217, align 4, !dbg !1203
  br label %260, !dbg !1201

218:                                              ; preds = %208
  %219 = load ptr, ptr %7, align 8, !dbg !1204
  %220 = call i32 @strcmp(ptr noundef %219, ptr noundef @.str.31) #8, !dbg !1206
  %221 = icmp ne i32 %220, 0, !dbg !1206
  br i1 %221, label %228, label %222, !dbg !1207

222:                                              ; preds = %218
  %223 = load ptr, ptr %9, align 8, !dbg !1208
  %224 = getelementptr inbounds i8, ptr %223, i64 1, !dbg !1209
  %225 = call i32 @atoi(ptr noundef %224) #8, !dbg !1210
  %226 = load ptr, ptr %5, align 8, !dbg !1211
  %227 = getelementptr inbounds %struct._Ryconninfo, ptr %226, i32 0, i32 4, !dbg !1212
  store i32 %225, ptr %227, align 4, !dbg !1213
  br label %259, !dbg !1211

228:                                              ; preds = %218
  %229 = load ptr, ptr %7, align 8, !dbg !1214
  %230 = call i32 @strcmp(ptr noundef %229, ptr noundef @.str.32) #8, !dbg !1216
  %231 = icmp ne i32 %230, 0, !dbg !1216
  br i1 %231, label %238, label %232, !dbg !1217

232:                                              ; preds = %228
  %233 = load ptr, ptr %9, align 8, !dbg !1218
  %234 = getelementptr inbounds i8, ptr %233, i64 1, !dbg !1219
  %235 = call i32 @atoi(ptr noundef %234) #8, !dbg !1220
  %236 = load ptr, ptr %5, align 8, !dbg !1221
  %237 = getelementptr inbounds %struct._Ryconninfo, ptr %236, i32 0, i32 3, !dbg !1222
  store i32 %235, ptr %237, align 8, !dbg !1223
  br label %258, !dbg !1221

238:                                              ; preds = %228
  %239 = load ptr, ptr %7, align 8, !dbg !1224
  %240 = call i32 @strcmp(ptr noundef %239, ptr noundef @.str.33) #8, !dbg !1226
  %241 = icmp ne i32 %240, 0, !dbg !1226
  br i1 %241, label %248, label %242, !dbg !1227

242:                                              ; preds = %238
  %243 = load ptr, ptr %9, align 8, !dbg !1228
  %244 = getelementptr inbounds i8, ptr %243, i64 1, !dbg !1229
  %245 = call i32 @atoi(ptr noundef %244) #8, !dbg !1230
  %246 = load ptr, ptr %5, align 8, !dbg !1231
  %247 = getelementptr inbounds %struct._Ryconninfo, ptr %246, i32 0, i32 3, !dbg !1232
  store i32 %245, ptr %247, align 8, !dbg !1233
  br label %257, !dbg !1231

248:                                              ; preds = %238
  %249 = load ptr, ptr %5, align 8, !dbg !1234
  call void @RyconninfoFree(ptr noundef %249), !dbg !1236
  store ptr null, ptr %5, align 8, !dbg !1237
  %250 = load ptr, ptr %4, align 8, !dbg !1238
  %251 = icmp ne ptr %250, null, !dbg !1238
  br i1 %251, label %252, label %256, !dbg !1240

252:                                              ; preds = %248
  %253 = load ptr, ptr %7, align 8, !dbg !1241
  %254 = call noalias ptr @strdup(ptr noundef %253) #7, !dbg !1243
  %255 = load ptr, ptr %4, align 8, !dbg !1244
  store ptr %254, ptr %255, align 8, !dbg !1245
  br label %256, !dbg !1246

256:                                              ; preds = %252, %248
  br label %278, !dbg !1247

257:                                              ; preds = %242
  br label %258

258:                                              ; preds = %257, %232
  br label %259

259:                                              ; preds = %258, %222
  br label %260

260:                                              ; preds = %259, %212
  br label %261

261:                                              ; preds = %260, %202
  br label %262

262:                                              ; preds = %261, %192
  br label %263

263:                                              ; preds = %262, %182
  br label %264

264:                                              ; preds = %263, %172
  br label %265

265:                                              ; preds = %264, %167
  br label %266

266:                                              ; preds = %265, %162
  br label %267

267:                                              ; preds = %266, %157
  br label %268

268:                                              ; preds = %267, %152
  br label %269

269:                                              ; preds = %268, %142
  br label %270

270:                                              ; preds = %269, %132
  br label %271

271:                                              ; preds = %270, %122
  br label %272

272:                                              ; preds = %271, %112
  br label %273

273:                                              ; preds = %272, %102
  br label %274

274:                                              ; preds = %273, %92
  br label %275

275:                                              ; preds = %274, %82
  br label %276

276:                                              ; preds = %275, %72
  %277 = load ptr, ptr %8, align 8, !dbg !1248
  store ptr %277, ptr %7, align 8, !dbg !1249
  br label %18, !dbg !1005, !llvm.loop !1250

278:                                              ; preds = %256, %66, %26
  %279 = load ptr, ptr %6, align 8, !dbg !1252
  call void @free(ptr noundef %279) #7, !dbg !1253
  br label %280, !dbg !1254

280:                                              ; preds = %278, %2
  %281 = load ptr, ptr %5, align 8, !dbg !1255
  %282 = icmp ne ptr %281, null, !dbg !1255
  br i1 %282, label %283, label %311, !dbg !1257

283:                                              ; preds = %280
  %284 = load ptr, ptr %5, align 8, !dbg !1258
  %285 = getelementptr inbounds %struct._Ryconninfo, ptr %284, i32 0, i32 1, !dbg !1261
  %286 = load ptr, ptr %285, align 8, !dbg !1261
  %287 = icmp ne ptr %286, null, !dbg !1262
  br i1 %287, label %292, label %288, !dbg !1263

288:                                              ; preds = %283
  %289 = call noalias ptr @strdup(ptr noundef @.str.34) #7, !dbg !1264
  %290 = load ptr, ptr %5, align 8, !dbg !1265
  %291 = getelementptr inbounds %struct._Ryconninfo, ptr %290, i32 0, i32 1, !dbg !1266
  store ptr %289, ptr %291, align 8, !dbg !1267
  br label %292, !dbg !1265

292:                                              ; preds = %288, %283
  %293 = load ptr, ptr %5, align 8, !dbg !1268
  %294 = getelementptr inbounds %struct._Ryconninfo, ptr %293, i32 0, i32 0, !dbg !1270
  %295 = load ptr, ptr %294, align 8, !dbg !1270
  %296 = icmp ne ptr %295, null, !dbg !1271
  br i1 %296, label %301, label %297, !dbg !1272

297:                                              ; preds = %292
  %298 = call noalias ptr @strdup(ptr noundef @.str.2) #7, !dbg !1273
  %299 = load ptr, ptr %5, align 8, !dbg !1274
  %300 = getelementptr inbounds %struct._Ryconninfo, ptr %299, i32 0, i32 0, !dbg !1275
  store ptr %298, ptr %300, align 8, !dbg !1276
  br label %301, !dbg !1274

301:                                              ; preds = %297, %292
  %302 = load ptr, ptr %5, align 8, !dbg !1277
  %303 = getelementptr inbounds %struct._Ryconninfo, ptr %302, i32 0, i32 2, !dbg !1279
  %304 = load ptr, ptr %303, align 8, !dbg !1279
  %305 = icmp ne ptr %304, null, !dbg !1280
  br i1 %305, label %310, label %306, !dbg !1281

306:                                              ; preds = %301
  %307 = call noalias ptr @strdup(ptr noundef @.str.35) #7, !dbg !1282
  %308 = load ptr, ptr %5, align 8, !dbg !1283
  %309 = getelementptr inbounds %struct._Ryconninfo, ptr %308, i32 0, i32 2, !dbg !1284
  store ptr %307, ptr %309, align 8, !dbg !1285
  br label %310, !dbg !1283

310:                                              ; preds = %306, %301
  br label %311, !dbg !1286

311:                                              ; preds = %310, %280
  %312 = load ptr, ptr %5, align 8, !dbg !1287
  ret ptr %312, !dbg !1288
}

declare void @turn_log_func_default(i32 noundef, ptr noundef, ...) #2

; Function Attrs: nounwind
declare void @free(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RyconninfoFree(ptr noundef %0) #0 !dbg !1289 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1292, metadata !DIExpression()), !dbg !1293
  %3 = load ptr, ptr %2, align 8, !dbg !1294
  %4 = icmp ne ptr %3, null, !dbg !1294
  br i1 %4, label %5, label %34, !dbg !1296

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8, !dbg !1297
  %7 = getelementptr inbounds %struct._Ryconninfo, ptr %6, i32 0, i32 0, !dbg !1300
  %8 = load ptr, ptr %7, align 8, !dbg !1300
  %9 = icmp ne ptr %8, null, !dbg !1297
  br i1 %9, label %10, label %14, !dbg !1301

10:                                               ; preds = %5
  %11 = load ptr, ptr %2, align 8, !dbg !1302
  %12 = getelementptr inbounds %struct._Ryconninfo, ptr %11, i32 0, i32 0, !dbg !1303
  %13 = load ptr, ptr %12, align 8, !dbg !1303
  call void @free(ptr noundef %13) #7, !dbg !1304
  br label %14, !dbg !1304

14:                                               ; preds = %10, %5
  %15 = load ptr, ptr %2, align 8, !dbg !1305
  %16 = getelementptr inbounds %struct._Ryconninfo, ptr %15, i32 0, i32 1, !dbg !1307
  %17 = load ptr, ptr %16, align 8, !dbg !1307
  %18 = icmp ne ptr %17, null, !dbg !1305
  br i1 %18, label %19, label %23, !dbg !1308

19:                                               ; preds = %14
  %20 = load ptr, ptr %2, align 8, !dbg !1309
  %21 = getelementptr inbounds %struct._Ryconninfo, ptr %20, i32 0, i32 1, !dbg !1310
  %22 = load ptr, ptr %21, align 8, !dbg !1310
  call void @free(ptr noundef %22) #7, !dbg !1311
  br label %23, !dbg !1311

23:                                               ; preds = %19, %14
  %24 = load ptr, ptr %2, align 8, !dbg !1312
  %25 = getelementptr inbounds %struct._Ryconninfo, ptr %24, i32 0, i32 2, !dbg !1314
  %26 = load ptr, ptr %25, align 8, !dbg !1314
  %27 = icmp ne ptr %26, null, !dbg !1312
  br i1 %27, label %28, label %32, !dbg !1315

28:                                               ; preds = %23
  %29 = load ptr, ptr %2, align 8, !dbg !1316
  %30 = getelementptr inbounds %struct._Ryconninfo, ptr %29, i32 0, i32 2, !dbg !1317
  %31 = load ptr, ptr %30, align 8, !dbg !1317
  call void @free(ptr noundef %31) #7, !dbg !1318
  br label %32, !dbg !1318

32:                                               ; preds = %28, %23
  %33 = load ptr, ptr %2, align 8, !dbg !1319
  call void @llvm.memset.p0.i64(ptr align 8 %33, i8 0, i64 32, i1 false), !dbg !1320
  br label %34, !dbg !1321

34:                                               ; preds = %32, %1
  ret void, !dbg !1322
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind
declare ptr @strncpy(ptr noundef, ptr noundef, i64 noundef) #3

declare ptr @redisConnectWithTimeout(ptr noundef, i32 noundef, i64, i64) #2

declare ptr @redisConnect(ptr noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @turnFreeRedisReply(ptr noundef %0) #0 !dbg !1323 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1324, metadata !DIExpression()), !dbg !1325
  %3 = load ptr, ptr %2, align 8, !dbg !1326
  %4 = icmp ne ptr %3, null, !dbg !1326
  br i1 %4, label %5, label %7, !dbg !1328

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8, !dbg !1329
  call void @freeReplyObject(ptr noundef %6), !dbg !1331
  br label %7, !dbg !1332

7:                                                ; preds = %5, %1
  ret void, !dbg !1333
}

declare ptr @redisCommand(ptr noundef, ptr noundef, ...) #2

declare void @init_secrets_list(ptr noundef) #2

declare void @add_to_secrets_list(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #3

declare void @clean_secrets_list(ptr noundef) #2

declare void @redisFree(ptr noundef) #2

declare ptr @redisLibeventAttach(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i32 @atoi(ptr noundef) #5

declare i32 @is_redis_asyncconn_good(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @get_redis_dbdriver() #0 !dbg !1334 {
  ret ptr @driver, !dbg !1338
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #6

; Function Attrs: nounwind
declare noalias ptr @strdup(ptr noundef) #3

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strstr(ptr noundef, ptr noundef) #5

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #5

declare void @freeReplyObject(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @redis_get_auth_secrets(ptr noundef %0, ptr noundef %1) #0 !dbg !1339 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1340, metadata !DIExpression()), !dbg !1341
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1342, metadata !DIExpression()), !dbg !1343
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1344, metadata !DIExpression()), !dbg !1345
  store i32 -1, ptr %5, align 4, !dbg !1345
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1346, metadata !DIExpression()), !dbg !1347
  %9 = call ptr @get_redis_connection(), !dbg !1348
  store ptr %9, ptr %6, align 8, !dbg !1347
  %10 = load ptr, ptr %6, align 8, !dbg !1349
  %11 = icmp ne ptr %10, null, !dbg !1349
  br i1 %11, label %12, label %67, !dbg !1351

12:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1352, metadata !DIExpression()), !dbg !1354
  %13 = load ptr, ptr %6, align 8, !dbg !1355
  %14 = load ptr, ptr %4, align 8, !dbg !1356
  %15 = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %13, ptr noundef @.str.36, ptr noundef %14), !dbg !1357
  store ptr %15, ptr %7, align 8, !dbg !1354
  %16 = load ptr, ptr %7, align 8, !dbg !1358
  %17 = icmp ne ptr %16, null, !dbg !1358
  br i1 %17, label %18, label %66, !dbg !1360

18:                                               ; preds = %12
  %19 = load ptr, ptr %7, align 8, !dbg !1361
  %20 = getelementptr inbounds %struct.redisReply, ptr %19, i32 0, i32 0, !dbg !1364
  %21 = load i32, ptr %20, align 8, !dbg !1364
  %22 = icmp eq i32 %21, 6, !dbg !1365
  br i1 %22, label %23, label %27, !dbg !1366

23:                                               ; preds = %18
  %24 = load ptr, ptr %7, align 8, !dbg !1367
  %25 = getelementptr inbounds %struct.redisReply, ptr %24, i32 0, i32 3, !dbg !1368
  %26 = load ptr, ptr %25, align 8, !dbg !1368
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.7, ptr noundef %26), !dbg !1369
  br label %64, !dbg !1369

27:                                               ; preds = %18
  %28 = load ptr, ptr %7, align 8, !dbg !1370
  %29 = getelementptr inbounds %struct.redisReply, ptr %28, i32 0, i32 0, !dbg !1372
  %30 = load i32, ptr %29, align 8, !dbg !1372
  %31 = icmp ne i32 %30, 2, !dbg !1373
  br i1 %31, label %32, label %42, !dbg !1374

32:                                               ; preds = %27
  %33 = load ptr, ptr %7, align 8, !dbg !1375
  %34 = getelementptr inbounds %struct.redisReply, ptr %33, i32 0, i32 0, !dbg !1378
  %35 = load i32, ptr %34, align 8, !dbg !1378
  %36 = icmp ne i32 %35, 4, !dbg !1379
  br i1 %36, label %37, label %41, !dbg !1380

37:                                               ; preds = %32
  %38 = load ptr, ptr %7, align 8, !dbg !1381
  %39 = getelementptr inbounds %struct.redisReply, ptr %38, i32 0, i32 0, !dbg !1382
  %40 = load i32, ptr %39, align 8, !dbg !1382
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.8, i32 noundef %40), !dbg !1383
  br label %41, !dbg !1383

41:                                               ; preds = %37, %32
  br label %63, !dbg !1384

42:                                               ; preds = %27
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1385, metadata !DIExpression()), !dbg !1387
  store i64 0, ptr %8, align 8, !dbg !1388
  br label %43, !dbg !1390

43:                                               ; preds = %59, %42
  %44 = load i64, ptr %8, align 8, !dbg !1391
  %45 = load ptr, ptr %7, align 8, !dbg !1393
  %46 = getelementptr inbounds %struct.redisReply, ptr %45, i32 0, i32 4, !dbg !1394
  %47 = load i64, ptr %46, align 8, !dbg !1394
  %48 = icmp ult i64 %44, %47, !dbg !1395
  br i1 %48, label %49, label %62, !dbg !1396

49:                                               ; preds = %43
  %50 = load ptr, ptr %3, align 8, !dbg !1397
  %51 = load ptr, ptr %7, align 8, !dbg !1399
  %52 = getelementptr inbounds %struct.redisReply, ptr %51, i32 0, i32 5, !dbg !1400
  %53 = load ptr, ptr %52, align 8, !dbg !1400
  %54 = load i64, ptr %8, align 8, !dbg !1401
  %55 = getelementptr inbounds ptr, ptr %53, i64 %54, !dbg !1399
  %56 = load ptr, ptr %55, align 8, !dbg !1399
  %57 = getelementptr inbounds %struct.redisReply, ptr %56, i32 0, i32 3, !dbg !1402
  %58 = load ptr, ptr %57, align 8, !dbg !1402
  call void @add_to_secrets_list(ptr noundef %50, ptr noundef %58), !dbg !1403
  br label %59, !dbg !1404

59:                                               ; preds = %49
  %60 = load i64, ptr %8, align 8, !dbg !1405
  %61 = add i64 %60, 1, !dbg !1405
  store i64 %61, ptr %8, align 8, !dbg !1405
  br label %43, !dbg !1406, !llvm.loop !1407

62:                                               ; preds = %43
  br label %63

63:                                               ; preds = %62, %41
  br label %64

64:                                               ; preds = %63, %23
  store i32 0, ptr %5, align 4, !dbg !1409
  %65 = load ptr, ptr %7, align 8, !dbg !1410
  call void @turnFreeRedisReply(ptr noundef %65), !dbg !1411
  br label %66, !dbg !1412

66:                                               ; preds = %64, %12
  br label %67, !dbg !1413

67:                                               ; preds = %66, %2
  %68 = load i32, ptr %5, align 4, !dbg !1414
  ret i32 %68, !dbg !1415
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @redis_get_user_key(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !1416 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca [1025 x i8], align 16
  %10 = alloca ptr, align 8
  %11 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1417, metadata !DIExpression()), !dbg !1418
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1419, metadata !DIExpression()), !dbg !1420
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1421, metadata !DIExpression()), !dbg !1422
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1423, metadata !DIExpression()), !dbg !1424
  store i32 -1, ptr %7, align 4, !dbg !1424
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1425, metadata !DIExpression()), !dbg !1426
  %12 = call ptr @get_redis_connection(), !dbg !1427
  store ptr %12, ptr %8, align 8, !dbg !1426
  %13 = load ptr, ptr %8, align 8, !dbg !1428
  %14 = icmp ne ptr %13, null, !dbg !1428
  br i1 %14, label %15, label %83, !dbg !1430

15:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1431, metadata !DIExpression()), !dbg !1436
  %16 = getelementptr inbounds [1025 x i8], ptr %9, i64 0, i64 0, !dbg !1437
  %17 = load ptr, ptr %5, align 8, !dbg !1438
  %18 = load ptr, ptr %4, align 8, !dbg !1439
  %19 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %16, i64 noundef 1025, ptr noundef @.str.40, ptr noundef %17, ptr noundef %18) #7, !dbg !1440
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1441, metadata !DIExpression()), !dbg !1442
  %20 = load ptr, ptr %8, align 8, !dbg !1443
  %21 = getelementptr inbounds [1025 x i8], ptr %9, i64 0, i64 0, !dbg !1444
  %22 = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %20, ptr noundef %21), !dbg !1445
  store ptr %22, ptr %10, align 8, !dbg !1442
  %23 = load ptr, ptr %10, align 8, !dbg !1446
  %24 = icmp ne ptr %23, null, !dbg !1446
  br i1 %24, label %25, label %82, !dbg !1448

25:                                               ; preds = %15
  %26 = load ptr, ptr %10, align 8, !dbg !1449
  %27 = getelementptr inbounds %struct.redisReply, ptr %26, i32 0, i32 0, !dbg !1452
  %28 = load i32, ptr %27, align 8, !dbg !1452
  %29 = icmp eq i32 %28, 6, !dbg !1453
  br i1 %29, label %30, label %34, !dbg !1454

30:                                               ; preds = %25
  %31 = load ptr, ptr %10, align 8, !dbg !1455
  %32 = getelementptr inbounds %struct.redisReply, ptr %31, i32 0, i32 3, !dbg !1456
  %33 = load ptr, ptr %32, align 8, !dbg !1456
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.7, ptr noundef %33), !dbg !1457
  br label %80, !dbg !1457

34:                                               ; preds = %25
  %35 = load ptr, ptr %10, align 8, !dbg !1458
  %36 = getelementptr inbounds %struct.redisReply, ptr %35, i32 0, i32 0, !dbg !1460
  %37 = load i32, ptr %36, align 8, !dbg !1460
  %38 = icmp ne i32 %37, 1, !dbg !1461
  br i1 %38, label %39, label %49, !dbg !1462

39:                                               ; preds = %34
  %40 = load ptr, ptr %10, align 8, !dbg !1463
  %41 = getelementptr inbounds %struct.redisReply, ptr %40, i32 0, i32 0, !dbg !1466
  %42 = load i32, ptr %41, align 8, !dbg !1466
  %43 = icmp ne i32 %42, 4, !dbg !1467
  br i1 %43, label %44, label %48, !dbg !1468

44:                                               ; preds = %39
  %45 = load ptr, ptr %10, align 8, !dbg !1469
  %46 = getelementptr inbounds %struct.redisReply, ptr %45, i32 0, i32 0, !dbg !1470
  %47 = load i32, ptr %46, align 8, !dbg !1470
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.8, i32 noundef %47), !dbg !1471
  br label %48, !dbg !1471

48:                                               ; preds = %44, %39
  br label %79, !dbg !1472

49:                                               ; preds = %34
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1473, metadata !DIExpression()), !dbg !1475
  %50 = call i64 @get_hmackey_size(i32 noundef 0), !dbg !1476
  store i64 %50, ptr %11, align 8, !dbg !1475
  %51 = load ptr, ptr %10, align 8, !dbg !1477
  %52 = getelementptr inbounds %struct.redisReply, ptr %51, i32 0, i32 3, !dbg !1479
  %53 = load ptr, ptr %52, align 8, !dbg !1479
  %54 = call i64 @strlen(ptr noundef %53) #8, !dbg !1480
  %55 = load i64, ptr %11, align 8, !dbg !1481
  %56 = mul i64 %55, 2, !dbg !1482
  %57 = icmp ult i64 %54, %56, !dbg !1483
  br i1 %57, label %58, label %63, !dbg !1484

58:                                               ; preds = %49
  %59 = load ptr, ptr %10, align 8, !dbg !1485
  %60 = getelementptr inbounds %struct.redisReply, ptr %59, i32 0, i32 3, !dbg !1487
  %61 = load ptr, ptr %60, align 8, !dbg !1487
  %62 = load ptr, ptr %4, align 8, !dbg !1488
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.41, ptr noundef %61, ptr noundef %62), !dbg !1489
  br label %78, !dbg !1490

63:                                               ; preds = %49
  %64 = load ptr, ptr %10, align 8, !dbg !1491
  %65 = getelementptr inbounds %struct.redisReply, ptr %64, i32 0, i32 3, !dbg !1493
  %66 = load ptr, ptr %65, align 8, !dbg !1493
  %67 = load ptr, ptr %6, align 8, !dbg !1494
  %68 = load i64, ptr %11, align 8, !dbg !1495
  %69 = call i32 @convert_string_key_to_binary(ptr noundef %66, ptr noundef %67, i64 noundef %68), !dbg !1496
  %70 = icmp slt i32 %69, 0, !dbg !1497
  br i1 %70, label %71, label %76, !dbg !1498

71:                                               ; preds = %63
  %72 = load ptr, ptr %10, align 8, !dbg !1499
  %73 = getelementptr inbounds %struct.redisReply, ptr %72, i32 0, i32 3, !dbg !1501
  %74 = load ptr, ptr %73, align 8, !dbg !1501
  %75 = load ptr, ptr %4, align 8, !dbg !1502
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.42, ptr noundef %74, ptr noundef %75), !dbg !1503
  br label %77, !dbg !1504

76:                                               ; preds = %63
  store i32 0, ptr %7, align 4, !dbg !1505
  br label %77

77:                                               ; preds = %76, %71
  br label %78

78:                                               ; preds = %77, %58
  br label %79

79:                                               ; preds = %78, %48
  br label %80

80:                                               ; preds = %79, %30
  %81 = load ptr, ptr %10, align 8, !dbg !1507
  call void @turnFreeRedisReply(ptr noundef %81), !dbg !1508
  br label %82, !dbg !1509

82:                                               ; preds = %80, %15
  br label %83, !dbg !1510

83:                                               ; preds = %82, %3
  %84 = load i32, ptr %7, align 4, !dbg !1511
  ret i32 %84, !dbg !1512
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @redis_set_user_key(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !1513 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca [1025 x i8], align 16
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1514, metadata !DIExpression()), !dbg !1515
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1516, metadata !DIExpression()), !dbg !1517
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1518, metadata !DIExpression()), !dbg !1519
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1520, metadata !DIExpression()), !dbg !1521
  store i32 -1, ptr %7, align 4, !dbg !1521
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1522, metadata !DIExpression()), !dbg !1523
  %10 = call ptr @get_redis_connection(), !dbg !1524
  store ptr %10, ptr %8, align 8, !dbg !1523
  %11 = load ptr, ptr %8, align 8, !dbg !1525
  %12 = icmp ne ptr %11, null, !dbg !1525
  br i1 %12, label %13, label %24, !dbg !1527

13:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1528, metadata !DIExpression()), !dbg !1530
  %14 = getelementptr inbounds [1025 x i8], ptr %9, i64 0, i64 0, !dbg !1531
  %15 = load ptr, ptr %5, align 8, !dbg !1532
  %16 = load ptr, ptr %4, align 8, !dbg !1533
  %17 = load ptr, ptr %6, align 8, !dbg !1534
  %18 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %14, i64 noundef 1025, ptr noundef @.str.43, ptr noundef %15, ptr noundef %16, ptr noundef %17) #7, !dbg !1535
  %19 = load ptr, ptr %8, align 8, !dbg !1536
  %20 = getelementptr inbounds [1025 x i8], ptr %9, i64 0, i64 0, !dbg !1537
  %21 = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %19, ptr noundef %20), !dbg !1538
  call void @turnFreeRedisReply(ptr noundef %21), !dbg !1539
  %22 = load ptr, ptr %8, align 8, !dbg !1540
  %23 = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %22, ptr noundef @.str.44), !dbg !1541
  call void @turnFreeRedisReply(ptr noundef %23), !dbg !1542
  store i32 0, ptr %7, align 4, !dbg !1543
  br label %24, !dbg !1544

24:                                               ; preds = %13, %3
  %25 = load i32, ptr %7, align 4, !dbg !1545
  ret i32 %25, !dbg !1546
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @redis_del_user(ptr noundef %0, ptr noundef %1) #0 !dbg !1547 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca [1025 x i8], align 16
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1548, metadata !DIExpression()), !dbg !1549
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1550, metadata !DIExpression()), !dbg !1551
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1552, metadata !DIExpression()), !dbg !1553
  store i32 -1, ptr %5, align 4, !dbg !1553
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1554, metadata !DIExpression()), !dbg !1555
  %8 = call ptr @get_redis_connection(), !dbg !1556
  store ptr %8, ptr %6, align 8, !dbg !1555
  %9 = load ptr, ptr %6, align 8, !dbg !1557
  %10 = icmp ne ptr %9, null, !dbg !1557
  br i1 %10, label %11, label %21, !dbg !1559

11:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1560, metadata !DIExpression()), !dbg !1562
  %12 = getelementptr inbounds [1025 x i8], ptr %7, i64 0, i64 0, !dbg !1563
  %13 = load ptr, ptr %4, align 8, !dbg !1565
  %14 = load ptr, ptr %3, align 8, !dbg !1566
  %15 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %12, i64 noundef 1025, ptr noundef @.str.45, ptr noundef %13, ptr noundef %14) #7, !dbg !1567
  %16 = load ptr, ptr %6, align 8, !dbg !1568
  %17 = getelementptr inbounds [1025 x i8], ptr %7, i64 0, i64 0, !dbg !1569
  %18 = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %16, ptr noundef %17), !dbg !1570
  call void @turnFreeRedisReply(ptr noundef %18), !dbg !1571
  %19 = load ptr, ptr %6, align 8, !dbg !1572
  %20 = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %19, ptr noundef @.str.44), !dbg !1573
  call void @turnFreeRedisReply(ptr noundef %20), !dbg !1574
  store i32 0, ptr %5, align 4, !dbg !1575
  br label %21, !dbg !1576

21:                                               ; preds = %11, %2
  %22 = load i32, ptr %5, align 4, !dbg !1577
  ret i32 %22, !dbg !1578
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @redis_list_users(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !1579 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca [128 x i8], align 16
  %10 = alloca %struct._secrets_list, align 8
  %11 = alloca i64, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1580, metadata !DIExpression()), !dbg !1581
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1582, metadata !DIExpression()), !dbg !1583
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1584, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1586, metadata !DIExpression()), !dbg !1587
  store i32 -1, ptr %7, align 4, !dbg !1587
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1588, metadata !DIExpression()), !dbg !1589
  %21 = call ptr @get_redis_connection(), !dbg !1590
  store ptr %21, ptr %8, align 8, !dbg !1589
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1591, metadata !DIExpression()), !dbg !1593
  call void @llvm.memset.p0.i64(ptr align 16 %9, i8 0, i64 128, i1 false), !dbg !1593
  %22 = load ptr, ptr %4, align 8, !dbg !1594
  %23 = icmp ne ptr %22, null, !dbg !1594
  br i1 %23, label %26, label %24, !dbg !1596

24:                                               ; preds = %3
  %25 = getelementptr inbounds [128 x i8], ptr %9, i64 0, i64 0, !dbg !1597
  store ptr %25, ptr %4, align 8, !dbg !1598
  br label %26, !dbg !1599

26:                                               ; preds = %24, %3
  %27 = load ptr, ptr %8, align 8, !dbg !1600
  %28 = icmp ne ptr %27, null, !dbg !1600
  br i1 %28, label %29, label %165, !dbg !1602

29:                                               ; preds = %26
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1603, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1606, metadata !DIExpression()), !dbg !1607
  store i64 0, ptr %11, align 8, !dbg !1607
  call void @init_secrets_list(ptr noundef %10), !dbg !1608
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1609, metadata !DIExpression()), !dbg !1610
  store ptr null, ptr %12, align 8, !dbg !1610
  %30 = load ptr, ptr %4, align 8, !dbg !1611
  %31 = icmp ne ptr %30, null, !dbg !1611
  br i1 %31, label %32, label %42, !dbg !1614

32:                                               ; preds = %29
  %33 = load ptr, ptr %4, align 8, !dbg !1615
  %34 = getelementptr inbounds i8, ptr %33, i64 0, !dbg !1615
  %35 = load i8, ptr %34, align 1, !dbg !1615
  %36 = zext i8 %35 to i32, !dbg !1615
  %37 = icmp ne i32 %36, 0, !dbg !1615
  br i1 %37, label %38, label %42, !dbg !1616

38:                                               ; preds = %32
  %39 = load ptr, ptr %8, align 8, !dbg !1617
  %40 = load ptr, ptr %4, align 8, !dbg !1619
  %41 = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %39, ptr noundef @.str.46, ptr noundef %40), !dbg !1620
  store ptr %41, ptr %12, align 8, !dbg !1621
  br label %45, !dbg !1622

42:                                               ; preds = %32, %29
  %43 = load ptr, ptr %8, align 8, !dbg !1623
  %44 = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %43, ptr noundef @.str.47), !dbg !1625
  store ptr %44, ptr %12, align 8, !dbg !1626
  br label %45

45:                                               ; preds = %42, %38
  %46 = load ptr, ptr %12, align 8, !dbg !1627
  %47 = icmp ne ptr %46, null, !dbg !1627
  br i1 %47, label %48, label %95, !dbg !1629

48:                                               ; preds = %45
  %49 = load ptr, ptr %12, align 8, !dbg !1630
  %50 = getelementptr inbounds %struct.redisReply, ptr %49, i32 0, i32 0, !dbg !1633
  %51 = load i32, ptr %50, align 8, !dbg !1633
  %52 = icmp eq i32 %51, 6, !dbg !1634
  br i1 %52, label %53, label %57, !dbg !1635

53:                                               ; preds = %48
  %54 = load ptr, ptr %12, align 8, !dbg !1636
  %55 = getelementptr inbounds %struct.redisReply, ptr %54, i32 0, i32 3, !dbg !1637
  %56 = load ptr, ptr %55, align 8, !dbg !1637
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.7, ptr noundef %56), !dbg !1638
  br label %93, !dbg !1638

57:                                               ; preds = %48
  %58 = load ptr, ptr %12, align 8, !dbg !1639
  %59 = getelementptr inbounds %struct.redisReply, ptr %58, i32 0, i32 0, !dbg !1641
  %60 = load i32, ptr %59, align 8, !dbg !1641
  %61 = icmp ne i32 %60, 2, !dbg !1642
  br i1 %61, label %62, label %72, !dbg !1643

62:                                               ; preds = %57
  %63 = load ptr, ptr %12, align 8, !dbg !1644
  %64 = getelementptr inbounds %struct.redisReply, ptr %63, i32 0, i32 0, !dbg !1647
  %65 = load i32, ptr %64, align 8, !dbg !1647
  %66 = icmp ne i32 %65, 4, !dbg !1648
  br i1 %66, label %67, label %71, !dbg !1649

67:                                               ; preds = %62
  %68 = load ptr, ptr %12, align 8, !dbg !1650
  %69 = getelementptr inbounds %struct.redisReply, ptr %68, i32 0, i32 0, !dbg !1651
  %70 = load i32, ptr %69, align 8, !dbg !1651
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.8, i32 noundef %70), !dbg !1652
  br label %71, !dbg !1652

71:                                               ; preds = %67, %62
  br label %92, !dbg !1653

72:                                               ; preds = %57
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1654, metadata !DIExpression()), !dbg !1656
  store i64 0, ptr %13, align 8, !dbg !1657
  br label %73, !dbg !1659

73:                                               ; preds = %88, %72
  %74 = load i64, ptr %13, align 8, !dbg !1660
  %75 = load ptr, ptr %12, align 8, !dbg !1662
  %76 = getelementptr inbounds %struct.redisReply, ptr %75, i32 0, i32 4, !dbg !1663
  %77 = load i64, ptr %76, align 8, !dbg !1663
  %78 = icmp ult i64 %74, %77, !dbg !1664
  br i1 %78, label %79, label %91, !dbg !1665

79:                                               ; preds = %73
  %80 = load ptr, ptr %12, align 8, !dbg !1666
  %81 = getelementptr inbounds %struct.redisReply, ptr %80, i32 0, i32 5, !dbg !1668
  %82 = load ptr, ptr %81, align 8, !dbg !1668
  %83 = load i64, ptr %13, align 8, !dbg !1669
  %84 = getelementptr inbounds ptr, ptr %82, i64 %83, !dbg !1666
  %85 = load ptr, ptr %84, align 8, !dbg !1666
  %86 = getelementptr inbounds %struct.redisReply, ptr %85, i32 0, i32 3, !dbg !1670
  %87 = load ptr, ptr %86, align 8, !dbg !1670
  call void @add_to_secrets_list(ptr noundef %10, ptr noundef %87), !dbg !1671
  br label %88, !dbg !1672

88:                                               ; preds = %79
  %89 = load i64, ptr %13, align 8, !dbg !1673
  %90 = add i64 %89, 1, !dbg !1673
  store i64 %90, ptr %13, align 8, !dbg !1673
  br label %73, !dbg !1674, !llvm.loop !1675

91:                                               ; preds = %73
  br label %92

92:                                               ; preds = %91, %71
  br label %93

93:                                               ; preds = %92, %53
  %94 = load ptr, ptr %12, align 8, !dbg !1677
  call void @turnFreeRedisReply(ptr noundef %94), !dbg !1678
  br label %95, !dbg !1679

95:                                               ; preds = %93, %45
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1680, metadata !DIExpression()), !dbg !1681
  store i64 11, ptr %14, align 8, !dbg !1681
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1682, metadata !DIExpression()), !dbg !1683
  store i64 5, ptr %15, align 8, !dbg !1683
  store i64 0, ptr %11, align 8, !dbg !1684
  br label %96, !dbg !1686

96:                                               ; preds = %161, %95
  %97 = load i64, ptr %11, align 8, !dbg !1687
  %98 = getelementptr inbounds %struct._secrets_list, ptr %10, i32 0, i32 1, !dbg !1689
  %99 = load i64, ptr %98, align 8, !dbg !1689
  %100 = icmp ult i64 %97, %99, !dbg !1690
  br i1 %100, label %101, label %164, !dbg !1691

101:                                              ; preds = %96
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1692, metadata !DIExpression()), !dbg !1694
  %102 = getelementptr inbounds %struct._secrets_list, ptr %10, i32 0, i32 0, !dbg !1695
  %103 = load ptr, ptr %102, align 8, !dbg !1695
  %104 = load i64, ptr %11, align 8, !dbg !1696
  %105 = getelementptr inbounds ptr, ptr %103, i64 %104, !dbg !1697
  %106 = load ptr, ptr %105, align 8, !dbg !1697
  store ptr %106, ptr %16, align 8, !dbg !1694
  call void @llvm.dbg.declare(metadata ptr %17, metadata !1698, metadata !DIExpression()), !dbg !1699
  %107 = load ptr, ptr %16, align 8, !dbg !1700
  %108 = call ptr @strstr(ptr noundef %107, ptr noundef @.str.48) #8, !dbg !1701
  store ptr %108, ptr %17, align 8, !dbg !1699
  %109 = load ptr, ptr %17, align 8, !dbg !1702
  %110 = load ptr, ptr %16, align 8, !dbg !1704
  %111 = icmp ne ptr %109, %110, !dbg !1705
  br i1 %111, label %112, label %113, !dbg !1706

112:                                              ; preds = %101
  br label %161, !dbg !1707

113:                                              ; preds = %101
  %114 = load i64, ptr %14, align 8, !dbg !1708
  %115 = load ptr, ptr %17, align 8, !dbg !1709
  %116 = getelementptr inbounds i8, ptr %115, i64 %114, !dbg !1709
  store ptr %116, ptr %17, align 8, !dbg !1709
  call void @llvm.dbg.declare(metadata ptr %18, metadata !1710, metadata !DIExpression()), !dbg !1711
  %117 = load ptr, ptr %17, align 8, !dbg !1712
  %118 = call ptr @strchr(ptr noundef %117, i32 noundef 47) #8, !dbg !1713
  store ptr %118, ptr %18, align 8, !dbg !1711
  %119 = load ptr, ptr %18, align 8, !dbg !1714
  %120 = icmp ne ptr %119, null, !dbg !1714
  br i1 %120, label %122, label %121, !dbg !1716

121:                                              ; preds = %113
  br label %161, !dbg !1717

122:                                              ; preds = %113
  %123 = load ptr, ptr %18, align 8, !dbg !1718
  store i8 0, ptr %123, align 1, !dbg !1719
  call void @llvm.dbg.declare(metadata ptr %19, metadata !1720, metadata !DIExpression()), !dbg !1721
  %124 = load ptr, ptr %17, align 8, !dbg !1722
  store ptr %124, ptr %19, align 8, !dbg !1721
  %125 = load ptr, ptr %18, align 8, !dbg !1723
  %126 = getelementptr inbounds i8, ptr %125, i32 1, !dbg !1723
  store ptr %126, ptr %18, align 8, !dbg !1723
  %127 = load ptr, ptr %18, align 8, !dbg !1724
  %128 = call ptr @strstr(ptr noundef %127, ptr noundef @.str.49) #8, !dbg !1725
  store ptr %128, ptr %17, align 8, !dbg !1726
  %129 = load ptr, ptr %17, align 8, !dbg !1727
  %130 = load ptr, ptr %18, align 8, !dbg !1729
  %131 = icmp ne ptr %129, %130, !dbg !1730
  br i1 %131, label %132, label %133, !dbg !1731

132:                                              ; preds = %122
  br label %161, !dbg !1732

133:                                              ; preds = %122
  %134 = load i64, ptr %15, align 8, !dbg !1733
  %135 = load ptr, ptr %17, align 8, !dbg !1734
  %136 = getelementptr inbounds i8, ptr %135, i64 %134, !dbg !1734
  store ptr %136, ptr %17, align 8, !dbg !1734
  %137 = load ptr, ptr %17, align 8, !dbg !1735
  %138 = call ptr @strchr(ptr noundef %137, i32 noundef 47) #8, !dbg !1736
  store ptr %138, ptr %18, align 8, !dbg !1737
  %139 = load ptr, ptr %18, align 8, !dbg !1738
  %140 = icmp ne ptr %139, null, !dbg !1738
  br i1 %140, label %142, label %141, !dbg !1740

141:                                              ; preds = %133
  br label %161, !dbg !1741

142:                                              ; preds = %133
  %143 = load ptr, ptr %18, align 8, !dbg !1742
  store i8 0, ptr %143, align 1, !dbg !1743
  call void @llvm.dbg.declare(metadata ptr %20, metadata !1744, metadata !DIExpression()), !dbg !1745
  %144 = load ptr, ptr %17, align 8, !dbg !1746
  store ptr %144, ptr %20, align 8, !dbg !1745
  %145 = load ptr, ptr %5, align 8, !dbg !1747
  %146 = icmp ne ptr %145, null, !dbg !1747
  br i1 %146, label %147, label %156, !dbg !1749

147:                                              ; preds = %142
  %148 = load ptr, ptr %5, align 8, !dbg !1750
  %149 = load ptr, ptr %20, align 8, !dbg !1752
  call void @add_to_secrets_list(ptr noundef %148, ptr noundef %149), !dbg !1753
  %150 = load ptr, ptr %6, align 8, !dbg !1754
  %151 = icmp ne ptr %150, null, !dbg !1754
  br i1 %151, label %152, label %155, !dbg !1756

152:                                              ; preds = %147
  %153 = load ptr, ptr %6, align 8, !dbg !1757
  %154 = load ptr, ptr %19, align 8, !dbg !1759
  call void @add_to_secrets_list(ptr noundef %153, ptr noundef %154), !dbg !1760
  br label %155, !dbg !1761

155:                                              ; preds = %152, %147
  br label %160, !dbg !1762

156:                                              ; preds = %142
  %157 = load ptr, ptr %20, align 8, !dbg !1763
  %158 = load ptr, ptr %19, align 8, !dbg !1765
  %159 = call i32 (ptr, ...) @printf(ptr noundef @.str.50, ptr noundef %157, ptr noundef %158), !dbg !1766
  br label %160

160:                                              ; preds = %156, %155
  br label %161, !dbg !1767

161:                                              ; preds = %160, %141, %132, %121, %112
  %162 = load i64, ptr %11, align 8, !dbg !1768
  %163 = add i64 %162, 1, !dbg !1768
  store i64 %163, ptr %11, align 8, !dbg !1768
  br label %96, !dbg !1769, !llvm.loop !1770

164:                                              ; preds = %96
  call void @clean_secrets_list(ptr noundef %10), !dbg !1772
  store i32 0, ptr %7, align 4, !dbg !1773
  br label %165, !dbg !1774

165:                                              ; preds = %164, %26
  %166 = load i32, ptr %7, align 4, !dbg !1775
  ret i32 %166, !dbg !1776
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @redis_list_secrets(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !1777 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca [128 x i8], align 16
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca %struct._secrets_list, align 8
  %12 = alloca i64, align 8
  %13 = alloca [257 x i8], align 16
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca i64, align 8
  %22 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1778, metadata !DIExpression()), !dbg !1779
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1780, metadata !DIExpression()), !dbg !1781
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1782, metadata !DIExpression()), !dbg !1783
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1784, metadata !DIExpression()), !dbg !1785
  store i32 -1, ptr %7, align 4, !dbg !1785
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1786, metadata !DIExpression()), !dbg !1787
  call void @llvm.memset.p0.i64(ptr align 16 %8, i8 0, i64 128, i1 false), !dbg !1787
  %23 = load ptr, ptr %4, align 8, !dbg !1788
  %24 = icmp ne ptr %23, null, !dbg !1788
  br i1 %24, label %27, label %25, !dbg !1790

25:                                               ; preds = %3
  %26 = getelementptr inbounds [128 x i8], ptr %8, i64 0, i64 0, !dbg !1791
  store ptr %26, ptr %4, align 8, !dbg !1792
  br label %27, !dbg !1793

27:                                               ; preds = %25, %3
  store i32 1, ptr @donot_print_connection_success, align 4, !dbg !1794
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1795, metadata !DIExpression()), !dbg !1796
  %28 = call ptr @get_redis_connection(), !dbg !1797
  store ptr %28, ptr %9, align 8, !dbg !1796
  %29 = load ptr, ptr %9, align 8, !dbg !1798
  %30 = icmp ne ptr %29, null, !dbg !1798
  br i1 %30, label %31, label %230, !dbg !1800

31:                                               ; preds = %27
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1801, metadata !DIExpression()), !dbg !1803
  store ptr null, ptr %10, align 8, !dbg !1803
  %32 = load ptr, ptr %4, align 8, !dbg !1804
  %33 = icmp ne ptr %32, null, !dbg !1804
  br i1 %33, label %34, label %44, !dbg !1806

34:                                               ; preds = %31
  %35 = load ptr, ptr %4, align 8, !dbg !1807
  %36 = getelementptr inbounds i8, ptr %35, i64 0, !dbg !1807
  %37 = load i8, ptr %36, align 1, !dbg !1807
  %38 = zext i8 %37 to i32, !dbg !1807
  %39 = icmp ne i32 %38, 0, !dbg !1807
  br i1 %39, label %40, label %44, !dbg !1808

40:                                               ; preds = %34
  %41 = load ptr, ptr %9, align 8, !dbg !1809
  %42 = load ptr, ptr %4, align 8, !dbg !1811
  %43 = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %41, ptr noundef @.str.51, ptr noundef %42), !dbg !1812
  store ptr %43, ptr %10, align 8, !dbg !1813
  br label %47, !dbg !1814

44:                                               ; preds = %34, %31
  %45 = load ptr, ptr %9, align 8, !dbg !1815
  %46 = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %45, ptr noundef @.str.52), !dbg !1817
  store ptr %46, ptr %10, align 8, !dbg !1818
  br label %47

47:                                               ; preds = %44, %40
  %48 = load ptr, ptr %10, align 8, !dbg !1819
  %49 = icmp ne ptr %48, null, !dbg !1819
  br i1 %49, label %50, label %229, !dbg !1821

50:                                               ; preds = %47
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1822, metadata !DIExpression()), !dbg !1824
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1825, metadata !DIExpression()), !dbg !1826
  store i64 0, ptr %12, align 8, !dbg !1826
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1827, metadata !DIExpression()), !dbg !1828
  call void @init_secrets_list(ptr noundef %11), !dbg !1829
  %51 = load ptr, ptr %10, align 8, !dbg !1830
  %52 = getelementptr inbounds %struct.redisReply, ptr %51, i32 0, i32 0, !dbg !1832
  %53 = load i32, ptr %52, align 8, !dbg !1832
  %54 = icmp eq i32 %53, 6, !dbg !1833
  br i1 %54, label %55, label %59, !dbg !1834

55:                                               ; preds = %50
  %56 = load ptr, ptr %10, align 8, !dbg !1835
  %57 = getelementptr inbounds %struct.redisReply, ptr %56, i32 0, i32 3, !dbg !1836
  %58 = load ptr, ptr %57, align 8, !dbg !1836
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.7, ptr noundef %58), !dbg !1837
  br label %95, !dbg !1837

59:                                               ; preds = %50
  %60 = load ptr, ptr %10, align 8, !dbg !1838
  %61 = getelementptr inbounds %struct.redisReply, ptr %60, i32 0, i32 0, !dbg !1840
  %62 = load i32, ptr %61, align 8, !dbg !1840
  %63 = icmp ne i32 %62, 2, !dbg !1841
  br i1 %63, label %64, label %74, !dbg !1842

64:                                               ; preds = %59
  %65 = load ptr, ptr %10, align 8, !dbg !1843
  %66 = getelementptr inbounds %struct.redisReply, ptr %65, i32 0, i32 0, !dbg !1846
  %67 = load i32, ptr %66, align 8, !dbg !1846
  %68 = icmp ne i32 %67, 4, !dbg !1847
  br i1 %68, label %69, label %73, !dbg !1848

69:                                               ; preds = %64
  %70 = load ptr, ptr %10, align 8, !dbg !1849
  %71 = getelementptr inbounds %struct.redisReply, ptr %70, i32 0, i32 0, !dbg !1850
  %72 = load i32, ptr %71, align 8, !dbg !1850
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.8, i32 noundef %72), !dbg !1851
  br label %73, !dbg !1851

73:                                               ; preds = %69, %64
  br label %94, !dbg !1852

74:                                               ; preds = %59
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1853, metadata !DIExpression()), !dbg !1855
  store i64 0, ptr %14, align 8, !dbg !1856
  br label %75, !dbg !1858

75:                                               ; preds = %90, %74
  %76 = load i64, ptr %14, align 8, !dbg !1859
  %77 = load ptr, ptr %10, align 8, !dbg !1861
  %78 = getelementptr inbounds %struct.redisReply, ptr %77, i32 0, i32 4, !dbg !1862
  %79 = load i64, ptr %78, align 8, !dbg !1862
  %80 = icmp ult i64 %76, %79, !dbg !1863
  br i1 %80, label %81, label %93, !dbg !1864

81:                                               ; preds = %75
  %82 = load ptr, ptr %10, align 8, !dbg !1865
  %83 = getelementptr inbounds %struct.redisReply, ptr %82, i32 0, i32 5, !dbg !1867
  %84 = load ptr, ptr %83, align 8, !dbg !1867
  %85 = load i64, ptr %14, align 8, !dbg !1868
  %86 = getelementptr inbounds ptr, ptr %84, i64 %85, !dbg !1865
  %87 = load ptr, ptr %86, align 8, !dbg !1865
  %88 = getelementptr inbounds %struct.redisReply, ptr %87, i32 0, i32 3, !dbg !1869
  %89 = load ptr, ptr %88, align 8, !dbg !1869
  call void @add_to_secrets_list(ptr noundef %11, ptr noundef %89), !dbg !1870
  br label %90, !dbg !1871

90:                                               ; preds = %81
  %91 = load i64, ptr %14, align 8, !dbg !1872
  %92 = add i64 %91, 1, !dbg !1872
  store i64 %92, ptr %14, align 8, !dbg !1872
  br label %75, !dbg !1873, !llvm.loop !1874

93:                                               ; preds = %75
  br label %94

94:                                               ; preds = %93, %73
  br label %95

95:                                               ; preds = %94, %55
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1876, metadata !DIExpression()), !dbg !1877
  store i64 11, ptr %15, align 8, !dbg !1877
  store i64 0, ptr %12, align 8, !dbg !1878
  br label %96, !dbg !1880

96:                                               ; preds = %224, %95
  %97 = load i64, ptr %12, align 8, !dbg !1881
  %98 = getelementptr inbounds %struct._secrets_list, ptr %11, i32 0, i32 1, !dbg !1883
  %99 = load i64, ptr %98, align 8, !dbg !1883
  %100 = icmp ult i64 %97, %99, !dbg !1884
  br i1 %100, label %101, label %227, !dbg !1885

101:                                              ; preds = %96
  %102 = getelementptr inbounds [257 x i8], ptr %13, i64 0, i64 0, !dbg !1886
  %103 = getelementptr inbounds %struct._secrets_list, ptr %11, i32 0, i32 0, !dbg !1888
  %104 = load ptr, ptr %103, align 8, !dbg !1888
  %105 = load i64, ptr %12, align 8, !dbg !1889
  %106 = getelementptr inbounds ptr, ptr %104, i64 %105, !dbg !1890
  %107 = load ptr, ptr %106, align 8, !dbg !1890
  %108 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %102, i64 noundef 257, ptr noundef @.str.53, ptr noundef %107) #7, !dbg !1891
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1892, metadata !DIExpression()), !dbg !1893
  %109 = load ptr, ptr %9, align 8, !dbg !1894
  %110 = getelementptr inbounds [257 x i8], ptr %13, i64 0, i64 0, !dbg !1895
  %111 = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %109, ptr noundef %110), !dbg !1896
  store ptr %111, ptr %16, align 8, !dbg !1893
  %112 = load ptr, ptr %16, align 8, !dbg !1897
  %113 = icmp ne ptr %112, null, !dbg !1897
  br i1 %113, label %114, label %222, !dbg !1899

114:                                              ; preds = %101
  %115 = load ptr, ptr %16, align 8, !dbg !1900
  %116 = getelementptr inbounds %struct.redisReply, ptr %115, i32 0, i32 0, !dbg !1903
  %117 = load i32, ptr %116, align 8, !dbg !1903
  %118 = icmp eq i32 %117, 6, !dbg !1904
  br i1 %118, label %119, label %123, !dbg !1905

119:                                              ; preds = %114
  %120 = load ptr, ptr %16, align 8, !dbg !1906
  %121 = getelementptr inbounds %struct.redisReply, ptr %120, i32 0, i32 3, !dbg !1908
  %122 = load ptr, ptr %121, align 8, !dbg !1908
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.7, ptr noundef %122), !dbg !1909
  br label %221, !dbg !1910

123:                                              ; preds = %114
  %124 = load ptr, ptr %16, align 8, !dbg !1911
  %125 = getelementptr inbounds %struct.redisReply, ptr %124, i32 0, i32 0, !dbg !1913
  %126 = load i32, ptr %125, align 8, !dbg !1913
  %127 = icmp eq i32 %126, 1, !dbg !1914
  br i1 %127, label %128, label %133, !dbg !1915

128:                                              ; preds = %123
  %129 = load ptr, ptr %16, align 8, !dbg !1916
  %130 = getelementptr inbounds %struct.redisReply, ptr %129, i32 0, i32 3, !dbg !1918
  %131 = load ptr, ptr %130, align 8, !dbg !1918
  %132 = call i32 (ptr, ...) @printf(ptr noundef @.str.54, ptr noundef %131), !dbg !1919
  br label %220, !dbg !1920

133:                                              ; preds = %123
  %134 = load ptr, ptr %16, align 8, !dbg !1921
  %135 = getelementptr inbounds %struct.redisReply, ptr %134, i32 0, i32 0, !dbg !1923
  %136 = load i32, ptr %135, align 8, !dbg !1923
  %137 = icmp ne i32 %136, 2, !dbg !1924
  br i1 %137, label %138, label %148, !dbg !1925

138:                                              ; preds = %133
  %139 = load ptr, ptr %16, align 8, !dbg !1926
  %140 = getelementptr inbounds %struct.redisReply, ptr %139, i32 0, i32 0, !dbg !1929
  %141 = load i32, ptr %140, align 8, !dbg !1929
  %142 = icmp ne i32 %141, 4, !dbg !1930
  br i1 %142, label %143, label %147, !dbg !1931

143:                                              ; preds = %138
  %144 = load ptr, ptr %16, align 8, !dbg !1932
  %145 = getelementptr inbounds %struct.redisReply, ptr %144, i32 0, i32 0, !dbg !1933
  %146 = load i32, ptr %145, align 8, !dbg !1933
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.8, i32 noundef %146), !dbg !1934
  br label %147, !dbg !1934

147:                                              ; preds = %143, %138
  br label %219, !dbg !1935

148:                                              ; preds = %133
  call void @llvm.dbg.declare(metadata ptr %17, metadata !1936, metadata !DIExpression()), !dbg !1938
  %149 = getelementptr inbounds %struct._secrets_list, ptr %11, i32 0, i32 0, !dbg !1939
  %150 = load ptr, ptr %149, align 8, !dbg !1939
  %151 = load i64, ptr %12, align 8, !dbg !1940
  %152 = getelementptr inbounds ptr, ptr %150, i64 %151, !dbg !1941
  %153 = load ptr, ptr %152, align 8, !dbg !1941
  store ptr %153, ptr %17, align 8, !dbg !1938
  call void @llvm.dbg.declare(metadata ptr %18, metadata !1942, metadata !DIExpression()), !dbg !1943
  %154 = load ptr, ptr %17, align 8, !dbg !1944
  %155 = call ptr @strstr(ptr noundef %154, ptr noundef @.str.48) #8, !dbg !1945
  store ptr %155, ptr %18, align 8, !dbg !1943
  %156 = load ptr, ptr %18, align 8, !dbg !1946
  %157 = load ptr, ptr %17, align 8, !dbg !1948
  %158 = icmp ne ptr %156, %157, !dbg !1949
  br i1 %158, label %159, label %160, !dbg !1950

159:                                              ; preds = %148
  br label %224, !dbg !1951

160:                                              ; preds = %148
  %161 = load i64, ptr %15, align 8, !dbg !1952
  %162 = load ptr, ptr %18, align 8, !dbg !1953
  %163 = getelementptr inbounds i8, ptr %162, i64 %161, !dbg !1953
  store ptr %163, ptr %18, align 8, !dbg !1953
  call void @llvm.dbg.declare(metadata ptr %19, metadata !1954, metadata !DIExpression()), !dbg !1955
  %164 = load ptr, ptr %18, align 8, !dbg !1956
  %165 = call ptr @strchr(ptr noundef %164, i32 noundef 47) #8, !dbg !1957
  store ptr %165, ptr %19, align 8, !dbg !1955
  %166 = load ptr, ptr %19, align 8, !dbg !1958
  %167 = icmp ne ptr %166, null, !dbg !1958
  br i1 %167, label %169, label %168, !dbg !1960

168:                                              ; preds = %160
  br label %224, !dbg !1961

169:                                              ; preds = %160
  %170 = load ptr, ptr %19, align 8, !dbg !1962
  store i8 0, ptr %170, align 1, !dbg !1963
  call void @llvm.dbg.declare(metadata ptr %20, metadata !1964, metadata !DIExpression()), !dbg !1965
  %171 = load ptr, ptr %18, align 8, !dbg !1966
  store ptr %171, ptr %20, align 8, !dbg !1965
  call void @llvm.dbg.declare(metadata ptr %21, metadata !1967, metadata !DIExpression()), !dbg !1968
  store i64 0, ptr %21, align 8, !dbg !1969
  br label %172, !dbg !1971

172:                                              ; preds = %215, %169
  %173 = load i64, ptr %21, align 8, !dbg !1972
  %174 = load ptr, ptr %16, align 8, !dbg !1974
  %175 = getelementptr inbounds %struct.redisReply, ptr %174, i32 0, i32 4, !dbg !1975
  %176 = load i64, ptr %175, align 8, !dbg !1975
  %177 = icmp ult i64 %173, %176, !dbg !1976
  br i1 %177, label %178, label %218, !dbg !1977

178:                                              ; preds = %172
  call void @llvm.dbg.declare(metadata ptr %22, metadata !1978, metadata !DIExpression()), !dbg !1980
  %179 = load ptr, ptr %16, align 8, !dbg !1981
  %180 = getelementptr inbounds %struct.redisReply, ptr %179, i32 0, i32 5, !dbg !1982
  %181 = load ptr, ptr %180, align 8, !dbg !1982
  %182 = load i64, ptr %21, align 8, !dbg !1983
  %183 = getelementptr inbounds ptr, ptr %181, i64 %182, !dbg !1981
  %184 = load ptr, ptr %183, align 8, !dbg !1981
  %185 = getelementptr inbounds %struct.redisReply, ptr %184, i32 0, i32 3, !dbg !1984
  %186 = load ptr, ptr %185, align 8, !dbg !1984
  store ptr %186, ptr %22, align 8, !dbg !1980
  %187 = load ptr, ptr %5, align 8, !dbg !1985
  %188 = icmp ne ptr %187, null, !dbg !1985
  br i1 %188, label %189, label %210, !dbg !1987

189:                                              ; preds = %178
  %190 = load ptr, ptr %5, align 8, !dbg !1988
  %191 = load ptr, ptr %22, align 8, !dbg !1990
  call void @add_to_secrets_list(ptr noundef %190, ptr noundef %191), !dbg !1991
  %192 = load ptr, ptr %6, align 8, !dbg !1992
  %193 = icmp ne ptr %192, null, !dbg !1992
  br i1 %193, label %194, label %209, !dbg !1994

194:                                              ; preds = %189
  %195 = load ptr, ptr %20, align 8, !dbg !1995
  %196 = icmp ne ptr %195, null, !dbg !1995
  br i1 %196, label %197, label %205, !dbg !1998

197:                                              ; preds = %194
  %198 = load ptr, ptr %20, align 8, !dbg !1999
  %199 = load i8, ptr %198, align 1, !dbg !2000
  %200 = sext i8 %199 to i32, !dbg !2000
  %201 = icmp ne i32 %200, 0, !dbg !2000
  br i1 %201, label %202, label %205, !dbg !2001

202:                                              ; preds = %197
  %203 = load ptr, ptr %6, align 8, !dbg !2002
  %204 = load ptr, ptr %20, align 8, !dbg !2004
  call void @add_to_secrets_list(ptr noundef %203, ptr noundef %204), !dbg !2005
  br label %208, !dbg !2006

205:                                              ; preds = %197, %194
  %206 = load ptr, ptr %6, align 8, !dbg !2007
  %207 = load ptr, ptr %4, align 8, !dbg !2009
  call void @add_to_secrets_list(ptr noundef %206, ptr noundef %207), !dbg !2010
  br label %208

208:                                              ; preds = %205, %202
  br label %209, !dbg !2011

209:                                              ; preds = %208, %189
  br label %214, !dbg !2012

210:                                              ; preds = %178
  %211 = load ptr, ptr %22, align 8, !dbg !2013
  %212 = load ptr, ptr %20, align 8, !dbg !2015
  %213 = call i32 (ptr, ...) @printf(ptr noundef @.str.50, ptr noundef %211, ptr noundef %212), !dbg !2016
  br label %214

214:                                              ; preds = %210, %209
  br label %215, !dbg !2017

215:                                              ; preds = %214
  %216 = load i64, ptr %21, align 8, !dbg !2018
  %217 = add i64 %216, 1, !dbg !2018
  store i64 %217, ptr %21, align 8, !dbg !2018
  br label %172, !dbg !2019, !llvm.loop !2020

218:                                              ; preds = %172
  br label %219

219:                                              ; preds = %218, %147
  br label %220

220:                                              ; preds = %219, %128
  br label %221

221:                                              ; preds = %220, %119
  br label %222, !dbg !2022

222:                                              ; preds = %221, %101
  %223 = load ptr, ptr %16, align 8, !dbg !2023
  call void @turnFreeRedisReply(ptr noundef %223), !dbg !2024
  br label %224, !dbg !2025

224:                                              ; preds = %222, %168, %159
  %225 = load i64, ptr %12, align 8, !dbg !2026
  %226 = add i64 %225, 1, !dbg !2026
  store i64 %226, ptr %12, align 8, !dbg !2026
  br label %96, !dbg !2027, !llvm.loop !2028

227:                                              ; preds = %96
  call void @clean_secrets_list(ptr noundef %11), !dbg !2030
  %228 = load ptr, ptr %10, align 8, !dbg !2031
  call void @turnFreeRedisReply(ptr noundef %228), !dbg !2032
  store i32 0, ptr %7, align 4, !dbg !2033
  br label %229, !dbg !2034

229:                                              ; preds = %227, %47
  br label %230, !dbg !2035

230:                                              ; preds = %229, %27
  %231 = load i32, ptr %7, align 4, !dbg !2036
  ret i32 %231, !dbg !2037
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @redis_del_secret(ptr noundef %0, ptr noundef %1) #0 !dbg !2038 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2039, metadata !DIExpression()), !dbg !2040
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2041, metadata !DIExpression()), !dbg !2042
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2043, metadata !DIExpression()), !dbg !2044
  store i32 -1, ptr %5, align 4, !dbg !2044
  store i32 1, ptr @donot_print_connection_success, align 4, !dbg !2045
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2046, metadata !DIExpression()), !dbg !2047
  %7 = call ptr @get_redis_connection(), !dbg !2048
  store ptr %7, ptr %6, align 8, !dbg !2047
  %8 = load ptr, ptr %6, align 8, !dbg !2049
  %9 = icmp ne ptr %8, null, !dbg !2049
  br i1 %9, label %10, label %17, !dbg !2051

10:                                               ; preds = %2
  %11 = load ptr, ptr %6, align 8, !dbg !2052
  %12 = load ptr, ptr %4, align 8, !dbg !2054
  %13 = load ptr, ptr %3, align 8, !dbg !2055
  %14 = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %11, ptr noundef @.str.55, ptr noundef %12, ptr noundef %13), !dbg !2056
  call void @turnFreeRedisReply(ptr noundef %14), !dbg !2057
  %15 = load ptr, ptr %6, align 8, !dbg !2058
  %16 = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %15, ptr noundef @.str.44), !dbg !2059
  call void @turnFreeRedisReply(ptr noundef %16), !dbg !2060
  store i32 0, ptr %5, align 4, !dbg !2061
  br label %17, !dbg !2062

17:                                               ; preds = %10, %2
  %18 = load i32, ptr %5, align 4, !dbg !2063
  ret i32 %18, !dbg !2064
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @redis_set_secret(ptr noundef %0, ptr noundef %1) #0 !dbg !2065 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca [1025 x i8], align 16
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2066, metadata !DIExpression()), !dbg !2067
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2068, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2070, metadata !DIExpression()), !dbg !2071
  store i32 -1, ptr %5, align 4, !dbg !2071
  store i32 1, ptr @donot_print_connection_success, align 4, !dbg !2072
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2073, metadata !DIExpression()), !dbg !2074
  %8 = call ptr @get_redis_connection(), !dbg !2075
  store ptr %8, ptr %6, align 8, !dbg !2074
  %9 = load ptr, ptr %6, align 8, !dbg !2076
  %10 = icmp ne ptr %9, null, !dbg !2076
  br i1 %10, label %11, label %24, !dbg !2078

11:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2079, metadata !DIExpression()), !dbg !2081
  %12 = load ptr, ptr %3, align 8, !dbg !2082
  %13 = load ptr, ptr %4, align 8, !dbg !2083
  %14 = call i32 @redis_del_secret(ptr noundef %12, ptr noundef %13), !dbg !2084
  %15 = getelementptr inbounds [1025 x i8], ptr %7, i64 0, i64 0, !dbg !2085
  %16 = load ptr, ptr %4, align 8, !dbg !2086
  %17 = load ptr, ptr %3, align 8, !dbg !2087
  %18 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %15, i64 noundef 1025, ptr noundef @.str.56, ptr noundef %16, ptr noundef %17) #7, !dbg !2088
  %19 = load ptr, ptr %6, align 8, !dbg !2089
  %20 = getelementptr inbounds [1025 x i8], ptr %7, i64 0, i64 0, !dbg !2090
  %21 = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %19, ptr noundef %20), !dbg !2091
  call void @turnFreeRedisReply(ptr noundef %21), !dbg !2092
  %22 = load ptr, ptr %6, align 8, !dbg !2093
  %23 = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %22, ptr noundef @.str.44), !dbg !2094
  call void @turnFreeRedisReply(ptr noundef %23), !dbg !2095
  store i32 0, ptr %5, align 4, !dbg !2096
  br label %24, !dbg !2097

24:                                               ; preds = %11, %2
  %25 = load i32, ptr %5, align 4, !dbg !2098
  ret i32 %25, !dbg !2099
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @redis_add_origin(ptr noundef %0, ptr noundef %1) #0 !dbg !2100 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca [1025 x i8], align 16
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2101, metadata !DIExpression()), !dbg !2102
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2103, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2105, metadata !DIExpression()), !dbg !2106
  store i32 -1, ptr %5, align 4, !dbg !2106
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2107, metadata !DIExpression()), !dbg !2108
  %8 = call ptr @get_redis_connection(), !dbg !2109
  store ptr %8, ptr %6, align 8, !dbg !2108
  %9 = load ptr, ptr %6, align 8, !dbg !2110
  %10 = icmp ne ptr %9, null, !dbg !2110
  br i1 %10, label %11, label %21, !dbg !2112

11:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2113, metadata !DIExpression()), !dbg !2115
  %12 = getelementptr inbounds [1025 x i8], ptr %7, i64 0, i64 0, !dbg !2116
  %13 = load ptr, ptr %3, align 8, !dbg !2117
  %14 = load ptr, ptr %4, align 8, !dbg !2118
  %15 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %12, i64 noundef 1025, ptr noundef @.str.57, ptr noundef %13, ptr noundef %14) #7, !dbg !2119
  %16 = load ptr, ptr %6, align 8, !dbg !2120
  %17 = getelementptr inbounds [1025 x i8], ptr %7, i64 0, i64 0, !dbg !2121
  %18 = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %16, ptr noundef %17), !dbg !2122
  call void @turnFreeRedisReply(ptr noundef %18), !dbg !2123
  %19 = load ptr, ptr %6, align 8, !dbg !2124
  %20 = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %19, ptr noundef @.str.44), !dbg !2125
  call void @turnFreeRedisReply(ptr noundef %20), !dbg !2126
  store i32 0, ptr %5, align 4, !dbg !2127
  br label %21, !dbg !2128

21:                                               ; preds = %11, %2
  %22 = load i32, ptr %5, align 4, !dbg !2129
  ret i32 %22, !dbg !2130
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @redis_del_origin(ptr noundef %0) #0 !dbg !2131 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca [1025 x i8], align 16
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2132, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2134, metadata !DIExpression()), !dbg !2135
  store i32 -1, ptr %3, align 4, !dbg !2135
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2136, metadata !DIExpression()), !dbg !2137
  %6 = call ptr @get_redis_connection(), !dbg !2138
  store ptr %6, ptr %4, align 8, !dbg !2137
  %7 = load ptr, ptr %4, align 8, !dbg !2139
  %8 = icmp ne ptr %7, null, !dbg !2139
  br i1 %8, label %9, label %18, !dbg !2141

9:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2142, metadata !DIExpression()), !dbg !2144
  %10 = getelementptr inbounds [1025 x i8], ptr %5, i64 0, i64 0, !dbg !2145
  %11 = load ptr, ptr %2, align 8, !dbg !2146
  %12 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %10, i64 noundef 1025, ptr noundef @.str.58, ptr noundef %11) #7, !dbg !2147
  %13 = load ptr, ptr %4, align 8, !dbg !2148
  %14 = getelementptr inbounds [1025 x i8], ptr %5, i64 0, i64 0, !dbg !2149
  %15 = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %13, ptr noundef %14), !dbg !2150
  call void @turnFreeRedisReply(ptr noundef %15), !dbg !2151
  %16 = load ptr, ptr %4, align 8, !dbg !2152
  %17 = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %16, ptr noundef @.str.44), !dbg !2153
  call void @turnFreeRedisReply(ptr noundef %17), !dbg !2154
  store i32 0, ptr %3, align 4, !dbg !2155
  br label %18, !dbg !2156

18:                                               ; preds = %9, %1
  %19 = load i32, ptr %3, align 4, !dbg !2157
  ret i32 %19, !dbg !2158
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @redis_list_origins(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !2159 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca [128 x i8], align 16
  %9 = alloca ptr, align 8
  %10 = alloca %struct._secrets_list, align 8
  %11 = alloca i64, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2160, metadata !DIExpression()), !dbg !2161
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2162, metadata !DIExpression()), !dbg !2163
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2164, metadata !DIExpression()), !dbg !2165
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2166, metadata !DIExpression()), !dbg !2167
  store i32 -1, ptr %7, align 4, !dbg !2167
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2168, metadata !DIExpression()), !dbg !2169
  call void @llvm.memset.p0.i64(ptr align 16 %8, i8 0, i64 128, i1 false), !dbg !2169
  %16 = load ptr, ptr %4, align 8, !dbg !2170
  %17 = icmp ne ptr %16, null, !dbg !2170
  br i1 %17, label %20, label %18, !dbg !2172

18:                                               ; preds = %3
  %19 = getelementptr inbounds [128 x i8], ptr %8, i64 0, i64 0, !dbg !2173
  store ptr %19, ptr %4, align 8, !dbg !2174
  br label %20, !dbg !2175

20:                                               ; preds = %18, %3
  store i32 1, ptr @donot_print_connection_success, align 4, !dbg !2176
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2177, metadata !DIExpression()), !dbg !2178
  %21 = call ptr @get_redis_connection(), !dbg !2179
  store ptr %21, ptr %9, align 8, !dbg !2178
  %22 = load ptr, ptr %9, align 8, !dbg !2180
  %23 = icmp ne ptr %22, null, !dbg !2180
  br i1 %23, label %24, label %165, !dbg !2182

24:                                               ; preds = %20
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2183, metadata !DIExpression()), !dbg !2185
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2186, metadata !DIExpression()), !dbg !2187
  store i64 0, ptr %11, align 8, !dbg !2187
  call void @init_secrets_list(ptr noundef %10), !dbg !2188
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2189, metadata !DIExpression()), !dbg !2190
  store ptr null, ptr %12, align 8, !dbg !2190
  %25 = load ptr, ptr %9, align 8, !dbg !2191
  %26 = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %25, ptr noundef @.str.59), !dbg !2193
  store ptr %26, ptr %12, align 8, !dbg !2194
  %27 = load ptr, ptr %12, align 8, !dbg !2195
  %28 = icmp ne ptr %27, null, !dbg !2195
  br i1 %28, label %29, label %78, !dbg !2197

29:                                               ; preds = %24
  %30 = load ptr, ptr %12, align 8, !dbg !2198
  %31 = getelementptr inbounds %struct.redisReply, ptr %30, i32 0, i32 0, !dbg !2201
  %32 = load i32, ptr %31, align 8, !dbg !2201
  %33 = icmp eq i32 %32, 6, !dbg !2202
  br i1 %33, label %34, label %38, !dbg !2203

34:                                               ; preds = %29
  %35 = load ptr, ptr %12, align 8, !dbg !2204
  %36 = getelementptr inbounds %struct.redisReply, ptr %35, i32 0, i32 3, !dbg !2205
  %37 = load ptr, ptr %36, align 8, !dbg !2205
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.7, ptr noundef %37), !dbg !2206
  br label %76, !dbg !2206

38:                                               ; preds = %29
  %39 = load ptr, ptr %12, align 8, !dbg !2207
  %40 = getelementptr inbounds %struct.redisReply, ptr %39, i32 0, i32 0, !dbg !2209
  %41 = load i32, ptr %40, align 8, !dbg !2209
  %42 = icmp ne i32 %41, 2, !dbg !2210
  br i1 %42, label %43, label %53, !dbg !2211

43:                                               ; preds = %38
  %44 = load ptr, ptr %12, align 8, !dbg !2212
  %45 = getelementptr inbounds %struct.redisReply, ptr %44, i32 0, i32 0, !dbg !2215
  %46 = load i32, ptr %45, align 8, !dbg !2215
  %47 = icmp ne i32 %46, 4, !dbg !2216
  br i1 %47, label %48, label %52, !dbg !2217

48:                                               ; preds = %43
  %49 = load ptr, ptr %12, align 8, !dbg !2218
  %50 = getelementptr inbounds %struct.redisReply, ptr %49, i32 0, i32 0, !dbg !2219
  %51 = load i32, ptr %50, align 8, !dbg !2219
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.8, i32 noundef %51), !dbg !2220
  br label %52, !dbg !2220

52:                                               ; preds = %48, %43
  br label %75, !dbg !2221

53:                                               ; preds = %38
  call void @llvm.dbg.declare(metadata ptr %13, metadata !2222, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2225, metadata !DIExpression()), !dbg !2226
  store i64 12, ptr %14, align 8, !dbg !2226
  store i64 0, ptr %13, align 8, !dbg !2227
  br label %54, !dbg !2229

54:                                               ; preds = %71, %53
  %55 = load i64, ptr %13, align 8, !dbg !2230
  %56 = load ptr, ptr %12, align 8, !dbg !2232
  %57 = getelementptr inbounds %struct.redisReply, ptr %56, i32 0, i32 4, !dbg !2233
  %58 = load i64, ptr %57, align 8, !dbg !2233
  %59 = icmp ult i64 %55, %58, !dbg !2234
  br i1 %59, label %60, label %74, !dbg !2235

60:                                               ; preds = %54
  %61 = load ptr, ptr %12, align 8, !dbg !2236
  %62 = getelementptr inbounds %struct.redisReply, ptr %61, i32 0, i32 5, !dbg !2238
  %63 = load ptr, ptr %62, align 8, !dbg !2238
  %64 = load i64, ptr %13, align 8, !dbg !2239
  %65 = getelementptr inbounds ptr, ptr %63, i64 %64, !dbg !2236
  %66 = load ptr, ptr %65, align 8, !dbg !2236
  %67 = getelementptr inbounds %struct.redisReply, ptr %66, i32 0, i32 3, !dbg !2240
  %68 = load ptr, ptr %67, align 8, !dbg !2240
  %69 = load i64, ptr %14, align 8, !dbg !2241
  %70 = getelementptr inbounds i8, ptr %68, i64 %69, !dbg !2242
  call void @add_to_secrets_list(ptr noundef %10, ptr noundef %70), !dbg !2243
  br label %71, !dbg !2244

71:                                               ; preds = %60
  %72 = load i64, ptr %13, align 8, !dbg !2245
  %73 = add i64 %72, 1, !dbg !2245
  store i64 %73, ptr %13, align 8, !dbg !2245
  br label %54, !dbg !2246, !llvm.loop !2247

74:                                               ; preds = %54
  br label %75

75:                                               ; preds = %74, %52
  br label %76

76:                                               ; preds = %75, %34
  %77 = load ptr, ptr %12, align 8, !dbg !2249
  call void @turnFreeRedisReply(ptr noundef %77), !dbg !2250
  br label %78, !dbg !2251

78:                                               ; preds = %76, %24
  store i64 0, ptr %11, align 8, !dbg !2252
  br label %79, !dbg !2254

79:                                               ; preds = %161, %78
  %80 = load i64, ptr %11, align 8, !dbg !2255
  %81 = getelementptr inbounds %struct._secrets_list, ptr %10, i32 0, i32 1, !dbg !2257
  %82 = load i64, ptr %81, align 8, !dbg !2257
  %83 = icmp ult i64 %80, %82, !dbg !2258
  br i1 %83, label %84, label %164, !dbg !2259

84:                                               ; preds = %79
  call void @llvm.dbg.declare(metadata ptr %15, metadata !2260, metadata !DIExpression()), !dbg !2262
  %85 = getelementptr inbounds %struct._secrets_list, ptr %10, i32 0, i32 0, !dbg !2263
  %86 = load ptr, ptr %85, align 8, !dbg !2263
  %87 = load i64, ptr %11, align 8, !dbg !2264
  %88 = getelementptr inbounds ptr, ptr %86, i64 %87, !dbg !2265
  %89 = load ptr, ptr %88, align 8, !dbg !2265
  store ptr %89, ptr %15, align 8, !dbg !2262
  %90 = load ptr, ptr %9, align 8, !dbg !2266
  %91 = load ptr, ptr %15, align 8, !dbg !2267
  %92 = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %90, ptr noundef @.str.60, ptr noundef %91), !dbg !2268
  store ptr %92, ptr %12, align 8, !dbg !2269
  %93 = load ptr, ptr %12, align 8, !dbg !2270
  %94 = icmp ne ptr %93, null, !dbg !2270
  br i1 %94, label %95, label %160, !dbg !2272

95:                                               ; preds = %84
  %96 = load ptr, ptr %12, align 8, !dbg !2273
  %97 = getelementptr inbounds %struct.redisReply, ptr %96, i32 0, i32 0, !dbg !2276
  %98 = load i32, ptr %97, align 8, !dbg !2276
  %99 = icmp eq i32 %98, 6, !dbg !2277
  br i1 %99, label %100, label %104, !dbg !2278

100:                                              ; preds = %95
  %101 = load ptr, ptr %12, align 8, !dbg !2279
  %102 = getelementptr inbounds %struct.redisReply, ptr %101, i32 0, i32 3, !dbg !2280
  %103 = load ptr, ptr %102, align 8, !dbg !2280
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.7, ptr noundef %103), !dbg !2281
  br label %158, !dbg !2281

104:                                              ; preds = %95
  %105 = load ptr, ptr %12, align 8, !dbg !2282
  %106 = getelementptr inbounds %struct.redisReply, ptr %105, i32 0, i32 0, !dbg !2284
  %107 = load i32, ptr %106, align 8, !dbg !2284
  %108 = icmp ne i32 %107, 1, !dbg !2285
  br i1 %108, label %109, label %119, !dbg !2286

109:                                              ; preds = %104
  %110 = load ptr, ptr %12, align 8, !dbg !2287
  %111 = getelementptr inbounds %struct.redisReply, ptr %110, i32 0, i32 0, !dbg !2290
  %112 = load i32, ptr %111, align 8, !dbg !2290
  %113 = icmp ne i32 %112, 4, !dbg !2291
  br i1 %113, label %114, label %118, !dbg !2292

114:                                              ; preds = %109
  %115 = load ptr, ptr %12, align 8, !dbg !2293
  %116 = getelementptr inbounds %struct.redisReply, ptr %115, i32 0, i32 0, !dbg !2294
  %117 = load i32, ptr %116, align 8, !dbg !2294
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.8, i32 noundef %117), !dbg !2295
  br label %118, !dbg !2295

118:                                              ; preds = %114, %109
  br label %157, !dbg !2296

119:                                              ; preds = %104
  %120 = load ptr, ptr %4, align 8, !dbg !2297
  %121 = icmp ne ptr %120, null, !dbg !2297
  br i1 %121, label %122, label %135, !dbg !2300

122:                                              ; preds = %119
  %123 = load ptr, ptr %4, align 8, !dbg !2301
  %124 = getelementptr inbounds i8, ptr %123, i64 0, !dbg !2301
  %125 = load i8, ptr %124, align 1, !dbg !2301
  %126 = zext i8 %125 to i32, !dbg !2301
  %127 = icmp ne i32 %126, 0, !dbg !2301
  br i1 %127, label %128, label %135, !dbg !2302

128:                                              ; preds = %122
  %129 = load ptr, ptr %4, align 8, !dbg !2303
  %130 = load ptr, ptr %12, align 8, !dbg !2304
  %131 = getelementptr inbounds %struct.redisReply, ptr %130, i32 0, i32 3, !dbg !2305
  %132 = load ptr, ptr %131, align 8, !dbg !2305
  %133 = call i32 @strcmp(ptr noundef %129, ptr noundef %132) #8, !dbg !2306
  %134 = icmp ne i32 %133, 0, !dbg !2306
  br i1 %134, label %156, label %135, !dbg !2307

135:                                              ; preds = %128, %122, %119
  %136 = load ptr, ptr %5, align 8, !dbg !2308
  %137 = icmp ne ptr %136, null, !dbg !2308
  br i1 %137, label %138, label %149, !dbg !2311

138:                                              ; preds = %135
  %139 = load ptr, ptr %5, align 8, !dbg !2312
  %140 = load ptr, ptr %15, align 8, !dbg !2314
  call void @add_to_secrets_list(ptr noundef %139, ptr noundef %140), !dbg !2315
  %141 = load ptr, ptr %6, align 8, !dbg !2316
  %142 = icmp ne ptr %141, null, !dbg !2316
  br i1 %142, label %143, label %148, !dbg !2318

143:                                              ; preds = %138
  %144 = load ptr, ptr %6, align 8, !dbg !2319
  %145 = load ptr, ptr %12, align 8, !dbg !2321
  %146 = getelementptr inbounds %struct.redisReply, ptr %145, i32 0, i32 3, !dbg !2322
  %147 = load ptr, ptr %146, align 8, !dbg !2322
  call void @add_to_secrets_list(ptr noundef %144, ptr noundef %147), !dbg !2323
  br label %148, !dbg !2324

148:                                              ; preds = %143, %138
  br label %155, !dbg !2325

149:                                              ; preds = %135
  %150 = load ptr, ptr %15, align 8, !dbg !2326
  %151 = load ptr, ptr %12, align 8, !dbg !2328
  %152 = getelementptr inbounds %struct.redisReply, ptr %151, i32 0, i32 3, !dbg !2329
  %153 = load ptr, ptr %152, align 8, !dbg !2329
  %154 = call i32 (ptr, ...) @printf(ptr noundef @.str.61, ptr noundef %150, ptr noundef %153), !dbg !2330
  br label %155

155:                                              ; preds = %149, %148
  br label %156, !dbg !2331

156:                                              ; preds = %155, %128
  br label %157

157:                                              ; preds = %156, %118
  br label %158

158:                                              ; preds = %157, %100
  %159 = load ptr, ptr %12, align 8, !dbg !2332
  call void @turnFreeRedisReply(ptr noundef %159), !dbg !2333
  br label %160, !dbg !2334

160:                                              ; preds = %158, %84
  br label %161, !dbg !2335

161:                                              ; preds = %160
  %162 = load i64, ptr %11, align 8, !dbg !2336
  %163 = add i64 %162, 1, !dbg !2336
  store i64 %163, ptr %11, align 8, !dbg !2336
  br label %79, !dbg !2337, !llvm.loop !2338

164:                                              ; preds = %79
  call void @clean_secrets_list(ptr noundef %10), !dbg !2340
  store i32 0, ptr %7, align 4, !dbg !2341
  br label %165, !dbg !2342

165:                                              ; preds = %164, %20
  %166 = load i32, ptr %7, align 4, !dbg !2343
  ret i32 %166, !dbg !2344
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @redis_set_realm_option_one(ptr noundef %0, i64 noundef %1, ptr noundef %2) #0 !dbg !2345 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca [1025 x i8], align 16
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2346, metadata !DIExpression()), !dbg !2347
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2348, metadata !DIExpression()), !dbg !2349
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2350, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2352, metadata !DIExpression()), !dbg !2353
  store i32 -1, ptr %7, align 4, !dbg !2353
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2354, metadata !DIExpression()), !dbg !2355
  %10 = call ptr @get_redis_connection(), !dbg !2356
  store ptr %10, ptr %8, align 8, !dbg !2355
  %11 = load ptr, ptr %8, align 8, !dbg !2357
  %12 = icmp ne ptr %11, null, !dbg !2357
  br i1 %12, label %13, label %33, !dbg !2359

13:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2360, metadata !DIExpression()), !dbg !2362
  %14 = load i64, ptr %5, align 8, !dbg !2363
  %15 = icmp ugt i64 %14, 0, !dbg !2365
  br i1 %15, label %16, label %22, !dbg !2366

16:                                               ; preds = %13
  %17 = getelementptr inbounds [1025 x i8], ptr %9, i64 0, i64 0, !dbg !2367
  %18 = load ptr, ptr %4, align 8, !dbg !2368
  %19 = load ptr, ptr %6, align 8, !dbg !2369
  %20 = load i64, ptr %5, align 8, !dbg !2370
  %21 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %17, i64 noundef 1025, ptr noundef @.str.62, ptr noundef %18, ptr noundef %19, i64 noundef %20) #7, !dbg !2371
  br label %27, !dbg !2371

22:                                               ; preds = %13
  %23 = getelementptr inbounds [1025 x i8], ptr %9, i64 0, i64 0, !dbg !2372
  %24 = load ptr, ptr %4, align 8, !dbg !2373
  %25 = load ptr, ptr %6, align 8, !dbg !2374
  %26 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %23, i64 noundef 1025, ptr noundef @.str.63, ptr noundef %24, ptr noundef %25) #7, !dbg !2375
  br label %27

27:                                               ; preds = %22, %16
  %28 = load ptr, ptr %8, align 8, !dbg !2376
  %29 = getelementptr inbounds [1025 x i8], ptr %9, i64 0, i64 0, !dbg !2377
  %30 = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %28, ptr noundef %29), !dbg !2378
  call void @turnFreeRedisReply(ptr noundef %30), !dbg !2379
  %31 = load ptr, ptr %8, align 8, !dbg !2380
  %32 = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %31, ptr noundef @.str.44), !dbg !2381
  call void @turnFreeRedisReply(ptr noundef %32), !dbg !2382
  store i32 0, ptr %7, align 4, !dbg !2383
  br label %33, !dbg !2384

33:                                               ; preds = %27, %3
  %34 = load i32, ptr %7, align 4, !dbg !2385
  ret i32 %34, !dbg !2386
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @redis_list_realm_options(ptr noundef %0) #0 !dbg !2387 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca %struct._secrets_list, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2388, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2390, metadata !DIExpression()), !dbg !2391
  store i32 -1, ptr %3, align 4, !dbg !2391
  store i32 1, ptr @donot_print_connection_success, align 4, !dbg !2392
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2393, metadata !DIExpression()), !dbg !2394
  %11 = call ptr @get_redis_connection(), !dbg !2395
  store ptr %11, ptr %4, align 8, !dbg !2394
  %12 = load ptr, ptr %4, align 8, !dbg !2396
  %13 = icmp ne ptr %12, null, !dbg !2396
  br i1 %13, label %14, label %171, !dbg !2398

14:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2399, metadata !DIExpression()), !dbg !2401
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2402, metadata !DIExpression()), !dbg !2403
  store i64 0, ptr %6, align 8, !dbg !2403
  call void @init_secrets_list(ptr noundef %5), !dbg !2404
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2405, metadata !DIExpression()), !dbg !2406
  store ptr null, ptr %7, align 8, !dbg !2406
  %15 = load ptr, ptr %2, align 8, !dbg !2407
  %16 = icmp ne ptr %15, null, !dbg !2407
  br i1 %16, label %17, label %27, !dbg !2410

17:                                               ; preds = %14
  %18 = load ptr, ptr %2, align 8, !dbg !2411
  %19 = getelementptr inbounds i8, ptr %18, i64 0, !dbg !2411
  %20 = load i8, ptr %19, align 1, !dbg !2411
  %21 = zext i8 %20 to i32, !dbg !2411
  %22 = icmp ne i32 %21, 0, !dbg !2411
  br i1 %22, label %23, label %27, !dbg !2412

23:                                               ; preds = %17
  %24 = load ptr, ptr %4, align 8, !dbg !2413
  %25 = load ptr, ptr %2, align 8, !dbg !2415
  %26 = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %24, ptr noundef @.str.64, ptr noundef %25), !dbg !2416
  store ptr %26, ptr %7, align 8, !dbg !2417
  br label %30, !dbg !2418

27:                                               ; preds = %17, %14
  %28 = load ptr, ptr %4, align 8, !dbg !2419
  %29 = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %28, ptr noundef @.str.65), !dbg !2421
  store ptr %29, ptr %7, align 8, !dbg !2422
  br label %30

30:                                               ; preds = %27, %23
  %31 = load ptr, ptr %7, align 8, !dbg !2423
  %32 = icmp ne ptr %31, null, !dbg !2423
  br i1 %32, label %33, label %114, !dbg !2425

33:                                               ; preds = %30
  %34 = load ptr, ptr %7, align 8, !dbg !2426
  %35 = getelementptr inbounds %struct.redisReply, ptr %34, i32 0, i32 0, !dbg !2429
  %36 = load i32, ptr %35, align 8, !dbg !2429
  %37 = icmp eq i32 %36, 6, !dbg !2430
  br i1 %37, label %38, label %42, !dbg !2431

38:                                               ; preds = %33
  %39 = load ptr, ptr %7, align 8, !dbg !2432
  %40 = getelementptr inbounds %struct.redisReply, ptr %39, i32 0, i32 3, !dbg !2433
  %41 = load ptr, ptr %40, align 8, !dbg !2433
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.7, ptr noundef %41), !dbg !2434
  br label %112, !dbg !2434

42:                                               ; preds = %33
  %43 = load ptr, ptr %7, align 8, !dbg !2435
  %44 = getelementptr inbounds %struct.redisReply, ptr %43, i32 0, i32 0, !dbg !2437
  %45 = load i32, ptr %44, align 8, !dbg !2437
  %46 = icmp ne i32 %45, 2, !dbg !2438
  br i1 %46, label %47, label %57, !dbg !2439

47:                                               ; preds = %42
  %48 = load ptr, ptr %7, align 8, !dbg !2440
  %49 = getelementptr inbounds %struct.redisReply, ptr %48, i32 0, i32 0, !dbg !2443
  %50 = load i32, ptr %49, align 8, !dbg !2443
  %51 = icmp ne i32 %50, 4, !dbg !2444
  br i1 %51, label %52, label %56, !dbg !2445

52:                                               ; preds = %47
  %53 = load ptr, ptr %7, align 8, !dbg !2446
  %54 = getelementptr inbounds %struct.redisReply, ptr %53, i32 0, i32 0, !dbg !2447
  %55 = load i32, ptr %54, align 8, !dbg !2447
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.8, i32 noundef %55), !dbg !2448
  br label %56, !dbg !2448

56:                                               ; preds = %52, %47
  br label %111, !dbg !2449

57:                                               ; preds = %42
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2450, metadata !DIExpression()), !dbg !2452
  store i64 0, ptr %8, align 8, !dbg !2453
  br label %58, !dbg !2455

58:                                               ; preds = %107, %57
  %59 = load i64, ptr %8, align 8, !dbg !2456
  %60 = load ptr, ptr %7, align 8, !dbg !2458
  %61 = getelementptr inbounds %struct.redisReply, ptr %60, i32 0, i32 4, !dbg !2459
  %62 = load i64, ptr %61, align 8, !dbg !2459
  %63 = icmp ult i64 %59, %62, !dbg !2460
  br i1 %63, label %64, label %110, !dbg !2461

64:                                               ; preds = %58
  %65 = load ptr, ptr %7, align 8, !dbg !2462
  %66 = getelementptr inbounds %struct.redisReply, ptr %65, i32 0, i32 5, !dbg !2465
  %67 = load ptr, ptr %66, align 8, !dbg !2465
  %68 = load i64, ptr %8, align 8, !dbg !2466
  %69 = getelementptr inbounds ptr, ptr %67, i64 %68, !dbg !2462
  %70 = load ptr, ptr %69, align 8, !dbg !2462
  %71 = getelementptr inbounds %struct.redisReply, ptr %70, i32 0, i32 3, !dbg !2467
  %72 = load ptr, ptr %71, align 8, !dbg !2467
  %73 = call ptr @strstr(ptr noundef %72, ptr noundef @.str.66) #8, !dbg !2468
  %74 = icmp ne ptr %73, null, !dbg !2468
  br i1 %74, label %97, label %75, !dbg !2469

75:                                               ; preds = %64
  %76 = load ptr, ptr %7, align 8, !dbg !2470
  %77 = getelementptr inbounds %struct.redisReply, ptr %76, i32 0, i32 5, !dbg !2471
  %78 = load ptr, ptr %77, align 8, !dbg !2471
  %79 = load i64, ptr %8, align 8, !dbg !2472
  %80 = getelementptr inbounds ptr, ptr %78, i64 %79, !dbg !2470
  %81 = load ptr, ptr %80, align 8, !dbg !2470
  %82 = getelementptr inbounds %struct.redisReply, ptr %81, i32 0, i32 3, !dbg !2473
  %83 = load ptr, ptr %82, align 8, !dbg !2473
  %84 = call ptr @strstr(ptr noundef %83, ptr noundef @.str.67) #8, !dbg !2474
  %85 = icmp ne ptr %84, null, !dbg !2474
  br i1 %85, label %97, label %86, !dbg !2475

86:                                               ; preds = %75
  %87 = load ptr, ptr %7, align 8, !dbg !2476
  %88 = getelementptr inbounds %struct.redisReply, ptr %87, i32 0, i32 5, !dbg !2477
  %89 = load ptr, ptr %88, align 8, !dbg !2477
  %90 = load i64, ptr %8, align 8, !dbg !2478
  %91 = getelementptr inbounds ptr, ptr %89, i64 %90, !dbg !2476
  %92 = load ptr, ptr %91, align 8, !dbg !2476
  %93 = getelementptr inbounds %struct.redisReply, ptr %92, i32 0, i32 3, !dbg !2479
  %94 = load ptr, ptr %93, align 8, !dbg !2479
  %95 = call ptr @strstr(ptr noundef %94, ptr noundef @.str.68) #8, !dbg !2480
  %96 = icmp ne ptr %95, null, !dbg !2480
  br i1 %96, label %97, label %106, !dbg !2481

97:                                               ; preds = %86, %75, %64
  %98 = load ptr, ptr %7, align 8, !dbg !2482
  %99 = getelementptr inbounds %struct.redisReply, ptr %98, i32 0, i32 5, !dbg !2484
  %100 = load ptr, ptr %99, align 8, !dbg !2484
  %101 = load i64, ptr %8, align 8, !dbg !2485
  %102 = getelementptr inbounds ptr, ptr %100, i64 %101, !dbg !2482
  %103 = load ptr, ptr %102, align 8, !dbg !2482
  %104 = getelementptr inbounds %struct.redisReply, ptr %103, i32 0, i32 3, !dbg !2486
  %105 = load ptr, ptr %104, align 8, !dbg !2486
  call void @add_to_secrets_list(ptr noundef %5, ptr noundef %105), !dbg !2487
  br label %106, !dbg !2488

106:                                              ; preds = %97, %86
  br label %107, !dbg !2489

107:                                              ; preds = %106
  %108 = load i64, ptr %8, align 8, !dbg !2490
  %109 = add i64 %108, 1, !dbg !2490
  store i64 %109, ptr %8, align 8, !dbg !2490
  br label %58, !dbg !2491, !llvm.loop !2492

110:                                              ; preds = %58
  br label %111

111:                                              ; preds = %110, %56
  br label %112

112:                                              ; preds = %111, %38
  %113 = load ptr, ptr %7, align 8, !dbg !2494
  call void @turnFreeRedisReply(ptr noundef %113), !dbg !2495
  br label %114, !dbg !2496

114:                                              ; preds = %112, %30
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2497, metadata !DIExpression()), !dbg !2498
  store i64 11, ptr %9, align 8, !dbg !2498
  store i64 0, ptr %6, align 8, !dbg !2499
  br label %115, !dbg !2501

115:                                              ; preds = %167, %114
  %116 = load i64, ptr %6, align 8, !dbg !2502
  %117 = getelementptr inbounds %struct._secrets_list, ptr %5, i32 0, i32 1, !dbg !2504
  %118 = load i64, ptr %117, align 8, !dbg !2504
  %119 = icmp ult i64 %116, %118, !dbg !2505
  br i1 %119, label %120, label %170, !dbg !2506

120:                                              ; preds = %115
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2507, metadata !DIExpression()), !dbg !2509
  %121 = getelementptr inbounds %struct._secrets_list, ptr %5, i32 0, i32 0, !dbg !2510
  %122 = load ptr, ptr %121, align 8, !dbg !2510
  %123 = load i64, ptr %6, align 8, !dbg !2511
  %124 = getelementptr inbounds ptr, ptr %122, i64 %123, !dbg !2512
  %125 = load ptr, ptr %124, align 8, !dbg !2512
  store ptr %125, ptr %10, align 8, !dbg !2509
  %126 = load ptr, ptr %4, align 8, !dbg !2513
  %127 = load ptr, ptr %10, align 8, !dbg !2514
  %128 = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %126, ptr noundef @.str.69, ptr noundef %127), !dbg !2515
  store ptr %128, ptr %7, align 8, !dbg !2516
  %129 = load ptr, ptr %7, align 8, !dbg !2517
  %130 = icmp ne ptr %129, null, !dbg !2517
  br i1 %130, label %131, label %166, !dbg !2519

131:                                              ; preds = %120
  %132 = load ptr, ptr %7, align 8, !dbg !2520
  %133 = getelementptr inbounds %struct.redisReply, ptr %132, i32 0, i32 0, !dbg !2523
  %134 = load i32, ptr %133, align 8, !dbg !2523
  %135 = icmp eq i32 %134, 6, !dbg !2524
  br i1 %135, label %136, label %140, !dbg !2525

136:                                              ; preds = %131
  %137 = load ptr, ptr %7, align 8, !dbg !2526
  %138 = getelementptr inbounds %struct.redisReply, ptr %137, i32 0, i32 3, !dbg !2527
  %139 = load ptr, ptr %138, align 8, !dbg !2527
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.7, ptr noundef %139), !dbg !2528
  br label %164, !dbg !2528

140:                                              ; preds = %131
  %141 = load ptr, ptr %7, align 8, !dbg !2529
  %142 = getelementptr inbounds %struct.redisReply, ptr %141, i32 0, i32 0, !dbg !2531
  %143 = load i32, ptr %142, align 8, !dbg !2531
  %144 = icmp ne i32 %143, 1, !dbg !2532
  br i1 %144, label %145, label %155, !dbg !2533

145:                                              ; preds = %140
  %146 = load ptr, ptr %7, align 8, !dbg !2534
  %147 = getelementptr inbounds %struct.redisReply, ptr %146, i32 0, i32 0, !dbg !2537
  %148 = load i32, ptr %147, align 8, !dbg !2537
  %149 = icmp ne i32 %148, 4, !dbg !2538
  br i1 %149, label %150, label %154, !dbg !2539

150:                                              ; preds = %145
  %151 = load ptr, ptr %7, align 8, !dbg !2540
  %152 = getelementptr inbounds %struct.redisReply, ptr %151, i32 0, i32 0, !dbg !2541
  %153 = load i32, ptr %152, align 8, !dbg !2541
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.8, i32 noundef %153), !dbg !2542
  br label %154, !dbg !2542

154:                                              ; preds = %150, %145
  br label %163, !dbg !2543

155:                                              ; preds = %140
  %156 = load ptr, ptr %10, align 8, !dbg !2544
  %157 = load i64, ptr %9, align 8, !dbg !2546
  %158 = getelementptr inbounds i8, ptr %156, i64 %157, !dbg !2547
  %159 = load ptr, ptr %7, align 8, !dbg !2548
  %160 = getelementptr inbounds %struct.redisReply, ptr %159, i32 0, i32 3, !dbg !2549
  %161 = load ptr, ptr %160, align 8, !dbg !2549
  %162 = call i32 (ptr, ...) @printf(ptr noundef @.str.70, ptr noundef %158, ptr noundef %161), !dbg !2550
  br label %163

163:                                              ; preds = %155, %154
  br label %164

164:                                              ; preds = %163, %136
  %165 = load ptr, ptr %7, align 8, !dbg !2551
  call void @turnFreeRedisReply(ptr noundef %165), !dbg !2552
  br label %166, !dbg !2553

166:                                              ; preds = %164, %120
  br label %167, !dbg !2554

167:                                              ; preds = %166
  %168 = load i64, ptr %6, align 8, !dbg !2555
  %169 = add i64 %168, 1, !dbg !2555
  store i64 %169, ptr %6, align 8, !dbg !2555
  br label %115, !dbg !2556, !llvm.loop !2557

170:                                              ; preds = %115
  call void @clean_secrets_list(ptr noundef %5), !dbg !2559
  store i32 0, ptr %3, align 4, !dbg !2560
  br label %171, !dbg !2561

171:                                              ; preds = %170, %1
  %172 = load i32, ptr %3, align 4, !dbg !2562
  ret i32 %172, !dbg !2563
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @redis_auth_ping(ptr noundef %0) #0 !dbg !2564 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2565, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2567, metadata !DIExpression()), !dbg !2568
  %4 = call ptr @get_redis_connection(), !dbg !2569
  store ptr %4, ptr %3, align 8, !dbg !2568
  %5 = load ptr, ptr %3, align 8, !dbg !2570
  %6 = icmp ne ptr %5, null, !dbg !2570
  br i1 %6, label %7, label %10, !dbg !2572

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8, !dbg !2573
  %9 = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %8, ptr noundef @.str.59), !dbg !2575
  call void @turnFreeRedisReply(ptr noundef %9), !dbg !2576
  br label %10, !dbg !2577

10:                                               ; preds = %7, %1
  %11 = load ptr, ptr %2, align 8, !dbg !2578
  %12 = icmp ne ptr %11, null, !dbg !2578
  br i1 %12, label %13, label %15, !dbg !2580

13:                                               ; preds = %10
  %14 = load ptr, ptr %2, align 8, !dbg !2581
  call void (ptr, ptr, ptr, ptr, ...) @send_message_to_redis(ptr noundef %14, ptr noundef @.str.71, ptr noundef @.str.72, ptr noundef @.str.73), !dbg !2582
  br label %15, !dbg !2582

15:                                               ; preds = %13, %10
  ret void, !dbg !2583
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @redis_get_ip_list(ptr noundef %0, ptr noundef %1) #0 !dbg !2584 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca [1025 x i8], align 16
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca %struct._secrets_list, align 8
  %12 = alloca i64, align 8
  %13 = alloca [257 x i8], align 16
  %14 = alloca i64, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2585, metadata !DIExpression()), !dbg !2586
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2587, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2589, metadata !DIExpression()), !dbg !2590
  store i32 -1, ptr %5, align 4, !dbg !2590
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2591, metadata !DIExpression()), !dbg !2592
  %20 = call ptr @get_redis_connection(), !dbg !2593
  store ptr %20, ptr %6, align 8, !dbg !2592
  %21 = load ptr, ptr %6, align 8, !dbg !2594
  %22 = icmp ne ptr %21, null, !dbg !2594
  br i1 %22, label %23, label %189, !dbg !2596

23:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2597, metadata !DIExpression()), !dbg !2599
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2600, metadata !DIExpression()), !dbg !2601
  store ptr @.str.48, ptr %8, align 8, !dbg !2601
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2602, metadata !DIExpression()), !dbg !2603
  %24 = load ptr, ptr %8, align 8, !dbg !2604
  %25 = call i64 @strlen(ptr noundef %24) #8, !dbg !2605
  store i64 %25, ptr %9, align 8, !dbg !2603
  %26 = getelementptr inbounds [1025 x i8], ptr %7, i64 0, i64 0, !dbg !2606
  %27 = load ptr, ptr %8, align 8, !dbg !2607
  %28 = load ptr, ptr %3, align 8, !dbg !2608
  %29 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %26, i64 noundef 1025, ptr noundef @.str.74, ptr noundef %27, ptr noundef %28) #7, !dbg !2609
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2610, metadata !DIExpression()), !dbg !2611
  %30 = load ptr, ptr %6, align 8, !dbg !2612
  %31 = getelementptr inbounds [1025 x i8], ptr %7, i64 0, i64 0, !dbg !2613
  %32 = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %30, ptr noundef %31), !dbg !2614
  store ptr %32, ptr %10, align 8, !dbg !2611
  %33 = load ptr, ptr %10, align 8, !dbg !2615
  %34 = icmp ne ptr %33, null, !dbg !2615
  br i1 %34, label %35, label %188, !dbg !2617

35:                                               ; preds = %23
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2618, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2621, metadata !DIExpression()), !dbg !2622
  store i64 0, ptr %12, align 8, !dbg !2622
  call void @llvm.dbg.declare(metadata ptr %13, metadata !2623, metadata !DIExpression()), !dbg !2624
  call void @init_secrets_list(ptr noundef %11), !dbg !2625
  %36 = load ptr, ptr %10, align 8, !dbg !2626
  %37 = getelementptr inbounds %struct.redisReply, ptr %36, i32 0, i32 0, !dbg !2628
  %38 = load i32, ptr %37, align 8, !dbg !2628
  %39 = icmp eq i32 %38, 6, !dbg !2629
  br i1 %39, label %40, label %44, !dbg !2630

40:                                               ; preds = %35
  %41 = load ptr, ptr %10, align 8, !dbg !2631
  %42 = getelementptr inbounds %struct.redisReply, ptr %41, i32 0, i32 3, !dbg !2632
  %43 = load ptr, ptr %42, align 8, !dbg !2632
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.7, ptr noundef %43), !dbg !2633
  br label %80, !dbg !2633

44:                                               ; preds = %35
  %45 = load ptr, ptr %10, align 8, !dbg !2634
  %46 = getelementptr inbounds %struct.redisReply, ptr %45, i32 0, i32 0, !dbg !2636
  %47 = load i32, ptr %46, align 8, !dbg !2636
  %48 = icmp ne i32 %47, 2, !dbg !2637
  br i1 %48, label %49, label %59, !dbg !2638

49:                                               ; preds = %44
  %50 = load ptr, ptr %10, align 8, !dbg !2639
  %51 = getelementptr inbounds %struct.redisReply, ptr %50, i32 0, i32 0, !dbg !2642
  %52 = load i32, ptr %51, align 8, !dbg !2642
  %53 = icmp ne i32 %52, 4, !dbg !2643
  br i1 %53, label %54, label %58, !dbg !2644

54:                                               ; preds = %49
  %55 = load ptr, ptr %10, align 8, !dbg !2645
  %56 = getelementptr inbounds %struct.redisReply, ptr %55, i32 0, i32 0, !dbg !2646
  %57 = load i32, ptr %56, align 8, !dbg !2646
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.8, i32 noundef %57), !dbg !2647
  br label %58, !dbg !2647

58:                                               ; preds = %54, %49
  br label %79, !dbg !2648

59:                                               ; preds = %44
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2649, metadata !DIExpression()), !dbg !2651
  store i64 0, ptr %14, align 8, !dbg !2652
  br label %60, !dbg !2654

60:                                               ; preds = %75, %59
  %61 = load i64, ptr %14, align 8, !dbg !2655
  %62 = load ptr, ptr %10, align 8, !dbg !2657
  %63 = getelementptr inbounds %struct.redisReply, ptr %62, i32 0, i32 4, !dbg !2658
  %64 = load i64, ptr %63, align 8, !dbg !2658
  %65 = icmp ult i64 %61, %64, !dbg !2659
  br i1 %65, label %66, label %78, !dbg !2660

66:                                               ; preds = %60
  %67 = load ptr, ptr %10, align 8, !dbg !2661
  %68 = getelementptr inbounds %struct.redisReply, ptr %67, i32 0, i32 5, !dbg !2663
  %69 = load ptr, ptr %68, align 8, !dbg !2663
  %70 = load i64, ptr %14, align 8, !dbg !2664
  %71 = getelementptr inbounds ptr, ptr %69, i64 %70, !dbg !2661
  %72 = load ptr, ptr %71, align 8, !dbg !2661
  %73 = getelementptr inbounds %struct.redisReply, ptr %72, i32 0, i32 3, !dbg !2665
  %74 = load ptr, ptr %73, align 8, !dbg !2665
  call void @add_to_secrets_list(ptr noundef %11, ptr noundef %74), !dbg !2666
  br label %75, !dbg !2667

75:                                               ; preds = %66
  %76 = load i64, ptr %14, align 8, !dbg !2668
  %77 = add i64 %76, 1, !dbg !2668
  store i64 %77, ptr %14, align 8, !dbg !2668
  br label %60, !dbg !2669, !llvm.loop !2670

78:                                               ; preds = %60
  br label %79

79:                                               ; preds = %78, %58
  br label %80

80:                                               ; preds = %79, %40
  store i64 0, ptr %12, align 8, !dbg !2672
  br label %81, !dbg !2674

81:                                               ; preds = %183, %80
  %82 = load i64, ptr %12, align 8, !dbg !2675
  %83 = getelementptr inbounds %struct._secrets_list, ptr %11, i32 0, i32 1, !dbg !2677
  %84 = load i64, ptr %83, align 8, !dbg !2677
  %85 = icmp ult i64 %82, %84, !dbg !2678
  br i1 %85, label %86, label %186, !dbg !2679

86:                                               ; preds = %81
  call void @llvm.dbg.declare(metadata ptr %15, metadata !2680, metadata !DIExpression()), !dbg !2682
  store ptr null, ptr %15, align 8, !dbg !2682
  %87 = getelementptr inbounds [257 x i8], ptr %13, i64 0, i64 0, !dbg !2683
  %88 = getelementptr inbounds %struct._secrets_list, ptr %11, i32 0, i32 0, !dbg !2684
  %89 = load ptr, ptr %88, align 8, !dbg !2684
  %90 = load i64, ptr %12, align 8, !dbg !2685
  %91 = getelementptr inbounds ptr, ptr %89, i64 %90, !dbg !2686
  %92 = load ptr, ptr %91, align 8, !dbg !2686
  %93 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %87, i64 noundef 257, ptr noundef @.str.53, ptr noundef %92) #7, !dbg !2687
  call void @llvm.dbg.declare(metadata ptr %16, metadata !2688, metadata !DIExpression()), !dbg !2689
  %94 = load ptr, ptr %6, align 8, !dbg !2690
  %95 = getelementptr inbounds [257 x i8], ptr %13, i64 0, i64 0, !dbg !2691
  %96 = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %94, ptr noundef %95), !dbg !2692
  store ptr %96, ptr %16, align 8, !dbg !2689
  call void @llvm.dbg.declare(metadata ptr %17, metadata !2693, metadata !DIExpression()), !dbg !2694
  %97 = getelementptr inbounds %struct._secrets_list, ptr %11, i32 0, i32 0, !dbg !2695
  %98 = load ptr, ptr %97, align 8, !dbg !2695
  %99 = load i64, ptr %12, align 8, !dbg !2696
  %100 = getelementptr inbounds ptr, ptr %98, i64 %99, !dbg !2697
  %101 = load ptr, ptr %100, align 8, !dbg !2697
  %102 = load i64, ptr %9, align 8, !dbg !2698
  %103 = getelementptr inbounds i8, ptr %101, i64 %102, !dbg !2699
  store ptr %103, ptr %17, align 8, !dbg !2694
  call void @llvm.dbg.declare(metadata ptr %18, metadata !2700, metadata !DIExpression()), !dbg !2701
  %104 = load ptr, ptr %17, align 8, !dbg !2702
  %105 = call ptr @strstr(ptr noundef %104, ptr noundef @.str.75) #8, !dbg !2703
  store ptr %105, ptr %18, align 8, !dbg !2701
  %106 = load ptr, ptr %18, align 8, !dbg !2704
  %107 = icmp ne ptr %106, null, !dbg !2704
  br i1 %107, label %108, label %111, !dbg !2706

108:                                              ; preds = %86
  %109 = load ptr, ptr %18, align 8, !dbg !2707
  store i8 0, ptr %109, align 1, !dbg !2709
  %110 = load ptr, ptr %17, align 8, !dbg !2710
  store ptr %110, ptr %15, align 8, !dbg !2711
  br label %111, !dbg !2712

111:                                              ; preds = %108, %86
  %112 = load ptr, ptr %16, align 8, !dbg !2713
  %113 = icmp ne ptr %112, null, !dbg !2713
  br i1 %113, label %114, label %177, !dbg !2715

114:                                              ; preds = %111
  %115 = load ptr, ptr %16, align 8, !dbg !2716
  %116 = getelementptr inbounds %struct.redisReply, ptr %115, i32 0, i32 0, !dbg !2719
  %117 = load i32, ptr %116, align 8, !dbg !2719
  %118 = icmp eq i32 %117, 6, !dbg !2720
  br i1 %118, label %119, label %123, !dbg !2721

119:                                              ; preds = %114
  %120 = load ptr, ptr %16, align 8, !dbg !2722
  %121 = getelementptr inbounds %struct.redisReply, ptr %120, i32 0, i32 3, !dbg !2724
  %122 = load ptr, ptr %121, align 8, !dbg !2724
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.7, ptr noundef %122), !dbg !2725
  br label %175, !dbg !2726

123:                                              ; preds = %114
  %124 = load ptr, ptr %16, align 8, !dbg !2727
  %125 = getelementptr inbounds %struct.redisReply, ptr %124, i32 0, i32 0, !dbg !2729
  %126 = load i32, ptr %125, align 8, !dbg !2729
  %127 = icmp eq i32 %126, 1, !dbg !2730
  br i1 %127, label %128, label %135, !dbg !2731

128:                                              ; preds = %123
  %129 = load ptr, ptr %16, align 8, !dbg !2732
  %130 = getelementptr inbounds %struct.redisReply, ptr %129, i32 0, i32 3, !dbg !2734
  %131 = load ptr, ptr %130, align 8, !dbg !2734
  %132 = load ptr, ptr %15, align 8, !dbg !2735
  %133 = load ptr, ptr %4, align 8, !dbg !2736
  %134 = call i32 @add_ip_list_range(ptr noundef %131, ptr noundef %132, ptr noundef %133), !dbg !2737
  br label %174, !dbg !2738

135:                                              ; preds = %123
  %136 = load ptr, ptr %16, align 8, !dbg !2739
  %137 = getelementptr inbounds %struct.redisReply, ptr %136, i32 0, i32 0, !dbg !2741
  %138 = load i32, ptr %137, align 8, !dbg !2741
  %139 = icmp ne i32 %138, 2, !dbg !2742
  br i1 %139, label %140, label %150, !dbg !2743

140:                                              ; preds = %135
  %141 = load ptr, ptr %16, align 8, !dbg !2744
  %142 = getelementptr inbounds %struct.redisReply, ptr %141, i32 0, i32 0, !dbg !2747
  %143 = load i32, ptr %142, align 8, !dbg !2747
  %144 = icmp ne i32 %143, 4, !dbg !2748
  br i1 %144, label %145, label %149, !dbg !2749

145:                                              ; preds = %140
  %146 = load ptr, ptr %16, align 8, !dbg !2750
  %147 = getelementptr inbounds %struct.redisReply, ptr %146, i32 0, i32 0, !dbg !2751
  %148 = load i32, ptr %147, align 8, !dbg !2751
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.8, i32 noundef %148), !dbg !2752
  br label %149, !dbg !2752

149:                                              ; preds = %145, %140
  br label %173, !dbg !2753

150:                                              ; preds = %135
  call void @llvm.dbg.declare(metadata ptr %19, metadata !2754, metadata !DIExpression()), !dbg !2756
  store i64 0, ptr %19, align 8, !dbg !2757
  br label %151, !dbg !2759

151:                                              ; preds = %169, %150
  %152 = load i64, ptr %19, align 8, !dbg !2760
  %153 = load ptr, ptr %16, align 8, !dbg !2762
  %154 = getelementptr inbounds %struct.redisReply, ptr %153, i32 0, i32 4, !dbg !2763
  %155 = load i64, ptr %154, align 8, !dbg !2763
  %156 = icmp ult i64 %152, %155, !dbg !2764
  br i1 %156, label %157, label %172, !dbg !2765

157:                                              ; preds = %151
  %158 = load ptr, ptr %16, align 8, !dbg !2766
  %159 = getelementptr inbounds %struct.redisReply, ptr %158, i32 0, i32 5, !dbg !2768
  %160 = load ptr, ptr %159, align 8, !dbg !2768
  %161 = load i64, ptr %19, align 8, !dbg !2769
  %162 = getelementptr inbounds ptr, ptr %160, i64 %161, !dbg !2766
  %163 = load ptr, ptr %162, align 8, !dbg !2766
  %164 = getelementptr inbounds %struct.redisReply, ptr %163, i32 0, i32 3, !dbg !2770
  %165 = load ptr, ptr %164, align 8, !dbg !2770
  %166 = load ptr, ptr %15, align 8, !dbg !2771
  %167 = load ptr, ptr %4, align 8, !dbg !2772
  %168 = call i32 @add_ip_list_range(ptr noundef %165, ptr noundef %166, ptr noundef %167), !dbg !2773
  br label %169, !dbg !2774

169:                                              ; preds = %157
  %170 = load i64, ptr %19, align 8, !dbg !2775
  %171 = add i64 %170, 1, !dbg !2775
  store i64 %171, ptr %19, align 8, !dbg !2775
  br label %151, !dbg !2776, !llvm.loop !2777

172:                                              ; preds = %151
  br label %173

173:                                              ; preds = %172, %149
  br label %174

174:                                              ; preds = %173, %128
  br label %175

175:                                              ; preds = %174, %119
  %176 = load ptr, ptr %16, align 8, !dbg !2779
  call void @turnFreeRedisReply(ptr noundef %176), !dbg !2780
  br label %177, !dbg !2781

177:                                              ; preds = %175, %111
  %178 = load ptr, ptr %18, align 8, !dbg !2782
  %179 = icmp ne ptr %178, null, !dbg !2782
  br i1 %179, label %180, label %182, !dbg !2784

180:                                              ; preds = %177
  %181 = load ptr, ptr %18, align 8, !dbg !2785
  store i8 47, ptr %181, align 1, !dbg !2787
  br label %182, !dbg !2788

182:                                              ; preds = %180, %177
  br label %183, !dbg !2789

183:                                              ; preds = %182
  %184 = load i64, ptr %12, align 8, !dbg !2790
  %185 = add i64 %184, 1, !dbg !2790
  store i64 %185, ptr %12, align 8, !dbg !2790
  br label %81, !dbg !2791, !llvm.loop !2792

186:                                              ; preds = %81
  call void @clean_secrets_list(ptr noundef %11), !dbg !2794
  %187 = load ptr, ptr %10, align 8, !dbg !2795
  call void @turnFreeRedisReply(ptr noundef %187), !dbg !2796
  store i32 0, ptr %5, align 4, !dbg !2797
  br label %188, !dbg !2798

188:                                              ; preds = %186, %23
  br label %189, !dbg !2799

189:                                              ; preds = %188, %2
  %190 = load i32, ptr %5, align 4, !dbg !2800
  ret i32 %190, !dbg !2801
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @redis_set_permission_ip(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 !dbg !2802 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [128 x i8], align 16
  %11 = alloca ptr, align 8
  %12 = alloca [1025 x i8], align 16
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2803, metadata !DIExpression()), !dbg !2804
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2805, metadata !DIExpression()), !dbg !2806
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2807, metadata !DIExpression()), !dbg !2808
  store i32 %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2809, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2811, metadata !DIExpression()), !dbg !2812
  store i32 -1, ptr %9, align 4, !dbg !2812
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2813, metadata !DIExpression()), !dbg !2814
  call void @llvm.memset.p0.i64(ptr align 16 %10, i8 0, i64 128, i1 false), !dbg !2814
  %13 = load ptr, ptr %6, align 8, !dbg !2815
  %14 = icmp ne ptr %13, null, !dbg !2815
  br i1 %14, label %17, label %15, !dbg !2817

15:                                               ; preds = %4
  %16 = getelementptr inbounds [128 x i8], ptr %10, i64 0, i64 0, !dbg !2818
  store ptr %16, ptr %6, align 8, !dbg !2819
  br label %17, !dbg !2820

17:                                               ; preds = %15, %4
  store i32 1, ptr @donot_print_connection_success, align 4, !dbg !2821
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2822, metadata !DIExpression()), !dbg !2823
  %18 = call ptr @get_redis_connection(), !dbg !2824
  store ptr %18, ptr %11, align 8, !dbg !2823
  %19 = load ptr, ptr %11, align 8, !dbg !2825
  %20 = icmp ne ptr %19, null, !dbg !2825
  br i1 %20, label %21, label %42, !dbg !2827

21:                                               ; preds = %17
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2828, metadata !DIExpression()), !dbg !2830
  %22 = load i32, ptr %8, align 4, !dbg !2831
  %23 = icmp ne i32 %22, 0, !dbg !2831
  br i1 %23, label %24, label %30, !dbg !2833

24:                                               ; preds = %21
  %25 = getelementptr inbounds [1025 x i8], ptr %12, i64 0, i64 0, !dbg !2834
  %26 = load ptr, ptr %6, align 8, !dbg !2836
  %27 = load ptr, ptr %5, align 8, !dbg !2837
  %28 = load ptr, ptr %7, align 8, !dbg !2838
  %29 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %25, i64 noundef 1025, ptr noundef @.str.76, ptr noundef %26, ptr noundef %27, ptr noundef %28) #7, !dbg !2839
  br label %36, !dbg !2840

30:                                               ; preds = %21
  %31 = getelementptr inbounds [1025 x i8], ptr %12, i64 0, i64 0, !dbg !2841
  %32 = load ptr, ptr %6, align 8, !dbg !2843
  %33 = load ptr, ptr %5, align 8, !dbg !2844
  %34 = load ptr, ptr %7, align 8, !dbg !2845
  %35 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %31, i64 noundef 1025, ptr noundef @.str.77, ptr noundef %32, ptr noundef %33, ptr noundef %34) #7, !dbg !2846
  br label %36

36:                                               ; preds = %30, %24
  %37 = load ptr, ptr %11, align 8, !dbg !2847
  %38 = getelementptr inbounds [1025 x i8], ptr %12, i64 0, i64 0, !dbg !2848
  %39 = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %37, ptr noundef %38), !dbg !2849
  call void @turnFreeRedisReply(ptr noundef %39), !dbg !2850
  %40 = load ptr, ptr %11, align 8, !dbg !2851
  %41 = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %40, ptr noundef @.str.44), !dbg !2852
  call void @turnFreeRedisReply(ptr noundef %41), !dbg !2853
  store i32 0, ptr %9, align 4, !dbg !2854
  br label %42, !dbg !2855

42:                                               ; preds = %36, %17
  %43 = load i32, ptr %9, align 4, !dbg !2856
  ret i32 %43, !dbg !2857
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @redis_reread_realms(ptr noundef %0) #0 !dbg !2858 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct._secrets_list, align 8
  %7 = alloca i64, align 8
  %8 = alloca [1025 x i8], align 16
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2859, metadata !DIExpression()), !dbg !2860
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2861, metadata !DIExpression()), !dbg !2862
  %21 = call ptr @get_redis_connection(), !dbg !2863
  store ptr %21, ptr %3, align 8, !dbg !2862
  %22 = load ptr, ptr %3, align 8, !dbg !2864
  %23 = icmp ne ptr %22, null, !dbg !2864
  br i1 %23, label %24, label %219, !dbg !2866

24:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2867, metadata !DIExpression()), !dbg !2869
  %25 = load ptr, ptr %3, align 8, !dbg !2870
  %26 = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %25, ptr noundef @.str.59), !dbg !2871
  store ptr %26, ptr %4, align 8, !dbg !2869
  %27 = load ptr, ptr %4, align 8, !dbg !2872
  %28 = icmp ne ptr %27, null, !dbg !2872
  br i1 %28, label %29, label %148, !dbg !2874

29:                                               ; preds = %24
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2875, metadata !DIExpression()), !dbg !2880
  %30 = call ptr @ur_string_map_create(ptr noundef @free), !dbg !2881
  store ptr %30, ptr %5, align 8, !dbg !2880
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2882, metadata !DIExpression()), !dbg !2883
  call void @init_secrets_list(ptr noundef %6), !dbg !2884
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2885, metadata !DIExpression()), !dbg !2886
  store i64 0, ptr %7, align 8, !dbg !2886
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2887, metadata !DIExpression()), !dbg !2888
  %31 = load ptr, ptr %4, align 8, !dbg !2889
  %32 = getelementptr inbounds %struct.redisReply, ptr %31, i32 0, i32 0, !dbg !2891
  %33 = load i32, ptr %32, align 8, !dbg !2891
  %34 = icmp eq i32 %33, 6, !dbg !2892
  br i1 %34, label %35, label %39, !dbg !2893

35:                                               ; preds = %29
  %36 = load ptr, ptr %4, align 8, !dbg !2894
  %37 = getelementptr inbounds %struct.redisReply, ptr %36, i32 0, i32 3, !dbg !2895
  %38 = load ptr, ptr %37, align 8, !dbg !2895
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.7, ptr noundef %38), !dbg !2896
  br label %75, !dbg !2896

39:                                               ; preds = %29
  %40 = load ptr, ptr %4, align 8, !dbg !2897
  %41 = getelementptr inbounds %struct.redisReply, ptr %40, i32 0, i32 0, !dbg !2899
  %42 = load i32, ptr %41, align 8, !dbg !2899
  %43 = icmp ne i32 %42, 2, !dbg !2900
  br i1 %43, label %44, label %54, !dbg !2901

44:                                               ; preds = %39
  %45 = load ptr, ptr %4, align 8, !dbg !2902
  %46 = getelementptr inbounds %struct.redisReply, ptr %45, i32 0, i32 0, !dbg !2905
  %47 = load i32, ptr %46, align 8, !dbg !2905
  %48 = icmp ne i32 %47, 4, !dbg !2906
  br i1 %48, label %49, label %53, !dbg !2907

49:                                               ; preds = %44
  %50 = load ptr, ptr %4, align 8, !dbg !2908
  %51 = getelementptr inbounds %struct.redisReply, ptr %50, i32 0, i32 0, !dbg !2909
  %52 = load i32, ptr %51, align 8, !dbg !2909
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.8, i32 noundef %52), !dbg !2910
  br label %53, !dbg !2910

53:                                               ; preds = %49, %44
  br label %74, !dbg !2911

54:                                               ; preds = %39
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2912, metadata !DIExpression()), !dbg !2914
  store i64 0, ptr %9, align 8, !dbg !2915
  br label %55, !dbg !2917

55:                                               ; preds = %70, %54
  %56 = load i64, ptr %9, align 8, !dbg !2918
  %57 = load ptr, ptr %4, align 8, !dbg !2920
  %58 = getelementptr inbounds %struct.redisReply, ptr %57, i32 0, i32 4, !dbg !2921
  %59 = load i64, ptr %58, align 8, !dbg !2921
  %60 = icmp ult i64 %56, %59, !dbg !2922
  br i1 %60, label %61, label %73, !dbg !2923

61:                                               ; preds = %55
  %62 = load ptr, ptr %4, align 8, !dbg !2924
  %63 = getelementptr inbounds %struct.redisReply, ptr %62, i32 0, i32 5, !dbg !2926
  %64 = load ptr, ptr %63, align 8, !dbg !2926
  %65 = load i64, ptr %9, align 8, !dbg !2927
  %66 = getelementptr inbounds ptr, ptr %64, i64 %65, !dbg !2924
  %67 = load ptr, ptr %66, align 8, !dbg !2924
  %68 = getelementptr inbounds %struct.redisReply, ptr %67, i32 0, i32 3, !dbg !2928
  %69 = load ptr, ptr %68, align 8, !dbg !2928
  call void @add_to_secrets_list(ptr noundef %6, ptr noundef %69), !dbg !2929
  br label %70, !dbg !2930

70:                                               ; preds = %61
  %71 = load i64, ptr %9, align 8, !dbg !2931
  %72 = add i64 %71, 1, !dbg !2931
  store i64 %72, ptr %9, align 8, !dbg !2931
  br label %55, !dbg !2932, !llvm.loop !2933

73:                                               ; preds = %55
  br label %74

74:                                               ; preds = %73, %53
  br label %75

75:                                               ; preds = %74, %35
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2935, metadata !DIExpression()), !dbg !2936
  store i64 12, ptr %10, align 8, !dbg !2936
  store i64 0, ptr %7, align 8, !dbg !2937
  br label %76, !dbg !2939

76:                                               ; preds = %142, %75
  %77 = load i64, ptr %7, align 8, !dbg !2940
  %78 = getelementptr inbounds %struct._secrets_list, ptr %6, i32 0, i32 1, !dbg !2942
  %79 = load i64, ptr %78, align 8, !dbg !2942
  %80 = icmp ult i64 %77, %79, !dbg !2943
  br i1 %80, label %81, label %145, !dbg !2944

81:                                               ; preds = %76
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2945, metadata !DIExpression()), !dbg !2947
  %82 = getelementptr inbounds %struct._secrets_list, ptr %6, i32 0, i32 0, !dbg !2948
  %83 = load ptr, ptr %82, align 8, !dbg !2948
  %84 = load i64, ptr %7, align 8, !dbg !2949
  %85 = getelementptr inbounds ptr, ptr %83, i64 %84, !dbg !2950
  %86 = load ptr, ptr %85, align 8, !dbg !2950
  %87 = load i64, ptr %10, align 8, !dbg !2951
  %88 = getelementptr inbounds i8, ptr %86, i64 %87, !dbg !2952
  store ptr %88, ptr %11, align 8, !dbg !2947
  %89 = getelementptr inbounds [1025 x i8], ptr %8, i64 0, i64 0, !dbg !2953
  %90 = getelementptr inbounds %struct._secrets_list, ptr %6, i32 0, i32 0, !dbg !2954
  %91 = load ptr, ptr %90, align 8, !dbg !2954
  %92 = load i64, ptr %7, align 8, !dbg !2955
  %93 = getelementptr inbounds ptr, ptr %91, i64 %92, !dbg !2956
  %94 = load ptr, ptr %93, align 8, !dbg !2956
  %95 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %89, i64 noundef 1025, ptr noundef @.str.69, ptr noundef %94) #7, !dbg !2957
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2958, metadata !DIExpression()), !dbg !2959
  %96 = load ptr, ptr %3, align 8, !dbg !2960
  %97 = getelementptr inbounds [1025 x i8], ptr %8, i64 0, i64 0, !dbg !2961
  %98 = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %96, ptr noundef %97), !dbg !2962
  store ptr %98, ptr %12, align 8, !dbg !2959
  %99 = load ptr, ptr %12, align 8, !dbg !2963
  %100 = icmp ne ptr %99, null, !dbg !2963
  br i1 %100, label %101, label %141, !dbg !2965

101:                                              ; preds = %81
  %102 = load ptr, ptr %12, align 8, !dbg !2966
  %103 = getelementptr inbounds %struct.redisReply, ptr %102, i32 0, i32 0, !dbg !2969
  %104 = load i32, ptr %103, align 8, !dbg !2969
  %105 = icmp eq i32 %104, 6, !dbg !2970
  br i1 %105, label %106, label %110, !dbg !2971

106:                                              ; preds = %101
  %107 = load ptr, ptr %12, align 8, !dbg !2972
  %108 = getelementptr inbounds %struct.redisReply, ptr %107, i32 0, i32 3, !dbg !2973
  %109 = load ptr, ptr %108, align 8, !dbg !2973
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.7, ptr noundef %109), !dbg !2974
  br label %139, !dbg !2974

110:                                              ; preds = %101
  %111 = load ptr, ptr %12, align 8, !dbg !2975
  %112 = getelementptr inbounds %struct.redisReply, ptr %111, i32 0, i32 0, !dbg !2977
  %113 = load i32, ptr %112, align 8, !dbg !2977
  %114 = icmp ne i32 %113, 1, !dbg !2978
  br i1 %114, label %115, label %125, !dbg !2979

115:                                              ; preds = %110
  %116 = load ptr, ptr %12, align 8, !dbg !2980
  %117 = getelementptr inbounds %struct.redisReply, ptr %116, i32 0, i32 0, !dbg !2983
  %118 = load i32, ptr %117, align 8, !dbg !2983
  %119 = icmp ne i32 %118, 4, !dbg !2984
  br i1 %119, label %120, label %124, !dbg !2985

120:                                              ; preds = %115
  %121 = load ptr, ptr %12, align 8, !dbg !2986
  %122 = getelementptr inbounds %struct.redisReply, ptr %121, i32 0, i32 0, !dbg !2987
  %123 = load i32, ptr %122, align 8, !dbg !2987
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.8, i32 noundef %123), !dbg !2988
  br label %124, !dbg !2988

124:                                              ; preds = %120, %115
  br label %138, !dbg !2989

125:                                              ; preds = %110
  %126 = load ptr, ptr %12, align 8, !dbg !2990
  %127 = getelementptr inbounds %struct.redisReply, ptr %126, i32 0, i32 3, !dbg !2992
  %128 = load ptr, ptr %127, align 8, !dbg !2992
  %129 = call ptr @get_realm(ptr noundef %128), !dbg !2993
  call void @llvm.dbg.declare(metadata ptr %13, metadata !2994, metadata !DIExpression()), !dbg !2996
  %130 = load ptr, ptr %12, align 8, !dbg !2997
  %131 = getelementptr inbounds %struct.redisReply, ptr %130, i32 0, i32 3, !dbg !2998
  %132 = load ptr, ptr %131, align 8, !dbg !2998
  %133 = call noalias ptr @strdup(ptr noundef %132) #7, !dbg !2999
  store ptr %133, ptr %13, align 8, !dbg !2996
  %134 = load ptr, ptr %5, align 8, !dbg !3000
  %135 = load ptr, ptr %11, align 8, !dbg !3001
  %136 = load ptr, ptr %13, align 8, !dbg !3002
  %137 = call i32 @ur_string_map_put(ptr noundef %134, ptr noundef %135, ptr noundef %136), !dbg !3003
  br label %138

138:                                              ; preds = %125, %124
  br label %139

139:                                              ; preds = %138, %106
  %140 = load ptr, ptr %12, align 8, !dbg !3004
  call void @turnFreeRedisReply(ptr noundef %140), !dbg !3005
  br label %141, !dbg !3006

141:                                              ; preds = %139, %81
  br label %142, !dbg !3007

142:                                              ; preds = %141
  %143 = load i64, ptr %7, align 8, !dbg !3008
  %144 = add i64 %143, 1, !dbg !3008
  store i64 %144, ptr %7, align 8, !dbg !3008
  br label %76, !dbg !3009, !llvm.loop !3010

145:                                              ; preds = %76
  call void @clean_secrets_list(ptr noundef %6), !dbg !3012
  %146 = load ptr, ptr %5, align 8, !dbg !3013
  call void @update_o_to_realm(ptr noundef %146), !dbg !3014
  %147 = load ptr, ptr %4, align 8, !dbg !3015
  call void @turnFreeRedisReply(ptr noundef %147), !dbg !3016
  br label %148, !dbg !3017

148:                                              ; preds = %145, %24
  call void @llvm.dbg.declare(metadata ptr %14, metadata !3018, metadata !DIExpression()), !dbg !3020
  store i64 0, ptr %14, align 8, !dbg !3020
  call void @llvm.dbg.declare(metadata ptr %15, metadata !3021, metadata !DIExpression()), !dbg !3022
  store i64 0, ptr %15, align 8, !dbg !3022
  call void @lock_realms(), !dbg !3023
  %149 = load ptr, ptr %2, align 8, !dbg !3024
  %150 = getelementptr inbounds %struct._secrets_list, ptr %149, i32 0, i32 1, !dbg !3025
  %151 = load i64, ptr %150, align 8, !dbg !3025
  store i64 %151, ptr %15, align 8, !dbg !3026
  call void @unlock_realms(), !dbg !3027
  store i64 0, ptr %14, align 8, !dbg !3028
  br label %152, !dbg !3030

152:                                              ; preds = %215, %148
  %153 = load i64, ptr %14, align 8, !dbg !3031
  %154 = load i64, ptr %15, align 8, !dbg !3033
  %155 = icmp ult i64 %153, %154, !dbg !3034
  br i1 %155, label %156, label %218, !dbg !3035

156:                                              ; preds = %152
  call void @llvm.dbg.declare(metadata ptr %16, metadata !3036, metadata !DIExpression()), !dbg !3038
  %157 = load ptr, ptr %2, align 8, !dbg !3039
  %158 = getelementptr inbounds %struct._secrets_list, ptr %157, i32 0, i32 0, !dbg !3040
  %159 = load ptr, ptr %158, align 8, !dbg !3040
  %160 = load i64, ptr %14, align 8, !dbg !3041
  %161 = getelementptr inbounds ptr, ptr %159, i64 %160, !dbg !3039
  %162 = load ptr, ptr %161, align 8, !dbg !3039
  store ptr %162, ptr %16, align 8, !dbg !3038
  call void @llvm.dbg.declare(metadata ptr %17, metadata !3042, metadata !DIExpression()), !dbg !3068
  %163 = load ptr, ptr %16, align 8, !dbg !3069
  %164 = call ptr @get_realm(ptr noundef %163), !dbg !3070
  store ptr %164, ptr %17, align 8, !dbg !3068
  call void @llvm.dbg.declare(metadata ptr %18, metadata !3071, metadata !DIExpression()), !dbg !3073
  store i64 0, ptr %18, align 8, !dbg !3073
  %165 = load ptr, ptr %16, align 8, !dbg !3074
  %166 = call i32 @set_redis_realm_opt(ptr noundef %165, ptr noundef @.str.78, ptr noundef %18), !dbg !3076
  %167 = icmp ne i32 %166, 0, !dbg !3076
  br i1 %167, label %174, label %168, !dbg !3077

168:                                              ; preds = %156
  call void @lock_realms(), !dbg !3078
  %169 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 80), align 8, !dbg !3080
  %170 = load ptr, ptr %17, align 8, !dbg !3081
  %171 = getelementptr inbounds %struct._realm_params_t, ptr %170, i32 0, i32 1, !dbg !3082
  %172 = getelementptr inbounds %struct._realm_options_t, ptr %171, i32 0, i32 1, !dbg !3083
  %173 = getelementptr inbounds %struct._perf_options_t, ptr %172, i32 0, i32 0, !dbg !3084
  store volatile i64 %169, ptr %173, align 8, !dbg !3085
  call void @unlock_realms(), !dbg !3086
  br label %180, !dbg !3087

174:                                              ; preds = %156
  %175 = load i64, ptr %18, align 8, !dbg !3088
  %176 = load ptr, ptr %17, align 8, !dbg !3090
  %177 = getelementptr inbounds %struct._realm_params_t, ptr %176, i32 0, i32 1, !dbg !3091
  %178 = getelementptr inbounds %struct._realm_options_t, ptr %177, i32 0, i32 1, !dbg !3092
  %179 = getelementptr inbounds %struct._perf_options_t, ptr %178, i32 0, i32 0, !dbg !3093
  store volatile i64 %175, ptr %179, align 8, !dbg !3094
  br label %180

180:                                              ; preds = %174, %168
  call void @llvm.dbg.declare(metadata ptr %19, metadata !3095, metadata !DIExpression()), !dbg !3097
  store i64 0, ptr %19, align 8, !dbg !3097
  %181 = load ptr, ptr %16, align 8, !dbg !3098
  %182 = call i32 @set_redis_realm_opt(ptr noundef %181, ptr noundef @.str.79, ptr noundef %19), !dbg !3100
  %183 = icmp ne i32 %182, 0, !dbg !3100
  br i1 %183, label %190, label %184, !dbg !3101

184:                                              ; preds = %180
  call void @lock_realms(), !dbg !3102
  %185 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 83), align 8, !dbg !3104
  %186 = load ptr, ptr %17, align 8, !dbg !3105
  %187 = getelementptr inbounds %struct._realm_params_t, ptr %186, i32 0, i32 1, !dbg !3106
  %188 = getelementptr inbounds %struct._realm_options_t, ptr %187, i32 0, i32 1, !dbg !3107
  %189 = getelementptr inbounds %struct._perf_options_t, ptr %188, i32 0, i32 1, !dbg !3108
  store i32 %185, ptr %189, align 8, !dbg !3109
  call void @unlock_realms(), !dbg !3110
  br label %197, !dbg !3111

190:                                              ; preds = %180
  %191 = load i64, ptr %19, align 8, !dbg !3112
  %192 = trunc i64 %191 to i32, !dbg !3114
  %193 = load ptr, ptr %17, align 8, !dbg !3115
  %194 = getelementptr inbounds %struct._realm_params_t, ptr %193, i32 0, i32 1, !dbg !3116
  %195 = getelementptr inbounds %struct._realm_options_t, ptr %194, i32 0, i32 1, !dbg !3117
  %196 = getelementptr inbounds %struct._perf_options_t, ptr %195, i32 0, i32 1, !dbg !3118
  store i32 %192, ptr %196, align 8, !dbg !3119
  br label %197

197:                                              ; preds = %190, %184
  call void @llvm.dbg.declare(metadata ptr %20, metadata !3120, metadata !DIExpression()), !dbg !3122
  store i64 0, ptr %20, align 8, !dbg !3122
  %198 = load ptr, ptr %16, align 8, !dbg !3123
  %199 = call i32 @set_redis_realm_opt(ptr noundef %198, ptr noundef @.str.80, ptr noundef %20), !dbg !3125
  %200 = icmp ne i32 %199, 0, !dbg !3125
  br i1 %200, label %207, label %201, !dbg !3126

201:                                              ; preds = %197
  call void @lock_realms(), !dbg !3127
  %202 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 84), align 4, !dbg !3129
  %203 = load ptr, ptr %17, align 8, !dbg !3130
  %204 = getelementptr inbounds %struct._realm_params_t, ptr %203, i32 0, i32 1, !dbg !3131
  %205 = getelementptr inbounds %struct._realm_options_t, ptr %204, i32 0, i32 1, !dbg !3132
  %206 = getelementptr inbounds %struct._perf_options_t, ptr %205, i32 0, i32 2, !dbg !3133
  store i32 %202, ptr %206, align 4, !dbg !3134
  call void @unlock_realms(), !dbg !3135
  br label %214, !dbg !3136

207:                                              ; preds = %197
  %208 = load i64, ptr %20, align 8, !dbg !3137
  %209 = trunc i64 %208 to i32, !dbg !3139
  %210 = load ptr, ptr %17, align 8, !dbg !3140
  %211 = getelementptr inbounds %struct._realm_params_t, ptr %210, i32 0, i32 1, !dbg !3141
  %212 = getelementptr inbounds %struct._realm_options_t, ptr %211, i32 0, i32 1, !dbg !3142
  %213 = getelementptr inbounds %struct._perf_options_t, ptr %212, i32 0, i32 2, !dbg !3143
  store i32 %209, ptr %213, align 4, !dbg !3144
  br label %214

214:                                              ; preds = %207, %201
  br label %215, !dbg !3145

215:                                              ; preds = %214
  %216 = load i64, ptr %14, align 8, !dbg !3146
  %217 = add i64 %216, 1, !dbg !3146
  store i64 %217, ptr %14, align 8, !dbg !3146
  br label %152, !dbg !3147, !llvm.loop !3148

218:                                              ; preds = %152
  br label %219, !dbg !3150

219:                                              ; preds = %218, %1
  ret void, !dbg !3151
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @redis_set_oauth_key(ptr noundef %0) #0 !dbg !3152 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca [1025 x i8], align 16
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3153, metadata !DIExpression()), !dbg !3154
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3155, metadata !DIExpression()), !dbg !3156
  store i32 -1, ptr %3, align 4, !dbg !3156
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3157, metadata !DIExpression()), !dbg !3158
  %6 = call ptr @get_redis_connection(), !dbg !3159
  store ptr %6, ptr %4, align 8, !dbg !3158
  %7 = load ptr, ptr %4, align 8, !dbg !3160
  %8 = icmp ne ptr %7, null, !dbg !3160
  br i1 %8, label %9, label %36, !dbg !3162

9:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3163, metadata !DIExpression()), !dbg !3165
  %10 = getelementptr inbounds [1025 x i8], ptr %5, i64 0, i64 0, !dbg !3166
  %11 = load ptr, ptr %2, align 8, !dbg !3167
  %12 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %11, i32 0, i32 0, !dbg !3168
  %13 = getelementptr inbounds [129 x i8], ptr %12, i64 0, i64 0, !dbg !3167
  %14 = load ptr, ptr %2, align 8, !dbg !3169
  %15 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %14, i32 0, i32 1, !dbg !3170
  %16 = getelementptr inbounds [257 x i8], ptr %15, i64 0, i64 0, !dbg !3169
  %17 = load ptr, ptr %2, align 8, !dbg !3171
  %18 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %17, i32 0, i32 4, !dbg !3172
  %19 = getelementptr inbounds [65 x i8], ptr %18, i64 0, i64 0, !dbg !3171
  %20 = load ptr, ptr %2, align 8, !dbg !3173
  %21 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %20, i32 0, i32 2, !dbg !3174
  %22 = load i64, ptr %21, align 8, !dbg !3174
  %23 = load ptr, ptr %2, align 8, !dbg !3175
  %24 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %23, i32 0, i32 3, !dbg !3176
  %25 = load i32, ptr %24, align 8, !dbg !3176
  %26 = zext i32 %25 to i64, !dbg !3177
  %27 = load ptr, ptr %2, align 8, !dbg !3178
  %28 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %27, i32 0, i32 5, !dbg !3179
  %29 = getelementptr inbounds [128 x i8], ptr %28, i64 0, i64 0, !dbg !3178
  %30 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %10, i64 noundef 1025, ptr noundef @.str.82, ptr noundef %13, ptr noundef %16, ptr noundef %19, i64 noundef %22, i64 noundef %26, ptr noundef %29) #7, !dbg !3180
  %31 = load ptr, ptr %4, align 8, !dbg !3181
  %32 = getelementptr inbounds [1025 x i8], ptr %5, i64 0, i64 0, !dbg !3182
  %33 = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %31, ptr noundef %32), !dbg !3183
  call void @turnFreeRedisReply(ptr noundef %33), !dbg !3184
  %34 = load ptr, ptr %4, align 8, !dbg !3185
  %35 = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %34, ptr noundef @.str.44), !dbg !3186
  call void @turnFreeRedisReply(ptr noundef %35), !dbg !3187
  store i32 0, ptr %3, align 4, !dbg !3188
  br label %36, !dbg !3189

36:                                               ; preds = %9, %1
  %37 = load i32, ptr %3, align 4, !dbg !3190
  ret i32 %37, !dbg !3191
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @redis_get_oauth_key(ptr noundef %0, ptr noundef %1) #0 !dbg !3192 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca [1025 x i8], align 16
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3193, metadata !DIExpression()), !dbg !3194
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3195, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3197, metadata !DIExpression()), !dbg !3198
  store i32 -1, ptr %5, align 4, !dbg !3198
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3199, metadata !DIExpression()), !dbg !3200
  %16 = call ptr @get_redis_connection(), !dbg !3201
  store ptr %16, ptr %6, align 8, !dbg !3200
  %17 = load ptr, ptr %6, align 8, !dbg !3202
  %18 = icmp ne ptr %17, null, !dbg !3202
  br i1 %18, label %19, label %221, !dbg !3204

19:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3205, metadata !DIExpression()), !dbg !3207
  %20 = load ptr, ptr %4, align 8, !dbg !3208
  call void @llvm.memset.p0.i64(ptr align 8 %20, i8 0, i64 600, i1 false), !dbg !3209
  br label %21, !dbg !3210

21:                                               ; preds = %19
  %22 = load ptr, ptr %4, align 8, !dbg !3211
  %23 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %22, i32 0, i32 0, !dbg !3211
  %24 = getelementptr inbounds [129 x i8], ptr %23, i64 0, i64 0, !dbg !3211
  %25 = load ptr, ptr %3, align 8, !dbg !3211
  %26 = icmp ne ptr %24, %25, !dbg !3211
  br i1 %26, label %27, label %40, !dbg !3214

27:                                               ; preds = %21
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3215, metadata !DIExpression()), !dbg !3219
  store i64 129, ptr %8, align 8, !dbg !3219
  %28 = load ptr, ptr %4, align 8, !dbg !3219
  %29 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %28, i32 0, i32 0, !dbg !3219
  %30 = getelementptr inbounds [129 x i8], ptr %29, i64 0, i64 0, !dbg !3219
  %31 = load ptr, ptr %3, align 8, !dbg !3219
  %32 = load i64, ptr %8, align 8, !dbg !3219
  %33 = call ptr @strncpy(ptr noundef %30, ptr noundef %31, i64 noundef %32) #7, !dbg !3219
  %34 = load ptr, ptr %4, align 8, !dbg !3219
  %35 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %34, i32 0, i32 0, !dbg !3219
  %36 = getelementptr inbounds [129 x i8], ptr %35, i64 0, i64 0, !dbg !3219
  %37 = load i64, ptr %8, align 8, !dbg !3219
  %38 = sub i64 %37, 1, !dbg !3219
  %39 = getelementptr inbounds i8, ptr %36, i64 %38, !dbg !3219
  store i8 0, ptr %39, align 1, !dbg !3219
  br label %40, !dbg !3220

40:                                               ; preds = %27, %21
  br label %41, !dbg !3214

41:                                               ; preds = %40
  %42 = getelementptr inbounds [1025 x i8], ptr %7, i64 0, i64 0, !dbg !3221
  %43 = load ptr, ptr %3, align 8, !dbg !3222
  %44 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %42, i64 noundef 1025, ptr noundef @.str.83, ptr noundef %43) #7, !dbg !3223
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3224, metadata !DIExpression()), !dbg !3225
  %45 = load ptr, ptr %6, align 8, !dbg !3226
  %46 = getelementptr inbounds [1025 x i8], ptr %7, i64 0, i64 0, !dbg !3227
  %47 = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %45, ptr noundef %46), !dbg !3228
  store ptr %47, ptr %9, align 8, !dbg !3225
  %48 = load ptr, ptr %9, align 8, !dbg !3229
  %49 = icmp ne ptr %48, null, !dbg !3229
  br i1 %49, label %50, label %220, !dbg !3231

50:                                               ; preds = %41
  %51 = load ptr, ptr %9, align 8, !dbg !3232
  %52 = getelementptr inbounds %struct.redisReply, ptr %51, i32 0, i32 0, !dbg !3235
  %53 = load i32, ptr %52, align 8, !dbg !3235
  %54 = icmp eq i32 %53, 6, !dbg !3236
  br i1 %54, label %55, label %59, !dbg !3237

55:                                               ; preds = %50
  %56 = load ptr, ptr %9, align 8, !dbg !3238
  %57 = getelementptr inbounds %struct.redisReply, ptr %56, i32 0, i32 3, !dbg !3239
  %58 = load ptr, ptr %57, align 8, !dbg !3239
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.7, ptr noundef %58), !dbg !3240
  br label %218, !dbg !3240

59:                                               ; preds = %50
  %60 = load ptr, ptr %9, align 8, !dbg !3241
  %61 = getelementptr inbounds %struct.redisReply, ptr %60, i32 0, i32 0, !dbg !3243
  %62 = load i32, ptr %61, align 8, !dbg !3243
  %63 = icmp ne i32 %62, 2, !dbg !3244
  br i1 %63, label %64, label %74, !dbg !3245

64:                                               ; preds = %59
  %65 = load ptr, ptr %9, align 8, !dbg !3246
  %66 = getelementptr inbounds %struct.redisReply, ptr %65, i32 0, i32 0, !dbg !3249
  %67 = load i32, ptr %66, align 8, !dbg !3249
  %68 = icmp ne i32 %67, 4, !dbg !3250
  br i1 %68, label %69, label %73, !dbg !3251

69:                                               ; preds = %64
  %70 = load ptr, ptr %9, align 8, !dbg !3252
  %71 = getelementptr inbounds %struct.redisReply, ptr %70, i32 0, i32 0, !dbg !3253
  %72 = load i32, ptr %71, align 8, !dbg !3253
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.8, i32 noundef %72), !dbg !3254
  br label %73, !dbg !3254

73:                                               ; preds = %69, %64
  br label %217, !dbg !3255

74:                                               ; preds = %59
  %75 = load ptr, ptr %9, align 8, !dbg !3256
  %76 = getelementptr inbounds %struct.redisReply, ptr %75, i32 0, i32 4, !dbg !3258
  %77 = load i64, ptr %76, align 8, !dbg !3258
  %78 = icmp ugt i64 %77, 1, !dbg !3259
  br i1 %78, label %79, label %216, !dbg !3260

79:                                               ; preds = %74
  call void @llvm.dbg.declare(metadata ptr %10, metadata !3261, metadata !DIExpression()), !dbg !3263
  store i64 0, ptr %10, align 8, !dbg !3264
  br label %80, !dbg !3266

80:                                               ; preds = %212, %79
  %81 = load i64, ptr %10, align 8, !dbg !3267
  %82 = load ptr, ptr %9, align 8, !dbg !3269
  %83 = getelementptr inbounds %struct.redisReply, ptr %82, i32 0, i32 4, !dbg !3270
  %84 = load i64, ptr %83, align 8, !dbg !3270
  %85 = udiv i64 %84, 2, !dbg !3271
  %86 = icmp ult i64 %81, %85, !dbg !3272
  br i1 %86, label %87, label %215, !dbg !3273

87:                                               ; preds = %80
  call void @llvm.dbg.declare(metadata ptr %11, metadata !3274, metadata !DIExpression()), !dbg !3276
  %88 = load ptr, ptr %9, align 8, !dbg !3277
  %89 = getelementptr inbounds %struct.redisReply, ptr %88, i32 0, i32 5, !dbg !3278
  %90 = load ptr, ptr %89, align 8, !dbg !3278
  %91 = load i64, ptr %10, align 8, !dbg !3279
  %92 = mul i64 2, %91, !dbg !3280
  %93 = getelementptr inbounds ptr, ptr %90, i64 %92, !dbg !3277
  %94 = load ptr, ptr %93, align 8, !dbg !3277
  %95 = getelementptr inbounds %struct.redisReply, ptr %94, i32 0, i32 3, !dbg !3281
  %96 = load ptr, ptr %95, align 8, !dbg !3281
  store ptr %96, ptr %11, align 8, !dbg !3276
  call void @llvm.dbg.declare(metadata ptr %12, metadata !3282, metadata !DIExpression()), !dbg !3283
  %97 = load ptr, ptr %9, align 8, !dbg !3284
  %98 = getelementptr inbounds %struct.redisReply, ptr %97, i32 0, i32 5, !dbg !3285
  %99 = load ptr, ptr %98, align 8, !dbg !3285
  %100 = load i64, ptr %10, align 8, !dbg !3286
  %101 = mul i64 2, %100, !dbg !3287
  %102 = add i64 %101, 1, !dbg !3288
  %103 = getelementptr inbounds ptr, ptr %99, i64 %102, !dbg !3284
  %104 = load ptr, ptr %103, align 8, !dbg !3284
  %105 = getelementptr inbounds %struct.redisReply, ptr %104, i32 0, i32 3, !dbg !3289
  %106 = load ptr, ptr %105, align 8, !dbg !3289
  store ptr %106, ptr %12, align 8, !dbg !3283
  %107 = load ptr, ptr %11, align 8, !dbg !3290
  %108 = icmp ne ptr %107, null, !dbg !3290
  br i1 %108, label %109, label %211, !dbg !3292

109:                                              ; preds = %87
  %110 = load ptr, ptr %11, align 8, !dbg !3293
  %111 = call i32 @strcmp(ptr noundef %110, ptr noundef @.str.84) #8, !dbg !3296
  %112 = icmp ne i32 %111, 0, !dbg !3296
  br i1 %112, label %135, label %113, !dbg !3297

113:                                              ; preds = %109
  br label %114, !dbg !3298

114:                                              ; preds = %113
  %115 = load ptr, ptr %4, align 8, !dbg !3300
  %116 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %115, i32 0, i32 4, !dbg !3300
  %117 = getelementptr inbounds [65 x i8], ptr %116, i64 0, i64 0, !dbg !3300
  %118 = load ptr, ptr %12, align 8, !dbg !3300
  %119 = icmp ne ptr %117, %118, !dbg !3300
  br i1 %119, label %120, label %133, !dbg !3303

120:                                              ; preds = %114
  call void @llvm.dbg.declare(metadata ptr %13, metadata !3304, metadata !DIExpression()), !dbg !3308
  store i64 65, ptr %13, align 8, !dbg !3308
  %121 = load ptr, ptr %4, align 8, !dbg !3308
  %122 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %121, i32 0, i32 4, !dbg !3308
  %123 = getelementptr inbounds [65 x i8], ptr %122, i64 0, i64 0, !dbg !3308
  %124 = load ptr, ptr %12, align 8, !dbg !3308
  %125 = load i64, ptr %13, align 8, !dbg !3308
  %126 = call ptr @strncpy(ptr noundef %123, ptr noundef %124, i64 noundef %125) #7, !dbg !3308
  %127 = load ptr, ptr %4, align 8, !dbg !3308
  %128 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %127, i32 0, i32 4, !dbg !3308
  %129 = getelementptr inbounds [65 x i8], ptr %128, i64 0, i64 0, !dbg !3308
  %130 = load i64, ptr %13, align 8, !dbg !3308
  %131 = sub i64 %130, 1, !dbg !3308
  %132 = getelementptr inbounds i8, ptr %129, i64 %131, !dbg !3308
  store i8 0, ptr %132, align 1, !dbg !3308
  br label %133, !dbg !3309

133:                                              ; preds = %120, %114
  br label %134, !dbg !3303

134:                                              ; preds = %133
  br label %210, !dbg !3310

135:                                              ; preds = %109
  %136 = load ptr, ptr %11, align 8, !dbg !3311
  %137 = call i32 @strcmp(ptr noundef %136, ptr noundef @.str.85) #8, !dbg !3313
  %138 = icmp ne i32 %137, 0, !dbg !3313
  br i1 %138, label %161, label %139, !dbg !3314

139:                                              ; preds = %135
  br label %140, !dbg !3315

140:                                              ; preds = %139
  %141 = load ptr, ptr %4, align 8, !dbg !3317
  %142 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %141, i32 0, i32 5, !dbg !3317
  %143 = getelementptr inbounds [128 x i8], ptr %142, i64 0, i64 0, !dbg !3317
  %144 = load ptr, ptr %12, align 8, !dbg !3317
  %145 = icmp ne ptr %143, %144, !dbg !3317
  br i1 %145, label %146, label %159, !dbg !3320

146:                                              ; preds = %140
  call void @llvm.dbg.declare(metadata ptr %14, metadata !3321, metadata !DIExpression()), !dbg !3325
  store i64 128, ptr %14, align 8, !dbg !3325
  %147 = load ptr, ptr %4, align 8, !dbg !3325
  %148 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %147, i32 0, i32 5, !dbg !3325
  %149 = getelementptr inbounds [128 x i8], ptr %148, i64 0, i64 0, !dbg !3325
  %150 = load ptr, ptr %12, align 8, !dbg !3325
  %151 = load i64, ptr %14, align 8, !dbg !3325
  %152 = call ptr @strncpy(ptr noundef %149, ptr noundef %150, i64 noundef %151) #7, !dbg !3325
  %153 = load ptr, ptr %4, align 8, !dbg !3325
  %154 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %153, i32 0, i32 5, !dbg !3325
  %155 = getelementptr inbounds [128 x i8], ptr %154, i64 0, i64 0, !dbg !3325
  %156 = load i64, ptr %14, align 8, !dbg !3325
  %157 = sub i64 %156, 1, !dbg !3325
  %158 = getelementptr inbounds i8, ptr %155, i64 %157, !dbg !3325
  store i8 0, ptr %158, align 1, !dbg !3325
  br label %159, !dbg !3326

159:                                              ; preds = %146, %140
  br label %160, !dbg !3320

160:                                              ; preds = %159
  br label %209, !dbg !3327

161:                                              ; preds = %135
  %162 = load ptr, ptr %11, align 8, !dbg !3328
  %163 = call i32 @strcmp(ptr noundef %162, ptr noundef @.str.86) #8, !dbg !3330
  %164 = icmp ne i32 %163, 0, !dbg !3330
  br i1 %164, label %187, label %165, !dbg !3331

165:                                              ; preds = %161
  br label %166, !dbg !3332

166:                                              ; preds = %165
  %167 = load ptr, ptr %4, align 8, !dbg !3334
  %168 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %167, i32 0, i32 1, !dbg !3334
  %169 = getelementptr inbounds [257 x i8], ptr %168, i64 0, i64 0, !dbg !3334
  %170 = load ptr, ptr %12, align 8, !dbg !3334
  %171 = icmp ne ptr %169, %170, !dbg !3334
  br i1 %171, label %172, label %185, !dbg !3337

172:                                              ; preds = %166
  call void @llvm.dbg.declare(metadata ptr %15, metadata !3338, metadata !DIExpression()), !dbg !3342
  store i64 257, ptr %15, align 8, !dbg !3342
  %173 = load ptr, ptr %4, align 8, !dbg !3342
  %174 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %173, i32 0, i32 1, !dbg !3342
  %175 = getelementptr inbounds [257 x i8], ptr %174, i64 0, i64 0, !dbg !3342
  %176 = load ptr, ptr %12, align 8, !dbg !3342
  %177 = load i64, ptr %15, align 8, !dbg !3342
  %178 = call ptr @strncpy(ptr noundef %175, ptr noundef %176, i64 noundef %177) #7, !dbg !3342
  %179 = load ptr, ptr %4, align 8, !dbg !3342
  %180 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %179, i32 0, i32 1, !dbg !3342
  %181 = getelementptr inbounds [257 x i8], ptr %180, i64 0, i64 0, !dbg !3342
  %182 = load i64, ptr %15, align 8, !dbg !3342
  %183 = sub i64 %182, 1, !dbg !3342
  %184 = getelementptr inbounds i8, ptr %181, i64 %183, !dbg !3342
  store i8 0, ptr %184, align 1, !dbg !3342
  br label %185, !dbg !3343

185:                                              ; preds = %172, %166
  br label %186, !dbg !3337

186:                                              ; preds = %185
  br label %208, !dbg !3344

187:                                              ; preds = %161
  %188 = load ptr, ptr %11, align 8, !dbg !3345
  %189 = call i32 @strcmp(ptr noundef %188, ptr noundef @.str.87) #8, !dbg !3347
  %190 = icmp ne i32 %189, 0, !dbg !3347
  br i1 %190, label %196, label %191, !dbg !3348

191:                                              ; preds = %187
  %192 = load ptr, ptr %12, align 8, !dbg !3349
  %193 = call i64 @strtoull(ptr noundef %192, ptr noundef null, i32 noundef 10) #7, !dbg !3351
  %194 = load ptr, ptr %4, align 8, !dbg !3352
  %195 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %194, i32 0, i32 2, !dbg !3353
  store i64 %193, ptr %195, align 8, !dbg !3354
  br label %207, !dbg !3355

196:                                              ; preds = %187
  %197 = load ptr, ptr %11, align 8, !dbg !3356
  %198 = call i32 @strcmp(ptr noundef %197, ptr noundef @.str.88) #8, !dbg !3358
  %199 = icmp ne i32 %198, 0, !dbg !3358
  br i1 %199, label %206, label %200, !dbg !3359

200:                                              ; preds = %196
  %201 = load ptr, ptr %12, align 8, !dbg !3360
  %202 = call i64 @strtoul(ptr noundef %201, ptr noundef null, i32 noundef 10) #7, !dbg !3362
  %203 = trunc i64 %202 to i32, !dbg !3363
  %204 = load ptr, ptr %4, align 8, !dbg !3364
  %205 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %204, i32 0, i32 3, !dbg !3365
  store i32 %203, ptr %205, align 8, !dbg !3366
  br label %206, !dbg !3367

206:                                              ; preds = %200, %196
  br label %207

207:                                              ; preds = %206, %191
  br label %208

208:                                              ; preds = %207, %186
  br label %209

209:                                              ; preds = %208, %160
  br label %210

210:                                              ; preds = %209, %134
  br label %211, !dbg !3368

211:                                              ; preds = %210, %87
  br label %212, !dbg !3369

212:                                              ; preds = %211
  %213 = load i64, ptr %10, align 8, !dbg !3370
  %214 = add i64 %213, 1, !dbg !3370
  store i64 %214, ptr %10, align 8, !dbg !3370
  br label %80, !dbg !3371, !llvm.loop !3372

215:                                              ; preds = %80
  store i32 0, ptr %5, align 4, !dbg !3374
  br label %216, !dbg !3375

216:                                              ; preds = %215, %74
  br label %217

217:                                              ; preds = %216, %73
  br label %218

218:                                              ; preds = %217, %55
  %219 = load ptr, ptr %9, align 8, !dbg !3376
  call void @turnFreeRedisReply(ptr noundef %219), !dbg !3377
  br label %220, !dbg !3378

220:                                              ; preds = %218, %41
  br label %221, !dbg !3379

221:                                              ; preds = %220, %2
  %222 = load i32, ptr %5, align 4, !dbg !3380
  ret i32 %222, !dbg !3381
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @redis_del_oauth_key(ptr noundef %0) #0 !dbg !3382 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca [1025 x i8], align 16
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3383, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3385, metadata !DIExpression()), !dbg !3386
  store i32 -1, ptr %3, align 4, !dbg !3386
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3387, metadata !DIExpression()), !dbg !3388
  %6 = call ptr @get_redis_connection(), !dbg !3389
  store ptr %6, ptr %4, align 8, !dbg !3388
  %7 = load ptr, ptr %4, align 8, !dbg !3390
  %8 = icmp ne ptr %7, null, !dbg !3390
  br i1 %8, label %9, label %18, !dbg !3392

9:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3393, metadata !DIExpression()), !dbg !3395
  %10 = getelementptr inbounds [1025 x i8], ptr %5, i64 0, i64 0, !dbg !3396
  %11 = load ptr, ptr %2, align 8, !dbg !3397
  %12 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %10, i64 noundef 1025, ptr noundef @.str.89, ptr noundef %11) #7, !dbg !3398
  %13 = load ptr, ptr %4, align 8, !dbg !3399
  %14 = getelementptr inbounds [1025 x i8], ptr %5, i64 0, i64 0, !dbg !3400
  %15 = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %13, ptr noundef %14), !dbg !3401
  call void @turnFreeRedisReply(ptr noundef %15), !dbg !3402
  %16 = load ptr, ptr %4, align 8, !dbg !3403
  %17 = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %16, ptr noundef @.str.44), !dbg !3404
  call void @turnFreeRedisReply(ptr noundef %17), !dbg !3405
  store i32 0, ptr %3, align 4, !dbg !3406
  br label %18, !dbg !3407

18:                                               ; preds = %9, %1
  %19 = load i32, ptr %3, align 4, !dbg !3408
  ret i32 %19, !dbg !3409
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @redis_list_oauth_keys(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 !dbg !3410 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca %struct._secrets_list, align 8
  %14 = alloca i64, align 8
  %15 = alloca ptr, align 8
  %16 = alloca i64, align 8
  %17 = alloca ptr, align 8
  %18 = alloca %struct._oauth_key_data_raw, align 8
  %19 = alloca ptr, align 8
  %20 = alloca [256 x i8], align 16
  %21 = alloca [256 x i8], align 16
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3411, metadata !DIExpression()), !dbg !3412
  store ptr %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3413, metadata !DIExpression()), !dbg !3414
  store ptr %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3415, metadata !DIExpression()), !dbg !3416
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3417, metadata !DIExpression()), !dbg !3418
  store ptr %4, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !3419, metadata !DIExpression()), !dbg !3420
  call void @llvm.dbg.declare(metadata ptr %11, metadata !3421, metadata !DIExpression()), !dbg !3422
  store i32 -1, ptr %11, align 4, !dbg !3422
  call void @llvm.dbg.declare(metadata ptr %12, metadata !3423, metadata !DIExpression()), !dbg !3424
  %22 = call ptr @get_redis_connection(), !dbg !3425
  store ptr %22, ptr %12, align 8, !dbg !3424
  call void @llvm.dbg.declare(metadata ptr %13, metadata !3426, metadata !DIExpression()), !dbg !3427
  call void @llvm.dbg.declare(metadata ptr %14, metadata !3428, metadata !DIExpression()), !dbg !3429
  store i64 0, ptr %14, align 8, !dbg !3429
  call void @init_secrets_list(ptr noundef %13), !dbg !3430
  %23 = load ptr, ptr %12, align 8, !dbg !3431
  %24 = icmp ne ptr %23, null, !dbg !3431
  br i1 %24, label %25, label %78, !dbg !3433

25:                                               ; preds = %5
  call void @llvm.dbg.declare(metadata ptr %15, metadata !3434, metadata !DIExpression()), !dbg !3436
  store ptr null, ptr %15, align 8, !dbg !3436
  %26 = load ptr, ptr %12, align 8, !dbg !3437
  %27 = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %26, ptr noundef @.str.90), !dbg !3438
  store ptr %27, ptr %15, align 8, !dbg !3439
  %28 = load ptr, ptr %15, align 8, !dbg !3440
  %29 = icmp ne ptr %28, null, !dbg !3440
  br i1 %29, label %30, label %77, !dbg !3442

30:                                               ; preds = %25
  %31 = load ptr, ptr %15, align 8, !dbg !3443
  %32 = getelementptr inbounds %struct.redisReply, ptr %31, i32 0, i32 0, !dbg !3446
  %33 = load i32, ptr %32, align 8, !dbg !3446
  %34 = icmp eq i32 %33, 6, !dbg !3447
  br i1 %34, label %35, label %39, !dbg !3448

35:                                               ; preds = %30
  %36 = load ptr, ptr %15, align 8, !dbg !3449
  %37 = getelementptr inbounds %struct.redisReply, ptr %36, i32 0, i32 3, !dbg !3451
  %38 = load ptr, ptr %37, align 8, !dbg !3451
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.7, ptr noundef %38), !dbg !3452
  br label %75, !dbg !3453

39:                                               ; preds = %30
  %40 = load ptr, ptr %15, align 8, !dbg !3454
  %41 = getelementptr inbounds %struct.redisReply, ptr %40, i32 0, i32 0, !dbg !3456
  %42 = load i32, ptr %41, align 8, !dbg !3456
  %43 = icmp ne i32 %42, 2, !dbg !3457
  br i1 %43, label %44, label %54, !dbg !3458

44:                                               ; preds = %39
  %45 = load ptr, ptr %15, align 8, !dbg !3459
  %46 = getelementptr inbounds %struct.redisReply, ptr %45, i32 0, i32 0, !dbg !3462
  %47 = load i32, ptr %46, align 8, !dbg !3462
  %48 = icmp ne i32 %47, 4, !dbg !3463
  br i1 %48, label %49, label %53, !dbg !3464

49:                                               ; preds = %44
  %50 = load ptr, ptr %15, align 8, !dbg !3465
  %51 = getelementptr inbounds %struct.redisReply, ptr %50, i32 0, i32 0, !dbg !3467
  %52 = load i32, ptr %51, align 8, !dbg !3467
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.8, i32 noundef %52), !dbg !3468
  br label %53, !dbg !3469

53:                                               ; preds = %49, %44
  br label %74, !dbg !3470

54:                                               ; preds = %39
  call void @llvm.dbg.declare(metadata ptr %16, metadata !3471, metadata !DIExpression()), !dbg !3473
  store i64 0, ptr %16, align 8, !dbg !3474
  br label %55, !dbg !3476

55:                                               ; preds = %70, %54
  %56 = load i64, ptr %16, align 8, !dbg !3477
  %57 = load ptr, ptr %15, align 8, !dbg !3479
  %58 = getelementptr inbounds %struct.redisReply, ptr %57, i32 0, i32 4, !dbg !3480
  %59 = load i64, ptr %58, align 8, !dbg !3480
  %60 = icmp ult i64 %56, %59, !dbg !3481
  br i1 %60, label %61, label %73, !dbg !3482

61:                                               ; preds = %55
  %62 = load ptr, ptr %15, align 8, !dbg !3483
  %63 = getelementptr inbounds %struct.redisReply, ptr %62, i32 0, i32 5, !dbg !3485
  %64 = load ptr, ptr %63, align 8, !dbg !3485
  %65 = load i64, ptr %16, align 8, !dbg !3486
  %66 = getelementptr inbounds ptr, ptr %64, i64 %65, !dbg !3483
  %67 = load ptr, ptr %66, align 8, !dbg !3483
  %68 = getelementptr inbounds %struct.redisReply, ptr %67, i32 0, i32 3, !dbg !3487
  %69 = load ptr, ptr %68, align 8, !dbg !3487
  call void @add_to_secrets_list(ptr noundef %13, ptr noundef %69), !dbg !3488
  br label %70, !dbg !3489

70:                                               ; preds = %61
  %71 = load i64, ptr %16, align 8, !dbg !3490
  %72 = add i64 %71, 1, !dbg !3490
  store i64 %72, ptr %16, align 8, !dbg !3490
  br label %55, !dbg !3491, !llvm.loop !3492

73:                                               ; preds = %55
  br label %74

74:                                               ; preds = %73, %53
  br label %75

75:                                               ; preds = %74, %35
  %76 = load ptr, ptr %15, align 8, !dbg !3494
  call void @turnFreeRedisReply(ptr noundef %76), !dbg !3495
  br label %77, !dbg !3496

77:                                               ; preds = %75, %25
  br label %78, !dbg !3497

78:                                               ; preds = %77, %5
  store i64 0, ptr %14, align 8, !dbg !3498
  br label %79, !dbg !3500

79:                                               ; preds = %150, %78
  %80 = load i64, ptr %14, align 8, !dbg !3501
  %81 = getelementptr inbounds %struct._secrets_list, ptr %13, i32 0, i32 1, !dbg !3503
  %82 = load i64, ptr %81, align 8, !dbg !3503
  %83 = icmp ult i64 %80, %82, !dbg !3504
  br i1 %83, label %84, label %153, !dbg !3505

84:                                               ; preds = %79
  call void @llvm.dbg.declare(metadata ptr %17, metadata !3506, metadata !DIExpression()), !dbg !3508
  %85 = getelementptr inbounds %struct._secrets_list, ptr %13, i32 0, i32 0, !dbg !3509
  %86 = load ptr, ptr %85, align 8, !dbg !3509
  %87 = load i64, ptr %14, align 8, !dbg !3510
  %88 = getelementptr inbounds ptr, ptr %86, i64 %87, !dbg !3511
  %89 = load ptr, ptr %88, align 8, !dbg !3511
  store ptr %89, ptr %17, align 8, !dbg !3508
  %90 = load ptr, ptr %17, align 8, !dbg !3512
  %91 = getelementptr inbounds i8, ptr %90, i64 15, !dbg !3512
  store ptr %91, ptr %17, align 8, !dbg !3512
  call void @llvm.dbg.declare(metadata ptr %18, metadata !3513, metadata !DIExpression()), !dbg !3514
  call void @llvm.dbg.declare(metadata ptr %19, metadata !3515, metadata !DIExpression()), !dbg !3516
  store ptr %18, ptr %19, align 8, !dbg !3516
  %92 = load ptr, ptr %17, align 8, !dbg !3517
  %93 = load ptr, ptr %19, align 8, !dbg !3519
  %94 = call i32 @redis_get_oauth_key(ptr noundef %92, ptr noundef %93), !dbg !3520
  %95 = icmp eq i32 %94, 0, !dbg !3521
  br i1 %95, label %96, label %149, !dbg !3522

96:                                               ; preds = %84
  %97 = load ptr, ptr %6, align 8, !dbg !3523
  %98 = icmp ne ptr %97, null, !dbg !3523
  br i1 %98, label %99, label %127, !dbg !3526

99:                                               ; preds = %96
  %100 = load ptr, ptr %6, align 8, !dbg !3527
  %101 = load ptr, ptr %19, align 8, !dbg !3529
  %102 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %101, i32 0, i32 0, !dbg !3530
  %103 = getelementptr inbounds [129 x i8], ptr %102, i64 0, i64 0, !dbg !3529
  call void @add_to_secrets_list(ptr noundef %100, ptr noundef %103), !dbg !3531
  %104 = load ptr, ptr %7, align 8, !dbg !3532
  %105 = load ptr, ptr %19, align 8, !dbg !3533
  %106 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %105, i32 0, i32 4, !dbg !3534
  %107 = getelementptr inbounds [65 x i8], ptr %106, i64 0, i64 0, !dbg !3533
  call void @add_to_secrets_list(ptr noundef %104, ptr noundef %107), !dbg !3535
  %108 = load ptr, ptr %10, align 8, !dbg !3536
  %109 = load ptr, ptr %19, align 8, !dbg !3537
  %110 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %109, i32 0, i32 5, !dbg !3538
  %111 = getelementptr inbounds [128 x i8], ptr %110, i64 0, i64 0, !dbg !3537
  call void @add_to_secrets_list(ptr noundef %108, ptr noundef %111), !dbg !3539
  call void @llvm.dbg.declare(metadata ptr %20, metadata !3540, metadata !DIExpression()), !dbg !3542
  %112 = getelementptr inbounds [256 x i8], ptr %20, i64 0, i64 0, !dbg !3543
  %113 = load ptr, ptr %19, align 8, !dbg !3544
  %114 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %113, i32 0, i32 2, !dbg !3545
  %115 = load i64, ptr %114, align 8, !dbg !3545
  %116 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %112, i64 noundef 255, ptr noundef @.str.91, i64 noundef %115) #7, !dbg !3546
  %117 = load ptr, ptr %8, align 8, !dbg !3547
  %118 = getelementptr inbounds [256 x i8], ptr %20, i64 0, i64 0, !dbg !3548
  call void @add_to_secrets_list(ptr noundef %117, ptr noundef %118), !dbg !3549
  call void @llvm.dbg.declare(metadata ptr %21, metadata !3550, metadata !DIExpression()), !dbg !3552
  %119 = getelementptr inbounds [256 x i8], ptr %21, i64 0, i64 0, !dbg !3553
  %120 = load ptr, ptr %19, align 8, !dbg !3554
  %121 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %120, i32 0, i32 3, !dbg !3555
  %122 = load i32, ptr %121, align 8, !dbg !3555
  %123 = zext i32 %122 to i64, !dbg !3556
  %124 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %119, i64 noundef 255, ptr noundef @.str.92, i64 noundef %123) #7, !dbg !3557
  %125 = load ptr, ptr %9, align 8, !dbg !3558
  %126 = getelementptr inbounds [256 x i8], ptr %21, i64 0, i64 0, !dbg !3559
  call void @add_to_secrets_list(ptr noundef %125, ptr noundef %126), !dbg !3560
  br label %148, !dbg !3561

127:                                              ; preds = %96
  %128 = load ptr, ptr %19, align 8, !dbg !3562
  %129 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %128, i32 0, i32 0, !dbg !3564
  %130 = getelementptr inbounds [129 x i8], ptr %129, i64 0, i64 0, !dbg !3562
  %131 = load ptr, ptr %19, align 8, !dbg !3565
  %132 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %131, i32 0, i32 1, !dbg !3566
  %133 = getelementptr inbounds [257 x i8], ptr %132, i64 0, i64 0, !dbg !3565
  %134 = load ptr, ptr %19, align 8, !dbg !3567
  %135 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %134, i32 0, i32 2, !dbg !3568
  %136 = load i64, ptr %135, align 8, !dbg !3568
  %137 = load ptr, ptr %19, align 8, !dbg !3569
  %138 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %137, i32 0, i32 3, !dbg !3570
  %139 = load i32, ptr %138, align 8, !dbg !3570
  %140 = zext i32 %139 to i64, !dbg !3571
  %141 = load ptr, ptr %19, align 8, !dbg !3572
  %142 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %141, i32 0, i32 4, !dbg !3573
  %143 = getelementptr inbounds [65 x i8], ptr %142, i64 0, i64 0, !dbg !3572
  %144 = load ptr, ptr %19, align 8, !dbg !3574
  %145 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %144, i32 0, i32 5, !dbg !3575
  %146 = getelementptr inbounds [128 x i8], ptr %145, i64 0, i64 0, !dbg !3574
  %147 = call i32 (ptr, ...) @printf(ptr noundef @.str.93, ptr noundef %130, ptr noundef %133, i64 noundef %136, i64 noundef %140, ptr noundef %143, ptr noundef %146), !dbg !3576
  br label %148

148:                                              ; preds = %127, %99
  br label %149, !dbg !3577

149:                                              ; preds = %148, %84
  br label %150, !dbg !3578

150:                                              ; preds = %149
  %151 = load i64, ptr %14, align 8, !dbg !3579
  %152 = add i64 %151, 1, !dbg !3579
  store i64 %152, ptr %14, align 8, !dbg !3579
  br label %79, !dbg !3580, !llvm.loop !3581

153:                                              ; preds = %79
  call void @clean_secrets_list(ptr noundef %13), !dbg !3583
  store i32 0, ptr %11, align 4, !dbg !3584
  %154 = load i32, ptr %11, align 4, !dbg !3585
  ret i32 %154, !dbg !3586
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @redis_get_admin_user(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !3587 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca [1025 x i8], align 16
  %10 = alloca ptr, align 8
  %11 = alloca i64, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3588, metadata !DIExpression()), !dbg !3589
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3590, metadata !DIExpression()), !dbg !3591
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3592, metadata !DIExpression()), !dbg !3593
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3594, metadata !DIExpression()), !dbg !3595
  store i32 -1, ptr %7, align 4, !dbg !3595
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3596, metadata !DIExpression()), !dbg !3597
  %14 = call ptr @get_redis_connection(), !dbg !3598
  store ptr %14, ptr %8, align 8, !dbg !3597
  %15 = load ptr, ptr %8, align 8, !dbg !3599
  %16 = icmp ne ptr %15, null, !dbg !3599
  br i1 %16, label %17, label %117, !dbg !3601

17:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3602, metadata !DIExpression()), !dbg !3604
  %18 = load ptr, ptr %5, align 8, !dbg !3605
  %19 = getelementptr inbounds i8, ptr %18, i64 0, !dbg !3605
  store i8 0, ptr %19, align 1, !dbg !3606
  %20 = load ptr, ptr %6, align 8, !dbg !3607
  %21 = getelementptr inbounds i8, ptr %20, i64 0, !dbg !3607
  store i8 0, ptr %21, align 1, !dbg !3608
  %22 = getelementptr inbounds [1025 x i8], ptr %9, i64 0, i64 0, !dbg !3609
  %23 = load ptr, ptr %4, align 8, !dbg !3610
  %24 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %22, i64 noundef 1025, ptr noundef @.str.94, ptr noundef %23) #7, !dbg !3611
  call void @llvm.dbg.declare(metadata ptr %10, metadata !3612, metadata !DIExpression()), !dbg !3613
  %25 = load ptr, ptr %8, align 8, !dbg !3614
  %26 = getelementptr inbounds [1025 x i8], ptr %9, i64 0, i64 0, !dbg !3615
  %27 = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %25, ptr noundef %26), !dbg !3616
  store ptr %27, ptr %10, align 8, !dbg !3613
  %28 = load ptr, ptr %10, align 8, !dbg !3617
  %29 = icmp ne ptr %28, null, !dbg !3617
  br i1 %29, label %30, label %116, !dbg !3619

30:                                               ; preds = %17
  %31 = load ptr, ptr %10, align 8, !dbg !3620
  %32 = getelementptr inbounds %struct.redisReply, ptr %31, i32 0, i32 0, !dbg !3623
  %33 = load i32, ptr %32, align 8, !dbg !3623
  %34 = icmp eq i32 %33, 6, !dbg !3624
  br i1 %34, label %35, label %39, !dbg !3625

35:                                               ; preds = %30
  %36 = load ptr, ptr %10, align 8, !dbg !3626
  %37 = getelementptr inbounds %struct.redisReply, ptr %36, i32 0, i32 3, !dbg !3627
  %38 = load ptr, ptr %37, align 8, !dbg !3627
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.7, ptr noundef %38), !dbg !3628
  br label %114, !dbg !3628

39:                                               ; preds = %30
  %40 = load ptr, ptr %10, align 8, !dbg !3629
  %41 = getelementptr inbounds %struct.redisReply, ptr %40, i32 0, i32 0, !dbg !3631
  %42 = load i32, ptr %41, align 8, !dbg !3631
  %43 = icmp ne i32 %42, 2, !dbg !3632
  br i1 %43, label %44, label %54, !dbg !3633

44:                                               ; preds = %39
  %45 = load ptr, ptr %10, align 8, !dbg !3634
  %46 = getelementptr inbounds %struct.redisReply, ptr %45, i32 0, i32 0, !dbg !3637
  %47 = load i32, ptr %46, align 8, !dbg !3637
  %48 = icmp ne i32 %47, 4, !dbg !3638
  br i1 %48, label %49, label %53, !dbg !3639

49:                                               ; preds = %44
  %50 = load ptr, ptr %10, align 8, !dbg !3640
  %51 = getelementptr inbounds %struct.redisReply, ptr %50, i32 0, i32 0, !dbg !3641
  %52 = load i32, ptr %51, align 8, !dbg !3641
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.8, i32 noundef %52), !dbg !3642
  br label %53, !dbg !3642

53:                                               ; preds = %49, %44
  br label %113, !dbg !3643

54:                                               ; preds = %39
  %55 = load ptr, ptr %10, align 8, !dbg !3644
  %56 = getelementptr inbounds %struct.redisReply, ptr %55, i32 0, i32 4, !dbg !3646
  %57 = load i64, ptr %56, align 8, !dbg !3646
  %58 = icmp ugt i64 %57, 1, !dbg !3647
  br i1 %58, label %59, label %112, !dbg !3648

59:                                               ; preds = %54
  call void @llvm.dbg.declare(metadata ptr %11, metadata !3649, metadata !DIExpression()), !dbg !3651
  store i64 0, ptr %11, align 8, !dbg !3652
  br label %60, !dbg !3654

60:                                               ; preds = %108, %59
  %61 = load i64, ptr %11, align 8, !dbg !3655
  %62 = load ptr, ptr %10, align 8, !dbg !3657
  %63 = getelementptr inbounds %struct.redisReply, ptr %62, i32 0, i32 4, !dbg !3658
  %64 = load i64, ptr %63, align 8, !dbg !3658
  %65 = udiv i64 %64, 2, !dbg !3659
  %66 = icmp ult i64 %61, %65, !dbg !3660
  br i1 %66, label %67, label %111, !dbg !3661

67:                                               ; preds = %60
  call void @llvm.dbg.declare(metadata ptr %12, metadata !3662, metadata !DIExpression()), !dbg !3664
  %68 = load ptr, ptr %10, align 8, !dbg !3665
  %69 = getelementptr inbounds %struct.redisReply, ptr %68, i32 0, i32 5, !dbg !3666
  %70 = load ptr, ptr %69, align 8, !dbg !3666
  %71 = load i64, ptr %11, align 8, !dbg !3667
  %72 = mul i64 2, %71, !dbg !3668
  %73 = getelementptr inbounds ptr, ptr %70, i64 %72, !dbg !3665
  %74 = load ptr, ptr %73, align 8, !dbg !3665
  %75 = getelementptr inbounds %struct.redisReply, ptr %74, i32 0, i32 3, !dbg !3669
  %76 = load ptr, ptr %75, align 8, !dbg !3669
  store ptr %76, ptr %12, align 8, !dbg !3664
  call void @llvm.dbg.declare(metadata ptr %13, metadata !3670, metadata !DIExpression()), !dbg !3671
  %77 = load ptr, ptr %10, align 8, !dbg !3672
  %78 = getelementptr inbounds %struct.redisReply, ptr %77, i32 0, i32 5, !dbg !3673
  %79 = load ptr, ptr %78, align 8, !dbg !3673
  %80 = load i64, ptr %11, align 8, !dbg !3674
  %81 = mul i64 2, %80, !dbg !3675
  %82 = add i64 %81, 1, !dbg !3676
  %83 = getelementptr inbounds ptr, ptr %79, i64 %82, !dbg !3672
  %84 = load ptr, ptr %83, align 8, !dbg !3672
  %85 = getelementptr inbounds %struct.redisReply, ptr %84, i32 0, i32 3, !dbg !3677
  %86 = load ptr, ptr %85, align 8, !dbg !3677
  store ptr %86, ptr %13, align 8, !dbg !3671
  %87 = load ptr, ptr %12, align 8, !dbg !3678
  %88 = icmp ne ptr %87, null, !dbg !3678
  br i1 %88, label %89, label %107, !dbg !3680

89:                                               ; preds = %67
  %90 = load ptr, ptr %12, align 8, !dbg !3681
  %91 = call i32 @strcmp(ptr noundef %90, ptr noundef @.str.85) #8, !dbg !3684
  %92 = icmp ne i32 %91, 0, !dbg !3684
  br i1 %92, label %97, label %93, !dbg !3685

93:                                               ; preds = %89
  %94 = load ptr, ptr %5, align 8, !dbg !3686
  %95 = load ptr, ptr %13, align 8, !dbg !3688
  %96 = call ptr @strncpy(ptr noundef %94, ptr noundef %95, i64 noundef 127) #7, !dbg !3689
  br label %106, !dbg !3690

97:                                               ; preds = %89
  %98 = load ptr, ptr %12, align 8, !dbg !3691
  %99 = call i32 @strcmp(ptr noundef %98, ptr noundef @.str.26) #8, !dbg !3693
  %100 = icmp ne i32 %99, 0, !dbg !3693
  br i1 %100, label %105, label %101, !dbg !3694

101:                                              ; preds = %97
  %102 = load ptr, ptr %6, align 8, !dbg !3695
  %103 = load ptr, ptr %13, align 8, !dbg !3697
  %104 = call ptr @strncpy(ptr noundef %102, ptr noundef %103, i64 noundef 256) #7, !dbg !3698
  store i32 0, ptr %7, align 4, !dbg !3699
  br label %105, !dbg !3700

105:                                              ; preds = %101, %97
  br label %106

106:                                              ; preds = %105, %93
  br label %107, !dbg !3701

107:                                              ; preds = %106, %67
  br label %108, !dbg !3702

108:                                              ; preds = %107
  %109 = load i64, ptr %11, align 8, !dbg !3703
  %110 = add i64 %109, 1, !dbg !3703
  store i64 %110, ptr %11, align 8, !dbg !3703
  br label %60, !dbg !3704, !llvm.loop !3705

111:                                              ; preds = %60
  br label %112, !dbg !3707

112:                                              ; preds = %111, %54
  br label %113

113:                                              ; preds = %112, %53
  br label %114

114:                                              ; preds = %113, %35
  %115 = load ptr, ptr %10, align 8, !dbg !3708
  call void @turnFreeRedisReply(ptr noundef %115), !dbg !3709
  br label %116, !dbg !3710

116:                                              ; preds = %114, %17
  br label %117, !dbg !3711

117:                                              ; preds = %116, %3
  %118 = load i32, ptr %7, align 4, !dbg !3712
  ret i32 %118, !dbg !3713
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @redis_set_admin_user(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !3714 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca [1025 x i8], align 16
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3715, metadata !DIExpression()), !dbg !3716
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3717, metadata !DIExpression()), !dbg !3718
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3719, metadata !DIExpression()), !dbg !3720
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3721, metadata !DIExpression()), !dbg !3722
  store i32 -1, ptr %7, align 4, !dbg !3722
  store i32 1, ptr @donot_print_connection_success, align 4, !dbg !3723
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3724, metadata !DIExpression()), !dbg !3725
  %10 = call ptr @get_redis_connection(), !dbg !3726
  store ptr %10, ptr %8, align 8, !dbg !3725
  %11 = load ptr, ptr %8, align 8, !dbg !3727
  %12 = icmp ne ptr %11, null, !dbg !3727
  br i1 %12, label %13, label %35, !dbg !3729

13:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3730, metadata !DIExpression()), !dbg !3732
  %14 = load ptr, ptr %5, align 8, !dbg !3733
  %15 = getelementptr inbounds i8, ptr %14, i64 0, !dbg !3733
  %16 = load i8, ptr %15, align 1, !dbg !3733
  %17 = icmp ne i8 %16, 0, !dbg !3733
  br i1 %17, label %18, label %24, !dbg !3735

18:                                               ; preds = %13
  %19 = getelementptr inbounds [1025 x i8], ptr %9, i64 0, i64 0, !dbg !3736
  %20 = load ptr, ptr %4, align 8, !dbg !3738
  %21 = load ptr, ptr %5, align 8, !dbg !3739
  %22 = load ptr, ptr %6, align 8, !dbg !3740
  %23 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %19, i64 noundef 1025, ptr noundef @.str.95, ptr noundef %20, ptr noundef %21, ptr noundef %22) #7, !dbg !3741
  br label %29, !dbg !3742

24:                                               ; preds = %13
  %25 = getelementptr inbounds [1025 x i8], ptr %9, i64 0, i64 0, !dbg !3743
  %26 = load ptr, ptr %4, align 8, !dbg !3745
  %27 = load ptr, ptr %6, align 8, !dbg !3746
  %28 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %25, i64 noundef 1025, ptr noundef @.str.96, ptr noundef %26, ptr noundef %27) #7, !dbg !3747
  br label %29

29:                                               ; preds = %24, %18
  %30 = load ptr, ptr %8, align 8, !dbg !3748
  %31 = getelementptr inbounds [1025 x i8], ptr %9, i64 0, i64 0, !dbg !3749
  %32 = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %30, ptr noundef %31), !dbg !3750
  call void @turnFreeRedisReply(ptr noundef %32), !dbg !3751
  %33 = load ptr, ptr %8, align 8, !dbg !3752
  %34 = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %33, ptr noundef @.str.44), !dbg !3753
  call void @turnFreeRedisReply(ptr noundef %34), !dbg !3754
  store i32 0, ptr %7, align 4, !dbg !3755
  br label %35, !dbg !3756

35:                                               ; preds = %29, %3
  %36 = load i32, ptr %7, align 4, !dbg !3757
  ret i32 %36, !dbg !3758
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @redis_del_admin_user(ptr noundef %0) #0 !dbg !3759 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca [1025 x i8], align 16
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3760, metadata !DIExpression()), !dbg !3761
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3762, metadata !DIExpression()), !dbg !3763
  store i32 -1, ptr %3, align 4, !dbg !3763
  store i32 1, ptr @donot_print_connection_success, align 4, !dbg !3764
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3765, metadata !DIExpression()), !dbg !3766
  %6 = call ptr @get_redis_connection(), !dbg !3767
  store ptr %6, ptr %4, align 8, !dbg !3766
  %7 = load ptr, ptr %4, align 8, !dbg !3768
  %8 = icmp ne ptr %7, null, !dbg !3768
  br i1 %8, label %9, label %18, !dbg !3770

9:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3771, metadata !DIExpression()), !dbg !3773
  %10 = getelementptr inbounds [1025 x i8], ptr %5, i64 0, i64 0, !dbg !3774
  %11 = load ptr, ptr %2, align 8, !dbg !3775
  %12 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %10, i64 noundef 1025, ptr noundef @.str.97, ptr noundef %11) #7, !dbg !3776
  %13 = load ptr, ptr %4, align 8, !dbg !3777
  %14 = getelementptr inbounds [1025 x i8], ptr %5, i64 0, i64 0, !dbg !3778
  %15 = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %13, ptr noundef %14), !dbg !3779
  call void @turnFreeRedisReply(ptr noundef %15), !dbg !3780
  %16 = load ptr, ptr %4, align 8, !dbg !3781
  %17 = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %16, ptr noundef @.str.44), !dbg !3782
  call void @turnFreeRedisReply(ptr noundef %17), !dbg !3783
  store i32 0, ptr %3, align 4, !dbg !3784
  br label %18, !dbg !3785

18:                                               ; preds = %9, %1
  %19 = load i32, ptr %3, align 4, !dbg !3786
  ret i32 %19, !dbg !3787
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @redis_list_admin_users(i32 noundef %0) #0 !dbg !3788 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca %struct._secrets_list, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca [127 x i8], align 16
  %11 = alloca [257 x i8], align 16
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3789, metadata !DIExpression()), !dbg !3790
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3791, metadata !DIExpression()), !dbg !3792
  store i32 -1, ptr %3, align 4, !dbg !3792
  store i32 1, ptr @donot_print_connection_success, align 4, !dbg !3793
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3794, metadata !DIExpression()), !dbg !3795
  %12 = call ptr @get_redis_connection(), !dbg !3796
  store ptr %12, ptr %4, align 8, !dbg !3795
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3797, metadata !DIExpression()), !dbg !3798
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3799, metadata !DIExpression()), !dbg !3800
  store i64 0, ptr %6, align 8, !dbg !3800
  call void @init_secrets_list(ptr noundef %5), !dbg !3801
  %13 = load ptr, ptr %4, align 8, !dbg !3802
  %14 = icmp ne ptr %13, null, !dbg !3802
  br i1 %14, label %15, label %68, !dbg !3804

15:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3805, metadata !DIExpression()), !dbg !3807
  store ptr null, ptr %7, align 8, !dbg !3807
  %16 = load ptr, ptr %4, align 8, !dbg !3808
  %17 = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %16, ptr noundef @.str.98), !dbg !3809
  store ptr %17, ptr %7, align 8, !dbg !3810
  %18 = load ptr, ptr %7, align 8, !dbg !3811
  %19 = icmp ne ptr %18, null, !dbg !3811
  br i1 %19, label %20, label %67, !dbg !3813

20:                                               ; preds = %15
  %21 = load ptr, ptr %7, align 8, !dbg !3814
  %22 = getelementptr inbounds %struct.redisReply, ptr %21, i32 0, i32 0, !dbg !3817
  %23 = load i32, ptr %22, align 8, !dbg !3817
  %24 = icmp eq i32 %23, 6, !dbg !3818
  br i1 %24, label %25, label %29, !dbg !3819

25:                                               ; preds = %20
  %26 = load ptr, ptr %7, align 8, !dbg !3820
  %27 = getelementptr inbounds %struct.redisReply, ptr %26, i32 0, i32 3, !dbg !3822
  %28 = load ptr, ptr %27, align 8, !dbg !3822
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.7, ptr noundef %28), !dbg !3823
  br label %65, !dbg !3824

29:                                               ; preds = %20
  %30 = load ptr, ptr %7, align 8, !dbg !3825
  %31 = getelementptr inbounds %struct.redisReply, ptr %30, i32 0, i32 0, !dbg !3827
  %32 = load i32, ptr %31, align 8, !dbg !3827
  %33 = icmp ne i32 %32, 2, !dbg !3828
  br i1 %33, label %34, label %44, !dbg !3829

34:                                               ; preds = %29
  %35 = load ptr, ptr %7, align 8, !dbg !3830
  %36 = getelementptr inbounds %struct.redisReply, ptr %35, i32 0, i32 0, !dbg !3833
  %37 = load i32, ptr %36, align 8, !dbg !3833
  %38 = icmp ne i32 %37, 4, !dbg !3834
  br i1 %38, label %39, label %43, !dbg !3835

39:                                               ; preds = %34
  %40 = load ptr, ptr %7, align 8, !dbg !3836
  %41 = getelementptr inbounds %struct.redisReply, ptr %40, i32 0, i32 0, !dbg !3838
  %42 = load i32, ptr %41, align 8, !dbg !3838
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.8, i32 noundef %42), !dbg !3839
  br label %43, !dbg !3840

43:                                               ; preds = %39, %34
  br label %64, !dbg !3841

44:                                               ; preds = %29
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3842, metadata !DIExpression()), !dbg !3844
  store i64 0, ptr %8, align 8, !dbg !3845
  br label %45, !dbg !3847

45:                                               ; preds = %60, %44
  %46 = load i64, ptr %8, align 8, !dbg !3848
  %47 = load ptr, ptr %7, align 8, !dbg !3850
  %48 = getelementptr inbounds %struct.redisReply, ptr %47, i32 0, i32 4, !dbg !3851
  %49 = load i64, ptr %48, align 8, !dbg !3851
  %50 = icmp ult i64 %46, %49, !dbg !3852
  br i1 %50, label %51, label %63, !dbg !3853

51:                                               ; preds = %45
  %52 = load ptr, ptr %7, align 8, !dbg !3854
  %53 = getelementptr inbounds %struct.redisReply, ptr %52, i32 0, i32 5, !dbg !3856
  %54 = load ptr, ptr %53, align 8, !dbg !3856
  %55 = load i64, ptr %8, align 8, !dbg !3857
  %56 = getelementptr inbounds ptr, ptr %54, i64 %55, !dbg !3854
  %57 = load ptr, ptr %56, align 8, !dbg !3854
  %58 = getelementptr inbounds %struct.redisReply, ptr %57, i32 0, i32 3, !dbg !3858
  %59 = load ptr, ptr %58, align 8, !dbg !3858
  call void @add_to_secrets_list(ptr noundef %5, ptr noundef %59), !dbg !3859
  br label %60, !dbg !3860

60:                                               ; preds = %51
  %61 = load i64, ptr %8, align 8, !dbg !3861
  %62 = add i64 %61, 1, !dbg !3861
  store i64 %62, ptr %8, align 8, !dbg !3861
  br label %45, !dbg !3862, !llvm.loop !3863

63:                                               ; preds = %45
  br label %64

64:                                               ; preds = %63, %43
  br label %65

65:                                               ; preds = %64, %25
  %66 = load ptr, ptr %7, align 8, !dbg !3865
  call void @turnFreeRedisReply(ptr noundef %66), !dbg !3866
  br label %67, !dbg !3867

67:                                               ; preds = %65, %15
  br label %68, !dbg !3868

68:                                               ; preds = %67, %1
  store i32 0, ptr %3, align 4, !dbg !3869
  store i64 0, ptr %6, align 8, !dbg !3870
  br label %69, !dbg !3872

69:                                               ; preds = %106, %68
  %70 = load i64, ptr %6, align 8, !dbg !3873
  %71 = getelementptr inbounds %struct._secrets_list, ptr %5, i32 0, i32 1, !dbg !3875
  %72 = load i64, ptr %71, align 8, !dbg !3875
  %73 = icmp ult i64 %70, %72, !dbg !3876
  br i1 %73, label %74, label %109, !dbg !3877

74:                                               ; preds = %69
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3878, metadata !DIExpression()), !dbg !3880
  %75 = getelementptr inbounds %struct._secrets_list, ptr %5, i32 0, i32 0, !dbg !3881
  %76 = load ptr, ptr %75, align 8, !dbg !3881
  %77 = load i64, ptr %6, align 8, !dbg !3882
  %78 = getelementptr inbounds ptr, ptr %76, i64 %77, !dbg !3883
  %79 = load ptr, ptr %78, align 8, !dbg !3883
  store ptr %79, ptr %9, align 8, !dbg !3880
  %80 = load ptr, ptr %9, align 8, !dbg !3884
  %81 = getelementptr inbounds i8, ptr %80, i64 16, !dbg !3884
  store ptr %81, ptr %9, align 8, !dbg !3884
  call void @llvm.dbg.declare(metadata ptr %10, metadata !3885, metadata !DIExpression()), !dbg !3889
  call void @llvm.dbg.declare(metadata ptr %11, metadata !3890, metadata !DIExpression()), !dbg !3893
  %82 = load ptr, ptr %9, align 8, !dbg !3894
  %83 = getelementptr inbounds [127 x i8], ptr %10, i64 0, i64 0, !dbg !3896
  %84 = getelementptr inbounds [257 x i8], ptr %11, i64 0, i64 0, !dbg !3897
  %85 = call i32 @redis_get_admin_user(ptr noundef %82, ptr noundef %83, ptr noundef %84), !dbg !3898
  %86 = icmp eq i32 %85, 0, !dbg !3899
  br i1 %86, label %87, label %105, !dbg !3900

87:                                               ; preds = %74
  %88 = load i32, ptr %3, align 4, !dbg !3901
  %89 = add nsw i32 %88, 1, !dbg !3901
  store i32 %89, ptr %3, align 4, !dbg !3901
  %90 = load i32, ptr %2, align 4, !dbg !3903
  %91 = icmp ne i32 %90, 0, !dbg !3903
  br i1 %91, label %104, label %92, !dbg !3905

92:                                               ; preds = %87
  %93 = getelementptr inbounds [127 x i8], ptr %10, i64 0, i64 0, !dbg !3906
  %94 = load i8, ptr %93, align 16, !dbg !3906
  %95 = icmp ne i8 %94, 0, !dbg !3906
  br i1 %95, label %96, label %100, !dbg !3909

96:                                               ; preds = %92
  %97 = load ptr, ptr %9, align 8, !dbg !3910
  %98 = getelementptr inbounds [127 x i8], ptr %10, i64 0, i64 0, !dbg !3912
  %99 = call i32 (ptr, ...) @printf(ptr noundef @.str.50, ptr noundef %97, ptr noundef %98), !dbg !3913
  br label %103, !dbg !3914

100:                                              ; preds = %92
  %101 = load ptr, ptr %9, align 8, !dbg !3915
  %102 = call i32 (ptr, ...) @printf(ptr noundef @.str.54, ptr noundef %101), !dbg !3917
  br label %103

103:                                              ; preds = %100, %96
  br label %104, !dbg !3918

104:                                              ; preds = %103, %87
  br label %105, !dbg !3919

105:                                              ; preds = %104, %74
  br label %106, !dbg !3920

106:                                              ; preds = %105
  %107 = load i64, ptr %6, align 8, !dbg !3921
  %108 = add i64 %107, 1, !dbg !3921
  store i64 %108, ptr %6, align 8, !dbg !3921
  br label %69, !dbg !3922, !llvm.loop !3923

109:                                              ; preds = %69
  call void @clean_secrets_list(ptr noundef %5), !dbg !3925
  %110 = load i32, ptr %3, align 4, !dbg !3926
  ret i32 %110, !dbg !3927
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @redis_disconnect() #0 !dbg !3928 {
  %1 = alloca ptr, align 8
  call void @llvm.dbg.declare(metadata ptr %1, metadata !3929, metadata !DIExpression()), !dbg !3930
  %2 = load i32, ptr @connection_key, align 4, !dbg !3931
  %3 = call ptr @pthread_getspecific(i32 noundef %2) #7, !dbg !3932
  store ptr %3, ptr %1, align 8, !dbg !3930
  %4 = load ptr, ptr %1, align 8, !dbg !3933
  %5 = icmp ne ptr %4, null, !dbg !3933
  br i1 %5, label %6, label %8, !dbg !3935

6:                                                ; preds = %0
  %7 = load ptr, ptr %1, align 8, !dbg !3936
  call void @redisFree(ptr noundef %7), !dbg !3938
  store ptr null, ptr %1, align 8, !dbg !3939
  br label %8, !dbg !3940

8:                                                ; preds = %6, %0
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.99), !dbg !3941
  ret void, !dbg !3942
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @get_redis_connection() #0 !dbg !3943 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca [256 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.timeval, align 8
  %10 = alloca ptr, align 8
  call void @llvm.dbg.declare(metadata ptr %1, metadata !3946, metadata !DIExpression()), !dbg !3952
  %11 = call ptr @get_persistent_users_db(), !dbg !3953
  store ptr %11, ptr %1, align 8, !dbg !3952
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3954, metadata !DIExpression()), !dbg !3955
  %12 = load i32, ptr @connection_key, align 4, !dbg !3956
  %13 = call ptr @pthread_getspecific(i32 noundef %12) #7, !dbg !3957
  store ptr %13, ptr %2, align 8, !dbg !3955
  %14 = load ptr, ptr %2, align 8, !dbg !3958
  %15 = icmp ne ptr %14, null, !dbg !3958
  br i1 %15, label %16, label %34, !dbg !3960

16:                                               ; preds = %0
  %17 = load ptr, ptr %2, align 8, !dbg !3961
  %18 = getelementptr inbounds %struct.redisContext, ptr %17, i32 0, i32 0, !dbg !3964
  %19 = load i32, ptr %18, align 8, !dbg !3964
  %20 = icmp ne i32 %19, 0, !dbg !3961
  br i1 %20, label %21, label %33, !dbg !3965

21:                                               ; preds = %16
  %22 = load ptr, ptr %2, align 8, !dbg !3966
  %23 = getelementptr inbounds %struct.redisContext, ptr %22, i32 0, i32 0, !dbg !3968
  %24 = load i32, ptr %23, align 8, !dbg !3968
  %25 = load ptr, ptr %2, align 8, !dbg !3969
  %26 = getelementptr inbounds %struct.redisContext, ptr %25, i32 0, i32 3, !dbg !3970
  %27 = load i32, ptr %26, align 8, !dbg !3970
  %28 = sext i32 %27 to i64, !dbg !3971
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.37, ptr noundef @__FUNCTION__.get_redis_connection, i32 noundef %24, i64 noundef %28), !dbg !3972
  %29 = load ptr, ptr %2, align 8, !dbg !3973
  call void @redisFree(ptr noundef %29), !dbg !3974
  store ptr null, ptr %2, align 8, !dbg !3975
  %30 = load i32, ptr @connection_key, align 4, !dbg !3976
  %31 = load ptr, ptr %2, align 8, !dbg !3977
  %32 = call i32 @pthread_setspecific(i32 noundef %30, ptr noundef %31) #7, !dbg !3978
  br label %33, !dbg !3979

33:                                               ; preds = %21, %16
  br label %34, !dbg !3980

34:                                               ; preds = %33, %0
  %35 = load ptr, ptr %2, align 8, !dbg !3981
  %36 = icmp ne ptr %35, null, !dbg !3981
  br i1 %36, label %256, label %37, !dbg !3983

37:                                               ; preds = %34
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3984, metadata !DIExpression()), !dbg !3986
  store ptr null, ptr %3, align 8, !dbg !3986
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3987, metadata !DIExpression()), !dbg !3988
  %38 = load ptr, ptr %1, align 8, !dbg !3989
  %39 = getelementptr inbounds %struct._persistent_users_db_t, ptr %38, i32 0, i32 0, !dbg !3990
  %40 = getelementptr inbounds [1025 x i8], ptr %39, i64 0, i64 0, !dbg !3989
  %41 = call ptr @RyconninfoParse(ptr noundef %40, ptr noundef %3), !dbg !3991
  store ptr %41, ptr %4, align 8, !dbg !3988
  %42 = load ptr, ptr %4, align 8, !dbg !3992
  %43 = icmp ne ptr %42, null, !dbg !3992
  br i1 %43, label %58, label %44, !dbg !3994

44:                                               ; preds = %37
  %45 = load ptr, ptr %3, align 8, !dbg !3995
  %46 = icmp ne ptr %45, null, !dbg !3995
  br i1 %46, label %47, label %53, !dbg !3998

47:                                               ; preds = %44
  %48 = load ptr, ptr %1, align 8, !dbg !3999
  %49 = getelementptr inbounds %struct._persistent_users_db_t, ptr %48, i32 0, i32 0, !dbg !4001
  %50 = getelementptr inbounds [1025 x i8], ptr %49, i64 0, i64 0, !dbg !3999
  %51 = load ptr, ptr %3, align 8, !dbg !4002
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str, ptr noundef %50, ptr noundef %51), !dbg !4003
  %52 = load ptr, ptr %3, align 8, !dbg !4004
  call void @free(ptr noundef %52) #7, !dbg !4005
  br label %57, !dbg !4006

53:                                               ; preds = %44
  %54 = load ptr, ptr %1, align 8, !dbg !4007
  %55 = getelementptr inbounds %struct._persistent_users_db_t, ptr %54, i32 0, i32 0, !dbg !4009
  %56 = getelementptr inbounds [1025 x i8], ptr %55, i64 0, i64 0, !dbg !4007
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.1, ptr noundef %56), !dbg !4010
  br label %57

57:                                               ; preds = %53, %47
  br label %248, !dbg !4011

58:                                               ; preds = %37
  %59 = load ptr, ptr %3, align 8, !dbg !4012
  %60 = icmp ne ptr %59, null, !dbg !4012
  br i1 %60, label %61, label %68, !dbg !4014

61:                                               ; preds = %58
  %62 = load ptr, ptr %1, align 8, !dbg !4015
  %63 = getelementptr inbounds %struct._persistent_users_db_t, ptr %62, i32 0, i32 0, !dbg !4017
  %64 = getelementptr inbounds [1025 x i8], ptr %63, i64 0, i64 0, !dbg !4015
  %65 = load ptr, ptr %3, align 8, !dbg !4018
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str, ptr noundef %64, ptr noundef %65), !dbg !4019
  %66 = load ptr, ptr %3, align 8, !dbg !4020
  call void @free(ptr noundef %66) #7, !dbg !4021
  %67 = load ptr, ptr %4, align 8, !dbg !4022
  call void @RyconninfoFree(ptr noundef %67), !dbg !4023
  br label %247, !dbg !4024

68:                                               ; preds = %58
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4025, metadata !DIExpression()), !dbg !4027
  call void @llvm.memset.p0.i64(ptr align 16 %5, i8 0, i64 256, i1 false), !dbg !4027
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4028, metadata !DIExpression()), !dbg !4029
  store i32 6379, ptr %6, align 4, !dbg !4029
  %69 = load ptr, ptr %4, align 8, !dbg !4030
  %70 = getelementptr inbounds %struct._Ryconninfo, ptr %69, i32 0, i32 0, !dbg !4032
  %71 = load ptr, ptr %70, align 8, !dbg !4032
  %72 = icmp ne ptr %71, null, !dbg !4030
  br i1 %72, label %73, label %93, !dbg !4033

73:                                               ; preds = %68
  br label %74, !dbg !4034

74:                                               ; preds = %73
  %75 = getelementptr inbounds [256 x i8], ptr %5, i64 0, i64 0, !dbg !4035
  %76 = load ptr, ptr %4, align 8, !dbg !4035
  %77 = getelementptr inbounds %struct._Ryconninfo, ptr %76, i32 0, i32 0, !dbg !4035
  %78 = load ptr, ptr %77, align 8, !dbg !4035
  %79 = icmp ne ptr %75, %78, !dbg !4035
  br i1 %79, label %80, label %91, !dbg !4038

80:                                               ; preds = %74
  call void @llvm.dbg.declare(metadata ptr %7, metadata !4039, metadata !DIExpression()), !dbg !4043
  store i64 256, ptr %7, align 8, !dbg !4043
  %81 = getelementptr inbounds [256 x i8], ptr %5, i64 0, i64 0, !dbg !4043
  %82 = load ptr, ptr %4, align 8, !dbg !4043
  %83 = getelementptr inbounds %struct._Ryconninfo, ptr %82, i32 0, i32 0, !dbg !4043
  %84 = load ptr, ptr %83, align 8, !dbg !4043
  %85 = load i64, ptr %7, align 8, !dbg !4043
  %86 = call ptr @strncpy(ptr noundef %81, ptr noundef %84, i64 noundef %85) #7, !dbg !4043
  %87 = getelementptr inbounds [256 x i8], ptr %5, i64 0, i64 0, !dbg !4043
  %88 = load i64, ptr %7, align 8, !dbg !4043
  %89 = sub i64 %88, 1, !dbg !4043
  %90 = getelementptr inbounds i8, ptr %87, i64 %89, !dbg !4043
  store i8 0, ptr %90, align 1, !dbg !4043
  br label %91, !dbg !4044

91:                                               ; preds = %80, %74
  br label %92, !dbg !4038

92:                                               ; preds = %91
  br label %93, !dbg !4038

93:                                               ; preds = %92, %68
  %94 = getelementptr inbounds [256 x i8], ptr %5, i64 0, i64 0, !dbg !4045
  %95 = load i8, ptr %94, align 16, !dbg !4045
  %96 = icmp ne i8 %95, 0, !dbg !4045
  br i1 %96, label %111, label %97, !dbg !4047

97:                                               ; preds = %93
  br label %98, !dbg !4048

98:                                               ; preds = %97
  %99 = getelementptr inbounds [256 x i8], ptr %5, i64 0, i64 0, !dbg !4049
  %100 = icmp ne ptr %99, @.str.2, !dbg !4049
  br i1 %100, label %101, label %109, !dbg !4052

101:                                              ; preds = %98
  call void @llvm.dbg.declare(metadata ptr %8, metadata !4053, metadata !DIExpression()), !dbg !4057
  store i64 256, ptr %8, align 8, !dbg !4057
  %102 = getelementptr inbounds [256 x i8], ptr %5, i64 0, i64 0, !dbg !4057
  %103 = load i64, ptr %8, align 8, !dbg !4057
  %104 = call ptr @strncpy(ptr noundef %102, ptr noundef @.str.2, i64 noundef %103) #7, !dbg !4057
  %105 = getelementptr inbounds [256 x i8], ptr %5, i64 0, i64 0, !dbg !4057
  %106 = load i64, ptr %8, align 8, !dbg !4057
  %107 = sub i64 %106, 1, !dbg !4057
  %108 = getelementptr inbounds i8, ptr %105, i64 %107, !dbg !4057
  store i8 0, ptr %108, align 1, !dbg !4057
  br label %109, !dbg !4058

109:                                              ; preds = %101, %98
  br label %110, !dbg !4052

110:                                              ; preds = %109
  br label %111, !dbg !4052

111:                                              ; preds = %110, %93
  %112 = load ptr, ptr %4, align 8, !dbg !4059
  %113 = getelementptr inbounds %struct._Ryconninfo, ptr %112, i32 0, i32 4, !dbg !4061
  %114 = load i32, ptr %113, align 4, !dbg !4061
  %115 = icmp ne i32 %114, 0, !dbg !4059
  br i1 %115, label %116, label %120, !dbg !4062

116:                                              ; preds = %111
  %117 = load ptr, ptr %4, align 8, !dbg !4063
  %118 = getelementptr inbounds %struct._Ryconninfo, ptr %117, i32 0, i32 4, !dbg !4064
  %119 = load i32, ptr %118, align 4, !dbg !4064
  store i32 %119, ptr %6, align 4, !dbg !4065
  br label %120, !dbg !4066

120:                                              ; preds = %116, %111
  %121 = load ptr, ptr %4, align 8, !dbg !4067
  %122 = getelementptr inbounds %struct._Ryconninfo, ptr %121, i32 0, i32 3, !dbg !4069
  %123 = load i32, ptr %122, align 8, !dbg !4069
  %124 = icmp ne i32 %123, 0, !dbg !4067
  br i1 %124, label %125, label %139, !dbg !4070

125:                                              ; preds = %120
  call void @llvm.dbg.declare(metadata ptr %9, metadata !4071, metadata !DIExpression()), !dbg !4073
  %126 = getelementptr inbounds %struct.timeval, ptr %9, i32 0, i32 1, !dbg !4074
  store i64 0, ptr %126, align 8, !dbg !4075
  %127 = load ptr, ptr %4, align 8, !dbg !4076
  %128 = getelementptr inbounds %struct._Ryconninfo, ptr %127, i32 0, i32 3, !dbg !4077
  %129 = load i32, ptr %128, align 8, !dbg !4077
  %130 = zext i32 %129 to i64, !dbg !4078
  %131 = getelementptr inbounds %struct.timeval, ptr %9, i32 0, i32 0, !dbg !4079
  store i64 %130, ptr %131, align 8, !dbg !4080
  %132 = getelementptr inbounds [256 x i8], ptr %5, i64 0, i64 0, !dbg !4081
  %133 = load i32, ptr %6, align 4, !dbg !4082
  %134 = getelementptr inbounds { i64, i64 }, ptr %9, i32 0, i32 0, !dbg !4083
  %135 = load i64, ptr %134, align 8, !dbg !4083
  %136 = getelementptr inbounds { i64, i64 }, ptr %9, i32 0, i32 1, !dbg !4083
  %137 = load i64, ptr %136, align 8, !dbg !4083
  %138 = call ptr @redisConnectWithTimeout(ptr noundef %132, i32 noundef %133, i64 %135, i64 %137), !dbg !4083
  store ptr %138, ptr %2, align 8, !dbg !4084
  br label %143, !dbg !4085

139:                                              ; preds = %120
  %140 = getelementptr inbounds [256 x i8], ptr %5, i64 0, i64 0, !dbg !4086
  %141 = load i32, ptr %6, align 4, !dbg !4088
  %142 = call ptr @redisConnect(ptr noundef %140, i32 noundef %141), !dbg !4089
  store ptr %142, ptr %2, align 8, !dbg !4090
  br label %143

143:                                              ; preds = %139, %125
  %144 = load ptr, ptr %2, align 8, !dbg !4091
  %145 = icmp ne ptr %144, null, !dbg !4091
  br i1 %145, label %146, label %233, !dbg !4093

146:                                              ; preds = %143
  %147 = load ptr, ptr %2, align 8, !dbg !4094
  %148 = getelementptr inbounds %struct.redisContext, ptr %147, i32 0, i32 0, !dbg !4097
  %149 = load i32, ptr %148, align 8, !dbg !4097
  %150 = icmp ne i32 %149, 0, !dbg !4094
  br i1 %150, label %151, label %163, !dbg !4098

151:                                              ; preds = %146
  %152 = load ptr, ptr %2, align 8, !dbg !4099
  %153 = getelementptr inbounds %struct.redisContext, ptr %152, i32 0, i32 1, !dbg !4102
  %154 = getelementptr inbounds [128 x i8], ptr %153, i64 0, i64 0, !dbg !4099
  %155 = load i8, ptr %154, align 4, !dbg !4099
  %156 = icmp ne i8 %155, 0, !dbg !4099
  br i1 %156, label %157, label %161, !dbg !4103

157:                                              ; preds = %151
  %158 = load ptr, ptr %2, align 8, !dbg !4104
  %159 = getelementptr inbounds %struct.redisContext, ptr %158, i32 0, i32 1, !dbg !4106
  %160 = getelementptr inbounds [128 x i8], ptr %159, i64 0, i64 0, !dbg !4104
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.38, ptr noundef %160), !dbg !4107
  br label %161, !dbg !4108

161:                                              ; preds = %157, %151
  %162 = load ptr, ptr %2, align 8, !dbg !4109
  call void @redisFree(ptr noundef %162), !dbg !4110
  store ptr null, ptr %2, align 8, !dbg !4111
  br label %232, !dbg !4112

163:                                              ; preds = %146
  %164 = load ptr, ptr %4, align 8, !dbg !4113
  %165 = getelementptr inbounds %struct._Ryconninfo, ptr %164, i32 0, i32 2, !dbg !4115
  %166 = load ptr, ptr %165, align 8, !dbg !4115
  %167 = icmp ne ptr %166, null, !dbg !4113
  br i1 %167, label %168, label %231, !dbg !4116

168:                                              ; preds = %163
  call void @llvm.dbg.declare(metadata ptr %10, metadata !4117, metadata !DIExpression()), !dbg !4119
  %169 = load ptr, ptr %2, align 8, !dbg !4120
  %170 = load ptr, ptr %4, align 8, !dbg !4121
  %171 = getelementptr inbounds %struct._Ryconninfo, ptr %170, i32 0, i32 2, !dbg !4122
  %172 = load ptr, ptr %171, align 8, !dbg !4122
  %173 = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %169, ptr noundef @.str.4, ptr noundef %172), !dbg !4123
  store ptr %173, ptr %10, align 8, !dbg !4119
  %174 = load ptr, ptr %10, align 8, !dbg !4124
  %175 = icmp ne ptr %174, null, !dbg !4124
  br i1 %175, label %194, label %176, !dbg !4126

176:                                              ; preds = %168
  %177 = load ptr, ptr %2, align 8, !dbg !4127
  %178 = getelementptr inbounds %struct.redisContext, ptr %177, i32 0, i32 0, !dbg !4130
  %179 = load i32, ptr %178, align 8, !dbg !4130
  %180 = icmp ne i32 %179, 0, !dbg !4127
  br i1 %180, label %181, label %192, !dbg !4131

181:                                              ; preds = %176
  %182 = load ptr, ptr %2, align 8, !dbg !4132
  %183 = getelementptr inbounds %struct.redisContext, ptr %182, i32 0, i32 1, !dbg !4133
  %184 = getelementptr inbounds [128 x i8], ptr %183, i64 0, i64 0, !dbg !4132
  %185 = load i8, ptr %184, align 4, !dbg !4132
  %186 = sext i8 %185 to i32, !dbg !4132
  %187 = icmp ne i32 %186, 0, !dbg !4132
  br i1 %187, label %188, label %192, !dbg !4134

188:                                              ; preds = %181
  %189 = load ptr, ptr %2, align 8, !dbg !4135
  %190 = getelementptr inbounds %struct.redisContext, ptr %189, i32 0, i32 1, !dbg !4137
  %191 = getelementptr inbounds [128 x i8], ptr %190, i64 0, i64 0, !dbg !4135
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.38, ptr noundef %191), !dbg !4138
  br label %192, !dbg !4139

192:                                              ; preds = %188, %181, %176
  %193 = load ptr, ptr %2, align 8, !dbg !4140
  call void @redisFree(ptr noundef %193), !dbg !4141
  store ptr null, ptr %2, align 8, !dbg !4142
  br label %230, !dbg !4143

194:                                              ; preds = %168
  %195 = load ptr, ptr %10, align 8, !dbg !4144
  call void @turnFreeRedisReply(ptr noundef %195), !dbg !4146
  %196 = load ptr, ptr %4, align 8, !dbg !4147
  %197 = getelementptr inbounds %struct._Ryconninfo, ptr %196, i32 0, i32 1, !dbg !4149
  %198 = load ptr, ptr %197, align 8, !dbg !4149
  %199 = icmp ne ptr %198, null, !dbg !4147
  br i1 %199, label %200, label %229, !dbg !4150

200:                                              ; preds = %194
  %201 = load ptr, ptr %2, align 8, !dbg !4151
  %202 = load ptr, ptr %4, align 8, !dbg !4153
  %203 = getelementptr inbounds %struct._Ryconninfo, ptr %202, i32 0, i32 1, !dbg !4154
  %204 = load ptr, ptr %203, align 8, !dbg !4154
  %205 = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %201, ptr noundef @.str.5, ptr noundef %204), !dbg !4155
  store ptr %205, ptr %10, align 8, !dbg !4156
  %206 = load ptr, ptr %10, align 8, !dbg !4157
  %207 = icmp ne ptr %206, null, !dbg !4157
  br i1 %207, label %226, label %208, !dbg !4159

208:                                              ; preds = %200
  %209 = load ptr, ptr %2, align 8, !dbg !4160
  %210 = getelementptr inbounds %struct.redisContext, ptr %209, i32 0, i32 0, !dbg !4163
  %211 = load i32, ptr %210, align 8, !dbg !4163
  %212 = icmp ne i32 %211, 0, !dbg !4160
  br i1 %212, label %213, label %224, !dbg !4164

213:                                              ; preds = %208
  %214 = load ptr, ptr %2, align 8, !dbg !4165
  %215 = getelementptr inbounds %struct.redisContext, ptr %214, i32 0, i32 1, !dbg !4166
  %216 = getelementptr inbounds [128 x i8], ptr %215, i64 0, i64 0, !dbg !4165
  %217 = load i8, ptr %216, align 4, !dbg !4165
  %218 = sext i8 %217 to i32, !dbg !4165
  %219 = icmp ne i32 %218, 0, !dbg !4165
  br i1 %219, label %220, label %224, !dbg !4167

220:                                              ; preds = %213
  %221 = load ptr, ptr %2, align 8, !dbg !4168
  %222 = getelementptr inbounds %struct.redisContext, ptr %221, i32 0, i32 1, !dbg !4170
  %223 = getelementptr inbounds [128 x i8], ptr %222, i64 0, i64 0, !dbg !4168
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.38, ptr noundef %223), !dbg !4171
  br label %224, !dbg !4172

224:                                              ; preds = %220, %213, %208
  %225 = load ptr, ptr %2, align 8, !dbg !4173
  call void @redisFree(ptr noundef %225), !dbg !4174
  store ptr null, ptr %2, align 8, !dbg !4175
  br label %228, !dbg !4176

226:                                              ; preds = %200
  %227 = load ptr, ptr %10, align 8, !dbg !4177
  call void @turnFreeRedisReply(ptr noundef %227), !dbg !4179
  br label %228

228:                                              ; preds = %226, %224
  br label %229, !dbg !4180

229:                                              ; preds = %228, %194
  br label %230

230:                                              ; preds = %229, %192
  br label %231, !dbg !4181

231:                                              ; preds = %230, %163
  br label %232

232:                                              ; preds = %231, %161
  br label %233, !dbg !4182

233:                                              ; preds = %232, %143
  %234 = load ptr, ptr %2, align 8, !dbg !4183
  %235 = icmp ne ptr %234, null, !dbg !4183
  br i1 %235, label %237, label %236, !dbg !4185

236:                                              ; preds = %233
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.10), !dbg !4186
  br label %245, !dbg !4188

237:                                              ; preds = %233
  %238 = load i32, ptr @donot_print_connection_success, align 4, !dbg !4189
  %239 = icmp ne i32 %238, 0, !dbg !4189
  br i1 %239, label %244, label %240, !dbg !4191

240:                                              ; preds = %237
  %241 = load ptr, ptr %1, align 8, !dbg !4192
  %242 = getelementptr inbounds %struct._persistent_users_db_t, ptr %241, i32 0, i32 0, !dbg !4194
  %243 = getelementptr inbounds [1025 x i8], ptr %242, i64 0, i64 0, !dbg !4192
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.39, ptr noundef %243), !dbg !4195
  store i32 1, ptr @donot_print_connection_success, align 4, !dbg !4196
  br label %244, !dbg !4197

244:                                              ; preds = %240, %237
  br label %245

245:                                              ; preds = %244, %236
  %246 = load ptr, ptr %4, align 8, !dbg !4198
  call void @RyconninfoFree(ptr noundef %246), !dbg !4199
  br label %247

247:                                              ; preds = %245, %61
  br label %248

248:                                              ; preds = %247, %57
  %249 = load ptr, ptr %2, align 8, !dbg !4200
  %250 = icmp ne ptr %249, null, !dbg !4200
  br i1 %250, label %251, label %255, !dbg !4202

251:                                              ; preds = %248
  %252 = load i32, ptr @connection_key, align 4, !dbg !4203
  %253 = load ptr, ptr %2, align 8, !dbg !4205
  %254 = call i32 @pthread_setspecific(i32 noundef %252, ptr noundef %253) #7, !dbg !4206
  br label %255, !dbg !4207

255:                                              ; preds = %251, %248
  br label %256, !dbg !4208

256:                                              ; preds = %255, %34
  %257 = load ptr, ptr %2, align 8, !dbg !4209
  ret ptr %257, !dbg !4210
}

declare ptr @get_persistent_users_db() #2

; Function Attrs: nounwind
declare ptr @pthread_getspecific(i32 noundef) #3

; Function Attrs: nounwind
declare i32 @pthread_setspecific(i32 noundef, ptr noundef) #3

declare i64 @get_hmackey_size(i32 noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #5

declare i32 @convert_string_key_to_binary(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strchr(ptr noundef, i32 noundef) #5

declare i32 @printf(ptr noundef, ...) #2

declare void @send_message_to_redis(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) #2

declare i32 @add_ip_list_range(ptr noundef, ptr noundef, ptr noundef) #2

declare ptr @ur_string_map_create(ptr noundef) #2

declare ptr @get_realm(ptr noundef) #2

declare i32 @ur_string_map_put(ptr noundef, ptr noundef, ptr noundef) #2

declare void @update_o_to_realm(ptr noundef) #2

declare void @lock_realms() #2

declare void @unlock_realms() #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_redis_realm_opt(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !4211 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca [1025 x i8], align 16
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4215, metadata !DIExpression()), !dbg !4216
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4217, metadata !DIExpression()), !dbg !4218
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4219, metadata !DIExpression()), !dbg !4220
  call void @llvm.dbg.declare(metadata ptr %7, metadata !4221, metadata !DIExpression()), !dbg !4222
  store i32 0, ptr %7, align 4, !dbg !4222
  call void @llvm.dbg.declare(metadata ptr %8, metadata !4223, metadata !DIExpression()), !dbg !4224
  %11 = call ptr @get_redis_connection(), !dbg !4225
  store ptr %11, ptr %8, align 8, !dbg !4224
  %12 = load ptr, ptr %8, align 8, !dbg !4226
  %13 = icmp ne ptr %12, null, !dbg !4226
  br i1 %13, label %14, label %58, !dbg !4228

14:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata ptr %9, metadata !4229, metadata !DIExpression()), !dbg !4231
  store ptr null, ptr %9, align 8, !dbg !4231
  call void @llvm.dbg.declare(metadata ptr %10, metadata !4232, metadata !DIExpression()), !dbg !4233
  %15 = getelementptr inbounds [1025 x i8], ptr %10, i64 0, i64 0, !dbg !4234
  %16 = load ptr, ptr %4, align 8, !dbg !4235
  %17 = load ptr, ptr %5, align 8, !dbg !4236
  %18 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %15, i64 noundef 1025, ptr noundef @.str.81, ptr noundef %16, ptr noundef %17) #7, !dbg !4237
  %19 = load ptr, ptr %8, align 8, !dbg !4238
  %20 = getelementptr inbounds [1025 x i8], ptr %10, i64 0, i64 0, !dbg !4239
  %21 = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %19, ptr noundef %20), !dbg !4240
  store ptr %21, ptr %9, align 8, !dbg !4241
  %22 = load ptr, ptr %9, align 8, !dbg !4242
  %23 = icmp ne ptr %22, null, !dbg !4242
  br i1 %23, label %24, label %57, !dbg !4244

24:                                               ; preds = %14
  %25 = load ptr, ptr %9, align 8, !dbg !4245
  %26 = getelementptr inbounds %struct.redisReply, ptr %25, i32 0, i32 0, !dbg !4248
  %27 = load i32, ptr %26, align 8, !dbg !4248
  %28 = icmp eq i32 %27, 6, !dbg !4249
  br i1 %28, label %29, label %33, !dbg !4250

29:                                               ; preds = %24
  %30 = load ptr, ptr %9, align 8, !dbg !4251
  %31 = getelementptr inbounds %struct.redisReply, ptr %30, i32 0, i32 3, !dbg !4252
  %32 = load ptr, ptr %31, align 8, !dbg !4252
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.7, ptr noundef %32), !dbg !4253
  br label %55, !dbg !4253

33:                                               ; preds = %24
  %34 = load ptr, ptr %9, align 8, !dbg !4254
  %35 = getelementptr inbounds %struct.redisReply, ptr %34, i32 0, i32 0, !dbg !4256
  %36 = load i32, ptr %35, align 8, !dbg !4256
  %37 = icmp ne i32 %36, 1, !dbg !4257
  br i1 %37, label %38, label %48, !dbg !4258

38:                                               ; preds = %33
  %39 = load ptr, ptr %9, align 8, !dbg !4259
  %40 = getelementptr inbounds %struct.redisReply, ptr %39, i32 0, i32 0, !dbg !4262
  %41 = load i32, ptr %40, align 8, !dbg !4262
  %42 = icmp ne i32 %41, 4, !dbg !4263
  br i1 %42, label %43, label %47, !dbg !4264

43:                                               ; preds = %38
  %44 = load ptr, ptr %9, align 8, !dbg !4265
  %45 = getelementptr inbounds %struct.redisReply, ptr %44, i32 0, i32 0, !dbg !4266
  %46 = load i32, ptr %45, align 8, !dbg !4266
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.8, i32 noundef %46), !dbg !4267
  br label %47, !dbg !4267

47:                                               ; preds = %43, %38
  br label %54, !dbg !4268

48:                                               ; preds = %33
  call void @lock_realms(), !dbg !4269
  %49 = load ptr, ptr %9, align 8, !dbg !4271
  %50 = getelementptr inbounds %struct.redisReply, ptr %49, i32 0, i32 3, !dbg !4272
  %51 = load ptr, ptr %50, align 8, !dbg !4272
  %52 = call i64 @atol(ptr noundef %51) #8, !dbg !4273
  %53 = load ptr, ptr %6, align 8, !dbg !4274
  store i64 %52, ptr %53, align 8, !dbg !4275
  call void @unlock_realms(), !dbg !4276
  store i32 1, ptr %7, align 4, !dbg !4277
  br label %54

54:                                               ; preds = %48, %47
  br label %55

55:                                               ; preds = %54, %29
  %56 = load ptr, ptr %9, align 8, !dbg !4278
  call void @turnFreeRedisReply(ptr noundef %56), !dbg !4279
  br label %57, !dbg !4280

57:                                               ; preds = %55, %14
  br label %58, !dbg !4281

58:                                               ; preds = %57, %3
  %59 = load i32, ptr %7, align 4, !dbg !4282
  ret i32 %59, !dbg !4283
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @atol(ptr noundef) #5

; Function Attrs: nounwind
declare i64 @strtoull(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind
declare i64 @strtoul(ptr noundef, ptr noundef, i32 noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!56}
!llvm.module.flags = !{!682, !683, !684, !685, !686, !687, !688}
!llvm.ident = !{!689}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 172, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/apps/relay/dbdrivers/dbd_redis.c", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "30aa67407455ac8d6473d444ab4ab559")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 592, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 74)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 175, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 560, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 70)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 192, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 10)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 207, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 360, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 45)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 210, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 8)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 213, type: !14, isLocal: true, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !2, line: 216, type: !31, isLocal: true, isDefinition: true)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 32)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(scope: null, file: !2, line: 225, type: !36, isLocal: true, isDefinition: true)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 11)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(scope: null, file: !2, line: 228, type: !41, isLocal: true, isDefinition: true)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 21)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(scope: null, file: !2, line: 238, type: !46, isLocal: true, isDefinition: true)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 7)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(scope: null, file: !2, line: 254, type: !51, isLocal: true, isDefinition: true)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 39)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(name: "donot_print_connection_success", scope: !56, file: !2, line: 41, type: !74, isLocal: true, isDefinition: true)
!56 = distinct !DICompileUnit(language: DW_LANG_C11, file: !57, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !58, retainedTypes: !82, globals: !223, splitDebugInlining: false, nameTableKind: None)
!57 = !DIFile(filename: "/home/raj/coturn/src/apps/relay/dbdrivers/dbd_redis.c", directory: "/home/raj/coturn/build", checksumkind: CSK_MD5, checksum: "30aa67407455ac8d6473d444ab4ab559")
!58 = !{!59, !67, !72}
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !60, line: 47, baseType: !61, size: 32, elements: !62)
!60 = !DIFile(filename: "src/apps/common/ns_turn_utils.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "74cb4019b1eb9d8e2b879df518b15a25")
!61 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!62 = !{!63, !64, !65, !66}
!63 = !DIEnumerator(name: "TURN_LOG_LEVEL_INFO", value: 0)
!64 = !DIEnumerator(name: "TURN_LOG_LEVEL_CONTROL", value: 1)
!65 = !DIEnumerator(name: "TURN_LOG_LEVEL_WARNING", value: 2)
!66 = !DIEnumerator(name: "TURN_LOG_LEVEL_ERROR", value: 3)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "redisConnectionType", file: !68, line: 111, baseType: !61, size: 32, elements: !69)
!68 = !DIFile(filename: "/usr/include/hiredis/hiredis.h", directory: "", checksumkind: CSK_MD5, checksum: "5e1762de74574e650d25f42de25117d4")
!69 = !{!70, !71}
!70 = !DIEnumerator(name: "REDIS_CONN_TCP", value: 0)
!71 = !DIEnumerator(name: "REDIS_CONN_UNIX", value: 1)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_SHATYPE", file: !73, line: 160, baseType: !74, size: 32, elements: !75)
!73 = !DIFile(filename: "src/client/ns_turn_msg_defs.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "4d8c44ae9e82b7a50b86805787352690")
!74 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!75 = !{!76, !77, !78, !79, !80, !81}
!76 = !DIEnumerator(name: "SHATYPE_ERROR", value: -1)
!77 = !DIEnumerator(name: "SHATYPE_DEFAULT", value: 0)
!78 = !DIEnumerator(name: "SHATYPE_SHA1", value: 0)
!79 = !DIEnumerator(name: "SHATYPE_SHA256", value: 1)
!80 = !DIEnumerator(name: "SHATYPE_SHA384", value: 2)
!81 = !DIEnumerator(name: "SHATYPE_SHA512", value: 3)
!82 = !{!83, !84, !86, !74, !87, !92, !108, !61, !117, !102, !204, !206, !208, !210, !212, !213, !216, !218}
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !88, line: 10, baseType: !89)
!88 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "5c299a4954617c88bb03645c7864e1b1")
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !90, line: 160, baseType: !91)
!90 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!91 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisReply", file: !68, line: 96, baseType: !94)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisReply", file: !68, line: 89, size: 384, elements: !95)
!95 = !{!96, !97, !99, !103, !104, !105}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !94, file: !68, line: 90, baseType: !74, size: 32)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !94, file: !68, line: 91, baseType: !98, size: 64, offset: 64)
!98 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !94, file: !68, line: 92, baseType: !100, size: 64, offset: 128)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !101, line: 46, baseType: !102)
!101 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!102 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !94, file: !68, line: 93, baseType: !86, size: 64, offset: 192)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !94, file: !68, line: 94, baseType: !100, size: 64, offset: 256)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "element", scope: !94, file: !68, line: 95, baseType: !106, size: 64, offset: 320)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ryconninfo", file: !2, line: 57, baseType: !110)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Ryconninfo", file: !2, line: 49, size: 256, elements: !111)
!111 = !{!112, !113, !114, !115, !116}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !110, file: !2, line: 50, baseType: !86, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "dbname", scope: !110, file: !2, line: 51, baseType: !86, size: 64, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !110, file: !2, line: 52, baseType: !86, size: 64, offset: 128)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "connect_timeout", scope: !110, file: !2, line: 53, baseType: !61, size: 32, offset: 192)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !110, file: !2, line: 54, baseType: !61, size: 32, offset: 224)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisContext", file: !68, line: 138, baseType: !119)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisContext", file: !68, line: 117, size: 1664, elements: !120)
!120 = !{!121, !122, !126, !127, !128, !129, !185, !186, !194, !200}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !119, file: !68, line: 118, baseType: !74, size: 32)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "errstr", scope: !119, file: !68, line: 119, baseType: !123, size: 1024, offset: 32)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1024, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 128)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !119, file: !68, line: 120, baseType: !74, size: 32, offset: 1056)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !119, file: !68, line: 121, baseType: !74, size: 32, offset: 1088)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "obuf", scope: !119, file: !68, line: 122, baseType: !86, size: 64, offset: 1152)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "reader", scope: !119, file: !68, line: 123, baseType: !130, size: 64, offset: 1216)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisReader", file: !132, line: 95, baseType: !133)
!132 = !DIFile(filename: "/usr/include/hiredis/read.h", directory: "", checksumkind: CSK_MD5, checksum: "5e2fbb2b7092d07192fd3a67cc71e387")
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisReader", file: !132, line: 80, size: 4480, elements: !134)
!134 = !{!135, !136, !137, !138, !139, !140, !141, !155, !156, !157, !184}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !133, file: !132, line: 81, baseType: !74, size: 32)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "errstr", scope: !133, file: !132, line: 82, baseType: !123, size: 1024, offset: 32)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !133, file: !132, line: 84, baseType: !86, size: 64, offset: 1088)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !133, file: !132, line: 85, baseType: !100, size: 64, offset: 1152)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !133, file: !132, line: 86, baseType: !100, size: 64, offset: 1216)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "maxbuf", scope: !133, file: !132, line: 87, baseType: !100, size: 64, offset: 1280)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "rstack", scope: !133, file: !132, line: 89, baseType: !142, size: 2880, offset: 1344)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 2880, elements: !153)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisReadTask", file: !132, line: 70, baseType: !144)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisReadTask", file: !132, line: 63, size: 320, elements: !145)
!145 = !{!146, !147, !148, !149, !150, !152}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !144, file: !132, line: 64, baseType: !74, size: 32)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !144, file: !132, line: 65, baseType: !74, size: 32, offset: 32)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !144, file: !132, line: 66, baseType: !74, size: 32, offset: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !144, file: !132, line: 67, baseType: !83, size: 64, offset: 128)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !144, file: !132, line: 68, baseType: !151, size: 64, offset: 192)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "privdata", scope: !144, file: !132, line: 69, baseType: !83, size: 64, offset: 256)
!153 = !{!154}
!154 = !DISubrange(count: 9)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "ridx", scope: !133, file: !132, line: 90, baseType: !74, size: 32, offset: 4224)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !133, file: !132, line: 91, baseType: !83, size: 64, offset: 4288)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !133, file: !132, line: 93, baseType: !158, size: 64, offset: 4352)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisReplyObjectFunctions", file: !132, line: 78, baseType: !160)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisReplyObjectFunctions", file: !132, line: 72, size: 320, elements: !161)
!161 = !{!162, !168, !172, !176, !180}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "createString", scope: !160, file: !132, line: 73, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DISubroutineType(types: !165)
!165 = !{!83, !166, !86, !100}
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "createArray", scope: !160, file: !132, line: 74, baseType: !169, size: 64, offset: 64)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DISubroutineType(types: !171)
!171 = !{!83, !166, !74}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "createInteger", scope: !160, file: !132, line: 75, baseType: !173, size: 64, offset: 128)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DISubroutineType(types: !175)
!175 = !{!83, !166, !98}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "createNil", scope: !160, file: !132, line: 76, baseType: !177, size: 64, offset: 192)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DISubroutineType(types: !179)
!179 = !{!83, !166}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "freeObject", scope: !160, file: !132, line: 77, baseType: !181, size: 64, offset: 256)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DISubroutineType(types: !183)
!183 = !{null, !83}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "privdata", scope: !133, file: !132, line: 94, baseType: !83, size: 64, offset: 4416)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "connection_type", scope: !119, file: !68, line: 125, baseType: !67, size: 32, offset: 1280)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !119, file: !68, line: 126, baseType: !187, size: 64, offset: 1344)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !189, line: 8, size: 128, elements: !190)
!189 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h", directory: "", checksumkind: CSK_MD5, checksum: "9b45d950050c215f216850b27bd1e8f3")
!190 = !{!191, !192}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !188, file: !189, line: 14, baseType: !89, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !188, file: !189, line: 15, baseType: !193, size: 64, offset: 64)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !90, line: 162, baseType: !91)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "tcp", scope: !119, file: !68, line: 132, baseType: !195, size: 192, offset: 1408)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !119, file: !68, line: 128, size: 192, elements: !196)
!196 = !{!197, !198, !199}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !195, file: !68, line: 129, baseType: !86, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "source_addr", scope: !195, file: !68, line: 130, baseType: !86, size: 64, offset: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !195, file: !68, line: 131, baseType: !74, size: 32, offset: 128)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "unix_sock", scope: !119, file: !68, line: 136, baseType: !201, size: 64, offset: 1600)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !119, file: !68, line: 134, size: 64, elements: !202)
!202 = !{!203}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !201, file: !68, line: 135, baseType: !86, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "redis_context_handle", file: !205, line: 45, baseType: !83)
!205 = !DIFile(filename: "src/apps/common/hiredis_libevent2.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "8bcf7d75479c12c7a6031a30f30ef1f7")
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "ur_string_map_key_type", file: !207, line: 224, baseType: !86)
!207 = !DIFile(filename: "src/server/ns_turn_maps.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "1d968a8e0fbb011891961d10535e1104")
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "band_limit_t", file: !209, line: 67, baseType: !102)
!209 = !DIFile(filename: "src/client/ns_turn_msg.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "43c56357294df21a547ee0716fe3769d")
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "vint", file: !211, line: 105, baseType: !74)
!211 = !DIFile(filename: "src/ns_turn_defs.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "126e9c9d0b914de7fdf6162f77453397")
!212 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !214, line: 27, baseType: !215)
!214 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !90, line: 45, baseType: !102)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !214, line: 26, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !90, line: 42, baseType: !61)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !220)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !214, line: 24, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !90, line: 38, baseType: !222)
!222 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!223 = !{!0, !7, !12, !17, !22, !27, !29, !34, !39, !44, !49, !224, !229, !234, !236, !241, !246, !248, !250, !253, !255, !257, !259, !261, !266, !268, !270, !272, !277, !279, !281, !283, !285, !290, !292, !294, !54, !299, !488, !493, !498, !501, !503, !508, !510, !515, !520, !525, !527, !529, !531, !536, !541, !543, !545, !550, !555, !557, !559, !561, !563, !568, !573, !575, !577, !579, !581, !583, !585, !590, !592, !597, !599, !601, !603, !605, !607, !609, !614, !616, !618, !620, !622, !624, !626, !628, !633, !635, !637, !639, !641, !643, !645, !647, !649, !651, !653, !658, !663, !668, !673, !678, !680}
!224 = !DIGlobalVariableExpression(var: !225, expr: !DIExpression())
!225 = distinct !DIGlobalVariable(scope: null, file: !2, line: 256, type: !226, isLocal: true, isDefinition: true)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !227)
!227 = !{!228}
!228 = !DISubrange(count: 42)
!229 = !DIGlobalVariableExpression(var: !230, expr: !DIExpression())
!230 = distinct !DIGlobalVariable(scope: null, file: !2, line: 79, type: !231, isLocal: true, isDefinition: true)
!231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !232)
!232 = !{!233}
!233 = !DISubrange(count: 2)
!234 = !DIGlobalVariableExpression(var: !235, expr: !DIExpression())
!235 = distinct !DIGlobalVariable(scope: null, file: !2, line: 85, type: !231, isLocal: true, isDefinition: true)
!236 = !DIGlobalVariableExpression(var: !237, expr: !DIExpression())
!237 = distinct !DIGlobalVariable(scope: null, file: !2, line: 96, type: !238, isLocal: true, isDefinition: true)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !239)
!239 = !{!240}
!240 = !DISubrange(count: 5)
!241 = !DIGlobalVariableExpression(var: !242, expr: !DIExpression())
!242 = distinct !DIGlobalVariable(scope: null, file: !2, line: 98, type: !243, isLocal: true, isDefinition: true)
!243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !244)
!244 = !{!245}
!245 = !DISubrange(count: 3)
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression())
!247 = distinct !DIGlobalVariable(scope: null, file: !2, line: 100, type: !238, isLocal: true, isDefinition: true)
!248 = !DIGlobalVariableExpression(var: !249, expr: !DIExpression())
!249 = distinct !DIGlobalVariable(scope: null, file: !2, line: 102, type: !46, isLocal: true, isDefinition: true)
!250 = !DIGlobalVariableExpression(var: !251, expr: !DIExpression())
!251 = distinct !DIGlobalVariable(scope: null, file: !2, line: 104, type: !252, isLocal: true, isDefinition: true)
!252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !153)
!253 = !DIGlobalVariableExpression(var: !254, expr: !DIExpression())
!254 = distinct !DIGlobalVariable(scope: null, file: !2, line: 106, type: !46, isLocal: true, isDefinition: true)
!255 = !DIGlobalVariableExpression(var: !256, expr: !DIExpression())
!256 = distinct !DIGlobalVariable(scope: null, file: !2, line: 108, type: !243, isLocal: true, isDefinition: true)
!257 = !DIGlobalVariableExpression(var: !258, expr: !DIExpression())
!258 = distinct !DIGlobalVariable(scope: null, file: !2, line: 110, type: !252, isLocal: true, isDefinition: true)
!259 = !DIGlobalVariableExpression(var: !260, expr: !DIExpression())
!260 = distinct !DIGlobalVariable(scope: null, file: !2, line: 112, type: !238, isLocal: true, isDefinition: true)
!261 = !DIGlobalVariableExpression(var: !262, expr: !DIExpression())
!262 = distinct !DIGlobalVariable(scope: null, file: !2, line: 114, type: !263, isLocal: true, isDefinition: true)
!263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !264)
!264 = !{!265}
!265 = !DISubrange(count: 6)
!266 = !DIGlobalVariableExpression(var: !267, expr: !DIExpression())
!267 = distinct !DIGlobalVariable(scope: null, file: !2, line: 116, type: !238, isLocal: true, isDefinition: true)
!268 = !DIGlobalVariableExpression(var: !269, expr: !DIExpression())
!269 = distinct !DIGlobalVariable(scope: null, file: !2, line: 118, type: !252, isLocal: true, isDefinition: true)
!270 = !DIGlobalVariableExpression(var: !271, expr: !DIExpression())
!271 = distinct !DIGlobalVariable(scope: null, file: !2, line: 120, type: !252, isLocal: true, isDefinition: true)
!272 = !DIGlobalVariableExpression(var: !273, expr: !DIExpression())
!273 = distinct !DIGlobalVariable(scope: null, file: !2, line: 122, type: !274, isLocal: true, isDefinition: true)
!274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !275)
!275 = !{!276}
!276 = !DISubrange(count: 4)
!277 = !DIGlobalVariableExpression(var: !278, expr: !DIExpression())
!278 = distinct !DIGlobalVariable(scope: null, file: !2, line: 124, type: !46, isLocal: true, isDefinition: true)
!279 = !DIGlobalVariableExpression(var: !280, expr: !DIExpression())
!280 = distinct !DIGlobalVariable(scope: null, file: !2, line: 126, type: !46, isLocal: true, isDefinition: true)
!281 = !DIGlobalVariableExpression(var: !282, expr: !DIExpression())
!282 = distinct !DIGlobalVariable(scope: null, file: !2, line: 128, type: !238, isLocal: true, isDefinition: true)
!283 = !DIGlobalVariableExpression(var: !284, expr: !DIExpression())
!284 = distinct !DIGlobalVariable(scope: null, file: !2, line: 130, type: !231, isLocal: true, isDefinition: true)
!285 = !DIGlobalVariableExpression(var: !286, expr: !DIExpression())
!286 = distinct !DIGlobalVariable(scope: null, file: !2, line: 132, type: !287, isLocal: true, isDefinition: true)
!287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !288)
!288 = !{!289}
!289 = !DISubrange(count: 16)
!290 = !DIGlobalVariableExpression(var: !291, expr: !DIExpression())
!291 = distinct !DIGlobalVariable(scope: null, file: !2, line: 134, type: !24, isLocal: true, isDefinition: true)
!292 = !DIGlobalVariableExpression(var: !293, expr: !DIExpression())
!293 = distinct !DIGlobalVariable(scope: null, file: !2, line: 153, type: !231, isLocal: true, isDefinition: true)
!294 = !DIGlobalVariableExpression(var: !295, expr: !DIExpression())
!295 = distinct !DIGlobalVariable(scope: null, file: !2, line: 157, type: !296, isLocal: true, isDefinition: true)
!296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !297)
!297 = !{!298}
!298 = !DISubrange(count: 1)
!299 = !DIGlobalVariableExpression(var: !300, expr: !DIExpression())
!300 = distinct !DIGlobalVariable(name: "driver", scope: !56, file: !2, line: 1361, type: !301, isLocal: true, isDefinition: true)
!301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !302)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_dbdriver_t", file: !303, line: 77, baseType: !304)
!303 = !DIFile(filename: "src/apps/relay/dbdrivers/dbdriver.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "00319dc97026a2c0105cbae0fcb396b3")
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_turn_dbdriver_t", file: !303, line: 50, size: 1664, elements: !305)
!305 = !{!306, !319, !323, !327, !331, !335, !336, !337, !338, !339, !343, !344, !348, !349, !350, !430, !434, !438, !459, !463, !467, !471, !475, !479, !480, !484}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "get_auth_secrets", scope: !304, file: !303, line: 51, baseType: !307, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DISubroutineType(types: !309)
!309 = !{!74, !310, !318}
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "secrets_list_t", file: !312, line: 143, baseType: !313)
!312 = !DIFile(filename: "src/apps/relay/userdb.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "ef7aa3b34af7515d3cf1275f8bfd0947")
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_secrets_list", file: !312, line: 139, size: 128, elements: !314)
!314 = !{!315, !317}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "secrets", scope: !313, file: !312, line: 140, baseType: !316, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "sz", scope: !313, file: !312, line: 141, baseType: !100, size: 64, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "get_user_key", scope: !304, file: !303, line: 52, baseType: !320, size: 64, offset: 64)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{!74, !318, !318, !318}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "set_user_key", scope: !304, file: !303, line: 53, baseType: !324, size: 64, offset: 128)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DISubroutineType(types: !326)
!326 = !{!74, !318, !318, !84}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "del_user", scope: !304, file: !303, line: 54, baseType: !328, size: 64, offset: 192)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DISubroutineType(types: !330)
!330 = !{!74, !318, !318}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "list_users", scope: !304, file: !303, line: 55, baseType: !332, size: 64, offset: 256)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{!74, !318, !310, !310}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "list_secrets", scope: !304, file: !303, line: 56, baseType: !332, size: 64, offset: 320)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "del_secret", scope: !304, file: !303, line: 57, baseType: !328, size: 64, offset: 384)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "set_secret", scope: !304, file: !303, line: 58, baseType: !328, size: 64, offset: 448)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "add_origin", scope: !304, file: !303, line: 59, baseType: !328, size: 64, offset: 512)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "del_origin", scope: !304, file: !303, line: 60, baseType: !340, size: 64, offset: 576)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DISubroutineType(types: !342)
!342 = !{!74, !318}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "list_origins", scope: !304, file: !303, line: 61, baseType: !332, size: 64, offset: 640)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "set_realm_option_one", scope: !304, file: !303, line: 62, baseType: !345, size: 64, offset: 704)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DISubroutineType(types: !347)
!347 = !{!74, !318, !102, !84}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "list_realm_options", scope: !304, file: !303, line: 63, baseType: !340, size: 64, offset: 768)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "auth_ping", scope: !304, file: !303, line: 64, baseType: !181, size: 64, offset: 832)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "get_ip_list", scope: !304, file: !303, line: 65, baseType: !351, size: 64, offset: 896)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DISubroutineType(types: !353)
!353 = !{!74, !84, !354}
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip_range_list_t", file: !356, line: 159, baseType: !357)
!356 = !DIFile(filename: "src/server/ns_turn_ioalib.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "c6bb568b11ce41f25b29a4464aa685c5")
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ip_range_list", file: !356, line: 154, size: 128, elements: !358)
!358 = !{!359, !429}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "rs", scope: !357, file: !356, line: 155, baseType: !360, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip_range_t", file: !356, line: 152, baseType: !362)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ip_range", file: !356, line: 146, size: 6624, elements: !363)
!363 = !{!364, !368, !372}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !362, file: !356, line: 147, baseType: !365, size: 2056)
!365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !366)
!366 = !{!367}
!367 = !DISubrange(count: 257)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "realm", scope: !362, file: !356, line: 148, baseType: !369, size: 4104, offset: 2056)
!369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 4104, elements: !370)
!370 = !{!371}
!371 = !DISubrange(count: 513)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "enc", scope: !362, file: !356, line: 149, baseType: !373, size: 448, offset: 6176)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_addr_range", file: !374, line: 53, baseType: !375)
!374 = !DIFile(filename: "src/client/ns_turn_ioaddr.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "6bb7c107d1e7937049c12f6d0dffd94c")
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !374, line: 50, size: 448, elements: !376)
!376 = !{!377, !428}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !375, file: !374, line: 51, baseType: !378, size: 224)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_addr", file: !374, line: 48, baseType: !379)
!379 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !374, line: 44, size: 224, elements: !380)
!380 = !{!381, !393, !409}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !379, file: !374, line: 45, baseType: !382, size: 128)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !383, line: 180, size: 128, elements: !384)
!383 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "e3826be048699664d9ef7b080f62f2e0")
!384 = !{!385, !389}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !382, file: !383, line: 182, baseType: !386, size: 16)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !387, line: 28, baseType: !388)
!387 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "dd7f1d9dd6e26f88d1726905ed5d9ff5")
!388 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !382, file: !383, line: 183, baseType: !390, size: 112, offset: 16)
!390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !391)
!391 = !{!392}
!392 = !DISubrange(count: 14)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "s4", scope: !379, file: !374, line: 46, baseType: !394, size: 128)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !395, line: 245, size: 128, elements: !396)
!395 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "eb6560f10d4cfe9f30fea2c92b9da0fd")
!396 = !{!397, !398, !402, !407}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !394, file: !395, line: 247, baseType: !386, size: 16)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !394, file: !395, line: 248, baseType: !399, size: 16, offset: 16)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !395, line: 123, baseType: !400)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !214, line: 25, baseType: !401)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !90, line: 40, baseType: !388)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !394, file: !395, line: 249, baseType: !403, size: 32, offset: 32)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !395, line: 31, size: 32, elements: !404)
!404 = !{!405}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !403, file: !395, line: 33, baseType: !406, size: 32)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !395, line: 30, baseType: !216)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !394, file: !395, line: 252, baseType: !408, size: 64, offset: 64)
!408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 64, elements: !25)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "s6", scope: !379, file: !374, line: 47, baseType: !410, size: 224)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !395, line: 260, size: 224, elements: !411)
!411 = !{!412, !413, !414, !415, !427}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_family", scope: !410, file: !395, line: 262, baseType: !386, size: 16)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_port", scope: !410, file: !395, line: 263, baseType: !399, size: 16, offset: 16)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_flowinfo", scope: !410, file: !395, line: 264, baseType: !216, size: 32, offset: 32)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !410, file: !395, line: 265, baseType: !416, size: 128, offset: 64)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !395, line: 219, size: 128, elements: !417)
!417 = !{!418}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !416, file: !395, line: 226, baseType: !419, size: 128)
!419 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !416, file: !395, line: 221, size: 128, elements: !420)
!420 = !{!421, !423, !425}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !419, file: !395, line: 223, baseType: !422, size: 128)
!422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 128, elements: !288)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !419, file: !395, line: 224, baseType: !424, size: 128)
!424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !400, size: 128, elements: !25)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !419, file: !395, line: 225, baseType: !426, size: 128)
!426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !216, size: 128, elements: !275)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_scope_id", scope: !410, file: !395, line: 266, baseType: !216, size: 32, offset: 192)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !375, file: !374, line: 52, baseType: !378, size: 224, offset: 224)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "ranges_number", scope: !357, file: !356, line: 156, baseType: !100, size: 64, offset: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "set_permission_ip", scope: !304, file: !303, line: 66, baseType: !431, size: 64, offset: 960)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DISubroutineType(types: !433)
!433 = !{!74, !84, !318, !84, !74}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "reread_realms", scope: !304, file: !303, line: 67, baseType: !435, size: 64, offset: 1024)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DISubroutineType(types: !437)
!437 = !{null, !310}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "set_oauth_key", scope: !304, file: !303, line: 68, baseType: !439, size: 64, offset: 1088)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DISubroutineType(types: !441)
!441 = !{!74, !442}
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "oauth_key_data_raw", file: !444, line: 144, baseType: !445)
!444 = !DIFile(filename: "src/apps/common/apputils.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "5f4d9112d5c1617ebc273618c0760b4a")
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_oauth_key_data_raw", file: !444, line: 135, size: 4800, elements: !446)
!446 = !{!447, !451, !452, !453, !454, !458}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "kid", scope: !445, file: !444, line: 136, baseType: !448, size: 1032)
!448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1032, elements: !449)
!449 = !{!450}
!450 = !DISubrange(count: 129)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "ikm_key", scope: !445, file: !444, line: 137, baseType: !365, size: 2056, offset: 1032)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !445, file: !444, line: 138, baseType: !213, size: 64, offset: 3136)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "lifetime", scope: !445, file: !444, line: 139, baseType: !216, size: 32, offset: 3200)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "as_rs_alg", scope: !445, file: !444, line: 140, baseType: !455, size: 520, offset: 3232)
!455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 520, elements: !456)
!456 = !{!457}
!457 = !DISubrange(count: 65)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "realm", scope: !445, file: !444, line: 141, baseType: !123, size: 1024, offset: 3752)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "get_oauth_key", scope: !304, file: !303, line: 69, baseType: !460, size: 64, offset: 1152)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DISubroutineType(types: !462)
!462 = !{!74, !218, !442}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "del_oauth_key", scope: !304, file: !303, line: 70, baseType: !464, size: 64, offset: 1216)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DISubroutineType(types: !466)
!466 = !{!74, !218}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "list_oauth_keys", scope: !304, file: !303, line: 71, baseType: !468, size: 64, offset: 1280)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DISubroutineType(types: !470)
!470 = !{!74, !310, !310, !310, !310, !310}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "get_admin_user", scope: !304, file: !303, line: 72, baseType: !472, size: 64, offset: 1344)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{!74, !218, !318, !318}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "set_admin_user", scope: !304, file: !303, line: 73, baseType: !476, size: 64, offset: 1408)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{!74, !218, !218, !218}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "del_admin_user", scope: !304, file: !303, line: 74, baseType: !464, size: 64, offset: 1472)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "list_admin_users", scope: !304, file: !303, line: 75, baseType: !481, size: 64, offset: 1536)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DISubroutineType(types: !483)
!483 = !{!74, !74}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !304, file: !303, line: 76, baseType: !485, size: 64, offset: 1600)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DISubroutineType(types: !487)
!487 = !{null}
!488 = !DIGlobalVariableExpression(var: !489, expr: !DIExpression())
!489 = distinct !DIGlobalVariable(scope: null, file: !2, line: 405, type: !490, isLocal: true, isDefinition: true)
!490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !491)
!491 = !{!492}
!492 = !DISubrange(count: 30)
!493 = !DIGlobalVariableExpression(var: !494, expr: !DIExpression())
!494 = distinct !DIGlobalVariable(scope: null, file: !2, line: 273, type: !495, isLocal: true, isDefinition: true)
!495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !496)
!496 = !{!497}
!497 = !DISubrange(count: 50)
!498 = !DIGlobalVariableExpression(var: !499, expr: !DIExpression())
!499 = distinct !DIGlobalVariable(scope: null, file: !2, line: 273, type: !500, isLocal: true, isDefinition: true)
!500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 168, elements: !42)
!501 = !DIGlobalVariableExpression(var: !502, expr: !DIExpression())
!502 = distinct !DIGlobalVariable(scope: null, file: !2, line: 318, type: !36, isLocal: true, isDefinition: true)
!503 = !DIGlobalVariableExpression(var: !504, expr: !DIExpression())
!504 = distinct !DIGlobalVariable(scope: null, file: !2, line: 351, type: !505, isLocal: true, isDefinition: true)
!505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !506)
!506 = !{!507}
!507 = !DISubrange(count: 38)
!508 = !DIGlobalVariableExpression(var: !509, expr: !DIExpression())
!509 = distinct !DIGlobalVariable(scope: null, file: !2, line: 433, type: !490, isLocal: true, isDefinition: true)
!510 = !DIGlobalVariableExpression(var: !511, expr: !DIExpression())
!511 = distinct !DIGlobalVariable(scope: null, file: !2, line: 444, type: !512, isLocal: true, isDefinition: true)
!512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !513)
!513 = !{!514}
!514 = !DISubrange(count: 31)
!515 = !DIGlobalVariableExpression(var: !516, expr: !DIExpression())
!516 = distinct !DIGlobalVariable(scope: null, file: !2, line: 446, type: !517, isLocal: true, isDefinition: true)
!517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !518)
!518 = !{!519}
!519 = !DISubrange(count: 24)
!520 = !DIGlobalVariableExpression(var: !521, expr: !DIExpression())
!521 = distinct !DIGlobalVariable(scope: null, file: !2, line: 504, type: !522, isLocal: true, isDefinition: true)
!522 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !523)
!523 = !{!524}
!524 = !DISubrange(count: 33)
!525 = !DIGlobalVariableExpression(var: !526, expr: !DIExpression())
!526 = distinct !DIGlobalVariable(scope: null, file: !2, line: 506, type: !238, isLocal: true, isDefinition: true)
!527 = !DIGlobalVariableExpression(var: !528, expr: !DIExpression())
!528 = distinct !DIGlobalVariable(scope: null, file: !2, line: 532, type: !490, isLocal: true, isDefinition: true)
!529 = !DIGlobalVariableExpression(var: !530, expr: !DIExpression())
!530 = distinct !DIGlobalVariable(scope: null, file: !2, line: 573, type: !490, isLocal: true, isDefinition: true)
!531 = !DIGlobalVariableExpression(var: !532, expr: !DIExpression())
!532 = distinct !DIGlobalVariable(scope: null, file: !2, line: 575, type: !533, isLocal: true, isDefinition: true)
!533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !534)
!534 = !{!535}
!535 = !DISubrange(count: 29)
!536 = !DIGlobalVariableExpression(var: !537, expr: !DIExpression())
!537 = distinct !DIGlobalVariable(scope: null, file: !2, line: 601, type: !538, isLocal: true, isDefinition: true)
!538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !539)
!539 = !{!540}
!540 = !DISubrange(count: 12)
!541 = !DIGlobalVariableExpression(var: !542, expr: !DIExpression())
!542 = distinct !DIGlobalVariable(scope: null, file: !2, line: 610, type: !263, isLocal: true, isDefinition: true)
!543 = !DIGlobalVariableExpression(var: !544, expr: !DIExpression())
!544 = distinct !DIGlobalVariable(scope: null, file: !2, line: 624, type: !24, isLocal: true, isDefinition: true)
!545 = !DIGlobalVariableExpression(var: !546, expr: !DIExpression())
!546 = distinct !DIGlobalVariable(scope: null, file: !2, line: 711, type: !547, isLocal: true, isDefinition: true)
!547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !548)
!548 = !{!549}
!549 = !DISubrange(count: 26)
!550 = !DIGlobalVariableExpression(var: !551, expr: !DIExpression())
!551 = distinct !DIGlobalVariable(scope: null, file: !2, line: 713, type: !552, isLocal: true, isDefinition: true)
!552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !553)
!553 = !{!554}
!554 = !DISubrange(count: 25)
!555 = !DIGlobalVariableExpression(var: !556, expr: !DIExpression())
!556 = distinct !DIGlobalVariable(scope: null, file: !2, line: 737, type: !538, isLocal: true, isDefinition: true)
!557 = !DIGlobalVariableExpression(var: !558, expr: !DIExpression())
!558 = distinct !DIGlobalVariable(scope: null, file: !2, line: 743, type: !274, isLocal: true, isDefinition: true)
!559 = !DIGlobalVariableExpression(var: !560, expr: !DIExpression())
!560 = distinct !DIGlobalVariable(scope: null, file: !2, line: 796, type: !533, isLocal: true, isDefinition: true)
!561 = !DIGlobalVariableExpression(var: !562, expr: !DIExpression())
!562 = distinct !DIGlobalVariable(scope: null, file: !2, line: 814, type: !533, isLocal: true, isDefinition: true)
!563 = !DIGlobalVariableExpression(var: !564, expr: !DIExpression())
!564 = distinct !DIGlobalVariable(scope: null, file: !2, line: 855, type: !565, isLocal: true, isDefinition: true)
!565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !566)
!566 = !{!567}
!567 = !DISubrange(count: 22)
!568 = !DIGlobalVariableExpression(var: !569, expr: !DIExpression())
!569 = distinct !DIGlobalVariable(scope: null, file: !2, line: 870, type: !570, isLocal: true, isDefinition: true)
!570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !571)
!571 = !{!572}
!572 = !DISubrange(count: 19)
!573 = !DIGlobalVariableExpression(var: !574, expr: !DIExpression())
!574 = distinct !DIGlobalVariable(scope: null, file: !2, line: 898, type: !570, isLocal: true, isDefinition: true)
!575 = !DIGlobalVariableExpression(var: !576, expr: !DIExpression())
!576 = distinct !DIGlobalVariable(scope: null, file: !2, line: 921, type: !570, isLocal: true, isDefinition: true)
!577 = !DIGlobalVariableExpression(var: !578, expr: !DIExpression())
!578 = distinct !DIGlobalVariable(scope: null, file: !2, line: 937, type: !538, isLocal: true, isDefinition: true)
!579 = !DIGlobalVariableExpression(var: !580, expr: !DIExpression())
!580 = distinct !DIGlobalVariable(scope: null, file: !2, line: 958, type: !552, isLocal: true, isDefinition: true)
!581 = !DIGlobalVariableExpression(var: !582, expr: !DIExpression())
!582 = distinct !DIGlobalVariable(scope: null, file: !2, line: 960, type: !41, isLocal: true, isDefinition: true)
!583 = !DIGlobalVariableExpression(var: !584, expr: !DIExpression())
!584 = distinct !DIGlobalVariable(scope: null, file: !2, line: 983, type: !41, isLocal: true, isDefinition: true)
!585 = !DIGlobalVariableExpression(var: !586, expr: !DIExpression())
!586 = distinct !DIGlobalVariable(scope: null, file: !2, line: 985, type: !587, isLocal: true, isDefinition: true)
!587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !588)
!588 = !{!589}
!589 = !DISubrange(count: 18)
!590 = !DIGlobalVariableExpression(var: !591, expr: !DIExpression())
!591 = distinct !DIGlobalVariable(scope: null, file: !2, line: 997, type: !252, isLocal: true, isDefinition: true)
!592 = !DIGlobalVariableExpression(var: !593, expr: !DIExpression())
!593 = distinct !DIGlobalVariable(scope: null, file: !2, line: 998, type: !594, isLocal: true, isDefinition: true)
!594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !595)
!595 = !{!596}
!596 = !DISubrange(count: 13)
!597 = !DIGlobalVariableExpression(var: !598, expr: !DIExpression())
!598 = distinct !DIGlobalVariable(scope: null, file: !2, line: 999, type: !538, isLocal: true, isDefinition: true)
!599 = !DIGlobalVariableExpression(var: !600, expr: !DIExpression())
!600 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1013, type: !46, isLocal: true, isDefinition: true)
!601 = !DIGlobalVariableExpression(var: !602, expr: !DIExpression())
!602 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1022, type: !252, isLocal: true, isDefinition: true)
!603 = !DIGlobalVariableExpression(var: !604, expr: !DIExpression())
!604 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1040, type: !24, isLocal: true, isDefinition: true)
!605 = !DIGlobalVariableExpression(var: !606, expr: !DIExpression())
!606 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1040, type: !24, isLocal: true, isDefinition: true)
!607 = !DIGlobalVariableExpression(var: !608, expr: !DIExpression())
!608 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1040, type: !24, isLocal: true, isDefinition: true)
!609 = !DIGlobalVariableExpression(var: !610, expr: !DIExpression())
!610 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1053, type: !611, isLocal: true, isDefinition: true)
!611 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !612)
!612 = !{!613}
!613 = !DISubrange(count: 20)
!614 = !DIGlobalVariableExpression(var: !615, expr: !DIExpression())
!615 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1083, type: !231, isLocal: true, isDefinition: true)
!616 = !DIGlobalVariableExpression(var: !617, expr: !DIExpression())
!617 = distinct !DIGlobalVariable(scope: null, file: !2, line: 837, type: !522, isLocal: true, isDefinition: true)
!618 = !DIGlobalVariableExpression(var: !619, expr: !DIExpression())
!619 = distinct !DIGlobalVariable(scope: null, file: !2, line: 839, type: !522, isLocal: true, isDefinition: true)
!620 = !DIGlobalVariableExpression(var: !621, expr: !DIExpression())
!621 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1190, type: !24, isLocal: true, isDefinition: true)
!622 = !DIGlobalVariableExpression(var: !623, expr: !DIExpression())
!623 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1200, type: !538, isLocal: true, isDefinition: true)
!624 = !DIGlobalVariableExpression(var: !625, expr: !DIExpression())
!625 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1210, type: !36, isLocal: true, isDefinition: true)
!626 = !DIGlobalVariableExpression(var: !627, expr: !DIExpression())
!627 = distinct !DIGlobalVariable(scope: null, file: !2, line: 376, type: !41, isLocal: true, isDefinition: true)
!628 = !DIGlobalVariableExpression(var: !629, expr: !DIExpression())
!629 = distinct !DIGlobalVariable(scope: null, file: !2, line: 517, type: !630, isLocal: true, isDefinition: true)
!630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 680, elements: !631)
!631 = !{!632}
!632 = !DISubrange(count: 85)
!633 = !DIGlobalVariableExpression(var: !634, expr: !DIExpression())
!634 = distinct !DIGlobalVariable(scope: null, file: !2, line: 464, type: !547, isLocal: true, isDefinition: true)
!635 = !DIGlobalVariableExpression(var: !636, expr: !DIExpression())
!636 = distinct !DIGlobalVariable(scope: null, file: !2, line: 478, type: !14, isLocal: true, isDefinition: true)
!637 = !DIGlobalVariableExpression(var: !638, expr: !DIExpression())
!638 = distinct !DIGlobalVariable(scope: null, file: !2, line: 480, type: !263, isLocal: true, isDefinition: true)
!639 = !DIGlobalVariableExpression(var: !640, expr: !DIExpression())
!640 = distinct !DIGlobalVariable(scope: null, file: !2, line: 482, type: !24, isLocal: true, isDefinition: true)
!641 = !DIGlobalVariableExpression(var: !642, expr: !DIExpression())
!642 = distinct !DIGlobalVariable(scope: null, file: !2, line: 484, type: !14, isLocal: true, isDefinition: true)
!643 = !DIGlobalVariableExpression(var: !644, expr: !DIExpression())
!644 = distinct !DIGlobalVariable(scope: null, file: !2, line: 486, type: !252, isLocal: true, isDefinition: true)
!645 = !DIGlobalVariableExpression(var: !646, expr: !DIExpression())
!646 = distinct !DIGlobalVariable(scope: null, file: !2, line: 547, type: !565, isLocal: true, isDefinition: true)
!647 = !DIGlobalVariableExpression(var: !648, expr: !DIExpression())
!648 = distinct !DIGlobalVariable(scope: null, file: !2, line: 645, type: !565, isLocal: true, isDefinition: true)
!649 = !DIGlobalVariableExpression(var: !650, expr: !DIExpression())
!650 = distinct !DIGlobalVariable(scope: null, file: !2, line: 676, type: !238, isLocal: true, isDefinition: true)
!651 = !DIGlobalVariableExpression(var: !652, expr: !DIExpression())
!652 = distinct !DIGlobalVariable(scope: null, file: !2, line: 681, type: !274, isLocal: true, isDefinition: true)
!653 = !DIGlobalVariableExpression(var: !654, expr: !DIExpression())
!654 = distinct !DIGlobalVariable(scope: null, file: !2, line: 685, type: !655, isLocal: true, isDefinition: true)
!655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 608, elements: !656)
!656 = !{!657}
!657 = !DISubrange(count: 76)
!658 = !DIGlobalVariableExpression(var: !659, expr: !DIExpression())
!659 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1233, type: !660, isLocal: true, isDefinition: true)
!660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !661)
!661 = !{!662}
!662 = !DISubrange(count: 27)
!663 = !DIGlobalVariableExpression(var: !664, expr: !DIExpression())
!664 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1270, type: !665, isLocal: true, isDefinition: true)
!665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 368, elements: !666)
!666 = !{!667}
!667 = !DISubrange(count: 46)
!668 = !DIGlobalVariableExpression(var: !669, expr: !DIExpression())
!669 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1272, type: !670, isLocal: true, isDefinition: true)
!670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !671)
!671 = !{!672}
!672 = !DISubrange(count: 37)
!673 = !DIGlobalVariableExpression(var: !674, expr: !DIExpression())
!674 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1287, type: !675, isLocal: true, isDefinition: true)
!675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !676)
!676 = !{!677}
!677 = !DISubrange(count: 23)
!678 = !DIGlobalVariableExpression(var: !679, expr: !DIExpression())
!679 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1308, type: !675, isLocal: true, isDefinition: true)
!680 = !DIGlobalVariableExpression(var: !681, expr: !DIExpression())
!681 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1356, type: !490, isLocal: true, isDefinition: true)
!682 = !{i32 7, !"Dwarf Version", i32 5}
!683 = !{i32 2, !"Debug Info Version", i32 3}
!684 = !{i32 1, !"wchar_size", i32 4}
!685 = !{i32 8, !"PIC Level", i32 2}
!686 = !{i32 7, !"PIE Level", i32 2}
!687 = !{i32 7, !"uwtable", i32 2}
!688 = !{i32 7, !"frame-pointer", i32 2}
!689 = !{!"clang version 16.0.0"}
!690 = distinct !DISubprogram(name: "get_redis_async_connection", scope: !2, file: !2, line: 163, type: !691, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !56, retainedNodes: !696)
!691 = !DISubroutineType(types: !692)
!692 = !{!204, !693, !84, !74}
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DICompositeType(tag: DW_TAG_structure_type, name: "event_base", file: !695, line: 118, flags: DIFlagFwdDecl)
!695 = !DIFile(filename: "/usr/include/event2/bufferevent.h", directory: "", checksumkind: CSK_MD5, checksum: "15bb43c26b2c9058b6c64d44779c7263")
!696 = !{}
!697 = !DILocalVariable(name: "base", arg: 1, scope: !690, file: !2, line: 163, type: !693)
!698 = !DILocation(line: 163, column: 68, scope: !690)
!699 = !DILocalVariable(name: "connection_string", arg: 2, scope: !690, file: !2, line: 163, type: !84)
!700 = !DILocation(line: 163, column: 86, scope: !690)
!701 = !DILocalVariable(name: "delete_keys", arg: 3, scope: !690, file: !2, line: 163, type: !74)
!702 = !DILocation(line: 163, column: 109, scope: !690)
!703 = !DILocalVariable(name: "ret", scope: !690, file: !2, line: 165, type: !204)
!704 = !DILocation(line: 165, column: 23, scope: !690)
!705 = !DILocalVariable(name: "errmsg", scope: !690, file: !2, line: 167, type: !86)
!706 = !DILocation(line: 167, column: 8, scope: !690)
!707 = !DILocation(line: 168, column: 5, scope: !708)
!708 = distinct !DILexicalBlock(scope: !690, file: !2, line: 168, column: 5)
!709 = !DILocation(line: 168, column: 11, scope: !708)
!710 = !DILocation(line: 168, column: 14, scope: !708)
!711 = !DILocation(line: 168, column: 33, scope: !708)
!712 = !DILocation(line: 168, column: 36, scope: !708)
!713 = !DILocation(line: 168, column: 5, scope: !690)
!714 = !DILocalVariable(name: "co", scope: !715, file: !2, line: 169, type: !108)
!715 = distinct !DILexicalBlock(scope: !708, file: !2, line: 168, column: 58)
!716 = !DILocation(line: 169, column: 15, scope: !715)
!717 = !DILocation(line: 169, column: 36, scope: !715)
!718 = !DILocation(line: 169, column: 20, scope: !715)
!719 = !DILocation(line: 170, column: 8, scope: !720)
!720 = distinct !DILexicalBlock(scope: !715, file: !2, line: 170, column: 7)
!721 = !DILocation(line: 170, column: 7, scope: !715)
!722 = !DILocation(line: 171, column: 8, scope: !723)
!723 = distinct !DILexicalBlock(scope: !724, file: !2, line: 171, column: 8)
!724 = distinct !DILexicalBlock(scope: !720, file: !2, line: 170, column: 12)
!725 = !DILocation(line: 171, column: 8, scope: !724)
!726 = !DILocation(line: 172, column: 119, scope: !727)
!727 = distinct !DILexicalBlock(scope: !723, file: !2, line: 171, column: 16)
!728 = !DILocation(line: 172, column: 138, scope: !727)
!729 = !DILocation(line: 172, column: 5, scope: !727)
!730 = !DILocation(line: 173, column: 10, scope: !727)
!731 = !DILocation(line: 173, column: 5, scope: !727)
!732 = !DILocation(line: 174, column: 4, scope: !727)
!733 = !DILocation(line: 175, column: 115, scope: !734)
!734 = distinct !DILexicalBlock(scope: !723, file: !2, line: 174, column: 11)
!735 = !DILocation(line: 175, column: 5, scope: !734)
!736 = !DILocation(line: 177, column: 3, scope: !724)
!737 = !DILocation(line: 177, column: 14, scope: !738)
!738 = distinct !DILexicalBlock(scope: !720, file: !2, line: 177, column: 14)
!739 = !DILocation(line: 177, column: 14, scope: !720)
!740 = !DILocation(line: 178, column: 118, scope: !741)
!741 = distinct !DILexicalBlock(scope: !738, file: !2, line: 177, column: 22)
!742 = !DILocation(line: 178, column: 137, scope: !741)
!743 = !DILocation(line: 178, column: 4, scope: !741)
!744 = !DILocation(line: 179, column: 9, scope: !741)
!745 = !DILocation(line: 179, column: 4, scope: !741)
!746 = !DILocation(line: 180, column: 19, scope: !741)
!747 = !DILocation(line: 180, column: 4, scope: !741)
!748 = !DILocation(line: 181, column: 3, scope: !741)
!749 = !DILocation(line: 183, column: 7, scope: !750)
!750 = distinct !DILexicalBlock(scope: !751, file: !2, line: 183, column: 7)
!751 = distinct !DILexicalBlock(scope: !738, file: !2, line: 181, column: 10)
!752 = !DILocation(line: 183, column: 7, scope: !751)
!753 = !DILocalVariable(name: "rc", scope: !754, file: !2, line: 185, type: !117)
!754 = distinct !DILexicalBlock(scope: !750, file: !2, line: 183, column: 20)
!755 = !DILocation(line: 185, column: 19, scope: !754)
!756 = !DILocalVariable(name: "ip", scope: !754, file: !2, line: 187, type: !757)
!757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !758)
!758 = !{!759}
!759 = !DISubrange(count: 256)
!760 = !DILocation(line: 187, column: 10, scope: !754)
!761 = !DILocalVariable(name: "port", scope: !754, file: !2, line: 188, type: !74)
!762 = !DILocation(line: 188, column: 9, scope: !754)
!763 = !DILocation(line: 189, column: 9, scope: !764)
!764 = distinct !DILexicalBlock(scope: !754, file: !2, line: 189, column: 9)
!765 = !DILocation(line: 189, column: 13, scope: !764)
!766 = !DILocation(line: 189, column: 9, scope: !754)
!767 = !DILocation(line: 190, column: 6, scope: !764)
!768 = !DILocation(line: 190, column: 6, scope: !769)
!769 = distinct !DILexicalBlock(scope: !770, file: !2, line: 190, column: 6)
!770 = distinct !DILexicalBlock(scope: !764, file: !2, line: 190, column: 6)
!771 = !DILocation(line: 190, column: 6, scope: !770)
!772 = !DILocalVariable(name: "szdst", scope: !773, file: !2, line: 190, type: !100)
!773 = distinct !DILexicalBlock(scope: !774, file: !2, line: 190, column: 6)
!774 = distinct !DILexicalBlock(scope: !775, file: !2, line: 190, column: 6)
!775 = distinct !DILexicalBlock(scope: !769, file: !2, line: 190, column: 6)
!776 = !DILocation(line: 190, column: 6, scope: !773)
!777 = !DILocation(line: 190, column: 6, scope: !775)
!778 = !DILocation(line: 191, column: 10, scope: !779)
!779 = distinct !DILexicalBlock(scope: !754, file: !2, line: 191, column: 9)
!780 = !DILocation(line: 191, column: 9, scope: !754)
!781 = !DILocation(line: 192, column: 6, scope: !779)
!782 = !DILocation(line: 192, column: 6, scope: !783)
!783 = distinct !DILexicalBlock(scope: !784, file: !2, line: 192, column: 6)
!784 = distinct !DILexicalBlock(scope: !779, file: !2, line: 192, column: 6)
!785 = !DILocation(line: 192, column: 6, scope: !784)
!786 = !DILocalVariable(name: "szdst", scope: !787, file: !2, line: 192, type: !100)
!787 = distinct !DILexicalBlock(scope: !788, file: !2, line: 192, column: 6)
!788 = distinct !DILexicalBlock(scope: !789, file: !2, line: 192, column: 6)
!789 = distinct !DILexicalBlock(scope: !783, file: !2, line: 192, column: 6)
!790 = !DILocation(line: 192, column: 6, scope: !787)
!791 = !DILocation(line: 192, column: 6, scope: !789)
!792 = !DILocation(line: 194, column: 9, scope: !793)
!793 = distinct !DILexicalBlock(scope: !754, file: !2, line: 194, column: 9)
!794 = !DILocation(line: 194, column: 13, scope: !793)
!795 = !DILocation(line: 194, column: 9, scope: !754)
!796 = !DILocation(line: 195, column: 20, scope: !793)
!797 = !DILocation(line: 195, column: 24, scope: !793)
!798 = !DILocation(line: 195, column: 11, scope: !793)
!799 = !DILocation(line: 195, column: 6, scope: !793)
!800 = !DILocation(line: 197, column: 9, scope: !801)
!801 = distinct !DILexicalBlock(scope: !754, file: !2, line: 197, column: 9)
!802 = !DILocation(line: 197, column: 13, scope: !801)
!803 = !DILocation(line: 197, column: 9, scope: !754)
!804 = !DILocalVariable(name: "tv", scope: !805, file: !2, line: 198, type: !188)
!805 = distinct !DILexicalBlock(scope: !801, file: !2, line: 197, column: 30)
!806 = !DILocation(line: 198, column: 21, scope: !805)
!807 = !DILocation(line: 199, column: 9, scope: !805)
!808 = !DILocation(line: 199, column: 17, scope: !805)
!809 = !DILocation(line: 200, column: 28, scope: !805)
!810 = !DILocation(line: 200, column: 32, scope: !805)
!811 = !DILocation(line: 200, column: 18, scope: !805)
!812 = !DILocation(line: 200, column: 9, scope: !805)
!813 = !DILocation(line: 200, column: 16, scope: !805)
!814 = !DILocation(line: 201, column: 35, scope: !805)
!815 = !DILocation(line: 201, column: 39, scope: !805)
!816 = !DILocation(line: 201, column: 11, scope: !805)
!817 = !DILocation(line: 201, column: 9, scope: !805)
!818 = !DILocation(line: 202, column: 5, scope: !805)
!819 = !DILocation(line: 203, column: 24, scope: !820)
!820 = distinct !DILexicalBlock(scope: !801, file: !2, line: 202, column: 12)
!821 = !DILocation(line: 203, column: 28, scope: !820)
!822 = !DILocation(line: 203, column: 11, scope: !820)
!823 = !DILocation(line: 203, column: 9, scope: !820)
!824 = !DILocation(line: 206, column: 10, scope: !825)
!825 = distinct !DILexicalBlock(scope: !754, file: !2, line: 206, column: 9)
!826 = !DILocation(line: 206, column: 9, scope: !754)
!827 = !DILocation(line: 207, column: 6, scope: !828)
!828 = distinct !DILexicalBlock(scope: !825, file: !2, line: 206, column: 14)
!829 = !DILocation(line: 208, column: 5, scope: !828)
!830 = !DILocation(line: 209, column: 10, scope: !831)
!831 = distinct !DILexicalBlock(scope: !832, file: !2, line: 209, column: 10)
!832 = distinct !DILexicalBlock(scope: !825, file: !2, line: 208, column: 12)
!833 = !DILocation(line: 209, column: 14, scope: !831)
!834 = !DILocation(line: 209, column: 10, scope: !832)
!835 = !DILocation(line: 210, column: 39, scope: !836)
!836 = distinct !DILexicalBlock(scope: !831, file: !2, line: 209, column: 24)
!837 = !DILocation(line: 210, column: 54, scope: !836)
!838 = !DILocation(line: 210, column: 58, scope: !836)
!839 = !DILocation(line: 210, column: 26, scope: !836)
!840 = !DILocation(line: 210, column: 7, scope: !836)
!841 = !DILocation(line: 211, column: 6, scope: !836)
!842 = !DILocation(line: 212, column: 10, scope: !843)
!843 = distinct !DILexicalBlock(scope: !832, file: !2, line: 212, column: 10)
!844 = !DILocation(line: 212, column: 14, scope: !843)
!845 = !DILocation(line: 212, column: 10, scope: !832)
!846 = !DILocation(line: 213, column: 39, scope: !847)
!847 = distinct !DILexicalBlock(scope: !843, file: !2, line: 212, column: 22)
!848 = !DILocation(line: 213, column: 56, scope: !847)
!849 = !DILocation(line: 213, column: 60, scope: !847)
!850 = !DILocation(line: 213, column: 26, scope: !847)
!851 = !DILocation(line: 213, column: 7, scope: !847)
!852 = !DILocation(line: 214, column: 6, scope: !847)
!853 = !DILocalVariable(name: "reply", scope: !854, file: !2, line: 216, type: !92)
!854 = distinct !DILexicalBlock(scope: !832, file: !2, line: 215, column: 6)
!855 = !DILocation(line: 216, column: 19, scope: !854)
!856 = !DILocation(line: 216, column: 53, scope: !854)
!857 = !DILocation(line: 216, column: 40, scope: !854)
!858 = !DILocation(line: 217, column: 10, scope: !859)
!859 = distinct !DILexicalBlock(scope: !854, file: !2, line: 217, column: 10)
!860 = !DILocation(line: 217, column: 10, scope: !854)
!861 = !DILocalVariable(name: "keys", scope: !862, file: !2, line: 218, type: !311)
!862 = distinct !DILexicalBlock(scope: !859, file: !2, line: 217, column: 17)
!863 = !DILocation(line: 218, column: 23, scope: !862)
!864 = !DILocalVariable(name: "isz", scope: !862, file: !2, line: 219, type: !100)
!865 = !DILocation(line: 219, column: 15, scope: !862)
!866 = !DILocalVariable(name: "s", scope: !862, file: !2, line: 220, type: !369)
!867 = !DILocation(line: 220, column: 13, scope: !862)
!868 = !DILocation(line: 222, column: 8, scope: !862)
!869 = !DILocation(line: 224, column: 12, scope: !870)
!870 = distinct !DILexicalBlock(scope: !862, file: !2, line: 224, column: 12)
!871 = !DILocation(line: 224, column: 19, scope: !870)
!872 = !DILocation(line: 224, column: 24, scope: !870)
!873 = !DILocation(line: 224, column: 12, scope: !862)
!874 = !DILocation(line: 225, column: 60, scope: !875)
!875 = distinct !DILexicalBlock(scope: !870, file: !2, line: 224, column: 46)
!876 = !DILocation(line: 225, column: 67, scope: !875)
!877 = !DILocation(line: 225, column: 9, scope: !875)
!878 = !DILocation(line: 226, column: 8, scope: !875)
!879 = !DILocation(line: 226, column: 19, scope: !880)
!880 = distinct !DILexicalBlock(scope: !870, file: !2, line: 226, column: 19)
!881 = !DILocation(line: 226, column: 26, scope: !880)
!882 = !DILocation(line: 226, column: 31, scope: !880)
!883 = !DILocation(line: 226, column: 19, scope: !870)
!884 = !DILocation(line: 227, column: 13, scope: !885)
!885 = distinct !DILexicalBlock(scope: !886, file: !2, line: 227, column: 13)
!886 = distinct !DILexicalBlock(scope: !880, file: !2, line: 226, column: 53)
!887 = !DILocation(line: 227, column: 20, scope: !885)
!888 = !DILocation(line: 227, column: 25, scope: !885)
!889 = !DILocation(line: 227, column: 13, scope: !886)
!890 = !DILocation(line: 228, column: 71, scope: !885)
!891 = !DILocation(line: 228, column: 78, scope: !885)
!892 = !DILocation(line: 228, column: 10, scope: !885)
!893 = !DILocation(line: 229, column: 8, scope: !886)
!894 = !DILocalVariable(name: "i", scope: !895, file: !2, line: 230, type: !100)
!895 = distinct !DILexicalBlock(scope: !880, file: !2, line: 229, column: 15)
!896 = !DILocation(line: 230, column: 16, scope: !895)
!897 = !DILocation(line: 231, column: 16, scope: !898)
!898 = distinct !DILexicalBlock(scope: !895, file: !2, line: 231, column: 9)
!899 = !DILocation(line: 231, column: 14, scope: !898)
!900 = !DILocation(line: 231, column: 21, scope: !901)
!901 = distinct !DILexicalBlock(scope: !898, file: !2, line: 231, column: 9)
!902 = !DILocation(line: 231, column: 25, scope: !901)
!903 = !DILocation(line: 231, column: 32, scope: !901)
!904 = !DILocation(line: 231, column: 23, scope: !901)
!905 = !DILocation(line: 231, column: 9, scope: !898)
!906 = !DILocation(line: 232, column: 36, scope: !907)
!907 = distinct !DILexicalBlock(scope: !901, file: !2, line: 231, column: 47)
!908 = !DILocation(line: 232, column: 43, scope: !907)
!909 = !DILocation(line: 232, column: 51, scope: !907)
!910 = !DILocation(line: 232, column: 55, scope: !907)
!911 = !DILocation(line: 232, column: 10, scope: !907)
!912 = !DILocation(line: 233, column: 9, scope: !907)
!913 = !DILocation(line: 231, column: 42, scope: !901)
!914 = !DILocation(line: 231, column: 9, scope: !901)
!915 = distinct !{!915, !905, !916, !917}
!916 = !DILocation(line: 233, column: 9, scope: !898)
!917 = !{!"llvm.loop.mustprogress"}
!918 = !DILocation(line: 236, column: 15, scope: !919)
!919 = distinct !DILexicalBlock(scope: !862, file: !2, line: 236, column: 8)
!920 = !DILocation(line: 236, column: 12, scope: !919)
!921 = !DILocation(line: 236, column: 18, scope: !922)
!922 = distinct !DILexicalBlock(scope: !919, file: !2, line: 236, column: 8)
!923 = !DILocation(line: 236, column: 27, scope: !922)
!924 = !DILocation(line: 236, column: 21, scope: !922)
!925 = !DILocation(line: 236, column: 8, scope: !919)
!926 = !DILocation(line: 238, column: 18, scope: !927)
!927 = distinct !DILexicalBlock(scope: !922, file: !2, line: 236, column: 37)
!928 = !DILocation(line: 238, column: 45, scope: !927)
!929 = !DILocation(line: 238, column: 53, scope: !927)
!930 = !DILocation(line: 238, column: 40, scope: !927)
!931 = !DILocation(line: 238, column: 9, scope: !927)
!932 = !DILocation(line: 239, column: 41, scope: !927)
!933 = !DILocation(line: 239, column: 45, scope: !927)
!934 = !DILocation(line: 239, column: 28, scope: !927)
!935 = !DILocation(line: 239, column: 9, scope: !927)
!936 = !DILocation(line: 240, column: 8, scope: !927)
!937 = !DILocation(line: 236, column: 30, scope: !922)
!938 = !DILocation(line: 236, column: 8, scope: !922)
!939 = distinct !{!939, !925, !940, !917}
!940 = !DILocation(line: 240, column: 8, scope: !919)
!941 = !DILocation(line: 242, column: 8, scope: !862)
!942 = !DILocation(line: 244, column: 27, scope: !862)
!943 = !DILocation(line: 244, column: 8, scope: !862)
!944 = !DILocation(line: 245, column: 7, scope: !862)
!945 = !DILocation(line: 247, column: 16, scope: !832)
!946 = !DILocation(line: 247, column: 6, scope: !832)
!947 = !DILocation(line: 249, column: 4, scope: !754)
!948 = !DILocation(line: 251, column: 30, scope: !751)
!949 = !DILocation(line: 251, column: 36, scope: !751)
!950 = !DILocation(line: 251, column: 40, scope: !751)
!951 = !DILocation(line: 251, column: 46, scope: !751)
!952 = !DILocation(line: 251, column: 50, scope: !751)
!953 = !DILocation(line: 251, column: 56, scope: !751)
!954 = !DILocation(line: 251, column: 60, scope: !751)
!955 = !DILocation(line: 251, column: 75, scope: !751)
!956 = !DILocation(line: 251, column: 79, scope: !751)
!957 = !DILocation(line: 251, column: 70, scope: !751)
!958 = !DILocation(line: 251, column: 10, scope: !751)
!959 = !DILocation(line: 251, column: 8, scope: !751)
!960 = !DILocation(line: 253, column: 9, scope: !961)
!961 = distinct !DILexicalBlock(scope: !751, file: !2, line: 253, column: 8)
!962 = !DILocation(line: 253, column: 8, scope: !751)
!963 = !DILocation(line: 254, column: 5, scope: !964)
!964 = distinct !DILexicalBlock(scope: !961, file: !2, line: 253, column: 14)
!965 = !DILocation(line: 255, column: 4, scope: !964)
!966 = !DILocation(line: 255, column: 39, scope: !967)
!967 = distinct !DILexicalBlock(scope: !961, file: !2, line: 255, column: 15)
!968 = !DILocation(line: 255, column: 15, scope: !967)
!969 = !DILocation(line: 255, column: 44, scope: !967)
!970 = !DILocation(line: 255, column: 48, scope: !967)
!971 = !DILocation(line: 255, column: 15, scope: !961)
!972 = !DILocation(line: 256, column: 86, scope: !973)
!973 = distinct !DILexicalBlock(scope: !967, file: !2, line: 255, column: 80)
!974 = !DILocation(line: 256, column: 5, scope: !973)
!975 = !DILocation(line: 257, column: 36, scope: !973)
!976 = !DILocation(line: 258, column: 4, scope: !973)
!977 = !DILocation(line: 259, column: 19, scope: !751)
!978 = !DILocation(line: 259, column: 4, scope: !751)
!979 = !DILocation(line: 261, column: 2, scope: !715)
!980 = !DILocation(line: 263, column: 9, scope: !690)
!981 = !DILocation(line: 263, column: 2, scope: !690)
!982 = distinct !DISubprogram(name: "RyconninfoParse", scope: !2, file: !2, line: 68, type: !983, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !56, retainedNodes: !696)
!983 = !DISubroutineType(types: !984)
!984 = !{!108, !84, !316}
!985 = !DILocalVariable(name: "userdb", arg: 1, scope: !982, file: !2, line: 68, type: !84)
!986 = !DILocation(line: 68, column: 48, scope: !982)
!987 = !DILocalVariable(name: "errmsg", arg: 2, scope: !982, file: !2, line: 68, type: !316)
!988 = !DILocation(line: 68, column: 63, scope: !982)
!989 = !DILocalVariable(name: "co", scope: !982, file: !2, line: 69, type: !108)
!990 = !DILocation(line: 69, column: 14, scope: !982)
!991 = !DILocation(line: 69, column: 33, scope: !982)
!992 = !DILocation(line: 70, column: 8, scope: !982)
!993 = !DILocation(line: 70, column: 2, scope: !982)
!994 = !DILocation(line: 71, column: 6, scope: !995)
!995 = distinct !DILexicalBlock(scope: !982, file: !2, line: 71, column: 6)
!996 = !DILocation(line: 71, column: 6, scope: !982)
!997 = !DILocalVariable(name: "s0", scope: !998, file: !2, line: 72, type: !86)
!998 = distinct !DILexicalBlock(scope: !995, file: !2, line: 71, column: 14)
!999 = !DILocation(line: 72, column: 9, scope: !998)
!1000 = !DILocation(line: 72, column: 21, scope: !998)
!1001 = !DILocation(line: 72, column: 14, scope: !998)
!1002 = !DILocalVariable(name: "s", scope: !998, file: !2, line: 73, type: !86)
!1003 = !DILocation(line: 73, column: 9, scope: !998)
!1004 = !DILocation(line: 73, column: 13, scope: !998)
!1005 = !DILocation(line: 75, column: 3, scope: !998)
!1006 = !DILocation(line: 75, column: 10, scope: !998)
!1007 = !DILocation(line: 75, column: 12, scope: !998)
!1008 = !DILocation(line: 75, column: 16, scope: !998)
!1009 = !DILocation(line: 75, column: 15, scope: !998)
!1010 = !DILocation(line: 0, scope: !998)
!1011 = !DILocation(line: 77, column: 4, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !998, file: !2, line: 75, column: 19)
!1013 = !DILocation(line: 77, column: 12, scope: !1012)
!1014 = !DILocation(line: 77, column: 11, scope: !1012)
!1015 = !DILocation(line: 77, column: 14, scope: !1012)
!1016 = !DILocation(line: 77, column: 19, scope: !1012)
!1017 = !DILocation(line: 77, column: 18, scope: !1012)
!1018 = !DILocation(line: 77, column: 21, scope: !1012)
!1019 = !DILocation(line: 0, scope: !1012)
!1020 = !DILocation(line: 78, column: 5, scope: !1012)
!1021 = distinct !{!1021, !1011, !1022, !917}
!1022 = !DILocation(line: 78, column: 7, scope: !1012)
!1023 = !DILocalVariable(name: "snext", scope: !1012, file: !2, line: 79, type: !86)
!1024 = !DILocation(line: 79, column: 10, scope: !1012)
!1025 = !DILocation(line: 79, column: 25, scope: !1012)
!1026 = !DILocation(line: 79, column: 18, scope: !1012)
!1027 = !DILocation(line: 80, column: 8, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1012, file: !2, line: 80, column: 8)
!1029 = !DILocation(line: 80, column: 8, scope: !1012)
!1030 = !DILocation(line: 81, column: 6, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1028, file: !2, line: 80, column: 15)
!1032 = !DILocation(line: 81, column: 12, scope: !1031)
!1033 = !DILocation(line: 82, column: 5, scope: !1031)
!1034 = !DILocation(line: 83, column: 4, scope: !1031)
!1035 = !DILocalVariable(name: "seq", scope: !1012, file: !2, line: 85, type: !86)
!1036 = !DILocation(line: 85, column: 10, scope: !1012)
!1037 = !DILocation(line: 85, column: 23, scope: !1012)
!1038 = !DILocation(line: 85, column: 16, scope: !1012)
!1039 = !DILocation(line: 86, column: 9, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1012, file: !2, line: 86, column: 8)
!1041 = !DILocation(line: 86, column: 8, scope: !1012)
!1042 = !DILocation(line: 87, column: 20, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1040, file: !2, line: 86, column: 14)
!1044 = !DILocation(line: 87, column: 5, scope: !1043)
!1045 = !DILocation(line: 88, column: 8, scope: !1043)
!1046 = !DILocation(line: 89, column: 9, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1043, file: !2, line: 89, column: 9)
!1048 = !DILocation(line: 89, column: 9, scope: !1043)
!1049 = !DILocation(line: 90, column: 23, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1047, file: !2, line: 89, column: 17)
!1051 = !DILocation(line: 90, column: 16, scope: !1050)
!1052 = !DILocation(line: 90, column: 7, scope: !1050)
!1053 = !DILocation(line: 90, column: 14, scope: !1050)
!1054 = !DILocation(line: 91, column: 5, scope: !1050)
!1055 = !DILocation(line: 92, column: 5, scope: !1043)
!1056 = !DILocation(line: 95, column: 5, scope: !1012)
!1057 = !DILocation(line: 95, column: 9, scope: !1012)
!1058 = !DILocation(line: 96, column: 16, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1012, file: !2, line: 96, column: 8)
!1060 = !DILocation(line: 96, column: 9, scope: !1059)
!1061 = !DILocation(line: 96, column: 8, scope: !1012)
!1062 = !DILocation(line: 97, column: 23, scope: !1059)
!1063 = !DILocation(line: 97, column: 27, scope: !1059)
!1064 = !DILocation(line: 97, column: 16, scope: !1059)
!1065 = !DILocation(line: 97, column: 5, scope: !1059)
!1066 = !DILocation(line: 97, column: 9, scope: !1059)
!1067 = !DILocation(line: 97, column: 14, scope: !1059)
!1068 = !DILocation(line: 98, column: 21, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1059, file: !2, line: 98, column: 13)
!1070 = !DILocation(line: 98, column: 14, scope: !1069)
!1071 = !DILocation(line: 98, column: 13, scope: !1059)
!1072 = !DILocation(line: 99, column: 23, scope: !1069)
!1073 = !DILocation(line: 99, column: 27, scope: !1069)
!1074 = !DILocation(line: 99, column: 16, scope: !1069)
!1075 = !DILocation(line: 99, column: 5, scope: !1069)
!1076 = !DILocation(line: 99, column: 9, scope: !1069)
!1077 = !DILocation(line: 99, column: 14, scope: !1069)
!1078 = !DILocation(line: 100, column: 21, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1069, file: !2, line: 100, column: 13)
!1080 = !DILocation(line: 100, column: 14, scope: !1079)
!1081 = !DILocation(line: 100, column: 13, scope: !1069)
!1082 = !DILocation(line: 101, column: 23, scope: !1079)
!1083 = !DILocation(line: 101, column: 27, scope: !1079)
!1084 = !DILocation(line: 101, column: 16, scope: !1079)
!1085 = !DILocation(line: 101, column: 5, scope: !1079)
!1086 = !DILocation(line: 101, column: 9, scope: !1079)
!1087 = !DILocation(line: 101, column: 14, scope: !1079)
!1088 = !DILocation(line: 102, column: 21, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1079, file: !2, line: 102, column: 13)
!1090 = !DILocation(line: 102, column: 14, scope: !1089)
!1091 = !DILocation(line: 102, column: 13, scope: !1079)
!1092 = !DILocation(line: 103, column: 23, scope: !1089)
!1093 = !DILocation(line: 103, column: 27, scope: !1089)
!1094 = !DILocation(line: 103, column: 16, scope: !1089)
!1095 = !DILocation(line: 103, column: 5, scope: !1089)
!1096 = !DILocation(line: 103, column: 9, scope: !1089)
!1097 = !DILocation(line: 103, column: 14, scope: !1089)
!1098 = !DILocation(line: 104, column: 21, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1089, file: !2, line: 104, column: 13)
!1100 = !DILocation(line: 104, column: 14, scope: !1099)
!1101 = !DILocation(line: 104, column: 13, scope: !1089)
!1102 = !DILocation(line: 105, column: 23, scope: !1099)
!1103 = !DILocation(line: 105, column: 27, scope: !1099)
!1104 = !DILocation(line: 105, column: 16, scope: !1099)
!1105 = !DILocation(line: 105, column: 5, scope: !1099)
!1106 = !DILocation(line: 105, column: 9, scope: !1099)
!1107 = !DILocation(line: 105, column: 14, scope: !1099)
!1108 = !DILocation(line: 106, column: 21, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1099, file: !2, line: 106, column: 13)
!1110 = !DILocation(line: 106, column: 14, scope: !1109)
!1111 = !DILocation(line: 106, column: 13, scope: !1099)
!1112 = !DILocation(line: 107, column: 25, scope: !1109)
!1113 = !DILocation(line: 107, column: 29, scope: !1109)
!1114 = !DILocation(line: 107, column: 18, scope: !1109)
!1115 = !DILocation(line: 107, column: 5, scope: !1109)
!1116 = !DILocation(line: 107, column: 9, scope: !1109)
!1117 = !DILocation(line: 107, column: 16, scope: !1109)
!1118 = !DILocation(line: 108, column: 21, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1109, file: !2, line: 108, column: 13)
!1120 = !DILocation(line: 108, column: 14, scope: !1119)
!1121 = !DILocation(line: 108, column: 13, scope: !1109)
!1122 = !DILocation(line: 109, column: 25, scope: !1119)
!1123 = !DILocation(line: 109, column: 29, scope: !1119)
!1124 = !DILocation(line: 109, column: 18, scope: !1119)
!1125 = !DILocation(line: 109, column: 5, scope: !1119)
!1126 = !DILocation(line: 109, column: 9, scope: !1119)
!1127 = !DILocation(line: 109, column: 16, scope: !1119)
!1128 = !DILocation(line: 110, column: 21, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1119, file: !2, line: 110, column: 13)
!1130 = !DILocation(line: 110, column: 14, scope: !1129)
!1131 = !DILocation(line: 110, column: 13, scope: !1119)
!1132 = !DILocation(line: 111, column: 25, scope: !1129)
!1133 = !DILocation(line: 111, column: 29, scope: !1129)
!1134 = !DILocation(line: 111, column: 18, scope: !1129)
!1135 = !DILocation(line: 111, column: 5, scope: !1129)
!1136 = !DILocation(line: 111, column: 9, scope: !1129)
!1137 = !DILocation(line: 111, column: 16, scope: !1129)
!1138 = !DILocation(line: 112, column: 21, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1129, file: !2, line: 112, column: 13)
!1140 = !DILocation(line: 112, column: 14, scope: !1139)
!1141 = !DILocation(line: 112, column: 13, scope: !1129)
!1142 = !DILocation(line: 114, column: 21, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1139, file: !2, line: 114, column: 13)
!1144 = !DILocation(line: 114, column: 14, scope: !1143)
!1145 = !DILocation(line: 114, column: 13, scope: !1139)
!1146 = !DILocation(line: 116, column: 21, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1143, file: !2, line: 116, column: 13)
!1148 = !DILocation(line: 116, column: 14, scope: !1147)
!1149 = !DILocation(line: 116, column: 13, scope: !1143)
!1150 = !DILocation(line: 118, column: 21, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1147, file: !2, line: 118, column: 13)
!1152 = !DILocation(line: 118, column: 14, scope: !1151)
!1153 = !DILocation(line: 118, column: 13, scope: !1147)
!1154 = !DILocation(line: 120, column: 21, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1151, file: !2, line: 120, column: 13)
!1156 = !DILocation(line: 120, column: 14, scope: !1155)
!1157 = !DILocation(line: 120, column: 13, scope: !1151)
!1158 = !DILocation(line: 121, column: 27, scope: !1155)
!1159 = !DILocation(line: 121, column: 31, scope: !1155)
!1160 = !DILocation(line: 121, column: 20, scope: !1155)
!1161 = !DILocation(line: 121, column: 5, scope: !1155)
!1162 = !DILocation(line: 121, column: 9, scope: !1155)
!1163 = !DILocation(line: 121, column: 18, scope: !1155)
!1164 = !DILocation(line: 122, column: 21, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1155, file: !2, line: 122, column: 13)
!1166 = !DILocation(line: 122, column: 14, scope: !1165)
!1167 = !DILocation(line: 122, column: 13, scope: !1155)
!1168 = !DILocation(line: 123, column: 27, scope: !1165)
!1169 = !DILocation(line: 123, column: 31, scope: !1165)
!1170 = !DILocation(line: 123, column: 20, scope: !1165)
!1171 = !DILocation(line: 123, column: 5, scope: !1165)
!1172 = !DILocation(line: 123, column: 9, scope: !1165)
!1173 = !DILocation(line: 123, column: 18, scope: !1165)
!1174 = !DILocation(line: 124, column: 21, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1165, file: !2, line: 124, column: 13)
!1176 = !DILocation(line: 124, column: 14, scope: !1175)
!1177 = !DILocation(line: 124, column: 13, scope: !1165)
!1178 = !DILocation(line: 125, column: 27, scope: !1175)
!1179 = !DILocation(line: 125, column: 31, scope: !1175)
!1180 = !DILocation(line: 125, column: 20, scope: !1175)
!1181 = !DILocation(line: 125, column: 5, scope: !1175)
!1182 = !DILocation(line: 125, column: 9, scope: !1175)
!1183 = !DILocation(line: 125, column: 18, scope: !1175)
!1184 = !DILocation(line: 126, column: 21, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1175, file: !2, line: 126, column: 13)
!1186 = !DILocation(line: 126, column: 14, scope: !1185)
!1187 = !DILocation(line: 126, column: 13, scope: !1175)
!1188 = !DILocation(line: 127, column: 27, scope: !1185)
!1189 = !DILocation(line: 127, column: 31, scope: !1185)
!1190 = !DILocation(line: 127, column: 20, scope: !1185)
!1191 = !DILocation(line: 127, column: 5, scope: !1185)
!1192 = !DILocation(line: 127, column: 9, scope: !1185)
!1193 = !DILocation(line: 127, column: 18, scope: !1185)
!1194 = !DILocation(line: 128, column: 21, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1185, file: !2, line: 128, column: 13)
!1196 = !DILocation(line: 128, column: 14, scope: !1195)
!1197 = !DILocation(line: 128, column: 13, scope: !1185)
!1198 = !DILocation(line: 129, column: 36, scope: !1195)
!1199 = !DILocation(line: 129, column: 40, scope: !1195)
!1200 = !DILocation(line: 129, column: 31, scope: !1195)
!1201 = !DILocation(line: 129, column: 5, scope: !1195)
!1202 = !DILocation(line: 129, column: 9, scope: !1195)
!1203 = !DILocation(line: 129, column: 14, scope: !1195)
!1204 = !DILocation(line: 130, column: 21, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1195, file: !2, line: 130, column: 13)
!1206 = !DILocation(line: 130, column: 14, scope: !1205)
!1207 = !DILocation(line: 130, column: 13, scope: !1195)
!1208 = !DILocation(line: 131, column: 36, scope: !1205)
!1209 = !DILocation(line: 131, column: 40, scope: !1205)
!1210 = !DILocation(line: 131, column: 31, scope: !1205)
!1211 = !DILocation(line: 131, column: 5, scope: !1205)
!1212 = !DILocation(line: 131, column: 9, scope: !1205)
!1213 = !DILocation(line: 131, column: 14, scope: !1205)
!1214 = !DILocation(line: 132, column: 21, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1205, file: !2, line: 132, column: 13)
!1216 = !DILocation(line: 132, column: 14, scope: !1215)
!1217 = !DILocation(line: 132, column: 13, scope: !1205)
!1218 = !DILocation(line: 133, column: 47, scope: !1215)
!1219 = !DILocation(line: 133, column: 51, scope: !1215)
!1220 = !DILocation(line: 133, column: 42, scope: !1215)
!1221 = !DILocation(line: 133, column: 5, scope: !1215)
!1222 = !DILocation(line: 133, column: 9, scope: !1215)
!1223 = !DILocation(line: 133, column: 25, scope: !1215)
!1224 = !DILocation(line: 134, column: 21, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1215, file: !2, line: 134, column: 13)
!1226 = !DILocation(line: 134, column: 14, scope: !1225)
!1227 = !DILocation(line: 134, column: 13, scope: !1215)
!1228 = !DILocation(line: 135, column: 47, scope: !1225)
!1229 = !DILocation(line: 135, column: 51, scope: !1225)
!1230 = !DILocation(line: 135, column: 42, scope: !1225)
!1231 = !DILocation(line: 135, column: 5, scope: !1225)
!1232 = !DILocation(line: 135, column: 9, scope: !1225)
!1233 = !DILocation(line: 135, column: 25, scope: !1225)
!1234 = !DILocation(line: 137, column: 20, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1225, file: !2, line: 136, column: 9)
!1236 = !DILocation(line: 137, column: 5, scope: !1235)
!1237 = !DILocation(line: 138, column: 8, scope: !1235)
!1238 = !DILocation(line: 139, column: 9, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1235, file: !2, line: 139, column: 9)
!1240 = !DILocation(line: 139, column: 9, scope: !1235)
!1241 = !DILocation(line: 140, column: 23, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1239, file: !2, line: 139, column: 17)
!1243 = !DILocation(line: 140, column: 16, scope: !1242)
!1244 = !DILocation(line: 140, column: 7, scope: !1242)
!1245 = !DILocation(line: 140, column: 14, scope: !1242)
!1246 = !DILocation(line: 141, column: 5, scope: !1242)
!1247 = !DILocation(line: 142, column: 5, scope: !1235)
!1248 = !DILocation(line: 145, column: 8, scope: !1012)
!1249 = !DILocation(line: 145, column: 6, scope: !1012)
!1250 = distinct !{!1250, !1005, !1251, !917}
!1251 = !DILocation(line: 146, column: 3, scope: !998)
!1252 = !DILocation(line: 148, column: 8, scope: !998)
!1253 = !DILocation(line: 148, column: 3, scope: !998)
!1254 = !DILocation(line: 149, column: 2, scope: !998)
!1255 = !DILocation(line: 151, column: 5, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !982, file: !2, line: 151, column: 5)
!1257 = !DILocation(line: 151, column: 5, scope: !982)
!1258 = !DILocation(line: 152, column: 8, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1260, file: !2, line: 152, column: 6)
!1260 = distinct !DILexicalBlock(scope: !1256, file: !2, line: 151, column: 9)
!1261 = !DILocation(line: 152, column: 12, scope: !1259)
!1262 = !DILocation(line: 152, column: 7, scope: !1259)
!1263 = !DILocation(line: 152, column: 6, scope: !1260)
!1264 = !DILocation(line: 153, column: 15, scope: !1259)
!1265 = !DILocation(line: 153, column: 4, scope: !1259)
!1266 = !DILocation(line: 153, column: 8, scope: !1259)
!1267 = !DILocation(line: 153, column: 14, scope: !1259)
!1268 = !DILocation(line: 154, column: 8, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1260, file: !2, line: 154, column: 6)
!1270 = !DILocation(line: 154, column: 12, scope: !1269)
!1271 = !DILocation(line: 154, column: 7, scope: !1269)
!1272 = !DILocation(line: 154, column: 6, scope: !1260)
!1273 = !DILocation(line: 155, column: 13, scope: !1269)
!1274 = !DILocation(line: 155, column: 4, scope: !1269)
!1275 = !DILocation(line: 155, column: 8, scope: !1269)
!1276 = !DILocation(line: 155, column: 12, scope: !1269)
!1277 = !DILocation(line: 156, column: 8, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1260, file: !2, line: 156, column: 6)
!1279 = !DILocation(line: 156, column: 12, scope: !1278)
!1280 = !DILocation(line: 156, column: 7, scope: !1278)
!1281 = !DILocation(line: 156, column: 6, scope: !1260)
!1282 = !DILocation(line: 157, column: 17, scope: !1278)
!1283 = !DILocation(line: 157, column: 4, scope: !1278)
!1284 = !DILocation(line: 157, column: 8, scope: !1278)
!1285 = !DILocation(line: 157, column: 16, scope: !1278)
!1286 = !DILocation(line: 158, column: 2, scope: !1260)
!1287 = !DILocation(line: 160, column: 9, scope: !982)
!1288 = !DILocation(line: 160, column: 2, scope: !982)
!1289 = distinct !DISubprogram(name: "RyconninfoFree", scope: !2, file: !2, line: 59, type: !1290, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !56, retainedNodes: !696)
!1290 = !DISubroutineType(types: !1291)
!1291 = !{null, !108}
!1292 = !DILocalVariable(name: "co", arg: 1, scope: !1289, file: !2, line: 59, type: !108)
!1293 = !DILocation(line: 59, column: 40, scope: !1289)
!1294 = !DILocation(line: 60, column: 5, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1289, file: !2, line: 60, column: 5)
!1296 = !DILocation(line: 60, column: 5, scope: !1289)
!1297 = !DILocation(line: 61, column: 6, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1299, file: !2, line: 61, column: 6)
!1299 = distinct !DILexicalBlock(scope: !1295, file: !2, line: 60, column: 9)
!1300 = !DILocation(line: 61, column: 10, scope: !1298)
!1301 = !DILocation(line: 61, column: 6, scope: !1299)
!1302 = !DILocation(line: 61, column: 21, scope: !1298)
!1303 = !DILocation(line: 61, column: 25, scope: !1298)
!1304 = !DILocation(line: 61, column: 16, scope: !1298)
!1305 = !DILocation(line: 62, column: 6, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1299, file: !2, line: 62, column: 6)
!1307 = !DILocation(line: 62, column: 10, scope: !1306)
!1308 = !DILocation(line: 62, column: 6, scope: !1299)
!1309 = !DILocation(line: 62, column: 23, scope: !1306)
!1310 = !DILocation(line: 62, column: 27, scope: !1306)
!1311 = !DILocation(line: 62, column: 18, scope: !1306)
!1312 = !DILocation(line: 63, column: 6, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1299, file: !2, line: 63, column: 6)
!1314 = !DILocation(line: 63, column: 10, scope: !1313)
!1315 = !DILocation(line: 63, column: 6, scope: !1299)
!1316 = !DILocation(line: 63, column: 25, scope: !1313)
!1317 = !DILocation(line: 63, column: 29, scope: !1313)
!1318 = !DILocation(line: 63, column: 20, scope: !1313)
!1319 = !DILocation(line: 64, column: 9, scope: !1299)
!1320 = !DILocation(line: 64, column: 3, scope: !1299)
!1321 = !DILocation(line: 65, column: 2, scope: !1299)
!1322 = !DILocation(line: 66, column: 1, scope: !1289)
!1323 = distinct !DISubprogram(name: "turnFreeRedisReply", scope: !2, file: !2, line: 43, type: !182, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !56, retainedNodes: !696)
!1324 = !DILocalVariable(name: "reply", arg: 1, scope: !1323, file: !2, line: 43, type: !83)
!1325 = !DILocation(line: 43, column: 38, scope: !1323)
!1326 = !DILocation(line: 44, column: 5, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1323, file: !2, line: 44, column: 5)
!1328 = !DILocation(line: 44, column: 5, scope: !1323)
!1329 = !DILocation(line: 45, column: 19, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1327, file: !2, line: 44, column: 12)
!1331 = !DILocation(line: 45, column: 3, scope: !1330)
!1332 = !DILocation(line: 46, column: 2, scope: !1330)
!1333 = !DILocation(line: 47, column: 1, scope: !1323)
!1334 = distinct !DISubprogram(name: "get_redis_dbdriver", scope: !2, file: !2, line: 1390, type: !1335, scopeLine: 1390, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !56, retainedNodes: !696)
!1335 = !DISubroutineType(types: !1336)
!1336 = !{!1337}
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!1338 = !DILocation(line: 1391, column: 3, scope: !1334)
!1339 = distinct !DISubprogram(name: "redis_get_auth_secrets", scope: !2, file: !2, line: 400, type: !308, scopeLine: 401, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !56, retainedNodes: !696)
!1340 = !DILocalVariable(name: "sl", arg: 1, scope: !1339, file: !2, line: 400, type: !310)
!1341 = !DILocation(line: 400, column: 51, scope: !1339)
!1342 = !DILocalVariable(name: "realm", arg: 2, scope: !1339, file: !2, line: 400, type: !318)
!1343 = !DILocation(line: 400, column: 64, scope: !1339)
!1344 = !DILocalVariable(name: "ret", scope: !1339, file: !2, line: 402, type: !74)
!1345 = !DILocation(line: 402, column: 6, scope: !1339)
!1346 = !DILocalVariable(name: "rc", scope: !1339, file: !2, line: 403, type: !117)
!1347 = !DILocation(line: 403, column: 16, scope: !1339)
!1348 = !DILocation(line: 403, column: 21, scope: !1339)
!1349 = !DILocation(line: 404, column: 6, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1339, file: !2, line: 404, column: 6)
!1351 = !DILocation(line: 404, column: 6, scope: !1339)
!1352 = !DILocalVariable(name: "reply", scope: !1353, file: !2, line: 405, type: !92)
!1353 = distinct !DILexicalBlock(scope: !1350, file: !2, line: 404, column: 10)
!1354 = !DILocation(line: 405, column: 15, scope: !1353)
!1355 = !DILocation(line: 405, column: 50, scope: !1353)
!1356 = !DILocation(line: 405, column: 95, scope: !1353)
!1357 = !DILocation(line: 405, column: 37, scope: !1353)
!1358 = !DILocation(line: 406, column: 7, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1353, file: !2, line: 406, column: 7)
!1360 = !DILocation(line: 406, column: 7, scope: !1353)
!1361 = !DILocation(line: 408, column: 8, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1363, file: !2, line: 408, column: 8)
!1363 = distinct !DILexicalBlock(scope: !1359, file: !2, line: 406, column: 14)
!1364 = !DILocation(line: 408, column: 15, scope: !1362)
!1365 = !DILocation(line: 408, column: 20, scope: !1362)
!1366 = !DILocation(line: 408, column: 8, scope: !1363)
!1367 = !DILocation(line: 409, column: 56, scope: !1362)
!1368 = !DILocation(line: 409, column: 63, scope: !1362)
!1369 = !DILocation(line: 409, column: 5, scope: !1362)
!1370 = !DILocation(line: 410, column: 13, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1362, file: !2, line: 410, column: 13)
!1372 = !DILocation(line: 410, column: 20, scope: !1371)
!1373 = !DILocation(line: 410, column: 25, scope: !1371)
!1374 = !DILocation(line: 410, column: 13, scope: !1362)
!1375 = !DILocation(line: 411, column: 9, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1377, file: !2, line: 411, column: 9)
!1377 = distinct !DILexicalBlock(scope: !1371, file: !2, line: 410, column: 47)
!1378 = !DILocation(line: 411, column: 16, scope: !1376)
!1379 = !DILocation(line: 411, column: 21, scope: !1376)
!1380 = !DILocation(line: 411, column: 9, scope: !1377)
!1381 = !DILocation(line: 412, column: 67, scope: !1376)
!1382 = !DILocation(line: 412, column: 74, scope: !1376)
!1383 = !DILocation(line: 412, column: 6, scope: !1376)
!1384 = !DILocation(line: 413, column: 4, scope: !1377)
!1385 = !DILocalVariable(name: "i", scope: !1386, file: !2, line: 414, type: !100)
!1386 = distinct !DILexicalBlock(scope: !1371, file: !2, line: 413, column: 11)
!1387 = !DILocation(line: 414, column: 12, scope: !1386)
!1388 = !DILocation(line: 415, column: 12, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1386, file: !2, line: 415, column: 5)
!1390 = !DILocation(line: 415, column: 10, scope: !1389)
!1391 = !DILocation(line: 415, column: 17, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1389, file: !2, line: 415, column: 5)
!1393 = !DILocation(line: 415, column: 21, scope: !1392)
!1394 = !DILocation(line: 415, column: 28, scope: !1392)
!1395 = !DILocation(line: 415, column: 19, scope: !1392)
!1396 = !DILocation(line: 415, column: 5, scope: !1389)
!1397 = !DILocation(line: 416, column: 26, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1392, file: !2, line: 415, column: 43)
!1399 = !DILocation(line: 416, column: 30, scope: !1398)
!1400 = !DILocation(line: 416, column: 37, scope: !1398)
!1401 = !DILocation(line: 416, column: 45, scope: !1398)
!1402 = !DILocation(line: 416, column: 49, scope: !1398)
!1403 = !DILocation(line: 416, column: 6, scope: !1398)
!1404 = !DILocation(line: 417, column: 5, scope: !1398)
!1405 = !DILocation(line: 415, column: 38, scope: !1392)
!1406 = !DILocation(line: 415, column: 5, scope: !1392)
!1407 = distinct !{!1407, !1396, !1408, !917}
!1408 = !DILocation(line: 417, column: 5, scope: !1389)
!1409 = !DILocation(line: 420, column: 8, scope: !1363)
!1410 = !DILocation(line: 422, column: 23, scope: !1363)
!1411 = !DILocation(line: 422, column: 4, scope: !1363)
!1412 = !DILocation(line: 423, column: 3, scope: !1363)
!1413 = !DILocation(line: 424, column: 2, scope: !1353)
!1414 = !DILocation(line: 425, column: 9, scope: !1339)
!1415 = !DILocation(line: 425, column: 2, scope: !1339)
!1416 = distinct !DISubprogram(name: "redis_get_user_key", scope: !2, file: !2, line: 428, type: !321, scopeLine: 428, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !56, retainedNodes: !696)
!1417 = !DILocalVariable(name: "usname", arg: 1, scope: !1416, file: !2, line: 428, type: !318)
!1418 = !DILocation(line: 428, column: 40, scope: !1416)
!1419 = !DILocalVariable(name: "realm", arg: 2, scope: !1416, file: !2, line: 428, type: !318)
!1420 = !DILocation(line: 428, column: 57, scope: !1416)
!1421 = !DILocalVariable(name: "key", arg: 3, scope: !1416, file: !2, line: 428, type: !318)
!1422 = !DILocation(line: 428, column: 74, scope: !1416)
!1423 = !DILocalVariable(name: "ret", scope: !1416, file: !2, line: 429, type: !74)
!1424 = !DILocation(line: 429, column: 7, scope: !1416)
!1425 = !DILocalVariable(name: "rc", scope: !1416, file: !2, line: 430, type: !117)
!1426 = !DILocation(line: 430, column: 17, scope: !1416)
!1427 = !DILocation(line: 430, column: 22, scope: !1416)
!1428 = !DILocation(line: 431, column: 5, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1416, file: !2, line: 431, column: 5)
!1430 = !DILocation(line: 431, column: 5, scope: !1416)
!1431 = !DILocalVariable(name: "s", scope: !1432, file: !2, line: 432, type: !1433)
!1432 = distinct !DILexicalBlock(scope: !1429, file: !2, line: 431, column: 9)
!1433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8200, elements: !1434)
!1434 = !{!1435}
!1435 = !DISubrange(count: 1025)
!1436 = !DILocation(line: 432, column: 8, scope: !1432)
!1437 = !DILocation(line: 433, column: 12, scope: !1432)
!1438 = !DILocation(line: 433, column: 64, scope: !1432)
!1439 = !DILocation(line: 433, column: 71, scope: !1432)
!1440 = !DILocation(line: 433, column: 3, scope: !1432)
!1441 = !DILocalVariable(name: "rget", scope: !1432, file: !2, line: 434, type: !92)
!1442 = !DILocation(line: 434, column: 15, scope: !1432)
!1443 = !DILocation(line: 434, column: 49, scope: !1432)
!1444 = !DILocation(line: 434, column: 53, scope: !1432)
!1445 = !DILocation(line: 434, column: 36, scope: !1432)
!1446 = !DILocation(line: 435, column: 6, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1432, file: !2, line: 435, column: 6)
!1448 = !DILocation(line: 435, column: 6, scope: !1432)
!1449 = !DILocation(line: 436, column: 8, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1451, file: !2, line: 436, column: 8)
!1451 = distinct !DILexicalBlock(scope: !1447, file: !2, line: 435, column: 12)
!1452 = !DILocation(line: 436, column: 14, scope: !1450)
!1453 = !DILocation(line: 436, column: 19, scope: !1450)
!1454 = !DILocation(line: 436, column: 8, scope: !1451)
!1455 = !DILocation(line: 437, column: 56, scope: !1450)
!1456 = !DILocation(line: 437, column: 62, scope: !1450)
!1457 = !DILocation(line: 437, column: 5, scope: !1450)
!1458 = !DILocation(line: 438, column: 13, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1450, file: !2, line: 438, column: 13)
!1460 = !DILocation(line: 438, column: 19, scope: !1459)
!1461 = !DILocation(line: 438, column: 24, scope: !1459)
!1462 = !DILocation(line: 438, column: 13, scope: !1450)
!1463 = !DILocation(line: 439, column: 9, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1465, file: !2, line: 439, column: 9)
!1465 = distinct !DILexicalBlock(scope: !1459, file: !2, line: 438, column: 47)
!1466 = !DILocation(line: 439, column: 15, scope: !1464)
!1467 = !DILocation(line: 439, column: 20, scope: !1464)
!1468 = !DILocation(line: 439, column: 9, scope: !1465)
!1469 = !DILocation(line: 440, column: 67, scope: !1464)
!1470 = !DILocation(line: 440, column: 73, scope: !1464)
!1471 = !DILocation(line: 440, column: 6, scope: !1464)
!1472 = !DILocation(line: 441, column: 4, scope: !1465)
!1473 = !DILocalVariable(name: "sz", scope: !1474, file: !2, line: 442, type: !100)
!1474 = distinct !DILexicalBlock(scope: !1459, file: !2, line: 441, column: 11)
!1475 = !DILocation(line: 442, column: 12, scope: !1474)
!1476 = !DILocation(line: 442, column: 17, scope: !1474)
!1477 = !DILocation(line: 443, column: 15, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1474, file: !2, line: 443, column: 8)
!1479 = !DILocation(line: 443, column: 21, scope: !1478)
!1480 = !DILocation(line: 443, column: 8, scope: !1478)
!1481 = !DILocation(line: 443, column: 26, scope: !1478)
!1482 = !DILocation(line: 443, column: 28, scope: !1478)
!1483 = !DILocation(line: 443, column: 25, scope: !1478)
!1484 = !DILocation(line: 443, column: 8, scope: !1474)
!1485 = !DILocation(line: 444, column: 76, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1478, file: !2, line: 443, column: 32)
!1487 = !DILocation(line: 444, column: 82, scope: !1486)
!1488 = !DILocation(line: 444, column: 86, scope: !1486)
!1489 = !DILocation(line: 444, column: 6, scope: !1486)
!1490 = !DILocation(line: 445, column: 5, scope: !1486)
!1491 = !DILocation(line: 445, column: 44, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1478, file: !2, line: 445, column: 15)
!1493 = !DILocation(line: 445, column: 50, scope: !1492)
!1494 = !DILocation(line: 445, column: 55, scope: !1492)
!1495 = !DILocation(line: 445, column: 60, scope: !1492)
!1496 = !DILocation(line: 445, column: 15, scope: !1492)
!1497 = !DILocation(line: 445, column: 63, scope: !1492)
!1498 = !DILocation(line: 445, column: 15, scope: !1478)
!1499 = !DILocation(line: 446, column: 69, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1492, file: !2, line: 445, column: 67)
!1501 = !DILocation(line: 446, column: 75, scope: !1500)
!1502 = !DILocation(line: 446, column: 79, scope: !1500)
!1503 = !DILocation(line: 446, column: 6, scope: !1500)
!1504 = !DILocation(line: 447, column: 5, scope: !1500)
!1505 = !DILocation(line: 448, column: 10, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1492, file: !2, line: 447, column: 12)
!1507 = !DILocation(line: 451, column: 23, scope: !1451)
!1508 = !DILocation(line: 451, column: 4, scope: !1451)
!1509 = !DILocation(line: 452, column: 3, scope: !1451)
!1510 = !DILocation(line: 453, column: 2, scope: !1432)
!1511 = !DILocation(line: 454, column: 10, scope: !1416)
!1512 = !DILocation(line: 454, column: 3, scope: !1416)
!1513 = distinct !DISubprogram(name: "redis_set_user_key", scope: !2, file: !2, line: 499, type: !325, scopeLine: 499, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !56, retainedNodes: !696)
!1514 = !DILocalVariable(name: "usname", arg: 1, scope: !1513, file: !2, line: 499, type: !318)
!1515 = !DILocation(line: 499, column: 40, scope: !1513)
!1516 = !DILocalVariable(name: "realm", arg: 2, scope: !1513, file: !2, line: 499, type: !318)
!1517 = !DILocation(line: 499, column: 57, scope: !1513)
!1518 = !DILocalVariable(name: "key", arg: 3, scope: !1513, file: !2, line: 499, type: !84)
!1519 = !DILocation(line: 499, column: 76, scope: !1513)
!1520 = !DILocalVariable(name: "ret", scope: !1513, file: !2, line: 500, type: !74)
!1521 = !DILocation(line: 500, column: 7, scope: !1513)
!1522 = !DILocalVariable(name: "rc", scope: !1513, file: !2, line: 501, type: !117)
!1523 = !DILocation(line: 501, column: 16, scope: !1513)
!1524 = !DILocation(line: 501, column: 21, scope: !1513)
!1525 = !DILocation(line: 502, column: 5, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1513, file: !2, line: 502, column: 5)
!1527 = !DILocation(line: 502, column: 5, scope: !1513)
!1528 = !DILocalVariable(name: "statement", scope: !1529, file: !2, line: 503, type: !1433)
!1529 = distinct !DILexicalBlock(scope: !1526, file: !2, line: 502, column: 9)
!1530 = !DILocation(line: 503, column: 8, scope: !1529)
!1531 = !DILocation(line: 504, column: 12, scope: !1529)
!1532 = !DILocation(line: 504, column: 82, scope: !1529)
!1533 = !DILocation(line: 504, column: 88, scope: !1529)
!1534 = !DILocation(line: 504, column: 95, scope: !1529)
!1535 = !DILocation(line: 504, column: 3, scope: !1529)
!1536 = !DILocation(line: 505, column: 35, scope: !1529)
!1537 = !DILocation(line: 505, column: 39, scope: !1529)
!1538 = !DILocation(line: 505, column: 22, scope: !1529)
!1539 = !DILocation(line: 505, column: 3, scope: !1529)
!1540 = !DILocation(line: 506, column: 35, scope: !1529)
!1541 = !DILocation(line: 506, column: 22, scope: !1529)
!1542 = !DILocation(line: 506, column: 3, scope: !1529)
!1543 = !DILocation(line: 507, column: 7, scope: !1529)
!1544 = !DILocation(line: 508, column: 2, scope: !1529)
!1545 = !DILocation(line: 509, column: 10, scope: !1513)
!1546 = !DILocation(line: 509, column: 3, scope: !1513)
!1547 = distinct !DISubprogram(name: "redis_del_user", scope: !2, file: !2, line: 526, type: !329, scopeLine: 526, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !56, retainedNodes: !696)
!1548 = !DILocalVariable(name: "usname", arg: 1, scope: !1547, file: !2, line: 526, type: !318)
!1549 = !DILocation(line: 526, column: 36, scope: !1547)
!1550 = !DILocalVariable(name: "realm", arg: 2, scope: !1547, file: !2, line: 526, type: !318)
!1551 = !DILocation(line: 526, column: 53, scope: !1547)
!1552 = !DILocalVariable(name: "ret", scope: !1547, file: !2, line: 527, type: !74)
!1553 = !DILocation(line: 527, column: 7, scope: !1547)
!1554 = !DILocalVariable(name: "rc", scope: !1547, file: !2, line: 528, type: !117)
!1555 = !DILocation(line: 528, column: 16, scope: !1547)
!1556 = !DILocation(line: 528, column: 21, scope: !1547)
!1557 = !DILocation(line: 529, column: 5, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1547, file: !2, line: 529, column: 5)
!1559 = !DILocation(line: 529, column: 5, scope: !1547)
!1560 = !DILocalVariable(name: "statement", scope: !1561, file: !2, line: 530, type: !1433)
!1561 = distinct !DILexicalBlock(scope: !1558, file: !2, line: 529, column: 9)
!1562 = !DILocation(line: 530, column: 8, scope: !1561)
!1563 = !DILocation(line: 532, column: 14, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1561, file: !2, line: 531, column: 3)
!1565 = !DILocation(line: 532, column: 81, scope: !1564)
!1566 = !DILocation(line: 532, column: 87, scope: !1564)
!1567 = !DILocation(line: 532, column: 5, scope: !1564)
!1568 = !DILocation(line: 533, column: 37, scope: !1564)
!1569 = !DILocation(line: 533, column: 41, scope: !1564)
!1570 = !DILocation(line: 533, column: 24, scope: !1564)
!1571 = !DILocation(line: 533, column: 5, scope: !1564)
!1572 = !DILocation(line: 536, column: 35, scope: !1561)
!1573 = !DILocation(line: 536, column: 22, scope: !1561)
!1574 = !DILocation(line: 536, column: 3, scope: !1561)
!1575 = !DILocation(line: 537, column: 9, scope: !1561)
!1576 = !DILocation(line: 538, column: 2, scope: !1561)
!1577 = !DILocation(line: 539, column: 10, scope: !1547)
!1578 = !DILocation(line: 539, column: 3, scope: !1547)
!1579 = distinct !DISubprogram(name: "redis_list_users", scope: !2, file: !2, line: 555, type: !333, scopeLine: 556, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !56, retainedNodes: !696)
!1580 = !DILocalVariable(name: "realm", arg: 1, scope: !1579, file: !2, line: 555, type: !318)
!1581 = !DILocation(line: 555, column: 38, scope: !1579)
!1582 = !DILocalVariable(name: "users", arg: 2, scope: !1579, file: !2, line: 555, type: !310)
!1583 = !DILocation(line: 555, column: 61, scope: !1579)
!1584 = !DILocalVariable(name: "realms", arg: 3, scope: !1579, file: !2, line: 555, type: !310)
!1585 = !DILocation(line: 555, column: 84, scope: !1579)
!1586 = !DILocalVariable(name: "ret", scope: !1579, file: !2, line: 557, type: !74)
!1587 = !DILocation(line: 557, column: 6, scope: !1579)
!1588 = !DILocalVariable(name: "rc", scope: !1579, file: !2, line: 558, type: !117)
!1589 = !DILocation(line: 558, column: 16, scope: !1579)
!1590 = !DILocation(line: 558, column: 21, scope: !1579)
!1591 = !DILocalVariable(name: "realm0", scope: !1579, file: !2, line: 560, type: !1592)
!1592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 1024, elements: !124)
!1593 = !DILocation(line: 560, column: 10, scope: !1579)
!1594 = !DILocation(line: 561, column: 6, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1579, file: !2, line: 561, column: 5)
!1596 = !DILocation(line: 561, column: 5, scope: !1579)
!1597 = !DILocation(line: 561, column: 19, scope: !1595)
!1598 = !DILocation(line: 561, column: 18, scope: !1595)
!1599 = !DILocation(line: 561, column: 13, scope: !1595)
!1600 = !DILocation(line: 563, column: 5, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1579, file: !2, line: 563, column: 5)
!1602 = !DILocation(line: 563, column: 5, scope: !1579)
!1603 = !DILocalVariable(name: "keys", scope: !1604, file: !2, line: 564, type: !311)
!1604 = distinct !DILexicalBlock(scope: !1601, file: !2, line: 563, column: 9)
!1605 = !DILocation(line: 564, column: 18, scope: !1604)
!1606 = !DILocalVariable(name: "isz", scope: !1604, file: !2, line: 565, type: !100)
!1607 = !DILocation(line: 565, column: 10, scope: !1604)
!1608 = !DILocation(line: 567, column: 3, scope: !1604)
!1609 = !DILocalVariable(name: "reply", scope: !1604, file: !2, line: 569, type: !92)
!1610 = !DILocation(line: 569, column: 15, scope: !1604)
!1611 = !DILocation(line: 572, column: 7, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1613, file: !2, line: 572, column: 7)
!1613 = distinct !DILexicalBlock(scope: !1604, file: !2, line: 571, column: 3)
!1614 = !DILocation(line: 572, column: 13, scope: !1612)
!1615 = !DILocation(line: 572, column: 16, scope: !1612)
!1616 = !DILocation(line: 572, column: 7, scope: !1613)
!1617 = !DILocation(line: 573, column: 39, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1612, file: !2, line: 572, column: 26)
!1619 = !DILocation(line: 573, column: 83, scope: !1618)
!1620 = !DILocation(line: 573, column: 26, scope: !1618)
!1621 = !DILocation(line: 573, column: 11, scope: !1618)
!1622 = !DILocation(line: 574, column: 4, scope: !1618)
!1623 = !DILocation(line: 575, column: 39, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1612, file: !2, line: 574, column: 11)
!1625 = !DILocation(line: 575, column: 26, scope: !1624)
!1626 = !DILocation(line: 575, column: 11, scope: !1624)
!1627 = !DILocation(line: 578, column: 7, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1613, file: !2, line: 578, column: 7)
!1629 = !DILocation(line: 578, column: 7, scope: !1613)
!1630 = !DILocation(line: 580, column: 9, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1632, file: !2, line: 580, column: 9)
!1632 = distinct !DILexicalBlock(scope: !1628, file: !2, line: 578, column: 14)
!1633 = !DILocation(line: 580, column: 16, scope: !1631)
!1634 = !DILocation(line: 580, column: 21, scope: !1631)
!1635 = !DILocation(line: 580, column: 9, scope: !1632)
!1636 = !DILocation(line: 581, column: 57, scope: !1631)
!1637 = !DILocation(line: 581, column: 64, scope: !1631)
!1638 = !DILocation(line: 581, column: 6, scope: !1631)
!1639 = !DILocation(line: 582, column: 14, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1631, file: !2, line: 582, column: 14)
!1641 = !DILocation(line: 582, column: 21, scope: !1640)
!1642 = !DILocation(line: 582, column: 26, scope: !1640)
!1643 = !DILocation(line: 582, column: 14, scope: !1631)
!1644 = !DILocation(line: 583, column: 10, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1646, file: !2, line: 583, column: 10)
!1646 = distinct !DILexicalBlock(scope: !1640, file: !2, line: 582, column: 48)
!1647 = !DILocation(line: 583, column: 17, scope: !1645)
!1648 = !DILocation(line: 583, column: 22, scope: !1645)
!1649 = !DILocation(line: 583, column: 10, scope: !1646)
!1650 = !DILocation(line: 584, column: 68, scope: !1645)
!1651 = !DILocation(line: 584, column: 75, scope: !1645)
!1652 = !DILocation(line: 584, column: 7, scope: !1645)
!1653 = !DILocation(line: 585, column: 5, scope: !1646)
!1654 = !DILocalVariable(name: "i", scope: !1655, file: !2, line: 586, type: !100)
!1655 = distinct !DILexicalBlock(scope: !1640, file: !2, line: 585, column: 12)
!1656 = !DILocation(line: 586, column: 13, scope: !1655)
!1657 = !DILocation(line: 587, column: 13, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1655, file: !2, line: 587, column: 6)
!1659 = !DILocation(line: 587, column: 11, scope: !1658)
!1660 = !DILocation(line: 587, column: 18, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1658, file: !2, line: 587, column: 6)
!1662 = !DILocation(line: 587, column: 22, scope: !1661)
!1663 = !DILocation(line: 587, column: 29, scope: !1661)
!1664 = !DILocation(line: 587, column: 20, scope: !1661)
!1665 = !DILocation(line: 587, column: 6, scope: !1658)
!1666 = !DILocation(line: 588, column: 33, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1661, file: !2, line: 587, column: 44)
!1668 = !DILocation(line: 588, column: 40, scope: !1667)
!1669 = !DILocation(line: 588, column: 48, scope: !1667)
!1670 = !DILocation(line: 588, column: 52, scope: !1667)
!1671 = !DILocation(line: 588, column: 7, scope: !1667)
!1672 = !DILocation(line: 589, column: 6, scope: !1667)
!1673 = !DILocation(line: 587, column: 39, scope: !1661)
!1674 = !DILocation(line: 587, column: 6, scope: !1661)
!1675 = distinct !{!1675, !1665, !1676, !917}
!1676 = !DILocation(line: 589, column: 6, scope: !1658)
!1677 = !DILocation(line: 591, column: 24, scope: !1632)
!1678 = !DILocation(line: 591, column: 5, scope: !1632)
!1679 = !DILocation(line: 592, column: 4, scope: !1632)
!1680 = !DILocalVariable(name: "rhsz", scope: !1604, file: !2, line: 595, type: !100)
!1681 = !DILocation(line: 595, column: 10, scope: !1604)
!1682 = !DILocalVariable(name: "uhsz", scope: !1604, file: !2, line: 596, type: !100)
!1683 = !DILocation(line: 596, column: 10, scope: !1604)
!1684 = !DILocation(line: 598, column: 10, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1604, file: !2, line: 598, column: 3)
!1686 = !DILocation(line: 598, column: 7, scope: !1685)
!1687 = !DILocation(line: 598, column: 13, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1685, file: !2, line: 598, column: 3)
!1689 = !DILocation(line: 598, column: 22, scope: !1688)
!1690 = !DILocation(line: 598, column: 16, scope: !1688)
!1691 = !DILocation(line: 598, column: 3, scope: !1685)
!1692 = !DILocalVariable(name: "s", scope: !1693, file: !2, line: 599, type: !86)
!1693 = distinct !DILexicalBlock(scope: !1688, file: !2, line: 598, column: 32)
!1694 = !DILocation(line: 599, column: 10, scope: !1693)
!1695 = !DILocation(line: 599, column: 19, scope: !1693)
!1696 = !DILocation(line: 599, column: 27, scope: !1693)
!1697 = !DILocation(line: 599, column: 14, scope: !1693)
!1698 = !DILocalVariable(name: "sh", scope: !1693, file: !2, line: 601, type: !86)
!1699 = !DILocation(line: 601, column: 10, scope: !1693)
!1700 = !DILocation(line: 601, column: 22, scope: !1693)
!1701 = !DILocation(line: 601, column: 15, scope: !1693)
!1702 = !DILocation(line: 602, column: 7, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1693, file: !2, line: 602, column: 7)
!1704 = !DILocation(line: 602, column: 13, scope: !1703)
!1705 = !DILocation(line: 602, column: 10, scope: !1703)
!1706 = !DILocation(line: 602, column: 7, scope: !1693)
!1707 = !DILocation(line: 602, column: 16, scope: !1703)
!1708 = !DILocation(line: 603, column: 10, scope: !1693)
!1709 = !DILocation(line: 603, column: 7, scope: !1693)
!1710 = !DILocalVariable(name: "st", scope: !1693, file: !2, line: 604, type: !86)
!1711 = !DILocation(line: 604, column: 10, scope: !1693)
!1712 = !DILocation(line: 604, column: 22, scope: !1693)
!1713 = !DILocation(line: 604, column: 15, scope: !1693)
!1714 = !DILocation(line: 605, column: 8, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1693, file: !2, line: 605, column: 7)
!1716 = !DILocation(line: 605, column: 7, scope: !1693)
!1717 = !DILocation(line: 605, column: 12, scope: !1715)
!1718 = !DILocation(line: 606, column: 5, scope: !1693)
!1719 = !DILocation(line: 606, column: 7, scope: !1693)
!1720 = !DILocalVariable(name: "sr", scope: !1693, file: !2, line: 607, type: !86)
!1721 = !DILocation(line: 607, column: 10, scope: !1693)
!1722 = !DILocation(line: 607, column: 15, scope: !1693)
!1723 = !DILocation(line: 608, column: 4, scope: !1693)
!1724 = !DILocation(line: 610, column: 16, scope: !1693)
!1725 = !DILocation(line: 610, column: 9, scope: !1693)
!1726 = !DILocation(line: 610, column: 7, scope: !1693)
!1727 = !DILocation(line: 611, column: 7, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1693, file: !2, line: 611, column: 7)
!1729 = !DILocation(line: 611, column: 13, scope: !1728)
!1730 = !DILocation(line: 611, column: 10, scope: !1728)
!1731 = !DILocation(line: 611, column: 7, scope: !1693)
!1732 = !DILocation(line: 611, column: 17, scope: !1728)
!1733 = !DILocation(line: 612, column: 10, scope: !1693)
!1734 = !DILocation(line: 612, column: 7, scope: !1693)
!1735 = !DILocation(line: 613, column: 16, scope: !1693)
!1736 = !DILocation(line: 613, column: 9, scope: !1693)
!1737 = !DILocation(line: 613, column: 7, scope: !1693)
!1738 = !DILocation(line: 614, column: 8, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1693, file: !2, line: 614, column: 7)
!1740 = !DILocation(line: 614, column: 7, scope: !1693)
!1741 = !DILocation(line: 614, column: 12, scope: !1739)
!1742 = !DILocation(line: 615, column: 5, scope: !1693)
!1743 = !DILocation(line: 615, column: 7, scope: !1693)
!1744 = !DILocalVariable(name: "su", scope: !1693, file: !2, line: 616, type: !86)
!1745 = !DILocation(line: 616, column: 10, scope: !1693)
!1746 = !DILocation(line: 616, column: 15, scope: !1693)
!1747 = !DILocation(line: 618, column: 7, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1693, file: !2, line: 618, column: 7)
!1749 = !DILocation(line: 618, column: 7, scope: !1693)
!1750 = !DILocation(line: 619, column: 25, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1748, file: !2, line: 618, column: 14)
!1752 = !DILocation(line: 619, column: 31, scope: !1751)
!1753 = !DILocation(line: 619, column: 5, scope: !1751)
!1754 = !DILocation(line: 620, column: 8, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1751, file: !2, line: 620, column: 8)
!1756 = !DILocation(line: 620, column: 8, scope: !1751)
!1757 = !DILocation(line: 621, column: 26, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1755, file: !2, line: 620, column: 16)
!1759 = !DILocation(line: 621, column: 33, scope: !1758)
!1760 = !DILocation(line: 621, column: 6, scope: !1758)
!1761 = !DILocation(line: 622, column: 5, scope: !1758)
!1762 = !DILocation(line: 623, column: 4, scope: !1751)
!1763 = !DILocation(line: 624, column: 24, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1748, file: !2, line: 623, column: 11)
!1765 = !DILocation(line: 624, column: 28, scope: !1764)
!1766 = !DILocation(line: 624, column: 5, scope: !1764)
!1767 = !DILocation(line: 626, column: 3, scope: !1693)
!1768 = !DILocation(line: 598, column: 25, scope: !1688)
!1769 = !DILocation(line: 598, column: 3, scope: !1688)
!1770 = distinct !{!1770, !1691, !1771, !917}
!1771 = !DILocation(line: 626, column: 3, scope: !1685)
!1772 = !DILocation(line: 628, column: 3, scope: !1604)
!1773 = !DILocation(line: 629, column: 7, scope: !1604)
!1774 = !DILocation(line: 630, column: 2, scope: !1604)
!1775 = !DILocation(line: 631, column: 9, scope: !1579)
!1776 = !DILocation(line: 631, column: 2, scope: !1579)
!1777 = distinct !DISubprogram(name: "redis_list_secrets", scope: !2, file: !2, line: 699, type: !333, scopeLine: 700, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !56, retainedNodes: !696)
!1778 = !DILocalVariable(name: "realm", arg: 1, scope: !1777, file: !2, line: 699, type: !318)
!1779 = !DILocation(line: 699, column: 40, scope: !1777)
!1780 = !DILocalVariable(name: "secrets", arg: 2, scope: !1777, file: !2, line: 699, type: !310)
!1781 = !DILocation(line: 699, column: 63, scope: !1777)
!1782 = !DILocalVariable(name: "realms", arg: 3, scope: !1777, file: !2, line: 699, type: !310)
!1783 = !DILocation(line: 699, column: 88, scope: !1777)
!1784 = !DILocalVariable(name: "ret", scope: !1777, file: !2, line: 701, type: !74)
!1785 = !DILocation(line: 701, column: 6, scope: !1777)
!1786 = !DILocalVariable(name: "realm0", scope: !1777, file: !2, line: 703, type: !1592)
!1787 = !DILocation(line: 703, column: 10, scope: !1777)
!1788 = !DILocation(line: 704, column: 6, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1777, file: !2, line: 704, column: 5)
!1790 = !DILocation(line: 704, column: 5, scope: !1777)
!1791 = !DILocation(line: 704, column: 19, scope: !1789)
!1792 = !DILocation(line: 704, column: 18, scope: !1789)
!1793 = !DILocation(line: 704, column: 13, scope: !1789)
!1794 = !DILocation(line: 706, column: 33, scope: !1777)
!1795 = !DILocalVariable(name: "rc", scope: !1777, file: !2, line: 707, type: !117)
!1796 = !DILocation(line: 707, column: 16, scope: !1777)
!1797 = !DILocation(line: 707, column: 21, scope: !1777)
!1798 = !DILocation(line: 708, column: 6, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1777, file: !2, line: 708, column: 6)
!1800 = !DILocation(line: 708, column: 6, scope: !1777)
!1801 = !DILocalVariable(name: "reply", scope: !1802, file: !2, line: 709, type: !92)
!1802 = distinct !DILexicalBlock(scope: !1799, file: !2, line: 708, column: 10)
!1803 = !DILocation(line: 709, column: 15, scope: !1802)
!1804 = !DILocation(line: 710, column: 7, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1802, file: !2, line: 710, column: 7)
!1806 = !DILocation(line: 710, column: 13, scope: !1805)
!1807 = !DILocation(line: 710, column: 16, scope: !1805)
!1808 = !DILocation(line: 710, column: 7, scope: !1802)
!1809 = !DILocation(line: 711, column: 39, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1805, file: !2, line: 710, column: 26)
!1811 = !DILocation(line: 711, column: 80, scope: !1810)
!1812 = !DILocation(line: 711, column: 26, scope: !1810)
!1813 = !DILocation(line: 711, column: 10, scope: !1810)
!1814 = !DILocation(line: 712, column: 3, scope: !1810)
!1815 = !DILocation(line: 713, column: 39, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1805, file: !2, line: 712, column: 10)
!1817 = !DILocation(line: 713, column: 26, scope: !1816)
!1818 = !DILocation(line: 713, column: 10, scope: !1816)
!1819 = !DILocation(line: 715, column: 7, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1802, file: !2, line: 715, column: 7)
!1821 = !DILocation(line: 715, column: 7, scope: !1802)
!1822 = !DILocalVariable(name: "keys", scope: !1823, file: !2, line: 716, type: !311)
!1823 = distinct !DILexicalBlock(scope: !1820, file: !2, line: 715, column: 14)
!1824 = !DILocation(line: 716, column: 19, scope: !1823)
!1825 = !DILocalVariable(name: "isz", scope: !1823, file: !2, line: 717, type: !100)
!1826 = !DILocation(line: 717, column: 11, scope: !1823)
!1827 = !DILocalVariable(name: "s", scope: !1823, file: !2, line: 718, type: !365)
!1828 = !DILocation(line: 718, column: 9, scope: !1823)
!1829 = !DILocation(line: 720, column: 4, scope: !1823)
!1830 = !DILocation(line: 722, column: 8, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1823, file: !2, line: 722, column: 8)
!1832 = !DILocation(line: 722, column: 15, scope: !1831)
!1833 = !DILocation(line: 722, column: 20, scope: !1831)
!1834 = !DILocation(line: 722, column: 8, scope: !1823)
!1835 = !DILocation(line: 723, column: 56, scope: !1831)
!1836 = !DILocation(line: 723, column: 63, scope: !1831)
!1837 = !DILocation(line: 723, column: 5, scope: !1831)
!1838 = !DILocation(line: 724, column: 13, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1831, file: !2, line: 724, column: 13)
!1840 = !DILocation(line: 724, column: 20, scope: !1839)
!1841 = !DILocation(line: 724, column: 25, scope: !1839)
!1842 = !DILocation(line: 724, column: 13, scope: !1831)
!1843 = !DILocation(line: 725, column: 9, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1845, file: !2, line: 725, column: 9)
!1845 = distinct !DILexicalBlock(scope: !1839, file: !2, line: 724, column: 47)
!1846 = !DILocation(line: 725, column: 16, scope: !1844)
!1847 = !DILocation(line: 725, column: 21, scope: !1844)
!1848 = !DILocation(line: 725, column: 9, scope: !1845)
!1849 = !DILocation(line: 726, column: 67, scope: !1844)
!1850 = !DILocation(line: 726, column: 74, scope: !1844)
!1851 = !DILocation(line: 726, column: 6, scope: !1844)
!1852 = !DILocation(line: 727, column: 4, scope: !1845)
!1853 = !DILocalVariable(name: "i", scope: !1854, file: !2, line: 728, type: !100)
!1854 = distinct !DILexicalBlock(scope: !1839, file: !2, line: 727, column: 11)
!1855 = !DILocation(line: 728, column: 12, scope: !1854)
!1856 = !DILocation(line: 729, column: 12, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1854, file: !2, line: 729, column: 5)
!1858 = !DILocation(line: 729, column: 10, scope: !1857)
!1859 = !DILocation(line: 729, column: 17, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1857, file: !2, line: 729, column: 5)
!1861 = !DILocation(line: 729, column: 21, scope: !1860)
!1862 = !DILocation(line: 729, column: 28, scope: !1860)
!1863 = !DILocation(line: 729, column: 19, scope: !1860)
!1864 = !DILocation(line: 729, column: 5, scope: !1857)
!1865 = !DILocation(line: 730, column: 33, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1860, file: !2, line: 729, column: 43)
!1867 = !DILocation(line: 730, column: 40, scope: !1866)
!1868 = !DILocation(line: 730, column: 48, scope: !1866)
!1869 = !DILocation(line: 730, column: 52, scope: !1866)
!1870 = !DILocation(line: 730, column: 6, scope: !1866)
!1871 = !DILocation(line: 731, column: 5, scope: !1866)
!1872 = !DILocation(line: 729, column: 38, scope: !1860)
!1873 = !DILocation(line: 729, column: 5, scope: !1860)
!1874 = distinct !{!1874, !1864, !1875, !917}
!1875 = !DILocation(line: 731, column: 5, scope: !1857)
!1876 = !DILocalVariable(name: "rhsz", scope: !1823, file: !2, line: 734, type: !100)
!1877 = !DILocation(line: 734, column: 11, scope: !1823)
!1878 = !DILocation(line: 736, column: 13, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1823, file: !2, line: 736, column: 4)
!1880 = !DILocation(line: 736, column: 9, scope: !1879)
!1881 = !DILocation(line: 736, column: 18, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1879, file: !2, line: 736, column: 4)
!1883 = !DILocation(line: 736, column: 29, scope: !1882)
!1884 = !DILocation(line: 736, column: 22, scope: !1882)
!1885 = !DILocation(line: 736, column: 4, scope: !1879)
!1886 = !DILocation(line: 737, column: 14, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1882, file: !2, line: 736, column: 40)
!1888 = !DILocation(line: 737, column: 48, scope: !1887)
!1889 = !DILocation(line: 737, column: 56, scope: !1887)
!1890 = !DILocation(line: 737, column: 43, scope: !1887)
!1891 = !DILocation(line: 737, column: 5, scope: !1887)
!1892 = !DILocalVariable(name: "rget", scope: !1887, file: !2, line: 738, type: !92)
!1893 = !DILocation(line: 738, column: 17, scope: !1887)
!1894 = !DILocation(line: 738, column: 52, scope: !1887)
!1895 = !DILocation(line: 738, column: 56, scope: !1887)
!1896 = !DILocation(line: 738, column: 39, scope: !1887)
!1897 = !DILocation(line: 739, column: 9, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1887, file: !2, line: 739, column: 9)
!1899 = !DILocation(line: 739, column: 9, scope: !1887)
!1900 = !DILocation(line: 740, column: 10, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1902, file: !2, line: 740, column: 10)
!1902 = distinct !DILexicalBlock(scope: !1898, file: !2, line: 739, column: 15)
!1903 = !DILocation(line: 740, column: 16, scope: !1901)
!1904 = !DILocation(line: 740, column: 21, scope: !1901)
!1905 = !DILocation(line: 740, column: 10, scope: !1902)
!1906 = !DILocation(line: 741, column: 58, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1901, file: !2, line: 740, column: 43)
!1908 = !DILocation(line: 741, column: 64, scope: !1907)
!1909 = !DILocation(line: 741, column: 7, scope: !1907)
!1910 = !DILocation(line: 742, column: 6, scope: !1907)
!1911 = !DILocation(line: 742, column: 17, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1901, file: !2, line: 742, column: 17)
!1913 = !DILocation(line: 742, column: 23, scope: !1912)
!1914 = !DILocation(line: 742, column: 28, scope: !1912)
!1915 = !DILocation(line: 742, column: 17, scope: !1901)
!1916 = !DILocation(line: 743, column: 22, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1912, file: !2, line: 742, column: 51)
!1918 = !DILocation(line: 743, column: 28, scope: !1917)
!1919 = !DILocation(line: 743, column: 7, scope: !1917)
!1920 = !DILocation(line: 744, column: 6, scope: !1917)
!1921 = !DILocation(line: 744, column: 17, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1912, file: !2, line: 744, column: 17)
!1923 = !DILocation(line: 744, column: 23, scope: !1922)
!1924 = !DILocation(line: 744, column: 28, scope: !1922)
!1925 = !DILocation(line: 744, column: 17, scope: !1912)
!1926 = !DILocation(line: 745, column: 11, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1928, file: !2, line: 745, column: 11)
!1928 = distinct !DILexicalBlock(scope: !1922, file: !2, line: 744, column: 50)
!1929 = !DILocation(line: 745, column: 17, scope: !1927)
!1930 = !DILocation(line: 745, column: 22, scope: !1927)
!1931 = !DILocation(line: 745, column: 11, scope: !1928)
!1932 = !DILocation(line: 746, column: 69, scope: !1927)
!1933 = !DILocation(line: 746, column: 75, scope: !1927)
!1934 = !DILocation(line: 746, column: 8, scope: !1927)
!1935 = !DILocation(line: 747, column: 6, scope: !1928)
!1936 = !DILocalVariable(name: "s", scope: !1937, file: !2, line: 749, type: !86)
!1937 = distinct !DILexicalBlock(scope: !1922, file: !2, line: 747, column: 13)
!1938 = !DILocation(line: 749, column: 13, scope: !1937)
!1939 = !DILocation(line: 749, column: 22, scope: !1937)
!1940 = !DILocation(line: 749, column: 30, scope: !1937)
!1941 = !DILocation(line: 749, column: 17, scope: !1937)
!1942 = !DILocalVariable(name: "sh", scope: !1937, file: !2, line: 751, type: !86)
!1943 = !DILocation(line: 751, column: 13, scope: !1937)
!1944 = !DILocation(line: 751, column: 25, scope: !1937)
!1945 = !DILocation(line: 751, column: 18, scope: !1937)
!1946 = !DILocation(line: 752, column: 10, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1937, file: !2, line: 752, column: 10)
!1948 = !DILocation(line: 752, column: 16, scope: !1947)
!1949 = !DILocation(line: 752, column: 13, scope: !1947)
!1950 = !DILocation(line: 752, column: 10, scope: !1937)
!1951 = !DILocation(line: 752, column: 19, scope: !1947)
!1952 = !DILocation(line: 753, column: 13, scope: !1937)
!1953 = !DILocation(line: 753, column: 10, scope: !1937)
!1954 = !DILocalVariable(name: "st", scope: !1937, file: !2, line: 754, type: !86)
!1955 = !DILocation(line: 754, column: 13, scope: !1937)
!1956 = !DILocation(line: 754, column: 25, scope: !1937)
!1957 = !DILocation(line: 754, column: 18, scope: !1937)
!1958 = !DILocation(line: 755, column: 11, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1937, file: !2, line: 755, column: 10)
!1960 = !DILocation(line: 755, column: 10, scope: !1937)
!1961 = !DILocation(line: 755, column: 15, scope: !1959)
!1962 = !DILocation(line: 756, column: 8, scope: !1937)
!1963 = !DILocation(line: 756, column: 10, scope: !1937)
!1964 = !DILocalVariable(name: "rval", scope: !1937, file: !2, line: 757, type: !84)
!1965 = !DILocation(line: 757, column: 19, scope: !1937)
!1966 = !DILocation(line: 757, column: 26, scope: !1937)
!1967 = !DILocalVariable(name: "i", scope: !1937, file: !2, line: 759, type: !100)
!1968 = !DILocation(line: 759, column: 14, scope: !1937)
!1969 = !DILocation(line: 760, column: 14, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1937, file: !2, line: 760, column: 7)
!1971 = !DILocation(line: 760, column: 12, scope: !1970)
!1972 = !DILocation(line: 760, column: 19, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1970, file: !2, line: 760, column: 7)
!1974 = !DILocation(line: 760, column: 23, scope: !1973)
!1975 = !DILocation(line: 760, column: 29, scope: !1973)
!1976 = !DILocation(line: 760, column: 21, scope: !1973)
!1977 = !DILocation(line: 760, column: 7, scope: !1970)
!1978 = !DILocalVariable(name: "kval", scope: !1979, file: !2, line: 761, type: !84)
!1979 = distinct !DILexicalBlock(scope: !1973, file: !2, line: 760, column: 44)
!1980 = !DILocation(line: 761, column: 20, scope: !1979)
!1981 = !DILocation(line: 761, column: 27, scope: !1979)
!1982 = !DILocation(line: 761, column: 33, scope: !1979)
!1983 = !DILocation(line: 761, column: 41, scope: !1979)
!1984 = !DILocation(line: 761, column: 45, scope: !1979)
!1985 = !DILocation(line: 762, column: 11, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1979, file: !2, line: 762, column: 11)
!1987 = !DILocation(line: 762, column: 11, scope: !1979)
!1988 = !DILocation(line: 763, column: 29, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1986, file: !2, line: 762, column: 20)
!1990 = !DILocation(line: 763, column: 37, scope: !1989)
!1991 = !DILocation(line: 763, column: 9, scope: !1989)
!1992 = !DILocation(line: 764, column: 12, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1989, file: !2, line: 764, column: 12)
!1994 = !DILocation(line: 764, column: 12, scope: !1989)
!1995 = !DILocation(line: 765, column: 13, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1997, file: !2, line: 765, column: 13)
!1997 = distinct !DILexicalBlock(scope: !1993, file: !2, line: 764, column: 20)
!1998 = !DILocation(line: 765, column: 18, scope: !1996)
!1999 = !DILocation(line: 765, column: 22, scope: !1996)
!2000 = !DILocation(line: 765, column: 21, scope: !1996)
!2001 = !DILocation(line: 765, column: 13, scope: !1997)
!2002 = !DILocation(line: 766, column: 34, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !1996, file: !2, line: 765, column: 28)
!2004 = !DILocation(line: 766, column: 41, scope: !2003)
!2005 = !DILocation(line: 766, column: 14, scope: !2003)
!2006 = !DILocation(line: 767, column: 10, scope: !2003)
!2007 = !DILocation(line: 768, column: 31, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !1996, file: !2, line: 767, column: 17)
!2009 = !DILocation(line: 768, column: 45, scope: !2008)
!2010 = !DILocation(line: 768, column: 11, scope: !2008)
!2011 = !DILocation(line: 770, column: 9, scope: !1997)
!2012 = !DILocation(line: 771, column: 8, scope: !1989)
!2013 = !DILocation(line: 772, column: 28, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !1986, file: !2, line: 771, column: 15)
!2015 = !DILocation(line: 772, column: 34, scope: !2014)
!2016 = !DILocation(line: 772, column: 9, scope: !2014)
!2017 = !DILocation(line: 774, column: 7, scope: !1979)
!2018 = !DILocation(line: 760, column: 39, scope: !1973)
!2019 = !DILocation(line: 760, column: 7, scope: !1973)
!2020 = distinct !{!2020, !1977, !2021, !917}
!2021 = !DILocation(line: 774, column: 7, scope: !1970)
!2022 = !DILocation(line: 776, column: 5, scope: !1902)
!2023 = !DILocation(line: 777, column: 24, scope: !1887)
!2024 = !DILocation(line: 777, column: 5, scope: !1887)
!2025 = !DILocation(line: 778, column: 4, scope: !1887)
!2026 = !DILocation(line: 736, column: 33, scope: !1882)
!2027 = !DILocation(line: 736, column: 4, scope: !1882)
!2028 = distinct !{!2028, !1885, !2029, !917}
!2029 = !DILocation(line: 778, column: 4, scope: !1879)
!2030 = !DILocation(line: 780, column: 4, scope: !1823)
!2031 = !DILocation(line: 782, column: 23, scope: !1823)
!2032 = !DILocation(line: 782, column: 4, scope: !1823)
!2033 = !DILocation(line: 783, column: 8, scope: !1823)
!2034 = !DILocation(line: 784, column: 3, scope: !1823)
!2035 = !DILocation(line: 785, column: 2, scope: !1802)
!2036 = !DILocation(line: 786, column: 9, scope: !1777)
!2037 = !DILocation(line: 786, column: 2, scope: !1777)
!2038 = distinct !DISubprogram(name: "redis_del_secret", scope: !2, file: !2, line: 790, type: !329, scopeLine: 791, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !56, retainedNodes: !696)
!2039 = !DILocalVariable(name: "secret", arg: 1, scope: !2038, file: !2, line: 790, type: !318)
!2040 = !DILocation(line: 790, column: 38, scope: !2038)
!2041 = !DILocalVariable(name: "realm", arg: 2, scope: !2038, file: !2, line: 790, type: !318)
!2042 = !DILocation(line: 790, column: 55, scope: !2038)
!2043 = !DILocalVariable(name: "ret", scope: !2038, file: !2, line: 792, type: !74)
!2044 = !DILocation(line: 792, column: 6, scope: !2038)
!2045 = !DILocation(line: 793, column: 33, scope: !2038)
!2046 = !DILocalVariable(name: "rc", scope: !2038, file: !2, line: 794, type: !117)
!2047 = !DILocation(line: 794, column: 16, scope: !2038)
!2048 = !DILocation(line: 794, column: 21, scope: !2038)
!2049 = !DILocation(line: 795, column: 6, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2038, file: !2, line: 795, column: 6)
!2051 = !DILocation(line: 795, column: 6, scope: !2038)
!2052 = !DILocation(line: 796, column: 35, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2050, file: !2, line: 795, column: 10)
!2054 = !DILocation(line: 796, column: 79, scope: !2053)
!2055 = !DILocation(line: 796, column: 94, scope: !2053)
!2056 = !DILocation(line: 796, column: 22, scope: !2053)
!2057 = !DILocation(line: 796, column: 3, scope: !2053)
!2058 = !DILocation(line: 797, column: 35, scope: !2053)
!2059 = !DILocation(line: 797, column: 22, scope: !2053)
!2060 = !DILocation(line: 797, column: 3, scope: !2053)
!2061 = !DILocation(line: 798, column: 7, scope: !2053)
!2062 = !DILocation(line: 799, column: 2, scope: !2053)
!2063 = !DILocation(line: 800, column: 9, scope: !2038)
!2064 = !DILocation(line: 800, column: 2, scope: !2038)
!2065 = distinct !DISubprogram(name: "redis_set_secret", scope: !2, file: !2, line: 804, type: !329, scopeLine: 805, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !56, retainedNodes: !696)
!2066 = !DILocalVariable(name: "secret", arg: 1, scope: !2065, file: !2, line: 804, type: !318)
!2067 = !DILocation(line: 804, column: 38, scope: !2065)
!2068 = !DILocalVariable(name: "realm", arg: 2, scope: !2065, file: !2, line: 804, type: !318)
!2069 = !DILocation(line: 804, column: 55, scope: !2065)
!2070 = !DILocalVariable(name: "ret", scope: !2065, file: !2, line: 806, type: !74)
!2071 = !DILocation(line: 806, column: 6, scope: !2065)
!2072 = !DILocation(line: 807, column: 33, scope: !2065)
!2073 = !DILocalVariable(name: "rc", scope: !2065, file: !2, line: 808, type: !117)
!2074 = !DILocation(line: 808, column: 16, scope: !2065)
!2075 = !DILocation(line: 808, column: 21, scope: !2065)
!2076 = !DILocation(line: 809, column: 6, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !2065, file: !2, line: 809, column: 6)
!2078 = !DILocation(line: 809, column: 6, scope: !2065)
!2079 = !DILocalVariable(name: "s", scope: !2080, file: !2, line: 810, type: !1433)
!2080 = distinct !DILexicalBlock(scope: !2077, file: !2, line: 809, column: 10)
!2081 = !DILocation(line: 810, column: 8, scope: !2080)
!2082 = !DILocation(line: 812, column: 20, scope: !2080)
!2083 = !DILocation(line: 812, column: 28, scope: !2080)
!2084 = !DILocation(line: 812, column: 3, scope: !2080)
!2085 = !DILocation(line: 814, column: 12, scope: !2080)
!2086 = !DILocation(line: 814, column: 66, scope: !2080)
!2087 = !DILocation(line: 814, column: 73, scope: !2080)
!2088 = !DILocation(line: 814, column: 3, scope: !2080)
!2089 = !DILocation(line: 816, column: 35, scope: !2080)
!2090 = !DILocation(line: 816, column: 39, scope: !2080)
!2091 = !DILocation(line: 816, column: 22, scope: !2080)
!2092 = !DILocation(line: 816, column: 3, scope: !2080)
!2093 = !DILocation(line: 817, column: 35, scope: !2080)
!2094 = !DILocation(line: 817, column: 22, scope: !2080)
!2095 = !DILocation(line: 817, column: 3, scope: !2080)
!2096 = !DILocation(line: 818, column: 7, scope: !2080)
!2097 = !DILocation(line: 819, column: 2, scope: !2080)
!2098 = !DILocation(line: 820, column: 9, scope: !2065)
!2099 = !DILocation(line: 820, column: 2, scope: !2065)
!2100 = distinct !DISubprogram(name: "redis_add_origin", scope: !2, file: !2, line: 849, type: !329, scopeLine: 849, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !56, retainedNodes: !696)
!2101 = !DILocalVariable(name: "origin", arg: 1, scope: !2100, file: !2, line: 849, type: !318)
!2102 = !DILocation(line: 849, column: 38, scope: !2100)
!2103 = !DILocalVariable(name: "realm", arg: 2, scope: !2100, file: !2, line: 849, type: !318)
!2104 = !DILocation(line: 849, column: 55, scope: !2100)
!2105 = !DILocalVariable(name: "ret", scope: !2100, file: !2, line: 850, type: !74)
!2106 = !DILocation(line: 850, column: 7, scope: !2100)
!2107 = !DILocalVariable(name: "rc", scope: !2100, file: !2, line: 851, type: !117)
!2108 = !DILocation(line: 851, column: 16, scope: !2100)
!2109 = !DILocation(line: 851, column: 21, scope: !2100)
!2110 = !DILocation(line: 852, column: 5, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2100, file: !2, line: 852, column: 5)
!2112 = !DILocation(line: 852, column: 5, scope: !2100)
!2113 = !DILocalVariable(name: "s", scope: !2114, file: !2, line: 853, type: !1433)
!2114 = distinct !DILexicalBlock(scope: !2111, file: !2, line: 852, column: 9)
!2115 = !DILocation(line: 853, column: 8, scope: !2114)
!2116 = !DILocation(line: 855, column: 12, scope: !2114)
!2117 = !DILocation(line: 855, column: 56, scope: !2114)
!2118 = !DILocation(line: 855, column: 71, scope: !2114)
!2119 = !DILocation(line: 855, column: 3, scope: !2114)
!2120 = !DILocation(line: 857, column: 35, scope: !2114)
!2121 = !DILocation(line: 857, column: 39, scope: !2114)
!2122 = !DILocation(line: 857, column: 22, scope: !2114)
!2123 = !DILocation(line: 857, column: 3, scope: !2114)
!2124 = !DILocation(line: 858, column: 35, scope: !2114)
!2125 = !DILocation(line: 858, column: 22, scope: !2114)
!2126 = !DILocation(line: 858, column: 3, scope: !2114)
!2127 = !DILocation(line: 859, column: 9, scope: !2114)
!2128 = !DILocation(line: 860, column: 2, scope: !2114)
!2129 = !DILocation(line: 861, column: 10, scope: !2100)
!2130 = !DILocation(line: 861, column: 3, scope: !2100)
!2131 = distinct !DISubprogram(name: "redis_del_origin", scope: !2, file: !2, line: 864, type: !341, scopeLine: 864, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !56, retainedNodes: !696)
!2132 = !DILocalVariable(name: "origin", arg: 1, scope: !2131, file: !2, line: 864, type: !318)
!2133 = !DILocation(line: 864, column: 38, scope: !2131)
!2134 = !DILocalVariable(name: "ret", scope: !2131, file: !2, line: 865, type: !74)
!2135 = !DILocation(line: 865, column: 7, scope: !2131)
!2136 = !DILocalVariable(name: "rc", scope: !2131, file: !2, line: 866, type: !117)
!2137 = !DILocation(line: 866, column: 16, scope: !2131)
!2138 = !DILocation(line: 866, column: 21, scope: !2131)
!2139 = !DILocation(line: 867, column: 5, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2131, file: !2, line: 867, column: 5)
!2141 = !DILocation(line: 867, column: 5, scope: !2131)
!2142 = !DILocalVariable(name: "s", scope: !2143, file: !2, line: 868, type: !1433)
!2143 = distinct !DILexicalBlock(scope: !2140, file: !2, line: 867, column: 9)
!2144 = !DILocation(line: 868, column: 8, scope: !2143)
!2145 = !DILocation(line: 870, column: 12, scope: !2143)
!2146 = !DILocation(line: 870, column: 53, scope: !2143)
!2147 = !DILocation(line: 870, column: 3, scope: !2143)
!2148 = !DILocation(line: 872, column: 35, scope: !2143)
!2149 = !DILocation(line: 872, column: 39, scope: !2143)
!2150 = !DILocation(line: 872, column: 22, scope: !2143)
!2151 = !DILocation(line: 872, column: 3, scope: !2143)
!2152 = !DILocation(line: 873, column: 35, scope: !2143)
!2153 = !DILocation(line: 873, column: 22, scope: !2143)
!2154 = !DILocation(line: 873, column: 3, scope: !2143)
!2155 = !DILocation(line: 874, column: 9, scope: !2143)
!2156 = !DILocation(line: 875, column: 2, scope: !2143)
!2157 = !DILocation(line: 876, column: 10, scope: !2131)
!2158 = !DILocation(line: 876, column: 3, scope: !2131)
!2159 = distinct !DISubprogram(name: "redis_list_origins", scope: !2, file: !2, line: 879, type: !333, scopeLine: 880, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !56, retainedNodes: !696)
!2160 = !DILocalVariable(name: "realm", arg: 1, scope: !2159, file: !2, line: 879, type: !318)
!2161 = !DILocation(line: 879, column: 40, scope: !2159)
!2162 = !DILocalVariable(name: "origins", arg: 2, scope: !2159, file: !2, line: 879, type: !310)
!2163 = !DILocation(line: 879, column: 63, scope: !2159)
!2164 = !DILocalVariable(name: "realms", arg: 3, scope: !2159, file: !2, line: 879, type: !310)
!2165 = !DILocation(line: 879, column: 88, scope: !2159)
!2166 = !DILocalVariable(name: "ret", scope: !2159, file: !2, line: 881, type: !74)
!2167 = !DILocation(line: 881, column: 6, scope: !2159)
!2168 = !DILocalVariable(name: "realm0", scope: !2159, file: !2, line: 883, type: !1592)
!2169 = !DILocation(line: 883, column: 10, scope: !2159)
!2170 = !DILocation(line: 884, column: 6, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2159, file: !2, line: 884, column: 5)
!2172 = !DILocation(line: 884, column: 5, scope: !2159)
!2173 = !DILocation(line: 884, column: 19, scope: !2171)
!2174 = !DILocation(line: 884, column: 18, scope: !2171)
!2175 = !DILocation(line: 884, column: 13, scope: !2171)
!2176 = !DILocation(line: 886, column: 33, scope: !2159)
!2177 = !DILocalVariable(name: "rc", scope: !2159, file: !2, line: 888, type: !117)
!2178 = !DILocation(line: 888, column: 16, scope: !2159)
!2179 = !DILocation(line: 888, column: 21, scope: !2159)
!2180 = !DILocation(line: 889, column: 5, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2159, file: !2, line: 889, column: 5)
!2182 = !DILocation(line: 889, column: 5, scope: !2159)
!2183 = !DILocalVariable(name: "keys", scope: !2184, file: !2, line: 890, type: !311)
!2184 = distinct !DILexicalBlock(scope: !2181, file: !2, line: 889, column: 9)
!2185 = !DILocation(line: 890, column: 18, scope: !2184)
!2186 = !DILocalVariable(name: "isz", scope: !2184, file: !2, line: 891, type: !100)
!2187 = !DILocation(line: 891, column: 10, scope: !2184)
!2188 = !DILocation(line: 893, column: 3, scope: !2184)
!2189 = !DILocalVariable(name: "reply", scope: !2184, file: !2, line: 895, type: !92)
!2190 = !DILocation(line: 895, column: 15, scope: !2184)
!2191 = !DILocation(line: 898, column: 38, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2184, file: !2, line: 897, column: 3)
!2193 = !DILocation(line: 898, column: 25, scope: !2192)
!2194 = !DILocation(line: 898, column: 10, scope: !2192)
!2195 = !DILocation(line: 899, column: 7, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2192, file: !2, line: 899, column: 7)
!2197 = !DILocation(line: 899, column: 7, scope: !2192)
!2198 = !DILocation(line: 901, column: 9, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2200, file: !2, line: 901, column: 9)
!2200 = distinct !DILexicalBlock(scope: !2196, file: !2, line: 899, column: 14)
!2201 = !DILocation(line: 901, column: 16, scope: !2199)
!2202 = !DILocation(line: 901, column: 21, scope: !2199)
!2203 = !DILocation(line: 901, column: 9, scope: !2200)
!2204 = !DILocation(line: 902, column: 57, scope: !2199)
!2205 = !DILocation(line: 902, column: 64, scope: !2199)
!2206 = !DILocation(line: 902, column: 6, scope: !2199)
!2207 = !DILocation(line: 903, column: 14, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2199, file: !2, line: 903, column: 14)
!2209 = !DILocation(line: 903, column: 21, scope: !2208)
!2210 = !DILocation(line: 903, column: 26, scope: !2208)
!2211 = !DILocation(line: 903, column: 14, scope: !2199)
!2212 = !DILocation(line: 904, column: 10, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2214, file: !2, line: 904, column: 10)
!2214 = distinct !DILexicalBlock(scope: !2208, file: !2, line: 903, column: 48)
!2215 = !DILocation(line: 904, column: 17, scope: !2213)
!2216 = !DILocation(line: 904, column: 22, scope: !2213)
!2217 = !DILocation(line: 904, column: 10, scope: !2214)
!2218 = !DILocation(line: 905, column: 68, scope: !2213)
!2219 = !DILocation(line: 905, column: 75, scope: !2213)
!2220 = !DILocation(line: 905, column: 7, scope: !2213)
!2221 = !DILocation(line: 906, column: 5, scope: !2214)
!2222 = !DILocalVariable(name: "i", scope: !2223, file: !2, line: 907, type: !100)
!2223 = distinct !DILexicalBlock(scope: !2208, file: !2, line: 906, column: 12)
!2224 = !DILocation(line: 907, column: 13, scope: !2223)
!2225 = !DILocalVariable(name: "offset", scope: !2223, file: !2, line: 908, type: !100)
!2226 = !DILocation(line: 908, column: 13, scope: !2223)
!2227 = !DILocation(line: 909, column: 13, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2223, file: !2, line: 909, column: 6)
!2229 = !DILocation(line: 909, column: 11, scope: !2228)
!2230 = !DILocation(line: 909, column: 18, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2228, file: !2, line: 909, column: 6)
!2232 = !DILocation(line: 909, column: 22, scope: !2231)
!2233 = !DILocation(line: 909, column: 29, scope: !2231)
!2234 = !DILocation(line: 909, column: 20, scope: !2231)
!2235 = !DILocation(line: 909, column: 6, scope: !2228)
!2236 = !DILocation(line: 910, column: 33, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2231, file: !2, line: 909, column: 44)
!2238 = !DILocation(line: 910, column: 40, scope: !2237)
!2239 = !DILocation(line: 910, column: 48, scope: !2237)
!2240 = !DILocation(line: 910, column: 52, scope: !2237)
!2241 = !DILocation(line: 910, column: 56, scope: !2237)
!2242 = !DILocation(line: 910, column: 55, scope: !2237)
!2243 = !DILocation(line: 910, column: 7, scope: !2237)
!2244 = !DILocation(line: 911, column: 6, scope: !2237)
!2245 = !DILocation(line: 909, column: 39, scope: !2231)
!2246 = !DILocation(line: 909, column: 6, scope: !2231)
!2247 = distinct !{!2247, !2235, !2248, !917}
!2248 = !DILocation(line: 911, column: 6, scope: !2228)
!2249 = !DILocation(line: 913, column: 24, scope: !2200)
!2250 = !DILocation(line: 913, column: 5, scope: !2200)
!2251 = !DILocation(line: 914, column: 4, scope: !2200)
!2252 = !DILocation(line: 917, column: 10, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2184, file: !2, line: 917, column: 3)
!2254 = !DILocation(line: 917, column: 7, scope: !2253)
!2255 = !DILocation(line: 917, column: 13, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2253, file: !2, line: 917, column: 3)
!2257 = !DILocation(line: 917, column: 22, scope: !2256)
!2258 = !DILocation(line: 917, column: 16, scope: !2256)
!2259 = !DILocation(line: 917, column: 3, scope: !2253)
!2260 = !DILocalVariable(name: "o", scope: !2261, file: !2, line: 919, type: !86)
!2261 = distinct !DILexicalBlock(scope: !2256, file: !2, line: 917, column: 32)
!2262 = !DILocation(line: 919, column: 10, scope: !2261)
!2263 = !DILocation(line: 919, column: 19, scope: !2261)
!2264 = !DILocation(line: 919, column: 27, scope: !2261)
!2265 = !DILocation(line: 919, column: 14, scope: !2261)
!2266 = !DILocation(line: 921, column: 38, scope: !2261)
!2267 = !DILocation(line: 921, column: 63, scope: !2261)
!2268 = !DILocation(line: 921, column: 25, scope: !2261)
!2269 = !DILocation(line: 921, column: 10, scope: !2261)
!2270 = !DILocation(line: 922, column: 7, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2261, file: !2, line: 922, column: 7)
!2272 = !DILocation(line: 922, column: 7, scope: !2261)
!2273 = !DILocation(line: 924, column: 9, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2275, file: !2, line: 924, column: 9)
!2275 = distinct !DILexicalBlock(scope: !2271, file: !2, line: 922, column: 14)
!2276 = !DILocation(line: 924, column: 16, scope: !2274)
!2277 = !DILocation(line: 924, column: 21, scope: !2274)
!2278 = !DILocation(line: 924, column: 9, scope: !2275)
!2279 = !DILocation(line: 925, column: 57, scope: !2274)
!2280 = !DILocation(line: 925, column: 64, scope: !2274)
!2281 = !DILocation(line: 925, column: 6, scope: !2274)
!2282 = !DILocation(line: 926, column: 14, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2274, file: !2, line: 926, column: 14)
!2284 = !DILocation(line: 926, column: 21, scope: !2283)
!2285 = !DILocation(line: 926, column: 26, scope: !2283)
!2286 = !DILocation(line: 926, column: 14, scope: !2274)
!2287 = !DILocation(line: 927, column: 10, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2289, file: !2, line: 927, column: 10)
!2289 = distinct !DILexicalBlock(scope: !2283, file: !2, line: 926, column: 49)
!2290 = !DILocation(line: 927, column: 17, scope: !2288)
!2291 = !DILocation(line: 927, column: 22, scope: !2288)
!2292 = !DILocation(line: 927, column: 10, scope: !2289)
!2293 = !DILocation(line: 928, column: 68, scope: !2288)
!2294 = !DILocation(line: 928, column: 75, scope: !2288)
!2295 = !DILocation(line: 928, column: 7, scope: !2288)
!2296 = !DILocation(line: 929, column: 5, scope: !2289)
!2297 = !DILocation(line: 930, column: 11, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2299, file: !2, line: 930, column: 9)
!2299 = distinct !DILexicalBlock(scope: !2283, file: !2, line: 929, column: 12)
!2300 = !DILocation(line: 930, column: 17, scope: !2298)
!2301 = !DILocation(line: 930, column: 20, scope: !2298)
!2302 = !DILocation(line: 930, column: 29, scope: !2298)
!2303 = !DILocation(line: 930, column: 46, scope: !2298)
!2304 = !DILocation(line: 930, column: 52, scope: !2298)
!2305 = !DILocation(line: 930, column: 59, scope: !2298)
!2306 = !DILocation(line: 930, column: 32, scope: !2298)
!2307 = !DILocation(line: 930, column: 9, scope: !2299)
!2308 = !DILocation(line: 931, column: 10, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2310, file: !2, line: 931, column: 10)
!2310 = distinct !DILexicalBlock(scope: !2298, file: !2, line: 930, column: 66)
!2311 = !DILocation(line: 931, column: 10, scope: !2310)
!2312 = !DILocation(line: 932, column: 28, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2309, file: !2, line: 931, column: 19)
!2314 = !DILocation(line: 932, column: 36, scope: !2313)
!2315 = !DILocation(line: 932, column: 8, scope: !2313)
!2316 = !DILocation(line: 933, column: 11, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2313, file: !2, line: 933, column: 11)
!2318 = !DILocation(line: 933, column: 11, scope: !2313)
!2319 = !DILocation(line: 934, column: 29, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2317, file: !2, line: 933, column: 19)
!2321 = !DILocation(line: 934, column: 36, scope: !2320)
!2322 = !DILocation(line: 934, column: 43, scope: !2320)
!2323 = !DILocation(line: 934, column: 9, scope: !2320)
!2324 = !DILocation(line: 935, column: 8, scope: !2320)
!2325 = !DILocation(line: 936, column: 7, scope: !2313)
!2326 = !DILocation(line: 937, column: 30, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2309, file: !2, line: 936, column: 14)
!2328 = !DILocation(line: 937, column: 32, scope: !2327)
!2329 = !DILocation(line: 937, column: 39, scope: !2327)
!2330 = !DILocation(line: 937, column: 8, scope: !2327)
!2331 = !DILocation(line: 939, column: 6, scope: !2310)
!2332 = !DILocation(line: 941, column: 24, scope: !2275)
!2333 = !DILocation(line: 941, column: 5, scope: !2275)
!2334 = !DILocation(line: 942, column: 4, scope: !2275)
!2335 = !DILocation(line: 943, column: 3, scope: !2261)
!2336 = !DILocation(line: 917, column: 25, scope: !2256)
!2337 = !DILocation(line: 917, column: 3, scope: !2256)
!2338 = distinct !{!2338, !2259, !2339, !917}
!2339 = !DILocation(line: 943, column: 3, scope: !2253)
!2340 = !DILocation(line: 945, column: 3, scope: !2184)
!2341 = !DILocation(line: 946, column: 7, scope: !2184)
!2342 = !DILocation(line: 947, column: 2, scope: !2184)
!2343 = !DILocation(line: 948, column: 9, scope: !2159)
!2344 = !DILocation(line: 948, column: 2, scope: !2159)
!2345 = distinct !DISubprogram(name: "redis_set_realm_option_one", scope: !2, file: !2, line: 951, type: !346, scopeLine: 951, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !56, retainedNodes: !696)
!2346 = !DILocalVariable(name: "realm", arg: 1, scope: !2345, file: !2, line: 951, type: !318)
!2347 = !DILocation(line: 951, column: 48, scope: !2345)
!2348 = !DILocalVariable(name: "value", arg: 2, scope: !2345, file: !2, line: 951, type: !102)
!2349 = !DILocation(line: 951, column: 69, scope: !2345)
!2350 = !DILocalVariable(name: "opt", arg: 3, scope: !2345, file: !2, line: 951, type: !84)
!2351 = !DILocation(line: 951, column: 88, scope: !2345)
!2352 = !DILocalVariable(name: "ret", scope: !2345, file: !2, line: 952, type: !74)
!2353 = !DILocation(line: 952, column: 7, scope: !2345)
!2354 = !DILocalVariable(name: "rc", scope: !2345, file: !2, line: 953, type: !117)
!2355 = !DILocation(line: 953, column: 16, scope: !2345)
!2356 = !DILocation(line: 953, column: 21, scope: !2345)
!2357 = !DILocation(line: 954, column: 5, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2345, file: !2, line: 954, column: 5)
!2359 = !DILocation(line: 954, column: 5, scope: !2345)
!2360 = !DILocalVariable(name: "s", scope: !2361, file: !2, line: 955, type: !1433)
!2361 = distinct !DILexicalBlock(scope: !2358, file: !2, line: 954, column: 9)
!2362 = !DILocation(line: 955, column: 8, scope: !2361)
!2363 = !DILocation(line: 957, column: 6, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2361, file: !2, line: 957, column: 6)
!2365 = !DILocation(line: 957, column: 11, scope: !2364)
!2366 = !DILocation(line: 957, column: 6, scope: !2361)
!2367 = !DILocation(line: 958, column: 13, scope: !2364)
!2368 = !DILocation(line: 958, column: 60, scope: !2364)
!2369 = !DILocation(line: 958, column: 67, scope: !2364)
!2370 = !DILocation(line: 958, column: 87, scope: !2364)
!2371 = !DILocation(line: 958, column: 4, scope: !2364)
!2372 = !DILocation(line: 960, column: 13, scope: !2364)
!2373 = !DILocation(line: 960, column: 56, scope: !2364)
!2374 = !DILocation(line: 960, column: 63, scope: !2364)
!2375 = !DILocation(line: 960, column: 4, scope: !2364)
!2376 = !DILocation(line: 962, column: 35, scope: !2361)
!2377 = !DILocation(line: 962, column: 39, scope: !2361)
!2378 = !DILocation(line: 962, column: 22, scope: !2361)
!2379 = !DILocation(line: 962, column: 3, scope: !2361)
!2380 = !DILocation(line: 963, column: 35, scope: !2361)
!2381 = !DILocation(line: 963, column: 22, scope: !2361)
!2382 = !DILocation(line: 963, column: 3, scope: !2361)
!2383 = !DILocation(line: 964, column: 9, scope: !2361)
!2384 = !DILocation(line: 965, column: 2, scope: !2361)
!2385 = !DILocation(line: 966, column: 10, scope: !2345)
!2386 = !DILocation(line: 966, column: 3, scope: !2345)
!2387 = distinct !DISubprogram(name: "redis_list_realm_options", scope: !2, file: !2, line: 969, type: !341, scopeLine: 969, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !56, retainedNodes: !696)
!2388 = !DILocalVariable(name: "realm", arg: 1, scope: !2387, file: !2, line: 969, type: !318)
!2389 = !DILocation(line: 969, column: 46, scope: !2387)
!2390 = !DILocalVariable(name: "ret", scope: !2387, file: !2, line: 970, type: !74)
!2391 = !DILocation(line: 970, column: 7, scope: !2387)
!2392 = !DILocation(line: 971, column: 33, scope: !2387)
!2393 = !DILocalVariable(name: "rc", scope: !2387, file: !2, line: 972, type: !117)
!2394 = !DILocation(line: 972, column: 16, scope: !2387)
!2395 = !DILocation(line: 972, column: 21, scope: !2387)
!2396 = !DILocation(line: 973, column: 5, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2387, file: !2, line: 973, column: 5)
!2398 = !DILocation(line: 973, column: 5, scope: !2387)
!2399 = !DILocalVariable(name: "keys", scope: !2400, file: !2, line: 974, type: !311)
!2400 = distinct !DILexicalBlock(scope: !2397, file: !2, line: 973, column: 9)
!2401 = !DILocation(line: 974, column: 18, scope: !2400)
!2402 = !DILocalVariable(name: "isz", scope: !2400, file: !2, line: 975, type: !100)
!2403 = !DILocation(line: 975, column: 10, scope: !2400)
!2404 = !DILocation(line: 977, column: 3, scope: !2400)
!2405 = !DILocalVariable(name: "reply", scope: !2400, file: !2, line: 979, type: !92)
!2406 = !DILocation(line: 979, column: 15, scope: !2400)
!2407 = !DILocation(line: 982, column: 7, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2409, file: !2, line: 982, column: 7)
!2409 = distinct !DILexicalBlock(scope: !2400, file: !2, line: 981, column: 3)
!2410 = !DILocation(line: 982, column: 13, scope: !2408)
!2411 = !DILocation(line: 982, column: 16, scope: !2408)
!2412 = !DILocation(line: 982, column: 7, scope: !2409)
!2413 = !DILocation(line: 983, column: 39, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2408, file: !2, line: 982, column: 26)
!2415 = !DILocation(line: 983, column: 66, scope: !2414)
!2416 = !DILocation(line: 983, column: 26, scope: !2414)
!2417 = !DILocation(line: 983, column: 11, scope: !2414)
!2418 = !DILocation(line: 984, column: 4, scope: !2414)
!2419 = !DILocation(line: 985, column: 39, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2408, file: !2, line: 984, column: 11)
!2421 = !DILocation(line: 985, column: 26, scope: !2420)
!2422 = !DILocation(line: 985, column: 11, scope: !2420)
!2423 = !DILocation(line: 987, column: 7, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2409, file: !2, line: 987, column: 7)
!2425 = !DILocation(line: 987, column: 7, scope: !2409)
!2426 = !DILocation(line: 989, column: 9, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2428, file: !2, line: 989, column: 9)
!2428 = distinct !DILexicalBlock(scope: !2424, file: !2, line: 987, column: 14)
!2429 = !DILocation(line: 989, column: 16, scope: !2427)
!2430 = !DILocation(line: 989, column: 21, scope: !2427)
!2431 = !DILocation(line: 989, column: 9, scope: !2428)
!2432 = !DILocation(line: 990, column: 57, scope: !2427)
!2433 = !DILocation(line: 990, column: 64, scope: !2427)
!2434 = !DILocation(line: 990, column: 6, scope: !2427)
!2435 = !DILocation(line: 991, column: 14, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2427, file: !2, line: 991, column: 14)
!2437 = !DILocation(line: 991, column: 21, scope: !2436)
!2438 = !DILocation(line: 991, column: 26, scope: !2436)
!2439 = !DILocation(line: 991, column: 14, scope: !2427)
!2440 = !DILocation(line: 992, column: 10, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2442, file: !2, line: 992, column: 10)
!2442 = distinct !DILexicalBlock(scope: !2436, file: !2, line: 991, column: 48)
!2443 = !DILocation(line: 992, column: 17, scope: !2441)
!2444 = !DILocation(line: 992, column: 22, scope: !2441)
!2445 = !DILocation(line: 992, column: 10, scope: !2442)
!2446 = !DILocation(line: 993, column: 68, scope: !2441)
!2447 = !DILocation(line: 993, column: 75, scope: !2441)
!2448 = !DILocation(line: 993, column: 7, scope: !2441)
!2449 = !DILocation(line: 994, column: 5, scope: !2442)
!2450 = !DILocalVariable(name: "i", scope: !2451, file: !2, line: 995, type: !100)
!2451 = distinct !DILexicalBlock(scope: !2436, file: !2, line: 994, column: 12)
!2452 = !DILocation(line: 995, column: 13, scope: !2451)
!2453 = !DILocation(line: 996, column: 13, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2451, file: !2, line: 996, column: 6)
!2455 = !DILocation(line: 996, column: 11, scope: !2454)
!2456 = !DILocation(line: 996, column: 18, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2454, file: !2, line: 996, column: 6)
!2458 = !DILocation(line: 996, column: 22, scope: !2457)
!2459 = !DILocation(line: 996, column: 29, scope: !2457)
!2460 = !DILocation(line: 996, column: 20, scope: !2457)
!2461 = !DILocation(line: 996, column: 6, scope: !2454)
!2462 = !DILocation(line: 997, column: 17, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2464, file: !2, line: 997, column: 10)
!2464 = distinct !DILexicalBlock(scope: !2457, file: !2, line: 996, column: 44)
!2465 = !DILocation(line: 997, column: 24, scope: !2463)
!2466 = !DILocation(line: 997, column: 32, scope: !2463)
!2467 = !DILocation(line: 997, column: 36, scope: !2463)
!2468 = !DILocation(line: 997, column: 10, scope: !2463)
!2469 = !DILocation(line: 997, column: 51, scope: !2463)
!2470 = !DILocation(line: 998, column: 15, scope: !2463)
!2471 = !DILocation(line: 998, column: 22, scope: !2463)
!2472 = !DILocation(line: 998, column: 30, scope: !2463)
!2473 = !DILocation(line: 998, column: 34, scope: !2463)
!2474 = !DILocation(line: 998, column: 8, scope: !2463)
!2475 = !DILocation(line: 998, column: 53, scope: !2463)
!2476 = !DILocation(line: 999, column: 15, scope: !2463)
!2477 = !DILocation(line: 999, column: 22, scope: !2463)
!2478 = !DILocation(line: 999, column: 30, scope: !2463)
!2479 = !DILocation(line: 999, column: 34, scope: !2463)
!2480 = !DILocation(line: 999, column: 8, scope: !2463)
!2481 = !DILocation(line: 997, column: 10, scope: !2464)
!2482 = !DILocation(line: 1000, column: 34, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2463, file: !2, line: 999, column: 54)
!2484 = !DILocation(line: 1000, column: 41, scope: !2483)
!2485 = !DILocation(line: 1000, column: 49, scope: !2483)
!2486 = !DILocation(line: 1000, column: 53, scope: !2483)
!2487 = !DILocation(line: 1000, column: 8, scope: !2483)
!2488 = !DILocation(line: 1001, column: 7, scope: !2483)
!2489 = !DILocation(line: 1002, column: 6, scope: !2464)
!2490 = !DILocation(line: 996, column: 39, scope: !2457)
!2491 = !DILocation(line: 996, column: 6, scope: !2457)
!2492 = distinct !{!2492, !2461, !2493, !917}
!2493 = !DILocation(line: 1002, column: 6, scope: !2454)
!2494 = !DILocation(line: 1004, column: 24, scope: !2428)
!2495 = !DILocation(line: 1004, column: 5, scope: !2428)
!2496 = !DILocation(line: 1005, column: 4, scope: !2428)
!2497 = !DILocalVariable(name: "offset", scope: !2400, file: !2, line: 1008, type: !100)
!2498 = !DILocation(line: 1008, column: 10, scope: !2400)
!2499 = !DILocation(line: 1010, column: 10, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2400, file: !2, line: 1010, column: 3)
!2501 = !DILocation(line: 1010, column: 7, scope: !2500)
!2502 = !DILocation(line: 1010, column: 13, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2500, file: !2, line: 1010, column: 3)
!2504 = !DILocation(line: 1010, column: 22, scope: !2503)
!2505 = !DILocation(line: 1010, column: 16, scope: !2503)
!2506 = !DILocation(line: 1010, column: 3, scope: !2500)
!2507 = !DILocalVariable(name: "o", scope: !2508, file: !2, line: 1011, type: !86)
!2508 = distinct !DILexicalBlock(scope: !2503, file: !2, line: 1010, column: 32)
!2509 = !DILocation(line: 1011, column: 10, scope: !2508)
!2510 = !DILocation(line: 1011, column: 19, scope: !2508)
!2511 = !DILocation(line: 1011, column: 27, scope: !2508)
!2512 = !DILocation(line: 1011, column: 14, scope: !2508)
!2513 = !DILocation(line: 1013, column: 38, scope: !2508)
!2514 = !DILocation(line: 1013, column: 51, scope: !2508)
!2515 = !DILocation(line: 1013, column: 25, scope: !2508)
!2516 = !DILocation(line: 1013, column: 10, scope: !2508)
!2517 = !DILocation(line: 1014, column: 7, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2508, file: !2, line: 1014, column: 7)
!2519 = !DILocation(line: 1014, column: 7, scope: !2508)
!2520 = !DILocation(line: 1016, column: 9, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2522, file: !2, line: 1016, column: 9)
!2522 = distinct !DILexicalBlock(scope: !2518, file: !2, line: 1014, column: 14)
!2523 = !DILocation(line: 1016, column: 16, scope: !2521)
!2524 = !DILocation(line: 1016, column: 21, scope: !2521)
!2525 = !DILocation(line: 1016, column: 9, scope: !2522)
!2526 = !DILocation(line: 1017, column: 57, scope: !2521)
!2527 = !DILocation(line: 1017, column: 64, scope: !2521)
!2528 = !DILocation(line: 1017, column: 6, scope: !2521)
!2529 = !DILocation(line: 1018, column: 14, scope: !2530)
!2530 = distinct !DILexicalBlock(scope: !2521, file: !2, line: 1018, column: 14)
!2531 = !DILocation(line: 1018, column: 21, scope: !2530)
!2532 = !DILocation(line: 1018, column: 26, scope: !2530)
!2533 = !DILocation(line: 1018, column: 14, scope: !2521)
!2534 = !DILocation(line: 1019, column: 10, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2536, file: !2, line: 1019, column: 10)
!2536 = distinct !DILexicalBlock(scope: !2530, file: !2, line: 1018, column: 49)
!2537 = !DILocation(line: 1019, column: 17, scope: !2535)
!2538 = !DILocation(line: 1019, column: 22, scope: !2535)
!2539 = !DILocation(line: 1019, column: 10, scope: !2536)
!2540 = !DILocation(line: 1020, column: 68, scope: !2535)
!2541 = !DILocation(line: 1020, column: 75, scope: !2535)
!2542 = !DILocation(line: 1020, column: 7, scope: !2535)
!2543 = !DILocation(line: 1021, column: 5, scope: !2536)
!2544 = !DILocation(line: 1022, column: 25, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2530, file: !2, line: 1021, column: 12)
!2546 = !DILocation(line: 1022, column: 27, scope: !2545)
!2547 = !DILocation(line: 1022, column: 26, scope: !2545)
!2548 = !DILocation(line: 1022, column: 34, scope: !2545)
!2549 = !DILocation(line: 1022, column: 41, scope: !2545)
!2550 = !DILocation(line: 1022, column: 6, scope: !2545)
!2551 = !DILocation(line: 1024, column: 24, scope: !2522)
!2552 = !DILocation(line: 1024, column: 5, scope: !2522)
!2553 = !DILocation(line: 1025, column: 4, scope: !2522)
!2554 = !DILocation(line: 1026, column: 3, scope: !2508)
!2555 = !DILocation(line: 1010, column: 25, scope: !2503)
!2556 = !DILocation(line: 1010, column: 3, scope: !2503)
!2557 = distinct !{!2557, !2506, !2558, !917}
!2558 = !DILocation(line: 1026, column: 3, scope: !2500)
!2559 = !DILocation(line: 1028, column: 3, scope: !2400)
!2560 = !DILocation(line: 1029, column: 9, scope: !2400)
!2561 = !DILocation(line: 1030, column: 2, scope: !2400)
!2562 = !DILocation(line: 1031, column: 10, scope: !2387)
!2563 = !DILocation(line: 1031, column: 3, scope: !2387)
!2564 = distinct !DISubprogram(name: "redis_auth_ping", scope: !2, file: !2, line: 1034, type: !182, scopeLine: 1034, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !56, retainedNodes: !696)
!2565 = !DILocalVariable(name: "rch", arg: 1, scope: !2564, file: !2, line: 1034, type: !83)
!2566 = !DILocation(line: 1034, column: 36, scope: !2564)
!2567 = !DILocalVariable(name: "rc", scope: !2564, file: !2, line: 1035, type: !117)
!2568 = !DILocation(line: 1035, column: 16, scope: !2564)
!2569 = !DILocation(line: 1035, column: 21, scope: !2564)
!2570 = !DILocation(line: 1036, column: 5, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2564, file: !2, line: 1036, column: 5)
!2572 = !DILocation(line: 1036, column: 5, scope: !2564)
!2573 = !DILocation(line: 1037, column: 35, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2571, file: !2, line: 1036, column: 9)
!2575 = !DILocation(line: 1037, column: 22, scope: !2574)
!2576 = !DILocation(line: 1037, column: 3, scope: !2574)
!2577 = !DILocation(line: 1038, column: 2, scope: !2574)
!2578 = !DILocation(line: 1039, column: 5, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2564, file: !2, line: 1039, column: 5)
!2580 = !DILocation(line: 1039, column: 5, scope: !2564)
!2581 = !DILocation(line: 1040, column: 47, scope: !2579)
!2582 = !DILocation(line: 1040, column: 3, scope: !2579)
!2583 = !DILocation(line: 1041, column: 1, scope: !2564)
!2584 = distinct !DISubprogram(name: "redis_get_ip_list", scope: !2, file: !2, line: 1045, type: !352, scopeLine: 1046, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !56, retainedNodes: !696)
!2585 = !DILocalVariable(name: "kind", arg: 1, scope: !2584, file: !2, line: 1045, type: !84)
!2586 = !DILocation(line: 1045, column: 42, scope: !2584)
!2587 = !DILocalVariable(name: "list", arg: 2, scope: !2584, file: !2, line: 1045, type: !354)
!2588 = !DILocation(line: 1045, column: 66, scope: !2584)
!2589 = !DILocalVariable(name: "ret", scope: !2584, file: !2, line: 1047, type: !74)
!2590 = !DILocation(line: 1047, column: 6, scope: !2584)
!2591 = !DILocalVariable(name: "rc", scope: !2584, file: !2, line: 1048, type: !117)
!2592 = !DILocation(line: 1048, column: 16, scope: !2584)
!2593 = !DILocation(line: 1048, column: 21, scope: !2584)
!2594 = !DILocation(line: 1049, column: 6, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2584, file: !2, line: 1049, column: 6)
!2596 = !DILocation(line: 1049, column: 6, scope: !2584)
!2597 = !DILocalVariable(name: "statement", scope: !2598, file: !2, line: 1050, type: !1433)
!2598 = distinct !DILexicalBlock(scope: !2595, file: !2, line: 1049, column: 10)
!2599 = !DILocation(line: 1050, column: 8, scope: !2598)
!2600 = !DILocalVariable(name: "header", scope: !2598, file: !2, line: 1051, type: !84)
!2601 = !DILocation(line: 1051, column: 15, scope: !2598)
!2602 = !DILocalVariable(name: "header_len", scope: !2598, file: !2, line: 1052, type: !100)
!2603 = !DILocation(line: 1052, column: 10, scope: !2598)
!2604 = !DILocation(line: 1052, column: 30, scope: !2598)
!2605 = !DILocation(line: 1052, column: 23, scope: !2598)
!2606 = !DILocation(line: 1053, column: 12, scope: !2598)
!2607 = !DILocation(line: 1053, column: 65, scope: !2598)
!2608 = !DILocation(line: 1053, column: 72, scope: !2598)
!2609 = !DILocation(line: 1053, column: 3, scope: !2598)
!2610 = !DILocalVariable(name: "reply", scope: !2598, file: !2, line: 1054, type: !92)
!2611 = !DILocation(line: 1054, column: 15, scope: !2598)
!2612 = !DILocation(line: 1054, column: 50, scope: !2598)
!2613 = !DILocation(line: 1054, column: 54, scope: !2598)
!2614 = !DILocation(line: 1054, column: 37, scope: !2598)
!2615 = !DILocation(line: 1055, column: 7, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !2598, file: !2, line: 1055, column: 7)
!2617 = !DILocation(line: 1055, column: 7, scope: !2598)
!2618 = !DILocalVariable(name: "keys", scope: !2619, file: !2, line: 1056, type: !311)
!2619 = distinct !DILexicalBlock(scope: !2616, file: !2, line: 1055, column: 14)
!2620 = !DILocation(line: 1056, column: 19, scope: !2619)
!2621 = !DILocalVariable(name: "isz", scope: !2619, file: !2, line: 1057, type: !100)
!2622 = !DILocation(line: 1057, column: 11, scope: !2619)
!2623 = !DILocalVariable(name: "s", scope: !2619, file: !2, line: 1058, type: !365)
!2624 = !DILocation(line: 1058, column: 9, scope: !2619)
!2625 = !DILocation(line: 1060, column: 4, scope: !2619)
!2626 = !DILocation(line: 1062, column: 8, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2619, file: !2, line: 1062, column: 8)
!2628 = !DILocation(line: 1062, column: 15, scope: !2627)
!2629 = !DILocation(line: 1062, column: 20, scope: !2627)
!2630 = !DILocation(line: 1062, column: 8, scope: !2619)
!2631 = !DILocation(line: 1063, column: 56, scope: !2627)
!2632 = !DILocation(line: 1063, column: 63, scope: !2627)
!2633 = !DILocation(line: 1063, column: 5, scope: !2627)
!2634 = !DILocation(line: 1064, column: 13, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2627, file: !2, line: 1064, column: 13)
!2636 = !DILocation(line: 1064, column: 20, scope: !2635)
!2637 = !DILocation(line: 1064, column: 25, scope: !2635)
!2638 = !DILocation(line: 1064, column: 13, scope: !2627)
!2639 = !DILocation(line: 1065, column: 9, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2641, file: !2, line: 1065, column: 9)
!2641 = distinct !DILexicalBlock(scope: !2635, file: !2, line: 1064, column: 47)
!2642 = !DILocation(line: 1065, column: 16, scope: !2640)
!2643 = !DILocation(line: 1065, column: 21, scope: !2640)
!2644 = !DILocation(line: 1065, column: 9, scope: !2641)
!2645 = !DILocation(line: 1066, column: 67, scope: !2640)
!2646 = !DILocation(line: 1066, column: 74, scope: !2640)
!2647 = !DILocation(line: 1066, column: 6, scope: !2640)
!2648 = !DILocation(line: 1067, column: 4, scope: !2641)
!2649 = !DILocalVariable(name: "i", scope: !2650, file: !2, line: 1068, type: !100)
!2650 = distinct !DILexicalBlock(scope: !2635, file: !2, line: 1067, column: 11)
!2651 = !DILocation(line: 1068, column: 12, scope: !2650)
!2652 = !DILocation(line: 1069, column: 12, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2650, file: !2, line: 1069, column: 5)
!2654 = !DILocation(line: 1069, column: 10, scope: !2653)
!2655 = !DILocation(line: 1069, column: 17, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2653, file: !2, line: 1069, column: 5)
!2657 = !DILocation(line: 1069, column: 21, scope: !2656)
!2658 = !DILocation(line: 1069, column: 28, scope: !2656)
!2659 = !DILocation(line: 1069, column: 19, scope: !2656)
!2660 = !DILocation(line: 1069, column: 5, scope: !2653)
!2661 = !DILocation(line: 1070, column: 33, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2656, file: !2, line: 1069, column: 43)
!2663 = !DILocation(line: 1070, column: 40, scope: !2662)
!2664 = !DILocation(line: 1070, column: 48, scope: !2662)
!2665 = !DILocation(line: 1070, column: 52, scope: !2662)
!2666 = !DILocation(line: 1070, column: 6, scope: !2662)
!2667 = !DILocation(line: 1071, column: 5, scope: !2662)
!2668 = !DILocation(line: 1069, column: 38, scope: !2656)
!2669 = !DILocation(line: 1069, column: 5, scope: !2656)
!2670 = distinct !{!2670, !2660, !2671, !917}
!2671 = !DILocation(line: 1071, column: 5, scope: !2653)
!2672 = !DILocation(line: 1074, column: 13, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2619, file: !2, line: 1074, column: 4)
!2674 = !DILocation(line: 1074, column: 9, scope: !2673)
!2675 = !DILocation(line: 1074, column: 18, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2673, file: !2, line: 1074, column: 4)
!2677 = !DILocation(line: 1074, column: 29, scope: !2676)
!2678 = !DILocation(line: 1074, column: 22, scope: !2676)
!2679 = !DILocation(line: 1074, column: 4, scope: !2673)
!2680 = !DILocalVariable(name: "realm", scope: !2681, file: !2, line: 1076, type: !86)
!2681 = distinct !DILexicalBlock(scope: !2676, file: !2, line: 1074, column: 40)
!2682 = !DILocation(line: 1076, column: 11, scope: !2681)
!2683 = !DILocation(line: 1078, column: 14, scope: !2681)
!2684 = !DILocation(line: 1078, column: 48, scope: !2681)
!2685 = !DILocation(line: 1078, column: 56, scope: !2681)
!2686 = !DILocation(line: 1078, column: 43, scope: !2681)
!2687 = !DILocation(line: 1078, column: 5, scope: !2681)
!2688 = !DILocalVariable(name: "rget", scope: !2681, file: !2, line: 1080, type: !92)
!2689 = !DILocation(line: 1080, column: 17, scope: !2681)
!2690 = !DILocation(line: 1080, column: 52, scope: !2681)
!2691 = !DILocation(line: 1080, column: 56, scope: !2681)
!2692 = !DILocation(line: 1080, column: 39, scope: !2681)
!2693 = !DILocalVariable(name: "ptr", scope: !2681, file: !2, line: 1082, type: !86)
!2694 = !DILocation(line: 1082, column: 11, scope: !2681)
!2695 = !DILocation(line: 1082, column: 30, scope: !2681)
!2696 = !DILocation(line: 1082, column: 38, scope: !2681)
!2697 = !DILocation(line: 1082, column: 25, scope: !2681)
!2698 = !DILocation(line: 1082, column: 44, scope: !2681)
!2699 = !DILocation(line: 1082, column: 43, scope: !2681)
!2700 = !DILocalVariable(name: "sep", scope: !2681, file: !2, line: 1083, type: !86)
!2701 = !DILocation(line: 1083, column: 11, scope: !2681)
!2702 = !DILocation(line: 1083, column: 24, scope: !2681)
!2703 = !DILocation(line: 1083, column: 17, scope: !2681)
!2704 = !DILocation(line: 1084, column: 9, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2681, file: !2, line: 1084, column: 9)
!2706 = !DILocation(line: 1084, column: 9, scope: !2681)
!2707 = !DILocation(line: 1085, column: 7, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2705, file: !2, line: 1084, column: 14)
!2709 = !DILocation(line: 1085, column: 11, scope: !2708)
!2710 = !DILocation(line: 1086, column: 14, scope: !2708)
!2711 = !DILocation(line: 1086, column: 12, scope: !2708)
!2712 = !DILocation(line: 1087, column: 5, scope: !2708)
!2713 = !DILocation(line: 1089, column: 9, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2681, file: !2, line: 1089, column: 9)
!2715 = !DILocation(line: 1089, column: 9, scope: !2681)
!2716 = !DILocation(line: 1090, column: 10, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2718, file: !2, line: 1090, column: 10)
!2718 = distinct !DILexicalBlock(scope: !2714, file: !2, line: 1089, column: 15)
!2719 = !DILocation(line: 1090, column: 16, scope: !2717)
!2720 = !DILocation(line: 1090, column: 21, scope: !2717)
!2721 = !DILocation(line: 1090, column: 10, scope: !2718)
!2722 = !DILocation(line: 1091, column: 58, scope: !2723)
!2723 = distinct !DILexicalBlock(scope: !2717, file: !2, line: 1090, column: 43)
!2724 = !DILocation(line: 1091, column: 64, scope: !2723)
!2725 = !DILocation(line: 1091, column: 7, scope: !2723)
!2726 = !DILocation(line: 1092, column: 6, scope: !2723)
!2727 = !DILocation(line: 1092, column: 17, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2717, file: !2, line: 1092, column: 17)
!2729 = !DILocation(line: 1092, column: 23, scope: !2728)
!2730 = !DILocation(line: 1092, column: 28, scope: !2728)
!2731 = !DILocation(line: 1092, column: 17, scope: !2717)
!2732 = !DILocation(line: 1093, column: 25, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2728, file: !2, line: 1092, column: 51)
!2734 = !DILocation(line: 1093, column: 31, scope: !2733)
!2735 = !DILocation(line: 1093, column: 36, scope: !2733)
!2736 = !DILocation(line: 1093, column: 43, scope: !2733)
!2737 = !DILocation(line: 1093, column: 7, scope: !2733)
!2738 = !DILocation(line: 1094, column: 6, scope: !2733)
!2739 = !DILocation(line: 1094, column: 17, scope: !2740)
!2740 = distinct !DILexicalBlock(scope: !2728, file: !2, line: 1094, column: 17)
!2741 = !DILocation(line: 1094, column: 23, scope: !2740)
!2742 = !DILocation(line: 1094, column: 28, scope: !2740)
!2743 = !DILocation(line: 1094, column: 17, scope: !2728)
!2744 = !DILocation(line: 1095, column: 11, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2746, file: !2, line: 1095, column: 11)
!2746 = distinct !DILexicalBlock(scope: !2740, file: !2, line: 1094, column: 50)
!2747 = !DILocation(line: 1095, column: 17, scope: !2745)
!2748 = !DILocation(line: 1095, column: 22, scope: !2745)
!2749 = !DILocation(line: 1095, column: 11, scope: !2746)
!2750 = !DILocation(line: 1096, column: 69, scope: !2745)
!2751 = !DILocation(line: 1096, column: 75, scope: !2745)
!2752 = !DILocation(line: 1096, column: 8, scope: !2745)
!2753 = !DILocation(line: 1097, column: 6, scope: !2746)
!2754 = !DILocalVariable(name: "i", scope: !2755, file: !2, line: 1098, type: !100)
!2755 = distinct !DILexicalBlock(scope: !2740, file: !2, line: 1097, column: 13)
!2756 = !DILocation(line: 1098, column: 14, scope: !2755)
!2757 = !DILocation(line: 1099, column: 14, scope: !2758)
!2758 = distinct !DILexicalBlock(scope: !2755, file: !2, line: 1099, column: 7)
!2759 = !DILocation(line: 1099, column: 12, scope: !2758)
!2760 = !DILocation(line: 1099, column: 19, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !2758, file: !2, line: 1099, column: 7)
!2762 = !DILocation(line: 1099, column: 23, scope: !2761)
!2763 = !DILocation(line: 1099, column: 29, scope: !2761)
!2764 = !DILocation(line: 1099, column: 21, scope: !2761)
!2765 = !DILocation(line: 1099, column: 7, scope: !2758)
!2766 = !DILocation(line: 1100, column: 26, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2761, file: !2, line: 1099, column: 44)
!2768 = !DILocation(line: 1100, column: 32, scope: !2767)
!2769 = !DILocation(line: 1100, column: 40, scope: !2767)
!2770 = !DILocation(line: 1100, column: 44, scope: !2767)
!2771 = !DILocation(line: 1100, column: 49, scope: !2767)
!2772 = !DILocation(line: 1100, column: 56, scope: !2767)
!2773 = !DILocation(line: 1100, column: 8, scope: !2767)
!2774 = !DILocation(line: 1101, column: 7, scope: !2767)
!2775 = !DILocation(line: 1099, column: 39, scope: !2761)
!2776 = !DILocation(line: 1099, column: 7, scope: !2761)
!2777 = distinct !{!2777, !2765, !2778, !917}
!2778 = !DILocation(line: 1101, column: 7, scope: !2758)
!2779 = !DILocation(line: 1103, column: 25, scope: !2718)
!2780 = !DILocation(line: 1103, column: 6, scope: !2718)
!2781 = !DILocation(line: 1104, column: 5, scope: !2718)
!2782 = !DILocation(line: 1106, column: 8, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2681, file: !2, line: 1106, column: 8)
!2784 = !DILocation(line: 1106, column: 8, scope: !2681)
!2785 = !DILocation(line: 1107, column: 7, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2783, file: !2, line: 1106, column: 13)
!2787 = !DILocation(line: 1107, column: 10, scope: !2786)
!2788 = !DILocation(line: 1108, column: 5, scope: !2786)
!2789 = !DILocation(line: 1109, column: 4, scope: !2681)
!2790 = !DILocation(line: 1074, column: 33, scope: !2676)
!2791 = !DILocation(line: 1074, column: 4, scope: !2676)
!2792 = distinct !{!2792, !2679, !2793, !917}
!2793 = !DILocation(line: 1109, column: 4, scope: !2673)
!2794 = !DILocation(line: 1111, column: 4, scope: !2619)
!2795 = !DILocation(line: 1113, column: 23, scope: !2619)
!2796 = !DILocation(line: 1113, column: 4, scope: !2619)
!2797 = !DILocation(line: 1114, column: 8, scope: !2619)
!2798 = !DILocation(line: 1115, column: 3, scope: !2619)
!2799 = !DILocation(line: 1116, column: 2, scope: !2598)
!2800 = !DILocation(line: 1117, column: 9, scope: !2584)
!2801 = !DILocation(line: 1117, column: 2, scope: !2584)
!2802 = distinct !DISubprogram(name: "redis_set_permission_ip", scope: !2, file: !2, line: 823, type: !432, scopeLine: 824, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !56, retainedNodes: !696)
!2803 = !DILocalVariable(name: "kind", arg: 1, scope: !2802, file: !2, line: 823, type: !84)
!2804 = !DILocation(line: 823, column: 48, scope: !2802)
!2805 = !DILocalVariable(name: "realm", arg: 2, scope: !2802, file: !2, line: 823, type: !318)
!2806 = !DILocation(line: 823, column: 63, scope: !2802)
!2807 = !DILocalVariable(name: "ip", arg: 3, scope: !2802, file: !2, line: 823, type: !84)
!2808 = !DILocation(line: 823, column: 82, scope: !2802)
!2809 = !DILocalVariable(name: "del", arg: 4, scope: !2802, file: !2, line: 823, type: !74)
!2810 = !DILocation(line: 823, column: 90, scope: !2802)
!2811 = !DILocalVariable(name: "ret", scope: !2802, file: !2, line: 825, type: !74)
!2812 = !DILocation(line: 825, column: 6, scope: !2802)
!2813 = !DILocalVariable(name: "realm0", scope: !2802, file: !2, line: 827, type: !1592)
!2814 = !DILocation(line: 827, column: 10, scope: !2802)
!2815 = !DILocation(line: 828, column: 6, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2802, file: !2, line: 828, column: 5)
!2817 = !DILocation(line: 828, column: 5, scope: !2802)
!2818 = !DILocation(line: 828, column: 19, scope: !2816)
!2819 = !DILocation(line: 828, column: 18, scope: !2816)
!2820 = !DILocation(line: 828, column: 13, scope: !2816)
!2821 = !DILocation(line: 830, column: 33, scope: !2802)
!2822 = !DILocalVariable(name: "rc", scope: !2802, file: !2, line: 832, type: !117)
!2823 = !DILocation(line: 832, column: 16, scope: !2802)
!2824 = !DILocation(line: 832, column: 21, scope: !2802)
!2825 = !DILocation(line: 833, column: 6, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2802, file: !2, line: 833, column: 6)
!2827 = !DILocation(line: 833, column: 6, scope: !2802)
!2828 = !DILocalVariable(name: "s", scope: !2829, file: !2, line: 834, type: !1433)
!2829 = distinct !DILexicalBlock(scope: !2826, file: !2, line: 833, column: 10)
!2830 = !DILocation(line: 834, column: 8, scope: !2829)
!2831 = !DILocation(line: 836, column: 6, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2829, file: !2, line: 836, column: 6)
!2833 = !DILocation(line: 836, column: 6, scope: !2829)
!2834 = !DILocation(line: 837, column: 13, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2832, file: !2, line: 836, column: 11)
!2836 = !DILocation(line: 837, column: 71, scope: !2835)
!2837 = !DILocation(line: 837, column: 78, scope: !2835)
!2838 = !DILocation(line: 837, column: 84, scope: !2835)
!2839 = !DILocation(line: 837, column: 4, scope: !2835)
!2840 = !DILocation(line: 838, column: 3, scope: !2835)
!2841 = !DILocation(line: 839, column: 13, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2832, file: !2, line: 838, column: 10)
!2843 = !DILocation(line: 839, column: 71, scope: !2842)
!2844 = !DILocation(line: 839, column: 78, scope: !2842)
!2845 = !DILocation(line: 839, column: 84, scope: !2842)
!2846 = !DILocation(line: 839, column: 4, scope: !2842)
!2847 = !DILocation(line: 842, column: 35, scope: !2829)
!2848 = !DILocation(line: 842, column: 39, scope: !2829)
!2849 = !DILocation(line: 842, column: 22, scope: !2829)
!2850 = !DILocation(line: 842, column: 3, scope: !2829)
!2851 = !DILocation(line: 843, column: 35, scope: !2829)
!2852 = !DILocation(line: 843, column: 22, scope: !2829)
!2853 = !DILocation(line: 843, column: 3, scope: !2829)
!2854 = !DILocation(line: 844, column: 7, scope: !2829)
!2855 = !DILocation(line: 845, column: 2, scope: !2829)
!2856 = !DILocation(line: 846, column: 9, scope: !2802)
!2857 = !DILocation(line: 846, column: 2, scope: !2802)
!2858 = distinct !DISubprogram(name: "redis_reread_realms", scope: !2, file: !2, line: 1120, type: !436, scopeLine: 1120, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !56, retainedNodes: !696)
!2859 = !DILocalVariable(name: "realms_list", arg: 1, scope: !2858, file: !2, line: 1120, type: !310)
!2860 = !DILocation(line: 1120, column: 50, scope: !2858)
!2861 = !DILocalVariable(name: "rc", scope: !2858, file: !2, line: 1121, type: !117)
!2862 = !DILocation(line: 1121, column: 16, scope: !2858)
!2863 = !DILocation(line: 1121, column: 21, scope: !2858)
!2864 = !DILocation(line: 1122, column: 6, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2858, file: !2, line: 1122, column: 6)
!2866 = !DILocation(line: 1122, column: 6, scope: !2858)
!2867 = !DILocalVariable(name: "reply", scope: !2868, file: !2, line: 1124, type: !92)
!2868 = distinct !DILexicalBlock(scope: !2865, file: !2, line: 1122, column: 10)
!2869 = !DILocation(line: 1124, column: 15, scope: !2868)
!2870 = !DILocation(line: 1124, column: 50, scope: !2868)
!2871 = !DILocation(line: 1124, column: 37, scope: !2868)
!2872 = !DILocation(line: 1125, column: 7, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2868, file: !2, line: 1125, column: 7)
!2874 = !DILocation(line: 1125, column: 7, scope: !2868)
!2875 = !DILocalVariable(name: "o_to_realm_new", scope: !2876, file: !2, line: 1127, type: !2877)
!2876 = distinct !DILexicalBlock(scope: !2873, file: !2, line: 1125, column: 14)
!2877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2878, size: 64)
!2878 = !DIDerivedType(tag: DW_TAG_typedef, name: "ur_string_map", file: !207, line: 227, baseType: !2879)
!2879 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ur_string_map", file: !207, line: 226, flags: DIFlagFwdDecl)
!2880 = !DILocation(line: 1127, column: 19, scope: !2876)
!2881 = !DILocation(line: 1127, column: 36, scope: !2876)
!2882 = !DILocalVariable(name: "keys", scope: !2876, file: !2, line: 1129, type: !311)
!2883 = !DILocation(line: 1129, column: 19, scope: !2876)
!2884 = !DILocation(line: 1131, column: 4, scope: !2876)
!2885 = !DILocalVariable(name: "isz", scope: !2876, file: !2, line: 1133, type: !100)
!2886 = !DILocation(line: 1133, column: 11, scope: !2876)
!2887 = !DILocalVariable(name: "s", scope: !2876, file: !2, line: 1135, type: !1433)
!2888 = !DILocation(line: 1135, column: 9, scope: !2876)
!2889 = !DILocation(line: 1137, column: 8, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2876, file: !2, line: 1137, column: 8)
!2891 = !DILocation(line: 1137, column: 15, scope: !2890)
!2892 = !DILocation(line: 1137, column: 20, scope: !2890)
!2893 = !DILocation(line: 1137, column: 8, scope: !2876)
!2894 = !DILocation(line: 1138, column: 56, scope: !2890)
!2895 = !DILocation(line: 1138, column: 63, scope: !2890)
!2896 = !DILocation(line: 1138, column: 5, scope: !2890)
!2897 = !DILocation(line: 1139, column: 13, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2890, file: !2, line: 1139, column: 13)
!2899 = !DILocation(line: 1139, column: 20, scope: !2898)
!2900 = !DILocation(line: 1139, column: 25, scope: !2898)
!2901 = !DILocation(line: 1139, column: 13, scope: !2890)
!2902 = !DILocation(line: 1140, column: 9, scope: !2903)
!2903 = distinct !DILexicalBlock(scope: !2904, file: !2, line: 1140, column: 9)
!2904 = distinct !DILexicalBlock(scope: !2898, file: !2, line: 1139, column: 47)
!2905 = !DILocation(line: 1140, column: 16, scope: !2903)
!2906 = !DILocation(line: 1140, column: 21, scope: !2903)
!2907 = !DILocation(line: 1140, column: 9, scope: !2904)
!2908 = !DILocation(line: 1141, column: 67, scope: !2903)
!2909 = !DILocation(line: 1141, column: 74, scope: !2903)
!2910 = !DILocation(line: 1141, column: 6, scope: !2903)
!2911 = !DILocation(line: 1142, column: 4, scope: !2904)
!2912 = !DILocalVariable(name: "i", scope: !2913, file: !2, line: 1143, type: !100)
!2913 = distinct !DILexicalBlock(scope: !2898, file: !2, line: 1142, column: 11)
!2914 = !DILocation(line: 1143, column: 12, scope: !2913)
!2915 = !DILocation(line: 1144, column: 12, scope: !2916)
!2916 = distinct !DILexicalBlock(scope: !2913, file: !2, line: 1144, column: 5)
!2917 = !DILocation(line: 1144, column: 10, scope: !2916)
!2918 = !DILocation(line: 1144, column: 17, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2916, file: !2, line: 1144, column: 5)
!2920 = !DILocation(line: 1144, column: 21, scope: !2919)
!2921 = !DILocation(line: 1144, column: 28, scope: !2919)
!2922 = !DILocation(line: 1144, column: 19, scope: !2919)
!2923 = !DILocation(line: 1144, column: 5, scope: !2916)
!2924 = !DILocation(line: 1145, column: 33, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2919, file: !2, line: 1144, column: 43)
!2926 = !DILocation(line: 1145, column: 40, scope: !2925)
!2927 = !DILocation(line: 1145, column: 48, scope: !2925)
!2928 = !DILocation(line: 1145, column: 52, scope: !2925)
!2929 = !DILocation(line: 1145, column: 6, scope: !2925)
!2930 = !DILocation(line: 1146, column: 5, scope: !2925)
!2931 = !DILocation(line: 1144, column: 38, scope: !2919)
!2932 = !DILocation(line: 1144, column: 5, scope: !2919)
!2933 = distinct !{!2933, !2923, !2934, !917}
!2934 = !DILocation(line: 1146, column: 5, scope: !2916)
!2935 = !DILocalVariable(name: "offset", scope: !2876, file: !2, line: 1149, type: !100)
!2936 = !DILocation(line: 1149, column: 11, scope: !2876)
!2937 = !DILocation(line: 1151, column: 13, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2876, file: !2, line: 1151, column: 4)
!2939 = !DILocation(line: 1151, column: 9, scope: !2938)
!2940 = !DILocation(line: 1151, column: 18, scope: !2941)
!2941 = distinct !DILexicalBlock(scope: !2938, file: !2, line: 1151, column: 4)
!2942 = !DILocation(line: 1151, column: 29, scope: !2941)
!2943 = !DILocation(line: 1151, column: 22, scope: !2941)
!2944 = !DILocation(line: 1151, column: 4, scope: !2938)
!2945 = !DILocalVariable(name: "origin", scope: !2946, file: !2, line: 1152, type: !86)
!2946 = distinct !DILexicalBlock(scope: !2941, file: !2, line: 1151, column: 40)
!2947 = !DILocation(line: 1152, column: 11, scope: !2946)
!2948 = !DILocation(line: 1152, column: 25, scope: !2946)
!2949 = !DILocation(line: 1152, column: 33, scope: !2946)
!2950 = !DILocation(line: 1152, column: 20, scope: !2946)
!2951 = !DILocation(line: 1152, column: 40, scope: !2946)
!2952 = !DILocation(line: 1152, column: 38, scope: !2946)
!2953 = !DILocation(line: 1153, column: 14, scope: !2946)
!2954 = !DILocation(line: 1153, column: 43, scope: !2946)
!2955 = !DILocation(line: 1153, column: 51, scope: !2946)
!2956 = !DILocation(line: 1153, column: 38, scope: !2946)
!2957 = !DILocation(line: 1153, column: 5, scope: !2946)
!2958 = !DILocalVariable(name: "rget", scope: !2946, file: !2, line: 1154, type: !92)
!2959 = !DILocation(line: 1154, column: 17, scope: !2946)
!2960 = !DILocation(line: 1154, column: 52, scope: !2946)
!2961 = !DILocation(line: 1154, column: 56, scope: !2946)
!2962 = !DILocation(line: 1154, column: 39, scope: !2946)
!2963 = !DILocation(line: 1155, column: 9, scope: !2964)
!2964 = distinct !DILexicalBlock(scope: !2946, file: !2, line: 1155, column: 9)
!2965 = !DILocation(line: 1155, column: 9, scope: !2946)
!2966 = !DILocation(line: 1156, column: 10, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2968, file: !2, line: 1156, column: 10)
!2968 = distinct !DILexicalBlock(scope: !2964, file: !2, line: 1155, column: 15)
!2969 = !DILocation(line: 1156, column: 16, scope: !2967)
!2970 = !DILocation(line: 1156, column: 21, scope: !2967)
!2971 = !DILocation(line: 1156, column: 10, scope: !2968)
!2972 = !DILocation(line: 1157, column: 58, scope: !2967)
!2973 = !DILocation(line: 1157, column: 64, scope: !2967)
!2974 = !DILocation(line: 1157, column: 7, scope: !2967)
!2975 = !DILocation(line: 1158, column: 15, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !2967, file: !2, line: 1158, column: 15)
!2977 = !DILocation(line: 1158, column: 21, scope: !2976)
!2978 = !DILocation(line: 1158, column: 26, scope: !2976)
!2979 = !DILocation(line: 1158, column: 15, scope: !2967)
!2980 = !DILocation(line: 1159, column: 11, scope: !2981)
!2981 = distinct !DILexicalBlock(scope: !2982, file: !2, line: 1159, column: 11)
!2982 = distinct !DILexicalBlock(scope: !2976, file: !2, line: 1158, column: 49)
!2983 = !DILocation(line: 1159, column: 17, scope: !2981)
!2984 = !DILocation(line: 1159, column: 22, scope: !2981)
!2985 = !DILocation(line: 1159, column: 11, scope: !2982)
!2986 = !DILocation(line: 1160, column: 69, scope: !2981)
!2987 = !DILocation(line: 1160, column: 75, scope: !2981)
!2988 = !DILocation(line: 1160, column: 8, scope: !2981)
!2989 = !DILocation(line: 1161, column: 6, scope: !2982)
!2990 = !DILocation(line: 1162, column: 17, scope: !2991)
!2991 = distinct !DILexicalBlock(scope: !2976, file: !2, line: 1161, column: 13)
!2992 = !DILocation(line: 1162, column: 23, scope: !2991)
!2993 = !DILocation(line: 1162, column: 7, scope: !2991)
!2994 = !DILocalVariable(name: "value", scope: !2991, file: !2, line: 1163, type: !2995)
!2995 = !DIDerivedType(tag: DW_TAG_typedef, name: "ur_string_map_value_type", file: !207, line: 225, baseType: !83)
!2996 = !DILocation(line: 1163, column: 32, scope: !2991)
!2997 = !DILocation(line: 1163, column: 47, scope: !2991)
!2998 = !DILocation(line: 1163, column: 53, scope: !2991)
!2999 = !DILocation(line: 1163, column: 40, scope: !2991)
!3000 = !DILocation(line: 1164, column: 25, scope: !2991)
!3001 = !DILocation(line: 1164, column: 66, scope: !2991)
!3002 = !DILocation(line: 1164, column: 74, scope: !2991)
!3003 = !DILocation(line: 1164, column: 7, scope: !2991)
!3004 = !DILocation(line: 1166, column: 25, scope: !2968)
!3005 = !DILocation(line: 1166, column: 6, scope: !2968)
!3006 = !DILocation(line: 1167, column: 5, scope: !2968)
!3007 = !DILocation(line: 1168, column: 4, scope: !2946)
!3008 = !DILocation(line: 1151, column: 33, scope: !2941)
!3009 = !DILocation(line: 1151, column: 4, scope: !2941)
!3010 = distinct !{!3010, !2944, !3011, !917}
!3011 = !DILocation(line: 1168, column: 4, scope: !2938)
!3012 = !DILocation(line: 1170, column: 4, scope: !2876)
!3013 = !DILocation(line: 1172, column: 22, scope: !2876)
!3014 = !DILocation(line: 1172, column: 4, scope: !2876)
!3015 = !DILocation(line: 1174, column: 23, scope: !2876)
!3016 = !DILocation(line: 1174, column: 4, scope: !2876)
!3017 = !DILocation(line: 1175, column: 3, scope: !2876)
!3018 = !DILocalVariable(name: "i", scope: !3019, file: !2, line: 1178, type: !100)
!3019 = distinct !DILexicalBlock(scope: !2868, file: !2, line: 1177, column: 3)
!3020 = !DILocation(line: 1178, column: 11, scope: !3019)
!3021 = !DILocalVariable(name: "rlsz", scope: !3019, file: !2, line: 1179, type: !100)
!3022 = !DILocation(line: 1179, column: 11, scope: !3019)
!3023 = !DILocation(line: 1181, column: 4, scope: !3019)
!3024 = !DILocation(line: 1182, column: 11, scope: !3019)
!3025 = !DILocation(line: 1182, column: 24, scope: !3019)
!3026 = !DILocation(line: 1182, column: 9, scope: !3019)
!3027 = !DILocation(line: 1183, column: 4, scope: !3019)
!3028 = !DILocation(line: 1185, column: 11, scope: !3029)
!3029 = distinct !DILexicalBlock(scope: !3019, file: !2, line: 1185, column: 4)
!3030 = !DILocation(line: 1185, column: 9, scope: !3029)
!3031 = !DILocation(line: 1185, column: 16, scope: !3032)
!3032 = distinct !DILexicalBlock(scope: !3029, file: !2, line: 1185, column: 4)
!3033 = !DILocation(line: 1185, column: 18, scope: !3032)
!3034 = !DILocation(line: 1185, column: 17, scope: !3032)
!3035 = !DILocation(line: 1185, column: 4, scope: !3029)
!3036 = !DILocalVariable(name: "realm", scope: !3037, file: !2, line: 1186, type: !86)
!3037 = distinct !DILexicalBlock(scope: !3032, file: !2, line: 1185, column: 29)
!3038 = !DILocation(line: 1186, column: 11, scope: !3037)
!3039 = !DILocation(line: 1186, column: 19, scope: !3037)
!3040 = !DILocation(line: 1186, column: 32, scope: !3037)
!3041 = !DILocation(line: 1186, column: 40, scope: !3037)
!3042 = !DILocalVariable(name: "rp", scope: !3037, file: !2, line: 1187, type: !3043)
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3044 = !DIDerivedType(tag: DW_TAG_typedef, name: "realm_params_t", file: !312, line: 55, baseType: !3045)
!3045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_realm_params_t", file: !312, line: 64, size: 1344, elements: !3046)
!3046 = !{!3047, !3048, !3062}
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "is_default_realm", scope: !3045, file: !312, line: 66, baseType: !74, size: 32)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !3045, file: !312, line: 68, baseType: !3049, size: 1152, offset: 64)
!3049 = !DIDerivedType(tag: DW_TAG_typedef, name: "realm_options_t", file: !356, line: 142, baseType: !3050)
!3050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_realm_options_t", file: !3051, line: 53, size: 1152, elements: !3052)
!3051 = !DIFile(filename: "src/server/ns_turn_session.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "0d3b1381a7fca7a8f35b6ee419f25609")
!3052 = !{!3053, !3054}
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3050, file: !3051, line: 55, baseType: !123, size: 1024)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "perf_options", scope: !3050, file: !3051, line: 57, baseType: !3055, size: 128, offset: 1024)
!3055 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_options_t", file: !3051, line: 51, baseType: !3056)
!3056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_perf_options_t", file: !3051, line: 45, size: 128, elements: !3057)
!3057 = !{!3058, !3060, !3061}
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "max_bps", scope: !3056, file: !3051, line: 47, baseType: !3059, size: 64)
!3059 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !208)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "total_quota", scope: !3056, file: !3051, line: 48, baseType: !210, size: 32, offset: 64)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "user_quota", scope: !3056, file: !3051, line: 49, baseType: !210, size: 32, offset: 96)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3045, file: !312, line: 70, baseType: !3063, size: 128, offset: 1216)
!3063 = !DIDerivedType(tag: DW_TAG_typedef, name: "realm_status_t", file: !312, line: 52, baseType: !3064)
!3064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_realm_status_t", file: !312, line: 57, size: 128, elements: !3065)
!3065 = !{!3066, !3067}
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "total_current_allocs", scope: !3064, file: !312, line: 59, baseType: !210, size: 32)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_counters", scope: !3064, file: !312, line: 60, baseType: !2877, size: 64, offset: 64)
!3068 = !DILocation(line: 1187, column: 21, scope: !3037)
!3069 = !DILocation(line: 1187, column: 36, scope: !3037)
!3070 = !DILocation(line: 1187, column: 26, scope: !3037)
!3071 = !DILocalVariable(name: "value", scope: !3072, file: !2, line: 1189, type: !102)
!3072 = distinct !DILexicalBlock(scope: !3037, file: !2, line: 1188, column: 5)
!3073 = !DILocation(line: 1189, column: 20, scope: !3072)
!3074 = !DILocation(line: 1190, column: 30, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !3072, file: !2, line: 1190, column: 9)
!3076 = !DILocation(line: 1190, column: 10, scope: !3075)
!3077 = !DILocation(line: 1190, column: 9, scope: !3072)
!3078 = !DILocation(line: 1191, column: 7, scope: !3079)
!3079 = distinct !DILexicalBlock(scope: !3075, file: !2, line: 1190, column: 55)
!3080 = !DILocation(line: 1192, column: 54, scope: !3079)
!3081 = !DILocation(line: 1192, column: 7, scope: !3079)
!3082 = !DILocation(line: 1192, column: 11, scope: !3079)
!3083 = !DILocation(line: 1192, column: 19, scope: !3079)
!3084 = !DILocation(line: 1192, column: 32, scope: !3079)
!3085 = !DILocation(line: 1192, column: 40, scope: !3079)
!3086 = !DILocation(line: 1193, column: 7, scope: !3079)
!3087 = !DILocation(line: 1194, column: 6, scope: !3079)
!3088 = !DILocation(line: 1195, column: 56, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !3075, file: !2, line: 1194, column: 13)
!3090 = !DILocation(line: 1195, column: 7, scope: !3089)
!3091 = !DILocation(line: 1195, column: 11, scope: !3089)
!3092 = !DILocation(line: 1195, column: 19, scope: !3089)
!3093 = !DILocation(line: 1195, column: 32, scope: !3089)
!3094 = !DILocation(line: 1195, column: 40, scope: !3089)
!3095 = !DILocalVariable(name: "value", scope: !3096, file: !2, line: 1199, type: !102)
!3096 = distinct !DILexicalBlock(scope: !3037, file: !2, line: 1198, column: 5)
!3097 = !DILocation(line: 1199, column: 20, scope: !3096)
!3098 = !DILocation(line: 1200, column: 30, scope: !3099)
!3099 = distinct !DILexicalBlock(scope: !3096, file: !2, line: 1200, column: 9)
!3100 = !DILocation(line: 1200, column: 10, scope: !3099)
!3101 = !DILocation(line: 1200, column: 9, scope: !3096)
!3102 = !DILocation(line: 1201, column: 7, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !3099, file: !2, line: 1200, column: 59)
!3104 = !DILocation(line: 1202, column: 58, scope: !3103)
!3105 = !DILocation(line: 1202, column: 7, scope: !3103)
!3106 = !DILocation(line: 1202, column: 11, scope: !3103)
!3107 = !DILocation(line: 1202, column: 19, scope: !3103)
!3108 = !DILocation(line: 1202, column: 32, scope: !3103)
!3109 = !DILocation(line: 1202, column: 44, scope: !3103)
!3110 = !DILocation(line: 1203, column: 7, scope: !3103)
!3111 = !DILocation(line: 1204, column: 6, scope: !3103)
!3112 = !DILocation(line: 1205, column: 52, scope: !3113)
!3113 = distinct !DILexicalBlock(scope: !3099, file: !2, line: 1204, column: 13)
!3114 = !DILocation(line: 1205, column: 46, scope: !3113)
!3115 = !DILocation(line: 1205, column: 7, scope: !3113)
!3116 = !DILocation(line: 1205, column: 11, scope: !3113)
!3117 = !DILocation(line: 1205, column: 19, scope: !3113)
!3118 = !DILocation(line: 1205, column: 32, scope: !3113)
!3119 = !DILocation(line: 1205, column: 44, scope: !3113)
!3120 = !DILocalVariable(name: "value", scope: !3121, file: !2, line: 1209, type: !102)
!3121 = distinct !DILexicalBlock(scope: !3037, file: !2, line: 1208, column: 5)
!3122 = !DILocation(line: 1209, column: 20, scope: !3121)
!3123 = !DILocation(line: 1210, column: 30, scope: !3124)
!3124 = distinct !DILexicalBlock(scope: !3121, file: !2, line: 1210, column: 9)
!3125 = !DILocation(line: 1210, column: 10, scope: !3124)
!3126 = !DILocation(line: 1210, column: 9, scope: !3121)
!3127 = !DILocation(line: 1211, column: 7, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !3124, file: !2, line: 1210, column: 58)
!3129 = !DILocation(line: 1212, column: 57, scope: !3128)
!3130 = !DILocation(line: 1212, column: 7, scope: !3128)
!3131 = !DILocation(line: 1212, column: 11, scope: !3128)
!3132 = !DILocation(line: 1212, column: 19, scope: !3128)
!3133 = !DILocation(line: 1212, column: 32, scope: !3128)
!3134 = !DILocation(line: 1212, column: 43, scope: !3128)
!3135 = !DILocation(line: 1213, column: 7, scope: !3128)
!3136 = !DILocation(line: 1214, column: 6, scope: !3128)
!3137 = !DILocation(line: 1215, column: 51, scope: !3138)
!3138 = distinct !DILexicalBlock(scope: !3124, file: !2, line: 1214, column: 13)
!3139 = !DILocation(line: 1215, column: 45, scope: !3138)
!3140 = !DILocation(line: 1215, column: 7, scope: !3138)
!3141 = !DILocation(line: 1215, column: 11, scope: !3138)
!3142 = !DILocation(line: 1215, column: 19, scope: !3138)
!3143 = !DILocation(line: 1215, column: 32, scope: !3138)
!3144 = !DILocation(line: 1215, column: 43, scope: !3138)
!3145 = !DILocation(line: 1218, column: 4, scope: !3037)
!3146 = !DILocation(line: 1185, column: 24, scope: !3032)
!3147 = !DILocation(line: 1185, column: 4, scope: !3032)
!3148 = distinct !{!3148, !3035, !3149, !917}
!3149 = !DILocation(line: 1218, column: 4, scope: !3029)
!3150 = !DILocation(line: 1220, column: 2, scope: !2868)
!3151 = !DILocation(line: 1221, column: 1, scope: !2858)
!3152 = distinct !DISubprogram(name: "redis_set_oauth_key", scope: !2, file: !2, line: 512, type: !440, scopeLine: 512, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !56, retainedNodes: !696)
!3153 = !DILocalVariable(name: "key", arg: 1, scope: !3152, file: !2, line: 512, type: !442)
!3154 = !DILocation(line: 512, column: 52, scope: !3152)
!3155 = !DILocalVariable(name: "ret", scope: !3152, file: !2, line: 513, type: !74)
!3156 = !DILocation(line: 513, column: 7, scope: !3152)
!3157 = !DILocalVariable(name: "rc", scope: !3152, file: !2, line: 514, type: !117)
!3158 = !DILocation(line: 514, column: 17, scope: !3152)
!3159 = !DILocation(line: 514, column: 22, scope: !3152)
!3160 = !DILocation(line: 515, column: 6, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !3152, file: !2, line: 515, column: 6)
!3162 = !DILocation(line: 515, column: 6, scope: !3152)
!3163 = !DILocalVariable(name: "statement", scope: !3164, file: !2, line: 516, type: !1433)
!3164 = distinct !DILexicalBlock(scope: !3161, file: !2, line: 515, column: 10)
!3165 = !DILocation(line: 516, column: 7, scope: !3164)
!3166 = !DILocation(line: 517, column: 11, scope: !3164)
!3167 = !DILocation(line: 518, column: 4, scope: !3164)
!3168 = !DILocation(line: 518, column: 9, scope: !3164)
!3169 = !DILocation(line: 518, column: 13, scope: !3164)
!3170 = !DILocation(line: 518, column: 18, scope: !3164)
!3171 = !DILocation(line: 518, column: 26, scope: !3164)
!3172 = !DILocation(line: 518, column: 31, scope: !3164)
!3173 = !DILocation(line: 518, column: 61, scope: !3164)
!3174 = !DILocation(line: 518, column: 66, scope: !3164)
!3175 = !DILocation(line: 518, column: 91, scope: !3164)
!3176 = !DILocation(line: 518, column: 96, scope: !3164)
!3177 = !DILocation(line: 518, column: 76, scope: !3164)
!3178 = !DILocation(line: 518, column: 105, scope: !3164)
!3179 = !DILocation(line: 518, column: 110, scope: !3164)
!3180 = !DILocation(line: 517, column: 2, scope: !3164)
!3181 = !DILocation(line: 519, column: 34, scope: !3164)
!3182 = !DILocation(line: 519, column: 38, scope: !3164)
!3183 = !DILocation(line: 519, column: 21, scope: !3164)
!3184 = !DILocation(line: 519, column: 2, scope: !3164)
!3185 = !DILocation(line: 520, column: 34, scope: !3164)
!3186 = !DILocation(line: 520, column: 21, scope: !3164)
!3187 = !DILocation(line: 520, column: 2, scope: !3164)
!3188 = !DILocation(line: 521, column: 9, scope: !3164)
!3189 = !DILocation(line: 522, column: 3, scope: !3164)
!3190 = !DILocation(line: 523, column: 10, scope: !3152)
!3191 = !DILocation(line: 523, column: 3, scope: !3152)
!3192 = distinct !DISubprogram(name: "redis_get_oauth_key", scope: !2, file: !2, line: 457, type: !461, scopeLine: 457, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !56, retainedNodes: !696)
!3193 = !DILocalVariable(name: "kid", arg: 1, scope: !3192, file: !2, line: 457, type: !218)
!3194 = !DILocation(line: 457, column: 47, scope: !3192)
!3195 = !DILocalVariable(name: "key", arg: 2, scope: !3192, file: !2, line: 457, type: !442)
!3196 = !DILocation(line: 457, column: 72, scope: !3192)
!3197 = !DILocalVariable(name: "ret", scope: !3192, file: !2, line: 458, type: !74)
!3198 = !DILocation(line: 458, column: 7, scope: !3192)
!3199 = !DILocalVariable(name: "rc", scope: !3192, file: !2, line: 459, type: !117)
!3200 = !DILocation(line: 459, column: 18, scope: !3192)
!3201 = !DILocation(line: 459, column: 23, scope: !3192)
!3202 = !DILocation(line: 460, column: 6, scope: !3203)
!3203 = distinct !DILexicalBlock(scope: !3192, file: !2, line: 460, column: 6)
!3204 = !DILocation(line: 460, column: 6, scope: !3192)
!3205 = !DILocalVariable(name: "s", scope: !3206, file: !2, line: 461, type: !1433)
!3206 = distinct !DILexicalBlock(scope: !3203, file: !2, line: 460, column: 10)
!3207 = !DILocation(line: 461, column: 7, scope: !3206)
!3208 = !DILocation(line: 462, column: 8, scope: !3206)
!3209 = !DILocation(line: 462, column: 2, scope: !3206)
!3210 = !DILocation(line: 463, column: 2, scope: !3206)
!3211 = !DILocation(line: 463, column: 2, scope: !3212)
!3212 = distinct !DILexicalBlock(scope: !3213, file: !2, line: 463, column: 2)
!3213 = distinct !DILexicalBlock(scope: !3206, file: !2, line: 463, column: 2)
!3214 = !DILocation(line: 463, column: 2, scope: !3213)
!3215 = !DILocalVariable(name: "szdst", scope: !3216, file: !2, line: 463, type: !100)
!3216 = distinct !DILexicalBlock(scope: !3217, file: !2, line: 463, column: 2)
!3217 = distinct !DILexicalBlock(scope: !3218, file: !2, line: 463, column: 2)
!3218 = distinct !DILexicalBlock(scope: !3212, file: !2, line: 463, column: 2)
!3219 = !DILocation(line: 463, column: 2, scope: !3216)
!3220 = !DILocation(line: 463, column: 2, scope: !3218)
!3221 = !DILocation(line: 464, column: 11, scope: !3206)
!3222 = !DILocation(line: 464, column: 65, scope: !3206)
!3223 = !DILocation(line: 464, column: 2, scope: !3206)
!3224 = !DILocalVariable(name: "reply", scope: !3206, file: !2, line: 465, type: !92)
!3225 = !DILocation(line: 465, column: 14, scope: !3206)
!3226 = !DILocation(line: 465, column: 49, scope: !3206)
!3227 = !DILocation(line: 465, column: 53, scope: !3206)
!3228 = !DILocation(line: 465, column: 36, scope: !3206)
!3229 = !DILocation(line: 466, column: 5, scope: !3230)
!3230 = distinct !DILexicalBlock(scope: !3206, file: !2, line: 466, column: 5)
!3231 = !DILocation(line: 466, column: 5, scope: !3206)
!3232 = !DILocation(line: 467, column: 7, scope: !3233)
!3233 = distinct !DILexicalBlock(scope: !3234, file: !2, line: 467, column: 7)
!3234 = distinct !DILexicalBlock(scope: !3230, file: !2, line: 466, column: 12)
!3235 = !DILocation(line: 467, column: 14, scope: !3233)
!3236 = !DILocation(line: 467, column: 19, scope: !3233)
!3237 = !DILocation(line: 467, column: 7, scope: !3234)
!3238 = !DILocation(line: 468, column: 55, scope: !3233)
!3239 = !DILocation(line: 468, column: 62, scope: !3233)
!3240 = !DILocation(line: 468, column: 4, scope: !3233)
!3241 = !DILocation(line: 469, column: 12, scope: !3242)
!3242 = distinct !DILexicalBlock(scope: !3233, file: !2, line: 469, column: 12)
!3243 = !DILocation(line: 469, column: 19, scope: !3242)
!3244 = !DILocation(line: 469, column: 24, scope: !3242)
!3245 = !DILocation(line: 469, column: 12, scope: !3233)
!3246 = !DILocation(line: 470, column: 8, scope: !3247)
!3247 = distinct !DILexicalBlock(scope: !3248, file: !2, line: 470, column: 8)
!3248 = distinct !DILexicalBlock(scope: !3242, file: !2, line: 469, column: 46)
!3249 = !DILocation(line: 470, column: 15, scope: !3247)
!3250 = !DILocation(line: 470, column: 20, scope: !3247)
!3251 = !DILocation(line: 470, column: 8, scope: !3248)
!3252 = !DILocation(line: 471, column: 66, scope: !3247)
!3253 = !DILocation(line: 471, column: 73, scope: !3247)
!3254 = !DILocation(line: 471, column: 5, scope: !3247)
!3255 = !DILocation(line: 472, column: 3, scope: !3248)
!3256 = !DILocation(line: 472, column: 13, scope: !3257)
!3257 = distinct !DILexicalBlock(scope: !3242, file: !2, line: 472, column: 13)
!3258 = !DILocation(line: 472, column: 20, scope: !3257)
!3259 = !DILocation(line: 472, column: 29, scope: !3257)
!3260 = !DILocation(line: 472, column: 13, scope: !3242)
!3261 = !DILocalVariable(name: "i", scope: !3262, file: !2, line: 473, type: !100)
!3262 = distinct !DILexicalBlock(scope: !3257, file: !2, line: 472, column: 34)
!3263 = !DILocation(line: 473, column: 11, scope: !3262)
!3264 = !DILocation(line: 474, column: 11, scope: !3265)
!3265 = distinct !DILexicalBlock(scope: !3262, file: !2, line: 474, column: 4)
!3266 = !DILocation(line: 474, column: 9, scope: !3265)
!3267 = !DILocation(line: 474, column: 16, scope: !3268)
!3268 = distinct !DILexicalBlock(scope: !3265, file: !2, line: 474, column: 4)
!3269 = !DILocation(line: 474, column: 21, scope: !3268)
!3270 = !DILocation(line: 474, column: 28, scope: !3268)
!3271 = !DILocation(line: 474, column: 37, scope: !3268)
!3272 = !DILocation(line: 474, column: 18, scope: !3268)
!3273 = !DILocation(line: 474, column: 4, scope: !3265)
!3274 = !DILocalVariable(name: "kw", scope: !3275, file: !2, line: 475, type: !86)
!3275 = distinct !DILexicalBlock(scope: !3268, file: !2, line: 474, column: 46)
!3276 = !DILocation(line: 475, column: 11, scope: !3275)
!3277 = !DILocation(line: 475, column: 16, scope: !3275)
!3278 = !DILocation(line: 475, column: 23, scope: !3275)
!3279 = !DILocation(line: 475, column: 33, scope: !3275)
!3280 = !DILocation(line: 475, column: 32, scope: !3275)
!3281 = !DILocation(line: 475, column: 37, scope: !3275)
!3282 = !DILocalVariable(name: "val", scope: !3275, file: !2, line: 476, type: !86)
!3283 = !DILocation(line: 476, column: 11, scope: !3275)
!3284 = !DILocation(line: 476, column: 17, scope: !3275)
!3285 = !DILocation(line: 476, column: 24, scope: !3275)
!3286 = !DILocation(line: 476, column: 34, scope: !3275)
!3287 = !DILocation(line: 476, column: 33, scope: !3275)
!3288 = !DILocation(line: 476, column: 35, scope: !3275)
!3289 = !DILocation(line: 476, column: 40, scope: !3275)
!3290 = !DILocation(line: 477, column: 8, scope: !3291)
!3291 = distinct !DILexicalBlock(scope: !3275, file: !2, line: 477, column: 8)
!3292 = !DILocation(line: 477, column: 8, scope: !3275)
!3293 = !DILocation(line: 478, column: 17, scope: !3294)
!3294 = distinct !DILexicalBlock(scope: !3295, file: !2, line: 478, column: 9)
!3295 = distinct !DILexicalBlock(scope: !3291, file: !2, line: 477, column: 12)
!3296 = !DILocation(line: 478, column: 10, scope: !3294)
!3297 = !DILocation(line: 478, column: 9, scope: !3295)
!3298 = !DILocation(line: 479, column: 7, scope: !3299)
!3299 = distinct !DILexicalBlock(scope: !3294, file: !2, line: 478, column: 34)
!3300 = !DILocation(line: 479, column: 7, scope: !3301)
!3301 = distinct !DILexicalBlock(scope: !3302, file: !2, line: 479, column: 7)
!3302 = distinct !DILexicalBlock(scope: !3299, file: !2, line: 479, column: 7)
!3303 = !DILocation(line: 479, column: 7, scope: !3302)
!3304 = !DILocalVariable(name: "szdst", scope: !3305, file: !2, line: 479, type: !100)
!3305 = distinct !DILexicalBlock(scope: !3306, file: !2, line: 479, column: 7)
!3306 = distinct !DILexicalBlock(scope: !3307, file: !2, line: 479, column: 7)
!3307 = distinct !DILexicalBlock(scope: !3301, file: !2, line: 479, column: 7)
!3308 = !DILocation(line: 479, column: 7, scope: !3305)
!3309 = !DILocation(line: 479, column: 7, scope: !3307)
!3310 = !DILocation(line: 480, column: 6, scope: !3299)
!3311 = !DILocation(line: 480, column: 24, scope: !3312)
!3312 = distinct !DILexicalBlock(scope: !3294, file: !2, line: 480, column: 16)
!3313 = !DILocation(line: 480, column: 17, scope: !3312)
!3314 = !DILocation(line: 480, column: 16, scope: !3294)
!3315 = !DILocation(line: 481, column: 7, scope: !3316)
!3316 = distinct !DILexicalBlock(scope: !3312, file: !2, line: 480, column: 37)
!3317 = !DILocation(line: 481, column: 7, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !3319, file: !2, line: 481, column: 7)
!3319 = distinct !DILexicalBlock(scope: !3316, file: !2, line: 481, column: 7)
!3320 = !DILocation(line: 481, column: 7, scope: !3319)
!3321 = !DILocalVariable(name: "szdst", scope: !3322, file: !2, line: 481, type: !100)
!3322 = distinct !DILexicalBlock(scope: !3323, file: !2, line: 481, column: 7)
!3323 = distinct !DILexicalBlock(scope: !3324, file: !2, line: 481, column: 7)
!3324 = distinct !DILexicalBlock(scope: !3318, file: !2, line: 481, column: 7)
!3325 = !DILocation(line: 481, column: 7, scope: !3322)
!3326 = !DILocation(line: 481, column: 7, scope: !3324)
!3327 = !DILocation(line: 482, column: 6, scope: !3316)
!3328 = !DILocation(line: 482, column: 24, scope: !3329)
!3329 = distinct !DILexicalBlock(scope: !3312, file: !2, line: 482, column: 16)
!3330 = !DILocation(line: 482, column: 17, scope: !3329)
!3331 = !DILocation(line: 482, column: 16, scope: !3312)
!3332 = !DILocation(line: 483, column: 7, scope: !3333)
!3333 = distinct !DILexicalBlock(scope: !3329, file: !2, line: 482, column: 39)
!3334 = !DILocation(line: 483, column: 7, scope: !3335)
!3335 = distinct !DILexicalBlock(scope: !3336, file: !2, line: 483, column: 7)
!3336 = distinct !DILexicalBlock(scope: !3333, file: !2, line: 483, column: 7)
!3337 = !DILocation(line: 483, column: 7, scope: !3336)
!3338 = !DILocalVariable(name: "szdst", scope: !3339, file: !2, line: 483, type: !100)
!3339 = distinct !DILexicalBlock(scope: !3340, file: !2, line: 483, column: 7)
!3340 = distinct !DILexicalBlock(scope: !3341, file: !2, line: 483, column: 7)
!3341 = distinct !DILexicalBlock(scope: !3335, file: !2, line: 483, column: 7)
!3342 = !DILocation(line: 483, column: 7, scope: !3339)
!3343 = !DILocation(line: 483, column: 7, scope: !3341)
!3344 = !DILocation(line: 484, column: 6, scope: !3333)
!3345 = !DILocation(line: 484, column: 24, scope: !3346)
!3346 = distinct !DILexicalBlock(scope: !3329, file: !2, line: 484, column: 16)
!3347 = !DILocation(line: 484, column: 17, scope: !3346)
!3348 = !DILocation(line: 484, column: 16, scope: !3329)
!3349 = !DILocation(line: 485, column: 43, scope: !3350)
!3350 = distinct !DILexicalBlock(scope: !3346, file: !2, line: 484, column: 41)
!3351 = !DILocation(line: 485, column: 34, scope: !3350)
!3352 = !DILocation(line: 485, column: 7, scope: !3350)
!3353 = !DILocation(line: 485, column: 12, scope: !3350)
!3354 = !DILocation(line: 485, column: 22, scope: !3350)
!3355 = !DILocation(line: 486, column: 6, scope: !3350)
!3356 = !DILocation(line: 486, column: 24, scope: !3357)
!3357 = distinct !DILexicalBlock(scope: !3346, file: !2, line: 486, column: 16)
!3358 = !DILocation(line: 486, column: 17, scope: !3357)
!3359 = !DILocation(line: 486, column: 16, scope: !3346)
!3360 = !DILocation(line: 487, column: 41, scope: !3361)
!3361 = distinct !DILexicalBlock(scope: !3357, file: !2, line: 486, column: 40)
!3362 = !DILocation(line: 487, column: 33, scope: !3361)
!3363 = !DILocation(line: 487, column: 23, scope: !3361)
!3364 = !DILocation(line: 487, column: 7, scope: !3361)
!3365 = !DILocation(line: 487, column: 12, scope: !3361)
!3366 = !DILocation(line: 487, column: 21, scope: !3361)
!3367 = !DILocation(line: 488, column: 6, scope: !3361)
!3368 = !DILocation(line: 489, column: 5, scope: !3295)
!3369 = !DILocation(line: 490, column: 4, scope: !3275)
!3370 = !DILocation(line: 474, column: 41, scope: !3268)
!3371 = !DILocation(line: 474, column: 4, scope: !3268)
!3372 = distinct !{!3372, !3273, !3373, !917}
!3373 = !DILocation(line: 490, column: 4, scope: !3265)
!3374 = !DILocation(line: 491, column: 8, scope: !3262)
!3375 = !DILocation(line: 492, column: 3, scope: !3262)
!3376 = !DILocation(line: 493, column: 22, scope: !3234)
!3377 = !DILocation(line: 493, column: 3, scope: !3234)
!3378 = !DILocation(line: 494, column: 2, scope: !3234)
!3379 = !DILocation(line: 495, column: 3, scope: !3206)
!3380 = !DILocation(line: 496, column: 10, scope: !3192)
!3381 = !DILocation(line: 496, column: 3, scope: !3192)
!3382 = distinct !DISubprogram(name: "redis_del_oauth_key", scope: !2, file: !2, line: 542, type: !465, scopeLine: 542, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !56, retainedNodes: !696)
!3383 = !DILocalVariable(name: "kid", arg: 1, scope: !3382, file: !2, line: 542, type: !218)
!3384 = !DILocation(line: 542, column: 47, scope: !3382)
!3385 = !DILocalVariable(name: "ret", scope: !3382, file: !2, line: 543, type: !74)
!3386 = !DILocation(line: 543, column: 7, scope: !3382)
!3387 = !DILocalVariable(name: "rc", scope: !3382, file: !2, line: 544, type: !117)
!3388 = !DILocation(line: 544, column: 17, scope: !3382)
!3389 = !DILocation(line: 544, column: 22, scope: !3382)
!3390 = !DILocation(line: 545, column: 6, scope: !3391)
!3391 = distinct !DILexicalBlock(scope: !3382, file: !2, line: 545, column: 6)
!3392 = !DILocation(line: 545, column: 6, scope: !3382)
!3393 = !DILocalVariable(name: "statement", scope: !3394, file: !2, line: 546, type: !1433)
!3394 = distinct !DILexicalBlock(scope: !3391, file: !2, line: 545, column: 10)
!3395 = !DILocation(line: 546, column: 7, scope: !3394)
!3396 = !DILocation(line: 547, column: 11, scope: !3394)
!3397 = !DILocation(line: 547, column: 76, scope: !3394)
!3398 = !DILocation(line: 547, column: 2, scope: !3394)
!3399 = !DILocation(line: 548, column: 34, scope: !3394)
!3400 = !DILocation(line: 548, column: 38, scope: !3394)
!3401 = !DILocation(line: 548, column: 21, scope: !3394)
!3402 = !DILocation(line: 548, column: 2, scope: !3394)
!3403 = !DILocation(line: 549, column: 34, scope: !3394)
!3404 = !DILocation(line: 549, column: 21, scope: !3394)
!3405 = !DILocation(line: 549, column: 2, scope: !3394)
!3406 = !DILocation(line: 550, column: 9, scope: !3394)
!3407 = !DILocation(line: 551, column: 3, scope: !3394)
!3408 = !DILocation(line: 552, column: 10, scope: !3382)
!3409 = !DILocation(line: 552, column: 3, scope: !3382)
!3410 = distinct !DISubprogram(name: "redis_list_oauth_keys", scope: !2, file: !2, line: 634, type: !469, scopeLine: 634, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !56, retainedNodes: !696)
!3411 = !DILocalVariable(name: "kids", arg: 1, scope: !3410, file: !2, line: 634, type: !310)
!3412 = !DILocation(line: 634, column: 50, scope: !3410)
!3413 = !DILocalVariable(name: "teas", arg: 2, scope: !3410, file: !2, line: 634, type: !310)
!3414 = !DILocation(line: 634, column: 71, scope: !3410)
!3415 = !DILocalVariable(name: "tss", arg: 3, scope: !3410, file: !2, line: 634, type: !310)
!3416 = !DILocation(line: 634, column: 92, scope: !3410)
!3417 = !DILocalVariable(name: "lts", arg: 4, scope: !3410, file: !2, line: 634, type: !310)
!3418 = !DILocation(line: 634, column: 112, scope: !3410)
!3419 = !DILocalVariable(name: "realms", arg: 5, scope: !3410, file: !2, line: 634, type: !310)
!3420 = !DILocation(line: 634, column: 132, scope: !3410)
!3421 = !DILocalVariable(name: "ret", scope: !3410, file: !2, line: 635, type: !74)
!3422 = !DILocation(line: 635, column: 7, scope: !3410)
!3423 = !DILocalVariable(name: "rc", scope: !3410, file: !2, line: 636, type: !117)
!3424 = !DILocation(line: 636, column: 17, scope: !3410)
!3425 = !DILocation(line: 636, column: 22, scope: !3410)
!3426 = !DILocalVariable(name: "keys", scope: !3410, file: !2, line: 637, type: !311)
!3427 = !DILocation(line: 637, column: 18, scope: !3410)
!3428 = !DILocalVariable(name: "isz", scope: !3410, file: !2, line: 638, type: !100)
!3429 = !DILocation(line: 638, column: 10, scope: !3410)
!3430 = !DILocation(line: 639, column: 3, scope: !3410)
!3431 = !DILocation(line: 641, column: 6, scope: !3432)
!3432 = distinct !DILexicalBlock(scope: !3410, file: !2, line: 641, column: 6)
!3433 = !DILocation(line: 641, column: 6, scope: !3410)
!3434 = !DILocalVariable(name: "reply", scope: !3435, file: !2, line: 643, type: !92)
!3435 = distinct !DILexicalBlock(scope: !3432, file: !2, line: 641, column: 10)
!3436 = !DILocation(line: 643, column: 16, scope: !3435)
!3437 = !DILocation(line: 645, column: 38, scope: !3435)
!3438 = !DILocation(line: 645, column: 25, scope: !3435)
!3439 = !DILocation(line: 645, column: 10, scope: !3435)
!3440 = !DILocation(line: 646, column: 7, scope: !3441)
!3441 = distinct !DILexicalBlock(scope: !3435, file: !2, line: 646, column: 7)
!3442 = !DILocation(line: 646, column: 7, scope: !3435)
!3443 = !DILocation(line: 648, column: 7, scope: !3444)
!3444 = distinct !DILexicalBlock(scope: !3445, file: !2, line: 648, column: 7)
!3445 = distinct !DILexicalBlock(scope: !3441, file: !2, line: 646, column: 14)
!3446 = !DILocation(line: 648, column: 14, scope: !3444)
!3447 = !DILocation(line: 648, column: 19, scope: !3444)
!3448 = !DILocation(line: 648, column: 7, scope: !3445)
!3449 = !DILocation(line: 649, column: 55, scope: !3450)
!3450 = distinct !DILexicalBlock(scope: !3444, file: !2, line: 648, column: 41)
!3451 = !DILocation(line: 649, column: 62, scope: !3450)
!3452 = !DILocation(line: 649, column: 4, scope: !3450)
!3453 = !DILocation(line: 650, column: 3, scope: !3450)
!3454 = !DILocation(line: 650, column: 14, scope: !3455)
!3455 = distinct !DILexicalBlock(scope: !3444, file: !2, line: 650, column: 14)
!3456 = !DILocation(line: 650, column: 21, scope: !3455)
!3457 = !DILocation(line: 650, column: 26, scope: !3455)
!3458 = !DILocation(line: 650, column: 14, scope: !3444)
!3459 = !DILocation(line: 651, column: 8, scope: !3460)
!3460 = distinct !DILexicalBlock(scope: !3461, file: !2, line: 651, column: 8)
!3461 = distinct !DILexicalBlock(scope: !3455, file: !2, line: 650, column: 48)
!3462 = !DILocation(line: 651, column: 15, scope: !3460)
!3463 = !DILocation(line: 651, column: 20, scope: !3460)
!3464 = !DILocation(line: 651, column: 8, scope: !3461)
!3465 = !DILocation(line: 652, column: 66, scope: !3466)
!3466 = distinct !DILexicalBlock(scope: !3460, file: !2, line: 651, column: 40)
!3467 = !DILocation(line: 652, column: 73, scope: !3466)
!3468 = !DILocation(line: 652, column: 5, scope: !3466)
!3469 = !DILocation(line: 653, column: 4, scope: !3466)
!3470 = !DILocation(line: 654, column: 3, scope: !3461)
!3471 = !DILocalVariable(name: "i", scope: !3472, file: !2, line: 655, type: !100)
!3472 = distinct !DILexicalBlock(scope: !3455, file: !2, line: 654, column: 10)
!3473 = !DILocation(line: 655, column: 11, scope: !3472)
!3474 = !DILocation(line: 656, column: 11, scope: !3475)
!3475 = distinct !DILexicalBlock(scope: !3472, file: !2, line: 656, column: 4)
!3476 = !DILocation(line: 656, column: 9, scope: !3475)
!3477 = !DILocation(line: 656, column: 16, scope: !3478)
!3478 = distinct !DILexicalBlock(scope: !3475, file: !2, line: 656, column: 4)
!3479 = !DILocation(line: 656, column: 20, scope: !3478)
!3480 = !DILocation(line: 656, column: 27, scope: !3478)
!3481 = !DILocation(line: 656, column: 18, scope: !3478)
!3482 = !DILocation(line: 656, column: 4, scope: !3475)
!3483 = !DILocation(line: 657, column: 31, scope: !3484)
!3484 = distinct !DILexicalBlock(scope: !3478, file: !2, line: 656, column: 42)
!3485 = !DILocation(line: 657, column: 38, scope: !3484)
!3486 = !DILocation(line: 657, column: 46, scope: !3484)
!3487 = !DILocation(line: 657, column: 50, scope: !3484)
!3488 = !DILocation(line: 657, column: 5, scope: !3484)
!3489 = !DILocation(line: 658, column: 4, scope: !3484)
!3490 = !DILocation(line: 656, column: 37, scope: !3478)
!3491 = !DILocation(line: 656, column: 4, scope: !3478)
!3492 = distinct !{!3492, !3482, !3493, !917}
!3493 = !DILocation(line: 658, column: 4, scope: !3475)
!3494 = !DILocation(line: 660, column: 22, scope: !3445)
!3495 = !DILocation(line: 660, column: 3, scope: !3445)
!3496 = !DILocation(line: 661, column: 2, scope: !3445)
!3497 = !DILocation(line: 662, column: 3, scope: !3435)
!3498 = !DILocation(line: 664, column: 10, scope: !3499)
!3499 = distinct !DILexicalBlock(scope: !3410, file: !2, line: 664, column: 3)
!3500 = !DILocation(line: 664, column: 7, scope: !3499)
!3501 = !DILocation(line: 664, column: 13, scope: !3502)
!3502 = distinct !DILexicalBlock(scope: !3499, file: !2, line: 664, column: 3)
!3503 = !DILocation(line: 664, column: 22, scope: !3502)
!3504 = !DILocation(line: 664, column: 16, scope: !3502)
!3505 = !DILocation(line: 664, column: 3, scope: !3499)
!3506 = !DILocalVariable(name: "s", scope: !3507, file: !2, line: 665, type: !86)
!3507 = distinct !DILexicalBlock(scope: !3502, file: !2, line: 664, column: 32)
!3508 = !DILocation(line: 665, column: 8, scope: !3507)
!3509 = !DILocation(line: 665, column: 17, scope: !3507)
!3510 = !DILocation(line: 665, column: 25, scope: !3507)
!3511 = !DILocation(line: 665, column: 12, scope: !3507)
!3512 = !DILocation(line: 666, column: 4, scope: !3507)
!3513 = !DILocalVariable(name: "key_", scope: !3507, file: !2, line: 667, type: !443)
!3514 = !DILocation(line: 667, column: 21, scope: !3507)
!3515 = !DILocalVariable(name: "key", scope: !3507, file: !2, line: 668, type: !442)
!3516 = !DILocation(line: 668, column: 22, scope: !3507)
!3517 = !DILocation(line: 669, column: 41, scope: !3518)
!3518 = distinct !DILexicalBlock(scope: !3507, file: !2, line: 669, column: 5)
!3519 = !DILocation(line: 669, column: 43, scope: !3518)
!3520 = !DILocation(line: 669, column: 5, scope: !3518)
!3521 = !DILocation(line: 669, column: 48, scope: !3518)
!3522 = !DILocation(line: 669, column: 5, scope: !3507)
!3523 = !DILocation(line: 670, column: 6, scope: !3524)
!3524 = distinct !DILexicalBlock(scope: !3525, file: !2, line: 670, column: 6)
!3525 = distinct !DILexicalBlock(scope: !3518, file: !2, line: 669, column: 54)
!3526 = !DILocation(line: 670, column: 6, scope: !3525)
!3527 = !DILocation(line: 671, column: 24, scope: !3528)
!3528 = distinct !DILexicalBlock(scope: !3524, file: !2, line: 670, column: 12)
!3529 = !DILocation(line: 671, column: 29, scope: !3528)
!3530 = !DILocation(line: 671, column: 34, scope: !3528)
!3531 = !DILocation(line: 671, column: 4, scope: !3528)
!3532 = !DILocation(line: 672, column: 24, scope: !3528)
!3533 = !DILocation(line: 672, column: 29, scope: !3528)
!3534 = !DILocation(line: 672, column: 34, scope: !3528)
!3535 = !DILocation(line: 672, column: 4, scope: !3528)
!3536 = !DILocation(line: 673, column: 24, scope: !3528)
!3537 = !DILocation(line: 673, column: 31, scope: !3528)
!3538 = !DILocation(line: 673, column: 36, scope: !3528)
!3539 = !DILocation(line: 673, column: 4, scope: !3528)
!3540 = !DILocalVariable(name: "ts", scope: !3541, file: !2, line: 675, type: !757)
!3541 = distinct !DILexicalBlock(scope: !3528, file: !2, line: 674, column: 4)
!3542 = !DILocation(line: 675, column: 10, scope: !3541)
!3543 = !DILocation(line: 676, column: 14, scope: !3541)
!3544 = !DILocation(line: 676, column: 57, scope: !3541)
!3545 = !DILocation(line: 676, column: 62, scope: !3541)
!3546 = !DILocation(line: 676, column: 5, scope: !3541)
!3547 = !DILocation(line: 677, column: 25, scope: !3541)
!3548 = !DILocation(line: 677, column: 29, scope: !3541)
!3549 = !DILocation(line: 677, column: 5, scope: !3541)
!3550 = !DILocalVariable(name: "lt", scope: !3551, file: !2, line: 680, type: !757)
!3551 = distinct !DILexicalBlock(scope: !3528, file: !2, line: 679, column: 4)
!3552 = !DILocation(line: 680, column: 10, scope: !3551)
!3553 = !DILocation(line: 681, column: 14, scope: !3551)
!3554 = !DILocation(line: 681, column: 51, scope: !3551)
!3555 = !DILocation(line: 681, column: 56, scope: !3551)
!3556 = !DILocation(line: 681, column: 36, scope: !3551)
!3557 = !DILocation(line: 681, column: 5, scope: !3551)
!3558 = !DILocation(line: 682, column: 25, scope: !3551)
!3559 = !DILocation(line: 682, column: 29, scope: !3551)
!3560 = !DILocation(line: 682, column: 5, scope: !3551)
!3561 = !DILocation(line: 684, column: 3, scope: !3528)
!3562 = !DILocation(line: 686, column: 8, scope: !3563)
!3563 = distinct !DILexicalBlock(scope: !3524, file: !2, line: 684, column: 10)
!3564 = !DILocation(line: 686, column: 13, scope: !3563)
!3565 = !DILocation(line: 686, column: 18, scope: !3563)
!3566 = !DILocation(line: 686, column: 23, scope: !3563)
!3567 = !DILocation(line: 686, column: 52, scope: !3563)
!3568 = !DILocation(line: 686, column: 57, scope: !3563)
!3569 = !DILocation(line: 686, column: 83, scope: !3563)
!3570 = !DILocation(line: 686, column: 88, scope: !3563)
!3571 = !DILocation(line: 686, column: 68, scope: !3563)
!3572 = !DILocation(line: 687, column: 8, scope: !3563)
!3573 = !DILocation(line: 687, column: 13, scope: !3563)
!3574 = !DILocation(line: 687, column: 23, scope: !3563)
!3575 = !DILocation(line: 687, column: 28, scope: !3563)
!3576 = !DILocation(line: 685, column: 4, scope: !3563)
!3577 = !DILocation(line: 689, column: 2, scope: !3525)
!3578 = !DILocation(line: 690, column: 3, scope: !3507)
!3579 = !DILocation(line: 664, column: 25, scope: !3502)
!3580 = !DILocation(line: 664, column: 3, scope: !3502)
!3581 = distinct !{!3581, !3505, !3582, !917}
!3582 = !DILocation(line: 690, column: 3, scope: !3499)
!3583 = !DILocation(line: 692, column: 3, scope: !3410)
!3584 = !DILocation(line: 693, column: 7, scope: !3410)
!3585 = !DILocation(line: 695, column: 10, scope: !3410)
!3586 = !DILocation(line: 695, column: 3, scope: !3410)
!3587 = distinct !DISubprogram(name: "redis_get_admin_user", scope: !2, file: !2, line: 1225, type: !473, scopeLine: 1226, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !56, retainedNodes: !696)
!3588 = !DILocalVariable(name: "usname", arg: 1, scope: !3587, file: !2, line: 1225, type: !218)
!3589 = !DILocation(line: 1225, column: 48, scope: !3587)
!3590 = !DILocalVariable(name: "realm", arg: 2, scope: !3587, file: !2, line: 1225, type: !318)
!3591 = !DILocation(line: 1225, column: 65, scope: !3587)
!3592 = !DILocalVariable(name: "pwd", arg: 3, scope: !3587, file: !2, line: 1225, type: !318)
!3593 = !DILocation(line: 1225, column: 83, scope: !3587)
!3594 = !DILocalVariable(name: "ret", scope: !3587, file: !2, line: 1227, type: !74)
!3595 = !DILocation(line: 1227, column: 6, scope: !3587)
!3596 = !DILocalVariable(name: "rc", scope: !3587, file: !2, line: 1228, type: !117)
!3597 = !DILocation(line: 1228, column: 17, scope: !3587)
!3598 = !DILocation(line: 1228, column: 22, scope: !3587)
!3599 = !DILocation(line: 1229, column: 5, scope: !3600)
!3600 = distinct !DILexicalBlock(scope: !3587, file: !2, line: 1229, column: 5)
!3601 = !DILocation(line: 1229, column: 5, scope: !3587)
!3602 = !DILocalVariable(name: "s", scope: !3603, file: !2, line: 1230, type: !1433)
!3603 = distinct !DILexicalBlock(scope: !3600, file: !2, line: 1229, column: 9)
!3604 = !DILocation(line: 1230, column: 8, scope: !3603)
!3605 = !DILocation(line: 1231, column: 3, scope: !3603)
!3606 = !DILocation(line: 1231, column: 11, scope: !3603)
!3607 = !DILocation(line: 1232, column: 3, scope: !3603)
!3608 = !DILocation(line: 1232, column: 9, scope: !3603)
!3609 = !DILocation(line: 1233, column: 12, scope: !3603)
!3610 = !DILocation(line: 1233, column: 67, scope: !3603)
!3611 = !DILocation(line: 1233, column: 3, scope: !3603)
!3612 = !DILocalVariable(name: "reply", scope: !3603, file: !2, line: 1234, type: !92)
!3613 = !DILocation(line: 1234, column: 15, scope: !3603)
!3614 = !DILocation(line: 1234, column: 50, scope: !3603)
!3615 = !DILocation(line: 1234, column: 54, scope: !3603)
!3616 = !DILocation(line: 1234, column: 37, scope: !3603)
!3617 = !DILocation(line: 1235, column: 6, scope: !3618)
!3618 = distinct !DILexicalBlock(scope: !3603, file: !2, line: 1235, column: 6)
!3619 = !DILocation(line: 1235, column: 6, scope: !3603)
!3620 = !DILocation(line: 1236, column: 8, scope: !3621)
!3621 = distinct !DILexicalBlock(scope: !3622, file: !2, line: 1236, column: 8)
!3622 = distinct !DILexicalBlock(scope: !3618, file: !2, line: 1235, column: 13)
!3623 = !DILocation(line: 1236, column: 15, scope: !3621)
!3624 = !DILocation(line: 1236, column: 20, scope: !3621)
!3625 = !DILocation(line: 1236, column: 8, scope: !3622)
!3626 = !DILocation(line: 1237, column: 56, scope: !3621)
!3627 = !DILocation(line: 1237, column: 63, scope: !3621)
!3628 = !DILocation(line: 1237, column: 5, scope: !3621)
!3629 = !DILocation(line: 1238, column: 13, scope: !3630)
!3630 = distinct !DILexicalBlock(scope: !3621, file: !2, line: 1238, column: 13)
!3631 = !DILocation(line: 1238, column: 20, scope: !3630)
!3632 = !DILocation(line: 1238, column: 25, scope: !3630)
!3633 = !DILocation(line: 1238, column: 13, scope: !3621)
!3634 = !DILocation(line: 1239, column: 9, scope: !3635)
!3635 = distinct !DILexicalBlock(scope: !3636, file: !2, line: 1239, column: 9)
!3636 = distinct !DILexicalBlock(scope: !3630, file: !2, line: 1238, column: 47)
!3637 = !DILocation(line: 1239, column: 16, scope: !3635)
!3638 = !DILocation(line: 1239, column: 21, scope: !3635)
!3639 = !DILocation(line: 1239, column: 9, scope: !3636)
!3640 = !DILocation(line: 1240, column: 67, scope: !3635)
!3641 = !DILocation(line: 1240, column: 74, scope: !3635)
!3642 = !DILocation(line: 1240, column: 6, scope: !3635)
!3643 = !DILocation(line: 1241, column: 4, scope: !3636)
!3644 = !DILocation(line: 1241, column: 14, scope: !3645)
!3645 = distinct !DILexicalBlock(scope: !3630, file: !2, line: 1241, column: 14)
!3646 = !DILocation(line: 1241, column: 21, scope: !3645)
!3647 = !DILocation(line: 1241, column: 30, scope: !3645)
!3648 = !DILocation(line: 1241, column: 14, scope: !3630)
!3649 = !DILocalVariable(name: "i", scope: !3650, file: !2, line: 1242, type: !100)
!3650 = distinct !DILexicalBlock(scope: !3645, file: !2, line: 1241, column: 35)
!3651 = !DILocation(line: 1242, column: 12, scope: !3650)
!3652 = !DILocation(line: 1243, column: 12, scope: !3653)
!3653 = distinct !DILexicalBlock(scope: !3650, file: !2, line: 1243, column: 5)
!3654 = !DILocation(line: 1243, column: 10, scope: !3653)
!3655 = !DILocation(line: 1243, column: 17, scope: !3656)
!3656 = distinct !DILexicalBlock(scope: !3653, file: !2, line: 1243, column: 5)
!3657 = !DILocation(line: 1243, column: 22, scope: !3656)
!3658 = !DILocation(line: 1243, column: 29, scope: !3656)
!3659 = !DILocation(line: 1243, column: 38, scope: !3656)
!3660 = !DILocation(line: 1243, column: 19, scope: !3656)
!3661 = !DILocation(line: 1243, column: 5, scope: !3653)
!3662 = !DILocalVariable(name: "kw", scope: !3663, file: !2, line: 1244, type: !86)
!3663 = distinct !DILexicalBlock(scope: !3656, file: !2, line: 1243, column: 47)
!3664 = !DILocation(line: 1244, column: 12, scope: !3663)
!3665 = !DILocation(line: 1244, column: 17, scope: !3663)
!3666 = !DILocation(line: 1244, column: 24, scope: !3663)
!3667 = !DILocation(line: 1244, column: 34, scope: !3663)
!3668 = !DILocation(line: 1244, column: 33, scope: !3663)
!3669 = !DILocation(line: 1244, column: 38, scope: !3663)
!3670 = !DILocalVariable(name: "val", scope: !3663, file: !2, line: 1245, type: !86)
!3671 = !DILocation(line: 1245, column: 12, scope: !3663)
!3672 = !DILocation(line: 1245, column: 18, scope: !3663)
!3673 = !DILocation(line: 1245, column: 25, scope: !3663)
!3674 = !DILocation(line: 1245, column: 35, scope: !3663)
!3675 = !DILocation(line: 1245, column: 34, scope: !3663)
!3676 = !DILocation(line: 1245, column: 36, scope: !3663)
!3677 = !DILocation(line: 1245, column: 41, scope: !3663)
!3678 = !DILocation(line: 1246, column: 9, scope: !3679)
!3679 = distinct !DILexicalBlock(scope: !3663, file: !2, line: 1246, column: 9)
!3680 = !DILocation(line: 1246, column: 9, scope: !3663)
!3681 = !DILocation(line: 1247, column: 18, scope: !3682)
!3682 = distinct !DILexicalBlock(scope: !3683, file: !2, line: 1247, column: 10)
!3683 = distinct !DILexicalBlock(scope: !3679, file: !2, line: 1246, column: 13)
!3684 = !DILocation(line: 1247, column: 11, scope: !3682)
!3685 = !DILocation(line: 1247, column: 10, scope: !3683)
!3686 = !DILocation(line: 1248, column: 23, scope: !3687)
!3687 = distinct !DILexicalBlock(scope: !3682, file: !2, line: 1247, column: 31)
!3688 = !DILocation(line: 1248, column: 29, scope: !3687)
!3689 = !DILocation(line: 1248, column: 8, scope: !3687)
!3690 = !DILocation(line: 1249, column: 7, scope: !3687)
!3691 = !DILocation(line: 1249, column: 25, scope: !3692)
!3692 = distinct !DILexicalBlock(scope: !3682, file: !2, line: 1249, column: 17)
!3693 = !DILocation(line: 1249, column: 18, scope: !3692)
!3694 = !DILocation(line: 1249, column: 17, scope: !3682)
!3695 = !DILocation(line: 1250, column: 23, scope: !3696)
!3696 = distinct !DILexicalBlock(scope: !3692, file: !2, line: 1249, column: 41)
!3697 = !DILocation(line: 1250, column: 27, scope: !3696)
!3698 = !DILocation(line: 1250, column: 8, scope: !3696)
!3699 = !DILocation(line: 1251, column: 12, scope: !3696)
!3700 = !DILocation(line: 1252, column: 7, scope: !3696)
!3701 = !DILocation(line: 1253, column: 6, scope: !3683)
!3702 = !DILocation(line: 1254, column: 5, scope: !3663)
!3703 = !DILocation(line: 1243, column: 42, scope: !3656)
!3704 = !DILocation(line: 1243, column: 5, scope: !3656)
!3705 = distinct !{!3705, !3661, !3706, !917}
!3706 = !DILocation(line: 1254, column: 5, scope: !3653)
!3707 = !DILocation(line: 1255, column: 4, scope: !3650)
!3708 = !DILocation(line: 1256, column: 23, scope: !3622)
!3709 = !DILocation(line: 1256, column: 4, scope: !3622)
!3710 = !DILocation(line: 1257, column: 3, scope: !3622)
!3711 = !DILocation(line: 1258, column: 4, scope: !3603)
!3712 = !DILocation(line: 1259, column: 11, scope: !3587)
!3713 = !DILocation(line: 1259, column: 4, scope: !3587)
!3714 = distinct !DISubprogram(name: "redis_set_admin_user", scope: !2, file: !2, line: 1262, type: !477, scopeLine: 1263, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !56, retainedNodes: !696)
!3715 = !DILocalVariable(name: "usname", arg: 1, scope: !3714, file: !2, line: 1262, type: !218)
!3716 = !DILocation(line: 1262, column: 48, scope: !3714)
!3717 = !DILocalVariable(name: "realm", arg: 2, scope: !3714, file: !2, line: 1262, type: !218)
!3718 = !DILocation(line: 1262, column: 71, scope: !3714)
!3719 = !DILocalVariable(name: "pwd", arg: 3, scope: !3714, file: !2, line: 1262, type: !218)
!3720 = !DILocation(line: 1262, column: 95, scope: !3714)
!3721 = !DILocalVariable(name: "ret", scope: !3714, file: !2, line: 1264, type: !74)
!3722 = !DILocation(line: 1264, column: 7, scope: !3714)
!3723 = !DILocation(line: 1265, column: 34, scope: !3714)
!3724 = !DILocalVariable(name: "rc", scope: !3714, file: !2, line: 1266, type: !117)
!3725 = !DILocation(line: 1266, column: 17, scope: !3714)
!3726 = !DILocation(line: 1266, column: 22, scope: !3714)
!3727 = !DILocation(line: 1267, column: 6, scope: !3728)
!3728 = distinct !DILexicalBlock(scope: !3714, file: !2, line: 1267, column: 6)
!3729 = !DILocation(line: 1267, column: 6, scope: !3714)
!3730 = !DILocalVariable(name: "statement", scope: !3731, file: !2, line: 1268, type: !1433)
!3731 = distinct !DILexicalBlock(scope: !3728, file: !2, line: 1267, column: 10)
!3732 = !DILocation(line: 1268, column: 7, scope: !3731)
!3733 = !DILocation(line: 1269, column: 5, scope: !3734)
!3734 = distinct !DILexicalBlock(scope: !3731, file: !2, line: 1269, column: 5)
!3735 = !DILocation(line: 1269, column: 5, scope: !3731)
!3736 = !DILocation(line: 1270, column: 12, scope: !3737)
!3737 = distinct !DILexicalBlock(scope: !3734, file: !2, line: 1269, column: 15)
!3738 = !DILocation(line: 1270, column: 88, scope: !3737)
!3739 = !DILocation(line: 1270, column: 95, scope: !3737)
!3740 = !DILocation(line: 1270, column: 101, scope: !3737)
!3741 = !DILocation(line: 1270, column: 3, scope: !3737)
!3742 = !DILocation(line: 1271, column: 2, scope: !3737)
!3743 = !DILocation(line: 1272, column: 12, scope: !3744)
!3744 = distinct !DILexicalBlock(scope: !3734, file: !2, line: 1271, column: 9)
!3745 = !DILocation(line: 1272, column: 79, scope: !3744)
!3746 = !DILocation(line: 1272, column: 86, scope: !3744)
!3747 = !DILocation(line: 1272, column: 3, scope: !3744)
!3748 = !DILocation(line: 1274, column: 34, scope: !3731)
!3749 = !DILocation(line: 1274, column: 38, scope: !3731)
!3750 = !DILocation(line: 1274, column: 21, scope: !3731)
!3751 = !DILocation(line: 1274, column: 2, scope: !3731)
!3752 = !DILocation(line: 1275, column: 34, scope: !3731)
!3753 = !DILocation(line: 1275, column: 21, scope: !3731)
!3754 = !DILocation(line: 1275, column: 2, scope: !3731)
!3755 = !DILocation(line: 1276, column: 9, scope: !3731)
!3756 = !DILocation(line: 1277, column: 3, scope: !3731)
!3757 = !DILocation(line: 1278, column: 10, scope: !3714)
!3758 = !DILocation(line: 1278, column: 3, scope: !3714)
!3759 = distinct !DISubprogram(name: "redis_del_admin_user", scope: !2, file: !2, line: 1281, type: !465, scopeLine: 1281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !56, retainedNodes: !696)
!3760 = !DILocalVariable(name: "usname", arg: 1, scope: !3759, file: !2, line: 1281, type: !218)
!3761 = !DILocation(line: 1281, column: 48, scope: !3759)
!3762 = !DILocalVariable(name: "ret", scope: !3759, file: !2, line: 1282, type: !74)
!3763 = !DILocation(line: 1282, column: 7, scope: !3759)
!3764 = !DILocation(line: 1283, column: 34, scope: !3759)
!3765 = !DILocalVariable(name: "rc", scope: !3759, file: !2, line: 1284, type: !117)
!3766 = !DILocation(line: 1284, column: 17, scope: !3759)
!3767 = !DILocation(line: 1284, column: 22, scope: !3759)
!3768 = !DILocation(line: 1285, column: 6, scope: !3769)
!3769 = distinct !DILexicalBlock(scope: !3759, file: !2, line: 1285, column: 6)
!3770 = !DILocation(line: 1285, column: 6, scope: !3759)
!3771 = !DILocalVariable(name: "statement", scope: !3772, file: !2, line: 1286, type: !1433)
!3772 = distinct !DILexicalBlock(scope: !3769, file: !2, line: 1285, column: 10)
!3773 = !DILocation(line: 1286, column: 7, scope: !3772)
!3774 = !DILocation(line: 1287, column: 11, scope: !3772)
!3775 = !DILocation(line: 1287, column: 77, scope: !3772)
!3776 = !DILocation(line: 1287, column: 2, scope: !3772)
!3777 = !DILocation(line: 1288, column: 34, scope: !3772)
!3778 = !DILocation(line: 1288, column: 38, scope: !3772)
!3779 = !DILocation(line: 1288, column: 21, scope: !3772)
!3780 = !DILocation(line: 1288, column: 2, scope: !3772)
!3781 = !DILocation(line: 1289, column: 34, scope: !3772)
!3782 = !DILocation(line: 1289, column: 21, scope: !3772)
!3783 = !DILocation(line: 1289, column: 2, scope: !3772)
!3784 = !DILocation(line: 1290, column: 9, scope: !3772)
!3785 = !DILocation(line: 1291, column: 3, scope: !3772)
!3786 = !DILocation(line: 1292, column: 10, scope: !3759)
!3787 = !DILocation(line: 1292, column: 3, scope: !3759)
!3788 = distinct !DISubprogram(name: "redis_list_admin_users", scope: !2, file: !2, line: 1295, type: !482, scopeLine: 1296, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !56, retainedNodes: !696)
!3789 = !DILocalVariable(name: "no_print", arg: 1, scope: !3788, file: !2, line: 1295, type: !74)
!3790 = !DILocation(line: 1295, column: 39, scope: !3788)
!3791 = !DILocalVariable(name: "ret", scope: !3788, file: !2, line: 1297, type: !74)
!3792 = !DILocation(line: 1297, column: 7, scope: !3788)
!3793 = !DILocation(line: 1298, column: 34, scope: !3788)
!3794 = !DILocalVariable(name: "rc", scope: !3788, file: !2, line: 1299, type: !117)
!3795 = !DILocation(line: 1299, column: 17, scope: !3788)
!3796 = !DILocation(line: 1299, column: 22, scope: !3788)
!3797 = !DILocalVariable(name: "keys", scope: !3788, file: !2, line: 1300, type: !311)
!3798 = !DILocation(line: 1300, column: 18, scope: !3788)
!3799 = !DILocalVariable(name: "isz", scope: !3788, file: !2, line: 1301, type: !100)
!3800 = !DILocation(line: 1301, column: 10, scope: !3788)
!3801 = !DILocation(line: 1302, column: 3, scope: !3788)
!3802 = !DILocation(line: 1304, column: 6, scope: !3803)
!3803 = distinct !DILexicalBlock(scope: !3788, file: !2, line: 1304, column: 6)
!3804 = !DILocation(line: 1304, column: 6, scope: !3788)
!3805 = !DILocalVariable(name: "reply", scope: !3806, file: !2, line: 1306, type: !92)
!3806 = distinct !DILexicalBlock(scope: !3803, file: !2, line: 1304, column: 10)
!3807 = !DILocation(line: 1306, column: 16, scope: !3806)
!3808 = !DILocation(line: 1308, column: 38, scope: !3806)
!3809 = !DILocation(line: 1308, column: 25, scope: !3806)
!3810 = !DILocation(line: 1308, column: 10, scope: !3806)
!3811 = !DILocation(line: 1309, column: 7, scope: !3812)
!3812 = distinct !DILexicalBlock(scope: !3806, file: !2, line: 1309, column: 7)
!3813 = !DILocation(line: 1309, column: 7, scope: !3806)
!3814 = !DILocation(line: 1311, column: 7, scope: !3815)
!3815 = distinct !DILexicalBlock(scope: !3816, file: !2, line: 1311, column: 7)
!3816 = distinct !DILexicalBlock(scope: !3812, file: !2, line: 1309, column: 14)
!3817 = !DILocation(line: 1311, column: 14, scope: !3815)
!3818 = !DILocation(line: 1311, column: 19, scope: !3815)
!3819 = !DILocation(line: 1311, column: 7, scope: !3816)
!3820 = !DILocation(line: 1312, column: 55, scope: !3821)
!3821 = distinct !DILexicalBlock(scope: !3815, file: !2, line: 1311, column: 41)
!3822 = !DILocation(line: 1312, column: 62, scope: !3821)
!3823 = !DILocation(line: 1312, column: 4, scope: !3821)
!3824 = !DILocation(line: 1313, column: 3, scope: !3821)
!3825 = !DILocation(line: 1313, column: 14, scope: !3826)
!3826 = distinct !DILexicalBlock(scope: !3815, file: !2, line: 1313, column: 14)
!3827 = !DILocation(line: 1313, column: 21, scope: !3826)
!3828 = !DILocation(line: 1313, column: 26, scope: !3826)
!3829 = !DILocation(line: 1313, column: 14, scope: !3815)
!3830 = !DILocation(line: 1314, column: 8, scope: !3831)
!3831 = distinct !DILexicalBlock(scope: !3832, file: !2, line: 1314, column: 8)
!3832 = distinct !DILexicalBlock(scope: !3826, file: !2, line: 1313, column: 48)
!3833 = !DILocation(line: 1314, column: 15, scope: !3831)
!3834 = !DILocation(line: 1314, column: 20, scope: !3831)
!3835 = !DILocation(line: 1314, column: 8, scope: !3832)
!3836 = !DILocation(line: 1315, column: 66, scope: !3837)
!3837 = distinct !DILexicalBlock(scope: !3831, file: !2, line: 1314, column: 40)
!3838 = !DILocation(line: 1315, column: 73, scope: !3837)
!3839 = !DILocation(line: 1315, column: 5, scope: !3837)
!3840 = !DILocation(line: 1316, column: 4, scope: !3837)
!3841 = !DILocation(line: 1317, column: 3, scope: !3832)
!3842 = !DILocalVariable(name: "i", scope: !3843, file: !2, line: 1318, type: !100)
!3843 = distinct !DILexicalBlock(scope: !3826, file: !2, line: 1317, column: 10)
!3844 = !DILocation(line: 1318, column: 11, scope: !3843)
!3845 = !DILocation(line: 1319, column: 11, scope: !3846)
!3846 = distinct !DILexicalBlock(scope: !3843, file: !2, line: 1319, column: 4)
!3847 = !DILocation(line: 1319, column: 9, scope: !3846)
!3848 = !DILocation(line: 1319, column: 16, scope: !3849)
!3849 = distinct !DILexicalBlock(scope: !3846, file: !2, line: 1319, column: 4)
!3850 = !DILocation(line: 1319, column: 20, scope: !3849)
!3851 = !DILocation(line: 1319, column: 27, scope: !3849)
!3852 = !DILocation(line: 1319, column: 18, scope: !3849)
!3853 = !DILocation(line: 1319, column: 4, scope: !3846)
!3854 = !DILocation(line: 1320, column: 31, scope: !3855)
!3855 = distinct !DILexicalBlock(scope: !3849, file: !2, line: 1319, column: 42)
!3856 = !DILocation(line: 1320, column: 38, scope: !3855)
!3857 = !DILocation(line: 1320, column: 46, scope: !3855)
!3858 = !DILocation(line: 1320, column: 50, scope: !3855)
!3859 = !DILocation(line: 1320, column: 5, scope: !3855)
!3860 = !DILocation(line: 1321, column: 4, scope: !3855)
!3861 = !DILocation(line: 1319, column: 37, scope: !3849)
!3862 = !DILocation(line: 1319, column: 4, scope: !3849)
!3863 = distinct !{!3863, !3853, !3864, !917}
!3864 = !DILocation(line: 1321, column: 4, scope: !3846)
!3865 = !DILocation(line: 1323, column: 22, scope: !3816)
!3866 = !DILocation(line: 1323, column: 3, scope: !3816)
!3867 = !DILocation(line: 1324, column: 2, scope: !3816)
!3868 = !DILocation(line: 1325, column: 3, scope: !3806)
!3869 = !DILocation(line: 1327, column: 7, scope: !3788)
!3870 = !DILocation(line: 1328, column: 10, scope: !3871)
!3871 = distinct !DILexicalBlock(scope: !3788, file: !2, line: 1328, column: 3)
!3872 = !DILocation(line: 1328, column: 7, scope: !3871)
!3873 = !DILocation(line: 1328, column: 13, scope: !3874)
!3874 = distinct !DILexicalBlock(scope: !3871, file: !2, line: 1328, column: 3)
!3875 = !DILocation(line: 1328, column: 22, scope: !3874)
!3876 = !DILocation(line: 1328, column: 16, scope: !3874)
!3877 = !DILocation(line: 1328, column: 3, scope: !3871)
!3878 = !DILocalVariable(name: "s", scope: !3879, file: !2, line: 1329, type: !86)
!3879 = distinct !DILexicalBlock(scope: !3874, file: !2, line: 1328, column: 32)
!3880 = !DILocation(line: 1329, column: 8, scope: !3879)
!3881 = !DILocation(line: 1329, column: 17, scope: !3879)
!3882 = !DILocation(line: 1329, column: 25, scope: !3879)
!3883 = !DILocation(line: 1329, column: 12, scope: !3879)
!3884 = !DILocation(line: 1330, column: 4, scope: !3879)
!3885 = !DILocalVariable(name: "realm", scope: !3879, file: !2, line: 1331, type: !3886)
!3886 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 1016, elements: !3887)
!3887 = !{!3888}
!3888 = !DISubrange(count: 127)
!3889 = !DILocation(line: 1331, column: 10, scope: !3879)
!3890 = !DILocalVariable(name: "pwd", scope: !3879, file: !2, line: 1332, type: !3891)
!3891 = !DIDerivedType(tag: DW_TAG_typedef, name: "password_t", file: !209, line: 66, baseType: !3892)
!3892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 2056, elements: !366)
!3893 = !DILocation(line: 1332, column: 13, scope: !3879)
!3894 = !DILocation(line: 1333, column: 42, scope: !3895)
!3895 = distinct !DILexicalBlock(scope: !3879, file: !2, line: 1333, column: 5)
!3896 = !DILocation(line: 1333, column: 44, scope: !3895)
!3897 = !DILocation(line: 1333, column: 50, scope: !3895)
!3898 = !DILocation(line: 1333, column: 5, scope: !3895)
!3899 = !DILocation(line: 1333, column: 55, scope: !3895)
!3900 = !DILocation(line: 1333, column: 5, scope: !3879)
!3901 = !DILocation(line: 1334, column: 3, scope: !3902)
!3902 = distinct !DILexicalBlock(scope: !3895, file: !2, line: 1333, column: 61)
!3903 = !DILocation(line: 1335, column: 7, scope: !3904)
!3904 = distinct !DILexicalBlock(scope: !3902, file: !2, line: 1335, column: 6)
!3905 = !DILocation(line: 1335, column: 6, scope: !3902)
!3906 = !DILocation(line: 1336, column: 7, scope: !3907)
!3907 = distinct !DILexicalBlock(scope: !3908, file: !2, line: 1336, column: 7)
!3908 = distinct !DILexicalBlock(scope: !3904, file: !2, line: 1335, column: 17)
!3909 = !DILocation(line: 1336, column: 7, scope: !3908)
!3910 = !DILocation(line: 1337, column: 23, scope: !3911)
!3911 = distinct !DILexicalBlock(scope: !3907, file: !2, line: 1336, column: 17)
!3912 = !DILocation(line: 1337, column: 25, scope: !3911)
!3913 = !DILocation(line: 1337, column: 5, scope: !3911)
!3914 = !DILocation(line: 1338, column: 4, scope: !3911)
!3915 = !DILocation(line: 1339, column: 19, scope: !3916)
!3916 = distinct !DILexicalBlock(scope: !3907, file: !2, line: 1338, column: 11)
!3917 = !DILocation(line: 1339, column: 5, scope: !3916)
!3918 = !DILocation(line: 1341, column: 3, scope: !3908)
!3919 = !DILocation(line: 1342, column: 2, scope: !3902)
!3920 = !DILocation(line: 1343, column: 3, scope: !3879)
!3921 = !DILocation(line: 1328, column: 25, scope: !3874)
!3922 = !DILocation(line: 1328, column: 3, scope: !3874)
!3923 = distinct !{!3923, !3877, !3924, !917}
!3924 = !DILocation(line: 1343, column: 3, scope: !3871)
!3925 = !DILocation(line: 1345, column: 3, scope: !3788)
!3926 = !DILocation(line: 1347, column: 10, scope: !3788)
!3927 = !DILocation(line: 1347, column: 3, scope: !3788)
!3928 = distinct !DISubprogram(name: "redis_disconnect", scope: !2, file: !2, line: 1350, type: !486, scopeLine: 1350, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !56, retainedNodes: !696)
!3929 = !DILocalVariable(name: "redisconnection", scope: !3928, file: !2, line: 1351, type: !117)
!3930 = !DILocation(line: 1351, column: 16, scope: !3928)
!3931 = !DILocation(line: 1351, column: 69, scope: !3928)
!3932 = !DILocation(line: 1351, column: 49, scope: !3928)
!3933 = !DILocation(line: 1352, column: 6, scope: !3934)
!3934 = distinct !DILexicalBlock(scope: !3928, file: !2, line: 1352, column: 6)
!3935 = !DILocation(line: 1352, column: 6, scope: !3928)
!3936 = !DILocation(line: 1353, column: 13, scope: !3937)
!3937 = distinct !DILexicalBlock(scope: !3934, file: !2, line: 1352, column: 23)
!3938 = !DILocation(line: 1353, column: 3, scope: !3937)
!3939 = !DILocation(line: 1354, column: 19, scope: !3937)
!3940 = !DILocation(line: 1355, column: 2, scope: !3937)
!3941 = !DILocation(line: 1356, column: 2, scope: !3928)
!3942 = !DILocation(line: 1357, column: 1, scope: !3928)
!3943 = distinct !DISubprogram(name: "get_redis_connection", scope: !2, file: !2, line: 266, type: !3944, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !56, retainedNodes: !696)
!3944 = !DISubroutineType(types: !3945)
!3945 = !{!117}
!3946 = !DILocalVariable(name: "pud", scope: !3943, file: !2, line: 267, type: !3947)
!3947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3948, size: 64)
!3948 = !DIDerivedType(tag: DW_TAG_typedef, name: "persistent_users_db_t", file: !312, line: 157, baseType: !3949)
!3949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_persistent_users_db_t", file: !312, line: 155, size: 8200, elements: !3950)
!3950 = !{!3951}
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "userdb", scope: !3949, file: !312, line: 156, baseType: !1433, size: 8200)
!3952 = !DILocation(line: 267, column: 25, scope: !3943)
!3953 = !DILocation(line: 267, column: 31, scope: !3943)
!3954 = !DILocalVariable(name: "redisconnection", scope: !3943, file: !2, line: 269, type: !117)
!3955 = !DILocation(line: 269, column: 16, scope: !3943)
!3956 = !DILocation(line: 269, column: 69, scope: !3943)
!3957 = !DILocation(line: 269, column: 49, scope: !3943)
!3958 = !DILocation(line: 271, column: 5, scope: !3959)
!3959 = distinct !DILexicalBlock(scope: !3943, file: !2, line: 271, column: 5)
!3960 = !DILocation(line: 271, column: 5, scope: !3943)
!3961 = !DILocation(line: 272, column: 6, scope: !3962)
!3962 = distinct !DILexicalBlock(scope: !3963, file: !2, line: 272, column: 6)
!3963 = distinct !DILexicalBlock(scope: !3959, file: !2, line: 271, column: 22)
!3964 = !DILocation(line: 272, column: 23, scope: !3962)
!3965 = !DILocation(line: 272, column: 6, scope: !3963)
!3966 = !DILocation(line: 273, column: 112, scope: !3967)
!3967 = distinct !DILexicalBlock(scope: !3962, file: !2, line: 272, column: 28)
!3968 = !DILocation(line: 273, column: 129, scope: !3967)
!3969 = !DILocation(line: 273, column: 148, scope: !3967)
!3970 = !DILocation(line: 273, column: 165, scope: !3967)
!3971 = !DILocation(line: 273, column: 133, scope: !3967)
!3972 = !DILocation(line: 273, column: 4, scope: !3967)
!3973 = !DILocation(line: 274, column: 14, scope: !3967)
!3974 = !DILocation(line: 274, column: 4, scope: !3967)
!3975 = !DILocation(line: 275, column: 20, scope: !3967)
!3976 = !DILocation(line: 276, column: 31, scope: !3967)
!3977 = !DILocation(line: 276, column: 47, scope: !3967)
!3978 = !DILocation(line: 276, column: 11, scope: !3967)
!3979 = !DILocation(line: 277, column: 3, scope: !3967)
!3980 = !DILocation(line: 278, column: 2, scope: !3963)
!3981 = !DILocation(line: 280, column: 7, scope: !3982)
!3982 = distinct !DILexicalBlock(scope: !3943, file: !2, line: 280, column: 6)
!3983 = !DILocation(line: 280, column: 6, scope: !3943)
!3984 = !DILocalVariable(name: "errmsg", scope: !3985, file: !2, line: 282, type: !86)
!3985 = distinct !DILexicalBlock(scope: !3982, file: !2, line: 280, column: 24)
!3986 = !DILocation(line: 282, column: 9, scope: !3985)
!3987 = !DILocalVariable(name: "co", scope: !3985, file: !2, line: 283, type: !108)
!3988 = !DILocation(line: 283, column: 15, scope: !3985)
!3989 = !DILocation(line: 283, column: 36, scope: !3985)
!3990 = !DILocation(line: 283, column: 41, scope: !3985)
!3991 = !DILocation(line: 283, column: 20, scope: !3985)
!3992 = !DILocation(line: 284, column: 8, scope: !3993)
!3993 = distinct !DILexicalBlock(scope: !3985, file: !2, line: 284, column: 7)
!3994 = !DILocation(line: 284, column: 7, scope: !3985)
!3995 = !DILocation(line: 285, column: 8, scope: !3996)
!3996 = distinct !DILexicalBlock(scope: !3997, file: !2, line: 285, column: 8)
!3997 = distinct !DILexicalBlock(scope: !3993, file: !2, line: 284, column: 12)
!3998 = !DILocation(line: 285, column: 8, scope: !3997)
!3999 = !DILocation(line: 286, column: 119, scope: !4000)
!4000 = distinct !DILexicalBlock(scope: !3996, file: !2, line: 285, column: 16)
!4001 = !DILocation(line: 286, column: 124, scope: !4000)
!4002 = !DILocation(line: 286, column: 132, scope: !4000)
!4003 = !DILocation(line: 286, column: 5, scope: !4000)
!4004 = !DILocation(line: 287, column: 10, scope: !4000)
!4005 = !DILocation(line: 287, column: 5, scope: !4000)
!4006 = !DILocation(line: 288, column: 4, scope: !4000)
!4007 = !DILocation(line: 289, column: 115, scope: !4008)
!4008 = distinct !DILexicalBlock(scope: !3996, file: !2, line: 288, column: 11)
!4009 = !DILocation(line: 289, column: 120, scope: !4008)
!4010 = !DILocation(line: 289, column: 5, scope: !4008)
!4011 = !DILocation(line: 291, column: 3, scope: !3997)
!4012 = !DILocation(line: 291, column: 14, scope: !4013)
!4013 = distinct !DILexicalBlock(scope: !3993, file: !2, line: 291, column: 14)
!4014 = !DILocation(line: 291, column: 14, scope: !3993)
!4015 = !DILocation(line: 292, column: 118, scope: !4016)
!4016 = distinct !DILexicalBlock(scope: !4013, file: !2, line: 291, column: 22)
!4017 = !DILocation(line: 292, column: 123, scope: !4016)
!4018 = !DILocation(line: 292, column: 131, scope: !4016)
!4019 = !DILocation(line: 292, column: 4, scope: !4016)
!4020 = !DILocation(line: 293, column: 9, scope: !4016)
!4021 = !DILocation(line: 293, column: 4, scope: !4016)
!4022 = !DILocation(line: 294, column: 19, scope: !4016)
!4023 = !DILocation(line: 294, column: 4, scope: !4016)
!4024 = !DILocation(line: 295, column: 3, scope: !4016)
!4025 = !DILocalVariable(name: "ip", scope: !4026, file: !2, line: 296, type: !757)
!4026 = distinct !DILexicalBlock(scope: !4013, file: !2, line: 295, column: 10)
!4027 = !DILocation(line: 296, column: 9, scope: !4026)
!4028 = !DILocalVariable(name: "port", scope: !4026, file: !2, line: 297, type: !74)
!4029 = !DILocation(line: 297, column: 8, scope: !4026)
!4030 = !DILocation(line: 298, column: 8, scope: !4031)
!4031 = distinct !DILexicalBlock(scope: !4026, file: !2, line: 298, column: 8)
!4032 = !DILocation(line: 298, column: 12, scope: !4031)
!4033 = !DILocation(line: 298, column: 8, scope: !4026)
!4034 = !DILocation(line: 299, column: 5, scope: !4031)
!4035 = !DILocation(line: 299, column: 5, scope: !4036)
!4036 = distinct !DILexicalBlock(scope: !4037, file: !2, line: 299, column: 5)
!4037 = distinct !DILexicalBlock(scope: !4031, file: !2, line: 299, column: 5)
!4038 = !DILocation(line: 299, column: 5, scope: !4037)
!4039 = !DILocalVariable(name: "szdst", scope: !4040, file: !2, line: 299, type: !100)
!4040 = distinct !DILexicalBlock(scope: !4041, file: !2, line: 299, column: 5)
!4041 = distinct !DILexicalBlock(scope: !4042, file: !2, line: 299, column: 5)
!4042 = distinct !DILexicalBlock(scope: !4036, file: !2, line: 299, column: 5)
!4043 = !DILocation(line: 299, column: 5, scope: !4040)
!4044 = !DILocation(line: 299, column: 5, scope: !4042)
!4045 = !DILocation(line: 300, column: 9, scope: !4046)
!4046 = distinct !DILexicalBlock(scope: !4026, file: !2, line: 300, column: 8)
!4047 = !DILocation(line: 300, column: 8, scope: !4026)
!4048 = !DILocation(line: 301, column: 5, scope: !4046)
!4049 = !DILocation(line: 301, column: 5, scope: !4050)
!4050 = distinct !DILexicalBlock(scope: !4051, file: !2, line: 301, column: 5)
!4051 = distinct !DILexicalBlock(scope: !4046, file: !2, line: 301, column: 5)
!4052 = !DILocation(line: 301, column: 5, scope: !4051)
!4053 = !DILocalVariable(name: "szdst", scope: !4054, file: !2, line: 301, type: !100)
!4054 = distinct !DILexicalBlock(scope: !4055, file: !2, line: 301, column: 5)
!4055 = distinct !DILexicalBlock(scope: !4056, file: !2, line: 301, column: 5)
!4056 = distinct !DILexicalBlock(scope: !4050, file: !2, line: 301, column: 5)
!4057 = !DILocation(line: 301, column: 5, scope: !4054)
!4058 = !DILocation(line: 301, column: 5, scope: !4056)
!4059 = !DILocation(line: 303, column: 8, scope: !4060)
!4060 = distinct !DILexicalBlock(scope: !4026, file: !2, line: 303, column: 8)
!4061 = !DILocation(line: 303, column: 12, scope: !4060)
!4062 = !DILocation(line: 303, column: 8, scope: !4026)
!4063 = !DILocation(line: 304, column: 19, scope: !4060)
!4064 = !DILocation(line: 304, column: 23, scope: !4060)
!4065 = !DILocation(line: 304, column: 10, scope: !4060)
!4066 = !DILocation(line: 304, column: 5, scope: !4060)
!4067 = !DILocation(line: 306, column: 8, scope: !4068)
!4068 = distinct !DILexicalBlock(scope: !4026, file: !2, line: 306, column: 8)
!4069 = !DILocation(line: 306, column: 12, scope: !4068)
!4070 = !DILocation(line: 306, column: 8, scope: !4026)
!4071 = !DILocalVariable(name: "tv", scope: !4072, file: !2, line: 307, type: !188)
!4072 = distinct !DILexicalBlock(scope: !4068, file: !2, line: 306, column: 29)
!4073 = !DILocation(line: 307, column: 20, scope: !4072)
!4074 = !DILocation(line: 308, column: 8, scope: !4072)
!4075 = !DILocation(line: 308, column: 16, scope: !4072)
!4076 = !DILocation(line: 309, column: 27, scope: !4072)
!4077 = !DILocation(line: 309, column: 31, scope: !4072)
!4078 = !DILocation(line: 309, column: 17, scope: !4072)
!4079 = !DILocation(line: 309, column: 8, scope: !4072)
!4080 = !DILocation(line: 309, column: 15, scope: !4072)
!4081 = !DILocation(line: 310, column: 47, scope: !4072)
!4082 = !DILocation(line: 310, column: 51, scope: !4072)
!4083 = !DILocation(line: 310, column: 23, scope: !4072)
!4084 = !DILocation(line: 310, column: 21, scope: !4072)
!4085 = !DILocation(line: 311, column: 4, scope: !4072)
!4086 = !DILocation(line: 312, column: 36, scope: !4087)
!4087 = distinct !DILexicalBlock(scope: !4068, file: !2, line: 311, column: 11)
!4088 = !DILocation(line: 312, column: 40, scope: !4087)
!4089 = !DILocation(line: 312, column: 23, scope: !4087)
!4090 = !DILocation(line: 312, column: 21, scope: !4087)
!4091 = !DILocation(line: 315, column: 8, scope: !4092)
!4092 = distinct !DILexicalBlock(scope: !4026, file: !2, line: 315, column: 8)
!4093 = !DILocation(line: 315, column: 8, scope: !4026)
!4094 = !DILocation(line: 316, column: 8, scope: !4095)
!4095 = distinct !DILexicalBlock(scope: !4096, file: !2, line: 316, column: 8)
!4096 = distinct !DILexicalBlock(scope: !4092, file: !2, line: 315, column: 25)
!4097 = !DILocation(line: 316, column: 25, scope: !4095)
!4098 = !DILocation(line: 316, column: 8, scope: !4096)
!4099 = !DILocation(line: 317, column: 9, scope: !4100)
!4100 = distinct !DILexicalBlock(scope: !4101, file: !2, line: 317, column: 9)
!4101 = distinct !DILexicalBlock(scope: !4095, file: !2, line: 316, column: 30)
!4102 = !DILocation(line: 317, column: 26, scope: !4100)
!4103 = !DILocation(line: 317, column: 9, scope: !4101)
!4104 = !DILocation(line: 318, column: 57, scope: !4105)
!4105 = distinct !DILexicalBlock(scope: !4100, file: !2, line: 317, column: 37)
!4106 = !DILocation(line: 318, column: 74, scope: !4105)
!4107 = !DILocation(line: 318, column: 7, scope: !4105)
!4108 = !DILocation(line: 319, column: 6, scope: !4105)
!4109 = !DILocation(line: 320, column: 16, scope: !4101)
!4110 = !DILocation(line: 320, column: 6, scope: !4101)
!4111 = !DILocation(line: 321, column: 22, scope: !4101)
!4112 = !DILocation(line: 322, column: 5, scope: !4101)
!4113 = !DILocation(line: 322, column: 16, scope: !4114)
!4114 = distinct !DILexicalBlock(scope: !4095, file: !2, line: 322, column: 16)
!4115 = !DILocation(line: 322, column: 20, scope: !4114)
!4116 = !DILocation(line: 322, column: 16, scope: !4095)
!4117 = !DILocalVariable(name: "reply", scope: !4118, file: !2, line: 323, type: !83)
!4118 = distinct !DILexicalBlock(scope: !4114, file: !2, line: 322, column: 30)
!4119 = !DILocation(line: 323, column: 12, scope: !4118)
!4120 = !DILocation(line: 323, column: 33, scope: !4118)
!4121 = !DILocation(line: 323, column: 61, scope: !4118)
!4122 = !DILocation(line: 323, column: 65, scope: !4118)
!4123 = !DILocation(line: 323, column: 20, scope: !4118)
!4124 = !DILocation(line: 324, column: 10, scope: !4125)
!4125 = distinct !DILexicalBlock(scope: !4118, file: !2, line: 324, column: 9)
!4126 = !DILocation(line: 324, column: 9, scope: !4118)
!4127 = !DILocation(line: 325, column: 10, scope: !4128)
!4128 = distinct !DILexicalBlock(scope: !4129, file: !2, line: 325, column: 10)
!4129 = distinct !DILexicalBlock(scope: !4125, file: !2, line: 324, column: 17)
!4130 = !DILocation(line: 325, column: 27, scope: !4128)
!4131 = !DILocation(line: 325, column: 31, scope: !4128)
!4132 = !DILocation(line: 325, column: 34, scope: !4128)
!4133 = !DILocation(line: 325, column: 51, scope: !4128)
!4134 = !DILocation(line: 325, column: 10, scope: !4129)
!4135 = !DILocation(line: 326, column: 58, scope: !4136)
!4136 = distinct !DILexicalBlock(scope: !4128, file: !2, line: 325, column: 62)
!4137 = !DILocation(line: 326, column: 75, scope: !4136)
!4138 = !DILocation(line: 326, column: 8, scope: !4136)
!4139 = !DILocation(line: 327, column: 7, scope: !4136)
!4140 = !DILocation(line: 328, column: 17, scope: !4129)
!4141 = !DILocation(line: 328, column: 7, scope: !4129)
!4142 = !DILocation(line: 329, column: 23, scope: !4129)
!4143 = !DILocation(line: 330, column: 6, scope: !4129)
!4144 = !DILocation(line: 331, column: 26, scope: !4145)
!4145 = distinct !DILexicalBlock(scope: !4125, file: !2, line: 330, column: 13)
!4146 = !DILocation(line: 331, column: 7, scope: !4145)
!4147 = !DILocation(line: 332, column: 11, scope: !4148)
!4148 = distinct !DILexicalBlock(scope: !4145, file: !2, line: 332, column: 11)
!4149 = !DILocation(line: 332, column: 15, scope: !4148)
!4150 = !DILocation(line: 332, column: 11, scope: !4145)
!4151 = !DILocation(line: 333, column: 29, scope: !4152)
!4152 = distinct !DILexicalBlock(scope: !4148, file: !2, line: 332, column: 23)
!4153 = !DILocation(line: 333, column: 59, scope: !4152)
!4154 = !DILocation(line: 333, column: 63, scope: !4152)
!4155 = !DILocation(line: 333, column: 16, scope: !4152)
!4156 = !DILocation(line: 333, column: 14, scope: !4152)
!4157 = !DILocation(line: 334, column: 12, scope: !4158)
!4158 = distinct !DILexicalBlock(scope: !4152, file: !2, line: 334, column: 11)
!4159 = !DILocation(line: 334, column: 11, scope: !4152)
!4160 = !DILocation(line: 335, column: 12, scope: !4161)
!4161 = distinct !DILexicalBlock(scope: !4162, file: !2, line: 335, column: 12)
!4162 = distinct !DILexicalBlock(scope: !4158, file: !2, line: 334, column: 19)
!4163 = !DILocation(line: 335, column: 29, scope: !4161)
!4164 = !DILocation(line: 335, column: 33, scope: !4161)
!4165 = !DILocation(line: 335, column: 36, scope: !4161)
!4166 = !DILocation(line: 335, column: 53, scope: !4161)
!4167 = !DILocation(line: 335, column: 12, scope: !4162)
!4168 = !DILocation(line: 336, column: 60, scope: !4169)
!4169 = distinct !DILexicalBlock(scope: !4161, file: !2, line: 335, column: 64)
!4170 = !DILocation(line: 336, column: 77, scope: !4169)
!4171 = !DILocation(line: 336, column: 10, scope: !4169)
!4172 = !DILocation(line: 337, column: 9, scope: !4169)
!4173 = !DILocation(line: 338, column: 19, scope: !4162)
!4174 = !DILocation(line: 338, column: 9, scope: !4162)
!4175 = !DILocation(line: 339, column: 25, scope: !4162)
!4176 = !DILocation(line: 340, column: 8, scope: !4162)
!4177 = !DILocation(line: 341, column: 28, scope: !4178)
!4178 = distinct !DILexicalBlock(scope: !4158, file: !2, line: 340, column: 15)
!4179 = !DILocation(line: 341, column: 9, scope: !4178)
!4180 = !DILocation(line: 343, column: 7, scope: !4152)
!4181 = !DILocation(line: 345, column: 5, scope: !4118)
!4182 = !DILocation(line: 346, column: 4, scope: !4096)
!4183 = !DILocation(line: 348, column: 9, scope: !4184)
!4184 = distinct !DILexicalBlock(scope: !4026, file: !2, line: 348, column: 8)
!4185 = !DILocation(line: 348, column: 8, scope: !4026)
!4186 = !DILocation(line: 349, column: 5, scope: !4187)
!4187 = distinct !DILexicalBlock(scope: !4184, file: !2, line: 348, column: 26)
!4188 = !DILocation(line: 350, column: 4, scope: !4187)
!4189 = !DILocation(line: 350, column: 16, scope: !4190)
!4190 = distinct !DILexicalBlock(scope: !4184, file: !2, line: 350, column: 15)
!4191 = !DILocation(line: 350, column: 15, scope: !4184)
!4192 = !DILocation(line: 351, column: 82, scope: !4193)
!4193 = distinct !DILexicalBlock(scope: !4190, file: !2, line: 350, column: 48)
!4194 = !DILocation(line: 351, column: 87, scope: !4193)
!4195 = !DILocation(line: 351, column: 5, scope: !4193)
!4196 = !DILocation(line: 352, column: 36, scope: !4193)
!4197 = !DILocation(line: 353, column: 4, scope: !4193)
!4198 = !DILocation(line: 355, column: 19, scope: !4026)
!4199 = !DILocation(line: 355, column: 4, scope: !4026)
!4200 = !DILocation(line: 357, column: 6, scope: !4201)
!4201 = distinct !DILexicalBlock(scope: !3985, file: !2, line: 357, column: 6)
!4202 = !DILocation(line: 357, column: 6, scope: !3985)
!4203 = !DILocation(line: 358, column: 31, scope: !4204)
!4204 = distinct !DILexicalBlock(scope: !4201, file: !2, line: 357, column: 23)
!4205 = !DILocation(line: 358, column: 47, scope: !4204)
!4206 = !DILocation(line: 358, column: 11, scope: !4204)
!4207 = !DILocation(line: 359, column: 3, scope: !4204)
!4208 = !DILocation(line: 360, column: 2, scope: !3985)
!4209 = !DILocation(line: 362, column: 9, scope: !3943)
!4210 = !DILocation(line: 362, column: 2, scope: !3943)
!4211 = distinct !DISubprogram(name: "set_redis_realm_opt", scope: !2, file: !2, line: 365, type: !4212, scopeLine: 366, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !56, retainedNodes: !696)
!4212 = !DISubroutineType(types: !4213)
!4213 = !{!74, !86, !84, !4214}
!4214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!4215 = !DILocalVariable(name: "realm", arg: 1, scope: !4211, file: !2, line: 365, type: !86)
!4216 = !DILocation(line: 365, column: 38, scope: !4211)
!4217 = !DILocalVariable(name: "key", arg: 2, scope: !4211, file: !2, line: 365, type: !84)
!4218 = !DILocation(line: 365, column: 57, scope: !4211)
!4219 = !DILocalVariable(name: "value", arg: 3, scope: !4211, file: !2, line: 365, type: !4214)
!4220 = !DILocation(line: 365, column: 77, scope: !4211)
!4221 = !DILocalVariable(name: "found", scope: !4211, file: !2, line: 367, type: !74)
!4222 = !DILocation(line: 367, column: 6, scope: !4211)
!4223 = !DILocalVariable(name: "rc", scope: !4211, file: !2, line: 369, type: !117)
!4224 = !DILocation(line: 369, column: 16, scope: !4211)
!4225 = !DILocation(line: 369, column: 21, scope: !4211)
!4226 = !DILocation(line: 371, column: 5, scope: !4227)
!4227 = distinct !DILexicalBlock(scope: !4211, file: !2, line: 371, column: 5)
!4228 = !DILocation(line: 371, column: 5, scope: !4211)
!4229 = !DILocalVariable(name: "rget", scope: !4230, file: !2, line: 372, type: !92)
!4230 = distinct !DILexicalBlock(scope: !4227, file: !2, line: 371, column: 9)
!4231 = !DILocation(line: 372, column: 15, scope: !4230)
!4232 = !DILocalVariable(name: "s", scope: !4230, file: !2, line: 374, type: !1433)
!4233 = !DILocation(line: 374, column: 8, scope: !4230)
!4234 = !DILocation(line: 376, column: 12, scope: !4230)
!4235 = !DILocation(line: 376, column: 50, scope: !4230)
!4236 = !DILocation(line: 376, column: 57, scope: !4230)
!4237 = !DILocation(line: 376, column: 3, scope: !4230)
!4238 = !DILocation(line: 378, column: 38, scope: !4230)
!4239 = !DILocation(line: 378, column: 42, scope: !4230)
!4240 = !DILocation(line: 378, column: 25, scope: !4230)
!4241 = !DILocation(line: 378, column: 8, scope: !4230)
!4242 = !DILocation(line: 379, column: 7, scope: !4243)
!4243 = distinct !DILexicalBlock(scope: !4230, file: !2, line: 379, column: 7)
!4244 = !DILocation(line: 379, column: 7, scope: !4230)
!4245 = !DILocation(line: 380, column: 8, scope: !4246)
!4246 = distinct !DILexicalBlock(scope: !4247, file: !2, line: 380, column: 8)
!4247 = distinct !DILexicalBlock(scope: !4243, file: !2, line: 379, column: 13)
!4248 = !DILocation(line: 380, column: 14, scope: !4246)
!4249 = !DILocation(line: 380, column: 19, scope: !4246)
!4250 = !DILocation(line: 380, column: 8, scope: !4247)
!4251 = !DILocation(line: 381, column: 56, scope: !4246)
!4252 = !DILocation(line: 381, column: 62, scope: !4246)
!4253 = !DILocation(line: 381, column: 5, scope: !4246)
!4254 = !DILocation(line: 382, column: 13, scope: !4255)
!4255 = distinct !DILexicalBlock(scope: !4246, file: !2, line: 382, column: 13)
!4256 = !DILocation(line: 382, column: 19, scope: !4255)
!4257 = !DILocation(line: 382, column: 24, scope: !4255)
!4258 = !DILocation(line: 382, column: 13, scope: !4246)
!4259 = !DILocation(line: 383, column: 9, scope: !4260)
!4260 = distinct !DILexicalBlock(scope: !4261, file: !2, line: 383, column: 9)
!4261 = distinct !DILexicalBlock(scope: !4255, file: !2, line: 382, column: 47)
!4262 = !DILocation(line: 383, column: 15, scope: !4260)
!4263 = !DILocation(line: 383, column: 20, scope: !4260)
!4264 = !DILocation(line: 383, column: 9, scope: !4261)
!4265 = !DILocation(line: 384, column: 67, scope: !4260)
!4266 = !DILocation(line: 384, column: 73, scope: !4260)
!4267 = !DILocation(line: 384, column: 6, scope: !4260)
!4268 = !DILocation(line: 385, column: 4, scope: !4261)
!4269 = !DILocation(line: 386, column: 5, scope: !4270)
!4270 = distinct !DILexicalBlock(scope: !4255, file: !2, line: 385, column: 11)
!4271 = !DILocation(line: 387, column: 34, scope: !4270)
!4272 = !DILocation(line: 387, column: 40, scope: !4270)
!4273 = !DILocation(line: 387, column: 29, scope: !4270)
!4274 = !DILocation(line: 387, column: 6, scope: !4270)
!4275 = !DILocation(line: 387, column: 12, scope: !4270)
!4276 = !DILocation(line: 388, column: 5, scope: !4270)
!4277 = !DILocation(line: 389, column: 11, scope: !4270)
!4278 = !DILocation(line: 391, column: 23, scope: !4247)
!4279 = !DILocation(line: 391, column: 4, scope: !4247)
!4280 = !DILocation(line: 392, column: 3, scope: !4247)
!4281 = !DILocation(line: 393, column: 2, scope: !4230)
!4282 = !DILocation(line: 395, column: 9, scope: !4211)
!4283 = !DILocation(line: 395, column: 2, scope: !4211)
